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
	.file	"hb-ot-shape-complex-hangul.cc"
	.section	.text._ZN11hb_buffer_t3curEj,"axG",%progbits,_ZN11hb_buffer_t3curEj,comdat
	.align	2
	.weak	_ZN11hb_buffer_t3curEj
	.thumb
	.thumb_func
	.type	_ZN11hb_buffer_t3curEj, %function
_ZN11hb_buffer_t3curEj:
	.fnstart
.LFB95:
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
.LFB105:
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
	beq	.L4
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #104]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	cmp	r2, r3
	bne	.L5
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #92]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	cmp	r2, r3
	beq	.L6
.L5:
	ldr	r0, [r7, #4]
	movs	r1, #1
	movs	r2, #1
	bl	_ZN11hb_buffer_t13make_room_forEjj(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L7
	b	.L3
.L7:
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
.L6:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #92]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #92]
.L4:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #84]
.L3:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.fnend
	.size	_ZN11hb_buffer_t10next_glyphEv, .-_ZN11hb_buffer_t10next_glyphEv
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
	bcc	.L10
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3]
	cmp	r2, r3
	bls	.L11
	movs	r3, #1
	b	.L13
.L11:
	movs	r3, #0
	b	.L13
.L10:
	mov	r3, #-1
.L13:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN11hb_ot_map_t13feature_map_t3cmpEPKS0_S2_, .-_ZN11hb_ot_map_t13feature_map_t3cmpEPKS0_S2_
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
	beq	.L16
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	b	.L17
.L16:
	movs	r3, #0
.L17:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK11hb_ot_map_t10get_1_maskEj, .-_ZNK11hb_ot_map_t10get_1_maskEj
	.section	.text._ZN9hb_font_t9has_glyphEj,"axG",%progbits,_ZN9hb_font_t9has_glyphEj,comdat
	.align	2
	.weak	_ZN9hb_font_t9has_glyphEj
	.thumb
	.thumb_func
	.type	_ZN9hb_font_t9has_glyphEj, %function
_ZN9hb_font_t9has_glyphEj:
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
.LFB151:
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
	.section	.text._ZL23collect_features_hangulP21hb_ot_shape_planner_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL23collect_features_hangulP21hb_ot_shape_planner_t, %function
_ZL23collect_features_hangulP21hb_ot_shape_planner_t:
	.fnstart
.LFB258:
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
	adds	r3, r3, #28
	str	r3, [r7, #8]
	movs	r3, #1
	str	r3, [r7, #12]
	b	.L24
.L25:
	ldr	r3, .L26
.LPIC0:
	add	r3, pc
	ldr	r2, [r7, #12]
	ldr	r3, [r3, r2, lsl #2]
	ldr	r0, [r7, #8]
	mov	r1, r3
	movs	r2, #1
	movs	r3, #0
	bl	_ZN19hb_ot_map_builder_t11add_featureEjj25hb_ot_map_feature_flags_t(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L24:
	ldr	r3, [r7, #12]
	cmp	r3, #3
	bls	.L25
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L27:
	.align	2
.L26:
	.word	_ZL15hangul_features-(.LPIC0+4)
	.fnend
	.size	_ZL23collect_features_hangulP21hb_ot_shape_planner_t, .-_ZL23collect_features_hangulP21hb_ot_shape_planner_t
	.section	.text._ZL24override_features_hangulP21hb_ot_shape_planner_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL24override_features_hangulP21hb_ot_shape_planner_t, %function
_ZL24override_features_hangulP21hb_ot_shape_planner_t:
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
	ldr	r3, [r7, #4]
	adds	r3, r3, #28
	mov	r0, r3
	movw	r1, #27764
	movt	r1, 25441
	movs	r2, #0
	movs	r3, #1
	bl	_ZN19hb_ot_map_builder_t11add_featureEjj25hb_ot_map_feature_flags_t(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL24override_features_hangulP21hb_ot_shape_planner_t, .-_ZL24override_features_hangulP21hb_ot_shape_planner_t
	.section	.text._ZL18data_create_hangulPK18hb_ot_shape_plan_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL18data_create_hangulPK18hb_ot_shape_plan_t, %function
_ZL18data_create_hangulPK18hb_ot_shape_plan_t:
	.fnstart
.LFB261:
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
	movs	r1, #16
	bl	calloc(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L30
	movs	r3, #0
	b	.L31
.L30:
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L32
.L33:
	ldr	r3, [r7, #4]
	add	r2, r3, #24
	ldr	r3, .L34
.LPIC1:
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
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L32:
	ldr	r3, [r7, #12]
	cmp	r3, #3
	bls	.L33
	ldr	r3, [r7, #8]
.L31:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L35:
	.align	2
.L34:
	.word	_ZL15hangul_features-(.LPIC1+4)
	.fnend
	.size	_ZL18data_create_hangulPK18hb_ot_shape_plan_t, .-_ZL18data_create_hangulPK18hb_ot_shape_plan_t
	.section	.text._ZL19data_destroy_hangulPv,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL19data_destroy_hangulPv, %function
_ZL19data_destroy_hangulPv:
	.fnstart
.LFB262:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	free(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZL19data_destroy_hangulPv, .-_ZL19data_destroy_hangulPv
	.section	.text._ZL18is_zero_width_charP9hb_font_tj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL18is_zero_width_charP9hb_font_tj, %function
_ZL18is_zero_width_charP9hb_font_tj:
	.fnstart
.LFB263:
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
	bl	hb_font_get_glyph(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L38
	ldr	r3, [r7, #12]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	hb_font_get_glyph_h_advance(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L38
	movs	r3, #1
	b	.L39
.L38:
	movs	r3, #0
.L39:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL18is_zero_width_charP9hb_font_tj, .-_ZL18is_zero_width_charP9hb_font_tj
	.section	.rodata
	.align	2
.LC0:
	.ascii	"hangul_shaping_feature\000"
	.section	.text._ZL22preprocess_text_hangulPK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL22preprocess_text_hangulPK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t, %function
_ZL22preprocess_text_hangulPK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t:
	.fnstart
.LFB264:
	@ args = 0, pretend = 0, frame = 144
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #152
	sub	sp, sp, #152
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r0, [r7, #8]
	movs	r1, #6
	movs	r2, #1
	ldr	r3, .L91
.LPIC2:
	add	r3, pc
	bl	_ZN11hb_buffer_t12allocate_varEjjPKc(PLT)
	ldr	r0, [r7, #8]
	bl	_ZN11hb_buffer_t12clear_outputEv(PLT)
	movs	r3, #0
	str	r3, [r7, #140]
	movs	r3, #0
	str	r3, [r7, #136]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #88]
	str	r3, [r7, #120]
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [r3, #84]
	b	.L42
.L90:
	ldr	r0, [r7, #8]
	movs	r1, #0
	bl	_ZN11hb_buffer_t3curEj(PLT)
	mov	r3, r0
	ldr	r3, [r3]
	str	r3, [r7, #116]
	ldr	r0, [r7, #116]
	movw	r1, #12334
	movw	r2, #12335
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L43
	ldr	r2, [r7, #140]
	ldr	r3, [r7, #136]
	cmp	r2, r3
	bcs	.L44
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #92]
	ldr	r3, [r7, #136]
	cmp	r2, r3
	bne	.L44
	ldr	r0, [r7, #8]
	bl	_ZN11hb_buffer_t10next_glyphEv(PLT)
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #116]
	bl	_ZL18is_zero_width_charP9hb_font_tj(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L45
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #104]
	str	r3, [r7, #112]
	ldr	r2, [r7, #136]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #112]
	add	r3, r3, r2
	add	r4, r7, #48
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7, #140]
	adds	r2, r3, #1
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #112]
	adds	r0, r2, r3
	ldr	r2, [r7, #140]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #112]
	adds	r1, r2, r3
	ldr	r2, [r7, #136]
	ldr	r3, [r7, #140]
	subs	r2, r2, r3
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, r3
	bl	memmove(PLT)
	ldr	r2, [r7, #140]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #112]
	add	r3, r3, r2
	mov	r4, r3
	add	r5, r7, #48
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
.L45:
	ldr	r3, [r7, #136]
	adds	r3, r3, #1
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #140]
	mov	r2, r3
	bl	_ZN11hb_buffer_t18merge_out_clustersEjj(PLT)
	b	.L46
.L44:
	ldr	r0, [r7, #4]
	movw	r1, #9676
	bl	_ZN9hb_font_t9has_glyphEj(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L47
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #116]
	bl	_ZL18is_zero_width_charP9hb_font_tj(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L48
	ldr	r3, [r7, #116]
	str	r3, [r7, #40]
	movw	r3, #9676
	str	r3, [r7, #44]
	b	.L49
.L48:
	movw	r3, #9676
	str	r3, [r7, #40]
	ldr	r3, [r7, #116]
	str	r3, [r7, #44]
.L49:
	add	r3, r7, #40
	ldr	r0, [r7, #8]
	movs	r1, #1
	movs	r2, #2
	bl	_ZN11hb_buffer_t14replace_glyphsEjjPKj(PLT)
	b	.L46
.L47:
	ldr	r0, [r7, #8]
	bl	_ZN11hb_buffer_t10next_glyphEv(PLT)
.L46:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #92]
	str	r3, [r7, #136]
	ldr	r3, [r7, #136]
	str	r3, [r7, #140]
	b	.L42
.L43:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #92]
	str	r3, [r7, #140]
	movw	r3, #43388
	str	r3, [sp]
	ldr	r0, [r7, #116]
	mov	r1, #4352
	movw	r2, #4447
	movw	r3, #43360
	bl	_Z12hb_in_rangesIjEbT_S0_S0_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L50
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #84]
	adds	r2, r3, #1
	ldr	r3, [r7, #120]
	cmp	r2, r3
	bcs	.L50
	movs	r3, #1
	b	.L51
.L50:
	movs	r3, #0
.L51:
	cmp	r3, #0
	beq	.L52
	ldr	r3, [r7, #116]
	str	r3, [r7, #108]
	ldr	r0, [r7, #8]
	movs	r1, #1
	bl	_ZN11hb_buffer_t3curEj(PLT)
	mov	r3, r0
	ldr	r3, [r3]
	str	r3, [r7, #104]
	movw	r3, #55238
	str	r3, [sp]
	ldr	r0, [r7, #104]
	mov	r1, #4448
	movw	r2, #4519
	movw	r3, #55216
	bl	_Z12hb_in_rangesIjEbT_S0_S0_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L53
	movs	r3, #0
	str	r3, [r7, #132]
	movs	r3, #0
	str	r3, [r7, #128]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #84]
	adds	r2, r3, #2
	ldr	r3, [r7, #120]
	cmp	r2, r3
	bcs	.L54
	ldr	r0, [r7, #8]
	movs	r1, #2
	bl	_ZN11hb_buffer_t3curEj(PLT)
	mov	r3, r0
	ldr	r3, [r3]
	str	r3, [r7, #132]
	movw	r3, #55291
	str	r3, [sp]
	ldr	r0, [r7, #132]
	movw	r1, #4520
	movw	r2, #4607
	movw	r3, #55243
	bl	_Z12hb_in_rangesIjEbT_S0_S0_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L55
	ldr	r3, [r7, #132]
	sub	r3, r3, #4512
	subs	r3, r3, #7
	str	r3, [r7, #128]
	b	.L54
.L55:
	movs	r3, #0
	str	r3, [r7, #132]
.L54:
	ldr	r0, [r7, #108]
	mov	r1, #4352
	movw	r2, #4370
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L57
	ldr	r0, [r7, #104]
	movw	r1, #4449
	movw	r2, #4469
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L57
	ldr	r3, [r7, #132]
	cmp	r3, #0
	beq	.L58
	ldr	r0, [r7, #132]
	movw	r1, #4520
	movw	r2, #4546
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L57
.L58:
	movs	r3, #1
	b	.L59
.L57:
	movs	r3, #0
.L59:
	cmp	r3, #0
	beq	.L60
	ldr	r3, [r7, #108]
	mov	r2, #588
	mul	r1, r2, r3
	ldr	r2, [r7, #104]
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r2, r1, r3
	ldr	r3, [r7, #128]
	add	r3, r3, r2
	sub	r3, r3, #2637824
	subw	r3, r3, #1692
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN9hb_font_t9has_glyphEj(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L61
	ldr	r3, [r7, #132]
	cmp	r3, #0
	beq	.L62
	movs	r3, #3
	b	.L63
.L62:
	movs	r3, #2
.L63:
	add	r4, r7, #36
	ldr	r0, [r7, #8]
	mov	r1, r3
	movs	r2, #1
	mov	r3, r4
	bl	_ZN11hb_buffer_t14replace_glyphsEjjPKj(PLT)
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #80]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L41
	ldr	r3, [r7, #140]
	adds	r3, r3, #1
	str	r3, [r7, #136]
	b	.L42
.L61:
.L60:
	ldr	r0, [r7, #8]
	movs	r1, #0
	bl	_ZN11hb_buffer_t3curEj(PLT)
	mov	r3, r0
	movs	r2, #1
	strb	r2, [r3, #18]
	ldr	r0, [r7, #8]
	bl	_ZN11hb_buffer_t10next_glyphEv(PLT)
	ldr	r0, [r7, #8]
	movs	r1, #0
	bl	_ZN11hb_buffer_t3curEj(PLT)
	mov	r3, r0
	movs	r2, #2
	strb	r2, [r3, #18]
	ldr	r0, [r7, #8]
	bl	_ZN11hb_buffer_t10next_glyphEv(PLT)
	ldr	r3, [r7, #132]
	cmp	r3, #0
	beq	.L66
	ldr	r0, [r7, #8]
	movs	r1, #0
	bl	_ZN11hb_buffer_t3curEj(PLT)
	mov	r3, r0
	movs	r2, #3
	strb	r2, [r3, #18]
	ldr	r0, [r7, #8]
	bl	_ZN11hb_buffer_t10next_glyphEv(PLT)
	ldr	r3, [r7, #140]
	adds	r3, r3, #3
	str	r3, [r7, #136]
	b	.L67
.L66:
	ldr	r3, [r7, #140]
	adds	r3, r3, #2
	str	r3, [r7, #136]
.L67:
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #140]
	ldr	r2, [r7, #136]
	bl	_ZN11hb_buffer_t18merge_out_clustersEjj(PLT)
	b	.L42
.L53:
	b	.L68
.L52:
	ldr	r0, [r7, #116]
	mov	r1, #44032
	movw	r2, #55203
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L68
	ldr	r3, [r7, #116]
	str	r3, [r7, #100]
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #100]
	bl	_ZN9hb_font_t9has_glyphEj(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	strb	r3, [r7, #99]
	ldr	r3, [r7, #100]
	sub	r2, r3, #44032
	movw	r3, #23629
	movt	r3, 57065
	umull	r0, r3, r3, r2
	lsrs	r3, r3, #9
	str	r3, [r7, #92]
	ldr	r3, [r7, #100]
	sub	r2, r3, #44032
	movw	r3, #23629
	movt	r3, 57065
	umull	r1, r3, r3, r2
	lsrs	r3, r3, #9
	mov	r1, #588
	mul	r3, r1, r3
	subs	r3, r2, r3
	str	r3, [r7, #88]
	ldr	r3, [r7, #88]
	lsrs	r2, r3, #2
	movw	r3, #18725
	movt	r3, 9362
	umull	r0, r3, r3, r2
	str	r3, [r7, #84]
	ldr	r2, [r7, #88]
	lsrs	r1, r2, #2
	movw	r3, #18725
	movt	r3, 9362
	umull	r0, r1, r3, r1
	mov	r3, r1
	lsls	r3, r3, #3
	subs	r3, r3, r1
	lsls	r3, r3, #2
	subs	r3, r2, r3
	str	r3, [r7, #80]
	ldr	r3, [r7, #80]
	cmp	r3, #0
	bne	.L69
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #84]
	adds	r2, r3, #1
	ldr	r3, [r7, #120]
	cmp	r2, r3
	bcs	.L69
	ldr	r0, [r7, #8]
	movs	r1, #1
	bl	_ZN11hb_buffer_t3curEj(PLT)
	mov	r3, r0
	ldr	r3, [r3]
	mov	r0, r3
	movw	r1, #4520
	movw	r2, #4546
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L69
	movs	r3, #1
	b	.L70
.L69:
	movs	r3, #0
.L70:
	cmp	r3, #0
	beq	.L71
	ldr	r0, [r7, #8]
	movs	r1, #1
	bl	_ZN11hb_buffer_t3curEj(PLT)
	mov	r3, r0
	ldr	r3, [r3]
	sub	r3, r3, #4512
	subs	r3, r3, #7
	str	r3, [r7, #76]
	ldr	r2, [r7, #100]
	ldr	r3, [r7, #76]
	add	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN9hb_font_t9has_glyphEj(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L72
	add	r3, r7, #32
	ldr	r0, [r7, #8]
	movs	r1, #2
	movs	r2, #1
	bl	_ZN11hb_buffer_t14replace_glyphsEjjPKj(PLT)
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #80]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L41
	ldr	r3, [r7, #140]
	adds	r3, r3, #1
	str	r3, [r7, #136]
	b	.L42
.L72:
.L71:
	ldrb	r3, [r7, #99]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L74
	ldr	r3, [r7, #80]
	cmp	r3, #0
	bne	.L75
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #84]
	adds	r2, r3, #1
	ldr	r3, [r7, #120]
	cmp	r2, r3
	bcs	.L75
	ldr	r0, [r7, #8]
	movs	r1, #1
	bl	_ZN11hb_buffer_t3curEj(PLT)
	mov	r3, r0
	ldr	r3, [r3]
	movw	r2, #55291
	str	r2, [sp]
	mov	r0, r3
	movw	r1, #4520
	movw	r2, #4607
	movw	r3, #55243
	bl	_Z12hb_in_rangesIjEbT_S0_S0_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L75
.L74:
	movs	r3, #1
	b	.L76
.L75:
	movs	r3, #0
.L76:
	cmp	r3, #0
	beq	.L77
	ldr	r3, [r7, #92]
	add	r3, r3, #4352
	str	r3, [r7, #20]
	ldr	r3, [r7, #84]
	add	r3, r3, #4448
	adds	r3, r3, #1
	str	r3, [r7, #24]
	ldr	r3, [r7, #80]
	add	r3, r3, #4512
	adds	r3, r3, #7
	str	r3, [r7, #28]
	ldr	r3, [r7, #20]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN9hb_font_t9has_glyphEj(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L78
	ldr	r3, [r7, #24]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN9hb_font_t9has_glyphEj(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L78
	ldr	r3, [r7, #80]
	cmp	r3, #0
	beq	.L79
	ldr	r3, [r7, #28]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN9hb_font_t9has_glyphEj(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L78
.L79:
	movs	r3, #1
	b	.L80
.L78:
	movs	r3, #0
.L80:
	cmp	r3, #0
	beq	.L81
	ldr	r3, [r7, #80]
	cmp	r3, #0
	beq	.L82
	movs	r3, #3
	b	.L83
.L82:
	movs	r3, #2
.L83:
	str	r3, [r7, #124]
	add	r3, r7, #20
	ldr	r0, [r7, #8]
	movs	r1, #1
	ldr	r2, [r7, #124]
	bl	_ZN11hb_buffer_t14replace_glyphsEjjPKj(PLT)
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #80]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L84
	nop
	b	.L41
.L84:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #104]
	str	r3, [r7, #72]
	ldrb	r3, [r7, #99]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L86
	ldr	r3, [r7, #80]
	cmp	r3, #0
	bne	.L86
	ldr	r0, [r7, #8]
	bl	_ZN11hb_buffer_t10next_glyphEv(PLT)
	ldr	r3, [r7, #124]
	adds	r3, r3, #1
	str	r3, [r7, #124]
.L86:
	ldr	r2, [r7, #140]
	ldr	r3, [r7, #124]
	add	r3, r3, r2
	str	r3, [r7, #136]
	ldr	r3, [r7, #140]
	str	r3, [r7, #68]
	ldr	r2, [r7, #68]
	adds	r3, r2, #1
	str	r3, [r7, #68]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #72]
	add	r3, r3, r2
	movs	r2, #1
	strb	r2, [r3, #18]
	ldr	r2, [r7, #68]
	adds	r3, r2, #1
	str	r3, [r7, #68]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #72]
	add	r3, r3, r2
	movs	r2, #2
	strb	r2, [r3, #18]
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #136]
	cmp	r2, r3
	bcs	.L87
	ldr	r2, [r7, #68]
	adds	r3, r2, #1
	str	r3, [r7, #68]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #72]
	add	r3, r3, r2
	movs	r2, #3
	strb	r2, [r3, #18]
.L87:
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #140]
	ldr	r2, [r7, #136]
	bl	_ZN11hb_buffer_t18merge_out_clustersEjj(PLT)
	nop
	b	.L42
.L81:
.L77:
	ldrb	r3, [r7, #99]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L89
	ldr	r3, [r7, #140]
	adds	r3, r3, #1
	str	r3, [r7, #136]
	ldr	r0, [r7, #8]
	bl	_ZN11hb_buffer_t10next_glyphEv(PLT)
	b	.L42
.L89:
.L68:
	ldr	r0, [r7, #8]
	bl	_ZN11hb_buffer_t10next_glyphEv(PLT)
.L42:
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #84]
	ldr	r3, [r7, #120]
	cmp	r2, r3
	bcc	.L90
	ldr	r0, [r7, #8]
	bl	_ZN11hb_buffer_t12swap_buffersEv(PLT)
.L41:
	adds	r7, r7, #144
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L92:
	.align	2
.L91:
	.word	.LC0-(.LPIC2+4)
	.fnend
	.size	_ZL22preprocess_text_hangulPK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t, .-_ZL22preprocess_text_hangulPK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t
	.section	.text._ZL18setup_masks_hangulPK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL18setup_masks_hangulPK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t, %function
_ZL18setup_masks_hangulPK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t:
	.fnstart
.LFB265:
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
	ldr	r3, [r3, #964]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L94
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #88]
	str	r3, [r7, #16]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #100]
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #24]
	b	.L95
.L96:
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #28]
	ldrb	r3, [r3, #18]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [r7, #20]
	ldr	r3, [r3, r1, lsl #2]
	orrs	r2, r2, r3
	ldr	r3, [r7, #28]
	str	r2, [r3, #4]
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	adds	r3, r3, #20
	str	r3, [r7, #28]
.L95:
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bcc	.L96
.L94:
	ldr	r0, [r7, #8]
	movs	r1, #6
	movs	r2, #1
	ldr	r3, .L97
.LPIC3:
	add	r3, pc
	bl	_ZN11hb_buffer_t14deallocate_varEjjPKc(PLT)
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L98:
	.align	2
.L97:
	.word	.LC0-(.LPIC3+4)
	.fnend
	.size	_ZL18setup_masks_hangulPK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t, .-_ZL18setup_masks_hangulPK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t
	.hidden	_hb_ot_complex_shaper_hangul
	.global	_hb_ot_complex_shaper_hangul
	.section	.data.rel.ro.local._hb_ot_complex_shaper_hangul,"aw",%progbits
	.align	2
	.type	_hb_ot_complex_shaper_hangul, %object
	.size	_hb_ot_complex_shaper_hangul, 52
_hb_ot_complex_shaper_hangul:
	.ascii	"hangul\000"
	.space	1
	.word	_ZL23collect_features_hangulP21hb_ot_shape_planner_t
	.word	_ZL24override_features_hangulP21hb_ot_shape_planner_t
	.word	_ZL18data_create_hangulPK18hb_ot_shape_plan_t
	.word	_ZL19data_destroy_hangulPv
	.word	_ZL22preprocess_text_hangulPK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t
	.word	0
	.word	0
	.word	0
	.word	_ZL18setup_masks_hangulPK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t
	.word	0
	.byte	0
	.space	3
	.section	.text._Z12hb_in_rangesIjEbT_S0_S0_S0_S0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z12hb_in_rangesIjEbT_S0_S0_S0_S0_, %function
_Z12hb_in_rangesIjEbT_S0_S0_S0_S0_:
	.fnstart
.LFB270:
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
	bne	.L100
	ldr	r0, [r7, #12]
	ldr	r1, [r7]
	ldr	r2, [r7, #24]
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L101
.L100:
	movs	r3, #1
	b	.L102
.L101:
	movs	r3, #0
.L102:
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
.LFB271:
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
.LFB273:
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
	ldr	r0, .L108
.LPIC4:
	add	r0, pc
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r1, .L108+4
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
.L109:
	.align	2
.L108:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC4+4)
	.word	_ZN11hb_ot_map_t13feature_map_t3cmpEPKS0_S2_(GOT)
	.fnend
	.size	_ZNK21hb_prealloced_array_tIN11hb_ot_map_t13feature_map_tELj8EE7bsearchIjEEPKS1_PT_, .-_ZNK21hb_prealloced_array_tIN11hb_ot_map_t13feature_map_tELj8EE7bsearchIjEEPKS1_PT_
	.section	.rodata._ZL10table_tags,"a",%progbits
	.align	2
	.type	_ZL10table_tags, %object
	.size	_ZL10table_tags, 8
_ZL10table_tags:
	.word	1196643650
	.word	1196445523
	.section	.rodata._ZL15hangul_features,"a",%progbits
	.align	2
	.type	_ZL15hangul_features, %object
	.size	_ZL15hangul_features, 16
_ZL15hangul_features:
	.word	0
	.word	1818914159
	.word	1986686319
	.word	1953131887
	.hidden	_ZN11hb_buffer_t14deallocate_varEjjPKc
	.hidden	_ZN11hb_buffer_t12swap_buffersEv
	.hidden	_ZN11hb_buffer_t14replace_glyphsEjjPKj
	.hidden	_ZN11hb_buffer_t18merge_out_clustersEjj
	.hidden	_ZN11hb_buffer_t12clear_outputEv
	.hidden	_ZN11hb_buffer_t12allocate_varEjjPKc
	.hidden	_ZN19hb_ot_map_builder_t11add_featureEjj25hb_ot_map_feature_flags_t
	.hidden	_ZN11hb_buffer_t13make_room_forEjj
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
