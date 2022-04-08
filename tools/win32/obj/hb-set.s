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
	.file	"hb-set.cc"
	.global	__popcountsi2
	.section	.text._ZL14_hb_popcount32j,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL14_hb_popcount32j, %function
_ZL14_hb_popcount32j:
	.fnstart
.LFB6:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	__popcountsi2(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZL14_hb_popcount32j, .-_ZL14_hb_popcount32j
	.section	.text._Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z, %function
_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z:
	.fnstart
.LFB41:
	@ args = 12, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 1
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	strb	r3, [r7, #3]
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z, .-_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z
	.section	.text._ZN10hb_mutex_t4initEv,"axG",%progbits,_ZN10hb_mutex_t4initEv,comdat
	.align	2
	.weak	_ZN10hb_mutex_t4initEv
	.thumb
	.thumb_func
	.type	_ZN10hb_mutex_t4initEv, %function
_ZN10hb_mutex_t4initEv:
	.fnstart
.LFB59:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN10hb_mutex_t4initEv, .-_ZN10hb_mutex_t4initEv
	.section	.text._ZN10hb_mutex_t4lockEv,"axG",%progbits,_ZN10hb_mutex_t4lockEv,comdat
	.align	2
	.weak	_ZN10hb_mutex_t4lockEv
	.thumb
	.thumb_func
	.type	_ZN10hb_mutex_t4lockEv, %function
_ZN10hb_mutex_t4lockEv:
	.fnstart
.LFB60:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN10hb_mutex_t4lockEv, .-_ZN10hb_mutex_t4lockEv
	.section	.text._ZN10hb_mutex_t6unlockEv,"axG",%progbits,_ZN10hb_mutex_t6unlockEv,comdat
	.align	2
	.weak	_ZN10hb_mutex_t6unlockEv
	.thumb
	.thumb_func
	.type	_ZN10hb_mutex_t6unlockEv, %function
_ZN10hb_mutex_t6unlockEv:
	.fnstart
.LFB61:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN10hb_mutex_t6unlockEv, .-_ZN10hb_mutex_t6unlockEv
	.section	.text._ZN10hb_mutex_t6finishEv,"axG",%progbits,_ZN10hb_mutex_t6finishEv,comdat
	.align	2
	.weak	_ZN10hb_mutex_t6finishEv
	.thumb
	.thumb_func
	.type	_ZN10hb_mutex_t6finishEv, %function
_ZN10hb_mutex_t6finishEv:
	.fnstart
.LFB62:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN10hb_mutex_t6finishEv, .-_ZN10hb_mutex_t6finishEv
	.section	.text._ZN20hb_reference_count_t4initEi,"axG",%progbits,_ZN20hb_reference_count_t4initEi,comdat
	.align	2
	.weak	_ZN20hb_reference_count_t4initEi
	.thumb
	.thumb_func
	.type	_ZN20hb_reference_count_t4initEi, %function
_ZN20hb_reference_count_t4initEi:
	.fnstart
.LFB63:
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
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN20hb_reference_count_t4initEi, .-_ZN20hb_reference_count_t4initEi
	.section	.text._ZN20hb_reference_count_t3incEv,"axG",%progbits,_ZN20hb_reference_count_t3incEv,comdat
	.align	2
	.weak	_ZN20hb_reference_count_t3incEv
	.thumb
	.thumb_func
	.type	_ZN20hb_reference_count_t3incEv, %function
_ZN20hb_reference_count_t3incEv:
	.fnstart
.LFB64:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	subs	r3, r3, #1
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN20hb_reference_count_t3incEv, .-_ZN20hb_reference_count_t3incEv
	.section	.text._ZN20hb_reference_count_t3decEv,"axG",%progbits,_ZN20hb_reference_count_t3decEv,comdat
	.align	2
	.weak	_ZN20hb_reference_count_t3decEv
	.thumb
	.thumb_func
	.type	_ZN20hb_reference_count_t3decEv, %function
_ZN20hb_reference_count_t3decEv:
	.fnstart
.LFB65:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	subs	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r3, r3, #1
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN20hb_reference_count_t3decEv, .-_ZN20hb_reference_count_t3decEv
	.section	.text._ZN20hb_reference_count_t6finishEv,"axG",%progbits,_ZN20hb_reference_count_t6finishEv,comdat
	.align	2
	.weak	_ZN20hb_reference_count_t6finishEv
	.thumb
	.thumb_func
	.type	_ZN20hb_reference_count_t6finishEv, %function
_ZN20hb_reference_count_t6finishEv:
	.fnstart
.LFB66:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	mov	r2, #-1
	str	r2, [r3]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN20hb_reference_count_t6finishEv, .-_ZN20hb_reference_count_t6finishEv
	.section	.text._ZNK20hb_reference_count_t10is_invalidEv,"axG",%progbits,_ZNK20hb_reference_count_t10is_invalidEv,comdat
	.align	2
	.weak	_ZNK20hb_reference_count_t10is_invalidEv
	.thumb
	.thumb_func
	.type	_ZNK20hb_reference_count_t10is_invalidEv, %function
_ZNK20hb_reference_count_t10is_invalidEv:
	.fnstart
.LFB67:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #-1
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
	.size	_ZNK20hb_reference_count_t10is_invalidEv, .-_ZNK20hb_reference_count_t10is_invalidEv
	.section	.text._ZN20hb_user_data_array_t19hb_user_data_item_t6finishEv,"axG",%progbits,_ZN20hb_user_data_array_t19hb_user_data_item_t6finishEv,comdat
	.align	2
	.weak	_ZN20hb_user_data_array_t19hb_user_data_item_t6finishEv
	.thumb
	.thumb_func
	.type	_ZN20hb_user_data_array_t19hb_user_data_item_t6finishEv, %function
_ZN20hb_user_data_array_t19hb_user_data_item_t6finishEv:
	.fnstart
.LFB70:
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
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L16
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #4]
	mov	r0, r2
	blx	r3
.L16:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN20hb_user_data_array_t19hb_user_data_item_t6finishEv, .-_ZN20hb_user_data_array_t19hb_user_data_item_t6finishEv
	.section	.text._ZN20hb_user_data_array_t4initEv,"axG",%progbits,_ZN20hb_user_data_array_t4initEv,comdat
	.align	2
	.weak	_ZN20hb_user_data_array_t4initEv
	.thumb
	.thumb_func
	.type	_ZN20hb_user_data_array_t4initEv, %function
_ZN20hb_user_data_array_t4initEv:
	.fnstart
.LFB71:
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
	bl	_ZN10hb_mutex_t4initEv(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4initEv(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN20hb_user_data_array_t4initEv, .-_ZN20hb_user_data_array_t4initEv
	.section	.text._ZN20hb_user_data_array_t6finishEv,"axG",%progbits,_ZN20hb_user_data_array_t6finishEv,comdat
	.align	2
	.weak	_ZN20hb_user_data_array_t6finishEv
	.thumb
	.thumb_func
	.type	_ZN20hb_user_data_array_t6finishEv, %function
_ZN20hb_user_data_array_t6finishEv:
	.fnstart
.LFB72:
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
	adds	r2, r3, #4
	ldr	r3, [r7, #4]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE6finishERS2_(PLT)
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN10hb_mutex_t6finishEv(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN20hb_user_data_array_t6finishEv, .-_ZN20hb_user_data_array_t6finishEv
	.section	.text._ZN8hb_set_t4finiEv,"axG",%progbits,_ZN8hb_set_t4finiEv,comdat
	.align	2
	.weak	_ZN8hb_set_t4finiEv
	.thumb
	.thumb_func
	.type	_ZN8hb_set_t4finiEv, %function
_ZN8hb_set_t4finiEv:
	.fnstart
.LFB95:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN8hb_set_t4finiEv, .-_ZN8hb_set_t4finiEv
	.section	.text._ZN8hb_set_t5clearEv,"axG",%progbits,_ZN8hb_set_t5clearEv,comdat
	.align	2
	.weak	_ZN8hb_set_t5clearEv
	.thumb
	.thumb_func
	.type	_ZN8hb_set_t5clearEv, %function
_ZN8hb_set_t5clearEv:
	.fnstart
.LFB96:
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
	bl	_Z18hb_object_is_inertI8hb_set_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L22
	b	.L21
.L22:
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #44]
	ldr	r3, [r7, #4]
	adds	r3, r3, #48
	mov	r0, r3
	movs	r1, #0
	mov	r2, #8192
	bl	memset(PLT)
.L21:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN8hb_set_t5clearEv, .-_ZN8hb_set_t5clearEv
	.section	.text._ZNK8hb_set_t8is_emptyEv,"axG",%progbits,_ZNK8hb_set_t8is_emptyEv,comdat
	.align	2
	.weak	_ZNK8hb_set_t8is_emptyEv
	.thumb
	.thumb_func
	.type	_ZNK8hb_set_t8is_emptyEv, %function
_ZNK8hb_set_t8is_emptyEv:
	.fnstart
.LFB97:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L25
.L28:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	adds	r2, r2, #12
	ldr	r3, [r3, r2, lsl #2]
	cmp	r3, #0
	beq	.L26
	movs	r3, #0
	b	.L27
.L26:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L25:
	ldr	r3, [r7, #4]
	adds	r3, r3, #48
	mov	r0, r3
	bl	_Z12ARRAY_LENGTHIjLj2048EEjRAT0__KT_(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	cmp	r2, r3
	ite	hi
	movhi	r3, #1
	movls	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L28
	movs	r3, #1
.L27:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZNK8hb_set_t8is_emptyEv, .-_ZNK8hb_set_t8is_emptyEv
	.section	.text._ZN8hb_set_t3addEj,"axG",%progbits,_ZN8hb_set_t3addEj,comdat
	.align	2
	.weak	_ZN8hb_set_t3addEj
	.thumb
	.thumb_func
	.type	_ZN8hb_set_t3addEj, %function
_ZN8hb_set_t3addEj:
	.fnstart
.LFB98:
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
	ldrb	r3, [r3, #44]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L30
	b	.L29
.L30:
	ldr	r3, [r7]
	cmp	r3, #-1
	bne	.L32
	b	.L29
.L32:
	ldr	r3, [r7]
	cmp	r3, #65536
	bcc	.L33
	b	.L29
.L33:
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	_ZNK8hb_set_t4maskEj(PLT)
	mov	r4, r0
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	_ZN8hb_set_t3eltEj(PLT)
	mov	r3, r0
	ldr	r2, [r3]
	orrs	r2, r2, r4
	str	r2, [r3]
.L29:
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZN8hb_set_t3addEj, .-_ZN8hb_set_t3addEj
	.section	.text._ZN8hb_set_t9add_rangeEjj,"axG",%progbits,_ZN8hb_set_t9add_rangeEjj,comdat
	.align	2
	.weak	_ZN8hb_set_t9add_rangeEjj
	.thumb
	.thumb_func
	.type	_ZN8hb_set_t9add_rangeEjj, %function
_ZN8hb_set_t9add_rangeEjj:
	.fnstart
.LFB99:
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
	ldrb	r3, [r3, #44]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L35
	b	.L34
.L35:
	ldr	r3, [r7, #8]
	str	r3, [r7, #20]
	b	.L37
.L38:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #20]
	bl	_ZN8hb_set_t3addEj(PLT)
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L37:
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bhi	.L38
.L34:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN8hb_set_t9add_rangeEjj, .-_ZN8hb_set_t9add_rangeEjj
	.section	.text._ZN8hb_set_t3delEj,"axG",%progbits,_ZN8hb_set_t3delEj,comdat
	.align	2
	.weak	_ZN8hb_set_t3delEj
	.thumb
	.thumb_func
	.type	_ZN8hb_set_t3delEj, %function
_ZN8hb_set_t3delEj:
	.fnstart
.LFB100:
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
	ldrb	r3, [r3, #44]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L40
	b	.L39
.L40:
	ldr	r3, [r7]
	cmp	r3, #65536
	bcc	.L42
	b	.L39
.L42:
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	_ZNK8hb_set_t4maskEj(PLT)
	mov	r3, r0
	mvns	r4, r3
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	_ZN8hb_set_t3eltEj(PLT)
	mov	r3, r0
	ldr	r2, [r3]
	ands	r2, r2, r4
	str	r2, [r3]
.L39:
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZN8hb_set_t3delEj, .-_ZN8hb_set_t3delEj
	.section	.text._ZN8hb_set_t9del_rangeEjj,"axG",%progbits,_ZN8hb_set_t9del_rangeEjj,comdat
	.align	2
	.weak	_ZN8hb_set_t9del_rangeEjj
	.thumb
	.thumb_func
	.type	_ZN8hb_set_t9del_rangeEjj, %function
_ZN8hb_set_t9del_rangeEjj:
	.fnstart
.LFB101:
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
	ldrb	r3, [r3, #44]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L44
	b	.L43
.L44:
	ldr	r3, [r7, #8]
	str	r3, [r7, #20]
	b	.L46
.L47:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #20]
	bl	_ZN8hb_set_t3delEj(PLT)
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L46:
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bhi	.L47
.L43:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN8hb_set_t9del_rangeEjj, .-_ZN8hb_set_t9del_rangeEjj
	.section	.text._ZNK8hb_set_t3hasEj,"axG",%progbits,_ZNK8hb_set_t3hasEj,comdat
	.align	2
	.weak	_ZNK8hb_set_t3hasEj
	.thumb
	.thumb_func
	.type	_ZNK8hb_set_t3hasEj, %function
_ZNK8hb_set_t3hasEj:
	.fnstart
.LFB102:
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
	cmp	r3, #65536
	bcc	.L49
	movs	r3, #0
	b	.L50
.L49:
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	_ZNK8hb_set_t3eltEj(PLT)
	mov	r4, r0
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	_ZNK8hb_set_t4maskEj(PLT)
	mov	r3, r0
	ands	r3, r3, r4
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
.L50:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZNK8hb_set_t3hasEj, .-_ZNK8hb_set_t3hasEj
	.section	.text._ZNK8hb_set_t8is_equalEPKS_,"axG",%progbits,_ZNK8hb_set_t8is_equalEPKS_,comdat
	.align	2
	.weak	_ZNK8hb_set_t8is_equalEPKS_
	.thumb
	.thumb_func
	.type	_ZNK8hb_set_t8is_equalEPKS_, %function
_ZNK8hb_set_t8is_equalEPKS_:
	.fnstart
.LFB104:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L52
.L55:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	adds	r2, r2, #12
	ldr	r2, [r3, r2, lsl #2]
	ldr	r3, [r7]
	ldr	r1, [r7, #12]
	adds	r1, r1, #12
	ldr	r3, [r3, r1, lsl #2]
	cmp	r2, r3
	beq	.L53
	movs	r3, #0
	b	.L54
.L53:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L52:
	ldr	r3, [r7, #12]
	cmp	r3, #2048
	bcc	.L55
	movs	r3, #1
.L54:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNK8hb_set_t8is_equalEPKS_, .-_ZNK8hb_set_t8is_equalEPKS_
	.section	.text._ZN8hb_set_t3setEPKS_,"axG",%progbits,_ZN8hb_set_t3setEPKS_,comdat
	.align	2
	.weak	_ZN8hb_set_t3setEPKS_
	.thumb
	.thumb_func
	.type	_ZN8hb_set_t3setEPKS_, %function
_ZN8hb_set_t3setEPKS_:
	.fnstart
.LFB105:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #44]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L57
	b	.L56
.L57:
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L59
.L60:
	ldr	r3, [r7]
	ldr	r2, [r7, #12]
	adds	r2, r2, #12
	ldr	r1, [r3, r2, lsl #2]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	adds	r2, r2, #12
	str	r1, [r3, r2, lsl #2]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L59:
	ldr	r3, [r7, #12]
	cmp	r3, #2048
	bcc	.L60
.L56:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN8hb_set_t3setEPKS_, .-_ZN8hb_set_t3setEPKS_
	.section	.text._ZN8hb_set_t6union_EPKS_,"axG",%progbits,_ZN8hb_set_t6union_EPKS_,comdat
	.align	2
	.weak	_ZN8hb_set_t6union_EPKS_
	.thumb
	.thumb_func
	.type	_ZN8hb_set_t6union_EPKS_, %function
_ZN8hb_set_t6union_EPKS_:
	.fnstart
.LFB106:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #44]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L62
	b	.L61
.L62:
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L64
.L65:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	adds	r2, r2, #12
	ldr	r2, [r3, r2, lsl #2]
	ldr	r3, [r7]
	ldr	r1, [r7, #12]
	adds	r1, r1, #12
	ldr	r3, [r3, r1, lsl #2]
	orr	r1, r2, r3
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	adds	r2, r2, #12
	str	r1, [r3, r2, lsl #2]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L64:
	ldr	r3, [r7, #12]
	cmp	r3, #2048
	bcc	.L65
.L61:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN8hb_set_t6union_EPKS_, .-_ZN8hb_set_t6union_EPKS_
	.section	.text._ZN8hb_set_t9intersectEPKS_,"axG",%progbits,_ZN8hb_set_t9intersectEPKS_,comdat
	.align	2
	.weak	_ZN8hb_set_t9intersectEPKS_
	.thumb
	.thumb_func
	.type	_ZN8hb_set_t9intersectEPKS_, %function
_ZN8hb_set_t9intersectEPKS_:
	.fnstart
.LFB107:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #44]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L67
	b	.L66
.L67:
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L69
.L70:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	adds	r2, r2, #12
	ldr	r2, [r3, r2, lsl #2]
	ldr	r3, [r7]
	ldr	r1, [r7, #12]
	adds	r1, r1, #12
	ldr	r3, [r3, r1, lsl #2]
	and	r1, r2, r3
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	adds	r2, r2, #12
	str	r1, [r3, r2, lsl #2]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L69:
	ldr	r3, [r7, #12]
	cmp	r3, #2048
	bcc	.L70
.L66:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN8hb_set_t9intersectEPKS_, .-_ZN8hb_set_t9intersectEPKS_
	.section	.text._ZN8hb_set_t8subtractEPKS_,"axG",%progbits,_ZN8hb_set_t8subtractEPKS_,comdat
	.align	2
	.weak	_ZN8hb_set_t8subtractEPKS_
	.thumb
	.thumb_func
	.type	_ZN8hb_set_t8subtractEPKS_, %function
_ZN8hb_set_t8subtractEPKS_:
	.fnstart
.LFB108:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #44]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L72
	b	.L71
.L72:
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L74
.L75:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	adds	r2, r2, #12
	ldr	r2, [r3, r2, lsl #2]
	ldr	r3, [r7]
	ldr	r1, [r7, #12]
	adds	r1, r1, #12
	ldr	r3, [r3, r1, lsl #2]
	mvns	r3, r3
	and	r1, r2, r3
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	adds	r2, r2, #12
	str	r1, [r3, r2, lsl #2]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L74:
	ldr	r3, [r7, #12]
	cmp	r3, #2048
	bcc	.L75
.L71:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN8hb_set_t8subtractEPKS_, .-_ZN8hb_set_t8subtractEPKS_
	.section	.text._ZN8hb_set_t20symmetric_differenceEPKS_,"axG",%progbits,_ZN8hb_set_t20symmetric_differenceEPKS_,comdat
	.align	2
	.weak	_ZN8hb_set_t20symmetric_differenceEPKS_
	.thumb
	.thumb_func
	.type	_ZN8hb_set_t20symmetric_differenceEPKS_, %function
_ZN8hb_set_t20symmetric_differenceEPKS_:
	.fnstart
.LFB109:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #44]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L77
	b	.L76
.L77:
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L79
.L80:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	adds	r2, r2, #12
	ldr	r2, [r3, r2, lsl #2]
	ldr	r3, [r7]
	ldr	r1, [r7, #12]
	adds	r1, r1, #12
	ldr	r3, [r3, r1, lsl #2]
	eor	r1, r2, r3
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	adds	r2, r2, #12
	str	r1, [r3, r2, lsl #2]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L79:
	ldr	r3, [r7, #12]
	cmp	r3, #2048
	bcc	.L80
.L76:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN8hb_set_t20symmetric_differenceEPKS_, .-_ZN8hb_set_t20symmetric_differenceEPKS_
	.section	.text._ZN8hb_set_t6invertEv,"axG",%progbits,_ZN8hb_set_t6invertEv,comdat
	.align	2
	.weak	_ZN8hb_set_t6invertEv
	.thumb
	.thumb_func
	.type	_ZN8hb_set_t6invertEv, %function
_ZN8hb_set_t6invertEv:
	.fnstart
.LFB110:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #44]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L82
	b	.L81
.L82:
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L84
.L85:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	adds	r2, r2, #12
	ldr	r3, [r3, r2, lsl #2]
	mvns	r1, r3
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	adds	r2, r2, #12
	str	r1, [r3, r2, lsl #2]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L84:
	ldr	r3, [r7, #12]
	cmp	r3, #2048
	bcc	.L85
.L81:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN8hb_set_t6invertEv, .-_ZN8hb_set_t6invertEv
	.section	.text._ZNK8hb_set_t4nextEPj,"axG",%progbits,_ZNK8hb_set_t4nextEPj,comdat
	.align	2
	.weak	_ZNK8hb_set_t4nextEPj
	.thumb
	.thumb_func
	.type	_ZNK8hb_set_t4nextEPj, %function
_ZNK8hb_set_t4nextEPj:
	.fnstart
.LFB111:
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
	ldr	r3, [r3]
	cmp	r3, #-1
	bne	.L87
	ldr	r0, [r7, #4]
	bl	_ZNK8hb_set_t7get_minEv(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #-1
	beq	.L88
	ldr	r3, [r7]
	ldr	r2, [r7, #8]
	str	r2, [r3]
	movs	r3, #1
	b	.L89
.L88:
	ldr	r3, [r7]
	mov	r2, #-1
	str	r2, [r3]
	movs	r3, #0
	b	.L89
.L87:
	ldr	r3, [r7]
	ldr	r3, [r3]
	adds	r3, r3, #1
	str	r3, [r7, #12]
	b	.L90
.L92:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #12]
	bl	_ZNK8hb_set_t3hasEj(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L91
	ldr	r3, [r7]
	ldr	r2, [r7, #12]
	str	r2, [r3]
	movs	r3, #1
	b	.L89
.L91:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L90:
	ldr	r3, [r7, #12]
	cmp	r3, #65536
	bcc	.L92
	ldr	r3, [r7]
	mov	r2, #-1
	str	r2, [r3]
	movs	r3, #0
.L89:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK8hb_set_t4nextEPj, .-_ZNK8hb_set_t4nextEPj
	.section	.text._ZNK8hb_set_t10next_rangeEPjS0_,"axG",%progbits,_ZNK8hb_set_t10next_rangeEPjS0_,comdat
	.align	2
	.weak	_ZNK8hb_set_t10next_rangeEPjS0_
	.thumb
	.thumb_func
	.type	_ZNK8hb_set_t10next_rangeEPjS0_, %function
_ZNK8hb_set_t10next_rangeEPjS0_:
	.fnstart
.LFB112:
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
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZNK8hb_set_t4nextEPj(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L94
	ldr	r3, [r7, #8]
	mov	r2, #-1
	str	r2, [r3]
	ldr	r3, [r7, #8]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	movs	r3, #0
	b	.L100
.L94:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #8]
	str	r2, [r3]
	ldr	r3, [r7, #8]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	b	.L96
.L99:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3]
.L96:
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZNK8hb_set_t4nextEPj(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L97
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r2, r3, #1
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bne	.L97
	movs	r3, #1
	b	.L98
.L97:
	movs	r3, #0
.L98:
	cmp	r3, #0
	bne	.L99
	movs	r3, #1
.L100:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK8hb_set_t10next_rangeEPjS0_, .-_ZNK8hb_set_t10next_rangeEPjS0_
	.section	.text._ZNK8hb_set_t14get_populationEv,"axG",%progbits,_ZNK8hb_set_t14get_populationEv,comdat
	.align	2
	.weak	_ZNK8hb_set_t14get_populationEv
	.thumb
	.thumb_func
	.type	_ZNK8hb_set_t14get_populationEv, %function
_ZNK8hb_set_t14get_populationEv:
	.fnstart
.LFB113:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #8]
	b	.L102
.L103:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #8]
	adds	r2, r2, #12
	ldr	r3, [r3, r2, lsl #2]
	mov	r0, r3
	bl	_ZL14_hb_popcount32j(PLT)
	mov	r3, r0
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L102:
	ldr	r3, [r7, #8]
	cmp	r3, #2048
	bcc	.L103
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZNK8hb_set_t14get_populationEv, .-_ZNK8hb_set_t14get_populationEv
	.section	.text._ZNK8hb_set_t7get_minEv,"axG",%progbits,_ZNK8hb_set_t7get_minEv,comdat
	.align	2
	.weak	_ZNK8hb_set_t7get_minEv
	.thumb
	.thumb_func
	.type	_ZNK8hb_set_t7get_minEv, %function
_ZNK8hb_set_t7get_minEv:
	.fnstart
.LFB114:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L106
.L112:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	adds	r2, r2, #12
	ldr	r3, [r3, r2, lsl #2]
	cmp	r3, #0
	beq	.L107
	movs	r3, #0
	str	r3, [r7, #8]
	b	.L108
.L111:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	adds	r2, r2, #12
	ldr	r2, [r3, r2, lsl #2]
	ldr	r3, [r7, #8]
	movs	r1, #1
	lsl	r3, r1, r3
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L109
	ldr	r3, [r7, #12]
	lsls	r2, r3, #5
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	b	.L110
.L109:
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L108:
	ldr	r3, [r7, #8]
	cmp	r3, #31
	bls	.L111
.L107:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L106:
	ldr	r3, [r7, #12]
	cmp	r3, #2048
	bcc	.L112
	mov	r3, #-1
.L110:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNK8hb_set_t7get_minEv, .-_ZNK8hb_set_t7get_minEv
	.section	.text._ZNK8hb_set_t7get_maxEv,"axG",%progbits,_ZNK8hb_set_t7get_maxEv,comdat
	.align	2
	.weak	_ZNK8hb_set_t7get_maxEv
	.thumb
	.thumb_func
	.type	_ZNK8hb_set_t7get_maxEv, %function
_ZNK8hb_set_t7get_maxEv:
	.fnstart
.LFB115:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, #2048
	str	r3, [r7, #12]
	b	.L114
.L120:
	ldr	r3, [r7, #12]
	subs	r2, r3, #1
	ldr	r3, [r7, #4]
	adds	r2, r2, #12
	ldr	r3, [r3, r2, lsl #2]
	cmp	r3, #0
	beq	.L115
	movs	r3, #32
	str	r3, [r7, #8]
	b	.L116
.L119:
	ldr	r3, [r7, #12]
	subs	r2, r3, #1
	ldr	r3, [r7, #4]
	adds	r2, r2, #12
	ldr	r2, [r3, r2, lsl #2]
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	movs	r1, #1
	lsl	r3, r1, r3
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L117
	ldr	r3, [r7, #12]
	add	r3, r3, #134217728
	subs	r3, r3, #1
	lsls	r2, r3, #5
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	subs	r3, r3, #1
	b	.L118
.L117:
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	str	r3, [r7, #8]
.L116:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L119
.L115:
	ldr	r3, [r7, #12]
	subs	r3, r3, #1
	str	r3, [r7, #12]
.L114:
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L120
	mov	r3, #-1
.L118:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNK8hb_set_t7get_maxEv, .-_ZNK8hb_set_t7get_maxEv
	.section	.text._ZN8hb_set_t3eltEj,"axG",%progbits,_ZN8hb_set_t3eltEj,comdat
	.align	2
	.weak	_ZN8hb_set_t3eltEj
	.thumb
	.thumb_func
	.type	_ZN8hb_set_t3eltEj, %function
_ZN8hb_set_t3eltEj:
	.fnstart
.LFB116:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	lsrs	r3, r3, #5
	adds	r3, r3, #12
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN8hb_set_t3eltEj, .-_ZN8hb_set_t3eltEj
	.section	.text._ZNK8hb_set_t3eltEj,"axG",%progbits,_ZNK8hb_set_t3eltEj,comdat
	.align	2
	.weak	_ZNK8hb_set_t3eltEj
	.thumb
	.thumb_func
	.type	_ZNK8hb_set_t3eltEj, %function
_ZNK8hb_set_t3eltEj:
	.fnstart
.LFB117:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	lsrs	r2, r3, #5
	ldr	r3, [r7, #4]
	adds	r2, r2, #12
	ldr	r3, [r3, r2, lsl #2]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNK8hb_set_t3eltEj, .-_ZNK8hb_set_t3eltEj
	.section	.text._ZNK8hb_set_t4maskEj,"axG",%progbits,_ZNK8hb_set_t4maskEj,comdat
	.align	2
	.weak	_ZNK8hb_set_t4maskEj
	.thumb
	.thumb_func
	.type	_ZNK8hb_set_t4maskEj, %function
_ZNK8hb_set_t4maskEj:
	.fnstart
.LFB118:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	and	r3, r3, #31
	movs	r2, #1
	lsl	r3, r2, r3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNK8hb_set_t4maskEj, .-_ZNK8hb_set_t4maskEj
	.section	.text.hb_set_create,"ax",%progbits
	.align	2
	.global	hb_set_create
	.thumb
	.thumb_func
	.type	hb_set_create, %function
hb_set_create:
	.fnstart
.LFB119:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	bl	_Z16hb_object_createI8hb_set_tEPT_v(PLT)
	mov	r3, r0
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L128
	bl	hb_set_get_empty(PLT)
	mov	r3, r0
	b	.L129
.L128:
	ldr	r0, [r7, #4]
	bl	_ZN8hb_set_t5clearEv(PLT)
	ldr	r3, [r7, #4]
.L129:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_set_create, .-hb_set_create
	.section	.text.hb_set_get_empty,"ax",%progbits
	.align	2
	.global	hb_set_get_empty
	.thumb
	.thumb_func
	.type	hb_set_get_empty, %function
hb_set_get_empty:
	.fnstart
.LFB120:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L132
.LPIC0:
	add	r3, pc
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L133:
	.align	2
.L132:
	.word	_ZZ16hb_set_get_emptyE11_hb_set_nil-(.LPIC0+4)
	.cantunwind
	.fnend
	.size	hb_set_get_empty, .-hb_set_get_empty
	.section	.text.hb_set_reference,"ax",%progbits
	.align	2
	.global	hb_set_reference
	.thumb
	.thumb_func
	.type	hb_set_reference, %function
hb_set_reference:
	.fnstart
.LFB121:
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
	bl	_Z19hb_object_referenceI8hb_set_tEPT_S2_(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_set_reference, .-hb_set_reference
	.section	.text.hb_set_destroy,"ax",%progbits
	.align	2
	.global	hb_set_destroy
	.thumb
	.thumb_func
	.type	hb_set_destroy, %function
hb_set_destroy:
	.fnstart
.LFB122:
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
	bl	_Z17hb_object_destroyI8hb_set_tEbPT_(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L137
	b	.L136
.L137:
	ldr	r0, [r7, #4]
	bl	_ZN8hb_set_t4finiEv(PLT)
	ldr	r0, [r7, #4]
	bl	free(PLT)
.L136:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_set_destroy, .-hb_set_destroy
	.section	.text.hb_set_set_user_data,"ax",%progbits
	.align	2
	.global	hb_set_set_user_data
	.thumb
	.thumb_func
	.type	hb_set_set_user_data, %function
hb_set_set_user_data:
	.fnstart
.LFB123:
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
	ldr	r3, [r7, #24]
	str	r3, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	_Z23hb_object_set_user_dataI8hb_set_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_set_set_user_data, .-hb_set_set_user_data
	.section	.text.hb_set_get_user_data,"ax",%progbits
	.align	2
	.global	hb_set_get_user_data
	.thumb
	.thumb_func
	.type	hb_set_get_user_data, %function
hb_set_get_user_data:
	.fnstart
.LFB124:
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
	bl	_Z23hb_object_get_user_dataI8hb_set_tEPvPT_P18hb_user_data_key_t(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_set_get_user_data, .-hb_set_get_user_data
	.section	.text.hb_set_allocation_successful,"ax",%progbits
	.align	2
	.global	hb_set_allocation_successful
	.thumb
	.thumb_func
	.type	hb_set_allocation_successful, %function
hb_set_allocation_successful:
	.fnstart
.LFB125:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #44]	@ zero_extendqisi2
	eor	r3, r3, #1
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	hb_set_allocation_successful, .-hb_set_allocation_successful
	.section	.text.hb_set_clear,"ax",%progbits
	.align	2
	.global	hb_set_clear
	.thumb
	.thumb_func
	.type	hb_set_clear, %function
hb_set_clear:
	.fnstart
.LFB126:
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
	bl	_ZN8hb_set_t5clearEv(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_set_clear, .-hb_set_clear
	.section	.text.hb_set_is_empty,"ax",%progbits
	.align	2
	.global	hb_set_is_empty
	.thumb
	.thumb_func
	.type	hb_set_is_empty, %function
hb_set_is_empty:
	.fnstart
.LFB127:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	_ZNK8hb_set_t8is_emptyEv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	hb_set_is_empty, .-hb_set_is_empty
	.section	.text.hb_set_has,"ax",%progbits
	.align	2
	.global	hb_set_has
	.thumb
	.thumb_func
	.type	hb_set_has, %function
hb_set_has:
	.fnstart
.LFB128:
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
	bl	_ZNK8hb_set_t3hasEj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_set_has, .-hb_set_has
	.section	.text.hb_set_add,"ax",%progbits
	.align	2
	.global	hb_set_add
	.thumb
	.thumb_func
	.type	hb_set_add, %function
hb_set_add:
	.fnstart
.LFB129:
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
	bl	_ZN8hb_set_t3addEj(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_set_add, .-hb_set_add
	.section	.text.hb_set_add_range,"ax",%progbits
	.align	2
	.global	hb_set_add_range
	.thumb
	.thumb_func
	.type	hb_set_add_range, %function
hb_set_add_range:
	.fnstart
.LFB130:
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
	bl	_ZN8hb_set_t9add_rangeEjj(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_set_add_range, .-hb_set_add_range
	.section	.text.hb_set_del,"ax",%progbits
	.align	2
	.global	hb_set_del
	.thumb
	.thumb_func
	.type	hb_set_del, %function
hb_set_del:
	.fnstart
.LFB131:
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
	bl	_ZN8hb_set_t3delEj(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_set_del, .-hb_set_del
	.section	.text.hb_set_del_range,"ax",%progbits
	.align	2
	.global	hb_set_del_range
	.thumb
	.thumb_func
	.type	hb_set_del_range, %function
hb_set_del_range:
	.fnstart
.LFB132:
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
	bl	_ZN8hb_set_t9del_rangeEjj(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_set_del_range, .-hb_set_del_range
	.section	.text.hb_set_is_equal,"ax",%progbits
	.align	2
	.global	hb_set_is_equal
	.thumb
	.thumb_func
	.type	hb_set_is_equal, %function
hb_set_is_equal:
	.fnstart
.LFB133:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	_ZNK8hb_set_t8is_equalEPKS_(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	hb_set_is_equal, .-hb_set_is_equal
	.section	.text.hb_set_set,"ax",%progbits
	.align	2
	.global	hb_set_set
	.thumb
	.thumb_func
	.type	hb_set_set, %function
hb_set_set:
	.fnstart
.LFB134:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	_ZN8hb_set_t3setEPKS_(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	hb_set_set, .-hb_set_set
	.section	.text.hb_set_union,"ax",%progbits
	.align	2
	.global	hb_set_union
	.thumb
	.thumb_func
	.type	hb_set_union, %function
hb_set_union:
	.fnstart
.LFB135:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	_ZN8hb_set_t6union_EPKS_(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	hb_set_union, .-hb_set_union
	.section	.text.hb_set_intersect,"ax",%progbits
	.align	2
	.global	hb_set_intersect
	.thumb
	.thumb_func
	.type	hb_set_intersect, %function
hb_set_intersect:
	.fnstart
.LFB136:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	_ZN8hb_set_t9intersectEPKS_(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	hb_set_intersect, .-hb_set_intersect
	.section	.text.hb_set_subtract,"ax",%progbits
	.align	2
	.global	hb_set_subtract
	.thumb
	.thumb_func
	.type	hb_set_subtract, %function
hb_set_subtract:
	.fnstart
.LFB137:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	_ZN8hb_set_t8subtractEPKS_(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	hb_set_subtract, .-hb_set_subtract
	.section	.text.hb_set_symmetric_difference,"ax",%progbits
	.align	2
	.global	hb_set_symmetric_difference
	.thumb
	.thumb_func
	.type	hb_set_symmetric_difference, %function
hb_set_symmetric_difference:
	.fnstart
.LFB138:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	_ZN8hb_set_t20symmetric_differenceEPKS_(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	hb_set_symmetric_difference, .-hb_set_symmetric_difference
	.section	.text.hb_set_invert,"ax",%progbits
	.align	2
	.global	hb_set_invert
	.thumb
	.thumb_func
	.type	hb_set_invert, %function
hb_set_invert:
	.fnstart
.LFB139:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	_ZN8hb_set_t6invertEv(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	hb_set_invert, .-hb_set_invert
	.section	.text.hb_set_get_population,"ax",%progbits
	.align	2
	.global	hb_set_get_population
	.thumb
	.thumb_func
	.type	hb_set_get_population, %function
hb_set_get_population:
	.fnstart
.LFB140:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	_ZNK8hb_set_t14get_populationEv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	hb_set_get_population, .-hb_set_get_population
	.section	.text.hb_set_get_min,"ax",%progbits
	.align	2
	.global	hb_set_get_min
	.thumb
	.thumb_func
	.type	hb_set_get_min, %function
hb_set_get_min:
	.fnstart
.LFB141:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	_ZNK8hb_set_t7get_minEv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	hb_set_get_min, .-hb_set_get_min
	.section	.text.hb_set_get_max,"ax",%progbits
	.align	2
	.global	hb_set_get_max
	.thumb
	.thumb_func
	.type	hb_set_get_max, %function
hb_set_get_max:
	.fnstart
.LFB142:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	_ZNK8hb_set_t7get_maxEv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	hb_set_get_max, .-hb_set_get_max
	.section	.text.hb_set_next,"ax",%progbits
	.align	2
	.global	hb_set_next
	.thumb
	.thumb_func
	.type	hb_set_next, %function
hb_set_next:
	.fnstart
.LFB143:
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
	bl	_ZNK8hb_set_t4nextEPj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_set_next, .-hb_set_next
	.section	.text.hb_set_next_range,"ax",%progbits
	.align	2
	.global	hb_set_next_range
	.thumb
	.thumb_func
	.type	hb_set_next_range, %function
hb_set_next_range:
	.fnstart
.LFB144:
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
	bl	_ZNK8hb_set_t10next_rangeEPjS0_(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_set_next_range, .-hb_set_next_range
	.section	.text._ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4initEv,"axG",%progbits,_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4initEv,comdat
	.align	2
	.weak	_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4initEv
	.thumb
	.thumb_func
	.type	_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4initEv, %function
_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4initEv:
	.fnstart
.LFB147:
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
	bl	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4initEv(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4initEv, .-_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4initEv
	.section	.text._ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE6finishERS2_,"axG",%progbits,_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE6finishERS2_,comdat
	.align	2
	.weak	_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE6finishERS2_
	.thumb
	.thumb_func
	.type	_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE6finishERS2_, %function
_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE6finishERS2_:
	.fnstart
.LFB148:
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
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L174
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE6finishEv(PLT)
	b	.L173
.L174:
	ldr	r0, [r7]
	bl	_ZN10hb_mutex_t4lockEv(PLT)
	b	.L176
.L177:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	subs	r3, r3, #1
	mov	r0, r2
	mov	r1, r3
	bl	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EEixEj(PLT)
	mov	r2, r0
	add	r3, r7, #12
	ldmia	r2, {r0, r1, r2}
	stmia	r3, {r0, r1, r2}
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE3popEv(PLT)
	ldr	r0, [r7]
	bl	_ZN10hb_mutex_t6unlockEv(PLT)
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN20hb_user_data_array_t19hb_user_data_item_t6finishEv(PLT)
	ldr	r0, [r7]
	bl	_ZN10hb_mutex_t4lockEv(PLT)
.L176:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L177
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE6finishEv(PLT)
	ldr	r0, [r7]
	bl	_ZN10hb_mutex_t6unlockEv(PLT)
.L173:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE6finishERS2_, .-_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE6finishERS2_
	.section	.text._Z14hb_object_initI8hb_set_tEvPT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z14hb_object_initI8hb_set_tEvPT_, %function
_Z14hb_object_initI8hb_set_tEvPT_:
	.fnstart
.LFB149:
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
	movs	r1, #1
	bl	_ZN20hb_reference_count_t4initEi(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZN20hb_user_data_array_t4initEv(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_Z14hb_object_initI8hb_set_tEvPT_, .-_Z14hb_object_initI8hb_set_tEvPT_
	.section	.text._Z18hb_object_is_inertI8hb_set_tEbPKT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z18hb_object_is_inertI8hb_set_tEbPKT_, %function
_Z18hb_object_is_inertI8hb_set_tEbPKT_:
	.fnstart
.LFB150:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZNK20hb_reference_count_t10is_invalidEv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_Z18hb_object_is_inertI8hb_set_tEbPKT_, .-_Z18hb_object_is_inertI8hb_set_tEbPKT_
	.section	.text._Z12ARRAY_LENGTHIjLj2048EEjRAT0__KT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z12ARRAY_LENGTHIjLj2048EEjRAT0__KT_, %function
_Z12ARRAY_LENGTHIjLj2048EEjRAT0__KT_:
	.fnstart
.LFB151:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, #2048
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_Z12ARRAY_LENGTHIjLj2048EEjRAT0__KT_, .-_Z12ARRAY_LENGTHIjLj2048EEjRAT0__KT_
	.section	.text._Z16hb_object_createI8hb_set_tEPT_v,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z16hb_object_createI8hb_set_tEPT_v, %function
_Z16hb_object_createI8hb_set_tEPT_v:
	.fnstart
.LFB152:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	movs	r0, #1
	movw	r1, #8240
	bl	calloc(PLT)
	mov	r3, r0
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L184
	ldr	r3, [r7, #4]
	b	.L185
.L184:
	ldr	r0, [r7, #4]
	bl	_Z14hb_object_initI8hb_set_tEvPT_(PLT)
	ldr	r0, [r7, #4]
	ldr	r3, .L186
.LPIC1:
	add	r3, pc
	mov	r1, r3
	bl	_Z15hb_object_traceI8hb_set_tEvPKT_PKc(PLT)
	ldr	r3, [r7, #4]
.L185:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L187:
	.align	2
.L186:
	.word	_ZZ16hb_object_createI8hb_set_tEPT_vE19__PRETTY_FUNCTION__-(.LPIC1+4)
	.fnend
	.size	_Z16hb_object_createI8hb_set_tEPT_v, .-_Z16hb_object_createI8hb_set_tEPT_v
	.section	.text._Z19hb_object_referenceI8hb_set_tEPT_S2_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z19hb_object_referenceI8hb_set_tEPT_S2_, %function
_Z19hb_object_referenceI8hb_set_tEPT_S2_:
	.fnstart
.LFB153:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	ldr	r3, .L194
.LPIC2:
	add	r3, pc
	mov	r1, r3
	bl	_Z15hb_object_traceI8hb_set_tEvPKT_PKc(PLT)
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L189
	ldr	r0, [r7, #4]
	bl	_Z18hb_object_is_inertI8hb_set_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L190
.L189:
	movs	r3, #1
	b	.L191
.L190:
	movs	r3, #0
.L191:
	cmp	r3, #0
	beq	.L192
	ldr	r3, [r7, #4]
	b	.L193
.L192:
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN20hb_reference_count_t3incEv(PLT)
	ldr	r3, [r7, #4]
.L193:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L195:
	.align	2
.L194:
	.word	_ZZ19hb_object_referenceI8hb_set_tEPT_S2_E19__PRETTY_FUNCTION__-(.LPIC2+4)
	.cantunwind
	.fnend
	.size	_Z19hb_object_referenceI8hb_set_tEPT_S2_, .-_Z19hb_object_referenceI8hb_set_tEPT_S2_
	.section	.text._Z17hb_object_destroyI8hb_set_tEbPT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z17hb_object_destroyI8hb_set_tEbPT_, %function
_Z17hb_object_destroyI8hb_set_tEbPT_:
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
	ldr	r0, [r7, #4]
	ldr	r3, .L203
.LPIC3:
	add	r3, pc
	mov	r1, r3
	bl	_Z15hb_object_traceI8hb_set_tEvPKT_PKc(PLT)
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L197
	ldr	r0, [r7, #4]
	bl	_Z18hb_object_is_inertI8hb_set_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L198
.L197:
	movs	r3, #1
	b	.L199
.L198:
	movs	r3, #0
.L199:
	cmp	r3, #0
	beq	.L200
	movs	r3, #0
	b	.L201
.L200:
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN20hb_reference_count_t3decEv(PLT)
	mov	r3, r0
	cmp	r3, #1
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L202
	movs	r3, #0
	b	.L201
.L202:
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN20hb_reference_count_t6finishEv(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZN20hb_user_data_array_t6finishEv(PLT)
	movs	r3, #1
.L201:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L204:
	.align	2
.L203:
	.word	_ZZ17hb_object_destroyI8hb_set_tEbPT_E19__PRETTY_FUNCTION__-(.LPIC3+4)
	.fnend
	.size	_Z17hb_object_destroyI8hb_set_tEbPT_, .-_Z17hb_object_destroyI8hb_set_tEbPT_
	.section	.text._Z23hb_object_set_user_dataI8hb_set_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z23hb_object_set_user_dataI8hb_set_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei, %function
_Z23hb_object_set_user_dataI8hb_set_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei:
	.fnstart
.LFB155:
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
	cmp	r3, #0
	beq	.L206
	ldr	r0, [r7, #12]
	bl	_Z18hb_object_is_inertI8hb_set_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L207
.L206:
	movs	r3, #1
	b	.L208
.L207:
	movs	r3, #0
.L208:
	cmp	r3, #0
	beq	.L209
	movs	r3, #0
	b	.L210
.L209:
	ldr	r3, [r7, #12]
	adds	r3, r3, #4
	ldr	r2, [r7, #24]
	str	r2, [sp]
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	_ZN20hb_user_data_array_t3setEP18hb_user_data_key_tPvPFvS2_Ei(PLT)
	mov	r3, r0
.L210:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_Z23hb_object_set_user_dataI8hb_set_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei, .-_Z23hb_object_set_user_dataI8hb_set_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei
	.section	.text._Z23hb_object_get_user_dataI8hb_set_tEPvPT_P18hb_user_data_key_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z23hb_object_get_user_dataI8hb_set_tEPvPT_P18hb_user_data_key_t, %function
_Z23hb_object_get_user_dataI8hb_set_tEPvPT_P18hb_user_data_key_t:
	.fnstart
.LFB156:
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
	cmp	r3, #0
	beq	.L212
	ldr	r0, [r7, #4]
	bl	_Z18hb_object_is_inertI8hb_set_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L213
.L212:
	movs	r3, #1
	b	.L214
.L213:
	movs	r3, #0
.L214:
	cmp	r3, #0
	beq	.L215
	movs	r3, #0
	b	.L216
.L215:
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN20hb_user_data_array_t3getEP18hb_user_data_key_t(PLT)
	mov	r3, r0
.L216:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_Z23hb_object_get_user_dataI8hb_set_tEPvPT_P18hb_user_data_key_t, .-_Z23hb_object_get_user_dataI8hb_set_tEPvPT_P18hb_user_data_key_t
	.section	.text._ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4initEv,"axG",%progbits,_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4initEv,comdat
	.align	2
	.weak	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4initEv
	.thumb
	.thumb_func
	.type	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4initEv, %function
_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4initEv:
	.fnstart
.LFB157:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	movs	r1, #0
	movs	r2, #36
	bl	memset(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4initEv, .-_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4initEv
	.section	.text._ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE6finishEv,"axG",%progbits,_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE6finishEv,comdat
	.align	2
	.weak	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE6finishEv
	.thumb
	.thumb_func
	.type	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE6finishEv, %function
_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE6finishEv:
	.fnstart
.LFB158:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	cmp	r2, r3
	beq	.L219
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r0, r3
	bl	free(PLT)
.L219:
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE6finishEv, .-_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE6finishEv
	.section	.text._ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EEixEj,"axG",%progbits,_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EEixEj,comdat
	.align	2
	.weak	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EEixEj
	.thumb
	.thumb_func
	.type	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EEixEj, %function
_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EEixEj:
	.fnstart
.LFB159:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #8]
	ldr	r2, [r7]
	mov	r3, r2
	lsls	r3, r3, #1
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
	.size	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EEixEj, .-_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EEixEj
	.section	.text._ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE3popEv,"axG",%progbits,_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE3popEv,comdat
	.align	2
	.weak	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE3popEv
	.thumb
	.thumb_func
	.type	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE3popEv, %function
_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE3popEv:
	.fnstart
.LFB160:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	subs	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE3popEv, .-_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE3popEv
	.section	.rodata
	.align	2
.LC0:
	.ascii	"OBJECT\000"
	.align	2
.LC1:
	.ascii	"%s refcount=%d\000"
	.section	.text._Z15hb_object_traceI8hb_set_tEvPKT_PKc,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z15hb_object_traceI8hb_set_tEvPKT_PKc, %function
_Z15hb_object_traceI8hb_set_tEvPKT_PKc:
	.fnstart
.LFB161:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #24
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L224
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	b	.L225
.L224:
	movs	r3, #0
.L225:
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	ldr	r2, .L226
.LPIC4:
	add	r2, pc
	str	r2, [sp, #8]
	ldr	r2, [r7]
	str	r2, [sp, #12]
	str	r3, [sp, #16]
	ldr	r3, .L226+4
.LPIC5:
	add	r3, pc
	mov	r0, r3
	ldr	r1, [r7, #4]
	movs	r2, #0
	movs	r3, #0
	bl	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L227:
	.align	2
.L226:
	.word	.LC1-(.LPIC4+4)
	.word	.LC0-(.LPIC5+4)
	.cantunwind
	.fnend
	.size	_Z15hb_object_traceI8hb_set_tEvPKT_PKc, .-_Z15hb_object_traceI8hb_set_tEvPKT_PKc
	.section	.rodata._ZZ16hb_object_createI8hb_set_tEPT_vE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZ16hb_object_createI8hb_set_tEPT_vE19__PRETTY_FUNCTION__, %object
	.size	_ZZ16hb_object_createI8hb_set_tEPT_vE19__PRETTY_FUNCTION__, 48
_ZZ16hb_object_createI8hb_set_tEPT_vE19__PRETTY_FUNCTION__:
	.ascii	"Type* hb_object_create() [with Type = hb_set_t]\000"
	.section	.rodata._ZZ16hb_set_get_emptyE11_hb_set_nil,"a",%progbits
	.align	2
	.type	_ZZ16hb_set_get_emptyE11_hb_set_nil, %object
	.size	_ZZ16hb_set_get_emptyE11_hb_set_nil, 8240
_ZZ16hb_set_get_emptyE11_hb_set_nil:
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	0
	.space	24
	.byte	1
	.space	3
	.word	0
	.space	8188
	.section	.rodata._ZZ19hb_object_referenceI8hb_set_tEPT_S2_E19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZ19hb_object_referenceI8hb_set_tEPT_S2_E19__PRETTY_FUNCTION__, %object
	.size	_ZZ19hb_object_referenceI8hb_set_tEPT_S2_E19__PRETTY_FUNCTION__, 56
_ZZ19hb_object_referenceI8hb_set_tEPT_S2_E19__PRETTY_FUNCTION__:
	.ascii	"Type* hb_object_reference(Type*) [with Type = hb_se"
	.ascii	"t_t]\000"
	.section	.rodata._ZZ17hb_object_destroyI8hb_set_tEbPT_E19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZ17hb_object_destroyI8hb_set_tEbPT_E19__PRETTY_FUNCTION__, %object
	.size	_ZZ17hb_object_destroyI8hb_set_tEbPT_E19__PRETTY_FUNCTION__, 53
_ZZ17hb_object_destroyI8hb_set_tEbPT_E19__PRETTY_FUNCTION__:
	.ascii	"bool hb_object_destroy(Type*) [with Type = hb_set_t"
	.ascii	"]\000"
	.hidden	_ZN20hb_user_data_array_t3getEP18hb_user_data_key_t
	.hidden	_ZN20hb_user_data_array_t3setEP18hb_user_data_key_tPvPFvS2_Ei
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
