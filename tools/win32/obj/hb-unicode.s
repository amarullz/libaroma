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
	.file	"hb-unicode.cc"
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
	beq	.L14
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #4]
	mov	r0, r2
	blx	r3
.L14:
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
	.section	.text._ZN18hb_unicode_funcs_t15combining_classEj,"axG",%progbits,_ZN18hb_unicode_funcs_t15combining_classEj,comdat
	.align	2
	.weak	_ZN18hb_unicode_funcs_t15combining_classEj
	.thumb
	.thumb_func
	.type	_ZN18hb_unicode_funcs_t15combining_classEj, %function
_ZN18hb_unicode_funcs_t15combining_classEj:
	.fnstart
.LFB83:
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
	ldr	r3, [r3, #52]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #84]
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
	.size	_ZN18hb_unicode_funcs_t15combining_classEj, .-_ZN18hb_unicode_funcs_t15combining_classEj
	.section	.text._ZN18hb_unicode_funcs_t15eastasian_widthEj,"axG",%progbits,_ZN18hb_unicode_funcs_t15eastasian_widthEj,comdat
	.align	2
	.weak	_ZN18hb_unicode_funcs_t15eastasian_widthEj
	.thumb
	.thumb_func
	.type	_ZN18hb_unicode_funcs_t15eastasian_widthEj, %function
_ZN18hb_unicode_funcs_t15eastasian_widthEj:
	.fnstart
.LFB84:
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
	ldr	r3, [r3, #56]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #88]
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
	.size	_ZN18hb_unicode_funcs_t15eastasian_widthEj, .-_ZN18hb_unicode_funcs_t15eastasian_widthEj
	.section	.text._ZN18hb_unicode_funcs_t16general_categoryEj,"axG",%progbits,_ZN18hb_unicode_funcs_t16general_categoryEj,comdat
	.align	2
	.weak	_ZN18hb_unicode_funcs_t16general_categoryEj
	.thumb
	.thumb_func
	.type	_ZN18hb_unicode_funcs_t16general_categoryEj, %function
_ZN18hb_unicode_funcs_t16general_categoryEj:
	.fnstart
.LFB85:
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
	ldr	r3, [r3, #60]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #92]
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
	.size	_ZN18hb_unicode_funcs_t16general_categoryEj, .-_ZN18hb_unicode_funcs_t16general_categoryEj
	.section	.text._ZN18hb_unicode_funcs_t9mirroringEj,"axG",%progbits,_ZN18hb_unicode_funcs_t9mirroringEj,comdat
	.align	2
	.weak	_ZN18hb_unicode_funcs_t9mirroringEj
	.thumb
	.thumb_func
	.type	_ZN18hb_unicode_funcs_t9mirroringEj, %function
_ZN18hb_unicode_funcs_t9mirroringEj:
	.fnstart
.LFB86:
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
	ldr	r3, [r3, #64]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #96]
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
	.size	_ZN18hb_unicode_funcs_t9mirroringEj, .-_ZN18hb_unicode_funcs_t9mirroringEj
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
	.section	.text._ZN18hb_unicode_funcs_t7composeEjjPj,"axG",%progbits,_ZN18hb_unicode_funcs_t7composeEjjPj,comdat
	.align	2
	.weak	_ZN18hb_unicode_funcs_t7composeEjjPj
	.thumb
	.thumb_func
	.type	_ZN18hb_unicode_funcs_t7composeEjjPj, %function
_ZN18hb_unicode_funcs_t7composeEjjPj:
	.fnstart
.LFB88:
	@ args = 0, pretend = 0, frame = 16
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
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L29
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L30
.L29:
	movs	r3, #0
	b	.L31
.L30:
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #104]
	str	r3, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	blx	r4
	mov	r3, r0
.L31:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZN18hb_unicode_funcs_t7composeEjjPj, .-_ZN18hb_unicode_funcs_t7composeEjjPj
	.section	.text._ZN18hb_unicode_funcs_t9decomposeEjPjS0_,"axG",%progbits,_ZN18hb_unicode_funcs_t9decomposeEjPjS0_,comdat
	.align	2
	.weak	_ZN18hb_unicode_funcs_t9decomposeEjPjS0_
	.thumb
	.thumb_func
	.type	_ZN18hb_unicode_funcs_t9decomposeEjPjS0_, %function
_ZN18hb_unicode_funcs_t9decomposeEjPjS0_:
	.fnstart
.LFB89:
	@ args = 0, pretend = 0, frame = 16
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
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #8]
	str	r2, [r3]
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #76]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #108]
	str	r3, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	blx	r4
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZN18hb_unicode_funcs_t9decomposeEjPjS0_, .-_ZN18hb_unicode_funcs_t9decomposeEjPjS0_
	.section	.text._ZN18hb_unicode_funcs_t23decompose_compatibilityEjPj,"axG",%progbits,_ZN18hb_unicode_funcs_t23decompose_compatibilityEjPj,comdat
	.align	2
	.weak	_ZN18hb_unicode_funcs_t23decompose_compatibilityEjPj
	.thumb
	.thumb_func
	.type	_ZN18hb_unicode_funcs_t23decompose_compatibilityEjPj, %function
_ZN18hb_unicode_funcs_t23decompose_compatibilityEjPj:
	.fnstart
.LFB90:
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
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #80]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #112]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	blx	r4
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #1
	bne	.L35
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bne	.L35
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	movs	r3, #0
	b	.L36
.L35:
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #20]
.L36:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZN18hb_unicode_funcs_t23decompose_compatibilityEjPj, .-_ZN18hb_unicode_funcs_t23decompose_compatibilityEjPj
	.section	.text._ZL30hb_unicode_combining_class_nilP18hb_unicode_funcs_tjPv,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL30hb_unicode_combining_class_nilP18hb_unicode_funcs_tjPv, %function
_ZL30hb_unicode_combining_class_nilP18hb_unicode_funcs_tjPv:
	.fnstart
.LFB94:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZL30hb_unicode_combining_class_nilP18hb_unicode_funcs_tjPv, .-_ZL30hb_unicode_combining_class_nilP18hb_unicode_funcs_tjPv
	.section	.text._ZL30hb_unicode_eastasian_width_nilP18hb_unicode_funcs_tjPv,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL30hb_unicode_eastasian_width_nilP18hb_unicode_funcs_tjPv, %function
_ZL30hb_unicode_eastasian_width_nilP18hb_unicode_funcs_tjPv:
	.fnstart
.LFB95:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZL30hb_unicode_eastasian_width_nilP18hb_unicode_funcs_tjPv, .-_ZL30hb_unicode_eastasian_width_nilP18hb_unicode_funcs_tjPv
	.section	.text._ZL31hb_unicode_general_category_nilP18hb_unicode_funcs_tjPv,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL31hb_unicode_general_category_nilP18hb_unicode_funcs_tjPv, %function
_ZL31hb_unicode_general_category_nilP18hb_unicode_funcs_tjPv:
	.fnstart
.LFB96:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #7
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZL31hb_unicode_general_category_nilP18hb_unicode_funcs_tjPv, .-_ZL31hb_unicode_general_category_nilP18hb_unicode_funcs_tjPv
	.section	.text._ZL24hb_unicode_mirroring_nilP18hb_unicode_funcs_tjPv,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL24hb_unicode_mirroring_nilP18hb_unicode_funcs_tjPv, %function
_ZL24hb_unicode_mirroring_nilP18hb_unicode_funcs_tjPv:
	.fnstart
.LFB97:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #8]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZL24hb_unicode_mirroring_nilP18hb_unicode_funcs_tjPv, .-_ZL24hb_unicode_mirroring_nilP18hb_unicode_funcs_tjPv
	.section	.text._ZL21hb_unicode_script_nilP18hb_unicode_funcs_tjPv,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL21hb_unicode_script_nilP18hb_unicode_funcs_tjPv, %function
_ZL21hb_unicode_script_nilP18hb_unicode_funcs_tjPv:
	.fnstart
.LFB98:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movw	r3, #31354
	movt	r3, 23162
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZL21hb_unicode_script_nilP18hb_unicode_funcs_tjPv, .-_ZL21hb_unicode_script_nilP18hb_unicode_funcs_tjPv
	.section	.text._ZL22hb_unicode_compose_nilP18hb_unicode_funcs_tjjPjPv,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL22hb_unicode_compose_nilP18hb_unicode_funcs_tjjPjPv, %function
_ZL22hb_unicode_compose_nilP18hb_unicode_funcs_tjjPjPv:
	.fnstart
.LFB99:
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
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZL22hb_unicode_compose_nilP18hb_unicode_funcs_tjjPjPv, .-_ZL22hb_unicode_compose_nilP18hb_unicode_funcs_tjjPjPv
	.section	.text._ZL24hb_unicode_decompose_nilP18hb_unicode_funcs_tjPjS1_Pv,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL24hb_unicode_decompose_nilP18hb_unicode_funcs_tjPjS1_Pv, %function
_ZL24hb_unicode_decompose_nilP18hb_unicode_funcs_tjPjS1_Pv:
	.fnstart
.LFB100:
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
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZL24hb_unicode_decompose_nilP18hb_unicode_funcs_tjPjS1_Pv, .-_ZL24hb_unicode_decompose_nilP18hb_unicode_funcs_tjPjS1_Pv
	.section	.text._ZL38hb_unicode_decompose_compatibility_nilP18hb_unicode_funcs_tjPjPv,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL38hb_unicode_decompose_compatibility_nilP18hb_unicode_funcs_tjPjPv, %function
_ZL38hb_unicode_decompose_compatibility_nilP18hb_unicode_funcs_tjPjPv:
	.fnstart
.LFB101:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZL38hb_unicode_decompose_compatibility_nilP18hb_unicode_funcs_tjPjPv, .-_ZL38hb_unicode_decompose_compatibility_nilP18hb_unicode_funcs_tjPjPv
	.section	.text.hb_unicode_funcs_get_default,"ax",%progbits
	.align	2
	.global	hb_unicode_funcs_get_default
	.thumb
	.thumb_func
	.type	hb_unicode_funcs_get_default, %function
hb_unicode_funcs_get_default:
	.fnstart
.LFB102:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.setfp r7, sp, #0
	add	r7, sp, #0
	bl	hb_ucdn_get_unicode_funcs(PLT)
	mov	r3, r0
	mov	r0, r3
	pop	{r7, pc}
	.fnend
	.size	hb_unicode_funcs_get_default, .-hb_unicode_funcs_get_default
	.section	.text.hb_unicode_funcs_create,"ax",%progbits
	.align	2
	.global	hb_unicode_funcs_create
	.thumb
	.thumb_func
	.type	hb_unicode_funcs_create, %function
hb_unicode_funcs_create:
	.fnstart
.LFB103:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	bl	_Z16hb_object_createI18hb_unicode_funcs_tEPT_v(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L56
	bl	hb_unicode_funcs_get_empty(PLT)
	mov	r3, r0
	b	.L57
.L56:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L58
	bl	hb_unicode_funcs_get_empty(PLT)
	mov	r3, r0
	str	r3, [r7, #4]
.L58:
	ldr	r0, [r7, #4]
	bl	hb_unicode_funcs_make_immutable(PLT)
	ldr	r0, [r7, #4]
	bl	hb_unicode_funcs_reference(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #44]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	add	r4, r2, #52
	add	r5, r3, #52
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5, {r0, r1, r2, r3}
	stmia	r4, {r0, r1, r2, r3}
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	add	r4, r2, #84
	add	r5, r3, #84
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5, {r0, r1, r2, r3}
	stmia	r4, {r0, r1, r2, r3}
	ldr	r3, [r7, #12]
.L57:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.fnend
	.size	hb_unicode_funcs_create, .-hb_unicode_funcs_create
	.hidden	_hb_unicode_funcs_nil
	.global	_hb_unicode_funcs_nil
	.section	.data.rel.ro.local._hb_unicode_funcs_nil,"aw",%progbits
	.align	2
	.type	_hb_unicode_funcs_nil, %object
	.size	_hb_unicode_funcs_nil, 148
_hb_unicode_funcs_nil:
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	0
	.space	24
	.word	0
	.byte	1
	.space	3
	.word	_ZL30hb_unicode_combining_class_nilP18hb_unicode_funcs_tjPv
	.word	_ZL30hb_unicode_eastasian_width_nilP18hb_unicode_funcs_tjPv
	.word	_ZL31hb_unicode_general_category_nilP18hb_unicode_funcs_tjPv
	.word	_ZL24hb_unicode_mirroring_nilP18hb_unicode_funcs_tjPv
	.word	_ZL21hb_unicode_script_nilP18hb_unicode_funcs_tjPv
	.word	_ZL22hb_unicode_compose_nilP18hb_unicode_funcs_tjjPjPv
	.word	_ZL24hb_unicode_decompose_nilP18hb_unicode_funcs_tjPjS1_Pv
	.word	_ZL38hb_unicode_decompose_compatibility_nilP18hb_unicode_funcs_tjPjPv
	.space	64
	.section	.text.hb_unicode_funcs_get_empty,"ax",%progbits
	.align	2
	.global	hb_unicode_funcs_get_empty
	.thumb
	.thumb_func
	.type	hb_unicode_funcs_get_empty, %function
hb_unicode_funcs_get_empty:
	.fnstart
.LFB104:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L61
.LPIC0:
	add	r3, pc
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L62:
	.align	2
.L61:
	.word	_hb_unicode_funcs_nil-(.LPIC0+4)
	.cantunwind
	.fnend
	.size	hb_unicode_funcs_get_empty, .-hb_unicode_funcs_get_empty
	.section	.text.hb_unicode_funcs_reference,"ax",%progbits
	.align	2
	.global	hb_unicode_funcs_reference
	.thumb
	.thumb_func
	.type	hb_unicode_funcs_reference, %function
hb_unicode_funcs_reference:
	.fnstart
.LFB105:
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
	bl	_Z19hb_object_referenceI18hb_unicode_funcs_tEPT_S2_(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_unicode_funcs_reference, .-hb_unicode_funcs_reference
	.section	.text.hb_unicode_funcs_destroy,"ax",%progbits
	.align	2
	.global	hb_unicode_funcs_destroy
	.thumb
	.thumb_func
	.type	hb_unicode_funcs_destroy, %function
hb_unicode_funcs_destroy:
	.fnstart
.LFB106:
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
	bl	_Z17hb_object_destroyI18hb_unicode_funcs_tEbPT_(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L66
	b	.L65
.L66:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #116]
	cmp	r3, #0
	beq	.L68
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #116]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #84]
	mov	r0, r2
	blx	r3
.L68:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #120]
	cmp	r3, #0
	beq	.L69
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #120]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #88]
	mov	r0, r2
	blx	r3
.L69:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #124]
	cmp	r3, #0
	beq	.L70
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #124]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #92]
	mov	r0, r2
	blx	r3
.L70:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #128]
	cmp	r3, #0
	beq	.L71
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #128]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #96]
	mov	r0, r2
	blx	r3
.L71:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #132]
	cmp	r3, #0
	beq	.L72
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #132]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #100]
	mov	r0, r2
	blx	r3
.L72:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #136]
	cmp	r3, #0
	beq	.L73
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #136]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #104]
	mov	r0, r2
	blx	r3
.L73:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #140]
	cmp	r3, #0
	beq	.L74
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #140]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #108]
	mov	r0, r2
	blx	r3
.L74:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #144]
	cmp	r3, #0
	beq	.L75
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #144]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #112]
	mov	r0, r2
	blx	r3
.L75:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	mov	r0, r3
	bl	hb_unicode_funcs_destroy(PLT)
	ldr	r0, [r7, #4]
	bl	free(PLT)
.L65:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_unicode_funcs_destroy, .-hb_unicode_funcs_destroy
	.section	.text.hb_unicode_funcs_set_user_data,"ax",%progbits
	.align	2
	.global	hb_unicode_funcs_set_user_data
	.thumb
	.thumb_func
	.type	hb_unicode_funcs_set_user_data, %function
hb_unicode_funcs_set_user_data:
	.fnstart
.LFB107:
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
	bl	_Z23hb_object_set_user_dataI18hb_unicode_funcs_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_unicode_funcs_set_user_data, .-hb_unicode_funcs_set_user_data
	.section	.text.hb_unicode_funcs_get_user_data,"ax",%progbits
	.align	2
	.global	hb_unicode_funcs_get_user_data
	.thumb
	.thumb_func
	.type	hb_unicode_funcs_get_user_data, %function
hb_unicode_funcs_get_user_data:
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
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	_Z23hb_object_get_user_dataI18hb_unicode_funcs_tEPvPT_P18hb_user_data_key_t(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_unicode_funcs_get_user_data, .-hb_unicode_funcs_get_user_data
	.section	.text.hb_unicode_funcs_make_immutable,"ax",%progbits
	.align	2
	.global	hb_unicode_funcs_make_immutable
	.thumb
	.thumb_func
	.type	hb_unicode_funcs_make_immutable, %function
hb_unicode_funcs_make_immutable:
	.fnstart
.LFB109:
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
	bl	_Z18hb_object_is_inertI18hb_unicode_funcs_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L81
	b	.L80
.L81:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #48]
.L80:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_unicode_funcs_make_immutable, .-hb_unicode_funcs_make_immutable
	.section	.text.hb_unicode_funcs_is_immutable,"ax",%progbits
	.align	2
	.global	hb_unicode_funcs_is_immutable
	.thumb
	.thumb_func
	.type	hb_unicode_funcs_is_immutable, %function
hb_unicode_funcs_is_immutable:
	.fnstart
.LFB110:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	hb_unicode_funcs_is_immutable, .-hb_unicode_funcs_is_immutable
	.section	.text.hb_unicode_funcs_get_parent,"ax",%progbits
	.align	2
	.global	hb_unicode_funcs_get_parent
	.thumb
	.thumb_func
	.type	hb_unicode_funcs_get_parent, %function
hb_unicode_funcs_get_parent:
	.fnstart
.LFB111:
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
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L86
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	b	.L87
.L86:
	bl	hb_unicode_funcs_get_empty(PLT)
	mov	r3, r0
.L87:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_unicode_funcs_get_parent, .-hb_unicode_funcs_get_parent
	.section	.text.hb_unicode_funcs_set_combining_class_func,"ax",%progbits
	.align	2
	.global	hb_unicode_funcs_set_combining_class_func
	.thumb
	.thumb_func
	.type	hb_unicode_funcs_set_combining_class_func, %function
hb_unicode_funcs_set_combining_class_func:
	.fnstart
.LFB112:
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
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L90
	b	.L89
.L90:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #116]
	cmp	r3, #0
	beq	.L92
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #116]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #84]
	mov	r0, r2
	blx	r3
.L92:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L93
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #52]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #84]
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	str	r2, [r3, #116]
	b	.L89
.L93:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	ldr	r2, [r3, #52]
	ldr	r3, [r7, #12]
	str	r2, [r3, #52]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	ldr	r2, [r3, #84]
	ldr	r3, [r7, #12]
	str	r2, [r3, #84]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #116]
.L89:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_unicode_funcs_set_combining_class_func, .-hb_unicode_funcs_set_combining_class_func
	.section	.text.hb_unicode_funcs_set_eastasian_width_func,"ax",%progbits
	.align	2
	.global	hb_unicode_funcs_set_eastasian_width_func
	.thumb
	.thumb_func
	.type	hb_unicode_funcs_set_eastasian_width_func, %function
hb_unicode_funcs_set_eastasian_width_func:
	.fnstart
.LFB113:
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
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L95
	b	.L94
.L95:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #120]
	cmp	r3, #0
	beq	.L97
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #120]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #88]
	mov	r0, r2
	blx	r3
.L97:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L98
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #56]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #88]
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	str	r2, [r3, #120]
	b	.L94
.L98:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	ldr	r2, [r3, #56]
	ldr	r3, [r7, #12]
	str	r2, [r3, #56]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	ldr	r2, [r3, #88]
	ldr	r3, [r7, #12]
	str	r2, [r3, #88]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #120]
.L94:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_unicode_funcs_set_eastasian_width_func, .-hb_unicode_funcs_set_eastasian_width_func
	.section	.text.hb_unicode_funcs_set_general_category_func,"ax",%progbits
	.align	2
	.global	hb_unicode_funcs_set_general_category_func
	.thumb
	.thumb_func
	.type	hb_unicode_funcs_set_general_category_func, %function
hb_unicode_funcs_set_general_category_func:
	.fnstart
.LFB114:
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
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L100
	b	.L99
.L100:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #124]
	cmp	r3, #0
	beq	.L102
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #124]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #92]
	mov	r0, r2
	blx	r3
.L102:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L103
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #92]
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	str	r2, [r3, #124]
	b	.L99
.L103:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	ldr	r2, [r3, #60]
	ldr	r3, [r7, #12]
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	ldr	r2, [r3, #92]
	ldr	r3, [r7, #12]
	str	r2, [r3, #92]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #124]
.L99:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_unicode_funcs_set_general_category_func, .-hb_unicode_funcs_set_general_category_func
	.section	.text.hb_unicode_funcs_set_mirroring_func,"ax",%progbits
	.align	2
	.global	hb_unicode_funcs_set_mirroring_func
	.thumb
	.thumb_func
	.type	hb_unicode_funcs_set_mirroring_func, %function
hb_unicode_funcs_set_mirroring_func:
	.fnstart
.LFB115:
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
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L105
	b	.L104
.L105:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #128]
	cmp	r3, #0
	beq	.L107
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #128]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #96]
	mov	r0, r2
	blx	r3
.L107:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L108
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #96]
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	str	r2, [r3, #128]
	b	.L104
.L108:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	ldr	r2, [r3, #64]
	ldr	r3, [r7, #12]
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	ldr	r2, [r3, #96]
	ldr	r3, [r7, #12]
	str	r2, [r3, #96]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #128]
.L104:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_unicode_funcs_set_mirroring_func, .-hb_unicode_funcs_set_mirroring_func
	.section	.text.hb_unicode_funcs_set_script_func,"ax",%progbits
	.align	2
	.global	hb_unicode_funcs_set_script_func
	.thumb
	.thumb_func
	.type	hb_unicode_funcs_set_script_func, %function
hb_unicode_funcs_set_script_func:
	.fnstart
.LFB116:
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
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L110
	b	.L109
.L110:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #132]
	cmp	r3, #0
	beq	.L112
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #132]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #100]
	mov	r0, r2
	blx	r3
.L112:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L113
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #68]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #100]
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	str	r2, [r3, #132]
	b	.L109
.L113:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	ldr	r2, [r3, #68]
	ldr	r3, [r7, #12]
	str	r2, [r3, #68]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	ldr	r2, [r3, #100]
	ldr	r3, [r7, #12]
	str	r2, [r3, #100]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #132]
.L109:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_unicode_funcs_set_script_func, .-hb_unicode_funcs_set_script_func
	.section	.text.hb_unicode_funcs_set_compose_func,"ax",%progbits
	.align	2
	.global	hb_unicode_funcs_set_compose_func
	.thumb
	.thumb_func
	.type	hb_unicode_funcs_set_compose_func, %function
hb_unicode_funcs_set_compose_func:
	.fnstart
.LFB117:
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
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L115
	b	.L114
.L115:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #136]
	cmp	r3, #0
	beq	.L117
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #136]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #104]
	mov	r0, r2
	blx	r3
.L117:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L118
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #104]
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	str	r2, [r3, #136]
	b	.L114
.L118:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	ldr	r2, [r3, #72]
	ldr	r3, [r7, #12]
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	ldr	r2, [r3, #104]
	ldr	r3, [r7, #12]
	str	r2, [r3, #104]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #136]
.L114:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_unicode_funcs_set_compose_func, .-hb_unicode_funcs_set_compose_func
	.section	.text.hb_unicode_funcs_set_decompose_func,"ax",%progbits
	.align	2
	.global	hb_unicode_funcs_set_decompose_func
	.thumb
	.thumb_func
	.type	hb_unicode_funcs_set_decompose_func, %function
hb_unicode_funcs_set_decompose_func:
	.fnstart
.LFB118:
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
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L120
	b	.L119
.L120:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #140]
	cmp	r3, #0
	beq	.L122
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #140]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #108]
	mov	r0, r2
	blx	r3
.L122:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L123
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #76]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #108]
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	str	r2, [r3, #140]
	b	.L119
.L123:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	ldr	r2, [r3, #76]
	ldr	r3, [r7, #12]
	str	r2, [r3, #76]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	ldr	r2, [r3, #108]
	ldr	r3, [r7, #12]
	str	r2, [r3, #108]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #140]
.L119:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_unicode_funcs_set_decompose_func, .-hb_unicode_funcs_set_decompose_func
	.section	.text.hb_unicode_funcs_set_decompose_compatibility_func,"ax",%progbits
	.align	2
	.global	hb_unicode_funcs_set_decompose_compatibility_func
	.thumb
	.thumb_func
	.type	hb_unicode_funcs_set_decompose_compatibility_func, %function
hb_unicode_funcs_set_decompose_compatibility_func:
	.fnstart
.LFB119:
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
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L125
	b	.L124
.L125:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #144]
	cmp	r3, #0
	beq	.L127
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #144]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #112]
	mov	r0, r2
	blx	r3
.L127:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L128
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #80]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #112]
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	str	r2, [r3, #144]
	b	.L124
.L128:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	ldr	r2, [r3, #80]
	ldr	r3, [r7, #12]
	str	r2, [r3, #80]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	ldr	r2, [r3, #112]
	ldr	r3, [r7, #12]
	str	r2, [r3, #112]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #144]
.L124:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_unicode_funcs_set_decompose_compatibility_func, .-hb_unicode_funcs_set_decompose_compatibility_func
	.section	.text.hb_unicode_combining_class,"ax",%progbits
	.align	2
	.global	hb_unicode_combining_class
	.thumb
	.thumb_func
	.type	hb_unicode_combining_class, %function
hb_unicode_combining_class:
	.fnstart
.LFB120:
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
	bl	_ZN18hb_unicode_funcs_t15combining_classEj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_unicode_combining_class, .-hb_unicode_combining_class
	.section	.text.hb_unicode_eastasian_width,"ax",%progbits
	.align	2
	.global	hb_unicode_eastasian_width
	.thumb
	.thumb_func
	.type	hb_unicode_eastasian_width, %function
hb_unicode_eastasian_width:
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
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	_ZN18hb_unicode_funcs_t15eastasian_widthEj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_unicode_eastasian_width, .-hb_unicode_eastasian_width
	.section	.text.hb_unicode_general_category,"ax",%progbits
	.align	2
	.global	hb_unicode_general_category
	.thumb
	.thumb_func
	.type	hb_unicode_general_category, %function
hb_unicode_general_category:
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
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	_ZN18hb_unicode_funcs_t16general_categoryEj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_unicode_general_category, .-hb_unicode_general_category
	.section	.text.hb_unicode_mirroring,"ax",%progbits
	.align	2
	.global	hb_unicode_mirroring
	.thumb
	.thumb_func
	.type	hb_unicode_mirroring, %function
hb_unicode_mirroring:
	.fnstart
.LFB123:
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
	bl	_ZN18hb_unicode_funcs_t9mirroringEj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_unicode_mirroring, .-hb_unicode_mirroring
	.section	.text.hb_unicode_script,"ax",%progbits
	.align	2
	.global	hb_unicode_script
	.thumb
	.thumb_func
	.type	hb_unicode_script, %function
hb_unicode_script:
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
	bl	_ZN18hb_unicode_funcs_t6scriptEj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_unicode_script, .-hb_unicode_script
	.section	.text.hb_unicode_compose,"ax",%progbits
	.align	2
	.global	hb_unicode_compose
	.thumb
	.thumb_func
	.type	hb_unicode_compose, %function
hb_unicode_compose:
	.fnstart
.LFB125:
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
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	_ZN18hb_unicode_funcs_t7composeEjjPj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_unicode_compose, .-hb_unicode_compose
	.section	.text.hb_unicode_decompose,"ax",%progbits
	.align	2
	.global	hb_unicode_decompose
	.thumb
	.thumb_func
	.type	hb_unicode_decompose, %function
hb_unicode_decompose:
	.fnstart
.LFB126:
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
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	_ZN18hb_unicode_funcs_t9decomposeEjPjS0_(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_unicode_decompose, .-hb_unicode_decompose
	.section	.text.hb_unicode_decompose_compatibility,"ax",%progbits
	.align	2
	.global	hb_unicode_decompose_compatibility
	.thumb
	.thumb_func
	.type	hb_unicode_decompose_compatibility, %function
hb_unicode_decompose_compatibility:
	.fnstart
.LFB127:
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
	bl	_ZN18hb_unicode_funcs_t23decompose_compatibilityEjPj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_unicode_decompose_compatibility, .-hb_unicode_decompose_compatibility
	.hidden	_hb_modified_combining_class
	.global	_hb_modified_combining_class
	.section	.rodata._hb_modified_combining_class,"a",%progbits
	.align	2
	.type	_hb_modified_combining_class, %object
	.size	_hb_modified_combining_class, 256
_hb_modified_combining_class:
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	22
	.byte	15
	.byte	16
	.byte	17
	.byte	23
	.byte	18
	.byte	19
	.byte	20
	.byte	21
	.byte	14
	.byte	24
	.byte	12
	.byte	25
	.byte	13
	.byte	10
	.byte	11
	.byte	26
	.byte	28
	.byte	29
	.byte	30
	.byte	31
	.byte	32
	.byte	33
	.byte	27
	.byte	34
	.byte	35
	.byte	36
	.byte	37
	.byte	38
	.byte	39
	.byte	40
	.byte	41
	.byte	42
	.byte	43
	.byte	44
	.byte	45
	.byte	46
	.byte	47
	.byte	48
	.byte	49
	.byte	50
	.byte	51
	.byte	52
	.byte	53
	.byte	54
	.byte	55
	.byte	56
	.byte	57
	.byte	58
	.byte	59
	.byte	60
	.byte	61
	.byte	62
	.byte	63
	.byte	64
	.byte	65
	.byte	66
	.byte	67
	.byte	68
	.byte	69
	.byte	70
	.byte	71
	.byte	72
	.byte	73
	.byte	74
	.byte	75
	.byte	76
	.byte	77
	.byte	78
	.byte	79
	.byte	80
	.byte	81
	.byte	82
	.byte	83
	.byte	0
	.byte	85
	.byte	86
	.byte	87
	.byte	88
	.byte	89
	.byte	90
	.byte	0
	.byte	92
	.byte	93
	.byte	94
	.byte	95
	.byte	96
	.byte	97
	.byte	98
	.byte	99
	.byte	100
	.byte	101
	.byte	102
	.byte	3
	.byte	104
	.byte	105
	.byte	106
	.byte	107
	.byte	108
	.byte	109
	.byte	110
	.byte	111
	.byte	112
	.byte	113
	.byte	114
	.byte	115
	.byte	116
	.byte	117
	.byte	118
	.byte	119
	.byte	120
	.byte	121
	.byte	122
	.byte	123
	.byte	124
	.byte	125
	.byte	126
	.byte	127
	.byte	-128
	.byte	-127
	.byte	-126
	.byte	-125
	.byte	-124
	.byte	-123
	.byte	-122
	.byte	-121
	.byte	-120
	.byte	-119
	.byte	-118
	.byte	-117
	.byte	-116
	.byte	-115
	.byte	-114
	.byte	-113
	.byte	-112
	.byte	-111
	.byte	-110
	.byte	-109
	.byte	-108
	.byte	-107
	.byte	-106
	.byte	-105
	.byte	-104
	.byte	-103
	.byte	-102
	.byte	-101
	.byte	-100
	.byte	-99
	.byte	-98
	.byte	-97
	.byte	-96
	.byte	-95
	.byte	-94
	.byte	-93
	.byte	-92
	.byte	-91
	.byte	-90
	.byte	-89
	.byte	-88
	.byte	-87
	.byte	-86
	.byte	-85
	.byte	-84
	.byte	-83
	.byte	-82
	.byte	-81
	.byte	-80
	.byte	-79
	.byte	-78
	.byte	-77
	.byte	-76
	.byte	-75
	.byte	-74
	.byte	-73
	.byte	-72
	.byte	-71
	.byte	-70
	.byte	-69
	.byte	-68
	.byte	-67
	.byte	-66
	.byte	-65
	.byte	-64
	.byte	-63
	.byte	-62
	.byte	-61
	.byte	-60
	.byte	-59
	.byte	-58
	.byte	-57
	.byte	-56
	.byte	-55
	.byte	-54
	.byte	-53
	.byte	-52
	.byte	-51
	.byte	-50
	.byte	-49
	.byte	-48
	.byte	-47
	.byte	-46
	.byte	-45
	.byte	-44
	.byte	-43
	.byte	-42
	.byte	-41
	.byte	-40
	.byte	-39
	.byte	-38
	.byte	-37
	.byte	-36
	.byte	-35
	.byte	-34
	.byte	-33
	.byte	-32
	.byte	-31
	.byte	-30
	.byte	-29
	.byte	-28
	.byte	-27
	.byte	-26
	.byte	-25
	.byte	-24
	.byte	-23
	.byte	-22
	.byte	-21
	.byte	-20
	.byte	-19
	.byte	-18
	.byte	-17
	.byte	-16
	.byte	-15
	.byte	-14
	.byte	-13
	.byte	-12
	.byte	-11
	.byte	-10
	.byte	-9
	.byte	-8
	.byte	-7
	.byte	-6
	.byte	-5
	.byte	-4
	.byte	-3
	.byte	-2
	.byte	-1
	.section	.text._ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4initEv,"axG",%progbits,_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4initEv,comdat
	.align	2
	.weak	_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4initEv
	.thumb
	.thumb_func
	.type	_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4initEv, %function
_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4initEv:
	.fnstart
.LFB130:
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
.LFB131:
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
	bne	.L147
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE6finishEv(PLT)
	b	.L146
.L147:
	ldr	r0, [r7]
	bl	_ZN10hb_mutex_t4lockEv(PLT)
	b	.L149
.L150:
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
.L149:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L150
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE6finishEv(PLT)
	ldr	r0, [r7]
	bl	_ZN10hb_mutex_t6unlockEv(PLT)
.L146:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE6finishERS2_, .-_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE6finishERS2_
	.section	.text._Z16hb_object_createI18hb_unicode_funcs_tEPT_v,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z16hb_object_createI18hb_unicode_funcs_tEPT_v, %function
_Z16hb_object_createI18hb_unicode_funcs_tEPT_v:
	.fnstart
.LFB135:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	movs	r0, #1
	movs	r1, #148
	bl	calloc(PLT)
	mov	r3, r0
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L152
	ldr	r3, [r7, #4]
	b	.L153
.L152:
	ldr	r0, [r7, #4]
	bl	_Z14hb_object_initI18hb_unicode_funcs_tEvPT_(PLT)
	ldr	r0, [r7, #4]
	ldr	r3, .L154
.LPIC1:
	add	r3, pc
	mov	r1, r3
	bl	_Z15hb_object_traceI18hb_unicode_funcs_tEvPKT_PKc(PLT)
	ldr	r3, [r7, #4]
.L153:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L155:
	.align	2
.L154:
	.word	_ZZ16hb_object_createI18hb_unicode_funcs_tEPT_vE19__PRETTY_FUNCTION__-(.LPIC1+4)
	.fnend
	.size	_Z16hb_object_createI18hb_unicode_funcs_tEPT_v, .-_Z16hb_object_createI18hb_unicode_funcs_tEPT_v
	.section	.text._Z19hb_object_referenceI18hb_unicode_funcs_tEPT_S2_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z19hb_object_referenceI18hb_unicode_funcs_tEPT_S2_, %function
_Z19hb_object_referenceI18hb_unicode_funcs_tEPT_S2_:
	.fnstart
.LFB136:
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
	ldr	r3, .L162
.LPIC2:
	add	r3, pc
	mov	r1, r3
	bl	_Z15hb_object_traceI18hb_unicode_funcs_tEvPKT_PKc(PLT)
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L157
	ldr	r0, [r7, #4]
	bl	_Z18hb_object_is_inertI18hb_unicode_funcs_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L158
.L157:
	movs	r3, #1
	b	.L159
.L158:
	movs	r3, #0
.L159:
	cmp	r3, #0
	beq	.L160
	ldr	r3, [r7, #4]
	b	.L161
.L160:
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN20hb_reference_count_t3incEv(PLT)
	ldr	r3, [r7, #4]
.L161:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L163:
	.align	2
.L162:
	.word	_ZZ19hb_object_referenceI18hb_unicode_funcs_tEPT_S2_E19__PRETTY_FUNCTION__-(.LPIC2+4)
	.fnend
	.size	_Z19hb_object_referenceI18hb_unicode_funcs_tEPT_S2_, .-_Z19hb_object_referenceI18hb_unicode_funcs_tEPT_S2_
	.section	.text._Z17hb_object_destroyI18hb_unicode_funcs_tEbPT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z17hb_object_destroyI18hb_unicode_funcs_tEbPT_, %function
_Z17hb_object_destroyI18hb_unicode_funcs_tEbPT_:
	.fnstart
.LFB137:
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
	ldr	r3, .L171
.LPIC3:
	add	r3, pc
	mov	r1, r3
	bl	_Z15hb_object_traceI18hb_unicode_funcs_tEvPKT_PKc(PLT)
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L165
	ldr	r0, [r7, #4]
	bl	_Z18hb_object_is_inertI18hb_unicode_funcs_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L166
.L165:
	movs	r3, #1
	b	.L167
.L166:
	movs	r3, #0
.L167:
	cmp	r3, #0
	beq	.L168
	movs	r3, #0
	b	.L169
.L168:
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
	beq	.L170
	movs	r3, #0
	b	.L169
.L170:
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN20hb_reference_count_t6finishEv(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZN20hb_user_data_array_t6finishEv(PLT)
	movs	r3, #1
.L169:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L172:
	.align	2
.L171:
	.word	_ZZ17hb_object_destroyI18hb_unicode_funcs_tEbPT_E19__PRETTY_FUNCTION__-(.LPIC3+4)
	.fnend
	.size	_Z17hb_object_destroyI18hb_unicode_funcs_tEbPT_, .-_Z17hb_object_destroyI18hb_unicode_funcs_tEbPT_
	.section	.text._Z23hb_object_set_user_dataI18hb_unicode_funcs_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z23hb_object_set_user_dataI18hb_unicode_funcs_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei, %function
_Z23hb_object_set_user_dataI18hb_unicode_funcs_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei:
	.fnstart
.LFB138:
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
	beq	.L174
	ldr	r0, [r7, #12]
	bl	_Z18hb_object_is_inertI18hb_unicode_funcs_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L175
.L174:
	movs	r3, #1
	b	.L176
.L175:
	movs	r3, #0
.L176:
	cmp	r3, #0
	beq	.L177
	movs	r3, #0
	b	.L178
.L177:
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
.L178:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_Z23hb_object_set_user_dataI18hb_unicode_funcs_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei, .-_Z23hb_object_set_user_dataI18hb_unicode_funcs_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei
	.section	.text._Z23hb_object_get_user_dataI18hb_unicode_funcs_tEPvPT_P18hb_user_data_key_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z23hb_object_get_user_dataI18hb_unicode_funcs_tEPvPT_P18hb_user_data_key_t, %function
_Z23hb_object_get_user_dataI18hb_unicode_funcs_tEPvPT_P18hb_user_data_key_t:
	.fnstart
.LFB139:
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
	beq	.L180
	ldr	r0, [r7, #4]
	bl	_Z18hb_object_is_inertI18hb_unicode_funcs_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L181
.L180:
	movs	r3, #1
	b	.L182
.L181:
	movs	r3, #0
.L182:
	cmp	r3, #0
	beq	.L183
	movs	r3, #0
	b	.L184
.L183:
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN20hb_user_data_array_t3getEP18hb_user_data_key_t(PLT)
	mov	r3, r0
.L184:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_Z23hb_object_get_user_dataI18hb_unicode_funcs_tEPvPT_P18hb_user_data_key_t, .-_Z23hb_object_get_user_dataI18hb_unicode_funcs_tEPvPT_P18hb_user_data_key_t
	.section	.text._Z18hb_object_is_inertI18hb_unicode_funcs_tEbPKT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z18hb_object_is_inertI18hb_unicode_funcs_tEbPKT_, %function
_Z18hb_object_is_inertI18hb_unicode_funcs_tEbPKT_:
	.fnstart
.LFB140:
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
	.size	_Z18hb_object_is_inertI18hb_unicode_funcs_tEbPKT_, .-_Z18hb_object_is_inertI18hb_unicode_funcs_tEbPKT_
	.section	.text._ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4initEv,"axG",%progbits,_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4initEv,comdat
	.align	2
	.weak	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4initEv
	.thumb
	.thumb_func
	.type	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4initEv, %function
_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4initEv:
	.fnstart
.LFB141:
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
.LFB142:
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
	beq	.L189
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r0, r3
	bl	free(PLT)
.L189:
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
.LFB143:
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
.LFB144:
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
	.section	.text._Z14hb_object_initI18hb_unicode_funcs_tEvPT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z14hb_object_initI18hb_unicode_funcs_tEvPT_, %function
_Z14hb_object_initI18hb_unicode_funcs_tEvPT_:
	.fnstart
.LFB145:
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
	.size	_Z14hb_object_initI18hb_unicode_funcs_tEvPT_, .-_Z14hb_object_initI18hb_unicode_funcs_tEvPT_
	.section	.rodata
	.align	2
.LC0:
	.ascii	"OBJECT\000"
	.align	2
.LC1:
	.ascii	"%s refcount=%d\000"
	.section	.text._Z15hb_object_traceI18hb_unicode_funcs_tEvPKT_PKc,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z15hb_object_traceI18hb_unicode_funcs_tEvPKT_PKc, %function
_Z15hb_object_traceI18hb_unicode_funcs_tEvPKT_PKc:
	.fnstart
.LFB146:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #24
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L195
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	b	.L196
.L195:
	movs	r3, #0
.L196:
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	ldr	r2, .L197
.LPIC4:
	add	r2, pc
	str	r2, [sp, #8]
	ldr	r2, [r7]
	str	r2, [sp, #12]
	str	r3, [sp, #16]
	ldr	r3, .L197+4
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
.L198:
	.align	2
.L197:
	.word	.LC1-(.LPIC4+4)
	.word	.LC0-(.LPIC5+4)
	.cantunwind
	.fnend
	.size	_Z15hb_object_traceI18hb_unicode_funcs_tEvPKT_PKc, .-_Z15hb_object_traceI18hb_unicode_funcs_tEvPKT_PKc
	.section	.rodata._ZZ16hb_object_createI18hb_unicode_funcs_tEPT_vE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZ16hb_object_createI18hb_unicode_funcs_tEPT_vE19__PRETTY_FUNCTION__, %object
	.size	_ZZ16hb_object_createI18hb_unicode_funcs_tEPT_vE19__PRETTY_FUNCTION__, 58
_ZZ16hb_object_createI18hb_unicode_funcs_tEPT_vE19__PRETTY_FUNCTION__:
	.ascii	"Type* hb_object_create() [with Type = hb_unicode_fu"
	.ascii	"ncs_t]\000"
	.section	.rodata._ZZ19hb_object_referenceI18hb_unicode_funcs_tEPT_S2_E19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZ19hb_object_referenceI18hb_unicode_funcs_tEPT_S2_E19__PRETTY_FUNCTION__, %object
	.size	_ZZ19hb_object_referenceI18hb_unicode_funcs_tEPT_S2_E19__PRETTY_FUNCTION__, 66
_ZZ19hb_object_referenceI18hb_unicode_funcs_tEPT_S2_E19__PRETTY_FUNCTION__:
	.ascii	"Type* hb_object_reference(Type*) [with Type = hb_un"
	.ascii	"icode_funcs_t]\000"
	.section	.rodata._ZZ17hb_object_destroyI18hb_unicode_funcs_tEbPT_E19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZ17hb_object_destroyI18hb_unicode_funcs_tEbPT_E19__PRETTY_FUNCTION__, %object
	.size	_ZZ17hb_object_destroyI18hb_unicode_funcs_tEbPT_E19__PRETTY_FUNCTION__, 63
_ZZ17hb_object_destroyI18hb_unicode_funcs_tEbPT_E19__PRETTY_FUNCTION__:
	.ascii	"bool hb_object_destroy(Type*) [with Type = hb_unico"
	.ascii	"de_funcs_t]\000"
	.hidden	_ZN20hb_user_data_array_t3getEP18hb_user_data_key_t
	.hidden	_ZN20hb_user_data_array_t3setEP18hb_user_data_key_tPvPFvS2_Ei
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
