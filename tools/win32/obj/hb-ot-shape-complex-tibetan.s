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
	.file	"hb-ot-shape-complex-tibetan.cc"
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
	.section	.text._ZL24collect_features_tibetanP21hb_ot_shape_planner_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL24collect_features_tibetanP21hb_ot_shape_planner_t, %function
_ZL24collect_features_tibetanP21hb_ot_shape_planner_t:
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
	ldr	r3, .L6
.LPIC0:
	add	r3, pc
	str	r3, [r7, #12]
	b	.L3
.L5:
	ldr	r3, [r7, #4]
	add	r2, r3, #28
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN19hb_ot_map_builder_t23add_global_bool_featureEj(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #4
	str	r3, [r7, #12]
.L3:
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L2
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L5
.L2:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L7:
	.align	2
.L6:
	.word	_ZL16tibetan_features-(.LPIC0+4)
	.fnend
	.size	_ZL24collect_features_tibetanP21hb_ot_shape_planner_t, .-_ZL24collect_features_tibetanP21hb_ot_shape_planner_t
	.hidden	_hb_ot_complex_shaper_tibetan
	.global	_hb_ot_complex_shaper_tibetan
	.section	.data.rel.ro.local._hb_ot_complex_shaper_tibetan,"aw",%progbits
	.align	2
	.type	_hb_ot_complex_shaper_tibetan, %object
	.size	_hb_ot_complex_shaper_tibetan, 52
_hb_ot_complex_shaper_tibetan:
	.ascii	"default\000"
	.word	_ZL24collect_features_tibetanP21hb_ot_shape_planner_t
	.word	0
	.word	0
	.word	0
	.word	0
	.word	2
	.word	0
	.word	0
	.word	0
	.word	1
	.byte	1
	.space	3
	.section	.rodata._ZL10table_tags,"a",%progbits
	.align	2
	.type	_ZL10table_tags, %object
	.size	_ZL10table_tags, 8
_ZL10table_tags:
	.word	1196643650
	.word	1196445523
	.section	.rodata._ZL16tibetan_features,"a",%progbits
	.align	2
	.type	_ZL16tibetan_features, %object
	.size	_ZL16tibetan_features, 20
_ZL16tibetan_features:
	.word	1633842803
	.word	1651275635
	.word	1633842797
	.word	1651275629
	.word	0
	.hidden	_ZN19hb_ot_map_builder_t11add_featureEjj25hb_ot_map_feature_flags_t
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
