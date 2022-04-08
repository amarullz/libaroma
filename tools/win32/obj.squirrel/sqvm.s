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
	.file	"sqvm.cpp"
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
	.size	_ZN11SQObjectPtraSEP7SQTable, .-_ZN11SQObjectPtraSEP7SQTable
	.section	.text._ZN11SQObjectPtraSEP7SQClass,"axG",%progbits,_ZN11SQObjectPtraSEP7SQClass,comdat
	.align	2
	.weak	_ZN11SQObjectPtraSEP7SQClass
	.thumb
	.thumb_func
	.type	_ZN11SQObjectPtraSEP7SQClass, %function
_ZN11SQObjectPtraSEP7SQClass:
	.fnstart
.LFB56:
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
	mov	r3, #16384
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
	beq	.L33
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L33
	movs	r3, #1
	b	.L34
.L33:
	movs	r3, #0
.L34:
	cmp	r3, #0
	beq	.L35
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	mov	r0, r2
	blx	r3
.L35:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQObjectPtraSEP7SQClass, .-_ZN11SQObjectPtraSEP7SQClass
	.section	.text._ZN11SQObjectPtraSEP10SQInstance,"axG",%progbits,_ZN11SQObjectPtraSEP10SQInstance,comdat
	.align	2
	.weak	_ZN11SQObjectPtraSEP10SQInstance
	.thumb
	.thumb_func
	.type	_ZN11SQObjectPtraSEP10SQInstance, %function
_ZN11SQObjectPtraSEP10SQInstance:
	.fnstart
.LFB60:
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
	mov	r3, #32768
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
	beq	.L38
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L38
	movs	r3, #1
	b	.L39
.L38:
	movs	r3, #0
.L39:
	cmp	r3, #0
	beq	.L40
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	mov	r0, r2
	blx	r3
.L40:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQObjectPtraSEP10SQInstance, .-_ZN11SQObjectPtraSEP10SQInstance
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
	beq	.L43
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L43
	movs	r3, #1
	b	.L44
.L43:
	movs	r3, #0
.L44:
	cmp	r3, #0
	beq	.L45
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	mov	r0, r2
	blx	r3
.L45:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQObjectPtraSEP7SQArray, .-_ZN11SQObjectPtraSEP7SQArray
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
	beq	.L48
	ldr	r3, [r7, #8]
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
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	mov	r0, r2
	blx	r3
.L50:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQObjectPtraSEP9SQClosure, .-_ZN11SQObjectPtraSEP9SQClosure
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
	beq	.L53
	ldr	r3, [r7, #8]
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
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	mov	r0, r2
	blx	r3
.L55:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQObjectPtraSEP15SQNativeClosure, .-_ZN11SQObjectPtraSEP15SQNativeClosure
	.section	.text._ZN11SQObjectPtrC2EP7SQOuter,"axG",%progbits,_ZN11SQObjectPtrC5EP7SQOuter,comdat
	.align	2
	.weak	_ZN11SQObjectPtrC2EP7SQOuter
	.thumb
	.thumb_func
	.type	_ZN11SQObjectPtrC2EP7SQOuter, %function
_ZN11SQObjectPtrC2EP7SQOuter:
	.fnstart
.LFB74:
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
	movt	r3, 2050
	str	r3, [r2]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L58
	ldr	r3, .L61
.LPIC4:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L61+4
.LPIC5:
	add	r3, pc
	mov	r1, r3
	movs	r2, #232
	ldr	r3, .L61+8
.LPIC6:
	add	r3, pc
	bl	__assert_fail(PLT)
.L58:
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
.L62:
	.align	2
.L61:
	.word	.LC0-(.LPIC4+4)
	.word	.LC1-(.LPIC5+4)
	.word	_ZZN11SQObjectPtrC1EP7SQOuterE19__PRETTY_FUNCTION__-(.LPIC6+4)
	.cantunwind
	.fnend
	.size	_ZN11SQObjectPtrC2EP7SQOuter, .-_ZN11SQObjectPtrC2EP7SQOuter
	.weak	_ZN11SQObjectPtrC1EP7SQOuter
	.thumb_set _ZN11SQObjectPtrC1EP7SQOuter,_ZN11SQObjectPtrC2EP7SQOuter
	.section	.text._ZN11SQObjectPtrC2EP11SQGenerator,"axG",%progbits,_ZN11SQObjectPtrC5EP11SQGenerator,comdat
	.align	2
	.weak	_ZN11SQObjectPtrC2EP11SQGenerator
	.thumb
	.thumb_func
	.type	_ZN11SQObjectPtrC2EP11SQGenerator, %function
_ZN11SQObjectPtrC2EP11SQGenerator:
	.fnstart
.LFB78:
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
	mov	r3, #1024
	movt	r3, 2048
	str	r3, [r2]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L64
	ldr	r3, .L67
.LPIC7:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L67+4
.LPIC8:
	add	r3, pc
	mov	r1, r3
	movs	r2, #233
	ldr	r3, .L67+8
.LPIC9:
	add	r3, pc
	bl	__assert_fail(PLT)
.L64:
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
.L68:
	.align	2
.L67:
	.word	.LC0-(.LPIC7+4)
	.word	.LC1-(.LPIC8+4)
	.word	_ZZN11SQObjectPtrC1EP11SQGeneratorE19__PRETTY_FUNCTION__-(.LPIC9+4)
	.cantunwind
	.fnend
	.size	_ZN11SQObjectPtrC2EP11SQGenerator, .-_ZN11SQObjectPtrC2EP11SQGenerator
	.weak	_ZN11SQObjectPtrC1EP11SQGenerator
	.thumb_set _ZN11SQObjectPtrC1EP11SQGenerator,_ZN11SQObjectPtrC2EP11SQGenerator
	.section	.text._ZN11SQObjectPtraSEP11SQGenerator,"axG",%progbits,_ZN11SQObjectPtraSEP11SQGenerator,comdat
	.align	2
	.weak	_ZN11SQObjectPtraSEP11SQGenerator
	.thumb
	.thumb_func
	.type	_ZN11SQObjectPtraSEP11SQGenerator, %function
_ZN11SQObjectPtraSEP11SQGenerator:
	.fnstart
.LFB80:
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
	mov	r3, #1024
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
	beq	.L70
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L70
	movs	r3, #1
	b	.L71
.L70:
	movs	r3, #0
.L71:
	cmp	r3, #0
	beq	.L72
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	mov	r0, r2
	blx	r3
.L72:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQObjectPtraSEP11SQGenerator, .-_ZN11SQObjectPtraSEP11SQGenerator
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
	bne	.L75
	ldr	r3, .L78
.LPIC10:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L78+4
.LPIC11:
	add	r3, pc
	mov	r1, r3
	movs	r2, #234
	ldr	r3, .L78+8
.LPIC12:
	add	r3, pc
	bl	__assert_fail(PLT)
.L75:
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
.L79:
	.align	2
.L78:
	.word	.LC0-(.LPIC10+4)
	.word	.LC1-(.LPIC11+4)
	.word	_ZZN11SQObjectPtrC1EP8SQStringE19__PRETTY_FUNCTION__-(.LPIC12+4)
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
	beq	.L81
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L81
	movs	r3, #1
	b	.L82
.L81:
	movs	r3, #0
.L82:
	cmp	r3, #0
	beq	.L83
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	mov	r0, r2
	blx	r3
.L83:
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
	beq	.L89
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L89
	movs	r3, #1
	b	.L90
.L89:
	movs	r3, #0
.L90:
	cmp	r3, #0
	beq	.L91
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #4]
	mov	r0, r2
	blx	r3
.L91:
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
	beq	.L94
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L94
	movs	r3, #1
	b	.L95
.L94:
	movs	r3, #0
.L95:
	cmp	r3, #0
	beq	.L96
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #4]
	mov	r0, r2
	blx	r3
.L96:
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
	beq	.L99
	movs	r3, #1
	b	.L100
.L99:
	movs	r3, #0
.L100:
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
	.section	.text._ZN11SQObjectPtraSEb,"axG",%progbits,_ZN11SQObjectPtraSEb,comdat
	.align	2
	.weak	_ZN11SQObjectPtraSEb
	.thumb
	.thumb_func
	.type	_ZN11SQObjectPtraSEb, %function
_ZN11SQObjectPtraSEb:
	.fnstart
.LFB116:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r3, r3, #134217728
	cmp	r3, #0
	beq	.L104
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L104
	movs	r3, #1
	b	.L105
.L104:
	movs	r3, #0
.L105:
	cmp	r3, #0
	beq	.L106
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #4]
	mov	r0, r2
	blx	r3
.L106:
	ldr	r2, [r7, #4]
	movs	r3, #8
	movt	r3, 256
	str	r3, [r2]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L107
	movs	r3, #1
	b	.L108
.L107:
	movs	r3, #0
.L108:
	ldr	r2, [r7, #4]
	str	r3, [r2, #4]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQObjectPtraSEb, .-_ZN11SQObjectPtraSEb
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
	beq	.L111
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L111
	movs	r3, #1
	b	.L112
.L111:
	movs	r3, #0
.L112:
	cmp	r3, #0
	beq	.L113
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #4]
	mov	r0, r2
	blx	r3
.L113:
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
	beq	.L116
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #4]
	adds	r2, r2, #1
	str	r2, [r3, #4]
.L116:
	ldr	r3, [r7, #12]
	and	r3, r3, #134217728
	cmp	r3, #0
	beq	.L117
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L117
	movs	r3, #1
	b	.L118
.L117:
	movs	r3, #0
.L118:
	cmp	r3, #0
	beq	.L119
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	mov	r0, r2
	blx	r3
.L119:
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
	beq	.L122
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #4]
	adds	r2, r2, #1
	str	r2, [r3, #4]
.L122:
	ldr	r3, [r7, #12]
	and	r3, r3, #134217728
	cmp	r3, #0
	beq	.L123
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L123
	movs	r3, #1
	b	.L124
.L123:
	movs	r3, #0
.L124:
	cmp	r3, #0
	beq	.L125
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	mov	r0, r2
	blx	r3
.L125:
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
	beq	.L127
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	mov	r0, r2
	blx	r3
.L127:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQObjectPtr4NullEv, .-_ZN11SQObjectPtr4NullEv
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
	.section	.text._ZN15SQExceptionTrapC2EiiP13SQInstructioni,"axG",%progbits,_ZN15SQExceptionTrapC5EiiP13SQInstructioni,comdat
	.align	2
	.weak	_ZN15SQExceptionTrapC2EiiP13SQInstructioni
	.thumb
	.thumb_func
	.type	_ZN15SQExceptionTrapC2EiiP13SQInstructioni, %function
_ZN15SQExceptionTrapC2EiiP13SQInstructioni:
	.fnstart
.LFB137:
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #24]
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN15SQExceptionTrapC2EiiP13SQInstructioni, .-_ZN15SQExceptionTrapC2EiiP13SQInstructioni
	.weak	_ZN15SQExceptionTrapC1EiiP13SQInstructioni
	.thumb_set _ZN15SQExceptionTrapC1EiiP13SQInstructioni,_ZN15SQExceptionTrapC2EiiP13SQInstructioni
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
	.section	.text._ZN4SQVM7GetTypeEv,"axG",%progbits,_ZN4SQVM7GetTypeEv,comdat
	.align	2
	.weak	_ZN4SQVM7GetTypeEv
	.thumb
	.thumb_func
	.type	_ZN4SQVM7GetTypeEv, %function
_ZN4SQVM7GetTypeEv:
	.fnstart
.LFB142:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, #4096
	movt	r3, 2048
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN4SQVM7GetTypeEv, .-_ZN4SQVM7GetTypeEv
	.section	.text._ZN4SQVM8CallInfoC2Ev,"axG",%progbits,_ZN4SQVM8CallInfoC5Ev,comdat
	.align	2
	.weak	_ZN4SQVM8CallInfoC2Ev
	.thumb
	.thumb_func
	.type	_ZN4SQVM8CallInfoC2Ev, %function
_ZN4SQVM8CallInfoC2Ev:
	.fnstart
.LFB145:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	adds	r3, r3, #8
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
	.size	_ZN4SQVM8CallInfoC2Ev, .-_ZN4SQVM8CallInfoC2Ev
	.weak	_ZN4SQVM8CallInfoC1Ev
	.thumb_set _ZN4SQVM8CallInfoC1Ev,_ZN4SQVM8CallInfoC2Ev
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
	.section	.text._ZN4SQVM13GrowCallStackEv,"axG",%progbits,_ZN4SQVM13GrowCallStackEv,comdat
	.align	2
	.weak	_ZN4SQVM13GrowCallStackEv
	.thumb
	.thumb_func
	.type	_ZN4SQVM13GrowCallStackEv, %function
_ZN4SQVM13GrowCallStackEv:
	.fnstart
.LFB143:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #56
	sub	sp, sp, #56
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #104]
	lsls	r3, r3, #1
	str	r3, [r7, #52]
	ldr	r3, [r7, #4]
	add	r5, r3, #108
	ldr	r4, [r7, #52]
	movs	r3, #0
	str	r3, [r7, #8]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #40]
	movs	r3, #0
	str	r3, [r7, #44]
	movs	r3, #0
	str	r3, [r7, #48]
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN4SQVM8CallInfoC1Ev(PLT)
	add	r3, r7, #8
	mov	r0, r5
	mov	r1, r4
	mov	r2, r3
.LEHB0:
	bl	_ZN8sqvectorIN4SQVM8CallInfoEE6resizeEjRKS1_(PLT)
.LEHE0:
	add	r3, r7, #8
	mov	r0, r3
.LEHB1:
	bl	_ZN4SQVM8CallInfoD1Ev(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #108
	mov	r0, r3
	movs	r1, #0
	bl	_ZNK8sqvectorIN4SQVM8CallInfoEEixEj(PLT)
.LEHE1:
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #96]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #52]
	str	r2, [r3, #104]
	b	.L149
.L148:
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN4SQVM8CallInfoD1Ev(PLT)
.LEHB2:
	bl	__cxa_end_cleanup(PLT)
.LEHE2:
.L149:
	adds	r7, r7, #56
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.global	__gxx_personality_v0
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA143:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE143-.LLSDACSB143
.LLSDACSB143:
	.uleb128 .LEHB0-.LFB143
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L148-.LFB143
	.uleb128 0
	.uleb128 .LEHB1-.LFB143
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB2-.LFB143
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE143:
	.section	.text._ZN4SQVM13GrowCallStackEv,"axG",%progbits,_ZN4SQVM13GrowCallStackEv,comdat
	.fnend
	.size	_ZN4SQVM13GrowCallStackEv, .-_ZN4SQVM13GrowCallStackEv
	.section	.text._ZN4SQVM7ReleaseEv,"axG",%progbits,_ZN4SQVM7ReleaseEv,comdat
	.align	2
	.weak	_ZN4SQVM7ReleaseEv
	.thumb
	.thumb_func
	.type	_ZN4SQVM7ReleaseEv, %function
_ZN4SQVM7ReleaseEv:
	.fnstart
.LFB150:
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
	movs	r1, #168
	bl	_Z10sq_vm_freePvj(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN4SQVM7ReleaseEv, .-_ZN4SQVM7ReleaseEv
	.section	.text._ZN7AutoDecC2EPi,"axG",%progbits,_ZN7AutoDecC5EPi,comdat
	.align	2
	.weak	_ZN7AutoDecC2EPi
	.thumb
	.thumb_func
	.type	_ZN7AutoDecC2EPi, %function
_ZN7AutoDecC2EPi:
	.fnstart
.LFB152:
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
	str	r2, [r3]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN7AutoDecC2EPi, .-_ZN7AutoDecC2EPi
	.weak	_ZN7AutoDecC1EPi
	.thumb_set _ZN7AutoDecC1EPi,_ZN7AutoDecC2EPi
	.section	.text._ZN7AutoDecD2Ev,"axG",%progbits,_ZN7AutoDecD5Ev,comdat
	.align	2
	.weak	_ZN7AutoDecD2Ev
	.thumb
	.thumb_func
	.type	_ZN7AutoDecD2Ev, %function
_ZN7AutoDecD2Ev:
	.fnstart
.LFB155:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	subs	r2, r2, #1
	str	r2, [r3]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN7AutoDecD2Ev, .-_ZN7AutoDecD2Ev
	.weak	_ZN7AutoDecD1Ev
	.thumb_set _ZN7AutoDecD1Ev,_ZN7AutoDecD2Ev
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
	ldr	r4, .L160
.LPIC13:
	add	r4, pc
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN12SQRefCountedC2Ev(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, .L160+4
	ldr	r2, [r4, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L161:
	.align	2
.L160:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC13+4)
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
	ldr	r1, .L166
.LPIC14:
	add	r1, pc
	ldr	r3, [r7, #4]
	ldr	r2, .L166+4
	ldr	r2, [r1, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN12SQRefCountedD2Ev(PLT)
	movs	r3, #0
	cmp	r3, #0
	beq	.L164
	ldr	r0, [r7, #4]
	bl	_ZdlPv(PLT)
.L164:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L167:
	.align	2
.L166:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC14+4)
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
	.section	.text._ZN9SQClosureC2EP13SQSharedStateP15SQFunctionProto,"axG",%progbits,_ZN9SQClosureC5EP13SQSharedStateP15SQFunctionProto,comdat
	.align	2
	.weak	_ZN9SQClosureC2EP13SQSharedStateP15SQFunctionProto
	.thumb
	.thumb_func
	.type	_ZN9SQClosureC2EP13SQSharedStateP15SQFunctionProto, %function
_ZN9SQClosureC2EP13SQSharedStateP15SQFunctionProto:
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
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r4, .L177
.LPIC15:
	add	r4, pc
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	_ZN13SQCollectableC2Ev(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, .L177+4
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
.LEHB3:
	bl	_ZN13SQCollectable10AddToChainEPPS_S0_(PLT)
.LEHE3:
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #12]
	b	.L176
.L175:
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	_ZN13SQCollectableD2Ev(PLT)
.LEHB4:
	bl	__cxa_end_cleanup(PLT)
.LEHE4:
.L176:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L178:
	.align	2
.L177:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC15+4)
	.word	_ZTV9SQClosure(GOT)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA191:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE191-.LLSDACSB191
.LLSDACSB191:
	.uleb128 .LEHB3-.LFB191
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L175-.LFB191
	.uleb128 0
	.uleb128 .LEHB4-.LFB191
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE191:
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
.LFB193:
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
.LEHB5:
	bl	_Z12sq_vm_mallocj(PLT)
.LEHE5:
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r5, [r7, #8]
	movs	r0, #44
	mov	r1, r5
	bl	_ZnwjPv(PLT)
	mov	r4, r0
	cmp	r4, #0
	beq	.L181
	mov	r0, r4
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
.LEHB6:
	bl	_ZN9SQClosureC1EP13SQSharedStateP15SQFunctionProto(PLT)
.LEHE6:
.L181:
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
	b	.L182
.L185:
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
	beq	.L184
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
.L184:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L182:
	ldr	r3, [r7]
	ldr	r2, [r3, #92]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bgt	.L185
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L186
.L189:
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
	beq	.L188
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
.L188:
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L186:
	ldr	r3, [r7]
	ldr	r2, [r3, #100]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bgt	.L189
	ldr	r3, [r7, #8]
	b	.L193
.L192:
	mov	r0, r4
	mov	r1, r5
	bl	_ZdlPvS_(PLT)
.LEHB7:
	bl	__cxa_end_cleanup(PLT)
.LEHE7:
.L193:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA193:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE193-.LLSDACSB193
.LLSDACSB193:
	.uleb128 .LEHB5-.LFB193
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB193
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L192-.LFB193
	.uleb128 0
	.uleb128 .LEHB7-.LFB193
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSE193:
	.section	.text._ZN9SQClosure6CreateEP13SQSharedStateP15SQFunctionProto,"axG",%progbits,_ZN9SQClosure6CreateEP13SQSharedStateP15SQFunctionProto,comdat
	.fnend
	.size	_ZN9SQClosure6CreateEP13SQSharedStateP15SQFunctionProto, .-_ZN9SQClosure6CreateEP13SQSharedStateP15SQFunctionProto
	.section	.text._ZN7SQOuterC2EP13SQSharedStateP11SQObjectPtr,"axG",%progbits,_ZN7SQOuterC5EP13SQSharedStateP11SQObjectPtr,comdat
	.align	2
	.weak	_ZN7SQOuterC2EP13SQSharedStateP11SQObjectPtr
	.thumb
	.thumb_func
	.type	_ZN7SQOuterC2EP13SQSharedStateP11SQObjectPtr, %function
_ZN7SQOuterC2EP13SQSharedStateP11SQObjectPtr:
	.fnstart
.LFB199:
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
	ldr	r4, .L200
.LPIC16:
	add	r4, pc
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	_ZN13SQCollectableC2Ev(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, .L200+4
	ldr	r2, [r4, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #32
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #40]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #40]
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
.LEHB8:
	bl	_ZN13SQCollectable10AddToChainEPPS_S0_(PLT)
.LEHE8:
	ldr	r3, [r7, #12]
	b	.L199
.L198:
	ldr	r3, [r7, #12]
	adds	r3, r3, #32
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	_ZN13SQCollectableD2Ev(PLT)
.LEHB9:
	bl	__cxa_end_cleanup(PLT)
.LEHE9:
.L199:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L201:
	.align	2
.L200:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC16+4)
	.word	_ZTV7SQOuter(GOT)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA199:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE199-.LLSDACSB199
.LLSDACSB199:
	.uleb128 .LEHB8-.LFB199
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L198-.LFB199
	.uleb128 0
	.uleb128 .LEHB9-.LFB199
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
.LLSDACSE199:
	.section	.text._ZN7SQOuterC2EP13SQSharedStateP11SQObjectPtr,"axG",%progbits,_ZN7SQOuterC5EP13SQSharedStateP11SQObjectPtr,comdat
	.fnend
	.size	_ZN7SQOuterC2EP13SQSharedStateP11SQObjectPtr, .-_ZN7SQOuterC2EP13SQSharedStateP11SQObjectPtr
	.weak	_ZN7SQOuterC1EP13SQSharedStateP11SQObjectPtr
	.thumb_set _ZN7SQOuterC1EP13SQSharedStateP11SQObjectPtr,_ZN7SQOuterC2EP13SQSharedStateP11SQObjectPtr
	.section	.text._ZN7SQOuter6CreateEP13SQSharedStateP11SQObjectPtr,"axG",%progbits,_ZN7SQOuter6CreateEP13SQSharedStateP11SQObjectPtr,comdat
	.align	2
	.weak	_ZN7SQOuter6CreateEP13SQSharedStateP11SQObjectPtr
	.thumb
	.thumb_func
	.type	_ZN7SQOuter6CreateEP13SQSharedStateP11SQObjectPtr, %function
_ZN7SQOuter6CreateEP13SQSharedStateP11SQObjectPtr:
	.fnstart
.LFB201:
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
.LEHB10:
	bl	_Z12sq_vm_mallocj(PLT)
.LEHE10:
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r5, [r7, #12]
	movs	r0, #44
	mov	r1, r5
	bl	_ZnwjPv(PLT)
	mov	r4, r0
	cmp	r4, #0
	beq	.L204
	mov	r0, r4
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
.LEHB11:
	bl	_ZN7SQOuterC1EP13SQSharedStateP11SQObjectPtr(PLT)
.LEHE11:
.L204:
	ldr	r3, [r7, #12]
	b	.L208
.L207:
	mov	r0, r4
	mov	r1, r5
	bl	_ZdlPvS_(PLT)
.LEHB12:
	bl	__cxa_end_cleanup(PLT)
.LEHE12:
.L208:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA201:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE201-.LLSDACSB201
.LLSDACSB201:
	.uleb128 .LEHB10-.LFB201
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB11-.LFB201
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L207-.LFB201
	.uleb128 0
	.uleb128 .LEHB12-.LFB201
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
.LLSDACSE201:
	.section	.text._ZN7SQOuter6CreateEP13SQSharedStateP11SQObjectPtr,"axG",%progbits,_ZN7SQOuter6CreateEP13SQSharedStateP11SQObjectPtr,comdat
	.fnend
	.size	_ZN7SQOuter6CreateEP13SQSharedStateP11SQObjectPtr, .-_ZN7SQOuter6CreateEP13SQSharedStateP11SQObjectPtr
	.section	.text._ZN11SQGeneratorC2EP13SQSharedStateP9SQClosure,"axG",%progbits,_ZN11SQGeneratorC5EP13SQSharedStateP9SQClosure,comdat
	.align	2
	.weak	_ZN11SQGeneratorC2EP13SQSharedStateP9SQClosure
	.thumb
	.thumb_func
	.type	_ZN11SQGeneratorC2EP13SQSharedStateP9SQClosure, %function
_ZN11SQGeneratorC2EP13SQSharedStateP9SQClosure:
	.fnstart
.LFB210:
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
	ldr	r4, .L219
.LPIC17:
	add	r4, pc
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	_ZN13SQCollectableC2Ev(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, .L219+4
	ldr	r2, [r4, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #24
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #32
	mov	r0, r3
.LEHB13:
	bl	_ZN8sqvectorI11SQObjectPtrEC1Ev(PLT)
.LEHE13:
	ldr	r3, [r7, #12]
	adds	r3, r3, #44
	mov	r0, r3
	bl	_ZN4SQVM8CallInfoC1Ev(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #88
	mov	r0, r3
.LEHB14:
	bl	_ZN8sqvectorI15SQExceptionTrapEC1Ev(PLT)
.LEHE14:
	ldr	r3, [r7, #12]
	adds	r3, r3, #24
	mov	r0, r3
	ldr	r1, [r7, #4]
.LEHB15:
	bl	_ZN11SQObjectPtraSEP9SQClosure(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #100]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #60]
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
.LEHE15:
	ldr	r3, [r7, #12]
	b	.L218
.L217:
	ldr	r3, [r7, #12]
	adds	r3, r3, #88
	mov	r0, r3
	bl	_ZN8sqvectorI15SQExceptionTrapED1Ev(PLT)
	b	.L213
.L216:
.L213:
	ldr	r3, [r7, #12]
	adds	r3, r3, #44
	mov	r0, r3
	bl	_ZN4SQVM8CallInfoD1Ev(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #32
	mov	r0, r3
	bl	_ZN8sqvectorI11SQObjectPtrED1Ev(PLT)
	b	.L214
.L215:
.L214:
	ldr	r3, [r7, #12]
	adds	r3, r3, #24
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	_ZN13SQCollectableD2Ev(PLT)
.LEHB16:
	bl	__cxa_end_cleanup(PLT)
.LEHE16:
.L218:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L220:
	.align	2
.L219:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC17+4)
	.word	_ZTV11SQGenerator(GOT)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA210:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE210-.LLSDACSB210
.LLSDACSB210:
	.uleb128 .LEHB13-.LFB210
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L215-.LFB210
	.uleb128 0
	.uleb128 .LEHB14-.LFB210
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L216-.LFB210
	.uleb128 0
	.uleb128 .LEHB15-.LFB210
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L217-.LFB210
	.uleb128 0
	.uleb128 .LEHB16-.LFB210
	.uleb128 .LEHE16-.LEHB16
	.uleb128 0
	.uleb128 0
.LLSDACSE210:
	.section	.text._ZN11SQGeneratorC2EP13SQSharedStateP9SQClosure,"axG",%progbits,_ZN11SQGeneratorC5EP13SQSharedStateP9SQClosure,comdat
	.fnend
	.size	_ZN11SQGeneratorC2EP13SQSharedStateP9SQClosure, .-_ZN11SQGeneratorC2EP13SQSharedStateP9SQClosure
	.weak	_ZN11SQGeneratorC1EP13SQSharedStateP9SQClosure
	.thumb_set _ZN11SQGeneratorC1EP13SQSharedStateP9SQClosure,_ZN11SQGeneratorC2EP13SQSharedStateP9SQClosure
	.section	.text._ZN11SQGenerator6CreateEP13SQSharedStateP9SQClosure,"axG",%progbits,_ZN11SQGenerator6CreateEP13SQSharedStateP9SQClosure,comdat
	.align	2
	.weak	_ZN11SQGenerator6CreateEP13SQSharedStateP9SQClosure
	.thumb
	.thumb_func
	.type	_ZN11SQGenerator6CreateEP13SQSharedStateP9SQClosure, %function
_ZN11SQGenerator6CreateEP13SQSharedStateP9SQClosure:
	.fnstart
.LFB212:
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
	movs	r0, #104
.LEHB17:
	bl	_Z12sq_vm_mallocj(PLT)
.LEHE17:
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r5, [r7, #12]
	movs	r0, #104
	mov	r1, r5
	bl	_ZnwjPv(PLT)
	mov	r4, r0
	cmp	r4, #0
	beq	.L223
	mov	r0, r4
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
.LEHB18:
	bl	_ZN11SQGeneratorC1EP13SQSharedStateP9SQClosure(PLT)
.LEHE18:
.L223:
	ldr	r3, [r7, #12]
	b	.L227
.L226:
	mov	r0, r4
	mov	r1, r5
	bl	_ZdlPvS_(PLT)
.LEHB19:
	bl	__cxa_end_cleanup(PLT)
.LEHE19:
.L227:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA212:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE212-.LLSDACSB212
.LLSDACSB212:
	.uleb128 .LEHB17-.LFB212
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB18-.LFB212
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L226-.LFB212
	.uleb128 0
	.uleb128 .LEHB19-.LFB212
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
.LLSDACSE212:
	.section	.text._ZN11SQGenerator6CreateEP13SQSharedStateP9SQClosure,"axG",%progbits,_ZN11SQGenerator6CreateEP13SQSharedStateP9SQClosure,comdat
	.fnend
	.size	_ZN11SQGenerator6CreateEP13SQSharedStateP9SQClosure, .-_ZN11SQGenerator6CreateEP13SQSharedStateP9SQClosure
	.section	.text._ZN11SQGenerator4KillEv,"axG",%progbits,_ZN11SQGenerator4KillEv,comdat
	.align	2
	.weak	_ZN11SQGenerator4KillEv
	.thumb
	.thumb_func
	.type	_ZN11SQGenerator4KillEv, %function
_ZN11SQGenerator4KillEv:
	.fnstart
.LFB217:
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
	movs	r2, #2
	str	r2, [r3, #100]
	ldr	r3, [r7, #4]
	add	r4, r3, #32
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	add	r3, r7, #8
	mov	r0, r4
	movs	r1, #0
	mov	r2, r3
.LEHB20:
	bl	_ZN8sqvectorI11SQObjectPtrE6resizeEjRKS0_(PLT)
.LEHE20:
	add	r3, r7, #8
	mov	r0, r3
.LEHB21:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
.LEHE21:
	b	.L231
.L230:
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB22:
	bl	__cxa_end_cleanup(PLT)
.LEHE22:
.L231:
	adds	r7, r7, #20
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
	.uleb128 .LEHB20-.LFB217
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L230-.LFB217
	.uleb128 0
	.uleb128 .LEHB21-.LFB217
	.uleb128 .LEHE21-.LEHB21
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB22-.LFB217
	.uleb128 .LEHE22-.LEHB22
	.uleb128 0
	.uleb128 0
.LLSDACSE217:
	.section	.text._ZN11SQGenerator4KillEv,"axG",%progbits,_ZN11SQGenerator4KillEv,comdat
	.fnend
	.size	_ZN11SQGenerator4KillEv, .-_ZN11SQGenerator4KillEv
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
.LEHB23:
	bl	_Z12sq_vm_mallocj(PLT)
.LEHE23:
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r5, [r7, #12]
	movs	r0, #44
	mov	r1, r5
	bl	_ZnwjPv(PLT)
	mov	r4, r0
	cmp	r4, #0
	beq	.L234
	mov	r0, r4
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
.LEHB24:
	bl	_ZN7SQTableC1EP13SQSharedStatei(PLT)
.LEHE24:
.L234:
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #12]
	b	.L238
.L237:
	mov	r0, r4
	mov	r1, r5
	bl	_ZdlPvS_(PLT)
.LEHB25:
	bl	__cxa_end_cleanup(PLT)
.LEHE25:
.L238:
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
	.uleb128 .LEHB23-.LFB245
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB24-.LFB245
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L237-.LFB245
	.uleb128 0
	.uleb128 .LEHB25-.LFB245
	.uleb128 .LEHE25-.LEHB25
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
.LFB276:
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
	ldr	r4, .L249
.LPIC18:
	add	r4, pc
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	_ZN13SQCollectableC2Ev(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, .L249+4
	ldr	r2, [r4, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #24
	mov	r0, r3
.LEHB26:
	bl	_ZN8sqvectorI11SQObjectPtrEC1Ev(PLT)
.LEHE26:
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
.LEHB27:
	bl	_ZN8sqvectorI11SQObjectPtrE6resizeEjRKS0_(PLT)
.LEHE27:
	add	r3, r7, #16
	mov	r0, r3
.LEHB28:
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
.LEHE28:
	ldr	r3, [r7, #12]
	b	.L248
.L247:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L243
.L246:
.L243:
	ldr	r3, [r7, #12]
	adds	r3, r3, #24
	mov	r0, r3
	bl	_ZN8sqvectorI11SQObjectPtrED1Ev(PLT)
	b	.L244
.L245:
.L244:
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	_ZN13SQCollectableD2Ev(PLT)
.LEHB29:
	bl	__cxa_end_cleanup(PLT)
.LEHE29:
.L248:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L250:
	.align	2
.L249:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC18+4)
	.word	_ZTV7SQArray(GOT)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA276:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE276-.LLSDACSB276
.LLSDACSB276:
	.uleb128 .LEHB26-.LFB276
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L245-.LFB276
	.uleb128 0
	.uleb128 .LEHB27-.LFB276
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L247-.LFB276
	.uleb128 0
	.uleb128 .LEHB28-.LFB276
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L246-.LFB276
	.uleb128 0
	.uleb128 .LEHB29-.LFB276
	.uleb128 .LEHE29-.LEHB29
	.uleb128 0
	.uleb128 0
.LLSDACSE276:
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
.LFB282:
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
.LEHB30:
	bl	_Z12sq_vm_mallocj(PLT)
.LEHE30:
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r5, [r7, #12]
	movs	r0, #36
	mov	r1, r5
	bl	_ZnwjPv(PLT)
	mov	r4, r0
	cmp	r4, #0
	beq	.L253
	mov	r0, r4
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
.LEHB31:
	bl	_ZN7SQArrayC1EP13SQSharedStatei(PLT)
.LEHE31:
.L253:
	ldr	r3, [r7, #12]
	b	.L257
.L256:
	mov	r0, r4
	mov	r1, r5
	bl	_ZdlPvS_(PLT)
.LEHB32:
	bl	__cxa_end_cleanup(PLT)
.LEHE32:
.L257:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA282:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE282-.LLSDACSB282
.LLSDACSB282:
	.uleb128 .LEHB30-.LFB282
	.uleb128 .LEHE30-.LEHB30
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB31-.LFB282
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L256-.LFB282
	.uleb128 0
	.uleb128 .LEHB32-.LFB282
	.uleb128 .LEHE32-.LEHB32
	.uleb128 0
	.uleb128 0
.LLSDACSE282:
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
.LFB285:
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
	blt	.L259
	ldr	r3, [r7, #12]
	adds	r3, r3, #24
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4sizeEv(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #8]
	cmp	r2, r3
	ble	.L259
	movs	r3, #1
	b	.L260
.L259:
	movs	r3, #0
.L260:
	cmp	r3, #0
	beq	.L261
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
	beq	.L262
	ldr	r2, [r7, #28]
	add	r3, r7, #20
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	b	.L263
.L262:
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #4]
	add	r3, r7, #20
	adds	r2, r2, #12
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
.L263:
	add	r3, r7, #20
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERK11tagSQObject(PLT)
	movs	r3, #1
	b	.L264
.L261:
	movs	r3, #0
.L264:
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
.LFB286:
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
	blt	.L266
	ldr	r3, [r7, #12]
	adds	r3, r3, #24
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4sizeEv(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #8]
	cmp	r2, r3
	ble	.L266
	movs	r3, #1
	b	.L267
.L266:
	movs	r3, #0
.L267:
	cmp	r3, #0
	beq	.L268
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
	b	.L269
.L268:
	movs	r3, #0
.L269:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN7SQArray3SetEiRK11SQObjectPtr, .-_ZN7SQArray3SetEiRK11SQObjectPtr
	.section	.text._ZN7SQArray4NextERK11SQObjectPtrRS0_S3_,"axG",%progbits,_ZN7SQArray4NextERK11SQObjectPtrRS0_S3_,comdat
	.align	2
	.weak	_ZN7SQArray4NextERK11SQObjectPtrRS0_S3_
	.thumb
	.thumb_func
	.type	_ZN7SQArray4NextERK11SQObjectPtrRS0_S3_, %function
_ZN7SQArray4NextERK11SQObjectPtrRS0_S3_:
	.fnstart
.LFB287:
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
	ldr	r0, [r7, #8]
	bl	_Z14TranslateIndexRK11SQObjectPtr(PLT)
	mov	r3, r0
	str	r3, [r7, #28]
	nop
	ldr	r3, [r7, #12]
	adds	r3, r3, #24
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4sizeEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #28]
	cmp	r2, r3
	ite	hi
	movhi	r3, #1
	movls	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L276
	ldr	r3, [r7, #28]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEi(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #24
	mov	r0, r3
	ldr	r1, [r7, #28]
	bl	_ZNK8sqvectorI11SQObjectPtrEixEj(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	ldr	r2, [r3]
	movs	r3, #0
	movt	r3, 2049
	cmp	r2, r3
	beq	.L272
	ldr	r2, [r7, #24]
	add	r3, r7, #16
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	b	.L273
.L272:
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #4]
	add	r3, r7, #16
	adds	r2, r2, #12
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
.L273:
	add	r3, r7, #16
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERK11tagSQObject(PLT)
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	b	.L274
.L276:
	mov	r3, #-1
.L274:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN7SQArray4NextERK11SQObjectPtrRS0_S3_, .-_ZN7SQArray4NextERK11SQObjectPtrRS0_S3_
	.section	.text._ZN7SQArray5CloneEv,"axG",%progbits,_ZN7SQArray5CloneEv,comdat
	.align	2
	.weak	_ZN7SQArray5CloneEv
	.thumb
	.thumb_func
	.type	_ZN7SQArray5CloneEv, %function
_ZN7SQArray5CloneEv:
	.fnstart
.LFB288:
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
	ldr	r3, [r3, #20]
	mov	r0, r3
	movs	r1, #0
	bl	_ZN7SQArray6CreateEP13SQSharedStatei(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	add	r2, r3, #24
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	mov	r0, r2
	mov	r1, r3
	bl	_ZN8sqvectorI11SQObjectPtrE4copyERKS1_(PLT)
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN7SQArray5CloneEv, .-_ZN7SQArray5CloneEv
	.section	.text._ZN7SQArray7ReserveEi,"axG",%progbits,_ZN7SQArray7ReserveEi,comdat
	.align	2
	.weak	_ZN7SQArray7ReserveEi
	.thumb
	.thumb_func
	.type	_ZN7SQArray7ReserveEi, %function
_ZN7SQArray7ReserveEi:
	.fnstart
.LFB292:
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
	add	r2, r3, #24
	ldr	r3, [r7]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN8sqvectorI11SQObjectPtrE7reserveEj(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN7SQArray7ReserveEi, .-_ZN7SQArray7ReserveEi
	.section	.text._ZN7SQArray6AppendERK11tagSQObject,"axG",%progbits,_ZN7SQArray6AppendERK11tagSQObject,comdat
	.align	2
	.weak	_ZN7SQArray6AppendERK11tagSQObject
	.thumb
	.thumb_func
	.type	_ZN7SQArray6AppendERK11tagSQObject, %function
_ZN7SQArray6AppendERK11tagSQObject:
	.fnstart
.LFB293:
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
.LEHB33:
	bl	_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_(PLT)
.LEHE33:
	add	r3, r7, #8
	mov	r0, r3
.LEHB34:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE34:
	b	.L283
.L282:
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB35:
	bl	__cxa_end_cleanup(PLT)
.LEHE35:
.L283:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA293:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE293-.LLSDACSB293
.LLSDACSB293:
	.uleb128 .LEHB33-.LFB293
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L282-.LFB293
	.uleb128 0
	.uleb128 .LEHB34-.LFB293
	.uleb128 .LEHE34-.LEHB34
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB35-.LFB293
	.uleb128 .LEHE35-.LEHB35
	.uleb128 0
	.uleb128 0
.LLSDACSE293:
	.section	.text._ZN7SQArray6AppendERK11tagSQObject,"axG",%progbits,_ZN7SQArray6AppendERK11tagSQObject,comdat
	.fnend
	.size	_ZN7SQArray6AppendERK11tagSQObject, .-_ZN7SQArray6AppendERK11tagSQObject
	.section	.text._ZN7SQClass6CreateEP13SQSharedStatePS_,"axG",%progbits,_ZN7SQClass6CreateEP13SQSharedStatePS_,comdat
	.align	2
	.weak	_ZN7SQClass6CreateEP13SQSharedStatePS_
	.thumb
	.thumb_func
	.type	_ZN7SQClass6CreateEP13SQSharedStatePS_, %function
_ZN7SQClass6CreateEP13SQSharedStatePS_:
	.fnstart
.LFB301:
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
	beq	.L286
	mov	r0, r4
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
.LEHB37:
	bl	_ZN7SQClassC1EP13SQSharedStatePS_(PLT)
.LEHE37:
.L286:
	ldr	r3, [r7, #12]
	b	.L290
.L289:
	mov	r0, r4
	mov	r1, r5
	bl	_ZdlPvS_(PLT)
.LEHB38:
	bl	__cxa_end_cleanup(PLT)
.LEHE38:
.L290:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA301:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE301-.LLSDACSB301
.LLSDACSB301:
	.uleb128 .LEHB36-.LFB301
	.uleb128 .LEHE36-.LEHB36
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB37-.LFB301
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L289-.LFB301
	.uleb128 0
	.uleb128 .LEHB38-.LFB301
	.uleb128 .LEHE38-.LEHB38
	.uleb128 0
	.uleb128 0
.LLSDACSE301:
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
.LFB302:
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
	beq	.L292
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	and	r3, r3, #33554432
	cmp	r3, #0
	beq	.L293
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
	beq	.L294
	ldr	r2, [r7, #28]
	add	r3, r7, #20
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	b	.L295
.L294:
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #4]
	add	r3, r7, #20
	adds	r2, r2, #12
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
.L295:
	add	r3, r7, #20
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERK11tagSQObject(PLT)
	b	.L296
.L293:
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
.L296:
	movs	r3, #1
	b	.L297
.L292:
	movs	r3, #0
.L297:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN7SQClass3GetERK11SQObjectPtrRS0_, .-_ZN7SQClass3GetERK11SQObjectPtrRS0_
	.section	.text._ZN7SQClass14GetConstructorER11SQObjectPtr,"axG",%progbits,_ZN7SQClass14GetConstructorER11SQObjectPtr,comdat
	.align	2
	.weak	_ZN7SQClass14GetConstructorER11SQObjectPtr
	.thumb
	.thumb_func
	.type	_ZN7SQClass14GetConstructorER11SQObjectPtr, %function
_ZN7SQClass14GetConstructorER11SQObjectPtr:
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
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #220]
	cmp	r3, #-1
	beq	.L299
	ldr	r3, [r7, #4]
	add	r2, r3, #44
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #220]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI13SQClassMemberEixEj(PLT)
	mov	r3, r0
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	movs	r3, #1
	b	.L300
.L299:
	movs	r3, #0
.L300:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN7SQClass14GetConstructorER11SQObjectPtr, .-_ZN7SQClass14GetConstructorER11SQObjectPtr
	.section	.text._ZN10SQInstance5CloneEP13SQSharedState,"axG",%progbits,_ZN10SQInstance5CloneEP13SQSharedState,comdat
	.align	2
	.weak	_ZN10SQInstance5CloneEP13SQSharedState
	.thumb
	.thumb_func
	.type	_ZN10SQInstance5CloneEP13SQSharedState, %function
_ZN10SQInstance5CloneEP13SQSharedState:
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
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	ldr	r3, [r3, #224]
	mov	r4, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	adds	r3, r3, #32
	mov	r0, r3
.LEHB39:
	bl	_ZNK8sqvectorI13SQClassMemberE4sizeEv(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L302
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	adds	r3, r3, #32
	mov	r0, r3
	bl	_ZNK8sqvectorI13SQClassMemberE4sizeEv(PLT)
	mov	r3, r0
	subs	r3, r3, #1
	b	.L303
.L302:
	movs	r3, #0
.L303:
	lsls	r3, r3, #3
	adds	r3, r3, #52
	adds	r3, r3, #3
	bic	r3, r3, #3
	add	r3, r3, r4
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	_Z12sq_vm_mallocj(PLT)
.LEHE39:
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r5, [r7, #8]
	movs	r0, #52
	mov	r1, r5
	bl	_ZnwjPv(PLT)
	mov	r4, r0
	cmp	r4, #0
	beq	.L305
	mov	r0, r4
	ldr	r1, [r7]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #12]
.LEHB40:
	bl	_ZN10SQInstanceC1EP13SQSharedStatePS_i(PLT)
.LEHE40:
.L305:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	ldr	r3, [r3, #224]
	cmp	r3, #0
	beq	.L306
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	ldr	r3, [r3, #224]
	ldr	r2, [r7, #12]
	subs	r3, r2, r3
	ldr	r2, [r7, #8]
	add	r2, r2, r3
	ldr	r3, [r7, #8]
	str	r2, [r3, #32]
.L306:
	ldr	r3, [r7, #8]
	b	.L310
.L309:
	mov	r0, r4
	mov	r1, r5
	bl	_ZdlPvS_(PLT)
.LEHB41:
	bl	__cxa_end_cleanup(PLT)
.LEHE41:
.L310:
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
	.uleb128 .LEHB39-.LFB308
	.uleb128 .LEHE39-.LEHB39
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB40-.LFB308
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L309-.LFB308
	.uleb128 0
	.uleb128 .LEHB41-.LFB308
	.uleb128 .LEHE41-.LEHB41
	.uleb128 0
	.uleb128 0
.LLSDACSE308:
	.section	.text._ZN10SQInstance5CloneEP13SQSharedState,"axG",%progbits,_ZN10SQInstance5CloneEP13SQSharedState,comdat
	.fnend
	.size	_ZN10SQInstance5CloneEP13SQSharedState, .-_ZN10SQInstance5CloneEP13SQSharedState
	.section	.text._ZN10SQInstance3GetERK11SQObjectPtrRS0_,"axG",%progbits,_ZN10SQInstance3GetERK11SQObjectPtrRS0_,comdat
	.align	2
	.weak	_ZN10SQInstance3GetERK11SQObjectPtrRS0_
	.thumb
	.thumb_func
	.type	_ZN10SQInstance3GetERK11SQObjectPtrRS0_, %function
_ZN10SQInstance3GetERK11SQObjectPtrRS0_:
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
	ldr	r3, [r3, #28]
	ldr	r3, [r3, #24]
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	_ZN7SQTable3GetERK11SQObjectPtrRS0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L312
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	and	r3, r3, #33554432
	cmp	r3, #0
	beq	.L313
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
	beq	.L314
	ldr	r2, [r7, #28]
	add	r3, r7, #20
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	b	.L315
.L314:
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #4]
	add	r3, r7, #20
	adds	r2, r2, #12
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
.L315:
	add	r3, r7, #20
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERK11tagSQObject(PLT)
	b	.L316
.L313:
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
.L316:
	movs	r3, #1
	b	.L317
.L312:
	movs	r3, #0
.L317:
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
.LFB310:
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
.LEHB42:
	bl	_ZN7SQTable3GetERK11SQObjectPtrRS0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L319
	ldr	r3, [r7, #20]
	and	r3, r3, #33554432
	cmp	r3, #0
	beq	.L319
	movs	r3, #1
	b	.L320
.L319:
	movs	r3, #0
.L320:
	cmp	r3, #0
	beq	.L321
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
.LEHE42:
	movs	r4, #1
	b	.L322
.L321:
	movs	r4, #0
.L322:
	add	r3, r7, #16
	mov	r0, r3
.LEHB43:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE43:
	mov	r3, r4
	b	.L326
.L325:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB44:
	bl	__cxa_end_cleanup(PLT)
.LEHE44:
.L326:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA310:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE310-.LLSDACSB310
.LLSDACSB310:
	.uleb128 .LEHB42-.LFB310
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L325-.LFB310
	.uleb128 0
	.uleb128 .LEHB43-.LFB310
	.uleb128 .LEHE43-.LEHB43
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB44-.LFB310
	.uleb128 .LEHE44-.LEHB44
	.uleb128 0
	.uleb128 0
.LLSDACSE310:
	.section	.text._ZN10SQInstance3SetERK11SQObjectPtrS2_,"axG",%progbits,_ZN10SQInstance3SetERK11SQObjectPtrS2_,comdat
	.fnend
	.size	_ZN10SQInstance3SetERK11SQObjectPtrS2_, .-_ZN10SQInstance3SetERK11SQObjectPtrS2_
	.section	.rodata
	.align	2
.LC2:
	.ascii	"internal vm error bitwise op failed\000"
	.align	2
.LC3:
	.ascii	"bitwise op between '%s' and '%s'\000"
	.section	.text._ZN4SQVM5BW_OPEjR11SQObjectPtrRKS0_S3_,"ax",%progbits
	.align	2
	.global	_ZN4SQVM5BW_OPEjR11SQObjectPtrRKS0_S3_
	.thumb
	.thumb_func
	.type	_ZN4SQVM5BW_OPEjR11SQObjectPtrRKS0_S3_, %function
_ZN4SQVM5BW_OPEjR11SQObjectPtrRKS0_S3_:
	.fnstart
.LFB313:
	@ args = 4, pretend = 0, frame = 32
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
	ldr	r3, [r7]
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7, #48]
	ldr	r3, [r3]
	orrs	r2, r2, r3
	movs	r3, #2
	movt	r3, 1280
	cmp	r2, r3
	bne	.L328
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	str	r3, [r7, #20]
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #4]
	str	r3, [r7, #24]
	ldr	r3, [r7, #8]
	cmp	r3, #6
	bhi	.L329
	adr	r1, .L331
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L331:
	.word	.L330+1-.L331
	.word	.L329+1-.L331
	.word	.L332+1-.L331
	.word	.L333+1-.L331
	.word	.L334+1-.L331
	.word	.L335+1-.L331
	.word	.L336+1-.L331
.L330:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #24]
	ands	r3, r3, r2
	str	r3, [r7, #28]
	b	.L337
.L332:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #24]
	orrs	r3, r3, r2
	str	r3, [r7, #28]
	b	.L337
.L333:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #24]
	eors	r3, r3, r2
	str	r3, [r7, #28]
	b	.L337
.L334:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #24]
	lsl	r3, r2, r3
	str	r3, [r7, #28]
	b	.L337
.L335:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #24]
	asr	r3, r2, r3
	str	r3, [r7, #28]
	b	.L337
.L336:
	add	r3, r7, #20
	ldr	r2, [r3]
	ldr	r3, [r7, #24]
	lsr	r3, r2, r3
	str	r3, [r7, #28]
	b	.L337
.L329:
	ldr	r0, [r7, #12]
	ldr	r3, .L340
.LPIC19:
	add	r3, pc
	mov	r1, r3
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
	movs	r3, #0
	b	.L338
.L337:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #28]
	bl	_ZN11SQObjectPtraSEi(PLT)
	movs	r3, #1
	b	.L338
.L328:
	ldr	r0, [r7]
	bl	_Z11GetTypeNameRK11SQObjectPtr(PLT)
	mov	r4, r0
	ldr	r0, [r7, #48]
	bl	_Z11GetTypeNameRK11SQObjectPtr(PLT)
	mov	r3, r0
	ldr	r0, [r7, #12]
	ldr	r2, .L340+4
.LPIC20:
	add	r2, pc
	mov	r1, r2
	mov	r2, r4
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
	movs	r3, #0
.L338:
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L341:
	.align	2
.L340:
	.word	.LC2-(.LPIC19+4)
	.word	.LC3-(.LPIC20+4)
	.fnend
	.size	_ZN4SQVM5BW_OPEjR11SQObjectPtrRKS0_S3_, .-_ZN4SQVM5BW_OPEjR11SQObjectPtrRKS0_S3_
	.section	.rodata
	.align	2
.LC4:
	.ascii	"division by zero\000"
	.global	__aeabi_idiv
	.align	2
.LC5:
	.ascii	"modulo by zero\000"
	.global	__aeabi_idivmod
	.section	.text._ZN4SQVM8ARITH_OPEjR11SQObjectPtrRKS0_S3_,"ax",%progbits
	.align	2
	.global	_ZN4SQVM8ARITH_OPEjR11SQObjectPtrRKS0_S3_
	.thumb
	.thumb_func
	.type	_ZN4SQVM8ARITH_OPEjR11SQObjectPtrRKS0_S3_, %function
_ZN4SQVM8ARITH_OPEjR11SQObjectPtrRKS0_S3_:
	.fnstart
.LFB314:
	@ args = 4, pretend = 0, frame = 48
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
	str	r3, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7, #56]
	ldr	r3, [r3]
	orrs	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r2, [r7, #36]
	movs	r3, #4
	movt	r3, 1280
	cmp	r2, r3
	beq	.L344
	movs	r3, #6
	movt	r3, 1280
	cmp	r2, r3
	beq	.L344
	movs	r3, #2
	movt	r3, 1280
	cmp	r2, r3
	bne	.L372
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	str	r3, [r7, #32]
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #4]
	str	r3, [r7, #28]
	ldr	r3, [r7, #8]
	subs	r3, r3, #37
	cmp	r3, #10
	bhi	.L346
	adr	r1, .L348
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L348:
	.word	.L347+1-.L348
	.word	.L346+1-.L348
	.word	.L346+1-.L348
	.word	.L346+1-.L348
	.word	.L346+1-.L348
	.word	.L349+1-.L348
	.word	.L350+1-.L348
	.word	.L346+1-.L348
	.word	.L351+1-.L348
	.word	.L346+1-.L348
	.word	.L352+1-.L348
.L350:
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #44]
	b	.L353
.L351:
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #28]
	subs	r3, r2, r3
	str	r3, [r7, #44]
	b	.L353
.L352:
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L354
	ldr	r0, [r7, #12]
	ldr	r3, .L373
.LPIC21:
	add	r3, pc
	mov	r1, r3
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
	movs	r3, #0
	b	.L355
.L354:
	ldr	r0, [r7, #32]
	ldr	r1, [r7, #28]
	bl	__aeabi_idiv(PLT)
	mov	r3, r0
	str	r3, [r7, #44]
	b	.L353
.L349:
	ldr	r3, [r7, #32]
	ldr	r2, [r7, #28]
	mul	r3, r2, r3
	str	r3, [r7, #44]
	b	.L353
.L347:
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L356
	ldr	r0, [r7, #12]
	ldr	r3, .L373+4
.LPIC22:
	add	r3, pc
	mov	r1, r3
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
	movs	r3, #0
	b	.L355
.L356:
	ldr	r3, [r7, #32]
	mov	r0, r3
	ldr	r1, [r7, #28]
	bl	__aeabi_idivmod(PLT)
	mov	r3, r1
	str	r3, [r7, #44]
	b	.L353
.L346:
	movw	r3, #48879
	movt	r3, 57005
	str	r3, [r7, #44]
.L353:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #44]
	bl	_ZN11SQObjectPtraSEi(PLT)
	b	.L357
.L344:
	ldr	r3, [r7]
	ldr	r2, [r3]
	movs	r3, #2
	movt	r3, 1280
	cmp	r2, r3
	bne	.L358
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	fmsr	s14, r3	@ int
	fsitos	s15, s14
	b	.L359
.L358:
	ldr	r3, [r7]
	flds	s15, [r3, #4]
.L359:
	fsts	s15, [r7, #24]
	ldr	r3, [r7, #56]
	ldr	r2, [r3]
	movs	r3, #2
	movt	r3, 1280
	cmp	r2, r3
	bne	.L360
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #4]
	fmsr	s14, r3	@ int
	fsitos	s15, s14
	b	.L361
.L360:
	ldr	r3, [r7, #56]
	flds	s15, [r3, #4]
.L361:
	fsts	s15, [r7, #20]
	ldr	r3, [r7, #8]
	subs	r3, r3, #37
	cmp	r3, #10
	bhi	.L362
	adr	r1, .L364
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L364:
	.word	.L363+1-.L364
	.word	.L362+1-.L364
	.word	.L362+1-.L364
	.word	.L362+1-.L364
	.word	.L362+1-.L364
	.word	.L365+1-.L364
	.word	.L366+1-.L364
	.word	.L362+1-.L364
	.word	.L367+1-.L364
	.word	.L362+1-.L364
	.word	.L368+1-.L364
.L366:
	flds	s14, [r7, #24]
	flds	s15, [r7, #20]
	fadds	s15, s14, s15
	fsts	s15, [r7, #40]
	b	.L369
.L367:
	flds	s14, [r7, #24]
	flds	s15, [r7, #20]
	fsubs	s15, s14, s15
	fsts	s15, [r7, #40]
	b	.L369
.L368:
	flds	s14, [r7, #24]
	flds	s15, [r7, #20]
	fdivs	s15, s14, s15
	fsts	s15, [r7, #40]
	b	.L369
.L365:
	flds	s14, [r7, #24]
	flds	s15, [r7, #20]
	fmuls	s15, s14, s15
	fsts	s15, [r7, #40]
	b	.L369
.L363:
	flds	s15, [r7, #24]
	fcvtds	d6, s15
	flds	s15, [r7, #20]
	fcvtds	d7, s15
	fcpyd	d0, d6
	fcpyd	d1, d7
	bl	fmod(PLT)
	fcpyd	d7, d0
	fcvtsd	s15, d7
	fsts	s15, [r7, #40]
	b	.L369
.L362:
	mov	r3, #0
	movt	r3, 16752
	str	r3, [r7, #40]	@ float
.L369:
	ldr	r0, [r7, #4]
	flds	s0, [r7, #40]
	bl	_ZN11SQObjectPtraSEf(PLT)
	b	.L357
.L372:
	ldr	r3, [r7, #8]
	cmp	r3, #43
	bne	.L370
	ldr	r3, [r7, #36]
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L370
	ldr	r0, [r7, #12]
	ldr	r1, [r7]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #4]
	bl	_ZN4SQVM9StringCatERK11SQObjectPtrS2_RS0_(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L371
	movs	r3, #0
	b	.L355
.L371:
	b	.L357
.L370:
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #4]
	str	r2, [sp]
	ldr	r0, [r7, #12]
	mov	r1, r3
	ldr	r2, [r7]
	ldr	r3, [r7, #56]
	bl	_ZN4SQVM15ArithMetaMethodEiRK11SQObjectPtrS2_RS0_(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L357
	movs	r3, #0
	b	.L355
.L357:
	movs	r3, #1
.L355:
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L374:
	.align	2
.L373:
	.word	.LC4-(.LPIC21+4)
	.word	.LC5-(.LPIC22+4)
	.fnend
	.size	_ZN4SQVM8ARITH_OPEjR11SQObjectPtrRKS0_S3_, .-_ZN4SQVM8ARITH_OPEjR11SQObjectPtrRKS0_S3_
	.section	.text._ZN4SQVMC2EP13SQSharedState,"ax",%progbits
	.align	2
	.global	_ZN4SQVMC2EP13SQSharedState
	.thumb
	.thumb_func
	.type	_ZN4SQVMC2EP13SQSharedState, %function
_ZN4SQVMC2EP13SQSharedState:
	.fnstart
.LFB316:
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
	ldr	r4, .L387
.LPIC23:
	add	r4, pc
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN13SQCollectableC2Ev(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, .L387+4
	ldr	r2, [r4, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	mov	r0, r3
.LEHB45:
	bl	_ZN8sqvectorI11SQObjectPtrEC1Ev(PLT)
.LEHE45:
	ldr	r3, [r7, #4]
	adds	r3, r3, #48
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #56
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #64
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
	adds	r3, r3, #108
	mov	r0, r3
.LEHB46:
	bl	_ZN8sqvectorIN4SQVM8CallInfoEEC1Ev(PLT)
.LEHE46:
	ldr	r3, [r7, #4]
	adds	r3, r3, #120
	mov	r0, r3
.LEHB47:
	bl	_ZN8sqvectorI15SQExceptionTrapEC1Ev(PLT)
.LEHE47:
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #140]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #152]
	ldr	r3, [r7, #4]
	mov	r2, #-1
	str	r2, [r3, #160]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #156]
	ldr	r3, [r7, #4]
	mov	r2, #-1
	str	r2, [r3, #164]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #136]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #144]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #148]
	ldr	r3, [r7, #4]
	adds	r3, r3, #56
	mov	r0, r3
.LEHB48:
	bl	_ZN11SQObjectPtr4NullEv(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #64
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #72]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #76]
	ldr	r3, [r7, #4]
	adds	r3, r3, #80
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #44]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #132]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #140]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #140]
	add	r2, r3, #68
	ldr	r3, [r7, #4]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN13SQCollectable10AddToChainEPPS_S0_(PLT)
.LEHE48:
	ldr	r3, [r7, #4]
	b	.L386
.L385:
	ldr	r3, [r7, #4]
	adds	r3, r3, #120
	mov	r0, r3
	bl	_ZN8sqvectorI15SQExceptionTrapED1Ev(PLT)
	b	.L379
.L384:
.L379:
	ldr	r3, [r7, #4]
	adds	r3, r3, #108
	mov	r0, r3
	bl	_ZN8sqvectorIN4SQVM8CallInfoEED1Ev(PLT)
	b	.L380
.L383:
.L380:
	ldr	r3, [r7, #4]
	adds	r3, r3, #88
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #80
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #64
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #56
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #48
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	mov	r0, r3
	bl	_ZN8sqvectorI11SQObjectPtrED1Ev(PLT)
	b	.L381
.L382:
.L381:
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN13SQCollectableD2Ev(PLT)
.LEHB49:
	bl	__cxa_end_cleanup(PLT)
.LEHE49:
.L386:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L388:
	.align	2
.L387:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC23+4)
	.word	_ZTV4SQVM(GOT)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA316:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE316-.LLSDACSB316
.LLSDACSB316:
	.uleb128 .LEHB45-.LFB316
	.uleb128 .LEHE45-.LEHB45
	.uleb128 .L382-.LFB316
	.uleb128 0
	.uleb128 .LEHB46-.LFB316
	.uleb128 .LEHE46-.LEHB46
	.uleb128 .L383-.LFB316
	.uleb128 0
	.uleb128 .LEHB47-.LFB316
	.uleb128 .LEHE47-.LEHB47
	.uleb128 .L384-.LFB316
	.uleb128 0
	.uleb128 .LEHB48-.LFB316
	.uleb128 .LEHE48-.LEHB48
	.uleb128 .L385-.LFB316
	.uleb128 0
	.uleb128 .LEHB49-.LFB316
	.uleb128 .LEHE49-.LEHB49
	.uleb128 0
	.uleb128 0
.LLSDACSE316:
	.section	.text._ZN4SQVMC2EP13SQSharedState
	.fnend
	.size	_ZN4SQVMC2EP13SQSharedState, .-_ZN4SQVMC2EP13SQSharedState
	.global	_ZN4SQVMC1EP13SQSharedState
	.thumb_set _ZN4SQVMC1EP13SQSharedState,_ZN4SQVMC2EP13SQSharedState
	.section	.text._ZN4SQVM8FinalizeEv,"ax",%progbits
	.align	2
	.global	_ZN4SQVM8FinalizeEv
	.thumb
	.thumb_func
	.type	_ZN4SQVM8FinalizeEv, %function
_ZN4SQVM8FinalizeEv:
	.fnstart
.LFB318:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #68
	sub	sp, sp, #68
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L390
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	ldr	r0, [r7, #4]
	mov	r1, r3
.LEHB50:
	bl	_ZN4SQVM11CloseOutersEP11SQObjectPtr(PLT)
.L390:
	ldr	r3, [r7, #4]
	adds	r3, r3, #48
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #56
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #64
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #72]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #76]
	ldr	r3, [r7, #4]
	adds	r3, r3, #80
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #88
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
.LEHE50:
	ldr	r3, [r7, #4]
	add	r4, r3, #108
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #40]
	movs	r3, #0
	str	r3, [r7, #44]
	movs	r3, #0
	str	r3, [r7, #48]
	movs	r3, #0
	str	r3, [r7, #52]
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN4SQVM8CallInfoC1Ev(PLT)
	add	r3, r7, #12
	mov	r0, r4
	movs	r1, #0
	mov	r2, r3
.LEHB51:
	bl	_ZN8sqvectorIN4SQVM8CallInfoEE6resizeEjRKS1_(PLT)
.LEHE51:
	add	r3, r7, #12
	mov	r0, r3
.LEHB52:
	bl	_ZN4SQVM8CallInfoD1Ev(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4sizeEv(PLT)
	mov	r3, r0
	str	r3, [r7, #56]
	movs	r3, #0
	str	r3, [r7, #60]
	b	.L391
.L392:
	ldr	r3, [r7, #4]
	add	r2, r3, #24
	ldr	r3, [r7, #60]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI11SQObjectPtrEixEj(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
.LEHE52:
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
.L391:
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #56]
	cmp	r2, r3
	blt	.L392
	b	.L395
.L394:
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN4SQVM8CallInfoD1Ev(PLT)
.LEHB53:
	bl	__cxa_end_cleanup(PLT)
.LEHE53:
.L395:
	adds	r7, r7, #68
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA318:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE318-.LLSDACSB318
.LLSDACSB318:
	.uleb128 .LEHB50-.LFB318
	.uleb128 .LEHE50-.LEHB50
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB51-.LFB318
	.uleb128 .LEHE51-.LEHB51
	.uleb128 .L394-.LFB318
	.uleb128 0
	.uleb128 .LEHB52-.LFB318
	.uleb128 .LEHE52-.LEHB52
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB53-.LFB318
	.uleb128 .LEHE53-.LEHB53
	.uleb128 0
	.uleb128 0
.LLSDACSE318:
	.section	.text._ZN4SQVM8FinalizeEv
	.fnend
	.size	_ZN4SQVM8FinalizeEv, .-_ZN4SQVM8FinalizeEv
	.section	.text._ZN4SQVMD2Ev,"ax",%progbits
	.align	2
	.global	_ZN4SQVMD2Ev
	.thumb
	.thumb_func
	.type	_ZN4SQVMD2Ev, %function
_ZN4SQVMD2Ev:
	.fnstart
.LFB320:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r1, .L420
.LPIC24:
	add	r1, pc
	ldr	r3, [r7, #4]
	ldr	r2, .L420+4
	ldr	r2, [r1, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	ldr	r0, [r7, #4]
.LEHB54:
	bl	_ZN4SQVM8FinalizeEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	blt	.L397
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #140]
	add	r2, r3, #68
	ldr	r3, [r7, #4]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN13SQCollectable15RemoveFromChainEPPS_S0_(PLT)
.LEHE54:
.L397:
	ldr	r3, [r7, #4]
	adds	r3, r3, #120
	mov	r0, r3
.LEHB55:
	bl	_ZN8sqvectorI15SQExceptionTrapED1Ev(PLT)
.LEHE55:
	ldr	r3, [r7, #4]
	adds	r3, r3, #108
	mov	r0, r3
.LEHB56:
	bl	_ZN8sqvectorIN4SQVM8CallInfoEED1Ev(PLT)
.LEHE56:
	ldr	r3, [r7, #4]
	adds	r3, r3, #88
	mov	r0, r3
.LEHB57:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE57:
	ldr	r3, [r7, #4]
	adds	r3, r3, #80
	mov	r0, r3
.LEHB58:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE58:
	ldr	r3, [r7, #4]
	adds	r3, r3, #64
	mov	r0, r3
.LEHB59:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE59:
	ldr	r3, [r7, #4]
	adds	r3, r3, #56
	mov	r0, r3
.LEHB60:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE60:
	ldr	r3, [r7, #4]
	adds	r3, r3, #48
	mov	r0, r3
.LEHB61:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE61:
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	mov	r0, r3
.LEHB62:
	bl	_ZN8sqvectorI11SQObjectPtrED1Ev(PLT)
.LEHE62:
	ldr	r3, [r7, #4]
	mov	r0, r3
.LEHB63:
	bl	_ZN13SQCollectableD2Ev(PLT)
.LEHE63:
	movs	r3, #0
	cmp	r3, #0
	beq	.L399
	ldr	r0, [r7, #4]
	bl	_ZdlPv(PLT)
.L399:
	ldr	r3, [r7, #4]
	b	.L419
.L410:
	ldr	r3, [r7, #4]
	adds	r3, r3, #120
	mov	r0, r3
	bl	_ZN8sqvectorI15SQExceptionTrapED1Ev(PLT)
	b	.L402
.L411:
.L402:
	ldr	r3, [r7, #4]
	adds	r3, r3, #108
	mov	r0, r3
	bl	_ZN8sqvectorIN4SQVM8CallInfoEED1Ev(PLT)
	b	.L403
.L412:
.L403:
	ldr	r3, [r7, #4]
	adds	r3, r3, #88
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L404
.L413:
.L404:
	ldr	r3, [r7, #4]
	adds	r3, r3, #80
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L405
.L414:
.L405:
	ldr	r3, [r7, #4]
	adds	r3, r3, #64
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L406
.L415:
.L406:
	ldr	r3, [r7, #4]
	adds	r3, r3, #56
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L407
.L416:
.L407:
	ldr	r3, [r7, #4]
	adds	r3, r3, #48
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L408
.L417:
.L408:
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	mov	r0, r3
	bl	_ZN8sqvectorI11SQObjectPtrED1Ev(PLT)
	b	.L409
.L418:
.L409:
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN13SQCollectableD2Ev(PLT)
.LEHB64:
	bl	__cxa_end_cleanup(PLT)
.LEHE64:
.L419:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L421:
	.align	2
.L420:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC24+4)
	.word	_ZTV4SQVM(GOT)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA320:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE320-.LLSDACSB320
.LLSDACSB320:
	.uleb128 .LEHB54-.LFB320
	.uleb128 .LEHE54-.LEHB54
	.uleb128 .L410-.LFB320
	.uleb128 0
	.uleb128 .LEHB55-.LFB320
	.uleb128 .LEHE55-.LEHB55
	.uleb128 .L411-.LFB320
	.uleb128 0
	.uleb128 .LEHB56-.LFB320
	.uleb128 .LEHE56-.LEHB56
	.uleb128 .L412-.LFB320
	.uleb128 0
	.uleb128 .LEHB57-.LFB320
	.uleb128 .LEHE57-.LEHB57
	.uleb128 .L413-.LFB320
	.uleb128 0
	.uleb128 .LEHB58-.LFB320
	.uleb128 .LEHE58-.LEHB58
	.uleb128 .L414-.LFB320
	.uleb128 0
	.uleb128 .LEHB59-.LFB320
	.uleb128 .LEHE59-.LEHB59
	.uleb128 .L415-.LFB320
	.uleb128 0
	.uleb128 .LEHB60-.LFB320
	.uleb128 .LEHE60-.LEHB60
	.uleb128 .L416-.LFB320
	.uleb128 0
	.uleb128 .LEHB61-.LFB320
	.uleb128 .LEHE61-.LEHB61
	.uleb128 .L417-.LFB320
	.uleb128 0
	.uleb128 .LEHB62-.LFB320
	.uleb128 .LEHE62-.LEHB62
	.uleb128 .L418-.LFB320
	.uleb128 0
	.uleb128 .LEHB63-.LFB320
	.uleb128 .LEHE63-.LEHB63
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB64-.LFB320
	.uleb128 .LEHE64-.LEHB64
	.uleb128 0
	.uleb128 0
.LLSDACSE320:
	.section	.text._ZN4SQVMD2Ev
	.fnend
	.size	_ZN4SQVMD2Ev, .-_ZN4SQVMD2Ev
	.global	_ZN4SQVMD1Ev
	.thumb_set _ZN4SQVMD1Ev,_ZN4SQVMD2Ev
	.section	.text._ZN4SQVMD0Ev,"ax",%progbits
	.align	2
	.global	_ZN4SQVMD0Ev
	.thumb
	.thumb_func
	.type	_ZN4SQVMD0Ev, %function
_ZN4SQVMD0Ev:
	.fnstart
.LFB322:
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
	bl	_ZN4SQVMD1Ev(PLT)
	ldr	r0, [r7, #4]
	bl	_ZdlPv(PLT)
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN4SQVMD0Ev, .-_ZN4SQVMD0Ev
	.section	.rodata
	.align	2
.LC6:
	.ascii	"0\000"
	.align	2
.LC7:
	.ascii	"../../../libs/squirrel/squirrel/sqvm.cpp\000"
	.align	2
.LC8:
	.ascii	"arith op %c on between '%s' and '%s'\000"
	.section	.text._ZN4SQVM15ArithMetaMethodEiRK11SQObjectPtrS2_RS0_,"ax",%progbits
	.align	2
	.global	_ZN4SQVM15ArithMetaMethodEiRK11SQObjectPtrS2_RS0_
	.thumb
	.thumb_func
	.type	_ZN4SQVM15ArithMetaMethodEiRK11SQObjectPtrS2_RS0_, %function
_ZN4SQVM15ArithMetaMethodEiRK11SQObjectPtrS2_RS0_:
	.fnstart
.LFB323:
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	.save {r4, r5, r6, r7, lr}
	.pad #44
	sub	sp, sp, #44
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #8]
	subs	r3, r3, #37
	cmp	r3, #10
	bhi	.L426
	adr	r1, .L428
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L428:
	.word	.L427+1-.L428
	.word	.L426+1-.L428
	.word	.L426+1-.L428
	.word	.L426+1-.L428
	.word	.L426+1-.L428
	.word	.L429+1-.L428
	.word	.L430+1-.L428
	.word	.L426+1-.L428
	.word	.L431+1-.L428
	.word	.L426+1-.L428
	.word	.L432+1-.L428
.L430:
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L433
.L431:
	movs	r3, #1
	str	r3, [r7, #28]
	b	.L433
.L432:
	movs	r3, #3
	str	r3, [r7, #28]
	b	.L433
.L429:
	movs	r3, #2
	str	r3, [r7, #28]
	b	.L433
.L427:
	movs	r3, #5
	str	r3, [r7, #28]
	b	.L433
.L426:
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, .L444
.LPIC25:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L444+4
.LPIC26:
	add	r3, pc
	mov	r1, r3
	movs	r2, #157
	ldr	r3, .L444+8
.LPIC27:
	add	r3, pc
	bl	__assert_fail(PLT)
.L433:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r3, r3, #33554432
	cmp	r3, #0
	beq	.L434
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L434
	add	r3, r7, #20
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	adds	r3, r3, #24
	ldr	r4, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	add	r3, r7, #20
	mov	r0, r2
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #28]
.LEHB65:
	blx	r4
	mov	r3, r0
	cmp	r3, #0
	beq	.L435
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	ldr	r0, [r7, #12]
	ldr	r1, [r7]
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	add	r3, r7, #20
	ldr	r2, [r7, #56]
	str	r2, [sp]
	ldr	r0, [r7, #12]
	mov	r1, r3
	ldr	r2, [r7, #28]
	movs	r3, #2
	bl	_ZN4SQVM14CallMetaMethodER11SQObjectPtr12SQMetaMethodiS1_(PLT)
.LEHE65:
	mov	r3, r0
	mov	r4, r3
	movs	r5, #0
	b	.L436
.L435:
	movs	r5, #1
	mov	r4, r6
.L436:
	add	r3, r7, #20
	mov	r0, r3
.LEHB66:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	cmp	r5, #1
	bne	.L439
	nop
.L434:
	ldr	r0, [r7, #4]
	bl	_Z11GetTypeNameRK11SQObjectPtr(PLT)
	mov	r4, r0
	ldr	r0, [r7]
	bl	_Z11GetTypeNameRK11SQObjectPtr(PLT)
	mov	r3, r0
	str	r3, [sp]
	ldr	r0, [r7, #12]
	ldr	r3, .L444+12
.LPIC28:
	add	r3, pc
	mov	r1, r3
	ldr	r2, [r7, #8]
	mov	r3, r4
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
.LEHE66:
	movs	r4, #0
.L439:
	mov	r3, r4
	b	.L443
.L441:
	add	r3, r7, #20
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB67:
	bl	__cxa_end_cleanup(PLT)
.LEHE67:
.L443:
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L445:
	.align	2
.L444:
	.word	.LC6-(.LPIC25+4)
	.word	.LC7-(.LPIC26+4)
	.word	_ZZN4SQVM15ArithMetaMethodEiRK11SQObjectPtrS2_RS0_E19__PRETTY_FUNCTION__-(.LPIC27+4)
	.word	.LC8-(.LPIC28+4)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA323:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE323-.LLSDACSB323
.LLSDACSB323:
	.uleb128 .LEHB65-.LFB323
	.uleb128 .LEHE65-.LEHB65
	.uleb128 .L441-.LFB323
	.uleb128 0
	.uleb128 .LEHB66-.LFB323
	.uleb128 .LEHE66-.LEHB66
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB67-.LFB323
	.uleb128 .LEHE67-.LEHB67
	.uleb128 0
	.uleb128 0
.LLSDACSE323:
	.section	.text._ZN4SQVM15ArithMetaMethodEiRK11SQObjectPtrS2_RS0_
	.fnend
	.size	_ZN4SQVM15ArithMetaMethodEiRK11SQObjectPtrS2_RS0_, .-_ZN4SQVM15ArithMetaMethodEiRK11SQObjectPtrS2_RS0_
	.section	.rodata
	.align	2
.LC9:
	.ascii	"attempt to negate a %s\000"
	.section	.text._ZN4SQVM6NEG_OPER11SQObjectPtrRKS0_,"ax",%progbits
	.align	2
	.global	_ZN4SQVM6NEG_OPER11SQObjectPtrRKS0_
	.thumb
	.thumb_func
	.type	_ZN4SQVM6NEG_OPER11SQObjectPtrRKS0_, %function
_ZN4SQVM6NEG_OPER11SQObjectPtrRKS0_:
	.fnstart
.LFB324:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	.save {r4, r5, r6, r7, lr}
	.pad #36
	sub	sp, sp, #36
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #32
	movt	r2, 2560
	cmp	r3, r2
	beq	.L448
	movs	r2, #32
	movt	r2, 2560
	cmp	r3, r2
	bgt	.L449
	movs	r2, #2
	movt	r2, 1280
	cmp	r3, r2
	beq	.L450
	movs	r2, #4
	movt	r2, 1280
	cmp	r3, r2
	beq	.L451
	b	.L463
.L449:
	movs	r2, #128
	movt	r2, 2560
	cmp	r3, r2
	beq	.L448
	mov	r2, #32768
	movt	r2, 2560
	cmp	r3, r2
	beq	.L448
	b	.L463
.L450:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	negs	r3, r3
	ldr	r0, [r7, #8]
	mov	r1, r3
.LEHB68:
	bl	_ZN11SQObjectPtraSEi(PLT)
	movs	r4, #1
	b	.L452
.L451:
	ldr	r3, [r7, #4]
	flds	s15, [r3, #4]
	fnegs	s15, s15
	ldr	r0, [r7, #8]
	fcpys	s0, s15
	bl	_ZN11SQObjectPtraSEf(PLT)
.LEHE68:
	movs	r4, #1
	b	.L452
.L448:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L447
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	adds	r3, r3, #24
	ldr	r4, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	add	r3, r7, #16
	mov	r0, r2
	ldr	r1, [r7, #12]
	movs	r2, #4
.LEHB69:
	blx	r4
	mov	r3, r0
	cmp	r3, #0
	beq	.L453
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	ldr	r3, [r7, #12]
	add	r2, r3, #88
	add	r3, r7, #16
	str	r2, [sp]
	ldr	r0, [r7, #12]
	mov	r1, r3
	movs	r2, #4
	movs	r3, #1
	bl	_ZN4SQVM14CallMetaMethodER11SQObjectPtr12SQMetaMethodiS1_(PLT)
.LEHE69:
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L454
	movs	r4, #0
	movs	r5, #0
	b	.L455
.L454:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	adds	r3, r3, #88
	mov	r0, r2
	mov	r1, r3
	bl	_Z5_SwapR11tagSQObjectS0_(PLT)
	movs	r4, #1
	movs	r5, #0
	b	.L455
.L453:
	movs	r5, #1
	mov	r4, r6
.L455:
	add	r3, r7, #16
	mov	r0, r3
.LEHB70:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	cmp	r5, #1
	bne	.L452
	nop
.L447:
.L463:
	nop
	ldr	r0, [r7, #4]
	bl	_Z11GetTypeNameRK11SQObjectPtr(PLT)
	mov	r3, r0
	ldr	r0, [r7, #12]
	ldr	r2, .L464
.LPIC29:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
.LEHE70:
	movs	r4, #0
.L452:
	mov	r3, r4
	b	.L462
.L459:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB71:
	bl	__cxa_end_cleanup(PLT)
.LEHE71:
.L462:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L465:
	.align	2
.L464:
	.word	.LC9-(.LPIC29+4)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA324:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE324-.LLSDACSB324
.LLSDACSB324:
	.uleb128 .LEHB68-.LFB324
	.uleb128 .LEHE68-.LEHB68
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB69-.LFB324
	.uleb128 .LEHE69-.LEHB69
	.uleb128 .L459-.LFB324
	.uleb128 0
	.uleb128 .LEHB70-.LFB324
	.uleb128 .LEHE70-.LEHB70
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB71-.LFB324
	.uleb128 .LEHE71-.LEHB71
	.uleb128 0
	.uleb128 0
.LLSDACSE324:
	.section	.text._ZN4SQVM6NEG_OPER11SQObjectPtrRKS0_
	.fnend
	.size	_ZN4SQVM6NEG_OPER11SQObjectPtrRKS0_, .-_ZN4SQVM6NEG_OPER11SQObjectPtrRKS0_
	.section	.rodata
	.align	2
.LC10:
	.ascii	"_cmp must return an integer\000"
	.section	.text._ZN4SQVM6ObjCmpERK11SQObjectPtrS2_Ri,"ax",%progbits
	.align	2
	.global	_ZN4SQVM6ObjCmpERK11SQObjectPtrS2_Ri
	.thumb
	.thumb_func
	.type	_ZN4SQVM6ObjCmpERK11SQObjectPtrS2_Ri, %function
_ZN4SQVM6ObjCmpERK11SQObjectPtrS2_Ri:
	.fnstart
.LFB325:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	.save {r4, r5, r6, r7, lr}
	.pad #52
	sub	sp, sp, #52
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	str	r3, [r7, #36]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #32]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bne	.L467
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bne	.L468
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3]
	movs	r4, #1
	b	.L490
.L468:
	add	r3, r7, #24
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #36]
	movs	r2, #16
	movt	r2, 2048
	cmp	r3, r2
	beq	.L471
	movs	r2, #16
	movt	r2, 2048
	cmp	r3, r2
	bgt	.L472
	movs	r2, #2
	movt	r2, 1280
	cmp	r3, r2
	beq	.L473
	movs	r2, #4
	movt	r2, 1280
	cmp	r3, r2
	beq	.L474
	b	.L470
.L472:
	movs	r2, #128
	movt	r2, 2560
	cmp	r3, r2
	beq	.L475
	mov	r2, #32768
	movt	r2, 2560
	cmp	r3, r2
	beq	.L475
	movs	r2, #32
	movt	r2, 2560
	cmp	r3, r2
	beq	.L475
	b	.L470
.L471:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	add	r2, r3, #28
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	adds	r3, r3, #28
	mov	r0, r2
	mov	r1, r3
	bl	strcmp(PLT)
	mov	r2, r0
	ldr	r3, [r7]
	str	r2, [r3]
	movs	r4, #1
	b	.L476
.L473:
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bge	.L477
	mov	r3, #-1
	b	.L478
.L477:
	movs	r3, #1
.L478:
	ldr	r2, [r7]
	str	r3, [r2]
	movs	r4, #1
	b	.L476
.L474:
	ldr	r3, [r7, #8]
	flds	s14, [r3, #4]
	ldr	r3, [r7, #4]
	flds	s15, [r3, #4]
	fcmpes	s14, s15
	fmstat
	bpl	.L509
	mov	r3, #-1
	b	.L481
.L509:
	movs	r3, #1
.L481:
	ldr	r2, [r7]
	str	r3, [r2]
	movs	r4, #1
	b	.L476
.L475:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L470
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	adds	r3, r3, #24
	ldr	r4, [r3]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	add	r3, r7, #16
	mov	r0, r2
	ldr	r1, [r7, #12]
	movs	r2, #10
.LEHB72:
	blx	r4
	mov	r3, r0
	cmp	r3, #0
	beq	.L482
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	add	r3, r7, #16
	add	r2, r7, #24
	str	r2, [sp]
	ldr	r0, [r7, #12]
	mov	r1, r3
	movs	r2, #10
	movs	r3, #2
	bl	_ZN4SQVM14CallMetaMethodER11SQObjectPtr12SQMetaMethodiS1_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L483
	ldr	r2, [r7, #24]
	movs	r3, #2
	movt	r3, 1280
	cmp	r2, r3
	beq	.L484
	ldr	r0, [r7, #12]
	ldr	r3, .L513
.LPIC30:
	add	r3, pc
	mov	r1, r3
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
.LEHE72:
	movs	r4, #0
	movs	r5, #0
	b	.L485
.L484:
	ldr	r2, [r7, #28]
	ldr	r3, [r7]
	str	r2, [r3]
	movs	r4, #1
	movs	r5, #0
	b	.L485
.L483:
	movs	r4, #0
	movs	r5, #0
	b	.L485
.L482:
	movs	r5, #1
	mov	r4, r6
.L485:
	add	r3, r7, #16
	mov	r0, r3
.LEHB73:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE73:
	cmp	r5, #1
	bne	.L476
	nop
.L470:
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bcs	.L488
	mov	r3, #-1
	b	.L489
.L488:
	movs	r3, #1
.L489:
	ldr	r2, [r7]
	str	r3, [r2]
	movs	r4, #1
.L476:
	add	r3, r7, #24
	mov	r0, r3
.LEHB74:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L490
.L467:
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	and	r3, r3, #67108864
	cmp	r3, #0
	beq	.L491
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r3, r3, #67108864
	cmp	r3, #0
	beq	.L491
	ldr	r2, [r7, #36]
	movs	r3, #2
	movt	r3, 1280
	cmp	r2, r3
	bne	.L492
	ldr	r2, [r7, #32]
	movs	r3, #4
	movt	r3, 1280
	cmp	r2, r3
	bne	.L492
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	fmsr	s13, r3	@ int
	fsitos	s14, s13
	ldr	r3, [r7, #4]
	flds	s15, [r3, #4]
	fcmps	s14, s15
	fmstat
	bne	.L493
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3]
	movs	r4, #1
	b	.L490
.L493:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	fmsr	s15, r3	@ int
	fsitos	s14, s15
	ldr	r3, [r7, #4]
	flds	s15, [r3, #4]
	fcmpes	s14, s15
	fmstat
	bpl	.L510
	ldr	r3, [r7]
	mov	r2, #-1
	str	r2, [r3]
	movs	r4, #1
	b	.L490
.L510:
	ldr	r3, [r7]
	movs	r2, #1
	str	r2, [r3]
	movs	r4, #1
	b	.L490
.L492:
	ldr	r3, [r7, #8]
	flds	s14, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	fmsr	s13, r3	@ int
	fsitos	s15, s13
	fcmps	s14, s15
	fmstat
	bne	.L496
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3]
	movs	r4, #1
	b	.L490
.L496:
	ldr	r3, [r7, #8]
	flds	s14, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	fmsr	s13, r3	@ int
	fsitos	s15, s13
	fcmpes	s14, s15
	fmstat
	bpl	.L511
	ldr	r3, [r7]
	mov	r2, #-1
	str	r2, [r3]
	movs	r4, #1
	b	.L490
.L511:
	ldr	r3, [r7]
	movs	r2, #1
	str	r2, [r3]
	movs	r4, #1
	b	.L490
.L491:
	ldr	r2, [r7, #36]
	movs	r3, #1
	movt	r3, 256
	cmp	r2, r3
	bne	.L499
	ldr	r3, [r7]
	mov	r2, #-1
	str	r2, [r3]
	movs	r4, #1
	b	.L490
.L499:
	ldr	r2, [r7, #32]
	movs	r3, #1
	movt	r3, 256
	cmp	r2, r3
	bne	.L500
	ldr	r3, [r7]
	movs	r2, #1
	str	r2, [r3]
	movs	r4, #1
	b	.L490
.L500:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	bl	_ZN4SQVM18Raise_CompareErrorERK11tagSQObjectS2_(PLT)
.LEHE74:
	movs	r4, #0
.L490:
	mov	r3, r4
	b	.L512
.L503:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L502
.L504:
.L502:
	add	r3, r7, #24
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB75:
	bl	__cxa_end_cleanup(PLT)
.LEHE75:
.L512:
	mov	r0, r3
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L514:
	.align	2
.L513:
	.word	.LC10-(.LPIC30+4)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA325:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE325-.LLSDACSB325
.LLSDACSB325:
	.uleb128 .LEHB72-.LFB325
	.uleb128 .LEHE72-.LEHB72
	.uleb128 .L503-.LFB325
	.uleb128 0
	.uleb128 .LEHB73-.LFB325
	.uleb128 .LEHE73-.LEHB73
	.uleb128 .L504-.LFB325
	.uleb128 0
	.uleb128 .LEHB74-.LFB325
	.uleb128 .LEHE74-.LEHB74
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB75-.LFB325
	.uleb128 .LEHE75-.LEHB75
	.uleb128 0
	.uleb128 0
.LLSDACSE325:
	.section	.text._ZN4SQVM6ObjCmpERK11SQObjectPtrS2_Ri
	.fnend
	.size	_ZN4SQVM6ObjCmpERK11SQObjectPtrS2_Ri, .-_ZN4SQVM6ObjCmpERK11SQObjectPtrS2_Ri
	.section	.text._ZN4SQVM6CMP_OPE5CmpOPRK11SQObjectPtrS3_RS1_,"ax",%progbits
	.align	2
	.global	_ZN4SQVM6CMP_OPE5CmpOPRK11SQObjectPtrS3_RS1_
	.thumb
	.thumb_func
	.type	_ZN4SQVM6CMP_OPE5CmpOPRK11SQObjectPtrS3_RS1_, %function
_ZN4SQVM6CMP_OPE5CmpOPRK11SQObjectPtrS3_RS1_:
	.fnstart
.LFB326:
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
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
	bl	_ZN4SQVM6ObjCmpERK11SQObjectPtrS2_Ri(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L516
	ldr	r3, [r7, #8]
	cmp	r3, #5
	bhi	.L517
	adr	r1, .L519
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L519:
	.word	.L518+1-.L519
	.word	.L517+1-.L519
	.word	.L520+1-.L519
	.word	.L521+1-.L519
	.word	.L522+1-.L519
	.word	.L523+1-.L519
.L518:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	ite	gt
	movgt	r3, #1
	movle	r3, #0
	uxtb	r3, r3
	ldr	r0, [r7, #32]
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEb(PLT)
	movs	r3, #1
	b	.L525
.L520:
	ldr	r3, [r7, #20]
	mvns	r3, r3
	lsrs	r3, r3, #31
	uxtb	r3, r3
	ldr	r0, [r7, #32]
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEb(PLT)
	movs	r3, #1
	b	.L525
.L521:
	ldr	r3, [r7, #20]
	lsrs	r3, r3, #31
	uxtb	r3, r3
	ldr	r0, [r7, #32]
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEb(PLT)
	movs	r3, #1
	b	.L525
.L522:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	ite	le
	movle	r3, #1
	movgt	r3, #0
	uxtb	r3, r3
	ldr	r0, [r7, #32]
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEb(PLT)
	movs	r3, #1
	b	.L525
.L523:
	ldr	r3, [r7, #20]
	ldr	r0, [r7, #32]
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEi(PLT)
	movs	r3, #1
	b	.L525
.L517:
	ldr	r3, .L526
.LPIC31:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L526+4
.LPIC32:
	add	r3, pc
	mov	r1, r3
	movw	r2, #273
	ldr	r3, .L526+8
.LPIC33:
	add	r3, pc
	bl	__assert_fail(PLT)
.L516:
	movs	r3, #0
.L525:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L527:
	.align	2
.L526:
	.word	.LC6-(.LPIC31+4)
	.word	.LC7-(.LPIC32+4)
	.word	_ZZN4SQVM6CMP_OPE5CmpOPRK11SQObjectPtrS3_RS1_E19__PRETTY_FUNCTION__-(.LPIC33+4)
	.fnend
	.size	_ZN4SQVM6CMP_OPE5CmpOPRK11SQObjectPtrS3_RS1_, .-_ZN4SQVM6CMP_OPE5CmpOPRK11SQObjectPtrS3_RS1_
	.section	.rodata
	.align	2
.LC11:
	.ascii	"%g\000"
	.align	2
.LC12:
	.ascii	"%d\000"
	.align	2
.LC13:
	.ascii	"true\000"
	.align	2
.LC14:
	.ascii	"false\000"
	.align	2
.LC15:
	.ascii	"(%s : 0x%p)\000"
	.section	.text._ZN4SQVM8ToStringERK11SQObjectPtrRS0_,"ax",%progbits
	.align	2
	.global	_ZN4SQVM8ToStringERK11SQObjectPtrRS0_
	.thumb
	.thumb_func
	.type	_ZN4SQVM8ToStringERK11SQObjectPtrRS0_, %function
_ZN4SQVM8ToStringERK11SQObjectPtrRS0_:
	.fnstart
.LFB327:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	.save {r4, r5, r6, r7, lr}
	.pad #36
	sub	sp, sp, #36
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	movs	r2, #16
	movt	r2, 2048
	cmp	r3, r2
	beq	.L530
	movs	r2, #16
	movt	r2, 2048
	cmp	r3, r2
	bgt	.L531
	movs	r2, #2
	movt	r2, 1280
	cmp	r3, r2
	beq	.L532
	movs	r2, #4
	movt	r2, 1280
	cmp	r3, r2
	beq	.L533
	movs	r2, #8
	movt	r2, 256
	cmp	r3, r2
	beq	.L534
	b	.L529
.L531:
	movs	r2, #128
	movt	r2, 2560
	cmp	r3, r2
	beq	.L535
	mov	r2, #32768
	movt	r2, 2560
	cmp	r3, r2
	beq	.L535
	movs	r2, #32
	movt	r2, 2560
	cmp	r3, r2
	beq	.L535
	b	.L529
.L530:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #8]
.LEHB76:
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	movs	r4, #1
	b	.L536
.L533:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #140]
	mov	r0, r3
	movs	r1, #51
	bl	_ZN13SQSharedState13GetScratchPadEi(PLT)
	mov	r3, r0
	ldr	r2, [r7, #8]
	flds	s15, [r2, #4]
	fcvtds	d7, s15
	mov	r0, r3
	ldr	r3, .L549
.LPIC34:
	add	r3, pc
	mov	r1, r3
	fmrrd	r2, r3, d7
	bl	sprintf(PLT)
	b	.L537
.L532:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #140]
	mov	r0, r3
	movs	r1, #51
	bl	_ZN13SQSharedState13GetScratchPadEi(PLT)
	mov	r2, r0
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	mov	r0, r2
	ldr	r2, .L549+4
.LPIC35:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	bl	sprintf(PLT)
	b	.L537
.L534:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #140]
	mov	r0, r3
	movs	r1, #6
	bl	_ZN13SQSharedState13GetScratchPadEi(PLT)
.LEHE76:
	mov	r2, r0
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L538
	ldr	r3, .L549+8
.LPIC36:
	add	r3, pc
	b	.L539
.L538:
	ldr	r3, .L549+12
.LPIC37:
	add	r3, pc
.L539:
	mov	r0, r2
	mov	r1, r3
	bl	sprintf(PLT)
	b	.L537
.L535:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L529
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	adds	r3, r3, #24
	ldr	r4, [r3]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	add	r3, r7, #16
	mov	r0, r2
	ldr	r1, [r7, #12]
	movs	r2, #15
.LEHB77:
	blx	r4
	mov	r3, r0
	cmp	r3, #0
	beq	.L540
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	add	r3, r7, #16
	ldr	r2, [r7, #4]
	str	r2, [sp]
	ldr	r0, [r7, #12]
	mov	r1, r3
	movs	r2, #15
	movs	r3, #1
	bl	_ZN4SQVM14CallMetaMethodER11SQObjectPtr12SQMetaMethodiS1_(PLT)
.LEHE77:
	mov	r3, r0
	cmp	r3, #0
	beq	.L541
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	movs	r3, #16
	movt	r3, 2048
	cmp	r2, r3
	bne	.L540
	movs	r4, #1
	movs	r5, #0
	b	.L542
.L541:
	movs	r4, #0
	movs	r5, #0
	b	.L542
.L540:
	movs	r5, #1
	mov	r4, r6
.L542:
	add	r3, r7, #16
	mov	r0, r3
.LEHB78:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	cmp	r5, #1
	bne	.L536
	nop
.L529:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #140]
	movs	r3, #24
	mov	r0, r2
	mov	r1, r3
	bl	_ZN13SQSharedState13GetScratchPadEi(PLT)
	mov	r4, r0
	ldr	r0, [r7, #8]
	bl	_Z11GetTypeNameRK11SQObjectPtr(PLT)
	mov	r2, r0
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	mov	r0, r4
	ldr	r1, .L549+16
.LPIC38:
	add	r1, pc
	bl	sprintf(PLT)
.L537:
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #140]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #140]
	mov	r0, r3
	mov	r1, #-1
	bl	_ZN13SQSharedState13GetScratchPadEi(PLT)
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
	mov	r3, r0
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEP8SQString(PLT)
.LEHE78:
	movs	r4, #1
.L536:
	mov	r3, r4
	b	.L548
.L546:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB79:
	bl	__cxa_end_cleanup(PLT)
.LEHE79:
.L548:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L550:
	.align	2
.L549:
	.word	.LC11-(.LPIC34+4)
	.word	.LC12-(.LPIC35+4)
	.word	.LC13-(.LPIC36+4)
	.word	.LC14-(.LPIC37+4)
	.word	.LC15-(.LPIC38+4)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA327:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE327-.LLSDACSB327
.LLSDACSB327:
	.uleb128 .LEHB76-.LFB327
	.uleb128 .LEHE76-.LEHB76
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB77-.LFB327
	.uleb128 .LEHE77-.LEHB77
	.uleb128 .L546-.LFB327
	.uleb128 0
	.uleb128 .LEHB78-.LFB327
	.uleb128 .LEHE78-.LEHB78
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB79-.LFB327
	.uleb128 .LEHE79-.LEHB79
	.uleb128 0
	.uleb128 0
.LLSDACSE327:
	.section	.text._ZN4SQVM8ToStringERK11SQObjectPtrRS0_
	.fnend
	.size	_ZN4SQVM8ToStringERK11SQObjectPtrRS0_, .-_ZN4SQVM8ToStringERK11SQObjectPtrRS0_
	.section	.text._ZN4SQVM9StringCatERK11SQObjectPtrS2_RS0_,"ax",%progbits
	.align	2
	.global	_ZN4SQVM9StringCatERK11SQObjectPtrS2_RS0_
	.thumb
	.thumb_func
	.type	_ZN4SQVM9StringCatERK11SQObjectPtrS2_RS0_, %function
_ZN4SQVM9StringCatERK11SQObjectPtrS2_RS0_:
	.fnstart
.LFB328:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #52
	sub	sp, sp, #52
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	add	r3, r7, #28
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	add	r3, r7, #20
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	add	r3, r7, #28
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	mov	r2, r3
.LEHB80:
	bl	_ZN4SQVM8ToStringERK11SQObjectPtrRS0_(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L552
	movs	r4, #0
	b	.L553
.L552:
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	mov	r2, r3
	bl	_ZN4SQVM8ToStringERK11SQObjectPtrRS0_(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L554
	movs	r4, #0
	b	.L553
.L554:
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #20]
	str	r3, [r7, #44]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #20]
	str	r3, [r7, #40]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #140]
	ldr	r1, [r7, #44]
	ldr	r3, [r7, #40]
	add	r3, r3, r1
	adds	r3, r3, #1
	mov	r0, r2
	mov	r1, r3
	bl	_ZN13SQSharedState13GetScratchPadEi(PLT)
	mov	r3, r0
	str	r3, [r7, #36]
	ldr	r3, [r7, #32]
	add	r2, r3, #28
	ldr	r3, [r7, #44]
	ldr	r0, [r7, #36]
	mov	r1, r2
	mov	r2, r3
	bl	memcpy(PLT)
	ldr	r3, [r7, #44]
	ldr	r2, [r7, #36]
	adds	r1, r2, r3
	ldr	r3, [r7, #24]
	add	r2, r3, #28
	ldr	r3, [r7, #40]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	memcpy(PLT)
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #140]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #140]
	mov	r0, r3
	mov	r1, #-1
	bl	_ZN13SQSharedState13GetScratchPadEi(PLT)
	mov	r2, r0
	ldr	r1, [r7, #44]
	ldr	r3, [r7, #40]
	add	r3, r3, r1
	mov	r0, r4
	mov	r1, r2
	mov	r2, r3
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
	mov	r3, r0
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEP8SQString(PLT)
.LEHE80:
	movs	r4, #1
.L553:
	add	r3, r7, #20
	mov	r0, r3
.LEHB81:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE81:
	add	r3, r7, #28
	mov	r0, r3
.LEHB82:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE82:
	mov	r3, r4
	b	.L560
.L559:
	add	r3, r7, #20
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L557
.L558:
.L557:
	add	r3, r7, #28
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB83:
	bl	__cxa_end_cleanup(PLT)
.LEHE83:
.L560:
	mov	r0, r3
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA328:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE328-.LLSDACSB328
.LLSDACSB328:
	.uleb128 .LEHB80-.LFB328
	.uleb128 .LEHE80-.LEHB80
	.uleb128 .L559-.LFB328
	.uleb128 0
	.uleb128 .LEHB81-.LFB328
	.uleb128 .LEHE81-.LEHB81
	.uleb128 .L558-.LFB328
	.uleb128 0
	.uleb128 .LEHB82-.LFB328
	.uleb128 .LEHE82-.LEHB82
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB83-.LFB328
	.uleb128 .LEHE83-.LEHB83
	.uleb128 0
	.uleb128 0
.LLSDACSE328:
	.section	.text._ZN4SQVM9StringCatERK11SQObjectPtrS2_RS0_
	.fnend
	.size	_ZN4SQVM9StringCatERK11SQObjectPtrS2_RS0_, .-_ZN4SQVM9StringCatERK11SQObjectPtrS2_RS0_
	.section	.text._ZN4SQVM6TypeOfERK11SQObjectPtrRS0_,"ax",%progbits
	.align	2
	.global	_ZN4SQVM6TypeOfERK11SQObjectPtrRS0_
	.thumb
	.thumb_func
	.type	_ZN4SQVM6TypeOfERK11SQObjectPtrRS0_, %function
_ZN4SQVM6TypeOfERK11SQObjectPtrRS0_:
	.fnstart
.LFB329:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	.save {r4, r5, r6, r7, lr}
	.pad #36
	sub	sp, sp, #36
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	and	r3, r3, #33554432
	cmp	r3, #0
	beq	.L562
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L562
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	adds	r3, r3, #24
	ldr	r4, [r3]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	add	r3, r7, #16
	mov	r0, r2
	ldr	r1, [r7, #12]
	movs	r2, #8
.LEHB84:
	blx	r4
	mov	r3, r0
	cmp	r3, #0
	beq	.L563
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	add	r3, r7, #16
	ldr	r2, [r7, #4]
	str	r2, [sp]
	ldr	r0, [r7, #12]
	mov	r1, r3
	movs	r2, #8
	movs	r3, #1
	bl	_ZN4SQVM14CallMetaMethodER11SQObjectPtr12SQMetaMethodiS1_(PLT)
.LEHE84:
	mov	r3, r0
	mov	r4, r3
	movs	r5, #0
	b	.L564
.L563:
	movs	r5, #1
	mov	r4, r6
.L564:
	add	r3, r7, #16
	mov	r0, r3
.LEHB85:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	cmp	r5, #1
	bne	.L567
	nop
.L562:
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #140]
	ldr	r0, [r7, #8]
	bl	_Z11GetTypeNameRK11SQObjectPtr(PLT)
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
	mov	r3, r0
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEP8SQString(PLT)
.LEHE85:
	movs	r4, #1
.L567:
	mov	r3, r4
	b	.L571
.L569:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB86:
	bl	__cxa_end_cleanup(PLT)
.LEHE86:
.L571:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA329:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE329-.LLSDACSB329
.LLSDACSB329:
	.uleb128 .LEHB84-.LFB329
	.uleb128 .LEHE84-.LEHB84
	.uleb128 .L569-.LFB329
	.uleb128 0
	.uleb128 .LEHB85-.LFB329
	.uleb128 .LEHE85-.LEHB85
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB86-.LFB329
	.uleb128 .LEHE86-.LEHB86
	.uleb128 0
	.uleb128 0
.LLSDACSE329:
	.section	.text._ZN4SQVM6TypeOfERK11SQObjectPtrRS0_
	.fnend
	.size	_ZN4SQVM6TypeOfERK11SQObjectPtrRS0_, .-_ZN4SQVM6TypeOfERK11SQObjectPtrRS0_
	.section	.text._ZN4SQVM4InitEPS_i,"ax",%progbits
	.align	2
	.global	_ZN4SQVM4InitEPS_i
	.thumb
	.thumb_func
	.type	_ZN4SQVM4InitEPS_i, %function
_ZN4SQVM4InitEPS_i:
	.fnstart
.LFB330:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #72
	sub	sp, sp, #72
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	add	r5, r3, #24
	ldr	r4, [r7, #4]
	add	r3, r7, #20
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	add	r3, r7, #20
	mov	r0, r5
	mov	r1, r4
	mov	r2, r3
.LEHB87:
	bl	_ZN8sqvectorI11SQObjectPtrE6resizeEjRKS0_(PLT)
.LEHE87:
	add	r3, r7, #20
	mov	r0, r3
.LEHB88:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE88:
	ldr	r3, [r7, #12]
	movs	r2, #4
	str	r2, [r3, #104]
	ldr	r3, [r7, #12]
	add	r5, r3, #108
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #104]
	mov	r4, r3
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #40]
	movs	r3, #0
	str	r3, [r7, #44]
	movs	r3, #0
	str	r3, [r7, #48]
	movs	r3, #0
	str	r3, [r7, #52]
	movs	r3, #0
	str	r3, [r7, #56]
	movs	r3, #0
	str	r3, [r7, #60]
	movs	r3, #0
	str	r3, [r7, #64]
	movs	r3, #0
	str	r3, [r7, #68]
	add	r3, r7, #28
	mov	r0, r3
	bl	_ZN4SQVM8CallInfoC1Ev(PLT)
	add	r3, r7, #28
	mov	r0, r5
	mov	r1, r4
	mov	r2, r3
.LEHB89:
	bl	_ZN8sqvectorIN4SQVM8CallInfoEE6resizeEjRKS1_(PLT)
.LEHE89:
	add	r3, r7, #28
	mov	r0, r3
.LEHB90:
	bl	_ZN4SQVM8CallInfoD1Ev(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #100]
	ldr	r3, [r7, #12]
	adds	r3, r3, #108
	mov	r0, r3
	movs	r1, #0
	bl	_ZNK8sqvectorIN4SQVM8CallInfoEEixEj(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #96]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #40]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #36]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L573
	ldr	r3, [r7, #12]
	add	r4, r3, #48
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #140]
	mov	r0, r3
	movs	r1, #0
	bl	_ZN7SQTable6CreateEP13SQSharedStatei(PLT)
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEP7SQTable(PLT)
	ldr	r0, [r7, #12]
	bl	_Z16sq_base_registerP4SQVM(PLT)
	b	.L574
.L573:
	ldr	r3, [r7, #12]
	add	r2, r3, #48
	ldr	r3, [r7, #8]
	adds	r3, r3, #48
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	ldr	r3, [r7, #12]
	add	r2, r3, #64
	ldr	r3, [r7, #8]
	adds	r3, r3, #64
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	ldr	r3, [r7, #8]
	ldrb	r2, [r3, #72]	@ zero_extendqisi2
	ldr	r3, [r7, #12]
	strb	r2, [r3, #72]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #76]
	ldr	r3, [r7, #12]
	str	r2, [r3, #76]
	ldr	r3, [r7, #12]
	add	r2, r3, #80
	ldr	r3, [r7, #8]
	adds	r3, r3, #80
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
.LEHE90:
.L574:
	movs	r3, #1
	b	.L580
.L578:
	add	r3, r7, #20
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB91:
	bl	__cxa_end_cleanup(PLT)
.LEHE91:
.L579:
	add	r3, r7, #28
	mov	r0, r3
	bl	_ZN4SQVM8CallInfoD1Ev(PLT)
.LEHB92:
	bl	__cxa_end_cleanup(PLT)
.LEHE92:
.L580:
	mov	r0, r3
	adds	r7, r7, #72
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA330:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE330-.LLSDACSB330
.LLSDACSB330:
	.uleb128 .LEHB87-.LFB330
	.uleb128 .LEHE87-.LEHB87
	.uleb128 .L578-.LFB330
	.uleb128 0
	.uleb128 .LEHB88-.LFB330
	.uleb128 .LEHE88-.LEHB88
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB89-.LFB330
	.uleb128 .LEHE89-.LEHB89
	.uleb128 .L579-.LFB330
	.uleb128 0
	.uleb128 .LEHB90-.LFB330
	.uleb128 .LEHE90-.LEHB90
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB91-.LFB330
	.uleb128 .LEHE91-.LEHB91
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB92-.LFB330
	.uleb128 .LEHE92-.LEHB92
	.uleb128 0
	.uleb128 0
.LLSDACSE330:
	.section	.text._ZN4SQVM4InitEPS_i
	.fnend
	.size	_ZN4SQVM4InitEPS_i, .-_ZN4SQVM4InitEPS_i
	.section	.rodata
	.align	2
.LC16:
	.ascii	"wrong number of parameters\000"
	.section	.text._ZN4SQVM9StartCallEP9SQClosureiiib,"ax",%progbits
	.align	2
	.global	_ZN4SQVM9StartCallEP9SQClosureiiib
	.thumb
	.thumb_func
	.type	_ZN4SQVM9StartCallEP9SQClosureiiib, %function
_ZN4SQVM9StartCallEP9SQClosureiiib:
	.fnstart
.LFB331:
	@ args = 8, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #80
	sub	sp, sp, #80
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #32]
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #76]
	str	r3, [r7, #52]
	ldr	r3, [r7, #56]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #88]
	add	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7]
	str	r3, [r7, #76]
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L582
	ldr	r3, [r7, #52]
	subs	r3, r3, #1
	str	r3, [r7, #52]
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bge	.L583
	ldr	r0, [r7, #12]
	ldr	r3, .L602
.LPIC39:
	add	r3, pc
	mov	r1, r3
.LEHB93:
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
	movs	r3, #0
	b	.L601
.L583:
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #52]
	subs	r3, r2, r3
	str	r3, [r7, #44]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #140]
	mov	r0, r3
	ldr	r1, [r7, #44]
	bl	_ZN7SQArray6CreateEP13SQSharedStatei(PLT)
	mov	r3, r0
	str	r3, [r7, #40]
	ldr	r2, [r7, #88]
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #72]
	movs	r3, #0
	str	r3, [r7, #68]
	b	.L585
.L586:
	ldr	r3, [r7, #40]
	add	r2, r3, #24
	ldr	r3, [r7, #68]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI11SQObjectPtrEixEj(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #24]
	ldr	r3, [r7, #72]
	lsls	r3, r3, #3
	add	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #72]
	lsls	r3, r3, #3
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
	ldr	r3, [r7, #72]
	adds	r3, r3, #1
	str	r3, [r7, #72]
	ldr	r3, [r7, #68]
	adds	r3, r3, #1
	str	r3, [r7, #68]
.L585:
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #44]
	cmp	r2, r3
	blt	.L586
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #24]
	ldr	r1, [r7, #88]
	ldr	r3, [r7, #52]
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r2
	mov	r0, r3
	ldr	r1, [r7, #40]
	bl	_ZN11SQObjectPtraSEP7SQArray(PLT)
	b	.L587
.L582:
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #76]
	cmp	r2, r3
	beq	.L587
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #100]
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L588
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bge	.L588
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #76]
	subs	r3, r2, r3
	str	r3, [r7, #64]
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bgt	.L588
	movs	r3, #1
	b	.L589
.L588:
	movs	r3, #0
.L589:
	cmp	r3, #0
	beq	.L590
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #64]
	subs	r3, r2, r3
	str	r3, [r7, #60]
	b	.L591
.L592:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #76]
	adds	r1, r3, #1
	str	r1, [r7, #76]
	ldr	r1, [r7, #88]
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r2, r2, r3
	ldr	r3, [r7, #8]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #60]
	lsls	r3, r3, #3
	add	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
.L591:
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	blt	.L592
	b	.L587
.L590:
	ldr	r0, [r7, #12]
	ldr	r3, .L602+4
.LPIC40:
	add	r3, pc
	mov	r1, r3
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
	movs	r3, #0
	b	.L601
.L587:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L594
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #88]
	lsls	r3, r3, #3
	add	r2, r2, r3
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #24]
	adds	r3, r3, #12
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERK11tagSQObject(PLT)
.L594:
	ldrb	r3, [r7, #92]	@ zero_extendqisi2
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #88]
	ldr	r2, [r7, #48]
	bl	_ZN4SQVM10EnterFrameEiib(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L595
	movs	r3, #0
	b	.L601
.L595:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #132]
	adds	r3, r3, #8
	mov	r0, r3
	ldr	r1, [r7, #8]
	bl	_ZN11SQObjectPtraSEP9SQClosure(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #132]
	ldr	r2, [r7, #56]
	ldr	r2, [r2, #72]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #132]
	ldr	r2, [r7, #56]
	adds	r2, r2, #112
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #132]
	ldr	r2, [r7, #4]
	str	r2, [r3, #32]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #72]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L596
	ldr	r0, [r7, #12]
	movs	r1, #99
	movs	r2, #0
	bl	_ZN4SQVM13CallDebugHookEii(PLT)
.L596:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #32]
	ldrb	r3, [r3, #44]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L597
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #32]
	str	r3, [r7, #32]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #140]
	mov	r0, r3
	ldr	r1, [r7, #8]
	bl	_ZN11SQGenerator6CreateEP13SQSharedStateP9SQClosure(PLT)
	mov	r3, r0
	str	r3, [r7, #28]
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #40]
	ldr	r0, [r7, #28]
	ldr	r1, [r7, #12]
	mov	r2, r3
	bl	_ZN11SQGenerator5YieldEP4SQVMi(PLT)
.LEHE93:
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L598
	movs	r3, #0
	b	.L601
.L598:
	add	r3, r7, #20
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	movs	r1, #1
	ldr	r2, [r7, #4]
.LEHB94:
	bl	_ZN4SQVM6ReturnEiiR11SQObjectPtr(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #4]
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r2
	mov	r0, r3
	ldr	r1, [r7, #28]
	bl	_ZN11SQObjectPtraSEP11SQGenerator(PLT)
.LEHE94:
	add	r3, r7, #20
	mov	r0, r3
.LEHB95:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE95:
.L597:
	movs	r3, #1
	b	.L601
.L600:
	add	r3, r7, #20
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB96:
	bl	__cxa_end_cleanup(PLT)
.LEHE96:
.L601:
	mov	r0, r3
	adds	r7, r7, #80
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L603:
	.align	2
.L602:
	.word	.LC16-(.LPIC39+4)
	.word	.LC16-(.LPIC40+4)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA331:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE331-.LLSDACSB331
.LLSDACSB331:
	.uleb128 .LEHB93-.LFB331
	.uleb128 .LEHE93-.LEHB93
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB94-.LFB331
	.uleb128 .LEHE94-.LEHB94
	.uleb128 .L600-.LFB331
	.uleb128 0
	.uleb128 .LEHB95-.LFB331
	.uleb128 .LEHE95-.LEHB95
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB96-.LFB331
	.uleb128 .LEHE96-.LEHB96
	.uleb128 0
	.uleb128 0
.LLSDACSE331:
	.section	.text._ZN4SQVM9StartCallEP9SQClosureiiib
	.fnend
	.size	_ZN4SQVM9StartCallEP9SQClosureiiib, .-_ZN4SQVM9StartCallEP9SQClosureiiib
	.section	.text._ZN4SQVM6ReturnEiiR11SQObjectPtr,"ax",%progbits
	.align	2
	.global	_ZN4SQVM6ReturnEiiR11SQObjectPtr
	.thumb
	.thumb_func
	.type	_ZN4SQVM6ReturnEiiR11SQObjectPtr, %function
_ZN4SQVM6ReturnEiiR11SQObjectPtr:
	.fnstart
.LFB332:
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
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #132]
	ldr	r3, [r3, #40]
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #132]
	ldr	r3, [r3, #24]
	subs	r3, r2, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #72]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L605
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L606
.L607:
	ldr	r0, [r7, #12]
	movs	r1, #114
	movs	r2, #0
	bl	_ZN4SQVM13CallDebugHookEii(PLT)
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L606:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #132]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bgt	.L607
.L605:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L608
	ldr	r3, [r7]
	str	r3, [r7, #24]
	b	.L609
.L608:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #132]
	ldr	r3, [r3, #32]
	cmp	r3, #-1
	bne	.L610
	movs	r3, #0
	str	r3, [r7, #24]
	b	.L609
.L610:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #132]
	ldr	r1, [r3, #32]
	ldr	r3, [r7, #16]
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #24]
.L609:
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L611
	ldr	r3, [r7, #8]
	cmp	r3, #255
	beq	.L612
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #4]
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r0, [r7, #24]
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	b	.L611
.L612:
	ldr	r0, [r7, #24]
	bl	_ZN11SQObjectPtr4NullEv(PLT)
.L611:
	ldr	r0, [r7, #12]
	bl	_ZN4SQVM10LeaveFrameEv(PLT)
	ldr	r3, [r7, #20]
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN4SQVM6ReturnEiiR11SQObjectPtr, .-_ZN4SQVM6ReturnEiiR11SQObjectPtr
	.section	.text._ZN4SQVM10PLOCAL_INCEiR11SQObjectPtrS1_S1_,"ax",%progbits
	.align	2
	.global	_ZN4SQVM10PLOCAL_INCEiR11SQObjectPtrS1_S1_
	.thumb
	.thumb_func
	.type	_ZN4SQVM10PLOCAL_INCEiR11SQObjectPtrS1_S1_, %function
_ZN4SQVM10PLOCAL_INCEiR11SQObjectPtrS1_S1_:
	.fnstart
.LFB333:
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
	str	r2, [r7, #4]
	str	r3, [r7]
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r2, [r7, #8]
	add	r3, r7, #16
	ldr	r1, [r7, #40]
	str	r1, [sp]
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [r7]
.LEHB97:
	bl	_ZN4SQVM8ARITH_OPEjR11SQObjectPtrRKS0_S3_(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L616
	movs	r4, #0
	b	.L617
.L616:
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	add	r3, r7, #16
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
.LEHE97:
	movs	r4, #1
.L617:
	add	r3, r7, #16
	mov	r0, r3
.LEHB98:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE98:
	mov	r3, r4
	b	.L621
.L620:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB99:
	bl	__cxa_end_cleanup(PLT)
.LEHE99:
.L621:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA333:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE333-.LLSDACSB333
.LLSDACSB333:
	.uleb128 .LEHB97-.LFB333
	.uleb128 .LEHE97-.LEHB97
	.uleb128 .L620-.LFB333
	.uleb128 0
	.uleb128 .LEHB98-.LFB333
	.uleb128 .LEHE98-.LEHB98
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB99-.LFB333
	.uleb128 .LEHE99-.LEHB99
	.uleb128 0
	.uleb128 0
.LLSDACSE333:
	.section	.text._ZN4SQVM10PLOCAL_INCEiR11SQObjectPtrS1_S1_
	.fnend
	.size	_ZN4SQVM10PLOCAL_INCEiR11SQObjectPtrS1_S1_, .-_ZN4SQVM10PLOCAL_INCEiR11SQObjectPtrS1_S1_
	.section	.text._ZN4SQVM8DerefIncEiR11SQObjectPtrS1_S1_S1_bi,"ax",%progbits
	.align	2
	.global	_ZN4SQVM8DerefIncEiR11SQObjectPtrS1_S1_S1_bi
	.thumb
	.thumb_func
	.type	_ZN4SQVM8DerefIncEiR11SQObjectPtrS1_S1_S1_bi, %function
_ZN4SQVM8DerefIncEiR11SQObjectPtrS1_S1_S1_bi:
	.fnstart
.LFB334:
	@ args = 16, pretend = 0, frame = 40
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
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	add	r3, r7, #24
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN11SQObjectPtrC1ERKS_(PLT)
	add	r3, r7, #16
	mov	r0, r3
	ldr	r1, [r7, #56]
	bl	_ZN11SQObjectPtrC1ERKS_(PLT)
	add	r1, r7, #24
	add	r2, r7, #16
	add	r3, r7, #32
	movs	r0, #0
	str	r0, [sp]
	ldr	r0, [r7, #68]
	str	r0, [sp, #4]
	ldr	r0, [r7, #12]
.LEHB100:
	bl	_ZN4SQVM3GetERK11SQObjectPtrS2_RS0_bi(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L623
	movs	r4, #0
	b	.L624
.L623:
	ldr	r2, [r7, #8]
	add	r3, r7, #32
	ldr	r1, [r7, #60]
	str	r1, [sp]
	ldr	r0, [r7, #12]
	mov	r1, r2
	ldr	r2, [r7, #4]
	bl	_ZN4SQVM8ARITH_OPEjR11SQObjectPtrRKS0_S3_(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L625
	movs	r4, #0
	b	.L624
.L625:
	add	r2, r7, #24
	add	r3, r7, #16
	ldr	r1, [r7, #68]
	str	r1, [sp]
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [r7, #4]
	bl	_ZN4SQVM3SetERK11SQObjectPtrS2_S2_i(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L626
	movs	r4, #0
	b	.L624
.L626:
	ldrb	r3, [r7, #64]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L627
	add	r3, r7, #32
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
.LEHE100:
.L627:
	movs	r4, #1
.L624:
	add	r3, r7, #16
	mov	r0, r3
.LEHB101:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE101:
	add	r3, r7, #24
	mov	r0, r3
.LEHB102:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE102:
	add	r3, r7, #32
	mov	r0, r3
.LEHB103:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE103:
	mov	r3, r4
	b	.L635
.L634:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L630
.L633:
.L630:
	add	r3, r7, #24
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L631
.L632:
.L631:
	add	r3, r7, #32
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB104:
	bl	__cxa_end_cleanup(PLT)
.LEHE104:
.L635:
	mov	r0, r3
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA334:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE334-.LLSDACSB334
.LLSDACSB334:
	.uleb128 .LEHB100-.LFB334
	.uleb128 .LEHE100-.LEHB100
	.uleb128 .L634-.LFB334
	.uleb128 0
	.uleb128 .LEHB101-.LFB334
	.uleb128 .LEHE101-.LEHB101
	.uleb128 .L633-.LFB334
	.uleb128 0
	.uleb128 .LEHB102-.LFB334
	.uleb128 .LEHE102-.LEHB102
	.uleb128 .L632-.LFB334
	.uleb128 0
	.uleb128 .LEHB103-.LFB334
	.uleb128 .LEHE103-.LEHB103
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB104-.LFB334
	.uleb128 .LEHE104-.LEHB104
	.uleb128 0
	.uleb128 0
.LLSDACSE334:
	.section	.text._ZN4SQVM8DerefIncEiR11SQObjectPtrS1_S1_S1_bi
	.fnend
	.size	_ZN4SQVM8DerefIncEiR11SQObjectPtrS1_S1_S1_bi, .-_ZN4SQVM8DerefIncEiR11SQObjectPtrS1_S1_S1_bi
	.section	.rodata
	.align	2
.LC17:
	.ascii	"cannot suspend an already suspended vm\000"
	.align	2
.LC18:
	.ascii	"cannot suspend through native calls/metamethods\000"
	.section	.text._ZN4SQVM7SuspendEv,"ax",%progbits
	.align	2
	.global	_ZN4SQVM7SuspendEv
	.thumb
	.thumb_func
	.type	_ZN4SQVM7SuspendEv, %function
_ZN4SQVM7SuspendEv:
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
	ldr	r3, [r3, #152]
	cmp	r3, #0
	beq	.L637
	ldr	r0, [r7, #4]
	ldr	r3, .L640
.LPIC41:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L638
.L637:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #144]
	cmp	r3, #2
	beq	.L639
	ldr	r0, [r7, #4]
	ldr	r3, .L640+4
.LPIC42:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L638
.L639:
	movw	r3, #64870
	movt	r3, 65535
.L638:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L641:
	.align	2
.L640:
	.word	.LC17-(.LPIC41+4)
	.word	.LC18-(.LPIC42+4)
	.fnend
	.size	_ZN4SQVM7SuspendEv, .-_ZN4SQVM7SuspendEv
	.section	.rodata
	.align	2
.LC19:
	.ascii	"_nexti returned an invalid idx\000"
	.align	2
.LC20:
	.ascii	"_nexti failed\000"
	.align	2
.LC21:
	.ascii	"cannot iterate %s\000"
	.section	.text._ZN4SQVM10FOREACH_OPER11SQObjectPtrS1_S1_S1_iiRi,"ax",%progbits
	.align	2
	.global	_ZN4SQVM10FOREACH_OPER11SQObjectPtrS1_S1_S1_iiRi
	.thumb
	.thumb_func
	.type	_ZN4SQVM10FOREACH_OPER11SQObjectPtrS1_S1_S1_iiRi, %function
_ZN4SQVM10FOREACH_OPER11SQObjectPtrS1_S1_S1_iiRi:
	.fnstart
.LFB336:
	@ args = 16, pretend = 0, frame = 40
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
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	mov	r2, #16384
	movt	r2, 2048
	cmp	r3, r2
	beq	.L644
	mov	r2, #16384
	movt	r2, 2048
	cmp	r3, r2
	bgt	.L645
	movs	r2, #64
	movt	r2, 2048
	cmp	r3, r2
	beq	.L646
	mov	r2, #1024
	movt	r2, 2048
	cmp	r3, r2
	beq	.L647
	movs	r2, #16
	movt	r2, 2048
	cmp	r3, r2
	beq	.L648
	b	.L643
.L645:
	movs	r2, #128
	movt	r2, 2560
	cmp	r3, r2
	beq	.L649
	mov	r2, #32768
	movt	r2, 2560
	cmp	r3, r2
	beq	.L649
	movs	r2, #32
	movt	r2, 2560
	cmp	r3, r2
	bne	.L643
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	ldr	r2, [r7]
	str	r2, [sp]
	mov	r0, r3
	movs	r1, #0
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #4]
.LEHB105:
	bl	_ZN7SQTable4NextEbRK11SQObjectPtrRS0_S3_(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #-1
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L651
	ldr	r3, [r7, #68]
	ldr	r2, [r7, #64]
	str	r2, [r3]
	movs	r4, #1
	b	.L652
.L651:
	ldr	r0, [r7, #56]
	ldr	r1, [r7, #32]
	bl	_ZN11SQObjectPtraSEi(PLT)
	ldr	r3, [r7, #68]
	movs	r2, #1
	str	r2, [r3]
	movs	r4, #1
	b	.L652
.L646:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r1, [r7, #56]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	_ZN7SQArray4NextERK11SQObjectPtrRS0_S3_(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #-1
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L653
	ldr	r3, [r7, #68]
	ldr	r2, [r7, #64]
	str	r2, [r3]
	movs	r4, #1
	b	.L652
.L653:
	ldr	r0, [r7, #56]
	ldr	r1, [r7, #32]
	bl	_ZN11SQObjectPtraSEi(PLT)
	ldr	r3, [r7, #68]
	movs	r2, #1
	str	r2, [r3]
	movs	r4, #1
	b	.L652
.L648:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r1, [r7, #56]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	_ZN8SQString4NextERK11SQObjectPtrRS0_S3_(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #-1
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L654
	ldr	r3, [r7, #68]
	ldr	r2, [r7, #64]
	str	r2, [r3]
	movs	r4, #1
	b	.L652
.L654:
	ldr	r0, [r7, #56]
	ldr	r1, [r7, #32]
	bl	_ZN11SQObjectPtraSEi(PLT)
	ldr	r3, [r7, #68]
	movs	r2, #1
	str	r2, [r3]
	movs	r4, #1
	b	.L652
.L644:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r1, [r7, #56]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	_ZN7SQClass4NextERK11SQObjectPtrRS0_S3_(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #-1
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L655
	ldr	r3, [r7, #68]
	ldr	r2, [r7, #64]
	str	r2, [r3]
	movs	r4, #1
	b	.L652
.L655:
	ldr	r0, [r7, #56]
	ldr	r1, [r7, #32]
	bl	_ZN11SQObjectPtraSEi(PLT)
.LEHE105:
	ldr	r3, [r7, #68]
	movs	r2, #1
	str	r2, [r3]
	movs	r4, #1
	b	.L652
.L649:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L656
	add	r3, r7, #24
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	adds	r3, r3, #24
	ldr	r4, [r3]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	add	r3, r7, #16
	mov	r0, r2
	ldr	r1, [r7, #12]
	movs	r2, #9
.LEHB106:
	blx	r4
	mov	r3, r0
	cmp	r3, #0
	beq	.L657
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #56]
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	add	r3, r7, #16
	add	r2, r7, #24
	str	r2, [sp]
	ldr	r0, [r7, #12]
	mov	r1, r3
	movs	r2, #9
	movs	r3, #2
	bl	_ZN4SQVM14CallMetaMethodER11SQObjectPtr12SQMetaMethodiS1_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L658
	add	r3, r7, #24
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	mov	r3, r0
	ldr	r0, [r7, #56]
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	ldr	r2, [r7, #24]
	movs	r3, #1
	movt	r3, 256
	cmp	r2, r3
	bne	.L659
	ldr	r3, [r7, #68]
	ldr	r2, [r7, #64]
	str	r2, [r3]
	movs	r4, #1
	b	.L660
.L659:
	add	r3, r7, #24
	movs	r2, #0
	str	r2, [sp]
	movw	r2, #666
	str	r2, [sp, #4]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	mov	r2, r3
	ldr	r3, [r7]
	bl	_ZN4SQVM3GetERK11SQObjectPtrS2_RS0_bi(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L661
	ldr	r0, [r7, #12]
	ldr	r3, .L670
.LPIC43:
	add	r3, pc
	mov	r1, r3
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
	movs	r4, #0
	b	.L660
.L661:
	ldr	r3, [r7, #68]
	movs	r2, #1
	str	r2, [r3]
	movs	r4, #1
	b	.L660
.L658:
	movs	r4, #0
	b	.L660
.L657:
	ldr	r0, [r7, #12]
	ldr	r3, .L670+4
.LPIC44:
	add	r3, pc
	mov	r1, r3
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
.LEHE106:
	movs	r4, #0
.L660:
	add	r3, r7, #16
	mov	r0, r3
.LEHB107:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE107:
	add	r3, r7, #24
	mov	r0, r3
.LEHB108:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L652
.L656:
	b	.L662
.L647:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #100]
	cmp	r3, #2
	bne	.L663
	ldr	r3, [r7, #68]
	ldr	r2, [r7, #64]
	str	r2, [r3]
	movs	r4, #1
	b	.L652
.L663:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #100]
	cmp	r3, #1
	bne	.L643
	movs	r3, #0
	str	r3, [r7, #36]
	ldr	r3, [r7, #56]
	ldr	r2, [r3]
	movs	r3, #2
	movt	r3, 1280
	cmp	r2, r3
	bne	.L664
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #4]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L664:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	_ZN11SQObjectPtraSEi(PLT)
	ldr	r0, [r7, #56]
	ldr	r1, [r7, #36]
	bl	_ZN11SQObjectPtraSEi(PLT)
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r1, [r7, #12]
	ldr	r2, [r7]
	bl	_ZN11SQGenerator6ResumeEP4SQVMR11SQObjectPtr(PLT)
	ldr	r3, [r7, #68]
	movs	r2, #0
	str	r2, [r3]
	movs	r4, #1
	b	.L652
.L643:
	ldr	r0, [r7, #8]
	bl	_Z11GetTypeNameRK11SQObjectPtr(PLT)
	mov	r3, r0
	ldr	r0, [r7, #12]
	ldr	r2, .L670+8
.LPIC45:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
.LEHE108:
.L662:
	movs	r4, #0
.L652:
	mov	r3, r4
	b	.L669
.L668:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L666
.L667:
.L666:
	add	r3, r7, #24
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB109:
	bl	__cxa_end_cleanup(PLT)
.LEHE109:
.L669:
	mov	r0, r3
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L671:
	.align	2
.L670:
	.word	.LC19-(.LPIC43+4)
	.word	.LC20-(.LPIC44+4)
	.word	.LC21-(.LPIC45+4)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA336:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE336-.LLSDACSB336
.LLSDACSB336:
	.uleb128 .LEHB105-.LFB336
	.uleb128 .LEHE105-.LEHB105
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB106-.LFB336
	.uleb128 .LEHE106-.LEHB106
	.uleb128 .L668-.LFB336
	.uleb128 0
	.uleb128 .LEHB107-.LFB336
	.uleb128 .LEHE107-.LEHB107
	.uleb128 .L667-.LFB336
	.uleb128 0
	.uleb128 .LEHB108-.LFB336
	.uleb128 .LEHE108-.LEHB108
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB109-.LFB336
	.uleb128 .LEHE109-.LEHB109
	.uleb128 0
	.uleb128 0
.LLSDACSE336:
	.section	.text._ZN4SQVM10FOREACH_OPER11SQObjectPtrS1_S1_S1_iiRi
	.fnend
	.size	_ZN4SQVM10FOREACH_OPER11SQObjectPtrS1_S1_S1_iiRi, .-_ZN4SQVM10FOREACH_OPER11SQObjectPtrS1_S1_S1_iiRi
	.section	.text._ZN4SQVM10CLOSURE_OPER11SQObjectPtrP15SQFunctionProto,"ax",%progbits
	.align	2
	.global	_ZN4SQVM10CLOSURE_OPER11SQObjectPtrP15SQFunctionProto
	.thumb
	.thumb_func
	.type	_ZN4SQVM10CLOSURE_OPER11SQObjectPtrP15SQFunctionProto, %function
_ZN4SQVM10CLOSURE_OPER11SQObjectPtrP15SQFunctionProto:
	.fnstart
.LFB337:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #48
	sub	sp, sp, #48
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #140]
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	_ZN9SQClosure6CreateEP13SQSharedStateP15SQFunctionProto(PLT)
	mov	r3, r0
	str	r3, [r7, #36]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #92]
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L673
	movs	r3, #0
	str	r3, [r7, #44]
	b	.L674
.L678:
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #96]
	ldr	r2, [r7, #44]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L676
	cmp	r3, #1
	beq	.L677
	b	.L675
.L676:
	ldr	r3, [r7, #36]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #44]
	lsls	r3, r3, #3
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #24]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #16]
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	bl	_ZN4SQVM9FindOuterER11SQObjectPtrPS0_(PLT)
	b	.L675
.L677:
	ldr	r3, [r7, #36]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #44]
	lsls	r3, r3, #3
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #132]
	ldr	r3, [r3, #12]
	ldr	r1, [r3, #36]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #16]
	lsls	r3, r3, #3
	add	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	nop
.L675:
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	str	r3, [r7, #44]
.L674:
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	blt	.L678
.L673:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L679
	movs	r3, #0
	str	r3, [r7, #40]
	b	.L680
.L681:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #104]
	ldr	r3, [r7, #40]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r3, [r7, #36]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #40]
	lsls	r3, r3, #3
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #24]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #20]
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	str	r3, [r7, #40]
.L680:
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	blt	.L681
.L679:
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #36]
	bl	_ZN11SQObjectPtraSEP9SQClosure(PLT)
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN4SQVM10CLOSURE_OPER11SQObjectPtrP15SQFunctionProto, .-_ZN4SQVM10CLOSURE_OPER11SQObjectPtrP15SQFunctionProto
	.section	.rodata
	.align	2
.LC22:
	.ascii	"trying to inherit from a %s\000"
	.section	.text._ZN4SQVM8CLASS_OPER11SQObjectPtrii,"ax",%progbits
	.align	2
	.global	_ZN4SQVM8CLASS_OPER11SQObjectPtrii
	.thumb
	.thumb_func
	.type	_ZN4SQVM8CLASS_OPER11SQObjectPtrii, %function
_ZN4SQVM8CLASS_OPER11SQObjectPtrii:
	.fnstart
.LFB338:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #48
	sub	sp, sp, #48
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #36]
	add	r3, r7, #24
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #4]
	cmp	r3, #-1
	beq	.L684
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #4]
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r3]
	mov	r3, #16384
	movt	r3, 2048
	cmp	r2, r3
	beq	.L685
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #4]
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r2
	mov	r0, r3
.LEHB110:
	bl	_Z11GetTypeNameRK11SQObjectPtr(PLT)
	mov	r3, r0
	ldr	r0, [r7, #12]
	ldr	r2, .L700
.LPIC46:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
	movs	r4, #0
	b	.L686
.L685:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #4]
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	str	r3, [r7, #36]
.L684:
	ldr	r3, [r7]
	cmp	r3, #255
	beq	.L687
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #40]
	ldr	r3, [r7]
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r2
	add	r2, r7, #24
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
.L687:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #140]
	mov	r0, r3
	ldr	r1, [r7, #36]
	bl	_ZN7SQClass6CreateEP13SQSharedStatePS_(PLT)
	mov	r3, r0
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEP7SQClass(PLT)
.LEHE110:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #192]
	movs	r3, #1
	movt	r3, 256
	cmp	r2, r3
	beq	.L688
	movs	r3, #2
	str	r3, [r7, #32]
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
.LEHB111:
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	add	r3, r7, #24
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	add	r2, r3, #192
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #36]
	ldr	r3, [r7, #32]
	subs	r3, r1, r3
	add	r1, r7, #16
	str	r1, [sp]
	movs	r1, #0
	str	r1, [sp, #4]
	ldr	r0, [r7, #12]
	mov	r1, r2
	ldr	r2, [r7, #32]
	bl	_ZN4SQVM4CallER11SQObjectPtriiS1_j(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L689
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #32]
	bl	_ZN4SQVM3PopEi(PLT)
	movs	r4, #0
	movs	r5, #0
	b	.L690
.L689:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #32]
	bl	_ZN4SQVM3PopEi(PLT)
.LEHE111:
	movs	r5, #1
.L690:
	add	r3, r7, #16
	mov	r0, r3
.LEHB112:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	cmp	r5, #1
	bne	.L686
	nop
.L688:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	add	r2, r3, #200
	add	r3, r7, #24
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
.LEHE112:
	movs	r4, #1
.L686:
	add	r3, r7, #24
	mov	r0, r3
.LEHB113:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE113:
	mov	r3, r4
	b	.L699
.L697:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L695
.L696:
.L695:
	add	r3, r7, #24
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB114:
	bl	__cxa_end_cleanup(PLT)
.LEHE114:
.L699:
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L701:
	.align	2
.L700:
	.word	.LC22-(.LPIC46+4)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA338:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE338-.LLSDACSB338
.LLSDACSB338:
	.uleb128 .LEHB110-.LFB338
	.uleb128 .LEHE110-.LEHB110
	.uleb128 .L696-.LFB338
	.uleb128 0
	.uleb128 .LEHB111-.LFB338
	.uleb128 .LEHE111-.LEHB111
	.uleb128 .L697-.LFB338
	.uleb128 0
	.uleb128 .LEHB112-.LFB338
	.uleb128 .LEHE112-.LEHB112
	.uleb128 .L696-.LFB338
	.uleb128 0
	.uleb128 .LEHB113-.LFB338
	.uleb128 .LEHE113-.LEHB113
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB114-.LFB338
	.uleb128 .LEHE114-.LEHB114
	.uleb128 0
	.uleb128 0
.LLSDACSE338:
	.section	.text._ZN4SQVM8CLASS_OPER11SQObjectPtrii
	.fnend
	.size	_ZN4SQVM8CLASS_OPER11SQObjectPtrii, .-_ZN4SQVM8CLASS_OPER11SQObjectPtrii
	.section	.text._ZN4SQVM7IsEqualERK11SQObjectPtrS2_Rb,"ax",%progbits
	.align	2
	.global	_ZN4SQVM7IsEqualERK11SQObjectPtrS2_Rb
	.thumb
	.thumb_func
	.type	_ZN4SQVM7IsEqualERK11SQObjectPtrS2_Rb, %function
_ZN4SQVM7IsEqualERK11SQObjectPtrS2_Rb:
	.fnstart
.LFB339:
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
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L703
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3]
	b	.L704
.L703:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	and	r3, r3, #67108864
	cmp	r3, #0
	beq	.L705
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	and	r3, r3, #67108864
	cmp	r3, #0
	beq	.L705
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	movs	r3, #2
	movt	r3, 1280
	cmp	r2, r3
	bne	.L706
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	fmsr	s13, r3	@ int
	fsitos	s14, s13
	b	.L707
.L706:
	ldr	r3, [r7, #12]
	flds	s14, [r3, #4]
.L707:
	ldr	r3, [r7, #8]
	ldr	r2, [r3]
	movs	r3, #2
	movt	r3, 1280
	cmp	r2, r3
	bne	.L708
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	fmsr	s13, r3	@ int
	fsitos	s15, s13
	b	.L709
.L708:
	ldr	r3, [r7, #8]
	flds	s15, [r3, #4]
.L709:
	fcmps	s14, s15
	fmstat
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3]
	b	.L704
.L705:
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3]
.L704:
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN4SQVM7IsEqualERK11SQObjectPtrS2_Rb, .-_ZN4SQVM7IsEqualERK11SQObjectPtrS2_Rb
	.section	.text._ZN4SQVM7IsFalseER11SQObjectPtr,"ax",%progbits
	.align	2
	.global	_ZN4SQVM7IsFalseER11SQObjectPtr
	.thumb
	.thumb_func
	.type	_ZN4SQVM7IsFalseER11SQObjectPtr, %function
_ZN4SQVM7IsFalseER11SQObjectPtr:
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
	and	r3, r3, #16777216
	cmp	r3, #0
	beq	.L712
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	movs	r3, #4
	movt	r3, 1280
	cmp	r2, r3
	bne	.L712
	ldr	r3, [r7, #4]
	flds	s15, [r3, #4]
	fcmpzs	s15
	fmstat
	beq	.L713
.L712:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L714
.L713:
	movs	r3, #1
	b	.L715
.L714:
	movs	r3, #0
.L715:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN4SQVM7IsFalseER11SQObjectPtr, .-_ZN4SQVM7IsFalseER11SQObjectPtr
	.section	.rodata
	.align	2
.LC23:
	.ascii	"Native stack overflow\000"
	.align	2
.LC24:
	.ascii	"attempt to call '%s'\000"
	.align	2
.LC25:
	.ascii	"traps==0\000"
	.align	2
.LC26:
	.ascii	"cannot apply instanceof between a %s and a %s\000"
	.align	2
.LC27:
	.ascii	"attempt to perform a bitwise op on a %s\000"
	.align	2
.LC28:
	.ascii	"trying to yield a '%s',only genenerator can be yiel"
	.ascii	"ded\000"
	.align	2
.LC29:
	.ascii	"traps == 0\000"
	.align	2
.LC30:
	.ascii	"trying to resume a '%s',only genenerator can be res"
	.ascii	"umed\000"
	.align	2
.LC31:
	.ascii	"((_stack._vals[_stackbase+((_i_._arg0))])._type) =="
	.ascii	" OT_GENERATOR\000"
	.section	.text._ZN4SQVM7ExecuteER11SQObjectPtriiS1_jNS_13ExecutionTypeE,"ax",%progbits
	.align	2
	.global	_ZN4SQVM7ExecuteER11SQObjectPtriiS1_jNS_13ExecutionTypeE
	.thumb
	.thumb_func
	.type	_ZN4SQVM7ExecuteER11SQObjectPtriiS1_jNS_13ExecutionTypeE, %function
_ZN4SQVM7ExecuteER11SQObjectPtriiS1_jNS_13ExecutionTypeE:
	.fnstart
.LFB341:
	@ args = 12, pretend = 0, frame = 280
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	.save {r4, r5, r6, r7, r8, lr}
	.pad #296
	sub	sp, sp, #296
	.setfp r7, sp, #16
	add	r7, sp, #16
	add	r5, r7, #12
	str	r0, [r5]
	add	r0, r7, #8
	str	r1, [r0]
	adds	r1, r7, #4
	str	r2, [r1]
	mov	r2, r7
	str	r3, [r2]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #144]
	adds	r3, r3, #1
	cmp	r3, #100
	ble	.L717
	add	r3, r7, #12
	ldr	r0, [r3]
	ldr	r3, .L1035
.LPIC47:
	add	r3, pc
	mov	r1, r3
.LEHB115:
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
.LEHE115:
	movs	r4, #0
	b	.L991
.L717:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #144]
	adds	r2, r3, #1
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #144]
	add	r3, r7, #12
	ldr	r3, [r3]
	adds	r3, r3, #144
	add	r2, r7, #112
	mov	r0, r2
	mov	r1, r3
	bl	_ZN7AutoDecC1EPi(PLT)
	movs	r3, #0
	str	r3, [r7, #276]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #132]
	str	r3, [r7, #248]
	ldr	r3, [r7, #312]
	cmp	r3, #3
	bhi	.L719
	adr	r1, .L721
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L721:
	.word	.L720+1-.L721
	.word	.L722+1-.L721
	.word	.L723+1-.L721
	.word	.L723+1-.L721
.L720:
	add	r3, r7, #12
	ldr	r3, [r3]
	add	r2, r3, #88
	add	r3, r7, #8
	mov	r0, r2
	ldr	r1, [r3]
.LEHB116:
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #92]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #36]
	adds	r3, r7, #4
	ldr	r3, [r3]
	subs	r2, r2, r3
	add	r0, r7, #12
	adds	r3, r7, #4
	mov	r5, r7
	ldr	r5, [r5]
	str	r5, [sp]
	movs	r5, #0
	str	r5, [sp, #4]
	ldr	r0, [r0]
	ldr	r3, [r3]
	bl	_ZN4SQVM9StartCallEP9SQClosureiiib(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L724
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #132]
	cmp	r3, #0
	bne	.L725
	add	r3, r7, #12
	ldr	r3, [r3]
	adds	r3, r3, #56
	add	r2, r7, #12
	ldr	r0, [r2]
	mov	r1, r3
	bl	_ZN4SQVM16CallErrorHandlerER11SQObjectPtr(PLT)
.L725:
	movs	r4, #0
	b	.L726
.L724:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #132]
	ldr	r3, [r7, #248]
	cmp	r2, r3
	bne	.L727
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #36]
	adds	r3, r7, #4
	ldr	r3, [r3]
	subs	r3, r0, r3
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r0, [r7, #304]
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	movs	r4, #1
	b	.L726
.L727:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #132]
	movs	r2, #1
	str	r2, [r3, #40]
	b	.L719
.L722:
	add	r3, r7, #8
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	add	r3, r7, #12
	mov	r0, r2
	ldr	r1, [r3]
	ldr	r2, [r7, #304]
	bl	_ZN11SQGenerator6ResumeEP4SQVMR11SQObjectPtr(PLT)
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #132]
	movs	r2, #1
	str	r2, [r3, #40]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #132]
	ldr	r3, [r3, #20]
	ldr	r2, [r7, #276]
	add	r3, r3, r2
	str	r3, [r7, #276]
	b	.L719
.L723:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #164]
	str	r3, [r7, #276]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #132]
	add	r2, r7, #12
	ldr	r2, [r2]
	ldr	r2, [r2, #156]
	str	r2, [r3, #40]
	add	r3, r7, #12
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [r3, #152]
	ldr	r3, [r7, #312]
	cmp	r3, #3
	bne	.L728
	b	.L729
.L728:
	b	.L719
.L1033:
	nop
.L719:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #132]
	ldr	r3, [r2]
	add	r1, r3, #8
	str	r1, [r2]
	str	r3, [r7, #244]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	cmp	r3, #60
	bhi	.L1033
	adr	r1, .L732
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L732:
	.word	.L731+1-.L732
	.word	.L733+1-.L732
	.word	.L734+1-.L732
	.word	.L735+1-.L732
	.word	.L736+1-.L732
	.word	.L737+1-.L732
	.word	.L738+1-.L732
	.word	.L739+1-.L732
	.word	.L739+1-.L732
	.word	.L740+1-.L732
	.word	.L741+1-.L732
	.word	.L742+1-.L732
	.word	.L743+1-.L732
	.word	.L744+1-.L732
	.word	.L745+1-.L732
	.word	.L746+1-.L732
	.word	.L747+1-.L732
	.word	.L748+1-.L732
	.word	.L749+1-.L732
	.word	.L750+1-.L732
	.word	.L751+1-.L732
	.word	.L752+1-.L732
	.word	.L753+1-.L732
	.word	.L754+1-.L732
	.word	.L755+1-.L732
	.word	.L756+1-.L732
	.word	.L757+1-.L732
	.word	.L758+1-.L732
	.word	.L759+1-.L732
	.word	.L760+1-.L732
	.word	.L761+1-.L732
	.word	.L762+1-.L732
	.word	.L763+1-.L732
	.word	.L764+1-.L732
	.word	.L765+1-.L732
	.word	.L766+1-.L732
	.word	.L767+1-.L732
	.word	.L768+1-.L732
	.word	.L769+1-.L732
	.word	.L770+1-.L732
	.word	.L771+1-.L732
	.word	.L772+1-.L732
	.word	.L773+1-.L732
	.word	.L774+1-.L732
	.word	.L775+1-.L732
	.word	.L776+1-.L732
	.word	.L777+1-.L732
	.word	.L778+1-.L732
	.word	.L779+1-.L732
	.word	.L780+1-.L732
	.word	.L781+1-.L732
	.word	.L782+1-.L732
	.word	.L783+1-.L732
	.word	.L784+1-.L732
	.word	.L785+1-.L732
	.word	.L786+1-.L732
	.word	.L787+1-.L732
	.word	.L788+1-.L732
	.word	.L789+1-.L732
	.word	.L790+1-.L732
	.word	.L791+1-.L732
.L731:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldrb	r3, [r3, #72]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L792
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r2, r7, #12
	ldr	r0, [r2]
	movs	r1, #108
	mov	r2, r3
	bl	_ZN4SQVM13CallDebugHookEii(PLT)
.L792:
	b	.L730
.L733:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #132]
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	lsls	r3, r3, #3
	add	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	b	.L730
.L734:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r2, r2, r3
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEi(PLT)
	b	.L730
.L735:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r7, #244]
	flds	s15, [r2]
	mov	r0, r3
	fcpys	s0, s15
	bl	_ZN11SQObjectPtraSEf(PLT)
	b	.L730
.L736:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #132]
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	lsls	r3, r3, #3
	add	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #132]
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	lsls	r3, r3, #3
	add	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
.LEHE116:
	b	.L730
.L737:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #240]
	ldr	r3, [r7, #240]
	ldr	r2, [r3]
	mov	r3, #256
	movt	r3, 2048
	cmp	r2, r3
	bne	.L738
	ldr	r3, [r7, #240]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #32]
	ldrb	r3, [r3, #44]	@ zero_extendqisi2
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L738
	add	r3, r7, #104
	mov	r0, r3
	ldr	r1, [r7, #240]
	bl	_ZN11SQObjectPtrC1ERKS_(PLT)
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L793
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #40]
	lsls	r3, r3, #3
	add	r3, r3, r2
	add	r2, r7, #12
	ldr	r0, [r2]
	mov	r1, r3
.LEHB117:
	bl	_ZN4SQVM11CloseOutersEP11SQObjectPtr(PLT)
.L793:
	movs	r3, #0
	str	r3, [r7, #272]
	b	.L794
.L795:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #272]
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	mov	r5, r3
	ldr	r3, [r7, #272]
	add	r3, r3, r5
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	ldr	r3, [r7, #272]
	adds	r3, r3, #1
	str	r3, [r7, #272]
.L794:
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #272]
	cmp	r2, r3
	bgt	.L795
	ldr	r1, [r7, #108]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #132]
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	add	r0, r7, #12
	ldr	r0, [r0]
	ldr	r5, [r0, #40]
	add	r0, r7, #12
	str	r5, [sp]
	movs	r5, #1
	str	r5, [sp, #4]
	ldr	r0, [r0]
	bl	_ZN4SQVM9StartCallEP9SQClosureiiib(PLT)
.LEHE117:
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L796
	movs	r5, #0
	b	.L797
.L796:
	movs	r5, #1
	nop
.L797:
	add	r3, r7, #104
	mov	r0, r3
.LEHB118:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE118:
	cmp	r5, #0
	beq	.L729
	b	.L730
.L738:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r2
	add	r2, r7, #96
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1ERKS_(PLT)
	ldr	r3, [r7, #96]
	mov	r2, #16384
	movt	r2, 2048
	cmp	r3, r2
	beq	.L801
	mov	r2, #16384
	movt	r2, 2048
	cmp	r3, r2
	bgt	.L802
	mov	r2, #256
	movt	r2, 2048
	cmp	r3, r2
	beq	.L803
	mov	r2, #512
	movt	r2, 2048
	cmp	r3, r2
	beq	.L804
	b	.L800
.L802:
	movs	r2, #128
	movt	r2, 2560
	cmp	r3, r2
	beq	.L805
	mov	r2, #32768
	movt	r2, 2560
	cmp	r3, r2
	beq	.L805
	movs	r2, #32
	movt	r2, 2560
	cmp	r3, r2
	beq	.L805
	b	.L800
.L803:
	ldr	r1, [r7, #100]
	ldr	r3, [r7, #244]
	adds	r3, r3, #5
	ldrb	r3, [r3]	@ zero_extendqisi2
	sxtb	r2, r3
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	add	r0, r7, #12
	ldr	r0, [r0]
	ldr	r5, [r0, #40]
	ldr	r0, [r7, #244]
	ldrb	r0, [r0, #6]	@ zero_extendqisi2
	add	r5, r5, r0
	add	r0, r7, #12
	str	r5, [sp]
	movs	r5, #0
	str	r5, [sp, #4]
	ldr	r0, [r0]
.LEHB119:
	bl	_ZN4SQVM9StartCallEP9SQClosureiiib(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L806
	movs	r5, #0
	b	.L807
.L806:
	movs	r5, #1
	b	.L807
.L804:
	ldr	r1, [r7, #100]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	mov	r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	add	r3, r3, r0
	add	r0, r7, #12
	add	r5, r7, #96
	str	r5, [sp]
	add	r5, r7, #95
	str	r5, [sp, #4]
	ldr	r0, [r0]
	bl	_ZN4SQVM10CallNativeEP15SQNativeClosureiiR11SQObjectPtrRb(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L808
	movs	r5, #0
	b	.L807
.L808:
	ldrb	r3, [r7, #95]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L809
	add	r3, r7, #12
	ldr	r3, [r3]
	movs	r2, #1
	str	r2, [r3, #152]
	ldr	r3, [r7, #244]
	adds	r3, r3, #5
	ldrb	r3, [r3]	@ zero_extendqisi2
	sxtb	r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #160]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #132]
	ldr	r2, [r3, #40]
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #156]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r7, #276]
	str	r2, [r3, #164]
	add	r3, r7, #96
	ldr	r0, [r7, #304]
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	movs	r4, #1
	movs	r5, #2
	b	.L807
.L809:
	ldr	r3, [r7, #244]
	adds	r3, r3, #5
	ldrb	r3, [r3]	@ zero_extendqisi2
	sxtb	r3, r3
	cmp	r3, #-1
	beq	.L810
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #96
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
.LEHE119:
.L810:
	movs	r5, #1
	b	.L807
.L801:
	add	r3, r7, #84
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r1, [r7, #100]
	add	r0, r7, #12
	add	r2, r7, #84
	add	r3, r7, #96
	ldr	r0, [r0]
.LEHB120:
	bl	_ZN4SQVM19CreateClassInstanceEP7SQClassR11SQObjectPtrS3_(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L811
	movs	r5, #0
	b	.L812
.L811:
	ldr	r3, [r7, #244]
	adds	r3, r3, #5
	ldrb	r3, [r3]	@ zero_extendqisi2
	sxtb	r3, r3
	cmp	r3, #-1
	beq	.L813
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #84
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
.L813:
	ldr	r3, [r7, #96]
	mov	r2, r3
	mov	r3, #256
	movt	r3, 2048
	cmp	r2, r3
	beq	.L815
	mov	r3, #512
	movt	r3, 2048
	cmp	r2, r3
	beq	.L816
	b	.L819
.L815:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	add	r3, r3, r2
	str	r3, [r7, #236]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #236]
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #84
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	ldr	r2, [r7, #100]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	add	r1, r7, #12
	ldr	r0, [r7, #236]
	str	r0, [sp]
	movs	r0, #0
	str	r0, [sp, #4]
	ldr	r0, [r1]
	mov	r1, r2
	mov	r2, #-1
	bl	_ZN4SQVM9StartCallEP9SQClosureiiib(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L817
	b	.L818
.L817:
	b	.L819
.L816:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	add	r3, r3, r2
	str	r3, [r7, #236]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #236]
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #84
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	ldr	r2, [r7, #100]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	add	r1, r7, #12
	add	r0, r7, #96
	str	r0, [sp]
	add	r0, r7, #83
	str	r0, [sp, #4]
	ldr	r0, [r1]
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [r7, #236]
	bl	_ZN4SQVM10CallNativeEP15SQNativeClosureiiR11SQObjectPtrRb(PLT)
.LEHE120:
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L820
	b	.L818
.L820:
	b	.L819
.L818:
	movs	r5, #0
	b	.L812
.L819:
	movs	r5, #1
.L812:
	add	r3, r7, #84
	mov	r0, r3
.LEHB121:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE121:
	cmp	r5, #1
	bne	.L1024
	nop
	b	.L823
.L1024:
	movs	r5, #0
	b	.L807
.L805:
	add	r3, r7, #72
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #100]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L824
	ldr	r3, [r7, #100]
	ldr	r3, [r3]
	adds	r3, r3, #24
	ldr	r5, [r3]
	ldr	r1, [r7, #100]
	add	r2, r7, #12
	add	r3, r7, #72
	mov	r0, r1
	ldr	r1, [r2]
	movs	r2, #11
.LEHB122:
	blx	r5
	mov	r3, r0
	cmp	r3, #0
	beq	.L824
	movs	r3, #1
	b	.L825
.L824:
	movs	r3, #0
.L825:
	cmp	r3, #0
	beq	.L826
	add	r2, r7, #12
	add	r3, r7, #96
	ldr	r0, [r2]
	mov	r1, r3
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	movs	r3, #0
	str	r3, [r7, #268]
	b	.L827
.L828:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	mov	r0, r3
	ldr	r3, [r7, #268]
	add	r3, r3, r0
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r2
	add	r2, r7, #12
	ldr	r0, [r2]
	mov	r1, r3
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	ldr	r3, [r7, #268]
	adds	r3, r3, #1
	str	r3, [r7, #268]
.L827:
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #268]
	cmp	r2, r3
	bgt	.L828
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	adds	r3, r3, #1
	add	r1, r7, #12
	add	r2, r7, #72
	add	r0, r7, #96
	str	r0, [sp]
	ldr	r0, [r1]
	mov	r1, r2
	movs	r2, #11
	bl	_ZN4SQVM14CallMetaMethodER11SQObjectPtr12SQMetaMethodiS1_(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L829
	movs	r5, #0
	b	.L830
.L829:
	ldr	r3, [r7, #244]
	adds	r3, r3, #5
	ldrb	r3, [r3]	@ zero_extendqisi2
	sxtb	r3, r3
	cmp	r3, #-1
	beq	.L831
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #96
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
.LEHE122:
.L831:
	movs	r5, #1
	b	.L830
.L826:
	movs	r5, #2
.L830:
	add	r3, r7, #72
	mov	r0, r3
.LEHB123:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	cmp	r5, #0
	beq	.L833
	cmp	r5, #2
	bne	.L823
	nop
	b	.L800
.L833:
	movs	r5, #0
	b	.L807
.L800:
	add	r3, r7, #96
	mov	r0, r3
	bl	_Z11GetTypeNameRK11SQObjectPtr(PLT)
	mov	r3, r0
	add	r2, r7, #12
	ldr	r0, [r2]
	ldr	r2, .L1035+4
.LPIC48:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
.LEHE123:
	movs	r5, #0
	b	.L807
.L823:
	movs	r5, #3
.L807:
	add	r3, r7, #96
	mov	r0, r3
.LEHB124:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	cmp	r5, #1
	beq	.L730
	cmp	r5, #3
	beq	.L1034
	cmp	r5, #0
	beq	.L729
	b	.L726
.L1034:
	nop
	b	.L730
.L739:
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	cmp	r3, #8
	bne	.L839
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #132]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	lsls	r3, r3, #3
	add	r3, r3, r2
	b	.L840
.L839:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r2
.L840:
	str	r3, [r7, #232]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #228]
	add	r3, r7, #12
	ldr	r3, [r3]
	adds	r3, r3, #88
	ldr	r2, [r7, #244]
	ldrb	r2, [r2, #6]	@ zero_extendqisi2
	mov	r1, r2
	add	r2, r7, #12
	movs	r0, #0
	str	r0, [sp]
	str	r1, [sp, #4]
	ldr	r0, [r2]
	ldr	r1, [r7, #228]
	ldr	r2, [r7, #232]
	bl	_ZN4SQVM3GetERK11SQObjectPtrS2_RS0_bi(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L841
	b	.L729
.L841:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r2
	mov	r0, r3
	ldr	r1, [r7, #228]
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r2
	mov	r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	adds	r3, r3, #88
	mov	r0, r2
	mov	r1, r3
	bl	_Z5_SwapR11tagSQObjectS0_(PLT)
	b	.L730
.L740:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	adds	r1, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #132]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	adds	r3, r3, #88
	ldr	r0, [r7, #244]
	ldrb	r0, [r0, #6]	@ zero_extendqisi2
	mov	r5, r0
	add	r0, r7, #12
	movs	r6, #0
	str	r6, [sp]
	str	r5, [sp, #4]
	ldr	r0, [r0]
	bl	_ZN4SQVM3GetERK11SQObjectPtrS2_RS0_bi(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L842
	b	.L729
.L842:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r2
	mov	r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	adds	r3, r3, #88
	mov	r0, r2
	mov	r1, r3
	bl	_Z5_SwapR11tagSQObjectS0_(PLT)
	b	.L730
.L741:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	b	.L730
.L742:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r3, r3, r1
	lsls	r3, r3, #3
	adds	r1, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r5, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	add	r3, r3, r5
	lsls	r3, r3, #3
	add	r3, r3, r0
	add	r0, r7, #12
	movs	r5, #0
	str	r5, [sp]
	ldr	r0, [r0]
	bl	_ZN4SQVM7NewSlotERK11SQObjectPtrS2_S2_b(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L843
	b	.L729
.L843:
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	cmp	r3, #255
	beq	.L844
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
.L844:
	b	.L730
.L743:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r3, r3, r1
	lsls	r3, r3, #3
	adds	r1, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r5, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r5
	lsls	r3, r3, #3
	add	r3, r3, r0
	add	r0, r7, #12
	ldr	r0, [r0]
	bl	_ZN4SQVM10DeleteSlotERK11SQObjectPtrS2_RS0_(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L845
	b	.L729
.L845:
	b	.L730
.L1036:
	.align	2
.L1035:
	.word	.LC23-(.LPIC47+4)
	.word	.LC24-(.LPIC48+4)
.L744:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r3, r3, r1
	lsls	r3, r3, #3
	adds	r1, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r5, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	add	r3, r3, r5
	lsls	r3, r3, #3
	add	r3, r3, r0
	ldr	r0, [r7, #244]
	ldr	r5, [r0]
	add	r0, r7, #12
	str	r5, [sp]
	ldr	r0, [r0]
	bl	_ZN4SQVM3SetERK11SQObjectPtrS2_S2_i(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L846
	b	.L729
.L846:
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	cmp	r3, #255
	beq	.L847
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
.L847:
	b	.L730
.L745:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r3, r3, r1
	lsls	r3, r3, #3
	adds	r1, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	adds	r3, r3, #88
	ldr	r0, [r7, #244]
	ldr	r5, [r0]
	add	r0, r7, #12
	movs	r6, #0
	str	r6, [sp]
	str	r5, [sp, #4]
	ldr	r0, [r0]
	bl	_ZN4SQVM3GetERK11SQObjectPtrS2_RS0_bi(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L848
	b	.L729
.L848:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r2
	mov	r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	adds	r3, r3, #88
	mov	r0, r2
	mov	r1, r3
	bl	_Z5_SwapR11tagSQObjectS0_(PLT)
	b	.L730
.L746:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	adds	r1, r2, r3
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L849
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #132]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	lsls	r3, r3, #3
	add	r3, r3, r2
	b	.L850
.L849:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r3, r3, r2
.L850:
	add	r2, r7, #71
	mov	r0, r1
	mov	r1, r3
	bl	_ZN4SQVM7IsEqualERK11SQObjectPtrS2_Rb(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L729
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r2, r2, r3
	ldrb	r3, [r7, #71]	@ zero_extendqisi2
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEb(PLT)
	b	.L730
.L747:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	adds	r1, r2, r3
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L852
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #132]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	lsls	r3, r3, #3
	add	r3, r3, r2
	b	.L853
.L852:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r3, r3, r2
.L853:
	add	r2, r7, #70
	mov	r0, r1
	mov	r1, r3
	bl	_ZN4SQVM7IsEqualERK11SQObjectPtrS2_Rb(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L729
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r2, r2, r3
	ldrb	r3, [r7, #70]	@ zero_extendqisi2
	eor	r3, r3, #1
	uxtb	r3, r3
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEb(PLT)
	b	.L730
.L748:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r3, [r3]
	mov	r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r3, [r3]
	orrs	r3, r3, r2
	str	r3, [r7, #224]
	ldr	r2, [r7, #224]
	movs	r3, #4
	movt	r3, 1280
	cmp	r2, r3
	beq	.L856
	movs	r3, #6
	movt	r3, 1280
	cmp	r2, r3
	beq	.L856
	movs	r3, #2
	movt	r3, 1280
	cmp	r2, r3
	bne	.L1025
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r1, [r3, #4]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r5, [r3, #40]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r3, r3, r5
	lsls	r3, r3, #3
	add	r3, r3, r0
	ldr	r3, [r3, #4]
	add	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEi(PLT)
	b	.L858
.L856:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r1, [r3]
	movs	r3, #2
	movt	r3, 1280
	cmp	r1, r3
	bne	.L859
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r3, [r3, #4]
	fmsr	s13, r3	@ int
	fsitos	s14, s13
	b	.L860
.L859:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r3, r3, r1
	flds	s14, [r3, #4]
.L860:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r1, [r3]
	movs	r3, #2
	movt	r3, 1280
	cmp	r1, r3
	bne	.L861
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r3, [r3, #4]
	fmsr	s13, r3	@ int
	fsitos	s15, s13
	b	.L862
.L861:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r3, r3, r1
	flds	s15, [r3, #4]
.L862:
	fadds	s15, s14, s15
	mov	r0, r2
	fcpys	s0, s15
	bl	_ZN11SQObjectPtraSEf(PLT)
	b	.L858
.L1025:
	movs	r3, #43
	mov	r1, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r5, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	add	r3, r3, r5
	lsls	r3, r3, #3
	add	r3, r3, r0
	add	r0, r7, #12
	ldr	r0, [r0]
	ldr	r5, [r0, #24]
	add	r0, r7, #12
	ldr	r0, [r0]
	ldr	r6, [r0, #40]
	ldr	r0, [r7, #244]
	ldr	r0, [r0]
	add	r0, r0, r6
	lsls	r0, r0, #3
	add	r5, r5, r0
	add	r0, r7, #12
	str	r5, [sp]
	ldr	r0, [r0]
	bl	_ZN4SQVM8ARITH_OPEjR11SQObjectPtrRKS0_S3_(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L863
	b	.L729
.L863:
	nop
.L858:
	b	.L730
.L749:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r3, [r3]
	mov	r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r3, [r3]
	orrs	r3, r3, r2
	str	r3, [r7, #220]
	ldr	r2, [r7, #220]
	movs	r3, #4
	movt	r3, 1280
	cmp	r2, r3
	beq	.L865
	movs	r3, #6
	movt	r3, 1280
	cmp	r2, r3
	beq	.L865
	movs	r3, #2
	movt	r3, 1280
	cmp	r2, r3
	bne	.L1026
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r1, [r3, #4]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r5, [r3, #40]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r3, r3, r5
	lsls	r3, r3, #3
	add	r3, r3, r0
	ldr	r3, [r3, #4]
	subs	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEi(PLT)
	b	.L867
.L865:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r1, [r3]
	movs	r3, #2
	movt	r3, 1280
	cmp	r1, r3
	bne	.L868
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r3, [r3, #4]
	fmsr	s15, r3	@ int
	fsitos	s14, s15
	b	.L869
.L868:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r3, r3, r1
	flds	s14, [r3, #4]
.L869:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r1, [r3]
	movs	r3, #2
	movt	r3, 1280
	cmp	r1, r3
	bne	.L870
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r3, [r3, #4]
	fmsr	s13, r3	@ int
	fsitos	s15, s13
	b	.L871
.L870:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r3, r3, r1
	flds	s15, [r3, #4]
.L871:
	fsubs	s15, s14, s15
	mov	r0, r2
	fcpys	s0, s15
	bl	_ZN11SQObjectPtraSEf(PLT)
	b	.L867
.L1026:
	movs	r3, #45
	mov	r1, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r5, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	add	r3, r3, r5
	lsls	r3, r3, #3
	add	r3, r3, r0
	add	r0, r7, #12
	ldr	r0, [r0]
	ldr	r5, [r0, #24]
	add	r0, r7, #12
	ldr	r0, [r0]
	ldr	r6, [r0, #40]
	ldr	r0, [r7, #244]
	ldr	r0, [r0]
	add	r0, r0, r6
	lsls	r0, r0, #3
	add	r5, r5, r0
	add	r0, r7, #12
	str	r5, [sp]
	ldr	r0, [r0]
	bl	_ZN4SQVM8ARITH_OPEjR11SQObjectPtrRKS0_S3_(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L872
	b	.L729
.L872:
	nop
.L867:
	b	.L730
.L750:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r3, [r3]
	mov	r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r3, [r3]
	orrs	r3, r3, r2
	str	r3, [r7, #216]
	ldr	r2, [r7, #216]
	movs	r3, #4
	movt	r3, 1280
	cmp	r2, r3
	beq	.L874
	movs	r3, #6
	movt	r3, 1280
	cmp	r2, r3
	beq	.L874
	movs	r3, #2
	movt	r3, 1280
	cmp	r2, r3
	bne	.L1027
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r3, [r3, #4]
	add	r1, r7, #12
	ldr	r1, [r1]
	ldr	r0, [r1, #24]
	add	r1, r7, #12
	ldr	r1, [r1]
	ldr	r5, [r1, #40]
	ldr	r1, [r7, #244]
	ldr	r1, [r1]
	add	r1, r1, r5
	lsls	r1, r1, #3
	add	r1, r1, r0
	ldr	r1, [r1, #4]
	mul	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEi(PLT)
	b	.L876
.L874:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r1, [r3]
	movs	r3, #2
	movt	r3, 1280
	cmp	r1, r3
	bne	.L877
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r3, [r3, #4]
	fmsr	s15, r3	@ int
	fsitos	s14, s15
	b	.L878
.L877:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r3, r3, r1
	flds	s14, [r3, #4]
.L878:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r1, [r3]
	movs	r3, #2
	movt	r3, 1280
	cmp	r1, r3
	bne	.L879
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r3, [r3, #4]
	fmsr	s13, r3	@ int
	fsitos	s15, s13
	b	.L880
.L879:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r3, r3, r1
	flds	s15, [r3, #4]
.L880:
	fmuls	s15, s14, s15
	mov	r0, r2
	fcpys	s0, s15
	bl	_ZN11SQObjectPtraSEf(PLT)
	b	.L876
.L1027:
	movs	r3, #42
	mov	r1, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r5, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	add	r3, r3, r5
	lsls	r3, r3, #3
	add	r3, r3, r0
	add	r0, r7, #12
	ldr	r0, [r0]
	ldr	r5, [r0, #24]
	add	r0, r7, #12
	ldr	r0, [r0]
	ldr	r6, [r0, #40]
	ldr	r0, [r7, #244]
	ldr	r0, [r0]
	add	r0, r0, r6
	lsls	r0, r0, #3
	add	r5, r5, r0
	add	r0, r7, #12
	str	r5, [sp]
	ldr	r0, [r0]
	bl	_ZN4SQVM8ARITH_OPEjR11SQObjectPtrRKS0_S3_(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L881
	b	.L729
.L881:
	nop
.L876:
	b	.L730
.L751:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r3, [r3]
	mov	r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r3, [r3]
	orrs	r3, r3, r2
	str	r3, [r7, #212]
	ldr	r2, [r7, #212]
	movs	r3, #4
	movt	r3, 1280
	cmp	r2, r3
	beq	.L883
	movs	r3, #6
	movt	r3, 1280
	cmp	r2, r3
	beq	.L883
	movs	r3, #2
	movt	r3, 1280
	cmp	r2, r3
	bne	.L1028
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	str	r3, [r7, #208]
	ldr	r3, [r7, #208]
	cmp	r3, #0
	bne	.L885
	add	r3, r7, #12
	ldr	r0, [r3]
	ldr	r3, .L1037
.LPIC49:
	add	r3, pc
	mov	r1, r3
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
	b	.L729
.L885:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	adds	r5, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r1, [r7, #208]
	bl	__aeabi_idiv(PLT)
	mov	r3, r0
	mov	r0, r5
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEi(PLT)
	b	.L886
.L883:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r1, [r3]
	movs	r3, #2
	movt	r3, 1280
	cmp	r1, r3
	bne	.L887
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r3, [r3, #4]
	fmsr	s15, r3	@ int
	fsitos	s14, s15
	b	.L888
.L887:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r3, r3, r1
	flds	s14, [r3, #4]
.L888:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r1, [r3]
	movs	r3, #2
	movt	r3, 1280
	cmp	r1, r3
	bne	.L889
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r3, [r3, #4]
	fmsr	s13, r3	@ int
	fsitos	s15, s13
	b	.L890
.L889:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r3, r3, r1
	flds	s15, [r3, #4]
.L890:
	fdivs	s15, s14, s15
	mov	r0, r2
	fcpys	s0, s15
	bl	_ZN11SQObjectPtraSEf(PLT)
	b	.L886
.L1028:
	movs	r3, #47
	mov	r1, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r5, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	add	r3, r3, r5
	lsls	r3, r3, #3
	add	r3, r3, r0
	add	r0, r7, #12
	ldr	r0, [r0]
	ldr	r5, [r0, #24]
	add	r0, r7, #12
	ldr	r0, [r0]
	ldr	r6, [r0, #40]
	ldr	r0, [r7, #244]
	ldr	r0, [r0]
	add	r0, r0, r6
	lsls	r0, r0, #3
	add	r5, r5, r0
	add	r0, r7, #12
	str	r5, [sp]
	ldr	r0, [r0]
	bl	_ZN4SQVM8ARITH_OPEjR11SQObjectPtrRKS0_S3_(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L891
	b	.L729
.L891:
	nop
.L886:
	b	.L730
.L752:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r3, r3, r1
	add	r1, r7, #12
	ldr	r1, [r1]
	ldr	r0, [r1, #24]
	add	r1, r7, #12
	ldr	r1, [r1]
	ldr	r5, [r1, #40]
	ldr	r1, [r7, #244]
	ldr	r1, [r1]
	add	r1, r1, r5
	lsls	r1, r1, #3
	add	r0, r0, r1
	add	r1, r7, #12
	str	r0, [sp]
	ldr	r0, [r1]
	movs	r1, #37
	bl	_ZN4SQVM8ARITH_OPEjR11SQObjectPtrRKS0_S3_(PLT)
	b	.L730
.L753:
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	mov	r1, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r5, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	add	r3, r3, r5
	lsls	r3, r3, #3
	add	r3, r3, r0
	add	r0, r7, #12
	ldr	r0, [r0]
	ldr	r5, [r0, #24]
	add	r0, r7, #12
	ldr	r0, [r0]
	ldr	r6, [r0, #40]
	ldr	r0, [r7, #244]
	ldr	r0, [r0]
	add	r0, r0, r6
	lsls	r0, r0, #3
	add	r5, r5, r0
	add	r0, r7, #12
	str	r5, [sp]
	ldr	r0, [r0]
	bl	_ZN4SQVM5BW_OPEjR11SQObjectPtrRKS0_S3_(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L892
	b	.L729
.L892:
	b	.L730
.L754:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #132]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L893
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #132]
	ldr	r3, [r3, #16]
	mov	r0, r3
	bl	_ZN11SQGenerator4KillEv(PLT)
.L893:
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [r7, #244]
	ldr	r2, [r3]
	add	r3, r7, #12
	ldr	r3, [r3]
	adds	r3, r3, #88
	add	r0, r7, #12
	ldr	r0, [r0]
	bl	_ZN4SQVM6ReturnEiiR11SQObjectPtr(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L894
	ldr	r3, [r7, #276]
	cmp	r3, #0
	beq	.L895
	ldr	r3, .L1037+4
.LPIC50:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L1037+8
.LPIC51:
	add	r3, pc
	mov	r1, r3
	movw	r2, #845
	ldr	r3, .L1037+12
.LPIC52:
	add	r3, pc
	bl	__assert_fail(PLT)
.L895:
	ldr	r2, [r7, #304]
	add	r3, r7, #12
	ldr	r3, [r3]
	adds	r3, r3, #88
	mov	r0, r2
	mov	r1, r3
	bl	_Z5_SwapR11tagSQObjectS0_(PLT)
	movs	r4, #1
	b	.L726
.L894:
	b	.L730
.L755:
	movs	r3, #0
	str	r3, [r7, #264]
	b	.L896
.L897:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	mov	r0, r3
	ldr	r3, [r7, #264]
	add	r3, r3, r0
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
	ldr	r3, [r7, #264]
	adds	r3, r3, #1
	str	r3, [r7, #264]
.L896:
	ldr	r3, [r7, #244]
	ldr	r2, [r3]
	ldr	r3, [r7, #264]
	cmp	r2, r3
	bgt	.L897
	b	.L730
.L756:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	adds	r3, r3, #48
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	b	.L730
.L757:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r2, r2, r3
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEb(PLT)
	b	.L730
.L758:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	b	.L730
.L759:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #132]
	add	r2, r7, #12
	ldr	r2, [r2]
	ldr	r2, [r2, #132]
	ldr	r1, [r2]
	ldr	r2, [r7, #244]
	ldr	r2, [r2]
	lsls	r2, r2, #3
	add	r2, r2, r1
	str	r2, [r3]
	b	.L730
.L760:
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	mov	r1, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r5, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r5
	lsls	r3, r3, #3
	add	r3, r3, r0
	add	r0, r7, #12
	ldr	r0, [r0]
	add	r5, r0, #88
	add	r0, r7, #12
	str	r5, [sp]
	ldr	r0, [r0]
	bl	_ZN4SQVM6CMP_OPE5CmpOPRK11SQObjectPtrS3_RS1_(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L898
	b	.L729
.L898:
	add	r3, r7, #12
	ldr	r3, [r3]
	adds	r3, r3, #88
	mov	r0, r3
	bl	_ZN4SQVM7IsFalseER11SQObjectPtr(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L899
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #132]
	add	r2, r7, #12
	ldr	r2, [r2]
	ldr	r2, [r2, #132]
	ldr	r1, [r2]
	ldr	r2, [r7, #244]
	ldr	r2, [r2]
	lsls	r2, r2, #3
	add	r2, r2, r1
	str	r2, [r3]
.L899:
	b	.L730
.L761:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZN4SQVM7IsFalseER11SQObjectPtr(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L900
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #132]
	add	r2, r7, #12
	ldr	r2, [r2]
	ldr	r2, [r2, #132]
	ldr	r1, [r2]
	ldr	r2, [r7, #244]
	ldr	r2, [r2]
	lsls	r2, r2, #3
	add	r2, r2, r1
	str	r2, [r3]
.L900:
	b	.L730
.L763:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #132]
	ldr	r3, [r3, #12]
	str	r3, [r7, #204]
	ldr	r3, [r7, #204]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	str	r3, [r7, #200]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r2, r2, r3
	ldr	r3, [r7, #200]
	ldr	r3, [r3, #24]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	b	.L730
.L762:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #132]
	ldr	r3, [r3, #12]
	str	r3, [r7, #196]
	ldr	r3, [r7, #196]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	str	r3, [r7, #192]
	ldr	r3, [r7, #192]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	cmp	r3, #255
	beq	.L901
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
.L901:
	b	.L730
.L764:
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L903
	cmp	r3, #2
	beq	.L904
	cmp	r3, #0
	bne	.L1029
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	adds	r5, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #140]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN7SQTable6CreateEP13SQSharedStatei(PLT)
	mov	r3, r0
	mov	r0, r5
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEP7SQTable(PLT)
	b	.L730
.L903:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	adds	r5, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #140]
	mov	r0, r3
	movs	r1, #0
	bl	_ZN7SQArray6CreateEP13SQSharedStatei(PLT)
	mov	r3, r0
	mov	r0, r5
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEP7SQArray(PLT)
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN7SQArray7ReserveEi(PLT)
	b	.L730
.L904:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	adds	r1, r2, r3
	ldr	r3, [r7, #244]
	ldr	r2, [r3]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	add	r0, r7, #12
	ldr	r0, [r0]
	bl	_ZN4SQVM8CLASS_OPER11SQObjectPtrii(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L906
	b	.L729
.L906:
	b	.L730
.L1029:
	ldr	r3, .L1037+16
.LPIC53:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L1037+20
.LPIC54:
	add	r3, pc
	mov	r1, r3
	movw	r2, #882
	ldr	r3, .L1037+24
.LPIC55:
	add	r3, pc
	bl	__assert_fail(PLT)
.L765:
	movs	r3, #0
	str	r3, [r7, #64]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	cmp	r3, #4
	bhi	.L907
	adr	r1, .L909
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L909:
	.word	.L908+1-.L909
	.word	.L910+1-.L909
	.word	.L911+1-.L909
	.word	.L912+1-.L909
	.word	.L913+1-.L909
.L908:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #60
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	b	.L914
.L910:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #132]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #60
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	b	.L914
.L911:
	movs	r3, #2
	movt	r3, 1280
	str	r3, [r7, #60]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	str	r3, [r7, #64]
	b	.L914
.L912:
	movs	r3, #4
	movt	r3, 1280
	str	r3, [r7, #60]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]	@ float
	str	r3, [r7, #64]	@ float
	b	.L914
.L913:
	movs	r3, #8
	movt	r3, 256
	str	r3, [r7, #60]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	str	r3, [r7, #64]
	b	.L914
.L907:
	ldr	r3, .L1037+28
.LPIC56:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L1037+32
.LPIC57:
	add	r3, pc
	mov	r1, r3
	movw	r2, #909
	ldr	r3, .L1037+36
.LPIC58:
	add	r3, pc
	bl	__assert_fail(PLT)
.L914:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	add	r3, r7, #60
	mov	r0, r2
	mov	r1, r3
	bl	_ZN7SQArray6AppendERK11tagSQObject(PLT)
	nop
	b	.L730
.L766:
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	lsrs	r3, r3, #16
	str	r3, [r7, #188]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	mov	r1, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r5, [r3, #40]
	ldr	r3, [r7, #188]
	add	r3, r3, r5
	lsls	r3, r3, #3
	add	r3, r3, r0
	add	r0, r7, #12
	ldr	r0, [r0]
	ldr	r5, [r0, #24]
	add	r0, r7, #12
	ldr	r0, [r0]
	ldr	r6, [r0, #40]
	ldr	r0, [r7, #244]
	ldrb	r0, [r0, #6]	@ zero_extendqisi2
	add	r0, r0, r6
	lsls	r0, r0, #3
	adds	r6, r5, r0
	add	r0, r7, #12
	ldr	r0, [r0]
	ldr	r5, [r0, #24]
	add	r0, r7, #12
	ldr	r0, [r0]
	ldr	lr, [r0, #40]
	ldr	r0, [r7, #244]
	ldr	r0, [r0]
	uxth	r0, r0
	add	r0, r0, lr
	lsls	r0, r0, #3
	add	r5, r5, r0
	add	r0, r7, #12
	str	r6, [sp]
	str	r5, [sp, #4]
	movs	r5, #0
	str	r5, [sp, #8]
	ldr	r5, [r7, #188]
	str	r5, [sp, #12]
	ldr	r0, [r0]
	bl	_ZN4SQVM8DerefIncEiR11SQObjectPtrS1_S1_S1_bi(PLT)
.LEHE124:
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L915
	b	.L729
.L915:
	b	.L730
.L767:
	ldr	r3, [r7, #244]
	adds	r3, r3, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	sxtb	r3, r3
	add	r2, r7, #52
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r3, r3, r1
	add	r1, r7, #12
	ldr	r1, [r1]
	ldr	r0, [r1, #24]
	add	r1, r7, #12
	ldr	r1, [r1]
	ldr	r5, [r1, #40]
	ldr	r1, [r7, #244]
	ldrb	r1, [r1, #6]	@ zero_extendqisi2
	add	r1, r1, r5
	lsls	r1, r1, #3
	adds	r5, r0, r1
	ldr	r1, [r7, #244]
	ldr	r0, [r1]
	add	r1, r7, #12
	str	r5, [sp]
	add	r5, r7, #52
	str	r5, [sp, #4]
	movs	r5, #0
	str	r5, [sp, #8]
	str	r0, [sp, #12]
	ldr	r0, [r1]
	movs	r1, #43
.LEHB125:
	bl	_ZN4SQVM8DerefIncEiR11SQObjectPtrS1_S1_S1_bi(PLT)
.LEHE125:
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L916
	movs	r5, #0
	b	.L917
.L916:
	movs	r5, #1
.L917:
	add	r3, r7, #52
	mov	r0, r3
.LEHB126:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE126:
	cmp	r5, #1
	bne	.L729
	nop
	b	.L730
.L768:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #184]
	ldr	r3, [r7, #184]
	ldr	r2, [r3]
	movs	r3, #2
	movt	r3, 1280
	cmp	r2, r3
	bne	.L920
	ldr	r3, [r7, #184]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #244]
	adds	r3, r3, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	sxtb	r3, r3
	add	r2, r2, r3
	ldr	r3, [r7, #184]
	str	r2, [r3, #4]
	b	.L921
.L920:
	ldr	r3, [r7, #244]
	adds	r3, r3, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	sxtb	r3, r3
	add	r2, r7, #44
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	ldr	r3, [r7, #184]
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7, #44]
	orrs	r3, r3, r2
	str	r3, [r7, #180]
	ldr	r2, [r7, #180]
	movs	r3, #4
	movt	r3, 1280
	cmp	r2, r3
	beq	.L923
	movs	r3, #6
	movt	r3, 1280
	cmp	r2, r3
	beq	.L923
	movs	r3, #2
	movt	r3, 1280
	cmp	r2, r3
	bne	.L1030
	ldr	r3, [r7, #184]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #48]
	add	r3, r3, r2
	ldr	r0, [r7, #184]
	mov	r1, r3
.LEHB127:
	bl	_ZN11SQObjectPtraSEi(PLT)
	b	.L925
.L923:
	ldr	r3, [r7, #184]
	ldr	r2, [r3]
	movs	r3, #2
	movt	r3, 1280
	cmp	r2, r3
	bne	.L926
	ldr	r3, [r7, #184]
	ldr	r3, [r3, #4]
	fmsr	s13, r3	@ int
	fsitos	s14, s13
	b	.L927
.L926:
	ldr	r3, [r7, #184]
	flds	s14, [r3, #4]
.L927:
	ldr	r2, [r7, #44]
	movs	r3, #2
	movt	r3, 1280
	cmp	r2, r3
	bne	.L928
	ldr	r3, [r7, #48]
	fmsr	s13, r3	@ int
	fsitos	s15, s13
	b	.L929
.L928:
	flds	s15, [r7, #48]
.L929:
	fadds	s15, s14, s15
	ldr	r0, [r7, #184]
	fcpys	s0, s15
	bl	_ZN11SQObjectPtraSEf(PLT)
	b	.L925
.L1030:
	movs	r3, #43
	add	r2, r7, #12
	add	r1, r7, #44
	str	r1, [sp]
	ldr	r0, [r2]
	mov	r1, r3
	ldr	r2, [r7, #184]
	ldr	r3, [r7, #184]
	bl	_ZN4SQVM8ARITH_OPEjR11SQObjectPtrRKS0_S3_(PLT)
.LEHE127:
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L930
	movs	r5, #0
	b	.L931
.L930:
	nop
.L925:
	movs	r5, #1
.L931:
	add	r3, r7, #44
	mov	r0, r3
.LEHB128:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE128:
	cmp	r5, #1
	bne	.L729
	nop
.L921:
	b	.L730
.L769:
	ldr	r3, [r7, #244]
	adds	r3, r3, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	sxtb	r3, r3
	add	r2, r7, #36
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r3, r3, r1
	add	r1, r7, #12
	ldr	r1, [r1]
	ldr	r0, [r1, #24]
	add	r1, r7, #12
	ldr	r1, [r1]
	ldr	r5, [r1, #40]
	ldr	r1, [r7, #244]
	ldrb	r1, [r1, #6]	@ zero_extendqisi2
	add	r1, r1, r5
	lsls	r1, r1, #3
	adds	r5, r0, r1
	ldr	r1, [r7, #244]
	ldr	r0, [r1]
	add	r1, r7, #12
	str	r5, [sp]
	add	r5, r7, #36
	str	r5, [sp, #4]
	movs	r5, #1
	str	r5, [sp, #8]
	str	r0, [sp, #12]
	ldr	r0, [r1]
	movs	r1, #43
.LEHB129:
	bl	_ZN4SQVM8DerefIncEiR11SQObjectPtrS1_S1_S1_bi(PLT)
.LEHE129:
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L934
	movs	r5, #0
	b	.L935
.L934:
	movs	r5, #1
.L935:
	add	r3, r7, #36
	mov	r0, r3
.LEHB130:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	cmp	r5, #1
	bne	.L729
	nop
	b	.L730
.L770:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #176]
	ldr	r3, [r7, #176]
	ldr	r2, [r3]
	movs	r3, #2
	movt	r3, 1280
	cmp	r2, r3
	bne	.L938
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r2
	mov	r0, r3
	ldr	r1, [r7, #176]
	bl	_ZN11SQObjectPtraSERKS_(PLT)
.LEHE130:
	ldr	r3, [r7, #176]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #244]
	adds	r3, r3, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	sxtb	r3, r3
	add	r2, r2, r3
	ldr	r3, [r7, #176]
	str	r2, [r3, #4]
	b	.L939
.L1038:
	.align	2
.L1037:
	.word	.LC4-(.LPIC49+4)
	.word	.LC25-(.LPIC50+4)
	.word	.LC7-(.LPIC51+4)
	.word	_ZZN4SQVM7ExecuteER11SQObjectPtriiS1_jNS_13ExecutionTypeEE19__PRETTY_FUNCTION__-(.LPIC52+4)
	.word	.LC6-(.LPIC53+4)
	.word	.LC7-(.LPIC54+4)
	.word	_ZZN4SQVM7ExecuteER11SQObjectPtriiS1_jNS_13ExecutionTypeEE19__PRETTY_FUNCTION__-(.LPIC55+4)
	.word	.LC6-(.LPIC56+4)
	.word	.LC7-(.LPIC57+4)
	.word	_ZZN4SQVM7ExecuteER11SQObjectPtriiS1_jNS_13ExecutionTypeEE19__PRETTY_FUNCTION__-(.LPIC58+4)
.L938:
	ldr	r3, [r7, #244]
	adds	r3, r3, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	sxtb	r3, r3
	add	r2, r7, #28
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r3, r3, r1
	add	r1, r7, #12
	add	r0, r7, #28
	str	r0, [sp]
	ldr	r0, [r1]
	movs	r1, #43
.LEHB131:
	bl	_ZN4SQVM10PLOCAL_INCEiR11SQObjectPtrS1_S1_(PLT)
.LEHE131:
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L940
	movs	r5, #0
	b	.L941
.L940:
	movs	r5, #1
.L941:
	add	r3, r7, #28
	mov	r0, r3
.LEHB132:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	cmp	r5, #1
	bne	.L729
	nop
.L939:
	b	.L730
.L771:
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	mov	r1, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r5, [r3, #40]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r3, r3, r5
	lsls	r3, r3, #3
	add	r3, r3, r0
	add	r0, r7, #12
	ldr	r0, [r0]
	ldr	r5, [r0, #24]
	add	r0, r7, #12
	ldr	r0, [r0]
	ldr	r6, [r0, #40]
	ldr	r0, [r7, #244]
	ldrb	r0, [r0, #5]	@ zero_extendqisi2
	add	r0, r0, r6
	lsls	r0, r0, #3
	add	r5, r5, r0
	add	r0, r7, #12
	str	r5, [sp]
	ldr	r0, [r0]
	bl	_ZN4SQVM6CMP_OPE5CmpOPRK11SQObjectPtrS3_RS1_(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L944
	b	.L729
.L944:
	b	.L730
.L772:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	adds	r5, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r3, r3, r1
	lsls	r3, r3, #3
	adds	r1, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	adds	r3, r3, #88
	add	r0, r7, #12
	movs	r6, #1
	str	r6, [sp]
	movw	r6, #666
	str	r6, [sp, #4]
	ldr	r0, [r0]
	bl	_ZN4SQVM3GetERK11SQObjectPtrS2_RS0_bi(PLT)
	mov	r3, r0
	mov	r0, r5
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEb(PLT)
	b	.L730
.L773:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r3]
	mov	r3, #16384
	movt	r3, 2048
	cmp	r2, r3
	beq	.L945
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r2
	mov	r0, r3
	bl	_Z11GetTypeNameRK11SQObjectPtr(PLT)
	mov	r5, r0
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r2
	mov	r0, r3
	bl	_Z11GetTypeNameRK11SQObjectPtr(PLT)
	mov	r3, r0
	add	r2, r7, #12
	ldr	r0, [r2]
	ldr	r2, .L1039
.LPIC59:
	add	r2, pc
	mov	r1, r2
	mov	r2, r5
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
	b	.L729
.L945:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	adds	r5, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r3]
	mov	r3, #32768
	movt	r3, 2560
	cmp	r2, r3
	bne	.L946
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r3, [r3, #4]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN10SQInstance10InstanceOfEP7SQClass(PLT)
	mov	r3, r0
	b	.L947
.L946:
	movs	r3, #0
.L947:
	mov	r0, r5
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEb(PLT)
	b	.L730
.L774:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZN4SQVM7IsFalseER11SQObjectPtr(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L948
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #132]
	add	r2, r7, #12
	ldr	r2, [r2]
	ldr	r2, [r2, #132]
	ldr	r1, [r2]
	ldr	r2, [r7, #244]
	ldr	r2, [r2]
	lsls	r2, r2, #3
	add	r2, r2, r1
	str	r2, [r3]
.L948:
	b	.L730
.L775:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZN4SQVM7IsFalseER11SQObjectPtr(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L949
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #132]
	add	r2, r7, #12
	ldr	r2, [r2]
	ldr	r2, [r2, #132]
	ldr	r1, [r2]
	ldr	r2, [r7, #244]
	ldr	r2, [r2]
	lsls	r2, r2, #3
	add	r2, r2, r1
	str	r2, [r3]
.L949:
	b	.L730
.L776:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r3, r3, r1
	add	r1, r7, #12
	ldr	r0, [r1]
	mov	r1, r2
	mov	r2, r3
	bl	_ZN4SQVM6NEG_OPER11SQObjectPtrRKS0_(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L950
	b	.L729
.L950:
	b	.L730
.L777:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	adds	r5, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZN4SQVM7IsFalseER11SQObjectPtr(PLT)
	mov	r3, r0
	mov	r0, r5
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEb(PLT)
	b	.L730
.L778:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r3]
	movs	r3, #2
	movt	r3, 1280
	cmp	r2, r3
	bne	.L951
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	str	r3, [r7, #172]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r2, r2, r3
	ldr	r3, [r7, #172]
	mvns	r3, r3
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEi(PLT)
	b	.L730
.L951:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r2
	mov	r0, r3
	bl	_Z11GetTypeNameRK11SQObjectPtr(PLT)
	mov	r3, r0
	add	r2, r7, #12
	ldr	r0, [r2]
	ldr	r2, .L1039+4
.LPIC60:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
	b	.L729
.L779:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #132]
	ldr	r3, [r3, #12]
	str	r3, [r7, #168]
	ldr	r3, [r7, #168]
	ldr	r3, [r3, #32]
	str	r3, [r7, #164]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r2, r2, r3
	ldr	r3, [r7, #164]
	ldr	r1, [r3, #88]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r3, [r3, #4]
	add	r1, r7, #12
	ldr	r0, [r1]
	mov	r1, r2
	mov	r2, r3
	bl	_ZN4SQVM10CLOSURE_OPER11SQObjectPtrP15SQFunctionProto(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L952
	b	.L729
.L952:
	b	.L730
.L780:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #132]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L953
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	cmp	r3, #255
	beq	.L954
	add	r3, r7, #12
	ldr	r3, [r3]
	add	r2, r3, #88
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
.L954:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #132]
	ldr	r1, [r3, #16]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	add	r2, r7, #12
	mov	r0, r1
	ldr	r1, [r2]
	mov	r2, r3
	bl	_ZN11SQGenerator5YieldEP4SQVMi(PLT)
.LEHE132:
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L955
	b	.L729
.L955:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #132]
	ldr	r3, [r3, #20]
	ldr	r2, [r7, #276]
	subs	r3, r2, r3
	str	r3, [r7, #276]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	cmp	r3, #255
	beq	.L956
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r2
	mov	r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	adds	r3, r3, #88
	mov	r0, r2
	mov	r1, r3
	bl	_Z5_SwapR11tagSQObjectS0_(PLT)
	b	.L956
.L953:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #132]
	ldr	r3, [r3, #16]
	add	r2, r7, #116
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP11SQGenerator(PLT)
	add	r3, r7, #116
	mov	r0, r3
.LEHB133:
	bl	_Z11GetTypeNameRK11SQObjectPtr(PLT)
	mov	r3, r0
	add	r2, r7, #12
	ldr	r0, [r2]
	ldr	r2, .L1039+8
.LPIC61:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
.LEHE133:
	add	r3, r7, #116
	mov	r0, r3
.LEHB134:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L729
.L956:
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [r7, #244]
	ldr	r2, [r3]
	add	r3, r7, #12
	ldr	r3, [r3]
	adds	r3, r3, #88
	add	r0, r7, #12
	ldr	r0, [r0]
	bl	_ZN4SQVM6ReturnEiiR11SQObjectPtr(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L957
	ldr	r3, [r7, #276]
	cmp	r3, #0
	beq	.L958
	ldr	r3, .L1039+12
.LPIC62:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L1039+16
.LPIC63:
	add	r3, pc
	mov	r1, r3
	movw	r2, #986
	ldr	r3, .L1039+20
.LPIC64:
	add	r3, pc
	bl	__assert_fail(PLT)
.L958:
	add	r3, r7, #12
	ldr	r3, [r3]
	adds	r3, r3, #88
	ldr	r0, [r7, #304]
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	movs	r4, #1
	b	.L726
.L957:
	b	.L730
.L781:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r3]
	mov	r3, #1024
	movt	r3, 2048
	cmp	r2, r3
	beq	.L959
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r2
	mov	r0, r3
	bl	_Z11GetTypeNameRK11SQObjectPtr(PLT)
	mov	r3, r0
	add	r2, r7, #12
	ldr	r0, [r2]
	ldr	r2, .L1039+24
.LPIC65:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
	b	.L729
.L959:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r1, [r3, #4]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r3, r3, r2
	add	r2, r7, #12
	mov	r0, r1
	ldr	r1, [r2]
	mov	r2, r3
	bl	_ZN11SQGenerator6ResumeEP4SQVMR11SQObjectPtr(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L960
	b	.L729
.L960:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #132]
	ldr	r3, [r3, #20]
	ldr	r2, [r7, #276]
	add	r3, r3, r2
	str	r3, [r7, #276]
	b	.L730
.L782:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	adds	r1, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r5, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	adds	r3, r3, #1
	add	r3, r3, r5
	lsls	r3, r3, #3
	add	r3, r3, r0
	add	r0, r7, #12
	ldr	r0, [r0]
	ldr	r5, [r0, #24]
	add	r0, r7, #12
	ldr	r0, [r0]
	ldr	r6, [r0, #40]
	ldr	r0, [r7, #244]
	ldrb	r0, [r0, #6]	@ zero_extendqisi2
	adds	r0, r0, #2
	add	r0, r0, r6
	lsls	r0, r0, #3
	add	lr, r5, r0
	ldr	r0, [r7, #244]
	ldrb	r0, [r0, #6]	@ zero_extendqisi2
	mov	r6, r0
	ldr	r0, [r7, #244]
	ldr	r5, [r0]
	add	r0, r7, #12
	str	lr, [sp]
	str	r6, [sp, #4]
	str	r5, [sp, #8]
	add	r5, r7, #24
	str	r5, [sp, #12]
	ldr	r0, [r0]
	bl	_ZN4SQVM10FOREACH_OPER11SQObjectPtrS1_S1_S1_iiRi(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L729
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #132]
	add	r2, r7, #12
	ldr	r2, [r2]
	ldr	r2, [r2, #132]
	ldr	r1, [r2]
	add	r2, r7, #24
	ldr	r2, [r2]
	lsls	r2, r2, #3
	add	r2, r2, r1
	str	r2, [r3]
	b	.L730
.L783:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r3]
	mov	r3, #1024
	movt	r3, 2048
	cmp	r2, r3
	beq	.L962
	ldr	r3, .L1039+28
.LPIC66:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L1039+32
.LPIC67:
	add	r3, pc
	mov	r1, r3
	movw	r2, #1003
	ldr	r3, .L1039+36
.LPIC68:
	add	r3, pc
	bl	__assert_fail(PLT)
.L962:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #100]
	cmp	r3, #2
	bne	.L963
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #132]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #132]
	ldr	r1, [r3]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r3, r3, #536870912
	subs	r3, r3, #1
	lsls	r3, r3, #3
	add	r3, r3, r1
	str	r3, [r2]
.L963:
	b	.L730
.L784:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r3, r3, r1
	add	r1, r7, #12
	ldr	r0, [r1]
	mov	r1, r2
	mov	r2, r3
	bl	_ZN4SQVM5CloneERK11SQObjectPtrRS0_(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L964
	b	.L729
.L964:
	b	.L730
.L785:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r3, r3, r1
	add	r1, r7, #12
	ldr	r0, [r1]
	mov	r1, r2
	mov	r2, r3
	bl	_ZN4SQVM6TypeOfERK11SQObjectPtrRS0_(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L965
	b	.L729
.L965:
	b	.L730
.L786:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #132]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #32]
	adds	r3, r3, #112
	str	r3, [r7, #160]
	add	r3, r7, #12
	ldr	r3, [r3]
	add	r5, r3, #120
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #36]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #40]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #132]
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r3, [r7, #160]
	subs	r3, r0, r3
	asrs	r3, r3, #3
	mov	r0, r3
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r3, r3, r0
	lsls	r3, r3, #3
	ldr	r0, [r7, #160]
	add	r3, r3, r0
	ldr	r0, [r7, #244]
	ldrb	r0, [r0, #5]	@ zero_extendqisi2
	mov	r6, r0
	add	r0, r7, #124
	str	r6, [sp]
	bl	_ZN15SQExceptionTrapC1EiiP13SQInstructioni(PLT)
	add	r3, r7, #124
	mov	r0, r5
	mov	r1, r3
	bl	_ZN8sqvectorI15SQExceptionTrapE9push_backERKS0_(PLT)
	ldr	r3, [r7, #276]
	adds	r3, r3, #1
	str	r3, [r7, #276]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #132]
	ldr	r2, [r3, #20]
	adds	r2, r2, #1
	str	r2, [r3, #20]
	b	.L730
.L787:
	movs	r3, #0
	str	r3, [r7, #260]
	b	.L966
.L967:
	add	r3, r7, #12
	ldr	r3, [r3]
	adds	r3, r3, #120
	mov	r0, r3
	bl	_ZN8sqvectorI15SQExceptionTrapE8pop_backEv(PLT)
	ldr	r3, [r7, #276]
	subs	r3, r3, #1
	str	r3, [r7, #276]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #132]
	ldr	r2, [r3, #20]
	subs	r2, r2, #1
	str	r2, [r3, #20]
	ldr	r3, [r7, #260]
	adds	r3, r3, #1
	str	r3, [r7, #260]
.L966:
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #260]
	cmp	r2, r3
	bgt	.L967
	b	.L730
.L788:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r2
	add	r2, r7, #12
	ldr	r0, [r2]
	mov	r1, r3
	bl	_ZN4SQVM11Raise_ErrorERK11SQObjectPtr(PLT)
.LEHE134:
	b	.L729
.L789:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r8, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	adds	r6, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	adds	r5, r2, r3
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L968
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	subs	r3, r3, #1
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r2
	add	r2, r7, #140
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1ERKS_(PLT)
	b	.L969
.L968:
	add	r3, r7, #140
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
.L969:
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	and	r3, r3, #2
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r2, r3
	add	r3, r7, #12
	add	r1, r7, #140
	str	r1, [sp]
	str	r2, [sp, #4]
	movs	r2, #0
	str	r2, [sp, #8]
	ldr	r0, [r3]
	mov	r1, r8
	mov	r2, r6
	mov	r3, r5
.LEHB135:
	bl	_ZN4SQVM8NewSlotAERK11SQObjectPtrS2_S2_S2_bb(PLT)
.LEHE135:
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r5, r3
	add	r3, r7, #140
	mov	r0, r3
.LEHB136:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	cmp	r5, #0
	beq	.L970
	b	.L729
.L970:
	b	.L730
.L790:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #132]
	ldr	r3, [r3, #12]
	str	r3, [r7, #156]
	ldr	r3, [r7, #156]
	ldr	r3, [r3, #28]
	cmp	r3, #0
	beq	.L971
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r2, r2, r3
	ldr	r3, [r7, #156]
	ldr	r3, [r3, #28]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEP7SQClass(PLT)
	b	.L1031
.L971:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
	b	.L730
.L1031:
	b	.L730
.L791:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L973
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #244]
	ldr	r3, [r3]
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r2
	add	r2, r7, #12
	ldr	r0, [r2]
	mov	r1, r3
	bl	_ZN4SQVM11CloseOutersEP11SQObjectPtr(PLT)
.LEHE136:
.L973:
	nop
.L730:
	b	.L1033
.L729:
	add	r3, r7, #12
	ldr	r3, [r3]
	adds	r3, r3, #56
	add	r2, r7, #16
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1ERKS_(PLT)
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #36]
	str	r3, [r7, #256]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #140]
	ldrb	r3, [r3, #173]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L974
	ldr	r3, [r7, #276]
	cmp	r3, #0
	bne	.L975
	ldr	r3, [r7, #308]
	cmp	r3, #0
	beq	.L975
.L974:
	add	r2, r7, #12
	add	r3, r7, #16
	ldr	r0, [r2]
	mov	r1, r3
.LEHB137:
	bl	_ZN4SQVM16CallErrorHandlerER11SQObjectPtr(PLT)
	b	.L976
.L975:
	b	.L976
.L988:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #132]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	ble	.L977
	add	r3, r7, #12
	ldr	r3, [r3]
	adds	r3, r3, #120
	mov	r0, r3
	bl	_ZNK8sqvectorI15SQExceptionTrapE3topEv(PLT)
	mov	r3, r0
	str	r3, [r7, #152]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #132]
	ldr	r2, [r7, #152]
	ldr	r2, [r2, #8]
	str	r2, [r3]
	ldr	r3, [r7, #152]
	ldr	r2, [r3, #4]
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #36]
	ldr	r3, [r7, #152]
	ldr	r2, [r3]
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #40]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #152]
	ldr	r3, [r3, #12]
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #16
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	add	r3, r7, #12
	ldr	r3, [r3]
	adds	r3, r3, #120
	mov	r0, r3
	bl	_ZN8sqvectorI15SQExceptionTrapE8pop_backEv(PLT)
	ldr	r3, [r7, #276]
	subs	r3, r3, #1
	str	r3, [r7, #276]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #132]
	ldr	r2, [r3, #20]
	subs	r2, r2, #1
	str	r2, [r3, #20]
	b	.L978
.L979:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #256]
	subs	r1, r3, #1
	str	r1, [r7, #256]
	lsls	r3, r3, #3
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
.L978:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #256]
	cmp	r2, r3
	ble	.L979
	movs	r5, #0
	b	.L980
.L977:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldrb	r3, [r3, #72]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L981
	movs	r3, #0
	str	r3, [r7, #252]
	b	.L982
.L983:
	add	r3, r7, #12
	ldr	r0, [r3]
	movs	r1, #114
	movs	r2, #0
	bl	_ZN4SQVM13CallDebugHookEii(PLT)
	ldr	r3, [r7, #252]
	adds	r3, r3, #1
	str	r3, [r7, #252]
.L982:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #132]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #252]
	cmp	r2, r3
	bgt	.L983
.L981:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #132]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L984
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #132]
	ldr	r3, [r3, #16]
	mov	r0, r3
	bl	_ZN11SQGenerator4KillEv(PLT)
.L984:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #132]
	cmp	r3, #0
	beq	.L985
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #132]
	ldr	r3, [r3, #40]
	cmp	r3, #0
	beq	.L985
	movs	r3, #1
	b	.L986
.L985:
	movs	r3, #0
.L986:
	strb	r3, [r7, #151]
	add	r3, r7, #12
	ldr	r0, [r3]
	bl	_ZN4SQVM10LeaveFrameEv(PLT)
	ldrb	r3, [r7, #151]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L976
	b	.L987
.L1040:
	.align	2
.L1039:
	.word	.LC26-(.LPIC59+4)
	.word	.LC27-(.LPIC60+4)
	.word	.LC28-(.LPIC61+4)
	.word	.LC29-(.LPIC62+4)
	.word	.LC7-(.LPIC63+4)
	.word	_ZZN4SQVM7ExecuteER11SQObjectPtriiS1_jNS_13ExecutionTypeEE19__PRETTY_FUNCTION__-(.LPIC64+4)
	.word	.LC30-(.LPIC65+4)
	.word	.LC31-(.LPIC66+4)
	.word	.LC7-(.LPIC67+4)
	.word	_ZZN4SQVM7ExecuteER11SQObjectPtriiS1_jNS_13ExecutionTypeEE19__PRETTY_FUNCTION__-(.LPIC68+4)
.L976:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #132]
	cmp	r3, #0
	bne	.L988
.L987:
	add	r3, r7, #12
	ldr	r3, [r3]
	add	r2, r3, #56
	add	r3, r7, #16
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
.LEHE137:
	movs	r4, #0
	movs	r5, #1
.L980:
	add	r3, r7, #16
	mov	r0, r3
.LEHB138:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE138:
	cmp	r5, #0
	beq	.L719
.L726:
	add	r3, r7, #112
	mov	r0, r3
	bl	_ZN7AutoDecD1Ev(PLT)
.L991:
	mov	r3, r4
	b	.L1032
.L1006:
	add	r3, r7, #104
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L993
.L1008:
	add	r3, r7, #84
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L995
.L1009:
	add	r3, r7, #72
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L995
.L1007:
.L995:
	add	r3, r7, #96
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L993
.L1010:
	add	r3, r7, #52
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L993
.L1011:
	add	r3, r7, #44
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L993
.L1012:
	add	r3, r7, #36
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L993
.L1013:
	add	r3, r7, #28
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L993
.L1014:
	add	r3, r7, #116
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L993
.L1015:
	add	r3, r7, #140
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L993
.L1016:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L993
.L1005:
.L993:
	add	r3, r7, #112
	mov	r0, r3
	bl	_ZN7AutoDecD1Ev(PLT)
.LEHB139:
	bl	__cxa_end_cleanup(PLT)
.LEHE139:
.L1032:
	mov	r0, r3
	add	r7, r7, #280
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA341:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE341-.LLSDACSB341
.LLSDACSB341:
	.uleb128 .LEHB115-.LFB341
	.uleb128 .LEHE115-.LEHB115
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB116-.LFB341
	.uleb128 .LEHE116-.LEHB116
	.uleb128 .L1005-.LFB341
	.uleb128 0
	.uleb128 .LEHB117-.LFB341
	.uleb128 .LEHE117-.LEHB117
	.uleb128 .L1006-.LFB341
	.uleb128 0
	.uleb128 .LEHB118-.LFB341
	.uleb128 .LEHE118-.LEHB118
	.uleb128 .L1005-.LFB341
	.uleb128 0
	.uleb128 .LEHB119-.LFB341
	.uleb128 .LEHE119-.LEHB119
	.uleb128 .L1007-.LFB341
	.uleb128 0
	.uleb128 .LEHB120-.LFB341
	.uleb128 .LEHE120-.LEHB120
	.uleb128 .L1008-.LFB341
	.uleb128 0
	.uleb128 .LEHB121-.LFB341
	.uleb128 .LEHE121-.LEHB121
	.uleb128 .L1007-.LFB341
	.uleb128 0
	.uleb128 .LEHB122-.LFB341
	.uleb128 .LEHE122-.LEHB122
	.uleb128 .L1009-.LFB341
	.uleb128 0
	.uleb128 .LEHB123-.LFB341
	.uleb128 .LEHE123-.LEHB123
	.uleb128 .L1007-.LFB341
	.uleb128 0
	.uleb128 .LEHB124-.LFB341
	.uleb128 .LEHE124-.LEHB124
	.uleb128 .L1005-.LFB341
	.uleb128 0
	.uleb128 .LEHB125-.LFB341
	.uleb128 .LEHE125-.LEHB125
	.uleb128 .L1010-.LFB341
	.uleb128 0
	.uleb128 .LEHB126-.LFB341
	.uleb128 .LEHE126-.LEHB126
	.uleb128 .L1005-.LFB341
	.uleb128 0
	.uleb128 .LEHB127-.LFB341
	.uleb128 .LEHE127-.LEHB127
	.uleb128 .L1011-.LFB341
	.uleb128 0
	.uleb128 .LEHB128-.LFB341
	.uleb128 .LEHE128-.LEHB128
	.uleb128 .L1005-.LFB341
	.uleb128 0
	.uleb128 .LEHB129-.LFB341
	.uleb128 .LEHE129-.LEHB129
	.uleb128 .L1012-.LFB341
	.uleb128 0
	.uleb128 .LEHB130-.LFB341
	.uleb128 .LEHE130-.LEHB130
	.uleb128 .L1005-.LFB341
	.uleb128 0
	.uleb128 .LEHB131-.LFB341
	.uleb128 .LEHE131-.LEHB131
	.uleb128 .L1013-.LFB341
	.uleb128 0
	.uleb128 .LEHB132-.LFB341
	.uleb128 .LEHE132-.LEHB132
	.uleb128 .L1005-.LFB341
	.uleb128 0
	.uleb128 .LEHB133-.LFB341
	.uleb128 .LEHE133-.LEHB133
	.uleb128 .L1014-.LFB341
	.uleb128 0
	.uleb128 .LEHB134-.LFB341
	.uleb128 .LEHE134-.LEHB134
	.uleb128 .L1005-.LFB341
	.uleb128 0
	.uleb128 .LEHB135-.LFB341
	.uleb128 .LEHE135-.LEHB135
	.uleb128 .L1015-.LFB341
	.uleb128 0
	.uleb128 .LEHB136-.LFB341
	.uleb128 .LEHE136-.LEHB136
	.uleb128 .L1005-.LFB341
	.uleb128 0
	.uleb128 .LEHB137-.LFB341
	.uleb128 .LEHE137-.LEHB137
	.uleb128 .L1016-.LFB341
	.uleb128 0
	.uleb128 .LEHB138-.LFB341
	.uleb128 .LEHE138-.LEHB138
	.uleb128 .L1005-.LFB341
	.uleb128 0
	.uleb128 .LEHB139-.LFB341
	.uleb128 .LEHE139-.LEHB139
	.uleb128 0
	.uleb128 0
.LLSDACSE341:
	.section	.text._ZN4SQVM7ExecuteER11SQObjectPtriiS1_jNS_13ExecutionTypeE
	.fnend
	.size	_ZN4SQVM7ExecuteER11SQObjectPtriiS1_jNS_13ExecutionTypeE, .-_ZN4SQVM7ExecuteER11SQObjectPtriiS1_jNS_13ExecutionTypeE
	.section	.text._ZN4SQVM19CreateClassInstanceEP7SQClassR11SQObjectPtrS3_,"ax",%progbits
	.align	2
	.global	_ZN4SQVM19CreateClassInstanceEP7SQClassR11SQObjectPtrS3_
	.thumb
	.thumb_func
	.type	_ZN4SQVM19CreateClassInstanceEP7SQClassR11SQObjectPtrS3_, %function
_ZN4SQVM19CreateClassInstanceEP7SQClassR11SQObjectPtrS3_:
	.fnstart
.LFB342:
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
	bl	_ZN7SQClass14CreateInstanceEv(PLT)
	mov	r3, r0
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEP10SQInstance(PLT)
	ldr	r0, [r7, #8]
	ldr	r1, [r7]
	bl	_ZN7SQClass14GetConstructorER11SQObjectPtr(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L1042
	ldr	r0, [r7]
	bl	_ZN11SQObjectPtr4NullEv(PLT)
.L1042:
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN4SQVM19CreateClassInstanceEP7SQClassR11SQObjectPtrS3_, .-_ZN4SQVM19CreateClassInstanceEP7SQClassR11SQObjectPtrS3_
	.section	.text._ZN4SQVM16CallErrorHandlerER11SQObjectPtr,"ax",%progbits
	.align	2
	.global	_ZN4SQVM16CallErrorHandlerER11SQObjectPtr
	.thumb
	.thumb_func
	.type	_ZN4SQVM16CallErrorHandlerER11SQObjectPtr, %function
_ZN4SQVM16CallErrorHandlerER11SQObjectPtr:
	.fnstart
.LFB343:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #24
	sub	sp, sp, #24
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #64]
	movs	r3, #1
	movt	r3, 256
	cmp	r2, r3
	beq	.L1048
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #48
	ldr	r0, [r7, #4]
	mov	r1, r3
.LEHB140:
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	ldr	r3, [r7, #4]
	add	r2, r3, #64
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	subs	r3, r3, #2
	add	r1, r7, #8
	str	r1, [sp]
	movs	r1, #0
	str	r1, [sp, #4]
	ldr	r0, [r7, #4]
	mov	r1, r2
	movs	r2, #2
	bl	_ZN4SQVM4CallER11SQObjectPtriiS1_j(PLT)
	ldr	r0, [r7, #4]
	movs	r1, #2
	bl	_ZN4SQVM3PopEi(PLT)
.LEHE140:
	add	r3, r7, #8
	mov	r0, r3
.LEHB141:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE141:
	b	.L1048
.L1047:
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB142:
	bl	__cxa_end_cleanup(PLT)
.LEHE142:
.L1048:
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
	.uleb128 .LEHB140-.LFB343
	.uleb128 .LEHE140-.LEHB140
	.uleb128 .L1047-.LFB343
	.uleb128 0
	.uleb128 .LEHB141-.LFB343
	.uleb128 .LEHE141-.LEHB141
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB142-.LFB343
	.uleb128 .LEHE142-.LEHB142
	.uleb128 0
	.uleb128 0
.LLSDACSE343:
	.section	.text._ZN4SQVM16CallErrorHandlerER11SQObjectPtr
	.fnend
	.size	_ZN4SQVM16CallErrorHandlerER11SQObjectPtr, .-_ZN4SQVM16CallErrorHandlerER11SQObjectPtr
	.section	.text._ZN4SQVM13CallDebugHookEii,"ax",%progbits
	.align	2
	.global	_ZN4SQVM13CallDebugHookEii
	.thumb
	.thumb_func
	.type	_ZN4SQVM13CallDebugHookEii, %function
_ZN4SQVM13CallDebugHookEii:
	.fnstart
.LFB344:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #76
	sub	sp, sp, #76
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #132]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #32]
	str	r3, [r7, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #76]
	cmp	r3, #0
	beq	.L1050
	ldr	r3, [r7, #60]
	ldr	r2, [r3, #24]
	movs	r3, #16
	movt	r3, 2048
	cmp	r2, r3
	bne	.L1051
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #28]
	adds	r3, r3, #28
	b	.L1052
.L1051:
	movs	r3, #0
.L1052:
	str	r3, [r7, #56]
	ldr	r3, [r7, #60]
	ldr	r2, [r3, #32]
	movs	r3, #16
	movt	r3, 2048
	cmp	r2, r3
	bne	.L1053
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #36]
	adds	r3, r3, #28
	b	.L1054
.L1053:
	movs	r3, #0
.L1054:
	str	r3, [r7, #52]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L1055
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #132]
	ldr	r3, [r3]
	ldr	r0, [r7, #60]
	mov	r1, r3
.LEHB143:
	bl	_ZN15SQFunctionProto7GetLineEP13SQInstruction(PLT)
	mov	r3, r0
	b	.L1056
.L1055:
	ldr	r3, [r7, #4]
.L1056:
	str	r3, [r7, #48]
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #76]
	ldr	r3, [r7, #52]
	str	r3, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #48]
	blx	r4
.LEHE143:
	b	.L1057
.L1050:
	add	r3, r7, #20
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	movs	r3, #5
	str	r3, [r7, #44]
	ldr	r3, [r7, #12]
	adds	r3, r3, #48
	ldr	r0, [r7, #12]
	mov	r1, r3
.LEHB144:
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE144:
	add	r3, r7, #28
	mov	r0, r3
	ldr	r1, [r7, #8]
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r3, r7, #28
	ldr	r0, [r7, #12]
	mov	r1, r3
.LEHB145:
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE145:
	add	r3, r7, #28
	mov	r0, r3
.LEHB146:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	ldr	r3, [r7, #60]
	adds	r3, r3, #24
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L1058
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #132]
	ldr	r3, [r3]
	ldr	r0, [r7, #60]
	mov	r1, r3
	bl	_ZN15SQFunctionProto7GetLineEP13SQInstruction(PLT)
.LEHE146:
	mov	r3, r0
	b	.L1059
.L1058:
	ldr	r3, [r7, #4]
.L1059:
	add	r2, r7, #36
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r3, r7, #36
	ldr	r0, [r7, #12]
	mov	r1, r3
.LEHB147:
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE147:
	add	r3, r7, #36
	mov	r0, r3
.LEHB148:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	ldr	r3, [r7, #60]
	adds	r3, r3, #32
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	ldr	r3, [r7, #12]
	add	r2, r3, #80
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #36]
	ldr	r3, [r7, #44]
	subs	r3, r1, r3
	add	r1, r7, #20
	str	r1, [sp]
	movs	r1, #0
	str	r1, [sp, #4]
	ldr	r0, [r7, #12]
	mov	r1, r2
	ldr	r2, [r7, #44]
	bl	_ZN4SQVM4CallER11SQObjectPtriiS1_j(PLT)
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #44]
	bl	_ZN4SQVM3PopEi(PLT)
.LEHE148:
	add	r3, r7, #20
	mov	r0, r3
.LEHB149:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE149:
.L1057:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #72]
	b	.L1066
.L1064:
	add	r3, r7, #28
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L1061
.L1065:
	add	r3, r7, #36
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L1061
.L1063:
.L1061:
	add	r3, r7, #20
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB150:
	bl	__cxa_end_cleanup(PLT)
.LEHE150:
.L1066:
	adds	r7, r7, #68
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
	.uleb128 .LEHB143-.LFB344
	.uleb128 .LEHE143-.LEHB143
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB144-.LFB344
	.uleb128 .LEHE144-.LEHB144
	.uleb128 .L1063-.LFB344
	.uleb128 0
	.uleb128 .LEHB145-.LFB344
	.uleb128 .LEHE145-.LEHB145
	.uleb128 .L1064-.LFB344
	.uleb128 0
	.uleb128 .LEHB146-.LFB344
	.uleb128 .LEHE146-.LEHB146
	.uleb128 .L1063-.LFB344
	.uleb128 0
	.uleb128 .LEHB147-.LFB344
	.uleb128 .LEHE147-.LEHB147
	.uleb128 .L1065-.LFB344
	.uleb128 0
	.uleb128 .LEHB148-.LFB344
	.uleb128 .LEHE148-.LEHB148
	.uleb128 .L1063-.LFB344
	.uleb128 0
	.uleb128 .LEHB149-.LFB344
	.uleb128 .LEHE149-.LEHB149
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB150-.LFB344
	.uleb128 .LEHE150-.LEHB150
	.uleb128 0
	.uleb128 0
.LLSDACSE344:
	.section	.text._ZN4SQVM13CallDebugHookEii
	.fnend
	.size	_ZN4SQVM13CallDebugHookEii, .-_ZN4SQVM13CallDebugHookEii
	.section	.text._ZN4SQVM10CallNativeEP15SQNativeClosureiiR11SQObjectPtrRb,"ax",%progbits
	.align	2
	.global	_ZN4SQVM10CallNativeEP15SQNativeClosureiiR11SQObjectPtrRb
	.thumb
	.thumb_func
	.type	_ZN4SQVM10CallNativeEP15SQNativeClosureiiR11SQObjectPtrRb, %function
_ZN4SQVM10CallNativeEP15SQNativeClosureiiR11SQObjectPtrRb:
	.fnstart
.LFB345:
	@ args = 8, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #48
	sub	sp, sp, #48
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #24]
	str	r3, [r7, #36]
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #44]
	add	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #144]
	adds	r3, r3, #1
	cmp	r3, #100
	ble	.L1068
	ldr	r0, [r7, #12]
	ldr	r3, .L1086
.LPIC69:
	add	r3, pc
	mov	r1, r3
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
	movs	r3, #0
	b	.L1069
.L1068:
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L1070
	ldr	r3, [r7, #36]
	cmp	r3, #0
	ble	.L1071
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bne	.L1072
.L1071:
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bge	.L1070
	ldr	r3, [r7, #36]
	negs	r2, r3
	ldr	r3, [r7, #4]
	cmp	r2, r3
	ble	.L1070
.L1072:
	ldr	r0, [r7, #12]
	ldr	r3, .L1086+4
.LPIC70:
	add	r3, pc
	mov	r1, r3
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
	movs	r3, #0
	b	.L1069
.L1070:
	ldr	r3, [r7, #8]
	adds	r3, r3, #28
	str	r3, [r7, #28]
	ldr	r0, [r7, #28]
	bl	_ZNK8sqvectorIiE4sizeEv(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L1073
	movs	r3, #0
	str	r3, [r7, #44]
	b	.L1074
.L1077:
	ldr	r3, [r7, #28]
	ldr	r2, [r3]
	ldr	r3, [r7, #44]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	cmp	r3, #-1
	beq	.L1075
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #24]
	ldr	r1, [r7]
	ldr	r3, [r7, #44]
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7, #28]
	ldr	r1, [r3]
	ldr	r3, [r7, #44]
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r3, [r3]
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L1075
	ldr	r3, [r7, #28]
	ldr	r2, [r3]
	ldr	r3, [r7, #44]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #24]
	ldr	r0, [r7]
	ldr	r3, [r7, #44]
	add	r3, r3, r0
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r3, [r3]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #44]
	bl	_ZN4SQVM20Raise_ParamTypeErrorEiii(PLT)
	movs	r3, #0
	b	.L1069
.L1075:
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	str	r3, [r7, #44]
.L1074:
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bge	.L1076
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	blt	.L1077
.L1076:
.L1073:
	ldr	r0, [r7, #12]
	ldr	r1, [r7]
	ldr	r2, [r7, #32]
	movs	r3, #0
	bl	_ZN4SQVM10EnterFrameEiib(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L1078
	movs	r3, #0
	b	.L1069
.L1078:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #132]
	adds	r3, r3, #8
	mov	r0, r3
	ldr	r1, [r7, #8]
	bl	_ZN11SQObjectPtraSEP15SQNativeClosure(PLT)
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #44]
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #40]
	b	.L1079
.L1080:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #24]
	ldr	r1, [r7]
	ldr	r3, [r7, #4]
	add	r1, r1, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r1
	lsls	r3, r3, #3
	add	r2, r2, r3
	ldr	r3, [r7, #8]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #40]
	lsls	r3, r3, #3
	add	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	str	r3, [r7, #40]
.L1079:
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	blt	.L1080
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L1081
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #24]
	ldr	r3, [r7]
	lsls	r3, r3, #3
	add	r2, r2, r3
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #48]
	adds	r3, r3, #12
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERK11tagSQObject(PLT)
.L1081:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #144]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #144]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #52]
	ldr	r0, [r7, #12]
	blx	r3
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #144]
	subs	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #144]
	ldr	r3, [r7, #60]
	movs	r2, #0
	strb	r2, [r3]
	ldr	r2, [r7, #16]
	movw	r3, #64870
	movt	r3, 65535
	cmp	r2, r3
	bne	.L1082
	ldr	r3, [r7, #60]
	movs	r2, #1
	strb	r2, [r3]
	b	.L1083
.L1082:
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bge	.L1083
	ldr	r0, [r7, #12]
	bl	_ZN4SQVM10LeaveFrameEv(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #56
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZN4SQVM11Raise_ErrorERK11SQObjectPtr(PLT)
	movs	r3, #0
	b	.L1069
.L1083:
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L1084
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #36]
	add	r3, r3, #536870912
	subs	r3, r3, #1
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r0, [r7, #56]
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	b	.L1085
.L1084:
	ldr	r0, [r7, #56]
	bl	_ZN11SQObjectPtr4NullEv(PLT)
.L1085:
	ldr	r0, [r7, #12]
	bl	_ZN4SQVM10LeaveFrameEv(PLT)
	movs	r3, #1
.L1069:
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L1087:
	.align	2
.L1086:
	.word	.LC23-(.LPIC69+4)
	.word	.LC16-(.LPIC70+4)
	.fnend
	.size	_ZN4SQVM10CallNativeEP15SQNativeClosureiiR11SQObjectPtrRb, .-_ZN4SQVM10CallNativeEP15SQNativeClosureiiR11SQObjectPtrRb
	.section	.text._ZN4SQVM3GetERK11SQObjectPtrS2_RS0_bi,"ax",%progbits
	.align	2
	.global	_ZN4SQVM3GetERK11SQObjectPtrS2_RS0_bi
	.thumb
	.thumb_func
	.type	_ZN4SQVM3GetERK11SQObjectPtrS2_RS0_bi, %function
_ZN4SQVM3GetERK11SQObjectPtrS2_RS0_bi:
	.fnstart
.LFB346:
	@ args = 8, pretend = 0, frame = 24
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
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	mov	r2, #16384
	movt	r2, 2048
	cmp	r3, r2
	beq	.L1090
	mov	r2, #16384
	movt	r2, 2048
	cmp	r3, r2
	bgt	.L1091
	movs	r2, #16
	movt	r2, 2048
	cmp	r3, r2
	beq	.L1092
	movs	r2, #64
	movt	r2, 2048
	cmp	r3, r2
	beq	.L1093
	b	.L1098
.L1091:
	movs	r2, #32
	movt	r2, 2560
	cmp	r3, r2
	beq	.L1094
	mov	r2, #32768
	movt	r2, 2560
	cmp	r3, r2
	beq	.L1095
	b	.L1098
.L1094:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
	bl	_ZN7SQTable3GetERK11SQObjectPtrRS0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1096
	movs	r3, #1
	b	.L1097
.L1096:
	b	.L1098
.L1093:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r3, r3, #67108864
	cmp	r3, #0
	beq	.L1099
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r1, [r3]
	movs	r3, #4
	movt	r3, 1280
	cmp	r1, r3
	bne	.L1100
	ldr	r3, [r7, #4]
	flds	s15, [r3, #4]
	ftosizs	s15, s15
	fmrs	r3, s15	@ int
	b	.L1101
.L1100:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
.L1101:
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7]
	bl	_ZN7SQArray3GetEiR11SQObjectPtr(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1102
	movs	r3, #1
	b	.L1097
.L1102:
	ldr	r3, [r7, #36]
	cmp	r3, #-1
	beq	.L1103
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	bl	_ZN4SQVM14Raise_IdxErrorERK11SQObjectPtr(PLT)
.L1103:
	movs	r3, #0
	b	.L1097
.L1099:
	b	.L1098
.L1095:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
	bl	_ZN10SQInstance3GetERK11SQObjectPtrRS0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1104
	movs	r3, #1
	b	.L1097
.L1104:
	b	.L1098
.L1090:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
	bl	_ZN7SQClass3GetERK11SQObjectPtrRS0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1105
	movs	r3, #1
	b	.L1097
.L1105:
	b	.L1098
.L1092:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r3, r3, #67108864
	cmp	r3, #0
	beq	.L1106
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	movs	r3, #4
	movt	r3, 1280
	cmp	r2, r3
	bne	.L1107
	ldr	r3, [r7, #4]
	flds	s15, [r3, #4]
	ftosizs	s15, s15
	fmrs	r3, s15	@ int
	b	.L1108
.L1107:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
.L1108:
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	eor	r2, r3, r3, asr #31
	sub	r2, r2, r3, asr #31
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #20]
	cmp	r2, r3
	bge	.L1109
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bge	.L1110
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #20]
	subs	r3, r2, r3
	str	r3, [r7, #20]
.L1110:
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	adds	r3, r3, #24
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEi(PLT)
	movs	r3, #1
	b	.L1097
.L1109:
	ldr	r3, [r7, #36]
	cmp	r3, #-1
	beq	.L1111
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	bl	_ZN4SQVM14Raise_IdxErrorERK11SQObjectPtr(PLT)
.L1111:
	movs	r3, #0
	b	.L1097
.L1106:
	nop
.L1098:
	ldrb	r3, [r7, #32]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L1112
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	_ZN4SQVM11FallBackGetERK11SQObjectPtrS2_RS0_(PLT)
	mov	r3, r0
	cmp	r3, #1
	beq	.L1119
	cmp	r3, #2
	beq	.L1115
	cmp	r3, #0
	bne	.L1113
	movs	r3, #1
	b	.L1097
.L1115:
	movs	r3, #0
	b	.L1097
.L1119:
	nop
.L1113:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	_ZN4SQVM21InvokeDefaultDelegateERK11SQObjectPtrS2_RS0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1112
	movs	r3, #1
	b	.L1097
.L1112:
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L1117
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	mov	r0, r3
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
	bl	_ZN7SQTable3GetERK11SQObjectPtrRS0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1117
	movs	r3, #1
	b	.L1097
.L1117:
	ldr	r3, [r7, #36]
	cmp	r3, #-1
	beq	.L1118
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	bl	_ZN4SQVM14Raise_IdxErrorERK11SQObjectPtr(PLT)
.L1118:
	movs	r3, #0
.L1097:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN4SQVM3GetERK11SQObjectPtrS2_RS0_bi, .-_ZN4SQVM3GetERK11SQObjectPtrS2_RS0_bi
	.section	.text._ZN4SQVM21InvokeDefaultDelegateERK11SQObjectPtrS2_RS0_,"ax",%progbits
	.align	2
	.global	_ZN4SQVM21InvokeDefaultDelegateERK11SQObjectPtrS2_RS0_
	.thumb
	.thumb_func
	.type	_ZN4SQVM21InvokeDefaultDelegateERK11SQObjectPtrS2_RS0_, %function
_ZN4SQVM21InvokeDefaultDelegateERK11SQObjectPtrS2_RS0_:
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
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	mov	r2, #512
	movt	r2, 2048
	cmp	r3, r2
	beq	.L1122
	mov	r2, #512
	movt	r2, 2048
	cmp	r3, r2
	bgt	.L1123
	movs	r2, #4
	movt	r2, 1280
	cmp	r3, r2
	beq	.L1124
	movs	r2, #4
	movt	r2, 1280
	cmp	r3, r2
	bgt	.L1125
	movs	r2, #8
	movt	r2, 256
	cmp	r3, r2
	beq	.L1124
	movs	r2, #2
	movt	r2, 1280
	cmp	r3, r2
	beq	.L1124
	b	.L1121
.L1125:
	movs	r2, #64
	movt	r2, 2048
	cmp	r3, r2
	beq	.L1126
	mov	r2, #256
	movt	r2, 2048
	cmp	r3, r2
	beq	.L1122
	movs	r2, #16
	movt	r2, 2048
	cmp	r3, r2
	beq	.L1127
	b	.L1121
.L1123:
	mov	r2, #16384
	movt	r2, 2048
	cmp	r3, r2
	beq	.L1128
	mov	r2, #16384
	movt	r2, 2048
	cmp	r3, r2
	bgt	.L1129
	mov	r2, #1024
	movt	r2, 2048
	cmp	r3, r2
	beq	.L1130
	mov	r2, #4096
	movt	r2, 2048
	cmp	r3, r2
	beq	.L1131
	b	.L1121
.L1129:
	movs	r2, #32
	movt	r2, 2560
	cmp	r3, r2
	beq	.L1132
	mov	r2, #32768
	movt	r2, 2560
	cmp	r3, r2
	beq	.L1133
	movs	r2, #0
	movt	r2, 2049
	cmp	r3, r2
	beq	.L1134
	b	.L1121
.L1128:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #140]
	ldr	r3, [r3, #140]
	str	r3, [r7, #20]
	b	.L1135
.L1132:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #140]
	ldr	r3, [r3, #84]
	str	r3, [r7, #20]
	b	.L1135
.L1126:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #140]
	ldr	r3, [r3, #92]
	str	r3, [r7, #20]
	b	.L1135
.L1127:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #140]
	ldr	r3, [r3, #100]
	str	r3, [r7, #20]
	b	.L1135
.L1133:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #140]
	ldr	r3, [r3, #148]
	str	r3, [r7, #20]
	b	.L1135
.L1124:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #140]
	ldr	r3, [r3, #108]
	str	r3, [r7, #20]
	b	.L1135
.L1130:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #140]
	ldr	r3, [r3, #116]
	str	r3, [r7, #20]
	b	.L1135
.L1122:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #140]
	ldr	r3, [r3, #124]
	str	r3, [r7, #20]
	b	.L1135
.L1131:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #140]
	ldr	r3, [r3, #132]
	str	r3, [r7, #20]
	b	.L1135
.L1134:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #140]
	ldr	r3, [r3, #156]
	str	r3, [r7, #20]
	b	.L1135
.L1121:
	movs	r3, #0
	b	.L1136
.L1135:
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
	bl	_ZN7SQTable3GetERK11SQObjectPtrRS0_(PLT)
	mov	r3, r0
.L1136:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN4SQVM21InvokeDefaultDelegateERK11SQObjectPtrS2_RS0_, .-_ZN4SQVM21InvokeDefaultDelegateERK11SQObjectPtrS2_RS0_
	.section	.text._ZN4SQVM11FallBackGetERK11SQObjectPtrS2_RS0_,"ax",%progbits
	.align	2
	.global	_ZN4SQVM11FallBackGetERK11SQObjectPtrS2_RS0_
	.thumb
	.thumb_func
	.type	_ZN4SQVM11FallBackGetERK11SQObjectPtrS2_RS0_, %function
_ZN4SQVM11FallBackGetERK11SQObjectPtrS2_RS0_:
	.fnstart
.LFB348:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #48
	sub	sp, sp, #48
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	mov	r2, r3
	movs	r3, #128
	movt	r3, 2560
	cmp	r2, r3
	beq	.L1139
	mov	r3, #32768
	movt	r3, 2560
	cmp	r2, r3
	beq	.L1140
	movs	r3, #32
	movt	r3, 2560
	cmp	r2, r3
	beq	.L1139
	b	.L1152
.L1139:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L1141
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #24]
	add	r2, r7, #32
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP7SQTable(PLT)
	add	r3, r7, #32
	movs	r2, #0
	str	r2, [sp]
	movw	r2, #666
	str	r2, [sp, #4]
	ldr	r0, [r7, #12]
	mov	r1, r3
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
.LEHB151:
	bl	_ZN4SQVM3GetERK11SQObjectPtrS2_RS0_bi(PLT)
.LEHE151:
	mov	r3, r0
	mov	r5, r3
	add	r3, r7, #32
	mov	r0, r3
.LEHB152:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE152:
	cmp	r5, #0
	beq	.L1140
	movs	r4, #0
	b	.L1142
.L1141:
	movs	r4, #1
	b	.L1142
.L1140:
	add	r3, r7, #24
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	adds	r3, r3, #24
	ldr	r5, [r3]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	add	r3, r7, #24
	mov	r0, r2
	ldr	r1, [r7, #12]
	movs	r2, #7
.LEHB153:
	blx	r5
	mov	r3, r0
	cmp	r3, #0
	beq	.L1143
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE153:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #148]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #148]
	ldr	r3, [r7, #12]
	adds	r3, r3, #148
	add	r2, r7, #20
	mov	r0, r2
	mov	r1, r3
	bl	_ZN7AutoDecC1EPi(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #36]
	subs	r3, r3, #2
	add	r2, r7, #24
	ldr	r1, [r7]
	str	r1, [sp]
	movs	r1, #0
	str	r1, [sp, #4]
	ldr	r0, [r7, #12]
	mov	r1, r2
	movs	r2, #2
.LEHB154:
	bl	_ZN4SQVM4CallER11SQObjectPtriiS1_j(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1144
	ldr	r0, [r7, #12]
	movs	r1, #2
	bl	_ZN4SQVM3PopEi(PLT)
	movs	r4, #0
	movs	r5, #0
	b	.L1145
.L1144:
	ldr	r0, [r7, #12]
	movs	r1, #2
	bl	_ZN4SQVM3PopEi(PLT)
.LEHE154:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #56]
	movs	r3, #1
	movt	r3, 256
	cmp	r2, r3
	beq	.L1146
	movs	r4, #2
	movs	r5, #0
	b	.L1145
.L1146:
	movs	r5, #1
.L1145:
	add	r3, r7, #20
	mov	r0, r3
	bl	_ZN7AutoDecD1Ev(PLT)
	cmp	r5, #1
	bne	.L1162
	nop
	b	.L1143
.L1162:
	movs	r5, #0
	b	.L1149
.L1143:
	movs	r5, #1
.L1149:
	add	r3, r7, #24
	mov	r0, r3
.LEHB155:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE155:
	cmp	r5, #1
	bne	.L1142
	nop
	nop
.L1152:
	movs	r4, #1
.L1142:
	mov	r3, r4
	b	.L1163
.L1157:
	add	r3, r7, #32
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB156:
	bl	__cxa_end_cleanup(PLT)
.LEHE156:
.L1159:
	add	r3, r7, #20
	mov	r0, r3
	bl	_ZN7AutoDecD1Ev(PLT)
	b	.L1155
.L1158:
.L1155:
	add	r3, r7, #24
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB157:
	bl	__cxa_end_cleanup(PLT)
.LEHE157:
.L1163:
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA348:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE348-.LLSDACSB348
.LLSDACSB348:
	.uleb128 .LEHB151-.LFB348
	.uleb128 .LEHE151-.LEHB151
	.uleb128 .L1157-.LFB348
	.uleb128 0
	.uleb128 .LEHB152-.LFB348
	.uleb128 .LEHE152-.LEHB152
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB153-.LFB348
	.uleb128 .LEHE153-.LEHB153
	.uleb128 .L1158-.LFB348
	.uleb128 0
	.uleb128 .LEHB154-.LFB348
	.uleb128 .LEHE154-.LEHB154
	.uleb128 .L1159-.LFB348
	.uleb128 0
	.uleb128 .LEHB155-.LFB348
	.uleb128 .LEHE155-.LEHB155
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB156-.LFB348
	.uleb128 .LEHE156-.LEHB156
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB157-.LFB348
	.uleb128 .LEHE157-.LEHB157
	.uleb128 0
	.uleb128 0
.LLSDACSE348:
	.section	.text._ZN4SQVM11FallBackGetERK11SQObjectPtrS2_RS0_
	.fnend
	.size	_ZN4SQVM11FallBackGetERK11SQObjectPtrS2_RS0_, .-_ZN4SQVM11FallBackGetERK11SQObjectPtrS2_RS0_
	.section	.rodata
	.align	2
.LC32:
	.ascii	"indexing %s with %s\000"
	.align	2
.LC33:
	.ascii	"trying to set '%s'\000"
	.section	.text._ZN4SQVM3SetERK11SQObjectPtrS2_S2_i,"ax",%progbits
	.align	2
	.global	_ZN4SQVM3SetERK11SQObjectPtrS2_S2_i
	.thumb
	.thumb_func
	.type	_ZN4SQVM3SetERK11SQObjectPtrS2_S2_i, %function
_ZN4SQVM3SetERK11SQObjectPtrS2_S2_i:
	.fnstart
.LFB349:
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
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	mov	r2, r3
	movs	r3, #32
	movt	r3, 2560
	cmp	r2, r3
	beq	.L1166
	mov	r3, #32768
	movt	r3, 2560
	cmp	r2, r3
	beq	.L1167
	movs	r3, #64
	movt	r3, 2048
	cmp	r2, r3
	beq	.L1168
	b	.L1182
.L1166:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
	bl	_ZN7SQTable3SetERK11SQObjectPtrS2_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1169
	movs	r3, #1
	b	.L1170
.L1169:
	b	.L1171
.L1167:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
	bl	_ZN10SQInstance3SetERK11SQObjectPtrS2_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1172
	movs	r3, #1
	b	.L1170
.L1172:
	b	.L1171
.L1168:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r3, r3, #67108864
	cmp	r3, #0
	bne	.L1173
	ldr	r0, [r7, #8]
	bl	_Z11GetTypeNameRK11SQObjectPtr(PLT)
	mov	r4, r0
	ldr	r0, [r7, #4]
	bl	_Z11GetTypeNameRK11SQObjectPtr(PLT)
	mov	r3, r0
	ldr	r0, [r7, #12]
	ldr	r2, .L1184
.LPIC71:
	add	r2, pc
	mov	r1, r2
	mov	r2, r4
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
	movs	r3, #0
	b	.L1170
.L1173:
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r1, [r3]
	movs	r3, #4
	movt	r3, 1280
	cmp	r1, r3
	bne	.L1174
	ldr	r3, [r7, #4]
	flds	s15, [r3, #4]
	ftosizs	s15, s15
	fmrs	r3, s15	@ int
	b	.L1175
.L1174:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
.L1175:
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7]
	bl	_ZN7SQArray3SetEiRK11SQObjectPtr(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L1176
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	bl	_ZN4SQVM14Raise_IdxErrorERK11SQObjectPtr(PLT)
	movs	r3, #0
	b	.L1170
.L1176:
	movs	r3, #1
	b	.L1170
.L1182:
	ldr	r0, [r7, #8]
	bl	_Z11GetTypeNameRK11SQObjectPtr(PLT)
	mov	r3, r0
	ldr	r0, [r7, #12]
	ldr	r2, .L1184+4
.LPIC72:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
	movs	r3, #0
	b	.L1170
.L1171:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	_ZN4SQVM11FallBackSetERK11SQObjectPtrS2_S2_(PLT)
	mov	r3, r0
	cmp	r3, #1
	beq	.L1183
	cmp	r3, #2
	beq	.L1179
	cmp	r3, #0
	bne	.L1177
	movs	r3, #1
	b	.L1170
.L1179:
	movs	r3, #0
	b	.L1170
.L1183:
	nop
.L1177:
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bne	.L1181
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	mov	r0, r3
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
	bl	_ZN7SQTable3SetERK11SQObjectPtrS2_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1181
	movs	r3, #1
	b	.L1170
.L1181:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	bl	_ZN4SQVM14Raise_IdxErrorERK11SQObjectPtr(PLT)
	movs	r3, #0
.L1170:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L1185:
	.align	2
.L1184:
	.word	.LC32-(.LPIC71+4)
	.word	.LC33-(.LPIC72+4)
	.fnend
	.size	_ZN4SQVM3SetERK11SQObjectPtrS2_S2_i, .-_ZN4SQVM3SetERK11SQObjectPtrS2_S2_i
	.section	.text._ZN4SQVM11FallBackSetERK11SQObjectPtrS2_S2_,"ax",%progbits
	.align	2
	.global	_ZN4SQVM11FallBackSetERK11SQObjectPtrS2_S2_
	.thumb
	.thumb_func
	.type	_ZN4SQVM11FallBackSetERK11SQObjectPtrS2_S2_, %function
_ZN4SQVM11FallBackSetERK11SQObjectPtrS2_S2_:
	.fnstart
.LFB350:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #56
	sub	sp, sp, #56
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	mov	r2, r3
	movs	r3, #128
	movt	r3, 2560
	cmp	r2, r3
	beq	.L1188
	mov	r3, #32768
	movt	r3, 2560
	cmp	r2, r3
	beq	.L1188
	movs	r3, #32
	movt	r3, 2560
	cmp	r2, r3
	beq	.L1189
	b	.L1204
.L1189:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L1188
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #24]
	add	r2, r7, #40
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP7SQTable(PLT)
	add	r3, r7, #40
	movw	r2, #666
	str	r2, [sp]
	ldr	r0, [r7, #12]
	mov	r1, r3
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
.LEHB158:
	bl	_ZN4SQVM3SetERK11SQObjectPtrS2_S2_i(PLT)
.LEHE158:
	mov	r3, r0
	mov	r5, r3
	add	r3, r7, #40
	mov	r0, r3
.LEHB159:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE159:
	cmp	r5, #0
	beq	.L1188
	movs	r4, #0
	b	.L1190
.L1188:
	add	r3, r7, #32
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	add	r3, r7, #24
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	adds	r3, r3, #24
	ldr	r5, [r3]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	add	r3, r7, #32
	mov	r0, r2
	ldr	r1, [r7, #12]
	movs	r2, #6
.LEHB160:
	blx	r5
	mov	r3, r0
	cmp	r3, #0
	beq	.L1191
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	ldr	r0, [r7, #12]
	ldr	r1, [r7]
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE160:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #148]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #148]
	ldr	r3, [r7, #12]
	adds	r3, r3, #148
	add	r2, r7, #20
	mov	r0, r2
	mov	r1, r3
	bl	_ZN7AutoDecC1EPi(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #36]
	subs	r3, r3, #3
	add	r2, r7, #32
	add	r1, r7, #24
	str	r1, [sp]
	movs	r1, #0
	str	r1, [sp, #4]
	ldr	r0, [r7, #12]
	mov	r1, r2
	movs	r2, #3
.LEHB161:
	bl	_ZN4SQVM4CallER11SQObjectPtriiS1_j(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1192
	ldr	r0, [r7, #12]
	movs	r1, #3
	bl	_ZN4SQVM3PopEi(PLT)
	movs	r4, #0
	movs	r5, #0
	b	.L1193
.L1192:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #56]
	movs	r3, #1
	movt	r3, 256
	cmp	r2, r3
	beq	.L1194
	ldr	r0, [r7, #12]
	movs	r1, #3
	bl	_ZN4SQVM3PopEi(PLT)
.LEHE161:
	movs	r4, #2
	movs	r5, #0
	b	.L1193
.L1194:
	movs	r5, #1
.L1193:
	add	r3, r7, #20
	mov	r0, r3
	bl	_ZN7AutoDecD1Ev(PLT)
	cmp	r5, #1
	bne	.L1216
	nop
	b	.L1191
.L1216:
	movs	r5, #0
	b	.L1197
.L1191:
	movs	r5, #1
.L1197:
	add	r3, r7, #24
	mov	r0, r3
.LEHB162:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE162:
	cmp	r5, #1
	beq	.L1218
	movs	r5, #0
	b	.L1201
.L1218:
	nop
	movs	r5, #1
.L1201:
	add	r3, r7, #32
	mov	r0, r3
.LEHB163:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE163:
	cmp	r5, #1
	bne	.L1190
	nop
	nop
.L1204:
	movs	r4, #1
.L1190:
	mov	r3, r4
	b	.L1217
.L1210:
	add	r3, r7, #40
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB164:
	bl	__cxa_end_cleanup(PLT)
.LEHE164:
.L1213:
	add	r3, r7, #20
	mov	r0, r3
	bl	_ZN7AutoDecD1Ev(PLT)
	b	.L1207
.L1212:
.L1207:
	add	r3, r7, #24
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L1208
.L1211:
.L1208:
	add	r3, r7, #32
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB165:
	bl	__cxa_end_cleanup(PLT)
.LEHE165:
.L1217:
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA350:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE350-.LLSDACSB350
.LLSDACSB350:
	.uleb128 .LEHB158-.LFB350
	.uleb128 .LEHE158-.LEHB158
	.uleb128 .L1210-.LFB350
	.uleb128 0
	.uleb128 .LEHB159-.LFB350
	.uleb128 .LEHE159-.LEHB159
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB160-.LFB350
	.uleb128 .LEHE160-.LEHB160
	.uleb128 .L1212-.LFB350
	.uleb128 0
	.uleb128 .LEHB161-.LFB350
	.uleb128 .LEHE161-.LEHB161
	.uleb128 .L1213-.LFB350
	.uleb128 0
	.uleb128 .LEHB162-.LFB350
	.uleb128 .LEHE162-.LEHB162
	.uleb128 .L1211-.LFB350
	.uleb128 0
	.uleb128 .LEHB163-.LFB350
	.uleb128 .LEHE163-.LEHB163
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB164-.LFB350
	.uleb128 .LEHE164-.LEHB164
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB165-.LFB350
	.uleb128 .LEHE165-.LEHB165
	.uleb128 0
	.uleb128 0
.LLSDACSE350:
	.section	.text._ZN4SQVM11FallBackSetERK11SQObjectPtrS2_S2_
	.fnend
	.size	_ZN4SQVM11FallBackSetERK11SQObjectPtrS2_S2_, .-_ZN4SQVM11FallBackSetERK11SQObjectPtrS2_S2_
	.section	.rodata
	.align	2
.LC34:
	.ascii	"cloning a %s\000"
	.section	.text._ZN4SQVM5CloneERK11SQObjectPtrRS0_,"ax",%progbits
	.align	2
	.global	_ZN4SQVM5CloneERK11SQObjectPtrRS0_
	.thumb
	.thumb_func
	.type	_ZN4SQVM5CloneERK11SQObjectPtrRS0_, %function
_ZN4SQVM5CloneERK11SQObjectPtrRS0_:
	.fnstart
.LFB351:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	.save {r4, r5, r6, r7, lr}
	.pad #52
	sub	sp, sp, #52
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	add	r3, r7, #32
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	add	r3, r7, #24
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	mov	r2, r3
	movs	r3, #32
	movt	r3, 2560
	cmp	r2, r3
	beq	.L1221
	mov	r3, #32768
	movt	r3, 2560
	cmp	r2, r3
	beq	.L1222
	movs	r3, #64
	movt	r3, 2048
	cmp	r2, r3
	beq	.L1223
	b	.L1241
.L1221:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	mov	r0, r3
.LEHB166:
	bl	_ZN7SQTable5CloneEv(PLT)
	mov	r3, r0
	add	r2, r7, #24
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEP7SQTable(PLT)
	b	.L1224
.L1222:
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #140]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN10SQInstance5CloneEP13SQSharedState(PLT)
	mov	r3, r0
	add	r2, r7, #24
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEP10SQInstance(PLT)
.LEHE166:
.L1224:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L1225
	ldr	r3, [r7, #28]
	ldr	r3, [r3]
	adds	r3, r3, #24
	ldr	r4, [r3]
	ldr	r2, [r7, #28]
	add	r3, r7, #16
	mov	r0, r2
	ldr	r1, [r7, #12]
	movs	r2, #12
.LEHB167:
	blx	r4
	mov	r3, r0
	cmp	r3, #0
	beq	.L1225
	movs	r3, #1
	b	.L1226
.L1225:
	movs	r3, #0
.L1226:
	cmp	r3, #0
	beq	.L1227
	add	r3, r7, #24
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	add	r3, r7, #16
	add	r2, r7, #32
	str	r2, [sp]
	ldr	r0, [r7, #12]
	mov	r1, r3
	movs	r2, #12
	movs	r3, #2
	bl	_ZN4SQVM14CallMetaMethodER11SQObjectPtr12SQMetaMethodiS1_(PLT)
.LEHE167:
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L1227
	movs	r4, #0
	movs	r5, #0
	b	.L1228
.L1227:
	movs	r5, #1
	mov	r4, r6
.L1228:
	add	r3, r7, #16
	mov	r0, r3
.LEHB168:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	cmp	r5, #1
	beq	.L1243
	b	.L1232
.L1243:
	nop
	add	r3, r7, #24
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	movs	r4, #1
	b	.L1232
.L1223:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	_ZN7SQArray5CloneEv(PLT)
	mov	r3, r0
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEP7SQArray(PLT)
	movs	r4, #1
	b	.L1232
.L1241:
	ldr	r0, [r7, #8]
	bl	_Z11GetTypeNameRK11SQObjectPtr(PLT)
	mov	r3, r0
	ldr	r0, [r7, #12]
	ldr	r2, .L1244
.LPIC73:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
.LEHE168:
	movs	r4, #0
.L1232:
	add	r3, r7, #24
	mov	r0, r3
.LEHB169:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE169:
	add	r3, r7, #32
	mov	r0, r3
.LEHB170:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE170:
	mov	r3, r4
	b	.L1242
.L1239:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L1235
.L1238:
.L1235:
	add	r3, r7, #24
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L1236
.L1237:
.L1236:
	add	r3, r7, #32
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB171:
	bl	__cxa_end_cleanup(PLT)
.LEHE171:
.L1242:
	mov	r0, r3
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L1245:
	.align	2
.L1244:
	.word	.LC34-(.LPIC73+4)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA351:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE351-.LLSDACSB351
.LLSDACSB351:
	.uleb128 .LEHB166-.LFB351
	.uleb128 .LEHE166-.LEHB166
	.uleb128 .L1238-.LFB351
	.uleb128 0
	.uleb128 .LEHB167-.LFB351
	.uleb128 .LEHE167-.LEHB167
	.uleb128 .L1239-.LFB351
	.uleb128 0
	.uleb128 .LEHB168-.LFB351
	.uleb128 .LEHE168-.LEHB168
	.uleb128 .L1238-.LFB351
	.uleb128 0
	.uleb128 .LEHB169-.LFB351
	.uleb128 .LEHE169-.LEHB169
	.uleb128 .L1237-.LFB351
	.uleb128 0
	.uleb128 .LEHB170-.LFB351
	.uleb128 .LEHE170-.LEHB170
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB171-.LFB351
	.uleb128 .LEHE171-.LEHB171
	.uleb128 0
	.uleb128 0
.LLSDACSE351:
	.section	.text._ZN4SQVM5CloneERK11SQObjectPtrRS0_
	.fnend
	.size	_ZN4SQVM5CloneERK11SQObjectPtrRS0_, .-_ZN4SQVM5CloneERK11SQObjectPtrRS0_
	.section	.rodata
	.align	2
.LC35:
	.ascii	"object must be a class\000"
	.section	.text._ZN4SQVM8NewSlotAERK11SQObjectPtrS2_S2_S2_bb,"ax",%progbits
	.align	2
	.global	_ZN4SQVM8NewSlotAERK11SQObjectPtrS2_S2_S2_bb
	.thumb
	.thumb_func
	.type	_ZN4SQVM8NewSlotAERK11SQObjectPtrS2_S2_S2_bb, %function
_ZN4SQVM8NewSlotAERK11SQObjectPtrS2_S2_S2_bb:
	.fnstart
.LFB352:
	@ args = 12, pretend = 0, frame = 32
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
	ldr	r3, [r7, #8]
	ldr	r2, [r3]
	mov	r3, #16384
	movt	r3, 2048
	cmp	r2, r3
	beq	.L1247
	ldr	r0, [r7, #12]
	ldr	r3, .L1256
.LPIC74:
	add	r3, pc
	mov	r1, r3
.LEHB172:
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
	movs	r3, #0
	b	.L1255
.L1247:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	str	r3, [r7, #28]
	ldrb	r3, [r7, #48]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L1249
	ldr	r3, [r7, #28]
	adds	r3, r3, #184
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	ldr	r2, [r3]
	movs	r3, #1
	movt	r3, 256
	cmp	r2, r3
	beq	.L1250
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	ldr	r0, [r7, #12]
	ldr	r1, [r7]
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #40]
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE172:
	add	r2, r7, #16
	ldrb	r3, [r7, #44]	@ zero_extendqisi2
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1Eb(PLT)
	add	r3, r7, #16
	ldr	r0, [r7, #12]
	mov	r1, r3
.LEHB173:
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE173:
	add	r3, r7, #16
	mov	r0, r3
.LEHB174:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #88
	str	r3, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #24]
	movs	r2, #16
	movs	r3, #5
	bl	_ZN4SQVM14CallMetaMethodER11SQObjectPtr12SQMetaMethodiS1_(PLT)
	mov	r3, r0
	b	.L1255
.L1250:
.L1249:
	ldrb	r3, [r7, #44]	@ zero_extendqisi2
	str	r3, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	_ZN4SQVM7NewSlotERK11SQObjectPtrS2_S2_b(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L1251
	movs	r3, #0
	b	.L1255
.L1251:
	ldr	r3, [r7, #40]
	ldr	r2, [r3]
	movs	r3, #1
	movt	r3, 256
	cmp	r2, r3
	beq	.L1252
	ldr	r0, [r7, #28]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #40]
	bl	_ZN7SQClass13SetAttributesERK11SQObjectPtrS2_(PLT)
.LEHE174:
.L1252:
	movs	r3, #1
	b	.L1255
.L1254:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB175:
	bl	__cxa_end_cleanup(PLT)
.LEHE175:
.L1255:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L1257:
	.align	2
.L1256:
	.word	.LC35-(.LPIC74+4)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA352:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE352-.LLSDACSB352
.LLSDACSB352:
	.uleb128 .LEHB172-.LFB352
	.uleb128 .LEHE172-.LEHB172
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB173-.LFB352
	.uleb128 .LEHE173-.LEHB173
	.uleb128 .L1254-.LFB352
	.uleb128 0
	.uleb128 .LEHB174-.LFB352
	.uleb128 .LEHE174-.LEHB174
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB175-.LFB352
	.uleb128 .LEHE175-.LEHB175
	.uleb128 0
	.uleb128 0
.LLSDACSE352:
	.section	.text._ZN4SQVM8NewSlotAERK11SQObjectPtrS2_S2_S2_bb
	.fnend
	.size	_ZN4SQVM8NewSlotAERK11SQObjectPtrS2_S2_S2_bb, .-_ZN4SQVM8NewSlotAERK11SQObjectPtrS2_S2_S2_bb
	.section	.rodata
	.align	2
.LC36:
	.ascii	"null cannot be used as index\000"
	.align	2
.LC37:
	.ascii	"class instances do not support the new slot operato"
	.ascii	"r\000"
	.align	2
.LC38:
	.ascii	"trying to modify a class that has already been inst"
	.ascii	"antiated\000"
	.align	2
.LC39:
	.ascii	"the property '%s' already exists\000"
	.section	.text._ZN4SQVM7NewSlotERK11SQObjectPtrS2_S2_b,"ax",%progbits
	.align	2
	.global	_ZN4SQVM7NewSlotERK11SQObjectPtrS2_S2_b
	.thumb
	.thumb_func
	.type	_ZN4SQVM7NewSlotERK11SQObjectPtrS2_S2_b, %function
_ZN4SQVM7NewSlotERK11SQObjectPtrS2_S2_b:
	.fnstart
.LFB353:
	@ args = 4, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #72
	sub	sp, sp, #72
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	movs	r3, #1
	movt	r3, 256
	cmp	r2, r3
	bne	.L1259
	ldr	r0, [r7, #12]
	ldr	r3, .L1309
.LPIC75:
	add	r3, pc
	mov	r1, r3
.LEHB176:
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
.LEHE176:
	movs	r4, #0
	b	.L1260
.L1259:
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	mov	r2, r3
	movs	r3, #32
	movt	r3, 2560
	cmp	r2, r3
	beq	.L1262
	mov	r3, #32768
	movt	r3, 2560
	cmp	r2, r3
	beq	.L1263
	mov	r3, #16384
	movt	r3, 2048
	cmp	r2, r3
	beq	.L1264
	b	.L1305
.L1262:
	movs	r3, #1
	strb	r3, [r7, #63]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L1265
	add	r3, r7, #52
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	add	r3, r7, #52
	mov	r0, r2
	ldr	r1, [r7, #4]
	mov	r2, r3
.LEHB177:
	bl	_ZN7SQTable3GetERK11SQObjectPtrRS0_(PLT)
.LEHE177:
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L1266
	add	r3, r7, #44
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L1267
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	adds	r3, r3, #24
	ldr	r5, [r3]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	add	r3, r7, #44
	mov	r0, r2
	ldr	r1, [r7, #12]
	movs	r2, #13
.LEHB178:
	blx	r5
	mov	r3, r0
	cmp	r3, #0
	beq	.L1267
	movs	r3, #1
	b	.L1268
.L1267:
	movs	r3, #0
.L1268:
	cmp	r3, #0
	beq	.L1269
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	ldr	r0, [r7, #12]
	ldr	r1, [r7]
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	add	r3, r7, #44
	add	r2, r7, #52
	str	r2, [sp]
	ldr	r0, [r7, #12]
	mov	r1, r3
	movs	r2, #13
	movs	r3, #3
	bl	_ZN4SQVM14CallMetaMethodER11SQObjectPtr12SQMetaMethodiS1_(PLT)
.LEHE178:
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L1270
	movs	r4, #0
	movs	r5, #0
	b	.L1271
.L1270:
	movs	r3, #0
	strb	r3, [r7, #63]
	b	.L1272
.L1269:
	movs	r3, #1
	strb	r3, [r7, #63]
.L1272:
	movs	r5, #1
.L1271:
	add	r3, r7, #44
	mov	r0, r3
.LEHB179:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE179:
	cmp	r5, #1
	bne	.L1306
	nop
	b	.L1266
.L1306:
	movs	r5, #0
	b	.L1275
.L1266:
	movs	r5, #1
.L1275:
	add	r3, r7, #52
	mov	r0, r3
.LEHB180:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	cmp	r5, #1
	bne	.L1260
	nop
.L1265:
	ldrb	r3, [r7, #63]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1278
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE180:
.L1278:
	b	.L1279
.L1263:
	add	r3, r7, #36
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	add	r3, r7, #28
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L1280
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	adds	r3, r3, #24
	ldr	r5, [r3]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	add	r3, r7, #28
	mov	r0, r2
	ldr	r1, [r7, #12]
	movs	r2, #13
.LEHB181:
	blx	r5
	mov	r3, r0
	cmp	r3, #0
	beq	.L1280
	movs	r3, #1
	b	.L1281
.L1280:
	movs	r3, #0
.L1281:
	cmp	r3, #0
	beq	.L1282
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	ldr	r0, [r7, #12]
	ldr	r1, [r7]
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	add	r3, r7, #28
	add	r2, r7, #36
	str	r2, [sp]
	ldr	r0, [r7, #12]
	mov	r1, r3
	movs	r2, #13
	movs	r3, #3
	bl	_ZN4SQVM14CallMetaMethodER11SQObjectPtr12SQMetaMethodiS1_(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L1283
	movs	r4, #0
	movs	r5, #0
	b	.L1284
.L1283:
	movs	r5, #1
	b	.L1284
.L1282:
	ldr	r0, [r7, #12]
	ldr	r3, .L1309+4
.LPIC76:
	add	r3, pc
	mov	r1, r3
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
.LEHE181:
	movs	r4, #0
	movs	r5, #0
.L1284:
	add	r3, r7, #28
	mov	r0, r3
.LEHB182:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE182:
	cmp	r5, #0
	bne	.L1307
	movs	r5, #0
	b	.L1287
.L1307:
	movs	r5, #1
.L1287:
	add	r3, r7, #36
	mov	r0, r3
.LEHB183:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	cmp	r5, #0
	beq	.L1260
	b	.L1279
.L1264:
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #140]
	ldrb	r1, [r7, #80]	@ zero_extendqisi2
	str	r1, [sp]
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	_ZN7SQClass7NewSlotEP13SQSharedStateRK11SQObjectPtrS4_b(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L1290
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	ldrb	r3, [r3, #216]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1291
	ldr	r0, [r7, #12]
	ldr	r3, .L1309+8
.LPIC77:
	add	r3, pc
	mov	r1, r3
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
	movs	r4, #0
	b	.L1260
.L1291:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	bl	_ZN4SQVM11PrintObjValERK11SQObjectPtr(PLT)
.LEHE183:
	mov	r3, r0
	add	r2, r7, #20
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	ldr	r3, [r7, #24]
	adds	r3, r3, #28
	ldr	r0, [r7, #12]
	ldr	r2, .L1309+12
.LPIC78:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
.LEHB184:
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
.LEHE184:
	movs	r4, #0
	add	r3, r7, #20
	mov	r0, r3
.LEHB185:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L1260
.L1290:
	b	.L1279
.L1305:
	ldr	r0, [r7, #8]
	bl	_Z11GetTypeNameRK11SQObjectPtr(PLT)
	mov	r4, r0
	ldr	r0, [r7, #4]
	bl	_Z11GetTypeNameRK11SQObjectPtr(PLT)
	mov	r3, r0
	ldr	r0, [r7, #12]
	ldr	r2, .L1309+16
.LPIC79:
	add	r2, pc
	mov	r1, r2
	mov	r2, r4
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
.LEHE185:
	movs	r4, #0
	b	.L1260
.L1279:
	movs	r4, #1
.L1260:
	mov	r3, r4
	b	.L1308
.L1299:
	add	r3, r7, #44
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L1293
.L1298:
.L1293:
	add	r3, r7, #52
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB186:
	bl	__cxa_end_cleanup(PLT)
.LEHE186:
.L1301:
	add	r3, r7, #28
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L1295
.L1300:
.L1295:
	add	r3, r7, #36
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB187:
	bl	__cxa_end_cleanup(PLT)
.LEHE187:
.L1302:
	add	r3, r7, #20
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB188:
	bl	__cxa_end_cleanup(PLT)
.LEHE188:
.L1308:
	mov	r0, r3
	adds	r7, r7, #64
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L1310:
	.align	2
.L1309:
	.word	.LC36-(.LPIC75+4)
	.word	.LC37-(.LPIC76+4)
	.word	.LC38-(.LPIC77+4)
	.word	.LC39-(.LPIC78+4)
	.word	.LC32-(.LPIC79+4)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA353:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE353-.LLSDACSB353
.LLSDACSB353:
	.uleb128 .LEHB176-.LFB353
	.uleb128 .LEHE176-.LEHB176
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB177-.LFB353
	.uleb128 .LEHE177-.LEHB177
	.uleb128 .L1298-.LFB353
	.uleb128 0
	.uleb128 .LEHB178-.LFB353
	.uleb128 .LEHE178-.LEHB178
	.uleb128 .L1299-.LFB353
	.uleb128 0
	.uleb128 .LEHB179-.LFB353
	.uleb128 .LEHE179-.LEHB179
	.uleb128 .L1298-.LFB353
	.uleb128 0
	.uleb128 .LEHB180-.LFB353
	.uleb128 .LEHE180-.LEHB180
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB181-.LFB353
	.uleb128 .LEHE181-.LEHB181
	.uleb128 .L1301-.LFB353
	.uleb128 0
	.uleb128 .LEHB182-.LFB353
	.uleb128 .LEHE182-.LEHB182
	.uleb128 .L1300-.LFB353
	.uleb128 0
	.uleb128 .LEHB183-.LFB353
	.uleb128 .LEHE183-.LEHB183
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB184-.LFB353
	.uleb128 .LEHE184-.LEHB184
	.uleb128 .L1302-.LFB353
	.uleb128 0
	.uleb128 .LEHB185-.LFB353
	.uleb128 .LEHE185-.LEHB185
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB186-.LFB353
	.uleb128 .LEHE186-.LEHB186
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB187-.LFB353
	.uleb128 .LEHE187-.LEHB187
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB188-.LFB353
	.uleb128 .LEHE188-.LEHB188
	.uleb128 0
	.uleb128 0
.LLSDACSE353:
	.section	.text._ZN4SQVM7NewSlotERK11SQObjectPtrS2_S2_b
	.fnend
	.size	_ZN4SQVM7NewSlotERK11SQObjectPtrS2_S2_b, .-_ZN4SQVM7NewSlotERK11SQObjectPtrS2_S2_b
	.section	.rodata
	.align	2
.LC40:
	.ascii	"cannot delete a slot from %s\000"
	.align	2
.LC41:
	.ascii	"attempt to delete a slot from a %s\000"
	.section	.text._ZN4SQVM10DeleteSlotERK11SQObjectPtrS2_RS0_,"ax",%progbits
	.align	2
	.global	_ZN4SQVM10DeleteSlotERK11SQObjectPtrS2_RS0_
	.thumb
	.thumb_func
	.type	_ZN4SQVM10DeleteSlotERK11SQObjectPtrS2_RS0_, %function
_ZN4SQVM10DeleteSlotERK11SQObjectPtrS2_RS0_:
	.fnstart
.LFB354:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	.save {r4, r5, r6, r7, lr}
	.pad #52
	sub	sp, sp, #52
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	mov	r2, r3
	movs	r3, #128
	movt	r3, 2560
	cmp	r2, r3
	beq	.L1313
	mov	r3, #32768
	movt	r3, 2560
	cmp	r2, r3
	beq	.L1313
	movs	r3, #32
	movt	r3, 2560
	cmp	r2, r3
	bne	.L1336
.L1313:
	add	r3, r7, #24
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L1314
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	adds	r3, r3, #24
	ldr	r4, [r3]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	add	r3, r7, #16
	mov	r0, r2
	ldr	r1, [r7, #12]
	movs	r2, #14
.LEHB189:
	blx	r4
	mov	r3, r0
	cmp	r3, #0
	beq	.L1314
	movs	r3, #1
	b	.L1315
.L1314:
	movs	r3, #0
.L1315:
	cmp	r3, #0
	beq	.L1316
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
	add	r3, r7, #16
	ldr	r2, [r7]
	str	r2, [sp]
	ldr	r0, [r7, #12]
	mov	r1, r3
	movs	r2, #14
	movs	r3, #2
	bl	_ZN4SQVM14CallMetaMethodER11SQObjectPtr12SQMetaMethodiS1_(PLT)
	mov	r3, r0
	mov	r4, r3
	movs	r5, #0
	b	.L1317
.L1316:
	ldr	r3, [r7, #8]
	ldr	r2, [r3]
	movs	r3, #32
	movt	r3, 2560
	cmp	r2, r3
	bne	.L1318
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	add	r3, r7, #24
	mov	r0, r2
	ldr	r1, [r7, #4]
	mov	r2, r3
	bl	_ZN7SQTable3GetERK11SQObjectPtrRS0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1319
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	_ZN7SQTable6RemoveERK11SQObjectPtr(PLT)
.LEHE189:
	b	.L1337
.L1319:
	ldr	r3, [r7, #4]
	add	r2, r7, #32
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1ERK11tagSQObject(PLT)
	add	r3, r7, #32
	ldr	r0, [r7, #12]
	mov	r1, r3
.LEHB190:
	bl	_ZN4SQVM14Raise_IdxErrorERK11SQObjectPtr(PLT)
.LEHE190:
	add	r3, r7, #32
	mov	r0, r3
.LEHB191:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	movs	r4, #0
	movs	r5, #0
	b	.L1317
.L1318:
	ldr	r0, [r7, #8]
	bl	_Z11GetTypeNameRK11SQObjectPtr(PLT)
	mov	r3, r0
	ldr	r0, [r7, #12]
	ldr	r2, .L1340
.LPIC80:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
	movs	r4, #0
	movs	r5, #0
	b	.L1317
.L1337:
	add	r3, r7, #24
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
.LEHE191:
	movs	r5, #1
	mov	r4, r6
.L1317:
	add	r3, r7, #16
	mov	r0, r3
.LEHB192:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE192:
	cmp	r5, #1
	beq	.L1339
	movs	r5, #0
	b	.L1324
.L1339:
	nop
	movs	r5, #1
.L1324:
	add	r3, r7, #24
	mov	r0, r3
.LEHB193:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	cmp	r5, #1
	bne	.L1328
	nop
	nop
	movs	r4, #1
	b	.L1328
.L1336:
	ldr	r0, [r7, #8]
	bl	_Z11GetTypeNameRK11SQObjectPtr(PLT)
	mov	r3, r0
	ldr	r0, [r7, #12]
	ldr	r2, .L1340+4
.LPIC81:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
.LEHE193:
	movs	r4, #0
.L1328:
	mov	r3, r4
	b	.L1338
.L1334:
	add	r3, r7, #32
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L1330
.L1333:
.L1330:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L1331
.L1332:
.L1331:
	add	r3, r7, #24
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB194:
	bl	__cxa_end_cleanup(PLT)
.LEHE194:
.L1338:
	mov	r0, r3
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L1341:
	.align	2
.L1340:
	.word	.LC40-(.LPIC80+4)
	.word	.LC41-(.LPIC81+4)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA354:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE354-.LLSDACSB354
.LLSDACSB354:
	.uleb128 .LEHB189-.LFB354
	.uleb128 .LEHE189-.LEHB189
	.uleb128 .L1333-.LFB354
	.uleb128 0
	.uleb128 .LEHB190-.LFB354
	.uleb128 .LEHE190-.LEHB190
	.uleb128 .L1334-.LFB354
	.uleb128 0
	.uleb128 .LEHB191-.LFB354
	.uleb128 .LEHE191-.LEHB191
	.uleb128 .L1333-.LFB354
	.uleb128 0
	.uleb128 .LEHB192-.LFB354
	.uleb128 .LEHE192-.LEHB192
	.uleb128 .L1332-.LFB354
	.uleb128 0
	.uleb128 .LEHB193-.LFB354
	.uleb128 .LEHE193-.LEHB193
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB194-.LFB354
	.uleb128 .LEHE194-.LEHB194
	.uleb128 0
	.uleb128 0
.LLSDACSE354:
	.section	.text._ZN4SQVM10DeleteSlotERK11SQObjectPtrS2_RS0_
	.fnend
	.size	_ZN4SQVM10DeleteSlotERK11SQObjectPtrS2_RS0_, .-_ZN4SQVM10DeleteSlotERK11SQObjectPtrS2_RS0_
	.section	.text._ZN4SQVM4CallER11SQObjectPtriiS1_j,"ax",%progbits
	.align	2
	.global	_ZN4SQVM4CallER11SQObjectPtriiS1_j
	.thumb
	.thumb_func
	.type	_ZN4SQVM4CallER11SQObjectPtriiS1_j, %function
_ZN4SQVM4CallER11SQObjectPtriiS1_j:
	.fnstart
.LFB355:
	@ args = 8, pretend = 0, frame = 40
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
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	mov	r2, r3
	mov	r3, #512
	movt	r3, 2048
	cmp	r2, r3
	beq	.L1344
	mov	r3, #16384
	movt	r3, 2048
	cmp	r2, r3
	beq	.L1345
	mov	r3, #256
	movt	r3, 2048
	cmp	r2, r3
	bne	.L1354
	ldr	r3, [r7, #56]
	str	r3, [sp]
	ldr	r3, [r7, #60]
	str	r3, [sp, #4]
	movs	r3, #0
	str	r3, [sp, #8]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
.LEHB195:
	bl	_ZN4SQVM7ExecuteER11SQObjectPtriiS1_jNS_13ExecutionTypeE(PLT)
	mov	r3, r0
	mov	r4, r3
	b	.L1347
.L1344:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #56]
	str	r2, [sp]
	add	r2, r7, #39
	str	r2, [sp, #4]
	ldr	r0, [r7, #12]
	mov	r1, r3
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	_ZN4SQVM10CallNativeEP15SQNativeClosureiiR11SQObjectPtrRb(PLT)
.LEHE195:
	mov	r3, r0
	mov	r4, r3
	b	.L1347
.L1345:
	add	r3, r7, #28
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	add	r3, r7, #20
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	add	r3, r7, #28
	ldr	r0, [r7, #12]
	mov	r1, r2
	ldr	r2, [r7, #56]
.LEHB196:
	bl	_ZN4SQVM19CreateClassInstanceEP7SQClassR11SQObjectPtrS3_(PLT)
	ldr	r2, [r7, #28]
	movs	r3, #1
	movt	r3, 256
	cmp	r2, r3
	beq	.L1348
	ldr	r3, [r7, #12]
	add	r2, r3, #24
	ldr	r3, [r7]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI11SQObjectPtrEixEj(PLT)
	mov	r3, r0
	mov	r0, r3
	ldr	r1, [r7, #56]
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	add	r3, r7, #28
	add	r2, r7, #20
	str	r2, [sp]
	ldr	r2, [r7, #60]
	str	r2, [sp, #4]
	ldr	r0, [r7, #12]
	mov	r1, r3
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	_ZN4SQVM4CallER11SQObjectPtriiS1_j(PLT)
.LEHE196:
	mov	r3, r0
	mov	r4, r3
	b	.L1349
.L1348:
	movs	r4, #1
.L1349:
	add	r3, r7, #20
	mov	r0, r3
.LEHB197:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE197:
	add	r3, r7, #28
	mov	r0, r3
.LEHB198:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE198:
	b	.L1347
.L1354:
	movs	r4, #0
.L1347:
	mov	r3, r4
	b	.L1355
.L1353:
	add	r3, r7, #20
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L1351
.L1352:
.L1351:
	add	r3, r7, #28
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB199:
	bl	__cxa_end_cleanup(PLT)
.LEHE199:
.L1355:
	mov	r0, r3
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA355:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE355-.LLSDACSB355
.LLSDACSB355:
	.uleb128 .LEHB195-.LFB355
	.uleb128 .LEHE195-.LEHB195
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB196-.LFB355
	.uleb128 .LEHE196-.LEHB196
	.uleb128 .L1353-.LFB355
	.uleb128 0
	.uleb128 .LEHB197-.LFB355
	.uleb128 .LEHE197-.LEHB197
	.uleb128 .L1352-.LFB355
	.uleb128 0
	.uleb128 .LEHB198-.LFB355
	.uleb128 .LEHE198-.LEHB198
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB199-.LFB355
	.uleb128 .LEHE199-.LEHB199
	.uleb128 0
	.uleb128 0
.LLSDACSE355:
	.section	.text._ZN4SQVM4CallER11SQObjectPtriiS1_j
	.fnend
	.size	_ZN4SQVM4CallER11SQObjectPtriiS1_j, .-_ZN4SQVM4CallER11SQObjectPtriiS1_j
	.section	.text._ZN4SQVM14CallMetaMethodER11SQObjectPtr12SQMetaMethodiS1_,"ax",%progbits
	.align	2
	.global	_ZN4SQVM14CallMetaMethodER11SQObjectPtr12SQMetaMethodiS1_
	.thumb
	.thumb_func
	.type	_ZN4SQVM14CallMetaMethodER11SQObjectPtr12SQMetaMethodiS1_, %function
_ZN4SQVM14CallMetaMethodER11SQObjectPtr12SQMetaMethodiS1_:
	.fnstart
.LFB356:
	@ args = 4, pretend = 0, frame = 16
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
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #148]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #148]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #36]
	ldr	r3, [r7]
	subs	r3, r2, r3
	ldr	r2, [r7, #24]
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7]
	bl	_ZN4SQVM4CallER11SQObjectPtriiS1_j(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1357
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #148]
	subs	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #148]
	ldr	r0, [r7, #12]
	ldr	r1, [r7]
	bl	_ZN4SQVM3PopEi(PLT)
	movs	r3, #1
	b	.L1358
.L1357:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #148]
	subs	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #148]
	ldr	r0, [r7, #12]
	ldr	r1, [r7]
	bl	_ZN4SQVM3PopEi(PLT)
	movs	r3, #0
.L1358:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN4SQVM14CallMetaMethodER11SQObjectPtr12SQMetaMethodiS1_, .-_ZN4SQVM14CallMetaMethodER11SQObjectPtr12SQMetaMethodiS1_
	.section	.text._ZN4SQVM9FindOuterER11SQObjectPtrPS0_,"ax",%progbits
	.align	2
	.global	_ZN4SQVM9FindOuterER11SQObjectPtrPS0_
	.thumb
	.thumb_func
	.type	_ZN4SQVM9FindOuterER11SQObjectPtrPS0_, %function
_ZN4SQVM9FindOuterER11SQObjectPtrPS0_:
	.fnstart
.LFB357:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #48
	sub	sp, sp, #48
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	adds	r3, r3, #44
	str	r3, [r7, #44]
	b	.L1360
.L1365:
	ldr	r3, [r7, #40]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bne	.L1361
	add	r3, r7, #20
	mov	r0, r3
	ldr	r1, [r7, #40]
	bl	_ZN11SQObjectPtrC1EP7SQOuter(PLT)
	add	r3, r7, #20
	ldr	r0, [r7, #8]
	mov	r1, r3
.LEHB200:
	bl	_ZN11SQObjectPtraSERKS_(PLT)
.LEHE200:
	add	r3, r7, #20
	mov	r0, r3
.LEHB201:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L1359
.L1361:
	ldr	r3, [r7, #40]
	adds	r3, r3, #40
	str	r3, [r7, #44]
.L1360:
	ldr	r3, [r7, #44]
	ldr	r3, [r3]
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	cmp	r3, #0
	beq	.L1363
	ldr	r3, [r7, #40]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcc	.L1363
	movs	r3, #1
	b	.L1364
.L1363:
	movs	r3, #0
.L1364:
	cmp	r3, #0
	bne	.L1365
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #140]
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	_ZN7SQOuter6CreateEP13SQSharedStateP11SQObjectPtr(PLT)
.LEHE201:
	mov	r3, r0
	str	r3, [r7, #36]
	ldr	r3, [r7, #44]
	ldr	r2, [r3]
	ldr	r3, [r7, #36]
	str	r2, [r3, #40]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	subs	r3, r2, r3
	asrs	r3, r3, #3
	mov	r2, r3
	ldr	r3, [r7, #36]
	str	r2, [r3, #28]
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #4]
	adds	r2, r3, #1
	ldr	r3, [r7, #36]
	str	r2, [r3, #4]
	ldr	r3, [r7, #44]
	ldr	r2, [r7, #36]
	str	r2, [r3]
	add	r3, r7, #28
	mov	r0, r3
	ldr	r1, [r7, #36]
	bl	_ZN11SQObjectPtrC1EP7SQOuter(PLT)
	add	r3, r7, #28
	ldr	r0, [r7, #8]
	mov	r1, r3
.LEHB202:
	bl	_ZN11SQObjectPtraSERKS_(PLT)
.LEHE202:
	add	r3, r7, #28
	mov	r0, r3
.LEHB203:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE203:
	b	.L1359
.L1368:
	add	r3, r7, #20
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB204:
	bl	__cxa_end_cleanup(PLT)
.LEHE204:
.L1369:
	add	r3, r7, #28
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB205:
	bl	__cxa_end_cleanup(PLT)
.LEHE205:
.L1359:
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA357:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE357-.LLSDACSB357
.LLSDACSB357:
	.uleb128 .LEHB200-.LFB357
	.uleb128 .LEHE200-.LEHB200
	.uleb128 .L1368-.LFB357
	.uleb128 0
	.uleb128 .LEHB201-.LFB357
	.uleb128 .LEHE201-.LEHB201
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB202-.LFB357
	.uleb128 .LEHE202-.LEHB202
	.uleb128 .L1369-.LFB357
	.uleb128 0
	.uleb128 .LEHB203-.LFB357
	.uleb128 .LEHE203-.LEHB203
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB204-.LFB357
	.uleb128 .LEHE204-.LEHB204
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB205-.LFB357
	.uleb128 .LEHE205-.LEHB205
	.uleb128 0
	.uleb128 0
.LLSDACSE357:
	.section	.text._ZN4SQVM9FindOuterER11SQObjectPtrPS0_
	.fnend
	.size	_ZN4SQVM9FindOuterER11SQObjectPtrPS0_, .-_ZN4SQVM9FindOuterER11SQObjectPtrPS0_
	.section	.rodata
	.align	2
.LC42:
	.ascii	"stack overflow, cannot resize stack while in  a met"
	.ascii	"amethod\000"
	.section	.text._ZN4SQVM10EnterFrameEiib,"ax",%progbits
	.align	2
	.global	_ZN4SQVM10EnterFrameEiib
	.thumb
	.thumb_func
	.type	_ZN4SQVM10EnterFrameEiib, %function
_ZN4SQVM10EnterFrameEiib:
	.fnstart
.LFB358:
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
	strb	r3, [r7, #3]
	ldrb	r3, [r7, #3]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L1371
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #100]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #104]
	cmp	r2, r3
	bne	.L1372
	ldr	r0, [r7, #12]
.LEHB206:
	bl	_ZN4SQVM13GrowCallStackEv(PLT)
.L1372:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #96]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #100]
	adds	r0, r3, #1
	ldr	r1, [r7, #12]
	str	r0, [r1, #100]
	movs	r1, #44
	mul	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #132]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #132]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #40]
	ldr	r1, [r7, #8]
	subs	r2, r1, r2
	str	r2, [r3, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #132]
	ldr	r2, [r7, #12]
	ldr	r1, [r2, #36]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #40]
	subs	r2, r1, r2
	str	r2, [r3, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #132]
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #132]
	movs	r2, #1
	str	r2, [r3, #36]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #132]
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #132]
	movs	r2, #0
	str	r2, [r3, #40]
	b	.L1373
.L1371:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #132]
	ldr	r2, [r3, #36]
	adds	r2, r2, #1
	str	r2, [r3, #36]
.L1373:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #40]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #36]
	ldr	r3, [r7, #4]
	add	r4, r3, #15
	ldr	r3, [r7, #12]
	adds	r3, r3, #24
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4sizeEv(PLT)
	mov	r3, r0
	cmp	r4, r3
	ite	gt
	movgt	r3, #1
	movle	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L1374
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #148]
	cmp	r3, #0
	beq	.L1375
	ldr	r0, [r7, #12]
	ldr	r3, .L1380
.LPIC82:
	add	r3, pc
	mov	r1, r3
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
	movs	r3, #0
	b	.L1379
.L1375:
	ldr	r3, [r7, #12]
	add	r5, r3, #24
	ldr	r3, [r7, #12]
	adds	r3, r3, #24
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4sizeEv(PLT)
.LEHE206:
	mov	r3, r0
	add	r4, r3, #60
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	add	r3, r7, #16
	mov	r0, r5
	mov	r1, r4
	mov	r2, r3
.LEHB207:
	bl	_ZN8sqvectorI11SQObjectPtrE6resizeEjRKS0_(PLT)
.LEHE207:
	add	r3, r7, #16
	mov	r0, r3
.LEHB208:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	ldr	r0, [r7, #12]
	bl	_ZN4SQVM14RelocateOutersEv(PLT)
.LEHE208:
.L1374:
	movs	r3, #1
	b	.L1379
.L1378:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB209:
	bl	__cxa_end_cleanup(PLT)
.LEHE209:
.L1379:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L1381:
	.align	2
.L1380:
	.word	.LC42-(.LPIC82+4)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA358:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE358-.LLSDACSB358
.LLSDACSB358:
	.uleb128 .LEHB206-.LFB358
	.uleb128 .LEHE206-.LEHB206
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB207-.LFB358
	.uleb128 .LEHE207-.LEHB207
	.uleb128 .L1378-.LFB358
	.uleb128 0
	.uleb128 .LEHB208-.LFB358
	.uleb128 .LEHE208-.LEHB208
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB209-.LFB358
	.uleb128 .LEHE209-.LEHB209
	.uleb128 0
	.uleb128 0
.LLSDACSE358:
	.section	.text._ZN4SQVM10EnterFrameEiib
	.fnend
	.size	_ZN4SQVM10EnterFrameEiib, .-_ZN4SQVM10EnterFrameEiib
	.section	.text._ZN4SQVM10LeaveFrameEv,"ax",%progbits
	.align	2
	.global	_ZN4SQVM10LeaveFrameEv
	.thumb
	.thumb_func
	.type	_ZN4SQVM10LeaveFrameEv, %function
_ZN4SQVM10LeaveFrameEv:
	.fnstart
.LFB359:
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
	ldr	r3, [r3, #36]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	subs	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #100]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #132]
	adds	r3, r3, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #132]
	ldr	r3, [r3, #24]
	subs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #40]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #132]
	ldr	r3, [r3, #28]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #36]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L1383
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #96]
	ldr	r3, [r7, #12]
	movs	r1, #44
	mul	r3, r1, r3
	subs	r3, r3, #44
	add	r3, r3, r2
	b	.L1384
.L1383:
	movs	r3, #0
.L1384:
	ldr	r2, [r7, #4]
	str	r3, [r2, #132]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L1385
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #16]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN4SQVM11CloseOutersEP11SQObjectPtr(PLT)
.L1385:
	b	.L1386
.L1387:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #20]
	subs	r1, r3, #1
	str	r1, [r7, #20]
	lsls	r3, r3, #3
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
.L1386:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	ble	.L1387
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN4SQVM10LeaveFrameEv, .-_ZN4SQVM10LeaveFrameEv
	.section	.text._ZN4SQVM14RelocateOutersEv,"ax",%progbits
	.align	2
	.global	_ZN4SQVM14RelocateOutersEv
	.thumb
	.thumb_func
	.type	_ZN4SQVM14RelocateOutersEv, %function
_ZN4SQVM14RelocateOutersEv:
	.fnstart
.LFB360:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	str	r3, [r7, #12]
	b	.L1389
.L1390:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	lsls	r3, r3, #3
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #40]
	str	r3, [r7, #12]
.L1389:
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L1390
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN4SQVM14RelocateOutersEv, .-_ZN4SQVM14RelocateOutersEv
	.section	.text._ZN4SQVM11CloseOutersEP11SQObjectPtr,"ax",%progbits
	.align	2
	.global	_ZN4SQVM11CloseOutersEP11SQObjectPtr
	.thumb
	.thumb_func
	.type	_ZN4SQVM11CloseOutersEP11SQObjectPtr, %function
_ZN4SQVM11CloseOutersEP11SQObjectPtr:
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
	b	.L1392
.L1396:
	ldr	r3, [r7, #12]
	add	r2, r3, #32
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	ldr	r3, [r7, #12]
	add	r2, r3, #32
	ldr	r3, [r7, #12]
	str	r2, [r3, #24]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #4]
	str	r2, [r3, #44]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L1392
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	subs	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L1393
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r0, [r7, #12]
	blx	r3
.L1393:
	movs	r3, #0
	str	r3, [r7, #12]
.L1392:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L1394
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #24]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L1394
	movs	r3, #1
	b	.L1395
.L1394:
	movs	r3, #0
.L1395:
	cmp	r3, #0
	bne	.L1396
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN4SQVM11CloseOutersEP11SQObjectPtr, .-_ZN4SQVM11CloseOutersEP11SQObjectPtr
	.section	.text._ZN4SQVM6RemoveEi,"ax",%progbits
	.align	2
	.global	_ZN4SQVM6RemoveEi
	.thumb
	.thumb_func
	.type	_ZN4SQVM6RemoveEi, %function
_ZN4SQVM6RemoveEi:
	.fnstart
.LFB362:
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
	cmp	r3, #0
	blt	.L1398
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #40]
	ldr	r3, [r7]
	add	r3, r3, r2
	subs	r3, r3, #1
	b	.L1399
.L1398:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #36]
	ldr	r3, [r7]
	add	r3, r3, r2
.L1399:
	str	r3, [r7]
	ldr	r3, [r7]
	str	r3, [r7, #12]
	b	.L1400
.L1401:
	ldr	r3, [r7, #4]
	add	r2, r3, #24
	ldr	r3, [r7, #12]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI11SQObjectPtrEixEj(PLT)
	mov	r4, r0
	ldr	r3, [r7, #4]
	add	r2, r3, #24
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI11SQObjectPtrEixEj(PLT)
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L1400:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bgt	.L1401
	ldr	r3, [r7, #4]
	add	r2, r3, #24
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI11SQObjectPtrEixEj(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	subs	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #36]
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZN4SQVM6RemoveEi, .-_ZN4SQVM6RemoveEi
	.section	.text._ZN4SQVM3PopEv,"ax",%progbits
	.align	2
	.global	_ZN4SQVM3PopEv
	.thumb
	.thumb_func
	.type	_ZN4SQVM3PopEv, %function
_ZN4SQVM3PopEv:
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
	ldr	r3, [r7, #4]
	add	r2, r3, #24
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	subs	r1, r3, #1
	ldr	r3, [r7, #4]
	str	r1, [r3, #36]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI11SQObjectPtrEixEj(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN4SQVM3PopEv, .-_ZN4SQVM3PopEv
	.section	.text._ZN4SQVM3PopEi,"ax",%progbits
	.align	2
	.global	_ZN4SQVM3PopEi
	.thumb
	.thumb_func
	.type	_ZN4SQVM3PopEi, %function
_ZN4SQVM3PopEi:
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
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L1404
.L1405:
	ldr	r3, [r7, #4]
	add	r2, r3, #24
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	subs	r1, r3, #1
	ldr	r3, [r7, #4]
	str	r1, [r3, #36]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI11SQObjectPtrEixEj(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L1404:
	ldr	r2, [r7, #12]
	ldr	r3, [r7]
	cmp	r2, r3
	blt	.L1405
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN4SQVM3PopEi, .-_ZN4SQVM3PopEi
	.section	.text._ZN4SQVM8PushNullEv,"ax",%progbits
	.align	2
	.global	_ZN4SQVM8PushNullEv
	.thumb
	.thumb_func
	.type	_ZN4SQVM8PushNullEv, %function
_ZN4SQVM8PushNullEv:
	.fnstart
.LFB365:
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
	add	r2, r3, #24
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	adds	r0, r3, #1
	ldr	r1, [r7, #4]
	str	r0, [r1, #36]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI11SQObjectPtrEixEj(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN4SQVM8PushNullEv, .-_ZN4SQVM8PushNullEv
	.section	.text._ZN4SQVM4PushERK11SQObjectPtr,"ax",%progbits
	.align	2
	.global	_ZN4SQVM4PushERK11SQObjectPtr
	.thumb
	.thumb_func
	.type	_ZN4SQVM4PushERK11SQObjectPtr, %function
_ZN4SQVM4PushERK11SQObjectPtr:
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
	str	r1, [r7]
	ldr	r3, [r7, #4]
	add	r2, r3, #24
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	adds	r0, r3, #1
	ldr	r1, [r7, #4]
	str	r0, [r1, #36]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI11SQObjectPtrEixEj(PLT)
	mov	r3, r0
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN4SQVM4PushERK11SQObjectPtr, .-_ZN4SQVM4PushERK11SQObjectPtr
	.section	.text._ZN4SQVM3TopEv,"ax",%progbits
	.align	2
	.global	_ZN4SQVM3TopEv
	.thumb
	.thumb_func
	.type	_ZN4SQVM3TopEv, %function
_ZN4SQVM3TopEv:
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
	add	r2, r3, #24
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	subs	r3, r3, #1
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI11SQObjectPtrEixEj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN4SQVM3TopEv, .-_ZN4SQVM3TopEv
	.section	.text._ZN4SQVM6PopGetEv,"ax",%progbits
	.align	2
	.global	_ZN4SQVM6PopGetEv
	.thumb
	.thumb_func
	.type	_ZN4SQVM6PopGetEv, %function
_ZN4SQVM6PopGetEv:
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
	add	r2, r3, #24
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	subs	r1, r3, #1
	ldr	r3, [r7, #4]
	str	r1, [r3, #36]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI11SQObjectPtrEixEj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN4SQVM6PopGetEv, .-_ZN4SQVM6PopGetEv
	.section	.text._ZN4SQVM5GetUpEi,"ax",%progbits
	.align	2
	.global	_ZN4SQVM5GetUpEi
	.thumb
	.thumb_func
	.type	_ZN4SQVM5GetUpEi, %function
_ZN4SQVM5GetUpEi:
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
	add	r2, r3, #24
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #36]
	ldr	r3, [r7]
	add	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI11SQObjectPtrEixEj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN4SQVM5GetUpEi, .-_ZN4SQVM5GetUpEi
	.section	.text._ZN4SQVM5GetAtEi,"ax",%progbits
	.align	2
	.global	_ZN4SQVM5GetAtEi
	.thumb
	.thumb_func
	.type	_ZN4SQVM5GetAtEi, %function
_ZN4SQVM5GetAtEi:
	.fnstart
.LFB370:
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
	add	r2, r3, #24
	ldr	r3, [r7]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI11SQObjectPtrEixEj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN4SQVM5GetAtEi, .-_ZN4SQVM5GetAtEi
	.section	.text._ZN4SQVM8CallInfoC2ERKS0_,"axG",%progbits,_ZN4SQVM8CallInfoC5ERKS0_,comdat
	.align	2
	.weak	_ZN4SQVM8CallInfoC2ERKS0_
	.thumb
	.thumb_func
	.type	_ZN4SQVM8CallInfoC2ERKS0_, %function
_ZN4SQVM8CallInfoC2ERKS0_:
	.fnstart
.LFB373:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
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
	bl	_ZN11SQObjectPtrC1ERKS_(PLT)
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
	.cantunwind
	.fnend
	.size	_ZN4SQVM8CallInfoC2ERKS0_, .-_ZN4SQVM8CallInfoC2ERKS0_
	.weak	_ZN4SQVM8CallInfoC1ERKS0_
	.thumb_set _ZN4SQVM8CallInfoC1ERKS0_,_ZN4SQVM8CallInfoC2ERKS0_
	.section	.text._ZN8sqvectorIN4SQVM8CallInfoEE6resizeEjRKS1_,"axG",%progbits,_ZN8sqvectorIN4SQVM8CallInfoEE6resizeEjRKS1_,comdat
	.align	2
	.weak	_ZN8sqvectorIN4SQVM8CallInfoEE6resizeEjRKS1_
	.thumb
	.thumb_func
	.type	_ZN8sqvectorIN4SQVM8CallInfoEE6resizeEjRKS1_, %function
_ZN8sqvectorIN4SQVM8CallInfoEE6resizeEjRKS1_:
	.fnstart
.LFB371:
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
	bcs	.L1420
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_ZN8sqvectorIN4SQVM8CallInfoEE8_reallocEj(PLT)
.L1420:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcs	.L1421
	b	.L1422
.L1425:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	movs	r1, #44
	mul	r3, r1, r3
	add	r3, r3, r2
	movs	r0, #44
	mov	r1, r3
	bl	_ZnwjPv(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1424
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	_ZN4SQVM8CallInfoC1ERKS0_(PLT)
.L1424:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #4]
.L1422:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L1425
	b	.L1419
.L1421:
	ldr	r3, [r7, #8]
	str	r3, [r7, #20]
	b	.L1427
.L1428:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	movs	r1, #44
	mul	r3, r1, r3
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZN4SQVM8CallInfoD1Ev(PLT)
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L1427:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bhi	.L1428
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #4]
.L1419:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN8sqvectorIN4SQVM8CallInfoEE6resizeEjRKS1_, .-_ZN8sqvectorIN4SQVM8CallInfoEE6resizeEjRKS1_
	.section	.text._ZNK8sqvectorIN4SQVM8CallInfoEEixEj,"axG",%progbits,_ZNK8sqvectorIN4SQVM8CallInfoEEixEj,comdat
	.align	2
	.weak	_ZNK8sqvectorIN4SQVM8CallInfoEEixEj
	.thumb
	.thumb_func
	.type	_ZNK8sqvectorIN4SQVM8CallInfoEEixEj, %function
_ZNK8sqvectorIN4SQVM8CallInfoEEixEj:
	.fnstart
.LFB375:
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
	movs	r1, #44
	mul	r3, r1, r3
	add	r3, r3, r2
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNK8sqvectorIN4SQVM8CallInfoEEixEj, .-_ZNK8sqvectorIN4SQVM8CallInfoEEixEj
	.section	.text._ZN8sqvectorI11SQObjectPtrEC2Ev,"axG",%progbits,_ZN8sqvectorI11SQObjectPtrEC5Ev,comdat
	.align	2
	.weak	_ZN8sqvectorI11SQObjectPtrEC2Ev
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI11SQObjectPtrEC2Ev, %function
_ZN8sqvectorI11SQObjectPtrEC2Ev:
	.fnstart
.LFB377:
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
	beq	.L1435
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L1436
.L1437:
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
.L1436:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bhi	.L1437
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	lsls	r3, r3, #3
	mov	r0, r2
	mov	r1, r3
	bl	_Z10sq_vm_freePvj(PLT)
.L1435:
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
	.section	.text._ZN8sqvectorI15SQExceptionTrapEC2Ev,"axG",%progbits,_ZN8sqvectorI15SQExceptionTrapEC5Ev,comdat
	.align	2
	.weak	_ZN8sqvectorI15SQExceptionTrapEC2Ev
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI15SQExceptionTrapEC2Ev, %function
_ZN8sqvectorI15SQExceptionTrapEC2Ev:
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
	.size	_ZN8sqvectorI15SQExceptionTrapEC2Ev, .-_ZN8sqvectorI15SQExceptionTrapEC2Ev
	.weak	_ZN8sqvectorI15SQExceptionTrapEC1Ev
	.thumb_set _ZN8sqvectorI15SQExceptionTrapEC1Ev,_ZN8sqvectorI15SQExceptionTrapEC2Ev
	.section	.text._ZN8sqvectorI15SQExceptionTrapED2Ev,"axG",%progbits,_ZN8sqvectorI15SQExceptionTrapED5Ev,comdat
	.align	2
	.weak	_ZN8sqvectorI15SQExceptionTrapED2Ev
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI15SQExceptionTrapED2Ev, %function
_ZN8sqvectorI15SQExceptionTrapED2Ev:
	.fnstart
.LFB386:
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
	beq	.L1443
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L1444
.L1445:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L1444:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bhi	.L1445
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	lsls	r3, r3, #4
	mov	r0, r2
	mov	r1, r3
	bl	_Z10sq_vm_freePvj(PLT)
.L1443:
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
	.section	.text._ZN8sqvectorI11SQObjectPtrE6resizeEjRKS0_,"axG",%progbits,_ZN8sqvectorI11SQObjectPtrE6resizeEjRKS0_,comdat
	.align	2
	.weak	_ZN8sqvectorI11SQObjectPtrE6resizeEjRKS0_
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI11SQObjectPtrE6resizeEjRKS0_, %function
_ZN8sqvectorI11SQObjectPtrE6resizeEjRKS0_:
	.fnstart
.LFB388:
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
	bcs	.L1448
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_ZN8sqvectorI11SQObjectPtrE8_reallocEj(PLT)
.L1448:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcs	.L1449
	b	.L1450
.L1453:
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
	beq	.L1452
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	_ZN11SQObjectPtrC1ERKS_(PLT)
.L1452:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #4]
.L1450:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L1453
	b	.L1447
.L1449:
	ldr	r3, [r7, #8]
	str	r3, [r7, #20]
	b	.L1455
.L1456:
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
.L1455:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bhi	.L1456
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #4]
.L1447:
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
.LFB396:
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
.LFB397:
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
	.section	.text._ZN8sqvectorI11SQObjectPtrE4copyERKS1_,"axG",%progbits,_ZN8sqvectorI11SQObjectPtrE4copyERKS1_,comdat
	.align	2
	.weak	_ZN8sqvectorI11SQObjectPtrE4copyERKS1_
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI11SQObjectPtrE4copyERKS1_, %function
_ZN8sqvectorI11SQObjectPtrE4copyERKS1_:
	.fnstart
.LFB398:
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
	beq	.L1462
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	movs	r1, #0
	mov	r2, r3
.LEHB210:
	bl	_ZN8sqvectorI11SQObjectPtrE6resizeEjRKS0_(PLT)
.LEHE210:
	add	r3, r7, #12
	mov	r0, r3
.LEHB211:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.L1462:
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	bls	.L1463
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN8sqvectorI11SQObjectPtrE8_reallocEj(PLT)
.LEHE211:
.L1463:
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L1464
.L1467:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #3
	add	r3, r3, r2
	movs	r0, #8
	mov	r1, r3
	bl	_ZnwjPv(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1466
	ldr	r2, [r7]
	ldr	r1, [r2]
	ldr	r2, [r7, #20]
	lsls	r2, r2, #3
	add	r2, r2, r1
	mov	r0, r3
	mov	r1, r2
	bl	_ZN11SQObjectPtrC1ERKS_(PLT)
.L1466:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L1464:
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bhi	.L1467
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	b	.L1470
.L1469:
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB212:
	bl	__cxa_end_cleanup(PLT)
.LEHE212:
.L1470:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA398:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE398-.LLSDACSB398
.LLSDACSB398:
	.uleb128 .LEHB210-.LFB398
	.uleb128 .LEHE210-.LEHB210
	.uleb128 .L1469-.LFB398
	.uleb128 0
	.uleb128 .LEHB211-.LFB398
	.uleb128 .LEHE211-.LEHB211
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB212-.LFB398
	.uleb128 .LEHE212-.LEHB212
	.uleb128 0
	.uleb128 0
.LLSDACSE398:
	.section	.text._ZN8sqvectorI11SQObjectPtrE4copyERKS1_,"axG",%progbits,_ZN8sqvectorI11SQObjectPtrE4copyERKS1_,comdat
	.fnend
	.size	_ZN8sqvectorI11SQObjectPtrE4copyERKS1_, .-_ZN8sqvectorI11SQObjectPtrE4copyERKS1_
	.section	.text._ZN8sqvectorI11SQObjectPtrE7reserveEj,"axG",%progbits,_ZN8sqvectorI11SQObjectPtrE7reserveEj,comdat
	.align	2
	.weak	_ZN8sqvectorI11SQObjectPtrE7reserveEj
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI11SQObjectPtrE7reserveEj, %function
_ZN8sqvectorI11SQObjectPtrE7reserveEj:
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
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	_ZN8sqvectorI11SQObjectPtrE8_reallocEj(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN8sqvectorI11SQObjectPtrE7reserveEj, .-_ZN8sqvectorI11SQObjectPtrE7reserveEj
	.section	.text._ZN8sqvectorI11SQObjectPtrE9push_backERKS0_,"axG",%progbits,_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_,comdat
	.align	2
	.weak	_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_, %function
_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_:
	.fnstart
.LFB400:
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
	bhi	.L1473
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #1
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN8sqvectorI11SQObjectPtrE8_reallocEj(PLT)
.L1473:
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
	beq	.L1474
	mov	r0, r4
	ldr	r1, [r7]
	bl	_ZN11SQObjectPtrC1ERKS_(PLT)
	mov	r3, r4
	b	.L1475
.L1474:
	mov	r3, r4
.L1475:
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
.LFB407:
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
.LFB408:
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
	.section	.text._ZN8sqvectorIN4SQVM8CallInfoEEC2Ev,"axG",%progbits,_ZN8sqvectorIN4SQVM8CallInfoEEC5Ev,comdat
	.align	2
	.weak	_ZN8sqvectorIN4SQVM8CallInfoEEC2Ev
	.thumb
	.thumb_func
	.type	_ZN8sqvectorIN4SQVM8CallInfoEEC2Ev, %function
_ZN8sqvectorIN4SQVM8CallInfoEEC2Ev:
	.fnstart
.LFB410:
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
	.size	_ZN8sqvectorIN4SQVM8CallInfoEEC2Ev, .-_ZN8sqvectorIN4SQVM8CallInfoEEC2Ev
	.weak	_ZN8sqvectorIN4SQVM8CallInfoEEC1Ev
	.thumb_set _ZN8sqvectorIN4SQVM8CallInfoEEC1Ev,_ZN8sqvectorIN4SQVM8CallInfoEEC2Ev
	.section	.text._ZN8sqvectorIN4SQVM8CallInfoEED2Ev,"axG",%progbits,_ZN8sqvectorIN4SQVM8CallInfoEED5Ev,comdat
	.align	2
	.weak	_ZN8sqvectorIN4SQVM8CallInfoEED2Ev
	.thumb
	.thumb_func
	.type	_ZN8sqvectorIN4SQVM8CallInfoEED2Ev, %function
_ZN8sqvectorIN4SQVM8CallInfoEED2Ev:
	.fnstart
.LFB413:
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
	beq	.L1485
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L1486
.L1487:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r1, #44
	mul	r3, r1, r3
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZN4SQVM8CallInfoD1Ev(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L1486:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bhi	.L1487
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	movs	r1, #44
	mul	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	_Z10sq_vm_freePvj(PLT)
.L1485:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN8sqvectorIN4SQVM8CallInfoEED2Ev, .-_ZN8sqvectorIN4SQVM8CallInfoEED2Ev
	.weak	_ZN8sqvectorIN4SQVM8CallInfoEED1Ev
	.thumb_set _ZN8sqvectorIN4SQVM8CallInfoEED1Ev,_ZN8sqvectorIN4SQVM8CallInfoEED2Ev
	.section	.text._ZN8sqvectorI15SQExceptionTrapE9push_backERKS0_,"axG",%progbits,_ZN8sqvectorI15SQExceptionTrapE9push_backERKS0_,comdat
	.align	2
	.weak	_ZN8sqvectorI15SQExceptionTrapE9push_backERKS0_
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI15SQExceptionTrapE9push_backERKS0_, %function
_ZN8sqvectorI15SQExceptionTrapE9push_backERKS0_:
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
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bhi	.L1490
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #1
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN8sqvectorI15SQExceptionTrapE8_reallocEj(PLT)
.L1490:
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
	beq	.L1491
	mov	r0, r4
	ldr	r1, [r7]
	bl	_ZN15SQExceptionTrapC1ERKS_(PLT)
	mov	r3, r4
	b	.L1492
.L1491:
	mov	r3, r4
.L1492:
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
.LFB416:
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
	.section	.text._ZNK8sqvectorI15SQExceptionTrapE3topEv,"axG",%progbits,_ZNK8sqvectorI15SQExceptionTrapE3topEv,comdat
	.align	2
	.weak	_ZNK8sqvectorI15SQExceptionTrapE3topEv
	.thumb
	.thumb_func
	.type	_ZNK8sqvectorI15SQExceptionTrapE3topEv, %function
_ZNK8sqvectorI15SQExceptionTrapE3topEv:
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
	.section	.text._ZNK8sqvectorIiE4sizeEv,"axG",%progbits,_ZNK8sqvectorIiE4sizeEv,comdat
	.align	2
	.weak	_ZNK8sqvectorIiE4sizeEv
	.thumb
	.thumb_func
	.type	_ZNK8sqvectorIiE4sizeEv, %function
_ZNK8sqvectorIiE4sizeEv:
	.fnstart
.LFB418:
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
	.section	.text._ZN8sqvectorIN4SQVM8CallInfoEE8_reallocEj,"axG",%progbits,_ZN8sqvectorIN4SQVM8CallInfoEE8_reallocEj,comdat
	.align	2
	.weak	_ZN8sqvectorIN4SQVM8CallInfoEE8_reallocEj
	.thumb
	.thumb_func
	.type	_ZN8sqvectorIN4SQVM8CallInfoEE8_reallocEj, %function
_ZN8sqvectorIN4SQVM8CallInfoEE8_reallocEj:
	.fnstart
.LFB419:
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
	beq	.L1500
	ldr	r3, [r7]
	b	.L1501
.L1500:
	movs	r3, #4
.L1501:
	str	r3, [r7]
	ldr	r3, [r7, #4]
	ldr	r1, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	movs	r2, #44
	mul	r2, r2, r3
	ldr	r3, [r7]
	movs	r0, #44
	mul	r3, r0, r3
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
	.size	_ZN8sqvectorIN4SQVM8CallInfoEE8_reallocEj, .-_ZN8sqvectorIN4SQVM8CallInfoEE8_reallocEj
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
	beq	.L1503
	ldr	r3, [r7]
	b	.L1504
.L1503:
	movs	r3, #4
.L1504:
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
.LFB423:
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
	beq	.L1506
	ldr	r3, [r7]
	b	.L1507
.L1506:
	movs	r3, #4
.L1507:
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
	.global	_ZTV4SQVM
	.section	.data.rel.ro._ZTV4SQVM,"aw",%progbits
	.align	3
	.type	_ZTV4SQVM, %object
	.size	_ZTV4SQVM, 32
_ZTV4SQVM:
	.word	0
	.word	_ZTI4SQVM
	.word	_ZN4SQVMD1Ev
	.word	_ZN4SQVMD0Ev
	.word	_ZN4SQVM7ReleaseEv
	.word	_ZN4SQVM7GetTypeEv
	.word	_ZN4SQVM4MarkEPP13SQCollectable
	.word	_ZN4SQVM8FinalizeEv
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
	.global	_ZTI4SQVM
	.section	.data.rel.ro._ZTI4SQVM,"aw",%progbits
	.align	2
	.type	_ZTI4SQVM, %object
	.size	_ZTI4SQVM, 12
_ZTI4SQVM:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTS4SQVM
	.word	_ZTI13SQCollectable
	.global	_ZTS4SQVM
	.section	.rodata._ZTS4SQVM,"a",%progbits
	.align	2
	.type	_ZTS4SQVM, %object
	.size	_ZTS4SQVM, 6
_ZTS4SQVM:
	.ascii	"4SQVM\000"
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
	.section	.rodata._ZZN4SQVM15ArithMetaMethodEiRK11SQObjectPtrS2_RS0_E19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN4SQVM15ArithMetaMethodEiRK11SQObjectPtrS2_RS0_E19__PRETTY_FUNCTION__, %object
	.size	_ZZN4SQVM15ArithMetaMethodEiRK11SQObjectPtrS2_RS0_E19__PRETTY_FUNCTION__, 92
_ZZN4SQVM15ArithMetaMethodEiRK11SQObjectPtrS2_RS0_E19__PRETTY_FUNCTION__:
	.ascii	"bool SQVM::ArithMetaMethod(SQInteger, const SQObjec"
	.ascii	"tPtr&, const SQObjectPtr&, SQObjectPtr&)\000"
	.section	.rodata._ZZN4SQVM6CMP_OPE5CmpOPRK11SQObjectPtrS3_RS1_E19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN4SQVM6CMP_OPE5CmpOPRK11SQObjectPtrS3_RS1_E19__PRETTY_FUNCTION__, %object
	.size	_ZZN4SQVM6CMP_OPE5CmpOPRK11SQObjectPtrS3_RS1_E19__PRETTY_FUNCTION__, 79
_ZZN4SQVM6CMP_OPE5CmpOPRK11SQObjectPtrS3_RS1_E19__PRETTY_FUNCTION__:
	.ascii	"bool SQVM::CMP_OP(CmpOP, const SQObjectPtr&, const "
	.ascii	"SQObjectPtr&, SQObjectPtr&)\000"
	.section	.rodata._ZZN4SQVM7ExecuteER11SQObjectPtriiS1_jNS_13ExecutionTypeEE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN4SQVM7ExecuteER11SQObjectPtriiS1_jNS_13ExecutionTypeEE19__PRETTY_FUNCTION__, %object
	.size	_ZZN4SQVM7ExecuteER11SQObjectPtriiS1_jNS_13ExecutionTypeEE19__PRETTY_FUNCTION__, 98
_ZZN4SQVM7ExecuteER11SQObjectPtriiS1_jNS_13ExecutionTypeEE19__PRETTY_FUNCTION__:
	.ascii	"bool SQVM::Execute(SQObjectPtr&, SQInteger, SQInteg"
	.ascii	"er, SQObjectPtr&, SQBool, SQVM::ExecutionType)\000"
	.section	.rodata._ZZN11SQObjectPtrC1EP11SQGeneratorE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN11SQObjectPtrC1EP11SQGeneratorE19__PRETTY_FUNCTION__, %object
	.size	_ZZN11SQObjectPtrC1EP11SQGeneratorE19__PRETTY_FUNCTION__, 39
_ZZN11SQObjectPtrC1EP11SQGeneratorE19__PRETTY_FUNCTION__:
	.ascii	"SQObjectPtr::SQObjectPtr(SQGenerator*)\000"
	.section	.rodata._ZZN11SQObjectPtrC1EP7SQTableE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN11SQObjectPtrC1EP7SQTableE19__PRETTY_FUNCTION__, %object
	.size	_ZZN11SQObjectPtrC1EP7SQTableE19__PRETTY_FUNCTION__, 35
_ZZN11SQObjectPtrC1EP7SQTableE19__PRETTY_FUNCTION__:
	.ascii	"SQObjectPtr::SQObjectPtr(SQTable*)\000"
	.section	.rodata._ZZN11SQObjectPtrC1EP8SQStringE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN11SQObjectPtrC1EP8SQStringE19__PRETTY_FUNCTION__, %object
	.size	_ZZN11SQObjectPtrC1EP8SQStringE19__PRETTY_FUNCTION__, 36
_ZZN11SQObjectPtrC1EP8SQStringE19__PRETTY_FUNCTION__:
	.ascii	"SQObjectPtr::SQObjectPtr(SQString*)\000"
	.section	.rodata._ZZN11SQObjectPtrC1EP7SQOuterE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN11SQObjectPtrC1EP7SQOuterE19__PRETTY_FUNCTION__, %object
	.size	_ZZN11SQObjectPtrC1EP7SQOuterE19__PRETTY_FUNCTION__, 35
_ZZN11SQObjectPtrC1EP7SQOuterE19__PRETTY_FUNCTION__:
	.ascii	"SQObjectPtr::SQObjectPtr(SQOuter*)\000"
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
