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
	.file	"sqbaselib.cpp"
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
	bne	.L28
	ldr	r3, .L31
.LPIC4:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L31+4
.LPIC5:
	add	r3, pc
	mov	r1, r3
	movs	r2, #229
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
	.word	_ZZN11SQObjectPtrC1EP7SQArrayE19__PRETTY_FUNCTION__-(.LPIC6+4)
	.cantunwind
	.fnend
	.size	_ZN11SQObjectPtrC2EP7SQArray, .-_ZN11SQObjectPtrC2EP7SQArray
	.weak	_ZN11SQObjectPtrC1EP7SQArray
	.thumb_set _ZN11SQObjectPtrC1EP7SQArray,_ZN11SQObjectPtrC2EP7SQArray
	.section	.text._ZN11SQObjectPtraSEP7SQArray,"axG",%progbits,_ZN11SQObjectPtraSEP7SQArray,comdat
	.align	2
	.weak	_ZN11SQObjectPtraSEP7SQArray
	.thumb
	.thumb_func
	.type	_ZN11SQObjectPtraSEP7SQArray, %function
_ZN11SQObjectPtraSEP7SQArray:
	.fnstart
.LFB64:
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
	movs	r3, #64
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
	beq	.L34
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L34
	movs	r3, #1
	b	.L35
.L34:
	movs	r3, #0
.L35:
	cmp	r3, #0
	beq	.L36
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	mov	r0, r2
	blx	r3
.L36:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQObjectPtraSEP7SQArray, .-_ZN11SQObjectPtraSEP7SQArray
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
	beq	.L48
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L48
	movs	r3, #1
	b	.L49
.L48:
	movs	r3, #0
.L49:
	cmp	r3, #0
	beq	.L50
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #4]
	mov	r0, r2
	blx	r3
.L50:
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
	beq	.L56
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
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
	beq	.L58
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #4]
	mov	r0, r2
	blx	r3
.L58:
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
	beq	.L61
	movs	r3, #1
	b	.L62
.L61:
	movs	r3, #0
.L62:
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
	beq	.L66
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L66
	movs	r3, #1
	b	.L67
.L66:
	movs	r3, #0
.L67:
	cmp	r3, #0
	beq	.L68
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #4]
	mov	r0, r2
	blx	r3
