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
	.file	"sqcompiler.cpp"
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
	beq	.L17
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L17
	movs	r3, #1
	b	.L18
.L17:
	movs	r3, #0
.L18:
	cmp	r3, #0
	beq	.L19
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	mov	r0, r2
	blx	r3
.L19:
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
	bne	.L22
	ldr	r3, .L25
.LPIC0:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L25+4
.LPIC1:
	add	r3, pc
	mov	r1, r3
	movs	r2, #238
	ldr	r3, .L25+8
.LPIC2:
	add	r3, pc
	bl	__assert_fail(PLT)
.L22:
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
.L26:
	.align	2
.L25:
	.word	.LC0-(.LPIC0+4)
	.word	.LC1-(.LPIC1+4)
	.word	_ZZN11SQObjectPtrC1EP15SQFunctionProtoE19__PRETTY_FUNCTION__-(.LPIC2+4)
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
	beq	.L28
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L28
	movs	r3, #1
	b	.L29
.L28:
	movs	r3, #0
.L29:
	cmp	r3, #0
	beq	.L30
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	mov	r0, r2
	blx	r3
.L30:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQObjectPtraSEP15SQFunctionProto, .-_ZN11SQObjectPtraSEP15SQFunctionProto
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
	beq	.L39
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L39
	movs	r3, #1
	b	.L40
.L39:
	movs	r3, #0
.L40:
	cmp	r3, #0
	beq	.L41
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #4]
	mov	r0, r2
	blx	r3
