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
	.file	"sqobject.cpp"
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
	.section	.text._ZN11SQObjectPtraSEP9SQClosure,"axG",%progbits,_ZN11SQObjectPtraSEP9SQClosure,comdat
	.align	2
	.weak	_ZN11SQObjectPtraSEP9SQClosure
	.thumb
	.thumb_func
	.type	_ZN11SQObjectPtraSEP9SQClosure, %function
_ZN11SQObjectPtraSEP9SQClosure:
	.fnstart
.LFB68:
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
	mov	r3, #256
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
	.size	_ZN11SQObjectPtraSEP9SQClosure, .-_ZN11SQObjectPtraSEP9SQClosure
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
	beq	.L27
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L27
	movs	r3, #1
	b	.L28
.L27:
	movs	r3, #0
.L28:
	cmp	r3, #0
	beq	.L29
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	mov	r0, r2
	blx	r3
.L29:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQObjectPtraSEP8SQString, .-_ZN11SQObjectPtraSEP8SQString
	.section	.rodata
	.align	2
.LC0:
	.ascii	"_unVal.pTable\000"
	.align	2
.LC1:
	.ascii	"../../../libs/squirrel/squirrel/sqobject.h\000"
	.section	.text._ZN11SQObjectPtrC2EP9SQWeakRef,"axG",%progbits,_ZN11SQObjectPtrC5EP9SQWeakRef,comdat
	.align	2
	.weak	_ZN11SQObjectPtrC2EP9SQWeakRef
	.thumb
	.thumb_func
	.type	_ZN11SQObjectPtrC2EP9SQWeakRef, %function
_ZN11SQObjectPtrC2EP9SQWeakRef:
	.fnstart
.LFB90:
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
	movs	r3, #0
	movt	r3, 2049
	str	r3, [r2]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L32
	ldr	r3, .L35
.LPIC1:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L35+4
.LPIC2:
	add	r3, pc
	mov	r1, r3
	movs	r2, #236
	ldr	r3, .L35+8
.LPIC3:
	add	r3, pc
	bl	__assert_fail(PLT)
.L32:
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
.L36:
	.align	2
.L35:
	.word	.LC0-(.LPIC1+4)
	.word	.LC1-(.LPIC2+4)
	.word	_ZZN11SQObjectPtrC1EP9SQWeakRefE19__PRETTY_FUNCTION__-(.LPIC3+4)
	.cantunwind
	.fnend
	.size	_ZN11SQObjectPtrC2EP9SQWeakRef, .-_ZN11SQObjectPtrC2EP9SQWeakRef
	.weak	_ZN11SQObjectPtrC1EP9SQWeakRef
	.thumb_set _ZN11SQObjectPtrC1EP9SQWeakRef,_ZN11SQObjectPtrC2EP9SQWeakRef
	.section	.text._ZN11SQObjectPtrC2EP15SQFunctionProto,"axG",%progbits,_ZN11SQObjectPtrC5EP15SQFunctionProto,comdat
	.align	2
	.weak	_ZN11SQObjectPtrC2EP15SQFunctionProto
	.thumb
	.thumb_func
	.type	_ZN11SQObjectPtrC2EP15SQFunctionProto, %function
_ZN11SQObjectPtrC2EP15SQFunctionProto:
	.fnstart
.LFB98:
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
	mov	r3, #8192
	movt	r3, 2048
	str	r3, [r2]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L38
	ldr	r3, .L41
.LPIC4:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L41+4
.LPIC5:
	add	r3, pc
	mov	r1, r3
	movs	r2, #238
	ldr	r3, .L41+8
.LPIC6:
	add	r3, pc
	bl	__assert_fail(PLT)
.L38:
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
.L42:
	.align	2
.L41:
	.word	.LC0-(.LPIC4+4)
	.word	.LC1-(.LPIC5+4)
	.word	_ZZN11SQObjectPtrC1EP15SQFunctionProtoE19__PRETTY_FUNCTION__-(.LPIC6+4)
	.cantunwind
	.fnend
	.size	_ZN11SQObjectPtrC2EP15SQFunctionProto, .-_ZN11SQObjectPtrC2EP15SQFunctionProto
	.weak	_ZN11SQObjectPtrC1EP15SQFunctionProto
	.thumb_set _ZN11SQObjectPtrC1EP15SQFunctionProto,_ZN11SQObjectPtrC2EP15SQFunctionProto
	.section	.text._ZN11SQObjectPtraSEP15SQFunctionProto,"axG",%progbits,_ZN11SQObjectPtraSEP15SQFunctionProto,comdat
	.align	2
	.weak	_ZN11SQObjectPtraSEP15SQFunctionProto
	.thumb
	.thumb_func
	.type	_ZN11SQObjectPtraSEP15SQFunctionProto, %function
_ZN11SQObjectPtraSEP15SQFunctionProto:
	.fnstart
.LFB100:
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
	mov	r3, #8192
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
	beq	.L44
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L44
	movs	r3, #1
	b	.L45
.L44:
	movs	r3, #0
.L45:
	cmp	r3, #0
	beq	.L46
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	mov	r0, r2
	blx	r3
.L46:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQObjectPtraSEP15SQFunctionProto, .-_ZN11SQObjectPtraSEP15SQFunctionProto
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
	beq	.L49
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L49
	movs	r3, #1
	b	.L50
.L49:
	movs	r3, #0
.L50:
	cmp	r3, #0
	beq	.L51
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #4]
	mov	r0, r2
	blx	r3
.L51:
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
	.section	.text._ZN11SQObjectPtraSEf,"axG",%progbits,_ZN11SQObjectPtraSEf,comdat
	.align	2
	.weak	_ZN11SQObjectPtraSEf
	.thumb
	.thumb_func
	.type	_ZN11SQObjectPtraSEf, %function
_ZN11SQObjectPtraSEf:
	.fnstart
.LFB108:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	fsts	s0, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r3, r3, #134217728
	cmp	r3, #0
	beq	.L54
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L54
	movs	r3, #1
	b	.L55
.L54:
	movs	r3, #0
.L55:
	cmp	r3, #0
	beq	.L56
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #4]
	mov	r0, r2
	blx	r3
.L56:
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
	.fnend
	.size	_ZN11SQObjectPtraSEf, .-_ZN11SQObjectPtraSEf
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
	beq	.L59
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
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
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #4]
	mov	r0, r2
	blx	r3
