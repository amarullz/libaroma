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
	.file	"hb-ot-shape-complex-myanmar.cc"
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
	.section	.text._ZL24collect_features_myanmarP21hb_ot_shape_planner_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL24collect_features_myanmarP21hb_ot_shape_planner_t, %function
_ZL24collect_features_myanmarP21hb_ot_shape_planner_t:
	.fnstart
.LFB258:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #28
	sub	sp, sp, #28
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	adds	r3, r3, #28
	str	r3, [r7, #12]
	ldr	r0, [r7, #12]
	ldr	r3, .L22
.LPIC0:
	add	r3, pc
	mov	r1, r3
	bl	_ZN19hb_ot_map_builder_t14add_gsub_pauseEPFvPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tE(PLT)
	ldr	r0, [r7, #12]
	movw	r1, #25452
	movt	r1, 27759
	bl	_ZN19hb_ot_map_builder_t23add_global_bool_featureEj(PLT)
	ldr	r0, [r7, #12]
	movw	r1, #28016
	movt	r1, 25443
	bl	_ZN19hb_ot_map_builder_t23add_global_bool_featureEj(PLT)
	ldr	r0, [r7, #12]
	ldr	r3, .L22+4
.LPIC1:
	add	r3, pc
	mov	r1, r3
	bl	_ZN19hb_ot_map_builder_t14add_gsub_pauseEPFvPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tE(PLT)
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L18
.L19:
	ldr	r3, .L22+8
.LPIC2:
	add	r3, pc
	ldr	r2, [r7, #20]
	ldr	r4, [r3, r2, lsl #2]
	movs	r0, #1
	movs	r1, #4
	bl	_Zor25hb_ot_map_feature_flags_tS_(PLT)
	mov	r3, r0
	ldr	r0, [r7, #12]
	mov	r1, r4
	movs	r2, #1
	bl	_ZN19hb_ot_map_builder_t11add_featureEjj25hb_ot_map_feature_flags_t(PLT)
	ldr	r0, [r7, #12]
	movs	r1, #0
	bl	_ZN19hb_ot_map_builder_t14add_gsub_pauseEPFvPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tE(PLT)
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L18:
	ldr	r3, .L22+12
.LPIC3:
	add	r3, pc
	mov	r0, r3
	bl	_Z12ARRAY_LENGTHIjLj4EEjRAT0__KT_(PLT)
	mov	r2, r0
	ldr	r3, [r7, #20]
	cmp	r2, r3
	ite	hi
	movhi	r3, #1
	movls	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L19
	ldr	r0, [r7, #12]
	ldr	r3, .L22+16
.LPIC4:
	add	r3, pc
	mov	r1, r3
	bl	_ZN19hb_ot_map_builder_t14add_gsub_pauseEPFvPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tE(PLT)
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L20
.L21:
	ldr	r3, .L22+20
.LPIC5:
	add	r3, pc
	ldr	r2, [r7, #16]
	ldr	r4, [r3, r2, lsl #2]
	movs	r0, #1
	movs	r1, #4
	bl	_Zor25hb_ot_map_feature_flags_tS_(PLT)
	mov	r3, r0
	ldr	r0, [r7, #12]
	mov	r1, r4
	movs	r2, #1
	bl	_ZN19hb_ot_map_builder_t11add_featureEjj25hb_ot_map_feature_flags_t(PLT)
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L20:
	ldr	r3, .L22+24
.LPIC6:
	add	r3, pc
	mov	r0, r3
	bl	_Z12ARRAY_LENGTHIjLj7EEjRAT0__KT_(PLT)
	mov	r2, r0
	ldr	r3, [r7, #16]
	cmp	r2, r3
	ite	hi
	movhi	r3, #1
	movls	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L21
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L23:
	.align	2
.L22:
	.word	_ZL15setup_syllablesPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t-(.LPIC0+4)
	.word	_ZL18initial_reorderingPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t-(.LPIC1+4)
	.word	_ZL14basic_features-(.LPIC2+4)
	.word	_ZL14basic_features-(.LPIC3+4)
	.word	_ZL16final_reorderingPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t-(.LPIC4+4)
	.word	_ZL14other_features-(.LPIC5+4)
	.word	_ZL14other_features-(.LPIC6+4)
	.fnend
	.size	_ZL24collect_features_myanmarP21hb_ot_shape_planner_t, .-_ZL24collect_features_myanmarP21hb_ot_shape_planner_t
	.section	.text._ZL25override_features_myanmarP21hb_ot_shape_planner_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL25override_features_myanmarP21hb_ot_shape_planner_t, %function
_ZL25override_features_myanmarP21hb_ot_shape_planner_t:
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
	movw	r1, #26465
	movt	r1, 27753
	movs	r2, #0
	movs	r3, #1
	bl	_ZN19hb_ot_map_builder_t11add_featureEjj25hb_ot_map_feature_flags_t(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL25override_features_myanmarP21hb_ot_shape_planner_t, .-_ZL25override_features_myanmarP21hb_ot_shape_planner_t
	.section	.text._ZL14find_syllablesP11hb_buffer_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL14find_syllablesP11hb_buffer_t, %function
_ZL14find_syllablesP11hb_buffer_t:
	.fnstart
.LFB260:
	@ args = 0, pretend = 0, frame = 96
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #100
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	str	r3, [r7, #40]
	movs	r3, #0
	str	r3, [r7, #88]
	movs	r3, #0
	str	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #92]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #84]
	movs	r3, #1
	str	r3, [r7, #80]
	ldr	r2, [r7, #92]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bne	.L26
	b	.L27
.L26:
	ldr	r3, .L71
.LPIC7:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #88]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L28
	ldr	r3, [r7, #92]
	str	r3, [r7, #36]
	nop
.L28:
	ldr	r3, [r7, #88]
	lsls	r3, r3, #1
	mov	r2, r3
	ldr	r3, .L71+4
.LPIC8:
	add	r3, pc
	add	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, .L71+8
.LPIC9:
	add	r3, pc
	ldr	r2, [r7, #88]
	ldrh	r3, [r3, r2, lsl #1]
	sxth	r2, r3
	ldr	r3, .L71+12
.LPIC10:
	add	r3, pc
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, .L71+16
.LPIC11:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #88]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	ble	.L30
	ldr	r3, [r7, #16]
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r2, [r7, #92]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #40]
	add	r3, r3, r2
	ldrb	r3, [r3, #18]	@ zero_extendqisi2
	cmp	r1, r3
	bhi	.L30
	ldr	r2, [r7, #92]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #40]
	add	r3, r3, r2
	ldrb	r2, [r3, #18]	@ zero_extendqisi2
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	bhi	.L30
	ldr	r2, [r7, #92]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #40]
	add	r3, r3, r2
	ldrb	r3, [r3, #18]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r2, r3
	b	.L31
.L30:
	ldr	r3, [r7, #8]
.L31:
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #76]
.L32:
	ldr	r3, .L71+20
.LPIC12:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #76]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #88]
	ldr	r3, .L71+24
.LPIC13:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #76]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L33
	b	.L34
.L33:
	ldr	r3, .L71+28
.LPIC14:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #76]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #3
	cmp	r3, #7
	bhi	.L34
	adr	r1, .L36
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L36:
	.word	.L35+1-.L36
	.word	.L37+1-.L36
	.word	.L38+1-.L36
	.word	.L39+1-.L36
	.word	.L40+1-.L36
	.word	.L41+1-.L36
	.word	.L42+1-.L36
	.word	.L43+1-.L36
.L40:
	ldr	r3, [r7, #92]
	adds	r3, r3, #1
	str	r3, [r7, #32]
	ldr	r3, [r7, #84]
	str	r3, [r7, #72]
	b	.L44
.L45:
	ldr	r2, [r7, #72]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #40]
	add	r3, r3, r2
	ldr	r2, [r7, #80]
	uxtb	r2, r2
	lsls	r2, r2, #4
	uxtb	r2, r2
	strb	r2, [r3, #15]
	ldr	r3, [r7, #72]
	adds	r3, r3, #1
	str	r3, [r7, #72]
.L44:
	ldr	r3, [r7, #92]
	adds	r2, r3, #1
	ldr	r3, [r7, #72]
	cmp	r2, r3
	bhi	.L45
	ldr	r3, [r7, #92]
	adds	r3, r3, #1
	str	r3, [r7, #84]
	ldr	r3, [r7, #80]
	adds	r3, r3, #1
	str	r3, [r7, #80]
	ldr	r3, [r7, #80]
	cmp	r3, #16
	bne	.L46
	movs	r3, #1
	str	r3, [r7, #80]
.L46:
	b	.L34
.L38:
	ldr	r3, [r7, #92]
	adds	r3, r3, #1
	str	r3, [r7, #32]
	ldr	r3, [r7, #84]
	str	r3, [r7, #68]
	b	.L47
.L48:
	ldr	r2, [r7, #68]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #40]
	add	r3, r3, r2
	ldr	r2, [r7, #80]
	uxtb	r2, r2
	lsls	r2, r2, #4
	uxtb	r2, r2
	orr	r2, r2, #3
	uxtb	r2, r2
	strb	r2, [r3, #15]
	ldr	r3, [r7, #68]
	adds	r3, r3, #1
	str	r3, [r7, #68]
.L47:
	ldr	r3, [r7, #92]
	adds	r2, r3, #1
	ldr	r3, [r7, #68]
	cmp	r2, r3
	bhi	.L48
	ldr	r3, [r7, #92]
	adds	r3, r3, #1
	str	r3, [r7, #84]
	ldr	r3, [r7, #80]
	adds	r3, r3, #1
	str	r3, [r7, #80]
	ldr	r3, [r7, #80]
	cmp	r3, #16
	bne	.L49
	movs	r3, #1
	str	r3, [r7, #80]
.L49:
	b	.L34
.L43:
	ldr	r3, [r7, #92]
	adds	r3, r3, #1
	str	r3, [r7, #32]
	ldr	r3, [r7, #84]
	str	r3, [r7, #64]
	b	.L50
.L51:
	ldr	r2, [r7, #64]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #40]
	add	r3, r3, r2
	ldr	r2, [r7, #80]
	uxtb	r2, r2
	lsls	r2, r2, #4
	uxtb	r2, r2
	orr	r2, r2, #1
	uxtb	r2, r2
	strb	r2, [r3, #15]
	ldr	r3, [r7, #64]
	adds	r3, r3, #1
	str	r3, [r7, #64]
.L50:
	ldr	r3, [r7, #92]
	adds	r2, r3, #1
	ldr	r3, [r7, #64]
	cmp	r2, r3
	bhi	.L51
	ldr	r3, [r7, #92]
	adds	r3, r3, #1
	str	r3, [r7, #84]
	ldr	r3, [r7, #80]
	adds	r3, r3, #1
	str	r3, [r7, #80]
	ldr	r3, [r7, #80]
	cmp	r3, #16
	bne	.L52
	movs	r3, #1
	str	r3, [r7, #80]
.L52:
	b	.L34
.L37:
	ldr	r3, [r7, #92]
	adds	r3, r3, #1
	str	r3, [r7, #32]
	ldr	r3, [r7, #84]
	str	r3, [r7, #60]
	b	.L53
.L54:
	ldr	r2, [r7, #60]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #40]
	add	r3, r3, r2
	ldr	r2, [r7, #80]
	uxtb	r2, r2
	lsls	r2, r2, #4
	uxtb	r2, r2
	orr	r2, r2, #2
	uxtb	r2, r2
	strb	r2, [r3, #15]
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
.L53:
	ldr	r3, [r7, #92]
	adds	r2, r3, #1
	ldr	r3, [r7, #60]
	cmp	r2, r3
	bhi	.L54
	ldr	r3, [r7, #92]
	adds	r3, r3, #1
	str	r3, [r7, #84]
	ldr	r3, [r7, #80]
	adds	r3, r3, #1
	str	r3, [r7, #80]
	ldr	r3, [r7, #80]
	cmp	r3, #16
	bne	.L55
	movs	r3, #1
	str	r3, [r7, #80]
.L55:
	b	.L34
.L35:
	ldr	r3, [r7, #92]
	adds	r3, r3, #1
	str	r3, [r7, #32]
	ldr	r3, [r7, #84]
	str	r3, [r7, #56]
	b	.L56
.L57:
	ldr	r2, [r7, #56]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #40]
	add	r3, r3, r2
	ldr	r2, [r7, #80]
	uxtb	r2, r2
	lsls	r2, r2, #4
	uxtb	r2, r2
	orr	r2, r2, #3
	uxtb	r2, r2
	strb	r2, [r3, #15]
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	str	r3, [r7, #56]
.L56:
	ldr	r3, [r7, #92]
	adds	r2, r3, #1
	ldr	r3, [r7, #56]
	cmp	r2, r3
	bhi	.L57
	ldr	r3, [r7, #92]
	adds	r3, r3, #1
	str	r3, [r7, #84]
	ldr	r3, [r7, #80]
	adds	r3, r3, #1
	str	r3, [r7, #80]
	ldr	r3, [r7, #80]
	cmp	r3, #16
	bne	.L58
	movs	r3, #1
	str	r3, [r7, #80]
.L58:
	b	.L34
.L39:
	ldr	r3, [r7, #92]
	str	r3, [r7, #32]
	ldr	r3, [r7, #92]
	subs	r3, r3, #1
	str	r3, [r7, #92]
	ldr	r3, [r7, #84]
	str	r3, [r7, #52]
	b	.L59
.L60:
	ldr	r2, [r7, #52]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #40]
	add	r3, r3, r2
	ldr	r2, [r7, #80]
	uxtb	r2, r2
	lsls	r2, r2, #4
	uxtb	r2, r2
	strb	r2, [r3, #15]
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	str	r3, [r7, #52]
.L59:
	ldr	r3, [r7, #92]
	adds	r2, r3, #1
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bhi	.L60
	ldr	r3, [r7, #92]
	adds	r3, r3, #1
	str	r3, [r7, #84]
	ldr	r3, [r7, #80]
	adds	r3, r3, #1
	str	r3, [r7, #80]
	ldr	r3, [r7, #80]
	cmp	r3, #16
	bne	.L61
	movs	r3, #1
	str	r3, [r7, #80]
.L61:
	b	.L34
.L41:
	ldr	r3, [r7, #92]
	str	r3, [r7, #32]
	ldr	r3, [r7, #92]
	subs	r3, r3, #1
	str	r3, [r7, #92]
	ldr	r3, [r7, #84]
	str	r3, [r7, #48]
	b	.L62
.L63:
	ldr	r2, [r7, #48]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #40]
	add	r3, r3, r2
	ldr	r2, [r7, #80]
	uxtb	r2, r2
	lsls	r2, r2, #4
	uxtb	r2, r2
	orr	r2, r2, #2
	uxtb	r2, r2
	strb	r2, [r3, #15]
	ldr	r3, [r7, #48]
	adds	r3, r3, #1
	str	r3, [r7, #48]
.L62:
	ldr	r3, [r7, #92]
	adds	r2, r3, #1
	ldr	r3, [r7, #48]
	cmp	r2, r3
	bhi	.L63
	ldr	r3, [r7, #92]
	adds	r3, r3, #1
	str	r3, [r7, #84]
	ldr	r3, [r7, #80]
	adds	r3, r3, #1
	str	r3, [r7, #80]
	ldr	r3, [r7, #80]
	cmp	r3, #16
	bne	.L64
	movs	r3, #1
	str	r3, [r7, #80]
.L64:
	b	.L34
.L42:
	ldr	r3, [r7, #92]
	str	r3, [r7, #32]
	ldr	r3, [r7, #92]
	subs	r3, r3, #1
	str	r3, [r7, #92]
	ldr	r3, [r7, #84]
	str	r3, [r7, #44]
	b	.L65
.L66:
	ldr	r2, [r7, #44]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #40]
	add	r3, r3, r2
	ldr	r2, [r7, #80]
	uxtb	r2, r2
	lsls	r2, r2, #4
	uxtb	r2, r2
	orr	r2, r2, #3
	uxtb	r2, r2
	strb	r2, [r3, #15]
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	str	r3, [r7, #44]
.L65:
	ldr	r3, [r7, #92]
	adds	r2, r3, #1
	ldr	r3, [r7, #44]
	cmp	r2, r3
	bhi	.L66
	ldr	r3, [r7, #92]
	adds	r3, r3, #1
	str	r3, [r7, #84]
	ldr	r3, [r7, #80]
	adds	r3, r3, #1
	str	r3, [r7, #80]
	ldr	r3, [r7, #80]
	cmp	r3, #16
	bne	.L67
	movs	r3, #1
	str	r3, [r7, #80]
.L67:
	nop
.L34:
	ldr	r3, .L71+32
.LPIC15:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #88]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L68
	movs	r3, #0
	str	r3, [r7, #36]
	nop
.L68:
	ldr	r3, [r7, #92]
	adds	r3, r3, #1
	str	r3, [r7, #92]
	ldr	r2, [r7, #92]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L27
	b	.L26
.L27:
	ldr	r2, [r7, #92]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bne	.L25
	ldr	r3, .L71+36
.LPIC16:
	add	r3, pc
	ldr	r2, [r7, #88]
	ldrh	r3, [r3, r2, lsl #1]
	sxth	r3, r3
	cmp	r3, #0
	ble	.L25
	ldr	r3, .L71+40
.LPIC17:
	add	r3, pc
	ldr	r2, [r7, #88]
	ldrh	r3, [r3, r2, lsl #1]
	sxth	r3, r3
	subs	r3, r3, #1
	str	r3, [r7, #76]
	b	.L32
.L25:
	adds	r7, r7, #100
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L72:
	.align	2
.L71:
	.word	_ZL44_myanmar_syllable_machine_from_state_actions-(.LPIC7+4)
	.word	_ZL36_myanmar_syllable_machine_trans_keys-(.LPIC8+4)
	.word	_ZL39_myanmar_syllable_machine_index_offsets-(.LPIC9+4)
	.word	_ZL34_myanmar_syllable_machine_indicies-(.LPIC10+4)
	.word	_ZL35_myanmar_syllable_machine_key_spans-(.LPIC11+4)
	.word	_ZL37_myanmar_syllable_machine_trans_targs-(.LPIC12+4)
	.word	_ZL39_myanmar_syllable_machine_trans_actions-(.LPIC13+4)
	.word	_ZL39_myanmar_syllable_machine_trans_actions-(.LPIC14+4)
	.word	_ZL42_myanmar_syllable_machine_to_state_actions-(.LPIC15+4)
	.word	_ZL35_myanmar_syllable_machine_eof_trans-(.LPIC16+4)
	.word	_ZL35_myanmar_syllable_machine_eof_trans-(.LPIC17+4)
	.cantunwind
	.fnend
	.size	_ZL14find_syllablesP11hb_buffer_t, .-_ZL14find_syllablesP11hb_buffer_t
	.section	.text._ZL9is_one_ofRK15hb_glyph_info_tj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL9is_one_ofRK15hb_glyph_info_tj, %function
_ZL9is_one_ofRK15hb_glyph_info_tj:
	.fnstart
.LFB261:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	bl	_ZL22_hb_glyph_info_ligatedPK15hb_glyph_info_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L74
	movs	r3, #0
	b	.L75
.L74:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #18]	@ zero_extendqisi2
	movs	r2, #1
	lsl	r3, r2, r3
	mov	r2, r3
	ldr	r3, [r7]
	ands	r3, r3, r2
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
.L75:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZL9is_one_ofRK15hb_glyph_info_tj, .-_ZL9is_one_ofRK15hb_glyph_info_tj
	.section	.text._ZL12is_consonantRK15hb_glyph_info_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL12is_consonantRK15hb_glyph_info_t, %function
_ZL12is_consonantRK15hb_glyph_info_t:
	.fnstart
.LFB262:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	movw	r1, #6150
	movt	r1, 32771
	bl	_ZL9is_one_ofRK15hb_glyph_info_tj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZL12is_consonantRK15hb_glyph_info_t, .-_ZL12is_consonantRK15hb_glyph_info_t
	.section	.text._ZL22set_myanmar_propertiesR15hb_glyph_info_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL22set_myanmar_propertiesR15hb_glyph_info_t, %function
_ZL22set_myanmar_propertiesR15hb_glyph_info_t:
	.fnstart
.LFB263:
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
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r0, [r7, #12]
	bl	_Z23hb_indic_get_categoriesj(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	and	r3, r3, #127
	str	r3, [r7, #20]
	ldr	r3, [r7, #8]
	lsrs	r3, r3, #8
	str	r3, [r7, #16]
	ldr	r0, [r7, #12]
	mov	r1, #65024
	movw	r2, #65039
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L79
	movs	r3, #30
	str	r3, [r7, #20]
.L79:
	ldr	r3, [r7, #12]
	cmp	r3, #4192
	bcs	.L81
	movw	r2, #4190
	cmp	r3, r2
	bcs	.L82
	movw	r2, #4155
	cmp	r3, r2
	beq	.L82
	movw	r2, #4155
	cmp	r3, r2
	bhi	.L83
	movw	r2, #4123
	cmp	r3, r2
	beq	.L84
	movw	r2, #4123
	cmp	r3, r2
	bhi	.L85
	cmp	r3, #160
	beq	.L86
	cmp	r3, #160
	bhi	.L87
	cmp	r3, #45
	beq	.L86
	b	.L80
.L87:
	cmp	r3, #215
	beq	.L86
	movw	r2, #4100
	cmp	r3, r2
	beq	.L84
	b	.L80
.L85:
	movw	r2, #4150
	cmp	r3, r2
	beq	.L88
	movw	r2, #4150
	cmp	r3, r2
	bhi	.L89
	movw	r2, #4146
	cmp	r3, r2
	beq	.L88
	b	.L80
.L89:
	movw	r2, #4152
	cmp	r3, r2
	beq	.L90
	movw	r2, #4154
	cmp	r3, r2
	beq	.L91
	b	.L80
.L83:
	movw	r2, #4169
	cmp	r3, r2
	bhi	.L92
	cmp	r3, #4160
	bhi	.L93
	movw	r2, #4157
	cmp	r3, r2
	beq	.L94
	movw	r2, #4157
	cmp	r3, r2
	bcc	.L95
	movw	r2, #4158
	cmp	r3, r2
	beq	.L96
	cmp	r3, #4160
	beq	.L97
	b	.L80
.L92:
	movw	r2, #4174
	cmp	r3, r2
	beq	.L98
	movw	r2, #4174
	cmp	r3, r2
	bhi	.L99
	movw	r2, #4171
	cmp	r3, r2
	bhi	.L80
	b	.L114
.L99:
	movw	r2, #4186
	cmp	r3, r2
	beq	.L84
	b	.L80
.L81:
	movw	r2, #4249
	cmp	r3, r2
	bhi	.L101
	movw	r2, #4240
	cmp	r3, r2
	bcs	.L93
	movw	r2, #4205
	cmp	r3, r2
	bhi	.L102
	movw	r2, #4201
	cmp	r3, r2
	bcs	.L103
	cmp	r3, #4192
	beq	.L96
	sub	r3, r3, #4192
	subs	r3, r3, #3
	cmp	r3, #1
	bhi	.L80
	b	.L103
.L102:
	movw	r2, #4237
	cmp	r3, r2
	bhi	.L104
	movw	r2, #4231
	cmp	r3, r2
	bcs	.L90
	movw	r2, #4226
	cmp	r3, r2
	beq	.L94
	b	.L80
.L104:
	movw	r2, #4239
	cmp	r3, r2
	beq	.L90
	b	.L80
.L101:
	movw	r2, #8226
	cmp	r3, r2
	beq	.L86
	movw	r2, #8226
	cmp	r3, r2
	bhi	.L105
	movw	r2, #4252
	cmp	r3, r2
	bls	.L90
	sub	r3, r3, #8192
	subs	r3, r3, #18
	cmp	r3, #3
	bhi	.L80
	b	.L86
.L105:
	movw	r2, #9726
	cmp	r3, r2
	bhi	.L106
	movw	r2, #9723
	cmp	r3, r2
	bcs	.L86
	movw	r2, #9676
	cmp	r3, r2
	beq	.L86
	b	.L80
.L106:
	movw	r2, #43643
	cmp	r3, r2
	beq	.L103
	b	.L80
.L98:
	movs	r3, #1
	str	r3, [r7, #20]
	b	.L80
.L86:
	movs	r3, #11
	str	r3, [r7, #20]
	b	.L80
.L84:
	movs	r3, #16
	str	r3, [r7, #20]
	b	.L80
.L88:
	movs	r3, #10
	str	r3, [r7, #20]
	b	.L80
.L91:
	movs	r3, #18
	str	r3, [r7, #20]
	b	.L80
.L93:
	movs	r3, #19
	str	r3, [r7, #20]
	b	.L80
.L97:
	movs	r3, #19
	str	r3, [r7, #20]
	b	.L80
.L96:
	movs	r3, #21
	str	r3, [r7, #20]
	b	.L80
.L95:
	movs	r3, #22
	str	r3, [r7, #20]
	b	.L80
.L94:
	movs	r3, #23
	str	r3, [r7, #20]
	b	.L80
.L82:
	movs	r3, #24
	str	r3, [r7, #20]
	b	.L80
.L103:
	movs	r3, #25
	str	r3, [r7, #20]
	b	.L80
.L90:
	movs	r3, #8
	str	r3, [r7, #20]
	b	.L80
.L114:
	movs	r3, #31
	str	r3, [r7, #20]
	nop
.L80:
	ldr	r3, [r7, #20]
	cmp	r3, #7
	bne	.L107
	ldr	r3, [r7, #16]
	subs	r3, r3, #3
	cmp	r3, #8
	bhi	.L107
	adr	r1, .L110
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L110:
	.word	.L109+1-.L110
	.word	.L107+1-.L110
	.word	.L107+1-.L110
	.word	.L111+1-.L110
	.word	.L107+1-.L110
	.word	.L112+1-.L110
	.word	.L107+1-.L110
	.word	.L107+1-.L110
	.word	.L113+1-.L110
.L109:
	movs	r3, #28
	str	r3, [r7, #20]
	movs	r3, #2
	str	r3, [r7, #16]
	b	.L108
.L111:
	movs	r3, #26
	str	r3, [r7, #20]
	b	.L108
.L112:
	movs	r3, #27
	str	r3, [r7, #20]
	b	.L108
.L113:
	movs	r3, #29
	str	r3, [r7, #20]
	nop
.L108:
.L107:
	ldr	r3, [r7, #20]
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3, #18]
	ldr	r3, [r7, #16]
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3, #19]
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL22set_myanmar_propertiesR15hb_glyph_info_t, .-_ZL22set_myanmar_propertiesR15hb_glyph_info_t
	.section	.rodata
	.align	2
.LC0:
	.ascii	"myanmar_category\000"
	.align	2
.LC1:
	.ascii	"myanmar_position\000"
	.section	.text._ZL19setup_masks_myanmarPK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL19setup_masks_myanmarPK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t, %function
_ZL19setup_masks_myanmarPK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t:
	.fnstart
.LFB264:
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
	ldr	r3, .L118
.LPIC18:
	add	r3, pc
	bl	_ZN11hb_buffer_t12allocate_varEjjPKc(PLT)
	ldr	r0, [r7, #8]
	movs	r1, #7
	movs	r2, #1
	ldr	r3, .L118+4
.LPIC19:
	add	r3, pc
	bl	_ZN11hb_buffer_t12allocate_varEjjPKc(PLT)
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #88]
	str	r3, [r7, #24]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #100]
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L116
.L117:
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL22set_myanmar_propertiesR15hb_glyph_info_t(PLT)
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L116:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bcc	.L117
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L119:
	.align	2
.L118:
	.word	.LC0-(.LPIC18+4)
	.word	.LC1-(.LPIC19+4)
	.fnend
	.size	_ZL19setup_masks_myanmarPK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t, .-_ZL19setup_masks_myanmarPK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t
	.section	.text._ZL15setup_syllablesPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL15setup_syllablesPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t, %function
_ZL15setup_syllablesPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t:
	.fnstart
.LFB265:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r0, [r7, #4]
	bl	_ZL14find_syllablesP11hb_buffer_t(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZL15setup_syllablesPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t, .-_ZL15setup_syllablesPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t
	.section	.text._ZL21compare_myanmar_orderPK15hb_glyph_info_tS1_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL21compare_myanmar_orderPK15hb_glyph_info_tS1_, %function
_ZL21compare_myanmar_orderPK15hb_glyph_info_tS1_:
	.fnstart
.LFB266:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #19]	@ zero_extendqisi2
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldrb	r3, [r3, #19]	@ zero_extendqisi2
	str	r3, [r7, #8]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	blt	.L122
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	b	.L123
.L122:
	mov	r3, #-1
.L123:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZL21compare_myanmar_orderPK15hb_glyph_info_tS1_, .-_ZL21compare_myanmar_orderPK15hb_glyph_info_tS1_
	.section	.text._ZL37initial_reordering_consonant_syllablePK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL37initial_reordering_consonant_syllablePK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj, %function
_ZL37initial_reordering_consonant_syllablePK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj:
	.fnstart
.LFB267:
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
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	str	r3, [r7, #20]
	ldr	r3, [r7, #56]
	str	r3, [r7, #44]
	movs	r3, #0
	strb	r3, [r7, #43]
	ldr	r3, [r7]
	str	r3, [r7, #36]
	ldr	r3, [r7]
	adds	r2, r3, #3
	ldr	r3, [r7, #56]
	cmp	r2, r3
	bhi	.L126
	ldr	r2, [r7]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	ldrb	r3, [r3, #18]	@ zero_extendqisi2
	cmp	r3, #16
	bne	.L126
	ldr	r3, [r7]
	adds	r2, r3, #1
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	ldrb	r3, [r3, #18]	@ zero_extendqisi2
	cmp	r3, #18
	bne	.L126
	ldr	r2, [r7]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #40
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	ldrb	r3, [r3, #18]	@ zero_extendqisi2
	cmp	r3, #4
	bne	.L126
	ldr	r3, [r7, #36]
	adds	r3, r3, #3
	str	r3, [r7, #36]
	ldr	r3, [r7]
	str	r3, [r7, #44]
	movs	r3, #1
	strb	r3, [r7, #43]
.L126:
	ldrb	r3, [r7, #43]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L127
	ldr	r3, [r7, #36]
	str	r3, [r7, #44]
.L127:
	ldr	r3, [r7, #36]
	str	r3, [r7, #32]
	b	.L128
.L131:
	ldr	r2, [r7, #32]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL12is_consonantRK15hb_glyph_info_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L129
	ldr	r3, [r7, #32]
	str	r3, [r7, #44]
	b	.L130
.L129:
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	str	r3, [r7, #32]
.L128:
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #56]
	cmp	r2, r3
	bcc	.L131
.L130:
	ldr	r3, [r7]
	str	r3, [r7, #28]
	b	.L132
.L135:
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	movs	r2, #5
	strb	r2, [r3, #19]
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L132:
	ldrb	r3, [r7, #43]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L133
	movs	r3, #3
	b	.L134
.L133:
	movs	r3, #0
.L134:
	ldr	r2, [r7]
	add	r2, r2, r3
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bhi	.L135
	b	.L136
.L137:
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	movs	r2, #3
	strb	r2, [r3, #19]
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L136:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #44]
	cmp	r2, r3
	bcc	.L137
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #56]
	cmp	r2, r3
	bcs	.L138
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	movs	r2, #4
	strb	r2, [r3, #19]
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L138:
	movs	r3, #5
	str	r3, [r7, #24]
	b	.L139
.L147:
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	ldrb	r3, [r3, #18]	@ zero_extendqisi2
	cmp	r3, #22
	bne	.L140
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	movs	r2, #3
	strb	r2, [r3, #19]
	b	.L141
.L140:
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	ldrb	r3, [r3, #19]	@ zero_extendqisi2
	cmp	r3, #3
	bhi	.L142
	b	.L141
.L142:
	ldr	r3, [r7, #24]
	cmp	r3, #5
	bne	.L143
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	ldrb	r3, [r3, #18]	@ zero_extendqisi2
	cmp	r3, #27
	bne	.L143
	movs	r3, #8
	str	r3, [r7, #24]
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	ldr	r2, [r7, #24]
	uxtb	r2, r2
	strb	r2, [r3, #19]
	b	.L141
.L143:
	ldr	r3, [r7, #24]
	cmp	r3, #8
	bne	.L144
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	ldrb	r3, [r3, #18]	@ zero_extendqisi2
	cmp	r3, #10
	bne	.L144
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	movs	r2, #7
	strb	r2, [r3, #19]
	b	.L141
.L144:
	ldr	r3, [r7, #24]
	cmp	r3, #8
	bne	.L145
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	ldrb	r3, [r3, #18]	@ zero_extendqisi2
	cmp	r3, #27
	bne	.L145
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	ldr	r2, [r7, #24]
	uxtb	r2, r2
	strb	r2, [r3, #19]
	b	.L141
.L145:
	ldr	r3, [r7, #24]
	cmp	r3, #8
	bne	.L146
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	ldrb	r3, [r3, #18]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L146
	movs	r3, #9
	str	r3, [r7, #24]
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	ldr	r2, [r7, #24]
	uxtb	r2, r2
	strb	r2, [r3, #19]
	b	.L141
.L146:
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	ldr	r2, [r7, #24]
	uxtb	r2, r2
	strb	r2, [r3, #19]
.L141:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L139:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #56]
	cmp	r2, r3
	bcc	.L147
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	ldr	r2, [r7, #56]
	bl	_ZN11hb_buffer_t14merge_clustersEjj(PLT)
	ldr	r2, [r7]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r2, r2, r3
	ldr	r1, [r7, #56]
	ldr	r3, [r7]
	subs	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L148
.LPIC20:
	add	r3, pc
	mov	r2, r3
	bl	_Z14hb_bubble_sortI15hb_glyph_info_tEvPT_jPFiPKS1_S4_E(PLT)
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L149:
	.align	2
.L148:
	.word	_ZL21compare_myanmar_orderPK15hb_glyph_info_tS1_-(.LPIC20+4)
	.fnend
	.size	_ZL37initial_reordering_consonant_syllablePK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj, .-_ZL37initial_reordering_consonant_syllablePK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj
	.section	.text._ZL33initial_reordering_broken_clusterPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL33initial_reordering_broken_clusterPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj, %function
_ZL33initial_reordering_broken_clusterPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj:
	.fnstart
.LFB268:
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
	bl	_ZL37initial_reordering_consonant_syllablePK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL33initial_reordering_broken_clusterPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj, .-_ZL33initial_reordering_broken_clusterPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj
	.section	.text._ZL38initial_reordering_punctuation_clusterPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL38initial_reordering_punctuation_clusterPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj, %function
_ZL38initial_reordering_punctuation_clusterPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj:
	.fnstart
.LFB269:
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
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZL38initial_reordering_punctuation_clusterPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj, .-_ZL38initial_reordering_punctuation_clusterPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj
	.section	.text._ZL38initial_reordering_non_myanmar_clusterPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL38initial_reordering_non_myanmar_clusterPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj, %function
_ZL38initial_reordering_non_myanmar_clusterPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj:
	.fnstart
.LFB270:
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
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZL38initial_reordering_non_myanmar_clusterPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj, .-_ZL38initial_reordering_non_myanmar_clusterPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj
	.section	.text._ZL27initial_reordering_syllablePK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL27initial_reordering_syllablePK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj, %function
_ZL27initial_reordering_syllablePK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj:
	.fnstart
.LFB271:
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
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #100]
	ldr	r2, [r7]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldrb	r3, [r3, #15]	@ zero_extendqisi2
	and	r3, r3, #15
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #3
	bhi	.L153
	adr	r1, .L156
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L156:
	.word	.L155+1-.L156
	.word	.L157+1-.L156
	.word	.L158+1-.L156
	.word	.L159+1-.L156
.L155:
	ldr	r3, [r7, #32]
	str	r3, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	_ZL37initial_reordering_consonant_syllablePK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj(PLT)
	b	.L153
.L157:
	ldr	r3, [r7, #32]
	str	r3, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	_ZL38initial_reordering_punctuation_clusterPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj(PLT)
	b	.L153
.L158:
	ldr	r3, [r7, #32]
	str	r3, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	_ZL33initial_reordering_broken_clusterPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj(PLT)
	b	.L153
.L159:
	ldr	r3, [r7, #32]
	str	r3, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	_ZL38initial_reordering_non_myanmar_clusterPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj(PLT)
	nop
.L153:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL27initial_reordering_syllablePK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj, .-_ZL27initial_reordering_syllablePK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj
	.section	.text._ZL21insert_dotted_circlesPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL21insert_dotted_circlesPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t, %function
_ZL21insert_dotted_circlesPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t:
	.fnstart
.LFB272:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #88
	sub	sp, sp, #88
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #87]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	str	r3, [r7, #72]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	str	r3, [r7, #68]
	movs	r3, #0
	str	r3, [r7, #80]
	b	.L161
.L164:
	ldr	r2, [r7, #80]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	ldrb	r3, [r3, #15]	@ zero_extendqisi2
	and	r3, r3, #15
	cmp	r3, #2
	bne	.L162
	movs	r3, #1
	strb	r3, [r7, #87]
	b	.L163
.L162:
	ldr	r3, [r7, #80]
	adds	r3, r3, #1
	str	r3, [r7, #80]
.L161:
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #72]
	cmp	r2, r3
	bcc	.L164
.L163:
	ldrb	r3, [r7, #87]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L165
	b	.L160
.L165:
	add	r3, r7, #56
	ldr	r0, [r7, #8]
	movw	r1, #9676
	movs	r2, #0
	bl	_ZN9hb_font_t9get_glyphEjjPj(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L167
	b	.L160
.L167:
	add	r3, r7, #36
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
	str	r3, [r7, #36]
	add	r3, r7, #36
	mov	r0, r3
	bl	_ZL22set_myanmar_propertiesR15hb_glyph_info_t(PLT)
	ldr	r3, [r7, #56]
	str	r3, [r7, #36]
	ldr	r0, [r7, #4]
	bl	_ZN11hb_buffer_t12clear_outputEv(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #84]
	movs	r3, #0
	str	r3, [r7, #76]
	b	.L168
.L170:
	ldr	r0, [r7, #4]
	movs	r1, #0
	bl	_ZN11hb_buffer_t3curEj(PLT)
	mov	r3, r0
	ldrb	r3, [r3, #15]	@ zero_extendqisi2
	str	r3, [r7, #64]
	ldr	r3, [r7, #64]
	and	r3, r3, #15
	str	r3, [r7, #60]
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #64]
	cmp	r2, r3
	beq	.L169
	ldr	r3, [r7, #60]
	cmp	r3, #2
	bne	.L169
	ldr	r3, [r7, #64]
	str	r3, [r7, #76]
	add	r4, r7, #16
	add	r5, r7, #36
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r0, [r7, #4]
	movs	r1, #0
	bl	_ZN11hb_buffer_t3curEj(PLT)
	mov	r3, r0
	ldr	r3, [r3, #8]
	str	r3, [r7, #24]
	ldr	r0, [r7, #4]
	movs	r1, #0
	bl	_ZN11hb_buffer_t3curEj(PLT)
	mov	r3, r0
	ldr	r3, [r3, #4]
	str	r3, [r7, #20]
	ldr	r0, [r7, #4]
	movs	r1, #0
	bl	_ZN11hb_buffer_t3curEj(PLT)
	mov	r3, r0
	ldrb	r3, [r3, #15]	@ zero_extendqisi2
	strb	r3, [r7, #31]
	add	r3, r7, #16
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN11hb_buffer_t11output_infoERK15hb_glyph_info_t(PLT)
	b	.L168
.L169:
	ldr	r0, [r7, #4]
	bl	_ZN11hb_buffer_t10next_glyphEv(PLT)
.L168:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #84]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	cmp	r2, r3
	bcc	.L170
	ldr	r0, [r7, #4]
	bl	_ZN11hb_buffer_t12swap_buffersEv(PLT)
.L160:
	adds	r7, r7, #88
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.fnend
	.size	_ZL21insert_dotted_circlesPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t, .-_ZL21insert_dotted_circlesPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t
	.section	.text._ZL18initial_reorderingPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL18initial_reorderingPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t, %function
_ZL18initial_reorderingPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t:
	.fnstart
.LFB273:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #48
	sub	sp, sp, #48
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	_ZL21insert_dotted_circlesPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L173
	b	.L172
.L173:
	movs	r3, #0
	str	r3, [r7, #36]
	ldr	r3, [r7, #24]
	ldrb	r3, [r3, #15]	@ zero_extendqisi2
	str	r3, [r7, #32]
	movs	r3, #1
	str	r3, [r7, #28]
	b	.L175
.L177:
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #24]
	add	r3, r3, r2
	ldrb	r3, [r3, #15]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #32]
	cmp	r2, r3
	beq	.L176
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #52]
	ldr	r2, [r7, #28]
	str	r2, [sp]
	ldr	r0, [r7, #12]
	mov	r1, r3
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #36]
	bl	_ZL27initial_reordering_syllablePK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj(PLT)
	ldr	r3, [r7, #28]
	str	r3, [r7, #36]
	ldr	r2, [r7, #36]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #24]
	add	r3, r3, r2
	ldrb	r3, [r3, #15]	@ zero_extendqisi2
	str	r3, [r7, #32]
.L176:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L175:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcc	.L177
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #52]
	ldr	r2, [r7, #20]
	str	r2, [sp]
	ldr	r0, [r7, #12]
	mov	r1, r3
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #36]
	bl	_ZL27initial_reordering_syllablePK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj(PLT)
.L172:
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL18initial_reorderingPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t, .-_ZL18initial_reorderingPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t
	.section	.text._ZL16final_reorderingPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL16final_reorderingPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t, %function
_ZL16final_reorderingPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t:
	.fnstart
.LFB274:
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
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L179
.L180:
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #24]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3, #15]
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L179:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcc	.L180
	ldr	r0, [r7, #4]
	movs	r1, #6
	movs	r2, #1
	ldr	r3, .L181
.LPIC21:
	add	r3, pc
	bl	_ZN11hb_buffer_t14deallocate_varEjjPKc(PLT)
	ldr	r0, [r7, #4]
	movs	r1, #7
	movs	r2, #1
	ldr	r3, .L181+4
.LPIC22:
	add	r3, pc
	bl	_ZN11hb_buffer_t14deallocate_varEjjPKc(PLT)
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L182:
	.align	2
.L181:
	.word	.LC0-(.LPIC21+4)
	.word	.LC1-(.LPIC22+4)
	.fnend
	.size	_ZL16final_reorderingPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t, .-_ZL16final_reorderingPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t
	.hidden	_hb_ot_complex_shaper_myanmar_old
	.global	_hb_ot_complex_shaper_myanmar_old
	.section	.rodata._hb_ot_complex_shaper_myanmar_old,"a",%progbits
	.align	2
	.type	_hb_ot_complex_shaper_myanmar_old, %object
	.size	_hb_ot_complex_shaper_myanmar_old, 52
_hb_ot_complex_shaper_myanmar_old:
	.ascii	"default\000"
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	2
	.word	0
	.word	0
	.word	0
	.word	3
	.byte	1
	.space	3
	.hidden	_hb_ot_complex_shaper_myanmar
	.global	_hb_ot_complex_shaper_myanmar
	.section	.data.rel.ro.local._hb_ot_complex_shaper_myanmar,"aw",%progbits
	.align	2
	.type	_hb_ot_complex_shaper_myanmar, %object
	.size	_hb_ot_complex_shaper_myanmar, 52
_hb_ot_complex_shaper_myanmar:
	.ascii	"myanmar\000"
	.word	_ZL24collect_features_myanmarP21hb_ot_shape_planner_t
	.word	_ZL25override_features_myanmarP21hb_ot_shape_planner_t
	.word	0
	.word	0
	.word	0
	.word	3
	.word	0
	.word	0
	.word	_ZL19setup_masks_myanmarPK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t
	.word	2
	.byte	0
	.space	3
	.section	.text._Z11hb_in_rangeIjEbT_S0_S0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z11hb_in_rangeIjEbT_S0_S0_, %function
_Z11hb_in_rangeIjEbT_S0_S0_:
	.fnstart
.LFB280:
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
	.section	.text._Z12ARRAY_LENGTHIjLj4EEjRAT0__KT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z12ARRAY_LENGTHIjLj4EEjRAT0__KT_, %function
_Z12ARRAY_LENGTHIjLj4EEjRAT0__KT_:
	.fnstart
.LFB293:
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
	.size	_Z12ARRAY_LENGTHIjLj4EEjRAT0__KT_, .-_Z12ARRAY_LENGTHIjLj4EEjRAT0__KT_
	.section	.text._Z12ARRAY_LENGTHIjLj7EEjRAT0__KT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z12ARRAY_LENGTHIjLj7EEjRAT0__KT_, %function
_Z12ARRAY_LENGTHIjLj7EEjRAT0__KT_:
	.fnstart
.LFB294:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #7
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_Z12ARRAY_LENGTHIjLj7EEjRAT0__KT_, .-_Z12ARRAY_LENGTHIjLj7EEjRAT0__KT_
	.section	.text._Z14hb_bubble_sortI15hb_glyph_info_tEvPT_jPFiPKS1_S4_E,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z14hb_bubble_sortI15hb_glyph_info_tEvPT_jPFiPKS1_S4_E, %function
_Z14hb_bubble_sortI15hb_glyph_info_tEvPT_jPFiPKS1_S4_E:
	.fnstart
.LFB295:
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
	movs	r3, #0
	bl	_Z14hb_bubble_sortI15hb_glyph_info_tiEvPT_jPFiPKS1_S4_EPT0_(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_Z14hb_bubble_sortI15hb_glyph_info_tEvPT_jPFiPKS1_S4_E, .-_Z14hb_bubble_sortI15hb_glyph_info_tEvPT_jPFiPKS1_S4_E
	.section	.text._Z14hb_bubble_sortI15hb_glyph_info_tiEvPT_jPFiPKS1_S4_EPT0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z14hb_bubble_sortI15hb_glyph_info_tiEvPT_jPFiPKS1_S4_EPT0_, %function
_Z14hb_bubble_sortI15hb_glyph_info_tiEvPT_jPFiPKS1_S4_EPT0_:
	.fnstart
.LFB300:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #56
	sub	sp, sp, #56
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L191
	b	.L190
.L191:
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	str	r3, [r7, #52]
.L197:
	movs	r3, #0
	str	r3, [r7, #48]
	movs	r3, #0
	str	r3, [r7, #44]
	b	.L193
.L196:
	ldr	r2, [r7, #44]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	adds	r1, r2, r3
	ldr	r3, [r7, #44]
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
	beq	.L194
	ldr	r2, [r7, #44]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	add	r4, r7, #20
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r2, [r7, #44]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	adds	r1, r2, r3
	ldr	r3, [r7, #44]
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
	ldr	r3, [r7, #44]
	adds	r2, r3, #1
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	mov	r4, r3
	add	r5, r7, #20
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L195
	ldr	r3, [r7, #44]
	lsls	r3, r3, #2
	ldr	r2, [r7]
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #40]
	ldr	r3, [r7, #44]
	lsls	r3, r3, #2
	ldr	r2, [r7]
	add	r3, r3, r2
	ldr	r2, [r7, #44]
	adds	r2, r2, #1
	lsls	r2, r2, #2
	ldr	r1, [r7]
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7]
	add	r3, r3, r2
	ldr	r2, [r7, #40]
	str	r2, [r3]
.L195:
	ldr	r3, [r7, #44]
	str	r3, [r7, #48]
.L194:
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	str	r3, [r7, #44]
.L193:
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bcc	.L196
	ldr	r3, [r7, #48]
	str	r3, [r7, #52]
	ldr	r3, [r7, #52]
	cmp	r3, #0
	bne	.L197
.L190:
	adds	r7, r7, #56
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.fnend
	.size	_Z14hb_bubble_sortI15hb_glyph_info_tiEvPT_jPFiPKS1_S4_EPT0_, .-_Z14hb_bubble_sortI15hb_glyph_info_tiEvPT_jPFiPKS1_S4_EPT0_
	.section	.rodata._ZL10table_tags,"a",%progbits
	.align	2
	.type	_ZL10table_tags, %object
	.size	_ZL10table_tags, 8
_ZL10table_tags:
	.word	1196643650
	.word	1196445523
	.section	.rodata._ZL14basic_features,"a",%progbits
	.align	2
	.type	_ZL14basic_features, %object
	.size	_ZL14basic_features, 16
_ZL14basic_features:
	.word	1919969382
	.word	1886545254
	.word	1651275622
	.word	1886614630
	.section	.rodata._ZL14other_features,"a",%progbits
	.align	2
	.type	_ZL14other_features, %object
	.size	_ZL14other_features, 28
_ZL14other_features:
	.word	1886545267
	.word	1633842803
	.word	1651275635
	.word	1886614643
	.word	1684632436
	.word	1633842797
	.word	1651275629
	.section	.rodata._ZL36_myanmar_syllable_machine_trans_keys,"a",%progbits
	.align	2
	.type	_ZL36_myanmar_syllable_machine_trans_keys, %object
	.size	_ZL36_myanmar_syllable_machine_trans_keys, 91
_ZL36_myanmar_syllable_machine_trans_keys:
	.byte	1
	.byte	31
	.byte	3
	.byte	30
	.byte	5
	.byte	29
	.byte	5
	.byte	8
	.byte	5
	.byte	29
	.byte	3
	.byte	25
	.byte	5
	.byte	25
	.byte	5
	.byte	25
	.byte	3
	.byte	29
	.byte	3
	.byte	29
	.byte	3
	.byte	29
	.byte	3
	.byte	29
	.byte	1
	.byte	16
	.byte	3
	.byte	29
	.byte	3
	.byte	29
	.byte	3
	.byte	29
	.byte	3
	.byte	29
	.byte	3
	.byte	29
	.byte	3
	.byte	29
	.byte	3
	.byte	29
	.byte	3
	.byte	29
	.byte	3
	.byte	29
	.byte	5
	.byte	29
	.byte	5
	.byte	8
	.byte	5
	.byte	29
	.byte	3
	.byte	25
	.byte	5
	.byte	25
	.byte	5
	.byte	25
	.byte	3
	.byte	29
	.byte	3
	.byte	29
	.byte	3
	.byte	29
	.byte	3
	.byte	29
	.byte	3
	.byte	30
	.byte	3
	.byte	29
	.byte	1
	.byte	30
	.byte	3
	.byte	29
	.byte	3
	.byte	29
	.byte	3
	.byte	29
	.byte	3
	.byte	29
	.byte	3
	.byte	29
	.byte	3
	.byte	29
	.byte	3
	.byte	29
	.byte	3
	.byte	29
	.byte	3
	.byte	29
	.byte	8
	.byte	8
	.byte	0
	.section	.rodata._ZL35_myanmar_syllable_machine_key_spans,"a",%progbits
	.align	2
	.type	_ZL35_myanmar_syllable_machine_key_spans, %object
	.size	_ZL35_myanmar_syllable_machine_key_spans, 45
_ZL35_myanmar_syllable_machine_key_spans:
	.byte	31
	.byte	28
	.byte	25
	.byte	4
	.byte	25
	.byte	23
	.byte	21
	.byte	21
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	16
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	25
	.byte	4
	.byte	25
	.byte	23
	.byte	21
	.byte	21
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	28
	.byte	27
	.byte	30
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	1
	.section	.rodata._ZL39_myanmar_syllable_machine_index_offsets,"a",%progbits
	.align	2
	.type	_ZL39_myanmar_syllable_machine_index_offsets, %object
	.size	_ZL39_myanmar_syllable_machine_index_offsets, 90
_ZL39_myanmar_syllable_machine_index_offsets:
	.short	0
	.short	32
	.short	61
	.short	87
	.short	92
	.short	118
	.short	142
	.short	164
	.short	186
	.short	214
	.short	242
	.short	270
	.short	298
	.short	315
	.short	343
	.short	371
	.short	399
	.short	427
	.short	455
	.short	483
	.short	511
	.short	539
	.short	567
	.short	593
	.short	598
	.short	624
	.short	648
	.short	670
	.short	692
	.short	720
	.short	748
	.short	776
	.short	804
	.short	833
	.short	861
	.short	892
	.short	920
	.short	948
	.short	976
	.short	1004
	.short	1032
	.short	1060
	.short	1088
	.short	1116
	.short	1144
	.section	.rodata._ZL34_myanmar_syllable_machine_indicies,"a",%progbits
	.align	2
	.type	_ZL34_myanmar_syllable_machine_indicies, %object
	.size	_ZL34_myanmar_syllable_machine_indicies, 1147
_ZL34_myanmar_syllable_machine_indicies:
	.byte	1
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	4
	.byte	0
	.byte	5
	.byte	0
	.byte	6
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	7
	.byte	0
	.byte	8
	.byte	1
	.byte	0
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	16
	.byte	17
	.byte	18
	.byte	19
	.byte	0
	.byte	21
	.byte	22
	.byte	23
	.byte	23
	.byte	20
	.byte	24
	.byte	20
	.byte	25
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	26
	.byte	20
	.byte	20
	.byte	27
	.byte	28
	.byte	29
	.byte	30
	.byte	31
	.byte	32
	.byte	33
	.byte	34
	.byte	35
	.byte	36
	.byte	20
	.byte	23
	.byte	23
	.byte	20
	.byte	24
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	37
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	31
	.byte	20
	.byte	20
	.byte	20
	.byte	35
	.byte	20
	.byte	23
	.byte	23
	.byte	20
	.byte	24
	.byte	20
	.byte	23
	.byte	23
	.byte	20
	.byte	24
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	31
	.byte	20
	.byte	20
	.byte	20
	.byte	35
	.byte	20
	.byte	38
	.byte	20
	.byte	23
	.byte	23
	.byte	20
	.byte	24
	.byte	20
	.byte	31
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	39
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	31
	.byte	20
	.byte	23
	.byte	23
	.byte	20
	.byte	24
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	39
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	31
	.byte	20
	.byte	23
	.byte	23
	.byte	20
	.byte	24
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	31
	.byte	20
	.byte	21
	.byte	20
	.byte	23
	.byte	23
	.byte	20
	.byte	24
	.byte	20
	.byte	25
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	40
	.byte	20
	.byte	20
	.byte	40
	.byte	20
	.byte	20
	.byte	20
	.byte	31
	.byte	41
	.byte	20
	.byte	20
	.byte	35
	.byte	20
	.byte	21
	.byte	20
	.byte	23
	.byte	23
	.byte	20
	.byte	24
	.byte	20
	.byte	25
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	31
	.byte	20
	.byte	20
	.byte	20
	.byte	35
	.byte	20
	.byte	21
	.byte	20
	.byte	23
	.byte	23
	.byte	20
	.byte	24
	.byte	20
	.byte	25
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	40
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	31
	.byte	41
	.byte	20
	.byte	20
	.byte	35
	.byte	20
	.byte	21
	.byte	20
	.byte	23
	.byte	23
	.byte	20
	.byte	24
	.byte	20
	.byte	25
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	31
	.byte	41
	.byte	20
	.byte	20
	.byte	35
	.byte	20
	.byte	1
	.byte	1
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	1
	.byte	20
	.byte	21
	.byte	20
	.byte	23
	.byte	23
	.byte	20
	.byte	24
	.byte	20
	.byte	25
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	26
	.byte	20
	.byte	20
	.byte	27
	.byte	28
	.byte	29
	.byte	30
	.byte	31
	.byte	32
	.byte	33
	.byte	34
	.byte	35
	.byte	20
	.byte	21
	.byte	20
	.byte	23
	.byte	23
	.byte	20
	.byte	24
	.byte	20
	.byte	25
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	34
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	31
	.byte	32
	.byte	33
	.byte	34
	.byte	35
	.byte	20
	.byte	21
	.byte	20
	.byte	23
	.byte	23
	.byte	20
	.byte	24
	.byte	20
	.byte	25
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	31
	.byte	32
	.byte	33
	.byte	34
	.byte	35
	.byte	20
	.byte	21
	.byte	20
	.byte	23
	.byte	23
	.byte	20
	.byte	24
	.byte	20
	.byte	25
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	31
	.byte	32
	.byte	33
	.byte	20
	.byte	35
	.byte	20
	.byte	21
	.byte	20
	.byte	23
	.byte	23
	.byte	20
	.byte	24
	.byte	20
	.byte	25
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	31
	.byte	20
	.byte	33
	.byte	20
	.byte	35
	.byte	20
	.byte	21
	.byte	20
	.byte	23
	.byte	23
	.byte	20
	.byte	24
	.byte	20
	.byte	25
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	34
	.byte	20
	.byte	20
	.byte	27
	.byte	20
	.byte	29
	.byte	20
	.byte	31
	.byte	32
	.byte	33
	.byte	34
	.byte	35
	.byte	20
	.byte	21
	.byte	20
	.byte	23
	.byte	23
	.byte	20
	.byte	24
	.byte	20
	.byte	25
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	34
	.byte	20
	.byte	20
	.byte	27
	.byte	20
	.byte	20
	.byte	20
	.byte	31
	.byte	32
	.byte	33
	.byte	34
	.byte	35
	.byte	20
	.byte	21
	.byte	20
	.byte	23
	.byte	23
	.byte	20
	.byte	24
	.byte	20
	.byte	25
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	34
	.byte	20
	.byte	20
	.byte	27
	.byte	28
	.byte	29
	.byte	20
	.byte	31
	.byte	32
	.byte	33
	.byte	34
	.byte	35
	.byte	20
	.byte	21
	.byte	22
	.byte	23
	.byte	23
	.byte	20
	.byte	24
	.byte	20
	.byte	25
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	26
	.byte	20
	.byte	20
	.byte	27
	.byte	28
	.byte	29
	.byte	30
	.byte	31
	.byte	32
	.byte	33
	.byte	34
	.byte	35
	.byte	20
	.byte	3
	.byte	3
	.byte	42
	.byte	5
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	43
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	13
	.byte	42
	.byte	42
	.byte	42
	.byte	17
	.byte	42
	.byte	3
	.byte	3
	.byte	42
	.byte	5
	.byte	42
	.byte	3
	.byte	3
	.byte	42
	.byte	5
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	13
	.byte	42
	.byte	42
	.byte	42
	.byte	17
	.byte	42
	.byte	44
	.byte	42
	.byte	3
	.byte	3
	.byte	42
	.byte	5
	.byte	42
	.byte	13
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	45
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	13
	.byte	42
	.byte	3
	.byte	3
	.byte	42
	.byte	5
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	45
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	13
	.byte	42
	.byte	3
	.byte	3
	.byte	42
	.byte	5
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	13
	.byte	42
	.byte	2
	.byte	42
	.byte	3
	.byte	3
	.byte	42
	.byte	5
	.byte	42
	.byte	6
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	46
	.byte	42
	.byte	42
	.byte	46
	.byte	42
	.byte	42
	.byte	42
	.byte	13
	.byte	47
	.byte	42
	.byte	42
	.byte	17
	.byte	42
	.byte	2
	.byte	42
	.byte	3
	.byte	3
	.byte	42
	.byte	5
	.byte	42
	.byte	6
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	13
	.byte	42
	.byte	42
	.byte	42
	.byte	17
	.byte	42
	.byte	2
	.byte	42
	.byte	3
	.byte	3
	.byte	42
	.byte	5
	.byte	42
	.byte	6
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	46
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	13
	.byte	47
	.byte	42
	.byte	42
	.byte	17
	.byte	42
	.byte	2
	.byte	42
	.byte	3
	.byte	3
	.byte	42
	.byte	5
	.byte	42
	.byte	6
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	13
	.byte	47
	.byte	42
	.byte	42
	.byte	17
	.byte	42
	.byte	21
	.byte	22
	.byte	23
	.byte	23
	.byte	20
	.byte	24
	.byte	20
	.byte	25
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	48
	.byte	20
	.byte	20
	.byte	27
	.byte	28
	.byte	29
	.byte	30
	.byte	31
	.byte	32
	.byte	33
	.byte	34
	.byte	35
	.byte	36
	.byte	20
	.byte	21
	.byte	49
	.byte	23
	.byte	23
	.byte	20
	.byte	24
	.byte	20
	.byte	25
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	26
	.byte	20
	.byte	20
	.byte	27
	.byte	28
	.byte	29
	.byte	30
	.byte	31
	.byte	32
	.byte	33
	.byte	34
	.byte	35
	.byte	20
	.byte	1
	.byte	1
	.byte	2
	.byte	3
	.byte	3
	.byte	3
	.byte	42
	.byte	5
	.byte	42
	.byte	6
	.byte	1
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	1
	.byte	42
	.byte	8
	.byte	1
	.byte	42
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	16
	.byte	17
	.byte	18
	.byte	42
	.byte	2
	.byte	42
	.byte	3
	.byte	3
	.byte	42
	.byte	5
	.byte	42
	.byte	6
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	8
	.byte	42
	.byte	42
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	16
	.byte	17
	.byte	42
	.byte	2
	.byte	42
	.byte	3
	.byte	3
	.byte	42
	.byte	5
	.byte	42
	.byte	6
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	16
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	13
	.byte	14
	.byte	15
	.byte	16
	.byte	17
	.byte	42
	.byte	2
	.byte	42
	.byte	3
	.byte	3
	.byte	42
	.byte	5
	.byte	42
	.byte	6
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	13
	.byte	14
	.byte	15
	.byte	16
	.byte	17
	.byte	42
	.byte	2
	.byte	42
	.byte	3
	.byte	3
	.byte	42
	.byte	5
	.byte	42
	.byte	6
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	13
	.byte	14
	.byte	15
	.byte	42
	.byte	17
	.byte	42
	.byte	2
	.byte	42
	.byte	3
	.byte	3
	.byte	42
	.byte	5
	.byte	42
	.byte	6
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	13
	.byte	42
	.byte	15
	.byte	42
	.byte	17
	.byte	42
	.byte	2
	.byte	42
	.byte	3
	.byte	3
	.byte	42
	.byte	5
	.byte	42
	.byte	6
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	16
	.byte	42
	.byte	42
	.byte	9
	.byte	42
	.byte	11
	.byte	42
	.byte	13
	.byte	14
	.byte	15
	.byte	16
	.byte	17
	.byte	42
	.byte	2
	.byte	42
	.byte	3
	.byte	3
	.byte	42
	.byte	5
	.byte	42
	.byte	6
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	16
	.byte	42
	.byte	42
	.byte	9
	.byte	42
	.byte	42
	.byte	42
	.byte	13
	.byte	14
	.byte	15
	.byte	16
	.byte	17
	.byte	42
	.byte	2
	.byte	42
	.byte	3
	.byte	3
	.byte	42
	.byte	5
	.byte	42
	.byte	6
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	16
	.byte	42
	.byte	42
	.byte	9
	.byte	10
	.byte	11
	.byte	42
	.byte	13
	.byte	14
	.byte	15
	.byte	16
	.byte	17
	.byte	42
	.byte	2
	.byte	3
	.byte	3
	.byte	3
	.byte	42
	.byte	5
	.byte	42
	.byte	6
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	8
	.byte	42
	.byte	42
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	16
	.byte	17
	.byte	42
	.byte	51
	.byte	50
	.byte	0
	.section	.rodata._ZL37_myanmar_syllable_machine_trans_targs,"a",%progbits
	.align	2
	.type	_ZL37_myanmar_syllable_machine_trans_targs, %object
	.size	_ZL37_myanmar_syllable_machine_trans_targs, 52
_ZL37_myanmar_syllable_machine_trans_targs:
	.byte	0
	.byte	1
	.byte	22
	.byte	0
	.byte	0
	.byte	23
	.byte	29
	.byte	32
	.byte	35
	.byte	36
	.byte	40
	.byte	41
	.byte	42
	.byte	25
	.byte	38
	.byte	39
	.byte	37
	.byte	28
	.byte	43
	.byte	44
	.byte	0
	.byte	2
	.byte	12
	.byte	0
	.byte	3
	.byte	9
	.byte	13
	.byte	14
	.byte	18
	.byte	19
	.byte	20
	.byte	5
	.byte	16
	.byte	17
	.byte	15
	.byte	8
	.byte	21
	.byte	4
	.byte	6
	.byte	7
	.byte	10
	.byte	11
	.byte	0
	.byte	24
	.byte	26
	.byte	27
	.byte	30
	.byte	31
	.byte	33
	.byte	34
	.byte	0
	.byte	0
	.section	.rodata._ZL39_myanmar_syllable_machine_trans_actions,"a",%progbits
	.align	2
	.type	_ZL39_myanmar_syllable_machine_trans_actions, %object
	.size	_ZL39_myanmar_syllable_machine_trans_actions, 52
_ZL39_myanmar_syllable_machine_trans_actions:
	.byte	3
	.byte	0
	.byte	0
	.byte	4
	.byte	5
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	6
	.byte	0
	.byte	0
	.byte	7
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	9
	.byte	10
	.section	.rodata._ZL42_myanmar_syllable_machine_to_state_actions,"a",%progbits
	.align	2
	.type	_ZL42_myanmar_syllable_machine_to_state_actions, %object
	.size	_ZL42_myanmar_syllable_machine_to_state_actions, 45
_ZL42_myanmar_syllable_machine_to_state_actions:
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata._ZL44_myanmar_syllable_machine_from_state_actions,"a",%progbits
	.align	2
	.type	_ZL44_myanmar_syllable_machine_from_state_actions, %object
	.size	_ZL44_myanmar_syllable_machine_from_state_actions, 45
_ZL44_myanmar_syllable_machine_from_state_actions:
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata._ZL35_myanmar_syllable_machine_eof_trans,"a",%progbits
	.align	2
	.type	_ZL35_myanmar_syllable_machine_eof_trans, %object
	.size	_ZL35_myanmar_syllable_machine_eof_trans, 90
_ZL35_myanmar_syllable_machine_eof_trans:
	.short	0
	.short	21
	.short	21
	.short	21
	.short	21
	.short	21
	.short	21
	.short	21
	.short	21
	.short	21
	.short	21
	.short	21
	.short	21
	.short	21
	.short	21
	.short	21
	.short	21
	.short	21
	.short	21
	.short	21
	.short	21
	.short	21
	.short	43
	.short	43
	.short	43
	.short	43
	.short	43
	.short	43
	.short	43
	.short	43
	.short	43
	.short	43
	.short	21
	.short	21
	.short	43
	.short	43
	.short	43
	.short	43
	.short	43
	.short	43
	.short	43
	.short	43
	.short	43
	.short	43
	.short	51
	.section	.rodata._ZL30myanmar_syllable_machine_start,"a",%progbits
	.align	2
	.type	_ZL30myanmar_syllable_machine_start, %object
	.size	_ZL30myanmar_syllable_machine_start, 4
_ZL30myanmar_syllable_machine_start:
	.space	4
	.section	.rodata._ZL36myanmar_syllable_machine_first_final,"a",%progbits
	.align	2
	.type	_ZL36myanmar_syllable_machine_first_final, %object
	.size	_ZL36myanmar_syllable_machine_first_final, 4
_ZL36myanmar_syllable_machine_first_final:
	.space	4
	.section	.rodata._ZL30myanmar_syllable_machine_error,"a",%progbits
	.align	2
	.type	_ZL30myanmar_syllable_machine_error, %object
	.size	_ZL30myanmar_syllable_machine_error, 4
_ZL30myanmar_syllable_machine_error:
	.word	-1
	.section	.rodata._ZL32myanmar_syllable_machine_en_main,"a",%progbits
	.align	2
	.type	_ZL32myanmar_syllable_machine_en_main, %object
	.size	_ZL32myanmar_syllable_machine_en_main, 4
_ZL32myanmar_syllable_machine_en_main:
	.space	4
	.hidden	_ZN11hb_buffer_t14deallocate_varEjjPKc
	.hidden	_ZN11hb_buffer_t12swap_buffersEv
	.hidden	_ZN11hb_buffer_t11output_infoERK15hb_glyph_info_t
	.hidden	_ZN11hb_buffer_t12clear_outputEv
	.hidden	_ZN11hb_buffer_t14merge_clustersEjj
	.hidden	_ZN11hb_buffer_t12allocate_varEjjPKc
	.hidden	_Z23hb_indic_get_categoriesj
	.hidden	_ZN19hb_ot_map_builder_t9add_pauseEjPFvPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tE
	.hidden	_ZN19hb_ot_map_builder_t11add_featureEjj25hb_ot_map_feature_flags_t
	.hidden	_ZN11hb_buffer_t13make_room_forEjj
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
