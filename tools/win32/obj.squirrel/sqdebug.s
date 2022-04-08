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
	.file	"sqdebug.cpp"
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
	beq	.L5
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #4]
	adds	r2, r2, #1
	str	r2, [r3, #4]
.L5:
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
	bne	.L8
	ldr	r3, .L11
.LPIC0:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L11+4
.LPIC1:
	add	r3, pc
	mov	r1, r3
	movs	r2, #234
	ldr	r3, .L11+8
.LPIC2:
	add	r3, pc
	bl	__assert_fail(PLT)
.L8:
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
.L12:
	.align	2
.L11:
	.word	.LC0-(.LPIC0+4)
	.word	.LC1-(.LPIC1+4)
	.word	_ZZN11SQObjectPtrC1EP8SQStringE19__PRETTY_FUNCTION__-(.LPIC2+4)
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
	beq	.L14
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L14
	movs	r3, #1
	b	.L15
.L14:
	movs	r3, #0
.L15:
	cmp	r3, #0
	beq	.L16
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	mov	r0, r2
	blx	r3
.L16:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQObjectPtraSEP8SQString, .-_ZN11SQObjectPtraSEP8SQString
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
	beq	.L19
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L19
	movs	r3, #1
	b	.L20
.L19:
	movs	r3, #0
.L20:
	cmp	r3, #0
	beq	.L21
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #4]
	mov	r0, r2
	blx	r3
.L21:
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
	beq	.L24
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #4]
	adds	r2, r2, #1
	str	r2, [r3, #4]
.L24:
	ldr	r3, [r7, #12]
	and	r3, r3, #134217728
	cmp	r3, #0
	beq	.L25
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L25
	movs	r3, #1
	b	.L26
.L25:
	movs	r3, #0
.L26:
	cmp	r3, #0
	beq	.L27
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	mov	r0, r2
	blx	r3
.L27:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQObjectPtraSERKS_, .-_ZN11SQObjectPtraSERKS_
	.section	.rodata
	.align	2
.LC2:
	.ascii	"unknown\000"
	.align	2
.LC3:
	.ascii	"the object is not a closure\000"
	.section	.text.sq_getfunctioninfo,"ax",%progbits
	.align	2
	.global	sq_getfunctioninfo
	.thumb
	.thumb_func
	.type	sq_getfunctioninfo, %function
sq_getfunctioninfo:
	.fnstart
.LFB241:
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
	ldr	r3, [r3, #100]
	str	r3, [r7, #28]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	ble	.L30
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #96]
	ldr	r1, [r7, #28]
	ldr	r3, [r7, #8]
	subs	r3, r1, r3
	movs	r1, #44
	mul	r3, r1, r3
	subs	r3, r3, #44
	add	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #8]
	mov	r3, #256
	movt	r3, 2048
	cmp	r2, r3
	bne	.L31
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #12]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #32]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #16]
	str	r2, [r3]
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #32]
	movs	r3, #16
	movt	r3, 2048
	cmp	r2, r3
	bne	.L32
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #36]
	adds	r3, r3, #28
	b	.L33
.L32:
	ldr	r3, .L37
.LPIC3:
	add	r3, pc
.L33:
	ldr	r2, [r7, #4]
	str	r3, [r2, #4]
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #32]
	movs	r3, #16
	movt	r3, 2048
	cmp	r2, r3
	bne	.L34
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #28]
	adds	r3, r3, #28
	b	.L35
.L34:
	ldr	r3, .L37+4
.LPIC4:
	add	r3, pc
.L35:
	ldr	r2, [r7, #4]
	str	r3, [r2, #8]
	movs	r3, #0
	b	.L36
.L31:
.L30:
	ldr	r0, [r7, #12]
	ldr	r3, .L37+8
.LPIC5:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
.L36:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L38:
	.align	2
.L37:
	.word	.LC2-(.LPIC3+4)
	.word	.LC2-(.LPIC4+4)
	.word	.LC3-(.LPIC5+4)
	.fnend
	.size	sq_getfunctioninfo, .-sq_getfunctioninfo
	.section	.rodata
	.align	2
.LC4:
	.ascii	"NATIVE\000"
	.section	.text.sq_stackinfos,"ax",%progbits
	.align	2
	.global	sq_stackinfos
	.thumb
	.thumb_func
	.type	sq_stackinfos, %function
sq_stackinfos:
	.fnstart
.LFB242:
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
	ldr	r3, [r3, #100]
	str	r3, [r7, #28]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	ble	.L40
	ldr	r0, [r7, #4]
	movs	r1, #0
	movs	r2, #12
	bl	memset(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #96]
	ldr	r1, [r7, #28]
	ldr	r3, [r7, #8]
	subs	r3, r1, r3
	movs	r1, #44
	mul	r3, r1, r3
	subs	r3, r3, #44
	add	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #8]
	mov	r2, r3
	mov	r3, #256
	movt	r3, 2048
	cmp	r2, r3
	beq	.L42
	mov	r3, #512
	movt	r3, 2048
	cmp	r2, r3
	beq	.L43
	b	.L46
.L42:
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #32]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #32]
	movs	r3, #16
	movt	r3, 2048
	cmp	r2, r3
	bne	.L44
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #36]
	add	r2, r3, #28
	ldr	r3, [r7, #4]
	str	r2, [r3]
.L44:
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #24]
	movs	r3, #16
	movt	r3, 2048
	cmp	r2, r3
	bne	.L45
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #28]
	add	r2, r3, #28
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
.L45:
	ldr	r3, [r7, #24]
	ldr	r3, [r3]
	ldr	r0, [r7, #20]
	mov	r1, r3
	bl	_ZN15SQFunctionProto7GetLineEP13SQInstruction(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	b	.L46
.L43:
	ldr	r3, [r7, #4]
	ldr	r2, .L49
.LPIC6:
	add	r2, pc
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r2, .L49+4
.LPIC7:
	add	r2, pc
	str	r2, [r3]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #12]
	ldr	r2, [r3, #56]
	movs	r3, #16
	movt	r3, 2048
	cmp	r2, r3
	bne	.L47
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #60]
	add	r2, r3, #28
	ldr	r3, [r7, #4]
	str	r2, [r3]
.L47:
	ldr	r3, [r7, #4]
	mov	r2, #-1
	str	r2, [r3, #8]
	nop
.L46:
	movs	r3, #0
	b	.L48
.L40:
	mov	r3, #-1
.L48:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L50:
	.align	2
.L49:
	.word	.LC4-(.LPIC6+4)
	.word	.LC2-(.LPIC7+4)
	.fnend
	.size	sq_stackinfos, .-sq_stackinfos
	.section	.text._ZN4SQVM11Raise_ErrorEPKcz,"ax",%progbits
	.align	2
	.global	_ZN4SQVM11Raise_ErrorEPKcz
	.thumb
	.thumb_func
	.type	_ZN4SQVM11Raise_ErrorEPKcz, %function
_ZN4SQVM11Raise_ErrorEPKcz:
	.fnstart
.LFB243:
	@ args = 4, pretend = 12, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 1
	push	{r1, r2, r3}
	.save {r1, r2, r3}
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #20
	sub	sp, sp, #20
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	add	r3, r7, #40
	str	r3, [r7, #8]
	ldr	r0, [r7, #36]
	bl	strlen(PLT)
	mov	r3, r0
	adds	r3, r3, #100
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #140]
	mov	r0, r3
	ldr	r1, [r7, #12]
	bl	_ZN13SQSharedState13GetScratchPadEi(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #8]
	bl	vsnprintf(PLT)
	ldr	r3, [r7, #4]
	add	r4, r3, #56
	ldr	r3, [r7, #4]
	ldr	r5, [r3, #140]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #140]
	mov	r0, r3
	mov	r1, #-1
	bl	_ZN13SQSharedState13GetScratchPadEi(PLT)
	mov	r3, r0
	mov	r0, r5
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEP8SQString(PLT)
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, lr}
	add	sp, sp, #12
	bx	lr
	.fnend
	.size	_ZN4SQVM11Raise_ErrorEPKcz, .-_ZN4SQVM11Raise_ErrorEPKcz
	.section	.text._ZN4SQVM11Raise_ErrorERK11SQObjectPtr,"ax",%progbits
	.align	2
	.global	_ZN4SQVM11Raise_ErrorERK11SQObjectPtr
	.thumb
	.thumb_func
	.type	_ZN4SQVM11Raise_ErrorERK11SQObjectPtr, %function
_ZN4SQVM11Raise_ErrorERK11SQObjectPtr:
	.fnstart
.LFB244:
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
	adds	r3, r3, #56
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN4SQVM11Raise_ErrorERK11SQObjectPtr, .-_ZN4SQVM11Raise_ErrorERK11SQObjectPtr
	.section	.rodata
	.align	2
.LC5:
	.ascii	"%d\000"
	.align	2
.LC6:
	.ascii	"%.14g\000"
	.section	.text._ZN4SQVM11PrintObjValERK11SQObjectPtr,"ax",%progbits
	.align	2
	.global	_ZN4SQVM11PrintObjValERK11SQObjectPtr
	.thumb
	.thumb_func
	.type	_ZN4SQVM11PrintObjValERK11SQObjectPtr, %function
_ZN4SQVM11PrintObjValERK11SQObjectPtr:
	.fnstart
.LFB245:
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
	ldr	r3, [r7]
	ldr	r3, [r3]
	mov	r2, r3
	movs	r3, #4
	movt	r3, 1280
	cmp	r2, r3
	beq	.L55
	movs	r3, #16
	movt	r3, 2048
	cmp	r2, r3
	beq	.L56
	movs	r3, #2
	movt	r3, 1280
	cmp	r2, r3
	beq	.L57
	b	.L59
.L56:
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	b	.L58
.L57:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #140]
	mov	r0, r3
	movs	r1, #51
	bl	_ZN13SQSharedState13GetScratchPadEi(PLT)
	mov	r2, r0
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	mov	r0, r2
	ldr	r2, .L60
.LPIC8:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	bl	sprintf(PLT)
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #140]
	ldr	r3, [r7, #4]
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
	b	.L58
.L55:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #140]
	mov	r0, r3
	movs	r1, #51
	bl	_ZN13SQSharedState13GetScratchPadEi(PLT)
	mov	r3, r0
	ldr	r2, [r7]
	flds	s15, [r2, #4]
	fcvtds	d7, s15
	mov	r0, r3
	ldr	r3, .L60+4
.LPIC9:
	add	r3, pc
	mov	r1, r3
	fmrrd	r2, r3, d7
	bl	sprintf(PLT)
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #140]
	ldr	r3, [r7, #4]
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
	b	.L58
.L59:
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #140]
	ldr	r0, [r7]
	bl	_Z11GetTypeNameRK11SQObjectPtr(PLT)
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
	mov	r3, r0
.L58:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L61:
	.align	2
.L60:
	.word	.LC5-(.LPIC8+4)
	.word	.LC6-(.LPIC9+4)
	.fnend
	.size	_ZN4SQVM11PrintObjValERK11SQObjectPtr, .-_ZN4SQVM11PrintObjValERK11SQObjectPtr
	.section	.rodata
	.align	2
.LC7:
	.ascii	"the index '%.50s' does not exist\000"
	.section	.text._ZN4SQVM14Raise_IdxErrorERK11SQObjectPtr,"ax",%progbits
	.align	2
	.global	_ZN4SQVM14Raise_IdxErrorERK11SQObjectPtr
	.thumb
	.thumb_func
	.type	_ZN4SQVM14Raise_IdxErrorERK11SQObjectPtr, %function
_ZN4SQVM14Raise_IdxErrorERK11SQObjectPtr:
	.fnstart
.LFB246:
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
.LEHB0:
	bl	_ZN4SQVM11PrintObjValERK11SQObjectPtr(PLT)
.LEHE0:
	mov	r3, r0
	add	r2, r7, #8
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #28
	ldr	r0, [r7, #4]
	ldr	r2, .L66
.LPIC10:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
.LEHB1:
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
.LEHE1:
	add	r3, r7, #8
	mov	r0, r3
.LEHB2:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE2:
	b	.L65
.L64:
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB3:
	bl	__cxa_end_cleanup(PLT)
.LEHE3:
.L65:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L67:
	.align	2
.L66:
	.word	.LC7-(.LPIC10+4)
	.global	__gxx_personality_v0
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA246:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE246-.LLSDACSB246
.LLSDACSB246:
	.uleb128 .LEHB0-.LFB246
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB246
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L64-.LFB246
	.uleb128 0
	.uleb128 .LEHB2-.LFB246
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB246
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE246:
	.section	.text._ZN4SQVM14Raise_IdxErrorERK11SQObjectPtr
	.fnend
	.size	_ZN4SQVM14Raise_IdxErrorERK11SQObjectPtr, .-_ZN4SQVM14Raise_IdxErrorERK11SQObjectPtr
	.section	.rodata
	.align	2
.LC8:
	.ascii	"comparison between '%.50s' and '%.50s'\000"
	.section	.text._ZN4SQVM18Raise_CompareErrorERK11tagSQObjectS2_,"ax",%progbits
	.align	2
	.global	_ZN4SQVM18Raise_CompareErrorERK11tagSQObjectS2_
	.thumb
	.thumb_func
	.type	_ZN4SQVM18Raise_CompareErrorERK11tagSQObjectS2_, %function
_ZN4SQVM18Raise_CompareErrorERK11tagSQObjectS2_:
	.fnstart
.LFB247:
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
	add	r3, r7, #32
	mov	r0, r3
	ldr	r1, [r7, #8]
	bl	_ZN11SQObjectPtrC1ERK11tagSQObject(PLT)
	add	r3, r7, #32
	ldr	r0, [r7, #12]
	mov	r1, r3
.LEHB4:
	bl	_ZN4SQVM11PrintObjValERK11SQObjectPtr(PLT)
.LEHE4:
	mov	r3, r0
	add	r2, r7, #24
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #32
	mov	r0, r3
.LEHB5:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE5:
	add	r3, r7, #40
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	_ZN11SQObjectPtrC1ERK11tagSQObject(PLT)
	add	r3, r7, #40
	ldr	r0, [r7, #12]
	mov	r1, r3
.LEHB6:
	bl	_ZN4SQVM11PrintObjValERK11SQObjectPtr(PLT)
.LEHE6:
	mov	r3, r0
	add	r2, r7, #16
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #40
	mov	r0, r3
.LEHB7:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE7:
	ldr	r3, [r7, #28]
	add	r2, r3, #28
	ldr	r3, [r7, #20]
	adds	r3, r3, #28
	ldr	r0, [r7, #12]
	ldr	r1, .L82
.LPIC11:
	add	r1, pc
.LEHB8:
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
.LEHE8:
	add	r3, r7, #16
	mov	r0, r3
.LEHB9:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE9:
	add	r3, r7, #24
	mov	r0, r3
.LEHB10:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE10:
	b	.L81
.L75:
	add	r3, r7, #32
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB11:
	bl	__cxa_end_cleanup(PLT)
.LEHE11:
.L76:
	add	r3, r7, #24
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB12:
	bl	__cxa_end_cleanup(PLT)
.LEHE12:
.L78:
	add	r3, r7, #40
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L72
.L79:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L72
.L80:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L72
.L77:
.L72:
	add	r3, r7, #24
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB13:
	bl	__cxa_end_cleanup(PLT)
.LEHE13:
.L81:
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L83:
	.align	2
.L82:
	.word	.LC8-(.LPIC11+4)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA247:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE247-.LLSDACSB247
.LLSDACSB247:
	.uleb128 .LEHB4-.LFB247
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L75-.LFB247
	.uleb128 0
	.uleb128 .LEHB5-.LFB247
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L76-.LFB247
	.uleb128 0
	.uleb128 .LEHB6-.LFB247
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L78-.LFB247
	.uleb128 0
	.uleb128 .LEHB7-.LFB247
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L79-.LFB247
	.uleb128 0
	.uleb128 .LEHB8-.LFB247
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L80-.LFB247
	.uleb128 0
	.uleb128 .LEHB9-.LFB247
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L77-.LFB247
	.uleb128 0
	.uleb128 .LEHB10-.LFB247
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB11-.LFB247
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB12-.LFB247
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB13-.LFB247
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
.LLSDACSE247:
	.section	.text._ZN4SQVM18Raise_CompareErrorERK11tagSQObjectS2_
	.fnend
	.size	_ZN4SQVM18Raise_CompareErrorERK11tagSQObjectS2_, .-_ZN4SQVM18Raise_CompareErrorERK11tagSQObjectS2_
	.section	.rodata
	.align	2
.LC9:
	.ascii	"\000"
	.align	2
.LC10:
	.ascii	"|\000"
	.align	2
.LC11:
	.ascii	"parameter %d has an invalid type '%s' ; expected: '"
	.ascii	"%s'\000"
	.section	.text._ZN4SQVM20Raise_ParamTypeErrorEiii,"ax",%progbits
	.align	2
	.global	_ZN4SQVM20Raise_ParamTypeErrorEiii
	.thumb
	.thumb_func
	.type	_ZN4SQVM20Raise_ParamTypeErrorEiii, %function
_ZN4SQVM20Raise_ParamTypeErrorEiii:
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
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #140]
	mov	r0, r3
	ldr	r3, .L96
.LPIC12:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
.LEHB14:
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE14:
	mov	r3, r0
	add	r2, r7, #20
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	movs	r3, #0
	str	r3, [r7, #52]
	movs	r3, #0
	str	r3, [r7, #48]
	b	.L85
.L88:
	movs	r2, #1
	ldr	r3, [r7, #48]
	lsl	r3, r2, r3
	str	r3, [r7, #44]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #44]
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L86
	ldr	r3, [r7, #52]
	cmp	r3, #0
	ble	.L87
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #140]
	mov	r0, r3
	ldr	r3, .L96+4
.LPIC13:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
.LEHB15:
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE15:
	mov	r3, r0
	add	r2, r7, #28
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r1, r7, #20
	add	r2, r7, #28
	add	r3, r7, #20
	ldr	r0, [r7, #12]
.LEHB16:
	bl	_ZN4SQVM9StringCatERK11SQObjectPtrS2_RS0_(PLT)
.LEHE16:
	add	r3, r7, #28
	mov	r0, r3
.LEHB17:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.L87:
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	str	r3, [r7, #52]
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #140]
	ldr	r3, [r7, #44]
	mov	r0, r3
	bl	_Z11IdType2Name15tagSQObjectType(PLT)
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE17:
	mov	r3, r0
	add	r2, r7, #36
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r1, r7, #20
	add	r2, r7, #36
	add	r3, r7, #20
	ldr	r0, [r7, #12]
.LEHB18:
	bl	_ZN4SQVM9StringCatERK11SQObjectPtrS2_RS0_(PLT)
.LEHE18:
	add	r3, r7, #36
	mov	r0, r3
.LEHB19:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.L86:
	ldr	r3, [r7, #48]
	adds	r3, r3, #1
	str	r3, [r7, #48]
.L85:
	ldr	r3, [r7, #48]
	cmp	r3, #15
	ble	.L88
	ldr	r3, [r7]
	mov	r0, r3
	bl	_Z11IdType2Name15tagSQObjectType(PLT)
	mov	r3, r0
	ldr	r2, [r7, #24]
	adds	r2, r2, #28
	str	r2, [sp]
	ldr	r0, [r7, #12]
	ldr	r2, .L96+8
.LPIC14:
	add	r2, pc
	mov	r1, r2
	ldr	r2, [r7, #8]
	bl	_ZN4SQVM11Raise_ErrorEPKcz(PLT)
.LEHE19:
	add	r3, r7, #20
	mov	r0, r3
.LEHB20:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE20:
	b	.L95
.L93:
	add	r3, r7, #28
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L90
.L94:
	add	r3, r7, #36
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L90
.L92:
.L90:
	add	r3, r7, #20
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB21:
	bl	__cxa_end_cleanup(PLT)
.LEHE21:
.L95:
	adds	r7, r7, #60
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L97:
	.align	2
.L96:
	.word	.LC9-(.LPIC12+4)
	.word	.LC10-(.LPIC13+4)
	.word	.LC11-(.LPIC14+4)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA248:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE248-.LLSDACSB248
.LLSDACSB248:
	.uleb128 .LEHB14-.LFB248
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB15-.LFB248
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L92-.LFB248
	.uleb128 0
	.uleb128 .LEHB16-.LFB248
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L93-.LFB248
	.uleb128 0
	.uleb128 .LEHB17-.LFB248
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L92-.LFB248
	.uleb128 0
	.uleb128 .LEHB18-.LFB248
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L94-.LFB248
	.uleb128 0
	.uleb128 .LEHB19-.LFB248
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L92-.LFB248
	.uleb128 0
	.uleb128 .LEHB20-.LFB248
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB21-.LFB248
	.uleb128 .LEHE21-.LEHB21
	.uleb128 0
	.uleb128 0
.LLSDACSE248:
	.section	.text._ZN4SQVM20Raise_ParamTypeErrorEiii
	.fnend
	.size	_ZN4SQVM20Raise_ParamTypeErrorEiii, .-_ZN4SQVM20Raise_ParamTypeErrorEiii
	.section	.rodata._ZZN11SQObjectPtrC1EP8SQStringE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN11SQObjectPtrC1EP8SQStringE19__PRETTY_FUNCTION__, %object
	.size	_ZZN11SQObjectPtrC1EP8SQStringE19__PRETTY_FUNCTION__, 36
_ZZN11SQObjectPtrC1EP8SQStringE19__PRETTY_FUNCTION__:
	.ascii	"SQObjectPtr::SQObjectPtr(SQString*)\000"
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
