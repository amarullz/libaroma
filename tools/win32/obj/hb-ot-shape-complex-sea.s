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
	.file	"hb-ot-shape-complex-sea.cc"
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
	.section	.text._ZL20collect_features_seaP21hb_ot_shape_planner_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL20collect_features_seaP21hb_ot_shape_planner_t, %function
_ZL20collect_features_seaP21hb_ot_shape_planner_t:
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
	ldr	r3, .L20
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
	ldr	r3, .L20+4
.LPIC1:
	add	r3, pc
	mov	r1, r3
	bl	_ZN19hb_ot_map_builder_t14add_gsub_pauseEPFvPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tE(PLT)
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L16
.L17:
	ldr	r3, .L20+8
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
.L16:
	ldr	r3, .L20+12
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
	bne	.L17
	ldr	r0, [r7, #12]
	ldr	r3, .L20+16
.LPIC4:
	add	r3, pc
	mov	r1, r3
	bl	_ZN19hb_ot_map_builder_t14add_gsub_pauseEPFvPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tE(PLT)
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L18
.L19:
	ldr	r3, .L20+20
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
.L18:
	ldr	r3, .L20+24
.LPIC6:
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
	bne	.L19
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L21:
	.align	2
.L20:
	.word	_ZL15setup_syllablesPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t-(.LPIC0+4)
	.word	_ZL18initial_reorderingPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t-(.LPIC1+4)
	.word	_ZL14basic_features-(.LPIC2+4)
	.word	_ZL14basic_features-(.LPIC3+4)
	.word	_ZL16final_reorderingPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t-(.LPIC4+4)
	.word	_ZL14other_features-(.LPIC5+4)
	.word	_ZL14other_features-(.LPIC6+4)
	.fnend
	.size	_ZL20collect_features_seaP21hb_ot_shape_planner_t, .-_ZL20collect_features_seaP21hb_ot_shape_planner_t
	.section	.text._ZL21override_features_seaP21hb_ot_shape_planner_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL21override_features_seaP21hb_ot_shape_planner_t, %function
_ZL21override_features_seaP21hb_ot_shape_planner_t:
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
	.size	_ZL21override_features_seaP21hb_ot_shape_planner_t, .-_ZL21override_features_seaP21hb_ot_shape_planner_t
	.section	.text._ZL14find_syllablesP11hb_buffer_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL14find_syllablesP11hb_buffer_t, %function
_ZL14find_syllablesP11hb_buffer_t:
	.fnstart
.LFB260:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #92
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	str	r3, [r7, #36]
	movs	r3, #2
	str	r3, [r7, #76]
	movs	r3, #0
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #80]
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #84]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #72]
	movs	r3, #1
	str	r3, [r7, #68]
	ldr	r2, [r7, #84]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bne	.L24
	b	.L25
.L24:
	ldr	r3, .L62
.LPIC7:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #76]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #5
	bne	.L26
	ldr	r3, [r7, #84]
	str	r3, [r7, #32]
	nop
.L26:
	ldr	r3, [r7, #76]
	lsls	r3, r3, #1
	mov	r2, r3
	ldr	r3, .L62+4
.LPIC8:
	add	r3, pc
	add	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, .L62+8
.LPIC9:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #76]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L62+12
.LPIC10:
	add	r3, pc
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, .L62+16
.LPIC11:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #76]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	ble	.L28
	ldr	r3, [r7, #16]
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r2, [r7, #84]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrb	r3, [r3, #18]	@ zero_extendqisi2
	cmp	r1, r3
	bhi	.L28
	ldr	r2, [r7, #84]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrb	r2, [r3, #18]	@ zero_extendqisi2
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	bhi	.L28
	ldr	r2, [r7, #84]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrb	r3, [r3, #18]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r2, r3
	b	.L29
.L28:
	ldr	r3, [r7, #8]
.L29:
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #64]
.L30:
	ldr	r3, .L62+20
.LPIC12:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #64]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #76]
	ldr	r3, .L62+24
.LPIC13:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #64]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L31
	b	.L32
.L31:
	ldr	r3, .L62+28
.LPIC14:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #64]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #1
	cmp	r3, #8
	bhi	.L32
	adr	r1, .L34
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L34:
	.word	.L33+1-.L34
	.word	.L35+1-.L34
	.word	.L36+1-.L34
	.word	.L32+1-.L34
	.word	.L32+1-.L34
	.word	.L37+1-.L34
	.word	.L38+1-.L34
	.word	.L39+1-.L34
	.word	.L40+1-.L34
.L35:
	ldr	r3, [r7, #84]
	adds	r3, r3, #1
	str	r3, [r7, #80]
	b	.L32
.L37:
	ldr	r3, [r7, #84]
	adds	r3, r3, #1
	str	r3, [r7, #80]
	ldr	r3, [r7, #72]
	str	r3, [r7, #60]
	b	.L41
.L42:
	ldr	r2, [r7, #60]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldr	r2, [r7, #68]
	uxtb	r2, r2
	lsls	r2, r2, #4
	uxtb	r2, r2
	orr	r2, r2, #2
	uxtb	r2, r2
	strb	r2, [r3, #15]
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
.L41:
	ldr	r3, [r7, #84]
	adds	r2, r3, #1
	ldr	r3, [r7, #60]
	cmp	r2, r3
	bhi	.L42
	ldr	r3, [r7, #84]
	adds	r3, r3, #1
	str	r3, [r7, #72]
	ldr	r3, [r7, #68]
	adds	r3, r3, #1
	str	r3, [r7, #68]
	ldr	r3, [r7, #68]
	cmp	r3, #16
	bne	.L43
	movs	r3, #1
	str	r3, [r7, #68]
.L43:
	b	.L32
.L38:
	ldr	r3, [r7, #84]
	str	r3, [r7, #80]
	ldr	r3, [r7, #84]
	subs	r3, r3, #1
	str	r3, [r7, #84]
	ldr	r3, [r7, #72]
	str	r3, [r7, #56]
	b	.L44
.L45:
	ldr	r2, [r7, #56]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldr	r2, [r7, #68]
	uxtb	r2, r2
	lsls	r2, r2, #4
	uxtb	r2, r2
	strb	r2, [r3, #15]
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	str	r3, [r7, #56]
.L44:
	ldr	r3, [r7, #84]
	adds	r2, r3, #1
	ldr	r3, [r7, #56]
	cmp	r2, r3
	bhi	.L45
	ldr	r3, [r7, #84]
	adds	r3, r3, #1
	str	r3, [r7, #72]
	ldr	r3, [r7, #68]
	adds	r3, r3, #1
	str	r3, [r7, #68]
	ldr	r3, [r7, #68]
	cmp	r3, #16
	bne	.L46
	movs	r3, #1
	str	r3, [r7, #68]
.L46:
	b	.L32
.L39:
	ldr	r3, [r7, #84]
	str	r3, [r7, #80]
	ldr	r3, [r7, #84]
	subs	r3, r3, #1
	str	r3, [r7, #84]
	ldr	r3, [r7, #72]
	str	r3, [r7, #52]
	b	.L47
.L48:
	ldr	r2, [r7, #52]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldr	r2, [r7, #68]
	uxtb	r2, r2
	lsls	r2, r2, #4
	uxtb	r2, r2
	orr	r2, r2, #1
	uxtb	r2, r2
	strb	r2, [r3, #15]
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	str	r3, [r7, #52]
.L47:
	ldr	r3, [r7, #84]
	adds	r2, r3, #1
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bhi	.L48
	ldr	r3, [r7, #84]
	adds	r3, r3, #1
	str	r3, [r7, #72]
	ldr	r3, [r7, #68]
	adds	r3, r3, #1
	str	r3, [r7, #68]
	ldr	r3, [r7, #68]
	cmp	r3, #16
	bne	.L49
	movs	r3, #1
	str	r3, [r7, #68]
.L49:
	b	.L32
.L40:
	ldr	r3, [r7, #84]
	str	r3, [r7, #80]
	ldr	r3, [r7, #84]
	subs	r3, r3, #1
	str	r3, [r7, #84]
	ldr	r3, [r7, #72]
	str	r3, [r7, #48]
	b	.L50
.L51:
	ldr	r2, [r7, #48]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldr	r2, [r7, #68]
	uxtb	r2, r2
	lsls	r2, r2, #4
	uxtb	r2, r2
	orr	r2, r2, #2
	uxtb	r2, r2
	strb	r2, [r3, #15]
	ldr	r3, [r7, #48]
	adds	r3, r3, #1
	str	r3, [r7, #48]
.L50:
	ldr	r3, [r7, #84]
	adds	r2, r3, #1
	ldr	r3, [r7, #48]
	cmp	r2, r3
	bhi	.L51
	ldr	r3, [r7, #84]
	adds	r3, r3, #1
	str	r3, [r7, #72]
	ldr	r3, [r7, #68]
	adds	r3, r3, #1
	str	r3, [r7, #68]
	ldr	r3, [r7, #68]
	cmp	r3, #16
	bne	.L52
	movs	r3, #1
	str	r3, [r7, #68]
.L52:
	b	.L32
.L33:
	ldr	r3, [r7, #80]
	subs	r3, r3, #1
	str	r3, [r7, #84]
	ldr	r3, [r7, #72]
	str	r3, [r7, #44]
	b	.L53
.L54:
	ldr	r2, [r7, #44]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldr	r2, [r7, #68]
	uxtb	r2, r2
	lsls	r2, r2, #4
	uxtb	r2, r2
	strb	r2, [r3, #15]
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	str	r3, [r7, #44]
.L53:
	ldr	r3, [r7, #84]
	adds	r2, r3, #1
	ldr	r3, [r7, #44]
	cmp	r2, r3
	bhi	.L54
	ldr	r3, [r7, #84]
	adds	r3, r3, #1
	str	r3, [r7, #72]
	ldr	r3, [r7, #68]
	adds	r3, r3, #1
	str	r3, [r7, #68]
	ldr	r3, [r7, #68]
	cmp	r3, #16
	bne	.L55
	movs	r3, #1
	str	r3, [r7, #68]
.L55:
	b	.L32
.L36:
	ldr	r3, [r7, #80]
	subs	r3, r3, #1
	str	r3, [r7, #84]
	ldr	r3, [r7, #72]
	str	r3, [r7, #40]
	b	.L56
.L57:
	ldr	r2, [r7, #40]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldr	r2, [r7, #68]
	uxtb	r2, r2
	lsls	r2, r2, #4
	uxtb	r2, r2
	orr	r2, r2, #1
	uxtb	r2, r2
	strb	r2, [r3, #15]
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	str	r3, [r7, #40]
.L56:
	ldr	r3, [r7, #84]
	adds	r2, r3, #1
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bhi	.L57
	ldr	r3, [r7, #84]
	adds	r3, r3, #1
	str	r3, [r7, #72]
	ldr	r3, [r7, #68]
	adds	r3, r3, #1
	str	r3, [r7, #68]
	ldr	r3, [r7, #68]
	cmp	r3, #16
	bne	.L58
	movs	r3, #1
	str	r3, [r7, #68]
.L58:
	nop
.L32:
	ldr	r3, .L62+32
.LPIC15:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #76]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #4
	bne	.L59
	movs	r3, #0
	str	r3, [r7, #32]
	nop
.L59:
	ldr	r3, [r7, #84]
	adds	r3, r3, #1
	str	r3, [r7, #84]
	ldr	r2, [r7, #84]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L25
	b	.L24
.L25:
	ldr	r2, [r7, #84]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bne	.L23
	ldr	r3, .L62+36
.LPIC16:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #76]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L23
	ldr	r3, .L62+40
.LPIC17:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #76]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #1
	str	r3, [r7, #64]
	b	.L30
.L23:
	adds	r7, r7, #92
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L63:
	.align	2
.L62:
	.word	_ZL40_sea_syllable_machine_from_state_actions-(.LPIC7+4)
	.word	_ZL32_sea_syllable_machine_trans_keys-(.LPIC8+4)
	.word	_ZL35_sea_syllable_machine_index_offsets-(.LPIC9+4)
	.word	_ZL30_sea_syllable_machine_indicies-(.LPIC10+4)
	.word	_ZL31_sea_syllable_machine_key_spans-(.LPIC11+4)
	.word	_ZL33_sea_syllable_machine_trans_targs-(.LPIC12+4)
	.word	_ZL35_sea_syllable_machine_trans_actions-(.LPIC13+4)
	.word	_ZL35_sea_syllable_machine_trans_actions-(.LPIC14+4)
	.word	_ZL38_sea_syllable_machine_to_state_actions-(.LPIC15+4)
	.word	_ZL31_sea_syllable_machine_eof_trans-(.LPIC16+4)
	.word	_ZL31_sea_syllable_machine_eof_trans-(.LPIC17+4)
	.cantunwind
	.fnend
	.size	_ZL14find_syllablesP11hb_buffer_t, .-_ZL14find_syllablesP11hb_buffer_t
	.section	.text._ZL18set_sea_propertiesR15hb_glyph_info_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL18set_sea_propertiesR15hb_glyph_info_t, %function
_ZL18set_sea_propertiesR15hb_glyph_info_t:
	.fnstart
.LFB261:
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
	str	r3, [r7, #16]
	ldr	r0, [r7, #16]
	bl	_Z23hb_indic_get_categoriesj(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	and	r3, r3, #127
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	lsrs	r3, r3, #8
	str	r3, [r7, #8]
	ldr	r2, [r7, #16]
	movw	r3, #6741
	cmp	r2, r3
	beq	.L65
	ldr	r2, [r7, #16]
	movw	r3, #43572
	cmp	r2, r3
	bne	.L66
.L65:
	movs	r3, #22
	str	r3, [r7, #20]
.L66:
	ldr	r3, [r7, #20]
	cmp	r3, #7
	bne	.L67
	ldr	r3, [r7, #8]
	subs	r3, r3, #3
	cmp	r3, #8
	bhi	.L67
	adr	r1, .L70
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L70:
	.word	.L69+1-.L70
	.word	.L67+1-.L70
	.word	.L67+1-.L70
	.word	.L71+1-.L70
	.word	.L67+1-.L70
	.word	.L72+1-.L70
	.word	.L67+1-.L70
	.word	.L67+1-.L70
	.word	.L73+1-.L70
.L69:
	movs	r3, #28
	str	r3, [r7, #20]
	b	.L68
.L71:
	movs	r3, #26
	str	r3, [r7, #20]
	b	.L68
.L72:
	movs	r3, #27
	str	r3, [r7, #20]
	b	.L68
.L73:
	movs	r3, #29
	str	r3, [r7, #20]
	nop
.L68:
.L67:
	ldr	r3, [r7, #20]
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3, #18]
	ldr	r3, [r7, #8]
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3, #19]
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL18set_sea_propertiesR15hb_glyph_info_t, .-_ZL18set_sea_propertiesR15hb_glyph_info_t
	.section	.rodata
	.align	2
.LC0:
	.ascii	"sea_category\000"
	.align	2
.LC1:
	.ascii	"sea_position\000"
	.section	.text._ZL15setup_masks_seaPK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL15setup_masks_seaPK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t, %function
_ZL15setup_masks_seaPK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t:
	.fnstart
.LFB262:
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
	ldr	r3, .L77
.LPIC18:
	add	r3, pc
	bl	_ZN11hb_buffer_t12allocate_varEjjPKc(PLT)
	ldr	r0, [r7, #8]
	movs	r1, #7
	movs	r2, #1
	ldr	r3, .L77+4
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
	b	.L75
.L76:
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL18set_sea_propertiesR15hb_glyph_info_t(PLT)
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L75:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bcc	.L76
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L78:
	.align	2
.L77:
	.word	.LC0-(.LPIC18+4)
	.word	.LC1-(.LPIC19+4)
	.fnend
	.size	_ZL15setup_masks_seaPK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t, .-_ZL15setup_masks_seaPK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t
	.section	.text._ZL15setup_syllablesPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL15setup_syllablesPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t, %function
_ZL15setup_syllablesPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t:
	.fnstart
.LFB263:
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
	.section	.text._ZL17compare_sea_orderPK15hb_glyph_info_tS1_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL17compare_sea_orderPK15hb_glyph_info_tS1_, %function
_ZL17compare_sea_orderPK15hb_glyph_info_tS1_:
	.fnstart
.LFB264:
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
	blt	.L81
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	b	.L82
.L81:
	mov	r3, #-1
.L82:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZL17compare_sea_orderPK15hb_glyph_info_tS1_, .-_ZL17compare_sea_orderPK15hb_glyph_info_tS1_
	.section	.text._ZL37initial_reordering_consonant_syllablePK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL37initial_reordering_consonant_syllablePK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj, %function
_ZL37initial_reordering_consonant_syllablePK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj:
	.fnstart
.LFB265:
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
	ldr	r3, [r3, #100]
	str	r3, [r7, #24]
	ldr	r3, [r7]
	str	r3, [r7, #20]
	ldr	r3, [r7]
	str	r3, [r7, #28]
	b	.L85
.L86:
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #24]
	add	r3, r3, r2
	movs	r2, #3
	strb	r2, [r3, #19]
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L85:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcc	.L86
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bcs	.L87
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #24]
	add	r3, r3, r2
	movs	r2, #4
	strb	r2, [r3, #19]
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L87:
	b	.L88
.L92:
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #24]
	add	r3, r3, r2
	ldrb	r3, [r3, #18]	@ zero_extendqisi2
	cmp	r3, #22
	bne	.L89
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #24]
	add	r3, r3, r2
	movs	r2, #3
	strb	r2, [r3, #19]
	b	.L90
.L89:
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #24]
	add	r3, r3, r2
	ldrb	r3, [r3, #18]	@ zero_extendqisi2
	cmp	r3, #28
	bne	.L91
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #24]
	add	r3, r3, r2
	movs	r2, #2
	strb	r2, [r3, #19]
	b	.L90
.L91:
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #24]
	add	r3, r3, r2
	movs	r2, #5
	strb	r2, [r3, #19]
.L90:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L88:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bcc	.L92
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	ldr	r2, [r7, #40]
	bl	_ZN11hb_buffer_t14merge_clustersEjj(PLT)
	ldr	r2, [r7]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #24]
	add	r2, r2, r3
	ldr	r1, [r7, #40]
	ldr	r3, [r7]
	subs	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L93
.LPIC20:
	add	r3, pc
	mov	r2, r3
	bl	_Z14hb_bubble_sortI15hb_glyph_info_tEvPT_jPFiPKS1_S4_E(PLT)
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L94:
	.align	2
.L93:
	.word	_ZL17compare_sea_orderPK15hb_glyph_info_tS1_-(.LPIC20+4)
	.fnend
	.size	_ZL37initial_reordering_consonant_syllablePK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj, .-_ZL37initial_reordering_consonant_syllablePK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj
	.section	.text._ZL33initial_reordering_broken_clusterPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL33initial_reordering_broken_clusterPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj, %function
_ZL33initial_reordering_broken_clusterPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj:
	.fnstart
.LFB266:
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
	.section	.text._ZL34initial_reordering_non_sea_clusterPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL34initial_reordering_non_sea_clusterPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj, %function
_ZL34initial_reordering_non_sea_clusterPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj:
	.fnstart
.LFB267:
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
	.size	_ZL34initial_reordering_non_sea_clusterPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj, .-_ZL34initial_reordering_non_sea_clusterPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj
	.section	.text._ZL27initial_reordering_syllablePK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL27initial_reordering_syllablePK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj, %function
_ZL27initial_reordering_syllablePK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj:
	.fnstart
.LFB268:
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
	cmp	r3, #1
	beq	.L99
	cmp	r3, #2
	beq	.L100
	cmp	r3, #0
	bne	.L97
	ldr	r3, [r7, #32]
	str	r3, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	_ZL37initial_reordering_consonant_syllablePK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj(PLT)
	b	.L97
.L99:
	ldr	r3, [r7, #32]
	str	r3, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	_ZL33initial_reordering_broken_clusterPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj(PLT)
	b	.L97
.L100:
	ldr	r3, [r7, #32]
	str	r3, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	_ZL34initial_reordering_non_sea_clusterPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj(PLT)
	nop
.L97:
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
.LFB269:
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
	b	.L103
.L106:
	ldr	r2, [r7, #80]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	ldrb	r3, [r3, #15]	@ zero_extendqisi2
	and	r3, r3, #15
	cmp	r3, #1
	bne	.L104
	movs	r3, #1
	strb	r3, [r7, #87]
	b	.L105
.L104:
	ldr	r3, [r7, #80]
	adds	r3, r3, #1
	str	r3, [r7, #80]
.L103:
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #72]
	cmp	r2, r3
	bcc	.L106
.L105:
	ldrb	r3, [r7, #87]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L107
	b	.L102
.L107:
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
	beq	.L109
	b	.L102
.L109:
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
	bl	_ZL18set_sea_propertiesR15hb_glyph_info_t(PLT)
	ldr	r3, [r7, #56]
	str	r3, [r7, #36]
	ldr	r0, [r7, #4]
	bl	_ZN11hb_buffer_t12clear_outputEv(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #84]
	movs	r3, #0
	str	r3, [r7, #76]
	b	.L110
.L112:
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
	beq	.L111
	ldr	r3, [r7, #60]
	cmp	r3, #1
	bne	.L111
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
	b	.L110
.L111:
	ldr	r0, [r7, #4]
	bl	_ZN11hb_buffer_t10next_glyphEv(PLT)
.L110:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #84]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	cmp	r2, r3
	bcc	.L112
	ldr	r0, [r7, #4]
	bl	_ZN11hb_buffer_t12swap_buffersEv(PLT)
.L102:
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
.LFB270:
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
	bne	.L115
	b	.L114
.L115:
	movs	r3, #0
	str	r3, [r7, #36]
	ldr	r3, [r7, #24]
	ldrb	r3, [r3, #15]	@ zero_extendqisi2
	str	r3, [r7, #32]
	movs	r3, #1
	str	r3, [r7, #28]
	b	.L117
.L119:
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
	beq	.L118
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
.L118:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L117:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcc	.L119
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #52]
	ldr	r2, [r7, #20]
	str	r2, [sp]
	ldr	r0, [r7, #12]
	mov	r1, r3
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #36]
	bl	_ZL27initial_reordering_syllablePK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj(PLT)
.L114:
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
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L121
.L122:
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
.L121:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcc	.L122
	ldr	r0, [r7, #4]
	movs	r1, #6
	movs	r2, #1
	ldr	r3, .L123
.LPIC21:
	add	r3, pc
	bl	_ZN11hb_buffer_t14deallocate_varEjjPKc(PLT)
	ldr	r0, [r7, #4]
	movs	r1, #7
	movs	r2, #1
	ldr	r3, .L123+4
.LPIC22:
	add	r3, pc
	bl	_ZN11hb_buffer_t14deallocate_varEjjPKc(PLT)
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L124:
	.align	2
.L123:
	.word	.LC0-(.LPIC21+4)
	.word	.LC1-(.LPIC22+4)
	.fnend
	.size	_ZL16final_reorderingPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t, .-_ZL16final_reorderingPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t
	.hidden	_hb_ot_complex_shaper_sea
	.global	_hb_ot_complex_shaper_sea
	.section	.data.rel.ro.local._hb_ot_complex_shaper_sea,"aw",%progbits
	.align	2
	.type	_hb_ot_complex_shaper_sea, %object
	.size	_hb_ot_complex_shaper_sea, 52
_hb_ot_complex_shaper_sea:
	.ascii	"sea\000"
	.space	4
	.word	_ZL20collect_features_seaP21hb_ot_shape_planner_t
	.word	_ZL21override_features_seaP21hb_ot_shape_planner_t
	.word	0
	.word	0
	.word	0
	.word	3
	.word	0
	.word	0
	.word	_ZL15setup_masks_seaPK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t
	.word	0
	.byte	0
	.space	3
	.section	.text._Z12ARRAY_LENGTHIjLj4EEjRAT0__KT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z12ARRAY_LENGTHIjLj4EEjRAT0__KT_, %function
_Z12ARRAY_LENGTHIjLj4EEjRAT0__KT_:
	.fnstart
.LFB290:
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
	.section	.text._Z12ARRAY_LENGTHIjLj5EEjRAT0__KT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z12ARRAY_LENGTHIjLj5EEjRAT0__KT_, %function
_Z12ARRAY_LENGTHIjLj5EEjRAT0__KT_:
	.fnstart
.LFB291:
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
	.section	.text._Z14hb_bubble_sortI15hb_glyph_info_tEvPT_jPFiPKS1_S4_E,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z14hb_bubble_sortI15hb_glyph_info_tEvPT_jPFiPKS1_S4_E, %function
_Z14hb_bubble_sortI15hb_glyph_info_tEvPT_jPFiPKS1_S4_E:
	.fnstart
.LFB292:
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
.LFB297:
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
	bne	.L131
	b	.L130
.L131:
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	str	r3, [r7, #52]
.L137:
	movs	r3, #0
	str	r3, [r7, #48]
	movs	r3, #0
	str	r3, [r7, #44]
	b	.L133
.L136:
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
	beq	.L134
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
	beq	.L135
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
.L135:
	ldr	r3, [r7, #44]
	str	r3, [r7, #48]
.L134:
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	str	r3, [r7, #44]
.L133:
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bcc	.L136
	ldr	r3, [r7, #48]
	str	r3, [r7, #52]
	ldr	r3, [r7, #52]
	cmp	r3, #0
	bne	.L137
.L130:
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
	.word	1886545254
	.word	1633842790
	.word	1651275622
	.word	1886614630
	.section	.rodata._ZL14other_features,"a",%progbits
	.align	2
	.type	_ZL14other_features, %object
	.size	_ZL14other_features, 20
_ZL14other_features:
	.word	1886545267
	.word	1633842803
	.word	1651275635
	.word	1886614643
	.word	1684632436
	.section	.rodata._ZL32_sea_syllable_machine_trans_keys,"a",%progbits
	.align	2
	.type	_ZL32_sea_syllable_machine_trans_keys, %object
	.size	_ZL32_sea_syllable_machine_trans_keys, 13
_ZL32_sea_syllable_machine_trans_keys:
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	29
	.byte	3
	.byte	29
	.byte	3
	.byte	29
	.byte	1
	.byte	1
	.byte	0
	.section	.rodata._ZL31_sea_syllable_machine_key_spans,"a",%progbits
	.align	2
	.type	_ZL31_sea_syllable_machine_key_spans, %object
	.size	_ZL31_sea_syllable_machine_key_spans, 6
_ZL31_sea_syllable_machine_key_spans:
	.byte	1
	.byte	1
	.byte	29
	.byte	27
	.byte	27
	.byte	1
	.section	.rodata._ZL35_sea_syllable_machine_index_offsets,"a",%progbits
	.align	2
	.type	_ZL35_sea_syllable_machine_index_offsets, %object
	.size	_ZL35_sea_syllable_machine_index_offsets, 6
_ZL35_sea_syllable_machine_index_offsets:
	.byte	0
	.byte	2
	.byte	4
	.byte	34
	.byte	62
	.byte	90
	.section	.rodata._ZL30_sea_syllable_machine_indicies,"a",%progbits
	.align	2
	.type	_ZL30_sea_syllable_machine_indicies, %object
	.size	_ZL30_sea_syllable_machine_indicies, 93
_ZL30_sea_syllable_machine_indicies:
	.byte	1
	.byte	0
	.byte	3
	.byte	2
	.byte	1
	.byte	1
	.byte	3
	.byte	5
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	3
	.byte	4
	.byte	1
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	3
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	3
	.byte	4
	.byte	4
	.byte	4
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	4
	.byte	1
	.byte	7
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	1
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	1
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	1
	.byte	6
	.byte	6
	.byte	6
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	6
	.byte	3
	.byte	9
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
	.byte	3
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	3
	.byte	8
	.byte	8
	.byte	8
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	8
	.byte	3
	.byte	10
	.byte	0
	.section	.rodata._ZL33_sea_syllable_machine_trans_targs,"a",%progbits
	.align	2
	.type	_ZL33_sea_syllable_machine_trans_targs, %object
	.size	_ZL33_sea_syllable_machine_trans_targs, 11
_ZL33_sea_syllable_machine_trans_targs:
	.byte	2
	.byte	3
	.byte	2
	.byte	4
	.byte	2
	.byte	5
	.byte	2
	.byte	0
	.byte	2
	.byte	1
	.byte	2
	.section	.rodata._ZL35_sea_syllable_machine_trans_actions,"a",%progbits
	.align	2
	.type	_ZL35_sea_syllable_machine_trans_actions, %object
	.size	_ZL35_sea_syllable_machine_trans_actions, 11
_ZL35_sea_syllable_machine_trans_actions:
	.byte	1
	.byte	2
	.byte	3
	.byte	2
	.byte	6
	.byte	0
	.byte	7
	.byte	0
	.byte	8
	.byte	0
	.byte	9
	.section	.rodata._ZL38_sea_syllable_machine_to_state_actions,"a",%progbits
	.align	2
	.type	_ZL38_sea_syllable_machine_to_state_actions, %object
	.size	_ZL38_sea_syllable_machine_to_state_actions, 6
_ZL38_sea_syllable_machine_to_state_actions:
	.byte	0
	.byte	0
	.byte	4
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata._ZL40_sea_syllable_machine_from_state_actions,"a",%progbits
	.align	2
	.type	_ZL40_sea_syllable_machine_from_state_actions, %object
	.size	_ZL40_sea_syllable_machine_from_state_actions, 6
_ZL40_sea_syllable_machine_from_state_actions:
	.byte	0
	.byte	0
	.byte	5
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata._ZL31_sea_syllable_machine_eof_trans,"a",%progbits
	.align	2
	.type	_ZL31_sea_syllable_machine_eof_trans, %object
	.size	_ZL31_sea_syllable_machine_eof_trans, 6
_ZL31_sea_syllable_machine_eof_trans:
	.byte	1
	.byte	3
	.byte	0
	.byte	7
	.byte	9
	.byte	11
	.section	.rodata._ZL26sea_syllable_machine_start,"a",%progbits
	.align	2
	.type	_ZL26sea_syllable_machine_start, %object
	.size	_ZL26sea_syllable_machine_start, 4
_ZL26sea_syllable_machine_start:
	.word	2
	.section	.rodata._ZL32sea_syllable_machine_first_final,"a",%progbits
	.align	2
	.type	_ZL32sea_syllable_machine_first_final, %object
	.size	_ZL32sea_syllable_machine_first_final, 4
_ZL32sea_syllable_machine_first_final:
	.word	2
	.section	.rodata._ZL26sea_syllable_machine_error,"a",%progbits
	.align	2
	.type	_ZL26sea_syllable_machine_error, %object
	.size	_ZL26sea_syllable_machine_error, 4
_ZL26sea_syllable_machine_error:
	.word	-1
	.section	.rodata._ZL28sea_syllable_machine_en_main,"a",%progbits
	.align	2
	.type	_ZL28sea_syllable_machine_en_main, %object
	.size	_ZL28sea_syllable_machine_en_main, 4
_ZL28sea_syllable_machine_en_main:
	.word	2
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
