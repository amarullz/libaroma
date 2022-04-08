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
	.file	"hb-font.cc"
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
	.section	.text._ZL18hb_codepoint_parsePKcjiPj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL18hb_codepoint_parsePKcjiPj, %function
_ZL18hb_codepoint_parsePKcjiPj:
	.fnstart
.LFB57:
	@ args = 0, pretend = 0, frame = 96
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #96
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	add	r3, r7, #20
	mov	r0, r3
	bl	_Z12ARRAY_LENGTHIcLj64EEjRAT0__KT_(PLT)
	mov	r3, r0
	subs	r3, r3, #1
	str	r3, [r7, #88]
	add	r2, r7, #88
	add	r3, r7, #8
	mov	r0, r2
	mov	r1, r3
	bl	_Z3MINIjET_RKS0_S2_(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	add	r2, r7, #20
	mov	r0, r2
	ldr	r1, [r7, #12]
	mov	r2, r3
	bl	strncpy(PLT)
	ldr	r3, [r7, #8]
	add	r2, r7, #96
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3, #-76]
	bl	__errno_location(PLT)
	mov	r3, r0
	movs	r2, #0
	str	r2, [r3]
	add	r2, r7, #20
	add	r3, r7, #84
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #4]
	bl	strtoul(PLT)
	str	r0, [r7, #92]
	bl	__errno_location(PLT)
	mov	r3, r0
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L3
	movs	r3, #0
	b	.L6
.L3:
	ldr	r3, [r7, #84]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L5
	movs	r3, #0
	b	.L6
.L5:
	ldr	r3, [r7]
	ldr	r2, [r7, #92]
	str	r2, [r3]
	movs	r3, #1
.L6:
	mov	r0, r3
	adds	r7, r7, #96
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZL18hb_codepoint_parsePKcjiPj, .-_ZL18hb_codepoint_parsePKcjiPj
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
	beq	.L19
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #4]
	mov	r0, r2
	blx	r3
.L19:
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
	.global	__aeabi_ldivmod
	.section	.text._ZN9hb_font_t23parent_scale_x_distanceEi,"axG",%progbits,_ZN9hb_font_t23parent_scale_x_distanceEi,comdat
	.align	2
	.weak	_ZN9hb_font_t23parent_scale_x_distanceEi
	.thumb
	.thumb_func
	.type	_ZN9hb_font_t23parent_scale_x_distanceEi, %function
_ZN9hb_font_t23parent_scale_x_distanceEi:
	.fnstart
.LFB91:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L24
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	ldr	r2, [r3, #56]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	cmp	r2, r3
	beq	.L24
	ldr	r3, [r7]
	mov	r0, r3
	asr	r1, r0, #31
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	mov	r2, r3
	asr	r3, r2, #31
	mul	r5, r2, r1
	mul	r4, r0, r3
	add	r4, r4, r5
	umull	r2, r3, r0, r2
	adds	r1, r4, r3
	mov	r3, r1
	ldr	r1, [r7, #4]
	ldr	r1, [r1, #48]
	ldr	r1, [r1, #56]
	mov	r4, r1
	asr	r5, r4, #31
	mov	r0, r2
	mov	r1, r3
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_ldivmod(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r3, r2
	b	.L25
.L24:
	ldr	r3, [r7]
.L25:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.cantunwind
	.fnend
	.size	_ZN9hb_font_t23parent_scale_x_distanceEi, .-_ZN9hb_font_t23parent_scale_x_distanceEi
	.section	.text._ZN9hb_font_t23parent_scale_y_distanceEi,"axG",%progbits,_ZN9hb_font_t23parent_scale_y_distanceEi,comdat
	.align	2
	.weak	_ZN9hb_font_t23parent_scale_y_distanceEi
	.thumb
	.thumb_func
	.type	_ZN9hb_font_t23parent_scale_y_distanceEi, %function
_ZN9hb_font_t23parent_scale_y_distanceEi:
	.fnstart
.LFB92:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L27
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	ldr	r2, [r3, #60]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	cmp	r2, r3
	beq	.L27
	ldr	r3, [r7]
	mov	r0, r3
	asr	r1, r0, #31
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	mov	r2, r3
	asr	r3, r2, #31
	mul	r5, r2, r1
	mul	r4, r0, r3
	add	r4, r4, r5
	umull	r2, r3, r0, r2
	adds	r1, r4, r3
	mov	r3, r1
	ldr	r1, [r7, #4]
	ldr	r1, [r1, #48]
	ldr	r1, [r1, #60]
	mov	r4, r1
	asr	r5, r4, #31
	mov	r0, r2
	mov	r1, r3
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_ldivmod(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r3, r2
	b	.L28
.L27:
	ldr	r3, [r7]
.L28:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.cantunwind
	.fnend
	.size	_ZN9hb_font_t23parent_scale_y_distanceEi, .-_ZN9hb_font_t23parent_scale_y_distanceEi
	.section	.text._ZN9hb_font_t23parent_scale_x_positionEi,"axG",%progbits,_ZN9hb_font_t23parent_scale_x_positionEi,comdat
	.align	2
	.weak	_ZN9hb_font_t23parent_scale_x_positionEi
	.thumb
	.thumb_func
	.type	_ZN9hb_font_t23parent_scale_x_positionEi, %function
_ZN9hb_font_t23parent_scale_x_positionEi:
	.fnstart
.LFB93:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	_ZN9hb_font_t23parent_scale_x_distanceEi(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN9hb_font_t23parent_scale_x_positionEi, .-_ZN9hb_font_t23parent_scale_x_positionEi
	.section	.text._ZN9hb_font_t23parent_scale_y_positionEi,"axG",%progbits,_ZN9hb_font_t23parent_scale_y_positionEi,comdat
	.align	2
	.weak	_ZN9hb_font_t23parent_scale_y_positionEi
	.thumb
	.thumb_func
	.type	_ZN9hb_font_t23parent_scale_y_positionEi, %function
_ZN9hb_font_t23parent_scale_y_positionEi:
	.fnstart
.LFB94:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	_ZN9hb_font_t23parent_scale_y_distanceEi(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN9hb_font_t23parent_scale_y_positionEi, .-_ZN9hb_font_t23parent_scale_y_positionEi
	.section	.text._ZN9hb_font_t21parent_scale_distanceEPiS0_,"axG",%progbits,_ZN9hb_font_t21parent_scale_distanceEPiS0_,comdat
	.align	2
	.weak	_ZN9hb_font_t21parent_scale_distanceEPiS0_
	.thumb
	.thumb_func
	.type	_ZN9hb_font_t21parent_scale_distanceEPiS0_, %function
_ZN9hb_font_t21parent_scale_distanceEPiS0_:
	.fnstart
.LFB95:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZN9hb_font_t23parent_scale_x_distanceEi(PLT)
	mov	r2, r0
	ldr	r3, [r7, #8]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZN9hb_font_t23parent_scale_y_distanceEi(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3]
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN9hb_font_t21parent_scale_distanceEPiS0_, .-_ZN9hb_font_t21parent_scale_distanceEPiS0_
	.section	.text._ZN9hb_font_t21parent_scale_positionEPiS0_,"axG",%progbits,_ZN9hb_font_t21parent_scale_positionEPiS0_,comdat
	.align	2
	.weak	_ZN9hb_font_t21parent_scale_positionEPiS0_
	.thumb
	.thumb_func
	.type	_ZN9hb_font_t21parent_scale_positionEPiS0_, %function
_ZN9hb_font_t21parent_scale_positionEPiS0_:
	.fnstart
.LFB96:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZN9hb_font_t23parent_scale_x_positionEi(PLT)
	mov	r2, r0
	ldr	r3, [r7, #8]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZN9hb_font_t23parent_scale_y_positionEi(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3]
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN9hb_font_t21parent_scale_positionEPiS0_, .-_ZN9hb_font_t21parent_scale_positionEPiS0_
	.section	.text._ZN9hb_font_t9get_glyphEjjPj,"axG",%progbits,_ZN9hb_font_t9get_glyphEjjPj,comdat
	.align	2
	.weak	_ZN9hb_font_t9get_glyphEjjPj
	.thumb
	.thumb_func
	.type	_ZN9hb_font_t9get_glyphEjjPj, %function
_ZN9hb_font_t9get_glyphEjjPj:
	.fnstart
.LFB98:
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
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #72]
	ldr	r4, [r3, #48]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #76]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #72]
	ldr	r2, [r2, #92]
	ldr	r1, [r7]
	str	r1, [sp]
	str	r2, [sp, #4]
	ldr	r0, [r7, #12]
	mov	r1, r3
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	blx	r4
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZN9hb_font_t9get_glyphEjjPj, .-_ZN9hb_font_t9get_glyphEjjPj
	.section	.text._ZN9hb_font_t19get_glyph_h_advanceEj,"axG",%progbits,_ZN9hb_font_t19get_glyph_h_advanceEj,comdat
	.align	2
	.weak	_ZN9hb_font_t19get_glyph_h_advanceEj
	.thumb
	.thumb_func
	.type	_ZN9hb_font_t19get_glyph_h_advanceEj, %function
_ZN9hb_font_t19get_glyph_h_advanceEj:
	.fnstart
.LFB99:
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
	ldr	r3, [r3, #72]
	ldr	r4, [r3, #52]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #76]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #72]
	ldr	r3, [r3, #96]
	ldr	r0, [r7, #4]
	mov	r1, r2
	ldr	r2, [r7]
	blx	r4
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZN9hb_font_t19get_glyph_h_advanceEj, .-_ZN9hb_font_t19get_glyph_h_advanceEj
	.section	.text._ZN9hb_font_t19get_glyph_v_advanceEj,"axG",%progbits,_ZN9hb_font_t19get_glyph_v_advanceEj,comdat
	.align	2
	.weak	_ZN9hb_font_t19get_glyph_v_advanceEj
	.thumb
	.thumb_func
	.type	_ZN9hb_font_t19get_glyph_v_advanceEj, %function
_ZN9hb_font_t19get_glyph_v_advanceEj:
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
	ldr	r3, [r3, #72]
	ldr	r4, [r3, #56]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #76]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #72]
	ldr	r3, [r3, #100]
	ldr	r0, [r7, #4]
	mov	r1, r2
	ldr	r2, [r7]
	blx	r4
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZN9hb_font_t19get_glyph_v_advanceEj, .-_ZN9hb_font_t19get_glyph_v_advanceEj
	.section	.text._ZN9hb_font_t18get_glyph_h_originEjPiS0_,"axG",%progbits,_ZN9hb_font_t18get_glyph_h_originEjPiS0_,comdat
	.align	2
	.weak	_ZN9hb_font_t18get_glyph_h_originEjPiS0_
	.thumb
	.thumb_func
	.type	_ZN9hb_font_t18get_glyph_h_originEjPiS0_, %function
_ZN9hb_font_t18get_glyph_h_originEjPiS0_:
	.fnstart
.LFB101:
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
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #72]
	ldr	r4, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #76]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #72]
	ldr	r2, [r2, #104]
	ldr	r1, [r7]
	str	r1, [sp]
	str	r2, [sp, #4]
	ldr	r0, [r7, #12]
	mov	r1, r3
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	blx	r4
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZN9hb_font_t18get_glyph_h_originEjPiS0_, .-_ZN9hb_font_t18get_glyph_h_originEjPiS0_
	.section	.text._ZN9hb_font_t18get_glyph_v_originEjPiS0_,"axG",%progbits,_ZN9hb_font_t18get_glyph_v_originEjPiS0_,comdat
	.align	2
	.weak	_ZN9hb_font_t18get_glyph_v_originEjPiS0_
	.thumb
	.thumb_func
	.type	_ZN9hb_font_t18get_glyph_v_originEjPiS0_, %function
_ZN9hb_font_t18get_glyph_v_originEjPiS0_:
	.fnstart
.LFB102:
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
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #72]
	ldr	r4, [r3, #64]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #76]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #72]
	ldr	r2, [r2, #108]
	ldr	r1, [r7]
	str	r1, [sp]
	str	r2, [sp, #4]
	ldr	r0, [r7, #12]
	mov	r1, r3
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	blx	r4
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZN9hb_font_t18get_glyph_v_originEjPiS0_, .-_ZN9hb_font_t18get_glyph_v_originEjPiS0_
	.section	.text._ZN9hb_font_t19get_glyph_h_kerningEjj,"axG",%progbits,_ZN9hb_font_t19get_glyph_h_kerningEjj,comdat
	.align	2
	.weak	_ZN9hb_font_t19get_glyph_h_kerningEjj
	.thumb
	.thumb_func
	.type	_ZN9hb_font_t19get_glyph_h_kerningEjj, %function
_ZN9hb_font_t19get_glyph_h_kerningEjj:
	.fnstart
.LFB103:
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
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #72]
	ldr	r4, [r3, #68]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #76]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #72]
	ldr	r2, [r2, #112]
	str	r2, [sp]
	ldr	r0, [r7, #12]
	mov	r1, r3
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	blx	r4
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZN9hb_font_t19get_glyph_h_kerningEjj, .-_ZN9hb_font_t19get_glyph_h_kerningEjj
	.section	.text._ZN9hb_font_t19get_glyph_v_kerningEjj,"axG",%progbits,_ZN9hb_font_t19get_glyph_v_kerningEjj,comdat
	.align	2
	.weak	_ZN9hb_font_t19get_glyph_v_kerningEjj
	.thumb
	.thumb_func
	.type	_ZN9hb_font_t19get_glyph_v_kerningEjj, %function
_ZN9hb_font_t19get_glyph_v_kerningEjj:
	.fnstart
.LFB104:
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
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #72]
	ldr	r4, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #76]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #72]
	ldr	r2, [r2, #116]
	str	r2, [sp]
	ldr	r0, [r7, #12]
	mov	r1, r3
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	blx	r4
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZN9hb_font_t19get_glyph_v_kerningEjj, .-_ZN9hb_font_t19get_glyph_v_kerningEjj
	.section	.text._ZN9hb_font_t17get_glyph_extentsEjP18hb_glyph_extents_t,"axG",%progbits,_ZN9hb_font_t17get_glyph_extentsEjP18hb_glyph_extents_t,comdat
	.align	2
	.weak	_ZN9hb_font_t17get_glyph_extentsEjP18hb_glyph_extents_t
	.thumb
	.thumb_func
	.type	_ZN9hb_font_t17get_glyph_extentsEjP18hb_glyph_extents_t, %function
_ZN9hb_font_t17get_glyph_extentsEjP18hb_glyph_extents_t:
	.fnstart
.LFB105:
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
	ldr	r0, [r7, #4]
	movs	r1, #0
	movs	r2, #16
	bl	memset(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #72]
	ldr	r4, [r3, #76]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #76]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #72]
	ldr	r2, [r2, #120]
	str	r2, [sp]
	ldr	r0, [r7, #12]
	mov	r1, r3
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	blx	r4
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZN9hb_font_t17get_glyph_extentsEjP18hb_glyph_extents_t, .-_ZN9hb_font_t17get_glyph_extentsEjP18hb_glyph_extents_t
	.section	.text._ZN9hb_font_t23get_glyph_contour_pointEjjPiS0_,"axG",%progbits,_ZN9hb_font_t23get_glyph_contour_pointEjjPiS0_,comdat
	.align	2
	.weak	_ZN9hb_font_t23get_glyph_contour_pointEjjPiS0_
	.thumb
	.thumb_func
	.type	_ZN9hb_font_t23get_glyph_contour_pointEjjPiS0_, %function
_ZN9hb_font_t23get_glyph_contour_pointEjjPiS0_:
	.fnstart
.LFB106:
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #36
	sub	sp, sp, #36
	.setfp r7, sp, #16
	add	r7, sp, #16
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #32]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #32]
	ldr	r2, [r3]
	ldr	r3, [r7]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #72]
	ldr	r4, [r3, #80]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #76]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #72]
	ldr	r2, [r2, #124]
	ldr	r1, [r7]
	str	r1, [sp]
	ldr	r1, [r7, #32]
	str	r1, [sp, #4]
	str	r2, [sp, #8]
	ldr	r0, [r7, #12]
	mov	r1, r3
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	blx	r4
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZN9hb_font_t23get_glyph_contour_pointEjjPiS0_, .-_ZN9hb_font_t23get_glyph_contour_pointEjjPiS0_
	.section	.text._ZN9hb_font_t14get_glyph_nameEjPcj,"axG",%progbits,_ZN9hb_font_t14get_glyph_nameEjPcj,comdat
	.align	2
	.weak	_ZN9hb_font_t14get_glyph_nameEjPcj
	.thumb
	.thumb_func
	.type	_ZN9hb_font_t14get_glyph_nameEjPcj, %function
_ZN9hb_font_t14get_glyph_nameEjPcj:
	.fnstart
.LFB107:
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
	cmp	r3, #0
	beq	.L54
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3]
.L54:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #72]
	ldr	r4, [r3, #84]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #76]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #72]
	ldr	r2, [r2, #128]
	ldr	r1, [r7]
	str	r1, [sp]
	str	r2, [sp, #4]
	ldr	r0, [r7, #12]
	mov	r1, r3
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	blx	r4
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZN9hb_font_t14get_glyph_nameEjPcj, .-_ZN9hb_font_t14get_glyph_nameEjPcj
	.section	.text._ZN9hb_font_t19get_glyph_from_nameEPKciPj,"axG",%progbits,_ZN9hb_font_t19get_glyph_from_nameEPKciPj,comdat
	.align	2
	.weak	_ZN9hb_font_t19get_glyph_from_nameEPKciPj
	.thumb
	.thumb_func
	.type	_ZN9hb_font_t19get_glyph_from_nameEPKciPj, %function
_ZN9hb_font_t19get_glyph_from_nameEPKciPj:
	.fnstart
.LFB108:
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
	ldr	r3, [r7, #4]
	cmp	r3, #-1
	bne	.L57
	ldr	r0, [r7, #8]
	bl	strlen(PLT)
	mov	r3, r0
	str	r3, [r7, #4]
.L57:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #72]
	ldr	r4, [r3, #88]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #76]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #72]
	ldr	r2, [r2, #132]
	ldr	r1, [r7]
	str	r1, [sp]
	str	r2, [sp, #4]
	ldr	r0, [r7, #12]
	mov	r1, r3
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	blx	r4
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZN9hb_font_t19get_glyph_from_nameEPKciPj, .-_ZN9hb_font_t19get_glyph_from_nameEPKciPj
	.section	.text._ZN9hb_font_t31get_glyph_advance_for_directionEj14hb_direction_tPiS1_,"axG",%progbits,_ZN9hb_font_t31get_glyph_advance_for_directionEj14hb_direction_tPiS1_,comdat
	.align	2
	.weak	_ZN9hb_font_t31get_glyph_advance_for_directionEj14hb_direction_tPiS1_
	.thumb
	.thumb_func
	.type	_ZN9hb_font_t31get_glyph_advance_for_directionEj14hb_direction_tPiS1_, %function
_ZN9hb_font_t31get_glyph_advance_for_directionEj14hb_direction_tPiS1_:
	.fnstart
.LFB109:
	@ args = 4, pretend = 0, frame = 16
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
	ldr	r3, [r7, #4]
	bic	r3, r3, #1
	cmp	r3, #4
	bne	.L60
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_ZN9hb_font_t19get_glyph_h_advanceEj(PLT)
	mov	r2, r0
	ldr	r3, [r7]
	str	r2, [r3]
	ldr	r3, [r7, #24]
	movs	r2, #0
	str	r2, [r3]
	b	.L59
.L60:
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_ZN9hb_font_t19get_glyph_v_advanceEj(PLT)
	mov	r2, r0
	ldr	r3, [r7, #24]
	str	r2, [r3]
.L59:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN9hb_font_t31get_glyph_advance_for_directionEj14hb_direction_tPiS1_, .-_ZN9hb_font_t31get_glyph_advance_for_directionEj14hb_direction_tPiS1_
	.section	.text._ZN9hb_font_t29guess_v_origin_minus_h_originEjPiS0_,"axG",%progbits,_ZN9hb_font_t29guess_v_origin_minus_h_originEjPiS0_,comdat
	.align	2
	.weak	_ZN9hb_font_t29guess_v_origin_minus_h_originEjPiS0_
	.thumb
	.thumb_func
	.type	_ZN9hb_font_t29guess_v_origin_minus_h_originEjPiS0_, %function
_ZN9hb_font_t29guess_v_origin_minus_h_originEjPiS0_:
	.fnstart
.LFB110:
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
	bl	_ZN9hb_font_t19get_glyph_h_advanceEj(PLT)
	mov	r3, r0
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #60]
	ldr	r3, [r7]
	str	r2, [r3]
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN9hb_font_t29guess_v_origin_minus_h_originEjPiS0_, .-_ZN9hb_font_t29guess_v_origin_minus_h_originEjPiS0_
	.section	.text._ZN9hb_font_t30get_glyph_origin_for_directionEj14hb_direction_tPiS1_,"axG",%progbits,_ZN9hb_font_t30get_glyph_origin_for_directionEj14hb_direction_tPiS1_,comdat
	.align	2
	.weak	_ZN9hb_font_t30get_glyph_origin_for_directionEj14hb_direction_tPiS1_
	.thumb
	.thumb_func
	.type	_ZN9hb_font_t30get_glyph_origin_for_directionEj14hb_direction_tPiS1_, %function
_ZN9hb_font_t30get_glyph_origin_for_directionEj14hb_direction_tPiS1_:
	.fnstart
.LFB111:
	@ args = 4, pretend = 0, frame = 32
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
	ldr	r3, [r7, #4]
	bic	r3, r3, #1
	cmp	r3, #4
	bne	.L64
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7]
	ldr	r3, [r7, #40]
	bl	_ZN9hb_font_t18get_glyph_h_originEjPiS0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L65
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7]
	ldr	r3, [r7, #40]
	bl	_ZN9hb_font_t18get_glyph_v_originEjPiS0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L65
	movs	r3, #1
	b	.L66
.L65:
	movs	r3, #0
.L66:
	cmp	r3, #0
	beq	.L67
	add	r2, r7, #28
	add	r3, r7, #24
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_ZN9hb_font_t29guess_v_origin_minus_h_originEjPiS0_(PLT)
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #28]
	subs	r2, r2, r3
	ldr	r3, [r7]
	str	r2, [r3]
	ldr	r3, [r7, #40]
	ldr	r2, [r3]
	ldr	r3, [r7, #24]
	subs	r2, r2, r3
	ldr	r3, [r7, #40]
	str	r2, [r3]
.L67:
	b	.L63
.L64:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7]
	ldr	r3, [r7, #40]
	bl	_ZN9hb_font_t18get_glyph_v_originEjPiS0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L69
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7]
	ldr	r3, [r7, #40]
	bl	_ZN9hb_font_t18get_glyph_h_originEjPiS0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L69
	movs	r3, #1
	b	.L70
.L69:
	movs	r3, #0
.L70:
	cmp	r3, #0
	beq	.L63
	add	r2, r7, #20
	add	r3, r7, #16
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_ZN9hb_font_t29guess_v_origin_minus_h_originEjPiS0_(PLT)
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	add	r2, r2, r3
	ldr	r3, [r7]
	str	r2, [r3]
	ldr	r3, [r7, #40]
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	add	r2, r2, r3
	ldr	r3, [r7, #40]
	str	r2, [r3]
.L63:
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN9hb_font_t30get_glyph_origin_for_directionEj14hb_direction_tPiS1_, .-_ZN9hb_font_t30get_glyph_origin_for_directionEj14hb_direction_tPiS1_
	.section	.text._ZN9hb_font_t30add_glyph_origin_for_directionEj14hb_direction_tPiS1_,"axG",%progbits,_ZN9hb_font_t30add_glyph_origin_for_directionEj14hb_direction_tPiS1_,comdat
	.align	2
	.weak	_ZN9hb_font_t30add_glyph_origin_for_directionEj14hb_direction_tPiS1_
	.thumb
	.thumb_func
	.type	_ZN9hb_font_t30add_glyph_origin_for_directionEj14hb_direction_tPiS1_, %function
_ZN9hb_font_t30add_glyph_origin_for_directionEj14hb_direction_tPiS1_:
	.fnstart
.LFB112:
	@ args = 4, pretend = 0, frame = 24
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
	add	r3, r7, #20
	add	r2, r7, #16
	str	r2, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	_ZN9hb_font_t30get_glyph_origin_for_directionEj14hb_direction_tPiS1_(PLT)
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	add	r2, r2, r3
	ldr	r3, [r7]
	str	r2, [r3]
	ldr	r3, [r7, #32]
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	add	r2, r2, r3
	ldr	r3, [r7, #32]
	str	r2, [r3]
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN9hb_font_t30add_glyph_origin_for_directionEj14hb_direction_tPiS1_, .-_ZN9hb_font_t30add_glyph_origin_for_directionEj14hb_direction_tPiS1_
	.section	.text._ZN9hb_font_t35subtract_glyph_origin_for_directionEj14hb_direction_tPiS1_,"axG",%progbits,_ZN9hb_font_t35subtract_glyph_origin_for_directionEj14hb_direction_tPiS1_,comdat
	.align	2
	.weak	_ZN9hb_font_t35subtract_glyph_origin_for_directionEj14hb_direction_tPiS1_
	.thumb
	.thumb_func
	.type	_ZN9hb_font_t35subtract_glyph_origin_for_directionEj14hb_direction_tPiS1_, %function
_ZN9hb_font_t35subtract_glyph_origin_for_directionEj14hb_direction_tPiS1_:
	.fnstart
.LFB113:
	@ args = 4, pretend = 0, frame = 24
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
	add	r3, r7, #20
	add	r2, r7, #16
	str	r2, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	_ZN9hb_font_t30get_glyph_origin_for_directionEj14hb_direction_tPiS1_(PLT)
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	subs	r2, r2, r3
	ldr	r3, [r7]
	str	r2, [r3]
	ldr	r3, [r7, #32]
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	subs	r2, r2, r3
	ldr	r3, [r7, #32]
	str	r2, [r3]
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN9hb_font_t35subtract_glyph_origin_for_directionEj14hb_direction_tPiS1_, .-_ZN9hb_font_t35subtract_glyph_origin_for_directionEj14hb_direction_tPiS1_
	.section	.text._ZN9hb_font_t31get_glyph_kerning_for_directionEjj14hb_direction_tPiS1_,"axG",%progbits,_ZN9hb_font_t31get_glyph_kerning_for_directionEjj14hb_direction_tPiS1_,comdat
	.align	2
	.weak	_ZN9hb_font_t31get_glyph_kerning_for_directionEjj14hb_direction_tPiS1_
	.thumb
	.thumb_func
	.type	_ZN9hb_font_t31get_glyph_kerning_for_directionEjj14hb_direction_tPiS1_, %function
_ZN9hb_font_t31get_glyph_kerning_for_directionEjj14hb_direction_tPiS1_:
	.fnstart
.LFB114:
	@ args = 8, pretend = 0, frame = 16
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
	ldr	r3, [r7]
	bic	r3, r3, #1
	cmp	r3, #4
	bne	.L74
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	_ZN9hb_font_t19get_glyph_h_kerningEjj(PLT)
	mov	r2, r0
	ldr	r3, [r7, #24]
	str	r2, [r3]
	ldr	r3, [r7, #28]
	movs	r2, #0
	str	r2, [r3]
	b	.L73
.L74:
	ldr	r3, [r7, #24]
	movs	r2, #0
	str	r2, [r3]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	_ZN9hb_font_t19get_glyph_v_kerningEjj(PLT)
	mov	r2, r0
	ldr	r3, [r7, #28]
	str	r2, [r3]
.L73:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN9hb_font_t31get_glyph_kerning_for_directionEjj14hb_direction_tPiS1_, .-_ZN9hb_font_t31get_glyph_kerning_for_directionEjj14hb_direction_tPiS1_
	.section	.text._ZN9hb_font_t28get_glyph_extents_for_originEj14hb_direction_tP18hb_glyph_extents_t,"axG",%progbits,_ZN9hb_font_t28get_glyph_extents_for_originEj14hb_direction_tP18hb_glyph_extents_t,comdat
	.align	2
	.weak	_ZN9hb_font_t28get_glyph_extents_for_originEj14hb_direction_tP18hb_glyph_extents_t
	.thumb
	.thumb_func
	.type	_ZN9hb_font_t28get_glyph_extents_for_originEj14hb_direction_tP18hb_glyph_extents_t, %function
_ZN9hb_font_t28get_glyph_extents_for_originEj14hb_direction_tP18hb_glyph_extents_t:
	.fnstart
.LFB115:
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
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7]
	bl	_ZN9hb_font_t17get_glyph_extentsEjP18hb_glyph_extents_t(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L77
	ldr	r3, [r7]
	ldr	r2, [r7]
	adds	r2, r2, #4
	str	r2, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	_ZN9hb_font_t35subtract_glyph_origin_for_directionEj14hb_direction_tPiS1_(PLT)
.L77:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN9hb_font_t28get_glyph_extents_for_originEj14hb_direction_tP18hb_glyph_extents_t, .-_ZN9hb_font_t28get_glyph_extents_for_originEj14hb_direction_tP18hb_glyph_extents_t
	.section	.text._ZN9hb_font_t34get_glyph_contour_point_for_originEjj14hb_direction_tPiS1_,"axG",%progbits,_ZN9hb_font_t34get_glyph_contour_point_for_originEjj14hb_direction_tPiS1_,comdat
	.align	2
	.weak	_ZN9hb_font_t34get_glyph_contour_point_for_originEjj14hb_direction_tPiS1_
	.thumb
	.thumb_func
	.type	_ZN9hb_font_t34get_glyph_contour_point_for_originEjj14hb_direction_tPiS1_, %function
_ZN9hb_font_t34get_glyph_contour_point_for_originEjj14hb_direction_tPiS1_:
	.fnstart
.LFB116:
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
	ldr	r3, [r7, #36]
	str	r3, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #32]
	bl	_ZN9hb_font_t23get_glyph_contour_pointEjjPiS0_(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L80
	ldr	r3, [r7, #36]
	str	r3, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7]
	ldr	r3, [r7, #32]
	bl	_ZN9hb_font_t35subtract_glyph_origin_for_directionEj14hb_direction_tPiS1_(PLT)
.L80:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN9hb_font_t34get_glyph_contour_point_for_originEjj14hb_direction_tPiS1_, .-_ZN9hb_font_t34get_glyph_contour_point_for_originEjj14hb_direction_tPiS1_
	.section	.rodata
	.align	2
.LC0:
	.ascii	"gid%u\000"
	.section	.text._ZN9hb_font_t15glyph_to_stringEjPcj,"axG",%progbits,_ZN9hb_font_t15glyph_to_stringEjPcj,comdat
	.align	2
	.weak	_ZN9hb_font_t15glyph_to_stringEjPcj
	.thumb
	.thumb_func
	.type	_ZN9hb_font_t15glyph_to_stringEjPcj, %function
_ZN9hb_font_t15glyph_to_stringEjPcj:
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
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	_ZN9hb_font_t14get_glyph_nameEjPcj(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L83
	b	.L82
.L83:
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L85
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	ldr	r3, .L87
.LPIC0:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #8]
	bl	snprintf(PLT)
	mov	r3, r0
	cmp	r3, #0
	bge	.L85
	movs	r3, #1
	b	.L86
.L85:
	movs	r3, #0
.L86:
	cmp	r3, #0
	beq	.L82
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3]
.L82:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L88:
	.align	2
.L87:
	.word	.LC0-(.LPIC0+4)
	.fnend
	.size	_ZN9hb_font_t15glyph_to_stringEjPcj, .-_ZN9hb_font_t15glyph_to_stringEjPcj
	.section	.rodata
	.align	2
.LC1:
	.ascii	"gid\000"
	.align	2
.LC2:
	.ascii	"uni\000"
	.section	.text._ZN9hb_font_t17glyph_from_stringEPKciPj,"axG",%progbits,_ZN9hb_font_t17glyph_from_stringEPKciPj,comdat
	.align	2
	.weak	_ZN9hb_font_t17glyph_from_stringEPKciPj
	.thumb
	.thumb_func
	.type	_ZN9hb_font_t17glyph_from_stringEPKciPj, %function
_ZN9hb_font_t17glyph_from_stringEPKciPj:
	.fnstart
.LFB118:
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
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	_ZN9hb_font_t19get_glyph_from_nameEPKciPj(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L90
	movs	r3, #1
	b	.L91
.L90:
	ldr	r3, [r7, #4]
	cmp	r3, #-1
	bne	.L92
	ldr	r0, [r7, #8]
	bl	strlen(PLT)
	mov	r3, r0
	str	r3, [r7, #4]
.L92:
	ldr	r3, [r7, #4]
	ldr	r0, [r7, #8]
	mov	r1, r3
	movs	r2, #10
	ldr	r3, [r7]
	bl	_ZL18hb_codepoint_parsePKcjiPj(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L93
	movs	r3, #1
	b	.L91
.L93:
	ldr	r3, [r7, #4]
	cmp	r3, #3
	ble	.L94
	ldr	r0, [r7, #8]
	ldr	r3, .L102
.LPIC1:
	add	r3, pc
	mov	r1, r3
	movs	r2, #3
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L95
	ldr	r3, [r7, #8]
	adds	r2, r3, #3
	ldr	r3, [r7, #4]
	subs	r3, r3, #3
	mov	r0, r2
	mov	r1, r3
	movs	r2, #10
	ldr	r3, [r7]
	bl	_ZL18hb_codepoint_parsePKcjiPj(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L95
	movs	r3, #1
	b	.L96
.L95:
	movs	r3, #0
.L96:
	cmp	r3, #0
	beq	.L97
	movs	r3, #1
	b	.L91
.L97:
	ldr	r0, [r7, #8]
	ldr	r3, .L102+4
.LPIC2:
	add	r3, pc
	mov	r1, r3
	movs	r2, #3
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L99
	ldr	r3, [r7, #8]
	adds	r1, r3, #3
	ldr	r3, [r7, #4]
	subs	r3, r3, #3
	mov	r2, r3
	add	r3, r7, #20
	mov	r0, r1
	mov	r1, r2
	movs	r2, #16
	bl	_ZL18hb_codepoint_parsePKcjiPj(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L99
	ldr	r3, [r7, #20]
	ldr	r0, [r7, #12]
	mov	r1, r3
	movs	r2, #0
	ldr	r3, [r7]
	bl	_ZN9hb_font_t9get_glyphEjjPj(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L99
	movs	r3, #1
	b	.L100
.L99:
	movs	r3, #0
.L100:
	cmp	r3, #0
	beq	.L101
	movs	r3, #1
	b	.L91
.L101:
.L94:
	movs	r3, #0
.L91:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L103:
	.align	2
.L102:
	.word	.LC1-(.LPIC1+4)
	.word	.LC2-(.LPIC2+4)
	.fnend
	.size	_ZN9hb_font_t17glyph_from_stringEPKciPj, .-_ZN9hb_font_t17glyph_from_stringEPKciPj
	.section	.bss._ZN2OTL9_NullPoolE,"aw",%nobits
	.align	2
	.type	_ZN2OTL9_NullPoolE, %object
	.size	_ZN2OTL9_NullPoolE, 264
_ZN2OTL9_NullPoolE:
	.space	264
	.section	.text._ZL21hb_font_get_glyph_nilP9hb_font_tPvjjPjS1_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL21hb_font_get_glyph_nilP9hb_font_tPvjjPjS1_, %function
_ZL21hb_font_get_glyph_nilP9hb_font_tPvjjPjS1_:
	.fnstart
.LFB361:
	@ args = 8, pretend = 0, frame = 16
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
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L105
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #48]
	mov	r0, r3
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
	ldr	r3, [r7, #24]
	bl	_ZN9hb_font_t9get_glyphEjjPj(PLT)
	mov	r3, r0
	b	.L106
.L105:
	ldr	r3, [r7, #24]
	movs	r2, #0
	str	r2, [r3]
	movs	r3, #0
.L106:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL21hb_font_get_glyph_nilP9hb_font_tPvjjPjS1_, .-_ZL21hb_font_get_glyph_nilP9hb_font_tPvjjPjS1_
	.section	.text._ZL31hb_font_get_glyph_h_advance_nilP9hb_font_tPvjS1_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL31hb_font_get_glyph_h_advance_nilP9hb_font_tPvjS1_, %function
_ZL31hb_font_get_glyph_h_advance_nilP9hb_font_tPvjS1_:
	.fnstart
.LFB362:
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
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L108
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #48]
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	_ZN9hb_font_t19get_glyph_h_advanceEj(PLT)
	mov	r3, r0
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZN9hb_font_t23parent_scale_x_distanceEi(PLT)
	mov	r3, r0
	b	.L109
.L108:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #56]
.L109:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL31hb_font_get_glyph_h_advance_nilP9hb_font_tPvjS1_, .-_ZL31hb_font_get_glyph_h_advance_nilP9hb_font_tPvjS1_
	.section	.text._ZL31hb_font_get_glyph_v_advance_nilP9hb_font_tPvjS1_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL31hb_font_get_glyph_v_advance_nilP9hb_font_tPvjS1_, %function
_ZL31hb_font_get_glyph_v_advance_nilP9hb_font_tPvjS1_:
	.fnstart
.LFB363:
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
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L111
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #48]
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	_ZN9hb_font_t19get_glyph_v_advanceEj(PLT)
	mov	r3, r0
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZN9hb_font_t23parent_scale_y_distanceEi(PLT)
	mov	r3, r0
	b	.L112
.L111:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #60]
.L112:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL31hb_font_get_glyph_v_advance_nilP9hb_font_tPvjS1_, .-_ZL31hb_font_get_glyph_v_advance_nilP9hb_font_tPvjS1_
	.section	.text._ZL30hb_font_get_glyph_h_origin_nilP9hb_font_tPvjPiS2_S1_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL30hb_font_get_glyph_h_origin_nilP9hb_font_tPvjPiS2_S1_, %function
_ZL30hb_font_get_glyph_h_origin_nilP9hb_font_tPvjPiS2_S1_:
	.fnstart
.LFB364:
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
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L114
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #48]
	mov	r0, r3
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
	ldr	r3, [r7, #32]
	bl	_ZN9hb_font_t18get_glyph_h_originEjPiS0_(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L115
	ldr	r0, [r7, #12]
	ldr	r1, [r7]
	ldr	r2, [r7, #32]
	bl	_ZN9hb_font_t21parent_scale_positionEPiS0_(PLT)
.L115:
	ldr	r3, [r7, #20]
	b	.L116
.L114:
	ldr	r3, [r7, #32]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #32]
	ldr	r2, [r3]
	ldr	r3, [r7]
	str	r2, [r3]
	movs	r3, #0
.L116:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL30hb_font_get_glyph_h_origin_nilP9hb_font_tPvjPiS2_S1_, .-_ZL30hb_font_get_glyph_h_origin_nilP9hb_font_tPvjPiS2_S1_
	.section	.text._ZL30hb_font_get_glyph_v_origin_nilP9hb_font_tPvjPiS2_S1_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL30hb_font_get_glyph_v_origin_nilP9hb_font_tPvjPiS2_S1_, %function
_ZL30hb_font_get_glyph_v_origin_nilP9hb_font_tPvjPiS2_S1_:
	.fnstart
.LFB365:
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
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L118
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #48]
	mov	r0, r3
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
	ldr	r3, [r7, #32]
	bl	_ZN9hb_font_t18get_glyph_v_originEjPiS0_(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L119
	ldr	r0, [r7, #12]
	ldr	r1, [r7]
	ldr	r2, [r7, #32]
	bl	_ZN9hb_font_t21parent_scale_positionEPiS0_(PLT)
.L119:
	ldr	r3, [r7, #20]
	b	.L120
.L118:
	ldr	r3, [r7, #32]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #32]
	ldr	r2, [r3]
	ldr	r3, [r7]
	str	r2, [r3]
	movs	r3, #0
.L120:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL30hb_font_get_glyph_v_origin_nilP9hb_font_tPvjPiS2_S1_, .-_ZL30hb_font_get_glyph_v_origin_nilP9hb_font_tPvjPiS2_S1_
	.section	.text._ZL31hb_font_get_glyph_h_kerning_nilP9hb_font_tPvjjS1_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL31hb_font_get_glyph_h_kerning_nilP9hb_font_tPvjjS1_, %function
_ZL31hb_font_get_glyph_h_kerning_nilP9hb_font_tPvjjS1_:
	.fnstart
.LFB366:
	@ args = 4, pretend = 0, frame = 16
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
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L122
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #48]
	mov	r0, r3
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
	bl	_ZN9hb_font_t19get_glyph_h_kerningEjj(PLT)
	mov	r3, r0
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZN9hb_font_t23parent_scale_x_distanceEi(PLT)
	mov	r3, r0
	b	.L123
.L122:
	movs	r3, #0
.L123:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL31hb_font_get_glyph_h_kerning_nilP9hb_font_tPvjjS1_, .-_ZL31hb_font_get_glyph_h_kerning_nilP9hb_font_tPvjjS1_
	.section	.text._ZL31hb_font_get_glyph_v_kerning_nilP9hb_font_tPvjjS1_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL31hb_font_get_glyph_v_kerning_nilP9hb_font_tPvjjS1_, %function
_ZL31hb_font_get_glyph_v_kerning_nilP9hb_font_tPvjjS1_:
	.fnstart
.LFB367:
	@ args = 4, pretend = 0, frame = 16
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
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L125
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #48]
	mov	r0, r3
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
	bl	_ZN9hb_font_t19get_glyph_v_kerningEjj(PLT)
	mov	r3, r0
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZN9hb_font_t23parent_scale_y_distanceEi(PLT)
	mov	r3, r0
	b	.L126
.L125:
	movs	r3, #0
.L126:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL31hb_font_get_glyph_v_kerning_nilP9hb_font_tPvjjS1_, .-_ZL31hb_font_get_glyph_v_kerning_nilP9hb_font_tPvjjS1_
	.section	.text._ZL29hb_font_get_glyph_extents_nilP9hb_font_tPvjP18hb_glyph_extents_tS1_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL29hb_font_get_glyph_extents_nilP9hb_font_tPvjP18hb_glyph_extents_tS1_, %function
_ZL29hb_font_get_glyph_extents_nilP9hb_font_tPvjP18hb_glyph_extents_tS1_:
	.fnstart
.LFB368:
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
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L128
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #48]
	mov	r0, r3
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
	bl	_ZN9hb_font_t17get_glyph_extentsEjP18hb_glyph_extents_t(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L129
	ldr	r2, [r7]
	ldr	r3, [r7]
	adds	r3, r3, #4
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	bl	_ZN9hb_font_t21parent_scale_positionEPiS0_(PLT)
	ldr	r3, [r7]
	add	r2, r3, #8
	ldr	r3, [r7]
	adds	r3, r3, #12
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	bl	_ZN9hb_font_t21parent_scale_distanceEPiS0_(PLT)
.L129:
	ldr	r3, [r7, #20]
	b	.L130
.L128:
	ldr	r0, [r7]
	movs	r1, #0
	movs	r2, #16
	bl	memset(PLT)
	movs	r3, #0
.L130:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL29hb_font_get_glyph_extents_nilP9hb_font_tPvjP18hb_glyph_extents_tS1_, .-_ZL29hb_font_get_glyph_extents_nilP9hb_font_tPvjP18hb_glyph_extents_tS1_
	.section	.text._ZL35hb_font_get_glyph_contour_point_nilP9hb_font_tPvjjPiS2_S1_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL35hb_font_get_glyph_contour_point_nilP9hb_font_tPvjjPiS2_S1_, %function
_ZL35hb_font_get_glyph_contour_point_nilP9hb_font_tPvjjPiS2_S1_:
	.fnstart
.LFB369:
	@ args = 12, pretend = 0, frame = 24
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
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L132
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #48]
	ldr	r2, [r7, #36]
	str	r2, [sp]
	mov	r0, r3
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
	ldr	r3, [r7, #32]
	bl	_ZN9hb_font_t23get_glyph_contour_pointEjjPiS0_(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L133
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #32]
	ldr	r2, [r7, #36]
	bl	_ZN9hb_font_t21parent_scale_positionEPiS0_(PLT)
.L133:
	ldr	r3, [r7, #20]
	b	.L134
.L132:
	ldr	r3, [r7, #36]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #36]
	ldr	r2, [r3]
	ldr	r3, [r7, #32]
	str	r2, [r3]
	movs	r3, #0
.L134:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL35hb_font_get_glyph_contour_point_nilP9hb_font_tPvjjPiS2_S1_, .-_ZL35hb_font_get_glyph_contour_point_nilP9hb_font_tPvjjPiS2_S1_
	.section	.text._ZL26hb_font_get_glyph_name_nilP9hb_font_tPvjPcjS1_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL26hb_font_get_glyph_name_nilP9hb_font_tPvjPcjS1_, %function
_ZL26hb_font_get_glyph_name_nilP9hb_font_tPvjPcjS1_:
	.fnstart
.LFB370:
	@ args = 8, pretend = 0, frame = 16
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
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L136
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #48]
	mov	r0, r3
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
	ldr	r3, [r7, #24]
	bl	_ZN9hb_font_t14get_glyph_nameEjPcj(PLT)
	mov	r3, r0
	b	.L137
.L136:
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L138
	ldr	r3, [r7]
	movs	r2, #0
	strb	r2, [r3]
.L138:
	movs	r3, #0
.L137:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL26hb_font_get_glyph_name_nilP9hb_font_tPvjPcjS1_, .-_ZL26hb_font_get_glyph_name_nilP9hb_font_tPvjPcjS1_
	.section	.text._ZL31hb_font_get_glyph_from_name_nilP9hb_font_tPvPKciPjS1_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL31hb_font_get_glyph_from_name_nilP9hb_font_tPvPKciPjS1_, %function
_ZL31hb_font_get_glyph_from_name_nilP9hb_font_tPvPKciPjS1_:
	.fnstart
.LFB371:
	@ args = 8, pretend = 0, frame = 16
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
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L140
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #48]
	mov	r0, r3
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
	ldr	r3, [r7, #24]
	bl	_ZN9hb_font_t19get_glyph_from_nameEPKciPj(PLT)
	mov	r3, r0
	b	.L141
.L140:
	ldr	r3, [r7, #24]
	movs	r2, #0
	str	r2, [r3]
	movs	r3, #0
.L141:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL31hb_font_get_glyph_from_name_nilP9hb_font_tPvPKciPjS1_, .-_ZL31hb_font_get_glyph_from_name_nilP9hb_font_tPvPKciPjS1_
	.section	.text.hb_font_funcs_create,"ax",%progbits
	.align	2
	.global	hb_font_funcs_create
	.thumb
	.thumb_func
	.type	hb_font_funcs_create, %function
hb_font_funcs_create:
	.fnstart
.LFB372:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	bl	_Z16hb_object_createI15hb_font_funcs_tEPT_v(PLT)
	mov	r3, r0
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L143
	bl	hb_font_funcs_get_empty(PLT)
	mov	r3, r0
	b	.L144
.L143:
	ldr	r2, [r7, #4]
	ldr	r3, .L145
.LPIC3:
	add	r3, pc
	add	r4, r2, #48
	add	r5, r3, #48
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5, {r0, r1, r2}
	stmia	r4, {r0, r1, r2}
	ldr	r3, [r7, #4]
.L144:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L146:
	.align	2
.L145:
	.word	_ZL18_hb_font_funcs_nil-(.LPIC3+4)
	.fnend
	.size	hb_font_funcs_create, .-hb_font_funcs_create
	.section	.text.hb_font_funcs_get_empty,"ax",%progbits
	.align	2
	.global	hb_font_funcs_get_empty
	.thumb
	.thumb_func
	.type	hb_font_funcs_get_empty, %function
hb_font_funcs_get_empty:
	.fnstart
.LFB373:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L149
.LPIC4:
	add	r3, pc
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L150:
	.align	2
.L149:
	.word	_ZL18_hb_font_funcs_nil-(.LPIC4+4)
	.cantunwind
	.fnend
	.size	hb_font_funcs_get_empty, .-hb_font_funcs_get_empty
	.section	.text.hb_font_funcs_reference,"ax",%progbits
	.align	2
	.global	hb_font_funcs_reference
	.thumb
	.thumb_func
	.type	hb_font_funcs_reference, %function
hb_font_funcs_reference:
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
	bl	_Z19hb_object_referenceI15hb_font_funcs_tEPT_S2_(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_font_funcs_reference, .-hb_font_funcs_reference
	.section	.text.hb_font_funcs_destroy,"ax",%progbits
	.align	2
	.global	hb_font_funcs_destroy
	.thumb
	.thumb_func
	.type	hb_font_funcs_destroy, %function
hb_font_funcs_destroy:
	.fnstart
.LFB375:
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
	bl	_Z17hb_object_destroyI15hb_font_funcs_tEbPT_(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L154
	b	.L153
.L154:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #136]
	cmp	r3, #0
	beq	.L156
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #136]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #92]
	mov	r0, r2
	blx	r3
.L156:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #140]
	cmp	r3, #0
	beq	.L157
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #140]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #96]
	mov	r0, r2
	blx	r3
.L157:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #144]
	cmp	r3, #0
	beq	.L158
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #144]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #100]
	mov	r0, r2
	blx	r3
.L158:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #148]
	cmp	r3, #0
	beq	.L159
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #148]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #104]
	mov	r0, r2
	blx	r3
.L159:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #152]
	cmp	r3, #0
	beq	.L160
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #152]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #108]
	mov	r0, r2
	blx	r3
.L160:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #156]
	cmp	r3, #0
	beq	.L161
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #156]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #112]
	mov	r0, r2
	blx	r3
.L161:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	cmp	r3, #0
	beq	.L162
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #116]
	mov	r0, r2
	blx	r3
.L162:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #164]
	cmp	r3, #0
	beq	.L163
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #164]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #120]
	mov	r0, r2
	blx	r3
.L163:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #168]
	cmp	r3, #0
	beq	.L164
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #168]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #124]
	mov	r0, r2
	blx	r3
.L164:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #172]
	cmp	r3, #0
	beq	.L165
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #172]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #128]
	mov	r0, r2
	blx	r3
.L165:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #176]
	cmp	r3, #0
	beq	.L166
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #176]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #132]
	mov	r0, r2
	blx	r3
.L166:
	ldr	r0, [r7, #4]
	bl	free(PLT)
.L153:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_font_funcs_destroy, .-hb_font_funcs_destroy
	.section	.text.hb_font_funcs_set_user_data,"ax",%progbits
	.align	2
	.global	hb_font_funcs_set_user_data
	.thumb
	.thumb_func
	.type	hb_font_funcs_set_user_data, %function
hb_font_funcs_set_user_data:
	.fnstart
.LFB376:
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
	bl	_Z23hb_object_set_user_dataI15hb_font_funcs_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_font_funcs_set_user_data, .-hb_font_funcs_set_user_data
	.section	.text.hb_font_funcs_get_user_data,"ax",%progbits
	.align	2
	.global	hb_font_funcs_get_user_data
	.thumb
	.thumb_func
	.type	hb_font_funcs_get_user_data, %function
hb_font_funcs_get_user_data:
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
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	_Z23hb_object_get_user_dataI15hb_font_funcs_tEPvPT_P18hb_user_data_key_t(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_font_funcs_get_user_data, .-hb_font_funcs_get_user_data
	.section	.text.hb_font_funcs_make_immutable,"ax",%progbits
	.align	2
	.global	hb_font_funcs_make_immutable
	.thumb
	.thumb_func
	.type	hb_font_funcs_make_immutable, %function
hb_font_funcs_make_immutable:
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
	bl	_Z18hb_object_is_inertI15hb_font_funcs_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L172
	b	.L171
.L172:
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #44]
.L171:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_font_funcs_make_immutable, .-hb_font_funcs_make_immutable
	.section	.text.hb_font_funcs_is_immutable,"ax",%progbits
	.align	2
	.global	hb_font_funcs_is_immutable
	.thumb
	.thumb_func
	.type	hb_font_funcs_is_immutable, %function
hb_font_funcs_is_immutable:
	.fnstart
.LFB379:
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
	.size	hb_font_funcs_is_immutable, .-hb_font_funcs_is_immutable
	.section	.text.hb_font_funcs_set_glyph_func,"ax",%progbits
	.align	2
	.global	hb_font_funcs_set_glyph_func
	.thumb
	.thumb_func
	.type	hb_font_funcs_set_glyph_func, %function
hb_font_funcs_set_glyph_func:
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
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L177
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L178
	ldr	r3, [r7]
	ldr	r0, [r7, #4]
	blx	r3
.L178:
	b	.L176
.L177:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #136]
	cmp	r3, #0
	beq	.L180
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #136]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #92]
	mov	r0, r2
	blx	r3
.L180:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L181
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #48]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #92]
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	str	r2, [r3, #136]
	b	.L176
.L181:
	ldr	r3, [r7, #12]
	ldr	r2, .L182
.LPIC5:
	add	r2, pc
	str	r2, [r3, #48]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #92]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #136]
.L176:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L183:
	.align	2
.L182:
	.word	_ZL21hb_font_get_glyph_nilP9hb_font_tPvjjPjS1_-(.LPIC5+4)
	.fnend
	.size	hb_font_funcs_set_glyph_func, .-hb_font_funcs_set_glyph_func
	.section	.text.hb_font_funcs_set_glyph_h_advance_func,"ax",%progbits
	.align	2
	.global	hb_font_funcs_set_glyph_h_advance_func
	.thumb
	.thumb_func
	.type	hb_font_funcs_set_glyph_h_advance_func, %function
hb_font_funcs_set_glyph_h_advance_func:
	.fnstart
.LFB381:
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
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L185
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L186
	ldr	r3, [r7]
	ldr	r0, [r7, #4]
	blx	r3
.L186:
	b	.L184
.L185:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #140]
	cmp	r3, #0
	beq	.L188
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #140]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #96]
	mov	r0, r2
	blx	r3
.L188:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L189
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #52]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #96]
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	str	r2, [r3, #140]
	b	.L184
.L189:
	ldr	r3, [r7, #12]
	ldr	r2, .L190
.LPIC6:
	add	r2, pc
	str	r2, [r3, #52]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #96]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #140]
.L184:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L191:
	.align	2
.L190:
	.word	_ZL31hb_font_get_glyph_h_advance_nilP9hb_font_tPvjS1_-(.LPIC6+4)
	.fnend
	.size	hb_font_funcs_set_glyph_h_advance_func, .-hb_font_funcs_set_glyph_h_advance_func
	.section	.text.hb_font_funcs_set_glyph_v_advance_func,"ax",%progbits
	.align	2
	.global	hb_font_funcs_set_glyph_v_advance_func
	.thumb
	.thumb_func
	.type	hb_font_funcs_set_glyph_v_advance_func, %function
hb_font_funcs_set_glyph_v_advance_func:
	.fnstart
.LFB382:
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
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L193
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L194
	ldr	r3, [r7]
	ldr	r0, [r7, #4]
	blx	r3
.L194:
	b	.L192
.L193:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #144]
	cmp	r3, #0
	beq	.L196
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #144]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #100]
	mov	r0, r2
	blx	r3
.L196:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L197
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #56]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #100]
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	str	r2, [r3, #144]
	b	.L192
.L197:
	ldr	r3, [r7, #12]
	ldr	r2, .L198
.LPIC7:
	add	r2, pc
	str	r2, [r3, #56]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #100]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #144]
.L192:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L199:
	.align	2
.L198:
	.word	_ZL31hb_font_get_glyph_v_advance_nilP9hb_font_tPvjS1_-(.LPIC7+4)
	.fnend
	.size	hb_font_funcs_set_glyph_v_advance_func, .-hb_font_funcs_set_glyph_v_advance_func
	.section	.text.hb_font_funcs_set_glyph_h_origin_func,"ax",%progbits
	.align	2
	.global	hb_font_funcs_set_glyph_h_origin_func
	.thumb
	.thumb_func
	.type	hb_font_funcs_set_glyph_h_origin_func, %function
hb_font_funcs_set_glyph_h_origin_func:
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
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L201
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L202
	ldr	r3, [r7]
	ldr	r0, [r7, #4]
	blx	r3
.L202:
	b	.L200
.L201:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #148]
	cmp	r3, #0
	beq	.L204
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #148]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #104]
	mov	r0, r2
	blx	r3
.L204:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L205
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #104]
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	str	r2, [r3, #148]
	b	.L200
.L205:
	ldr	r3, [r7, #12]
	ldr	r2, .L206
.LPIC8:
	add	r2, pc
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #104]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #148]
.L200:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L207:
	.align	2
.L206:
	.word	_ZL30hb_font_get_glyph_h_origin_nilP9hb_font_tPvjPiS2_S1_-(.LPIC8+4)
	.fnend
	.size	hb_font_funcs_set_glyph_h_origin_func, .-hb_font_funcs_set_glyph_h_origin_func
	.section	.text.hb_font_funcs_set_glyph_v_origin_func,"ax",%progbits
	.align	2
	.global	hb_font_funcs_set_glyph_v_origin_func
	.thumb
	.thumb_func
	.type	hb_font_funcs_set_glyph_v_origin_func, %function
hb_font_funcs_set_glyph_v_origin_func:
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
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L209
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L210
	ldr	r3, [r7]
	ldr	r0, [r7, #4]
	blx	r3
.L210:
	b	.L208
.L209:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #152]
	cmp	r3, #0
	beq	.L212
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #152]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #108]
	mov	r0, r2
	blx	r3
.L212:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L213
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #108]
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	str	r2, [r3, #152]
	b	.L208
.L213:
	ldr	r3, [r7, #12]
	ldr	r2, .L214
.LPIC9:
	add	r2, pc
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #108]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #152]
.L208:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L215:
	.align	2
.L214:
	.word	_ZL30hb_font_get_glyph_v_origin_nilP9hb_font_tPvjPiS2_S1_-(.LPIC9+4)
	.fnend
	.size	hb_font_funcs_set_glyph_v_origin_func, .-hb_font_funcs_set_glyph_v_origin_func
	.section	.text.hb_font_funcs_set_glyph_h_kerning_func,"ax",%progbits
	.align	2
	.global	hb_font_funcs_set_glyph_h_kerning_func
	.thumb
	.thumb_func
	.type	hb_font_funcs_set_glyph_h_kerning_func, %function
hb_font_funcs_set_glyph_h_kerning_func:
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
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L217
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L218
	ldr	r3, [r7]
	ldr	r0, [r7, #4]
	blx	r3
.L218:
	b	.L216
.L217:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #156]
	cmp	r3, #0
	beq	.L220
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #156]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #112]
	mov	r0, r2
	blx	r3
.L220:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L221
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #68]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #112]
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	str	r2, [r3, #156]
	b	.L216
.L221:
	ldr	r3, [r7, #12]
	ldr	r2, .L222
.LPIC10:
	add	r2, pc
	str	r2, [r3, #68]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #112]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #156]
.L216:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L223:
	.align	2
.L222:
	.word	_ZL31hb_font_get_glyph_h_kerning_nilP9hb_font_tPvjjS1_-(.LPIC10+4)
	.fnend
	.size	hb_font_funcs_set_glyph_h_kerning_func, .-hb_font_funcs_set_glyph_h_kerning_func
	.section	.text.hb_font_funcs_set_glyph_v_kerning_func,"ax",%progbits
	.align	2
	.global	hb_font_funcs_set_glyph_v_kerning_func
	.thumb
	.thumb_func
	.type	hb_font_funcs_set_glyph_v_kerning_func, %function
hb_font_funcs_set_glyph_v_kerning_func:
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
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L225
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L226
	ldr	r3, [r7]
	ldr	r0, [r7, #4]
	blx	r3
.L226:
	b	.L224
.L225:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #160]
	cmp	r3, #0
	beq	.L228
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #160]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #116]
	mov	r0, r2
	blx	r3
.L228:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L229
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #116]
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	str	r2, [r3, #160]
	b	.L224
.L229:
	ldr	r3, [r7, #12]
	ldr	r2, .L230
.LPIC11:
	add	r2, pc
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #116]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #160]
.L224:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L231:
	.align	2
.L230:
	.word	_ZL31hb_font_get_glyph_v_kerning_nilP9hb_font_tPvjjS1_-(.LPIC11+4)
	.fnend
	.size	hb_font_funcs_set_glyph_v_kerning_func, .-hb_font_funcs_set_glyph_v_kerning_func
	.section	.text.hb_font_funcs_set_glyph_extents_func,"ax",%progbits
	.align	2
	.global	hb_font_funcs_set_glyph_extents_func
	.thumb
	.thumb_func
	.type	hb_font_funcs_set_glyph_extents_func, %function
hb_font_funcs_set_glyph_extents_func:
	.fnstart
.LFB387:
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
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L233
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L234
	ldr	r3, [r7]
	ldr	r0, [r7, #4]
	blx	r3
.L234:
	b	.L232
.L233:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #164]
	cmp	r3, #0
	beq	.L236
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #164]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #120]
	mov	r0, r2
	blx	r3
.L236:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L237
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #76]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #120]
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	str	r2, [r3, #164]
	b	.L232
.L237:
	ldr	r3, [r7, #12]
	ldr	r2, .L238
.LPIC12:
	add	r2, pc
	str	r2, [r3, #76]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #120]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #164]
.L232:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L239:
	.align	2
.L238:
	.word	_ZL29hb_font_get_glyph_extents_nilP9hb_font_tPvjP18hb_glyph_extents_tS1_-(.LPIC12+4)
	.fnend
	.size	hb_font_funcs_set_glyph_extents_func, .-hb_font_funcs_set_glyph_extents_func
	.section	.text.hb_font_funcs_set_glyph_contour_point_func,"ax",%progbits
	.align	2
	.global	hb_font_funcs_set_glyph_contour_point_func
	.thumb
	.thumb_func
	.type	hb_font_funcs_set_glyph_contour_point_func, %function
hb_font_funcs_set_glyph_contour_point_func:
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
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L241
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L242
	ldr	r3, [r7]
	ldr	r0, [r7, #4]
	blx	r3
.L242:
	b	.L240
.L241:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #168]
	cmp	r3, #0
	beq	.L244
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #168]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #124]
	mov	r0, r2
	blx	r3
.L244:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L245
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #80]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #124]
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	str	r2, [r3, #168]
	b	.L240
.L245:
	ldr	r3, [r7, #12]
	ldr	r2, .L246
.LPIC13:
	add	r2, pc
	str	r2, [r3, #80]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #124]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #168]
.L240:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L247:
	.align	2
.L246:
	.word	_ZL35hb_font_get_glyph_contour_point_nilP9hb_font_tPvjjPiS2_S1_-(.LPIC13+4)
	.fnend
	.size	hb_font_funcs_set_glyph_contour_point_func, .-hb_font_funcs_set_glyph_contour_point_func
	.section	.text.hb_font_funcs_set_glyph_name_func,"ax",%progbits
	.align	2
	.global	hb_font_funcs_set_glyph_name_func
	.thumb
	.thumb_func
	.type	hb_font_funcs_set_glyph_name_func, %function
hb_font_funcs_set_glyph_name_func:
	.fnstart
.LFB389:
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
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L249
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L250
	ldr	r3, [r7]
	ldr	r0, [r7, #4]
	blx	r3
.L250:
	b	.L248
.L249:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #172]
	cmp	r3, #0
	beq	.L252
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #172]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #128]
	mov	r0, r2
	blx	r3
.L252:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L253
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #84]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #128]
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	str	r2, [r3, #172]
	b	.L248
.L253:
	ldr	r3, [r7, #12]
	ldr	r2, .L254
.LPIC14:
	add	r2, pc
	str	r2, [r3, #84]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #128]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #172]
.L248:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L255:
	.align	2
.L254:
	.word	_ZL26hb_font_get_glyph_name_nilP9hb_font_tPvjPcjS1_-(.LPIC14+4)
	.fnend
	.size	hb_font_funcs_set_glyph_name_func, .-hb_font_funcs_set_glyph_name_func
	.section	.text.hb_font_funcs_set_glyph_from_name_func,"ax",%progbits
	.align	2
	.global	hb_font_funcs_set_glyph_from_name_func
	.thumb
	.thumb_func
	.type	hb_font_funcs_set_glyph_from_name_func, %function
hb_font_funcs_set_glyph_from_name_func:
	.fnstart
.LFB390:
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
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L257
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L258
	ldr	r3, [r7]
	ldr	r0, [r7, #4]
	blx	r3
.L258:
	b	.L256
.L257:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #176]
	cmp	r3, #0
	beq	.L260
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #176]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #132]
	mov	r0, r2
	blx	r3
.L260:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L261
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #88]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #132]
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	str	r2, [r3, #176]
	b	.L256
.L261:
	ldr	r3, [r7, #12]
	ldr	r2, .L262
.LPIC15:
	add	r2, pc
	str	r2, [r3, #88]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #132]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #176]
.L256:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L263:
	.align	2
.L262:
	.word	_ZL31hb_font_get_glyph_from_name_nilP9hb_font_tPvPKciPjS1_-(.LPIC15+4)
	.fnend
	.size	hb_font_funcs_set_glyph_from_name_func, .-hb_font_funcs_set_glyph_from_name_func
	.section	.text.hb_font_get_glyph,"ax",%progbits
	.align	2
	.global	hb_font_get_glyph
	.thumb
	.thumb_func
	.type	hb_font_get_glyph, %function
hb_font_get_glyph:
	.fnstart
.LFB391:
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
	bl	_ZN9hb_font_t9get_glyphEjjPj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_font_get_glyph, .-hb_font_get_glyph
	.section	.text.hb_font_get_glyph_h_advance,"ax",%progbits
	.align	2
	.global	hb_font_get_glyph_h_advance
	.thumb
	.thumb_func
	.type	hb_font_get_glyph_h_advance, %function
hb_font_get_glyph_h_advance:
	.fnstart
.LFB392:
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
	bl	_ZN9hb_font_t19get_glyph_h_advanceEj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_font_get_glyph_h_advance, .-hb_font_get_glyph_h_advance
	.section	.text.hb_font_get_glyph_v_advance,"ax",%progbits
	.align	2
	.global	hb_font_get_glyph_v_advance
	.thumb
	.thumb_func
	.type	hb_font_get_glyph_v_advance, %function
hb_font_get_glyph_v_advance:
	.fnstart
.LFB393:
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
	bl	_ZN9hb_font_t19get_glyph_v_advanceEj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_font_get_glyph_v_advance, .-hb_font_get_glyph_v_advance
	.section	.text.hb_font_get_glyph_h_origin,"ax",%progbits
	.align	2
	.global	hb_font_get_glyph_h_origin
	.thumb
	.thumb_func
	.type	hb_font_get_glyph_h_origin, %function
hb_font_get_glyph_h_origin:
	.fnstart
.LFB394:
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
	bl	_ZN9hb_font_t18get_glyph_h_originEjPiS0_(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_font_get_glyph_h_origin, .-hb_font_get_glyph_h_origin
	.section	.text.hb_font_get_glyph_v_origin,"ax",%progbits
	.align	2
	.global	hb_font_get_glyph_v_origin
	.thumb
	.thumb_func
	.type	hb_font_get_glyph_v_origin, %function
hb_font_get_glyph_v_origin:
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
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	_ZN9hb_font_t18get_glyph_v_originEjPiS0_(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_font_get_glyph_v_origin, .-hb_font_get_glyph_v_origin
	.section	.text.hb_font_get_glyph_h_kerning,"ax",%progbits
	.align	2
	.global	hb_font_get_glyph_h_kerning
	.thumb
	.thumb_func
	.type	hb_font_get_glyph_h_kerning, %function
hb_font_get_glyph_h_kerning:
	.fnstart
.LFB396:
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
	bl	_ZN9hb_font_t19get_glyph_h_kerningEjj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_font_get_glyph_h_kerning, .-hb_font_get_glyph_h_kerning
	.section	.text.hb_font_get_glyph_v_kerning,"ax",%progbits
	.align	2
	.global	hb_font_get_glyph_v_kerning
	.thumb
	.thumb_func
	.type	hb_font_get_glyph_v_kerning, %function
hb_font_get_glyph_v_kerning:
	.fnstart
.LFB397:
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
	bl	_ZN9hb_font_t19get_glyph_v_kerningEjj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_font_get_glyph_v_kerning, .-hb_font_get_glyph_v_kerning
	.section	.text.hb_font_get_glyph_extents,"ax",%progbits
	.align	2
	.global	hb_font_get_glyph_extents
	.thumb
	.thumb_func
	.type	hb_font_get_glyph_extents, %function
hb_font_get_glyph_extents:
	.fnstart
.LFB398:
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
	bl	_ZN9hb_font_t17get_glyph_extentsEjP18hb_glyph_extents_t(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_font_get_glyph_extents, .-hb_font_get_glyph_extents
	.section	.text.hb_font_get_glyph_contour_point,"ax",%progbits
	.align	2
	.global	hb_font_get_glyph_contour_point
	.thumb
	.thumb_func
	.type	hb_font_get_glyph_contour_point, %function
hb_font_get_glyph_contour_point:
	.fnstart
.LFB399:
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
	bl	_ZN9hb_font_t23get_glyph_contour_pointEjjPiS0_(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_font_get_glyph_contour_point, .-hb_font_get_glyph_contour_point
	.section	.text.hb_font_get_glyph_name,"ax",%progbits
	.align	2
	.global	hb_font_get_glyph_name
	.thumb
	.thumb_func
	.type	hb_font_get_glyph_name, %function
hb_font_get_glyph_name:
	.fnstart
.LFB400:
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
	bl	_ZN9hb_font_t14get_glyph_nameEjPcj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_font_get_glyph_name, .-hb_font_get_glyph_name
	.section	.text.hb_font_get_glyph_from_name,"ax",%progbits
	.align	2
	.global	hb_font_get_glyph_from_name
	.thumb
	.thumb_func
	.type	hb_font_get_glyph_from_name, %function
hb_font_get_glyph_from_name:
	.fnstart
.LFB401:
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
	bl	_ZN9hb_font_t19get_glyph_from_nameEPKciPj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_font_get_glyph_from_name, .-hb_font_get_glyph_from_name
	.section	.text.hb_font_get_glyph_advance_for_direction,"ax",%progbits
	.align	2
	.global	hb_font_get_glyph_advance_for_direction
	.thumb
	.thumb_func
	.type	hb_font_get_glyph_advance_for_direction, %function
hb_font_get_glyph_advance_for_direction:
	.fnstart
.LFB402:
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
	bl	_ZN9hb_font_t31get_glyph_advance_for_directionEj14hb_direction_tPiS1_(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_font_get_glyph_advance_for_direction, .-hb_font_get_glyph_advance_for_direction
	.section	.text.hb_font_get_glyph_origin_for_direction,"ax",%progbits
	.align	2
	.global	hb_font_get_glyph_origin_for_direction
	.thumb
	.thumb_func
	.type	hb_font_get_glyph_origin_for_direction, %function
hb_font_get_glyph_origin_for_direction:
	.fnstart
.LFB403:
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
	bl	_ZN9hb_font_t30get_glyph_origin_for_directionEj14hb_direction_tPiS1_(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_font_get_glyph_origin_for_direction, .-hb_font_get_glyph_origin_for_direction
	.section	.text.hb_font_add_glyph_origin_for_direction,"ax",%progbits
	.align	2
	.global	hb_font_add_glyph_origin_for_direction
	.thumb
	.thumb_func
	.type	hb_font_add_glyph_origin_for_direction, %function
hb_font_add_glyph_origin_for_direction:
	.fnstart
.LFB404:
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
	bl	_ZN9hb_font_t30add_glyph_origin_for_directionEj14hb_direction_tPiS1_(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_font_add_glyph_origin_for_direction, .-hb_font_add_glyph_origin_for_direction
	.section	.text.hb_font_subtract_glyph_origin_for_direction,"ax",%progbits
	.align	2
	.global	hb_font_subtract_glyph_origin_for_direction
	.thumb
	.thumb_func
	.type	hb_font_subtract_glyph_origin_for_direction, %function
hb_font_subtract_glyph_origin_for_direction:
	.fnstart
.LFB405:
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
	bl	_ZN9hb_font_t35subtract_glyph_origin_for_directionEj14hb_direction_tPiS1_(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_font_subtract_glyph_origin_for_direction, .-hb_font_subtract_glyph_origin_for_direction
	.section	.text.hb_font_get_glyph_kerning_for_direction,"ax",%progbits
	.align	2
	.global	hb_font_get_glyph_kerning_for_direction
	.thumb
	.thumb_func
	.type	hb_font_get_glyph_kerning_for_direction, %function
hb_font_get_glyph_kerning_for_direction:
	.fnstart
.LFB406:
	@ args = 8, pretend = 0, frame = 16
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
	ldr	r3, [r7, #28]
	str	r3, [sp, #4]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	_ZN9hb_font_t31get_glyph_kerning_for_directionEjj14hb_direction_tPiS1_(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_font_get_glyph_kerning_for_direction, .-hb_font_get_glyph_kerning_for_direction
	.section	.text.hb_font_get_glyph_extents_for_origin,"ax",%progbits
	.align	2
	.global	hb_font_get_glyph_extents_for_origin
	.thumb
	.thumb_func
	.type	hb_font_get_glyph_extents_for_origin, %function
hb_font_get_glyph_extents_for_origin:
	.fnstart
.LFB407:
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
	bl	_ZN9hb_font_t28get_glyph_extents_for_originEj14hb_direction_tP18hb_glyph_extents_t(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_font_get_glyph_extents_for_origin, .-hb_font_get_glyph_extents_for_origin
	.section	.text.hb_font_get_glyph_contour_point_for_origin,"ax",%progbits
	.align	2
	.global	hb_font_get_glyph_contour_point_for_origin
	.thumb
	.thumb_func
	.type	hb_font_get_glyph_contour_point_for_origin, %function
hb_font_get_glyph_contour_point_for_origin:
	.fnstart
.LFB408:
	@ args = 8, pretend = 0, frame = 16
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
	ldr	r3, [r7, #28]
	str	r3, [sp, #4]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	_ZN9hb_font_t34get_glyph_contour_point_for_originEjj14hb_direction_tPiS1_(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_font_get_glyph_contour_point_for_origin, .-hb_font_get_glyph_contour_point_for_origin
	.section	.text.hb_font_glyph_to_string,"ax",%progbits
	.align	2
	.global	hb_font_glyph_to_string
	.thumb
	.thumb_func
	.type	hb_font_glyph_to_string, %function
hb_font_glyph_to_string:
	.fnstart
.LFB409:
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
	bl	_ZN9hb_font_t15glyph_to_stringEjPcj(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_font_glyph_to_string, .-hb_font_glyph_to_string
	.section	.text.hb_font_glyph_from_string,"ax",%progbits
	.align	2
	.global	hb_font_glyph_from_string
	.thumb
	.thumb_func
	.type	hb_font_glyph_from_string, %function
hb_font_glyph_from_string:
	.fnstart
.LFB410:
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
	bl	_ZN9hb_font_t17glyph_from_stringEPKciPj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_font_glyph_from_string, .-hb_font_glyph_from_string
	.section	.text.hb_font_create,"ax",%progbits
	.align	2
	.global	hb_font_create
	.thumb
	.thumb_func
	.type	hb_font_create, %function
hb_font_create:
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
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L304
	bl	hb_face_get_empty(PLT)
	mov	r3, r0
	str	r3, [r7, #4]
.L304:
	ldr	r0, [r7, #4]
	bl	_Z18hb_object_is_inertI9hb_face_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L305
	bl	hb_font_get_empty(PLT)
	mov	r3, r0
	b	.L306
.L305:
	bl	_Z16hb_object_createI9hb_font_tEPT_v(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L307
	bl	hb_font_get_empty(PLT)
	mov	r3, r0
	b	.L306
.L307:
	ldr	r0, [r7, #4]
	bl	hb_face_make_immutable(PLT)
	ldr	r0, [r7, #4]
	bl	hb_face_reference(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #52]
	bl	hb_font_funcs_get_empty(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
.L306:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_font_create, .-hb_font_create
	.section	.text.hb_font_create_sub_font,"ax",%progbits
	.align	2
	.global	hb_font_create_sub_font
	.thumb
	.thumb_func
	.type	hb_font_create_sub_font, %function
hb_font_create_sub_font:
	.fnstart
.LFB412:
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
	cmp	r3, #0
	bne	.L309
	bl	hb_font_get_empty(PLT)
	mov	r3, r0
	b	.L310
.L309:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #52]
	mov	r0, r3
	bl	hb_font_create(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r0, [r7, #12]
	bl	_Z18hb_object_is_inertI9hb_font_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L311
	ldr	r3, [r7, #12]
	b	.L310
.L311:
	ldr	r0, [r7, #4]
	bl	hb_font_make_immutable(PLT)
	ldr	r0, [r7, #4]
	bl	hb_font_reference(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #48]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #56]
	ldr	r3, [r7, #12]
	str	r2, [r3, #56]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #60]
	ldr	r3, [r7, #12]
	str	r2, [r3, #60]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #64]
	ldr	r3, [r7, #12]
	str	r2, [r3, #64]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #68]
	ldr	r3, [r7, #12]
	str	r2, [r3, #68]
	ldr	r3, [r7, #12]
.L310:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_font_create_sub_font, .-hb_font_create_sub_font
	.section	.text.hb_font_get_empty,"ax",%progbits
	.align	2
	.global	hb_font_get_empty
	.thumb
	.thumb_func
	.type	hb_font_get_empty, %function
hb_font_get_empty:
	.fnstart
.LFB413:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L314
.LPIC16:
	add	r3, pc
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L315:
	.align	2
.L314:
	.word	_ZZ17hb_font_get_emptyE12_hb_font_nil-(.LPIC16+4)
	.cantunwind
	.fnend
	.size	hb_font_get_empty, .-hb_font_get_empty
	.section	.text.hb_font_reference,"ax",%progbits
	.align	2
	.global	hb_font_reference
	.thumb
	.thumb_func
	.type	hb_font_reference, %function
hb_font_reference:
	.fnstart
.LFB414:
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
	bl	_Z19hb_object_referenceI9hb_font_tEPT_S2_(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_font_reference, .-hb_font_reference
	.section	.text.hb_font_destroy,"ax",%progbits
	.align	2
	.global	hb_font_destroy
	.thumb
	.thumb_func
	.type	hb_font_destroy, %function
hb_font_destroy:
	.fnstart
.LFB415:
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
	bl	_Z17hb_object_destroyI9hb_font_tEbPT_(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L319
	b	.L318
.L319:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	cmp	r3, #0
	beq	.L321
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	cmp	r3, #-1
	beq	.L321
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	cmp	r3, #1
	beq	.L321
	ldr	r3, [r7, #4]
	adds	r3, r3, #84
	ldr	r3, [r3]
	mov	r0, r3
	bl	_hb_ot_shaper_font_data_destroy(PLT)
.L321:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #80]
	cmp	r3, #0
	beq	.L322
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #80]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #76]
	mov	r0, r2
	blx	r3
.L322:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	mov	r0, r3
	bl	hb_font_destroy(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #52]
	mov	r0, r3
	bl	hb_face_destroy(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #72]
	mov	r0, r3
	bl	hb_font_funcs_destroy(PLT)
	ldr	r0, [r7, #4]
	bl	free(PLT)
.L318:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_font_destroy, .-hb_font_destroy
	.section	.text.hb_font_set_user_data,"ax",%progbits
	.align	2
	.global	hb_font_set_user_data
	.thumb
	.thumb_func
	.type	hb_font_set_user_data, %function
hb_font_set_user_data:
	.fnstart
.LFB416:
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
	bl	_Z23hb_object_set_user_dataI9hb_font_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_font_set_user_data, .-hb_font_set_user_data
	.section	.text.hb_font_get_user_data,"ax",%progbits
	.align	2
	.global	hb_font_get_user_data
	.thumb
	.thumb_func
	.type	hb_font_get_user_data, %function
hb_font_get_user_data:
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
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	_Z23hb_object_get_user_dataI9hb_font_tEPvPT_P18hb_user_data_key_t(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_font_get_user_data, .-hb_font_get_user_data
	.section	.text.hb_font_make_immutable,"ax",%progbits
	.align	2
	.global	hb_font_make_immutable
	.thumb
	.thumb_func
	.type	hb_font_make_immutable, %function
hb_font_make_immutable:
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
	ldr	r0, [r7, #4]
	bl	_Z18hb_object_is_inertI9hb_font_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L328
	b	.L327
.L328:
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #44]
.L327:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_font_make_immutable, .-hb_font_make_immutable
	.section	.text.hb_font_is_immutable,"ax",%progbits
	.align	2
	.global	hb_font_is_immutable
	.thumb
	.thumb_func
	.type	hb_font_is_immutable, %function
hb_font_is_immutable:
	.fnstart
.LFB419:
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
	.size	hb_font_is_immutable, .-hb_font_is_immutable
	.section	.text.hb_font_get_parent,"ax",%progbits
	.align	2
	.global	hb_font_get_parent
	.thumb
	.thumb_func
	.type	hb_font_get_parent, %function
hb_font_get_parent:
	.fnstart
.LFB420:
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
	.size	hb_font_get_parent, .-hb_font_get_parent
	.section	.text.hb_font_get_face,"ax",%progbits
	.align	2
	.global	hb_font_get_face
	.thumb
	.thumb_func
	.type	hb_font_get_face, %function
hb_font_get_face:
	.fnstart
.LFB421:
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
	.size	hb_font_get_face, .-hb_font_get_face
	.section	.text.hb_font_set_funcs,"ax",%progbits
	.align	2
	.global	hb_font_set_funcs
	.thumb
	.thumb_func
	.type	hb_font_set_funcs, %function
hb_font_set_funcs:
	.fnstart
.LFB422:
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
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L337
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L338
	ldr	r3, [r7]
	ldr	r0, [r7, #4]
	blx	r3
.L338:
	b	.L336
.L337:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #80]
	cmp	r3, #0
	beq	.L340
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #80]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #76]
	mov	r0, r2
	blx	r3
.L340:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L341
	bl	hb_font_funcs_get_empty(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
.L341:
	ldr	r0, [r7, #8]
	bl	hb_font_funcs_reference(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #72]
	mov	r0, r3
	bl	hb_font_funcs_destroy(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #76]
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	str	r2, [r3, #80]
.L336:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_font_set_funcs, .-hb_font_set_funcs
	.section	.text.hb_font_set_funcs_data,"ax",%progbits
	.align	2
	.global	hb_font_set_funcs_data
	.thumb
	.thumb_func
	.type	hb_font_set_funcs_data, %function
hb_font_set_funcs_data:
	.fnstart
.LFB423:
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
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L343
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L344
	ldr	r3, [r7, #4]
	ldr	r0, [r7, #8]
	blx	r3
.L344:
	b	.L342
.L343:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #80]
	cmp	r3, #0
	beq	.L346
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #80]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #76]
	mov	r0, r2
	blx	r3
.L346:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #76]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #80]
.L342:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_font_set_funcs_data, .-hb_font_set_funcs_data
	.section	.text.hb_font_set_scale,"ax",%progbits
	.align	2
	.global	hb_font_set_scale
	.thumb
	.thumb_func
	.type	hb_font_set_scale, %function
hb_font_set_scale:
	.fnstart
.LFB424:
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
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L348
	b	.L347
.L348:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #56]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #60]
.L347:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	hb_font_set_scale, .-hb_font_set_scale
	.section	.text.hb_font_get_scale,"ax",%progbits
	.align	2
	.global	hb_font_get_scale
	.thumb
	.thumb_func
	.type	hb_font_get_scale, %function
hb_font_get_scale:
	.fnstart
.LFB425:
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
	cmp	r3, #0
	beq	.L351
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #56]
	ldr	r3, [r7, #8]
	str	r2, [r3]
.L351:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L350
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #60]
	ldr	r3, [r7, #4]
	str	r2, [r3]
.L350:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	hb_font_get_scale, .-hb_font_get_scale
	.section	.text.hb_font_set_ppem,"ax",%progbits
	.align	2
	.global	hb_font_set_ppem
	.thumb
	.thumb_func
	.type	hb_font_set_ppem, %function
hb_font_set_ppem:
	.fnstart
.LFB426:
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
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L354
	b	.L353
.L354:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #68]
.L353:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	hb_font_set_ppem, .-hb_font_set_ppem
	.section	.text.hb_font_get_ppem,"ax",%progbits
	.align	2
	.global	hb_font_get_ppem
	.thumb
	.thumb_func
	.type	hb_font_get_ppem, %function
hb_font_get_ppem:
	.fnstart
.LFB427:
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
	cmp	r3, #0
	beq	.L357
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #64]
	ldr	r3, [r7, #8]
	str	r2, [r3]
.L357:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L356
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #68]
	ldr	r3, [r7, #4]
	str	r2, [r3]
.L356:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	hb_font_get_ppem, .-hb_font_get_ppem
	.section	.text._Z12ARRAY_LENGTHIcLj64EEjRAT0__KT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z12ARRAY_LENGTHIcLj64EEjRAT0__KT_, %function
_Z12ARRAY_LENGTHIcLj64EEjRAT0__KT_:
	.fnstart
.LFB428:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #64
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_Z12ARRAY_LENGTHIcLj64EEjRAT0__KT_, .-_Z12ARRAY_LENGTHIcLj64EEjRAT0__KT_
	.section	.text._Z3MINIjET_RKS0_S2_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z3MINIjET_RKS0_S2_, %function
_Z3MINIjET_RKS0_S2_:
	.fnstart
.LFB429:
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
	bcs	.L362
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	b	.L363
.L362:
	ldr	r3, [r7]
	ldr	r3, [r3]
.L363:
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
.LFB431:
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
	bne	.L367
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE6finishEv(PLT)
	b	.L366
.L367:
	ldr	r0, [r7]
	bl	_ZN10hb_mutex_t4lockEv(PLT)
	b	.L369
.L370:
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
.L369:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L370
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE6finishEv(PLT)
	ldr	r0, [r7]
	bl	_ZN10hb_mutex_t6unlockEv(PLT)
.L366:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE6finishERS2_, .-_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE6finishERS2_
	.section	.text._Z16hb_object_createI15hb_font_funcs_tEPT_v,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z16hb_object_createI15hb_font_funcs_tEPT_v, %function
_Z16hb_object_createI15hb_font_funcs_tEPT_v:
	.fnstart
.LFB460:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	movs	r0, #1
	movs	r1, #180
	bl	calloc(PLT)
	mov	r3, r0
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L372
	ldr	r3, [r7, #4]
	b	.L373
.L372:
	ldr	r0, [r7, #4]
	bl	_Z14hb_object_initI15hb_font_funcs_tEvPT_(PLT)
	ldr	r0, [r7, #4]
	ldr	r3, .L374
.LPIC17:
	add	r3, pc
	mov	r1, r3
	bl	_Z15hb_object_traceI15hb_font_funcs_tEvPKT_PKc(PLT)
	ldr	r3, [r7, #4]
.L373:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L375:
	.align	2
.L374:
	.word	_ZZ16hb_object_createI15hb_font_funcs_tEPT_vE19__PRETTY_FUNCTION__-(.LPIC17+4)
	.fnend
	.size	_Z16hb_object_createI15hb_font_funcs_tEPT_v, .-_Z16hb_object_createI15hb_font_funcs_tEPT_v
	.section	.text._Z19hb_object_referenceI15hb_font_funcs_tEPT_S2_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z19hb_object_referenceI15hb_font_funcs_tEPT_S2_, %function
_Z19hb_object_referenceI15hb_font_funcs_tEPT_S2_:
	.fnstart
.LFB461:
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
	ldr	r3, .L382
.LPIC18:
	add	r3, pc
	mov	r1, r3
	bl	_Z15hb_object_traceI15hb_font_funcs_tEvPKT_PKc(PLT)
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L377
	ldr	r0, [r7, #4]
	bl	_Z18hb_object_is_inertI15hb_font_funcs_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L378
.L377:
	movs	r3, #1
	b	.L379
.L378:
	movs	r3, #0
.L379:
	cmp	r3, #0
	beq	.L380
	ldr	r3, [r7, #4]
	b	.L381
.L380:
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN20hb_reference_count_t3incEv(PLT)
	ldr	r3, [r7, #4]
.L381:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L383:
	.align	2
.L382:
	.word	_ZZ19hb_object_referenceI15hb_font_funcs_tEPT_S2_E19__PRETTY_FUNCTION__-(.LPIC18+4)
	.fnend
	.size	_Z19hb_object_referenceI15hb_font_funcs_tEPT_S2_, .-_Z19hb_object_referenceI15hb_font_funcs_tEPT_S2_
	.section	.text._Z17hb_object_destroyI15hb_font_funcs_tEbPT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z17hb_object_destroyI15hb_font_funcs_tEbPT_, %function
_Z17hb_object_destroyI15hb_font_funcs_tEbPT_:
	.fnstart
.LFB462:
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
	ldr	r3, .L391
.LPIC19:
	add	r3, pc
	mov	r1, r3
	bl	_Z15hb_object_traceI15hb_font_funcs_tEvPKT_PKc(PLT)
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L385
	ldr	r0, [r7, #4]
	bl	_Z18hb_object_is_inertI15hb_font_funcs_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L386
.L385:
	movs	r3, #1
	b	.L387
.L386:
	movs	r3, #0
.L387:
	cmp	r3, #0
	beq	.L388
	movs	r3, #0
	b	.L389
.L388:
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
	beq	.L390
	movs	r3, #0
	b	.L389
.L390:
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN20hb_reference_count_t6finishEv(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZN20hb_user_data_array_t6finishEv(PLT)
	movs	r3, #1
.L389:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L392:
	.align	2
.L391:
	.word	_ZZ17hb_object_destroyI15hb_font_funcs_tEbPT_E19__PRETTY_FUNCTION__-(.LPIC19+4)
	.fnend
	.size	_Z17hb_object_destroyI15hb_font_funcs_tEbPT_, .-_Z17hb_object_destroyI15hb_font_funcs_tEbPT_
	.section	.text._Z23hb_object_set_user_dataI15hb_font_funcs_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z23hb_object_set_user_dataI15hb_font_funcs_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei, %function
_Z23hb_object_set_user_dataI15hb_font_funcs_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei:
	.fnstart
.LFB463:
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
	beq	.L394
	ldr	r0, [r7, #12]
	bl	_Z18hb_object_is_inertI15hb_font_funcs_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L395
.L394:
	movs	r3, #1
	b	.L396
.L395:
	movs	r3, #0
.L396:
	cmp	r3, #0
	beq	.L397
	movs	r3, #0
	b	.L398
.L397:
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
.L398:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_Z23hb_object_set_user_dataI15hb_font_funcs_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei, .-_Z23hb_object_set_user_dataI15hb_font_funcs_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei
	.section	.text._Z23hb_object_get_user_dataI15hb_font_funcs_tEPvPT_P18hb_user_data_key_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z23hb_object_get_user_dataI15hb_font_funcs_tEPvPT_P18hb_user_data_key_t, %function
_Z23hb_object_get_user_dataI15hb_font_funcs_tEPvPT_P18hb_user_data_key_t:
	.fnstart
.LFB464:
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
	beq	.L400
	ldr	r0, [r7, #4]
	bl	_Z18hb_object_is_inertI15hb_font_funcs_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L401
.L400:
	movs	r3, #1
	b	.L402
.L401:
	movs	r3, #0
.L402:
	cmp	r3, #0
	beq	.L403
	movs	r3, #0
	b	.L404
.L403:
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN20hb_user_data_array_t3getEP18hb_user_data_key_t(PLT)
	mov	r3, r0
.L404:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_Z23hb_object_get_user_dataI15hb_font_funcs_tEPvPT_P18hb_user_data_key_t, .-_Z23hb_object_get_user_dataI15hb_font_funcs_tEPvPT_P18hb_user_data_key_t
	.section	.text._Z18hb_object_is_inertI15hb_font_funcs_tEbPKT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z18hb_object_is_inertI15hb_font_funcs_tEbPKT_, %function
_Z18hb_object_is_inertI15hb_font_funcs_tEbPKT_:
	.fnstart
.LFB465:
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
	.size	_Z18hb_object_is_inertI15hb_font_funcs_tEbPKT_, .-_Z18hb_object_is_inertI15hb_font_funcs_tEbPKT_
	.section	.text._Z18hb_object_is_inertI9hb_face_tEbPKT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z18hb_object_is_inertI9hb_face_tEbPKT_, %function
_Z18hb_object_is_inertI9hb_face_tEbPKT_:
	.fnstart
.LFB466:
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
	.size	_Z18hb_object_is_inertI9hb_face_tEbPKT_, .-_Z18hb_object_is_inertI9hb_face_tEbPKT_
	.section	.text._Z16hb_object_createI9hb_font_tEPT_v,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z16hb_object_createI9hb_font_tEPT_v, %function
_Z16hb_object_createI9hb_font_tEPT_v:
	.fnstart
.LFB467:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	movs	r0, #1
	movs	r1, #88
	bl	calloc(PLT)
	mov	r3, r0
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L410
	ldr	r3, [r7, #4]
	b	.L411
.L410:
	ldr	r0, [r7, #4]
	bl	_Z14hb_object_initI9hb_font_tEvPT_(PLT)
	ldr	r0, [r7, #4]
	ldr	r3, .L412
.LPIC20:
	add	r3, pc
	mov	r1, r3
	bl	_Z15hb_object_traceI9hb_font_tEvPKT_PKc(PLT)
	ldr	r3, [r7, #4]
.L411:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L413:
	.align	2
.L412:
	.word	_ZZ16hb_object_createI9hb_font_tEPT_vE19__PRETTY_FUNCTION__-(.LPIC20+4)
	.fnend
	.size	_Z16hb_object_createI9hb_font_tEPT_v, .-_Z16hb_object_createI9hb_font_tEPT_v
	.section	.text._Z18hb_object_is_inertI9hb_font_tEbPKT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z18hb_object_is_inertI9hb_font_tEbPKT_, %function
_Z18hb_object_is_inertI9hb_font_tEbPKT_:
	.fnstart
.LFB468:
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
	.size	_Z18hb_object_is_inertI9hb_font_tEbPKT_, .-_Z18hb_object_is_inertI9hb_font_tEbPKT_
	.section	.text._Z19hb_object_referenceI9hb_font_tEPT_S2_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z19hb_object_referenceI9hb_font_tEPT_S2_, %function
_Z19hb_object_referenceI9hb_font_tEPT_S2_:
	.fnstart
.LFB469:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	ldr	r3, .L422
.LPIC21:
	add	r3, pc
	mov	r1, r3
	bl	_Z15hb_object_traceI9hb_font_tEvPKT_PKc(PLT)
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L417
	ldr	r0, [r7, #4]
	bl	_Z18hb_object_is_inertI9hb_font_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L418
.L417:
	movs	r3, #1
	b	.L419
.L418:
	movs	r3, #0
.L419:
	cmp	r3, #0
	beq	.L420
	ldr	r3, [r7, #4]
	b	.L421
.L420:
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN20hb_reference_count_t3incEv(PLT)
	ldr	r3, [r7, #4]
.L421:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L423:
	.align	2
.L422:
	.word	_ZZ19hb_object_referenceI9hb_font_tEPT_S2_E19__PRETTY_FUNCTION__-(.LPIC21+4)
	.cantunwind
	.fnend
	.size	_Z19hb_object_referenceI9hb_font_tEPT_S2_, .-_Z19hb_object_referenceI9hb_font_tEPT_S2_
	.section	.text._Z17hb_object_destroyI9hb_font_tEbPT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z17hb_object_destroyI9hb_font_tEbPT_, %function
_Z17hb_object_destroyI9hb_font_tEbPT_:
	.fnstart
.LFB470:
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
	ldr	r3, .L431
.LPIC22:
	add	r3, pc
	mov	r1, r3
	bl	_Z15hb_object_traceI9hb_font_tEvPKT_PKc(PLT)
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L425
	ldr	r0, [r7, #4]
	bl	_Z18hb_object_is_inertI9hb_font_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L426
.L425:
	movs	r3, #1
	b	.L427
.L426:
	movs	r3, #0
.L427:
	cmp	r3, #0
	beq	.L428
	movs	r3, #0
	b	.L429
.L428:
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
	beq	.L430
	movs	r3, #0
	b	.L429
.L430:
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN20hb_reference_count_t6finishEv(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZN20hb_user_data_array_t6finishEv(PLT)
	movs	r3, #1
.L429:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L432:
	.align	2
.L431:
	.word	_ZZ17hb_object_destroyI9hb_font_tEbPT_E19__PRETTY_FUNCTION__-(.LPIC22+4)
	.fnend
	.size	_Z17hb_object_destroyI9hb_font_tEbPT_, .-_Z17hb_object_destroyI9hb_font_tEbPT_
	.section	.text._Z23hb_object_set_user_dataI9hb_font_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z23hb_object_set_user_dataI9hb_font_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei, %function
_Z23hb_object_set_user_dataI9hb_font_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei:
	.fnstart
.LFB471:
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
	beq	.L434
	ldr	r0, [r7, #12]
	bl	_Z18hb_object_is_inertI9hb_font_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L435
.L434:
	movs	r3, #1
	b	.L436
.L435:
	movs	r3, #0
.L436:
	cmp	r3, #0
	beq	.L437
	movs	r3, #0
	b	.L438
.L437:
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
.L438:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_Z23hb_object_set_user_dataI9hb_font_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei, .-_Z23hb_object_set_user_dataI9hb_font_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei
	.section	.text._Z23hb_object_get_user_dataI9hb_font_tEPvPT_P18hb_user_data_key_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z23hb_object_get_user_dataI9hb_font_tEPvPT_P18hb_user_data_key_t, %function
_Z23hb_object_get_user_dataI9hb_font_tEPvPT_P18hb_user_data_key_t:
	.fnstart
.LFB472:
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
	beq	.L440
	ldr	r0, [r7, #4]
	bl	_Z18hb_object_is_inertI9hb_font_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L441
.L440:
	movs	r3, #1
	b	.L442
.L441:
	movs	r3, #0
.L442:
	cmp	r3, #0
	beq	.L443
	movs	r3, #0
	b	.L444
.L443:
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN20hb_user_data_array_t3getEP18hb_user_data_key_t(PLT)
	mov	r3, r0
.L444:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_Z23hb_object_get_user_dataI9hb_font_tEPvPT_P18hb_user_data_key_t, .-_Z23hb_object_get_user_dataI9hb_font_tEPvPT_P18hb_user_data_key_t
	.section	.text._ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4initEv,"axG",%progbits,_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4initEv,comdat
	.align	2
	.weak	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4initEv
	.thumb
	.thumb_func
	.type	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4initEv, %function
_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4initEv:
	.fnstart
.LFB473:
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
.LFB474:
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
	beq	.L447
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r0, r3
	bl	free(PLT)
.L447:
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
.LFB475:
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
.LFB476:
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
	.section	.text._Z14hb_object_initI15hb_font_funcs_tEvPT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z14hb_object_initI15hb_font_funcs_tEvPT_, %function
_Z14hb_object_initI15hb_font_funcs_tEvPT_:
	.fnstart
.LFB488:
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
	.size	_Z14hb_object_initI15hb_font_funcs_tEvPT_, .-_Z14hb_object_initI15hb_font_funcs_tEvPT_
	.section	.rodata
	.align	2
.LC3:
	.ascii	"OBJECT\000"
	.align	2
.LC4:
	.ascii	"%s refcount=%d\000"
	.section	.text._Z15hb_object_traceI15hb_font_funcs_tEvPKT_PKc,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z15hb_object_traceI15hb_font_funcs_tEvPKT_PKc, %function
_Z15hb_object_traceI15hb_font_funcs_tEvPKT_PKc:
	.fnstart
.LFB489:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #24
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L453
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	b	.L454
.L453:
	movs	r3, #0
.L454:
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	ldr	r2, .L455
.LPIC23:
	add	r2, pc
	str	r2, [sp, #8]
	ldr	r2, [r7]
	str	r2, [sp, #12]
	str	r3, [sp, #16]
	ldr	r3, .L455+4
.LPIC24:
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
.L456:
	.align	2
.L455:
	.word	.LC4-(.LPIC23+4)
	.word	.LC3-(.LPIC24+4)
	.cantunwind
	.fnend
	.size	_Z15hb_object_traceI15hb_font_funcs_tEvPKT_PKc, .-_Z15hb_object_traceI15hb_font_funcs_tEvPKT_PKc
	.section	.text._Z14hb_object_initI9hb_font_tEvPT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z14hb_object_initI9hb_font_tEvPT_, %function
_Z14hb_object_initI9hb_font_tEvPT_:
	.fnstart
.LFB490:
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
	.size	_Z14hb_object_initI9hb_font_tEvPT_, .-_Z14hb_object_initI9hb_font_tEvPT_
	.section	.text._Z15hb_object_traceI9hb_font_tEvPKT_PKc,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z15hb_object_traceI9hb_font_tEvPKT_PKc, %function
_Z15hb_object_traceI9hb_font_tEvPKT_PKc:
	.fnstart
.LFB491:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #24
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L459
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	b	.L460
.L459:
	movs	r3, #0
.L460:
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	ldr	r2, .L461
.LPIC25:
	add	r2, pc
	str	r2, [sp, #8]
	ldr	r2, [r7]
	str	r2, [sp, #12]
	str	r3, [sp, #16]
	ldr	r3, .L461+4
.LPIC26:
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
.L462:
	.align	2
.L461:
	.word	.LC4-(.LPIC25+4)
	.word	.LC3-(.LPIC26+4)
	.cantunwind
	.fnend
	.size	_Z15hb_object_traceI9hb_font_tEvPKT_PKc, .-_Z15hb_object_traceI9hb_font_tEvPKT_PKc
	.section	.data.rel.ro.local._ZL18_hb_font_funcs_nil,"aw",%progbits
	.align	2
	.type	_ZL18_hb_font_funcs_nil, %object
	.size	_ZL18_hb_font_funcs_nil, 180
_ZL18_hb_font_funcs_nil:
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	0
	.space	24
	.word	1
	.word	_ZL21hb_font_get_glyph_nilP9hb_font_tPvjjPjS1_
	.word	_ZL31hb_font_get_glyph_h_advance_nilP9hb_font_tPvjS1_
	.word	_ZL31hb_font_get_glyph_v_advance_nilP9hb_font_tPvjS1_
	.word	_ZL30hb_font_get_glyph_h_origin_nilP9hb_font_tPvjPiS2_S1_
	.word	_ZL30hb_font_get_glyph_v_origin_nilP9hb_font_tPvjPiS2_S1_
	.word	_ZL31hb_font_get_glyph_h_kerning_nilP9hb_font_tPvjjS1_
	.word	_ZL31hb_font_get_glyph_v_kerning_nilP9hb_font_tPvjjS1_
	.word	_ZL29hb_font_get_glyph_extents_nilP9hb_font_tPvjP18hb_glyph_extents_tS1_
	.word	_ZL35hb_font_get_glyph_contour_point_nilP9hb_font_tPvjjPiS2_S1_
	.word	_ZL26hb_font_get_glyph_name_nilP9hb_font_tPvjPcjS1_
	.word	_ZL31hb_font_get_glyph_from_name_nilP9hb_font_tPvPKciPjS1_
	.space	88
	.section	.rodata._ZN2OTL8_NullTagE,"a",%progbits
	.align	2
	.type	_ZN2OTL8_NullTagE, %object
	.size	_ZN2OTL8_NullTagE, 5
_ZN2OTL8_NullTagE:
	.ascii	"    \000"
	.section	.rodata._ZN2OTL10_NullIndexE,"a",%progbits
	.align	2
	.type	_ZN2OTL10_NullIndexE, %object
	.size	_ZN2OTL10_NullIndexE, 3
_ZN2OTL10_NullIndexE:
	.ascii	"\377\377\000"
	.section	.rodata._ZZ16hb_object_createI15hb_font_funcs_tEPT_vE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZ16hb_object_createI15hb_font_funcs_tEPT_vE19__PRETTY_FUNCTION__, %object
	.size	_ZZ16hb_object_createI15hb_font_funcs_tEPT_vE19__PRETTY_FUNCTION__, 55
_ZZ16hb_object_createI15hb_font_funcs_tEPT_vE19__PRETTY_FUNCTION__:
	.ascii	"Type* hb_object_create() [with Type = hb_font_funcs"
	.ascii	"_t]\000"
	.section	.rodata._ZZ19hb_object_referenceI15hb_font_funcs_tEPT_S2_E19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZ19hb_object_referenceI15hb_font_funcs_tEPT_S2_E19__PRETTY_FUNCTION__, %object
	.size	_ZZ19hb_object_referenceI15hb_font_funcs_tEPT_S2_E19__PRETTY_FUNCTION__, 63
_ZZ19hb_object_referenceI15hb_font_funcs_tEPT_S2_E19__PRETTY_FUNCTION__:
	.ascii	"Type* hb_object_reference(Type*) [with Type = hb_fo"
	.ascii	"nt_funcs_t]\000"
	.section	.rodata._ZZ17hb_object_destroyI15hb_font_funcs_tEbPT_E19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZ17hb_object_destroyI15hb_font_funcs_tEbPT_E19__PRETTY_FUNCTION__, %object
	.size	_ZZ17hb_object_destroyI15hb_font_funcs_tEbPT_E19__PRETTY_FUNCTION__, 60
_ZZ17hb_object_destroyI15hb_font_funcs_tEbPT_E19__PRETTY_FUNCTION__:
	.ascii	"bool hb_object_destroy(Type*) [with Type = hb_font_"
	.ascii	"funcs_t]\000"
	.section	.rodata._ZZ16hb_object_createI9hb_font_tEPT_vE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZ16hb_object_createI9hb_font_tEPT_vE19__PRETTY_FUNCTION__, %object
	.size	_ZZ16hb_object_createI9hb_font_tEPT_vE19__PRETTY_FUNCTION__, 49
_ZZ16hb_object_createI9hb_font_tEPT_vE19__PRETTY_FUNCTION__:
	.ascii	"Type* hb_object_create() [with Type = hb_font_t]\000"
	.section	.data.rel.ro._ZZ17hb_font_get_emptyE12_hb_font_nil,"aw",%progbits
	.align	2
	.type	_ZZ17hb_font_get_emptyE12_hb_font_nil, %object
	.size	_ZZ17hb_font_get_emptyE12_hb_font_nil, 88
_ZZ17hb_font_get_emptyE12_hb_font_nil:
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	0
	.space	24
	.word	1
	.word	0
	.word	_hb_face_nil
	.word	0
	.word	0
	.word	0
	.word	0
	.word	_ZL18_hb_font_funcs_nil
	.word	0
	.word	0
	.word	-1
	.section	.rodata._ZZ19hb_object_referenceI9hb_font_tEPT_S2_E19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZ19hb_object_referenceI9hb_font_tEPT_S2_E19__PRETTY_FUNCTION__, %object
	.size	_ZZ19hb_object_referenceI9hb_font_tEPT_S2_E19__PRETTY_FUNCTION__, 57
_ZZ19hb_object_referenceI9hb_font_tEPT_S2_E19__PRETTY_FUNCTION__:
	.ascii	"Type* hb_object_reference(Type*) [with Type = hb_fo"
	.ascii	"nt_t]\000"
	.section	.rodata._ZZ17hb_object_destroyI9hb_font_tEbPT_E19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZ17hb_object_destroyI9hb_font_tEbPT_E19__PRETTY_FUNCTION__, %object
	.size	_ZZ17hb_object_destroyI9hb_font_tEbPT_E19__PRETTY_FUNCTION__, 54
_ZZ17hb_object_destroyI9hb_font_tEbPT_E19__PRETTY_FUNCTION__:
	.ascii	"bool hb_object_destroy(Type*) [with Type = hb_font_"
	.ascii	"t]\000"
	.hidden	_hb_face_nil
	.hidden	_ZN20hb_user_data_array_t3getEP18hb_user_data_key_t
	.hidden	_ZN20hb_user_data_array_t3setEP18hb_user_data_key_tPvPFvS2_Ei
	.hidden	_hb_ot_shaper_font_data_destroy
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