.L61:
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
	beq	.L64
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #4]
	adds	r2, r2, #1
	str	r2, [r3, #4]
.L64:
	ldr	r3, [r7, #12]
	and	r3, r3, #134217728
	cmp	r3, #0
	beq	.L65
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L65
	movs	r3, #1
	b	.L66
.L65:
	movs	r3, #0
.L66:
	cmp	r3, #0
	beq	.L67
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	mov	r0, r2
	blx	r3
.L67:
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
	beq	.L70
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #4]
	adds	r2, r2, #1
	str	r2, [r3, #4]
.L70:
	ldr	r3, [r7, #12]
	and	r3, r3, #134217728
	cmp	r3, #0
	beq	.L71
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L71
	movs	r3, #1
	b	.L72
.L71:
	movs	r3, #0
.L72:
	cmp	r3, #0
	beq	.L73
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	mov	r0, r2
	blx	r3
.L73:
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
	beq	.L76
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L76
	movs	r3, #1
	b	.L77
.L76:
	movs	r3, #0
.L77:
	cmp	r3, #0
	beq	.L75
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	mov	r0, r2
	blx	r3
.L75:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQObjectPtr4NullEv, .-_ZN11SQObjectPtr4NullEv
	.section	.text._ZN13SQInstructionC2Ev,"axG",%progbits,_ZN13SQInstructionC5Ev,comdat
	.align	2
	.weak	_ZN13SQInstructionC2Ev
	.thumb
	.thumb_func
	.type	_ZN13SQInstructionC2Ev, %function
_ZN13SQInstructionC2Ev:
	.fnstart
.LFB128:
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
	.size	_ZN13SQInstructionC2Ev, .-_ZN13SQInstructionC2Ev
	.weak	_ZN13SQInstructionC1Ev
	.thumb_set _ZN13SQInstructionC1Ev,_ZN13SQInstructionC2Ev
	.section	.text._ZN15SQExceptionTrapC2ERKS_,"axG",%progbits,_ZN15SQExceptionTrapC5ERKS_,comdat
	.align	2
	.weak	_ZN15SQExceptionTrapC2ERKS_
	.thumb
	.thumb_func
	.type	_ZN15SQExceptionTrapC2ERKS_, %function
_ZN15SQExceptionTrapC2ERKS_:
	.fnstart
.LFB140:
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
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r4, r7}
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN15SQExceptionTrapC2ERKS_, .-_ZN15SQExceptionTrapC2ERKS_
	.weak	_ZN15SQExceptionTrapC1ERKS_
	.thumb_set _ZN15SQExceptionTrapC1ERKS_,_ZN15SQExceptionTrapC2ERKS_
	.section	.text._ZN4SQVM8CallInfoD2Ev,"axG",%progbits,_ZN4SQVM8CallInfoD5Ev,comdat
	.align	2
	.weak	_ZN4SQVM8CallInfoD2Ev
	.thumb
	.thumb_func
	.type	_ZN4SQVM8CallInfoD2Ev, %function
_ZN4SQVM8CallInfoD2Ev:
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
	ldr	r3, [r7, #4]
	adds	r3, r3, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN4SQVM8CallInfoD2Ev, .-_ZN4SQVM8CallInfoD2Ev
	.weak	_ZN4SQVM8CallInfoD1Ev
	.thumb_set _ZN4SQVM8CallInfoD1Ev,_ZN4SQVM8CallInfoD2Ev
	.section	.text._ZN8SQStringD2Ev,"axG",%progbits,_ZN8SQStringD5Ev,comdat
	.align	2
	.weak	_ZN8SQStringD2Ev
	.thumb
	.thumb_func
	.type	_ZN8SQStringD2Ev, %function
_ZN8SQStringD2Ev:
	.fnstart
.LFB163:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r1, .L92
.LPIC7:
	add	r1, pc
	ldr	r3, [r7, #4]
	ldr	r2, .L92+4
	ldr	r2, [r1, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN12SQRefCountedD2Ev(PLT)
	movs	r3, #0
	cmp	r3, #0
	beq	.L90
	ldr	r0, [r7, #4]
	bl	_ZdlPv(PLT)
.L90:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L93:
	.align	2
.L92:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC7+4)
	.word	_ZTV8SQString(GOT)
	.fnend
	.size	_ZN8SQStringD2Ev, .-_ZN8SQStringD2Ev
	.weak	_ZN8SQStringD1Ev
	.thumb_set _ZN8SQStringD1Ev,_ZN8SQStringD2Ev
	.section	.text._ZN8SQStringD0Ev,"axG",%progbits,_ZN8SQStringD0Ev,comdat
	.align	2
	.weak	_ZN8SQStringD0Ev
	.thumb
	.thumb_func
	.type	_ZN8SQStringD0Ev, %function
_ZN8SQStringD0Ev:
	.fnstart
.LFB165:
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
	bl	_ZN8SQStringD1Ev(PLT)
	ldr	r0, [r7, #4]
	bl	_ZdlPv(PLT)
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN8SQStringD0Ev, .-_ZN8SQStringD0Ev
	.section	.text._ZN13SQCollectableC2Ev,"axG",%progbits,_ZN13SQCollectableC5Ev,comdat
	.align	2
	.weak	_ZN13SQCollectableC2Ev
	.thumb
	.thumb_func
	.type	_ZN13SQCollectableC2Ev, %function
_ZN13SQCollectableC2Ev:
	.fnstart
.LFB168:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r4, .L100
.LPIC8:
	add	r4, pc
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN12SQRefCountedC2Ev(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, .L100+4
	ldr	r2, [r4, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L101:
	.align	2
.L100:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC8+4)
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
.LFB171:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r1, .L106
.LPIC9:
	add	r1, pc
	ldr	r3, [r7, #4]
	ldr	r2, .L106+4
	ldr	r2, [r1, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN12SQRefCountedD2Ev(PLT)
	movs	r3, #0
	cmp	r3, #0
	beq	.L104
	ldr	r0, [r7, #4]
	bl	_ZdlPv(PLT)
.L104:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L107:
	.align	2
.L106:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC9+4)
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
.LFB173:
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
	.section	.text._ZN7SQArrayD2Ev,"axG",%progbits,_ZN7SQArrayD5Ev,comdat
	.align	2
	.weak	_ZN7SQArrayD2Ev
	.thumb
	.thumb_func
	.type	_ZN7SQArrayD2Ev, %function
_ZN7SQArrayD2Ev:
	.fnstart
.LFB177:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r1, .L121
.LPIC10:
	add	r1, pc
	ldr	r3, [r7, #4]
	ldr	r2, .L121+4
	ldr	r2, [r1, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	blt	.L112
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	add	r2, r3, #68
	ldr	r3, [r7, #4]
	mov	r0, r2
	mov	r1, r3
.LEHB0:
	bl	_ZN13SQCollectable15RemoveFromChainEPPS_S0_(PLT)
.LEHE0:
.L112:
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	mov	r0, r3
.LEHB1:
	bl	_ZN8sqvectorI11SQObjectPtrED1Ev(PLT)
.LEHE1:
	ldr	r3, [r7, #4]
	mov	r0, r3
.LEHB2:
	bl	_ZN13SQCollectableD2Ev(PLT)
.LEHE2:
	movs	r3, #0
	cmp	r3, #0
	beq	.L114
	ldr	r0, [r7, #4]
	bl	_ZdlPv(PLT)
.L114:
	ldr	r3, [r7, #4]
	b	.L120
.L118:
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	mov	r0, r3
	bl	_ZN8sqvectorI11SQObjectPtrED1Ev(PLT)
	b	.L117
.L119:
.L117:
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN13SQCollectableD2Ev(PLT)
.LEHB3:
	bl	__cxa_end_cleanup(PLT)
.LEHE3:
.L120:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L122:
	.align	2
.L121:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC10+4)
	.word	_ZTV7SQArray(GOT)
	.global	__gxx_personality_v0
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA177:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE177-.LLSDACSB177
.LLSDACSB177:
	.uleb128 .LEHB0-.LFB177
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L118-.LFB177
	.uleb128 0
	.uleb128 .LEHB1-.LFB177
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L119-.LFB177
	.uleb128 0
	.uleb128 .LEHB2-.LFB177
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB177
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE177:
	.section	.text._ZN7SQArrayD2Ev,"axG",%progbits,_ZN7SQArrayD5Ev,comdat
	.fnend
	.size	_ZN7SQArrayD2Ev, .-_ZN7SQArrayD2Ev
	.weak	_ZN7SQArrayD1Ev
	.thumb_set _ZN7SQArrayD1Ev,_ZN7SQArrayD2Ev
	.section	.text._ZN7SQArrayD0Ev,"axG",%progbits,_ZN7SQArrayD0Ev,comdat
	.align	2
	.weak	_ZN7SQArrayD0Ev
	.thumb
	.thumb_func
	.type	_ZN7SQArrayD0Ev, %function
_ZN7SQArrayD0Ev:
	.fnstart
.LFB179:
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
	bl	_ZN7SQArrayD1Ev(PLT)
	ldr	r0, [r7, #4]
	bl	_ZdlPv(PLT)
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN7SQArrayD0Ev, .-_ZN7SQArrayD0Ev
	.section	.text._ZN7SQArray7GetTypeEv,"axG",%progbits,_ZN7SQArray7GetTypeEv,comdat
	.align	2
	.weak	_ZN7SQArray7GetTypeEv
	.thumb
	.thumb_func
	.type	_ZN7SQArray7GetTypeEv, %function
_ZN7SQArray7GetTypeEv:
	.fnstart
.LFB181:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #64
	movt	r3, 2048
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN7SQArray7GetTypeEv, .-_ZN7SQArray7GetTypeEv
	.section	.text._ZN7SQArray8FinalizeEv,"axG",%progbits,_ZN7SQArray8FinalizeEv,comdat
	.align	2
	.weak	_ZN7SQArray8FinalizeEv
	.thumb
	.thumb_func
	.type	_ZN7SQArray8FinalizeEv, %function
_ZN7SQArray8FinalizeEv:
	.fnstart
.LFB182:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #20
	sub	sp, sp, #20
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	add	r4, r3, #24
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	add	r3, r7, #8
	mov	r0, r4
	movs	r1, #0
	mov	r2, r3
.LEHB4:
	bl	_ZN8sqvectorI11SQObjectPtrE6resizeEjRKS0_(PLT)
.LEHE4:
	add	r3, r7, #8
	mov	r0, r3
.LEHB5:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE5:
	b	.L131
.L130:
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB6:
	bl	__cxa_end_cleanup(PLT)
.LEHE6:
.L131:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA182:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE182-.LLSDACSB182
.LLSDACSB182:
	.uleb128 .LEHB4-.LFB182
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L130-.LFB182
	.uleb128 0
	.uleb128 .LEHB5-.LFB182
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB182
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE182:
	.section	.text._ZN7SQArray8FinalizeEv,"axG",%progbits,_ZN7SQArray8FinalizeEv,comdat
	.fnend
	.size	_ZN7SQArray8FinalizeEv, .-_ZN7SQArray8FinalizeEv
	.section	.text._ZNK7SQArray4SizeEv,"axG",%progbits,_ZNK7SQArray4SizeEv,comdat
	.align	2
	.weak	_ZNK7SQArray4SizeEv
	.thumb
	.thumb_func
	.type	_ZNK7SQArray4SizeEv, %function
_ZNK7SQArray4SizeEv:
	.fnstart
.LFB187:
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
	adds	r3, r3, #24
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4sizeEv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK7SQArray4SizeEv, .-_ZNK7SQArray4SizeEv
	.section	.text._ZN7SQArray6AppendERK11tagSQObject,"axG",%progbits,_ZN7SQArray6AppendERK11tagSQObject,comdat
	.align	2
	.weak	_ZN7SQArray6AppendERK11tagSQObject
	.thumb
	.thumb_func
	.type	_ZN7SQArray6AppendERK11tagSQObject, %function
_ZN7SQArray6AppendERK11tagSQObject:
	.fnstart
.LFB191:
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
.LEHB7:
	bl	_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_(PLT)
.LEHE7:
	add	r3, r7, #8
	mov	r0, r3
.LEHB8:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE8:
	b	.L137
.L136:
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB9:
	bl	__cxa_end_cleanup(PLT)
.LEHE9:
.L137:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA191:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE191-.LLSDACSB191
.LLSDACSB191:
	.uleb128 .LEHB7-.LFB191
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L136-.LFB191
	.uleb128 0
	.uleb128 .LEHB8-.LFB191
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB191
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
.LLSDACSE191:
	.section	.text._ZN7SQArray6AppendERK11tagSQObject,"axG",%progbits,_ZN7SQArray6AppendERK11tagSQObject,comdat
	.fnend
	.size	_ZN7SQArray6AppendERK11tagSQObject, .-_ZN7SQArray6AppendERK11tagSQObject
	.section	.text._ZN7SQArray7ReleaseEv,"axG",%progbits,_ZN7SQArray7ReleaseEv,comdat
	.align	2
	.weak	_ZN7SQArray7ReleaseEv
	.thumb
	.thumb_func
	.type	_ZN7SQArray7ReleaseEv, %function
_ZN7SQArray7ReleaseEv:
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
	ldr	r3, [r3]
	ldr	r0, [r7, #4]
	blx	r3
	ldr	r0, [r7, #4]
	movs	r1, #36
	bl	_Z10sq_vm_freePvj(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN7SQArray7ReleaseEv, .-_ZN7SQArray7ReleaseEv
	.section	.text._ZN11SQDelegableD2Ev,"axG",%progbits,_ZN11SQDelegableD5Ev,comdat
	.align	2
	.weak	_ZN11SQDelegableD2Ev
	.thumb
	.thumb_func
	.type	_ZN11SQDelegableD2Ev, %function
_ZN11SQDelegableD2Ev:
	.fnstart
.LFB205:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r1, .L143
.LPIC11:
	add	r1, pc
	ldr	r3, [r7, #4]
	ldr	r2, .L143+4
	ldr	r2, [r1, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN13SQCollectableD2Ev(PLT)
	movs	r3, #0
	cmp	r3, #0
	beq	.L141
	ldr	r0, [r7, #4]
	bl	_ZdlPv(PLT)
.L141:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L144:
	.align	2
.L143:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC11+4)
	.word	_ZTV11SQDelegable(GOT)
	.fnend
	.size	_ZN11SQDelegableD2Ev, .-_ZN11SQDelegableD2Ev
	.weak	_ZN11SQDelegableD1Ev
	.thumb_set _ZN11SQDelegableD1Ev,_ZN11SQDelegableD2Ev
	.section	.text._ZN11SQDelegableD0Ev,"axG",%progbits,_ZN11SQDelegableD0Ev,comdat
	.align	2
	.weak	_ZN11SQDelegableD0Ev
	.thumb
	.thumb_func
	.type	_ZN11SQDelegableD0Ev, %function
_ZN11SQDelegableD0Ev:
	.fnstart
.LFB207:
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
	bl	_ZN11SQDelegableD1Ev(PLT)
	ldr	r0, [r7, #4]
	bl	_ZdlPv(PLT)
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQDelegableD0Ev, .-_ZN11SQDelegableD0Ev
	.section	.text._ZN10SQUserDataD2Ev,"axG",%progbits,_ZN10SQUserDataD5Ev,comdat
	.align	2
	.weak	_ZN10SQUserDataD2Ev
	.thumb
	.thumb_func
	.type	_ZN10SQUserDataD2Ev, %function
_ZN10SQUserDataD2Ev:
	.fnstart
.LFB225:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r1, .L156
.LPIC12:
	add	r1, pc
	ldr	r3, [r7, #4]
	ldr	r2, .L156+4
	ldr	r2, [r1, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	blt	.L149
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	add	r2, r3, #68
	ldr	r3, [r7, #4]
	mov	r0, r2
	mov	r1, r3
.LEHB10:
	bl	_ZN13SQCollectable15RemoveFromChainEPPS_S0_(PLT)
.L149:
	ldr	r3, [r7, #4]
	mov	r0, r3
	movs	r1, #0
	bl	_ZN11SQDelegable11SetDelegateEP7SQTable(PLT)
.LEHE10:
	ldr	r3, [r7, #4]
	mov	r0, r3
.LEHB11:
	bl	_ZN11SQDelegableD2Ev(PLT)
.LEHE11:
	movs	r3, #0
	cmp	r3, #0
	beq	.L151
	ldr	r0, [r7, #4]
	bl	_ZdlPv(PLT)
.L151:
	ldr	r3, [r7, #4]
	b	.L155
.L154:
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN11SQDelegableD2Ev(PLT)
.LEHB12:
	bl	__cxa_end_cleanup(PLT)
.LEHE12:
.L155:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L157:
	.align	2
.L156:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC12+4)
	.word	_ZTV10SQUserData(GOT)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA225:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE225-.LLSDACSB225
.LLSDACSB225:
	.uleb128 .LEHB10-.LFB225
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L154-.LFB225
	.uleb128 0
	.uleb128 .LEHB11-.LFB225
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB12-.LFB225
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
.LLSDACSE225:
	.section	.text._ZN10SQUserDataD2Ev,"axG",%progbits,_ZN10SQUserDataD5Ev,comdat
	.fnend
	.size	_ZN10SQUserDataD2Ev, .-_ZN10SQUserDataD2Ev
	.weak	_ZN10SQUserDataD1Ev
	.thumb_set _ZN10SQUserDataD1Ev,_ZN10SQUserDataD2Ev
	.section	.text._ZN10SQUserDataD0Ev,"axG",%progbits,_ZN10SQUserDataD0Ev,comdat
	.align	2
	.weak	_ZN10SQUserDataD0Ev
	.thumb
	.thumb_func
	.type	_ZN10SQUserDataD0Ev, %function
_ZN10SQUserDataD0Ev:
	.fnstart
.LFB227:
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
	bl	_ZN10SQUserDataD1Ev(PLT)
	ldr	r0, [r7, #4]
	bl	_ZdlPv(PLT)
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN10SQUserDataD0Ev, .-_ZN10SQUserDataD0Ev
	.section	.text._ZN10SQUserData8FinalizeEv,"axG",%progbits,_ZN10SQUserData8FinalizeEv,comdat
	.align	2
	.weak	_ZN10SQUserData8FinalizeEv
	.thumb
	.thumb_func
	.type	_ZN10SQUserData8FinalizeEv, %function
_ZN10SQUserData8FinalizeEv:
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
	ldr	r3, [r7, #4]
	mov	r0, r3
	movs	r1, #0
	bl	_ZN11SQDelegable11SetDelegateEP7SQTable(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN10SQUserData8FinalizeEv, .-_ZN10SQUserData8FinalizeEv
	.section	.text._ZN10SQUserData7GetTypeEv,"axG",%progbits,_ZN10SQUserData7GetTypeEv,comdat
	.align	2
	.weak	_ZN10SQUserData7GetTypeEv
	.thumb
	.thumb_func
	.type	_ZN10SQUserData7GetTypeEv, %function
_ZN10SQUserData7GetTypeEv:
	.fnstart
.LFB230:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #128
	movt	r3, 2560
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN10SQUserData7GetTypeEv, .-_ZN10SQUserData7GetTypeEv
	.section	.text._ZN10SQUserData7ReleaseEv,"axG",%progbits,_ZN10SQUserData7ReleaseEv,comdat
	.align	2
	.weak	_ZN10SQUserData7ReleaseEv
	.thumb
	.thumb_func
	.type	_ZN10SQUserData7ReleaseEv, %function
_ZN10SQUserData7ReleaseEv:
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
	ldr	r3, [r3, #32]
	cmp	r3, #0
	beq	.L165
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	ldr	r2, [r7, #4]
	adds	r2, r2, #40
	adds	r2, r2, #3
	bic	r2, r2, #3
	mov	r1, r2
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #28]
	mov	r0, r1
	mov	r1, r2
	blx	r3
.L165:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r0, [r7, #4]
	blx	r3
	movs	r3, #43
	bic	r2, r3, #3
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_Z10sq_vm_freePvj(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN10SQUserData7ReleaseEv, .-_ZN10SQUserData7ReleaseEv
	.section	.text._ZN10SQOuterVarC2Ev,"axG",%progbits,_ZN10SQOuterVarC5Ev,comdat
	.align	2
	.weak	_ZN10SQOuterVarC2Ev
	.thumb
	.thumb_func
	.type	_ZN10SQOuterVarC2Ev, %function
_ZN10SQOuterVarC2Ev:
	.fnstart
.LFB233:
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
.LFB236:
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
.LEHB13:
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #12
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	_ZN11SQObjectPtraSERKS_(PLT)
.LEHE13:
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	b	.L174
.L173:
	ldr	r3, [r7, #12]
	adds	r3, r3, #12
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB14:
	bl	__cxa_end_cleanup(PLT)
.LEHE14:
.L174:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA236:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE236-.LLSDACSB236
.LLSDACSB236:
	.uleb128 .LEHB13-.LFB236
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L173-.LFB236
	.uleb128 0
	.uleb128 .LEHB14-.LFB236
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
.LLSDACSE236:
	.section	.text._ZN10SQOuterVarC2ERK11SQObjectPtrS2_11SQOuterType,"axG",%progbits,_ZN10SQOuterVarC5ERK11SQObjectPtrS2_11SQOuterType,comdat
	.fnend
	.size	_ZN10SQOuterVarC2ERK11SQObjectPtrS2_11SQOuterType, .-_ZN10SQOuterVarC2ERK11SQObjectPtrS2_11SQOuterType
	.weak	_ZN10SQOuterVarC1ERK11SQObjectPtrS2_11SQOuterType
	.thumb_set _ZN10SQOuterVarC1ERK11SQObjectPtrS2_11SQOuterType,_ZN10SQOuterVarC2ERK11SQObjectPtrS2_11SQOuterType
	.section	.text._ZN14SQLocalVarInfoC2Ev,"axG",%progbits,_ZN14SQLocalVarInfoC5Ev,comdat
	.align	2
	.weak	_ZN14SQLocalVarInfoC2Ev
	.thumb
	.thumb_func
	.type	_ZN14SQLocalVarInfoC2Ev, %function
_ZN14SQLocalVarInfoC2Ev:
	.fnstart
.LFB242:
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
	.section	.text._ZN15SQFunctionProto6CreateEP13SQSharedStateiiiiiiii,"axG",%progbits,_ZN15SQFunctionProto6CreateEP13SQSharedStateiiiiiiii,comdat
	.align	2
	.weak	_ZN15SQFunctionProto6CreateEP13SQSharedStateiiiiiiii
	.thumb
	.thumb_func
	.type	_ZN15SQFunctionProto6CreateEP13SQSharedStateiiiiiiii, %function
_ZN15SQFunctionProto6CreateEP13SQSharedStateiiiiiiii:
	.fnstart
.LFB247:
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
.LEHB15:
	bl	_Z12sq_vm_mallocj(PLT)
.LEHE15:
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r5, [r7, #16]
	movs	r0, #120
	mov	r1, r5
	bl	_ZnwjPv(PLT)
	mov	r4, r0
	cmp	r4, #0
	beq	.L180
	mov	r0, r4
	ldr	r1, [r7, #12]
.LEHB16:
	bl	_ZN15SQFunctionProtoC1EP13SQSharedState(PLT)
.LEHE16:
.L180:
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
	b	.L181
.L184:
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
	beq	.L183
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
.L183:
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L181:
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #68]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bgt	.L184
	movs	r3, #0
	str	r3, [r7, #32]
	b	.L185
.L188:
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
	beq	.L187
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
.L187:
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	str	r3, [r7, #32]
.L185:
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #76]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bgt	.L188
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L189
.L192:
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
	beq	.L191
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
.L191:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L189:
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #84]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bgt	.L192
	movs	r3, #0
	str	r3, [r7, #24]
	b	.L193
.L196:
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
	beq	.L195
	mov	r0, r3
	bl	_ZN10SQOuterVarC1Ev(PLT)
.L195:
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
.L193:
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #92]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bgt	.L196
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L197
.L200:
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
	beq	.L199
	mov	r0, r3
	bl	_ZN14SQLocalVarInfoC1Ev(PLT)
.L199:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L197:
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #52]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bgt	.L200
	ldr	r3, [r7, #16]
	b	.L204
.L203:
	mov	r0, r4
	mov	r1, r5
	bl	_ZdlPvS_(PLT)
.LEHB17:
	bl	__cxa_end_cleanup(PLT)
.LEHE17:
.L204:
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA247:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE247-.LLSDACSB247
.LLSDACSB247:
	.uleb128 .LEHB15-.LFB247
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB16-.LFB247
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L203-.LFB247
	.uleb128 0
	.uleb128 .LEHB17-.LFB247
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
.LLSDACSE247:
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
.LFB250:
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
.LEHB18:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE18:
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
.LEHB19:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE19:
	ldr	r3, [r7, #4]
	b	.L210
.L209:
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB20:
	bl	__cxa_end_cleanup(PLT)
.LEHE20:
.L210:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA250:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE250-.LLSDACSB250
.LLSDACSB250:
	.uleb128 .LEHB18-.LFB250
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L209-.LFB250
	.uleb128 0
	.uleb128 .LEHB19-.LFB250
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB20-.LFB250
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
.LLSDACSE250:
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
.LFB253:
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
	.section	.text._ZN15SQFunctionProto7ReleaseEv,"axG",%progbits,_ZN15SQFunctionProto7ReleaseEv,comdat
	.align	2
	.weak	_ZN15SQFunctionProto7ReleaseEv
	.thumb
	.thumb_func
	.type	_ZN15SQFunctionProto7ReleaseEv, %function
_ZN15SQFunctionProto7ReleaseEv:
	.fnstart
.LFB248:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #32
	sub	sp, sp, #32
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L215
.L216:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #72]
	ldr	r3, [r7, #28]
	lsls	r3, r3, #3
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L215:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #68]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bgt	.L216
	movs	r3, #0
	str	r3, [r7, #24]
	b	.L217
.L218:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #80]
	ldr	r3, [r7, #24]
	lsls	r3, r3, #3
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
.L217:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #76]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bgt	.L218
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L219
.L220:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #88]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #3
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L219:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #84]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bgt	.L220
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L221
.L222:
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #96]
	ldr	r2, [r7, #16]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	mov	r0, r3
	bl	_ZN10SQOuterVarD1Ev(PLT)
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L221:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #92]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bgt	.L222
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L223
.L224:
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #56]
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
.L223:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #52]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bgt	.L224
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #68]
	lsls	r2, r3, #3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #108]
	subs	r3, r3, #1
	lsls	r3, r3, #3
	add	r3, r3, r2
	add	r2, r3, #120
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	lsls	r1, r3, #3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #76]
	lsls	r3, r3, #3
	add	r3, r3, r1
	adds	r1, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	lsls	r0, r3, #3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #92]
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	add	r1, r1, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	lsls	r0, r3, #2
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #52]
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	add	r3, r3, r1
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r0, [r7, #4]
	blx	r3
	ldr	r3, [r7, #8]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_Z10sq_vm_freePvj(PLT)
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN15SQFunctionProto7ReleaseEv, .-_ZN15SQFunctionProto7ReleaseEv
	.section	.text._ZN15SQFunctionProto8FinalizeEv,"axG",%progbits,_ZN15SQFunctionProto8FinalizeEv,comdat
	.align	2
	.weak	_ZN15SQFunctionProto8FinalizeEv
	.thumb
	.thumb_func
	.type	_ZN15SQFunctionProto8FinalizeEv, %function
_ZN15SQFunctionProto8FinalizeEv:
	.fnstart
.LFB255:
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
	b	.L226
.L227:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #72]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #3
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L226:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #68]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bgt	.L227
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN15SQFunctionProto8FinalizeEv, .-_ZN15SQFunctionProto8FinalizeEv
	.section	.text._ZN15SQFunctionProto7GetTypeEv,"axG",%progbits,_ZN15SQFunctionProto7GetTypeEv,comdat
	.align	2
	.weak	_ZN15SQFunctionProto7GetTypeEv
	.thumb
	.thumb_func
	.type	_ZN15SQFunctionProto7GetTypeEv, %function
_ZN15SQFunctionProto7GetTypeEv:
	.fnstart
.LFB256:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, #8192
	movt	r3, 2048
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN15SQFunctionProto7GetTypeEv, .-_ZN15SQFunctionProto7GetTypeEv
	.section	.text._ZN9SQClosureC2EP13SQSharedStateP15SQFunctionProto,"axG",%progbits,_ZN9SQClosureC5EP13SQSharedStateP15SQFunctionProto,comdat
	.align	2
	.weak	_ZN9SQClosureC2EP13SQSharedStateP15SQFunctionProto
	.thumb
	.thumb_func
	.type	_ZN9SQClosureC2EP13SQSharedStateP15SQFunctionProto, %function
_ZN9SQClosureC2EP13SQSharedStateP15SQFunctionProto:
	.fnstart
.LFB271:
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
	ldr	r4, .L236
.LPIC13:
	add	r4, pc
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	_ZN13SQCollectableC2Ev(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, .L236+4
	ldr	r2, [r4, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #32]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	ldr	r2, [r3, #4]
	adds	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #28]
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
.LEHB21:
	bl	_ZN13SQCollectable10AddToChainEPPS_S0_(PLT)
.LEHE21:
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #12]
	b	.L235
.L234:
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	_ZN13SQCollectableD2Ev(PLT)
.LEHB22:
	bl	__cxa_end_cleanup(PLT)
.LEHE22:
.L235:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L237:
	.align	2
.L236:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC13+4)
	.word	_ZTV9SQClosure(GOT)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA271:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE271-.LLSDACSB271
.LLSDACSB271:
	.uleb128 .LEHB21-.LFB271
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L234-.LFB271
	.uleb128 0
	.uleb128 .LEHB22-.LFB271
	.uleb128 .LEHE22-.LEHB22
	.uleb128 0
	.uleb128 0
.LLSDACSE271:
	.section	.text._ZN9SQClosureC2EP13SQSharedStateP15SQFunctionProto,"axG",%progbits,_ZN9SQClosureC5EP13SQSharedStateP15SQFunctionProto,comdat
	.fnend
	.size	_ZN9SQClosureC2EP13SQSharedStateP15SQFunctionProto, .-_ZN9SQClosureC2EP13SQSharedStateP15SQFunctionProto
	.weak	_ZN9SQClosureC1EP13SQSharedStateP15SQFunctionProto
	.thumb_set _ZN9SQClosureC1EP13SQSharedStateP15SQFunctionProto,_ZN9SQClosureC2EP13SQSharedStateP15SQFunctionProto
	.section	.text._ZN9SQClosure6CreateEP13SQSharedStateP15SQFunctionProto,"axG",%progbits,_ZN9SQClosure6CreateEP13SQSharedStateP15SQFunctionProto,comdat
	.align	2
	.weak	_ZN9SQClosure6CreateEP13SQSharedStateP15SQFunctionProto
	.thumb
	.thumb_func
	.type	_ZN9SQClosure6CreateEP13SQSharedStateP15SQFunctionProto, %function
_ZN9SQClosure6CreateEP13SQSharedStateP15SQFunctionProto:
	.fnstart
.LFB273:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #24
	sub	sp, sp, #24
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3, #100]
	lsls	r2, r3, #3
	ldr	r3, [r7]
	ldr	r3, [r3, #92]
	lsls	r3, r3, #3
	add	r3, r3, r2
	adds	r3, r3, #44
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	mov	r0, r3
.LEHB23:
	bl	_Z12sq_vm_mallocj(PLT)
.LEHE23:
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r5, [r7, #8]
	movs	r0, #44
	mov	r1, r5
	bl	_ZnwjPv(PLT)
	mov	r4, r0
	cmp	r4, #0
	beq	.L240
	mov	r0, r4
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
.LEHB24:
	bl	_ZN9SQClosureC1EP13SQSharedStateP15SQFunctionProto(PLT)
.LEHE24:
.L240:
	ldr	r3, [r7, #8]
	add	r2, r3, #44
	ldr	r3, [r7, #8]
	str	r2, [r3, #36]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #36]
	ldr	r3, [r7]
	ldr	r3, [r3, #92]
	lsls	r3, r3, #3
	add	r2, r2, r3
	ldr	r3, [r7, #8]
	str	r2, [r3, #40]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L241
.L244:
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #3
	add	r3, r3, r2
	movs	r0, #8
	mov	r1, r3
	bl	_ZnwjPv(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L243
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
.L243:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L241:
	ldr	r3, [r7]
	ldr	r2, [r3, #92]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bgt	.L244
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L245
.L248:
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #16]
	lsls	r3, r3, #3
	add	r3, r3, r2
	movs	r0, #8
	mov	r1, r3
	bl	_ZnwjPv(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L247
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
.L247:
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L245:
	ldr	r3, [r7]
	ldr	r2, [r3, #100]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bgt	.L248
	ldr	r3, [r7, #8]
	b	.L252
.L251:
	mov	r0, r4
	mov	r1, r5
	bl	_ZdlPvS_(PLT)
.LEHB25:
	bl	__cxa_end_cleanup(PLT)
.LEHE25:
.L252:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA273:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE273-.LLSDACSB273
.LLSDACSB273:
	.uleb128 .LEHB23-.LFB273
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB24-.LFB273
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L251-.LFB273
	.uleb128 0
	.uleb128 .LEHB25-.LFB273
	.uleb128 .LEHE25-.LEHB25
	.uleb128 0
	.uleb128 0
.LLSDACSE273:
	.section	.text._ZN9SQClosure6CreateEP13SQSharedStateP15SQFunctionProto,"axG",%progbits,_ZN9SQClosure6CreateEP13SQSharedStateP15SQFunctionProto,comdat
	.fnend
	.size	_ZN9SQClosure6CreateEP13SQSharedStateP15SQFunctionProto, .-_ZN9SQClosure6CreateEP13SQSharedStateP15SQFunctionProto
	.section	.text._ZN9SQClosure7ReleaseEv,"axG",%progbits,_ZN9SQClosure7ReleaseEv,comdat
	.align	2
	.weak	_ZN9SQClosure7ReleaseEv
	.thumb
	.thumb_func
	.type	_ZN9SQClosure7ReleaseEv, %function
_ZN9SQClosure7ReleaseEv:
	.fnstart
.LFB274:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #24
	sub	sp, sp, #24
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #100]
	lsls	r2, r3, #3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #92]
	lsls	r3, r3, #3
	add	r3, r3, r2
	adds	r3, r3, #44
	str	r3, [r7, #8]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L254
.L255:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #3
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L254:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #92]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bgt	.L255
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L256
.L257:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #16]
	lsls	r3, r3, #3
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L256:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #100]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bgt	.L257
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	cmp	r3, #0
	beq	.L258
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L259
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #32]
	mov	r0, r2
	blx	r3
.L259:
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #32]
.L258:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r0, [r7, #4]
	blx	r3
	ldr	r3, [r7, #8]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_Z10sq_vm_freePvj(PLT)
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN9SQClosure7ReleaseEv, .-_ZN9SQClosure7ReleaseEv
	.section	.text._ZN9SQClosure8FinalizeEv,"axG",%progbits,_ZN9SQClosure8FinalizeEv,comdat
	.align	2
	.weak	_ZN9SQClosure8FinalizeEv
	.thumb
	.thumb_func
	.type	_ZN9SQClosure8FinalizeEv, %function
_ZN9SQClosure8FinalizeEv:
	.fnstart
.LFB276:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #24
	sub	sp, sp, #24
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L261
.L262:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #3
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L261:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #92]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bgt	.L262
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L263
.L264:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #16]
	lsls	r3, r3, #3
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L263:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #100]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bgt	.L264
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN9SQClosure8FinalizeEv, .-_ZN9SQClosure8FinalizeEv
	.section	.text._ZN9SQClosure7GetTypeEv,"axG",%progbits,_ZN9SQClosure7GetTypeEv,comdat
	.align	2
	.weak	_ZN9SQClosure7GetTypeEv
	.thumb
	.thumb_func
	.type	_ZN9SQClosure7GetTypeEv, %function
_ZN9SQClosure7GetTypeEv:
	.fnstart
.LFB277:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, #256
	movt	r3, 2048
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN9SQClosure7GetTypeEv, .-_ZN9SQClosure7GetTypeEv
	.section	.text._ZN7SQOuterD2Ev,"axG",%progbits,_ZN7SQOuterD5Ev,comdat
	.align	2
	.weak	_ZN7SQOuterD2Ev
	.thumb
	.thumb_func
	.type	_ZN7SQOuterD2Ev, %function
_ZN7SQOuterD2Ev:
	.fnstart
.LFB283:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r1, .L277
.LPIC14:
	add	r1, pc
	ldr	r3, [r7, #4]
	ldr	r2, .L277+4
	ldr	r2, [r1, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	blt	.L268
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	add	r2, r3, #68
	ldr	r3, [r7, #4]
	mov	r0, r2
	mov	r1, r3
.LEHB26:
	bl	_ZN13SQCollectable15RemoveFromChainEPPS_S0_(PLT)
.LEHE26:
.L268:
	ldr	r3, [r7, #4]
	adds	r3, r3, #32
	mov	r0, r3
.LEHB27:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE27:
	ldr	r3, [r7, #4]
	mov	r0, r3
.LEHB28:
	bl	_ZN13SQCollectableD2Ev(PLT)
.LEHE28:
	movs	r3, #0
	cmp	r3, #0
	beq	.L270
	ldr	r0, [r7, #4]
	bl	_ZdlPv(PLT)
.L270:
	ldr	r3, [r7, #4]
	b	.L276
.L274:
	ldr	r3, [r7, #4]
	adds	r3, r3, #32
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L273
.L275:
.L273:
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN13SQCollectableD2Ev(PLT)
.LEHB29:
	bl	__cxa_end_cleanup(PLT)
.LEHE29:
.L276:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L278:
	.align	2
.L277:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC14+4)
	.word	_ZTV7SQOuter(GOT)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA283:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE283-.LLSDACSB283
.LLSDACSB283:
	.uleb128 .LEHB26-.LFB283
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L274-.LFB283
	.uleb128 0
	.uleb128 .LEHB27-.LFB283
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L275-.LFB283
	.uleb128 0
	.uleb128 .LEHB28-.LFB283
	.uleb128 .LEHE28-.LEHB28
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB29-.LFB283
	.uleb128 .LEHE29-.LEHB29
	.uleb128 0
	.uleb128 0
.LLSDACSE283:
	.section	.text._ZN7SQOuterD2Ev,"axG",%progbits,_ZN7SQOuterD5Ev,comdat
	.fnend
	.size	_ZN7SQOuterD2Ev, .-_ZN7SQOuterD2Ev
	.weak	_ZN7SQOuterD1Ev
	.thumb_set _ZN7SQOuterD1Ev,_ZN7SQOuterD2Ev
	.section	.text._ZN7SQOuterD0Ev,"axG",%progbits,_ZN7SQOuterD0Ev,comdat
	.align	2
	.weak	_ZN7SQOuterD0Ev
	.thumb
	.thumb_func
	.type	_ZN7SQOuterD0Ev, %function
_ZN7SQOuterD0Ev:
	.fnstart
.LFB285:
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
	bl	_ZN7SQOuterD1Ev(PLT)
	ldr	r0, [r7, #4]
	bl	_ZdlPv(PLT)
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN7SQOuterD0Ev, .-_ZN7SQOuterD0Ev
	.section	.text._ZN7SQOuter7ReleaseEv,"axG",%progbits,_ZN7SQOuter7ReleaseEv,comdat
	.align	2
	.weak	_ZN7SQOuter7ReleaseEv
	.thumb
	.thumb_func
	.type	_ZN7SQOuter7ReleaseEv, %function
_ZN7SQOuter7ReleaseEv:
	.fnstart
.LFB286:
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
	ldr	r3, [r3]
	ldr	r0, [r7, #4]
	blx	r3
	ldr	r0, [r7, #4]
	movs	r1, #44
	bl	_Z10sq_vm_freePvj(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN7SQOuter7ReleaseEv, .-_ZN7SQOuter7ReleaseEv
	.section	.text._ZN7SQOuter8FinalizeEv,"axG",%progbits,_ZN7SQOuter8FinalizeEv,comdat
	.align	2
	.weak	_ZN7SQOuter8FinalizeEv
	.thumb
	.thumb_func
	.type	_ZN7SQOuter8FinalizeEv, %function
_ZN7SQOuter8FinalizeEv:
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
	adds	r3, r3, #32
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN7SQOuter8FinalizeEv, .-_ZN7SQOuter8FinalizeEv
	.section	.text._ZN7SQOuter7GetTypeEv,"axG",%progbits,_ZN7SQOuter7GetTypeEv,comdat
	.align	2
	.weak	_ZN7SQOuter7GetTypeEv
	.thumb
	.thumb_func
	.type	_ZN7SQOuter7GetTypeEv, %function
_ZN7SQOuter7GetTypeEv:
	.fnstart
.LFB288:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	movt	r3, 2050
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN7SQOuter7GetTypeEv, .-_ZN7SQOuter7GetTypeEv
	.section	.text._ZN11SQGeneratorD2Ev,"axG",%progbits,_ZN11SQGeneratorD5Ev,comdat
	.align	2
	.weak	_ZN11SQGeneratorD2Ev
	.thumb
	.thumb_func
	.type	_ZN11SQGeneratorD2Ev, %function
_ZN11SQGeneratorD2Ev:
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
	ldr	r1, .L302
.LPIC15:
	add	r1, pc
	ldr	r3, [r7, #4]
	ldr	r2, .L302+4
	ldr	r2, [r1, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	blt	.L287
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	add	r2, r3, #68
	ldr	r3, [r7, #4]
	mov	r0, r2
	mov	r1, r3
.LEHB30:
	bl	_ZN13SQCollectable15RemoveFromChainEPPS_S0_(PLT)
.LEHE30:
.L287:
	ldr	r3, [r7, #4]
	adds	r3, r3, #88
	mov	r0, r3
.LEHB31:
	bl	_ZN8sqvectorI15SQExceptionTrapED1Ev(PLT)
.LEHE31:
	ldr	r3, [r7, #4]
	adds	r3, r3, #44
	mov	r0, r3
.LEHB32:
	bl	_ZN4SQVM8CallInfoD1Ev(PLT)
.LEHE32:
	ldr	r3, [r7, #4]
	adds	r3, r3, #32
	mov	r0, r3
.LEHB33:
	bl	_ZN8sqvectorI11SQObjectPtrED1Ev(PLT)
.LEHE33:
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	mov	r0, r3
.LEHB34:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE34:
	ldr	r3, [r7, #4]
	mov	r0, r3
.LEHB35:
	bl	_ZN13SQCollectableD2Ev(PLT)
.LEHE35:
	movs	r3, #0
	cmp	r3, #0
	beq	.L289
	ldr	r0, [r7, #4]
	bl	_ZdlPv(PLT)
.L289:
	ldr	r3, [r7, #4]
	b	.L301
.L296:
	ldr	r3, [r7, #4]
	adds	r3, r3, #88
	mov	r0, r3
	bl	_ZN8sqvectorI15SQExceptionTrapED1Ev(PLT)
	b	.L292
.L297:
.L292:
	ldr	r3, [r7, #4]
	adds	r3, r3, #44
	mov	r0, r3
	bl	_ZN4SQVM8CallInfoD1Ev(PLT)
	b	.L293
.L298:
.L293:
	ldr	r3, [r7, #4]
	adds	r3, r3, #32
	mov	r0, r3
	bl	_ZN8sqvectorI11SQObjectPtrED1Ev(PLT)
	b	.L294
.L299:
.L294:
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L295
.L300:
.L295:
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN13SQCollectableD2Ev(PLT)
.LEHB36:
	bl	__cxa_end_cleanup(PLT)
.LEHE36:
.L301:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L303:
	.align	2
.L302:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC15+4)
	.word	_ZTV11SQGenerator(GOT)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA294:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE294-.LLSDACSB294
.LLSDACSB294:
	.uleb128 .LEHB30-.LFB294
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L296-.LFB294
	.uleb128 0
	.uleb128 .LEHB31-.LFB294
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L297-.LFB294
	.uleb128 0
	.uleb128 .LEHB32-.LFB294
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L298-.LFB294
	.uleb128 0
	.uleb128 .LEHB33-.LFB294
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L299-.LFB294
	.uleb128 0
	.uleb128 .LEHB34-.LFB294
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L300-.LFB294
	.uleb128 0
	.uleb128 .LEHB35-.LFB294
	.uleb128 .LEHE35-.LEHB35
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB36-.LFB294
	.uleb128 .LEHE36-.LEHB36
	.uleb128 0
	.uleb128 0
.LLSDACSE294:
	.section	.text._ZN11SQGeneratorD2Ev,"axG",%progbits,_ZN11SQGeneratorD5Ev,comdat
	.fnend
	.size	_ZN11SQGeneratorD2Ev, .-_ZN11SQGeneratorD2Ev
	.weak	_ZN11SQGeneratorD1Ev
	.thumb_set _ZN11SQGeneratorD1Ev,_ZN11SQGeneratorD2Ev
	.section	.text._ZN11SQGeneratorD0Ev,"axG",%progbits,_ZN11SQGeneratorD0Ev,comdat
	.align	2
	.weak	_ZN11SQGeneratorD0Ev
	.thumb
	.thumb_func
	.type	_ZN11SQGeneratorD0Ev, %function
_ZN11SQGeneratorD0Ev:
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
	ldr	r0, [r7, #4]
	bl	_ZN11SQGeneratorD1Ev(PLT)
	ldr	r0, [r7, #4]
	bl	_ZdlPv(PLT)
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQGeneratorD0Ev, .-_ZN11SQGeneratorD0Ev
	.section	.text._ZN11SQGenerator7ReleaseEv,"axG",%progbits,_ZN11SQGenerator7ReleaseEv,comdat
	.align	2
	.weak	_ZN11SQGenerator7ReleaseEv
	.thumb
	.thumb_func
	.type	_ZN11SQGenerator7ReleaseEv, %function
_ZN11SQGenerator7ReleaseEv:
	.fnstart
.LFB298:
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
	ldr	r3, [r3]
	ldr	r0, [r7, #4]
	blx	r3
	ldr	r0, [r7, #4]
	movs	r1, #104
	bl	_Z10sq_vm_freePvj(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQGenerator7ReleaseEv, .-_ZN11SQGenerator7ReleaseEv
	.section	.text._ZN11SQGenerator8FinalizeEv,"axG",%progbits,_ZN11SQGenerator8FinalizeEv,comdat
	.align	2
	.weak	_ZN11SQGenerator8FinalizeEv
	.thumb
	.thumb_func
	.type	_ZN11SQGenerator8FinalizeEv, %function
_ZN11SQGenerator8FinalizeEv:
	.fnstart
.LFB299:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #20
	sub	sp, sp, #20
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	add	r4, r3, #32
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	add	r3, r7, #8
	mov	r0, r4
	movs	r1, #0
	mov	r2, r3
.LEHB37:
	bl	_ZN8sqvectorI11SQObjectPtrE6resizeEjRKS0_(PLT)
.LEHE37:
	add	r3, r7, #8
	mov	r0, r3
.LEHB38:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
.LEHE38:
	b	.L311
.L310:
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB39:
	bl	__cxa_end_cleanup(PLT)
.LEHE39:
.L311:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA299:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE299-.LLSDACSB299
.LLSDACSB299:
	.uleb128 .LEHB37-.LFB299
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L310-.LFB299
	.uleb128 0
	.uleb128 .LEHB38-.LFB299
	.uleb128 .LEHE38-.LEHB38
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB39-.LFB299
	.uleb128 .LEHE39-.LEHB39
	.uleb128 0
	.uleb128 0
.LLSDACSE299:
	.section	.text._ZN11SQGenerator8FinalizeEv,"axG",%progbits,_ZN11SQGenerator8FinalizeEv,comdat
	.fnend
	.size	_ZN11SQGenerator8FinalizeEv, .-_ZN11SQGenerator8FinalizeEv
	.section	.text._ZN11SQGenerator7GetTypeEv,"axG",%progbits,_ZN11SQGenerator7GetTypeEv,comdat
	.align	2
	.weak	_ZN11SQGenerator7GetTypeEv
	.thumb
	.thumb_func
	.type	_ZN11SQGenerator7GetTypeEv, %function
_ZN11SQGenerator7GetTypeEv:
	.fnstart
.LFB300:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, #1024
	movt	r3, 2048
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN11SQGenerator7GetTypeEv, .-_ZN11SQGenerator7GetTypeEv
	.section	.text._ZN15SQNativeClosureD2Ev,"axG",%progbits,_ZN15SQNativeClosureD5Ev,comdat
	.align	2
	.weak	_ZN15SQNativeClosureD2Ev
	.thumb
	.thumb_func
	.type	_ZN15SQNativeClosureD2Ev, %function
_ZN15SQNativeClosureD2Ev:
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
	ldr	r1, .L328
.LPIC16:
	add	r1, pc
	ldr	r3, [r7, #4]
	ldr	r2, .L328+4
	ldr	r2, [r1, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L315
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L316
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #48]
	mov	r0, r2
.LEHB40:
	blx	r3
.L316:
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #48]
.L315:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	blt	.L317
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	add	r2, r3, #68
	ldr	r3, [r7, #4]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN13SQCollectable15RemoveFromChainEPPS_S0_(PLT)
.LEHE40:
.L317:
	ldr	r3, [r7, #4]
	adds	r3, r3, #56
	mov	r0, r3
.LEHB41:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE41:
	ldr	r3, [r7, #4]
	adds	r3, r3, #28
	mov	r0, r3
.LEHB42:
	bl	_ZN8sqvectorIiED1Ev(PLT)
.LEHE42:
	ldr	r3, [r7, #4]
	mov	r0, r3
.LEHB43:
	bl	_ZN13SQCollectableD2Ev(PLT)
.LEHE43:
	movs	r3, #0
	cmp	r3, #0
	beq	.L319
	ldr	r0, [r7, #4]
	bl	_ZdlPv(PLT)
.L319:
	ldr	r3, [r7, #4]
	b	.L327
.L324:
	ldr	r3, [r7, #4]
	adds	r3, r3, #56
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L322
.L325:
.L322:
	ldr	r3, [r7, #4]
	adds	r3, r3, #28
	mov	r0, r3
	bl	_ZN8sqvectorIiED1Ev(PLT)
	b	.L323
.L326:
.L323:
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN13SQCollectableD2Ev(PLT)
.LEHB44:
	bl	__cxa_end_cleanup(PLT)
.LEHE44:
.L327:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L329:
	.align	2
.L328:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC16+4)
	.word	_ZTV15SQNativeClosure(GOT)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA307:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE307-.LLSDACSB307
.LLSDACSB307:
	.uleb128 .LEHB40-.LFB307
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L324-.LFB307
	.uleb128 0
	.uleb128 .LEHB41-.LFB307
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L325-.LFB307
	.uleb128 0
	.uleb128 .LEHB42-.LFB307
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L326-.LFB307
	.uleb128 0
	.uleb128 .LEHB43-.LFB307
	.uleb128 .LEHE43-.LEHB43
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB44-.LFB307
	.uleb128 .LEHE44-.LEHB44
	.uleb128 0
	.uleb128 0
.LLSDACSE307:
	.section	.text._ZN15SQNativeClosureD2Ev,"axG",%progbits,_ZN15SQNativeClosureD5Ev,comdat
	.fnend
	.size	_ZN15SQNativeClosureD2Ev, .-_ZN15SQNativeClosureD2Ev
	.weak	_ZN15SQNativeClosureD1Ev
	.thumb_set _ZN15SQNativeClosureD1Ev,_ZN15SQNativeClosureD2Ev
	.section	.text._ZN15SQNativeClosureD0Ev,"axG",%progbits,_ZN15SQNativeClosureD0Ev,comdat
	.align	2
	.weak	_ZN15SQNativeClosureD0Ev
	.thumb
	.thumb_func
	.type	_ZN15SQNativeClosureD0Ev, %function
_ZN15SQNativeClosureD0Ev:
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
	ldr	r0, [r7, #4]
	bl	_ZN15SQNativeClosureD1Ev(PLT)
	ldr	r0, [r7, #4]
	bl	_ZdlPv(PLT)
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN15SQNativeClosureD0Ev, .-_ZN15SQNativeClosureD0Ev
	.section	.text._ZN15SQNativeClosure7ReleaseEv,"axG",%progbits,_ZN15SQNativeClosure7ReleaseEv,comdat
	.align	2
	.weak	_ZN15SQNativeClosure7ReleaseEv
	.thumb
	.thumb_func
	.type	_ZN15SQNativeClosure7ReleaseEv, %function
_ZN15SQNativeClosure7ReleaseEv:
	.fnstart
.LFB310:
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
	ldr	r3, [r3, #44]
	lsls	r3, r3, #3
	adds	r3, r3, #64
	str	r3, [r7, #8]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L334
.L335:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #3
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L334:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	mov	r2, r3
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bgt	.L335
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r0, [r7, #4]
	blx	r3
	ldr	r3, [r7, #8]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	sq_free(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN15SQNativeClosure7ReleaseEv, .-_ZN15SQNativeClosure7ReleaseEv
	.section	.text._ZN15SQNativeClosure8FinalizeEv,"axG",%progbits,_ZN15SQNativeClosure8FinalizeEv,comdat
	.align	2
	.weak	_ZN15SQNativeClosure8FinalizeEv
	.thumb
	.thumb_func
	.type	_ZN15SQNativeClosure8FinalizeEv, %function
_ZN15SQNativeClosure8FinalizeEv:
	.fnstart
.LFB311:
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
	b	.L337
.L338:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #3
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L337:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	mov	r2, r3
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bgt	.L338
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN15SQNativeClosure8FinalizeEv, .-_ZN15SQNativeClosure8FinalizeEv
	.section	.text._ZN15SQNativeClosure7GetTypeEv,"axG",%progbits,_ZN15SQNativeClosure7GetTypeEv,comdat
	.align	2
	.weak	_ZN15SQNativeClosure7GetTypeEv
	.thumb
	.thumb_func
	.type	_ZN15SQNativeClosure7GetTypeEv, %function
_ZN15SQNativeClosure7GetTypeEv:
	.fnstart
.LFB312:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, #512
	movt	r3, 2048
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN15SQNativeClosure7GetTypeEv, .-_ZN15SQNativeClosure7GetTypeEv
	.section	.rodata
	.align	2
.LC2:
	.ascii	"null\000"
	.align	2
.LC3:
	.ascii	"integer\000"
	.align	2
.LC4:
	.ascii	"float\000"
	.align	2
.LC5:
	.ascii	"bool\000"
	.align	2
.LC6:
	.ascii	"string\000"
	.align	2
.LC7:
	.ascii	"table\000"
	.align	2
.LC8:
	.ascii	"array\000"
	.align	2
.LC9:
	.ascii	"generator\000"
	.align	2
.LC10:
	.ascii	"function\000"
	.align	2
.LC11:
	.ascii	"userdata\000"
	.align	2
.LC12:
	.ascii	"thread\000"
	.align	2
.LC13:
	.ascii	"class\000"
	.align	2
.LC14:
	.ascii	"instance\000"
	.align	2
.LC15:
	.ascii	"weakref\000"
	.align	2
.LC16:
	.ascii	"outer\000"
	.section	.text._Z11IdType2Name15tagSQObjectType,"ax",%progbits
	.align	2
	.global	_Z11IdType2Name15tagSQObjectType
	.thumb
	.thumb_func
	.type	_Z11IdType2Name15tagSQObjectType, %function
_Z11IdType2Name15tagSQObjectType:
	.fnstart
.LFB313:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	bic	r3, r3, #-16777216
	cmp	r3, #256
	beq	.L343
	cmp	r3, #256
	bgt	.L344
	cmp	r3, #8
	beq	.L345
	cmp	r3, #8
	bgt	.L346
	cmp	r3, #2
	beq	.L347
	cmp	r3, #4
	beq	.L348
	cmp	r3, #1
	beq	.L349
	b	.L342
.L346:
	cmp	r3, #32
	beq	.L350
	cmp	r3, #32
	bgt	.L351
	cmp	r3, #16
	beq	.L352
	b	.L342
.L351:
	cmp	r3, #64
	beq	.L353
	cmp	r3, #128
	beq	.L354
	b	.L342
.L344:
	cmp	r3, #8192
	beq	.L355
	cmp	r3, #8192
	bgt	.L356
	cmp	r3, #1024
	beq	.L357
	cmp	r3, #1024
	bgt	.L358
	cmp	r3, #512
	beq	.L343
	b	.L342
.L358:
	cmp	r3, #2048
	beq	.L354
	cmp	r3, #4096
	beq	.L359
	b	.L342
.L356:
	cmp	r3, #32768
	beq	.L360
	cmp	r3, #32768
	bgt	.L361
	cmp	r3, #16384
	beq	.L362
	b	.L342
.L361:
	cmp	r3, #65536
	beq	.L363
	cmp	r3, #131072
	beq	.L364
	b	.L342
.L349:
	ldr	r3, .L366
.LPIC17:
	add	r3, pc
	b	.L365
.L347:
	ldr	r3, .L366+4
.LPIC18:
	add	r3, pc
	b	.L365
.L348:
	ldr	r3, .L366+8
.LPIC19:
	add	r3, pc
	b	.L365
.L345:
	ldr	r3, .L366+12
.LPIC20:
	add	r3, pc
	b	.L365
.L352:
	ldr	r3, .L366+16
.LPIC21:
	add	r3, pc
	b	.L365
.L350:
	ldr	r3, .L366+20
.LPIC22:
	add	r3, pc
	b	.L365
.L353:
	ldr	r3, .L366+24
.LPIC23:
	add	r3, pc
	b	.L365
.L357:
	ldr	r3, .L366+28
.LPIC24:
	add	r3, pc
	b	.L365
.L343:
	ldr	r3, .L366+32
.LPIC25:
	add	r3, pc
	b	.L365
.L354:
	ldr	r3, .L366+36
.LPIC26:
	add	r3, pc
	b	.L365
.L359:
	ldr	r3, .L366+40
.LPIC27:
	add	r3, pc
	b	.L365
.L355:
	ldr	r3, .L366+44
.LPIC28:
	add	r3, pc
	b	.L365
.L362:
	ldr	r3, .L366+48
.LPIC29:
	add	r3, pc
	b	.L365
.L360:
	ldr	r3, .L366+52
.LPIC30:
	add	r3, pc
	b	.L365
.L363:
	ldr	r3, .L366+56
.LPIC31:
	add	r3, pc
	b	.L365
.L364:
	ldr	r3, .L366+60
.LPIC32:
	add	r3, pc
	b	.L365
.L342:
	movs	r3, #0
.L365:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L367:
	.align	2
.L366:
	.word	.LC2-(.LPIC17+4)
	.word	.LC3-(.LPIC18+4)
	.word	.LC4-(.LPIC19+4)
	.word	.LC5-(.LPIC20+4)
	.word	.LC6-(.LPIC21+4)
	.word	.LC7-(.LPIC22+4)
	.word	.LC8-(.LPIC23+4)
	.word	.LC9-(.LPIC24+4)
	.word	.LC10-(.LPIC25+4)
	.word	.LC11-(.LPIC26+4)
	.word	.LC12-(.LPIC27+4)
	.word	.LC10-(.LPIC28+4)
	.word	.LC13-(.LPIC29+4)
	.word	.LC14-(.LPIC30+4)
	.word	.LC15-(.LPIC31+4)
	.word	.LC16-(.LPIC32+4)
	.cantunwind
	.fnend
	.size	_Z11IdType2Name15tagSQObjectType, .-_Z11IdType2Name15tagSQObjectType
	.section	.text._Z11GetTypeNameRK11SQObjectPtr,"ax",%progbits
	.align	2
	.global	_Z11GetTypeNameRK11SQObjectPtr
	.thumb
	.thumb_func
	.type	_Z11GetTypeNameRK11SQObjectPtr, %function
_Z11GetTypeNameRK11SQObjectPtr:
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
	ldr	r3, [r3]
	mov	r0, r3
	bl	_Z11IdType2Name15tagSQObjectType(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_Z11GetTypeNameRK11SQObjectPtr, .-_Z11GetTypeNameRK11SQObjectPtr
	.section	.text._ZN8SQString6CreateEP13SQSharedStatePKci,"ax",%progbits
	.align	2
	.global	_ZN8SQString6CreateEP13SQSharedStatePKci
	.thumb
	.thumb_func
	.type	_ZN8SQString6CreateEP13SQSharedStatePKci, %function
_ZN8SQString6CreateEP13SQSharedStatePKci:
	.fnstart
.LFB315:
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
	ldr	r3, [r3, #20]
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	_ZN13SQStringTable3AddEPKci(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN8SQString6CreateEP13SQSharedStatePKci, .-_ZN8SQString6CreateEP13SQSharedStatePKci
	.section	.text._ZN8SQString7ReleaseEv,"ax",%progbits
	.align	2
	.global	_ZN8SQString7ReleaseEv
	.thumb
	.thumb_func
	.type	_ZN8SQString7ReleaseEv, %function
_ZN8SQString7ReleaseEv:
	.fnstart
.LFB316:
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
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #20]
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	_ZN13SQStringTable6RemoveEP8SQString(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN8SQString7ReleaseEv, .-_ZN8SQString7ReleaseEv
	.section	.text._ZN8SQString4NextERK11SQObjectPtrRS0_S3_,"ax",%progbits
	.align	2
	.global	_ZN8SQString4NextERK11SQObjectPtrRS0_S3_
	.thumb
	.thumb_func
	.type	_ZN8SQString4NextERK11SQObjectPtrRS0_S3_, %function
_ZN8SQString4NextERK11SQObjectPtrRS0_S3_:
	.fnstart
.LFB317:
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
	str	r3, [r7]
	ldr	r0, [r7, #8]
	bl	_Z14TranslateIndexRK11SQObjectPtr(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	nop
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	ble	.L377
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #20]
	bl	_ZN11SQObjectPtraSEi(PLT)
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	adds	r3, r3, #24
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEi(PLT)
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	b	.L375
.L377:
	mov	r3, #-1
.L375:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN8SQString4NextERK11SQObjectPtrRS0_S3_, .-_ZN8SQString4NextERK11SQObjectPtrRS0_S3_
	.section	.rodata
	.align	2
.LC17:
	.ascii	"0\000"
	.align	2
.LC18:
	.ascii	"../../../libs/squirrel/squirrel/sqobject.cpp\000"
	.section	.text._Z14TranslateIndexRK11SQObjectPtr,"ax",%progbits
	.align	2
	.global	_Z14TranslateIndexRK11SQObjectPtr
	.thumb
	.thumb_func
	.type	_Z14TranslateIndexRK11SQObjectPtr, %function
_Z14TranslateIndexRK11SQObjectPtr:
	.fnstart
.LFB318:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r2, r3
	movs	r3, #1
	movt	r3, 256
	cmp	r2, r3
	beq	.L380
	movs	r3, #2
	movt	r3, 1280
	cmp	r2, r3
	beq	.L381
	b	.L383
.L380:
	movs	r3, #0
	b	.L382
.L381:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	b	.L382
.L383:
	ldr	r3, .L384
.LPIC33:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L384+4
.LPIC34:
	add	r3, pc
	mov	r1, r3
	movs	r2, #80
	ldr	r3, .L384+8
.LPIC35:
	add	r3, pc
	bl	__assert_fail(PLT)
.L382:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L385:
	.align	2
.L384:
	.word	.LC17-(.LPIC33+4)
	.word	.LC18-(.LPIC34+4)
	.word	_ZZ14TranslateIndexRK11SQObjectPtrE19__PRETTY_FUNCTION__-(.LPIC35+4)
	.cantunwind
	.fnend
	.size	_Z14TranslateIndexRK11SQObjectPtr, .-_Z14TranslateIndexRK11SQObjectPtr
	.section	.text._ZN9SQWeakRefC2Ev,"axG",%progbits,_ZN9SQWeakRefC5Ev,comdat
	.align	2
	.weak	_ZN9SQWeakRefC2Ev
	.thumb
	.thumb_func
	.type	_ZN9SQWeakRefC2Ev, %function
_ZN9SQWeakRefC2Ev:
	.fnstart
.LFB321:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r4, .L389
.LPIC36:
	add	r4, pc
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN12SQRefCountedC2Ev(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, .L389+4
	ldr	r2, [r4, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L390:
	.align	2
.L389:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC36+4)
	.word	_ZTV9SQWeakRef(GOT)
	.cantunwind
	.fnend
	.size	_ZN9SQWeakRefC2Ev, .-_ZN9SQWeakRefC2Ev
	.weak	_ZN9SQWeakRefC1Ev
	.thumb_set _ZN9SQWeakRefC1Ev,_ZN9SQWeakRefC2Ev
	.section	.text._ZN12SQRefCounted10GetWeakRefE15tagSQObjectType,"ax",%progbits
	.align	2
	.global	_ZN12SQRefCounted10GetWeakRefE15tagSQObjectType
	.thumb
	.thumb_func
	.type	_ZN12SQRefCounted10GetWeakRefE15tagSQObjectType, %function
_ZN12SQRefCounted10GetWeakRefE15tagSQObjectType:
	.fnstart
.LFB319:
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
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L392
	movs	r0, #20
	bl	_Z12sq_vm_mallocj(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	movs	r0, #20
	mov	r1, r3
	bl	_ZnwjPv(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L394
	mov	r0, r3
	bl	_ZN9SQWeakRefC1Ev(PLT)
.L394:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldr	r2, [r7]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #4]
	str	r2, [r3, #16]
.L392:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN12SQRefCounted10GetWeakRefE15tagSQObjectType, .-_ZN12SQRefCounted10GetWeakRefE15tagSQObjectType
	.section	.text._ZN12SQRefCountedD2Ev,"ax",%progbits
	.align	2
	.global	_ZN12SQRefCountedD2Ev
	.thumb
	.thumb_func
	.type	_ZN12SQRefCountedD2Ev, %function
_ZN12SQRefCountedD2Ev:
	.fnstart
.LFB324:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r1, .L400
.LPIC37:
	add	r1, pc
	ldr	r3, [r7, #4]
	ldr	r2, .L400+4
	ldr	r2, [r1, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L397
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	movs	r3, #1
	movt	r3, 256
	str	r3, [r2, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	movs	r2, #0
	str	r2, [r3, #16]
.L397:
	movs	r3, #0
	cmp	r3, #0
	beq	.L398
	ldr	r0, [r7, #4]
	bl	_ZdlPv(PLT)
.L398:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L401:
	.align	2
.L400:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC37+4)
	.word	_ZTV12SQRefCounted(GOT)
	.cantunwind
	.fnend
	.size	_ZN12SQRefCountedD2Ev, .-_ZN12SQRefCountedD2Ev
	.global	_ZN12SQRefCountedD1Ev
	.thumb_set _ZN12SQRefCountedD1Ev,_ZN12SQRefCountedD2Ev
	.section	.text._ZN12SQRefCountedD0Ev,"ax",%progbits
	.align	2
	.global	_ZN12SQRefCountedD0Ev
	.thumb
	.thumb_func
	.type	_ZN12SQRefCountedD0Ev, %function
_ZN12SQRefCountedD0Ev:
	.fnstart
.LFB326:
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
	bl	_ZN12SQRefCountedD1Ev(PLT)
	ldr	r0, [r7, #4]
	bl	_ZdlPv(PLT)
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN12SQRefCountedD0Ev, .-_ZN12SQRefCountedD0Ev
	.section	.text._ZN9SQWeakRef7ReleaseEv,"ax",%progbits
	.align	2
	.global	_ZN9SQWeakRef7ReleaseEv
	.thumb
	.thumb_func
	.type	_ZN9SQWeakRef7ReleaseEv, %function
_ZN9SQWeakRef7ReleaseEv:
	.fnstart
.LFB327:
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
	ldr	r3, [r3, #12]
	and	r3, r3, #134217728
	cmp	r3, #0
	beq	.L406
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	movs	r2, #0
	str	r2, [r3, #8]
.L406:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r0, [r7, #4]
	blx	r3
	ldr	r0, [r7, #4]
	movs	r1, #20
	bl	_Z10sq_vm_freePvj(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN9SQWeakRef7ReleaseEv, .-_ZN9SQWeakRef7ReleaseEv
	.section	.text._ZN11SQDelegable13GetMetaMethodEP4SQVM12SQMetaMethodR11SQObjectPtr,"ax",%progbits
	.align	2
	.global	_ZN11SQDelegable13GetMetaMethodEP4SQVM12SQMetaMethodR11SQObjectPtr
	.thumb
	.thumb_func
	.type	_ZN11SQDelegable13GetMetaMethodEP4SQVM12SQMetaMethodR11SQObjectPtr, %function
_ZN11SQDelegable13GetMetaMethodEP4SQVM12SQMetaMethodR11SQObjectPtr:
	.fnstart
.LFB328:
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
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L408
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #24]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #140]
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	_ZNK8sqvectorI11SQObjectPtrEixEj(PLT)
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	ldr	r2, [r7]
	bl	_ZN7SQTable3GetERK11SQObjectPtrRS0_(PLT)
	mov	r3, r0
	b	.L409
.L408:
	movs	r3, #0
.L409:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZN11SQDelegable13GetMetaMethodEP4SQVM12SQMetaMethodR11SQObjectPtr, .-_ZN11SQDelegable13GetMetaMethodEP4SQVM12SQMetaMethodR11SQObjectPtr
	.section	.text._ZN11SQDelegable11SetDelegateEP7SQTable,"ax",%progbits
	.align	2
	.global	_ZN11SQDelegable11SetDelegateEP7SQTable
	.thumb
	.thumb_func
	.type	_ZN11SQDelegable11SetDelegateEP7SQTable, %function
_ZN11SQDelegable11SetDelegateEP7SQTable:
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
	str	r3, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bne	.L411
	movs	r3, #0
	b	.L412
.L411:
	b	.L413
.L415:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bne	.L414
	movs	r3, #0
	b	.L412
.L414:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	str	r3, [r7, #12]
.L413:
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L415
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L416
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	adds	r2, r3, #1
	ldr	r3, [r7]
	str	r2, [r3, #4]
.L416:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L417
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L418
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #24]
	mov	r0, r2
	blx	r3
.L418:
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #24]
.L417:
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #24]
	movs	r3, #1
.L412:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQDelegable11SetDelegateEP7SQTable, .-_ZN11SQDelegable11SetDelegateEP7SQTable
	.section	.text._ZN4SQVM8CallInfoaSERKS0_,"axG",%progbits,_ZN4SQVM8CallInfoaSERKS0_,comdat
	.align	2
	.weak	_ZN4SQVM8CallInfoaSERKS0_
	.thumb
	.thumb_func
	.type	_ZN4SQVM8CallInfoaSERKS0_, %function
_ZN4SQVM8CallInfoaSERKS0_:
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
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	add	r2, r3, #8
	ldr	r3, [r7]
	adds	r3, r3, #8
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	ldr	r3, [r7]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #4]
	str	r2, [r3, #16]
	ldr	r3, [r7]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #4]
	str	r2, [r3, #20]
	ldr	r3, [r7]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #4]
	str	r2, [r3, #28]
	ldr	r3, [r7]
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #4]
	str	r2, [r3, #32]
	ldr	r3, [r7]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #4]
	str	r2, [r3, #36]
	ldr	r3, [r7]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #4]
	str	r2, [r3, #40]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN4SQVM8CallInfoaSERKS0_, .-_ZN4SQVM8CallInfoaSERKS0_
	.section	.rodata
	.align	2
.LC19:
	.ascii	"internal vm error, yielding dead generator\000"
	.align	2
.LC20:
	.ascii	"internal vm error, yielding a dead generator\000"
	.section	.text._ZN11SQGenerator5YieldEP4SQVMi,"ax",%progbits
	.align	2
	.global	_ZN11SQGenerator5YieldEP4SQVMi
	.thumb
	.thumb_func
	.type	_ZN11SQGenerator5YieldEP4SQVMi, %function
_ZN11SQGenerator5YieldEP4SQVMi:
	.fnstart
.LFB330:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #64
	sub	sp, sp, #64
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #100]
	cmp	r3, #1
	bne	.L422
	ldr	r0, [r7, #8]
	ldr	r3, .L443
.LPIC38:
	add	r3, pc
	mov	r1, r3
.LEHB45:
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
	movs	r3, #0
	b	.L440
.L422:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #100]
	cmp	r3, #2
	bne	.L424
	ldr	r0, [r7, #8]
	ldr	r3, .L443+4
.LPIC39:
	add	r3, pc
	mov	r1, r3
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
.LEHE45:
	movs	r3, #0
	b	.L440
.L424:
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #40]
	subs	r3, r2, r3
	str	r3, [r7, #48]
	ldr	r3, [r7, #12]
	add	r5, r3, #32
	ldr	r4, [r7, #48]
	add	r3, r7, #24
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	add	r3, r7, #24
	mov	r0, r5
	mov	r1, r4
	mov	r2, r3
.LEHB46:
	bl	_ZN8sqvectorI11SQObjectPtrE6resizeEjRKS0_(PLT)
.LEHE46:
	add	r3, r7, #24
	mov	r0, r3
.LEHB47:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	ldr	r3, [r7, #8]
	add	r2, r3, #24
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #40]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI11SQObjectPtrEixEj(PLT)
.LEHE47:
	mov	r2, r0
	add	r3, r7, #16
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #12]
	ldr	r5, [r3, #32]
	ldr	r3, [r7, #16]
	and	r3, r3, #134217728
	movs	r4, #0
	cmp	r3, #0
	beq	.L425
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	mov	r0, r2
	mov	r1, r3
.LEHB48:
	bl	_ZN12SQRefCounted10GetWeakRefE15tagSQObjectType(PLT)
	mov	r3, r0
	add	r2, r7, #40
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP9SQWeakRef(PLT)
	movs	r4, #1
	add	r3, r7, #32
	add	r2, r7, #40
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	b	.L426
.L425:
	add	r3, r7, #32
	add	r2, r7, #16
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
.L426:
	add	r3, r7, #32
	mov	r0, r5
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERK11tagSQObject(PLT)
.LEHE48:
	cmp	r4, #0
	beq	.L441
	nop
	add	r3, r7, #40
	mov	r0, r3
.LEHB49:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L427
.L441:
	nop
.L427:
	movs	r3, #1
	str	r3, [r7, #60]
	b	.L428
.L429:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #60]
	lsls	r3, r3, #3
	adds	r4, r2, r3
	ldr	r3, [r7, #8]
	add	r2, r3, #24
	ldr	r3, [r7, #8]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #60]
	add	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI11SQObjectPtrEixEj(PLT)
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
.L428:
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	blt	.L429
	movs	r3, #0
	str	r3, [r7, #56]
	b	.L430
.L431:
	ldr	r3, [r7, #8]
	add	r2, r3, #24
	ldr	r3, [r7, #8]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #56]
	add	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI11SQObjectPtrEixEj(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	str	r3, [r7, #56]
.L430:
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #48]
	cmp	r2, r3
	blt	.L431
	ldr	r3, [r7, #12]
	add	r2, r3, #44
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #132]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN4SQVM8CallInfoaSERKS0_(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #60]
	movs	r3, #0
	str	r3, [r7, #52]
	b	.L432
.L433:
	ldr	r3, [r7, #12]
	add	r4, r3, #88
	ldr	r3, [r7, #8]
	adds	r3, r3, #120
	mov	r0, r3
	bl	_ZNK8sqvectorI15SQExceptionTrapE3topEv(PLT)
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	bl	_ZN8sqvectorI15SQExceptionTrapE9push_backERKS0_(PLT)
	ldr	r3, [r7, #8]
	adds	r3, r3, #120
	mov	r0, r3
	bl	_ZN8sqvectorI15SQExceptionTrapE8pop_backEv(PLT)
.LEHE49:
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	str	r3, [r7, #52]
.L432:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #64]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bgt	.L433
	ldr	r3, [r7, #12]
	movs	r2, #1
	str	r2, [r3, #100]
	movs	r3, #1
	b	.L440
.L438:
	add	r3, r7, #24
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB50:
	bl	__cxa_end_cleanup(PLT)
.LEHE50:
.L439:
	cmp	r4, #0
	beq	.L442
	nop
	add	r3, r7, #40
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L437
.L442:
	nop
.L437:
.LEHB51:
	bl	__cxa_end_cleanup(PLT)
.LEHE51:
.L440:
	mov	r0, r3
	adds	r7, r7, #64
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L444:
	.align	2
.L443:
	.word	.LC19-(.LPIC38+4)
	.word	.LC20-(.LPIC39+4)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA330:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE330-.LLSDACSB330
.LLSDACSB330:
	.uleb128 .LEHB45-.LFB330
	.uleb128 .LEHE45-.LEHB45
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB46-.LFB330
	.uleb128 .LEHE46-.LEHB46
	.uleb128 .L438-.LFB330
	.uleb128 0
	.uleb128 .LEHB47-.LFB330
	.uleb128 .LEHE47-.LEHB47
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB48-.LFB330
	.uleb128 .LEHE48-.LEHB48
	.uleb128 .L439-.LFB330
	.uleb128 0
	.uleb128 .LEHB49-.LFB330
	.uleb128 .LEHE49-.LEHB49
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB50-.LFB330
	.uleb128 .LEHE50-.LEHB50
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB51-.LFB330
	.uleb128 .LEHE51-.LEHB51
	.uleb128 0
	.uleb128 0
.LLSDACSE330:
	.section	.text._ZN11SQGenerator5YieldEP4SQVMi
	.fnend
	.size	_ZN11SQGenerator5YieldEP4SQVMi, .-_ZN11SQGenerator5YieldEP4SQVMi
	.section	.rodata
	.align	2
.LC21:
	.ascii	"resuming dead generator\000"
	.align	2
.LC22:
	.ascii	"resuming active generator\000"
	.align	2
.LC23:
	.ascii	"target>=0 && target<=255\000"
	.section	.text._ZN11SQGenerator6ResumeEP4SQVMR11SQObjectPtr,"ax",%progbits
	.align	2
	.global	_ZN11SQGenerator6ResumeEP4SQVMR11SQObjectPtr
	.thumb
	.thumb_func
	.type	_ZN11SQGenerator6ResumeEP4SQVMR11SQObjectPtr, %function
_ZN11SQGenerator6ResumeEP4SQVMR11SQObjectPtr:
	.fnstart
.LFB332:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #44
	sub	sp, sp, #44
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #100]
	cmp	r3, #2
	bne	.L446
	ldr	r0, [r7, #8]
	ldr	r3, .L460
.LPIC40:
	add	r3, pc
	mov	r1, r3
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
	movs	r3, #0
	b	.L459
.L446:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #100]
	cmp	r3, #0
	bne	.L448
	ldr	r0, [r7, #8]
	ldr	r3, .L460+4
.LPIC41:
	add	r3, pc
	mov	r1, r3
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
	movs	r3, #0
	b	.L459
.L448:
	ldr	r3, [r7, #12]
	adds	r3, r3, #32
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4sizeEv(PLT)
	mov	r3, r0
	str	r3, [r7, #28]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #8]
	ldr	r1, [r3, #24]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #40]
	lsls	r3, r3, #3
	add	r3, r3, r1
	subs	r3, r2, r3
	asrs	r3, r3, #3
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	blt	.L449
	ldr	r3, [r7, #24]
	cmp	r3, #255
	ble	.L450
.L449:
	ldr	r3, .L460+8
.LPIC42:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L460+12
.LPIC43:
	add	r3, pc
	mov	r1, r3
	movs	r2, #164
	ldr	r3, .L460+16
.LPIC44:
	add	r3, pc
	bl	__assert_fail(PLT)
.L450:
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #8]
	ldr	r1, [r3, #36]
	ldr	r3, [r7, #28]
	add	r3, r3, r1
	ldr	r0, [r7, #8]
	mov	r1, r2
	mov	r2, r3
	movs	r3, #0
	bl	_ZN4SQVM10EnterFrameEiib(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L451
	movs	r3, #0
	b	.L459
.L451:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #132]
	ldr	r2, [r7, #12]
	str	r2, [r3, #16]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #132]
	ldr	r2, [r7, #24]
	str	r2, [r3, #32]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #132]
	add	r2, r3, #8
	ldr	r3, [r7, #12]
	adds	r3, r3, #52
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #132]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #44]
	str	r2, [r3]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #132]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #48]
	str	r2, [r3, #4]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #132]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #80]
	str	r2, [r3, #36]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #132]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #64]
	str	r2, [r3, #20]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #132]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #84]
	str	r2, [r3, #40]
	movs	r3, #0
	str	r3, [r7, #36]
	b	.L452
.L453:
	ldr	r3, [r7, #8]
	add	r4, r3, #120
	ldr	r3, [r7, #12]
	adds	r3, r3, #88
	mov	r0, r3
	bl	_ZNK8sqvectorI15SQExceptionTrapE3topEv(PLT)
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	bl	_ZN8sqvectorI15SQExceptionTrapE9push_backERKS0_(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #88
	mov	r0, r3
	bl	_ZN8sqvectorI15SQExceptionTrapE8pop_backEv(PLT)
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L452:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #64]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bgt	.L453
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #32]
	add	r3, r7, #16
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #8]
	add	r2, r3, #24
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #40]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI11SQObjectPtrEixEj(PLT)
	mov	r2, r0
	ldr	r1, [r7, #16]
	movs	r3, #0
	movt	r3, 2049
	cmp	r1, r3
	bne	.L454
	ldr	r3, [r7, #20]
	adds	r3, r3, #12
	b	.L455
.L454:
	add	r3, r7, #16
.L455:
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERK11tagSQObject(PLT)
	movs	r3, #1
	str	r3, [r7, #32]
	b	.L456
.L457:
	ldr	r3, [r7, #8]
	add	r2, r3, #24
	ldr	r3, [r7, #8]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #32]
	add	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI11SQObjectPtrEixEj(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #32]
	ldr	r3, [r7, #32]
	lsls	r3, r3, #3
	add	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #32]
	lsls	r3, r3, #3
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	str	r3, [r7, #32]
.L456:
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	blt	.L457
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #100]
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #72]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L458
	ldr	r0, [r7, #8]
	movs	r1, #99
	movs	r2, #0
	bl	_ZN4SQVM13CallDebugHookEii(PLT)
.L458:
	movs	r3, #1
.L459:
	mov	r0, r3
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L461:
	.align	2
.L460:
	.word	.LC21-(.LPIC40+4)
	.word	.LC22-(.LPIC41+4)
	.word	.LC23-(.LPIC42+4)
	.word	.LC18-(.LPIC43+4)
	.word	_ZZN11SQGenerator6ResumeEP4SQVMR11SQObjectPtrE19__PRETTY_FUNCTION__-(.LPIC44+4)
	.fnend
	.size	_ZN11SQGenerator6ResumeEP4SQVMR11SQObjectPtr, .-_ZN11SQGenerator6ResumeEP4SQVMR11SQObjectPtr
	.section	.text._ZN7SQArray6ExtendEPKS_,"ax",%progbits
	.align	2
	.global	_ZN7SQArray6ExtendEPKS_
	.thumb
	.thumb_func
	.type	_ZN7SQArray6ExtendEPKS_, %function
_ZN7SQArray6ExtendEPKS_:
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
	str	r1, [r7]
	ldr	r0, [r7]
	bl	_ZNK7SQArray4SizeEv(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L462
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L464
.L465:
	ldr	r3, [r7]
	add	r2, r3, #24
	ldr	r3, [r7, #12]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI11SQObjectPtrEixEj(PLT)
	mov	r3, r0
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN7SQArray6AppendERK11tagSQObject(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L464:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	blt	.L465
.L462:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN7SQArray6ExtendEPKS_, .-_ZN7SQArray6ExtendEPKS_
	.section	.text._ZN15SQFunctionProto8GetLocalEP4SQVMjjj,"ax",%progbits
	.align	2
	.global	_ZN15SQFunctionProto8GetLocalEP4SQVMjjj
	.thumb
	.thumb_func
	.type	_ZN15SQFunctionProto8GetLocalEP4SQVMjjj, %function
_ZN15SQFunctionProto8GetLocalEP4SQVMjjj:
	.fnstart
.LFB334:
	@ args = 4, pretend = 0, frame = 32
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
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L467
	movs	r3, #0
	str	r3, [r7, #24]
	b	.L468
.L472:
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #56]
	ldr	r2, [r7, #24]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bhi	.L469
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #56]
	ldr	r2, [r7, #24]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bcc	.L469
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L470
	ldr	r3, [r7, #8]
	add	r1, r3, #24
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #56]
	ldr	r2, [r7, #24]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	mov	r0, r1
	mov	r1, r3
	bl	_ZNK8sqvectorI11SQObjectPtrEixEj(PLT)
	mov	r3, r0
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #56]
	ldr	r2, [r7, #24]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r3, [r3, #4]
	adds	r3, r3, #28
	str	r3, [r7, #28]
	b	.L471
.L470:
	ldr	r3, [r7]
	subs	r3, r3, #1
	str	r3, [r7]
.L469:
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
.L468:
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcc	.L472
.L471:
.L467:
	ldr	r3, [r7, #28]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN15SQFunctionProto8GetLocalEP4SQVMjjj, .-_ZN15SQFunctionProto8GetLocalEP4SQVMjjj
	.section	.text._ZN15SQFunctionProto7GetLineEP13SQInstruction,"ax",%progbits
	.align	2
	.global	_ZN15SQFunctionProto7GetLineEP13SQInstruction
	.thumb
	.thumb_func
	.type	_ZN15SQFunctionProto7GetLineEP13SQInstruction, %function
_ZN15SQFunctionProto7GetLineEP13SQInstruction:
	.fnstart
.LFB335:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	adds	r3, r3, #112
	subs	r3, r2, r3
	asrs	r3, r3, #3
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	subs	r3, r3, #1
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L475
.L480:
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #28]
	subs	r3, r2, r3
	asrs	r2, r3, #1
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #64]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	str	r3, [r7, #8]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	ble	.L476
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	str	r3, [r7, #24]
	b	.L475
.L476:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bge	.L477
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	subs	r2, r3, #1
	ldr	r3, [r7, #20]
	cmp	r2, r3
	ble	.L478
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #64]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	blt	.L478
	b	.L479
.L478:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #28]
	b	.L475
.L477:
	b	.L479
.L475:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	ble	.L480
.L479:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #64]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN15SQFunctionProto7GetLineEP13SQInstruction, .-_ZN15SQFunctionProto7GetLineEP13SQInstruction
	.section	.text._ZN9SQClosureD2Ev,"ax",%progbits
	.align	2
	.global	_ZN9SQClosureD2Ev
	.thumb
	.thumb_func
	.type	_ZN9SQClosureD2Ev, %function
_ZN9SQClosureD2Ev:
	.fnstart
.LFB337:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r1, .L494
.LPIC45:
	add	r1, pc
	ldr	r3, [r7, #4]
	ldr	r2, .L494+4
	ldr	r2, [r1, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L483
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L484
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #24]
	mov	r0, r2
.LEHB52:
	blx	r3
.L484:
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #24]
.L483:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	cmp	r3, #0
	beq	.L485
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L486
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #28]
	mov	r0, r2
	blx	r3
.L486:
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #28]
.L485:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	blt	.L487
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	add	r2, r3, #68
	ldr	r3, [r7, #4]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN13SQCollectable15RemoveFromChainEPPS_S0_(PLT)
.LEHE52:
.L487:
	ldr	r3, [r7, #4]
	mov	r0, r3
.LEHB53:
	bl	_ZN13SQCollectableD2Ev(PLT)
.LEHE53:
	movs	r3, #0
	cmp	r3, #0
	beq	.L489
	ldr	r0, [r7, #4]
	bl	_ZdlPv(PLT)
.L489:
	ldr	r3, [r7, #4]
	b	.L493
.L492:
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN13SQCollectableD2Ev(PLT)
.LEHB54:
	bl	__cxa_end_cleanup(PLT)
.LEHE54:
.L493:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L495:
	.align	2
.L494:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC45+4)
	.word	_ZTV9SQClosure(GOT)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA337:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE337-.LLSDACSB337
.LLSDACSB337:
	.uleb128 .LEHB52-.LFB337
	.uleb128 .LEHE52-.LEHB52
	.uleb128 .L492-.LFB337
	.uleb128 0
	.uleb128 .LEHB53-.LFB337
	.uleb128 .LEHE53-.LEHB53
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB54-.LFB337
	.uleb128 .LEHE54-.LEHB54
	.uleb128 0
	.uleb128 0
.LLSDACSE337:
	.section	.text._ZN9SQClosureD2Ev
	.fnend
	.size	_ZN9SQClosureD2Ev, .-_ZN9SQClosureD2Ev
	.global	_ZN9SQClosureD1Ev
	.thumb_set _ZN9SQClosureD1Ev,_ZN9SQClosureD2Ev
	.section	.text._ZN9SQClosureD0Ev,"ax",%progbits
	.align	2
	.global	_ZN9SQClosureD0Ev
	.thumb
	.thumb_func
	.type	_ZN9SQClosureD0Ev, %function
_ZN9SQClosureD0Ev:
	.fnstart
.LFB339:
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
	bl	_ZN9SQClosureD1Ev(PLT)
	ldr	r0, [r7, #4]
	bl	_ZdlPv(PLT)
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN9SQClosureD0Ev, .-_ZN9SQClosureD0Ev
	.section	.rodata
	.align	2
.LC24:
	.ascii	"io error (write function failure)\000"
	.section	.text._Z9SafeWriteP4SQVMPFiPvS1_iES1_S1_i,"ax",%progbits
	.align	2
	.global	_Z9SafeWriteP4SQVMPFiPvS1_iES1_S1_i
	.thumb
	.thumb_func
	.type	_Z9SafeWriteP4SQVMPFiPvS1_iES1_S1_i, %function
_Z9SafeWriteP4SQVMPFiPvS1_iES1_S1_i:
	.fnstart
.LFB340:
	@ args = 4, pretend = 0, frame = 16
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
	ldr	r3, [r7, #8]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	ldr	r2, [r7, #24]
	blx	r3
	mov	r2, r0
	ldr	r3, [r7, #24]
	cmp	r2, r3
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L500
	ldr	r0, [r7, #12]
	ldr	r3, .L502
.LPIC46:
	add	r3, pc
	mov	r1, r3
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
	movs	r3, #0
	b	.L501
.L500:
	movs	r3, #1
.L501:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L503:
	.align	2
.L502:
	.word	.LC24-(.LPIC46+4)
	.fnend
	.size	_Z9SafeWriteP4SQVMPFiPvS1_iES1_S1_i, .-_Z9SafeWriteP4SQVMPFiPvS1_iES1_S1_i
	.section	.rodata
	.align	2
.LC25:
	.ascii	"io error, read function failure, the origin stream "
	.ascii	"could be corrupted/trucated\000"
	.section	.text._Z8SafeReadP4SQVMPFiPvS1_iES1_S1_i,"ax",%progbits
	.align	2
	.global	_Z8SafeReadP4SQVMPFiPvS1_iES1_S1_i
	.thumb
	.thumb_func
	.type	_Z8SafeReadP4SQVMPFiPvS1_iES1_S1_i, %function
_Z8SafeReadP4SQVMPFiPvS1_iES1_S1_i:
	.fnstart
.LFB341:
	@ args = 4, pretend = 0, frame = 16
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
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L505
	ldr	r3, [r7, #8]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	ldr	r2, [r7, #24]
	blx	r3
	mov	r2, r0
	ldr	r3, [r7, #24]
	cmp	r2, r3
	beq	.L505
	movs	r3, #1
	b	.L506
.L505:
	movs	r3, #0
.L506:
	cmp	r3, #0
	beq	.L507
	ldr	r0, [r7, #12]
	ldr	r3, .L509
.LPIC47:
	add	r3, pc
	mov	r1, r3
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
	movs	r3, #0
	b	.L508
.L507:
	movs	r3, #1
.L508:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L510:
	.align	2
.L509:
	.word	.LC25-(.LPIC47+4)
	.fnend
	.size	_Z8SafeReadP4SQVMPFiPvS1_iES1_S1_i, .-_Z8SafeReadP4SQVMPFiPvS1_iES1_S1_i
	.section	.text._Z8WriteTagP4SQVMPFiPvS1_iES1_j,"ax",%progbits
	.align	2
	.global	_Z8WriteTagP4SQVMPFiPvS1_iES1_j
	.thumb
	.thumb_func
	.type	_Z8WriteTagP4SQVMPFiPvS1_iES1_j, %function
_Z8WriteTagP4SQVMPFiPvS1_iES1_j:
	.fnstart
.LFB342:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #24
	sub	sp, sp, #24
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	mov	r3, r7
	movs	r2, #4
	str	r2, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	_Z9SafeWriteP4SQVMPFiPvS1_iES1_S1_i(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_Z8WriteTagP4SQVMPFiPvS1_iES1_j, .-_Z8WriteTagP4SQVMPFiPvS1_iES1_j
	.section	.rodata
	.align	2
.LC26:
	.ascii	"invalid or corrupted closure stream\000"
	.section	.text._Z8CheckTagP4SQVMPFiPvS1_iES1_j,"ax",%progbits
	.align	2
	.global	_Z8CheckTagP4SQVMPFiPvS1_iES1_j
	.thumb
	.thumb_func
	.type	_Z8CheckTagP4SQVMPFiPvS1_iES1_j, %function
_Z8CheckTagP4SQVMPFiPvS1_iES1_j:
	.fnstart
.LFB343:
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
	str	r2, [r7, #4]
	str	r3, [r7]
	add	r3, r7, #20
	movs	r2, #4
	str	r2, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	_Z8SafeReadP4SQVMPFiPvS1_iES1_S1_i(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L514
	movs	r3, #0
	b	.L517
.L514:
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	cmp	r2, r3
	beq	.L516
	ldr	r0, [r7, #12]
	ldr	r3, .L518
.LPIC48:
	add	r3, pc
	mov	r1, r3
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
	movs	r3, #0
	b	.L517
.L516:
	movs	r3, #1
.L517:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L519:
	.align	2
.L518:
	.word	.LC26-(.LPIC48+4)
	.fnend
	.size	_Z8CheckTagP4SQVMPFiPvS1_iES1_j, .-_Z8CheckTagP4SQVMPFiPvS1_iES1_j
	.section	.rodata
	.align	2
.LC27:
	.ascii	"cannot serialize a %s\000"
	.section	.text._Z11WriteObjectP4SQVMPvPFiS1_S1_iER11SQObjectPtr,"ax",%progbits
	.align	2
	.global	_Z11WriteObjectP4SQVMPvPFiS1_S1_iER11SQObjectPtr
	.thumb
	.thumb_func
	.type	_Z11WriteObjectP4SQVMPvPFiS1_S1_iER11SQObjectPtr, %function
_Z11WriteObjectP4SQVMPvPFiS1_S1_iER11SQObjectPtr:
	.fnstart
.LFB344:
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
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	add	r3, r7, #20
	movs	r2, #4
	str	r2, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #8]
	bl	_Z9SafeWriteP4SQVMPFiPvS1_iES1_S1_i(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L521
	movs	r3, #0
	b	.L534
.L521:
	ldr	r3, [r7]
	ldr	r3, [r3]
	movs	r2, #2
	movt	r2, 1280
	cmp	r3, r2
	beq	.L524
	movs	r2, #2
	movt	r2, 1280
	cmp	r3, r2
	bgt	.L525
	movs	r2, #1
	movt	r2, 256
	cmp	r3, r2
	beq	.L535
	movs	r2, #8
	movt	r2, 256
	cmp	r3, r2
	beq	.L524
	b	.L523
.L525:
	movs	r2, #4
	movt	r2, 1280
	cmp	r3, r2
	beq	.L527
	movs	r2, #16
	movt	r2, 2048
	cmp	r3, r2
	bne	.L523
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	adds	r3, r3, #20
	movs	r2, #4
	str	r2, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #8]
	bl	_Z9SafeWriteP4SQVMPFiPvS1_iES1_S1_i(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L529
	movs	r3, #0
	b	.L534
.L529:
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	adds	r3, r3, #28
	ldr	r2, [r7]
	ldr	r2, [r2, #4]
	ldr	r2, [r2, #20]
	str	r2, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #8]
	bl	_Z9SafeWriteP4SQVMPFiPvS1_iES1_S1_i(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L530
	movs	r3, #0
	b	.L534
.L530:
	b	.L531
.L524:
	ldr	r3, [r7]
	adds	r3, r3, #4
	movs	r2, #4
	str	r2, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #8]
	bl	_Z9SafeWriteP4SQVMPFiPvS1_iES1_S1_i(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L532
	movs	r3, #0
	b	.L534
.L532:
	b	.L531
.L527:
	ldr	r3, [r7]
	adds	r3, r3, #4
	movs	r2, #4
	str	r2, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #8]
	bl	_Z9SafeWriteP4SQVMPFiPvS1_iES1_S1_i(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L533
	movs	r3, #0
	b	.L534
.L533:
	b	.L531
.L523:
	ldr	r0, [r7]
	bl	_Z11GetTypeNameRK11SQObjectPtr(PLT)
	mov	r3, r0
	ldr	r0, [r7, #12]
	ldr	r2, .L536
.LPIC49:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
	movs	r3, #0
	b	.L534
.L535:
	nop
.L531:
	movs	r3, #1
.L534:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L537:
	.align	2
.L536:
	.word	.LC27-(.LPIC49+4)
	.fnend
	.size	_Z11WriteObjectP4SQVMPvPFiS1_S1_iER11SQObjectPtr, .-_Z11WriteObjectP4SQVMPvPFiS1_S1_iER11SQObjectPtr
	.section	.text._Z10ReadObjectP4SQVMPvPFiS1_S1_iER11SQObjectPtr,"ax",%progbits
	.align	2
	.global	_Z10ReadObjectP4SQVMPvPFiS1_S1_iER11SQObjectPtr
	.thumb
	.thumb_func
	.type	_Z10ReadObjectP4SQVMPvPFiS1_S1_iER11SQObjectPtr, %function
_Z10ReadObjectP4SQVMPvPFiS1_S1_iER11SQObjectPtr:
	.fnstart
.LFB345:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #52
	sub	sp, sp, #52
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	add	r3, r7, #32
	movs	r2, #4
	str	r2, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #8]
	bl	_Z8SafeReadP4SQVMPFiPvS1_iES1_S1_i(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L539
	movs	r3, #0
	b	.L555
.L539:
	ldr	r3, [r7, #32]
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	movs	r2, #2
	movt	r2, 1280
	cmp	r3, r2
	beq	.L542
	movs	r2, #2
	movt	r2, 1280
	cmp	r3, r2
	bgt	.L543
	movs	r2, #1
	movt	r2, 256
	cmp	r3, r2
	beq	.L544
	movs	r2, #8
	movt	r2, 256
	cmp	r3, r2
	beq	.L545
	b	.L541
.L543:
	movs	r2, #4
	movt	r2, 1280
	cmp	r3, r2
	beq	.L546
	movs	r2, #16
	movt	r2, 2048
	cmp	r3, r2
	bne	.L541
	add	r3, r7, #28
	movs	r2, #4
	str	r2, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #8]
	bl	_Z8SafeReadP4SQVMPFiPvS1_iES1_S1_i(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L548
	movs	r3, #0
	b	.L555
.L548:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #140]
	ldr	r3, [r7, #28]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN13SQSharedState13GetScratchPadEi(PLT)
	mov	r3, r0
	ldr	r2, [r7, #28]
	str	r2, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #8]
	bl	_Z8SafeReadP4SQVMPFiPvS1_iES1_S1_i(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L550
	movs	r3, #0
	b	.L555
.L550:
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #140]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #140]
	mov	r0, r3
	mov	r1, #-1
	bl	_ZN13SQSharedState13GetScratchPadEi(PLT)
	mov	r2, r0
	ldr	r3, [r7, #28]
	mov	r0, r4
	mov	r1, r2
	mov	r2, r3
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
	mov	r3, r0
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEP8SQString(PLT)
	b	.L551
.L542:
	add	r3, r7, #24
	movs	r2, #4
	str	r2, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #8]
	bl	_Z8SafeReadP4SQVMPFiPvS1_iES1_S1_i(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L552
	movs	r3, #0
	b	.L555
.L552:
	ldr	r3, [r7, #24]
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEi(PLT)
	b	.L551
.L545:
	add	r3, r7, #20
	movs	r2, #4
	str	r2, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #8]
	bl	_Z8SafeReadP4SQVMPFiPvS1_iES1_S1_i(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L553
	movs	r3, #0
	b	.L555
.L553:
	ldr	r2, [r7]
	movs	r3, #8
	movt	r3, 256
	str	r3, [r2]
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	str	r2, [r3, #4]
	b	.L551
.L546:
	add	r3, r7, #16
	movs	r2, #4
	str	r2, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #8]
	bl	_Z8SafeReadP4SQVMPFiPvS1_iES1_S1_i(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L554
	movs	r3, #0
	b	.L555
.L554:
	flds	s15, [r7, #16]
	ldr	r0, [r7]
	fcpys	s0, s15
	bl	_ZN11SQObjectPtraSEf(PLT)
	b	.L551
.L544:
	ldr	r0, [r7]
	bl	_ZN11SQObjectPtr4NullEv(PLT)
	b	.L551
.L541:
	ldr	r0, [r7, #36]
	bl	_Z11IdType2Name15tagSQObjectType(PLT)
	mov	r3, r0
	ldr	r0, [r7, #12]
	ldr	r2, .L556
.LPIC50:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
	movs	r3, #0
	b	.L555
.L551:
	movs	r3, #1
.L555:
	mov	r0, r3
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L557:
	.align	2
.L556:
	.word	.LC27-(.LPIC50+4)
	.fnend
	.size	_Z10ReadObjectP4SQVMPvPFiS1_S1_iER11SQObjectPtr, .-_Z10ReadObjectP4SQVMPvPFiS1_S1_iER11SQObjectPtr
	.section	.text._ZN9SQClosure4SaveEP4SQVMPvPFiS2_S2_iE,"ax",%progbits
	.align	2
	.global	_ZN9SQClosure4SaveEP4SQVMPvPFiS2_S2_iE
	.thumb
	.thumb_func
	.type	_ZN9SQClosure4SaveEP4SQVMPvPFiS2_S2_iE, %function
_ZN9SQClosure4SaveEP4SQVMPvPFiS2_S2_iE:
	.fnstart
.LFB346:
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
	ldr	r0, [r7, #8]
	ldr	r1, [r7]
	ldr	r2, [r7, #4]
	movw	r3, #18770
	movt	r3, 21329
	bl	_Z8WriteTagP4SQVMPFiPvS1_iES1_j(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L559
	movs	r3, #0
	b	.L560
.L559:
	ldr	r0, [r7, #8]
	ldr	r1, [r7]
	ldr	r2, [r7, #4]
	movs	r3, #1
	bl	_Z8WriteTagP4SQVMPFiPvS1_iES1_j(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L561
	movs	r3, #0
	b	.L560
.L561:
	ldr	r0, [r7, #8]
	ldr	r1, [r7]
	ldr	r2, [r7, #4]
	movs	r3, #4
	bl	_Z8WriteTagP4SQVMPFiPvS1_iES1_j(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L562
	movs	r3, #0
	b	.L560
.L562:
	ldr	r0, [r7, #8]
	ldr	r1, [r7]
	ldr	r2, [r7, #4]
	movs	r3, #4
	bl	_Z8WriteTagP4SQVMPFiPvS1_iES1_j(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L563
	movs	r3, #0
	b	.L560
.L563:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	_ZN15SQFunctionProto4SaveEP4SQVMPvPFiS2_S2_iE(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L564
	movs	r3, #0
	b	.L560
.L564:
	ldr	r0, [r7, #8]
	ldr	r1, [r7]
	ldr	r2, [r7, #4]
	movw	r3, #18764
	movt	r3, 21569
	bl	_Z8WriteTagP4SQVMPFiPvS1_iES1_j(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L565
	movs	r3, #0
	b	.L560
.L565:
	movs	r3, #1
.L560:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN9SQClosure4SaveEP4SQVMPvPFiS2_S2_iE, .-_ZN9SQClosure4SaveEP4SQVMPvPFiS2_S2_iE
	.section	.text._ZN9SQClosure4LoadEP4SQVMPvPFiS2_S2_iER11SQObjectPtr,"ax",%progbits
	.align	2
	.global	_ZN9SQClosure4LoadEP4SQVMPvPFiS2_S2_iER11SQObjectPtr
	.thumb
	.thumb_func
	.type	_ZN9SQClosure4LoadEP4SQVMPvPFiS2_S2_iER11SQObjectPtr, %function
_ZN9SQClosure4LoadEP4SQVMPvPFiS2_S2_iER11SQObjectPtr:
	.fnstart
.LFB347:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #28
	sub	sp, sp, #28
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #8]
	movw	r3, #18770
	movt	r3, 21329
.LEHB55:
	bl	_Z8CheckTagP4SQVMPFiPvS1_iES1_j(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L567
	movs	r4, #0
	b	.L575
.L567:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #8]
	movs	r3, #1
	bl	_Z8CheckTagP4SQVMPFiPvS1_iES1_j(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L569
	movs	r4, #0
	b	.L575
.L569:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #8]
	movs	r3, #4
	bl	_Z8CheckTagP4SQVMPFiPvS1_iES1_j(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L570
	movs	r4, #0
	b	.L575
.L570:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #8]
	movs	r3, #4
	bl	_Z8CheckTagP4SQVMPFiPvS1_iES1_j(PLT)
.LEHE55:
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L571
	movs	r4, #0
	b	.L575
.L571:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	add	r3, r7, #16
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
.LEHB56:
	bl	_ZN15SQFunctionProto4LoadEP4SQVMPvPFiS2_S2_iER11SQObjectPtr(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L572
	movs	r4, #0
	b	.L573
.L572:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #8]
	movw	r3, #18764
	movt	r3, 21569
	bl	_Z8CheckTagP4SQVMPFiPvS1_iES1_j(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L574
	movs	r4, #0
	b	.L573
.L574:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #140]
	ldr	r3, [r7, #20]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN9SQClosure6CreateEP13SQSharedStateP15SQFunctionProto(PLT)
	mov	r3, r0
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEP9SQClosure(PLT)
.LEHE56:
	movs	r4, #1
.L573:
	add	r3, r7, #16
	mov	r0, r3
.LEHB57:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE57:
.L575:
	mov	r3, r4
	b	.L578
.L577:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB58:
	bl	__cxa_end_cleanup(PLT)
.LEHE58:
.L578:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA347:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE347-.LLSDACSB347
.LLSDACSB347:
	.uleb128 .LEHB55-.LFB347
	.uleb128 .LEHE55-.LEHB55
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB56-.LFB347
	.uleb128 .LEHE56-.LEHB56
	.uleb128 .L577-.LFB347
	.uleb128 0
	.uleb128 .LEHB57-.LFB347
	.uleb128 .LEHE57-.LEHB57
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB58-.LFB347
	.uleb128 .LEHE58-.LEHB58
	.uleb128 0
	.uleb128 0
.LLSDACSE347:
	.section	.text._ZN9SQClosure4LoadEP4SQVMPvPFiS2_S2_iER11SQObjectPtr
	.fnend
	.size	_ZN9SQClosure4LoadEP4SQVMPvPFiS2_S2_iER11SQObjectPtr, .-_ZN9SQClosure4LoadEP4SQVMPvPFiS2_S2_iER11SQObjectPtr
	.section	.text._ZN15SQFunctionProtoC2EP13SQSharedState,"ax",%progbits
	.align	2
	.global	_ZN15SQFunctionProtoC2EP13SQSharedState
	.thumb
	.thumb_func
	.type	_ZN15SQFunctionProtoC2EP13SQSharedState, %function
_ZN15SQFunctionProtoC2EP13SQSharedState:
	.fnstart
.LFB349:
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
	ldr	r4, .L587
.LPIC51:
	add	r4, pc
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN13SQCollectableC2Ev(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, .L587+4
	ldr	r2, [r4, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #32
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #112
	movs	r4, #0
	mov	r5, r3
	b	.L580
.L581:
	mov	r0, r5
	bl	_ZN13SQInstructionC1Ev(PLT)
	adds	r5, r5, #8
	subs	r4, r4, #1
.L580:
	cmp	r4, #-1
	bne	.L581
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #40]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #44]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	add	r2, r3, #68
	ldr	r3, [r7, #4]
	mov	r0, r2
	mov	r1, r3
.LEHB59:
	bl	_ZN13SQCollectable10AddToChainEPPS_S0_(PLT)
.LEHE59:
	ldr	r3, [r7, #4]
	b	.L586
.L585:
	ldr	r3, [r7, #4]
	adds	r3, r3, #32
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN13SQCollectableD2Ev(PLT)
.LEHB60:
	bl	__cxa_end_cleanup(PLT)
.LEHE60:
.L586:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L588:
	.align	2
.L587:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC51+4)
	.word	_ZTV15SQFunctionProto(GOT)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA349:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE349-.LLSDACSB349
.LLSDACSB349:
	.uleb128 .LEHB59-.LFB349
	.uleb128 .LEHE59-.LEHB59
	.uleb128 .L585-.LFB349
	.uleb128 0
	.uleb128 .LEHB60-.LFB349
	.uleb128 .LEHE60-.LEHB60
	.uleb128 0
	.uleb128 0
.LLSDACSE349:
	.section	.text._ZN15SQFunctionProtoC2EP13SQSharedState
	.fnend
	.size	_ZN15SQFunctionProtoC2EP13SQSharedState, .-_ZN15SQFunctionProtoC2EP13SQSharedState
	.global	_ZN15SQFunctionProtoC1EP13SQSharedState
	.thumb_set _ZN15SQFunctionProtoC1EP13SQSharedState,_ZN15SQFunctionProtoC2EP13SQSharedState
	.section	.text._ZN15SQFunctionProtoD2Ev,"ax",%progbits
	.align	2
	.global	_ZN15SQFunctionProtoD2Ev
	.thumb
	.thumb_func
	.type	_ZN15SQFunctionProtoD2Ev, %function
_ZN15SQFunctionProtoD2Ev:
	.fnstart
.LFB352:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r1, .L601
.LPIC52:
	add	r1, pc
	ldr	r3, [r7, #4]
	ldr	r2, .L601+4
	ldr	r2, [r1, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	blt	.L590
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	add	r2, r3, #68
	ldr	r3, [r7, #4]
	mov	r0, r2
	mov	r1, r3
.LEHB61:
	bl	_ZN13SQCollectable15RemoveFromChainEPPS_S0_(PLT)
.LEHE61:
.L590:
	ldr	r3, [r7, #4]
	adds	r3, r3, #32
	mov	r0, r3
.LEHB62:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE62:
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	mov	r0, r3
.LEHB63:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE63:
	ldr	r3, [r7, #4]
	mov	r0, r3
.LEHB64:
	bl	_ZN13SQCollectableD2Ev(PLT)
.LEHE64:
	movs	r3, #0
	cmp	r3, #0
	beq	.L592
	ldr	r0, [r7, #4]
	bl	_ZdlPv(PLT)
.L592:
	ldr	r3, [r7, #4]
	b	.L600
.L597:
	ldr	r3, [r7, #4]
	adds	r3, r3, #32
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L595
.L598:
.L595:
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L596
.L599:
.L596:
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN13SQCollectableD2Ev(PLT)
.LEHB65:
	bl	__cxa_end_cleanup(PLT)
.LEHE65:
.L600:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L602:
	.align	2
.L601:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC52+4)
	.word	_ZTV15SQFunctionProto(GOT)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA352:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE352-.LLSDACSB352
.LLSDACSB352:
	.uleb128 .LEHB61-.LFB352
	.uleb128 .LEHE61-.LEHB61
	.uleb128 .L597-.LFB352
	.uleb128 0
	.uleb128 .LEHB62-.LFB352
	.uleb128 .LEHE62-.LEHB62
	.uleb128 .L598-.LFB352
	.uleb128 0
	.uleb128 .LEHB63-.LFB352
	.uleb128 .LEHE63-.LEHB63
	.uleb128 .L599-.LFB352
	.uleb128 0
	.uleb128 .LEHB64-.LFB352
	.uleb128 .LEHE64-.LEHB64
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB65-.LFB352
	.uleb128 .LEHE65-.LEHB65
	.uleb128 0
	.uleb128 0
.LLSDACSE352:
	.section	.text._ZN15SQFunctionProtoD2Ev
	.fnend
	.size	_ZN15SQFunctionProtoD2Ev, .-_ZN15SQFunctionProtoD2Ev
	.global	_ZN15SQFunctionProtoD1Ev
	.thumb_set _ZN15SQFunctionProtoD1Ev,_ZN15SQFunctionProtoD2Ev
	.section	.text._ZN15SQFunctionProtoD0Ev,"ax",%progbits
	.align	2
	.global	_ZN15SQFunctionProtoD0Ev
	.thumb
	.thumb_func
	.type	_ZN15SQFunctionProtoD0Ev, %function
_ZN15SQFunctionProtoD0Ev:
	.fnstart
.LFB354:
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
	bl	_ZN15SQFunctionProtoD1Ev(PLT)
	ldr	r0, [r7, #4]
	bl	_ZdlPv(PLT)
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN15SQFunctionProtoD0Ev, .-_ZN15SQFunctionProtoD0Ev
	.section	.text._ZN15SQFunctionProto4SaveEP4SQVMPvPFiS2_S2_iE,"ax",%progbits
	.align	2
	.global	_ZN15SQFunctionProto4SaveEP4SQVMPvPFiS2_S2_iE
	.thumb
	.thumb_func
	.type	_ZN15SQFunctionProto4SaveEP4SQVMPvPFiS2_S2_iE, %function
_ZN15SQFunctionProto4SaveEP4SQVMPvPFiS2_S2_iE:
	.fnstart
.LFB355:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #64
	sub	sp, sp, #64
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #68]
	str	r3, [r7, #44]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #76]
	str	r3, [r7, #40]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #92]
	str	r3, [r7, #36]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	str	r3, [r7, #32]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #60]
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #108]
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #84]
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #100]
	str	r3, [r7, #16]
	ldr	r0, [r7, #8]
	ldr	r1, [r7]
	ldr	r2, [r7, #4]
	movw	r3, #21076
	movt	r3, 20545
	bl	_Z8WriteTagP4SQVMPFiPvS1_iES1_j(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L607
	movs	r3, #0
	b	.L654
.L607:
	ldr	r3, [r7, #12]
	adds	r3, r3, #24
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
	bl	_Z11WriteObjectP4SQVMPvPFiS1_S1_iER11SQObjectPtr(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L609
	movs	r3, #0
	b	.L654
.L609:
	ldr	r3, [r7, #12]
	adds	r3, r3, #32
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
	bl	_Z11WriteObjectP4SQVMPvPFiS1_S1_iER11SQObjectPtr(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L610
	movs	r3, #0
	b	.L654
.L610:
	ldr	r0, [r7, #8]
	ldr	r1, [r7]
	ldr	r2, [r7, #4]
	movw	r3, #21076
	movt	r3, 20545
	bl	_Z8WriteTagP4SQVMPFiPvS1_iES1_j(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L611
	movs	r3, #0
	b	.L654
.L611:
	add	r3, r7, #44
	movs	r2, #4
	str	r2, [sp]
	ldr	r0, [r7, #8]
	ldr	r1, [r7]
	ldr	r2, [r7, #4]
	bl	_Z9SafeWriteP4SQVMPFiPvS1_iES1_S1_i(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L612
	movs	r3, #0
	b	.L654
.L612:
	add	r3, r7, #40
	movs	r2, #4
	str	r2, [sp]
	ldr	r0, [r7, #8]
	ldr	r1, [r7]
	ldr	r2, [r7, #4]
	bl	_Z9SafeWriteP4SQVMPFiPvS1_iES1_S1_i(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L613
	movs	r3, #0
	b	.L654
.L613:
	add	r3, r7, #36
	movs	r2, #4
	str	r2, [sp]
	ldr	r0, [r7, #8]
	ldr	r1, [r7]
	ldr	r2, [r7, #4]
	bl	_Z9SafeWriteP4SQVMPFiPvS1_iES1_S1_i(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L614
	movs	r3, #0
	b	.L654
.L614:
	add	r3, r7, #32
	movs	r2, #4
	str	r2, [sp]
	ldr	r0, [r7, #8]
	ldr	r1, [r7]
	ldr	r2, [r7, #4]
	bl	_Z9SafeWriteP4SQVMPFiPvS1_iES1_S1_i(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L615
	movs	r3, #0
	b	.L654
.L615:
	add	r3, r7, #28
	movs	r2, #4
	str	r2, [sp]
	ldr	r0, [r7, #8]
	ldr	r1, [r7]
	ldr	r2, [r7, #4]
	bl	_Z9SafeWriteP4SQVMPFiPvS1_iES1_S1_i(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L616
	movs	r3, #0
	b	.L654
.L616:
	add	r3, r7, #16
	movs	r2, #4
	str	r2, [sp]
	ldr	r0, [r7, #8]
	ldr	r1, [r7]
	ldr	r2, [r7, #4]
	bl	_Z9SafeWriteP4SQVMPFiPvS1_iES1_S1_i(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L617
	movs	r3, #0
	b	.L654
.L617:
	add	r3, r7, #24
	movs	r2, #4
	str	r2, [sp]
	ldr	r0, [r7, #8]
	ldr	r1, [r7]
	ldr	r2, [r7, #4]
	bl	_Z9SafeWriteP4SQVMPFiPvS1_iES1_S1_i(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L618
	movs	r3, #0
	b	.L654
.L618:
	add	r3, r7, #20
	movs	r2, #4
	str	r2, [sp]
	ldr	r0, [r7, #8]
	ldr	r1, [r7]
	ldr	r2, [r7, #4]
	bl	_Z9SafeWriteP4SQVMPFiPvS1_iES1_S1_i(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L619
	movs	r3, #0
	b	.L654
.L619:
	ldr	r0, [r7, #8]
	ldr	r1, [r7]
	ldr	r2, [r7, #4]
	movw	r3, #21076
	movt	r3, 20545
	bl	_Z8WriteTagP4SQVMPFiPvS1_iES1_j(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L620
	movs	r3, #0
	b	.L654
.L620:
	movs	r3, #0
	str	r3, [r7, #52]
	b	.L621
.L623:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #72]
	ldr	r3, [r7, #52]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
	bl	_Z11WriteObjectP4SQVMPvPFiS1_S1_iER11SQObjectPtr(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L622
	movs	r3, #0
	b	.L654
.L622:
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	str	r3, [r7, #52]
.L621:
	ldr	r3, [r7, #44]
	ldr	r2, [r7, #52]
	cmp	r2, r3
	blt	.L623
	ldr	r0, [r7, #8]
	ldr	r1, [r7]
	ldr	r2, [r7, #4]
	movw	r3, #21076
	movt	r3, 20545
	bl	_Z8WriteTagP4SQVMPFiPvS1_iES1_j(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L624
	movs	r3, #0
	b	.L654
.L624:
	movs	r3, #0
	str	r3, [r7, #52]
	b	.L625
.L627:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #80]
	ldr	r3, [r7, #52]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
	bl	_Z11WriteObjectP4SQVMPvPFiS1_S1_iER11SQObjectPtr(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L626
	movs	r3, #0
	b	.L654
.L626:
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	str	r3, [r7, #52]
.L625:
	ldr	r3, [r7, #40]
	ldr	r2, [r7, #52]
	cmp	r2, r3
	blt	.L627
	ldr	r0, [r7, #8]
	ldr	r1, [r7]
	ldr	r2, [r7, #4]
	movw	r3, #21076
	movt	r3, 20545
	bl	_Z8WriteTagP4SQVMPFiPvS1_iES1_j(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L628
	movs	r3, #0
	b	.L654
.L628:
	movs	r3, #0
	str	r3, [r7, #52]
	b	.L629
.L633:
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #96]
	ldr	r2, [r7, #52]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	movs	r2, #4
	str	r2, [sp]
	ldr	r0, [r7, #8]
	ldr	r1, [r7]
	ldr	r2, [r7, #4]
	bl	_Z9SafeWriteP4SQVMPFiPvS1_iES1_S1_i(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L630
	movs	r3, #0
	b	.L654
.L630:
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #96]
	ldr	r2, [r7, #52]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #12
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
	bl	_Z11WriteObjectP4SQVMPvPFiS1_S1_iER11SQObjectPtr(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L631
	movs	r3, #0
	b	.L654
.L631:
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #96]
	ldr	r2, [r7, #52]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #4
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
	bl	_Z11WriteObjectP4SQVMPvPFiS1_S1_iER11SQObjectPtr(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L632
	movs	r3, #0
	b	.L654
.L632:
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	str	r3, [r7, #52]
.L629:
	ldr	r3, [r7, #36]
	ldr	r2, [r7, #52]
	cmp	r2, r3
	blt	.L633
	ldr	r0, [r7, #8]
	ldr	r1, [r7]
	ldr	r2, [r7, #4]
	movw	r3, #21076
	movt	r3, 20545
	bl	_Z8WriteTagP4SQVMPFiPvS1_iES1_j(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L634
	movs	r3, #0
	b	.L654
.L634:
	movs	r3, #0
	str	r3, [r7, #52]
	b	.L635
.L640:
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #56]
	ldr	r2, [r7, #52]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
	bl	_Z11WriteObjectP4SQVMPvPFiS1_S1_iER11SQObjectPtr(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L636
	movs	r3, #0
	b	.L654
.L636:
	ldr	r3, [r7, #48]
	adds	r3, r3, #16
	movs	r2, #4
	str	r2, [sp]
	ldr	r0, [r7, #8]
	ldr	r1, [r7]
	ldr	r2, [r7, #4]
	bl	_Z9SafeWriteP4SQVMPFiPvS1_iES1_S1_i(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L637
	movs	r3, #0
	b	.L654
.L637:
	ldr	r3, [r7, #48]
	adds	r3, r3, #8
	movs	r2, #4
	str	r2, [sp]
	ldr	r0, [r7, #8]
	ldr	r1, [r7]
	ldr	r2, [r7, #4]
	bl	_Z9SafeWriteP4SQVMPFiPvS1_iES1_S1_i(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L638
	movs	r3, #0
	b	.L654
.L638:
	ldr	r3, [r7, #48]
	adds	r3, r3, #12
	movs	r2, #4
	str	r2, [sp]
	ldr	r0, [r7, #8]
	ldr	r1, [r7]
	ldr	r2, [r7, #4]
	bl	_Z9SafeWriteP4SQVMPFiPvS1_iES1_S1_i(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L639
	movs	r3, #0
	b	.L654
.L639:
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	str	r3, [r7, #52]
.L635:
	ldr	r3, [r7, #32]
	ldr	r2, [r7, #52]
	cmp	r2, r3
	blt	.L640
	ldr	r0, [r7, #8]
	ldr	r1, [r7]
	ldr	r2, [r7, #4]
	movw	r3, #21076
	movt	r3, 20545
	bl	_Z8WriteTagP4SQVMPFiPvS1_iES1_j(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L641
	movs	r3, #0
	b	.L654
.L641:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	ldr	r2, [r7, #28]
	lsls	r2, r2, #3
	str	r2, [sp]
	ldr	r0, [r7, #8]
	ldr	r1, [r7]
	ldr	r2, [r7, #4]
	bl	_Z9SafeWriteP4SQVMPFiPvS1_iES1_S1_i(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L642
	movs	r3, #0
	b	.L654
.L642:
	ldr	r0, [r7, #8]
	ldr	r1, [r7]
	ldr	r2, [r7, #4]
	movw	r3, #21076
	movt	r3, 20545
	bl	_Z8WriteTagP4SQVMPFiPvS1_iES1_j(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L643
	movs	r3, #0
	b	.L654
.L643:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #104]
	ldr	r2, [r7, #16]
	lsls	r2, r2, #2
	str	r2, [sp]
	ldr	r0, [r7, #8]
	ldr	r1, [r7]
	ldr	r2, [r7, #4]
	bl	_Z9SafeWriteP4SQVMPFiPvS1_iES1_S1_i(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L644
	movs	r3, #0
	b	.L654
.L644:
	ldr	r0, [r7, #8]
	ldr	r1, [r7]
	ldr	r2, [r7, #4]
	movw	r3, #21076
	movt	r3, 20545
	bl	_Z8WriteTagP4SQVMPFiPvS1_iES1_j(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L645
	movs	r3, #0
	b	.L654
.L645:
	ldr	r3, [r7, #12]
	adds	r3, r3, #112
	ldr	r2, [r7, #24]
	lsls	r2, r2, #3
	str	r2, [sp]
	ldr	r0, [r7, #8]
	ldr	r1, [r7]
	ldr	r2, [r7, #4]
	bl	_Z9SafeWriteP4SQVMPFiPvS1_iES1_S1_i(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L646
	movs	r3, #0
	b	.L654
.L646:
	ldr	r0, [r7, #8]
	ldr	r1, [r7]
	ldr	r2, [r7, #4]
	movw	r3, #21076
	movt	r3, 20545
	bl	_Z8WriteTagP4SQVMPFiPvS1_iES1_j(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L647
	movs	r3, #0
	b	.L654
.L647:
	movs	r3, #0
	str	r3, [r7, #52]
	b	.L648
.L650:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #88]
	ldr	r3, [r7, #52]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	_ZN15SQFunctionProto4SaveEP4SQVMPvPFiS2_S2_iE(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L649
	movs	r3, #0
	b	.L654
.L649:
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	str	r3, [r7, #52]
.L648:
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #52]
	cmp	r2, r3
	blt	.L650
	ldr	r3, [r7, #12]
	adds	r3, r3, #40
	movs	r2, #4
	str	r2, [sp]
	ldr	r0, [r7, #8]
	ldr	r1, [r7]
	ldr	r2, [r7, #4]
	bl	_Z9SafeWriteP4SQVMPFiPvS1_iES1_S1_i(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L651
	movs	r3, #0
	b	.L654
.L651:
	ldr	r3, [r7, #12]
	adds	r3, r3, #44
	movs	r2, #1
	str	r2, [sp]
	ldr	r0, [r7, #8]
	ldr	r1, [r7]
	ldr	r2, [r7, #4]
	bl	_Z9SafeWriteP4SQVMPFiPvS1_iES1_S1_i(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L652
	movs	r3, #0
	b	.L654
.L652:
	ldr	r3, [r7, #12]
	adds	r3, r3, #48
	movs	r2, #4
	str	r2, [sp]
	ldr	r0, [r7, #8]
	ldr	r1, [r7]
	ldr	r2, [r7, #4]
	bl	_Z9SafeWriteP4SQVMPFiPvS1_iES1_S1_i(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L653
	movs	r3, #0
	b	.L654
.L653:
	movs	r3, #1
.L654:
	mov	r0, r3
	adds	r7, r7, #56
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN15SQFunctionProto4SaveEP4SQVMPvPFiS2_S2_iE, .-_ZN15SQFunctionProto4SaveEP4SQVMPvPFiS2_S2_iE
	.section	.text._ZN10SQOuterVaraSERKS_,"axG",%progbits,_ZN10SQOuterVaraSERKS_,comdat
	.align	2
	.weak	_ZN10SQOuterVaraSERKS_
	.thumb
	.thumb_func
	.type	_ZN10SQOuterVaraSERKS_, %function
_ZN10SQOuterVaraSERKS_:
	.fnstart
.LFB357:
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
.LFB358:
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
	.section	.text._ZN15SQFunctionProto4LoadEP4SQVMPvPFiS2_S2_iER11SQObjectPtr,"ax",%progbits
	.align	2
	.global	_ZN15SQFunctionProto4LoadEP4SQVMPvPFiS2_S2_iER11SQObjectPtr
	.thumb
	.thumb_func
	.type	_ZN15SQFunctionProto4LoadEP4SQVMPvPFiS2_S2_iER11SQObjectPtr, %function
_ZN15SQFunctionProto4LoadEP4SQVMPvPFiS2_S2_iER11SQObjectPtr:
	.fnstart
.LFB356:
	@ args = 0, pretend = 0, frame = 144
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	.save {r4, r5, r6, r7, r8, lr}
	.pad #168
	sub	sp, sp, #168
	.setfp r7, sp, #24
	add	r7, sp, #24
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	add	r3, r7, #76
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	add	r3, r7, #68
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	add	r3, r7, #60
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #8]
	movw	r3, #21076
	movt	r3, 20545
.LEHB66:
	bl	_Z8CheckTagP4SQVMPFiPvS1_iES1_j(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L660
	movs	r4, #0
	b	.L661
.L660:
	add	r3, r7, #76
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	_Z10ReadObjectP4SQVMPvPFiS1_S1_iER11SQObjectPtr(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L662
	movs	r4, #0
	b	.L661
.L662:
	add	r3, r7, #68
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	_Z10ReadObjectP4SQVMPvPFiS1_S1_iER11SQObjectPtr(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L663
	movs	r4, #0
	b	.L661
.L663:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #8]
	movw	r3, #21076
	movt	r3, 20545
	bl	_Z8CheckTagP4SQVMPFiPvS1_iES1_j(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L664
	movs	r4, #0
	b	.L661
.L664:
	add	r3, r7, #112
	movs	r2, #4
	str	r2, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #8]
	bl	_Z8SafeReadP4SQVMPFiPvS1_iES1_S1_i(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L665
	movs	r4, #0
	b	.L661
.L665:
	add	r3, r7, #108
	movs	r2, #4
	str	r2, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #8]
	bl	_Z8SafeReadP4SQVMPFiPvS1_iES1_S1_i(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L666
	movs	r4, #0
	b	.L661
.L666:
	add	r3, r7, #104
	movs	r2, #4
	str	r2, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #8]
	bl	_Z8SafeReadP4SQVMPFiPvS1_iES1_S1_i(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L667
	movs	r4, #0
	b	.L661
.L667:
	add	r3, r7, #100
	movs	r2, #4
	str	r2, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #8]
	bl	_Z8SafeReadP4SQVMPFiPvS1_iES1_S1_i(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L668
	movs	r4, #0
	b	.L661
.L668:
	add	r3, r7, #96
	movs	r2, #4
	str	r2, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #8]
	bl	_Z8SafeReadP4SQVMPFiPvS1_iES1_S1_i(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L669
	movs	r4, #0
	b	.L661
.L669:
	add	r3, r7, #84
	movs	r2, #4
	str	r2, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #8]
	bl	_Z8SafeReadP4SQVMPFiPvS1_iES1_S1_i(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L670
	movs	r4, #0
	b	.L661
.L670:
	add	r3, r7, #92
	movs	r2, #4
	str	r2, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #8]
	bl	_Z8SafeReadP4SQVMPFiPvS1_iES1_S1_i(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L671
	movs	r4, #0
	b	.L661
.L671:
	add	r3, r7, #88
	movs	r2, #4
	str	r2, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #8]
	bl	_Z8SafeReadP4SQVMPFiPvS1_iES1_S1_i(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L672
	movs	r4, #0
	b	.L661
.L672:
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #140]
	ldr	r1, [r7, #92]
	ldr	r2, [r7, #112]
	ldr	r3, [r7, #108]
	ldr	ip, [r7, #88]
	ldr	lr, [r7, #104]
	ldr	r6, [r7, #96]
	ldr	r5, [r7, #100]
	ldr	r4, [r7, #84]
	str	ip, [sp]
	str	lr, [sp, #4]
	str	r6, [sp, #8]
	str	r5, [sp, #12]
	str	r4, [sp, #16]
	bl	_ZN15SQFunctionProto6CreateEP13SQSharedStateiiiiiiii(PLT)
.LEHE66:
	mov	r3, r0
	str	r3, [r7, #136]
	add	r3, r7, #52
	mov	r0, r3
	ldr	r1, [r7, #136]
	bl	_ZN11SQObjectPtrC1EP15SQFunctionProto(PLT)
	ldr	r3, [r7, #136]
	add	r2, r3, #24
	add	r3, r7, #76
	mov	r0, r2
	mov	r1, r3
.LEHB67:
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	ldr	r3, [r7, #136]
	add	r2, r3, #32
	add	r3, r7, #68
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #8]
	movw	r3, #21076
	movt	r3, 20545
	bl	_Z8CheckTagP4SQVMPFiPvS1_iES1_j(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L673
	movs	r4, #0
	b	.L674
.L673:
	movs	r3, #0
	str	r3, [r7, #140]
	b	.L675
.L677:
	add	r3, r7, #60
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	_Z10ReadObjectP4SQVMPvPFiS1_S1_iER11SQObjectPtr(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L676
	movs	r4, #0
	b	.L674
.L676:
	ldr	r3, [r7, #136]
	ldr	r2, [r3, #72]
	ldr	r3, [r7, #140]
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #60
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	ldr	r3, [r7, #140]
	adds	r3, r3, #1
	str	r3, [r7, #140]
.L675:
	ldr	r3, [r7, #112]
	ldr	r2, [r7, #140]
	cmp	r2, r3
	blt	.L677
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #8]
	movw	r3, #21076
	movt	r3, 20545
	bl	_Z8CheckTagP4SQVMPFiPvS1_iES1_j(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L678
	movs	r4, #0
	b	.L674
.L678:
	movs	r3, #0
	str	r3, [r7, #140]
	b	.L679
.L681:
	add	r3, r7, #60
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	_Z10ReadObjectP4SQVMPvPFiS1_S1_iER11SQObjectPtr(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L680
	movs	r4, #0
	b	.L674
.L680:
	ldr	r3, [r7, #136]
	ldr	r2, [r3, #80]
	ldr	r3, [r7, #140]
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #60
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	ldr	r3, [r7, #140]
	adds	r3, r3, #1
	str	r3, [r7, #140]
.L679:
	ldr	r3, [r7, #108]
	ldr	r2, [r7, #140]
	cmp	r2, r3
	blt	.L681
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #8]
	movw	r3, #21076
	movt	r3, 20545
	bl	_Z8CheckTagP4SQVMPFiPvS1_iES1_j(PLT)
.LEHE67:
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L682
	movs	r4, #0
	b	.L674
.L682:
	movs	r3, #0
	str	r3, [r7, #140]
	mov	r4, r8
	b	.L683
.L690:
	add	r3, r7, #40
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	add	r3, r7, #48
	movs	r2, #4
	str	r2, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #8]
.LEHB68:
	bl	_Z8SafeReadP4SQVMPFiPvS1_iES1_S1_i(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L684
	movs	r4, #0
	movs	r5, #0
	b	.L685
.L684:
	add	r3, r7, #60
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	_Z10ReadObjectP4SQVMPvPFiS1_S1_iER11SQObjectPtr(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L686
	movs	r4, #0
	movs	r5, #0
	b	.L685
.L686:
	add	r3, r7, #40
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	_Z10ReadObjectP4SQVMPvPFiS1_S1_iER11SQObjectPtr(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L687
	movs	r4, #0
	movs	r5, #0
	b	.L685
.L687:
	ldr	r3, [r7, #136]
	ldr	r1, [r3, #96]
	ldr	r2, [r7, #140]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r5, r1, r3
	ldr	r3, [r7, #48]
	add	r0, r7, #116
	add	r1, r7, #40
	add	r2, r7, #60
	bl	_ZN10SQOuterVarC1ERK11SQObjectPtrS2_11SQOuterType(PLT)
.LEHE68:
	add	r3, r7, #116
	mov	r0, r5
	mov	r1, r3
.LEHB69:
	bl	_ZN10SQOuterVaraSERKS_(PLT)
.LEHE69:
	add	r3, r7, #116
	mov	r0, r3
.LEHB70:
	bl	_ZN10SQOuterVarD1Ev(PLT)
.LEHE70:
	movs	r5, #1
.L685:
	add	r3, r7, #40
	mov	r0, r3
.LEHB71:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	cmp	r5, #1
	bne	.L674
	nop
	ldr	r3, [r7, #140]
	adds	r3, r3, #1
	str	r3, [r7, #140]
.L683:
	ldr	r3, [r7, #104]
	ldr	r2, [r7, #140]
	cmp	r2, r3
	blt	.L690
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #8]
	movw	r3, #21076
	movt	r3, 20545
	bl	_Z8CheckTagP4SQVMPFiPvS1_iES1_j(PLT)
.LEHE71:
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L691
	movs	r4, #0
	b	.L674
.L691:
	movs	r3, #0
	str	r3, [r7, #140]
	b	.L692
.L700:
	add	r3, r7, #20
	mov	r0, r3
	bl	_ZN14SQLocalVarInfoC1Ev(PLT)
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
.LEHB72:
	bl	_Z10ReadObjectP4SQVMPvPFiS1_S1_iER11SQObjectPtr(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L693
	movs	r4, #0
	movs	r5, #0
	b	.L694
.L693:
	add	r3, r7, #20
	adds	r3, r3, #16
	movs	r2, #4
	str	r2, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #8]
	bl	_Z8SafeReadP4SQVMPFiPvS1_iES1_S1_i(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L695
	movs	r4, #0
	movs	r5, #0
	b	.L694
.L695:
	add	r3, r7, #20
	adds	r3, r3, #8
	movs	r2, #4
	str	r2, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #8]
	bl	_Z8SafeReadP4SQVMPFiPvS1_iES1_S1_i(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L696
	movs	r4, #0
	movs	r5, #0
	b	.L694
.L696:
	add	r3, r7, #20
	adds	r3, r3, #12
	movs	r2, #4
	str	r2, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #8]
	bl	_Z8SafeReadP4SQVMPFiPvS1_iES1_S1_i(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L697
	movs	r4, #0
	movs	r5, #0
	b	.L694
.L697:
	ldr	r3, [r7, #136]
	ldr	r1, [r3, #56]
	ldr	r2, [r7, #140]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r2, r1, r3
	add	r3, r7, #20
	mov	r0, r2
	mov	r1, r3
	bl	_ZN14SQLocalVarInfoaSERKS_(PLT)
.LEHE72:
	movs	r5, #1
.L694:
	add	r3, r7, #20
	mov	r0, r3
.LEHB73:
	bl	_ZN14SQLocalVarInfoD1Ev(PLT)
	cmp	r5, #1
	bne	.L674
	nop
	ldr	r3, [r7, #140]
	adds	r3, r3, #1
	str	r3, [r7, #140]
.L692:
	ldr	r3, [r7, #100]
	ldr	r2, [r7, #140]
	cmp	r2, r3
	blt	.L700
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #8]
	movw	r3, #21076
	movt	r3, 20545
	bl	_Z8CheckTagP4SQVMPFiPvS1_iES1_j(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L701
	movs	r4, #0
	b	.L674
.L701:
	ldr	r3, [r7, #136]
	ldr	r3, [r3, #64]
	ldr	r2, [r7, #96]
	lsls	r2, r2, #3
	str	r2, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #8]
	bl	_Z8SafeReadP4SQVMPFiPvS1_iES1_S1_i(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L702
	movs	r4, #0
	b	.L674
.L702:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #8]
	movw	r3, #21076
	movt	r3, 20545
	bl	_Z8CheckTagP4SQVMPFiPvS1_iES1_j(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L703
	movs	r4, #0
	b	.L674
.L703:
	ldr	r3, [r7, #136]
	ldr	r3, [r3, #104]
	ldr	r2, [r7, #84]
	lsls	r2, r2, #2
	str	r2, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #8]
	bl	_Z8SafeReadP4SQVMPFiPvS1_iES1_S1_i(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L704
	movs	r4, #0
	b	.L674
.L704:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #8]
	movw	r3, #21076
	movt	r3, 20545
	bl	_Z8CheckTagP4SQVMPFiPvS1_iES1_j(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L705
	movs	r4, #0
	b	.L674
.L705:
	ldr	r3, [r7, #136]
	adds	r3, r3, #112
	ldr	r2, [r7, #92]
	lsls	r2, r2, #3
	str	r2, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #8]
	bl	_Z8SafeReadP4SQVMPFiPvS1_iES1_S1_i(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L706
	movs	r4, #0
	b	.L674
.L706:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #8]
	movw	r3, #21076
	movt	r3, 20545
	bl	_Z8CheckTagP4SQVMPFiPvS1_iES1_j(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L707
	movs	r4, #0
	b	.L674
.L707:
	movs	r3, #0
	str	r3, [r7, #140]
	b	.L708
.L710:
	add	r3, r7, #60
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	_ZN15SQFunctionProto4LoadEP4SQVMPvPFiS2_S2_iER11SQObjectPtr(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L709
	movs	r4, #0
	b	.L674
.L709:
	ldr	r3, [r7, #136]
	ldr	r2, [r3, #88]
	ldr	r3, [r7, #140]
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #60
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	ldr	r3, [r7, #140]
	adds	r3, r3, #1
	str	r3, [r7, #140]
.L708:
	ldr	r3, [r7, #88]
	ldr	r2, [r7, #140]
	cmp	r2, r3
	blt	.L710
	ldr	r3, [r7, #136]
	adds	r3, r3, #40
	movs	r2, #4
	str	r2, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #8]
	bl	_Z8SafeReadP4SQVMPFiPvS1_iES1_S1_i(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L711
	movs	r4, #0
	b	.L674
.L711:
	ldr	r3, [r7, #136]
	adds	r3, r3, #44
	movs	r2, #1
	str	r2, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #8]
	bl	_Z8SafeReadP4SQVMPFiPvS1_iES1_S1_i(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L712
	movs	r4, #0
	b	.L674
.L712:
	ldr	r3, [r7, #136]
	adds	r3, r3, #48
	movs	r2, #4
	str	r2, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #8]
	bl	_Z8SafeReadP4SQVMPFiPvS1_iES1_S1_i(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L713
	movs	r4, #0
	b	.L674
.L713:
	ldr	r0, [r7]
	ldr	r1, [r7, #136]
	bl	_ZN11SQObjectPtraSEP15SQFunctionProto(PLT)
.LEHE73:
	movs	r4, #1
.L674:
	add	r3, r7, #52
	mov	r0, r3
.LEHB74:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE74:
.L661:
	add	r3, r7, #60
	mov	r0, r3
.LEHB75:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE75:
	add	r3, r7, #68
	mov	r0, r3
.LEHB76:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE76:
	add	r3, r7, #76
	mov	r0, r3
.LEHB77:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE77:
	mov	r3, r4
	b	.L731
.L727:
	add	r3, r7, #116
	mov	r0, r3
	bl	_ZN10SQOuterVarD1Ev(PLT)
	b	.L716
.L726:
.L716:
	add	r3, r7, #40
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L717
.L728:
	add	r3, r7, #20
	mov	r0, r3
	bl	_ZN14SQLocalVarInfoD1Ev(PLT)
	b	.L717
.L725:
.L717:
	add	r3, r7, #52
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L719
.L724:
.L719:
	add	r3, r7, #60
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L720
.L723:
.L720:
	add	r3, r7, #68
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L721
.L722:
.L721:
	add	r3, r7, #76
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB78:
	bl	__cxa_end_cleanup(PLT)
.LEHE78:
.L731:
	mov	r0, r3
	adds	r7, r7, #144
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA356:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE356-.LLSDACSB356
.LLSDACSB356:
	.uleb128 .LEHB66-.LFB356
	.uleb128 .LEHE66-.LEHB66
	.uleb128 .L724-.LFB356
	.uleb128 0
	.uleb128 .LEHB67-.LFB356
	.uleb128 .LEHE67-.LEHB67
	.uleb128 .L725-.LFB356
	.uleb128 0
	.uleb128 .LEHB68-.LFB356
	.uleb128 .LEHE68-.LEHB68
	.uleb128 .L726-.LFB356
	.uleb128 0
	.uleb128 .LEHB69-.LFB356
	.uleb128 .LEHE69-.LEHB69
	.uleb128 .L727-.LFB356
	.uleb128 0
	.uleb128 .LEHB70-.LFB356
	.uleb128 .LEHE70-.LEHB70
	.uleb128 .L726-.LFB356
	.uleb128 0
	.uleb128 .LEHB71-.LFB356
	.uleb128 .LEHE71-.LEHB71
	.uleb128 .L725-.LFB356
	.uleb128 0
	.uleb128 .LEHB72-.LFB356
	.uleb128 .LEHE72-.LEHB72
	.uleb128 .L728-.LFB356
	.uleb128 0
	.uleb128 .LEHB73-.LFB356
	.uleb128 .LEHE73-.LEHB73
	.uleb128 .L725-.LFB356
	.uleb128 0
	.uleb128 .LEHB74-.LFB356
	.uleb128 .LEHE74-.LEHB74
	.uleb128 .L724-.LFB356
	.uleb128 0
	.uleb128 .LEHB75-.LFB356
	.uleb128 .LEHE75-.LEHB75
	.uleb128 .L723-.LFB356
	.uleb128 0
	.uleb128 .LEHB76-.LFB356
	.uleb128 .LEHE76-.LEHB76
	.uleb128 .L722-.LFB356
	.uleb128 0
	.uleb128 .LEHB77-.LFB356
	.uleb128 .LEHE77-.LEHB77
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB78-.LFB356
	.uleb128 .LEHE78-.LEHB78
	.uleb128 0
	.uleb128 0
.LLSDACSE356:
	.section	.text._ZN15SQFunctionProto4LoadEP4SQVMPvPFiS2_S2_iER11SQObjectPtr
	.fnend
	.size	_ZN15SQFunctionProto4LoadEP4SQVMPvPFiS2_S2_iER11SQObjectPtr, .-_ZN15SQFunctionProto4LoadEP4SQVMPvPFiS2_S2_iER11SQObjectPtr
	.section	.text._ZN4SQVM4MarkEPP13SQCollectable,"ax",%progbits
	.align	2
	.global	_ZN4SQVM4MarkEPP13SQCollectable
	.thumb
	.thumb_func
	.type	_ZN4SQVM4MarkEPP13SQCollectable, %function
_ZN4SQVM4MarkEPP13SQCollectable:
	.fnstart
.LFB359:
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
	ldr	r3, [r3, #4]
	cmp	r3, #0
	blt	.L732
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	orr	r2, r3, #-2147483648
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	adds	r3, r3, #56
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN13SQSharedState10MarkObjectER11SQObjectPtrPP13SQCollectable(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #64
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN13SQSharedState10MarkObjectER11SQObjectPtrPP13SQCollectable(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #80
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN13SQSharedState10MarkObjectER11SQObjectPtrPP13SQCollectable(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #48
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN13SQSharedState10MarkObjectER11SQObjectPtrPP13SQCollectable(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #88
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN13SQSharedState10MarkObjectER11SQObjectPtrPP13SQCollectable(PLT)
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L734
.L735:
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	mov	r0, r3
	ldr	r1, [r7, #12]
	bl	_ZNK8sqvectorI11SQObjectPtrEixEj(PLT)
	mov	r3, r0
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN13SQSharedState10MarkObjectER11SQObjectPtrPP13SQCollectable(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L734:
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4sizeEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	cmp	r2, r3
	ite	hi
	movhi	r3, #1
	movls	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L735
	movs	r3, #0
	str	r3, [r7, #8]
	b	.L736
.L737:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #96]
	ldr	r3, [r7, #8]
	movs	r1, #44
	mul	r3, r1, r3
	add	r3, r3, r2
	adds	r3, r3, #8
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN13SQSharedState10MarkObjectER11SQObjectPtrPP13SQCollectable(PLT)
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L736:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #100]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bgt	.L737
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #140]
	add	r2, r3, #68
	ldr	r3, [r7, #4]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN13SQCollectable15RemoveFromChainEPPS_S0_(PLT)
	ldr	r3, [r7, #4]
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZN13SQCollectable10AddToChainEPPS_S0_(PLT)
.L732:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN4SQVM4MarkEPP13SQCollectable, .-_ZN4SQVM4MarkEPP13SQCollectable
	.section	.text._ZN7SQArray4MarkEPP13SQCollectable,"ax",%progbits
	.align	2
	.global	_ZN7SQArray4MarkEPP13SQCollectable
	.thumb
	.thumb_func
	.type	_ZN7SQArray4MarkEPP13SQCollectable, %function
_ZN7SQArray4MarkEPP13SQCollectable:
	.fnstart
.LFB360:
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
	ldr	r3, [r3, #4]
	cmp	r3, #0
	blt	.L738
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	orr	r2, r3, #-2147483648
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4sizeEv(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L740
.L741:
	ldr	r3, [r7, #4]
	add	r2, r3, #24
	ldr	r3, [r7, #12]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI11SQObjectPtrEixEj(PLT)
	mov	r3, r0
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN13SQSharedState10MarkObjectER11SQObjectPtrPP13SQCollectable(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L740:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	blt	.L741
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	add	r2, r3, #68
	ldr	r3, [r7, #4]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN13SQCollectable15RemoveFromChainEPPS_S0_(PLT)
	ldr	r3, [r7, #4]
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZN13SQCollectable10AddToChainEPPS_S0_(PLT)
.L738:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN7SQArray4MarkEPP13SQCollectable, .-_ZN7SQArray4MarkEPP13SQCollectable
	.section	.text._ZN7SQTable4MarkEPP13SQCollectable,"ax",%progbits
	.align	2
	.global	_ZN7SQTable4MarkEPP13SQCollectable
	.thumb
	.thumb_func
	.type	_ZN7SQTable4MarkEPP13SQCollectable, %function
_ZN7SQTable4MarkEPP13SQCollectable:
	.fnstart
.LFB361:
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
	ldr	r3, [r3, #4]
	cmp	r3, #0
	blt	.L742
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	orr	r2, r3, #-2147483648
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L744
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	ldr	r3, [r3]
	adds	r3, r3, #16
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #24]
	mov	r0, r2
	ldr	r1, [r7]
	blx	r3
.L744:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	str	r3, [r7, #8]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L745
.L746:
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #32]
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #8
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN13SQSharedState10MarkObjectER11SQObjectPtrPP13SQCollectable(PLT)
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #32]
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN13SQSharedState10MarkObjectER11SQObjectPtrPP13SQCollectable(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L745:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	blt	.L746
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	add	r2, r3, #68
	ldr	r3, [r7, #4]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN13SQCollectable15RemoveFromChainEPPS_S0_(PLT)
	ldr	r3, [r7, #4]
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZN13SQCollectable10AddToChainEPPS_S0_(PLT)
.L742:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN7SQTable4MarkEPP13SQCollectable, .-_ZN7SQTable4MarkEPP13SQCollectable
	.section	.text._ZN7SQClass4MarkEPP13SQCollectable,"ax",%progbits
	.align	2
	.global	_ZN7SQClass4MarkEPP13SQCollectable
	.thumb
	.thumb_func
	.type	_ZN7SQClass4MarkEPP13SQCollectable, %function
_ZN7SQClass4MarkEPP13SQCollectable:
	.fnstart
.LFB362:
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
	ldr	r3, [r3, #4]
	cmp	r3, #0
	blt	.L747
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	orr	r2, r3, #-2147483648
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	ldr	r3, [r3]
	adds	r3, r3, #16
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #24]
	mov	r0, r2
	ldr	r1, [r7]
	blx	r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	cmp	r3, #0
	beq	.L749
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	ldr	r3, [r3]
	adds	r3, r3, #16
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #28]
	mov	r0, r2
	ldr	r1, [r7]
	blx	r3
.L749:
	ldr	r3, [r7, #4]
	adds	r3, r3, #200
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN13SQSharedState10MarkObjectER11SQObjectPtrPP13SQCollectable(PLT)
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L750
.L751:
	ldr	r3, [r7, #4]
	adds	r3, r3, #32
	mov	r0, r3
	ldr	r1, [r7, #20]
	bl	_ZNK8sqvectorI13SQClassMemberEixEj(PLT)
	mov	r3, r0
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN13SQSharedState10MarkObjectER11SQObjectPtrPP13SQCollectable(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #32
	mov	r0, r3
	ldr	r1, [r7, #20]
	bl	_ZNK8sqvectorI13SQClassMemberEixEj(PLT)
	mov	r3, r0
	adds	r3, r3, #8
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN13SQSharedState10MarkObjectER11SQObjectPtrPP13SQCollectable(PLT)
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L750:
	ldr	r3, [r7, #4]
	adds	r3, r3, #32
	mov	r0, r3
	bl	_ZNK8sqvectorI13SQClassMemberE4sizeEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #20]
	cmp	r2, r3
	ite	hi
	movhi	r3, #1
	movls	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L751
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L752
.L753:
	ldr	r3, [r7, #4]
	adds	r3, r3, #44
	mov	r0, r3
	ldr	r1, [r7, #16]
	bl	_ZNK8sqvectorI13SQClassMemberEixEj(PLT)
	mov	r3, r0
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN13SQSharedState10MarkObjectER11SQObjectPtrPP13SQCollectable(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #44
	mov	r0, r3
	ldr	r1, [r7, #16]
	bl	_ZNK8sqvectorI13SQClassMemberEixEj(PLT)
	mov	r3, r0
	adds	r3, r3, #8
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN13SQSharedState10MarkObjectER11SQObjectPtrPP13SQCollectable(PLT)
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L752:
	ldr	r3, [r7, #4]
	adds	r3, r3, #44
	mov	r0, r3
	bl	_ZNK8sqvectorI13SQClassMemberE4sizeEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #16]
	cmp	r2, r3
	ite	hi
	movhi	r3, #1
	movls	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L753
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L754
.L755:
	ldr	r3, [r7, #12]
	adds	r3, r3, #7
	lsls	r3, r3, #3
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN13SQSharedState10MarkObjectER11SQObjectPtrPP13SQCollectable(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L754:
	ldr	r3, [r7, #12]
	cmp	r3, #17
	bls	.L755
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	add	r2, r3, #68
	ldr	r3, [r7, #4]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN13SQCollectable15RemoveFromChainEPPS_S0_(PLT)
	ldr	r3, [r7, #4]
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZN13SQCollectable10AddToChainEPPS_S0_(PLT)
.L747:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN7SQClass4MarkEPP13SQCollectable, .-_ZN7SQClass4MarkEPP13SQCollectable
	.section	.text._ZN10SQInstance4MarkEPP13SQCollectable,"ax",%progbits
	.align	2
	.global	_ZN10SQInstance4MarkEPP13SQCollectable
	.thumb
	.thumb_func
	.type	_ZN10SQInstance4MarkEPP13SQCollectable, %function
_ZN10SQInstance4MarkEPP13SQCollectable:
	.fnstart
.LFB363:
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
	ldr	r3, [r3, #4]
	cmp	r3, #0
	blt	.L756
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	orr	r2, r3, #-2147483648
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	ldr	r3, [r3]
	adds	r3, r3, #16
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #28]
	mov	r0, r2
	ldr	r1, [r7]
	blx	r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	adds	r3, r3, #32
	mov	r0, r3
	bl	_ZNK8sqvectorI13SQClassMemberE4sizeEv(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L758
.L759:
	ldr	r3, [r7, #12]
	adds	r3, r3, #5
	lsls	r3, r3, #3
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #4
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN13SQSharedState10MarkObjectER11SQObjectPtrPP13SQCollectable(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L758:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L759
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	add	r2, r3, #68
	ldr	r3, [r7, #4]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN13SQCollectable15RemoveFromChainEPPS_S0_(PLT)
	ldr	r3, [r7, #4]
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZN13SQCollectable10AddToChainEPPS_S0_(PLT)
.L756:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN10SQInstance4MarkEPP13SQCollectable, .-_ZN10SQInstance4MarkEPP13SQCollectable
	.section	.text._ZN11SQGenerator4MarkEPP13SQCollectable,"ax",%progbits
	.align	2
	.global	_ZN11SQGenerator4MarkEPP13SQCollectable
	.thumb
	.thumb_func
	.type	_ZN11SQGenerator4MarkEPP13SQCollectable, %function
_ZN11SQGenerator4MarkEPP13SQCollectable:
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
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	blt	.L760
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	orr	r2, r3, #-2147483648
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L762
.L763:
	ldr	r3, [r7, #4]
	adds	r3, r3, #32
	mov	r0, r3
	ldr	r1, [r7, #12]
	bl	_ZNK8sqvectorI11SQObjectPtrEixEj(PLT)
	mov	r3, r0
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN13SQSharedState10MarkObjectER11SQObjectPtrPP13SQCollectable(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L762:
	ldr	r3, [r7, #4]
	adds	r3, r3, #32
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4sizeEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	cmp	r2, r3
	ite	hi
	movhi	r3, #1
	movls	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L763
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN13SQSharedState10MarkObjectER11SQObjectPtrPP13SQCollectable(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	add	r2, r3, #68
	ldr	r3, [r7, #4]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN13SQCollectable15RemoveFromChainEPPS_S0_(PLT)
	ldr	r3, [r7, #4]
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZN13SQCollectable10AddToChainEPPS_S0_(PLT)
.L760:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQGenerator4MarkEPP13SQCollectable, .-_ZN11SQGenerator4MarkEPP13SQCollectable
	.section	.text._ZN15SQFunctionProto4MarkEPP13SQCollectable,"ax",%progbits
	.align	2
	.global	_ZN15SQFunctionProto4MarkEPP13SQCollectable
	.thumb
	.thumb_func
	.type	_ZN15SQFunctionProto4MarkEPP13SQCollectable, %function
_ZN15SQFunctionProto4MarkEPP13SQCollectable:
	.fnstart
.LFB365:
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
	ldr	r3, [r3, #4]
	cmp	r3, #0
	blt	.L764
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	orr	r2, r3, #-2147483648
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L766
.L767:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #72]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #3
	add	r3, r3, r2
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN13SQSharedState10MarkObjectER11SQObjectPtrPP13SQCollectable(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L766:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #68]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bgt	.L767
	movs	r3, #0
	str	r3, [r7, #8]
	b	.L768
.L769:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #88]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #3
	add	r3, r3, r2
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN13SQSharedState10MarkObjectER11SQObjectPtrPP13SQCollectable(PLT)
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L768:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #84]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bgt	.L769
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	add	r2, r3, #68
	ldr	r3, [r7, #4]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN13SQCollectable15RemoveFromChainEPPS_S0_(PLT)
	ldr	r3, [r7, #4]
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZN13SQCollectable10AddToChainEPPS_S0_(PLT)
.L764:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN15SQFunctionProto4MarkEPP13SQCollectable, .-_ZN15SQFunctionProto4MarkEPP13SQCollectable
	.section	.text._ZN9SQClosure4MarkEPP13SQCollectable,"ax",%progbits
	.align	2
	.global	_ZN9SQClosure4MarkEPP13SQCollectable
	.thumb
	.thumb_func
	.type	_ZN9SQClosure4MarkEPP13SQCollectable, %function
_ZN9SQClosure4MarkEPP13SQCollectable:
	.fnstart
.LFB366:
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
	ldr	r3, [r3, #4]
	cmp	r3, #0
	blt	.L770
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	orr	r2, r3, #-2147483648
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	cmp	r3, #0
	beq	.L772
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	ldr	r3, [r3]
	adds	r3, r3, #16
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #28]
	mov	r0, r2
	ldr	r1, [r7]
	blx	r3
.L772:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #16
	ldr	r3, [r3]
	ldr	r0, [r7, #12]
	ldr	r1, [r7]
	blx	r3
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L773
.L774:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #3
	add	r3, r3, r2
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN13SQSharedState10MarkObjectER11SQObjectPtrPP13SQCollectable(PLT)
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L773:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #92]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bgt	.L774
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L775
.L776:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #16]
	lsls	r3, r3, #3
	add	r3, r3, r2
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN13SQSharedState10MarkObjectER11SQObjectPtrPP13SQCollectable(PLT)
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L775:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #100]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bgt	.L776
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	add	r2, r3, #68
	ldr	r3, [r7, #4]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN13SQCollectable15RemoveFromChainEPPS_S0_(PLT)
	ldr	r3, [r7, #4]
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZN13SQCollectable10AddToChainEPPS_S0_(PLT)
.L770:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN9SQClosure4MarkEPP13SQCollectable, .-_ZN9SQClosure4MarkEPP13SQCollectable
	.section	.text._ZN15SQNativeClosure4MarkEPP13SQCollectable,"ax",%progbits
	.align	2
	.global	_ZN15SQNativeClosure4MarkEPP13SQCollectable
	.thumb
	.thumb_func
	.type	_ZN15SQNativeClosure4MarkEPP13SQCollectable, %function
_ZN15SQNativeClosure4MarkEPP13SQCollectable:
	.fnstart
.LFB367:
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
	ldr	r3, [r3, #4]
	cmp	r3, #0
	blt	.L777
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	orr	r2, r3, #-2147483648
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L779
.L780:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #3
	add	r3, r3, r2
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN13SQSharedState10MarkObjectER11SQObjectPtrPP13SQCollectable(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L779:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #44]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bhi	.L780
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	add	r2, r3, #68
	ldr	r3, [r7, #4]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN13SQCollectable15RemoveFromChainEPPS_S0_(PLT)
	ldr	r3, [r7, #4]
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZN13SQCollectable10AddToChainEPPS_S0_(PLT)
.L777:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN15SQNativeClosure4MarkEPP13SQCollectable, .-_ZN15SQNativeClosure4MarkEPP13SQCollectable
	.section	.text._ZN7SQOuter4MarkEPP13SQCollectable,"ax",%progbits
	.align	2
	.global	_ZN7SQOuter4MarkEPP13SQCollectable
	.thumb
	.thumb_func
	.type	_ZN7SQOuter4MarkEPP13SQCollectable, %function
_ZN7SQOuter4MarkEPP13SQCollectable:
	.fnstart
.LFB368:
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
	ldr	r3, [r3, #4]
	cmp	r3, #0
	blt	.L781
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	orr	r2, r3, #-2147483648
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #4]
	adds	r3, r3, #32
	cmp	r2, r3
	bne	.L783
	ldr	r3, [r7, #4]
	adds	r3, r3, #32
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN13SQSharedState10MarkObjectER11SQObjectPtrPP13SQCollectable(PLT)
.L783:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	add	r2, r3, #68
	ldr	r3, [r7, #4]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN13SQCollectable15RemoveFromChainEPPS_S0_(PLT)
	ldr	r3, [r7, #4]
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZN13SQCollectable10AddToChainEPPS_S0_(PLT)
.L781:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN7SQOuter4MarkEPP13SQCollectable, .-_ZN7SQOuter4MarkEPP13SQCollectable
	.section	.text._ZN10SQUserData4MarkEPP13SQCollectable,"ax",%progbits
	.align	2
	.global	_ZN10SQUserData4MarkEPP13SQCollectable
	.thumb
	.thumb_func
	.type	_ZN10SQUserData4MarkEPP13SQCollectable, %function
_ZN10SQUserData4MarkEPP13SQCollectable:
	.fnstart
.LFB369:
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
	ldr	r3, [r3, #4]
	cmp	r3, #0
	blt	.L784
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	orr	r2, r3, #-2147483648
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L786
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	ldr	r3, [r3]
	adds	r3, r3, #16
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #24]
	mov	r0, r2
	ldr	r1, [r7]
	blx	r3
.L786:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	add	r2, r3, #68
	ldr	r3, [r7, #4]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN13SQCollectable15RemoveFromChainEPPS_S0_(PLT)
	ldr	r3, [r7, #4]
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZN13SQCollectable10AddToChainEPPS_S0_(PLT)
.L784:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN10SQUserData4MarkEPP13SQCollectable, .-_ZN10SQUserData4MarkEPP13SQCollectable
	.section	.text._ZN13SQCollectable6UnMarkEv,"ax",%progbits
	.align	2
	.global	_ZN13SQCollectable6UnMarkEv
	.thumb
	.thumb_func
	.type	_ZN13SQCollectable6UnMarkEv, %function
_ZN13SQCollectable6UnMarkEv:
	.fnstart
.LFB370:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	bic	r2, r3, #-2147483648
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN13SQCollectable6UnMarkEv, .-_ZN13SQCollectable6UnMarkEv
	.section	.text._ZN8sqvectorI11SQObjectPtrED2Ev,"axG",%progbits,_ZN8sqvectorI11SQObjectPtrED5Ev,comdat
	.align	2
	.weak	_ZN8sqvectorI11SQObjectPtrED2Ev
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI11SQObjectPtrED2Ev, %function
_ZN8sqvectorI11SQObjectPtrED2Ev:
	.fnstart
.LFB380:
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
	beq	.L789
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L790
.L791:
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
.L790:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bhi	.L791
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	lsls	r3, r3, #3
	mov	r0, r2
	mov	r1, r3
	bl	_Z10sq_vm_freePvj(PLT)
.L789:
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
.LFB382:
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
	bcs	.L794
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_ZN8sqvectorI11SQObjectPtrE8_reallocEj(PLT)
.L794:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcs	.L795
	b	.L796
.L799:
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
	beq	.L798
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	_ZN11SQObjectPtrC1ERKS_(PLT)
.L798:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #4]
.L796:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L799
	b	.L793
.L795:
	ldr	r3, [r7, #8]
	str	r3, [r7, #20]
	b	.L801
.L802:
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
.L801:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bhi	.L802
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #4]
.L793:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN8sqvectorI11SQObjectPtrE6resizeEjRKS0_, .-_ZN8sqvectorI11SQObjectPtrE6resizeEjRKS0_
	.section	.text._ZNK8sqvectorI11SQObjectPtrE4sizeEv,"axG",%progbits,_ZNK8sqvectorI11SQObjectPtrE4sizeEv,comdat
	.align	2
	.weak	_ZNK8sqvectorI11SQObjectPtrE4sizeEv
	.thumb
	.thumb_func
	.type	_ZNK8sqvectorI11SQObjectPtrE4sizeEv, %function
_ZNK8sqvectorI11SQObjectPtrE4sizeEv:
	.fnstart
.LFB383:
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
	.section	.text._ZNK8sqvectorI11SQObjectPtrEixEj,"axG",%progbits,_ZNK8sqvectorI11SQObjectPtrEixEj,comdat
	.align	2
	.weak	_ZNK8sqvectorI11SQObjectPtrEixEj
	.thumb
	.thumb_func
	.type	_ZNK8sqvectorI11SQObjectPtrEixEj, %function
_ZNK8sqvectorI11SQObjectPtrEixEj:
	.fnstart
.LFB384:
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
	.section	.text._ZN8sqvectorI11SQObjectPtrE9push_backERKS0_,"axG",%progbits,_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_,comdat
	.align	2
	.weak	_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_, %function
_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_:
	.fnstart
.LFB387:
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
	bhi	.L808
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #1
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN8sqvectorI11SQObjectPtrE8_reallocEj(PLT)
.L808:
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
	beq	.L809
	mov	r0, r4
	ldr	r1, [r7]
	bl	_ZN11SQObjectPtrC1ERKS_(PLT)
	mov	r3, r4
	b	.L810
.L809:
	mov	r3, r4
.L810:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_, .-_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_
	.section	.text._ZNK8sqvectorI13SQClassMemberEixEj,"axG",%progbits,_ZNK8sqvectorI13SQClassMemberEixEj,comdat
	.align	2
	.weak	_ZNK8sqvectorI13SQClassMemberEixEj
	.thumb
	.thumb_func
	.type	_ZNK8sqvectorI13SQClassMemberEixEj, %function
_ZNK8sqvectorI13SQClassMemberEixEj:
	.fnstart
.LFB394:
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
	lsls	r3, r3, #4
	add	r3, r3, r2
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNK8sqvectorI13SQClassMemberEixEj, .-_ZNK8sqvectorI13SQClassMemberEixEj
	.section	.text._ZNK8sqvectorI13SQClassMemberE4sizeEv,"axG",%progbits,_ZNK8sqvectorI13SQClassMemberE4sizeEv,comdat
	.align	2
	.weak	_ZNK8sqvectorI13SQClassMemberE4sizeEv
	.thumb
	.thumb_func
	.type	_ZNK8sqvectorI13SQClassMemberE4sizeEv, %function
_ZNK8sqvectorI13SQClassMemberE4sizeEv:
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
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNK8sqvectorI13SQClassMemberE4sizeEv, .-_ZNK8sqvectorI13SQClassMemberE4sizeEv
	.section	.text._ZN8sqvectorI15SQExceptionTrapED2Ev,"axG",%progbits,_ZN8sqvectorI15SQExceptionTrapED5Ev,comdat
	.align	2
	.weak	_ZN8sqvectorI15SQExceptionTrapED2Ev
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI15SQExceptionTrapED2Ev, %function
_ZN8sqvectorI15SQExceptionTrapED2Ev:
	.fnstart
.LFB400:
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
	beq	.L817
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L818
.L819:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L818:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bhi	.L819
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	lsls	r3, r3, #4
	mov	r0, r2
	mov	r1, r3
	bl	_Z10sq_vm_freePvj(PLT)
.L817:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN8sqvectorI15SQExceptionTrapED2Ev, .-_ZN8sqvectorI15SQExceptionTrapED2Ev
	.weak	_ZN8sqvectorI15SQExceptionTrapED1Ev
	.thumb_set _ZN8sqvectorI15SQExceptionTrapED1Ev,_ZN8sqvectorI15SQExceptionTrapED2Ev
	.section	.text._ZN8sqvectorIiED2Ev,"axG",%progbits,_ZN8sqvectorIiED5Ev,comdat
	.align	2
	.weak	_ZN8sqvectorIiED2Ev
	.thumb
	.thumb_func
	.type	_ZN8sqvectorIiED2Ev, %function
_ZN8sqvectorIiED2Ev:
	.fnstart
.LFB406:
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
	beq	.L822
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L823
.L824:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L823:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bhi	.L824
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	lsls	r3, r3, #2
	mov	r0, r2
	mov	r1, r3
	bl	_Z10sq_vm_freePvj(PLT)
.L822:
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
	.section	.text._ZNK8sqvectorI15SQExceptionTrapE3topEv,"axG",%progbits,_ZNK8sqvectorI15SQExceptionTrapE3topEv,comdat
	.align	2
	.weak	_ZNK8sqvectorI15SQExceptionTrapE3topEv
	.thumb
	.thumb_func
	.type	_ZNK8sqvectorI15SQExceptionTrapE3topEv, %function
_ZNK8sqvectorI15SQExceptionTrapE3topEv:
	.fnstart
.LFB409:
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
	add	r3, r3, #268435456
	subs	r3, r3, #1
	lsls	r3, r3, #4
	add	r3, r3, r2
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNK8sqvectorI15SQExceptionTrapE3topEv, .-_ZNK8sqvectorI15SQExceptionTrapE3topEv
	.section	.text._ZN8sqvectorI15SQExceptionTrapE9push_backERKS0_,"axG",%progbits,_ZN8sqvectorI15SQExceptionTrapE9push_backERKS0_,comdat
	.align	2
	.weak	_ZN8sqvectorI15SQExceptionTrapE9push_backERKS0_
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI15SQExceptionTrapE9push_backERKS0_, %function
_ZN8sqvectorI15SQExceptionTrapE9push_backERKS0_:
	.fnstart
.LFB410:
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
	bhi	.L829
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #1
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN8sqvectorI15SQExceptionTrapE8_reallocEj(PLT)
.L829:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	adds	r0, r3, #1
	ldr	r1, [r7, #4]
	str	r0, [r1, #4]
	lsls	r3, r3, #4
	add	r3, r3, r2
	movs	r0, #16
	mov	r1, r3
	bl	_ZnwjPv(PLT)
	mov	r4, r0
	cmp	r4, #0
	beq	.L830
	mov	r0, r4
	ldr	r1, [r7]
	bl	_ZN15SQExceptionTrapC1ERKS_(PLT)
	mov	r3, r4
	b	.L831
.L830:
	mov	r3, r4
.L831:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZN8sqvectorI15SQExceptionTrapE9push_backERKS0_, .-_ZN8sqvectorI15SQExceptionTrapE9push_backERKS0_
	.section	.text._ZN8sqvectorI15SQExceptionTrapE8pop_backEv,"axG",%progbits,_ZN8sqvectorI15SQExceptionTrapE8pop_backEv,comdat
	.align	2
	.weak	_ZN8sqvectorI15SQExceptionTrapE8pop_backEv
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI15SQExceptionTrapE8pop_backEv, %function
_ZN8sqvectorI15SQExceptionTrapE8pop_backEv:
	.fnstart
.LFB411:
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
	.size	_ZN8sqvectorI15SQExceptionTrapE8pop_backEv, .-_ZN8sqvectorI15SQExceptionTrapE8pop_backEv
	.section	.text._ZN8sqvectorI11SQObjectPtrE8_reallocEj,"axG",%progbits,_ZN8sqvectorI11SQObjectPtrE8_reallocEj,comdat
	.align	2
	.weak	_ZN8sqvectorI11SQObjectPtrE8_reallocEj
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI11SQObjectPtrE8_reallocEj, %function
_ZN8sqvectorI11SQObjectPtrE8_reallocEj:
	.fnstart
.LFB413:
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
	beq	.L835
	ldr	r3, [r7]
	b	.L836
.L835:
	movs	r3, #4
.L836:
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
	.section	.text._ZN8sqvectorI15SQExceptionTrapE8_reallocEj,"axG",%progbits,_ZN8sqvectorI15SQExceptionTrapE8_reallocEj,comdat
	.align	2
	.weak	_ZN8sqvectorI15SQExceptionTrapE8_reallocEj
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI15SQExceptionTrapE8_reallocEj, %function
_ZN8sqvectorI15SQExceptionTrapE8_reallocEj:
	.fnstart
.LFB416:
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
	beq	.L838
	ldr	r3, [r7]
	b	.L839
.L838:
	movs	r3, #4
.L839:
	str	r3, [r7]
	ldr	r3, [r7, #4]
	ldr	r1, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	lsls	r2, r3, #4
	ldr	r3, [r7]
	lsls	r3, r3, #4
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
	.size	_ZN8sqvectorI15SQExceptionTrapE8_reallocEj, .-_ZN8sqvectorI15SQExceptionTrapE8_reallocEj
	.global	_ZTV15SQNativeClosure
	.section	.data.rel.ro._ZTV15SQNativeClosure,"aw",%progbits
	.align	3
	.type	_ZTV15SQNativeClosure, %object
	.size	_ZTV15SQNativeClosure, 32
_ZTV15SQNativeClosure:
	.word	0
	.word	_ZTI15SQNativeClosure
	.word	_ZN15SQNativeClosureD1Ev
	.word	_ZN15SQNativeClosureD0Ev
	.word	_ZN15SQNativeClosure7ReleaseEv
	.word	_ZN15SQNativeClosure7GetTypeEv
	.word	_ZN15SQNativeClosure4MarkEPP13SQCollectable
	.word	_ZN15SQNativeClosure8FinalizeEv
	.global	_ZTV11SQGenerator
	.section	.data.rel.ro._ZTV11SQGenerator,"aw",%progbits
	.align	3
	.type	_ZTV11SQGenerator, %object
	.size	_ZTV11SQGenerator, 32
_ZTV11SQGenerator:
	.word	0
	.word	_ZTI11SQGenerator
	.word	_ZN11SQGeneratorD1Ev
	.word	_ZN11SQGeneratorD0Ev
	.word	_ZN11SQGenerator7ReleaseEv
	.word	_ZN11SQGenerator7GetTypeEv
	.word	_ZN11SQGenerator4MarkEPP13SQCollectable
	.word	_ZN11SQGenerator8FinalizeEv
	.global	_ZTV7SQOuter
	.section	.data.rel.ro._ZTV7SQOuter,"aw",%progbits
	.align	3
	.type	_ZTV7SQOuter, %object
	.size	_ZTV7SQOuter, 32
_ZTV7SQOuter:
	.word	0
	.word	_ZTI7SQOuter
	.word	_ZN7SQOuterD1Ev
	.word	_ZN7SQOuterD0Ev
	.word	_ZN7SQOuter7ReleaseEv
	.word	_ZN7SQOuter7GetTypeEv
	.word	_ZN7SQOuter4MarkEPP13SQCollectable
	.word	_ZN7SQOuter8FinalizeEv
	.global	_ZTV9SQClosure
	.section	.data.rel.ro._ZTV9SQClosure,"aw",%progbits
	.align	3
	.type	_ZTV9SQClosure, %object
	.size	_ZTV9SQClosure, 32
_ZTV9SQClosure:
	.word	0
	.word	_ZTI9SQClosure
	.word	_ZN9SQClosureD1Ev
	.word	_ZN9SQClosureD0Ev
	.word	_ZN9SQClosure7ReleaseEv
	.word	_ZN9SQClosure7GetTypeEv
	.word	_ZN9SQClosure4MarkEPP13SQCollectable
	.word	_ZN9SQClosure8FinalizeEv
	.global	_ZTV15SQFunctionProto
	.section	.data.rel.ro._ZTV15SQFunctionProto,"aw",%progbits
	.align	3
	.type	_ZTV15SQFunctionProto, %object
	.size	_ZTV15SQFunctionProto, 32
_ZTV15SQFunctionProto:
	.word	0
	.word	_ZTI15SQFunctionProto
	.word	_ZN15SQFunctionProtoD1Ev
	.word	_ZN15SQFunctionProtoD0Ev
	.word	_ZN15SQFunctionProto7ReleaseEv
	.word	_ZN15SQFunctionProto7GetTypeEv
	.word	_ZN15SQFunctionProto4MarkEPP13SQCollectable
	.word	_ZN15SQFunctionProto8FinalizeEv
	.global	_ZTV10SQUserData
	.section	.data.rel.ro._ZTV10SQUserData,"aw",%progbits
	.align	3
	.type	_ZTV10SQUserData, %object
	.size	_ZTV10SQUserData, 36
_ZTV10SQUserData:
	.word	0
	.word	_ZTI10SQUserData
	.word	_ZN10SQUserDataD1Ev
	.word	_ZN10SQUserDataD0Ev
	.word	_ZN10SQUserData7ReleaseEv
	.word	_ZN10SQUserData7GetTypeEv
	.word	_ZN10SQUserData4MarkEPP13SQCollectable
	.word	_ZN10SQUserData8FinalizeEv
	.word	_ZN11SQDelegable13GetMetaMethodEP4SQVM12SQMetaMethodR11SQObjectPtr
	.global	_ZTV7SQArray
	.section	.data.rel.ro._ZTV7SQArray,"aw",%progbits
	.align	3
	.type	_ZTV7SQArray, %object
	.size	_ZTV7SQArray, 32
_ZTV7SQArray:
	.word	0
	.word	_ZTI7SQArray
	.word	_ZN7SQArrayD1Ev
	.word	_ZN7SQArrayD0Ev
	.word	_ZN7SQArray7ReleaseEv
	.word	_ZN7SQArray7GetTypeEv
	.word	_ZN7SQArray4MarkEPP13SQCollectable
	.word	_ZN7SQArray8FinalizeEv
	.global	_ZTV8SQString
	.section	.data.rel.ro._ZTV8SQString,"aw",%progbits
	.align	3
	.type	_ZTV8SQString, %object
	.size	_ZTV8SQString, 20
_ZTV8SQString:
	.word	0
	.word	_ZTI8SQString
	.word	_ZN8SQStringD1Ev
	.word	_ZN8SQStringD0Ev
	.word	_ZN8SQString7ReleaseEv
	.global	_ZTV11SQDelegable
	.section	.data.rel.ro._ZTV11SQDelegable,"aw",%progbits
	.align	3
	.type	_ZTV11SQDelegable, %object
	.size	_ZTV11SQDelegable, 36
_ZTV11SQDelegable:
	.word	0
	.word	_ZTI11SQDelegable
	.word	_ZN11SQDelegableD1Ev
	.word	_ZN11SQDelegableD0Ev
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	_ZN11SQDelegable13GetMetaMethodEP4SQVM12SQMetaMethodR11SQObjectPtr
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
	.global	_ZTV9SQWeakRef
	.section	.data.rel.ro._ZTV9SQWeakRef,"aw",%progbits
	.align	3
	.type	_ZTV9SQWeakRef, %object
	.size	_ZTV9SQWeakRef, 20
_ZTV9SQWeakRef:
	.word	0
	.word	_ZTI9SQWeakRef
	.word	_ZN9SQWeakRefD1Ev
	.word	_ZN9SQWeakRefD0Ev
	.word	_ZN9SQWeakRef7ReleaseEv
	.section	.text._ZN9SQWeakRefD2Ev,"axG",%progbits,_ZN9SQWeakRefD5Ev,comdat
	.align	2
	.weak	_ZN9SQWeakRefD2Ev
	.thumb
	.thumb_func
	.type	_ZN9SQWeakRefD2Ev, %function
_ZN9SQWeakRefD2Ev:
	.fnstart
.LFB418:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r1, .L844
.LPIC53:
	add	r1, pc
	ldr	r3, [r7, #4]
	ldr	r2, .L844+4
	ldr	r2, [r1, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN12SQRefCountedD2Ev(PLT)
	movs	r3, #0
	cmp	r3, #0
	beq	.L842
	ldr	r0, [r7, #4]
	bl	_ZdlPv(PLT)
.L842:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L845:
	.align	2
.L844:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC53+4)
	.word	_ZTV9SQWeakRef(GOT)
	.fnend
	.size	_ZN9SQWeakRefD2Ev, .-_ZN9SQWeakRefD2Ev
	.weak	_ZN9SQWeakRefD1Ev
	.thumb_set _ZN9SQWeakRefD1Ev,_ZN9SQWeakRefD2Ev
	.section	.text._ZN9SQWeakRefD0Ev,"axG",%progbits,_ZN9SQWeakRefD0Ev,comdat
	.align	2
	.weak	_ZN9SQWeakRefD0Ev
	.thumb
	.thumb_func
	.type	_ZN9SQWeakRefD0Ev, %function
_ZN9SQWeakRefD0Ev:
	.fnstart
.LFB420:
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
	bl	_ZN9SQWeakRefD1Ev(PLT)
	ldr	r0, [r7, #4]
	bl	_ZdlPv(PLT)
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN9SQWeakRefD0Ev, .-_ZN9SQWeakRefD0Ev
	.global	_ZTV12SQRefCounted
	.section	.data.rel.ro._ZTV12SQRefCounted,"aw",%progbits
	.align	3
	.type	_ZTV12SQRefCounted, %object
	.size	_ZTV12SQRefCounted, 20
_ZTV12SQRefCounted:
	.word	0
	.word	_ZTI12SQRefCounted
	.word	_ZN12SQRefCountedD1Ev
	.word	_ZN12SQRefCountedD0Ev
	.word	__cxa_pure_virtual
	.global	_ZTI15SQNativeClosure
	.section	.data.rel.ro._ZTI15SQNativeClosure,"aw",%progbits
	.align	2
	.type	_ZTI15SQNativeClosure, %object
	.size	_ZTI15SQNativeClosure, 12
_ZTI15SQNativeClosure:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTS15SQNativeClosure
	.word	_ZTI13SQCollectable
	.global	_ZTS15SQNativeClosure
	.section	.rodata._ZTS15SQNativeClosure,"a",%progbits
	.align	2
	.type	_ZTS15SQNativeClosure, %object
	.size	_ZTS15SQNativeClosure, 18
_ZTS15SQNativeClosure:
	.ascii	"15SQNativeClosure\000"
	.global	_ZTI11SQGenerator
	.section	.data.rel.ro._ZTI11SQGenerator,"aw",%progbits
	.align	2
	.type	_ZTI11SQGenerator, %object
	.size	_ZTI11SQGenerator, 12
_ZTI11SQGenerator:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTS11SQGenerator
	.word	_ZTI13SQCollectable
	.global	_ZTS11SQGenerator
	.section	.rodata._ZTS11SQGenerator,"a",%progbits
	.align	2
	.type	_ZTS11SQGenerator, %object
	.size	_ZTS11SQGenerator, 14
_ZTS11SQGenerator:
	.ascii	"11SQGenerator\000"
	.global	_ZTI7SQOuter
	.section	.data.rel.ro._ZTI7SQOuter,"aw",%progbits
	.align	2
	.type	_ZTI7SQOuter, %object
	.size	_ZTI7SQOuter, 12
_ZTI7SQOuter:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTS7SQOuter
	.word	_ZTI13SQCollectable
	.global	_ZTS7SQOuter
	.section	.rodata._ZTS7SQOuter,"a",%progbits
	.align	2
	.type	_ZTS7SQOuter, %object
	.size	_ZTS7SQOuter, 9
_ZTS7SQOuter:
	.ascii	"7SQOuter\000"
	.global	_ZTI9SQClosure
	.section	.data.rel.ro._ZTI9SQClosure,"aw",%progbits
	.align	2
	.type	_ZTI9SQClosure, %object
	.size	_ZTI9SQClosure, 12
_ZTI9SQClosure:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTS9SQClosure
	.word	_ZTI13SQCollectable
	.global	_ZTS9SQClosure
	.section	.rodata._ZTS9SQClosure,"a",%progbits
	.align	2
	.type	_ZTS9SQClosure, %object
	.size	_ZTS9SQClosure, 11
_ZTS9SQClosure:
	.ascii	"9SQClosure\000"
	.global	_ZTI15SQFunctionProto
	.section	.data.rel.ro._ZTI15SQFunctionProto,"aw",%progbits
	.align	2
	.type	_ZTI15SQFunctionProto, %object
	.size	_ZTI15SQFunctionProto, 12
_ZTI15SQFunctionProto:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTS15SQFunctionProto
	.word	_ZTI13SQCollectable
	.global	_ZTS15SQFunctionProto
	.section	.rodata._ZTS15SQFunctionProto,"a",%progbits
	.align	2
	.type	_ZTS15SQFunctionProto, %object
	.size	_ZTS15SQFunctionProto, 18
_ZTS15SQFunctionProto:
	.ascii	"15SQFunctionProto\000"
	.global	_ZTI10SQUserData
	.section	.data.rel.ro._ZTI10SQUserData,"aw",%progbits
	.align	2
	.type	_ZTI10SQUserData, %object
	.size	_ZTI10SQUserData, 12
_ZTI10SQUserData:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTS10SQUserData
	.word	_ZTI11SQDelegable
	.global	_ZTS10SQUserData
	.section	.rodata._ZTS10SQUserData,"a",%progbits
	.align	2
	.type	_ZTS10SQUserData, %object
	.size	_ZTS10SQUserData, 13
_ZTS10SQUserData:
	.ascii	"10SQUserData\000"
	.global	_ZTI7SQArray
	.section	.data.rel.ro._ZTI7SQArray,"aw",%progbits
	.align	2
	.type	_ZTI7SQArray, %object
	.size	_ZTI7SQArray, 12
_ZTI7SQArray:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTS7SQArray
	.word	_ZTI13SQCollectable
	.global	_ZTS7SQArray
	.section	.rodata._ZTS7SQArray,"a",%progbits
	.align	2
	.type	_ZTS7SQArray, %object
	.size	_ZTS7SQArray, 9
_ZTS7SQArray:
	.ascii	"7SQArray\000"
	.global	_ZTI8SQString
	.section	.data.rel.ro._ZTI8SQString,"aw",%progbits
	.align	2
	.type	_ZTI8SQString, %object
	.size	_ZTI8SQString, 12
_ZTI8SQString:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTS8SQString
	.word	_ZTI12SQRefCounted
	.global	_ZTS8SQString
	.section	.rodata._ZTS8SQString,"a",%progbits
	.align	2
	.type	_ZTS8SQString, %object
	.size	_ZTS8SQString, 10
_ZTS8SQString:
	.ascii	"8SQString\000"
	.global	_ZTI11SQDelegable
	.section	.data.rel.ro._ZTI11SQDelegable,"aw",%progbits
	.align	2
	.type	_ZTI11SQDelegable, %object
	.size	_ZTI11SQDelegable, 12
_ZTI11SQDelegable:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTS11SQDelegable
	.word	_ZTI13SQCollectable
	.global	_ZTS11SQDelegable
	.section	.rodata._ZTS11SQDelegable,"a",%progbits
	.align	2
	.type	_ZTS11SQDelegable, %object
	.size	_ZTS11SQDelegable, 14
_ZTS11SQDelegable:
	.ascii	"11SQDelegable\000"
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
	.global	_ZTI9SQWeakRef
	.section	.data.rel.ro._ZTI9SQWeakRef,"aw",%progbits
	.align	2
	.type	_ZTI9SQWeakRef, %object
	.size	_ZTI9SQWeakRef, 12
_ZTI9SQWeakRef:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTS9SQWeakRef
	.word	_ZTI12SQRefCounted
	.global	_ZTS9SQWeakRef
	.section	.rodata._ZTS9SQWeakRef,"a",%progbits
	.align	2
	.type	_ZTS9SQWeakRef, %object
	.size	_ZTS9SQWeakRef, 11
_ZTS9SQWeakRef:
	.ascii	"9SQWeakRef\000"
	.global	_ZTI12SQRefCounted
	.section	.data.rel.ro._ZTI12SQRefCounted,"aw",%progbits
	.align	2
	.type	_ZTI12SQRefCounted, %object
	.size	_ZTI12SQRefCounted, 8
_ZTI12SQRefCounted:
	.word	_ZTVN10__cxxabiv117__class_type_infoE+8
	.word	_ZTS12SQRefCounted
	.global	_ZTS12SQRefCounted
	.section	.rodata._ZTS12SQRefCounted,"a",%progbits
	.align	2
	.type	_ZTS12SQRefCounted, %object
	.size	_ZTS12SQRefCounted, 15
_ZTS12SQRefCounted:
	.ascii	"12SQRefCounted\000"
	.section	.rodata._ZZ14TranslateIndexRK11SQObjectPtrE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZ14TranslateIndexRK11SQObjectPtrE19__PRETTY_FUNCTION__, %object
	.size	_ZZ14TranslateIndexRK11SQObjectPtrE19__PRETTY_FUNCTION__, 53
_ZZ14TranslateIndexRK11SQObjectPtrE19__PRETTY_FUNCTION__:
	.ascii	"SQUnsignedInteger TranslateIndex(const SQObjectPtr&"
	.ascii	")\000"
	.section	.rodata._ZZN11SQObjectPtrC1EP9SQWeakRefE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN11SQObjectPtrC1EP9SQWeakRefE19__PRETTY_FUNCTION__, %object
	.size	_ZZN11SQObjectPtrC1EP9SQWeakRefE19__PRETTY_FUNCTION__, 37
_ZZN11SQObjectPtrC1EP9SQWeakRefE19__PRETTY_FUNCTION__:
	.ascii	"SQObjectPtr::SQObjectPtr(SQWeakRef*)\000"
	.section	.rodata._ZZN11SQGenerator6ResumeEP4SQVMR11SQObjectPtrE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN11SQGenerator6ResumeEP4SQVMR11SQObjectPtrE19__PRETTY_FUNCTION__, %object
	.size	_ZZN11SQGenerator6ResumeEP4SQVMR11SQObjectPtrE19__PRETTY_FUNCTION__, 46
_ZZN11SQGenerator6ResumeEP4SQVMR11SQObjectPtrE19__PRETTY_FUNCTION__:
	.ascii	"bool SQGenerator::Resume(SQVM*, SQObjectPtr&)\000"
	.section	.rodata._ZZN11SQObjectPtrC1EP15SQFunctionProtoE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN11SQObjectPtrC1EP15SQFunctionProtoE19__PRETTY_FUNCTION__, %object
	.size	_ZZN11SQObjectPtrC1EP15SQFunctionProtoE19__PRETTY_FUNCTION__, 43
_ZZN11SQObjectPtrC1EP15SQFunctionProtoE19__PRETTY_FUNCTION__:
	.ascii	"SQObjectPtr::SQObjectPtr(SQFunctionProto*)\000"
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
