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
	.file	"sqapi.cpp"
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
	bne	.L22
	ldr	r3, .L25
.LPIC1:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L25+4
.LPIC2:
	add	r3, pc
	mov	r1, r3
	movs	r2, #226
	ldr	r3, .L25+8
.LPIC3:
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
	.word	.LC0-(.LPIC1+4)
	.word	.LC1-(.LPIC2+4)
	.word	_ZZN11SQObjectPtrC1EP7SQTableE19__PRETTY_FUNCTION__-(.LPIC3+4)
	.cantunwind
	.fnend
	.size	_ZN11SQObjectPtrC2EP7SQTable, .-_ZN11SQObjectPtrC2EP7SQTable
	.weak	_ZN11SQObjectPtrC1EP7SQTable
	.thumb_set _ZN11SQObjectPtrC1EP7SQTable,_ZN11SQObjectPtrC2EP7SQTable
	.section	.text._ZN11SQObjectPtrC2EP7SQClass,"axG",%progbits,_ZN11SQObjectPtrC5EP7SQClass,comdat
	.align	2
	.weak	_ZN11SQObjectPtrC2EP7SQClass
	.thumb
	.thumb_func
	.type	_ZN11SQObjectPtrC2EP7SQClass, %function
_ZN11SQObjectPtrC2EP7SQClass:
	.fnstart
.LFB54:
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
	mov	r3, #16384
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
.LPIC4:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L31+4
.LPIC5:
	add	r3, pc
	mov	r1, r3
	movs	r2, #227
	ldr	r3, .L31+8
.LPIC6:
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
	.word	.LC0-(.LPIC4+4)
	.word	.LC1-(.LPIC5+4)
	.word	_ZZN11SQObjectPtrC1EP7SQClassE19__PRETTY_FUNCTION__-(.LPIC6+4)
	.cantunwind
	.fnend
	.size	_ZN11SQObjectPtrC2EP7SQClass, .-_ZN11SQObjectPtrC2EP7SQClass
	.weak	_ZN11SQObjectPtrC1EP7SQClass
	.thumb_set _ZN11SQObjectPtrC1EP7SQClass,_ZN11SQObjectPtrC2EP7SQClass
	.section	.text._ZN11SQObjectPtrC2EP10SQInstance,"axG",%progbits,_ZN11SQObjectPtrC5EP10SQInstance,comdat
	.align	2
	.weak	_ZN11SQObjectPtrC2EP10SQInstance
	.thumb
	.thumb_func
	.type	_ZN11SQObjectPtrC2EP10SQInstance, %function
_ZN11SQObjectPtrC2EP10SQInstance:
	.fnstart
.LFB58:
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
	mov	r3, #32768
	movt	r3, 2560
	str	r3, [r2]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L34
	ldr	r3, .L37
.LPIC7:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L37+4
.LPIC8:
	add	r3, pc
	mov	r1, r3
	movs	r2, #228
	ldr	r3, .L37+8
.LPIC9:
	add	r3, pc
	bl	__assert_fail(PLT)
.L34:
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
.L38:
	.align	2
.L37:
	.word	.LC0-(.LPIC7+4)
	.word	.LC1-(.LPIC8+4)
	.word	_ZZN11SQObjectPtrC1EP10SQInstanceE19__PRETTY_FUNCTION__-(.LPIC9+4)
	.cantunwind
	.fnend
	.size	_ZN11SQObjectPtrC2EP10SQInstance, .-_ZN11SQObjectPtrC2EP10SQInstance
	.weak	_ZN11SQObjectPtrC1EP10SQInstance
	.thumb_set _ZN11SQObjectPtrC1EP10SQInstance,_ZN11SQObjectPtrC2EP10SQInstance
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
	bne	.L40
	ldr	r3, .L43
.LPIC10:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L43+4
.LPIC11:
	add	r3, pc
	mov	r1, r3
	movs	r2, #229
	ldr	r3, .L43+8
.LPIC12:
	add	r3, pc
	bl	__assert_fail(PLT)
.L40:
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
.L44:
	.align	2
.L43:
	.word	.LC0-(.LPIC10+4)
	.word	.LC1-(.LPIC11+4)
	.word	_ZZN11SQObjectPtrC1EP7SQArrayE19__PRETTY_FUNCTION__-(.LPIC12+4)
	.cantunwind
	.fnend
	.size	_ZN11SQObjectPtrC2EP7SQArray, .-_ZN11SQObjectPtrC2EP7SQArray
	.weak	_ZN11SQObjectPtrC1EP7SQArray
	.thumb_set _ZN11SQObjectPtrC1EP7SQArray,_ZN11SQObjectPtrC2EP7SQArray
	.section	.text._ZN11SQObjectPtrC2EP9SQClosure,"axG",%progbits,_ZN11SQObjectPtrC5EP9SQClosure,comdat
	.align	2
	.weak	_ZN11SQObjectPtrC2EP9SQClosure
	.thumb
	.thumb_func
	.type	_ZN11SQObjectPtrC2EP9SQClosure, %function
_ZN11SQObjectPtrC2EP9SQClosure:
	.fnstart
.LFB66:
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
	mov	r3, #256
	movt	r3, 2048
	str	r3, [r2]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L46
	ldr	r3, .L49
.LPIC13:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L49+4
.LPIC14:
	add	r3, pc
	mov	r1, r3
	movs	r2, #230
	ldr	r3, .L49+8
.LPIC15:
	add	r3, pc
	bl	__assert_fail(PLT)
.L46:
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
.L50:
	.align	2
.L49:
	.word	.LC0-(.LPIC13+4)
	.word	.LC1-(.LPIC14+4)
	.word	_ZZN11SQObjectPtrC1EP9SQClosureE19__PRETTY_FUNCTION__-(.LPIC15+4)
	.cantunwind
	.fnend
	.size	_ZN11SQObjectPtrC2EP9SQClosure, .-_ZN11SQObjectPtrC2EP9SQClosure
	.weak	_ZN11SQObjectPtrC1EP9SQClosure
	.thumb_set _ZN11SQObjectPtrC1EP9SQClosure,_ZN11SQObjectPtrC2EP9SQClosure
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
	beq	.L52
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L52
	movs	r3, #1
	b	.L53
.L52:
	movs	r3, #0
.L53:
	cmp	r3, #0
	beq	.L54
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	mov	r0, r2
	blx	r3
.L54:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQObjectPtraSEP9SQClosure, .-_ZN11SQObjectPtraSEP9SQClosure
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
	bne	.L57
	ldr	r3, .L60
.LPIC16:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L60+4
.LPIC17:
	add	r3, pc
	mov	r1, r3
	movs	r2, #231
	ldr	r3, .L60+8
.LPIC18:
	add	r3, pc
	bl	__assert_fail(PLT)
.L57:
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
.L61:
	.align	2
.L60:
	.word	.LC0-(.LPIC16+4)
	.word	.LC1-(.LPIC17+4)
	.word	_ZZN11SQObjectPtrC1EP15SQNativeClosureE19__PRETTY_FUNCTION__-(.LPIC18+4)
	.cantunwind
	.fnend
	.size	_ZN11SQObjectPtrC2EP15SQNativeClosure, .-_ZN11SQObjectPtrC2EP15SQNativeClosure
	.weak	_ZN11SQObjectPtrC1EP15SQNativeClosure
	.thumb_set _ZN11SQObjectPtrC1EP15SQNativeClosure,_ZN11SQObjectPtrC2EP15SQNativeClosure
	.section	.text._ZN11SQObjectPtraSEP15SQNativeClosure,"axG",%progbits,_ZN11SQObjectPtraSEP15SQNativeClosure,comdat
	.align	2
	.weak	_ZN11SQObjectPtraSEP15SQNativeClosure
	.thumb
	.thumb_func
	.type	_ZN11SQObjectPtraSEP15SQNativeClosure, %function
_ZN11SQObjectPtraSEP15SQNativeClosure:
	.fnstart
.LFB72:
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
	mov	r3, #512
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
	beq	.L63
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L63
	movs	r3, #1
	b	.L64
.L63:
	movs	r3, #0
.L64:
	cmp	r3, #0
	beq	.L65
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	mov	r0, r2
	blx	r3
.L65:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQObjectPtraSEP15SQNativeClosure, .-_ZN11SQObjectPtraSEP15SQNativeClosure
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
	bne	.L68
	ldr	r3, .L71
.LPIC19:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L71+4
.LPIC20:
	add	r3, pc
	mov	r1, r3
	movs	r2, #234
	ldr	r3, .L71+8
.LPIC21:
	add	r3, pc
	bl	__assert_fail(PLT)
.L68:
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
.L72:
	.align	2
.L71:
	.word	.LC0-(.LPIC19+4)
	.word	.LC1-(.LPIC20+4)
	.word	_ZZN11SQObjectPtrC1EP8SQStringE19__PRETTY_FUNCTION__-(.LPIC21+4)
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
	beq	.L74
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L74
	movs	r3, #1
	b	.L75
.L74:
	movs	r3, #0
.L75:
	cmp	r3, #0
	beq	.L76
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	mov	r0, r2
	blx	r3
.L76:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQObjectPtraSEP8SQString, .-_ZN11SQObjectPtraSEP8SQString
	.section	.text._ZN11SQObjectPtrC2EP10SQUserData,"axG",%progbits,_ZN11SQObjectPtrC5EP10SQUserData,comdat
	.align	2
	.weak	_ZN11SQObjectPtrC2EP10SQUserData
	.thumb
	.thumb_func
	.type	_ZN11SQObjectPtrC2EP10SQUserData, %function
_ZN11SQObjectPtrC2EP10SQUserData:
	.fnstart
.LFB86:
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
	movs	r3, #128
	movt	r3, 2560
	str	r3, [r2]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L79
	ldr	r3, .L82
.LPIC22:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L82+4
.LPIC23:
	add	r3, pc
	mov	r1, r3
	movs	r2, #235
	ldr	r3, .L82+8
.LPIC24:
	add	r3, pc
	bl	__assert_fail(PLT)
.L79:
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
.L83:
	.align	2
.L82:
	.word	.LC0-(.LPIC22+4)
	.word	.LC1-(.LPIC23+4)
	.word	_ZZN11SQObjectPtrC1EP10SQUserDataE19__PRETTY_FUNCTION__-(.LPIC24+4)
	.cantunwind
	.fnend
	.size	_ZN11SQObjectPtrC2EP10SQUserData, .-_ZN11SQObjectPtrC2EP10SQUserData
	.weak	_ZN11SQObjectPtrC1EP10SQUserData
	.thumb_set _ZN11SQObjectPtrC1EP10SQUserData,_ZN11SQObjectPtrC2EP10SQUserData
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
	bne	.L85
	ldr	r3, .L88
.LPIC25:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L88+4
.LPIC26:
	add	r3, pc
	mov	r1, r3
	movs	r2, #236
	ldr	r3, .L88+8
.LPIC27:
	add	r3, pc
	bl	__assert_fail(PLT)
.L85:
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
.L89:
	.align	2
.L88:
	.word	.LC0-(.LPIC25+4)
	.word	.LC1-(.LPIC26+4)
	.word	_ZZN11SQObjectPtrC1EP9SQWeakRefE19__PRETTY_FUNCTION__-(.LPIC27+4)
	.cantunwind
	.fnend
	.size	_ZN11SQObjectPtrC2EP9SQWeakRef, .-_ZN11SQObjectPtrC2EP9SQWeakRef
	.weak	_ZN11SQObjectPtrC1EP9SQWeakRef
	.thumb_set _ZN11SQObjectPtrC1EP9SQWeakRef,_ZN11SQObjectPtrC2EP9SQWeakRef
	.section	.text._ZN11SQObjectPtrC2EP4SQVM,"axG",%progbits,_ZN11SQObjectPtrC5EP4SQVM,comdat
	.align	2
	.weak	_ZN11SQObjectPtrC2EP4SQVM
	.thumb
	.thumb_func
	.type	_ZN11SQObjectPtrC2EP4SQVM, %function
_ZN11SQObjectPtrC2EP4SQVM:
	.fnstart
.LFB94:
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
	mov	r3, #4096
	movt	r3, 2048
	str	r3, [r2]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L91
	ldr	r3, .L94
.LPIC28:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L94+4
.LPIC29:
	add	r3, pc
	mov	r1, r3
	movs	r2, #237
	ldr	r3, .L94+8
.LPIC30:
	add	r3, pc
	bl	__assert_fail(PLT)
.L91:
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
.L95:
	.align	2
.L94:
	.word	.LC0-(.LPIC28+4)
	.word	.LC1-(.LPIC29+4)
	.word	_ZZN11SQObjectPtrC1EP4SQVME19__PRETTY_FUNCTION__-(.LPIC30+4)
	.cantunwind
	.fnend
	.size	_ZN11SQObjectPtrC2EP4SQVM, .-_ZN11SQObjectPtrC2EP4SQVM
	.weak	_ZN11SQObjectPtrC1EP4SQVM
	.thumb_set _ZN11SQObjectPtrC1EP4SQVM,_ZN11SQObjectPtrC2EP4SQVM
	.section	.text._ZN11SQObjectPtraSEP4SQVM,"axG",%progbits,_ZN11SQObjectPtraSEP4SQVM,comdat
	.align	2
	.weak	_ZN11SQObjectPtraSEP4SQVM
	.thumb
	.thumb_func
	.type	_ZN11SQObjectPtraSEP4SQVM, %function
_ZN11SQObjectPtraSEP4SQVM:
	.fnstart
.LFB96:
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
	mov	r3, #4096
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
	beq	.L97
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L97
	movs	r3, #1
	b	.L98
.L97:
	movs	r3, #0
.L98:
	cmp	r3, #0
	beq	.L99
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	mov	r0, r2
	blx	r3
.L99:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQObjectPtraSEP4SQVM, .-_ZN11SQObjectPtraSEP4SQVM
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
	.section	.text._ZN11SQObjectPtrC2EPv,"axG",%progbits,_ZN11SQObjectPtrC5EPv,comdat
	.align	2
	.weak	_ZN11SQObjectPtrC2EPv
	.thumb
	.thumb_func
	.type	_ZN11SQObjectPtrC2EPv, %function
_ZN11SQObjectPtrC2EPv:
	.fnstart