.L41:
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
	beq	.L44
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #4]
	adds	r2, r2, #1
	str	r2, [r3, #4]
.L44:
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
	beq	.L56
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L56
	movs	r3, #1
	b	.L57
.L56:
	movs	r3, #0
.L57:
	cmp	r3, #0
	beq	.L55
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	mov	r0, r2
	blx	r3
.L55:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQObjectPtr4NullEv, .-_ZN11SQObjectPtr4NullEv
	.section	.text._ZN13SQInstructionC2E8SQOpcodeiiii,"axG",%progbits,_ZN13SQInstructionC5E8SQOpcodeiiii,comdat
	.align	2
	.weak	_ZN13SQInstructionC2E8SQOpcodeiiii
	.thumb
	.thumb_func
	.type	_ZN13SQInstructionC2E8SQOpcodeiiii, %function
_ZN13SQInstructionC2E8SQOpcodeiiii:
	.fnstart
.LFB131:
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
	.section	.text._ZN11SQFuncState14AddInstructionE8SQOpcodeiiii,"axG",%progbits,_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii,comdat
	.align	2
	.weak	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii
	.thumb
	.thumb_func
	.type	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii, %function
_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii:
	.fnstart
.LFB166:
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
	.section	.text._ZN11SQFuncState14GetInstructionEi,"axG",%progbits,_ZN11SQFuncState14GetInstructionEi,comdat
	.align	2
	.weak	_ZN11SQFuncState14GetInstructionEi
	.thumb
	.thumb_func
	.type	_ZN11SQFuncState14GetInstructionEi, %function
_ZN11SQFuncState14GetInstructionEi:
	.fnstart
.LFB167:
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
	add	r2, r3, #96
	ldr	r3, [r7]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI13SQInstructionEixEj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQFuncState14GetInstructionEi, .-_ZN11SQFuncState14GetInstructionEi
	.section	.text._ZN11SQFuncState15PopInstructionsEi,"axG",%progbits,_ZN11SQFuncState15PopInstructionsEi,comdat
	.align	2
	.weak	_ZN11SQFuncState15PopInstructionsEi
	.thumb
	.thumb_func
	.type	_ZN11SQFuncState15PopInstructionsEi, %function
_ZN11SQFuncState15PopInstructionsEi:
	.fnstart
.LFB168:
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
	b	.L66
.L67:
	ldr	r3, [r7, #4]
	adds	r3, r3, #96
	mov	r0, r3
	bl	_ZN8sqvectorI13SQInstructionE8pop_backEv(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L66:
	ldr	r2, [r7, #12]
	ldr	r3, [r7]
	cmp	r2, r3
	blt	.L67
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQFuncState15PopInstructionsEi, .-_ZN11SQFuncState15PopInstructionsEi
	.section	.text._ZN11SQFuncState9SnoozeOptEv,"axG",%progbits,_ZN11SQFuncState9SnoozeOptEv,comdat
	.align	2
	.weak	_ZN11SQFuncState9SnoozeOptEv
	.thumb
	.thumb_func
	.type	_ZN11SQFuncState9SnoozeOptEv, %function
_ZN11SQFuncState9SnoozeOptEv:
	.fnstart
.LFB169:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #232]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN11SQFuncState9SnoozeOptEv, .-_ZN11SQFuncState9SnoozeOptEv
	.section	.text._ZN11SQFuncState15AddDefaultParamEi,"axG",%progbits,_ZN11SQFuncState15AddDefaultParamEi,comdat
	.align	2
	.weak	_ZN11SQFuncState15AddDefaultParamEi
	.thumb
	.thumb_func
	.type	_ZN11SQFuncState15AddDefaultParamEi, %function
_ZN11SQFuncState15AddDefaultParamEi:
	.fnstart
.LFB170:
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
	add	r2, r3, #208
	mov	r3, r7
	mov	r0, r2
	mov	r1, r3
	bl	_ZN8sqvectorIiE9push_backERKi(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQFuncState15AddDefaultParamEi, .-_ZN11SQFuncState15AddDefaultParamEi
	.section	.text._ZN11SQFuncState13GetCurrentPosEv,"axG",%progbits,_ZN11SQFuncState13GetCurrentPosEv,comdat
	.align	2
	.weak	_ZN11SQFuncState13GetCurrentPosEv
	.thumb
	.thumb_func
	.type	_ZN11SQFuncState13GetCurrentPosEv, %function
_ZN11SQFuncState13GetCurrentPosEv:
	.fnstart
.LFB172:
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
	.section	.text._ZN10SQCompilerC2EP4SQVMPFiPvES2_PKcbb,"axG",%progbits,_ZN10SQCompilerC5EP4SQVMPFiPvES2_PKcbb,comdat
	.align	2
	.weak	_ZN10SQCompilerC2EP4SQVMPFiPvES2_PKcbb
	.thumb
	.thumb_func
	.type	_ZN10SQCompilerC2EP4SQVMPFiPvES2_PKcbb, %function
_ZN10SQCompilerC2EP4SQVMPFiPvES2_PKcbb:
	.fnstart
.LFB223:
	@ args = 12, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #28
	sub	sp, sp, #28
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r4, .L80
.LPIC3:
	add	r4, pc
	ldr	r3, [r7, #12]
	adds	r3, r3, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #16
	mov	r0, r3
.LEHB0:
	bl	_ZN7SQLexerC1Ev(PLT)
.LEHE0:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #776]
	ldr	r3, [r7, #12]
	add	r2, r3, #16
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #140]
	ldr	r1, .L80+4
	ldr	r1, [r4, r1]
	str	r1, [sp]
	ldr	r1, [r7, #12]
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
.LEHB1:
	bl	_ZN7SQLexer4InitEP13SQSharedStatePFiPvES2_PFvS2_PKcES2_(PLT)
	ldr	r3, [r7, #12]
	add	r4, r3, #8
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #140]
	mov	r0, r3
	ldr	r1, [r7, #32]
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEP8SQString(PLT)
.LEHE1:
	ldr	r3, [r7, #12]
	ldrb	r2, [r7, #40]
	strb	r2, [r3, #92]
	ldr	r3, [r7, #12]
	ldrb	r2, [r7, #36]
	strb	r2, [r3, #93]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #116]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #120]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #124]
	ldr	r3, [r7, #12]
	b	.L79
.L78:
	ldr	r3, [r7, #12]
	adds	r3, r3, #16
	mov	r0, r3
	bl	_ZN7SQLexerD1Ev(PLT)
	b	.L76
.L77:
.L76:
	ldr	r3, [r7, #12]
	adds	r3, r3, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB2:
	bl	__cxa_end_cleanup(PLT)
.LEHE2:
.L79:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L81:
	.align	2
.L80:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC3+4)
	.word	_ZN10SQCompiler10ThrowErrorEPvPKc(GOT)
	.global	__gxx_personality_v0
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA223:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE223-.LLSDACSB223
.LLSDACSB223:
	.uleb128 .LEHB0-.LFB223
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L77-.LFB223
	.uleb128 0
	.uleb128 .LEHB1-.LFB223
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L78-.LFB223
	.uleb128 0
	.uleb128 .LEHB2-.LFB223
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE223:
	.section	.text._ZN10SQCompilerC2EP4SQVMPFiPvES2_PKcbb,"axG",%progbits,_ZN10SQCompilerC5EP4SQVMPFiPvES2_PKcbb,comdat
	.fnend
	.size	_ZN10SQCompilerC2EP4SQVMPFiPvES2_PKcbb, .-_ZN10SQCompilerC2EP4SQVMPFiPvES2_PKcbb
	.weak	_ZN10SQCompilerC1EP4SQVMPFiPvES2_PKcbb
	.thumb_set _ZN10SQCompilerC1EP4SQVMPFiPvES2_PKcbb,_ZN10SQCompilerC2EP4SQVMPFiPvES2_PKcbb
	.section	.text._ZN10SQCompiler10ThrowErrorEPvPKc,"axG",%progbits,_ZN10SQCompiler10ThrowErrorEPvPKc,comdat
	.align	2
	.weak	_ZN10SQCompiler10ThrowErrorEPvPKc
	.thumb
	.thumb_func
	.type	_ZN10SQCompiler10ThrowErrorEPvPKc, %function
_ZN10SQCompiler10ThrowErrorEPvPKc:
	.fnstart
.LFB225:
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
	ldr	r0, [r7, #12]
	ldr	r1, [r7]
	bl	_ZN10SQCompiler5ErrorEPKcz(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN10SQCompiler10ThrowErrorEPvPKc, .-_ZN10SQCompiler10ThrowErrorEPvPKc
	.section	.text._ZN10SQCompiler5ErrorEPKcz,"axG",%progbits,_ZN10SQCompiler5ErrorEPKcz,comdat
	.align	2
	.weak	_ZN10SQCompiler5ErrorEPKcz
	.thumb
	.thumb_func
	.type	_ZN10SQCompiler5ErrorEPKcz, %function
_ZN10SQCompiler5ErrorEPKcz:
	.fnstart
.LFB226:
	@ args = 4, pretend = 12, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 1
	push	{r1, r2, r3}
	push	{r7, lr}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	add	r3, r7, #32
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	adds	r3, r3, #124
	mov	r0, r3
	mov	r1, #256
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #12]
	bl	vsnprintf(PLT)
	ldr	r3, [r7, #4]
	add	r3, r3, #384
	mov	r0, r3
	movs	r1, #1
	bl	longjmp(PLT)
	.cantunwind
	.fnend
	.size	_ZN10SQCompiler5ErrorEPKcz, .-_ZN10SQCompiler5ErrorEPKcz
	.section	.text._ZN10SQCompiler3LexEv,"axG",%progbits,_ZN10SQCompiler3LexEv,comdat
	.align	2
	.weak	_ZN10SQCompiler3LexEv
	.thumb
	.thumb_func
	.type	_ZN10SQCompiler3LexEv, %function
_ZN10SQCompiler3LexEv:
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
	ldr	r3, [r7, #4]
	adds	r3, r3, #16
	mov	r0, r3
	bl	_ZN7SQLexer3LexEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3]
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN10SQCompiler3LexEv, .-_ZN10SQCompiler3LexEv
	.section	.rodata
	.align	2
.LC2:
	.ascii	"IDENTIFIER\000"
	.align	2
.LC3:
	.ascii	"STRING_LITERAL\000"
	.align	2
.LC4:
	.ascii	"INTEGER\000"
	.align	2
.LC5:
	.ascii	"FLOAT\000"
	.align	2
.LC6:
	.ascii	"expected '%s'\000"
	.align	2
.LC7:
	.ascii	"expected '%c'\000"
	.section	.text._ZN10SQCompiler6ExpectEi,"axG",%progbits,_ZN10SQCompiler6ExpectEi,comdat
	.align	2
	.weak	_ZN10SQCompiler6ExpectEi
	.thumb
	.thumb_func
	.type	_ZN10SQCompiler6ExpectEi, %function
_ZN10SQCompiler6ExpectEi:
	.fnstart
.LFB228:
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
	ldr	r3, [r7, #8]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	beq	.L86
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	cmp	r3, #310
	bne	.L87
	ldr	r3, [r7, #4]
	cmp	r3, #258
	bne	.L87
	nop
	b	.L86
.L87:
	ldr	r3, [r7, #4]
	cmp	r3, #255
	ble	.L89
	ldr	r3, [r7, #4]
	sub	r3, r3, #258
	cmp	r3, #3
	bhi	.L90
	adr	r1, .L92
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L92:
	.word	.L91+1-.L92
	.word	.L93+1-.L92
	.word	.L94+1-.L92
	.word	.L95+1-.L92
.L91:
	ldr	r3, .L111
.LPIC4:
	add	r3, pc
	str	r3, [r7, #60]
	b	.L96
.L93:
	ldr	r3, .L111+4
.LPIC5:
	add	r3, pc
	str	r3, [r7, #60]
	b	.L96
.L94:
	ldr	r3, .L111+8
.LPIC6:
	add	r3, pc
	str	r3, [r7, #60]
	b	.L96
.L95:
	ldr	r3, .L111+12
.LPIC7:
	add	r3, pc
	str	r3, [r7, #60]
	b	.L96
.L90:
	ldr	r3, [r7, #8]
	adds	r3, r3, #16
	mov	r0, r3
	ldr	r1, [r7, #4]
.LEHB3:
	bl	_ZN7SQLexer7Tok2StrEi(PLT)
.LEHE3:
	mov	r3, r0
	str	r3, [r7, #60]
.L96:
	ldr	r0, [r7, #8]
	ldr	r3, .L111+16
.LPIC8:
	add	r3, pc
	mov	r1, r3
	ldr	r2, [r7, #60]
	bl	_ZN10SQCompiler5ErrorEPKcz(PLT)
.L89:
	ldr	r0, [r7, #8]
	ldr	r3, .L111+20
.LPIC9:
	add	r3, pc
	mov	r1, r3
	ldr	r2, [r7, #4]
	bl	_ZN10SQCompiler5ErrorEPKcz(PLT)
.L86:
	add	r3, r7, #20
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #4]
	sub	r3, r3, #258
	cmp	r3, #3
	bhi	.L97
	adr	r1, .L99
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L99:
	.word	.L98+1-.L99
	.word	.L100+1-.L99
	.word	.L101+1-.L99
	.word	.L102+1-.L99
.L98:
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #44]
	add	r1, r7, #28
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	mov	r3, #-1
.LEHB4:
	bl	_ZN11SQFuncState12CreateStringEPKci(PLT)
	add	r2, r7, #20
	add	r3, r7, #28
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERK11tagSQObject(PLT)
	b	.L97
.L100:
	ldr	r3, [r7, #8]
	ldr	r5, [r3, #4]
	ldr	r3, [r7, #8]
	ldr	r4, [r3, #44]
	ldr	r3, [r7, #8]
	adds	r3, r3, #72
	mov	r0, r3
	bl	_ZNK8sqvectorIcE4sizeEv(PLT)
	mov	r3, r0
	subs	r3, r3, #1
	add	r2, r7, #36
	mov	r0, r2
	mov	r1, r5
	mov	r2, r4
	bl	_ZN11SQFuncState12CreateStringEPKci(PLT)
	add	r2, r7, #20
	add	r3, r7, #36
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERK11tagSQObject(PLT)
.LEHE4:
	b	.L97
.L101:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #48]
	add	r2, r7, #44
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r2, r7, #20
	add	r3, r7, #44
	mov	r0, r2
	mov	r1, r3
.LEHB5:
	bl	_ZN11SQObjectPtraSERKS_(PLT)
.LEHE5:
	add	r3, r7, #44
	mov	r0, r3
.LEHB6:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE6:
	b	.L97
.L102:
	ldr	r3, [r7, #8]
	flds	s15, [r3, #52]
	add	r3, r7, #52
	mov	r0, r3
	fcpys	s0, s15
	bl	_ZN11SQObjectPtrC1Ef(PLT)
	add	r2, r7, #20
	add	r3, r7, #52
	mov	r0, r2
	mov	r1, r3
.LEHB7:
	bl	_ZN11SQObjectPtraSERKS_(PLT)
.LEHE7:
	add	r3, r7, #52
	mov	r0, r3
.LEHB8:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	nop
.L97:
	ldr	r0, [r7, #8]
	bl	_ZN10SQCompiler3LexEv(PLT)
.LEHE8:
	ldr	r3, [r7, #12]
	add	r2, r7, #20
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	add	r3, r7, #20
	mov	r0, r3
.LEHB9:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE9:
	b	.L110
.L108:
	add	r3, r7, #44
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L105
.L109:
	add	r3, r7, #52
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L105
.L107:
.L105:
	add	r3, r7, #20
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB10:
	bl	__cxa_end_cleanup(PLT)
.LEHE10:
.L110:
	ldr	r0, [r7, #12]
	adds	r7, r7, #64
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L112:
	.align	2
.L111:
	.word	.LC2-(.LPIC4+4)
	.word	.LC3-(.LPIC5+4)
	.word	.LC4-(.LPIC6+4)
	.word	.LC5-(.LPIC7+4)
	.word	.LC6-(.LPIC8+4)
	.word	.LC7-(.LPIC9+4)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA228:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE228-.LLSDACSB228
.LLSDACSB228:
	.uleb128 .LEHB3-.LFB228
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB228
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L107-.LFB228
	.uleb128 0
	.uleb128 .LEHB5-.LFB228
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L108-.LFB228
	.uleb128 0
	.uleb128 .LEHB6-.LFB228
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L107-.LFB228
	.uleb128 0
	.uleb128 .LEHB7-.LFB228
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L109-.LFB228
	.uleb128 0
	.uleb128 .LEHB8-.LFB228
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L107-.LFB228
	.uleb128 0
	.uleb128 .LEHB9-.LFB228
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB10-.LFB228
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSE228:
	.section	.text._ZN10SQCompiler6ExpectEi,"axG",%progbits,_ZN10SQCompiler6ExpectEi,comdat
	.fnend
	.size	_ZN10SQCompiler6ExpectEi, .-_ZN10SQCompiler6ExpectEi
	.section	.text._ZN10SQCompiler16IsEndOfStatementEv,"axG",%progbits,_ZN10SQCompiler16IsEndOfStatementEv,comdat
	.align	2
	.weak	_ZN10SQCompiler16IsEndOfStatementEv
	.thumb
	.thumb_func
	.type	_ZN10SQCompiler16IsEndOfStatementEv, %function
_ZN10SQCompiler16IsEndOfStatementEv:
	.fnstart
.LFB229:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	cmp	r3, #10
	beq	.L114
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L114
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #125
	beq	.L114
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #59
	bne	.L115
.L114:
	movs	r3, #1
	b	.L116
.L115:
	movs	r3, #0
.L116:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN10SQCompiler16IsEndOfStatementEv, .-_ZN10SQCompiler16IsEndOfStatementEv
	.section	.rodata
	.align	2
.LC8:
	.ascii	"end of statement expected (; or lf)\000"
	.section	.text._ZN10SQCompiler17OptionalSemicolonEv,"axG",%progbits,_ZN10SQCompiler17OptionalSemicolonEv,comdat
	.align	2
	.weak	_ZN10SQCompiler17OptionalSemicolonEv
	.thumb
	.thumb_func
	.type	_ZN10SQCompiler17OptionalSemicolonEv, %function
_ZN10SQCompiler17OptionalSemicolonEv:
	.fnstart
.LFB230:
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
	cmp	r3, #59
	bne	.L119
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler3LexEv(PLT)
	b	.L118
.L119:
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler16IsEndOfStatementEv(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L118
	ldr	r0, [r7, #4]
	ldr	r3, .L121
.LPIC10:
	add	r3, pc
	mov	r1, r3
	bl	_ZN10SQCompiler5ErrorEPKcz(PLT)
.L118:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L122:
	.align	2
.L121:
	.word	.LC8-(.LPIC10+4)
	.fnend
	.size	_ZN10SQCompiler17OptionalSemicolonEv, .-_ZN10SQCompiler17OptionalSemicolonEv
	.section	.text._ZN10SQCompiler26MoveIfCurrentTargetIsLocalEv,"axG",%progbits,_ZN10SQCompiler26MoveIfCurrentTargetIsLocalEv,comdat
	.align	2
	.weak	_ZN10SQCompiler26MoveIfCurrentTargetIsLocalEv
	.thumb
	.thumb_func
	.type	_ZN10SQCompiler26MoveIfCurrentTargetIsLocalEv, %function
_ZN10SQCompiler26MoveIfCurrentTargetIsLocalEv:
	.fnstart
.LFB231:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #28
	sub	sp, sp, #28
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9TopTargetEv(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQFuncState7IsLocalEj(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L123
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9PopTargetEv(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #-1
	bl	_ZN11SQFuncState10PushTargetEi(PLT)
	mov	r3, r0
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r4
	movs	r1, #10
	mov	r2, r3
	ldr	r3, [r7, #12]
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
.L123:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZN10SQCompiler26MoveIfCurrentTargetIsLocalEv, .-_ZN10SQCompiler26MoveIfCurrentTargetIsLocalEv
	.section	.rodata
	.align	2
.LC9:
	.ascii	"main\000"
	.align	2
.LC10:
	.ascii	"this\000"
	.align	2
.LC11:
	.ascii	"vargv\000"
	.align	2
.LC12:
	.ascii	"unknown\000"
	.section	.text._ZN10SQCompiler7CompileER11SQObjectPtr,"axG",%progbits,_ZN10SQCompiler7CompileER11SQObjectPtr,comdat
	.align	2
	.weak	_ZN10SQCompiler7CompileER11SQObjectPtr
	.thumb
	.thumb_func
	.type	_ZN10SQCompiler7CompileER11SQObjectPtr, %function
_ZN10SQCompiler7CompileER11SQObjectPtr:
	.fnstart
.LFB232:
	@ args = 0, pretend = 0, frame = 296
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #304
	sub	sp, sp, #304
	.setfp r7, sp, #8
	add	r7, sp, #8
	adds	r3, r7, #4
	str	r0, [r3]
	mov	r3, r7
	str	r1, [r3]
	ldr	r4, .L139
.LPIC11:
	add	r4, pc
	adds	r3, r7, #4
	ldr	r3, [r3]
	movs	r2, #1
	str	r2, [r3, #96]
	adds	r3, r7, #4
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [r3, #100]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #776]
	ldr	r3, [r3, #140]
	add	r2, r7, #12
	adds	r1, r7, #4
	ldr	r1, [r1]
	str	r1, [sp]
	mov	r0, r2
	mov	r1, r3
	movs	r2, #0
	ldr	r3, .L139+4
	ldr	r3, [r4, r3]
.LEHB11:
	bl	_ZN11SQFuncStateC1EP13SQSharedStatePS_PFvPvPKcES3_(PLT)
.LEHE11:
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #776]
	ldr	r3, [r3, #140]
	mov	r0, r3
	ldr	r3, .L139+8
.LPIC12:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
.LEHB12:
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
	mov	r3, r0
	add	r2, r7, #12
	adds	r2, r2, #136
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEP8SQString(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	add	r2, r7, #12
	str	r2, [r3, #4]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r4, [r3, #4]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	add	r2, r7, #276
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L139+12
.LPIC13:
	add	r3, pc
	mov	r2, r3
	mov	r3, #-1
	bl	_ZN11SQFuncState12CreateStringEPKci(PLT)
	add	r3, r7, #276
	mov	r0, r4
	mov	r1, r3
	bl	_ZN11SQFuncState12AddParameterERK11tagSQObject(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r4, [r3, #4]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	add	r2, r7, #284
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L139+16
.LPIC14:
	add	r3, pc
	mov	r2, r3
	mov	r3, #-1
	bl	_ZN11SQFuncState12CreateStringEPKci(PLT)
	add	r3, r7, #284
	mov	r0, r4
	mov	r1, r3
	bl	_ZN11SQFuncState12AddParameterERK11tagSQObject(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	movs	r2, #1
	strb	r2, [r3, #32]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	add	r2, r3, #144
	adds	r3, r7, #4
	ldr	r3, [r3]
	adds	r3, r3, #8
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState12GetStackSizeEv(PLT)
	mov	r3, r0
	str	r3, [r7, #292]
	adds	r3, r7, #4
	ldr	r3, [r3]
	add	r3, r3, #384
	mov	r0, r3
	bl	_setjmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L126
	adds	r3, r7, #4
	ldr	r0, [r3]
	bl	_ZN10SQCompiler3LexEv(PLT)
	b	.L127
.L128:
	adds	r3, r7, #4
	ldr	r0, [r3]
	movs	r1, #1
	bl	_ZN10SQCompiler9StatementEb(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #28]
	cmp	r3, #125
	beq	.L127
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #28]
	cmp	r3, #59
	beq	.L127
	adds	r3, r7, #4
	ldr	r0, [r3]
	bl	_ZN10SQCompiler17OptionalSemicolonEv(PLT)
.L127:
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3]
	cmp	r3, #0
	bgt	.L128
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r1, [r7, #292]
	bl	_ZN11SQFuncState12SetStackSizeEi(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r1, [r3, #4]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldrb	r3, [r3, #92]	@ zero_extendqisi2
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	movs	r3, #1
	bl	_ZN11SQFuncState12AddLineInfosEibb(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r3
	movs	r1, #23
	movs	r2, #255
	movs	r3, #0
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	mov	r0, r3
	movs	r1, #0
	bl	_ZN11SQFuncState12SetStackSizeEi(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState10BuildProtoEv(PLT)
	mov	r3, r0
	mov	r2, r7
	ldr	r0, [r2]
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEP15SQFunctionProto(PLT)
	b	.L137
.L126:
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldrb	r3, [r3, #93]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L130
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #776]
	ldr	r3, [r3, #140]
	ldr	r3, [r3, #160]
	cmp	r3, #0
	beq	.L130
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #776]
	ldr	r3, [r3, #140]
	ldr	r4, [r3, #160]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r1, [r3, #776]
	adds	r3, r7, #4
	ldr	r3, [r3]
	add	r2, r3, #124
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r0, [r3, #8]
	movs	r3, #16
	movt	r3, 2048
	cmp	r0, r3
	bne	.L131
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #12]
	adds	r3, r3, #28
	b	.L132
.L131:
	ldr	r3, .L139+20
.LPIC15:
	add	r3, pc
.L132:
	adds	r0, r7, #4
	ldr	r0, [r0]
	ldr	r5, [r0, #32]
	adds	r0, r7, #4
	ldr	r0, [r0]
	ldr	r0, [r0, #40]
	str	r0, [sp]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	mov	r3, r5
	blx	r4
.L130:
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #776]
	add	r4, r3, #56
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #776]
	ldr	r2, [r3, #140]
	adds	r3, r7, #4
	ldr	r3, [r3]
	adds	r3, r3, #124
	mov	r0, r2
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEP8SQString(PLT)
.LEHE12:
	movs	r4, #0
	b	.L133
.L137:
	movs	r4, #1
.L133:
	add	r3, r7, #12
	mov	r0, r3
.LEHB13:
	bl	_ZN11SQFuncStateD1Ev(PLT)
.LEHE13:
	mov	r3, r4
	b	.L138
.L136:
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN11SQFuncStateD1Ev(PLT)
.LEHB14:
	bl	__cxa_end_cleanup(PLT)
.LEHE14:
.L138:
	mov	r0, r3
	add	r7, r7, #296
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L140:
	.align	2
.L139:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC11+4)
	.word	_ZN10SQCompiler10ThrowErrorEPvPKc(GOT)
	.word	.LC9-(.LPIC12+4)
	.word	.LC10-(.LPIC13+4)
	.word	.LC11-(.LPIC14+4)
	.word	.LC12-(.LPIC15+4)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA232:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE232-.LLSDACSB232
.LLSDACSB232:
	.uleb128 .LEHB11-.LFB232
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB12-.LFB232
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L136-.LFB232
	.uleb128 0
	.uleb128 .LEHB13-.LFB232
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB14-.LFB232
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
.LLSDACSE232:
	.section	.text._ZN10SQCompiler7CompileER11SQObjectPtr,"axG",%progbits,_ZN10SQCompiler7CompileER11SQObjectPtr,comdat
	.fnend
	.size	_ZN10SQCompiler7CompileER11SQObjectPtr, .-_ZN10SQCompiler7CompileER11SQObjectPtr
	.section	.text._ZN10SQCompiler10StatementsEv,"axG",%progbits,_ZN10SQCompiler10StatementsEv,comdat
	.align	2
	.weak	_ZN10SQCompiler10StatementsEv
	.thumb
	.thumb_func
	.type	_ZN10SQCompiler10StatementsEv, %function
_ZN10SQCompiler10StatementsEv:
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
	b	.L142
.L144:
	ldr	r0, [r7, #4]
	movs	r1, #1
	bl	_ZN10SQCompiler9StatementEb(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	cmp	r3, #125
	beq	.L142
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	cmp	r3, #59
	beq	.L142
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler17OptionalSemicolonEv(PLT)
.L142:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #125
	beq	.L141
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	movw	r3, #301
	cmp	r2, r3
	beq	.L141
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #300
	bne	.L144
.L141:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN10SQCompiler10StatementsEv, .-_ZN10SQCompiler10StatementsEv
	.section	.rodata
	.align	2
.LC13:
	.ascii	"'break' has to be in a loop block\000"
	.align	2
.LC14:
	.ascii	"'continue' has to be in a loop block\000"
	.section	.text._ZN10SQCompiler9StatementEb,"axG",%progbits,_ZN10SQCompiler9StatementEb,comdat
	.align	2
	.weak	_ZN10SQCompiler9StatementEb
	.thumb
	.thumb_func
	.type	_ZN10SQCompiler9StatementEb, %function
_ZN10SQCompiler9StatementEb:
	.fnstart
.LFB234:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #96
	sub	sp, sp, #96
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #92]	@ zero_extendqisi2
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	movs	r3, #0
.LEHB15:
	bl	_ZN11SQFuncState12AddLineInfosEibb(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movw	r2, #283
	cmp	r3, r2
	beq	.L147
	cmp	r3, #284
	bge	.L148
	cmp	r3, #274
	beq	.L149
	cmp	r3, #274
	bgt	.L150
	cmp	r3, #123
	beq	.L151
	cmp	r3, #123
	bgt	.L152
	cmp	r3, #59
	beq	.L153
	b	.L146
.L152:
	cmp	r3, #268
	beq	.L154
	cmp	r3, #272
	beq	.L155
	b	.L146
.L150:
	cmp	r3, #276
	beq	.L156
	cmp	r3, #276
	blt	.L157
	movw	r2, #277
	cmp	r3, r2
	beq	.L158
	movw	r2, #279
	cmp	r3, r2
	beq	.L159
	b	.L146
.L148:
	movw	r2, #293
	cmp	r3, r2
	beq	.L160
	cmp	r3, #294
	bge	.L161
	cmp	r3, #286
	beq	.L162
	cmp	r3, #286
	bgt	.L163
	movw	r2, #285
	cmp	r3, r2
	beq	.L164
	b	.L146
.L163:
	movw	r2, #291
	cmp	r3, r2
	beq	.L165
	cmp	r3, #292
	beq	.L162
	b	.L146
.L161:
	movw	r2, #307
	cmp	r3, r2
	beq	.L166
	cmp	r3, #308
	bge	.L167
	movw	r2, #295
	cmp	r3, r2
	beq	.L168
	b	.L146
.L167:
	movw	r2, #323
	cmp	r3, r2
	beq	.L169
	cmp	r3, #324
	beq	.L170
	b	.L146
.L153:
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler3LexEv(PLT)
	b	.L171
.L155:
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler11IfStatementEv(PLT)
	b	.L171
.L149:
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler14WhileStatementEv(PLT)
	b	.L171
.L158:
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler16DoWhileStatementEv(PLT)
	b	.L171
.L156:
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler12ForStatementEv(PLT)
	b	.L171
.L159:
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler16ForEachStatementEv(PLT)
	b	.L171
.L154:
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler15SwitchStatementEv(PLT)
	b	.L171
.L147:
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler18LocalDeclStatementEv(PLT)
	b	.L171
.L162:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #286
	bne	.L172
	movs	r3, #23
	str	r3, [r7, #84]
	b	.L173
.L172:
	movs	r3, #49
	str	r3, [r7, #84]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	movs	r2, #1
	strb	r2, [r3, #33]
.L173:
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler3LexEv(PLT)
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler16IsEndOfStatementEv(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L174
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState13GetCurrentPosEv(PLT)
	mov	r3, r0
	adds	r3, r3, #1
	str	r3, [r7, #80]
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler9CommaExprEv(PLT)
	ldr	r3, [r7, #84]
	cmp	r3, #23
	bne	.L175
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #224]
	cmp	r3, #0
	ble	.L175
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #224]
	movs	r1, #0
	str	r1, [sp]
	movs	r1, #0
	str	r1, [sp, #4]
	mov	r0, r2
	movs	r1, #56
	mov	r2, r3
	movs	r3, #0
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
.L175:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #80]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r5, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9PopTargetEv(PLT)
	mov	r4, r0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState12GetStackSizeEv(PLT)
	mov	r3, r0
	str	r3, [sp]
	movs	r3, #0
	str	r3, [sp, #4]
	mov	r0, r5
	ldr	r1, [r7, #84]
	movs	r2, #1
	mov	r3, r4
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	b	.L171
.L174:
	ldr	r3, [r7, #84]
	cmp	r3, #23
	bne	.L177
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #224]
	cmp	r3, #0
	ble	.L177
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #224]
	movs	r1, #0
	str	r1, [sp]
	movs	r1, #0
	str	r1, [sp, #4]
	mov	r0, r2
	movs	r1, #56
	mov	r2, r3
	movs	r3, #0
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
.L177:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r2, #-1
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState12GetStackSizeEv(PLT)
	mov	r3, r0
	str	r3, [sp]
	movs	r3, #0
	str	r3, [sp, #4]
	mov	r0, r4
	ldr	r1, [r7, #84]
	movs	r2, #255
	movs	r3, #0
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	b	.L171
.L157:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	adds	r3, r3, #184
	mov	r0, r3
	bl	_ZNK8sqvectorIiE4sizeEv(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L178
	ldr	r0, [r7, #4]
	ldr	r3, .L193
.LPIC16:
	add	r3, pc
	mov	r1, r3
	bl	_ZN10SQCompiler5ErrorEPKcz(PLT)
.L178:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	adds	r3, r3, #184
	mov	r0, r3
	bl	_ZNK8sqvectorIiE3topEv(PLT)
	mov	r3, r0
	ldr	r3, [r3]
	cmp	r3, #0
	ite	gt
	movgt	r3, #1
	movle	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L179
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	adds	r3, r3, #184
	mov	r0, r3
	bl	_ZNK8sqvectorIiE3topEv(PLT)
	mov	r3, r0
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r4
	movs	r1, #56
	mov	r2, r3
	movs	r3, #0
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
.L179:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState12GetStackSizeEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #120]
	cmp	r2, r3
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L180
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #120]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQFuncState11CountOutersEi(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L180
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #120]
	movs	r1, #0
	str	r1, [sp]
	movs	r1, #0
	str	r1, [sp, #4]
	mov	r0, r2
	movs	r1, #60
	movs	r2, #0
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
.L180:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r3
	movs	r1, #28
	movs	r2, #0
	movw	r3, #64302
	movt	r3, 65535
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	add	r4, r3, #36
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState13GetCurrentPosEv(PLT)
	mov	r3, r0
	str	r3, [r7, #40]
	add	r3, r7, #40
	mov	r0, r4
	mov	r1, r3
	bl	_ZN8sqvectorIiE9push_backERKi(PLT)
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler3LexEv(PLT)
	b	.L171
.L165:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	adds	r3, r3, #196
	mov	r0, r3
	bl	_ZNK8sqvectorIiE4sizeEv(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L181
	ldr	r0, [r7, #4]
	ldr	r3, .L193+4
.LPIC17:
	add	r3, pc
	mov	r1, r3
	bl	_ZN10SQCompiler5ErrorEPKcz(PLT)
.L181:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	adds	r3, r3, #196
	mov	r0, r3
	bl	_ZNK8sqvectorIiE3topEv(PLT)
	mov	r3, r0
	ldr	r3, [r3]
	cmp	r3, #0
	ite	gt
	movgt	r3, #1
	movle	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L182
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	adds	r3, r3, #196
	mov	r0, r3
	bl	_ZNK8sqvectorIiE3topEv(PLT)
	mov	r3, r0
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r4
	movs	r1, #56
	mov	r2, r3
	movs	r3, #0
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
.L182:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState12GetStackSizeEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #120]
	cmp	r2, r3
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L183
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #120]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQFuncState11CountOutersEi(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L183
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #120]
	movs	r1, #0
	str	r1, [sp]
	movs	r1, #0
	str	r1, [sp, #4]
	mov	r0, r2
	movs	r1, #60
	movs	r2, #0
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
.L183:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r3
	movs	r1, #28
	movs	r2, #0
	movw	r3, #64302
	movt	r3, 65535
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	add	r4, r3, #48
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState13GetCurrentPosEv(PLT)
	mov	r3, r0
	str	r3, [r7, #44]
	add	r3, r7, #44
	mov	r0, r4
	mov	r1, r3
	bl	_ZN8sqvectorIiE9push_backERKi(PLT)
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler3LexEv(PLT)
	b	.L171
.L164:
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler17FunctionStatementEv(PLT)
	b	.L171
.L166:
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler14ClassStatementEv(PLT)
	b	.L171
.L169:
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler13EnumStatementEv(PLT)
	b	.L171
.L151:
	ldr	r2, [r7, #4]
	add	r3, r7, #32
	adds	r2, r2, #116
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #228]
	ldr	r3, [r7, #4]
	str	r2, [r3, #116]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState12GetStackSizeEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #120]
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler3LexEv(PLT)
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler10StatementsEv(PLT)
	add	r3, r7, #48
	mov	r0, r3
	ldr	r1, [r7, #4]
	movs	r2, #125
	bl	_ZN10SQCompiler6ExpectEi(PLT)
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L184
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #228]
	str	r3, [r7, #76]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState12GetStackSizeEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #120]
	cmp	r2, r3
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L185
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #120]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQFuncState12SetStackSizeEi(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #228]
	ldr	r3, [r7, #76]
	cmp	r2, r3
	beq	.L185
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #120]
	movs	r1, #0
	str	r1, [sp]
	movs	r1, #0
	str	r1, [sp, #4]
	mov	r0, r2
	movs	r1, #60
	movs	r2, #0
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
.L185:
	ldr	r3, [r7, #4]
	adds	r3, r3, #116
	add	r2, r7, #32
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	b	.L171
.L184:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState12GetStackSizeEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #120]
	cmp	r2, r3
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L187
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #120]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQFuncState12SetStackSizeEi(PLT)
.L187:
	ldr	r3, [r7, #4]
	adds	r3, r3, #116
	add	r2, r7, #32
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	b	.L171
.L160:
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler17TryCatchStatementEv(PLT)
	b	.L171
.L168:
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler3LexEv(PLT)
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler9CommaExprEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9PopTargetEv(PLT)
	mov	r3, r0
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r4
	movs	r1, #57
	mov	r2, r3
	movs	r3, #0
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	b	.L171
.L170:
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler3LexEv(PLT)
	add	r3, r7, #24
	mov	r0, r3
	ldr	r1, [r7, #4]
	mov	r2, #258
	bl	_ZN10SQCompiler6ExpectEi(PLT)
	add	r3, r7, #56
	mov	r0, r3
	ldr	r1, [r7, #4]
	movs	r2, #61
	bl	_ZN10SQCompiler6ExpectEi(PLT)
	add	r3, r7, #16
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	_ZN10SQCompiler12ExpectScalarEv(PLT)
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler17OptionalSemicolonEv(PLT)
.LEHE15:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #776]
	ldr	r3, [r3, #140]
	ldr	r3, [r3, #56]
	str	r3, [r7, #72]
	add	r2, r7, #8
	add	r3, r7, #24
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1ERK11tagSQObject(PLT)
	add	r2, r7, #64
	add	r3, r7, #16
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1ERK11tagSQObject(PLT)
	add	r2, r7, #8
	add	r3, r7, #64
	ldr	r0, [r7, #72]
	mov	r1, r2
	mov	r2, r3
.LEHB16:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE16:
	add	r3, r7, #64
	mov	r0, r3
.LEHB17:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
.LEHE17:
	add	r3, r7, #8
	mov	r0, r3
.LEHB18:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L171
.L146:
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler9CommaExprEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState13DiscardTargetEv(PLT)
.LEHE18:
	nop
.L171:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9SnoozeOptEv(PLT)
	b	.L192
.L191:
	add	r3, r7, #64
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L189
.L190:
.L189:
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB19:
	bl	__cxa_end_cleanup(PLT)
.LEHE19:
.L192:
	adds	r7, r7, #88
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L194:
	.align	2
.L193:
	.word	.LC13-(.LPIC16+4)
	.word	.LC14-(.LPIC17+4)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA234:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE234-.LLSDACSB234
.LLSDACSB234:
	.uleb128 .LEHB15-.LFB234
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB16-.LFB234
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L191-.LFB234
	.uleb128 0
	.uleb128 .LEHB17-.LFB234
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L190-.LFB234
	.uleb128 0
	.uleb128 .LEHB18-.LFB234
	.uleb128 .LEHE18-.LEHB18
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB19-.LFB234
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
.LLSDACSE234:
	.section	.text._ZN10SQCompiler9StatementEb,"axG",%progbits,_ZN10SQCompiler9StatementEb,comdat
	.fnend
	.size	_ZN10SQCompiler9StatementEb, .-_ZN10SQCompiler9StatementEb
	.section	.text._ZN10SQCompiler11EmitDerefOpE8SQOpcode,"axG",%progbits,_ZN10SQCompiler11EmitDerefOpE8SQOpcode,comdat
	.align	2
	.weak	_ZN10SQCompiler11EmitDerefOpE8SQOpcode
	.thumb
	.thumb_func
	.type	_ZN10SQCompiler11EmitDerefOpE8SQOpcode, %function
_ZN10SQCompiler11EmitDerefOpE8SQOpcode:
	.fnstart
.LFB235:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #36
	sub	sp, sp, #36
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9PopTargetEv(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9PopTargetEv(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9PopTargetEv(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #-1
	bl	_ZN11SQFuncState10PushTargetEi(PLT)
	mov	r3, r0
	ldr	r2, [r7, #16]
	str	r2, [sp]
	ldr	r2, [r7, #20]
	str	r2, [sp, #4]
	mov	r0, r4
	ldr	r1, [r7]
	mov	r2, r3
	ldr	r3, [r7, #12]
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZN10SQCompiler11EmitDerefOpE8SQOpcode, .-_ZN10SQCompiler11EmitDerefOpE8SQOpcode
	.section	.text._ZN10SQCompiler11Emit2ArgsOPE8SQOpcodei,"axG",%progbits,_ZN10SQCompiler11Emit2ArgsOPE8SQOpcodei,comdat
	.align	2
	.weak	_ZN10SQCompiler11Emit2ArgsOPE8SQOpcodei
	.thumb
	.thumb_func
	.type	_ZN10SQCompiler11Emit2ArgsOPE8SQOpcodei, %function
_ZN10SQCompiler11Emit2ArgsOPE8SQOpcodei:
	.fnstart
.LFB236:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #36
	sub	sp, sp, #36
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9PopTargetEv(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9PopTargetEv(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #-1
	bl	_ZN11SQFuncState10PushTargetEi(PLT)
	mov	r3, r0
	ldr	r2, [r7, #20]
	str	r2, [sp]
	ldr	r2, [r7, #4]
	str	r2, [sp, #4]
	mov	r0, r4
	ldr	r1, [r7, #8]
	mov	r2, r3
	ldr	r3, [r7, #16]
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZN10SQCompiler11Emit2ArgsOPE8SQOpcodei, .-_ZN10SQCompiler11Emit2ArgsOPE8SQOpcodei
	.section	.text._ZN10SQCompiler17EmitCompoundArithEiii,"axG",%progbits,_ZN10SQCompiler17EmitCompoundArithEiii,comdat
	.align	2
	.weak	_ZN10SQCompiler17EmitCompoundArithEiii
	.thumb
	.thumb_func
	.type	_ZN10SQCompiler17EmitCompoundArithEiii, %function
_ZN10SQCompiler17EmitCompoundArithEiii:
	.fnstart
.LFB237:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	.save {r4, r5, r6, r7, lr}
	.pad #60
	sub	sp, sp, #60
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #4]
	subs	r3, r3, #2
	cmp	r3, #3
	bhi	.L197
	adr	r1, .L200
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L200:
	.word	.L199+1-.L200
	.word	.L199+1-.L200
	.word	.L201+1-.L200
	.word	.L202+1-.L200
.L201:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9PopTargetEv(PLT)
	mov	r3, r0
	str	r3, [r7, #44]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9PopTargetEv(PLT)
	mov	r3, r0
	str	r3, [r7, #40]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r1, [r7, #40]
	bl	_ZN11SQFuncState10PushTargetEi(PLT)
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #4]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_ZN10SQCompiler20ChooseArithOpByTokenEi(PLT)
	mov	r3, r0
	ldr	r2, [r7, #40]
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r4
	mov	r1, r3
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #44]
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9SnoozeOptEv(PLT)
	b	.L197
.L199:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9PopTargetEv(PLT)
	mov	r3, r0
	str	r3, [r7, #36]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9PopTargetEv(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9PopTargetEv(PLT)
	mov	r3, r0
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r6, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #-1
	bl	_ZN11SQFuncState10PushTargetEi(PLT)
	mov	r5, r0
	ldr	r3, [r7, #28]
	lsls	r2, r3, #16
	ldr	r3, [r7, #36]
	orr	r4, r2, r3
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_ZN10SQCompiler26ChooseCompArithCharByTokenEi(PLT)
	mov	r3, r0
	ldr	r2, [r7, #32]
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, r6
	movs	r1, #35
	mov	r2, r5
	mov	r3, r4
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	b	.L197
.L202:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9TopTargetEv(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #-1
	bl	_ZN11SQFuncState10PushTargetEi(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r3
	movs	r1, #32
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #4]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_ZN10SQCompiler20ChooseArithOpByTokenEi(PLT)
	mov	r3, r0
	ldr	r2, [r7, #20]
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r4
	mov	r1, r3
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #24]
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #20]
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r3
	movs	r1, #31
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	nop
.L197:
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
	.fnend
	.size	_ZN10SQCompiler17EmitCompoundArithEiii, .-_ZN10SQCompiler17EmitCompoundArithEiii
	.section	.text._ZN10SQCompiler9CommaExprEv,"axG",%progbits,_ZN10SQCompiler9CommaExprEv,comdat
	.align	2
	.weak	_ZN10SQCompiler9CommaExprEv
	.thumb
	.thumb_func
	.type	_ZN10SQCompiler9CommaExprEv, %function
_ZN10SQCompiler9CommaExprEv:
	.fnstart
.LFB238:
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
	bl	_ZN10SQCompiler10ExpressionEv(PLT)
	b	.L204
.L205:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9PopTargetEv(PLT)
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler3LexEv(PLT)
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler9CommaExprEv(PLT)
.L204:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #44
	beq	.L205
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN10SQCompiler9CommaExprEv, .-_ZN10SQCompiler9CommaExprEv
	.section	.rodata
	.align	2
.LC15:
	.ascii	"can't assign expression\000"
	.align	2
.LC16:
	.ascii	"'base' cannot be modified\000"
	.align	2
.LC17:
	.ascii	"can't 'create' a local slot\000"
	.section	.text._ZN10SQCompiler10ExpressionEv,"axG",%progbits,_ZN10SQCompiler10ExpressionEv,comdat
	.align	2
	.weak	_ZN10SQCompiler10ExpressionEv
	.thumb
	.thumb_func
	.type	_ZN10SQCompiler10ExpressionEv, %function
_ZN10SQCompiler10ExpressionEv:
	.fnstart
.LFB239:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #92
	sub	sp, sp, #92
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	ldr	r2, [r7, #4]
	add	r3, r7, #8
	adds	r2, r2, #104
	ldmia	r2, {r0, r1, r2}
	stmia	r3, {r0, r1, r2}
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #104]
	ldr	r3, [r7, #4]
	mov	r2, #-1
	str	r2, [r3, #108]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #112]
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler12LogicalOrExpEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #290
	bgt	.L208
	cmp	r3, #288
	bgt	.L209
	cmp	r3, #63
	beq	.L210
	movw	r2, #281
	cmp	r3, r2
	beq	.L209
	cmp	r3, #61
	beq	.L209
	b	.L207
.L208:
	subw	r3, r3, #317
	cmp	r3, #2
	bhi	.L207
.L209:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #76]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #104]
	str	r3, [r7, #72]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #108]
	str	r3, [r7, #68]
	ldr	r3, [r7, #72]
	cmp	r3, #1
	bne	.L211
	ldr	r0, [r7, #4]
	ldr	r3, .L230
.LPIC18:
	add	r3, pc
	mov	r1, r3
	bl	_ZN10SQCompiler5ErrorEPKcz(PLT)
	b	.L212
.L211:
	ldr	r3, [r7, #72]
	cmp	r3, #3
	bne	.L212
	ldr	r0, [r7, #4]
	ldr	r3, .L230+4
.LPIC19:
	add	r3, pc
	mov	r1, r3
	bl	_ZN10SQCompiler5ErrorEPKcz(PLT)
.L212:
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler3LexEv(PLT)
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler10ExpressionEv(PLT)
	ldr	r3, [r7, #76]
	cmp	r3, #290
	bgt	.L214
	cmp	r3, #288
	bgt	.L215
	cmp	r3, #61
	beq	.L216
	movw	r2, #281
	cmp	r3, r2
	beq	.L217
	b	.L228
.L214:
	subw	r3, r3, #317
	cmp	r3, #2
	bhi	.L228
	b	.L215
.L217:
	ldr	r3, [r7, #72]
	cmp	r3, #2
	beq	.L218
	ldr	r3, [r7, #72]
	cmp	r3, #3
	bne	.L219
.L218:
	ldr	r0, [r7, #4]
	movs	r1, #11
	bl	_ZN10SQCompiler11EmitDerefOpE8SQOpcode(PLT)
	b	.L213
.L219:
	ldr	r0, [r7, #4]
	ldr	r3, .L230+8
.LPIC20:
	add	r3, pc
	mov	r1, r3
	bl	_ZN10SQCompiler5ErrorEPKcz(PLT)
	b	.L213
.L216:
	ldr	r3, [r7, #72]
	subs	r3, r3, #2
	cmp	r3, #3
	bhi	.L229
	adr	r1, .L223
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L223:
	.word	.L222+1-.L223
	.word	.L222+1-.L223
	.word	.L224+1-.L223
	.word	.L225+1-.L223
.L224:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9PopTargetEv(PLT)
	mov	r3, r0
	str	r3, [r7, #64]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9TopTargetEv(PLT)
	mov	r3, r0
	str	r3, [r7, #60]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r3
	movs	r1, #10
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #64]
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	b	.L221
.L222:
	ldr	r0, [r7, #4]
	movs	r1, #13
	bl	_ZN10SQCompiler11EmitDerefOpE8SQOpcode(PLT)
	b	.L221
.L225:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9PopTargetEv(PLT)
	mov	r3, r0
	str	r3, [r7, #56]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #-1
	bl	_ZN11SQFuncState10PushTargetEi(PLT)
	mov	r3, r0
	str	r3, [r7, #52]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #56]
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r3
	movs	r1, #31
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #68]
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	b	.L229
.L221:
	b	.L229
.L215:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #76]
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #68]
	bl	_ZN10SQCompiler17EmitCompoundArithEiii(PLT)
	b	.L213
.L229:
	nop
.L213:
	b	.L228
.L210:
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler3LexEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9PopTargetEv(PLT)
	mov	r3, r0
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r4
	movs	r1, #30
	mov	r2, r3
	movs	r3, #0
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState13GetCurrentPosEv(PLT)
	mov	r3, r0
	str	r3, [r7, #48]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #-1
	bl	_ZN11SQFuncState10PushTargetEi(PLT)
	mov	r3, r0
	str	r3, [r7, #44]
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler10ExpressionEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9PopTargetEv(PLT)
	mov	r3, r0
	str	r3, [r7, #40]
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	beq	.L226
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r3
	movs	r1, #10
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #40]
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
.L226:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState13GetCurrentPosEv(PLT)
	mov	r3, r0
	str	r3, [r7, #36]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r3
	movs	r1, #28
	movs	r2, #0
	movs	r3, #0
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	add	r3, r7, #20
	mov	r0, r3
	ldr	r1, [r7, #4]
	movs	r2, #58
	bl	_ZN10SQCompiler6ExpectEi(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState13GetCurrentPosEv(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler10ExpressionEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9PopTargetEv(PLT)
	mov	r3, r0
	str	r3, [r7, #28]
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	beq	.L227
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r3
	movs	r1, #10
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #28]
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
.L227:
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState13GetCurrentPosEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #32]
	subs	r3, r2, r3
	mov	r0, r4
	ldr	r1, [r7, #32]
	movs	r2, #1
	bl	_ZN11SQFuncState18SetIntructionParamEiii(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r1, [r7, #36]
	ldr	r3, [r7, #48]
	subs	r3, r1, r3
	adds	r3, r3, #1
	mov	r0, r2
	ldr	r1, [r7, #48]
	movs	r2, #1
	bl	_ZN11SQFuncState18SetIntructionParamEiii(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9SnoozeOptEv(PLT)
	b	.L207
.L228:
	nop
.L207:
	ldr	r3, [r7, #4]
	adds	r3, r3, #104
	add	r2, r7, #8
	ldmia	r2, {r0, r1, r2}
	stmia	r3, {r0, r1, r2}
	adds	r7, r7, #84
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L231:
	.align	2
.L230:
	.word	.LC15-(.LPIC18+4)
	.word	.LC16-(.LPIC19+4)
	.word	.LC17-(.LPIC20+4)
	.fnend
	.size	_ZN10SQCompiler10ExpressionEv, .-_ZN10SQCompiler10ExpressionEv
	.section	.text._ZN10SQCompiler12LogicalOrExpEv,"axG",%progbits,_ZN10SQCompiler12LogicalOrExpEv,comdat
	.align	2
	.weak	_ZN10SQCompiler12LogicalOrExpEv
	.thumb
	.thumb_func
	.type	_ZN10SQCompiler12LogicalOrExpEv, %function
_ZN10SQCompiler12LogicalOrExpEv:
	.fnstart
.LFB242:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #44
	sub	sp, sp, #44
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	ldr	r4, .L237
.LPIC21:
	add	r4, pc
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler13LogicalAndExpEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	movw	r3, #271
	cmp	r2, r3
	bne	.L233
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9PopTargetEv(PLT)
	mov	r3, r0
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #-1
	bl	_ZN11SQFuncState10PushTargetEi(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #28]
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r3
	movs	r1, #44
	ldr	r2, [r7, #24]
	movs	r3, #0
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState13GetCurrentPosEv(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	beq	.L234
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r3
	movs	r1, #10
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #28]
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
.L234:
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler3LexEv(PLT)
	ldr	r3, .L237+4
	ldr	r3, [r4, r3]
	str	r3, [r7, #8]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r0, [r7, #4]
	add	r3, r7, #8
	ldmia	r3, {r1, r2}
	bl	_ZN10SQCompiler10INVOKE_EXPIMS_FvvEEEvT_(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9SnoozeOptEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9PopTargetEv(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	beq	.L235
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r3
	movs	r1, #10
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #16]
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
.L235:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9SnoozeOptEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState13GetCurrentPosEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #20]
	subs	r3, r2, r3
	mov	r0, r4
	ldr	r1, [r7, #20]
	movs	r2, #1
	bl	_ZN11SQFuncState18SetIntructionParamEiii(PLT)
	b	.L232
.L233:
	nop
.L232:
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L238:
	.align	2
.L237:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC21+4)
	.word	_ZN10SQCompiler12LogicalOrExpEv(GOT)
	.fnend
	.size	_ZN10SQCompiler12LogicalOrExpEv, .-_ZN10SQCompiler12LogicalOrExpEv
	.section	.text._ZN10SQCompiler13LogicalAndExpEv,"axG",%progbits,_ZN10SQCompiler13LogicalAndExpEv,comdat
	.align	2
	.weak	_ZN10SQCompiler13LogicalAndExpEv
	.thumb
	.thumb_func
	.type	_ZN10SQCompiler13LogicalAndExpEv, %function
_ZN10SQCompiler13LogicalAndExpEv:
	.fnstart
.LFB243:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #40
	sub	sp, sp, #40
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	ldr	r5, .L248
.LPIC22:
	add	r5, pc
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler12BitwiseOrExpEv(PLT)
.L246:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #270
	beq	.L241
	b	.L247
.L241:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9PopTargetEv(PLT)
	mov	r3, r0
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #-1
	bl	_ZN11SQFuncState10PushTargetEi(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #28]
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r3
	movs	r1, #43
	ldr	r2, [r7, #24]
	movs	r3, #0
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState13GetCurrentPosEv(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	beq	.L242
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r3
	movs	r1, #10
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #28]
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
.L242:
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler3LexEv(PLT)
	ldr	r3, .L248+4
	ldr	r3, [r5, r3]
	str	r3, [r7, #8]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r0, [r7, #4]
	add	r3, r7, #8
	ldmia	r3, {r1, r2}
	bl	_ZN10SQCompiler10INVOKE_EXPIMS_FvvEEEvT_(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9SnoozeOptEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9PopTargetEv(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	beq	.L243
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r3
	movs	r1, #10
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #16]
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
.L243:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9SnoozeOptEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState13GetCurrentPosEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #20]
	subs	r3, r2, r3
	mov	r0, r4
	ldr	r1, [r7, #20]
	movs	r2, #1
	bl	_ZN11SQFuncState18SetIntructionParamEiii(PLT)
	nop
	b	.L246
.L247:
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L249:
	.align	2
.L248:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC22+4)
	.word	_ZN10SQCompiler13LogicalAndExpEv(GOT)
	.fnend
	.size	_ZN10SQCompiler13LogicalAndExpEv, .-_ZN10SQCompiler13LogicalAndExpEv
	.section	.text._ZN10SQCompiler12BitwiseOrExpEv,"axG",%progbits,_ZN10SQCompiler12BitwiseOrExpEv,comdat
	.align	2
	.weak	_ZN10SQCompiler12BitwiseOrExpEv
	.thumb
	.thumb_func
	.type	_ZN10SQCompiler12BitwiseOrExpEv, %function
_ZN10SQCompiler12BitwiseOrExpEv:
	.fnstart
.LFB244:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #28
	sub	sp, sp, #28
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	ldr	r4, .L255
.LPIC23:
	add	r4, pc
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler13BitwiseXorExpEv(PLT)
.L254:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #124
	bne	.L251
	ldr	r3, .L255+4
	ldr	r3, [r4, r3]
	str	r3, [r7, #8]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #2
	str	r3, [sp]
	ldr	r0, [r7, #4]
	movs	r1, #22
	add	r3, r7, #8
	ldmia	r3, {r2, r3}
	bl	_ZN10SQCompiler7BIN_EXPIMS_FvvEEEv8SQOpcodeT_i(PLT)
	b	.L254
.L251:
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L256:
	.align	2
.L255:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC23+4)
	.word	_ZN10SQCompiler13BitwiseXorExpEv(GOT)
	.fnend
	.size	_ZN10SQCompiler12BitwiseOrExpEv, .-_ZN10SQCompiler12BitwiseOrExpEv
	.section	.text._ZN10SQCompiler13BitwiseXorExpEv,"axG",%progbits,_ZN10SQCompiler13BitwiseXorExpEv,comdat
	.align	2
	.weak	_ZN10SQCompiler13BitwiseXorExpEv
	.thumb
	.thumb_func
	.type	_ZN10SQCompiler13BitwiseXorExpEv, %function
_ZN10SQCompiler13BitwiseXorExpEv:
	.fnstart
.LFB245:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #28
	sub	sp, sp, #28
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	ldr	r4, .L262
.LPIC24:
	add	r4, pc
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler13BitwiseAndExpEv(PLT)
.L261:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #94
	bne	.L258
	ldr	r3, .L262+4
	ldr	r3, [r4, r3]
	str	r3, [r7, #8]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #3
	str	r3, [sp]
	ldr	r0, [r7, #4]
	movs	r1, #22
	add	r3, r7, #8
	ldmia	r3, {r2, r3}
	bl	_ZN10SQCompiler7BIN_EXPIMS_FvvEEEv8SQOpcodeT_i(PLT)
	b	.L261
.L258:
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L263:
	.align	2
.L262:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC24+4)
	.word	_ZN10SQCompiler13BitwiseAndExpEv(GOT)
	.fnend
	.size	_ZN10SQCompiler13BitwiseXorExpEv, .-_ZN10SQCompiler13BitwiseXorExpEv
	.section	.text._ZN10SQCompiler13BitwiseAndExpEv,"axG",%progbits,_ZN10SQCompiler13BitwiseAndExpEv,comdat
	.align	2
	.weak	_ZN10SQCompiler13BitwiseAndExpEv
	.thumb
	.thumb_func
	.type	_ZN10SQCompiler13BitwiseAndExpEv, %function
_ZN10SQCompiler13BitwiseAndExpEv:
	.fnstart
.LFB246:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #28
	sub	sp, sp, #28
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	ldr	r4, .L269
.LPIC25:
	add	r4, pc
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler5EqExpEv(PLT)
.L268:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #38
	bne	.L265
	ldr	r3, .L269+4
	ldr	r3, [r4, r3]
	str	r3, [r7, #8]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [sp]
	ldr	r0, [r7, #4]
	movs	r1, #22
	add	r3, r7, #8
	ldmia	r3, {r2, r3}
	bl	_ZN10SQCompiler7BIN_EXPIMS_FvvEEEv8SQOpcodeT_i(PLT)
	b	.L268
.L265:
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L270:
	.align	2
.L269:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC25+4)
	.word	_ZN10SQCompiler5EqExpEv(GOT)
	.fnend
	.size	_ZN10SQCompiler13BitwiseAndExpEv, .-_ZN10SQCompiler13BitwiseAndExpEv
	.section	.text._ZN10SQCompiler5EqExpEv,"axG",%progbits,_ZN10SQCompiler5EqExpEv,comdat
	.align	2
	.weak	_ZN10SQCompiler5EqExpEv
	.thumb
	.thumb_func
	.type	_ZN10SQCompiler5EqExpEv, %function
_ZN10SQCompiler5EqExpEv:
	.fnstart
.LFB247:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #44
	sub	sp, sp, #44
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	ldr	r4, .L280
.LPIC26:
	add	r4, pc
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler7CompExpEv(PLT)
.L278:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movw	r2, #265
	cmp	r3, r2
	beq	.L273
	movw	r2, #305
	cmp	r3, r2
	beq	.L274
	cmp	r3, #264
	beq	.L275
	b	.L279
.L275:
	ldr	r3, .L280+4
	ldr	r3, [r4, r3]
	str	r3, [r7, #8]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [sp]
	ldr	r0, [r7, #4]
	movs	r1, #15
	add	r3, r7, #8
	ldmia	r3, {r2, r3}
	bl	_ZN10SQCompiler7BIN_EXPIMS_FvvEEEv8SQOpcodeT_i(PLT)
	b	.L276
.L273:
	ldr	r3, .L280+4
	ldr	r3, [r4, r3]
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [sp]
	ldr	r0, [r7, #4]
	movs	r1, #16
	add	r3, r7, #16
	ldmia	r3, {r2, r3}
	bl	_ZN10SQCompiler7BIN_EXPIMS_FvvEEEv8SQOpcodeT_i(PLT)
	b	.L276
.L274:
	ldr	r3, .L280+4
	ldr	r3, [r4, r3]
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #5
	str	r3, [sp]
	ldr	r0, [r7, #4]
	movs	r1, #40
	add	r3, r7, #24
	ldmia	r3, {r2, r3}
	bl	_ZN10SQCompiler7BIN_EXPIMS_FvvEEEv8SQOpcodeT_i(PLT)
	nop
.L276:
	b	.L278
.L279:
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L281:
	.align	2
.L280:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC26+4)
	.word	_ZN10SQCompiler7CompExpEv(GOT)
	.fnend
	.size	_ZN10SQCompiler5EqExpEv, .-_ZN10SQCompiler5EqExpEv
	.section	.text._ZN10SQCompiler7CompExpEv,"axG",%progbits,_ZN10SQCompiler7CompExpEv,comdat
	.align	2
	.weak	_ZN10SQCompiler7CompExpEv
	.thumb
	.thumb_func
	.type	_ZN10SQCompiler7CompExpEv, %function
_ZN10SQCompiler7CompExpEv:
	.fnstart
.LFB248:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #68
	sub	sp, sp, #68
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	ldr	r4, .L294
.LPIC27:
	add	r4, pc
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler8ShiftExpEv(PLT)
.L293:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #266
	beq	.L284
	cmp	r3, #266
	bgt	.L285
	cmp	r3, #60
	beq	.L286
	cmp	r3, #62
	beq	.L287
	b	.L282
.L285:
	cmp	r3, #280
	beq	.L288
	movw	r2, #311
	cmp	r3, r2
	beq	.L289
	movw	r2, #267
	cmp	r3, r2
	beq	.L290
	b	.L282
.L287:
	ldr	r3, .L294+4
	ldr	r3, [r4, r3]
	str	r3, [r7, #8]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [sp]
	ldr	r0, [r7, #4]
	movs	r1, #40
	add	r3, r7, #8
	ldmia	r3, {r2, r3}
	bl	_ZN10SQCompiler7BIN_EXPIMS_FvvEEEv8SQOpcodeT_i(PLT)
	b	.L291
.L286:
	ldr	r3, .L294+4
	ldr	r3, [r4, r3]
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #3
	str	r3, [sp]
	ldr	r0, [r7, #4]
	movs	r1, #40
	add	r3, r7, #16
	ldmia	r3, {r2, r3}
	bl	_ZN10SQCompiler7BIN_EXPIMS_FvvEEEv8SQOpcodeT_i(PLT)
	b	.L291
.L290:
	ldr	r3, .L294+4
	ldr	r3, [r4, r3]
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #2
	str	r3, [sp]
	ldr	r0, [r7, #4]
	movs	r1, #40
	add	r3, r7, #24
	ldmia	r3, {r2, r3}
	bl	_ZN10SQCompiler7BIN_EXPIMS_FvvEEEv8SQOpcodeT_i(PLT)
	b	.L291
.L284:
	ldr	r3, .L294+4
	ldr	r3, [r4, r3]
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #36]
	movs	r3, #4
	str	r3, [sp]
	ldr	r0, [r7, #4]
	movs	r1, #40
	add	r3, r7, #32
	ldmia	r3, {r2, r3}
	bl	_ZN10SQCompiler7BIN_EXPIMS_FvvEEEv8SQOpcodeT_i(PLT)
	b	.L291
.L288:
	ldr	r3, .L294+4
	ldr	r3, [r4, r3]
	str	r3, [r7, #40]
	movs	r3, #0
	str	r3, [r7, #44]
	movs	r3, #0
	str	r3, [sp]
	ldr	r0, [r7, #4]
	movs	r1, #41
	add	r3, r7, #40
	ldmia	r3, {r2, r3}
	bl	_ZN10SQCompiler7BIN_EXPIMS_FvvEEEv8SQOpcodeT_i(PLT)
	b	.L291
.L289:
	ldr	r3, .L294+4
	ldr	r3, [r4, r3]
	str	r3, [r7, #48]
	movs	r3, #0
	str	r3, [r7, #52]
	movs	r3, #0
	str	r3, [sp]
	ldr	r0, [r7, #4]
	movs	r1, #42
	add	r3, r7, #48
	ldmia	r3, {r2, r3}
	bl	_ZN10SQCompiler7BIN_EXPIMS_FvvEEEv8SQOpcodeT_i(PLT)
	nop
.L291:
	b	.L293
.L282:
	adds	r7, r7, #60
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L295:
	.align	2
.L294:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC27+4)
	.word	_ZN10SQCompiler8ShiftExpEv(GOT)
	.fnend
	.size	_ZN10SQCompiler7CompExpEv, .-_ZN10SQCompiler7CompExpEv
	.section	.text._ZN10SQCompiler8ShiftExpEv,"axG",%progbits,_ZN10SQCompiler8ShiftExpEv,comdat
	.align	2
	.weak	_ZN10SQCompiler8ShiftExpEv
	.thumb
	.thumb_func
	.type	_ZN10SQCompiler8ShiftExpEv, %function
_ZN10SQCompiler8ShiftExpEv:
	.fnstart
.LFB249:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #44
	sub	sp, sp, #44
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	ldr	r4, .L305
.LPIC28:
	add	r4, pc
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler7PlusExpEv(PLT)
.L303:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movw	r2, #297
	cmp	r3, r2
	beq	.L298
	cmp	r3, #306
	beq	.L299
	cmp	r3, #296
	beq	.L300
	b	.L304
.L299:
	ldr	r3, .L305+4
	ldr	r3, [r4, r3]
	str	r3, [r7, #8]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #6
	str	r3, [sp]
	ldr	r0, [r7, #4]
	movs	r1, #22
	add	r3, r7, #8
	ldmia	r3, {r2, r3}
	bl	_ZN10SQCompiler7BIN_EXPIMS_FvvEEEv8SQOpcodeT_i(PLT)
	b	.L301
.L300:
	ldr	r3, .L305+4
	ldr	r3, [r4, r3]
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #4
	str	r3, [sp]
	ldr	r0, [r7, #4]
	movs	r1, #22
	add	r3, r7, #16
	ldmia	r3, {r2, r3}
	bl	_ZN10SQCompiler7BIN_EXPIMS_FvvEEEv8SQOpcodeT_i(PLT)
	b	.L301
.L298:
	ldr	r3, .L305+4
	ldr	r3, [r4, r3]
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #5
	str	r3, [sp]
	ldr	r0, [r7, #4]
	movs	r1, #22
	add	r3, r7, #24
	ldmia	r3, {r2, r3}
	bl	_ZN10SQCompiler7BIN_EXPIMS_FvvEEEv8SQOpcodeT_i(PLT)
	nop
.L301:
	b	.L303
.L304:
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L306:
	.align	2
.L305:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC28+4)
	.word	_ZN10SQCompiler7PlusExpEv(GOT)
	.fnend
	.size	_ZN10SQCompiler8ShiftExpEv, .-_ZN10SQCompiler8ShiftExpEv
	.section	.rodata
	.align	2
.LC18:
	.ascii	"0\000"
	.align	2
.LC19:
	.ascii	"../../../libs/squirrel/squirrel/sqcompiler.cpp\000"
	.section	.text._ZN10SQCompiler20ChooseArithOpByTokenEi,"axG",%progbits,_ZN10SQCompiler20ChooseArithOpByTokenEi,comdat
	.align	2
	.weak	_ZN10SQCompiler20ChooseArithOpByTokenEi
	.thumb
	.thumb_func
	.type	_ZN10SQCompiler20ChooseArithOpByTokenEi, %function
_ZN10SQCompiler20ChooseArithOpByTokenEi:
	.fnstart
.LFB250:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #47
	beq	.L309
	cmp	r3, #47
	bgt	.L310
	cmp	r3, #42
	beq	.L311
	cmp	r3, #42
	bgt	.L312
	cmp	r3, #37
	beq	.L313
	b	.L308
.L312:
	cmp	r3, #43
	beq	.L314
	cmp	r3, #45
	beq	.L315
	b	.L308
.L310:
	movw	r2, #317
	cmp	r3, r2
	beq	.L311
	cmp	r3, #318
	bge	.L316
	movw	r2, #289
	cmp	r3, r2
	beq	.L314
	cmp	r3, #290
	beq	.L315
	b	.L308
.L316:
	cmp	r3, #318
	beq	.L309
	movw	r2, #319
	cmp	r3, r2
	beq	.L313
	b	.L308
.L314:
	movs	r3, #17
	b	.L317
.L315:
	movs	r3, #18
	b	.L317
.L311:
	movs	r3, #19
	b	.L317
.L309:
	movs	r3, #20
	b	.L317
.L313:
	movs	r3, #21
	b	.L317
.L308:
	ldr	r3, .L318
.LPIC29:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L318+4
.LPIC30:
	add	r3, pc
	mov	r1, r3
	mov	r2, #572
	ldr	r3, .L318+8
.LPIC31:
	add	r3, pc
	bl	__assert_fail(PLT)
.L317:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L319:
	.align	2
.L318:
	.word	.LC18-(.LPIC29+4)
	.word	.LC19-(.LPIC30+4)
	.word	_ZZN10SQCompiler20ChooseArithOpByTokenEiE19__PRETTY_FUNCTION__-(.LPIC31+4)
	.cantunwind
	.fnend
	.size	_ZN10SQCompiler20ChooseArithOpByTokenEi, .-_ZN10SQCompiler20ChooseArithOpByTokenEi
	.section	.text._ZN10SQCompiler26ChooseCompArithCharByTokenEi,"axG",%progbits,_ZN10SQCompiler26ChooseCompArithCharByTokenEi,comdat
	.align	2
	.weak	_ZN10SQCompiler26ChooseCompArithCharByTokenEi
	.thumb
	.thumb_func
	.type	_ZN10SQCompiler26ChooseCompArithCharByTokenEi, %function
_ZN10SQCompiler26ChooseCompArithCharByTokenEi:
	.fnstart
.LFB251:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	subw	r3, r3, #289
	cmp	r3, #30
	bhi	.L321
	adr	r1, .L323
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L323:
	.word	.L322+1-.L323
	.word	.L324+1-.L323
	.word	.L321+1-.L323
	.word	.L321+1-.L323
	.word	.L321+1-.L323
	.word	.L321+1-.L323
	.word	.L321+1-.L323
	.word	.L321+1-.L323
	.word	.L321+1-.L323
	.word	.L321+1-.L323
	.word	.L321+1-.L323
	.word	.L321+1-.L323
	.word	.L321+1-.L323
	.word	.L321+1-.L323
	.word	.L321+1-.L323
	.word	.L321+1-.L323
	.word	.L321+1-.L323
	.word	.L321+1-.L323
	.word	.L321+1-.L323
	.word	.L321+1-.L323
	.word	.L321+1-.L323
	.word	.L321+1-.L323
	.word	.L321+1-.L323
	.word	.L321+1-.L323
	.word	.L321+1-.L323
	.word	.L321+1-.L323
	.word	.L321+1-.L323
	.word	.L321+1-.L323
	.word	.L325+1-.L323
	.word	.L326+1-.L323
	.word	.L327+1-.L323
.L324:
	movs	r3, #45
	str	r3, [r7, #12]
	b	.L328
.L322:
	movs	r3, #43
	str	r3, [r7, #12]
	b	.L328
.L325:
	movs	r3, #42
	str	r3, [r7, #12]
	b	.L328
.L326:
	movs	r3, #47
	str	r3, [r7, #12]
	b	.L328
.L327:
	movs	r3, #37
	str	r3, [r7, #12]
	b	.L328
.L321:
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, .L330
.LPIC32:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L330+4
.LPIC33:
	add	r3, pc
	mov	r1, r3
	movw	r2, #586
	ldr	r3, .L330+8
.LPIC34:
	add	r3, pc
	bl	__assert_fail(PLT)
.L328:
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L331:
	.align	2
.L330:
	.word	.LC18-(.LPIC32+4)
	.word	.LC19-(.LPIC33+4)
	.word	_ZZN10SQCompiler26ChooseCompArithCharByTokenEiE19__PRETTY_FUNCTION__-(.LPIC34+4)
	.cantunwind
	.fnend
	.size	_ZN10SQCompiler26ChooseCompArithCharByTokenEi, .-_ZN10SQCompiler26ChooseCompArithCharByTokenEi
	.section	.text._ZN10SQCompiler7PlusExpEv,"axG",%progbits,_ZN10SQCompiler7PlusExpEv,comdat
	.align	2
	.weak	_ZN10SQCompiler7PlusExpEv
	.thumb
	.thumb_func
	.type	_ZN10SQCompiler7PlusExpEv, %function
_ZN10SQCompiler7PlusExpEv:
	.fnstart
.LFB252:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #28
	sub	sp, sp, #28
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	ldr	r4, .L339
.LPIC35:
	add	r4, pc
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler7MultExpEv(PLT)
.L337:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #43
	beq	.L334
	cmp	r3, #45
	beq	.L334
	b	.L338
.L334:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN10SQCompiler20ChooseArithOpByTokenEi(PLT)
	mov	r3, r0
	ldr	r2, .L339+4
	ldr	r2, [r4, r2]
	str	r2, [r7, #8]
	movs	r2, #0
	str	r2, [r7, #12]
	movs	r2, #0
	str	r2, [sp]
	ldr	r0, [r7, #4]
	mov	r1, r3
	add	r3, r7, #8
	ldmia	r3, {r2, r3}
	bl	_ZN10SQCompiler7BIN_EXPIMS_FvvEEEv8SQOpcodeT_i(PLT)
	nop
	b	.L337
.L338:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L340:
	.align	2
.L339:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC35+4)
	.word	_ZN10SQCompiler7MultExpEv(GOT)
	.fnend
	.size	_ZN10SQCompiler7PlusExpEv, .-_ZN10SQCompiler7PlusExpEv
	.section	.text._ZN10SQCompiler7MultExpEv,"axG",%progbits,_ZN10SQCompiler7MultExpEv,comdat
	.align	2
	.weak	_ZN10SQCompiler7MultExpEv
	.thumb
	.thumb_func
	.type	_ZN10SQCompiler7MultExpEv, %function
_ZN10SQCompiler7MultExpEv:
	.fnstart
.LFB253:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #28
	sub	sp, sp, #28
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	ldr	r4, .L348
.LPIC36:
	add	r4, pc
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler12PrefixedExprEv(PLT)
.L346:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #42
	beq	.L343
	cmp	r3, #47
	beq	.L343
	cmp	r3, #37
	beq	.L343
	b	.L347
.L343:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN10SQCompiler20ChooseArithOpByTokenEi(PLT)
	mov	r3, r0
	ldr	r2, .L348+4
	ldr	r2, [r4, r2]
	str	r2, [r7, #8]
	movs	r2, #0
	str	r2, [r7, #12]
	movs	r2, #0
	str	r2, [sp]
	ldr	r0, [r7, #4]
	mov	r1, r3
	add	r3, r7, #8
	ldmia	r3, {r2, r3}
	bl	_ZN10SQCompiler7BIN_EXPIMS_FvvEEEv8SQOpcodeT_i(PLT)
	nop
	b	.L346
.L347:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L349:
	.align	2
.L348:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC36+4)
	.word	_ZN10SQCompiler12PrefixedExprEv(GOT)
	.fnend
	.size	_ZN10SQCompiler7MultExpEv, .-_ZN10SQCompiler7MultExpEv
	.section	.rodata
	.align	2
.LC20:
	.ascii	"cannot brake deref/or comma needed after [exp]=exp "
	.ascii	"slot declaration\000"
	.align	2
.LC21:
	.ascii	"can't '++' or '--' an expression\000"
	.section	.text._ZN10SQCompiler12PrefixedExprEv,"axG",%progbits,_ZN10SQCompiler12PrefixedExprEv,comdat
	.align	2
	.weak	_ZN10SQCompiler12PrefixedExprEv
	.thumb
	.thumb_func
	.type	_ZN10SQCompiler12PrefixedExprEv, %function
_ZN10SQCompiler12PrefixedExprEv:
	.fnstart
.LFB254:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	.save {r4, r5, r6, r7, lr}
	.pad #76
	sub	sp, sp, #76
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler6FactorEv(PLT)
	mov	r3, r0
	str	r3, [r7, #60]
.L380:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #91
	beq	.L352
	cmp	r3, #91
	bgt	.L353
	cmp	r3, #40
	beq	.L354
	cmp	r3, #46
	beq	.L355
	b	.L383
.L353:
	subw	r3, r3, #303
	cmp	r3, #1
	bhi	.L383
	b	.L381
.L355:
	mov	r3, #-1
	str	r3, [r7, #60]
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler3LexEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r5, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #-1
	bl	_ZN11SQFuncState10PushTargetEi(PLT)
	mov	r4, r0
	ldr	r3, [r7, #4]
	ldr	r6, [r3, #4]
	add	r3, r7, #12
	mov	r0, r3
	ldr	r1, [r7, #4]
	mov	r2, #258
	bl	_ZN10SQCompiler6ExpectEi(PLT)
	add	r3, r7, #12
	mov	r0, r6
	mov	r1, r3
	bl	_ZN11SQFuncState11GetConstantERK11tagSQObject(PLT)
	mov	r3, r0
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r5
	movs	r1, #1
	mov	r2, r4
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #104]
	cmp	r3, #3
	bne	.L357
	ldr	r0, [r7, #4]
	movs	r1, #14
	movs	r2, #0
	bl	_ZN10SQCompiler11Emit2ArgsOPE8SQOpcodei(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9TopTargetEv(PLT)
	mov	r3, r0
	str	r3, [r7, #60]
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #104]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #60]
	str	r2, [r3, #108]
	b	.L360
.L357:
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler7NeedGetEv(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L359
	ldr	r0, [r7, #4]
	movs	r1, #14
	movs	r2, #0
	bl	_ZN10SQCompiler11Emit2ArgsOPE8SQOpcodei(PLT)
.L359:
	ldr	r3, [r7, #4]
	movs	r2, #2
	str	r2, [r3, #104]
	b	.L360
.L352:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	cmp	r3, #10
	bne	.L361
	ldr	r0, [r7, #4]
	ldr	r3, .L385
.LPIC37:
	add	r3, pc
	mov	r1, r3
	bl	_ZN10SQCompiler5ErrorEPKcz(PLT)
.L361:
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler3LexEv(PLT)
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler10ExpressionEv(PLT)
	add	r3, r7, #20
	mov	r0, r3
	ldr	r1, [r7, #4]
	movs	r2, #93
	bl	_ZN10SQCompiler6ExpectEi(PLT)
	mov	r3, #-1
	str	r3, [r7, #60]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #104]
	cmp	r3, #3
	bne	.L362
	ldr	r0, [r7, #4]
	movs	r1, #14
	movs	r2, #0
	bl	_ZN10SQCompiler11Emit2ArgsOPE8SQOpcodei(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9TopTargetEv(PLT)
	mov	r3, r0
	str	r3, [r7, #60]
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #104]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #60]
	str	r2, [r3, #108]
	b	.L360
.L362:
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler7NeedGetEv(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L364
	ldr	r0, [r7, #4]
	movs	r1, #14
	movs	r2, #0
	bl	_ZN10SQCompiler11Emit2ArgsOPE8SQOpcodei(PLT)
.L364:
	ldr	r3, [r7, #4]
	movs	r2, #2
	str	r2, [r3, #104]
	b	.L360
.L381:
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler16IsEndOfStatementEv(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L365
	b	.L350
.L365:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #304
	bne	.L367
	mov	r3, #-1
	b	.L368
.L367:
	movs	r3, #1
.L368:
	str	r3, [r7, #56]
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler3LexEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #104]
	subs	r3, r3, #1
	cmp	r3, #4
	bhi	.L384
	adr	r1, .L371
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L371:
	.word	.L370+1-.L371
	.word	.L372+1-.L371
	.word	.L372+1-.L371
	.word	.L373+1-.L371
	.word	.L374+1-.L371
.L370:
	ldr	r0, [r7, #4]
	ldr	r3, .L385+4
.LPIC38:
	add	r3, pc
	mov	r1, r3
	bl	_ZN10SQCompiler5ErrorEPKcz(PLT)
	b	.L369
.L372:
	ldr	r0, [r7, #4]
	movs	r1, #38
	ldr	r2, [r7, #56]
	bl	_ZN10SQCompiler11Emit2ArgsOPE8SQOpcodei(PLT)
	b	.L369
.L373:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9PopTargetEv(PLT)
	mov	r3, r0
	str	r3, [r7, #52]
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #-1
	bl	_ZN11SQFuncState10PushTargetEi(PLT)
	mov	r3, r0
	movs	r2, #0
	str	r2, [sp]
	ldr	r2, [r7, #56]
	str	r2, [sp, #4]
	mov	r0, r4
	movs	r1, #39
	mov	r2, r3
	ldr	r3, [r7, #52]
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	b	.L369
.L374:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #-1
	bl	_ZN11SQFuncState10PushTargetEi(PLT)
	mov	r3, r0
	str	r3, [r7, #48]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #-1
	bl	_ZN11SQFuncState10PushTargetEi(PLT)
	mov	r3, r0
	str	r3, [r7, #44]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #108]
	movs	r1, #0
	str	r1, [sp]
	movs	r1, #0
	str	r1, [sp, #4]
	mov	r0, r2
	movs	r1, #32
	ldr	r2, [r7, #44]
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	movs	r2, #0
	str	r2, [sp]
	ldr	r2, [r7, #56]
	str	r2, [sp, #4]
	mov	r0, r3
	movs	r1, #39
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #44]
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #108]
	ldr	r1, [r7, #44]
	str	r1, [sp]
	movs	r1, #0
	str	r1, [sp, #4]
	mov	r0, r2
	movs	r1, #31
	ldr	r2, [r7, #44]
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9PopTargetEv(PLT)
	b	.L384
.L369:
	b	.L384
.L354:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #104]
	cmp	r3, #3
	beq	.L376
	cmp	r3, #5
	beq	.L377
	cmp	r3, #2
	bne	.L382
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9PopTargetEv(PLT)
	mov	r3, r0
	str	r3, [r7, #40]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9PopTargetEv(PLT)
	mov	r3, r0
	str	r3, [r7, #36]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #-1
	bl	_ZN11SQFuncState10PushTargetEi(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #-1
	bl	_ZN11SQFuncState10PushTargetEi(PLT)
	mov	r3, r0
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #36]
	str	r2, [sp]
	ldr	r2, [r7, #28]
	str	r2, [sp, #4]
	mov	r0, r3
	movs	r1, #7
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #40]
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	b	.L379
.L376:
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #-1
	bl	_ZN11SQFuncState10PushTargetEi(PLT)
	mov	r3, r0
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r4
	movs	r1, #10
	mov	r2, r3
	movs	r3, #0
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	b	.L379
.L377:
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #-1
	bl	_ZN11SQFuncState10PushTargetEi(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #108]
	movs	r1, #0
	str	r1, [sp]
	movs	r1, #0
	str	r1, [sp, #4]
	mov	r0, r4
	movs	r1, #32
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #-1
	bl	_ZN11SQFuncState10PushTargetEi(PLT)
	mov	r3, r0
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r4
	movs	r1, #10
	mov	r2, r3
	movs	r3, #0
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	b	.L379
.L382:
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #-1
	bl	_ZN11SQFuncState10PushTargetEi(PLT)
	mov	r3, r0
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r4
	movs	r1, #10
	mov	r2, r3
	movs	r3, #0
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
.L379:
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #104]
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler3LexEv(PLT)
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler16FunctionCallArgsEv(PLT)
	nop
.L360:
	b	.L380
.L383:
	nop
	b	.L350
.L384:
	nop
.L350:
	adds	r7, r7, #68
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L386:
	.align	2
.L385:
	.word	.LC20-(.LPIC37+4)
	.word	.LC21-(.LPIC38+4)
	.fnend
	.size	_ZN10SQCompiler12PrefixedExprEv, .-_ZN10SQCompiler12PrefixedExprEv
	.section	.rodata
	.align	2
.LC22:
	.ascii	"constructor\000"
	.align	2
.LC23:
	.ascii	"invalid constant [%s.%s]\000"
	.align	2
.LC24:
	.ascii	"expression expected\000"
	.section	.text._ZN10SQCompiler6FactorEv,"axG",%progbits,_ZN10SQCompiler6FactorEv,comdat
	.align	2
	.weak	_ZN10SQCompiler6FactorEv
	.thumb
	.thumb_func
	.type	_ZN10SQCompiler6FactorEv, %function
_ZN10SQCompiler6FactorEv:
	.fnstart
.LFB255:
	@ args = 0, pretend = 0, frame = 104
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	.save {r4, r5, r6, r7, r8, r9, lr}
	.pad #116
	sub	sp, sp, #116
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	movs	r2, #1
	str	r2, [r3, #104]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	movw	r2, #263
	cmp	r3, r2
	beq	.L389
	cmp	r3, #264
	bge	.L390
	cmp	r3, #123
	beq	.L391
	cmp	r3, #123
	bgt	.L392
	cmp	r3, #45
	beq	.L393
	cmp	r3, #45
	bgt	.L394
	cmp	r3, #33
	beq	.L395
	cmp	r3, #40
	beq	.L396
	b	.L388
.L394:
	cmp	r3, #64
	beq	.L397
	cmp	r3, #91
	beq	.L398
	b	.L388
.L392:
	movw	r2, #259
	cmp	r3, r2
	beq	.L399
	cmp	r3, #260
	bge	.L400
	cmp	r3, #126
	beq	.L401
	cmp	r3, #258
	beq	.L402
	b	.L388
.L400:
	movw	r2, #261
	cmp	r3, r2
	beq	.L403
	cmp	r3, #262
	bge	.L404
	b	.L451
.L390:
	cmp	r3, #302
	beq	.L402
	cmp	r3, #302
	bgt	.L406
	movw	r2, #285
	cmp	r3, r2
	beq	.L407
	cmp	r3, #286
	bge	.L408
	cmp	r3, #278
	beq	.L409
	cmp	r3, #284
	beq	.L410
	b	.L388
.L408:
	cmp	r3, #298
	beq	.L411
	movw	r2, #299
	cmp	r3, r2
	beq	.L412
	movw	r2, #287
	cmp	r3, r2
	beq	.L413
	b	.L388
.L406:
	movw	r2, #307
	cmp	r3, r2
	beq	.L414
	cmp	r3, #308
	bge	.L415
	cmp	r3, #304
	bgt	.L388
	b	.L452
.L415:
	cmp	r3, #310
	beq	.L402
	cmp	r3, #310
	blt	.L388
	subw	r3, r3, #315
	cmp	r3, #1
	bhi	.L388
	b	.L453
.L399:
	ldr	r3, [r7, #12]
	ldr	r5, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #-1
.LEHB20:
	bl	_ZN11SQFuncState10PushTargetEi(PLT)
	mov	r4, r0
	ldr	r3, [r7, #12]
	ldr	r6, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r9, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r8, [r3, #44]
	ldr	r3, [r7, #12]
	adds	r3, r3, #72
	mov	r0, r3
	bl	_ZNK8sqvectorIcE4sizeEv(PLT)
	mov	r3, r0
	subs	r3, r3, #1
	add	r2, r7, #48
	mov	r0, r2
	mov	r1, r9
	mov	r2, r8
	bl	_ZN11SQFuncState12CreateStringEPKci(PLT)
	add	r3, r7, #48
	mov	r0, r6
	mov	r1, r3
	bl	_ZN11SQFuncState11GetConstantERK11tagSQObject(PLT)
	mov	r3, r0
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r5
	movs	r1, #1
	mov	r2, r4
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	ldr	r0, [r7, #12]
	bl	_ZN10SQCompiler3LexEv(PLT)
	b	.L418
.L404:
	ldr	r0, [r7, #12]
	bl	_ZN10SQCompiler3LexEv(PLT)
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #-1
	bl	_ZN11SQFuncState10PushTargetEi(PLT)
	mov	r3, r0
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r4
	movs	r1, #59
	mov	r2, r3
	movs	r3, #0
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #3
	str	r2, [r3, #104]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9TopTargetEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #108]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #108]
	b	.L456
.L402:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	cmp	r3, #302
	beq	.L421
	cmp	r3, #310
	beq	.L422
	cmp	r3, #258
	bne	.L420
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	mov	r1, r7
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	mov	r3, #-1
	bl	_ZN11SQFuncState12CreateStringEPKci(PLT)
	add	r3, r7, #40
	mov	r2, r7
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	b	.L420
.L421:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r2, r7
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L457
.LPIC39:
	add	r3, pc
	mov	r2, r3
	mov	r3, #-1
	bl	_ZN11SQFuncState12CreateStringEPKci(PLT)
	add	r3, r7, #40
	mov	r2, r7
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	b	.L420
.L422:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r2, r7
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L457+4
.LPIC40:
	add	r3, pc
	mov	r2, r3
	mov	r3, #-1
	bl	_ZN11SQFuncState12CreateStringEPKci(PLT)
	add	r3, r7, #40
	mov	r2, r7
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	nop
.L420:
	mov	r3, #-1
	str	r3, [r7, #96]
	ldr	r0, [r7, #12]
	bl	_ZN10SQCompiler3LexEv(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	add	r3, r7, #40
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQFuncState16GetLocalVariableERK11tagSQObject(PLT)
	mov	r3, r0
	str	r3, [r7, #96]
	ldr	r3, [r7, #96]
	cmp	r3, #-1
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L424
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r1, [r7, #96]
	bl	_ZN11SQFuncState10PushTargetEi(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #4
	str	r2, [r3, #104]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #96]
	str	r2, [r3, #108]
	b	.L425
.L424:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	add	r3, r7, #40
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQFuncState16GetOuterVariableERK11tagSQObject(PLT)
	mov	r3, r0
	str	r3, [r7, #96]
	ldr	r3, [r7, #96]
	cmp	r3, #-1
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L426
	ldr	r0, [r7, #12]
	bl	_ZN10SQCompiler7NeedGetEv(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L427
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #-1
	bl	_ZN11SQFuncState10PushTargetEi(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #108]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #108]
	movs	r1, #0
	str	r1, [sp]
	movs	r1, #0
	str	r1, [sp, #4]
	mov	r0, r2
	movs	r1, #32
	mov	r2, r3
	ldr	r3, [r7, #96]
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	b	.L425
.L427:
	ldr	r3, [r7, #12]
	movs	r2, #5
	str	r2, [r3, #104]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #96]
	str	r2, [r3, #108]
	b	.L425
.L426:
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #4]
	add	r2, r7, #40
	add	r3, r7, #32
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	_ZN11SQFuncState10IsConstantERK11tagSQObjectRS0_(PLT)
.LEHE20:
	mov	r3, r0
	cmp	r3, #0
	beq	.L429
	add	r3, r7, #24
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r2, [r7, #32]
	movs	r3, #32
	movt	r3, 2560
	cmp	r2, r3
	bne	.L430
	add	r3, r7, #56
	mov	r0, r3
	ldr	r1, [r7, #12]
	movs	r2, #46
.LEHB21:
	bl	_ZN10SQCompiler6ExpectEi(PLT)
	mov	r3, r7
	mov	r0, r3
	ldr	r1, [r7, #12]
	mov	r2, #258
	bl	_ZN10SQCompiler6ExpectEi(PLT)
.LEHE21:
	add	r3, r7, #16
	mov	r2, r7
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r4, [r7, #36]
	add	r2, r7, #64
	add	r3, r7, #16
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1ERK11tagSQObject(PLT)
	add	r2, r7, #64
	add	r3, r7, #24
	mov	r0, r4
	mov	r1, r2
	mov	r2, r3
.LEHB22:
	bl	_ZN7SQTable3GetERK11SQObjectPtrRS0_(PLT)
.LEHE22:
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r4, r3
	add	r3, r7, #64
	mov	r0, r3
.LEHB23:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	cmp	r4, #0
	beq	.L431
	add	r3, r7, #24
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
	ldr	r3, [r7, #44]
	add	r2, r3, #28
	ldr	r3, [r7, #20]
	adds	r3, r3, #28
	ldr	r0, [r7, #12]
	ldr	r1, .L457+8
.LPIC41:
	add	r1, pc
	bl	_ZN10SQCompiler5ErrorEPKcz(PLT)
	b	.L431
.L430:
	add	r2, r7, #24
	add	r3, r7, #32
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERK11tagSQObject(PLT)
.L431:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #-1
	bl	_ZN11SQFuncState10PushTargetEi(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #108]
	ldr	r3, [r7, #24]
	str	r3, [r7, #92]
	ldr	r2, [r7, #92]
	movs	r3, #2
	movt	r3, 1280
	cmp	r2, r3
	beq	.L433
	movs	r3, #4
	movt	r3, 1280
	cmp	r2, r3
	beq	.L434
	b	.L454
.L433:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #108]
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	bl	_ZN10SQCompiler16EmitLoadConstIntEii(PLT)
	b	.L435
.L434:
	flds	s15, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #108]
	ldr	r0, [r7, #12]
	fcpys	s0, s15
	mov	r1, r3
	bl	_ZN10SQCompiler18EmitLoadConstFloatEfi(PLT)
	b	.L435
.L454:
	ldr	r3, [r7, #12]
	ldr	r5, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #108]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	add	r3, r7, #24
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQFuncState11GetConstantERK11tagSQObject(PLT)
	mov	r3, r0
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r5
	movs	r1, #1
	mov	r2, r4
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
.LEHE23:
	nop
.L435:
	ldr	r3, [r7, #12]
	movs	r2, #1
	str	r2, [r3, #104]
	add	r3, r7, #24
	mov	r0, r3
.LEHB24:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L425
.L429:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	movs	r1, #0
	bl	_ZN11SQFuncState10PushTargetEi(PLT)
	ldr	r3, [r7, #12]
	ldr	r5, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #-1
	bl	_ZN11SQFuncState10PushTargetEi(PLT)
	mov	r4, r0
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	add	r3, r7, #40
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQFuncState11GetConstantERK11tagSQObject(PLT)
	mov	r3, r0
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r5
	movs	r1, #1
	mov	r2, r4
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	ldr	r0, [r7, #12]
	bl	_ZN10SQCompiler7NeedGetEv(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L436
	ldr	r0, [r7, #12]
	movs	r1, #14
	movs	r2, #0
	bl	_ZN10SQCompiler11Emit2ArgsOPE8SQOpcodei(PLT)
.L436:
	ldr	r3, [r7, #12]
	movs	r2, #2
	str	r2, [r3, #104]
.L425:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #108]
	b	.L456
.L412:
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #-1
	bl	_ZN11SQFuncState10PushTargetEi(PLT)
	mov	r3, r0
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r4
	movs	r1, #25
	mov	r2, r3
	movs	r3, #0
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #2
	str	r2, [r3, #104]
	ldr	r3, [r7, #12]
	movs	r2, #46
	str	r2, [r3]
	ldr	r3, [r7, #12]
	mov	r2, #-1
	str	r2, [r3, #108]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #108]
	b	.L456
.L409:
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #-1
	bl	_ZN11SQFuncState10PushTargetEi(PLT)
	mov	r3, r0
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r4
	movs	r1, #24
	mov	r2, r3
	movs	r3, #1
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	ldr	r0, [r7, #12]
	bl	_ZN10SQCompiler3LexEv(PLT)
	b	.L418
.L451:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #48]
	ldr	r0, [r7, #12]
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN10SQCompiler16EmitLoadConstIntEii(PLT)
	ldr	r0, [r7, #12]
	bl	_ZN10SQCompiler3LexEv(PLT)
	b	.L418
.L403:
	ldr	r3, [r7, #12]
	flds	s15, [r3, #52]
	ldr	r0, [r7, #12]
	fcpys	s0, s15
	mov	r1, #-1
	bl	_ZN10SQCompiler18EmitLoadConstFloatEfi(PLT)
	ldr	r0, [r7, #12]
	bl	_ZN10SQCompiler3LexEv(PLT)
	b	.L418
.L453:
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #-1
	bl	_ZN11SQFuncState10PushTargetEi(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	ldr	r1, [r3]
	movw	r3, #315
	cmp	r1, r3
	bne	.L437
	movs	r3, #1
	b	.L438
.L437:
	movs	r3, #0
.L438:
	movs	r1, #0
	str	r1, [sp]
	movs	r1, #0
	str	r1, [sp, #4]
	mov	r0, r4
	movs	r1, #26
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	ldr	r0, [r7, #12]
	bl	_ZN10SQCompiler3LexEv(PLT)
	b	.L418
.L398:
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #-1
	bl	_ZN11SQFuncState10PushTargetEi(PLT)
	mov	r3, r0
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #1
	str	r2, [sp, #4]
	mov	r0, r4
	movs	r1, #33
	mov	r2, r3
	movs	r3, #0
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState13GetCurrentPosEv(PLT)
	mov	r3, r0
	str	r3, [r7, #88]
	movs	r3, #0
	str	r3, [r7, #100]
	ldr	r0, [r7, #12]
	bl	_ZN10SQCompiler3LexEv(PLT)
	b	.L439
.L441:
	ldr	r0, [r7, #12]
	bl	_ZN10SQCompiler10ExpressionEv(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	cmp	r3, #44
	bne	.L440
	ldr	r0, [r7, #12]
	bl	_ZN10SQCompiler3LexEv(PLT)
.L440:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9PopTargetEv(PLT)
	mov	r3, r0
	str	r3, [r7, #84]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9TopTargetEv(PLT)
	mov	r3, r0
	str	r3, [r7, #80]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r3
	movs	r1, #34
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #84]
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	ldr	r3, [r7, #100]
	adds	r3, r3, #1
	str	r3, [r7, #100]
.L439:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	cmp	r3, #93
	bne	.L441
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r1, [r7, #88]
	movs	r2, #1
	ldr	r3, [r7, #100]
	bl	_ZN11SQFuncState18SetIntructionParamEiii(PLT)
	ldr	r0, [r7, #12]
	bl	_ZN10SQCompiler3LexEv(PLT)
	b	.L418
.L391:
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #-1
	bl	_ZN11SQFuncState10PushTargetEi(PLT)
	mov	r3, r0
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r4
	movs	r1, #33
	mov	r2, r3
	movs	r3, #0
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	ldr	r0, [r7, #12]
	bl	_ZN10SQCompiler3LexEv(PLT)
	ldr	r0, [r7, #12]
	movs	r1, #44
	movs	r2, #125
	bl	_ZN10SQCompiler17ParseTableOrClassEii(PLT)
	b	.L418
.L407:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r0, [r7, #12]
	mov	r1, r3
	movs	r2, #0
	bl	_ZN10SQCompiler11FunctionExpEib(PLT)
	b	.L418
.L397:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r0, [r7, #12]
	mov	r1, r3
	movs	r2, #1
	bl	_ZN10SQCompiler11FunctionExpEib(PLT)
	b	.L418
.L414:
	ldr	r0, [r7, #12]
	bl	_ZN10SQCompiler3LexEv(PLT)
	ldr	r0, [r7, #12]
	bl	_ZN10SQCompiler8ClassExpEv(PLT)
	b	.L418
.L393:
	ldr	r0, [r7, #12]
	bl	_ZN10SQCompiler3LexEv(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	cmp	r3, #260
	beq	.L443
	movw	r2, #261
	cmp	r3, r2
	beq	.L444
	b	.L455
.L443:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #48]
	negs	r3, r3
	ldr	r0, [r7, #12]
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN10SQCompiler16EmitLoadConstIntEii(PLT)
	ldr	r0, [r7, #12]
	bl	_ZN10SQCompiler3LexEv(PLT)
	b	.L445
.L444:
	ldr	r3, [r7, #12]
	flds	s15, [r3, #52]
	fnegs	s15, s15
	ldr	r0, [r7, #12]
	fcpys	s0, s15
	mov	r1, #-1
	bl	_ZN10SQCompiler18EmitLoadConstFloatEfi(PLT)
	ldr	r0, [r7, #12]
	bl	_ZN10SQCompiler3LexEv(PLT)
	b	.L445
.L455:
	ldr	r0, [r7, #12]
	movs	r1, #45
	bl	_ZN10SQCompiler7UnaryOPE8SQOpcode(PLT)
	b	.L418
.L445:
	b	.L418
.L395:
	ldr	r0, [r7, #12]
	bl	_ZN10SQCompiler3LexEv(PLT)
	ldr	r0, [r7, #12]
	movs	r1, #46
	bl	_ZN10SQCompiler7UnaryOPE8SQOpcode(PLT)
	b	.L418
.L401:
	ldr	r0, [r7, #12]
	bl	_ZN10SQCompiler3LexEv(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	cmp	r3, #260
	bne	.L446
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #48]
	mvns	r3, r3
	ldr	r0, [r7, #12]
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN10SQCompiler16EmitLoadConstIntEii(PLT)
	ldr	r0, [r7, #12]
	bl	_ZN10SQCompiler3LexEv(PLT)
	b	.L418
.L446:
	ldr	r0, [r7, #12]
	movs	r1, #47
	bl	_ZN10SQCompiler7UnaryOPE8SQOpcode(PLT)
	b	.L418
.L413:
	ldr	r0, [r7, #12]
	bl	_ZN10SQCompiler3LexEv(PLT)
	ldr	r0, [r7, #12]
	movs	r1, #54
	bl	_ZN10SQCompiler7UnaryOPE8SQOpcode(PLT)
	b	.L418
.L411:
	ldr	r0, [r7, #12]
	bl	_ZN10SQCompiler3LexEv(PLT)
	ldr	r0, [r7, #12]
	movs	r1, #50
	bl	_ZN10SQCompiler7UnaryOPE8SQOpcode(PLT)
	b	.L418
.L410:
	ldr	r0, [r7, #12]
	bl	_ZN10SQCompiler3LexEv(PLT)
	ldr	r0, [r7, #12]
	movs	r1, #53
	bl	_ZN10SQCompiler7UnaryOPE8SQOpcode(PLT)
	b	.L418
.L452:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZN10SQCompiler12PrefixIncDecEi(PLT)
	b	.L418
.L389:
	ldr	r0, [r7, #12]
	bl	_ZN10SQCompiler10DeleteExprEv(PLT)
	b	.L418
.L396:
	ldr	r0, [r7, #12]
	bl	_ZN10SQCompiler3LexEv(PLT)
	ldr	r0, [r7, #12]
	bl	_ZN10SQCompiler9CommaExprEv(PLT)
	add	r3, r7, #72
	mov	r0, r3
	ldr	r1, [r7, #12]
	movs	r2, #41
	bl	_ZN10SQCompiler6ExpectEi(PLT)
.LEHE24:
	b	.L418
.L388:
	ldr	r0, [r7, #12]
	ldr	r3, .L457+12
.LPIC42:
	add	r3, pc
	mov	r1, r3
	bl	_ZN10SQCompiler5ErrorEPKcz(PLT)
.L418:
	mov	r3, #-1
	b	.L456
.L450:
	add	r3, r7, #64
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L448
.L449:
.L448:
	add	r3, r7, #24
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB25:
	bl	__cxa_end_cleanup(PLT)
.LEHE25:
.L456:
	mov	r0, r3
	adds	r7, r7, #108
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L458:
	.align	2
.L457:
	.word	.LC10-(.LPIC39+4)
	.word	.LC22-(.LPIC40+4)
	.word	.LC23-(.LPIC41+4)
	.word	.LC24-(.LPIC42+4)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA255:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE255-.LLSDACSB255
.LLSDACSB255:
	.uleb128 .LEHB20-.LFB255
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB21-.LFB255
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L449-.LFB255
	.uleb128 0
	.uleb128 .LEHB22-.LFB255
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L450-.LFB255
	.uleb128 0
	.uleb128 .LEHB23-.LFB255
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L449-.LFB255
	.uleb128 0
	.uleb128 .LEHB24-.LFB255
	.uleb128 .LEHE24-.LEHB24
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB25-.LFB255
	.uleb128 .LEHE25-.LEHB25
	.uleb128 0
	.uleb128 0
.LLSDACSE255:
	.section	.text._ZN10SQCompiler6FactorEv,"axG",%progbits,_ZN10SQCompiler6FactorEv,comdat
	.fnend
	.size	_ZN10SQCompiler6FactorEv, .-_ZN10SQCompiler6FactorEv
	.section	.text._ZN10SQCompiler16EmitLoadConstIntEii,"axG",%progbits,_ZN10SQCompiler16EmitLoadConstIntEii,comdat
	.align	2
	.weak	_ZN10SQCompiler16EmitLoadConstIntEii
	.thumb
	.thumb_func
	.type	_ZN10SQCompiler16EmitLoadConstIntEii, %function
_ZN10SQCompiler16EmitLoadConstIntEii:
	.fnstart
.LFB256:
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
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bge	.L460
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #-1
	bl	_ZN11SQFuncState10PushTargetEi(PLT)
	mov	r3, r0
	str	r3, [r7, #4]
.L460:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r3
	movs	r1, #2
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #8]
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN10SQCompiler16EmitLoadConstIntEii, .-_ZN10SQCompiler16EmitLoadConstIntEii
	.section	.text._ZN10SQCompiler18EmitLoadConstFloatEfi,"axG",%progbits,_ZN10SQCompiler18EmitLoadConstFloatEfi,comdat
	.align	2
	.weak	_ZN10SQCompiler18EmitLoadConstFloatEfi
	.thumb
	.thumb_func
	.type	_ZN10SQCompiler18EmitLoadConstFloatEfi, %function
_ZN10SQCompiler18EmitLoadConstFloatEfi:
	.fnstart
.LFB257:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #24
	sub	sp, sp, #24
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #12]
	fsts	s0, [r7, #8]
	str	r1, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bge	.L462
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #-1
	bl	_ZN11SQFuncState10PushTargetEi(PLT)
	mov	r3, r0
	str	r3, [r7, #4]
.L462:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	add	r3, r7, #8
	ldr	r3, [r3]
	movs	r1, #0
	str	r1, [sp]
	movs	r1, #0
	str	r1, [sp, #4]
	mov	r0, r2
	movs	r1, #3
	ldr	r2, [r7, #4]
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN10SQCompiler18EmitLoadConstFloatEfi, .-_ZN10SQCompiler18EmitLoadConstFloatEfi
	.section	.text._ZN10SQCompiler7UnaryOPE8SQOpcode,"axG",%progbits,_ZN10SQCompiler7UnaryOPE8SQOpcode,comdat
	.align	2
	.weak	_ZN10SQCompiler7UnaryOPE8SQOpcode
	.thumb
	.thumb_func
	.type	_ZN10SQCompiler7UnaryOPE8SQOpcode, %function
_ZN10SQCompiler7UnaryOPE8SQOpcode:
	.fnstart
.LFB258:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #28
	sub	sp, sp, #28
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler12PrefixedExprEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9PopTargetEv(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #-1
	bl	_ZN11SQFuncState10PushTargetEi(PLT)
	mov	r3, r0
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r4
	ldr	r1, [r7]
	mov	r2, r3
	ldr	r3, [r7, #12]
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZN10SQCompiler7UnaryOPE8SQOpcode, .-_ZN10SQCompiler7UnaryOPE8SQOpcode
	.section	.text._ZN10SQCompiler7NeedGetEv,"axG",%progbits,_ZN10SQCompiler7NeedGetEv,comdat
	.align	2
	.weak	_ZN10SQCompiler7NeedGetEv
	.thumb
	.thumb_func
	.type	_ZN10SQCompiler7NeedGetEv, %function
_ZN10SQCompiler7NeedGetEv:
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
	ldr	r3, [r3]
	cmp	r3, #290
	bgt	.L466
	cmp	r3, #288
	bgt	.L467
	cmp	r3, #61
	beq	.L467
	movw	r2, #281
	cmp	r3, r2
	beq	.L467
	cmp	r3, #40
	beq	.L467
	b	.L465
.L466:
	cmp	r3, #302
	ble	.L465
	cmp	r3, #304
	ble	.L467
	subw	r3, r3, #317
	cmp	r3, #2
	bhi	.L465
.L467:
	movs	r3, #0
	b	.L468
.L465:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #112]	@ zero_extendqisi2
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L469
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #112]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L470
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #46
	beq	.L469
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #91
	bne	.L470
.L469:
	movs	r3, #1
	b	.L471
.L470:
	movs	r3, #0
.L471:
.L468:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN10SQCompiler7NeedGetEv, .-_ZN10SQCompiler7NeedGetEv
	.section	.rodata
	.align	2
.LC25:
	.ascii	"expression expected, found ')'\000"
	.section	.text._ZN10SQCompiler16FunctionCallArgsEv,"axG",%progbits,_ZN10SQCompiler16FunctionCallArgsEv,comdat
	.align	2
	.weak	_ZN10SQCompiler16FunctionCallArgsEv
	.thumb
	.thumb_func
	.type	_ZN10SQCompiler16FunctionCallArgsEv, %function
_ZN10SQCompiler16FunctionCallArgsEv:
	.fnstart
.LFB260:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #36
	sub	sp, sp, #36
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	movs	r3, #1
	str	r3, [r7, #20]
	b	.L473
.L474:
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler10ExpressionEv(PLT)
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler26MoveIfCurrentTargetIsLocalEv(PLT)
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #44
	bne	.L473
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler3LexEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #41
	bne	.L473
	ldr	r0, [r7, #4]
	ldr	r3, .L477
.LPIC43:
	add	r3, pc
	mov	r1, r3
	bl	_ZN10SQCompiler5ErrorEPKcz(PLT)
.L473:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #41
	bne	.L474
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler3LexEv(PLT)
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L475
.L476:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9PopTargetEv(PLT)
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L475:
	ldr	r3, [r7, #20]
	subs	r2, r3, #1
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bgt	.L476
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9PopTargetEv(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9PopTargetEv(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #-1
	bl	_ZN11SQFuncState10PushTargetEi(PLT)
	mov	r3, r0
	ldr	r2, [r7, #12]
	str	r2, [sp]
	ldr	r2, [r7, #20]
	str	r2, [sp, #4]
	mov	r0, r4
	movs	r1, #6
	mov	r2, r3
	ldr	r3, [r7, #8]
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L478:
	.align	2
.L477:
	.word	.LC25-(.LPIC43+4)
	.fnend
	.size	_ZN10SQCompiler16FunctionCallArgsEv, .-_ZN10SQCompiler16FunctionCallArgsEv
	.section	.rodata
	.align	2
.LC26:
	.ascii	"(hasattrs && (attrs == key-1)) || !hasattrs\000"
	.section	.text._ZN10SQCompiler17ParseTableOrClassEii,"axG",%progbits,_ZN10SQCompiler17ParseTableOrClassEii,comdat
	.align	2
	.weak	_ZN10SQCompiler17ParseTableOrClassEii
	.thumb
	.thumb_func
	.type	_ZN10SQCompiler17ParseTableOrClassEii, %function
_ZN10SQCompiler17ParseTableOrClassEii:
	.fnstart
.LFB261:
	@ args = 0, pretend = 0, frame = 120
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	.save {r4, r5, r6, r7, lr}
	.pad #132
	sub	sp, sp, #132
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState13GetCurrentPosEv(PLT)
	mov	r3, r0
	str	r3, [r7, #108]
	movs	r3, #0
	str	r3, [r7, #116]
	b	.L480
.L501:
	movs	r3, #0
	strb	r3, [r7, #115]
	movs	r3, #0
	strb	r3, [r7, #114]
	ldr	r3, [r7, #8]
	cmp	r3, #59
	bne	.L481
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	cmp	r3, #320
	bne	.L482
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #-1
	bl	_ZN11SQFuncState10PushTargetEi(PLT)
	mov	r3, r0
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r4
	movs	r1, #33
	mov	r2, r3
	movs	r3, #0
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	ldr	r0, [r7, #12]
	bl	_ZN10SQCompiler3LexEv(PLT)
	ldr	r0, [r7, #12]
	movs	r1, #44
	movw	r2, #321
	bl	_ZN10SQCompiler17ParseTableOrClassEii(PLT)
	movs	r3, #1
	strb	r3, [r7, #115]
.L482:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	cmp	r3, #322
	bne	.L481
	movs	r3, #1
	strb	r3, [r7, #114]
	ldr	r0, [r7, #12]
	bl	_ZN10SQCompiler3LexEv(PLT)
.L481:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	movw	r2, #259
	cmp	r3, r2
	beq	.L484
	cmp	r3, #260
	bge	.L485
	cmp	r3, #91
	beq	.L486
	b	.L483
.L485:
	movw	r2, #285
	cmp	r3, r2
	beq	.L487
	cmp	r3, #310
	bne	.L483
.L487:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #104]
	ldr	r0, [r7, #12]
	bl	_ZN10SQCompiler3LexEv(PLT)
	ldr	r2, [r7, #104]
	movw	r3, #285
	cmp	r2, r3
	bne	.L488
	add	r3, r7, #20
	mov	r0, r3
	ldr	r1, [r7, #12]
	mov	r2, #258
	bl	_ZN10SQCompiler6ExpectEi(PLT)
	b	.L489
.L488:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	add	r2, r7, #20
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L503
.LPIC44:
	add	r3, pc
	mov	r2, r3
	mov	r3, #-1
	bl	_ZN11SQFuncState12CreateStringEPKci(PLT)
.L489:
	add	r3, r7, #28
	mov	r0, r3
	ldr	r1, [r7, #12]
	movs	r2, #40
	bl	_ZN10SQCompiler6ExpectEi(PLT)
	ldr	r3, [r7, #12]
	ldr	r5, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #-1
	bl	_ZN11SQFuncState10PushTargetEi(PLT)
	mov	r4, r0
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	add	r3, r7, #20
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQFuncState11GetConstantERK11tagSQObject(PLT)
	mov	r3, r0
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r5
	movs	r1, #1
	mov	r2, r4
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	mov	r1, r3
	movs	r2, #0
	bl	_ZN10SQCompiler14CreateFunctionER11tagSQObjectb(PLT)
	ldr	r3, [r7, #12]
	ldr	r5, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #-1
	bl	_ZN11SQFuncState10PushTargetEi(PLT)
	mov	r4, r0
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	adds	r3, r3, #60
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4sizeEv(PLT)
	mov	r3, r0
	subs	r3, r3, #1
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r5
	movs	r1, #48
	mov	r2, r4
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	b	.L490
.L486:
	ldr	r0, [r7, #12]
	bl	_ZN10SQCompiler3LexEv(PLT)
	ldr	r0, [r7, #12]
	bl	_ZN10SQCompiler9CommaExprEv(PLT)
	add	r3, r7, #36
	mov	r0, r3
	ldr	r1, [r7, #12]
	movs	r2, #93
	bl	_ZN10SQCompiler6ExpectEi(PLT)
	add	r3, r7, #44
	mov	r0, r3
	ldr	r1, [r7, #12]
	movs	r2, #61
	bl	_ZN10SQCompiler6ExpectEi(PLT)
	ldr	r0, [r7, #12]
	bl	_ZN10SQCompiler10ExpressionEv(PLT)
	b	.L490
.L484:
	ldr	r3, [r7, #8]
	cmp	r3, #44
	bne	.L483
	ldr	r3, [r7, #12]
	ldr	r5, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #-1
	bl	_ZN11SQFuncState10PushTargetEi(PLT)
	mov	r4, r0
	ldr	r3, [r7, #12]
	ldr	r6, [r3, #4]
	add	r3, r7, #52
	mov	r0, r3
	ldr	r1, [r7, #12]
	movw	r2, #259
	bl	_ZN10SQCompiler6ExpectEi(PLT)
	add	r3, r7, #52
	mov	r0, r6
	mov	r1, r3
	bl	_ZN11SQFuncState11GetConstantERK11tagSQObject(PLT)
	mov	r3, r0
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r5
	movs	r1, #1
	mov	r2, r4
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	add	r3, r7, #60
	mov	r0, r3
	ldr	r1, [r7, #12]
	movs	r2, #58
	bl	_ZN10SQCompiler6ExpectEi(PLT)
	ldr	r0, [r7, #12]
	bl	_ZN10SQCompiler10ExpressionEv(PLT)
	b	.L490
.L483:
	ldr	r3, [r7, #12]
	ldr	r5, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #-1
	bl	_ZN11SQFuncState10PushTargetEi(PLT)
	mov	r4, r0
	ldr	r3, [r7, #12]
	ldr	r6, [r3, #4]
	add	r3, r7, #68
	mov	r0, r3
	ldr	r1, [r7, #12]
	mov	r2, #258
	bl	_ZN10SQCompiler6ExpectEi(PLT)
	add	r3, r7, #68
	mov	r0, r6
	mov	r1, r3
	bl	_ZN11SQFuncState11GetConstantERK11tagSQObject(PLT)
	mov	r3, r0
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r5
	movs	r1, #1
	mov	r2, r4
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	add	r3, r7, #76
	mov	r0, r3
	ldr	r1, [r7, #12]
	movs	r2, #61
	bl	_ZN10SQCompiler6ExpectEi(PLT)
	ldr	r0, [r7, #12]
	bl	_ZN10SQCompiler10ExpressionEv(PLT)
.L490:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bne	.L491
	ldr	r0, [r7, #12]
	bl	_ZN10SQCompiler3LexEv(PLT)
.L491:
	ldr	r3, [r7, #116]
	adds	r3, r3, #1
	str	r3, [r7, #116]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9PopTargetEv(PLT)
	mov	r3, r0
	str	r3, [r7, #100]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9PopTargetEv(PLT)
	mov	r3, r0
	str	r3, [r7, #96]
	ldrb	r3, [r7, #115]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L492
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9PopTargetEv(PLT)
	mov	r3, r0
	b	.L493
.L492:
	mov	r3, #-1
.L493:
	str	r3, [r7, #92]
	ldrb	r3, [r7, #115]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L494
	ldr	r3, [r7, #96]
	subs	r2, r3, #1
	ldr	r3, [r7, #92]
	cmp	r2, r3
	beq	.L495
.L494:
	ldrb	r3, [r7, #115]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L495
	ldr	r3, .L503+4
.LPIC45:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L503+8
.LPIC46:
	add	r3, pc
	mov	r1, r3
	movw	r2, #974
	ldr	r3, .L503+12
.LPIC47:
	add	r3, pc
	bl	__assert_fail(PLT)
.L495:
	ldrb	r3, [r7, #115]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L496
	movs	r2, #1
	b	.L497
.L496:
	movs	r2, #0
.L497:
	ldrb	r3, [r7, #114]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L498
	movs	r3, #2
	b	.L499
.L498:
	movs	r3, #0
.L499:
	orrs	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [r7, #91]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9TopTargetEv(PLT)
	mov	r3, r0
	str	r3, [r7, #84]
	ldr	r3, [r7, #8]
	cmp	r3, #44
	bne	.L500
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #96]
	str	r2, [sp]
	ldr	r2, [r7, #100]
	str	r2, [sp, #4]
	mov	r0, r3
	movs	r1, #11
	movs	r2, #255
	ldr	r3, [r7, #84]
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	b	.L480
.L500:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldrb	r3, [r7, #91]	@ zero_extendqisi2
	ldr	r1, [r7, #96]
	str	r1, [sp]
	ldr	r1, [r7, #100]
	str	r1, [sp, #4]
	mov	r0, r2
	movs	r1, #58
	mov	r2, r3
	ldr	r3, [r7, #84]
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
.L480:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bne	.L501
	ldr	r3, [r7, #8]
	cmp	r3, #44
	bne	.L502
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r1, [r7, #108]
	movs	r2, #1
	ldr	r3, [r7, #116]
	bl	_ZN11SQFuncState18SetIntructionParamEiii(PLT)
.L502:
	ldr	r0, [r7, #12]
	bl	_ZN10SQCompiler3LexEv(PLT)
	adds	r7, r7, #124
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L504:
	.align	2
.L503:
	.word	.LC22-(.LPIC44+4)
	.word	.LC26-(.LPIC45+4)
	.word	.LC19-(.LPIC46+4)
	.word	_ZZN10SQCompiler17ParseTableOrClassEiiE19__PRETTY_FUNCTION__-(.LPIC47+4)
	.fnend
	.size	_ZN10SQCompiler17ParseTableOrClassEii, .-_ZN10SQCompiler17ParseTableOrClassEii
	.section	.text._ZN10SQCompiler18LocalDeclStatementEv,"axG",%progbits,_ZN10SQCompiler18LocalDeclStatementEv,comdat
	.align	2
	.weak	_ZN10SQCompiler18LocalDeclStatementEv
	.thumb
	.thumb_func
	.type	_ZN10SQCompiler18LocalDeclStatementEv, %function
_ZN10SQCompiler18LocalDeclStatementEv:
	.fnstart
.LFB262:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #48
	sub	sp, sp, #48
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #12]
	ldr	r0, [r7, #12]
	bl	_ZN10SQCompiler3LexEv(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	movw	r3, #285
	cmp	r2, r3
	bne	.L506
	ldr	r0, [r7, #12]
	bl	_ZN10SQCompiler3LexEv(PLT)
	mov	r3, r7
	mov	r0, r3
	ldr	r1, [r7, #12]
	mov	r2, #258
	bl	_ZN10SQCompiler6ExpectEi(PLT)
	add	r3, r7, #16
	mov	r2, r7
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	add	r3, r7, #24
	mov	r0, r3
	ldr	r1, [r7, #12]
	movs	r2, #40
	bl	_ZN10SQCompiler6ExpectEi(PLT)
	add	r3, r7, #16
	ldr	r0, [r7, #12]
	mov	r1, r3
	movs	r2, #0
	bl	_ZN10SQCompiler14CreateFunctionER11tagSQObjectb(PLT)
	ldr	r3, [r7, #12]
	ldr	r5, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #-1
	bl	_ZN11SQFuncState10PushTargetEi(PLT)
	mov	r4, r0
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	adds	r3, r3, #60
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4sizeEv(PLT)
	mov	r3, r0
	subs	r3, r3, #1
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r5
	movs	r1, #48
	mov	r2, r4
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9PopTargetEv(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	add	r3, r7, #16
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQFuncState17PushLocalVariableERK11tagSQObject(PLT)
	b	.L505
.L506:
	mov	r3, r7
	mov	r0, r3
	ldr	r1, [r7, #12]
	mov	r2, #258
	bl	_ZN10SQCompiler6ExpectEi(PLT)
	add	r3, r7, #16
	mov	r2, r7
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	cmp	r3, #61
	bne	.L508
	ldr	r0, [r7, #12]
	bl	_ZN10SQCompiler3LexEv(PLT)
	ldr	r0, [r7, #12]
	bl	_ZN10SQCompiler10ExpressionEv(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9PopTargetEv(PLT)
	mov	r3, r0
	str	r3, [r7, #36]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #-1
	bl	_ZN11SQFuncState10PushTargetEi(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	beq	.L509
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r3
	movs	r1, #10
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #36]
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
.L509:
	b	.L510
.L508:
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #-1
	bl	_ZN11SQFuncState10PushTargetEi(PLT)
	mov	r3, r0
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r4
	movs	r1, #24
	mov	r2, r3
	movs	r3, #1
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
.L510:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9PopTargetEv(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	add	r3, r7, #16
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQFuncState17PushLocalVariableERK11tagSQObject(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	cmp	r3, #44
	bne	.L511
	ldr	r0, [r7, #12]
	bl	_ZN10SQCompiler3LexEv(PLT)
	b	.L506
.L511:
	nop
.L505:
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.fnend
	.size	_ZN10SQCompiler18LocalDeclStatementEv, .-_ZN10SQCompiler18LocalDeclStatementEv
	.section	.text._ZN10SQCompiler11IfStatementEv,"axG",%progbits,_ZN10SQCompiler11IfStatementEv,comdat
	.align	2
	.weak	_ZN10SQCompiler11IfStatementEv
	.thumb
	.thumb_func
	.type	_ZN10SQCompiler11IfStatementEv, %function
_ZN10SQCompiler11IfStatementEv:
	.fnstart
.LFB263:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #76
	sub	sp, sp, #76
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #63]
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler3LexEv(PLT)
	add	r3, r7, #24
	mov	r0, r3
	ldr	r1, [r7, #4]
	movs	r2, #40
	bl	_ZN10SQCompiler6ExpectEi(PLT)
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler9CommaExprEv(PLT)
	add	r3, r7, #32
	mov	r0, r3
	ldr	r1, [r7, #4]
	movs	r2, #41
	bl	_ZN10SQCompiler6ExpectEi(PLT)
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9PopTargetEv(PLT)
	mov	r3, r0
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r4
	movs	r1, #30
	mov	r2, r3
	movs	r3, #0
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState13GetCurrentPosEv(PLT)
	mov	r3, r0
	str	r3, [r7, #56]
	ldr	r2, [r7, #4]
	add	r3, r7, #16
	adds	r2, r2, #116
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #228]
	ldr	r3, [r7, #4]
	str	r2, [r3, #116]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState12GetStackSizeEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #120]
	ldr	r0, [r7, #4]
	movs	r1, #1
	bl	_ZN10SQCompiler9StatementEb(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #125
	beq	.L515
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	movw	r3, #273
	cmp	r2, r3
	beq	.L515
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler17OptionalSemicolonEv(PLT)
.L515:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #228]
	str	r3, [r7, #52]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState12GetStackSizeEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #120]
	cmp	r2, r3
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L516
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #120]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQFuncState12SetStackSizeEi(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #228]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	beq	.L516
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #120]
	movs	r1, #0
	str	r1, [sp]
	movs	r1, #0
	str	r1, [sp, #4]
	mov	r0, r2
	movs	r1, #60
	movs	r2, #0
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
.L516:
	ldr	r3, [r7, #4]
	adds	r3, r3, #116
	add	r2, r7, #16
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState13GetCurrentPosEv(PLT)
	mov	r3, r0
	str	r3, [r7, #48]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	movw	r3, #273
	cmp	r2, r3
	bne	.L517
	movs	r3, #1
	strb	r3, [r7, #63]
	ldr	r2, [r7, #4]
	add	r3, r7, #8
	adds	r2, r2, #116
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #228]
	ldr	r3, [r7, #4]
	str	r2, [r3, #116]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState12GetStackSizeEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #120]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r3
	movs	r1, #28
	movs	r2, #0
	movs	r3, #0
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState13GetCurrentPosEv(PLT)
	mov	r3, r0
	str	r3, [r7, #44]
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler3LexEv(PLT)
	ldr	r0, [r7, #4]
	movs	r1, #1
	bl	_ZN10SQCompiler9StatementEb(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	cmp	r3, #125
	beq	.L518
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler17OptionalSemicolonEv(PLT)
.L518:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #228]
	str	r3, [r7, #40]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState12GetStackSizeEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #120]
	cmp	r2, r3
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L519
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #120]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQFuncState12SetStackSizeEi(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #228]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	beq	.L519
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #120]
	movs	r1, #0
	str	r1, [sp]
	movs	r1, #0
	str	r1, [sp, #4]
	mov	r0, r2
	movs	r1, #60
	movs	r2, #0
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
.L519:
	ldr	r3, [r7, #4]
	adds	r3, r3, #116
	add	r2, r7, #8
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState13GetCurrentPosEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #44]
	subs	r3, r2, r3
	mov	r0, r4
	ldr	r1, [r7, #44]
	movs	r2, #1
	bl	_ZN11SQFuncState18SetIntructionParamEiii(PLT)
.L517:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r1, [r7, #48]
	ldr	r3, [r7, #56]
	subs	r1, r1, r3
	ldrb	r3, [r7, #63]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L520
	movs	r3, #1
	b	.L521
.L520:
	movs	r3, #0
.L521:
	add	r3, r3, r1
	mov	r0, r2
	ldr	r1, [r7, #56]
	movs	r2, #1
	bl	_ZN11SQFuncState18SetIntructionParamEiii(PLT)
	adds	r7, r7, #68
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZN10SQCompiler11IfStatementEv, .-_ZN10SQCompiler11IfStatementEv
	.section	.text._ZN10SQCompiler14WhileStatementEv,"axG",%progbits,_ZN10SQCompiler14WhileStatementEv,comdat
	.align	2
	.weak	_ZN10SQCompiler14WhileStatementEv
	.thumb
	.thumb_func
	.type	_ZN10SQCompiler14WhileStatementEv, %function
_ZN10SQCompiler14WhileStatementEv:
	.fnstart
.LFB264:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #76
	sub	sp, sp, #76
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState13GetCurrentPosEv(PLT)
	mov	r3, r0
	str	r3, [r7, #60]
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler3LexEv(PLT)
	add	r3, r7, #20
	mov	r0, r3
	ldr	r1, [r7, #4]
	movs	r2, #40
	bl	_ZN10SQCompiler6ExpectEi(PLT)
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler9CommaExprEv(PLT)
	add	r3, r7, #28
	mov	r0, r3
	ldr	r1, [r7, #4]
	movs	r2, #41
	bl	_ZN10SQCompiler6ExpectEi(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	adds	r3, r3, #36
	mov	r0, r3
	bl	_ZNK8sqvectorIiE4sizeEv(PLT)
	mov	r3, r0
	str	r3, [r7, #56]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	adds	r3, r3, #48
	mov	r0, r3
	bl	_ZNK8sqvectorIiE4sizeEv(PLT)
	mov	r3, r0
	str	r3, [r7, #52]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	add	r2, r3, #184
	movs	r3, #0
	str	r3, [r7, #36]
	add	r3, r7, #36
	mov	r0, r2
	mov	r1, r3
	bl	_ZN8sqvectorIiE9push_backERKi(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	add	r2, r3, #196
	movs	r3, #0
	str	r3, [r7, #40]
	add	r3, r7, #40
	mov	r0, r2
	mov	r1, r3
	bl	_ZN8sqvectorIiE9push_backERKi(PLT)
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9PopTargetEv(PLT)
	mov	r3, r0
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r4
	movs	r1, #30
	mov	r2, r3
	movs	r3, #0
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState13GetCurrentPosEv(PLT)
	mov	r3, r0
	str	r3, [r7, #48]
	ldr	r2, [r7, #4]
	add	r3, r7, #12
	adds	r2, r2, #116
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #228]
	ldr	r3, [r7, #4]
	str	r2, [r3, #116]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState12GetStackSizeEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #120]
	ldr	r0, [r7, #4]
	movs	r1, #1
	bl	_ZN10SQCompiler9StatementEb(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #228]
	str	r3, [r7, #44]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState12GetStackSizeEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #120]
	cmp	r2, r3
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L523
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #120]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQFuncState12SetStackSizeEi(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #228]
	ldr	r3, [r7, #44]
	cmp	r2, r3
	beq	.L523
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #120]
	movs	r1, #0
	str	r1, [sp]
	movs	r1, #0
	str	r1, [sp, #4]
	mov	r0, r2
	movs	r1, #60
	movs	r2, #0
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
.L523:
	ldr	r3, [r7, #4]
	adds	r3, r3, #116
	add	r2, r7, #12
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState13GetCurrentPosEv(PLT)
	mov	r3, r0
	ldr	r2, [r7, #60]
	subs	r3, r2, r3
	subs	r3, r3, #1
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r4
	movs	r1, #28
	movs	r2, #0
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState13GetCurrentPosEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #48]
	subs	r3, r2, r3
	mov	r0, r4
	ldr	r1, [r7, #48]
	movs	r2, #1
	bl	_ZN11SQFuncState18SetIntructionParamEiii(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	adds	r3, r3, #36
	mov	r0, r3
	bl	_ZNK8sqvectorIiE4sizeEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #56]
	subs	r3, r2, r3
	str	r3, [r7, #56]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	adds	r3, r3, #48
	mov	r0, r3
	bl	_ZNK8sqvectorIiE4sizeEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #52]
	subs	r3, r2, r3
	str	r3, [r7, #52]
	ldr	r3, [r7, #52]
	cmp	r3, #0
	ble	.L524
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #4]
	mov	r1, r3
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #60]
	bl	_ZN10SQCompiler16ResolveContinuesEP11SQFuncStateii(PLT)
.L524:
	ldr	r3, [r7, #56]
	cmp	r3, #0
	ble	.L525
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #4]
	mov	r1, r3
	ldr	r2, [r7, #56]
	bl	_ZN10SQCompiler13ResolveBreaksEP11SQFuncStatei(PLT)
.L525:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	adds	r3, r3, #184
	mov	r0, r3
	bl	_ZN8sqvectorIiE8pop_backEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	adds	r3, r3, #196
	mov	r0, r3
	bl	_ZN8sqvectorIiE8pop_backEv(PLT)
	adds	r7, r7, #68
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZN10SQCompiler14WhileStatementEv, .-_ZN10SQCompiler14WhileStatementEv
	.section	.text._ZN10SQCompiler16DoWhileStatementEv,"axG",%progbits,_ZN10SQCompiler16DoWhileStatementEv,comdat
	.align	2
	.weak	_ZN10SQCompiler16DoWhileStatementEv
	.thumb
	.thumb_func
	.type	_ZN10SQCompiler16DoWhileStatementEv, %function
_ZN10SQCompiler16DoWhileStatementEv:
	.fnstart
.LFB265:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #84
	sub	sp, sp, #84
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler3LexEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState13GetCurrentPosEv(PLT)
	mov	r3, r0
	str	r3, [r7, #68]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	adds	r3, r3, #36
	mov	r0, r3
	bl	_ZNK8sqvectorIiE4sizeEv(PLT)
	mov	r3, r0
	str	r3, [r7, #64]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	adds	r3, r3, #48
	mov	r0, r3
	bl	_ZNK8sqvectorIiE4sizeEv(PLT)
	mov	r3, r0
	str	r3, [r7, #60]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	add	r2, r3, #184
	movs	r3, #0
	str	r3, [r7, #20]
	add	r3, r7, #20
	mov	r0, r2
	mov	r1, r3
	bl	_ZN8sqvectorIiE9push_backERKi(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	add	r2, r3, #196
	movs	r3, #0
	str	r3, [r7, #24]
	add	r3, r7, #24
	mov	r0, r2
	mov	r1, r3
	bl	_ZN8sqvectorIiE9push_backERKi(PLT)
	ldr	r2, [r7, #4]
	add	r3, r7, #12
	adds	r2, r2, #116
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #228]
	ldr	r3, [r7, #4]
	str	r2, [r3, #116]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState12GetStackSizeEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #120]
	ldr	r0, [r7, #4]
	movs	r1, #1
	bl	_ZN10SQCompiler9StatementEb(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #228]
	str	r3, [r7, #56]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState12GetStackSizeEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #120]
	cmp	r2, r3
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L527
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #120]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQFuncState12SetStackSizeEi(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #228]
	ldr	r3, [r7, #56]
	cmp	r2, r3
	beq	.L527
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #120]
	movs	r1, #0
	str	r1, [sp]
	movs	r1, #0
	str	r1, [sp, #4]
	mov	r0, r2
	movs	r1, #60
	movs	r2, #0
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
.L527:
	ldr	r3, [r7, #4]
	adds	r3, r3, #116
	add	r2, r7, #12
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	add	r3, r7, #28
	mov	r0, r3
	ldr	r1, [r7, #4]
	mov	r2, #274
	bl	_ZN10SQCompiler6ExpectEi(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState13GetCurrentPosEv(PLT)
	mov	r3, r0
	str	r3, [r7, #52]
	add	r3, r7, #36
	mov	r0, r3
	ldr	r1, [r7, #4]
	movs	r2, #40
	bl	_ZN10SQCompiler6ExpectEi(PLT)
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler9CommaExprEv(PLT)
	add	r3, r7, #44
	mov	r0, r3
	ldr	r1, [r7, #4]
	movs	r2, #41
	bl	_ZN10SQCompiler6ExpectEi(PLT)
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9PopTargetEv(PLT)
	mov	r3, r0
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r4
	movs	r1, #30
	mov	r2, r3
	movs	r3, #1
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState13GetCurrentPosEv(PLT)
	mov	r3, r0
	ldr	r2, [r7, #68]
	subs	r3, r2, r3
	subs	r3, r3, #1
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r4
	movs	r1, #28
	movs	r2, #0
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	adds	r3, r3, #36
	mov	r0, r3
	bl	_ZNK8sqvectorIiE4sizeEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #64]
	subs	r3, r2, r3
	str	r3, [r7, #64]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	adds	r3, r3, #48
	mov	r0, r3
	bl	_ZNK8sqvectorIiE4sizeEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #60]
	subs	r3, r2, r3
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	cmp	r3, #0
	ble	.L528
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #4]
	mov	r1, r3
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #52]
	bl	_ZN10SQCompiler16ResolveContinuesEP11SQFuncStateii(PLT)
.L528:
	ldr	r3, [r7, #64]
	cmp	r3, #0
	ble	.L529
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #4]
	mov	r1, r3
	ldr	r2, [r7, #64]
	bl	_ZN10SQCompiler13ResolveBreaksEP11SQFuncStatei(PLT)
.L529:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	adds	r3, r3, #184
	mov	r0, r3
	bl	_ZN8sqvectorIiE8pop_backEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	adds	r3, r3, #196
	mov	r0, r3
	bl	_ZN8sqvectorIiE8pop_backEv(PLT)
	adds	r7, r7, #76
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZN10SQCompiler16DoWhileStatementEv, .-_ZN10SQCompiler16DoWhileStatementEv
	.section	.text._ZN10SQCompiler12ForStatementEv,"axG",%progbits,_ZN10SQCompiler12ForStatementEv,comdat
	.align	2
	.weak	_ZN10SQCompiler12ForStatementEv
	.thumb
	.thumb_func
	.type	_ZN10SQCompiler12ForStatementEv, %function
_ZN10SQCompiler12ForStatementEv:
	.fnstart
.LFB266:
	@ args = 0, pretend = 0, frame = 112
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #124
	sub	sp, sp, #124
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
.LEHB26:
	bl	_ZN10SQCompiler3LexEv(PLT)
	ldr	r2, [r7, #4]
	add	r3, r7, #20
	adds	r2, r2, #116
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #228]
	ldr	r3, [r7, #4]
	str	r2, [r3, #116]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState12GetStackSizeEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #120]
	add	r3, r7, #28
	mov	r0, r3
	ldr	r1, [r7, #4]
	movs	r2, #40
	bl	_ZN10SQCompiler6ExpectEi(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	movw	r3, #283
	cmp	r2, r3
	bne	.L531
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler18LocalDeclStatementEv(PLT)
	b	.L532
.L531:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #59
	beq	.L532
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler9CommaExprEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9PopTargetEv(PLT)
.L532:
	add	r3, r7, #36
	mov	r0, r3
	ldr	r1, [r7, #4]
	movs	r2, #59
	bl	_ZN10SQCompiler6ExpectEi(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9SnoozeOptEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState13GetCurrentPosEv(PLT)
	mov	r3, r0
	str	r3, [r7, #96]
	mov	r3, #-1
	str	r3, [r7, #108]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #59
	beq	.L533
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler9CommaExprEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9PopTargetEv(PLT)
	mov	r3, r0
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r4
	movs	r1, #30
	mov	r2, r3
	movs	r3, #0
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState13GetCurrentPosEv(PLT)
	mov	r3, r0
	str	r3, [r7, #108]
.L533:
	add	r3, r7, #44
	mov	r0, r3
	ldr	r1, [r7, #4]
	movs	r2, #59
	bl	_ZN10SQCompiler6ExpectEi(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9SnoozeOptEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState13GetCurrentPosEv(PLT)
	mov	r3, r0
	adds	r3, r3, #1
	str	r3, [r7, #92]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #41
	beq	.L534
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler9CommaExprEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9PopTargetEv(PLT)
.L534:
	add	r3, r7, #52
	mov	r0, r3
	ldr	r1, [r7, #4]
	movs	r2, #41
	bl	_ZN10SQCompiler6ExpectEi(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9SnoozeOptEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState13GetCurrentPosEv(PLT)
	mov	r3, r0
	str	r3, [r7, #88]
	ldr	r2, [r7, #88]
	ldr	r3, [r7, #92]
	subs	r3, r2, r3
	adds	r3, r3, #1
	str	r3, [r7, #84]
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN8sqvectorI13SQInstructionEC1Ev(PLT)
.LEHE26:
	ldr	r3, [r7, #84]
	cmp	r3, #0
	ble	.L535
	movs	r3, #0
	str	r3, [r7, #104]
	b	.L536
.L537:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r1, [r7, #92]
	ldr	r3, [r7, #104]
	add	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
.LEHB27:
	bl	_ZN11SQFuncState14GetInstructionEi(PLT)
	mov	r3, r0
	add	r2, r7, #8
	mov	r0, r2
	mov	r1, r3
	bl	_ZN8sqvectorI13SQInstructionE9push_backERKS0_(PLT)
	ldr	r3, [r7, #104]
	adds	r3, r3, #1
	str	r3, [r7, #104]
.L536:
	ldr	r2, [r7, #104]
	ldr	r3, [r7, #84]
	cmp	r2, r3
	blt	.L537
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r1, [r7, #84]
	bl	_ZN11SQFuncState15PopInstructionsEi(PLT)
.L535:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	adds	r3, r3, #36
	mov	r0, r3
	bl	_ZNK8sqvectorIiE4sizeEv(PLT)
	mov	r3, r0
	str	r3, [r7, #80]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	adds	r3, r3, #48
	mov	r0, r3
	bl	_ZNK8sqvectorIiE4sizeEv(PLT)
	mov	r3, r0
	str	r3, [r7, #76]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	add	r2, r3, #184
	movs	r3, #0
	str	r3, [r7, #60]
	add	r3, r7, #60
	mov	r0, r2
	mov	r1, r3
	bl	_ZN8sqvectorIiE9push_backERKi(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	add	r2, r3, #196
	movs	r3, #0
	str	r3, [r7, #64]
	add	r3, r7, #64
	mov	r0, r2
	mov	r1, r3
	bl	_ZN8sqvectorIiE9push_backERKi(PLT)
	ldr	r0, [r7, #4]
	movs	r1, #1
	bl	_ZN10SQCompiler9StatementEb(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState13GetCurrentPosEv(PLT)
	mov	r3, r0
	str	r3, [r7, #72]
	ldr	r3, [r7, #84]
	cmp	r3, #0
	ble	.L538
	movs	r3, #0
	str	r3, [r7, #100]
	b	.L539
.L540:
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #100]
	add	r2, r7, #8
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI13SQInstructionEixEj(PLT)
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	bl	_ZN11SQFuncState14AddInstructionER13SQInstruction(PLT)
	ldr	r3, [r7, #100]
	adds	r3, r3, #1
	str	r3, [r7, #100]
.L539:
	ldr	r2, [r7, #100]
	ldr	r3, [r7, #84]
	cmp	r2, r3
	blt	.L540
.L538:
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState13GetCurrentPosEv(PLT)
	mov	r3, r0
	ldr	r2, [r7, #96]
	subs	r3, r2, r3
	subs	r3, r3, #1
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r4
	movs	r1, #28
	movs	r2, #0
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	ldr	r3, [r7, #108]
	cmp	r3, #0
	ble	.L541
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState13GetCurrentPosEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #108]
	subs	r3, r2, r3
	mov	r0, r4
	ldr	r1, [r7, #108]
	movs	r2, #1
	bl	_ZN11SQFuncState18SetIntructionParamEiii(PLT)
.L541:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #228]
	str	r3, [r7, #68]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState12GetStackSizeEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #120]
	cmp	r2, r3
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L542
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #120]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQFuncState12SetStackSizeEi(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #228]
	ldr	r3, [r7, #68]
	cmp	r2, r3
	beq	.L542
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #120]
	movs	r1, #0
	str	r1, [sp]
	movs	r1, #0
	str	r1, [sp, #4]
	mov	r0, r2
	movs	r1, #60
	movs	r2, #0
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
.L542:
	ldr	r3, [r7, #4]
	adds	r3, r3, #116
	add	r2, r7, #20
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	adds	r3, r3, #36
	mov	r0, r3
	bl	_ZNK8sqvectorIiE4sizeEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #80]
	subs	r3, r2, r3
	str	r3, [r7, #80]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	adds	r3, r3, #48
	mov	r0, r3
	bl	_ZNK8sqvectorIiE4sizeEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #76]
	subs	r3, r2, r3
	str	r3, [r7, #76]
	ldr	r3, [r7, #76]
	cmp	r3, #0
	ble	.L543
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #4]
	mov	r1, r3
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #72]
	bl	_ZN10SQCompiler16ResolveContinuesEP11SQFuncStateii(PLT)
.L543:
	ldr	r3, [r7, #80]
	cmp	r3, #0
	ble	.L544
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #4]
	mov	r1, r3
	ldr	r2, [r7, #80]
	bl	_ZN10SQCompiler13ResolveBreaksEP11SQFuncStatei(PLT)
.L544:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	adds	r3, r3, #184
	mov	r0, r3
	bl	_ZN8sqvectorIiE8pop_backEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	adds	r3, r3, #196
	mov	r0, r3
	bl	_ZN8sqvectorIiE8pop_backEv(PLT)
.LEHE27:
	add	r3, r7, #8
	mov	r0, r3
.LEHB28:
	bl	_ZN8sqvectorI13SQInstructionED1Ev(PLT)
.LEHE28:
	b	.L547
.L546:
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN8sqvectorI13SQInstructionED1Ev(PLT)
.LEHB29:
	bl	__cxa_end_cleanup(PLT)
.LEHE29:
.L547:
	adds	r7, r7, #116
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA266:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE266-.LLSDACSB266
.LLSDACSB266:
	.uleb128 .LEHB26-.LFB266
	.uleb128 .LEHE26-.LEHB26
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB27-.LFB266
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L546-.LFB266
	.uleb128 0
	.uleb128 .LEHB28-.LFB266
	.uleb128 .LEHE28-.LEHB28
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB29-.LFB266
	.uleb128 .LEHE29-.LEHB29
	.uleb128 0
	.uleb128 0
.LLSDACSE266:
	.section	.text._ZN10SQCompiler12ForStatementEv,"axG",%progbits,_ZN10SQCompiler12ForStatementEv,comdat
	.fnend
	.size	_ZN10SQCompiler12ForStatementEv, .-_ZN10SQCompiler12ForStatementEv
	.section	.rodata
	.align	2
.LC27:
	.ascii	"@INDEX@\000"
	.align	2
.LC28:
	.ascii	"@ITERATOR@\000"
	.section	.text._ZN10SQCompiler16ForEachStatementEv,"axG",%progbits,_ZN10SQCompiler16ForEachStatementEv,comdat
	.align	2
	.weak	_ZN10SQCompiler16ForEachStatementEv
	.thumb
	.thumb_func
	.type	_ZN10SQCompiler16ForEachStatementEv, %function
_ZN10SQCompiler16ForEachStatementEv:
	.fnstart
.LFB267:
	@ args = 0, pretend = 0, frame = 120
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #128
	sub	sp, sp, #128
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #12]
	ldr	r0, [r7, #12]
	bl	_ZN10SQCompiler3LexEv(PLT)
	add	r3, r7, #44
	mov	r0, r3
	ldr	r1, [r7, #12]
	movs	r2, #40
	bl	_ZN10SQCompiler6ExpectEi(PLT)
	mov	r3, r7
	mov	r0, r3
	ldr	r1, [r7, #12]
	mov	r2, #258
	bl	_ZN10SQCompiler6ExpectEi(PLT)
	add	r3, r7, #28
	mov	r2, r7
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	cmp	r3, #44
	bne	.L549
	add	r3, r7, #36
	add	r2, r7, #28
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r0, [r7, #12]
	bl	_ZN10SQCompiler3LexEv(PLT)
	mov	r3, r7
	mov	r0, r3
	ldr	r1, [r7, #12]
	mov	r2, #258
	bl	_ZN10SQCompiler6ExpectEi(PLT)
	add	r3, r7, #28
	mov	r2, r7
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	b	.L550
.L549:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r2, r7
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L554
.LPIC48:
	add	r3, pc
	mov	r2, r3
	mov	r3, #-1
	bl	_ZN11SQFuncState12CreateStringEPKci(PLT)
	add	r3, r7, #36
	mov	r2, r7
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
.L550:
	add	r3, r7, #52
	mov	r0, r3
	ldr	r1, [r7, #12]
	mov	r2, #280
	bl	_ZN10SQCompiler6ExpectEi(PLT)
	ldr	r2, [r7, #12]
	add	r3, r7, #20
	adds	r2, r2, #116
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #228]
	ldr	r3, [r7, #12]
	str	r2, [r3, #116]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState12GetStackSizeEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #120]
	ldr	r0, [r7, #12]
	bl	_ZN10SQCompiler10ExpressionEv(PLT)
	add	r3, r7, #60
	mov	r0, r3
	ldr	r1, [r7, #12]
	movs	r2, #41
	bl	_ZN10SQCompiler6ExpectEi(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9TopTargetEv(PLT)
	mov	r3, r0
	str	r3, [r7, #116]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	add	r3, r7, #36
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQFuncState17PushLocalVariableERK11tagSQObject(PLT)
	mov	r3, r0
	str	r3, [r7, #112]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r3
	movs	r1, #24
	ldr	r2, [r7, #112]
	movs	r3, #1
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	add	r3, r7, #28
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQFuncState17PushLocalVariableERK11tagSQObject(PLT)
	mov	r3, r0
	str	r3, [r7, #108]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r3
	movs	r1, #24
	ldr	r2, [r7, #108]
	movs	r3, #1
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	add	r2, r7, #68
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L554+4
.LPIC49:
	add	r3, pc
	mov	r2, r3
	mov	r3, #-1
	bl	_ZN11SQFuncState12CreateStringEPKci(PLT)
	add	r3, r7, #68
	mov	r0, r4
	mov	r1, r3
	bl	_ZN11SQFuncState17PushLocalVariableERK11tagSQObject(PLT)
	mov	r3, r0
	str	r3, [r7, #104]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r3
	movs	r1, #24
	ldr	r2, [r7, #104]
	movs	r3, #1
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState13GetCurrentPosEv(PLT)
	mov	r3, r0
	str	r3, [r7, #100]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #112]
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r3
	movs	r1, #51
	ldr	r2, [r7, #116]
	movs	r3, #0
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState13GetCurrentPosEv(PLT)
	mov	r3, r0
	str	r3, [r7, #96]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #112]
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r3
	movs	r1, #52
	ldr	r2, [r7, #116]
	movs	r3, #0
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	adds	r3, r3, #36
	mov	r0, r3
	bl	_ZNK8sqvectorIiE4sizeEv(PLT)
	mov	r3, r0
	str	r3, [r7, #92]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	adds	r3, r3, #48
	mov	r0, r3
	bl	_ZNK8sqvectorIiE4sizeEv(PLT)
	mov	r3, r0
	str	r3, [r7, #88]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	add	r2, r3, #184
	movs	r3, #0
	str	r3, [r7, #76]
	add	r3, r7, #76
	mov	r0, r2
	mov	r1, r3
	bl	_ZN8sqvectorIiE9push_backERKi(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	add	r2, r3, #196
	movs	r3, #0
	str	r3, [r7, #80]
	add	r3, r7, #80
	mov	r0, r2
	mov	r1, r3
	bl	_ZN8sqvectorIiE9push_backERKi(PLT)
	ldr	r0, [r7, #12]
	movs	r1, #1
	bl	_ZN10SQCompiler9StatementEb(PLT)
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState13GetCurrentPosEv(PLT)
	mov	r3, r0
	ldr	r2, [r7, #100]
	subs	r3, r2, r3
	subs	r3, r3, #1
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r4
	movs	r1, #28
	movs	r2, #0
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState13GetCurrentPosEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #96]
	subs	r3, r2, r3
	mov	r0, r4
	ldr	r1, [r7, #96]
	movs	r2, #1
	bl	_ZN11SQFuncState18SetIntructionParamEiii(PLT)
	ldr	r3, [r7, #12]
	ldr	r5, [r3, #4]
	ldr	r3, [r7, #96]
	adds	r4, r3, #1
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState13GetCurrentPosEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #96]
	subs	r3, r2, r3
	mov	r0, r5
	mov	r1, r4
	movs	r2, #1
	bl	_ZN11SQFuncState18SetIntructionParamEiii(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	adds	r3, r3, #36
	mov	r0, r3
	bl	_ZNK8sqvectorIiE4sizeEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #92]
	subs	r3, r2, r3
	str	r3, [r7, #92]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	adds	r3, r3, #48
	mov	r0, r3
	bl	_ZNK8sqvectorIiE4sizeEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #88]
	subs	r3, r2, r3
	str	r3, [r7, #88]
	ldr	r3, [r7, #88]
	cmp	r3, #0
	ble	.L551
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #96]
	subs	r3, r3, #1
	ldr	r0, [r7, #12]
	mov	r1, r2
	ldr	r2, [r7, #88]
	bl	_ZN10SQCompiler16ResolveContinuesEP11SQFuncStateii(PLT)
.L551:
	ldr	r3, [r7, #92]
	cmp	r3, #0
	ble	.L552
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #12]
	mov	r1, r3
	ldr	r2, [r7, #92]
	bl	_ZN10SQCompiler13ResolveBreaksEP11SQFuncStatei(PLT)
.L552:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	adds	r3, r3, #184
	mov	r0, r3
	bl	_ZN8sqvectorIiE8pop_backEv(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	adds	r3, r3, #196
	mov	r0, r3
	bl	_ZN8sqvectorIiE8pop_backEv(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9PopTargetEv(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #228]
	str	r3, [r7, #84]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState12GetStackSizeEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #120]
	cmp	r2, r3
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L553
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #120]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQFuncState12SetStackSizeEi(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #228]
	ldr	r3, [r7, #84]
	cmp	r2, r3
	beq	.L553
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #120]
	movs	r1, #0
	str	r1, [sp]
	movs	r1, #0
	str	r1, [sp, #4]
	mov	r0, r2
	movs	r1, #60
	movs	r2, #0
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
.L553:
	ldr	r3, [r7, #12]
	adds	r3, r3, #116
	add	r2, r7, #20
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	adds	r7, r7, #120
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L555:
	.align	2
.L554:
	.word	.LC27-(.LPIC48+4)
	.word	.LC28-(.LPIC49+4)
	.fnend
	.size	_ZN10SQCompiler16ForEachStatementEv, .-_ZN10SQCompiler16ForEachStatementEv
	.section	.text._ZN10SQCompiler15SwitchStatementEv,"axG",%progbits,_ZN10SQCompiler15SwitchStatementEv,comdat
	.align	2
	.weak	_ZN10SQCompiler15SwitchStatementEv
	.thumb
	.thumb_func
	.type	_ZN10SQCompiler15SwitchStatementEv, %function
_ZN10SQCompiler15SwitchStatementEv:
	.fnstart
.LFB268:
	@ args = 0, pretend = 0, frame = 120
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #132
	sub	sp, sp, #132
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler3LexEv(PLT)
	add	r3, r7, #28
	mov	r0, r3
	ldr	r1, [r7, #4]
	movs	r2, #40
	bl	_ZN10SQCompiler6ExpectEi(PLT)
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler9CommaExprEv(PLT)
	add	r3, r7, #36
	mov	r0, r3
	ldr	r1, [r7, #4]
	movs	r2, #41
	bl	_ZN10SQCompiler6ExpectEi(PLT)
	add	r3, r7, #44
	mov	r0, r3
	ldr	r1, [r7, #4]
	movs	r2, #123
	bl	_ZN10SQCompiler6ExpectEi(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9TopTargetEv(PLT)
	mov	r3, r0
	str	r3, [r7, #100]
	movs	r3, #1
	strb	r3, [r7, #119]
	mov	r3, #-1
	str	r3, [r7, #112]
	mov	r3, #-1
	str	r3, [r7, #108]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	adds	r3, r3, #36
	mov	r0, r3
	bl	_ZNK8sqvectorIiE4sizeEv(PLT)
	mov	r3, r0
	str	r3, [r7, #96]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	add	r2, r3, #184
	movs	r3, #0
	str	r3, [r7, #52]
	add	r3, r7, #52
	mov	r0, r2
	mov	r1, r3
	bl	_ZN8sqvectorIiE9push_backERKi(PLT)
	b	.L557
.L563:
	ldrb	r3, [r7, #119]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L558
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r3
	movs	r1, #28
	movs	r2, #0
	movs	r3, #0
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState13GetCurrentPosEv(PLT)
	mov	r3, r0
	str	r3, [r7, #108]
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState13GetCurrentPosEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #112]
	subs	r3, r2, r3
	mov	r0, r4
	ldr	r1, [r7, #112]
	movs	r2, #1
	bl	_ZN11SQFuncState18SetIntructionParamEiii(PLT)
.L558:
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler3LexEv(PLT)
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler10ExpressionEv(PLT)
	add	r3, r7, #56
	mov	r0, r3
	ldr	r1, [r7, #4]
	movs	r2, #58
	bl	_ZN10SQCompiler6ExpectEi(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9PopTargetEv(PLT)
	mov	r3, r0
	str	r3, [r7, #92]
	ldr	r3, [r7, #92]
	str	r3, [r7, #104]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #92]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQFuncState7IsLocalEj(PLT)
	mov	r3, r0
	strb	r3, [r7, #91]
	ldrb	r3, [r7, #91]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L559
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #-1
	bl	_ZN11SQFuncState10PushTargetEi(PLT)
	mov	r3, r0
	str	r3, [r7, #104]
.L559:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #100]
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r3
	movs	r1, #15
	ldr	r2, [r7, #104]
	ldr	r3, [r7, #92]
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r3
	movs	r1, #30
	ldr	r2, [r7, #104]
	movs	r3, #0
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	ldrb	r3, [r7, #91]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L560
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9PopTargetEv(PLT)
.L560:
	ldr	r3, [r7, #108]
	cmp	r3, #-1
	beq	.L561
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState13GetCurrentPosEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #108]
	subs	r3, r2, r3
	mov	r0, r4
	ldr	r1, [r7, #108]
	movs	r2, #1
	bl	_ZN11SQFuncState18SetIntructionParamEiii(PLT)
.L561:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState13GetCurrentPosEv(PLT)
	mov	r3, r0
	str	r3, [r7, #112]
	ldr	r2, [r7, #4]
	add	r3, r7, #20
	adds	r2, r2, #116
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #228]
	ldr	r3, [r7, #4]
	str	r2, [r3, #116]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState12GetStackSizeEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #120]
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler10StatementsEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #228]
	str	r3, [r7, #84]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState12GetStackSizeEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #120]
	cmp	r2, r3
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L562
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #120]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQFuncState12SetStackSizeEi(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #228]
	ldr	r3, [r7, #84]
	cmp	r2, r3
	beq	.L562
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #120]
	movs	r1, #0
	str	r1, [sp]
	movs	r1, #0
	str	r1, [sp, #4]
	mov	r0, r2
	movs	r1, #60
	movs	r2, #0
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
.L562:
	ldr	r3, [r7, #4]
	adds	r3, r3, #116
	add	r2, r7, #20
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	movs	r3, #0
	strb	r3, [r7, #119]
.L557:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #300
	beq	.L563
	ldr	r3, [r7, #112]
	cmp	r3, #-1
	beq	.L564
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState13GetCurrentPosEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #112]
	subs	r3, r2, r3
	mov	r0, r4
	ldr	r1, [r7, #112]
	movs	r2, #1
	bl	_ZN11SQFuncState18SetIntructionParamEiii(PLT)
.L564:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	movw	r3, #301
	cmp	r2, r3
	bne	.L565
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler3LexEv(PLT)
	add	r3, r7, #64
	mov	r0, r3
	ldr	r1, [r7, #4]
	movs	r2, #58
	bl	_ZN10SQCompiler6ExpectEi(PLT)
	ldr	r2, [r7, #4]
	add	r3, r7, #12
	adds	r2, r2, #116
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #228]
	ldr	r3, [r7, #4]
	str	r2, [r3, #116]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState12GetStackSizeEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #120]
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler10StatementsEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #228]
	str	r3, [r7, #80]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState12GetStackSizeEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #120]
	cmp	r2, r3
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L566
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #120]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQFuncState12SetStackSizeEi(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #228]
	ldr	r3, [r7, #80]
	cmp	r2, r3
	beq	.L566
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #120]
	movs	r1, #0
	str	r1, [sp]
	movs	r1, #0
	str	r1, [sp, #4]
	mov	r0, r2
	movs	r1, #60
	movs	r2, #0
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
.L566:
	ldr	r3, [r7, #4]
	adds	r3, r3, #116
	add	r2, r7, #12
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
.L565:
	add	r3, r7, #72
	mov	r0, r3
	ldr	r1, [r7, #4]
	movs	r2, #125
	bl	_ZN10SQCompiler6ExpectEi(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9PopTargetEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	adds	r3, r3, #36
	mov	r0, r3
	bl	_ZNK8sqvectorIiE4sizeEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #96]
	subs	r3, r2, r3
	str	r3, [r7, #96]
	ldr	r3, [r7, #96]
	cmp	r3, #0
	ble	.L567
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #4]
	mov	r1, r3
	ldr	r2, [r7, #96]
	bl	_ZN10SQCompiler13ResolveBreaksEP11SQFuncStatei(PLT)
.L567:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	adds	r3, r3, #184
	mov	r0, r3
	bl	_ZN8sqvectorIiE8pop_backEv(PLT)
	adds	r7, r7, #124
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZN10SQCompiler15SwitchStatementEv, .-_ZN10SQCompiler15SwitchStatementEv
	.section	.text._ZN10SQCompiler17FunctionStatementEv,"axG",%progbits,_ZN10SQCompiler17FunctionStatementEv,comdat
	.align	2
	.weak	_ZN10SQCompiler17FunctionStatementEv
	.thumb
	.thumb_func
	.type	_ZN10SQCompiler17FunctionStatementEv, %function
_ZN10SQCompiler17FunctionStatementEv:
	.fnstart
.LFB269:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #40
	sub	sp, sp, #40
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #12]
	ldr	r0, [r7, #12]
	bl	_ZN10SQCompiler3LexEv(PLT)
	mov	r3, r7
	mov	r0, r3
	ldr	r1, [r7, #12]
	mov	r2, #258
	bl	_ZN10SQCompiler6ExpectEi(PLT)
	add	r3, r7, #16
	mov	r2, r7
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	movs	r1, #0
	bl	_ZN11SQFuncState10PushTargetEi(PLT)
	ldr	r3, [r7, #12]
	ldr	r5, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #-1
	bl	_ZN11SQFuncState10PushTargetEi(PLT)
	mov	r4, r0
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	add	r3, r7, #16
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQFuncState11GetConstantERK11tagSQObject(PLT)
	mov	r3, r0
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r5
	movs	r1, #1
	mov	r2, r4
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	movw	r3, #299
	cmp	r2, r3
	bne	.L569
	ldr	r0, [r7, #12]
	movs	r1, #14
	movs	r2, #0
	bl	_ZN10SQCompiler11Emit2ArgsOPE8SQOpcodei(PLT)
.L569:
	b	.L570
.L571:
	ldr	r0, [r7, #12]
	bl	_ZN10SQCompiler3LexEv(PLT)
	mov	r3, r7
	mov	r0, r3
	ldr	r1, [r7, #12]
	mov	r2, #258
	bl	_ZN10SQCompiler6ExpectEi(PLT)
	add	r3, r7, #16
	mov	r2, r7
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #12]
	ldr	r5, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #-1
	bl	_ZN11SQFuncState10PushTargetEi(PLT)
	mov	r4, r0
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	add	r3, r7, #16
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQFuncState11GetConstantERK11tagSQObject(PLT)
	mov	r3, r0
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r5
	movs	r1, #1
	mov	r2, r4
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	movw	r3, #299
	cmp	r2, r3
	bne	.L570
	ldr	r0, [r7, #12]
	movs	r1, #14
	movs	r2, #0
	bl	_ZN10SQCompiler11Emit2ArgsOPE8SQOpcodei(PLT)
.L570:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	movw	r3, #299
	cmp	r2, r3
	beq	.L571
	add	r3, r7, #24
	mov	r0, r3
	ldr	r1, [r7, #12]
	movs	r2, #40
	bl	_ZN10SQCompiler6ExpectEi(PLT)
	add	r3, r7, #16
	ldr	r0, [r7, #12]
	mov	r1, r3
	movs	r2, #0
	bl	_ZN10SQCompiler14CreateFunctionER11tagSQObjectb(PLT)
	ldr	r3, [r7, #12]
	ldr	r5, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #-1
	bl	_ZN11SQFuncState10PushTargetEi(PLT)
	mov	r4, r0
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	adds	r3, r3, #60
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4sizeEv(PLT)
	mov	r3, r0
	subs	r3, r3, #1
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r5
	movs	r1, #48
	mov	r2, r4
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	ldr	r0, [r7, #12]
	movs	r1, #11
	bl	_ZN10SQCompiler11EmitDerefOpE8SQOpcode(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9PopTargetEv(PLT)
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.fnend
	.size	_ZN10SQCompiler17FunctionStatementEv, .-_ZN10SQCompiler17FunctionStatementEv
	.section	.rodata
	.align	2
.LC29:
	.ascii	"invalid class name\000"
	.align	2
.LC30:
	.ascii	"cannot create a class in a local with the syntax(cl"
	.ascii	"ass <local>)\000"
	.section	.text._ZN10SQCompiler14ClassStatementEv,"axG",%progbits,_ZN10SQCompiler14ClassStatementEv,comdat
	.align	2
	.weak	_ZN10SQCompiler14ClassStatementEv
	.thumb
	.thumb_func
	.type	_ZN10SQCompiler14ClassStatementEv, %function
_ZN10SQCompiler14ClassStatementEv:
	.fnstart
.LFB270:
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
	bl	_ZN10SQCompiler3LexEv(PLT)
	ldr	r2, [r7, #4]
	add	r3, r7, #12
	adds	r2, r2, #104
	ldmia	r2, {r0, r1, r2}
	stmia	r3, {r0, r1, r2}
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #112]
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler12PrefixedExprEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #104]
	cmp	r3, #1
	bne	.L573
	ldr	r0, [r7, #4]
	ldr	r3, .L577
.LPIC50:
	add	r3, pc
	mov	r1, r3
	bl	_ZN10SQCompiler5ErrorEPKcz(PLT)
	b	.L574
.L573:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #104]
	cmp	r3, #2
	beq	.L575
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #104]
	cmp	r3, #3
	bne	.L576
.L575:
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler8ClassExpEv(PLT)
	ldr	r0, [r7, #4]
	movs	r1, #11
	bl	_ZN10SQCompiler11EmitDerefOpE8SQOpcode(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9PopTargetEv(PLT)
	b	.L574
.L576:
	ldr	r0, [r7, #4]
	ldr	r3, .L577+4
.LPIC51:
	add	r3, pc
	mov	r1, r3
	bl	_ZN10SQCompiler5ErrorEPKcz(PLT)
.L574:
	ldr	r3, [r7, #4]
	adds	r3, r3, #104
	add	r2, r7, #12
	ldmia	r2, {r0, r1, r2}
	stmia	r3, {r0, r1, r2}
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L578:
	.align	2
.L577:
	.word	.LC29-(.LPIC50+4)
	.word	.LC30-(.LPIC51+4)
	.fnend
	.size	_ZN10SQCompiler14ClassStatementEv, .-_ZN10SQCompiler14ClassStatementEv
	.section	.rodata
	.align	2
.LC31:
	.ascii	"scalar expected : integer,float\000"
	.align	2
.LC32:
	.ascii	"scalar expected : integer,float or string\000"
	.section	.text._ZN10SQCompiler12ExpectScalarEv,"axG",%progbits,_ZN10SQCompiler12ExpectScalarEv,comdat
	.align	2
	.weak	_ZN10SQCompiler12ExpectScalarEv
	.thumb
	.thumb_func
	.type	_ZN10SQCompiler12ExpectScalarEv, %function
_ZN10SQCompiler12ExpectScalarEv:
	.fnstart
.LFB271:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	.save {r4, r5, r6, r7, lr}
	.pad #20
	sub	sp, sp, #20
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	ldr	r2, [r7, #12]
	movs	r3, #1
	movt	r3, 256
	str	r3, [r2]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	cmp	r3, #260
	beq	.L581
	cmp	r3, #260
	bgt	.L582
	cmp	r3, #45
	beq	.L583
	movw	r2, #259
	cmp	r3, r2
	beq	.L584
	b	.L580
.L582:
	movw	r2, #261
	cmp	r3, r2
	beq	.L585
	subw	r3, r3, #315
	cmp	r3, #1
	bhi	.L580
	b	.L595
.L581:
	ldr	r2, [r7, #12]
	movs	r3, #2
	movt	r3, 1280
	str	r3, [r2]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #48]
	ldr	r3, [r7, #12]
	str	r2, [r3, #4]
	b	.L587
.L585:
	ldr	r2, [r7, #12]
	movs	r3, #4
	movt	r3, 1280
	str	r3, [r2]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #52]	@ float
	ldr	r3, [r7, #12]
	str	r2, [r3, #4]	@ float
	b	.L587
.L584:
	ldr	r3, [r7, #8]
	ldr	r6, [r3, #4]
	ldr	r3, [r7, #8]
	ldr	r5, [r3, #44]
	ldr	r3, [r7, #8]
	adds	r3, r3, #72
	mov	r0, r3
	bl	_ZNK8sqvectorIcE4sizeEv(PLT)
	mov	r3, r0
	subs	r3, r3, #1
	ldr	r4, [r7, #12]
	mov	r2, r7
	mov	r0, r2
	mov	r1, r6
	mov	r2, r5
	bl	_ZN11SQFuncState12CreateStringEPKci(PLT)
	mov	r3, r4
	mov	r2, r7
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	b	.L587
.L595:
	ldr	r2, [r7, #12]
	movs	r3, #8
	movt	r3, 256
	str	r3, [r2]
	ldr	r3, [r7, #8]
	ldr	r2, [r3]
	movw	r3, #315
	cmp	r2, r3
	bne	.L588
	movs	r3, #1
	b	.L589
.L588:
	movs	r3, #0
.L589:
	ldr	r2, [r7, #12]
	str	r3, [r2, #4]
	b	.L587
.L583:
	ldr	r0, [r7, #8]
	bl	_ZN10SQCompiler3LexEv(PLT)
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	cmp	r3, #260
	beq	.L591
	movw	r2, #261
	cmp	r3, r2
	beq	.L592
	b	.L596
.L591:
	ldr	r2, [r7, #12]
	movs	r3, #2
	movt	r3, 1280
	str	r3, [r2]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #48]
	negs	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #4]
	b	.L593
.L592:
	ldr	r2, [r7, #12]
	movs	r3, #4
	movt	r3, 1280
	str	r3, [r2]
	ldr	r3, [r7, #8]
	flds	s15, [r3, #52]
	fnegs	s15, s15
	ldr	r3, [r7, #12]
	fsts	s15, [r3, #4]
	b	.L593
.L596:
	ldr	r0, [r7, #8]
	ldr	r3, .L597
.LPIC52:
	add	r3, pc
	mov	r1, r3
	bl	_ZN10SQCompiler5ErrorEPKcz(PLT)
	b	.L587
.L593:
	b	.L587
.L580:
	ldr	r0, [r7, #8]
	ldr	r3, .L597+4
.LPIC53:
	add	r3, pc
	mov	r1, r3
	bl	_ZN10SQCompiler5ErrorEPKcz(PLT)
.L587:
	ldr	r0, [r7, #8]
	bl	_ZN10SQCompiler3LexEv(PLT)
	nop
	ldr	r0, [r7, #12]
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L598:
	.align	2
.L597:
	.word	.LC31-(.LPIC52+4)
	.word	.LC32-(.LPIC53+4)
	.fnend
	.size	_ZN10SQCompiler12ExpectScalarEv, .-_ZN10SQCompiler12ExpectScalarEv
	.section	.text._ZN10SQCompiler13EnumStatementEv,"axG",%progbits,_ZN10SQCompiler13EnumStatementEv,comdat
	.align	2
	.weak	_ZN10SQCompiler13EnumStatementEv
	.thumb
	.thumb_func
	.type	_ZN10SQCompiler13EnumStatementEv, %function
_ZN10SQCompiler13EnumStatementEv:
	.fnstart
.LFB272:
	@ args = 0, pretend = 0, frame = 104
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #108
	sub	sp, sp, #108
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	ldr	r0, [r7, #12]
.LEHB30:
	bl	_ZN10SQCompiler3LexEv(PLT)
	add	r3, r7, #48
	mov	r0, r3
	ldr	r1, [r7, #12]
	mov	r2, #258
	bl	_ZN10SQCompiler6ExpectEi(PLT)
	add	r3, r7, #56
	mov	r0, r3
	ldr	r1, [r7, #12]
	movs	r2, #123
	bl	_ZN10SQCompiler6ExpectEi(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	add	r2, r7, #40
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQFuncState11CreateTableEv(PLT)
	movs	r3, #0
	str	r3, [r7, #100]
	b	.L600
.L604:
	add	r3, r7, #24
	mov	r0, r3
	ldr	r1, [r7, #12]
	mov	r2, #258
	bl	_ZN10SQCompiler6ExpectEi(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	cmp	r3, #61
	bne	.L601
	ldr	r0, [r7, #12]
	bl	_ZN10SQCompiler3LexEv(PLT)
	mov	r3, r7
	mov	r0, r3
	ldr	r1, [r7, #12]
	bl	_ZN10SQCompiler12ExpectScalarEv(PLT)
.LEHE30:
	add	r3, r7, #16
	mov	r2, r7
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	b	.L602
.L601:
	movs	r3, #2
	movt	r3, 1280
	str	r3, [r7, #16]
	ldr	r3, [r7, #100]
	adds	r2, r3, #1
	str	r2, [r7, #100]
	str	r3, [r7, #20]
.L602:
	ldr	r4, [r7, #44]
	add	r2, r7, #64
	add	r3, r7, #24
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1ERK11tagSQObject(PLT)
	add	r2, r7, #72
	add	r3, r7, #16
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1ERK11tagSQObject(PLT)
	add	r2, r7, #64
	add	r3, r7, #72
	mov	r0, r4
	mov	r1, r2
	mov	r2, r3
.LEHB31:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE31:
	add	r3, r7, #72
	mov	r0, r3
.LEHB32:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE32:
	add	r3, r7, #64
	mov	r0, r3
.LEHB33:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	cmp	r3, #44
	bne	.L600
	ldr	r0, [r7, #12]
	bl	_ZN10SQCompiler3LexEv(PLT)
.LEHE33:
.L600:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	cmp	r3, #125
	bne	.L604
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #776]
	ldr	r3, [r3, #140]
	ldr	r3, [r3, #56]
	str	r3, [r7, #96]
	add	r2, r7, #32
	add	r3, r7, #48
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1ERK11tagSQObject(PLT)
	add	r2, r7, #80
	add	r3, r7, #32
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1ERKS_(PLT)
	add	r2, r7, #88
	add	r3, r7, #40
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1ERK11tagSQObject(PLT)
	add	r2, r7, #80
	add	r3, r7, #88
	ldr	r0, [r7, #96]
	mov	r1, r2
	mov	r2, r3
.LEHB34:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE34:
	add	r3, r7, #88
	mov	r0, r3
.LEHB35:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE35:
	add	r3, r7, #80
	mov	r0, r3
.LEHB36:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	add	r3, r7, #32
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
	ldr	r0, [r7, #12]
	bl	_ZN10SQCompiler3LexEv(PLT)
.LEHE36:
	add	r3, r7, #32
	mov	r0, r3
.LEHB37:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE37:
	b	.L615
.L611:
	add	r3, r7, #72
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L606
.L610:
.L606:
	add	r3, r7, #64
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB38:
	bl	__cxa_end_cleanup(PLT)
.LEHE38:
.L614:
	add	r3, r7, #88
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L608
.L613:
.L608:
	add	r3, r7, #80
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L609
.L612:
.L609:
	add	r3, r7, #32
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB39:
	bl	__cxa_end_cleanup(PLT)
.LEHE39:
.L615:
	adds	r7, r7, #108
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA272:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE272-.LLSDACSB272
.LLSDACSB272:
	.uleb128 .LEHB30-.LFB272
	.uleb128 .LEHE30-.LEHB30
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB31-.LFB272
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L611-.LFB272
	.uleb128 0
	.uleb128 .LEHB32-.LFB272
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L610-.LFB272
	.uleb128 0
	.uleb128 .LEHB33-.LFB272
	.uleb128 .LEHE33-.LEHB33
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB34-.LFB272
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L614-.LFB272
	.uleb128 0
	.uleb128 .LEHB35-.LFB272
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L613-.LFB272
	.uleb128 0
	.uleb128 .LEHB36-.LFB272
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L612-.LFB272
	.uleb128 0
	.uleb128 .LEHB37-.LFB272
	.uleb128 .LEHE37-.LEHB37
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB38-.LFB272
	.uleb128 .LEHE38-.LEHB38
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB39-.LFB272
	.uleb128 .LEHE39-.LEHB39
	.uleb128 0
	.uleb128 0
.LLSDACSE272:
	.section	.text._ZN10SQCompiler13EnumStatementEv,"axG",%progbits,_ZN10SQCompiler13EnumStatementEv,comdat
	.fnend
	.size	_ZN10SQCompiler13EnumStatementEv, .-_ZN10SQCompiler13EnumStatementEv
	.section	.text._ZN10SQCompiler17TryCatchStatementEv,"axG",%progbits,_ZN10SQCompiler17TryCatchStatementEv,comdat
	.align	2
	.weak	_ZN10SQCompiler17TryCatchStatementEv
	.thumb
	.thumb_func
	.type	_ZN10SQCompiler17TryCatchStatementEv, %function
_ZN10SQCompiler17TryCatchStatementEv:
	.fnstart
.LFB273:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #100
	sub	sp, sp, #100
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #12]
	ldr	r0, [r7, #12]
	bl	_ZN10SQCompiler3LexEv(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r3
	movs	r1, #55
	movs	r2, #0
	movs	r3, #0
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #224]
	adds	r2, r2, #1
	str	r2, [r3, #224]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	adds	r3, r3, #184
	mov	r0, r3
	bl	_ZNK8sqvectorIiE4sizeEv(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L617
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	adds	r3, r3, #184
	mov	r0, r3
	bl	_ZNK8sqvectorIiE3topEv(PLT)
	mov	r3, r0
	ldr	r2, [r3]
	adds	r2, r2, #1
	str	r2, [r3]
.L617:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	adds	r3, r3, #196
	mov	r0, r3
	bl	_ZNK8sqvectorIiE4sizeEv(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L618
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	adds	r3, r3, #196
	mov	r0, r3
	bl	_ZNK8sqvectorIiE3topEv(PLT)
	mov	r3, r0
	ldr	r2, [r3]
	adds	r2, r2, #1
	str	r2, [r3]
.L618:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState13GetCurrentPosEv(PLT)
	mov	r3, r0
	str	r3, [r7, #84]
	ldr	r2, [r7, #12]
	add	r3, r7, #28
	adds	r2, r2, #116
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #228]
	ldr	r3, [r7, #12]
	str	r2, [r3, #116]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState12GetStackSizeEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #120]
	ldr	r0, [r7, #12]
	movs	r1, #1
	bl	_ZN10SQCompiler9StatementEb(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #228]
	str	r3, [r7, #80]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState12GetStackSizeEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #120]
	cmp	r2, r3
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L619
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #120]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQFuncState12SetStackSizeEi(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #228]
	ldr	r3, [r7, #80]
	cmp	r2, r3
	beq	.L619
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #120]
	movs	r1, #0
	str	r1, [sp]
	movs	r1, #0
	str	r1, [sp, #4]
	mov	r0, r2
	movs	r1, #60
	movs	r2, #0
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
.L619:
	ldr	r3, [r7, #12]
	adds	r3, r3, #116
	add	r2, r7, #28
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #224]
	subs	r2, r2, #1
	str	r2, [r3, #224]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r3
	movs	r1, #56
	movs	r2, #1
	movs	r3, #0
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	adds	r3, r3, #184
	mov	r0, r3
	bl	_ZNK8sqvectorIiE4sizeEv(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L620
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	adds	r3, r3, #184
	mov	r0, r3
	bl	_ZNK8sqvectorIiE3topEv(PLT)
	mov	r3, r0
	ldr	r2, [r3]
	subs	r2, r2, #1
	str	r2, [r3]
.L620:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	adds	r3, r3, #196
	mov	r0, r3
	bl	_ZNK8sqvectorIiE4sizeEv(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L621
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	adds	r3, r3, #196
	mov	r0, r3
	bl	_ZNK8sqvectorIiE3topEv(PLT)
	mov	r3, r0
	ldr	r2, [r3]
	subs	r2, r2, #1
	str	r2, [r3]
.L621:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r3
	movs	r1, #28
	movs	r2, #0
	movs	r3, #0
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState13GetCurrentPosEv(PLT)
	mov	r3, r0
	str	r3, [r7, #76]
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState13GetCurrentPosEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #84]
	subs	r3, r2, r3
	mov	r0, r4
	ldr	r1, [r7, #84]
	movs	r2, #1
	bl	_ZN11SQFuncState18SetIntructionParamEiii(PLT)
	add	r3, r7, #44
	mov	r0, r3
	ldr	r1, [r7, #12]
	mov	r2, #294
	bl	_ZN10SQCompiler6ExpectEi(PLT)
	add	r3, r7, #52
	mov	r0, r3
	ldr	r1, [r7, #12]
	movs	r2, #40
	bl	_ZN10SQCompiler6ExpectEi(PLT)
	mov	r3, r7
	mov	r0, r3
	ldr	r1, [r7, #12]
	mov	r2, #258
	bl	_ZN10SQCompiler6ExpectEi(PLT)
	add	r3, r7, #36
	mov	r2, r7
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	add	r3, r7, #60
	mov	r0, r3
	ldr	r1, [r7, #12]
	movs	r2, #41
	bl	_ZN10SQCompiler6ExpectEi(PLT)
	ldr	r2, [r7, #12]
	add	r3, r7, #20
	adds	r2, r2, #116
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #228]
	ldr	r3, [r7, #12]
	str	r2, [r3, #116]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState12GetStackSizeEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #120]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	add	r3, r7, #36
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQFuncState17PushLocalVariableERK11tagSQObject(PLT)
	mov	r3, r0
	str	r3, [r7, #72]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r1, [r7, #84]
	movs	r2, #0
	ldr	r3, [r7, #72]
	bl	_ZN11SQFuncState18SetIntructionParamEiii(PLT)
	ldr	r0, [r7, #12]
	movs	r1, #1
	bl	_ZN10SQCompiler9StatementEb(PLT)
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState13GetCurrentPosEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #76]
	subs	r3, r2, r3
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r4
	ldr	r1, [r7, #76]
	movs	r2, #0
	bl	_ZN11SQFuncState19SetIntructionParamsEiiiii(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #228]
	str	r3, [r7, #68]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState12GetStackSizeEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #120]
	cmp	r2, r3
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L622
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #120]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQFuncState12SetStackSizeEi(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #228]
	ldr	r3, [r7, #68]
	cmp	r2, r3
	beq	.L622
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #120]
	movs	r1, #0
	str	r1, [sp]
	movs	r1, #0
	str	r1, [sp, #4]
	mov	r0, r2
	movs	r1, #60
	movs	r2, #0
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
.L622:
	ldr	r3, [r7, #12]
	adds	r3, r3, #116
	add	r2, r7, #20
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	adds	r7, r7, #92
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZN10SQCompiler17TryCatchStatementEv, .-_ZN10SQCompiler17TryCatchStatementEv
	.section	.text._ZN10SQCompiler11FunctionExpEib,"axG",%progbits,_ZN10SQCompiler11FunctionExpEib,comdat
	.align	2
	.weak	_ZN10SQCompiler11FunctionExpEib
	.thumb
	.thumb_func
	.type	_ZN10SQCompiler11FunctionExpEib, %function
_ZN10SQCompiler11FunctionExpEib:
	.fnstart
.LFB274:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #40
	sub	sp, sp, #40
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strb	r3, [r7, #7]
	ldr	r0, [r7, #12]
.LEHB40:
	bl	_ZN10SQCompiler3LexEv(PLT)
	add	r3, r7, #24
	mov	r0, r3
	ldr	r1, [r7, #12]
	movs	r2, #40
	bl	_ZN10SQCompiler6ExpectEi(PLT)
.LEHE40:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	add	r2, r7, #16
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
.LEHB41:
	bl	_ZN10SQCompiler14CreateFunctionER11tagSQObjectb(PLT)
	ldr	r3, [r7, #12]
	ldr	r5, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #-1
	bl	_ZN11SQFuncState10PushTargetEi(PLT)
	mov	r4, r0
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	adds	r3, r3, #60
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4sizeEv(PLT)
	mov	r3, r0
	subs	r3, r3, #1
	ldr	r1, [r7, #8]
	movw	r2, #285
	cmp	r1, r2
	ite	ne
	movne	r2, #1
	moveq	r2, #0
	uxtb	r2, r2
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r5
	movs	r1, #48
	mov	r2, r4
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
.LEHE41:
	add	r3, r7, #16
	mov	r0, r3
.LEHB42:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE42:
	b	.L626
.L625:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB43:
	bl	__cxa_end_cleanup(PLT)
.LEHE43:
.L626:
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA274:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE274-.LLSDACSB274
.LLSDACSB274:
	.uleb128 .LEHB40-.LFB274
	.uleb128 .LEHE40-.LEHB40
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB41-.LFB274
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L625-.LFB274
	.uleb128 0
	.uleb128 .LEHB42-.LFB274
	.uleb128 .LEHE42-.LEHB42
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB43-.LFB274
	.uleb128 .LEHE43-.LEHB43
	.uleb128 0
	.uleb128 0
.LLSDACSE274:
	.section	.text._ZN10SQCompiler11FunctionExpEib,"axG",%progbits,_ZN10SQCompiler11FunctionExpEib,comdat
	.fnend
	.size	_ZN10SQCompiler11FunctionExpEib, .-_ZN10SQCompiler11FunctionExpEib
	.section	.text._ZN10SQCompiler8ClassExpEv,"axG",%progbits,_ZN10SQCompiler8ClassExpEv,comdat
	.align	2
	.weak	_ZN10SQCompiler8ClassExpEv
	.thumb
	.thumb_func
	.type	_ZN10SQCompiler8ClassExpEv, %function
_ZN10SQCompiler8ClassExpEv:
	.fnstart
.LFB275:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #36
	sub	sp, sp, #36
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	mov	r3, #-1
	str	r3, [r7, #20]
	mov	r3, #-1
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #308
	bne	.L628
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler3LexEv(PLT)
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler10ExpressionEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9TopTargetEv(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
.L628:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #320
	bne	.L629
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler3LexEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #-1
	bl	_ZN11SQFuncState10PushTargetEi(PLT)
	mov	r3, r0
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r4
	movs	r1, #33
	mov	r2, r3
	movs	r3, #0
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	ldr	r0, [r7, #4]
	movs	r1, #44
	movw	r2, #321
	bl	_ZN10SQCompiler17ParseTableOrClassEii(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9TopTargetEv(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
.L629:
	add	r3, r7, #8
	mov	r0, r3
	ldr	r1, [r7, #4]
	movs	r2, #123
	bl	_ZN10SQCompiler6ExpectEi(PLT)
	ldr	r3, [r7, #16]
	cmp	r3, #-1
	beq	.L630
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9PopTargetEv(PLT)
.L630:
	ldr	r3, [r7, #20]
	cmp	r3, #-1
	beq	.L631
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9PopTargetEv(PLT)
.L631:
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #-1
	bl	_ZN11SQFuncState10PushTargetEi(PLT)
	mov	r3, r0
	ldr	r2, [r7, #16]
	str	r2, [sp]
	movs	r2, #2
	str	r2, [sp, #4]
	mov	r0, r4
	movs	r1, #33
	mov	r2, r3
	ldr	r3, [r7, #20]
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	ldr	r0, [r7, #4]
	movs	r1, #59
	movs	r2, #125
	bl	_ZN10SQCompiler17ParseTableOrClassEii(PLT)
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZN10SQCompiler8ClassExpEv, .-_ZN10SQCompiler8ClassExpEv
	.section	.rodata
	.align	2
.LC33:
	.ascii	"can't delete an expression\000"
	.align	2
.LC34:
	.ascii	"cannot delete an (outer) local\000"
	.section	.text._ZN10SQCompiler10DeleteExprEv,"axG",%progbits,_ZN10SQCompiler10DeleteExprEv,comdat
	.align	2
	.weak	_ZN10SQCompiler10DeleteExprEv
	.thumb
	.thumb_func
	.type	_ZN10SQCompiler10DeleteExprEv, %function
_ZN10SQCompiler10DeleteExprEv:
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
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler3LexEv(PLT)
	ldr	r2, [r7, #4]
	add	r3, r7, #12
	adds	r2, r2, #104
	ldmia	r2, {r0, r1, r2}
	stmia	r3, {r0, r1, r2}
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #112]
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler12PrefixedExprEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #104]
	cmp	r3, #1
	bne	.L633
	ldr	r0, [r7, #4]
	ldr	r3, .L637
.LPIC54:
	add	r3, pc
	mov	r1, r3
	bl	_ZN10SQCompiler5ErrorEPKcz(PLT)
.L633:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #104]
	cmp	r3, #2
	beq	.L634
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #104]
	cmp	r3, #3
	bne	.L635
.L634:
	ldr	r0, [r7, #4]
	movs	r1, #12
	movs	r2, #0
	bl	_ZN10SQCompiler11Emit2ArgsOPE8SQOpcodei(PLT)
	b	.L636
.L635:
	ldr	r0, [r7, #4]
	ldr	r3, .L637+4
.LPIC55:
	add	r3, pc
	mov	r1, r3
	bl	_ZN10SQCompiler5ErrorEPKcz(PLT)
.L636:
	ldr	r3, [r7, #4]
	adds	r3, r3, #104
	add	r2, r7, #12
	ldmia	r2, {r0, r1, r2}
	stmia	r3, {r0, r1, r2}
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L638:
	.align	2
.L637:
	.word	.LC33-(.LPIC54+4)
	.word	.LC34-(.LPIC55+4)
	.fnend
	.size	_ZN10SQCompiler10DeleteExprEv, .-_ZN10SQCompiler10DeleteExprEv
	.section	.text._ZN10SQCompiler12PrefixIncDecEi,"axG",%progbits,_ZN10SQCompiler12PrefixIncDecEi,comdat
	.align	2
	.weak	_ZN10SQCompiler12PrefixIncDecEi
	.thumb
	.thumb_func
	.type	_ZN10SQCompiler12PrefixIncDecEi, %function
_ZN10SQCompiler12PrefixIncDecEi:
	.fnstart
.LFB277:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #40
	sub	sp, sp, #40
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #304
	bne	.L640
	mov	r3, #-1
	b	.L641
.L640:
	movs	r3, #1
.L641:
	str	r3, [r7, #28]
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler3LexEv(PLT)
	ldr	r2, [r7, #4]
	add	r3, r7, #8
	adds	r2, r2, #104
	ldmia	r2, {r0, r1, r2}
	stmia	r3, {r0, r1, r2}
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #112]
	ldr	r0, [r7, #4]
	bl	_ZN10SQCompiler12PrefixedExprEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #104]
	cmp	r3, #1
	bne	.L642
	ldr	r0, [r7, #4]
	ldr	r3, .L647
.LPIC56:
	add	r3, pc
	mov	r1, r3
	bl	_ZN10SQCompiler5ErrorEPKcz(PLT)
	b	.L643
.L642:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #104]
	cmp	r3, #2
	beq	.L644
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #104]
	cmp	r3, #3
	bne	.L645
.L644:
	ldr	r0, [r7, #4]
	movs	r1, #36
	ldr	r2, [r7, #28]
	bl	_ZN10SQCompiler11Emit2ArgsOPE8SQOpcodei(PLT)
	b	.L643
.L645:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #104]
	cmp	r3, #4
	bne	.L646
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9TopTargetEv(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	movs	r2, #0
	str	r2, [sp]
	ldr	r2, [r7, #28]
	str	r2, [sp, #4]
	mov	r0, r3
	movs	r1, #37
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #24]
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	b	.L643
.L646:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #104]
	cmp	r3, #5
	bne	.L643
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #-1
	bl	_ZN11SQFuncState10PushTargetEi(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #108]
	movs	r1, #0
	str	r1, [sp]
	movs	r1, #0
	str	r1, [sp, #4]
	mov	r0, r2
	movs	r1, #32
	ldr	r2, [r7, #20]
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	movs	r2, #0
	str	r2, [sp]
	ldr	r2, [r7, #28]
	str	r2, [sp, #4]
	mov	r0, r3
	movs	r1, #37
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #20]
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #108]
	ldr	r1, [r7, #20]
	str	r1, [sp]
	movs	r1, #0
	str	r1, [sp, #4]
	mov	r0, r2
	movs	r1, #31
	ldr	r2, [r7, #20]
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
.L643:
	ldr	r3, [r7, #4]
	adds	r3, r3, #104
	add	r2, r7, #8
	ldmia	r2, {r0, r1, r2}
	stmia	r3, {r0, r1, r2}
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L648:
	.align	2
.L647:
	.word	.LC21-(.LPIC56+4)
	.fnend
	.size	_ZN10SQCompiler12PrefixIncDecEi, .-_ZN10SQCompiler12PrefixIncDecEi
	.section	.rodata
	.align	2
.LC35:
	.ascii	"function with default parameters cannot have variab"
	.ascii	"le number of parameters\000"
	.align	2
.LC36:
	.ascii	"expected ')'\000"
	.align	2
.LC37:
	.ascii	"expected '='\000"
	.align	2
.LC38:
	.ascii	"expected ')' or ','\000"
	.section	.text._ZN10SQCompiler14CreateFunctionER11tagSQObjectb,"axG",%progbits,_ZN10SQCompiler14CreateFunctionER11tagSQObjectb,comdat
	.align	2
	.weak	_ZN10SQCompiler14CreateFunctionER11tagSQObjectb
	.thumb
	.thumb_func
	.type	_ZN10SQCompiler14CreateFunctionER11tagSQObjectb, %function
_ZN10SQCompiler14CreateFunctionER11tagSQObjectb:
	.fnstart
.LFB278:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #100
	sub	sp, sp, #100
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #20]
	str	r1, [r7, #16]
	mov	r3, r2
	strb	r3, [r7, #15]
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #776]
	ldr	r3, [r3, #140]
	mov	r0, r2
	mov	r1, r3
.LEHB44:
	bl	_ZN11SQFuncState14PushChildStateEP13SQSharedState(PLT)
	mov	r3, r0
	str	r3, [r7, #76]
	ldr	r3, [r7, #76]
	adds	r3, r3, #136
	mov	r0, r3
	ldr	r1, [r7, #16]
	bl	_ZN11SQObjectPtraSERK11tagSQObject(PLT)
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	add	r2, r7, #36
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L668
.LPIC57:
	add	r3, pc
	mov	r2, r3
	mov	r3, #-1
	bl	_ZN11SQFuncState12CreateStringEPKci(PLT)
	add	r3, r7, #36
	ldr	r0, [r7, #76]
	mov	r1, r3
	bl	_ZN11SQFuncState12AddParameterERK11tagSQObject(PLT)
	ldr	r3, [r7, #76]
	add	r2, r3, #144
	ldr	r3, [r7, #20]
	adds	r3, r3, #8
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	movs	r3, #0
	str	r3, [r7, #84]
	b	.L650
.L658:
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	cmp	r3, #312
	bne	.L651
	ldr	r3, [r7, #84]
	cmp	r3, #0
	ble	.L652
	ldr	r0, [r7, #20]
	ldr	r3, .L668+4
.LPIC58:
	add	r3, pc
	mov	r1, r3
	bl	_ZN10SQCompiler5ErrorEPKcz(PLT)
.L652:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	add	r2, r7, #44
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L668+8
.LPIC59:
	add	r3, pc
	mov	r2, r3
	mov	r3, #-1
	bl	_ZN11SQFuncState12CreateStringEPKci(PLT)
	add	r3, r7, #44
	ldr	r0, [r7, #76]
	mov	r1, r3
	bl	_ZN11SQFuncState12AddParameterERK11tagSQObject(PLT)
	ldr	r3, [r7, #76]
	movs	r2, #1
	strb	r2, [r3, #32]
	ldr	r0, [r7, #20]
	bl	_ZN10SQCompiler3LexEv(PLT)
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	cmp	r3, #41
	beq	.L653
	ldr	r0, [r7, #20]
	ldr	r3, .L668+12
.LPIC60:
	add	r3, pc
	mov	r1, r3
	bl	_ZN10SQCompiler5ErrorEPKcz(PLT)
.L653:
	b	.L654
.L651:
	mov	r3, r7
	mov	r0, r3
	ldr	r1, [r7, #20]
	mov	r2, #258
	bl	_ZN10SQCompiler6ExpectEi(PLT)
	add	r3, r7, #28
	mov	r2, r7
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	add	r3, r7, #28
	ldr	r0, [r7, #76]
	mov	r1, r3
	bl	_ZN11SQFuncState12AddParameterERK11tagSQObject(PLT)
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	cmp	r3, #61
	bne	.L655
	ldr	r0, [r7, #20]
	bl	_ZN10SQCompiler3LexEv(PLT)
	ldr	r0, [r7, #20]
	bl	_ZN10SQCompiler10ExpressionEv(PLT)
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9TopTargetEv(PLT)
	mov	r3, r0
	ldr	r0, [r7, #76]
	mov	r1, r3
	bl	_ZN11SQFuncState15AddDefaultParamEi(PLT)
	ldr	r3, [r7, #84]
	adds	r3, r3, #1
	str	r3, [r7, #84]
	b	.L656
.L655:
	ldr	r3, [r7, #84]
	cmp	r3, #0
	ble	.L656
	ldr	r0, [r7, #20]
	ldr	r3, .L668+16
.LPIC61:
	add	r3, pc
	mov	r1, r3
	bl	_ZN10SQCompiler5ErrorEPKcz(PLT)
.L656:
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	cmp	r3, #44
	bne	.L657
	ldr	r0, [r7, #20]
	bl	_ZN10SQCompiler3LexEv(PLT)
	b	.L650
.L657:
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	cmp	r3, #41
	beq	.L650
	ldr	r0, [r7, #20]
	ldr	r3, .L668+20
.LPIC62:
	add	r3, pc
	mov	r1, r3
	bl	_ZN10SQCompiler5ErrorEPKcz(PLT)
.L650:
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	cmp	r3, #41
	bne	.L658
.L654:
	add	r3, r7, #52
	mov	r0, r3
	ldr	r1, [r7, #20]
	movs	r2, #41
	bl	_ZN10SQCompiler6ExpectEi(PLT)
	movs	r3, #0
	str	r3, [r7, #80]
	b	.L659
.L660:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9PopTargetEv(PLT)
	ldr	r3, [r7, #80]
	adds	r3, r3, #1
	str	r3, [r7, #80]
.L659:
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #84]
	cmp	r2, r3
	blt	.L660
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	str	r3, [r7, #72]
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #76]
	str	r2, [r3, #4]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L661
	ldr	r0, [r7, #20]
	bl	_ZN10SQCompiler10ExpressionEv(PLT)
	ldr	r3, [r7, #20]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9PopTargetEv(PLT)
	mov	r3, r0
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r0, r4
	movs	r1, #23
	movs	r2, #1
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	b	.L662
.L661:
	ldr	r0, [r7, #20]
	movs	r1, #0
	bl	_ZN10SQCompiler9StatementEb(PLT)
.L662:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #28]
	cmp	r3, #10
	bne	.L663
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #36]
	b	.L664
.L663:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #32]
.L664:
	ldr	r2, [r7, #20]
	ldrb	r2, [r2, #92]	@ zero_extendqisi2
	ldr	r0, [r7, #76]
	mov	r1, r3
	movs	r3, #1
	bl	_ZN11SQFuncState12AddLineInfosEibb(PLT)
	movs	r3, #0
	str	r3, [sp]
	movs	r3, #0
	str	r3, [sp, #4]
	ldr	r0, [r7, #76]
	movs	r1, #23
	mov	r2, #-1
	movs	r3, #0
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	ldr	r0, [r7, #76]
	movs	r1, #0
	bl	_ZN11SQFuncState12SetStackSizeEi(PLT)
	ldr	r0, [r7, #76]
	bl	_ZN11SQFuncState10BuildProtoEv(PLT)
.LEHE44:
	mov	r3, r0
	str	r3, [r7, #68]
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #72]
	str	r2, [r3, #4]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	add	r4, r3, #60
	add	r3, r7, #60
	mov	r0, r3
	ldr	r1, [r7, #68]
	bl	_ZN11SQObjectPtrC1EP15SQFunctionProto(PLT)
	add	r3, r7, #60
	mov	r0, r4
	mov	r1, r3
.LEHB45:
	bl	_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_(PLT)
.LEHE45:
	add	r3, r7, #60
	mov	r0, r3
.LEHB46:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState13PopChildStateEv(PLT)
.LEHE46:
	b	.L667
.L666:
	add	r3, r7, #60
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB47:
	bl	__cxa_end_cleanup(PLT)
.LEHE47:
.L667:
	adds	r7, r7, #92
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L669:
	.align	2
.L668:
	.word	.LC10-(.LPIC57+4)
	.word	.LC35-(.LPIC58+4)
	.word	.LC11-(.LPIC59+4)
	.word	.LC36-(.LPIC60+4)
	.word	.LC37-(.LPIC61+4)
	.word	.LC38-(.LPIC62+4)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA278:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE278-.LLSDACSB278
.LLSDACSB278:
	.uleb128 .LEHB44-.LFB278
	.uleb128 .LEHE44-.LEHB44
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB45-.LFB278
	.uleb128 .LEHE45-.LEHB45
	.uleb128 .L666-.LFB278
	.uleb128 0
	.uleb128 .LEHB46-.LFB278
	.uleb128 .LEHE46-.LEHB46
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB47-.LFB278
	.uleb128 .LEHE47-.LEHB47
	.uleb128 0
	.uleb128 0
.LLSDACSE278:
	.section	.text._ZN10SQCompiler14CreateFunctionER11tagSQObjectb,"axG",%progbits,_ZN10SQCompiler14CreateFunctionER11tagSQObjectb,comdat
	.fnend
	.size	_ZN10SQCompiler14CreateFunctionER11tagSQObjectb, .-_ZN10SQCompiler14CreateFunctionER11tagSQObjectb
	.section	.text._ZN10SQCompiler13ResolveBreaksEP11SQFuncStatei,"axG",%progbits,_ZN10SQCompiler13ResolveBreaksEP11SQFuncStatei,comdat
	.align	2
	.weak	_ZN10SQCompiler13ResolveBreaksEP11SQFuncStatei
	.thumb
	.thumb_func
	.type	_ZN10SQCompiler13ResolveBreaksEP11SQFuncStatei, %function
_ZN10SQCompiler13ResolveBreaksEP11SQFuncStatei:
	.fnstart
.LFB279:
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
	b	.L671
.L672:
	ldr	r3, [r7, #8]
	adds	r3, r3, #36
	mov	r0, r3
	bl	_ZNK8sqvectorIiE4backEv(PLT)
	mov	r3, r0
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r3, [r7, #8]
	adds	r3, r3, #36
	mov	r0, r3
	bl	_ZN8sqvectorIiE8pop_backEv(PLT)
	ldr	r0, [r7, #8]
	bl	_ZN11SQFuncState13GetCurrentPosEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #20]
	subs	r3, r2, r3
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #20]
	movs	r2, #0
	bl	_ZN11SQFuncState19SetIntructionParamsEiiiii(PLT)
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	str	r3, [r7, #4]
.L671:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bgt	.L672
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN10SQCompiler13ResolveBreaksEP11SQFuncStatei, .-_ZN10SQCompiler13ResolveBreaksEP11SQFuncStatei
	.section	.text._ZN10SQCompiler16ResolveContinuesEP11SQFuncStateii,"axG",%progbits,_ZN10SQCompiler16ResolveContinuesEP11SQFuncStateii,comdat
	.align	2
	.weak	_ZN10SQCompiler16ResolveContinuesEP11SQFuncStateii
	.thumb
	.thumb_func
	.type	_ZN10SQCompiler16ResolveContinuesEP11SQFuncStateii, %function
_ZN10SQCompiler16ResolveContinuesEP11SQFuncStateii:
	.fnstart
.LFB280:
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
	b	.L674
.L675:
	ldr	r3, [r7, #8]
	adds	r3, r3, #48
	mov	r0, r3
	bl	_ZNK8sqvectorIiE4backEv(PLT)
	mov	r3, r0
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r3, [r7, #8]
	adds	r3, r3, #48
	mov	r0, r3
	bl	_ZN8sqvectorIiE8pop_backEv(PLT)
	ldr	r2, [r7]
	ldr	r3, [r7, #20]
	subs	r3, r2, r3
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #20]
	movs	r2, #0
	bl	_ZN11SQFuncState19SetIntructionParamsEiiiii(PLT)
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	str	r3, [r7, #4]
.L674:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bgt	.L675
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN10SQCompiler16ResolveContinuesEP11SQFuncStateii, .-_ZN10SQCompiler16ResolveContinuesEP11SQFuncStateii
	.section	.text._ZN10SQCompilerD2Ev,"axG",%progbits,_ZN10SQCompilerD5Ev,comdat
	.align	2
	.weak	_ZN10SQCompilerD2Ev
	.thumb
	.thumb_func
	.type	_ZN10SQCompilerD2Ev, %function
_ZN10SQCompilerD2Ev:
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
	ldr	r3, [r7, #4]
	adds	r3, r3, #16
	mov	r0, r3
.LEHB48:
	bl	_ZN7SQLexerD1Ev(PLT)
.LEHE48:
	ldr	r3, [r7, #4]
	adds	r3, r3, #8
	mov	r0, r3
.LEHB49:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE49:
	ldr	r3, [r7, #4]
	b	.L681
.L680:
	ldr	r3, [r7, #4]
	adds	r3, r3, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB50:
	bl	__cxa_end_cleanup(PLT)
.LEHE50:
.L681:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA283:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE283-.LLSDACSB283
.LLSDACSB283:
	.uleb128 .LEHB48-.LFB283
	.uleb128 .LEHE48-.LEHB48
	.uleb128 .L680-.LFB283
	.uleb128 0
	.uleb128 .LEHB49-.LFB283
	.uleb128 .LEHE49-.LEHB49
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB50-.LFB283
	.uleb128 .LEHE50-.LEHB50
	.uleb128 0
	.uleb128 0
.LLSDACSE283:
	.section	.text._ZN10SQCompilerD2Ev,"axG",%progbits,_ZN10SQCompilerD5Ev,comdat
	.fnend
	.size	_ZN10SQCompilerD2Ev, .-_ZN10SQCompilerD2Ev
	.weak	_ZN10SQCompilerD1Ev
	.thumb_set _ZN10SQCompilerD1Ev,_ZN10SQCompilerD2Ev
	.section	.text._Z7CompileP4SQVMPFiPvES1_PKcR11SQObjectPtrbb,"ax",%progbits
	.align	2
	.global	_Z7CompileP4SQVMPFiPvES1_PKcR11SQObjectPtrbb
	.thumb
	.thumb_func
	.type	_Z7CompileP4SQVMPFiPvES1_PKcR11SQObjectPtrbb, %function
_Z7CompileP4SQVMPFiPvES1_PKcR11SQObjectPtrbb:
	.fnstart
.LFB281:
	@ args = 12, pretend = 0, frame = 800
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #820
	sub	sp, sp, #820
	.setfp r7, sp, #16
	add	r7, sp, #16
	add	r4, r7, #12
	str	r0, [r4]
	add	r0, r7, #8
	str	r1, [r0]
	adds	r1, r7, #4
	str	r2, [r1]
	mov	r2, r7
	str	r3, [r2]
	add	r0, r7, #16
	add	r1, r7, #12
	add	r2, r7, #8
	adds	r3, r7, #4
	mov	r4, r7
	ldr	r4, [r4]
	str	r4, [sp]
	ldrb	r4, [r7, #820]	@ zero_extendqisi2
	str	r4, [sp, #4]
	ldrb	r4, [r7, #824]	@ zero_extendqisi2
	str	r4, [sp, #8]
	ldr	r1, [r1]
	ldr	r2, [r2]
	ldr	r3, [r3]
.LEHB51:
	bl	_ZN10SQCompilerC1EP4SQVMPFiPvES2_PKcbb(PLT)
.LEHE51:
	add	r3, r7, #16
	mov	r0, r3
	ldr	r1, [r7, #816]
.LEHB52:
	bl	_ZN10SQCompiler7CompileER11SQObjectPtr(PLT)
.LEHE52:
	mov	r3, r0
	mov	r4, r3
	add	r3, r7, #16
	mov	r0, r3
.LEHB53:
	bl	_ZN10SQCompilerD1Ev(PLT)
.LEHE53:
	mov	r3, r4
	b	.L686
.L685:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN10SQCompilerD1Ev(PLT)
.LEHB54:
	bl	__cxa_end_cleanup(PLT)
.LEHE54:
.L686:
	mov	r0, r3
	add	r7, r7, #804
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA281:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE281-.LLSDACSB281
.LLSDACSB281:
	.uleb128 .LEHB51-.LFB281
	.uleb128 .LEHE51-.LEHB51
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB52-.LFB281
	.uleb128 .LEHE52-.LEHB52
	.uleb128 .L685-.LFB281
	.uleb128 0
	.uleb128 .LEHB53-.LFB281
	.uleb128 .LEHE53-.LEHB53
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB54-.LFB281
	.uleb128 .LEHE54-.LEHB54
	.uleb128 0
	.uleb128 0
.LLSDACSE281:
	.section	.text._Z7CompileP4SQVMPFiPvES1_PKcR11SQObjectPtrbb
	.fnend
	.size	_Z7CompileP4SQVMPFiPvES1_PKcR11SQObjectPtrbb, .-_Z7CompileP4SQVMPFiPvES1_PKcR11SQObjectPtrbb
	.section	.text._ZNK8sqvectorI13SQInstructionEixEj,"axG",%progbits,_ZNK8sqvectorI13SQInstructionEixEj,comdat
	.align	2
	.weak	_ZNK8sqvectorI13SQInstructionEixEj
	.thumb
	.thumb_func
	.type	_ZNK8sqvectorI13SQInstructionEixEj, %function
_ZNK8sqvectorI13SQInstructionEixEj:
	.fnstart
.LFB285:
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
.LFB286:
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
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bhi	.L691
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #1
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN8sqvectorIiE8_reallocEj(PLT)
.L691:
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
	beq	.L693
	ldr	r2, [r7]
	ldr	r2, [r2]
	str	r2, [r3]
.L693:
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
.LFB289:
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
	.section	.text._ZNK8sqvectorIcE4sizeEv,"axG",%progbits,_ZNK8sqvectorIcE4sizeEv,comdat
	.align	2
	.weak	_ZNK8sqvectorIcE4sizeEv
	.thumb
	.thumb_func
	.type	_ZNK8sqvectorIcE4sizeEv, %function
_ZNK8sqvectorIcE4sizeEv:
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
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNK8sqvectorIcE4sizeEv, .-_ZNK8sqvectorIcE4sizeEv
	.section	.text._ZNK8sqvectorIiE3topEv,"axG",%progbits,_ZNK8sqvectorIiE3topEv,comdat
	.align	2
	.weak	_ZNK8sqvectorIiE3topEv
	.thumb
	.thumb_func
	.type	_ZNK8sqvectorIiE3topEv, %function
_ZNK8sqvectorIiE3topEv:
	.fnstart
.LFB296:
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
	.size	_ZNK8sqvectorIiE3topEv, .-_ZNK8sqvectorIiE3topEv
	.section	.text._ZN10SQCompiler10INVOKE_EXPIMS_FvvEEEvT_,"axG",%progbits,_ZN10SQCompiler10INVOKE_EXPIMS_FvvEEEvT_,comdat
	.align	2
	.weak	_ZN10SQCompiler10INVOKE_EXPIMS_FvvEEEvT_
	.thumb
	.thumb_func
	.type	_ZN10SQCompiler10INVOKE_EXPIMS_FvvEEEvT_, %function
_ZN10SQCompiler10INVOKE_EXPIMS_FvvEEEvT_:
	.fnstart
.LFB297:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #32
	sub	sp, sp, #32
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	adds	r3, r7, #4
	stmia	r3, {r1, r2}
	ldr	r2, [r7, #12]
	add	r3, r7, #20
	adds	r2, r2, #104
	ldmia	r2, {r0, r1, r2}
	stmia	r3, {r0, r1, r2}
	ldr	r3, [r7, #12]
	movs	r2, #1
	str	r2, [r3, #104]
	ldr	r3, [r7, #12]
	mov	r2, #-1
	str	r2, [r3, #108]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #112]
	ldr	r3, [r7, #8]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L704
	ldr	r3, [r7, #4]
	b	.L705
.L704:
	ldr	r3, [r7, #8]
	asrs	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	ldr	r3, [r3]
.L705:
	ldr	r2, [r7, #8]
	asrs	r2, r2, #1
	ldr	r1, [r7, #12]
	add	r2, r2, r1
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #12]
	adds	r3, r3, #104
	add	r2, r7, #20
	ldmia	r2, {r0, r1, r2}
	stmia	r3, {r0, r1, r2}
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN10SQCompiler10INVOKE_EXPIMS_FvvEEEvT_, .-_ZN10SQCompiler10INVOKE_EXPIMS_FvvEEEvT_
	.section	.text._ZN10SQCompiler7BIN_EXPIMS_FvvEEEv8SQOpcodeT_i,"axG",%progbits,_ZN10SQCompiler7BIN_EXPIMS_FvvEEEv8SQOpcodeT_i,comdat
	.align	2
	.weak	_ZN10SQCompiler7BIN_EXPIMS_FvvEEEv8SQOpcodeT_i
	.thumb
	.thumb_func
	.type	_ZN10SQCompiler7BIN_EXPIMS_FvvEEEv8SQOpcodeT_i, %function
_ZN10SQCompiler7BIN_EXPIMS_FvvEEEv8SQOpcodeT_i:
	.fnstart
.LFB298:
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #36
	sub	sp, sp, #36
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r1, r7
	stmia	r1, {r2, r3}
	ldr	r0, [r7, #12]
	bl	_ZN10SQCompiler3LexEv(PLT)
	ldr	r0, [r7, #12]
	mov	r3, r7
	ldmia	r3, {r1, r2}
	bl	_ZN10SQCompiler10INVOKE_EXPIMS_FvvEEEvT_(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9PopTargetEv(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN11SQFuncState9PopTargetEv(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	r1, #-1
	bl	_ZN11SQFuncState10PushTargetEi(PLT)
	mov	r3, r0
	ldr	r2, [r7, #16]
	str	r2, [sp]
	ldr	r2, [r7, #40]
	str	r2, [sp, #4]
	mov	r0, r4
	ldr	r1, [r7, #8]
	mov	r2, r3
	ldr	r3, [r7, #20]
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZN10SQCompiler7BIN_EXPIMS_FvvEEEv8SQOpcodeT_i, .-_ZN10SQCompiler7BIN_EXPIMS_FvvEEEv8SQOpcodeT_i
	.section	.text._ZNK8sqvectorI11SQObjectPtrE4sizeEv,"axG",%progbits,_ZNK8sqvectorI11SQObjectPtrE4sizeEv,comdat
	.align	2
	.weak	_ZNK8sqvectorI11SQObjectPtrE4sizeEv
	.thumb
	.thumb_func
	.type	_ZNK8sqvectorI11SQObjectPtrE4sizeEv, %function
_ZNK8sqvectorI11SQObjectPtrE4sizeEv:
	.fnstart
.LFB299:
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
	.section	.text._ZN8sqvectorIiE8pop_backEv,"axG",%progbits,_ZN8sqvectorIiE8pop_backEv,comdat
	.align	2
	.weak	_ZN8sqvectorIiE8pop_backEv
	.thumb
	.thumb_func
	.type	_ZN8sqvectorIiE8pop_backEv, %function
_ZN8sqvectorIiE8pop_backEv:
	.fnstart
.LFB300:
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
	.section	.text._ZN8sqvectorI13SQInstructionEC2Ev,"axG",%progbits,_ZN8sqvectorI13SQInstructionEC5Ev,comdat
	.align	2
	.weak	_ZN8sqvectorI13SQInstructionEC2Ev
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI13SQInstructionEC2Ev, %function
_ZN8sqvectorI13SQInstructionEC2Ev:
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
.LFB305:
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
	beq	.L714
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L715
.L716:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L715:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bhi	.L716
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	lsls	r3, r3, #3
	mov	r0, r2
	mov	r1, r3
	bl	_Z10sq_vm_freePvj(PLT)
.L714:
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
	.section	.text._ZN8sqvectorI13SQInstructionE9push_backERKS0_,"axG",%progbits,_ZN8sqvectorI13SQInstructionE9push_backERKS0_,comdat
	.align	2
	.weak	_ZN8sqvectorI13SQInstructionE9push_backERKS0_
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI13SQInstructionE9push_backERKS0_, %function
_ZN8sqvectorI13SQInstructionE9push_backERKS0_:
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
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bhi	.L719
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #1
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN8sqvectorI13SQInstructionE8_reallocEj(PLT)
.L719:
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
	beq	.L721
	ldr	r1, [r7]
	mov	r2, r3
	ldmia	r1, {r0, r1}
	stmia	r2, {r0, r1}
.L721:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN8sqvectorI13SQInstructionE9push_backERKS0_, .-_ZN8sqvectorI13SQInstructionE9push_backERKS0_
	.section	.text._ZN8sqvectorI11SQObjectPtrE9push_backERKS0_,"axG",%progbits,_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_,comdat
	.align	2
	.weak	_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_, %function
_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_:
	.fnstart
.LFB308:
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
	bhi	.L724
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #1
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN8sqvectorI11SQObjectPtrE8_reallocEj(PLT)
.L724:
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
	beq	.L725
	mov	r0, r4
	ldr	r1, [r7]
	bl	_ZN11SQObjectPtrC1ERKS_(PLT)
	mov	r3, r4
	b	.L726
.L725:
	mov	r3, r4
.L726:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_, .-_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_
	.section	.text._ZNK8sqvectorIiE4backEv,"axG",%progbits,_ZNK8sqvectorIiE4backEv,comdat
	.align	2
	.weak	_ZNK8sqvectorIiE4backEv
	.thumb
	.thumb_func
	.type	_ZNK8sqvectorIiE4backEv, %function
_ZNK8sqvectorIiE4backEv:
	.fnstart
.LFB309:
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
	.section	.text._ZN8sqvectorIiE8_reallocEj,"axG",%progbits,_ZN8sqvectorIiE8_reallocEj,comdat
	.align	2
	.weak	_ZN8sqvectorIiE8_reallocEj
	.thumb
	.thumb_func
	.type	_ZN8sqvectorIiE8_reallocEj, %function
_ZN8sqvectorIiE8_reallocEj:
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
	beq	.L731
	ldr	r3, [r7]
	b	.L732
.L731:
	movs	r3, #4
.L732:
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
	.section	.text._ZN8sqvectorI13SQInstructionE8_reallocEj,"axG",%progbits,_ZN8sqvectorI13SQInstructionE8_reallocEj,comdat
	.align	2
	.weak	_ZN8sqvectorI13SQInstructionE8_reallocEj
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI13SQInstructionE8_reallocEj, %function
_ZN8sqvectorI13SQInstructionE8_reallocEj:
	.fnstart
.LFB312:
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
	beq	.L734
	ldr	r3, [r7]
	b	.L735
.L734:
	movs	r3, #4
.L735:
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
	.section	.text._ZN8sqvectorI11SQObjectPtrE8_reallocEj,"axG",%progbits,_ZN8sqvectorI11SQObjectPtrE8_reallocEj,comdat
	.align	2
	.weak	_ZN8sqvectorI11SQObjectPtrE8_reallocEj
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI11SQObjectPtrE8_reallocEj, %function
_ZN8sqvectorI11SQObjectPtrE8_reallocEj:
	.fnstart
.LFB313:
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
	beq	.L737
	ldr	r3, [r7]
	b	.L738
.L737:
	movs	r3, #4
.L738:
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
	.section	.rodata._ZZN10SQCompiler17ParseTableOrClassEiiE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN10SQCompiler17ParseTableOrClassEiiE19__PRETTY_FUNCTION__, %object
	.size	_ZZN10SQCompiler17ParseTableOrClassEiiE19__PRETTY_FUNCTION__, 57
_ZZN10SQCompiler17ParseTableOrClassEiiE19__PRETTY_FUNCTION__:
	.ascii	"void SQCompiler::ParseTableOrClass(SQInteger, SQInt"
	.ascii	"eger)\000"
	.section	.rodata._ZZN11SQObjectPtrC1EP15SQFunctionProtoE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN11SQObjectPtrC1EP15SQFunctionProtoE19__PRETTY_FUNCTION__, %object
	.size	_ZZN11SQObjectPtrC1EP15SQFunctionProtoE19__PRETTY_FUNCTION__, 43
_ZZN11SQObjectPtrC1EP15SQFunctionProtoE19__PRETTY_FUNCTION__:
	.ascii	"SQObjectPtr::SQObjectPtr(SQFunctionProto*)\000"
	.section	.rodata._ZZN10SQCompiler20ChooseArithOpByTokenEiE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN10SQCompiler20ChooseArithOpByTokenEiE19__PRETTY_FUNCTION__, %object
	.size	_ZZN10SQCompiler20ChooseArithOpByTokenEiE19__PRETTY_FUNCTION__, 53
_ZZN10SQCompiler20ChooseArithOpByTokenEiE19__PRETTY_FUNCTION__:
	.ascii	"SQOpcode SQCompiler::ChooseArithOpByToken(SQInteger"
	.ascii	")\000"
	.section	.rodata._ZZN10SQCompiler26ChooseCompArithCharByTokenEiE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN10SQCompiler26ChooseCompArithCharByTokenEiE19__PRETTY_FUNCTION__, %object
	.size	_ZZN10SQCompiler26ChooseCompArithCharByTokenEiE19__PRETTY_FUNCTION__, 60
_ZZN10SQCompiler26ChooseCompArithCharByTokenEiE19__PRETTY_FUNCTION__:
	.ascii	"SQInteger SQCompiler::ChooseCompArithCharByToken(SQ"
	.ascii	"Integer)\000"
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
