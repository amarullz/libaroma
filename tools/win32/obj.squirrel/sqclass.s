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
	.file	"sqclass.cpp"
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
	beq	.L19
	ldr	r3, [r7, #8]
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
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	mov	r0, r2
	blx	r3
.L21:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQObjectPtraSEP9SQClosure, .-_ZN11SQObjectPtraSEP9SQClosure
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
	beq	.L27
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
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
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #4]
	mov	r0, r2
	blx	r3
.L29:
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
	beq	.L32
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #4]
	adds	r2, r2, #1
	str	r2, [r3, #4]
.L32:
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
	beq	.L38
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #4]
	adds	r2, r2, #1
	str	r2, [r3, #4]
.L38:
	ldr	r3, [r7, #12]
	and	r3, r3, #134217728
	cmp	r3, #0
	beq	.L39
	ldr	r3, [r7, #8]
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
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	mov	r0, r2
	blx	r3
.L41:
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
	beq	.L43
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	mov	r0, r2
	blx	r3
.L43:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQObjectPtr4NullEv, .-_ZN11SQObjectPtr4NullEv
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
	beq	.L49
	mov	r0, r4
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
.LEHB1:
	bl	_ZN7SQTableC1EP13SQSharedStatei(PLT)
.LEHE1:
.L49:
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #12]
	b	.L53
.L52:
	mov	r0, r4
	mov	r1, r5
	bl	_ZdlPvS_(PLT)
.LEHB2:
	bl	__cxa_end_cleanup(PLT)
.LEHE2:
.L53:
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
	.uleb128 .L52-.LFB170
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
	ldr	r1, .L58
.LPIC1:
	add	r1, pc
	ldr	r3, [r7, #4]
	ldr	r2, .L58+4
	ldr	r2, [r1, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN12SQRefCountedD2Ev(PLT)
	movs	r3, #0
	cmp	r3, #0
	beq	.L56
	ldr	r0, [r7, #4]
	bl	_ZdlPv(PLT)
.L56:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L59:
	.align	2
.L58:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
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
	ldr	r1, .L67
.LPIC2:
	add	r1, pc
	ldr	r3, [r7, #4]
	ldr	r2, .L67+4
	ldr	r2, [r1, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN13SQCollectableD2Ev(PLT)
	movs	r3, #0
	cmp	r3, #0
	beq	.L65
	ldr	r0, [r7, #4]
	bl	_ZdlPv(PLT)
.L65:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L68:
	.align	2
.L67:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC2+4)
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
	.section	.text._ZN13SQClassMember4NullEv,"axG",%progbits,_ZN13SQClassMember4NullEv,comdat
	.align	2
	.weak	_ZN13SQClassMember4NullEv
	.thumb
	.thumb_func
	.type	_ZN13SQClassMember4NullEv, %function
_ZN13SQClassMember4NullEv:
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
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN13SQClassMember4NullEv, .-_ZN13SQClassMember4NullEv
	.section	.text._ZN7SQClass4LockEv,"axG",%progbits,_ZN7SQClass4LockEv,comdat
	.align	2
	.weak	_ZN7SQClass4LockEv
	.thumb
	.thumb_func
	.type	_ZN7SQClass4LockEv, %function
_ZN7SQClass4LockEv:
	.fnstart
.LFB194:
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
	movs	r2, #1
	strb	r2, [r3, #216]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	cmp	r3, #0
	beq	.L73
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	mov	r0, r3
	bl	_ZN7SQClass4LockEv(PLT)
.L73:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN7SQClass4LockEv, .-_ZN7SQClass4LockEv
	.section	.text._ZN7SQClass7ReleaseEv,"axG",%progbits,_ZN7SQClass7ReleaseEv,comdat
	.align	2
	.weak	_ZN7SQClass7ReleaseEv
	.thumb
	.thumb_func
	.type	_ZN7SQClass7ReleaseEv, %function
_ZN7SQClass7ReleaseEv:
	.fnstart
.LFB195:
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
	ldr	r3, [r3, #212]
	cmp	r3, #0
	beq	.L76
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #212]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #208]
	mov	r0, r2
	movs	r1, #0
	blx	r3
.L76:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r0, [r7, #4]
	blx	r3
	ldr	r0, [r7, #4]
	movs	r1, #228
	bl	_Z10sq_vm_freePvj(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN7SQClass7ReleaseEv, .-_ZN7SQClass7ReleaseEv
	.section	.text._ZN7SQClass7GetTypeEv,"axG",%progbits,_ZN7SQClass7GetTypeEv,comdat
	.align	2
	.weak	_ZN7SQClass7GetTypeEv
	.thumb
	.thumb_func
	.type	_ZN7SQClass7GetTypeEv, %function
_ZN7SQClass7GetTypeEv:
	.fnstart
.LFB196:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, #16384
	movt	r3, 2048
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN7SQClass7GetTypeEv, .-_ZN7SQClass7GetTypeEv
	.section	.text._ZN10SQInstance6CreateEP13SQSharedStateP7SQClass,"axG",%progbits,_ZN10SQInstance6CreateEP13SQSharedStateP7SQClass,comdat
	.align	2
	.weak	_ZN10SQInstance6CreateEP13SQSharedStateP7SQClass
	.thumb
	.thumb_func
	.type	_ZN10SQInstance6CreateEP13SQSharedStateP7SQClass, %function
_ZN10SQInstance6CreateEP13SQSharedStateP7SQClass:
	.fnstart
.LFB197:
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
	ldr	r3, [r7]
	ldr	r3, [r3, #224]
	mov	r4, r3
	ldr	r3, [r7]
	adds	r3, r3, #32
	mov	r0, r3
.LEHB3:
	bl	_ZNK8sqvectorI13SQClassMemberE4sizeEv(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L80
	ldr	r3, [r7]
	adds	r3, r3, #32
	mov	r0, r3
	bl	_ZNK8sqvectorI13SQClassMemberE4sizeEv(PLT)
	mov	r3, r0
	subs	r3, r3, #1
	b	.L81
.L80:
	movs	r3, #0
.L81:
	lsls	r3, r3, #3
	adds	r3, r3, #52
	adds	r3, r3, #3
	bic	r3, r3, #3
	add	r3, r3, r4
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	_Z12sq_vm_mallocj(PLT)
.LEHE3:
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r5, [r7, #8]
	movs	r0, #52
	mov	r1, r5
	bl	_ZnwjPv(PLT)
	mov	r4, r0
	cmp	r4, #0
	beq	.L83
	mov	r0, r4
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
.LEHB4:
	bl	_ZN10SQInstanceC1EP13SQSharedStateP7SQClassi(PLT)
.LEHE4:
.L83:
	ldr	r3, [r7]
	ldr	r3, [r3, #224]
	cmp	r3, #0
	beq	.L84
	ldr	r3, [r7]
	ldr	r3, [r3, #224]
	ldr	r2, [r7, #12]
	subs	r3, r2, r3
	ldr	r2, [r7, #8]
	add	r2, r2, r3
	ldr	r3, [r7, #8]
	str	r2, [r3, #32]
.L84:
	ldr	r3, [r7, #8]
	b	.L88
.L87:
	mov	r0, r4
	mov	r1, r5
	bl	_ZdlPvS_(PLT)
.LEHB5:
	bl	__cxa_end_cleanup(PLT)
.LEHE5:
.L88:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA197:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE197-.LLSDACSB197
.LLSDACSB197:
	.uleb128 .LEHB3-.LFB197
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB197
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L87-.LFB197
	.uleb128 0
	.uleb128 .LEHB5-.LFB197
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE197:
	.section	.text._ZN10SQInstance6CreateEP13SQSharedStateP7SQClass,"axG",%progbits,_ZN10SQInstance6CreateEP13SQSharedStateP7SQClass,comdat
	.fnend
	.size	_ZN10SQInstance6CreateEP13SQSharedStateP7SQClass, .-_ZN10SQInstance6CreateEP13SQSharedStateP7SQClass
	.section	.text._ZN10SQInstance7ReleaseEv,"axG",%progbits,_ZN10SQInstance7ReleaseEv,comdat
	.align	2
	.weak	_ZN10SQInstance7ReleaseEv
	.thumb
	.thumb_func
	.type	_ZN10SQInstance7ReleaseEv, %function
_ZN10SQInstance7ReleaseEv:
	.fnstart
.LFB201:
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
	ldr	r3, [r3, #4]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	cmp	r3, #0
	beq	.L90
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #32]
	mov	r0, r2
	movs	r1, #0
	blx	r3
.L90:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	subs	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L91
	b	.L89
.L91:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r0, [r7, #4]
	blx	r3
	ldr	r3, [r7, #12]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_Z10sq_vm_freePvj(PLT)
.L89:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN10SQInstance7ReleaseEv, .-_ZN10SQInstance7ReleaseEv
	.section	.text._ZN10SQInstance7GetTypeEv,"axG",%progbits,_ZN10SQInstance7GetTypeEv,comdat
	.align	2
	.weak	_ZN10SQInstance7GetTypeEv
	.thumb
	.thumb_func
	.type	_ZN10SQInstance7GetTypeEv, %function
_ZN10SQInstance7GetTypeEv:
	.fnstart
.LFB202:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, #32768
	movt	r3, 2560
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN10SQInstance7GetTypeEv, .-_ZN10SQInstance7GetTypeEv
	.section	.text._ZN13SQCollectableC2Ev,"axG",%progbits,_ZN13SQCollectableC5Ev,comdat
	.align	2
	.weak	_ZN13SQCollectableC2Ev
	.thumb
	.thumb_func
	.type	_ZN13SQCollectableC2Ev, %function
_ZN13SQCollectableC2Ev:
	.fnstart
.LFB230:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r4, .L98
.LPIC3:
	add	r4, pc
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN12SQRefCountedC2Ev(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, .L98+4
	ldr	r2, [r4, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L99:
	.align	2
.L98:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC3+4)
	.word	_ZTV13SQCollectable(GOT)
	.cantunwind
	.fnend
	.size	_ZN13SQCollectableC2Ev, .-_ZN13SQCollectableC2Ev
	.weak	_ZN13SQCollectableC1Ev
	.thumb_set _ZN13SQCollectableC1Ev,_ZN13SQCollectableC2Ev
	.section	.text._ZN9SQClosureC2EP13SQSharedStateP15SQFunctionProto,"axG",%progbits,_ZN9SQClosureC5EP13SQSharedStateP15SQFunctionProto,comdat
	.align	2
	.weak	_ZN9SQClosureC2EP13SQSharedStateP15SQFunctionProto
	.thumb
	.thumb_func
	.type	_ZN9SQClosureC2EP13SQSharedStateP15SQFunctionProto, %function
_ZN9SQClosureC2EP13SQSharedStateP15SQFunctionProto:
	.fnstart
.LFB232:
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
	ldr	r4, .L106
.LPIC4:
	add	r4, pc
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	_ZN13SQCollectableC2Ev(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, .L106+4
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
.LEHB6:
	bl	_ZN13SQCollectable10AddToChainEPPS_S0_(PLT)
.LEHE6:
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #12]
	b	.L105
.L104:
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	_ZN13SQCollectableD2Ev(PLT)
.LEHB7:
	bl	__cxa_end_cleanup(PLT)
.LEHE7:
.L105:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L107:
	.align	2
.L106:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC4+4)
	.word	_ZTV9SQClosure(GOT)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA232:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE232-.LLSDACSB232
.LLSDACSB232:
	.uleb128 .LEHB6-.LFB232
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L104-.LFB232
	.uleb128 0
	.uleb128 .LEHB7-.LFB232
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSE232:
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
.LFB234:
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
.LEHB8:
	bl	_Z12sq_vm_mallocj(PLT)
.LEHE8:
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r5, [r7, #8]
	movs	r0, #44
	mov	r1, r5
	bl	_ZnwjPv(PLT)
	mov	r4, r0
	cmp	r4, #0
	beq	.L110
	mov	r0, r4
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
.LEHB9:
	bl	_ZN9SQClosureC1EP13SQSharedStateP15SQFunctionProto(PLT)
.LEHE9:
.L110:
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
	b	.L111
.L114:
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
	beq	.L113
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
.L113:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L111:
	ldr	r3, [r7]
	ldr	r2, [r3, #92]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bgt	.L114
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L115
.L118:
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
	beq	.L117
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
.L117:
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L115:
	ldr	r3, [r7]
	ldr	r2, [r3, #100]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bgt	.L118
	ldr	r3, [r7, #8]
	b	.L122
.L121:
	mov	r0, r4
	mov	r1, r5
	bl	_ZdlPvS_(PLT)
.LEHB10:
	bl	__cxa_end_cleanup(PLT)
.LEHE10:
.L122:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA234:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE234-.LLSDACSB234
.LLSDACSB234:
	.uleb128 .LEHB8-.LFB234
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB234
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L121-.LFB234
	.uleb128 0
	.uleb128 .LEHB10-.LFB234
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSE234:
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
.LFB236:
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
	beq	.L124
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #24]
	ldr	r2, [r3, #4]
	adds	r2, r2, #1
	str	r2, [r3, #4]
.L124:
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L125
.L126:
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
.L125:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #92]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bgt	.L126
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L127
.L128:
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
.L127:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #100]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bgt	.L128
	ldr	r3, [r7, #8]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN9SQClosure5CloneEv, .-_ZN9SQClosure5CloneEv
	.section	.text._ZN7SQClassC2EP13SQSharedStatePS_,"ax",%progbits
	.align	2
	.global	_ZN7SQClassC2EP13SQSharedStatePS_
	.thumb
	.thumb_func
	.type	_ZN7SQClassC2EP13SQSharedStatePS_, %function
_ZN7SQClassC2EP13SQSharedStatePS_:
	.fnstart
.LFB275:
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
	ldr	r4, .L149
.LPIC5:
	add	r4, pc
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	_ZN13SQCollectableC2Ev(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, .L149+4
	ldr	r2, [r4, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #32
	mov	r0, r3
.LEHB11:
	bl	_ZN8sqvectorI13SQClassMemberEC1Ev(PLT)
.LEHE11:
	ldr	r3, [r7, #12]
	adds	r3, r3, #44
	mov	r0, r3
.LEHB12:
	bl	_ZN8sqvectorI13SQClassMemberEC1Ev(PLT)
.LEHE12:
	ldr	r3, [r7, #12]
	adds	r3, r3, #56
	movs	r4, #17
	mov	r5, r3
	b	.L131
.L132:
	mov	r0, r5
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	adds	r5, r5, #8
	subs	r4, r4, #1
.L131:
	cmp	r4, #-1
	bne	.L132
	ldr	r3, [r7, #12]
	adds	r3, r3, #200
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #28]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #208]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #212]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #224]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #216]
	ldr	r3, [r7, #12]
	mov	r2, #-1
	str	r2, [r3, #220]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	cmp	r3, #0
	beq	.L133
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	ldr	r2, [r3, #220]
	ldr	r3, [r7, #12]
	str	r2, [r3, #220]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	ldr	r2, [r3, #224]
	ldr	r3, [r7, #12]
	str	r2, [r3, #224]
	ldr	r3, [r7, #12]
	add	r2, r3, #32
	ldr	r3, [r7, #4]
	adds	r3, r3, #32
	mov	r0, r2
	mov	r1, r3
.LEHB13:
	bl	_ZN8sqvectorI13SQClassMemberE4copyERKS1_(PLT)
	ldr	r3, [r7, #12]
	add	r2, r3, #44
	ldr	r3, [r7, #4]
	adds	r3, r3, #44
	mov	r0, r2
	mov	r1, r3
	bl	_ZN8sqvectorI13SQClassMemberE4copyERKS1_(PLT)
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L134
.L135:
	ldr	r3, [r7, #20]
	adds	r3, r3, #7
	lsls	r3, r3, #3
	ldr	r2, [r7, #12]
	add	r2, r2, r3
	ldr	r3, [r7, #20]
	adds	r3, r3, #7
	lsls	r3, r3, #3
	ldr	r1, [r7, #4]
	add	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L134:
	ldr	r3, [r7, #20]
	cmp	r3, #17
	ble	.L135
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	ldr	r2, [r3, #4]
	adds	r2, r2, #1
	str	r2, [r3, #4]
.L133:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L136
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	mov	r0, r3
	bl	_ZN7SQTable5CloneEv(PLT)
	mov	r3, r0
	b	.L137
.L136:
	ldr	r0, [r7, #8]
	movs	r1, #0
	bl	_ZN7SQTable6CreateEP13SQSharedStatei(PLT)
	mov	r3, r0
.L137:
	ldr	r2, [r7, #12]
	str	r3, [r2, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	ldr	r2, [r3, #4]
	adds	r2, r2, #1
	str	r2, [r3, #4]
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
.LEHE13:
	ldr	r3, [r7, #12]
	b	.L148
.L147:
	ldr	r3, [r7, #12]
	adds	r3, r3, #200
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #56
	cmp	r3, #0
	beq	.L141
	ldr	r3, [r7, #12]
	add	r4, r3, #200
.L142:
	ldr	r3, [r7, #12]
	adds	r3, r3, #56
	cmp	r4, r3
	beq	.L141
	subs	r4, r4, #8
	mov	r0, r4
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L142
.L141:
	ldr	r3, [r7, #12]
	adds	r3, r3, #44
	mov	r0, r3
	bl	_ZN8sqvectorI13SQClassMemberED1Ev(PLT)
	b	.L143
.L146:
.L143:
	ldr	r3, [r7, #12]
	adds	r3, r3, #32
	mov	r0, r3
	bl	_ZN8sqvectorI13SQClassMemberED1Ev(PLT)
	b	.L144
.L145:
.L144:
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	_ZN13SQCollectableD2Ev(PLT)
.LEHB14:
	bl	__cxa_end_cleanup(PLT)
.LEHE14:
.L148:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L150:
	.align	2
.L149:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC5+4)
	.word	_ZTV7SQClass(GOT)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA275:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE275-.LLSDACSB275
.LLSDACSB275:
	.uleb128 .LEHB11-.LFB275
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L145-.LFB275
	.uleb128 0
	.uleb128 .LEHB12-.LFB275
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L146-.LFB275
	.uleb128 0
	.uleb128 .LEHB13-.LFB275
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L147-.LFB275
	.uleb128 0
	.uleb128 .LEHB14-.LFB275
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
.LLSDACSE275:
	.section	.text._ZN7SQClassC2EP13SQSharedStatePS_
	.fnend
	.size	_ZN7SQClassC2EP13SQSharedStatePS_, .-_ZN7SQClassC2EP13SQSharedStatePS_
	.global	_ZN7SQClassC1EP13SQSharedStatePS_
	.thumb_set _ZN7SQClassC1EP13SQSharedStatePS_,_ZN7SQClassC2EP13SQSharedStatePS_
	.section	.text._ZN13SQClassMemberC2Ev,"axG",%progbits,_ZN13SQClassMemberC5Ev,comdat
	.align	2
	.weak	_ZN13SQClassMemberC2Ev
	.thumb
	.thumb_func
	.type	_ZN13SQClassMemberC2Ev, %function
_ZN13SQClassMemberC2Ev:
	.fnstart
.LFB279:
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
	.size	_ZN13SQClassMemberC2Ev, .-_ZN13SQClassMemberC2Ev
	.weak	_ZN13SQClassMemberC1Ev
	.thumb_set _ZN13SQClassMemberC1Ev,_ZN13SQClassMemberC2Ev
	.section	.text._ZN13SQClassMemberD2Ev,"axG",%progbits,_ZN13SQClassMemberD5Ev,comdat
	.align	2
	.weak	_ZN13SQClassMemberD2Ev
	.thumb
	.thumb_func
	.type	_ZN13SQClassMemberD2Ev, %function
_ZN13SQClassMemberD2Ev:
	.fnstart
.LFB282:
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
.LEHB15:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE15:
	ldr	r3, [r7, #4]
	mov	r0, r3
.LEHB16:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE16:
	ldr	r3, [r7, #4]
	b	.L159
.L158:
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB17:
	bl	__cxa_end_cleanup(PLT)
.LEHE17:
.L159:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA282:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE282-.LLSDACSB282
.LLSDACSB282:
	.uleb128 .LEHB15-.LFB282
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L158-.LFB282
	.uleb128 0
	.uleb128 .LEHB16-.LFB282
	.uleb128 .LEHE16-.LEHB16
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB17-.LFB282
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
.LLSDACSE282:
	.section	.text._ZN13SQClassMemberD2Ev,"axG",%progbits,_ZN13SQClassMemberD5Ev,comdat
	.fnend
	.size	_ZN13SQClassMemberD2Ev, .-_ZN13SQClassMemberD2Ev
	.weak	_ZN13SQClassMemberD1Ev
	.thumb_set _ZN13SQClassMemberD1Ev,_ZN13SQClassMemberD2Ev
	.section	.text._ZN7SQClass8FinalizeEv,"ax",%progbits
	.align	2
	.global	_ZN7SQClass8FinalizeEv
	.thumb
	.thumb_func
	.type	_ZN7SQClass8FinalizeEv, %function
_ZN7SQClass8FinalizeEv:
	.fnstart
.LFB277:
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
	adds	r3, r3, #200
	mov	r0, r3
.LEHB18:
	bl	_ZN11SQObjectPtr4NullEv(PLT)
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L161
.L162:
	ldr	r3, [r7, #4]
	add	r2, r3, #32
	ldr	r3, [r7, #28]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI13SQClassMemberEixEj(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_ZN13SQClassMember4NullEv(PLT)
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L161:
	ldr	r3, [r7, #4]
	adds	r3, r3, #32
	mov	r0, r3
	bl	_ZNK8sqvectorI13SQClassMemberE4sizeEv(PLT)
.LEHE18:
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #28]
	cmp	r2, r3
	ite	gt
	movgt	r3, #1
	movle	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L162
	ldr	r3, [r7, #4]
	add	r4, r3, #44
	movs	r3, #0
	str	r3, [r7, #8]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN13SQClassMemberC1Ev(PLT)
	add	r3, r7, #8
	mov	r0, r4
	movs	r1, #0
	mov	r2, r3
.LEHB19:
	bl	_ZN8sqvectorI13SQClassMemberE6resizeEjRKS0_(PLT)
.LEHE19:
	add	r3, r7, #8
	mov	r0, r3
.LEHB20:
	bl	_ZN13SQClassMemberD1Ev(PLT)
	movs	r3, #0
	str	r3, [r7, #24]
	b	.L163
.L164:
	ldr	r3, [r7, #24]
	adds	r3, r3, #7
	lsls	r3, r3, #3
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
.L163:
	ldr	r3, [r7, #24]
	cmp	r3, #17
	ble	.L164
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L165
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L166
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #24]
	mov	r0, r2
	blx	r3
.L166:
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #24]
.L165:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	cmp	r3, #0
	beq	.L171
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	cmp	r3, #0
	beq	.L171
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L168
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #28]
	mov	r0, r2
	blx	r3
.LEHE20:
.L168:
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #28]
	b	.L171
.L170:
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN13SQClassMemberD1Ev(PLT)
.LEHB21:
	bl	__cxa_end_cleanup(PLT)
.LEHE21:
.L171:
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA277:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE277-.LLSDACSB277
.LLSDACSB277:
	.uleb128 .LEHB18-.LFB277
	.uleb128 .LEHE18-.LEHB18
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB19-.LFB277
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L170-.LFB277
	.uleb128 0
	.uleb128 .LEHB20-.LFB277
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB21-.LFB277
	.uleb128 .LEHE21-.LEHB21
	.uleb128 0
	.uleb128 0
.LLSDACSE277:
	.section	.text._ZN7SQClass8FinalizeEv
	.fnend
	.size	_ZN7SQClass8FinalizeEv, .-_ZN7SQClass8FinalizeEv
	.section	.text._ZN7SQClassD2Ev,"ax",%progbits
	.align	2
	.global	_ZN7SQClassD2Ev
	.thumb
	.thumb_func
	.type	_ZN7SQClassD2Ev, %function
_ZN7SQClassD2Ev:
	.fnstart
.LFB285:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #12
	sub	sp, sp, #12
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r1, .L192
.LPIC6:
	add	r1, pc
	ldr	r3, [r7, #4]
	ldr	r2, .L192+4
	ldr	r2, [r1, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	blt	.L173
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	add	r2, r3, #68
	ldr	r3, [r7, #4]
	mov	r0, r2
	mov	r1, r3
.LEHB22:
	bl	_ZN13SQCollectable15RemoveFromChainEPPS_S0_(PLT)
.L173:
	ldr	r0, [r7, #4]
	bl	_ZN7SQClass8FinalizeEv(PLT)
.LEHE22:
	ldr	r3, [r7, #4]
	adds	r3, r3, #200
	mov	r0, r3
.LEHB23:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE23:
	ldr	r3, [r7, #4]
	adds	r3, r3, #56
	cmp	r3, #0
	beq	.L174
	ldr	r3, [r7, #4]
	add	r4, r3, #200
.L175:
	ldr	r3, [r7, #4]
	adds	r3, r3, #56
	cmp	r4, r3
	beq	.L174
	subs	r4, r4, #8
	mov	r0, r4
.LEHB24:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE24:
	b	.L175
.L174:
	ldr	r3, [r7, #4]
	adds	r3, r3, #44
	mov	r0, r3
.LEHB25:
	bl	_ZN8sqvectorI13SQClassMemberED1Ev(PLT)
.LEHE25:
	ldr	r3, [r7, #4]
	adds	r3, r3, #32
	mov	r0, r3
.LEHB26:
	bl	_ZN8sqvectorI13SQClassMemberED1Ev(PLT)
.LEHE26:
	ldr	r3, [r7, #4]
	mov	r0, r3
.LEHB27:
	bl	_ZN13SQCollectableD2Ev(PLT)
.LEHE27:
	movs	r3, #0
	cmp	r3, #0
	beq	.L177
	ldr	r0, [r7, #4]
	bl	_ZdlPv(PLT)
.L177:
	ldr	r3, [r7, #4]
	b	.L191
.L186:
	ldr	r3, [r7, #4]
	adds	r3, r3, #200
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L180
.L187:
.L180:
	ldr	r3, [r7, #4]
	adds	r3, r3, #56
	cmp	r3, #0
	beq	.L183
	ldr	r3, [r7, #4]
	add	r4, r3, #200
.L182:
	ldr	r3, [r7, #4]
	adds	r3, r3, #56
	cmp	r4, r3
	beq	.L183
	subs	r4, r4, #8
	mov	r0, r4
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L182
.L188:
.L183:
	ldr	r3, [r7, #4]
	adds	r3, r3, #44
	mov	r0, r3
	bl	_ZN8sqvectorI13SQClassMemberED1Ev(PLT)
	b	.L184
.L189:
.L184:
	ldr	r3, [r7, #4]
	adds	r3, r3, #32
	mov	r0, r3
	bl	_ZN8sqvectorI13SQClassMemberED1Ev(PLT)
	b	.L185
.L190:
.L185:
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN13SQCollectableD2Ev(PLT)
.LEHB28:
	bl	__cxa_end_cleanup(PLT)
.LEHE28:
.L191:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L193:
	.align	2
.L192:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC6+4)
	.word	_ZTV7SQClass(GOT)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA285:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE285-.LLSDACSB285
.LLSDACSB285:
	.uleb128 .LEHB22-.LFB285
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L186-.LFB285
	.uleb128 0
	.uleb128 .LEHB23-.LFB285
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L187-.LFB285
	.uleb128 0
	.uleb128 .LEHB24-.LFB285
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L188-.LFB285
	.uleb128 0
	.uleb128 .LEHB25-.LFB285
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L189-.LFB285
	.uleb128 0
	.uleb128 .LEHB26-.LFB285
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L190-.LFB285
	.uleb128 0
	.uleb128 .LEHB27-.LFB285
	.uleb128 .LEHE27-.LEHB27
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB28-.LFB285
	.uleb128 .LEHE28-.LEHB28
	.uleb128 0
	.uleb128 0
.LLSDACSE285:
	.section	.text._ZN7SQClassD2Ev
	.fnend
	.size	_ZN7SQClassD2Ev, .-_ZN7SQClassD2Ev
	.global	_ZN7SQClassD1Ev
	.thumb_set _ZN7SQClassD1Ev,_ZN7SQClassD2Ev
	.section	.text._ZN7SQClassD0Ev,"ax",%progbits
	.align	2
	.global	_ZN7SQClassD0Ev
	.thumb
	.thumb_func
	.type	_ZN7SQClassD0Ev, %function
_ZN7SQClassD0Ev:
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
	ldr	r0, [r7, #4]
	bl	_ZN7SQClassD1Ev(PLT)
	ldr	r0, [r7, #4]
	bl	_ZdlPv(PLT)
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN7SQClassD0Ev, .-_ZN7SQClassD0Ev
	.section	.text._ZN7SQClass7NewSlotEP13SQSharedStateRK11SQObjectPtrS4_b,"ax",%progbits
	.align	2
	.global	_ZN7SQClass7NewSlotEP13SQSharedStateRK11SQObjectPtrS4_b
	.thumb
	.thumb_func
	.type	_ZN7SQClass7NewSlotEP13SQSharedStateRK11SQObjectPtrS4_b, %function
_ZN7SQClass7NewSlotEP13SQSharedStateRK11SQObjectPtrS4_b:
	.fnstart
.LFB288:
	@ args = 4, pretend = 0, frame = 96
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #100
	sub	sp, sp, #100
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	add	r3, r7, #64
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7]
	ldr	r2, [r3]
	mov	r3, #256
	movt	r3, 2048
	cmp	r2, r3
	beq	.L198
	ldr	r3, [r7]
	ldr	r2, [r3]
	mov	r3, #512
	movt	r3, 2048
	cmp	r2, r3
	beq	.L198
	ldrb	r3, [r7, #112]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L199
.L198:
	movs	r3, #1
	b	.L200
.L199:
	movs	r3, #0
.L200:
	strb	r3, [r7, #91]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #216]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L201
	ldrb	r3, [r7, #91]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L201
	movs	r4, #0
	b	.L202
.L201:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #24]
	add	r3, r7, #64
	mov	r0, r2
	ldr	r1, [r7, #4]
	mov	r2, r3
.LEHB29:
	bl	_ZN7SQTable3GetERK11SQObjectPtrRS0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L203
	ldr	r3, [r7, #68]
	and	r3, r3, #33554432
	cmp	r3, #0
	beq	.L203
	movs	r3, #1
	b	.L204
.L203:
	movs	r3, #0
.L204:
	cmp	r3, #0
	beq	.L205
	ldr	r3, [r7, #12]
	add	r2, r3, #32
	ldr	r3, [r7, #68]
	bic	r3, r3, #-16777216
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI13SQClassMemberEixEj(PLT)
	mov	r3, r0
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	movs	r4, #1
	b	.L202
.L205:
	ldrb	r3, [r7, #91]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L206
	ldr	r3, [r7]
	ldr	r2, [r3]
	mov	r3, #256
	movt	r3, 2048
	cmp	r2, r3
	beq	.L207
	ldr	r3, [r7]
	ldr	r2, [r3]
	mov	r3, #512
	movt	r3, 2048
	cmp	r2, r3
	bne	.L208
.L207:
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #4]
	bl	_ZN13SQSharedState22GetMetaMethodIdxByNameERK11SQObjectPtr(PLT)
	mov	r3, r0
	str	r3, [r7, #92]
	ldr	r3, [r7, #92]
	cmp	r3, #-1
	beq	.L208
	movs	r3, #1
	b	.L209
.L208:
	movs	r3, #0
.L209:
	cmp	r3, #0
	beq	.L210
	ldr	r3, [r7, #92]
	adds	r3, r3, #7
	lsls	r3, r3, #3
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN11SQObjectPtraSERKS_(PLT)
.LEHE29:
	b	.L211
.L210:
	add	r3, r7, #40
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN11SQObjectPtrC1ERKS_(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	cmp	r3, #0
	beq	.L212
	ldr	r3, [r7]
	ldr	r2, [r3]
	mov	r3, #256
	movt	r3, 2048
	cmp	r2, r3
	bne	.L212
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	mov	r0, r3
.LEHB30:
	bl	_ZN9SQClosure5CloneEv(PLT)
	mov	r3, r0
	add	r2, r7, #40
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEP9SQClosure(PLT)
	ldr	r3, [r7, #44]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #28]
	str	r2, [r3, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	ldr	r2, [r3, #4]
	adds	r2, r2, #1
	str	r2, [r3, #4]
.L212:
	ldr	r2, [r7, #64]
	movs	r3, #1
	movt	r3, 256
	cmp	r2, r3
	bne	.L213
	ldr	r3, [r7, #8]
	add	r2, r3, #60
	add	r3, r7, #39
	mov	r0, r2
	ldr	r1, [r7, #4]
	mov	r2, r3
	bl	_ZN4SQVM7IsEqualERK11SQObjectPtrS2_Rb(PLT)
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L214
	ldr	r3, [r7, #12]
	adds	r3, r3, #44
	mov	r0, r3
	bl	_ZNK8sqvectorI13SQClassMemberE4sizeEv(PLT)
.LEHE30:
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #220]
.L214:
	add	r3, r7, #20
	mov	r0, r3
	bl	_ZN13SQClassMemberC1Ev(PLT)
	add	r2, r7, #20
	add	r3, r7, #40
	mov	r0, r2
	mov	r1, r3
.LEHB31:
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #24]
	ldr	r3, [r7, #12]
	adds	r3, r3, #44
	mov	r0, r3
	bl	_ZNK8sqvectorI13SQClassMemberE4sizeEv(PLT)
.LEHE31:
	mov	r3, r0
	orr	r3, r3, #16777216
	add	r2, r7, #72
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r3, r7, #72
	mov	r0, r4
	ldr	r1, [r7, #4]
	mov	r2, r3
.LEHB32:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE32:
	add	r3, r7, #72
	mov	r0, r3
.LEHB33:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	ldr	r3, [r7, #12]
	add	r2, r3, #44
	add	r3, r7, #20
	mov	r0, r2
	mov	r1, r3
	bl	_ZN8sqvectorI13SQClassMemberE9push_backERKS0_(PLT)
.LEHE33:
	add	r3, r7, #20
	mov	r0, r3
.LEHB34:
	bl	_ZN13SQClassMemberD1Ev(PLT)
	b	.L215
.L213:
	ldr	r3, [r7, #12]
	add	r2, r3, #44
	ldr	r3, [r7, #68]
	bic	r3, r3, #-16777216
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI13SQClassMemberEixEj(PLT)
	mov	r3, r0
	mov	r2, r3
	add	r3, r7, #40
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
.LEHE34:
.L215:
	add	r3, r7, #40
	mov	r0, r3
.LEHB35:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE35:
.L211:
	movs	r4, #1
	b	.L202
.L206:
	add	r3, r7, #48
	mov	r0, r3
	bl	_ZN13SQClassMemberC1Ev(PLT)
	add	r3, r7, #48
	mov	r0, r3
	ldr	r1, [r7]
.LEHB36:
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #24]
	ldr	r3, [r7, #12]
	adds	r3, r3, #32
	mov	r0, r3
	bl	_ZNK8sqvectorI13SQClassMemberE4sizeEv(PLT)
.LEHE36:
	mov	r3, r0
	orr	r3, r3, #33554432
	add	r2, r7, #80
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r3, r7, #80
	mov	r0, r4
	ldr	r1, [r7, #4]
	mov	r2, r3
.LEHB37:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE37:
	add	r3, r7, #80
	mov	r0, r3
.LEHB38:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	ldr	r3, [r7, #12]
	add	r2, r3, #32
	add	r3, r7, #48
	mov	r0, r2
	mov	r1, r3
	bl	_ZN8sqvectorI13SQClassMemberE9push_backERKS0_(PLT)
.LEHE38:
	movs	r4, #1
	add	r3, r7, #48
	mov	r0, r3
.LEHB39:
	bl	_ZN13SQClassMemberD1Ev(PLT)
.LEHE39:
.L202:
	add	r3, r7, #64
	mov	r0, r3
.LEHB40:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE40:
	mov	r3, r4
	b	.L229
.L226:
	add	r3, r7, #72
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L218
.L225:
.L218:
	add	r3, r7, #20
	mov	r0, r3
	bl	_ZN13SQClassMemberD1Ev(PLT)
	b	.L219
.L224:
.L219:
	add	r3, r7, #40
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L220
.L228:
	add	r3, r7, #80
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L222
.L227:
.L222:
	add	r3, r7, #48
	mov	r0, r3
	bl	_ZN13SQClassMemberD1Ev(PLT)
	b	.L220
.L223:
.L220:
	add	r3, r7, #64
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB41:
	bl	__cxa_end_cleanup(PLT)
.LEHE41:
.L229:
	mov	r0, r3
	adds	r7, r7, #100
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA288:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE288-.LLSDACSB288
.LLSDACSB288:
	.uleb128 .LEHB29-.LFB288
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L223-.LFB288
	.uleb128 0
	.uleb128 .LEHB30-.LFB288
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L224-.LFB288
	.uleb128 0
	.uleb128 .LEHB31-.LFB288
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L225-.LFB288
	.uleb128 0
	.uleb128 .LEHB32-.LFB288
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L226-.LFB288
	.uleb128 0
	.uleb128 .LEHB33-.LFB288
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L225-.LFB288
	.uleb128 0
	.uleb128 .LEHB34-.LFB288
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L224-.LFB288
	.uleb128 0
	.uleb128 .LEHB35-.LFB288
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L223-.LFB288
	.uleb128 0
	.uleb128 .LEHB36-.LFB288
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L227-.LFB288
	.uleb128 0
	.uleb128 .LEHB37-.LFB288
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L228-.LFB288
	.uleb128 0
	.uleb128 .LEHB38-.LFB288
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L227-.LFB288
	.uleb128 0
	.uleb128 .LEHB39-.LFB288
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L223-.LFB288
	.uleb128 0
	.uleb128 .LEHB40-.LFB288
	.uleb128 .LEHE40-.LEHB40
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB41-.LFB288
	.uleb128 .LEHE41-.LEHB41
	.uleb128 0
	.uleb128 0
.LLSDACSE288:
	.section	.text._ZN7SQClass7NewSlotEP13SQSharedStateRK11SQObjectPtrS4_b
	.fnend
	.size	_ZN7SQClass7NewSlotEP13SQSharedStateRK11SQObjectPtrS4_b, .-_ZN7SQClass7NewSlotEP13SQSharedStateRK11SQObjectPtrS4_b
	.section	.text._ZN7SQClass14CreateInstanceEv,"ax",%progbits
	.align	2
	.global	_ZN7SQClass14CreateInstanceEv
	.thumb
	.thumb_func
	.type	_ZN7SQClass14CreateInstanceEv, %function
_ZN7SQClass14CreateInstanceEv:
	.fnstart
.LFB289:
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
	ldrb	r3, [r3, #216]	@ zero_extendqisi2
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L231
	ldr	r0, [r7, #4]
	bl	_ZN7SQClass4LockEv(PLT)
.L231:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	_ZN10SQInstance6CreateEP13SQSharedStateP7SQClass(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN7SQClass14CreateInstanceEv, .-_ZN7SQClass14CreateInstanceEv
	.section	.text._ZN7SQClass4NextERK11SQObjectPtrRS0_S3_,"ax",%progbits
	.align	2
	.global	_ZN7SQClass4NextERK11SQObjectPtrRS0_S3_
	.thumb
	.thumb_func
	.type	_ZN7SQClass4NextERK11SQObjectPtrRS0_S3_, %function
_ZN7SQClass4NextERK11SQObjectPtrRS0_S3_:
	.fnstart
.LFB290:
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
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	add	r2, r7, #16
	str	r2, [sp]
	mov	r0, r3
	movs	r1, #0
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
.LEHB42:
	bl	_ZN7SQTable4NextEbRK11SQObjectPtrRS0_S3_(PLT)
	mov	r3, r0
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #-1
	beq	.L234
	ldr	r3, [r7, #20]
	and	r3, r3, #16777216
	cmp	r3, #0
	beq	.L235
	ldr	r3, [r7, #12]
	add	r2, r3, #44
	ldr	r3, [r7, #20]
	bic	r3, r3, #-16777216
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI13SQClassMemberEixEj(PLT)
	mov	r3, r0
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	b	.L242
.L235:
	ldr	r3, [r7, #12]
	add	r2, r3, #32
	ldr	r3, [r7, #20]
	bic	r3, r3, #-16777216
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI13SQClassMemberEixEj(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	ldr	r2, [r3]
	movs	r3, #0
	movt	r3, 2049
	cmp	r2, r3
	beq	.L237
	ldr	r2, [r7, #32]
	add	r3, r7, #24
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	b	.L238
.L237:
	ldr	r3, [r7, #32]
	ldr	r2, [r3, #4]
	add	r3, r7, #24
	adds	r2, r2, #12
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
.L238:
	add	r3, r7, #24
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERK11tagSQObject(PLT)
.LEHE42:
	b	.L234
.L242:
.L234:
	ldr	r4, [r7, #36]
	add	r3, r7, #16
	mov	r0, r3
.LEHB43:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE43:
	mov	r3, r4
	b	.L243
.L241:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB44:
	bl	__cxa_end_cleanup(PLT)
.LEHE44:
.L243:
	mov	r0, r3
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA290:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE290-.LLSDACSB290
.LLSDACSB290:
	.uleb128 .LEHB42-.LFB290
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L241-.LFB290
	.uleb128 0
	.uleb128 .LEHB43-.LFB290
	.uleb128 .LEHE43-.LEHB43
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB44-.LFB290
	.uleb128 .LEHE44-.LEHB44
	.uleb128 0
	.uleb128 0
.LLSDACSE290:
	.section	.text._ZN7SQClass4NextERK11SQObjectPtrRS0_S3_
	.fnend
	.size	_ZN7SQClass4NextERK11SQObjectPtrRS0_S3_, .-_ZN7SQClass4NextERK11SQObjectPtrRS0_S3_
	.section	.text._ZN7SQClass13SetAttributesERK11SQObjectPtrS2_,"ax",%progbits
	.align	2
	.global	_ZN7SQClass13SetAttributesERK11SQObjectPtrS2_
	.thumb
	.thumb_func
	.type	_ZN7SQClass13SetAttributesERK11SQObjectPtrS2_, %function
_ZN7SQClass13SetAttributesERK11SQObjectPtrS2_:
	.fnstart
.LFB291:
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
	ldr	r2, [r3, #24]
	add	r3, r7, #16
	mov	r0, r2
	ldr	r1, [r7, #8]
	mov	r2, r3
.LEHB45:
	bl	_ZN7SQTable3GetERK11SQObjectPtrRS0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L245
	ldr	r3, [r7, #20]
	and	r3, r3, #33554432
	cmp	r3, #0
	beq	.L246
	ldr	r3, [r7, #12]
	add	r2, r3, #32
	ldr	r3, [r7, #20]
	bic	r3, r3, #-16777216
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI13SQClassMemberEixEj(PLT)
	mov	r3, r0
	adds	r3, r3, #8
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	b	.L247
.L246:
	ldr	r3, [r7, #12]
	add	r2, r3, #44
	ldr	r3, [r7, #20]
	bic	r3, r3, #-16777216
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI13SQClassMemberEixEj(PLT)
	mov	r3, r0
	adds	r3, r3, #8
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	_ZN11SQObjectPtraSERKS_(PLT)
.LEHE45:
.L247:
	movs	r4, #1
	b	.L248
.L245:
	movs	r4, #0
.L248:
	add	r3, r7, #16
	mov	r0, r3
.LEHB46:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE46:
	mov	r3, r4
	b	.L252
.L251:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB47:
	bl	__cxa_end_cleanup(PLT)
.LEHE47:
.L252:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA291:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE291-.LLSDACSB291
.LLSDACSB291:
	.uleb128 .LEHB45-.LFB291
	.uleb128 .LEHE45-.LEHB45
	.uleb128 .L251-.LFB291
	.uleb128 0
	.uleb128 .LEHB46-.LFB291
	.uleb128 .LEHE46-.LEHB46
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB47-.LFB291
	.uleb128 .LEHE47-.LEHB47
	.uleb128 0
	.uleb128 0
.LLSDACSE291:
	.section	.text._ZN7SQClass13SetAttributesERK11SQObjectPtrS2_
	.fnend
	.size	_ZN7SQClass13SetAttributesERK11SQObjectPtrS2_, .-_ZN7SQClass13SetAttributesERK11SQObjectPtrS2_
	.section	.text._ZN7SQClass13GetAttributesERK11SQObjectPtrRS0_,"ax",%progbits
	.align	2
	.global	_ZN7SQClass13GetAttributesERK11SQObjectPtrRS0_
	.thumb
	.thumb_func
	.type	_ZN7SQClass13GetAttributesERK11SQObjectPtrRS0_, %function
_ZN7SQClass13GetAttributesERK11SQObjectPtrRS0_:
	.fnstart
.LFB292:
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
	ldr	r2, [r3, #24]
	add	r3, r7, #16
	mov	r0, r2
	ldr	r1, [r7, #8]
	mov	r2, r3
.LEHB48:
	bl	_ZN7SQTable3GetERK11SQObjectPtrRS0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L254
	ldr	r3, [r7, #20]
	and	r3, r3, #33554432
	cmp	r3, #0
	beq	.L255
	ldr	r3, [r7, #12]
	add	r2, r3, #32
	ldr	r3, [r7, #20]
	bic	r3, r3, #-16777216
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI13SQClassMemberEixEj(PLT)
	mov	r3, r0
	adds	r3, r3, #8
	b	.L256
.L255:
	ldr	r3, [r7, #12]
	add	r2, r3, #44
	ldr	r3, [r7, #20]
	bic	r3, r3, #-16777216
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI13SQClassMemberEixEj(PLT)
	mov	r3, r0
	adds	r3, r3, #8
.L256:
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
.LEHE48:
	movs	r4, #1
	b	.L257
.L254:
	movs	r4, #0
.L257:
	add	r3, r7, #16
	mov	r0, r3
.LEHB49:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE49:
	mov	r3, r4
	b	.L261
.L260:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB50:
	bl	__cxa_end_cleanup(PLT)
.LEHE50:
.L261:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA292:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE292-.LLSDACSB292
.LLSDACSB292:
	.uleb128 .LEHB48-.LFB292
	.uleb128 .LEHE48-.LEHB48
	.uleb128 .L260-.LFB292
	.uleb128 0
	.uleb128 .LEHB49-.LFB292
	.uleb128 .LEHE49-.LEHB49
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB50-.LFB292
	.uleb128 .LEHE50-.LEHB50
	.uleb128 0
	.uleb128 0
.LLSDACSE292:
	.section	.text._ZN7SQClass13GetAttributesERK11SQObjectPtrRS0_
	.fnend
	.size	_ZN7SQClass13GetAttributesERK11SQObjectPtrRS0_, .-_ZN7SQClass13GetAttributesERK11SQObjectPtrRS0_
	.section	.text._ZN10SQInstance4InitEP13SQSharedState,"ax",%progbits
	.align	2
	.global	_ZN10SQInstance4InitEP13SQSharedState
	.thumb
	.thumb_func
	.type	_ZN10SQInstance4InitEP13SQSharedState, %function
_ZN10SQInstance4InitEP13SQSharedState:
	.fnstart
.LFB293:
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
	movs	r2, #0
	str	r2, [r3, #32]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #36]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	ldr	r2, [r3, #4]
	adds	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
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
	bl	_ZN13SQCollectable10AddToChainEPPS_S0_(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN10SQInstance4InitEP13SQSharedState, .-_ZN10SQInstance4InitEP13SQSharedState
	.section	.text._ZN11SQDelegableC2Ev,"axG",%progbits,_ZN11SQDelegableC5Ev,comdat
	.align	2
	.weak	_ZN11SQDelegableC2Ev
	.thumb
	.thumb_func
	.type	_ZN11SQDelegableC2Ev, %function
_ZN11SQDelegableC2Ev:
	.fnstart
.LFB296:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r4, .L266
.LPIC7:
	add	r4, pc
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN13SQCollectableC2Ev(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, .L266+4
	ldr	r2, [r4, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L267:
	.align	2
.L266:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC7+4)
	.word	_ZTV11SQDelegable(GOT)
	.cantunwind
	.fnend
	.size	_ZN11SQDelegableC2Ev, .-_ZN11SQDelegableC2Ev
	.weak	_ZN11SQDelegableC1Ev
	.thumb_set _ZN11SQDelegableC1Ev,_ZN11SQDelegableC2Ev
	.section	.text._ZN10SQInstanceC2EP13SQSharedStateP7SQClassi,"ax",%progbits
	.align	2
	.global	_ZN10SQInstanceC2EP13SQSharedStateP7SQClassi
	.thumb
	.thumb_func
	.type	_ZN10SQInstanceC2EP13SQSharedStateP7SQClassi, %function
_ZN10SQInstanceC2EP13SQSharedStateP7SQClassi:
	.fnstart
.LFB298:
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
	str	r3, [r7]
	ldr	r4, .L282
.LPIC8:
	add	r4, pc
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	_ZN11SQDelegableC2Ev(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, .L282+4
	ldr	r2, [r4, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #44
	movs	r4, #0
	mov	r5, r3
	b	.L269
.L270:
	mov	r0, r5
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	adds	r5, r5, #8
	subs	r4, r4, #1
.L269:
	cmp	r4, #-1
	bne	.L270
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	str	r2, [r3, #40]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	adds	r3, r3, #32
	mov	r0, r3
.LEHB51:
	bl	_ZNK8sqvectorI13SQClassMemberE4sizeEv(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L271
.L274:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	adds	r3, r3, #32
	mov	r0, r3
	ldr	r1, [r7, #20]
	bl	_ZNK8sqvectorI13SQClassMemberEixEj(PLT)
	mov	r3, r0
	mov	r4, r3
	ldr	r3, [r7, #20]
	adds	r3, r3, #5
	lsls	r3, r3, #3
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	adds	r3, r3, #4
	movs	r0, #8
	mov	r1, r3
	bl	_ZnwjPv(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L273
	mov	r0, r3
	mov	r1, r4
	bl	_ZN11SQObjectPtrC1ERKS_(PLT)
.L273:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L271:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bcc	.L274
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_ZN10SQInstance4InitEP13SQSharedState(PLT)
.LEHE51:
	ldr	r3, [r7, #12]
	b	.L281
.L280:
	ldr	r3, [r7, #12]
	adds	r3, r3, #44
	cmp	r3, #0
	beq	.L278
	ldr	r3, [r7, #12]
	add	r4, r3, #52
.L279:
	ldr	r3, [r7, #12]
	adds	r3, r3, #44
	cmp	r4, r3
	beq	.L278
	subs	r4, r4, #8
	mov	r0, r4
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L279
.L278:
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	_ZN11SQDelegableD2Ev(PLT)
.LEHB52:
	bl	__cxa_end_cleanup(PLT)
.LEHE52:
.L281:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L283:
	.align	2
.L282:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC8+4)
	.word	_ZTV10SQInstance(GOT)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA298:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE298-.LLSDACSB298
.LLSDACSB298:
	.uleb128 .LEHB51-.LFB298
	.uleb128 .LEHE51-.LEHB51
	.uleb128 .L280-.LFB298
	.uleb128 0
	.uleb128 .LEHB52-.LFB298
	.uleb128 .LEHE52-.LEHB52
	.uleb128 0
	.uleb128 0
.LLSDACSE298:
	.section	.text._ZN10SQInstanceC2EP13SQSharedStateP7SQClassi
	.fnend
	.size	_ZN10SQInstanceC2EP13SQSharedStateP7SQClassi, .-_ZN10SQInstanceC2EP13SQSharedStateP7SQClassi
	.global	_ZN10SQInstanceC1EP13SQSharedStateP7SQClassi
	.thumb_set _ZN10SQInstanceC1EP13SQSharedStateP7SQClassi,_ZN10SQInstanceC2EP13SQSharedStateP7SQClassi
	.section	.text._ZN10SQInstanceC2EP13SQSharedStatePS_i,"ax",%progbits
	.align	2
	.global	_ZN10SQInstanceC2EP13SQSharedStatePS_i
	.thumb
	.thumb_func
	.type	_ZN10SQInstanceC2EP13SQSharedStatePS_i, %function
_ZN10SQInstanceC2EP13SQSharedStatePS_i:
	.fnstart
.LFB301:
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
	str	r3, [r7]
	ldr	r4, .L298
.LPIC9:
	add	r4, pc
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	_ZN11SQDelegableC2Ev(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, .L298+4
	ldr	r2, [r4, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #44
	movs	r4, #0
	mov	r5, r3
	b	.L285
.L286:
	mov	r0, r5
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	adds	r5, r5, #8
	subs	r4, r4, #1
.L285:
	cmp	r4, #-1
	bne	.L286
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	str	r2, [r3, #40]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #12]
	str	r2, [r3, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	adds	r3, r3, #32
	mov	r0, r3
.LEHB53:
	bl	_ZNK8sqvectorI13SQClassMemberE4sizeEv(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L287
.L290:
	ldr	r3, [r7, #20]
	adds	r3, r3, #5
	lsls	r3, r3, #3
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	adds	r3, r3, #4
	movs	r0, #8
	mov	r1, r3
	bl	_ZnwjPv(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L289
	ldr	r2, [r7, #20]
	adds	r2, r2, #5
	lsls	r2, r2, #3
	ldr	r1, [r7, #4]
	add	r2, r2, r1
	adds	r2, r2, #4
	mov	r0, r3
	mov	r1, r2
	bl	_ZN11SQObjectPtrC1ERKS_(PLT)
.L289:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L287:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bcc	.L290
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_ZN10SQInstance4InitEP13SQSharedState(PLT)
.LEHE53:
	ldr	r3, [r7, #12]
	b	.L297
.L296:
	ldr	r3, [r7, #12]
	adds	r3, r3, #44
	cmp	r3, #0
	beq	.L294
	ldr	r3, [r7, #12]
	add	r4, r3, #52
.L295:
	ldr	r3, [r7, #12]
	adds	r3, r3, #44
	cmp	r4, r3
	beq	.L294
	subs	r4, r4, #8
	mov	r0, r4
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L295
.L294:
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	_ZN11SQDelegableD2Ev(PLT)
.LEHB54:
	bl	__cxa_end_cleanup(PLT)
.LEHE54:
.L297:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L299:
	.align	2
.L298:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC9+4)
	.word	_ZTV10SQInstance(GOT)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA301:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE301-.LLSDACSB301
.LLSDACSB301:
	.uleb128 .LEHB53-.LFB301
	.uleb128 .LEHE53-.LEHB53
	.uleb128 .L296-.LFB301
	.uleb128 0
	.uleb128 .LEHB54-.LFB301
	.uleb128 .LEHE54-.LEHB54
	.uleb128 0
	.uleb128 0
.LLSDACSE301:
	.section	.text._ZN10SQInstanceC2EP13SQSharedStatePS_i
	.fnend
	.size	_ZN10SQInstanceC2EP13SQSharedStatePS_i, .-_ZN10SQInstanceC2EP13SQSharedStatePS_i
	.global	_ZN10SQInstanceC1EP13SQSharedStatePS_i
	.thumb_set _ZN10SQInstanceC1EP13SQSharedStatePS_i,_ZN10SQInstanceC2EP13SQSharedStatePS_i
	.section	.text._ZN10SQInstance8FinalizeEv,"ax",%progbits
	.align	2
	.global	_ZN10SQInstance8FinalizeEv
	.thumb
	.thumb_func
	.type	_ZN10SQInstance8FinalizeEv, %function
_ZN10SQInstance8FinalizeEv:
	.fnstart
.LFB303:
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
	ldr	r3, [r3, #28]
	adds	r3, r3, #32
	mov	r0, r3
	bl	_ZNK8sqvectorI13SQClassMemberE4sizeEv(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	cmp	r3, #0
	beq	.L301
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L302
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #28]
	mov	r0, r2
	blx	r3
.L302:
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #28]
.L301:
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L303
.L304:
	ldr	r3, [r7, #12]
	adds	r3, r3, #5
	lsls	r3, r3, #3
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L303:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bgt	.L304
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN10SQInstance8FinalizeEv, .-_ZN10SQInstance8FinalizeEv
	.section	.text._ZN10SQInstanceD2Ev,"ax",%progbits
	.align	2
	.global	_ZN10SQInstanceD2Ev
	.thumb
	.thumb_func
	.type	_ZN10SQInstanceD2Ev, %function
_ZN10SQInstanceD2Ev:
	.fnstart
.LFB305:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #12
	sub	sp, sp, #12
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r1, .L320
.LPIC10:
	add	r1, pc
	ldr	r3, [r7, #4]
	ldr	r2, .L320+4
	ldr	r2, [r1, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	blt	.L306
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	add	r2, r3, #68
	ldr	r3, [r7, #4]
	mov	r0, r2
	mov	r1, r3
.LEHB55:
	bl	_ZN13SQCollectable15RemoveFromChainEPPS_S0_(PLT)
.L306:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	cmp	r3, #0
	beq	.L307
	ldr	r0, [r7, #4]
	bl	_ZN10SQInstance8FinalizeEv(PLT)
.LEHE55:
.L307:
	ldr	r3, [r7, #4]
	adds	r3, r3, #44
	cmp	r3, #0
	beq	.L308
	ldr	r3, [r7, #4]
	add	r4, r3, #52
.L309:
	ldr	r3, [r7, #4]
	adds	r3, r3, #44
	cmp	r4, r3
	beq	.L308
	subs	r4, r4, #8
	mov	r0, r4
.LEHB56:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE56:
	b	.L309
.L308:
	ldr	r3, [r7, #4]
	mov	r0, r3
.LEHB57:
	bl	_ZN11SQDelegableD2Ev(PLT)
.LEHE57:
	movs	r3, #0
	cmp	r3, #0
	beq	.L311
	ldr	r0, [r7, #4]
	bl	_ZdlPv(PLT)
.L311:
	ldr	r3, [r7, #4]
	b	.L319
.L317:
	ldr	r3, [r7, #4]
	adds	r3, r3, #44
	cmp	r3, #0
	beq	.L316
	ldr	r3, [r7, #4]
	add	r4, r3, #52
.L315:
	ldr	r3, [r7, #4]
	adds	r3, r3, #44
	cmp	r4, r3
	beq	.L316
	subs	r4, r4, #8
	mov	r0, r4
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L315
.L318:
.L316:
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN11SQDelegableD2Ev(PLT)
.LEHB58:
	bl	__cxa_end_cleanup(PLT)
.LEHE58:
.L319:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L321:
	.align	2
.L320:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC10+4)
	.word	_ZTV10SQInstance(GOT)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA305:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE305-.LLSDACSB305
.LLSDACSB305:
	.uleb128 .LEHB55-.LFB305
	.uleb128 .LEHE55-.LEHB55
	.uleb128 .L317-.LFB305
	.uleb128 0
	.uleb128 .LEHB56-.LFB305
	.uleb128 .LEHE56-.LEHB56
	.uleb128 .L318-.LFB305
	.uleb128 0
	.uleb128 .LEHB57-.LFB305
	.uleb128 .LEHE57-.LEHB57
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB58-.LFB305
	.uleb128 .LEHE58-.LEHB58
	.uleb128 0
	.uleb128 0
.LLSDACSE305:
	.section	.text._ZN10SQInstanceD2Ev
	.fnend
	.size	_ZN10SQInstanceD2Ev, .-_ZN10SQInstanceD2Ev
	.global	_ZN10SQInstanceD1Ev
	.thumb_set _ZN10SQInstanceD1Ev,_ZN10SQInstanceD2Ev
	.section	.text._ZN10SQInstanceD0Ev,"ax",%progbits
	.align	2
	.global	_ZN10SQInstanceD0Ev
	.thumb
	.thumb_func
	.type	_ZN10SQInstanceD0Ev, %function
_ZN10SQInstanceD0Ev:
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
	bl	_ZN10SQInstanceD1Ev(PLT)
	ldr	r0, [r7, #4]
	bl	_ZdlPv(PLT)
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN10SQInstanceD0Ev, .-_ZN10SQInstanceD0Ev
	.section	.text._ZN10SQInstance13GetMetaMethodEP4SQVM12SQMetaMethodR11SQObjectPtr,"ax",%progbits
	.align	2
	.global	_ZN10SQInstance13GetMetaMethodEP4SQVM12SQMetaMethodR11SQObjectPtr
	.thumb
	.thumb_func
	.type	_ZN10SQInstance13GetMetaMethodEP4SQVM12SQMetaMethodR11SQObjectPtr, %function
_ZN10SQInstance13GetMetaMethodEP4SQVM12SQMetaMethodR11SQObjectPtr:
	.fnstart
.LFB308:
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
	ldr	r3, [r3, #28]
	ldr	r2, [r7, #4]
	adds	r2, r2, #7
	ldr	r2, [r3, r2, lsl #3]
	movs	r3, #1
	movt	r3, 256
	cmp	r2, r3
	beq	.L326
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #4]
	adds	r3, r3, #7
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	movs	r3, #1
	b	.L327
.L326:
	movs	r3, #0
.L327:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN10SQInstance13GetMetaMethodEP4SQVM12SQMetaMethodR11SQObjectPtr, .-_ZN10SQInstance13GetMetaMethodEP4SQVM12SQMetaMethodR11SQObjectPtr
	.section	.text._ZN10SQInstance10InstanceOfEP7SQClass,"ax",%progbits
	.align	2
	.global	_ZN10SQInstance10InstanceOfEP7SQClass
	.thumb
	.thumb_func
	.type	_ZN10SQInstance10InstanceOfEP7SQClass, %function
_ZN10SQInstance10InstanceOfEP7SQClass:
	.fnstart
.LFB309:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	str	r3, [r7, #12]
	b	.L329
.L332:
	ldr	r2, [r7, #12]
	ldr	r3, [r7]
	cmp	r2, r3
	bne	.L330
	movs	r3, #1
	b	.L331
.L330:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	str	r3, [r7, #12]
.L329:
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L332
	movs	r3, #0
.L331:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN10SQInstance10InstanceOfEP7SQClass, .-_ZN10SQInstance10InstanceOfEP7SQClass
	.section	.text._ZNK8sqvectorI13SQClassMemberEixEj,"axG",%progbits,_ZNK8sqvectorI13SQClassMemberEixEj,comdat
	.align	2
	.weak	_ZNK8sqvectorI13SQClassMemberEixEj
	.thumb
	.thumb_func
	.type	_ZNK8sqvectorI13SQClassMemberEixEj, %function
_ZNK8sqvectorI13SQClassMemberEixEj:
	.fnstart
.LFB315:
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
.LFB316:
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
	.section	.text._ZN8sqvectorI13SQClassMemberEC2Ev,"axG",%progbits,_ZN8sqvectorI13SQClassMemberEC5Ev,comdat
	.align	2
	.weak	_ZN8sqvectorI13SQClassMemberEC2Ev
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI13SQClassMemberEC2Ev, %function
_ZN8sqvectorI13SQClassMemberEC2Ev:
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
	.size	_ZN8sqvectorI13SQClassMemberEC2Ev, .-_ZN8sqvectorI13SQClassMemberEC2Ev
	.weak	_ZN8sqvectorI13SQClassMemberEC1Ev
	.thumb_set _ZN8sqvectorI13SQClassMemberEC1Ev,_ZN8sqvectorI13SQClassMemberEC2Ev
	.section	.text._ZN8sqvectorI13SQClassMemberED2Ev,"axG",%progbits,_ZN8sqvectorI13SQClassMemberED5Ev,comdat
	.align	2
	.weak	_ZN8sqvectorI13SQClassMemberED2Ev
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI13SQClassMemberED2Ev, %function
_ZN8sqvectorI13SQClassMemberED2Ev:
	.fnstart
.LFB341:
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
	beq	.L341
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L342
.L343:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #4
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZN13SQClassMemberD1Ev(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L342:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bhi	.L343
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	lsls	r3, r3, #4
	mov	r0, r2
	mov	r1, r3
	bl	_Z10sq_vm_freePvj(PLT)
.L341:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN8sqvectorI13SQClassMemberED2Ev, .-_ZN8sqvectorI13SQClassMemberED2Ev
	.weak	_ZN8sqvectorI13SQClassMemberED1Ev
	.thumb_set _ZN8sqvectorI13SQClassMemberED1Ev,_ZN8sqvectorI13SQClassMemberED2Ev
	.section	.text._ZN13SQClassMemberC2ERKS_,"axG",%progbits,_ZN13SQClassMemberC5ERKS_,comdat
	.align	2
	.weak	_ZN13SQClassMemberC2ERKS_
	.thumb
	.thumb_func
	.type	_ZN13SQClassMemberC2ERKS_, %function
_ZN13SQClassMemberC2ERKS_:
	.fnstart
.LFB345:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1ERKS_(PLT)
	ldr	r3, [r7, #4]
	add	r2, r3, #8
	ldr	r3, [r7]
	adds	r3, r3, #8
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1ERKS_(PLT)
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN13SQClassMemberC2ERKS_, .-_ZN13SQClassMemberC2ERKS_
	.weak	_ZN13SQClassMemberC1ERKS_
	.thumb_set _ZN13SQClassMemberC1ERKS_,_ZN13SQClassMemberC2ERKS_
	.section	.text._ZN8sqvectorI13SQClassMemberE4copyERKS1_,"axG",%progbits,_ZN8sqvectorI13SQClassMemberE4copyERKS1_,comdat
	.align	2
	.weak	_ZN8sqvectorI13SQClassMemberE4copyERKS1_
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI13SQClassMemberE4copyERKS1_, %function
_ZN8sqvectorI13SQClassMemberE4copyERKS1_:
	.fnstart
.LFB343:
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
	cmp	r3, #0
	beq	.L349
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #24]
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN13SQClassMemberC1Ev(PLT)
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	movs	r1, #0
	mov	r2, r3
.LEHB59:
	bl	_ZN8sqvectorI13SQClassMemberE6resizeEjRKS0_(PLT)
.LEHE59:
	add	r3, r7, #12
	mov	r0, r3
.LEHB60:
	bl	_ZN13SQClassMemberD1Ev(PLT)
.L349:
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	bls	.L350
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN8sqvectorI13SQClassMemberE8_reallocEj(PLT)
.LEHE60:
.L350:
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L351
.L354:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #28]
	lsls	r3, r3, #4
	add	r3, r3, r2
	movs	r0, #16
	mov	r1, r3
	bl	_ZnwjPv(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L353
	ldr	r2, [r7]
	ldr	r1, [r2]
	ldr	r2, [r7, #28]
	lsls	r2, r2, #4
	add	r2, r2, r1
	mov	r0, r3
	mov	r1, r2
	bl	_ZN13SQClassMemberC1ERKS_(PLT)
.L353:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L351:
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bhi	.L354
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	b	.L357
.L356:
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN13SQClassMemberD1Ev(PLT)
.LEHB61:
	bl	__cxa_end_cleanup(PLT)
.LEHE61:
.L357:
	adds	r7, r7, #32
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
	.uleb128 .LEHB59-.LFB343
	.uleb128 .LEHE59-.LEHB59
	.uleb128 .L356-.LFB343
	.uleb128 0
	.uleb128 .LEHB60-.LFB343
	.uleb128 .LEHE60-.LEHB60
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB61-.LFB343
	.uleb128 .LEHE61-.LEHB61
	.uleb128 0
	.uleb128 0
.LLSDACSE343:
	.section	.text._ZN8sqvectorI13SQClassMemberE4copyERKS1_,"axG",%progbits,_ZN8sqvectorI13SQClassMemberE4copyERKS1_,comdat
	.fnend
	.size	_ZN8sqvectorI13SQClassMemberE4copyERKS1_, .-_ZN8sqvectorI13SQClassMemberE4copyERKS1_
	.section	.text._ZN8sqvectorI13SQClassMemberE6resizeEjRKS0_,"axG",%progbits,_ZN8sqvectorI13SQClassMemberE6resizeEjRKS0_,comdat
	.align	2
	.weak	_ZN8sqvectorI13SQClassMemberE6resizeEjRKS0_
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI13SQClassMemberE6resizeEjRKS0_, %function
_ZN8sqvectorI13SQClassMemberE6resizeEjRKS0_:
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
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcs	.L359
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_ZN8sqvectorI13SQClassMemberE8_reallocEj(PLT)
.L359:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcs	.L360
	b	.L361
.L364:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #4
	add	r3, r3, r2
	movs	r0, #16
	mov	r1, r3
	bl	_ZnwjPv(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L363
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	_ZN13SQClassMemberC1ERKS_(PLT)
.L363:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #4]
.L361:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L364
	b	.L358
.L360:
	ldr	r3, [r7, #8]
	str	r3, [r7, #20]
	b	.L366
.L367:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #4
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZN13SQClassMemberD1Ev(PLT)
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L366:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bhi	.L367
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #4]
.L358:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN8sqvectorI13SQClassMemberE6resizeEjRKS0_, .-_ZN8sqvectorI13SQClassMemberE6resizeEjRKS0_
	.section	.text._ZN8sqvectorI13SQClassMemberE9push_backERKS0_,"axG",%progbits,_ZN8sqvectorI13SQClassMemberE9push_backERKS0_,comdat
	.align	2
	.weak	_ZN8sqvectorI13SQClassMemberE9push_backERKS0_
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI13SQClassMemberE9push_backERKS0_, %function
_ZN8sqvectorI13SQClassMemberE9push_backERKS0_:
	.fnstart
.LFB348:
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
	bhi	.L369
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #1
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN8sqvectorI13SQClassMemberE8_reallocEj(PLT)
.L369:
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
	beq	.L370
	mov	r0, r4
	ldr	r1, [r7]
	bl	_ZN13SQClassMemberC1ERKS_(PLT)
	mov	r3, r4
	b	.L371
.L370:
	mov	r3, r4
.L371:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZN8sqvectorI13SQClassMemberE9push_backERKS0_, .-_ZN8sqvectorI13SQClassMemberE9push_backERKS0_
	.section	.text._ZN8sqvectorI13SQClassMemberE8_reallocEj,"axG",%progbits,_ZN8sqvectorI13SQClassMemberE8_reallocEj,comdat
	.align	2
	.weak	_ZN8sqvectorI13SQClassMemberE8_reallocEj
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI13SQClassMemberE8_reallocEj, %function
_ZN8sqvectorI13SQClassMemberE8_reallocEj:
	.fnstart
.LFB353:
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
	beq	.L374
	ldr	r3, [r7]
	b	.L375
.L374:
	movs	r3, #4
.L375:
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
	.size	_ZN8sqvectorI13SQClassMemberE8_reallocEj, .-_ZN8sqvectorI13SQClassMemberE8_reallocEj
	.global	_ZTV10SQInstance
	.section	.data.rel.ro._ZTV10SQInstance,"aw",%progbits
	.align	3
	.type	_ZTV10SQInstance, %object
	.size	_ZTV10SQInstance, 36
_ZTV10SQInstance:
	.word	0
	.word	_ZTI10SQInstance
	.word	_ZN10SQInstanceD1Ev
	.word	_ZN10SQInstanceD0Ev
	.word	_ZN10SQInstance7ReleaseEv
	.word	_ZN10SQInstance7GetTypeEv
	.word	_ZN10SQInstance4MarkEPP13SQCollectable
	.word	_ZN10SQInstance8FinalizeEv
	.word	_ZN10SQInstance13GetMetaMethodEP4SQVM12SQMetaMethodR11SQObjectPtr
	.global	_ZTV7SQClass
	.section	.data.rel.ro._ZTV7SQClass,"aw",%progbits
	.align	3
	.type	_ZTV7SQClass, %object
	.size	_ZTV7SQClass, 32
_ZTV7SQClass:
	.word	0
	.word	_ZTI7SQClass
	.word	_ZN7SQClassD1Ev
	.word	_ZN7SQClassD0Ev
	.word	_ZN7SQClass7ReleaseEv
	.word	_ZN7SQClass7GetTypeEv
	.word	_ZN7SQClass4MarkEPP13SQCollectable
	.word	_ZN7SQClass8FinalizeEv
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
	.global	_ZTI10SQInstance
	.section	.data.rel.ro._ZTI10SQInstance,"aw",%progbits
	.align	2
	.type	_ZTI10SQInstance, %object
	.size	_ZTI10SQInstance, 12
_ZTI10SQInstance:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTS10SQInstance
	.word	_ZTI11SQDelegable
	.global	_ZTS10SQInstance
	.section	.rodata._ZTS10SQInstance,"a",%progbits
	.align	2
	.type	_ZTS10SQInstance, %object
	.size	_ZTS10SQInstance, 13
_ZTS10SQInstance:
	.ascii	"10SQInstance\000"
	.global	_ZTI7SQClass
	.section	.data.rel.ro._ZTI7SQClass,"aw",%progbits
	.align	2
	.type	_ZTI7SQClass, %object
	.size	_ZTI7SQClass, 12
_ZTI7SQClass:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTS7SQClass
	.word	_ZTI13SQCollectable
	.global	_ZTS7SQClass
	.section	.rodata._ZTS7SQClass,"a",%progbits
	.align	2
	.type	_ZTS7SQClass, %object
	.size	_ZTS7SQClass, 9
_ZTS7SQClass:
	.ascii	"7SQClass\000"
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
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
