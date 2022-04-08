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
	.file	"hb-ot-shape-complex-arabic.cc"
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
	.section	.text._ZN11hb_ot_map_t13feature_map_t3cmpEPKS0_S2_,"axG",%progbits,_ZN11hb_ot_map_t13feature_map_t3cmpEPKS0_S2_,comdat
	.align	2
	.weak	_ZN11hb_ot_map_t13feature_map_t3cmpEPKS0_S2_
	.thumb
	.thumb_func
	.type	_ZN11hb_ot_map_t13feature_map_t3cmpEPKS0_S2_, %function
_ZN11hb_ot_map_t13feature_map_t3cmpEPKS0_S2_:
	.fnstart
.LFB112:
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
	bcc	.L5
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3]
	cmp	r2, r3
	bls	.L6
	movs	r3, #1
	b	.L8
.L6:
	movs	r3, #0
	b	.L8
.L5:
	mov	r3, #-1
.L8:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN11hb_ot_map_t13feature_map_t3cmpEPKS0_S2_, .-_ZN11hb_ot_map_t13feature_map_t3cmpEPKS0_S2_
	.section	.text._ZNK11hb_ot_map_t14needs_fallbackEj,"axG",%progbits,_ZNK11hb_ot_map_t14needs_fallbackEj,comdat
	.align	2
	.weak	_ZNK11hb_ot_map_t14needs_fallbackEj
	.thumb
	.thumb_func
	.type	_ZNK11hb_ot_map_t14needs_fallbackEj, %function
_ZNK11hb_ot_map_t14needs_fallbackEj:
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
	beq	.L11
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #32]
	ubfx	r3, r3, #0, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L11
	movs	r3, #1
	b	.L12
.L11:
	movs	r3, #0
.L12:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK11hb_ot_map_t14needs_fallbackEj, .-_ZNK11hb_ot_map_t14needs_fallbackEj
	.section	.text._ZNK11hb_ot_map_t10get_1_maskEj,"axG",%progbits,_ZNK11hb_ot_map_t10get_1_maskEj,comdat
	.align	2
	.weak	_ZNK11hb_ot_map_t10get_1_maskEj
	.thumb
	.thumb_func
	.type	_ZNK11hb_ot_map_t10get_1_maskEj, %function
_ZNK11hb_ot_map_t10get_1_maskEj:
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
	add	r2, r3, #16
	mov	r3, r7
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK21hb_prealloced_array_tIN11hb_ot_map_t13feature_map_tELj8EE7bsearchIjEEPKS1_PT_(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L15
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	b	.L16
.L15:
	movs	r3, #0
.L16:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK11hb_ot_map_t10get_1_maskEj, .-_ZNK11hb_ot_map_t10get_1_maskEj
	.section	.text._Zor25hb_ot_map_feature_flags_tS_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Zor25hb_ot_map_feature_flags_tS_, %function
_Zor25hb_ot_map_feature_flags_tS_:
	.fnstart
.LFB125:
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
	.section	.text._ZN19hb_ot_map_builder_t14add_gsub_pauseEPFvPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tE,"axG",%progbits,_ZN19hb_ot_map_builder_t14add_gsub_pauseEPFvPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tE,comdat
	.align	2
	.weak	_ZN19hb_ot_map_builder_t14add_gsub_pauseEPFvPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tE
	.thumb
	.thumb_func
	.type	_ZN19hb_ot_map_builder_t14add_gsub_pauseEPFvPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tE, %function
_ZN19hb_ot_map_builder_t14add_gsub_pauseEPFvPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tE:
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
	movs	r1, #0
	ldr	r2, [r7]
	bl	_ZN19hb_ot_map_builder_t9add_pauseEjPFvPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tE(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN19hb_ot_map_builder_t14add_gsub_pauseEPFvPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tE, .-_ZN19hb_ot_map_builder_t14add_gsub_pauseEPFvPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tE
	.section	.text._ZN33hb_ot_layout_lookup_accelerator_t4finiEv,"axG",%progbits,_ZN33hb_ot_layout_lookup_accelerator_t4finiEv,comdat
	.align	2
	.weak	_ZN33hb_ot_layout_lookup_accelerator_t4finiEv
	.thumb
	.thumb_func
	.type	_ZN33hb_ot_layout_lookup_accelerator_t4finiEv, %function
_ZN33hb_ot_layout_lookup_accelerator_t4finiEv:
	.fnstart
.LFB211:
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
	.size	_ZN33hb_ot_layout_lookup_accelerator_t4finiEv, .-_ZN33hb_ot_layout_lookup_accelerator_t4finiEv
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
	.section	.text._ZL21_hb_glyph_info_is_zwjPK15hb_glyph_info_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL21_hb_glyph_info_is_zwjPK15hb_glyph_info_t, %function
_ZL21_hb_glyph_info_is_zwjPK15hb_glyph_info_t:
	.fnstart
.LFB219:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
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
	.size	_ZL21_hb_glyph_info_is_zwjPK15hb_glyph_info_t, .-_ZL21_hb_glyph_info_is_zwjPK15hb_glyph_info_t
	.section	.text._ZL27_hb_glyph_info_flip_joinersP15hb_glyph_info_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL27_hb_glyph_info_flip_joinersP15hb_glyph_info_t, %function
_ZL27_hb_glyph_info_flip_joinersP15hb_glyph_info_t:
	.fnstart
.LFB220:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	eor	r3, r3, #96
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3, #16]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZL27_hb_glyph_info_flip_joinersP15hb_glyph_info_t, .-_ZL27_hb_glyph_info_flip_joinersP15hb_glyph_info_t
	.section	.text._ZL12joining_typej,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL12joining_typej, %function
_ZL12joining_typej:
	.fnstart
.LFB258:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	lsrs	r3, r3, #12
	cmp	r3, #16
	bhi	.L45
	adr	r1, .L31
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L31:
	.word	.L30+1-.L31
	.word	.L32+1-.L31
	.word	.L33+1-.L31
	.word	.L45+1-.L31
	.word	.L45+1-.L31
	.word	.L45+1-.L31
	.word	.L45+1-.L31
	.word	.L45+1-.L31
	.word	.L45+1-.L31
	.word	.L45+1-.L31
	.word	.L34+1-.L31
	.word	.L45+1-.L31
	.word	.L45+1-.L31
	.word	.L45+1-.L31
	.word	.L45+1-.L31
	.word	.L45+1-.L31
	.word	.L35+1-.L31
.L30:
	ldr	r0, [r7, #4]
	mov	r1, #1536
	movw	r2, #2226
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L36
	ldr	r3, [r7, #4]
	sub	r3, r3, #1536
	ldr	r2, .L46
.LPIC0:
	add	r2, pc
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	b	.L37
.L36:
	b	.L38
.L32:
	ldr	r0, [r7, #4]
	movw	r1, #6150
	movw	r2, #6314
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L39
	ldr	r3, [r7, #4]
	sub	r3, r3, #5440
	subs	r3, r3, #19
	ldr	r2, .L46+4
.LPIC1:
	add	r2, pc
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	b	.L37
.L39:
	b	.L38
.L33:
	ldr	r0, [r7, #4]
	movw	r1, #8204
	movw	r2, #8205
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L40
	ldr	r3, [r7, #4]
	sub	r3, r3, #7328
	subs	r3, r3, #20
	ldr	r2, .L46+8
.LPIC2:
	add	r2, pc
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	b	.L37
.L40:
	ldr	r0, [r7, #4]
	movw	r1, #8294
	movw	r2, #8297
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L41
	ldr	r3, [r7, #4]
	sub	r3, r3, #7424
	subs	r3, r3, #12
	ldr	r2, .L46+12
.LPIC3:
	add	r2, pc
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	b	.L37
.L41:
	b	.L38
.L34:
	ldr	r0, [r7, #4]
	movw	r1, #43072
	movw	r2, #43123
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L42
	ldr	r3, [r7, #4]
	sub	r3, r3, #41984
	subs	r3, r3, #226
	ldr	r2, .L46+16
.LPIC4:
	add	r2, pc
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	b	.L37
.L42:
	b	.L38
.L35:
	ldr	r0, [r7, #4]
	mov	r1, #2752
	movt	r1, 1
	movw	r2, #2799
	movt	r2, 1
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L43
	ldr	r3, [r7, #4]
	sub	r3, r3, #67072
	sub	r3, r3, #302
	ldr	r2, .L46+20
.LPIC5:
	add	r2, pc
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	b	.L37
.L43:
	ldr	r0, [r7, #4]
	mov	r1, #2944
	movt	r1, 1
	movw	r2, #2991
	movt	r2, 1
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L44
	ldr	r3, [r7, #4]
	sub	r3, r3, #67072
	sub	r3, r3, #446
	ldr	r2, .L46+24
.LPIC6:
	add	r2, pc
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	b	.L37
.L44:
	b	.L38
.L45:
	nop
.L38:
	movs	r3, #8
.L37:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L47:
	.align	2
.L46:
	.word	_ZL13joining_table-(.LPIC0+4)
	.word	_ZL13joining_table-(.LPIC1+4)
	.word	_ZL13joining_table-(.LPIC2+4)
	.word	_ZL13joining_table-(.LPIC3+4)
	.word	_ZL13joining_table-(.LPIC4+4)
	.word	_ZL13joining_table-(.LPIC5+4)
	.word	_ZL13joining_table-(.LPIC6+4)
	.cantunwind
	.fnend
	.size	_ZL12joining_typej, .-_ZL12joining_typej
	.section	.text._ZL16get_joining_typej29hb_unicode_general_category_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL16get_joining_typej29hb_unicode_general_category_t, %function
_ZL16get_joining_typej29hb_unicode_general_category_t:
	.fnstart
.LFB259:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	bl	_ZL12joining_typej(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #8
	beq	.L49
	ldr	r3, [r7, #12]
	b	.L50
.L49:
	ldr	r3, [r7]
	movw	r2, #6146
	asr	r3, r2, r3
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L51
	movs	r3, #7
	b	.L52
.L51:
	movs	r3, #0
.L52:
.L50:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZL16get_joining_typej29hb_unicode_general_category_t, .-_ZL16get_joining_typej29hb_unicode_general_category_t
	.section	.text._ZL23collect_features_arabicP21hb_ot_shape_planner_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL23collect_features_arabicP21hb_ot_shape_planner_t, %function
_ZL23collect_features_arabicP21hb_ot_shape_planner_t:
	.fnstart
.LFB260:
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
	adds	r3, r3, #28
	str	r3, [r7, #16]
	ldr	r0, [r7, #16]
	ldr	r3, .L61
.LPIC7:
	add	r3, pc
	mov	r1, r3
	bl	_ZN19hb_ot_map_builder_t14add_gsub_pauseEPFvPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tE(PLT)
	ldr	r0, [r7, #16]
	movw	r1, #28016
	movt	r1, 25443
	bl	_ZN19hb_ot_map_builder_t23add_global_bool_featureEj(PLT)
	ldr	r0, [r7, #16]
	movw	r1, #25452
	movt	r1, 27759
	bl	_ZN19hb_ot_map_builder_t23add_global_bool_featureEj(PLT)
	ldr	r0, [r7, #16]
	movs	r1, #0
	bl	_ZN19hb_ot_map_builder_t14add_gsub_pauseEPFvPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tE(PLT)
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L54
.L59:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	movw	r3, #24930
	movt	r3, 16754
	cmp	r2, r3
	bne	.L55
	ldr	r3, .L61+4
.LPIC8:
	add	r3, pc
	ldr	r2, [r7, #20]
	ldr	r3, [r3, r2, lsl #2]
	uxtb	r3, r3
	mov	r0, r3
	movs	r1, #50
	movs	r2, #51
	bl	_Z11hb_in_rangeIhEbT_S0_S0_(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L55
	movs	r3, #1
	b	.L56
.L55:
	movs	r3, #0
.L56:
	strb	r3, [r7, #15]
	ldr	r3, .L61+8
.LPIC9:
	add	r3, pc
	ldr	r2, [r7, #20]
	ldr	r2, [r3, r2, lsl #2]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L57
	movs	r3, #2
	b	.L58
.L57:
	movs	r3, #0
.L58:
	ldr	r0, [r7, #16]
	mov	r1, r2
	movs	r2, #1
	bl	_ZN19hb_ot_map_builder_t11add_featureEjj25hb_ot_map_feature_flags_t(PLT)
	ldr	r0, [r7, #16]
	movs	r1, #0
	bl	_ZN19hb_ot_map_builder_t14add_gsub_pauseEPFvPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tE(PLT)
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L54:
	ldr	r3, [r7, #20]
	cmp	r3, #6
	bls	.L59
	movs	r0, #1
	movs	r1, #2
	bl	_Zor25hb_ot_map_feature_flags_tS_(PLT)
	mov	r3, r0
	ldr	r0, [r7, #16]
	movw	r1, #26983
	movt	r1, 29292
	movs	r2, #1
	bl	_ZN19hb_ot_map_builder_t11add_featureEjj25hb_ot_map_feature_flags_t(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	movw	r3, #24930
	movt	r3, 16754
	cmp	r2, r3
	bne	.L60
	ldr	r0, [r7, #16]
	ldr	r3, .L61+12
.LPIC10:
	add	r3, pc
	mov	r1, r3
	bl	_ZN19hb_ot_map_builder_t14add_gsub_pauseEPFvPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tE(PLT)
.L60:
	ldr	r0, [r7, #16]
	movw	r1, #27764
	movt	r1, 25441
	bl	_ZN19hb_ot_map_builder_t23add_global_bool_featureEj(PLT)
	ldr	r0, [r7, #16]
	movs	r1, #0
	bl	_ZN19hb_ot_map_builder_t14add_gsub_pauseEPFvPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tE(PLT)
	ldr	r0, [r7, #16]
	movw	r1, #25972
	movt	r1, 28019
	bl	_ZN19hb_ot_map_builder_t23add_global_bool_featureEj(PLT)
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L62:
	.align	2
.L61:
	.word	_ZL12nuke_joinersPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t-(.LPIC7+4)
	.word	_ZL15arabic_features-(.LPIC8+4)
	.word	_ZL15arabic_features-(.LPIC9+4)
	.word	_ZL21arabic_fallback_shapePK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t-(.LPIC10+4)
	.fnend
	.size	_ZL23collect_features_arabicP21hb_ot_shape_planner_t, .-_ZL23collect_features_arabicP21hb_ot_shape_planner_t
	.section	.bss._ZN2OTL9_NullPoolE,"aw",%nobits
	.align	2
	.type	_ZN2OTL9_NullPoolE, %object
	.size	_ZN2OTL9_NullPoolE, 264
_ZN2OTL9_NullPoolE:
	.space	264
	.section	.text._ZN2OT22hb_serialize_context_tC2EPvj,"axG",%progbits,_ZN2OT22hb_serialize_context_tC5EPvj,comdat
	.align	2
	.weak	_ZN2OT22hb_serialize_context_tC2EPvj
	.thumb
	.thumb_func
	.type	_ZN2OT22hb_serialize_context_tC2EPvj, %function
_ZN2OT22hb_serialize_context_tC2EPvj:
	.fnstart
.LFB285:
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
	ldr	r2, [r7, #8]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #16]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN2OT22hb_serialize_context_tC2EPvj, .-_ZN2OT22hb_serialize_context_tC2EPvj
	.weak	_ZN2OT22hb_serialize_context_tC1EPvj
	.thumb_set _ZN2OT22hb_serialize_context_tC1EPvj,_ZN2OT22hb_serialize_context_tC2EPvj
	.section	.rodata
	.align	2
.LC0:
	.ascii	"RAN OUT OF ROOM\000"
	.align	2
.LC1:
	.ascii	"did not ran out of room\000"
	.align	2
.LC2:
	.ascii	"SERIALIZE\000"
	.align	2
.LC3:
	.ascii	"end [%p..%p] serialized %d bytes; %s\000"
	.section	.text._ZN2OT22hb_serialize_context_t13end_serializeEv,"axG",%progbits,_ZN2OT22hb_serialize_context_t13end_serializeEv,comdat
	.align	2
	.weak	_ZN2OT22hb_serialize_context_t13end_serializeEv
	.thumb
	.thumb_func
	.type	_ZN2OT22hb_serialize_context_t13end_serializeEv, %function
_ZN2OT22hb_serialize_context_t13end_serializeEv:
	.fnstart
.LFB288:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #32
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r0, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mov	r1, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	subs	r1, r1, r3
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L67
	ldr	r3, .L69
.LPIC11:
	add	r3, pc
	b	.L68
.L67:
	ldr	r3, .L69+4
.LPIC12:
	add	r3, pc
.L68:
	movs	r5, #0
	str	r5, [sp]
	mov	r5, #-1
	str	r5, [sp, #4]
	ldr	r5, .L69+8
.LPIC13:
	add	r5, pc
	str	r5, [sp, #8]
	str	r4, [sp, #12]
	str	r0, [sp, #16]
	str	r1, [sp, #20]
	str	r3, [sp, #24]
	ldr	r3, .L69+12
.LPIC14:
	add	r3, pc
	mov	r0, r3
	mov	r1, r2
	movs	r2, #0
	movs	r3, #1
	bl	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L70:
	.align	2
.L69:
	.word	.LC0-(.LPIC11+4)
	.word	.LC1-(.LPIC12+4)
	.word	.LC3-(.LPIC13+4)
	.word	.LC2-(.LPIC14+4)
	.cantunwind
	.fnend
	.size	_ZN2OT22hb_serialize_context_t13end_serializeEv, .-_ZN2OT22hb_serialize_context_t13end_serializeEv
	.section	.text._ZN2OTL4NullINS_11RangeRecordEEERKT_v,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL4NullINS_11RangeRecordEEERKT_v, %function
_ZN2OTL4NullINS_11RangeRecordEEERKT_v:
	.fnstart
.LFB381:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r3, .L73
.LPIC15:
	add	r3, pc
	mov	r0, r3
	bl	_ZN2OTL5CastPINS_11RangeRecordEcEEPKT_PKT0_(PLT)
	mov	r3, r0
	mov	r0, r3
	pop	{r7, pc}
.L74:
	.align	2
.L73:
	.word	_ZN2OTL16_NullRangeRecordE-(.LPIC15+4)
	.cantunwind
	.fnend
	.size	_ZN2OTL4NullINS_11RangeRecordEEERKT_v, .-_ZN2OTL4NullINS_11RangeRecordEEERKT_v
	.section	.text._ZNK2OT6Lookup18get_subtable_countEv,"axG",%progbits,_ZNK2OT6Lookup18get_subtable_countEv,comdat
	.align	2
	.weak	_ZNK2OT6Lookup18get_subtable_countEv
	.thumb
	.thumb_func
	.type	_ZNK2OT6Lookup18get_subtable_countEv, %function
_ZNK2OT6Lookup18get_subtable_countEv:
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
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT6Lookup18get_subtable_countEv, .-_ZNK2OT6Lookup18get_subtable_countEv
	.section	.text._ZNK2OT6Lookup8get_typeEv,"axG",%progbits,_ZNK2OT6Lookup8get_typeEv,comdat
	.align	2
	.weak	_ZNK2OT6Lookup8get_typeEv
	.thumb
	.thumb_func
	.type	_ZNK2OT6Lookup8get_typeEv, %function
_ZNK2OT6Lookup8get_typeEv:
	.fnstart
.LFB421:
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
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT6Lookup8get_typeEv, .-_ZNK2OT6Lookup8get_typeEv
	.section	.rodata
	.align	2
.LC4:
	.ascii	"\000"
	.section	.text._ZN2OT6Lookup9serializeEPNS_22hb_serialize_context_tEjjj,"axG",%progbits,_ZN2OT6Lookup9serializeEPNS_22hb_serialize_context_tEjjj,comdat
	.align	2
	.weak	_ZN2OT6Lookup9serializeEPNS_22hb_serialize_context_tEjjj
	.thumb
	.thumb_func
	.type	_ZN2OT6Lookup9serializeEPNS_22hb_serialize_context_tEjjj, %function
_ZN2OT6Lookup9serializeEPNS_22hb_serialize_context_tEjjj:
	.fnstart
.LFB423:
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
	ldr	r3, [r7, #8]
	add	r2, r7, #16
	ldr	r1, .L85
.LPIC16:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L85+4
.LPIC17:
	add	r1, pc
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L85+8
.LPIC18:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #8]
	bl	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z(PLT)
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #12]
	bl	_ZN2OT22hb_serialize_context_t10extend_minINS_6LookupEEEPT_RS3_(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L80
	add	r3, r7, #16
	mov	r0, r3
	movs	r1, #0
	movw	r2, #586
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L84
.L80:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	uxth	r3, r3
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OT7IntTypeItLj2EE3setEt(PLT)
	ldr	r3, [r7, #12]
	adds	r2, r3, #2
	ldr	r3, [r7]
	uxth	r3, r3
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OT7IntTypeItLj2EE3setEt(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #4
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #32]
	bl	_ZN2OT7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES3_E9serializeEPNS_22hb_serialize_context_tEj(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L82
	add	r3, r7, #16
	mov	r0, r3
	movs	r1, #0
	movw	r2, #589
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L84
.L82:
	ldr	r3, [r7, #12]
	adds	r3, r3, #2
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	and	r3, r3, #16
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L83
	ldr	r3, [r7, #12]
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZN2OTL11StructAfterINS_7IntTypeItLj2EEENS_7ArrayOfINS_6OffsetIS2_EES2_EEEERT_RT0_(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7]
	lsrs	r3, r3, #16
	uxth	r3, r3
	ldr	r0, [r7, #20]
	mov	r1, r3
	bl	_ZN2OT7IntTypeItLj2EE3setEt(PLT)
.L83:
	add	r3, r7, #16
	mov	r0, r3
	movs	r1, #1
	movw	r2, #595
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
.L84:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L86:
	.align	2
.L85:
	.word	_ZZN2OT6Lookup9serializeEPNS_22hb_serialize_context_tEjjjE19__PRETTY_FUNCTION__-(.LPIC16+4)
	.word	.LC4-(.LPIC17+4)
	.word	.LC2-(.LPIC18+4)
	.fnend
	.size	_ZN2OT6Lookup9serializeEPNS_22hb_serialize_context_tEjjj, .-_ZN2OT6Lookup9serializeEPNS_22hb_serialize_context_tEjjj
	.section	.text._ZN2OT15CoverageFormat19serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEEj,"axG",%progbits,_ZN2OT15CoverageFormat19serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEEj,comdat
	.align	2
	.weak	_ZN2OT15CoverageFormat19serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEEj
	.thumb
	.thumb_func
	.type	_ZN2OT15CoverageFormat19serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEEj, %function
_ZN2OT15CoverageFormat19serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEEj:
	.fnstart
.LFB428:
	@ args = 0, pretend = 0, frame = 24
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
	ldr	r3, [r7, #8]
	add	r2, r7, #16
	ldr	r1, .L94
.LPIC19:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L94+4
.LPIC20:
	add	r1, pc
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L94+8
.LPIC21:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #8]
	bl	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z(PLT)
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #12]
	bl	_ZN2OT22hb_serialize_context_t10extend_minINS_15CoverageFormat1EEEPT_RS3_(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L88
	add	r3, r7, #16
	mov	r0, r3
	movs	r1, #0
	movw	r2, #645
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L93
.L88:
	ldr	r3, [r7, #12]
	adds	r2, r3, #2
	ldr	r3, [r7]
	uxth	r3, r3
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OT7IntTypeItLj2EE3setEt(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #2
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	_ZN2OT22hb_serialize_context_t6extendINS_13SortedArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L90
	add	r3, r7, #16
	mov	r0, r3
	movs	r1, #0
	movw	r2, #647
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L93
.L90:
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L91
.L92:
	ldr	r3, [r7, #12]
	adds	r3, r3, #2
	mov	r0, r3
	ldr	r1, [r7, #20]
	bl	_ZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_EixEj(PLT)
	mov	r4, r0
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #20]
	bl	_ZNK2OT8SupplierINS_7IntTypeItLj2EEEEixEj(PLT)
	mov	r3, r0	@ movhi
	sxth	r3, r3
	mov	r2, r3
	strb	r2, [r4]
	ubfx	r3, r3, #8, #8
	strb	r3, [r4, #1]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L91:
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L92
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	_ZN2OT8SupplierINS_7IntTypeItLj2EEEE7advanceEj(PLT)
	add	r3, r7, #16
	mov	r0, r3
	movs	r1, #1
	movw	r2, #651
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
.L93:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L95:
	.align	2
.L94:
	.word	_ZZN2OT15CoverageFormat19serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEEjE19__PRETTY_FUNCTION__-(.LPIC19+4)
	.word	.LC4-(.LPIC20+4)
	.word	.LC2-(.LPIC21+4)
	.fnend
	.size	_ZN2OT15CoverageFormat19serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEEj, .-_ZN2OT15CoverageFormat19serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEEj
	.section	.text._ZN2OT15CoverageFormat29serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEEj,"axG",%progbits,_ZN2OT15CoverageFormat29serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEEj,comdat
	.align	2
	.weak	_ZN2OT15CoverageFormat29serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEEj
	.thumb
	.thumb_func
	.type	_ZN2OT15CoverageFormat29serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEEj, %function
_ZN2OT15CoverageFormat29serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEEj:
	.fnstart
.LFB440:
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
	ldr	r3, [r7, #8]
	add	r2, r7, #20
	ldr	r1, .L109
.LPIC22:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L109+4
.LPIC23:
	add	r1, pc
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L109+8
.LPIC24:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #8]
	bl	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z(PLT)
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #12]
	bl	_ZN2OT22hb_serialize_context_t10extend_minINS_15CoverageFormat2EEEPT_RS3_(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L97
	add	r3, r7, #20
	mov	r0, r3
	movs	r1, #0
	movw	r2, #713
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L108
.L97:
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L99
	add	r3, r7, #20
	mov	r0, r3
	movs	r1, #1
	movw	r2, #715
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L108
.L99:
	movs	r3, #1
	str	r3, [r7, #52]
	movs	r3, #1
	str	r3, [r7, #48]
	b	.L100
.L102:
	ldr	r3, [r7, #48]
	subs	r3, r3, #1
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZNK2OT8SupplierINS_7IntTypeItLj2EEEEixEj(PLT)
	mov	r3, r0	@ movhi
	strh	r3, [r7, #24]	@ movhi
	add	r3, r7, #24
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	adds	r4, r3, #1
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #48]
	bl	_ZNK2OT8SupplierINS_7IntTypeItLj2EEEEixEj(PLT)
	mov	r3, r0	@ movhi
	strh	r3, [r7, #28]	@ movhi
	add	r3, r7, #28
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	cmp	r4, r3
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L101
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	str	r3, [r7, #52]
.L101:
	ldr	r3, [r7, #48]
	adds	r3, r3, #1
	str	r3, [r7, #48]
.L100:
	ldr	r2, [r7, #48]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L102
	ldr	r3, [r7, #12]
	adds	r2, r3, #2
	ldr	r3, [r7, #52]
	uxth	r3, r3
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OT7IntTypeItLj2EE3setEt(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #2
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	_ZN2OT22hb_serialize_context_t6extendINS_13SortedArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEEEEEPT_RS7_(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L103
	add	r3, r7, #20
	mov	r0, r3
	movs	r1, #0
	movw	r2, #722
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L108
.L103:
	movs	r3, #0
	str	r3, [r7, #44]
	ldr	r3, [r7, #12]
	adds	r3, r3, #2
	mov	r0, r3
	ldr	r1, [r7, #44]
	bl	_ZN2OT7ArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEEixEj(PLT)
	mov	r4, r0
	ldr	r0, [r7, #4]
	movs	r1, #0
	bl	_ZNK2OT8SupplierINS_7IntTypeItLj2EEEEixEj(PLT)
	mov	r3, r0	@ movhi
	sxth	r3, r3
	mov	r2, r3
	strb	r2, [r4]
	ubfx	r3, r3, #8, #8
	strb	r3, [r4, #1]
	ldr	r3, [r7, #12]
	adds	r3, r3, #2
	mov	r0, r3
	ldr	r1, [r7, #44]
	bl	_ZN2OT7ArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEEixEj(PLT)
	mov	r3, r0
	adds	r3, r3, #4
	mov	r0, r3
	movs	r1, #0
	bl	_ZN2OT7IntTypeItLj2EE3setEt(PLT)
	movs	r3, #1
	str	r3, [r7, #40]
	b	.L104
.L107:
	ldr	r3, [r7, #40]
	subs	r3, r3, #1
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZNK2OT8SupplierINS_7IntTypeItLj2EEEEixEj(PLT)
	mov	r3, r0	@ movhi
	strh	r3, [r7, #32]	@ movhi
	add	r3, r7, #32
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	adds	r4, r3, #1
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #40]
	bl	_ZNK2OT8SupplierINS_7IntTypeItLj2EEEEixEj(PLT)
	mov	r3, r0	@ movhi
	strh	r3, [r7, #36]	@ movhi
	add	r3, r7, #36
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	cmp	r4, r3
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L105
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	str	r3, [r7, #44]
	ldr	r3, [r7, #12]
	adds	r3, r3, #2
	mov	r0, r3
	ldr	r1, [r7, #44]
	bl	_ZN2OT7ArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEEixEj(PLT)
	mov	r4, r0
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #40]
	bl	_ZNK2OT8SupplierINS_7IntTypeItLj2EEEEixEj(PLT)
	mov	r3, r0	@ movhi
	sxth	r3, r3
	mov	r2, r3
	strb	r2, [r4]
	ubfx	r3, r3, #8, #8
	strb	r3, [r4, #1]
	ldr	r3, [r7, #12]
	adds	r3, r3, #2
	mov	r0, r3
	ldr	r1, [r7, #44]
	bl	_ZN2OT7ArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEEixEj(PLT)
	mov	r3, r0
	adds	r2, r3, #4
	ldr	r3, [r7, #40]
	uxth	r3, r3
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OT7IntTypeItLj2EE3setEt(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #2
	mov	r0, r3
	ldr	r1, [r7, #44]
	bl	_ZN2OT7ArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEEixEj(PLT)
	mov	r4, r0
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #40]
	bl	_ZNK2OT8SupplierINS_7IntTypeItLj2EEEEixEj(PLT)
	mov	r3, r0	@ movhi
	sxth	r3, r3
	mov	r2, r3
	strb	r2, [r4, #2]
	ubfx	r3, r3, #8, #8
	strb	r3, [r4, #3]
	b	.L106
.L105:
	ldr	r3, [r7, #12]
	adds	r3, r3, #2
	mov	r0, r3
	ldr	r1, [r7, #44]
	bl	_ZN2OT7ArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEEixEj(PLT)
	mov	r4, r0
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #40]
	bl	_ZNK2OT8SupplierINS_7IntTypeItLj2EEEEixEj(PLT)
	mov	r3, r0	@ movhi
	sxth	r3, r3
	mov	r2, r3
	strb	r2, [r4, #2]
	ubfx	r3, r3, #8, #8
	strb	r3, [r4, #3]
.L106:
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	str	r3, [r7, #40]
.L104:
	ldr	r2, [r7, #40]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L107
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	_ZN2OT8SupplierINS_7IntTypeItLj2EEEE7advanceEj(PLT)
	add	r3, r7, #20
	mov	r0, r3
	movs	r1, #1
	movw	r2, #737
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
.L108:
	mov	r0, r3
	adds	r7, r7, #60
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L110:
	.align	2
.L109:
	.word	_ZZN2OT15CoverageFormat29serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEEjE19__PRETTY_FUNCTION__-(.LPIC22+4)
	.word	.LC4-(.LPIC23+4)
	.word	.LC2-(.LPIC24+4)
	.fnend
	.size	_ZN2OT15CoverageFormat29serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEEj, .-_ZN2OT15CoverageFormat29serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEEj
	.section	.text._ZN2OT8Coverage9serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEEj,"axG",%progbits,_ZN2OT8Coverage9serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEEj,comdat
	.align	2
	.weak	_ZN2OT8Coverage9serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEEj
	.thumb
	.thumb_func
	.type	_ZN2OT8Coverage9serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEEj, %function
_ZN2OT8Coverage9serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEEj:
	.fnstart
.LFB452:
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
	ldr	r3, [r7, #8]
	add	r2, r7, #20
	ldr	r1, .L124
.LPIC25:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L124+4
.LPIC26:
	add	r1, pc
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L124+8
.LPIC27:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #8]
	bl	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z(PLT)
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #12]
	bl	_ZN2OT22hb_serialize_context_t10extend_minINS_8CoverageEEEPT_RS3_(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L112
	add	r3, r7, #20
	mov	r0, r3
	movs	r1, #0
	movw	r2, #822
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L122
.L112:
	movs	r3, #1
	str	r3, [r7, #36]
	movs	r3, #1
	str	r3, [r7, #32]
	b	.L114
.L116:
	ldr	r3, [r7, #32]
	subs	r3, r3, #1
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZNK2OT8SupplierINS_7IntTypeItLj2EEEEixEj(PLT)
	mov	r3, r0	@ movhi
	strh	r3, [r7, #24]	@ movhi
	add	r3, r7, #24
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	adds	r4, r3, #1
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #32]
	bl	_ZNK2OT8SupplierINS_7IntTypeItLj2EEEEixEj(PLT)
	mov	r3, r0	@ movhi
	strh	r3, [r7, #28]	@ movhi
	add	r3, r7, #28
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	cmp	r4, r3
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L115
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L115:
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	str	r3, [r7, #32]
.L114:
	ldr	r2, [r7, #32]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L116
	ldr	r1, [r7, #12]
	ldr	r3, [r7]
	lsls	r0, r3, #1
	ldr	r2, [r7, #36]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	cmp	r0, r3
	bcs	.L117
	movs	r3, #1
	b	.L118
.L117:
	movs	r3, #2
.L118:
	mov	r0, r1
	mov	r1, r3
	bl	_ZN2OT7IntTypeItLj2EE3setEt(PLT)
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	cmp	r3, #1
	beq	.L120
	cmp	r3, #2
	beq	.L121
	b	.L123
.L120:
	ldr	r3, [r7, #12]
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	_ZN2OT15CoverageFormat19serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEEj(PLT)
	mov	r3, r0
	add	r2, r7, #20
	mov	r0, r2
	mov	r1, r3
	movw	r2, #829
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L122
.L121:
	ldr	r3, [r7, #12]
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	_ZN2OT15CoverageFormat29serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEEj(PLT)
	mov	r3, r0
	add	r2, r7, #20
	mov	r0, r2
	mov	r1, r3
	movw	r2, #830
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L122
.L123:
	add	r3, r7, #20
	mov	r0, r3
	movs	r1, #0
	movw	r2, #831
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
.L122:
	mov	r0, r3
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L125:
	.align	2
.L124:
	.word	_ZZN2OT8Coverage9serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEEjE19__PRETTY_FUNCTION__-(.LPIC25+4)
	.word	.LC4-(.LPIC26+4)
	.word	.LC2-(.LPIC27+4)
	.fnend
	.size	_ZN2OT8Coverage9serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEEj, .-_ZN2OT8Coverage9serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEEj
	.section	.text._ZNK2OT4GDEF17has_glyph_classesEv,"axG",%progbits,_ZNK2OT4GDEF17has_glyph_classesEv,comdat
	.align	2
	.weak	_ZNK2OT4GDEF17has_glyph_classesEv
	.thumb
	.thumb_func
	.type	_ZNK2OT4GDEF17has_glyph_classesEv, %function
_ZNK2OT4GDEF17has_glyph_classesEv:
	.fnstart
.LFB522:
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
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT4GDEF17has_glyph_classesEv, .-_ZNK2OT4GDEF17has_glyph_classesEv
	.section	.rodata
	.align	2
.LC5:
	.ascii	"GET_COVERAGE\000"
	.section	.text._ZN2OT25hb_get_coverage_context_t8get_nameEv,"axG",%progbits,_ZN2OT25hb_get_coverage_context_t8get_nameEv,comdat
	.align	2
	.weak	_ZN2OT25hb_get_coverage_context_t8get_nameEv
	.thumb
	.thumb_func
	.type	_ZN2OT25hb_get_coverage_context_t8get_nameEv, %function
_ZN2OT25hb_get_coverage_context_t8get_nameEv:
	.fnstart
.LFB565:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, .L130
.LPIC28:
	add	r3, pc
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L131:
	.align	2
.L130:
	.word	.LC5-(.LPIC28+4)
	.cantunwind
	.fnend
	.size	_ZN2OT25hb_get_coverage_context_t8get_nameEv, .-_ZN2OT25hb_get_coverage_context_t8get_nameEv
	.section	.text._ZN2OT25hb_get_coverage_context_t20default_return_valueEv,"axG",%progbits,_ZN2OT25hb_get_coverage_context_t20default_return_valueEv,comdat
	.align	2
	.weak	_ZN2OT25hb_get_coverage_context_t20default_return_valueEv
	.thumb
	.thumb_func
	.type	_ZN2OT25hb_get_coverage_context_t20default_return_valueEv, %function
_ZN2OT25hb_get_coverage_context_t20default_return_valueEv:
	.fnstart
.LFB567:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.setfp r7, sp, #0
	add	r7, sp, #0
	bl	_ZN2OTL4NullINS_8CoverageEEERKT_v(PLT)
	mov	r3, r0
	mov	r0, r3
	pop	{r7, pc}
	.fnend
	.size	_ZN2OT25hb_get_coverage_context_t20default_return_valueEv, .-_ZN2OT25hb_get_coverage_context_t20default_return_valueEv
	.section	.text._ZN2OT25hb_get_coverage_context_tC2Ev,"axG",%progbits,_ZN2OT25hb_get_coverage_context_tC5Ev,comdat
	.align	2
	.weak	_ZN2OT25hb_get_coverage_context_tC2Ev
	.thumb
	.thumb_func
	.type	_ZN2OT25hb_get_coverage_context_tC2Ev, %function
_ZN2OT25hb_get_coverage_context_tC2Ev:
	.fnstart
.LFB569:
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
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN2OT25hb_get_coverage_context_tC2Ev, .-_ZN2OT25hb_get_coverage_context_tC2Ev
	.weak	_ZN2OT25hb_get_coverage_context_tC1Ev
	.thumb_set _ZN2OT25hb_get_coverage_context_tC1Ev,_ZN2OT25hb_get_coverage_context_tC2Ev
	.section	.text._ZN2OT18hb_apply_context_tC2EjP9hb_font_tP11hb_buffer_t,"axG",%progbits,_ZN2OT18hb_apply_context_tC5EjP9hb_font_tP11hb_buffer_t,comdat
	.align	2
	.weak	_ZN2OT18hb_apply_context_tC2EjP9hb_font_tP11hb_buffer_t
	.thumb
	.thumb_func
	.type	_ZN2OT18hb_apply_context_tC2EjP9hb_font_tP11hb_buffer_t, %function
_ZN2OT18hb_apply_context_tC2EjP9hb_font_tP11hb_buffer_t:
	.fnstart
.LFB577:
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
	ldr	r2, [r7, #8]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #52]
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	str	r2, [r3, #12]
	ldr	r3, [r7]
	ldr	r2, [r3, #60]
	ldr	r3, [r7, #12]
	str	r2, [r3, #16]
	ldr	r3, [r7, #12]
	movs	r2, #1
	str	r2, [r3, #20]
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #24]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #28]
	ldr	r3, [r7, #12]
	movs	r2, #8
	str	r2, [r3, #32]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #36]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	ldr	r3, [r3, #72]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	str	r2, [r3, #40]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #40]
	mov	r0, r3
	bl	_ZNK2OT4GDEF17has_glyph_classesEv(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #12]
	strb	r2, [r3, #44]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #48]
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OT18hb_apply_context_tC2EjP9hb_font_tP11hb_buffer_t, .-_ZN2OT18hb_apply_context_tC2EjP9hb_font_tP11hb_buffer_t
	.weak	_ZN2OT18hb_apply_context_tC1EjP9hb_font_tP11hb_buffer_t
	.thumb_set _ZN2OT18hb_apply_context_tC1EjP9hb_font_tP11hb_buffer_t,_ZN2OT18hb_apply_context_tC2EjP9hb_font_tP11hb_buffer_t
	.section	.text._ZN2OT18hb_apply_context_t15set_lookup_maskEj,"axG",%progbits,_ZN2OT18hb_apply_context_t15set_lookup_maskEj,comdat
	.align	2
	.weak	_ZN2OT18hb_apply_context_t15set_lookup_maskEj
	.thumb
	.thumb_func
	.type	_ZN2OT18hb_apply_context_t15set_lookup_maskEj, %function
_ZN2OT18hb_apply_context_t15set_lookup_maskEj:
	.fnstart
.LFB579:
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
	str	r2, [r3, #20]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN2OT18hb_apply_context_t15set_lookup_maskEj, .-_ZN2OT18hb_apply_context_t15set_lookup_maskEj
	.section	.text._ZNK2OT14ContextFormat112get_coverageEv,"axG",%progbits,_ZNK2OT14ContextFormat112get_coverageEv,comdat
	.align	2
	.weak	_ZNK2OT14ContextFormat112get_coverageEv
	.thumb
	.thumb_func
	.type	_ZNK2OT14ContextFormat112get_coverageEv, %function
_ZNK2OT14ContextFormat112get_coverageEv:
	.fnstart
.LFB661:
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
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	adds	r3, r3, #2
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OTplIPKNS_14ContextFormat1ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT14ContextFormat112get_coverageEv, .-_ZNK2OT14ContextFormat112get_coverageEv
	.section	.text._ZNK2OT14ContextFormat212get_coverageEv,"axG",%progbits,_ZNK2OT14ContextFormat212get_coverageEv,comdat
	.align	2
	.weak	_ZNK2OT14ContextFormat212get_coverageEv
	.thumb
	.thumb_func
	.type	_ZNK2OT14ContextFormat212get_coverageEv, %function
_ZNK2OT14ContextFormat212get_coverageEv:
	.fnstart
.LFB669:
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
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	adds	r3, r3, #2
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OTplIPKNS_14ContextFormat2ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT14ContextFormat212get_coverageEv, .-_ZNK2OT14ContextFormat212get_coverageEv
	.section	.text._ZNK2OT14ContextFormat312get_coverageEv,"axG",%progbits,_ZNK2OT14ContextFormat312get_coverageEv,comdat
	.align	2
	.weak	_ZNK2OT14ContextFormat312get_coverageEv
	.thumb
	.thumb_func
	.type	_ZNK2OT14ContextFormat312get_coverageEv, %function
_ZNK2OT14ContextFormat312get_coverageEv:
	.fnstart
.LFB677:
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
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	adds	r3, r3, #6
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OTplIPKNS_14ContextFormat3ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT14ContextFormat312get_coverageEv, .-_ZNK2OT14ContextFormat312get_coverageEv
	.section	.text._ZNK2OT19ChainContextFormat112get_coverageEv,"axG",%progbits,_ZNK2OT19ChainContextFormat112get_coverageEv,comdat
	.align	2
	.weak	_ZNK2OT19ChainContextFormat112get_coverageEv
	.thumb
	.thumb_func
	.type	_ZNK2OT19ChainContextFormat112get_coverageEv, %function
_ZNK2OT19ChainContextFormat112get_coverageEv:
	.fnstart
.LFB704:
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
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	adds	r3, r3, #2
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OTplIPKNS_19ChainContextFormat1ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT19ChainContextFormat112get_coverageEv, .-_ZNK2OT19ChainContextFormat112get_coverageEv
	.section	.text._ZNK2OT19ChainContextFormat212get_coverageEv,"axG",%progbits,_ZNK2OT19ChainContextFormat212get_coverageEv,comdat
	.align	2
	.weak	_ZNK2OT19ChainContextFormat212get_coverageEv
	.thumb
	.thumb_func
	.type	_ZNK2OT19ChainContextFormat212get_coverageEv, %function
_ZNK2OT19ChainContextFormat212get_coverageEv:
	.fnstart
.LFB712:
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
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	adds	r3, r3, #2
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OTplIPKNS_19ChainContextFormat2ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT19ChainContextFormat212get_coverageEv, .-_ZNK2OT19ChainContextFormat212get_coverageEv
	.section	.text._ZNK2OT19ChainContextFormat312get_coverageEv,"axG",%progbits,_ZNK2OT19ChainContextFormat312get_coverageEv,comdat
	.align	2
	.weak	_ZNK2OT19ChainContextFormat312get_coverageEv
	.thumb
	.thumb_func
	.type	_ZNK2OT19ChainContextFormat312get_coverageEv, %function
_ZNK2OT19ChainContextFormat312get_coverageEv:
	.fnstart
.LFB720:
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
	adds	r3, r3, #2
	mov	r0, r3
	bl	_ZN2OTL11StructAfterINS_13OffsetArrayOfINS_8CoverageEEES3_EERKT_RKT0_(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	mov	r0, r3
	movs	r1, #0
	bl	_ZNK2OT7ArrayOfINS_8OffsetToINS_8CoverageENS_7IntTypeItLj2EEEEES4_EixEj(PLT)
	mov	r3, r0
	add	r2, r7, #8
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OTplIPKNS_19ChainContextFormat3ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT19ChainContextFormat312get_coverageEv, .-_ZNK2OT19ChainContextFormat312get_coverageEv
	.section	.text._ZNK2OT16ExtensionFormat18get_typeEv,"axG",%progbits,_ZNK2OT16ExtensionFormat18get_typeEv,comdat
	.align	2
	.weak	_ZNK2OT16ExtensionFormat18get_typeEv
	.thumb
	.thumb_func
	.type	_ZNK2OT16ExtensionFormat18get_typeEv, %function
_ZNK2OT16ExtensionFormat18get_typeEv:
	.fnstart
.LFB726:
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
	adds	r3, r3, #2
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT16ExtensionFormat18get_typeEv, .-_ZNK2OT16ExtensionFormat18get_typeEv
	.section	.text._ZNK2OT16ExtensionFormat110get_offsetEv,"axG",%progbits,_ZNK2OT16ExtensionFormat110get_offsetEv,comdat
	.align	2
	.weak	_ZNK2OT16ExtensionFormat110get_offsetEv
	.thumb
	.thumb_func
	.type	_ZNK2OT16ExtensionFormat110get_offsetEv, %function
_ZNK2OT16ExtensionFormat110get_offsetEv:
	.fnstart
.LFB727:
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
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZNK2OT7IntTypeIjLj4EEcvjEv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT16ExtensionFormat110get_offsetEv, .-_ZNK2OT16ExtensionFormat110get_offsetEv
	.section	.text._ZNK2OT18SingleSubstFormat112get_coverageEv,"axG",%progbits,_ZNK2OT18SingleSubstFormat112get_coverageEv,comdat
	.align	2
	.weak	_ZNK2OT18SingleSubstFormat112get_coverageEv
	.thumb
	.thumb_func
	.type	_ZNK2OT18SingleSubstFormat112get_coverageEv, %function
_ZNK2OT18SingleSubstFormat112get_coverageEv:
	.fnstart
.LFB752:
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
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	adds	r3, r3, #2
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OTplIPKNS_18SingleSubstFormat1ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT18SingleSubstFormat112get_coverageEv, .-_ZNK2OT18SingleSubstFormat112get_coverageEv
	.section	.text._ZN2OT18SingleSubstFormat19serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEEji,"axG",%progbits,_ZN2OT18SingleSubstFormat19serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEEji,comdat
	.align	2
	.weak	_ZN2OT18SingleSubstFormat19serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEEji
	.thumb
	.thumb_func
	.type	_ZN2OT18SingleSubstFormat19serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEEji, %function
_ZN2OT18SingleSubstFormat19serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEEji:
	.fnstart
.LFB755:
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
	ldr	r3, [r7, #8]
	add	r2, r7, #20
	ldr	r1, .L164
.LPIC29:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L164+4
.LPIC30:
	add	r1, pc
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L164+8
.LPIC31:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #8]
	bl	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z(PLT)
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #12]
	bl	_ZN2OT22hb_serialize_context_t10extend_minINS_18SingleSubstFormat1EEEPT_RS3_(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L160
	add	r3, r7, #20
	mov	r0, r3
	movs	r1, #0
	movs	r2, #94
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L163
.L160:
	ldr	r3, [r7, #12]
	adds	r3, r3, #2
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #12]
	bl	_ZN2OT8OffsetToINS_8CoverageENS_7IntTypeItLj2EEEE9serializeEPNS_22hb_serialize_context_tEPv(PLT)
	mov	r3, r0
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	_ZN2OT8Coverage9serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEEj(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L162
	add	r3, r7, #20
	mov	r0, r3
	movs	r1, #0
	movs	r2, #95
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L163
.L162:
	ldr	r3, [r7, #12]
	adds	r2, r3, #4
	ldr	r3, [r7, #32]
	uxth	r3, r3
	sxth	r3, r3
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OT7IntTypeIsLj2EE3setEs(PLT)
	add	r3, r7, #20
	mov	r0, r3
	movs	r1, #1
	movs	r2, #97
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
.L163:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L165:
	.align	2
.L164:
	.word	_ZZN2OT18SingleSubstFormat19serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEEjiE19__PRETTY_FUNCTION__-(.LPIC29+4)
	.word	.LC4-(.LPIC30+4)
	.word	.LC2-(.LPIC31+4)
	.fnend
	.size	_ZN2OT18SingleSubstFormat19serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEEji, .-_ZN2OT18SingleSubstFormat19serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEEji
	.section	.text._ZNK2OT18SingleSubstFormat212get_coverageEv,"axG",%progbits,_ZNK2OT18SingleSubstFormat212get_coverageEv,comdat
	.align	2
	.weak	_ZNK2OT18SingleSubstFormat212get_coverageEv
	.thumb
	.thumb_func
	.type	_ZNK2OT18SingleSubstFormat212get_coverageEv, %function
_ZNK2OT18SingleSubstFormat212get_coverageEv:
	.fnstart
.LFB760:
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
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	adds	r3, r3, #2
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OTplIPKNS_18SingleSubstFormat2ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT18SingleSubstFormat212get_coverageEv, .-_ZNK2OT18SingleSubstFormat212get_coverageEv
	.section	.text._ZN2OT18SingleSubstFormat29serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEES7_j,"axG",%progbits,_ZN2OT18SingleSubstFormat29serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEES7_j,comdat
	.align	2
	.weak	_ZN2OT18SingleSubstFormat29serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEES7_j
	.thumb
	.thumb_func
	.type	_ZN2OT18SingleSubstFormat29serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEES7_j, %function
_ZN2OT18SingleSubstFormat29serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEES7_j:
	.fnstart
.LFB763:
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
	ldr	r3, [r7, #8]
	add	r2, r7, #20
	ldr	r1, .L174
.LPIC32:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L174+4
.LPIC33:
	add	r1, pc
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L174+8
.LPIC34:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #8]
	bl	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z(PLT)
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #12]
	bl	_ZN2OT22hb_serialize_context_t10extend_minINS_18SingleSubstFormat2EEEPT_RS3_(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L169
	add	r3, r7, #20
	mov	r0, r3
	movs	r1, #0
	movs	r2, #170
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L173
.L169:
	ldr	r3, [r7, #12]
	adds	r3, r3, #4
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7]
	ldr	r3, [r7, #32]
	bl	_ZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_E9serializeEPNS_22hb_serialize_context_tERNS_8SupplierIS2_EEj(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L171
	add	r3, r7, #20
	mov	r0, r3
	movs	r1, #0
	movs	r2, #171
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L173
.L171:
	ldr	r3, [r7, #12]
	adds	r3, r3, #2
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #12]
	bl	_ZN2OT8OffsetToINS_8CoverageENS_7IntTypeItLj2EEEE9serializeEPNS_22hb_serialize_context_tEPv(PLT)
	mov	r3, r0
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #32]
	bl	_ZN2OT8Coverage9serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEEj(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L172
	add	r3, r7, #20
	mov	r0, r3
	movs	r1, #0
	movs	r2, #172
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L173
.L172:
	add	r3, r7, #20
	mov	r0, r3
	movs	r1, #1
	movs	r2, #173
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
.L173:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L175:
	.align	2
.L174:
	.word	_ZZN2OT18SingleSubstFormat29serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEES7_jE19__PRETTY_FUNCTION__-(.LPIC32+4)
	.word	.LC4-(.LPIC33+4)
	.word	.LC2-(.LPIC34+4)
	.fnend
	.size	_ZN2OT18SingleSubstFormat29serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEES7_j, .-_ZN2OT18SingleSubstFormat29serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEES7_j
	.section	.text._ZN2OT11SingleSubst9serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEES7_j,"axG",%progbits,_ZN2OT11SingleSubst9serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEES7_j,comdat
	.align	2
	.weak	_ZN2OT11SingleSubst9serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEES7_j
	.thumb
	.thumb_func
	.type	_ZN2OT11SingleSubst9serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEES7_j, %function
_ZN2OT11SingleSubst9serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEES7_j:
	.fnstart
.LFB767:
	@ args = 4, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #60
	sub	sp, sp, #60
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #8]
	add	r2, r7, #16
	ldr	r1, .L189
.LPIC35:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L189+4
.LPIC36:
	add	r1, pc
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L189+8
.LPIC37:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #8]
	bl	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z(PLT)
	ldr	r3, [r7, #12]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	_ZN2OT22hb_serialize_context_t10extend_minINS_7IntTypeItLj2EEEEEPT_RS4_(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L177
	add	r3, r7, #16
	mov	r0, r3
	movs	r1, #0
	movs	r2, #201
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L187
.L177:
	movs	r3, #2
	str	r3, [r7, #44]
	movs	r3, #0
	str	r3, [r7, #40]
	ldr	r3, [r7, #64]
	cmp	r3, #0
	beq	.L179
	movs	r3, #1
	str	r3, [r7, #44]
	ldr	r0, [r7]
	movs	r1, #0
	bl	_ZNK2OT8SupplierINS_7IntTypeItLj2EEEEixEj(PLT)
	mov	r3, r0	@ movhi
	strh	r3, [r7, #20]	@ movhi
	add	r3, r7, #20
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	mov	r4, r3
	ldr	r0, [r7, #4]
	movs	r1, #0
	bl	_ZNK2OT8SupplierINS_7IntTypeItLj2EEEEixEj(PLT)
	mov	r3, r0	@ movhi
	strh	r3, [r7, #24]	@ movhi
	add	r3, r7, #24
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	subs	r3, r4, r3
	str	r3, [r7, #40]
	movs	r3, #1
	str	r3, [r7, #36]
	b	.L180
.L183:
	ldr	r0, [r7]
	ldr	r1, [r7, #36]
	bl	_ZNK2OT8SupplierINS_7IntTypeItLj2EEEEixEj(PLT)
	mov	r3, r0	@ movhi
	strh	r3, [r7, #28]	@ movhi
	add	r3, r7, #28
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	mov	r4, r3
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	_ZNK2OT8SupplierINS_7IntTypeItLj2EEEEixEj(PLT)
	mov	r3, r0	@ movhi
	strh	r3, [r7, #32]	@ movhi
	add	r3, r7, #32
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	subs	r2, r4, r3
	ldr	r3, [r7, #40]
	cmp	r2, r3
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L181
	movs	r3, #2
	str	r3, [r7, #44]
	b	.L182
.L181:
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L180:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #64]
	cmp	r2, r3
	bcc	.L183
.L182:
.L179:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #44]
	uxth	r3, r3
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OT7IntTypeItLj2EE3setEt(PLT)
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	cmp	r3, #1
	beq	.L185
	cmp	r3, #2
	beq	.L186
	b	.L188
.L185:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #40]
	str	r2, [sp]
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #64]
	bl	_ZN2OT18SingleSubstFormat19serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEEji(PLT)
	mov	r3, r0
	add	r2, r7, #16
	mov	r0, r2
	mov	r1, r3
	movs	r2, #216
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L187
.L186:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #64]
	str	r2, [sp]
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	_ZN2OT18SingleSubstFormat29serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEES7_j(PLT)
	mov	r3, r0
	add	r2, r7, #16
	mov	r0, r2
	mov	r1, r3
	movs	r2, #217
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L187
.L188:
	add	r3, r7, #16
	mov	r0, r3
	movs	r1, #0
	movs	r2, #218
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
.L187:
	mov	r0, r3
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L190:
	.align	2
.L189:
	.word	_ZZN2OT11SingleSubst9serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEES7_jE19__PRETTY_FUNCTION__-(.LPIC35+4)
	.word	.LC4-(.LPIC36+4)
	.word	.LC2-(.LPIC37+4)
	.fnend
	.size	_ZN2OT11SingleSubst9serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEES7_j, .-_ZN2OT11SingleSubst9serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEES7_j
	.section	.text._ZNK2OT20MultipleSubstFormat112get_coverageEv,"axG",%progbits,_ZNK2OT20MultipleSubstFormat112get_coverageEv,comdat
	.align	2
	.weak	_ZNK2OT20MultipleSubstFormat112get_coverageEv
	.thumb
	.thumb_func
	.type	_ZNK2OT20MultipleSubstFormat112get_coverageEv, %function
_ZNK2OT20MultipleSubstFormat112get_coverageEv:
	.fnstart
.LFB779:
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
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	adds	r3, r3, #2
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OTplIPKNS_20MultipleSubstFormat1ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT20MultipleSubstFormat112get_coverageEv, .-_ZNK2OT20MultipleSubstFormat112get_coverageEv
	.section	.text._ZNK2OT21AlternateSubstFormat112get_coverageEv,"axG",%progbits,_ZNK2OT21AlternateSubstFormat112get_coverageEv,comdat
	.align	2
	.weak	_ZNK2OT21AlternateSubstFormat112get_coverageEv
	.thumb
	.thumb_func
	.type	_ZNK2OT21AlternateSubstFormat112get_coverageEv, %function
_ZNK2OT21AlternateSubstFormat112get_coverageEv:
	.fnstart
.LFB791:
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
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	adds	r3, r3, #2
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OTplIPKNS_21AlternateSubstFormat1ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT21AlternateSubstFormat112get_coverageEv, .-_ZNK2OT21AlternateSubstFormat112get_coverageEv
	.section	.text._ZN2OT8Ligature9serializeEPNS_22hb_serialize_context_tENS_7IntTypeItLj2EEERNS_8SupplierIS4_EEj,"axG",%progbits,_ZN2OT8Ligature9serializeEPNS_22hb_serialize_context_tENS_7IntTypeItLj2EEERNS_8SupplierIS4_EEj,comdat
	.align	2
	.weak	_ZN2OT8Ligature9serializeEPNS_22hb_serialize_context_tENS_7IntTypeItLj2EEERNS_8SupplierIS4_EEj
	.thumb
	.thumb_func
	.type	_ZN2OT8Ligature9serializeEPNS_22hb_serialize_context_tENS_7IntTypeItLj2EEERNS_8SupplierIS4_EEj, %function
_ZN2OT8Ligature9serializeEPNS_22hb_serialize_context_tENS_7IntTypeItLj2EEERNS_8SupplierIS4_EEj:
	.fnstart
.LFB805:
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
	strh	r2, [r7, #4]	@ movhi
	str	r3, [r7]
	ldr	r3, [r7, #8]
	add	r2, r7, #20
	ldr	r1, .L200
.LPIC38:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L200+4
.LPIC39:
	add	r1, pc
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L200+8
.LPIC40:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #8]
	bl	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z(PLT)
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #12]
	bl	_ZN2OT22hb_serialize_context_t10extend_minINS_8LigatureEEEPT_RS3_(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L196
	add	r3, r7, #20
	mov	r0, r3
	movs	r1, #0
	movw	r2, #682
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L199
.L196:
	ldr	r3, [r7, #12]
	adds	r2, r7, #4
	ldrh	r2, [r2]	@ unaligned
	strh	r2, [r3]	@ unaligned
	ldr	r3, [r7, #12]
	adds	r3, r3, #2
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7]
	ldr	r3, [r7, #32]
	bl	_ZN2OT15HeadlessArrayOfINS_7IntTypeItLj2EEES2_E9serializeEPNS_22hb_serialize_context_tERNS_8SupplierIS2_EEj(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L198
	add	r3, r7, #20
	mov	r0, r3
	movs	r1, #0
	mov	r2, #684
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L199
.L198:
	add	r3, r7, #20
	mov	r0, r3
	movs	r1, #1
	movw	r2, #685
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
.L199:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L201:
	.align	2
.L200:
	.word	_ZZN2OT8Ligature9serializeEPNS_22hb_serialize_context_tENS_7IntTypeItLj2EEERNS_8SupplierIS4_EEjE19__PRETTY_FUNCTION__-(.LPIC38+4)
	.word	.LC4-(.LPIC39+4)
	.word	.LC2-(.LPIC40+4)
	.fnend
	.size	_ZN2OT8Ligature9serializeEPNS_22hb_serialize_context_tENS_7IntTypeItLj2EEERNS_8SupplierIS4_EEj, .-_ZN2OT8Ligature9serializeEPNS_22hb_serialize_context_tENS_7IntTypeItLj2EEERNS_8SupplierIS4_EEj
	.section	.text._ZN2OT11LigatureSet9serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEERNS3_IjEEjS7_,"axG",%progbits,_ZN2OT11LigatureSet9serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEERNS3_IjEEjS7_,comdat
	.align	2
	.weak	_ZN2OT11LigatureSet9serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEERNS3_IjEEjS7_
	.thumb
	.thumb_func
	.type	_ZN2OT11LigatureSet9serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEERNS3_IjEEjS7_, %function
_ZN2OT11LigatureSet9serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEERNS3_IjEEjS7_:
	.fnstart
.LFB813:
	@ args = 8, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #44
	sub	sp, sp, #44
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #8]
	add	r2, r7, #20
	ldr	r1, .L210
.LPIC41:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L210+4
.LPIC42:
	add	r1, pc
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L210+8
.LPIC43:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #8]
	bl	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z(PLT)
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #12]
	bl	_ZN2OT22hb_serialize_context_t10extend_minINS_11LigatureSetEEEPT_RS3_(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L203
	add	r3, r7, #20
	mov	r0, r3
	movs	r1, #0
	movw	r2, #755
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L209
.L203:
	ldr	r3, [r7, #12]
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #48]
	bl	_ZN2OT7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES4_E9serializeEPNS_22hb_serialize_context_tEj(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L205
	add	r3, r7, #20
	mov	r0, r3
	movs	r1, #0
	mov	r2, #756
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L209
.L205:
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L206
.L208:
	ldr	r3, [r7, #12]
	mov	r0, r3
	ldr	r1, [r7, #28]
	bl	_ZN2OT7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES4_EixEj(PLT)
	mov	r3, r0
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #12]
	bl	_ZN2OT8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEE9serializeEPNS_22hb_serialize_context_tEPv(PLT)
	mov	r4, r0
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #28]
	bl	_ZNK2OT8SupplierINS_7IntTypeItLj2EEEEixEj(PLT)
	mov	r3, r0	@ movhi
	strh	r3, [r7, #24]	@ movhi
	ldr	r0, [r7]
	ldr	r1, [r7, #28]
	bl	_ZNK2OT8SupplierIjEixEj(PLT)
	mov	r3, r0
	str	r3, [sp]
	mov	r0, r4
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #52]
	bl	_ZN2OT8Ligature9serializeEPNS_22hb_serialize_context_tENS_7IntTypeItLj2EEERNS_8SupplierIS4_EEj(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L207
	add	r3, r7, #20
	mov	r0, r3
	movs	r1, #0
	movw	r2, #761
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L209
.L207:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L206:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #48]
	cmp	r2, r3
	bcc	.L208
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #48]
	bl	_ZN2OT8SupplierINS_7IntTypeItLj2EEEE7advanceEj(PLT)
	ldr	r0, [r7]
	ldr	r1, [r7, #48]
	bl	_ZN2OT8SupplierIjE7advanceEj(PLT)
	add	r3, r7, #20
	mov	r0, r3
	movs	r1, #1
	mov	r2, #764
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
.L209:
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L211:
	.align	2
.L210:
	.word	_ZZN2OT11LigatureSet9serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEERNS3_IjEEjS7_E19__PRETTY_FUNCTION__-(.LPIC41+4)
	.word	.LC4-(.LPIC42+4)
	.word	.LC2-(.LPIC43+4)
	.fnend
	.size	_ZN2OT11LigatureSet9serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEERNS3_IjEEjS7_, .-_ZN2OT11LigatureSet9serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEERNS3_IjEEjS7_
	.section	.text._ZNK2OT20LigatureSubstFormat112get_coverageEv,"axG",%progbits,_ZNK2OT20LigatureSubstFormat112get_coverageEv,comdat
	.align	2
	.weak	_ZNK2OT20LigatureSubstFormat112get_coverageEv
	.thumb
	.thumb_func
	.type	_ZNK2OT20LigatureSubstFormat112get_coverageEv, %function
_ZNK2OT20LigatureSubstFormat112get_coverageEv:
	.fnstart
.LFB819:
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
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	adds	r3, r3, #2
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OTplIPKNS_20LigatureSubstFormat1ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT20LigatureSubstFormat112get_coverageEv, .-_ZNK2OT20LigatureSubstFormat112get_coverageEv
	.section	.text._ZN2OT20LigatureSubstFormat19serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEERNS3_IjEEjS7_S9_S7_,"axG",%progbits,_ZN2OT20LigatureSubstFormat19serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEERNS3_IjEEjS7_S9_S7_,comdat
	.align	2
	.weak	_ZN2OT20LigatureSubstFormat19serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEERNS3_IjEEjS7_S9_S7_
	.thumb
	.thumb_func
	.type	_ZN2OT20LigatureSubstFormat19serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEERNS3_IjEEjS7_S9_S7_, %function
_ZN2OT20LigatureSubstFormat19serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEERNS3_IjEEjS7_S9_S7_:
	.fnstart
.LFB822:
	@ args = 16, pretend = 0, frame = 24
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
	ldr	r3, [r7, #8]
	add	r2, r7, #16
	ldr	r1, .L223
.LPIC44:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L223+4
.LPIC45:
	add	r1, pc
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L223+8
.LPIC46:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #8]
	bl	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z(PLT)
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #12]
	bl	_ZN2OT22hb_serialize_context_t10extend_minINS_20LigatureSubstFormat1EEEPT_RS3_(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L215
	add	r3, r7, #16
	mov	r0, r3
	movs	r1, #0
	movw	r2, #838
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L222
.L215:
	ldr	r3, [r7, #12]
	adds	r3, r3, #4
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #40]
	bl	_ZN2OT7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES4_E9serializeEPNS_22hb_serialize_context_tEj(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L217
	add	r3, r7, #16
	mov	r0, r3
	movs	r1, #0
	movw	r2, #839
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L222
.L217:
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L218
.L220:
	ldr	r3, [r7, #12]
	adds	r3, r3, #4
	mov	r0, r3
	ldr	r1, [r7, #20]
	bl	_ZN2OT7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES4_EixEj(PLT)
	mov	r3, r0
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #12]
	bl	_ZN2OT8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEE9serializeEPNS_22hb_serialize_context_tEPv(PLT)
	mov	r4, r0
	ldr	r0, [r7]
	ldr	r1, [r7, #20]
	bl	_ZNK2OT8SupplierIjEixEj(PLT)
	mov	r3, r0
	str	r3, [sp]
	ldr	r3, [r7, #52]
	str	r3, [sp, #4]
	mov	r0, r4
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #48]
	bl	_ZN2OT11LigatureSet9serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEERNS3_IjEEjS7_(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L219
	add	r3, r7, #16
	mov	r0, r3
	movs	r1, #0
	movw	r2, #845
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L222
.L219:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L218:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bcc	.L220
	ldr	r0, [r7]
	ldr	r1, [r7, #40]
	bl	_ZN2OT8SupplierIjE7advanceEj(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #2
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #12]
	bl	_ZN2OT8OffsetToINS_8CoverageENS_7IntTypeItLj2EEEE9serializeEPNS_22hb_serialize_context_tEPv(PLT)
	mov	r3, r0
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #40]
	bl	_ZN2OT8Coverage9serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEEj(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L221
	add	r3, r7, #16
	mov	r0, r3
	movs	r1, #0
	movw	r2, #847
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L222
.L221:
	add	r3, r7, #16
	mov	r0, r3
	movs	r1, #1
	mov	r2, #848
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
.L222:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L224:
	.align	2
.L223:
	.word	_ZZN2OT20LigatureSubstFormat19serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEERNS3_IjEEjS7_S9_S7_E19__PRETTY_FUNCTION__-(.LPIC44+4)
	.word	.LC4-(.LPIC45+4)
	.word	.LC2-(.LPIC46+4)
	.fnend
	.size	_ZN2OT20LigatureSubstFormat19serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEERNS3_IjEEjS7_S9_S7_, .-_ZN2OT20LigatureSubstFormat19serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEERNS3_IjEEjS7_S9_S7_
	.section	.text._ZN2OT13LigatureSubst9serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEERNS3_IjEEjS7_S9_S7_,"axG",%progbits,_ZN2OT13LigatureSubst9serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEERNS3_IjEEjS7_S9_S7_,comdat
	.align	2
	.weak	_ZN2OT13LigatureSubst9serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEERNS3_IjEEjS7_S9_S7_
	.thumb
	.thumb_func
	.type	_ZN2OT13LigatureSubst9serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEERNS3_IjEEjS7_S9_S7_, %function
_ZN2OT13LigatureSubst9serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEERNS3_IjEEjS7_S9_S7_:
	.fnstart
.LFB826:
	@ args = 16, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #40
	sub	sp, sp, #40
	.setfp r7, sp, #16
	add	r7, sp, #16
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #8]
	add	r2, r7, #16
	ldr	r1, .L232
.LPIC47:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L232+4
.LPIC48:
	add	r1, pc
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L232+8
.LPIC49:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #8]
	bl	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z(PLT)
	ldr	r3, [r7, #12]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	_ZN2OT22hb_serialize_context_t10extend_minINS_7IntTypeItLj2EEEEEPT_RS4_(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L226
	add	r3, r7, #16
	mov	r0, r3
	movs	r1, #0
	movw	r2, #879
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L230
.L226:
	movs	r3, #1
	str	r3, [r7, #20]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #20]
	uxth	r3, r3
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OT7IntTypeItLj2EE3setEt(PLT)
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	cmp	r3, #1
	bne	.L231
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #32]
	str	r2, [sp]
	ldr	r2, [r7, #36]
	str	r2, [sp, #4]
	ldr	r2, [r7, #40]
	str	r2, [sp, #8]
	ldr	r2, [r7, #44]
	str	r2, [sp, #12]
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	_ZN2OT20LigatureSubstFormat19serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEERNS3_IjEEjS7_S9_S7_(PLT)
	mov	r3, r0
	add	r2, r7, #16
	mov	r0, r2
	mov	r1, r3
	mov	r2, #884
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L230
.L231:
	add	r3, r7, #16
	mov	r0, r3
	movs	r1, #0
	movw	r2, #885
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
.L230:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L233:
	.align	2
.L232:
	.word	_ZZN2OT13LigatureSubst9serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEERNS3_IjEEjS7_S9_S7_E19__PRETTY_FUNCTION__-(.LPIC47+4)
	.word	.LC4-(.LPIC48+4)
	.word	.LC2-(.LPIC49+4)
	.fnend
	.size	_ZN2OT13LigatureSubst9serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEERNS3_IjEEjS7_S9_S7_, .-_ZN2OT13LigatureSubst9serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEERNS3_IjEEjS7_S9_S7_
	.section	.text._ZNK2OT30ReverseChainSingleSubstFormat112get_coverageEv,"axG",%progbits,_ZNK2OT30ReverseChainSingleSubstFormat112get_coverageEv,comdat
	.align	2
	.weak	_ZNK2OT30ReverseChainSingleSubstFormat112get_coverageEv
	.thumb
	.thumb_func
	.type	_ZNK2OT30ReverseChainSingleSubstFormat112get_coverageEv, %function
_ZNK2OT30ReverseChainSingleSubstFormat112get_coverageEv:
	.fnstart
.LFB831:
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
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	adds	r3, r3, #2
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OTplIPKNS_30ReverseChainSingleSubstFormat1ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT30ReverseChainSingleSubstFormat112get_coverageEv, .-_ZNK2OT30ReverseChainSingleSubstFormat112get_coverageEv
	.section	.text._ZNK2OT11SubstLookup12get_subtableEj,"axG",%progbits,_ZNK2OT11SubstLookup12get_subtableEj,comdat
	.align	2
	.weak	_ZNK2OT11SubstLookup12get_subtableEj
	.thumb
	.thumb_func
	.type	_ZNK2OT11SubstLookup12get_subtableEj, %function
_ZNK2OT11SubstLookup12get_subtableEj:
	.fnstart
.LFB841:
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
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZN2OTL5CastRINS_13OffsetArrayOfINS_19SubstLookupSubTableEEENS_7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES7_EEEERKT_RKT0_(PLT)
	mov	r3, r0
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZNK2OT7ArrayOfINS_8OffsetToINS_19SubstLookupSubTableENS_7IntTypeItLj2EEEEES4_EixEj(PLT)
	mov	r3, r0
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OTplIPKNS_11SubstLookupENS_7IntTypeItLj2EEENS_19SubstLookupSubTableEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT11SubstLookup12get_subtableEj, .-_ZNK2OT11SubstLookup12get_subtableEj
	.section	.text._ZN2OT11SubstLookup18serialize_subtableEPNS_22hb_serialize_context_tEj,"axG",%progbits,_ZN2OT11SubstLookup18serialize_subtableEPNS_22hb_serialize_context_tEj,comdat
	.align	2
	.weak	_ZN2OT11SubstLookup18serialize_subtableEPNS_22hb_serialize_context_tEj
	.thumb
	.thumb_func
	.type	_ZN2OT11SubstLookup18serialize_subtableEPNS_22hb_serialize_context_tEj, %function
_ZN2OT11SubstLookup18serialize_subtableEPNS_22hb_serialize_context_tEj:
	.fnstart
.LFB849:
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
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZN2OTL5CastRINS_13OffsetArrayOfINS_19SubstLookupSubTableEEENS_7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES7_EEEERT_RT0_(PLT)
	mov	r3, r0
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	_ZN2OT7ArrayOfINS_8OffsetToINS_19SubstLookupSubTableENS_7IntTypeItLj2EEEEES4_EixEj(PLT)
	mov	r3, r0
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #12]
	bl	_ZN2OT8OffsetToINS_19SubstLookupSubTableENS_7IntTypeItLj2EEEE9serializeEPNS_22hb_serialize_context_tEPv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OT11SubstLookup18serialize_subtableEPNS_22hb_serialize_context_tEj, .-_ZN2OT11SubstLookup18serialize_subtableEPNS_22hb_serialize_context_tEj
	.section	.text._ZN2OT11SubstLookup16serialize_singleEPNS_22hb_serialize_context_tEjRNS_8SupplierINS_7IntTypeItLj2EEEEES7_j,"axG",%progbits,_ZN2OT11SubstLookup16serialize_singleEPNS_22hb_serialize_context_tEjRNS_8SupplierINS_7IntTypeItLj2EEEEES7_j,comdat
	.align	2
	.weak	_ZN2OT11SubstLookup16serialize_singleEPNS_22hb_serialize_context_tEjRNS_8SupplierINS_7IntTypeItLj2EEEEES7_j
	.thumb
	.thumb_func
	.type	_ZN2OT11SubstLookup16serialize_singleEPNS_22hb_serialize_context_tEjRNS_8SupplierINS_7IntTypeItLj2EEEEES7_j, %function
_ZN2OT11SubstLookup16serialize_singleEPNS_22hb_serialize_context_tEjRNS_8SupplierINS_7IntTypeItLj2EEEEES7_j:
	.fnstart
.LFB850:
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
	ldr	r3, [r7, #8]
	add	r2, r7, #20
	ldr	r1, .L244
.LPIC50:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L244+4
.LPIC51:
	add	r1, pc
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L244+8
.LPIC52:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #8]
	bl	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #1
	str	r2, [sp]
	mov	r0, r3
	ldr	r1, [r7, #8]
	movs	r2, #1
	ldr	r3, [r7, #4]
	bl	_ZN2OT6Lookup9serializeEPNS_22hb_serialize_context_tEjjj(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L241
	add	r3, r7, #20
	mov	r0, r3
	movs	r1, #0
	movw	r2, #1227
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L243
.L241:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	movs	r2, #0
	bl	_ZN2OT11SubstLookup18serialize_subtableEPNS_22hb_serialize_context_tEj(PLT)
	mov	r3, r0
	ldr	r2, [r7, #36]
	str	r2, [sp]
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7]
	ldr	r3, [r7, #32]
	bl	_ZN2OT11SingleSubst9serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEES7_j(PLT)
	mov	r3, r0
	add	r2, r7, #20
	mov	r0, r2
	mov	r1, r3
	movw	r2, #1228
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
.L243:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L245:
	.align	2
.L244:
	.word	_ZZN2OT11SubstLookup16serialize_singleEPNS_22hb_serialize_context_tEjRNS_8SupplierINS_7IntTypeItLj2EEEEES7_jE19__PRETTY_FUNCTION__-(.LPIC50+4)
	.word	.LC4-(.LPIC51+4)
	.word	.LC2-(.LPIC52+4)
	.fnend
	.size	_ZN2OT11SubstLookup16serialize_singleEPNS_22hb_serialize_context_tEjRNS_8SupplierINS_7IntTypeItLj2EEEEES7_j, .-_ZN2OT11SubstLookup16serialize_singleEPNS_22hb_serialize_context_tEjRNS_8SupplierINS_7IntTypeItLj2EEEEES7_j
	.section	.text._ZN2OT11SubstLookup18serialize_ligatureEPNS_22hb_serialize_context_tEjRNS_8SupplierINS_7IntTypeItLj2EEEEERNS3_IjEEjS7_S9_S7_,"axG",%progbits,_ZN2OT11SubstLookup18serialize_ligatureEPNS_22hb_serialize_context_tEjRNS_8SupplierINS_7IntTypeItLj2EEEEERNS3_IjEEjS7_S9_S7_,comdat
	.align	2
	.weak	_ZN2OT11SubstLookup18serialize_ligatureEPNS_22hb_serialize_context_tEjRNS_8SupplierINS_7IntTypeItLj2EEEEERNS3_IjEEjS7_S9_S7_
	.thumb
	.thumb_func
	.type	_ZN2OT11SubstLookup18serialize_ligatureEPNS_22hb_serialize_context_tEjRNS_8SupplierINS_7IntTypeItLj2EEEEERNS3_IjEEjS7_S9_S7_, %function
_ZN2OT11SubstLookup18serialize_ligatureEPNS_22hb_serialize_context_tEjRNS_8SupplierINS_7IntTypeItLj2EEEEERNS3_IjEEjS7_S9_S7_:
	.fnstart
.LFB853:
	@ args = 20, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #40
	sub	sp, sp, #40
	.setfp r7, sp, #16
	add	r7, sp, #16
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #8]
	add	r2, r7, #20
	ldr	r1, .L250
.LPIC53:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L250+4
.LPIC54:
	add	r1, pc
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L250+8
.LPIC55:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #8]
	bl	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #1
	str	r2, [sp]
	mov	r0, r3
	ldr	r1, [r7, #8]
	movs	r2, #4
	ldr	r3, [r7, #4]
	bl	_ZN2OT6Lookup9serializeEPNS_22hb_serialize_context_tEjjj(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L247
	add	r3, r7, #20
	mov	r0, r3
	movs	r1, #0
	movw	r2, #1267
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L249
.L247:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	movs	r2, #0
	bl	_ZN2OT11SubstLookup18serialize_subtableEPNS_22hb_serialize_context_tEj(PLT)
	mov	r3, r0
	ldr	r2, [r7, #36]
	str	r2, [sp]
	ldr	r2, [r7, #40]
	str	r2, [sp, #4]
	ldr	r2, [r7, #44]
	str	r2, [sp, #8]
	ldr	r2, [r7, #48]
	str	r2, [sp, #12]
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7]
	ldr	r3, [r7, #32]
	bl	_ZN2OT13LigatureSubst9serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEERNS3_IjEEjS7_S9_S7_(PLT)
	mov	r3, r0
	add	r2, r7, #20
	mov	r0, r2
	mov	r1, r3
	movw	r2, #1269
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
.L249:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L251:
	.align	2
.L250:
	.word	_ZZN2OT11SubstLookup18serialize_ligatureEPNS_22hb_serialize_context_tEjRNS_8SupplierINS_7IntTypeItLj2EEEEERNS3_IjEEjS7_S9_S7_E19__PRETTY_FUNCTION__-(.LPIC53+4)
	.word	.LC4-(.LPIC54+4)
	.word	.LC2-(.LPIC55+4)
	.fnend
	.size	_ZN2OT11SubstLookup18serialize_ligatureEPNS_22hb_serialize_context_tEjRNS_8SupplierINS_7IntTypeItLj2EEEEERNS3_IjEEjS7_S9_S7_, .-_ZN2OT11SubstLookup18serialize_ligatureEPNS_22hb_serialize_context_tEjRNS_8SupplierINS_7IntTypeItLj2EEEEERNS3_IjEEjS7_S9_S7_
	.section	.text._ZL40arabic_fallback_synthesize_lookup_singlePK18hb_ot_shape_plan_tP9hb_font_tj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL40arabic_fallback_synthesize_lookup_singlePK18hb_ot_shape_plan_tP9hb_font_tj, %function
_ZL40arabic_fallback_synthesize_lookup_singlePK18hb_ot_shape_plan_tP9hb_font_tj:
	.fnstart
.LFB864:
	@ args = 0, pretend = 0, frame = 1648
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #1660
	subw	sp, sp, #1660
	.setfp r7, sp, #8
	add	r7, sp, #8
	add	r3, r7, #12
	str	r0, [r3]
	add	r3, r7, #8
	str	r1, [r3]
	adds	r3, r7, #4
	str	r2, [r3]
	ldr	r4, .L265
.LPIC57:
	add	r4, pc
	movs	r3, #0
	str	r3, [r7, #1644]
	movw	r3, #1569
	str	r3, [r7, #1640]
	b	.L253
.L259:
	ldr	r3, [r7, #1640]
	subw	r2, r3, #1569
	ldr	r3, .L265+4
.LPIC56:
	add	r3, pc
	lsls	r1, r2, #2
	adds	r2, r7, #4
	ldr	r2, [r2]
	add	r2, r2, r1
	ldrh	r3, [r3, r2, lsl #1]
	str	r3, [r7, #1636]
	ldr	r3, [r7, #1636]
	cmp	r3, #0
	beq	.L254
	add	r2, r7, #8
	addw	r3, r7, #1588
	ldr	r0, [r2]
	ldr	r1, [r7, #1640]
	movs	r2, #0
	bl	hb_font_get_glyph(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L254
	add	r2, r7, #8
	add	r3, r7, #1584
	ldr	r0, [r2]
	ldr	r1, [r7, #1636]
	movs	r2, #0
	bl	hb_font_get_glyph(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L254
	ldr	r2, [r7, #1588]
	ldr	r3, [r7, #1584]
	cmp	r2, r3
	beq	.L254
	ldr	r3, [r7, #1588]
	cmp	r3, #65536
	bcs	.L254
	ldr	r3, [r7, #1584]
	cmp	r3, #65536
	bcc	.L255
.L254:
	movs	r3, #1
	b	.L256
.L255:
	movs	r3, #0
.L256:
	cmp	r3, #0
	bne	.L258
	add	r2, r7, #20
	ldr	r3, [r7, #1644]
	lsls	r3, r3, #1
	add	r2, r2, r3
	ldr	r3, [r7, #1588]
	uxth	r3, r3
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OT7IntTypeItLj2EE3setEt(PLT)
	add	r2, r7, #380
	ldr	r3, [r7, #1644]
	lsls	r3, r3, #1
	add	r2, r2, r3
	ldr	r3, [r7, #1584]
	uxth	r3, r3
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OT7IntTypeItLj2EE3setEt(PLT)
	ldr	r3, [r7, #1644]
	adds	r3, r3, #1
	str	r3, [r7, #1644]
.L258:
	ldr	r3, [r7, #1640]
	adds	r3, r3, #1
	str	r3, [r7, #1640]
.L253:
	ldr	r2, [r7, #1640]
	movw	r3, #1747
	cmp	r2, r3
	bls	.L259
	ldr	r3, [r7, #1644]
	cmp	r3, #0
	bne	.L260
	movs	r3, #0
	b	.L264
.L260:
	add	r2, r7, #20
	add	r3, r7, #380
	mov	r0, r2
	ldr	r1, [r7, #1644]
	ldr	r2, .L265+8
	ldr	r2, [r4, r2]
	bl	_Z14hb_bubble_sortIN2OT7IntTypeItLj2EEES2_EvPT_jPFiPKS3_S6_EPT0_(PLT)
	addw	r2, r7, #1620
	add	r3, r7, #20
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #1644]
	bl	_ZN2OT8SupplierINS_7IntTypeItLj2EEEEC1EPKS2_j(PLT)
	addw	r2, r7, #1612
	add	r3, r7, #380
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #1644]
	bl	_ZN2OT8SupplierINS_7IntTypeItLj2EEEEC1EPKS2_j(PLT)
	add	r2, r7, #1592
	add	r3, r7, #740
	mov	r0, r2
	mov	r1, r3
	mov	r2, #844
	bl	_ZN2OT22hb_serialize_context_tC1EPvj(PLT)
	add	r3, r7, #1592
	mov	r0, r3
	bl	_ZN2OT22hb_serialize_context_t15start_serializeINS_11SubstLookupEEEPT_v(PLT)
	mov	r3, r0
	str	r3, [r7, #1632]
	add	r2, r7, #1592
	addw	r3, r7, #1620
	addw	r1, r7, #1612
	str	r1, [sp]
	ldr	r1, [r7, #1644]
	str	r1, [sp, #4]
	ldr	r0, [r7, #1632]
	mov	r1, r2
	movs	r2, #8
	bl	_ZN2OT11SubstLookup16serialize_singleEPNS_22hb_serialize_context_tEjRNS_8SupplierINS_7IntTypeItLj2EEEEES7_j(PLT)
	mov	r3, r0
	strb	r3, [r7, #1631]
	add	r3, r7, #1592
	mov	r0, r3
	bl	_ZN2OT22hb_serialize_context_t13end_serializeEv(PLT)
	ldrb	r3, [r7, #1631]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L262
	add	r3, r7, #1592
	mov	r0, r3
	bl	_ZN2OT22hb_serialize_context_t4copyINS_11SubstLookupEEEPT_v(PLT)
	mov	r3, r0
	b	.L263
.L262:
	movs	r3, #0
.L263:
.L264:
	mov	r0, r3
	addw	r7, r7, #1652
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L266:
	.align	2
.L265:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC57+4)
	.word	_ZL13shaping_table-(.LPIC56+4)
	.word	_ZN2OT7IntTypeItLj2EE3cmpEPKS1_S3_(GOT)
	.fnend
	.size	_ZL40arabic_fallback_synthesize_lookup_singlePK18hb_ot_shape_plan_tP9hb_font_tj, .-_ZL40arabic_fallback_synthesize_lookup_singlePK18hb_ot_shape_plan_tP9hb_font_tj
	.section	.text._ZL42arabic_fallback_synthesize_lookup_ligaturePK18hb_ot_shape_plan_tP9hb_font_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL42arabic_fallback_synthesize_lookup_ligaturePK18hb_ot_shape_plan_tP9hb_font_t, %function
_ZL42arabic_fallback_synthesize_lookup_ligaturePK18hb_ot_shape_plan_tP9hb_font_t:
	.fnstart
.LFB865:
	@ args = 0, pretend = 0, frame = 464
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #492
	sub	sp, sp, #492
	.setfp r7, sp, #24
	add	r7, sp, #24
	adds	r3, r7, #4
	str	r0, [r3]
	mov	r3, r7
	str	r1, [r3]
	ldr	r4, .L286
.LPIC59:
	add	r4, pc
	movs	r3, #0
	str	r3, [r7, #460]
	movs	r3, #0
	str	r3, [r7, #456]
	movs	r3, #0
	str	r3, [r7, #452]
	b	.L268
.L271:
	ldr	r3, .L286+4
.LPIC58:
	add	r3, pc
	mov	r1, r3
	ldr	r2, [r7, #452]
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r1
	ldrh	r3, [r3]
	str	r3, [r7, #440]
	mov	r2, r7
	add	r3, r7, #304
	ldr	r0, [r2]
	ldr	r1, [r7, #440]
	movs	r2, #0
	bl	hb_font_get_glyph(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L270
	add	r2, r7, #416
	ldr	r3, [r7, #460]
	lsls	r3, r3, #1
	add	r2, r2, r3
	ldr	r3, [r7, #304]
	uxth	r3, r3
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OT7IntTypeItLj2EE3setEt(PLT)
	ldr	r3, [r7, #460]
	lsls	r3, r3, #2
	add	r1, r7, #464
	add	r3, r3, r1
	movs	r2, #0
	str	r2, [r3, #-64]
	ldr	r3, [r7, #460]
	lsls	r3, r3, #2
	add	r2, r7, #464
	add	r3, r3, r2
	ldr	r2, [r7, #452]
	str	r2, [r3, #-56]
	ldr	r3, [r7, #460]
	adds	r3, r3, #1
	str	r3, [r7, #460]
.L270:
	ldr	r3, [r7, #452]
	adds	r3, r3, #1
	str	r3, [r7, #452]
.L268:
	add	r3, r7, #416
	mov	r0, r3
	bl	_Z12ARRAY_LENGTHIN2OT7IntTypeItLj2EEELj2EEjRAT0__KT_(PLT)
	mov	r2, r0
	ldr	r3, [r7, #452]
	cmp	r2, r3
	ite	hi
	movhi	r3, #1
	movls	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L271
	add	r2, r7, #416
	add	r3, r7, #408
	mov	r0, r2
	ldr	r1, [r7, #460]
	ldr	r2, .L286+8
	ldr	r2, [r4, r2]
	bl	_Z14hb_bubble_sortIN2OT7IntTypeItLj2EEEjEvPT_jPFiPKS3_S6_EPT0_(PLT)
	movs	r3, #0
	str	r3, [r7, #448]
	b	.L272
.L280:
	ldr	r3, [r7, #448]
	lsls	r3, r3, #2
	add	r1, r7, #464
	add	r3, r3, r1
	ldr	r3, [r3, #-56]
	str	r3, [r7, #436]
	movs	r3, #0
	str	r3, [r7, #444]
	b	.L273
.L279:
	ldr	r3, .L286+12
.LPIC60:
	add	r3, pc
	mov	r1, r3
	ldr	r3, [r7, #444]
	ldr	r2, [r7, #436]
	lsls	r0, r3, #2
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r0
	add	r3, r3, r1
	ldrh	r3, [r3, #2]
	str	r3, [r7, #432]
	ldr	r3, .L286+16
.LPIC61:
	add	r3, pc
	mov	r1, r3
	ldr	r3, [r7, #444]
	ldr	r2, [r7, #436]
	lsls	r0, r3, #2
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r0
	add	r3, r3, r1
	ldrh	r3, [r3, #4]
	str	r3, [r7, #428]
	ldr	r3, [r7, #432]
	cmp	r3, #0
	beq	.L274
	mov	r2, r7
	add	r3, r7, #300
	ldr	r0, [r2]
	ldr	r1, [r7, #432]
	movs	r2, #0
	bl	hb_font_get_glyph(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L274
	mov	r2, r7
	add	r3, r7, #296
	ldr	r0, [r2]
	ldr	r1, [r7, #428]
	movs	r2, #0
	bl	hb_font_get_glyph(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L275
.L274:
	movs	r3, #1
	b	.L276
.L275:
	movs	r3, #0
.L276:
	cmp	r3, #0
	bne	.L278
	ldr	r3, [r7, #448]
	lsls	r3, r3, #2
	add	r2, r7, #464
	add	r3, r3, r2
	ldr	r3, [r3, #-64]
	adds	r2, r3, #1
	ldr	r3, [r7, #448]
	lsls	r3, r3, #2
	add	r1, r7, #464
	add	r3, r3, r1
	str	r2, [r3, #-64]
	add	r2, r7, #384
	ldr	r3, [r7, #456]
	lsls	r3, r3, #1
	add	r2, r2, r3
	ldr	r3, [r7, #296]
	uxth	r3, r3
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OT7IntTypeItLj2EE3setEt(PLT)
	add	r3, r7, #8
	ldr	r2, [r7, #456]
	movs	r1, #2
	str	r1, [r3, r2, lsl #2]
	add	r2, r7, #368
	ldr	r3, [r7, #456]
	lsls	r3, r3, #1
	add	r2, r2, r3
	ldr	r3, [r7, #300]
	uxth	r3, r3
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OT7IntTypeItLj2EE3setEt(PLT)
	ldr	r3, [r7, #456]
	adds	r3, r3, #1
	str	r3, [r7, #456]
.L278:
	ldr	r3, [r7, #444]
	adds	r3, r3, #1
	str	r3, [r7, #444]
.L273:
	ldr	r3, .L286+20
.LPIC62:
	add	r3, pc
	adds	r0, r3, #2
	bl	_Z12ARRAY_LENGTHIN14ligature_set_t16ligature_pairs_tELj4EEjRAT0__KT_(PLT)
	mov	r2, r0
	ldr	r3, [r7, #444]
	cmp	r2, r3
	ite	hi
	movhi	r3, #1
	movls	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L279
	ldr	r3, [r7, #448]
	adds	r3, r3, #1
	str	r3, [r7, #448]
.L272:
	ldr	r2, [r7, #448]
	ldr	r3, [r7, #460]
	cmp	r2, r3
	bcc	.L280
	ldr	r3, [r7, #456]
	cmp	r3, #0
	bne	.L281
	movs	r3, #0
	b	.L285
.L281:
	add	r2, r7, #360
	add	r3, r7, #416
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #460]
	bl	_ZN2OT8SupplierINS_7IntTypeItLj2EEEEC1EPKS2_j(PLT)
	add	r2, r7, #352
	add	r3, r7, #400
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #460]
	bl	_ZN2OT8SupplierIjEC1EPKjj(PLT)
	add	r2, r7, #344
	add	r3, r7, #384
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #456]
	bl	_ZN2OT8SupplierINS_7IntTypeItLj2EEEEC1EPKS2_j(PLT)
	add	r2, r7, #336
	add	r3, r7, #8
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #456]
	bl	_ZN2OT8SupplierIjEC1EPKjj(PLT)
	add	r2, r7, #328
	add	r3, r7, #368
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #456]
	bl	_ZN2OT8SupplierINS_7IntTypeItLj2EEEEC1EPKS2_j(PLT)
	add	r2, r7, #308
	add	r3, r7, #40
	mov	r0, r2
	mov	r1, r3
	mov	r2, #256
	bl	_ZN2OT22hb_serialize_context_tC1EPvj(PLT)
	add	r3, r7, #308
	mov	r0, r3
	bl	_ZN2OT22hb_serialize_context_t15start_serializeINS_11SubstLookupEEEPT_v(PLT)
	mov	r3, r0
	str	r3, [r7, #424]
	add	r2, r7, #308
	add	r3, r7, #360
	add	r1, r7, #352
	str	r1, [sp]
	ldr	r1, [r7, #460]
	str	r1, [sp, #4]
	add	r1, r7, #344
	str	r1, [sp, #8]
	add	r1, r7, #336
	str	r1, [sp, #12]
	add	r1, r7, #328
	str	r1, [sp, #16]
	ldr	r0, [r7, #424]
	mov	r1, r2
	movs	r2, #8
	bl	_ZN2OT11SubstLookup18serialize_ligatureEPNS_22hb_serialize_context_tEjRNS_8SupplierINS_7IntTypeItLj2EEEEERNS3_IjEEjS7_S9_S7_(PLT)
	mov	r3, r0
	strb	r3, [r7, #423]
	add	r3, r7, #308
	mov	r0, r3
	bl	_ZN2OT22hb_serialize_context_t13end_serializeEv(PLT)
	ldrb	r3, [r7, #423]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L283
	add	r3, r7, #308
	mov	r0, r3
	bl	_ZN2OT22hb_serialize_context_t4copyINS_11SubstLookupEEEPT_v(PLT)
	mov	r3, r0
	b	.L284
.L283:
	movs	r3, #0
.L284:
.L285:
	mov	r0, r3
	add	r7, r7, #468
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L287:
	.align	2
.L286:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC59+4)
	.word	_ZL14ligature_table-(.LPIC58+4)
	.word	_ZN2OT7IntTypeItLj2EE3cmpEPKS1_S3_(GOT)
	.word	_ZL14ligature_table-(.LPIC60+4)
	.word	_ZL14ligature_table-(.LPIC61+4)
	.word	_ZL14ligature_table-(.LPIC62+4)
	.fnend
	.size	_ZL42arabic_fallback_synthesize_lookup_ligaturePK18hb_ot_shape_plan_tP9hb_font_t, .-_ZL42arabic_fallback_synthesize_lookup_ligaturePK18hb_ot_shape_plan_tP9hb_font_t
	.section	.text._ZL33arabic_fallback_synthesize_lookupPK18hb_ot_shape_plan_tP9hb_font_tj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL33arabic_fallback_synthesize_lookupPK18hb_ot_shape_plan_tP9hb_font_tj, %function
_ZL33arabic_fallback_synthesize_lookupPK18hb_ot_shape_plan_tP9hb_font_tj:
	.fnstart
.LFB866:
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
	ldr	r3, [r7, #4]
	cmp	r3, #3
	bhi	.L289
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	_ZL40arabic_fallback_synthesize_lookup_singlePK18hb_ot_shape_plan_tP9hb_font_tj(PLT)
	mov	r3, r0
	b	.L290
.L289:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_ZL42arabic_fallback_synthesize_lookup_ligaturePK18hb_ot_shape_plan_tP9hb_font_t(PLT)
	mov	r3, r0
.L290:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL33arabic_fallback_synthesize_lookupPK18hb_ot_shape_plan_tP9hb_font_tj, .-_ZL33arabic_fallback_synthesize_lookupPK18hb_ot_shape_plan_tP9hb_font_tj
	.section	.rodata._ZL24arabic_fallback_plan_nil,"a",%progbits
	.align	2
	.type	_ZL24arabic_fallback_plan_nil, %object
	.size	_ZL24arabic_fallback_plan_nil, 108
_ZL24arabic_fallback_plan_nil:
	.space	108
	.section	.text._ZL33arabic_fallback_plan_init_win1256P22arabic_fallback_plan_tPK18hb_ot_shape_plan_tP9hb_font_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL33arabic_fallback_plan_init_win1256P22arabic_fallback_plan_tPK18hb_ot_shape_plan_tP9hb_font_t, %function
_ZL33arabic_fallback_plan_init_win1256P22arabic_fallback_plan_tPK18hb_ot_shape_plan_tP9hb_font_t:
	.fnstart
.LFB868:
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
	.size	_ZL33arabic_fallback_plan_init_win1256P22arabic_fallback_plan_tPK18hb_ot_shape_plan_tP9hb_font_t, .-_ZL33arabic_fallback_plan_init_win1256P22arabic_fallback_plan_tPK18hb_ot_shape_plan_tP9hb_font_t
	.section	.text._ZL33arabic_fallback_plan_init_unicodeP22arabic_fallback_plan_tPK18hb_ot_shape_plan_tP9hb_font_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL33arabic_fallback_plan_init_unicodeP22arabic_fallback_plan_tPK18hb_ot_shape_plan_tP9hb_font_t, %function
_ZL33arabic_fallback_plan_init_unicodeP22arabic_fallback_plan_tPK18hb_ot_shape_plan_tP9hb_font_t:
	.fnstart
.LFB869:
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
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L294
.L296:
	ldr	r3, [r7, #8]
	add	r2, r3, #24
	ldr	r3, .L298
.LPIC63:
	add	r3, pc
	ldr	r1, [r7, #16]
	ldr	r3, [r3, r1, lsl #2]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK11hb_ot_map_t10get_1_maskEj(PLT)
	mov	r1, r0
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #20]
	adds	r2, r2, #2
	str	r1, [r3, r2, lsl #2]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #20]
	adds	r2, r2, #2
	ldr	r3, [r3, r2, lsl #2]
	cmp	r3, #0
	beq	.L295
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #16]
	bl	_ZL33arabic_fallback_synthesize_lookupPK18hb_ot_shape_plan_tP9hb_font_tj(PLT)
	mov	r2, r0
	ldr	r1, [r7, #12]
	ldr	r3, [r7, #20]
	adds	r3, r3, #6
	lsls	r3, r3, #2
	add	r3, r3, r1
	str	r2, [r3, #4]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #20]
	adds	r3, r3, #6
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L295
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #48
	ldr	r2, [r7, #12]
	add	r2, r2, r3
	ldr	r1, [r7, #12]
	ldr	r3, [r7, #20]
	adds	r3, r3, #6
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r3, [r3, #4]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN33hb_ot_layout_lookup_accelerator_t4initIN2OT11SubstLookupEEEvRKT_(PLT)
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L295:
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L294:
	ldr	r3, .L298+4
.LPIC64:
	add	r3, pc
	mov	r0, r3
	bl	_Z12ARRAY_LENGTHIjLj5EEjRAT0__KT_(PLT)
	mov	r2, r0
	ldr	r3, [r7, #16]
	cmp	r2, r3
	ite	hi
	movhi	r3, #1
	movls	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L296
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #20]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #4]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L299:
	.align	2
.L298:
	.word	_ZL24arabic_fallback_features-(.LPIC63+4)
	.word	_ZL24arabic_fallback_features-(.LPIC64+4)
	.fnend
	.size	_ZL33arabic_fallback_plan_init_unicodeP22arabic_fallback_plan_tPK18hb_ot_shape_plan_tP9hb_font_t, .-_ZL33arabic_fallback_plan_init_unicodeP22arabic_fallback_plan_tPK18hb_ot_shape_plan_tP9hb_font_t
	.section	.text._ZL27arabic_fallback_plan_createPK18hb_ot_shape_plan_tP9hb_font_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL27arabic_fallback_plan_createPK18hb_ot_shape_plan_tP9hb_font_t, %function
_ZL27arabic_fallback_plan_createPK18hb_ot_shape_plan_tP9hb_font_t:
	.fnstart
.LFB870:
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
	movs	r0, #1
	movs	r1, #108
	bl	calloc(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L301
	ldr	r3, .L305
.LPIC65:
	add	r3, pc
	b	.L302
.L301:
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #4]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
	bl	_ZL33arabic_fallback_plan_init_unicodeP22arabic_fallback_plan_tPK18hb_ot_shape_plan_tP9hb_font_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L303
	ldr	r3, [r7, #12]
	b	.L302
.L303:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
	bl	_ZL33arabic_fallback_plan_init_win1256P22arabic_fallback_plan_tPK18hb_ot_shape_plan_tP9hb_font_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L304
	ldr	r3, [r7, #12]
	b	.L302
.L304:
	ldr	r0, [r7, #12]
	bl	free(PLT)
	ldr	r3, .L305+4
.LPIC66:
	add	r3, pc
.L302:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L306:
	.align	2
.L305:
	.word	_ZL24arabic_fallback_plan_nil-(.LPIC65+4)
	.word	_ZL24arabic_fallback_plan_nil-(.LPIC66+4)
	.fnend
	.size	_ZL27arabic_fallback_plan_createPK18hb_ot_shape_plan_tP9hb_font_t, .-_ZL27arabic_fallback_plan_createPK18hb_ot_shape_plan_tP9hb_font_t
	.section	.text._ZL28arabic_fallback_plan_destroyP22arabic_fallback_plan_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL28arabic_fallback_plan_destroyP22arabic_fallback_plan_t, %function
_ZL28arabic_fallback_plan_destroyP22arabic_fallback_plan_t:
	.fnstart
.LFB871:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L308
	ldr	r2, [r7, #4]
	ldr	r3, .L314
.LPIC67:
	add	r3, pc
	cmp	r2, r3
	bne	.L309
.L308:
	b	.L307
.L309:
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L311
.L313:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #12]
	adds	r3, r3, #6
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L312
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #48
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZN33hb_ot_layout_lookup_accelerator_t4finiEv(PLT)
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L312
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #12]
	adds	r3, r3, #6
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	free(PLT)
.L312:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L311:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bhi	.L313
	ldr	r0, [r7, #4]
	bl	free(PLT)
.L307:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L315:
	.align	2
.L314:
	.word	_ZL24arabic_fallback_plan_nil-(.LPIC67+4)
	.cantunwind
	.fnend
	.size	_ZL28arabic_fallback_plan_destroyP22arabic_fallback_plan_t, .-_ZL28arabic_fallback_plan_destroyP22arabic_fallback_plan_t
	.section	.text._ZL26arabic_fallback_plan_shapeP22arabic_fallback_plan_tP9hb_font_tP11hb_buffer_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL26arabic_fallback_plan_shapeP22arabic_fallback_plan_tP9hb_font_tP11hb_buffer_t, %function
_ZL26arabic_fallback_plan_shapeP22arabic_fallback_plan_tP9hb_font_tP11hb_buffer_t:
	.fnstart
.LFB872:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #72
	sub	sp, sp, #72
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	add	r3, r7, #16
	mov	r0, r3
	movs	r1, #0
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	bl	_ZN2OT18hb_apply_context_tC1EjP9hb_font_tP11hb_buffer_t(PLT)
	movs	r3, #0
	str	r3, [r7, #68]
	b	.L317
.L319:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #68]
	adds	r3, r3, #6
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L318
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #68]
	adds	r2, r2, #2
	ldr	r3, [r3, r2, lsl #2]
	add	r2, r7, #16
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OT18hb_apply_context_t15set_lookup_maskEj(PLT)
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #68]
	adds	r3, r3, #6
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r1, [r3, #4]
	ldr	r2, [r7, #68]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #48
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	add	r2, r7, #16
	mov	r0, r2
	mov	r2, r3
	bl	_Z30hb_ot_layout_substitute_lookupPN2OT18hb_apply_context_tERKNS_11SubstLookupERK33hb_ot_layout_lookup_accelerator_t(PLT)
.L318:
	ldr	r3, [r7, #68]
	adds	r3, r3, #1
	str	r3, [r7, #68]
.L317:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #68]
	cmp	r2, r3
	bhi	.L319
	adds	r7, r7, #72
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL26arabic_fallback_plan_shapeP22arabic_fallback_plan_tP9hb_font_tP11hb_buffer_t, .-_ZL26arabic_fallback_plan_shapeP22arabic_fallback_plan_tP9hb_font_tP11hb_buffer_t
	.section	.text._ZL18data_create_arabicPK18hb_ot_shape_plan_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL18data_create_arabicPK18hb_ot_shape_plan_t, %function
_ZL18data_create_arabicPK18hb_ot_shape_plan_t:
	.fnstart
.LFB874:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r0, #1
	movs	r1, #40
	bl	calloc(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L321
	movs	r3, #0
	b	.L322
.L321:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	movw	r3, #24930
	movt	r3, 16754
	cmp	r2, r3
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r2, r3
	ldr	r3, [r7, #8]
	strb	r2, [r3, #32]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L323
.L327:
	ldr	r3, [r7, #4]
	add	r2, r3, #24
	ldr	r3, .L328
.LPIC68:
	add	r3, pc
	ldr	r1, [r7, #12]
	ldr	r3, [r3, r1, lsl #2]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK11hb_ot_map_t10get_1_maskEj(PLT)
	mov	r1, r0
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #12]
	str	r1, [r3, r2, lsl #2]
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #32]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L324
	ldr	r3, .L328+4
.LPIC69:
	add	r3, pc
	ldr	r2, [r7, #12]
	ldr	r3, [r3, r2, lsl #2]
	uxtb	r3, r3
	mov	r0, r3
	movs	r1, #50
	movs	r2, #51
	bl	_Z11hb_in_rangeIhEbT_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L325
	ldr	r3, [r7, #4]
	add	r2, r3, #24
	ldr	r3, .L328+8
.LPIC70:
	add	r3, pc
	ldr	r1, [r7, #12]
	ldr	r3, [r3, r1, lsl #2]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK11hb_ot_map_t14needs_fallbackEj(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L324
.L325:
	movs	r3, #1
	b	.L326
.L324:
	movs	r3, #0
.L326:
	ldr	r2, [r7, #8]
	strb	r3, [r2, #32]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L323:
	ldr	r3, [r7, #12]
	cmp	r3, #6
	bls	.L327
	ldr	r3, [r7, #8]
.L322:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L329:
	.align	2
.L328:
	.word	_ZL15arabic_features-(.LPIC68+4)
	.word	_ZL15arabic_features-(.LPIC69+4)
	.word	_ZL15arabic_features-(.LPIC70+4)
	.fnend
	.size	_ZL18data_create_arabicPK18hb_ot_shape_plan_t, .-_ZL18data_create_arabicPK18hb_ot_shape_plan_t
	.section	.text._ZL19data_destroy_arabicPv,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL19data_destroy_arabicPv, %function
_ZL19data_destroy_arabicPv:
	.fnstart
.LFB875:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #36]
	mov	r0, r3
	bl	_ZL28arabic_fallback_plan_destroyP22arabic_fallback_plan_t(PLT)
	ldr	r0, [r7, #4]
	bl	free(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZL19data_destroy_arabicPv, .-_ZL19data_destroy_arabicPv
	.section	.text._ZL14arabic_joiningP11hb_buffer_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL14arabic_joiningP11hb_buffer_t, %function
_ZL14arabic_joiningP11hb_buffer_t:
	.fnstart
.LFB876:
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
	ldr	r3, [r3, #88]
	str	r3, [r7, #40]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	str	r3, [r7, #36]
	mov	r3, #-1
	str	r3, [r7, #60]
	movs	r3, #0
	str	r3, [r7, #56]
	movs	r3, #0
	str	r3, [r7, #52]
	b	.L332
.L336:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #52]
	adds	r3, r3, #38
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #44]
	ldr	r1, [r7, #4]
	ldr	r3, [r7, #52]
	adds	r3, r3, #38
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r3, [r3, #4]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN18hb_unicode_funcs_t16general_categoryEj(PLT)
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	bl	_ZL16get_joining_typej29hb_unicode_general_category_t(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #7
	bne	.L333
	nop
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	str	r3, [r7, #52]
	b	.L332
.L333:
	ldr	r2, [r7, #56]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #1
	ldr	r2, [r7, #32]
	add	r3, r3, r2
	lsls	r2, r3, #2
	ldr	r3, .L348
.LPIC71:
	add	r3, pc
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	ldrh	r3, [r3, #2]
	str	r3, [r7, #56]
	b	.L335
.L332:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #196]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bhi	.L336
.L335:
	movs	r3, #0
	str	r3, [r7, #48]
	b	.L337
.L341:
	ldr	r2, [r7, #48]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldr	r4, [r3]
	ldr	r2, [r7, #48]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL35_hb_glyph_info_get_general_categoryPK15hb_glyph_info_t(PLT)
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	bl	_ZL16get_joining_typej29hb_unicode_general_category_t(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #7
	bne	.L338
	ldr	r2, [r7, #48]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	movs	r2, #7
	strb	r2, [r3, #18]
	b	.L339
.L338:
	ldr	r2, [r7, #56]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #1
	ldr	r2, [r7, #24]
	add	r3, r3, r2
	lsls	r2, r3, #2
	ldr	r3, .L348+4
.LPIC72:
	add	r3, pc
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #7
	beq	.L340
	ldr	r3, [r7, #60]
	cmp	r3, #-1
	beq	.L340
	ldr	r2, [r7, #60]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldr	r2, [r7, #20]
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3, #18]
.L340:
	ldr	r2, [r7, #48]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldr	r2, [r7, #20]
	ldrb	r2, [r2, #1]	@ zero_extendqisi2
	strb	r2, [r3, #18]
	ldr	r3, [r7, #48]
	str	r3, [r7, #60]
	ldr	r3, [r7, #20]
	ldrh	r3, [r3, #2]
	str	r3, [r7, #56]
.L339:
	ldr	r3, [r7, #48]
	adds	r3, r3, #1
	str	r3, [r7, #48]
.L337:
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bcc	.L341
	movs	r3, #0
	str	r3, [r7, #44]
	b	.L342
.L347:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #44]
	adds	r3, r3, #43
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #44]
	ldr	r1, [r7, #4]
	ldr	r3, [r7, #44]
	adds	r3, r3, #43
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r3, [r3, #4]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN18hb_unicode_funcs_t16general_categoryEj(PLT)
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	bl	_ZL16get_joining_typej29hb_unicode_general_category_t(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #7
	bne	.L343
	nop
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	str	r3, [r7, #44]
	b	.L342
.L343:
	ldr	r2, [r7, #56]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #1
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	lsls	r2, r3, #2
	ldr	r3, .L348+8
.LPIC73:
	add	r3, pc
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #7
	beq	.L345
	ldr	r3, [r7, #60]
	cmp	r3, #-1
	beq	.L345
	ldr	r2, [r7, #60]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldr	r2, [r7, #12]
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3, #18]
.L345:
	b	.L331
.L342:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #200]
	ldr	r3, [r7, #44]
	cmp	r2, r3
	bhi	.L347
.L331:
	adds	r7, r7, #68
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L349:
	.align	2
.L348:
	.word	_ZL18arabic_state_table-(.LPIC71+4)
	.word	_ZL18arabic_state_table-(.LPIC72+4)
	.word	_ZL18arabic_state_table-(.LPIC73+4)
	.fnend
	.size	_ZL14arabic_joiningP11hb_buffer_t, .-_ZL14arabic_joiningP11hb_buffer_t
	.section	.text._ZL29mongolian_variation_selectorsP11hb_buffer_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL29mongolian_variation_selectorsP11hb_buffer_t, %function
_ZL29mongolian_variation_selectorsP11hb_buffer_t:
	.fnstart
.LFB877:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
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
	b	.L351
.L353:
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldr	r3, [r3]
	mov	r0, r3
	movw	r1, #6155
	movw	r2, #6157
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L352
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
	subs	r3, r3, #20
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrb	r3, [r3, #18]	@ zero_extendqisi2
	strb	r3, [r1, #18]
.L352:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L351:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bcc	.L353
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZL29mongolian_variation_selectorsP11hb_buffer_t, .-_ZL29mongolian_variation_selectorsP11hb_buffer_t
	.section	.rodata
	.align	2
.LC6:
	.ascii	"arabic_shaping_action\000"
	.section	.text._ZL18setup_masks_arabicPK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL18setup_masks_arabicPK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t, %function
_ZL18setup_masks_arabicPK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t:
	.fnstart
.LFB878:
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
	ldr	r0, [r7, #8]
	movs	r1, #6
	movs	r2, #1
	ldr	r3, .L358
.LPIC74:
	add	r3, pc
	bl	_ZN11hb_buffer_t12allocate_varEjjPKc(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #964]
	str	r3, [r7, #24]
	ldr	r0, [r7, #8]
	bl	_ZL14arabic_joiningP11hb_buffer_t(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	movw	r3, #28263
	movt	r3, 19823
	cmp	r2, r3
	bne	.L355
	ldr	r0, [r7, #8]
	bl	_ZL29mongolian_variation_selectorsP11hb_buffer_t(PLT)
.L355:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #88]
	str	r3, [r7, #20]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #100]
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L356
.L357:
	ldr	r2, [r7, #28]
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
	ldr	r0, [r3, #4]
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	ldrb	r3, [r3, #18]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #24]
	ldr	r3, [r3, r2, lsl #2]
	orrs	r3, r3, r0
	str	r3, [r1, #4]
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L356:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcc	.L357
	ldr	r0, [r7, #8]
	movs	r1, #6
	movs	r2, #1
	ldr	r3, .L358+4
.LPIC75:
	add	r3, pc
	bl	_ZN11hb_buffer_t14deallocate_varEjjPKc(PLT)
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L359:
	.align	2
.L358:
	.word	.LC6-(.LPIC74+4)
	.word	.LC6-(.LPIC75+4)
	.fnend
	.size	_ZL18setup_masks_arabicPK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t, .-_ZL18setup_masks_arabicPK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t
	.section	.text._ZL12nuke_joinersPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL12nuke_joinersPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t, %function
_ZL12nuke_joinersPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t:
	.fnstart
.LFB879:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L361
.L363:
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL21_hb_glyph_info_is_zwjPK15hb_glyph_info_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L362
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL27_hb_glyph_info_flip_joinersP15hb_glyph_info_t(PLT)
.L362:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L361:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bcc	.L363
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZL12nuke_joinersPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t, .-_ZL12nuke_joinersPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t
	.section	.text._ZL21arabic_fallback_shapePK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL21arabic_fallback_shapePK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t, %function
_ZL21arabic_fallback_shapePK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t:
	.fnstart
.LFB880:
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
	ldr	r3, [r3, #964]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldrb	r3, [r3, #32]	@ zero_extendqisi2
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L365
	b	.L364
.L365:
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #36]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L367
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_ZL27arabic_fallback_plan_createPK18hb_ot_shape_plan_tP9hb_font_t(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #16]
	adds	r3, r3, #36
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L368
	ldr	r3, [r7, #16]
	adds	r3, r3, #36
	ldr	r2, [r7, #20]
	str	r2, [r3]
	movs	r3, #0
	b	.L369
.L368:
	movs	r3, #1
.L369:
	cmp	r3, #0
	beq	.L367
	ldr	r0, [r7, #20]
	bl	_ZL28arabic_fallback_plan_destroyP22arabic_fallback_plan_t(PLT)
	b	.L365
.L367:
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	_ZL26arabic_fallback_plan_shapeP22arabic_fallback_plan_tP9hb_font_tP11hb_buffer_t(PLT)
.L364:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL21arabic_fallback_shapePK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t, .-_ZL21arabic_fallback_shapePK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t
	.hidden	_hb_ot_complex_shaper_arabic
	.global	_hb_ot_complex_shaper_arabic
	.section	.data.rel.ro.local._hb_ot_complex_shaper_arabic,"aw",%progbits
	.align	2
	.type	_hb_ot_complex_shaper_arabic, %object
	.size	_hb_ot_complex_shaper_arabic, 52
_hb_ot_complex_shaper_arabic:
	.ascii	"arabic\000"
	.space	1
	.word	_ZL23collect_features_arabicP21hb_ot_shape_planner_t
	.word	0
	.word	_ZL18data_create_arabicPK18hb_ot_shape_plan_t
	.word	_ZL19data_destroy_arabicPv
	.word	0
	.word	2
	.word	0
	.word	0
	.word	_ZL18setup_masks_arabicPK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t
	.word	3
	.byte	1
	.space	3
	.section	.text._Z11hb_in_rangeIjEbT_S0_S0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z11hb_in_rangeIjEbT_S0_S0_, %function
_Z11hb_in_rangeIjEbT_S0_S0_:
	.fnstart
.LFB886:
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
	.section	.text._ZNK21hb_prealloced_array_tIN11hb_ot_map_t13feature_map_tELj8EE7bsearchIjEEPKS1_PT_,"axG",%progbits,_ZNK21hb_prealloced_array_tIN11hb_ot_map_t13feature_map_tELj8EE7bsearchIjEEPKS1_PT_,comdat
	.align	2
	.weak	_ZNK21hb_prealloced_array_tIN11hb_ot_map_t13feature_map_tELj8EE7bsearchIjEEPKS1_PT_
	.thumb
	.thumb_func
	.type	_ZNK21hb_prealloced_array_tIN11hb_ot_map_t13feature_map_tELj8EE7bsearchIjEEPKS1_PT_, %function
_ZNK21hb_prealloced_array_tIN11hb_ot_map_t13feature_map_tELj8EE7bsearchIjEEPKS1_PT_:
	.fnstart
.LFB888:
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
	ldr	r0, .L374
.LPIC76:
	add	r0, pc
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r1, .L374+4
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
.L375:
	.align	2
.L374:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC76+4)
	.word	_ZN11hb_ot_map_t13feature_map_t3cmpEPKS0_S2_(GOT)
	.fnend
	.size	_ZNK21hb_prealloced_array_tIN11hb_ot_map_t13feature_map_tELj8EE7bsearchIjEEPKS1_PT_, .-_ZNK21hb_prealloced_array_tIN11hb_ot_map_t13feature_map_tELj8EE7bsearchIjEEPKS1_PT_
	.section	.text._Z11hb_in_rangeIhEbT_S0_S0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z11hb_in_rangeIhEbT_S0_S0_, %function
_Z11hb_in_rangeIhEbT_S0_S0_:
	.fnstart
.LFB899:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r2
	mov	r2, r0
	strb	r2, [r7, #7]
	mov	r2, r1
	strb	r2, [r7, #6]
	strb	r3, [r7, #5]
	ldrb	r2, [r7, #7]
	ldrb	r3, [r7, #6]
	subs	r3, r2, r3
	uxtb	r2, r3
	ldrb	r1, [r7, #5]
	ldrb	r3, [r7, #6]
	subs	r3, r1, r3
	uxtb	r3, r3
	cmp	r2, r3
	ite	ls
	movls	r3, #1
	movhi	r3, #0
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_Z11hb_in_rangeIhEbT_S0_S0_, .-_Z11hb_in_rangeIhEbT_S0_S0_
	.section	.text._ZN15hb_auto_trace_tILi0EbEC2EPjPKcPKvS3_S3_z,"axG",%progbits,_ZN15hb_auto_trace_tILi0EbEC5EPjPKcPKvS3_S3_z,comdat
	.align	2
	.weak	_ZN15hb_auto_trace_tILi0EbEC2EPjPKcPKvS3_S3_z
	.thumb
	.thumb_func
	.type	_ZN15hb_auto_trace_tILi0EbEC2EPjPKcPKvS3_S3_z, %function
_ZN15hb_auto_trace_tILi0EbEC2EPjPKcPKvS3_S3_z:
	.fnstart
.LFB901:
	@ args = 8, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 1
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN15hb_auto_trace_tILi0EbEC2EPjPKcPKvS3_S3_z, .-_ZN15hb_auto_trace_tILi0EbEC2EPjPKcPKvS3_S3_z
	.weak	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z
	.thumb_set _ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z,_ZN15hb_auto_trace_tILi0EbEC2EPjPKcPKvS3_S3_z
	.section	.text._ZN15hb_auto_trace_tILi0EbE3retEbj,"axG",%progbits,_ZN15hb_auto_trace_tILi0EbE3retEbj,comdat
	.align	2
	.weak	_ZN15hb_auto_trace_tILi0EbE3retEbj
	.thumb
	.thumb_func
	.type	_ZN15hb_auto_trace_tILi0EbE3retEbj, %function
_ZN15hb_auto_trace_tILi0EbE3retEbj:
	.fnstart
.LFB904:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	mov	r3, r1
	str	r2, [r7, #4]
	strb	r3, [r7, #11]
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN15hb_auto_trace_tILi0EbE3retEbj, .-_ZN15hb_auto_trace_tILi0EbE3retEbj
	.section	.text._ZNK2OT7IntTypeIjLj4EEcvjEv,"axG",%progbits,_ZNK2OT7IntTypeIjLj4EEcvjEv,comdat
	.align	2
	.weak	_ZNK2OT7IntTypeIjLj4EEcvjEv
	.thumb
	.thumb_func
	.type	_ZNK2OT7IntTypeIjLj4EEcvjEv, %function
_ZNK2OT7IntTypeIjLj4EEcvjEv:
	.fnstart
.LFB907:
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
	bl	_ZNK2OT5BEIntIjLi4EEcvjEv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT7IntTypeIjLj4EEcvjEv, .-_ZNK2OT7IntTypeIjLj4EEcvjEv
	.section	.text._ZNK2OT7IntTypeItLj2EEcvtEv,"axG",%progbits,_ZNK2OT7IntTypeItLj2EEcvtEv,comdat
	.align	2
	.weak	_ZNK2OT7IntTypeItLj2EEcvtEv
	.thumb
	.thumb_func
	.type	_ZNK2OT7IntTypeItLj2EEcvtEv, %function
_ZNK2OT7IntTypeItLj2EEcvtEv:
	.fnstart
.LFB909:
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
	bl	_ZNK2OT5BEIntItLi2EEcvtEv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT7IntTypeItLj2EEcvtEv, .-_ZNK2OT7IntTypeItLj2EEcvtEv
	.section	.text._ZN2OTL5CastPINS_11RangeRecordEcEEPKT_PKT0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL5CastPINS_11RangeRecordEcEEPKT_PKT0_, %function
_ZN2OTL5CastPINS_11RangeRecordEcEEPKT_PKT0_:
	.fnstart
.LFB912:
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
	.size	_ZN2OTL5CastPINS_11RangeRecordEcEEPKT_PKT0_, .-_ZN2OTL5CastPINS_11RangeRecordEcEEPKT_PKT0_
	.section	.text._ZN2OT7IntTypeItLj2EE3setEt,"axG",%progbits,_ZN2OT7IntTypeItLj2EE3setEt,comdat
	.align	2
	.weak	_ZN2OT7IntTypeItLj2EE3setEt
	.thumb
	.thumb_func
	.type	_ZN2OT7IntTypeItLj2EE3setEt, %function
_ZN2OT7IntTypeItLj2EE3setEt:
	.fnstart
.LFB935:
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
	strh	r3, [r7, #2]	@ movhi
	ldr	r2, [r7, #4]
	ldrh	r3, [r7, #2]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OT5BEIntItLi2EE3setEt(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OT7IntTypeItLj2EE3setEt, .-_ZN2OT7IntTypeItLj2EE3setEt
	.section	.rodata
	.align	2
.LC7:
	.ascii	"this->start <= (char *) &obj && (char *) &obj <= th"
	.ascii	"is->head && (char *) &obj + size >= this->head\000"
	.align	2
.LC8:
	.ascii	"../../../libs/harfbuzz-ng/src/hb-open-type-private."
	.ascii	"hh\000"
	.section	.text._ZN2OT22hb_serialize_context_t10extend_minINS_6LookupEEEPT_RS3_,"axG",%progbits,_ZN2OT22hb_serialize_context_t10extend_minINS_6LookupEEEPT_RS3_,comdat
	.align	2
	.weak	_ZN2OT22hb_serialize_context_t10extend_minINS_6LookupEEEPT_RS3_
	.thumb
	.thumb_func
	.type	_ZN2OT22hb_serialize_context_t10extend_minINS_6LookupEEEPT_RS3_, %function
_ZN2OT22hb_serialize_context_t10extend_minINS_6LookupEEEPT_RS3_:
	.fnstart
.LFB938:
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
	movs	r3, #6
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	cmp	r2, r3
	bhi	.L391
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L391
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	cmp	r2, r3
	bcs	.L392
.L391:
	ldr	r3, .L395
.LPIC77:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L395+4
.LPIC78:
	add	r3, pc
	mov	r1, r3
	movw	r2, #461
	ldr	r3, .L395+8
.LPIC79:
	add	r3, pc
	bl	__assert_fail(PLT)
.L392:
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	subs	r3, r2, r3
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_6LookupEEEPT_j(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L393
	movs	r3, #0
	b	.L394
.L393:
	ldr	r3, [r7]
.L394:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L396:
	.align	2
.L395:
	.word	.LC7-(.LPIC77+4)
	.word	.LC8-(.LPIC78+4)
	.word	_ZZN2OT22hb_serialize_context_t10extend_minINS_6LookupEEEPT_RS3_E19__PRETTY_FUNCTION__-(.LPIC79+4)
	.fnend
	.size	_ZN2OT22hb_serialize_context_t10extend_minINS_6LookupEEEPT_RS3_, .-_ZN2OT22hb_serialize_context_t10extend_minINS_6LookupEEEPT_RS3_
	.section	.text._ZN2OT7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES3_E9serializeEPNS_22hb_serialize_context_tEj,"axG",%progbits,_ZN2OT7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES3_E9serializeEPNS_22hb_serialize_context_tEj,comdat
	.align	2
	.weak	_ZN2OT7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES3_E9serializeEPNS_22hb_serialize_context_tEj
	.thumb
	.thumb_func
	.type	_ZN2OT7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES3_E9serializeEPNS_22hb_serialize_context_tEj, %function
_ZN2OT7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES3_E9serializeEPNS_22hb_serialize_context_tEj:
	.fnstart
.LFB939:
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
	ldr	r3, [r7, #8]
	add	r2, r7, #20
	ldr	r1, .L402
.LPIC80:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L402+4
.LPIC81:
	add	r1, pc
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L402+8
.LPIC82:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #8]
	bl	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z(PLT)
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #12]
	bl	_ZN2OT22hb_serialize_context_t10extend_minINS_7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES5_EEEEPT_RS8_(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L398
	add	r3, r7, #20
	mov	r0, r3
	movs	r1, #0
	movw	r2, #823
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L401
.L398:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	uxth	r3, r3
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OT7IntTypeItLj2EE3setEt(PLT)
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #12]
	bl	_ZN2OT22hb_serialize_context_t6extendINS_7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES5_EEEEPT_RS8_(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L400
	add	r3, r7, #20
	mov	r0, r3
	movs	r1, #0
	movw	r2, #825
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L401
.L400:
	add	r3, r7, #20
	mov	r0, r3
	movs	r1, #1
	movw	r2, #826
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
.L401:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L403:
	.align	2
.L402:
	.word	_ZZN2OT7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES3_E9serializeEPNS_22hb_serialize_context_tEjE19__PRETTY_FUNCTION__-(.LPIC80+4)
	.word	.LC4-(.LPIC81+4)
	.word	.LC2-(.LPIC82+4)
	.fnend
	.size	_ZN2OT7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES3_E9serializeEPNS_22hb_serialize_context_tEj, .-_ZN2OT7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES3_E9serializeEPNS_22hb_serialize_context_tEj
	.section	.text._ZN2OTL11StructAfterINS_7IntTypeItLj2EEENS_7ArrayOfINS_6OffsetIS2_EES2_EEEERT_RT0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL11StructAfterINS_7IntTypeItLj2EEENS_7ArrayOfINS_6OffsetIS2_EES2_EEEERT_RT0_, %function
_ZN2OTL11StructAfterINS_7IntTypeItLj2EEENS_7ArrayOfINS_6OffsetIS2_EES2_EEEERT_RT0_:
	.fnstart
.LFB940:
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
	bl	_ZNK2OT7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES3_E8get_sizeEv(PLT)
	mov	r3, r0
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN2OTL14StructAtOffsetINS_7IntTypeItLj2EEEEERT_Pvj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OTL11StructAfterINS_7IntTypeItLj2EEENS_7ArrayOfINS_6OffsetIS2_EES2_EEEERT_RT0_, .-_ZN2OTL11StructAfterINS_7IntTypeItLj2EEENS_7ArrayOfINS_6OffsetIS2_EES2_EEEERT_RT0_
	.section	.text._ZN2OT22hb_serialize_context_t10extend_minINS_15CoverageFormat1EEEPT_RS3_,"axG",%progbits,_ZN2OT22hb_serialize_context_t10extend_minINS_15CoverageFormat1EEEPT_RS3_,comdat
	.align	2
	.weak	_ZN2OT22hb_serialize_context_t10extend_minINS_15CoverageFormat1EEEPT_RS3_
	.thumb
	.thumb_func
	.type	_ZN2OT22hb_serialize_context_t10extend_minINS_15CoverageFormat1EEEPT_RS3_, %function
_ZN2OT22hb_serialize_context_t10extend_minINS_15CoverageFormat1EEEPT_RS3_:
	.fnstart
.LFB946:
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
	movs	r3, #4
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	cmp	r2, r3
	bhi	.L407
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L407
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	cmp	r2, r3
	bcs	.L408
.L407:
	ldr	r3, .L411
.LPIC83:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L411+4
.LPIC84:
	add	r3, pc
	mov	r1, r3
	movw	r2, #461
	ldr	r3, .L411+8
.LPIC85:
	add	r3, pc
	bl	__assert_fail(PLT)
.L408:
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	subs	r3, r2, r3
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_15CoverageFormat1EEEPT_j(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L409
	movs	r3, #0
	b	.L410
.L409:
	ldr	r3, [r7]
.L410:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L412:
	.align	2
.L411:
	.word	.LC7-(.LPIC83+4)
	.word	.LC8-(.LPIC84+4)
	.word	_ZZN2OT22hb_serialize_context_t10extend_minINS_15CoverageFormat1EEEPT_RS3_E19__PRETTY_FUNCTION__-(.LPIC85+4)
	.fnend
	.size	_ZN2OT22hb_serialize_context_t10extend_minINS_15CoverageFormat1EEEPT_RS3_, .-_ZN2OT22hb_serialize_context_t10extend_minINS_15CoverageFormat1EEEPT_RS3_
	.section	.rodata
	.align	2
.LC9:
	.ascii	"this->start < (char *) &obj && (char *) &obj <= thi"
	.ascii	"s->head && (char *) &obj + size >= this->head\000"
	.section	.text._ZN2OT22hb_serialize_context_t6extendINS_13SortedArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_,"axG",%progbits,_ZN2OT22hb_serialize_context_t6extendINS_13SortedArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_,comdat
	.align	2
	.weak	_ZN2OT22hb_serialize_context_t6extendINS_13SortedArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_
	.thumb
	.thumb_func
	.type	_ZN2OT22hb_serialize_context_t6extendINS_13SortedArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_, %function
_ZN2OT22hb_serialize_context_t6extendINS_13SortedArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_:
	.fnstart
.LFB947:
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
	mov	r0, r3
	bl	_ZNK2OT7ArrayOfINS_7IntTypeItLj2EEES2_E8get_sizeEv(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	cmp	r2, r3
	bcs	.L414
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L414
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	cmp	r2, r3
	bcs	.L415
.L414:
	ldr	r3, .L418
.LPIC86:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L418+4
.LPIC87:
	add	r3, pc
	mov	r1, r3
	mov	r2, #470
	ldr	r3, .L418+8
.LPIC88:
	add	r3, pc
	bl	__assert_fail(PLT)
.L415:
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	subs	r3, r2, r3
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_13SortedArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_j(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L416
	movs	r3, #0
	b	.L417
.L416:
	ldr	r3, [r7]
.L417:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L419:
	.align	2
.L418:
	.word	.LC9-(.LPIC86+4)
	.word	.LC8-(.LPIC87+4)
	.word	_ZZN2OT22hb_serialize_context_t6extendINS_13SortedArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_E19__PRETTY_FUNCTION__-(.LPIC88+4)
	.fnend
	.size	_ZN2OT22hb_serialize_context_t6extendINS_13SortedArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_, .-_ZN2OT22hb_serialize_context_t6extendINS_13SortedArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_
	.section	.text._ZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_EixEj,"axG",%progbits,_ZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_EixEj,comdat
	.align	2
	.weak	_ZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_EixEj
	.thumb
	.thumb_func
	.type	_ZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_EixEj, %function
_ZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_EixEj:
	.fnstart
.LFB948:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	lsls	r3, r3, #1
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #2
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_EixEj, .-_ZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_EixEj
	.section	.text._ZNK2OT8SupplierINS_7IntTypeItLj2EEEEixEj,"axG",%progbits,_ZNK2OT8SupplierINS_7IntTypeItLj2EEEEixEj,comdat
	.align	2
	.weak	_ZNK2OT8SupplierINS_7IntTypeItLj2EEEEixEj
	.thumb
	.thumb_func
	.type	_ZNK2OT8SupplierINS_7IntTypeItLj2EEEEixEj, %function
_ZNK2OT8SupplierINS_7IntTypeItLj2EEEEixEj:
	.fnstart
.LFB949:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7]
	cmp	r2, r3
	bhi	.L423
	movs	r3, #0
.L425:
	add	r2, r7, #16
	add	r2, r2, r3
	movs	r1, #0
	strb	r1, [r2, #-4]
	cmp	r3, #1
	beq	.L424
	adds	r3, r3, #1
	b	.L425
.L424:
	b	.L426
.L423:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	lsls	r3, r3, #1
	add	r2, r2, r3
	add	r3, r7, #12
	ldrh	r2, [r2]	@ unaligned
	strh	r2, [r3]	@ unaligned
.L426:
	movs	r3, #0
	ldrb	r2, [r7, #12]	@ zero_extendqisi2
	bfi	r3, r2, #0, #8
	ldrb	r2, [r7, #13]	@ zero_extendqisi2
	bfi	r3, r2, #8, #8
	mov	r0, r3	@ movhi
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNK2OT8SupplierINS_7IntTypeItLj2EEEEixEj, .-_ZNK2OT8SupplierINS_7IntTypeItLj2EEEEixEj
	.section	.text._ZN2OT8SupplierINS_7IntTypeItLj2EEEE7advanceEj,"axG",%progbits,_ZN2OT8SupplierINS_7IntTypeItLj2EEEE7advanceEj,comdat
	.align	2
	.weak	_ZN2OT8SupplierINS_7IntTypeItLj2EEEE7advanceEj
	.thumb
	.thumb_func
	.type	_ZN2OT8SupplierINS_7IntTypeItLj2EEEE7advanceEj, %function
_ZN2OT8SupplierINS_7IntTypeItLj2EEEE7advanceEj:
	.fnstart
.LFB950:
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
	cmp	r2, r3
	bcs	.L428
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7]
.L428:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7]
	subs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	lsls	r3, r3, #1
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN2OT8SupplierINS_7IntTypeItLj2EEEE7advanceEj, .-_ZN2OT8SupplierINS_7IntTypeItLj2EEEE7advanceEj
	.section	.text._ZNK2OT7ArrayOfINS_7IntTypeItLj2EEES2_EixEj,"axG",%progbits,_ZNK2OT7ArrayOfINS_7IntTypeItLj2EEES2_EixEj,comdat
	.align	2
	.weak	_ZNK2OT7ArrayOfINS_7IntTypeItLj2EEES2_EixEj
	.thumb
	.thumb_func
	.type	_ZNK2OT7ArrayOfINS_7IntTypeItLj2EEES2_EixEj, %function
_ZNK2OT7ArrayOfINS_7IntTypeItLj2EEES2_EixEj:
	.fnstart
.LFB952:
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
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7]
	cmp	r2, r3
	ite	ls
	movls	r3, #1
	movhi	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L430
	bl	_ZN2OTL4NullINS_7IntTypeItLj2EEEEERKT_v(PLT)
	mov	r3, r0
	b	.L431
.L430:
	ldr	r3, [r7]
	lsls	r3, r3, #1
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #2
.L431:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT7ArrayOfINS_7IntTypeItLj2EEES2_EixEj, .-_ZNK2OT7ArrayOfINS_7IntTypeItLj2EEES2_EixEj
	.section	.text._ZNK2OT7ArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEEixEj,"axG",%progbits,_ZNK2OT7ArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEEixEj,comdat
	.align	2
	.weak	_ZNK2OT7ArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEEixEj
	.thumb
	.thumb_func
	.type	_ZNK2OT7ArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEEixEj, %function
_ZNK2OT7ArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEEixEj:
	.fnstart
.LFB954:
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
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7]
	cmp	r2, r3
	ite	ls
	movls	r3, #1
	movhi	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L433
	bl	_ZN2OTL4NullINS_11RangeRecordEEERKT_v(PLT)
	mov	r3, r0
	b	.L434
.L433:
	ldr	r2, [r7]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #1
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #2
.L434:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT7ArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEEixEj, .-_ZNK2OT7ArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEEixEj
	.section	.text._ZN2OT22hb_serialize_context_t10extend_minINS_15CoverageFormat2EEEPT_RS3_,"axG",%progbits,_ZN2OT22hb_serialize_context_t10extend_minINS_15CoverageFormat2EEEPT_RS3_,comdat
	.align	2
	.weak	_ZN2OT22hb_serialize_context_t10extend_minINS_15CoverageFormat2EEEPT_RS3_
	.thumb
	.thumb_func
	.type	_ZN2OT22hb_serialize_context_t10extend_minINS_15CoverageFormat2EEEPT_RS3_, %function
_ZN2OT22hb_serialize_context_t10extend_minINS_15CoverageFormat2EEEPT_RS3_:
	.fnstart
.LFB955:
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
	movs	r3, #4
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	cmp	r2, r3
	bhi	.L436
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L436
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	cmp	r2, r3
	bcs	.L437
.L436:
	ldr	r3, .L440
.LPIC89:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L440+4
.LPIC90:
	add	r3, pc
	mov	r1, r3
	movw	r2, #461
	ldr	r3, .L440+8
.LPIC91:
	add	r3, pc
	bl	__assert_fail(PLT)
.L437:
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	subs	r3, r2, r3
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_15CoverageFormat2EEEPT_j(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L438
	movs	r3, #0
	b	.L439
.L438:
	ldr	r3, [r7]
.L439:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L441:
	.align	2
.L440:
	.word	.LC7-(.LPIC89+4)
	.word	.LC8-(.LPIC90+4)
	.word	_ZZN2OT22hb_serialize_context_t10extend_minINS_15CoverageFormat2EEEPT_RS3_E19__PRETTY_FUNCTION__-(.LPIC91+4)
	.fnend
	.size	_ZN2OT22hb_serialize_context_t10extend_minINS_15CoverageFormat2EEEPT_RS3_, .-_ZN2OT22hb_serialize_context_t10extend_minINS_15CoverageFormat2EEEPT_RS3_
	.section	.text._ZN2OT22hb_serialize_context_t6extendINS_13SortedArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEEEEEPT_RS7_,"axG",%progbits,_ZN2OT22hb_serialize_context_t6extendINS_13SortedArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEEEEEPT_RS7_,comdat
	.align	2
	.weak	_ZN2OT22hb_serialize_context_t6extendINS_13SortedArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEEEEEPT_RS7_
	.thumb
	.thumb_func
	.type	_ZN2OT22hb_serialize_context_t6extendINS_13SortedArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEEEEEPT_RS7_, %function
_ZN2OT22hb_serialize_context_t6extendINS_13SortedArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEEEEEPT_RS7_:
	.fnstart
.LFB956:
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
	mov	r0, r3
	bl	_ZNK2OT7ArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEE8get_sizeEv(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	cmp	r2, r3
	bcs	.L443
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L443
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	cmp	r2, r3
	bcs	.L444
.L443:
	ldr	r3, .L447
.LPIC92:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L447+4
.LPIC93:
	add	r3, pc
	mov	r1, r3
	mov	r2, #470
	ldr	r3, .L447+8
.LPIC94:
	add	r3, pc
	bl	__assert_fail(PLT)
.L444:
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	subs	r3, r2, r3
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_13SortedArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEEEEEPT_j(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L445
	movs	r3, #0
	b	.L446
.L445:
	ldr	r3, [r7]
.L446:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L448:
	.align	2
.L447:
	.word	.LC9-(.LPIC92+4)
	.word	.LC8-(.LPIC93+4)
	.word	_ZZN2OT22hb_serialize_context_t6extendINS_13SortedArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEEEEEPT_RS7_E19__PRETTY_FUNCTION__-(.LPIC94+4)
	.fnend
	.size	_ZN2OT22hb_serialize_context_t6extendINS_13SortedArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEEEEEPT_RS7_, .-_ZN2OT22hb_serialize_context_t6extendINS_13SortedArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEEEEEPT_RS7_
	.section	.text._ZN2OT7ArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEEixEj,"axG",%progbits,_ZN2OT7ArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEEixEj,comdat
	.align	2
	.weak	_ZN2OT7ArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEEixEj
	.thumb
	.thumb_func
	.type	_ZN2OT7ArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEEixEj, %function
_ZN2OT7ArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEEixEj:
	.fnstart
.LFB957:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r2, [r7]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #1
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #2
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN2OT7ArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEEixEj, .-_ZN2OT7ArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEEixEj
	.section	.text._ZN2OT22hb_serialize_context_t10extend_minINS_8CoverageEEEPT_RS3_,"axG",%progbits,_ZN2OT22hb_serialize_context_t10extend_minINS_8CoverageEEEPT_RS3_,comdat
	.align	2
	.weak	_ZN2OT22hb_serialize_context_t10extend_minINS_8CoverageEEEPT_RS3_
	.thumb
	.thumb_func
	.type	_ZN2OT22hb_serialize_context_t10extend_minINS_8CoverageEEEPT_RS3_, %function
_ZN2OT22hb_serialize_context_t10extend_minINS_8CoverageEEEPT_RS3_:
	.fnstart
.LFB959:
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
	movs	r3, #2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	cmp	r2, r3
	bhi	.L452
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L452
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	cmp	r2, r3
	bcs	.L453
.L452:
	ldr	r3, .L456
.LPIC95:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L456+4
.LPIC96:
	add	r3, pc
	mov	r1, r3
	movw	r2, #461
	ldr	r3, .L456+8
.LPIC97:
	add	r3, pc
	bl	__assert_fail(PLT)
.L453:
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	subs	r3, r2, r3
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_8CoverageEEEPT_j(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L454
	movs	r3, #0
	b	.L455
.L454:
	ldr	r3, [r7]
.L455:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L457:
	.align	2
.L456:
	.word	.LC7-(.LPIC95+4)
	.word	.LC8-(.LPIC96+4)
	.word	_ZZN2OT22hb_serialize_context_t10extend_minINS_8CoverageEEEPT_RS3_E19__PRETTY_FUNCTION__-(.LPIC97+4)
	.fnend
	.size	_ZN2OT22hb_serialize_context_t10extend_minINS_8CoverageEEEPT_RS3_, .-_ZN2OT22hb_serialize_context_t10extend_minINS_8CoverageEEEPT_RS3_
	.section	.text._ZN2OTL4NullINS_8CoverageEEERKT_v,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL4NullINS_8CoverageEEERKT_v, %function
_ZN2OTL4NullINS_8CoverageEEERKT_v:
	.fnstart
.LFB995:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r3, .L460
.LPIC98:
	add	r3, pc
	mov	r0, r3
	bl	_ZN2OTL5CastPINS_8CoverageEPKvEEPT_PT0_(PLT)
	mov	r3, r0
	mov	r0, r3
	pop	{r7, pc}
.L461:
	.align	2
.L460:
	.word	_ZN2OTL9_NullPoolE-(.LPIC98+4)
	.cantunwind
	.fnend
	.size	_ZN2OTL4NullINS_8CoverageEEERKT_v, .-_ZN2OTL4NullINS_8CoverageEEERKT_v
	.section	.text._ZN2OTplIPKNS_14ContextFormat1ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTplIPKNS_14ContextFormat1ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE, %function
_ZN2OTplIPKNS_14ContextFormat1ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE:
	.fnstart
.LFB1010:
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
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZNK2OT8OffsetToINS_8CoverageENS_7IntTypeItLj2EEEEclEPKv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OTplIPKNS_14ContextFormat1ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE, .-_ZN2OTplIPKNS_14ContextFormat1ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE
	.section	.text._ZN2OTplIPKNS_14ContextFormat2ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTplIPKNS_14ContextFormat2ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE, %function
_ZN2OTplIPKNS_14ContextFormat2ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE:
	.fnstart
.LFB1014:
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
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZNK2OT8OffsetToINS_8CoverageENS_7IntTypeItLj2EEEEclEPKv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OTplIPKNS_14ContextFormat2ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE, .-_ZN2OTplIPKNS_14ContextFormat2ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE
	.section	.text._ZN2OTplIPKNS_14ContextFormat3ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTplIPKNS_14ContextFormat3ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE, %function
_ZN2OTplIPKNS_14ContextFormat3ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE:
	.fnstart
.LFB1017:
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
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZNK2OT8OffsetToINS_8CoverageENS_7IntTypeItLj2EEEEclEPKv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OTplIPKNS_14ContextFormat3ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE, .-_ZN2OTplIPKNS_14ContextFormat3ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE
	.section	.text._ZN2OTplIPKNS_19ChainContextFormat1ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTplIPKNS_19ChainContextFormat1ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE, %function
_ZN2OTplIPKNS_19ChainContextFormat1ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE:
	.fnstart
.LFB1031:
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
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZNK2OT8OffsetToINS_8CoverageENS_7IntTypeItLj2EEEEclEPKv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OTplIPKNS_19ChainContextFormat1ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE, .-_ZN2OTplIPKNS_19ChainContextFormat1ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE
	.section	.text._ZN2OTplIPKNS_19ChainContextFormat2ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTplIPKNS_19ChainContextFormat2ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE, %function
_ZN2OTplIPKNS_19ChainContextFormat2ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE:
	.fnstart
.LFB1035:
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
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZNK2OT8OffsetToINS_8CoverageENS_7IntTypeItLj2EEEEclEPKv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OTplIPKNS_19ChainContextFormat2ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE, .-_ZN2OTplIPKNS_19ChainContextFormat2ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE
	.section	.text._ZN2OTL11StructAfterINS_13OffsetArrayOfINS_8CoverageEEES3_EERKT_RKT0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL11StructAfterINS_13OffsetArrayOfINS_8CoverageEEES3_EERKT_RKT0_, %function
_ZN2OTL11StructAfterINS_13OffsetArrayOfINS_8CoverageEEES3_EERKT_RKT0_:
	.fnstart
.LFB1038:
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
	bl	_ZNK2OT7ArrayOfINS_8OffsetToINS_8CoverageENS_7IntTypeItLj2EEEEES4_E8get_sizeEv(PLT)
	mov	r3, r0
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN2OTL14StructAtOffsetINS_13OffsetArrayOfINS_8CoverageEEEEERKT_PKvj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OTL11StructAfterINS_13OffsetArrayOfINS_8CoverageEEES3_EERKT_RKT0_, .-_ZN2OTL11StructAfterINS_13OffsetArrayOfINS_8CoverageEEES3_EERKT_RKT0_
	.section	.text._ZNK2OT7ArrayOfINS_8OffsetToINS_8CoverageENS_7IntTypeItLj2EEEEES4_EixEj,"axG",%progbits,_ZNK2OT7ArrayOfINS_8OffsetToINS_8CoverageENS_7IntTypeItLj2EEEEES4_EixEj,comdat
	.align	2
	.weak	_ZNK2OT7ArrayOfINS_8OffsetToINS_8CoverageENS_7IntTypeItLj2EEEEES4_EixEj
	.thumb
	.thumb_func
	.type	_ZNK2OT7ArrayOfINS_8OffsetToINS_8CoverageENS_7IntTypeItLj2EEEEES4_EixEj, %function
_ZNK2OT7ArrayOfINS_8OffsetToINS_8CoverageENS_7IntTypeItLj2EEEEES4_EixEj:
	.fnstart
.LFB1039:
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
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7]
	cmp	r2, r3
	ite	ls
	movls	r3, #1
	movhi	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L475
	bl	_ZN2OTL4NullINS_8OffsetToINS_8CoverageENS_7IntTypeItLj2EEEEEEERKT_v(PLT)
	mov	r3, r0
	b	.L476
.L475:
	ldr	r3, [r7]
	lsls	r3, r3, #1
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #2
.L476:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT7ArrayOfINS_8OffsetToINS_8CoverageENS_7IntTypeItLj2EEEEES4_EixEj, .-_ZNK2OT7ArrayOfINS_8OffsetToINS_8CoverageENS_7IntTypeItLj2EEEEES4_EixEj
	.section	.text._ZN2OTplIPKNS_19ChainContextFormat3ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTplIPKNS_19ChainContextFormat3ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE, %function
_ZN2OTplIPKNS_19ChainContextFormat3ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE:
	.fnstart
.LFB1040:
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
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZNK2OT8OffsetToINS_8CoverageENS_7IntTypeItLj2EEEEclEPKv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OTplIPKNS_19ChainContextFormat3ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE, .-_ZN2OTplIPKNS_19ChainContextFormat3ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE
	.section	.text._ZN2OTplIPKNS_18SingleSubstFormat1ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTplIPKNS_18SingleSubstFormat1ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE, %function
_ZN2OTplIPKNS_18SingleSubstFormat1ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE:
	.fnstart
.LFB1061:
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
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZNK2OT8OffsetToINS_8CoverageENS_7IntTypeItLj2EEEEclEPKv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OTplIPKNS_18SingleSubstFormat1ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE, .-_ZN2OTplIPKNS_18SingleSubstFormat1ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE
	.section	.text._ZN2OT22hb_serialize_context_t10extend_minINS_18SingleSubstFormat1EEEPT_RS3_,"axG",%progbits,_ZN2OT22hb_serialize_context_t10extend_minINS_18SingleSubstFormat1EEEPT_RS3_,comdat
	.align	2
	.weak	_ZN2OT22hb_serialize_context_t10extend_minINS_18SingleSubstFormat1EEEPT_RS3_
	.thumb
	.thumb_func
	.type	_ZN2OT22hb_serialize_context_t10extend_minINS_18SingleSubstFormat1EEEPT_RS3_, %function
_ZN2OT22hb_serialize_context_t10extend_minINS_18SingleSubstFormat1EEEPT_RS3_:
	.fnstart
.LFB1062:
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
	movs	r3, #6
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	cmp	r2, r3
	bhi	.L482
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L482
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	cmp	r2, r3
	bcs	.L483
.L482:
	ldr	r3, .L486
.LPIC99:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L486+4
.LPIC100:
	add	r3, pc
	mov	r1, r3
	movw	r2, #461
	ldr	r3, .L486+8
.LPIC101:
	add	r3, pc
	bl	__assert_fail(PLT)
.L483:
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	subs	r3, r2, r3
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_18SingleSubstFormat1EEEPT_j(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L484
	movs	r3, #0
	b	.L485
.L484:
	ldr	r3, [r7]
.L485:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L487:
	.align	2
.L486:
	.word	.LC7-(.LPIC99+4)
	.word	.LC8-(.LPIC100+4)
	.word	_ZZN2OT22hb_serialize_context_t10extend_minINS_18SingleSubstFormat1EEEPT_RS3_E19__PRETTY_FUNCTION__-(.LPIC101+4)
	.fnend
	.size	_ZN2OT22hb_serialize_context_t10extend_minINS_18SingleSubstFormat1EEEPT_RS3_, .-_ZN2OT22hb_serialize_context_t10extend_minINS_18SingleSubstFormat1EEEPT_RS3_
	.section	.text._ZN2OT8OffsetToINS_8CoverageENS_7IntTypeItLj2EEEE9serializeEPNS_22hb_serialize_context_tEPv,"axG",%progbits,_ZN2OT8OffsetToINS_8CoverageENS_7IntTypeItLj2EEEE9serializeEPNS_22hb_serialize_context_tEPv,comdat
	.align	2
	.weak	_ZN2OT8OffsetToINS_8CoverageENS_7IntTypeItLj2EEEE9serializeEPNS_22hb_serialize_context_tEPv
	.thumb
	.thumb_func
	.type	_ZN2OT8OffsetToINS_8CoverageENS_7IntTypeItLj2EEEE9serializeEPNS_22hb_serialize_context_tEPv, %function
_ZN2OT8OffsetToINS_8CoverageENS_7IntTypeItLj2EEEE9serializeEPNS_22hb_serialize_context_tEPv:
	.fnstart
.LFB1063:
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
	bl	_ZN2OT22hb_serialize_context_t11start_embedINS_8CoverageEEEPT_v(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r2, [r7, #12]
	ldr	r1, [r7, #20]
	ldr	r3, [r7, #4]
	subs	r3, r1, r3
	uxth	r3, r3
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OT7IntTypeItLj2EE3setEt(PLT)
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OT8OffsetToINS_8CoverageENS_7IntTypeItLj2EEEE9serializeEPNS_22hb_serialize_context_tEPv, .-_ZN2OT8OffsetToINS_8CoverageENS_7IntTypeItLj2EEEE9serializeEPNS_22hb_serialize_context_tEPv
	.section	.text._ZN2OT7IntTypeIsLj2EE3setEs,"axG",%progbits,_ZN2OT7IntTypeIsLj2EE3setEs,comdat
	.align	2
	.weak	_ZN2OT7IntTypeIsLj2EE3setEs
	.thumb
	.thumb_func
	.type	_ZN2OT7IntTypeIsLj2EE3setEs, %function
_ZN2OT7IntTypeIsLj2EE3setEs:
	.fnstart
.LFB1064:
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
	strh	r3, [r7, #2]	@ movhi
	ldr	r2, [r7, #4]
	ldrsh	r3, [r7, #2]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OT5BEIntIsLi2EE3setEs(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OT7IntTypeIsLj2EE3setEs, .-_ZN2OT7IntTypeIsLj2EE3setEs
	.section	.text._ZN2OTplIPKNS_18SingleSubstFormat2ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTplIPKNS_18SingleSubstFormat2ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE, %function
_ZN2OTplIPKNS_18SingleSubstFormat2ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE:
	.fnstart
.LFB1066:
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
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZNK2OT8OffsetToINS_8CoverageENS_7IntTypeItLj2EEEEclEPKv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OTplIPKNS_18SingleSubstFormat2ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE, .-_ZN2OTplIPKNS_18SingleSubstFormat2ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE
	.section	.text._ZN2OT22hb_serialize_context_t10extend_minINS_18SingleSubstFormat2EEEPT_RS3_,"axG",%progbits,_ZN2OT22hb_serialize_context_t10extend_minINS_18SingleSubstFormat2EEEPT_RS3_,comdat
	.align	2
	.weak	_ZN2OT22hb_serialize_context_t10extend_minINS_18SingleSubstFormat2EEEPT_RS3_
	.thumb
	.thumb_func
	.type	_ZN2OT22hb_serialize_context_t10extend_minINS_18SingleSubstFormat2EEEPT_RS3_, %function
_ZN2OT22hb_serialize_context_t10extend_minINS_18SingleSubstFormat2EEEPT_RS3_:
	.fnstart
.LFB1067:
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
	movs	r3, #6
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	cmp	r2, r3
	bhi	.L494
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L494
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	cmp	r2, r3
	bcs	.L495
.L494:
	ldr	r3, .L498
.LPIC102:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L498+4
.LPIC103:
	add	r3, pc
	mov	r1, r3
	movw	r2, #461
	ldr	r3, .L498+8
.LPIC104:
	add	r3, pc
	bl	__assert_fail(PLT)
.L495:
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	subs	r3, r2, r3
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_18SingleSubstFormat2EEEPT_j(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L496
	movs	r3, #0
	b	.L497
.L496:
	ldr	r3, [r7]
.L497:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L499:
	.align	2
.L498:
	.word	.LC7-(.LPIC102+4)
	.word	.LC8-(.LPIC103+4)
	.word	_ZZN2OT22hb_serialize_context_t10extend_minINS_18SingleSubstFormat2EEEPT_RS3_E19__PRETTY_FUNCTION__-(.LPIC104+4)
	.fnend
	.size	_ZN2OT22hb_serialize_context_t10extend_minINS_18SingleSubstFormat2EEEPT_RS3_, .-_ZN2OT22hb_serialize_context_t10extend_minINS_18SingleSubstFormat2EEEPT_RS3_
	.section	.text._ZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_E9serializeEPNS_22hb_serialize_context_tERNS_8SupplierIS2_EEj,"axG",%progbits,_ZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_E9serializeEPNS_22hb_serialize_context_tERNS_8SupplierIS2_EEj,comdat
	.align	2
	.weak	_ZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_E9serializeEPNS_22hb_serialize_context_tERNS_8SupplierIS2_EEj
	.thumb
	.thumb_func
	.type	_ZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_E9serializeEPNS_22hb_serialize_context_tERNS_8SupplierIS2_EEj, %function
_ZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_E9serializeEPNS_22hb_serialize_context_tERNS_8SupplierIS2_EEj:
	.fnstart
.LFB1068:
	@ args = 0, pretend = 0, frame = 24
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
	ldr	r3, [r7, #8]
	add	r2, r7, #16
	ldr	r1, .L506
.LPIC105:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L506+4
.LPIC106:
	add	r1, pc
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L506+8
.LPIC107:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #8]
	bl	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z(PLT)
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7]
	bl	_ZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_E9serializeEPNS_22hb_serialize_context_tEj(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L501
	add	r3, r7, #16
	mov	r0, r3
	movs	r1, #0
	movw	r2, #834
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L505
.L501:
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L503
.L504:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #20]
	lsls	r4, r2, #1
	add	r4, r4, r3
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #20]
	bl	_ZNK2OT8SupplierINS_7IntTypeItLj2EEEEixEj(PLT)
	mov	r3, r0	@ movhi
	sxth	r3, r3
	mov	r2, r3
	strb	r2, [r4, #2]
	ubfx	r3, r3, #8, #8
	strb	r3, [r4, #3]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L503:
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L504
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	_ZN2OT8SupplierINS_7IntTypeItLj2EEEE7advanceEj(PLT)
	add	r3, r7, #16
	mov	r0, r3
	movs	r1, #1
	movw	r2, #838
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
.L505:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L507:
	.align	2
.L506:
	.word	_ZZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_E9serializeEPNS_22hb_serialize_context_tERNS_8SupplierIS2_EEjE19__PRETTY_FUNCTION__-(.LPIC105+4)
	.word	.LC4-(.LPIC106+4)
	.word	.LC2-(.LPIC107+4)
	.fnend
	.size	_ZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_E9serializeEPNS_22hb_serialize_context_tERNS_8SupplierIS2_EEj, .-_ZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_E9serializeEPNS_22hb_serialize_context_tERNS_8SupplierIS2_EEj
	.section	.text._ZN2OT22hb_serialize_context_t10extend_minINS_7IntTypeItLj2EEEEEPT_RS4_,"axG",%progbits,_ZN2OT22hb_serialize_context_t10extend_minINS_7IntTypeItLj2EEEEEPT_RS4_,comdat
	.align	2
	.weak	_ZN2OT22hb_serialize_context_t10extend_minINS_7IntTypeItLj2EEEEEPT_RS4_
	.thumb
	.thumb_func
	.type	_ZN2OT22hb_serialize_context_t10extend_minINS_7IntTypeItLj2EEEEEPT_RS4_, %function
_ZN2OT22hb_serialize_context_t10extend_minINS_7IntTypeItLj2EEEEEPT_RS4_:
	.fnstart
.LFB1069:
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
	movs	r3, #2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	cmp	r2, r3
	bhi	.L509
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L509
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	cmp	r2, r3
	bcs	.L510
.L509:
	ldr	r3, .L513
.LPIC108:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L513+4
.LPIC109:
	add	r3, pc
	mov	r1, r3
	movw	r2, #461
	ldr	r3, .L513+8
.LPIC110:
	add	r3, pc
	bl	__assert_fail(PLT)
.L510:
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	subs	r3, r2, r3
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_7IntTypeItLj2EEEEEPT_j(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L511
	movs	r3, #0
	b	.L512
.L511:
	ldr	r3, [r7]
.L512:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L514:
	.align	2
.L513:
	.word	.LC7-(.LPIC108+4)
	.word	.LC8-(.LPIC109+4)
	.word	_ZZN2OT22hb_serialize_context_t10extend_minINS_7IntTypeItLj2EEEEEPT_RS4_E19__PRETTY_FUNCTION__-(.LPIC110+4)
	.fnend
	.size	_ZN2OT22hb_serialize_context_t10extend_minINS_7IntTypeItLj2EEEEEPT_RS4_, .-_ZN2OT22hb_serialize_context_t10extend_minINS_7IntTypeItLj2EEEEEPT_RS4_
	.section	.text._ZN2OTplIPKNS_20MultipleSubstFormat1ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTplIPKNS_20MultipleSubstFormat1ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE, %function
_ZN2OTplIPKNS_20MultipleSubstFormat1ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE:
	.fnstart
.LFB1071:
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
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZNK2OT8OffsetToINS_8CoverageENS_7IntTypeItLj2EEEEclEPKv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OTplIPKNS_20MultipleSubstFormat1ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE, .-_ZN2OTplIPKNS_20MultipleSubstFormat1ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE
	.section	.text._ZNK2OT8SupplierIjEixEj,"axG",%progbits,_ZNK2OT8SupplierIjEixEj,comdat
	.align	2
	.weak	_ZNK2OT8SupplierIjEixEj
	.thumb
	.thumb_func
	.type	_ZNK2OT8SupplierIjEixEj, %function
_ZNK2OT8SupplierIjEixEj:
	.fnstart
.LFB1078:
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
	cmp	r2, r3
	bhi	.L518
	movs	r3, #0
	b	.L519
.L518:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
.L519:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNK2OT8SupplierIjEixEj, .-_ZNK2OT8SupplierIjEixEj
	.section	.text._ZN2OT8SupplierIjE7advanceEj,"axG",%progbits,_ZN2OT8SupplierIjE7advanceEj,comdat
	.align	2
	.weak	_ZN2OT8SupplierIjE7advanceEj
	.thumb
	.thumb_func
	.type	_ZN2OT8SupplierIjE7advanceEj, %function
_ZN2OT8SupplierIjE7advanceEj:
	.fnstart
.LFB1079:
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
	cmp	r2, r3
	bcs	.L521
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7]
.L521:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7]
	subs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	lsls	r3, r3, #2
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN2OT8SupplierIjE7advanceEj, .-_ZN2OT8SupplierIjE7advanceEj
	.section	.text._ZN2OTplIPKNS_21AlternateSubstFormat1ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTplIPKNS_21AlternateSubstFormat1ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE, %function
_ZN2OTplIPKNS_21AlternateSubstFormat1ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE:
	.fnstart
.LFB1081:
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
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZNK2OT8OffsetToINS_8CoverageENS_7IntTypeItLj2EEEEclEPKv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OTplIPKNS_21AlternateSubstFormat1ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE, .-_ZN2OTplIPKNS_21AlternateSubstFormat1ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE
	.section	.text._ZN2OT22hb_serialize_context_t10extend_minINS_8LigatureEEEPT_RS3_,"axG",%progbits,_ZN2OT22hb_serialize_context_t10extend_minINS_8LigatureEEEPT_RS3_,comdat
	.align	2
	.weak	_ZN2OT22hb_serialize_context_t10extend_minINS_8LigatureEEEPT_RS3_
	.thumb
	.thumb_func
	.type	_ZN2OT22hb_serialize_context_t10extend_minINS_8LigatureEEEPT_RS3_, %function
_ZN2OT22hb_serialize_context_t10extend_minINS_8LigatureEEEPT_RS3_:
	.fnstart
.LFB1088:
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
	movs	r3, #4
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	cmp	r2, r3
	bhi	.L525
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L525
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	cmp	r2, r3
	bcs	.L526
.L525:
	ldr	r3, .L529
.LPIC111:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L529+4
.LPIC112:
	add	r3, pc
	mov	r1, r3
	movw	r2, #461
	ldr	r3, .L529+8
.LPIC113:
	add	r3, pc
	bl	__assert_fail(PLT)
.L526:
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	subs	r3, r2, r3
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_8LigatureEEEPT_j(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L527
	movs	r3, #0
	b	.L528
.L527:
	ldr	r3, [r7]
.L528:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L530:
	.align	2
.L529:
	.word	.LC7-(.LPIC111+4)
	.word	.LC8-(.LPIC112+4)
	.word	_ZZN2OT22hb_serialize_context_t10extend_minINS_8LigatureEEEPT_RS3_E19__PRETTY_FUNCTION__-(.LPIC113+4)
	.fnend
	.size	_ZN2OT22hb_serialize_context_t10extend_minINS_8LigatureEEEPT_RS3_, .-_ZN2OT22hb_serialize_context_t10extend_minINS_8LigatureEEEPT_RS3_
	.section	.text._ZN2OT15HeadlessArrayOfINS_7IntTypeItLj2EEES2_E9serializeEPNS_22hb_serialize_context_tERNS_8SupplierIS2_EEj,"axG",%progbits,_ZN2OT15HeadlessArrayOfINS_7IntTypeItLj2EEES2_E9serializeEPNS_22hb_serialize_context_tERNS_8SupplierIS2_EEj,comdat
	.align	2
	.weak	_ZN2OT15HeadlessArrayOfINS_7IntTypeItLj2EEES2_E9serializeEPNS_22hb_serialize_context_tERNS_8SupplierIS2_EEj
	.thumb
	.thumb_func
	.type	_ZN2OT15HeadlessArrayOfINS_7IntTypeItLj2EEES2_E9serializeEPNS_22hb_serialize_context_tERNS_8SupplierIS2_EEj, %function
_ZN2OT15HeadlessArrayOfINS_7IntTypeItLj2EEES2_E9serializeEPNS_22hb_serialize_context_tERNS_8SupplierIS2_EEj:
	.fnstart
.LFB1089:
	@ args = 0, pretend = 0, frame = 24
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
	ldr	r3, [r7, #8]
	add	r2, r7, #16
	ldr	r1, .L539
.LPIC114:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L539+4
.LPIC115:
	add	r1, pc
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L539+8
.LPIC116:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #8]
	bl	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z(PLT)
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #12]
	bl	_ZN2OT22hb_serialize_context_t10extend_minINS_15HeadlessArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L532
	add	r3, r7, #16
	mov	r0, r3
	movs	r1, #0
	movw	r2, #942
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L538
.L532:
	ldr	r2, [r7, #12]
	ldr	r3, [r7]
	uxth	r3, r3
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OT7IntTypeItLj2EE3setEt(PLT)
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L534
	add	r3, r7, #16
	mov	r0, r3
	movs	r1, #1
	mov	r2, #944
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L538
.L534:
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #12]
	bl	_ZN2OT22hb_serialize_context_t6extendINS_15HeadlessArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L535
	add	r3, r7, #16
	mov	r0, r3
	movs	r1, #0
	movw	r2, #945
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L538
.L535:
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L536
.L537:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #20]
	lsls	r4, r2, #1
	add	r4, r4, r3
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #20]
	bl	_ZNK2OT8SupplierINS_7IntTypeItLj2EEEEixEj(PLT)
	mov	r3, r0	@ movhi
	sxth	r3, r3
	mov	r2, r3
	strb	r2, [r4, #2]
	ubfx	r3, r3, #8, #8
	strb	r3, [r4, #3]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L536:
	ldr	r3, [r7]
	subs	r2, r3, #1
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bhi	.L537
	ldr	r3, [r7]
	subs	r3, r3, #1
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN2OT8SupplierINS_7IntTypeItLj2EEEE7advanceEj(PLT)
	add	r3, r7, #16
	mov	r0, r3
	movs	r1, #1
	movw	r2, #949
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
.L538:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L540:
	.align	2
.L539:
	.word	_ZZN2OT15HeadlessArrayOfINS_7IntTypeItLj2EEES2_E9serializeEPNS_22hb_serialize_context_tERNS_8SupplierIS2_EEjE19__PRETTY_FUNCTION__-(.LPIC114+4)
	.word	.LC4-(.LPIC115+4)
	.word	.LC2-(.LPIC116+4)
	.fnend
	.size	_ZN2OT15HeadlessArrayOfINS_7IntTypeItLj2EEES2_E9serializeEPNS_22hb_serialize_context_tERNS_8SupplierIS2_EEj, .-_ZN2OT15HeadlessArrayOfINS_7IntTypeItLj2EEES2_E9serializeEPNS_22hb_serialize_context_tERNS_8SupplierIS2_EEj
	.section	.text._ZN2OT22hb_serialize_context_t10extend_minINS_11LigatureSetEEEPT_RS3_,"axG",%progbits,_ZN2OT22hb_serialize_context_t10extend_minINS_11LigatureSetEEEPT_RS3_,comdat
	.align	2
	.weak	_ZN2OT22hb_serialize_context_t10extend_minINS_11LigatureSetEEEPT_RS3_
	.thumb
	.thumb_func
	.type	_ZN2OT22hb_serialize_context_t10extend_minINS_11LigatureSetEEEPT_RS3_, %function
_ZN2OT22hb_serialize_context_t10extend_minINS_11LigatureSetEEEPT_RS3_:
	.fnstart
.LFB1092:
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
	movs	r3, #2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	cmp	r2, r3
	bhi	.L542
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L542
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	cmp	r2, r3
	bcs	.L543
.L542:
	ldr	r3, .L546
.LPIC117:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L546+4
.LPIC118:
	add	r3, pc
	mov	r1, r3
	movw	r2, #461
	ldr	r3, .L546+8
.LPIC119:
	add	r3, pc
	bl	__assert_fail(PLT)
.L543:
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	subs	r3, r2, r3
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_11LigatureSetEEEPT_j(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L544
	movs	r3, #0
	b	.L545
.L544:
	ldr	r3, [r7]
.L545:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L547:
	.align	2
.L546:
	.word	.LC7-(.LPIC117+4)
	.word	.LC8-(.LPIC118+4)
	.word	_ZZN2OT22hb_serialize_context_t10extend_minINS_11LigatureSetEEEPT_RS3_E19__PRETTY_FUNCTION__-(.LPIC119+4)
	.fnend
	.size	_ZN2OT22hb_serialize_context_t10extend_minINS_11LigatureSetEEEPT_RS3_, .-_ZN2OT22hb_serialize_context_t10extend_minINS_11LigatureSetEEEPT_RS3_
	.section	.text._ZN2OT7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES4_E9serializeEPNS_22hb_serialize_context_tEj,"axG",%progbits,_ZN2OT7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES4_E9serializeEPNS_22hb_serialize_context_tEj,comdat
	.align	2
	.weak	_ZN2OT7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES4_E9serializeEPNS_22hb_serialize_context_tEj
	.thumb
	.thumb_func
	.type	_ZN2OT7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES4_E9serializeEPNS_22hb_serialize_context_tEj, %function
_ZN2OT7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES4_E9serializeEPNS_22hb_serialize_context_tEj:
	.fnstart
.LFB1093:
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
	ldr	r3, [r7, #8]
	add	r2, r7, #20
	ldr	r1, .L553
.LPIC120:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L553+4
.LPIC121:
	add	r1, pc
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L553+8
.LPIC122:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #8]
	bl	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z(PLT)
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #12]
	bl	_ZN2OT22hb_serialize_context_t10extend_minINS_7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES6_EEEEPT_RS9_(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L549
	add	r3, r7, #20
	mov	r0, r3
	movs	r1, #0
	movw	r2, #823
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L552
.L549:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	uxth	r3, r3
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OT7IntTypeItLj2EE3setEt(PLT)
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #12]
	bl	_ZN2OT22hb_serialize_context_t6extendINS_7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES6_EEEEPT_RS9_(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L551
	add	r3, r7, #20
	mov	r0, r3
	movs	r1, #0
	movw	r2, #825
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L552
.L551:
	add	r3, r7, #20
	mov	r0, r3
	movs	r1, #1
	movw	r2, #826
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
.L552:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L554:
	.align	2
.L553:
	.word	_ZZN2OT7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES4_E9serializeEPNS_22hb_serialize_context_tEjE19__PRETTY_FUNCTION__-(.LPIC120+4)
	.word	.LC4-(.LPIC121+4)
	.word	.LC2-(.LPIC122+4)
	.fnend
	.size	_ZN2OT7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES4_E9serializeEPNS_22hb_serialize_context_tEj, .-_ZN2OT7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES4_E9serializeEPNS_22hb_serialize_context_tEj
	.section	.text._ZN2OT7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES4_EixEj,"axG",%progbits,_ZN2OT7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES4_EixEj,comdat
	.align	2
	.weak	_ZN2OT7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES4_EixEj
	.thumb
	.thumb_func
	.type	_ZN2OT7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES4_EixEj, %function
_ZN2OT7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES4_EixEj:
	.fnstart
.LFB1094:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	lsls	r3, r3, #1
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #2
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN2OT7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES4_EixEj, .-_ZN2OT7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES4_EixEj
	.section	.text._ZN2OT8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEE9serializeEPNS_22hb_serialize_context_tEPv,"axG",%progbits,_ZN2OT8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEE9serializeEPNS_22hb_serialize_context_tEPv,comdat
	.align	2
	.weak	_ZN2OT8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEE9serializeEPNS_22hb_serialize_context_tEPv
	.thumb
	.thumb_func
	.type	_ZN2OT8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEE9serializeEPNS_22hb_serialize_context_tEPv, %function
_ZN2OT8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEE9serializeEPNS_22hb_serialize_context_tEPv:
	.fnstart
.LFB1095:
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
	bl	_ZN2OT22hb_serialize_context_t11start_embedINS_8LigatureEEEPT_v(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r2, [r7, #12]
	ldr	r1, [r7, #20]
	ldr	r3, [r7, #4]
	subs	r3, r1, r3
	uxth	r3, r3
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OT7IntTypeItLj2EE3setEt(PLT)
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OT8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEE9serializeEPNS_22hb_serialize_context_tEPv, .-_ZN2OT8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEE9serializeEPNS_22hb_serialize_context_tEPv
	.section	.text._ZN2OTplIPKNS_20LigatureSubstFormat1ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTplIPKNS_20LigatureSubstFormat1ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE, %function
_ZN2OTplIPKNS_20LigatureSubstFormat1ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE:
	.fnstart
.LFB1097:
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
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZNK2OT8OffsetToINS_8CoverageENS_7IntTypeItLj2EEEEclEPKv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OTplIPKNS_20LigatureSubstFormat1ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE, .-_ZN2OTplIPKNS_20LigatureSubstFormat1ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE
	.section	.text._ZN2OT22hb_serialize_context_t10extend_minINS_20LigatureSubstFormat1EEEPT_RS3_,"axG",%progbits,_ZN2OT22hb_serialize_context_t10extend_minINS_20LigatureSubstFormat1EEEPT_RS3_,comdat
	.align	2
	.weak	_ZN2OT22hb_serialize_context_t10extend_minINS_20LigatureSubstFormat1EEEPT_RS3_
	.thumb
	.thumb_func
	.type	_ZN2OT22hb_serialize_context_t10extend_minINS_20LigatureSubstFormat1EEEPT_RS3_, %function
_ZN2OT22hb_serialize_context_t10extend_minINS_20LigatureSubstFormat1EEEPT_RS3_:
	.fnstart
.LFB1100:
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
	movs	r3, #6
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	cmp	r2, r3
	bhi	.L562
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L562
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	cmp	r2, r3
	bcs	.L563
.L562:
	ldr	r3, .L566
.LPIC123:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L566+4
.LPIC124:
	add	r3, pc
	mov	r1, r3
	movw	r2, #461
	ldr	r3, .L566+8
.LPIC125:
	add	r3, pc
	bl	__assert_fail(PLT)
.L563:
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	subs	r3, r2, r3
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_20LigatureSubstFormat1EEEPT_j(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L564
	movs	r3, #0
	b	.L565
.L564:
	ldr	r3, [r7]
.L565:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L567:
	.align	2
.L566:
	.word	.LC7-(.LPIC123+4)
	.word	.LC8-(.LPIC124+4)
	.word	_ZZN2OT22hb_serialize_context_t10extend_minINS_20LigatureSubstFormat1EEEPT_RS3_E19__PRETTY_FUNCTION__-(.LPIC125+4)
	.fnend
	.size	_ZN2OT22hb_serialize_context_t10extend_minINS_20LigatureSubstFormat1EEEPT_RS3_, .-_ZN2OT22hb_serialize_context_t10extend_minINS_20LigatureSubstFormat1EEEPT_RS3_
	.section	.text._ZN2OT7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES4_E9serializeEPNS_22hb_serialize_context_tEj,"axG",%progbits,_ZN2OT7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES4_E9serializeEPNS_22hb_serialize_context_tEj,comdat
	.align	2
	.weak	_ZN2OT7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES4_E9serializeEPNS_22hb_serialize_context_tEj
	.thumb
	.thumb_func
	.type	_ZN2OT7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES4_E9serializeEPNS_22hb_serialize_context_tEj, %function
_ZN2OT7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES4_E9serializeEPNS_22hb_serialize_context_tEj:
	.fnstart
.LFB1101:
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
	ldr	r3, [r7, #8]
	add	r2, r7, #20
	ldr	r1, .L573
.LPIC126:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L573+4
.LPIC127:
	add	r1, pc
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L573+8
.LPIC128:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #8]
	bl	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z(PLT)
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #12]
	bl	_ZN2OT22hb_serialize_context_t10extend_minINS_7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES6_EEEEPT_RS9_(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L569
	add	r3, r7, #20
	mov	r0, r3
	movs	r1, #0
	movw	r2, #823
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L572
.L569:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	uxth	r3, r3
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OT7IntTypeItLj2EE3setEt(PLT)
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #12]
	bl	_ZN2OT22hb_serialize_context_t6extendINS_7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES6_EEEEPT_RS9_(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L571
	add	r3, r7, #20
	mov	r0, r3
	movs	r1, #0
	movw	r2, #825
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L572
.L571:
	add	r3, r7, #20
	mov	r0, r3
	movs	r1, #1
	movw	r2, #826
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
.L572:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L574:
	.align	2
.L573:
	.word	_ZZN2OT7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES4_E9serializeEPNS_22hb_serialize_context_tEjE19__PRETTY_FUNCTION__-(.LPIC126+4)
	.word	.LC4-(.LPIC127+4)
	.word	.LC2-(.LPIC128+4)
	.fnend
	.size	_ZN2OT7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES4_E9serializeEPNS_22hb_serialize_context_tEj, .-_ZN2OT7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES4_E9serializeEPNS_22hb_serialize_context_tEj
	.section	.text._ZN2OT7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES4_EixEj,"axG",%progbits,_ZN2OT7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES4_EixEj,comdat
	.align	2
	.weak	_ZN2OT7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES4_EixEj
	.thumb
	.thumb_func
	.type	_ZN2OT7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES4_EixEj, %function
_ZN2OT7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES4_EixEj:
	.fnstart
.LFB1102:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	lsls	r3, r3, #1
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #2
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN2OT7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES4_EixEj, .-_ZN2OT7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES4_EixEj
	.section	.text._ZN2OT8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEE9serializeEPNS_22hb_serialize_context_tEPv,"axG",%progbits,_ZN2OT8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEE9serializeEPNS_22hb_serialize_context_tEPv,comdat
	.align	2
	.weak	_ZN2OT8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEE9serializeEPNS_22hb_serialize_context_tEPv
	.thumb
	.thumb_func
	.type	_ZN2OT8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEE9serializeEPNS_22hb_serialize_context_tEPv, %function
_ZN2OT8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEE9serializeEPNS_22hb_serialize_context_tEPv:
	.fnstart
.LFB1103:
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
	bl	_ZN2OT22hb_serialize_context_t11start_embedINS_11LigatureSetEEEPT_v(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r2, [r7, #12]
	ldr	r1, [r7, #20]
	ldr	r3, [r7, #4]
	subs	r3, r1, r3
	uxth	r3, r3
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OT7IntTypeItLj2EE3setEt(PLT)
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OT8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEE9serializeEPNS_22hb_serialize_context_tEPv, .-_ZN2OT8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEE9serializeEPNS_22hb_serialize_context_tEPv
	.section	.text._ZN2OTplIPKNS_30ReverseChainSingleSubstFormat1ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTplIPKNS_30ReverseChainSingleSubstFormat1ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE, %function
_ZN2OTplIPKNS_30ReverseChainSingleSubstFormat1ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE:
	.fnstart
.LFB1105:
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
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZNK2OT8OffsetToINS_8CoverageENS_7IntTypeItLj2EEEEclEPKv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OTplIPKNS_30ReverseChainSingleSubstFormat1ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE, .-_ZN2OTplIPKNS_30ReverseChainSingleSubstFormat1ENS_7IntTypeItLj2EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE
	.section	.text._ZN2OTL5CastRINS_13OffsetArrayOfINS_19SubstLookupSubTableEEENS_7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES7_EEEERKT_RKT0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL5CastRINS_13OffsetArrayOfINS_19SubstLookupSubTableEEENS_7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES7_EEEERKT_RKT0_, %function
_ZN2OTL5CastRINS_13OffsetArrayOfINS_19SubstLookupSubTableEEENS_7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES7_EEEERKT_RKT0_:
	.fnstart
.LFB1109:
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
	.size	_ZN2OTL5CastRINS_13OffsetArrayOfINS_19SubstLookupSubTableEEENS_7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES7_EEEERKT_RKT0_, .-_ZN2OTL5CastRINS_13OffsetArrayOfINS_19SubstLookupSubTableEEENS_7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES7_EEEERKT_RKT0_
	.section	.text._ZNK2OT7ArrayOfINS_8OffsetToINS_19SubstLookupSubTableENS_7IntTypeItLj2EEEEES4_EixEj,"axG",%progbits,_ZNK2OT7ArrayOfINS_8OffsetToINS_19SubstLookupSubTableENS_7IntTypeItLj2EEEEES4_EixEj,comdat
	.align	2
	.weak	_ZNK2OT7ArrayOfINS_8OffsetToINS_19SubstLookupSubTableENS_7IntTypeItLj2EEEEES4_EixEj
	.thumb
	.thumb_func
	.type	_ZNK2OT7ArrayOfINS_8OffsetToINS_19SubstLookupSubTableENS_7IntTypeItLj2EEEEES4_EixEj, %function
_ZNK2OT7ArrayOfINS_8OffsetToINS_19SubstLookupSubTableENS_7IntTypeItLj2EEEEES4_EixEj:
	.fnstart
.LFB1110:
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
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7]
	cmp	r2, r3
	ite	ls
	movls	r3, #1
	movhi	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L584
	bl	_ZN2OTL4NullINS_8OffsetToINS_19SubstLookupSubTableENS_7IntTypeItLj2EEEEEEERKT_v(PLT)
	mov	r3, r0
	b	.L585
.L584:
	ldr	r3, [r7]
	lsls	r3, r3, #1
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #2
.L585:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT7ArrayOfINS_8OffsetToINS_19SubstLookupSubTableENS_7IntTypeItLj2EEEEES4_EixEj, .-_ZNK2OT7ArrayOfINS_8OffsetToINS_19SubstLookupSubTableENS_7IntTypeItLj2EEEEES4_EixEj
	.section	.text._ZN2OTplIPKNS_11SubstLookupENS_7IntTypeItLj2EEENS_19SubstLookupSubTableEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTplIPKNS_11SubstLookupENS_7IntTypeItLj2EEENS_19SubstLookupSubTableEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE, %function
_ZN2OTplIPKNS_11SubstLookupENS_7IntTypeItLj2EEENS_19SubstLookupSubTableEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE:
	.fnstart
.LFB1111:
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
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZNK2OT8OffsetToINS_19SubstLookupSubTableENS_7IntTypeItLj2EEEEclEPKv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OTplIPKNS_11SubstLookupENS_7IntTypeItLj2EEENS_19SubstLookupSubTableEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE, .-_ZN2OTplIPKNS_11SubstLookupENS_7IntTypeItLj2EEENS_19SubstLookupSubTableEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE
	.section	.text._ZN2OTL5CastRINS_13OffsetArrayOfINS_19SubstLookupSubTableEEENS_7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES7_EEEERT_RT0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL5CastRINS_13OffsetArrayOfINS_19SubstLookupSubTableEEENS_7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES7_EEEERT_RT0_, %function
_ZN2OTL5CastRINS_13OffsetArrayOfINS_19SubstLookupSubTableEEENS_7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES7_EEEERT_RT0_:
	.fnstart
.LFB1121:
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
	.size	_ZN2OTL5CastRINS_13OffsetArrayOfINS_19SubstLookupSubTableEEENS_7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES7_EEEERT_RT0_, .-_ZN2OTL5CastRINS_13OffsetArrayOfINS_19SubstLookupSubTableEEENS_7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES7_EEEERT_RT0_
	.section	.text._ZN2OT7ArrayOfINS_8OffsetToINS_19SubstLookupSubTableENS_7IntTypeItLj2EEEEES4_EixEj,"axG",%progbits,_ZN2OT7ArrayOfINS_8OffsetToINS_19SubstLookupSubTableENS_7IntTypeItLj2EEEEES4_EixEj,comdat
	.align	2
	.weak	_ZN2OT7ArrayOfINS_8OffsetToINS_19SubstLookupSubTableENS_7IntTypeItLj2EEEEES4_EixEj
	.thumb
	.thumb_func
	.type	_ZN2OT7ArrayOfINS_8OffsetToINS_19SubstLookupSubTableENS_7IntTypeItLj2EEEEES4_EixEj, %function
_ZN2OT7ArrayOfINS_8OffsetToINS_19SubstLookupSubTableENS_7IntTypeItLj2EEEEES4_EixEj:
	.fnstart
.LFB1122:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	lsls	r3, r3, #1
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #2
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN2OT7ArrayOfINS_8OffsetToINS_19SubstLookupSubTableENS_7IntTypeItLj2EEEEES4_EixEj, .-_ZN2OT7ArrayOfINS_8OffsetToINS_19SubstLookupSubTableENS_7IntTypeItLj2EEEEES4_EixEj
	.section	.text._ZN2OT8OffsetToINS_19SubstLookupSubTableENS_7IntTypeItLj2EEEE9serializeEPNS_22hb_serialize_context_tEPv,"axG",%progbits,_ZN2OT8OffsetToINS_19SubstLookupSubTableENS_7IntTypeItLj2EEEE9serializeEPNS_22hb_serialize_context_tEPv,comdat
	.align	2
	.weak	_ZN2OT8OffsetToINS_19SubstLookupSubTableENS_7IntTypeItLj2EEEE9serializeEPNS_22hb_serialize_context_tEPv
	.thumb
	.thumb_func
	.type	_ZN2OT8OffsetToINS_19SubstLookupSubTableENS_7IntTypeItLj2EEEE9serializeEPNS_22hb_serialize_context_tEPv, %function
_ZN2OT8OffsetToINS_19SubstLookupSubTableENS_7IntTypeItLj2EEEE9serializeEPNS_22hb_serialize_context_tEPv:
	.fnstart
.LFB1123:
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
	bl	_ZN2OT22hb_serialize_context_t11start_embedINS_19SubstLookupSubTableEEEPT_v(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r2, [r7, #12]
	ldr	r1, [r7, #20]
	ldr	r3, [r7, #4]
	subs	r3, r1, r3
	uxth	r3, r3
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OT7IntTypeItLj2EE3setEt(PLT)
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OT8OffsetToINS_19SubstLookupSubTableENS_7IntTypeItLj2EEEE9serializeEPNS_22hb_serialize_context_tEPv, .-_ZN2OT8OffsetToINS_19SubstLookupSubTableENS_7IntTypeItLj2EEEE9serializeEPNS_22hb_serialize_context_tEPv
	.section	.text._ZNK2OT9ExtensionINS_14ExtensionSubstEE8get_typeEv,"axG",%progbits,_ZNK2OT9ExtensionINS_14ExtensionSubstEE8get_typeEv,comdat
	.align	2
	.weak	_ZNK2OT9ExtensionINS_14ExtensionSubstEE8get_typeEv
	.thumb
	.thumb_func
	.type	_ZNK2OT9ExtensionINS_14ExtensionSubstEE8get_typeEv, %function
_ZNK2OT9ExtensionINS_14ExtensionSubstEE8get_typeEv:
	.fnstart
.LFB1125:
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
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	cmp	r3, #1
	bne	.L598
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZNK2OT16ExtensionFormat18get_typeEv(PLT)
	mov	r3, r0
	b	.L597
.L598:
	movs	r3, #0
.L597:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT9ExtensionINS_14ExtensionSubstEE8get_typeEv, .-_ZNK2OT9ExtensionINS_14ExtensionSubstEE8get_typeEv
	.section	.text._ZNK2OT9ExtensionINS_14ExtensionSubstEE12get_subtableINS_19SubstLookupSubTableEEERKT_v,"axG",%progbits,_ZNK2OT9ExtensionINS_14ExtensionSubstEE12get_subtableINS_19SubstLookupSubTableEEERKT_v,comdat
	.align	2
	.weak	_ZNK2OT9ExtensionINS_14ExtensionSubstEE12get_subtableINS_19SubstLookupSubTableEEERKT_v
	.thumb
	.thumb_func
	.type	_ZNK2OT9ExtensionINS_14ExtensionSubstEE12get_subtableINS_19SubstLookupSubTableEEERKT_v, %function
_ZNK2OT9ExtensionINS_14ExtensionSubstEE12get_subtableINS_19SubstLookupSubTableEEERKT_v:
	.fnstart
.LFB1129:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	_ZNK2OT9ExtensionINS_14ExtensionSubstEE10get_offsetEv(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L600
	bl	_ZN2OTL4NullINS_19SubstLookupSubTableEEERKT_v(PLT)
	mov	r3, r0
	b	.L601
.L600:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #12]
	bl	_ZN2OTL14StructAtOffsetINS_19SubstLookupSubTableEEERKT_PKvj(PLT)
	mov	r3, r0
.L601:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT9ExtensionINS_14ExtensionSubstEE12get_subtableINS_19SubstLookupSubTableEEERKT_v, .-_ZNK2OT9ExtensionINS_14ExtensionSubstEE12get_subtableINS_19SubstLookupSubTableEEERKT_v
	.section	.text._ZN2OT7IntTypeItLj2EE3cmpEPKS1_S3_,"axG",%progbits,_ZN2OT7IntTypeItLj2EE3cmpEPKS1_S3_,comdat
	.align	2
	.weak	_ZN2OT7IntTypeItLj2EE3cmpEPKS1_S3_
	.thumb
	.thumb_func
	.type	_ZN2OT7IntTypeItLj2EE3cmpEPKS1_S3_, %function
_ZN2OT7IntTypeItLj2EE3cmpEPKS1_S3_:
	.fnstart
.LFB1130:
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
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	movs	r3, #0
	bfi	r3, r2, #0, #16
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZNK2OT7IntTypeItLj2EE3cmpES1_(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OT7IntTypeItLj2EE3cmpEPKS1_S3_, .-_ZN2OT7IntTypeItLj2EE3cmpEPKS1_S3_
	.section	.text._Z14hb_bubble_sortIN2OT7IntTypeItLj2EEES2_EvPT_jPFiPKS3_S6_EPT0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z14hb_bubble_sortIN2OT7IntTypeItLj2EEES2_EvPT_jPFiPKS3_S6_EPT0_, %function
_Z14hb_bubble_sortIN2OT7IntTypeItLj2EEES2_EvPT_jPFiPKS3_S6_EPT0_:
	.fnstart
.LFB1131:
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
	str	r3, [r7]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L605
	b	.L604
.L605:
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	str	r3, [r7, #36]
.L611:
	movs	r3, #0
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L607
.L610:
	ldr	r3, [r7, #28]
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	adds	r1, r2, r3
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	lsls	r3, r3, #1
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
	beq	.L608
	ldr	r3, [r7, #28]
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r2, r2, r3
	add	r3, r7, #24
	ldrh	r2, [r2]	@ unaligned
	strh	r2, [r3]	@ unaligned
	ldr	r3, [r7, #28]
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldr	r2, [r7, #28]
	adds	r2, r2, #1
	lsls	r2, r2, #1
	ldr	r1, [r7, #12]
	add	r2, r2, r1
	ldrh	r2, [r2]	@ unaligned
	strh	r2, [r3]	@ unaligned
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	add	r2, r7, #24
	ldrh	r2, [r2]	@ unaligned
	strh	r2, [r3]	@ unaligned
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L609
	ldr	r3, [r7, #28]
	lsls	r3, r3, #1
	ldr	r2, [r7]
	add	r2, r2, r3
	add	r3, r7, #20
	ldrh	r2, [r2]	@ unaligned
	strh	r2, [r3]	@ unaligned
	ldr	r3, [r7, #28]
	lsls	r3, r3, #1
	ldr	r2, [r7]
	add	r3, r3, r2
	ldr	r2, [r7, #28]
	adds	r2, r2, #1
	lsls	r2, r2, #1
	ldr	r1, [r7]
	add	r2, r2, r1
	ldrh	r2, [r2]	@ unaligned
	strh	r2, [r3]	@ unaligned
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	lsls	r3, r3, #1
	ldr	r2, [r7]
	add	r3, r3, r2
	add	r2, r7, #20
	ldrh	r2, [r2]	@ unaligned
	strh	r2, [r3]	@ unaligned
.L609:
	ldr	r3, [r7, #28]
	str	r3, [r7, #32]
.L608:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L607:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L610
	ldr	r3, [r7, #32]
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L611
.L604:
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_Z14hb_bubble_sortIN2OT7IntTypeItLj2EEES2_EvPT_jPFiPKS3_S6_EPT0_, .-_Z14hb_bubble_sortIN2OT7IntTypeItLj2EEES2_EvPT_jPFiPKS3_S6_EPT0_
	.section	.text._ZN2OT8SupplierINS_7IntTypeItLj2EEEEC2EPKS2_j,"axG",%progbits,_ZN2OT8SupplierINS_7IntTypeItLj2EEEEC5EPKS2_j,comdat
	.align	2
	.weak	_ZN2OT8SupplierINS_7IntTypeItLj2EEEEC2EPKS2_j
	.thumb
	.thumb_func
	.type	_ZN2OT8SupplierINS_7IntTypeItLj2EEEEC2EPKS2_j, %function
_ZN2OT8SupplierINS_7IntTypeItLj2EEEEC2EPKS2_j:
	.fnstart
.LFB1133:
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
	ldr	r2, [r7, #8]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN2OT8SupplierINS_7IntTypeItLj2EEEEC2EPKS2_j, .-_ZN2OT8SupplierINS_7IntTypeItLj2EEEEC2EPKS2_j
	.weak	_ZN2OT8SupplierINS_7IntTypeItLj2EEEEC1EPKS2_j
	.thumb_set _ZN2OT8SupplierINS_7IntTypeItLj2EEEEC1EPKS2_j,_ZN2OT8SupplierINS_7IntTypeItLj2EEEEC2EPKS2_j
	.section	.rodata
	.align	2
.LC10:
	.ascii	"start [%p..%p] (%lu bytes)\000"
	.section	.text._ZN2OT22hb_serialize_context_t15start_serializeINS_11SubstLookupEEEPT_v,"axG",%progbits,_ZN2OT22hb_serialize_context_t15start_serializeINS_11SubstLookupEEEPT_v,comdat
	.align	2
	.weak	_ZN2OT22hb_serialize_context_t15start_serializeINS_11SubstLookupEEEPT_v
	.thumb
	.thumb_func
	.type	_ZN2OT22hb_serialize_context_t15start_serializeINS_11SubstLookupEEEPT_v, %function
_ZN2OT22hb_serialize_context_t15start_serializeINS_11SubstLookupEEEPT_v:
	.fnstart
.LFB1135:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #36
	sub	sp, sp, #36
	.setfp r7, sp, #24
	add	r7, sp, #24
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #4]
	ldr	r0, [r2, #4]
	ldr	r2, [r7, #4]
	ldr	r1, [r2, #8]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #8]
	mov	r4, r2
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #4]
	subs	r2, r4, r2
	movs	r4, #0
	str	r4, [sp]
	movs	r4, #1
	str	r4, [sp, #4]
	ldr	r4, .L617
.LPIC129:
	add	r4, pc
	str	r4, [sp, #8]
	str	r0, [sp, #12]
	str	r1, [sp, #16]
	str	r2, [sp, #20]
	ldr	r2, .L617+4
.LPIC130:
	add	r2, pc
	mov	r0, r2
	mov	r1, r3
	movs	r2, #0
	movs	r3, #1
	bl	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z(PLT)
	ldr	r0, [r7, #4]
	bl	_ZN2OT22hb_serialize_context_t11start_embedINS_11SubstLookupEEEPT_v(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L618:
	.align	2
.L617:
	.word	.LC10-(.LPIC129+4)
	.word	.LC2-(.LPIC130+4)
	.fnend
	.size	_ZN2OT22hb_serialize_context_t15start_serializeINS_11SubstLookupEEEPT_v, .-_ZN2OT22hb_serialize_context_t15start_serializeINS_11SubstLookupEEEPT_v
	.section	.rodata
	.align	2
.LC11:
	.ascii	"!this->ran_out_of_room\000"
	.section	.text._ZN2OT22hb_serialize_context_t4copyINS_11SubstLookupEEEPT_v,"axG",%progbits,_ZN2OT22hb_serialize_context_t4copyINS_11SubstLookupEEEPT_v,comdat
	.align	2
	.weak	_ZN2OT22hb_serialize_context_t4copyINS_11SubstLookupEEEPT_v
	.thumb
	.thumb_func
	.type	_ZN2OT22hb_serialize_context_t4copyINS_11SubstLookupEEEPT_v, %function
_ZN2OT22hb_serialize_context_t4copyINS_11SubstLookupEEEPT_v:
	.fnstart
.LFB1136:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L620
	ldr	r3, .L623
.LPIC131:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L623+4
.LPIC132:
	add	r3, pc
	mov	r1, r3
	movw	r2, #413
	ldr	r3, .L623+8
.LPIC133:
	add	r3, pc
	bl	__assert_fail(PLT)
.L620:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	str	r3, [r7, #12]
	ldr	r0, [r7, #12]
	bl	malloc(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L621
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #8]
	mov	r1, r3
	ldr	r2, [r7, #12]
	bl	memcpy(PLT)
.L621:
	ldr	r3, [r7, #8]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L624:
	.align	2
.L623:
	.word	.LC11-(.LPIC131+4)
	.word	.LC8-(.LPIC132+4)
	.word	_ZZN2OT22hb_serialize_context_t4copyINS_11SubstLookupEEEPT_vE19__PRETTY_FUNCTION__-(.LPIC133+4)
	.cantunwind
	.fnend
	.size	_ZN2OT22hb_serialize_context_t4copyINS_11SubstLookupEEEPT_v, .-_ZN2OT22hb_serialize_context_t4copyINS_11SubstLookupEEEPT_v
	.section	.text._Z12ARRAY_LENGTHIN2OT7IntTypeItLj2EEELj2EEjRAT0__KT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z12ARRAY_LENGTHIN2OT7IntTypeItLj2EEELj2EEjRAT0__KT_, %function
_Z12ARRAY_LENGTHIN2OT7IntTypeItLj2EEELj2EEjRAT0__KT_:
	.fnstart
.LFB1137:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #2
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_Z12ARRAY_LENGTHIN2OT7IntTypeItLj2EEELj2EEjRAT0__KT_, .-_Z12ARRAY_LENGTHIN2OT7IntTypeItLj2EEELj2EEjRAT0__KT_
	.section	.text._Z14hb_bubble_sortIN2OT7IntTypeItLj2EEEjEvPT_jPFiPKS3_S6_EPT0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z14hb_bubble_sortIN2OT7IntTypeItLj2EEEjEvPT_jPFiPKS3_S6_EPT0_, %function
_Z14hb_bubble_sortIN2OT7IntTypeItLj2EEEjEvPT_jPFiPKS3_S6_EPT0_:
	.fnstart
.LFB1138:
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
	str	r3, [r7]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L628
	b	.L627
.L628:
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	str	r3, [r7, #36]
.L634:
	movs	r3, #0
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L630
.L633:
	ldr	r3, [r7, #28]
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	adds	r1, r2, r3
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	lsls	r3, r3, #1
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
	beq	.L631
	ldr	r3, [r7, #28]
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r2, r2, r3
	add	r3, r7, #20
	ldrh	r2, [r2]	@ unaligned
	strh	r2, [r3]	@ unaligned
	ldr	r3, [r7, #28]
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldr	r2, [r7, #28]
	adds	r2, r2, #1
	lsls	r2, r2, #1
	ldr	r1, [r7, #12]
	add	r2, r2, r1
	ldrh	r2, [r2]	@ unaligned
	strh	r2, [r3]	@ unaligned
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	add	r2, r7, #20
	ldrh	r2, [r2]	@ unaligned
	strh	r2, [r3]	@ unaligned
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L632
	ldr	r3, [r7, #28]
	lsls	r3, r3, #2
	ldr	r2, [r7]
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	lsls	r3, r3, #2
	ldr	r2, [r7]
	add	r3, r3, r2
	ldr	r2, [r7, #28]
	adds	r2, r2, #1
	lsls	r2, r2, #2
	ldr	r1, [r7]
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7]
	add	r3, r3, r2
	ldr	r2, [r7, #24]
	str	r2, [r3]
.L632:
	ldr	r3, [r7, #28]
	str	r3, [r7, #32]
.L631:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L630:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L633
	ldr	r3, [r7, #32]
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L634
.L627:
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_Z14hb_bubble_sortIN2OT7IntTypeItLj2EEEjEvPT_jPFiPKS3_S6_EPT0_, .-_Z14hb_bubble_sortIN2OT7IntTypeItLj2EEEjEvPT_jPFiPKS3_S6_EPT0_
	.section	.text._Z12ARRAY_LENGTHIN14ligature_set_t16ligature_pairs_tELj4EEjRAT0__KT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z12ARRAY_LENGTHIN14ligature_set_t16ligature_pairs_tELj4EEjRAT0__KT_, %function
_Z12ARRAY_LENGTHIN14ligature_set_t16ligature_pairs_tELj4EEjRAT0__KT_:
	.fnstart
.LFB1139:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #4
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_Z12ARRAY_LENGTHIN14ligature_set_t16ligature_pairs_tELj4EEjRAT0__KT_, .-_Z12ARRAY_LENGTHIN14ligature_set_t16ligature_pairs_tELj4EEjRAT0__KT_
	.section	.text._ZN2OT8SupplierIjEC2EPKjj,"axG",%progbits,_ZN2OT8SupplierIjEC5EPKjj,comdat
	.align	2
	.weak	_ZN2OT8SupplierIjEC2EPKjj
	.thumb
	.thumb_func
	.type	_ZN2OT8SupplierIjEC2EPKjj, %function
_ZN2OT8SupplierIjEC2EPKjj:
	.fnstart
.LFB1141:
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
	ldr	r2, [r7, #8]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN2OT8SupplierIjEC2EPKjj, .-_ZN2OT8SupplierIjEC2EPKjj
	.weak	_ZN2OT8SupplierIjEC1EPKjj
	.thumb_set _ZN2OT8SupplierIjEC1EPKjj,_ZN2OT8SupplierIjEC2EPKjj
	.section	.text._Z12ARRAY_LENGTHIjLj5EEjRAT0__KT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z12ARRAY_LENGTHIjLj5EEjRAT0__KT_, %function
_Z12ARRAY_LENGTHIjLj5EEjRAT0__KT_:
	.fnstart
.LFB1143:
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
	.section	.text._ZN33hb_ot_layout_lookup_accelerator_t4initIN2OT11SubstLookupEEEvRKT_,"axG",%progbits,_ZN33hb_ot_layout_lookup_accelerator_t4initIN2OT11SubstLookupEEEvRKT_,comdat
	.align	2
	.weak	_ZN33hb_ot_layout_lookup_accelerator_t4initIN2OT11SubstLookupEEEvRKT_
	.thumb
	.thumb_func
	.type	_ZN33hb_ot_layout_lookup_accelerator_t4initIN2OT11SubstLookupEEEvRKT_, %function
_ZN33hb_ot_layout_lookup_accelerator_t4initIN2OT11SubstLookupEEEvRKT_:
	.fnstart
.LFB1144:
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
	mov	r0, r3
	bl	_ZN24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES_IS0_ImLj0EES0_ImLj9EEEE4initEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZNK2OT11SubstLookup12add_coverageI24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES2_IS3_ImLj0EES3_ImLj9EEEEEEvPT_(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN33hb_ot_layout_lookup_accelerator_t4initIN2OT11SubstLookupEEEvRKT_, .-_ZN33hb_ot_layout_lookup_accelerator_t4initIN2OT11SubstLookupEEEvRKT_
	.section	.text._ZNK2OT5BEIntIjLi4EEcvjEv,"axG",%progbits,_ZNK2OT5BEIntIjLi4EEcvjEv,comdat
	.align	2
	.weak	_ZNK2OT5BEIntIjLi4EEcvjEv
	.thumb
	.thumb_func
	.type	_ZNK2OT5BEIntIjLi4EEcvjEv, %function
_ZNK2OT5BEIntIjLi4EEcvjEv:
	.fnstart
.LFB1149:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	lsls	r3, r3, #16
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	lsls	r3, r3, #8
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	add	r3, r3, r2
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNK2OT5BEIntIjLi4EEcvjEv, .-_ZNK2OT5BEIntIjLi4EEcvjEv
	.section	.text._ZNK2OT5BEIntItLi2EEcvtEv,"axG",%progbits,_ZNK2OT5BEIntItLi2EEcvtEv,comdat
	.align	2
	.weak	_ZNK2OT5BEIntItLi2EEcvtEv
	.thumb
	.thumb_func
	.type	_ZNK2OT5BEIntItLi2EEcvtEv, %function
_ZNK2OT5BEIntItLi2EEcvtEv:
	.fnstart
.LFB1151:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	add	r3, r3, r2
	uxth	r3, r3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNK2OT5BEIntItLi2EEcvtEv, .-_ZNK2OT5BEIntItLi2EEcvtEv
	.section	.text._ZN2OT5BEIntItLi2EE3setEt,"axG",%progbits,_ZN2OT5BEIntItLi2EE3setEt,comdat
	.align	2
	.weak	_ZN2OT5BEIntItLi2EE3setEt
	.thumb
	.thumb_func
	.type	_ZN2OT5BEIntItLi2EE3setEt, %function
_ZN2OT5BEIntItLi2EE3setEt:
	.fnstart
.LFB1170:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	ldrh	r3, [r7, #2]
	lsrs	r3, r3, #8
	uxth	r3, r3
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3]
	ldrh	r3, [r7, #2]	@ movhi
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3, #1]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN2OT5BEIntItLi2EE3setEt, .-_ZN2OT5BEIntItLi2EE3setEt
	.section	.text._ZNK2OT7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES3_E8get_sizeEv,"axG",%progbits,_ZNK2OT7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES3_E8get_sizeEv,comdat
	.align	2
	.weak	_ZNK2OT7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES3_E8get_sizeEv
	.thumb
	.thumb_func
	.type	_ZNK2OT7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES3_E8get_sizeEv, %function
_ZNK2OT7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES3_E8get_sizeEv:
	.fnstart
.LFB1171:
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
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	adds	r3, r3, #1
	lsls	r3, r3, #1
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES3_E8get_sizeEv, .-_ZNK2OT7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES3_E8get_sizeEv
	.section	.text._ZN2OT22hb_serialize_context_t13allocate_sizeINS_6LookupEEEPT_j,"axG",%progbits,_ZN2OT22hb_serialize_context_t13allocate_sizeINS_6LookupEEEPT_j,comdat
	.align	2
	.weak	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_6LookupEEEPT_j
	.thumb
	.thumb_func
	.type	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_6LookupEEEPT_j, %function
_ZN2OT22hb_serialize_context_t13allocate_sizeINS_6LookupEEEPT_j:
	.fnstart
.LFB1173:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L651
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	subs	r2, r2, r3
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L652
.L651:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #16]
	movs	r3, #0
	b	.L653
.L652:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mov	r0, r3
	movs	r1, #0
	ldr	r2, [r7]
	bl	memset(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
.L653:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_6LookupEEEPT_j, .-_ZN2OT22hb_serialize_context_t13allocate_sizeINS_6LookupEEEPT_j
	.section	.text._ZN2OT22hb_serialize_context_t10extend_minINS_7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES5_EEEEPT_RS8_,"axG",%progbits,_ZN2OT22hb_serialize_context_t10extend_minINS_7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES5_EEEEPT_RS8_,comdat
	.align	2
	.weak	_ZN2OT22hb_serialize_context_t10extend_minINS_7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES5_EEEEPT_RS8_
	.thumb
	.thumb_func
	.type	_ZN2OT22hb_serialize_context_t10extend_minINS_7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES5_EEEEPT_RS8_, %function
_ZN2OT22hb_serialize_context_t10extend_minINS_7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES5_EEEEPT_RS8_:
	.fnstart
.LFB1174:
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
	movs	r3, #2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	cmp	r2, r3
	bhi	.L655
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L655
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	cmp	r2, r3
	bcs	.L656
.L655:
	ldr	r3, .L659
.LPIC134:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L659+4
.LPIC135:
	add	r3, pc
	mov	r1, r3
	movw	r2, #461
	ldr	r3, .L659+8
.LPIC136:
	add	r3, pc
	bl	__assert_fail(PLT)
.L656:
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	subs	r3, r2, r3
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES5_EEEEPT_j(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L657
	movs	r3, #0
	b	.L658
.L657:
	ldr	r3, [r7]
.L658:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L660:
	.align	2
.L659:
	.word	.LC7-(.LPIC134+4)
	.word	.LC8-(.LPIC135+4)
	.word	_ZZN2OT22hb_serialize_context_t10extend_minINS_7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES5_EEEEPT_RS8_E19__PRETTY_FUNCTION__-(.LPIC136+4)
	.fnend
	.size	_ZN2OT22hb_serialize_context_t10extend_minINS_7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES5_EEEEPT_RS8_, .-_ZN2OT22hb_serialize_context_t10extend_minINS_7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES5_EEEEPT_RS8_
	.section	.text._ZN2OT22hb_serialize_context_t6extendINS_7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES5_EEEEPT_RS8_,"axG",%progbits,_ZN2OT22hb_serialize_context_t6extendINS_7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES5_EEEEPT_RS8_,comdat
	.align	2
	.weak	_ZN2OT22hb_serialize_context_t6extendINS_7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES5_EEEEPT_RS8_
	.thumb
	.thumb_func
	.type	_ZN2OT22hb_serialize_context_t6extendINS_7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES5_EEEEPT_RS8_, %function
_ZN2OT22hb_serialize_context_t6extendINS_7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES5_EEEEPT_RS8_:
	.fnstart
.LFB1175:
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
	bl	_ZNK2OT7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES3_E8get_sizeEv(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	cmp	r2, r3
	bcs	.L662
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L662
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	cmp	r2, r3
	bcs	.L663
.L662:
	ldr	r3, .L666
.LPIC137:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L666+4
.LPIC138:
	add	r3, pc
	mov	r1, r3
	mov	r2, #470
	ldr	r3, .L666+8
.LPIC139:
	add	r3, pc
	bl	__assert_fail(PLT)
.L663:
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	subs	r3, r2, r3
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES5_EEEEPT_j(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L664
	movs	r3, #0
	b	.L665
.L664:
	ldr	r3, [r7]
.L665:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L667:
	.align	2
.L666:
	.word	.LC9-(.LPIC137+4)
	.word	.LC8-(.LPIC138+4)
	.word	_ZZN2OT22hb_serialize_context_t6extendINS_7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES5_EEEEPT_RS8_E19__PRETTY_FUNCTION__-(.LPIC139+4)
	.fnend
	.size	_ZN2OT22hb_serialize_context_t6extendINS_7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES5_EEEEPT_RS8_, .-_ZN2OT22hb_serialize_context_t6extendINS_7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES5_EEEEPT_RS8_
	.section	.text._ZN2OTL14StructAtOffsetINS_7IntTypeItLj2EEEEERT_Pvj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL14StructAtOffsetINS_7IntTypeItLj2EEEEERT_Pvj, %function
_ZN2OTL14StructAtOffsetINS_7IntTypeItLj2EEEEERT_Pvj:
	.fnstart
.LFB1176:
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
	add	r3, r3, r2
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN2OTL14StructAtOffsetINS_7IntTypeItLj2EEEEERT_Pvj, .-_ZN2OTL14StructAtOffsetINS_7IntTypeItLj2EEEEERT_Pvj
	.section	.text._ZN2OT22hb_serialize_context_t13allocate_sizeINS_15CoverageFormat1EEEPT_j,"axG",%progbits,_ZN2OT22hb_serialize_context_t13allocate_sizeINS_15CoverageFormat1EEEPT_j,comdat
	.align	2
	.weak	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_15CoverageFormat1EEEPT_j
	.thumb
	.thumb_func
	.type	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_15CoverageFormat1EEEPT_j, %function
_ZN2OT22hb_serialize_context_t13allocate_sizeINS_15CoverageFormat1EEEPT_j:
	.fnstart
.LFB1181:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L671
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	subs	r2, r2, r3
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L672
.L671:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #16]
	movs	r3, #0
	b	.L673
.L672:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mov	r0, r3
	movs	r1, #0
	ldr	r2, [r7]
	bl	memset(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
.L673:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_15CoverageFormat1EEEPT_j, .-_ZN2OT22hb_serialize_context_t13allocate_sizeINS_15CoverageFormat1EEEPT_j
	.section	.text._ZNK2OT7ArrayOfINS_7IntTypeItLj2EEES2_E8get_sizeEv,"axG",%progbits,_ZNK2OT7ArrayOfINS_7IntTypeItLj2EEES2_E8get_sizeEv,comdat
	.align	2
	.weak	_ZNK2OT7ArrayOfINS_7IntTypeItLj2EEES2_E8get_sizeEv
	.thumb
	.thumb_func
	.type	_ZNK2OT7ArrayOfINS_7IntTypeItLj2EEES2_E8get_sizeEv, %function
_ZNK2OT7ArrayOfINS_7IntTypeItLj2EEES2_E8get_sizeEv:
	.fnstart
.LFB1182:
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
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	adds	r3, r3, #1
	lsls	r3, r3, #1
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT7ArrayOfINS_7IntTypeItLj2EEES2_E8get_sizeEv, .-_ZNK2OT7ArrayOfINS_7IntTypeItLj2EEES2_E8get_sizeEv
	.section	.text._ZN2OT22hb_serialize_context_t13allocate_sizeINS_13SortedArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_j,"axG",%progbits,_ZN2OT22hb_serialize_context_t13allocate_sizeINS_13SortedArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_j,comdat
	.align	2
	.weak	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_13SortedArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_j
	.thumb
	.thumb_func
	.type	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_13SortedArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_j, %function
_ZN2OT22hb_serialize_context_t13allocate_sizeINS_13SortedArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_j:
	.fnstart
.LFB1183:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L677
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	subs	r2, r2, r3
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L678
.L677:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #16]
	movs	r3, #0
	b	.L679
.L678:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mov	r0, r3
	movs	r1, #0
	ldr	r2, [r7]
	bl	memset(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
.L679:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_13SortedArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_j, .-_ZN2OT22hb_serialize_context_t13allocate_sizeINS_13SortedArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_j
	.section	.text._ZN2OTL4NullINS_7IntTypeItLj2EEEEERKT_v,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL4NullINS_7IntTypeItLj2EEEEERKT_v, %function
_ZN2OTL4NullINS_7IntTypeItLj2EEEEERKT_v:
	.fnstart
.LFB1185:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r3, .L682
.LPIC140:
	add	r3, pc
	mov	r0, r3
	bl	_ZN2OTL5CastPINS_7IntTypeItLj2EEEPKvEEPT_PT0_(PLT)
	mov	r3, r0
	mov	r0, r3
	pop	{r7, pc}
.L683:
	.align	2
.L682:
	.word	_ZN2OTL9_NullPoolE-(.LPIC140+4)
	.cantunwind
	.fnend
	.size	_ZN2OTL4NullINS_7IntTypeItLj2EEEEERKT_v, .-_ZN2OTL4NullINS_7IntTypeItLj2EEEEERKT_v
	.section	.text._ZN2OT22hb_serialize_context_t13allocate_sizeINS_15CoverageFormat2EEEPT_j,"axG",%progbits,_ZN2OT22hb_serialize_context_t13allocate_sizeINS_15CoverageFormat2EEEPT_j,comdat
	.align	2
	.weak	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_15CoverageFormat2EEEPT_j
	.thumb
	.thumb_func
	.type	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_15CoverageFormat2EEEPT_j, %function
_ZN2OT22hb_serialize_context_t13allocate_sizeINS_15CoverageFormat2EEEPT_j:
	.fnstart
.LFB1186:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L685
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	subs	r2, r2, r3
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L686
.L685:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #16]
	movs	r3, #0
	b	.L687
.L686:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mov	r0, r3
	movs	r1, #0
	ldr	r2, [r7]
	bl	memset(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
.L687:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_15CoverageFormat2EEEPT_j, .-_ZN2OT22hb_serialize_context_t13allocate_sizeINS_15CoverageFormat2EEEPT_j
	.section	.text._ZNK2OT7ArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEE8get_sizeEv,"axG",%progbits,_ZNK2OT7ArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEE8get_sizeEv,comdat
	.align	2
	.weak	_ZNK2OT7ArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEE8get_sizeEv
	.thumb
	.thumb_func
	.type	_ZNK2OT7ArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEE8get_sizeEv, %function
_ZNK2OT7ArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEE8get_sizeEv:
	.fnstart
.LFB1187:
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
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, #2
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT7ArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEE8get_sizeEv, .-_ZNK2OT7ArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEE8get_sizeEv
	.section	.text._ZN2OT22hb_serialize_context_t13allocate_sizeINS_13SortedArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEEEEEPT_j,"axG",%progbits,_ZN2OT22hb_serialize_context_t13allocate_sizeINS_13SortedArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEEEEEPT_j,comdat
	.align	2
	.weak	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_13SortedArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEEEEEPT_j
	.thumb
	.thumb_func
	.type	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_13SortedArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEEEEEPT_j, %function
_ZN2OT22hb_serialize_context_t13allocate_sizeINS_13SortedArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEEEEEPT_j:
	.fnstart
.LFB1188:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L691
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	subs	r2, r2, r3
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L692
.L691:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #16]
	movs	r3, #0
	b	.L693
.L692:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mov	r0, r3
	movs	r1, #0
	ldr	r2, [r7]
	bl	memset(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
.L693:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_13SortedArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEEEEEPT_j, .-_ZN2OT22hb_serialize_context_t13allocate_sizeINS_13SortedArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEEEEEPT_j
	.section	.text._ZN2OT22hb_serialize_context_t13allocate_sizeINS_8CoverageEEEPT_j,"axG",%progbits,_ZN2OT22hb_serialize_context_t13allocate_sizeINS_8CoverageEEEPT_j,comdat
	.align	2
	.weak	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_8CoverageEEEPT_j
	.thumb
	.thumb_func
	.type	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_8CoverageEEEPT_j, %function
_ZN2OT22hb_serialize_context_t13allocate_sizeINS_8CoverageEEEPT_j:
	.fnstart
.LFB1190:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L695
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	subs	r2, r2, r3
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L696
.L695:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #16]
	movs	r3, #0
	b	.L697
.L696:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mov	r0, r3
	movs	r1, #0
	ldr	r2, [r7]
	bl	memset(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
.L697:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_8CoverageEEEPT_j, .-_ZN2OT22hb_serialize_context_t13allocate_sizeINS_8CoverageEEEPT_j
	.section	.text._ZNK2OT8OffsetToINS_8CoverageENS_7IntTypeItLj2EEEEclEPKv,"axG",%progbits,_ZNK2OT8OffsetToINS_8CoverageENS_7IntTypeItLj2EEEEclEPKv,comdat
	.align	2
	.weak	_ZNK2OT8OffsetToINS_8CoverageENS_7IntTypeItLj2EEEEclEPKv
	.thumb
	.thumb_func
	.type	_ZNK2OT8OffsetToINS_8CoverageENS_7IntTypeItLj2EEEEclEPKv, %function
_ZNK2OT8OffsetToINS_8CoverageENS_7IntTypeItLj2EEEEclEPKv:
	.fnstart
.LFB1192:
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
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L699
	bl	_ZN2OTL4NullINS_8CoverageEEERKT_v(PLT)
	mov	r3, r0
	b	.L700
.L699:
	ldr	r0, [r7]
	ldr	r1, [r7, #12]
	bl	_ZN2OTL14StructAtOffsetINS_8CoverageEEERKT_PKvj(PLT)
	mov	r3, r0
.L700:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT8OffsetToINS_8CoverageENS_7IntTypeItLj2EEEEclEPKv, .-_ZNK2OT8OffsetToINS_8CoverageENS_7IntTypeItLj2EEEEclEPKv
	.section	.text._ZN2OTL5CastPINS_8CoverageEPKvEEPT_PT0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL5CastPINS_8CoverageEPKvEEPT_PT0_, %function
_ZN2OTL5CastPINS_8CoverageEPKvEEPT_PT0_:
	.fnstart
.LFB1233:
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
	.size	_ZN2OTL5CastPINS_8CoverageEPKvEEPT_PT0_, .-_ZN2OTL5CastPINS_8CoverageEPKvEEPT_PT0_
	.section	.text._ZNK2OT15HeadlessArrayOfINS_7IntTypeItLj2EEES2_E8get_sizeEv,"axG",%progbits,_ZNK2OT15HeadlessArrayOfINS_7IntTypeItLj2EEES2_E8get_sizeEv,comdat
	.align	2
	.weak	_ZNK2OT15HeadlessArrayOfINS_7IntTypeItLj2EEES2_E8get_sizeEv
	.thumb
	.thumb_func
	.type	_ZNK2OT15HeadlessArrayOfINS_7IntTypeItLj2EEES2_E8get_sizeEv, %function
_ZNK2OT15HeadlessArrayOfINS_7IntTypeItLj2EEES2_E8get_sizeEv:
	.fnstart
.LFB1245:
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
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L704
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	lsls	r3, r3, #1
	b	.L705
.L704:
	movs	r3, #2
.L705:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT15HeadlessArrayOfINS_7IntTypeItLj2EEES2_E8get_sizeEv, .-_ZNK2OT15HeadlessArrayOfINS_7IntTypeItLj2EEES2_E8get_sizeEv
	.section	.text._ZNK2OT7ArrayOfINS_8OffsetToINS_8CoverageENS_7IntTypeItLj2EEEEES4_E8get_sizeEv,"axG",%progbits,_ZNK2OT7ArrayOfINS_8OffsetToINS_8CoverageENS_7IntTypeItLj2EEEEES4_E8get_sizeEv,comdat
	.align	2
	.weak	_ZNK2OT7ArrayOfINS_8OffsetToINS_8CoverageENS_7IntTypeItLj2EEEEES4_E8get_sizeEv
	.thumb
	.thumb_func
	.type	_ZNK2OT7ArrayOfINS_8OffsetToINS_8CoverageENS_7IntTypeItLj2EEEEES4_E8get_sizeEv, %function
_ZNK2OT7ArrayOfINS_8OffsetToINS_8CoverageENS_7IntTypeItLj2EEEEES4_E8get_sizeEv:
	.fnstart
.LFB1261:
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
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	adds	r3, r3, #1
	lsls	r3, r3, #1
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT7ArrayOfINS_8OffsetToINS_8CoverageENS_7IntTypeItLj2EEEEES4_E8get_sizeEv, .-_ZNK2OT7ArrayOfINS_8OffsetToINS_8CoverageENS_7IntTypeItLj2EEEEES4_E8get_sizeEv
	.section	.text._ZN2OTL14StructAtOffsetINS_13OffsetArrayOfINS_8CoverageEEEEERKT_PKvj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL14StructAtOffsetINS_13OffsetArrayOfINS_8CoverageEEEEERKT_PKvj, %function
_ZN2OTL14StructAtOffsetINS_13OffsetArrayOfINS_8CoverageEEEEERKT_PKvj:
	.fnstart
.LFB1262:
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
	add	r3, r3, r2
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN2OTL14StructAtOffsetINS_13OffsetArrayOfINS_8CoverageEEEEERKT_PKvj, .-_ZN2OTL14StructAtOffsetINS_13OffsetArrayOfINS_8CoverageEEEEERKT_PKvj
	.section	.text._ZN2OTL4NullINS_8OffsetToINS_8CoverageENS_7IntTypeItLj2EEEEEEERKT_v,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL4NullINS_8OffsetToINS_8CoverageENS_7IntTypeItLj2EEEEEEERKT_v, %function
_ZN2OTL4NullINS_8OffsetToINS_8CoverageENS_7IntTypeItLj2EEEEEEERKT_v:
	.fnstart
.LFB1263:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r3, .L713
.LPIC141:
	add	r3, pc
	mov	r0, r3
	bl	_ZN2OTL5CastPINS_8OffsetToINS_8CoverageENS_7IntTypeItLj2EEEEEPKvEEPT_PT0_(PLT)
	mov	r3, r0
	mov	r0, r3
	pop	{r7, pc}
.L714:
	.align	2
.L713:
	.word	_ZN2OTL9_NullPoolE-(.LPIC141+4)
	.cantunwind
	.fnend
	.size	_ZN2OTL4NullINS_8OffsetToINS_8CoverageENS_7IntTypeItLj2EEEEEEERKT_v, .-_ZN2OTL4NullINS_8OffsetToINS_8CoverageENS_7IntTypeItLj2EEEEEEERKT_v
	.section	.text._ZN2OT22hb_serialize_context_t13allocate_sizeINS_18SingleSubstFormat1EEEPT_j,"axG",%progbits,_ZN2OT22hb_serialize_context_t13allocate_sizeINS_18SingleSubstFormat1EEEPT_j,comdat
	.align	2
	.weak	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_18SingleSubstFormat1EEEPT_j
	.thumb
	.thumb_func
	.type	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_18SingleSubstFormat1EEEPT_j, %function
_ZN2OT22hb_serialize_context_t13allocate_sizeINS_18SingleSubstFormat1EEEPT_j:
	.fnstart
.LFB1291:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L716
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	subs	r2, r2, r3
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L717
.L716:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #16]
	movs	r3, #0
	b	.L718
.L717:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mov	r0, r3
	movs	r1, #0
	ldr	r2, [r7]
	bl	memset(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
.L718:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_18SingleSubstFormat1EEEPT_j, .-_ZN2OT22hb_serialize_context_t13allocate_sizeINS_18SingleSubstFormat1EEEPT_j
	.section	.text._ZN2OT22hb_serialize_context_t11start_embedINS_8CoverageEEEPT_v,"axG",%progbits,_ZN2OT22hb_serialize_context_t11start_embedINS_8CoverageEEEPT_v,comdat
	.align	2
	.weak	_ZN2OT22hb_serialize_context_t11start_embedINS_8CoverageEEEPT_v
	.thumb
	.thumb_func
	.type	_ZN2OT22hb_serialize_context_t11start_embedINS_8CoverageEEEPT_v, %function
_ZN2OT22hb_serialize_context_t11start_embedINS_8CoverageEEEPT_v:
	.fnstart
.LFB1292:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN2OT22hb_serialize_context_t11start_embedINS_8CoverageEEEPT_v, .-_ZN2OT22hb_serialize_context_t11start_embedINS_8CoverageEEEPT_v
	.section	.text._ZN2OT5BEIntIsLi2EE3setEs,"axG",%progbits,_ZN2OT5BEIntIsLi2EE3setEs,comdat
	.align	2
	.weak	_ZN2OT5BEIntIsLi2EE3setEs
	.thumb
	.thumb_func
	.type	_ZN2OT5BEIntIsLi2EE3setEs, %function
_ZN2OT5BEIntIsLi2EE3setEs:
	.fnstart
.LFB1293:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	ldrsh	r3, [r7, #2]
	asrs	r3, r3, #8
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3]
	ldrh	r3, [r7, #2]	@ movhi
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3, #1]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN2OT5BEIntIsLi2EE3setEs, .-_ZN2OT5BEIntIsLi2EE3setEs
	.section	.text._ZN2OT22hb_serialize_context_t13allocate_sizeINS_18SingleSubstFormat2EEEPT_j,"axG",%progbits,_ZN2OT22hb_serialize_context_t13allocate_sizeINS_18SingleSubstFormat2EEEPT_j,comdat
	.align	2
	.weak	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_18SingleSubstFormat2EEEPT_j
	.thumb
	.thumb_func
	.type	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_18SingleSubstFormat2EEEPT_j, %function
_ZN2OT22hb_serialize_context_t13allocate_sizeINS_18SingleSubstFormat2EEEPT_j:
	.fnstart
.LFB1295:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L723
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	subs	r2, r2, r3
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L724
.L723:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #16]
	movs	r3, #0
	b	.L725
.L724:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mov	r0, r3
	movs	r1, #0
	ldr	r2, [r7]
	bl	memset(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
.L725:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_18SingleSubstFormat2EEEPT_j, .-_ZN2OT22hb_serialize_context_t13allocate_sizeINS_18SingleSubstFormat2EEEPT_j
	.section	.text._ZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_E9serializeEPNS_22hb_serialize_context_tEj,"axG",%progbits,_ZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_E9serializeEPNS_22hb_serialize_context_tEj,comdat
	.align	2
	.weak	_ZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_E9serializeEPNS_22hb_serialize_context_tEj
	.thumb
	.thumb_func
	.type	_ZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_E9serializeEPNS_22hb_serialize_context_tEj, %function
_ZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_E9serializeEPNS_22hb_serialize_context_tEj:
	.fnstart
.LFB1296:
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
	ldr	r3, [r7, #8]
	add	r2, r7, #20
	ldr	r1, .L731
.LPIC142:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L731+4
.LPIC143:
	add	r1, pc
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L731+8
.LPIC144:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #8]
	bl	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z(PLT)
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #12]
	bl	_ZN2OT22hb_serialize_context_t10extend_minINS_7ArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L727
	add	r3, r7, #20
	mov	r0, r3
	movs	r1, #0
	movw	r2, #823
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L730
.L727:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	uxth	r3, r3
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OT7IntTypeItLj2EE3setEt(PLT)
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #12]
	bl	_ZN2OT22hb_serialize_context_t6extendINS_7ArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L729
	add	r3, r7, #20
	mov	r0, r3
	movs	r1, #0
	movw	r2, #825
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L730
.L729:
	add	r3, r7, #20
	mov	r0, r3
	movs	r1, #1
	movw	r2, #826
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
.L730:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L732:
	.align	2
.L731:
	.word	_ZZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_E9serializeEPNS_22hb_serialize_context_tEjE19__PRETTY_FUNCTION__-(.LPIC142+4)
	.word	.LC4-(.LPIC143+4)
	.word	.LC2-(.LPIC144+4)
	.fnend
	.size	_ZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_E9serializeEPNS_22hb_serialize_context_tEj, .-_ZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_E9serializeEPNS_22hb_serialize_context_tEj
	.section	.text._ZN2OT22hb_serialize_context_t13allocate_sizeINS_7IntTypeItLj2EEEEEPT_j,"axG",%progbits,_ZN2OT22hb_serialize_context_t13allocate_sizeINS_7IntTypeItLj2EEEEEPT_j,comdat
	.align	2
	.weak	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_7IntTypeItLj2EEEEEPT_j
	.thumb
	.thumb_func
	.type	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_7IntTypeItLj2EEEEEPT_j, %function
_ZN2OT22hb_serialize_context_t13allocate_sizeINS_7IntTypeItLj2EEEEEPT_j:
	.fnstart
.LFB1297:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L734
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	subs	r2, r2, r3
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L735
.L734:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #16]
	movs	r3, #0
	b	.L736
.L735:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mov	r0, r3
	movs	r1, #0
	ldr	r2, [r7]
	bl	memset(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
.L736:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_7IntTypeItLj2EEEEEPT_j, .-_ZN2OT22hb_serialize_context_t13allocate_sizeINS_7IntTypeItLj2EEEEEPT_j
	.section	.text._ZN2OT22hb_serialize_context_t13allocate_sizeINS_8LigatureEEEPT_j,"axG",%progbits,_ZN2OT22hb_serialize_context_t13allocate_sizeINS_8LigatureEEEPT_j,comdat
	.align	2
	.weak	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_8LigatureEEEPT_j
	.thumb
	.thumb_func
	.type	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_8LigatureEEEPT_j, %function
_ZN2OT22hb_serialize_context_t13allocate_sizeINS_8LigatureEEEPT_j:
	.fnstart
.LFB1311:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L738
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	subs	r2, r2, r3
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L739
.L738:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #16]
	movs	r3, #0
	b	.L740
.L739:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mov	r0, r3
	movs	r1, #0
	ldr	r2, [r7]
	bl	memset(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
.L740:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_8LigatureEEEPT_j, .-_ZN2OT22hb_serialize_context_t13allocate_sizeINS_8LigatureEEEPT_j
	.section	.text._ZN2OT22hb_serialize_context_t10extend_minINS_15HeadlessArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_,"axG",%progbits,_ZN2OT22hb_serialize_context_t10extend_minINS_15HeadlessArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_,comdat
	.align	2
	.weak	_ZN2OT22hb_serialize_context_t10extend_minINS_15HeadlessArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_
	.thumb
	.thumb_func
	.type	_ZN2OT22hb_serialize_context_t10extend_minINS_15HeadlessArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_, %function
_ZN2OT22hb_serialize_context_t10extend_minINS_15HeadlessArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_:
	.fnstart
.LFB1312:
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
	movs	r3, #2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	cmp	r2, r3
	bhi	.L742
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L742
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	cmp	r2, r3
	bcs	.L743
.L742:
	ldr	r3, .L746
.LPIC145:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L746+4
.LPIC146:
	add	r3, pc
	mov	r1, r3
	movw	r2, #461
	ldr	r3, .L746+8
.LPIC147:
	add	r3, pc
	bl	__assert_fail(PLT)
.L743:
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	subs	r3, r2, r3
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_15HeadlessArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_j(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L744
	movs	r3, #0
	b	.L745
.L744:
	ldr	r3, [r7]
.L745:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L747:
	.align	2
.L746:
	.word	.LC7-(.LPIC145+4)
	.word	.LC8-(.LPIC146+4)
	.word	_ZZN2OT22hb_serialize_context_t10extend_minINS_15HeadlessArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_E19__PRETTY_FUNCTION__-(.LPIC147+4)
	.fnend
	.size	_ZN2OT22hb_serialize_context_t10extend_minINS_15HeadlessArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_, .-_ZN2OT22hb_serialize_context_t10extend_minINS_15HeadlessArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_
	.section	.text._ZN2OT22hb_serialize_context_t6extendINS_15HeadlessArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_,"axG",%progbits,_ZN2OT22hb_serialize_context_t6extendINS_15HeadlessArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_,comdat
	.align	2
	.weak	_ZN2OT22hb_serialize_context_t6extendINS_15HeadlessArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_
	.thumb
	.thumb_func
	.type	_ZN2OT22hb_serialize_context_t6extendINS_15HeadlessArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_, %function
_ZN2OT22hb_serialize_context_t6extendINS_15HeadlessArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_:
	.fnstart
.LFB1313:
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
	bl	_ZNK2OT15HeadlessArrayOfINS_7IntTypeItLj2EEES2_E8get_sizeEv(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	cmp	r2, r3
	bcs	.L749
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L749
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	cmp	r2, r3
	bcs	.L750
.L749:
	ldr	r3, .L753
.LPIC148:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L753+4
.LPIC149:
	add	r3, pc
	mov	r1, r3
	mov	r2, #470
	ldr	r3, .L753+8
.LPIC150:
	add	r3, pc
	bl	__assert_fail(PLT)
.L750:
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	subs	r3, r2, r3
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_15HeadlessArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_j(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L751
	movs	r3, #0
	b	.L752
.L751:
	ldr	r3, [r7]
.L752:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L754:
	.align	2
.L753:
	.word	.LC9-(.LPIC148+4)
	.word	.LC8-(.LPIC149+4)
	.word	_ZZN2OT22hb_serialize_context_t6extendINS_15HeadlessArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_E19__PRETTY_FUNCTION__-(.LPIC150+4)
	.fnend
	.size	_ZN2OT22hb_serialize_context_t6extendINS_15HeadlessArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_, .-_ZN2OT22hb_serialize_context_t6extendINS_15HeadlessArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_
	.section	.text._ZN2OT22hb_serialize_context_t13allocate_sizeINS_11LigatureSetEEEPT_j,"axG",%progbits,_ZN2OT22hb_serialize_context_t13allocate_sizeINS_11LigatureSetEEEPT_j,comdat
	.align	2
	.weak	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_11LigatureSetEEEPT_j
	.thumb
	.thumb_func
	.type	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_11LigatureSetEEEPT_j, %function
_ZN2OT22hb_serialize_context_t13allocate_sizeINS_11LigatureSetEEEPT_j:
	.fnstart
.LFB1316:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L756
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	subs	r2, r2, r3
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L757
.L756:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #16]
	movs	r3, #0
	b	.L758
.L757:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mov	r0, r3
	movs	r1, #0
	ldr	r2, [r7]
	bl	memset(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
.L758:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_11LigatureSetEEEPT_j, .-_ZN2OT22hb_serialize_context_t13allocate_sizeINS_11LigatureSetEEEPT_j
	.section	.text._ZN2OT22hb_serialize_context_t10extend_minINS_7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES6_EEEEPT_RS9_,"axG",%progbits,_ZN2OT22hb_serialize_context_t10extend_minINS_7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES6_EEEEPT_RS9_,comdat
	.align	2
	.weak	_ZN2OT22hb_serialize_context_t10extend_minINS_7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES6_EEEEPT_RS9_
	.thumb
	.thumb_func
	.type	_ZN2OT22hb_serialize_context_t10extend_minINS_7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES6_EEEEPT_RS9_, %function
_ZN2OT22hb_serialize_context_t10extend_minINS_7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES6_EEEEPT_RS9_:
	.fnstart
.LFB1317:
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
	movs	r3, #2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	cmp	r2, r3
	bhi	.L760
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L760
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	cmp	r2, r3
	bcs	.L761
.L760:
	ldr	r3, .L764
.LPIC151:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L764+4
.LPIC152:
	add	r3, pc
	mov	r1, r3
	movw	r2, #461
	ldr	r3, .L764+8
.LPIC153:
	add	r3, pc
	bl	__assert_fail(PLT)
.L761:
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	subs	r3, r2, r3
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES6_EEEEPT_j(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L762
	movs	r3, #0
	b	.L763
.L762:
	ldr	r3, [r7]
.L763:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L765:
	.align	2
.L764:
	.word	.LC7-(.LPIC151+4)
	.word	.LC8-(.LPIC152+4)
	.word	_ZZN2OT22hb_serialize_context_t10extend_minINS_7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES6_EEEEPT_RS9_E19__PRETTY_FUNCTION__-(.LPIC153+4)
	.fnend
	.size	_ZN2OT22hb_serialize_context_t10extend_minINS_7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES6_EEEEPT_RS9_, .-_ZN2OT22hb_serialize_context_t10extend_minINS_7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES6_EEEEPT_RS9_
	.section	.text._ZN2OT22hb_serialize_context_t6extendINS_7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES6_EEEEPT_RS9_,"axG",%progbits,_ZN2OT22hb_serialize_context_t6extendINS_7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES6_EEEEPT_RS9_,comdat
	.align	2
	.weak	_ZN2OT22hb_serialize_context_t6extendINS_7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES6_EEEEPT_RS9_
	.thumb
	.thumb_func
	.type	_ZN2OT22hb_serialize_context_t6extendINS_7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES6_EEEEPT_RS9_, %function
_ZN2OT22hb_serialize_context_t6extendINS_7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES6_EEEEPT_RS9_:
	.fnstart
.LFB1318:
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
	bl	_ZNK2OT7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES4_E8get_sizeEv(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	cmp	r2, r3
	bcs	.L767
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L767
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	cmp	r2, r3
	bcs	.L768
.L767:
	ldr	r3, .L771
.LPIC154:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L771+4
.LPIC155:
	add	r3, pc
	mov	r1, r3
	mov	r2, #470
	ldr	r3, .L771+8
.LPIC156:
	add	r3, pc
	bl	__assert_fail(PLT)
.L768:
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	subs	r3, r2, r3
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES6_EEEEPT_j(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L769
	movs	r3, #0
	b	.L770
.L769:
	ldr	r3, [r7]
.L770:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L772:
	.align	2
.L771:
	.word	.LC9-(.LPIC154+4)
	.word	.LC8-(.LPIC155+4)
	.word	_ZZN2OT22hb_serialize_context_t6extendINS_7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES6_EEEEPT_RS9_E19__PRETTY_FUNCTION__-(.LPIC156+4)
	.fnend
	.size	_ZN2OT22hb_serialize_context_t6extendINS_7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES6_EEEEPT_RS9_, .-_ZN2OT22hb_serialize_context_t6extendINS_7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES6_EEEEPT_RS9_
	.section	.text._ZN2OT22hb_serialize_context_t11start_embedINS_8LigatureEEEPT_v,"axG",%progbits,_ZN2OT22hb_serialize_context_t11start_embedINS_8LigatureEEEPT_v,comdat
	.align	2
	.weak	_ZN2OT22hb_serialize_context_t11start_embedINS_8LigatureEEEPT_v
	.thumb
	.thumb_func
	.type	_ZN2OT22hb_serialize_context_t11start_embedINS_8LigatureEEEPT_v, %function
_ZN2OT22hb_serialize_context_t11start_embedINS_8LigatureEEEPT_v:
	.fnstart
.LFB1319:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN2OT22hb_serialize_context_t11start_embedINS_8LigatureEEEPT_v, .-_ZN2OT22hb_serialize_context_t11start_embedINS_8LigatureEEEPT_v
	.section	.text._ZN2OT22hb_serialize_context_t13allocate_sizeINS_20LigatureSubstFormat1EEEPT_j,"axG",%progbits,_ZN2OT22hb_serialize_context_t13allocate_sizeINS_20LigatureSubstFormat1EEEPT_j,comdat
	.align	2
	.weak	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_20LigatureSubstFormat1EEEPT_j
	.thumb
	.thumb_func
	.type	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_20LigatureSubstFormat1EEEPT_j, %function
_ZN2OT22hb_serialize_context_t13allocate_sizeINS_20LigatureSubstFormat1EEEPT_j:
	.fnstart
.LFB1324:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L776
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	subs	r2, r2, r3
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L777
.L776:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #16]
	movs	r3, #0
	b	.L778
.L777:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mov	r0, r3
	movs	r1, #0
	ldr	r2, [r7]
	bl	memset(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
.L778:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_20LigatureSubstFormat1EEEPT_j, .-_ZN2OT22hb_serialize_context_t13allocate_sizeINS_20LigatureSubstFormat1EEEPT_j
	.section	.text._ZN2OT22hb_serialize_context_t10extend_minINS_7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES6_EEEEPT_RS9_,"axG",%progbits,_ZN2OT22hb_serialize_context_t10extend_minINS_7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES6_EEEEPT_RS9_,comdat
	.align	2
	.weak	_ZN2OT22hb_serialize_context_t10extend_minINS_7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES6_EEEEPT_RS9_
	.thumb
	.thumb_func
	.type	_ZN2OT22hb_serialize_context_t10extend_minINS_7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES6_EEEEPT_RS9_, %function
_ZN2OT22hb_serialize_context_t10extend_minINS_7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES6_EEEEPT_RS9_:
	.fnstart
.LFB1325:
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
	movs	r3, #2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	cmp	r2, r3
	bhi	.L780
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L780
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	cmp	r2, r3
	bcs	.L781
.L780:
	ldr	r3, .L784
.LPIC157:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L784+4
.LPIC158:
	add	r3, pc
	mov	r1, r3
	movw	r2, #461
	ldr	r3, .L784+8
.LPIC159:
	add	r3, pc
	bl	__assert_fail(PLT)
.L781:
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	subs	r3, r2, r3
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES6_EEEEPT_j(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L782
	movs	r3, #0
	b	.L783
.L782:
	ldr	r3, [r7]
.L783:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L785:
	.align	2
.L784:
	.word	.LC7-(.LPIC157+4)
	.word	.LC8-(.LPIC158+4)
	.word	_ZZN2OT22hb_serialize_context_t10extend_minINS_7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES6_EEEEPT_RS9_E19__PRETTY_FUNCTION__-(.LPIC159+4)
	.fnend
	.size	_ZN2OT22hb_serialize_context_t10extend_minINS_7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES6_EEEEPT_RS9_, .-_ZN2OT22hb_serialize_context_t10extend_minINS_7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES6_EEEEPT_RS9_
	.section	.text._ZN2OT22hb_serialize_context_t6extendINS_7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES6_EEEEPT_RS9_,"axG",%progbits,_ZN2OT22hb_serialize_context_t6extendINS_7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES6_EEEEPT_RS9_,comdat
	.align	2
	.weak	_ZN2OT22hb_serialize_context_t6extendINS_7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES6_EEEEPT_RS9_
	.thumb
	.thumb_func
	.type	_ZN2OT22hb_serialize_context_t6extendINS_7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES6_EEEEPT_RS9_, %function
_ZN2OT22hb_serialize_context_t6extendINS_7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES6_EEEEPT_RS9_:
	.fnstart
.LFB1326:
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
	bl	_ZNK2OT7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES4_E8get_sizeEv(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	cmp	r2, r3
	bcs	.L787
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L787
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	cmp	r2, r3
	bcs	.L788
.L787:
	ldr	r3, .L791
.LPIC160:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L791+4
.LPIC161:
	add	r3, pc
	mov	r1, r3
	mov	r2, #470
	ldr	r3, .L791+8
.LPIC162:
	add	r3, pc
	bl	__assert_fail(PLT)
.L788:
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	subs	r3, r2, r3
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES6_EEEEPT_j(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L789
	movs	r3, #0
	b	.L790
.L789:
	ldr	r3, [r7]
.L790:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L792:
	.align	2
.L791:
	.word	.LC9-(.LPIC160+4)
	.word	.LC8-(.LPIC161+4)
	.word	_ZZN2OT22hb_serialize_context_t6extendINS_7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES6_EEEEPT_RS9_E19__PRETTY_FUNCTION__-(.LPIC162+4)
	.fnend
	.size	_ZN2OT22hb_serialize_context_t6extendINS_7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES6_EEEEPT_RS9_, .-_ZN2OT22hb_serialize_context_t6extendINS_7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES6_EEEEPT_RS9_
	.section	.text._ZN2OT22hb_serialize_context_t11start_embedINS_11LigatureSetEEEPT_v,"axG",%progbits,_ZN2OT22hb_serialize_context_t11start_embedINS_11LigatureSetEEEPT_v,comdat
	.align	2
	.weak	_ZN2OT22hb_serialize_context_t11start_embedINS_11LigatureSetEEEPT_v
	.thumb
	.thumb_func
	.type	_ZN2OT22hb_serialize_context_t11start_embedINS_11LigatureSetEEEPT_v, %function
_ZN2OT22hb_serialize_context_t11start_embedINS_11LigatureSetEEEPT_v:
	.fnstart
.LFB1327:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN2OT22hb_serialize_context_t11start_embedINS_11LigatureSetEEEPT_v, .-_ZN2OT22hb_serialize_context_t11start_embedINS_11LigatureSetEEEPT_v
	.section	.text._ZNK2OT9ExtensionINS_14ExtensionSubstEE10get_offsetEv,"axG",%progbits,_ZNK2OT9ExtensionINS_14ExtensionSubstEE10get_offsetEv,comdat
	.align	2
	.weak	_ZNK2OT9ExtensionINS_14ExtensionSubstEE10get_offsetEv
	.thumb
	.thumb_func
	.type	_ZNK2OT9ExtensionINS_14ExtensionSubstEE10get_offsetEv, %function
_ZNK2OT9ExtensionINS_14ExtensionSubstEE10get_offsetEv:
	.fnstart
.LFB1331:
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
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	cmp	r3, #1
	bne	.L799
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZNK2OT16ExtensionFormat110get_offsetEv(PLT)
	mov	r3, r0
	b	.L798
.L799:
	movs	r3, #0
.L798:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT9ExtensionINS_14ExtensionSubstEE10get_offsetEv, .-_ZNK2OT9ExtensionINS_14ExtensionSubstEE10get_offsetEv
	.section	.text._ZN2OTL4NullINS_8OffsetToINS_19SubstLookupSubTableENS_7IntTypeItLj2EEEEEEERKT_v,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL4NullINS_8OffsetToINS_19SubstLookupSubTableENS_7IntTypeItLj2EEEEEEERKT_v, %function
_ZN2OTL4NullINS_8OffsetToINS_19SubstLookupSubTableENS_7IntTypeItLj2EEEEEEERKT_v:
	.fnstart
.LFB1333:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r3, .L802
.LPIC163:
	add	r3, pc
	mov	r0, r3
	bl	_ZN2OTL5CastPINS_8OffsetToINS_19SubstLookupSubTableENS_7IntTypeItLj2EEEEEPKvEEPT_PT0_(PLT)
	mov	r3, r0
	mov	r0, r3
	pop	{r7, pc}
.L803:
	.align	2
.L802:
	.word	_ZN2OTL9_NullPoolE-(.LPIC163+4)
	.cantunwind
	.fnend
	.size	_ZN2OTL4NullINS_8OffsetToINS_19SubstLookupSubTableENS_7IntTypeItLj2EEEEEEERKT_v, .-_ZN2OTL4NullINS_8OffsetToINS_19SubstLookupSubTableENS_7IntTypeItLj2EEEEEEERKT_v
	.section	.text._ZNK2OT8OffsetToINS_19SubstLookupSubTableENS_7IntTypeItLj2EEEEclEPKv,"axG",%progbits,_ZNK2OT8OffsetToINS_19SubstLookupSubTableENS_7IntTypeItLj2EEEEclEPKv,comdat
	.align	2
	.weak	_ZNK2OT8OffsetToINS_19SubstLookupSubTableENS_7IntTypeItLj2EEEEclEPKv
	.thumb
	.thumb_func
	.type	_ZNK2OT8OffsetToINS_19SubstLookupSubTableENS_7IntTypeItLj2EEEEclEPKv, %function
_ZNK2OT8OffsetToINS_19SubstLookupSubTableENS_7IntTypeItLj2EEEEclEPKv:
	.fnstart
.LFB1334:
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
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L805
	bl	_ZN2OTL4NullINS_19SubstLookupSubTableEEERKT_v(PLT)
	mov	r3, r0
	b	.L806
.L805:
	ldr	r0, [r7]
	ldr	r1, [r7, #12]
	bl	_ZN2OTL14StructAtOffsetINS_19SubstLookupSubTableEEERKT_PKvj(PLT)
	mov	r3, r0
.L806:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT8OffsetToINS_19SubstLookupSubTableENS_7IntTypeItLj2EEEEclEPKv, .-_ZNK2OT8OffsetToINS_19SubstLookupSubTableENS_7IntTypeItLj2EEEEclEPKv
	.section	.text._ZN2OT22hb_serialize_context_t11start_embedINS_19SubstLookupSubTableEEEPT_v,"axG",%progbits,_ZN2OT22hb_serialize_context_t11start_embedINS_19SubstLookupSubTableEEEPT_v,comdat
	.align	2
	.weak	_ZN2OT22hb_serialize_context_t11start_embedINS_19SubstLookupSubTableEEEPT_v
	.thumb
	.thumb_func
	.type	_ZN2OT22hb_serialize_context_t11start_embedINS_19SubstLookupSubTableEEEPT_v, %function
_ZN2OT22hb_serialize_context_t11start_embedINS_19SubstLookupSubTableEEEPT_v:
	.fnstart
.LFB1341:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN2OT22hb_serialize_context_t11start_embedINS_19SubstLookupSubTableEEEPT_v, .-_ZN2OT22hb_serialize_context_t11start_embedINS_19SubstLookupSubTableEEEPT_v
	.section	.text._ZN2OTL4NullINS_19SubstLookupSubTableEEERKT_v,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL4NullINS_19SubstLookupSubTableEEERKT_v, %function
_ZN2OTL4NullINS_19SubstLookupSubTableEEERKT_v:
	.fnstart
.LFB1348:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r3, .L811
.LPIC164:
	add	r3, pc
	mov	r0, r3
	bl	_ZN2OTL5CastPINS_19SubstLookupSubTableEPKvEEPT_PT0_(PLT)
	mov	r3, r0
	mov	r0, r3
	pop	{r7, pc}
.L812:
	.align	2
.L811:
	.word	_ZN2OTL9_NullPoolE-(.LPIC164+4)
	.cantunwind
	.fnend
	.size	_ZN2OTL4NullINS_19SubstLookupSubTableEEERKT_v, .-_ZN2OTL4NullINS_19SubstLookupSubTableEEERKT_v
	.section	.text._ZN2OTL14StructAtOffsetINS_19SubstLookupSubTableEEERKT_PKvj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL14StructAtOffsetINS_19SubstLookupSubTableEEERKT_PKvj, %function
_ZN2OTL14StructAtOffsetINS_19SubstLookupSubTableEEERKT_PKvj:
	.fnstart
.LFB1349:
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
	add	r3, r3, r2
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN2OTL14StructAtOffsetINS_19SubstLookupSubTableEEERKT_PKvj, .-_ZN2OTL14StructAtOffsetINS_19SubstLookupSubTableEEERKT_PKvj
	.section	.text._ZNK2OT7IntTypeItLj2EE3cmpES1_,"axG",%progbits,_ZNK2OT7IntTypeItLj2EE3cmpES1_,comdat
	.align	2
	.weak	_ZNK2OT7IntTypeItLj2EE3cmpES1_
	.thumb
	.thumb_func
	.type	_ZNK2OT7IntTypeItLj2EE3cmpES1_, %function
_ZNK2OT7IntTypeItLj2EE3cmpES1_:
	.fnstart
.LFB1350:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	strh	r1, [r7]	@ movhi
	mov	r3, r7
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZNK2OT5BEIntItLi2EEcvtEv(PLT)
	mov	r3, r0
	strh	r3, [r7, #12]	@ movhi
	ldrh	r2, [r7, #14]
	ldrh	r3, [r7, #12]
	cmp	r2, r3
	bcc	.L816
	ldrh	r2, [r7, #14]
	ldrh	r3, [r7, #12]
	cmp	r2, r3
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	b	.L817
.L816:
	mov	r3, #-1
.L817:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT7IntTypeItLj2EE3cmpES1_, .-_ZNK2OT7IntTypeItLj2EE3cmpES1_
	.section	.text._ZN2OT22hb_serialize_context_t11start_embedINS_11SubstLookupEEEPT_v,"axG",%progbits,_ZN2OT22hb_serialize_context_t11start_embedINS_11SubstLookupEEEPT_v,comdat
	.align	2
	.weak	_ZN2OT22hb_serialize_context_t11start_embedINS_11SubstLookupEEEPT_v
	.thumb
	.thumb_func
	.type	_ZN2OT22hb_serialize_context_t11start_embedINS_11SubstLookupEEEPT_v, %function
_ZN2OT22hb_serialize_context_t11start_embedINS_11SubstLookupEEEPT_v:
	.fnstart
.LFB1351:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN2OT22hb_serialize_context_t11start_embedINS_11SubstLookupEEEPT_v, .-_ZN2OT22hb_serialize_context_t11start_embedINS_11SubstLookupEEEPT_v
	.section	.text._ZN24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES_IS0_ImLj0EES0_ImLj9EEEE4initEv,"axG",%progbits,_ZN24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES_IS0_ImLj0EES0_ImLj9EEEE4initEv,comdat
	.align	2
	.weak	_ZN24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES_IS0_ImLj0EES0_ImLj9EEEE4initEv
	.thumb
	.thumb_func
	.type	_ZN24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES_IS0_ImLj0EES0_ImLj9EEEE4initEv, %function
_ZN24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES_IS0_ImLj0EES0_ImLj9EEEE4initEv:
	.fnstart
.LFB1352:
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
	bl	_ZN27hb_set_digest_lowest_bits_tImLj4EE4initEv(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZN24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj0EES0_ImLj9EEE4initEv(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES_IS0_ImLj0EES0_ImLj9EEEE4initEv, .-_ZN24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES_IS0_ImLj0EES0_ImLj9EEEE4initEv
	.section	.text._ZNK2OT11SubstLookup12add_coverageI24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES2_IS3_ImLj0EES3_ImLj9EEEEEEvPT_,"axG",%progbits,_ZNK2OT11SubstLookup12add_coverageI24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES2_IS3_ImLj0EES3_ImLj9EEEEEEvPT_,comdat
	.align	2
	.weak	_ZNK2OT11SubstLookup12add_coverageI24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES2_IS3_ImLj0EES3_ImLj9EEEEEEvPT_
	.thumb
	.thumb_func
	.type	_ZNK2OT11SubstLookup12add_coverageI24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES2_IS3_ImLj0EES3_ImLj9EEEEEEvPT_, %function
_ZNK2OT11SubstLookup12add_coverageI24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES2_IS3_ImLj0EES3_ImLj9EEEEEEvPT_:
	.fnstart
.LFB1353:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #36
	sub	sp, sp, #36
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN2OT25hb_get_coverage_context_tC1Ev(PLT)
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZNK2OT6Lookup18get_subtable_countEv(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #24]
	b	.L823
.L825:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #24]
	bl	_ZNK2OT11SubstLookup12get_subtableEj(PLT)
	mov	r4, r0
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZNK2OT6Lookup8get_typeEv(PLT)
	mov	r3, r0
	add	r2, r7, #12
	mov	r0, r4
	mov	r1, r2
	mov	r2, r3
	bl	_ZNK2OT19SubstLookupSubTable8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_j(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	beq	.L824
	ldr	r0, [r7, #16]
	ldr	r1, [r7]
	bl	_ZNK2OT8Coverage12add_coverageI24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES2_IS3_ImLj0EES3_ImLj9EEEEEEvPT_(PLT)
	ldr	r3, [r7, #16]
	str	r3, [r7, #28]
.L824:
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
.L823:
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcc	.L825
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZNK2OT11SubstLookup12add_coverageI24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES2_IS3_ImLj0EES3_ImLj9EEEEEEvPT_, .-_ZNK2OT11SubstLookup12add_coverageI24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES2_IS3_ImLj0EES3_ImLj9EEEEEEvPT_
	.section	.text._ZN2OT22hb_serialize_context_t13allocate_sizeINS_7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES5_EEEEPT_j,"axG",%progbits,_ZN2OT22hb_serialize_context_t13allocate_sizeINS_7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES5_EEEEPT_j,comdat
	.align	2
	.weak	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES5_EEEEPT_j
	.thumb
	.thumb_func
	.type	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES5_EEEEPT_j, %function
_ZN2OT22hb_serialize_context_t13allocate_sizeINS_7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES5_EEEEPT_j:
	.fnstart
.LFB1368:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L827
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	subs	r2, r2, r3
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L828
.L827:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #16]
	movs	r3, #0
	b	.L829
.L828:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mov	r0, r3
	movs	r1, #0
	ldr	r2, [r7]
	bl	memset(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
.L829:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES5_EEEEPT_j, .-_ZN2OT22hb_serialize_context_t13allocate_sizeINS_7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES5_EEEEPT_j
	.section	.text._ZN2OTL5CastPINS_7IntTypeItLj2EEEPKvEEPT_PT0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL5CastPINS_7IntTypeItLj2EEEPKvEEPT_PT0_, %function
_ZN2OTL5CastPINS_7IntTypeItLj2EEEPKvEEPT_PT0_:
	.fnstart
.LFB1372:
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
	.size	_ZN2OTL5CastPINS_7IntTypeItLj2EEEPKvEEPT_PT0_, .-_ZN2OTL5CastPINS_7IntTypeItLj2EEEPKvEEPT_PT0_
	.section	.text._ZN2OTL14StructAtOffsetINS_8CoverageEEERKT_PKvj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL14StructAtOffsetINS_8CoverageEEERKT_PKvj, %function
_ZN2OTL14StructAtOffsetINS_8CoverageEEERKT_PKvj:
	.fnstart
.LFB1374:
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
	add	r3, r3, r2
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN2OTL14StructAtOffsetINS_8CoverageEEERKT_PKvj, .-_ZN2OTL14StructAtOffsetINS_8CoverageEEERKT_PKvj
	.section	.text._ZN2OTL5CastPINS_8OffsetToINS_8CoverageENS_7IntTypeItLj2EEEEEPKvEEPT_PT0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL5CastPINS_8OffsetToINS_8CoverageENS_7IntTypeItLj2EEEEEPKvEEPT_PT0_, %function
_ZN2OTL5CastPINS_8OffsetToINS_8CoverageENS_7IntTypeItLj2EEEEEPKvEEPT_PT0_:
	.fnstart
.LFB1444:
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
	.size	_ZN2OTL5CastPINS_8OffsetToINS_8CoverageENS_7IntTypeItLj2EEEEEPKvEEPT_PT0_, .-_ZN2OTL5CastPINS_8OffsetToINS_8CoverageENS_7IntTypeItLj2EEEEEPKvEEPT_PT0_
	.section	.text._ZN2OT22hb_serialize_context_t10extend_minINS_7ArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_,"axG",%progbits,_ZN2OT22hb_serialize_context_t10extend_minINS_7ArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_,comdat
	.align	2
	.weak	_ZN2OT22hb_serialize_context_t10extend_minINS_7ArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_
	.thumb
	.thumb_func
	.type	_ZN2OT22hb_serialize_context_t10extend_minINS_7ArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_, %function
_ZN2OT22hb_serialize_context_t10extend_minINS_7ArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_:
	.fnstart
.LFB1466:
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
	movs	r3, #2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	cmp	r2, r3
	bhi	.L837
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L837
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	cmp	r2, r3
	bcs	.L838
.L837:
	ldr	r3, .L841
.LPIC165:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L841+4
.LPIC166:
	add	r3, pc
	mov	r1, r3
	movw	r2, #461
	ldr	r3, .L841+8
.LPIC167:
	add	r3, pc
	bl	__assert_fail(PLT)
.L838:
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	subs	r3, r2, r3
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_7ArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_j(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L839
	movs	r3, #0
	b	.L840
.L839:
	ldr	r3, [r7]
.L840:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L842:
	.align	2
.L841:
	.word	.LC7-(.LPIC165+4)
	.word	.LC8-(.LPIC166+4)
	.word	_ZZN2OT22hb_serialize_context_t10extend_minINS_7ArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_E19__PRETTY_FUNCTION__-(.LPIC167+4)
	.fnend
	.size	_ZN2OT22hb_serialize_context_t10extend_minINS_7ArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_, .-_ZN2OT22hb_serialize_context_t10extend_minINS_7ArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_
	.section	.text._ZN2OT22hb_serialize_context_t6extendINS_7ArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_,"axG",%progbits,_ZN2OT22hb_serialize_context_t6extendINS_7ArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_,comdat
	.align	2
	.weak	_ZN2OT22hb_serialize_context_t6extendINS_7ArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_
	.thumb
	.thumb_func
	.type	_ZN2OT22hb_serialize_context_t6extendINS_7ArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_, %function
_ZN2OT22hb_serialize_context_t6extendINS_7ArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_:
	.fnstart
.LFB1467:
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
	bl	_ZNK2OT7ArrayOfINS_7IntTypeItLj2EEES2_E8get_sizeEv(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	cmp	r2, r3
	bcs	.L844
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L844
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	cmp	r2, r3
	bcs	.L845
.L844:
	ldr	r3, .L848
.LPIC168:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L848+4
.LPIC169:
	add	r3, pc
	mov	r1, r3
	mov	r2, #470
	ldr	r3, .L848+8
.LPIC170:
	add	r3, pc
	bl	__assert_fail(PLT)
.L845:
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	subs	r3, r2, r3
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_7ArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_j(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L846
	movs	r3, #0
	b	.L847
.L846:
	ldr	r3, [r7]
.L847:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L849:
	.align	2
.L848:
	.word	.LC9-(.LPIC168+4)
	.word	.LC8-(.LPIC169+4)
	.word	_ZZN2OT22hb_serialize_context_t6extendINS_7ArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_E19__PRETTY_FUNCTION__-(.LPIC170+4)
	.fnend
	.size	_ZN2OT22hb_serialize_context_t6extendINS_7ArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_, .-_ZN2OT22hb_serialize_context_t6extendINS_7ArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_
	.section	.text._ZN2OT22hb_serialize_context_t13allocate_sizeINS_15HeadlessArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_j,"axG",%progbits,_ZN2OT22hb_serialize_context_t13allocate_sizeINS_15HeadlessArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_j,comdat
	.align	2
	.weak	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_15HeadlessArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_j
	.thumb
	.thumb_func
	.type	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_15HeadlessArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_j, %function
_ZN2OT22hb_serialize_context_t13allocate_sizeINS_15HeadlessArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_j:
	.fnstart
.LFB1479:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L851
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	subs	r2, r2, r3
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L852
.L851:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #16]
	movs	r3, #0
	b	.L853
.L852:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mov	r0, r3
	movs	r1, #0
	ldr	r2, [r7]
	bl	memset(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
.L853:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_15HeadlessArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_j, .-_ZN2OT22hb_serialize_context_t13allocate_sizeINS_15HeadlessArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_j
	.section	.text._ZN2OT22hb_serialize_context_t13allocate_sizeINS_7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES6_EEEEPT_j,"axG",%progbits,_ZN2OT22hb_serialize_context_t13allocate_sizeINS_7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES6_EEEEPT_j,comdat
	.align	2
	.weak	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES6_EEEEPT_j
	.thumb
	.thumb_func
	.type	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES6_EEEEPT_j, %function
_ZN2OT22hb_serialize_context_t13allocate_sizeINS_7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES6_EEEEPT_j:
	.fnstart
.LFB1483:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L855
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	subs	r2, r2, r3
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L856
.L855:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #16]
	movs	r3, #0
	b	.L857
.L856:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mov	r0, r3
	movs	r1, #0
	ldr	r2, [r7]
	bl	memset(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
.L857:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES6_EEEEPT_j, .-_ZN2OT22hb_serialize_context_t13allocate_sizeINS_7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES6_EEEEPT_j
	.section	.text._ZNK2OT7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES4_E8get_sizeEv,"axG",%progbits,_ZNK2OT7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES4_E8get_sizeEv,comdat
	.align	2
	.weak	_ZNK2OT7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES4_E8get_sizeEv
	.thumb
	.thumb_func
	.type	_ZNK2OT7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES4_E8get_sizeEv, %function
_ZNK2OT7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES4_E8get_sizeEv:
	.fnstart
.LFB1484:
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
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	adds	r3, r3, #1
	lsls	r3, r3, #1
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES4_E8get_sizeEv, .-_ZNK2OT7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES4_E8get_sizeEv
	.section	.text._ZN2OT22hb_serialize_context_t13allocate_sizeINS_7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES6_EEEEPT_j,"axG",%progbits,_ZN2OT22hb_serialize_context_t13allocate_sizeINS_7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES6_EEEEPT_j,comdat
	.align	2
	.weak	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES6_EEEEPT_j
	.thumb
	.thumb_func
	.type	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES6_EEEEPT_j, %function
_ZN2OT22hb_serialize_context_t13allocate_sizeINS_7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES6_EEEEPT_j:
	.fnstart
.LFB1492:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L861
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	subs	r2, r2, r3
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L862
.L861:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #16]
	movs	r3, #0
	b	.L863
.L862:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mov	r0, r3
	movs	r1, #0
	ldr	r2, [r7]
	bl	memset(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
.L863:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES6_EEEEPT_j, .-_ZN2OT22hb_serialize_context_t13allocate_sizeINS_7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES6_EEEEPT_j
	.section	.text._ZNK2OT7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES4_E8get_sizeEv,"axG",%progbits,_ZNK2OT7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES4_E8get_sizeEv,comdat
	.align	2
	.weak	_ZNK2OT7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES4_E8get_sizeEv
	.thumb
	.thumb_func
	.type	_ZNK2OT7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES4_E8get_sizeEv, %function
_ZNK2OT7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES4_E8get_sizeEv:
	.fnstart
.LFB1493:
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
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	adds	r3, r3, #1
	lsls	r3, r3, #1
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES4_E8get_sizeEv, .-_ZNK2OT7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES4_E8get_sizeEv
	.section	.text._ZN2OTL5CastPINS_8OffsetToINS_19SubstLookupSubTableENS_7IntTypeItLj2EEEEEPKvEEPT_PT0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL5CastPINS_8OffsetToINS_19SubstLookupSubTableENS_7IntTypeItLj2EEEEEPKvEEPT_PT0_, %function
_ZN2OTL5CastPINS_8OffsetToINS_19SubstLookupSubTableENS_7IntTypeItLj2EEEEEPKvEEPT_PT0_:
	.fnstart
.LFB1498:
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
	.size	_ZN2OTL5CastPINS_8OffsetToINS_19SubstLookupSubTableENS_7IntTypeItLj2EEEEEPKvEEPT_PT0_, .-_ZN2OTL5CastPINS_8OffsetToINS_19SubstLookupSubTableENS_7IntTypeItLj2EEEEEPKvEEPT_PT0_
	.section	.text._ZN27hb_set_digest_lowest_bits_tImLj4EE8mask_forEj,"axG",%progbits,_ZN27hb_set_digest_lowest_bits_tImLj4EE8mask_forEj,comdat
	.align	2
	.weak	_ZN27hb_set_digest_lowest_bits_tImLj4EE8mask_forEj
	.thumb
	.thumb_func
	.type	_ZN27hb_set_digest_lowest_bits_tImLj4EE8mask_forEj, %function
_ZN27hb_set_digest_lowest_bits_tImLj4EE8mask_forEj:
	.fnstart
.LFB1517:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	lsrs	r3, r3, #4
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
	.size	_ZN27hb_set_digest_lowest_bits_tImLj4EE8mask_forEj, .-_ZN27hb_set_digest_lowest_bits_tImLj4EE8mask_forEj
	.section	.text._ZN2OTL5CastPINS_19SubstLookupSubTableEPKvEEPT_PT0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL5CastPINS_19SubstLookupSubTableEPKvEEPT_PT0_, %function
_ZN2OTL5CastPINS_19SubstLookupSubTableEPKvEEPT_PT0_:
	.fnstart
.LFB1539:
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
	.size	_ZN2OTL5CastPINS_19SubstLookupSubTableEPKvEEPT_PT0_, .-_ZN2OTL5CastPINS_19SubstLookupSubTableEPKvEEPT_PT0_
	.section	.text._ZN27hb_set_digest_lowest_bits_tImLj4EE4initEv,"axG",%progbits,_ZN27hb_set_digest_lowest_bits_tImLj4EE4initEv,comdat
	.align	2
	.weak	_ZN27hb_set_digest_lowest_bits_tImLj4EE4initEv
	.thumb
	.thumb_func
	.type	_ZN27hb_set_digest_lowest_bits_tImLj4EE4initEv, %function
_ZN27hb_set_digest_lowest_bits_tImLj4EE4initEv:
	.fnstart
.LFB1540:
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
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN27hb_set_digest_lowest_bits_tImLj4EE4initEv, .-_ZN27hb_set_digest_lowest_bits_tImLj4EE4initEv
	.section	.text._ZN24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj0EES0_ImLj9EEE4initEv,"axG",%progbits,_ZN24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj0EES0_ImLj9EEE4initEv,comdat
	.align	2
	.weak	_ZN24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj0EES0_ImLj9EEE4initEv
	.thumb
	.thumb_func
	.type	_ZN24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj0EES0_ImLj9EEE4initEv, %function
_ZN24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj0EES0_ImLj9EEE4initEv:
	.fnstart
.LFB1541:
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
	bl	_ZN27hb_set_digest_lowest_bits_tImLj0EE4initEv(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZN27hb_set_digest_lowest_bits_tImLj9EE4initEv(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj0EES0_ImLj9EEE4initEv, .-_ZN24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj0EES0_ImLj9EEE4initEv
	.section	.rodata
	.align	2
.LC12:
	.ascii	"format %d\000"
	.section	.text._ZNK2OT19SubstLookupSubTable8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_j,"axG",%progbits,_ZNK2OT19SubstLookupSubTable8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_j,comdat
	.align	2
	.weak	_ZNK2OT19SubstLookupSubTable8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_j
	.thumb
	.thumb_func
	.type	_ZNK2OT19SubstLookupSubTable8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_j, %function
_ZNK2OT19SubstLookupSubTable8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_j:
	.fnstart
.LFB1542:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #44
	sub	sp, sp, #44
	.setfp r7, sp, #16
	add	r7, sp, #16
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r4, [r7, #8]
	ldr	r0, [r7, #8]
	bl	_ZN2OT25hb_get_coverage_context_t8get_nameEv(PLT)
	mov	r3, r0
	ldr	r1, [r7, #4]
	add	r2, r7, #20
	ldr	r0, .L887
.LPIC171:
	add	r0, pc
	str	r0, [sp]
	ldr	r0, .L887+4
.LPIC172:
	add	r0, pc
	str	r0, [sp, #4]
	str	r1, [sp, #8]
	mov	r0, r2
	mov	r1, r4
	mov	r2, r3
	ldr	r3, [r7, #12]
	bl	_ZN15hb_auto_trace_tILi0ERKN2OT8CoverageEEC1EPjPKcPKvS7_S7_z(PLT)
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	cmp	r3, #7
	bhi	.L875
	adr	r1, .L877
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L877:
	.word	.L876+1-.L877
	.word	.L878+1-.L877
	.word	.L879+1-.L877
	.word	.L880+1-.L877
	.word	.L881+1-.L877
	.word	.L882+1-.L877
	.word	.L883+1-.L877
	.word	.L884+1-.L877
.L876:
	ldr	r3, [r7, #12]
	mov	r0, r3
	ldr	r1, [r7, #8]
	bl	_ZNK2OT11SingleSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_(PLT)
	mov	r3, r0
	add	r2, r7, #20
	mov	r0, r2
	mov	r1, r3
	movw	r2, #1105
	bl	_ZN15hb_auto_trace_tILi0ERKN2OT8CoverageEE3retES3_j(PLT)
	mov	r3, r0
	b	.L886
.L878:
	ldr	r3, [r7, #12]
	mov	r0, r3
	ldr	r1, [r7, #8]
	bl	_ZNK2OT13MultipleSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_(PLT)
	mov	r3, r0
	add	r2, r7, #20
	mov	r0, r2
	mov	r1, r3
	movw	r2, #1106
	bl	_ZN15hb_auto_trace_tILi0ERKN2OT8CoverageEE3retES3_j(PLT)
	mov	r3, r0
	b	.L886
.L879:
	ldr	r3, [r7, #12]
	mov	r0, r3
	ldr	r1, [r7, #8]
	bl	_ZNK2OT14AlternateSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_(PLT)
	mov	r3, r0
	add	r2, r7, #20
	mov	r0, r2
	mov	r1, r3
	movw	r2, #1107
	bl	_ZN15hb_auto_trace_tILi0ERKN2OT8CoverageEE3retES3_j(PLT)
	mov	r3, r0
	b	.L886
.L880:
	ldr	r3, [r7, #12]
	mov	r0, r3
	ldr	r1, [r7, #8]
	bl	_ZNK2OT13LigatureSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_(PLT)
	mov	r3, r0
	add	r2, r7, #20
	mov	r0, r2
	mov	r1, r3
	movw	r2, #1108
	bl	_ZN15hb_auto_trace_tILi0ERKN2OT8CoverageEE3retES3_j(PLT)
	mov	r3, r0
	b	.L886
.L881:
	ldr	r3, [r7, #12]
	mov	r0, r3
	ldr	r1, [r7, #8]
	bl	_ZNK2OT7Context8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_(PLT)
	mov	r3, r0
	add	r2, r7, #20
	mov	r0, r2
	mov	r1, r3
	movw	r2, #1109
	bl	_ZN15hb_auto_trace_tILi0ERKN2OT8CoverageEE3retES3_j(PLT)
	mov	r3, r0
	b	.L886
.L882:
	ldr	r3, [r7, #12]
	mov	r0, r3
	ldr	r1, [r7, #8]
	bl	_ZNK2OT12ChainContext8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_(PLT)
	mov	r3, r0
	add	r2, r7, #20
	mov	r0, r2
	mov	r1, r3
	movw	r2, #1110
	bl	_ZN15hb_auto_trace_tILi0ERKN2OT8CoverageEE3retES3_j(PLT)
	mov	r3, r0
	b	.L886
.L883:
	ldr	r3, [r7, #12]
	mov	r0, r3
	ldr	r1, [r7, #8]
	bl	_ZNK2OT9ExtensionINS_14ExtensionSubstEE8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS5_(PLT)
	mov	r3, r0
	add	r2, r7, #20
	mov	r0, r2
	mov	r1, r3
	movw	r2, #1111
	bl	_ZN15hb_auto_trace_tILi0ERKN2OT8CoverageEE3retES3_j(PLT)
	mov	r3, r0
	b	.L886
.L884:
	ldr	r3, [r7, #12]
	mov	r0, r3
	ldr	r1, [r7, #8]
	bl	_ZNK2OT23ReverseChainSingleSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_(PLT)
	mov	r3, r0
	add	r2, r7, #20
	mov	r0, r2
	mov	r1, r3
	mov	r2, #1112
	bl	_ZN15hb_auto_trace_tILi0ERKN2OT8CoverageEE3retES3_j(PLT)
	mov	r3, r0
	b	.L886
.L875:
	bl	_ZN2OT25hb_get_coverage_context_t20default_return_valueEv(PLT)
	mov	r3, r0
	add	r2, r7, #20
	mov	r0, r2
	mov	r1, r3
	movw	r2, #1113
	bl	_ZN15hb_auto_trace_tILi0ERKN2OT8CoverageEE3retES3_j(PLT)
	mov	r3, r0
.L886:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L888:
	.align	2
.L887:
	.word	_ZZNK2OT19SubstLookupSubTable8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_jE19__PRETTY_FUNCTION__-(.LPIC171+4)
	.word	.LC12-(.LPIC172+4)
	.fnend
	.size	_ZNK2OT19SubstLookupSubTable8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_j, .-_ZNK2OT19SubstLookupSubTable8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_j
	.section	.text._ZNK2OT8Coverage12add_coverageI24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES2_IS3_ImLj0EES3_ImLj9EEEEEEvPT_,"axG",%progbits,_ZNK2OT8Coverage12add_coverageI24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES2_IS3_ImLj0EES3_ImLj9EEEEEEvPT_,comdat
	.align	2
	.weak	_ZNK2OT8Coverage12add_coverageI24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES2_IS3_ImLj0EES3_ImLj9EEEEEEvPT_
	.thumb
	.thumb_func
	.type	_ZNK2OT8Coverage12add_coverageI24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES2_IS3_ImLj0EES3_ImLj9EEEEEEvPT_, %function
_ZNK2OT8Coverage12add_coverageI24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES2_IS3_ImLj0EES3_ImLj9EEEEEEvPT_:
	.fnstart
.LFB1543:
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
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	cmp	r3, #1
	beq	.L891
	cmp	r3, #2
	beq	.L892
	b	.L889
.L891:
	ldr	r3, [r7, #4]
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZNK2OT15CoverageFormat112add_coverageI24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES2_IS3_ImLj0EES3_ImLj9EEEEEEvPT_(PLT)
	b	.L889
.L892:
	ldr	r3, [r7, #4]
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZNK2OT15CoverageFormat212add_coverageI24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES2_IS3_ImLj0EES3_ImLj9EEEEEEvPT_(PLT)
	nop
.L889:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT8Coverage12add_coverageI24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES2_IS3_ImLj0EES3_ImLj9EEEEEEvPT_, .-_ZNK2OT8Coverage12add_coverageI24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES2_IS3_ImLj0EES3_ImLj9EEEEEEvPT_
	.section	.text._ZN2OT22hb_serialize_context_t13allocate_sizeINS_7ArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_j,"axG",%progbits,_ZN2OT22hb_serialize_context_t13allocate_sizeINS_7ArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_j,comdat
	.align	2
	.weak	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_7ArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_j
	.thumb
	.thumb_func
	.type	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_7ArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_j, %function
_ZN2OT22hb_serialize_context_t13allocate_sizeINS_7ArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_j:
	.fnstart
.LFB1582:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L895
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	subs	r2, r2, r3
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L896
.L895:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #16]
	movs	r3, #0
	b	.L897
.L896:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mov	r0, r3
	movs	r1, #0
	ldr	r2, [r7]
	bl	memset(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
.L897:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN2OT22hb_serialize_context_t13allocate_sizeINS_7ArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_j, .-_ZN2OT22hb_serialize_context_t13allocate_sizeINS_7ArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_j
	.section	.text._ZN27hb_set_digest_lowest_bits_tImLj9EE8mask_forEj,"axG",%progbits,_ZN27hb_set_digest_lowest_bits_tImLj9EE8mask_forEj,comdat
	.align	2
	.weak	_ZN27hb_set_digest_lowest_bits_tImLj9EE8mask_forEj
	.thumb
	.thumb_func
	.type	_ZN27hb_set_digest_lowest_bits_tImLj9EE8mask_forEj, %function
_ZN27hb_set_digest_lowest_bits_tImLj9EE8mask_forEj:
	.fnstart
.LFB1613:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	lsrs	r3, r3, #9
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
	.size	_ZN27hb_set_digest_lowest_bits_tImLj9EE8mask_forEj, .-_ZN27hb_set_digest_lowest_bits_tImLj9EE8mask_forEj
	.section	.text._ZN27hb_set_digest_lowest_bits_tImLj0EE8mask_forEj,"axG",%progbits,_ZN27hb_set_digest_lowest_bits_tImLj0EE8mask_forEj,comdat
	.align	2
	.weak	_ZN27hb_set_digest_lowest_bits_tImLj0EE8mask_forEj
	.thumb
	.thumb_func
	.type	_ZN27hb_set_digest_lowest_bits_tImLj0EE8mask_forEj, %function
_ZN27hb_set_digest_lowest_bits_tImLj0EE8mask_forEj:
	.fnstart
.LFB1614:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
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
	.size	_ZN27hb_set_digest_lowest_bits_tImLj0EE8mask_forEj, .-_ZN27hb_set_digest_lowest_bits_tImLj0EE8mask_forEj
	.section	.text._ZN27hb_set_digest_lowest_bits_tImLj0EE4initEv,"axG",%progbits,_ZN27hb_set_digest_lowest_bits_tImLj0EE4initEv,comdat
	.align	2
	.weak	_ZN27hb_set_digest_lowest_bits_tImLj0EE4initEv
	.thumb
	.thumb_func
	.type	_ZN27hb_set_digest_lowest_bits_tImLj0EE4initEv, %function
_ZN27hb_set_digest_lowest_bits_tImLj0EE4initEv:
	.fnstart
.LFB1642:
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
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN27hb_set_digest_lowest_bits_tImLj0EE4initEv, .-_ZN27hb_set_digest_lowest_bits_tImLj0EE4initEv
	.section	.text._ZN27hb_set_digest_lowest_bits_tImLj9EE4initEv,"axG",%progbits,_ZN27hb_set_digest_lowest_bits_tImLj9EE4initEv,comdat
	.align	2
	.weak	_ZN27hb_set_digest_lowest_bits_tImLj9EE4initEv
	.thumb
	.thumb_func
	.type	_ZN27hb_set_digest_lowest_bits_tImLj9EE4initEv, %function
_ZN27hb_set_digest_lowest_bits_tImLj9EE4initEv:
	.fnstart
.LFB1643:
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
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN27hb_set_digest_lowest_bits_tImLj9EE4initEv, .-_ZN27hb_set_digest_lowest_bits_tImLj9EE4initEv
	.section	.text._ZN15hb_auto_trace_tILi0ERKN2OT8CoverageEEC2EPjPKcPKvS7_S7_z,"axG",%progbits,_ZN15hb_auto_trace_tILi0ERKN2OT8CoverageEEC5EPjPKcPKvS7_S7_z,comdat
	.align	2
	.weak	_ZN15hb_auto_trace_tILi0ERKN2OT8CoverageEEC2EPjPKcPKvS7_S7_z
	.thumb
	.thumb_func
	.type	_ZN15hb_auto_trace_tILi0ERKN2OT8CoverageEEC2EPjPKcPKvS7_S7_z, %function
_ZN15hb_auto_trace_tILi0ERKN2OT8CoverageEEC2EPjPKcPKvS7_S7_z:
	.fnstart
.LFB1645:
	@ args = 8, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 1
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN15hb_auto_trace_tILi0ERKN2OT8CoverageEEC2EPjPKcPKvS7_S7_z, .-_ZN15hb_auto_trace_tILi0ERKN2OT8CoverageEEC2EPjPKcPKvS7_S7_z
	.weak	_ZN15hb_auto_trace_tILi0ERKN2OT8CoverageEEC1EPjPKcPKvS7_S7_z
	.thumb_set _ZN15hb_auto_trace_tILi0ERKN2OT8CoverageEEC1EPjPKcPKvS7_S7_z,_ZN15hb_auto_trace_tILi0ERKN2OT8CoverageEEC2EPjPKcPKvS7_S7_z
	.section	.text._ZNK2OT11SingleSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_,"axG",%progbits,_ZNK2OT11SingleSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_,comdat
	.align	2
	.weak	_ZNK2OT11SingleSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_
	.thumb
	.thumb_func
	.type	_ZNK2OT11SingleSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_, %function
_ZNK2OT11SingleSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_:
	.fnstart
.LFB1647:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #32
	sub	sp, sp, #32
	.setfp r7, sp, #16
	add	r7, sp, #16
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r5, [r7]
	ldr	r0, [r7]
	bl	_ZN2OT25hb_get_coverage_context_t8get_nameEv(PLT)
	mov	r4, r0
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	mov	r2, r3
	add	r3, r7, #12
	ldr	r1, .L914
.LPIC173:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L914+4
.LPIC174:
	add	r1, pc
	str	r1, [sp, #4]
	str	r2, [sp, #8]
	mov	r0, r3
	mov	r1, r5
	mov	r2, r4
	ldr	r3, [r7, #4]
	bl	_ZN15hb_auto_trace_tILi0ERKN2OT8CoverageEEC1EPjPKcPKvS7_S7_z(PLT)
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	cmp	r3, #1
	beq	.L909
	cmp	r3, #2
	beq	.L910
	b	.L913
.L909:
	ldr	r3, [r7, #4]
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZN2OT25hb_get_coverage_context_t8dispatchINS_18SingleSubstFormat1EEERKNS_8CoverageERKT_(PLT)
	mov	r3, r0
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	movs	r2, #227
	bl	_ZN15hb_auto_trace_tILi0ERKN2OT8CoverageEE3retES3_j(PLT)
	mov	r3, r0
	b	.L912
.L910:
	ldr	r3, [r7, #4]
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZN2OT25hb_get_coverage_context_t8dispatchINS_18SingleSubstFormat2EEERKNS_8CoverageERKT_(PLT)
	mov	r3, r0
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	movs	r2, #228
	bl	_ZN15hb_auto_trace_tILi0ERKN2OT8CoverageEE3retES3_j(PLT)
	mov	r3, r0
	b	.L912
.L913:
	bl	_ZN2OT25hb_get_coverage_context_t20default_return_valueEv(PLT)
	mov	r3, r0
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	movs	r2, #229
	bl	_ZN15hb_auto_trace_tILi0ERKN2OT8CoverageEE3retES3_j(PLT)
	mov	r3, r0
.L912:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L915:
	.align	2
.L914:
	.word	_ZZNK2OT11SingleSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_E19__PRETTY_FUNCTION__-(.LPIC173+4)
	.word	.LC12-(.LPIC174+4)
	.fnend
	.size	_ZNK2OT11SingleSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_, .-_ZNK2OT11SingleSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_
	.section	.text._ZN15hb_auto_trace_tILi0ERKN2OT8CoverageEE3retES3_j,"axG",%progbits,_ZN15hb_auto_trace_tILi0ERKN2OT8CoverageEE3retES3_j,comdat
	.align	2
	.weak	_ZN15hb_auto_trace_tILi0ERKN2OT8CoverageEE3retES3_j
	.thumb
	.thumb_func
	.type	_ZN15hb_auto_trace_tILi0ERKN2OT8CoverageEE3retES3_j, %function
_ZN15hb_auto_trace_tILi0ERKN2OT8CoverageEE3retES3_j:
	.fnstart
.LFB1648:
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
	.size	_ZN15hb_auto_trace_tILi0ERKN2OT8CoverageEE3retES3_j, .-_ZN15hb_auto_trace_tILi0ERKN2OT8CoverageEE3retES3_j
	.section	.text._ZNK2OT13MultipleSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_,"axG",%progbits,_ZNK2OT13MultipleSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_,comdat
	.align	2
	.weak	_ZNK2OT13MultipleSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_
	.thumb
	.thumb_func
	.type	_ZNK2OT13MultipleSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_, %function
_ZNK2OT13MultipleSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_:
	.fnstart
.LFB1649:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #32
	sub	sp, sp, #32
	.setfp r7, sp, #16
	add	r7, sp, #16
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r5, [r7]
	ldr	r0, [r7]
	bl	_ZN2OT25hb_get_coverage_context_t8get_nameEv(PLT)
	mov	r4, r0
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	mov	r2, r3
	add	r3, r7, #12
	ldr	r1, .L924
.LPIC175:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L924+4
.LPIC176:
	add	r1, pc
	str	r1, [sp, #4]
	str	r2, [sp, #8]
	mov	r0, r3
	mov	r1, r5
	mov	r2, r4
	ldr	r3, [r7, #4]
	bl	_ZN15hb_auto_trace_tILi0ERKN2OT8CoverageEEC1EPjPKcPKvS7_S7_z(PLT)
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	cmp	r3, #1
	bne	.L923
	ldr	r3, [r7, #4]
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZN2OT25hb_get_coverage_context_t8dispatchINS_20MultipleSubstFormat1EEERKNS_8CoverageERKT_(PLT)
	mov	r3, r0
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	movw	r2, #427
	bl	_ZN15hb_auto_trace_tILi0ERKN2OT8CoverageEE3retES3_j(PLT)
	mov	r3, r0
	b	.L922
.L923:
	bl	_ZN2OT25hb_get_coverage_context_t20default_return_valueEv(PLT)
	mov	r3, r0
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	mov	r2, #428
	bl	_ZN15hb_auto_trace_tILi0ERKN2OT8CoverageEE3retES3_j(PLT)
	mov	r3, r0
.L922:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L925:
	.align	2
.L924:
	.word	_ZZNK2OT13MultipleSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_E19__PRETTY_FUNCTION__-(.LPIC175+4)
	.word	.LC12-(.LPIC176+4)
	.fnend
	.size	_ZNK2OT13MultipleSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_, .-_ZNK2OT13MultipleSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_
	.section	.text._ZNK2OT14AlternateSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_,"axG",%progbits,_ZNK2OT14AlternateSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_,comdat
	.align	2
	.weak	_ZNK2OT14AlternateSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_
	.thumb
	.thumb_func
	.type	_ZNK2OT14AlternateSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_, %function
_ZNK2OT14AlternateSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_:
	.fnstart
.LFB1650:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #32
	sub	sp, sp, #32
	.setfp r7, sp, #16
	add	r7, sp, #16
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r5, [r7]
	ldr	r0, [r7]
	bl	_ZN2OT25hb_get_coverage_context_t8get_nameEv(PLT)
	mov	r4, r0
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	mov	r2, r3
	add	r3, r7, #12
	ldr	r1, .L932
.LPIC177:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L932+4
.LPIC178:
	add	r1, pc
	str	r1, [sp, #4]
	str	r2, [sp, #8]
	mov	r0, r3
	mov	r1, r5
	mov	r2, r4
	ldr	r3, [r7, #4]
	bl	_ZN15hb_auto_trace_tILi0ERKN2OT8CoverageEEC1EPjPKcPKvS7_S7_z(PLT)
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	cmp	r3, #1
	bne	.L931
	ldr	r3, [r7, #4]
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZN2OT25hb_get_coverage_context_t8dispatchINS_21AlternateSubstFormat1EEERKNS_8CoverageERKT_(PLT)
	mov	r3, r0
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	movw	r2, #578
	bl	_ZN15hb_auto_trace_tILi0ERKN2OT8CoverageEE3retES3_j(PLT)
	mov	r3, r0
	b	.L930
.L931:
	bl	_ZN2OT25hb_get_coverage_context_t20default_return_valueEv(PLT)
	mov	r3, r0
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	movw	r2, #579
	bl	_ZN15hb_auto_trace_tILi0ERKN2OT8CoverageEE3retES3_j(PLT)
	mov	r3, r0
.L930:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L933:
	.align	2
.L932:
	.word	_ZZNK2OT14AlternateSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_E19__PRETTY_FUNCTION__-(.LPIC177+4)
	.word	.LC12-(.LPIC178+4)
	.fnend
	.size	_ZNK2OT14AlternateSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_, .-_ZNK2OT14AlternateSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_
	.section	.text._ZNK2OT13LigatureSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_,"axG",%progbits,_ZNK2OT13LigatureSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_,comdat
	.align	2
	.weak	_ZNK2OT13LigatureSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_
	.thumb
	.thumb_func
	.type	_ZNK2OT13LigatureSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_, %function
_ZNK2OT13LigatureSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_:
	.fnstart
.LFB1651:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #32
	sub	sp, sp, #32
	.setfp r7, sp, #16
	add	r7, sp, #16
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r5, [r7]
	ldr	r0, [r7]
	bl	_ZN2OT25hb_get_coverage_context_t8get_nameEv(PLT)
	mov	r4, r0
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	mov	r2, r3
	add	r3, r7, #12
	ldr	r1, .L940
.LPIC179:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L940+4
.LPIC180:
	add	r1, pc
	str	r1, [sp, #4]
	str	r2, [sp, #8]
	mov	r0, r3
	mov	r1, r5
	mov	r2, r4
	ldr	r3, [r7, #4]
	bl	_ZN15hb_auto_trace_tILi0ERKN2OT8CoverageEEC1EPjPKcPKvS7_S7_z(PLT)
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	cmp	r3, #1
	bne	.L939
	ldr	r3, [r7, #4]
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZN2OT25hb_get_coverage_context_t8dispatchINS_20LigatureSubstFormat1EEERKNS_8CoverageERKT_(PLT)
	mov	r3, r0
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	movw	r2, #894
	bl	_ZN15hb_auto_trace_tILi0ERKN2OT8CoverageEE3retES3_j(PLT)
	mov	r3, r0
	b	.L938
.L939:
	bl	_ZN2OT25hb_get_coverage_context_t20default_return_valueEv(PLT)
	mov	r3, r0
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	movw	r2, #895
	bl	_ZN15hb_auto_trace_tILi0ERKN2OT8CoverageEE3retES3_j(PLT)
	mov	r3, r0
.L938:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L941:
	.align	2
.L940:
	.word	_ZZNK2OT13LigatureSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_E19__PRETTY_FUNCTION__-(.LPIC179+4)
	.word	.LC12-(.LPIC180+4)
	.fnend
	.size	_ZNK2OT13LigatureSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_, .-_ZNK2OT13LigatureSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_
	.section	.text._ZNK2OT7Context8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_,"axG",%progbits,_ZNK2OT7Context8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_,comdat
	.align	2
	.weak	_ZNK2OT7Context8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_
	.thumb
	.thumb_func
	.type	_ZNK2OT7Context8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_, %function
_ZNK2OT7Context8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_:
	.fnstart
.LFB1652:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #32
	sub	sp, sp, #32
	.setfp r7, sp, #16
	add	r7, sp, #16
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r5, [r7]
	ldr	r0, [r7]
	bl	_ZN2OT25hb_get_coverage_context_t8get_nameEv(PLT)
	mov	r4, r0
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	mov	r2, r3
	add	r3, r7, #12
	ldr	r1, .L950
.LPIC181:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L950+4
.LPIC182:
	add	r1, pc
	str	r1, [sp, #4]
	str	r2, [sp, #8]
	mov	r0, r3
	mov	r1, r5
	mov	r2, r4
	ldr	r3, [r7, #4]
	bl	_ZN15hb_auto_trace_tILi0ERKN2OT8CoverageEEC1EPjPKcPKvS7_S7_z(PLT)
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	cmp	r3, #2
	beq	.L944
	cmp	r3, #3
	beq	.L945
	cmp	r3, #1
	bne	.L949
	ldr	r3, [r7, #4]
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZN2OT25hb_get_coverage_context_t8dispatchINS_14ContextFormat1EEERKNS_8CoverageERKT_(PLT)
	mov	r3, r0
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	movw	r2, #1530
	bl	_ZN15hb_auto_trace_tILi0ERKN2OT8CoverageEE3retES3_j(PLT)
	mov	r3, r0
	b	.L948
.L944:
	ldr	r3, [r7, #4]
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZN2OT25hb_get_coverage_context_t8dispatchINS_14ContextFormat2EEERKNS_8CoverageERKT_(PLT)
	mov	r3, r0
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	movw	r2, #1531
	bl	_ZN15hb_auto_trace_tILi0ERKN2OT8CoverageEE3retES3_j(PLT)
	mov	r3, r0
	b	.L948
.L945:
	ldr	r3, [r7, #4]
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZN2OT25hb_get_coverage_context_t8dispatchINS_14ContextFormat3EEERKNS_8CoverageERKT_(PLT)
	mov	r3, r0
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	movw	r2, #1532
	bl	_ZN15hb_auto_trace_tILi0ERKN2OT8CoverageEE3retES3_j(PLT)
	mov	r3, r0
	b	.L948
.L949:
	bl	_ZN2OT25hb_get_coverage_context_t20default_return_valueEv(PLT)
	mov	r3, r0
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	movw	r2, #1533
	bl	_ZN15hb_auto_trace_tILi0ERKN2OT8CoverageEE3retES3_j(PLT)
	mov	r3, r0
.L948:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L951:
	.align	2
.L950:
	.word	_ZZNK2OT7Context8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_E19__PRETTY_FUNCTION__-(.LPIC181+4)
	.word	.LC12-(.LPIC182+4)
	.fnend
	.size	_ZNK2OT7Context8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_, .-_ZNK2OT7Context8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_
	.section	.text._ZNK2OT12ChainContext8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_,"axG",%progbits,_ZNK2OT12ChainContext8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_,comdat
	.align	2
	.weak	_ZNK2OT12ChainContext8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_
	.thumb
	.thumb_func
	.type	_ZNK2OT12ChainContext8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_, %function
_ZNK2OT12ChainContext8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_:
	.fnstart
.LFB1653:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #32
	sub	sp, sp, #32
	.setfp r7, sp, #16
	add	r7, sp, #16
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r5, [r7]
	ldr	r0, [r7]
	bl	_ZN2OT25hb_get_coverage_context_t8get_nameEv(PLT)
	mov	r4, r0
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	mov	r2, r3
	add	r3, r7, #12
	ldr	r1, .L960
.LPIC183:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L960+4
.LPIC184:
	add	r1, pc
	str	r1, [sp, #4]
	str	r2, [sp, #8]
	mov	r0, r3
	mov	r1, r5
	mov	r2, r4
	ldr	r3, [r7, #4]
	bl	_ZN15hb_auto_trace_tILi0ERKN2OT8CoverageEEC1EPjPKcPKvS7_S7_z(PLT)
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	cmp	r3, #2
	beq	.L954
	cmp	r3, #3
	beq	.L955
	cmp	r3, #1
	bne	.L959
	ldr	r3, [r7, #4]
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZN2OT25hb_get_coverage_context_t8dispatchINS_19ChainContextFormat1EEERKNS_8CoverageERKT_(PLT)
	mov	r3, r0
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	movw	r2, #2148
	bl	_ZN15hb_auto_trace_tILi0ERKN2OT8CoverageEE3retES3_j(PLT)
	mov	r3, r0
	b	.L958
.L954:
	ldr	r3, [r7, #4]
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZN2OT25hb_get_coverage_context_t8dispatchINS_19ChainContextFormat2EEERKNS_8CoverageERKT_(PLT)
	mov	r3, r0
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	movw	r2, #2149
	bl	_ZN15hb_auto_trace_tILi0ERKN2OT8CoverageEE3retES3_j(PLT)
	mov	r3, r0
	b	.L958
.L955:
	ldr	r3, [r7, #4]
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZN2OT25hb_get_coverage_context_t8dispatchINS_19ChainContextFormat3EEERKNS_8CoverageERKT_(PLT)
	mov	r3, r0
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	movw	r2, #2150
	bl	_ZN15hb_auto_trace_tILi0ERKN2OT8CoverageEE3retES3_j(PLT)
	mov	r3, r0
	b	.L958
.L959:
	bl	_ZN2OT25hb_get_coverage_context_t20default_return_valueEv(PLT)
	mov	r3, r0
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	movw	r2, #2151
	bl	_ZN15hb_auto_trace_tILi0ERKN2OT8CoverageEE3retES3_j(PLT)
	mov	r3, r0
.L958:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L961:
	.align	2
.L960:
	.word	_ZZNK2OT12ChainContext8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_E19__PRETTY_FUNCTION__-(.LPIC183+4)
	.word	.LC12-(.LPIC184+4)
	.fnend
	.size	_ZNK2OT12ChainContext8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_, .-_ZNK2OT12ChainContext8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_
	.section	.text._ZNK2OT9ExtensionINS_14ExtensionSubstEE8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS5_,"axG",%progbits,_ZNK2OT9ExtensionINS_14ExtensionSubstEE8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS5_,comdat
	.align	2
	.weak	_ZNK2OT9ExtensionINS_14ExtensionSubstEE8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS5_
	.thumb
	.thumb_func
	.type	_ZNK2OT9ExtensionINS_14ExtensionSubstEE8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS5_, %function
_ZNK2OT9ExtensionINS_14ExtensionSubstEE8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS5_:
	.fnstart
.LFB1654:
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
	ldr	r0, [r7, #4]
	bl	_ZNK2OT9ExtensionINS_14ExtensionSubstEE12get_subtableINS_19SubstLookupSubTableEEERKT_v(PLT)
	mov	r4, r0
	ldr	r0, [r7, #4]
	bl	_ZNK2OT9ExtensionINS_14ExtensionSubstEE8get_typeEv(PLT)
	mov	r3, r0
	mov	r0, r4
	ldr	r1, [r7]
	mov	r2, r3
	bl	_ZNK2OT19SubstLookupSubTable8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_j(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZNK2OT9ExtensionINS_14ExtensionSubstEE8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS5_, .-_ZNK2OT9ExtensionINS_14ExtensionSubstEE8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS5_
	.section	.text._ZNK2OT23ReverseChainSingleSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_,"axG",%progbits,_ZNK2OT23ReverseChainSingleSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_,comdat
	.align	2
	.weak	_ZNK2OT23ReverseChainSingleSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_
	.thumb
	.thumb_func
	.type	_ZNK2OT23ReverseChainSingleSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_, %function
_ZNK2OT23ReverseChainSingleSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_:
	.fnstart
.LFB1655:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #32
	sub	sp, sp, #32
	.setfp r7, sp, #16
	add	r7, sp, #16
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r5, [r7]
	ldr	r0, [r7]
	bl	_ZN2OT25hb_get_coverage_context_t8get_nameEv(PLT)
	mov	r4, r0
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	mov	r2, r3
	add	r3, r7, #12
	ldr	r1, .L970
.LPIC185:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L970+4
.LPIC186:
	add	r1, pc
	str	r1, [sp, #4]
	str	r2, [sp, #8]
	mov	r0, r3
	mov	r1, r5
	mov	r2, r4
	ldr	r3, [r7, #4]
	bl	_ZN15hb_auto_trace_tILi0ERKN2OT8CoverageEEC1EPjPKcPKvS7_S7_z(PLT)
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	cmp	r3, #1
	bne	.L969
	ldr	r3, [r7, #4]
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZN2OT25hb_get_coverage_context_t8dispatchINS_30ReverseChainSingleSubstFormat1EEERKNS_8CoverageERKT_(PLT)
	mov	r3, r0
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	movw	r2, #1058
	bl	_ZN15hb_auto_trace_tILi0ERKN2OT8CoverageEE3retES3_j(PLT)
	mov	r3, r0
	b	.L968
.L969:
	bl	_ZN2OT25hb_get_coverage_context_t20default_return_valueEv(PLT)
	mov	r3, r0
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	movw	r2, #1059
	bl	_ZN15hb_auto_trace_tILi0ERKN2OT8CoverageEE3retES3_j(PLT)
	mov	r3, r0
.L968:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L971:
	.align	2
.L970:
	.word	_ZZNK2OT23ReverseChainSingleSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_E19__PRETTY_FUNCTION__-(.LPIC185+4)
	.word	.LC12-(.LPIC186+4)
	.fnend
	.size	_ZNK2OT23ReverseChainSingleSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_, .-_ZNK2OT23ReverseChainSingleSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_
	.section	.text._ZNK2OT15CoverageFormat112add_coverageI24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES2_IS3_ImLj0EES3_ImLj9EEEEEEvPT_,"axG",%progbits,_ZNK2OT15CoverageFormat112add_coverageI24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES2_IS3_ImLj0EES3_ImLj9EEEEEEvPT_,comdat
	.align	2
	.weak	_ZNK2OT15CoverageFormat112add_coverageI24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES2_IS3_ImLj0EES3_ImLj9EEEEEEvPT_
	.thumb
	.thumb_func
	.type	_ZNK2OT15CoverageFormat112add_coverageI24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES2_IS3_ImLj0EES3_ImLj9EEEEEEvPT_, %function
_ZNK2OT15CoverageFormat112add_coverageI24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES2_IS3_ImLj0EES3_ImLj9EEEEEEvPT_:
	.fnstart
.LFB1656:
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
	adds	r3, r3, #2
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L973
.L974:
	ldr	r3, [r7, #4]
	adds	r3, r3, #2
	mov	r0, r3
	ldr	r1, [r7, #12]
	bl	_ZNK2OT7ArrayOfINS_7IntTypeItLj2EEES2_EixEj(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZN24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES_IS0_ImLj0EES0_ImLj9EEEE3addEj(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L973:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L974
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT15CoverageFormat112add_coverageI24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES2_IS3_ImLj0EES3_ImLj9EEEEEEvPT_, .-_ZNK2OT15CoverageFormat112add_coverageI24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES2_IS3_ImLj0EES3_ImLj9EEEEEEvPT_
	.section	.text._ZNK2OT15CoverageFormat212add_coverageI24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES2_IS3_ImLj0EES3_ImLj9EEEEEEvPT_,"axG",%progbits,_ZNK2OT15CoverageFormat212add_coverageI24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES2_IS3_ImLj0EES3_ImLj9EEEEEEvPT_,comdat
	.align	2
	.weak	_ZNK2OT15CoverageFormat212add_coverageI24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES2_IS3_ImLj0EES3_ImLj9EEEEEEvPT_
	.thumb
	.thumb_func
	.type	_ZNK2OT15CoverageFormat212add_coverageI24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES2_IS3_ImLj0EES3_ImLj9EEEEEEvPT_, %function
_ZNK2OT15CoverageFormat212add_coverageI24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES2_IS3_ImLj0EES3_ImLj9EEEEEEvPT_:
	.fnstart
.LFB1657:
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
	adds	r3, r3, #2
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L976
.L977:
	ldr	r3, [r7, #4]
	adds	r3, r3, #2
	mov	r0, r3
	ldr	r1, [r7, #12]
	bl	_ZNK2OT7ArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEEixEj(PLT)
	mov	r3, r0
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZNK2OT11RangeRecord12add_coverageI24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES2_IS3_ImLj0EES3_ImLj9EEEEEEvPT_(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L976:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L977
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT15CoverageFormat212add_coverageI24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES2_IS3_ImLj0EES3_ImLj9EEEEEEvPT_, .-_ZNK2OT15CoverageFormat212add_coverageI24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES2_IS3_ImLj0EES3_ImLj9EEEEEEvPT_
	.section	.text._ZN2OT25hb_get_coverage_context_t8dispatchINS_18SingleSubstFormat1EEERKNS_8CoverageERKT_,"axG",%progbits,_ZN2OT25hb_get_coverage_context_t8dispatchINS_18SingleSubstFormat1EEERKNS_8CoverageERKT_,comdat
	.align	2
	.weak	_ZN2OT25hb_get_coverage_context_t8dispatchINS_18SingleSubstFormat1EEERKNS_8CoverageERKT_
	.thumb
	.thumb_func
	.type	_ZN2OT25hb_get_coverage_context_t8dispatchINS_18SingleSubstFormat1EEERKNS_8CoverageERKT_, %function
_ZN2OT25hb_get_coverage_context_t8dispatchINS_18SingleSubstFormat1EEERKNS_8CoverageERKT_:
	.fnstart
.LFB1674:
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
	ldr	r0, [r7]
	bl	_ZNK2OT18SingleSubstFormat112get_coverageEv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OT25hb_get_coverage_context_t8dispatchINS_18SingleSubstFormat1EEERKNS_8CoverageERKT_, .-_ZN2OT25hb_get_coverage_context_t8dispatchINS_18SingleSubstFormat1EEERKNS_8CoverageERKT_
	.section	.text._ZN2OT25hb_get_coverage_context_t8dispatchINS_18SingleSubstFormat2EEERKNS_8CoverageERKT_,"axG",%progbits,_ZN2OT25hb_get_coverage_context_t8dispatchINS_18SingleSubstFormat2EEERKNS_8CoverageERKT_,comdat
	.align	2
	.weak	_ZN2OT25hb_get_coverage_context_t8dispatchINS_18SingleSubstFormat2EEERKNS_8CoverageERKT_
	.thumb
	.thumb_func
	.type	_ZN2OT25hb_get_coverage_context_t8dispatchINS_18SingleSubstFormat2EEERKNS_8CoverageERKT_, %function
_ZN2OT25hb_get_coverage_context_t8dispatchINS_18SingleSubstFormat2EEERKNS_8CoverageERKT_:
	.fnstart
.LFB1675:
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
	ldr	r0, [r7]
	bl	_ZNK2OT18SingleSubstFormat212get_coverageEv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OT25hb_get_coverage_context_t8dispatchINS_18SingleSubstFormat2EEERKNS_8CoverageERKT_, .-_ZN2OT25hb_get_coverage_context_t8dispatchINS_18SingleSubstFormat2EEERKNS_8CoverageERKT_
	.section	.text._ZN2OT25hb_get_coverage_context_t8dispatchINS_20MultipleSubstFormat1EEERKNS_8CoverageERKT_,"axG",%progbits,_ZN2OT25hb_get_coverage_context_t8dispatchINS_20MultipleSubstFormat1EEERKNS_8CoverageERKT_,comdat
	.align	2
	.weak	_ZN2OT25hb_get_coverage_context_t8dispatchINS_20MultipleSubstFormat1EEERKNS_8CoverageERKT_
	.thumb
	.thumb_func
	.type	_ZN2OT25hb_get_coverage_context_t8dispatchINS_20MultipleSubstFormat1EEERKNS_8CoverageERKT_, %function
_ZN2OT25hb_get_coverage_context_t8dispatchINS_20MultipleSubstFormat1EEERKNS_8CoverageERKT_:
	.fnstart
.LFB1676:
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
	ldr	r0, [r7]
	bl	_ZNK2OT20MultipleSubstFormat112get_coverageEv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OT25hb_get_coverage_context_t8dispatchINS_20MultipleSubstFormat1EEERKNS_8CoverageERKT_, .-_ZN2OT25hb_get_coverage_context_t8dispatchINS_20MultipleSubstFormat1EEERKNS_8CoverageERKT_
	.section	.text._ZN2OT25hb_get_coverage_context_t8dispatchINS_21AlternateSubstFormat1EEERKNS_8CoverageERKT_,"axG",%progbits,_ZN2OT25hb_get_coverage_context_t8dispatchINS_21AlternateSubstFormat1EEERKNS_8CoverageERKT_,comdat
	.align	2
	.weak	_ZN2OT25hb_get_coverage_context_t8dispatchINS_21AlternateSubstFormat1EEERKNS_8CoverageERKT_
	.thumb
	.thumb_func
	.type	_ZN2OT25hb_get_coverage_context_t8dispatchINS_21AlternateSubstFormat1EEERKNS_8CoverageERKT_, %function
_ZN2OT25hb_get_coverage_context_t8dispatchINS_21AlternateSubstFormat1EEERKNS_8CoverageERKT_:
	.fnstart
.LFB1677:
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
	ldr	r0, [r7]
	bl	_ZNK2OT21AlternateSubstFormat112get_coverageEv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OT25hb_get_coverage_context_t8dispatchINS_21AlternateSubstFormat1EEERKNS_8CoverageERKT_, .-_ZN2OT25hb_get_coverage_context_t8dispatchINS_21AlternateSubstFormat1EEERKNS_8CoverageERKT_
	.section	.text._ZN2OT25hb_get_coverage_context_t8dispatchINS_20LigatureSubstFormat1EEERKNS_8CoverageERKT_,"axG",%progbits,_ZN2OT25hb_get_coverage_context_t8dispatchINS_20LigatureSubstFormat1EEERKNS_8CoverageERKT_,comdat
	.align	2
	.weak	_ZN2OT25hb_get_coverage_context_t8dispatchINS_20LigatureSubstFormat1EEERKNS_8CoverageERKT_
	.thumb
	.thumb_func
	.type	_ZN2OT25hb_get_coverage_context_t8dispatchINS_20LigatureSubstFormat1EEERKNS_8CoverageERKT_, %function
_ZN2OT25hb_get_coverage_context_t8dispatchINS_20LigatureSubstFormat1EEERKNS_8CoverageERKT_:
	.fnstart
.LFB1678:
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
	ldr	r0, [r7]
	bl	_ZNK2OT20LigatureSubstFormat112get_coverageEv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OT25hb_get_coverage_context_t8dispatchINS_20LigatureSubstFormat1EEERKNS_8CoverageERKT_, .-_ZN2OT25hb_get_coverage_context_t8dispatchINS_20LigatureSubstFormat1EEERKNS_8CoverageERKT_
	.section	.text._ZN2OT25hb_get_coverage_context_t8dispatchINS_14ContextFormat1EEERKNS_8CoverageERKT_,"axG",%progbits,_ZN2OT25hb_get_coverage_context_t8dispatchINS_14ContextFormat1EEERKNS_8CoverageERKT_,comdat
	.align	2
	.weak	_ZN2OT25hb_get_coverage_context_t8dispatchINS_14ContextFormat1EEERKNS_8CoverageERKT_
	.thumb
	.thumb_func
	.type	_ZN2OT25hb_get_coverage_context_t8dispatchINS_14ContextFormat1EEERKNS_8CoverageERKT_, %function
_ZN2OT25hb_get_coverage_context_t8dispatchINS_14ContextFormat1EEERKNS_8CoverageERKT_:
	.fnstart
.LFB1679:
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
	ldr	r0, [r7]
	bl	_ZNK2OT14ContextFormat112get_coverageEv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OT25hb_get_coverage_context_t8dispatchINS_14ContextFormat1EEERKNS_8CoverageERKT_, .-_ZN2OT25hb_get_coverage_context_t8dispatchINS_14ContextFormat1EEERKNS_8CoverageERKT_
	.section	.text._ZN2OT25hb_get_coverage_context_t8dispatchINS_14ContextFormat2EEERKNS_8CoverageERKT_,"axG",%progbits,_ZN2OT25hb_get_coverage_context_t8dispatchINS_14ContextFormat2EEERKNS_8CoverageERKT_,comdat
	.align	2
	.weak	_ZN2OT25hb_get_coverage_context_t8dispatchINS_14ContextFormat2EEERKNS_8CoverageERKT_
	.thumb
	.thumb_func
	.type	_ZN2OT25hb_get_coverage_context_t8dispatchINS_14ContextFormat2EEERKNS_8CoverageERKT_, %function
_ZN2OT25hb_get_coverage_context_t8dispatchINS_14ContextFormat2EEERKNS_8CoverageERKT_:
	.fnstart
.LFB1680:
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
	ldr	r0, [r7]
	bl	_ZNK2OT14ContextFormat212get_coverageEv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OT25hb_get_coverage_context_t8dispatchINS_14ContextFormat2EEERKNS_8CoverageERKT_, .-_ZN2OT25hb_get_coverage_context_t8dispatchINS_14ContextFormat2EEERKNS_8CoverageERKT_
	.section	.text._ZN2OT25hb_get_coverage_context_t8dispatchINS_14ContextFormat3EEERKNS_8CoverageERKT_,"axG",%progbits,_ZN2OT25hb_get_coverage_context_t8dispatchINS_14ContextFormat3EEERKNS_8CoverageERKT_,comdat
	.align	2
	.weak	_ZN2OT25hb_get_coverage_context_t8dispatchINS_14ContextFormat3EEERKNS_8CoverageERKT_
	.thumb
	.thumb_func
	.type	_ZN2OT25hb_get_coverage_context_t8dispatchINS_14ContextFormat3EEERKNS_8CoverageERKT_, %function
_ZN2OT25hb_get_coverage_context_t8dispatchINS_14ContextFormat3EEERKNS_8CoverageERKT_:
	.fnstart
.LFB1681:
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
	ldr	r0, [r7]
	bl	_ZNK2OT14ContextFormat312get_coverageEv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OT25hb_get_coverage_context_t8dispatchINS_14ContextFormat3EEERKNS_8CoverageERKT_, .-_ZN2OT25hb_get_coverage_context_t8dispatchINS_14ContextFormat3EEERKNS_8CoverageERKT_
	.section	.text._ZN2OT25hb_get_coverage_context_t8dispatchINS_19ChainContextFormat1EEERKNS_8CoverageERKT_,"axG",%progbits,_ZN2OT25hb_get_coverage_context_t8dispatchINS_19ChainContextFormat1EEERKNS_8CoverageERKT_,comdat
	.align	2
	.weak	_ZN2OT25hb_get_coverage_context_t8dispatchINS_19ChainContextFormat1EEERKNS_8CoverageERKT_
	.thumb
	.thumb_func
	.type	_ZN2OT25hb_get_coverage_context_t8dispatchINS_19ChainContextFormat1EEERKNS_8CoverageERKT_, %function
_ZN2OT25hb_get_coverage_context_t8dispatchINS_19ChainContextFormat1EEERKNS_8CoverageERKT_:
	.fnstart
.LFB1682:
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
	ldr	r0, [r7]
	bl	_ZNK2OT19ChainContextFormat112get_coverageEv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OT25hb_get_coverage_context_t8dispatchINS_19ChainContextFormat1EEERKNS_8CoverageERKT_, .-_ZN2OT25hb_get_coverage_context_t8dispatchINS_19ChainContextFormat1EEERKNS_8CoverageERKT_
	.section	.text._ZN2OT25hb_get_coverage_context_t8dispatchINS_19ChainContextFormat2EEERKNS_8CoverageERKT_,"axG",%progbits,_ZN2OT25hb_get_coverage_context_t8dispatchINS_19ChainContextFormat2EEERKNS_8CoverageERKT_,comdat
	.align	2
	.weak	_ZN2OT25hb_get_coverage_context_t8dispatchINS_19ChainContextFormat2EEERKNS_8CoverageERKT_
	.thumb
	.thumb_func
	.type	_ZN2OT25hb_get_coverage_context_t8dispatchINS_19ChainContextFormat2EEERKNS_8CoverageERKT_, %function
_ZN2OT25hb_get_coverage_context_t8dispatchINS_19ChainContextFormat2EEERKNS_8CoverageERKT_:
	.fnstart
.LFB1683:
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
	ldr	r0, [r7]
	bl	_ZNK2OT19ChainContextFormat212get_coverageEv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OT25hb_get_coverage_context_t8dispatchINS_19ChainContextFormat2EEERKNS_8CoverageERKT_, .-_ZN2OT25hb_get_coverage_context_t8dispatchINS_19ChainContextFormat2EEERKNS_8CoverageERKT_
	.section	.text._ZN2OT25hb_get_coverage_context_t8dispatchINS_19ChainContextFormat3EEERKNS_8CoverageERKT_,"axG",%progbits,_ZN2OT25hb_get_coverage_context_t8dispatchINS_19ChainContextFormat3EEERKNS_8CoverageERKT_,comdat
	.align	2
	.weak	_ZN2OT25hb_get_coverage_context_t8dispatchINS_19ChainContextFormat3EEERKNS_8CoverageERKT_
	.thumb
	.thumb_func
	.type	_ZN2OT25hb_get_coverage_context_t8dispatchINS_19ChainContextFormat3EEERKNS_8CoverageERKT_, %function
_ZN2OT25hb_get_coverage_context_t8dispatchINS_19ChainContextFormat3EEERKNS_8CoverageERKT_:
	.fnstart
.LFB1684:
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
	ldr	r0, [r7]
	bl	_ZNK2OT19ChainContextFormat312get_coverageEv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OT25hb_get_coverage_context_t8dispatchINS_19ChainContextFormat3EEERKNS_8CoverageERKT_, .-_ZN2OT25hb_get_coverage_context_t8dispatchINS_19ChainContextFormat3EEERKNS_8CoverageERKT_
	.section	.text._ZN2OT25hb_get_coverage_context_t8dispatchINS_30ReverseChainSingleSubstFormat1EEERKNS_8CoverageERKT_,"axG",%progbits,_ZN2OT25hb_get_coverage_context_t8dispatchINS_30ReverseChainSingleSubstFormat1EEERKNS_8CoverageERKT_,comdat
	.align	2
	.weak	_ZN2OT25hb_get_coverage_context_t8dispatchINS_30ReverseChainSingleSubstFormat1EEERKNS_8CoverageERKT_
	.thumb
	.thumb_func
	.type	_ZN2OT25hb_get_coverage_context_t8dispatchINS_30ReverseChainSingleSubstFormat1EEERKNS_8CoverageERKT_, %function
_ZN2OT25hb_get_coverage_context_t8dispatchINS_30ReverseChainSingleSubstFormat1EEERKNS_8CoverageERKT_:
	.fnstart
.LFB1685:
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
	ldr	r0, [r7]
	bl	_ZNK2OT30ReverseChainSingleSubstFormat112get_coverageEv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OT25hb_get_coverage_context_t8dispatchINS_30ReverseChainSingleSubstFormat1EEERKNS_8CoverageERKT_, .-_ZN2OT25hb_get_coverage_context_t8dispatchINS_30ReverseChainSingleSubstFormat1EEERKNS_8CoverageERKT_
	.section	.text._ZN24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES_IS0_ImLj0EES0_ImLj9EEEE3addEj,"axG",%progbits,_ZN24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES_IS0_ImLj0EES0_ImLj9EEEE3addEj,comdat
	.align	2
	.weak	_ZN24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES_IS0_ImLj0EES0_ImLj9EEEE3addEj
	.thumb
	.thumb_func
	.type	_ZN24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES_IS0_ImLj0EES0_ImLj9EEEE3addEj, %function
_ZN24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES_IS0_ImLj0EES0_ImLj9EEEE3addEj:
	.fnstart
.LFB1686:
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
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN27hb_set_digest_lowest_bits_tImLj4EE3addEj(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj0EES0_ImLj9EEE3addEj(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES_IS0_ImLj0EES0_ImLj9EEEE3addEj, .-_ZN24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES_IS0_ImLj0EES0_ImLj9EEEE3addEj
	.section	.text._ZNK2OT11RangeRecord12add_coverageI24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES2_IS3_ImLj0EES3_ImLj9EEEEEEvPT_,"axG",%progbits,_ZNK2OT11RangeRecord12add_coverageI24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES2_IS3_ImLj0EES3_ImLj9EEEEEEvPT_,comdat
	.align	2
	.weak	_ZNK2OT11RangeRecord12add_coverageI24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES2_IS3_ImLj0EES3_ImLj9EEEEEEvPT_
	.thumb
	.thumb_func
	.type	_ZNK2OT11RangeRecord12add_coverageI24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES2_IS3_ImLj0EES3_ImLj9EEEEEEvPT_, %function
_ZNK2OT11RangeRecord12add_coverageI24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES2_IS3_ImLj0EES3_ImLj9EEEEEEvPT_:
	.fnstart
.LFB1687:
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
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	mov	r4, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #2
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	ldr	r0, [r7]
	mov	r1, r4
	mov	r2, r3
	bl	_ZN24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES_IS0_ImLj0EES0_ImLj9EEEE9add_rangeEjj(PLT)
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZNK2OT11RangeRecord12add_coverageI24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES2_IS3_ImLj0EES3_ImLj9EEEEEEvPT_, .-_ZNK2OT11RangeRecord12add_coverageI24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES2_IS3_ImLj0EES3_ImLj9EEEEEEvPT_
	.section	.text._ZN27hb_set_digest_lowest_bits_tImLj4EE3addEj,"axG",%progbits,_ZN27hb_set_digest_lowest_bits_tImLj4EE3addEj,comdat
	.align	2
	.weak	_ZN27hb_set_digest_lowest_bits_tImLj4EE3addEj
	.thumb
	.thumb_func
	.type	_ZN27hb_set_digest_lowest_bits_tImLj4EE3addEj, %function
_ZN27hb_set_digest_lowest_bits_tImLj4EE3addEj:
	.fnstart
.LFB1696:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7]
	bl	_ZN27hb_set_digest_lowest_bits_tImLj4EE8mask_forEj(PLT)
	mov	r3, r0
	ldr	r2, [r7, #4]
	ldr	r2, [r2]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN27hb_set_digest_lowest_bits_tImLj4EE3addEj, .-_ZN27hb_set_digest_lowest_bits_tImLj4EE3addEj
	.section	.text._ZN24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj0EES0_ImLj9EEE3addEj,"axG",%progbits,_ZN24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj0EES0_ImLj9EEE3addEj,comdat
	.align	2
	.weak	_ZN24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj0EES0_ImLj9EEE3addEj
	.thumb
	.thumb_func
	.type	_ZN24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj0EES0_ImLj9EEE3addEj, %function
_ZN24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj0EES0_ImLj9EEE3addEj:
	.fnstart
.LFB1697:
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
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN27hb_set_digest_lowest_bits_tImLj0EE3addEj(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN27hb_set_digest_lowest_bits_tImLj9EE3addEj(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj0EES0_ImLj9EEE3addEj, .-_ZN24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj0EES0_ImLj9EEE3addEj
	.section	.text._ZN24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES_IS0_ImLj0EES0_ImLj9EEEE9add_rangeEjj,"axG",%progbits,_ZN24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES_IS0_ImLj0EES0_ImLj9EEEE9add_rangeEjj,comdat
	.align	2
	.weak	_ZN24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES_IS0_ImLj0EES0_ImLj9EEEE9add_rangeEjj
	.thumb
	.thumb_func
	.type	_ZN24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES_IS0_ImLj0EES0_ImLj9EEEE9add_rangeEjj, %function
_ZN24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES_IS0_ImLj0EES0_ImLj9EEEE9add_rangeEjj:
	.fnstart
.LFB1698:
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
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	_ZN27hb_set_digest_lowest_bits_tImLj4EE9add_rangeEjj(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #4
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	_ZN24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj0EES0_ImLj9EEE9add_rangeEjj(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES_IS0_ImLj0EES0_ImLj9EEEE9add_rangeEjj, .-_ZN24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj4EES_IS0_ImLj0EES0_ImLj9EEEE9add_rangeEjj
	.section	.text._ZN27hb_set_digest_lowest_bits_tImLj0EE3addEj,"axG",%progbits,_ZN27hb_set_digest_lowest_bits_tImLj0EE3addEj,comdat
	.align	2
	.weak	_ZN27hb_set_digest_lowest_bits_tImLj0EE3addEj
	.thumb
	.thumb_func
	.type	_ZN27hb_set_digest_lowest_bits_tImLj0EE3addEj, %function
_ZN27hb_set_digest_lowest_bits_tImLj0EE3addEj:
	.fnstart
.LFB1701:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7]
	bl	_ZN27hb_set_digest_lowest_bits_tImLj0EE8mask_forEj(PLT)
	mov	r3, r0
	ldr	r2, [r7, #4]
	ldr	r2, [r2]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN27hb_set_digest_lowest_bits_tImLj0EE3addEj, .-_ZN27hb_set_digest_lowest_bits_tImLj0EE3addEj
	.section	.text._ZN27hb_set_digest_lowest_bits_tImLj9EE3addEj,"axG",%progbits,_ZN27hb_set_digest_lowest_bits_tImLj9EE3addEj,comdat
	.align	2
	.weak	_ZN27hb_set_digest_lowest_bits_tImLj9EE3addEj
	.thumb
	.thumb_func
	.type	_ZN27hb_set_digest_lowest_bits_tImLj9EE3addEj, %function
_ZN27hb_set_digest_lowest_bits_tImLj9EE3addEj:
	.fnstart
.LFB1702:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7]
	bl	_ZN27hb_set_digest_lowest_bits_tImLj9EE8mask_forEj(PLT)
	mov	r3, r0
	ldr	r2, [r7, #4]
	ldr	r2, [r2]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN27hb_set_digest_lowest_bits_tImLj9EE3addEj, .-_ZN27hb_set_digest_lowest_bits_tImLj9EE3addEj
	.section	.text._ZN27hb_set_digest_lowest_bits_tImLj4EE9add_rangeEjj,"axG",%progbits,_ZN27hb_set_digest_lowest_bits_tImLj4EE9add_rangeEjj,comdat
	.align	2
	.weak	_ZN27hb_set_digest_lowest_bits_tImLj4EE9add_rangeEjj
	.thumb
	.thumb_func
	.type	_ZN27hb_set_digest_lowest_bits_tImLj4EE9add_rangeEjj, %function
_ZN27hb_set_digest_lowest_bits_tImLj4EE9add_rangeEjj:
	.fnstart
.LFB1703:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #4]
	lsrs	r2, r3, #4
	ldr	r3, [r7, #8]
	lsrs	r3, r3, #4
	subs	r3, r2, r3
	cmp	r3, #30
	bls	.L1010
	ldr	r3, [r7, #12]
	mov	r2, #-1
	str	r2, [r3]
	b	.L1009
.L1010:
	ldr	r0, [r7, #8]
	bl	_ZN27hb_set_digest_lowest_bits_tImLj4EE8mask_forEj(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r0, [r7, #4]
	bl	_ZN27hb_set_digest_lowest_bits_tImLj4EE8mask_forEj(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r1, [r7, #16]
	ldr	r3, [r7, #20]
	subs	r1, r1, r3
	ldr	r3, [r7, #16]
	add	r1, r1, r3
	ldr	r0, [r7, #16]
	ldr	r3, [r7, #20]
	cmp	r0, r3
	ite	cc
	movcc	r3, #1
	movcs	r3, #0
	uxtb	r3, r3
	subs	r3, r1, r3
	orrs	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3]
.L1009:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN27hb_set_digest_lowest_bits_tImLj4EE9add_rangeEjj, .-_ZN27hb_set_digest_lowest_bits_tImLj4EE9add_rangeEjj
	.section	.text._ZN24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj0EES0_ImLj9EEE9add_rangeEjj,"axG",%progbits,_ZN24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj0EES0_ImLj9EEE9add_rangeEjj,comdat
	.align	2
	.weak	_ZN24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj0EES0_ImLj9EEE9add_rangeEjj
	.thumb
	.thumb_func
	.type	_ZN24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj0EES0_ImLj9EEE9add_rangeEjj, %function
_ZN24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj0EES0_ImLj9EEE9add_rangeEjj:
	.fnstart
.LFB1704:
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
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	_ZN27hb_set_digest_lowest_bits_tImLj0EE9add_rangeEjj(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #4
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	_ZN27hb_set_digest_lowest_bits_tImLj9EE9add_rangeEjj(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj0EES0_ImLj9EEE9add_rangeEjj, .-_ZN24hb_set_digest_combiner_tI27hb_set_digest_lowest_bits_tImLj0EES0_ImLj9EEE9add_rangeEjj
	.section	.text._ZN27hb_set_digest_lowest_bits_tImLj0EE9add_rangeEjj,"axG",%progbits,_ZN27hb_set_digest_lowest_bits_tImLj0EE9add_rangeEjj,comdat
	.align	2
	.weak	_ZN27hb_set_digest_lowest_bits_tImLj0EE9add_rangeEjj
	.thumb
	.thumb_func
	.type	_ZN27hb_set_digest_lowest_bits_tImLj0EE9add_rangeEjj, %function
_ZN27hb_set_digest_lowest_bits_tImLj0EE9add_rangeEjj:
	.fnstart
.LFB1705:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #8]
	subs	r3, r2, r3
	cmp	r3, #30
	bls	.L1014
	ldr	r3, [r7, #12]
	mov	r2, #-1
	str	r2, [r3]
	b	.L1013
.L1014:
	ldr	r0, [r7, #8]
	bl	_ZN27hb_set_digest_lowest_bits_tImLj0EE8mask_forEj(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r0, [r7, #4]
	bl	_ZN27hb_set_digest_lowest_bits_tImLj0EE8mask_forEj(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r1, [r7, #16]
	ldr	r3, [r7, #20]
	subs	r1, r1, r3
	ldr	r3, [r7, #16]
	add	r1, r1, r3
	ldr	r0, [r7, #16]
	ldr	r3, [r7, #20]
	cmp	r0, r3
	ite	cc
	movcc	r3, #1
	movcs	r3, #0
	uxtb	r3, r3
	subs	r3, r1, r3
	orrs	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3]
.L1013:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN27hb_set_digest_lowest_bits_tImLj0EE9add_rangeEjj, .-_ZN27hb_set_digest_lowest_bits_tImLj0EE9add_rangeEjj
	.section	.text._ZN27hb_set_digest_lowest_bits_tImLj9EE9add_rangeEjj,"axG",%progbits,_ZN27hb_set_digest_lowest_bits_tImLj9EE9add_rangeEjj,comdat
	.align	2
	.weak	_ZN27hb_set_digest_lowest_bits_tImLj9EE9add_rangeEjj
	.thumb
	.thumb_func
	.type	_ZN27hb_set_digest_lowest_bits_tImLj9EE9add_rangeEjj, %function
_ZN27hb_set_digest_lowest_bits_tImLj9EE9add_rangeEjj:
	.fnstart
.LFB1706:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #4]
	lsrs	r2, r3, #9
	ldr	r3, [r7, #8]
	lsrs	r3, r3, #9
	subs	r3, r2, r3
	cmp	r3, #30
	bls	.L1017
	ldr	r3, [r7, #12]
	mov	r2, #-1
	str	r2, [r3]
	b	.L1016
.L1017:
	ldr	r0, [r7, #8]
	bl	_ZN27hb_set_digest_lowest_bits_tImLj9EE8mask_forEj(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r0, [r7, #4]
	bl	_ZN27hb_set_digest_lowest_bits_tImLj9EE8mask_forEj(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r1, [r7, #16]
	ldr	r3, [r7, #20]
	subs	r1, r1, r3
	ldr	r3, [r7, #16]
	add	r1, r1, r3
	ldr	r0, [r7, #16]
	ldr	r3, [r7, #20]
	cmp	r0, r3
	ite	cc
	movcc	r3, #1
	movcs	r3, #0
	uxtb	r3, r3
	subs	r3, r1, r3
	orrs	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3]
.L1016:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN27hb_set_digest_lowest_bits_tImLj9EE9add_rangeEjj, .-_ZN27hb_set_digest_lowest_bits_tImLj9EE9add_rangeEjj
	.section	.rodata._ZL10table_tags,"a",%progbits
	.align	2
	.type	_ZL10table_tags, %object
	.size	_ZL10table_tags, 8
_ZL10table_tags:
	.word	1196643650
	.word	1196445523
	.section	.rodata._ZL13joining_table,"a",%progbits
	.align	2
	.type	_ZL13joining_table, %object
	.size	_ZL13joining_table, 1010
_ZL13joining_table:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	8
	.byte	8
	.byte	0
	.byte	8
	.byte	8
	.byte	0
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	3
	.byte	0
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	3
	.byte	2
	.byte	3
	.byte	2
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	2
	.byte	3
	.byte	3
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	3
	.byte	3
	.byte	8
	.byte	2
	.byte	2
	.byte	2
	.byte	0
	.byte	2
	.byte	2
	.byte	2
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	2
	.byte	3
	.byte	3
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	3
	.byte	2
	.byte	3
	.byte	2
	.byte	3
	.byte	3
	.byte	2
	.byte	2
	.byte	8
	.byte	2
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	0
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	2
	.byte	2
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	3
	.byte	3
	.byte	3
	.byte	8
	.byte	8
	.byte	3
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	4
	.byte	8
	.byte	3
	.byte	3
	.byte	3
	.byte	5
	.byte	5
	.byte	2
	.byte	2
	.byte	2
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	2
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	2
	.byte	3
	.byte	5
	.byte	3
	.byte	2
	.byte	3
	.byte	3
	.byte	5
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	2
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	2
	.byte	2
	.byte	2
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	2
	.byte	2
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	2
	.byte	3
	.byte	2
	.byte	2
	.byte	3
	.byte	3
	.byte	3
	.byte	2
	.byte	2
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	3
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	2
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	2
	.byte	2
	.byte	3
	.byte	2
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	2
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	2
	.byte	2
	.byte	2
	.byte	0
	.byte	2
	.byte	3
	.byte	3
	.byte	2
	.byte	2
	.byte	0
	.byte	3
	.byte	8
	.byte	8
	.byte	3
	.byte	8
	.byte	8
	.byte	8
	.byte	0
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	8
	.byte	3
	.byte	0
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	1
	.byte	0
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	2
	.byte	0
	.byte	2
	.byte	0
	.byte	2
	.byte	2
	.byte	0
	.byte	0
	.byte	1
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	1
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	2
	.byte	3
	.byte	3
	.byte	3
	.byte	2
	.byte	0
	.byte	0
	.byte	2
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	2
	.byte	3
	.byte	2
	.byte	3
	.byte	2
	.byte	2
	.byte	2
	.byte	3
	.byte	3
	.byte	3
	.byte	2
	.byte	3
	.byte	3
	.byte	2
	.byte	3
	.byte	2
	.byte	2
	.byte	3
	.byte	2
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	3
	.byte	3
	.byte	0
	.section	.rodata._ZL13shaping_table,"a",%progbits
	.align	2
	.type	_ZL13shaping_table, %object
	.size	_ZL13shaping_table, 1432
_ZL13shaping_table:
	.short	0
	.short	0
	.short	0
	.short	-384
	.short	0
	.short	0
	.short	-382
	.short	-383
	.short	0
	.short	0
	.short	-380
	.short	-381
	.short	0
	.short	0
	.short	-378
	.short	-379
	.short	0
	.short	0
	.short	-376
	.short	-377
	.short	-373
	.short	-372
	.short	-374
	.short	-375
	.short	0
	.short	0
	.short	-370
	.short	-371
	.short	-367
	.short	-366
	.short	-368
	.short	-369
	.short	0
	.short	0
	.short	-364
	.short	-365
	.short	-361
	.short	-360
	.short	-362
	.short	-363
	.short	-357
	.short	-356
	.short	-358
	.short	-359
	.short	-353
	.short	-352
	.short	-354
	.short	-355
	.short	-349
	.short	-348
	.short	-350
	.short	-351
	.short	-345
	.short	-344
	.short	-346
	.short	-347
	.short	0
	.short	0
	.short	-342
	.short	-343
	.short	0
	.short	0
	.short	-340
	.short	-341
	.short	0
	.short	0
	.short	-338
	.short	-339
	.short	0
	.short	0
	.short	-336
	.short	-337
	.short	-333
	.short	-332
	.short	-334
	.short	-335
	.short	-329
	.short	-328
	.short	-330
	.short	-331
	.short	-325
	.short	-324
	.short	-326
	.short	-327
	.short	-321
	.short	-320
	.short	-322
	.short	-323
	.short	-317
	.short	-316
	.short	-318
	.short	-319
	.short	-313
	.short	-312
	.short	-314
	.short	-315
	.short	-309
	.short	-308
	.short	-310
	.short	-311
	.short	-305
	.short	-304
	.short	-306
	.short	-307
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	-301
	.short	-300
	.short	-302
	.short	-303
	.short	-297
	.short	-296
	.short	-298
	.short	-299
	.short	-293
	.short	-292
	.short	-294
	.short	-295
	.short	-289
	.short	-288
	.short	-290
	.short	-291
	.short	-285
	.short	-284
	.short	-286
	.short	-287
	.short	-281
	.short	-280
	.short	-282
	.short	-283
	.short	-277
	.short	-276
	.short	-278
	.short	-279
	.short	0
	.short	0
	.short	-274
	.short	-275
	.short	-1048
	.short	-1047
	.short	-272
	.short	-273
	.short	-269
	.short	-268
	.short	-270
	.short	-271
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	-1199
	.short	-1200
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	-1059
	.short	0
	.short	0
	.short	0
	.short	0
	.short	-1176
	.short	-1175
	.short	-1177
	.short	-1178
	.short	-1184
	.short	-1183
	.short	-1185
	.short	-1186
	.short	-1196
	.short	-1195
	.short	-1197
	.short	-1198
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	-1192
	.short	-1191
	.short	-1193
	.short	-1194
	.short	-1180
	.short	-1179
	.short	-1181
	.short	-1182
	.short	-1188
	.short	-1187
	.short	-1189
	.short	-1190
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	-1160
	.short	-1159
	.short	-1161
	.short	-1162
	.short	-1164
	.short	-1163
	.short	-1165
	.short	-1166
	.short	0
	.short	0
	.short	0
	.short	0
	.short	-1156
	.short	-1155
	.short	-1157
	.short	-1158
	.short	-1152
	.short	-1151
	.short	-1153
	.short	-1154
	.short	0
	.short	0
	.short	-1143
	.short	-1144
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	-1147
	.short	-1148
	.short	0
	.short	0
	.short	-1149
	.short	-1150
	.short	0
	.short	0
	.short	-1145
	.short	-1146
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	-1139
	.short	-1140
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	-1141
	.short	-1142
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	-1172
	.short	-1171
	.short	-1173
	.short	-1174
	.short	0
	.short	0
	.short	0
	.short	0
	.short	-1168
	.short	-1167
	.short	-1169
	.short	-1170
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	-1136
	.short	-1135
	.short	-1137
	.short	-1138
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	-1067
	.short	-1066
	.short	-1068
	.short	-1069
	.short	0
	.short	0
	.short	0
	.short	0
	.short	-1132
	.short	-1131
	.short	-1133
	.short	-1134
	.short	0
	.short	0
	.short	0
	.short	0
	.short	-1124
	.short	-1123
	.short	-1125
	.short	-1126
	.short	0
	.short	0
	.short	0
	.short	0
	.short	-1128
	.short	-1127
	.short	-1129
	.short	-1130
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	-1121
	.short	-1122
	.short	-1118
	.short	-1117
	.short	-1119
	.short	-1120
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	-1108
	.short	-1107
	.short	-1109
	.short	-1110
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	-1115
	.short	-1116
	.short	-1112
	.short	-1111
	.short	-1113
	.short	-1114
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	-1055
	.short	-1056
	.short	0
	.short	0
	.short	-1062
	.short	-1063
	.short	0
	.short	0
	.short	-1064
	.short	-1065
	.short	0
	.short	0
	.short	-1060
	.short	-1061
	.short	0
	.short	0
	.short	-1053
	.short	-1054
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	-1057
	.short	-1058
	.short	-1026
	.short	-1025
	.short	-1027
	.short	-1028
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	-1050
	.short	-1049
	.short	-1051
	.short	-1052
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	-1105
	.short	-1106
	.short	0
	.short	0
	.short	-1103
	.short	-1104
	.section	.rodata._ZL14ligature_table,"a",%progbits
	.align	2
	.type	_ZL14ligature_table, %object
	.size	_ZL14ligature_table, 36
_ZL14ligature_table:
	.short	-289
	.short	-376
	.short	-263
	.short	-382
	.short	-267
	.short	-370
	.short	-261
	.short	-380
	.short	-265
	.short	-288
	.short	-376
	.short	-262
	.short	-382
	.short	-266
	.short	-370
	.short	-260
	.short	-380
	.short	-264
	.section	.rodata._ZL15arabic_features,"a",%progbits
	.align	2
	.type	_ZL15arabic_features, %object
	.size	_ZL15arabic_features, 32
_ZL15arabic_features:
	.word	1769172844
	.word	1718185569
	.word	1718185522
	.word	1718185523
	.word	1835361385
	.word	1835361330
	.word	1768843636
	.word	0
	.section	.rodata._ZL18arabic_state_table,"a",%progbits
	.align	2
	.type	_ZL18arabic_state_table, %object
	.size	_ZL18arabic_state_table, 168
_ZL18arabic_state_table:
	.byte	7
	.byte	7
	.short	0
	.byte	7
	.byte	0
	.short	2
	.byte	7
	.byte	0
	.short	1
	.byte	7
	.byte	0
	.short	2
	.byte	7
	.byte	0
	.short	1
	.byte	7
	.byte	0
	.short	6
	.byte	7
	.byte	7
	.short	0
	.byte	7
	.byte	0
	.short	2
	.byte	7
	.byte	0
	.short	1
	.byte	7
	.byte	0
	.short	2
	.byte	7
	.byte	2
	.short	5
	.byte	7
	.byte	0
	.short	6
	.byte	7
	.byte	7
	.short	0
	.byte	7
	.byte	0
	.short	2
	.byte	6
	.byte	1
	.short	1
	.byte	6
	.byte	1
	.short	3
	.byte	6
	.byte	1
	.short	4
	.byte	6
	.byte	1
	.short	6
	.byte	7
	.byte	7
	.short	0
	.byte	7
	.byte	0
	.short	2
	.byte	4
	.byte	1
	.short	1
	.byte	4
	.byte	1
	.short	3
	.byte	4
	.byte	1
	.short	4
	.byte	4
	.byte	1
	.short	6
	.byte	7
	.byte	7
	.short	0
	.byte	7
	.byte	0
	.short	2
	.byte	5
	.byte	0
	.short	1
	.byte	5
	.byte	0
	.short	2
	.byte	5
	.byte	2
	.short	5
	.byte	5
	.byte	0
	.short	6
	.byte	7
	.byte	7
	.short	0
	.byte	7
	.byte	0
	.short	2
	.byte	0
	.byte	0
	.short	1
	.byte	0
	.byte	0
	.short	2
	.byte	0
	.byte	2
	.short	5
	.byte	0
	.byte	0
	.short	6
	.byte	7
	.byte	7
	.short	0
	.byte	7
	.byte	0
	.short	2
	.byte	7
	.byte	0
	.short	1
	.byte	7
	.byte	0
	.short	2
	.byte	7
	.byte	3
	.short	5
	.byte	7
	.byte	0
	.short	6
	.section	.rodata._ZL24arabic_fallback_features,"a",%progbits
	.align	2
	.type	_ZL24arabic_fallback_features, %object
	.size	_ZL24arabic_fallback_features, 20
_ZL24arabic_fallback_features:
	.word	1768843636
	.word	1835361385
	.word	1718185569
	.word	1769172844
	.word	1919707495
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
	.section	.rodata._ZN2OTL16_NullRangeRecordE,"a",%progbits
	.align	2
	.type	_ZN2OTL16_NullRangeRecordE, %object
	.size	_ZN2OTL16_NullRangeRecordE, 7
_ZN2OTL16_NullRangeRecordE:
	.ascii	"\000\001\000"
	.space	4
	.section	.rodata._ZN2OTL12_NullLangSysE,"a",%progbits
	.align	2
	.type	_ZN2OTL12_NullLangSysE, %object
	.size	_ZN2OTL12_NullLangSysE, 9
_ZN2OTL12_NullLangSysE:
	.ascii	"\000\000\377\377\000"
	.space	4
	.section	.rodata._ZZN2OT11SubstLookup16serialize_singleEPNS_22hb_serialize_context_tEjRNS_8SupplierINS_7IntTypeItLj2EEEEES7_jE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT11SubstLookup16serialize_singleEPNS_22hb_serialize_context_tEjRNS_8SupplierINS_7IntTypeItLj2EEEEES7_jE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT11SubstLookup16serialize_singleEPNS_22hb_serialize_context_tEjRNS_8SupplierINS_7IntTypeItLj2EEEEES7_jE19__PRETTY_FUNCTION__, 198
_ZZN2OT11SubstLookup16serialize_singleEPNS_22hb_serialize_context_tEjRNS_8SupplierINS_7IntTypeItLj2EEEEES7_jE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::SubstLookup::serialize_single(OT::hb_seria"
	.ascii	"lize_context_t*, uint32_t, OT::Supplier<OT::IntType"
	.ascii	"<short unsigned int, 2u> >&, OT::Supplier<OT::IntTy"
	.ascii	"pe<short unsigned int, 2u> >&, unsigned int)\000"
	.section	.rodata._ZZN2OT6Lookup9serializeEPNS_22hb_serialize_context_tEjjjE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT6Lookup9serializeEPNS_22hb_serialize_context_tEjjjE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT6Lookup9serializeEPNS_22hb_serialize_context_tEjjjE19__PRETTY_FUNCTION__, 94
_ZZN2OT6Lookup9serializeEPNS_22hb_serialize_context_tEjjjE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::Lookup::serialize(OT::hb_serialize_context"
	.ascii	"_t*, unsigned int, uint32_t, unsigned int)\000"
	.section	.rodata._ZZN2OT22hb_serialize_context_t10extend_minINS_6LookupEEEPT_RS3_E19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT22hb_serialize_context_t10extend_minINS_6LookupEEEPT_RS3_E19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT22hb_serialize_context_t10extend_minINS_6LookupEEEPT_RS3_E19__PRETTY_FUNCTION__, 77
_ZZN2OT22hb_serialize_context_t10extend_minINS_6LookupEEEPT_RS3_E19__PRETTY_FUNCTION__:
	.ascii	"Type* OT::hb_serialize_context_t::extend_min(Type&)"
	.ascii	" [with Type = OT::Lookup]\000"
	.section	.rodata._ZZN2OT7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES3_E9serializeEPNS_22hb_serialize_context_tEjE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES3_E9serializeEPNS_22hb_serialize_context_tEjE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES3_E9serializeEPNS_22hb_serialize_context_tEjE19__PRETTY_FUNCTION__, 196
_ZZN2OT7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES3_E9serializeEPNS_22hb_serialize_context_tEjE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::ArrayOf<Type, LenType>::serialize(OT::hb_s"
	.ascii	"erialize_context_t*, unsigned int) [with Type = OT:"
	.ascii	":Offset<OT::IntType<short unsigned int, 2u> >; LenT"
	.ascii	"ype = OT::IntType<short unsigned int, 2u>]\000"
	.section	.rodata._ZZN2OT22hb_serialize_context_t10extend_minINS_7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES5_EEEEPT_RS8_E19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT22hb_serialize_context_t10extend_minINS_7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES5_EEEEPT_RS8_E19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT22hb_serialize_context_t10extend_minINS_7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES5_EEEEPT_RS8_E19__PRETTY_FUNCTION__, 129
_ZZN2OT22hb_serialize_context_t10extend_minINS_7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES5_EEEEPT_RS8_E19__PRETTY_FUNCTION__:
	.ascii	"Type* OT::hb_serialize_context_t::extend_min(Type&)"
	.ascii	" [with Type = OT::ArrayOf<OT::Offset<OT::IntType<sh"
	.ascii	"ort unsigned int, 2u> > >]\000"
	.section	.rodata._ZZN2OT22hb_serialize_context_t6extendINS_7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES5_EEEEPT_RS8_E19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT22hb_serialize_context_t6extendINS_7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES5_EEEEPT_RS8_E19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT22hb_serialize_context_t6extendINS_7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES5_EEEEPT_RS8_E19__PRETTY_FUNCTION__, 125
_ZZN2OT22hb_serialize_context_t6extendINS_7ArrayOfINS_6OffsetINS_7IntTypeItLj2EEEEES5_EEEEPT_RS8_E19__PRETTY_FUNCTION__:
	.ascii	"Type* OT::hb_serialize_context_t::extend(Type&) [wi"
	.ascii	"th Type = OT::ArrayOf<OT::Offset<OT::IntType<short "
	.ascii	"unsigned int, 2u> > >]\000"
	.section	.rodata._ZZN2OT11SingleSubst9serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEES7_jE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT11SingleSubst9serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEES7_jE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT11SingleSubst9serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEES7_jE19__PRETTY_FUNCTION__, 181
_ZZN2OT11SingleSubst9serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEES7_jE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::SingleSubst::serialize(OT::hb_serialize_co"
	.ascii	"ntext_t*, OT::Supplier<OT::IntType<short unsigned i"
	.ascii	"nt, 2u> >&, OT::Supplier<OT::IntType<short unsigned"
	.ascii	" int, 2u> >&, unsigned int)\000"
	.section	.rodata._ZZN2OT22hb_serialize_context_t10extend_minINS_7IntTypeItLj2EEEEEPT_RS4_E19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT22hb_serialize_context_t10extend_minINS_7IntTypeItLj2EEEEEPT_RS4_E19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT22hb_serialize_context_t10extend_minINS_7IntTypeItLj2EEEEEPT_RS4_E19__PRETTY_FUNCTION__, 102
_ZZN2OT22hb_serialize_context_t10extend_minINS_7IntTypeItLj2EEEEEPT_RS4_E19__PRETTY_FUNCTION__:
	.ascii	"Type* OT::hb_serialize_context_t::extend_min(Type&)"
	.ascii	" [with Type = OT::IntType<short unsigned int, 2u>]\000"
	.section	.rodata._ZZN2OT18SingleSubstFormat19serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEEjiE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT18SingleSubstFormat19serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEEjiE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT18SingleSubstFormat19serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEEjiE19__PRETTY_FUNCTION__, 140
_ZZN2OT18SingleSubstFormat19serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEEjiE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::SingleSubstFormat1::serialize(OT::hb_seria"
	.ascii	"lize_context_t*, OT::Supplier<OT::IntType<short uns"
	.ascii	"igned int, 2u> >&, unsigned int, int)\000"
	.section	.rodata._ZZN2OT22hb_serialize_context_t10extend_minINS_18SingleSubstFormat1EEEPT_RS3_E19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT22hb_serialize_context_t10extend_minINS_18SingleSubstFormat1EEEPT_RS3_E19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT22hb_serialize_context_t10extend_minINS_18SingleSubstFormat1EEEPT_RS3_E19__PRETTY_FUNCTION__, 89
_ZZN2OT22hb_serialize_context_t10extend_minINS_18SingleSubstFormat1EEEPT_RS3_E19__PRETTY_FUNCTION__:
	.ascii	"Type* OT::hb_serialize_context_t::extend_min(Type&)"
	.ascii	" [with Type = OT::SingleSubstFormat1]\000"
	.section	.rodata._ZZN2OT8Coverage9serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEEjE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT8Coverage9serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEEjE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT8Coverage9serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEEjE19__PRETTY_FUNCTION__, 125
_ZZN2OT8Coverage9serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEEjE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::Coverage::serialize(OT::hb_serialize_conte"
	.ascii	"xt_t*, OT::Supplier<OT::IntType<short unsigned int,"
	.ascii	" 2u> >&, unsigned int)\000"
	.section	.rodata._ZZN2OT22hb_serialize_context_t10extend_minINS_8CoverageEEEPT_RS3_E19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT22hb_serialize_context_t10extend_minINS_8CoverageEEEPT_RS3_E19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT22hb_serialize_context_t10extend_minINS_8CoverageEEEPT_RS3_E19__PRETTY_FUNCTION__, 79
_ZZN2OT22hb_serialize_context_t10extend_minINS_8CoverageEEEPT_RS3_E19__PRETTY_FUNCTION__:
	.ascii	"Type* OT::hb_serialize_context_t::extend_min(Type&)"
	.ascii	" [with Type = OT::Coverage]\000"
	.section	.rodata._ZZN2OT15CoverageFormat19serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEEjE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT15CoverageFormat19serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEEjE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT15CoverageFormat19serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEEjE19__PRETTY_FUNCTION__, 132
_ZZN2OT15CoverageFormat19serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEEjE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::CoverageFormat1::serialize(OT::hb_serializ"
	.ascii	"e_context_t*, OT::Supplier<OT::IntType<short unsign"
	.ascii	"ed int, 2u> >&, unsigned int)\000"
	.section	.rodata._ZZN2OT22hb_serialize_context_t10extend_minINS_15CoverageFormat1EEEPT_RS3_E19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT22hb_serialize_context_t10extend_minINS_15CoverageFormat1EEEPT_RS3_E19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT22hb_serialize_context_t10extend_minINS_15CoverageFormat1EEEPT_RS3_E19__PRETTY_FUNCTION__, 86
_ZZN2OT22hb_serialize_context_t10extend_minINS_15CoverageFormat1EEEPT_RS3_E19__PRETTY_FUNCTION__:
	.ascii	"Type* OT::hb_serialize_context_t::extend_min(Type&)"
	.ascii	" [with Type = OT::CoverageFormat1]\000"
	.section	.rodata._ZZN2OT22hb_serialize_context_t6extendINS_13SortedArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_E19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT22hb_serialize_context_t6extendINS_13SortedArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_E19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT22hb_serialize_context_t6extendINS_13SortedArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_E19__PRETTY_FUNCTION__, 118
_ZZN2OT22hb_serialize_context_t6extendINS_13SortedArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_E19__PRETTY_FUNCTION__:
	.ascii	"Type* OT::hb_serialize_context_t::extend(Type&) [wi"
	.ascii	"th Type = OT::SortedArrayOf<OT::IntType<short unsig"
	.ascii	"ned int, 2u> >]\000"
	.section	.rodata._ZZN2OT15CoverageFormat29serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEEjE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT15CoverageFormat29serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEEjE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT15CoverageFormat29serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEEjE19__PRETTY_FUNCTION__, 132
_ZZN2OT15CoverageFormat29serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEEjE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::CoverageFormat2::serialize(OT::hb_serializ"
	.ascii	"e_context_t*, OT::Supplier<OT::IntType<short unsign"
	.ascii	"ed int, 2u> >&, unsigned int)\000"
	.section	.rodata._ZZN2OT22hb_serialize_context_t10extend_minINS_15CoverageFormat2EEEPT_RS3_E19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT22hb_serialize_context_t10extend_minINS_15CoverageFormat2EEEPT_RS3_E19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT22hb_serialize_context_t10extend_minINS_15CoverageFormat2EEEPT_RS3_E19__PRETTY_FUNCTION__, 86
_ZZN2OT22hb_serialize_context_t10extend_minINS_15CoverageFormat2EEEPT_RS3_E19__PRETTY_FUNCTION__:
	.ascii	"Type* OT::hb_serialize_context_t::extend_min(Type&)"
	.ascii	" [with Type = OT::CoverageFormat2]\000"
	.section	.rodata._ZZN2OT22hb_serialize_context_t6extendINS_13SortedArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEEEEEPT_RS7_E19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT22hb_serialize_context_t6extendINS_13SortedArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEEEEEPT_RS7_E19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT22hb_serialize_context_t6extendINS_13SortedArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEEEEEPT_RS7_E19__PRETTY_FUNCTION__, 97
_ZZN2OT22hb_serialize_context_t6extendINS_13SortedArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEEEEEPT_RS7_E19__PRETTY_FUNCTION__:
	.ascii	"Type* OT::hb_serialize_context_t::extend(Type&) [wi"
	.ascii	"th Type = OT::SortedArrayOf<OT::RangeRecord>]\000"
	.section	.rodata._ZZN2OT18SingleSubstFormat29serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEES7_jE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT18SingleSubstFormat29serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEES7_jE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT18SingleSubstFormat29serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEES7_jE19__PRETTY_FUNCTION__, 188
_ZZN2OT18SingleSubstFormat29serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEES7_jE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::SingleSubstFormat2::serialize(OT::hb_seria"
	.ascii	"lize_context_t*, OT::Supplier<OT::IntType<short uns"
	.ascii	"igned int, 2u> >&, OT::Supplier<OT::IntType<short u"
	.ascii	"nsigned int, 2u> >&, unsigned int)\000"
	.section	.rodata._ZZN2OT22hb_serialize_context_t10extend_minINS_18SingleSubstFormat2EEEPT_RS3_E19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT22hb_serialize_context_t10extend_minINS_18SingleSubstFormat2EEEPT_RS3_E19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT22hb_serialize_context_t10extend_minINS_18SingleSubstFormat2EEEPT_RS3_E19__PRETTY_FUNCTION__, 89
_ZZN2OT22hb_serialize_context_t10extend_minINS_18SingleSubstFormat2EEEPT_RS3_E19__PRETTY_FUNCTION__:
	.ascii	"Type* OT::hb_serialize_context_t::extend_min(Type&)"
	.ascii	" [with Type = OT::SingleSubstFormat2]\000"
	.section	.rodata._ZZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_E9serializeEPNS_22hb_serialize_context_tERNS_8SupplierIS2_EEjE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_E9serializeEPNS_22hb_serialize_context_tERNS_8SupplierIS2_EEjE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_E9serializeEPNS_22hb_serialize_context_tERNS_8SupplierIS2_EEjE19__PRETTY_FUNCTION__, 204
_ZZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_E9serializeEPNS_22hb_serialize_context_tERNS_8SupplierIS2_EEjE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::ArrayOf<Type, LenType>::serialize(OT::hb_s"
	.ascii	"erialize_context_t*, OT::Supplier<Type>&, unsigned "
	.ascii	"int) [with Type = OT::IntType<short unsigned int, 2"
	.ascii	"u>; LenType = OT::IntType<short unsigned int, 2u>]\000"
	.section	.rodata._ZZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_E9serializeEPNS_22hb_serialize_context_tEjE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_E9serializeEPNS_22hb_serialize_context_tEjE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_E9serializeEPNS_22hb_serialize_context_tEjE19__PRETTY_FUNCTION__, 183
_ZZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_E9serializeEPNS_22hb_serialize_context_tEjE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::ArrayOf<Type, LenType>::serialize(OT::hb_s"
	.ascii	"erialize_context_t*, unsigned int) [with Type = OT:"
	.ascii	":IntType<short unsigned int, 2u>; LenType = OT::Int"
	.ascii	"Type<short unsigned int, 2u>]\000"
	.section	.rodata._ZZN2OT22hb_serialize_context_t10extend_minINS_7ArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_E19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT22hb_serialize_context_t10extend_minINS_7ArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_E19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT22hb_serialize_context_t10extend_minINS_7ArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_E19__PRETTY_FUNCTION__, 153
_ZZN2OT22hb_serialize_context_t10extend_minINS_7ArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_E19__PRETTY_FUNCTION__:
	.ascii	"Type* OT::hb_serialize_context_t::extend_min(Type&)"
	.ascii	" [with Type = OT::ArrayOf<OT::IntType<short unsigne"
	.ascii	"d int, 2u>, OT::IntType<short unsigned int, 2u> >]\000"
	.section	.rodata._ZZN2OT22hb_serialize_context_t6extendINS_7ArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_E19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT22hb_serialize_context_t6extendINS_7ArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_E19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT22hb_serialize_context_t6extendINS_7ArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_E19__PRETTY_FUNCTION__, 149
_ZZN2OT22hb_serialize_context_t6extendINS_7ArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_E19__PRETTY_FUNCTION__:
	.ascii	"Type* OT::hb_serialize_context_t::extend(Type&) [wi"
	.ascii	"th Type = OT::ArrayOf<OT::IntType<short unsigned in"
	.ascii	"t, 2u>, OT::IntType<short unsigned int, 2u> >]\000"
	.section	.rodata._ZZN2OT22hb_serialize_context_t4copyINS_11SubstLookupEEEPT_vE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT22hb_serialize_context_t4copyINS_11SubstLookupEEEPT_vE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT22hb_serialize_context_t4copyINS_11SubstLookupEEEPT_vE19__PRETTY_FUNCTION__, 71
_ZZN2OT22hb_serialize_context_t4copyINS_11SubstLookupEEEPT_vE19__PRETTY_FUNCTION__:
	.ascii	"Type* OT::hb_serialize_context_t::copy() [with Type"
	.ascii	" = OT::SubstLookup]\000"
	.section	.rodata._ZZN2OT11SubstLookup18serialize_ligatureEPNS_22hb_serialize_context_tEjRNS_8SupplierINS_7IntTypeItLj2EEEEERNS3_IjEEjS7_S9_S7_E19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT11SubstLookup18serialize_ligatureEPNS_22hb_serialize_context_tEjRNS_8SupplierINS_7IntTypeItLj2EEEEERNS3_IjEEjS7_S9_S7_E19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT11SubstLookup18serialize_ligatureEPNS_22hb_serialize_context_tEjRNS_8SupplierINS_7IntTypeItLj2EEEEERNS3_IjEEjS7_S9_S7_E19__PRETTY_FUNCTION__, 311
_ZZN2OT11SubstLookup18serialize_ligatureEPNS_22hb_serialize_context_tEjRNS_8SupplierINS_7IntTypeItLj2EEEEERNS3_IjEEjS7_S9_S7_E19__PRETTY_FUNCTION__:
	.ascii	"bool OT::SubstLookup::serialize_ligature(OT::hb_ser"
	.ascii	"ialize_context_t*, uint32_t, OT::Supplier<OT::IntTy"
	.ascii	"pe<short unsigned int, 2u> >&, OT::Supplier<unsigne"
	.ascii	"d int>&, unsigned int, OT::Supplier<OT::IntType<sho"
	.ascii	"rt unsigned int, 2u> >&, OT::Supplier<unsigned int>"
	.ascii	"&, OT::Supplier<OT::IntType<short unsigned int, 2u>"
	.ascii	" >&)\000"
	.section	.rodata._ZZN2OT13LigatureSubst9serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEERNS3_IjEEjS7_S9_S7_E19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT13LigatureSubst9serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEERNS3_IjEEjS7_S9_S7_E19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT13LigatureSubst9serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEERNS3_IjEEjS7_S9_S7_E19__PRETTY_FUNCTION__, 294
_ZZN2OT13LigatureSubst9serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEERNS3_IjEEjS7_S9_S7_E19__PRETTY_FUNCTION__:
	.ascii	"bool OT::LigatureSubst::serialize(OT::hb_serialize_"
	.ascii	"context_t*, OT::Supplier<OT::IntType<short unsigned"
	.ascii	" int, 2u> >&, OT::Supplier<unsigned int>&, unsigned"
	.ascii	" int, OT::Supplier<OT::IntType<short unsigned int, "
	.ascii	"2u> >&, OT::Supplier<unsigned int>&, OT::Supplier<O"
	.ascii	"T::IntType<short unsigned int, 2u> >&)\000"
	.section	.rodata._ZZN2OT20LigatureSubstFormat19serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEERNS3_IjEEjS7_S9_S7_E19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT20LigatureSubstFormat19serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEERNS3_IjEEjS7_S9_S7_E19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT20LigatureSubstFormat19serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEERNS3_IjEEjS7_S9_S7_E19__PRETTY_FUNCTION__, 301
_ZZN2OT20LigatureSubstFormat19serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEERNS3_IjEEjS7_S9_S7_E19__PRETTY_FUNCTION__:
	.ascii	"bool OT::LigatureSubstFormat1::serialize(OT::hb_ser"
	.ascii	"ialize_context_t*, OT::Supplier<OT::IntType<short u"
	.ascii	"nsigned int, 2u> >&, OT::Supplier<unsigned int>&, u"
	.ascii	"nsigned int, OT::Supplier<OT::IntType<short unsigne"
	.ascii	"d int, 2u> >&, OT::Supplier<unsigned int>&, OT::Sup"
	.ascii	"plier<OT::IntType<short unsigned int, 2u> >&)\000"
	.section	.rodata._ZZN2OT22hb_serialize_context_t10extend_minINS_20LigatureSubstFormat1EEEPT_RS3_E19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT22hb_serialize_context_t10extend_minINS_20LigatureSubstFormat1EEEPT_RS3_E19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT22hb_serialize_context_t10extend_minINS_20LigatureSubstFormat1EEEPT_RS3_E19__PRETTY_FUNCTION__, 91
_ZZN2OT22hb_serialize_context_t10extend_minINS_20LigatureSubstFormat1EEEPT_RS3_E19__PRETTY_FUNCTION__:
	.ascii	"Type* OT::hb_serialize_context_t::extend_min(Type&)"
	.ascii	" [with Type = OT::LigatureSubstFormat1]\000"
	.section	.rodata._ZZN2OT7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES4_E9serializeEPNS_22hb_serialize_context_tEjE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES4_E9serializeEPNS_22hb_serialize_context_tEjE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES4_E9serializeEPNS_22hb_serialize_context_tEjE19__PRETTY_FUNCTION__, 215
_ZZN2OT7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES4_E9serializeEPNS_22hb_serialize_context_tEjE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::ArrayOf<Type, LenType>::serialize(OT::hb_s"
	.ascii	"erialize_context_t*, unsigned int) [with Type = OT:"
	.ascii	":OffsetTo<OT::LigatureSet, OT::IntType<short unsign"
	.ascii	"ed int, 2u> >; LenType = OT::IntType<short unsigned"
	.ascii	" int, 2u>]\000"
	.section	.rodata._ZZN2OT22hb_serialize_context_t10extend_minINS_7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES6_EEEEPT_RS9_E19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT22hb_serialize_context_t10extend_minINS_7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES6_EEEEPT_RS9_E19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT22hb_serialize_context_t10extend_minINS_7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES6_EEEEPT_RS9_E19__PRETTY_FUNCTION__, 185
_ZZN2OT22hb_serialize_context_t10extend_minINS_7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES6_EEEEPT_RS9_E19__PRETTY_FUNCTION__:
	.ascii	"Type* OT::hb_serialize_context_t::extend_min(Type&)"
	.ascii	" [with Type = OT::ArrayOf<OT::OffsetTo<OT::Ligature"
	.ascii	"Set, OT::IntType<short unsigned int, 2u> >, OT::Int"
	.ascii	"Type<short unsigned int, 2u> >]\000"
	.section	.rodata._ZZN2OT22hb_serialize_context_t6extendINS_7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES6_EEEEPT_RS9_E19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT22hb_serialize_context_t6extendINS_7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES6_EEEEPT_RS9_E19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT22hb_serialize_context_t6extendINS_7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES6_EEEEPT_RS9_E19__PRETTY_FUNCTION__, 181
_ZZN2OT22hb_serialize_context_t6extendINS_7ArrayOfINS_8OffsetToINS_11LigatureSetENS_7IntTypeItLj2EEEEES6_EEEEPT_RS9_E19__PRETTY_FUNCTION__:
	.ascii	"Type* OT::hb_serialize_context_t::extend(Type&) [wi"
	.ascii	"th Type = OT::ArrayOf<OT::OffsetTo<OT::LigatureSet,"
	.ascii	" OT::IntType<short unsigned int, 2u> >, OT::IntType"
	.ascii	"<short unsigned int, 2u> >]\000"
	.section	.rodata._ZZN2OT11LigatureSet9serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEERNS3_IjEEjS7_E19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT11LigatureSet9serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEERNS3_IjEEjS7_E19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT11LigatureSet9serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEERNS3_IjEEjS7_E19__PRETTY_FUNCTION__, 210
_ZZN2OT11LigatureSet9serializeEPNS_22hb_serialize_context_tERNS_8SupplierINS_7IntTypeItLj2EEEEERNS3_IjEEjS7_E19__PRETTY_FUNCTION__:
	.ascii	"bool OT::LigatureSet::serialize(OT::hb_serialize_co"
	.ascii	"ntext_t*, OT::Supplier<OT::IntType<short unsigned i"
	.ascii	"nt, 2u> >&, OT::Supplier<unsigned int>&, unsigned i"
	.ascii	"nt, OT::Supplier<OT::IntType<short unsigned int, 2u"
	.ascii	"> >&)\000"
	.section	.rodata._ZZN2OT22hb_serialize_context_t10extend_minINS_11LigatureSetEEEPT_RS3_E19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT22hb_serialize_context_t10extend_minINS_11LigatureSetEEEPT_RS3_E19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT22hb_serialize_context_t10extend_minINS_11LigatureSetEEEPT_RS3_E19__PRETTY_FUNCTION__, 82
_ZZN2OT22hb_serialize_context_t10extend_minINS_11LigatureSetEEEPT_RS3_E19__PRETTY_FUNCTION__:
	.ascii	"Type* OT::hb_serialize_context_t::extend_min(Type&)"
	.ascii	" [with Type = OT::LigatureSet]\000"
	.section	.rodata._ZZN2OT7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES4_E9serializeEPNS_22hb_serialize_context_tEjE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES4_E9serializeEPNS_22hb_serialize_context_tEjE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES4_E9serializeEPNS_22hb_serialize_context_tEjE19__PRETTY_FUNCTION__, 212
_ZZN2OT7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES4_E9serializeEPNS_22hb_serialize_context_tEjE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::ArrayOf<Type, LenType>::serialize(OT::hb_s"
	.ascii	"erialize_context_t*, unsigned int) [with Type = OT:"
	.ascii	":OffsetTo<OT::Ligature, OT::IntType<short unsigned "
	.ascii	"int, 2u> >; LenType = OT::IntType<short unsigned in"
	.ascii	"t, 2u>]\000"
	.section	.rodata._ZZN2OT22hb_serialize_context_t10extend_minINS_7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES6_EEEEPT_RS9_E19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT22hb_serialize_context_t10extend_minINS_7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES6_EEEEPT_RS9_E19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT22hb_serialize_context_t10extend_minINS_7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES6_EEEEPT_RS9_E19__PRETTY_FUNCTION__, 182
_ZZN2OT22hb_serialize_context_t10extend_minINS_7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES6_EEEEPT_RS9_E19__PRETTY_FUNCTION__:
	.ascii	"Type* OT::hb_serialize_context_t::extend_min(Type&)"
	.ascii	" [with Type = OT::ArrayOf<OT::OffsetTo<OT::Ligature"
	.ascii	", OT::IntType<short unsigned int, 2u> >, OT::IntTyp"
	.ascii	"e<short unsigned int, 2u> >]\000"
	.section	.rodata._ZZN2OT22hb_serialize_context_t6extendINS_7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES6_EEEEPT_RS9_E19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT22hb_serialize_context_t6extendINS_7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES6_EEEEPT_RS9_E19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT22hb_serialize_context_t6extendINS_7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES6_EEEEPT_RS9_E19__PRETTY_FUNCTION__, 178
_ZZN2OT22hb_serialize_context_t6extendINS_7ArrayOfINS_8OffsetToINS_8LigatureENS_7IntTypeItLj2EEEEES6_EEEEPT_RS9_E19__PRETTY_FUNCTION__:
	.ascii	"Type* OT::hb_serialize_context_t::extend(Type&) [wi"
	.ascii	"th Type = OT::ArrayOf<OT::OffsetTo<OT::Ligature, OT"
	.ascii	"::IntType<short unsigned int, 2u> >, OT::IntType<sh"
	.ascii	"ort unsigned int, 2u> >]\000"
	.section	.rodata._ZZN2OT8Ligature9serializeEPNS_22hb_serialize_context_tENS_7IntTypeItLj2EEERNS_8SupplierIS4_EEjE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT8Ligature9serializeEPNS_22hb_serialize_context_tENS_7IntTypeItLj2EEERNS_8SupplierIS4_EEjE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT8Ligature9serializeEPNS_22hb_serialize_context_tENS_7IntTypeItLj2EEERNS_8SupplierIS4_EEjE19__PRETTY_FUNCTION__, 138
_ZZN2OT8Ligature9serializeEPNS_22hb_serialize_context_tENS_7IntTypeItLj2EEERNS_8SupplierIS4_EEjE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::Ligature::serialize(OT::hb_serialize_conte"
	.ascii	"xt_t*, OT::GlyphID, OT::Supplier<OT::IntType<short "
	.ascii	"unsigned int, 2u> >&, unsigned int)\000"
	.section	.rodata._ZZN2OT22hb_serialize_context_t10extend_minINS_8LigatureEEEPT_RS3_E19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT22hb_serialize_context_t10extend_minINS_8LigatureEEEPT_RS3_E19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT22hb_serialize_context_t10extend_minINS_8LigatureEEEPT_RS3_E19__PRETTY_FUNCTION__, 79
_ZZN2OT22hb_serialize_context_t10extend_minINS_8LigatureEEEPT_RS3_E19__PRETTY_FUNCTION__:
	.ascii	"Type* OT::hb_serialize_context_t::extend_min(Type&)"
	.ascii	" [with Type = OT::Ligature]\000"
	.section	.rodata._ZZN2OT15HeadlessArrayOfINS_7IntTypeItLj2EEES2_E9serializeEPNS_22hb_serialize_context_tERNS_8SupplierIS2_EEjE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT15HeadlessArrayOfINS_7IntTypeItLj2EEES2_E9serializeEPNS_22hb_serialize_context_tERNS_8SupplierIS2_EEjE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT15HeadlessArrayOfINS_7IntTypeItLj2EEES2_E9serializeEPNS_22hb_serialize_context_tERNS_8SupplierIS2_EEjE19__PRETTY_FUNCTION__, 212
_ZZN2OT15HeadlessArrayOfINS_7IntTypeItLj2EEES2_E9serializeEPNS_22hb_serialize_context_tERNS_8SupplierIS2_EEjE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::HeadlessArrayOf<Type, LenType>::serialize("
	.ascii	"OT::hb_serialize_context_t*, OT::Supplier<Type>&, u"
	.ascii	"nsigned int) [with Type = OT::IntType<short unsigne"
	.ascii	"d int, 2u>; LenType = OT::IntType<short unsigned in"
	.ascii	"t, 2u>]\000"
	.section	.rodata._ZZN2OT22hb_serialize_context_t10extend_minINS_15HeadlessArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_E19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT22hb_serialize_context_t10extend_minINS_15HeadlessArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_E19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT22hb_serialize_context_t10extend_minINS_15HeadlessArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_E19__PRETTY_FUNCTION__, 124
_ZZN2OT22hb_serialize_context_t10extend_minINS_15HeadlessArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_E19__PRETTY_FUNCTION__:
	.ascii	"Type* OT::hb_serialize_context_t::extend_min(Type&)"
	.ascii	" [with Type = OT::HeadlessArrayOf<OT::IntType<short"
	.ascii	" unsigned int, 2u> >]\000"
	.section	.rodata._ZZN2OT22hb_serialize_context_t6extendINS_15HeadlessArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_E19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT22hb_serialize_context_t6extendINS_15HeadlessArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_E19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT22hb_serialize_context_t6extendINS_15HeadlessArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_E19__PRETTY_FUNCTION__, 120
_ZZN2OT22hb_serialize_context_t6extendINS_15HeadlessArrayOfINS_7IntTypeItLj2EEES4_EEEEPT_RS6_E19__PRETTY_FUNCTION__:
	.ascii	"Type* OT::hb_serialize_context_t::extend(Type&) [wi"
	.ascii	"th Type = OT::HeadlessArrayOf<OT::IntType<short uns"
	.ascii	"igned int, 2u> >]\000"
	.section	.rodata._ZZNK2OT19SubstLookupSubTable8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_jE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZNK2OT19SubstLookupSubTable8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_jE19__PRETTY_FUNCTION__, %object
	.size	_ZZNK2OT19SubstLookupSubTable8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_jE19__PRETTY_FUNCTION__, 196
_ZZNK2OT19SubstLookupSubTable8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_jE19__PRETTY_FUNCTION__:
	.ascii	"typename context_t::return_t OT::SubstLookupSubTabl"
	.ascii	"e::dispatch(context_t*, unsigned int) const [with c"
	.ascii	"ontext_t = OT::hb_get_coverage_context_t; typename "
	.ascii	"context_t::return_t = const OT::Coverage&]\000"
	.section	.rodata._ZZNK2OT11SingleSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_E19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZNK2OT11SingleSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_E19__PRETTY_FUNCTION__, %object
	.size	_ZZNK2OT11SingleSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_E19__PRETTY_FUNCTION__, 174
_ZZNK2OT11SingleSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_E19__PRETTY_FUNCTION__:
	.ascii	"typename context_t::return_t OT::SingleSubst::dispa"
	.ascii	"tch(context_t*) const [with context_t = OT::hb_get_"
	.ascii	"coverage_context_t; typename context_t::return_t = "
	.ascii	"const OT::Coverage&]\000"
	.section	.rodata._ZZNK2OT13MultipleSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_E19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZNK2OT13MultipleSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_E19__PRETTY_FUNCTION__, %object
	.size	_ZZNK2OT13MultipleSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_E19__PRETTY_FUNCTION__, 176
_ZZNK2OT13MultipleSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_E19__PRETTY_FUNCTION__:
	.ascii	"typename context_t::return_t OT::MultipleSubst::dis"
	.ascii	"patch(context_t*) const [with context_t = OT::hb_ge"
	.ascii	"t_coverage_context_t; typename context_t::return_t "
	.ascii	"= const OT::Coverage&]\000"
	.section	.rodata._ZZNK2OT14AlternateSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_E19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZNK2OT14AlternateSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_E19__PRETTY_FUNCTION__, %object
	.size	_ZZNK2OT14AlternateSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_E19__PRETTY_FUNCTION__, 177
_ZZNK2OT14AlternateSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_E19__PRETTY_FUNCTION__:
	.ascii	"typename context_t::return_t OT::AlternateSubst::di"
	.ascii	"spatch(context_t*) const [with context_t = OT::hb_g"
	.ascii	"et_coverage_context_t; typename context_t::return_t"
	.ascii	" = const OT::Coverage&]\000"
	.section	.rodata._ZZNK2OT13LigatureSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_E19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZNK2OT13LigatureSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_E19__PRETTY_FUNCTION__, %object
	.size	_ZZNK2OT13LigatureSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_E19__PRETTY_FUNCTION__, 176
_ZZNK2OT13LigatureSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_E19__PRETTY_FUNCTION__:
	.ascii	"typename context_t::return_t OT::LigatureSubst::dis"
	.ascii	"patch(context_t*) const [with context_t = OT::hb_ge"
	.ascii	"t_coverage_context_t; typename context_t::return_t "
	.ascii	"= const OT::Coverage&]\000"
	.section	.rodata._ZZNK2OT7Context8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_E19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZNK2OT7Context8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_E19__PRETTY_FUNCTION__, %object
	.size	_ZZNK2OT7Context8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_E19__PRETTY_FUNCTION__, 170
_ZZNK2OT7Context8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_E19__PRETTY_FUNCTION__:
	.ascii	"typename context_t::return_t OT::Context::dispatch("
	.ascii	"context_t*) const [with context_t = OT::hb_get_cove"
	.ascii	"rage_context_t; typename context_t::return_t = cons"
	.ascii	"t OT::Coverage&]\000"
	.section	.rodata._ZZNK2OT12ChainContext8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_E19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZNK2OT12ChainContext8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_E19__PRETTY_FUNCTION__, %object
	.size	_ZZNK2OT12ChainContext8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_E19__PRETTY_FUNCTION__, 175
_ZZNK2OT12ChainContext8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_E19__PRETTY_FUNCTION__:
	.ascii	"typename context_t::return_t OT::ChainContext::disp"
	.ascii	"atch(context_t*) const [with context_t = OT::hb_get"
	.ascii	"_coverage_context_t; typename context_t::return_t ="
	.ascii	" const OT::Coverage&]\000"
	.section	.rodata._ZZNK2OT23ReverseChainSingleSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_E19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZNK2OT23ReverseChainSingleSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_E19__PRETTY_FUNCTION__, %object
	.size	_ZZNK2OT23ReverseChainSingleSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_E19__PRETTY_FUNCTION__, 186
_ZZNK2OT23ReverseChainSingleSubst8dispatchINS_25hb_get_coverage_context_tEEENT_8return_tEPS3_E19__PRETTY_FUNCTION__:
	.ascii	"typename context_t::return_t OT::ReverseChainSingle"
	.ascii	"Subst::dispatch(context_t*) const [with context_t ="
	.ascii	" OT::hb_get_coverage_context_t; typename context_t:"
	.ascii	":return_t = const OT::Coverage&]\000"
	.hidden	_ZN11hb_buffer_t14deallocate_varEjjPKc
	.hidden	_ZN11hb_buffer_t12allocate_varEjjPKc
	.hidden	_Z30hb_ot_layout_substitute_lookupPN2OT18hb_apply_context_tERKNS_11SubstLookupERK33hb_ot_layout_lookup_accelerator_t
	.hidden	_ZN19hb_ot_map_builder_t9add_pauseEjPFvPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tE
	.hidden	_ZN19hb_ot_map_builder_t11add_featureEjj25hb_ot_map_feature_flags_t
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