.LFB110:
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
	ldr	r3, [r7, #4]
	mov	r2, #2048
	str	r2, [r3]
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
	.size	_ZN11SQObjectPtrC2EPv, .-_ZN11SQObjectPtrC2EPv
	.weak	_ZN11SQObjectPtrC1EPv
	.thumb_set _ZN11SQObjectPtrC1EPv,_ZN11SQObjectPtrC2EPv
	.section	.text._ZN11SQObjectPtrC2Eb,"axG",%progbits,_ZN11SQObjectPtrC5Eb,comdat
	.align	2
	.weak	_ZN11SQObjectPtrC2Eb
	.thumb
	.thumb_func
	.type	_ZN11SQObjectPtrC2Eb, %function
_ZN11SQObjectPtrC2Eb:
	.fnstart
.LFB114:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN11tagSQObjectC2Ev(PLT)
	ldr	r2, [r7, #4]
	movs	r3, #8
	movt	r3, 256
	str	r3, [r2]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L111
	movs	r3, #1
	b	.L112
.L111:
	movs	r3, #0
.L112:
	ldr	r2, [r7, #4]
	str	r3, [r2, #4]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN11SQObjectPtrC2Eb, .-_ZN11SQObjectPtrC2Eb
	.weak	_ZN11SQObjectPtrC1Eb
	.thumb_set _ZN11SQObjectPtrC1Eb,_ZN11SQObjectPtrC2Eb
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
	beq	.L116
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L116
	movs	r3, #1
	b	.L117
.L116:
	movs	r3, #0
.L117:
	cmp	r3, #0
	beq	.L118
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #4]
	mov	r0, r2
	blx	r3
.L118:
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
	beq	.L121
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #4]
	adds	r2, r2, #1
	str	r2, [r3, #4]
.L121:
	ldr	r3, [r7, #12]
	and	r3, r3, #134217728
	cmp	r3, #0
	beq	.L122
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L122
	movs	r3, #1
	b	.L123
.L122:
	movs	r3, #0
.L123:
	cmp	r3, #0
	beq	.L124
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	mov	r0, r2
	blx	r3
.L124:
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
	beq	.L127
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #4]
	adds	r2, r2, #1
	str	r2, [r3, #4]
.L127:
	ldr	r3, [r7, #12]
	and	r3, r3, #134217728
	cmp	r3, #0
	beq	.L128
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L128
	movs	r3, #1
	b	.L129
.L128:
	movs	r3, #0
.L129:
	cmp	r3, #0
	beq	.L130
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	mov	r0, r2
	blx	r3
.L130:
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
	beq	.L133
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L133
	movs	r3, #1
	b	.L134
.L133:
	movs	r3, #0
.L134:
	cmp	r3, #0
	beq	.L132
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	mov	r0, r2
	blx	r3
.L132:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQObjectPtr4NullEv, .-_ZN11SQObjectPtr4NullEv
	.section	.text._Z9stack_getP4SQVMi,"axG",%progbits,_Z9stack_getP4SQVMi,comdat
	.align	2
	.weak	_Z9stack_getP4SQVMi
	.thumb
	.thumb_func
	.type	_Z9stack_getP4SQVMi, %function
_Z9stack_getP4SQVMi:
	.fnstart
.LFB157:
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
	blt	.L137
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #40]
	ldr	r3, [r7]
	add	r3, r3, r2
	subs	r3, r3, #1
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN4SQVM5GetAtEi(PLT)
	mov	r3, r0
	b	.L138
.L137:
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	_ZN4SQVM5GetUpEi(PLT)
	mov	r3, r0
.L138:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_Z9stack_getP4SQVMi, .-_Z9stack_getP4SQVMi
	.section	.text._Z7HashObjRK11SQObjectPtr,"axG",%progbits,_Z7HashObjRK11SQObjectPtr,comdat
	.align	2
	.weak	_Z7HashObjRK11SQObjectPtr
	.thumb
	.thumb_func
	.type	_Z7HashObjRK11SQObjectPtr, %function
_Z7HashObjRK11SQObjectPtr:
	.fnstart
.LFB166:
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
	beq	.L142
	movs	r2, #2
	movt	r2, 1280
	cmp	r3, r2
	bgt	.L143
	movs	r2, #8
	movt	r2, 256
	cmp	r3, r2
	beq	.L142
	b	.L141
.L143:
	movs	r2, #4
	movt	r2, 1280
	cmp	r3, r2
	beq	.L144
	movs	r2, #16
	movt	r2, 2048
	cmp	r3, r2
	bne	.L141
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #24]
	b	.L146
.L144:
	ldr	r3, [r7, #4]
	flds	s15, [r3, #4]
	ftosizs	s15, s15
	fmrs	r3, s15	@ int
	b	.L146
.L142:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	b	.L146
.L141:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	asrs	r3, r3, #3
.L146:
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
.LEHB0:
	bl	_Z12sq_vm_mallocj(PLT)
.LEHE0:
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r5, [r7, #12]
	movs	r0, #44
	mov	r1, r5
	bl	_ZnwjPv(PLT)
	mov	r4, r0
	cmp	r4, #0
	beq	.L149
	mov	r0, r4
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
.LEHB1:
	bl	_ZN7SQTableC1EP13SQSharedStatei(PLT)
.LEHE1:
.L149:
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #12]
	b	.L153
.L152:
	mov	r0, r4
	mov	r1, r5
	bl	_ZdlPvS_(PLT)
.LEHB2:
	bl	__cxa_end_cleanup(PLT)
.LEHE2:
.L153:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.global	__gxx_personality_v0
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA170:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE170-.LLSDACSB170
.LLSDACSB170:
	.uleb128 .LEHB0-.LFB170
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB170
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L152-.LFB170
	.uleb128 0
	.uleb128 .LEHB2-.LFB170
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE170:
	.section	.text._ZN7SQTable6CreateEP13SQSharedStatei,"axG",%progbits,_ZN7SQTable6CreateEP13SQSharedStatei,comdat
	.fnend
	.size	_ZN7SQTable6CreateEP13SQSharedStatei, .-_ZN7SQTable6CreateEP13SQSharedStatei
	.section	.text._ZN13SQCollectableD2Ev,"axG",%progbits,_ZN13SQCollectableD5Ev,comdat
	.align	2
	.weak	_ZN13SQCollectableD2Ev
	.thumb
	.thumb_func
	.type	_ZN13SQCollectableD2Ev, %function
_ZN13SQCollectableD2Ev:
	.fnstart
.LFB174:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r1, .L158
.LPIC31:
	add	r1, pc
	ldr	r3, [r7, #4]
	ldr	r2, .L158+4
	ldr	r2, [r1, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN12SQRefCountedD2Ev(PLT)
	movs	r3, #0
	cmp	r3, #0
	beq	.L156
	ldr	r0, [r7, #4]
	bl	_ZdlPv(PLT)
.L156:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L159:
	.align	2
.L158:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC31+4)
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
.LFB176:
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
	.section	.text._ZN11SQDelegableD2Ev,"axG",%progbits,_ZN11SQDelegableD5Ev,comdat
	.align	2
	.weak	_ZN11SQDelegableD2Ev
	.thumb
	.thumb_func
	.type	_ZN11SQDelegableD2Ev, %function
_ZN11SQDelegableD2Ev:
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
	ldr	r1, .L167
.LPIC32:
	add	r1, pc
	ldr	r3, [r7, #4]
	ldr	r2, .L167+4
	ldr	r2, [r1, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN13SQCollectableD2Ev(PLT)
	movs	r3, #0
	cmp	r3, #0
	beq	.L165
	ldr	r0, [r7, #4]
	bl	_ZdlPv(PLT)
.L165:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L168:
	.align	2
.L167:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC32+4)
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
	.section	.text._ZN7SQTable9CountUsedEv,"axG",%progbits,_ZN7SQTable9CountUsedEv,comdat
	.align	2
	.weak	_ZN7SQTable9CountUsedEv
	.thumb
	.thumb_func
	.type	_ZN7SQTable9CountUsedEv, %function
_ZN7SQTable9CountUsedEv:
	.fnstart
.LFB188:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN7SQTable9CountUsedEv, .-_ZN7SQTable9CountUsedEv
	.section	.text._ZN13SQCollectableC2Ev,"axG",%progbits,_ZN13SQCollectableC5Ev,comdat
	.align	2
	.weak	_ZN13SQCollectableC2Ev
	.thumb
	.thumb_func
	.type	_ZN13SQCollectableC2Ev, %function
_ZN13SQCollectableC2Ev:
	.fnstart
.LFB192:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r4, .L177
.LPIC33:
	add	r4, pc
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN12SQRefCountedC2Ev(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, .L177+4
	ldr	r2, [r4, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L178:
	.align	2
.L177:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC33+4)
	.word	_ZTV13SQCollectable(GOT)
	.cantunwind
	.fnend
	.size	_ZN13SQCollectableC2Ev, .-_ZN13SQCollectableC2Ev
	.weak	_ZN13SQCollectableC1Ev
	.thumb_set _ZN13SQCollectableC1Ev,_ZN13SQCollectableC2Ev
	.section	.text._ZN7SQArrayC2EP13SQSharedStatei,"axG",%progbits,_ZN7SQArrayC5EP13SQSharedStatei,comdat
	.align	2
	.weak	_ZN7SQArrayC2EP13SQSharedStatei
	.thumb
	.thumb_func
	.type	_ZN7SQArrayC2EP13SQSharedStatei, %function
_ZN7SQArrayC2EP13SQSharedStatei:
	.fnstart
.LFB194:
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
	ldr	r4, .L189
.LPIC34:
	add	r4, pc
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	_ZN13SQCollectableC2Ev(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, .L189+4
	ldr	r2, [r4, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #24
	mov	r0, r3
.LEHB3:
	bl	_ZN8sqvectorI11SQObjectPtrEC1Ev(PLT)
.LEHE3:
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
.LEHB4:
	bl	_ZN8sqvectorI11SQObjectPtrE6resizeEjRKS0_(PLT)
.LEHE4:
	add	r3, r7, #16
	mov	r0, r3
.LEHB5:
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
.LEHE5:
	ldr	r3, [r7, #12]
	b	.L188
.L187:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L183
.L186:
.L183:
	ldr	r3, [r7, #12]
	adds	r3, r3, #24
	mov	r0, r3
	bl	_ZN8sqvectorI11SQObjectPtrED1Ev(PLT)
	b	.L184
.L185:
.L184:
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	_ZN13SQCollectableD2Ev(PLT)
.LEHB6:
	bl	__cxa_end_cleanup(PLT)
.LEHE6:
.L188:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L190:
	.align	2
.L189:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC34+4)
	.word	_ZTV7SQArray(GOT)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA194:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE194-.LLSDACSB194
.LLSDACSB194:
	.uleb128 .LEHB3-.LFB194
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L185-.LFB194
	.uleb128 0
	.uleb128 .LEHB4-.LFB194
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L187-.LFB194
	.uleb128 0
	.uleb128 .LEHB5-.LFB194
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L186-.LFB194
	.uleb128 0
	.uleb128 .LEHB6-.LFB194
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE194:
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
.LFB200:
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
.LEHB7:
	bl	_Z12sq_vm_mallocj(PLT)
.LEHE7:
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r5, [r7, #12]
	movs	r0, #36
	mov	r1, r5
	bl	_ZnwjPv(PLT)
	mov	r4, r0
	cmp	r4, #0
	beq	.L193
	mov	r0, r4
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
.LEHB8:
	bl	_ZN7SQArrayC1EP13SQSharedStatei(PLT)
.LEHE8:
.L193:
	ldr	r3, [r7, #12]
	b	.L197
.L196:
	mov	r0, r4
	mov	r1, r5
	bl	_ZdlPvS_(PLT)
.LEHB9:
	bl	__cxa_end_cleanup(PLT)
.LEHE9:
.L197:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA200:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE200-.LLSDACSB200
.LLSDACSB200:
	.uleb128 .LEHB7-.LFB200
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB8-.LFB200
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L196-.LFB200
	.uleb128 0
	.uleb128 .LEHB9-.LFB200
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
.LLSDACSE200:
	.section	.text._ZN7SQArray6CreateEP13SQSharedStatei,"axG",%progbits,_ZN7SQArray6CreateEP13SQSharedStatei,comdat
	.fnend
	.size	_ZN7SQArray6CreateEP13SQSharedStatei, .-_ZN7SQArray6CreateEP13SQSharedStatei
	.section	.text._ZN7SQArray3GetEiR11SQObjectPtr,"axG",%progbits,_ZN7SQArray3GetEiR11SQObjectPtr,comdat
	.align	2
	.weak	_ZN7SQArray3GetEiR11SQObjectPtr
	.thumb
	.thumb_func
	.type	_ZN7SQArray3GetEiR11SQObjectPtr, %function
_ZN7SQArray3GetEiR11SQObjectPtr:
	.fnstart
.LFB203:
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
	ldr	r3, [r7, #8]
	cmp	r3, #0
	blt	.L199
	ldr	r3, [r7, #12]
	adds	r3, r3, #24
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4sizeEv(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #8]
	cmp	r2, r3
	ble	.L199
	movs	r3, #1
	b	.L200
.L199:
	movs	r3, #0
.L200:
	cmp	r3, #0
	beq	.L201
	ldr	r3, [r7, #12]
	add	r2, r3, #24
	ldr	r3, [r7, #8]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI11SQObjectPtrEixEj(PLT)
	mov	r3, r0
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	ldr	r2, [r3]
	movs	r3, #0
	movt	r3, 2049
	cmp	r2, r3
	beq	.L202
	ldr	r2, [r7, #28]
	add	r3, r7, #20
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	b	.L203
.L202:
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #4]
	add	r3, r7, #20
	adds	r2, r2, #12
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
.L203:
	add	r3, r7, #20
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERK11tagSQObject(PLT)
	movs	r3, #1
	b	.L204
.L201:
	movs	r3, #0
.L204:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN7SQArray3GetEiR11SQObjectPtr, .-_ZN7SQArray3GetEiR11SQObjectPtr
	.section	.text._ZNK7SQArray4SizeEv,"axG",%progbits,_ZNK7SQArray4SizeEv,comdat
	.align	2
	.weak	_ZNK7SQArray4SizeEv
	.thumb
	.thumb_func
	.type	_ZNK7SQArray4SizeEv, %function
_ZNK7SQArray4SizeEv:
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
	.section	.text._ZN7SQArray6ResizeEi,"axG",%progbits,_ZN7SQArray6ResizeEi,comdat
	.align	2
	.weak	_ZN7SQArray6ResizeEi
	.thumb
	.thumb_func
	.type	_ZN7SQArray6ResizeEi, %function
_ZN7SQArray6ResizeEi:
	.fnstart
.LFB208:
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
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	mov	r2, r3
.LEHB10:
	bl	_ZN7SQArray6ResizeEiR11SQObjectPtr(PLT)
.LEHE10:
	add	r3, r7, #8
	mov	r0, r3
.LEHB11:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE11:
	b	.L210
.L209:
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB12:
	bl	__cxa_end_cleanup(PLT)
.LEHE12:
.L210:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA208:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE208-.LLSDACSB208
.LLSDACSB208:
	.uleb128 .LEHB10-.LFB208
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L209-.LFB208
	.uleb128 0
	.uleb128 .LEHB11-.LFB208
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB12-.LFB208
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
.LLSDACSE208:
	.section	.text._ZN7SQArray6ResizeEi,"axG",%progbits,_ZN7SQArray6ResizeEi,comdat
	.fnend
	.size	_ZN7SQArray6ResizeEi, .-_ZN7SQArray6ResizeEi
	.section	.text._ZN7SQArray6ResizeEiR11SQObjectPtr,"axG",%progbits,_ZN7SQArray6ResizeEiR11SQObjectPtr,comdat
	.align	2
	.weak	_ZN7SQArray6ResizeEiR11SQObjectPtr
	.thumb
	.thumb_func
	.type	_ZN7SQArray6ResizeEiR11SQObjectPtr, %function
_ZN7SQArray6ResizeEiR11SQObjectPtr:
	.fnstart
.LFB209:
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
	ldr	r3, [r7, #12]
	add	r2, r3, #24
	ldr	r3, [r7, #8]
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #4]
	bl	_ZN8sqvectorI11SQObjectPtrE6resizeEjRKS0_(PLT)
	ldr	r0, [r7, #12]
	bl	_ZN7SQArray14ShrinkIfNeededEv(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN7SQArray6ResizeEiR11SQObjectPtr, .-_ZN7SQArray6ResizeEiR11SQObjectPtr
	.section	.text._ZN7SQArray6AppendERK11tagSQObject,"axG",%progbits,_ZN7SQArray6AppendERK11tagSQObject,comdat
	.align	2
	.weak	_ZN7SQArray6AppendERK11tagSQObject
	.thumb
	.thumb_func
	.type	_ZN7SQArray6AppendERK11tagSQObject, %function
_ZN7SQArray6AppendERK11tagSQObject:
	.fnstart
.LFB211:
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
.LEHB13:
	bl	_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_(PLT)
.LEHE13:
	add	r3, r7, #8
	mov	r0, r3
.LEHB14:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE14:
	b	.L215
.L214:
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB15:
	bl	__cxa_end_cleanup(PLT)
.LEHE15:
.L215:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA211:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE211-.LLSDACSB211
.LLSDACSB211:
	.uleb128 .LEHB13-.LFB211
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L214-.LFB211
	.uleb128 0
	.uleb128 .LEHB14-.LFB211
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB15-.LFB211
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
.LLSDACSE211:
	.section	.text._ZN7SQArray6AppendERK11tagSQObject,"axG",%progbits,_ZN7SQArray6AppendERK11tagSQObject,comdat
	.fnend
	.size	_ZN7SQArray6AppendERK11tagSQObject, .-_ZN7SQArray6AppendERK11tagSQObject
	.section	.text._ZN7SQArray3TopEv,"axG",%progbits,_ZN7SQArray3TopEv,comdat
	.align	2
	.weak	_ZN7SQArray3TopEv
	.thumb
	.thumb_func
	.type	_ZN7SQArray3TopEv, %function
_ZN7SQArray3TopEv:
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
	adds	r3, r3, #24
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE3topEv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN7SQArray3TopEv, .-_ZN7SQArray3TopEv
	.section	.text._ZN7SQArray3PopEv,"axG",%progbits,_ZN7SQArray3PopEv,comdat
	.align	2
	.weak	_ZN7SQArray3PopEv
	.thumb
	.thumb_func
	.type	_ZN7SQArray3PopEv, %function
_ZN7SQArray3PopEv:
	.fnstart
.LFB213:
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
	bl	_ZN8sqvectorI11SQObjectPtrE8pop_backEv(PLT)
	ldr	r0, [r7, #4]
	bl	_ZN7SQArray14ShrinkIfNeededEv(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN7SQArray3PopEv, .-_ZN7SQArray3PopEv
	.section	.text._ZN7SQArray6InsertEiRK11tagSQObject,"axG",%progbits,_ZN7SQArray6InsertEiRK11tagSQObject,comdat
	.align	2
	.weak	_ZN7SQArray6InsertEiRK11tagSQObject
	.thumb
	.thumb_func
	.type	_ZN7SQArray6InsertEiRK11tagSQObject, %function
_ZN7SQArray6InsertEiRK11tagSQObject:
	.fnstart
.LFB214:
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
	ldr	r3, [r7, #8]
	cmp	r3, #0
	blt	.L220
	ldr	r3, [r7, #12]
	adds	r3, r3, #24
	mov	r0, r3
.LEHB16:
	bl	_ZNK8sqvectorI11SQObjectPtrE4sizeEv(PLT)
.LEHE16:
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bge	.L221
.L220:
	movs	r3, #1
	b	.L222
.L221:
	movs	r3, #0
.L222:
	cmp	r3, #0
	beq	.L223
	movs	r3, #0
	b	.L227
.L223:
	ldr	r3, [r7, #12]
	add	r5, r3, #24
	ldr	r4, [r7, #8]
	add	r3, r7, #16
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	_ZN11SQObjectPtrC1ERK11tagSQObject(PLT)
	add	r3, r7, #16
	mov	r0, r5
	mov	r1, r4
	mov	r2, r3
.LEHB17:
	bl	_ZN8sqvectorI11SQObjectPtrE6insertEjRKS0_(PLT)
.LEHE17:
	add	r3, r7, #16
	mov	r0, r3
.LEHB18:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE18:
	movs	r3, #1
	b	.L227
.L226:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB19:
	bl	__cxa_end_cleanup(PLT)
.LEHE19:
.L227:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA214:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE214-.LLSDACSB214
.LLSDACSB214:
	.uleb128 .LEHB16-.LFB214
	.uleb128 .LEHE16-.LEHB16
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB17-.LFB214
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L226-.LFB214
	.uleb128 0
	.uleb128 .LEHB18-.LFB214
	.uleb128 .LEHE18-.LEHB18
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB19-.LFB214
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
.LLSDACSE214:
	.section	.text._ZN7SQArray6InsertEiRK11tagSQObject,"axG",%progbits,_ZN7SQArray6InsertEiRK11tagSQObject,comdat
	.fnend
	.size	_ZN7SQArray6InsertEiRK11tagSQObject, .-_ZN7SQArray6InsertEiRK11tagSQObject
	.section	.text._ZN7SQArray14ShrinkIfNeededEv,"axG",%progbits,_ZN7SQArray14ShrinkIfNeededEv,comdat
	.align	2
	.weak	_ZN7SQArray14ShrinkIfNeededEv
	.thumb
	.thumb_func
	.type	_ZN7SQArray14ShrinkIfNeededEv, %function
_ZN7SQArray14ShrinkIfNeededEv:
	.fnstart
.LFB215:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #12
	sub	sp, sp, #12
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4sizeEv(PLT)
	mov	r4, r0
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	mov	r0, r3
	bl	_ZN8sqvectorI11SQObjectPtrE8capacityEv(PLT)
	mov	r3, r0
	lsrs	r3, r3, #2
	cmp	r4, r3
	ite	ls
	movls	r3, #1
	movhi	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L228
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	mov	r0, r3
	bl	_ZN8sqvectorI11SQObjectPtrE11shrinktofitEv(PLT)
.L228:
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZN7SQArray14ShrinkIfNeededEv, .-_ZN7SQArray14ShrinkIfNeededEv
	.section	.text._ZN7SQArray6RemoveEi,"axG",%progbits,_ZN7SQArray6RemoveEi,comdat
	.align	2
	.weak	_ZN7SQArray6RemoveEi
	.thumb
	.thumb_func
	.type	_ZN7SQArray6RemoveEi, %function
_ZN7SQArray6RemoveEi:
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
	ldr	r3, [r7]
	cmp	r3, #0
	blt	.L231
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4sizeEv(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7]
	cmp	r2, r3
	bgt	.L232
.L231:
	movs	r3, #1
	b	.L233
.L232:
	movs	r3, #0
.L233:
	cmp	r3, #0
	beq	.L234
	movs	r3, #0
	b	.L235
.L234:
	ldr	r3, [r7, #4]
	add	r2, r3, #24
	ldr	r3, [r7]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN8sqvectorI11SQObjectPtrE6removeEj(PLT)
	ldr	r0, [r7, #4]
	bl	_ZN7SQArray14ShrinkIfNeededEv(PLT)
	movs	r3, #1
.L235:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN7SQArray6RemoveEi, .-_ZN7SQArray6RemoveEi
	.section	.text._ZN9SQClosureC2EP13SQSharedStateP15SQFunctionProto,"axG",%progbits,_ZN9SQClosureC5EP13SQSharedStateP15SQFunctionProto,comdat
	.align	2
	.weak	_ZN9SQClosureC2EP13SQSharedStateP15SQFunctionProto
	.thumb
	.thumb_func
	.type	_ZN9SQClosureC2EP13SQSharedStateP15SQFunctionProto, %function
_ZN9SQClosureC2EP13SQSharedStateP15SQFunctionProto:
	.fnstart
.LFB244:
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
	ldr	r4, .L242
.LPIC35:
	add	r4, pc
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	_ZN13SQCollectableC2Ev(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, .L242+4
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
.LEHB20:
	bl	_ZN13SQCollectable10AddToChainEPPS_S0_(PLT)
.LEHE20:
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #12]
	b	.L241
.L240:
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	_ZN13SQCollectableD2Ev(PLT)
.LEHB21:
	bl	__cxa_end_cleanup(PLT)
.LEHE21:
.L241:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L243:
	.align	2
.L242:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC35+4)
	.word	_ZTV9SQClosure(GOT)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA244:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE244-.LLSDACSB244
.LLSDACSB244:
	.uleb128 .LEHB20-.LFB244
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L240-.LFB244
	.uleb128 0
	.uleb128 .LEHB21-.LFB244
	.uleb128 .LEHE21-.LEHB21
	.uleb128 0
	.uleb128 0
.LLSDACSE244:
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
.LFB246:
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
.LEHB22:
	bl	_Z12sq_vm_mallocj(PLT)
.LEHE22:
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r5, [r7, #8]
	movs	r0, #44
	mov	r1, r5
	bl	_ZnwjPv(PLT)
	mov	r4, r0
	cmp	r4, #0
	beq	.L246
	mov	r0, r4
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
.LEHB23:
	bl	_ZN9SQClosureC1EP13SQSharedStateP15SQFunctionProto(PLT)
.LEHE23:
.L246:
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
	b	.L247
.L250:
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
	beq	.L249
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
.L249:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L247:
	ldr	r3, [r7]
	ldr	r2, [r3, #92]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bgt	.L250
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L251
.L254:
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
	beq	.L253
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
.L253:
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L251:
	ldr	r3, [r7]
	ldr	r2, [r3, #100]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bgt	.L254
	ldr	r3, [r7, #8]
	b	.L258
.L257:
	mov	r0, r4
	mov	r1, r5
	bl	_ZdlPvS_(PLT)
.LEHB24:
	bl	__cxa_end_cleanup(PLT)
.LEHE24:
.L258:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA246:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE246-.LLSDACSB246
.LLSDACSB246:
	.uleb128 .LEHB22-.LFB246
	.uleb128 .LEHE22-.LEHB22
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB23-.LFB246
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L257-.LFB246
	.uleb128 0
	.uleb128 .LEHB24-.LFB246
	.uleb128 .LEHE24-.LEHB24
	.uleb128 0
	.uleb128 0
.LLSDACSE246:
	.section	.text._ZN9SQClosure6CreateEP13SQSharedStateP15SQFunctionProto,"axG",%progbits,_ZN9SQClosure6CreateEP13SQSharedStateP15SQFunctionProto,comdat
	.fnend
	.size	_ZN9SQClosure6CreateEP13SQSharedStateP15SQFunctionProto, .-_ZN9SQClosure6CreateEP13SQSharedStateP15SQFunctionProto
	.section	.text._ZN9SQClosure5CloneEv,"axG",%progbits,_ZN9SQClosure5CloneEv,comdat
	.align	2
	.weak	_ZN9SQClosure5CloneEv
	.thumb
	.thumb_func
	.type	_ZN9SQClosure5CloneEv, %function
_ZN9SQClosure5CloneEv:
	.fnstart
.LFB248:
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
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	mov	r0, r3
	ldr	r1, [r7, #12]
	bl	_ZN9SQClosure6CreateEP13SQSharedStateP15SQFunctionProto(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #8]
	str	r2, [r3, #24]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L260
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #24]
	ldr	r2, [r3, #4]
	adds	r2, r2, #1
	str	r2, [r3, #4]
.L260:
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L261
.L262:
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #3
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #36]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #3
	add	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
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
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #16]
	lsls	r3, r3, #3
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #16]
	lsls	r3, r3, #3
	add	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L263:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #100]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bgt	.L264
	ldr	r3, [r7, #8]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN9SQClosure5CloneEv, .-_ZN9SQClosure5CloneEv
	.section	.text._ZN15SQNativeClosureC2EP13SQSharedStatePFiP4SQVME,"axG",%progbits,_ZN15SQNativeClosureC5EP13SQSharedStatePFiP4SQVME,comdat
	.align	2
	.weak	_ZN15SQNativeClosureC2EP13SQSharedStatePFiP4SQVME
	.thumb
	.thumb_func
	.type	_ZN15SQNativeClosureC2EP13SQSharedStatePFiP4SQVME, %function
_ZN15SQNativeClosureC2EP13SQSharedStatePFiP4SQVME:
	.fnstart
.LFB275:
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
	ldr	r4, .L274
.LPIC36:
	add	r4, pc
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	_ZN13SQCollectableC2Ev(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, .L274+4
	ldr	r2, [r4, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #28
	mov	r0, r3
.LEHB25:
	bl	_ZN8sqvectorIiEC1Ev(PLT)
.LEHE25:
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
.LEHB26:
	bl	_ZN13SQCollectable10AddToChainEPPS_S0_(PLT)
.LEHE26:
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #48]
	ldr	r3, [r7, #12]
	b	.L273
.L272:
	ldr	r3, [r7, #12]
	adds	r3, r3, #56
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #28
	mov	r0, r3
	bl	_ZN8sqvectorIiED1Ev(PLT)
	b	.L270
.L271:
.L270:
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	_ZN13SQCollectableD2Ev(PLT)
.LEHB27:
	bl	__cxa_end_cleanup(PLT)
.LEHE27:
.L273:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L275:
	.align	2
.L274:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC36+4)
	.word	_ZTV15SQNativeClosure(GOT)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA275:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE275-.LLSDACSB275
.LLSDACSB275:
	.uleb128 .LEHB25-.LFB275
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L271-.LFB275
	.uleb128 0
	.uleb128 .LEHB26-.LFB275
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L272-.LFB275
	.uleb128 0
	.uleb128 .LEHB27-.LFB275
	.uleb128 .LEHE27-.LEHB27
	.uleb128 0
	.uleb128 0
.LLSDACSE275:
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
.LFB277:
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
.LEHB28:
	bl	_Z12sq_vm_mallocj(PLT)
.LEHE28:
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r5, [r7, #20]
	movs	r0, #64
	mov	r1, r5
	bl	_ZnwjPv(PLT)
	mov	r4, r0
	cmp	r4, #0
	beq	.L278
	mov	r0, r4
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #8]
.LEHB29:
	bl	_ZN15SQNativeClosureC1EP13SQSharedStatePFiP4SQVME(PLT)
.LEHE29:
.L278:
	ldr	r3, [r7, #20]
	add	r2, r3, #64
	ldr	r3, [r7, #20]
	str	r2, [r3, #40]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #20]
	str	r2, [r3, #44]
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L279
.L282:
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
	beq	.L281
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
.L281:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L279:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #44]
	mov	r2, r3
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bgt	.L282
	ldr	r3, [r7, #20]
	b	.L286
.L285:
	mov	r0, r4
	mov	r1, r5
	bl	_ZdlPvS_(PLT)
.LEHB30:
	bl	__cxa_end_cleanup(PLT)
.LEHE30:
.L286:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA277:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE277-.LLSDACSB277
.LLSDACSB277:
	.uleb128 .LEHB28-.LFB277
	.uleb128 .LEHE28-.LEHB28
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB29-.LFB277
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L285-.LFB277
	.uleb128 0
	.uleb128 .LEHB30-.LFB277
	.uleb128 .LEHE30-.LEHB30
	.uleb128 0
	.uleb128 0
.LLSDACSE277:
	.section	.text._ZN15SQNativeClosure6CreateEP13SQSharedStatePFiP4SQVMEi,"axG",%progbits,_ZN15SQNativeClosure6CreateEP13SQSharedStatePFiP4SQVMEi,comdat
	.fnend
	.size	_ZN15SQNativeClosure6CreateEP13SQSharedStatePFiP4SQVMEi, .-_ZN15SQNativeClosure6CreateEP13SQSharedStatePFiP4SQVMEi
	.section	.text._ZN15SQNativeClosure5CloneEv,"axG",%progbits,_ZN15SQNativeClosure5CloneEv,comdat
	.align	2
	.weak	_ZN15SQNativeClosure5CloneEv
	.thumb
	.thumb_func
	.type	_ZN15SQNativeClosure5CloneEv, %function
_ZN15SQNativeClosure5CloneEv:
	.fnstart
.LFB278:
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
	ldr	r1, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #52]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	_ZN15SQNativeClosure6CreateEP13SQSharedStatePFiP4SQVMEi(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #48]
	ldr	r3, [r7, #8]
	str	r2, [r3, #48]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L288
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #48]
	ldr	r2, [r3, #4]
	adds	r2, r2, #1
	str	r2, [r3, #4]
.L288:
	ldr	r3, [r7, #8]
	add	r2, r3, #56
	ldr	r3, [r7, #4]
	adds	r3, r3, #56
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L289
.L290:
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #3
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #3
	add	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L289:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	mov	r2, r3
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bgt	.L290
	ldr	r3, [r7, #8]
	add	r2, r3, #28
	ldr	r3, [r7, #4]
	adds	r3, r3, #28
	mov	r0, r2
	mov	r1, r3
	bl	_ZN8sqvectorIiE4copyERKS0_(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #8]
	str	r2, [r3, #24]
	ldr	r3, [r7, #8]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN15SQNativeClosure5CloneEv, .-_ZN15SQNativeClosure5CloneEv
	.section	.text._ZN11SQDelegableC2Ev,"axG",%progbits,_ZN11SQDelegableC5Ev,comdat
	.align	2
	.weak	_ZN11SQDelegableC2Ev
	.thumb
	.thumb_func
	.type	_ZN11SQDelegableC2Ev, %function
_ZN11SQDelegableC2Ev:
	.fnstart
.LFB288:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r4, .L295
.LPIC37:
	add	r4, pc
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN13SQCollectableC2Ev(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, .L295+4
	ldr	r2, [r4, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L296:
	.align	2
.L295:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC37+4)
	.word	_ZTV11SQDelegable(GOT)
	.cantunwind
	.fnend
	.size	_ZN11SQDelegableC2Ev, .-_ZN11SQDelegableC2Ev
	.weak	_ZN11SQDelegableC1Ev
	.thumb_set _ZN11SQDelegableC1Ev,_ZN11SQDelegableC2Ev
	.section	.text._ZN10SQUserDataC2EP13SQSharedState,"axG",%progbits,_ZN10SQUserDataC5EP13SQSharedState,comdat
	.align	2
	.weak	_ZN10SQUserDataC2EP13SQSharedState
	.thumb
	.thumb_func
	.type	_ZN10SQUserDataC2EP13SQSharedState, %function
_ZN10SQUserDataC2EP13SQSharedState:
	.fnstart
.LFB290:
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
	ldr	r4, .L303
.LPIC38:
	add	r4, pc
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN11SQDelegableC2Ev(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, .L303+4
	ldr	r2, [r4, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #32]
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
.LEHB31:
	bl	_ZN13SQCollectable10AddToChainEPPS_S0_(PLT)
.LEHE31:
	ldr	r3, [r7, #4]
	b	.L302
.L301:
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN11SQDelegableD2Ev(PLT)
.LEHB32:
	bl	__cxa_end_cleanup(PLT)
.LEHE32:
.L302:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L304:
	.align	2
.L303:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC38+4)
	.word	_ZTV10SQUserData(GOT)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA290:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE290-.LLSDACSB290
.LLSDACSB290:
	.uleb128 .LEHB31-.LFB290
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L301-.LFB290
	.uleb128 0
	.uleb128 .LEHB32-.LFB290
	.uleb128 .LEHE32-.LEHB32
	.uleb128 0
	.uleb128 0
.LLSDACSE290:
	.section	.text._ZN10SQUserDataC2EP13SQSharedState,"axG",%progbits,_ZN10SQUserDataC5EP13SQSharedState,comdat
	.fnend
	.size	_ZN10SQUserDataC2EP13SQSharedState, .-_ZN10SQUserDataC2EP13SQSharedState
	.weak	_ZN10SQUserDataC1EP13SQSharedState
	.thumb_set _ZN10SQUserDataC1EP13SQSharedState,_ZN10SQUserDataC2EP13SQSharedState
	.section	.text._ZN10SQUserData6CreateEP13SQSharedStatei,"axG",%progbits,_ZN10SQUserData6CreateEP13SQSharedStatei,comdat
	.align	2
	.weak	_ZN10SQUserData6CreateEP13SQSharedStatei
	.thumb
	.thumb_func
	.type	_ZN10SQUserData6CreateEP13SQSharedStatei, %function
_ZN10SQUserData6CreateEP13SQSharedStatei:
	.fnstart
.LFB296:
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
	movs	r3, #43
	bic	r2, r3, #3
	ldr	r3, [r7]
	add	r3, r3, r2
	mov	r0, r3
.LEHB33:
	bl	_Z12sq_vm_mallocj(PLT)
.LEHE33:
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r5, [r7, #12]
	movs	r0, #40
	mov	r1, r5
	bl	_ZnwjPv(PLT)
	mov	r4, r0
	cmp	r4, #0
	beq	.L307
	mov	r0, r4
	ldr	r1, [r7, #4]
.LEHB34:
	bl	_ZN10SQUserDataC1EP13SQSharedState(PLT)
.LEHE34:
.L307:
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	str	r2, [r3, #28]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #36]
	ldr	r3, [r7, #12]
	b	.L311
.L310:
	mov	r0, r4
	mov	r1, r5
	bl	_ZdlPvS_(PLT)
.LEHB35:
	bl	__cxa_end_cleanup(PLT)
.LEHE35:
.L311:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA296:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE296-.LLSDACSB296
.LLSDACSB296:
	.uleb128 .LEHB33-.LFB296
	.uleb128 .LEHE33-.LEHB33
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB34-.LFB296
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L310-.LFB296
	.uleb128 0
	.uleb128 .LEHB35-.LFB296
	.uleb128 .LEHE35-.LEHB35
	.uleb128 0
	.uleb128 0
.LLSDACSE296:
	.section	.text._ZN10SQUserData6CreateEP13SQSharedStatei,"axG",%progbits,_ZN10SQUserData6CreateEP13SQSharedStatei,comdat
	.fnend
	.size	_ZN10SQUserData6CreateEP13SQSharedStatei, .-_ZN10SQUserData6CreateEP13SQSharedStatei
	.section	.text._ZN7SQClass6CreateEP13SQSharedStatePS_,"axG",%progbits,_ZN7SQClass6CreateEP13SQSharedStatePS_,comdat
	.align	2
	.weak	_ZN7SQClass6CreateEP13SQSharedStatePS_
	.thumb
	.thumb_func
	.type	_ZN7SQClass6CreateEP13SQSharedStatePS_, %function
_ZN7SQClass6CreateEP13SQSharedStatePS_:
	.fnstart
.LFB308:
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
	movs	r0, #228
.LEHB36:
	bl	_Z12sq_vm_mallocj(PLT)
.LEHE36:
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r5, [r7, #12]
	movs	r0, #228
	mov	r1, r5
	bl	_ZnwjPv(PLT)
	mov	r4, r0
	cmp	r4, #0
	beq	.L314
	mov	r0, r4
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
.LEHB37:
	bl	_ZN7SQClassC1EP13SQSharedStatePS_(PLT)
.LEHE37:
.L314:
	ldr	r3, [r7, #12]
	b	.L318
.L317:
	mov	r0, r4
	mov	r1, r5
	bl	_ZdlPvS_(PLT)
.LEHB38:
	bl	__cxa_end_cleanup(PLT)
.LEHE38:
.L318:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA308:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE308-.LLSDACSB308
.LLSDACSB308:
	.uleb128 .LEHB36-.LFB308
	.uleb128 .LEHE36-.LEHB36
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB37-.LFB308
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L317-.LFB308
	.uleb128 0
	.uleb128 .LEHB38-.LFB308
	.uleb128 .LEHE38-.LEHB38
	.uleb128 0
	.uleb128 0
.LLSDACSE308:
	.section	.text._ZN7SQClass6CreateEP13SQSharedStatePS_,"axG",%progbits,_ZN7SQClass6CreateEP13SQSharedStatePS_,comdat
	.fnend
	.size	_ZN7SQClass6CreateEP13SQSharedStatePS_, .-_ZN7SQClass6CreateEP13SQSharedStatePS_
	.section	.text._ZN7SQClass3GetERK11SQObjectPtrRS0_,"axG",%progbits,_ZN7SQClass3GetERK11SQObjectPtrRS0_,comdat
	.align	2
	.weak	_ZN7SQClass3GetERK11SQObjectPtrRS0_
	.thumb
	.thumb_func
	.type	_ZN7SQClass3GetERK11SQObjectPtrRS0_, %function
_ZN7SQClass3GetERK11SQObjectPtrRS0_:
	.fnstart
.LFB309:
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
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	_ZN7SQTable3GetERK11SQObjectPtrRS0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L320
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	and	r3, r3, #33554432
	cmp	r3, #0
	beq	.L321
	ldr	r3, [r7, #12]
	add	r2, r3, #32
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	bic	r3, r3, #-16777216
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI13SQClassMemberEixEj(PLT)
	mov	r3, r0
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	ldr	r2, [r3]
	movs	r3, #0
	movt	r3, 2049
	cmp	r2, r3
	beq	.L322
	ldr	r2, [r7, #28]
	add	r3, r7, #20
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	b	.L323
.L322:
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #4]
	add	r3, r7, #20
	adds	r2, r2, #12
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
.L323:
	add	r3, r7, #20
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERK11tagSQObject(PLT)
	b	.L324
.L321:
	ldr	r3, [r7, #12]
	add	r2, r3, #44
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	bic	r3, r3, #-16777216
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI13SQClassMemberEixEj(PLT)
	mov	r3, r0
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
.L324:
	movs	r3, #1
	b	.L325
.L320:
	movs	r3, #0
.L325:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN7SQClass3GetERK11SQObjectPtrRS0_, .-_ZN7SQClass3GetERK11SQObjectPtrRS0_
	.section	.text._ZN10SQInstance3GetERK11SQObjectPtrRS0_,"axG",%progbits,_ZN10SQInstance3GetERK11SQObjectPtrRS0_,comdat
	.align	2
	.weak	_ZN10SQInstance3GetERK11SQObjectPtrRS0_
	.thumb
	.thumb_func
	.type	_ZN10SQInstance3GetERK11SQObjectPtrRS0_, %function
_ZN10SQInstance3GetERK11SQObjectPtrRS0_:
	.fnstart
.LFB316:
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
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	ldr	r3, [r3, #24]
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	_ZN7SQTable3GetERK11SQObjectPtrRS0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L327
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	and	r3, r3, #33554432
	cmp	r3, #0
	beq	.L328
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	bic	r3, r3, #-16777216
	adds	r3, r3, #5
	lsls	r3, r3, #3
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	ldr	r2, [r3]
	movs	r3, #0
	movt	r3, 2049
	cmp	r2, r3
	beq	.L329
	ldr	r2, [r7, #28]
	add	r3, r7, #20
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	b	.L330
.L329:
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #4]
	add	r3, r7, #20
	adds	r2, r2, #12
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
.L330:
	add	r3, r7, #20
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERK11tagSQObject(PLT)
	b	.L331
.L328:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	add	r2, r3, #44
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	bic	r3, r3, #-16777216
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI13SQClassMemberEixEj(PLT)
	mov	r3, r0
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
.L331:
	movs	r3, #1
	b	.L332
.L327:
	movs	r3, #0
.L332:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN10SQInstance3GetERK11SQObjectPtrRS0_, .-_ZN10SQInstance3GetERK11SQObjectPtrRS0_
	.section	.text._ZN10SQInstance3SetERK11SQObjectPtrS2_,"axG",%progbits,_ZN10SQInstance3SetERK11SQObjectPtrS2_,comdat
	.align	2
	.weak	_ZN10SQInstance3SetERK11SQObjectPtrS2_
	.thumb
	.thumb_func
	.type	_ZN10SQInstance3SetERK11SQObjectPtrS2_, %function
_ZN10SQInstance3SetERK11SQObjectPtrS2_:
	.fnstart
.LFB317:
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
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	ldr	r2, [r3, #24]
	add	r3, r7, #16
	mov	r0, r2
	ldr	r1, [r7, #8]
	mov	r2, r3
.LEHB39:
	bl	_ZN7SQTable3GetERK11SQObjectPtrRS0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L334
	ldr	r3, [r7, #20]
	and	r3, r3, #33554432
	cmp	r3, #0
	beq	.L334
	movs	r3, #1
	b	.L335
.L334:
	movs	r3, #0
.L335:
	cmp	r3, #0
	beq	.L336
	ldr	r3, [r7, #20]
	bic	r3, r3, #-16777216
	adds	r3, r3, #5
	lsls	r3, r3, #3
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	adds	r3, r3, #4
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	_ZN11SQObjectPtraSERKS_(PLT)
.LEHE39:
	movs	r4, #1
	b	.L337
.L336:
	movs	r4, #0
.L337:
	add	r3, r7, #16
	mov	r0, r3
.LEHB40:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE40:
	mov	r3, r4
	b	.L341
.L340:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB41:
	bl	__cxa_end_cleanup(PLT)
.LEHE41:
.L341:
	mov	r0, r3
	adds	r7, r7, #28
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
	.uleb128 .LEHB39-.LFB317
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L340-.LFB317
	.uleb128 0
	.uleb128 .LEHB40-.LFB317
	.uleb128 .LEHE40-.LEHB40
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB41-.LFB317
	.uleb128 .LEHE41-.LEHB41
	.uleb128 0
	.uleb128 0
.LLSDACSE317:
	.section	.text._ZN10SQInstance3SetERK11SQObjectPtrS2_,"axG",%progbits,_ZN10SQInstance3SetERK11SQObjectPtrS2_,comdat
	.fnend
	.size	_ZN10SQInstance3SetERK11SQObjectPtrS2_, .-_ZN10SQInstance3SetERK11SQObjectPtrS2_
	.section	.rodata
	.align	2
.LC2:
	.ascii	"wrong argument type, expected '%s' got '%.50s'\000"
	.section	.text._Z18sq_aux_gettypedargP4SQVMi15tagSQObjectTypePP11SQObjectPtr,"ax",%progbits
	.align	2
	.global	_Z18sq_aux_gettypedargP4SQVMi15tagSQObjectTypePP11SQObjectPtr
	.thumb
	.thumb_func
	.type	_Z18sq_aux_gettypedargP4SQVMi15tagSQObjectTypePP11SQObjectPtr, %function
_Z18sq_aux_gettypedargP4SQVMi15tagSQObjectTypePP11SQObjectPtr:
	.fnstart
.LFB320:
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
	ldr	r1, [r7, #8]
.LEHB42:
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r2, r0
	ldr	r3, [r7]
	str	r2, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	beq	.L343
	ldr	r3, [r7]
	ldr	r3, [r3]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZN4SQVM11PrintObjValERK11SQObjectPtr(PLT)
.LEHE42:
	mov	r3, r0
	add	r2, r7, #16
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	ldr	r0, [r7, #4]
.LEHB43:
	bl	_Z11IdType2Name15tagSQObjectType(PLT)
	mov	r2, r0
	ldr	r3, [r7, #20]
	adds	r3, r3, #28
	ldr	r0, [r7, #12]
	ldr	r1, .L348
.LPIC39:
	add	r1, pc
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
.LEHE43:
	movs	r4, #0
	add	r3, r7, #16
	mov	r0, r3
.LEHB44:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE44:
	b	.L344
.L343:
	movs	r4, #1
.L344:
	mov	r3, r4
	b	.L347
.L346:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB45:
	bl	__cxa_end_cleanup(PLT)
.LEHE45:
.L347:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L349:
	.align	2
.L348:
	.word	.LC2-(.LPIC39+4)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA320:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE320-.LLSDACSB320
.LLSDACSB320:
	.uleb128 .LEHB42-.LFB320
	.uleb128 .LEHE42-.LEHB42
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB43-.LFB320
	.uleb128 .LEHE43-.LEHB43
	.uleb128 .L346-.LFB320
	.uleb128 0
	.uleb128 .LEHB44-.LFB320
	.uleb128 .LEHE44-.LEHB44
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB45-.LFB320
	.uleb128 .LEHE45-.LEHB45
	.uleb128 0
	.uleb128 0
.LLSDACSE320:
	.section	.text._Z18sq_aux_gettypedargP4SQVMi15tagSQObjectTypePP11SQObjectPtr
	.fnend
	.size	_Z18sq_aux_gettypedargP4SQVMi15tagSQObjectTypePP11SQObjectPtr, .-_Z18sq_aux_gettypedargP4SQVMi15tagSQObjectTypePP11SQObjectPtr
	.section	.rodata
	.align	2
.LC3:
	.ascii	"unexpected type %s\000"
	.section	.text._Z18sq_aux_invalidtypeP4SQVM15tagSQObjectType,"ax",%progbits
	.align	2
	.global	_Z18sq_aux_invalidtypeP4SQVM15tagSQObjectType
	.thumb
	.thumb_func
	.type	_Z18sq_aux_invalidtypeP4SQVM15tagSQObjectType, %function
_Z18sq_aux_invalidtypeP4SQVM15tagSQObjectType:
	.fnstart
.LFB321:
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
	ldr	r3, [r3, #140]
	mov	r0, r3
	movs	r1, #100
	bl	_ZN13SQSharedState13GetScratchPadEi(PLT)
	mov	r4, r0
	ldr	r0, [r7]
	bl	_Z11IdType2Name15tagSQObjectType(PLT)
	mov	r3, r0
	mov	r0, r4
	ldr	r2, .L352
.LPIC40:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	bl	sprintf(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #140]
	mov	r0, r3
	mov	r1, #-1
	bl	_ZN13SQSharedState13GetScratchPadEi(PLT)
	mov	r3, r0
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L353:
	.align	2
.L352:
	.word	.LC3-(.LPIC40+4)
	.fnend
	.size	_Z18sq_aux_invalidtypeP4SQVM15tagSQObjectType, .-_Z18sq_aux_invalidtypeP4SQVM15tagSQObjectType
	.section	.text.sq_open,"ax",%progbits
	.align	2
	.global	sq_open
	.thumb
	.thumb_func
	.type	sq_open, %function
sq_open:
	.fnstart
.LFB322:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r0, #184
.LEHB46:
	bl	_Z12sq_vm_mallocj(PLT)
.LEHE46:
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r5, [r7, #12]
	movs	r0, #184
	mov	r1, r5
	bl	_ZnwjPv(PLT)
	mov	r4, r0
	cmp	r4, #0
	beq	.L356
	mov	r0, r4
.LEHB47:
	bl	_ZN13SQSharedStateC1Ev(PLT)
.LEHE47:
.L356:
	ldr	r0, [r7, #12]
.LEHB48:
	bl	_ZN13SQSharedState4InitEv(PLT)
	movs	r0, #168
	bl	_Z12sq_vm_mallocj(PLT)
.LEHE48:
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r5, [r7, #8]
	movs	r0, #168
	mov	r1, r5
	bl	_ZnwjPv(PLT)
	mov	r4, r0
	cmp	r4, #0
	beq	.L358
	mov	r0, r4
	ldr	r1, [r7, #12]
.LEHB49:
	bl	_ZN4SQVMC1EP13SQSharedState(PLT)
.LEHE49:
.L358:
	ldr	r3, [r7, #12]
	adds	r3, r3, #72
	mov	r0, r3
	ldr	r1, [r7, #8]
.LEHB50:
	bl	_ZN11SQObjectPtraSEP4SQVM(PLT)
	ldr	r0, [r7, #8]
	movs	r1, #0
	ldr	r2, [r7, #4]
	bl	_ZN4SQVM4InitEPS_i(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L359
	ldr	r3, [r7, #8]
	b	.L365
.L359:
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r0, [r7, #8]
	blx	r3
	ldr	r0, [r7, #8]
	movs	r1, #168
	bl	_Z10sq_vm_freePvj(PLT)
	movs	r3, #0
	b	.L365
.L363:
	mov	r0, r4
	mov	r1, r5
	bl	_ZdlPvS_(PLT)
	bl	__cxa_end_cleanup(PLT)
.L364:
	mov	r0, r4
	mov	r1, r5
	bl	_ZdlPvS_(PLT)
	bl	__cxa_end_cleanup(PLT)
.LEHE50:
.L365:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA322:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE322-.LLSDACSB322
.LLSDACSB322:
	.uleb128 .LEHB46-.LFB322
	.uleb128 .LEHE46-.LEHB46
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB47-.LFB322
	.uleb128 .LEHE47-.LEHB47
	.uleb128 .L363-.LFB322
	.uleb128 0
	.uleb128 .LEHB48-.LFB322
	.uleb128 .LEHE48-.LEHB48
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB49-.LFB322
	.uleb128 .LEHE49-.LEHB49
	.uleb128 .L364-.LFB322
	.uleb128 0
	.uleb128 .LEHB50-.LFB322
	.uleb128 .LEHE50-.LEHB50
	.uleb128 0
	.uleb128 0
.LLSDACSE322:
	.section	.text.sq_open
	.fnend
	.size	sq_open, .-sq_open
	.section	.text.sq_newthread,"ax",%progbits
	.align	2
	.global	sq_newthread
	.thumb
	.thumb_func
	.type	sq_newthread, %function
sq_newthread:
	.fnstart
.LFB323:
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
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #140]
	str	r3, [r7, #20]
	movs	r0, #168
.LEHB51:
	bl	_Z12sq_vm_mallocj(PLT)
.LEHE51:
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r5, [r7, #16]
	movs	r0, #168
	mov	r1, r5
	bl	_ZnwjPv(PLT)
	mov	r4, r0
	cmp	r4, #0
	beq	.L368
	mov	r0, r4
	ldr	r1, [r7, #20]
.LEHB52:
	bl	_ZN4SQVMC1EP13SQSharedState(PLT)
.LEHE52:
.L368:
	ldr	r0, [r7, #16]
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
.LEHB53:
	bl	_ZN4SQVM4InitEPS_i(PLT)
.LEHE53:
	mov	r3, r0
	cmp	r3, #0
	beq	.L369
	add	r3, r7, #8
	mov	r0, r3
	ldr	r1, [r7, #16]
	bl	_ZN11SQObjectPtrC1EP4SQVM(PLT)
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	mov	r1, r3
.LEHB54:
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE54:
	add	r3, r7, #8
	mov	r0, r3
.LEHB55:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	ldr	r3, [r7, #16]
	b	.L375
.L369:
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r0, [r7, #16]
	blx	r3
	ldr	r0, [r7, #16]
	movs	r1, #168
	bl	_Z10sq_vm_freePvj(PLT)
	movs	r3, #0
	b	.L375
.L373:
	mov	r0, r4
	mov	r1, r5
	bl	_ZdlPvS_(PLT)
	bl	__cxa_end_cleanup(PLT)
.LEHE55:
.L374:
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB56:
	bl	__cxa_end_cleanup(PLT)
.LEHE56:
.L375:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA323:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE323-.LLSDACSB323
.LLSDACSB323:
	.uleb128 .LEHB51-.LFB323
	.uleb128 .LEHE51-.LEHB51
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB52-.LFB323
	.uleb128 .LEHE52-.LEHB52
	.uleb128 .L373-.LFB323
	.uleb128 0
	.uleb128 .LEHB53-.LFB323
	.uleb128 .LEHE53-.LEHB53
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB54-.LFB323
	.uleb128 .LEHE54-.LEHB54
	.uleb128 .L374-.LFB323
	.uleb128 0
	.uleb128 .LEHB55-.LFB323
	.uleb128 .LEHE55-.LEHB55
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB56-.LFB323
	.uleb128 .LEHE56-.LEHB56
	.uleb128 0
	.uleb128 0
.LLSDACSE323:
	.section	.text.sq_newthread
	.fnend
	.size	sq_newthread, .-sq_newthread
	.section	.text.sq_getvmstate,"ax",%progbits
	.align	2
	.global	sq_getvmstate
	.thumb
	.thumb_func
	.type	sq_getvmstate, %function
sq_getvmstate:
	.fnstart
.LFB324:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #152]
	cmp	r3, #0
	beq	.L377
	movs	r3, #2
	b	.L378
.L377:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	cmp	r3, #0
	beq	.L379
	movs	r3, #1
	b	.L378
.L379:
	movs	r3, #0
.L378:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	sq_getvmstate, .-sq_getvmstate
	.section	.text.sq_seterrorhandler,"ax",%progbits
	.align	2
	.global	sq_seterrorhandler
	.thumb
	.thumb_func
	.type	sq_seterrorhandler, %function
sq_seterrorhandler:
	.fnstart
.LFB325:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	mov	r1, #-1
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r2, r0
	add	r3, r7, #8
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r2, [r7, #8]
	mov	r3, #256
	movt	r3, 2048
	cmp	r2, r3
	beq	.L381
	ldr	r2, [r7, #8]
	mov	r3, #512
	movt	r3, 2048
	cmp	r2, r3
	beq	.L381
	ldr	r2, [r7, #8]
	movs	r3, #1
	movt	r3, 256
	cmp	r2, r3
	bne	.L380
.L381:
	ldr	r3, [r7, #4]
	add	r2, r3, #64
	add	r3, r7, #8
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERK11tagSQObject(PLT)
	ldr	r0, [r7, #4]
	bl	_ZN4SQVM3PopEv(PLT)
.L380:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	sq_seterrorhandler, .-sq_seterrorhandler
	.section	.text.sq_setnativedebughook,"ax",%progbits
	.align	2
	.global	sq_setnativedebughook
	.thumb
	.thumb_func
	.type	sq_setnativedebughook, %function
sq_setnativedebughook:
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
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #76]
	ldr	r3, [r7, #4]
	adds	r3, r3, #80
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
	ldr	r3, [r7]
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3, #72]
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	sq_setnativedebughook, .-sq_setnativedebughook
	.section	.text.sq_setdebughook,"ax",%progbits
	.align	2
	.global	sq_setdebughook
	.thumb
	.thumb_func
	.type	sq_setdebughook, %function
sq_setdebughook:
	.fnstart
.LFB327:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	mov	r1, #-1
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r2, r0
	add	r3, r7, #8
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r2, [r7, #8]
	mov	r3, #256
	movt	r3, 2048
	cmp	r2, r3
	beq	.L385
	ldr	r2, [r7, #8]
	mov	r3, #512
	movt	r3, 2048
	cmp	r2, r3
	beq	.L385
	ldr	r2, [r7, #8]
	movs	r3, #1
	movt	r3, 256
	cmp	r2, r3
	bne	.L384
.L385:
	ldr	r3, [r7, #4]
	add	r2, r3, #80
	add	r3, r7, #8
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERK11tagSQObject(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #76]
	ldr	r2, [r7, #8]
	movs	r3, #1
	movt	r3, 256
	cmp	r2, r3
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3, #72]
	ldr	r0, [r7, #4]
	bl	_ZN4SQVM3PopEv(PLT)
.L384:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	sq_setdebughook, .-sq_setdebughook
	.section	.text.sq_close,"ax",%progbits
	.align	2
	.global	sq_close
	.thumb
	.thumb_func
	.type	sq_close, %function
sq_close:
	.fnstart
.LFB328:
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
	ldr	r3, [r3, #140]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #76]
	ldr	r3, [r3]
	adds	r3, r3, #20
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #76]
	mov	r0, r2
	blx	r3
	ldr	r0, [r7, #12]
	bl	_ZN13SQSharedStateD1Ev(PLT)
	ldr	r0, [r7, #12]
	movs	r1, #184
	bl	_Z10sq_vm_freePvj(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	sq_close, .-sq_close
	.section	.text.sq_getversion,"ax",%progbits
	.align	2
	.global	sq_getversion
	.thumb
	.thumb_func
	.type	sq_getversion, %function
sq_getversion:
	.fnstart
.LFB329:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	movw	r3, #307
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	sq_getversion, .-sq_getversion
	.section	.text.sq_compile,"ax",%progbits
	.align	2
	.global	sq_compile
	.thumb
	.thumb_func
	.type	sq_compile, %function
sq_compile:
	.fnstart
.LFB330:
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #52
	sub	sp, sp, #52
	.setfp r7, sp, #16
	add	r7, sp, #16
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #48]
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #140]
	ldrb	r3, [r3, #172]	@ zero_extendqisi2
	add	r1, r7, #16
	str	r1, [sp]
	str	r2, [sp, #4]
	str	r3, [sp, #8]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
.LEHB57:
	bl	_Z7CompileP4SQVMPFiPvES1_PKcR11SQObjectPtrbb(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L391
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #140]
	ldr	r3, [r7, #20]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN9SQClosure6CreateEP13SQSharedStateP15SQFunctionProto(PLT)
.LEHE57:
	mov	r3, r0
	add	r2, r7, #24
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP9SQClosure(PLT)
	add	r3, r7, #24
	ldr	r0, [r7, #12]
	mov	r1, r3
.LEHB58:
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE58:
	add	r3, r7, #24
	mov	r0, r3
.LEHB59:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE59:
	movs	r4, #0
	b	.L392
.L391:
	mov	r4, #-1
.L392:
	add	r3, r7, #16
	mov	r0, r3
.LEHB60:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE60:
	mov	r3, r4
	b	.L398
.L397:
	add	r3, r7, #24
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L395
.L396:
.L395:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB61:
	bl	__cxa_end_cleanup(PLT)
.LEHE61:
.L398:
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA330:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE330-.LLSDACSB330
.LLSDACSB330:
	.uleb128 .LEHB57-.LFB330
	.uleb128 .LEHE57-.LEHB57
	.uleb128 .L396-.LFB330
	.uleb128 0
	.uleb128 .LEHB58-.LFB330
	.uleb128 .LEHE58-.LEHB58
	.uleb128 .L397-.LFB330
	.uleb128 0
	.uleb128 .LEHB59-.LFB330
	.uleb128 .LEHE59-.LEHB59
	.uleb128 .L396-.LFB330
	.uleb128 0
	.uleb128 .LEHB60-.LFB330
	.uleb128 .LEHE60-.LEHB60
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB61-.LFB330
	.uleb128 .LEHE61-.LEHB61
	.uleb128 0
	.uleb128 0
.LLSDACSE330:
	.section	.text.sq_compile
	.fnend
	.size	sq_compile, .-sq_compile
	.section	.text.sq_enabledebuginfo,"ax",%progbits
	.align	2
	.global	sq_enabledebuginfo
	.thumb
	.thumb_func
	.type	sq_enabledebuginfo, %function
sq_enabledebuginfo:
	.fnstart
.LFB331:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #140]
	ldr	r2, [r7]
	cmp	r2, #0
	ite	ne
	movne	r2, #1
	moveq	r2, #0
	uxtb	r2, r2
	strb	r2, [r3, #172]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	sq_enabledebuginfo, .-sq_enabledebuginfo
	.section	.text.sq_notifyallexceptions,"ax",%progbits
	.align	2
	.global	sq_notifyallexceptions
	.thumb
	.thumb_func
	.type	sq_notifyallexceptions, %function
sq_notifyallexceptions:
	.fnstart
.LFB332:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #140]
	ldr	r2, [r7]
	cmp	r2, #0
	ite	ne
	movne	r2, #1
	moveq	r2, #0
	uxtb	r2, r2
	strb	r2, [r3, #173]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	sq_notifyallexceptions, .-sq_notifyallexceptions
	.section	.text.sq_addref,"ax",%progbits
	.align	2
	.global	sq_addref
	.thumb
	.thumb_func
	.type	sq_addref, %function
sq_addref:
	.fnstart
.LFB333:
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
	ldr	r3, [r3]
	and	r3, r3, #134217728
	cmp	r3, #0
	bne	.L402
	b	.L401
.L402:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #140]
	adds	r3, r3, #24
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN8RefTable6AddRefER11tagSQObject(PLT)
.L401:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	sq_addref, .-sq_addref
	.section	.text.sq_getrefcount,"ax",%progbits
	.align	2
	.global	sq_getrefcount
	.thumb
	.thumb_func
	.type	sq_getrefcount, %function
sq_getrefcount:
	.fnstart
.LFB334:
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
	ldr	r3, [r3]
	and	r3, r3, #134217728
	cmp	r3, #0
	bne	.L405
	movs	r3, #0
	b	.L406
.L405:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #140]
	adds	r3, r3, #24
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN8RefTable11GetRefCountER11tagSQObject(PLT)
	mov	r3, r0
.L406:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	sq_getrefcount, .-sq_getrefcount
	.section	.text.sq_release,"ax",%progbits
	.align	2
	.global	sq_release
	.thumb
	.thumb_func
	.type	sq_release, %function
sq_release:
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
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3]
	and	r3, r3, #134217728
	cmp	r3, #0
	bne	.L408
	movs	r3, #1
	b	.L409
.L408:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #140]
	adds	r3, r3, #24
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN8RefTable7ReleaseER11tagSQObject(PLT)
	mov	r3, r0
.L409:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	sq_release, .-sq_release
	.section	.text.sq_objtostring,"ax",%progbits
	.align	2
	.global	sq_objtostring
	.thumb
	.thumb_func
	.type	sq_objtostring, %function
sq_objtostring:
	.fnstart
.LFB336:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	movs	r3, #16
	movt	r3, 2048
	cmp	r2, r3
	bne	.L411
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	adds	r3, r3, #28
	b	.L412
.L411:
	movs	r3, #0
.L412:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	sq_objtostring, .-sq_objtostring
	.section	.text.sq_objtointeger,"ax",%progbits
	.align	2
	.global	sq_objtointeger
	.thumb
	.thumb_func
	.type	sq_objtointeger, %function
sq_objtointeger:
	.fnstart
.LFB337:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r3, r3, #67108864
	cmp	r3, #0
	beq	.L414
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	movs	r3, #4
	movt	r3, 1280
	cmp	r2, r3
	bne	.L415
	ldr	r3, [r7, #4]
	flds	s15, [r3, #4]
	ftosizs	s15, s15
	fmrs	r3, s15	@ int
	b	.L416
.L415:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
.L416:
	b	.L417
.L414:
	movs	r3, #0
.L417:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	sq_objtointeger, .-sq_objtointeger
	.section	.text.sq_objtofloat,"ax",%progbits
	.align	2
	.global	sq_objtofloat
	.thumb
	.thumb_func
	.type	sq_objtofloat, %function
sq_objtofloat:
	.fnstart
.LFB338:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r3, r3, #67108864
	cmp	r3, #0
	beq	.L419
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	movs	r3, #2
	movt	r3, 1280
	cmp	r2, r3
	bne	.L420
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	fmsr	s14, r3	@ int
	fsitos	s15, s14
	b	.L421
.L420:
	ldr	r3, [r7, #4]
	flds	s15, [r3, #4]
.L421:
	fmrs	r3, s15
	b	.L422
.L419:
	mov	r3, #0
.L422:
	fmsr	s15, r3
	fcpys	s0, s15
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	sq_objtofloat, .-sq_objtofloat
	.section	.text.sq_objtobool,"ax",%progbits
	.align	2
	.global	sq_objtobool
	.thumb
	.thumb_func
	.type	sq_objtobool, %function
sq_objtobool:
	.fnstart
.LFB339:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	movs	r3, #8
	movt	r3, 256
	cmp	r2, r3
	bne	.L424
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	b	.L425
.L424:
	movs	r3, #0
.L425:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	sq_objtobool, .-sq_objtobool
	.section	.text.sq_objtouserpointer,"ax",%progbits
	.align	2
	.global	sq_objtouserpointer
	.thumb
	.thumb_func
	.type	sq_objtouserpointer, %function
sq_objtouserpointer:
	.fnstart
.LFB340:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #2048
	bne	.L427
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	b	.L428
.L427:
	movs	r3, #0
.L428:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	sq_objtouserpointer, .-sq_objtouserpointer
	.section	.text.sq_pushnull,"ax",%progbits
	.align	2
	.global	sq_pushnull
	.thumb
	.thumb_func
	.type	sq_pushnull, %function
sq_pushnull:
	.fnstart
.LFB341:
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
	bl	_ZN4SQVM8PushNullEv(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	sq_pushnull, .-sq_pushnull
	.section	.text.sq_pushstring,"ax",%progbits
	.align	2
	.global	sq_pushstring
	.thumb
	.thumb_func
	.type	sq_pushstring, %function
sq_pushstring:
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
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L431
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #140]
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
.LEHB62:
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE62:
	mov	r3, r0
	add	r2, r7, #16
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #16
	ldr	r0, [r7, #12]
	mov	r1, r3
.LEHB63:
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE63:
	add	r3, r7, #16
	mov	r0, r3
.LEHB64:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L430
.L431:
	ldr	r0, [r7, #12]
	bl	_ZN4SQVM8PushNullEv(PLT)
.LEHE64:
	b	.L430
.L434:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB65:
	bl	__cxa_end_cleanup(PLT)
.LEHE65:
.L430:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA342:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE342-.LLSDACSB342
.LLSDACSB342:
	.uleb128 .LEHB62-.LFB342
	.uleb128 .LEHE62-.LEHB62
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB63-.LFB342
	.uleb128 .LEHE63-.LEHB63
	.uleb128 .L434-.LFB342
	.uleb128 0
	.uleb128 .LEHB64-.LFB342
	.uleb128 .LEHE64-.LEHB64
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB65-.LFB342
	.uleb128 .LEHE65-.LEHB65
	.uleb128 0
	.uleb128 0
.LLSDACSE342:
	.section	.text.sq_pushstring
	.fnend
	.size	sq_pushstring, .-sq_pushstring
	.section	.text.sq_pushinteger,"ax",%progbits
	.align	2
	.global	sq_pushinteger
	.thumb
	.thumb_func
	.type	sq_pushinteger, %function
sq_pushinteger:
	.fnstart
.LFB343:
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
	add	r3, r7, #8
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	mov	r1, r3
.LEHB66:
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE66:
	add	r3, r7, #8
	mov	r0, r3
.LEHB67:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE67:
	b	.L438
.L437:
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB68:
	bl	__cxa_end_cleanup(PLT)
.LEHE68:
.L438:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA343:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE343-.LLSDACSB343
.LLSDACSB343:
	.uleb128 .LEHB66-.LFB343
	.uleb128 .LEHE66-.LEHB66
	.uleb128 .L437-.LFB343
	.uleb128 0
	.uleb128 .LEHB67-.LFB343
	.uleb128 .LEHE67-.LEHB67
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB68-.LFB343
	.uleb128 .LEHE68-.LEHB68
	.uleb128 0
	.uleb128 0
.LLSDACSE343:
	.section	.text.sq_pushinteger
	.fnend
	.size	sq_pushinteger, .-sq_pushinteger
	.section	.text.sq_pushbool,"ax",%progbits
	.align	2
	.global	sq_pushbool
	.thumb
	.thumb_func
	.type	sq_pushbool, %function
sq_pushbool:
	.fnstart
.LFB344:
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
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	add	r2, r7, #8
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1Eb(PLT)
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	mov	r1, r3
.LEHB69:
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE69:
	add	r3, r7, #8
	mov	r0, r3
.LEHB70:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE70:
	b	.L442
.L441:
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB71:
	bl	__cxa_end_cleanup(PLT)
.LEHE71:
.L442:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA344:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE344-.LLSDACSB344
.LLSDACSB344:
	.uleb128 .LEHB69-.LFB344
	.uleb128 .LEHE69-.LEHB69
	.uleb128 .L441-.LFB344
	.uleb128 0
	.uleb128 .LEHB70-.LFB344
	.uleb128 .LEHE70-.LEHB70
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB71-.LFB344
	.uleb128 .LEHE71-.LEHB71
	.uleb128 0
	.uleb128 0
.LLSDACSE344:
	.section	.text.sq_pushbool
	.fnend
	.size	sq_pushbool, .-sq_pushbool
	.section	.text.sq_pushfloat,"ax",%progbits
	.align	2
	.global	sq_pushfloat
	.thumb
	.thumb_func
	.type	sq_pushfloat, %function
sq_pushfloat:
	.fnstart
.LFB345:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
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
.LEHB72:
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE72:
	add	r3, r7, #8
	mov	r0, r3
.LEHB73:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE73:
	b	.L446
.L445:
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB74:
	bl	__cxa_end_cleanup(PLT)
.LEHE74:
.L446:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA345:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE345-.LLSDACSB345
.LLSDACSB345:
	.uleb128 .LEHB72-.LFB345
	.uleb128 .LEHE72-.LEHB72
	.uleb128 .L445-.LFB345
	.uleb128 0
	.uleb128 .LEHB73-.LFB345
	.uleb128 .LEHE73-.LEHB73
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB74-.LFB345
	.uleb128 .LEHE74-.LEHB74
	.uleb128 0
	.uleb128 0
.LLSDACSE345:
	.section	.text.sq_pushfloat
	.fnend
	.size	sq_pushfloat, .-sq_pushfloat
	.section	.text.sq_pushuserpointer,"ax",%progbits
	.align	2
	.global	sq_pushuserpointer
	.thumb
	.thumb_func
	.type	sq_pushuserpointer, %function
sq_pushuserpointer:
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
	str	r0, [r7, #4]
	str	r1, [r7]
	add	r3, r7, #8
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN11SQObjectPtrC1EPv(PLT)
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	mov	r1, r3
.LEHB75:
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE75:
	add	r3, r7, #8
	mov	r0, r3
.LEHB76:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE76:
	b	.L450
.L449:
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB77:
	bl	__cxa_end_cleanup(PLT)
.LEHE77:
.L450:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA346:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE346-.LLSDACSB346
.LLSDACSB346:
	.uleb128 .LEHB75-.LFB346
	.uleb128 .LEHE75-.LEHB75
	.uleb128 .L449-.LFB346
	.uleb128 0
	.uleb128 .LEHB76-.LFB346
	.uleb128 .LEHE76-.LEHB76
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB77-.LFB346
	.uleb128 .LEHE77-.LEHB77
	.uleb128 0
	.uleb128 0
.LLSDACSE346:
	.section	.text.sq_pushuserpointer
	.fnend
	.size	sq_pushuserpointer, .-sq_pushuserpointer
	.section	.text.sq_newuserdata,"ax",%progbits
	.align	2
	.global	sq_newuserdata
	.thumb
	.thumb_func
	.type	sq_newuserdata, %function
sq_newuserdata:
	.fnstart
.LFB347:
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
	ldr	r2, [r3, #140]
	ldr	r3, [r7]
	mov	r0, r2
	mov	r1, r3
.LEHB78:
	bl	_ZN10SQUserData6CreateEP13SQSharedStatei(PLT)
.LEHE78:
	mov	r3, r0
	str	r3, [r7, #20]
	add	r3, r7, #12
	mov	r0, r3
	ldr	r1, [r7, #20]
	bl	_ZN11SQObjectPtrC1EP10SQUserData(PLT)
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	mov	r1, r3
.LEHB79:
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE79:
	add	r3, r7, #12
	mov	r0, r3
.LEHB80:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE80:
	ldr	r3, [r7, #20]
	adds	r3, r3, #40
	adds	r3, r3, #3
	bic	r3, r3, #3
	b	.L455
.L454:
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB81:
	bl	__cxa_end_cleanup(PLT)
.LEHE81:
.L455:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA347:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE347-.LLSDACSB347
.LLSDACSB347:
	.uleb128 .LEHB78-.LFB347
	.uleb128 .LEHE78-.LEHB78
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB79-.LFB347
	.uleb128 .LEHE79-.LEHB79
	.uleb128 .L454-.LFB347
	.uleb128 0
	.uleb128 .LEHB80-.LFB347
	.uleb128 .LEHE80-.LEHB80
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB81-.LFB347
	.uleb128 .LEHE81-.LEHB81
	.uleb128 0
	.uleb128 0
.LLSDACSE347:
	.section	.text.sq_newuserdata
	.fnend
	.size	sq_newuserdata, .-sq_newuserdata
	.section	.text.sq_newtable,"ax",%progbits
	.align	2
	.global	sq_newtable
	.thumb
	.thumb_func
	.type	sq_newtable, %function
sq_newtable:
	.fnstart
.LFB348:
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
	ldr	r3, [r3, #140]
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
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	mov	r1, r3
.LEHB83:
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE83:
	add	r3, r7, #8
	mov	r0, r3
.LEHB84:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE84:
	b	.L459
.L458:
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB85:
	bl	__cxa_end_cleanup(PLT)
.LEHE85:
.L459:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA348:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE348-.LLSDACSB348
.LLSDACSB348:
	.uleb128 .LEHB82-.LFB348
	.uleb128 .LEHE82-.LEHB82
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB83-.LFB348
	.uleb128 .LEHE83-.LEHB83
	.uleb128 .L458-.LFB348
	.uleb128 0
	.uleb128 .LEHB84-.LFB348
	.uleb128 .LEHE84-.LEHB84
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB85-.LFB348
	.uleb128 .LEHE85-.LEHB85
	.uleb128 0
	.uleb128 0
.LLSDACSE348:
	.section	.text.sq_newtable
	.fnend
	.size	sq_newtable, .-sq_newtable
	.section	.text.sq_newtableex,"ax",%progbits
	.align	2
	.global	sq_newtableex
	.thumb
	.thumb_func
	.type	sq_newtableex, %function
sq_newtableex:
	.fnstart
.LFB349:
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
	ldr	r3, [r3, #140]
	mov	r0, r3
	ldr	r1, [r7]
.LEHB86:
	bl	_ZN7SQTable6CreateEP13SQSharedStatei(PLT)
.LEHE86:
	mov	r3, r0
	add	r2, r7, #8
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP7SQTable(PLT)
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	mov	r1, r3
.LEHB87:
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE87:
	add	r3, r7, #8
	mov	r0, r3
.LEHB88:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE88:
	b	.L463
.L462:
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB89:
	bl	__cxa_end_cleanup(PLT)
.LEHE89:
.L463:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA349:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE349-.LLSDACSB349
.LLSDACSB349:
	.uleb128 .LEHB86-.LFB349
	.uleb128 .LEHE86-.LEHB86
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB87-.LFB349
	.uleb128 .LEHE87-.LEHB87
	.uleb128 .L462-.LFB349
	.uleb128 0
	.uleb128 .LEHB88-.LFB349
	.uleb128 .LEHE88-.LEHB88
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB89-.LFB349
	.uleb128 .LEHE89-.LEHB89
	.uleb128 0
	.uleb128 0
.LLSDACSE349:
	.section	.text.sq_newtableex
	.fnend
	.size	sq_newtableex, .-sq_newtableex
	.section	.text.sq_newarray,"ax",%progbits
	.align	2
	.global	sq_newarray
	.thumb
	.thumb_func
	.type	sq_newarray, %function
sq_newarray:
	.fnstart
.LFB350:
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
	ldr	r3, [r3, #140]
	mov	r0, r3
	ldr	r1, [r7]
.LEHB90:
	bl	_ZN7SQArray6CreateEP13SQSharedStatei(PLT)
.LEHE90:
	mov	r3, r0
	add	r2, r7, #8
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP7SQArray(PLT)
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	mov	r1, r3
.LEHB91:
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE91:
	add	r3, r7, #8
	mov	r0, r3
.LEHB92:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE92:
	b	.L467
.L466:
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB93:
	bl	__cxa_end_cleanup(PLT)
.LEHE93:
.L467:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA350:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE350-.LLSDACSB350
.LLSDACSB350:
	.uleb128 .LEHB90-.LFB350
	.uleb128 .LEHE90-.LEHB90
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB91-.LFB350
	.uleb128 .LEHE91-.LEHB91
	.uleb128 .L466-.LFB350
	.uleb128 0
	.uleb128 .LEHB92-.LFB350
	.uleb128 .LEHE92-.LEHB92
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB93-.LFB350
	.uleb128 .LEHE93-.LEHB93
	.uleb128 0
	.uleb128 0
.LLSDACSE350:
	.section	.text.sq_newarray
	.fnend
	.size	sq_newarray, .-sq_newarray
	.section	.rodata
	.align	2
.LC4:
	.ascii	"invalid base type\000"
	.section	.text.sq_newclass,"ax",%progbits
	.align	2
	.global	sq_newclass
	.thumb
	.thumb_func
	.type	sq_newclass, %function
sq_newclass:
	.fnstart
.LFB351:
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
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L469
	ldr	r0, [r7, #4]
	mov	r1, #-1
.LEHB94:
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	ldr	r2, [r3]
	mov	r3, #16384
	movt	r3, 2048
	cmp	r2, r3
	beq	.L470
	ldr	r0, [r7, #4]
	ldr	r3, .L476
.LPIC41:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L475
.L470:
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #4]
	str	r3, [r7, #28]
.L469:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #140]
	mov	r0, r3
	ldr	r1, [r7, #28]
	bl	_ZN7SQClass6CreateEP13SQSharedStatePS_(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L472
	ldr	r0, [r7, #4]
	bl	_ZN4SQVM3PopEv(PLT)
.LEHE94:
.L472:
	add	r3, r7, #12
	mov	r0, r3
	ldr	r1, [r7, #20]
	bl	_ZN11SQObjectPtrC1EP7SQClass(PLT)
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	mov	r1, r3
.LEHB95:
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE95:
	add	r3, r7, #12
	mov	r0, r3
.LEHB96:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE96:
	movs	r3, #0
	b	.L475
.L474:
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB97:
	bl	__cxa_end_cleanup(PLT)
.LEHE97:
.L475:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L477:
	.align	2
.L476:
	.word	.LC4-(.LPIC41+4)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA351:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE351-.LLSDACSB351
.LLSDACSB351:
	.uleb128 .LEHB94-.LFB351
	.uleb128 .LEHE94-.LEHB94
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB95-.LFB351
	.uleb128 .LEHE95-.LEHB95
	.uleb128 .L474-.LFB351
	.uleb128 0
	.uleb128 .LEHB96-.LFB351
	.uleb128 .LEHE96-.LEHB96
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB97-.LFB351
	.uleb128 .LEHE97-.LEHB97
	.uleb128 0
	.uleb128 0
.LLSDACSE351:
	.section	.text.sq_newclass
	.fnend
	.size	sq_newclass, .-sq_newclass
	.section	.rodata
	.align	2
.LC5:
	.ascii	"invalid param type\000"
	.section	.text.sq_instanceof,"ax",%progbits
	.align	2
	.global	sq_instanceof
	.thumb
	.thumb_func
	.type	sq_instanceof, %function
sq_instanceof:
	.fnstart
.LFB352:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	mov	r1, #-1
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r0, [r7, #4]
	mvn	r1, #1
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	mov	r3, #32768
	movt	r3, 2560
	cmp	r2, r3
	bne	.L479
	ldr	r3, [r7, #8]
	ldr	r2, [r3]
	mov	r3, #16384
	movt	r3, 2048
	cmp	r2, r3
	beq	.L480
.L479:
	ldr	r0, [r7, #4]
	ldr	r3, .L484
.LPIC42:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L481
.L480:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN10SQInstance10InstanceOfEP7SQClass(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L482
	movs	r3, #1
	b	.L483
.L482:
	movs	r3, #0
.L483:
.L481:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L485:
	.align	2
.L484:
	.word	.LC5-(.LPIC42+4)
	.fnend
	.size	sq_instanceof, .-sq_instanceof
	.section	.rodata
	.align	2
.LC6:
	.ascii	"not enough params in the stack\000"
	.section	.text.sq_arrayappend,"ax",%progbits
	.align	2
	.global	sq_arrayappend
	.thumb
	.thumb_func
	.type	sq_arrayappend, %function
sq_arrayappend:
	.fnstart
.LFB353:
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
	bl	sq_gettop(PLT)
	mov	r3, r0
	cmp	r3, #1
	ite	le
	movle	r3, #1
	movgt	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L487
	ldr	r0, [r7, #4]
	ldr	r3, .L491
.LPIC43:
	add	r3, pc
	mov	r1, r3
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
	mov	r3, #-1
	b	.L490
.L487:
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	movs	r2, #64
	movt	r2, 2048
	bl	_Z18sq_aux_gettypedargP4SQVMi15tagSQObjectTypePP11SQObjectPtr(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L489
	mov	r3, #-1
	b	.L490
.L489:
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #4]
	ldr	r0, [r7, #4]
	mov	r1, #-1
	bl	_ZN4SQVM5GetUpEi(PLT)
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	bl	_ZN7SQArray6AppendERK11tagSQObject(PLT)
	ldr	r0, [r7, #4]
	bl	_ZN4SQVM3PopEv(PLT)
	movs	r3, #0
.L490:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L492:
	.align	2
.L491:
	.word	.LC6-(.LPIC43+4)
	.fnend
	.size	sq_arrayappend, .-sq_arrayappend
	.section	.rodata
	.align	2
.LC7:
	.ascii	"empty array\000"
	.section	.text.sq_arraypop,"ax",%progbits
	.align	2
	.global	sq_arraypop
	.thumb
	.thumb_func
	.type	sq_arraypop, %function
sq_arraypop:
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
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r0, [r7, #12]
	bl	sq_gettop(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	le
	movle	r3, #1
	movgt	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L494
	ldr	r0, [r7, #12]
	ldr	r3, .L500
.LPIC44:
	add	r3, pc
	mov	r1, r3
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
	mov	r3, #-1
	b	.L499
.L494:
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	movs	r2, #64
	movt	r2, 2048
	bl	_Z18sq_aux_gettypedargP4SQVMi15tagSQObjectTypePP11SQObjectPtr(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L496
	mov	r3, #-1
	b	.L499
.L496:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZNK7SQArray4SizeEv(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	gt
	movgt	r3, #1
	movle	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L497
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L498
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN7SQArray3TopEv(PLT)
	mov	r3, r0
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.L498:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN7SQArray3PopEv(PLT)
	movs	r3, #0
	b	.L499
.L497:
	ldr	r0, [r7, #12]
	ldr	r3, .L500+4
.LPIC45:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
.L499:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L501:
	.align	2
.L500:
	.word	.LC6-(.LPIC44+4)
	.word	.LC7-(.LPIC45+4)
	.fnend
	.size	sq_arraypop, .-sq_arraypop
	.section	.rodata
	.align	2
.LC8:
	.ascii	"negative size\000"
	.section	.text.sq_arrayresize,"ax",%progbits
	.align	2
	.global	sq_arrayresize
	.thumb
	.thumb_func
	.type	sq_arrayresize, %function
sq_arrayresize:
	.fnstart
.LFB355:
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
	ldr	r0, [r7, #12]
	bl	sq_gettop(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	le
	movle	r3, #1
	movgt	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L503
	ldr	r0, [r7, #12]
	ldr	r3, .L508
.LPIC46:
	add	r3, pc
	mov	r1, r3
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
	mov	r3, #-1
	b	.L507
.L503:
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	movs	r2, #64
	movt	r2, 2048
	bl	_Z18sq_aux_gettypedargP4SQVMi15tagSQObjectTypePP11SQObjectPtr(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L505
	mov	r3, #-1
	b	.L507
.L505:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	blt	.L506
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	_ZN7SQArray6ResizeEi(PLT)
	movs	r3, #0
	b	.L507
.L506:
	ldr	r0, [r7, #12]
	ldr	r3, .L508+4
.LPIC47:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
.L507:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L509:
	.align	2
.L508:
	.word	.LC6-(.LPIC46+4)
	.word	.LC8-(.LPIC47+4)
	.fnend
	.size	sq_arrayresize, .-sq_arrayresize
	.section	.text.sq_arrayreverse,"ax",%progbits
	.align	2
	.global	sq_arrayreverse
	.thumb
	.thumb_func
	.type	sq_arrayreverse, %function
sq_arrayreverse:
	.fnstart
.LFB356:
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
	ldr	r0, [r7, #4]
.LEHB98:
	bl	sq_gettop(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	le
	movle	r3, #1
	movgt	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L511
	ldr	r0, [r7, #4]
	ldr	r3, .L521
.LPIC48:
	add	r3, pc
	mov	r1, r3
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
	mov	r4, #-1
	b	.L517
.L511:
	add	r3, r7, #20
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	movs	r2, #64
	movt	r2, 2048
	bl	_Z18sq_aux_gettypedargP4SQVMi15tagSQObjectTypePP11SQObjectPtr(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L513
	mov	r4, #-1
	b	.L517
.L513:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	str	r3, [r7, #32]
	ldr	r0, [r7, #32]
	bl	_ZNK7SQArray4SizeEv(PLT)
.LEHE98:
	mov	r3, r0
	cmp	r3, #0
	ite	gt
	movgt	r3, #1
	movle	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L514
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r0, [r7, #32]
.LEHB99:
	bl	_ZNK7SQArray4SizeEv(PLT)
	mov	r3, r0
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	asrs	r3, r3, #1
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	subs	r3, r3, #1
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #36]
	b	.L515
.L516:
	ldr	r3, [r7, #32]
	add	r2, r3, #24
	ldr	r3, [r7, #36]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI11SQObjectPtrEixEj(PLT)
	mov	r3, r0
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	ldr	r3, [r7, #32]
	add	r2, r3, #24
	ldr	r3, [r7, #36]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI11SQObjectPtrEixEj(PLT)
	mov	r4, r0
	ldr	r3, [r7, #32]
	add	r2, r3, #24
	ldr	r1, [r7, #28]
	ldr	r3, [r7, #36]
	subs	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI11SQObjectPtrEixEj(PLT)
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	ldr	r3, [r7, #32]
	add	r2, r3, #24
	ldr	r1, [r7, #28]
	ldr	r3, [r7, #36]
	subs	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI11SQObjectPtrEixEj(PLT)
	mov	r2, r0
	add	r3, r7, #12
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
.LEHE99:
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L515:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	blt	.L516
	movs	r4, #0
	add	r3, r7, #12
	mov	r0, r3
.LEHB100:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE100:
	b	.L517
.L514:
	movs	r4, #0
.L517:
	mov	r3, r4
	b	.L520
.L519:
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB101:
	bl	__cxa_end_cleanup(PLT)
.LEHE101:
.L520:
	mov	r0, r3
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L522:
	.align	2
.L521:
	.word	.LC6-(.LPIC48+4)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA356:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE356-.LLSDACSB356
.LLSDACSB356:
	.uleb128 .LEHB98-.LFB356
	.uleb128 .LEHE98-.LEHB98
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB99-.LFB356
	.uleb128 .LEHE99-.LEHB99
	.uleb128 .L519-.LFB356
	.uleb128 0
	.uleb128 .LEHB100-.LFB356
	.uleb128 .LEHE100-.LEHB100
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB101-.LFB356
	.uleb128 .LEHE101-.LEHB101
	.uleb128 0
	.uleb128 0
.LLSDACSE356:
	.section	.text.sq_arrayreverse
	.fnend
	.size	sq_arrayreverse, .-sq_arrayreverse
	.section	.rodata
	.align	2
.LC9:
	.ascii	"index out of range\000"
	.section	.text.sq_arrayremove,"ax",%progbits
	.align	2
	.global	sq_arrayremove
	.thumb
	.thumb_func
	.type	sq_arrayremove, %function
sq_arrayremove:
	.fnstart
.LFB357:
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
	ldr	r0, [r7, #12]
	bl	sq_gettop(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	le
	movle	r3, #1
	movgt	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L524
	ldr	r0, [r7, #12]
	ldr	r3, .L530
.LPIC49:
	add	r3, pc
	mov	r1, r3
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
	mov	r3, #-1
	b	.L529
.L524:
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	movs	r2, #64
	movt	r2, 2048
	bl	_Z18sq_aux_gettypedargP4SQVMi15tagSQObjectTypePP11SQObjectPtr(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L526
	mov	r3, #-1
	b	.L529
.L526:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	_ZN7SQArray6RemoveEi(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L527
	movs	r3, #0
	b	.L528
.L527:
	ldr	r0, [r7, #12]
	ldr	r3, .L530+4
.LPIC50:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
.L528:
.L529:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L531:
	.align	2
.L530:
	.word	.LC6-(.LPIC49+4)
	.word	.LC9-(.LPIC50+4)
	.fnend
	.size	sq_arrayremove, .-sq_arrayremove
	.section	.text.sq_arrayinsert,"ax",%progbits
	.align	2
	.global	sq_arrayinsert
	.thumb
	.thumb_func
	.type	sq_arrayinsert, %function
sq_arrayinsert:
	.fnstart
.LFB358:
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
	ldr	r0, [r7, #12]
	bl	sq_gettop(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	le
	movle	r3, #1
	movgt	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L533
	ldr	r0, [r7, #12]
	ldr	r3, .L539
.LPIC51:
	add	r3, pc
	mov	r1, r3
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
	mov	r3, #-1
	b	.L538
.L533:
	add	r3, r7, #16
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	movs	r2, #64
	movt	r2, 2048
	bl	_Z18sq_aux_gettypedargP4SQVMi15tagSQObjectTypePP11SQObjectPtr(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L535
	mov	r3, #-1
	b	.L538
.L535:
	ldr	r3, [r7, #16]
	ldr	r4, [r3, #4]
	ldr	r0, [r7, #12]
	mov	r1, #-1
	bl	_ZN4SQVM5GetUpEi(PLT)
	mov	r3, r0
	mov	r0, r4
	ldr	r1, [r7, #4]
	mov	r2, r3
	bl	_ZN7SQArray6InsertEiRK11tagSQObject(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L536
	movs	r3, #0
	b	.L537
.L536:
	ldr	r0, [r7, #12]
	ldr	r3, .L539+4
.LPIC52:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
.L537:
	str	r3, [r7, #20]
	ldr	r0, [r7, #12]
	bl	_ZN4SQVM3PopEv(PLT)
	ldr	r3, [r7, #20]
.L538:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L540:
	.align	2
.L539:
	.word	.LC6-(.LPIC51+4)
	.word	.LC9-(.LPIC52+4)
	.fnend
	.size	sq_arrayinsert, .-sq_arrayinsert
	.section	.text.sq_newclosure,"ax",%progbits
	.align	2
	.global	sq_newclosure
	.thumb
	.thumb_func
	.type	sq_newclosure, %function
sq_newclosure:
	.fnstart
.LFB359:
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
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #140]
	ldr	r3, [r7, #4]
	mov	r0, r2
	ldr	r1, [r7, #8]
	mov	r2, r3
.LEHB102:
	bl	_ZN15SQNativeClosure6CreateEP13SQSharedStatePFiP4SQVMEi(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	movs	r2, #0
	str	r2, [r3, #24]
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L542
.L543:
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #28]
	lsls	r3, r3, #3
	adds	r4, r2, r3
	ldr	r0, [r7, #12]
	bl	_ZN4SQVM3TopEv(PLT)
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	ldr	r0, [r7, #12]
	bl	_ZN4SQVM3PopEv(PLT)
.LEHE102:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L542:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcc	.L543
	add	r3, r7, #16
	mov	r0, r3
	ldr	r1, [r7, #24]
	bl	_ZN11SQObjectPtrC1EP15SQNativeClosure(PLT)
	add	r3, r7, #16
	ldr	r0, [r7, #12]
	mov	r1, r3
.LEHB103:
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE103:
	add	r3, r7, #16
	mov	r0, r3
.LEHB104:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE104:
	b	.L546
.L545:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB105:
	bl	__cxa_end_cleanup(PLT)
.LEHE105:
.L546:
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA359:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE359-.LLSDACSB359
.LLSDACSB359:
	.uleb128 .LEHB102-.LFB359
	.uleb128 .LEHE102-.LEHB102
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB103-.LFB359
	.uleb128 .LEHE103-.LEHB103
	.uleb128 .L545-.LFB359
	.uleb128 0
	.uleb128 .LEHB104-.LFB359
	.uleb128 .LEHE104-.LEHB104
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB105-.LFB359
	.uleb128 .LEHE105-.LEHB105
	.uleb128 0
	.uleb128 0
.LLSDACSE359:
	.section	.text.sq_newclosure
	.fnend
	.size	sq_newclosure, .-sq_newclosure
	.section	.rodata
	.align	2
.LC10:
	.ascii	"the object is not a closure\000"
	.section	.text.sq_getclosureinfo,"ax",%progbits
	.align	2
	.global	sq_getclosureinfo
	.thumb
	.thumb_func
	.type	sq_getclosureinfo, %function
sq_getclosureinfo:
	.fnstart
.LFB360:
	@ args = 0, pretend = 0, frame = 40
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
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r2, r0
	add	r3, r7, #20
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r2, [r7, #20]
	mov	r3, #256
	movt	r3, 2048
	cmp	r2, r3
	bne	.L548
	ldr	r3, [r7, #24]
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #32]
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #76]
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #92]
	mov	r2, r3
	ldr	r3, [r7]
	str	r2, [r3]
	movs	r3, #0
	b	.L551
.L548:
	ldr	r2, [r7, #20]
	mov	r3, #512
	movt	r3, 2048
	cmp	r2, r3
	bne	.L550
	ldr	r3, [r7, #24]
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #24]
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #44]
	ldr	r3, [r7]
	str	r2, [r3]
	movs	r3, #0
	b	.L551
.L550:
	ldr	r0, [r7, #12]
	ldr	r3, .L552
.LPIC53:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
.L551:
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L553:
	.align	2
.L552:
	.word	.LC10-(.LPIC53+4)
	.fnend
	.size	sq_getclosureinfo, .-sq_getclosureinfo
	.section	.rodata
	.align	2
.LC11:
	.ascii	"the object is not a nativeclosure\000"
	.section	.text.sq_setnativeclosurename,"ax",%progbits
	.align	2
	.global	sq_setnativeclosurename
	.thumb
	.thumb_func
	.type	sq_setnativeclosurename, %function
sq_setnativeclosurename:
	.fnstart
.LFB361:
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
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r2, r0
	add	r3, r7, #20
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r2, [r7, #20]
	mov	r3, #512
	movt	r3, 2048
	cmp	r2, r3
	bne	.L555
	ldr	r3, [r7, #24]
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	add	r4, r3, #56
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #140]
	mov	r0, r3
	ldr	r1, [r7, #4]
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEP8SQString(PLT)
	movs	r3, #0
	b	.L557
.L555:
	ldr	r0, [r7, #12]
	ldr	r3, .L558
.LPIC54:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
.L557:
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L559:
	.align	2
.L558:
	.word	.LC11-(.LPIC54+4)
	.fnend
	.size	sq_setnativeclosurename, .-sq_setnativeclosurename
	.section	.rodata
	.align	2
.LC12:
	.ascii	"native closure expected\000"
	.align	2
.LC13:
	.ascii	"invalid typemask\000"
	.section	.text.sq_setparamscheck,"ax",%progbits
	.align	2
	.global	sq_setparamscheck
	.thumb
	.thumb_func
	.type	sq_setparamscheck, %function
sq_setparamscheck:
	.fnstart
.LFB362:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #48
	sub	sp, sp, #48
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r0, [r7, #12]
	mov	r1, #-1
.LEHB106:
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r2, r0
	add	r3, r7, #32
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r2, [r7, #32]
	mov	r3, #512
	movt	r3, 2048
	cmp	r2, r3
	beq	.L561
	ldr	r0, [r7, #12]
	ldr	r3, .L575
.LPIC55:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r4, r0
	b	.L570
.L561:
	ldr	r3, [r7, #36]
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	ldr	r2, [r7, #8]
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L563
	add	r3, r7, #20
	mov	r0, r3
	bl	_ZN8sqvectorIiEC1Ev(PLT)
.LEHE106:
	add	r3, r7, #20
	mov	r0, r3
	ldr	r1, [r7, #4]
.LEHB107:
	bl	_Z15CompileTypemaskR8sqvectorIiEPKc(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L564
	ldr	r0, [r7, #12]
	ldr	r3, .L575+4
.LPIC56:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r4, r0
	movs	r5, #0
	b	.L565
.L564:
	ldr	r3, [r7, #44]
	add	r2, r3, #28
	add	r3, r7, #20
	mov	r0, r2
	mov	r1, r3
	bl	_ZN8sqvectorIiE4copyERKS0_(PLT)
.LEHE107:
	movs	r5, #1
.L565:
	add	r3, r7, #20
	mov	r0, r3
.LEHB108:
	bl	_ZN8sqvectorIiED1Ev(PLT)
	cmp	r5, #1
	bne	.L570
	nop
	b	.L568
.L563:
	ldr	r3, [r7, #44]
	add	r2, r3, #28
	movs	r3, #0
	str	r3, [r7, #40]
	add	r3, r7, #40
	mov	r0, r2
	movs	r1, #0
	mov	r2, r3
	bl	_ZN8sqvectorIiE6resizeEjRKi(PLT)
.L568:
	ldr	r2, [r7, #8]
	movw	r3, #31073
	movt	r3, 65534
	cmp	r2, r3
	bne	.L569
	ldr	r3, [r7, #44]
	adds	r3, r3, #28
	mov	r0, r3
	bl	_ZNK8sqvectorIiE4sizeEv(PLT)
.LEHE108:
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #44]
	str	r2, [r3, #24]
.L569:
	movs	r4, #0
.L570:
	mov	r3, r4
	b	.L574
.L572:
	add	r3, r7, #20
	mov	r0, r3
	bl	_ZN8sqvectorIiED1Ev(PLT)
.LEHB109:
	bl	__cxa_end_cleanup(PLT)
.LEHE109:
.L574:
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L576:
	.align	2
.L575:
	.word	.LC12-(.LPIC55+4)
	.word	.LC13-(.LPIC56+4)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA362:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE362-.LLSDACSB362
.LLSDACSB362:
	.uleb128 .LEHB106-.LFB362
	.uleb128 .LEHE106-.LEHB106
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB107-.LFB362
	.uleb128 .LEHE107-.LEHB107
	.uleb128 .L572-.LFB362
	.uleb128 0
	.uleb128 .LEHB108-.LFB362
	.uleb128 .LEHE108-.LEHB108
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB109-.LFB362
	.uleb128 .LEHE109-.LEHB109
	.uleb128 0
	.uleb128 0
.LLSDACSE362:
	.section	.text.sq_setparamscheck
	.fnend
	.size	sq_setparamscheck, .-sq_setparamscheck
	.section	.rodata
	.align	2
.LC14:
	.ascii	"the target is not a closure\000"
	.align	2
.LC15:
	.ascii	"invalid environment\000"
	.section	.text.sq_bindenv,"ax",%progbits
	.align	2
	.global	sq_bindenv
	.thumb
	.thumb_func
	.type	sq_bindenv, %function
sq_bindenv:
	.fnstart
.LFB363:
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
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
.LEHB110:
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	ldr	r2, [r3]
	mov	r3, #512
	movt	r3, 2048
	cmp	r2, r3
	beq	.L578
	ldr	r3, [r7, #36]
	ldr	r2, [r3]
	mov	r3, #256
	movt	r3, 2048
	cmp	r2, r3
	beq	.L578
	ldr	r0, [r7, #4]
	ldr	r3, .L592
.LPIC57:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r4, r0
	b	.L588
.L578:
	ldr	r0, [r7, #4]
	mov	r1, #-1
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	ldr	r2, [r3]
	movs	r3, #32
	movt	r3, 2560
	cmp	r2, r3
	beq	.L580
	ldr	r3, [r7, #32]
	ldr	r2, [r3]
	mov	r3, #16384
	movt	r3, 2048
	cmp	r2, r3
	beq	.L580
	ldr	r3, [r7, #32]
	ldr	r2, [r3]
	mov	r3, #32768
	movt	r3, 2560
	cmp	r2, r3
	beq	.L580
	ldr	r0, [r7, #4]
	ldr	r3, .L592+4
.LPIC58:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r4, r0
	b	.L588
.L580:
	ldr	r3, [r7, #32]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #32]
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN12SQRefCounted10GetWeakRefE15tagSQObjectType(PLT)
.LEHE110:
	mov	r3, r0
	str	r3, [r7, #28]
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #36]
	ldr	r2, [r3]
	mov	r3, #256
	movt	r3, 2048
	cmp	r2, r3
	bne	.L581
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #4]
	mov	r0, r3
.LEHB111:
	bl	_ZN9SQClosure5CloneEv(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L582
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #24]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #24]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L583
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #24]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #24]
	ldr	r2, [r2, #24]
	mov	r0, r2
	blx	r3
.L583:
	ldr	r3, [r7, #24]
	movs	r2, #0
	str	r2, [r3, #24]
.L582:
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #28]
	str	r2, [r3, #24]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #24]
	ldr	r2, [r3, #4]
	adds	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #28]
	cmp	r3, #0
	beq	.L584
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #24]
	str	r2, [r3, #28]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #28]
	ldr	r2, [r3, #4]
	adds	r2, r2, #1
	str	r2, [r3, #4]
.L584:
	add	r3, r7, #12
	mov	r0, r3
	ldr	r1, [r7, #24]
	bl	_ZN11SQObjectPtraSEP9SQClosure(PLT)
	b	.L585
.L581:
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN15SQNativeClosure5CloneEv(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L586
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #48]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #48]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L587
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #48]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #20]
	ldr	r2, [r2, #48]
	mov	r0, r2
	blx	r3
.L587:
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #48]
.L586:
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #28]
	str	r2, [r3, #48]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #48]
	ldr	r2, [r3, #4]
	adds	r2, r2, #1
	str	r2, [r3, #4]
	add	r3, r7, #12
	mov	r0, r3
	ldr	r1, [r7, #20]
	bl	_ZN11SQObjectPtraSEP15SQNativeClosure(PLT)
.L585:
	ldr	r0, [r7, #4]
	bl	_ZN4SQVM3PopEv(PLT)
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE111:
	movs	r4, #0
	add	r3, r7, #12
	mov	r0, r3
.LEHB112:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE112:
.L588:
	mov	r3, r4
	b	.L591
.L590:
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB113:
	bl	__cxa_end_cleanup(PLT)
.LEHE113:
.L591:
	mov	r0, r3
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L593:
	.align	2
.L592:
	.word	.LC14-(.LPIC57+4)
	.word	.LC15-(.LPIC58+4)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA363:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE363-.LLSDACSB363
.LLSDACSB363:
	.uleb128 .LEHB110-.LFB363
	.uleb128 .LEHE110-.LEHB110
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB111-.LFB363
	.uleb128 .LEHE111-.LEHB111
	.uleb128 .L590-.LFB363
	.uleb128 0
	.uleb128 .LEHB112-.LFB363
	.uleb128 .LEHE112-.LEHB112
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB113-.LFB363
	.uleb128 .LEHE113-.LEHB113
	.uleb128 0
	.uleb128 0
.LLSDACSE363:
	.section	.text.sq_bindenv
	.fnend
	.size	sq_bindenv, .-sq_bindenv
	.section	.text.sq_getclosurename,"ax",%progbits
	.align	2
	.global	sq_getclosurename
	.thumb
	.thumb_func
	.type	sq_getclosurename, %function
sq_getclosurename:
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
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	mov	r3, #512
	movt	r3, 2048
	cmp	r2, r3
	beq	.L595
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	mov	r3, #256
	movt	r3, 2048
	cmp	r2, r3
	beq	.L595
	ldr	r0, [r7, #4]
	ldr	r3, .L599
.LPIC59:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L596
.L595:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	mov	r3, #512
	movt	r3, 2048
	cmp	r2, r3
	bne	.L597
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	adds	r3, r3, #56
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	b	.L598
.L597:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #32]
	adds	r3, r3, #32
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.L598:
	movs	r3, #0
.L596:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L600:
	.align	2
.L599:
	.word	.LC14-(.LPIC59+4)
	.fnend
	.size	sq_getclosurename, .-sq_getclosurename
	.section	.rodata
	.align	2
.LC16:
	.ascii	"clear only works on table and array\000"
	.section	.text.sq_clear,"ax",%progbits
	.align	2
	.global	sq_clear
	.thumb
	.thumb_func
	.type	sq_clear, %function
sq_clear:
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
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	mov	r2, r3
	movs	r3, #64
	movt	r3, 2048
	cmp	r2, r3
	beq	.L603
	movs	r3, #32
	movt	r3, 2560
	cmp	r2, r3
	bne	.L607
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN7SQTable5ClearEv(PLT)
	b	.L605
.L603:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	movs	r1, #0
	bl	_ZN7SQArray6ResizeEi(PLT)
	b	.L605
.L607:
	ldr	r0, [r7, #4]
	ldr	r3, .L608
.LPIC60:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L606
.L605:
	movs	r3, #0
.L606:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L609:
	.align	2
.L608:
	.word	.LC16-(.LPIC60+4)
	.fnend
	.size	sq_clear, .-sq_clear
	.section	.text.sq_pushroottable,"ax",%progbits
	.align	2
	.global	sq_pushroottable
	.thumb
	.thumb_func
	.type	sq_pushroottable, %function
sq_pushroottable:
	.fnstart
.LFB366:
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
	adds	r3, r3, #48
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	sq_pushroottable, .-sq_pushroottable
	.section	.text.sq_pushregistrytable,"ax",%progbits
	.align	2
	.global	sq_pushregistrytable
	.thumb
	.thumb_func
	.type	sq_pushregistrytable, %function
sq_pushregistrytable:
	.fnstart
.LFB367:
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
	ldr	r3, [r3, #140]
	adds	r3, r3, #44
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	sq_pushregistrytable, .-sq_pushregistrytable
	.section	.text.sq_pushconsttable,"ax",%progbits
	.align	2
	.global	sq_pushconsttable
	.thumb
	.thumb_func
	.type	sq_pushconsttable, %function
sq_pushconsttable:
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
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #140]
	adds	r3, r3, #52
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	sq_pushconsttable, .-sq_pushconsttable
	.section	.rodata
	.align	2
.LC17:
	.ascii	"ivalid type\000"
	.section	.text.sq_setroottable,"ax",%progbits
	.align	2
	.global	sq_setroottable
	.thumb
	.thumb_func
	.type	sq_setroottable, %function
sq_setroottable:
	.fnstart
.LFB369:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	mov	r1, #-1
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r2, r0
	add	r3, r7, #8
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r2, [r7, #8]
	movs	r3, #32
	movt	r3, 2560
	cmp	r2, r3
	beq	.L614
	ldr	r2, [r7, #8]
	movs	r3, #1
	movt	r3, 256
	cmp	r2, r3
	bne	.L615
.L614:
	ldr	r3, [r7, #4]
	add	r2, r3, #48
	add	r3, r7, #8
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERK11tagSQObject(PLT)
	ldr	r0, [r7, #4]
	bl	_ZN4SQVM3PopEv(PLT)
	movs	r3, #0
	b	.L617
.L615:
	ldr	r0, [r7, #4]
	ldr	r3, .L618
.LPIC61:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
.L617:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L619:
	.align	2
.L618:
	.word	.LC17-(.LPIC61+4)
	.fnend
	.size	sq_setroottable, .-sq_setroottable
	.section	.rodata
	.align	2
.LC18:
	.ascii	"ivalid type, expected table\000"
	.section	.text.sq_setconsttable,"ax",%progbits
	.align	2
	.global	sq_setconsttable
	.thumb
	.thumb_func
	.type	sq_setconsttable, %function
sq_setconsttable:
	.fnstart
.LFB370:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	mov	r1, #-1
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r2, r0
	add	r3, r7, #8
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r2, [r7, #8]
	movs	r3, #32
	movt	r3, 2560
	cmp	r2, r3
	bne	.L621
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #140]
	add	r2, r3, #52
	add	r3, r7, #8
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERK11tagSQObject(PLT)
	ldr	r0, [r7, #4]
	bl	_ZN4SQVM3PopEv(PLT)
	movs	r3, #0
	b	.L623
.L621:
	ldr	r0, [r7, #4]
	ldr	r3, .L624
.LPIC62:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
.L623:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L625:
	.align	2
.L624:
	.word	.LC18-(.LPIC62+4)
	.fnend
	.size	sq_setconsttable, .-sq_setconsttable
	.section	.text.sq_setforeignptr,"ax",%progbits
	.align	2
	.global	sq_setforeignptr
	.thumb
	.thumb_func
	.type	sq_setforeignptr, %function
sq_setforeignptr:
	.fnstart
.LFB371:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #136]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	sq_setforeignptr, .-sq_setforeignptr
	.section	.text.sq_getforeignptr,"ax",%progbits
	.align	2
	.global	sq_getforeignptr
	.thumb
	.thumb_func
	.type	sq_getforeignptr, %function
sq_getforeignptr:
	.fnstart
.LFB372:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #136]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	sq_getforeignptr, .-sq_getforeignptr
	.section	.text.sq_push,"ax",%progbits
	.align	2
	.global	sq_push
	.thumb
	.thumb_func
	.type	sq_push, %function
sq_push:
	.fnstart
.LFB373:
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
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	sq_push, .-sq_push
	.section	.text.sq_gettype,"ax",%progbits
	.align	2
	.global	sq_gettype
	.thumb
	.thumb_func
	.type	sq_gettype, %function
sq_gettype:
	.fnstart
.LFB374:
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
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	ldr	r3, [r3]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	sq_gettype, .-sq_gettype
	.section	.text.sq_typeof,"ax",%progbits
	.align	2
	.global	sq_typeof
	.thumb
	.thumb_func
	.type	sq_typeof, %function
sq_typeof:
	.fnstart
.LFB375:
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
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
.LEHB114:
	bl	_Z9stack_getP4SQVMi(PLT)
.LEHE114:
	mov	r3, r0
	str	r3, [r7, #20]
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #20]
	mov	r2, r3
.LEHB115:
	bl	_ZN4SQVM6TypeOfERK11SQObjectPtrRS0_(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L633
	mov	r4, #-1
	b	.L634
.L633:
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE115:
	movs	r4, #0
.L634:
	add	r3, r7, #12
	mov	r0, r3
.LEHB116:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE116:
	mov	r3, r4
	b	.L638
.L637:
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB117:
	bl	__cxa_end_cleanup(PLT)
.LEHE117:
.L638:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA375:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE375-.LLSDACSB375
.LLSDACSB375:
	.uleb128 .LEHB114-.LFB375
	.uleb128 .LEHE114-.LEHB114
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB115-.LFB375
	.uleb128 .LEHE115-.LEHB115
	.uleb128 .L637-.LFB375
	.uleb128 0
	.uleb128 .LEHB116-.LFB375
	.uleb128 .LEHE116-.LEHB116
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB117-.LFB375
	.uleb128 .LEHE117-.LEHB117
	.uleb128 0
	.uleb128 0
.LLSDACSE375:
	.section	.text.sq_typeof
	.fnend
	.size	sq_typeof, .-sq_typeof
	.section	.text.sq_tostring,"ax",%progbits
	.align	2
	.global	sq_tostring
	.thumb
	.thumb_func
	.type	sq_tostring, %function
sq_tostring:
	.fnstart
.LFB376:
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
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
.LEHB118:
	bl	_Z9stack_getP4SQVMi(PLT)
.LEHE118:
	mov	r3, r0
	str	r3, [r7, #20]
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #20]
	mov	r2, r3
.LEHB119:
	bl	_ZN4SQVM8ToStringERK11SQObjectPtrRS0_(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L640
	mov	r4, #-1
	b	.L641
.L640:
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE119:
	movs	r4, #0
.L641:
	add	r3, r7, #12
	mov	r0, r3
.LEHB120:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE120:
	mov	r3, r4
	b	.L645
.L644:
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB121:
	bl	__cxa_end_cleanup(PLT)
.LEHE121:
.L645:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA376:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE376-.LLSDACSB376
.LLSDACSB376:
	.uleb128 .LEHB118-.LFB376
	.uleb128 .LEHE118-.LEHB118
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB119-.LFB376
	.uleb128 .LEHE119-.LEHB119
	.uleb128 .L644-.LFB376
	.uleb128 0
	.uleb128 .LEHB120-.LFB376
	.uleb128 .LEHE120-.LEHB120
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB121-.LFB376
	.uleb128 .LEHE121-.LEHB121
	.uleb128 0
	.uleb128 0
.LLSDACSE376:
	.section	.text.sq_tostring
	.fnend
	.size	sq_tostring, .-sq_tostring
	.section	.text.sq_tobool,"ax",%progbits
	.align	2
	.global	sq_tobool
	.thumb
	.thumb_func
	.type	sq_tobool, %function
sq_tobool:
	.fnstart
.LFB377:
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
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r0, [r7, #20]
	bl	_ZN4SQVM7IsFalseER11SQObjectPtr(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L647
	movs	r3, #0
	b	.L648
.L647:
	movs	r3, #1
.L648:
	ldr	r2, [r7, #4]
	str	r3, [r2]
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	sq_tobool, .-sq_tobool
	.section	.text.sq_getinteger,"ax",%progbits
	.align	2
	.global	sq_getinteger
	.thumb
	.thumb_func
	.type	sq_getinteger, %function
sq_getinteger:
	.fnstart
.LFB378:
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
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	and	r3, r3, #67108864
	cmp	r3, #0
	beq	.L650
	ldr	r3, [r7, #20]
	ldr	r2, [r3]
	movs	r3, #4
	movt	r3, 1280
	cmp	r2, r3
	bne	.L651
	ldr	r3, [r7, #20]
	flds	s15, [r3, #4]
	ftosizs	s15, s15
	fmrs	r2, s15	@ int
	b	.L652
.L651:
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #4]
.L652:
	ldr	r3, [r7, #4]
	str	r2, [r3]
	movs	r3, #0
	b	.L653
.L650:
	mov	r3, #-1
.L653:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	sq_getinteger, .-sq_getinteger
	.section	.text.sq_getfloat,"ax",%progbits
	.align	2
	.global	sq_getfloat
	.thumb
	.thumb_func
	.type	sq_getfloat, %function
sq_getfloat:
	.fnstart
.LFB379:
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
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	and	r3, r3, #67108864
	cmp	r3, #0
	beq	.L655
	ldr	r3, [r7, #20]
	ldr	r2, [r3]
	movs	r3, #2
	movt	r3, 1280
	cmp	r2, r3
	bne	.L656
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	fmsr	s14, r3	@ int
	fsitos	s15, s14
	b	.L657
.L656:
	ldr	r3, [r7, #20]
	flds	s15, [r3, #4]
.L657:
	ldr	r3, [r7, #4]
	fsts	s15, [r3]
	movs	r3, #0
	b	.L658
.L655:
	mov	r3, #-1
.L658:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	sq_getfloat, .-sq_getfloat
	.section	.text.sq_getbool,"ax",%progbits
	.align	2
	.global	sq_getbool
	.thumb
	.thumb_func
	.type	sq_getbool, %function
sq_getbool:
	.fnstart
.LFB380:
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
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r2, [r3]
	movs	r3, #8
	movt	r3, 256
	cmp	r2, r3
	bne	.L660
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
	movs	r3, #0
	b	.L661
.L660:
	mov	r3, #-1
.L661:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	sq_getbool, .-sq_getbool
	.section	.text.sq_getstring,"ax",%progbits
	.align	2
	.global	sq_getstring
	.thumb
	.thumb_func
	.type	sq_getstring, %function
sq_getstring:
	.fnstart
.LFB381:
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
	movs	r3, #0
	str	r3, [r7, #20]
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	movs	r2, #16
	movt	r2, 2048
	bl	_Z18sq_aux_gettypedargP4SQVMi15tagSQObjectTypePP11SQObjectPtr(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L663
	mov	r3, #-1
	b	.L665
.L663:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	add	r2, r3, #28
	ldr	r3, [r7, #4]
	str	r2, [r3]
	movs	r3, #0
.L665:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	sq_getstring, .-sq_getstring
	.section	.text.sq_getthread,"ax",%progbits
	.align	2
	.global	sq_getthread
	.thumb
	.thumb_func
	.type	sq_getthread, %function
sq_getthread:
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
	movs	r3, #0
	str	r3, [r7, #20]
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	mov	r2, #4096
	movt	r2, 2048
	bl	_Z18sq_aux_gettypedargP4SQVMi15tagSQObjectTypePP11SQObjectPtr(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L667
	mov	r3, #-1
	b	.L669
.L667:
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	movs	r3, #0
.L669:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	sq_getthread, .-sq_getthread
	.section	.text.sq_clone,"ax",%progbits
	.align	2
	.global	sq_clone
	.thumb
	.thumb_func
	.type	sq_clone, %function
sq_clone:
	.fnstart
.LFB383:
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
	ldr	r1, [r7]
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r0, [r7, #4]
	bl	_ZN4SQVM8PushNullEv(PLT)
	ldr	r0, [r7, #4]
	mov	r1, #-1
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #12]
	mov	r2, r3
	bl	_ZN4SQVM5CloneERK11SQObjectPtrRS0_(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L671
	ldr	r0, [r7, #4]
	bl	_ZN4SQVM3PopEv(PLT)
	mov	r3, #-1
	b	.L672
.L671:
	movs	r3, #0
.L672:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	sq_clone, .-sq_clone
	.section	.text.sq_getsize,"ax",%progbits
	.align	2
	.global	sq_getsize
	.thumb
	.thumb_func
	.type	sq_getsize, %function
sq_getsize:
	.fnstart
.LFB384:
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
	ldr	r1, [r7]
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	mov	r2, #16384
	movt	r2, 2048
	cmp	r3, r2
	beq	.L675
	mov	r2, #16384
	movt	r2, 2048
	cmp	r3, r2
	bgt	.L676
	movs	r2, #16
	movt	r2, 2048
	cmp	r3, r2
	beq	.L677
	movs	r2, #64
	movt	r2, 2048
	cmp	r3, r2
	beq	.L678
	b	.L674
.L676:
	movs	r2, #128
	movt	r2, 2560
	cmp	r3, r2
	beq	.L679
	mov	r2, #32768
	movt	r2, 2560
	cmp	r3, r2
	beq	.L680
	movs	r2, #32
	movt	r2, 2560
	cmp	r3, r2
	beq	.L681
	b	.L674
.L677:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #20]
	b	.L682
.L681:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN7SQTable9CountUsedEv(PLT)
	mov	r3, r0
	b	.L682
.L678:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZNK7SQArray4SizeEv(PLT)
	mov	r3, r0
	b	.L682
.L679:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #28]
	b	.L682
.L680:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #28]
	ldr	r3, [r3, #224]
	b	.L682
.L675:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #224]
	b	.L682
.L674:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #8]
	bl	_Z18sq_aux_invalidtypeP4SQVM15tagSQObjectType(PLT)
	mov	r3, r0
.L682:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	sq_getsize, .-sq_getsize
	.section	.text.sq_gethash,"ax",%progbits
	.align	2
	.global	sq_gethash
	.thumb
	.thumb_func
	.type	sq_gethash, %function
sq_gethash:
	.fnstart
.LFB385:
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
	ldr	r1, [r7]
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r0, [r7, #12]
	bl	_Z7HashObjRK11SQObjectPtr(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	sq_gethash, .-sq_gethash
	.section	.text.sq_getuserdata,"ax",%progbits
	.align	2
	.global	sq_getuserdata
	.thumb
	.thumb_func
	.type	sq_getuserdata, %function
sq_getuserdata:
	.fnstart
.LFB386:
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
	movs	r3, #0
	str	r3, [r7, #20]
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	movs	r2, #128
	movt	r2, 2560
	bl	_Z18sq_aux_gettypedargP4SQVMi15tagSQObjectTypePP11SQObjectPtr(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L686
	mov	r3, #-1
	b	.L689
.L686:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	adds	r3, r3, #40
	adds	r3, r3, #3
	bic	r3, r3, #3
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L688
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #36]
	ldr	r3, [r7]
	str	r2, [r3]
.L688:
	movs	r3, #0
.L689:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	sq_getuserdata, .-sq_getuserdata
	.section	.rodata
	.align	2
.LC19:
	.ascii	"invalid object type\000"
	.section	.text.sq_settypetag,"ax",%progbits
	.align	2
	.global	sq_settypetag
	.thumb
	.thumb_func
	.type	sq_settypetag, %function
sq_settypetag:
	.fnstart
.LFB387:
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
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	mov	r2, r3
	mov	r3, #16384
	movt	r3, 2048
	cmp	r2, r3
	beq	.L692
	movs	r3, #128
	movt	r3, 2560
	cmp	r2, r3
	bne	.L696
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #4]
	str	r2, [r3, #36]
	b	.L694
.L692:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #4]
	str	r2, [r3, #208]
	b	.L694
.L696:
	ldr	r0, [r7, #12]
	ldr	r3, .L697
.LPIC63:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L695
.L694:
	movs	r3, #0
.L695:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L698:
	.align	2
.L697:
	.word	.LC19-(.LPIC63+4)
	.fnend
	.size	sq_settypetag, .-sq_settypetag
	.section	.text.sq_getobjtypetag,"ax",%progbits
	.align	2
	.global	sq_getobjtypetag
	.thumb
	.thumb_func
	.type	sq_getobjtypetag, %function
sq_getobjtypetag:
	.fnstart
.LFB388:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r2, r3
	movs	r3, #128
	movt	r3, 2560
	cmp	r2, r3
	beq	.L701
	mov	r3, #32768
	movt	r3, 2560
	cmp	r2, r3
	beq	.L702
	mov	r3, #16384
	movt	r3, 2048
	cmp	r2, r3
	beq	.L703
	b	.L706
.L702:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #28]
	ldr	r2, [r3, #208]
	ldr	r3, [r7]
	str	r2, [r3]
	b	.L704
.L701:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #36]
	ldr	r3, [r7]
	str	r2, [r3]
	b	.L704
.L703:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #208]
	ldr	r3, [r7]
	str	r2, [r3]
	b	.L704
.L706:
	mov	r3, #-1
	b	.L705
.L704:
	movs	r3, #0
.L705:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	sq_getobjtypetag, .-sq_getobjtypetag
	.section	.text.sq_gettypetag,"ax",%progbits
	.align	2
	.global	sq_gettypetag
	.thumb
	.thumb_func
	.type	sq_gettypetag, %function
sq_gettypetag:
	.fnstart
.LFB389:
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
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	sq_getobjtypetag(PLT)
	mov	r3, r0
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L708
	ldr	r0, [r7, #12]
	ldr	r3, .L710
.LPIC64:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L709
.L708:
	movs	r3, #0
.L709:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L711:
	.align	2
.L710:
	.word	.LC19-(.LPIC64+4)
	.fnend
	.size	sq_gettypetag, .-sq_gettypetag
	.section	.text.sq_getuserpointer,"ax",%progbits
	.align	2
	.global	sq_getuserpointer
	.thumb
	.thumb_func
	.type	sq_getuserpointer, %function
sq_getuserpointer:
	.fnstart
.LFB390:
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
	movs	r3, #0
	str	r3, [r7, #20]
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	mov	r2, #2048
	bl	_Z18sq_aux_gettypedargP4SQVMi15tagSQObjectTypePP11SQObjectPtr(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L713
	mov	r3, #-1
	b	.L715
.L713:
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	movs	r3, #0
.L715:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	sq_getuserpointer, .-sq_getuserpointer
	.section	.rodata
	.align	2
.LC20:
	.ascii	"the object is not a class instance\000"
	.section	.text.sq_setinstanceup,"ax",%progbits
	.align	2
	.global	sq_setinstanceup
	.thumb
	.thumb_func
	.type	sq_setinstanceup, %function
sq_setinstanceup:
	.fnstart
.LFB391:
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
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r2, [r3]
	mov	r3, #32768
	movt	r3, 2560
	cmp	r2, r3
	beq	.L717
	ldr	r0, [r7, #12]
	ldr	r3, .L719
.LPIC65:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L718
.L717:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #4]
	str	r2, [r3, #32]
	movs	r3, #0
.L718:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L720:
	.align	2
.L719:
	.word	.LC20-(.LPIC65+4)
	.fnend
	.size	sq_setinstanceup, .-sq_setinstanceup
	.section	.rodata
	.align	2
.LC21:
	.ascii	"the object is not a class\000"
	.align	2
.LC22:
	.ascii	"the class is locked\000"
	.section	.text.sq_setclassudsize,"ax",%progbits
	.align	2
	.global	sq_setclassudsize
	.thumb
	.thumb_func
	.type	sq_setclassudsize, %function
sq_setclassudsize:
	.fnstart
.LFB392:
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
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r2, [r3]
	mov	r3, #16384
	movt	r3, 2048
	cmp	r2, r3
	beq	.L722
	ldr	r0, [r7, #12]
	ldr	r3, .L725
.LPIC66:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L723
.L722:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	ldrb	r3, [r3, #216]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L724
	ldr	r0, [r7, #12]
	ldr	r3, .L725+4
.LPIC67:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L723
.L724:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #4]
	str	r2, [r3, #224]
	movs	r3, #0
.L723:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L726:
	.align	2
.L725:
	.word	.LC21-(.LPIC66+4)
	.word	.LC22-(.LPIC67+4)
	.fnend
	.size	sq_setclassudsize, .-sq_setclassudsize
	.section	.rodata
	.align	2
.LC23:
	.ascii	"invalid type tag\000"
	.section	.text.sq_getinstanceup,"ax",%progbits
	.align	2
	.global	sq_getinstanceup
	.thumb
	.thumb_func
	.type	sq_getinstanceup, %function
sq_getinstanceup:
	.fnstart
.LFB393:
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
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldr	r2, [r3]
	mov	r3, #32768
	movt	r3, 2560
	cmp	r2, r3
	beq	.L728
	ldr	r0, [r7, #12]
	ldr	r3, .L733
.LPIC68:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L729
.L728:
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L730
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #28]
	str	r3, [r7, #20]
.L732:
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #208]
	ldr	r3, [r7]
	cmp	r2, r3
	bne	.L731
	movs	r3, #0
	b	.L729
.L731:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #28]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L732
	ldr	r0, [r7, #12]
	ldr	r3, .L733+4
.LPIC69:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L729
.L730:
	movs	r3, #0
.L729:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L734:
	.align	2
.L733:
	.word	.LC20-(.LPIC68+4)
	.word	.LC23-(.LPIC69+4)
	.fnend
	.size	sq_getinstanceup, .-sq_getinstanceup
	.section	.text.sq_gettop,"ax",%progbits
	.align	2
	.global	sq_gettop
	.thumb
	.thumb_func
	.type	sq_gettop, %function
sq_gettop:
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
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	subs	r3, r2, r3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	sq_gettop, .-sq_gettop
	.section	.text.sq_settop,"ax",%progbits
	.align	2
	.global	sq_settop
	.thumb
	.thumb_func
	.type	sq_settop, %function
sq_settop:
	.fnstart
.LFB395:
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
	ldr	r2, [r7, #12]
	ldr	r3, [r7]
	cmp	r2, r3
	ble	.L738
	ldr	r2, [r7, #12]
	ldr	r3, [r7]
	subs	r3, r2, r3
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	sq_pop(PLT)
	b	.L737
.L738:
	b	.L740
.L741:
	ldr	r0, [r7, #4]
	bl	sq_pushnull(PLT)
.L740:
	ldr	r3, [r7, #12]
	adds	r2, r3, #1
	str	r2, [r7, #12]
	ldr	r2, [r7]
	cmp	r3, r2
	ite	lt
	movlt	r3, #1
	movge	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L741
.L737:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	sq_settop, .-sq_settop
	.section	.rodata
	.align	2
.LC24:
	.ascii	"v->_top >= nelemstopop\000"
	.align	2
.LC25:
	.ascii	"../../../libs/squirrel/squirrel/sqapi.cpp\000"
	.section	.text.sq_pop,"ax",%progbits
	.align	2
	.global	sq_pop
	.thumb
	.thumb_func
	.type	sq_pop, %function
sq_pop:
	.fnstart
.LFB396:
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
	ldr	r2, [r3, #36]
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L743
	ldr	r3, .L744
.LPIC70:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L744+4
.LPIC71:
	add	r3, pc
	mov	r1, r3
	movw	r2, #766
	ldr	r3, .L744+8
.LPIC72:
	add	r3, pc
	bl	__assert_fail(PLT)
.L743:
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	_ZN4SQVM3PopEi(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L745:
	.align	2
.L744:
	.word	.LC24-(.LPIC70+4)
	.word	.LC25-(.LPIC71+4)
	.word	_ZZ6sq_popE19__PRETTY_FUNCTION__-(.LPIC72+4)
	.fnend
	.size	sq_pop, .-sq_pop
	.section	.rodata
	.align	2
.LC26:
	.ascii	"v->_top >= 1\000"
	.section	.text.sq_poptop,"ax",%progbits
	.align	2
	.global	sq_poptop
	.thumb
	.thumb_func
	.type	sq_poptop, %function
sq_poptop:
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
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	cmp	r3, #0
	bgt	.L747
	ldr	r3, .L748
.LPIC73:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L748+4
.LPIC74:
	add	r3, pc
	mov	r1, r3
	mov	r2, #772
	ldr	r3, .L748+8
.LPIC75:
	add	r3, pc
	bl	__assert_fail(PLT)
.L747:
	ldr	r0, [r7, #4]
	bl	_ZN4SQVM3PopEv(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L749:
	.align	2
.L748:
	.word	.LC26-(.LPIC73+4)
	.word	.LC25-(.LPIC74+4)
	.word	_ZZ9sq_poptopE19__PRETTY_FUNCTION__-(.LPIC75+4)
	.fnend
	.size	sq_poptop, .-sq_poptop
	.section	.text.sq_remove,"ax",%progbits
	.align	2
	.global	sq_remove
	.thumb
	.thumb_func
	.type	sq_remove, %function
sq_remove:
	.fnstart
.LFB398:
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
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	_ZN4SQVM6RemoveEi(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	sq_remove, .-sq_remove
	.section	.text.sq_cmp,"ax",%progbits
	.align	2
	.global	sq_cmp
	.thumb
	.thumb_func
	.type	sq_cmp, %function
sq_cmp:
	.fnstart
.LFB399:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #20
	sub	sp, sp, #20
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	mov	r1, #-1
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r4, r0
	ldr	r0, [r7, #4]
	mvn	r1, #1
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r2, r0
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	mov	r1, r4
	bl	_ZN4SQVM6ObjCmpERK11SQObjectPtrS2_Ri(PLT)
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	sq_cmp, .-sq_cmp
	.section	.rodata
	.align	2
.LC27:
	.ascii	"null is not a valid key\000"
	.section	.text.sq_newslot,"ax",%progbits
	.align	2
	.global	sq_newslot
	.thumb
	.thumb_func
	.type	sq_newslot, %function
sq_newslot:
	.fnstart
.LFB400:
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
	ldr	r0, [r7, #12]
	bl	sq_gettop(PLT)
	mov	r3, r0
	cmp	r3, #2
	ite	le
	movle	r3, #1
	movgt	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L754
	ldr	r0, [r7, #12]
	ldr	r3, .L759
.LPIC76:
	add	r3, pc
	mov	r1, r3
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
	mov	r3, #-1
	b	.L755
.L754:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r2, [r3]
	movs	r3, #32
	movt	r3, 2560
	cmp	r2, r3
	beq	.L756
	ldr	r3, [r7, #20]
	ldr	r2, [r3]
	mov	r3, #16384
	movt	r3, 2048
	cmp	r2, r3
	bne	.L757
.L756:
	ldr	r0, [r7, #12]
	mvn	r1, #1
	bl	_ZN4SQVM5GetUpEi(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldr	r2, [r3]
	movs	r3, #1
	movt	r3, 256
	cmp	r2, r3
	bne	.L758
	ldr	r0, [r7, #12]
	ldr	r3, .L759+4
.LPIC77:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L755
.L758:
	ldr	r0, [r7, #12]
	mov	r1, #-1
	bl	_ZN4SQVM5GetUpEi(PLT)
	mov	r3, r0
	ldr	r2, [r7, #4]
	cmp	r2, #0
	ite	ne
	movne	r2, #1
	moveq	r2, #0
	uxtb	r2, r2
	str	r2, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #20]
	ldr	r2, [r7, #16]
	bl	_ZN4SQVM7NewSlotERK11SQObjectPtrS2_S2_b(PLT)
	ldr	r0, [r7, #12]
	movs	r1, #2
	bl	_ZN4SQVM3PopEi(PLT)
.L757:
	movs	r3, #0
.L755:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L760:
	.align	2
.L759:
	.word	.LC6-(.LPIC76+4)
	.word	.LC27-(.LPIC77+4)
	.fnend
	.size	sq_newslot, .-sq_newslot
	.section	.text.sq_deleteslot,"ax",%progbits
	.align	2
	.global	sq_deleteslot
	.thumb
	.thumb_func
	.type	sq_deleteslot, %function
sq_deleteslot:
	.fnstart
.LFB401:
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
	ldr	r0, [r7, #12]
.LEHB122:
	bl	sq_gettop(PLT)
	mov	r3, r0
	cmp	r3, #1
	ite	le
	movle	r3, #1
	movgt	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L762
	ldr	r0, [r7, #12]
	ldr	r3, .L774
.LPIC78:
	add	r3, pc
	mov	r1, r3
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
	mov	r4, #-1
	b	.L770
.L762:
	add	r3, r7, #24
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	movs	r2, #32
	movt	r2, 2560
	bl	_Z18sq_aux_gettypedargP4SQVMi15tagSQObjectTypePP11SQObjectPtr(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L764
	mov	r4, #-1
	b	.L770
.L764:
	ldr	r0, [r7, #12]
	mov	r1, #-1
	bl	_ZN4SQVM5GetUpEi(PLT)
	mov	r3, r0
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	ldr	r2, [r3]
	movs	r3, #1
	movt	r3, 256
	cmp	r2, r3
	bne	.L765
	ldr	r0, [r7, #12]
	ldr	r3, .L774+4
.LPIC79:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
.LEHE122:
	mov	r4, r0
	b	.L770
.L765:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r2, [r7, #24]
	add	r3, r7, #16
	ldr	r0, [r7, #12]
	mov	r1, r2
	ldr	r2, [r7, #28]
.LEHB123:
	bl	_ZN4SQVM10DeleteSlotERK11SQObjectPtrS2_RS0_(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L766
	ldr	r0, [r7, #12]
	bl	_ZN4SQVM3PopEv(PLT)
	mov	r4, #-1
	b	.L767
.L766:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L768
	ldr	r0, [r7, #12]
	mov	r1, #-1
	bl	_ZN4SQVM5GetUpEi(PLT)
	mov	r2, r0
	add	r3, r7, #16
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	b	.L769
.L768:
	ldr	r0, [r7, #12]
	bl	_ZN4SQVM3PopEv(PLT)
.LEHE123:
.L769:
	movs	r4, #0
.L767:
	add	r3, r7, #16
	mov	r0, r3
.LEHB124:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE124:
.L770:
	mov	r3, r4
	b	.L773
.L772:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB125:
	bl	__cxa_end_cleanup(PLT)
.LEHE125:
.L773:
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L775:
	.align	2
.L774:
	.word	.LC6-(.LPIC78+4)
	.word	.LC27-(.LPIC79+4)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA401:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE401-.LLSDACSB401
.LLSDACSB401:
	.uleb128 .LEHB122-.LFB401
	.uleb128 .LEHE122-.LEHB122
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB123-.LFB401
	.uleb128 .LEHE123-.LEHB123
	.uleb128 .L772-.LFB401
	.uleb128 0
	.uleb128 .LEHB124-.LFB401
	.uleb128 .LEHE124-.LEHB124
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB125-.LFB401
	.uleb128 .LEHE125-.LEHB125
	.uleb128 0
	.uleb128 0
.LLSDACSE401:
	.section	.text.sq_deleteslot
	.fnend
	.size	sq_deleteslot, .-sq_deleteslot
	.section	.text.sq_set,"ax",%progbits
	.align	2
	.global	sq_set
	.thumb
	.thumb_func
	.type	sq_set, %function
sq_set:
	.fnstart
.LFB402:
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
	ldr	r1, [r7]
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r0, [r7, #4]
	mvn	r1, #1
	bl	_ZN4SQVM5GetUpEi(PLT)
	mov	r4, r0
	ldr	r0, [r7, #4]
	mov	r1, #-1
	bl	_ZN4SQVM5GetUpEi(PLT)
	mov	r3, r0
	movw	r2, #666
	str	r2, [sp]
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #12]
	mov	r2, r4
	bl	_ZN4SQVM3SetERK11SQObjectPtrS2_S2_i(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L777
	ldr	r0, [r7, #4]
	movs	r1, #2
	bl	_ZN4SQVM3PopEi(PLT)
	movs	r3, #0
	b	.L778
.L777:
	mov	r3, #-1
.L778:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	sq_set, .-sq_set
	.section	.rodata
	.align	2
.LC28:
	.ascii	"null key\000"
	.align	2
.LC29:
	.ascii	"rawset works only on array/table/class and instance"
	.ascii	"\000"
	.section	.text.sq_rawset,"ax",%progbits
	.align	2
	.global	sq_rawset
	.thumb
	.thumb_func
	.type	sq_rawset, %function
sq_rawset:
	.fnstart
.LFB403:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	.save {r4, r5, r6, r7, lr}
	.pad #28
	sub	sp, sp, #28
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r0, [r7, #4]
	mvn	r1, #1
	bl	_ZN4SQVM5GetUpEi(PLT)
	mov	r3, r0
	ldr	r2, [r3]
	movs	r3, #1
	movt	r3, 256
	cmp	r2, r3
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L780
	ldr	r0, [r7, #4]
	movs	r1, #2
	bl	_ZN4SQVM3PopEi(PLT)
	ldr	r0, [r7, #4]
	ldr	r3, .L791
.LPIC80:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L781
.L780:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	mov	r2, #16384
	movt	r2, 2048
	cmp	r3, r2
	beq	.L783
	mov	r2, #16384
	movt	r2, 2048
	cmp	r3, r2
	bgt	.L784
	movs	r2, #64
	movt	r2, 2048
	cmp	r3, r2
	beq	.L785
	b	.L782
.L784:
	movs	r2, #32
	movt	r2, 2560
	cmp	r3, r2
	beq	.L786
	mov	r2, #32768
	movt	r2, 2560
	cmp	r3, r2
	beq	.L787
	b	.L782
.L786:
	ldr	r3, [r7, #12]
	ldr	r5, [r3, #4]
	ldr	r0, [r7, #4]
	mvn	r1, #1
	bl	_ZN4SQVM5GetUpEi(PLT)
	mov	r4, r0
	ldr	r0, [r7, #4]
	mov	r1, #-1
	bl	_ZN4SQVM5GetUpEi(PLT)
	mov	r3, r0
	mov	r0, r5
	mov	r1, r4
	mov	r2, r3
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
	ldr	r0, [r7, #4]
	movs	r1, #2
	bl	_ZN4SQVM3PopEi(PLT)
	movs	r3, #0
	b	.L781
.L783:
	ldr	r3, [r7, #12]
	ldr	r6, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r5, [r3, #140]
	ldr	r0, [r7, #4]
	mvn	r1, #1
	bl	_ZN4SQVM5GetUpEi(PLT)
	mov	r4, r0
	ldr	r0, [r7, #4]
	mov	r1, #-1
	bl	_ZN4SQVM5GetUpEi(PLT)
	mov	r3, r0
	movs	r2, #0
	str	r2, [sp]
	mov	r0, r6
	mov	r1, r5
	mov	r2, r4
	bl	_ZN7SQClass7NewSlotEP13SQSharedStateRK11SQObjectPtrS4_b(PLT)
	ldr	r0, [r7, #4]
	movs	r1, #2
	bl	_ZN4SQVM3PopEi(PLT)
	movs	r3, #0
	b	.L781
.L787:
	ldr	r3, [r7, #12]
	ldr	r5, [r3, #4]
	ldr	r0, [r7, #4]
	mvn	r1, #1
	bl	_ZN4SQVM5GetUpEi(PLT)
	mov	r4, r0
	ldr	r0, [r7, #4]
	mov	r1, #-1
	bl	_ZN4SQVM5GetUpEi(PLT)
	mov	r3, r0
	mov	r0, r5
	mov	r1, r4
	mov	r2, r3
	bl	_ZN10SQInstance3SetERK11SQObjectPtrS2_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L788
	ldr	r0, [r7, #4]
	movs	r1, #2
	bl	_ZN4SQVM3PopEi(PLT)
	movs	r3, #0
	b	.L781
.L788:
	b	.L789
.L785:
	ldr	r0, [r7, #4]
	mvn	r1, #1
	bl	_ZN4SQVM5GetUpEi(PLT)
	mov	r4, r0
	ldr	r0, [r7, #4]
	mov	r1, #-1
	bl	_ZN4SQVM5GetUpEi(PLT)
	mov	r3, r0
	movs	r2, #0
	str	r2, [sp]
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #12]
	mov	r2, r4
	bl	_ZN4SQVM3SetERK11SQObjectPtrS2_S2_i(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L790
	ldr	r0, [r7, #4]
	movs	r1, #2
	bl	_ZN4SQVM3PopEi(PLT)
	movs	r3, #0
	b	.L781
.L790:
	b	.L789
.L782:
	ldr	r0, [r7, #4]
	movs	r1, #2
	bl	_ZN4SQVM3PopEi(PLT)
	ldr	r0, [r7, #4]
	ldr	r3, .L791+4
.LPIC81:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L781
.L789:
	ldr	r0, [r7, #4]
	mvn	r1, #1
	bl	_ZN4SQVM5GetUpEi(PLT)
	mov	r3, r0
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN4SQVM14Raise_IdxErrorERK11SQObjectPtr(PLT)
	mov	r3, #-1
.L781:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L792:
	.align	2
.L791:
	.word	.LC28-(.LPIC80+4)
	.word	.LC29-(.LPIC81+4)
	.fnend
	.size	sq_rawset, .-sq_rawset
	.section	.rodata
	.align	2
.LC30:
	.ascii	"new member only works with classes\000"
	.section	.text.sq_newmember,"ax",%progbits
	.align	2
	.global	sq_newmember
	.thumb
	.thumb_func
	.type	sq_newmember, %function
sq_newmember:
	.fnstart
.LFB404:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #40
	sub	sp, sp, #40
	.setfp r7, sp, #16
	add	r7, sp, #16
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r2, [r3]
	mov	r3, #16384
	movt	r3, 2048
	cmp	r2, r3
	beq	.L794
	ldr	r0, [r7, #12]
	ldr	r3, .L798
.LPIC82:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L795
.L794:
	ldr	r0, [r7, #12]
	mvn	r1, #2
	bl	_ZN4SQVM5GetUpEi(PLT)
	mov	r3, r0
	ldr	r2, [r3]
	movs	r3, #1
	movt	r3, 256
	cmp	r2, r3
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L796
	ldr	r0, [r7, #12]
	ldr	r3, .L798+4
.LPIC83:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L795
.L796:
	ldr	r0, [r7, #12]
	mvn	r1, #2
	bl	_ZN4SQVM5GetUpEi(PLT)
	mov	r5, r0
	ldr	r0, [r7, #12]
	mvn	r1, #1
	bl	_ZN4SQVM5GetUpEi(PLT)
	mov	r4, r0
	ldr	r0, [r7, #12]
	mov	r1, #-1
	bl	_ZN4SQVM5GetUpEi(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	str	r2, [sp]
	str	r3, [sp, #4]
	movs	r3, #0
	str	r3, [sp, #8]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #20]
	mov	r2, r5
	mov	r3, r4
	bl	_ZN4SQVM8NewSlotAERK11SQObjectPtrS2_S2_S2_bb(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L797
	mov	r3, #-1
	b	.L795
.L797:
	movs	r3, #0
.L795:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L799:
	.align	2
.L798:
	.word	.LC30-(.LPIC82+4)
	.word	.LC28-(.LPIC83+4)
	.fnend
	.size	sq_newmember, .-sq_newmember
	.section	.text.sq_rawnewmember,"ax",%progbits
	.align	2
	.global	sq_rawnewmember
	.thumb
	.thumb_func
	.type	sq_rawnewmember, %function
sq_rawnewmember:
	.fnstart
.LFB405:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #40
	sub	sp, sp, #40
	.setfp r7, sp, #16
	add	r7, sp, #16
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r2, [r3]
	mov	r3, #16384
	movt	r3, 2048
	cmp	r2, r3
	beq	.L801
	ldr	r0, [r7, #12]
	ldr	r3, .L805
.LPIC84:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L802
.L801:
	ldr	r0, [r7, #12]
	mvn	r1, #2
	bl	_ZN4SQVM5GetUpEi(PLT)
	mov	r3, r0
	ldr	r2, [r3]
	movs	r3, #1
	movt	r3, 256
	cmp	r2, r3
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L803
	ldr	r0, [r7, #12]
	ldr	r3, .L805+4
.LPIC85:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L802
.L803:
	ldr	r0, [r7, #12]
	mvn	r1, #2
	bl	_ZN4SQVM5GetUpEi(PLT)
	mov	r5, r0
	ldr	r0, [r7, #12]
	mvn	r1, #1
	bl	_ZN4SQVM5GetUpEi(PLT)
	mov	r4, r0
	ldr	r0, [r7, #12]
	mov	r1, #-1
	bl	_ZN4SQVM5GetUpEi(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	str	r2, [sp]
	str	r3, [sp, #4]
	movs	r3, #1
	str	r3, [sp, #8]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #20]
	mov	r2, r5
	mov	r3, r4
	bl	_ZN4SQVM8NewSlotAERK11SQObjectPtrS2_S2_S2_bb(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L804
	mov	r3, #-1
	b	.L802
.L804:
	movs	r3, #0
.L802:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L806:
	.align	2
.L805:
	.word	.LC30-(.LPIC84+4)
	.word	.LC28-(.LPIC85+4)
	.fnend
	.size	sq_rawnewmember, .-sq_rawnewmember
	.section	.rodata
	.align	2
.LC31:
	.ascii	"delagate cycle\000"
	.section	.text.sq_setdelegate,"ax",%progbits
	.align	2
	.global	sq_setdelegate
	.thumb
	.thumb_func
	.type	sq_setdelegate, %function
sq_setdelegate:
	.fnstart
.LFB406:
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
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r0, [r7, #4]
	mov	r1, #-1
	bl	_ZN4SQVM5GetUpEi(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r2, [r7, #12]
	movs	r3, #32
	movt	r3, 2560
	cmp	r2, r3
	beq	.L809
	movs	r3, #128
	movt	r3, 2560
	cmp	r2, r3
	beq	.L810
	b	.L820
.L809:
	ldr	r3, [r7, #16]
	ldr	r2, [r3]
	movs	r3, #32
	movt	r3, 2560
	cmp	r2, r3
	bne	.L811
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #4]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQDelegable11SetDelegateEP7SQTable(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L812
	ldr	r0, [r7, #4]
	ldr	r3, .L821
.LPIC86:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L813
.L812:
	ldr	r0, [r7, #4]
	bl	_ZN4SQVM3PopEv(PLT)
	b	.L814
.L811:
	ldr	r3, [r7, #16]
	ldr	r2, [r3]
	movs	r3, #1
	movt	r3, 256
	cmp	r2, r3
	bne	.L815
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	mov	r0, r3
	movs	r1, #0
	bl	_ZN11SQDelegable11SetDelegateEP7SQTable(PLT)
	ldr	r0, [r7, #4]
	bl	_ZN4SQVM3PopEv(PLT)
	b	.L814
.L815:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #12]
	bl	_Z18sq_aux_invalidtypeP4SQVM15tagSQObjectType(PLT)
	mov	r3, r0
	b	.L813
.L814:
	b	.L816
.L810:
	ldr	r3, [r7, #16]
	ldr	r2, [r3]
	movs	r3, #32
	movt	r3, 2560
	cmp	r2, r3
	bne	.L817
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #4]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQDelegable11SetDelegateEP7SQTable(PLT)
	ldr	r0, [r7, #4]
	bl	_ZN4SQVM3PopEv(PLT)
	b	.L818
.L817:
	ldr	r3, [r7, #16]
	ldr	r2, [r3]
	movs	r3, #1
	movt	r3, 256
	cmp	r2, r3
	bne	.L819
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	mov	r0, r3
	movs	r1, #0
	bl	_ZN11SQDelegable11SetDelegateEP7SQTable(PLT)
	ldr	r0, [r7, #4]
	bl	_ZN4SQVM3PopEv(PLT)
	b	.L818
.L819:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #12]
	bl	_Z18sq_aux_invalidtypeP4SQVM15tagSQObjectType(PLT)
	mov	r3, r0
	b	.L813
.L818:
	b	.L816
.L820:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #12]
	bl	_Z18sq_aux_invalidtypeP4SQVM15tagSQObjectType(PLT)
	mov	r3, r0
	b	.L813
.L816:
	movs	r3, #0
.L813:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L822:
	.align	2
.L821:
	.word	.LC31-(.LPIC86+4)
	.fnend
	.size	sq_setdelegate, .-sq_setdelegate
	.section	.text.sq_rawdeleteslot,"ax",%progbits
	.align	2
	.global	sq_rawdeleteslot
	.thumb
	.thumb_func
	.type	sq_rawdeleteslot, %function
sq_rawdeleteslot:
	.fnstart
.LFB407:
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
	ldr	r0, [r7, #12]
.LEHB126:
	bl	sq_gettop(PLT)
	mov	r3, r0
	cmp	r3, #1
	ite	le
	movle	r3, #1
	movgt	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L824
	ldr	r0, [r7, #12]
	ldr	r3, .L834
.LPIC87:
	add	r3, pc
	mov	r1, r3
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
	mov	r4, #-1
	b	.L830
.L824:
	add	r3, r7, #24
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	movs	r2, #32
	movt	r2, 2560
	bl	_Z18sq_aux_gettypedargP4SQVMi15tagSQObjectTypePP11SQObjectPtr(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L826
	mov	r4, #-1
	b	.L830
.L826:
	ldr	r0, [r7, #12]
	mov	r1, #-1
	bl	_ZN4SQVM5GetUpEi(PLT)
.LEHE126:
	mov	r3, r0
	str	r3, [r7, #28]
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #4]
	add	r3, r7, #16
	mov	r0, r2
	ldr	r1, [r7, #28]
	mov	r2, r3
.LEHB127:
	bl	_ZN7SQTable3GetERK11SQObjectPtrRS0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L827
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r1, [r7, #28]
	bl	_ZN7SQTable6RemoveERK11SQObjectPtr(PLT)
.L827:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L828
	ldr	r0, [r7, #12]
	mov	r1, #-1
	bl	_ZN4SQVM5GetUpEi(PLT)
	mov	r2, r0
	add	r3, r7, #16
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	b	.L829
.L828:
	ldr	r0, [r7, #12]
	bl	_ZN4SQVM3PopEv(PLT)
.LEHE127:
.L829:
	movs	r4, #0
	add	r3, r7, #16
	mov	r0, r3
.LEHB128:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE128:
.L830:
	mov	r3, r4
	b	.L833
.L832:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB129:
	bl	__cxa_end_cleanup(PLT)
.LEHE129:
.L833:
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L835:
	.align	2
.L834:
	.word	.LC6-(.LPIC87+4)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA407:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE407-.LLSDACSB407
.LLSDACSB407:
	.uleb128 .LEHB126-.LFB407
	.uleb128 .LEHE126-.LEHB126
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB127-.LFB407
	.uleb128 .LEHE127-.LEHB127
	.uleb128 .L832-.LFB407
	.uleb128 0
	.uleb128 .LEHB128-.LFB407
	.uleb128 .LEHE128-.LEHB128
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB129-.LFB407
	.uleb128 .LEHE129-.LEHB129
	.uleb128 0
	.uleb128 0
.LLSDACSE407:
	.section	.text.sq_rawdeleteslot
	.fnend
	.size	sq_rawdeleteslot, .-sq_rawdeleteslot
	.section	.rodata
	.align	2
.LC32:
	.ascii	"wrong type\000"
	.section	.text.sq_getdelegate,"ax",%progbits
	.align	2
	.global	sq_getdelegate
	.thumb
	.thumb_func
	.type	sq_getdelegate, %function
sq_getdelegate:
	.fnstart
.LFB408:
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
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
.LEHB130:
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	mov	r2, r3
	movs	r3, #32
	movt	r3, 2560
	cmp	r2, r3
	beq	.L838
	movs	r3, #128
	movt	r3, 2560
	cmp	r2, r3
	bne	.L844
.L838:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	bne	.L839
	ldr	r0, [r7, #4]
	bl	_ZN4SQVM8PushNullEv(PLT)
.LEHE130:
	b	.L840
.L839:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #24]
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP7SQTable(PLT)
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	mov	r1, r3
.LEHB131:
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE131:
	add	r3, r7, #12
	mov	r0, r3
.LEHB132:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L840
.L844:
	ldr	r0, [r7, #4]
	ldr	r3, .L846
.LPIC88:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
.LEHE132:
	mov	r3, r0
	b	.L845
.L840:
	movs	r3, #0
	b	.L845
.L843:
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB133:
	bl	__cxa_end_cleanup(PLT)
.LEHE133:
.L845:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L847:
	.align	2
.L846:
	.word	.LC32-(.LPIC88+4)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA408:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE408-.LLSDACSB408
.LLSDACSB408:
	.uleb128 .LEHB130-.LFB408
	.uleb128 .LEHE130-.LEHB130
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB131-.LFB408
	.uleb128 .LEHE131-.LEHB131
	.uleb128 .L843-.LFB408
	.uleb128 0
	.uleb128 .LEHB132-.LFB408
	.uleb128 .LEHE132-.LEHB132
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB133-.LFB408
	.uleb128 .LEHE133-.LEHB133
	.uleb128 0
	.uleb128 0
.LLSDACSE408:
	.section	.text.sq_getdelegate
	.fnend
	.size	sq_getdelegate, .-sq_getdelegate
	.section	.text.sq_get,"ax",%progbits
	.align	2
	.global	sq_get
	.thumb
	.thumb_func
	.type	sq_get, %function
sq_get:
	.fnstart
.LFB409:
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
	ldr	r1, [r7]
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r0, [r7, #4]
	mov	r1, #-1
	bl	_ZN4SQVM5GetUpEi(PLT)
	mov	r4, r0
	ldr	r0, [r7, #4]
	mov	r1, #-1
	bl	_ZN4SQVM5GetUpEi(PLT)
	mov	r3, r0
	movs	r2, #0
	str	r2, [sp]
	movw	r2, #666
	str	r2, [sp, #4]
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #12]
	mov	r2, r4
	bl	_ZN4SQVM3GetERK11SQObjectPtrS2_RS0_bi(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L849
	movs	r3, #0
	b	.L850
.L849:
	ldr	r0, [r7, #4]
	bl	_ZN4SQVM3PopEv(PLT)
	mov	r3, #-1
.L850:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	sq_get, .-sq_get
	.section	.rodata
	.align	2
.LC33:
	.ascii	"invalid index type for an array\000"
	.align	2
.LC34:
	.ascii	"rawget works only on array/table/instance and class"
	.ascii	"\000"
	.align	2
.LC35:
	.ascii	"the index doesn't exist\000"
	.section	.text.sq_rawget,"ax",%progbits
	.align	2
	.global	sq_rawget
	.thumb
	.thumb_func
	.type	sq_rawget, %function
sq_rawget:
	.fnstart
.LFB410:
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
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	mov	r2, #16384
	movt	r2, 2048
	cmp	r3, r2
	beq	.L853
	mov	r2, #16384
	movt	r2, 2048
	cmp	r3, r2
	bgt	.L854
	movs	r2, #64
	movt	r2, 2048
	cmp	r3, r2
	beq	.L855
	b	.L852
.L854:
	movs	r2, #32
	movt	r2, 2560
	cmp	r3, r2
	beq	.L856
	mov	r2, #32768
	movt	r2, 2560
	cmp	r3, r2
	beq	.L857
	b	.L852
.L856:
	ldr	r3, [r7, #12]
	ldr	r5, [r3, #4]
	ldr	r0, [r7, #4]
	mov	r1, #-1
	bl	_ZN4SQVM5GetUpEi(PLT)
	mov	r4, r0
	ldr	r0, [r7, #4]
	mov	r1, #-1
	bl	_ZN4SQVM5GetUpEi(PLT)
	mov	r3, r0
	mov	r0, r5
	mov	r1, r4
	mov	r2, r3
	bl	_ZN7SQTable3GetERK11SQObjectPtrRS0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L858
	movs	r3, #0
	b	.L859
.L858:
	b	.L860
.L853:
	ldr	r3, [r7, #12]
	ldr	r5, [r3, #4]
	ldr	r0, [r7, #4]
	mov	r1, #-1
	bl	_ZN4SQVM5GetUpEi(PLT)
	mov	r4, r0
	ldr	r0, [r7, #4]
	mov	r1, #-1
	bl	_ZN4SQVM5GetUpEi(PLT)
	mov	r3, r0
	mov	r0, r5
	mov	r1, r4
	mov	r2, r3
	bl	_ZN7SQClass3GetERK11SQObjectPtrRS0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L861
	movs	r3, #0
	b	.L859
.L861:
	b	.L860
.L857:
	ldr	r3, [r7, #12]
	ldr	r5, [r3, #4]
	ldr	r0, [r7, #4]
	mov	r1, #-1
	bl	_ZN4SQVM5GetUpEi(PLT)
	mov	r4, r0
	ldr	r0, [r7, #4]
	mov	r1, #-1
	bl	_ZN4SQVM5GetUpEi(PLT)
	mov	r3, r0
	mov	r0, r5
	mov	r1, r4
	mov	r2, r3
	bl	_ZN10SQInstance3GetERK11SQObjectPtrRS0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L862
	movs	r3, #0
	b	.L859
.L862:
	b	.L860
.L855:
	ldr	r0, [r7, #4]
	mov	r1, #-1
	bl	_ZN4SQVM5GetUpEi(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	and	r3, r3, #67108864
	cmp	r3, #0
	beq	.L863
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #8]
	ldr	r2, [r3]
	movs	r3, #4
	movt	r3, 1280
	cmp	r2, r3
	bne	.L864
	ldr	r3, [r7, #8]
	flds	s15, [r3, #4]
	ftosizs	s15, s15
	fmrs	r5, s15	@ int
	b	.L865
.L864:
	ldr	r3, [r7, #8]
	ldr	r5, [r3, #4]
.L865:
	ldr	r0, [r7, #4]
	mov	r1, #-1
	bl	_ZN4SQVM5GetUpEi(PLT)
	mov	r3, r0
	mov	r0, r4
	mov	r1, r5
	mov	r2, r3
	bl	_ZN7SQArray3GetEiR11SQObjectPtr(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L866
	movs	r3, #0
	b	.L859
.L863:
	ldr	r0, [r7, #4]
	bl	_ZN4SQVM3PopEv(PLT)
	ldr	r0, [r7, #4]
	ldr	r3, .L867
.LPIC89:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L859
.L866:
	b	.L860
.L852:
	ldr	r0, [r7, #4]
	bl	_ZN4SQVM3PopEv(PLT)
	ldr	r0, [r7, #4]
	ldr	r3, .L867+4
.LPIC90:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L859
.L860:
	ldr	r0, [r7, #4]
	bl	_ZN4SQVM3PopEv(PLT)
	ldr	r0, [r7, #4]
	ldr	r3, .L867+8
.LPIC91:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
.L859:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L868:
	.align	2
.L867:
	.word	.LC33-(.LPIC89+4)
	.word	.LC34-(.LPIC90+4)
	.word	.LC35-(.LPIC91+4)
	.fnend
	.size	sq_rawget, .-sq_rawget
	.section	.text.sq_getstackobj,"ax",%progbits
	.align	2
	.global	sq_getstackobj
	.thumb
	.thumb_func
	.type	sq_getstackobj, %function
sq_getstackobj:
	.fnstart
.LFB411:
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
	ldr	r1, [r7, #8]
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	sq_getstackobj, .-sq_getstackobj
	.section	.text.sq_getlocal,"ax",%progbits
	.align	2
	.global	sq_getlocal
	.thumb
	.thumb_func
	.type	sq_getlocal, %function
sq_getlocal:
	.fnstart
.LFB412:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #56
	sub	sp, sp, #56
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #100]
	str	r3, [r7, #36]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #8]
	subs	r3, r2, r3
	subs	r3, r3, #1
	str	r3, [r7, #32]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #40]
	str	r3, [r7, #44]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcs	.L872
	movs	r3, #0
	str	r3, [r7, #40]
	b	.L873
.L874:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #96]
	ldr	r1, [r7, #36]
	ldr	r3, [r7, #40]
	subs	r3, r1, r3
	movs	r1, #44
	mul	r3, r1, r3
	subs	r3, r3, #44
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #24]
	ldr	r2, [r7, #44]
	subs	r3, r2, r3
	str	r3, [r7, #44]
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	str	r3, [r7, #40]
.L873:
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L874
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #96]
	ldr	r3, [r7, #32]
	movs	r1, #44
	mul	r3, r1, r3
	add	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #8]
	mov	r3, #256
	movt	r3, 2048
	cmp	r2, r3
	beq	.L875
	movs	r3, #0
	b	.L876
.L875:
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #12]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #32]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #92]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	ble	.L877
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #4]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #24]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	ldr	r3, [r7, #16]
	ldr	r1, [r3, #96]
	ldr	r2, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r3, [r3, #8]
	adds	r3, r3, #28
	b	.L876
.L877:
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #92]
	ldr	r2, [r7, #4]
	subs	r3, r2, r3
	str	r3, [r7, #4]
	ldr	r3, [r7, #44]
	ldr	r2, [r7, #24]
	ldr	r2, [r2]
	mov	r1, r2
	ldr	r2, [r7, #16]
	adds	r2, r2, #112
	subs	r2, r1, r2
	asrs	r2, r2, #3
	subs	r2, r2, #1
	str	r2, [sp]
	ldr	r0, [r7, #16]
	ldr	r1, [r7, #12]
	mov	r2, r3
	ldr	r3, [r7, #4]
	bl	_ZN15SQFunctionProto8GetLocalEP4SQVMjjj(PLT)
	mov	r3, r0
	b	.L876
.L872:
	movs	r3, #0
.L876:
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	sq_getlocal, .-sq_getlocal
	.section	.text.sq_pushobject,"ax",%progbits
	.align	2
	.global	sq_pushobject
	.thumb
	.thumb_func
	.type	sq_pushobject, %function
sq_pushobject:
	.fnstart
.LFB413:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #24
	sub	sp, sp, #24
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	adds	r3, r7, #4
	stmia	r3, {r1, r2}
	add	r2, r7, #16
	adds	r3, r7, #4
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1ERK11tagSQObject(PLT)
	add	r3, r7, #16
	ldr	r0, [r7, #12]
	mov	r1, r3
.LEHB134:
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE134:
	add	r3, r7, #16
	mov	r0, r3
.LEHB135:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE135:
	b	.L881
.L880:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB136:
	bl	__cxa_end_cleanup(PLT)
.LEHE136:
.L881:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA413:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE413-.LLSDACSB413
.LLSDACSB413:
	.uleb128 .LEHB134-.LFB413
	.uleb128 .LEHE134-.LEHB134
	.uleb128 .L880-.LFB413
	.uleb128 0
	.uleb128 .LEHB135-.LFB413
	.uleb128 .LEHE135-.LEHB135
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB136-.LFB413
	.uleb128 .LEHE136-.LEHB136
	.uleb128 0
	.uleb128 0
.LLSDACSE413:
	.section	.text.sq_pushobject
	.fnend
	.size	sq_pushobject, .-sq_pushobject
	.section	.text.sq_resetobject,"ax",%progbits
	.align	2
	.global	sq_resetobject
	.thumb
	.thumb_func
	.type	sq_resetobject, %function
sq_resetobject:
	.fnstart
.LFB414:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r2, [r7, #4]
	movs	r3, #1
	movt	r3, 256
	str	r3, [r2]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	sq_resetobject, .-sq_resetobject
	.section	.text.sq_throwerror,"ax",%progbits
	.align	2
	.global	sq_throwerror
	.thumb
	.thumb_func
	.type	sq_throwerror, %function
sq_throwerror:
	.fnstart
.LFB415:
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
	add	r4, r3, #56
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #140]
	mov	r0, r3
	ldr	r1, [r7]
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEP8SQString(PLT)
	mov	r3, #-1
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	sq_throwerror, .-sq_throwerror
	.section	.text.sq_throwobject,"ax",%progbits
	.align	2
	.global	sq_throwobject
	.thumb
	.thumb_func
	.type	sq_throwobject, %function
sq_throwobject:
	.fnstart
.LFB416:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #12
	sub	sp, sp, #12
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	add	r4, r3, #56
	ldr	r0, [r7, #4]
	mov	r1, #-1
	bl	_ZN4SQVM5GetUpEi(PLT)
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	ldr	r0, [r7, #4]
	bl	_ZN4SQVM3PopEv(PLT)
	mov	r3, #-1
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	sq_throwobject, .-sq_throwobject
	.section	.text.sq_reseterror,"ax",%progbits
	.align	2
	.global	sq_reseterror
	.thumb
	.thumb_func
	.type	sq_reseterror, %function
sq_reseterror:
	.fnstart
.LFB417:
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
	adds	r3, r3, #56
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	sq_reseterror, .-sq_reseterror
	.section	.text.sq_getlasterror,"ax",%progbits
	.align	2
	.global	sq_getlasterror
	.thumb
	.thumb_func
	.type	sq_getlasterror, %function
sq_getlasterror:
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
	ldr	r3, [r7, #4]
	adds	r3, r3, #56
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	sq_getlasterror, .-sq_getlasterror
	.section	.rodata
	.align	2
.LC36:
	.ascii	"cannot resize stack while in  a metamethod\000"
	.section	.text.sq_reservestack,"ax",%progbits
	.align	2
	.global	sq_reservestack
	.thumb
	.thumb_func
	.type	sq_reservestack, %function
sq_reservestack:
	.fnstart
.LFB419:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	.save {r4, r5, r6, r7, lr}
	.pad #20
	sub	sp, sp, #20
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	mov	r2, r3
	ldr	r3, [r7]
	adds	r4, r2, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	mov	r0, r3
.LEHB137:
	bl	_ZNK8sqvectorI11SQObjectPtrE4sizeEv(PLT)
	mov	r3, r0
	cmp	r4, r3
	ite	hi
	movhi	r3, #1
	movls	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L890
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #148]
	cmp	r3, #0
	beq	.L891
	ldr	r0, [r7, #4]
	ldr	r3, .L896
.LPIC92:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L895
.L891:
	ldr	r3, [r7, #4]
	add	r5, r3, #24
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4sizeEv(PLT)
	mov	r4, r0
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #36]
	ldr	r3, [r7]
	add	r3, r3, r2
	mov	r6, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4sizeEv(PLT)
.LEHE137:
	mov	r3, r0
	subs	r3, r6, r3
	add	r4, r4, r3
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	add	r3, r7, #8
	mov	r0, r5
	mov	r1, r4
	mov	r2, r3
.LEHB138:
	bl	_ZN8sqvectorI11SQObjectPtrE6resizeEjRKS0_(PLT)
.LEHE138:
	add	r3, r7, #8
	mov	r0, r3
.LEHB139:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE139:
.L890:
	movs	r3, #0
	b	.L895
.L894:
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB140:
	bl	__cxa_end_cleanup(PLT)
.LEHE140:
.L895:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L897:
	.align	2
.L896:
	.word	.LC36-(.LPIC92+4)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA419:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE419-.LLSDACSB419
.LLSDACSB419:
	.uleb128 .LEHB137-.LFB419
	.uleb128 .LEHE137-.LEHB137
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB138-.LFB419
	.uleb128 .LEHE138-.LEHB138
	.uleb128 .L894-.LFB419
	.uleb128 0
	.uleb128 .LEHB139-.LFB419
	.uleb128 .LEHE139-.LEHB139
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB140-.LFB419
	.uleb128 .LEHE140-.LEHB140
	.uleb128 0
	.uleb128 0
.LLSDACSE419:
	.section	.text.sq_reservestack
	.fnend
	.size	sq_reservestack, .-sq_reservestack
	.section	.rodata
	.align	2
.LC37:
	.ascii	"only generators can be resumed\000"
	.section	.text.sq_resume,"ax",%progbits
	.align	2
	.global	sq_resume
	.thumb
	.thumb_func
	.type	sq_resume, %function
sq_resume:
	.fnstart
.LFB420:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #32
	sub	sp, sp, #32
	.setfp r7, sp, #16
	add	r7, sp, #16
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r0, [r7, #12]
	mov	r1, #-1
	bl	_ZN4SQVM5GetUpEi(PLT)
	mov	r3, r0
	ldr	r2, [r3]
	mov	r3, #1024
	movt	r3, 2048
	cmp	r2, r3
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L899
	ldr	r0, [r7, #12]
	bl	_ZN4SQVM8PushNullEv(PLT)
	ldr	r0, [r7, #12]
	mvn	r1, #1
	bl	_ZN4SQVM5GetUpEi(PLT)
	mov	r5, r0
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #36]
	ldr	r0, [r7, #12]
	mov	r1, #-1
	bl	_ZN4SQVM5GetUpEi(PLT)
	mov	r3, r0
	str	r3, [sp]
	ldr	r3, [r7, #4]
	str	r3, [sp, #4]
	movs	r3, #1
	str	r3, [sp, #8]
	ldr	r0, [r7, #12]
	mov	r1, r5
	movs	r2, #0
	mov	r3, r4
	bl	_ZN4SQVM7ExecuteER11SQObjectPtriiS1_jNS_13ExecutionTypeE(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L900
	ldr	r3, [r7, #12]
	adds	r3, r3, #56
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZN4SQVM11Raise_ErrorERK11SQObjectPtr(PLT)
	mov	r3, #-1
	b	.L901
.L900:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L902
	ldr	r0, [r7, #12]
	bl	_ZN4SQVM3PopEv(PLT)
.L902:
	movs	r3, #0
	b	.L901
.L899:
	ldr	r0, [r7, #12]
	ldr	r3, .L903
.LPIC93:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
.L901:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L904:
	.align	2
.L903:
	.word	.LC37-(.LPIC93+4)
	.fnend
	.size	sq_resume, .-sq_resume
	.section	.text.sq_call,"ax",%progbits
	.align	2
	.global	sq_call
	.thumb
	.thumb_func
	.type	sq_call, %function
sq_call:
	.fnstart
.LFB421:
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
	str	r3, [r7]
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #8]
	mvns	r3, r3
	ldr	r0, [r7, #12]
	mov	r1, r3
.LEHB141:
	bl	_ZN4SQVM5GetUpEi(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #36]
	ldr	r3, [r7, #8]
	subs	r3, r1, r3
	ldr	r1, [r7]
	cmp	r1, #0
	ite	ne
	movne	r1, #1
	moveq	r1, #0
	uxtb	r1, r1
	add	r0, r7, #16
	str	r0, [sp]
	str	r1, [sp, #4]
	ldr	r0, [r7, #12]
	mov	r1, r2
	ldr	r2, [r7, #8]
	bl	_ZN4SQVM4CallER11SQObjectPtriiS1_j(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L906
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #152]
	cmp	r3, #0
	bne	.L907
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_ZN4SQVM3PopEi(PLT)
.L907:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L908
	add	r3, r7, #16
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	movs	r4, #0
	b	.L909
.L908:
	movs	r4, #0
	b	.L909
.L906:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_ZN4SQVM3PopEi(PLT)
.LEHE141:
	mov	r4, #-1
.L909:
	add	r3, r7, #16
	mov	r0, r3
.LEHB142:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE142:
	mov	r3, r4
	b	.L913
.L912:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB143:
	bl	__cxa_end_cleanup(PLT)
.LEHE143:
.L913:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA421:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE421-.LLSDACSB421
.LLSDACSB421:
	.uleb128 .LEHB141-.LFB421
	.uleb128 .LEHE141-.LEHB141
	.uleb128 .L912-.LFB421
	.uleb128 0
	.uleb128 .LEHB142-.LFB421
	.uleb128 .LEHE142-.LEHB142
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB143-.LFB421
	.uleb128 .LEHE143-.LEHB143
	.uleb128 0
	.uleb128 0
.LLSDACSE421:
	.section	.text.sq_call
	.fnend
	.size	sq_call, .-sq_call
	.section	.text.sq_suspendvm,"ax",%progbits
	.align	2
	.global	sq_suspendvm
	.thumb
	.thumb_func
	.type	sq_suspendvm, %function
sq_suspendvm:
	.fnstart
.LFB422:
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
	bl	_ZN4SQVM7SuspendEv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	sq_suspendvm, .-sq_suspendvm
	.section	.rodata
	.align	2
.LC38:
	.ascii	"cannot resume a vm that is not running any code\000"
	.section	.text.sq_wakeupvm,"ax",%progbits
	.align	2
	.global	sq_wakeupvm
	.thumb
	.thumb_func
	.type	sq_wakeupvm, %function
sq_wakeupvm:
	.fnstart
.LFB423:
	@ args = 4, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #60
	sub	sp, sp, #60
	.setfp r7, sp, #16
	add	r7, sp, #16
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	add	r3, r7, #28
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #152]
	cmp	r3, #0
	bne	.L917
	ldr	r0, [r7, #12]
	ldr	r3, .L933
.LPIC94:
	add	r3, pc
	mov	r1, r3
.LEHB144:
	bl	sq_throwerror(PLT)
	mov	r4, r0
	b	.L918
.L917:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #160]
	str	r3, [r7, #36]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L919
	ldr	r3, [r7, #36]
	cmp	r3, #-1
	beq	.L920
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #160]
	add	r3, r3, r2
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZN4SQVM5GetAtEi(PLT)
	mov	r4, r0
	ldr	r0, [r7, #12]
	mov	r1, #-1
	bl	_ZN4SQVM5GetUpEi(PLT)
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
.L920:
	ldr	r0, [r7, #12]
	bl	_ZN4SQVM3PopEv(PLT)
	b	.L921
.L919:
	ldr	r3, [r7, #36]
	cmp	r3, #-1
	beq	.L921
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #160]
	add	r3, r3, r2
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZN4SQVM5GetAtEi(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
.LEHE144:
.L921:
	add	r3, r7, #20
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #56]
	cmp	r3, #0
	beq	.L922
	movs	r3, #3
	b	.L923
.L922:
	movs	r3, #2
.L923:
	add	r2, r7, #20
	add	r1, r7, #28
	str	r1, [sp]
	ldr	r1, [r7]
	str	r1, [sp, #4]
	str	r3, [sp, #8]
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, #-1
	mov	r3, #-1
.LEHB145:
	bl	_ZN4SQVM7ExecuteER11SQObjectPtriiS1_jNS_13ExecutionTypeE(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L924
	mov	r4, #-1
	b	.L925
.L924:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L926
	add	r3, r7, #28
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE145:
.L926:
	movs	r4, #0
.L925:
	add	r3, r7, #20
	mov	r0, r3
.LEHB146:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE146:
.L918:
	add	r3, r7, #28
	mov	r0, r3
.LEHB147:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE147:
	mov	r3, r4
	b	.L932
.L931:
	add	r3, r7, #20
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L929
.L930:
.L929:
	add	r3, r7, #28
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB148:
	bl	__cxa_end_cleanup(PLT)
.LEHE148:
.L932:
	mov	r0, r3
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L934:
	.align	2
.L933:
	.word	.LC38-(.LPIC94+4)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA423:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE423-.LLSDACSB423
.LLSDACSB423:
	.uleb128 .LEHB144-.LFB423
	.uleb128 .LEHE144-.LEHB144
	.uleb128 .L930-.LFB423
	.uleb128 0
	.uleb128 .LEHB145-.LFB423
	.uleb128 .LEHE145-.LEHB145
	.uleb128 .L931-.LFB423
	.uleb128 0
	.uleb128 .LEHB146-.LFB423
	.uleb128 .LEHE146-.LEHB146
	.uleb128 .L930-.LFB423
	.uleb128 0
	.uleb128 .LEHB147-.LFB423
	.uleb128 .LEHE147-.LEHB147
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB148-.LFB423
	.uleb128 .LEHE148-.LEHB148
	.uleb128 0
	.uleb128 0
.LLSDACSE423:
	.section	.text.sq_wakeupvm
	.fnend
	.size	sq_wakeupvm, .-sq_wakeupvm
	.section	.text.sq_setreleasehook,"ax",%progbits
	.align	2
	.global	sq_setreleasehook
	.thumb
	.thumb_func
	.type	sq_setreleasehook, %function
sq_setreleasehook:
	.fnstart
.LFB424:
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
	ldr	r0, [r7, #12]
	bl	sq_gettop(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	gt
	movgt	r3, #1
	movle	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L935
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	mov	r2, r3
	movs	r3, #128
	movt	r3, 2560
	cmp	r2, r3
	beq	.L938
	mov	r3, #32768
	movt	r3, 2560
	cmp	r2, r3
	beq	.L939
	mov	r3, #16384
	movt	r3, 2048
	cmp	r2, r3
	beq	.L940
	b	.L941
.L938:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #4]
	str	r2, [r3, #32]
	b	.L941
.L939:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #4]
	str	r2, [r3, #36]
	b	.L941
.L940:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #4]
	str	r2, [r3, #212]
	nop
.L941:
.L935:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	sq_setreleasehook, .-sq_setreleasehook
	.section	.text.sq_setcompilererrorhandler,"ax",%progbits
	.align	2
	.global	sq_setcompilererrorhandler
	.thumb
	.thumb_func
	.type	sq_setcompilererrorhandler, %function
sq_setcompilererrorhandler:
	.fnstart
.LFB425:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #140]
	ldr	r2, [r7]
	str	r2, [r3, #160]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	sq_setcompilererrorhandler, .-sq_setcompilererrorhandler
	.section	.rodata
	.align	2
.LC39:
	.ascii	"a closure with free valiables bound it cannot be se"
	.ascii	"rialized\000"
	.align	2
.LC40:
	.ascii	"io error\000"
	.section	.text.sq_writeclosure,"ax",%progbits
	.align	2
	.global	sq_writeclosure
	.thumb
	.thumb_func
	.type	sq_writeclosure, %function
sq_writeclosure:
	.fnstart
.LFB426:
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
	movs	r3, #0
	str	r3, [r7, #20]
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	mov	r1, #-1
	mov	r2, #256
	movt	r2, 2048
	bl	_Z18sq_aux_gettypedargP4SQVMi15tagSQObjectTypePP11SQObjectPtr(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L944
	mov	r3, #-1
	b	.L949
.L944:
	movw	r3, #64250
	strh	r3, [r7, #18]	@ movhi
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #32]
	ldr	r3, [r3, #92]
	cmp	r3, #0
	beq	.L946
	ldr	r0, [r7, #12]
	ldr	r3, .L950
.LPIC95:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L949
.L946:
	add	r2, r7, #18
	ldr	r3, [r7, #8]
	ldr	r0, [r7, #4]
	mov	r1, r2
	movs	r2, #2
	blx	r3
	mov	r3, r0
	cmp	r3, #2
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L947
	ldr	r0, [r7, #12]
	ldr	r3, .L950+4
.LPIC96:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L949
.L947:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #8]
	bl	_ZN9SQClosure4SaveEP4SQVMPvPFiS2_S2_iE(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L948
	mov	r3, #-1
	b	.L949
.L948:
	movs	r3, #0
.L949:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L951:
	.align	2
.L950:
	.word	.LC39-(.LPIC95+4)
	.word	.LC40-(.LPIC96+4)
	.fnend
	.size	sq_writeclosure, .-sq_writeclosure
	.section	.rodata
	.align	2
.LC41:
	.ascii	"invalid stream\000"
	.section	.text.sq_readclosure,"ax",%progbits
	.align	2
	.global	sq_readclosure
	.thumb
	.thumb_func
	.type	sq_readclosure, %function
sq_readclosure:
	.fnstart
.LFB427:
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
	add	r3, r7, #24
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	add	r2, r7, #22
	ldr	r3, [r7, #8]
	ldr	r0, [r7, #4]
	mov	r1, r2
	movs	r2, #2
.LEHB149:
	blx	r3
	mov	r3, r0
	cmp	r3, #2
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L953
	ldr	r0, [r7, #12]
	ldr	r3, .L961
.LPIC97:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r4, r0
	b	.L954
.L953:
	ldrh	r2, [r7, #22]
	movw	r3, #64250
	cmp	r2, r3
	beq	.L955
	ldr	r0, [r7, #12]
	ldr	r3, .L961+4
.LPIC98:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r4, r0
	b	.L954
.L955:
	add	r3, r7, #24
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #8]
	bl	_ZN9SQClosure4LoadEP4SQVMPvPFiS2_S2_iER11SQObjectPtr(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L956
	mov	r4, #-1
	b	.L954
.L956:
	add	r3, r7, #24
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE149:
	movs	r4, #0
.L954:
	add	r3, r7, #24
	mov	r0, r3
.LEHB150:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE150:
	mov	r3, r4
	b	.L960
.L959:
	add	r3, r7, #24
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB151:
	bl	__cxa_end_cleanup(PLT)
.LEHE151:
.L960:
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L962:
	.align	2
.L961:
	.word	.LC40-(.LPIC97+4)
	.word	.LC41-(.LPIC98+4)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA427:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE427-.LLSDACSB427
.LLSDACSB427:
	.uleb128 .LEHB149-.LFB427
	.uleb128 .LEHE149-.LEHB149
	.uleb128 .L959-.LFB427
	.uleb128 0
	.uleb128 .LEHB150-.LFB427
	.uleb128 .LEHE150-.LEHB150
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB151-.LFB427
	.uleb128 .LEHE151-.LEHB151
	.uleb128 0
	.uleb128 0
.LLSDACSE427:
	.section	.text.sq_readclosure
	.fnend
	.size	sq_readclosure, .-sq_readclosure
	.section	.text.sq_getscratchpad,"ax",%progbits
	.align	2
	.global	sq_getscratchpad
	.thumb
	.thumb_func
	.type	sq_getscratchpad, %function
sq_getscratchpad:
	.fnstart
.LFB428:
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
	ldr	r3, [r3, #140]
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN13SQSharedState13GetScratchPadEi(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	sq_getscratchpad, .-sq_getscratchpad
	.section	.text.sq_resurrectunreachable,"ax",%progbits
	.align	2
	.global	sq_resurrectunreachable
	.thumb
	.thumb_func
	.type	sq_resurrectunreachable, %function
sq_resurrectunreachable:
	.fnstart
.LFB429:
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
	ldr	r3, [r3, #140]
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	_ZN13SQSharedState20ResurrectUnreachableEP4SQVM(PLT)
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	sq_resurrectunreachable, .-sq_resurrectunreachable
	.section	.text.sq_collectgarbage,"ax",%progbits
	.align	2
	.global	sq_collectgarbage
	.thumb
	.thumb_func
	.type	sq_collectgarbage, %function
sq_collectgarbage:
	.fnstart
.LFB430:
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
	ldr	r3, [r3, #140]
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	_ZN13SQSharedState14CollectGarbageEP4SQVM(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	sq_collectgarbage, .-sq_collectgarbage
	.section	.rodata
	.align	2
.LC42:
	.ascii	"no closure in the calls stack\000"
	.section	.text.sq_getcallee,"ax",%progbits
	.align	2
	.global	sq_getcallee
	.thumb
	.thumb_func
	.type	sq_getcallee, %function
sq_getcallee:
	.fnstart
.LFB431:
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
	ldr	r3, [r3, #100]
	cmp	r3, #1
	ble	.L970
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #96]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	movs	r1, #44
	mul	r3, r1, r3
	subs	r3, r3, #88
	add	r3, r3, r2
	adds	r3, r3, #8
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	movs	r3, #0
	b	.L971
.L970:
	ldr	r0, [r7, #4]
	ldr	r3, .L972
.LPIC99:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
.L971:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L973:
	.align	2
.L972:
	.word	.LC42-(.LPIC99+4)
	.fnend
	.size	sq_getcallee, .-sq_getcallee
	.section	.rodata
	.align	2
.LC43:
	.ascii	"@NATIVE\000"
	.section	.text.sq_getfreevariable,"ax",%progbits
	.align	2
	.global	sq_getfreevariable
	.thumb
	.thumb_func
	.type	sq_getfreevariable, %function
sq_getfreevariable:
	.fnstart
.LFB432:
	@ args = 0, pretend = 0, frame = 40
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
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #36]
	ldr	r3, [r7, #32]
	ldr	r3, [r3]
	mov	r2, r3
	mov	r3, #256
	movt	r3, 2048
	cmp	r2, r3
	beq	.L976
	mov	r3, #512
	movt	r3, 2048
	cmp	r2, r3
	beq	.L977
	b	.L979
.L976:
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #4]
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #32]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #92]
	mov	r2, r3
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L978
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #4]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #24]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	ldr	r3, [r7, #24]
	ldr	r1, [r3, #96]
	ldr	r2, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #8]
	adds	r3, r3, #28
	str	r3, [r7, #36]
.L978:
	b	.L979
.L977:
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #4]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #44]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L980
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #4]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	ldr	r3, .L982
.LPIC100:
	add	r3, pc
	str	r3, [r7, #36]
.L980:
	nop
.L979:
	ldr	r3, [r7, #36]
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L983:
	.align	2
.L982:
	.word	.LC43-(.LPIC100+4)
	.fnend
	.size	sq_getfreevariable, .-sq_getfreevariable
	.section	.rodata
	.align	2
.LC44:
	.ascii	"invalid free var index\000"
	.section	.text.sq_setfreevariable,"ax",%progbits
	.align	2
	.global	sq_setfreevariable
	.thumb
	.thumb_func
	.type	sq_setfreevariable, %function
sq_setfreevariable:
	.fnstart
.LFB433:
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
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	mov	r2, r3
	mov	r3, #256
	movt	r3, 2048
	cmp	r2, r3
	beq	.L986
	mov	r3, #512
	movt	r3, 2048
	cmp	r2, r3
	beq	.L987
	b	.L994
.L986:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #32]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #92]
	mov	r2, r3
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L988
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #4]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	ldr	r4, [r3, #24]
	ldr	r0, [r7, #12]
	mov	r1, #-1
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	b	.L991
.L988:
	ldr	r0, [r7, #12]
	ldr	r3, .L995
.LPIC101:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L990
.L987:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #44]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L992
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #4]
	lsls	r3, r3, #3
	adds	r4, r2, r3
	ldr	r0, [r7, #12]
	mov	r1, #-1
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	b	.L991
.L992:
	ldr	r0, [r7, #12]
	ldr	r3, .L995+4
.LPIC102:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L990
.L994:
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_Z18sq_aux_invalidtypeP4SQVM15tagSQObjectType(PLT)
	mov	r3, r0
	b	.L990
.L991:
	ldr	r0, [r7, #12]
	bl	_ZN4SQVM3PopEv(PLT)
	movs	r3, #0
.L990:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L996:
	.align	2
.L995:
	.word	.LC44-(.LPIC101+4)
	.word	.LC44-(.LPIC102+4)
	.fnend
	.size	sq_setfreevariable, .-sq_setfreevariable
	.section	.rodata
	.align	2
.LC45:
	.ascii	"wrong index\000"
	.section	.text.sq_setattributes,"ax",%progbits
	.align	2
	.global	sq_setattributes
	.thumb
	.thumb_func
	.type	sq_setattributes, %function
sq_setattributes:
	.fnstart
.LFB434:
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
	movs	r3, #0
	str	r3, [r7, #20]
	add	r3, r7, #20
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	mov	r2, #16384
	movt	r2, 2048
.LEHB152:
	bl	_Z18sq_aux_gettypedargP4SQVMi15tagSQObjectTypePP11SQObjectPtr(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L998
	mov	r4, #-1
	b	.L1003
.L998:
	ldr	r0, [r7, #4]
	mvn	r1, #1
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #28]
	ldr	r0, [r7, #4]
	mov	r1, #-1
	bl	_Z9stack_getP4SQVMi(PLT)
.LEHE152:
	mov	r3, r0
	str	r3, [r7, #24]
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #28]
	ldr	r2, [r3]
	movs	r3, #1
	movt	r3, 256
	cmp	r2, r3
	bne	.L1000
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	adds	r3, r3, #200
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
.LEHB153:
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	adds	r3, r3, #200
	mov	r0, r3
	ldr	r1, [r7, #24]
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	ldr	r0, [r7, #4]
	movs	r1, #2
	bl	_ZN4SQVM3PopEi(PLT)
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	movs	r4, #0
	b	.L1001
.L1000:
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #4]
	add	r3, r7, #12
	mov	r0, r2
	ldr	r1, [r7, #28]
	mov	r2, r3
	bl	_ZN7SQClass13GetAttributesERK11SQObjectPtrRS0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1002
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r1, [r7, #28]
	ldr	r2, [r7, #24]
	bl	_ZN7SQClass13SetAttributesERK11SQObjectPtrS2_(PLT)
	ldr	r0, [r7, #4]
	movs	r1, #2
	bl	_ZN4SQVM3PopEi(PLT)
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	movs	r4, #0
	b	.L1001
.L1002:
	ldr	r0, [r7, #4]
	ldr	r3, .L1007
.LPIC103:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
.LEHE153:
	mov	r4, r0
.L1001:
	add	r3, r7, #12
	mov	r0, r3
.LEHB154:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE154:
.L1003:
	mov	r3, r4
	b	.L1006
.L1005:
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB155:
	bl	__cxa_end_cleanup(PLT)
.LEHE155:
.L1006:
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L1008:
	.align	2
.L1007:
	.word	.LC45-(.LPIC103+4)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA434:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE434-.LLSDACSB434
.LLSDACSB434:
	.uleb128 .LEHB152-.LFB434
	.uleb128 .LEHE152-.LEHB152
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB153-.LFB434
	.uleb128 .LEHE153-.LEHB153
	.uleb128 .L1005-.LFB434
	.uleb128 0
	.uleb128 .LEHB154-.LFB434
	.uleb128 .LEHE154-.LEHB154
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB155-.LFB434
	.uleb128 .LEHE155-.LEHB155
	.uleb128 0
	.uleb128 0
.LLSDACSE434:
	.section	.text.sq_setattributes
	.fnend
	.size	sq_setattributes, .-sq_setattributes
	.section	.text.sq_getattributes,"ax",%progbits
	.align	2
	.global	sq_getattributes
	.thumb
	.thumb_func
	.type	sq_getattributes, %function
sq_getattributes:
	.fnstart
.LFB435:
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
	movs	r3, #0
	str	r3, [r7, #16]
	add	r3, r7, #16
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	mov	r2, #16384
	movt	r2, 2048
.LEHB156:
	bl	_Z18sq_aux_gettypedargP4SQVMi15tagSQObjectTypePP11SQObjectPtr(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L1010
	mov	r4, #-1
	b	.L1015
.L1010:
	ldr	r0, [r7, #4]
	mov	r1, #-1
	bl	_Z9stack_getP4SQVMi(PLT)
.LEHE156:
	mov	r3, r0
	str	r3, [r7, #20]
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #20]
	ldr	r2, [r3]
	movs	r3, #1
	movt	r3, 256
	cmp	r2, r3
	bne	.L1012
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #4]
	adds	r3, r3, #200
	add	r2, r7, #8
	mov	r0, r2
	mov	r1, r3
.LEHB157:
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	ldr	r0, [r7, #4]
	bl	_ZN4SQVM3PopEv(PLT)
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	movs	r4, #0
	b	.L1013
.L1012:
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #4]
	add	r3, r7, #8
	mov	r0, r2
	ldr	r1, [r7, #20]
	mov	r2, r3
	bl	_ZN7SQClass13GetAttributesERK11SQObjectPtrRS0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1014
	ldr	r0, [r7, #4]
	bl	_ZN4SQVM3PopEv(PLT)
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	movs	r4, #0
	b	.L1013
.L1014:
	ldr	r0, [r7, #4]
	ldr	r3, .L1019
.LPIC104:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
.LEHE157:
	mov	r4, r0
.L1013:
	add	r3, r7, #8
	mov	r0, r3
.LEHB158:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE158:
.L1015:
	mov	r3, r4
	b	.L1018
.L1017:
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB159:
	bl	__cxa_end_cleanup(PLT)
.LEHE159:
.L1018:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L1020:
	.align	2
.L1019:
	.word	.LC45-(.LPIC104+4)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA435:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE435-.LLSDACSB435
.LLSDACSB435:
	.uleb128 .LEHB156-.LFB435
	.uleb128 .LEHE156-.LEHB156
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB157-.LFB435
	.uleb128 .LEHE157-.LEHB157
	.uleb128 .L1017-.LFB435
	.uleb128 0
	.uleb128 .LEHB158-.LFB435
	.uleb128 .LEHE158-.LEHB158
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB159-.LFB435
	.uleb128 .LEHE159-.LEHB159
	.uleb128 0
	.uleb128 0
.LLSDACSE435:
	.section	.text.sq_getattributes
	.fnend
	.size	sq_getattributes, .-sq_getattributes
	.section	.text.sq_getmemberhandle,"ax",%progbits
	.align	2
	.global	sq_getmemberhandle
	.thumb
	.thumb_func
	.type	sq_getmemberhandle, %function
sq_getmemberhandle:
	.fnstart
.LFB436:
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
	movs	r3, #0
	str	r3, [r7, #28]
	add	r3, r7, #28
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	mov	r2, #16384
	movt	r2, 2048
.LEHB160:
	bl	_Z18sq_aux_gettypedargP4SQVMi15tagSQObjectTypePP11SQObjectPtr(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L1022
	mov	r4, #-1
	b	.L1026
.L1022:
	ldr	r0, [r7, #12]
	mov	r1, #-1
	bl	_Z9stack_getP4SQVMi(PLT)
.LEHE160:
	mov	r3, r0
	str	r3, [r7, #36]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #24]
	str	r3, [r7, #32]
	add	r3, r7, #20
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	add	r3, r7, #20
	ldr	r0, [r7, #32]
	ldr	r1, [r7, #36]
	mov	r2, r3
.LEHB161:
	bl	_ZN7SQTable3GetERK11SQObjectPtrRS0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1024
	ldr	r3, [r7, #24]
	and	r3, r3, #33554432
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #24]
	bic	r2, r3, #-16777216
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	ldr	r0, [r7, #12]
	bl	_ZN4SQVM3PopEv(PLT)
	movs	r4, #0
	b	.L1025
.L1024:
	ldr	r0, [r7, #12]
	ldr	r3, .L1030
.LPIC105:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
.LEHE161:
	mov	r4, r0
.L1025:
	add	r3, r7, #20
	mov	r0, r3
.LEHB162:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE162:
.L1026:
	mov	r3, r4
	b	.L1029
.L1028:
	add	r3, r7, #20
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB163:
	bl	__cxa_end_cleanup(PLT)
.LEHE163:
.L1029:
	mov	r0, r3
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L1031:
	.align	2
.L1030:
	.word	.LC45-(.LPIC105+4)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA436:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE436-.LLSDACSB436
.LLSDACSB436:
	.uleb128 .LEHB160-.LFB436
	.uleb128 .LEHE160-.LEHB160
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB161-.LFB436
	.uleb128 .LEHE161-.LEHB161
	.uleb128 .L1028-.LFB436
	.uleb128 0
	.uleb128 .LEHB162-.LFB436
	.uleb128 .LEHE162-.LEHB162
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB163-.LFB436
	.uleb128 .LEHE163-.LEHB163
	.uleb128 0
	.uleb128 0
.LLSDACSE436:
	.section	.text.sq_getmemberhandle
	.fnend
	.size	sq_getmemberhandle, .-sq_getmemberhandle
	.section	.rodata
	.align	2
.LC46:
	.ascii	"wrong type(expected class or instance)\000"
	.section	.text._Z18_getmemberbyhandleP4SQVMR11SQObjectPtrPK17tagSQMemberHandleRPS1_,"ax",%progbits
	.align	2
	.global	_Z18_getmemberbyhandleP4SQVMR11SQObjectPtrPK17tagSQMemberHandleRPS1_
	.thumb
	.thumb_func
	.type	_Z18_getmemberbyhandleP4SQVMR11SQObjectPtrPK17tagSQMemberHandleRPS1_, %function
_Z18_getmemberbyhandleP4SQVMR11SQObjectPtrPK17tagSQMemberHandleRPS1_:
	.fnstart
.LFB437:
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
	str	r3, [r7]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	mov	r2, r3
	mov	r3, #16384
	movt	r3, 2048
	cmp	r2, r3
	beq	.L1034
	mov	r3, #32768
	movt	r3, 2560
	cmp	r2, r3
	bne	.L1042
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L1036
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #28]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	add	r2, r3, #44
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI13SQClassMemberEixEj(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7]
	str	r2, [r3]
	b	.L1038
.L1036:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	adds	r3, r3, #5
	lsls	r3, r3, #3
	ldr	r2, [r7, #28]
	add	r3, r3, r2
	adds	r2, r3, #4
	ldr	r3, [r7]
	str	r2, [r3]
	b	.L1038
.L1034:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L1039
	ldr	r3, [r7, #20]
	add	r2, r3, #44
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI13SQClassMemberEixEj(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7]
	str	r2, [r3]
	b	.L1038
.L1039:
	ldr	r3, [r7, #20]
	add	r2, r3, #32
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI13SQClassMemberEixEj(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7]
	str	r2, [r3]
	b	.L1038
.L1042:
	ldr	r0, [r7, #12]
	ldr	r3, .L1043
.LPIC106:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L1041
.L1038:
	movs	r3, #0
.L1041:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L1044:
	.align	2
.L1043:
	.word	.LC46-(.LPIC106+4)
	.fnend
	.size	_Z18_getmemberbyhandleP4SQVMR11SQObjectPtrPK17tagSQMemberHandleRPS1_, .-_Z18_getmemberbyhandleP4SQVMR11SQObjectPtrPK17tagSQMemberHandleRPS1_
	.section	.text.sq_getbyhandle,"ax",%progbits
	.align	2
	.global	sq_getbyhandle
	.thumb
	.thumb_func
	.type	sq_getbyhandle, %function
sq_getbyhandle:
	.fnstart
.LFB438:
	@ args = 0, pretend = 0, frame = 40
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
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
.LEHB164:
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #16]
	add	r3, r7, #16
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #36]
	ldr	r2, [r7, #4]
	bl	_Z18_getmemberbyhandleP4SQVMR11SQObjectPtrPK17tagSQMemberHandleRPS1_(PLT)
.LEHE164:
	mov	r3, r0
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L1046
	mov	r3, #-1
	b	.L1053
.L1046:
	ldr	r3, [r7, #16]
	ldr	r2, [r3]
	movs	r3, #0
	movt	r3, 2049
	cmp	r2, r3
	beq	.L1048
	ldr	r2, [r7, #16]
	add	r3, r7, #28
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	b	.L1049
.L1048:
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #4]
	add	r3, r7, #28
	adds	r2, r2, #12
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
.L1049:
	add	r2, r7, #20
	add	r3, r7, #28
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1ERK11tagSQObject(PLT)
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	mov	r1, r3
.LEHB165:
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE165:
	add	r3, r7, #20
	mov	r0, r3
.LEHB166:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE166:
	movs	r3, #0
	b	.L1053
.L1052:
	add	r3, r7, #20
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB167:
	bl	__cxa_end_cleanup(PLT)
.LEHE167:
.L1053:
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA438:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE438-.LLSDACSB438
.LLSDACSB438:
	.uleb128 .LEHB164-.LFB438
	.uleb128 .LEHE164-.LEHB164
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB165-.LFB438
	.uleb128 .LEHE165-.LEHB165
	.uleb128 .L1052-.LFB438
	.uleb128 0
	.uleb128 .LEHB166-.LFB438
	.uleb128 .LEHE166-.LEHB166
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB167-.LFB438
	.uleb128 .LEHE167-.LEHB167
	.uleb128 0
	.uleb128 0
.LLSDACSE438:
	.section	.text.sq_getbyhandle
	.fnend
	.size	sq_getbyhandle, .-sq_getbyhandle
	.section	.text.sq_setbyhandle,"ax",%progbits
	.align	2
	.global	sq_setbyhandle
	.thumb
	.thumb_func
	.type	sq_setbyhandle, %function
sq_setbyhandle:
	.fnstart
.LFB439:
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
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #28]
	ldr	r0, [r7, #12]
	mov	r1, #-1
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #20]
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #28]
	ldr	r2, [r7, #4]
	bl	_Z18_getmemberbyhandleP4SQVMR11SQObjectPtrPK17tagSQMemberHandleRPS1_(PLT)
	mov	r3, r0
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L1055
	mov	r3, #-1
	b	.L1057
.L1055:
	ldr	r3, [r7, #20]
	mov	r0, r3
	ldr	r1, [r7, #24]
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	ldr	r0, [r7, #12]
	bl	_ZN4SQVM3PopEv(PLT)
	movs	r3, #0
.L1057:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	sq_setbyhandle, .-sq_setbyhandle
	.section	.text.sq_getbase,"ax",%progbits
	.align	2
	.global	sq_getbase
	.thumb
	.thumb_func
	.type	sq_getbase, %function
sq_getbase:
	.fnstart
.LFB440:
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
	str	r3, [r7, #12]
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	mov	r2, #16384
	movt	r2, 2048
.LEHB168:
	bl	_Z18sq_aux_gettypedargP4SQVMi15tagSQObjectTypePP11SQObjectPtr(PLT)
.LEHE168:
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L1059
	mov	r3, #-1
	b	.L1066
.L1059:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #28]
	cmp	r3, #0
	beq	.L1061
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #28]
	add	r2, r7, #16
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP7SQClass(PLT)
	add	r3, r7, #16
	ldr	r0, [r7, #4]
	mov	r1, r3
.LEHB169:
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE169:
	add	r3, r7, #16
	mov	r0, r3
.LEHB170:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L1062
.L1061:
	ldr	r0, [r7, #4]
	bl	_ZN4SQVM8PushNullEv(PLT)
.LEHE170:
.L1062:
	movs	r3, #0
	b	.L1066
.L1065:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB171:
	bl	__cxa_end_cleanup(PLT)
.LEHE171:
.L1066:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA440:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE440-.LLSDACSB440
.LLSDACSB440:
	.uleb128 .LEHB168-.LFB440
	.uleb128 .LEHE168-.LEHB168
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB169-.LFB440
	.uleb128 .LEHE169-.LEHB169
	.uleb128 .L1065-.LFB440
	.uleb128 0
	.uleb128 .LEHB170-.LFB440
	.uleb128 .LEHE170-.LEHB170
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB171-.LFB440
	.uleb128 .LEHE171-.LEHB171
	.uleb128 0
	.uleb128 0
.LLSDACSE440:
	.section	.text.sq_getbase
	.fnend
	.size	sq_getbase, .-sq_getbase
	.section	.text.sq_getclass,"ax",%progbits
	.align	2
	.global	sq_getclass
	.thumb
	.thumb_func
	.type	sq_getclass, %function
sq_getclass:
	.fnstart
.LFB441:
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
	str	r3, [r7, #12]
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	mov	r2, #32768
	movt	r2, 2560
.LEHB172:
	bl	_Z18sq_aux_gettypedargP4SQVMi15tagSQObjectTypePP11SQObjectPtr(PLT)
.LEHE172:
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L1068
	mov	r3, #-1
	b	.L1073
.L1068:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #28]
	add	r2, r7, #16
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP7SQClass(PLT)
	add	r3, r7, #16
	ldr	r0, [r7, #4]
	mov	r1, r3
.LEHB173:
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE173:
	add	r3, r7, #16
	mov	r0, r3
.LEHB174:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE174:
	movs	r3, #0
	b	.L1073
.L1072:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB175:
	bl	__cxa_end_cleanup(PLT)
.LEHE175:
.L1073:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA441:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE441-.LLSDACSB441
.LLSDACSB441:
	.uleb128 .LEHB172-.LFB441
	.uleb128 .LEHE172-.LEHB172
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB173-.LFB441
	.uleb128 .LEHE173-.LEHB173
	.uleb128 .L1072-.LFB441
	.uleb128 0
	.uleb128 .LEHB174-.LFB441
	.uleb128 .LEHE174-.LEHB174
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB175-.LFB441
	.uleb128 .LEHE175-.LEHB175
	.uleb128 0
	.uleb128 0
.LLSDACSE441:
	.section	.text.sq_getclass
	.fnend
	.size	sq_getclass, .-sq_getclass
	.section	.text.sq_createinstance,"ax",%progbits
	.align	2
	.global	sq_createinstance
	.thumb
	.thumb_func
	.type	sq_createinstance, %function
sq_createinstance:
	.fnstart
.LFB442:
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
	str	r3, [r7, #12]
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	mov	r2, #16384
	movt	r2, 2048
.LEHB176:
	bl	_Z18sq_aux_gettypedargP4SQVMi15tagSQObjectTypePP11SQObjectPtr(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L1075
	mov	r3, #-1
	b	.L1080
.L1075:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN7SQClass14CreateInstanceEv(PLT)
.LEHE176:
	mov	r3, r0
	add	r2, r7, #16
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP10SQInstance(PLT)
	add	r3, r7, #16
	ldr	r0, [r7, #4]
	mov	r1, r3
.LEHB177:
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE177:
	add	r3, r7, #16
	mov	r0, r3
.LEHB178:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE178:
	movs	r3, #0
	b	.L1080
.L1079:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB179:
	bl	__cxa_end_cleanup(PLT)
.LEHE179:
.L1080:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA442:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE442-.LLSDACSB442
.LLSDACSB442:
	.uleb128 .LEHB176-.LFB442
	.uleb128 .LEHE176-.LEHB176
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB177-.LFB442
	.uleb128 .LEHE177-.LEHB177
	.uleb128 .L1079-.LFB442
	.uleb128 0
	.uleb128 .LEHB178-.LFB442
	.uleb128 .LEHE178-.LEHB178
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB179-.LFB442
	.uleb128 .LEHE179-.LEHB179
	.uleb128 0
	.uleb128 0
.LLSDACSE442:
	.section	.text.sq_createinstance
	.fnend
	.size	sq_createinstance, .-sq_createinstance
	.section	.text.sq_weakref,"ax",%progbits
	.align	2
	.global	sq_weakref
	.thumb
	.thumb_func
	.type	sq_weakref, %function
sq_weakref:
	.fnstart
.LFB443:
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
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
.LEHB180:
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	ldr	r3, [r3]
	and	r3, r3, #134217728
	cmp	r3, #0
	beq	.L1082
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #28]
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN12SQRefCounted10GetWeakRefE15tagSQObjectType(PLT)
.LEHE180:
	mov	r3, r0
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP9SQWeakRef(PLT)
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	mov	r1, r3
.LEHB181:
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE181:
	add	r3, r7, #12
	mov	r0, r3
.LEHB182:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE182:
	b	.L1081
.L1082:
	add	r3, r7, #20
	mov	r0, r3
	ldr	r1, [r7, #28]
	bl	_ZN11SQObjectPtrC1ERK11tagSQObject(PLT)
	add	r3, r7, #20
	ldr	r0, [r7, #4]
	mov	r1, r3
.LEHB183:
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE183:
	add	r3, r7, #20
	mov	r0, r3
.LEHB184:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE184:
	b	.L1081
.L1086:
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB185:
	bl	__cxa_end_cleanup(PLT)
.LEHE185:
.L1087:
	add	r3, r7, #20
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB186:
	bl	__cxa_end_cleanup(PLT)
.LEHE186:
.L1081:
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA443:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE443-.LLSDACSB443
.LLSDACSB443:
	.uleb128 .LEHB180-.LFB443
	.uleb128 .LEHE180-.LEHB180
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB181-.LFB443
	.uleb128 .LEHE181-.LEHB181
	.uleb128 .L1086-.LFB443
	.uleb128 0
	.uleb128 .LEHB182-.LFB443
	.uleb128 .LEHE182-.LEHB182
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB183-.LFB443
	.uleb128 .LEHE183-.LEHB183
	.uleb128 .L1087-.LFB443
	.uleb128 0
	.uleb128 .LEHB184-.LFB443
	.uleb128 .LEHE184-.LEHB184
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB185-.LFB443
	.uleb128 .LEHE185-.LEHB185
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB186-.LFB443
	.uleb128 .LEHE186-.LEHB186
	.uleb128 0
	.uleb128 0
.LLSDACSE443:
	.section	.text.sq_weakref
	.fnend
	.size	sq_weakref, .-sq_weakref
	.section	.rodata
	.align	2
.LC47:
	.ascii	"the object must be a weakref\000"
	.section	.text.sq_getweakrefval,"ax",%progbits
	.align	2
	.global	sq_getweakrefval
	.thumb
	.thumb_func
	.type	sq_getweakrefval, %function
sq_getweakrefval:
	.fnstart
.LFB444:
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
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
.LEHB187:
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r2, [r3]
	movs	r3, #0
	movt	r3, 2049
	cmp	r2, r3
	beq	.L1089
	ldr	r0, [r7, #4]
	ldr	r3, .L1094
.LPIC107:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
.LEHE187:
	mov	r3, r0
	b	.L1093
.L1089:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	adds	r3, r3, #12
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1ERK11tagSQObject(PLT)
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	mov	r1, r3
.LEHB188:
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE188:
	add	r3, r7, #12
	mov	r0, r3
.LEHB189:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE189:
	movs	r3, #0
	b	.L1093
.L1092:
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB190:
	bl	__cxa_end_cleanup(PLT)
.LEHE190:
.L1093:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L1095:
	.align	2
.L1094:
	.word	.LC47-(.LPIC107+4)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA444:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE444-.LLSDACSB444
.LLSDACSB444:
	.uleb128 .LEHB187-.LFB444
	.uleb128 .LEHE187-.LEHB187
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB188-.LFB444
	.uleb128 .LEHE188-.LEHB188
	.uleb128 .L1092-.LFB444
	.uleb128 0
	.uleb128 .LEHB189-.LFB444
	.uleb128 .LEHE189-.LEHB189
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB190-.LFB444
	.uleb128 .LEHE190-.LEHB190
	.uleb128 0
	.uleb128 0
.LLSDACSE444:
	.section	.text.sq_getweakrefval
	.fnend
	.size	sq_getweakrefval, .-sq_getweakrefval
	.section	.rodata
	.align	2
.LC48:
	.ascii	"the type doesn't have a default delegate\000"
	.section	.text.sq_getdefaultdelegate,"ax",%progbits
	.align	2
	.global	sq_getdefaultdelegate
	.thumb
	.thumb_func
	.type	sq_getdefaultdelegate, %function
sq_getdefaultdelegate:
	.fnstart
.LFB445:
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
	ldr	r3, [r3, #140]
	str	r3, [r7, #12]
	ldr	r3, [r7]
	mov	r2, #512
	movt	r2, 2048
	cmp	r3, r2
	beq	.L1098
	mov	r2, #512
	movt	r2, 2048
	cmp	r3, r2
	bgt	.L1099
	movs	r2, #16
	movt	r2, 2048
	cmp	r3, r2
	beq	.L1100
	movs	r2, #16
	movt	r2, 2048
	cmp	r3, r2
	bgt	.L1101
	movs	r2, #2
	movt	r2, 1280
	cmp	r3, r2
	beq	.L1102
	movs	r2, #4
	movt	r2, 1280
	cmp	r3, r2
	beq	.L1102
	b	.L1097
.L1101:
	movs	r2, #64
	movt	r2, 2048
	cmp	r3, r2
	beq	.L1103
	mov	r2, #256
	movt	r2, 2048
	cmp	r3, r2
	beq	.L1098
	b	.L1097
.L1099:
	mov	r2, #16384
	movt	r2, 2048
	cmp	r3, r2
	beq	.L1104
	mov	r2, #16384
	movt	r2, 2048
	cmp	r3, r2
	bgt	.L1105
	mov	r2, #1024
	movt	r2, 2048
	cmp	r3, r2
	beq	.L1106
	mov	r2, #4096
	movt	r2, 2048
	cmp	r3, r2
	beq	.L1107
	b	.L1097
.L1105:
	movs	r2, #32
	movt	r2, 2560
	cmp	r3, r2
	beq	.L1108
	mov	r2, #32768
	movt	r2, 2560
	cmp	r3, r2
	beq	.L1109
	movs	r2, #0
	movt	r2, 2049
	cmp	r3, r2
	beq	.L1110
	b	.L1097
.L1108:
	ldr	r3, [r7, #12]
	adds	r3, r3, #80
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	b	.L1111
.L1103:
	ldr	r3, [r7, #12]
	adds	r3, r3, #88
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	b	.L1111
.L1100:
	ldr	r3, [r7, #12]
	adds	r3, r3, #96
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	b	.L1111
.L1102:
	ldr	r3, [r7, #12]
	adds	r3, r3, #104
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	b	.L1111
.L1106:
	ldr	r3, [r7, #12]
	adds	r3, r3, #112
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	b	.L1111
.L1098:
	ldr	r3, [r7, #12]
	adds	r3, r3, #120
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	b	.L1111
.L1107:
	ldr	r3, [r7, #12]
	adds	r3, r3, #128
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	b	.L1111
.L1104:
	ldr	r3, [r7, #12]
	adds	r3, r3, #136
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	b	.L1111
.L1109:
	ldr	r3, [r7, #12]
	adds	r3, r3, #144
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	b	.L1111
.L1110:
	ldr	r3, [r7, #12]
	adds	r3, r3, #152
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	b	.L1111
.L1097:
	ldr	r0, [r7, #4]
	ldr	r3, .L1113
.LPIC108:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L1112
.L1111:
	movs	r3, #0
.L1112:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L1114:
	.align	2
.L1113:
	.word	.LC48-(.LPIC108+4)
	.fnend
	.size	sq_getdefaultdelegate, .-sq_getdefaultdelegate
	.section	.rodata
	.align	2
.LC49:
	.ascii	"cannot iterate a generator\000"
	.section	.text.sq_next,"ax",%progbits
	.align	2
	.global	sq_next
	.thumb
	.thumb_func
	.type	sq_next, %function
sq_next:
	.fnstart
.LFB446:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #60
	sub	sp, sp, #60
	.setfp r7, sp, #16
	add	r7, sp, #16
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
.LEHB191:
	bl	_Z9stack_getP4SQVMi(PLT)
.LEHE191:
	mov	r3, r0
	add	r2, r7, #28
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1ERKS_(PLT)
	ldr	r0, [r7, #4]
	mov	r1, #-1
.LEHB192:
	bl	_Z9stack_getP4SQVMi(PLT)
.LEHE192:
	mov	r3, r0
	str	r3, [r7, #36]
	add	r3, r7, #20
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r2, [r7, #28]
	mov	r3, #1024
	movt	r3, 2048
	cmp	r2, r3
	bne	.L1116
	ldr	r0, [r7, #4]
	ldr	r3, .L1128
.LPIC109:
	add	r3, pc
	mov	r1, r3
.LEHB193:
	bl	sq_throwerror(PLT)
	mov	r4, r0
	b	.L1117
.L1116:
	add	r1, r7, #28
	add	r2, r7, #20
	add	r3, r7, #12
	ldr	r0, [r7, #36]
	str	r0, [sp]
	movs	r0, #0
	str	r0, [sp, #4]
	movw	r0, #666
	str	r0, [sp, #8]
	add	r0, r7, #8
	str	r0, [sp, #12]
	ldr	r0, [r7, #4]
	bl	_ZN4SQVM10FOREACH_OPER11SQObjectPtrS1_S1_S1_iiRi(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L1118
	mov	r4, #-1
	b	.L1117
.L1118:
	ldr	r2, [r7, #8]
	movw	r3, #666
	cmp	r2, r3
	beq	.L1119
	add	r3, r7, #20
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE193:
	movs	r4, #0
	b	.L1117
.L1119:
	mov	r4, #-1
.L1117:
	add	r3, r7, #12
	mov	r0, r3
.LEHB194:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE194:
	add	r3, r7, #20
	mov	r0, r3
.LEHB195:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE195:
	add	r3, r7, #28
	mov	r0, r3
.LEHB196:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE196:
	mov	r3, r4
	b	.L1127
.L1126:
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L1122
.L1125:
.L1122:
	add	r3, r7, #20
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L1123
.L1124:
.L1123:
	add	r3, r7, #28
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB197:
	bl	__cxa_end_cleanup(PLT)
.LEHE197:
.L1127:
	mov	r0, r3
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L1129:
	.align	2
.L1128:
	.word	.LC49-(.LPIC109+4)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA446:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE446-.LLSDACSB446
.LLSDACSB446:
	.uleb128 .LEHB191-.LFB446
	.uleb128 .LEHE191-.LEHB191
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB192-.LFB446
	.uleb128 .LEHE192-.LEHB192
	.uleb128 .L1124-.LFB446
	.uleb128 0
	.uleb128 .LEHB193-.LFB446
	.uleb128 .LEHE193-.LEHB193
	.uleb128 .L1126-.LFB446
	.uleb128 0
	.uleb128 .LEHB194-.LFB446
	.uleb128 .LEHE194-.LEHB194
	.uleb128 .L1125-.LFB446
	.uleb128 0
	.uleb128 .LEHB195-.LFB446
	.uleb128 .LEHE195-.LEHB195
	.uleb128 .L1124-.LFB446
	.uleb128 0
	.uleb128 .LEHB196-.LFB446
	.uleb128 .LEHE196-.LEHB196
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB197-.LFB446
	.uleb128 .LEHE197-.LEHB197
	.uleb128 0
	.uleb128 0
.LLSDACSE446:
	.section	.text.sq_next
	.fnend
	.size	sq_next, .-sq_next
	.section	.text._Z11buf_lexfeedPv,"ax",%progbits
	.align	2
	.global	_Z11buf_lexfeedPv
	.thumb
	.thumb_func
	.type	_Z11buf_lexfeedPv, %function
_Z11buf_lexfeedPv:
	.fnstart
.LFB447:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	adds	r3, r3, #1
	cmp	r2, r3
	bge	.L1131
	movs	r3, #0
	b	.L1132
.L1131:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	adds	r0, r3, #1
	ldr	r1, [r7, #12]
	str	r0, [r1, #4]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
.L1132:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_Z11buf_lexfeedPv, .-_Z11buf_lexfeedPv
	.section	.text.sq_compilebuffer,"ax",%progbits
	.align	2
	.global	sq_compilebuffer
	.thumb
	.thumb_func
	.type	sq_compilebuffer, %function
sq_compilebuffer:
	.fnstart
.LFB448:
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #40
	sub	sp, sp, #40
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r1, .L1135
.LPIC110:
	add	r1, pc
	ldr	r3, [r7, #8]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #24]
	add	r3, r7, #20
	ldr	r2, [r7, #40]
	str	r2, [sp]
	ldr	r0, [r7, #12]
	ldr	r2, .L1135+4
	ldr	r2, [r1, r2]
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [r7]
	bl	sq_compile(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L1136:
	.align	2
.L1135:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC110+4)
	.word	_Z11buf_lexfeedPv(GOT)
	.fnend
	.size	sq_compilebuffer, .-sq_compilebuffer
	.section	.text.sq_move,"ax",%progbits
	.align	2
	.global	sq_move
	.thumb
	.thumb_func
	.type	sq_move, %function
sq_move:
	.fnstart
.LFB449:
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
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #4]
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	sq_move, .-sq_move
	.section	.text.sq_setprintfunc,"ax",%progbits
	.align	2
	.global	sq_setprintfunc
	.thumb
	.thumb_func
	.type	sq_setprintfunc, %function
sq_setprintfunc:
	.fnstart
.LFB450:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #140]
	ldr	r2, [r7, #8]
	str	r2, [r3, #164]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #140]
	ldr	r2, [r7, #4]
	str	r2, [r3, #168]
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	sq_setprintfunc, .-sq_setprintfunc
	.section	.text.sq_getprintfunc,"ax",%progbits
	.align	2
	.global	sq_getprintfunc
	.thumb
	.thumb_func
	.type	sq_getprintfunc, %function
sq_getprintfunc:
	.fnstart
.LFB451:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #140]
	ldr	r3, [r3, #164]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	sq_getprintfunc, .-sq_getprintfunc
	.section	.text.sq_geterrorfunc,"ax",%progbits
	.align	2
	.global	sq_geterrorfunc
	.thumb
	.thumb_func
	.type	sq_geterrorfunc, %function
sq_geterrorfunc:
	.fnstart
.LFB452:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #140]
	ldr	r3, [r3, #168]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	sq_geterrorfunc, .-sq_geterrorfunc
	.section	.text.sq_malloc,"ax",%progbits
	.align	2
	.global	sq_malloc
	.thumb
	.thumb_func
	.type	sq_malloc, %function
sq_malloc:
	.fnstart
.LFB453:
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
	bl	_Z12sq_vm_mallocj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	sq_malloc, .-sq_malloc
	.section	.text.sq_realloc,"ax",%progbits
	.align	2
	.global	sq_realloc
	.thumb
	.thumb_func
	.type	sq_realloc, %function
sq_realloc:
	.fnstart
.LFB454:
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
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	_Z13sq_vm_reallocPvjj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	sq_realloc, .-sq_realloc
	.section	.text.sq_free,"ax",%progbits
	.align	2
	.global	sq_free
	.thumb
	.thumb_func
	.type	sq_free, %function
sq_free:
	.fnstart
.LFB455:
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
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	_Z10sq_vm_freePvj(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	sq_free, .-sq_free
	.section	.text._ZN8sqvectorI11SQObjectPtrEC2Ev,"axG",%progbits,_ZN8sqvectorI11SQObjectPtrEC5Ev,comdat
	.align	2
	.weak	_ZN8sqvectorI11SQObjectPtrEC2Ev
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI11SQObjectPtrEC2Ev, %function
_ZN8sqvectorI11SQObjectPtrEC2Ev:
	.fnstart
.LFB462:
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
.LFB465:
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
	beq	.L1152
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L1153
.L1154:
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
.L1153:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bhi	.L1154
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	lsls	r3, r3, #3
	mov	r0, r2
	mov	r1, r3
	bl	_Z10sq_vm_freePvj(PLT)
.L1152:
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
.LFB467:
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
	bcs	.L1157
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_ZN8sqvectorI11SQObjectPtrE8_reallocEj(PLT)
.L1157:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcs	.L1158
	b	.L1159
.L1162:
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
	beq	.L1161
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	_ZN11SQObjectPtrC1ERKS_(PLT)
.L1161:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #4]
.L1159:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L1162
	b	.L1156
.L1158:
	ldr	r3, [r7, #8]
	str	r3, [r7, #20]
	b	.L1164
.L1165:
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
.L1164:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bhi	.L1165
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #4]
.L1156:
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
.LFB468:
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
.LFB469:
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
.LFB472:
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
	bhi	.L1171
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #1
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN8sqvectorI11SQObjectPtrE8_reallocEj(PLT)
.L1171:
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
	beq	.L1172
	mov	r0, r4
	ldr	r1, [r7]
	bl	_ZN11SQObjectPtrC1ERKS_(PLT)
	mov	r3, r4
	b	.L1173
.L1172:
	mov	r3, r4
.L1173:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_, .-_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_
	.section	.text._ZNK8sqvectorI11SQObjectPtrE3topEv,"axG",%progbits,_ZNK8sqvectorI11SQObjectPtrE3topEv,comdat
	.align	2
	.weak	_ZNK8sqvectorI11SQObjectPtrE3topEv
	.thumb
	.thumb_func
	.type	_ZNK8sqvectorI11SQObjectPtrE3topEv, %function
_ZNK8sqvectorI11SQObjectPtrE3topEv:
	.fnstart
.LFB473:
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
	.size	_ZNK8sqvectorI11SQObjectPtrE3topEv, .-_ZNK8sqvectorI11SQObjectPtrE3topEv
	.section	.text._ZN8sqvectorI11SQObjectPtrE8pop_backEv,"axG",%progbits,_ZN8sqvectorI11SQObjectPtrE8pop_backEv,comdat
	.align	2
	.weak	_ZN8sqvectorI11SQObjectPtrE8pop_backEv
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI11SQObjectPtrE8pop_backEv, %function
_ZN8sqvectorI11SQObjectPtrE8pop_backEv:
	.fnstart
.LFB474:
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
	.section	.text._ZN8sqvectorI11SQObjectPtrE6insertEjRKS0_,"axG",%progbits,_ZN8sqvectorI11SQObjectPtrE6insertEjRKS0_,comdat
	.align	2
	.weak	_ZN8sqvectorI11SQObjectPtrE6insertEjRKS0_
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI11SQObjectPtrE6insertEjRKS0_, %function
_ZN8sqvectorI11SQObjectPtrE6insertEjRKS0_:
	.fnstart
.LFB475:
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
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	adds	r4, r3, #1
	add	r3, r7, #20
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	mov	r1, r4
	mov	r2, r3
.LEHB198:
	bl	_ZN8sqvectorI11SQObjectPtrE6resizeEjRKS0_(PLT)
.LEHE198:
	add	r3, r7, #20
	mov	r0, r3
.LEHB199:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	subs	r3, r3, #1
	str	r3, [r7, #28]
	b	.L1179
.L1180:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #28]
	lsls	r3, r3, #3
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r1, [r3]
	ldr	r3, [r7, #28]
	add	r3, r3, #536870912
	subs	r3, r3, #1
	lsls	r3, r3, #3
	add	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	ldr	r3, [r7, #28]
	subs	r3, r3, #1
	str	r3, [r7, #28]
.L1179:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bhi	.L1180
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #3
	add	r3, r3, r2
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	_ZN11SQObjectPtraSERKS_(PLT)
.LEHE199:
	b	.L1183
.L1182:
	add	r3, r7, #20
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB200:
	bl	__cxa_end_cleanup(PLT)
.LEHE200:
.L1183:
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA475:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE475-.LLSDACSB475
.LLSDACSB475:
	.uleb128 .LEHB198-.LFB475
	.uleb128 .LEHE198-.LEHB198
	.uleb128 .L1182-.LFB475
	.uleb128 0
	.uleb128 .LEHB199-.LFB475
	.uleb128 .LEHE199-.LEHB199
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB200-.LFB475
	.uleb128 .LEHE200-.LEHB200
	.uleb128 0
	.uleb128 0
.LLSDACSE475:
	.section	.text._ZN8sqvectorI11SQObjectPtrE6insertEjRKS0_,"axG",%progbits,_ZN8sqvectorI11SQObjectPtrE6insertEjRKS0_,comdat
	.fnend
	.size	_ZN8sqvectorI11SQObjectPtrE6insertEjRKS0_, .-_ZN8sqvectorI11SQObjectPtrE6insertEjRKS0_
	.section	.text._ZN8sqvectorI11SQObjectPtrE8capacityEv,"axG",%progbits,_ZN8sqvectorI11SQObjectPtrE8capacityEv,comdat
	.align	2
	.weak	_ZN8sqvectorI11SQObjectPtrE8capacityEv
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI11SQObjectPtrE8capacityEv, %function
_ZN8sqvectorI11SQObjectPtrE8capacityEv:
	.fnstart
.LFB476:
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
	.cantunwind
	.fnend
	.size	_ZN8sqvectorI11SQObjectPtrE8capacityEv, .-_ZN8sqvectorI11SQObjectPtrE8capacityEv
	.section	.text._ZN8sqvectorI11SQObjectPtrE11shrinktofitEv,"axG",%progbits,_ZN8sqvectorI11SQObjectPtrE11shrinktofitEv,comdat
	.align	2
	.weak	_ZN8sqvectorI11SQObjectPtrE11shrinktofitEv
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI11SQObjectPtrE11shrinktofitEv, %function
_ZN8sqvectorI11SQObjectPtrE11shrinktofitEv:
	.fnstart
.LFB477:
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
	cmp	r3, #4
	bls	.L1186
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN8sqvectorI11SQObjectPtrE8_reallocEj(PLT)
.L1186:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN8sqvectorI11SQObjectPtrE11shrinktofitEv, .-_ZN8sqvectorI11SQObjectPtrE11shrinktofitEv
	.section	.text._ZN8sqvectorI11SQObjectPtrE6removeEj,"axG",%progbits,_ZN8sqvectorI11SQObjectPtrE6removeEj,comdat
	.align	2
	.weak	_ZN8sqvectorI11SQObjectPtrE6removeEj
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI11SQObjectPtrE6removeEj, %function
_ZN8sqvectorI11SQObjectPtrE6removeEj:
	.fnstart
.LFB478:
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
	ldr	r2, [r3]
	ldr	r3, [r7]
	lsls	r3, r3, #3
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	subs	r2, r3, #1
	ldr	r3, [r7]
	cmp	r2, r3
	bls	.L1189
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7]
	lsls	r3, r3, #3
	adds	r1, r2, r3
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7]
	adds	r3, r3, #1
	lsls	r3, r3, #3
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r0, [r3, #4]
	ldr	r3, [r7]
	subs	r3, r0, r3
	subs	r3, r3, #1
	lsls	r3, r3, #3
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	memmove(PLT)
.L1189:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	subs	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN8sqvectorI11SQObjectPtrE6removeEj, .-_ZN8sqvectorI11SQObjectPtrE6removeEj
	.section	.text._ZN8sqvectorIiEC2Ev,"axG",%progbits,_ZN8sqvectorIiEC5Ev,comdat
	.align	2
	.weak	_ZN8sqvectorIiEC2Ev
	.thumb
	.thumb_func
	.type	_ZN8sqvectorIiEC2Ev, %function
_ZN8sqvectorIiEC2Ev:
	.fnstart
.LFB486:
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
.LFB489:
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
	beq	.L1194
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L1195
.L1196:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L1195:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bhi	.L1196
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	lsls	r3, r3, #2
	mov	r0, r2
	mov	r1, r3
	bl	_Z10sq_vm_freePvj(PLT)
.L1194:
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
	.section	.text._ZN8sqvectorIiE4copyERKS0_,"axG",%progbits,_ZN8sqvectorIiE4copyERKS0_,comdat
	.align	2
	.weak	_ZN8sqvectorIiE4copyERKS0_
	.thumb
	.thumb_func
	.type	_ZN8sqvectorIiE4copyERKS0_, %function
_ZN8sqvectorIiE4copyERKS0_:
	.fnstart
.LFB491:
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
	beq	.L1199
	movs	r3, #0
	str	r3, [r7, #8]
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	movs	r1, #0
	mov	r2, r3
	bl	_ZN8sqvectorIiE6resizeEjRKi(PLT)
.L1199:
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	bls	.L1200
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN8sqvectorIiE8_reallocEj(PLT)
.L1200:
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L1201
.L1204:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #2
	add	r3, r3, r2
	movs	r0, #4
	mov	r1, r3
	bl	_ZnwjPv(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1203
	ldr	r2, [r7]
	ldr	r1, [r2]
	ldr	r2, [r7, #12]
	lsls	r2, r2, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
.L1203:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L1201:
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bhi	.L1204
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN8sqvectorIiE4copyERKS0_, .-_ZN8sqvectorIiE4copyERKS0_
	.section	.text._ZNK8sqvectorIiE4sizeEv,"axG",%progbits,_ZNK8sqvectorIiE4sizeEv,comdat
	.align	2
	.weak	_ZNK8sqvectorIiE4sizeEv
	.thumb
	.thumb_func
	.type	_ZNK8sqvectorIiE4sizeEv, %function
_ZNK8sqvectorIiE4sizeEv:
	.fnstart
.LFB495:
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
	.section	.text._ZNK8sqvectorI13SQClassMemberEixEj,"axG",%progbits,_ZNK8sqvectorI13SQClassMemberEixEj,comdat
	.align	2
	.weak	_ZNK8sqvectorI13SQClassMemberEixEj
	.thumb
	.thumb_func
	.type	_ZNK8sqvectorI13SQClassMemberEixEj, %function
_ZNK8sqvectorI13SQClassMemberEixEj:
	.fnstart
.LFB497:
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
	.section	.text._ZN8sqvectorIiE6resizeEjRKi,"axG",%progbits,_ZN8sqvectorIiE6resizeEjRKi,comdat
	.align	2
	.weak	_ZN8sqvectorIiE6resizeEjRKi
	.thumb
	.thumb_func
	.type	_ZN8sqvectorIiE6resizeEjRKi, %function
_ZN8sqvectorIiE6resizeEjRKi:
	.fnstart
.LFB499:
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
	bcs	.L1210
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_ZN8sqvectorIiE8_reallocEj(PLT)
.L1210:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcs	.L1211
	b	.L1212
.L1215:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #2
	add	r3, r3, r2
	movs	r0, #4
	mov	r1, r3
	bl	_ZnwjPv(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1214
	ldr	r2, [r7, #4]
	ldr	r2, [r2]
	str	r2, [r3]
.L1214:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #4]
.L1212:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L1215
	b	.L1209
.L1211:
	ldr	r3, [r7, #8]
	str	r3, [r7, #20]
	b	.L1217
.L1218:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L1217:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bhi	.L1218
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #4]
.L1209:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN8sqvectorIiE6resizeEjRKi, .-_ZN8sqvectorIiE6resizeEjRKi
	.section	.text._ZN8sqvectorI11SQObjectPtrE8_reallocEj,"axG",%progbits,_ZN8sqvectorI11SQObjectPtrE8_reallocEj,comdat
	.align	2
	.weak	_ZN8sqvectorI11SQObjectPtrE8_reallocEj
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI11SQObjectPtrE8_reallocEj, %function
_ZN8sqvectorI11SQObjectPtrE8_reallocEj:
	.fnstart
.LFB501:
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
	beq	.L1220
	ldr	r3, [r7]
	b	.L1221
.L1220:
	movs	r3, #4
.L1221:
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
.LFB502:
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
	beq	.L1223
	ldr	r3, [r7]
	b	.L1224
.L1223:
	movs	r3, #4
.L1224:
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
	.section	.rodata._ZZN11SQObjectPtrC1EP4SQVME19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN11SQObjectPtrC1EP4SQVME19__PRETTY_FUNCTION__, %object
	.size	_ZZN11SQObjectPtrC1EP4SQVME19__PRETTY_FUNCTION__, 32
_ZZN11SQObjectPtrC1EP4SQVME19__PRETTY_FUNCTION__:
	.ascii	"SQObjectPtr::SQObjectPtr(SQVM*)\000"
	.section	.rodata._ZZN11SQObjectPtrC1EP9SQClosureE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN11SQObjectPtrC1EP9SQClosureE19__PRETTY_FUNCTION__, %object
	.size	_ZZN11SQObjectPtrC1EP9SQClosureE19__PRETTY_FUNCTION__, 37
_ZZN11SQObjectPtrC1EP9SQClosureE19__PRETTY_FUNCTION__:
	.ascii	"SQObjectPtr::SQObjectPtr(SQClosure*)\000"
	.section	.rodata._ZZN11SQObjectPtrC1EP10SQUserDataE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN11SQObjectPtrC1EP10SQUserDataE19__PRETTY_FUNCTION__, %object
	.size	_ZZN11SQObjectPtrC1EP10SQUserDataE19__PRETTY_FUNCTION__, 38
_ZZN11SQObjectPtrC1EP10SQUserDataE19__PRETTY_FUNCTION__:
	.ascii	"SQObjectPtr::SQObjectPtr(SQUserData*)\000"
	.section	.rodata._ZZN11SQObjectPtrC1EP7SQTableE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN11SQObjectPtrC1EP7SQTableE19__PRETTY_FUNCTION__, %object
	.size	_ZZN11SQObjectPtrC1EP7SQTableE19__PRETTY_FUNCTION__, 35
_ZZN11SQObjectPtrC1EP7SQTableE19__PRETTY_FUNCTION__:
	.ascii	"SQObjectPtr::SQObjectPtr(SQTable*)\000"
	.section	.rodata._ZZN11SQObjectPtrC1EP7SQArrayE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN11SQObjectPtrC1EP7SQArrayE19__PRETTY_FUNCTION__, %object
	.size	_ZZN11SQObjectPtrC1EP7SQArrayE19__PRETTY_FUNCTION__, 35
_ZZN11SQObjectPtrC1EP7SQArrayE19__PRETTY_FUNCTION__:
	.ascii	"SQObjectPtr::SQObjectPtr(SQArray*)\000"
	.section	.rodata._ZZN11SQObjectPtrC1EP7SQClassE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN11SQObjectPtrC1EP7SQClassE19__PRETTY_FUNCTION__, %object
	.size	_ZZN11SQObjectPtrC1EP7SQClassE19__PRETTY_FUNCTION__, 35
_ZZN11SQObjectPtrC1EP7SQClassE19__PRETTY_FUNCTION__:
	.ascii	"SQObjectPtr::SQObjectPtr(SQClass*)\000"
	.section	.rodata._ZZN11SQObjectPtrC1EP15SQNativeClosureE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN11SQObjectPtrC1EP15SQNativeClosureE19__PRETTY_FUNCTION__, %object
	.size	_ZZN11SQObjectPtrC1EP15SQNativeClosureE19__PRETTY_FUNCTION__, 43
_ZZN11SQObjectPtrC1EP15SQNativeClosureE19__PRETTY_FUNCTION__:
	.ascii	"SQObjectPtr::SQObjectPtr(SQNativeClosure*)\000"
	.section	.rodata._ZZ6sq_popE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZ6sq_popE19__PRETTY_FUNCTION__, %object
	.size	_ZZ6sq_popE19__PRETTY_FUNCTION__, 36
_ZZ6sq_popE19__PRETTY_FUNCTION__:
	.ascii	"void sq_pop(HSQUIRRELVM, SQInteger)\000"
	.section	.rodata._ZZ9sq_poptopE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZ9sq_poptopE19__PRETTY_FUNCTION__, %object
	.size	_ZZ9sq_poptopE19__PRETTY_FUNCTION__, 28
_ZZ9sq_poptopE19__PRETTY_FUNCTION__:
	.ascii	"void sq_poptop(HSQUIRRELVM)\000"
	.section	.rodata._ZZN11SQObjectPtrC1EP10SQInstanceE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN11SQObjectPtrC1EP10SQInstanceE19__PRETTY_FUNCTION__, %object
	.size	_ZZN11SQObjectPtrC1EP10SQInstanceE19__PRETTY_FUNCTION__, 38
_ZZN11SQObjectPtrC1EP10SQInstanceE19__PRETTY_FUNCTION__:
	.ascii	"SQObjectPtr::SQObjectPtr(SQInstance*)\000"
	.section	.rodata._ZZN11SQObjectPtrC1EP9SQWeakRefE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN11SQObjectPtrC1EP9SQWeakRefE19__PRETTY_FUNCTION__, %object
	.size	_ZZN11SQObjectPtrC1EP9SQWeakRefE19__PRETTY_FUNCTION__, 37
_ZZN11SQObjectPtrC1EP9SQWeakRefE19__PRETTY_FUNCTION__:
	.ascii	"SQObjectPtr::SQObjectPtr(SQWeakRef*)\000"
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
