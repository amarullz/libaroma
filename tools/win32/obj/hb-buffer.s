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
	.file	"hb-buffer.cc"
	.global	__aeabi_uidiv
	.section	.text._ZL30_hb_unsigned_int_mul_overflowsjj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL30_hb_unsigned_int_mul_overflowsjj, %function
_ZL30_hb_unsigned_int_mul_overflowsjj:
	.fnstart
.LFB9:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L2
	mov	r0, #-1
	ldr	r1, [r7]
	bl	__aeabi_uidiv(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bhi	.L2
	movs	r3, #1
	b	.L3
.L2:
	movs	r3, #0
.L3:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZL30_hb_unsigned_int_mul_overflowsjj, .-_ZL30_hb_unsigned_int_mul_overflowsjj
	.section	.text._ZL9_hb_debugjj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL9_hb_debugjj, %function
_ZL9_hb_debugjj:
	.fnstart
.LFB37:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	cmp	r2, r3
	ite	cc
	movcc	r3, #1
	movcs	r3, #0
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZL9_hb_debugjj, .-_ZL9_hb_debugjj
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
	beq	.L20
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #4]
	mov	r0, r2
	blx	r3
.L20:
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
	.section	.text._ZN18hb_unicode_funcs_t6scriptEj,"axG",%progbits,_ZN18hb_unicode_funcs_t6scriptEj,comdat
	.align	2
	.weak	_ZN18hb_unicode_funcs_t6scriptEj
	.thumb
	.thumb_func
	.type	_ZN18hb_unicode_funcs_t6scriptEj, %function
_ZN18hb_unicode_funcs_t6scriptEj:
	.fnstart
.LFB87:
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
	ldr	r3, [r3, #68]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #100]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	blx	r3
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN18hb_unicode_funcs_t6scriptEj, .-_ZN18hb_unicode_funcs_t6scriptEj
	.section	.text._ZN11hb_buffer_t6ensureEj,"axG",%progbits,_ZN11hb_buffer_t6ensureEj,comdat
	.align	2
	.weak	_ZN11hb_buffer_t6ensureEj
	.thumb
	.thumb_func
	.type	_ZN11hb_buffer_t6ensureEj, %function
_ZN11hb_buffer_t6ensureEj:
	.fnstart
.LFB109:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L27
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #96]
	ldr	r3, [r7]
	cmp	r2, r3
	bhi	.L27
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	_ZN11hb_buffer_t7enlargeEj(PLT)
	mov	r3, r0
	b	.L28
.L27:
	movs	r3, #1
.L28:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN11hb_buffer_t6ensureEj, .-_ZN11hb_buffer_t6ensureEj
	.section	.text._ZN11hb_buffer_t13clear_contextEj,"axG",%progbits,_ZN11hb_buffer_t13clear_contextEj,comdat
	.align	2
	.weak	_ZN11hb_buffer_t13clear_contextEj
	.thumb
	.thumb_func
	.type	_ZN11hb_buffer_t13clear_contextEj, %function
_ZN11hb_buffer_t13clear_contextEj:
	.fnstart
.LFB111:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	adds	r3, r3, #48
	lsls	r3, r3, #2
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [r3, #4]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN11hb_buffer_t13clear_contextEj, .-_ZN11hb_buffer_t13clear_contextEj
	.section	.text._ZN8hb_utf_tIhLb1EE4nextEPKhS2_Pjj,"axG",%progbits,_ZN8hb_utf_tIhLb1EE4nextEPKhS2_Pjj,comdat
	.align	2
	.weak	_ZN8hb_utf_tIhLb1EE4nextEPKhS2_Pjj
	.thumb
	.thumb_func
	.type	_ZN8hb_utf_tIhLb1EE4nextEPKhS2_Pjj, %function
_ZN8hb_utf_tIhLb1EE4nextEPKhS2_Pjj:
	.fnstart
.LFB112:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	adds	r2, r3, #1
	str	r2, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #127
	bls	.L32
	ldr	r0, [r7, #44]
	movs	r1, #194
	movs	r2, #223
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L33
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcs	.L34
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #128
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	cmp	r3, #63
	bhi	.L34
	movs	r3, #1
	b	.L35
.L34:
	movs	r3, #0
.L35:
	cmp	r3, #0
	beq	.L36
	ldr	r3, [r7, #44]
	and	r3, r3, #31
	lsls	r2, r3, #6
	ldr	r3, [r7, #40]
	orrs	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
	b	.L39
.L36:
	b	.L38
.L33:
	ldr	r0, [r7, #44]
	movs	r1, #224
	movs	r2, #239
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L40
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	subs	r3, r2, r3
	cmp	r3, #1
	ble	.L41
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #128
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #63
	bhi	.L41
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #128
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #63
	bhi	.L41
	movs	r3, #1
	b	.L42
.L41:
	movs	r3, #0
.L42:
	cmp	r3, #0
	beq	.L43
	ldr	r3, [r7, #44]
	lsls	r3, r3, #12
	uxth	r2, r3
	ldr	r3, [r7, #36]
	lsls	r3, r3, #6
	orrs	r2, r2, r3
	ldr	r3, [r7, #32]
	orrs	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #2048
	bcc	.L44
	ldr	r0, [r7, #44]
	mov	r1, #55296
	movw	r2, #57343
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L45
.L44:
	movs	r3, #1
	b	.L46
.L45:
	movs	r3, #0
.L46:
	cmp	r3, #0
	beq	.L47
	b	.L38
.L47:
	ldr	r3, [r7, #12]
	adds	r3, r3, #2
	str	r3, [r7, #12]
	b	.L39
.L43:
	b	.L38
.L40:
	ldr	r0, [r7, #44]
	movs	r1, #240
	movs	r2, #244
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L49
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	subs	r3, r2, r3
	cmp	r3, #2
	ble	.L50
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #128
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #63
	bhi	.L50
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #128
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #63
	bhi	.L50
	ldr	r3, [r7, #12]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #128
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #63
	bhi	.L50
	movs	r3, #1
	b	.L51
.L50:
	movs	r3, #0
.L51:
	cmp	r3, #0
	beq	.L52
	ldr	r3, [r7, #44]
	and	r3, r3, #7
	lsls	r2, r3, #18
	ldr	r3, [r7, #28]
	lsls	r3, r3, #12
	orrs	r2, r2, r3
	ldr	r3, [r7, #24]
	lsls	r3, r3, #6
	orrs	r2, r2, r3
	ldr	r3, [r7, #20]
	orrs	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r0, [r7, #44]
	mov	r1, #65536
	movw	r2, #65535
	movt	r2, 16
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L53
	b	.L38
.L53:
	ldr	r3, [r7, #12]
	adds	r3, r3, #3
	str	r3, [r7, #12]
	b	.L39
.L52:
	b	.L38
.L49:
	b	.L38
.L39:
.L32:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #44]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	b	.L55
.L38:
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3]
	ldr	r3, [r7, #12]
.L55:
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN8hb_utf_tIhLb1EE4nextEPKhS2_Pjj, .-_ZN8hb_utf_tIhLb1EE4nextEPKhS2_Pjj
	.section	.text._ZN8hb_utf_tIhLb1EE4prevEPKhS2_Pjj,"axG",%progbits,_ZN8hb_utf_tIhLb1EE4prevEPKhS2_Pjj,comdat
	.align	2
	.weak	_ZN8hb_utf_tIhLb1EE4prevEPKhS2_Pjj
	.thumb
	.thumb_func
	.type	_ZN8hb_utf_tIhLb1EE4prevEPKhS2_Pjj, %function
_ZN8hb_utf_tIhLb1EE4prevEPKhS2_Pjj:
	.fnstart
.LFB113:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	subs	r2, r3, #1
	str	r2, [r7, #12]
	str	r3, [r7, #20]
	b	.L57
.L59:
	ldr	r3, [r7, #12]
	subs	r3, r3, #1
	str	r3, [r7, #12]
.L57:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bcs	.L58
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #192
	cmp	r3, #128
	bne	.L58
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #12]
	subs	r3, r2, r3
	cmp	r3, #3
	ble	.L59
.L58:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #20]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	_ZN8hb_utf_tIhLb1EE4nextEPKhS2_Pjj(PLT)
	mov	r2, r0
	ldr	r3, [r7, #20]
	cmp	r2, r3
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L60
	ldr	r3, [r7, #12]
	b	.L61
.L60:
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3]
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
.L61:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN8hb_utf_tIhLb1EE4prevEPKhS2_Pjj, .-_ZN8hb_utf_tIhLb1EE4prevEPKhS2_Pjj
	.section	.text._ZN8hb_utf_tIhLb1EE6strlenEPKh,"axG",%progbits,_ZN8hb_utf_tIhLb1EE6strlenEPKh,comdat
	.align	2
	.weak	_ZN8hb_utf_tIhLb1EE6strlenEPKh
	.thumb
	.thumb_func
	.type	_ZN8hb_utf_tIhLb1EE6strlenEPKh, %function
_ZN8hb_utf_tIhLb1EE6strlenEPKh:
	.fnstart
.LFB114:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	strlen(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN8hb_utf_tIhLb1EE6strlenEPKh, .-_ZN8hb_utf_tIhLb1EE6strlenEPKh
	.section	.text._ZN8hb_utf_tItLb1EE4nextEPKtS2_Pjj,"axG",%progbits,_ZN8hb_utf_tItLb1EE4nextEPKtS2_Pjj,comdat
	.align	2
	.weak	_ZN8hb_utf_tItLb1EE4nextEPKtS2_Pjj
	.thumb
	.thumb_func
	.type	_ZN8hb_utf_tItLb1EE4nextEPKtS2_Pjj, %function
_ZN8hb_utf_tItLb1EE4nextEPKtS2_Pjj:
	.fnstart
.LFB115:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	adds	r2, r3, #2
	str	r2, [r7, #12]
	ldrh	r3, [r3]
	str	r3, [r7, #16]
	ldr	r0, [r7, #16]
	mov	r1, #55296
	movw	r2, #57343
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L65
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #16]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	b	.L66
.L65:
	ldr	r0, [r7, #16]
	mov	r1, #55296
	movw	r2, #56319
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L67
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcs	.L68
	ldr	r3, [r7, #12]
	ldrh	r3, [r3]
	str	r3, [r7, #20]
	ldr	r0, [r7, #20]
	mov	r1, #56320
	movw	r2, #57343
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L68
	movs	r3, #1
	b	.L69
.L68:
	movs	r3, #0
.L69:
	cmp	r3, #0
	beq	.L70
	ldr	r3, [r7, #16]
	lsls	r2, r3, #10
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	sub	r3, r3, #56360960
	sub	r3, r3, #252928
	ldr	r2, [r7, #4]
	str	r3, [r2]
	ldr	r3, [r7, #12]
	adds	r3, r3, #2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	b	.L66
.L70:
.L67:
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3]
	ldr	r3, [r7, #12]
.L66:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN8hb_utf_tItLb1EE4nextEPKtS2_Pjj, .-_ZN8hb_utf_tItLb1EE4nextEPKtS2_Pjj
	.section	.text._ZN8hb_utf_tItLb1EE4prevEPKtS2_Pjj,"axG",%progbits,_ZN8hb_utf_tItLb1EE4prevEPKtS2_Pjj,comdat
	.align	2
	.weak	_ZN8hb_utf_tItLb1EE4prevEPKtS2_Pjj
	.thumb
	.thumb_func
	.type	_ZN8hb_utf_tItLb1EE4prevEPKtS2_Pjj, %function
_ZN8hb_utf_tItLb1EE4prevEPKtS2_Pjj:
	.fnstart
.LFB116:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	subs	r2, r3, #2
	str	r2, [r7, #12]
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3]
	str	r3, [r7, #16]
	ldr	r0, [r7, #16]
	mov	r1, #55296
	movw	r2, #57343
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L72
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #16]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	b	.L73
.L72:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bcs	.L74
	ldr	r0, [r7, #16]
	mov	r1, #56320
	movw	r2, #57343
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L74
	movs	r3, #1
	b	.L75
.L74:
	movs	r3, #0
.L75:
	cmp	r3, #0
	beq	.L76
	ldr	r3, [r7, #12]
	subs	r3, r3, #2
	str	r3, [r7, #12]
.L76:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #20]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	_ZN8hb_utf_tItLb1EE4nextEPKtS2_Pjj(PLT)
	mov	r2, r0
	ldr	r3, [r7, #20]
	cmp	r2, r3
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L77
	ldr	r3, [r7, #12]
	b	.L73
.L77:
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3]
	ldr	r3, [r7, #20]
	subs	r3, r3, #2
.L73:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN8hb_utf_tItLb1EE4prevEPKtS2_Pjj, .-_ZN8hb_utf_tItLb1EE4prevEPKtS2_Pjj
	.section	.text._ZN8hb_utf_tItLb1EE6strlenEPKt,"axG",%progbits,_ZN8hb_utf_tItLb1EE6strlenEPKt,comdat
	.align	2
	.weak	_ZN8hb_utf_tItLb1EE6strlenEPKt
	.thumb
	.thumb_func
	.type	_ZN8hb_utf_tItLb1EE6strlenEPKt, %function
_ZN8hb_utf_tItLb1EE6strlenEPKt:
	.fnstart
.LFB117:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L79
.L80:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L79:
	ldr	r3, [r7, #4]
	adds	r2, r3, #2
	str	r2, [r7, #4]
	ldrh	r3, [r3]
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L80
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN8hb_utf_tItLb1EE6strlenEPKt, .-_ZN8hb_utf_tItLb1EE6strlenEPKt
	.section	.text.hb_segment_properties_equal,"ax",%progbits
	.align	2
	.global	hb_segment_properties_equal
	.thumb
	.thumb_func
	.type	hb_segment_properties_equal, %function
hb_segment_properties_equal:
	.fnstart
.LFB121:
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
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L83
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bne	.L83
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	bne	.L83
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	cmp	r2, r3
	bne	.L83
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #16]
	ldr	r3, [r7]
	ldr	r3, [r3, #16]
	cmp	r2, r3
	bne	.L83
	movs	r3, #1
	b	.L84
.L83:
	movs	r3, #0
.L84:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	hb_segment_properties_equal, .-hb_segment_properties_equal
	.section	.text.hb_segment_properties_hash,"ax",%progbits
	.align	2
	.global	hb_segment_properties_hash
	.thumb
	.thumb_func
	.type	hb_segment_properties_hash, %function
hb_segment_properties_hash:
	.fnstart
.LFB122:
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
	eors	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	eors	r3, r3, r2
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	hb_segment_properties_hash, .-hb_segment_properties_hash
	.section	.text._ZN11hb_buffer_t7enlargeEj,"ax",%progbits
	.align	2
	.global	_ZN11hb_buffer_t7enlargeEj
	.hidden	_ZN11hb_buffer_t7enlargeEj
	.thumb
	.thumb_func
	.type	_ZN11hb_buffer_t7enlargeEj, %function
_ZN11hb_buffer_t7enlargeEj:
	.fnstart
.LFB123:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #80]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L89
	movs	r3, #0
	b	.L90
.L89:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #96]
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #104]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	cmp	r2, r3
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	strb	r3, [r7, #11]
	ldr	r0, [r7]
	movs	r1, #20
	bl	_ZL30_hb_unsigned_int_mul_overflowsjj(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L91
	b	.L92
.L91:
	b	.L93
.L94:
	ldr	r3, [r7, #20]
	lsrs	r2, r3, #1
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	adds	r3, r3, #32
	str	r3, [r7, #20]
.L93:
	ldr	r2, [r7]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcs	.L94
	ldr	r0, [r7, #20]
	movs	r1, #20
	bl	_ZL30_hb_unsigned_int_mul_overflowsjj(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L95
	b	.L92
.L95:
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #108]
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r0, r1
	mov	r1, r3
	bl	realloc(PLT)
	str	r0, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #100]
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r0, r1
	mov	r1, r3
	bl	realloc(PLT)
	str	r0, [r7, #12]
.L92:
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L96
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L97
.L96:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #80]
.L97:
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L98
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #16]
	str	r2, [r3, #108]
.L98:
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L99
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #100]
.L99:
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L100
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #108]
	b	.L101
.L100:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
.L101:
	ldr	r2, [r7, #4]
	str	r3, [r2, #104]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #80]	@ zero_extendqisi2
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L102
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #20]
	str	r2, [r3, #96]
.L102:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #80]	@ zero_extendqisi2
	eor	r3, r3, #1
	uxtb	r3, r3
.L90:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN11hb_buffer_t7enlargeEj, .-_ZN11hb_buffer_t7enlargeEj
	.section	.rodata
	.align	2
.LC0:
	.ascii	"have_output\000"
	.align	2
.LC1:
	.ascii	"../../../libs/harfbuzz-ng/src/hb-buffer.cc\000"
	.section	.text._ZN11hb_buffer_t13make_room_forEjj,"ax",%progbits
	.align	2
	.global	_ZN11hb_buffer_t13make_room_forEjj
	.hidden	_ZN11hb_buffer_t13make_room_forEjj
	.thumb
	.thumb_func
	.type	_ZN11hb_buffer_t13make_room_forEjj, %function
_ZN11hb_buffer_t13make_room_forEjj:
	.fnstart
.LFB124:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #92]
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZN11hb_buffer_t6ensureEj(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L104
	movs	r3, #0
	b	.L105
.L104:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #104]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #100]
	cmp	r2, r3
	bne	.L106
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #92]
	ldr	r3, [r7, #4]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #84]
	ldr	r3, [r7, #8]
	add	r3, r3, r1
	cmp	r2, r3
	bls	.L106
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #81]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L107
	ldr	r3, .L108
.LPIC0:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L108+4
.LPIC1:
	add	r3, pc
	mov	r1, r3
	movs	r2, #133
	ldr	r3, .L108+8
.LPIC2:
	add	r3, pc
	bl	__assert_fail(PLT)
.L107:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #108]
	ldr	r3, [r7, #12]
	str	r2, [r3, #104]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #104]
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #100]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #92]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, r3
	bl	memcpy(PLT)
.L106:
	movs	r3, #1
.L105:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L109:
	.align	2
.L108:
	.word	.LC0-(.LPIC0+4)
	.word	.LC1-(.LPIC1+4)
	.word	_ZZN11hb_buffer_t13make_room_forEjjE19__PRETTY_FUNCTION__-(.LPIC2+4)
	.cantunwind
	.fnend
	.size	_ZN11hb_buffer_t13make_room_forEjj, .-_ZN11hb_buffer_t13make_room_forEjj
	.section	.text._ZN11hb_buffer_t13shift_forwardEj,"ax",%progbits
	.align	2
	.global	_ZN11hb_buffer_t13shift_forwardEj
	.hidden	_ZN11hb_buffer_t13shift_forwardEj
	.thumb
	.thumb_func
	.type	_ZN11hb_buffer_t13shift_forwardEj, %function
_ZN11hb_buffer_t13shift_forwardEj:
	.fnstart
.LFB125:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #81]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L111
	ldr	r3, .L114
.LPIC3:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L114+4
.LPIC4:
	add	r3, pc
	mov	r1, r3
	movs	r2, #145
	ldr	r3, .L114+8
.LPIC5:
	add	r3, pc
	bl	__assert_fail(PLT)
.L111:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #88]
	ldr	r3, [r7]
	add	r3, r3, r2
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN11hb_buffer_t6ensureEj(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L112
	movs	r3, #0
	b	.L113
.L112:
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #100]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #84]
	ldr	r3, [r7]
	add	r2, r2, r3
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r0, r1, r3
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #100]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #84]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r1, r1, r3
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #88]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	subs	r2, r2, r3
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, r3
	bl	memmove(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #88]
	ldr	r3, [r7]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #88]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #84]
	ldr	r3, [r7]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #84]
	movs	r3, #1
.L113:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L115:
	.align	2
.L114:
	.word	.LC0-(.LPIC3+4)
	.word	.LC1-(.LPIC4+4)
	.word	_ZZN11hb_buffer_t13shift_forwardEjE19__PRETTY_FUNCTION__-(.LPIC5+4)
	.cantunwind
	.fnend
	.size	_ZN11hb_buffer_t13shift_forwardEj, .-_ZN11hb_buffer_t13shift_forwardEj
	.section	.rodata
	.align	2
.LC2:
	.ascii	"(uintptr_t) pos % sizeof (scratch_buffer_t) == 0\000"
	.section	.text._ZN11hb_buffer_t18get_scratch_bufferEPj,"ax",%progbits
	.align	2
	.global	_ZN11hb_buffer_t18get_scratch_bufferEPj
	.hidden	_ZN11hb_buffer_t18get_scratch_bufferEPj
	.thumb
	.thumb_func
	.type	_ZN11hb_buffer_t18get_scratch_bufferEPj, %function
_ZN11hb_buffer_t18get_scratch_bufferEPj:
	.fnstart
.LFB126:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #81]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #82]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #92]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #100]
	ldr	r3, [r7, #4]
	str	r2, [r3, #104]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #108]
	and	r3, r3, #3
	cmp	r3, #0
	beq	.L117
	ldr	r3, .L119
.LPIC6:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L119+4
.LPIC7:
	add	r3, pc
	mov	r1, r3
	movs	r2, #164
	ldr	r3, .L119+8
.LPIC8:
	add	r3, pc
	bl	__assert_fail(PLT)
.L117:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #96]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	lsrs	r2, r3, #2
	ldr	r3, [r7]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #108]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L120:
	.align	2
.L119:
	.word	.LC2-(.LPIC6+4)
	.word	.LC1-(.LPIC7+4)
	.word	_ZZN11hb_buffer_t18get_scratch_bufferEPjE19__PRETTY_FUNCTION__-(.LPIC8+4)
	.cantunwind
	.fnend
	.size	_ZN11hb_buffer_t18get_scratch_bufferEPj, .-_ZN11hb_buffer_t18get_scratch_bufferEPj
	.section	.text._ZN11hb_buffer_t5resetEv,"ax",%progbits
	.align	2
	.global	_ZN11hb_buffer_t5resetEv
	.hidden	_ZN11hb_buffer_t5resetEv
	.thumb
	.thumb_func
	.type	_ZN11hb_buffer_t5resetEv, %function
_ZN11hb_buffer_t5resetEv:
	.fnstart
.LFB127:
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
	bl	_Z18hb_object_is_inertI11hb_buffer_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L122
	b	.L121
.L122:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	mov	r0, r3
	bl	hb_unicode_funcs_destroy(PLT)
	bl	hb_unicode_funcs_get_default(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #44]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #48]
	ldr	r3, [r7, #4]
	movw	r2, #65533
	str	r2, [r3, #52]
	ldr	r0, [r7, #4]
	bl	_ZN11hb_buffer_t5clearEv(PLT)
.L121:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11hb_buffer_t5resetEv, .-_ZN11hb_buffer_t5resetEv
	.section	.text._ZN11hb_buffer_t5clearEv,"ax",%progbits
	.align	2
	.global	_ZN11hb_buffer_t5clearEv
	.hidden	_ZN11hb_buffer_t5clearEv
	.thumb
	.thumb_func
	.type	_ZN11hb_buffer_t5clearEv, %function
_ZN11hb_buffer_t5clearEv:
	.fnstart
.LFB128:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #32
	sub	sp, sp, #32
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	_Z18hb_object_is_inertI11hb_buffer_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L124
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
	ldr	r3, [r7, #4]
	add	r4, r3, #60
	add	r5, r7, #12
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #56]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #80]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #81]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #82]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #84]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #88]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #92]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #100]
	ldr	r3, [r7, #4]
	str	r2, [r3, #104]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #112]
	ldr	r3, [r7, #4]
	adds	r3, r3, #116
	mov	r0, r3
	movs	r1, #0
	movs	r2, #8
	bl	memset(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #124
	mov	r0, r3
	movs	r1, #0
	movs	r2, #32
	bl	memset(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #156
	mov	r0, r3
	movs	r1, #0
	movs	r2, #40
	bl	memset(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #196
	mov	r0, r3
	movs	r1, #0
	movs	r2, #8
	bl	memset(PLT)
.L124:
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.fnend
	.size	_ZN11hb_buffer_t5clearEv, .-_ZN11hb_buffer_t5clearEv
	.section	.text._ZN11hb_buffer_t3addEjj,"ax",%progbits
	.align	2
	.global	_ZN11hb_buffer_t3addEjj
	.hidden	_ZN11hb_buffer_t3addEjj
	.thumb
	.thumb_func
	.type	_ZN11hb_buffer_t3addEjj, %function
_ZN11hb_buffer_t3addEjj:
	.fnstart
.LFB129:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #88]
	adds	r3, r3, #1
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZN11hb_buffer_t6ensureEj(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L128
	b	.L127
.L128:
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #100]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #88]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	str	r3, [r7, #20]
	ldr	r0, [r7, #20]
	movs	r1, #0
	movs	r2, #20
	bl	memset(PLT)
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #8]
	str	r2, [r3]
	ldr	r3, [r7, #20]
	movs	r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #88]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #88]
.L127:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN11hb_buffer_t3addEjj, .-_ZN11hb_buffer_t3addEjj
	.section	.text._ZN11hb_buffer_t8add_infoERK15hb_glyph_info_t,"ax",%progbits
	.align	2
	.global	_ZN11hb_buffer_t8add_infoERK15hb_glyph_info_t
	.hidden	_ZN11hb_buffer_t8add_infoERK15hb_glyph_info_t
	.thumb
	.thumb_func
	.type	_ZN11hb_buffer_t8add_infoERK15hb_glyph_info_t, %function
_ZN11hb_buffer_t8add_infoERK15hb_glyph_info_t:
	.fnstart
.LFB130:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	adds	r3, r3, #1
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN11hb_buffer_t6ensureEj(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L131
	b	.L130
.L131:
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #100]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #88]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r2, r1, r3
	ldr	r3, [r7]
	mov	r4, r2
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #88]
.L130:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.cantunwind
	.fnend
	.size	_ZN11hb_buffer_t8add_infoERK15hb_glyph_info_t, .-_ZN11hb_buffer_t8add_infoERK15hb_glyph_info_t
	.section	.text._ZN11hb_buffer_t13remove_outputEv,"ax",%progbits
	.align	2
	.global	_ZN11hb_buffer_t13remove_outputEv
	.hidden	_ZN11hb_buffer_t13remove_outputEv
	.thumb
	.thumb_func
	.type	_ZN11hb_buffer_t13remove_outputEv, %function
_ZN11hb_buffer_t13remove_outputEv:
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
	ldr	r0, [r7, #4]
	bl	_Z18hb_object_is_inertI11hb_buffer_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L134
	b	.L133
.L134:
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #81]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #82]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #92]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #100]
	ldr	r3, [r7, #4]
	str	r2, [r3, #104]
.L133:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11hb_buffer_t13remove_outputEv, .-_ZN11hb_buffer_t13remove_outputEv
	.section	.text._ZN11hb_buffer_t12clear_outputEv,"ax",%progbits
	.align	2
	.global	_ZN11hb_buffer_t12clear_outputEv
	.hidden	_ZN11hb_buffer_t12clear_outputEv
	.thumb
	.thumb_func
	.type	_ZN11hb_buffer_t12clear_outputEv, %function
_ZN11hb_buffer_t12clear_outputEv:
	.fnstart
.LFB132:
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
	bl	_Z18hb_object_is_inertI11hb_buffer_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L137
	b	.L136
.L137:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #81]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #82]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #92]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #100]
	ldr	r3, [r7, #4]
	str	r2, [r3, #104]
.L136:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11hb_buffer_t12clear_outputEv, .-_ZN11hb_buffer_t12clear_outputEv
	.section	.text._ZN11hb_buffer_t15clear_positionsEv,"ax",%progbits
	.align	2
	.global	_ZN11hb_buffer_t15clear_positionsEv
	.hidden	_ZN11hb_buffer_t15clear_positionsEv
	.thumb
	.thumb_func
	.type	_ZN11hb_buffer_t15clear_positionsEv, %function
_ZN11hb_buffer_t15clear_positionsEv:
	.fnstart
.LFB133:
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
	bl	_Z18hb_object_is_inertI11hb_buffer_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L140
	b	.L139
.L140:
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #81]
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #82]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #92]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #100]
	ldr	r3, [r7, #4]
	str	r2, [r3, #104]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #108]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #88]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r0, r1
	movs	r1, #0
	mov	r2, r3
	bl	memset(PLT)
.L139:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11hb_buffer_t15clear_positionsEv, .-_ZN11hb_buffer_t15clear_positionsEv
	.section	.text._ZN11hb_buffer_t12swap_buffersEv,"ax",%progbits
	.align	2
	.global	_ZN11hb_buffer_t12swap_buffersEv
	.hidden	_ZN11hb_buffer_t12swap_buffersEv
	.thumb
	.thumb_func
	.type	_ZN11hb_buffer_t12swap_buffersEv, %function
_ZN11hb_buffer_t12swap_buffersEv:
	.fnstart
.LFB134:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #80]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L143
	b	.L142
.L143:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #81]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L145
	ldr	r3, .L147
.LPIC9:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L147+4
.LPIC10:
	add	r3, pc
	mov	r1, r3
	movw	r2, #289
	ldr	r3, .L147+8
.LPIC11:
	add	r3, pc
	bl	__assert_fail(PLT)
.L145:
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #81]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #104]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	cmp	r2, r3
	beq	.L146
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #104]
	ldr	r3, [r7, #4]
	str	r2, [r3, #100]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #104]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #104]
	ldr	r3, [r7, #4]
	str	r2, [r3, #108]
.L146:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #92]
	ldr	r3, [r7, #4]
	str	r2, [r3, #88]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #8]
	str	r2, [r3, #92]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #84]
.L142:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L148:
	.align	2
.L147:
	.word	.LC0-(.LPIC9+4)
	.word	.LC1-(.LPIC10+4)
	.word	_ZZN11hb_buffer_t12swap_buffersEvE19__PRETTY_FUNCTION__-(.LPIC11+4)
	.cantunwind
	.fnend
	.size	_ZN11hb_buffer_t12swap_buffersEv, .-_ZN11hb_buffer_t12swap_buffersEv
	.section	.text._ZN11hb_buffer_t14replace_glyphsEjjPKj,"ax",%progbits
	.align	2
	.global	_ZN11hb_buffer_t14replace_glyphsEjjPKj
	.hidden	_ZN11hb_buffer_t14replace_glyphsEjjPKj
	.thumb
	.thumb_func
	.type	_ZN11hb_buffer_t14replace_glyphsEjjPKj, %function
_ZN11hb_buffer_t14replace_glyphsEjjPKj:
	.fnstart
.LFB135:
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
	str	r3, [r7]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	_ZN11hb_buffer_t13make_room_forEjj(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L149
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #84]
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #84]
	ldr	r3, [r7, #8]
	add	r3, r3, r1
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	bl	_ZN11hb_buffer_t14merge_clustersEjj(PLT)
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #100]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #84]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	add	r4, r7, #20
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #104]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #92]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	str	r3, [r7, #44]
	movs	r3, #0
	str	r3, [r7, #40]
	b	.L152
.L153:
	ldr	r3, [r7, #44]
	mov	r4, r3
	add	r5, r7, #20
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7, #40]
	lsls	r3, r3, #2
	ldr	r2, [r7]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #44]
	str	r2, [r3]
	ldr	r3, [r7, #44]
	adds	r3, r3, #20
	str	r3, [r7, #44]
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	str	r3, [r7, #40]
.L152:
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcc	.L153
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #84]
	ldr	r3, [r7, #8]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #84]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #92]
	ldr	r3, [r7, #4]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #92]
.L149:
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.fnend
	.size	_ZN11hb_buffer_t14replace_glyphsEjjPKj, .-_ZN11hb_buffer_t14replace_glyphsEjjPKj
	.section	.text._ZN11hb_buffer_t12output_glyphEj,"ax",%progbits
	.align	2
	.global	_ZN11hb_buffer_t12output_glyphEj
	.hidden	_ZN11hb_buffer_t12output_glyphEj
	.thumb
	.thumb_func
	.type	_ZN11hb_buffer_t12output_glyphEj, %function
_ZN11hb_buffer_t12output_glyphEj:
	.fnstart
.LFB136:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	movs	r1, #0
	movs	r2, #1
	bl	_ZN11hb_buffer_t13make_room_forEjj(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L155
	b	.L154
.L155:
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #104]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #92]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r1, r1, r3
	ldr	r3, [r7, #4]
	ldr	r0, [r3, #100]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #84]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	mov	r4, r1
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #104]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #92]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r2, [r7]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #92]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #92]
.L154:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.cantunwind
	.fnend
	.size	_ZN11hb_buffer_t12output_glyphEj, .-_ZN11hb_buffer_t12output_glyphEj
	.section	.text._ZN11hb_buffer_t11output_infoERK15hb_glyph_info_t,"ax",%progbits
	.align	2
	.global	_ZN11hb_buffer_t11output_infoERK15hb_glyph_info_t
	.hidden	_ZN11hb_buffer_t11output_infoERK15hb_glyph_info_t
	.thumb
	.thumb_func
	.type	_ZN11hb_buffer_t11output_infoERK15hb_glyph_info_t, %function
_ZN11hb_buffer_t11output_infoERK15hb_glyph_info_t:
	.fnstart
.LFB137:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	movs	r1, #0
	movs	r2, #1
	bl	_ZN11hb_buffer_t13make_room_forEjj(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L158
	b	.L157
.L158:
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #104]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #92]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r2, r1, r3
	ldr	r3, [r7]
	mov	r4, r2
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #92]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #92]
.L157:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.cantunwind
	.fnend
	.size	_ZN11hb_buffer_t11output_infoERK15hb_glyph_info_t, .-_ZN11hb_buffer_t11output_infoERK15hb_glyph_info_t
	.section	.text._ZN11hb_buffer_t10copy_glyphEv,"ax",%progbits
	.align	2
	.global	_ZN11hb_buffer_t10copy_glyphEv
	.hidden	_ZN11hb_buffer_t10copy_glyphEv
	.thumb
	.thumb_func
	.type	_ZN11hb_buffer_t10copy_glyphEv, %function
_ZN11hb_buffer_t10copy_glyphEv:
	.fnstart
.LFB138:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	movs	r1, #0
	movs	r2, #1
	bl	_ZN11hb_buffer_t13make_room_forEjj(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L161
	b	.L160
.L161:
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #104]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #92]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r1, r1, r3
	ldr	r3, [r7, #4]
	ldr	r0, [r3, #100]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #84]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	mov	r4, r1
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #92]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #92]
.L160:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.cantunwind
	.fnend
	.size	_ZN11hb_buffer_t10copy_glyphEv, .-_ZN11hb_buffer_t10copy_glyphEv
	.section	.rodata
	.align	2
.LC3:
	.ascii	"i <= len\000"
	.align	2
.LC4:
	.ascii	"i <= out_len + (len - idx)\000"
	.align	2
.LC5:
	.ascii	"idx >= count\000"
	.section	.text._ZN11hb_buffer_t7move_toEj,"ax",%progbits
	.align	2
	.global	_ZN11hb_buffer_t7move_toEj
	.hidden	_ZN11hb_buffer_t7move_toEj
	.thumb
	.thumb_func
	.type	_ZN11hb_buffer_t7move_toEj, %function
_ZN11hb_buffer_t7move_toEj:
	.fnstart
.LFB139:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #81]	@ zero_extendqisi2
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L164
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #88]
	ldr	r3, [r7]
	cmp	r2, r3
	bcs	.L165
	ldr	r3, .L175
.LPIC12:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L175+4
.LPIC13:
	add	r3, pc
	mov	r1, r3
	mov	r2, #368
	ldr	r3, .L175+8
.LPIC14:
	add	r3, pc
	bl	__assert_fail(PLT)
.L165:
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #84]
	movs	r3, #1
	b	.L166
.L164:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #92]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #88]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	subs	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, [r7]
	cmp	r2, r3
	bcs	.L167
	ldr	r3, .L175+12
.LPIC15:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L175+16
.LPIC16:
	add	r3, pc
	mov	r1, r3
	movw	r2, #373
	ldr	r3, .L175+20
.LPIC17:
	add	r3, pc
	bl	__assert_fail(PLT)
.L167:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #92]
	ldr	r3, [r7]
	cmp	r2, r3
	bcs	.L168
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #92]
	ldr	r2, [r7]
	subs	r3, r2, r3
	str	r3, [r7, #12]
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #12]
	bl	_ZN11hb_buffer_t13make_room_forEjj(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L169
	movs	r3, #0
	b	.L166
.L169:
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #104]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #92]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r0, r1, r3
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #100]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #84]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r1, r1, r3
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, r3
	bl	memmove(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #84]
	ldr	r3, [r7, #12]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #84]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #92]
	ldr	r3, [r7, #12]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #92]
	b	.L170
.L168:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #92]
	ldr	r3, [r7]
	cmp	r2, r3
	bls	.L170
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #92]
	ldr	r3, [r7]
	subs	r3, r2, r3
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #84]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcs	.L171
	ldr	r3, [r7, #8]
	adds	r3, r3, #32
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN11hb_buffer_t13shift_forwardEj(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L171
	movs	r3, #1
	b	.L172
.L171:
	movs	r3, #0
.L172:
	cmp	r3, #0
	beq	.L173
	movs	r3, #0
	b	.L166
.L173:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #84]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcs	.L174
	ldr	r3, .L175+24
.LPIC18:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L175+28
.LPIC19:
	add	r3, pc
	mov	r1, r3
	movw	r2, #391
	ldr	r3, .L175+32
.LPIC20:
	add	r3, pc
	bl	__assert_fail(PLT)
.L174:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #84]
	ldr	r3, [r7, #8]
	subs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #84]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #92]
	ldr	r3, [r7, #8]
	subs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #92]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #100]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #84]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r0, r1, r3
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #104]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #92]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r1, r1, r3
	ldr	r2, [r7, #8]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, r3
	bl	memmove(PLT)
.L170:
	movs	r3, #1
.L166:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L176:
	.align	2
.L175:
	.word	.LC3-(.LPIC12+4)
	.word	.LC1-(.LPIC13+4)
	.word	_ZZN11hb_buffer_t7move_toEjE19__PRETTY_FUNCTION__-(.LPIC14+4)
	.word	.LC4-(.LPIC15+4)
	.word	.LC1-(.LPIC16+4)
	.word	_ZZN11hb_buffer_t7move_toEjE19__PRETTY_FUNCTION__-(.LPIC17+4)
	.word	.LC5-(.LPIC18+4)
	.word	.LC1-(.LPIC19+4)
	.word	_ZZN11hb_buffer_t7move_toEjE19__PRETTY_FUNCTION__-(.LPIC20+4)
	.cantunwind
	.fnend
	.size	_ZN11hb_buffer_t7move_toEj, .-_ZN11hb_buffer_t7move_toEj
	.section	.text._ZN11hb_buffer_t13replace_glyphEj,"ax",%progbits
	.align	2
	.global	_ZN11hb_buffer_t13replace_glyphEj
	.hidden	_ZN11hb_buffer_t13replace_glyphEj
	.thumb
	.thumb_func
	.type	_ZN11hb_buffer_t13replace_glyphEj, %function
_ZN11hb_buffer_t13replace_glyphEj:
	.fnstart
.LFB140:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #104]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	cmp	r2, r3
	bne	.L178
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #92]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	cmp	r2, r3
	beq	.L179
.L178:
	ldr	r0, [r7, #4]
	movs	r1, #1
	movs	r2, #1
	bl	_ZN11hb_buffer_t13make_room_forEjj(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L180
	b	.L177
.L180:
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #104]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #92]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r1, r1, r3
	ldr	r3, [r7, #4]
	ldr	r0, [r3, #100]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #84]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	mov	r4, r1
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
.L179:
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #104]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #92]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r2, [r7]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #84]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #92]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #92]
.L177:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.cantunwind
	.fnend
	.size	_ZN11hb_buffer_t13replace_glyphEj, .-_ZN11hb_buffer_t13replace_glyphEj
	.section	.text._ZN11hb_buffer_t9set_masksEjjjj,"ax",%progbits
	.align	2
	.global	_ZN11hb_buffer_t9set_masksEjjjj
	.hidden	_ZN11hb_buffer_t9set_masksEjjjj
	.thumb
	.thumb_func
	.type	_ZN11hb_buffer_t9set_masksEjjjj, %function
_ZN11hb_buffer_t9set_masksEjjjj:
	.fnstart
.LFB141:
	@ args = 4, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #44
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #4]
	mvns	r3, r3
	str	r3, [r7, #28]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	ands	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L183
	b	.L182
.L183:
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L185
	ldr	r3, [r7, #48]
	cmp	r3, #-1
	bne	.L185
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #88]
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #36]
	b	.L186
.L187:
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #100]
	ldr	r2, [r7, #36]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r1, r1, r3
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #100]
	ldr	r2, [r7, #36]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #28]
	ands	r2, r2, r3
	ldr	r3, [r7, #8]
	orrs	r3, r3, r2
	str	r3, [r1, #4]
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L186:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bcc	.L187
	b	.L182
.L185:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #88]
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #32]
	b	.L188
.L190:
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #100]
	ldr	r2, [r7, #32]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r2, [r3, #8]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L189
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #100]
	ldr	r2, [r7, #32]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #48]
	cmp	r2, r3
	bcs	.L189
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #100]
	ldr	r2, [r7, #32]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r1, r1, r3
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #100]
	ldr	r2, [r7, #32]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #28]
	ands	r2, r2, r3
	ldr	r3, [r7, #8]
	orrs	r3, r3, r2
	str	r3, [r1, #4]
.L189:
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	str	r3, [r7, #32]
.L188:
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcc	.L190
.L182:
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN11hb_buffer_t9set_masksEjjjj, .-_ZN11hb_buffer_t9set_masksEjjjj
	.section	.text._ZN11hb_buffer_t13reverse_rangeEjj,"ax",%progbits
	.align	2
	.global	_ZN11hb_buffer_t13reverse_rangeEjj
	.hidden	_ZN11hb_buffer_t13reverse_rangeEjj
	.thumb
	.thumb_func
	.type	_ZN11hb_buffer_t13reverse_rangeEjj, %function
_ZN11hb_buffer_t13reverse_rangeEjj:
	.fnstart
.LFB142:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r7}
	sub	sp, sp, #68
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #4]
	subs	r2, r3, #1
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bne	.L192
	b	.L191
.L192:
	ldr	r3, [r7, #8]
	str	r3, [r7, #60]
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	str	r3, [r7, #56]
	b	.L194
.L195:
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #100]
	ldr	r2, [r7, #60]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	add	r4, r7, #36
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #100]
	ldr	r2, [r7, #60]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r1, r1, r3
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #100]
	ldr	r2, [r7, #56]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	mov	r4, r1
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #100]
	ldr	r2, [r7, #56]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	mov	r4, r3
	add	r5, r7, #36
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
	ldr	r3, [r7, #56]
	subs	r3, r3, #1
	str	r3, [r7, #56]
.L194:
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #56]
	cmp	r2, r3
	bcc	.L195
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #108]
	cmp	r3, #0
	beq	.L191
	ldr	r3, [r7, #8]
	str	r3, [r7, #60]
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	str	r3, [r7, #56]
	b	.L196
.L197:
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #108]
	ldr	r2, [r7, #60]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	add	r4, r7, #16
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #108]
	ldr	r2, [r7, #60]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r1, r1, r3
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #108]
	ldr	r2, [r7, #56]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	mov	r4, r1
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #108]
	ldr	r2, [r7, #56]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	mov	r4, r3
	add	r5, r7, #16
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
	ldr	r3, [r7, #56]
	subs	r3, r3, #1
	str	r3, [r7, #56]
.L196:
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #56]
	cmp	r2, r3
	bcc	.L197
.L191:
	adds	r7, r7, #68
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7}
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN11hb_buffer_t13reverse_rangeEjj, .-_ZN11hb_buffer_t13reverse_rangeEjj
	.section	.text._ZN11hb_buffer_t7reverseEv,"ax",%progbits
	.align	2
	.global	_ZN11hb_buffer_t7reverseEv
	.hidden	_ZN11hb_buffer_t7reverseEv
	.thumb
	.thumb_func
	.type	_ZN11hb_buffer_t7reverseEv, %function
_ZN11hb_buffer_t7reverseEv:
	.fnstart
.LFB143:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	cmp	r3, #0
	bne	.L199
	b	.L198
.L199:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	ldr	r0, [r7, #4]
	movs	r1, #0
	mov	r2, r3
	bl	_ZN11hb_buffer_t13reverse_rangeEjj(PLT)
.L198:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN11hb_buffer_t7reverseEv, .-_ZN11hb_buffer_t7reverseEv
	.section	.text._ZN11hb_buffer_t16reverse_clustersEv,"ax",%progbits
	.align	2
	.global	_ZN11hb_buffer_t16reverse_clustersEv
	.hidden	_ZN11hb_buffer_t16reverse_clustersEv
	.thumb
	.thumb_func
	.type	_ZN11hb_buffer_t16reverse_clustersEv, %function
_ZN11hb_buffer_t16reverse_clustersEv:
	.fnstart
.LFB144:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	cmp	r3, #0
	bne	.L202
	b	.L201
.L202:
	ldr	r0, [r7, #4]
	bl	_ZN11hb_buffer_t7reverseEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	str	r3, [r7, #8]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	ldr	r3, [r3, #8]
	str	r3, [r7, #12]
	movs	r3, #1
	str	r3, [r7, #20]
	b	.L204
.L206:
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #100]
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	beq	.L205
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #16]
	ldr	r2, [r7, #20]
	bl	_ZN11hb_buffer_t13reverse_rangeEjj(PLT)
	ldr	r3, [r7, #20]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #100]
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r3, [r3, #8]
	str	r3, [r7, #12]
.L205:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L204:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L206
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #16]
	ldr	r2, [r7, #20]
	bl	_ZN11hb_buffer_t13reverse_rangeEjj(PLT)
.L201:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN11hb_buffer_t16reverse_clustersEv, .-_ZN11hb_buffer_t16reverse_clustersEv
	.section	.text._ZN11hb_buffer_t14merge_clustersEjj,"ax",%progbits
	.align	2
	.global	_ZN11hb_buffer_t14merge_clustersEjj
	.hidden	_ZN11hb_buffer_t14merge_clustersEjj
	.thumb
	.thumb_func
	.type	_ZN11hb_buffer_t14merge_clustersEjj, %function
_ZN11hb_buffer_t14merge_clustersEjj:
	.fnstart
.LFB145:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #8]
	subs	r3, r2, r3
	cmp	r3, #1
	bls	.L207
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #100]
	ldr	r2, [r7, #8]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r3, [r3, #8]
	str	r3, [r7, #16]
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #28]
	b	.L210
.L211:
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #100]
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #8
	add	r2, r7, #16
	mov	r0, r2
	mov	r1, r3
	bl	_Z3MINIjET_RKS0_S2_(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L210:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcc	.L211
	b	.L212
.L214:
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
.L212:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #88]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L213
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #100]
	ldr	r2, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	subs	r3, r3, #20
	add	r3, r3, r1
	ldr	r1, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #100]
	ldr	r2, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	ldr	r3, [r3, #8]
	cmp	r1, r3
	beq	.L214
.L213:
	b	.L215
.L217:
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	str	r3, [r7, #8]
.L215:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #84]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcs	.L216
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #100]
	ldr	r2, [r7, #8]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	subs	r3, r3, #20
	add	r3, r3, r1
	ldr	r1, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #100]
	ldr	r2, [r7, #8]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	ldr	r3, [r3, #8]
	cmp	r1, r3
	beq	.L217
.L216:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #84]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bne	.L218
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #92]
	str	r3, [r7, #24]
	b	.L219
.L221:
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #104]
	ldr	r2, [r7, #24]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	subs	r3, r3, #20
	add	r3, r3, r1
	ldr	r2, [r7, #16]
	str	r2, [r3, #8]
	ldr	r3, [r7, #24]
	subs	r3, r3, #1
	str	r3, [r7, #24]
.L219:
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L220
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #104]
	ldr	r2, [r7, #24]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	subs	r3, r3, #20
	add	r3, r3, r1
	ldr	r1, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #100]
	ldr	r2, [r7, #8]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	ldr	r3, [r3, #8]
	cmp	r1, r3
	beq	.L221
.L220:
.L218:
	ldr	r3, [r7, #8]
	str	r3, [r7, #20]
	b	.L222
.L223:
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #100]
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r2, [r7, #16]
	str	r2, [r3, #8]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L222:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcc	.L223
.L207:
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN11hb_buffer_t14merge_clustersEjj, .-_ZN11hb_buffer_t14merge_clustersEjj
	.section	.text._ZN11hb_buffer_t18merge_out_clustersEjj,"ax",%progbits
	.align	2
	.global	_ZN11hb_buffer_t18merge_out_clustersEjj
	.hidden	_ZN11hb_buffer_t18merge_out_clustersEjj
	.thumb
	.thumb_func
	.type	_ZN11hb_buffer_t18merge_out_clustersEjj, %function
_ZN11hb_buffer_t18merge_out_clustersEjj:
	.fnstart
.LFB146:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #8]
	subs	r3, r2, r3
	cmp	r3, #1
	bls	.L224
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #104]
	ldr	r2, [r7, #8]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r3, [r3, #8]
	str	r3, [r7, #16]
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #28]
	b	.L227
.L228:
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #104]
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #8
	add	r2, r7, #16
	mov	r0, r2
	mov	r1, r3
	bl	_Z3MINIjET_RKS0_S2_(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L227:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcc	.L228
	b	.L229
.L231:
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	str	r3, [r7, #8]
.L229:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L230
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #104]
	ldr	r2, [r7, #8]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	subs	r3, r3, #20
	add	r3, r3, r1
	ldr	r1, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #104]
	ldr	r2, [r7, #8]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	ldr	r3, [r3, #8]
	cmp	r1, r3
	beq	.L231
.L230:
	b	.L232
.L234:
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
.L232:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #92]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L233
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #104]
	ldr	r2, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	subs	r3, r3, #20
	add	r3, r3, r1
	ldr	r1, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #104]
	ldr	r2, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	ldr	r3, [r3, #8]
	cmp	r1, r3
	beq	.L234
.L233:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #92]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bne	.L235
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #84]
	str	r3, [r7, #24]
	b	.L236
.L238:
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #100]
	ldr	r2, [r7, #24]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r2, [r7, #16]
	str	r2, [r3, #8]
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
.L236:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #88]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bls	.L237
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #100]
	ldr	r2, [r7, #24]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r1, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #104]
	ldr	r2, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	subs	r3, r3, #20
	add	r3, r3, r0
	ldr	r3, [r3, #8]
	cmp	r1, r3
	beq	.L238
.L237:
.L235:
	ldr	r3, [r7, #8]
	str	r3, [r7, #20]
	b	.L239
.L240:
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #104]
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r2, [r7, #16]
	str	r2, [r3, #8]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L239:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcc	.L240
.L224:
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN11hb_buffer_t18merge_out_clustersEjj, .-_ZN11hb_buffer_t18merge_out_clustersEjj
	.section	.rodata
	.align	2
.LC6:
	.ascii	"content_type == HB_BUFFER_CONTENT_TYPE_UNICODE || ("
	.ascii	"!len && content_type == HB_BUFFER_CONTENT_TYPE_INVA"
	.ascii	"LID)\000"
	.section	.text._ZN11hb_buffer_t24guess_segment_propertiesEv,"ax",%progbits
	.align	2
	.global	_ZN11hb_buffer_t24guess_segment_propertiesEv
	.hidden	_ZN11hb_buffer_t24guess_segment_propertiesEv
	.thumb
	.thumb_func
	.type	_ZN11hb_buffer_t24guess_segment_propertiesEv, %function
_ZN11hb_buffer_t24guess_segment_propertiesEv:
	.fnstart
.LFB147:
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
	ldr	r3, [r3, #56]
	cmp	r3, #1
	beq	.L242
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	cmp	r3, #0
	bne	.L243
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	cmp	r3, #0
	beq	.L242
.L243:
	ldr	r3, .L251
.LPIC21:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L251+4
.LPIC22:
	add	r3, pc
	mov	r1, r3
	movw	r2, #569
	ldr	r3, .L251+8
.LPIC23:
	add	r3, pc
	bl	__assert_fail(PLT)
.L242:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	cmp	r3, #0
	bne	.L244
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L245
.L248:
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #44]
	ldr	r3, [r7, #4]
	ldr	r0, [r3, #100]
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	ldr	r3, [r3]
	mov	r0, r1
	mov	r1, r3
	bl	_ZN18hb_unicode_funcs_t6scriptEj(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r2, [r7, #8]
	movw	r3, #31097
	movt	r3, 23161
	cmp	r2, r3
	beq	.L246
	ldr	r2, [r7, #8]
	movw	r3, #28264
	movt	r3, 23145
	cmp	r2, r3
	beq	.L246
	ldr	r2, [r7, #8]
	movw	r3, #31354
	movt	r3, 23162
	cmp	r2, r3
	beq	.L246
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #8]
	str	r2, [r3, #64]
	b	.L247
.L246:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L245:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #88]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bhi	.L248
.L247:
.L244:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	cmp	r3, #0
	bne	.L249
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	mov	r0, r3
	bl	hb_script_get_horizontal_direction(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #60]
.L249:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #68]
	cmp	r3, #0
	bne	.L241
	bl	hb_language_get_default(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #68]
.L241:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L252:
	.align	2
.L251:
	.word	.LC6-(.LPIC21+4)
	.word	.LC1-(.LPIC22+4)
	.word	_ZZN11hb_buffer_t24guess_segment_propertiesEvE19__PRETTY_FUNCTION__-(.LPIC23+4)
	.fnend
	.size	_ZN11hb_buffer_t24guess_segment_propertiesEv, .-_ZN11hb_buffer_t24guess_segment_propertiesEv
	.section	.rodata
	.align	2
.LC7:
	.ascii	"BUFFER\000"
	.align	2
.LC8:
	.ascii	"Current var allocation: %s\000"
	.section	.text._ZL19dump_var_allocationPK11hb_buffer_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL19dump_var_allocationPK11hb_buffer_t, %function
_ZL19dump_var_allocationPK11hb_buffer_t:
	.fnstart
.LFB148:
	@ args = 0, pretend = 0, frame = 96
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #112
	add	r7, sp, #16
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #92]
	b	.L254
.L255:
	ldr	r3, [r7, #92]
	rsb	r3, r3, #7
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrb	r3, [r3, #116]	@ zero_extendqisi2
	adds	r3, r3, #48
	uxtb	r2, r3
	add	r1, r7, #12
	ldr	r3, [r7, #92]
	add	r3, r3, r1
	strb	r2, [r3]
	ldr	r3, [r7, #92]
	adds	r3, r3, #1
	str	r3, [r7, #92]
.L254:
	ldr	r3, [r7, #92]
	cmp	r3, #7
	bls	.L255
	movs	r3, #0
	strb	r3, [r7, #20]
	movs	r3, #0
	str	r3, [sp]
	movs	r3, #0
	str	r3, [sp, #4]
	ldr	r3, .L256
.LPIC24:
	add	r3, pc
	str	r3, [sp, #8]
	add	r3, r7, #12
	str	r3, [sp, #12]
	ldr	r3, .L256+4
.LPIC25:
	add	r3, pc
	mov	r0, r3
	ldr	r1, [r7, #4]
	movs	r2, #0
	movs	r3, #0
	bl	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z(PLT)
	adds	r7, r7, #96
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L257:
	.align	2
.L256:
	.word	.LC8-(.LPIC24+4)
	.word	.LC7-(.LPIC25+4)
	.cantunwind
	.fnend
	.size	_ZL19dump_var_allocationPK11hb_buffer_t, .-_ZL19dump_var_allocationPK11hb_buffer_t
	.section	.rodata
	.align	2
.LC9:
	.ascii	"byte_i < 8 && byte_i + count <= 8\000"
	.align	2
.LC10:
	.ascii	"Allocating var bytes %d..%d for %s\000"
	.align	2
.LC11:
	.ascii	"!allocated_var_bytes[i]\000"
	.section	.text._ZN11hb_buffer_t12allocate_varEjjPKc,"ax",%progbits
	.align	2
	.global	_ZN11hb_buffer_t12allocate_varEjjPKc
	.hidden	_ZN11hb_buffer_t12allocate_varEjjPKc
	.thumb
	.thumb_func
	.type	_ZN11hb_buffer_t12allocate_varEjjPKc, %function
_ZN11hb_buffer_t12allocate_varEjjPKc:
	.fnstart
.LFB149:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #24
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #8]
	cmp	r3, #7
	bhi	.L259
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	cmp	r3, #8
	bls	.L260
.L259:
	ldr	r3, .L265
.LPIC26:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L265+4
.LPIC27:
	add	r3, pc
	mov	r1, r3
	movw	r2, #611
	ldr	r3, .L265+8
.LPIC28:
	add	r3, pc
	bl	__assert_fail(PLT)
.L260:
	movs	r0, #0
	movs	r1, #0
	bl	_ZL9_hb_debugjj(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L261
	ldr	r0, [r7, #12]
	bl	_ZL19dump_var_allocationPK11hb_buffer_t(PLT)
.L261:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	subs	r3, r3, #1
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	ldr	r2, .L265+12
.LPIC29:
	add	r2, pc
	str	r2, [sp, #8]
	ldr	r2, [r7, #8]
	str	r2, [sp, #12]
	str	r3, [sp, #16]
	ldr	r3, [r7]
	str	r3, [sp, #20]
	ldr	r3, .L265+16
.LPIC30:
	add	r3, pc
	mov	r0, r3
	ldr	r1, [r7, #12]
	movs	r2, #0
	movs	r3, #0
	bl	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z(PLT)
	ldr	r3, [r7, #8]
	str	r3, [r7, #20]
	b	.L262
.L264:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	adds	r3, r3, #112
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L263
	ldr	r3, .L265+20
.LPIC31:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L265+24
.LPIC32:
	add	r3, pc
	mov	r1, r3
	mov	r2, #620
	ldr	r3, .L265+28
.LPIC33:
	add	r3, pc
	bl	__assert_fail(PLT)
.L263:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	adds	r3, r3, #112
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	adds	r3, r3, #1
	uxtb	r2, r3
	ldr	r1, [r7, #12]
	ldr	r3, [r7, #20]
	add	r3, r3, r1
	adds	r3, r3, #112
	strb	r2, [r3, #4]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #20]
	adds	r3, r3, #30
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r7]
	str	r2, [r3, #4]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L262:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	add	r2, r2, r3
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bhi	.L264
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L266:
	.align	2
.L265:
	.word	.LC9-(.LPIC26+4)
	.word	.LC1-(.LPIC27+4)
	.word	_ZZN11hb_buffer_t12allocate_varEjjPKcE19__PRETTY_FUNCTION__-(.LPIC28+4)
	.word	.LC10-(.LPIC29+4)
	.word	.LC7-(.LPIC30+4)
	.word	.LC11-(.LPIC31+4)
	.word	.LC1-(.LPIC32+4)
	.word	_ZZN11hb_buffer_t12allocate_varEjjPKcE19__PRETTY_FUNCTION__-(.LPIC33+4)
	.cantunwind
	.fnend
	.size	_ZN11hb_buffer_t12allocate_varEjjPKc, .-_ZN11hb_buffer_t12allocate_varEjjPKc
	.section	.rodata
	.align	2
.LC12:
	.ascii	"Deallocating var bytes %d..%d for %s\000"
	.align	2
.LC13:
	.ascii	"allocated_var_bytes[i]\000"
	.align	2
.LC14:
	.ascii	"0 == strcmp (allocated_var_owner[i], owner)\000"
	.section	.text._ZN11hb_buffer_t14deallocate_varEjjPKc,"ax",%progbits
	.align	2
	.global	_ZN11hb_buffer_t14deallocate_varEjjPKc
	.hidden	_ZN11hb_buffer_t14deallocate_varEjjPKc
	.thumb
	.thumb_func
	.type	_ZN11hb_buffer_t14deallocate_varEjjPKc, %function
_ZN11hb_buffer_t14deallocate_varEjjPKc:
	.fnstart
.LFB150:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #24
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r0, #0
	movs	r1, #0
	bl	_ZL9_hb_debugjj(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L268
	ldr	r0, [r7, #12]
	bl	_ZL19dump_var_allocationPK11hb_buffer_t(PLT)
.L268:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	subs	r3, r3, #1
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	ldr	r2, .L275
.LPIC34:
	add	r2, pc
	str	r2, [sp, #8]
	ldr	r2, [r7, #8]
	str	r2, [sp, #12]
	str	r3, [sp, #16]
	ldr	r3, [r7]
	str	r3, [sp, #20]
	ldr	r3, .L275+4
.LPIC35:
	add	r3, pc
	mov	r0, r3
	ldr	r1, [r7, #12]
	movs	r2, #0
	movs	r3, #0
	bl	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z(PLT)
	ldr	r3, [r7, #8]
	cmp	r3, #7
	bhi	.L269
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	cmp	r3, #8
	bls	.L270
.L269:
	ldr	r3, .L275+8
.LPIC36:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L275+12
.LPIC37:
	add	r3, pc
	mov	r1, r3
	movw	r2, #635
	ldr	r3, .L275+16
.LPIC38:
	add	r3, pc
	bl	__assert_fail(PLT)
.L270:
	ldr	r3, [r7, #8]
	str	r3, [r7, #20]
	b	.L271
.L274:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	adds	r3, r3, #112
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L272
	ldr	r3, .L275+20
.LPIC39:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L275+24
.LPIC40:
	add	r3, pc
	mov	r1, r3
	movw	r2, #637
	ldr	r3, .L275+28
.LPIC41:
	add	r3, pc
	bl	__assert_fail(PLT)
.L272:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #20]
	adds	r3, r3, #30
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r1, [r7]
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L273
	ldr	r3, .L275+32
.LPIC42:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L275+36
.LPIC43:
	add	r3, pc
	mov	r1, r3
	movw	r2, #638
	ldr	r3, .L275+40
.LPIC44:
	add	r3, pc
	bl	__assert_fail(PLT)
.L273:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	adds	r3, r3, #112
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	subs	r3, r3, #1
	uxtb	r2, r3
	ldr	r1, [r7, #12]
	ldr	r3, [r7, #20]
	add	r3, r3, r1
	adds	r3, r3, #112
	strb	r2, [r3, #4]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L271:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	add	r2, r2, r3
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bhi	.L274
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L276:
	.align	2
.L275:
	.word	.LC12-(.LPIC34+4)
	.word	.LC7-(.LPIC35+4)
	.word	.LC9-(.LPIC36+4)
	.word	.LC1-(.LPIC37+4)
	.word	_ZZN11hb_buffer_t14deallocate_varEjjPKcE19__PRETTY_FUNCTION__-(.LPIC38+4)
	.word	.LC13-(.LPIC39+4)
	.word	.LC1-(.LPIC40+4)
	.word	_ZZN11hb_buffer_t14deallocate_varEjjPKcE19__PRETTY_FUNCTION__-(.LPIC41+4)
	.word	.LC14-(.LPIC42+4)
	.word	.LC1-(.LPIC43+4)
	.word	_ZZN11hb_buffer_t14deallocate_varEjjPKcE19__PRETTY_FUNCTION__-(.LPIC44+4)
	.cantunwind
	.fnend
	.size	_ZN11hb_buffer_t14deallocate_varEjjPKc, .-_ZN11hb_buffer_t14deallocate_varEjjPKc
	.section	.rodata
	.align	2
.LC15:
	.ascii	"Asserting var bytes %d..%d for %s\000"
	.section	.text._ZN11hb_buffer_t10assert_varEjjPKc,"ax",%progbits
	.align	2
	.global	_ZN11hb_buffer_t10assert_varEjjPKc
	.hidden	_ZN11hb_buffer_t10assert_varEjjPKc
	.thumb
	.thumb_func
	.type	_ZN11hb_buffer_t10assert_varEjjPKc, %function
_ZN11hb_buffer_t10assert_varEjjPKc:
	.fnstart
.LFB151:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #24
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r0, #0
	movs	r1, #0
	bl	_ZL9_hb_debugjj(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L278
	ldr	r0, [r7, #12]
	bl	_ZL19dump_var_allocationPK11hb_buffer_t(PLT)
.L278:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	subs	r3, r3, #1
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	ldr	r2, .L285
.LPIC45:
	add	r2, pc
	str	r2, [sp, #8]
	ldr	r2, [r7, #8]
	str	r2, [sp, #12]
	str	r3, [sp, #16]
	ldr	r3, [r7]
	str	r3, [sp, #20]
	ldr	r3, .L285+4
.LPIC46:
	add	r3, pc
	mov	r0, r3
	ldr	r1, [r7, #12]
	movs	r2, #0
	movs	r3, #0
	bl	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z(PLT)
	ldr	r3, [r7, #8]
	cmp	r3, #7
	bhi	.L279
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	cmp	r3, #8
	bls	.L280
.L279:
	ldr	r3, .L285+8
.LPIC47:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L285+12
.LPIC48:
	add	r3, pc
	mov	r1, r3
	mov	r2, #652
	ldr	r3, .L285+16
.LPIC49:
	add	r3, pc
	bl	__assert_fail(PLT)
.L280:
	ldr	r3, [r7, #8]
	str	r3, [r7, #20]
	b	.L281
.L284:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	adds	r3, r3, #112
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L282
	ldr	r3, .L285+20
.LPIC50:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L285+24
.LPIC51:
	add	r3, pc
	mov	r1, r3
	movw	r2, #654
	ldr	r3, .L285+28
.LPIC52:
	add	r3, pc
	bl	__assert_fail(PLT)
.L282:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #20]
	adds	r3, r3, #30
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r1, [r7]
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L283
	ldr	r3, .L285+32
.LPIC53:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L285+36
.LPIC54:
	add	r3, pc
	mov	r1, r3
	movw	r2, #655
	ldr	r3, .L285+40
.LPIC55:
	add	r3, pc
	bl	__assert_fail(PLT)
.L283:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L281:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	add	r2, r2, r3
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bhi	.L284
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L286:
	.align	2
.L285:
	.word	.LC15-(.LPIC45+4)
	.word	.LC7-(.LPIC46+4)
	.word	.LC9-(.LPIC47+4)
	.word	.LC1-(.LPIC48+4)
	.word	_ZZN11hb_buffer_t10assert_varEjjPKcE19__PRETTY_FUNCTION__-(.LPIC49+4)
	.word	.LC13-(.LPIC50+4)
	.word	.LC1-(.LPIC51+4)
	.word	_ZZN11hb_buffer_t10assert_varEjjPKcE19__PRETTY_FUNCTION__-(.LPIC52+4)
	.word	.LC14-(.LPIC53+4)
	.word	.LC1-(.LPIC54+4)
	.word	_ZZN11hb_buffer_t10assert_varEjjPKcE19__PRETTY_FUNCTION__-(.LPIC55+4)
	.cantunwind
	.fnend
	.size	_ZN11hb_buffer_t10assert_varEjjPKc, .-_ZN11hb_buffer_t10assert_varEjjPKc
	.section	.text._ZN11hb_buffer_t18deallocate_var_allEv,"ax",%progbits
	.align	2
	.global	_ZN11hb_buffer_t18deallocate_var_allEv
	.hidden	_ZN11hb_buffer_t18deallocate_var_allEv
	.thumb
	.thumb_func
	.type	_ZN11hb_buffer_t18deallocate_var_allEv, %function
_ZN11hb_buffer_t18deallocate_var_allEv:
	.fnstart
.LFB152:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	adds	r3, r3, #116
	mov	r0, r3
	movs	r1, #0
	movs	r2, #8
	bl	memset(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #124
	mov	r0, r3
	movs	r1, #0
	movs	r2, #32
	bl	memset(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN11hb_buffer_t18deallocate_var_allEv, .-_ZN11hb_buffer_t18deallocate_var_allEv
	.section	.text.hb_buffer_create,"ax",%progbits
	.align	2
	.global	hb_buffer_create
	.thumb
	.thumb_func
	.type	hb_buffer_create, %function
hb_buffer_create:
	.fnstart
.LFB153:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	bl	_Z16hb_object_createI11hb_buffer_tEPT_v(PLT)
	mov	r3, r0
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L289
	bl	hb_buffer_get_empty(PLT)
	mov	r3, r0
	b	.L290
.L289:
	ldr	r0, [r7, #4]
	bl	_ZN11hb_buffer_t5resetEv(PLT)
	ldr	r3, [r7, #4]
.L290:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_buffer_create, .-hb_buffer_create
	.section	.text.hb_buffer_get_empty,"ax",%progbits
	.align	2
	.global	hb_buffer_get_empty
	.thumb
	.thumb_func
	.type	hb_buffer_get_empty, %function
hb_buffer_get_empty:
	.fnstart
.LFB154:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L293
.LPIC56:
	add	r3, pc
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L294:
	.align	2
.L293:
	.word	_ZZ19hb_buffer_get_emptyE14_hb_buffer_nil-(.LPIC56+4)
	.cantunwind
	.fnend
	.size	hb_buffer_get_empty, .-hb_buffer_get_empty
	.section	.text.hb_buffer_reference,"ax",%progbits
	.align	2
	.global	hb_buffer_reference
	.thumb
	.thumb_func
	.type	hb_buffer_reference, %function
hb_buffer_reference:
	.fnstart
.LFB155:
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
	bl	_Z19hb_object_referenceI11hb_buffer_tEPT_S2_(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_buffer_reference, .-hb_buffer_reference
	.section	.text.hb_buffer_destroy,"ax",%progbits
	.align	2
	.global	hb_buffer_destroy
	.thumb
	.thumb_func
	.type	hb_buffer_destroy, %function
hb_buffer_destroy:
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
	ldr	r0, [r7, #4]
	bl	_Z17hb_object_destroyI11hb_buffer_tEbPT_(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L298
	b	.L297
.L298:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	mov	r0, r3
	bl	hb_unicode_funcs_destroy(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	mov	r0, r3
	bl	free(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #108]
	mov	r0, r3
	bl	free(PLT)
	ldr	r0, [r7, #4]
	bl	free(PLT)
.L297:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_buffer_destroy, .-hb_buffer_destroy
	.section	.text.hb_buffer_set_user_data,"ax",%progbits
	.align	2
	.global	hb_buffer_set_user_data
	.thumb
	.thumb_func
	.type	hb_buffer_set_user_data, %function
hb_buffer_set_user_data:
	.fnstart
.LFB157:
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
	bl	_Z23hb_object_set_user_dataI11hb_buffer_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_buffer_set_user_data, .-hb_buffer_set_user_data
	.section	.text.hb_buffer_get_user_data,"ax",%progbits
	.align	2
	.global	hb_buffer_get_user_data
	.thumb
	.thumb_func
	.type	hb_buffer_get_user_data, %function
hb_buffer_get_user_data:
	.fnstart
.LFB158:
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
	bl	_Z23hb_object_get_user_dataI11hb_buffer_tEPvPT_P18hb_user_data_key_t(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_buffer_get_user_data, .-hb_buffer_get_user_data
	.section	.text.hb_buffer_set_content_type,"ax",%progbits
	.align	2
	.global	hb_buffer_set_content_type
	.thumb
	.thumb_func
	.type	hb_buffer_set_content_type, %function
hb_buffer_set_content_type:
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
	ldr	r2, [r7]
	str	r2, [r3, #56]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	hb_buffer_set_content_type, .-hb_buffer_set_content_type
	.section	.text.hb_buffer_get_content_type,"ax",%progbits
	.align	2
	.global	hb_buffer_get_content_type
	.thumb
	.thumb_func
	.type	hb_buffer_get_content_type, %function
hb_buffer_get_content_type:
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
	ldr	r3, [r3, #56]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	hb_buffer_get_content_type, .-hb_buffer_get_content_type
	.section	.text.hb_buffer_set_unicode_funcs,"ax",%progbits
	.align	2
	.global	hb_buffer_set_unicode_funcs
	.thumb
	.thumb_func
	.type	hb_buffer_set_unicode_funcs, %function
hb_buffer_set_unicode_funcs:
	.fnstart
.LFB161:
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
	bl	_Z18hb_object_is_inertI11hb_buffer_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L308
	b	.L307
.L308:
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L310
	bl	hb_unicode_funcs_get_default(PLT)
	mov	r3, r0
	str	r3, [r7]
.L310:
	ldr	r0, [r7]
	bl	hb_unicode_funcs_reference(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	mov	r0, r3
	bl	hb_unicode_funcs_destroy(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #44]
.L307:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_buffer_set_unicode_funcs, .-hb_buffer_set_unicode_funcs
	.section	.text.hb_buffer_get_unicode_funcs,"ax",%progbits
	.align	2
	.global	hb_buffer_get_unicode_funcs
	.thumb
	.thumb_func
	.type	hb_buffer_get_unicode_funcs, %function
hb_buffer_get_unicode_funcs:
	.fnstart
.LFB162:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	hb_buffer_get_unicode_funcs, .-hb_buffer_get_unicode_funcs
	.section	.text.hb_buffer_set_direction,"ax",%progbits
	.align	2
	.global	hb_buffer_set_direction
	.thumb
	.thumb_func
	.type	hb_buffer_set_direction, %function
hb_buffer_set_direction:
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
	str	r1, [r7]
	ldr	r0, [r7, #4]
	bl	_Z18hb_object_is_inertI11hb_buffer_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L314
	b	.L313
.L314:
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #60]
.L313:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_buffer_set_direction, .-hb_buffer_set_direction
	.section	.text.hb_buffer_get_direction,"ax",%progbits
	.align	2
	.global	hb_buffer_get_direction
	.thumb
	.thumb_func
	.type	hb_buffer_get_direction, %function
hb_buffer_get_direction:
	.fnstart
.LFB164:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	hb_buffer_get_direction, .-hb_buffer_get_direction
	.section	.text.hb_buffer_set_script,"ax",%progbits
	.align	2
	.global	hb_buffer_set_script
	.thumb
	.thumb_func
	.type	hb_buffer_set_script, %function
hb_buffer_set_script:
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
	str	r1, [r7]
	ldr	r0, [r7, #4]
	bl	_Z18hb_object_is_inertI11hb_buffer_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L319
	b	.L318
.L319:
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #64]
.L318:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_buffer_set_script, .-hb_buffer_set_script
	.section	.text.hb_buffer_get_script,"ax",%progbits
	.align	2
	.global	hb_buffer_get_script
	.thumb
	.thumb_func
	.type	hb_buffer_get_script, %function
hb_buffer_get_script:
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
	ldr	r3, [r3, #64]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	hb_buffer_get_script, .-hb_buffer_get_script
	.section	.text.hb_buffer_set_language,"ax",%progbits
	.align	2
	.global	hb_buffer_set_language
	.thumb
	.thumb_func
	.type	hb_buffer_set_language, %function
hb_buffer_set_language:
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
	ldr	r0, [r7, #4]
	bl	_Z18hb_object_is_inertI11hb_buffer_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L324
	b	.L323
.L324:
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #68]
.L323:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_buffer_set_language, .-hb_buffer_set_language
	.section	.text.hb_buffer_get_language,"ax",%progbits
	.align	2
	.global	hb_buffer_get_language
	.thumb
	.thumb_func
	.type	hb_buffer_get_language, %function
hb_buffer_get_language:
	.fnstart
.LFB168:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #68]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	hb_buffer_get_language, .-hb_buffer_get_language
	.section	.text.hb_buffer_set_segment_properties,"ax",%progbits
	.align	2
	.global	hb_buffer_set_segment_properties
	.thumb
	.thumb_func
	.type	hb_buffer_set_segment_properties, %function
hb_buffer_set_segment_properties:
	.fnstart
.LFB169:
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
	ldr	r0, [r7, #4]
	bl	_Z18hb_object_is_inertI11hb_buffer_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L329
	b	.L328
.L329:
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	add	r4, r2, #60
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
.L328:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.fnend
	.size	hb_buffer_set_segment_properties, .-hb_buffer_set_segment_properties
	.section	.text.hb_buffer_get_segment_properties,"ax",%progbits
	.align	2
	.global	hb_buffer_get_segment_properties
	.thumb
	.thumb_func
	.type	hb_buffer_get_segment_properties, %function
hb_buffer_get_segment_properties:
	.fnstart
.LFB170:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	mov	r4, r2
	add	r5, r3, #60
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7}
	bx	lr
	.cantunwind
	.fnend
	.size	hb_buffer_get_segment_properties, .-hb_buffer_get_segment_properties
	.section	.text.hb_buffer_set_flags,"ax",%progbits
	.align	2
	.global	hb_buffer_set_flags
	.thumb
	.thumb_func
	.type	hb_buffer_set_flags, %function
hb_buffer_set_flags:
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
	str	r1, [r7]
	ldr	r0, [r7, #4]
	bl	_Z18hb_object_is_inertI11hb_buffer_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L333
	b	.L332
.L333:
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #48]
.L332:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_buffer_set_flags, .-hb_buffer_set_flags
	.section	.text.hb_buffer_get_flags,"ax",%progbits
	.align	2
	.global	hb_buffer_get_flags
	.thumb
	.thumb_func
	.type	hb_buffer_get_flags, %function
hb_buffer_get_flags:
	.fnstart
.LFB172:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	hb_buffer_get_flags, .-hb_buffer_get_flags
	.section	.text.hb_buffer_set_replacement_codepoint,"ax",%progbits
	.align	2
	.global	hb_buffer_set_replacement_codepoint
	.thumb
	.thumb_func
	.type	hb_buffer_set_replacement_codepoint, %function
hb_buffer_set_replacement_codepoint:
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
	str	r1, [r7]
	ldr	r0, [r7, #4]
	bl	_Z18hb_object_is_inertI11hb_buffer_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L338
	b	.L337
.L338:
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #52]
.L337:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_buffer_set_replacement_codepoint, .-hb_buffer_set_replacement_codepoint
	.section	.text.hb_buffer_get_replacement_codepoint,"ax",%progbits
	.align	2
	.global	hb_buffer_get_replacement_codepoint
	.thumb
	.thumb_func
	.type	hb_buffer_get_replacement_codepoint, %function
hb_buffer_get_replacement_codepoint:
	.fnstart
.LFB174:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #52]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	hb_buffer_get_replacement_codepoint, .-hb_buffer_get_replacement_codepoint
	.section	.text.hb_buffer_reset,"ax",%progbits
	.align	2
	.global	hb_buffer_reset
	.thumb
	.thumb_func
	.type	hb_buffer_reset, %function
hb_buffer_reset:
	.fnstart
.LFB175:
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
	bl	_ZN11hb_buffer_t5resetEv(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_buffer_reset, .-hb_buffer_reset
	.section	.text.hb_buffer_clear_contents,"ax",%progbits
	.align	2
	.global	hb_buffer_clear_contents
	.thumb
	.thumb_func
	.type	hb_buffer_clear_contents, %function
hb_buffer_clear_contents:
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
	bl	_ZN11hb_buffer_t5clearEv(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_buffer_clear_contents, .-hb_buffer_clear_contents
	.section	.text.hb_buffer_pre_allocate,"ax",%progbits
	.align	2
	.global	hb_buffer_pre_allocate
	.thumb
	.thumb_func
	.type	hb_buffer_pre_allocate, %function
hb_buffer_pre_allocate:
	.fnstart
.LFB177:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	_ZN11hb_buffer_t6ensureEj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	hb_buffer_pre_allocate, .-hb_buffer_pre_allocate
	.section	.text.hb_buffer_allocation_successful,"ax",%progbits
	.align	2
	.global	hb_buffer_allocation_successful
	.thumb
	.thumb_func
	.type	hb_buffer_allocation_successful, %function
hb_buffer_allocation_successful:
	.fnstart
.LFB178:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #80]	@ zero_extendqisi2
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
	.size	hb_buffer_allocation_successful, .-hb_buffer_allocation_successful
	.section	.text.hb_buffer_add,"ax",%progbits
	.align	2
	.global	hb_buffer_add
	.thumb
	.thumb_func
	.type	hb_buffer_add, %function
hb_buffer_add:
	.fnstart
.LFB179:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	_ZN11hb_buffer_t3addEjj(PLT)
	ldr	r0, [r7, #12]
	movs	r1, #1
	bl	_ZN11hb_buffer_t13clear_contextEj(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	hb_buffer_add, .-hb_buffer_add
	.section	.text.hb_buffer_set_length,"ax",%progbits
	.align	2
	.global	hb_buffer_set_length
	.thumb
	.thumb_func
	.type	hb_buffer_set_length, %function
hb_buffer_set_length:
	.fnstart
.LFB180:
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
	bl	_Z18hb_object_is_inertI11hb_buffer_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L350
	ldr	r3, [r7]
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	b	.L351
.L350:
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	_ZN11hb_buffer_t6ensureEj(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L352
	movs	r3, #0
	b	.L351
.L352:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #88]
	ldr	r3, [r7]
	cmp	r2, r3
	bcs	.L353
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #100]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #88]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r1, r1, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	ldr	r2, [r7]
	subs	r2, r2, r3
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r0, r1
	movs	r1, #0
	mov	r2, r3
	bl	memset(PLT)
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #82]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L353
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #108]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #88]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r1, r1, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	ldr	r2, [r7]
	subs	r2, r2, r3
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r0, r1
	movs	r1, #0
	mov	r2, r3
	bl	memset(PLT)
.L353:
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #88]
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L354
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #56]
	ldr	r0, [r7, #4]
	movs	r1, #0
	bl	_ZN11hb_buffer_t13clear_contextEj(PLT)
.L354:
	ldr	r0, [r7, #4]
	movs	r1, #1
	bl	_ZN11hb_buffer_t13clear_contextEj(PLT)
	movs	r3, #1
.L351:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_buffer_set_length, .-hb_buffer_set_length
	.section	.text.hb_buffer_get_length,"ax",%progbits
	.align	2
	.global	hb_buffer_get_length
	.thumb
	.thumb_func
	.type	hb_buffer_get_length, %function
hb_buffer_get_length:
	.fnstart
.LFB181:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	hb_buffer_get_length, .-hb_buffer_get_length
	.section	.text.hb_buffer_get_glyph_infos,"ax",%progbits
	.align	2
	.global	hb_buffer_get_glyph_infos
	.thumb
	.thumb_func
	.type	hb_buffer_get_glyph_infos, %function
hb_buffer_get_glyph_infos:
	.fnstart
.LFB182:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L358
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #88]
	ldr	r3, [r7]
	str	r2, [r3]
.L358:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	hb_buffer_get_glyph_infos, .-hb_buffer_get_glyph_infos
	.section	.text.hb_buffer_get_glyph_positions,"ax",%progbits
	.align	2
	.global	hb_buffer_get_glyph_positions
	.thumb
	.thumb_func
	.type	hb_buffer_get_glyph_positions, %function
hb_buffer_get_glyph_positions:
	.fnstart
.LFB183:
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
	ldrb	r3, [r3, #82]	@ zero_extendqisi2
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L361
	ldr	r0, [r7, #4]
	bl	_ZN11hb_buffer_t15clear_positionsEv(PLT)
.L361:
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L362
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #88]
	ldr	r3, [r7]
	str	r2, [r3]
.L362:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #108]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_buffer_get_glyph_positions, .-hb_buffer_get_glyph_positions
	.section	.text.hb_buffer_reverse,"ax",%progbits
	.align	2
	.global	hb_buffer_reverse
	.thumb
	.thumb_func
	.type	hb_buffer_reverse, %function
hb_buffer_reverse:
	.fnstart
.LFB184:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	_ZN11hb_buffer_t7reverseEv(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	hb_buffer_reverse, .-hb_buffer_reverse
	.section	.text.hb_buffer_reverse_clusters,"ax",%progbits
	.align	2
	.global	hb_buffer_reverse_clusters
	.thumb
	.thumb_func
	.type	hb_buffer_reverse_clusters, %function
hb_buffer_reverse_clusters:
	.fnstart
.LFB185:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	_ZN11hb_buffer_t16reverse_clustersEv(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	hb_buffer_reverse_clusters, .-hb_buffer_reverse_clusters
	.section	.text.hb_buffer_guess_segment_properties,"ax",%progbits
	.align	2
	.global	hb_buffer_guess_segment_properties
	.thumb
	.thumb_func
	.type	hb_buffer_guess_segment_properties, %function
hb_buffer_guess_segment_properties:
	.fnstart
.LFB186:
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
	bl	_ZN11hb_buffer_t24guess_segment_propertiesEv(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_buffer_guess_segment_properties, .-hb_buffer_guess_segment_properties
	.section	.text.hb_buffer_add_utf8,"ax",%progbits
	.align	2
	.global	hb_buffer_add_utf8
	.thumb
	.thumb_func
	.type	hb_buffer_add_utf8, %function
hb_buffer_add_utf8:
	.fnstart
.LFB188:
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
	bl	_Z17hb_buffer_add_utfILb1EhEvP11hb_buffer_tPKT0_iji(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_buffer_add_utf8, .-hb_buffer_add_utf8
	.section	.text.hb_buffer_add_utf16,"ax",%progbits
	.align	2
	.global	hb_buffer_add_utf16
	.thumb
	.thumb_func
	.type	hb_buffer_add_utf16, %function
hb_buffer_add_utf16:
	.fnstart
.LFB189:
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
	bl	_Z17hb_buffer_add_utfILb1EtEvP11hb_buffer_tPKT0_iji(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_buffer_add_utf16, .-hb_buffer_add_utf16
	.section	.text.hb_buffer_add_utf32,"ax",%progbits
	.align	2
	.global	hb_buffer_add_utf32
	.thumb
	.thumb_func
	.type	hb_buffer_add_utf32, %function
hb_buffer_add_utf32:
	.fnstart
.LFB190:
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
	bl	_Z17hb_buffer_add_utfILb1EjEvP11hb_buffer_tPKT0_iji(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_buffer_add_utf32, .-hb_buffer_add_utf32
	.section	.text.hb_buffer_add_codepoints,"ax",%progbits
	.align	2
	.global	hb_buffer_add_codepoints
	.thumb
	.thumb_func
	.type	hb_buffer_add_codepoints, %function
hb_buffer_add_codepoints:
	.fnstart
.LFB191:
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
	bl	_Z17hb_buffer_add_utfILb0EjEvP11hb_buffer_tPKT0_iji(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_buffer_add_codepoints, .-hb_buffer_add_codepoints
	.section	.text._ZL22compare_info_codepointPK15hb_glyph_info_tS1_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL22compare_info_codepointPK15hb_glyph_info_tS1_, %function
_ZL22compare_info_codepointPK15hb_glyph_info_tS1_:
	.fnstart
.LFB192:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	subs	r3, r2, r3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZL22compare_info_codepointPK15hb_glyph_info_tS1_, .-_ZL22compare_info_codepointPK15hb_glyph_info_tS1_
	.section	.text._ZL24normalize_glyphs_clusterP11hb_buffer_tjjb,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL24normalize_glyphs_clusterP11hb_buffer_tjjb, %function
_ZL24normalize_glyphs_clusterP11hb_buffer_tjjb:
	.fnstart
.LFB193:
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
	strb	r3, [r7, #3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #108]
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #44]
	movs	r3, #0
	str	r3, [r7, #40]
	ldr	r3, [r7, #8]
	str	r3, [r7, #36]
	b	.L374
.L375:
	ldr	r2, [r7, #36]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r2, [r7, #36]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #40]
	add	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L374:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcc	.L375
	movs	r3, #0
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #8]
	str	r3, [r7, #24]
	b	.L376
.L377:
	ldr	r2, [r7, #24]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #16]
	adds	r1, r2, r3
	ldr	r2, [r7, #24]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	str	r3, [r1, #8]
	ldr	r2, [r7, #24]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #16]
	adds	r1, r2, r3
	ldr	r2, [r7, #24]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r1, #12]
	ldr	r2, [r7, #24]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #32]
	add	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r2, [r7, #24]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r2, [r7, #24]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [r3]
	ldr	r2, [r7, #24]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
.L376:
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcc	.L377
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L378
	ldr	r2, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	subs	r3, r3, #20
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	ldr	r2, [r7, #44]
	str	r2, [r3]
	ldr	r2, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	subs	r3, r3, #20
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	ldr	r2, [r7, #40]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #100]
	ldr	r2, [r7, #8]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r0, r1, r3
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #8]
	subs	r3, r2, r3
	subs	r1, r3, #1
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #108]
	ldr	r2, [r7, #8]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r4
	ldr	r2, .L382
.LPIC57:
	add	r2, pc
	bl	_Z14hb_bubble_sortI15hb_glyph_info_t19hb_glyph_position_tEvPT_jPFiPKS2_S5_EPT0_(PLT)
	b	.L373
.L378:
	ldr	r2, [r7, #8]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #16]
	adds	r1, r2, r3
	ldr	r2, [r7, #8]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #44]
	add	r3, r3, r2
	str	r3, [r1]
	ldr	r2, [r7, #8]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #16]
	adds	r1, r2, r3
	ldr	r2, [r7, #8]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #40]
	add	r3, r3, r2
	str	r3, [r1, #4]
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #20]
	b	.L380
.L381:
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #16]
	adds	r1, r2, r3
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #44]
	subs	r3, r2, r3
	str	r3, [r1, #8]
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #16]
	adds	r1, r2, r3
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #40]
	subs	r3, r2, r3
	str	r3, [r1, #12]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L380:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcc	.L381
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #100]
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r0, r1, r3
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #8]
	subs	r3, r2, r3
	subs	r1, r3, #1
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #108]
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r4
	ldr	r2, .L382+4
.LPIC58:
	add	r2, pc
	bl	_Z14hb_bubble_sortI15hb_glyph_info_t19hb_glyph_position_tEvPT_jPFiPKS2_S5_EPT0_(PLT)
.L373:
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L383:
	.align	2
.L382:
	.word	_ZL22compare_info_codepointPK15hb_glyph_info_tS1_-(.LPIC57+4)
	.word	_ZL22compare_info_codepointPK15hb_glyph_info_tS1_-(.LPIC58+4)
	.fnend
	.size	_ZL24normalize_glyphs_clusterP11hb_buffer_tjjb, .-_ZL24normalize_glyphs_clusterP11hb_buffer_tjjb
	.section	.rodata
	.align	2
.LC16:
	.ascii	"buffer->have_positions\000"
	.align	2
.LC17:
	.ascii	"buffer->content_type == HB_BUFFER_CONTENT_TYPE_GLYP"
	.ascii	"HS\000"
	.section	.text.hb_buffer_normalize_glyphs,"ax",%progbits
	.align	2
	.global	hb_buffer_normalize_glyphs
	.thumb
	.thumb_func
	.type	hb_buffer_normalize_glyphs, %function
hb_buffer_normalize_glyphs:
	.fnstart
.LFB194:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #32
	sub	sp, sp, #32
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #82]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L385
	ldr	r3, .L392
.LPIC59:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L392+4
.LPIC60:
	add	r3, pc
	mov	r1, r3
	movw	r2, #1555
	ldr	r3, .L392+8
.LPIC61:
	add	r3, pc
	bl	__assert_fail(PLT)
.L385:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	cmp	r3, #2
	beq	.L386
	ldr	r3, .L392+12
.LPIC62:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L392+16
.LPIC63:
	add	r3, pc
	mov	r1, r3
	movw	r2, #1556
	ldr	r3, .L392+20
.LPIC64:
	add	r3, pc
	bl	__assert_fail(PLT)
.L386:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	bic	r3, r3, #2
	cmp	r3, #5
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	strb	r3, [r7, #23]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L387
	b	.L384
.L387:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #24]
	b	.L389
.L391:
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldr	r1, [r3, #8]
	ldr	r2, [r7, #24]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldr	r3, [r3, #8]
	cmp	r1, r3
	beq	.L390
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #28]
	ldr	r2, [r7, #24]
	bl	_ZL24normalize_glyphs_clusterP11hb_buffer_tjjb(PLT)
	ldr	r3, [r7, #24]
	str	r3, [r7, #28]
.L390:
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
.L389:
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bcc	.L391
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #28]
	ldr	r2, [r7, #24]
	bl	_ZL24normalize_glyphs_clusterP11hb_buffer_tjjb(PLT)
.L384:
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L393:
	.align	2
.L392:
	.word	.LC16-(.LPIC59+4)
	.word	.LC1-(.LPIC60+4)
	.word	_ZZ26hb_buffer_normalize_glyphsE19__PRETTY_FUNCTION__-(.LPIC61+4)
	.word	.LC17-(.LPIC62+4)
	.word	.LC1-(.LPIC63+4)
	.word	_ZZ26hb_buffer_normalize_glyphsE19__PRETTY_FUNCTION__-(.LPIC64+4)
	.fnend
	.size	hb_buffer_normalize_glyphs, .-hb_buffer_normalize_glyphs
	.section	.text._Z3MINIjET_RKS0_S2_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z3MINIjET_RKS0_S2_, %function
_Z3MINIjET_RKS0_S2_:
	.fnstart
.LFB196:
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
	ldr	r3, [r3]
	cmp	r2, r3
	bcs	.L395
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	b	.L396
.L395:
	ldr	r3, [r7]
	ldr	r3, [r3]
.L396:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_Z3MINIjET_RKS0_S2_, .-_Z3MINIjET_RKS0_S2_
	.section	.text._ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4initEv,"axG",%progbits,_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4initEv,comdat
	.align	2
	.weak	_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4initEv
	.thumb
	.thumb_func
	.type	_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4initEv, %function
_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4initEv:
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
.LFB198:
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
	bne	.L400
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE6finishEv(PLT)
	b	.L399
.L400:
	ldr	r0, [r7]
	bl	_ZN10hb_mutex_t4lockEv(PLT)
	b	.L402
.L403:
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
.L402:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L403
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE6finishEv(PLT)
	ldr	r0, [r7]
	bl	_ZN10hb_mutex_t6unlockEv(PLT)
.L399:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE6finishERS2_, .-_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE6finishERS2_
	.section	.text._Z11hb_in_rangeIjEbT_S0_S0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z11hb_in_rangeIjEbT_S0_S0_, %function
_Z11hb_in_rangeIjEbT_S0_S0_:
	.fnstart
.LFB200:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	subs	r2, r2, r3
	ldr	r1, [r7, #4]
	ldr	r3, [r7, #8]
	subs	r3, r1, r3
	cmp	r2, r3
	ite	ls
	movls	r3, #1
	movhi	r3, #0
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_Z11hb_in_rangeIjEbT_S0_S0_, .-_Z11hb_in_rangeIjEbT_S0_S0_
	.section	.text._Z18hb_object_is_inertI11hb_buffer_tEbPKT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z18hb_object_is_inertI11hb_buffer_tEbPKT_, %function
_Z18hb_object_is_inertI11hb_buffer_tEbPKT_:
	.fnstart
.LFB202:
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
	.size	_Z18hb_object_is_inertI11hb_buffer_tEbPKT_, .-_Z18hb_object_is_inertI11hb_buffer_tEbPKT_
	.section	.text._Z16hb_object_createI11hb_buffer_tEPT_v,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z16hb_object_createI11hb_buffer_tEPT_v, %function
_Z16hb_object_createI11hb_buffer_tEPT_v:
	.fnstart
.LFB203:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	movs	r0, #1
	movs	r1, #204
	bl	calloc(PLT)
	mov	r3, r0
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L409
	ldr	r3, [r7, #4]
	b	.L410
.L409:
	ldr	r0, [r7, #4]
	bl	_Z14hb_object_initI11hb_buffer_tEvPT_(PLT)
	ldr	r0, [r7, #4]
	ldr	r3, .L411
.LPIC65:
	add	r3, pc
	mov	r1, r3
	bl	_Z15hb_object_traceI11hb_buffer_tEvPKT_PKc(PLT)
	ldr	r3, [r7, #4]
.L410:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L412:
	.align	2
.L411:
	.word	_ZZ16hb_object_createI11hb_buffer_tEPT_vE19__PRETTY_FUNCTION__-(.LPIC65+4)
	.fnend
	.size	_Z16hb_object_createI11hb_buffer_tEPT_v, .-_Z16hb_object_createI11hb_buffer_tEPT_v
	.section	.text._Z19hb_object_referenceI11hb_buffer_tEPT_S2_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z19hb_object_referenceI11hb_buffer_tEPT_S2_, %function
_Z19hb_object_referenceI11hb_buffer_tEPT_S2_:
	.fnstart
.LFB204:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	ldr	r3, .L419
.LPIC66:
	add	r3, pc
	mov	r1, r3
	bl	_Z15hb_object_traceI11hb_buffer_tEvPKT_PKc(PLT)
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L414
	ldr	r0, [r7, #4]
	bl	_Z18hb_object_is_inertI11hb_buffer_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L415
.L414:
	movs	r3, #1
	b	.L416
.L415:
	movs	r3, #0
.L416:
	cmp	r3, #0
	beq	.L417
	ldr	r3, [r7, #4]
	b	.L418
.L417:
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN20hb_reference_count_t3incEv(PLT)
	ldr	r3, [r7, #4]
.L418:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L420:
	.align	2
.L419:
	.word	_ZZ19hb_object_referenceI11hb_buffer_tEPT_S2_E19__PRETTY_FUNCTION__-(.LPIC66+4)
	.cantunwind
	.fnend
	.size	_Z19hb_object_referenceI11hb_buffer_tEPT_S2_, .-_Z19hb_object_referenceI11hb_buffer_tEPT_S2_
	.section	.text._Z17hb_object_destroyI11hb_buffer_tEbPT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z17hb_object_destroyI11hb_buffer_tEbPT_, %function
_Z17hb_object_destroyI11hb_buffer_tEbPT_:
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
	ldr	r0, [r7, #4]
	ldr	r3, .L428
.LPIC67:
	add	r3, pc
	mov	r1, r3
	bl	_Z15hb_object_traceI11hb_buffer_tEvPKT_PKc(PLT)
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L422
	ldr	r0, [r7, #4]
	bl	_Z18hb_object_is_inertI11hb_buffer_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L423
.L422:
	movs	r3, #1
	b	.L424
.L423:
	movs	r3, #0
.L424:
	cmp	r3, #0
	beq	.L425
	movs	r3, #0
	b	.L426
.L425:
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
	beq	.L427
	movs	r3, #0
	b	.L426
.L427:
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN20hb_reference_count_t6finishEv(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZN20hb_user_data_array_t6finishEv(PLT)
	movs	r3, #1
.L426:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L429:
	.align	2
.L428:
	.word	_ZZ17hb_object_destroyI11hb_buffer_tEbPT_E19__PRETTY_FUNCTION__-(.LPIC67+4)
	.fnend
	.size	_Z17hb_object_destroyI11hb_buffer_tEbPT_, .-_Z17hb_object_destroyI11hb_buffer_tEbPT_
	.section	.text._Z23hb_object_set_user_dataI11hb_buffer_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z23hb_object_set_user_dataI11hb_buffer_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei, %function
_Z23hb_object_set_user_dataI11hb_buffer_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei:
	.fnstart
.LFB206:
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
	beq	.L431
	ldr	r0, [r7, #12]
	bl	_Z18hb_object_is_inertI11hb_buffer_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L432
.L431:
	movs	r3, #1
	b	.L433
.L432:
	movs	r3, #0
.L433:
	cmp	r3, #0
	beq	.L434
	movs	r3, #0
	b	.L435
.L434:
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
.L435:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_Z23hb_object_set_user_dataI11hb_buffer_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei, .-_Z23hb_object_set_user_dataI11hb_buffer_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei
	.section	.text._Z23hb_object_get_user_dataI11hb_buffer_tEPvPT_P18hb_user_data_key_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z23hb_object_get_user_dataI11hb_buffer_tEPvPT_P18hb_user_data_key_t, %function
_Z23hb_object_get_user_dataI11hb_buffer_tEPvPT_P18hb_user_data_key_t:
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
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L437
	ldr	r0, [r7, #4]
	bl	_Z18hb_object_is_inertI11hb_buffer_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L438
.L437:
	movs	r3, #1
	b	.L439
.L438:
	movs	r3, #0
.L439:
	cmp	r3, #0
	beq	.L440
	movs	r3, #0
	b	.L441
.L440:
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN20hb_user_data_array_t3getEP18hb_user_data_key_t(PLT)
	mov	r3, r0
.L441:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_Z23hb_object_get_user_dataI11hb_buffer_tEPvPT_P18hb_user_data_key_t, .-_Z23hb_object_get_user_dataI11hb_buffer_tEPvPT_P18hb_user_data_key_t
	.section	.rodata
	.align	2
.LC18:
	.ascii	"buffer->content_type == HB_BUFFER_CONTENT_TYPE_UNIC"
	.ascii	"ODE || (!buffer->len && buffer->content_type == HB_"
	.ascii	"BUFFER_CONTENT_TYPE_INVALID)\000"
	.section	.text._Z17hb_buffer_add_utfILb1EhEvP11hb_buffer_tPKT0_iji,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z17hb_buffer_add_utfILb1EhEvP11hb_buffer_tPKT0_iji, %function
_Z17hb_buffer_add_utfILb1EhEvP11hb_buffer_tPKT0_iji:
	.fnstart
.LFB208:
	@ args = 4, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #56
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	str	r3, [r7, #44]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #56]
	cmp	r3, #1
	beq	.L443
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #88]
	cmp	r3, #0
	bne	.L444
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #56]
	cmp	r3, #0
	beq	.L443
.L444:
	ldr	r3, .L458
.LPIC68:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L458+4
.LPIC69:
	add	r3, pc
	mov	r1, r3
	movw	r2, #1343
	ldr	r3, .L458+8
.LPIC70:
	add	r3, pc
	bl	__assert_fail(PLT)
.L443:
	ldr	r0, [r7, #12]
	bl	_Z18hb_object_is_inertI11hb_buffer_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L445
	b	.L442
.L445:
	ldr	r3, [r7, #4]
	cmp	r3, #-1
	bne	.L447
	ldr	r0, [r7, #8]
	bl	_ZN8hb_utf_tIhLb1EE6strlenEPKh(PLT)
	mov	r3, r0
	str	r3, [r7, #4]
.L447:
	ldr	r3, [r7, #64]
	cmp	r3, #-1
	bne	.L448
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	subs	r3, r2, r3
	str	r3, [r7, #64]
.L448:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #88]
	ldr	r3, [r7, #64]
	lsrs	r3, r3, #2
	add	r3, r3, r2
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZN11hb_buffer_t6ensureEj(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #88]
	cmp	r3, #0
	bne	.L449
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L449
	ldr	r0, [r7, #12]
	movs	r1, #0
	bl	_ZN11hb_buffer_t13clear_contextEj(PLT)
	ldr	r2, [r7, #8]
	ldr	r3, [r7]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #8]
	str	r3, [r7, #40]
	b	.L450
.L452:
	add	r3, r7, #28
	ldr	r0, [r7, #52]
	ldr	r1, [r7, #40]
	mov	r2, r3
	ldr	r3, [r7, #44]
	bl	_ZN8hb_utf_tIhLb1EE4prevEPKhS2_Pjj(PLT)
	mov	r3, r0
	str	r3, [r7, #52]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #196]
	adds	r1, r3, #1
	ldr	r2, [r7, #12]
	str	r1, [r2, #196]
	ldr	r2, [r7, #28]
	ldr	r1, [r7, #12]
	adds	r3, r3, #38
	lsls	r3, r3, #2
	add	r3, r3, r1
	str	r2, [r3, #4]
.L450:
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bcs	.L451
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #196]
	cmp	r3, #4
	bls	.L452
.L451:
.L449:
	ldr	r2, [r7, #8]
	ldr	r3, [r7]
	add	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #64]
	ldr	r2, [r7, #48]
	add	r3, r3, r2
	str	r3, [r7, #36]
	b	.L453
.L454:
	ldr	r3, [r7, #48]
	str	r3, [r7, #32]
	add	r3, r7, #24
	ldr	r0, [r7, #48]
	ldr	r1, [r7, #36]
	mov	r2, r3
	ldr	r3, [r7, #44]
	bl	_ZN8hb_utf_tIhLb1EE4nextEPKhS2_Pjj(PLT)
	mov	r3, r0
	str	r3, [r7, #48]
	ldr	r2, [r7, #24]
	ldr	r1, [r7, #32]
	ldr	r3, [r7, #8]
	subs	r3, r1, r3
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	bl	_ZN11hb_buffer_t3addEjj(PLT)
.L453:
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L454
	ldr	r0, [r7, #12]
	movs	r1, #1
	bl	_ZN11hb_buffer_t13clear_contextEj(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	str	r3, [r7, #36]
	b	.L455
.L457:
	add	r3, r7, #20
	ldr	r0, [r7, #48]
	ldr	r1, [r7, #36]
	mov	r2, r3
	ldr	r3, [r7, #44]
	bl	_ZN8hb_utf_tIhLb1EE4nextEPKhS2_Pjj(PLT)
	mov	r3, r0
	str	r3, [r7, #48]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #200]
	adds	r1, r3, #1
	ldr	r2, [r7, #12]
	str	r1, [r2, #200]
	ldr	r2, [r7, #20]
	ldr	r1, [r7, #12]
	adds	r3, r3, #43
	lsls	r3, r3, #2
	add	r3, r3, r1
	str	r2, [r3, #4]
.L455:
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcs	.L456
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #200]
	cmp	r3, #4
	bls	.L457
.L456:
	ldr	r3, [r7, #12]
	movs	r2, #1
	str	r2, [r3, #56]
.L442:
	adds	r7, r7, #56
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L459:
	.align	2
.L458:
	.word	.LC18-(.LPIC68+4)
	.word	.LC1-(.LPIC69+4)
	.word	_ZZ17hb_buffer_add_utfILb1EhEvP11hb_buffer_tPKT0_ijiE19__PRETTY_FUNCTION__-(.LPIC70+4)
	.cantunwind
	.fnend
	.size	_Z17hb_buffer_add_utfILb1EhEvP11hb_buffer_tPKT0_iji, .-_Z17hb_buffer_add_utfILb1EhEvP11hb_buffer_tPKT0_iji
	.section	.text._Z17hb_buffer_add_utfILb1EtEvP11hb_buffer_tPKT0_iji,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z17hb_buffer_add_utfILb1EtEvP11hb_buffer_tPKT0_iji, %function
_Z17hb_buffer_add_utfILb1EtEvP11hb_buffer_tPKT0_iji:
	.fnstart
.LFB209:
	@ args = 4, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #56
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	str	r3, [r7, #44]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #56]
	cmp	r3, #1
	beq	.L461
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #88]
	cmp	r3, #0
	bne	.L462
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #56]
	cmp	r3, #0
	beq	.L461
.L462:
	ldr	r3, .L476
.LPIC71:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L476+4
.LPIC72:
	add	r3, pc
	mov	r1, r3
	movw	r2, #1343
	ldr	r3, .L476+8
.LPIC73:
	add	r3, pc
	bl	__assert_fail(PLT)
.L461:
	ldr	r0, [r7, #12]
	bl	_Z18hb_object_is_inertI11hb_buffer_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L463
	b	.L460
.L463:
	ldr	r3, [r7, #4]
	cmp	r3, #-1
	bne	.L465
	ldr	r0, [r7, #8]
	bl	_ZN8hb_utf_tItLb1EE6strlenEPKt(PLT)
	mov	r3, r0
	str	r3, [r7, #4]
.L465:
	ldr	r3, [r7, #64]
	cmp	r3, #-1
	bne	.L466
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	subs	r3, r2, r3
	str	r3, [r7, #64]
.L466:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #88]
	ldr	r3, [r7, #64]
	lsls	r3, r3, #1
	lsrs	r3, r3, #2
	add	r3, r3, r2
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZN11hb_buffer_t6ensureEj(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #88]
	cmp	r3, #0
	bne	.L467
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L467
	ldr	r0, [r7, #12]
	movs	r1, #0
	bl	_ZN11hb_buffer_t13clear_contextEj(PLT)
	ldr	r3, [r7]
	lsls	r3, r3, #1
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #8]
	str	r3, [r7, #40]
	b	.L468
.L470:
	add	r3, r7, #28
	ldr	r0, [r7, #52]
	ldr	r1, [r7, #40]
	mov	r2, r3
	ldr	r3, [r7, #44]
	bl	_ZN8hb_utf_tItLb1EE4prevEPKtS2_Pjj(PLT)
	mov	r3, r0
	str	r3, [r7, #52]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #196]
	adds	r1, r3, #1
	ldr	r2, [r7, #12]
	str	r1, [r2, #196]
	ldr	r2, [r7, #28]
	ldr	r1, [r7, #12]
	adds	r3, r3, #38
	lsls	r3, r3, #2
	add	r3, r3, r1
	str	r2, [r3, #4]
.L468:
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bcs	.L469
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #196]
	cmp	r3, #4
	bls	.L470
.L469:
.L467:
	ldr	r3, [r7]
	lsls	r3, r3, #1
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #64]
	lsls	r3, r3, #1
	ldr	r2, [r7, #48]
	add	r3, r3, r2
	str	r3, [r7, #36]
	b	.L471
.L472:
	ldr	r3, [r7, #48]
	str	r3, [r7, #32]
	add	r3, r7, #24
	ldr	r0, [r7, #48]
	ldr	r1, [r7, #36]
	mov	r2, r3
	ldr	r3, [r7, #44]
	bl	_ZN8hb_utf_tItLb1EE4nextEPKtS2_Pjj(PLT)
	mov	r3, r0
	str	r3, [r7, #48]
	ldr	r2, [r7, #24]
	ldr	r1, [r7, #32]
	ldr	r3, [r7, #8]
	subs	r3, r1, r3
	asrs	r3, r3, #1
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	bl	_ZN11hb_buffer_t3addEjj(PLT)
.L471:
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L472
	ldr	r0, [r7, #12]
	movs	r1, #1
	bl	_ZN11hb_buffer_t13clear_contextEj(PLT)
	ldr	r3, [r7, #4]
	lsls	r3, r3, #1
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	str	r3, [r7, #36]
	b	.L473
.L475:
	add	r3, r7, #20
	ldr	r0, [r7, #48]
	ldr	r1, [r7, #36]
	mov	r2, r3
	ldr	r3, [r7, #44]
	bl	_ZN8hb_utf_tItLb1EE4nextEPKtS2_Pjj(PLT)
	mov	r3, r0
	str	r3, [r7, #48]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #200]
	adds	r1, r3, #1
	ldr	r2, [r7, #12]
	str	r1, [r2, #200]
	ldr	r2, [r7, #20]
	ldr	r1, [r7, #12]
	adds	r3, r3, #43
	lsls	r3, r3, #2
	add	r3, r3, r1
	str	r2, [r3, #4]
.L473:
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcs	.L474
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #200]
	cmp	r3, #4
	bls	.L475
.L474:
	ldr	r3, [r7, #12]
	movs	r2, #1
	str	r2, [r3, #56]
.L460:
	adds	r7, r7, #56
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L477:
	.align	2
.L476:
	.word	.LC18-(.LPIC71+4)
	.word	.LC1-(.LPIC72+4)
	.word	_ZZ17hb_buffer_add_utfILb1EtEvP11hb_buffer_tPKT0_ijiE19__PRETTY_FUNCTION__-(.LPIC73+4)
	.cantunwind
	.fnend
	.size	_Z17hb_buffer_add_utfILb1EtEvP11hb_buffer_tPKT0_iji, .-_Z17hb_buffer_add_utfILb1EtEvP11hb_buffer_tPKT0_iji
	.section	.text._Z17hb_buffer_add_utfILb1EjEvP11hb_buffer_tPKT0_iji,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z17hb_buffer_add_utfILb1EjEvP11hb_buffer_tPKT0_iji, %function
_Z17hb_buffer_add_utfILb1EjEvP11hb_buffer_tPKT0_iji:
	.fnstart
.LFB210:
	@ args = 4, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #56
	sub	sp, sp, #56
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	str	r3, [r7, #44]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #56]
	cmp	r3, #1
	beq	.L479
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #88]
	cmp	r3, #0
	bne	.L480
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #56]
	cmp	r3, #0
	beq	.L479
.L480:
	ldr	r3, .L494
.LPIC74:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L494+4
.LPIC75:
	add	r3, pc
	mov	r1, r3
	movw	r2, #1343
	ldr	r3, .L494+8
.LPIC76:
	add	r3, pc
	bl	__assert_fail(PLT)
.L479:
	ldr	r0, [r7, #12]
	bl	_Z18hb_object_is_inertI11hb_buffer_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L481
	b	.L478
.L481:
	ldr	r3, [r7, #4]
	cmp	r3, #-1
	bne	.L483
	ldr	r0, [r7, #8]
	bl	_ZN8hb_utf_tIjLb1EE6strlenEPKj(PLT)
	mov	r3, r0
	str	r3, [r7, #4]
.L483:
	ldr	r3, [r7, #64]
	cmp	r3, #-1
	bne	.L484
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	subs	r3, r2, r3
	str	r3, [r7, #64]
.L484:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #88]
	ldr	r3, [r7, #64]
	lsls	r3, r3, #2
	lsrs	r3, r3, #2
	add	r3, r3, r2
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZN11hb_buffer_t6ensureEj(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #88]
	cmp	r3, #0
	bne	.L485
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L485
	ldr	r0, [r7, #12]
	movs	r1, #0
	bl	_ZN11hb_buffer_t13clear_contextEj(PLT)
	ldr	r3, [r7]
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #8]
	str	r3, [r7, #40]
	b	.L486
.L488:
	add	r3, r7, #28
	ldr	r0, [r7, #52]
	ldr	r1, [r7, #40]
	mov	r2, r3
	ldr	r3, [r7, #44]
	bl	_ZN8hb_utf_tIjLb1EE4prevEPKjS2_Pjj(PLT)
	mov	r3, r0
	str	r3, [r7, #52]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #196]
	adds	r1, r3, #1
	ldr	r2, [r7, #12]
	str	r1, [r2, #196]
	ldr	r2, [r7, #28]
	ldr	r1, [r7, #12]
	adds	r3, r3, #38
	lsls	r3, r3, #2
	add	r3, r3, r1
	str	r2, [r3, #4]
.L486:
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bcs	.L487
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #196]
	cmp	r3, #4
	bls	.L488
.L487:
.L485:
	ldr	r3, [r7]
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #64]
	lsls	r3, r3, #2
	ldr	r2, [r7, #48]
	add	r3, r3, r2
	str	r3, [r7, #36]
	b	.L489
.L490:
	ldr	r3, [r7, #48]
	str	r3, [r7, #32]
	add	r3, r7, #24
	ldr	r0, [r7, #48]
	ldr	r1, [r7, #36]
	mov	r2, r3
	ldr	r3, [r7, #44]
	bl	_ZN8hb_utf_tIjLb1EE4nextEPKjS2_Pjj(PLT)
	mov	r3, r0
	str	r3, [r7, #48]
	ldr	r2, [r7, #24]
	ldr	r1, [r7, #32]
	ldr	r3, [r7, #8]
	subs	r3, r1, r3
	asrs	r3, r3, #2
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	bl	_ZN11hb_buffer_t3addEjj(PLT)
.L489:
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L490
	ldr	r0, [r7, #12]
	movs	r1, #1
	bl	_ZN11hb_buffer_t13clear_contextEj(PLT)
	ldr	r3, [r7, #4]
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	str	r3, [r7, #36]
	b	.L491
.L493:
	add	r3, r7, #20
	ldr	r0, [r7, #48]
	ldr	r1, [r7, #36]
	mov	r2, r3
	ldr	r3, [r7, #44]
	bl	_ZN8hb_utf_tIjLb1EE4nextEPKjS2_Pjj(PLT)
	mov	r3, r0
	str	r3, [r7, #48]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #200]
	adds	r1, r3, #1
	ldr	r2, [r7, #12]
	str	r1, [r2, #200]
	ldr	r2, [r7, #20]
	ldr	r1, [r7, #12]
	adds	r3, r3, #43
	lsls	r3, r3, #2
	add	r3, r3, r1
	str	r2, [r3, #4]
.L491:
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcs	.L492
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #200]
	cmp	r3, #4
	bls	.L493
.L492:
	ldr	r3, [r7, #12]
	movs	r2, #1
	str	r2, [r3, #56]
.L478:
	adds	r7, r7, #56
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L495:
	.align	2
.L494:
	.word	.LC18-(.LPIC74+4)
	.word	.LC1-(.LPIC75+4)
	.word	_ZZ17hb_buffer_add_utfILb1EjEvP11hb_buffer_tPKT0_ijiE19__PRETTY_FUNCTION__-(.LPIC76+4)
	.fnend
	.size	_Z17hb_buffer_add_utfILb1EjEvP11hb_buffer_tPKT0_iji, .-_Z17hb_buffer_add_utfILb1EjEvP11hb_buffer_tPKT0_iji
	.section	.text._Z17hb_buffer_add_utfILb0EjEvP11hb_buffer_tPKT0_iji,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z17hb_buffer_add_utfILb0EjEvP11hb_buffer_tPKT0_iji, %function
_Z17hb_buffer_add_utfILb0EjEvP11hb_buffer_tPKT0_iji:
	.fnstart
.LFB211:
	@ args = 4, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #56
	sub	sp, sp, #56
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	str	r3, [r7, #44]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #56]
	cmp	r3, #1
	beq	.L497
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #88]
	cmp	r3, #0
	bne	.L498
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #56]
	cmp	r3, #0
	beq	.L497
.L498:
	ldr	r3, .L512
.LPIC77:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L512+4
.LPIC78:
	add	r3, pc
	mov	r1, r3
	movw	r2, #1343
	ldr	r3, .L512+8
.LPIC79:
	add	r3, pc
	bl	__assert_fail(PLT)
.L497:
	ldr	r0, [r7, #12]
	bl	_Z18hb_object_is_inertI11hb_buffer_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L499
	b	.L496
.L499:
	ldr	r3, [r7, #4]
	cmp	r3, #-1
	bne	.L501
	ldr	r0, [r7, #8]
	bl	_ZN8hb_utf_tIjLb1EE6strlenEPKj(PLT)
	mov	r3, r0
	str	r3, [r7, #4]
.L501:
	ldr	r3, [r7, #64]
	cmp	r3, #-1
	bne	.L502
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	subs	r3, r2, r3
	str	r3, [r7, #64]
.L502:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #88]
	ldr	r3, [r7, #64]
	lsls	r3, r3, #2
	lsrs	r3, r3, #2
	add	r3, r3, r2
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZN11hb_buffer_t6ensureEj(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #88]
	cmp	r3, #0
	bne	.L503
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L503
	ldr	r0, [r7, #12]
	movs	r1, #0
	bl	_ZN11hb_buffer_t13clear_contextEj(PLT)
	ldr	r3, [r7]
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #8]
	str	r3, [r7, #40]
	b	.L504
.L506:
	add	r3, r7, #28
	ldr	r0, [r7, #52]
	ldr	r1, [r7, #40]
	mov	r2, r3
	ldr	r3, [r7, #44]
	bl	_ZN8hb_utf_tIjLb1EE4prevEPKjS2_Pjj(PLT)
	mov	r3, r0
	str	r3, [r7, #52]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #196]
	adds	r1, r3, #1
	ldr	r2, [r7, #12]
	str	r1, [r2, #196]
	ldr	r2, [r7, #28]
	ldr	r1, [r7, #12]
	adds	r3, r3, #38
	lsls	r3, r3, #2
	add	r3, r3, r1
	str	r2, [r3, #4]
.L504:
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bcs	.L505
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #196]
	cmp	r3, #4
	bls	.L506
.L505:
.L503:
	ldr	r3, [r7]
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #64]
	lsls	r3, r3, #2
	ldr	r2, [r7, #48]
	add	r3, r3, r2
	str	r3, [r7, #36]
	b	.L507
.L508:
	ldr	r3, [r7, #48]
	str	r3, [r7, #32]
	add	r3, r7, #24
	ldr	r0, [r7, #48]
	ldr	r1, [r7, #36]
	mov	r2, r3
	ldr	r3, [r7, #44]
	bl	_ZN8hb_utf_tIjLb1EE4nextEPKjS2_Pjj(PLT)
	mov	r3, r0
	str	r3, [r7, #48]
	ldr	r2, [r7, #24]
	ldr	r1, [r7, #32]
	ldr	r3, [r7, #8]
	subs	r3, r1, r3
	asrs	r3, r3, #2
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	bl	_ZN11hb_buffer_t3addEjj(PLT)
.L507:
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L508
	ldr	r0, [r7, #12]
	movs	r1, #1
	bl	_ZN11hb_buffer_t13clear_contextEj(PLT)
	ldr	r3, [r7, #4]
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	str	r3, [r7, #36]
	b	.L509
.L511:
	add	r3, r7, #20
	ldr	r0, [r7, #48]
	ldr	r1, [r7, #36]
	mov	r2, r3
	ldr	r3, [r7, #44]
	bl	_ZN8hb_utf_tIjLb1EE4nextEPKjS2_Pjj(PLT)
	mov	r3, r0
	str	r3, [r7, #48]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #200]
	adds	r1, r3, #1
	ldr	r2, [r7, #12]
	str	r1, [r2, #200]
	ldr	r2, [r7, #20]
	ldr	r1, [r7, #12]
	adds	r3, r3, #43
	lsls	r3, r3, #2
	add	r3, r3, r1
	str	r2, [r3, #4]
.L509:
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcs	.L510
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #200]
	cmp	r3, #4
	bls	.L511
.L510:
	ldr	r3, [r7, #12]
	movs	r2, #1
	str	r2, [r3, #56]
.L496:
	adds	r7, r7, #56
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L513:
	.align	2
.L512:
	.word	.LC18-(.LPIC77+4)
	.word	.LC1-(.LPIC78+4)
	.word	_ZZ17hb_buffer_add_utfILb0EjEvP11hb_buffer_tPKT0_ijiE19__PRETTY_FUNCTION__-(.LPIC79+4)
	.fnend
	.size	_Z17hb_buffer_add_utfILb0EjEvP11hb_buffer_tPKT0_iji, .-_Z17hb_buffer_add_utfILb0EjEvP11hb_buffer_tPKT0_iji
	.section	.text._Z14hb_bubble_sortI15hb_glyph_info_t19hb_glyph_position_tEvPT_jPFiPKS2_S5_EPT0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z14hb_bubble_sortI15hb_glyph_info_t19hb_glyph_position_tEvPT_jPFiPKS2_S5_EPT0_, %function
_Z14hb_bubble_sortI15hb_glyph_info_t19hb_glyph_position_tEvPT_jPFiPKS2_S5_EPT0_:
	.fnstart
.LFB212:
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
	str	r3, [r7]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L515
	b	.L514
.L515:
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	str	r3, [r7, #68]
.L521:
	movs	r3, #0
	str	r3, [r7, #64]
	movs	r3, #0
	str	r3, [r7, #60]
	b	.L517
.L520:
	ldr	r2, [r7, #60]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	adds	r1, r2, r3
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	mov	r0, r1
	mov	r1, r2
	blx	r3
	mov	r3, r0
	cmp	r3, #0
	ite	gt
	movgt	r3, #1
	movle	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L518
	ldr	r2, [r7, #60]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	add	r4, r7, #40
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r2, [r7, #60]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	adds	r1, r2, r3
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	mov	r4, r1
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	mov	r4, r3
	add	r5, r7, #40
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L519
	ldr	r2, [r7, #60]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7]
	add	r3, r3, r2
	add	r4, r7, #20
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r2, [r7, #60]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7]
	adds	r1, r2, r3
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7]
	add	r3, r3, r2
	mov	r4, r1
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7]
	add	r3, r3, r2
	mov	r4, r3
	add	r5, r7, #20
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
.L519:
	ldr	r3, [r7, #60]
	str	r3, [r7, #64]
.L518:
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
.L517:
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #68]
	cmp	r2, r3
	bcc	.L520
	ldr	r3, [r7, #64]
	str	r3, [r7, #68]
	ldr	r3, [r7, #68]
	cmp	r3, #0
	bne	.L521
.L514:
	adds	r7, r7, #72
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.fnend
	.size	_Z14hb_bubble_sortI15hb_glyph_info_t19hb_glyph_position_tEvPT_jPFiPKS2_S5_EPT0_, .-_Z14hb_bubble_sortI15hb_glyph_info_t19hb_glyph_position_tEvPT_jPFiPKS2_S5_EPT0_
	.section	.text._ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4initEv,"axG",%progbits,_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4initEv,comdat
	.align	2
	.weak	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4initEv
	.thumb
	.thumb_func
	.type	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4initEv, %function
_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4initEv:
	.fnstart
.LFB213:
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
.LFB214:
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
	beq	.L524
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r0, r3
	bl	free(PLT)
.L524:
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
.LFB215:
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
.LFB216:
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
	.section	.text._Z14hb_object_initI11hb_buffer_tEvPT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z14hb_object_initI11hb_buffer_tEvPT_, %function
_Z14hb_object_initI11hb_buffer_tEvPT_:
	.fnstart
.LFB217:
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
	.size	_Z14hb_object_initI11hb_buffer_tEvPT_, .-_Z14hb_object_initI11hb_buffer_tEvPT_
	.section	.rodata
	.align	2
.LC19:
	.ascii	"OBJECT\000"
	.align	2
.LC20:
	.ascii	"%s refcount=%d\000"
	.section	.text._Z15hb_object_traceI11hb_buffer_tEvPKT_PKc,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z15hb_object_traceI11hb_buffer_tEvPKT_PKc, %function
_Z15hb_object_traceI11hb_buffer_tEvPKT_PKc:
	.fnstart
.LFB218:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #24
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L530
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	b	.L531
.L530:
	movs	r3, #0
.L531:
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	ldr	r2, .L532
.LPIC80:
	add	r2, pc
	str	r2, [sp, #8]
	ldr	r2, [r7]
	str	r2, [sp, #12]
	str	r3, [sp, #16]
	ldr	r3, .L532+4
.LPIC81:
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
.L533:
	.align	2
.L532:
	.word	.LC20-(.LPIC80+4)
	.word	.LC19-(.LPIC81+4)
	.cantunwind
	.fnend
	.size	_Z15hb_object_traceI11hb_buffer_tEvPKT_PKc, .-_Z15hb_object_traceI11hb_buffer_tEvPKT_PKc
	.section	.text._ZN8hb_utf_tIjLb1EE6strlenEPKj,"axG",%progbits,_ZN8hb_utf_tIjLb1EE6strlenEPKj,comdat
	.align	2
	.weak	_ZN8hb_utf_tIjLb1EE6strlenEPKj
	.thumb
	.thumb_func
	.type	_ZN8hb_utf_tIjLb1EE6strlenEPKj, %function
_ZN8hb_utf_tIjLb1EE6strlenEPKj:
	.fnstart
.LFB219:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L535
.L536:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L535:
	ldr	r3, [r7, #4]
	adds	r2, r3, #4
	str	r2, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L536
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN8hb_utf_tIjLb1EE6strlenEPKj, .-_ZN8hb_utf_tIjLb1EE6strlenEPKj
	.section	.text._ZN8hb_utf_tIjLb1EE4prevEPKjS2_Pjj,"axG",%progbits,_ZN8hb_utf_tIjLb1EE4prevEPKjS2_Pjj,comdat
	.align	2
	.weak	_ZN8hb_utf_tIjLb1EE4prevEPKjS2_Pjj
	.thumb
	.thumb_func
	.type	_ZN8hb_utf_tIjLb1EE4prevEPKjS2_Pjj, %function
_ZN8hb_utf_tIjLb1EE4prevEPKjS2_Pjj:
	.fnstart
.LFB220:
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
	subs	r3, r3, #4
	mov	r0, r3
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	_ZN8hb_utf_tIjLb1EE4nextEPKjS2_Pjj(PLT)
	ldr	r3, [r7, #12]
	subs	r3, r3, #4
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN8hb_utf_tIjLb1EE4prevEPKjS2_Pjj, .-_ZN8hb_utf_tIjLb1EE4prevEPKjS2_Pjj
	.section	.text._ZN8hb_utf_tIjLb1EE4nextEPKjS2_Pjj,"axG",%progbits,_ZN8hb_utf_tIjLb1EE4nextEPKjS2_Pjj,comdat
	.align	2
	.weak	_ZN8hb_utf_tIjLb1EE4nextEPKjS2_Pjj
	.thumb
	.thumb_func
	.type	_ZN8hb_utf_tIjLb1EE4nextEPKjS2_Pjj, %function
_ZN8hb_utf_tIjLb1EE4nextEPKjS2_Pjj:
	.fnstart
.LFB221:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	adds	r2, r3, #4
	str	r2, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #1114112
	bcs	.L541
	ldr	r0, [r7, #20]
	mov	r1, #55296
	movw	r2, #57343
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L542
.L541:
	movs	r3, #1
	b	.L543
.L542:
	movs	r3, #0
.L543:
	cmp	r3, #0
	beq	.L544
	nop
.L545:
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	b	.L546
.L544:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #20]
	str	r2, [r3]
	ldr	r3, [r7, #12]
.L546:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN8hb_utf_tIjLb1EE4nextEPKjS2_Pjj, .-_ZN8hb_utf_tIjLb1EE4nextEPKjS2_Pjj
	.section	.rodata._ZZN11hb_buffer_t13make_room_forEjjE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN11hb_buffer_t13make_room_forEjjE19__PRETTY_FUNCTION__, %object
	.size	_ZZN11hb_buffer_t13make_room_forEjjE19__PRETTY_FUNCTION__, 60
_ZZN11hb_buffer_t13make_room_forEjjE19__PRETTY_FUNCTION__:
	.ascii	"bool hb_buffer_t::make_room_for(unsigned int, unsig"
	.ascii	"ned int)\000"
	.section	.rodata._ZZN11hb_buffer_t13shift_forwardEjE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN11hb_buffer_t13shift_forwardEjE19__PRETTY_FUNCTION__, %object
	.size	_ZZN11hb_buffer_t13shift_forwardEjE19__PRETTY_FUNCTION__, 46
_ZZN11hb_buffer_t13shift_forwardEjE19__PRETTY_FUNCTION__:
	.ascii	"bool hb_buffer_t::shift_forward(unsigned int)\000"
	.section	.rodata._ZZN11hb_buffer_t18get_scratch_bufferEPjE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN11hb_buffer_t18get_scratch_bufferEPjE19__PRETTY_FUNCTION__, %object
	.size	_ZZN11hb_buffer_t18get_scratch_bufferEPjE19__PRETTY_FUNCTION__, 78
_ZZN11hb_buffer_t18get_scratch_bufferEPjE19__PRETTY_FUNCTION__:
	.ascii	"hb_buffer_t::scratch_buffer_t* hb_buffer_t::get_scr"
	.ascii	"atch_buffer(unsigned int*)\000"
	.section	.rodata._ZZN11hb_buffer_t12swap_buffersEvE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN11hb_buffer_t12swap_buffersEvE19__PRETTY_FUNCTION__, %object
	.size	_ZZN11hb_buffer_t12swap_buffersEvE19__PRETTY_FUNCTION__, 33
_ZZN11hb_buffer_t12swap_buffersEvE19__PRETTY_FUNCTION__:
	.ascii	"void hb_buffer_t::swap_buffers()\000"
	.section	.rodata._ZZN11hb_buffer_t7move_toEjE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN11hb_buffer_t7move_toEjE19__PRETTY_FUNCTION__, %object
	.size	_ZZN11hb_buffer_t7move_toEjE19__PRETTY_FUNCTION__, 40
_ZZN11hb_buffer_t7move_toEjE19__PRETTY_FUNCTION__:
	.ascii	"bool hb_buffer_t::move_to(unsigned int)\000"
	.section	.rodata._ZZN11hb_buffer_t24guess_segment_propertiesEvE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN11hb_buffer_t24guess_segment_propertiesEvE19__PRETTY_FUNCTION__, %object
	.size	_ZZN11hb_buffer_t24guess_segment_propertiesEvE19__PRETTY_FUNCTION__, 45
_ZZN11hb_buffer_t24guess_segment_propertiesEvE19__PRETTY_FUNCTION__:
	.ascii	"void hb_buffer_t::guess_segment_properties()\000"
	.section	.rodata._ZZN11hb_buffer_t12allocate_varEjjPKcE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN11hb_buffer_t12allocate_varEjjPKcE19__PRETTY_FUNCTION__, %object
	.size	_ZZN11hb_buffer_t12allocate_varEjjPKcE19__PRETTY_FUNCTION__, 72
_ZZN11hb_buffer_t12allocate_varEjjPKcE19__PRETTY_FUNCTION__:
	.ascii	"void hb_buffer_t::allocate_var(unsigned int, unsign"
	.ascii	"ed int, const char*)\000"
	.section	.rodata._ZZN11hb_buffer_t14deallocate_varEjjPKcE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN11hb_buffer_t14deallocate_varEjjPKcE19__PRETTY_FUNCTION__, %object
	.size	_ZZN11hb_buffer_t14deallocate_varEjjPKcE19__PRETTY_FUNCTION__, 74
_ZZN11hb_buffer_t14deallocate_varEjjPKcE19__PRETTY_FUNCTION__:
	.ascii	"void hb_buffer_t::deallocate_var(unsigned int, unsi"
	.ascii	"gned int, const char*)\000"
	.section	.rodata._ZZN11hb_buffer_t10assert_varEjjPKcE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN11hb_buffer_t10assert_varEjjPKcE19__PRETTY_FUNCTION__, %object
	.size	_ZZN11hb_buffer_t10assert_varEjjPKcE19__PRETTY_FUNCTION__, 70
_ZZN11hb_buffer_t10assert_varEjjPKcE19__PRETTY_FUNCTION__:
	.ascii	"void hb_buffer_t::assert_var(unsigned int, unsigned"
	.ascii	" int, const char*)\000"
	.section	.rodata._ZZ16hb_object_createI11hb_buffer_tEPT_vE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZ16hb_object_createI11hb_buffer_tEPT_vE19__PRETTY_FUNCTION__, %object
	.size	_ZZ16hb_object_createI11hb_buffer_tEPT_vE19__PRETTY_FUNCTION__, 51
_ZZ16hb_object_createI11hb_buffer_tEPT_vE19__PRETTY_FUNCTION__:
	.ascii	"Type* hb_object_create() [with Type = hb_buffer_t]\000"
	.section	.data.rel.ro._ZZ19hb_buffer_get_emptyE14_hb_buffer_nil,"aw",%progbits
	.align	2
	.type	_ZZ19hb_buffer_get_emptyE14_hb_buffer_nil, %object
	.size	_ZZ19hb_buffer_get_emptyE14_hb_buffer_nil, 204
_ZZ19hb_buffer_get_emptyE14_hb_buffer_nil:
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	0
	.space	24
	.word	_hb_unicode_funcs_nil
	.word	0
	.word	65533
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.byte	1
	.byte	1
	.byte	1
	.space	121
	.section	.rodata._ZZ19hb_object_referenceI11hb_buffer_tEPT_S2_E19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZ19hb_object_referenceI11hb_buffer_tEPT_S2_E19__PRETTY_FUNCTION__, %object
	.size	_ZZ19hb_object_referenceI11hb_buffer_tEPT_S2_E19__PRETTY_FUNCTION__, 59
_ZZ19hb_object_referenceI11hb_buffer_tEPT_S2_E19__PRETTY_FUNCTION__:
	.ascii	"Type* hb_object_reference(Type*) [with Type = hb_bu"
	.ascii	"ffer_t]\000"
	.section	.rodata._ZZ17hb_object_destroyI11hb_buffer_tEbPT_E19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZ17hb_object_destroyI11hb_buffer_tEbPT_E19__PRETTY_FUNCTION__, %object
	.size	_ZZ17hb_object_destroyI11hb_buffer_tEbPT_E19__PRETTY_FUNCTION__, 56
_ZZ17hb_object_destroyI11hb_buffer_tEbPT_E19__PRETTY_FUNCTION__:
	.ascii	"bool hb_object_destroy(Type*) [with Type = hb_buffe"
	.ascii	"r_t]\000"
	.section	.rodata._ZZ17hb_buffer_add_utfILb1EhEvP11hb_buffer_tPKT0_ijiE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZ17hb_buffer_add_utfILb1EhEvP11hb_buffer_tPKT0_ijiE19__PRETTY_FUNCTION__, %object
	.size	_ZZ17hb_buffer_add_utfILb1EhEvP11hb_buffer_tPKT0_ijiE19__PRETTY_FUNCTION__, 145
_ZZ17hb_buffer_add_utfILb1EhEvP11hb_buffer_tPKT0_ijiE19__PRETTY_FUNCTION__:
	.ascii	"void hb_buffer_add_utf(hb_buffer_t*, const T*, int,"
	.ascii	" unsigned int, int) [with bool validate = true; T ="
	.ascii	" unsigned char; hb_buffer_t = hb_buffer_t]\000"
	.section	.rodata._ZZ17hb_buffer_add_utfILb1EtEvP11hb_buffer_tPKT0_ijiE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZ17hb_buffer_add_utfILb1EtEvP11hb_buffer_tPKT0_ijiE19__PRETTY_FUNCTION__, %object
	.size	_ZZ17hb_buffer_add_utfILb1EtEvP11hb_buffer_tPKT0_ijiE19__PRETTY_FUNCTION__, 150
_ZZ17hb_buffer_add_utfILb1EtEvP11hb_buffer_tPKT0_ijiE19__PRETTY_FUNCTION__:
	.ascii	"void hb_buffer_add_utf(hb_buffer_t*, const T*, int,"
	.ascii	" unsigned int, int) [with bool validate = true; T ="
	.ascii	" short unsigned int; hb_buffer_t = hb_buffer_t]\000"
	.section	.rodata._ZZ17hb_buffer_add_utfILb1EjEvP11hb_buffer_tPKT0_ijiE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZ17hb_buffer_add_utfILb1EjEvP11hb_buffer_tPKT0_ijiE19__PRETTY_FUNCTION__, %object
	.size	_ZZ17hb_buffer_add_utfILb1EjEvP11hb_buffer_tPKT0_ijiE19__PRETTY_FUNCTION__, 144
_ZZ17hb_buffer_add_utfILb1EjEvP11hb_buffer_tPKT0_ijiE19__PRETTY_FUNCTION__:
	.ascii	"void hb_buffer_add_utf(hb_buffer_t*, const T*, int,"
	.ascii	" unsigned int, int) [with bool validate = true; T ="
	.ascii	" unsigned int; hb_buffer_t = hb_buffer_t]\000"
	.section	.rodata._ZZ17hb_buffer_add_utfILb0EjEvP11hb_buffer_tPKT0_ijiE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZ17hb_buffer_add_utfILb0EjEvP11hb_buffer_tPKT0_ijiE19__PRETTY_FUNCTION__, %object
	.size	_ZZ17hb_buffer_add_utfILb0EjEvP11hb_buffer_tPKT0_ijiE19__PRETTY_FUNCTION__, 145
_ZZ17hb_buffer_add_utfILb0EjEvP11hb_buffer_tPKT0_ijiE19__PRETTY_FUNCTION__:
	.ascii	"void hb_buffer_add_utf(hb_buffer_t*, const T*, int,"
	.ascii	" unsigned int, int) [with bool validate = false; T "
	.ascii	"= unsigned int; hb_buffer_t = hb_buffer_t]\000"
	.section	.rodata._ZZ26hb_buffer_normalize_glyphsE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZ26hb_buffer_normalize_glyphsE19__PRETTY_FUNCTION__, %object
	.size	_ZZ26hb_buffer_normalize_glyphsE19__PRETTY_FUNCTION__, 46
_ZZ26hb_buffer_normalize_glyphsE19__PRETTY_FUNCTION__:
	.ascii	"void hb_buffer_normalize_glyphs(hb_buffer_t*)\000"
	.hidden	_hb_unicode_funcs_nil
	.hidden	_ZN20hb_user_data_array_t3getEP18hb_user_data_key_t
	.hidden	_ZN20hb_user_data_array_t3setEP18hb_user_data_key_tPvPFvS2_Ei
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
