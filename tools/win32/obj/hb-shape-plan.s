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
	.file	"hb-shape-plan.cc"
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
	.section	.text._ZL29hb_ot_shaper_face_data_ensureP9hb_face_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL29hb_ot_shaper_face_data_ensureP9hb_face_t, %function
_ZL29hb_ot_shaper_face_data_ensureP9hb_face_t:
	.fnstart
.LFB150:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
.L19:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #72]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L20
	ldr	r0, [r7, #4]
	bl	_hb_ot_shaper_face_data_create(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L21
	mov	r3, #-1
	str	r3, [r7, #12]
.L21:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #72]
	cmp	r3, #0
	bne	.L22
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #72]
	movs	r3, #0
	b	.L23
.L22:
	movs	r3, #1
.L23:
	cmp	r3, #0
	beq	.L20
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L24
	ldr	r3, [r7, #12]
	cmp	r3, #-1
	beq	.L24
	ldr	r3, [r7, #12]
	cmp	r3, #1
	beq	.L24
	ldr	r0, [r7, #12]
	bl	_hb_ot_shaper_face_data_destroy(PLT)
.L24:
	b	.L19
.L20:
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L25
	ldr	r3, [r7, #12]
	cmp	r3, #-1
	beq	.L25
	movs	r3, #1
	b	.L26
.L25:
	movs	r3, #0
.L26:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL29hb_ot_shaper_face_data_ensureP9hb_face_t, .-_ZL29hb_ot_shaper_face_data_ensureP9hb_face_t
	.section	.text._ZL29hb_ot_shaper_font_data_ensureP9hb_font_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL29hb_ot_shaper_font_data_ensureP9hb_font_t, %function
_ZL29hb_ot_shaper_font_data_ensureP9hb_font_t:
	.fnstart
.LFB151:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
.L29:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L30
	ldr	r0, [r7, #4]
	bl	_hb_ot_shaper_font_data_create(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L31
	mov	r3, #-1
	str	r3, [r7, #12]
.L31:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	cmp	r3, #0
	bne	.L32
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #84]
	movs	r3, #0
	b	.L33
.L32:
	movs	r3, #1
.L33:
	cmp	r3, #0
	beq	.L30
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L34
	ldr	r3, [r7, #12]
	cmp	r3, #-1
	beq	.L34
	ldr	r3, [r7, #12]
	cmp	r3, #1
	beq	.L34
	ldr	r0, [r7, #12]
	bl	_hb_ot_shaper_font_data_destroy(PLT)
.L34:
	b	.L29
.L30:
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L35
	ldr	r3, [r7, #12]
	cmp	r3, #-1
	beq	.L35
	movs	r3, #1
	b	.L36
.L35:
	movs	r3, #0
.L36:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL29hb_ot_shaper_font_data_ensureP9hb_font_t, .-_ZL29hb_ot_shaper_font_data_ensureP9hb_font_t
	.section	.rodata
	.align	2
.LC0:
	.ascii	"SHAPE_PLAN\000"
	.align	2
.LC1:
	.ascii	"num_features=%d shaper_list=%p\000"
	.align	2
.LC2:
	.ascii	"ot\000"
	.section	.text._ZL18hb_shape_plan_planP15hb_shape_plan_tPK12hb_feature_tjPKPKc,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL18hb_shape_plan_planP15hb_shape_plan_tPK12hb_feature_tjPKPKc, %function
_ZL18hb_shape_plan_planP15hb_shape_plan_tPK12hb_feature_tjPKPKc:
	.fnstart
.LFB152:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #52
	sub	sp, sp, #52
	.setfp r7, sp, #24
	add	r7, sp, #24
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [sp]
	movs	r3, #0
	str	r3, [sp, #4]
	ldr	r3, .L47
.LPIC0:
	add	r3, pc
	str	r3, [sp, #8]
	ldr	r3, [r7, #4]
	str	r3, [sp, #12]
	ldr	r3, [r7]
	str	r3, [sp, #16]
	ldr	r3, .L47+4
.LPIC1:
	add	r3, pc
	mov	r0, r3
	ldr	r1, [r7, #12]
	ldr	r3, .L47+8
.LPIC2:
	add	r3, pc
	mov	r2, r3
	movs	r3, #0
	bl	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z(PLT)
	bl	_Z15_hb_shapers_getv(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L39
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L40
.L43:
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	ldr	r2, [r3, #16]
	ldr	r3, .L47+12
.LPIC3:
	add	r3, pc
	cmp	r2, r3
	bne	.L41
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #48]
	mov	r0, r3
	bl	_ZL29hb_ot_shaper_face_data_ensureP9hb_face_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L41
	ldr	r3, [r7, #12]
	add	r4, r3, #88
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	_hb_ot_shaper_shape_plan_data_create(PLT)
	mov	r3, r0
	str	r3, [r4]
	ldr	r3, [r7, #12]
	ldr	r2, .L47+16
.LPIC4:
	add	r2, pc
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r2, .L47+20
.LPIC5:
	add	r2, pc
	str	r2, [r3, #76]
	b	.L38
.L41:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L40:
	movs	r2, #1
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bhi	.L43
	b	.L38
.L39:
	b	.L44
.L46:
	ldr	r3, [r7]
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r3, .L47+24
.LPIC6:
	add	r3, pc
	mov	r1, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L45
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #48]
	mov	r0, r3
	bl	_ZL29hb_ot_shaper_face_data_ensureP9hb_face_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L45
	ldr	r3, [r7, #12]
	add	r4, r3, #88
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	_hb_ot_shaper_shape_plan_data_create(PLT)
	mov	r3, r0
	str	r3, [r4]
	ldr	r3, [r7, #12]
	ldr	r2, .L47+28
.LPIC7:
	add	r2, pc
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r2, .L47+32
.LPIC8:
	add	r2, pc
	str	r2, [r3, #76]
	b	.L38
.L45:
	ldr	r3, [r7]
	adds	r3, r3, #4
	str	r3, [r7]
.L44:
	ldr	r3, [r7]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L46
.L38:
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L48:
	.align	2
.L47:
	.word	.LC1-(.LPIC0+4)
	.word	.LC0-(.LPIC1+4)
	.word	_ZZL18hb_shape_plan_planP15hb_shape_plan_tPK12hb_feature_tjPKPKcE19__PRETTY_FUNCTION__-(.LPIC2+4)
	.word	_hb_ot_shape-(.LPIC3+4)
	.word	_hb_ot_shape-(.LPIC4+4)
	.word	.LC2-(.LPIC5+4)
	.word	.LC2-(.LPIC6+4)
	.word	_hb_ot_shape-(.LPIC7+4)
	.word	.LC2-(.LPIC8+4)
	.fnend
	.size	_ZL18hb_shape_plan_planP15hb_shape_plan_tPK12hb_feature_tjPKPKc, .-_ZL18hb_shape_plan_planP15hb_shape_plan_tPK12hb_feature_tjPKPKc
	.section	.rodata
	.align	2
.LC3:
	.ascii	"face=%p num_features=%d shaper_list=%p\000"
	.align	2
.LC4:
	.ascii	"props->direction != HB_DIRECTION_INVALID\000"
	.align	2
.LC5:
	.ascii	"../../../libs/harfbuzz-ng/src/hb-shape-plan.cc\000"
	.section	.text.hb_shape_plan_create,"ax",%progbits
	.align	2
	.global	hb_shape_plan_create
	.thumb
	.thumb_func
	.type	hb_shape_plan_create, %function
hb_shape_plan_create:
	.fnstart
.LFB153:
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #48
	sub	sp, sp, #48
	.setfp r7, sp, #24
	add	r7, sp, #24
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [sp]
	movs	r3, #0
	str	r3, [sp, #4]
	ldr	r3, .L62
.LPIC9:
	add	r3, pc
	str	r3, [sp, #8]
	ldr	r3, [r7, #12]
	str	r3, [sp, #12]
	ldr	r3, [r7]
	str	r3, [sp, #16]
	ldr	r3, [r7, #40]
	str	r3, [sp, #20]
	ldr	r3, .L62+4
.LPIC10:
	add	r3, pc
	mov	r0, r3
	movs	r1, #0
	ldr	r3, .L62+8
.LPIC11:
	add	r3, pc
	mov	r2, r3
	movs	r3, #0
	bl	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z(PLT)
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L50
	bl	hb_face_get_empty(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
.L50:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L51
	ldr	r0, [r7, #12]
	bl	_Z18hb_object_is_inertI9hb_face_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L52
.L51:
	movs	r3, #1
	b	.L53
.L52:
	movs	r3, #0
.L53:
	cmp	r3, #0
	beq	.L54
	bl	hb_shape_plan_get_empty(PLT)
	mov	r3, r0
	b	.L55
.L54:
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L56
	ldr	r3, [r7]
	lsls	r3, r3, #4
	mov	r0, r3
	bl	malloc(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L56
	movs	r3, #1
	b	.L57
.L56:
	movs	r3, #0
.L57:
	cmp	r3, #0
	beq	.L58
	bl	hb_shape_plan_get_empty(PLT)
	mov	r3, r0
	b	.L55
.L58:
	bl	_Z16hb_object_createI15hb_shape_plan_tEPT_v(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L59
	ldr	r0, [r7, #20]
	bl	free(PLT)
	bl	hb_shape_plan_get_empty(PLT)
	mov	r3, r0
	b	.L55
.L59:
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L60
	ldr	r3, .L62+12
.LPIC12:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L62+16
.LPIC13:
	add	r3, pc
	mov	r1, r3
	movs	r2, #138
	ldr	r3, .L62+20
.LPIC14:
	add	r3, pc
	bl	__assert_fail(PLT)
.L60:
	ldr	r0, [r7, #12]
	bl	hb_face_make_immutable(PLT)
	ldr	r3, [r7, #40]
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #16]
	str	r2, [r3, #44]
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #12]
	str	r2, [r3, #48]
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #8]
	add	r4, r2, #52
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7, #16]
	ldr	r2, [r7]
	str	r2, [r3, #84]
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #20]
	str	r2, [r3, #80]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L61
	ldr	r3, [r7]
	lsls	r3, r3, #4
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #4]
	mov	r2, r3
	bl	memcpy(PLT)
.L61:
	ldr	r0, [r7, #16]
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
	ldr	r3, [r7, #40]
	bl	_ZL18hb_shape_plan_planP15hb_shape_plan_tPK12hb_feature_tjPKPKc(PLT)
	ldr	r3, [r7, #16]
.L55:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L63:
	.align	2
.L62:
	.word	.LC3-(.LPIC9+4)
	.word	.LC0-(.LPIC10+4)
	.word	_ZZ20hb_shape_plan_createE19__PRETTY_FUNCTION__-(.LPIC11+4)
	.word	.LC4-(.LPIC12+4)
	.word	.LC5-(.LPIC13+4)
	.word	_ZZ20hb_shape_plan_createE19__PRETTY_FUNCTION__-(.LPIC14+4)
	.fnend
	.size	hb_shape_plan_create, .-hb_shape_plan_create
	.section	.text.hb_shape_plan_get_empty,"ax",%progbits
	.align	2
	.global	hb_shape_plan_get_empty
	.thumb
	.thumb_func
	.type	hb_shape_plan_get_empty, %function
hb_shape_plan_get_empty:
	.fnstart
.LFB154:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L66
.LPIC15:
	add	r3, pc
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L67:
	.align	2
.L66:
	.word	_ZZ23hb_shape_plan_get_emptyE18_hb_shape_plan_nil-(.LPIC15+4)
	.cantunwind
	.fnend
	.size	hb_shape_plan_get_empty, .-hb_shape_plan_get_empty
	.section	.text.hb_shape_plan_reference,"ax",%progbits
	.align	2
	.global	hb_shape_plan_reference
	.thumb
	.thumb_func
	.type	hb_shape_plan_reference, %function
hb_shape_plan_reference:
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
	bl	_Z19hb_object_referenceI15hb_shape_plan_tEPT_S2_(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_shape_plan_reference, .-hb_shape_plan_reference
	.section	.text.hb_shape_plan_destroy,"ax",%progbits
	.align	2
	.global	hb_shape_plan_destroy
	.thumb
	.thumb_func
	.type	hb_shape_plan_destroy, %function
hb_shape_plan_destroy:
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
	bl	_Z17hb_object_destroyI15hb_shape_plan_tEbPT_(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L71
	b	.L70
.L71:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	cmp	r3, #0
	beq	.L73
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	cmp	r3, #-1
	beq	.L73
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	cmp	r3, #1
	beq	.L73
	ldr	r3, [r7, #4]
	adds	r3, r3, #88
	ldr	r3, [r3]
	mov	r0, r3
	bl	_hb_ot_shaper_shape_plan_data_destroy(PLT)
.L73:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #80]
	mov	r0, r3
	bl	free(PLT)
	ldr	r0, [r7, #4]
	bl	free(PLT)
.L70:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_shape_plan_destroy, .-hb_shape_plan_destroy
	.section	.text.hb_shape_plan_set_user_data,"ax",%progbits
	.align	2
	.global	hb_shape_plan_set_user_data
	.thumb
	.thumb_func
	.type	hb_shape_plan_set_user_data, %function
hb_shape_plan_set_user_data:
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
	bl	_Z23hb_object_set_user_dataI15hb_shape_plan_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_shape_plan_set_user_data, .-hb_shape_plan_set_user_data
	.section	.text.hb_shape_plan_get_user_data,"ax",%progbits
	.align	2
	.global	hb_shape_plan_get_user_data
	.thumb
	.thumb_func
	.type	hb_shape_plan_get_user_data, %function
hb_shape_plan_get_user_data:
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
	bl	_Z23hb_object_get_user_dataI15hb_shape_plan_tEPvPT_P18hb_user_data_key_t(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_shape_plan_get_user_data, .-hb_shape_plan_get_user_data
	.section	.rodata
	.align	2
.LC6:
	.ascii	"num_features=%d shaper_func=%p\000"
	.align	2
.LC7:
	.ascii	"shape_plan->face_unsafe == font->face\000"
	.align	2
.LC8:
	.ascii	"hb_segment_properties_equal (&shape_plan->props, &b"
	.ascii	"uffer->props)\000"
	.section	.text.hb_shape_plan_execute,"ax",%progbits
	.align	2
	.global	hb_shape_plan_execute
	.thumb
	.thumb_func
	.type	hb_shape_plan_execute, %function
hb_shape_plan_execute:
	.fnstart
.LFB159:
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #40
	sub	sp, sp, #40
	.setfp r7, sp, #24
	add	r7, sp, #24
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #72]
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	ldr	r2, .L89
.LPIC16:
	add	r2, pc
	str	r2, [sp, #8]
	ldr	r2, [r7, #24]
	str	r2, [sp, #12]
	str	r3, [sp, #16]
	ldr	r3, .L89+4
.LPIC17:
	add	r3, pc
	mov	r0, r3
	ldr	r1, [r7, #12]
	ldr	r3, .L89+8
.LPIC18:
	add	r3, pc
	mov	r2, r3
	movs	r3, #0
	bl	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z(PLT)
	ldr	r0, [r7, #12]
	bl	_Z18hb_object_is_inertI15hb_shape_plan_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L79
	ldr	r0, [r7, #8]
	bl	_Z18hb_object_is_inertI9hb_font_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L79
	ldr	r0, [r7, #4]
	bl	_Z18hb_object_is_inertI11hb_buffer_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L80
.L79:
	movs	r3, #1
	b	.L81
.L80:
	movs	r3, #0
.L81:
	cmp	r3, #0
	beq	.L82
	movs	r3, #0
	b	.L83
.L82:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #48]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #52]
	cmp	r2, r3
	beq	.L84
	ldr	r3, .L89+12
.LPIC19:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L89+16
.LPIC20:
	add	r3, pc
	mov	r1, r3
	movw	r2, #301
	ldr	r3, .L89+20
.LPIC21:
	add	r3, pc
	bl	__assert_fail(PLT)
.L84:
	ldr	r3, [r7, #12]
	add	r2, r3, #52
	ldr	r3, [r7, #4]
	adds	r3, r3, #60
	mov	r0, r2
	mov	r1, r3
	bl	hb_segment_properties_equal(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L85
	ldr	r3, .L89+24
.LPIC22:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L89+28
.LPIC23:
	add	r3, pc
	mov	r1, r3
	mov	r2, #302
	ldr	r3, .L89+32
.LPIC24:
	add	r3, pc
	bl	__assert_fail(PLT)
.L85:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #72]
	ldr	r3, .L89+36
.LPIC25:
	add	r3, pc
	cmp	r2, r3
	bne	.L86
	ldr	r3, [r7, #12]
	adds	r3, r3, #88
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L87
	ldr	r0, [r7, #8]
	bl	_ZL29hb_ot_shaper_font_data_ensureP9hb_font_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L87
	ldr	r3, [r7, #24]
	str	r3, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	_hb_ot_shape(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L87
	movs	r3, #1
	b	.L88
.L87:
	movs	r3, #0
.L88:
	b	.L83
.L86:
	movs	r3, #0
.L83:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L90:
	.align	2
.L89:
	.word	.LC6-(.LPIC16+4)
	.word	.LC0-(.LPIC17+4)
	.word	_ZZ21hb_shape_plan_executeE19__PRETTY_FUNCTION__-(.LPIC18+4)
	.word	.LC7-(.LPIC19+4)
	.word	.LC5-(.LPIC20+4)
	.word	_ZZ21hb_shape_plan_executeE19__PRETTY_FUNCTION__-(.LPIC21+4)
	.word	.LC8-(.LPIC22+4)
	.word	.LC5-(.LPIC23+4)
	.word	_ZZ21hb_shape_plan_executeE19__PRETTY_FUNCTION__-(.LPIC24+4)
	.word	_hb_ot_shape-(.LPIC25+4)
	.fnend
	.size	hb_shape_plan_execute, .-hb_shape_plan_execute
	.section	.text._ZL33hb_shape_plan_user_features_matchPK15hb_shape_plan_tPK24hb_shape_plan_proposal_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL33hb_shape_plan_user_features_matchPK15hb_shape_plan_tPK24hb_shape_plan_proposal_t, %function
_ZL33hb_shape_plan_user_features_matchPK15hb_shape_plan_tPK24hb_shape_plan_proposal_t:
	.fnstart
.LFB160:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	cmp	r2, r3
	beq	.L92
	movs	r3, #0
	b	.L93
.L92:
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r3, [r3, #28]
	str	r3, [r7, #8]
	b	.L94
.L97:
	ldr	r3, [r7]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #80]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #4
	add	r3, r3, r1
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L95
	ldr	r3, [r7]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #80]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #4
	add	r3, r3, r1
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bne	.L95
	ldr	r3, [r7]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #80]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #4
	add	r3, r3, r1
	ldr	r3, [r3, #8]
	cmp	r2, r3
	bne	.L95
	ldr	r3, [r7]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #80]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #4
	add	r3, r3, r1
	ldr	r3, [r3, #12]
	cmp	r2, r3
	beq	.L96
.L95:
	movs	r3, #0
	b	.L93
.L96:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L94:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L97
	movs	r3, #1
.L93:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZL33hb_shape_plan_user_features_matchPK15hb_shape_plan_tPK24hb_shape_plan_proposal_t, .-_ZL33hb_shape_plan_user_features_matchPK15hb_shape_plan_tPK24hb_shape_plan_proposal_t
	.section	.text._ZL21hb_shape_plan_matchesPK15hb_shape_plan_tPK24hb_shape_plan_proposal_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL21hb_shape_plan_matchesPK15hb_shape_plan_tPK24hb_shape_plan_proposal_t, %function
_ZL21hb_shape_plan_matchesPK15hb_shape_plan_tPK24hb_shape_plan_proposal_t:
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
	ldr	r3, [r7, #4]
	add	r2, r3, #52
	ldr	r3, [r7]
	mov	r0, r2
	mov	r1, r3
	bl	hb_segment_properties_equal(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L99
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	_ZL33hb_shape_plan_user_features_matchPK15hb_shape_plan_tPK24hb_shape_plan_proposal_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L99
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L100
	ldr	r3, [r7]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L101
.L100:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #72]
	ldr	r3, [r7]
	ldr	r3, [r3, #32]
	cmp	r2, r3
	bne	.L99
.L101:
	movs	r3, #1
	b	.L102
.L99:
	movs	r3, #0
.L102:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL21hb_shape_plan_matchesPK15hb_shape_plan_tPK24hb_shape_plan_proposal_t, .-_ZL21hb_shape_plan_matchesPK15hb_shape_plan_tPK24hb_shape_plan_proposal_t
	.section	.text._ZL35hb_non_global_user_features_presentPK12hb_feature_tj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL35hb_non_global_user_features_presentPK12hb_feature_tj, %function
_ZL35hb_non_global_user_features_presentPK12hb_feature_tj:
	.fnstart
.LFB162:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	b	.L105
.L109:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L106
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	cmp	r3, #-1
	beq	.L107
.L106:
	movs	r3, #1
	b	.L108
.L107:
	ldr	r3, [r7]
	subs	r3, r3, #1
	str	r3, [r7]
	ldr	r3, [r7, #4]
	adds	r3, r3, #16
	str	r3, [r7, #4]
.L105:
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L109
	movs	r3, #0
.L108:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZL35hb_non_global_user_features_presentPK12hb_feature_tj, .-_ZL35hb_non_global_user_features_presentPK12hb_feature_tj
	.section	.rodata
	.align	2
.LC9:
	.ascii	"fulfilled from cache\000"
	.align	2
.LC10:
	.ascii	"inserted into cache\000"
	.section	.text.hb_shape_plan_create_cached,"ax",%progbits
	.align	2
	.global	hb_shape_plan_create_cached
	.thumb
	.thumb_func
	.type	hb_shape_plan_create_cached, %function
hb_shape_plan_create_cached:
	.fnstart
.LFB163:
	@ args = 4, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #96
	sub	sp, sp, #96
	.setfp r7, sp, #24
	add	r7, sp, #24
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [sp]
	movs	r3, #0
	str	r3, [sp, #4]
	ldr	r3, .L129
.LPIC26:
	add	r3, pc
	str	r3, [sp, #8]
	ldr	r3, [r7, #12]
	str	r3, [sp, #12]
	ldr	r3, [r7]
	str	r3, [sp, #16]
	ldr	r3, [r7, #88]
	str	r3, [sp, #20]
	ldr	r3, .L129+4
.LPIC27:
	add	r3, pc
	mov	r0, r3
	movs	r1, #0
	ldr	r3, .L129+8
.LPIC28:
	add	r3, pc
	mov	r2, r3
	movs	r3, #0
	bl	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z(PLT)
	add	r3, r7, #16
	movs	r2, #0
	str	r2, [r3]
	adds	r3, r3, #4
	movs	r2, #0
	str	r2, [r3]
	adds	r3, r3, #4
	movs	r2, #0
	str	r2, [r3]
	adds	r3, r3, #4
	movs	r2, #0
	str	r2, [r3]
	adds	r3, r3, #4
	movs	r2, #0
	str	r2, [r3]
	adds	r3, r3, #4
	movs	r2, #0
	str	r2, [r3]
	adds	r3, r3, #4
	movs	r2, #0
	str	r2, [r3]
	adds	r3, r3, #4
	movs	r2, #0
	str	r2, [r3]
	adds	r3, r3, #4
	movs	r2, #0
	str	r2, [r3]
	adds	r3, r3, #4
	ldr	r3, [r7, #8]
	add	r4, r7, #16
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7, #88]
	str	r3, [r7, #36]
	ldr	r3, [r7, #4]
	str	r3, [r7, #40]
	ldr	r3, [r7]
	str	r3, [r7, #44]
	ldr	r3, [r7, #88]
	cmp	r3, #0
	beq	.L111
	ldr	r3, [r7, #88]
	str	r3, [r7, #68]
	b	.L112
.L117:
	ldr	r3, [r7, #68]
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r3, .L129+12
.LPIC29:
	add	r3, pc
	mov	r1, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L113
	ldr	r0, [r7, #12]
	bl	_ZL29hb_ot_shaper_face_data_ensureP9hb_face_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L113
	movs	r3, #1
	b	.L114
.L113:
	movs	r3, #0
.L114:
	cmp	r3, #0
	beq	.L115
	ldr	r3, .L129+16
.LPIC30:
	add	r3, pc
	str	r3, [r7, #48]
	b	.L116
.L115:
	ldr	r3, [r7, #68]
	adds	r3, r3, #4
	str	r3, [r7, #68]
.L112:
	ldr	r3, [r7, #68]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L117
.L116:
	ldr	r3, [r7, #48]
	cmp	r3, #0
	bne	.L118
	bl	hb_shape_plan_get_empty(PLT)
	mov	r3, r0
	b	.L128
.L118:
.L111:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #76]
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	str	r3, [r7, #64]
	b	.L120
.L122:
	ldr	r3, [r7, #64]
	ldr	r2, [r3]
	add	r3, r7, #16
	mov	r0, r2
	mov	r1, r3
	bl	_ZL21hb_shape_plan_matchesPK15hb_shape_plan_tPK24hb_shape_plan_proposal_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L121
	ldr	r3, [r7, #64]
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	ldr	r2, .L129+20
.LPIC31:
	add	r2, pc
	str	r2, [sp, #8]
	ldr	r2, .L129+24
.LPIC32:
	add	r2, pc
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L129+28
.LPIC33:
	add	r3, pc
	mov	r2, r3
	movs	r3, #0
	bl	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z(PLT)
	ldr	r3, [r7, #64]
	ldr	r3, [r3]
	mov	r0, r3
	bl	hb_shape_plan_reference(PLT)
	mov	r3, r0
	b	.L128
.L121:
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #4]
	str	r3, [r7, #64]
.L120:
	ldr	r3, [r7, #64]
	cmp	r3, #0
	bne	.L122
	ldr	r3, [r7, #88]
	str	r3, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	hb_shape_plan_create(PLT)
	mov	r3, r0
	str	r3, [r7, #56]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	_ZL35hb_non_global_user_features_presentPK12hb_feature_tj(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L123
	ldr	r3, [r7, #56]
	b	.L128
.L123:
	movs	r0, #1
	movs	r1, #8
	bl	calloc(PLT)
	mov	r3, r0
	str	r3, [r7, #52]
	ldr	r3, [r7, #52]
	cmp	r3, #0
	bne	.L124
	ldr	r3, [r7, #56]
	b	.L128
.L124:
	ldr	r3, [r7, #52]
	ldr	r2, [r7, #56]
	str	r2, [r3]
	ldr	r3, [r7, #52]
	ldr	r2, [r7, #60]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	adds	r3, r3, #76
	ldr	r2, [r3]
	ldr	r3, [r7, #60]
	cmp	r2, r3
	bne	.L125
	ldr	r3, [r7, #12]
	adds	r3, r3, #76
	ldr	r2, [r7, #52]
	str	r2, [r3]
	movs	r3, #0
	b	.L126
.L125:
	movs	r3, #1
.L126:
	cmp	r3, #0
	beq	.L127
	ldr	r0, [r7, #56]
	bl	hb_shape_plan_destroy(PLT)
	ldr	r0, [r7, #52]
	bl	free(PLT)
	b	.L111
.L127:
	movs	r3, #0
	str	r3, [sp]
	movs	r3, #0
	str	r3, [sp, #4]
	ldr	r3, .L129+32
.LPIC34:
	add	r3, pc
	str	r3, [sp, #8]
	ldr	r3, .L129+36
.LPIC35:
	add	r3, pc
	mov	r0, r3
	ldr	r1, [r7, #56]
	ldr	r3, .L129+40
.LPIC36:
	add	r3, pc
	mov	r2, r3
	movs	r3, #0
	bl	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z(PLT)
	ldr	r0, [r7, #56]
	bl	hb_shape_plan_reference(PLT)
	mov	r3, r0
.L128:
	mov	r0, r3
	adds	r7, r7, #72
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L130:
	.align	2
.L129:
	.word	.LC3-(.LPIC26+4)
	.word	.LC0-(.LPIC27+4)
	.word	_ZZ27hb_shape_plan_create_cachedE19__PRETTY_FUNCTION__-(.LPIC28+4)
	.word	.LC2-(.LPIC29+4)
	.word	_hb_ot_shape-(.LPIC30+4)
	.word	.LC9-(.LPIC31+4)
	.word	.LC0-(.LPIC32+4)
	.word	_ZZ27hb_shape_plan_create_cachedE19__PRETTY_FUNCTION__-(.LPIC33+4)
	.word	.LC10-(.LPIC34+4)
	.word	.LC0-(.LPIC35+4)
	.word	_ZZ27hb_shape_plan_create_cachedE19__PRETTY_FUNCTION__-(.LPIC36+4)
	.fnend
	.size	hb_shape_plan_create_cached, .-hb_shape_plan_create_cached
	.section	.text.hb_shape_plan_get_shaper,"ax",%progbits
	.align	2
	.global	hb_shape_plan_get_shaper
	.thumb
	.thumb_func
	.type	hb_shape_plan_get_shaper, %function
hb_shape_plan_get_shaper:
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
	ldr	r3, [r3, #76]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	hb_shape_plan_get_shaper, .-hb_shape_plan_get_shaper
	.section	.text._ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4initEv,"axG",%progbits,_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4initEv,comdat
	.align	2
	.weak	_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4initEv
	.thumb
	.thumb_func
	.type	_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4initEv, %function
_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4initEv:
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
.LFB168:
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
	bne	.L135
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE6finishEv(PLT)
	b	.L134
.L135:
	ldr	r0, [r7]
	bl	_ZN10hb_mutex_t4lockEv(PLT)
	b	.L137
.L138:
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
.L137:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L138
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE6finishEv(PLT)
	ldr	r0, [r7]
	bl	_ZN10hb_mutex_t6unlockEv(PLT)
.L134:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE6finishERS2_, .-_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE6finishERS2_
	.section	.text._Z18hb_object_is_inertI9hb_face_tEbPKT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z18hb_object_is_inertI9hb_face_tEbPKT_, %function
_Z18hb_object_is_inertI9hb_face_tEbPKT_:
	.fnstart
.LFB172:
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
	.section	.text._Z16hb_object_createI15hb_shape_plan_tEPT_v,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z16hb_object_createI15hb_shape_plan_tEPT_v, %function
_Z16hb_object_createI15hb_shape_plan_tEPT_v:
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
	movs	r0, #1
	movs	r1, #92
	bl	calloc(PLT)
	mov	r3, r0
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L142
	ldr	r3, [r7, #4]
	b	.L143
.L142:
	ldr	r0, [r7, #4]
	bl	_Z14hb_object_initI15hb_shape_plan_tEvPT_(PLT)
	ldr	r0, [r7, #4]
	ldr	r3, .L144
.LPIC37:
	add	r3, pc
	mov	r1, r3
	bl	_Z15hb_object_traceI15hb_shape_plan_tEvPKT_PKc(PLT)
	ldr	r3, [r7, #4]
.L143:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L145:
	.align	2
.L144:
	.word	_ZZ16hb_object_createI15hb_shape_plan_tEPT_vE19__PRETTY_FUNCTION__-(.LPIC37+4)
	.fnend
	.size	_Z16hb_object_createI15hb_shape_plan_tEPT_v, .-_Z16hb_object_createI15hb_shape_plan_tEPT_v
	.section	.text._Z19hb_object_referenceI15hb_shape_plan_tEPT_S2_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z19hb_object_referenceI15hb_shape_plan_tEPT_S2_, %function
_Z19hb_object_referenceI15hb_shape_plan_tEPT_S2_:
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
	ldr	r0, [r7, #4]
	ldr	r3, .L152
.LPIC38:
	add	r3, pc
	mov	r1, r3
	bl	_Z15hb_object_traceI15hb_shape_plan_tEvPKT_PKc(PLT)
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L147
	ldr	r0, [r7, #4]
	bl	_Z18hb_object_is_inertI15hb_shape_plan_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L148
.L147:
	movs	r3, #1
	b	.L149
.L148:
	movs	r3, #0
.L149:
	cmp	r3, #0
	beq	.L150
	ldr	r3, [r7, #4]
	b	.L151
.L150:
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN20hb_reference_count_t3incEv(PLT)
	ldr	r3, [r7, #4]
.L151:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L153:
	.align	2
.L152:
	.word	_ZZ19hb_object_referenceI15hb_shape_plan_tEPT_S2_E19__PRETTY_FUNCTION__-(.LPIC38+4)
	.fnend
	.size	_Z19hb_object_referenceI15hb_shape_plan_tEPT_S2_, .-_Z19hb_object_referenceI15hb_shape_plan_tEPT_S2_
	.section	.text._Z17hb_object_destroyI15hb_shape_plan_tEbPT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z17hb_object_destroyI15hb_shape_plan_tEbPT_, %function
_Z17hb_object_destroyI15hb_shape_plan_tEbPT_:
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
	ldr	r3, .L161
.LPIC39:
	add	r3, pc
	mov	r1, r3
	bl	_Z15hb_object_traceI15hb_shape_plan_tEvPKT_PKc(PLT)
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L155
	ldr	r0, [r7, #4]
	bl	_Z18hb_object_is_inertI15hb_shape_plan_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L156
.L155:
	movs	r3, #1
	b	.L157
.L156:
	movs	r3, #0
.L157:
	cmp	r3, #0
	beq	.L158
	movs	r3, #0
	b	.L159
.L158:
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
	beq	.L160
	movs	r3, #0
	b	.L159
.L160:
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN20hb_reference_count_t6finishEv(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZN20hb_user_data_array_t6finishEv(PLT)
	movs	r3, #1
.L159:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L162:
	.align	2
.L161:
	.word	_ZZ17hb_object_destroyI15hb_shape_plan_tEbPT_E19__PRETTY_FUNCTION__-(.LPIC39+4)
	.fnend
	.size	_Z17hb_object_destroyI15hb_shape_plan_tEbPT_, .-_Z17hb_object_destroyI15hb_shape_plan_tEbPT_
	.section	.text._Z23hb_object_set_user_dataI15hb_shape_plan_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z23hb_object_set_user_dataI15hb_shape_plan_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei, %function
_Z23hb_object_set_user_dataI15hb_shape_plan_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei:
	.fnstart
.LFB176:
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
	beq	.L164
	ldr	r0, [r7, #12]
	bl	_Z18hb_object_is_inertI15hb_shape_plan_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L165
.L164:
	movs	r3, #1
	b	.L166
.L165:
	movs	r3, #0
.L166:
	cmp	r3, #0
	beq	.L167
	movs	r3, #0
	b	.L168
.L167:
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
.L168:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_Z23hb_object_set_user_dataI15hb_shape_plan_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei, .-_Z23hb_object_set_user_dataI15hb_shape_plan_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei
	.section	.text._Z23hb_object_get_user_dataI15hb_shape_plan_tEPvPT_P18hb_user_data_key_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z23hb_object_get_user_dataI15hb_shape_plan_tEPvPT_P18hb_user_data_key_t, %function
_Z23hb_object_get_user_dataI15hb_shape_plan_tEPvPT_P18hb_user_data_key_t:
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
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L170
	ldr	r0, [r7, #4]
	bl	_Z18hb_object_is_inertI15hb_shape_plan_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L171
.L170:
	movs	r3, #1
	b	.L172
.L171:
	movs	r3, #0
.L172:
	cmp	r3, #0
	beq	.L173
	movs	r3, #0
	b	.L174
.L173:
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN20hb_user_data_array_t3getEP18hb_user_data_key_t(PLT)
	mov	r3, r0
.L174:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_Z23hb_object_get_user_dataI15hb_shape_plan_tEPvPT_P18hb_user_data_key_t, .-_Z23hb_object_get_user_dataI15hb_shape_plan_tEPvPT_P18hb_user_data_key_t
	.section	.text._Z18hb_object_is_inertI15hb_shape_plan_tEbPKT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z18hb_object_is_inertI15hb_shape_plan_tEbPKT_, %function
_Z18hb_object_is_inertI15hb_shape_plan_tEbPKT_:
	.fnstart
.LFB178:
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
	.size	_Z18hb_object_is_inertI15hb_shape_plan_tEbPKT_, .-_Z18hb_object_is_inertI15hb_shape_plan_tEbPKT_
	.section	.text._Z18hb_object_is_inertI9hb_font_tEbPKT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z18hb_object_is_inertI9hb_font_tEbPKT_, %function
_Z18hb_object_is_inertI9hb_font_tEbPKT_:
	.fnstart
.LFB179:
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
	.section	.text._Z18hb_object_is_inertI11hb_buffer_tEbPKT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z18hb_object_is_inertI11hb_buffer_tEbPKT_, %function
_Z18hb_object_is_inertI11hb_buffer_tEbPKT_:
	.fnstart
.LFB180:
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
	.section	.text._ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4initEv,"axG",%progbits,_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4initEv,comdat
	.align	2
	.weak	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4initEv
	.thumb
	.thumb_func
	.type	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4initEv, %function
_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4initEv:
	.fnstart
.LFB181:
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
.LFB182:
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
	beq	.L183
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r0, r3
	bl	free(PLT)
.L183:
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
.LFB183:
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
.LFB184:
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
	.section	.text._Z14hb_object_initI15hb_shape_plan_tEvPT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z14hb_object_initI15hb_shape_plan_tEvPT_, %function
_Z14hb_object_initI15hb_shape_plan_tEvPT_:
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
	.size	_Z14hb_object_initI15hb_shape_plan_tEvPT_, .-_Z14hb_object_initI15hb_shape_plan_tEvPT_
	.section	.rodata
	.align	2
.LC11:
	.ascii	"OBJECT\000"
	.align	2
.LC12:
	.ascii	"%s refcount=%d\000"
	.section	.text._Z15hb_object_traceI15hb_shape_plan_tEvPKT_PKc,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z15hb_object_traceI15hb_shape_plan_tEvPKT_PKc, %function
_Z15hb_object_traceI15hb_shape_plan_tEvPKT_PKc:
	.fnstart
.LFB186:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #24
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L189
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	b	.L190
.L189:
	movs	r3, #0
.L190:
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	ldr	r2, .L191
.LPIC40:
	add	r2, pc
	str	r2, [sp, #8]
	ldr	r2, [r7]
	str	r2, [sp, #12]
	str	r3, [sp, #16]
	ldr	r3, .L191+4
.LPIC41:
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
.L192:
	.align	2
.L191:
	.word	.LC12-(.LPIC40+4)
	.word	.LC11-(.LPIC41+4)
	.cantunwind
	.fnend
	.size	_Z15hb_object_traceI15hb_shape_plan_tEvPKT_PKc, .-_Z15hb_object_traceI15hb_shape_plan_tEvPKT_PKc
	.section	.rodata._ZZL18hb_shape_plan_planP15hb_shape_plan_tPK12hb_feature_tjPKPKcE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZL18hb_shape_plan_planP15hb_shape_plan_tPK12hb_feature_tjPKPKcE19__PRETTY_FUNCTION__, %object
	.size	_ZZL18hb_shape_plan_planP15hb_shape_plan_tPK12hb_feature_tjPKPKcE19__PRETTY_FUNCTION__, 97
_ZZL18hb_shape_plan_planP15hb_shape_plan_tPK12hb_feature_tjPKPKcE19__PRETTY_FUNCTION__:
	.ascii	"void hb_shape_plan_plan(hb_shape_plan_t*, const hb_"
	.ascii	"feature_t*, unsigned int, const char* const*)\000"
	.section	.rodata._ZZ20hb_shape_plan_createE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZ20hb_shape_plan_createE19__PRETTY_FUNCTION__, %object
	.size	_ZZ20hb_shape_plan_createE19__PRETTY_FUNCTION__, 137
_ZZ20hb_shape_plan_createE19__PRETTY_FUNCTION__:
	.ascii	"hb_shape_plan_t* hb_shape_plan_create(hb_face_t*, c"
	.ascii	"onst hb_segment_properties_t*, const hb_feature_t*,"
	.ascii	" unsigned int, const char* const*)\000"
	.section	.rodata._ZZ16hb_object_createI15hb_shape_plan_tEPT_vE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZ16hb_object_createI15hb_shape_plan_tEPT_vE19__PRETTY_FUNCTION__, %object
	.size	_ZZ16hb_object_createI15hb_shape_plan_tEPT_vE19__PRETTY_FUNCTION__, 55
_ZZ16hb_object_createI15hb_shape_plan_tEPT_vE19__PRETTY_FUNCTION__:
	.ascii	"Type* hb_object_create() [with Type = hb_shape_plan"
	.ascii	"_t]\000"
	.section	.rodata._ZZ23hb_shape_plan_get_emptyE18_hb_shape_plan_nil,"a",%progbits
	.align	2
	.type	_ZZ23hb_shape_plan_get_emptyE18_hb_shape_plan_nil, %object
	.size	_ZZ23hb_shape_plan_get_emptyE18_hb_shape_plan_nil, 92
_ZZ23hb_shape_plan_get_emptyE18_hb_shape_plan_nil:
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	0
	.space	24
	.word	1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-1
	.section	.rodata._ZZ19hb_object_referenceI15hb_shape_plan_tEPT_S2_E19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZ19hb_object_referenceI15hb_shape_plan_tEPT_S2_E19__PRETTY_FUNCTION__, %object
	.size	_ZZ19hb_object_referenceI15hb_shape_plan_tEPT_S2_E19__PRETTY_FUNCTION__, 63
_ZZ19hb_object_referenceI15hb_shape_plan_tEPT_S2_E19__PRETTY_FUNCTION__:
	.ascii	"Type* hb_object_reference(Type*) [with Type = hb_sh"
	.ascii	"ape_plan_t]\000"
	.section	.rodata._ZZ17hb_object_destroyI15hb_shape_plan_tEbPT_E19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZ17hb_object_destroyI15hb_shape_plan_tEbPT_E19__PRETTY_FUNCTION__, %object
	.size	_ZZ17hb_object_destroyI15hb_shape_plan_tEbPT_E19__PRETTY_FUNCTION__, 60
_ZZ17hb_object_destroyI15hb_shape_plan_tEbPT_E19__PRETTY_FUNCTION__:
	.ascii	"bool hb_object_destroy(Type*) [with Type = hb_shape"
	.ascii	"_plan_t]\000"
	.section	.rodata._ZZ21hb_shape_plan_executeE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZ21hb_shape_plan_executeE19__PRETTY_FUNCTION__, %object
	.size	_ZZ21hb_shape_plan_executeE19__PRETTY_FUNCTION__, 111
_ZZ21hb_shape_plan_executeE19__PRETTY_FUNCTION__:
	.ascii	"hb_bool_t hb_shape_plan_execute(hb_shape_plan_t*, h"
	.ascii	"b_font_t*, hb_buffer_t*, const hb_feature_t*, unsig"
	.ascii	"ned int)\000"
	.section	.rodata._ZZ27hb_shape_plan_create_cachedE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZ27hb_shape_plan_create_cachedE19__PRETTY_FUNCTION__, %object
	.size	_ZZ27hb_shape_plan_create_cachedE19__PRETTY_FUNCTION__, 144
_ZZ27hb_shape_plan_create_cachedE19__PRETTY_FUNCTION__:
	.ascii	"hb_shape_plan_t* hb_shape_plan_create_cached(hb_fac"
	.ascii	"e_t*, const hb_segment_properties_t*, const hb_feat"
	.ascii	"ure_t*, unsigned int, const char* const*)\000"
	.hidden	_ZN20hb_user_data_array_t3getEP18hb_user_data_key_t
	.hidden	_ZN20hb_user_data_array_t3setEP18hb_user_data_key_tPvPFvS2_Ei
	.hidden	_hb_ot_shaper_shape_plan_data_destroy
	.hidden	_hb_ot_shape
	.hidden	_hb_ot_shaper_shape_plan_data_create
	.hidden	_Z15_hb_shapers_getv
	.hidden	_hb_ot_shaper_font_data_destroy
	.hidden	_hb_ot_shaper_font_data_create
	.hidden	_hb_ot_shaper_face_data_destroy
	.hidden	_hb_ot_shaper_face_data_create
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
