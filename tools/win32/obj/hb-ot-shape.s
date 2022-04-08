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
	.file	"hb-ot-shape.cc"
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
	.section	.text._ZN9hb_font_t9has_glyphEj,"axG",%progbits,_ZN9hb_font_t9has_glyphEj,comdat
	.align	2
	.weak	_ZN9hb_font_t9has_glyphEj
	.thumb
	.thumb_func
	.type	_ZN9hb_font_t9has_glyphEj, %function
_ZN9hb_font_t9has_glyphEj:
	.fnstart
.LFB97:
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
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	movs	r2, #0
	bl	_ZN9hb_font_t9get_glyphEjjPj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN9hb_font_t9has_glyphEj, .-_ZN9hb_font_t9has_glyphEj
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
	bne	.L19
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_ZN9hb_font_t19get_glyph_h_advanceEj(PLT)
	mov	r2, r0
	ldr	r3, [r7]
	str	r2, [r3]
	ldr	r3, [r7, #24]
	movs	r2, #0
	str	r2, [r3]
	b	.L18
.L19:
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_ZN9hb_font_t19get_glyph_v_advanceEj(PLT)
	mov	r2, r0
	ldr	r3, [r7, #24]
	str	r2, [r3]
.L18:
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
	bne	.L23
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7]
	ldr	r3, [r7, #40]
	bl	_ZN9hb_font_t18get_glyph_h_originEjPiS0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L24
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7]
	ldr	r3, [r7, #40]
	bl	_ZN9hb_font_t18get_glyph_v_originEjPiS0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L24
	movs	r3, #1
	b	.L25
.L24:
	movs	r3, #0
.L25:
	cmp	r3, #0
	beq	.L26
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
.L26:
	b	.L22
.L23:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7]
	ldr	r3, [r7, #40]
	bl	_ZN9hb_font_t18get_glyph_v_originEjPiS0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L28
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7]
	ldr	r3, [r7, #40]
	bl	_ZN9hb_font_t18get_glyph_h_originEjPiS0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L28
	movs	r3, #1
	b	.L29
.L28:
	movs	r3, #0
.L29:
	cmp	r3, #0
	beq	.L22
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
.L22:
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
	.section	.text._ZN18hb_unicode_funcs_t15combining_classEj,"axG",%progbits,_ZN18hb_unicode_funcs_t15combining_classEj,comdat
	.align	2
	.weak	_ZN18hb_unicode_funcs_t15combining_classEj
	.thumb
	.thumb_func
	.type	_ZN18hb_unicode_funcs_t15combining_classEj, %function
_ZN18hb_unicode_funcs_t15combining_classEj:
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
	.section	.text._ZN18hb_unicode_funcs_t16general_categoryEj,"axG",%progbits,_ZN18hb_unicode_funcs_t16general_categoryEj,comdat
	.align	2
	.weak	_ZN18hb_unicode_funcs_t16general_categoryEj
	.thumb
	.thumb_func
	.type	_ZN18hb_unicode_funcs_t16general_categoryEj, %function
_ZN18hb_unicode_funcs_t16general_categoryEj:
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
	.section	.text._ZN18hb_unicode_funcs_t24modified_combining_classEj,"axG",%progbits,_ZN18hb_unicode_funcs_t24modified_combining_classEj,comdat
	.align	2
	.weak	_ZN18hb_unicode_funcs_t24modified_combining_classEj
	.thumb
	.thumb_func
	.type	_ZN18hb_unicode_funcs_t24modified_combining_classEj, %function
_ZN18hb_unicode_funcs_t24modified_combining_classEj:
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
	ldr	r2, [r7]
	movw	r3, #4151
	cmp	r2, r3
	bne	.L39
	movw	r3, #4154
	str	r3, [r7]
.L39:
	ldr	r3, [r7]
	cmp	r3, #6752
	bne	.L40
	movs	r3, #254
	b	.L41
.L40:
	ldr	r2, [r7]
	movw	r3, #4038
	cmp	r2, r3
	bne	.L42
	movs	r3, #254
	b	.L41
.L42:
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	_ZN18hb_unicode_funcs_t15combining_classEj(PLT)
	mov	r3, r0
	ldr	r2, .L43
.LPIC0:
	add	r2, pc
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
.L41:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L44:
	.align	2
.L43:
	.word	_hb_modified_combining_class-(.LPIC0+4)
	.fnend
	.size	_ZN18hb_unicode_funcs_t24modified_combining_classEj, .-_ZN18hb_unicode_funcs_t24modified_combining_classEj
	.section	.text._ZN18hb_unicode_funcs_t20is_default_ignorableEj,"axG",%progbits,_ZN18hb_unicode_funcs_t20is_default_ignorableEj,comdat
	.align	2
	.weak	_ZN18hb_unicode_funcs_t20is_default_ignorableEj
	.thumb
	.thumb_func
	.type	_ZN18hb_unicode_funcs_t20is_default_ignorableEj, %function
_ZN18hb_unicode_funcs_t20is_default_ignorableEj:
	.fnstart
.LFB131:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #32
	sub	sp, sp, #32
	.setfp r7, sp, #16
	add	r7, sp, #16
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	lsrs	r3, r3, #16
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L46
	ldr	r3, [r7, #4]
	lsrs	r3, r3, #8
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #23
	beq	.L48
	cmp	r3, #23
	bhi	.L49
	cmp	r3, #3
	beq	.L50
	cmp	r3, #6
	beq	.L51
	cmp	r3, #0
	beq	.L52
	b	.L47
.L49:
	cmp	r3, #32
	beq	.L53
	cmp	r3, #32
	bhi	.L54
	cmp	r3, #24
	beq	.L55
	b	.L47
.L54:
	cmp	r3, #254
	beq	.L56
	cmp	r3, #255
	beq	.L57
	b	.L47
.L52:
	ldr	r3, [r7, #4]
	cmp	r3, #173
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	b	.L58
.L50:
	ldr	r2, [r7, #4]
	movw	r3, #847
	cmp	r2, r3
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	b	.L58
.L51:
	ldr	r2, [r7, #4]
	movw	r3, #1564
	cmp	r2, r3
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	b	.L58
.L48:
	ldr	r0, [r7, #4]
	movw	r1, #6068
	movw	r2, #6069
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	b	.L58
.L55:
	ldr	r0, [r7, #4]
	movw	r1, #6155
	movw	r2, #6158
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	b	.L58
.L53:
	movw	r3, #8238
	str	r3, [sp]
	movw	r3, #8288
	str	r3, [sp, #4]
	movw	r3, #8303
	str	r3, [sp, #8]
	ldr	r0, [r7, #4]
	movw	r1, #8203
	movw	r2, #8207
	movw	r3, #8234
	bl	_Z12hb_in_rangesIjEbT_S0_S0_S0_S0_S0_S0_(PLT)
	mov	r3, r0
	b	.L58
.L56:
	ldr	r0, [r7, #4]
	mov	r1, #65024
	movw	r2, #65039
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L59
	ldr	r2, [r7, #4]
	movw	r3, #65279
	cmp	r2, r3
	bne	.L60
.L59:
	movs	r3, #1
	b	.L61
.L60:
	movs	r3, #0
.L61:
	b	.L58
.L57:
	ldr	r0, [r7, #4]
	movw	r1, #65520
	movw	r2, #65528
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	b	.L58
.L47:
	movs	r3, #0
	b	.L58
.L46:
	ldr	r3, [r7, #12]
	cmp	r3, #1
	beq	.L63
	cmp	r3, #14
	beq	.L64
	b	.L65
.L63:
	movw	r3, #53626
	movt	r3, 1
	str	r3, [sp]
	ldr	r0, [r7, #4]
	movw	r1, #48288
	movt	r1, 1
	movw	r2, #48291
	movt	r2, 1
	movw	r3, #53619
	movt	r3, 1
	bl	_Z12hb_in_rangesIjEbT_S0_S0_S0_S0_(PLT)
	mov	r3, r0
	b	.L58
.L64:
	ldr	r0, [r7, #4]
	mov	r1, #917504
	movw	r2, #4095
	movt	r2, 14
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	b	.L58
.L65:
	movs	r3, #0
.L58:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN18hb_unicode_funcs_t20is_default_ignorableEj, .-_ZN18hb_unicode_funcs_t20is_default_ignorableEj
	.section	.text._ZN11hb_buffer_t3curEj,"axG",%progbits,_ZN11hb_buffer_t3curEj,comdat
	.align	2
	.weak	_ZN11hb_buffer_t3curEj
	.thumb
	.thumb_func
	.type	_ZN11hb_buffer_t3curEj, %function
_ZN11hb_buffer_t3curEj:
	.fnstart
.LFB133:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
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
	add	r3, r3, r1
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN11hb_buffer_t3curEj, .-_ZN11hb_buffer_t3curEj
	.section	.text._ZN11hb_buffer_t10next_glyphEv,"axG",%progbits,_ZN11hb_buffer_t10next_glyphEv,comdat
	.align	2
	.weak	_ZN11hb_buffer_t10next_glyphEv
	.thumb
	.thumb_func
	.type	_ZN11hb_buffer_t10next_glyphEv, %function
_ZN11hb_buffer_t10next_glyphEv:
	.fnstart
.LFB143:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #81]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L69
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #104]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	cmp	r2, r3
	bne	.L70
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #92]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	cmp	r2, r3
	beq	.L71
.L70:
	ldr	r0, [r7, #4]
	movs	r1, #1
	movs	r2, #1
	bl	_ZN11hb_buffer_t13make_room_forEjj(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L72
	b	.L68
.L72:
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
.L71:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #92]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #92]
.L69:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #84]
.L68:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.fnend
	.size	_ZN11hb_buffer_t10next_glyphEv, .-_ZN11hb_buffer_t10next_glyphEv
	.section	.text._ZN11hb_buffer_t11reset_masksEj,"axG",%progbits,_ZN11hb_buffer_t11reset_masksEj,comdat
	.align	2
	.weak	_ZN11hb_buffer_t11reset_masksEj
	.thumb
	.thumb_func
	.type	_ZN11hb_buffer_t11reset_masksEj, %function
_ZN11hb_buffer_t11reset_masksEj:
	.fnstart
.LFB145:
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
	b	.L75
.L76:
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #100]
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r2, [r7]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L75:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #88]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bhi	.L76
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN11hb_buffer_t11reset_masksEj, .-_ZN11hb_buffer_t11reset_masksEj
	.section	.text._ZN11hb_ot_map_t13feature_map_t3cmpEPKS0_S2_,"axG",%progbits,_ZN11hb_ot_map_t13feature_map_t3cmpEPKS0_S2_,comdat
	.align	2
	.weak	_ZN11hb_ot_map_t13feature_map_t3cmpEPKS0_S2_
	.thumb
	.thumb_func
	.type	_ZN11hb_ot_map_t13feature_map_t3cmpEPKS0_S2_, %function
_ZN11hb_ot_map_t13feature_map_t3cmpEPKS0_S2_:
	.fnstart
.LFB150:
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
	bcc	.L78
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3]
	cmp	r2, r3
	bls	.L79
	movs	r3, #1
	b	.L81
.L79:
	movs	r3, #0
	b	.L81
.L78:
	mov	r3, #-1
.L81:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN11hb_ot_map_t13feature_map_t3cmpEPKS0_S2_, .-_ZN11hb_ot_map_t13feature_map_t3cmpEPKS0_S2_
	.section	.text._ZN11hb_ot_map_tC2Ev,"axG",%progbits,_ZN11hb_ot_map_tC5Ev,comdat
	.align	2
	.weak	_ZN11hb_ot_map_tC2Ev
	.thumb
	.thumb_func
	.type	_ZN11hb_ot_map_tC2Ev, %function
_ZN11hb_ot_map_tC2Ev:
	.fnstart
.LFB153:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	movs	r1, #0
	mov	r2, #940
	bl	memset(PLT)
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN11hb_ot_map_tC2Ev, .-_ZN11hb_ot_map_tC2Ev
	.weak	_ZN11hb_ot_map_tC1Ev
	.thumb_set _ZN11hb_ot_map_tC1Ev,_ZN11hb_ot_map_tC2Ev
	.section	.text._ZNK11hb_ot_map_t15get_global_maskEv,"axG",%progbits,_ZNK11hb_ot_map_t15get_global_maskEv,comdat
	.align	2
	.weak	_ZNK11hb_ot_map_t15get_global_maskEv
	.thumb
	.thumb_func
	.type	_ZNK11hb_ot_map_t15get_global_maskEv, %function
_ZNK11hb_ot_map_t15get_global_maskEv:
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
	ldr	r3, [r3, #12]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNK11hb_ot_map_t15get_global_maskEv, .-_ZNK11hb_ot_map_t15get_global_maskEv
	.section	.text._ZNK11hb_ot_map_t8get_maskEjPj,"axG",%progbits,_ZNK11hb_ot_map_t8get_maskEjPj,comdat
	.align	2
	.weak	_ZNK11hb_ot_map_t8get_maskEjPj
	.thumb
	.thumb_func
	.type	_ZNK11hb_ot_map_t8get_maskEjPj, %function
_ZNK11hb_ot_map_t8get_maskEjPj:
	.fnstart
.LFB156:
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
	add	r2, r3, #16
	add	r3, r7, #8
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK21hb_prealloced_array_tIN11hb_ot_map_t13feature_map_tELj8EE7bsearchIjEEPKS1_PT_(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L89
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L90
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #20]
	b	.L91
.L90:
	movs	r3, #0
.L91:
	ldr	r2, [r7, #4]
	str	r3, [r2]
.L89:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L92
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #24]
	b	.L93
.L92:
	movs	r3, #0
.L93:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK11hb_ot_map_t8get_maskEjPj, .-_ZNK11hb_ot_map_t8get_maskEjPj
	.section	.text._ZNK11hb_ot_map_t10get_1_maskEj,"axG",%progbits,_ZNK11hb_ot_map_t10get_1_maskEj,comdat
	.align	2
	.weak	_ZNK11hb_ot_map_t10get_1_maskEj
	.thumb
	.thumb_func
	.type	_ZNK11hb_ot_map_t10get_1_maskEj, %function
_ZNK11hb_ot_map_t10get_1_maskEj:
	.fnstart
.LFB158:
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
	add	r2, r3, #16
	mov	r3, r7
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK21hb_prealloced_array_tIN11hb_ot_map_t13feature_map_tELj8EE7bsearchIjEEPKS1_PT_(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L96
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	b	.L97
.L96:
	movs	r3, #0
.L97:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK11hb_ot_map_t10get_1_maskEj, .-_ZNK11hb_ot_map_t10get_1_maskEj
	.section	.text._ZN11hb_ot_map_t6finishEv,"axG",%progbits,_ZN11hb_ot_map_t6finishEv,comdat
	.align	2
	.weak	_ZN11hb_ot_map_t6finishEv
	.thumb
	.thumb_func
	.type	_ZN11hb_ot_map_t6finishEv, %function
_ZN11hb_ot_map_t6finishEv:
	.fnstart
.LFB162:
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
	adds	r3, r3, #16
	mov	r0, r3
	bl	_ZN21hb_prealloced_array_tIN11hb_ot_map_t13feature_map_tELj8EE6finishEv(PLT)
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L100
.L101:
	ldr	r3, [r7, #12]
	mov	r2, #268
	mul	r3, r2, r3
	add	r3, r3, #312
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZN21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EE6finishEv(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #44
	mul	r3, r2, r3
	add	r3, r3, #848
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZN21hb_prealloced_array_tIN11hb_ot_map_t11stage_map_tELj4EE6finishEv(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L100:
	ldr	r3, [r7, #12]
	cmp	r3, #1
	bls	.L101
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11hb_ot_map_t6finishEv, .-_ZN11hb_ot_map_t6finishEv
	.section	.text._Zor25hb_ot_map_feature_flags_tS_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Zor25hb_ot_map_feature_flags_tS_, %function
_Zor25hb_ot_map_feature_flags_tS_:
	.fnstart
.LFB163:
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
	orrs	r3, r3, r2
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_Zor25hb_ot_map_feature_flags_tS_, .-_Zor25hb_ot_map_feature_flags_tS_
	.section	.text._ZN19hb_ot_map_builder_t23add_global_bool_featureEj,"axG",%progbits,_ZN19hb_ot_map_builder_t23add_global_bool_featureEj,comdat
	.align	2
	.weak	_ZN19hb_ot_map_builder_t23add_global_bool_featureEj
	.thumb
	.thumb_func
	.type	_ZN19hb_ot_map_builder_t23add_global_bool_featureEj, %function
_ZN19hb_ot_map_builder_t23add_global_bool_featureEj:
	.fnstart
.LFB168:
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
	movs	r2, #1
	movs	r3, #1
	bl	_ZN19hb_ot_map_builder_t11add_featureEjj25hb_ot_map_feature_flags_t(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN19hb_ot_map_builder_t23add_global_bool_featureEj, .-_ZN19hb_ot_map_builder_t23add_global_bool_featureEj
	.section	.text._ZN19hb_ot_map_builder_t6finishEv,"axG",%progbits,_ZN19hb_ot_map_builder_t6finishEv,comdat
	.align	2
	.weak	_ZN19hb_ot_map_builder_t6finishEv
	.thumb
	.thumb_func
	.type	_ZN19hb_ot_map_builder_t6finishEv, %function
_ZN19hb_ot_map_builder_t6finishEv:
	.fnstart
.LFB171:
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
	adds	r3, r3, #60
	mov	r0, r3
	bl	_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EE6finishEv(PLT)
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L106
.L107:
	ldr	r3, [r7, #12]
	movs	r2, #76
	mul	r3, r2, r3
	add	r3, r3, #968
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t12stage_info_tELj8EE6finishEv(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L106:
	ldr	r3, [r7, #12]
	cmp	r3, #1
	bls	.L107
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN19hb_ot_map_builder_t6finishEv, .-_ZN19hb_ot_map_builder_t6finishEv
	.section	.text._ZN8hb_set_t4initEv,"axG",%progbits,_ZN8hb_set_t4initEv,comdat
	.align	2
	.weak	_ZN8hb_set_t4initEv
	.thumb
	.thumb_func
	.type	_ZN8hb_set_t4initEv, %function
_ZN8hb_set_t4initEv:
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
	bl	_Z14hb_object_initI8hb_set_tEvPT_(PLT)
	ldr	r0, [r7, #4]
	bl	_ZN8hb_set_t5clearEv(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN8hb_set_t4initEv, .-_ZN8hb_set_t4initEv
	.section	.text._ZN8hb_set_t5clearEv,"axG",%progbits,_ZN8hb_set_t5clearEv,comdat
	.align	2
	.weak	_ZN8hb_set_t5clearEv
	.thumb
	.thumb_func
	.type	_ZN8hb_set_t5clearEv, %function
_ZN8hb_set_t5clearEv:
	.fnstart
.LFB187:
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
	beq	.L110
	b	.L109
.L110:
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #44]
	ldr	r3, [r7, #4]
	adds	r3, r3, #48
	mov	r0, r3
	movs	r1, #0
	mov	r2, #8192
	bl	memset(PLT)
.L109:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN8hb_set_t5clearEv, .-_ZN8hb_set_t5clearEv
	.section	.text._ZN8hb_set_t3addEj,"axG",%progbits,_ZN8hb_set_t3addEj,comdat
	.align	2
	.weak	_ZN8hb_set_t3addEj
	.thumb
	.thumb_func
	.type	_ZN8hb_set_t3addEj, %function
_ZN8hb_set_t3addEj:
	.fnstart
.LFB189:
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
	beq	.L113
	b	.L112
.L113:
	ldr	r3, [r7]
	cmp	r3, #-1
	bne	.L115
	b	.L112
.L115:
	ldr	r3, [r7]
	cmp	r3, #65536
	bcc	.L116
	b	.L112
.L116:
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
.L112:
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZN8hb_set_t3addEj, .-_ZN8hb_set_t3addEj
	.section	.text._ZNK8hb_set_t8is_equalEPKS_,"axG",%progbits,_ZNK8hb_set_t8is_equalEPKS_,comdat
	.align	2
	.weak	_ZNK8hb_set_t8is_equalEPKS_
	.thumb
	.thumb_func
	.type	_ZNK8hb_set_t8is_equalEPKS_, %function
_ZNK8hb_set_t8is_equalEPKS_:
	.fnstart
.LFB195:
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
	b	.L118
.L121:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	adds	r2, r2, #12
	ldr	r2, [r3, r2, lsl #2]
	ldr	r3, [r7]
	ldr	r1, [r7, #12]
	adds	r1, r1, #12
	ldr	r3, [r3, r1, lsl #2]
	cmp	r2, r3
	beq	.L119
	movs	r3, #0
	b	.L120
.L119:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L118:
	ldr	r3, [r7, #12]
	cmp	r3, #2048
	bcc	.L121
	movs	r3, #1
.L120:
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
.LFB196:
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
	beq	.L123
	b	.L122
.L123:
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L125
.L126:
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
.L125:
	ldr	r3, [r7, #12]
	cmp	r3, #2048
	bcc	.L126
.L122:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN8hb_set_t3setEPKS_, .-_ZN8hb_set_t3setEPKS_
	.section	.text._ZN8hb_set_t3eltEj,"axG",%progbits,_ZN8hb_set_t3eltEj,comdat
	.align	2
	.weak	_ZN8hb_set_t3eltEj
	.thumb
	.thumb_func
	.type	_ZN8hb_set_t3eltEj, %function
_ZN8hb_set_t3eltEj:
	.fnstart
.LFB207:
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
	.section	.text._ZNK8hb_set_t4maskEj,"axG",%progbits,_ZNK8hb_set_t4maskEj,comdat
	.align	2
	.weak	_ZNK8hb_set_t4maskEj
	.thumb
	.thumb_func
	.type	_ZNK8hb_set_t4maskEj, %function
_ZNK8hb_set_t4maskEj:
	.fnstart
.LFB209:
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
	.section	.text._ZL32_hb_glyph_info_set_unicode_propsP15hb_glyph_info_tP18hb_unicode_funcs_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL32_hb_glyph_info_set_unicode_propsP15hb_glyph_info_tP18hb_unicode_funcs_t, %function
_ZL32_hb_glyph_info_set_unicode_propsP15hb_glyph_info_tP18hb_unicode_funcs_t:
	.fnstart
.LFB212:
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
	ldr	r3, [r3]
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZN18hb_unicode_funcs_t16general_categoryEj(PLT)
	mov	r3, r0
	uxtb	r4, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZN18hb_unicode_funcs_t20is_default_ignorableEj(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L132
	movs	r3, #128
	b	.L133
.L132:
	movs	r3, #0
.L133:
	orrs	r3, r3, r4
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	ldr	r1, [r3]
	movw	r3, #8204
	cmp	r1, r3
	bne	.L134
	movs	r3, #64
	b	.L135
.L134:
	movs	r3, #0
.L135:
	orrs	r3, r3, r2
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	ldr	r1, [r3]
	movw	r3, #8205
	cmp	r1, r3
	bne	.L136
	movs	r3, #32
	b	.L137
.L136:
	movs	r3, #0
.L137:
	orrs	r3, r3, r2
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZN18hb_unicode_funcs_t24modified_combining_classEj(PLT)
	mov	r3, r0
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3, #17]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZL32_hb_glyph_info_set_unicode_propsP15hb_glyph_info_tP18hb_unicode_funcs_t, .-_ZL32_hb_glyph_info_set_unicode_propsP15hb_glyph_info_tP18hb_unicode_funcs_t
	.section	.text._ZL35_hb_glyph_info_get_general_categoryPK15hb_glyph_info_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL35_hb_glyph_info_get_general_categoryPK15hb_glyph_info_t, %function
_ZL35_hb_glyph_info_get_general_categoryPK15hb_glyph_info_t:
	.fnstart
.LFB214:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	and	r3, r3, #31
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZL35_hb_glyph_info_get_general_categoryPK15hb_glyph_info_t, .-_ZL35_hb_glyph_info_get_general_categoryPK15hb_glyph_info_t
	.section	.text._ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t, %function
_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t:
	.fnstart
.LFB217:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	uxtb	r3, r3
	lsrs	r3, r3, #7
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t, .-_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t
	.section	.text._ZL30_hb_glyph_info_set_glyph_propsP15hb_glyph_info_tj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL30_hb_glyph_info_set_glyph_propsP15hb_glyph_info_tj, %function
_ZL30_hb_glyph_info_set_glyph_propsP15hb_glyph_info_tj:
	.fnstart
.LFB230:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #12]	@ movhi
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZL30_hb_glyph_info_set_glyph_propsP15hb_glyph_info_tj, .-_ZL30_hb_glyph_info_set_glyph_propsP15hb_glyph_info_tj
	.section	.text._ZL22_hb_glyph_info_is_markPK15hb_glyph_info_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL22_hb_glyph_info_is_markPK15hb_glyph_info_t, %function
_ZL22_hb_glyph_info_is_markPK15hb_glyph_info_t:
	.fnstart
.LFB234:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #12]
	and	r3, r3, #8
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZL22_hb_glyph_info_is_markPK15hb_glyph_info_t, .-_ZL22_hb_glyph_info_is_markPK15hb_glyph_info_t
	.section	.text._ZL22_hb_glyph_info_ligatedPK15hb_glyph_info_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL22_hb_glyph_info_ligatedPK15hb_glyph_info_t, %function
_ZL22_hb_glyph_info_ligatedPK15hb_glyph_info_t:
	.fnstart
.LFB236:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #12]
	and	r3, r3, #32
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZL22_hb_glyph_info_ligatedPK15hb_glyph_info_t, .-_ZL22_hb_glyph_info_ligatedPK15hb_glyph_info_t
	.section	.rodata
	.align	2
.LC0:
	.ascii	"unicode_props0\000"
	.align	2
.LC1:
	.ascii	"unicode_props1\000"
	.section	.text._ZL32_hb_buffer_allocate_unicode_varsP11hb_buffer_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL32_hb_buffer_allocate_unicode_varsP11hb_buffer_t, %function
_ZL32_hb_buffer_allocate_unicode_varsP11hb_buffer_t:
	.fnstart
.LFB240:
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
	movs	r1, #4
	movs	r2, #1
	ldr	r3, .L148
.LPIC1:
	add	r3, pc
	bl	_ZN11hb_buffer_t12allocate_varEjjPKc(PLT)
	ldr	r0, [r7, #4]
	movs	r1, #5
	movs	r2, #1
	ldr	r3, .L148+4
.LPIC2:
	add	r3, pc
	bl	_ZN11hb_buffer_t12allocate_varEjjPKc(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L149:
	.align	2
.L148:
	.word	.LC0-(.LPIC1+4)
	.word	.LC1-(.LPIC2+4)
	.fnend
	.size	_ZL32_hb_buffer_allocate_unicode_varsP11hb_buffer_t, .-_ZL32_hb_buffer_allocate_unicode_varsP11hb_buffer_t
	.section	.text._ZL34_hb_buffer_deallocate_unicode_varsP11hb_buffer_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL34_hb_buffer_deallocate_unicode_varsP11hb_buffer_t, %function
_ZL34_hb_buffer_deallocate_unicode_varsP11hb_buffer_t:
	.fnstart
.LFB241:
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
	movs	r1, #4
	movs	r2, #1
	ldr	r3, .L151
.LPIC3:
	add	r3, pc
	bl	_ZN11hb_buffer_t14deallocate_varEjjPKc(PLT)
	ldr	r0, [r7, #4]
	movs	r1, #5
	movs	r2, #1
	ldr	r3, .L151+4
.LPIC4:
	add	r3, pc
	bl	_ZN11hb_buffer_t14deallocate_varEjjPKc(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L152:
	.align	2
.L151:
	.word	.LC0-(.LPIC3+4)
	.word	.LC1-(.LPIC4+4)
	.fnend
	.size	_ZL34_hb_buffer_deallocate_unicode_varsP11hb_buffer_t, .-_ZL34_hb_buffer_deallocate_unicode_varsP11hb_buffer_t
	.section	.rodata
	.align	2
.LC2:
	.ascii	"glyph_props\000"
	.align	2
.LC3:
	.ascii	"lig_props\000"
	.align	2
.LC4:
	.ascii	"syllable\000"
	.section	.text._ZL33_hb_buffer_allocate_gsubgpos_varsP11hb_buffer_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL33_hb_buffer_allocate_gsubgpos_varsP11hb_buffer_t, %function
_ZL33_hb_buffer_allocate_gsubgpos_varsP11hb_buffer_t:
	.fnstart
.LFB243:
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
	movs	r2, #2
	ldr	r3, .L154
.LPIC5:
	add	r3, pc
	bl	_ZN11hb_buffer_t12allocate_varEjjPKc(PLT)
	ldr	r0, [r7, #4]
	movs	r1, #2
	movs	r2, #1
	ldr	r3, .L154+4
.LPIC6:
	add	r3, pc
	bl	_ZN11hb_buffer_t12allocate_varEjjPKc(PLT)
	ldr	r0, [r7, #4]
	movs	r1, #3
	movs	r2, #1
	ldr	r3, .L154+8
.LPIC7:
	add	r3, pc
	bl	_ZN11hb_buffer_t12allocate_varEjjPKc(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L155:
	.align	2
.L154:
	.word	.LC2-(.LPIC5+4)
	.word	.LC3-(.LPIC6+4)
	.word	.LC4-(.LPIC7+4)
	.fnend
	.size	_ZL33_hb_buffer_allocate_gsubgpos_varsP11hb_buffer_t, .-_ZL33_hb_buffer_allocate_gsubgpos_varsP11hb_buffer_t
	.section	.text._ZL35_hb_buffer_deallocate_gsubgpos_varsP11hb_buffer_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL35_hb_buffer_deallocate_gsubgpos_varsP11hb_buffer_t, %function
_ZL35_hb_buffer_deallocate_gsubgpos_varsP11hb_buffer_t:
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
	ldr	r0, [r7, #4]
	movs	r1, #3
	movs	r2, #1
	ldr	r3, .L157
.LPIC8:
	add	r3, pc
	bl	_ZN11hb_buffer_t14deallocate_varEjjPKc(PLT)
	ldr	r0, [r7, #4]
	movs	r1, #2
	movs	r2, #1
	ldr	r3, .L157+4
.LPIC9:
	add	r3, pc
	bl	_ZN11hb_buffer_t14deallocate_varEjjPKc(PLT)
	ldr	r0, [r7, #4]
	movs	r1, #0
	movs	r2, #2
	ldr	r3, .L157+8
.LPIC10:
	add	r3, pc
	bl	_ZN11hb_buffer_t14deallocate_varEjjPKc(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L158:
	.align	2
.L157:
	.word	.LC4-(.LPIC8+4)
	.word	.LC3-(.LPIC9+4)
	.word	.LC2-(.LPIC10+4)
	.fnend
	.size	_ZL35_hb_buffer_deallocate_gsubgpos_varsP11hb_buffer_t, .-_ZL35_hb_buffer_deallocate_gsubgpos_varsP11hb_buffer_t
	.section	.text._ZNK18hb_ot_shape_plan_t15collect_lookupsEjP8hb_set_t,"axG",%progbits,_ZNK18hb_ot_shape_plan_t15collect_lookupsEjP8hb_set_t,comdat
	.align	2
	.weak	_ZNK18hb_ot_shape_plan_t15collect_lookupsEjP8hb_set_t
	.thumb
	.thumb_func
	.type	_ZNK18hb_ot_shape_plan_t15collect_lookupsEjP8hb_set_t, %function
_ZNK18hb_ot_shape_plan_t15collect_lookupsEjP8hb_set_t:
	.fnstart
.LFB246:
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
	ldr	r2, [r7, #8]
	movw	r3, #20307
	movt	r3, 18256
	cmp	r2, r3
	beq	.L161
	movw	r3, #21826
	movt	r3, 18259
	cmp	r2, r3
	beq	.L162
	b	.L159
.L162:
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L163
.L161:
	movs	r3, #1
	str	r3, [r7, #20]
	nop
.L163:
	ldr	r3, [r7, #12]
	adds	r3, r3, #24
	mov	r0, r3
	ldr	r1, [r7, #20]
	ldr	r2, [r7, #4]
	bl	_ZNK11hb_ot_map_t15collect_lookupsEjP8hb_set_t(PLT)
.L159:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK18hb_ot_shape_plan_t15collect_lookupsEjP8hb_set_t, .-_ZNK18hb_ot_shape_plan_t15collect_lookupsEjP8hb_set_t
	.section	.text._ZNK18hb_ot_shape_plan_t10substituteEP9hb_font_tP11hb_buffer_t,"axG",%progbits,_ZNK18hb_ot_shape_plan_t10substituteEP9hb_font_tP11hb_buffer_t,comdat
	.align	2
	.weak	_ZNK18hb_ot_shape_plan_t10substituteEP9hb_font_tP11hb_buffer_t
	.thumb
	.thumb_func
	.type	_ZNK18hb_ot_shape_plan_t10substituteEP9hb_font_tP11hb_buffer_t, %function
_ZNK18hb_ot_shape_plan_t10substituteEP9hb_font_tP11hb_buffer_t:
	.fnstart
.LFB247:
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
	adds	r3, r3, #24
	mov	r0, r3
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	bl	_ZNK11hb_ot_map_t10substituteEPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK18hb_ot_shape_plan_t10substituteEP9hb_font_tP11hb_buffer_t, .-_ZNK18hb_ot_shape_plan_t10substituteEP9hb_font_tP11hb_buffer_t
	.section	.text._ZNK18hb_ot_shape_plan_t8positionEP9hb_font_tP11hb_buffer_t,"axG",%progbits,_ZNK18hb_ot_shape_plan_t8positionEP9hb_font_tP11hb_buffer_t,comdat
	.align	2
	.weak	_ZNK18hb_ot_shape_plan_t8positionEP9hb_font_tP11hb_buffer_t
	.thumb
	.thumb_func
	.type	_ZNK18hb_ot_shape_plan_t8positionEP9hb_font_tP11hb_buffer_t, %function
_ZNK18hb_ot_shape_plan_t8positionEP9hb_font_tP11hb_buffer_t:
	.fnstart
.LFB248:
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
	adds	r3, r3, #24
	mov	r0, r3
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	bl	_ZNK11hb_ot_map_t8positionEPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK18hb_ot_shape_plan_t8positionEP9hb_font_tP11hb_buffer_t, .-_ZNK18hb_ot_shape_plan_t8positionEP9hb_font_tP11hb_buffer_t
	.section	.text._ZN18hb_ot_shape_plan_t6finishEv,"axG",%progbits,_ZN18hb_ot_shape_plan_t6finishEv,comdat
	.align	2
	.weak	_ZN18hb_ot_shape_plan_t6finishEv
	.thumb
	.thumb_func
	.type	_ZN18hb_ot_shape_plan_t6finishEv, %function
_ZN18hb_ot_shape_plan_t6finishEv:
	.fnstart
.LFB249:
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
	bl	_ZN11hb_ot_map_t6finishEv(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN18hb_ot_shape_plan_t6finishEv, .-_ZN18hb_ot_shape_plan_t6finishEv
	.section	.text._ZN21hb_ot_shape_planner_tC2EPK15hb_shape_plan_t,"axG",%progbits,_ZN21hb_ot_shape_planner_tC5EPK15hb_shape_plan_t,comdat
	.align	2
	.weak	_ZN21hb_ot_shape_planner_tC2EPK15hb_shape_plan_t
	.thumb
	.thumb_func
	.type	_ZN21hb_ot_shape_planner_tC2EPK15hb_shape_plan_t, %function
_ZN21hb_ot_shape_planner_tC2EPK15hb_shape_plan_t:
	.fnstart
.LFB251:
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
	ldr	r3, [r7]
	ldr	r2, [r3, #48]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	adds	r4, r2, #4
	add	r5, r3, #52
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	add	r1, r3, #28
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	_ZN19hb_ot_map_builder_tC1EP9hb_face_tPK23hb_segment_properties_t(PLT)
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.fnend
	.size	_ZN21hb_ot_shape_planner_tC2EPK15hb_shape_plan_t, .-_ZN21hb_ot_shape_planner_tC2EPK15hb_shape_plan_t
	.weak	_ZN21hb_ot_shape_planner_tC1EPK15hb_shape_plan_t
	.thumb_set _ZN21hb_ot_shape_planner_tC1EPK15hb_shape_plan_t,_ZN21hb_ot_shape_planner_tC2EPK15hb_shape_plan_t
	.section	.text._ZN21hb_ot_shape_planner_tD2Ev,"axG",%progbits,_ZN21hb_ot_shape_planner_tD5Ev,comdat
	.align	2
	.weak	_ZN21hb_ot_shape_planner_tD2Ev
	.thumb
	.thumb_func
	.type	_ZN21hb_ot_shape_planner_tD2Ev, %function
_ZN21hb_ot_shape_planner_tD2Ev:
	.fnstart
.LFB254:
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
	adds	r3, r3, #28
	mov	r0, r3
	bl	_ZN19hb_ot_map_builder_t6finishEv(PLT)
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN21hb_ot_shape_planner_tD2Ev, .-_ZN21hb_ot_shape_planner_tD2Ev
	.weak	_ZN21hb_ot_shape_planner_tD1Ev
	.thumb_set _ZN21hb_ot_shape_planner_tD1Ev,_ZN21hb_ot_shape_planner_tD2Ev
	.section	.text._ZN21hb_ot_shape_planner_t7compileER18hb_ot_shape_plan_t,"axG",%progbits,_ZN21hb_ot_shape_planner_t7compileER18hb_ot_shape_plan_t,comdat
	.align	2
	.weak	_ZN21hb_ot_shape_planner_t7compileER18hb_ot_shape_plan_t
	.thumb
	.thumb_func
	.type	_ZN21hb_ot_shape_planner_t7compileER18hb_ot_shape_plan_t, %function
_ZN21hb_ot_shape_planner_t7compileER18hb_ot_shape_plan_t:
	.fnstart
.LFB256:
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
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	mov	r4, r2
	adds	r5, r3, #4
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #24]
	ldr	r3, [r7]
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	add	r2, r3, #28
	ldr	r3, [r7]
	adds	r3, r3, #24
	mov	r0, r2
	mov	r1, r3
	bl	_ZN19hb_ot_map_builder_t7compileER11hb_ot_map_t(PLT)
	ldr	r3, [r7]
	adds	r3, r3, #24
	mov	r0, r3
	movw	r1, #27757
	movt	r1, 29300
	bl	_ZNK11hb_ot_map_t10get_1_maskEj(PLT)
	mov	r2, r0
	ldr	r3, [r7]
	str	r2, [r3, #968]
	ldr	r3, [r7]
	adds	r3, r3, #24
	mov	r0, r3
	movw	r1, #24931
	movt	r1, 26226
	bl	_ZNK11hb_ot_map_t10get_1_maskEj(PLT)
	mov	r2, r0
	ldr	r3, [r7]
	str	r2, [r3, #972]
	ldr	r3, [r7]
	adds	r3, r3, #24
	mov	r0, r3
	movw	r1, #28018
	movt	r1, 28277
	bl	_ZNK11hb_ot_map_t10get_1_maskEj(PLT)
	mov	r2, r0
	ldr	r3, [r7]
	str	r2, [r3, #976]
	ldr	r3, [r7]
	adds	r3, r3, #24
	mov	r0, r3
	movw	r1, #28525
	movt	r1, 25710
	bl	_ZNK11hb_ot_map_t10get_1_maskEj(PLT)
	mov	r2, r0
	ldr	r3, [r7]
	str	r2, [r3, #980]
	ldr	r3, [r7]
	add	r2, r3, #24
	ldr	r3, [r7]
	ldr	r3, [r3]
	bic	r3, r3, #1
	cmp	r3, #4
	bne	.L175
	movw	r3, #29294
	movt	r3, 27493
	b	.L176
.L175:
	movw	r3, #29294
	movt	r3, 30315
.L176:
	mov	r0, r2
	mov	r1, r3
	movs	r2, #0
	bl	_ZNK11hb_ot_map_t8get_maskEjPj(PLT)
	mov	r2, r0
	ldr	r3, [r7]
	str	r2, [r3, #984]
	ldr	r3, [r7]
	ldr	r3, [r3, #972]
	cmp	r3, #0
	bne	.L177
	ldr	r3, [r7]
	ldr	r3, [r3, #976]
	cmp	r3, #0
	beq	.L178
	ldr	r3, [r7]
	ldr	r3, [r3, #980]
	cmp	r3, #0
	beq	.L178
.L177:
	movs	r3, #1
	b	.L179
.L178:
	movs	r3, #0
.L179:
	and	r3, r3, #1
	uxtb	r1, r3
	ldr	r2, [r7]
	ldrb	r3, [r2, #988]
	bfi	r3, r1, #0, #1
	strb	r3, [r2, #988]
	ldr	r3, [r7]
	ldr	r3, [r3, #984]
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r1, r3
	ldr	r2, [r7]
	ldrb	r3, [r2, #988]
	bfi	r3, r1, #1, #1
	strb	r3, [r2, #988]
	ldr	r3, [r7]
	adds	r3, r3, #24
	mov	r0, r3
	movw	r1, #29291
	movt	r1, 28001
	bl	_ZNK11hb_ot_map_t10get_1_maskEj(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r1, r3
	ldr	r2, [r7]
	ldrb	r3, [r2, #988]
	bfi	r3, r1, #2, #1
	strb	r3, [r2, #988]
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.fnend
	.size	_ZN21hb_ot_shape_planner_t7compileER18hb_ot_shape_plan_t, .-_ZN21hb_ot_shape_planner_t7compileER18hb_ot_shape_plan_t
	.section	.text._ZL30hb_ot_shape_complex_categorizePK21hb_ot_shape_planner_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL30hb_ot_shape_complex_categorizePK21hb_ot_shape_planner_t, %function
_ZL30hb_ot_shape_complex_categorizePK21hb_ot_shape_planner_t:
	.fnstart
.LFB257:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #20
	sub	sp, sp, #20
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	movw	r2, #28265
	movt	r2, 19809
	cmp	r3, r2
	beq	.L182
	movw	r2, #28265
	movt	r2, 19809
	cmp	r3, r2
	bhi	.L183
	movw	r2, #28263
	movt	r2, 18529
	cmp	r3, r2
	beq	.L184
	movw	r2, #28263
	movt	r2, 18529
	cmp	r3, r2
	bhi	.L185
	movw	r2, #27501
	movt	r2, 17249
	cmp	r3, r2
	beq	.L186
	movw	r2, #27501
	movt	r2, 17249
	cmp	r3, r2
	bhi	.L187
	movw	r2, #27753
	movt	r2, 16993
	cmp	r3, r2
	beq	.L186
	movw	r2, #27753
	movt	r2, 16993
	cmp	r3, r2
	bhi	.L188
	movw	r2, #24930
	movt	r2, 16754
	cmp	r3, r2
	beq	.L182
	b	.L181
.L188:
	movw	r2, #28263
	movt	r2, 16997
	cmp	r3, r2
	beq	.L186
	movw	r2, #26473
	movt	r2, 17013
	cmp	r3, r2
	beq	.L189
	b	.L181
.L187:
	movw	r2, #30305
	movt	r2, 17509
	cmp	r3, r2
	beq	.L186
	movw	r2, #30305
	movt	r2, 17509
	cmp	r3, r2
	bhi	.L190
	movw	r2, #24941
	movt	r2, 17256
	cmp	r3, r2
	beq	.L189
	b	.L181
.L190:
	movw	r2, #27250
	movt	r2, 18293
	cmp	r3, r2
	beq	.L186
	movw	r2, #29301
	movt	r2, 18293
	cmp	r3, r2
	beq	.L186
	b	.L181
.L185:
	movw	r2, #26729
	movt	r2, 19316
	cmp	r3, r2
	beq	.L186
	movw	r2, #26729
	movt	r2, 19316
	cmp	r3, r2
	bhi	.L191
	movw	r2, #30305
	movt	r2, 19041
	cmp	r3, r2
	beq	.L186
	movw	r2, #30305
	movt	r2, 19041
	cmp	r3, r2
	bhi	.L192
	movw	r2, #25202
	movt	r2, 18533
	cmp	r3, r2
	beq	.L193
	b	.L181
.L192:
	movw	r2, #28018
	movt	r2, 19304
	cmp	r3, r2
	beq	.L194
	movw	r2, #25697
	movt	r2, 19310
	cmp	r3, r2
	beq	.L186
	b	.L181
.L191:
	movw	r2, #28527
	movt	r2, 19553
	cmp	r3, r2
	beq	.L195
	movw	r2, #28527
	movt	r2, 19553
	cmp	r3, r2
	bhi	.L196
	movw	r2, #28257
	movt	r2, 19553
	cmp	r3, r2
	beq	.L189
	b	.L181
.L196:
	movw	r2, #28771
	movt	r2, 19557
	cmp	r3, r2
	beq	.L186
	movw	r2, #28260
	movt	r2, 19809
	cmp	r3, r2
	beq	.L182
	b	.L181
.L183:
	movw	r2, #29284
	movt	r2, 21352
	cmp	r3, r2
	beq	.L186
	movw	r2, #29284
	movt	r2, 21352
	cmp	r3, r2
	bhi	.L197
	movw	r2, #28527
	movt	r2, 20075
	cmp	r3, r2
	beq	.L182
	movw	r2, #28527
	movt	r2, 20075
	cmp	r3, r2
	bhi	.L198
	movw	r2, #28263
	movt	r2, 19823
	cmp	r3, r2
	beq	.L182
	movw	r2, #28263
	movt	r2, 19823
	cmp	r3, r2
	bhi	.L199
	movw	r2, #31085
	movt	r2, 19820
	cmp	r3, r2
	beq	.L186
	b	.L181
.L199:
	movw	r2, #25961
	movt	r2, 19828
	cmp	r3, r2
	beq	.L186
	movw	r2, #28018
	movt	r2, 19833
	cmp	r3, r2
	beq	.L200
	b	.L181
.L198:
	movw	r2, #24935
	movt	r2, 20584
	cmp	r3, r2
	beq	.L182
	movw	r2, #24935
	movt	r2, 20584
	cmp	r3, r2
	bhi	.L201
	movw	r2, #31073
	movt	r2, 20338
	cmp	r3, r2
	beq	.L186
	b	.L181
.L201:
	movw	r2, #27760
	movt	r2, 20584
	cmp	r3, r2
	beq	.L182
	movw	r2, #28263
	movt	r2, 21098
	cmp	r3, r2
	beq	.L186
	b	.L181
.L197:
	movw	r2, #27765
	movt	r2, 21601
	cmp	r3, r2
	beq	.L189
	movw	r2, #27765
	movt	r2, 21601
	cmp	r3, r2
	bhi	.L202
	movw	r2, #28260
	movt	r2, 21365
	cmp	r3, r2
	beq	.L186
	movw	r2, #28260
	movt	r2, 21365
	cmp	r3, r2
	bhi	.L203
	movw	r2, #28264
	movt	r2, 21353
	cmp	r3, r2
	beq	.L186
	b	.L181
.L203:
	movw	r2, #29283
	movt	r2, 21369
	cmp	r3, r2
	beq	.L182
	movw	r2, #27506
	movt	r2, 21601
	cmp	r3, r2
	beq	.L186
	b	.L181
.L202:
	movw	r2, #27765
	movt	r2, 21605
	cmp	r3, r2
	beq	.L186
	movw	r2, #27765
	movt	r2, 21605
	cmp	r3, r2
	bhi	.L204
	movw	r2, #28012
	movt	r2, 21601
	cmp	r3, r2
	beq	.L186
	b	.L181
.L204:
	movw	r2, #24937
	movt	r2, 21608
	cmp	r3, r2
	beq	.L195
	movw	r2, #25204
	movt	r2, 21609
	cmp	r3, r2
	beq	.L205
.L181:
	ldr	r3, .L216
.LPIC11:
	add	r3, pc
	b	.L206
.L182:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #52]
	movw	r3, #19540
	movt	r3, 17478
	cmp	r2, r3
	bne	.L207
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	movw	r3, #24930
	movt	r3, 16754
	cmp	r2, r3
	bne	.L208
.L207:
	ldr	r3, .L216+4
.LPIC12:
	add	r3, pc
	b	.L206
.L208:
	ldr	r3, .L216+8
.LPIC13:
	add	r3, pc
	b	.L206
.L195:
	ldr	r3, .L216+12
.LPIC14:
	add	r3, pc
	b	.L206
.L184:
	ldr	r3, .L216+16
.LPIC15:
	add	r3, pc
	b	.L206
.L205:
	ldr	r3, .L216+20
.LPIC16:
	add	r3, pc
	b	.L206
.L193:
	ldr	r3, .L216+24
.LPIC17:
	add	r3, pc
	b	.L206
.L186:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #52]
	movw	r3, #19540
	movt	r3, 17478
	cmp	r2, r3
	bne	.L209
	ldr	r3, .L216+28
.LPIC18:
	add	r3, pc
	b	.L206
.L209:
	ldr	r3, .L216+32
.LPIC19:
	add	r3, pc
	b	.L206
.L194:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #60]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L210
	ldr	r3, [r7, #4]
	ldr	r1, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #64]
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #72]
	movw	r3, #25958
	movt	r3, 28786
	str	r3, [sp]
	movs	r3, #0
	str	r3, [sp, #4]
	mov	r0, r1
	movw	r1, #21826
	movt	r1, 18259
	mov	r3, r4
	bl	hb_ot_layout_language_find_feature(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L210
	movs	r3, #1
	b	.L211
.L210:
	movs	r3, #0
.L211:
	cmp	r3, #0
	beq	.L212
	ldr	r3, .L216+36
.LPIC20:
	add	r3, pc
	b	.L206
.L212:
	ldr	r3, .L216+40
.LPIC21:
	add	r3, pc
	b	.L206
.L200:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #52]
	movw	r3, #27954
	movt	r3, 28025
	cmp	r2, r3
	bne	.L213
	ldr	r3, .L216+44
.LPIC22:
	add	r3, pc
	b	.L206
.L213:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #52]
	movw	r3, #28018
	movt	r3, 28025
	cmp	r2, r3
	bne	.L214
	ldr	r3, .L216+48
.LPIC23:
	add	r3, pc
	b	.L206
.L214:
	ldr	r3, .L216+52
.LPIC24:
	add	r3, pc
	b	.L206
.L189:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #52]
	movw	r3, #19540
	movt	r3, 17478
	cmp	r2, r3
	bne	.L215
	ldr	r3, .L216+56
.LPIC25:
	add	r3, pc
	b	.L206
.L215:
	ldr	r3, .L216+60
.LPIC26:
	add	r3, pc
.L206:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L217:
	.align	2
.L216:
	.word	_hb_ot_complex_shaper_default-(.LPIC11+4)
	.word	_hb_ot_complex_shaper_arabic-(.LPIC12+4)
	.word	_hb_ot_complex_shaper_default-(.LPIC13+4)
	.word	_hb_ot_complex_shaper_thai-(.LPIC14+4)
	.word	_hb_ot_complex_shaper_hangul-(.LPIC15+4)
	.word	_hb_ot_complex_shaper_tibetan-(.LPIC16+4)
	.word	_hb_ot_complex_shaper_hebrew-(.LPIC17+4)
	.word	_hb_ot_complex_shaper_default-(.LPIC18+4)
	.word	_hb_ot_complex_shaper_indic-(.LPIC19+4)
	.word	_hb_ot_complex_shaper_indic-(.LPIC20+4)
	.word	_hb_ot_complex_shaper_default-(.LPIC21+4)
	.word	_hb_ot_complex_shaper_myanmar-(.LPIC22+4)
	.word	_hb_ot_complex_shaper_myanmar_old-(.LPIC23+4)
	.word	_hb_ot_complex_shaper_default-(.LPIC24+4)
	.word	_hb_ot_complex_shaper_default-(.LPIC25+4)
	.word	_hb_ot_complex_shaper_sea-(.LPIC26+4)
	.fnend
	.size	_ZL30hb_ot_shape_complex_categorizePK21hb_ot_shape_planner_t, .-_ZL30hb_ot_shape_complex_categorizePK21hb_ot_shape_planner_t
	.section	.data._ZL15common_features,"aw",%progbits
	.align	2
	.type	_ZL15common_features, %object
	.size	_ZL15common_features, 20
_ZL15common_features:
	.word	1667460464
	.word	1819239276
	.word	1835102827
	.word	1835756907
	.word	1919707495
	.section	.data._ZL19horizontal_features,"aw",%progbits
	.align	2
	.type	_ZL19horizontal_features, %object
	.size	_ZL19horizontal_features, 24
_ZL19horizontal_features:
	.word	1667329140
	.word	1668049255
	.word	1668641395
	.word	1801810542
	.word	1818847073
	.word	1919118452
	.section	.data._ZL17vertical_features,"aw",%progbits
	.align	2
	.type	_ZL17vertical_features, %object
	.size	_ZL17vertical_features, 4
_ZL17vertical_features:
	.word	1986359924
	.section	.text._ZL28hb_ot_shape_collect_featuresP21hb_ot_shape_planner_tPK23hb_segment_properties_tPK12hb_feature_tj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL28hb_ot_shape_collect_featuresP21hb_ot_shape_planner_tPK23hb_segment_properties_tPK12hb_feature_tj, %function
_ZL28hb_ot_shape_collect_featuresP21hb_ot_shape_planner_tPK23hb_segment_properties_tPK12hb_feature_tj:
	.fnstart
.LFB258:
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
	str	r3, [r7]
	ldr	r3, [r7, #12]
	adds	r3, r3, #28
	str	r3, [r7, #20]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	cmp	r3, #4
	beq	.L220
	cmp	r3, #5
	beq	.L221
	b	.L222
.L220:
	ldr	r0, [r7, #20]
	movw	r1, #29281
	movt	r1, 27764
	bl	_ZN19hb_ot_map_builder_t23add_global_bool_featureEj(PLT)
	ldr	r0, [r7, #20]
	movw	r1, #29293
	movt	r1, 27764
	bl	_ZN19hb_ot_map_builder_t23add_global_bool_featureEj(PLT)
	b	.L222
.L221:
	ldr	r0, [r7, #20]
	movw	r1, #27745
	movt	r1, 29300
	bl	_ZN19hb_ot_map_builder_t23add_global_bool_featureEj(PLT)
	ldr	r0, [r7, #20]
	movw	r1, #27757
	movt	r1, 29300
	movs	r2, #1
	movs	r3, #0
	bl	_ZN19hb_ot_map_builder_t11add_featureEjj25hb_ot_map_feature_flags_t(PLT)
	nop
.L222:
	ldr	r0, [r7, #20]
	movw	r1, #24931
	movt	r1, 26226
	movs	r2, #1
	movs	r3, #0
	bl	_ZN19hb_ot_map_builder_t11add_featureEjj25hb_ot_map_feature_flags_t(PLT)
	ldr	r0, [r7, #20]
	movw	r1, #28018
	movt	r1, 28277
	movs	r2, #1
	movs	r3, #0
	bl	_ZN19hb_ot_map_builder_t11add_featureEjj25hb_ot_map_feature_flags_t(PLT)
	ldr	r0, [r7, #20]
	movw	r1, #28525
	movt	r1, 25710
	movs	r2, #1
	movs	r3, #0
	bl	_ZN19hb_ot_map_builder_t11add_featureEjj25hb_ot_map_feature_flags_t(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L223
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	ldr	r3, [r3, #8]
	ldr	r0, [r7, #12]
	blx	r3
.L223:
	movs	r3, #0
	str	r3, [r7, #36]
	b	.L224
.L225:
	ldr	r3, .L241
.LPIC27:
	add	r3, pc
	ldr	r2, [r7, #36]
	ldr	r3, [r3, r2, lsl #2]
	ldr	r0, [r7, #20]
	mov	r1, r3
	bl	_ZN19hb_ot_map_builder_t23add_global_bool_featureEj(PLT)
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L224:
	ldr	r3, .L241+4
.LPIC28:
	add	r3, pc
	mov	r0, r3
	bl	_Z12ARRAY_LENGTHIjLj5EEjRAT0__KT_(PLT)
	mov	r2, r0
	ldr	r3, [r7, #36]
	cmp	r2, r3
	ite	hi
	movhi	r3, #1
	movls	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L225
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	bic	r3, r3, #1
	cmp	r3, #4
	bne	.L226
	movs	r3, #0
	str	r3, [r7, #32]
	b	.L227
.L230:
	ldr	r3, .L241+8
.LPIC29:
	add	r3, pc
	ldr	r2, [r7, #32]
	ldr	r4, [r3, r2, lsl #2]
	ldr	r3, .L241+12
.LPIC30:
	add	r3, pc
	ldr	r2, [r7, #32]
	ldr	r2, [r3, r2, lsl #2]
	movw	r3, #29294
	movt	r3, 27493
	cmp	r2, r3
	bne	.L228
	movs	r3, #2
	b	.L229
.L228:
	movs	r3, #0
.L229:
	movs	r0, #1
	mov	r1, r3
	bl	_Zor25hb_ot_map_feature_flags_tS_(PLT)
	mov	r3, r0
	ldr	r0, [r7, #20]
	mov	r1, r4
	movs	r2, #1
	bl	_ZN19hb_ot_map_builder_t11add_featureEjj25hb_ot_map_feature_flags_t(PLT)
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	str	r3, [r7, #32]
.L227:
	ldr	r3, .L241+16
.LPIC31:
	add	r3, pc
	mov	r0, r3
	bl	_Z12ARRAY_LENGTHIjLj6EEjRAT0__KT_(PLT)
	mov	r2, r0
	ldr	r3, [r7, #32]
	cmp	r2, r3
	ite	hi
	movhi	r3, #1
	movls	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L230
	b	.L231
.L226:
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L232
.L235:
	ldr	r3, .L241+20
.LPIC32:
	add	r3, pc
	ldr	r2, [r7, #28]
	ldr	r4, [r3, r2, lsl #2]
	ldr	r3, .L241+24
.LPIC33:
	add	r3, pc
	ldr	r2, [r7, #28]
	ldr	r2, [r3, r2, lsl #2]
	movw	r3, #29294
	movt	r3, 30315
	cmp	r2, r3
	bne	.L233
	movs	r3, #2
	b	.L234
.L233:
	movs	r3, #0
.L234:
	movs	r0, #1
	mov	r1, r3
	bl	_Zor25hb_ot_map_feature_flags_tS_(PLT)
	mov	r3, r0
	ldr	r0, [r7, #20]
	mov	r1, r4
	movs	r2, #1
	bl	_ZN19hb_ot_map_builder_t11add_featureEjj25hb_ot_map_feature_flags_t(PLT)
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L232:
	ldr	r3, .L241+28
.LPIC34:
	add	r3, pc
	mov	r0, r3
	bl	_Z12ARRAY_LENGTHIjLj1EEjRAT0__KT_(PLT)
	mov	r2, r0
	ldr	r3, [r7, #28]
	cmp	r2, r3
	ite	hi
	movhi	r3, #1
	movls	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L235
.L231:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L236
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	ldr	r3, [r3, #12]
	ldr	r0, [r7, #12]
	blx	r3
.L236:
	movs	r3, #0
	str	r3, [r7, #24]
	b	.L237
.L240:
	ldr	r3, [r7, #24]
	lsls	r3, r3, #4
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldr	r1, [r3]
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L238
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #12]
	cmp	r3, #-1
	bne	.L238
	movs	r3, #1
	b	.L239
.L238:
	movs	r3, #0
.L239:
	ldr	r0, [r7, #20]
	bl	_ZN19hb_ot_map_builder_t11add_featureEjj25hb_ot_map_feature_flags_t(PLT)
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
.L237:
	ldr	r2, [r7, #24]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L240
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L242:
	.align	2
.L241:
	.word	_ZL15common_features-(.LPIC27+4)
	.word	_ZL15common_features-(.LPIC28+4)
	.word	_ZL19horizontal_features-(.LPIC29+4)
	.word	_ZL19horizontal_features-(.LPIC30+4)
	.word	_ZL19horizontal_features-(.LPIC31+4)
	.word	_ZL17vertical_features-(.LPIC32+4)
	.word	_ZL17vertical_features-(.LPIC33+4)
	.word	_ZL17vertical_features-(.LPIC34+4)
	.fnend
	.size	_ZL28hb_ot_shape_collect_featuresP21hb_ot_shape_planner_tPK23hb_segment_properties_tPK12hb_feature_tj, .-_ZL28hb_ot_shape_collect_featuresP21hb_ot_shape_planner_tPK23hb_segment_properties_tPK12hb_feature_tj
	.section	.text._hb_ot_shaper_face_data_create,"ax",%progbits
	.align	2
	.global	_hb_ot_shaper_face_data_create
	.hidden	_hb_ot_shaper_face_data_create
	.thumb
	.thumb_func
	.type	_hb_ot_shaper_face_data_create, %function
_hb_ot_shaper_face_data_create:
	.fnstart
.LFB259:
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
	bl	_Z20_hb_ot_layout_createP9hb_face_t(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_hb_ot_shaper_face_data_create, .-_hb_ot_shaper_face_data_create
	.section	.text._hb_ot_shaper_face_data_destroy,"ax",%progbits
	.align	2
	.global	_hb_ot_shaper_face_data_destroy
	.hidden	_hb_ot_shaper_face_data_destroy
	.thumb
	.thumb_func
	.type	_hb_ot_shaper_face_data_destroy, %function
_hb_ot_shaper_face_data_destroy:
	.fnstart
.LFB260:
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
	bl	_Z21_hb_ot_layout_destroyP14hb_ot_layout_t(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_hb_ot_shaper_face_data_destroy, .-_hb_ot_shaper_face_data_destroy
	.section	.text._hb_ot_shaper_font_data_create,"ax",%progbits
	.align	2
	.global	_hb_ot_shaper_font_data_create
	.hidden	_hb_ot_shaper_font_data_create
	.thumb
	.thumb_func
	.type	_hb_ot_shaper_font_data_create, %function
_hb_ot_shaper_font_data_create:
	.fnstart
.LFB261:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_hb_ot_shaper_font_data_create, .-_hb_ot_shaper_font_data_create
	.section	.text._hb_ot_shaper_font_data_destroy,"ax",%progbits
	.align	2
	.global	_hb_ot_shaper_font_data_destroy
	.hidden	_hb_ot_shaper_font_data_destroy
	.thumb
	.thumb_func
	.type	_hb_ot_shaper_font_data_destroy, %function
_hb_ot_shaper_font_data_destroy:
	.fnstart
.LFB262:
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
	.size	_hb_ot_shaper_font_data_destroy, .-_hb_ot_shaper_font_data_destroy
	.section	.text._hb_ot_shaper_shape_plan_data_create,"ax",%progbits
	.align	2
	.global	_hb_ot_shaper_shape_plan_data_create
	.hidden	_hb_ot_shaper_shape_plan_data_create
	.thumb
	.thumb_func
	.type	_hb_ot_shaper_shape_plan_data_create, %function
_hb_ot_shaper_shape_plan_data_create:
	.fnstart
.LFB263:
	@ args = 0, pretend = 0, frame = 1168
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #1172
	subw	sp, sp, #1172
	.setfp r7, sp, #0
	add	r7, sp, #0
	add	r3, r7, #12
	str	r0, [r3]
	add	r3, r7, #8
	str	r1, [r3]
	adds	r3, r7, #4
	str	r2, [r3]
	movs	r0, #1
	mov	r1, #992
	bl	calloc(PLT)
	mov	r3, r0
	str	r3, [r7, #1164]
	ldr	r3, [r7, #1164]
	cmp	r3, #0
	bne	.L250
	movs	r4, #0
	b	.L254
.L250:
	add	r2, r7, #16
	add	r3, r7, #12
	mov	r0, r2
	ldr	r1, [r3]
.LEHB0:
	bl	_ZN21hb_ot_shape_planner_tC1EPK15hb_shape_plan_t(PLT)
.LEHE0:
	add	r3, r7, #16
	mov	r0, r3
.LEHB1:
	bl	_ZL30hb_ot_shape_complex_categorizePK21hb_ot_shape_planner_t(PLT)
	mov	r2, r0
	add	r3, r7, #16
	str	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	add	r1, r3, #52
	add	r0, r7, #16
	add	r2, r7, #8
	adds	r3, r7, #4
	ldr	r2, [r2]
	ldr	r3, [r3]
	bl	_ZL28hb_ot_shape_collect_featuresP21hb_ot_shape_planner_tPK23hb_segment_properties_tPK12hb_feature_tj(PLT)
	add	r3, r7, #16
	mov	r0, r3
	ldr	r1, [r7, #1164]
	bl	_ZN21hb_ot_shape_planner_t7compileER18hb_ot_shape_plan_t(PLT)
	ldr	r3, [r7, #1164]
	ldr	r3, [r3, #20]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L252
	ldr	r3, [r7, #1164]
	ldr	r3, [r3, #20]
	ldr	r3, [r3, #16]
	ldr	r0, [r7, #1164]
	blx	r3
.LEHE1:
	mov	r2, r0
	ldr	r3, [r7, #1164]
	str	r2, [r3, #964]
	ldr	r3, [r7, #1164]
	ldr	r3, [r3, #964]
	cmp	r3, #0
	bne	.L252
	movs	r4, #0
	b	.L253
.L252:
	ldr	r4, [r7, #1164]
.L253:
	add	r3, r7, #16
	mov	r0, r3
.LEHB2:
	bl	_ZN21hb_ot_shape_planner_tD1Ev(PLT)
.LEHE2:
.L254:
	mov	r3, r4
	b	.L257
.L256:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN21hb_ot_shape_planner_tD1Ev(PLT)
.LEHB3:
	bl	__cxa_end_cleanup(PLT)
.LEHE3:
.L257:
	mov	r0, r3
	addw	r7, r7, #1172
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.global	__gxx_personality_v0
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA263:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE263-.LLSDACSB263
.LLSDACSB263:
	.uleb128 .LEHB0-.LFB263
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB263
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L256-.LFB263
	.uleb128 0
	.uleb128 .LEHB2-.LFB263
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB263
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE263:
	.section	.text._hb_ot_shaper_shape_plan_data_create
	.fnend
	.size	_hb_ot_shaper_shape_plan_data_create, .-_hb_ot_shaper_shape_plan_data_create
	.section	.text._hb_ot_shaper_shape_plan_data_destroy,"ax",%progbits
	.align	2
	.global	_hb_ot_shaper_shape_plan_data_destroy
	.hidden	_hb_ot_shaper_shape_plan_data_destroy
	.thumb
	.thumb_func
	.type	_hb_ot_shaper_shape_plan_data_destroy, %function
_hb_ot_shaper_shape_plan_data_destroy:
	.fnstart
.LFB264:
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
	ldr	r3, [r3, #20]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L259
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	ldr	r3, [r3, #20]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #964]
	mov	r0, r2
	blx	r3
.L259:
	ldr	r0, [r7, #4]
	bl	_ZN18hb_ot_shape_plan_t6finishEv(PLT)
	ldr	r0, [r7, #4]
	bl	free(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_hb_ot_shaper_shape_plan_data_destroy, .-_hb_ot_shaper_shape_plan_data_destroy
	.section	.text._ZL20hb_set_unicode_propsP11hb_buffer_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL20hb_set_unicode_propsP11hb_buffer_t, %function
_ZL20hb_set_unicode_propsP11hb_buffer_t:
	.fnstart
.LFB265:
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
	ldr	r3, [r3, #88]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L261
.L262:
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	mov	r0, r2
	mov	r1, r3
	bl	_ZL32_hb_glyph_info_set_unicode_propsP15hb_glyph_info_tP18hb_unicode_funcs_t(PLT)
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L261:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bcc	.L262
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL20hb_set_unicode_propsP11hb_buffer_t, .-_ZL20hb_set_unicode_propsP11hb_buffer_t
	.section	.text._ZL23hb_insert_dotted_circleP11hb_buffer_tP9hb_font_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL23hb_insert_dotted_circleP11hb_buffer_tP9hb_font_t, %function
_ZL23hb_insert_dotted_circleP11hb_buffer_tP9hb_font_t:
	.fnstart
.LFB266:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #48
	sub	sp, sp, #48
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L264
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #196]
	cmp	r3, #0
	bne	.L264
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	mov	r0, r3
	bl	_ZL35_hb_glyph_info_get_general_categoryPK15hb_glyph_info_t(PLT)
	mov	r3, r0
	cmp	r3, #12
	beq	.L265
.L264:
	movs	r3, #1
	b	.L266
.L265:
	movs	r3, #0
.L266:
	cmp	r3, #0
	beq	.L267
	b	.L263
.L267:
	ldr	r0, [r7]
	movw	r1, #9676
	bl	_ZN9hb_font_t9has_glyphEj(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L269
	b	.L263
.L269:
	add	r3, r7, #28
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
	movw	r3, #9676
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	add	r2, r7, #28
	mov	r0, r2
	mov	r1, r3
	bl	_ZL32_hb_glyph_info_set_unicode_propsP15hb_glyph_info_tP18hb_unicode_funcs_t(PLT)
	ldr	r0, [r7, #4]
	bl	_ZN11hb_buffer_t12clear_outputEv(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #84]
	add	r4, r7, #8
	add	r5, r7, #28
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r0, [r7, #4]
	movs	r1, #0
	bl	_ZN11hb_buffer_t3curEj(PLT)
	mov	r3, r0
	ldr	r3, [r3, #8]
	str	r3, [r7, #16]
	ldr	r0, [r7, #4]
	movs	r1, #0
	bl	_ZN11hb_buffer_t3curEj(PLT)
	mov	r3, r0
	ldr	r3, [r3, #4]
	str	r3, [r7, #12]
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN11hb_buffer_t11output_infoERK15hb_glyph_info_t(PLT)
	b	.L270
.L271:
	ldr	r0, [r7, #4]
	bl	_ZN11hb_buffer_t10next_glyphEv(PLT)
.L270:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #84]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	cmp	r2, r3
	bcc	.L271
	ldr	r0, [r7, #4]
	bl	_ZN11hb_buffer_t12swap_buffersEv(PLT)
.L263:
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.fnend
	.size	_ZL23hb_insert_dotted_circleP11hb_buffer_tP9hb_font_t, .-_ZL23hb_insert_dotted_circleP11hb_buffer_tP9hb_font_t
	.section	.text._ZL16hb_form_clustersP11hb_buffer_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL16hb_form_clustersP11hb_buffer_t, %function
_ZL16hb_form_clustersP11hb_buffer_t:
	.fnstart
.LFB267:
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
	ldr	r3, [r3, #88]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	str	r3, [r7, #12]
	movs	r3, #1
	str	r3, [r7, #20]
	b	.L274
.L276:
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL35_hb_glyph_info_get_general_categoryPK15hb_glyph_info_t(PLT)
	mov	r3, r0
	mov	r2, #7168
	asr	r3, r2, r3
	and	r3, r3, #1
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L275
	ldr	r3, [r7, #20]
	subs	r2, r3, #1
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	ldr	r0, [r7, #4]
	mov	r1, r2
	mov	r2, r3
	bl	_ZN11hb_buffer_t14merge_clustersEjj(PLT)
.L275:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L274:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bcc	.L276
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL16hb_form_clustersP11hb_buffer_t, .-_ZL16hb_form_clustersP11hb_buffer_t
	.section	.text._ZL26hb_ensure_native_directionP11hb_buffer_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL26hb_ensure_native_directionP11hb_buffer_t, %function
_ZL26hb_ensure_native_directionP11hb_buffer_t:
	.fnstart
.LFB268:
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
	ldr	r3, [r3, #60]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #1
	cmp	r3, #4
	bne	.L278
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	mov	r0, r3
	bl	hb_script_get_horizontal_direction(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bne	.L279
.L278:
	ldr	r3, [r7, #12]
	bic	r3, r3, #1
	cmp	r3, #6
	bne	.L280
	ldr	r3, [r7, #12]
	cmp	r3, #6
	beq	.L280
.L279:
	movs	r3, #1
	b	.L281
.L280:
	movs	r3, #0
.L281:
	cmp	r3, #0
	beq	.L277
	ldr	r0, [r7, #4]
	bl	hb_buffer_reverse_clusters(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	eor	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #60]
.L277:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL26hb_ensure_native_directionP11hb_buffer_t, .-_ZL26hb_ensure_native_directionP11hb_buffer_t
	.section	.text._ZL18hb_ot_mirror_charsP21hb_ot_shape_context_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL18hb_ot_mirror_charsP21hb_ot_shape_context_t, %function
_ZL18hb_ot_mirror_charsP21hb_ot_shape_context_t:
	.fnstart
.LFB269:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #40
	sub	sp, sp, #40
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	bic	r3, r3, #2
	cmp	r3, #4
	bne	.L284
	b	.L283
.L284:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #44]
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #968]
	str	r3, [r7, #24]
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #88]
	str	r3, [r7, #20]
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #100]
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #36]
	b	.L286
.L289:
	ldr	r2, [r7, #36]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r0, [r7, #28]
	mov	r1, r3
	bl	_ZN18hb_unicode_funcs_t9mirroringEj(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r2, [r7, #36]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bne	.L287
	ldr	r2, [r7, #36]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #16]
	adds	r1, r2, r3
	ldr	r2, [r7, #36]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #24]
	orrs	r3, r3, r2
	str	r3, [r1, #4]
	b	.L288
.L287:
	ldr	r2, [r7, #36]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	ldr	r2, [r7, #12]
	str	r2, [r3]
.L288:
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L286:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcc	.L289
.L283:
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL18hb_ot_mirror_charsP21hb_ot_shape_context_t, .-_ZL18hb_ot_mirror_charsP21hb_ot_shape_context_t
	.section	.text._ZL32hb_ot_shape_setup_masks_fractionP21hb_ot_shape_context_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL32hb_ot_shape_setup_masks_fractionP21hb_ot_shape_context_t, %function
_ZL32hb_ot_shape_setup_masks_fractionP21hb_ot_shape_context_t:
	.fnstart
.LFB270:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldrb	r3, [r3, #988]
	ubfx	r3, r3, #0, #1
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L291
	b	.L290
.L291:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #88]
	str	r3, [r7, #12]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #100]
	str	r3, [r7, #8]
	movs	r3, #0
	str	r3, [r7, #36]
	b	.L293
.L307:
	ldr	r2, [r7, #36]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r2, [r3]
	movw	r3, #8260
	cmp	r2, r3
	bne	.L294
	ldr	r3, [r7, #36]
	str	r3, [r7, #32]
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #28]
	b	.L295
.L298:
	ldr	r3, [r7, #32]
	subs	r3, r3, #1
	str	r3, [r7, #32]
.L295:
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L296
	ldr	r2, [r7, #32]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	subs	r3, r3, #20
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL35_hb_glyph_info_get_general_categoryPK15hb_glyph_info_t(PLT)
	mov	r3, r0
	cmp	r3, #13
	bne	.L296
	movs	r3, #1
	b	.L297
.L296:
	movs	r3, #0
.L297:
	cmp	r3, #0
	bne	.L298
	b	.L299
.L302:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L299:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bcs	.L300
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL35_hb_glyph_info_get_general_categoryPK15hb_glyph_info_t(PLT)
	mov	r3, r0
	cmp	r3, #13
	bne	.L300
	movs	r3, #1
	b	.L301
.L300:
	movs	r3, #0
.L301:
	cmp	r3, #0
	bne	.L302
	ldr	r3, [r7, #32]
	str	r3, [r7, #24]
	b	.L303
.L304:
	ldr	r2, [r7, #24]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	adds	r1, r2, r3
	ldr	r2, [r7, #24]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r0, [r3, #976]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #972]
	orrs	r3, r3, r0
	orrs	r3, r3, r2
	str	r3, [r1, #4]
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
.L303:
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L304
	ldr	r2, [r7, #36]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	adds	r1, r2, r3
	ldr	r2, [r7, #36]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #972]
	orrs	r3, r3, r2
	str	r3, [r1, #4]
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #20]
	b	.L305
.L306:
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	adds	r1, r2, r3
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r0, [r3, #972]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #980]
	orrs	r3, r3, r0
	orrs	r3, r3, r2
	str	r3, [r1, #4]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L305:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bcc	.L306
	ldr	r3, [r7, #28]
	subs	r3, r3, #1
	str	r3, [r7, #36]
.L294:
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L293:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bcc	.L307
.L290:
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZL32hb_ot_shape_setup_masks_fractionP21hb_ot_shape_context_t, .-_ZL32hb_ot_shape_setup_masks_fractionP21hb_ot_shape_context_t
	.section	.text._ZL28hb_ot_shape_initialize_masksP21hb_ot_shape_context_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL28hb_ot_shape_initialize_masksP21hb_ot_shape_context_t, %function
_ZL28hb_ot_shape_initialize_masksP21hb_ot_shape_context_t:
	.fnstart
.LFB271:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r3, r3, #24
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #16]
	ldr	r0, [r7, #20]
	bl	_ZNK11hb_ot_map_t15get_global_maskEv(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r0, [r7, #16]
	ldr	r1, [r7, #12]
	bl	_ZN11hb_buffer_t11reset_masksEj(PLT)
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZL28hb_ot_shape_initialize_masksP21hb_ot_shape_context_t, .-_ZL28hb_ot_shape_initialize_masksP21hb_ot_shape_context_t
	.section	.text._ZL23hb_ot_shape_setup_masksP21hb_ot_shape_context_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL23hb_ot_shape_setup_masksP21hb_ot_shape_context_t, %function
_ZL23hb_ot_shape_setup_masksP21hb_ot_shape_context_t:
	.fnstart
.LFB272:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #40
	sub	sp, sp, #40
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r3, r3, #24
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #20]
	ldr	r0, [r7, #4]
	bl	_ZL32hb_ot_shape_setup_masks_fractionP21hb_ot_shape_context_t(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	ldr	r3, [r3, #40]
	cmp	r3, #0
	beq	.L310
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	ldr	r3, [r3, #40]
	ldr	r2, [r7, #4]
	ldr	r1, [r2]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #4]
	mov	r0, r1
	ldr	r1, [r7, #20]
	blx	r3
.L310:
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L311
.L314:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #28]
	lsls	r3, r3, #4
	add	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L312
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #12]
	cmp	r3, #-1
	beq	.L313
.L312:
	ldr	r3, [r7, #16]
	ldr	r2, [r3]
	add	r3, r7, #8
	ldr	r0, [r7, #24]
	mov	r1, r2
	mov	r2, r3
	bl	_ZNK11hb_ot_map_t8get_maskEjPj(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	lsls	r2, r2, r3
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #8]
	ldr	r1, [r7, #16]
	ldr	r1, [r1, #12]
	str	r1, [sp]
	ldr	r0, [r7, #20]
	mov	r1, r2
	ldr	r2, [r7, #12]
	bl	_ZN11hb_buffer_t9set_masksEjjjj(PLT)
.L313:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L311:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bhi	.L314
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL23hb_ot_shape_setup_masksP21hb_ot_shape_context_t, .-_ZL23hb_ot_shape_setup_masksP21hb_ot_shape_context_t
	.section	.text._ZL21hb_ot_map_glyphs_fastP11hb_buffer_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL21hb_ot_map_glyphs_fastP11hb_buffer_t, %function
_ZL21hb_ot_map_glyphs_fastP11hb_buffer_t:
	.fnstart
.LFB273:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L316
.L317:
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	adds	r1, r2, r3
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldr	r3, [r3, #12]
	str	r3, [r1]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L316:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bcc	.L317
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZL21hb_ot_map_glyphs_fastP11hb_buffer_t, .-_ZL21hb_ot_map_glyphs_fastP11hb_buffer_t
	.section	.text._ZL27hb_synthesize_glyph_classesP21hb_ot_shape_context_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL27hb_synthesize_glyph_classesP21hb_ot_shape_context_t, %function
_ZL27hb_synthesize_glyph_classesP21hb_ot_shape_context_t:
	.fnstart
.LFB274:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #88]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #100]
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L319
.L323:
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL35_hb_glyph_info_get_general_categoryPK15hb_glyph_info_t(PLT)
	mov	r3, r0
	cmp	r3, #12
	bne	.L320
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L321
.L320:
	movs	r3, #2
	b	.L322
.L321:
	movs	r3, #8
.L322:
	str	r3, [r7, #8]
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	mov	r0, r3
	ldr	r1, [r7, #8]
	bl	_ZL30_hb_glyph_info_set_glyph_propsP15hb_glyph_info_tj(PLT)
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L319:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bcc	.L323
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZL27hb_synthesize_glyph_classesP21hb_ot_shape_context_t, .-_ZL27hb_synthesize_glyph_classesP21hb_ot_shape_context_t
	.section	.rodata
	.align	2
.LC5:
	.ascii	"glyph_index\000"
	.section	.text._ZL24hb_ot_substitute_defaultP21hb_ot_shape_context_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL24hb_ot_substitute_defaultP21hb_ot_shape_context_t, %function
_ZL24hb_ot_substitute_defaultP21hb_ot_shape_context_t:
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
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L325
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	ldr	r3, [r3, #24]
	ldr	r2, [r7, #4]
	ldr	r1, [r2]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #4]
	mov	r0, r1
	ldr	r1, [r7, #12]
	blx	r3
.L325:
	ldr	r0, [r7, #4]
	bl	_ZL28hb_ot_shape_initialize_masksP21hb_ot_shape_context_t(PLT)
	ldr	r0, [r7, #4]
	bl	_ZL18hb_ot_mirror_charsP21hb_ot_shape_context_t(PLT)
	ldr	r0, [r7, #12]
	movs	r1, #0
	movs	r2, #4
	ldr	r3, .L327
.LPIC35:
	add	r3, pc
	bl	_ZN11hb_buffer_t12allocate_varEjjPKc(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r2
	ldr	r1, [r7, #12]
	mov	r2, r3
	bl	_Z22_hb_ot_shape_normalizePK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t(PLT)
	ldr	r0, [r7, #4]
	bl	_ZL23hb_ot_shape_setup_masksP21hb_ot_shape_context_t(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r0, r3
	bl	hb_ot_layout_has_positioning(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L326
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #12]
	bl	_Z49_hb_ot_shape_fallback_position_recategorize_marksPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t(PLT)
.L326:
	ldr	r0, [r7, #12]
	bl	_ZL21hb_ot_map_glyphs_fastP11hb_buffer_t(PLT)
	ldr	r0, [r7, #12]
	movs	r1, #0
	movs	r2, #4
	ldr	r3, .L327+4
.LPIC36:
	add	r3, pc
	bl	_ZN11hb_buffer_t14deallocate_varEjjPKc(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L328:
	.align	2
.L327:
	.word	.LC5-(.LPIC35+4)
	.word	.LC5-(.LPIC36+4)
	.fnend
	.size	_ZL24hb_ot_substitute_defaultP21hb_ot_shape_context_t, .-_ZL24hb_ot_substitute_defaultP21hb_ot_shape_context_t
	.section	.text._ZL24hb_ot_substitute_complexP21hb_ot_shape_context_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL24hb_ot_substitute_complexP21hb_ot_shape_context_t, %function
_ZL24hb_ot_substitute_complexP21hb_ot_shape_context_t:
	.fnstart
.LFB276:
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
	ldr	r3, [r3, #12]
	str	r3, [r7, #12]
	ldr	r0, [r7, #12]
	bl	_ZL33_hb_buffer_allocate_gsubgpos_varsP11hb_buffer_t(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r1, [r7, #12]
	bl	_Z29hb_ot_layout_substitute_startP9hb_font_tP11hb_buffer_t(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r0, r3
	bl	hb_ot_layout_has_glyph_classes(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L330
	ldr	r0, [r7, #4]
	bl	_ZL27hb_synthesize_glyph_classesP21hb_ot_shape_context_t(PLT)
.L330:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #12]
	bl	_ZNK18hb_ot_shape_plan_t10substituteEP9hb_font_tP11hb_buffer_t(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r1, [r7, #12]
	bl	_Z30hb_ot_layout_substitute_finishP9hb_font_tP11hb_buffer_t(PLT)
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL24hb_ot_substitute_complexP21hb_ot_shape_context_t, .-_ZL24hb_ot_substitute_complexP21hb_ot_shape_context_t
	.section	.text._ZL16hb_ot_substituteP21hb_ot_shape_context_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL16hb_ot_substituteP21hb_ot_shape_context_t, %function
_ZL16hb_ot_substituteP21hb_ot_shape_context_t:
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
	bl	_ZL24hb_ot_substitute_defaultP21hb_ot_shape_context_t(PLT)
	ldr	r0, [r7, #4]
	bl	_ZL24hb_ot_substitute_complexP21hb_ot_shape_context_t(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL16hb_ot_substituteP21hb_ot_shape_context_t, .-_ZL16hb_ot_substituteP21hb_ot_shape_context_t
	.section	.text._ZL19adjust_mark_offsetsP19hb_glyph_position_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL19adjust_mark_offsetsP19hb_glyph_position_t, %function
_ZL19adjust_mark_offsetsP19hb_glyph_position_t:
	.fnstart
.LFB278:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	subs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	subs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZL19adjust_mark_offsetsP19hb_glyph_position_t, .-_ZL19adjust_mark_offsetsP19hb_glyph_position_t
	.section	.text._ZL15zero_mark_widthP19hb_glyph_position_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL15zero_mark_widthP19hb_glyph_position_t, %function
_ZL15zero_mark_widthP19hb_glyph_position_t:
	.fnstart
.LFB279:
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
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZL15zero_mark_widthP19hb_glyph_position_t, .-_ZL15zero_mark_widthP19hb_glyph_position_t
	.section	.text._ZL27zero_mark_widths_by_unicodeP11hb_buffer_tb,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL27zero_mark_widths_by_unicodeP11hb_buffer_tb, %function
_ZL27zero_mark_widths_by_unicodeP11hb_buffer_tb:
	.fnstart
.LFB280:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L336
.L339:
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL35_hb_glyph_info_get_general_categoryPK15hb_glyph_info_t(PLT)
	mov	r3, r0
	cmp	r3, #12
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L337
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L338
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #108]
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	mov	r0, r3
	bl	_ZL19adjust_mark_offsetsP19hb_glyph_position_t(PLT)
.L338:
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #108]
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	mov	r0, r3
	bl	_ZL15zero_mark_widthP19hb_glyph_position_t(PLT)
.L337:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L336:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bcc	.L339
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZL27zero_mark_widths_by_unicodeP11hb_buffer_tb, .-_ZL27zero_mark_widths_by_unicodeP11hb_buffer_tb
	.section	.text._ZL24zero_mark_widths_by_gdefP11hb_buffer_tb,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL24zero_mark_widths_by_gdefP11hb_buffer_tb, %function
_ZL24zero_mark_widths_by_gdefP11hb_buffer_tb:
	.fnstart
.LFB281:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L341
.L344:
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL22_hb_glyph_info_is_markPK15hb_glyph_info_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L342
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L343
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #108]
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	mov	r0, r3
	bl	_ZL19adjust_mark_offsetsP19hb_glyph_position_t(PLT)
.L343:
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #108]
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	mov	r0, r3
	bl	_ZL15zero_mark_widthP19hb_glyph_position_t(PLT)
.L342:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L341:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bcc	.L344
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZL24zero_mark_widths_by_gdefP11hb_buffer_tb, .-_ZL24zero_mark_widths_by_gdefP11hb_buffer_tb
	.section	.text._ZL22hb_ot_position_defaultP21hb_ot_shape_context_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL22hb_ot_position_defaultP21hb_ot_shape_context_t, %function
_ZL22hb_ot_position_defaultP21hb_ot_shape_context_t:
	.fnstart
.LFB282:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #44
	sub	sp, sp, #44
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #60]
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #88]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #100]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #108]
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L346
.L347:
	ldr	r3, [r7, #4]
	ldr	r0, [r3, #4]
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	ldr	r1, [r3]
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	mov	r4, r3
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [sp]
	ldr	r2, [r7, #24]
	mov	r3, r4
	bl	_ZN9hb_font_t31get_glyph_advance_for_directionEj14hb_direction_tPiS1_(PLT)
	ldr	r3, [r7, #4]
	ldr	r0, [r3, #4]
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	ldr	r1, [r3]
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	add	r4, r3, #8
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	adds	r3, r3, #12
	str	r3, [sp]
	ldr	r2, [r7, #24]
	mov	r3, r4
	bl	_ZN9hb_font_t35subtract_glyph_origin_for_directionEj14hb_direction_tPiS1_(PLT)
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L346:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcc	.L347
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZL22hb_ot_position_defaultP21hb_ot_shape_context_t, .-_ZL22hb_ot_position_defaultP21hb_ot_shape_context_t
	.section	.text._ZL22hb_ot_position_complexP21hb_ot_shape_context_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL22hb_ot_position_complexP21hb_ot_shape_context_t, %function
_ZL22hb_ot_position_complexP21hb_ot_shape_context_t:
	.fnstart
.LFB283:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #52
	sub	sp, sp, #52
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #39]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #88]
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r0, r3
	bl	hb_ot_layout_has_positioning(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	strb	r3, [r7, #23]
	ldrb	r3, [r7, #23]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L349
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L349
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #60]
	bic	r3, r3, #2
	cmp	r3, #5
	beq	.L349
	movs	r3, #1
	b	.L350
.L349:
	movs	r3, #0
.L350:
	strb	r3, [r7, #22]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	ldr	r3, [r3, #44]
	cmp	r3, #2
	beq	.L352
	b	.L353
.L352:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldrb	r3, [r7, #22]	@ zero_extendqisi2
	mov	r0, r2
	mov	r1, r3
	bl	_ZL24zero_mark_widths_by_gdefP11hb_buffer_tb(PLT)
	nop
.L353:
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L354
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #100]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #108]
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #32]
	b	.L355
.L356:
	ldr	r3, [r7, #4]
	ldr	r0, [r3, #4]
	ldr	r2, [r7, #32]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	ldr	r1, [r3]
	ldr	r2, [r7, #32]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	add	r4, r3, #8
	ldr	r2, [r7, #32]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	adds	r3, r3, #12
	str	r3, [sp]
	movs	r2, #4
	mov	r3, r4
	bl	_ZN9hb_font_t30add_glyph_origin_for_directionEj14hb_direction_tPiS1_(PLT)
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	str	r3, [r7, #32]
.L355:
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bcc	.L356
	ldr	r3, [r7, #4]
	ldr	r1, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	_ZNK18hb_ot_shape_plan_t8positionEP9hb_font_tP11hb_buffer_t(PLT)
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L357
.L358:
	ldr	r3, [r7, #4]
	ldr	r0, [r3, #4]
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	ldr	r1, [r3]
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	add	r4, r3, #8
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	adds	r3, r3, #12
	str	r3, [sp]
	movs	r2, #4
	mov	r3, r4
	bl	_ZN9hb_font_t35subtract_glyph_origin_for_directionEj14hb_direction_tPiS1_(PLT)
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L357:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bcc	.L358
	movs	r3, #1
	strb	r3, [r7, #39]
.L354:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	ldr	r3, [r3, #44]
	cmp	r3, #1
	beq	.L360
	cmp	r3, #3
	beq	.L361
	b	.L362
.L360:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldrb	r3, [r7, #22]	@ zero_extendqisi2
	mov	r0, r2
	mov	r1, r3
	bl	_ZL27zero_mark_widths_by_unicodeP11hb_buffer_tb(PLT)
	b	.L362
.L361:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldrb	r3, [r7, #22]	@ zero_extendqisi2
	mov	r0, r2
	mov	r1, r3
	bl	_ZL24zero_mark_widths_by_gdefP11hb_buffer_tb(PLT)
	nop
.L362:
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZL22hb_ot_position_complexP21hb_ot_shape_context_t, .-_ZL22hb_ot_position_complexP21hb_ot_shape_context_t
	.section	.text._ZL14hb_ot_positionP21hb_ot_shape_context_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL14hb_ot_positionP21hb_ot_shape_context_t, %function
_ZL14hb_ot_positionP21hb_ot_shape_context_t:
	.fnstart
.LFB284:
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
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mov	r0, r2
	mov	r1, r3
	bl	_Z27hb_ot_layout_position_startP9hb_font_tP11hb_buffer_t(PLT)
	ldr	r0, [r7, #4]
	bl	_ZL22hb_ot_position_defaultP21hb_ot_shape_context_t(PLT)
	ldr	r0, [r7, #4]
	bl	_ZL22hb_ot_position_complexP21hb_ot_shape_context_t(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mov	r0, r2
	mov	r1, r3
	bl	_Z28hb_ot_layout_position_finishP9hb_font_tP11hb_buffer_t(PLT)
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L365
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L365
	ldr	r3, [r7, #4]
	ldr	r1, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	_Z30_hb_ot_shape_fallback_positionPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t(PLT)
.L365:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #60]
	bic	r3, r3, #2
	cmp	r3, #5
	bne	.L366
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mov	r0, r3
	bl	hb_buffer_reverse(PLT)
.L366:
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L367
	ldr	r3, [r7, #4]
	ldr	r1, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	_Z26_hb_ot_shape_fallback_kernPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t(PLT)
.L367:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mov	r0, r3
	bl	_ZL35_hb_buffer_deallocate_gsubgpos_varsP11hb_buffer_t(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL14hb_ot_positionP21hb_ot_shape_context_t, .-_ZL14hb_ot_positionP21hb_ot_shape_context_t
	.section	.text._ZL29hb_ot_hide_default_ignorablesP21hb_ot_shape_context_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL29hb_ot_hide_default_ignorablesP21hb_ot_shape_context_t, %function
_ZL29hb_ot_hide_default_ignorablesP21hb_ot_shape_context_t:
	.fnstart
.LFB285:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #40
	sub	sp, sp, #40
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #48]
	and	r3, r3, #4
	cmp	r3, #0
	bne	.L368
	movs	r3, #0
	str	r3, [r7, #36]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #88]
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #100]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #108]
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L371
.L381:
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL22_hb_glyph_info_ligatedPK15hb_glyph_info_t(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L372
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L372
	movs	r3, #1
	b	.L373
.L372:
	movs	r3, #0
.L373:
	cmp	r3, #0
	beq	.L374
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L375
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	add	r3, r7, #12
	mov	r0, r2
	movs	r1, #32
	movs	r2, #0
	bl	_ZN9hb_font_t9get_glyphEjjPj(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L376
	movs	r3, #1
	b	.L377
.L376:
	movs	r3, #2
.L377:
	str	r3, [r7, #36]
.L375:
	ldr	r3, [r7, #36]
	cmp	r3, #1
	bne	.L378
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	ldr	r2, [r7, #12]
	str	r2, [r3]
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [r3]
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [r3, #4]
	b	.L374
.L378:
	b	.L379
.L374:
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	beq	.L380
	ldr	r2, [r7, #32]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	adds	r1, r2, r3
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	mov	r4, r1
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r2, [r7, #32]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #16]
	adds	r1, r2, r3
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	mov	r4, r1
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
.L380:
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	str	r3, [r7, #32]
.L379:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L371:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bcc	.L381
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r2, [r7, #32]
	str	r2, [r3, #88]
.L368:
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.fnend
	.size	_ZL29hb_ot_hide_default_ignorablesP21hb_ot_shape_context_t, .-_ZL29hb_ot_hide_default_ignorablesP21hb_ot_shape_context_t
	.section	.text._ZL20hb_ot_shape_internalP21hb_ot_shape_context_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL20hb_ot_shape_internalP21hb_ot_shape_context_t, %function
_ZL20hb_ot_shape_internalP21hb_ot_shape_context_t:
	.fnstart
.LFB286:
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
	ldr	r3, [r3, #12]
	mov	r0, r3
	bl	_ZN11hb_buffer_t18deallocate_var_allEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r2, [r3, #60]
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mov	r0, r3
	bl	_ZL32_hb_buffer_allocate_unicode_varsP11hb_buffer_t(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mov	r0, r3
	bl	_ZN11hb_buffer_t12clear_outputEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mov	r0, r3
	bl	_ZL20hb_set_unicode_propsP11hb_buffer_t(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r2
	mov	r1, r3
	bl	_ZL23hb_insert_dotted_circleP11hb_buffer_tP9hb_font_t(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mov	r0, r3
	bl	_ZL16hb_form_clustersP11hb_buffer_t(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mov	r0, r3
	bl	_ZL26hb_ensure_native_directionP11hb_buffer_t(PLT)
	ldr	r0, [r7, #4]
	bl	_ZL16hb_ot_substituteP21hb_ot_shape_context_t(PLT)
	ldr	r0, [r7, #4]
	bl	_ZL14hb_ot_positionP21hb_ot_shape_context_t(PLT)
	ldr	r0, [r7, #4]
	bl	_ZL29hb_ot_hide_default_ignorablesP21hb_ot_shape_context_t(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mov	r0, r3
	bl	_ZL34_hb_buffer_deallocate_unicode_varsP11hb_buffer_t(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #24]
	str	r2, [r3, #60]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mov	r0, r3
	bl	_ZN11hb_buffer_t18deallocate_var_allEv(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL20hb_ot_shape_internalP21hb_ot_shape_context_t, .-_ZL20hb_ot_shape_internalP21hb_ot_shape_context_t
	.section	.text._hb_ot_shape,"ax",%progbits
	.align	2
	.global	_hb_ot_shape
	.hidden	_hb_ot_shape
	.thumb
	.thumb_func
	.type	_hb_ot_shape, %function
_hb_ot_shape:
	.fnstart
.LFB287:
	@ args = 4, pretend = 0, frame = 48
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
	add	r3, r7, #20
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
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #88]
	str	r3, [r7, #20]
	ldr	r3, [r7, #8]
	str	r3, [r7, #24]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #52]
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	str	r3, [r7, #32]
	ldr	r3, [r7]
	str	r3, [r7, #36]
	ldr	r3, [r7, #56]
	str	r3, [r7, #40]
	add	r3, r7, #20
	mov	r0, r3
	bl	_ZL20hb_ot_shape_internalP21hb_ot_shape_context_t(PLT)
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_hb_ot_shape, .-_hb_ot_shape
	.section	.text.hb_ot_shape_plan_collect_lookups,"ax",%progbits
	.align	2
	.global	hb_ot_shape_plan_collect_lookups
	.thumb
	.thumb_func
	.type	hb_ot_shape_plan_collect_lookups, %function
hb_ot_shape_plan_collect_lookups:
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
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	adds	r3, r3, #88
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	_ZNK18hb_ot_shape_plan_t15collect_lookupsEjP8hb_set_t(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_ot_shape_plan_collect_lookups, .-hb_ot_shape_plan_collect_lookups
	.section	.text._ZL8add_charP9hb_font_tP18hb_unicode_funcs_tijP8hb_set_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL8add_charP9hb_font_tP18hb_unicode_funcs_tijP8hb_set_t, %function
_ZL8add_charP9hb_font_tP18hb_unicode_funcs_tijP8hb_set_t:
	.fnstart
.LFB289:
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
	add	r3, r7, #16
	ldr	r0, [r7, #12]
	ldr	r1, [r7]
	movs	r2, #0
	bl	_ZN9hb_font_t9get_glyphEjjPj(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L387
	ldr	r3, [r7, #16]
	ldr	r0, [r7, #32]
	mov	r1, r3
	bl	_ZN8hb_set_t3addEj(PLT)
.L387:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L386
	ldr	r0, [r7, #8]
	ldr	r1, [r7]
	bl	_ZN18hb_unicode_funcs_t9mirroringEj(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	cmp	r2, r3
	beq	.L389
	add	r3, r7, #16
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #20]
	movs	r2, #0
	bl	_ZN9hb_font_t9get_glyphEjjPj(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L389
	movs	r3, #1
	b	.L390
.L389:
	movs	r3, #0
.L390:
	cmp	r3, #0
	beq	.L391
	ldr	r3, [r7, #16]
	ldr	r0, [r7, #32]
	mov	r1, r3
	bl	_ZN8hb_set_t3addEj(PLT)
.L391:
.L386:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL8add_charP9hb_font_tP18hb_unicode_funcs_tijP8hb_set_t, .-_ZL8add_charP9hb_font_tP18hb_unicode_funcs_tijP8hb_set_t
	.section	.text._ZN18hb_ot_shape_plan_tC2Ev,"axG",%progbits,_ZN18hb_ot_shape_plan_tC5Ev,comdat
	.align	2
	.weak	_ZN18hb_ot_shape_plan_tC2Ev
	.thumb
	.thumb_func
	.type	_ZN18hb_ot_shape_plan_tC2Ev, %function
_ZN18hb_ot_shape_plan_tC2Ev:
	.fnstart
.LFB292:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	mov	r0, r3
	bl	_ZN11hb_ot_map_tC1Ev(PLT)
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN18hb_ot_shape_plan_tC2Ev, .-_ZN18hb_ot_shape_plan_tC2Ev
	.weak	_ZN18hb_ot_shape_plan_tC1Ev
	.thumb_set _ZN18hb_ot_shape_plan_tC1Ev,_ZN18hb_ot_shape_plan_tC2Ev
	.section	.rodata
	.align	2
.LC6:
	.ascii	"ot\000"
	.section	.text.hb_ot_shape_glyphs_closure,"ax",%progbits
	.align	2
	.global	hb_ot_shape_glyphs_closure
	.thumb
	.thumb_func
	.type	hb_ot_shape_glyphs_closure, %function
hb_ot_shape_glyphs_closure:
	.fnstart
.LFB290:
	@ args = 4, pretend = 0, frame = 17520
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #17408
	sub	sp, sp, #17408
	.pad #120
	sub	sp, sp, #120
	.setfp r7, sp, #8
	add	r7, sp, #8
	add	r4, r7, #112
	subs	r4, r4, #100
	str	r0, [r4]
	add	r0, r7, #112
	subs	r0, r0, #104
	str	r1, [r0]
	add	r1, r7, #112
	subs	r1, r1, #108
	str	r2, [r1]
	add	r2, r7, #112
	subs	r2, r2, #112
	str	r3, [r2]
	add	r3, r7, #112
	subs	r3, r3, #96
	mov	r0, r3
	bl	_ZN18hb_ot_shape_plan_tC1Ev(PLT)
	ldr	r3, .L401
.LPIC37:
	add	r3, pc
	add	r0, r7, #17408
	add	r0, r0, #84
	str	r3, [r0]
	movs	r3, #0
	add	r1, r7, #17408
	add	r1, r1, #88
	str	r3, [r1]
	add	r3, r7, #112
	subs	r3, r3, #100
	ldr	r3, [r3]
	ldr	r0, [r3, #52]
	add	r3, r7, #112
	subs	r3, r3, #104
	ldr	r3, [r3]
	add	r1, r3, #60
	add	r2, r7, #112
	subs	r2, r2, #108
	add	r3, r7, #112
	subs	r3, r3, #112
	add	r4, r7, #17408
	add	r4, r4, #84
	str	r4, [sp]
	ldr	r2, [r2]
	ldr	r3, [r3]
	bl	hb_shape_plan_create_cached(PLT)
	mov	r3, r0
	add	r2, r7, #17408
	add	r2, r2, #104
	str	r3, [r2]
	add	r3, r7, #112
	subs	r3, r3, #104
	ldr	r3, [r3]
	ldr	r3, [r3, #64]
	mov	r0, r3
	bl	hb_script_get_horizontal_direction(PLT)
	mov	r3, r0
	cmp	r3, #5
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	add	r0, r7, #17408
	add	r0, r0, #103
	strb	r3, [r0]
	add	r3, r7, #112
	subs	r3, r3, #104
	ldr	r3, [r3]
	ldr	r3, [r3, #88]
	add	r1, r7, #17408
	add	r1, r1, #96
	str	r3, [r1]
	add	r3, r7, #112
	subs	r3, r3, #104
	ldr	r3, [r3]
	ldr	r3, [r3, #100]
	add	r2, r7, #17408
	add	r2, r2, #92
	str	r3, [r2]
	movs	r3, #0
	add	r0, r7, #17408
	add	r0, r0, #108
	str	r3, [r0]
	b	.L396
.L397:
	add	r3, r7, #112
	subs	r3, r3, #104
	ldr	r3, [r3]
	ldr	r1, [r3, #44]
	add	r2, r7, #17408
	add	r2, r2, #103
	ldrb	r5, [r2]	@ zero_extendqisi2
	add	r3, r7, #17408
	add	r3, r3, #108
	ldr	r2, [r3]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r0, r7, #17408
	add	r0, r0, #92
	ldr	r2, [r0]
	add	r3, r3, r2
	ldr	r4, [r3]
	add	r3, r7, #112
	subs	r3, r3, #100
	add	r0, r7, #17536
	ldr	r2, [r0]
	str	r2, [sp]
	ldr	r0, [r3]
	mov	r2, r5
	mov	r3, r4
	bl	_ZL8add_charP9hb_font_tP18hb_unicode_funcs_tijP8hb_set_t(PLT)
	add	r1, r7, #17408
	add	r1, r1, #108
	ldr	r3, [r1]
	adds	r3, r3, #1
	add	r2, r7, #17408
	add	r2, r2, #108
	str	r3, [r2]
.L396:
	add	r3, r7, #17408
	add	r3, r3, #108
	ldr	r2, [r3]
	add	r0, r7, #17408
	add	r0, r0, #96
	ldr	r3, [r0]
	cmp	r2, r3
	bcc	.L397
	add	r3, r7, #1008
	mov	r0, r3
	bl	_ZN8hb_set_t4initEv(PLT)
	add	r3, r7, #1008
	add	r1, r7, #17408
	add	r1, r1, #104
	ldr	r0, [r1]
	movw	r1, #21826
	movt	r1, 18259
	mov	r2, r3
	bl	hb_ot_shape_plan_collect_lookups(PLT)
	add	r3, r7, #9216
	add	r3, r3, #48
	subs	r3, r3, #16
	mov	r0, r3
	bl	_ZN8hb_set_t4initEv(PLT)
.L400:
	add	r3, r7, #9216
	add	r3, r3, #48
	subs	r3, r3, #16
	mov	r0, r3
	add	r2, r7, #17536
	ldr	r1, [r2]
	bl	_ZN8hb_set_t3setEPKS_(PLT)
	mov	r3, #-1
	add	r0, r7, #17408
	add	r0, r0, #80
	str	r3, [r0]
	b	.L398
.L399:
	add	r3, r7, #112
	subs	r3, r3, #100
	ldr	r3, [r3]
	ldr	r2, [r3, #52]
	add	r1, r7, #17408
	add	r1, r1, #80
	ldr	r3, [r1]
	mov	r0, r2
	mov	r1, r3
	add	r3, r7, #17536
	ldr	r2, [r3]
	bl	hb_ot_layout_lookup_substitute_closure(PLT)
.L398:
	add	r2, r7, #1008
	add	r3, r7, #17408
	add	r3, r3, #80
	mov	r0, r2
	mov	r1, r3
	bl	hb_set_next(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L399
	add	r3, r7, #9216
	add	r3, r3, #48
	subs	r3, r3, #16
	mov	r0, r3
	add	r2, r7, #17536
	ldr	r1, [r2]
	bl	_ZNK8hb_set_t8is_equalEPKS_(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L400
	add	r3, r7, #17408
	add	r3, r3, #104
	ldr	r0, [r3]
	bl	hb_shape_plan_destroy(PLT)
	add	r7, r7, #17408
	adds	r7, r7, #112
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L402:
	.align	2
.L401:
	.word	.LC6-(.LPIC37+4)
	.fnend
	.size	hb_ot_shape_glyphs_closure, .-hb_ot_shape_glyphs_closure
	.section	.text._ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4initEv,"axG",%progbits,_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4initEv,comdat
	.align	2
	.weak	_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4initEv
	.thumb
	.thumb_func
	.type	_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4initEv, %function
_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4initEv:
	.fnstart
.LFB296:
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
	.section	.text._Z12hb_in_rangesIjEbT_S0_S0_S0_S0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z12hb_in_rangesIjEbT_S0_S0_S0_S0_, %function
_Z12hb_in_rangesIjEbT_S0_S0_S0_S0_:
	.fnstart
.LFB298:
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L405
	ldr	r0, [r7, #12]
	ldr	r1, [r7]
	ldr	r2, [r7, #24]
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L406
.L405:
	movs	r3, #1
	b	.L407
.L406:
	movs	r3, #0
.L407:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_Z12hb_in_rangesIjEbT_S0_S0_S0_S0_, .-_Z12hb_in_rangesIjEbT_S0_S0_S0_S0_
	.section	.text._Z11hb_in_rangeIjEbT_S0_S0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z11hb_in_rangeIjEbT_S0_S0_, %function
_Z11hb_in_rangeIjEbT_S0_S0_:
	.fnstart
.LFB299:
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
	.section	.text._Z12hb_in_rangesIjEbT_S0_S0_S0_S0_S0_S0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z12hb_in_rangesIjEbT_S0_S0_S0_S0_S0_S0_, %function
_Z12hb_in_rangesIjEbT_S0_S0_S0_S0_S0_S0_:
	.fnstart
.LFB300:
	@ args = 12, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L412
	ldr	r0, [r7, #12]
	ldr	r1, [r7]
	ldr	r2, [r7, #24]
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L412
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #28]
	ldr	r2, [r7, #32]
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L413
.L412:
	movs	r3, #1
	b	.L414
.L413:
	movs	r3, #0
.L414:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_Z12hb_in_rangesIjEbT_S0_S0_S0_S0_S0_S0_, .-_Z12hb_in_rangesIjEbT_S0_S0_S0_S0_S0_S0_
	.section	.text._ZNK21hb_prealloced_array_tIN11hb_ot_map_t13feature_map_tELj8EE7bsearchIjEEPKS1_PT_,"axG",%progbits,_ZNK21hb_prealloced_array_tIN11hb_ot_map_t13feature_map_tELj8EE7bsearchIjEEPKS1_PT_,comdat
	.align	2
	.weak	_ZNK21hb_prealloced_array_tIN11hb_ot_map_t13feature_map_tELj8EE7bsearchIjEEPKS1_PT_
	.thumb
	.thumb_func
	.type	_ZNK21hb_prealloced_array_tIN11hb_ot_map_t13feature_map_tELj8EE7bsearchIjEEPKS1_PT_, %function
_ZNK21hb_prealloced_array_tIN11hb_ot_map_t13feature_map_tELj8EE7bsearchIjEEPKS1_PT_:
	.fnstart
.LFB301:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, .L418
.LPIC38:
	add	r0, pc
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r1, .L418+4
	ldr	r1, [r0, r1]
	str	r1, [sp]
	ldr	r0, [r7]
	mov	r1, r2
	mov	r2, r3
	movs	r3, #36
	bl	bsearch(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L419:
	.align	2
.L418:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC38+4)
	.word	_ZN11hb_ot_map_t13feature_map_t3cmpEPKS0_S2_(GOT)
	.fnend
	.size	_ZNK21hb_prealloced_array_tIN11hb_ot_map_t13feature_map_tELj8EE7bsearchIjEEPKS1_PT_, .-_ZNK21hb_prealloced_array_tIN11hb_ot_map_t13feature_map_tELj8EE7bsearchIjEEPKS1_PT_
	.section	.text._ZN21hb_prealloced_array_tIN11hb_ot_map_t13feature_map_tELj8EE6finishEv,"axG",%progbits,_ZN21hb_prealloced_array_tIN11hb_ot_map_t13feature_map_tELj8EE6finishEv,comdat
	.align	2
	.weak	_ZN21hb_prealloced_array_tIN11hb_ot_map_t13feature_map_tELj8EE6finishEv
	.thumb
	.thumb_func
	.type	_ZN21hb_prealloced_array_tIN11hb_ot_map_t13feature_map_tELj8EE6finishEv, %function
_ZN21hb_prealloced_array_tIN11hb_ot_map_t13feature_map_tELj8EE6finishEv:
	.fnstart
.LFB304:
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
	beq	.L421
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r0, r3
	bl	free(PLT)
.L421:
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
	.size	_ZN21hb_prealloced_array_tIN11hb_ot_map_t13feature_map_tELj8EE6finishEv, .-_ZN21hb_prealloced_array_tIN11hb_ot_map_t13feature_map_tELj8EE6finishEv
	.section	.text._ZN21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EE6finishEv,"axG",%progbits,_ZN21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EE6finishEv,comdat
	.align	2
	.weak	_ZN21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EE6finishEv
	.thumb
	.thumb_func
	.type	_ZN21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EE6finishEv, %function
_ZN21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EE6finishEv:
	.fnstart
.LFB305:
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
	beq	.L423
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r0, r3
	bl	free(PLT)
.L423:
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
	.size	_ZN21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EE6finishEv, .-_ZN21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EE6finishEv
	.section	.text._ZN21hb_prealloced_array_tIN11hb_ot_map_t11stage_map_tELj4EE6finishEv,"axG",%progbits,_ZN21hb_prealloced_array_tIN11hb_ot_map_t11stage_map_tELj4EE6finishEv,comdat
	.align	2
	.weak	_ZN21hb_prealloced_array_tIN11hb_ot_map_t11stage_map_tELj4EE6finishEv
	.thumb
	.thumb_func
	.type	_ZN21hb_prealloced_array_tIN11hb_ot_map_t11stage_map_tELj4EE6finishEv, %function
_ZN21hb_prealloced_array_tIN11hb_ot_map_t11stage_map_tELj4EE6finishEv:
	.fnstart
.LFB306:
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
	beq	.L425
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r0, r3
	bl	free(PLT)
.L425:
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
	.size	_ZN21hb_prealloced_array_tIN11hb_ot_map_t11stage_map_tELj4EE6finishEv, .-_ZN21hb_prealloced_array_tIN11hb_ot_map_t11stage_map_tELj4EE6finishEv
	.section	.text._ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EE6finishEv,"axG",%progbits,_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EE6finishEv,comdat
	.align	2
	.weak	_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EE6finishEv
	.thumb
	.thumb_func
	.type	_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EE6finishEv, %function
_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EE6finishEv:
	.fnstart
.LFB307:
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
	beq	.L427
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r0, r3
	bl	free(PLT)
.L427:
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
	.size	_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EE6finishEv, .-_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EE6finishEv
	.section	.text._ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t12stage_info_tELj8EE6finishEv,"axG",%progbits,_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t12stage_info_tELj8EE6finishEv,comdat
	.align	2
	.weak	_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t12stage_info_tELj8EE6finishEv
	.thumb
	.thumb_func
	.type	_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t12stage_info_tELj8EE6finishEv, %function
_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t12stage_info_tELj8EE6finishEv:
	.fnstart
.LFB308:
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
	beq	.L429
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r0, r3
	bl	free(PLT)
.L429:
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
	.size	_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t12stage_info_tELj8EE6finishEv, .-_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t12stage_info_tELj8EE6finishEv
	.section	.text._Z14hb_object_initI8hb_set_tEvPT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z14hb_object_initI8hb_set_tEvPT_, %function
_Z14hb_object_initI8hb_set_tEvPT_:
	.fnstart
.LFB309:
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
.LFB310:
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
	.section	.text._Z12ARRAY_LENGTHIjLj5EEjRAT0__KT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z12ARRAY_LENGTHIjLj5EEjRAT0__KT_, %function
_Z12ARRAY_LENGTHIjLj5EEjRAT0__KT_:
	.fnstart
.LFB312:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #5
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_Z12ARRAY_LENGTHIjLj5EEjRAT0__KT_, .-_Z12ARRAY_LENGTHIjLj5EEjRAT0__KT_
	.section	.text._Z12ARRAY_LENGTHIjLj6EEjRAT0__KT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z12ARRAY_LENGTHIjLj6EEjRAT0__KT_, %function
_Z12ARRAY_LENGTHIjLj6EEjRAT0__KT_:
	.fnstart
.LFB313:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #6
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_Z12ARRAY_LENGTHIjLj6EEjRAT0__KT_, .-_Z12ARRAY_LENGTHIjLj6EEjRAT0__KT_
	.section	.text._Z12ARRAY_LENGTHIjLj1EEjRAT0__KT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z12ARRAY_LENGTHIjLj1EEjRAT0__KT_, %function
_Z12ARRAY_LENGTHIjLj1EEjRAT0__KT_:
	.fnstart
.LFB314:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_Z12ARRAY_LENGTHIjLj1EEjRAT0__KT_, .-_Z12ARRAY_LENGTHIjLj1EEjRAT0__KT_
	.section	.text._ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4initEv,"axG",%progbits,_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4initEv,comdat
	.align	2
	.weak	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4initEv
	.thumb
	.thumb_func
	.type	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4initEv, %function
_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4initEv:
	.fnstart
.LFB315:
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
	.section	.rodata._ZL10table_tags,"a",%progbits
	.align	2
	.type	_ZL10table_tags, %object
	.size	_ZL10table_tags, 8
_ZL10table_tags:
	.word	1196643650
	.word	1196445523
	.hidden	_ZN11hb_buffer_t18deallocate_var_allEv
	.hidden	_Z26_hb_ot_shape_fallback_kernPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t
	.hidden	_Z30_hb_ot_shape_fallback_positionPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t
	.hidden	_Z28hb_ot_layout_position_finishP9hb_font_tP11hb_buffer_t
	.hidden	_Z27hb_ot_layout_position_startP9hb_font_tP11hb_buffer_t
	.hidden	_Z30hb_ot_layout_substitute_finishP9hb_font_tP11hb_buffer_t
	.hidden	_Z29hb_ot_layout_substitute_startP9hb_font_tP11hb_buffer_t
	.hidden	_Z49_hb_ot_shape_fallback_position_recategorize_marksPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t
	.hidden	_Z22_hb_ot_shape_normalizePK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t
	.hidden	_ZN11hb_buffer_t9set_masksEjjjj
	.hidden	_ZN11hb_buffer_t14merge_clustersEjj
	.hidden	_ZN11hb_buffer_t12swap_buffersEv
	.hidden	_ZN11hb_buffer_t11output_infoERK15hb_glyph_info_t
	.hidden	_ZN11hb_buffer_t12clear_outputEv
	.hidden	_Z21_hb_ot_layout_destroyP14hb_ot_layout_t
	.hidden	_Z20_hb_ot_layout_createP9hb_face_t
	.hidden	_hb_ot_complex_shaper_sea
	.hidden	_hb_ot_complex_shaper_myanmar_old
	.hidden	_hb_ot_complex_shaper_myanmar
	.hidden	_hb_ot_complex_shaper_indic
	.hidden	_hb_ot_complex_shaper_hebrew
	.hidden	_hb_ot_complex_shaper_tibetan
	.hidden	_hb_ot_complex_shaper_hangul
	.hidden	_hb_ot_complex_shaper_thai
	.hidden	_hb_ot_complex_shaper_arabic
	.hidden	_hb_ot_complex_shaper_default
	.hidden	_ZN19hb_ot_map_builder_t7compileER11hb_ot_map_t
	.hidden	_ZN19hb_ot_map_builder_tC1EP9hb_face_tPK23hb_segment_properties_t
	.hidden	_ZNK11hb_ot_map_t8positionEPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t
	.hidden	_ZNK11hb_ot_map_t10substituteEPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t
	.hidden	_ZNK11hb_ot_map_t15collect_lookupsEjP8hb_set_t
	.hidden	_ZN11hb_buffer_t14deallocate_varEjjPKc
	.hidden	_ZN11hb_buffer_t12allocate_varEjjPKc
	.hidden	_ZN19hb_ot_map_builder_t11add_featureEjj25hb_ot_map_feature_flags_t
	.hidden	_ZN11hb_buffer_t13make_room_forEjj
	.hidden	_hb_modified_combining_class
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