.L68:
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
	beq	.L71
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #4]
	adds	r2, r2, #1
	str	r2, [r3, #4]
.L71:
	ldr	r3, [r7, #12]
	and	r3, r3, #134217728
	cmp	r3, #0
	beq	.L72
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L72
	movs	r3, #1
	b	.L73
.L72:
	movs	r3, #0
.L73:
	cmp	r3, #0
	beq	.L74
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	mov	r0, r2
	blx	r3
.L74:
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
	beq	.L77
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #4]
	adds	r2, r2, #1
	str	r2, [r3, #4]
.L77:
	ldr	r3, [r7, #12]
	and	r3, r3, #134217728
	cmp	r3, #0
	beq	.L78
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L78
	movs	r3, #1
	b	.L79
.L78:
	movs	r3, #0
.L79:
	cmp	r3, #0
	beq	.L80
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	mov	r0, r2
	blx	r3
.L80:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQObjectPtraSERK11tagSQObject, .-_ZN11SQObjectPtraSERK11tagSQObject
	.section	.text._Z5_SwapR11tagSQObjectS0_,"axG",%progbits,_Z5_SwapR11tagSQObjectS0_,comdat
	.align	2
	.weak	_Z5_SwapR11tagSQObjectS0_
	.thumb
	.thumb_func
	.type	_Z5_SwapR11tagSQObjectS0_, %function
_Z5_SwapR11tagSQObjectS0_:
	.fnstart
.LFB126:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #8]
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	ldr	r2, [r2, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7]
	ldr	r2, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7]
	ldr	r2, [r7, #8]
	str	r2, [r3, #4]
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_Z5_SwapR11tagSQObjectS0_, .-_Z5_SwapR11tagSQObjectS0_
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
	blt	.L84
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #40]
	ldr	r3, [r7]
	add	r3, r3, r2
	subs	r3, r3, #1
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN4SQVM5GetAtEi(PLT)
	mov	r3, r0
	b	.L85
.L84:
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	_ZN4SQVM5GetUpEi(PLT)
	mov	r3, r0
.L85:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_Z9stack_getP4SQVMi, .-_Z9stack_getP4SQVMi
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
	beq	.L89
	mov	r0, r4
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
.LEHB1:
	bl	_ZN7SQTableC1EP13SQSharedStatei(PLT)
.LEHE1:
.L89:
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #12]
	b	.L93
.L92:
	mov	r0, r4
	mov	r1, r5
	bl	_ZdlPvS_(PLT)
.LEHB2:
	bl	__cxa_end_cleanup(PLT)
.LEHE2:
.L93:
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
	.uleb128 .L92-.LFB170
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
	ldr	r1, .L98
.LPIC10:
	add	r1, pc
	ldr	r3, [r7, #4]
	ldr	r2, .L98+4
	ldr	r2, [r1, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN12SQRefCountedD2Ev(PLT)
	movs	r3, #0
	cmp	r3, #0
	beq	.L96
	ldr	r0, [r7, #4]
	bl	_ZdlPv(PLT)
.L96:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L99:
	.align	2
.L98:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC10+4)
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
	ldr	r4, .L106
.LPIC11:
	add	r4, pc
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN12SQRefCountedC2Ev(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, .L106+4
	ldr	r2, [r4, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L107:
	.align	2
.L106:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC11+4)
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
	ldr	r4, .L118
.LPIC12:
	add	r4, pc
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	_ZN13SQCollectableC2Ev(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, .L118+4
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
	b	.L117
.L116:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L112
.L115:
.L112:
	ldr	r3, [r7, #12]
	adds	r3, r3, #24
	mov	r0, r3
	bl	_ZN8sqvectorI11SQObjectPtrED1Ev(PLT)
	b	.L113
.L114:
.L113:
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	_ZN13SQCollectableD2Ev(PLT)
.LEHB6:
	bl	__cxa_end_cleanup(PLT)
.LEHE6:
.L117:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L119:
	.align	2
.L118:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC12+4)
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
	.uleb128 .L114-.LFB194
	.uleb128 0
	.uleb128 .LEHB4-.LFB194
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L116-.LFB194
	.uleb128 0
	.uleb128 .LEHB5-.LFB194
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L115-.LFB194
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
	beq	.L122
	mov	r0, r4
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
.LEHB8:
	bl	_ZN7SQArrayC1EP13SQSharedStatei(PLT)
.LEHE8:
.L122:
	ldr	r3, [r7, #12]
	b	.L126
.L125:
	mov	r0, r4
	mov	r1, r5
	bl	_ZdlPvS_(PLT)
.LEHB9:
	bl	__cxa_end_cleanup(PLT)
.LEHE9:
.L126:
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
	.uleb128 .L125-.LFB200
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
	blt	.L128
	ldr	r3, [r7, #12]
	adds	r3, r3, #24
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4sizeEv(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #8]
	cmp	r2, r3
	ble	.L128
	movs	r3, #1
	b	.L129
.L128:
	movs	r3, #0
.L129:
	cmp	r3, #0
	beq	.L130
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
	beq	.L131
	ldr	r2, [r7, #28]
	add	r3, r7, #20
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	b	.L132
.L131:
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #4]
	add	r3, r7, #20
	adds	r2, r2, #12
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
.L132:
	add	r3, r7, #20
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERK11tagSQObject(PLT)
	movs	r3, #1
	b	.L133
.L130:
	movs	r3, #0
.L133:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN7SQArray3GetEiR11SQObjectPtr, .-_ZN7SQArray3GetEiR11SQObjectPtr
	.section	.text._ZN7SQArray3SetEiRK11SQObjectPtr,"axG",%progbits,_ZN7SQArray3SetEiRK11SQObjectPtr,comdat
	.align	2
	.weak	_ZN7SQArray3SetEiRK11SQObjectPtr
	.thumb
	.thumb_func
	.type	_ZN7SQArray3SetEiRK11SQObjectPtr, %function
_ZN7SQArray3SetEiRK11SQObjectPtr:
	.fnstart
.LFB204:
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
	ldr	r3, [r7, #8]
	cmp	r3, #0
	blt	.L135
	ldr	r3, [r7, #12]
	adds	r3, r3, #24
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4sizeEv(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #8]
	cmp	r2, r3
	ble	.L135
	movs	r3, #1
	b	.L136
.L135:
	movs	r3, #0
.L136:
	cmp	r3, #0
	beq	.L137
	ldr	r3, [r7, #12]
	add	r2, r3, #24
	ldr	r3, [r7, #8]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI11SQObjectPtrEixEj(PLT)
	mov	r3, r0
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	movs	r3, #1
	b	.L138
.L137:
	movs	r3, #0
.L138:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN7SQArray3SetEiRK11SQObjectPtr, .-_ZN7SQArray3SetEiRK11SQObjectPtr
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
.LEHB10:
	bl	_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_(PLT)
.LEHE10:
	add	r3, r7, #8
	mov	r0, r3
.LEHB11:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE11:
	b	.L145
.L144:
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB12:
	bl	__cxa_end_cleanup(PLT)
.LEHE12:
.L145:
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
	.uleb128 .LEHB10-.LFB211
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L144-.LFB211
	.uleb128 0
	.uleb128 .LEHB11-.LFB211
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB12-.LFB211
	.uleb128 .LEHE12-.LEHB12
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
	blt	.L149
	ldr	r3, [r7, #12]
	adds	r3, r3, #24
	mov	r0, r3
.LEHB13:
	bl	_ZNK8sqvectorI11SQObjectPtrE4sizeEv(PLT)
.LEHE13:
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bge	.L150
.L149:
	movs	r3, #1
	b	.L151
.L150:
	movs	r3, #0
.L151:
	cmp	r3, #0
	beq	.L152
	movs	r3, #0
	b	.L156
.L152:
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
.LEHB14:
	bl	_ZN8sqvectorI11SQObjectPtrE6insertEjRKS0_(PLT)
.LEHE14:
	add	r3, r7, #16
	mov	r0, r3
.LEHB15:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE15:
	movs	r3, #1
	b	.L156
.L155:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB16:
	bl	__cxa_end_cleanup(PLT)
.LEHE16:
.L156:
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
	.uleb128 .LEHB13-.LFB214
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB14-.LFB214
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L155-.LFB214
	.uleb128 0
	.uleb128 .LEHB15-.LFB214
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB16-.LFB214
	.uleb128 .LEHE16-.LEHB16
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
	beq	.L157
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	mov	r0, r3
	bl	_ZN8sqvectorI11SQObjectPtrE11shrinktofitEv(PLT)
.L157:
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
	blt	.L160
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4sizeEv(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7]
	cmp	r2, r3
	bgt	.L161
.L160:
	movs	r3, #1
	b	.L162
.L161:
	movs	r3, #0
.L162:
	cmp	r3, #0
	beq	.L163
	movs	r3, #0
	b	.L164
.L163:
	ldr	r3, [r7, #4]
	add	r2, r3, #24
	ldr	r3, [r7]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN8sqvectorI11SQObjectPtrE6removeEj(PLT)
	ldr	r0, [r7, #4]
	bl	_ZN7SQArray14ShrinkIfNeededEv(PLT)
	movs	r3, #1
.L164:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN7SQArray6RemoveEi, .-_ZN7SQArray6RemoveEi
	.section	.text._Z7str2numPKcR11SQObjectPtr,"ax",%progbits
	.align	2
	.global	_Z7str2numPKcR11SQObjectPtr
	.thumb
	.thumb_func
	.type	_Z7str2numPKcR11SQObjectPtr, %function
_Z7str2numPKcR11SQObjectPtr:
	.fnstart
.LFB299:
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
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #24]
	b	.L166
.L170:
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #46
	beq	.L167
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #69
	beq	.L167
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #101
	bne	.L168
.L167:
	movs	r3, #1
	str	r3, [r7, #24]
	b	.L169
.L168:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L166:
	ldr	r3, [r7, #28]
	ldrb	r3, [r3]
	strb	r3, [r7, #23]
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L170
.L169:
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L171
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	strtod(PLT)
	fcpyd	d7, d0
	fcvtsd	s15, d7
	fsts	s15, [r7, #16]
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #4]
	cmp	r2, r3
	bne	.L172
	movs	r3, #0
	b	.L176
.L172:
	ldr	r0, [r7]
	flds	s0, [r7, #16]
	bl	_ZN11SQObjectPtraSEf(PLT)
	b	.L174
.L171:
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	mov	r1, r3
	movs	r2, #10
	bl	strtol(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #4]
	cmp	r2, r3
	bne	.L175
	movs	r3, #0
	b	.L176
.L175:
	ldr	r0, [r7]
	ldr	r1, [r7, #12]
	bl	_ZN11SQObjectPtraSEi(PLT)
.L174:
	movs	r3, #1
.L176:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_Z7str2numPKcR11SQObjectPtr, .-_Z7str2numPKcR11SQObjectPtr
	.section	.text._ZL10base_dummyP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL10base_dummyP4SQVM, %function
_ZL10base_dummyP4SQVM:
	.fnstart
.LFB300:
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
	.size	_ZL10base_dummyP4SQVM, .-_ZL10base_dummyP4SQVM
	.section	.text._ZL19base_collectgarbageP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL19base_collectgarbageP4SQVM, %function
_ZL19base_collectgarbageP4SQVM:
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
	ldr	r0, [r7, #4]
	bl	sq_collectgarbage(PLT)
	mov	r3, r0
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	sq_pushinteger(PLT)
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL19base_collectgarbageP4SQVM, .-_ZL19base_collectgarbageP4SQVM
	.section	.text._ZL23base_resurectureachableP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL23base_resurectureachableP4SQVM, %function
_ZL23base_resurectureachableP4SQVM:
	.fnstart
.LFB302:
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
	bl	sq_resurrectunreachable(PLT)
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL23base_resurectureachableP4SQVM, .-_ZL23base_resurectureachableP4SQVM
	.section	.text._ZL17base_getroottableP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL17base_getroottableP4SQVM, %function
_ZL17base_getroottableP4SQVM:
	.fnstart
.LFB303:
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
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL17base_getroottableP4SQVM, .-_ZL17base_getroottableP4SQVM
	.section	.text._ZL18base_getconsttableP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL18base_getconsttableP4SQVM, %function
_ZL18base_getconsttableP4SQVM:
	.fnstart
.LFB304:
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
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL18base_getconsttableP4SQVM, .-_ZL18base_getconsttableP4SQVM
	.section	.text._ZL17base_setroottableP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL17base_setroottableP4SQVM, %function
_ZL17base_setroottableP4SQVM:
	.fnstart
.LFB305:
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
	adds	r3, r3, #48
	add	r2, r7, #8
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1ERKS_(PLT)
	ldr	r0, [r7, #4]
.LEHB17:
	bl	sq_setroottable(PLT)
	mov	r3, r0
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L188
	mov	r4, #-1
	b	.L189
.L188:
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE17:
	movs	r4, #1
.L189:
	add	r3, r7, #8
	mov	r0, r3
.LEHB18:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE18:
	mov	r3, r4
	b	.L193
.L192:
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB19:
	bl	__cxa_end_cleanup(PLT)
.LEHE19:
.L193:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA305:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE305-.LLSDACSB305
.LLSDACSB305:
	.uleb128 .LEHB17-.LFB305
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L192-.LFB305
	.uleb128 0
	.uleb128 .LEHB18-.LFB305
	.uleb128 .LEHE18-.LEHB18
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB19-.LFB305
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
.LLSDACSE305:
	.section	.text._ZL17base_setroottableP4SQVM
	.fnend
	.size	_ZL17base_setroottableP4SQVM, .-_ZL17base_setroottableP4SQVM
	.section	.text._ZL18base_setconsttableP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL18base_setconsttableP4SQVM, %function
_ZL18base_setconsttableP4SQVM:
	.fnstart
.LFB306:
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
	ldr	r3, [r3, #140]
	adds	r3, r3, #52
	add	r2, r7, #8
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1ERKS_(PLT)
	ldr	r0, [r7, #4]
.LEHB20:
	bl	sq_setconsttable(PLT)
	mov	r3, r0
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L195
	mov	r4, #-1
	b	.L196
.L195:
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE20:
	movs	r4, #1
.L196:
	add	r3, r7, #8
	mov	r0, r3
.LEHB21:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE21:
	mov	r3, r4
	b	.L200
.L199:
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB22:
	bl	__cxa_end_cleanup(PLT)
.LEHE22:
.L200:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA306:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE306-.LLSDACSB306
.LLSDACSB306:
	.uleb128 .LEHB20-.LFB306
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L199-.LFB306
	.uleb128 0
	.uleb128 .LEHB21-.LFB306
	.uleb128 .LEHE21-.LEHB21
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB22-.LFB306
	.uleb128 .LEHE22-.LEHB22
	.uleb128 0
	.uleb128 0
.LLSDACSE306:
	.section	.text._ZL18base_setconsttableP4SQVM
	.fnend
	.size	_ZL18base_setconsttableP4SQVM, .-_ZL18base_setconsttableP4SQVM
	.section	.text._ZL20base_seterrorhandlerP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL20base_seterrorhandlerP4SQVM, %function
_ZL20base_seterrorhandlerP4SQVM:
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
	ldr	r0, [r7, #4]
	bl	sq_seterrorhandler(PLT)
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL20base_seterrorhandlerP4SQVM, .-_ZL20base_seterrorhandlerP4SQVM
	.section	.text._ZL17base_setdebughookP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL17base_setdebughookP4SQVM, %function
_ZL17base_setdebughookP4SQVM:
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
	ldr	r0, [r7, #4]
	bl	sq_setdebughook(PLT)
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL17base_setdebughookP4SQVM, .-_ZL17base_setdebughookP4SQVM
	.section	.text._ZL20base_enabledebuginfoP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL20base_enabledebuginfoP4SQVM, %function
_ZL20base_enabledebuginfoP4SQVM:
	.fnstart
.LFB309:
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
	movs	r1, #2
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r0, [r7, #12]
	bl	_ZN4SQVM7IsFalseER11SQObjectPtr(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L206
	movs	r3, #0
	b	.L207
.L206:
	movs	r3, #1
.L207:
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	sq_enabledebuginfo(PLT)
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL20base_enabledebuginfoP4SQVM, .-_ZL20base_enabledebuginfoP4SQVM
	.section	.rodata
	.align	2
.LC2:
	.ascii	"unknown\000"
	.align	2
.LC3:
	.ascii	"func\000"
	.align	2
.LC4:
	.ascii	"src\000"
	.align	2
.LC5:
	.ascii	"line\000"
	.align	2
.LC6:
	.ascii	"locals\000"
	.section	.text._ZL19__getcallstackinfosP4SQVMi,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL19__getcallstackinfosP4SQVMi, %function
_ZL19__getcallstackinfosP4SQVMi:
	.fnstart
.LFB310:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #40
	sub	sp, sp, #40
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #24]
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	mov	r2, r3
	bl	sq_stackinfos(PLT)
	mov	r3, r0
	mvns	r3, r3
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L210
	ldr	r3, .L217
.LPIC13:
	add	r3, pc
	str	r3, [r7, #32]
	ldr	r3, .L217+4
.LPIC14:
	add	r3, pc
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L211
	ldr	r3, [r7, #12]
	str	r3, [r7, #32]
.L211:
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L212
	ldr	r3, [r7, #16]
	str	r3, [r7, #28]
.L212:
	ldr	r0, [r7, #4]
	bl	sq_newtable(PLT)
	ldr	r0, [r7, #4]
	ldr	r3, .L217+8
.LPIC15:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	sq_pushstring(PLT)
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #32]
	mov	r2, #-1
	bl	sq_pushstring(PLT)
	ldr	r0, [r7, #4]
	mvn	r1, #2
	movs	r2, #0
	bl	sq_newslot(PLT)
	ldr	r0, [r7, #4]
	ldr	r3, .L217+12
.LPIC16:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	sq_pushstring(PLT)
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #28]
	mov	r2, #-1
	bl	sq_pushstring(PLT)
	ldr	r0, [r7, #4]
	mvn	r1, #2
	movs	r2, #0
	bl	sq_newslot(PLT)
	ldr	r0, [r7, #4]
	ldr	r3, .L217+16
.LPIC17:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	sq_pushstring(PLT)
	ldr	r3, [r7, #20]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	sq_pushinteger(PLT)
	ldr	r0, [r7, #4]
	mvn	r1, #2
	movs	r2, #0
	bl	sq_newslot(PLT)
	ldr	r0, [r7, #4]
	ldr	r3, .L217+20
.LPIC18:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	sq_pushstring(PLT)
	ldr	r0, [r7, #4]
	bl	sq_newtable(PLT)
	movs	r3, #0
	str	r3, [r7, #36]
	b	.L213
.L214:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #24]
	mov	r2, #-1
	bl	sq_pushstring(PLT)
	ldr	r0, [r7, #4]
	mvn	r1, #1
	bl	sq_push(PLT)
	ldr	r0, [r7, #4]
	mvn	r1, #3
	movs	r2, #0
	bl	sq_newslot(PLT)
	ldr	r0, [r7, #4]
	movs	r1, #1
	bl	sq_pop(PLT)
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L213:
	ldr	r2, [r7]
	ldr	r3, [r7, #36]
	ldr	r0, [r7, #4]
	mov	r1, r2
	mov	r2, r3
	bl	sq_getlocal(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L214
	ldr	r0, [r7, #4]
	mvn	r1, #2
	movs	r2, #0
	bl	sq_newslot(PLT)
	movs	r3, #1
	b	.L216
.L210:
	movs	r3, #0
.L216:
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L218:
	.align	2
.L217:
	.word	.LC2-(.LPIC13+4)
	.word	.LC2-(.LPIC14+4)
	.word	.LC3-(.LPIC15+4)
	.word	.LC4-(.LPIC16+4)
	.word	.LC5-(.LPIC17+4)
	.word	.LC6-(.LPIC18+4)
	.fnend
	.size	_ZL19__getcallstackinfosP4SQVMi, .-_ZL19__getcallstackinfosP4SQVMi
	.section	.text._ZL18base_getstackinfosP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL18base_getstackinfosP4SQVM, %function
_ZL18base_getstackinfosP4SQVM:
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
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	mov	r1, #-1
	mov	r2, r3
	bl	sq_getinteger(PLT)
	ldr	r3, [r7, #12]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZL19__getcallstackinfosP4SQVMi(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL18base_getstackinfosP4SQVM, .-_ZL18base_getstackinfosP4SQVM
	.section	.rodata
	.align	2
.LC7:
	.ascii	"assertion failed\000"
	.section	.text._ZL11base_assertP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL11base_assertP4SQVM, %function
_ZL11base_assertP4SQVM:
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
	ldr	r0, [r7, #4]
	movs	r1, #2
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_ZN4SQVM7IsFalseER11SQObjectPtr(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L222
	ldr	r0, [r7, #4]
	ldr	r3, .L224
.LPIC19:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L223
.L222:
	movs	r3, #0
.L223:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L225:
	.align	2
.L224:
	.word	.LC7-(.LPIC19+4)
	.fnend
	.size	_ZL11base_assertP4SQVM, .-_ZL11base_assertP4SQVM
	.section	.text._ZL16get_slice_paramsP4SQVMRiS1_R11SQObjectPtr,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL16get_slice_paramsP4SQVMRiS1_R11SQObjectPtr, %function
_ZL16get_slice_paramsP4SQVMRiS1_R11SQObjectPtr:
	.fnstart
.LFB313:
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
	ldr	r0, [r7, #12]
	bl	sq_gettop(PLT)
	mov	r3, r0
	str	r3, [r7, #28]
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r0, [r7, #12]
	movs	r1, #1
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	ldr	r0, [r7, #12]
	movs	r1, #2
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	ldr	r2, [r3]
	movs	r3, #1
	movt	r3, 256
	cmp	r2, r3
	beq	.L227
	ldr	r3, [r7, #24]
	ldr	r3, [r3]
	and	r3, r3, #67108864
	cmp	r3, #0
	beq	.L227
	ldr	r3, [r7, #24]
	ldr	r2, [r3]
	movs	r3, #4
	movt	r3, 1280
	cmp	r2, r3
	bne	.L228
	ldr	r3, [r7, #24]
	flds	s15, [r3, #4]
	ftosizs	s15, s15
	fmrs	r2, s15	@ int
	b	.L229
.L228:
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #4]
.L229:
	ldr	r3, [r7, #8]
	str	r2, [r3]
.L227:
	ldr	r3, [r7, #28]
	cmp	r3, #2
	ble	.L230
	ldr	r0, [r7, #12]
	movs	r1, #3
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	and	r3, r3, #67108864
	cmp	r3, #0
	beq	.L231
	ldr	r3, [r7, #20]
	ldr	r2, [r3]
	movs	r3, #4
	movt	r3, 1280
	cmp	r2, r3
	bne	.L232
	ldr	r3, [r7, #20]
	flds	s15, [r3, #4]
	ftosizs	s15, s15
	fmrs	r2, s15	@ int
	b	.L233
.L232:
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #4]
.L233:
	ldr	r3, [r7, #4]
	str	r2, [r3]
.L231:
	b	.L234
.L230:
	ldr	r0, [r7, #12]
	movs	r1, #1
	bl	sq_getsize(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3]
.L234:
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL16get_slice_paramsP4SQVMRiS1_R11SQObjectPtr, .-_ZL16get_slice_paramsP4SQVMRiS1_R11SQObjectPtr
	.section	.rodata
	.align	2
.LC8:
	.ascii	"%s\000"
	.section	.text._ZL10base_printP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL10base_printP4SQVM, %function
_ZL10base_printP4SQVM:
	.fnstart
.LFB314:
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
	movs	r1, #2
	bl	sq_tostring(PLT)
	mov	r3, r0
	mvns	r3, r3
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L237
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	mov	r1, #-1
	mov	r2, r3
	bl	sq_getstring(PLT)
	mov	r3, r0
	mvns	r3, r3
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L237
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #140]
	ldr	r3, [r3, #164]
	cmp	r3, #0
	beq	.L238
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #140]
	ldr	r3, [r3, #164]
	ldr	r2, [r7, #12]
	ldr	r0, [r7, #4]
	ldr	r1, .L241
.LPIC20:
	add	r1, pc
	blx	r3
.L238:
	movs	r3, #0
	b	.L240
.L237:
	mov	r3, #-1
.L240:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L242:
	.align	2
.L241:
	.word	.LC8-(.LPIC20+4)
	.fnend
	.size	_ZL10base_printP4SQVM, .-_ZL10base_printP4SQVM
	.section	.text._ZL10base_errorP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL10base_errorP4SQVM, %function
_ZL10base_errorP4SQVM:
	.fnstart
.LFB315:
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
	movs	r1, #2
	bl	sq_tostring(PLT)
	mov	r3, r0
	mvns	r3, r3
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L244
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	mov	r1, #-1
	mov	r2, r3
	bl	sq_getstring(PLT)
	mov	r3, r0
	mvns	r3, r3
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L244
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #140]
	ldr	r3, [r3, #168]
	cmp	r3, #0
	beq	.L245
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #140]
	ldr	r3, [r3, #168]
	ldr	r2, [r7, #12]
	ldr	r0, [r7, #4]
	ldr	r1, .L248
.LPIC21:
	add	r1, pc
	blx	r3
.L245:
	movs	r3, #0
	b	.L247
.L244:
	mov	r3, #-1
.L247:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L249:
	.align	2
.L248:
	.word	.LC8-(.LPIC21+4)
	.fnend
	.size	_ZL10base_errorP4SQVM, .-_ZL10base_errorP4SQVM
	.section	.rodata
	.align	2
.LC9:
	.ascii	"unnamedbuffer\000"
	.section	.text._ZL18base_compilestringP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL18base_compilestringP4SQVM, %function
_ZL18base_compilestringP4SQVM:
	.fnstart
.LFB316:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #32
	sub	sp, sp, #32
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	sq_gettop(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, .L255
.LPIC22:
	add	r3, pc
	str	r3, [r7, #8]
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	movs	r1, #2
	mov	r2, r3
	bl	sq_getstring(PLT)
	ldr	r0, [r7, #4]
	movs	r1, #2
	bl	sq_getsize(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	cmp	r3, #2
	ble	.L251
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	movs	r1, #3
	mov	r2, r3
	bl	sq_getstring(PLT)
.L251:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	movs	r1, #0
	str	r1, [sp]
	ldr	r0, [r7, #4]
	mov	r1, r2
	ldr	r2, [r7, #16]
	bl	sq_compilebuffer(PLT)
	mov	r3, r0
	mvns	r3, r3
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L252
	movs	r3, #1
	b	.L254
.L252:
	mov	r3, #-1
.L254:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L256:
	.align	2
.L255:
	.word	.LC9-(.LPIC22+4)
	.fnend
	.size	_ZL18base_compilestringP4SQVM, .-_ZL18base_compilestringP4SQVM
	.section	.text._ZL14base_newthreadP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL14base_newthreadP4SQVM, %function
_ZL14base_newthreadP4SQVM:
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
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	movs	r1, #2
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #32]
	ldr	r3, [r3, #40]
	lsls	r3, r3, #1
	adds	r3, r3, #2
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #17
	it	lt
	movlt	r3, #17
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	sq_newthread(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	mvn	r2, #1
	bl	sq_move(PLT)
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL14base_newthreadP4SQVM, .-_ZL14base_newthreadP4SQVM
	.section	.text._ZL12base_suspendP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL12base_suspendP4SQVM, %function
_ZL12base_suspendP4SQVM:
	.fnstart
.LFB318:
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
	bl	sq_suspendvm(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL12base_suspendP4SQVM, .-_ZL12base_suspendP4SQVM
	.section	.text._ZL10base_arrayP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL10base_arrayP4SQVM, %function
_ZL10base_arrayP4SQVM:
	.fnstart
.LFB319:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #28
	sub	sp, sp, #28
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	movs	r1, #2
.LEHB23:
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r0, [r7, #4]
	bl	sq_gettop(PLT)
	mov	r3, r0
	cmp	r3, #2
	ite	gt
	movgt	r3, #1
	movle	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L262
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #140]
	mov	r0, r3
	movs	r1, #0
	bl	_ZN7SQArray6CreateEP13SQSharedStatei(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #16]
	ldr	r2, [r3]
	movs	r3, #4
	movt	r3, 1280
	cmp	r2, r3
	bne	.L263
	ldr	r3, [r7, #16]
	flds	s15, [r3, #4]
	ftosizs	s15, s15
	fmrs	r4, s15	@ int
	b	.L264
.L263:
	ldr	r3, [r7, #16]
	ldr	r4, [r3, #4]
.L264:
	ldr	r0, [r7, #4]
	movs	r1, #3
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	ldr	r0, [r7, #20]
	mov	r1, r4
	mov	r2, r3
	bl	_ZN7SQArray6ResizeEiR11SQObjectPtr(PLT)
	b	.L265
.L262:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #140]
	ldr	r3, [r7, #16]
	ldr	r1, [r3]
	movs	r3, #4
	movt	r3, 1280
	cmp	r1, r3
	bne	.L266
	ldr	r3, [r7, #16]
	flds	s15, [r3, #4]
	ftosizs	s15, s15
	fmrs	r3, s15	@ int
	b	.L267
.L266:
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #4]
.L267:
	mov	r0, r2
	mov	r1, r3
	bl	_ZN7SQArray6CreateEP13SQSharedStatei(PLT)
.LEHE23:
	mov	r3, r0
	str	r3, [r7, #20]
.L265:
	add	r3, r7, #8
	mov	r0, r3
	ldr	r1, [r7, #20]
	bl	_ZN11SQObjectPtrC1EP7SQArray(PLT)
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	mov	r1, r3
.LEHB24:
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE24:
	add	r3, r7, #8
	mov	r0, r3
.LEHB25:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE25:
	movs	r3, #1
	b	.L271
.L270:
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB26:
	bl	__cxa_end_cleanup(PLT)
.LEHE26:
.L271:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA319:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE319-.LLSDACSB319
.LLSDACSB319:
	.uleb128 .LEHB23-.LFB319
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB24-.LFB319
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L270-.LFB319
	.uleb128 0
	.uleb128 .LEHB25-.LFB319
	.uleb128 .LEHE25-.LEHB25
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB26-.LFB319
	.uleb128 .LEHE26-.LEHB26
	.uleb128 0
	.uleb128 0
.LLSDACSE319:
	.section	.text._ZL10base_arrayP4SQVM
	.fnend
	.size	_ZL10base_arrayP4SQVM, .-_ZL10base_arrayP4SQVM
	.section	.text._ZL9base_typeP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL9base_typeP4SQVM, %function
_ZL9base_typeP4SQVM:
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
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	movs	r1, #2
.LEHB27:
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #140]
	ldr	r0, [r7, #20]
	bl	_Z11GetTypeNameRK11SQObjectPtr(PLT)
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE27:
	mov	r3, r0
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	mov	r1, r3
.LEHB28:
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE28:
	add	r3, r7, #12
	mov	r0, r3
.LEHB29:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE29:
	movs	r3, #1
	b	.L276
.L275:
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB30:
	bl	__cxa_end_cleanup(PLT)
.LEHE30:
.L276:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA320:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE320-.LLSDACSB320
.LLSDACSB320:
	.uleb128 .LEHB27-.LFB320
	.uleb128 .LEHE27-.LEHB27
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB28-.LFB320
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L275-.LFB320
	.uleb128 0
	.uleb128 .LEHB29-.LFB320
	.uleb128 .LEHE29-.LEHB29
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB30-.LFB320
	.uleb128 .LEHE30-.LEHB30
	.uleb128 0
	.uleb128 0
.LLSDACSE320:
	.section	.text._ZL9base_typeP4SQVM
	.fnend
	.size	_ZL9base_typeP4SQVM, .-_ZL9base_typeP4SQVM
	.section	.rodata
	.align	2
.LC10:
	.ascii	"no closure in the calls stack\000"
	.section	.text._ZL11base_calleeP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL11base_calleeP4SQVM, %function
_ZL11base_calleeP4SQVM:
	.fnstart
.LFB321:
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
	ble	.L278
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
	movs	r3, #1
	b	.L279
.L278:
	ldr	r0, [r7, #4]
	ldr	r3, .L280
.LPIC23:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
.L279:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L281:
	.align	2
.L280:
	.word	.LC10-(.LPIC23+4)
	.fnend
	.size	_ZL11base_calleeP4SQVM, .-_ZL11base_calleeP4SQVM
	.section	.rodata
	.align	2
.LC11:
	.ascii	"seterrorhandler\000"
	.align	2
.LC12:
	.ascii	"setdebughook\000"
	.align	2
.LC13:
	.ascii	"enabledebuginfo\000"
	.align	2
.LC14:
	.ascii	"getstackinfos\000"
	.align	2
.LC15:
	.ascii	".n\000"
	.align	2
.LC16:
	.ascii	"getroottable\000"
	.align	2
.LC17:
	.ascii	"setroottable\000"
	.align	2
.LC18:
	.ascii	"getconsttable\000"
	.align	2
.LC19:
	.ascii	"setconsttable\000"
	.align	2
.LC20:
	.ascii	"assert\000"
	.align	2
.LC21:
	.ascii	"print\000"
	.align	2
.LC22:
	.ascii	"error\000"
	.align	2
.LC23:
	.ascii	"compilestring\000"
	.align	2
.LC24:
	.ascii	".ss\000"
	.align	2
.LC25:
	.ascii	"newthread\000"
	.align	2
.LC26:
	.ascii	".c\000"
	.align	2
.LC27:
	.ascii	"suspend\000"
	.align	2
.LC28:
	.ascii	"array\000"
	.align	2
.LC29:
	.ascii	"type\000"
	.align	2
.LC30:
	.ascii	"callee\000"
	.align	2
.LC31:
	.ascii	"dummy\000"
	.align	2
.LC32:
	.ascii	"collectgarbage\000"
	.align	2
.LC33:
	.ascii	"resurrectunreachable\000"
	.section	.data.rel.local._ZL10base_funcs,"aw",%progbits
	.align	2
	.type	_ZL10base_funcs, %object
	.size	_ZL10base_funcs, 336
_ZL10base_funcs:
	.word	.LC11
	.word	_ZL20base_seterrorhandlerP4SQVM
	.word	2
	.word	0
	.word	.LC12
	.word	_ZL17base_setdebughookP4SQVM
	.word	2
	.word	0
	.word	.LC13
	.word	_ZL20base_enabledebuginfoP4SQVM
	.word	2
	.word	0
	.word	.LC14
	.word	_ZL18base_getstackinfosP4SQVM
	.word	2
	.word	.LC15
	.word	.LC16
	.word	_ZL17base_getroottableP4SQVM
	.word	1
	.word	0
	.word	.LC17
	.word	_ZL17base_setroottableP4SQVM
	.word	2
	.word	0
	.word	.LC18
	.word	_ZL18base_getconsttableP4SQVM
	.word	1
	.word	0
	.word	.LC19
	.word	_ZL18base_setconsttableP4SQVM
	.word	2
	.word	0
	.word	.LC20
	.word	_ZL11base_assertP4SQVM
	.word	2
	.word	0
	.word	.LC21
	.word	_ZL10base_printP4SQVM
	.word	2
	.word	0
	.word	.LC22
	.word	_ZL10base_errorP4SQVM
	.word	2
	.word	0
	.word	.LC23
	.word	_ZL18base_compilestringP4SQVM
	.word	-2
	.word	.LC24
	.word	.LC25
	.word	_ZL14base_newthreadP4SQVM
	.word	2
	.word	.LC26
	.word	.LC27
	.word	_ZL12base_suspendP4SQVM
	.word	-1
	.word	0
	.word	.LC28
	.word	_ZL10base_arrayP4SQVM
	.word	-2
	.word	.LC15
	.word	.LC29
	.word	_ZL9base_typeP4SQVM
	.word	2
	.word	0
	.word	.LC30
	.word	_ZL11base_calleeP4SQVM
	.word	0
	.word	0
	.word	.LC31
	.word	_ZL10base_dummyP4SQVM
	.word	0
	.word	0
	.word	.LC32
	.word	_ZL19base_collectgarbageP4SQVM
	.word	0
	.word	0
	.word	.LC33
	.word	_ZL23base_resurectureachableP4SQVM
	.word	0
	.word	0
	.word	0
	.word	0
	.space	8
	.section	.rodata
	.align	2
.LC34:
	.ascii	"_versionnumber_\000"
	.align	2
.LC35:
	.ascii	"_version_\000"
	.align	2
.LC36:
	.ascii	"Squirrel 3.0.7 stable\000"
	.align	2
.LC37:
	.ascii	"_charsize_\000"
	.align	2
.LC38:
	.ascii	"_intsize_\000"
	.align	2
.LC39:
	.ascii	"_floatsize_\000"
	.section	.text._Z16sq_base_registerP4SQVM,"ax",%progbits
	.align	2
	.global	_Z16sq_base_registerP4SQVM
	.thumb
	.thumb_func
	.type	_Z16sq_base_registerP4SQVM, %function
_Z16sq_base_registerP4SQVM:
	.fnstart
.LFB322:
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
	ldr	r0, [r7, #4]
	bl	sq_pushroottable(PLT)
	b	.L283
.L284:
	ldr	r3, .L285
.LPIC24:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #12]
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r0, [r7, #4]
	mov	r1, r3
	mov	r2, #-1
	bl	sq_pushstring(PLT)
	ldr	r3, .L285+4
.LPIC25:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #12]
	lsls	r3, r3, #4
	add	r3, r3, r2
	adds	r3, r3, #4
	ldr	r3, [r3]
	ldr	r0, [r7, #4]
	mov	r1, r3
	movs	r2, #0
	bl	sq_newclosure(PLT)
	ldr	r3, .L285+8
.LPIC26:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #12]
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r0, [r7, #4]
	mov	r1, #-1
	mov	r2, r3
	bl	sq_setnativeclosurename(PLT)
	ldr	r3, .L285+12
.LPIC27:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #12]
	lsls	r3, r3, #4
	add	r3, r3, r2
	adds	r3, r3, #8
	ldr	r2, [r3]
	ldr	r3, .L285+16
.LPIC28:
	add	r3, pc
	mov	r1, r3
	ldr	r3, [r7, #12]
	lsls	r3, r3, #4
	add	r3, r3, r1
	adds	r3, r3, #12
	ldr	r3, [r3]
	ldr	r0, [r7, #4]
	mov	r1, r2
	mov	r2, r3
	bl	sq_setparamscheck(PLT)
	ldr	r0, [r7, #4]
	mvn	r1, #2
	movs	r2, #0
	bl	sq_newslot(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L283:
	ldr	r3, .L285+20
.LPIC29:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #12]
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L284
	ldr	r0, [r7, #4]
	ldr	r3, .L285+24
.LPIC30:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	sq_pushstring(PLT)
	ldr	r0, [r7, #4]
	movw	r1, #307
	bl	sq_pushinteger(PLT)
	ldr	r0, [r7, #4]
	mvn	r1, #2
	movs	r2, #0
	bl	sq_newslot(PLT)
	ldr	r0, [r7, #4]
	ldr	r3, .L285+28
.LPIC31:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	sq_pushstring(PLT)
	ldr	r0, [r7, #4]
	ldr	r3, .L285+32
.LPIC32:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	sq_pushstring(PLT)
	ldr	r0, [r7, #4]
	mvn	r1, #2
	movs	r2, #0
	bl	sq_newslot(PLT)
	ldr	r0, [r7, #4]
	ldr	r3, .L285+36
.LPIC33:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	sq_pushstring(PLT)
	ldr	r0, [r7, #4]
	movs	r1, #1
	bl	sq_pushinteger(PLT)
	ldr	r0, [r7, #4]
	mvn	r1, #2
	movs	r2, #0
	bl	sq_newslot(PLT)
	ldr	r0, [r7, #4]
	ldr	r3, .L285+40
.LPIC34:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	sq_pushstring(PLT)
	ldr	r0, [r7, #4]
	movs	r1, #4
	bl	sq_pushinteger(PLT)
	ldr	r0, [r7, #4]
	mvn	r1, #2
	movs	r2, #0
	bl	sq_newslot(PLT)
	ldr	r0, [r7, #4]
	ldr	r3, .L285+44
.LPIC35:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	sq_pushstring(PLT)
	ldr	r0, [r7, #4]
	movs	r1, #4
	bl	sq_pushinteger(PLT)
	ldr	r0, [r7, #4]
	mvn	r1, #2
	movs	r2, #0
	bl	sq_newslot(PLT)
	ldr	r0, [r7, #4]
	movs	r1, #1
	bl	sq_pop(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L286:
	.align	2
.L285:
	.word	_ZL10base_funcs-(.LPIC24+4)
	.word	_ZL10base_funcs-(.LPIC25+4)
	.word	_ZL10base_funcs-(.LPIC26+4)
	.word	_ZL10base_funcs-(.LPIC27+4)
	.word	_ZL10base_funcs-(.LPIC28+4)
	.word	_ZL10base_funcs-(.LPIC29+4)
	.word	.LC34-(.LPIC30+4)
	.word	.LC35-(.LPIC31+4)
	.word	.LC36-(.LPIC32+4)
	.word	.LC37-(.LPIC33+4)
	.word	.LC38-(.LPIC34+4)
	.word	.LC39-(.LPIC35+4)
	.fnend
	.size	_Z16sq_base_registerP4SQVM, .-_Z16sq_base_registerP4SQVM
	.section	.text._ZL20default_delegate_lenP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL20default_delegate_lenP4SQVM, %function
_ZL20default_delegate_lenP4SQVM:
	.fnstart
.LFB323:
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
	movs	r1, #1
.LEHB31:
	bl	sq_getsize(PLT)
.LEHE31:
	mov	r3, r0
	add	r2, r7, #8
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	mov	r1, r3
.LEHB32:
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE32:
	add	r3, r7, #8
	mov	r0, r3
.LEHB33:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE33:
	movs	r3, #1
	b	.L291
.L290:
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB34:
	bl	__cxa_end_cleanup(PLT)
.LEHE34:
.L291:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA323:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE323-.LLSDACSB323
.LLSDACSB323:
	.uleb128 .LEHB31-.LFB323
	.uleb128 .LEHE31-.LEHB31
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB32-.LFB323
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L290-.LFB323
	.uleb128 0
	.uleb128 .LEHB33-.LFB323
	.uleb128 .LEHE33-.LEHB33
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB34-.LFB323
	.uleb128 .LEHE34-.LEHB34
	.uleb128 0
	.uleb128 0
.LLSDACSE323:
	.section	.text._ZL20default_delegate_lenP4SQVM
	.fnend
	.size	_ZL20default_delegate_lenP4SQVM, .-_ZL20default_delegate_lenP4SQVM
	.section	.rodata
	.align	2
.LC40:
	.ascii	"cannot convert the string\000"
	.section	.text._ZL24default_delegate_tofloatP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL24default_delegate_tofloatP4SQVM, %function
_ZL24default_delegate_tofloatP4SQVM:
	.fnstart
.LFB324:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #52
	sub	sp, sp, #52
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	movs	r1, #1
.LEHB35:
	bl	_Z9stack_getP4SQVMi(PLT)
.LEHE35:
	mov	r3, r0
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	ldr	r3, [r3]
	movs	r2, #2
	movt	r2, 1280
	cmp	r3, r2
	beq	.L294
	movs	r2, #2
	movt	r2, 1280
	cmp	r3, r2
	bgt	.L295
	movs	r2, #8
	movt	r2, 256
	cmp	r3, r2
	beq	.L296
	b	.L293
.L295:
	movs	r2, #4
	movt	r2, 1280
	cmp	r3, r2
	beq	.L294
	movs	r2, #16
	movt	r2, 2048
	cmp	r3, r2
	bne	.L293
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #4]
	add	r2, r3, #28
	add	r3, r7, #12
	mov	r0, r2
	mov	r1, r3
.LEHB36:
	bl	_Z7str2numPKcR11SQObjectPtr(PLT)
.LEHE36:
	mov	r3, r0
	cmp	r3, #0
	beq	.L298
	ldr	r2, [r7, #12]
	movs	r3, #2
	movt	r3, 1280
	cmp	r2, r3
	bne	.L299
	ldr	r3, [r7, #16]
	fmsr	s14, r3	@ int
	fsitos	s15, s14
	b	.L300
.L299:
	flds	s15, [r7, #16]
.L300:
	add	r3, r7, #20
	mov	r0, r3
	fcpys	s0, s15
	bl	_ZN11SQObjectPtrC1Ef(PLT)
	add	r3, r7, #20
	ldr	r0, [r7, #4]
	mov	r1, r3
.LEHB37:
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE37:
	add	r3, r7, #20
	mov	r0, r3
.LEHB38:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE38:
	movs	r4, #0
	b	.L301
.L298:
	movs	r4, #1
.L301:
	add	r3, r7, #12
	mov	r0, r3
.LEHB39:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	cmp	r4, #1
	bne	.L305
	nop
	ldr	r0, [r7, #4]
	ldr	r3, .L320+4
.LPIC36:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
.LEHE39:
	mov	r3, r0
	b	.L319
.L294:
	ldr	r3, [r7, #44]
	ldr	r2, [r3]
	movs	r3, #2
	movt	r3, 1280
	cmp	r2, r3
	bne	.L306
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #4]
	fmsr	s14, r3	@ int
	fsitos	s15, s14
	b	.L307
.L306:
	ldr	r3, [r7, #44]
	flds	s15, [r3, #4]
.L307:
	add	r3, r7, #28
	mov	r0, r3
	fcpys	s0, s15
	bl	_ZN11SQObjectPtrC1Ef(PLT)
	add	r3, r7, #28
	ldr	r0, [r7, #4]
	mov	r1, r3
.LEHB40:
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE40:
	add	r3, r7, #28
	mov	r0, r3
.LEHB41:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE41:
	b	.L305
.L296:
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L308
	fconsts	s15, #112
	b	.L309
.L308:
	flds	s15, .L320
.L309:
	add	r3, r7, #36
	mov	r0, r3
	fcpys	s0, s15
	bl	_ZN11SQObjectPtrC1Ef(PLT)
	add	r3, r7, #36
	ldr	r0, [r7, #4]
	mov	r1, r3
.LEHB42:
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE42:
	add	r3, r7, #36
	mov	r0, r3
.LEHB43:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L305
.L293:
	ldr	r0, [r7, #4]
	bl	_ZN4SQVM8PushNullEv(PLT)
.LEHE43:
	nop
.L305:
	movs	r3, #1
	b	.L319
.L315:
	add	r3, r7, #20
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L311
.L314:
.L311:
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB44:
	bl	__cxa_end_cleanup(PLT)
.LEHE44:
.L316:
	add	r3, r7, #28
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB45:
	bl	__cxa_end_cleanup(PLT)
.LEHE45:
.L317:
	add	r3, r7, #36
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB46:
	bl	__cxa_end_cleanup(PLT)
.LEHE46:
.L319:
	mov	r0, r3
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L321:
	.align	2
.L320:
	.word	0
	.word	.LC40-(.LPIC36+4)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA324:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE324-.LLSDACSB324
.LLSDACSB324:
	.uleb128 .LEHB35-.LFB324
	.uleb128 .LEHE35-.LEHB35
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB36-.LFB324
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L314-.LFB324
	.uleb128 0
	.uleb128 .LEHB37-.LFB324
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L315-.LFB324
	.uleb128 0
	.uleb128 .LEHB38-.LFB324
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L314-.LFB324
	.uleb128 0
	.uleb128 .LEHB39-.LFB324
	.uleb128 .LEHE39-.LEHB39
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB40-.LFB324
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L316-.LFB324
	.uleb128 0
	.uleb128 .LEHB41-.LFB324
	.uleb128 .LEHE41-.LEHB41
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB42-.LFB324
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L317-.LFB324
	.uleb128 0
	.uleb128 .LEHB43-.LFB324
	.uleb128 .LEHE43-.LEHB43
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB44-.LFB324
	.uleb128 .LEHE44-.LEHB44
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB45-.LFB324
	.uleb128 .LEHE45-.LEHB45
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB46-.LFB324
	.uleb128 .LEHE46-.LEHB46
	.uleb128 0
	.uleb128 0
.LLSDACSE324:
	.section	.text._ZL24default_delegate_tofloatP4SQVM
	.fnend
	.size	_ZL24default_delegate_tofloatP4SQVM, .-_ZL24default_delegate_tofloatP4SQVM
	.section	.text._ZL26default_delegate_tointegerP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL26default_delegate_tointegerP4SQVM, %function
_ZL26default_delegate_tointegerP4SQVM:
	.fnstart
.LFB325:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #52
	sub	sp, sp, #52
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	movs	r1, #1
.LEHB47:
	bl	_Z9stack_getP4SQVMi(PLT)
.LEHE47:
	mov	r3, r0
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	ldr	r3, [r3]
	movs	r2, #2
	movt	r2, 1280
	cmp	r3, r2
	beq	.L324
	movs	r2, #2
	movt	r2, 1280
	cmp	r3, r2
	bgt	.L325
	movs	r2, #8
	movt	r2, 256
	cmp	r3, r2
	beq	.L326
	b	.L323
.L325:
	movs	r2, #4
	movt	r2, 1280
	cmp	r3, r2
	beq	.L324
	movs	r2, #16
	movt	r2, 2048
	cmp	r3, r2
	bne	.L323
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #4]
	add	r2, r3, #28
	add	r3, r7, #12
	mov	r0, r2
	mov	r1, r3
.LEHB48:
	bl	_Z7str2numPKcR11SQObjectPtr(PLT)
.LEHE48:
	mov	r3, r0
	cmp	r3, #0
	beq	.L328
	ldr	r2, [r7, #12]
	movs	r3, #4
	movt	r3, 1280
	cmp	r2, r3
	bne	.L329
	flds	s15, [r7, #16]
	ftosizs	s15, s15
	fmrs	r2, s15	@ int
	b	.L330
.L329:
	ldr	r2, [r7, #16]
.L330:
	add	r3, r7, #20
	mov	r0, r3
	mov	r1, r2
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r3, r7, #20
	ldr	r0, [r7, #4]
	mov	r1, r3
.LEHB49:
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE49:
	add	r3, r7, #20
	mov	r0, r3
.LEHB50:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE50:
	movs	r4, #0
	b	.L331
.L328:
	movs	r4, #1
.L331:
	add	r3, r7, #12
	mov	r0, r3
.LEHB51:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	cmp	r4, #1
	bne	.L335
	nop
	ldr	r0, [r7, #4]
	ldr	r3, .L350
.LPIC37:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
.LEHE51:
	mov	r3, r0
	b	.L349
.L324:
	ldr	r3, [r7, #44]
	ldr	r2, [r3]
	movs	r3, #4
	movt	r3, 1280
	cmp	r2, r3
	bne	.L336
	ldr	r3, [r7, #44]
	flds	s15, [r3, #4]
	ftosizs	s15, s15
	fmrs	r2, s15	@ int
	b	.L337
.L336:
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #4]
.L337:
	add	r3, r7, #28
	mov	r0, r3
	mov	r1, r2
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r3, r7, #28
	ldr	r0, [r7, #4]
	mov	r1, r3
.LEHB52:
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE52:
	add	r3, r7, #28
	mov	r0, r3
.LEHB53:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE53:
	b	.L335
.L326:
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L338
	movs	r3, #1
	b	.L339
.L338:
	movs	r3, #0
.L339:
	add	r2, r7, #36
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r3, r7, #36
	ldr	r0, [r7, #4]
	mov	r1, r3
.LEHB54:
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE54:
	add	r3, r7, #36
	mov	r0, r3
.LEHB55:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L335
.L323:
	ldr	r0, [r7, #4]
	bl	_ZN4SQVM8PushNullEv(PLT)
.LEHE55:
	nop
.L335:
	movs	r3, #1
	b	.L349
.L345:
	add	r3, r7, #20
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L341
.L344:
.L341:
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB56:
	bl	__cxa_end_cleanup(PLT)
.LEHE56:
.L346:
	add	r3, r7, #28
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB57:
	bl	__cxa_end_cleanup(PLT)
.LEHE57:
.L347:
	add	r3, r7, #36
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB58:
	bl	__cxa_end_cleanup(PLT)
.LEHE58:
.L349:
	mov	r0, r3
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L351:
	.align	2
.L350:
	.word	.LC40-(.LPIC37+4)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA325:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE325-.LLSDACSB325
.LLSDACSB325:
	.uleb128 .LEHB47-.LFB325
	.uleb128 .LEHE47-.LEHB47
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB48-.LFB325
	.uleb128 .LEHE48-.LEHB48
	.uleb128 .L344-.LFB325
	.uleb128 0
	.uleb128 .LEHB49-.LFB325
	.uleb128 .LEHE49-.LEHB49
	.uleb128 .L345-.LFB325
	.uleb128 0
	.uleb128 .LEHB50-.LFB325
	.uleb128 .LEHE50-.LEHB50
	.uleb128 .L344-.LFB325
	.uleb128 0
	.uleb128 .LEHB51-.LFB325
	.uleb128 .LEHE51-.LEHB51
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB52-.LFB325
	.uleb128 .LEHE52-.LEHB52
	.uleb128 .L346-.LFB325
	.uleb128 0
	.uleb128 .LEHB53-.LFB325
	.uleb128 .LEHE53-.LEHB53
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB54-.LFB325
	.uleb128 .LEHE54-.LEHB54
	.uleb128 .L347-.LFB325
	.uleb128 0
	.uleb128 .LEHB55-.LFB325
	.uleb128 .LEHE55-.LEHB55
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB56-.LFB325
	.uleb128 .LEHE56-.LEHB56
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB57-.LFB325
	.uleb128 .LEHE57-.LEHB57
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB58-.LFB325
	.uleb128 .LEHE58-.LEHB58
	.uleb128 0
	.uleb128 0
.LLSDACSE325:
	.section	.text._ZL26default_delegate_tointegerP4SQVM
	.fnend
	.size	_ZL26default_delegate_tointegerP4SQVM, .-_ZL26default_delegate_tointegerP4SQVM
	.section	.text._ZL25default_delegate_tostringP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL25default_delegate_tostringP4SQVM, %function
_ZL25default_delegate_tostringP4SQVM:
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
	movs	r1, #1
	bl	sq_tostring(PLT)
	mov	r3, r0
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L353
	mov	r3, #-1
	b	.L354
.L353:
	movs	r3, #1
.L354:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL25default_delegate_tostringP4SQVM, .-_ZL25default_delegate_tostringP4SQVM
	.section	.text._ZL20obj_delegate_weakrefP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL20obj_delegate_weakrefP4SQVM, %function
_ZL20obj_delegate_weakrefP4SQVM:
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
	ldr	r0, [r7, #4]
	movs	r1, #1
	bl	sq_weakref(PLT)
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL20obj_delegate_weakrefP4SQVM, .-_ZL20obj_delegate_weakrefP4SQVM
	.section	.text._ZL9obj_clearP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL9obj_clearP4SQVM, %function
_ZL9obj_clearP4SQVM:
	.fnstart
.LFB328:
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
	mov	r1, #-1
	bl	sq_clear(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL9obj_clearP4SQVM, .-_ZL9obj_clearP4SQVM
	.section	.text._ZL22number_delegate_tocharP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL22number_delegate_tocharP4SQVM, %function
_ZL22number_delegate_tocharP4SQVM:
	.fnstart
.LFB329:
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
	movs	r1, #1
.LEHB59:
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r2, [r3]
	movs	r3, #4
	movt	r3, 1280
	cmp	r2, r3
	bne	.L360
	ldr	r3, [r7, #20]
	flds	s15, [r3, #4]
	ftosizs	s15, s15
	fmrs	r3, s15	@ int
	uxtb	r3, r3
	b	.L361
.L360:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	uxtb	r3, r3
.L361:
	strb	r3, [r7, #11]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #140]
	add	r3, r7, #11
	mov	r0, r2
	mov	r1, r3
	movs	r2, #1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE59:
	mov	r3, r0
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	mov	r1, r3
.LEHB60:
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE60:
	add	r3, r7, #12
	mov	r0, r3
.LEHB61:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE61:
	movs	r3, #1
	b	.L365
.L364:
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB62:
	bl	__cxa_end_cleanup(PLT)
.LEHE62:
.L365:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA329:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE329-.LLSDACSB329
.LLSDACSB329:
	.uleb128 .LEHB59-.LFB329
	.uleb128 .LEHE59-.LEHB59
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB60-.LFB329
	.uleb128 .LEHE60-.LEHB60
	.uleb128 .L364-.LFB329
	.uleb128 0
	.uleb128 .LEHB61-.LFB329
	.uleb128 .LEHE61-.LEHB61
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB62-.LFB329
	.uleb128 .LEHE62-.LEHB62
	.uleb128 0
	.uleb128 0
.LLSDACSE329:
	.section	.text._ZL22number_delegate_tocharP4SQVM
	.fnend
	.size	_ZL22number_delegate_tocharP4SQVM, .-_ZL22number_delegate_tocharP4SQVM
	.section	.text._ZL15table_rawdeleteP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL15table_rawdeleteP4SQVM, %function
_ZL15table_rawdeleteP4SQVM:
	.fnstart
.LFB330:
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
	movs	r1, #1
	movs	r2, #1
	bl	sq_rawdeleteslot(PLT)
	mov	r3, r0
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L367
	mov	r3, #-1
	b	.L368
.L367:
	movs	r3, #1
.L368:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL15table_rawdeleteP4SQVM, .-_ZL15table_rawdeleteP4SQVM
	.section	.text._ZL19container_rawexistsP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL19container_rawexistsP4SQVM, %function
_ZL19container_rawexistsP4SQVM:
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
	mvn	r1, #1
	bl	sq_rawget(PLT)
	mov	r3, r0
	mvns	r3, r3
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L370
	ldr	r0, [r7, #4]
	movs	r1, #1
	bl	sq_pushbool(PLT)
	movs	r3, #1
	b	.L371
.L370:
	ldr	r0, [r7, #4]
	movs	r1, #0
	bl	sq_pushbool(PLT)
	movs	r3, #1
.L371:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL19container_rawexistsP4SQVM, .-_ZL19container_rawexistsP4SQVM
	.section	.text._ZL16container_rawsetP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL16container_rawsetP4SQVM, %function
_ZL16container_rawsetP4SQVM:
	.fnstart
.LFB332:
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
	mvn	r1, #2
	bl	sq_rawset(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL16container_rawsetP4SQVM, .-_ZL16container_rawsetP4SQVM
	.section	.text._ZL16container_rawgetP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL16container_rawgetP4SQVM, %function
_ZL16container_rawgetP4SQVM:
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
	ldr	r0, [r7, #4]
	mvn	r1, #1
	bl	sq_rawget(PLT)
	mov	r3, r0
	cmp	r3, #0
	blt	.L375
	movs	r3, #1
	b	.L376
.L375:
	mov	r3, #-1
.L376:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL16container_rawgetP4SQVM, .-_ZL16container_rawgetP4SQVM
	.section	.text._ZL17table_setdelegateP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL17table_setdelegateP4SQVM, %function
_ZL17table_setdelegateP4SQVM:
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
	ldr	r0, [r7, #4]
	mvn	r1, #1
	bl	sq_setdelegate(PLT)
	mov	r3, r0
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L379
	mov	r3, #-1
	b	.L380
.L379:
	ldr	r0, [r7, #4]
	mov	r1, #-1
	bl	sq_push(PLT)
	movs	r3, #1
.L380:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL17table_setdelegateP4SQVM, .-_ZL17table_setdelegateP4SQVM
	.section	.text._ZL17table_getdelegateP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL17table_getdelegateP4SQVM, %function
_ZL17table_getdelegateP4SQVM:
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
	ldr	r0, [r7, #4]
	mov	r1, #-1
	bl	sq_getdelegate(PLT)
	mov	r3, r0
	cmp	r3, #0
	blt	.L382
	movs	r3, #1
	b	.L383
.L382:
	mov	r3, #-1
.L383:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL17table_getdelegateP4SQVM, .-_ZL17table_getdelegateP4SQVM
	.global	_ZN13SQSharedState29_table_default_delegate_funczE
	.section	.rodata
	.align	2
.LC41:
	.ascii	"len\000"
	.align	2
.LC42:
	.ascii	"t\000"
	.align	2
.LC43:
	.ascii	"rawget\000"
	.align	2
.LC44:
	.ascii	"rawset\000"
	.align	2
.LC45:
	.ascii	"rawdelete\000"
	.align	2
.LC46:
	.ascii	"rawin\000"
	.align	2
.LC47:
	.ascii	"weakref\000"
	.align	2
.LC48:
	.ascii	"tostring\000"
	.align	2
.LC49:
	.ascii	".\000"
	.align	2
.LC50:
	.ascii	"clear\000"
	.align	2
.LC51:
	.ascii	"setdelegate\000"
	.align	2
.LC52:
	.ascii	".t|o\000"
	.align	2
.LC53:
	.ascii	"getdelegate\000"
	.section	.data.rel.local._ZN13SQSharedState29_table_default_delegate_funczE,"aw",%progbits
	.align	2
	.type	_ZN13SQSharedState29_table_default_delegate_funczE, %object
	.size	_ZN13SQSharedState29_table_default_delegate_funczE, 176
_ZN13SQSharedState29_table_default_delegate_funczE:
	.word	.LC41
	.word	_ZL20default_delegate_lenP4SQVM
	.word	1
	.word	.LC42
	.word	.LC43
	.word	_ZL16container_rawgetP4SQVM
	.word	2
	.word	.LC42
	.word	.LC44
	.word	_ZL16container_rawsetP4SQVM
	.word	3
	.word	.LC42
	.word	.LC45
	.word	_ZL15table_rawdeleteP4SQVM
	.word	2
	.word	.LC42
	.word	.LC46
	.word	_ZL19container_rawexistsP4SQVM
	.word	2
	.word	.LC42
	.word	.LC47
	.word	_ZL20obj_delegate_weakrefP4SQVM
	.word	1
	.word	0
	.word	.LC48
	.word	_ZL25default_delegate_tostringP4SQVM
	.word	1
	.word	.LC49
	.word	.LC50
	.word	_ZL9obj_clearP4SQVM
	.word	1
	.word	.LC49
	.word	.LC51
	.word	_ZL17table_setdelegateP4SQVM
	.word	2
	.word	.LC52
	.word	.LC53
	.word	_ZL17table_getdelegateP4SQVM
	.word	1
	.word	.LC49
	.word	0
	.word	0
	.space	8
	.section	.text._ZL12array_appendP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL12array_appendP4SQVM, %function
_ZL12array_appendP4SQVM:
	.fnstart
.LFB336:
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
	mvn	r1, #1
	bl	sq_arrayappend(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL12array_appendP4SQVM, .-_ZL12array_appendP4SQVM
	.section	.text._ZL12array_extendP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL12array_extendP4SQVM, %function
_ZL12array_extendP4SQVM:
	.fnstart
.LFB337:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #12
	sub	sp, sp, #12
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	movs	r1, #1
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	ldr	r4, [r3, #4]
	ldr	r0, [r7, #4]
	movs	r1, #2
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	ldr	r3, [r3, #4]
	mov	r0, r4
	mov	r1, r3
	bl	_ZN7SQArray6ExtendEPKS_(PLT)
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZL12array_extendP4SQVM, .-_ZL12array_extendP4SQVM
	.section	.text._ZL13array_reverseP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL13array_reverseP4SQVM, %function
_ZL13array_reverseP4SQVM:
	.fnstart
.LFB338:
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
	mov	r1, #-1
	bl	sq_arrayreverse(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL13array_reverseP4SQVM, .-_ZL13array_reverseP4SQVM
	.section	.text._ZL9array_popP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL9array_popP4SQVM, %function
_ZL9array_popP4SQVM:
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
	movs	r1, #1
	movs	r2, #1
	bl	sq_arraypop(PLT)
	mov	r3, r0
	cmp	r3, #0
	blt	.L392
	movs	r3, #1
	b	.L393
.L392:
	mov	r3, #-1
.L393:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL9array_popP4SQVM, .-_ZL9array_popP4SQVM
	.section	.rodata
	.align	2
.LC54:
	.ascii	"top() on a empty array\000"
	.section	.text._ZL9array_topP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL9array_topP4SQVM, %function
_ZL9array_topP4SQVM:
	.fnstart
.LFB340:
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
	movs	r1, #1
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
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
	beq	.L396
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN7SQArray3TopEv(PLT)
	mov	r3, r0
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	movs	r3, #1
	b	.L397
.L396:
	ldr	r0, [r7, #4]
	ldr	r3, .L398
.LPIC38:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
.L397:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L399:
	.align	2
.L398:
	.word	.LC54-(.LPIC38+4)
	.fnend
	.size	_ZL9array_topP4SQVM, .-_ZL9array_topP4SQVM
	.section	.rodata
	.align	2
.LC55:
	.ascii	"index out of range\000"
	.section	.text._ZL12array_insertP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL12array_insertP4SQVM, %function
_ZL12array_insertP4SQVM:
	.fnstart
.LFB341:
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
	movs	r1, #1
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r0, [r7, #4]
	movs	r1, #2
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r0, [r7, #4]
	movs	r1, #3
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #16]
	ldr	r1, [r3]
	movs	r3, #4
	movt	r3, 1280
	cmp	r1, r3
	bne	.L401
	ldr	r3, [r7, #16]
	flds	s15, [r3, #4]
	ftosizs	s15, s15
	fmrs	r3, s15	@ int
	b	.L402
.L401:
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #4]
.L402:
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #12]
	bl	_ZN7SQArray6InsertEiRK11tagSQObject(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L403
	ldr	r0, [r7, #4]
	ldr	r3, .L405
.LPIC39:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L404
.L403:
	movs	r3, #0
.L404:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L406:
	.align	2
.L405:
	.word	.LC55-(.LPIC39+4)
	.fnend
	.size	_ZL12array_insertP4SQVM, .-_ZL12array_insertP4SQVM
	.section	.rodata
	.align	2
.LC56:
	.ascii	"wrong type\000"
	.align	2
.LC57:
	.ascii	"idx out of range\000"
	.section	.text._ZL12array_removeP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL12array_removeP4SQVM, %function
_ZL12array_removeP4SQVM:
	.fnstart
.LFB342:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #28
	sub	sp, sp, #28
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	movs	r1, #1
.LEHB63:
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r0, [r7, #4]
	movs	r1, #2
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	and	r3, r3, #67108864
	cmp	r3, #0
	bne	.L408
	ldr	r0, [r7, #4]
	ldr	r3, .L420
.LPIC40:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
.LEHE63:
	mov	r4, r0
	b	.L416
.L408:
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #16]
	ldr	r1, [r3]
	movs	r3, #4
	movt	r3, 1280
	cmp	r1, r3
	bne	.L410
	ldr	r3, [r7, #16]
	flds	s15, [r3, #4]
	ftosizs	s15, s15
	fmrs	r1, s15	@ int
	b	.L411
.L410:
	ldr	r3, [r7, #16]
	ldr	r1, [r3, #4]
.L411:
	add	r3, r7, #8
	mov	r0, r2
	mov	r2, r3
.LEHB64:
	bl	_ZN7SQArray3GetEiR11SQObjectPtr(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L412
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #16]
	ldr	r1, [r3]
	movs	r3, #4
	movt	r3, 1280
	cmp	r1, r3
	bne	.L413
	ldr	r3, [r7, #16]
	flds	s15, [r3, #4]
	ftosizs	s15, s15
	fmrs	r3, s15	@ int
	b	.L414
.L413:
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #4]
.L414:
	mov	r0, r2
	mov	r1, r3
	bl	_ZN7SQArray6RemoveEi(PLT)
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	movs	r4, #1
	b	.L415
.L412:
	ldr	r0, [r7, #4]
	ldr	r3, .L420+4
.LPIC41:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
.LEHE64:
	mov	r4, r0
.L415:
	add	r3, r7, #8
	mov	r0, r3
.LEHB65:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE65:
.L416:
	mov	r3, r4
	b	.L419
.L418:
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB66:
	bl	__cxa_end_cleanup(PLT)
.LEHE66:
.L419:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L421:
	.align	2
.L420:
	.word	.LC56-(.LPIC40+4)
	.word	.LC57-(.LPIC41+4)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA342:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE342-.LLSDACSB342
.LLSDACSB342:
	.uleb128 .LEHB63-.LFB342
	.uleb128 .LEHE63-.LEHB63
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB64-.LFB342
	.uleb128 .LEHE64-.LEHB64
	.uleb128 .L418-.LFB342
	.uleb128 0
	.uleb128 .LEHB65-.LFB342
	.uleb128 .LEHE65-.LEHB65
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB66-.LFB342
	.uleb128 .LEHE66-.LEHB66
	.uleb128 0
	.uleb128 0
.LLSDACSE342:
	.section	.text._ZL12array_removeP4SQVM
	.fnend
	.size	_ZL12array_removeP4SQVM, .-_ZL12array_removeP4SQVM
	.section	.rodata
	.align	2
.LC58:
	.ascii	"size must be a number\000"
	.section	.text._ZL12array_resizeP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL12array_resizeP4SQVM, %function
_ZL12array_resizeP4SQVM:
	.fnstart
.LFB343:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #28
	sub	sp, sp, #28
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	movs	r1, #1
.LEHB67:
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r0, [r7, #4]
	movs	r1, #2
	bl	_Z9stack_getP4SQVMi(PLT)
.LEHE67:
	mov	r3, r0
	str	r3, [r7, #16]
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	and	r3, r3, #67108864
	cmp	r3, #0
	beq	.L423
	ldr	r0, [r7, #4]
.LEHB68:
	bl	sq_gettop(PLT)
	mov	r3, r0
	cmp	r3, #2
	ite	gt
	movgt	r3, #1
	movle	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L424
	ldr	r0, [r7, #4]
	movs	r1, #3
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	add	r2, r7, #8
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
.L424:
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #16]
	ldr	r1, [r3]
	movs	r3, #4
	movt	r3, 1280
	cmp	r1, r3
	bne	.L425
	ldr	r3, [r7, #16]
	flds	s15, [r3, #4]
	ftosizs	s15, s15
	fmrs	r1, s15	@ int
	b	.L426
.L425:
	ldr	r3, [r7, #16]
	ldr	r1, [r3, #4]
.L426:
	add	r3, r7, #8
	mov	r0, r2
	mov	r2, r3
	bl	_ZN7SQArray6ResizeEiR11SQObjectPtr(PLT)
	movs	r4, #0
	b	.L427
.L423:
	ldr	r0, [r7, #4]
	ldr	r3, .L432
.LPIC42:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
.LEHE68:
	mov	r4, r0
.L427:
	add	r3, r7, #8
	mov	r0, r3
.LEHB69:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE69:
	mov	r3, r4
	b	.L431
.L430:
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB70:
	bl	__cxa_end_cleanup(PLT)
.LEHE70:
.L431:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L433:
	.align	2
.L432:
	.word	.LC58-(.LPIC42+4)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA343:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE343-.LLSDACSB343
.LLSDACSB343:
	.uleb128 .LEHB67-.LFB343
	.uleb128 .LEHE67-.LEHB67
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB68-.LFB343
	.uleb128 .LEHE68-.LEHB68
	.uleb128 .L430-.LFB343
	.uleb128 0
	.uleb128 .LEHB69-.LFB343
	.uleb128 .LEHE69-.LEHB69
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB70-.LFB343
	.uleb128 .LEHE70-.LEHB70
	.uleb128 0
	.uleb128 0
.LLSDACSE343:
	.section	.text._ZL12array_resizeP4SQVM
	.fnend
	.size	_ZL12array_resizeP4SQVM, .-_ZL12array_resizeP4SQVM
	.section	.text._ZL11__map_arrayP7SQArrayS0_P4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL11__map_arrayP7SQArrayS0_P4SQVM, %function
_ZL11__map_arrayP7SQArrayS0_P4SQVM:
	.fnstart
.LFB344:
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
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r0, [r7, #8]
.LEHB71:
	bl	_ZNK7SQArray4SizeEv(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #36]
	b	.L435
.L438:
	add	r3, r7, #16
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #36]
	mov	r2, r3
	bl	_ZN7SQArray3GetEiR11SQObjectPtr(PLT)
.LEHE71:
	add	r3, r7, #24
	mov	r0, r3
	ldr	r1, [r7, #8]
	bl	_ZN11SQObjectPtrC1EP7SQArray(PLT)
	add	r3, r7, #24
	ldr	r0, [r7, #4]
	mov	r1, r3
.LEHB72:
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE72:
	add	r3, r7, #24
	mov	r0, r3
.LEHB73:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	add	r3, r7, #16
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	ldr	r0, [r7, #4]
	movs	r1, #2
	movs	r2, #1
	movs	r3, #0
	bl	sq_call(PLT)
	mov	r3, r0
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L436
	mov	r4, #-1
	b	.L437
.L436:
	ldr	r0, [r7, #4]
	mov	r1, #-1
	bl	_ZN4SQVM5GetUpEi(PLT)
	mov	r3, r0
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #36]
	mov	r2, r3
	bl	_ZN7SQArray3SetEiRK11SQObjectPtr(PLT)
	ldr	r0, [r7, #4]
	bl	_ZN4SQVM3PopEv(PLT)
.LEHE73:
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L435:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	blt	.L438
	movs	r4, #0
.L437:
	add	r3, r7, #16
	mov	r0, r3
.LEHB74:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE74:
	mov	r3, r4
	b	.L444
.L443:
	add	r3, r7, #24
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L441
.L442:
.L441:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB75:
	bl	__cxa_end_cleanup(PLT)
.LEHE75:
.L444:
	mov	r0, r3
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA344:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE344-.LLSDACSB344
.LLSDACSB344:
	.uleb128 .LEHB71-.LFB344
	.uleb128 .LEHE71-.LEHB71
	.uleb128 .L442-.LFB344
	.uleb128 0
	.uleb128 .LEHB72-.LFB344
	.uleb128 .LEHE72-.LEHB72
	.uleb128 .L443-.LFB344
	.uleb128 0
	.uleb128 .LEHB73-.LFB344
	.uleb128 .LEHE73-.LEHB73
	.uleb128 .L442-.LFB344
	.uleb128 0
	.uleb128 .LEHB74-.LFB344
	.uleb128 .LEHE74-.LEHB74
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB75-.LFB344
	.uleb128 .LEHE75-.LEHB75
	.uleb128 0
	.uleb128 0
.LLSDACSE344:
	.section	.text._ZL11__map_arrayP7SQArrayS0_P4SQVM
	.fnend
	.size	_ZL11__map_arrayP7SQArrayS0_P4SQVM, .-_ZL11__map_arrayP7SQArrayS0_P4SQVM
	.section	.text._ZL9array_mapP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL9array_mapP4SQVM, %function
_ZL9array_mapP4SQVM:
	.fnstart
.LFB345:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #28
	sub	sp, sp, #28
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	movs	r1, #1
.LEHB76:
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZNK7SQArray4SizeEv(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #140]
	mov	r0, r3
	ldr	r1, [r7, #16]
	bl	_ZN7SQArray6CreateEP13SQSharedStatei(PLT)
.LEHE76:
	mov	r3, r0
	add	r2, r7, #8
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP7SQArray(PLT)
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #4]
.LEHB77:
	bl	_ZL11__map_arrayP7SQArrayS0_P4SQVM(PLT)
	mov	r3, r0
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L446
	mov	r4, #-1
	b	.L447
.L446:
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE77:
	movs	r4, #1
.L447:
	add	r3, r7, #8
	mov	r0, r3
.LEHB78:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE78:
	mov	r3, r4
	b	.L451
.L450:
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB79:
	bl	__cxa_end_cleanup(PLT)
.LEHE79:
.L451:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA345:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE345-.LLSDACSB345
.LLSDACSB345:
	.uleb128 .LEHB76-.LFB345
	.uleb128 .LEHE76-.LEHB76
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB77-.LFB345
	.uleb128 .LEHE77-.LEHB77
	.uleb128 .L450-.LFB345
	.uleb128 0
	.uleb128 .LEHB78-.LFB345
	.uleb128 .LEHE78-.LEHB78
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB79-.LFB345
	.uleb128 .LEHE79-.LEHB79
	.uleb128 0
	.uleb128 0
.LLSDACSE345:
	.section	.text._ZL9array_mapP4SQVM
	.fnend
	.size	_ZL9array_mapP4SQVM, .-_ZL9array_mapP4SQVM
	.section	.text._ZL11array_applyP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL11array_applyP4SQVM, %function
_ZL11array_applyP4SQVM:
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
	ldr	r0, [r7, #4]
	movs	r1, #1
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #4]
	bl	_ZL11__map_arrayP7SQArrayS0_P4SQVM(PLT)
	mov	r3, r0
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L453
	mov	r3, #-1
	b	.L454
.L453:
	movs	r3, #0
.L454:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL11array_applyP4SQVM, .-_ZL11array_applyP4SQVM
	.section	.text._ZL12array_reduceP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL12array_reduceP4SQVM, %function
_ZL12array_reduceP4SQVM:
	.fnstart
.LFB347:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #48
	sub	sp, sp, #48
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	movs	r1, #1
.LEHB80:
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #4]
	str	r3, [r7, #36]
	ldr	r0, [r7, #36]
	bl	_ZNK7SQArray4SizeEv(PLT)
.LEHE80:
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bne	.L456
	movs	r4, #0
	b	.L466
.L456:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	add	r3, r7, #16
	ldr	r0, [r7, #36]
	movs	r1, #0
	mov	r2, r3
.LEHB81:
	bl	_ZN7SQArray3GetEiR11SQObjectPtr(PLT)
.LEHE81:
	ldr	r3, [r7, #32]
	cmp	r3, #1
	ble	.L458
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	movs	r3, #1
	str	r3, [r7, #44]
	b	.L459
.L462:
	add	r3, r7, #8
	ldr	r0, [r7, #36]
	ldr	r1, [r7, #44]
	mov	r2, r3
.LEHB82:
	bl	_ZN7SQArray3GetEiR11SQObjectPtr(PLT)
.LEHE82:
	add	r3, r7, #24
	mov	r0, r3
	ldr	r1, [r7, #40]
	bl	_ZN11SQObjectPtrC1ERK11tagSQObject(PLT)
	add	r3, r7, #24
	ldr	r0, [r7, #4]
	mov	r1, r3
.LEHB83:
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE83:
	add	r3, r7, #24
	mov	r0, r3
.LEHB84:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	add	r3, r7, #16
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	ldr	r0, [r7, #4]
	movs	r1, #3
	movs	r2, #1
	movs	r3, #0
	bl	sq_call(PLT)
	mov	r3, r0
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L460
	mov	r4, #-1
	movs	r5, #0
	b	.L461
.L460:
	ldr	r0, [r7, #4]
	mov	r1, #-1
	bl	_ZN4SQVM5GetUpEi(PLT)
	mov	r3, r0
	add	r2, r7, #16
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	ldr	r0, [r7, #4]
	bl	_ZN4SQVM3PopEv(PLT)
.LEHE84:
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	str	r3, [r7, #44]
.L459:
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	blt	.L462
	movs	r5, #1
.L461:
	add	r3, r7, #8
	mov	r0, r3
.LEHB85:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	cmp	r5, #1
	bne	.L465
	nop
.L458:
	add	r3, r7, #16
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE85:
	movs	r4, #1
.L465:
	add	r3, r7, #16
	mov	r0, r3
.LEHB86:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE86:
.L466:
	mov	r3, r4
	b	.L474
.L472:
	add	r3, r7, #24
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L468
.L471:
.L468:
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L469
.L470:
.L469:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB87:
	bl	__cxa_end_cleanup(PLT)
.LEHE87:
.L474:
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA347:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE347-.LLSDACSB347
.LLSDACSB347:
	.uleb128 .LEHB80-.LFB347
	.uleb128 .LEHE80-.LEHB80
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB81-.LFB347
	.uleb128 .LEHE81-.LEHB81
	.uleb128 .L470-.LFB347
	.uleb128 0
	.uleb128 .LEHB82-.LFB347
	.uleb128 .LEHE82-.LEHB82
	.uleb128 .L471-.LFB347
	.uleb128 0
	.uleb128 .LEHB83-.LFB347
	.uleb128 .LEHE83-.LEHB83
	.uleb128 .L472-.LFB347
	.uleb128 0
	.uleb128 .LEHB84-.LFB347
	.uleb128 .LEHE84-.LEHB84
	.uleb128 .L471-.LFB347
	.uleb128 0
	.uleb128 .LEHB85-.LFB347
	.uleb128 .LEHE85-.LEHB85
	.uleb128 .L470-.LFB347
	.uleb128 0
	.uleb128 .LEHB86-.LFB347
	.uleb128 .LEHE86-.LEHB86
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB87-.LFB347
	.uleb128 .LEHE87-.LEHB87
	.uleb128 0
	.uleb128 0
.LLSDACSE347:
	.section	.text._ZL12array_reduceP4SQVM
	.fnend
	.size	_ZL12array_reduceP4SQVM, .-_ZL12array_reduceP4SQVM
	.section	.text._ZL12array_filterP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL12array_filterP4SQVM, %function
_ZL12array_filterP4SQVM:
	.fnstart
.LFB348:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #60
	sub	sp, sp, #60
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	movs	r1, #1
.LEHB88:
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #4]
	str	r3, [r7, #44]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #140]
	mov	r0, r3
	movs	r1, #0
	bl	_ZN7SQArray6CreateEP13SQSharedStatei(PLT)
.LEHE88:
	mov	r3, r0
	add	r2, r7, #16
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP7SQArray(PLT)
	ldr	r0, [r7, #44]
.LEHB89:
	bl	_ZNK7SQArray4SizeEv(PLT)
.LEHE89:
	mov	r3, r0
	str	r3, [r7, #40]
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	movs	r3, #0
	str	r3, [r7, #52]
	b	.L476
.L480:
	add	r3, r7, #8
	ldr	r0, [r7, #44]
	ldr	r1, [r7, #52]
	mov	r2, r3
.LEHB90:
	bl	_ZN7SQArray3GetEiR11SQObjectPtr(PLT)
.LEHE90:
	add	r3, r7, #24
	mov	r0, r3
	ldr	r1, [r7, #48]
	bl	_ZN11SQObjectPtrC1ERK11tagSQObject(PLT)
	add	r3, r7, #24
	ldr	r0, [r7, #4]
	mov	r1, r3
.LEHB91:
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE91:
	add	r3, r7, #24
	mov	r0, r3
.LEHB92:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE92:
	add	r3, r7, #32
	mov	r0, r3
	ldr	r1, [r7, #52]
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r3, r7, #32
	ldr	r0, [r7, #4]
	mov	r1, r3
.LEHB93:
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE93:
	add	r3, r7, #32
	mov	r0, r3
.LEHB94:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	ldr	r0, [r7, #4]
	movs	r1, #3
	movs	r2, #1
	movs	r3, #0
	bl	sq_call(PLT)
	mov	r3, r0
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L477
	mov	r4, #-1
	b	.L478
.L477:
	ldr	r0, [r7, #4]
	mov	r1, #-1
	bl	_ZN4SQVM5GetUpEi(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_ZN4SQVM7IsFalseER11SQObjectPtr(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L479
	ldr	r2, [r7, #20]
	add	r3, r7, #8
	mov	r0, r2
	mov	r1, r3
	bl	_ZN7SQArray6AppendERK11tagSQObject(PLT)
.L479:
	ldr	r0, [r7, #4]
	bl	_ZN4SQVM3PopEv(PLT)
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	str	r3, [r7, #52]
.L476:
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	blt	.L480
	add	r3, r7, #16
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE94:
	movs	r4, #1
.L478:
	add	r3, r7, #8
	mov	r0, r3
.LEHB95:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE95:
	add	r3, r7, #16
	mov	r0, r3
.LEHB96:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE96:
	mov	r3, r4
	b	.L490
.L488:
	add	r3, r7, #24
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L483
.L489:
	add	r3, r7, #32
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L483
.L487:
.L483:
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L485
.L486:
.L485:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB97:
	bl	__cxa_end_cleanup(PLT)
.LEHE97:
.L490:
	mov	r0, r3
	adds	r7, r7, #60
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA348:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE348-.LLSDACSB348
.LLSDACSB348:
	.uleb128 .LEHB88-.LFB348
	.uleb128 .LEHE88-.LEHB88
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB89-.LFB348
	.uleb128 .LEHE89-.LEHB89
	.uleb128 .L486-.LFB348
	.uleb128 0
	.uleb128 .LEHB90-.LFB348
	.uleb128 .LEHE90-.LEHB90
	.uleb128 .L487-.LFB348
	.uleb128 0
	.uleb128 .LEHB91-.LFB348
	.uleb128 .LEHE91-.LEHB91
	.uleb128 .L488-.LFB348
	.uleb128 0
	.uleb128 .LEHB92-.LFB348
	.uleb128 .LEHE92-.LEHB92
	.uleb128 .L487-.LFB348
	.uleb128 0
	.uleb128 .LEHB93-.LFB348
	.uleb128 .LEHE93-.LEHB93
	.uleb128 .L489-.LFB348
	.uleb128 0
	.uleb128 .LEHB94-.LFB348
	.uleb128 .LEHE94-.LEHB94
	.uleb128 .L487-.LFB348
	.uleb128 0
	.uleb128 .LEHB95-.LFB348
	.uleb128 .LEHE95-.LEHB95
	.uleb128 .L486-.LFB348
	.uleb128 0
	.uleb128 .LEHB96-.LFB348
	.uleb128 .LEHE96-.LEHB96
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB97-.LFB348
	.uleb128 .LEHE97-.LEHB97
	.uleb128 0
	.uleb128 0
.LLSDACSE348:
	.section	.text._ZL12array_filterP4SQVM
	.fnend
	.size	_ZL12array_filterP4SQVM, .-_ZL12array_filterP4SQVM
	.section	.text._ZL10array_findP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL10array_findP4SQVM, %function
_ZL10array_findP4SQVM:
	.fnstart
.LFB349:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #52
	sub	sp, sp, #52
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	movs	r1, #1
.LEHB98:
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #40]
	ldr	r0, [r7, #4]
	movs	r1, #2
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #36]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #4]
	str	r3, [r7, #32]
	ldr	r0, [r7, #32]
	bl	_ZNK7SQArray4SizeEv(PLT)
.LEHE98:
	mov	r3, r0
	str	r3, [r7, #28]
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	movs	r3, #0
	str	r3, [r7, #44]
	b	.L492
.L497:
	movs	r3, #0
	strb	r3, [r7, #11]
	add	r3, r7, #12
	ldr	r0, [r7, #32]
	ldr	r1, [r7, #44]
	mov	r2, r3
.LEHB99:
	bl	_ZN7SQArray3GetEiR11SQObjectPtr(PLT)
	add	r2, r7, #12
	add	r3, r7, #11
	mov	r0, r2
	ldr	r1, [r7, #36]
	mov	r2, r3
	bl	_ZN4SQVM7IsEqualERK11SQObjectPtrS2_Rb(PLT)
.LEHE99:
	mov	r3, r0
	cmp	r3, #0
	beq	.L493
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L493
	movs	r3, #1
	b	.L494
.L493:
	movs	r3, #0
.L494:
	cmp	r3, #0
	beq	.L495
	add	r3, r7, #20
	mov	r0, r3
	ldr	r1, [r7, #44]
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r3, r7, #20
	ldr	r0, [r7, #4]
	mov	r1, r3
.LEHB100:
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE100:
	add	r3, r7, #20
	mov	r0, r3
.LEHB101:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE101:
	movs	r4, #1
	b	.L496
.L495:
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	str	r3, [r7, #44]
.L492:
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	blt	.L497
	movs	r4, #0
.L496:
	add	r3, r7, #12
	mov	r0, r3
.LEHB102:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE102:
	mov	r3, r4
	b	.L503
.L501:
	add	r3, r7, #20
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L500
.L502:
.L500:
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB103:
	bl	__cxa_end_cleanup(PLT)
.LEHE103:
.L503:
	mov	r0, r3
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA349:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE349-.LLSDACSB349
.LLSDACSB349:
	.uleb128 .LEHB98-.LFB349
	.uleb128 .LEHE98-.LEHB98
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB99-.LFB349
	.uleb128 .LEHE99-.LEHB99
	.uleb128 .L502-.LFB349
	.uleb128 0
	.uleb128 .LEHB100-.LFB349
	.uleb128 .LEHE100-.LEHB100
	.uleb128 .L501-.LFB349
	.uleb128 0
	.uleb128 .LEHB101-.LFB349
	.uleb128 .LEHE101-.LEHB101
	.uleb128 .L502-.LFB349
	.uleb128 0
	.uleb128 .LEHB102-.LFB349
	.uleb128 .LEHE102-.LEHB102
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB103-.LFB349
	.uleb128 .LEHE103-.LEHB103
	.uleb128 0
	.uleb128 0
.LLSDACSE349:
	.section	.text._ZL10array_findP4SQVM
	.fnend
	.size	_ZL10array_findP4SQVM, .-_ZL10array_findP4SQVM
	.section	.rodata
	.align	2
.LC59:
	.ascii	"compare func failed\000"
	.align	2
.LC60:
	.ascii	"numeric value expected as return value of the compa"
	.ascii	"re function\000"
	.section	.text._Z13_sort_compareP4SQVMR11SQObjectPtrS2_iRi,"ax",%progbits
	.align	2
	.global	_Z13_sort_compareP4SQVMR11SQObjectPtrS2_iRi
	.thumb
	.thumb_func
	.type	_Z13_sort_compareP4SQVMR11SQObjectPtrS2_iRi, %function
_Z13_sort_compareP4SQVMR11SQObjectPtrS2_iRi:
	.fnstart
.LFB350:
	@ args = 4, pretend = 0, frame = 24
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
	ldr	r3, [r7]
	cmp	r3, #0
	bge	.L505
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #32]
	bl	_ZN4SQVM6ObjCmpERK11SQObjectPtrS2_Ri(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L506
	movs	r3, #0
	b	.L507
.L505:
	ldr	r0, [r7, #12]
	bl	sq_gettop(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r0, [r7, #12]
	ldr	r1, [r7]
	bl	sq_push(PLT)
	ldr	r0, [r7, #12]
	bl	sq_pushroottable(PLT)
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	ldr	r0, [r7, #12]
	movs	r1, #3
	movs	r2, #1
	movs	r3, #0
	bl	sq_call(PLT)
	mov	r3, r0
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L508
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #56]
	movs	r3, #16
	movt	r3, 2048
	cmp	r2, r3
	beq	.L509
	ldr	r0, [r7, #12]
	ldr	r3, .L511
.LPIC43:
	add	r3, pc
	mov	r1, r3
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
.L509:
	movs	r3, #0
	b	.L507
.L508:
	ldr	r0, [r7, #12]
	mov	r1, #-1
	ldr	r2, [r7, #32]
	bl	sq_getinteger(PLT)
	mov	r3, r0
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L510
	ldr	r0, [r7, #12]
	ldr	r3, .L511+4
.LPIC44:
	add	r3, pc
	mov	r1, r3
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
	movs	r3, #0
	b	.L507
.L510:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #20]
	bl	sq_settop(PLT)
	movs	r3, #1
	b	.L507
.L506:
	movs	r3, #1
.L507:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L512:
	.align	2
.L511:
	.word	.LC59-(.LPIC43+4)
	.word	.LC60-(.LPIC44+4)
	.fnend
	.size	_Z13_sort_compareP4SQVMR11SQObjectPtrS2_iRi, .-_Z13_sort_compareP4SQVMR11SQObjectPtrS2_iRi
	.section	.rodata
	.align	2
.LC61:
	.ascii	"inconsistent compare function\000"
	.section	.text._Z16_hsort_sift_downP4SQVMP7SQArrayiii,"ax",%progbits
	.align	2
	.global	_Z16_hsort_sift_downP4SQVMP7SQArrayiii
	.thumb
	.thumb_func
	.type	_Z16_hsort_sift_downP4SQVMP7SQArrayiii, %function
_Z16_hsort_sift_downP4SQVMP7SQArrayiii:
	.fnstart
.LFB351:
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #44
	sub	sp, sp, #44
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #24]
	b	.L514
.L525:
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	cmp	r2, r3
	bne	.L515
	ldr	r3, [r7, #20]
	str	r3, [r7, #28]
	b	.L516
.L515:
	ldr	r3, [r7, #8]
	add	r2, r3, #24
	ldr	r3, [r7, #20]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI11SQObjectPtrEixEj(PLT)
	mov	r4, r0
	ldr	r3, [r7, #8]
	add	r2, r3, #24
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI11SQObjectPtrEixEj(PLT)
	mov	r3, r0
	add	r2, r7, #16
	str	r2, [sp]
	ldr	r0, [r7, #12]
	mov	r1, r4
	mov	r2, r3
	ldr	r3, [r7, #48]
	bl	_Z13_sort_compareP4SQVMR11SQObjectPtrS2_iRi(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L517
	movs	r3, #0
	b	.L526
.L517:
	ldr	r3, [r7, #16]
	cmp	r3, #0
	ble	.L519
	ldr	r3, [r7, #20]
	str	r3, [r7, #28]
	b	.L516
.L519:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L516:
	ldr	r3, [r7, #8]
	add	r2, r3, #24
	ldr	r3, [r7, #4]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI11SQObjectPtrEixEj(PLT)
	mov	r4, r0
	ldr	r3, [r7, #8]
	add	r2, r3, #24
	ldr	r3, [r7, #28]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI11SQObjectPtrEixEj(PLT)
	mov	r3, r0
	add	r2, r7, #16
	str	r2, [sp]
	ldr	r0, [r7, #12]
	mov	r1, r4
	mov	r2, r3
	ldr	r3, [r7, #48]
	bl	_Z13_sort_compareP4SQVMR11SQObjectPtrS2_iRi(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L520
	movs	r3, #0
	b	.L526
.L520:
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bge	.L521
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bne	.L522
	ldr	r0, [r7, #12]
	ldr	r3, .L527
.LPIC45:
	add	r3, pc
	mov	r1, r3
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
	movs	r3, #0
	b	.L526
.L522:
	ldr	r3, [r7, #8]
	add	r2, r3, #24
	ldr	r3, [r7, #4]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI11SQObjectPtrEixEj(PLT)
	mov	r3, r0
	mov	r4, r3
	ldr	r3, [r7, #8]
	add	r2, r3, #24
	ldr	r3, [r7, #28]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI11SQObjectPtrEixEj(PLT)
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	bl	_Z5_SwapR11tagSQObjectS0_(PLT)
	ldr	r3, [r7, #28]
	str	r3, [r7, #4]
	b	.L514
.L521:
	movs	r3, #1
	str	r3, [r7, #24]
.L514:
	ldr	r3, [r7, #4]
	lsls	r3, r3, #1
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	cmp	r2, r3
	bgt	.L523
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L523
	movs	r3, #1
	b	.L524
.L523:
	movs	r3, #0
.L524:
	cmp	r3, #0
	bne	.L525
	movs	r3, #1
.L526:
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L528:
	.align	2
.L527:
	.word	.LC61-(.LPIC45+4)
	.fnend
	.size	_Z16_hsort_sift_downP4SQVMP7SQArrayiii, .-_Z16_hsort_sift_downP4SQVMP7SQArrayiii
	.section	.text._Z6_hsortP4SQVMR11SQObjectPtriii,"ax",%progbits
	.align	2
	.global	_Z6_hsortP4SQVMR11SQObjectPtriii
	.thumb
	.thumb_func
	.type	_Z6_hsortP4SQVMR11SQObjectPtriii, %function
_Z6_hsortP4SQVMR11SQObjectPtriii:
	.fnstart
.LFB352:
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #44
	sub	sp, sp, #44
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	str	r3, [r7, #24]
	ldr	r0, [r7, #24]
	bl	_ZNK7SQArray4SizeEv(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	str	r3, [r7, #28]
	b	.L530
.L533:
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	ldr	r2, [r7, #48]
	str	r2, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #24]
	ldr	r2, [r7, #28]
	bl	_Z16_hsort_sift_downP4SQVMP7SQArrayiii(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L531
	movs	r3, #0
	b	.L532
.L531:
	ldr	r3, [r7, #28]
	subs	r3, r3, #1
	str	r3, [r7, #28]
.L530:
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bge	.L533
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	str	r3, [r7, #28]
	b	.L534
.L536:
	ldr	r3, [r7, #24]
	adds	r3, r3, #24
	mov	r0, r3
	movs	r1, #0
	bl	_ZNK8sqvectorI11SQObjectPtrEixEj(PLT)
	mov	r3, r0
	mov	r4, r3
	ldr	r3, [r7, #24]
	add	r2, r3, #24
	ldr	r3, [r7, #28]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI11SQObjectPtrEixEj(PLT)
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	bl	_Z5_SwapR11tagSQObjectS0_(PLT)
	ldr	r3, [r7, #28]
	subs	r3, r3, #1
	ldr	r2, [r7, #48]
	str	r2, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #24]
	movs	r2, #0
	bl	_Z16_hsort_sift_downP4SQVMP7SQArrayiii(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L535
	movs	r3, #0
	b	.L532
.L535:
	ldr	r3, [r7, #28]
	subs	r3, r3, #1
	str	r3, [r7, #28]
.L534:
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bgt	.L536
	movs	r3, #1
.L532:
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_Z6_hsortP4SQVMR11SQObjectPtriii, .-_Z6_hsortP4SQVMR11SQObjectPtriii
	.section	.text._ZL10array_sortP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL10array_sortP4SQVM, %function
_ZL10array_sortP4SQVM:
	.fnstart
.LFB353:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #24
	sub	sp, sp, #24
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	mov	r3, #-1
	str	r3, [r7, #12]
	ldr	r0, [r7, #4]
	movs	r1, #1
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZNK7SQArray4SizeEv(PLT)
	mov	r3, r0
	cmp	r3, #1
	ite	gt
	movgt	r3, #1
	movle	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L538
	ldr	r0, [r7, #4]
	bl	sq_gettop(PLT)
	mov	r3, r0
	cmp	r3, #2
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L539
	movs	r3, #2
	str	r3, [r7, #12]
.L539:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZNK7SQArray4SizeEv(PLT)
	mov	r3, r0
	subs	r3, r3, #1
	ldr	r2, [r7, #12]
	str	r2, [sp]
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #8]
	movs	r2, #0
	bl	_Z6_hsortP4SQVMR11SQObjectPtriii(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L538
	mov	r3, #-1
	b	.L540
.L538:
	movs	r3, #0
.L540:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL10array_sortP4SQVM, .-_ZL10array_sortP4SQVM
	.section	.rodata
	.align	2
.LC62:
	.ascii	"wrong indexes\000"
	.align	2
.LC63:
	.ascii	"slice out of range\000"
	.section	.text._ZL11array_sliceP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL11array_sliceP4SQVM, %function
_ZL11array_sliceP4SQVM:
	.fnstart
.LFB354:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #60
	sub	sp, sp, #60
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	add	r1, r7, #28
	add	r2, r7, #24
	add	r3, r7, #16
	ldr	r0, [r7, #4]
.LEHB104:
	bl	_ZL16get_slice_paramsP4SQVMRiS1_R11SQObjectPtr(PLT)
	mov	r3, r0
	cmp	r3, #-1
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L542
	mov	r4, #-1
	b	.L543
.L542:
	ldr	r3, [r7, #20]
	mov	r0, r3
	bl	_ZNK7SQArray4SizeEv(PLT)
	mov	r3, r0
	str	r3, [r7, #44]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bge	.L544
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #28]
.L544:
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bge	.L545
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #24]
.L545:
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bge	.L546
	ldr	r0, [r7, #4]
	ldr	r3, .L558
.LPIC46:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r4, r0
	b	.L543
.L546:
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #44]
	cmp	r2, r3
	ble	.L547
	ldr	r0, [r7, #4]
	ldr	r3, .L558+4
.LPIC47:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r4, r0
	b	.L543
.L547:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #140]
	ldr	r1, [r7, #24]
	ldr	r3, [r7, #28]
	subs	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	_ZN7SQArray6CreateEP13SQSharedStatei(PLT)
.LEHE104:
	mov	r3, r0
	str	r3, [r7, #40]
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	movs	r3, #0
	str	r3, [r7, #52]
	ldr	r3, [r7, #28]
	str	r3, [r7, #48]
	b	.L548
.L549:
	ldr	r2, [r7, #20]
	add	r3, r7, #8
	mov	r0, r2
	ldr	r1, [r7, #48]
	mov	r2, r3
.LEHB105:
	bl	_ZN7SQArray3GetEiR11SQObjectPtr(PLT)
	ldr	r3, [r7, #52]
	adds	r2, r3, #1
	str	r2, [r7, #52]
	add	r2, r7, #8
	ldr	r0, [r7, #40]
	mov	r1, r3
	bl	_ZN7SQArray3SetEiRK11SQObjectPtr(PLT)
.LEHE105:
	ldr	r3, [r7, #48]
	adds	r3, r3, #1
	str	r3, [r7, #48]
.L548:
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #48]
	cmp	r2, r3
	blt	.L549
	add	r3, r7, #32
	mov	r0, r3
	ldr	r1, [r7, #40]
	bl	_ZN11SQObjectPtrC1EP7SQArray(PLT)
	add	r3, r7, #32
	ldr	r0, [r7, #4]
	mov	r1, r3
.LEHB106:
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE106:
	add	r3, r7, #32
	mov	r0, r3
.LEHB107:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE107:
	movs	r4, #1
	add	r3, r7, #8
	mov	r0, r3
.LEHB108:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE108:
.L543:
	add	r3, r7, #16
	mov	r0, r3
.LEHB109:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE109:
	mov	r3, r4
	b	.L557
.L556:
	add	r3, r7, #32
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L552
.L555:
.L552:
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L553
.L554:
.L553:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB110:
	bl	__cxa_end_cleanup(PLT)
.LEHE110:
.L557:
	mov	r0, r3
	adds	r7, r7, #60
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L559:
	.align	2
.L558:
	.word	.LC62-(.LPIC46+4)
	.word	.LC63-(.LPIC47+4)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA354:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE354-.LLSDACSB354
.LLSDACSB354:
	.uleb128 .LEHB104-.LFB354
	.uleb128 .LEHE104-.LEHB104
	.uleb128 .L554-.LFB354
	.uleb128 0
	.uleb128 .LEHB105-.LFB354
	.uleb128 .LEHE105-.LEHB105
	.uleb128 .L555-.LFB354
	.uleb128 0
	.uleb128 .LEHB106-.LFB354
	.uleb128 .LEHE106-.LEHB106
	.uleb128 .L556-.LFB354
	.uleb128 0
	.uleb128 .LEHB107-.LFB354
	.uleb128 .LEHE107-.LEHB107
	.uleb128 .L555-.LFB354
	.uleb128 0
	.uleb128 .LEHB108-.LFB354
	.uleb128 .LEHE108-.LEHB108
	.uleb128 .L554-.LFB354
	.uleb128 0
	.uleb128 .LEHB109-.LFB354
	.uleb128 .LEHE109-.LEHB109
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB110-.LFB354
	.uleb128 .LEHE110-.LEHB110
	.uleb128 0
	.uleb128 0
.LLSDACSE354:
	.section	.text._ZL11array_sliceP4SQVM
	.fnend
	.size	_ZL11array_sliceP4SQVM, .-_ZL11array_sliceP4SQVM
	.global	_ZN13SQSharedState29_array_default_delegate_funczE
	.section	.rodata
	.align	2
.LC64:
	.ascii	"a\000"
	.align	2
.LC65:
	.ascii	"append\000"
	.align	2
.LC66:
	.ascii	"extend\000"
	.align	2
.LC67:
	.ascii	"aa\000"
	.align	2
.LC68:
	.ascii	"push\000"
	.align	2
.LC69:
	.ascii	"pop\000"
	.align	2
.LC70:
	.ascii	"top\000"
	.align	2
.LC71:
	.ascii	"insert\000"
	.align	2
.LC72:
	.ascii	"an\000"
	.align	2
.LC73:
	.ascii	"remove\000"
	.align	2
.LC74:
	.ascii	"resize\000"
	.align	2
.LC75:
	.ascii	"reverse\000"
	.align	2
.LC76:
	.ascii	"sort\000"
	.align	2
.LC77:
	.ascii	"ac\000"
	.align	2
.LC78:
	.ascii	"slice\000"
	.align	2
.LC79:
	.ascii	"ann\000"
	.align	2
.LC80:
	.ascii	"map\000"
	.align	2
.LC81:
	.ascii	"apply\000"
	.align	2
.LC82:
	.ascii	"reduce\000"
	.align	2
.LC83:
	.ascii	"filter\000"
	.align	2
.LC84:
	.ascii	"find\000"
	.align	2
.LC85:
	.ascii	"a.\000"
	.section	.data.rel.local._ZN13SQSharedState29_array_default_delegate_funczE,"aw",%progbits
	.align	2
	.type	_ZN13SQSharedState29_array_default_delegate_funczE, %object
	.size	_ZN13SQSharedState29_array_default_delegate_funczE, 336
_ZN13SQSharedState29_array_default_delegate_funczE:
	.word	.LC41
	.word	_ZL20default_delegate_lenP4SQVM
	.word	1
	.word	.LC64
	.word	.LC65
	.word	_ZL12array_appendP4SQVM
	.word	2
	.word	.LC64
	.word	.LC66
	.word	_ZL12array_extendP4SQVM
	.word	2
	.word	.LC67
	.word	.LC68
	.word	_ZL12array_appendP4SQVM
	.word	2
	.word	.LC64
	.word	.LC69
	.word	_ZL9array_popP4SQVM
	.word	1
	.word	.LC64
	.word	.LC70
	.word	_ZL9array_topP4SQVM
	.word	1
	.word	.LC64
	.word	.LC71
	.word	_ZL12array_insertP4SQVM
	.word	3
	.word	.LC72
	.word	.LC73
	.word	_ZL12array_removeP4SQVM
	.word	2
	.word	.LC72
	.word	.LC74
	.word	_ZL12array_resizeP4SQVM
	.word	-2
	.word	.LC72
	.word	.LC75
	.word	_ZL13array_reverseP4SQVM
	.word	1
	.word	.LC64
	.word	.LC76
	.word	_ZL10array_sortP4SQVM
	.word	-1
	.word	.LC77
	.word	.LC78
	.word	_ZL11array_sliceP4SQVM
	.word	-1
	.word	.LC79
	.word	.LC47
	.word	_ZL20obj_delegate_weakrefP4SQVM
	.word	1
	.word	0
	.word	.LC48
	.word	_ZL25default_delegate_tostringP4SQVM
	.word	1
	.word	.LC49
	.word	.LC50
	.word	_ZL9obj_clearP4SQVM
	.word	1
	.word	.LC49
	.word	.LC80
	.word	_ZL9array_mapP4SQVM
	.word	2
	.word	.LC77
	.word	.LC81
	.word	_ZL11array_applyP4SQVM
	.word	2
	.word	.LC77
	.word	.LC82
	.word	_ZL12array_reduceP4SQVM
	.word	2
	.word	.LC77
	.word	.LC83
	.word	_ZL12array_filterP4SQVM
	.word	2
	.word	.LC77
	.word	.LC84
	.word	_ZL10array_findP4SQVM
	.word	2
	.word	.LC85
	.word	0
	.word	0
	.space	8
	.section	.text._ZL12string_sliceP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL12string_sliceP4SQVM, %function
_ZL12string_sliceP4SQVM:
	.fnstart
.LFB355:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #44
	sub	sp, sp, #44
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	add	r1, r7, #24
	add	r2, r7, #20
	add	r3, r7, #12
	ldr	r0, [r7, #4]
.LEHB111:
	bl	_ZL16get_slice_paramsP4SQVMRiS1_R11SQObjectPtr(PLT)
	mov	r3, r0
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L561
	mov	r4, #-1
	b	.L562
.L561:
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #20]
	str	r3, [r7, #36]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bge	.L563
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	str	r3, [r7, #24]
.L563:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bge	.L564
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	str	r3, [r7, #20]
.L564:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bge	.L565
	ldr	r0, [r7, #4]
	ldr	r3, .L573
.LPIC48:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r4, r0
	b	.L562
.L565:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	ble	.L566
	ldr	r0, [r7, #4]
	ldr	r3, .L573+4
.LPIC49:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r4, r0
	b	.L562
.L566:
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #140]
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #24]
	adds	r3, r3, #24
	add	r3, r3, r2
	adds	r2, r3, #4
	ldr	r0, [r7, #20]
	ldr	r3, [r7, #24]
	subs	r3, r0, r3
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE111:
	mov	r3, r0
	add	r2, r7, #28
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #28
	ldr	r0, [r7, #4]
	mov	r1, r3
.LEHB112:
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE112:
	add	r3, r7, #28
	mov	r0, r3
.LEHB113:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE113:
	movs	r4, #1
.L562:
	add	r3, r7, #12
	mov	r0, r3
.LEHB114:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE114:
	mov	r3, r4
	b	.L572
.L571:
	add	r3, r7, #28
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L569
.L570:
.L569:
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB115:
	bl	__cxa_end_cleanup(PLT)
.LEHE115:
.L572:
	mov	r0, r3
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L574:
	.align	2
.L573:
	.word	.LC62-(.LPIC48+4)
	.word	.LC63-(.LPIC49+4)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA355:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE355-.LLSDACSB355
.LLSDACSB355:
	.uleb128 .LEHB111-.LFB355
	.uleb128 .LEHE111-.LEHB111
	.uleb128 .L570-.LFB355
	.uleb128 0
	.uleb128 .LEHB112-.LFB355
	.uleb128 .LEHE112-.LEHB112
	.uleb128 .L571-.LFB355
	.uleb128 0
	.uleb128 .LEHB113-.LFB355
	.uleb128 .LEHE113-.LEHB113
	.uleb128 .L570-.LFB355
	.uleb128 0
	.uleb128 .LEHB114-.LFB355
	.uleb128 .LEHE114-.LEHB114
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB115-.LFB355
	.uleb128 .LEHE115-.LEHB115
	.uleb128 0
	.uleb128 0
.LLSDACSE355:
	.section	.text._ZL12string_sliceP4SQVM
	.fnend
	.size	_ZL12string_sliceP4SQVM, .-_ZL12string_sliceP4SQVM
	.section	.rodata
	.align	2
.LC86:
	.ascii	"invalid param\000"
	.section	.text._ZL11string_findP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL11string_findP4SQVM, %function
_ZL11string_findP4SQVM:
	.fnstart
.LFB356:
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
	str	r3, [r7, #20]
	ldr	r0, [r7, #4]
	bl	sq_gettop(PLT)
	mov	r3, r0
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #1
	ble	.L576
	add	r3, r7, #16
	ldr	r0, [r7, #4]
	movs	r1, #1
	mov	r2, r3
	bl	sq_getstring(PLT)
	mov	r3, r0
	cmp	r3, #0
	blt	.L576
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	movs	r1, #2
	mov	r2, r3
	bl	sq_getstring(PLT)
	mov	r3, r0
	cmp	r3, #0
	blt	.L576
	movs	r3, #1
	b	.L577
.L576:
	movs	r3, #0
.L577:
	cmp	r3, #0
	beq	.L578
	ldr	r3, [r7, #28]
	cmp	r3, #2
	ble	.L579
	add	r3, r7, #20
	ldr	r0, [r7, #4]
	movs	r1, #3
	mov	r2, r3
	bl	sq_getinteger(PLT)
.L579:
	ldr	r0, [r7, #4]
	movs	r1, #1
	bl	sq_getsize(PLT)
	mov	r2, r0
	ldr	r3, [r7, #20]
	cmp	r2, r3
	ble	.L580
	ldr	r3, [r7, #20]
	cmp	r3, #0
	blt	.L580
	movs	r3, #1
	b	.L581
.L580:
	movs	r3, #0
.L581:
	cmp	r3, #0
	beq	.L582
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #20]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	mov	r0, r2
	mov	r1, r3
	bl	strstr(PLT)
	str	r0, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L582
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #16]
	subs	r3, r2, r3
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	sq_pushinteger(PLT)
	movs	r3, #1
	b	.L584
.L582:
	movs	r3, #0
	b	.L584
.L578:
	ldr	r0, [r7, #4]
	ldr	r3, .L585
.LPIC50:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
.L584:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L586:
	.align	2
.L585:
	.word	.LC86-(.LPIC50+4)
	.fnend
	.size	_ZL11string_findP4SQVM, .-_ZL11string_findP4SQVM
	.section	.text._ZL14string_tolowerP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL14string_tolowerP4SQVM, %function
_ZL14string_tolowerP4SQVM:
	.fnstart
.LFB357:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #44
	sub	sp, sp, #44
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	movs	r1, #1
.LEHB116:
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r2, r0
	add	r3, r7, #8
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #20]
	str	r3, [r7, #32]
	ldr	r3, [r7, #12]
	adds	r3, r3, #28
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #140]
	mov	r0, r3
	ldr	r1, [r7, #32]
	bl	_ZN13SQSharedState13GetScratchPadEi(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #36]
	b	.L588
.L589:
	ldr	r3, [r7, #36]
	ldr	r2, [r7, #24]
	adds	r4, r2, r3
	ldr	r3, [r7, #36]
	ldr	r2, [r7, #28]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	tolower(PLT)
	mov	r3, r0
	uxtb	r3, r3
	strb	r3, [r4]
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L588:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	blt	.L589
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #140]
	mov	r0, r3
	ldr	r1, [r7, #24]
	ldr	r2, [r7, #32]
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE116:
	mov	r3, r0
	add	r2, r7, #16
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #16
	ldr	r0, [r7, #4]
	mov	r1, r3
.LEHB117:
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE117:
	add	r3, r7, #16
	mov	r0, r3
.LEHB118:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE118:
	movs	r3, #1
	b	.L593
.L592:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB119:
	bl	__cxa_end_cleanup(PLT)
.LEHE119:
.L593:
	mov	r0, r3
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA357:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE357-.LLSDACSB357
.LLSDACSB357:
	.uleb128 .LEHB116-.LFB357
	.uleb128 .LEHE116-.LEHB116
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB117-.LFB357
	.uleb128 .LEHE117-.LEHB117
	.uleb128 .L592-.LFB357
	.uleb128 0
	.uleb128 .LEHB118-.LFB357
	.uleb128 .LEHE118-.LEHB118
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB119-.LFB357
	.uleb128 .LEHE119-.LEHB119
	.uleb128 0
	.uleb128 0
.LLSDACSE357:
	.section	.text._ZL14string_tolowerP4SQVM
	.fnend
	.size	_ZL14string_tolowerP4SQVM, .-_ZL14string_tolowerP4SQVM
	.section	.text._ZL14string_toupperP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL14string_toupperP4SQVM, %function
_ZL14string_toupperP4SQVM:
	.fnstart
.LFB358:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #44
	sub	sp, sp, #44
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	movs	r1, #1
.LEHB120:
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r2, r0
	add	r3, r7, #8
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #20]
	str	r3, [r7, #32]
	ldr	r3, [r7, #12]
	adds	r3, r3, #28
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #140]
	mov	r0, r3
	ldr	r1, [r7, #32]
	bl	_ZN13SQSharedState13GetScratchPadEi(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #36]
	b	.L595
.L596:
	ldr	r3, [r7, #36]
	ldr	r2, [r7, #24]
	adds	r4, r2, r3
	ldr	r3, [r7, #36]
	ldr	r2, [r7, #28]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	toupper(PLT)
	mov	r3, r0
	uxtb	r3, r3
	strb	r3, [r4]
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L595:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	blt	.L596
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #140]
	mov	r0, r3
	ldr	r1, [r7, #24]
	ldr	r2, [r7, #32]
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE120:
	mov	r3, r0
	add	r2, r7, #16
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #16
	ldr	r0, [r7, #4]
	mov	r1, r3
.LEHB121:
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE121:
	add	r3, r7, #16
	mov	r0, r3
.LEHB122:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE122:
	movs	r3, #1
	b	.L600
.L599:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB123:
	bl	__cxa_end_cleanup(PLT)
.LEHE123:
.L600:
	mov	r0, r3
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA358:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE358-.LLSDACSB358
.LLSDACSB358:
	.uleb128 .LEHB120-.LFB358
	.uleb128 .LEHE120-.LEHB120
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB121-.LFB358
	.uleb128 .LEHE121-.LEHB121
	.uleb128 .L599-.LFB358
	.uleb128 0
	.uleb128 .LEHB122-.LFB358
	.uleb128 .LEHE122-.LEHB122
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB123-.LFB358
	.uleb128 .LEHE123-.LEHB123
	.uleb128 0
	.uleb128 0
.LLSDACSE358:
	.section	.text._ZL14string_toupperP4SQVM
	.fnend
	.size	_ZL14string_toupperP4SQVM, .-_ZL14string_toupperP4SQVM
	.global	_ZN13SQSharedState30_string_default_delegate_funczE
	.section	.rodata
	.align	2
.LC87:
	.ascii	"s\000"
	.align	2
.LC88:
	.ascii	"tointeger\000"
	.align	2
.LC89:
	.ascii	"tofloat\000"
	.align	2
.LC90:
	.ascii	" s n  n\000"
	.align	2
.LC91:
	.ascii	"s s n \000"
	.align	2
.LC92:
	.ascii	"tolower\000"
	.align	2
.LC93:
	.ascii	"toupper\000"
	.section	.data.rel.local._ZN13SQSharedState30_string_default_delegate_funczE,"aw",%progbits
	.align	2
	.type	_ZN13SQSharedState30_string_default_delegate_funczE, %object
	.size	_ZN13SQSharedState30_string_default_delegate_funczE, 160
_ZN13SQSharedState30_string_default_delegate_funczE:
	.word	.LC41
	.word	_ZL20default_delegate_lenP4SQVM
	.word	1
	.word	.LC87
	.word	.LC88
	.word	_ZL26default_delegate_tointegerP4SQVM
	.word	1
	.word	.LC87
	.word	.LC89
	.word	_ZL24default_delegate_tofloatP4SQVM
	.word	1
	.word	.LC87
	.word	.LC48
	.word	_ZL25default_delegate_tostringP4SQVM
	.word	1
	.word	.LC49
	.word	.LC78
	.word	_ZL12string_sliceP4SQVM
	.word	-1
	.word	.LC90
	.word	.LC84
	.word	_ZL11string_findP4SQVM
	.word	-2
	.word	.LC91
	.word	.LC92
	.word	_ZL14string_tolowerP4SQVM
	.word	1
	.word	.LC87
	.word	.LC93
	.word	_ZL14string_toupperP4SQVM
	.word	1
	.word	.LC87
	.word	.LC47
	.word	_ZL20obj_delegate_weakrefP4SQVM
	.word	1
	.word	0
	.word	0
	.word	0
	.space	8
	.global	_ZN13SQSharedState30_number_default_delegate_funczE
	.section	.rodata
	.align	2
.LC94:
	.ascii	"n|b\000"
	.align	2
.LC95:
	.ascii	"tochar\000"
	.section	.data.rel.local._ZN13SQSharedState30_number_default_delegate_funczE,"aw",%progbits
	.align	2
	.type	_ZN13SQSharedState30_number_default_delegate_funczE, %object
	.size	_ZN13SQSharedState30_number_default_delegate_funczE, 96
_ZN13SQSharedState30_number_default_delegate_funczE:
	.word	.LC88
	.word	_ZL26default_delegate_tointegerP4SQVM
	.word	1
	.word	.LC94
	.word	.LC89
	.word	_ZL24default_delegate_tofloatP4SQVM
	.word	1
	.word	.LC94
	.word	.LC48
	.word	_ZL25default_delegate_tostringP4SQVM
	.word	1
	.word	.LC49
	.word	.LC95
	.word	_ZL22number_delegate_tocharP4SQVM
	.word	1
	.word	.LC94
	.word	.LC47
	.word	_ZL20obj_delegate_weakrefP4SQVM
	.word	1
	.word	0
	.word	0
	.word	0
	.space	8
	.section	.text._ZL13closure_pcallP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL13closure_pcallP4SQVM, %function
_ZL13closure_pcallP4SQVM:
	.fnstart
.LFB359:
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
	bl	sq_gettop(PLT)
	mov	r3, r0
	subs	r3, r3, #1
	ldr	r0, [r7, #4]
	mov	r1, r3
	movs	r2, #1
	movs	r3, #0
	bl	sq_call(PLT)
	mov	r3, r0
	cmp	r3, #0
	blt	.L602
	movs	r3, #1
	b	.L603
.L602:
	mov	r3, #-1
.L603:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL13closure_pcallP4SQVM, .-_ZL13closure_pcallP4SQVM
	.section	.text._ZL12closure_callP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL12closure_callP4SQVM, %function
_ZL12closure_callP4SQVM:
	.fnstart
.LFB360:
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
	bl	sq_gettop(PLT)
	mov	r3, r0
	subs	r3, r3, #1
	ldr	r0, [r7, #4]
	mov	r1, r3
	movs	r2, #1
	movs	r3, #1
	bl	sq_call(PLT)
	mov	r3, r0
	cmp	r3, #0
	blt	.L606
	movs	r3, #1
	b	.L607
.L606:
	mov	r3, #-1
.L607:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL12closure_callP4SQVM, .-_ZL12closure_callP4SQVM
	.section	.text._ZL14_closure_acallP4SQVMj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL14_closure_acallP4SQVMj, %function
_ZL14_closure_acallP4SQVMj:
	.fnstart
.LFB361:
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
	movs	r1, #2
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	ldr	r3, [r3, #4]
	str	r3, [r7, #16]
	ldr	r0, [r7, #16]
	bl	_ZNK7SQArray4SizeEv(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r0, [r7, #4]
	movs	r1, #1
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L610
.L611:
	ldr	r3, [r7, #16]
	add	r2, r3, #24
	ldr	r3, [r7, #20]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI11SQObjectPtrEixEj(PLT)
	mov	r3, r0
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L610:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	blt	.L611
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #12]
	movs	r2, #1
	ldr	r3, [r7]
	bl	sq_call(PLT)
	mov	r3, r0
	cmp	r3, #0
	blt	.L612
	movs	r3, #1
	b	.L613
.L612:
	mov	r3, #-1
.L613:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL14_closure_acallP4SQVMj, .-_ZL14_closure_acallP4SQVMj
	.section	.text._ZL13closure_acallP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL13closure_acallP4SQVM, %function
_ZL13closure_acallP4SQVM:
	.fnstart
.LFB362:
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
	movs	r1, #1
	bl	_ZL14_closure_acallP4SQVMj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL13closure_acallP4SQVM, .-_ZL13closure_acallP4SQVM
	.section	.text._ZL14closure_pacallP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL14closure_pacallP4SQVM, %function
_ZL14closure_pacallP4SQVM:
	.fnstart
.LFB363:
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
	movs	r1, #0
	bl	_ZL14_closure_acallP4SQVMj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL14closure_pacallP4SQVM, .-_ZL14closure_pacallP4SQVM
	.section	.text._ZL15closure_bindenvP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL15closure_bindenvP4SQVM, %function
_ZL15closure_bindenvP4SQVM:
	.fnstart
.LFB364:
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
	movs	r1, #1
	bl	sq_bindenv(PLT)
	mov	r3, r0
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L620
	mov	r3, #-1
	b	.L621
.L620:
	movs	r3, #1
.L621:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL15closure_bindenvP4SQVM, .-_ZL15closure_bindenvP4SQVM
	.section	.rodata
	.align	2
.LC96:
	.ascii	"...\000"
	.align	2
.LC97:
	.ascii	"native\000"
	.align	2
.LC98:
	.ascii	"name\000"
	.align	2
.LC99:
	.ascii	"parameters\000"
	.align	2
.LC100:
	.ascii	"varargs\000"
	.align	2
.LC101:
	.ascii	"defparams\000"
	.align	2
.LC102:
	.ascii	"paramscheck\000"
	.align	2
.LC103:
	.ascii	"typecheck\000"
	.section	.text._ZL16closure_getinfosP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL16closure_getinfosP4SQVM, %function
_ZL16closure_getinfosP4SQVM:
	.fnstart
.LFB365:
	@ args = 0, pretend = 0, frame = 208
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #208
	sub	sp, sp, #208
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	movs	r1, #1
.LEHB124:
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r2, r0
	add	r3, r7, #36
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #140]
	mov	r0, r3
	movs	r1, #4
	bl	_ZN7SQTable6CreateEP13SQSharedStatei(PLT)
	mov	r3, r0
	str	r3, [r7, #192]
	ldr	r2, [r7, #36]
	mov	r3, #256
	movt	r3, 2048
	cmp	r2, r3
	bne	.L623
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #32]
	str	r3, [r7, #188]
	ldr	r3, [r7, #188]
	ldr	r2, [r3, #76]
	ldr	r3, [r7, #188]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L624
	movs	r3, #1
	b	.L625
.L624:
	movs	r3, #0
.L625:
	add	r3, r3, r2
	str	r3, [r7, #184]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #140]
	mov	r0, r3
	ldr	r1, [r7, #184]
	bl	_ZN7SQArray6CreateEP13SQSharedStatei(PLT)
.LEHE124:
	mov	r3, r0
	add	r2, r7, #28
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP7SQArray(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #140]
	ldr	r3, [r7, #188]
	ldr	r3, [r3, #100]
	mov	r0, r2
	mov	r1, r3
.LEHB125:
	bl	_ZN7SQArray6CreateEP13SQSharedStatei(PLT)
.LEHE125:
	mov	r3, r0
	add	r2, r7, #20
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP7SQArray(PLT)
	movs	r3, #0
	str	r3, [r7, #204]
	b	.L626
.L627:
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #188]
	ldr	r1, [r3, #80]
	ldr	r3, [r7, #204]
	lsls	r3, r3, #3
	add	r3, r3, r1
	mov	r0, r2
	ldr	r1, [r7, #204]
	mov	r2, r3
.LEHB126:
	bl	_ZN7SQArray3SetEiRK11SQObjectPtr(PLT)
	ldr	r3, [r7, #204]
	adds	r3, r3, #1
	str	r3, [r7, #204]
.L626:
	ldr	r3, [r7, #188]
	ldr	r2, [r3, #76]
	ldr	r3, [r7, #204]
	cmp	r2, r3
	bgt	.L627
	movs	r3, #0
	str	r3, [r7, #200]
	b	.L628
.L629:
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #40]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #200]
	lsls	r3, r3, #3
	add	r3, r3, r1
	mov	r0, r2
	ldr	r1, [r7, #200]
	mov	r2, r3
	bl	_ZN7SQArray3SetEiRK11SQObjectPtr(PLT)
	ldr	r3, [r7, #200]
	adds	r3, r3, #1
	str	r3, [r7, #200]
.L628:
	ldr	r3, [r7, #188]
	ldr	r2, [r3, #100]
	ldr	r3, [r7, #200]
	cmp	r2, r3
	bgt	.L629
	ldr	r3, [r7, #188]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L630
	ldr	r5, [r7, #32]
	ldr	r3, [r7, #184]
	subs	r4, r3, #1
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #140]
	mov	r0, r3
	ldr	r3, .L677
.LPIC51:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE126:
	mov	r3, r0
	add	r2, r7, #44
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #44
	mov	r0, r5
	mov	r1, r4
	mov	r2, r3
.LEHB127:
	bl	_ZN7SQArray3SetEiRK11SQObjectPtr(PLT)
.LEHE127:
	add	r3, r7, #44
	mov	r0, r3
.LEHB128:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.L630:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #140]
	mov	r0, r3
	ldr	r3, .L677+4
.LPIC52:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE128:
	mov	r3, r0
	add	r2, r7, #52
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #60
	mov	r0, r3
	movs	r1, #0
	bl	_ZN11SQObjectPtrC1Eb(PLT)
	add	r2, r7, #52
	add	r3, r7, #60
	ldr	r0, [r7, #192]
	mov	r1, r2
	mov	r2, r3
.LEHB129:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE129:
	add	r3, r7, #60
	mov	r0, r3
.LEHB130:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE130:
	add	r3, r7, #52
	mov	r0, r3
.LEHB131:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #140]
	mov	r0, r3
	ldr	r3, .L677+8
.LPIC53:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE131:
	mov	r3, r0
	add	r2, r7, #68
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	ldr	r3, [r7, #188]
	adds	r3, r3, #32
	add	r2, r7, #68
	ldr	r0, [r7, #192]
	mov	r1, r2
	mov	r2, r3
.LEHB132:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE132:
	add	r3, r7, #68
	mov	r0, r3
.LEHB133:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #140]
	mov	r0, r3
	ldr	r3, .L677+12
.LPIC54:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE133:
	mov	r3, r0
	add	r2, r7, #76
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	ldr	r3, [r7, #188]
	adds	r3, r3, #24
	add	r2, r7, #76
	ldr	r0, [r7, #192]
	mov	r1, r2
	mov	r2, r3
.LEHB134:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE134:
	add	r3, r7, #76
	mov	r0, r3
.LEHB135:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #140]
	mov	r0, r3
	ldr	r3, .L677+16
.LPIC55:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE135:
	mov	r3, r0
	add	r2, r7, #84
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r2, r7, #84
	add	r3, r7, #28
	ldr	r0, [r7, #192]
	mov	r1, r2
	mov	r2, r3
.LEHB136:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE136:
	add	r3, r7, #84
	mov	r0, r3
.LEHB137:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #140]
	mov	r0, r3
	ldr	r3, .L677+20
.LPIC56:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE137:
	mov	r3, r0
	add	r2, r7, #92
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	ldr	r3, [r7, #188]
	ldr	r3, [r3, #48]
	add	r2, r7, #100
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r2, r7, #92
	add	r3, r7, #100
	ldr	r0, [r7, #192]
	mov	r1, r2
	mov	r2, r3
.LEHB138:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE138:
	add	r3, r7, #100
	mov	r0, r3
.LEHB139:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE139:
	add	r3, r7, #92
	mov	r0, r3
.LEHB140:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #140]
	mov	r0, r3
	ldr	r3, .L677+24
.LPIC57:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE140:
	mov	r3, r0
	add	r2, r7, #108
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r2, r7, #108
	add	r3, r7, #20
	ldr	r0, [r7, #192]
	mov	r1, r2
	mov	r2, r3
.LEHB141:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE141:
	add	r3, r7, #108
	mov	r0, r3
.LEHB142:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE142:
	add	r3, r7, #20
	mov	r0, r3
.LEHB143:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE143:
	add	r3, r7, #28
	mov	r0, r3
.LEHB144:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L631
.L623:
	ldr	r3, [r7, #40]
	str	r3, [r7, #180]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #140]
	mov	r0, r3
	ldr	r3, .L677+28
.LPIC58:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE144:
	mov	r3, r0
	add	r2, r7, #116
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #124
	mov	r0, r3
	movs	r1, #1
	bl	_ZN11SQObjectPtrC1Eb(PLT)
	add	r2, r7, #116
	add	r3, r7, #124
	ldr	r0, [r7, #192]
	mov	r1, r2
	mov	r2, r3
.LEHB145:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE145:
	add	r3, r7, #124
	mov	r0, r3
.LEHB146:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE146:
	add	r3, r7, #116
	mov	r0, r3
.LEHB147:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #140]
	mov	r0, r3
	ldr	r3, .L677+32
.LPIC59:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE147:
	mov	r3, r0
	add	r2, r7, #132
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	ldr	r3, [r7, #180]
	adds	r3, r3, #56
	add	r2, r7, #132
	ldr	r0, [r7, #192]
	mov	r1, r2
	mov	r2, r3
.LEHB148:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE148:
	add	r3, r7, #132
	mov	r0, r3
.LEHB149:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #140]
	mov	r0, r3
	ldr	r3, .L677+36
.LPIC60:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE149:
	mov	r3, r0
	add	r2, r7, #140
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	ldr	r3, [r7, #180]
	ldr	r3, [r3, #24]
	add	r2, r7, #148
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r2, r7, #140
	add	r3, r7, #148
	ldr	r0, [r7, #192]
	mov	r1, r2
	mov	r2, r3
.LEHB150:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE150:
	add	r3, r7, #148
	mov	r0, r3
.LEHB151:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE151:
	add	r3, r7, #140
	mov	r0, r3
.LEHB152:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE152:
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #180]
	adds	r3, r3, #28
	mov	r0, r3
.LEHB153:
	bl	_ZNK8sqvectorIiE4sizeEv(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L632
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #140]
	ldr	r3, [r7, #180]
	adds	r3, r3, #28
	mov	r0, r3
	bl	_ZNK8sqvectorIiE4sizeEv(PLT)
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	bl	_ZN7SQArray6CreateEP13SQSharedStatei(PLT)
	mov	r3, r0
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEP7SQArray(PLT)
	movs	r3, #0
	str	r3, [r7, #196]
	b	.L633
.L634:
	ldr	r5, [r7, #16]
	ldr	r4, [r7, #196]
	ldr	r3, [r7, #180]
	adds	r3, r3, #28
	mov	r0, r3
	ldr	r1, [r7, #196]
	bl	_ZNK8sqvectorIiEixEj(PLT)
.LEHE153:
	mov	r3, r0
	ldr	r3, [r3]
	add	r2, r7, #156
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r3, r7, #156
	mov	r0, r5
	mov	r1, r4
	mov	r2, r3
.LEHB154:
	bl	_ZN7SQArray3SetEiRK11SQObjectPtr(PLT)
.LEHE154:
	add	r3, r7, #156
	mov	r0, r3
.LEHB155:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	ldr	r3, [r7, #196]
	adds	r3, r3, #1
	str	r3, [r7, #196]
.L633:
	ldr	r3, [r7, #180]
	adds	r3, r3, #28
	mov	r0, r3
	bl	_ZNK8sqvectorIiE4sizeEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #196]
	cmp	r2, r3
	ite	hi
	movhi	r3, #1
	movls	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L634
.L632:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #140]
	mov	r0, r3
	ldr	r3, .L677+40
.LPIC61:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE155:
	mov	r3, r0
	add	r2, r7, #164
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r2, r7, #164
	add	r3, r7, #12
	ldr	r0, [r7, #192]
	mov	r1, r2
	mov	r2, r3
.LEHB156:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE156:
	add	r3, r7, #164
	mov	r0, r3
.LEHB157:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE157:
	add	r3, r7, #12
	mov	r0, r3
.LEHB158:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE158:
.L631:
	add	r3, r7, #172
	mov	r0, r3
	ldr	r1, [r7, #192]
	bl	_ZN11SQObjectPtrC1EP7SQTable(PLT)
	add	r3, r7, #172
	ldr	r0, [r7, #4]
	mov	r1, r3
.LEHB159:
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE159:
	add	r3, r7, #172
	mov	r0, r3
.LEHB160:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE160:
	movs	r3, #1
	b	.L676
.L658:
	add	r3, r7, #44
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L637
.L660:
	add	r3, r7, #60
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L639
.L659:
.L639:
	add	r3, r7, #52
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L637
.L661:
	add	r3, r7, #68
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L637
.L662:
	add	r3, r7, #76
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L637
.L663:
	add	r3, r7, #84
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L637
.L665:
	add	r3, r7, #100
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L644
.L664:
.L644:
	add	r3, r7, #92
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L637
.L666:
	add	r3, r7, #108
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L637
.L657:
.L637:
	add	r3, r7, #20
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L646
.L656:
.L646:
	add	r3, r7, #28
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB161:
	bl	__cxa_end_cleanup(PLT)
.LEHE161:
.L668:
	add	r3, r7, #124
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L648
.L667:
.L648:
	add	r3, r7, #116
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB162:
	bl	__cxa_end_cleanup(PLT)
.LEHE162:
.L669:
	add	r3, r7, #132
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB163:
	bl	__cxa_end_cleanup(PLT)
.LEHE163:
.L671:
	add	r3, r7, #148
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L651
.L670:
.L651:
	add	r3, r7, #140
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB164:
	bl	__cxa_end_cleanup(PLT)
.LEHE164:
.L673:
	add	r3, r7, #156
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L653
.L674:
	add	r3, r7, #164
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L653
.L672:
.L653:
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB165:
	bl	__cxa_end_cleanup(PLT)
.LEHE165:
.L675:
	add	r3, r7, #172
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB166:
	bl	__cxa_end_cleanup(PLT)
.LEHE166:
.L676:
	mov	r0, r3
	adds	r7, r7, #208
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L678:
	.align	2
.L677:
	.word	.LC96-(.LPIC51+4)
	.word	.LC97-(.LPIC52+4)
	.word	.LC98-(.LPIC53+4)
	.word	.LC4-(.LPIC54+4)
	.word	.LC99-(.LPIC55+4)
	.word	.LC100-(.LPIC56+4)
	.word	.LC101-(.LPIC57+4)
	.word	.LC97-(.LPIC58+4)
	.word	.LC98-(.LPIC59+4)
	.word	.LC102-(.LPIC60+4)
	.word	.LC103-(.LPIC61+4)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA365:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE365-.LLSDACSB365
.LLSDACSB365:
	.uleb128 .LEHB124-.LFB365
	.uleb128 .LEHE124-.LEHB124
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB125-.LFB365
	.uleb128 .LEHE125-.LEHB125
	.uleb128 .L656-.LFB365
	.uleb128 0
	.uleb128 .LEHB126-.LFB365
	.uleb128 .LEHE126-.LEHB126
	.uleb128 .L657-.LFB365
	.uleb128 0
	.uleb128 .LEHB127-.LFB365
	.uleb128 .LEHE127-.LEHB127
	.uleb128 .L658-.LFB365
	.uleb128 0
	.uleb128 .LEHB128-.LFB365
	.uleb128 .LEHE128-.LEHB128
	.uleb128 .L657-.LFB365
	.uleb128 0
	.uleb128 .LEHB129-.LFB365
	.uleb128 .LEHE129-.LEHB129
	.uleb128 .L660-.LFB365
	.uleb128 0
	.uleb128 .LEHB130-.LFB365
	.uleb128 .LEHE130-.LEHB130
	.uleb128 .L659-.LFB365
	.uleb128 0
	.uleb128 .LEHB131-.LFB365
	.uleb128 .LEHE131-.LEHB131
	.uleb128 .L657-.LFB365
	.uleb128 0
	.uleb128 .LEHB132-.LFB365
	.uleb128 .LEHE132-.LEHB132
	.uleb128 .L661-.LFB365
	.uleb128 0
	.uleb128 .LEHB133-.LFB365
	.uleb128 .LEHE133-.LEHB133
	.uleb128 .L657-.LFB365
	.uleb128 0
	.uleb128 .LEHB134-.LFB365
	.uleb128 .LEHE134-.LEHB134
	.uleb128 .L662-.LFB365
	.uleb128 0
	.uleb128 .LEHB135-.LFB365
	.uleb128 .LEHE135-.LEHB135
	.uleb128 .L657-.LFB365
	.uleb128 0
	.uleb128 .LEHB136-.LFB365
	.uleb128 .LEHE136-.LEHB136
	.uleb128 .L663-.LFB365
	.uleb128 0
	.uleb128 .LEHB137-.LFB365
	.uleb128 .LEHE137-.LEHB137
	.uleb128 .L657-.LFB365
	.uleb128 0
	.uleb128 .LEHB138-.LFB365
	.uleb128 .LEHE138-.LEHB138
	.uleb128 .L665-.LFB365
	.uleb128 0
	.uleb128 .LEHB139-.LFB365
	.uleb128 .LEHE139-.LEHB139
	.uleb128 .L664-.LFB365
	.uleb128 0
	.uleb128 .LEHB140-.LFB365
	.uleb128 .LEHE140-.LEHB140
	.uleb128 .L657-.LFB365
	.uleb128 0
	.uleb128 .LEHB141-.LFB365
	.uleb128 .LEHE141-.LEHB141
	.uleb128 .L666-.LFB365
	.uleb128 0
	.uleb128 .LEHB142-.LFB365
	.uleb128 .LEHE142-.LEHB142
	.uleb128 .L657-.LFB365
	.uleb128 0
	.uleb128 .LEHB143-.LFB365
	.uleb128 .LEHE143-.LEHB143
	.uleb128 .L656-.LFB365
	.uleb128 0
	.uleb128 .LEHB144-.LFB365
	.uleb128 .LEHE144-.LEHB144
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB145-.LFB365
	.uleb128 .LEHE145-.LEHB145
	.uleb128 .L668-.LFB365
	.uleb128 0
	.uleb128 .LEHB146-.LFB365
	.uleb128 .LEHE146-.LEHB146
	.uleb128 .L667-.LFB365
	.uleb128 0
	.uleb128 .LEHB147-.LFB365
	.uleb128 .LEHE147-.LEHB147
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB148-.LFB365
	.uleb128 .LEHE148-.LEHB148
	.uleb128 .L669-.LFB365
	.uleb128 0
	.uleb128 .LEHB149-.LFB365
	.uleb128 .LEHE149-.LEHB149
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB150-.LFB365
	.uleb128 .LEHE150-.LEHB150
	.uleb128 .L671-.LFB365
	.uleb128 0
	.uleb128 .LEHB151-.LFB365
	.uleb128 .LEHE151-.LEHB151
	.uleb128 .L670-.LFB365
	.uleb128 0
	.uleb128 .LEHB152-.LFB365
	.uleb128 .LEHE152-.LEHB152
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB153-.LFB365
	.uleb128 .LEHE153-.LEHB153
	.uleb128 .L672-.LFB365
	.uleb128 0
	.uleb128 .LEHB154-.LFB365
	.uleb128 .LEHE154-.LEHB154
	.uleb128 .L673-.LFB365
	.uleb128 0
	.uleb128 .LEHB155-.LFB365
	.uleb128 .LEHE155-.LEHB155
	.uleb128 .L672-.LFB365
	.uleb128 0
	.uleb128 .LEHB156-.LFB365
	.uleb128 .LEHE156-.LEHB156
	.uleb128 .L674-.LFB365
	.uleb128 0
	.uleb128 .LEHB157-.LFB365
	.uleb128 .LEHE157-.LEHB157
	.uleb128 .L672-.LFB365
	.uleb128 0
	.uleb128 .LEHB158-.LFB365
	.uleb128 .LEHE158-.LEHB158
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB159-.LFB365
	.uleb128 .LEHE159-.LEHB159
	.uleb128 .L675-.LFB365
	.uleb128 0
	.uleb128 .LEHB160-.LFB365
	.uleb128 .LEHE160-.LEHB160
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB161-.LFB365
	.uleb128 .LEHE161-.LEHB161
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB162-.LFB365
	.uleb128 .LEHE162-.LEHB162
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB163-.LFB365
	.uleb128 .LEHE163-.LEHB163
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB164-.LFB365
	.uleb128 .LEHE164-.LEHB164
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB165-.LFB365
	.uleb128 .LEHE165-.LEHB165
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB166-.LFB365
	.uleb128 .LEHE166-.LEHB166
	.uleb128 0
	.uleb128 0
.LLSDACSE365:
	.section	.text._ZL16closure_getinfosP4SQVM
	.fnend
	.size	_ZL16closure_getinfosP4SQVM, .-_ZL16closure_getinfosP4SQVM
	.global	_ZN13SQSharedState31_closure_default_delegate_funczE
	.section	.rodata
	.align	2
.LC104:
	.ascii	"call\000"
	.align	2
.LC105:
	.ascii	"c\000"
	.align	2
.LC106:
	.ascii	"pcall\000"
	.align	2
.LC107:
	.ascii	"acall\000"
	.align	2
.LC108:
	.ascii	"ca\000"
	.align	2
.LC109:
	.ascii	"pacall\000"
	.align	2
.LC110:
	.ascii	"bindenv\000"
	.align	2
.LC111:
	.ascii	"c x|y|t\000"
	.align	2
.LC112:
	.ascii	"getinfos\000"
	.section	.data.rel.local._ZN13SQSharedState31_closure_default_delegate_funczE,"aw",%progbits
	.align	2
	.type	_ZN13SQSharedState31_closure_default_delegate_funczE, %object
	.size	_ZN13SQSharedState31_closure_default_delegate_funczE, 144
_ZN13SQSharedState31_closure_default_delegate_funczE:
	.word	.LC104
	.word	_ZL12closure_callP4SQVM
	.word	-1
	.word	.LC105
	.word	.LC106
	.word	_ZL13closure_pcallP4SQVM
	.word	-1
	.word	.LC105
	.word	.LC107
	.word	_ZL13closure_acallP4SQVM
	.word	2
	.word	.LC108
	.word	.LC109
	.word	_ZL14closure_pacallP4SQVM
	.word	2
	.word	.LC108
	.word	.LC47
	.word	_ZL20obj_delegate_weakrefP4SQVM
	.word	1
	.word	0
	.word	.LC48
	.word	_ZL25default_delegate_tostringP4SQVM
	.word	1
	.word	.LC49
	.word	.LC110
	.word	_ZL15closure_bindenvP4SQVM
	.word	2
	.word	.LC111
	.word	.LC112
	.word	_ZL16closure_getinfosP4SQVM
	.word	1
	.word	.LC105
	.word	0
	.word	0
	.space	8
	.section	.rodata
	.align	2
.LC113:
	.ascii	"suspended\000"
	.align	2
.LC114:
	.ascii	"running\000"
	.align	2
.LC115:
	.ascii	"dead\000"
	.section	.text._ZL19generator_getstatusP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL19generator_getstatusP4SQVM, %function
_ZL19generator_getstatusP4SQVM:
	.fnstart
.LFB366:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #40
	sub	sp, sp, #40
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	movs	r1, #1
.LEHB167:
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #100]
	cmp	r3, #1
	beq	.L681
	cmp	r3, #2
	beq	.L682
	cmp	r3, #0
	beq	.L683
	b	.L680
.L681:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #140]
	mov	r0, r3
	ldr	r3, .L692
.LPIC62:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE167:
	mov	r3, r0
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	mov	r1, r3
.LEHB168:
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE168:
	add	r3, r7, #12
	mov	r0, r3
.LEHB169:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L680
.L683:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #140]
	mov	r0, r3
	ldr	r3, .L692+4
.LPIC63:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE169:
	mov	r3, r0
	add	r2, r7, #20
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #20
	ldr	r0, [r7, #4]
	mov	r1, r3
.LEHB170:
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE170:
	add	r3, r7, #20
	mov	r0, r3
.LEHB171:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L680
.L682:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #140]
	mov	r0, r3
	ldr	r3, .L692+8
.LPIC64:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE171:
	mov	r3, r0
	add	r2, r7, #28
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #28
	ldr	r0, [r7, #4]
	mov	r1, r3
.LEHB172:
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE172:
	add	r3, r7, #28
	mov	r0, r3
.LEHB173:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE173:
	nop
.L680:
	movs	r3, #1
	b	.L691
.L688:
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB174:
	bl	__cxa_end_cleanup(PLT)
.LEHE174:
.L689:
	add	r3, r7, #20
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB175:
	bl	__cxa_end_cleanup(PLT)
.LEHE175:
.L690:
	add	r3, r7, #28
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB176:
	bl	__cxa_end_cleanup(PLT)
.LEHE176:
.L691:
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L693:
	.align	2
.L692:
	.word	.LC113-(.LPIC62+4)
	.word	.LC114-(.LPIC63+4)
	.word	.LC115-(.LPIC64+4)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA366:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE366-.LLSDACSB366
.LLSDACSB366:
	.uleb128 .LEHB167-.LFB366
	.uleb128 .LEHE167-.LEHB167
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB168-.LFB366
	.uleb128 .LEHE168-.LEHB168
	.uleb128 .L688-.LFB366
	.uleb128 0
	.uleb128 .LEHB169-.LFB366
	.uleb128 .LEHE169-.LEHB169
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB170-.LFB366
	.uleb128 .LEHE170-.LEHB170
	.uleb128 .L689-.LFB366
	.uleb128 0
	.uleb128 .LEHB171-.LFB366
	.uleb128 .LEHE171-.LEHB171
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB172-.LFB366
	.uleb128 .LEHE172-.LEHB172
	.uleb128 .L690-.LFB366
	.uleb128 0
	.uleb128 .LEHB173-.LFB366
	.uleb128 .LEHE173-.LEHB173
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB174-.LFB366
	.uleb128 .LEHE174-.LEHB174
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB175-.LFB366
	.uleb128 .LEHE175-.LEHB175
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB176-.LFB366
	.uleb128 .LEHE176-.LEHB176
	.uleb128 0
	.uleb128 0
.LLSDACSE366:
	.section	.text._ZL19generator_getstatusP4SQVM
	.fnend
	.size	_ZL19generator_getstatusP4SQVM, .-_ZL19generator_getstatusP4SQVM
	.global	_ZN13SQSharedState33_generator_default_delegate_funczE
	.section	.rodata
	.align	2
.LC116:
	.ascii	"getstatus\000"
	.align	2
.LC117:
	.ascii	"g\000"
	.section	.data.rel.local._ZN13SQSharedState33_generator_default_delegate_funczE,"aw",%progbits
	.align	2
	.type	_ZN13SQSharedState33_generator_default_delegate_funczE, %object
	.size	_ZN13SQSharedState33_generator_default_delegate_funczE, 64
_ZN13SQSharedState33_generator_default_delegate_funczE:
	.word	.LC116
	.word	_ZL19generator_getstatusP4SQVM
	.word	1
	.word	.LC117
	.word	.LC47
	.word	_ZL20obj_delegate_weakrefP4SQVM
	.word	1
	.word	0
	.word	.LC48
	.word	_ZL25default_delegate_tostringP4SQVM
	.word	1
	.word	.LC49
	.word	0
	.word	0
	.space	8
	.section	.rodata
	.align	2
.LC118:
	.ascii	"wrong parameter\000"
	.section	.text._ZL11thread_callP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL11thread_callP4SQVM, %function
_ZL11thread_callP4SQVM:
	.fnstart
.LFB367:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #28
	sub	sp, sp, #28
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	movs	r1, #1
.LEHB177:
	bl	_Z9stack_getP4SQVMi(PLT)
.LEHE177:
	mov	r3, r0
	add	r2, r7, #8
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1ERKS_(PLT)
	ldr	r2, [r7, #8]
	mov	r3, #4096
	movt	r3, 2048
	cmp	r2, r3
	bne	.L695
	ldr	r0, [r7, #4]
.LEHB178:
	bl	sq_gettop(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #12]
	adds	r3, r3, #48
	mov	r0, r2
	mov	r1, r3
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	movs	r3, #2
	str	r3, [r7, #20]
	b	.L696
.L697:
	ldr	r3, [r7, #12]
	mov	r0, r3
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #20]
	bl	sq_move(PLT)
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L696:
	ldr	r3, [r7, #16]
	adds	r2, r3, #1
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bgt	.L697
	ldr	r3, [r7, #12]
	mov	r0, r3
	ldr	r1, [r7, #16]
	movs	r2, #1
	movs	r3, #1
	bl	sq_call(PLT)
	mov	r3, r0
	mvns	r3, r3
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L698
	ldr	r3, [r7, #12]
	ldr	r0, [r7, #4]
	mov	r1, r3
	mov	r2, #-1
	bl	sq_move(PLT)
	ldr	r3, [r7, #12]
	mov	r0, r3
	movs	r1, #1
	bl	sq_pop(PLT)
	movs	r4, #1
	b	.L699
.L698:
	ldr	r3, [r7, #4]
	add	r2, r3, #56
	ldr	r3, [r7, #12]
	adds	r3, r3, #56
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	mov	r4, #-1
	b	.L699
.L695:
	ldr	r0, [r7, #4]
	ldr	r3, .L704
.LPIC65:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
.LEHE178:
	mov	r4, r0
.L699:
	add	r3, r7, #8
	mov	r0, r3
.LEHB179:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE179:
	mov	r3, r4
	b	.L703
.L702:
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB180:
	bl	__cxa_end_cleanup(PLT)
.LEHE180:
.L703:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L705:
	.align	2
.L704:
	.word	.LC118-(.LPIC65+4)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA367:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE367-.LLSDACSB367
.LLSDACSB367:
	.uleb128 .LEHB177-.LFB367
	.uleb128 .LEHE177-.LEHB177
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB178-.LFB367
	.uleb128 .LEHE178-.LEHB178
	.uleb128 .L702-.LFB367
	.uleb128 0
	.uleb128 .LEHB179-.LFB367
	.uleb128 .LEHE179-.LEHB179
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB180-.LFB367
	.uleb128 .LEHE180-.LEHB180
	.uleb128 0
	.uleb128 0
.LLSDACSE367:
	.section	.text._ZL11thread_callP4SQVM
	.fnend
	.size	_ZL11thread_callP4SQVM, .-_ZL11thread_callP4SQVM
	.section	.rodata
	.align	2
.LC119:
	.ascii	"cannot wakeup a idle thread\000"
	.align	2
.LC120:
	.ascii	"cannot wakeup a running thread\000"
	.section	.text._ZL13thread_wakeupP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL13thread_wakeupP4SQVM, %function
_ZL13thread_wakeupP4SQVM:
	.fnstart
.LFB368:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #44
	sub	sp, sp, #44
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	movs	r1, #1
.LEHB181:
	bl	_Z9stack_getP4SQVMi(PLT)
.LEHE181:
	mov	r3, r0
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1ERKS_(PLT)
	ldr	r2, [r7, #12]
	mov	r3, #4096
	movt	r3, 2048
	cmp	r2, r3
	bne	.L707
	ldr	r3, [r7, #16]
	str	r3, [r7, #28]
	ldr	r0, [r7, #28]
.LEHB182:
	bl	sq_getvmstate(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #2
	beq	.L708
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L710
	cmp	r3, #1
	beq	.L711
	b	.L708
.L710:
	ldr	r0, [r7, #4]
	ldr	r3, .L722
.LPIC66:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r4, r0
	b	.L712
.L711:
	ldr	r0, [r7, #4]
	ldr	r3, .L722+4
.LPIC67:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r4, r0
	b	.L712
.L708:
	ldr	r0, [r7, #4]
	bl	sq_gettop(PLT)
	mov	r3, r0
	cmp	r3, #1
	ble	.L713
	movs	r3, #1
	b	.L714
.L713:
	movs	r3, #0
.L714:
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L715
	ldr	r0, [r7, #28]
	ldr	r1, [r7, #4]
	movs	r2, #2
	bl	sq_move(PLT)
.L715:
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [sp]
	ldr	r0, [r7, #28]
	mov	r1, r3
	movs	r2, #1
	movs	r3, #1
	bl	sq_wakeupvm(PLT)
	mov	r3, r0
	mvns	r3, r3
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L716
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #28]
	mov	r2, #-1
	bl	sq_move(PLT)
	ldr	r0, [r7, #28]
	movs	r1, #1
	bl	sq_pop(PLT)
	ldr	r0, [r7, #28]
	bl	sq_getvmstate(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L717
	ldr	r0, [r7, #28]
	movs	r1, #1
	bl	sq_settop(PLT)
.L717:
	movs	r4, #1
	b	.L712
.L716:
	ldr	r0, [r7, #28]
	movs	r1, #1
	bl	sq_settop(PLT)
	ldr	r3, [r7, #4]
	add	r2, r3, #56
	ldr	r3, [r7, #28]
	adds	r3, r3, #56
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	mov	r4, #-1
	b	.L712
.L707:
	ldr	r0, [r7, #4]
	ldr	r3, .L722+8
.LPIC68:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
.LEHE182:
	mov	r4, r0
.L712:
	add	r3, r7, #12
	mov	r0, r3
.LEHB183:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE183:
	mov	r3, r4
	b	.L721
.L720:
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB184:
	bl	__cxa_end_cleanup(PLT)
.LEHE184:
.L721:
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L723:
	.align	2
.L722:
	.word	.LC119-(.LPIC66+4)
	.word	.LC120-(.LPIC67+4)
	.word	.LC118-(.LPIC68+4)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA368:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE368-.LLSDACSB368
.LLSDACSB368:
	.uleb128 .LEHB181-.LFB368
	.uleb128 .LEHE181-.LEHB181
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB182-.LFB368
	.uleb128 .LEHE182-.LEHB182
	.uleb128 .L720-.LFB368
	.uleb128 0
	.uleb128 .LEHB183-.LFB368
	.uleb128 .LEHE183-.LEHB183
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB184-.LFB368
	.uleb128 .LEHE184-.LEHB184
	.uleb128 0
	.uleb128 0
.LLSDACSE368:
	.section	.text._ZL13thread_wakeupP4SQVM
	.fnend
	.size	_ZL13thread_wakeupP4SQVM, .-_ZL13thread_wakeupP4SQVM
	.section	.rodata
	.align	2
.LC121:
	.ascii	"idle\000"
	.align	2
.LC122:
	.ascii	"internal VM error\000"
	.section	.text._ZL16thread_getstatusP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL16thread_getstatusP4SQVM, %function
_ZL16thread_getstatusP4SQVM:
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
	movs	r1, #1
	bl	_Z9stack_getP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	sq_getvmstate(PLT)
	mov	r3, r0
	cmp	r3, #1
	beq	.L726
	cmp	r3, #2
	beq	.L727
	cmp	r3, #0
	bne	.L731
	ldr	r0, [r7, #4]
	ldr	r3, .L732
.LPIC69:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	sq_pushstring(PLT)
	b	.L729
.L726:
	ldr	r0, [r7, #4]
	ldr	r3, .L732+4
.LPIC70:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	sq_pushstring(PLT)
	b	.L729
.L727:
	ldr	r0, [r7, #4]
	ldr	r3, .L732+8
.LPIC71:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	sq_pushstring(PLT)
	b	.L729
.L731:
	ldr	r0, [r7, #4]
	ldr	r3, .L732+12
.LPIC72:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L730
.L729:
	movs	r3, #1
.L730:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L733:
	.align	2
.L732:
	.word	.LC121-(.LPIC69+4)
	.word	.LC114-(.LPIC70+4)
	.word	.LC113-(.LPIC71+4)
	.word	.LC122-(.LPIC72+4)
	.fnend
	.size	_ZL16thread_getstatusP4SQVM, .-_ZL16thread_getstatusP4SQVM
	.section	.rodata
	.align	2
.LC123:
	.ascii	"unknown error\000"
	.section	.text._ZL20thread_getstackinfosP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL20thread_getstackinfosP4SQVM, %function
_ZL20thread_getstackinfosP4SQVM:
	.fnstart
.LFB370:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #36
	sub	sp, sp, #36
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	movs	r1, #1
.LEHB185:
	bl	_Z9stack_getP4SQVMi(PLT)
.LEHE185:
	mov	r3, r0
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1ERKS_(PLT)
	ldr	r2, [r7, #12]
	mov	r3, #4096
	movt	r3, 2048
	cmp	r2, r3
	bne	.L735
	ldr	r3, [r7, #16]
	str	r3, [r7, #28]
	ldr	r0, [r7, #28]
.LEHB186:
	bl	sq_gettop(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	mov	r1, #-1
	mov	r2, r3
	bl	sq_getinteger(PLT)
	ldr	r3, [r7, #8]
	ldr	r0, [r7, #28]
	mov	r1, r3
	bl	_ZL19__getcallstackinfosP4SQVMi(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bge	.L736
	ldr	r0, [r7, #28]
	ldr	r1, [r7, #24]
	bl	sq_settop(PLT)
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #56]
	movs	r3, #16
	movt	r3, 2048
	cmp	r2, r3
	bne	.L737
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #60]
	adds	r3, r3, #28
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	sq_throwerror(PLT)
	b	.L736
.L737:
	ldr	r0, [r7, #4]
	ldr	r3, .L746
.LPIC73:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
.L736:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	ble	.L739
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #28]
	mov	r2, #-1
	bl	sq_move(PLT)
	ldr	r0, [r7, #28]
	ldr	r1, [r7, #24]
	bl	sq_settop(PLT)
	movs	r4, #1
	b	.L741
.L739:
	ldr	r0, [r7, #28]
	ldr	r1, [r7, #24]
	bl	sq_settop(PLT)
	movs	r4, #0
	b	.L741
.L735:
	ldr	r0, [r7, #4]
	ldr	r3, .L746+4
.LPIC74:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
.LEHE186:
	mov	r4, r0
.L741:
	add	r3, r7, #12
	mov	r0, r3
.LEHB187:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE187:
	mov	r3, r4
	b	.L745
.L744:
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB188:
	bl	__cxa_end_cleanup(PLT)
.LEHE188:
.L745:
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L747:
	.align	2
.L746:
	.word	.LC123-(.LPIC73+4)
	.word	.LC118-(.LPIC74+4)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA370:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE370-.LLSDACSB370
.LLSDACSB370:
	.uleb128 .LEHB185-.LFB370
	.uleb128 .LEHE185-.LEHB185
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB186-.LFB370
	.uleb128 .LEHE186-.LEHB186
	.uleb128 .L744-.LFB370
	.uleb128 0
	.uleb128 .LEHB187-.LFB370
	.uleb128 .LEHE187-.LEHB187
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB188-.LFB370
	.uleb128 .LEHE188-.LEHB188
	.uleb128 0
	.uleb128 0
.LLSDACSE370:
	.section	.text._ZL20thread_getstackinfosP4SQVM
	.fnend
	.size	_ZL20thread_getstackinfosP4SQVM, .-_ZL20thread_getstackinfosP4SQVM
	.global	_ZN13SQSharedState30_thread_default_delegate_funczE
	.section	.rodata
	.align	2
.LC124:
	.ascii	"v\000"
	.align	2
.LC125:
	.ascii	"wakeup\000"
	.align	2
.LC126:
	.ascii	"vn\000"
	.section	.data.rel.local._ZN13SQSharedState30_thread_default_delegate_funczE,"aw",%progbits
	.align	2
	.type	_ZN13SQSharedState30_thread_default_delegate_funczE, %object
	.size	_ZN13SQSharedState30_thread_default_delegate_funczE, 112
_ZN13SQSharedState30_thread_default_delegate_funczE:
	.word	.LC104
	.word	_ZL11thread_callP4SQVM
	.word	-1
	.word	.LC124
	.word	.LC125
	.word	_ZL13thread_wakeupP4SQVM
	.word	-1
	.word	.LC124
	.word	.LC116
	.word	_ZL16thread_getstatusP4SQVM
	.word	1
	.word	.LC124
	.word	.LC47
	.word	_ZL20obj_delegate_weakrefP4SQVM
	.word	1
	.word	0
	.word	.LC14
	.word	_ZL20thread_getstackinfosP4SQVM
	.word	2
	.word	.LC126
	.word	.LC48
	.word	_ZL25default_delegate_tostringP4SQVM
	.word	1
	.word	.LC49
	.word	0
	.word	0
	.space	8
	.section	.text._ZL19class_getattributesP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL19class_getattributesP4SQVM, %function
_ZL19class_getattributesP4SQVM:
	.fnstart
.LFB371:
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
	mvn	r1, #1
	bl	sq_getattributes(PLT)
	mov	r3, r0
	cmp	r3, #0
	blt	.L749
	movs	r3, #1
	b	.L750
.L749:
	mov	r3, #-1
.L750:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL19class_getattributesP4SQVM, .-_ZL19class_getattributesP4SQVM
	.section	.text._ZL19class_setattributesP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL19class_setattributesP4SQVM, %function
_ZL19class_setattributesP4SQVM:
	.fnstart
.LFB372:
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
	mvn	r1, #2
	bl	sq_setattributes(PLT)
	mov	r3, r0
	cmp	r3, #0
	blt	.L753
	movs	r3, #1
	b	.L754
.L753:
	mov	r3, #-1
.L754:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL19class_setattributesP4SQVM, .-_ZL19class_setattributesP4SQVM
	.section	.text._ZL14class_instanceP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL14class_instanceP4SQVM, %function
_ZL14class_instanceP4SQVM:
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
	ldr	r0, [r7, #4]
	mov	r1, #-1
	bl	sq_createinstance(PLT)
	mov	r3, r0
	cmp	r3, #0
	blt	.L757
	movs	r3, #1
	b	.L758
.L757:
	mov	r3, #-1
.L758:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL14class_instanceP4SQVM, .-_ZL14class_instanceP4SQVM
	.section	.text._ZL13class_getbaseP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL13class_getbaseP4SQVM, %function
_ZL13class_getbaseP4SQVM:
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
	ldr	r0, [r7, #4]
	mov	r1, #-1
	bl	sq_getbase(PLT)
	mov	r3, r0
	cmp	r3, #0
	blt	.L761
	movs	r3, #1
	b	.L762
.L761:
	mov	r3, #-1
.L762:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL13class_getbaseP4SQVM, .-_ZL13class_getbaseP4SQVM
	.section	.text._ZL15class_newmemberP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL15class_newmemberP4SQVM, %function
_ZL15class_newmemberP4SQVM:
	.fnstart
.LFB375:
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
	bl	sq_gettop(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	cmp	r3, #5
	bne	.L765
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	mov	r1, #-1
	mov	r2, r3
	bl	sq_tobool(PLT)
	ldr	r0, [r7, #4]
	movs	r1, #1
	bl	sq_pop(PLT)
.L765:
	ldr	r3, [r7, #12]
	cmp	r3, #3
	bgt	.L766
	ldr	r0, [r7, #4]
	bl	sq_pushnull(PLT)
.L766:
	ldr	r3, [r7, #8]
	ldr	r0, [r7, #4]
	mvn	r1, #3
	mov	r2, r3
	bl	sq_newmember(PLT)
	mov	r3, r0
	cmp	r3, #0
	blt	.L767
	movs	r3, #1
	b	.L768
.L767:
	mov	r3, #-1
.L768:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL15class_newmemberP4SQVM, .-_ZL15class_newmemberP4SQVM
	.section	.text._ZL18class_rawnewmemberP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL18class_rawnewmemberP4SQVM, %function
_ZL18class_rawnewmemberP4SQVM:
	.fnstart
.LFB376:
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
	bl	sq_gettop(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	cmp	r3, #5
	bne	.L771
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	mov	r1, #-1
	mov	r2, r3
	bl	sq_tobool(PLT)
	ldr	r0, [r7, #4]
	movs	r1, #1
	bl	sq_pop(PLT)
.L771:
	ldr	r3, [r7, #12]
	cmp	r3, #3
	bgt	.L772
	ldr	r0, [r7, #4]
	bl	sq_pushnull(PLT)
.L772:
	ldr	r3, [r7, #8]
	ldr	r0, [r7, #4]
	mvn	r1, #3
	mov	r2, r3
	bl	sq_rawnewmember(PLT)
	mov	r3, r0
	cmp	r3, #0
	blt	.L773
	movs	r3, #1
	b	.L774
.L773:
	mov	r3, #-1
.L774:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL18class_rawnewmemberP4SQVM, .-_ZL18class_rawnewmemberP4SQVM
	.global	_ZN13SQSharedState29_class_default_delegate_funczE
	.section	.rodata
	.align	2
.LC127:
	.ascii	"getattributes\000"
	.align	2
.LC128:
	.ascii	"y.\000"
	.align	2
.LC129:
	.ascii	"setattributes\000"
	.align	2
.LC130:
	.ascii	"y..\000"
	.align	2
.LC131:
	.ascii	"y\000"
	.align	2
.LC132:
	.ascii	"instance\000"
	.align	2
.LC133:
	.ascii	"getbase\000"
	.align	2
.LC134:
	.ascii	"newmember\000"
	.align	2
.LC135:
	.ascii	"rawnewmember\000"
	.section	.data.rel.local._ZN13SQSharedState29_class_default_delegate_funczE,"aw",%progbits
	.align	2
	.type	_ZN13SQSharedState29_class_default_delegate_funczE, %object
	.size	_ZN13SQSharedState29_class_default_delegate_funczE, 192
_ZN13SQSharedState29_class_default_delegate_funczE:
	.word	.LC127
	.word	_ZL19class_getattributesP4SQVM
	.word	2
	.word	.LC128
	.word	.LC129
	.word	_ZL19class_setattributesP4SQVM
	.word	3
	.word	.LC130
	.word	.LC43
	.word	_ZL16container_rawgetP4SQVM
	.word	2
	.word	.LC131
	.word	.LC44
	.word	_ZL16container_rawsetP4SQVM
	.word	3
	.word	.LC131
	.word	.LC46
	.word	_ZL19container_rawexistsP4SQVM
	.word	2
	.word	.LC131
	.word	.LC47
	.word	_ZL20obj_delegate_weakrefP4SQVM
	.word	1
	.word	0
	.word	.LC48
	.word	_ZL25default_delegate_tostringP4SQVM
	.word	1
	.word	.LC49
	.word	.LC132
	.word	_ZL14class_instanceP4SQVM
	.word	1
	.word	.LC131
	.word	.LC133
	.word	_ZL13class_getbaseP4SQVM
	.word	1
	.word	.LC131
	.word	.LC134
	.word	_ZL15class_newmemberP4SQVM
	.word	-3
	.word	.LC131
	.word	.LC135
	.word	_ZL18class_rawnewmemberP4SQVM
	.word	-3
	.word	.LC131
	.word	0
	.word	0
	.space	8
	.section	.text._ZL17instance_getclassP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL17instance_getclassP4SQVM, %function
_ZL17instance_getclassP4SQVM:
	.fnstart
.LFB377:
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
	movs	r1, #1
	bl	sq_getclass(PLT)
	mov	r3, r0
	mvns	r3, r3
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L777
	movs	r3, #1
	b	.L778
.L777:
	mov	r3, #-1
.L778:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL17instance_getclassP4SQVM, .-_ZL17instance_getclassP4SQVM
	.global	_ZN13SQSharedState32_instance_default_delegate_funczE
	.section	.rodata
	.align	2
.LC136:
	.ascii	"getclass\000"
	.align	2
.LC137:
	.ascii	"x\000"
	.section	.data.rel.local._ZN13SQSharedState32_instance_default_delegate_funczE,"aw",%progbits
	.align	2
	.type	_ZN13SQSharedState32_instance_default_delegate_funczE, %object
	.size	_ZN13SQSharedState32_instance_default_delegate_funczE, 112
_ZN13SQSharedState32_instance_default_delegate_funczE:
	.word	.LC136
	.word	_ZL17instance_getclassP4SQVM
	.word	1
	.word	.LC137
	.word	.LC43
	.word	_ZL16container_rawgetP4SQVM
	.word	2
	.word	.LC137
	.word	.LC44
	.word	_ZL16container_rawsetP4SQVM
	.word	3
	.word	.LC137
	.word	.LC46
	.word	_ZL19container_rawexistsP4SQVM
	.word	2
	.word	.LC137
	.word	.LC47
	.word	_ZL20obj_delegate_weakrefP4SQVM
	.word	1
	.word	0
	.word	.LC48
	.word	_ZL25default_delegate_tostringP4SQVM
	.word	1
	.word	.LC49
	.word	0
	.word	0
	.space	8
	.section	.text._ZL11weakref_refP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL11weakref_refP4SQVM, %function
_ZL11weakref_refP4SQVM:
	.fnstart
.LFB378:
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
	movs	r1, #1
	bl	sq_getweakrefval(PLT)
	mov	r3, r0
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L780
	mov	r3, #-1
	b	.L781
.L780:
	movs	r3, #1
.L781:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL11weakref_refP4SQVM, .-_ZL11weakref_refP4SQVM
	.global	_ZN13SQSharedState31_weakref_default_delegate_funczE
	.section	.rodata
	.align	2
.LC138:
	.ascii	"ref\000"
	.align	2
.LC139:
	.ascii	"r\000"
	.section	.data.rel.local._ZN13SQSharedState31_weakref_default_delegate_funczE,"aw",%progbits
	.align	2
	.type	_ZN13SQSharedState31_weakref_default_delegate_funczE, %object
	.size	_ZN13SQSharedState31_weakref_default_delegate_funczE, 64
_ZN13SQSharedState31_weakref_default_delegate_funczE:
	.word	.LC138
	.word	_ZL11weakref_refP4SQVM
	.word	1
	.word	.LC139
	.word	.LC47
	.word	_ZL20obj_delegate_weakrefP4SQVM
	.word	1
	.word	0
	.word	.LC48
	.word	_ZL25default_delegate_tostringP4SQVM
	.word	1
	.word	.LC49
	.word	0
	.word	0
	.space	8
	.section	.text._ZN8sqvectorI11SQObjectPtrEC2Ev,"axG",%progbits,_ZN8sqvectorI11SQObjectPtrEC5Ev,comdat
	.align	2
	.weak	_ZN8sqvectorI11SQObjectPtrEC2Ev
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI11SQObjectPtrEC2Ev, %function
_ZN8sqvectorI11SQObjectPtrEC2Ev:
	.fnstart
.LFB385:
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
.LFB388:
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
	beq	.L786
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L787
.L788:
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
.L787:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bhi	.L788
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	lsls	r3, r3, #3
	mov	r0, r2
	mov	r1, r3
	bl	_Z10sq_vm_freePvj(PLT)
.L786:
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
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcs	.L791
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_ZN8sqvectorI11SQObjectPtrE8_reallocEj(PLT)
.L791:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcs	.L792
	b	.L793
.L796:
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
	beq	.L795
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	_ZN11SQObjectPtrC1ERKS_(PLT)
.L795:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #4]
.L793:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L796
	b	.L790
.L792:
	ldr	r3, [r7, #8]
	str	r3, [r7, #20]
	b	.L798
.L799:
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
.L798:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bhi	.L799
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #4]
.L790:
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
.LFB391:
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
.LFB392:
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
.LFB395:
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
	bhi	.L805
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #1
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN8sqvectorI11SQObjectPtrE8_reallocEj(PLT)
.L805:
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
	beq	.L806
	mov	r0, r4
	ldr	r1, [r7]
	bl	_ZN11SQObjectPtrC1ERKS_(PLT)
	mov	r3, r4
	b	.L807
.L806:
	mov	r3, r4
.L807:
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
.LFB396:
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
	.section	.text._ZN8sqvectorI11SQObjectPtrE6insertEjRKS0_,"axG",%progbits,_ZN8sqvectorI11SQObjectPtrE6insertEjRKS0_,comdat
	.align	2
	.weak	_ZN8sqvectorI11SQObjectPtrE6insertEjRKS0_
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI11SQObjectPtrE6insertEjRKS0_, %function
_ZN8sqvectorI11SQObjectPtrE6insertEjRKS0_:
	.fnstart
.LFB398:
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
.LEHB189:
	bl	_ZN8sqvectorI11SQObjectPtrE6resizeEjRKS0_(PLT)
.LEHE189:
	add	r3, r7, #20
	mov	r0, r3
.LEHB190:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	subs	r3, r3, #1
	str	r3, [r7, #28]
	b	.L812
.L813:
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
.L812:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bhi	.L813
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #3
	add	r3, r3, r2
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	_ZN11SQObjectPtraSERKS_(PLT)
.LEHE190:
	b	.L816
.L815:
	add	r3, r7, #20
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB191:
	bl	__cxa_end_cleanup(PLT)
.LEHE191:
.L816:
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA398:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE398-.LLSDACSB398
.LLSDACSB398:
	.uleb128 .LEHB189-.LFB398
	.uleb128 .LEHE189-.LEHB189
	.uleb128 .L815-.LFB398
	.uleb128 0
	.uleb128 .LEHB190-.LFB398
	.uleb128 .LEHE190-.LEHB190
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB191-.LFB398
	.uleb128 .LEHE191-.LEHB191
	.uleb128 0
	.uleb128 0
.LLSDACSE398:
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
.LFB399:
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
.LFB400:
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
	bls	.L819
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN8sqvectorI11SQObjectPtrE8_reallocEj(PLT)
.L819:
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
.LFB401:
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
	bls	.L822
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
.L822:
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
	.section	.text._ZNK8sqvectorIiE4sizeEv,"axG",%progbits,_ZNK8sqvectorIiE4sizeEv,comdat
	.align	2
	.weak	_ZNK8sqvectorIiE4sizeEv
	.thumb
	.thumb_func
	.type	_ZNK8sqvectorIiE4sizeEv, %function
_ZNK8sqvectorIiE4sizeEv:
	.fnstart
.LFB417:
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
	.section	.text._ZNK8sqvectorIiEixEj,"axG",%progbits,_ZNK8sqvectorIiEixEj,comdat
	.align	2
	.weak	_ZNK8sqvectorIiEixEj
	.thumb
	.thumb_func
	.type	_ZNK8sqvectorIiEixEj, %function
_ZNK8sqvectorIiEixEj:
	.fnstart
.LFB418:
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
	.section	.text._ZN8sqvectorI11SQObjectPtrE8_reallocEj,"axG",%progbits,_ZN8sqvectorI11SQObjectPtrE8_reallocEj,comdat
	.align	2
	.weak	_ZN8sqvectorI11SQObjectPtrE8_reallocEj
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI11SQObjectPtrE8_reallocEj, %function
_ZN8sqvectorI11SQObjectPtrE8_reallocEj:
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
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L828
	ldr	r3, [r7]
	b	.L829
.L828:
	movs	r3, #4
.L829:
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
	.section	.rodata._ZZN11SQObjectPtrC1EP7SQArrayE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN11SQObjectPtrC1EP7SQArrayE19__PRETTY_FUNCTION__, %object
	.size	_ZZN11SQObjectPtrC1EP7SQArrayE19__PRETTY_FUNCTION__, 35
_ZZN11SQObjectPtrC1EP7SQArrayE19__PRETTY_FUNCTION__:
	.ascii	"SQObjectPtr::SQObjectPtr(SQArray*)\000"
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
