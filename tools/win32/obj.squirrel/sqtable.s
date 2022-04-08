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
	.file	"sqtable.cpp"
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
	beq	.L30
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #4]
	adds	r2, r2, #1
	str	r2, [r3, #4]
.L30:
	ldr	r3, [r7, #12]
	and	r3, r3, #134217728
	cmp	r3, #0
	beq	.L31
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L31
	movs	r3, #1
	b	.L32
.L31:
	movs	r3, #0
.L32:
	cmp	r3, #0
	beq	.L33
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	mov	r0, r2
	blx	r3
.L33:
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
	beq	.L36
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L36
	movs	r3, #1
	b	.L37
.L36:
	movs	r3, #0
.L37:
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
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQObjectPtr4NullEv, .-_ZN11SQObjectPtr4NullEv
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
	beq	.L41
	movs	r2, #2
	movt	r2, 1280
	cmp	r3, r2
	bgt	.L42
	movs	r2, #8
	movt	r2, 256
	cmp	r3, r2
	beq	.L41
	b	.L40
.L42:
	movs	r2, #4
	movt	r2, 1280
	cmp	r3, r2
	beq	.L43
	movs	r2, #16
	movt	r2, 2048
	cmp	r3, r2
	bne	.L40
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #24]
	b	.L45
.L43:
	ldr	r3, [r7, #4]
	flds	s15, [r3, #4]
	ftosizs	s15, s15
	fmrs	r3, s15	@ int
	b	.L45
.L41:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	b	.L45
.L40:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	asrs	r3, r3, #3
.L45:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_Z7HashObjRK11SQObjectPtr, .-_Z7HashObjRK11SQObjectPtr
	.section	.text._ZN7SQTable9_HashNodeC2Ev,"axG",%progbits,_ZN7SQTable9_HashNodeC5Ev,comdat
	.align	2
	.weak	_ZN7SQTable9_HashNodeC2Ev
	.thumb
	.thumb_func
	.type	_ZN7SQTable9_HashNodeC2Ev, %function
_ZN7SQTable9_HashNodeC2Ev:
	.fnstart
.LFB168:
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
	.size	_ZN7SQTable9_HashNodeC2Ev, .-_ZN7SQTable9_HashNodeC2Ev
	.weak	_ZN7SQTable9_HashNodeC1Ev
	.thumb_set _ZN7SQTable9_HashNodeC1Ev,_ZN7SQTable9_HashNodeC2Ev
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
	beq	.L51
	mov	r0, r4
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
.LEHB1:
	bl	_ZN7SQTableC1EP13SQSharedStatei(PLT)
.LEHE1:
.L51:
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #12]
	b	.L55
.L54:
	mov	r0, r4
	mov	r1, r5
	bl	_ZdlPvS_(PLT)
.LEHB2:
	bl	__cxa_end_cleanup(PLT)
.LEHE2:
.L55:
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
	.uleb128 .L54-.LFB170
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
	ldr	r1, .L60
.LPIC1:
	add	r1, pc
	ldr	r3, [r7, #4]
	ldr	r2, .L60+4
	ldr	r2, [r1, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN12SQRefCountedD2Ev(PLT)
	movs	r3, #0
	cmp	r3, #0
	beq	.L58
	ldr	r0, [r7, #4]
	bl	_ZdlPv(PLT)
.L58:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L61:
	.align	2
.L60:
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
	ldr	r1, .L69
.LPIC2:
	add	r1, pc
	ldr	r3, [r7, #4]
	ldr	r2, .L69+4
	ldr	r2, [r1, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN13SQCollectableD2Ev(PLT)
	movs	r3, #0
	cmp	r3, #0
	beq	.L67
	ldr	r0, [r7, #4]
	bl	_ZdlPv(PLT)
.L67:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L70:
	.align	2
.L69:
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
	.section	.text._ZN7SQTable9_HashNodeD2Ev,"axG",%progbits,_ZN7SQTable9_HashNodeD5Ev,comdat
	.align	2
	.weak	_ZN7SQTable9_HashNodeD2Ev
	.thumb
	.thumb_func
	.type	_ZN7SQTable9_HashNodeD2Ev, %function
_ZN7SQTable9_HashNodeD2Ev:
	.fnstart
.LFB181:
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
.LEHB3:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE3:
	ldr	r3, [r7, #4]
	mov	r0, r3
.LEHB4:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE4:
	ldr	r3, [r7, #4]
	b	.L79
.L78:
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB5:
	bl	__cxa_end_cleanup(PLT)
.LEHE5:
.L79:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA181:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE181-.LLSDACSB181
.LLSDACSB181:
	.uleb128 .LEHB3-.LFB181
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L78-.LFB181
	.uleb128 0
	.uleb128 .LEHB4-.LFB181
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB181
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE181:
	.section	.text._ZN7SQTable9_HashNodeD2Ev,"axG",%progbits,_ZN7SQTable9_HashNodeD5Ev,comdat
	.fnend
	.size	_ZN7SQTable9_HashNodeD2Ev, .-_ZN7SQTable9_HashNodeD2Ev
	.weak	_ZN7SQTable9_HashNodeD1Ev
	.thumb_set _ZN7SQTable9_HashNodeD1Ev,_ZN7SQTable9_HashNodeD2Ev
	.section	.text._ZN7SQTableD2Ev,"axG",%progbits,_ZN7SQTableD5Ev,comdat
	.align	2
	.weak	_ZN7SQTableD2Ev
	.thumb
	.thumb_func
	.type	_ZN7SQTableD2Ev, %function
_ZN7SQTableD2Ev:
	.fnstart
.LFB183:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r1, .L90
.LPIC3:
	add	r1, pc
	ldr	r3, [r7, #4]
	ldr	r2, .L90+4
	ldr	r2, [r1, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #4]
	mov	r0, r3
	movs	r1, #0
.LEHB6:
	bl	_ZN11SQDelegable11SetDelegateEP7SQTable(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	blt	.L81
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	add	r2, r3, #68
	ldr	r3, [r7, #4]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN13SQCollectable15RemoveFromChainEPPS_S0_(PLT)
.L81:
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L82
.L83:
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #32]
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	mov	r0, r3
	bl	_ZN7SQTable9_HashNodeD1Ev(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L82:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bgt	.L83
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #32]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r0, r1
	mov	r1, r3
	bl	_Z10sq_vm_freePvj(PLT)
.LEHE6:
	ldr	r3, [r7, #4]
	mov	r0, r3
.LEHB7:
	bl	_ZN11SQDelegableD2Ev(PLT)
.LEHE7:
	movs	r3, #0
	cmp	r3, #0
	beq	.L85
	ldr	r0, [r7, #4]
	bl	_ZdlPv(PLT)
.L85:
	ldr	r3, [r7, #4]
	b	.L89
.L88:
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN11SQDelegableD2Ev(PLT)
.LEHB8:
	bl	__cxa_end_cleanup(PLT)
.LEHE8:
.L89:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L91:
	.align	2
.L90:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC3+4)
	.word	_ZTV7SQTable(GOT)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA183:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE183-.LLSDACSB183
.LLSDACSB183:
	.uleb128 .LEHB6-.LFB183
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L88-.LFB183
	.uleb128 0
	.uleb128 .LEHB7-.LFB183
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB8-.LFB183
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE183:
	.section	.text._ZN7SQTableD2Ev,"axG",%progbits,_ZN7SQTableD5Ev,comdat
	.fnend
	.size	_ZN7SQTableD2Ev, .-_ZN7SQTableD2Ev
	.weak	_ZN7SQTableD1Ev
	.thumb_set _ZN7SQTableD1Ev,_ZN7SQTableD2Ev
	.section	.text._ZN7SQTableD0Ev,"axG",%progbits,_ZN7SQTableD0Ev,comdat
	.align	2
	.weak	_ZN7SQTableD0Ev
	.thumb
	.thumb_func
	.type	_ZN7SQTableD0Ev, %function
_ZN7SQTableD0Ev:
	.fnstart
.LFB185:
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
	bl	_ZN7SQTableD1Ev(PLT)
	ldr	r0, [r7, #4]
	bl	_ZdlPv(PLT)
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN7SQTableD0Ev, .-_ZN7SQTableD0Ev
	.section	.text._ZN7SQTable7GetTypeEv,"axG",%progbits,_ZN7SQTable7GetTypeEv,comdat
	.align	2
	.weak	_ZN7SQTable7GetTypeEv
	.thumb
	.thumb_func
	.type	_ZN7SQTable7GetTypeEv, %function
_ZN7SQTable7GetTypeEv:
	.fnstart
.LFB186:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #32
	movt	r3, 2560
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN7SQTable7GetTypeEv, .-_ZN7SQTable7GetTypeEv
	.section	.text._ZN7SQTable4_GetERK11SQObjectPtrj,"axG",%progbits,_ZN7SQTable4_GetERK11SQObjectPtrj,comdat
	.align	2
	.weak	_ZN7SQTable4_GetERK11SQObjectPtrj
	.thumb
	.thumb_func
	.type	_ZN7SQTable4_GetERK11SQObjectPtrj, %function
_ZN7SQTable4_GetERK11SQObjectPtrj:
	.fnstart
.LFB187:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #32]
	ldr	r2, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	str	r3, [r7, #20]
.L100:
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bne	.L98
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #8]
	mov	r2, r3
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L98
	ldr	r3, [r7, #20]
	b	.L99
.L98:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #16]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L100
	movs	r3, #0
.L99:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN7SQTable4_GetERK11SQObjectPtrj, .-_ZN7SQTable4_GetERK11SQObjectPtrj
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
	.section	.text._ZN7SQTable7ReleaseEv,"axG",%progbits,_ZN7SQTable7ReleaseEv,comdat
	.align	2
	.weak	_ZN7SQTable7ReleaseEv
	.thumb
	.thumb_func
	.type	_ZN7SQTable7ReleaseEv, %function
_ZN7SQTable7ReleaseEv:
	.fnstart
.LFB189:
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
	.size	_ZN7SQTable7ReleaseEv, .-_ZN7SQTable7ReleaseEv
	.section	.text._ZN13SQCollectableC2Ev,"axG",%progbits,_ZN13SQCollectableC5Ev,comdat
	.align	2
	.weak	_ZN13SQCollectableC2Ev
	.thumb
	.thumb_func
	.type	_ZN13SQCollectableC2Ev, %function
_ZN13SQCollectableC2Ev:
	.fnstart
.LFB217:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r4, .L107
.LPIC4:
	add	r4, pc
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN12SQRefCountedC2Ev(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, .L107+4
	ldr	r2, [r4, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L108:
	.align	2
.L107:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC4+4)
	.word	_ZTV13SQCollectable(GOT)
	.cantunwind
	.fnend
	.size	_ZN13SQCollectableC2Ev, .-_ZN13SQCollectableC2Ev
	.weak	_ZN13SQCollectableC1Ev
	.thumb_set _ZN13SQCollectableC1Ev,_ZN13SQCollectableC2Ev
	.section	.text._ZN11SQDelegableC2Ev,"axG",%progbits,_ZN11SQDelegableC5Ev,comdat
	.align	2
	.weak	_ZN11SQDelegableC2Ev
	.thumb
	.thumb_func
	.type	_ZN11SQDelegableC2Ev, %function
_ZN11SQDelegableC2Ev:
	.fnstart
.LFB263:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r4, .L112
.LPIC5:
	add	r4, pc
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN13SQCollectableC2Ev(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, .L112+4
	ldr	r2, [r4, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L113:
	.align	2
.L112:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC5+4)
	.word	_ZTV11SQDelegable(GOT)
	.cantunwind
	.fnend
	.size	_ZN11SQDelegableC2Ev, .-_ZN11SQDelegableC2Ev
	.weak	_ZN11SQDelegableC1Ev
	.thumb_set _ZN11SQDelegableC1Ev,_ZN11SQDelegableC2Ev
	.section	.text._ZN7SQTableC2EP13SQSharedStatei,"ax",%progbits
	.align	2
	.global	_ZN7SQTableC2EP13SQSharedStatei
	.thumb
	.thumb_func
	.type	_ZN7SQTableC2EP13SQSharedStatei, %function
_ZN7SQTableC2EP13SQSharedStatei:
	.fnstart
.LFB265:
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
	ldr	r4, .L122
.LPIC6:
	add	r4, pc
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	_ZN11SQDelegableC2Ev(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, .L122+4
	ldr	r2, [r4, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	movs	r3, #4
	str	r3, [r7, #20]
	b	.L115
.L116:
	ldr	r3, [r7, #20]
	lsls	r3, r3, #1
	str	r3, [r7, #20]
.L115:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bgt	.L116
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #20]
.LEHB9:
	bl	_ZN7SQTable10AllocNodesEi(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #40]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #24]
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
.LEHE9:
	ldr	r3, [r7, #12]
	b	.L121
.L120:
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	_ZN11SQDelegableD2Ev(PLT)
.LEHB10:
	bl	__cxa_end_cleanup(PLT)
.LEHE10:
.L121:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L123:
	.align	2
.L122:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC6+4)
	.word	_ZTV7SQTable(GOT)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA265:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE265-.LLSDACSB265
.LLSDACSB265:
	.uleb128 .LEHB9-.LFB265
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L120-.LFB265
	.uleb128 0
	.uleb128 .LEHB10-.LFB265
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSE265:
	.section	.text._ZN7SQTableC2EP13SQSharedStatei
	.fnend
	.size	_ZN7SQTableC2EP13SQSharedStatei, .-_ZN7SQTableC2EP13SQSharedStatei
	.global	_ZN7SQTableC1EP13SQSharedStatei
	.thumb_set _ZN7SQTableC1EP13SQSharedStatei,_ZN7SQTableC2EP13SQSharedStatei
	.section	.text._ZN7SQTable6RemoveERK11SQObjectPtr,"ax",%progbits
	.align	2
	.global	_ZN7SQTable6RemoveERK11SQObjectPtr
	.thumb
	.thumb_func
	.type	_ZN7SQTable6RemoveERK11SQObjectPtr, %function
_ZN7SQTable6RemoveERK11SQObjectPtr:
	.fnstart
.LFB267:
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
	bl	_Z7HashObjRK11SQObjectPtr(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	subs	r3, r3, #1
	ands	r3, r3, r2
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	mov	r2, r3
	bl	_ZN7SQTable4_GetERK11SQObjectPtrj(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L124
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	subs	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #40]
	ldr	r0, [r7, #4]
	movs	r1, #0
	bl	_ZN7SQTable6RehashEb(PLT)
.L124:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN7SQTable6RemoveERK11SQObjectPtr, .-_ZN7SQTable6RemoveERK11SQObjectPtr
	.section	.text._ZN7SQTable10AllocNodesEi,"ax",%progbits
	.align	2
	.global	_ZN7SQTable10AllocNodesEi
	.thumb
	.thumb_func
	.type	_ZN7SQTable10AllocNodesEi, %function
_ZN7SQTable10AllocNodesEi:
	.fnstart
.LFB268:
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
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L127
.L130:
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	movs	r0, #20
	mov	r1, r3
	bl	_ZnwjPv(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L129
	mov	r0, r3
	bl	_ZN7SQTable9_HashNodeC1Ev(PLT)
.L129:
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L127:
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	cmp	r2, r3
	blt	.L130
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #36]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #16]
	str	r2, [r3, #32]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #32]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	subs	r3, r3, #20
	adds	r2, r1, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #28]
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN7SQTable10AllocNodesEi, .-_ZN7SQTable10AllocNodesEi
	.section	.text._ZN7SQTable6RehashEb,"ax",%progbits
	.align	2
	.global	_ZN7SQTable6RehashEb
	.thumb
	.thumb_func
	.type	_ZN7SQTable6RehashEb, %function
_ZN7SQTable6RehashEb:
	.fnstart
.LFB269:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #32
	sub	sp, sp, #32
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #3
	bgt	.L132
	movs	r3, #4
	str	r3, [r7, #28]
.L132:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	str	r3, [r7, #16]
	ldr	r0, [r7, #4]
	bl	_ZN7SQTable9CountUsedEv(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #28]
	adds	r2, r3, #3
	cmp	r3, #0
	ite	lt
	movlt	r3, r2
	movge	r3, r3
	asrs	r3, r3, #2
	ldr	r2, [r7, #28]
	subs	r2, r2, r3
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bgt	.L133
	ldr	r3, [r7, #28]
	lsls	r3, r3, #1
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN7SQTable10AllocNodesEi(PLT)
	b	.L134
.L133:
	ldr	r3, [r7, #28]
	adds	r2, r3, #3
	cmp	r3, #0
	ite	lt
	movlt	r3, r2
	movge	r3, r3
	asrs	r3, r3, #2
	mov	r2, r3
	ldr	r3, [r7, #12]
	cmp	r2, r3
	blt	.L135
	ldr	r3, [r7, #28]
	cmp	r3, #4
	ble	.L135
	ldr	r3, [r7, #28]
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN7SQTable10AllocNodesEi(PLT)
	b	.L134
.L135:
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L136
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #28]
	bl	_ZN7SQTable10AllocNodesEi(PLT)
	b	.L134
.L136:
	b	.L131
.L134:
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #40]
	movs	r3, #0
	str	r3, [r7, #24]
	b	.L138
.L140:
	ldr	r2, [r7, #24]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #8]
	movs	r3, #1
	movt	r3, 256
	cmp	r2, r3
	beq	.L139
	ldr	r3, [r7, #8]
	add	r2, r3, #8
	ldr	r3, [r7, #8]
	ldr	r0, [r7, #4]
	mov	r1, r2
	mov	r2, r3
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.L139:
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
.L138:
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	blt	.L140
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L141
.L142:
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZN7SQTable9_HashNodeD1Ev(PLT)
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L141:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	blt	.L142
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r0, [r7, #16]
	mov	r1, r3
	bl	_Z10sq_vm_freePvj(PLT)
.L131:
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN7SQTable6RehashEb, .-_ZN7SQTable6RehashEb
	.section	.text._ZN7SQTable5CloneEv,"ax",%progbits
	.align	2
	.global	_ZN7SQTable5CloneEv
	.thumb
	.thumb_func
	.type	_ZN7SQTable5CloneEv, %function
_ZN7SQTable5CloneEv:
	.fnstart
.LFB270:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #52
	sub	sp, sp, #52
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	mov	r0, r2
	mov	r1, r3
.LEHB11:
	bl	_ZN7SQTable6CreateEP13SQSharedStatei(PLT)
.LEHE11:
	mov	r3, r0
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #36]
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	b	.L144
.L145:
	add	r2, r7, #16
	add	r3, r7, #8
	ldr	r0, [r7, #32]
	mov	r1, r2
	mov	r2, r3
.LEHB12:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE12:
.L144:
	add	r3, r7, #24
	mov	r0, r3
	ldr	r1, [r7, #36]
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r2, r7, #24
	add	r3, r7, #16
	add	r1, r7, #8
	str	r1, [sp]
	ldr	r0, [r7, #4]
	movs	r1, #1
.LEHB13:
	bl	_ZN7SQTable4NextEbRK11SQObjectPtrRS0_S3_(PLT)
.LEHE13:
	mov	r3, r0
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #-1
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r4, r3
	add	r3, r7, #24
	mov	r0, r3
.LEHB14:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	cmp	r4, #0
	bne	.L145
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQDelegable11SetDelegateEP7SQTable(PLT)
.LEHE14:
	ldr	r4, [r7, #32]
	add	r3, r7, #8
	mov	r0, r3
.LEHB15:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE15:
	add	r3, r7, #16
	mov	r0, r3
.LEHB16:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE16:
	mov	r3, r4
	b	.L153
.L152:
	add	r3, r7, #24
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L148
.L151:
.L148:
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L149
.L150:
.L149:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB17:
	bl	__cxa_end_cleanup(PLT)
.LEHE17:
.L153:
	mov	r0, r3
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA270:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE270-.LLSDACSB270
.LLSDACSB270:
	.uleb128 .LEHB11-.LFB270
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB12-.LFB270
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L151-.LFB270
	.uleb128 0
	.uleb128 .LEHB13-.LFB270
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L152-.LFB270
	.uleb128 0
	.uleb128 .LEHB14-.LFB270
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L151-.LFB270
	.uleb128 0
	.uleb128 .LEHB15-.LFB270
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L150-.LFB270
	.uleb128 0
	.uleb128 .LEHB16-.LFB270
	.uleb128 .LEHE16-.LEHB16
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB17-.LFB270
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
.LLSDACSE270:
	.section	.text._ZN7SQTable5CloneEv
	.fnend
	.size	_ZN7SQTable5CloneEv, .-_ZN7SQTable5CloneEv
	.section	.text._ZN7SQTable3GetERK11SQObjectPtrRS0_,"ax",%progbits
	.align	2
	.global	_ZN7SQTable3GetERK11SQObjectPtrRS0_
	.thumb
	.thumb_func
	.type	_ZN7SQTable3GetERK11SQObjectPtrRS0_, %function
_ZN7SQTable3GetERK11SQObjectPtrRS0_:
	.fnstart
.LFB271:
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
	ldr	r2, [r3]
	movs	r3, #1
	movt	r3, 256
	cmp	r2, r3
	bne	.L155
	movs	r3, #0
	b	.L156
.L155:
	ldr	r0, [r7, #8]
	bl	_Z7HashObjRK11SQObjectPtr(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #36]
	subs	r3, r3, #1
	ands	r3, r3, r2
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	mov	r2, r3
	bl	_ZN7SQTable4_GetERK11SQObjectPtrj(PLT)
	mov	r3, r0
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L157
	ldr	r3, [r7, #28]
	ldr	r2, [r3]
	movs	r3, #0
	movt	r3, 2049
	cmp	r2, r3
	beq	.L158
	ldr	r2, [r7, #28]
	add	r3, r7, #20
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	b	.L159
.L158:
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #4]
	add	r3, r7, #20
	adds	r2, r2, #12
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
.L159:
	add	r3, r7, #20
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERK11tagSQObject(PLT)
	movs	r3, #1
	b	.L156
.L157:
	movs	r3, #0
.L156:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN7SQTable3GetERK11SQObjectPtrRS0_, .-_ZN7SQTable3GetERK11SQObjectPtrRS0_
	.section	.rodata
	.align	2
.LC0:
	.ascii	"((key)._type) != OT_NULL\000"
	.align	2
.LC1:
	.ascii	"../../../libs/squirrel/squirrel/sqtable.cpp\000"
	.align	2
.LC2:
	.ascii	"othern->next != __null\000"
	.section	.text._ZN7SQTable7NewSlotERK11SQObjectPtrS2_,"ax",%progbits
	.align	2
	.global	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_
	.thumb
	.thumb_func
	.type	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_, %function
_ZN7SQTable7NewSlotERK11SQObjectPtrS2_:
	.fnstart
.LFB272:
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
	ldr	r3, [r7, #8]
	ldr	r2, [r3]
	movs	r3, #1
	movt	r3, 256
	cmp	r2, r3
	bne	.L161
	ldr	r3, .L176
.LPIC7:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L176+4
.LPIC8:
	add	r3, pc
	mov	r1, r3
	movs	r2, #121
	ldr	r3, .L176+8
.LPIC9:
	add	r3, pc
	bl	__assert_fail(PLT)
.L161:
	ldr	r0, [r7, #8]
	bl	_Z7HashObjRK11SQObjectPtr(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #36]
	subs	r3, r3, #1
	ands	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #28]
	bl	_ZN7SQTable4_GetERK11SQObjectPtrj(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L162
	ldr	r3, [r7, #24]
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	movs	r3, #0
	b	.L163
.L162:
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #32]
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	str	r3, [r7, #24]
	ldr	r3, [r7, #36]
	ldr	r2, [r3, #8]
	movs	r3, #1
	movt	r3, 256
	cmp	r2, r3
	beq	.L164
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	str	r3, [r7, #24]
	ldr	r3, [r7, #36]
	adds	r3, r3, #8
	mov	r0, r3
	bl	_Z7HashObjRK11SQObjectPtr(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #36]
	subs	r3, r3, #1
	ands	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bls	.L165
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #32]
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	str	r3, [r7, #32]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	beq	.L165
	movs	r3, #1
	b	.L166
.L165:
	movs	r3, #0
.L166:
	cmp	r3, #0
	beq	.L167
	b	.L168
.L170:
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	bne	.L169
	ldr	r3, .L176+12
.LPIC10:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L176+16
.LPIC11:
	add	r3, pc
	mov	r1, r3
	movs	r2, #143
	ldr	r3, .L176+20
.LPIC12:
	add	r3, pc
	bl	__assert_fail(PLT)
.L169:
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #16]
	str	r3, [r7, #32]
.L168:
	ldr	r3, [r7, #32]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bne	.L170
	ldr	r3, [r7, #32]
	ldr	r2, [r7, #24]
	str	r2, [r3, #16]
	ldr	r3, [r7, #24]
	add	r2, r3, #8
	ldr	r3, [r7, #36]
	adds	r3, r3, #8
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #36]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	ldr	r3, [r7, #36]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #24]
	str	r2, [r3, #16]
	ldr	r3, [r7, #36]
	adds	r3, r3, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
	ldr	r3, [r7, #36]
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
	ldr	r3, [r7, #36]
	movs	r2, #0
	str	r2, [r3, #16]
	b	.L164
.L167:
	ldr	r3, [r7, #36]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #24]
	str	r2, [r3, #16]
	ldr	r3, [r7, #36]
	ldr	r2, [r7, #24]
	str	r2, [r3, #16]
	ldr	r3, [r7, #24]
	str	r3, [r7, #36]
.L164:
	ldr	r3, [r7, #36]
	adds	r3, r3, #8
	mov	r0, r3
	ldr	r1, [r7, #8]
	bl	_ZN11SQObjectPtraSERKS_(PLT)
.L175:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	ldr	r2, [r3, #8]
	movs	r3, #1
	movt	r3, 256
	cmp	r2, r3
	bne	.L172
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	bne	.L172
	ldr	r3, [r7, #36]
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #40]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #40]
	movs	r3, #1
	b	.L163
.L172:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	cmp	r2, r3
	bne	.L173
	nop
	ldr	r0, [r7, #12]
	movs	r1, #1
	bl	_ZN7SQTable6RehashEb(PLT)
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
	mov	r3, r0
	b	.L163
.L173:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	sub	r2, r3, #20
	ldr	r3, [r7, #12]
	str	r2, [r3, #28]
	b	.L175
.L163:
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L177:
	.align	2
.L176:
	.word	.LC0-(.LPIC7+4)
	.word	.LC1-(.LPIC8+4)
	.word	_ZZN7SQTable7NewSlotERK11SQObjectPtrS2_E19__PRETTY_FUNCTION__-(.LPIC9+4)
	.word	.LC2-(.LPIC10+4)
	.word	.LC1-(.LPIC11+4)
	.word	_ZZN7SQTable7NewSlotERK11SQObjectPtrS2_E19__PRETTY_FUNCTION__-(.LPIC12+4)
	.fnend
	.size	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_, .-_ZN7SQTable7NewSlotERK11SQObjectPtrS2_
	.section	.text._ZN7SQTable4NextEbRK11SQObjectPtrRS0_S3_,"ax",%progbits
	.align	2
	.global	_ZN7SQTable4NextEbRK11SQObjectPtrRS0_S3_
	.thumb
	.thumb_func
	.type	_ZN7SQTable4NextEbRK11SQObjectPtrRS0_S3_, %function
_ZN7SQTable4NextEbRK11SQObjectPtrRS0_S3_:
	.fnstart
.LFB273:
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #32
	sub	sp, sp, #32
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r2, [r7, #4]
	str	r3, [r7]
	mov	r3, r1
	strb	r3, [r7, #11]
	ldr	r0, [r7, #4]
	bl	_Z14TranslateIndexRK11SQObjectPtr(PLT)
	mov	r3, r0
	str	r3, [r7, #28]
	b	.L179
.L185:
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #32]
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r2, [r3, #8]
	movs	r3, #1
	movt	r3, 256
	cmp	r2, r3
	beq	.L180
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #32]
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	adds	r3, r3, #8
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L181
	ldr	r2, [r7, #24]
	add	r3, r7, #16
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	b	.L182
.L181:
	ldr	r3, [r7, #24]
	ldr	r2, [r3]
	movs	r3, #0
	movt	r3, 2049
	cmp	r2, r3
	beq	.L183
	ldr	r2, [r7, #24]
	add	r3, r7, #16
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	b	.L182
.L183:
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #4]
	add	r3, r7, #16
	adds	r2, r2, #12
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
.L182:
	add	r3, r7, #16
	ldr	r0, [r7, #40]
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERK11tagSQObject(PLT)
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	b	.L184
.L180:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L179:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bgt	.L185
	mov	r3, #-1
.L184:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN7SQTable4NextEbRK11SQObjectPtrRS0_S3_, .-_ZN7SQTable4NextEbRK11SQObjectPtrRS0_S3_
	.section	.text._ZN7SQTable3SetERK11SQObjectPtrS2_,"ax",%progbits
	.align	2
	.global	_ZN7SQTable3SetERK11SQObjectPtrS2_
	.thumb
	.thumb_func
	.type	_ZN7SQTable3SetERK11SQObjectPtrS2_, %function
_ZN7SQTable3SetERK11SQObjectPtrS2_:
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
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r0, [r7, #8]
	bl	_Z7HashObjRK11SQObjectPtr(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #36]
	subs	r3, r3, #1
	ands	r3, r3, r2
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	mov	r2, r3
	bl	_ZN7SQTable4_GetERK11SQObjectPtrj(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L187
	ldr	r3, [r7, #20]
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	movs	r3, #1
	b	.L188
.L187:
	movs	r3, #0
.L188:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN7SQTable3SetERK11SQObjectPtrS2_, .-_ZN7SQTable3SetERK11SQObjectPtrS2_
	.section	.text._ZN7SQTable11_ClearNodesEv,"ax",%progbits
	.align	2
	.global	_ZN7SQTable11_ClearNodesEv
	.thumb
	.thumb_func
	.type	_ZN7SQTable11_ClearNodesEv, %function
_ZN7SQTable11_ClearNodesEv:
	.fnstart
.LFB275:
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
	b	.L190
.L191:
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #32]
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	adds	r3, r3, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
	ldr	r3, [r7, #8]
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L190:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bgt	.L191
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN7SQTable11_ClearNodesEv, .-_ZN7SQTable11_ClearNodesEv
	.section	.text._ZN7SQTable8FinalizeEv,"ax",%progbits
	.align	2
	.global	_ZN7SQTable8FinalizeEv
	.thumb
	.thumb_func
	.type	_ZN7SQTable8FinalizeEv, %function
_ZN7SQTable8FinalizeEv:
	.fnstart
.LFB276:
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
	bl	_ZN7SQTable11_ClearNodesEv(PLT)
	ldr	r3, [r7, #4]
	mov	r0, r3
	movs	r1, #0
	bl	_ZN11SQDelegable11SetDelegateEP7SQTable(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN7SQTable8FinalizeEv, .-_ZN7SQTable8FinalizeEv
	.section	.text._ZN7SQTable5ClearEv,"ax",%progbits
	.align	2
	.global	_ZN7SQTable5ClearEv
	.thumb
	.thumb_func
	.type	_ZN7SQTable5ClearEv, %function
_ZN7SQTable5ClearEv:
	.fnstart
.LFB277:
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
	bl	_ZN7SQTable11_ClearNodesEv(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #40]
	ldr	r0, [r7, #4]
	movs	r1, #1
	bl	_ZN7SQTable6RehashEb(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN7SQTable5ClearEv, .-_ZN7SQTable5ClearEv
	.global	_ZTV7SQTable
	.section	.data.rel.ro._ZTV7SQTable,"aw",%progbits
	.align	3
	.type	_ZTV7SQTable, %object
	.size	_ZTV7SQTable, 36
_ZTV7SQTable:
	.word	0
	.word	_ZTI7SQTable
	.word	_ZN7SQTableD1Ev
	.word	_ZN7SQTableD0Ev
	.word	_ZN7SQTable7ReleaseEv
	.word	_ZN7SQTable7GetTypeEv
	.word	_ZN7SQTable4MarkEPP13SQCollectable
	.word	_ZN7SQTable8FinalizeEv
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
	.global	_ZTI7SQTable
	.section	.data.rel.ro._ZTI7SQTable,"aw",%progbits
	.align	2
	.type	_ZTI7SQTable, %object
	.size	_ZTI7SQTable, 12
_ZTI7SQTable:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTS7SQTable
	.word	_ZTI11SQDelegable
	.global	_ZTS7SQTable
	.section	.rodata._ZTS7SQTable,"a",%progbits
	.align	2
	.type	_ZTS7SQTable, %object
	.size	_ZTS7SQTable, 9
_ZTS7SQTable:
	.ascii	"7SQTable\000"
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
	.section	.rodata._ZZN7SQTable7NewSlotERK11SQObjectPtrS2_E19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN7SQTable7NewSlotERK11SQObjectPtrS2_E19__PRETTY_FUNCTION__, %object
	.size	_ZZN7SQTable7NewSlotERK11SQObjectPtrS2_E19__PRETTY_FUNCTION__, 62
_ZZN7SQTable7NewSlotERK11SQObjectPtrS2_E19__PRETTY_FUNCTION__:
	.ascii	"bool SQTable::NewSlot(const SQObjectPtr&, const SQO"
	.ascii	"bjectPtr&)\000"
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
