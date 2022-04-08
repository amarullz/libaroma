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
	.file	"hb-ot-shape-complex-indic.cc"
	.section	.text._ZL10hb_optionsv,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL10hb_optionsv, %function
_ZL10hb_optionsv:
	.fnstart
.LFB58:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.setfp r7, sp, #0
	add	r7, sp, #0
	ldr	r3, .L4
.LPIC0:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L2
	bl	_Z16_hb_options_initv(PLT)
.L2:
	ldr	r3, .L4+4
.LPIC1:
	add	r3, pc
	ldr	r3, [r3]
	mov	r0, r3
	pop	{r7, pc}
.L5:
	.align	2
.L4:
	.word	_hb_options-(.LPIC0+4)
	.word	_hb_options-(.LPIC1+4)
	.fnend
	.size	_ZL10hb_optionsv, .-_ZL10hb_optionsv
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
	beq	.L9
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L10
.L9:
	movs	r3, #0
	b	.L11
.L10:
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
.L11:
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
	beq	.L17
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #104]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	cmp	r2, r3
	bne	.L18
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #92]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	cmp	r2, r3
	beq	.L19
.L18:
	ldr	r0, [r7, #4]
	movs	r1, #1
	movs	r2, #1
	bl	_ZN11hb_buffer_t13make_room_forEjj(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L20
	b	.L16
.L20:
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
.L19:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #92]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #92]
.L17:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #84]
.L16:
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
	bcc	.L23
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3]
	cmp	r2, r3
	bls	.L24
	movs	r3, #1
	b	.L26
.L24:
	movs	r3, #0
	b	.L26
.L23:
	mov	r3, #-1
.L26:
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
	beq	.L29
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	b	.L30
.L29:
	movs	r3, #0
.L30:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK11hb_ot_map_t10get_1_maskEj, .-_ZNK11hb_ot_map_t10get_1_maskEj
	.section	.text._ZNK11hb_ot_map_t17get_feature_stageEjj,"axG",%progbits,_ZNK11hb_ot_map_t17get_feature_stageEjj,comdat
	.align	2
	.weak	_ZNK11hb_ot_map_t17get_feature_stageEjj
	.thumb
	.thumb_func
	.type	_ZNK11hb_ot_map_t17get_feature_stageEjj, %function
_ZNK11hb_ot_map_t17get_feature_stageEjj:
	.fnstart
.LFB122:
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
	adds	r3, r7, #4
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK21hb_prealloced_array_tIN11hb_ot_map_t13feature_map_tELj8EE7bsearchIjEEPKS1_PT_(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L33
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #8]
	adds	r3, r3, #2
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	b	.L34
.L33:
	mov	r3, #-1
.L34:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK11hb_ot_map_t17get_feature_stageEjj, .-_ZNK11hb_ot_map_t17get_feature_stageEjj
	.section	.rodata
	.align	2
.LC0:
	.ascii	"stage <= stages[table_index].len\000"
	.align	2
.LC1:
	.ascii	"../../../libs/harfbuzz-ng/src/hb-ot-map-private.hh\000"
	.section	.text._ZNK11hb_ot_map_t17get_stage_lookupsEjjPPKNS_12lookup_map_tEPj,"axG",%progbits,_ZNK11hb_ot_map_t17get_stage_lookupsEjjPPKNS_12lookup_map_tEPj,comdat
	.align	2
	.weak	_ZNK11hb_ot_map_t17get_stage_lookupsEjjPPKNS_12lookup_map_tEPj
	.thumb
	.thumb_func
	.type	_ZNK11hb_ot_map_t17get_stage_lookupsEjjPPKNS_12lookup_map_tEPj, %function
_ZNK11hb_ot_map_t17get_stage_lookupsEjjPPKNS_12lookup_map_tEPj:
	.fnstart
.LFB123:
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
	ldr	r3, [r7, #4]
	cmp	r3, #-1
	bne	.L37
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #32]
	movs	r2, #0
	str	r2, [r3]
	b	.L36
.L37:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	movs	r1, #44
	mul	r3, r1, r3
	add	r3, r3, r2
	add	r3, r3, #852
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcs	.L39
	ldr	r3, .L44
.LPIC2:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L44+4
.LPIC3:
	add	r3, pc
	mov	r1, r3
	movs	r2, #113
	ldr	r3, .L44+8
.LPIC4:
	add	r3, pc
	bl	__assert_fail(PLT)
.L39:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L40
	ldr	r3, [r7, #8]
	movs	r2, #44
	mul	r3, r2, r3
	add	r3, r3, #848
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	adds	r2, r3, #4
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK21hb_prealloced_array_tIN11hb_ot_map_t11stage_map_tELj4EEixEj(PLT)
	mov	r3, r0
	ldr	r3, [r3]
	b	.L41
.L40:
	movs	r3, #0
.L41:
	str	r3, [r7, #20]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	movs	r1, #44
	mul	r3, r1, r3
	add	r3, r3, r2
	add	r3, r3, #852
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L42
	ldr	r3, [r7, #8]
	movs	r2, #44
	mul	r3, r2, r3
	add	r3, r3, #848
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	adds	r3, r3, #4
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	_ZNK21hb_prealloced_array_tIN11hb_ot_map_t11stage_map_tELj4EEixEj(PLT)
	mov	r3, r0
	ldr	r3, [r3]
	b	.L43
.L42:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	mov	r1, #268
	mul	r3, r1, r3
	add	r3, r3, r2
	add	r3, r3, #316
	ldr	r3, [r3]
.L43:
	str	r3, [r7, #16]
	ldr	r3, [r7, #8]
	mov	r2, #268
	mul	r3, r2, r3
	add	r3, r3, #312
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	adds	r3, r3, #4
	mov	r0, r3
	ldr	r1, [r7, #20]
	bl	_ZNK21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EEixEj(PLT)
	mov	r2, r0
	ldr	r3, [r7]
	str	r2, [r3]
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #20]
	subs	r2, r2, r3
	ldr	r3, [r7, #32]
	str	r2, [r3]
.L36:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L45:
	.align	2
.L44:
	.word	.LC0-(.LPIC2+4)
	.word	.LC1-(.LPIC3+4)
	.word	_ZZNK11hb_ot_map_t17get_stage_lookupsEjjPPKNS_12lookup_map_tEPjE19__PRETTY_FUNCTION__-(.LPIC4+4)
	.fnend
	.size	_ZNK11hb_ot_map_t17get_stage_lookupsEjjPPKNS_12lookup_map_tEPj, .-_ZNK11hb_ot_map_t17get_stage_lookupsEjjPPKNS_12lookup_map_tEPj
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
	.section	.text._Zan25hb_ot_map_feature_flags_tS_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Zan25hb_ot_map_feature_flags_tS_, %function
_Zan25hb_ot_map_feature_flags_tS_:
	.fnstart
.LFB126:
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
	ands	r3, r3, r2
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_Zan25hb_ot_map_feature_flags_tS_, .-_Zan25hb_ot_map_feature_flags_tS_
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
	.section	.text._ZL26_hb_glyph_info_substitutedPK15hb_glyph_info_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL26_hb_glyph_info_substitutedPK15hb_glyph_info_t, %function
_ZL26_hb_glyph_info_substitutedPK15hb_glyph_info_t:
	.fnstart
.LFB235:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #12]
	and	r3, r3, #16
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
	.size	_ZL26_hb_glyph_info_substitutedPK15hb_glyph_info_t, .-_ZL26_hb_glyph_info_substitutedPK15hb_glyph_info_t
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
	.section	.text._ZL25_hb_glyph_info_multipliedPK15hb_glyph_info_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL25_hb_glyph_info_multipliedPK15hb_glyph_info_t, %function
_ZL25_hb_glyph_info_multipliedPK15hb_glyph_info_t:
	.fnstart
.LFB237:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #12]
	and	r3, r3, #64
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
	.size	_ZL25_hb_glyph_info_multipliedPK15hb_glyph_info_t, .-_ZL25_hb_glyph_info_multipliedPK15hb_glyph_info_t
	.section	.text._ZL41_hb_glyph_info_ligated_and_didnt_multiplyPK15hb_glyph_info_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL41_hb_glyph_info_ligated_and_didnt_multiplyPK15hb_glyph_info_t, %function
_ZL41_hb_glyph_info_ligated_and_didnt_multiplyPK15hb_glyph_info_t:
	.fnstart
.LFB238:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	_ZL22_hb_glyph_info_ligatedPK15hb_glyph_info_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L63
	ldr	r0, [r7, #4]
	bl	_ZL25_hb_glyph_info_multipliedPK15hb_glyph_info_t(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L63
	movs	r3, #1
	b	.L64
.L63:
	movs	r3, #0
.L64:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZL41_hb_glyph_info_ligated_and_didnt_multiplyPK15hb_glyph_info_t, .-_ZL41_hb_glyph_info_ligated_and_didnt_multiplyPK15hb_glyph_info_t
	.section	.text._ZL43_hb_glyph_info_clear_ligated_and_multipliedP15hb_glyph_info_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL43_hb_glyph_info_clear_ligated_and_multipliedP15hb_glyph_info_t, %function
_ZL43_hb_glyph_info_clear_ligated_and_multipliedP15hb_glyph_info_t:
	.fnstart
.LFB239:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #12]
	bic	r3, r3, #96
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
	.size	_ZL43_hb_glyph_info_clear_ligated_and_multipliedP15hb_glyph_info_t, .-_ZL43_hb_glyph_info_clear_ligated_and_multipliedP15hb_glyph_info_t
	.section	.text._ZL14matra_positionj16indic_position_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL14matra_positionj16indic_position_t, %function
_ZL14matra_positionj16indic_position_t:
	.fnstart
.LFB258:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	subs	r3, r3, #3
	cmp	r3, #8
	bhi	.L68
	adr	r1, .L70
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L70:
	.word	.L69+1-.L70
	.word	.L68+1-.L70
	.word	.L68+1-.L70
	.word	.L71+1-.L70
	.word	.L68+1-.L70
	.word	.L72+1-.L70
	.word	.L68+1-.L70
	.word	.L68+1-.L70
	.word	.L73+1-.L70
.L69:
	movs	r3, #2
	b	.L74
.L73:
	ldr	r3, [r7, #4]
	bic	r3, r3, #127
	cmp	r3, #2304
	beq	.L75
	ldr	r3, [r7, #4]
	bic	r3, r3, #127
	cmp	r3, #2432
	beq	.L76
	ldr	r3, [r7, #4]
	bic	r3, r3, #127
	cmp	r3, #2560
	beq	.L77
	ldr	r3, [r7, #4]
	bic	r3, r3, #127
	cmp	r3, #2688
	beq	.L78
	ldr	r3, [r7, #4]
	bic	r3, r3, #127
	cmp	r3, #2816
	beq	.L79
	ldr	r3, [r7, #4]
	bic	r3, r3, #127
	cmp	r3, #2944
	beq	.L80
	ldr	r3, [r7, #4]
	bic	r3, r3, #127
	cmp	r3, #3072
	bne	.L81
	ldr	r2, [r7, #4]
	movw	r3, #3138
	cmp	r2, r3
	bhi	.L82
	movs	r3, #7
	b	.L101
.L82:
	movs	r3, #9
	b	.L101
.L81:
	ldr	r3, [r7, #4]
	bic	r3, r3, #127
	cmp	r3, #3200
	bne	.L85
	ldr	r2, [r7, #4]
	movw	r3, #3266
	cmp	r2, r3
	bls	.L86
	ldr	r2, [r7, #4]
	movw	r3, #3286
	cmp	r2, r3
	bls	.L87
.L86:
	movs	r3, #7
	b	.L88
.L87:
	movs	r3, #9
.L88:
	b	.L101
.L85:
	ldr	r3, [r7, #4]
	bic	r3, r3, #127
	cmp	r3, #3328
	beq	.L90
	ldr	r3, [r7, #4]
	bic	r3, r3, #127
	cmp	r3, #3456
	beq	.L91
	ldr	r3, [r7, #4]
	bic	r3, r3, #127
	cmp	r3, #6016
	bne	.L92
	movs	r3, #12
	b	.L101
.L92:
	movs	r3, #9
	b	.L101
.L91:
	movs	r3, #9
	b	.L101
.L90:
	movs	r3, #12
	b	.L101
.L80:
	movs	r3, #12
	b	.L101
.L79:
	movs	r3, #12
	b	.L101
.L78:
	movs	r3, #12
	b	.L101
.L77:
	movs	r3, #12
	b	.L101
.L76:
	movs	r3, #12
	b	.L74
.L75:
	movs	r3, #9
.L101:
	b	.L74
.L71:
	ldr	r3, [r7, #4]
	bic	r3, r3, #127
	cmp	r3, #2304
	beq	.L102
	ldr	r3, [r7, #4]
	bic	r3, r3, #127
	cmp	r3, #2560
	beq	.L103
	ldr	r3, [r7, #4]
	bic	r3, r3, #127
	cmp	r3, #2688
	beq	.L104
	ldr	r3, [r7, #4]
	bic	r3, r3, #127
	cmp	r3, #2816
	beq	.L105
	ldr	r3, [r7, #4]
	bic	r3, r3, #127
	cmp	r3, #2944
	beq	.L106
	ldr	r3, [r7, #4]
	bic	r3, r3, #127
	cmp	r3, #3072
	beq	.L107
	ldr	r3, [r7, #4]
	bic	r3, r3, #127
	cmp	r3, #3200
	beq	.L108
	ldr	r3, [r7, #4]
	bic	r3, r3, #127
	cmp	r3, #3456
	beq	.L109
	ldr	r3, [r7, #4]
	bic	r3, r3, #127
	cmp	r3, #6016
	bne	.L110
	movs	r3, #12
	b	.L119
.L110:
	movs	r3, #9
	b	.L119
.L109:
	movs	r3, #9
	b	.L119
.L108:
	movs	r3, #7
	b	.L119
.L107:
	movs	r3, #7
	b	.L119
.L106:
	movs	r3, #9
	b	.L119
.L105:
	movs	r3, #5
	b	.L119
.L104:
	movs	r3, #9
	b	.L119
.L103:
	movs	r3, #12
	b	.L74
.L102:
	movs	r3, #9
.L119:
	b	.L74
.L72:
	ldr	r3, [r7, #4]
	bic	r3, r3, #127
	cmp	r3, #2304
	beq	.L120
	ldr	r3, [r7, #4]
	bic	r3, r3, #127
	cmp	r3, #2432
	beq	.L121
	ldr	r3, [r7, #4]
	bic	r3, r3, #127
	cmp	r3, #2560
	beq	.L122
	ldr	r3, [r7, #4]
	bic	r3, r3, #127
	cmp	r3, #2688
	beq	.L123
	ldr	r3, [r7, #4]
	bic	r3, r3, #127
	cmp	r3, #2816
	beq	.L124
	ldr	r3, [r7, #4]
	bic	r3, r3, #127
	cmp	r3, #2944
	beq	.L125
	ldr	r3, [r7, #4]
	bic	r3, r3, #127
	cmp	r3, #3072
	beq	.L126
	ldr	r3, [r7, #4]
	bic	r3, r3, #127
	cmp	r3, #3200
	beq	.L127
	ldr	r3, [r7, #4]
	bic	r3, r3, #127
	cmp	r3, #3328
	beq	.L128
	ldr	r3, [r7, #4]
	bic	r3, r3, #127
	cmp	r3, #3456
	beq	.L129
	ldr	r3, [r7, #4]
	bic	r3, r3, #127
	cmp	r3, #6016
	bne	.L130
	movs	r3, #12
	b	.L141
.L130:
	movs	r3, #9
	b	.L141
.L129:
	movs	r3, #9
	b	.L141
.L128:
	movs	r3, #12
	b	.L141
.L127:
	movs	r3, #7
	b	.L141
.L126:
	movs	r3, #7
	b	.L141
.L125:
	movs	r3, #12
	b	.L141
.L124:
	movs	r3, #9
	b	.L141
.L123:
	movs	r3, #12
	b	.L141
.L122:
	movs	r3, #12
	b	.L141
.L121:
	movs	r3, #9
	b	.L74
.L120:
	movs	r3, #9
.L141:
	b	.L74
.L68:
	ldr	r3, [r7]
.L74:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZL14matra_positionj16indic_position_t, .-_ZL14matra_positionj16indic_position_t
	.section	.text._ZL5is_raj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL5is_raj, %function
_ZL5is_raj:
	.fnstart
.LFB259:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L143
.L146:
	ldr	r3, .L147
.LPIC5:
	add	r3, pc
	ldr	r2, [r7, #12]
	ldr	r2, [r3, r2, lsl #2]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bne	.L144
	movs	r3, #1
	b	.L145
.L144:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L143:
	ldr	r3, .L147+4
.LPIC6:
	add	r3, pc
	mov	r0, r3
	bl	_Z12ARRAY_LENGTHIjLj12EEjRAT0__KT_(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	cmp	r2, r3
	ite	hi
	movhi	r3, #1
	movls	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L146
	movs	r3, #0
.L145:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L148:
	.align	2
.L147:
	.word	_ZL8ra_chars-(.LPIC5+4)
	.word	_ZL8ra_chars-(.LPIC6+4)
	.cantunwind
	.fnend
	.size	_ZL5is_raj, .-_ZL5is_raj
	.section	.text._ZL9is_one_ofRK15hb_glyph_info_tj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL9is_one_ofRK15hb_glyph_info_tj, %function
_ZL9is_one_ofRK15hb_glyph_info_tj:
	.fnstart
.LFB260:
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
	beq	.L150
	movs	r3, #0
	b	.L151
.L150:
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
.L151:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZL9is_one_ofRK15hb_glyph_info_tj, .-_ZL9is_one_ofRK15hb_glyph_info_tj
	.section	.text._ZL9is_joinerRK15hb_glyph_info_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL9is_joinerRK15hb_glyph_info_t, %function
_ZL9is_joinerRK15hb_glyph_info_t:
	.fnstart
.LFB261:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	movs	r1, #96
	bl	_ZL9is_one_ofRK15hb_glyph_info_tj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZL9is_joinerRK15hb_glyph_info_t, .-_ZL9is_joinerRK15hb_glyph_info_t
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
	.section	.text._ZL18is_halant_or_coengRK15hb_glyph_info_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL18is_halant_or_coengRK15hb_glyph_info_t, %function
_ZL18is_halant_or_coengRK15hb_glyph_info_t:
	.fnstart
.LFB263:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	movw	r1, #16400
	bl	_ZL9is_one_ofRK15hb_glyph_info_tj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZL18is_halant_or_coengRK15hb_glyph_info_t, .-_ZL18is_halant_or_coengRK15hb_glyph_info_t
	.section	.text._ZL20set_indic_propertiesR15hb_glyph_info_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL20set_indic_propertiesR15hb_glyph_info_t, %function
_ZL20set_indic_propertiesR15hb_glyph_info_t:
	.fnstart
.LFB264:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #40
	sub	sp, sp, #40
	.setfp r7, sp, #16
	add	r7, sp, #16
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
	movw	r3, #7378
	str	r3, [sp]
	movw	r3, #7380
	str	r3, [sp, #4]
	movw	r3, #7393
	str	r3, [sp, #8]
	ldr	r0, [r7, #12]
	movw	r1, #2385
	movw	r2, #2386
	movw	r3, #7376
	bl	_Z12hb_in_rangesIjEbT_S0_S0_S0_S0_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L159
	ldr	r2, [r7, #12]
	movw	r3, #7412
	cmp	r2, r3
	bne	.L160
.L159:
	movs	r3, #1
	b	.L161
.L160:
	movs	r3, #0
.L161:
	cmp	r3, #0
	beq	.L162
	movs	r3, #10
	str	r3, [r7, #20]
	b	.L163
.L162:
	ldr	r0, [r7, #12]
	movw	r1, #2387
	movw	r2, #2388
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L164
	movs	r3, #8
	str	r3, [r7, #20]
	b	.L163
.L164:
	movw	r3, #7414
	str	r3, [sp]
	ldr	r0, [r7, #12]
	movw	r1, #2674
	movw	r2, #2675
	movw	r3, #7413
	bl	_Z12hb_in_rangesIjEbT_S0_S0_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L165
	movs	r3, #1
	str	r3, [r7, #20]
	b	.L163
.L165:
	ldr	r0, [r7, #12]
	movw	r1, #7394
	movw	r2, #7400
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L166
	movs	r3, #10
	str	r3, [r7, #20]
	b	.L163
.L166:
	ldr	r2, [r7, #12]
	movw	r3, #7405
	cmp	r2, r3
	bne	.L167
	movs	r3, #10
	str	r3, [r7, #20]
	b	.L163
.L167:
	movw	r3, #7404
	str	r3, [sp]
	movw	r3, #7406
	str	r3, [sp, #4]
	movw	r3, #7409
	str	r3, [sp, #8]
	ldr	r0, [r7, #12]
	movw	r1, #43250
	movw	r2, #43255
	movw	r3, #7401
	bl	_Z12hb_in_rangesIjEbT_S0_S0_S0_S0_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L168
	movs	r3, #18
	str	r3, [r7, #20]
	b	.L163
.L168:
	ldr	r0, [r7, #12]
	movw	r1, #6093
	movw	r2, #6097
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L169
	ldr	r2, [r7, #12]
	movw	r3, #6091
	cmp	r2, r3
	beq	.L169
	ldr	r2, [r7, #12]
	movw	r3, #6099
	cmp	r2, r3
	beq	.L169
	ldr	r2, [r7, #12]
	movw	r3, #6109
	cmp	r2, r3
	bne	.L170
.L169:
	movs	r3, #1
	b	.L171
.L170:
	movs	r3, #0
.L171:
	cmp	r3, #0
	beq	.L172
	movs	r3, #7
	str	r3, [r7, #20]
	movs	r3, #6
	str	r3, [r7, #16]
	b	.L163
.L172:
	ldr	r2, [r7, #12]
	movw	r3, #6086
	cmp	r2, r3
	bne	.L173
	movs	r3, #3
	str	r3, [r7, #20]
	b	.L163
.L173:
	ldr	r2, [r7, #12]
	movw	r3, #6098
	cmp	r2, r3
	bne	.L174
	movs	r3, #14
	str	r3, [r7, #20]
	b	.L163
.L174:
	ldr	r0, [r7, #12]
	movw	r1, #8208
	movw	r2, #8209
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L175
	movs	r3, #11
	str	r3, [r7, #20]
	b	.L163
.L175:
	ldr	r2, [r7, #12]
	movw	r3, #9676
	cmp	r2, r3
	bne	.L176
	movs	r3, #12
	str	r3, [r7, #20]
	b	.L163
.L176:
	ldr	r2, [r7, #12]
	movw	r3, #43394
	cmp	r2, r3
	bne	.L177
	movs	r3, #8
	str	r3, [r7, #20]
	b	.L163
.L177:
	ldr	r2, [r7, #12]
	movw	r3, #43454
	cmp	r2, r3
	bne	.L178
	movs	r3, #31
	str	r3, [r7, #20]
	b	.L163
.L178:
	ldr	r2, [r7, #12]
	movw	r3, #43453
	cmp	r2, r3
	bne	.L163
	movs	r3, #7
	str	r3, [r7, #20]
	movs	r3, #11
	str	r3, [r7, #16]
.L163:
	ldr	r2, [r7, #20]
	movw	r3, #6150
	movt	r3, 32771
	asrs	r3, r3, r2
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L179
	movs	r3, #4
	str	r3, [r7, #16]
	ldr	r0, [r7, #12]
	bl	_ZL5is_raj(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L180
	movs	r3, #16
	str	r3, [r7, #20]
	b	.L180
.L179:
	ldr	r3, [r7, #20]
	cmp	r3, #7
	bne	.L181
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #16]
	bl	_ZL14matra_positionj16indic_position_t(PLT)
	str	r0, [r7, #16]
	b	.L180
.L181:
	ldr	r2, [r7, #20]
	mov	r3, #1792
	movt	r3, 4
	asrs	r3, r3, r2
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L180
	movs	r3, #14
	str	r3, [r7, #16]
.L180:
	ldr	r2, [r7, #12]
	movw	r3, #2817
	cmp	r2, r3
	bne	.L182
	movs	r3, #7
	str	r3, [r7, #16]
.L182:
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
	.size	_ZL20set_indic_propertiesR15hb_glyph_info_t, .-_ZL20set_indic_propertiesR15hb_glyph_info_t
	.section	.text._ZL22collect_features_indicP21hb_ot_shape_planner_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL22collect_features_indicP21hb_ot_shape_planner_t, %function
_ZL22collect_features_indicP21hb_ot_shape_planner_t:
	.fnstart
.LFB265:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #20
	sub	sp, sp, #20
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	adds	r3, r3, #28
	str	r3, [r7, #8]
	ldr	r0, [r7, #8]
	ldr	r3, .L188
.LPIC7:
	add	r3, pc
	mov	r1, r3
	bl	_ZN19hb_ot_map_builder_t14add_gsub_pauseEPFvPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tE(PLT)
	ldr	r0, [r7, #8]
	movw	r1, #25452
	movt	r1, 27759
	bl	_ZN19hb_ot_map_builder_t23add_global_bool_featureEj(PLT)
	ldr	r0, [r7, #8]
	movw	r1, #28016
	movt	r1, 25443
	bl	_ZN19hb_ot_map_builder_t23add_global_bool_featureEj(PLT)
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r0, [r7, #8]
	ldr	r3, .L188+4
.LPIC8:
	add	r3, pc
	mov	r1, r3
	bl	_ZN19hb_ot_map_builder_t14add_gsub_pauseEPFvPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tE(PLT)
	b	.L184
.L185:
	ldr	r3, .L188+8
.LPIC9:
	add	r3, pc
	ldr	r2, [r7, #12]
	ldr	r4, [r3, r2, lsl #3]
	ldr	r3, .L188+12
.LPIC10:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #12]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	mov	r0, r3
	movs	r1, #4
	bl	_Zor25hb_ot_map_feature_flags_tS_(PLT)
	mov	r3, r0
	ldr	r0, [r7, #8]
	mov	r1, r4
	movs	r2, #1
	bl	_ZN19hb_ot_map_builder_t11add_featureEjj25hb_ot_map_feature_flags_t(PLT)
	ldr	r0, [r7, #8]
	movs	r1, #0
	bl	_ZN19hb_ot_map_builder_t14add_gsub_pauseEPFvPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tE(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L184:
	ldr	r3, [r7, #12]
	cmp	r3, #11
	bls	.L185
	ldr	r0, [r7, #8]
	ldr	r3, .L188+16
.LPIC11:
	add	r3, pc
	mov	r1, r3
	bl	_ZN19hb_ot_map_builder_t14add_gsub_pauseEPFvPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tE(PLT)
	b	.L186
.L187:
	ldr	r3, .L188+20
.LPIC12:
	add	r3, pc
	ldr	r2, [r7, #12]
	ldr	r4, [r3, r2, lsl #3]
	ldr	r3, .L188+24
.LPIC13:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #12]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	mov	r0, r3
	movs	r1, #4
	bl	_Zor25hb_ot_map_feature_flags_tS_(PLT)
	mov	r3, r0
	ldr	r0, [r7, #8]
	mov	r1, r4
	movs	r2, #1
	bl	_ZN19hb_ot_map_builder_t11add_featureEjj25hb_ot_map_feature_flags_t(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L186:
	ldr	r3, [r7, #12]
	cmp	r3, #20
	bls	.L187
	ldr	r0, [r7, #8]
	movw	r1, #27764
	movt	r1, 25441
	bl	_ZN19hb_ot_map_builder_t23add_global_bool_featureEj(PLT)
	ldr	r0, [r7, #8]
	movw	r1, #26983
	movt	r1, 25452
	bl	_ZN19hb_ot_map_builder_t23add_global_bool_featureEj(PLT)
	ldr	r0, [r7, #8]
	ldr	r3, .L188+28
.LPIC14:
	add	r3, pc
	mov	r1, r3
	bl	_ZN19hb_ot_map_builder_t14add_gsub_pauseEPFvPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tE(PLT)
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L189:
	.align	2
.L188:
	.word	_ZL15setup_syllablesPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t-(.LPIC7+4)
	.word	_ZL18initial_reorderingPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t-(.LPIC8+4)
	.word	_ZL14indic_features-(.LPIC9+4)
	.word	_ZL14indic_features-(.LPIC10+4)
	.word	_ZL16final_reorderingPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t-(.LPIC11+4)
	.word	_ZL14indic_features-(.LPIC12+4)
	.word	_ZL14indic_features-(.LPIC13+4)
	.word	_ZL15clear_syllablesPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t-(.LPIC14+4)
	.fnend
	.size	_ZL22collect_features_indicP21hb_ot_shape_planner_t, .-_ZL22collect_features_indicP21hb_ot_shape_planner_t
	.section	.text._ZL23override_features_indicP21hb_ot_shape_planner_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL23override_features_indicP21hb_ot_shape_planner_t, %function
_ZL23override_features_indicP21hb_ot_shape_planner_t:
	.fnstart
.LFB266:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	bl	_ZL10hb_optionsv(PLT)
	mov	r3, r0
	ubfx	r3, r3, #1, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L191
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	movw	r3, #28018
	movt	r3, 19304
	cmp	r2, r3
	beq	.L193
	b	.L191
.L193:
	ldr	r3, [r7, #4]
	adds	r3, r3, #28
	mov	r0, r3
	movw	r1, #29294
	movt	r1, 27493
	movs	r2, #0
	movs	r3, #1
	bl	_ZN19hb_ot_map_builder_t11add_featureEjj25hb_ot_map_feature_flags_t(PLT)
	nop
.L191:
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
	.size	_ZL23override_features_indicP21hb_ot_shape_planner_t, .-_ZL23override_features_indicP21hb_ot_shape_planner_t
	.section	.text._ZN26would_substitute_feature_t4initEPK11hb_ot_map_tjb,"axG",%progbits,_ZN26would_substitute_feature_t4initEPK11hb_ot_map_tjb,comdat
	.align	2
	.weak	_ZN26would_substitute_feature_t4initEPK11hb_ot_map_tjb
	.thumb
	.thumb_func
	.type	_ZN26would_substitute_feature_t4initEPK11hb_ot_map_tjb, %function
_ZN26would_substitute_feature_t4initEPK11hb_ot_map_tjb:
	.fnstart
.LFB267:
	@ args = 0, pretend = 0, frame = 16
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
	strb	r3, [r7, #3]
	ldr	r3, [r7, #12]
	ldrb	r2, [r7, #3]
	strb	r2, [r3, #8]
	ldr	r0, [r7, #8]
	movs	r1, #0
	ldr	r2, [r7, #4]
	bl	_ZNK11hb_ot_map_t17get_feature_stageEjj(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	ldr	r1, [r7, #12]
	adds	r1, r1, #4
	str	r1, [sp]
	ldr	r0, [r7, #8]
	movs	r1, #0
	bl	_ZNK11hb_ot_map_t17get_stage_lookupsEjjPPKNS_12lookup_map_tEPj(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN26would_substitute_feature_t4initEPK11hb_ot_map_tjb, .-_ZN26would_substitute_feature_t4initEPK11hb_ot_map_tjb
	.section	.text._ZNK26would_substitute_feature_t16would_substituteEPKjjP9hb_face_t,"axG",%progbits,_ZNK26would_substitute_feature_t16would_substituteEPKjjP9hb_face_t,comdat
	.align	2
	.weak	_ZNK26would_substitute_feature_t16would_substituteEPKjjP9hb_face_t
	.thumb
	.thumb_func
	.type	_ZNK26would_substitute_feature_t16would_substituteEPKjjP9hb_face_t, %function
_ZNK26would_substitute_feature_t16would_substituteEPKjjP9hb_face_t:
	.fnstart
.LFB268:
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
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L196
.L199:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldrh	r3, [r3]
	ldr	r2, [r7, #12]
	ldrb	r2, [r2, #8]	@ zero_extendqisi2
	str	r2, [sp]
	ldr	r0, [r7]
	mov	r1, r3
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	bl	_Z41hb_ot_layout_lookup_would_substitute_fastP9hb_face_tjPKjji(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L197
	movs	r3, #1
	b	.L198
.L197:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L196:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bhi	.L199
	movs	r3, #0
.L198:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK26would_substitute_feature_t16would_substituteEPKjjP9hb_face_t, .-_ZNK26would_substitute_feature_t16would_substituteEPKjjP9hb_face_t
	.section	.text._ZNK18indic_shape_plan_t16get_virama_glyphEP9hb_font_tPj,"axG",%progbits,_ZNK18indic_shape_plan_t16get_virama_glyphEP9hb_font_tPj,comdat
	.align	2
	.weak	_ZNK18indic_shape_plan_t16get_virama_glyphEP9hb_font_tPj
	.thumb
	.thumb_func
	.type	_ZNK18indic_shape_plan_t16get_virama_glyphEP9hb_font_tPj, %function
_ZNK18indic_shape_plan_t16get_virama_glyphEP9hb_font_tPj:
	.fnstart
.LFB270:
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
	ldr	r3, [r3, #8]
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r3, #-1
	bne	.L201
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L202
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	add	r3, r7, #20
	ldr	r0, [r7, #8]
	mov	r1, r2
	movs	r2, #0
	bl	_ZN9hb_font_t9get_glyphEjjPj(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L203
.L202:
	movs	r3, #1
	b	.L204
.L203:
	movs	r3, #0
.L204:
	cmp	r3, #0
	beq	.L205
	movs	r3, #0
	str	r3, [r7, #20]
.L205:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
.L201:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #4]
	str	r2, [r3]
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
	.fnend
	.size	_ZNK18indic_shape_plan_t16get_virama_glyphEP9hb_font_tPj, .-_ZNK18indic_shape_plan_t16get_virama_glyphEP9hb_font_tPj
	.section	.text._ZL17data_create_indicPK18hb_ot_shape_plan_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL17data_create_indicPK18hb_ot_shape_plan_t, %function
_ZL17data_create_indicPK18hb_ot_shape_plan_t:
	.fnstart
.LFB271:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #24
	sub	sp, sp, #24
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r0, #1
	movs	r1, #144
	bl	calloc(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L208
	movs	r3, #0
	b	.L209
.L208:
	ldr	r3, [r7, #12]
	ldr	r2, .L220
.LPIC15:
	add	r2, pc
	str	r2, [r3]
	movs	r3, #1
	str	r3, [r7, #20]
	b	.L210
.L213:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, .L220+4
.LPIC16:
	add	r3, pc
	mov	r1, r3
	ldr	r3, [r7, #20]
	lsls	r3, r3, #5
	add	r3, r3, r1
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L211
	ldr	r3, [r7, #20]
	lsls	r2, r3, #5
	ldr	r3, .L220+8
.LPIC17:
	add	r3, pc
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3]
	b	.L212
.L211:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L210:
	ldr	r3, .L220+12
.LPIC18:
	add	r3, pc
	mov	r0, r3
	bl	_Z12ARRAY_LENGTHI14indic_config_tLj13EEjRAT0__KT_(PLT)
	mov	r2, r0
	ldr	r3, [r7, #20]
	cmp	r2, r3
	ite	hi
	movhi	r3, #1
	movls	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L213
.L212:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L214
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	uxtb	r3, r3
	cmp	r3, #50
	beq	.L214
	movs	r3, #1
	b	.L215
.L214:
	movs	r3, #0
.L215:
	ldr	r2, [r7, #12]
	strb	r3, [r2, #4]
	ldr	r3, [r7, #12]
	mov	r2, #-1
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	eor	r3, r3, #1
	strb	r3, [r7, #11]
	ldr	r3, [r7, #12]
	add	r1, r3, #12
	ldr	r3, [r7, #4]
	add	r2, r3, #24
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	mov	r0, r1
	mov	r1, r2
	movw	r2, #26726
	movt	r2, 29296
	bl	_ZN26would_substitute_feature_t4initEPK11hb_ot_map_tjb(PLT)
	ldr	r3, [r7, #12]
	add	r1, r3, #24
	ldr	r3, [r7, #4]
	add	r2, r3, #24
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	mov	r0, r1
	mov	r1, r2
	movw	r2, #25958
	movt	r2, 28786
	bl	_ZN26would_substitute_feature_t4initEPK11hb_ot_map_tjb(PLT)
	ldr	r3, [r7, #12]
	add	r1, r3, #36
	ldr	r3, [r7, #4]
	add	r2, r3, #24
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	mov	r0, r1
	mov	r1, r2
	movw	r2, #30566
	movt	r2, 25196
	bl	_ZN26would_substitute_feature_t4initEPK11hb_ot_map_tjb(PLT)
	ldr	r3, [r7, #12]
	add	r1, r3, #48
	ldr	r3, [r7, #4]
	add	r2, r3, #24
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	mov	r0, r1
	mov	r1, r2
	movw	r2, #29798
	movt	r2, 28787
	bl	_ZN26would_substitute_feature_t4initEPK11hb_ot_map_tjb(PLT)
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L216
.L219:
	ldr	r3, .L220+16
.LPIC19:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #16]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	mov	r0, r3
	movs	r1, #1
	bl	_Zan25hb_ot_map_feature_flags_tS_(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L217
	ldr	r3, [r7, #4]
	add	r2, r3, #24
	ldr	r3, .L220+20
.LPIC20:
	add	r3, pc
	ldr	r1, [r7, #16]
	ldr	r3, [r3, r1, lsl #3]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK11hb_ot_map_t10get_1_maskEj(PLT)
	mov	r3, r0
	mov	r2, r3
	b	.L218
.L217:
	movs	r2, #0
.L218:
	ldr	r1, [r7, #12]
	ldr	r3, [r7, #16]
	adds	r3, r3, #14
	lsls	r3, r3, #2
	add	r3, r3, r1
	str	r2, [r3, #4]
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L216:
	ldr	r3, [r7, #12]
	adds	r3, r3, #60
	mov	r0, r3
	bl	_Z12ARRAY_LENGTHIjLj21EEjRAT0__KT_(PLT)
	mov	r2, r0
	ldr	r3, [r7, #16]
	cmp	r2, r3
	ite	hi
	movhi	r3, #1
	movls	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L219
	ldr	r3, [r7, #12]
.L209:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L221:
	.align	2
.L220:
	.word	_ZL13indic_configs-(.LPIC15+4)
	.word	_ZL13indic_configs-(.LPIC16+4)
	.word	_ZL13indic_configs-(.LPIC17+4)
	.word	_ZL13indic_configs-(.LPIC18+4)
	.word	_ZL14indic_features-(.LPIC19+4)
	.word	_ZL14indic_features-(.LPIC20+4)
	.fnend
	.size	_ZL17data_create_indicPK18hb_ot_shape_plan_t, .-_ZL17data_create_indicPK18hb_ot_shape_plan_t
	.section	.text._ZL18data_destroy_indicPv,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL18data_destroy_indicPv, %function
_ZL18data_destroy_indicPv:
	.fnstart
.LFB272:
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
	.size	_ZL18data_destroy_indicPv, .-_ZL18data_destroy_indicPv
	.section	.text._ZL28consonant_position_from_facePK18indic_shape_plan_tjjP9hb_face_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL28consonant_position_from_facePK18indic_shape_plan_tjjP9hb_face_t, %function
_ZL28consonant_position_from_facePK18indic_shape_plan_tjjP9hb_face_t:
	.fnstart
.LFB273:
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
	str	r3, [r7]
	ldr	r3, [r7, #4]
	str	r3, [r7, #16]
	ldr	r3, [r7, #8]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	add	r2, r3, #36
	add	r3, r7, #16
	mov	r0, r2
	mov	r1, r3
	movs	r2, #2
	ldr	r3, [r7]
	bl	_ZNK26would_substitute_feature_t16would_substituteEPKjjP9hb_face_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L224
	ldr	r3, [r7, #12]
	add	r2, r3, #36
	add	r3, r7, #16
	adds	r3, r3, #4
	mov	r0, r2
	mov	r1, r3
	movs	r2, #2
	ldr	r3, [r7]
	bl	_ZNK26would_substitute_feature_t16would_substituteEPKjjP9hb_face_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L225
.L224:
	movs	r3, #1
	b	.L226
.L225:
	movs	r3, #0
.L226:
	cmp	r3, #0
	beq	.L227
	movs	r3, #8
	b	.L238
.L227:
	ldr	r3, [r7, #12]
	add	r2, r3, #48
	add	r3, r7, #16
	mov	r0, r2
	mov	r1, r3
	movs	r2, #2
	ldr	r3, [r7]
	bl	_ZNK26would_substitute_feature_t16would_substituteEPKjjP9hb_face_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L229
	ldr	r3, [r7, #12]
	add	r2, r3, #48
	add	r3, r7, #16
	adds	r3, r3, #4
	mov	r0, r2
	mov	r1, r3
	movs	r2, #2
	ldr	r3, [r7]
	bl	_ZNK26would_substitute_feature_t16would_substituteEPKjjP9hb_face_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L230
.L229:
	movs	r3, #1
	b	.L231
.L230:
	movs	r3, #0
.L231:
	cmp	r3, #0
	beq	.L232
	movs	r3, #11
	b	.L238
.L232:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #28]
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #2
	bne	.L233
	ldr	r3, [r7, #12]
	add	r2, r3, #24
	add	r3, r7, #16
	mov	r0, r2
	mov	r1, r3
	movs	r2, #2
	ldr	r3, [r7]
	bl	_ZNK26would_substitute_feature_t16would_substituteEPKjjP9hb_face_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L234
	ldr	r3, [r7, #12]
	add	r2, r3, #24
	add	r3, r7, #16
	adds	r3, r3, #4
	mov	r0, r2
	mov	r1, r3
	movs	r2, #2
	ldr	r3, [r7]
	bl	_ZNK26would_substitute_feature_t16would_substituteEPKjjP9hb_face_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L234
.L233:
	ldr	r3, [r7, #28]
	cmp	r3, #1
	bne	.L235
	ldr	r3, [r7, #12]
	add	r2, r3, #24
	add	r3, r7, #16
	adds	r3, r3, #4
	mov	r0, r2
	mov	r1, r3
	movs	r2, #1
	ldr	r3, [r7]
	bl	_ZNK26would_substitute_feature_t16would_substituteEPKjjP9hb_face_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L235
.L234:
	movs	r3, #1
	b	.L236
.L235:
	movs	r3, #0
.L236:
	cmp	r3, #0
	beq	.L237
	movs	r3, #11
	b	.L238
.L237:
	movs	r3, #4
.L238:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL28consonant_position_from_facePK18indic_shape_plan_tjjP9hb_face_t, .-_ZL28consonant_position_from_facePK18indic_shape_plan_tjjP9hb_face_t
	.section	.text._ZL14find_syllablesP11hb_buffer_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL14find_syllablesP11hb_buffer_t, %function
_ZL14find_syllablesP11hb_buffer_t:
	.fnstart
.LFB274:
	@ args = 0, pretend = 0, frame = 144
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #148
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	str	r3, [r7, #32]
	movs	r3, #178
	str	r3, [r7, #128]
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #136]
	movs	r3, #0
	str	r3, [r7, #132]
	movs	r3, #0
	str	r3, [r7, #140]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #124]
	movs	r3, #1
	str	r3, [r7, #120]
	ldr	r2, [r7, #140]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bne	.L240
	b	.L241
.L240:
	ldr	r3, .L339
.LPIC21:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #128]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #11
	bne	.L242
	ldr	r3, [r7, #140]
	str	r3, [r7, #28]
	nop
.L242:
	ldr	r3, [r7, #128]
	lsls	r3, r3, #1
	mov	r2, r3
	ldr	r3, .L339+4
.LPIC22:
	add	r3, pc
	add	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, .L339+8
.LPIC23:
	add	r3, pc
	ldr	r2, [r7, #128]
	ldrh	r3, [r3, r2, lsl #1]
	sxth	r3, r3
	lsls	r2, r3, #1
	ldr	r3, .L339+12
.LPIC24:
	add	r3, pc
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, .L339+16
.LPIC25:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #128]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	ble	.L244
	ldr	r3, [r7, #16]
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r2, [r7, #140]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #32]
	add	r3, r3, r2
	ldrb	r3, [r3, #18]	@ zero_extendqisi2
	cmp	r1, r3
	bhi	.L244
	ldr	r2, [r7, #140]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #32]
	add	r3, r3, r2
	ldrb	r2, [r3, #18]	@ zero_extendqisi2
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	bhi	.L244
	ldr	r2, [r7, #140]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #32]
	add	r3, r3, r2
	ldrb	r3, [r3, #18]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r2, r3
	lsls	r3, r3, #1
	b	.L245
.L244:
	ldr	r3, [r7, #8]
	lsls	r3, r3, #1
.L245:
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrh	r3, [r3]
	sxth	r3, r3
	str	r3, [r7, #116]
.L246:
	ldr	r3, .L339+20
.LPIC26:
	add	r3, pc
	ldr	r2, [r7, #116]
	ldrh	r3, [r3, r2, lsl #1]
	sxth	r3, r3
	str	r3, [r7, #128]
	ldr	r3, .L339+24
.LPIC27:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #116]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L247
	b	.L248
.L247:
	ldr	r3, .L339+28
.LPIC28:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #116]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #1
	cmp	r3, #23
	bhi	.L248
	adr	r1, .L250
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L250:
	.word	.L249+1-.L250
	.word	.L251+1-.L250
	.word	.L252+1-.L250
	.word	.L253+1-.L250
	.word	.L254+1-.L250
	.word	.L255+1-.L250
	.word	.L256+1-.L250
	.word	.L257+1-.L250
	.word	.L258+1-.L250
	.word	.L248+1-.L250
	.word	.L248+1-.L250
	.word	.L259+1-.L250
	.word	.L260+1-.L250
	.word	.L261+1-.L250
	.word	.L262+1-.L250
	.word	.L263+1-.L250
	.word	.L264+1-.L250
	.word	.L265+1-.L250
	.word	.L266+1-.L250
	.word	.L267+1-.L250
	.word	.L268+1-.L250
	.word	.L269+1-.L250
	.word	.L270+1-.L250
	.word	.L271+1-.L250
.L251:
	ldr	r3, [r7, #140]
	adds	r3, r3, #1
	str	r3, [r7, #136]
	b	.L248
.L262:
	ldr	r3, [r7, #140]
	adds	r3, r3, #1
	str	r3, [r7, #136]
	ldr	r3, [r7, #124]
	str	r3, [r7, #112]
	b	.L272
.L273:
	ldr	r2, [r7, #112]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #32]
	add	r3, r3, r2
	ldr	r2, [r7, #120]
	uxtb	r2, r2
	lsls	r2, r2, #4
	uxtb	r2, r2
	strb	r2, [r3, #15]
	ldr	r3, [r7, #112]
	adds	r3, r3, #1
	str	r3, [r7, #112]
.L272:
	ldr	r3, [r7, #140]
	adds	r2, r3, #1
	ldr	r3, [r7, #112]
	cmp	r2, r3
	bhi	.L273
	ldr	r3, [r7, #140]
	adds	r3, r3, #1
	str	r3, [r7, #124]
	ldr	r3, [r7, #120]
	adds	r3, r3, #1
	str	r3, [r7, #120]
	ldr	r3, [r7, #120]
	cmp	r3, #16
	bne	.L274
	movs	r3, #1
	str	r3, [r7, #120]
.L274:
	b	.L248
.L264:
	ldr	r3, [r7, #140]
	adds	r3, r3, #1
	str	r3, [r7, #136]
	ldr	r3, [r7, #124]
	str	r3, [r7, #108]
	b	.L275
.L276:
	ldr	r2, [r7, #108]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #32]
	add	r3, r3, r2
	ldr	r2, [r7, #120]
	uxtb	r2, r2
	lsls	r2, r2, #4
	uxtb	r2, r2
	orr	r2, r2, #1
	uxtb	r2, r2
	strb	r2, [r3, #15]
	ldr	r3, [r7, #108]
	adds	r3, r3, #1
	str	r3, [r7, #108]
.L275:
	ldr	r3, [r7, #140]
	adds	r2, r3, #1
	ldr	r3, [r7, #108]
	cmp	r2, r3
	bhi	.L276
	ldr	r3, [r7, #140]
	adds	r3, r3, #1
	str	r3, [r7, #124]
	ldr	r3, [r7, #120]
	adds	r3, r3, #1
	str	r3, [r7, #120]
	ldr	r3, [r7, #120]
	cmp	r3, #16
	bne	.L277
	movs	r3, #1
	str	r3, [r7, #120]
.L277:
	b	.L248
.L269:
	ldr	r3, [r7, #140]
	adds	r3, r3, #1
	str	r3, [r7, #136]
	ldr	r3, [r7, #124]
	str	r3, [r7, #104]
	b	.L278
.L279:
	ldr	r2, [r7, #104]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #32]
	add	r3, r3, r2
	ldr	r2, [r7, #120]
	uxtb	r2, r2
	lsls	r2, r2, #4
	uxtb	r2, r2
	orr	r2, r2, #2
	uxtb	r2, r2
	strb	r2, [r3, #15]
	ldr	r3, [r7, #104]
	adds	r3, r3, #1
	str	r3, [r7, #104]
.L278:
	ldr	r3, [r7, #140]
	adds	r2, r3, #1
	ldr	r3, [r7, #104]
	cmp	r2, r3
	bhi	.L279
	ldr	r3, [r7, #140]
	adds	r3, r3, #1
	str	r3, [r7, #124]
	ldr	r3, [r7, #120]
	adds	r3, r3, #1
	str	r3, [r7, #120]
	ldr	r3, [r7, #120]
	cmp	r3, #16
	bne	.L280
	movs	r3, #1
	str	r3, [r7, #120]
.L280:
	b	.L248
.L271:
	ldr	r3, [r7, #140]
	adds	r3, r3, #1
	str	r3, [r7, #136]
	ldr	r3, [r7, #124]
	str	r3, [r7, #100]
	b	.L281
.L282:
	ldr	r2, [r7, #100]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #32]
	add	r3, r3, r2
	ldr	r2, [r7, #120]
	uxtb	r2, r2
	lsls	r2, r2, #4
	uxtb	r2, r2
	orr	r2, r2, #3
	uxtb	r2, r2
	strb	r2, [r3, #15]
	ldr	r3, [r7, #100]
	adds	r3, r3, #1
	str	r3, [r7, #100]
.L281:
	ldr	r3, [r7, #140]
	adds	r2, r3, #1
	ldr	r3, [r7, #100]
	cmp	r2, r3
	bhi	.L282
	ldr	r3, [r7, #140]
	adds	r3, r3, #1
	str	r3, [r7, #124]
	ldr	r3, [r7, #120]
	adds	r3, r3, #1
	str	r3, [r7, #120]
	ldr	r3, [r7, #120]
	cmp	r3, #16
	bne	.L283
	movs	r3, #1
	str	r3, [r7, #120]
.L283:
	b	.L248
.L266:
	ldr	r3, [r7, #140]
	adds	r3, r3, #1
	str	r3, [r7, #136]
	ldr	r3, [r7, #124]
	str	r3, [r7, #96]
	b	.L284
.L285:
	ldr	r2, [r7, #96]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #32]
	add	r3, r3, r2
	ldr	r2, [r7, #120]
	uxtb	r2, r2
	lsls	r2, r2, #4
	uxtb	r2, r2
	orr	r2, r2, #4
	uxtb	r2, r2
	strb	r2, [r3, #15]
	ldr	r3, [r7, #96]
	adds	r3, r3, #1
	str	r3, [r7, #96]
.L284:
	ldr	r3, [r7, #140]
	adds	r2, r3, #1
	ldr	r3, [r7, #96]
	cmp	r2, r3
	bhi	.L285
	ldr	r3, [r7, #140]
	adds	r3, r3, #1
	str	r3, [r7, #124]
	ldr	r3, [r7, #120]
	adds	r3, r3, #1
	str	r3, [r7, #120]
	ldr	r3, [r7, #120]
	cmp	r3, #16
	bne	.L286
	movs	r3, #1
	str	r3, [r7, #120]
.L286:
	b	.L248
.L259:
	ldr	r3, [r7, #140]
	adds	r3, r3, #1
	str	r3, [r7, #136]
	ldr	r3, [r7, #124]
	str	r3, [r7, #92]
	b	.L287
.L288:
	ldr	r2, [r7, #92]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #32]
	add	r3, r3, r2
	ldr	r2, [r7, #120]
	uxtb	r2, r2
	lsls	r2, r2, #4
	uxtb	r2, r2
	orr	r2, r2, #5
	uxtb	r2, r2
	strb	r2, [r3, #15]
	ldr	r3, [r7, #92]
	adds	r3, r3, #1
	str	r3, [r7, #92]
.L287:
	ldr	r3, [r7, #140]
	adds	r2, r3, #1
	ldr	r3, [r7, #92]
	cmp	r2, r3
	bhi	.L288
	ldr	r3, [r7, #140]
	adds	r3, r3, #1
	str	r3, [r7, #124]
	ldr	r3, [r7, #120]
	adds	r3, r3, #1
	str	r3, [r7, #120]
	ldr	r3, [r7, #120]
	cmp	r3, #16
	bne	.L289
	movs	r3, #1
	str	r3, [r7, #120]
.L289:
	b	.L248
.L261:
	ldr	r3, [r7, #140]
	str	r3, [r7, #136]
	ldr	r3, [r7, #140]
	subs	r3, r3, #1
	str	r3, [r7, #140]
	ldr	r3, [r7, #124]
	str	r3, [r7, #88]
	b	.L290
.L291:
	ldr	r2, [r7, #88]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #32]
	add	r3, r3, r2
	ldr	r2, [r7, #120]
	uxtb	r2, r2
	lsls	r2, r2, #4
	uxtb	r2, r2
	strb	r2, [r3, #15]
	ldr	r3, [r7, #88]
	adds	r3, r3, #1
	str	r3, [r7, #88]
.L290:
	ldr	r3, [r7, #140]
	adds	r2, r3, #1
	ldr	r3, [r7, #88]
	cmp	r2, r3
	bhi	.L291
	ldr	r3, [r7, #140]
	adds	r3, r3, #1
	str	r3, [r7, #124]
	ldr	r3, [r7, #120]
	adds	r3, r3, #1
	str	r3, [r7, #120]
	ldr	r3, [r7, #120]
	cmp	r3, #16
	bne	.L292
	movs	r3, #1
	str	r3, [r7, #120]
.L292:
	b	.L248
.L263:
	ldr	r3, [r7, #140]
	str	r3, [r7, #136]
	ldr	r3, [r7, #140]
	subs	r3, r3, #1
	str	r3, [r7, #140]
	ldr	r3, [r7, #124]
	str	r3, [r7, #84]
	b	.L293
.L294:
	ldr	r2, [r7, #84]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #32]
	add	r3, r3, r2
	ldr	r2, [r7, #120]
	uxtb	r2, r2
	lsls	r2, r2, #4
	uxtb	r2, r2
	orr	r2, r2, #1
	uxtb	r2, r2
	strb	r2, [r3, #15]
	ldr	r3, [r7, #84]
	adds	r3, r3, #1
	str	r3, [r7, #84]
.L293:
	ldr	r3, [r7, #140]
	adds	r2, r3, #1
	ldr	r3, [r7, #84]
	cmp	r2, r3
	bhi	.L294
	ldr	r3, [r7, #140]
	adds	r3, r3, #1
	str	r3, [r7, #124]
	ldr	r3, [r7, #120]
	adds	r3, r3, #1
	str	r3, [r7, #120]
	ldr	r3, [r7, #120]
	cmp	r3, #16
	bne	.L295
	movs	r3, #1
	str	r3, [r7, #120]
.L295:
	b	.L248
.L268:
	ldr	r3, [r7, #140]
	str	r3, [r7, #136]
	ldr	r3, [r7, #140]
	subs	r3, r3, #1
	str	r3, [r7, #140]
	ldr	r3, [r7, #124]
	str	r3, [r7, #80]
	b	.L296
.L297:
	ldr	r2, [r7, #80]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #32]
	add	r3, r3, r2
	ldr	r2, [r7, #120]
	uxtb	r2, r2
	lsls	r2, r2, #4
	uxtb	r2, r2
	orr	r2, r2, #2
	uxtb	r2, r2
	strb	r2, [r3, #15]
	ldr	r3, [r7, #80]
	adds	r3, r3, #1
	str	r3, [r7, #80]
.L296:
	ldr	r3, [r7, #140]
	adds	r2, r3, #1
	ldr	r3, [r7, #80]
	cmp	r2, r3
	bhi	.L297
	ldr	r3, [r7, #140]
	adds	r3, r3, #1
	str	r3, [r7, #124]
	ldr	r3, [r7, #120]
	adds	r3, r3, #1
	str	r3, [r7, #120]
	ldr	r3, [r7, #120]
	cmp	r3, #16
	bne	.L298
	movs	r3, #1
	str	r3, [r7, #120]
.L298:
	b	.L248
.L270:
	ldr	r3, [r7, #140]
	str	r3, [r7, #136]
	ldr	r3, [r7, #140]
	subs	r3, r3, #1
	str	r3, [r7, #140]
	ldr	r3, [r7, #124]
	str	r3, [r7, #76]
	b	.L299
.L300:
	ldr	r2, [r7, #76]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #32]
	add	r3, r3, r2
	ldr	r2, [r7, #120]
	uxtb	r2, r2
	lsls	r2, r2, #4
	uxtb	r2, r2
	orr	r2, r2, #3
	uxtb	r2, r2
	strb	r2, [r3, #15]
	ldr	r3, [r7, #76]
	adds	r3, r3, #1
	str	r3, [r7, #76]
.L299:
	ldr	r3, [r7, #140]
	adds	r2, r3, #1
	ldr	r3, [r7, #76]
	cmp	r2, r3
	bhi	.L300
	ldr	r3, [r7, #140]
	adds	r3, r3, #1
	str	r3, [r7, #124]
	ldr	r3, [r7, #120]
	adds	r3, r3, #1
	str	r3, [r7, #120]
	ldr	r3, [r7, #120]
	cmp	r3, #16
	bne	.L301
	movs	r3, #1
	str	r3, [r7, #120]
.L301:
	b	.L248
.L265:
	ldr	r3, [r7, #140]
	str	r3, [r7, #136]
	ldr	r3, [r7, #140]
	subs	r3, r3, #1
	str	r3, [r7, #140]
	ldr	r3, [r7, #124]
	str	r3, [r7, #72]
	b	.L302
.L303:
	ldr	r2, [r7, #72]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #32]
	add	r3, r3, r2
	ldr	r2, [r7, #120]
	uxtb	r2, r2
	lsls	r2, r2, #4
	uxtb	r2, r2
	orr	r2, r2, #4
	uxtb	r2, r2
	strb	r2, [r3, #15]
	ldr	r3, [r7, #72]
	adds	r3, r3, #1
	str	r3, [r7, #72]
.L302:
	ldr	r3, [r7, #140]
	adds	r2, r3, #1
	ldr	r3, [r7, #72]
	cmp	r2, r3
	bhi	.L303
	ldr	r3, [r7, #140]
	adds	r3, r3, #1
	str	r3, [r7, #124]
	ldr	r3, [r7, #120]
	adds	r3, r3, #1
	str	r3, [r7, #120]
	ldr	r3, [r7, #120]
	cmp	r3, #16
	bne	.L304
	movs	r3, #1
	str	r3, [r7, #120]
.L304:
	b	.L248
.L267:
	ldr	r3, [r7, #140]
	str	r3, [r7, #136]
	ldr	r3, [r7, #140]
	subs	r3, r3, #1
	str	r3, [r7, #140]
	ldr	r3, [r7, #124]
	str	r3, [r7, #68]
	b	.L305
.L306:
	ldr	r2, [r7, #68]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #32]
	add	r3, r3, r2
	ldr	r2, [r7, #120]
	uxtb	r2, r2
	lsls	r2, r2, #4
	uxtb	r2, r2
	orr	r2, r2, #5
	uxtb	r2, r2
	strb	r2, [r3, #15]
	ldr	r3, [r7, #68]
	adds	r3, r3, #1
	str	r3, [r7, #68]
.L305:
	ldr	r3, [r7, #140]
	adds	r2, r3, #1
	ldr	r3, [r7, #68]
	cmp	r2, r3
	bhi	.L306
	ldr	r3, [r7, #140]
	adds	r3, r3, #1
	str	r3, [r7, #124]
	ldr	r3, [r7, #120]
	adds	r3, r3, #1
	str	r3, [r7, #120]
	ldr	r3, [r7, #120]
	cmp	r3, #16
	bne	.L307
	movs	r3, #1
	str	r3, [r7, #120]
.L307:
	b	.L248
.L249:
	ldr	r3, [r7, #136]
	subs	r3, r3, #1
	str	r3, [r7, #140]
	ldr	r3, [r7, #124]
	str	r3, [r7, #64]
	b	.L308
.L309:
	ldr	r2, [r7, #64]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #32]
	add	r3, r3, r2
	ldr	r2, [r7, #120]
	uxtb	r2, r2
	lsls	r2, r2, #4
	uxtb	r2, r2
	strb	r2, [r3, #15]
	ldr	r3, [r7, #64]
	adds	r3, r3, #1
	str	r3, [r7, #64]
.L308:
	ldr	r3, [r7, #140]
	adds	r2, r3, #1
	ldr	r3, [r7, #64]
	cmp	r2, r3
	bhi	.L309
	ldr	r3, [r7, #140]
	adds	r3, r3, #1
	str	r3, [r7, #124]
	ldr	r3, [r7, #120]
	adds	r3, r3, #1
	str	r3, [r7, #120]
	ldr	r3, [r7, #120]
	cmp	r3, #16
	bne	.L310
	movs	r3, #1
	str	r3, [r7, #120]
.L310:
	b	.L248
.L252:
	ldr	r3, [r7, #136]
	subs	r3, r3, #1
	str	r3, [r7, #140]
	ldr	r3, [r7, #124]
	str	r3, [r7, #60]
	b	.L311
.L312:
	ldr	r2, [r7, #60]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #32]
	add	r3, r3, r2
	ldr	r2, [r7, #120]
	uxtb	r2, r2
	lsls	r2, r2, #4
	uxtb	r2, r2
	orr	r2, r2, #1
	uxtb	r2, r2
	strb	r2, [r3, #15]
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
.L311:
	ldr	r3, [r7, #140]
	adds	r2, r3, #1
	ldr	r3, [r7, #60]
	cmp	r2, r3
	bhi	.L312
	ldr	r3, [r7, #140]
	adds	r3, r3, #1
	str	r3, [r7, #124]
	ldr	r3, [r7, #120]
	adds	r3, r3, #1
	str	r3, [r7, #120]
	ldr	r3, [r7, #120]
	cmp	r3, #16
	bne	.L313
	movs	r3, #1
	str	r3, [r7, #120]
.L313:
	b	.L248
.L256:
	ldr	r3, [r7, #136]
	subs	r3, r3, #1
	str	r3, [r7, #140]
	ldr	r3, [r7, #124]
	str	r3, [r7, #56]
	b	.L314
.L315:
	ldr	r2, [r7, #56]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #32]
	add	r3, r3, r2
	ldr	r2, [r7, #120]
	uxtb	r2, r2
	lsls	r2, r2, #4
	uxtb	r2, r2
	orr	r2, r2, #2
	uxtb	r2, r2
	strb	r2, [r3, #15]
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	str	r3, [r7, #56]
.L314:
	ldr	r3, [r7, #140]
	adds	r2, r3, #1
	ldr	r3, [r7, #56]
	cmp	r2, r3
	bhi	.L315
	ldr	r3, [r7, #140]
	adds	r3, r3, #1
	str	r3, [r7, #124]
	ldr	r3, [r7, #120]
	adds	r3, r3, #1
	str	r3, [r7, #120]
	ldr	r3, [r7, #120]
	cmp	r3, #16
	bne	.L316
	movs	r3, #1
	str	r3, [r7, #120]
.L316:
	b	.L248
.L258:
	ldr	r3, [r7, #136]
	subs	r3, r3, #1
	str	r3, [r7, #140]
	ldr	r3, [r7, #124]
	str	r3, [r7, #52]
	b	.L317
.L318:
	ldr	r2, [r7, #52]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #32]
	add	r3, r3, r2
	ldr	r2, [r7, #120]
	uxtb	r2, r2
	lsls	r2, r2, #4
	uxtb	r2, r2
	orr	r2, r2, #3
	uxtb	r2, r2
	strb	r2, [r3, #15]
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	str	r3, [r7, #52]
.L317:
	ldr	r3, [r7, #140]
	adds	r2, r3, #1
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bhi	.L318
	ldr	r3, [r7, #140]
	adds	r3, r3, #1
	str	r3, [r7, #124]
	ldr	r3, [r7, #120]
	adds	r3, r3, #1
	str	r3, [r7, #120]
	ldr	r3, [r7, #120]
	cmp	r3, #16
	bne	.L319
	movs	r3, #1
	str	r3, [r7, #120]
.L319:
	b	.L248
.L253:
	ldr	r3, [r7, #136]
	subs	r3, r3, #1
	str	r3, [r7, #140]
	ldr	r3, [r7, #124]
	str	r3, [r7, #48]
	b	.L320
.L321:
	ldr	r2, [r7, #48]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #32]
	add	r3, r3, r2
	ldr	r2, [r7, #120]
	uxtb	r2, r2
	lsls	r2, r2, #4
	uxtb	r2, r2
	orr	r2, r2, #4
	uxtb	r2, r2
	strb	r2, [r3, #15]
	ldr	r3, [r7, #48]
	adds	r3, r3, #1
	str	r3, [r7, #48]
.L320:
	ldr	r3, [r7, #140]
	adds	r2, r3, #1
	ldr	r3, [r7, #48]
	cmp	r2, r3
	bhi	.L321
	ldr	r3, [r7, #140]
	adds	r3, r3, #1
	str	r3, [r7, #124]
	ldr	r3, [r7, #120]
	adds	r3, r3, #1
	str	r3, [r7, #120]
	ldr	r3, [r7, #120]
	cmp	r3, #16
	bne	.L322
	movs	r3, #1
	str	r3, [r7, #120]
.L322:
	b	.L248
.L254:
	ldr	r3, [r7, #132]
	cmp	r3, #5
	beq	.L324
	cmp	r3, #6
	beq	.L325
	cmp	r3, #1
	beq	.L326
	b	.L248
.L326:
	ldr	r3, [r7, #136]
	subs	r3, r3, #1
	str	r3, [r7, #140]
	ldr	r3, [r7, #124]
	str	r3, [r7, #44]
	b	.L327
.L328:
	ldr	r2, [r7, #44]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #32]
	add	r3, r3, r2
	ldr	r2, [r7, #120]
	uxtb	r2, r2
	lsls	r2, r2, #4
	uxtb	r2, r2
	strb	r2, [r3, #15]
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	str	r3, [r7, #44]
.L327:
	ldr	r3, [r7, #140]
	adds	r2, r3, #1
	ldr	r3, [r7, #44]
	cmp	r2, r3
	bhi	.L328
	ldr	r3, [r7, #140]
	adds	r3, r3, #1
	str	r3, [r7, #124]
	ldr	r3, [r7, #120]
	adds	r3, r3, #1
	str	r3, [r7, #120]
	ldr	r3, [r7, #120]
	cmp	r3, #16
	bne	.L329
	movs	r3, #1
	str	r3, [r7, #120]
.L329:
	b	.L323
.L324:
	ldr	r3, [r7, #136]
	subs	r3, r3, #1
	str	r3, [r7, #140]
	ldr	r3, [r7, #124]
	str	r3, [r7, #40]
	b	.L330
.L331:
	ldr	r2, [r7, #40]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #32]
	add	r3, r3, r2
	ldr	r2, [r7, #120]
	uxtb	r2, r2
	lsls	r2, r2, #4
	uxtb	r2, r2
	orr	r2, r2, #4
	uxtb	r2, r2
	strb	r2, [r3, #15]
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	str	r3, [r7, #40]
.L330:
	ldr	r3, [r7, #140]
	adds	r2, r3, #1
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bhi	.L331
	ldr	r3, [r7, #140]
	adds	r3, r3, #1
	str	r3, [r7, #124]
	ldr	r3, [r7, #120]
	adds	r3, r3, #1
	str	r3, [r7, #120]
	ldr	r3, [r7, #120]
	cmp	r3, #16
	bne	.L332
	movs	r3, #1
	str	r3, [r7, #120]
.L332:
	b	.L323
.L325:
	ldr	r3, [r7, #136]
	subs	r3, r3, #1
	str	r3, [r7, #140]
	ldr	r3, [r7, #124]
	str	r3, [r7, #36]
	b	.L333
.L334:
	ldr	r2, [r7, #36]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #32]
	add	r3, r3, r2
	ldr	r2, [r7, #120]
	uxtb	r2, r2
	lsls	r2, r2, #4
	uxtb	r2, r2
	orr	r2, r2, #5
	uxtb	r2, r2
	strb	r2, [r3, #15]
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L333:
	ldr	r3, [r7, #140]
	adds	r2, r3, #1
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bhi	.L334
	ldr	r3, [r7, #140]
	adds	r3, r3, #1
	str	r3, [r7, #124]
	ldr	r3, [r7, #120]
	adds	r3, r3, #1
	str	r3, [r7, #120]
	ldr	r3, [r7, #120]
	cmp	r3, #16
	bne	.L335
	movs	r3, #1
	str	r3, [r7, #120]
.L335:
	nop
.L323:
	b	.L248
.L257:
	ldr	r3, [r7, #140]
	adds	r3, r3, #1
	str	r3, [r7, #136]
	movs	r3, #1
	str	r3, [r7, #132]
	b	.L248
.L255:
	ldr	r3, [r7, #140]
	adds	r3, r3, #1
	str	r3, [r7, #136]
	movs	r3, #5
	str	r3, [r7, #132]
	b	.L248
.L260:
	ldr	r3, [r7, #140]
	adds	r3, r3, #1
	str	r3, [r7, #136]
	movs	r3, #6
	str	r3, [r7, #132]
	nop
.L248:
	ldr	r3, .L339+32
.LPIC29:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #128]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #10
	bne	.L336
	movs	r3, #0
	str	r3, [r7, #28]
	nop
.L336:
	ldr	r3, [r7, #140]
	adds	r3, r3, #1
	str	r3, [r7, #140]
	ldr	r2, [r7, #140]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L241
	b	.L240
.L241:
	ldr	r2, [r7, #140]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bne	.L239
	ldr	r3, .L339+36
.LPIC30:
	add	r3, pc
	ldr	r2, [r7, #128]
	ldrh	r3, [r3, r2, lsl #1]
	sxth	r3, r3
	cmp	r3, #0
	ble	.L239
	ldr	r3, .L339+40
.LPIC31:
	add	r3, pc
	ldr	r2, [r7, #128]
	ldrh	r3, [r3, r2, lsl #1]
	sxth	r3, r3
	subs	r3, r3, #1
	str	r3, [r7, #116]
	b	.L246
.L239:
	adds	r7, r7, #148
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L340:
	.align	2
.L339:
	.word	_ZL42_indic_syllable_machine_from_state_actions-(.LPIC21+4)
	.word	_ZL34_indic_syllable_machine_trans_keys-(.LPIC22+4)
	.word	_ZL37_indic_syllable_machine_index_offsets-(.LPIC23+4)
	.word	_ZL32_indic_syllable_machine_indicies-(.LPIC24+4)
	.word	_ZL33_indic_syllable_machine_key_spans-(.LPIC25+4)
	.word	_ZL35_indic_syllable_machine_trans_targs-(.LPIC26+4)
	.word	_ZL37_indic_syllable_machine_trans_actions-(.LPIC27+4)
	.word	_ZL37_indic_syllable_machine_trans_actions-(.LPIC28+4)
	.word	_ZL40_indic_syllable_machine_to_state_actions-(.LPIC29+4)
	.word	_ZL33_indic_syllable_machine_eof_trans-(.LPIC30+4)
	.word	_ZL33_indic_syllable_machine_eof_trans-(.LPIC31+4)
	.cantunwind
	.fnend
	.size	_ZL14find_syllablesP11hb_buffer_t, .-_ZL14find_syllablesP11hb_buffer_t
	.section	.rodata
	.align	2
.LC2:
	.ascii	"indic_category\000"
	.align	2
.LC3:
	.ascii	"indic_position\000"
	.section	.text._ZL17setup_masks_indicPK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL17setup_masks_indicPK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t, %function
_ZL17setup_masks_indicPK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t:
	.fnstart
.LFB275:
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
	ldr	r3, .L344
.LPIC32:
	add	r3, pc
	bl	_ZN11hb_buffer_t12allocate_varEjjPKc(PLT)
	ldr	r0, [r7, #8]
	movs	r1, #7
	movs	r2, #1
	ldr	r3, .L344+4
.LPIC33:
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
	b	.L342
.L343:
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL20set_indic_propertiesR15hb_glyph_info_t(PLT)
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L342:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bcc	.L343
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L345:
	.align	2
.L344:
	.word	.LC2-(.LPIC32+4)
	.word	.LC3-(.LPIC33+4)
	.fnend
	.size	_ZL17setup_masks_indicPK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t, .-_ZL17setup_masks_indicPK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t
	.section	.text._ZL15setup_syllablesPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL15setup_syllablesPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t, %function
_ZL15setup_syllablesPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t:
	.fnstart
.LFB276:
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
	.section	.text._ZL19compare_indic_orderPK15hb_glyph_info_tS1_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL19compare_indic_orderPK15hb_glyph_info_tS1_, %function
_ZL19compare_indic_orderPK15hb_glyph_info_tS1_:
	.fnstart
.LFB277:
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
	blt	.L348
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	b	.L349
.L348:
	mov	r3, #-1
.L349:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZL19compare_indic_orderPK15hb_glyph_info_tS1_, .-_ZL19compare_indic_orderPK15hb_glyph_info_tS1_
	.section	.text._ZL26update_consonant_positionsPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL26update_consonant_positionsPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t, %function
_ZL26update_consonant_positionsPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t:
	.fnstart
.LFB278:
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
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #964]
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	ldr	r3, [r3]
	ldr	r3, [r3, #12]
	cmp	r3, #2
	bne	.L351
	add	r3, r7, #20
	ldr	r0, [r7, #40]
	ldr	r1, [r7, #8]
	mov	r2, r3
	bl	_ZNK18indic_shape_plan_t16get_virama_glyphEP9hb_font_tPj(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L354
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #52]
	str	r3, [r7, #36]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	str	r3, [r7, #32]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #44]
	b	.L355
.L357:
	ldr	r2, [r7, #44]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #28]
	add	r3, r3, r2
	ldrb	r3, [r3, #19]	@ zero_extendqisi2
	cmp	r3, #4
	bne	.L356
	ldr	r2, [r7, #44]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #28]
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #24]
	ldr	r2, [r7, #44]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #28]
	adds	r4, r2, r3
	ldr	r3, [r7, #20]
	ldr	r0, [r7, #40]
	ldr	r1, [r7, #24]
	mov	r2, r3
	ldr	r3, [r7, #36]
	bl	_ZL28consonant_position_from_facePK18indic_shape_plan_tjjP9hb_face_t(PLT)
	mov	r3, r0
	uxtb	r3, r3
	strb	r3, [r4, #19]
.L356:
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	str	r3, [r7, #44]
.L355:
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bcc	.L357
.L354:
.L351:
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZL26update_consonant_positionsPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t, .-_ZL26update_consonant_positionsPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t
	.section	.rodata
	.align	2
.LC4:
	.ascii	"false\000"
	.align	2
.LC5:
	.ascii	"../../../libs/harfbuzz-ng/src/hb-ot-shape-complex-i"
	.ascii	"ndic.cc\000"
	.align	2
.LC6:
	.ascii	"indic_plan->config->reph_mode == REPH_MODE_VIS_REPH"
	.ascii	"A\000"
	.align	2
.LC7:
	.ascii	"!has_reph\000"
	.align	2
.LC8:
	.ascii	"1 <= pref_len && pref_len <= 2\000"
	.section	.text._ZL37initial_reordering_consonant_syllablePK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL37initial_reordering_consonant_syllablePK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj, %function
_ZL37initial_reordering_consonant_syllablePK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj:
	.fnstart
.LFB279:
	@ args = 4, pretend = 0, frame = 232
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #232
	sub	sp, sp, #232
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #964]
	str	r3, [r7, #96]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	str	r3, [r7, #92]
	ldr	r3, [r7, #248]
	str	r3, [r7, #228]
	movs	r3, #0
	strb	r3, [r7, #227]
	ldr	r3, [r7]
	str	r3, [r7, #220]
	ldr	r3, [r7, #96]
	ldr	r3, [r3]
	ldr	r3, [r3, #16]
	cmp	r3, #1
	beq	.L359
	ldr	r3, [r7, #96]
	ldr	r3, [r3, #68]
	cmp	r3, #0
	beq	.L359
	ldr	r3, [r7]
	adds	r2, r3, #3
	ldr	r3, [r7, #248]
	cmp	r2, r3
	bhi	.L359
	ldr	r3, [r7, #96]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	bne	.L360
	ldr	r2, [r7]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #40
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL9is_joinerRK15hb_glyph_info_t(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L361
.L360:
	ldr	r3, [r7, #96]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	cmp	r3, #1
	bne	.L359
	ldr	r2, [r7]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #40
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	ldrb	r3, [r3, #18]	@ zero_extendqisi2
	cmp	r3, #6
	bne	.L359
.L361:
	movs	r3, #1
	b	.L362
.L359:
	movs	r3, #0
.L362:
	cmp	r3, #0
	beq	.L363
	ldr	r2, [r7]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #52]
	ldr	r3, [r7]
	adds	r2, r3, #1
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #56]
	ldr	r3, [r7, #96]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	cmp	r3, #1
	bne	.L364
	ldr	r2, [r7]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #40
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	ldr	r3, [r3]
	b	.L365
.L364:
	movs	r3, #0
.L365:
	str	r3, [r7, #60]
	ldr	r3, [r7, #96]
	add	r2, r3, #12
	add	r3, r7, #52
	mov	r0, r2
	mov	r1, r3
	movs	r2, #2
	ldr	r3, [r7, #8]
	bl	_ZNK26would_substitute_feature_t16would_substituteEPKjjP9hb_face_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L366
	ldr	r3, [r7, #96]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	cmp	r3, #1
	bne	.L367
	ldr	r3, [r7, #96]
	add	r2, r3, #12
	add	r3, r7, #52
	mov	r0, r2
	mov	r1, r3
	movs	r2, #3
	ldr	r3, [r7, #8]
	bl	_ZNK26would_substitute_feature_t16would_substituteEPKjjP9hb_face_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L367
.L366:
	movs	r3, #1
	b	.L368
.L367:
	movs	r3, #0
.L368:
	cmp	r3, #0
	beq	.L369
	ldr	r3, [r7, #220]
	adds	r3, r3, #2
	str	r3, [r7, #220]
	b	.L370
.L373:
	ldr	r3, [r7, #220]
	adds	r3, r3, #1
	str	r3, [r7, #220]
.L370:
	ldr	r2, [r7, #220]
	ldr	r3, [r7, #248]
	cmp	r2, r3
	bcs	.L371
	ldr	r2, [r7, #220]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL9is_joinerRK15hb_glyph_info_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L371
	movs	r3, #1
	b	.L372
.L371:
	movs	r3, #0
.L372:
	cmp	r3, #0
	bne	.L373
	ldr	r3, [r7]
	str	r3, [r7, #228]
	movs	r3, #1
	strb	r3, [r7, #227]
.L369:
	b	.L374
.L363:
	ldr	r3, [r7, #96]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	cmp	r3, #3
	bne	.L374
	ldr	r2, [r7]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	ldrb	r3, [r3, #18]	@ zero_extendqisi2
	cmp	r3, #15
	bne	.L374
	ldr	r3, [r7, #220]
	adds	r3, r3, #1
	str	r3, [r7, #220]
	b	.L375
.L378:
	ldr	r3, [r7, #220]
	adds	r3, r3, #1
	str	r3, [r7, #220]
.L375:
	ldr	r2, [r7, #220]
	ldr	r3, [r7, #248]
	cmp	r2, r3
	bcs	.L376
	ldr	r2, [r7, #220]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL9is_joinerRK15hb_glyph_info_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L376
	movs	r3, #1
	b	.L377
.L376:
	movs	r3, #0
.L377:
	cmp	r3, #0
	bne	.L378
	ldr	r3, [r7]
	str	r3, [r7, #228]
	movs	r3, #1
	strb	r3, [r7, #227]
.L374:
	ldr	r3, [r7, #96]
	ldr	r3, [r3]
	ldr	r3, [r3, #12]
	cmp	r3, #1
	beq	.L380
	cmp	r3, #2
	beq	.L381
	cmp	r3, #0
	beq	.L382
	ldr	r3, .L500
.LPIC34:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L500+4
.LPIC35:
	add	r3, pc
	mov	r1, r3
	movw	r2, #758
	ldr	r3, .L500+8
.LPIC36:
	add	r3, pc
	bl	__assert_fail(PLT)
.L381:
	ldr	r3, [r7, #248]
	str	r3, [r7, #216]
	movs	r3, #0
	strb	r3, [r7, #215]
.L389:
	ldr	r3, [r7, #216]
	subs	r3, r3, #1
	str	r3, [r7, #216]
	ldr	r2, [r7, #216]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL12is_consonantRK15hb_glyph_info_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L383
	ldr	r2, [r7, #216]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	ldrb	r3, [r3, #19]	@ zero_extendqisi2
	cmp	r3, #8
	beq	.L384
	ldr	r2, [r7, #216]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	ldrb	r3, [r3, #19]	@ zero_extendqisi2
	cmp	r3, #11
	bne	.L385
	ldrb	r3, [r7, #215]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L384
.L385:
	ldr	r3, [r7, #216]
	str	r3, [r7, #228]
	b	.L386
.L384:
	ldr	r2, [r7, #216]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	ldrb	r3, [r3, #19]	@ zero_extendqisi2
	cmp	r3, #8
	bne	.L387
	movs	r3, #1
	strb	r3, [r7, #215]
.L387:
	ldr	r3, [r7, #216]
	str	r3, [r7, #228]
	b	.L388
.L383:
	ldr	r2, [r7]
	ldr	r3, [r7, #216]
	cmp	r2, r3
	bcs	.L388
	ldr	r2, [r7, #216]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	ldrb	r3, [r3, #18]	@ zero_extendqisi2
	cmp	r3, #6
	bne	.L388
	ldr	r2, [r7, #216]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	subs	r3, r3, #20
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	ldrb	r3, [r3, #18]	@ zero_extendqisi2
	cmp	r3, #4
	bne	.L388
	b	.L386
.L388:
	ldr	r2, [r7, #216]
	ldr	r3, [r7, #220]
	cmp	r2, r3
	bhi	.L389
.L386:
	b	.L390
.L380:
	ldrb	r3, [r7, #227]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L391
	ldr	r3, [r7, #220]
	str	r3, [r7, #228]
.L391:
	ldr	r3, [r7, #220]
	str	r3, [r7, #208]
	b	.L392
.L396:
	ldr	r2, [r7, #208]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL12is_consonantRK15hb_glyph_info_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L393
	ldr	r2, [r7, #220]
	ldr	r3, [r7, #208]
	cmp	r2, r3
	bcs	.L394
	ldr	r2, [r7, #208]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	subs	r3, r3, #20
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	ldrb	r3, [r3, #18]	@ zero_extendqisi2
	cmp	r3, #6
	beq	.L395
.L394:
	ldr	r3, [r7, #208]
	str	r3, [r7, #228]
.L393:
	ldr	r3, [r7, #208]
	adds	r3, r3, #1
	str	r3, [r7, #208]
.L392:
	ldr	r2, [r7, #208]
	ldr	r3, [r7, #248]
	cmp	r2, r3
	bcc	.L396
.L395:
	ldr	r3, [r7, #228]
	adds	r3, r3, #1
	str	r3, [r7, #204]
	b	.L397
.L399:
	ldr	r2, [r7, #204]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL12is_consonantRK15hb_glyph_info_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L398
	ldr	r2, [r7, #204]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	movs	r2, #8
	strb	r2, [r3, #19]
.L398:
	ldr	r3, [r7, #204]
	adds	r3, r3, #1
	str	r3, [r7, #204]
.L397:
	ldr	r2, [r7, #204]
	ldr	r3, [r7, #248]
	cmp	r2, r3
	bcc	.L399
	b	.L390
.L382:
	ldr	r3, [r7, #96]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	cmp	r3, #2
	beq	.L400
	ldr	r3, .L500+12
.LPIC37:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L500+16
.LPIC38:
	add	r3, pc
	mov	r1, r3
	movw	r2, #842
	ldr	r3, .L500+20
.LPIC39:
	add	r3, pc
	bl	__assert_fail(PLT)
.L400:
	ldrb	r3, [r7, #227]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L401
	ldr	r3, .L500+24
.LPIC40:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L500+28
.LPIC41:
	add	r3, pc
	mov	r1, r3
	movw	r2, #843
	ldr	r3, .L500+32
.LPIC42:
	add	r3, pc
	bl	__assert_fail(PLT)
.L401:
	ldr	r3, [r7]
	str	r3, [r7, #228]
	ldr	r3, [r7, #228]
	adds	r3, r3, #1
	str	r3, [r7, #200]
	b	.L402
.L404:
	ldr	r2, [r7, #200]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL12is_consonantRK15hb_glyph_info_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L403
	ldr	r2, [r7, #200]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	movs	r2, #8
	strb	r2, [r3, #19]
.L403:
	ldr	r3, [r7, #200]
	adds	r3, r3, #1
	str	r3, [r7, #200]
.L402:
	ldr	r2, [r7, #200]
	ldr	r3, [r7, #248]
	cmp	r2, r3
	bcc	.L404
	nop
.L390:
	ldrb	r3, [r7, #227]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L405
	ldr	r2, [r7, #228]
	ldr	r3, [r7]
	cmp	r2, r3
	bne	.L405
	ldr	r2, [r7, #220]
	ldr	r3, [r7, #228]
	subs	r3, r2, r3
	cmp	r3, #2
	bhi	.L405
	movs	r3, #0
	strb	r3, [r7, #227]
.L405:
	ldr	r3, [r7]
	str	r3, [r7, #196]
	b	.L406
.L407:
	ldr	r2, [r7, #196]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	adds	r4, r2, r3
	movs	r3, #3
	str	r3, [r7, #64]
	ldr	r2, [r7, #196]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	ldrb	r3, [r3, #19]	@ zero_extendqisi2
	str	r3, [r7, #68]
	add	r2, r7, #64
	add	r3, r7, #68
	mov	r0, r2
	mov	r1, r3
	bl	_Z3MINI16indic_position_tET_RKS1_S3_(PLT)
	mov	r3, r0
	uxtb	r3, r3
	strb	r3, [r4, #19]
	ldr	r3, [r7, #196]
	adds	r3, r3, #1
	str	r3, [r7, #196]
.L406:
	ldr	r2, [r7, #196]
	ldr	r3, [r7, #228]
	cmp	r2, r3
	bcc	.L407
	ldr	r2, [r7, #228]
	ldr	r3, [r7, #248]
	cmp	r2, r3
	bcs	.L408
	ldr	r2, [r7, #228]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	movs	r2, #4
	strb	r2, [r3, #19]
.L408:
	ldr	r3, [r7, #228]
	adds	r3, r3, #1
	str	r3, [r7, #192]
	b	.L409
.L416:
	ldr	r2, [r7, #192]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	ldrb	r3, [r3, #18]	@ zero_extendqisi2
	cmp	r3, #7
	bne	.L410
	ldr	r3, [r7, #192]
	adds	r3, r3, #1
	str	r3, [r7, #188]
	b	.L411
.L414:
	ldr	r2, [r7, #188]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL12is_consonantRK15hb_glyph_info_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L412
	ldr	r2, [r7, #188]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	movs	r2, #13
	strb	r2, [r3, #19]
	b	.L413
.L412:
	ldr	r3, [r7, #188]
	adds	r3, r3, #1
	str	r3, [r7, #188]
.L411:
	ldr	r2, [r7, #188]
	ldr	r3, [r7, #248]
	cmp	r2, r3
	bcc	.L414
.L413:
	b	.L415
.L410:
	ldr	r3, [r7, #192]
	adds	r3, r3, #1
	str	r3, [r7, #192]
.L409:
	ldr	r2, [r7, #192]
	ldr	r3, [r7, #248]
	cmp	r2, r3
	bcc	.L416
.L415:
	ldrb	r3, [r7, #227]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L417
	ldr	r2, [r7]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	movs	r2, #1
	strb	r2, [r3, #19]
.L417:
	ldr	r3, [r7, #96]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L418
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #64]
	movw	r3, #31085
	movt	r3, 19820
	cmp	r2, r3
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	strb	r3, [r7, #91]
	ldr	r3, [r7, #228]
	adds	r3, r3, #1
	str	r3, [r7, #184]
	b	.L419
.L430:
	ldr	r2, [r7, #184]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	ldrb	r3, [r3, #18]	@ zero_extendqisi2
	cmp	r3, #4
	bne	.L420
	ldr	r3, [r7, #248]
	subs	r3, r3, #1
	str	r3, [r7, #180]
	b	.L421
.L427:
	ldr	r2, [r7, #180]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL12is_consonantRK15hb_glyph_info_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L422
	ldrb	r3, [r7, #91]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L423
	ldr	r2, [r7, #180]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	ldrb	r3, [r3, #18]	@ zero_extendqisi2
	cmp	r3, #4
	bne	.L423
.L422:
	movs	r3, #1
	b	.L424
.L423:
	movs	r3, #0
.L424:
	cmp	r3, #0
	beq	.L425
	b	.L426
.L425:
	ldr	r3, [r7, #180]
	subs	r3, r3, #1
	str	r3, [r7, #180]
.L421:
	ldr	r2, [r7, #180]
	ldr	r3, [r7, #184]
	cmp	r2, r3
	bhi	.L427
.L426:
	ldr	r2, [r7, #180]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	ldrb	r3, [r3, #18]	@ zero_extendqisi2
	cmp	r3, #4
	beq	.L428
	ldr	r2, [r7, #180]
	ldr	r3, [r7, #184]
	cmp	r2, r3
	bls	.L428
	ldr	r2, [r7, #184]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	add	r4, r7, #32
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r2, [r7, #184]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	adds	r0, r2, r3
	ldr	r3, [r7, #184]
	adds	r2, r3, #1
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	adds	r1, r2, r3
	ldr	r2, [r7, #180]
	ldr	r3, [r7, #184]
	subs	r2, r2, r3
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, r3
	bl	memmove(PLT)
	ldr	r2, [r7, #180]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	mov	r4, r3
	add	r5, r7, #32
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
.L428:
	b	.L429
.L420:
	ldr	r3, [r7, #184]
	adds	r3, r3, #1
	str	r3, [r7, #184]
.L419:
	ldr	r2, [r7, #184]
	ldr	r3, [r7, #248]
	cmp	r2, r3
	bcc	.L430
.L429:
.L418:
	movs	r3, #0
	str	r3, [r7, #176]
	ldr	r3, [r7]
	str	r3, [r7, #172]
	b	.L431
.L439:
	ldr	r2, [r7, #172]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	ldrb	r3, [r3, #18]	@ zero_extendqisi2
	mov	r2, r3
	movw	r3, #24696
	movt	r3, 32770
	asrs	r3, r3, r2
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L432
	ldr	r2, [r7, #172]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	ldr	r2, [r7, #176]
	uxtb	r2, r2
	strb	r2, [r3, #19]
	ldr	r2, [r7, #172]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	ldrb	r3, [r3, #18]	@ zero_extendqisi2
	cmp	r3, #4
	bne	.L433
	ldr	r2, [r7, #172]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	ldrb	r3, [r3, #19]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L433
	ldr	r3, [r7, #172]
	str	r3, [r7, #168]
	b	.L434
.L437:
	ldr	r2, [r7, #168]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	subs	r3, r3, #20
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	ldrb	r3, [r3, #19]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L435
	ldr	r2, [r7, #172]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	adds	r1, r2, r3
	ldr	r2, [r7, #168]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	subs	r3, r3, #20
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	ldrb	r3, [r3, #19]	@ zero_extendqisi2
	strb	r3, [r1, #19]
	b	.L436
.L435:
	ldr	r3, [r7, #168]
	subs	r3, r3, #1
	str	r3, [r7, #168]
.L434:
	ldr	r2, [r7, #168]
	ldr	r3, [r7]
	cmp	r2, r3
	bhi	.L437
.L436:
.L433:
	b	.L438
.L432:
	ldr	r2, [r7, #172]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	ldrb	r3, [r3, #19]	@ zero_extendqisi2
	cmp	r3, #14
	beq	.L438
	ldr	r2, [r7, #172]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	ldrb	r3, [r3, #19]	@ zero_extendqisi2
	str	r3, [r7, #176]
.L438:
	ldr	r3, [r7, #172]
	adds	r3, r3, #1
	str	r3, [r7, #172]
.L431:
	ldr	r2, [r7, #172]
	ldr	r3, [r7, #248]
	cmp	r2, r3
	bcc	.L439
	ldr	r3, [r7, #228]
	str	r3, [r7, #164]
	ldr	r3, [r7, #228]
	adds	r3, r3, #1
	str	r3, [r7, #160]
	b	.L440
.L446:
	ldr	r2, [r7, #160]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL12is_consonantRK15hb_glyph_info_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L441
	ldr	r3, [r7, #164]
	adds	r3, r3, #1
	str	r3, [r7, #156]
	b	.L442
.L444:
	ldr	r2, [r7, #156]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	ldrb	r3, [r3, #19]	@ zero_extendqisi2
	cmp	r3, #13
	bhi	.L443
	ldr	r2, [r7, #156]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	adds	r1, r2, r3
	ldr	r2, [r7, #160]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	ldrb	r3, [r3, #19]	@ zero_extendqisi2
	strb	r3, [r1, #19]
.L443:
	ldr	r3, [r7, #156]
	adds	r3, r3, #1
	str	r3, [r7, #156]
.L442:
	ldr	r2, [r7, #156]
	ldr	r3, [r7, #160]
	cmp	r2, r3
	bcc	.L444
	ldr	r3, [r7, #160]
	str	r3, [r7, #164]
	b	.L445
.L441:
	ldr	r2, [r7, #160]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	ldrb	r3, [r3, #18]	@ zero_extendqisi2
	cmp	r3, #7
	bne	.L445
	ldr	r3, [r7, #160]
	str	r3, [r7, #164]
.L445:
	ldr	r3, [r7, #160]
	adds	r3, r3, #1
	str	r3, [r7, #160]
.L440:
	ldr	r2, [r7, #160]
	ldr	r3, [r7, #248]
	cmp	r2, r3
	bcc	.L446
	ldr	r2, [r7]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	ldrb	r3, [r3, #15]	@ zero_extendqisi2
	str	r3, [r7, #84]
	ldr	r3, [r7]
	str	r3, [r7, #152]
	b	.L447
.L448:
	ldr	r2, [r7, #152]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	ldr	r2, [r7, #152]
	uxtb	r1, r2
	ldr	r2, [r7]
	uxtb	r2, r2
	subs	r2, r1, r2
	uxtb	r2, r2
	strb	r2, [r3, #15]
	ldr	r3, [r7, #152]
	adds	r3, r3, #1
	str	r3, [r7, #152]
.L447:
	ldr	r2, [r7, #152]
	ldr	r3, [r7, #248]
	cmp	r2, r3
	bcc	.L448
	ldr	r2, [r7]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r2, r2, r3
	ldr	r1, [r7, #248]
	ldr	r3, [r7]
	subs	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L500+36
.LPIC43:
	add	r3, pc
	mov	r2, r3
	bl	_Z14hb_bubble_sortI15hb_glyph_info_tEvPT_jPFiPKS1_S4_E(PLT)
	ldr	r3, [r7, #248]
	str	r3, [r7, #228]
	ldr	r3, [r7]
	str	r3, [r7, #148]
	b	.L449
.L452:
	ldr	r2, [r7, #148]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	ldrb	r3, [r3, #19]	@ zero_extendqisi2
	cmp	r3, #4
	bne	.L450
	ldr	r3, [r7, #148]
	str	r3, [r7, #228]
	b	.L451
.L450:
	ldr	r3, [r7, #148]
	adds	r3, r3, #1
	str	r3, [r7, #148]
.L449:
	ldr	r2, [r7, #148]
	ldr	r3, [r7, #248]
	cmp	r2, r3
	bcc	.L452
.L451:
	ldr	r3, [r7, #96]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L453
	ldr	r2, [r7, #248]
	ldr	r3, [r7, #228]
	subs	r3, r2, r3
	cmp	r3, #127
	bls	.L454
.L453:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #228]
	ldr	r2, [r7, #248]
	bl	_ZN11hb_buffer_t14merge_clustersEjj(PLT)
	b	.L455
.L454:
	ldr	r3, [r7, #228]
	str	r3, [r7, #144]
	b	.L456
.L461:
	ldr	r2, [r7, #144]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	ldrb	r3, [r3, #15]	@ zero_extendqisi2
	cmp	r3, #255
	beq	.L457
	ldr	r3, [r7, #144]
	str	r3, [r7, #28]
	ldr	r2, [r7, #144]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	ldrb	r3, [r3, #15]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7]
	add	r3, r3, r2
	str	r3, [r7, #24]
	b	.L458
.L459:
	add	r2, r7, #28
	add	r3, r7, #24
	mov	r0, r2
	mov	r1, r3
	bl	_Z3MAXIjET_RKS0_S2_(PLT)
	mov	r3, r0
	str	r3, [r7, #28]
	ldr	r2, [r7, #24]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	ldrb	r3, [r3, #15]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7]
	add	r3, r3, r2
	str	r3, [r7, #80]
	ldr	r2, [r7, #24]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	movs	r2, #255
	strb	r2, [r3, #15]
	ldr	r3, [r7, #80]
	str	r3, [r7, #24]
.L458:
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #144]
	cmp	r2, r3
	bne	.L459
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #144]
	cmp	r2, r3
	beq	.L460
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #144]
	mov	r2, r3
	bl	_ZN11hb_buffer_t14merge_clustersEjj(PLT)
.L460:
.L457:
	ldr	r3, [r7, #144]
	adds	r3, r3, #1
	str	r3, [r7, #144]
.L456:
	ldr	r2, [r7, #144]
	ldr	r3, [r7, #248]
	cmp	r2, r3
	bcc	.L461
.L455:
	ldr	r3, [r7]
	str	r3, [r7, #140]
	b	.L462
.L463:
	ldr	r2, [r7, #140]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	ldr	r2, [r7, #84]
	uxtb	r2, r2
	strb	r2, [r3, #15]
	ldr	r3, [r7, #140]
	adds	r3, r3, #1
	str	r3, [r7, #140]
.L462:
	ldr	r2, [r7, #140]
	ldr	r3, [r7, #248]
	cmp	r2, r3
	bcc	.L463
	ldr	r3, [r7]
	str	r3, [r7, #132]
	b	.L464
.L466:
	ldr	r2, [r7, #132]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	adds	r1, r2, r3
	ldr	r2, [r7, #132]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #96]
	ldr	r3, [r3, #68]
	orrs	r3, r3, r2
	str	r3, [r1, #4]
	ldr	r3, [r7, #132]
	adds	r3, r3, #1
	str	r3, [r7, #132]
.L464:
	ldr	r2, [r7, #132]
	ldr	r3, [r7, #248]
	cmp	r2, r3
	bcs	.L465
	ldr	r2, [r7, #132]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	ldrb	r3, [r3, #19]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L466
.L465:
	ldr	r3, [r7, #96]
	ldr	r3, [r3, #88]
	str	r3, [r7, #136]
	ldr	r3, [r7, #96]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L467
	ldr	r3, [r7, #96]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	bne	.L467
	ldr	r3, [r7, #96]
	ldr	r3, [r3, #80]
	ldr	r2, [r7, #136]
	orrs	r3, r3, r2
	str	r3, [r7, #136]
.L467:
	ldr	r3, [r7]
	str	r3, [r7, #128]
	b	.L468
.L469:
	ldr	r2, [r7, #128]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	adds	r1, r2, r3
	ldr	r2, [r7, #128]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #136]
	orrs	r3, r3, r2
	str	r3, [r1, #4]
	ldr	r3, [r7, #128]
	adds	r3, r3, #1
	str	r3, [r7, #128]
.L468:
	ldr	r2, [r7, #128]
	ldr	r3, [r7, #228]
	cmp	r2, r3
	bcc	.L469
	movs	r3, #0
	str	r3, [r7, #136]
	ldr	r2, [r7, #228]
	ldr	r3, [r7, #248]
	cmp	r2, r3
	bcs	.L470
	ldr	r2, [r7, #228]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	adds	r1, r2, r3
	ldr	r2, [r7, #228]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #136]
	orrs	r3, r3, r2
	str	r3, [r1, #4]
.L470:
	ldr	r3, [r7, #96]
	ldr	r2, [r3, #80]
	ldr	r3, [r7, #96]
	ldr	r3, [r3, #84]
	orrs	r2, r2, r3
	ldr	r3, [r7, #96]
	ldr	r3, [r3, #92]
	orrs	r3, r3, r2
	str	r3, [r7, #136]
	ldr	r3, [r7, #228]
	adds	r3, r3, #1
	str	r3, [r7, #124]
	b	.L471
.L472:
	ldr	r2, [r7, #124]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	adds	r1, r2, r3
	ldr	r2, [r7, #124]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #136]
	orrs	r3, r3, r2
	str	r3, [r1, #4]
	ldr	r3, [r7, #124]
	adds	r3, r3, #1
	str	r3, [r7, #124]
.L471:
	ldr	r2, [r7, #124]
	ldr	r3, [r7, #248]
	cmp	r2, r3
	bcc	.L472
	ldr	r3, [r7, #96]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L473
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #64]
	movw	r3, #30305
	movt	r3, 17509
	cmp	r2, r3
	bne	.L473
	ldr	r3, [r7]
	str	r3, [r7, #120]
	b	.L474
.L477:
	ldr	r2, [r7, #120]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	ldrb	r3, [r3, #18]	@ zero_extendqisi2
	cmp	r3, #16
	bne	.L475
	ldr	r3, [r7, #120]
	adds	r2, r3, #1
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	ldrb	r3, [r3, #18]	@ zero_extendqisi2
	cmp	r3, #4
	bne	.L475
	ldr	r3, [r7, #120]
	adds	r2, r3, #2
	ldr	r3, [r7, #228]
	cmp	r2, r3
	beq	.L476
	ldr	r2, [r7, #120]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #40
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	ldrb	r3, [r3, #18]	@ zero_extendqisi2
	cmp	r3, #6
	beq	.L475
.L476:
	ldr	r2, [r7, #120]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	adds	r1, r2, r3
	ldr	r2, [r7, #120]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #96]
	ldr	r3, [r3, #80]
	orrs	r3, r3, r2
	str	r3, [r1, #4]
	ldr	r3, [r7, #120]
	adds	r2, r3, #1
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	adds	r1, r2, r3
	ldr	r3, [r7, #120]
	adds	r2, r3, #1
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #96]
	ldr	r3, [r3, #80]
	orrs	r3, r3, r2
	str	r3, [r1, #4]
.L475:
	ldr	r3, [r7, #120]
	adds	r3, r3, #1
	str	r3, [r7, #120]
.L474:
	ldr	r3, [r7, #120]
	adds	r2, r3, #1
	ldr	r3, [r7, #228]
	cmp	r2, r3
	bcc	.L477
.L473:
	ldr	r3, [r7, #96]
	ldr	r3, [r3]
	ldr	r3, [r3, #28]
	str	r3, [r7, #76]
	ldr	r3, [r7, #96]
	ldr	r3, [r3, #76]
	cmp	r3, #0
	beq	.L478
	ldr	r2, [r7, #228]
	ldr	r3, [r7, #76]
	add	r2, r2, r3
	ldr	r3, [r7, #248]
	cmp	r2, r3
	bcs	.L478
	ldr	r3, [r7, #76]
	cmp	r3, #0
	beq	.L479
	ldr	r3, [r7, #76]
	cmp	r3, #2
	bls	.L480
.L479:
	ldr	r3, .L500+40
.LPIC44:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L500+44
.LPIC45:
	add	r3, pc
	mov	r1, r3
	movw	r2, #1117
	ldr	r3, .L500+48
.LPIC46:
	add	r3, pc
	bl	__assert_fail(PLT)
.L480:
	ldr	r3, [r7, #228]
	adds	r3, r3, #1
	str	r3, [r7, #116]
	b	.L481
.L492:
	movs	r3, #0
	str	r3, [r7, #112]
	b	.L482
.L483:
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #112]
	add	r2, r2, r3
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #112]
	lsls	r3, r3, #2
	add	r1, r7, #232
	add	r3, r3, r1
	str	r2, [r3, #-216]
	ldr	r3, [r7, #112]
	adds	r3, r3, #1
	str	r3, [r7, #112]
.L482:
	ldr	r2, [r7, #112]
	ldr	r3, [r7, #76]
	cmp	r2, r3
	bcc	.L483
	ldr	r3, [r7, #96]
	add	r2, r3, #24
	add	r3, r7, #16
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #8]
	bl	_ZNK26would_substitute_feature_t16would_substituteEPKjjP9hb_face_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L484
	movs	r3, #0
	str	r3, [r7, #108]
	b	.L485
.L486:
	ldr	r3, [r7, #116]
	adds	r2, r3, #1
	str	r2, [r7, #116]
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r1, [r7, #92]
	add	r1, r1, r3
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #96]
	ldr	r3, [r3, #76]
	orrs	r3, r3, r2
	str	r3, [r1, #4]
	ldr	r3, [r7, #108]
	adds	r3, r3, #1
	str	r3, [r7, #108]
.L485:
	ldr	r2, [r7, #108]
	ldr	r3, [r7, #76]
	cmp	r2, r3
	bcc	.L486
	ldr	r3, [r7, #96]
	ldr	r3, [r3, #104]
	cmp	r3, #0
	beq	.L487
	b	.L488
.L489:
	ldr	r2, [r7, #116]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	adds	r1, r2, r3
	ldr	r2, [r7, #116]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #96]
	ldr	r3, [r3, #104]
	orrs	r3, r3, r2
	str	r3, [r1, #4]
	ldr	r3, [r7, #116]
	adds	r3, r3, #1
	str	r3, [r7, #116]
.L488:
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #248]
	cmp	r2, r3
	bcc	.L489
.L487:
	nop
	b	.L478
.L484:
	ldr	r3, [r7, #116]
	adds	r3, r3, #1
	str	r3, [r7, #116]
.L481:
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #76]
	add	r3, r3, r2
	subs	r2, r3, #1
	ldr	r3, [r7, #248]
	cmp	r2, r3
	bcc	.L492
.L478:
	ldr	r3, [r7]
	adds	r3, r3, #1
	str	r3, [r7, #104]
	b	.L493
.L501:
	.align	2
.L500:
	.word	.LC4-(.LPIC34+4)
	.word	.LC5-(.LPIC35+4)
	.word	_ZZL37initial_reordering_consonant_syllablePK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjjE19__PRETTY_FUNCTION__-(.LPIC36+4)
	.word	.LC6-(.LPIC37+4)
	.word	.LC5-(.LPIC38+4)
	.word	_ZZL37initial_reordering_consonant_syllablePK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjjE19__PRETTY_FUNCTION__-(.LPIC39+4)
	.word	.LC7-(.LPIC40+4)
	.word	.LC5-(.LPIC41+4)
	.word	_ZZL37initial_reordering_consonant_syllablePK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjjE19__PRETTY_FUNCTION__-(.LPIC42+4)
	.word	_ZL19compare_indic_orderPK15hb_glyph_info_tS1_-(.LPIC43+4)
	.word	.LC8-(.LPIC44+4)
	.word	.LC5-(.LPIC45+4)
	.word	_ZZL37initial_reordering_consonant_syllablePK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjjE19__PRETTY_FUNCTION__-(.LPIC46+4)
.L499:
	ldr	r2, [r7, #104]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL9is_joinerRK15hb_glyph_info_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L494
	ldr	r2, [r7, #104]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	ldrb	r3, [r3, #18]	@ zero_extendqisi2
	cmp	r3, #5
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	strb	r3, [r7, #75]
	ldr	r3, [r7, #104]
	str	r3, [r7, #100]
.L498:
	ldr	r3, [r7, #100]
	subs	r3, r3, #1
	str	r3, [r7, #100]
	ldrb	r3, [r7, #75]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L495
	ldr	r2, [r7, #100]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	adds	r1, r2, r3
	ldr	r2, [r7, #100]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #96]
	ldr	r3, [r3, #88]
	mvns	r3, r3
	ands	r3, r3, r2
	str	r3, [r1, #4]
.L495:
	ldr	r2, [r7, #100]
	ldr	r3, [r7]
	cmp	r2, r3
	bls	.L496
	ldr	r2, [r7, #100]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL12is_consonantRK15hb_glyph_info_t(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L496
	movs	r3, #1
	b	.L497
.L496:
	movs	r3, #0
.L497:
	cmp	r3, #0
	bne	.L498
.L494:
	ldr	r3, [r7, #104]
	adds	r3, r3, #1
	str	r3, [r7, #104]
.L493:
	ldr	r2, [r7, #104]
	ldr	r3, [r7, #248]
	cmp	r2, r3
	bcc	.L499
	adds	r7, r7, #232
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.fnend
	.size	_ZL37initial_reordering_consonant_syllablePK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj, .-_ZL37initial_reordering_consonant_syllablePK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj
	.section	.text._ZL33initial_reordering_vowel_syllablePK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL33initial_reordering_vowel_syllablePK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj, %function
_ZL33initial_reordering_vowel_syllablePK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj:
	.fnstart
.LFB280:
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
	.size	_ZL33initial_reordering_vowel_syllablePK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj, .-_ZL33initial_reordering_vowel_syllablePK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj
	.section	.text._ZL37initial_reordering_standalone_clusterPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL37initial_reordering_standalone_clusterPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj, %function
_ZL37initial_reordering_standalone_clusterPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj:
	.fnstart
.LFB281:
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
	bl	_ZL10hb_optionsv(PLT)
	mov	r3, r0
	ubfx	r3, r3, #1, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L504
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #100]
	ldr	r2, [r7, #24]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	subs	r3, r3, #20
	add	r3, r3, r1
	ldrb	r3, [r3, #18]	@ zero_extendqisi2
	cmp	r3, #12
	bne	.L504
	b	.L503
.L504:
	ldr	r3, [r7, #24]
	str	r3, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	_ZL37initial_reordering_consonant_syllablePK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj(PLT)
.L503:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL37initial_reordering_standalone_clusterPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj, .-_ZL37initial_reordering_standalone_clusterPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj
	.section	.text._ZL33initial_reordering_broken_clusterPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL33initial_reordering_broken_clusterPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj, %function
_ZL33initial_reordering_broken_clusterPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj:
	.fnstart
.LFB282:
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
	bl	_ZL37initial_reordering_standalone_clusterPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL33initial_reordering_broken_clusterPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj, .-_ZL33initial_reordering_broken_clusterPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj
	.section	.text._ZL33initial_reordering_symbol_clusterPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL33initial_reordering_symbol_clusterPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj, %function
_ZL33initial_reordering_symbol_clusterPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj:
	.fnstart
.LFB283:
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
	.size	_ZL33initial_reordering_symbol_clusterPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj, .-_ZL33initial_reordering_symbol_clusterPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj
	.section	.text._ZL36initial_reordering_non_indic_clusterPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL36initial_reordering_non_indic_clusterPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj, %function
_ZL36initial_reordering_non_indic_clusterPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj:
	.fnstart
.LFB284:
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
	.size	_ZL36initial_reordering_non_indic_clusterPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj, .-_ZL36initial_reordering_non_indic_clusterPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj
	.section	.text._ZL27initial_reordering_syllablePK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL27initial_reordering_syllablePK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj, %function
_ZL27initial_reordering_syllablePK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj:
	.fnstart
.LFB285:
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
	cmp	r3, #5
	bhi	.L509
	adr	r1, .L512
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L512:
	.word	.L511+1-.L512
	.word	.L513+1-.L512
	.word	.L514+1-.L512
	.word	.L515+1-.L512
	.word	.L516+1-.L512
	.word	.L517+1-.L512
.L511:
	ldr	r3, [r7, #32]
	str	r3, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	_ZL37initial_reordering_consonant_syllablePK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj(PLT)
	b	.L509
.L513:
	ldr	r3, [r7, #32]
	str	r3, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	_ZL33initial_reordering_vowel_syllablePK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj(PLT)
	b	.L509
.L514:
	ldr	r3, [r7, #32]
	str	r3, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	_ZL37initial_reordering_standalone_clusterPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj(PLT)
	b	.L509
.L515:
	ldr	r3, [r7, #32]
	str	r3, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	_ZL33initial_reordering_symbol_clusterPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj(PLT)
	b	.L509
.L516:
	ldr	r3, [r7, #32]
	str	r3, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	_ZL33initial_reordering_broken_clusterPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj(PLT)
	b	.L509
.L517:
	ldr	r3, [r7, #32]
	str	r3, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	_ZL36initial_reordering_non_indic_clusterPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj(PLT)
	nop
.L509:
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
.LFB286:
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
	b	.L519
.L522:
	ldr	r2, [r7, #80]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	ldrb	r3, [r3, #15]	@ zero_extendqisi2
	and	r3, r3, #15
	cmp	r3, #4
	bne	.L520
	movs	r3, #1
	strb	r3, [r7, #87]
	b	.L521
.L520:
	ldr	r3, [r7, #80]
	adds	r3, r3, #1
	str	r3, [r7, #80]
.L519:
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #72]
	cmp	r2, r3
	bcc	.L522
.L521:
	ldrb	r3, [r7, #87]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L523
	b	.L518
.L523:
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
	beq	.L525
	b	.L518
.L525:
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
	bl	_ZL20set_indic_propertiesR15hb_glyph_info_t(PLT)
	ldr	r3, [r7, #56]
	str	r3, [r7, #36]
	ldr	r0, [r7, #4]
	bl	_ZN11hb_buffer_t12clear_outputEv(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #84]
	movs	r3, #0
	str	r3, [r7, #76]
	b	.L526
.L532:
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
	beq	.L527
	ldr	r3, [r7, #60]
	cmp	r3, #4
	bne	.L527
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
	b	.L528
.L531:
	ldr	r0, [r7, #4]
	bl	_ZN11hb_buffer_t10next_glyphEv(PLT)
.L528:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #84]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	cmp	r2, r3
	bcs	.L529
	ldr	r0, [r7, #4]
	movs	r1, #0
	bl	_ZN11hb_buffer_t3curEj(PLT)
	mov	r3, r0
	ldrb	r3, [r3, #15]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #76]
	cmp	r2, r3
	bne	.L529
	ldr	r0, [r7, #4]
	movs	r1, #0
	bl	_ZN11hb_buffer_t3curEj(PLT)
	mov	r3, r0
	ldrb	r3, [r3, #18]	@ zero_extendqisi2
	cmp	r3, #15
	bne	.L529
	movs	r3, #1
	b	.L530
.L529:
	movs	r3, #0
.L530:
	cmp	r3, #0
	bne	.L531
	add	r3, r7, #16
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN11hb_buffer_t11output_infoERK15hb_glyph_info_t(PLT)
	b	.L526
.L527:
	ldr	r0, [r7, #4]
	bl	_ZN11hb_buffer_t10next_glyphEv(PLT)
.L526:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #84]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	cmp	r2, r3
	bcc	.L532
	ldr	r0, [r7, #4]
	bl	_ZN11hb_buffer_t12swap_buffersEv(PLT)
.L518:
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
.LFB287:
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
	bl	_ZL26update_consonant_positionsPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t(PLT)
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
	bne	.L535
	b	.L534
.L535:
	movs	r3, #0
	str	r3, [r7, #36]
	ldr	r3, [r7, #24]
	ldrb	r3, [r3, #15]	@ zero_extendqisi2
	str	r3, [r7, #32]
	movs	r3, #1
	str	r3, [r7, #28]
	b	.L537
.L539:
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
	beq	.L538
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
.L538:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L537:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcc	.L539
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #52]
	ldr	r2, [r7, #20]
	str	r2, [sp]
	ldr	r0, [r7, #12]
	mov	r1, r3
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #36]
	bl	_ZL27initial_reordering_syllablePK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj(PLT)
.L534:
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL18initial_reorderingPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t, .-_ZL18initial_reorderingPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t
	.section	.rodata
	.align	2
.LC9:
	.ascii	"reph_pos != REPH_POS_DONT_CARE\000"
	.section	.text._ZL25final_reordering_syllablePK18hb_ot_shape_plan_tP11hb_buffer_tjj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL25final_reordering_syllablePK18hb_ot_shape_plan_tP11hb_buffer_tjj, %function
_ZL25final_reordering_syllablePK18hb_ot_shape_plan_tP11hb_buffer_tjj:
	.fnstart
.LFB288:
	@ args = 0, pretend = 0, frame = 168
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #168
	sub	sp, sp, #168
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #964]
	str	r3, [r7, #116]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #100]
	str	r3, [r7, #112]
	ldr	r3, [r7, #116]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L541
	ldr	r3, [r7, #116]
	ldr	r3, [r3, #8]
	str	r3, [r7, #108]
	ldr	r3, [r7, #4]
	str	r3, [r7, #164]
	b	.L542
.L546:
	ldr	r2, [r7, #164]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #112]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #108]
	cmp	r2, r3
	bne	.L543
	ldr	r2, [r7, #164]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #112]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL22_hb_glyph_info_ligatedPK15hb_glyph_info_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L543
	ldr	r2, [r7, #164]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #112]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL25_hb_glyph_info_multipliedPK15hb_glyph_info_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L543
	movs	r3, #1
	b	.L544
.L543:
	movs	r3, #0
.L544:
	cmp	r3, #0
	beq	.L545
	ldr	r2, [r7, #164]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #112]
	add	r3, r3, r2
	movs	r2, #4
	strb	r2, [r3, #18]
	ldr	r2, [r7, #164]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #112]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL43_hb_glyph_info_clear_ligated_and_multipliedP15hb_glyph_info_t(PLT)
.L545:
	ldr	r3, [r7, #164]
	adds	r3, r3, #1
	str	r3, [r7, #164]
.L542:
	ldr	r3, [r7]
	ldr	r2, [r7, #164]
	cmp	r2, r3
	bcc	.L546
.L541:
	ldr	r3, [r7, #116]
	ldr	r3, [r3, #76]
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	strb	r3, [r7, #163]
	ldr	r3, [r7, #4]
	str	r3, [r7, #156]
	b	.L547
.L564:
	ldr	r2, [r7, #156]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #112]
	add	r3, r3, r2
	ldrb	r3, [r3, #19]	@ zero_extendqisi2
	cmp	r3, #3
	bls	.L548
	ldrb	r3, [r7, #163]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L549
	ldr	r3, [r7, #156]
	adds	r2, r3, #1
	ldr	r3, [r7]
	cmp	r2, r3
	bcs	.L549
	ldr	r3, [r7, #116]
	ldr	r3, [r3]
	ldr	r3, [r3, #28]
	cmp	r3, #2
	bne	.L549
	ldr	r3, [r7, #156]
	adds	r3, r3, #1
	str	r3, [r7, #152]
	b	.L550
.L561:
	ldr	r2, [r7, #152]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #112]
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #116]
	ldr	r3, [r3, #76]
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L551
	ldr	r2, [r7, #152]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #112]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL26_hb_glyph_info_substitutedPK15hb_glyph_info_t(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L552
	ldr	r2, [r7, #152]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #112]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL41_hb_glyph_info_ligated_and_didnt_multiplyPK15hb_glyph_info_t(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L553
.L552:
	movs	r3, #1
	b	.L554
.L553:
	movs	r3, #0
.L554:
	cmp	r3, #0
	beq	.L555
	ldr	r3, [r7, #152]
	str	r3, [r7, #156]
	b	.L556
.L559:
	ldr	r3, [r7, #156]
	adds	r3, r3, #1
	str	r3, [r7, #156]
.L556:
	ldr	r3, [r7]
	ldr	r2, [r7, #156]
	cmp	r2, r3
	bcs	.L557
	ldr	r2, [r7, #156]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #112]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL18is_halant_or_coengRK15hb_glyph_info_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L557
	movs	r3, #1
	b	.L558
.L557:
	movs	r3, #0
.L558:
	cmp	r3, #0
	bne	.L559
	ldr	r2, [r7, #156]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #112]
	add	r3, r3, r2
	movs	r2, #4
	strb	r2, [r3, #19]
	movs	r3, #0
	strb	r3, [r7, #163]
.L555:
	b	.L560
.L551:
	ldr	r3, [r7, #152]
	adds	r3, r3, #1
	str	r3, [r7, #152]
.L550:
	ldr	r3, [r7]
	ldr	r2, [r7, #152]
	cmp	r2, r3
	bcc	.L561
.L560:
.L549:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #156]
	cmp	r2, r3
	bcs	.L562
	ldr	r2, [r7, #156]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #112]
	add	r3, r3, r2
	ldrb	r3, [r3, #19]	@ zero_extendqisi2
	cmp	r3, #4
	bls	.L562
	ldr	r3, [r7, #156]
	subs	r3, r3, #1
	str	r3, [r7, #156]
.L562:
	b	.L563
.L548:
	ldr	r3, [r7, #156]
	adds	r3, r3, #1
	str	r3, [r7, #156]
.L547:
	ldr	r3, [r7]
	ldr	r2, [r7, #156]
	cmp	r2, r3
	bcc	.L564
.L563:
	ldr	r3, [r7]
	ldr	r2, [r7, #156]
	cmp	r2, r3
	bne	.L565
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #156]
	cmp	r2, r3
	bcs	.L565
	ldr	r2, [r7, #156]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	subs	r3, r3, #20
	ldr	r2, [r7, #112]
	add	r3, r3, r2
	mov	r0, r3
	movs	r1, #64
	bl	_ZL9is_one_ofRK15hb_glyph_info_tj(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L565
	movs	r3, #1
	b	.L566
.L565:
	movs	r3, #0
.L566:
	cmp	r3, #0
	beq	.L567
	ldr	r3, [r7, #156]
	subs	r3, r3, #1
	str	r3, [r7, #156]
.L567:
	ldr	r3, [r7]
	ldr	r2, [r7, #156]
	cmp	r2, r3
	bcs	.L568
	b	.L569
.L572:
	ldr	r3, [r7, #156]
	subs	r3, r3, #1
	str	r3, [r7, #156]
.L569:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #156]
	cmp	r2, r3
	bcs	.L570
	ldr	r2, [r7, #156]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #112]
	add	r3, r3, r2
	mov	r0, r3
	movw	r1, #16408
	bl	_ZL9is_one_ofRK15hb_glyph_info_tj(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L570
	movs	r3, #1
	b	.L571
.L570:
	movs	r3, #0
.L571:
	cmp	r3, #0
	bne	.L572
.L568:
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	ldr	r3, [r7]
	cmp	r2, r3
	bcs	.L573
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #156]
	cmp	r2, r3
	bcs	.L573
	ldr	r3, [r7]
	ldr	r2, [r7, #156]
	cmp	r2, r3
	bne	.L574
	ldr	r3, [r7, #156]
	subs	r3, r3, #2
	b	.L575
.L574:
	ldr	r3, [r7, #156]
	subs	r3, r3, #1
.L575:
	str	r3, [r7, #148]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #64]
	movw	r3, #31085
	movt	r3, 19820
	cmp	r2, r3
	beq	.L576
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #64]
	movw	r3, #28012
	movt	r3, 21601
	cmp	r2, r3
	beq	.L576
	b	.L577
.L580:
	ldr	r3, [r7, #148]
	subs	r3, r3, #1
	str	r3, [r7, #148]
.L577:
	ldr	r2, [r7, #148]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L578
	ldr	r2, [r7, #148]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #112]
	add	r3, r3, r2
	mov	r0, r3
	movw	r1, #16528
	bl	_ZL9is_one_ofRK15hb_glyph_info_tj(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L578
	movs	r3, #1
	b	.L579
.L578:
	movs	r3, #0
.L579:
	cmp	r3, #0
	bne	.L580
	ldr	r2, [r7, #148]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #112]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL18is_halant_or_coengRK15hb_glyph_info_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L581
	ldr	r2, [r7, #148]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #112]
	add	r3, r3, r2
	ldrb	r3, [r3, #19]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L581
	movs	r3, #1
	b	.L582
.L581:
	movs	r3, #0
.L582:
	cmp	r3, #0
	beq	.L583
	ldr	r3, [r7, #148]
	adds	r2, r3, #1
	ldr	r3, [r7]
	cmp	r2, r3
	bcs	.L584
	ldr	r3, [r7, #148]
	adds	r2, r3, #1
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #112]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL9is_joinerRK15hb_glyph_info_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L584
	movs	r3, #1
	b	.L585
.L584:
	movs	r3, #0
.L585:
	cmp	r3, #0
	beq	.L576
	ldr	r3, [r7, #148]
	adds	r3, r3, #1
	str	r3, [r7, #148]
	b	.L576
.L583:
	ldr	r3, [r7, #4]
	str	r3, [r7, #148]
.L576:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #148]
	cmp	r2, r3
	bcs	.L587
	ldr	r2, [r7, #148]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #112]
	add	r3, r3, r2
	ldrb	r3, [r3, #19]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L587
	ldr	r3, [r7, #148]
	str	r3, [r7, #144]
	b	.L588
.L591:
	ldr	r2, [r7, #144]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	subs	r3, r3, #20
	ldr	r2, [r7, #112]
	add	r3, r3, r2
	ldrb	r3, [r3, #19]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L589
	ldr	r3, [r7, #144]
	subs	r3, r3, #1
	str	r3, [r7, #104]
	ldr	r2, [r7, #104]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #112]
	add	r3, r3, r2
	add	r4, r7, #60
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r2, [r7, #104]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #112]
	adds	r0, r2, r3
	ldr	r3, [r7, #104]
	adds	r2, r3, #1
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #112]
	adds	r1, r2, r3
	ldr	r2, [r7, #148]
	ldr	r3, [r7, #104]
	subs	r2, r2, r3
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, r3
	bl	memmove(PLT)
	ldr	r2, [r7, #148]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #112]
	add	r3, r3, r2
	mov	r4, r3
	add	r5, r7, #60
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r2, [r7, #104]
	ldr	r3, [r7, #156]
	cmp	r2, r3
	bcs	.L590
	ldr	r2, [r7, #156]
	ldr	r3, [r7, #148]
	cmp	r2, r3
	bhi	.L590
	ldr	r3, [r7, #156]
	subs	r3, r3, #1
	str	r3, [r7, #156]
.L590:
	ldr	r3, [r7, #156]
	adds	r3, r3, #1
	str	r3, [r7, #80]
	mov	r2, r7
	add	r3, r7, #80
	mov	r0, r2
	mov	r1, r3
	bl	_Z3MINIjET_RKS0_S2_(PLT)
	mov	r3, r0
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #148]
	mov	r2, r3
	bl	_ZN11hb_buffer_t14merge_clustersEjj(PLT)
	ldr	r3, [r7, #148]
	subs	r3, r3, #1
	str	r3, [r7, #148]
.L589:
	ldr	r3, [r7, #144]
	subs	r3, r3, #1
	str	r3, [r7, #144]
.L588:
	ldr	r2, [r7, #144]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bhi	.L591
	b	.L592
.L587:
	ldr	r3, [r7, #4]
	str	r3, [r7, #140]
	b	.L593
.L595:
	ldr	r2, [r7, #140]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #112]
	add	r3, r3, r2
	ldrb	r3, [r3, #19]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L594
	ldr	r3, [r7, #156]
	adds	r3, r3, #1
	str	r3, [r7, #84]
	mov	r2, r7
	add	r3, r7, #84
	mov	r0, r2
	mov	r1, r3
	bl	_Z3MINIjET_RKS0_S2_(PLT)
	mov	r3, r0
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #140]
	mov	r2, r3
	bl	_ZN11hb_buffer_t14merge_clustersEjj(PLT)
	b	.L592
.L594:
	ldr	r3, [r7, #140]
	adds	r3, r3, #1
	str	r3, [r7, #140]
.L593:
	ldr	r2, [r7, #140]
	ldr	r3, [r7, #156]
	cmp	r2, r3
	bcc	.L595
.L592:
.L573:
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	ldr	r3, [r7]
	cmp	r2, r3
	bcs	.L596
	ldr	r2, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #112]
	add	r3, r3, r2
	ldrb	r3, [r3, #19]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L596
	ldr	r2, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #112]
	add	r3, r3, r2
	ldrb	r3, [r3, #18]	@ zero_extendqisi2
	cmp	r3, #15
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	mov	r4, r3
	ldr	r2, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #112]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL41_hb_glyph_info_ligated_and_didnt_multiplyPK15hb_glyph_info_t(PLT)
	mov	r3, r0
	cmp	r4, r3
	beq	.L596
	movs	r3, #1
	b	.L597
.L596:
	movs	r3, #0
.L597:
	cmp	r3, #0
	beq	.L598
	ldr	r3, [r7, #116]
	ldr	r3, [r3]
	ldr	r3, [r3, #16]
	str	r3, [r7, #100]
	ldr	r3, [r7, #100]
	cmp	r3, #1
	bne	.L599
	ldr	r3, .L673
.LPIC47:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L673+4
.LPIC48:
	add	r3, pc
	mov	r1, r3
	movw	r2, #1495
	ldr	r3, .L673+8
.LPIC49:
	add	r3, pc
	bl	__assert_fail(PLT)
.L599:
	ldr	r3, [r7, #100]
	cmp	r3, #12
	bne	.L600
	b	.L601
.L600:
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #136]
	b	.L602
.L605:
	ldr	r3, [r7, #136]
	adds	r3, r3, #1
	str	r3, [r7, #136]
.L602:
	ldr	r2, [r7, #136]
	ldr	r3, [r7, #156]
	cmp	r2, r3
	bcs	.L603
	ldr	r2, [r7, #136]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #112]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL18is_halant_or_coengRK15hb_glyph_info_t(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L603
	movs	r3, #1
	b	.L604
.L603:
	movs	r3, #0
.L604:
	cmp	r3, #0
	bne	.L605
	ldr	r2, [r7, #136]
	ldr	r3, [r7, #156]
	cmp	r2, r3
	bcs	.L606
	ldr	r2, [r7, #136]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #112]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL18is_halant_or_coengRK15hb_glyph_info_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L606
	movs	r3, #1
	b	.L607
.L606:
	movs	r3, #0
.L607:
	cmp	r3, #0
	beq	.L608
	ldr	r3, [r7, #136]
	adds	r2, r3, #1
	ldr	r3, [r7, #156]
	cmp	r2, r3
	bcs	.L609
	ldr	r3, [r7, #136]
	adds	r2, r3, #1
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #112]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL9is_joinerRK15hb_glyph_info_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L609
	movs	r3, #1
	b	.L610
.L609:
	movs	r3, #0
.L610:
	cmp	r3, #0
	beq	.L611
	ldr	r3, [r7, #136]
	adds	r3, r3, #1
	str	r3, [r7, #136]
.L611:
	b	.L612
.L608:
	ldr	r3, [r7, #100]
	cmp	r3, #5
	bne	.L613
	ldr	r3, [r7, #156]
	str	r3, [r7, #136]
	b	.L614
.L616:
	ldr	r3, [r7, #136]
	adds	r3, r3, #1
	str	r3, [r7, #136]
.L614:
	ldr	r3, [r7, #136]
	adds	r2, r3, #1
	ldr	r3, [r7]
	cmp	r2, r3
	bcs	.L615
	ldr	r3, [r7, #136]
	adds	r2, r3, #1
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #112]
	add	r3, r3, r2
	ldrb	r3, [r3, #19]	@ zero_extendqisi2
	cmp	r3, #5
	bls	.L616
.L615:
	ldr	r3, [r7]
	ldr	r2, [r7, #136]
	cmp	r2, r3
	bcs	.L613
	b	.L612
.L613:
	ldr	r3, [r7, #100]
	cmp	r3, #9
	bne	.L601
	ldr	r3, [r7, #156]
	str	r3, [r7, #136]
	b	.L617
.L619:
	ldr	r3, [r7, #136]
	adds	r3, r3, #1
	str	r3, [r7, #136]
.L617:
	ldr	r3, [r7]
	ldr	r2, [r7, #136]
	cmp	r2, r3
	bcs	.L618
	ldr	r3, [r7, #136]
	adds	r2, r3, #1
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #112]
	add	r3, r3, r2
	ldrb	r3, [r3, #19]	@ zero_extendqisi2
	mov	r2, #22528
	asr	r3, r2, r3
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L619
.L618:
	ldr	r3, [r7]
	ldr	r2, [r7, #136]
	cmp	r2, r3
	bcs	.L601
	b	.L612
.L601:
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #136]
	b	.L620
.L623:
	ldr	r3, [r7, #136]
	adds	r3, r3, #1
	str	r3, [r7, #136]
.L620:
	ldr	r2, [r7, #136]
	ldr	r3, [r7, #156]
	cmp	r2, r3
	bcs	.L621
	ldr	r2, [r7, #136]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #112]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL18is_halant_or_coengRK15hb_glyph_info_t(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L621
	movs	r3, #1
	b	.L622
.L621:
	movs	r3, #0
.L622:
	cmp	r3, #0
	bne	.L623
	ldr	r2, [r7, #136]
	ldr	r3, [r7, #156]
	cmp	r2, r3
	bcs	.L624
	ldr	r2, [r7, #136]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #112]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL18is_halant_or_coengRK15hb_glyph_info_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L624
	movs	r3, #1
	b	.L625
.L624:
	movs	r3, #0
.L625:
	cmp	r3, #0
	beq	.L626
	ldr	r3, [r7, #136]
	adds	r2, r3, #1
	ldr	r3, [r7, #156]
	cmp	r2, r3
	bcs	.L627
	ldr	r3, [r7, #136]
	adds	r2, r3, #1
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #112]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL9is_joinerRK15hb_glyph_info_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L627
	movs	r3, #1
	b	.L628
.L627:
	movs	r3, #0
.L628:
	cmp	r3, #0
	beq	.L629
	ldr	r3, [r7, #136]
	adds	r3, r3, #1
	str	r3, [r7, #136]
.L629:
	b	.L612
.L626:
	ldr	r3, [r7]
	subs	r3, r3, #1
	str	r3, [r7, #136]
	b	.L630
.L632:
	ldr	r3, [r7, #136]
	subs	r3, r3, #1
	str	r3, [r7, #136]
.L630:
	ldr	r2, [r7, #136]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L631
	ldr	r2, [r7, #136]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #112]
	add	r3, r3, r2
	ldrb	r3, [r3, #19]	@ zero_extendqisi2
	cmp	r3, #14
	beq	.L632
.L631:
	bl	_ZL10hb_optionsv(PLT)
	mov	r3, r0
	ubfx	r3, r3, #1, #1
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L633
	ldr	r2, [r7, #136]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #112]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL18is_halant_or_coengRK15hb_glyph_info_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L633
	movs	r3, #1
	b	.L634
.L633:
	movs	r3, #0
.L634:
	cmp	r3, #0
	beq	.L635
	ldr	r3, [r7, #156]
	adds	r3, r3, #1
	str	r3, [r7, #132]
	b	.L636
.L638:
	ldr	r2, [r7, #132]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #112]
	add	r3, r3, r2
	ldrb	r3, [r3, #18]	@ zero_extendqisi2
	cmp	r3, #7
	bne	.L637
	ldr	r3, [r7, #136]
	subs	r3, r3, #1
	str	r3, [r7, #136]
.L637:
	ldr	r3, [r7, #132]
	adds	r3, r3, #1
	str	r3, [r7, #132]
.L636:
	ldr	r2, [r7, #132]
	ldr	r3, [r7, #136]
	cmp	r2, r3
	bcc	.L638
.L635:
	nop
.L612:
	ldr	r3, [r7, #136]
	adds	r3, r3, #1
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #4]
	mov	r2, r3
	bl	_ZN11hb_buffer_t14merge_clustersEjj(PLT)
	ldr	r2, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #112]
	add	r3, r3, r2
	add	r4, r7, #40
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r2, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #112]
	adds	r0, r2, r3
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #112]
	adds	r1, r2, r3
	ldr	r2, [r7, #136]
	ldr	r3, [r7, #4]
	subs	r2, r2, r3
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, r3
	bl	memmove(PLT)
	ldr	r2, [r7, #136]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #112]
	add	r3, r3, r2
	mov	r4, r3
	add	r5, r7, #40
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #156]
	cmp	r2, r3
	bcs	.L639
	ldr	r2, [r7, #156]
	ldr	r3, [r7, #136]
	cmp	r2, r3
	bhi	.L639
	ldr	r3, [r7, #156]
	subs	r3, r3, #1
	str	r3, [r7, #156]
.L639:
.L598:
	ldrb	r3, [r7, #163]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L640
	ldr	r3, [r7, #156]
	adds	r2, r3, #1
	ldr	r3, [r7]
	cmp	r2, r3
	bcs	.L640
	ldr	r3, [r7, #116]
	ldr	r3, [r3]
	ldr	r3, [r3, #28]
	str	r3, [r7, #96]
	ldr	r3, [r7, #156]
	adds	r3, r3, #1
	str	r3, [r7, #128]
	b	.L641
.L663:
	ldr	r2, [r7, #128]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #112]
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #116]
	ldr	r3, [r3, #76]
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L642
	ldr	r2, [r7, #128]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #112]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL26_hb_glyph_info_substitutedPK15hb_glyph_info_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L643
	ldr	r3, [r7, #96]
	cmp	r3, #1
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	mov	r4, r3
	ldr	r2, [r7, #128]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #112]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL41_hb_glyph_info_ligated_and_didnt_multiplyPK15hb_glyph_info_t(PLT)
	mov	r3, r0
	cmp	r4, r3
	beq	.L643
	movs	r3, #1
	b	.L644
.L643:
	movs	r3, #0
.L644:
	cmp	r3, #0
	beq	.L645
	ldr	r3, [r7, #156]
	str	r3, [r7, #124]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #64]
	movw	r3, #31085
	movt	r3, 19820
	cmp	r2, r3
	beq	.L646
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #64]
	movw	r3, #28012
	movt	r3, 21601
	cmp	r2, r3
	beq	.L646
	b	.L647
.L650:
	ldr	r3, [r7, #124]
	subs	r3, r3, #1
	str	r3, [r7, #124]
.L647:
	ldr	r2, [r7, #124]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L648
	ldr	r2, [r7, #124]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	subs	r3, r3, #20
	ldr	r2, [r7, #112]
	add	r3, r3, r2
	mov	r0, r3
	movw	r1, #16528
	bl	_ZL9is_one_ofRK15hb_glyph_info_tj(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L648
	movs	r3, #1
	b	.L649
.L648:
	movs	r3, #0
.L649:
	cmp	r3, #0
	bne	.L650
	ldr	r2, [r7, #124]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L651
	ldr	r2, [r7, #124]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	subs	r3, r3, #20
	ldr	r2, [r7, #112]
	add	r3, r3, r2
	ldrb	r3, [r3, #18]	@ zero_extendqisi2
	cmp	r3, #7
	bne	.L651
	ldr	r3, [r7, #128]
	str	r3, [r7, #92]
	ldr	r3, [r7, #156]
	adds	r3, r3, #1
	str	r3, [r7, #120]
	b	.L652
.L655:
	ldr	r2, [r7, #120]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #112]
	add	r3, r3, r2
	ldrb	r3, [r3, #18]	@ zero_extendqisi2
	cmp	r3, #7
	bne	.L653
	ldr	r3, [r7, #124]
	subs	r3, r3, #1
	str	r3, [r7, #124]
	b	.L654
.L653:
	ldr	r3, [r7, #120]
	adds	r3, r3, #1
	str	r3, [r7, #120]
.L652:
	ldr	r2, [r7, #120]
	ldr	r3, [r7, #92]
	cmp	r2, r3
	bcc	.L655
.L654:
.L651:
.L646:
	ldr	r2, [r7, #124]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L656
	ldr	r2, [r7, #124]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	subs	r3, r3, #20
	ldr	r2, [r7, #112]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL18is_halant_or_coengRK15hb_glyph_info_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L656
	movs	r3, #1
	b	.L657
.L656:
	movs	r3, #0
.L657:
	cmp	r3, #0
	beq	.L658
	ldr	r3, [r7]
	ldr	r2, [r7, #124]
	cmp	r2, r3
	bcs	.L659
	ldr	r2, [r7, #124]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #112]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL9is_joinerRK15hb_glyph_info_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L659
	movs	r3, #1
	b	.L660
.L659:
	movs	r3, #0
.L660:
	cmp	r3, #0
	beq	.L658
	ldr	r3, [r7, #124]
	adds	r3, r3, #1
	str	r3, [r7, #124]
.L658:
	ldr	r3, [r7, #128]
	str	r3, [r7, #88]
	ldr	r3, [r7, #88]
	adds	r3, r3, #1
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #124]
	mov	r2, r3
	bl	_ZN11hb_buffer_t14merge_clustersEjj(PLT)
	ldr	r2, [r7, #88]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #112]
	add	r3, r3, r2
	add	r4, r7, #20
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7, #124]
	adds	r2, r3, #1
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #112]
	adds	r0, r2, r3
	ldr	r2, [r7, #124]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #112]
	adds	r1, r2, r3
	ldr	r2, [r7, #88]
	ldr	r3, [r7, #124]
	subs	r2, r2, r3
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, r3
	bl	memmove(PLT)
	ldr	r2, [r7, #124]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #112]
	add	r3, r3, r2
	mov	r4, r3
	add	r5, r7, #20
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r2, [r7, #124]
	ldr	r3, [r7, #156]
	cmp	r2, r3
	bhi	.L661
	ldr	r2, [r7, #156]
	ldr	r3, [r7, #88]
	cmp	r2, r3
	bcs	.L661
	ldr	r3, [r7, #156]
	adds	r3, r3, #1
	str	r3, [r7, #156]
.L661:
.L645:
	b	.L662
.L642:
	ldr	r3, [r7, #128]
	adds	r3, r3, #1
	str	r3, [r7, #128]
.L641:
	ldr	r3, [r7]
	ldr	r2, [r7, #128]
	cmp	r2, r3
	bcc	.L663
.L662:
.L640:
	ldr	r2, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #112]
	add	r3, r3, r2
	ldrb	r3, [r3, #19]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L664
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L665
	ldr	r2, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	subs	r3, r3, #20
	ldr	r2, [r7, #112]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL35_hb_glyph_info_get_general_categoryPK15hb_glyph_info_t(PLT)
	mov	r3, r0
	movs	r2, #1
	lsl	r3, r2, r3
	mov	r2, r3
	movw	r3, #8190
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L664
.L665:
	movs	r3, #1
	b	.L666
.L664:
	movs	r3, #0
.L666:
	cmp	r3, #0
	beq	.L667
	ldr	r2, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #112]
	adds	r1, r2, r3
	ldr	r2, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #112]
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #116]
	ldr	r3, [r3, #108]
	orrs	r3, r3, r2
	str	r3, [r1, #4]
.L667:
	bl	_ZL10hb_optionsv(PLT)
	mov	r3, r0
	ubfx	r3, r3, #1, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L540
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	movw	r3, #28264
	movt	r3, 21353
	cmp	r2, r3
	beq	.L672
	movw	r3, #28012
	movt	r3, 21601
	cmp	r2, r3
	beq	.L672
	ldr	r3, [r7]
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #4]
	mov	r2, r3
	bl	_ZN11hb_buffer_t14merge_clustersEjj(PLT)
	b	.L671
.L672:
	nop
.L671:
.L540:
	adds	r7, r7, #168
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L674:
	.align	2
.L673:
	.word	.LC9-(.LPIC47+4)
	.word	.LC5-(.LPIC48+4)
	.word	_ZZL25final_reordering_syllablePK18hb_ot_shape_plan_tP11hb_buffer_tjjE19__PRETTY_FUNCTION__-(.LPIC49+4)
	.fnend
	.size	_ZL25final_reordering_syllablePK18hb_ot_shape_plan_tP11hb_buffer_tjj, .-_ZL25final_reordering_syllablePK18hb_ot_shape_plan_tP11hb_buffer_tjj
	.section	.text._ZL16final_reorderingPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL16final_reorderingPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t, %function
_ZL16final_reorderingPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t:
	.fnstart
.LFB289:
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
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L676
	b	.L675
.L676:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #36]
	ldr	r3, [r7, #20]
	ldrb	r3, [r3, #15]	@ zero_extendqisi2
	str	r3, [r7, #32]
	movs	r3, #1
	str	r3, [r7, #28]
	b	.L678
.L680:
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	ldrb	r3, [r3, #15]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #32]
	cmp	r2, r3
	beq	.L679
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #28]
	bl	_ZL25final_reordering_syllablePK18hb_ot_shape_plan_tP11hb_buffer_tjj(PLT)
	ldr	r3, [r7, #28]
	str	r3, [r7, #36]
	ldr	r2, [r7, #36]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	ldrb	r3, [r3, #15]	@ zero_extendqisi2
	str	r3, [r7, #32]
.L679:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L678:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bcc	.L680
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #24]
	bl	_ZL25final_reordering_syllablePK18hb_ot_shape_plan_tP11hb_buffer_tjj(PLT)
	ldr	r0, [r7, #4]
	movs	r1, #6
	movs	r2, #1
	ldr	r3, .L681
.LPIC50:
	add	r3, pc
	bl	_ZN11hb_buffer_t14deallocate_varEjjPKc(PLT)
	ldr	r0, [r7, #4]
	movs	r1, #7
	movs	r2, #1
	ldr	r3, .L681+4
.LPIC51:
	add	r3, pc
	bl	_ZN11hb_buffer_t14deallocate_varEjjPKc(PLT)
.L675:
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L682:
	.align	2
.L681:
	.word	.LC2-(.LPIC50+4)
	.word	.LC3-(.LPIC51+4)
	.fnend
	.size	_ZL16final_reorderingPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t, .-_ZL16final_reorderingPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t
	.section	.text._ZL15clear_syllablesPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL15clear_syllablesPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t, %function
_ZL15clear_syllablesPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t:
	.fnstart
.LFB290:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #36
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
	b	.L684
.L685:
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
.L684:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcc	.L685
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZL15clear_syllablesPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t, .-_ZL15clear_syllablesPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t
	.section	.text._ZL15decompose_indicPK31hb_ot_shape_normalize_context_tjPjS2_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL15decompose_indicPK31hb_ot_shape_normalize_context_tjPjS2_, %function
_ZL15decompose_indicPK31hb_ot_shape_normalize_context_tjPjS2_:
	.fnstart
.LFB291:
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
	ldr	r3, [r7, #8]
	cmp	r3, #6080
	beq	.L688
	cmp	r3, #6080
	bhi	.L689
	movw	r2, #3959
	cmp	r3, r2
	beq	.L690
	movw	r2, #3959
	cmp	r3, r2
	bhi	.L691
	movw	r2, #2353
	cmp	r3, r2
	beq	.L692
	movw	r2, #2964
	cmp	r3, r2
	beq	.L693
	b	.L687
.L691:
	movw	r2, #6078
	cmp	r3, r2
	beq	.L694
	movw	r2, #6078
	cmp	r3, r2
	bhi	.L695
	movw	r2, #3961
	cmp	r3, r2
	beq	.L696
	b	.L687
.L689:
	movw	r2, #6438
	cmp	r3, r2
	beq	.L697
	movw	r2, #6438
	cmp	r3, r2
	bhi	.L698
	movw	r2, #6085
	cmp	r3, r2
	beq	.L699
	movw	r2, #6437
	cmp	r3, r2
	beq	.L700
	movw	r2, #6084
	cmp	r3, r2
	beq	.L701
	b	.L687
.L698:
	movw	r2, #4398
	movt	r2, 1
	cmp	r3, r2
	beq	.L702
	movw	r2, #4399
	movt	r2, 1
	cmp	r3, r2
	beq	.L703
	movw	r2, #6972
	cmp	r3, r2
	beq	.L704
	b	.L687
.L692:
	movs	r3, #0
	b	.L705
.L693:
	movs	r3, #0
	b	.L705
.L690:
	ldr	r3, [r7, #4]
	movw	r2, #4018
	str	r2, [r3]
	ldr	r3, [r7]
	movw	r2, #3969
	str	r2, [r3]
	movs	r3, #1
	b	.L705
.L696:
	ldr	r3, [r7, #4]
	movw	r2, #4019
	str	r2, [r3]
	ldr	r3, [r7]
	movw	r2, #3969
	str	r2, [r3]
	movs	r3, #1
	b	.L705
.L694:
	ldr	r3, [r7, #4]
	movw	r2, #6081
	str	r2, [r3]
	ldr	r3, [r7]
	movw	r2, #6078
	str	r2, [r3]
	movs	r3, #1
	b	.L705
.L695:
	ldr	r3, [r7, #4]
	movw	r2, #6081
	str	r2, [r3]
	ldr	r3, [r7]
	movw	r2, #6079
	str	r2, [r3]
	movs	r3, #1
	b	.L705
.L688:
	ldr	r3, [r7, #4]
	movw	r2, #6081
	str	r2, [r3]
	ldr	r3, [r7]
	mov	r2, #6080
	str	r2, [r3]
	movs	r3, #1
	b	.L705
.L701:
	ldr	r3, [r7, #4]
	movw	r2, #6081
	str	r2, [r3]
	ldr	r3, [r7]
	movw	r2, #6084
	str	r2, [r3]
	movs	r3, #1
	b	.L705
.L699:
	ldr	r3, [r7, #4]
	movw	r2, #6081
	str	r2, [r3]
	ldr	r3, [r7]
	movw	r2, #6085
	str	r2, [r3]
	movs	r3, #1
	b	.L705
.L700:
	ldr	r3, [r7, #4]
	mov	r2, #6432
	str	r2, [r3]
	ldr	r3, [r7]
	movw	r2, #6435
	str	r2, [r3]
	movs	r3, #1
	b	.L705
.L697:
	ldr	r3, [r7, #4]
	mov	r2, #6432
	str	r2, [r3]
	ldr	r3, [r7]
	movw	r2, #6436
	str	r2, [r3]
	movs	r3, #1
	b	.L705
.L704:
	ldr	r3, [r7, #4]
	movw	r2, #6978
	str	r2, [r3]
	ldr	r3, [r7]
	movw	r2, #6972
	str	r2, [r3]
	movs	r3, #1
	b	.L705
.L702:
	ldr	r2, [r7, #4]
	movw	r3, #4391
	movt	r3, 1
	str	r3, [r2]
	ldr	r2, [r7]
	movw	r3, #4401
	movt	r3, 1
	str	r3, [r2]
	movs	r3, #1
	b	.L705
.L703:
	ldr	r2, [r7, #4]
	movw	r3, #4391
	movt	r3, 1
	str	r3, [r2]
	ldr	r2, [r7]
	movw	r3, #4402
	movt	r3, 1
	str	r3, [r2]
	movs	r3, #1
	b	.L705
.L687:
	ldr	r2, [r7, #8]
	movw	r3, #3546
	cmp	r2, r3
	beq	.L706
	ldr	r0, [r7, #8]
	movw	r1, #3548
	movw	r2, #3550
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L707
.L706:
	movs	r3, #1
	b	.L708
.L707:
	movs	r3, #0
.L708:
	cmp	r3, #0
	beq	.L709
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #964]
	str	r3, [r7, #20]
	bl	_ZL10hb_optionsv(PLT)
	mov	r3, r0
	ubfx	r3, r3, #1, #1
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L710
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	add	r3, r7, #16
	mov	r0, r2
	ldr	r1, [r7, #8]
	movs	r2, #0
	bl	_ZN9hb_font_t9get_glyphEjjPj(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L711
	ldr	r3, [r7, #20]
	add	r1, r3, #48
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	ldr	r3, [r3, #52]
	add	r2, r7, #16
	mov	r0, r1
	mov	r1, r2
	movs	r2, #1
	bl	_ZNK26would_substitute_feature_t16would_substituteEPKjjP9hb_face_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L711
.L710:
	movs	r3, #1
	b	.L712
.L711:
	movs	r3, #0
.L712:
	cmp	r3, #0
	beq	.L713
	ldr	r3, [r7, #4]
	movw	r2, #3545
	str	r2, [r3]
	ldr	r3, [r7]
	ldr	r2, [r7, #8]
	str	r2, [r3]
	movs	r3, #1
	b	.L705
.L713:
.L709:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	_ZN18hb_unicode_funcs_t9decomposeEjPjS0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
.L705:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL15decompose_indicPK31hb_ot_shape_normalize_context_tjPjS2_, .-_ZL15decompose_indicPK31hb_ot_shape_normalize_context_tjPjS2_
	.section	.text._ZL13compose_indicPK31hb_ot_shape_normalize_context_tjjPj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL13compose_indicPK31hb_ot_shape_normalize_context_tjjPj, %function
_ZL13compose_indicPK31hb_ot_shape_normalize_context_tjjPj:
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
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	mov	r0, r3
	ldr	r1, [r7, #8]
	bl	_ZN18hb_unicode_funcs_t16general_categoryEj(PLT)
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
	beq	.L715
	movs	r3, #0
	b	.L716
.L715:
	ldr	r2, [r7, #8]
	movw	r3, #2479
	cmp	r2, r3
	bne	.L717
	ldr	r2, [r7, #4]
	movw	r3, #2492
	cmp	r2, r3
	bne	.L717
	ldr	r3, [r7]
	movw	r2, #2527
	str	r2, [r3]
	movs	r3, #1
	b	.L716
.L717:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	_ZN18hb_unicode_funcs_t7composeEjjPj(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
.L716:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL13compose_indicPK31hb_ot_shape_normalize_context_tjjPj, .-_ZL13compose_indicPK31hb_ot_shape_normalize_context_tjjPj
	.hidden	_hb_ot_complex_shaper_indic
	.global	_hb_ot_complex_shaper_indic
	.section	.data.rel.ro.local._hb_ot_complex_shaper_indic,"aw",%progbits
	.align	2
	.type	_hb_ot_complex_shaper_indic, %object
	.size	_hb_ot_complex_shaper_indic, 52
_hb_ot_complex_shaper_indic:
	.ascii	"indic\000"
	.space	2
	.word	_ZL22collect_features_indicP21hb_ot_shape_planner_t
	.word	_ZL23override_features_indicP21hb_ot_shape_planner_t
	.word	_ZL17data_create_indicPK18hb_ot_shape_plan_t
	.word	_ZL18data_destroy_indicPv
	.word	0
	.word	3
	.word	_ZL15decompose_indicPK31hb_ot_shape_normalize_context_tjPjS2_
	.word	_ZL13compose_indicPK31hb_ot_shape_normalize_context_tjjPj
	.word	_ZL17setup_masks_indicPK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t
	.word	0
	.byte	0
	.space	3
	.section	.text._Z3MINIjET_RKS0_S2_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z3MINIjET_RKS0_S2_, %function
_Z3MINIjET_RKS0_S2_:
	.fnstart
.LFB294:
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
	bcs	.L719
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	b	.L720
.L719:
	ldr	r3, [r7]
	ldr	r3, [r3]
.L720:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_Z3MINIjET_RKS0_S2_, .-_Z3MINIjET_RKS0_S2_
	.section	.text._Z12hb_in_rangesIjEbT_S0_S0_S0_S0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z12hb_in_rangesIjEbT_S0_S0_S0_S0_, %function
_Z12hb_in_rangesIjEbT_S0_S0_S0_S0_:
	.fnstart
.LFB297:
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
	bne	.L723
	ldr	r0, [r7, #12]
	ldr	r1, [r7]
	ldr	r2, [r7, #24]
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L724
.L723:
	movs	r3, #1
	b	.L725
.L724:
	movs	r3, #0
.L725:
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
.LFB298:
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
.LFB299:
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
	bne	.L730
	ldr	r0, [r7, #12]
	ldr	r1, [r7]
	ldr	r2, [r7, #24]
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L730
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #28]
	ldr	r2, [r7, #32]
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L731
.L730:
	movs	r3, #1
	b	.L732
.L731:
	movs	r3, #0
.L732:
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
.LFB300:
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
	ldr	r0, .L736
.LPIC52:
	add	r0, pc
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r1, .L736+4
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
.L737:
	.align	2
.L736:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC52+4)
	.word	_ZN11hb_ot_map_t13feature_map_t3cmpEPKS0_S2_(GOT)
	.fnend
	.size	_ZNK21hb_prealloced_array_tIN11hb_ot_map_t13feature_map_tELj8EE7bsearchIjEEPKS1_PT_, .-_ZNK21hb_prealloced_array_tIN11hb_ot_map_t13feature_map_tELj8EE7bsearchIjEEPKS1_PT_
	.section	.text._ZNK21hb_prealloced_array_tIN11hb_ot_map_t11stage_map_tELj4EEixEj,"axG",%progbits,_ZNK21hb_prealloced_array_tIN11hb_ot_map_t11stage_map_tELj4EEixEj,comdat
	.align	2
	.weak	_ZNK21hb_prealloced_array_tIN11hb_ot_map_t11stage_map_tELj4EEixEj
	.thumb
	.thumb_func
	.type	_ZNK21hb_prealloced_array_tIN11hb_ot_map_t11stage_map_tELj4EEixEj, %function
_ZNK21hb_prealloced_array_tIN11hb_ot_map_t11stage_map_tELj4EEixEj:
	.fnstart
.LFB301:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7]
	lsls	r3, r3, #3
	add	r3, r3, r2
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNK21hb_prealloced_array_tIN11hb_ot_map_t11stage_map_tELj4EEixEj, .-_ZNK21hb_prealloced_array_tIN11hb_ot_map_t11stage_map_tELj4EEixEj
	.section	.text._ZNK21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EEixEj,"axG",%progbits,_ZNK21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EEixEj,comdat
	.align	2
	.weak	_ZNK21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EEixEj
	.thumb
	.thumb_func
	.type	_ZNK21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EEixEj, %function
_ZNK21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EEixEj:
	.fnstart
.LFB302:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7]
	lsls	r3, r3, #3
	add	r3, r3, r2
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNK21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EEixEj, .-_ZNK21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EEixEj
	.section	.text._Z12ARRAY_LENGTHIjLj12EEjRAT0__KT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z12ARRAY_LENGTHIjLj12EEjRAT0__KT_, %function
_Z12ARRAY_LENGTHIjLj12EEjRAT0__KT_:
	.fnstart
.LFB311:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #12
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_Z12ARRAY_LENGTHIjLj12EEjRAT0__KT_, .-_Z12ARRAY_LENGTHIjLj12EEjRAT0__KT_
	.section	.text._Z12ARRAY_LENGTHI14indic_config_tLj13EEjRAT0__KT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z12ARRAY_LENGTHI14indic_config_tLj13EEjRAT0__KT_, %function
_Z12ARRAY_LENGTHI14indic_config_tLj13EEjRAT0__KT_:
	.fnstart
.LFB312:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #13
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_Z12ARRAY_LENGTHI14indic_config_tLj13EEjRAT0__KT_, .-_Z12ARRAY_LENGTHI14indic_config_tLj13EEjRAT0__KT_
	.section	.text._Z12ARRAY_LENGTHIjLj21EEjRAT0__KT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z12ARRAY_LENGTHIjLj21EEjRAT0__KT_, %function
_Z12ARRAY_LENGTHIjLj21EEjRAT0__KT_:
	.fnstart
.LFB313:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #21
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_Z12ARRAY_LENGTHIjLj21EEjRAT0__KT_, .-_Z12ARRAY_LENGTHIjLj21EEjRAT0__KT_
	.section	.text._Z3MINI16indic_position_tET_RKS1_S3_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z3MINI16indic_position_tET_RKS1_S3_, %function
_Z3MINI16indic_position_tET_RKS1_S3_:
	.fnstart
.LFB314:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3]
	cmp	r2, r3
	bge	.L749
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	b	.L750
.L749:
	ldr	r3, [r7]
	ldr	r3, [r3]
.L750:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_Z3MINI16indic_position_tET_RKS1_S3_, .-_Z3MINI16indic_position_tET_RKS1_S3_
	.section	.text._Z14hb_bubble_sortI15hb_glyph_info_tEvPT_jPFiPKS1_S4_E,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z14hb_bubble_sortI15hb_glyph_info_tEvPT_jPFiPKS1_S4_E, %function
_Z14hb_bubble_sortI15hb_glyph_info_tEvPT_jPFiPKS1_S4_E:
	.fnstart
.LFB315:
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
	.section	.text._Z3MAXIjET_RKS0_S2_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z3MAXIjET_RKS0_S2_, %function
_Z3MAXIjET_RKS0_S2_:
	.fnstart
.LFB316:
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
	bls	.L754
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	b	.L755
.L754:
	ldr	r3, [r7]
	ldr	r3, [r3]
.L755:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_Z3MAXIjET_RKS0_S2_, .-_Z3MAXIjET_RKS0_S2_
	.section	.text._Z14hb_bubble_sortI15hb_glyph_info_tiEvPT_jPFiPKS1_S4_EPT0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z14hb_bubble_sortI15hb_glyph_info_tiEvPT_jPFiPKS1_S4_EPT0_, %function
_Z14hb_bubble_sortI15hb_glyph_info_tiEvPT_jPFiPKS1_S4_EPT0_:
	.fnstart
.LFB321:
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
	bne	.L758
	b	.L757
.L758:
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	str	r3, [r7, #52]
.L764:
	movs	r3, #0
	str	r3, [r7, #48]
	movs	r3, #0
	str	r3, [r7, #44]
	b	.L760
.L763:
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
	beq	.L761
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
	beq	.L762
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
.L762:
	ldr	r3, [r7, #44]
	str	r3, [r7, #48]
.L761:
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	str	r3, [r7, #44]
.L760:
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bcc	.L763
	ldr	r3, [r7, #48]
	str	r3, [r7, #52]
	ldr	r3, [r7, #52]
	cmp	r3, #0
	bne	.L764
.L757:
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
	.section	.rodata._ZL8ra_chars,"a",%progbits
	.align	2
	.type	_ZL8ra_chars, %object
	.size	_ZL8ra_chars, 48
_ZL8ra_chars:
	.word	2352
	.word	2480
	.word	2544
	.word	2608
	.word	2736
	.word	2864
	.word	2992
	.word	3120
	.word	3248
	.word	3376
	.word	3515
	.word	6042
	.section	.rodata._ZL13indic_configs,"a",%progbits
	.align	2
	.type	_ZL13indic_configs, %object
	.size	_ZL13indic_configs, 416
_ZL13indic_configs:
	.word	0
	.byte	0
	.space	3
	.word	0
	.word	2
	.word	10
	.word	0
	.word	0
	.word	1
	.word	1147500129
	.byte	1
	.space	3
	.word	2381
	.word	2
	.word	10
	.word	0
	.word	0
	.word	2
	.word	1113943655
	.byte	1
	.space	3
	.word	2509
	.word	2
	.word	9
	.word	0
	.word	0
	.word	2
	.word	1198879349
	.byte	1
	.space	3
	.word	2637
	.word	2
	.word	7
	.word	0
	.word	0
	.word	2
	.word	1198877298
	.byte	1
	.space	3
	.word	2765
	.word	2
	.word	10
	.word	0
	.word	0
	.word	2
	.word	1332902241
	.byte	1
	.space	3
	.word	2893
	.word	2
	.word	5
	.word	0
	.word	0
	.word	2
	.word	1415671148
	.byte	1
	.space	3
	.word	3021
	.word	2
	.word	12
	.word	0
	.word	0
	.word	2
	.word	1415933045
	.byte	1
	.space	3
	.word	3149
	.word	2
	.word	12
	.word	1
	.word	1
	.word	2
	.word	1265525857
	.byte	1
	.space	3
	.word	3277
	.word	2
	.word	12
	.word	0
	.word	1
	.word	2
	.word	1298954605
	.byte	1
	.space	3
	.word	3405
	.word	2
	.word	5
	.word	3
	.word	0
	.word	2
	.word	1399418472
	.byte	0
	.space	3
	.word	3530
	.word	1
	.word	5
	.word	1
	.word	0
	.word	2
	.word	1265134962
	.byte	0
	.space	3
	.word	6098
	.word	0
	.word	1
	.word	2
	.word	0
	.word	2
	.word	1247901281
	.byte	0
	.space	3
	.word	43456
	.word	0
	.word	1
	.word	2
	.word	0
	.word	1
	.section	.rodata._ZL14indic_features,"a",%progbits
	.align	2
	.type	_ZL14indic_features, %object
	.size	_ZL14indic_features, 168
_ZL14indic_features:
	.word	1853188980
	.word	1
	.word	1634429038
	.word	1
	.word	1919969382
	.word	0
	.word	1919644262
	.word	1
	.word	1886545254
	.word	0
	.word	1651275622
	.word	0
	.word	1633842790
	.word	0
	.word	1751215206
	.word	0
	.word	1886614630
	.word	0
	.word	1986098293
	.word	1
	.word	1667916660
	.word	1
	.word	1667654002
	.word	0
	.word	1768843636
	.word	0
	.word	1886545267
	.word	1
	.word	1633842803
	.word	1
	.word	1651275635
	.word	1
	.word	1886614643
	.word	1
	.word	1751215214
	.word	1
	.word	1684632436
	.word	1
	.word	1633842797
	.word	1
	.word	1651275629
	.word	1
	.section	.rodata._ZL34_indic_syllable_machine_trans_keys,"a",%progbits
	.align	2
	.type	_ZL34_indic_syllable_machine_trans_keys, %object
	.size	_ZL34_indic_syllable_machine_trans_keys, 1087
_ZL34_indic_syllable_machine_trans_keys:
	.byte	8
	.byte	8
	.byte	1
	.byte	16
	.byte	8
	.byte	13
	.byte	5
	.byte	8
	.byte	5
	.byte	7
	.byte	7
	.byte	7
	.byte	5
	.byte	8
	.byte	5
	.byte	7
	.byte	7
	.byte	7
	.byte	5
	.byte	8
	.byte	5
	.byte	7
	.byte	7
	.byte	7
	.byte	5
	.byte	8
	.byte	5
	.byte	7
	.byte	7
	.byte	7
	.byte	4
	.byte	8
	.byte	6
	.byte	6
	.byte	16
	.byte	16
	.byte	4
	.byte	8
	.byte	6
	.byte	6
	.byte	16
	.byte	16
	.byte	4
	.byte	8
	.byte	6
	.byte	6
	.byte	16
	.byte	16
	.byte	4
	.byte	8
	.byte	6
	.byte	6
	.byte	16
	.byte	16
	.byte	4
	.byte	14
	.byte	4
	.byte	14
	.byte	4
	.byte	14
	.byte	4
	.byte	14
	.byte	4
	.byte	14
	.byte	4
	.byte	14
	.byte	4
	.byte	14
	.byte	4
	.byte	14
	.byte	4
	.byte	14
	.byte	4
	.byte	14
	.byte	8
	.byte	8
	.byte	1
	.byte	16
	.byte	8
	.byte	13
	.byte	5
	.byte	8
	.byte	5
	.byte	7
	.byte	7
	.byte	7
	.byte	5
	.byte	8
	.byte	5
	.byte	7
	.byte	7
	.byte	7
	.byte	5
	.byte	8
	.byte	5
	.byte	7
	.byte	7
	.byte	7
	.byte	5
	.byte	8
	.byte	5
	.byte	7
	.byte	7
	.byte	7
	.byte	4
	.byte	8
	.byte	6
	.byte	6
	.byte	16
	.byte	16
	.byte	4
	.byte	8
	.byte	6
	.byte	6
	.byte	16
	.byte	16
	.byte	4
	.byte	8
	.byte	6
	.byte	6
	.byte	16
	.byte	16
	.byte	4
	.byte	8
	.byte	6
	.byte	6
	.byte	16
	.byte	16
	.byte	4
	.byte	14
	.byte	4
	.byte	14
	.byte	4
	.byte	14
	.byte	4
	.byte	14
	.byte	4
	.byte	14
	.byte	4
	.byte	14
	.byte	4
	.byte	14
	.byte	4
	.byte	14
	.byte	4
	.byte	14
	.byte	4
	.byte	14
	.byte	8
	.byte	8
	.byte	1
	.byte	16
	.byte	8
	.byte	13
	.byte	5
	.byte	8
	.byte	5
	.byte	7
	.byte	7
	.byte	7
	.byte	5
	.byte	8
	.byte	5
	.byte	7
	.byte	7
	.byte	7
	.byte	5
	.byte	8
	.byte	5
	.byte	7
	.byte	7
	.byte	7
	.byte	5
	.byte	8
	.byte	5
	.byte	7
	.byte	7
	.byte	7
	.byte	4
	.byte	8
	.byte	6
	.byte	6
	.byte	16
	.byte	16
	.byte	4
	.byte	8
	.byte	6
	.byte	6
	.byte	16
	.byte	16
	.byte	4
	.byte	8
	.byte	6
	.byte	6
	.byte	16
	.byte	16
	.byte	4
	.byte	8
	.byte	6
	.byte	6
	.byte	16
	.byte	16
	.byte	4
	.byte	14
	.byte	4
	.byte	14
	.byte	4
	.byte	14
	.byte	4
	.byte	14
	.byte	4
	.byte	14
	.byte	4
	.byte	14
	.byte	4
	.byte	14
	.byte	4
	.byte	14
	.byte	4
	.byte	14
	.byte	8
	.byte	8
	.byte	1
	.byte	16
	.byte	8
	.byte	13
	.byte	5
	.byte	8
	.byte	5
	.byte	7
	.byte	7
	.byte	7
	.byte	5
	.byte	8
	.byte	5
	.byte	7
	.byte	7
	.byte	7
	.byte	5
	.byte	8
	.byte	5
	.byte	7
	.byte	7
	.byte	7
	.byte	5
	.byte	8
	.byte	5
	.byte	7
	.byte	7
	.byte	7
	.byte	4
	.byte	8
	.byte	6
	.byte	6
	.byte	16
	.byte	16
	.byte	4
	.byte	8
	.byte	6
	.byte	6
	.byte	16
	.byte	16
	.byte	4
	.byte	8
	.byte	6
	.byte	6
	.byte	16
	.byte	16
	.byte	4
	.byte	8
	.byte	6
	.byte	6
	.byte	16
	.byte	16
	.byte	4
	.byte	14
	.byte	4
	.byte	14
	.byte	4
	.byte	14
	.byte	4
	.byte	14
	.byte	4
	.byte	14
	.byte	4
	.byte	14
	.byte	4
	.byte	14
	.byte	4
	.byte	14
	.byte	4
	.byte	14
	.byte	4
	.byte	14
	.byte	4
	.byte	14
	.byte	5
	.byte	8
	.byte	4
	.byte	14
	.byte	4
	.byte	14
	.byte	5
	.byte	8
	.byte	5
	.byte	7
	.byte	5
	.byte	8
	.byte	5
	.byte	7
	.byte	7
	.byte	7
	.byte	5
	.byte	8
	.byte	5
	.byte	7
	.byte	7
	.byte	7
	.byte	5
	.byte	8
	.byte	5
	.byte	7
	.byte	7
	.byte	7
	.byte	8
	.byte	8
	.byte	1
	.byte	16
	.byte	8
	.byte	13
	.byte	4
	.byte	8
	.byte	6
	.byte	6
	.byte	16
	.byte	16
	.byte	4
	.byte	8
	.byte	6
	.byte	6
	.byte	16
	.byte	16
	.byte	4
	.byte	8
	.byte	6
	.byte	6
	.byte	16
	.byte	16
	.byte	4
	.byte	8
	.byte	6
	.byte	6
	.byte	16
	.byte	16
	.byte	8
	.byte	8
	.byte	1
	.byte	31
	.byte	3
	.byte	31
	.byte	3
	.byte	31
	.byte	4
	.byte	31
	.byte	1
	.byte	16
	.byte	3
	.byte	31
	.byte	3
	.byte	31
	.byte	4
	.byte	31
	.byte	1
	.byte	16
	.byte	3
	.byte	31
	.byte	3
	.byte	31
	.byte	4
	.byte	31
	.byte	1
	.byte	16
	.byte	3
	.byte	31
	.byte	3
	.byte	31
	.byte	4
	.byte	31
	.byte	1
	.byte	16
	.byte	3
	.byte	31
	.byte	3
	.byte	31
	.byte	4
	.byte	31
	.byte	5
	.byte	14
	.byte	5
	.byte	14
	.byte	5
	.byte	10
	.byte	9
	.byte	10
	.byte	9
	.byte	9
	.byte	9
	.byte	10
	.byte	9
	.byte	10
	.byte	9
	.byte	9
	.byte	5
	.byte	10
	.byte	3
	.byte	13
	.byte	3
	.byte	10
	.byte	5
	.byte	10
	.byte	3
	.byte	10
	.byte	3
	.byte	13
	.byte	3
	.byte	14
	.byte	3
	.byte	14
	.byte	4
	.byte	14
	.byte	5
	.byte	14
	.byte	3
	.byte	14
	.byte	4
	.byte	14
	.byte	5
	.byte	14
	.byte	3
	.byte	14
	.byte	4
	.byte	14
	.byte	5
	.byte	14
	.byte	3
	.byte	14
	.byte	4
	.byte	14
	.byte	5
	.byte	14
	.byte	3
	.byte	14
	.byte	1
	.byte	16
	.byte	4
	.byte	31
	.byte	4
	.byte	14
	.byte	3
	.byte	31
	.byte	3
	.byte	31
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	3
	.byte	31
	.byte	3
	.byte	31
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	3
	.byte	31
	.byte	3
	.byte	31
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	3
	.byte	31
	.byte	3
	.byte	31
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	3
	.byte	31
	.byte	3
	.byte	31
	.byte	3
	.byte	31
	.byte	3
	.byte	31
	.byte	4
	.byte	31
	.byte	1
	.byte	16
	.byte	3
	.byte	31
	.byte	3
	.byte	31
	.byte	4
	.byte	31
	.byte	1
	.byte	16
	.byte	3
	.byte	31
	.byte	3
	.byte	31
	.byte	4
	.byte	31
	.byte	1
	.byte	16
	.byte	3
	.byte	31
	.byte	3
	.byte	31
	.byte	4
	.byte	31
	.byte	1
	.byte	16
	.byte	3
	.byte	31
	.byte	3
	.byte	31
	.byte	4
	.byte	31
	.byte	5
	.byte	14
	.byte	5
	.byte	14
	.byte	5
	.byte	10
	.byte	9
	.byte	10
	.byte	9
	.byte	9
	.byte	9
	.byte	10
	.byte	9
	.byte	10
	.byte	9
	.byte	9
	.byte	5
	.byte	10
	.byte	3
	.byte	13
	.byte	3
	.byte	10
	.byte	5
	.byte	10
	.byte	3
	.byte	10
	.byte	3
	.byte	13
	.byte	3
	.byte	14
	.byte	3
	.byte	14
	.byte	4
	.byte	14
	.byte	5
	.byte	14
	.byte	3
	.byte	14
	.byte	4
	.byte	14
	.byte	5
	.byte	14
	.byte	3
	.byte	14
	.byte	4
	.byte	14
	.byte	5
	.byte	14
	.byte	3
	.byte	14
	.byte	4
	.byte	14
	.byte	5
	.byte	14
	.byte	3
	.byte	14
	.byte	1
	.byte	16
	.byte	4
	.byte	31
	.byte	4
	.byte	14
	.byte	3
	.byte	31
	.byte	3
	.byte	31
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	3
	.byte	31
	.byte	3
	.byte	31
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	3
	.byte	31
	.byte	3
	.byte	31
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	3
	.byte	31
	.byte	3
	.byte	31
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	4
	.byte	14
	.byte	1
	.byte	16
	.byte	3
	.byte	31
	.byte	3
	.byte	31
	.byte	4
	.byte	31
	.byte	1
	.byte	16
	.byte	3
	.byte	31
	.byte	3
	.byte	31
	.byte	4
	.byte	31
	.byte	1
	.byte	16
	.byte	3
	.byte	31
	.byte	3
	.byte	31
	.byte	4
	.byte	31
	.byte	1
	.byte	16
	.byte	3
	.byte	31
	.byte	3
	.byte	31
	.byte	4
	.byte	31
	.byte	1
	.byte	16
	.byte	3
	.byte	31
	.byte	3
	.byte	31
	.byte	4
	.byte	31
	.byte	5
	.byte	14
	.byte	5
	.byte	14
	.byte	5
	.byte	10
	.byte	9
	.byte	10
	.byte	9
	.byte	9
	.byte	9
	.byte	10
	.byte	9
	.byte	10
	.byte	9
	.byte	9
	.byte	5
	.byte	10
	.byte	3
	.byte	13
	.byte	3
	.byte	10
	.byte	5
	.byte	10
	.byte	3
	.byte	10
	.byte	3
	.byte	13
	.byte	3
	.byte	14
	.byte	3
	.byte	14
	.byte	4
	.byte	14
	.byte	5
	.byte	14
	.byte	3
	.byte	14
	.byte	4
	.byte	14
	.byte	5
	.byte	14
	.byte	3
	.byte	14
	.byte	4
	.byte	14
	.byte	5
	.byte	14
	.byte	3
	.byte	14
	.byte	4
	.byte	14
	.byte	5
	.byte	14
	.byte	3
	.byte	14
	.byte	1
	.byte	16
	.byte	4
	.byte	31
	.byte	4
	.byte	14
	.byte	3
	.byte	31
	.byte	3
	.byte	31
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	3
	.byte	31
	.byte	3
	.byte	31
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	3
	.byte	31
	.byte	3
	.byte	31
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	3
	.byte	31
	.byte	3
	.byte	31
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	4
	.byte	14
	.byte	3
	.byte	31
	.byte	4
	.byte	14
	.byte	3
	.byte	31
	.byte	3
	.byte	31
	.byte	4
	.byte	31
	.byte	1
	.byte	16
	.byte	3
	.byte	31
	.byte	3
	.byte	31
	.byte	4
	.byte	31
	.byte	1
	.byte	16
	.byte	3
	.byte	31
	.byte	3
	.byte	31
	.byte	4
	.byte	31
	.byte	1
	.byte	16
	.byte	3
	.byte	31
	.byte	3
	.byte	31
	.byte	4
	.byte	31
	.byte	1
	.byte	16
	.byte	3
	.byte	31
	.byte	3
	.byte	31
	.byte	4
	.byte	31
	.byte	5
	.byte	14
	.byte	5
	.byte	14
	.byte	5
	.byte	10
	.byte	9
	.byte	10
	.byte	9
	.byte	9
	.byte	9
	.byte	10
	.byte	9
	.byte	10
	.byte	9
	.byte	9
	.byte	5
	.byte	10
	.byte	3
	.byte	13
	.byte	3
	.byte	10
	.byte	5
	.byte	10
	.byte	3
	.byte	10
	.byte	3
	.byte	13
	.byte	3
	.byte	14
	.byte	3
	.byte	14
	.byte	4
	.byte	14
	.byte	5
	.byte	14
	.byte	3
	.byte	14
	.byte	4
	.byte	14
	.byte	5
	.byte	14
	.byte	3
	.byte	14
	.byte	4
	.byte	14
	.byte	5
	.byte	14
	.byte	3
	.byte	14
	.byte	4
	.byte	14
	.byte	5
	.byte	14
	.byte	3
	.byte	14
	.byte	1
	.byte	16
	.byte	4
	.byte	31
	.byte	4
	.byte	14
	.byte	3
	.byte	31
	.byte	3
	.byte	31
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	3
	.byte	31
	.byte	3
	.byte	31
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	3
	.byte	31
	.byte	3
	.byte	31
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	3
	.byte	31
	.byte	3
	.byte	31
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	1
	.byte	16
	.byte	3
	.byte	31
	.byte	1
	.byte	31
	.byte	3
	.byte	31
	.byte	1
	.byte	31
	.byte	4
	.byte	14
	.byte	5
	.byte	10
	.byte	9
	.byte	10
	.byte	9
	.byte	9
	.byte	9
	.byte	10
	.byte	9
	.byte	10
	.byte	9
	.byte	9
	.byte	5
	.byte	10
	.byte	1
	.byte	16
	.byte	3
	.byte	31
	.byte	3
	.byte	31
	.byte	4
	.byte	31
	.byte	3
	.byte	31
	.byte	3
	.byte	31
	.byte	1
	.byte	16
	.byte	3
	.byte	14
	.byte	4
	.byte	14
	.byte	5
	.byte	14
	.byte	3
	.byte	14
	.byte	4
	.byte	14
	.byte	5
	.byte	14
	.byte	3
	.byte	14
	.byte	4
	.byte	14
	.byte	5
	.byte	14
	.byte	3
	.byte	14
	.byte	4
	.byte	14
	.byte	5
	.byte	14
	.byte	3
	.byte	13
	.byte	3
	.byte	10
	.byte	5
	.byte	10
	.byte	3
	.byte	10
	.byte	3
	.byte	13
	.byte	1
	.byte	16
	.byte	3
	.byte	10
	.byte	5
	.byte	10
	.byte	5
	.byte	10
	.byte	9
	.byte	10
	.byte	9
	.byte	9
	.byte	9
	.byte	10
	.byte	9
	.byte	10
	.byte	9
	.byte	9
	.byte	5
	.byte	10
	.byte	0
	.section	.rodata._ZL33_indic_syllable_machine_key_spans,"a",%progbits
	.align	2
	.type	_ZL33_indic_syllable_machine_key_spans, %object
	.size	_ZL33_indic_syllable_machine_key_spans, 543
_ZL33_indic_syllable_machine_key_spans:
	.byte	1
	.byte	16
	.byte	6
	.byte	4
	.byte	3
	.byte	1
	.byte	4
	.byte	3
	.byte	1
	.byte	4
	.byte	3
	.byte	1
	.byte	4
	.byte	3
	.byte	1
	.byte	5
	.byte	1
	.byte	1
	.byte	5
	.byte	1
	.byte	1
	.byte	5
	.byte	1
	.byte	1
	.byte	5
	.byte	1
	.byte	1
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	1
	.byte	16
	.byte	6
	.byte	4
	.byte	3
	.byte	1
	.byte	4
	.byte	3
	.byte	1
	.byte	4
	.byte	3
	.byte	1
	.byte	4
	.byte	3
	.byte	1
	.byte	5
	.byte	1
	.byte	1
	.byte	5
	.byte	1
	.byte	1
	.byte	5
	.byte	1
	.byte	1
	.byte	5
	.byte	1
	.byte	1
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	1
	.byte	16
	.byte	6
	.byte	4
	.byte	3
	.byte	1
	.byte	4
	.byte	3
	.byte	1
	.byte	4
	.byte	3
	.byte	1
	.byte	4
	.byte	3
	.byte	1
	.byte	5
	.byte	1
	.byte	1
	.byte	5
	.byte	1
	.byte	1
	.byte	5
	.byte	1
	.byte	1
	.byte	5
	.byte	1
	.byte	1
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	1
	.byte	16
	.byte	6
	.byte	4
	.byte	3
	.byte	1
	.byte	4
	.byte	3
	.byte	1
	.byte	4
	.byte	3
	.byte	1
	.byte	4
	.byte	3
	.byte	1
	.byte	5
	.byte	1
	.byte	1
	.byte	5
	.byte	1
	.byte	1
	.byte	5
	.byte	1
	.byte	1
	.byte	5
	.byte	1
	.byte	1
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	4
	.byte	11
	.byte	11
	.byte	4
	.byte	3
	.byte	4
	.byte	3
	.byte	1
	.byte	4
	.byte	3
	.byte	1
	.byte	4
	.byte	3
	.byte	1
	.byte	1
	.byte	16
	.byte	6
	.byte	5
	.byte	1
	.byte	1
	.byte	5
	.byte	1
	.byte	1
	.byte	5
	.byte	1
	.byte	1
	.byte	5
	.byte	1
	.byte	1
	.byte	1
	.byte	31
	.byte	29
	.byte	29
	.byte	28
	.byte	16
	.byte	29
	.byte	29
	.byte	28
	.byte	16
	.byte	29
	.byte	29
	.byte	28
	.byte	16
	.byte	29
	.byte	29
	.byte	28
	.byte	16
	.byte	29
	.byte	29
	.byte	28
	.byte	10
	.byte	10
	.byte	6
	.byte	2
	.byte	1
	.byte	2
	.byte	2
	.byte	1
	.byte	6
	.byte	11
	.byte	8
	.byte	6
	.byte	8
	.byte	11
	.byte	12
	.byte	12
	.byte	11
	.byte	10
	.byte	12
	.byte	11
	.byte	10
	.byte	12
	.byte	11
	.byte	10
	.byte	12
	.byte	11
	.byte	10
	.byte	12
	.byte	16
	.byte	28
	.byte	11
	.byte	29
	.byte	29
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	29
	.byte	29
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	29
	.byte	29
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	29
	.byte	29
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	28
	.byte	16
	.byte	29
	.byte	29
	.byte	28
	.byte	16
	.byte	29
	.byte	29
	.byte	28
	.byte	16
	.byte	29
	.byte	29
	.byte	28
	.byte	16
	.byte	29
	.byte	29
	.byte	28
	.byte	10
	.byte	10
	.byte	6
	.byte	2
	.byte	1
	.byte	2
	.byte	2
	.byte	1
	.byte	6
	.byte	11
	.byte	8
	.byte	6
	.byte	8
	.byte	11
	.byte	12
	.byte	12
	.byte	11
	.byte	10
	.byte	12
	.byte	11
	.byte	10
	.byte	12
	.byte	11
	.byte	10
	.byte	12
	.byte	11
	.byte	10
	.byte	12
	.byte	16
	.byte	28
	.byte	11
	.byte	29
	.byte	29
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	29
	.byte	29
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	29
	.byte	29
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	29
	.byte	29
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	11
	.byte	16
	.byte	29
	.byte	29
	.byte	28
	.byte	16
	.byte	29
	.byte	29
	.byte	28
	.byte	16
	.byte	29
	.byte	29
	.byte	28
	.byte	16
	.byte	29
	.byte	29
	.byte	28
	.byte	16
	.byte	29
	.byte	29
	.byte	28
	.byte	10
	.byte	10
	.byte	6
	.byte	2
	.byte	1
	.byte	2
	.byte	2
	.byte	1
	.byte	6
	.byte	11
	.byte	8
	.byte	6
	.byte	8
	.byte	11
	.byte	12
	.byte	12
	.byte	11
	.byte	10
	.byte	12
	.byte	11
	.byte	10
	.byte	12
	.byte	11
	.byte	10
	.byte	12
	.byte	11
	.byte	10
	.byte	12
	.byte	16
	.byte	28
	.byte	11
	.byte	29
	.byte	29
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	29
	.byte	29
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	29
	.byte	29
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	29
	.byte	29
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	11
	.byte	29
	.byte	11
	.byte	29
	.byte	29
	.byte	28
	.byte	16
	.byte	29
	.byte	29
	.byte	28
	.byte	16
	.byte	29
	.byte	29
	.byte	28
	.byte	16
	.byte	29
	.byte	29
	.byte	28
	.byte	16
	.byte	29
	.byte	29
	.byte	28
	.byte	10
	.byte	10
	.byte	6
	.byte	2
	.byte	1
	.byte	2
	.byte	2
	.byte	1
	.byte	6
	.byte	11
	.byte	8
	.byte	6
	.byte	8
	.byte	11
	.byte	12
	.byte	12
	.byte	11
	.byte	10
	.byte	12
	.byte	11
	.byte	10
	.byte	12
	.byte	11
	.byte	10
	.byte	12
	.byte	11
	.byte	10
	.byte	12
	.byte	16
	.byte	28
	.byte	11
	.byte	29
	.byte	29
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	29
	.byte	29
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	29
	.byte	29
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	29
	.byte	29
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	29
	.byte	31
	.byte	29
	.byte	31
	.byte	11
	.byte	6
	.byte	2
	.byte	1
	.byte	2
	.byte	2
	.byte	1
	.byte	6
	.byte	16
	.byte	29
	.byte	29
	.byte	28
	.byte	29
	.byte	29
	.byte	16
	.byte	12
	.byte	11
	.byte	10
	.byte	12
	.byte	11
	.byte	10
	.byte	12
	.byte	11
	.byte	10
	.byte	12
	.byte	11
	.byte	10
	.byte	11
	.byte	8
	.byte	6
	.byte	8
	.byte	11
	.byte	16
	.byte	8
	.byte	6
	.byte	6
	.byte	2
	.byte	1
	.byte	2
	.byte	2
	.byte	1
	.byte	6
	.section	.rodata._ZL37_indic_syllable_machine_index_offsets,"a",%progbits
	.align	2
	.type	_ZL37_indic_syllable_machine_index_offsets, %object
	.size	_ZL37_indic_syllable_machine_index_offsets, 1086
_ZL37_indic_syllable_machine_index_offsets:
	.short	0
	.short	2
	.short	19
	.short	26
	.short	31
	.short	35
	.short	37
	.short	42
	.short	46
	.short	48
	.short	53
	.short	57
	.short	59
	.short	64
	.short	68
	.short	70
	.short	76
	.short	78
	.short	80
	.short	86
	.short	88
	.short	90
	.short	96
	.short	98
	.short	100
	.short	106
	.short	108
	.short	110
	.short	122
	.short	134
	.short	146
	.short	158
	.short	170
	.short	182
	.short	194
	.short	206
	.short	218
	.short	230
	.short	232
	.short	249
	.short	256
	.short	261
	.short	265
	.short	267
	.short	272
	.short	276
	.short	278
	.short	283
	.short	287
	.short	289
	.short	294
	.short	298
	.short	300
	.short	306
	.short	308
	.short	310
	.short	316
	.short	318
	.short	320
	.short	326
	.short	328
	.short	330
	.short	336
	.short	338
	.short	340
	.short	352
	.short	364
	.short	376
	.short	388
	.short	400
	.short	412
	.short	424
	.short	436
	.short	448
	.short	460
	.short	462
	.short	479
	.short	486
	.short	491
	.short	495
	.short	497
	.short	502
	.short	506
	.short	508
	.short	513
	.short	517
	.short	519
	.short	524
	.short	528
	.short	530
	.short	536
	.short	538
	.short	540
	.short	546
	.short	548
	.short	550
	.short	556
	.short	558
	.short	560
	.short	566
	.short	568
	.short	570
	.short	582
	.short	594
	.short	606
	.short	618
	.short	630
	.short	642
	.short	654
	.short	666
	.short	678
	.short	680
	.short	697
	.short	704
	.short	709
	.short	713
	.short	715
	.short	720
	.short	724
	.short	726
	.short	731
	.short	735
	.short	737
	.short	742
	.short	746
	.short	748
	.short	754
	.short	756
	.short	758
	.short	764
	.short	766
	.short	768
	.short	774
	.short	776
	.short	778
	.short	784
	.short	786
	.short	788
	.short	800
	.short	812
	.short	824
	.short	836
	.short	848
	.short	860
	.short	872
	.short	884
	.short	896
	.short	908
	.short	920
	.short	925
	.short	937
	.short	949
	.short	954
	.short	958
	.short	963
	.short	967
	.short	969
	.short	974
	.short	978
	.short	980
	.short	985
	.short	989
	.short	991
	.short	993
	.short	1010
	.short	1017
	.short	1023
	.short	1025
	.short	1027
	.short	1033
	.short	1035
	.short	1037
	.short	1043
	.short	1045
	.short	1047
	.short	1053
	.short	1055
	.short	1057
	.short	1059
	.short	1091
	.short	1121
	.short	1151
	.short	1180
	.short	1197
	.short	1227
	.short	1257
	.short	1286
	.short	1303
	.short	1333
	.short	1363
	.short	1392
	.short	1409
	.short	1439
	.short	1469
	.short	1498
	.short	1515
	.short	1545
	.short	1575
	.short	1604
	.short	1615
	.short	1626
	.short	1633
	.short	1636
	.short	1638
	.short	1641
	.short	1644
	.short	1646
	.short	1653
	.short	1665
	.short	1674
	.short	1681
	.short	1690
	.short	1702
	.short	1715
	.short	1728
	.short	1740
	.short	1751
	.short	1764
	.short	1776
	.short	1787
	.short	1800
	.short	1812
	.short	1823
	.short	1836
	.short	1848
	.short	1859
	.short	1872
	.short	1889
	.short	1918
	.short	1930
	.short	1960
	.short	1990
	.short	2007
	.short	2024
	.short	2041
	.short	2058
	.short	2075
	.short	2105
	.short	2135
	.short	2152
	.short	2169
	.short	2186
	.short	2203
	.short	2220
	.short	2250
	.short	2280
	.short	2297
	.short	2314
	.short	2331
	.short	2348
	.short	2365
	.short	2395
	.short	2425
	.short	2442
	.short	2459
	.short	2476
	.short	2493
	.short	2510
	.short	2540
	.short	2570
	.short	2600
	.short	2630
	.short	2659
	.short	2676
	.short	2706
	.short	2736
	.short	2765
	.short	2782
	.short	2812
	.short	2842
	.short	2871
	.short	2888
	.short	2918
	.short	2948
	.short	2977
	.short	2994
	.short	3024
	.short	3054
	.short	3083
	.short	3094
	.short	3105
	.short	3112
	.short	3115
	.short	3117
	.short	3120
	.short	3123
	.short	3125
	.short	3132
	.short	3144
	.short	3153
	.short	3160
	.short	3169
	.short	3181
	.short	3194
	.short	3207
	.short	3219
	.short	3230
	.short	3243
	.short	3255
	.short	3266
	.short	3279
	.short	3291
	.short	3302
	.short	3315
	.short	3327
	.short	3338
	.short	3351
	.short	3368
	.short	3397
	.short	3409
	.short	3439
	.short	3469
	.short	3486
	.short	3503
	.short	3520
	.short	3537
	.short	3554
	.short	3584
	.short	3614
	.short	3631
	.short	3648
	.short	3665
	.short	3682
	.short	3699
	.short	3729
	.short	3759
	.short	3776
	.short	3793
	.short	3810
	.short	3827
	.short	3844
	.short	3874
	.short	3904
	.short	3921
	.short	3938
	.short	3955
	.short	3972
	.short	3984
	.short	4001
	.short	4031
	.short	4061
	.short	4090
	.short	4107
	.short	4137
	.short	4167
	.short	4196
	.short	4213
	.short	4243
	.short	4273
	.short	4302
	.short	4319
	.short	4349
	.short	4379
	.short	4408
	.short	4425
	.short	4455
	.short	4485
	.short	4514
	.short	4525
	.short	4536
	.short	4543
	.short	4546
	.short	4548
	.short	4551
	.short	4554
	.short	4556
	.short	4563
	.short	4575
	.short	4584
	.short	4591
	.short	4600
	.short	4612
	.short	4625
	.short	4638
	.short	4650
	.short	4661
	.short	4674
	.short	4686
	.short	4697
	.short	4710
	.short	4722
	.short	4733
	.short	4746
	.short	4758
	.short	4769
	.short	4782
	.short	4799
	.short	4828
	.short	4840
	.short	4870
	.short	4900
	.short	4917
	.short	4934
	.short	4951
	.short	4968
	.short	4985
	.short	5015
	.short	5045
	.short	5062
	.short	5079
	.short	5096
	.short	5113
	.short	5130
	.short	5160
	.short	5190
	.short	5207
	.short	5224
	.short	5241
	.short	5258
	.short	5275
	.short	5305
	.short	5335
	.short	5352
	.short	5369
	.short	5386
	.short	5403
	.short	5420
	.short	5432
	.short	5462
	.short	5474
	.short	5504
	.short	5534
	.short	5563
	.short	5580
	.short	5610
	.short	5640
	.short	5669
	.short	5686
	.short	5716
	.short	5746
	.short	5775
	.short	5792
	.short	5822
	.short	5852
	.short	5881
	.short	5898
	.short	5928
	.short	5958
	.short	5987
	.short	5998
	.short	6009
	.short	6016
	.short	6019
	.short	6021
	.short	6024
	.short	6027
	.short	6029
	.short	6036
	.short	6048
	.short	6057
	.short	6064
	.short	6073
	.short	6085
	.short	6098
	.short	6111
	.short	6123
	.short	6134
	.short	6147
	.short	6159
	.short	6170
	.short	6183
	.short	6195
	.short	6206
	.short	6219
	.short	6231
	.short	6242
	.short	6255
	.short	6272
	.short	6301
	.short	6313
	.short	6343
	.short	6373
	.short	6390
	.short	6407
	.short	6424
	.short	6441
	.short	6458
	.short	6488
	.short	6518
	.short	6535
	.short	6552
	.short	6569
	.short	6586
	.short	6603
	.short	6633
	.short	6663
	.short	6680
	.short	6697
	.short	6714
	.short	6731
	.short	6748
	.short	6778
	.short	6808
	.short	6825
	.short	6842
	.short	6859
	.short	6876
	.short	6893
	.short	6923
	.short	6955
	.short	6985
	.short	7017
	.short	7029
	.short	7036
	.short	7039
	.short	7041
	.short	7044
	.short	7047
	.short	7049
	.short	7056
	.short	7073
	.short	7103
	.short	7133
	.short	7162
	.short	7192
	.short	7222
	.short	7239
	.short	7252
	.short	7264
	.short	7275
	.short	7288
	.short	7300
	.short	7311
	.short	7324
	.short	7336
	.short	7347
	.short	7360
	.short	7372
	.short	7383
	.short	7395
	.short	7404
	.short	7411
	.short	7420
	.short	7432
	.short	7449
	.short	7458
	.short	7465
	.short	7472
	.short	7475
	.short	7477
	.short	7480
	.short	7483
	.short	7485
	.section	.rodata._ZL32_indic_syllable_machine_indicies,"a",%progbits
	.align	2
	.type	_ZL32_indic_syllable_machine_indicies, %object
	.size	_ZL32_indic_syllable_machine_indicies, 14986
_ZL32_indic_syllable_machine_indicies:
	.short	1
	.short	0
	.short	2
	.short	3
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	2
	.short	0
	.short	1
	.short	0
	.short	0
	.short	0
	.short	0
	.short	4
	.short	0
	.short	5
	.short	5
	.short	6
	.short	1
	.short	0
	.short	7
	.short	7
	.short	6
	.short	0
	.short	6
	.short	0
	.short	8
	.short	8
	.short	9
	.short	1
	.short	0
	.short	10
	.short	10
	.short	9
	.short	0
	.short	9
	.short	0
	.short	11
	.short	11
	.short	12
	.short	1
	.short	0
	.short	13
	.short	13
	.short	12
	.short	0
	.short	12
	.short	0
	.short	14
	.short	14
	.short	15
	.short	1
	.short	0
	.short	16
	.short	16
	.short	15
	.short	0
	.short	15
	.short	0
	.short	17
	.short	0
	.short	0
	.short	0
	.short	1
	.short	0
	.short	18
	.short	0
	.short	19
	.short	0
	.short	20
	.short	14
	.short	14
	.short	15
	.short	1
	.short	0
	.short	21
	.short	0
	.short	22
	.short	0
	.short	23
	.short	11
	.short	11
	.short	12
	.short	1
	.short	0
	.short	24
	.short	0
	.short	25
	.short	0
	.short	26
	.short	8
	.short	8
	.short	9
	.short	1
	.short	0
	.short	27
	.short	0
	.short	28
	.short	0
	.short	29
	.short	5
	.short	5
	.short	6
	.short	1
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	29
	.short	0
	.short	29
	.short	5
	.short	5
	.short	6
	.short	1
	.short	0
	.short	0
	.short	0
	.short	0
	.short	30
	.short	29
	.short	0
	.short	31
	.short	5
	.short	5
	.short	6
	.short	1
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	31
	.short	0
	.short	31
	.short	5
	.short	5
	.short	6
	.short	1
	.short	0
	.short	0
	.short	0
	.short	0
	.short	32
	.short	31
	.short	0
	.short	33
	.short	5
	.short	5
	.short	6
	.short	1
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	33
	.short	0
	.short	33
	.short	5
	.short	5
	.short	6
	.short	1
	.short	0
	.short	0
	.short	0
	.short	0
	.short	34
	.short	33
	.short	0
	.short	35
	.short	5
	.short	5
	.short	6
	.short	1
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	35
	.short	0
	.short	35
	.short	5
	.short	5
	.short	6
	.short	1
	.short	0
	.short	0
	.short	0
	.short	0
	.short	36
	.short	35
	.short	0
	.short	37
	.short	5
	.short	5
	.short	6
	.short	1
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	37
	.short	0
	.short	37
	.short	5
	.short	5
	.short	6
	.short	1
	.short	0
	.short	0
	.short	0
	.short	0
	.short	38
	.short	37
	.short	0
	.short	40
	.short	39
	.short	41
	.short	42
	.short	39
	.short	39
	.short	39
	.short	39
	.short	39
	.short	39
	.short	39
	.short	39
	.short	39
	.short	39
	.short	39
	.short	39
	.short	39
	.short	41
	.short	39
	.short	40
	.short	39
	.short	39
	.short	39
	.short	39
	.short	43
	.short	39
	.short	44
	.short	44
	.short	45
	.short	40
	.short	39
	.short	46
	.short	46
	.short	45
	.short	39
	.short	45
	.short	39
	.short	47
	.short	47
	.short	48
	.short	40
	.short	39
	.short	49
	.short	49
	.short	48
	.short	39
	.short	48
	.short	39
	.short	50
	.short	50
	.short	51
	.short	40
	.short	39
	.short	52
	.short	52
	.short	51
	.short	39
	.short	51
	.short	39
	.short	53
	.short	53
	.short	54
	.short	40
	.short	39
	.short	55
	.short	55
	.short	54
	.short	39
	.short	54
	.short	39
	.short	56
	.short	39
	.short	39
	.short	39
	.short	40
	.short	39
	.short	57
	.short	39
	.short	58
	.short	39
	.short	59
	.short	53
	.short	53
	.short	54
	.short	40
	.short	39
	.short	60
	.short	39
	.short	61
	.short	39
	.short	62
	.short	50
	.short	50
	.short	51
	.short	40
	.short	39
	.short	63
	.short	39
	.short	64
	.short	39
	.short	65
	.short	47
	.short	47
	.short	48
	.short	40
	.short	39
	.short	66
	.short	39
	.short	67
	.short	39
	.short	68
	.short	44
	.short	44
	.short	45
	.short	40
	.short	39
	.short	39
	.short	39
	.short	39
	.short	39
	.short	68
	.short	39
	.short	68
	.short	44
	.short	44
	.short	45
	.short	40
	.short	39
	.short	39
	.short	39
	.short	39
	.short	69
	.short	68
	.short	39
	.short	70
	.short	44
	.short	44
	.short	45
	.short	40
	.short	39
	.short	39
	.short	39
	.short	39
	.short	39
	.short	70
	.short	39
	.short	70
	.short	44
	.short	44
	.short	45
	.short	40
	.short	39
	.short	39
	.short	39
	.short	39
	.short	71
	.short	70
	.short	39
	.short	72
	.short	44
	.short	44
	.short	45
	.short	40
	.short	39
	.short	39
	.short	39
	.short	39
	.short	39
	.short	72
	.short	39
	.short	72
	.short	44
	.short	44
	.short	45
	.short	40
	.short	39
	.short	39
	.short	39
	.short	39
	.short	73
	.short	72
	.short	39
	.short	74
	.short	44
	.short	44
	.short	45
	.short	40
	.short	39
	.short	39
	.short	39
	.short	39
	.short	39
	.short	74
	.short	39
	.short	74
	.short	44
	.short	44
	.short	45
	.short	40
	.short	39
	.short	39
	.short	39
	.short	39
	.short	75
	.short	74
	.short	39
	.short	76
	.short	44
	.short	44
	.short	45
	.short	40
	.short	39
	.short	39
	.short	39
	.short	39
	.short	39
	.short	76
	.short	39
	.short	76
	.short	44
	.short	44
	.short	45
	.short	40
	.short	39
	.short	39
	.short	39
	.short	39
	.short	77
	.short	76
	.short	39
	.short	79
	.short	78
	.short	80
	.short	81
	.short	78
	.short	78
	.short	78
	.short	78
	.short	78
	.short	78
	.short	78
	.short	78
	.short	78
	.short	78
	.short	78
	.short	78
	.short	78
	.short	80
	.short	78
	.short	79
	.short	78
	.short	78
	.short	78
	.short	78
	.short	82
	.short	78
	.short	83
	.short	83
	.short	84
	.short	79
	.short	78
	.short	86
	.short	86
	.short	84
	.short	85
	.short	84
	.short	85
	.short	87
	.short	87
	.short	88
	.short	79
	.short	78
	.short	89
	.short	89
	.short	88
	.short	78
	.short	88
	.short	78
	.short	90
	.short	90
	.short	91
	.short	79
	.short	78
	.short	92
	.short	92
	.short	91
	.short	78
	.short	91
	.short	78
	.short	93
	.short	93
	.short	94
	.short	79
	.short	78
	.short	95
	.short	95
	.short	94
	.short	78
	.short	94
	.short	78
	.short	96
	.short	78
	.short	78
	.short	78
	.short	79
	.short	78
	.short	97
	.short	78
	.short	98
	.short	78
	.short	99
	.short	93
	.short	93
	.short	94
	.short	79
	.short	78
	.short	100
	.short	78
	.short	101
	.short	78
	.short	102
	.short	90
	.short	90
	.short	91
	.short	79
	.short	78
	.short	103
	.short	78
	.short	104
	.short	78
	.short	105
	.short	87
	.short	87
	.short	88
	.short	79
	.short	78
	.short	106
	.short	78
	.short	107
	.short	78
	.short	108
	.short	83
	.short	83
	.short	84
	.short	79
	.short	78
	.short	78
	.short	78
	.short	78
	.short	78
	.short	108
	.short	78
	.short	108
	.short	83
	.short	83
	.short	84
	.short	79
	.short	78
	.short	78
	.short	78
	.short	78
	.short	109
	.short	108
	.short	78
	.short	110
	.short	83
	.short	83
	.short	84
	.short	79
	.short	78
	.short	78
	.short	78
	.short	78
	.short	78
	.short	110
	.short	78
	.short	110
	.short	83
	.short	83
	.short	84
	.short	79
	.short	78
	.short	78
	.short	78
	.short	78
	.short	111
	.short	110
	.short	78
	.short	112
	.short	83
	.short	83
	.short	84
	.short	79
	.short	78
	.short	78
	.short	78
	.short	78
	.short	78
	.short	112
	.short	78
	.short	112
	.short	83
	.short	83
	.short	84
	.short	79
	.short	78
	.short	78
	.short	78
	.short	78
	.short	113
	.short	112
	.short	78
	.short	114
	.short	83
	.short	83
	.short	84
	.short	79
	.short	78
	.short	78
	.short	78
	.short	78
	.short	78
	.short	114
	.short	78
	.short	114
	.short	83
	.short	83
	.short	84
	.short	79
	.short	78
	.short	78
	.short	78
	.short	78
	.short	115
	.short	114
	.short	78
	.short	116
	.short	83
	.short	83
	.short	84
	.short	79
	.short	78
	.short	78
	.short	78
	.short	78
	.short	78
	.short	116
	.short	78
	.short	118
	.short	117
	.short	119
	.short	120
	.short	117
	.short	117
	.short	117
	.short	117
	.short	117
	.short	117
	.short	117
	.short	117
	.short	117
	.short	117
	.short	117
	.short	117
	.short	117
	.short	119
	.short	117
	.short	118
	.short	117
	.short	117
	.short	117
	.short	117
	.short	121
	.short	117
	.short	122
	.short	122
	.short	123
	.short	118
	.short	117
	.short	124
	.short	124
	.short	123
	.short	117
	.short	123
	.short	117
	.short	125
	.short	125
	.short	126
	.short	118
	.short	117
	.short	127
	.short	127
	.short	126
	.short	117
	.short	126
	.short	117
	.short	128
	.short	128
	.short	129
	.short	118
	.short	117
	.short	130
	.short	130
	.short	129
	.short	117
	.short	129
	.short	117
	.short	131
	.short	131
	.short	132
	.short	118
	.short	117
	.short	133
	.short	133
	.short	132
	.short	117
	.short	132
	.short	117
	.short	134
	.short	117
	.short	117
	.short	117
	.short	118
	.short	117
	.short	135
	.short	117
	.short	136
	.short	117
	.short	137
	.short	131
	.short	131
	.short	132
	.short	118
	.short	117
	.short	138
	.short	117
	.short	139
	.short	117
	.short	140
	.short	128
	.short	128
	.short	129
	.short	118
	.short	117
	.short	141
	.short	117
	.short	142
	.short	117
	.short	143
	.short	125
	.short	125
	.short	126
	.short	118
	.short	117
	.short	144
	.short	117
	.short	145
	.short	117
	.short	146
	.short	122
	.short	122
	.short	123
	.short	118
	.short	117
	.short	117
	.short	117
	.short	117
	.short	117
	.short	146
	.short	117
	.short	146
	.short	122
	.short	122
	.short	123
	.short	118
	.short	117
	.short	117
	.short	117
	.short	117
	.short	147
	.short	146
	.short	117
	.short	148
	.short	122
	.short	122
	.short	123
	.short	118
	.short	117
	.short	117
	.short	117
	.short	117
	.short	117
	.short	148
	.short	117
	.short	148
	.short	122
	.short	122
	.short	123
	.short	118
	.short	117
	.short	117
	.short	117
	.short	117
	.short	149
	.short	148
	.short	117
	.short	150
	.short	122
	.short	122
	.short	123
	.short	118
	.short	117
	.short	117
	.short	117
	.short	117
	.short	117
	.short	150
	.short	117
	.short	150
	.short	122
	.short	122
	.short	123
	.short	118
	.short	117
	.short	117
	.short	117
	.short	117
	.short	151
	.short	150
	.short	117
	.short	152
	.short	122
	.short	122
	.short	123
	.short	118
	.short	117
	.short	117
	.short	117
	.short	117
	.short	117
	.short	152
	.short	117
	.short	152
	.short	122
	.short	122
	.short	123
	.short	118
	.short	117
	.short	117
	.short	117
	.short	117
	.short	153
	.short	152
	.short	117
	.short	154
	.short	122
	.short	122
	.short	123
	.short	118
	.short	117
	.short	117
	.short	117
	.short	117
	.short	117
	.short	154
	.short	117
	.short	154
	.short	122
	.short	122
	.short	123
	.short	118
	.short	117
	.short	117
	.short	117
	.short	117
	.short	155
	.short	154
	.short	117
	.short	116
	.short	83
	.short	83
	.short	84
	.short	79
	.short	78
	.short	78
	.short	78
	.short	78
	.short	156
	.short	116
	.short	78
	.short	86
	.short	86
	.short	84
	.short	1
	.short	0
	.short	114
	.short	83
	.short	83
	.short	84
	.short	157
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	114
	.short	0
	.short	114
	.short	83
	.short	83
	.short	84
	.short	157
	.short	0
	.short	0
	.short	0
	.short	0
	.short	158
	.short	114
	.short	0
	.short	159
	.short	159
	.short	160
	.short	1
	.short	0
	.short	7
	.short	7
	.short	160
	.short	0
	.short	161
	.short	161
	.short	162
	.short	157
	.short	0
	.short	163
	.short	163
	.short	162
	.short	0
	.short	162
	.short	0
	.short	164
	.short	164
	.short	165
	.short	157
	.short	0
	.short	166
	.short	166
	.short	165
	.short	0
	.short	165
	.short	0
	.short	167
	.short	167
	.short	168
	.short	157
	.short	0
	.short	169
	.short	169
	.short	168
	.short	0
	.short	168
	.short	0
	.short	157
	.short	0
	.short	170
	.short	171
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	170
	.short	0
	.short	157
	.short	0
	.short	0
	.short	0
	.short	0
	.short	172
	.short	0
	.short	173
	.short	0
	.short	0
	.short	0
	.short	157
	.short	0
	.short	174
	.short	0
	.short	175
	.short	0
	.short	176
	.short	167
	.short	167
	.short	168
	.short	157
	.short	0
	.short	177
	.short	0
	.short	178
	.short	0
	.short	179
	.short	164
	.short	164
	.short	165
	.short	157
	.short	0
	.short	180
	.short	0
	.short	181
	.short	0
	.short	182
	.short	161
	.short	161
	.short	162
	.short	157
	.short	0
	.short	183
	.short	0
	.short	184
	.short	0
	.short	186
	.short	185
	.short	188
	.short	189
	.short	190
	.short	191
	.short	192
	.short	193
	.short	84
	.short	79
	.short	194
	.short	195
	.short	196
	.short	196
	.short	156
	.short	197
	.short	198
	.short	199
	.short	200
	.short	201
	.short	187
	.short	187
	.short	187
	.short	187
	.short	187
	.short	187
	.short	187
	.short	187
	.short	187
	.short	187
	.short	187
	.short	187
	.short	202
	.short	187
	.short	204
	.short	205
	.short	206
	.short	207
	.short	6
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	38
	.short	210
	.short	203
	.short	203
	.short	211
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	212
	.short	203
	.short	213
	.short	205
	.short	214
	.short	214
	.short	6
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	210
	.short	203
	.short	203
	.short	211
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	212
	.short	203
	.short	205
	.short	214
	.short	214
	.short	6
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	210
	.short	203
	.short	203
	.short	211
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	212
	.short	203
	.short	215
	.short	203
	.short	203
	.short	203
	.short	19
	.short	216
	.short	203
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	217
	.short	203
	.short	215
	.short	203
	.short	218
	.short	219
	.short	220
	.short	221
	.short	6
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	36
	.short	222
	.short	203
	.short	203
	.short	211
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	212
	.short	203
	.short	223
	.short	219
	.short	224
	.short	224
	.short	6
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	222
	.short	203
	.short	203
	.short	211
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	212
	.short	203
	.short	219
	.short	224
	.short	224
	.short	6
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	222
	.short	203
	.short	203
	.short	211
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	212
	.short	203
	.short	225
	.short	203
	.short	203
	.short	203
	.short	19
	.short	226
	.short	203
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	217
	.short	203
	.short	225
	.short	203
	.short	227
	.short	228
	.short	229
	.short	230
	.short	6
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	34
	.short	231
	.short	203
	.short	203
	.short	211
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	212
	.short	203
	.short	232
	.short	228
	.short	233
	.short	233
	.short	6
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	231
	.short	203
	.short	203
	.short	211
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	212
	.short	203
	.short	228
	.short	233
	.short	233
	.short	6
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	231
	.short	203
	.short	203
	.short	211
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	212
	.short	203
	.short	234
	.short	203
	.short	203
	.short	203
	.short	19
	.short	235
	.short	203
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	217
	.short	203
	.short	234
	.short	203
	.short	236
	.short	237
	.short	238
	.short	239
	.short	6
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	32
	.short	240
	.short	203
	.short	203
	.short	211
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	212
	.short	203
	.short	241
	.short	237
	.short	242
	.short	242
	.short	6
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	240
	.short	203
	.short	203
	.short	211
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	212
	.short	203
	.short	237
	.short	242
	.short	242
	.short	6
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	240
	.short	203
	.short	203
	.short	211
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	212
	.short	203
	.short	243
	.short	203
	.short	203
	.short	203
	.short	19
	.short	244
	.short	203
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	217
	.short	203
	.short	243
	.short	203
	.short	245
	.short	246
	.short	247
	.short	248
	.short	6
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	30
	.short	249
	.short	203
	.short	203
	.short	211
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	212
	.short	203
	.short	250
	.short	246
	.short	251
	.short	251
	.short	6
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	249
	.short	203
	.short	203
	.short	211
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	212
	.short	203
	.short	246
	.short	251
	.short	251
	.short	6
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	249
	.short	203
	.short	203
	.short	211
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	212
	.short	203
	.short	19
	.short	252
	.short	203
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	217
	.short	203
	.short	253
	.short	253
	.short	203
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	217
	.short	203
	.short	254
	.short	203
	.short	203
	.short	255
	.short	208
	.short	209
	.short	203
	.short	208
	.short	209
	.short	203
	.short	256
	.short	203
	.short	208
	.short	257
	.short	203
	.short	208
	.short	258
	.short	203
	.short	208
	.short	203
	.short	254
	.short	203
	.short	203
	.short	203
	.short	208
	.short	209
	.short	203
	.short	259
	.short	203
	.short	260
	.short	261
	.short	203
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	4
	.short	203
	.short	3
	.short	203
	.short	253
	.short	253
	.short	203
	.short	1
	.short	208
	.short	209
	.short	203
	.short	253
	.short	253
	.short	203
	.short	1
	.short	208
	.short	209
	.short	203
	.short	259
	.short	203
	.short	253
	.short	253
	.short	203
	.short	1
	.short	208
	.short	209
	.short	203
	.short	259
	.short	203
	.short	260
	.short	253
	.short	203
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	4
	.short	203
	.short	19
	.short	203
	.short	262
	.short	262
	.short	6
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	217
	.short	203
	.short	263
	.short	28
	.short	264
	.short	265
	.short	9
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	217
	.short	203
	.short	28
	.short	264
	.short	265
	.short	9
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	217
	.short	203
	.short	264
	.short	264
	.short	9
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	217
	.short	203
	.short	266
	.short	25
	.short	267
	.short	268
	.short	12
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	217
	.short	203
	.short	25
	.short	267
	.short	268
	.short	12
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	217
	.short	203
	.short	267
	.short	267
	.short	12
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	217
	.short	203
	.short	269
	.short	22
	.short	270
	.short	271
	.short	15
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	217
	.short	203
	.short	22
	.short	270
	.short	271
	.short	15
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	217
	.short	203
	.short	270
	.short	270
	.short	15
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	217
	.short	203
	.short	272
	.short	19
	.short	253
	.short	273
	.short	203
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	217
	.short	203
	.short	19
	.short	253
	.short	273
	.short	203
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	217
	.short	203
	.short	253
	.short	274
	.short	203
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	217
	.short	203
	.short	19
	.short	203
	.short	253
	.short	253
	.short	203
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	217
	.short	203
	.short	2
	.short	3
	.short	203
	.short	203
	.short	19
	.short	252
	.short	203
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	217
	.short	203
	.short	2
	.short	203
	.short	246
	.short	251
	.short	251
	.short	6
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	249
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	212
	.short	203
	.short	246
	.short	251
	.short	251
	.short	6
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	249
	.short	203
	.short	245
	.short	246
	.short	251
	.short	251
	.short	6
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	249
	.short	203
	.short	203
	.short	211
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	212
	.short	203
	.short	245
	.short	246
	.short	247
	.short	251
	.short	6
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	30
	.short	249
	.short	203
	.short	203
	.short	211
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	212
	.short	203
	.short	243
	.short	203
	.short	275
	.short	203
	.short	262
	.short	262
	.short	6
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	217
	.short	203
	.short	243
	.short	203
	.short	243
	.short	203
	.short	203
	.short	203
	.short	253
	.short	253
	.short	203
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	217
	.short	203
	.short	243
	.short	203
	.short	243
	.short	203
	.short	203
	.short	203
	.short	253
	.short	276
	.short	203
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	217
	.short	203
	.short	243
	.short	203
	.short	243
	.short	203
	.short	275
	.short	203
	.short	253
	.short	253
	.short	203
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	217
	.short	203
	.short	243
	.short	203
	.short	243
	.short	3
	.short	203
	.short	203
	.short	19
	.short	244
	.short	203
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	217
	.short	203
	.short	243
	.short	203
	.short	236
	.short	237
	.short	242
	.short	242
	.short	6
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	240
	.short	203
	.short	203
	.short	211
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	212
	.short	203
	.short	236
	.short	237
	.short	238
	.short	242
	.short	6
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	32
	.short	240
	.short	203
	.short	203
	.short	211
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	212
	.short	203
	.short	234
	.short	203
	.short	277
	.short	203
	.short	262
	.short	262
	.short	6
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	217
	.short	203
	.short	234
	.short	203
	.short	234
	.short	203
	.short	203
	.short	203
	.short	253
	.short	253
	.short	203
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	217
	.short	203
	.short	234
	.short	203
	.short	234
	.short	203
	.short	203
	.short	203
	.short	253
	.short	278
	.short	203
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	217
	.short	203
	.short	234
	.short	203
	.short	234
	.short	203
	.short	277
	.short	203
	.short	253
	.short	253
	.short	203
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	217
	.short	203
	.short	234
	.short	203
	.short	234
	.short	3
	.short	203
	.short	203
	.short	19
	.short	235
	.short	203
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	217
	.short	203
	.short	234
	.short	203
	.short	227
	.short	228
	.short	233
	.short	233
	.short	6
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	231
	.short	203
	.short	203
	.short	211
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	212
	.short	203
	.short	227
	.short	228
	.short	229
	.short	233
	.short	6
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	34
	.short	231
	.short	203
	.short	203
	.short	211
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	212
	.short	203
	.short	225
	.short	203
	.short	279
	.short	203
	.short	262
	.short	262
	.short	6
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	217
	.short	203
	.short	225
	.short	203
	.short	225
	.short	203
	.short	203
	.short	203
	.short	253
	.short	253
	.short	203
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	217
	.short	203
	.short	225
	.short	203
	.short	225
	.short	203
	.short	203
	.short	203
	.short	253
	.short	280
	.short	203
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	217
	.short	203
	.short	225
	.short	203
	.short	225
	.short	203
	.short	279
	.short	203
	.short	253
	.short	253
	.short	203
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	217
	.short	203
	.short	225
	.short	203
	.short	225
	.short	3
	.short	203
	.short	203
	.short	19
	.short	226
	.short	203
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	217
	.short	203
	.short	225
	.short	203
	.short	218
	.short	219
	.short	224
	.short	224
	.short	6
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	222
	.short	203
	.short	203
	.short	211
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	212
	.short	203
	.short	218
	.short	219
	.short	220
	.short	224
	.short	6
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	36
	.short	222
	.short	203
	.short	203
	.short	211
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	212
	.short	203
	.short	215
	.short	203
	.short	281
	.short	203
	.short	262
	.short	262
	.short	6
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	217
	.short	203
	.short	215
	.short	203
	.short	215
	.short	203
	.short	203
	.short	203
	.short	253
	.short	253
	.short	203
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	217
	.short	203
	.short	215
	.short	203
	.short	215
	.short	203
	.short	203
	.short	203
	.short	253
	.short	282
	.short	203
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	217
	.short	203
	.short	215
	.short	203
	.short	215
	.short	203
	.short	281
	.short	203
	.short	253
	.short	253
	.short	203
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	217
	.short	203
	.short	215
	.short	203
	.short	215
	.short	3
	.short	203
	.short	203
	.short	19
	.short	216
	.short	203
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	217
	.short	203
	.short	215
	.short	203
	.short	204
	.short	205
	.short	214
	.short	214
	.short	6
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	210
	.short	203
	.short	203
	.short	211
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	212
	.short	203
	.short	204
	.short	205
	.short	206
	.short	214
	.short	6
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	38
	.short	210
	.short	203
	.short	203
	.short	211
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	212
	.short	203
	.short	284
	.short	285
	.short	286
	.short	287
	.short	45
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	77
	.short	290
	.short	283
	.short	283
	.short	291
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	292
	.short	283
	.short	293
	.short	285
	.short	294
	.short	287
	.short	45
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	290
	.short	283
	.short	283
	.short	291
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	292
	.short	283
	.short	285
	.short	294
	.short	287
	.short	45
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	290
	.short	283
	.short	283
	.short	291
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	292
	.short	283
	.short	295
	.short	283
	.short	283
	.short	283
	.short	58
	.short	296
	.short	283
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	297
	.short	283
	.short	295
	.short	283
	.short	298
	.short	299
	.short	300
	.short	301
	.short	45
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	75
	.short	302
	.short	283
	.short	283
	.short	291
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	292
	.short	283
	.short	303
	.short	299
	.short	304
	.short	304
	.short	45
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	302
	.short	283
	.short	283
	.short	291
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	292
	.short	283
	.short	299
	.short	304
	.short	304
	.short	45
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	302
	.short	283
	.short	283
	.short	291
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	292
	.short	283
	.short	305
	.short	283
	.short	283
	.short	283
	.short	58
	.short	306
	.short	283
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	297
	.short	283
	.short	305
	.short	283
	.short	307
	.short	308
	.short	309
	.short	310
	.short	45
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	73
	.short	311
	.short	283
	.short	283
	.short	291
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	292
	.short	283
	.short	312
	.short	308
	.short	313
	.short	313
	.short	45
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	311
	.short	283
	.short	283
	.short	291
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	292
	.short	283
	.short	308
	.short	313
	.short	313
	.short	45
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	311
	.short	283
	.short	283
	.short	291
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	292
	.short	283
	.short	314
	.short	283
	.short	283
	.short	283
	.short	58
	.short	315
	.short	283
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	297
	.short	283
	.short	314
	.short	283
	.short	316
	.short	317
	.short	318
	.short	319
	.short	45
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	71
	.short	320
	.short	283
	.short	283
	.short	291
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	292
	.short	283
	.short	321
	.short	317
	.short	322
	.short	322
	.short	45
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	320
	.short	283
	.short	283
	.short	291
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	292
	.short	283
	.short	317
	.short	322
	.short	322
	.short	45
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	320
	.short	283
	.short	283
	.short	291
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	292
	.short	283
	.short	323
	.short	283
	.short	283
	.short	283
	.short	58
	.short	324
	.short	283
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	297
	.short	283
	.short	323
	.short	283
	.short	325
	.short	326
	.short	327
	.short	328
	.short	45
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	69
	.short	329
	.short	283
	.short	283
	.short	291
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	292
	.short	283
	.short	330
	.short	326
	.short	331
	.short	331
	.short	45
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	329
	.short	283
	.short	283
	.short	291
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	292
	.short	283
	.short	326
	.short	331
	.short	331
	.short	45
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	329
	.short	283
	.short	283
	.short	291
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	292
	.short	283
	.short	58
	.short	332
	.short	283
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	297
	.short	283
	.short	333
	.short	333
	.short	283
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	297
	.short	283
	.short	334
	.short	283
	.short	283
	.short	335
	.short	288
	.short	289
	.short	283
	.short	288
	.short	289
	.short	283
	.short	336
	.short	283
	.short	288
	.short	337
	.short	283
	.short	288
	.short	338
	.short	283
	.short	288
	.short	283
	.short	334
	.short	283
	.short	283
	.short	283
	.short	288
	.short	289
	.short	283
	.short	339
	.short	283
	.short	340
	.short	341
	.short	283
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	43
	.short	283
	.short	42
	.short	283
	.short	333
	.short	333
	.short	283
	.short	40
	.short	288
	.short	289
	.short	283
	.short	333
	.short	333
	.short	283
	.short	40
	.short	288
	.short	289
	.short	283
	.short	339
	.short	283
	.short	333
	.short	333
	.short	283
	.short	40
	.short	288
	.short	289
	.short	283
	.short	339
	.short	283
	.short	340
	.short	333
	.short	283
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	43
	.short	283
	.short	58
	.short	283
	.short	342
	.short	342
	.short	45
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	297
	.short	283
	.short	343
	.short	67
	.short	344
	.short	345
	.short	48
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	297
	.short	283
	.short	67
	.short	344
	.short	345
	.short	48
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	297
	.short	283
	.short	344
	.short	344
	.short	48
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	297
	.short	283
	.short	346
	.short	64
	.short	347
	.short	348
	.short	51
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	297
	.short	283
	.short	64
	.short	347
	.short	348
	.short	51
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	297
	.short	283
	.short	347
	.short	347
	.short	51
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	297
	.short	283
	.short	349
	.short	61
	.short	350
	.short	351
	.short	54
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	297
	.short	283
	.short	61
	.short	350
	.short	351
	.short	54
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	297
	.short	283
	.short	350
	.short	350
	.short	54
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	297
	.short	283
	.short	352
	.short	58
	.short	333
	.short	353
	.short	283
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	297
	.short	283
	.short	58
	.short	333
	.short	353
	.short	283
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	297
	.short	283
	.short	333
	.short	354
	.short	283
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	297
	.short	283
	.short	58
	.short	283
	.short	333
	.short	333
	.short	283
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	297
	.short	283
	.short	41
	.short	42
	.short	283
	.short	283
	.short	58
	.short	332
	.short	283
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	297
	.short	283
	.short	41
	.short	283
	.short	326
	.short	331
	.short	331
	.short	45
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	329
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	292
	.short	283
	.short	326
	.short	331
	.short	331
	.short	45
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	329
	.short	283
	.short	325
	.short	326
	.short	331
	.short	331
	.short	45
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	329
	.short	283
	.short	283
	.short	291
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	292
	.short	283
	.short	325
	.short	326
	.short	327
	.short	331
	.short	45
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	69
	.short	329
	.short	283
	.short	283
	.short	291
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	292
	.short	283
	.short	323
	.short	283
	.short	355
	.short	283
	.short	342
	.short	342
	.short	45
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	297
	.short	283
	.short	323
	.short	283
	.short	323
	.short	283
	.short	283
	.short	283
	.short	333
	.short	333
	.short	283
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	297
	.short	283
	.short	323
	.short	283
	.short	323
	.short	283
	.short	283
	.short	283
	.short	333
	.short	356
	.short	283
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	297
	.short	283
	.short	323
	.short	283
	.short	323
	.short	283
	.short	355
	.short	283
	.short	333
	.short	333
	.short	283
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	297
	.short	283
	.short	323
	.short	283
	.short	323
	.short	42
	.short	283
	.short	283
	.short	58
	.short	324
	.short	283
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	297
	.short	283
	.short	323
	.short	283
	.short	316
	.short	317
	.short	322
	.short	322
	.short	45
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	320
	.short	283
	.short	283
	.short	291
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	292
	.short	283
	.short	316
	.short	317
	.short	318
	.short	322
	.short	45
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	71
	.short	320
	.short	283
	.short	283
	.short	291
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	292
	.short	283
	.short	314
	.short	283
	.short	357
	.short	283
	.short	342
	.short	342
	.short	45
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	297
	.short	283
	.short	314
	.short	283
	.short	314
	.short	283
	.short	283
	.short	283
	.short	333
	.short	333
	.short	283
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	297
	.short	283
	.short	314
	.short	283
	.short	314
	.short	283
	.short	283
	.short	283
	.short	333
	.short	358
	.short	283
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	297
	.short	283
	.short	314
	.short	283
	.short	314
	.short	283
	.short	357
	.short	283
	.short	333
	.short	333
	.short	283
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	297
	.short	283
	.short	314
	.short	283
	.short	314
	.short	42
	.short	283
	.short	283
	.short	58
	.short	315
	.short	283
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	297
	.short	283
	.short	314
	.short	283
	.short	307
	.short	308
	.short	313
	.short	313
	.short	45
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	311
	.short	283
	.short	283
	.short	291
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	292
	.short	283
	.short	307
	.short	308
	.short	309
	.short	313
	.short	45
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	73
	.short	311
	.short	283
	.short	283
	.short	291
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	292
	.short	283
	.short	305
	.short	283
	.short	359
	.short	283
	.short	342
	.short	342
	.short	45
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	297
	.short	283
	.short	305
	.short	283
	.short	305
	.short	283
	.short	283
	.short	283
	.short	333
	.short	333
	.short	283
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	297
	.short	283
	.short	305
	.short	283
	.short	305
	.short	283
	.short	283
	.short	283
	.short	333
	.short	360
	.short	283
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	297
	.short	283
	.short	305
	.short	283
	.short	305
	.short	283
	.short	359
	.short	283
	.short	333
	.short	333
	.short	283
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	297
	.short	283
	.short	305
	.short	283
	.short	305
	.short	42
	.short	283
	.short	283
	.short	58
	.short	306
	.short	283
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	297
	.short	283
	.short	305
	.short	283
	.short	298
	.short	299
	.short	304
	.short	304
	.short	45
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	302
	.short	283
	.short	283
	.short	291
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	292
	.short	283
	.short	298
	.short	299
	.short	300
	.short	304
	.short	45
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	75
	.short	302
	.short	283
	.short	283
	.short	291
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	292
	.short	283
	.short	295
	.short	283
	.short	361
	.short	283
	.short	342
	.short	342
	.short	45
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	297
	.short	283
	.short	295
	.short	283
	.short	295
	.short	283
	.short	283
	.short	283
	.short	333
	.short	333
	.short	283
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	297
	.short	283
	.short	295
	.short	283
	.short	295
	.short	283
	.short	283
	.short	283
	.short	333
	.short	362
	.short	283
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	297
	.short	283
	.short	295
	.short	283
	.short	295
	.short	283
	.short	361
	.short	283
	.short	333
	.short	333
	.short	283
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	297
	.short	283
	.short	295
	.short	283
	.short	76
	.short	44
	.short	44
	.short	45
	.short	40
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	76
	.short	283
	.short	295
	.short	42
	.short	283
	.short	283
	.short	58
	.short	296
	.short	283
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	297
	.short	283
	.short	295
	.short	283
	.short	284
	.short	285
	.short	294
	.short	287
	.short	45
	.short	40
	.short	288
	.short	289
	.short	283
	.short	283
	.short	283
	.short	290
	.short	283
	.short	283
	.short	291
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	283
	.short	292
	.short	283
	.short	364
	.short	191
	.short	365
	.short	365
	.short	84
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	197
	.short	363
	.short	363
	.short	200
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	202
	.short	363
	.short	191
	.short	365
	.short	365
	.short	84
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	197
	.short	363
	.short	363
	.short	200
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	202
	.short	363
	.short	366
	.short	363
	.short	363
	.short	363
	.short	98
	.short	367
	.short	363
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	368
	.short	363
	.short	366
	.short	363
	.short	369
	.short	370
	.short	371
	.short	372
	.short	84
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	115
	.short	373
	.short	363
	.short	363
	.short	200
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	202
	.short	363
	.short	374
	.short	370
	.short	375
	.short	375
	.short	84
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	373
	.short	363
	.short	363
	.short	200
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	202
	.short	363
	.short	370
	.short	375
	.short	375
	.short	84
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	373
	.short	363
	.short	363
	.short	200
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	202
	.short	363
	.short	376
	.short	363
	.short	363
	.short	363
	.short	98
	.short	377
	.short	363
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	368
	.short	363
	.short	376
	.short	363
	.short	378
	.short	379
	.short	380
	.short	381
	.short	84
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	113
	.short	382
	.short	363
	.short	363
	.short	200
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	202
	.short	363
	.short	383
	.short	379
	.short	384
	.short	384
	.short	84
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	382
	.short	363
	.short	363
	.short	200
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	202
	.short	363
	.short	379
	.short	384
	.short	384
	.short	84
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	382
	.short	363
	.short	363
	.short	200
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	202
	.short	363
	.short	385
	.short	363
	.short	363
	.short	363
	.short	98
	.short	386
	.short	363
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	368
	.short	363
	.short	385
	.short	363
	.short	387
	.short	388
	.short	389
	.short	390
	.short	84
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	111
	.short	391
	.short	363
	.short	363
	.short	200
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	202
	.short	363
	.short	392
	.short	388
	.short	393
	.short	393
	.short	84
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	391
	.short	363
	.short	363
	.short	200
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	202
	.short	363
	.short	388
	.short	393
	.short	393
	.short	84
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	391
	.short	363
	.short	363
	.short	200
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	202
	.short	363
	.short	394
	.short	363
	.short	363
	.short	363
	.short	98
	.short	395
	.short	363
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	368
	.short	363
	.short	394
	.short	363
	.short	396
	.short	397
	.short	398
	.short	399
	.short	84
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	109
	.short	400
	.short	363
	.short	363
	.short	200
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	202
	.short	363
	.short	401
	.short	397
	.short	402
	.short	402
	.short	84
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	400
	.short	363
	.short	363
	.short	200
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	202
	.short	363
	.short	397
	.short	402
	.short	402
	.short	84
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	400
	.short	363
	.short	363
	.short	200
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	202
	.short	363
	.short	98
	.short	403
	.short	363
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	368
	.short	363
	.short	404
	.short	404
	.short	363
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	368
	.short	363
	.short	405
	.short	363
	.short	363
	.short	406
	.short	194
	.short	195
	.short	363
	.short	194
	.short	195
	.short	363
	.short	407
	.short	363
	.short	194
	.short	408
	.short	363
	.short	194
	.short	409
	.short	363
	.short	194
	.short	363
	.short	405
	.short	363
	.short	363
	.short	363
	.short	194
	.short	195
	.short	363
	.short	410
	.short	363
	.short	411
	.short	412
	.short	363
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	82
	.short	363
	.short	81
	.short	363
	.short	404
	.short	404
	.short	363
	.short	79
	.short	194
	.short	195
	.short	363
	.short	404
	.short	404
	.short	363
	.short	79
	.short	194
	.short	195
	.short	363
	.short	410
	.short	363
	.short	404
	.short	404
	.short	363
	.short	79
	.short	194
	.short	195
	.short	363
	.short	410
	.short	363
	.short	411
	.short	404
	.short	363
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	82
	.short	363
	.short	98
	.short	363
	.short	413
	.short	413
	.short	84
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	368
	.short	363
	.short	414
	.short	107
	.short	415
	.short	416
	.short	88
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	368
	.short	363
	.short	107
	.short	415
	.short	416
	.short	88
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	368
	.short	363
	.short	415
	.short	415
	.short	88
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	368
	.short	363
	.short	417
	.short	104
	.short	418
	.short	419
	.short	91
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	368
	.short	363
	.short	104
	.short	418
	.short	419
	.short	91
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	368
	.short	363
	.short	418
	.short	418
	.short	91
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	368
	.short	363
	.short	420
	.short	101
	.short	421
	.short	422
	.short	94
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	368
	.short	363
	.short	101
	.short	421
	.short	422
	.short	94
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	368
	.short	363
	.short	421
	.short	421
	.short	94
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	368
	.short	363
	.short	423
	.short	98
	.short	404
	.short	424
	.short	363
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	368
	.short	363
	.short	98
	.short	404
	.short	424
	.short	363
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	368
	.short	363
	.short	404
	.short	425
	.short	363
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	368
	.short	363
	.short	98
	.short	363
	.short	404
	.short	404
	.short	363
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	368
	.short	363
	.short	80
	.short	81
	.short	363
	.short	363
	.short	98
	.short	403
	.short	363
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	368
	.short	363
	.short	80
	.short	363
	.short	397
	.short	402
	.short	402
	.short	84
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	400
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	202
	.short	363
	.short	397
	.short	402
	.short	402
	.short	84
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	400
	.short	363
	.short	396
	.short	397
	.short	402
	.short	402
	.short	84
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	400
	.short	363
	.short	363
	.short	200
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	202
	.short	363
	.short	396
	.short	397
	.short	398
	.short	402
	.short	84
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	109
	.short	400
	.short	363
	.short	363
	.short	200
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	202
	.short	363
	.short	394
	.short	363
	.short	426
	.short	363
	.short	413
	.short	413
	.short	84
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	368
	.short	363
	.short	394
	.short	363
	.short	394
	.short	363
	.short	363
	.short	363
	.short	404
	.short	404
	.short	363
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	368
	.short	363
	.short	394
	.short	363
	.short	394
	.short	363
	.short	363
	.short	363
	.short	404
	.short	427
	.short	363
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	368
	.short	363
	.short	394
	.short	363
	.short	394
	.short	363
	.short	426
	.short	363
	.short	404
	.short	404
	.short	363
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	368
	.short	363
	.short	394
	.short	363
	.short	394
	.short	81
	.short	363
	.short	363
	.short	98
	.short	395
	.short	363
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	368
	.short	363
	.short	394
	.short	363
	.short	387
	.short	388
	.short	393
	.short	393
	.short	84
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	391
	.short	363
	.short	363
	.short	200
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	202
	.short	363
	.short	387
	.short	388
	.short	389
	.short	393
	.short	84
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	111
	.short	391
	.short	363
	.short	363
	.short	200
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	202
	.short	363
	.short	385
	.short	363
	.short	428
	.short	363
	.short	413
	.short	413
	.short	84
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	368
	.short	363
	.short	385
	.short	363
	.short	385
	.short	363
	.short	363
	.short	363
	.short	404
	.short	404
	.short	363
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	368
	.short	363
	.short	385
	.short	363
	.short	385
	.short	363
	.short	363
	.short	363
	.short	404
	.short	429
	.short	363
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	368
	.short	363
	.short	385
	.short	363
	.short	385
	.short	363
	.short	428
	.short	363
	.short	404
	.short	404
	.short	363
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	368
	.short	363
	.short	385
	.short	363
	.short	385
	.short	81
	.short	363
	.short	363
	.short	98
	.short	386
	.short	363
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	368
	.short	363
	.short	385
	.short	363
	.short	378
	.short	379
	.short	384
	.short	384
	.short	84
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	382
	.short	363
	.short	363
	.short	200
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	202
	.short	363
	.short	378
	.short	379
	.short	380
	.short	384
	.short	84
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	113
	.short	382
	.short	363
	.short	363
	.short	200
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	202
	.short	363
	.short	376
	.short	363
	.short	430
	.short	363
	.short	413
	.short	413
	.short	84
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	368
	.short	363
	.short	376
	.short	363
	.short	376
	.short	363
	.short	363
	.short	363
	.short	404
	.short	404
	.short	363
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	368
	.short	363
	.short	376
	.short	363
	.short	376
	.short	363
	.short	363
	.short	363
	.short	404
	.short	431
	.short	363
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	368
	.short	363
	.short	376
	.short	363
	.short	376
	.short	363
	.short	430
	.short	363
	.short	404
	.short	404
	.short	363
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	368
	.short	363
	.short	376
	.short	363
	.short	376
	.short	81
	.short	363
	.short	363
	.short	98
	.short	377
	.short	363
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	368
	.short	363
	.short	376
	.short	363
	.short	369
	.short	370
	.short	375
	.short	375
	.short	84
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	373
	.short	363
	.short	363
	.short	200
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	202
	.short	363
	.short	369
	.short	370
	.short	371
	.short	375
	.short	84
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	115
	.short	373
	.short	363
	.short	363
	.short	200
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	202
	.short	363
	.short	366
	.short	363
	.short	432
	.short	363
	.short	413
	.short	413
	.short	84
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	368
	.short	363
	.short	366
	.short	363
	.short	366
	.short	363
	.short	363
	.short	363
	.short	404
	.short	404
	.short	363
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	368
	.short	363
	.short	366
	.short	363
	.short	366
	.short	363
	.short	363
	.short	363
	.short	404
	.short	433
	.short	363
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	368
	.short	363
	.short	366
	.short	363
	.short	366
	.short	363
	.short	432
	.short	363
	.short	404
	.short	404
	.short	363
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	368
	.short	363
	.short	366
	.short	363
	.short	366
	.short	81
	.short	363
	.short	363
	.short	98
	.short	367
	.short	363
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	368
	.short	363
	.short	366
	.short	363
	.short	116
	.short	83
	.short	83
	.short	84
	.short	79
	.short	434
	.short	434
	.short	434
	.short	434
	.short	156
	.short	116
	.short	434
	.short	190
	.short	191
	.short	365
	.short	365
	.short	84
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	197
	.short	363
	.short	363
	.short	200
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	202
	.short	363
	.short	116
	.short	83
	.short	83
	.short	84
	.short	79
	.short	434
	.short	434
	.short	434
	.short	434
	.short	434
	.short	116
	.short	434
	.short	436
	.short	437
	.short	438
	.short	439
	.short	123
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	155
	.short	442
	.short	435
	.short	435
	.short	443
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	444
	.short	435
	.short	445
	.short	437
	.short	439
	.short	439
	.short	123
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	442
	.short	435
	.short	435
	.short	443
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	444
	.short	435
	.short	437
	.short	439
	.short	439
	.short	123
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	442
	.short	435
	.short	435
	.short	443
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	444
	.short	435
	.short	446
	.short	435
	.short	435
	.short	435
	.short	136
	.short	447
	.short	435
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	448
	.short	435
	.short	446
	.short	435
	.short	449
	.short	450
	.short	451
	.short	452
	.short	123
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	153
	.short	453
	.short	435
	.short	435
	.short	443
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	444
	.short	435
	.short	454
	.short	450
	.short	455
	.short	455
	.short	123
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	453
	.short	435
	.short	435
	.short	443
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	444
	.short	435
	.short	450
	.short	455
	.short	455
	.short	123
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	453
	.short	435
	.short	435
	.short	443
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	444
	.short	435
	.short	456
	.short	435
	.short	435
	.short	435
	.short	136
	.short	457
	.short	435
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	448
	.short	435
	.short	456
	.short	435
	.short	458
	.short	459
	.short	460
	.short	461
	.short	123
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	151
	.short	462
	.short	435
	.short	435
	.short	443
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	444
	.short	435
	.short	463
	.short	459
	.short	464
	.short	464
	.short	123
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	462
	.short	435
	.short	435
	.short	443
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	444
	.short	435
	.short	459
	.short	464
	.short	464
	.short	123
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	462
	.short	435
	.short	435
	.short	443
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	444
	.short	435
	.short	465
	.short	435
	.short	435
	.short	435
	.short	136
	.short	466
	.short	435
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	448
	.short	435
	.short	465
	.short	435
	.short	467
	.short	468
	.short	469
	.short	470
	.short	123
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	149
	.short	471
	.short	435
	.short	435
	.short	443
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	444
	.short	435
	.short	472
	.short	468
	.short	473
	.short	473
	.short	123
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	471
	.short	435
	.short	435
	.short	443
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	444
	.short	435
	.short	468
	.short	473
	.short	473
	.short	123
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	471
	.short	435
	.short	435
	.short	443
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	444
	.short	435
	.short	474
	.short	435
	.short	435
	.short	435
	.short	136
	.short	475
	.short	435
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	448
	.short	435
	.short	474
	.short	435
	.short	476
	.short	477
	.short	478
	.short	479
	.short	123
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	147
	.short	480
	.short	435
	.short	435
	.short	443
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	444
	.short	435
	.short	481
	.short	477
	.short	482
	.short	482
	.short	123
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	480
	.short	435
	.short	435
	.short	443
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	444
	.short	435
	.short	477
	.short	482
	.short	482
	.short	123
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	480
	.short	435
	.short	435
	.short	443
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	444
	.short	435
	.short	136
	.short	483
	.short	435
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	448
	.short	435
	.short	484
	.short	484
	.short	435
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	448
	.short	435
	.short	485
	.short	435
	.short	435
	.short	486
	.short	440
	.short	441
	.short	435
	.short	440
	.short	441
	.short	435
	.short	487
	.short	435
	.short	440
	.short	488
	.short	435
	.short	440
	.short	489
	.short	435
	.short	440
	.short	435
	.short	485
	.short	435
	.short	435
	.short	435
	.short	440
	.short	441
	.short	435
	.short	490
	.short	435
	.short	491
	.short	492
	.short	435
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	121
	.short	435
	.short	120
	.short	435
	.short	484
	.short	484
	.short	435
	.short	118
	.short	440
	.short	441
	.short	435
	.short	484
	.short	484
	.short	435
	.short	118
	.short	440
	.short	441
	.short	435
	.short	490
	.short	435
	.short	484
	.short	484
	.short	435
	.short	118
	.short	440
	.short	441
	.short	435
	.short	490
	.short	435
	.short	491
	.short	484
	.short	435
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	121
	.short	435
	.short	136
	.short	435
	.short	493
	.short	493
	.short	123
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	448
	.short	435
	.short	494
	.short	145
	.short	495
	.short	496
	.short	126
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	448
	.short	435
	.short	145
	.short	495
	.short	496
	.short	126
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	448
	.short	435
	.short	495
	.short	495
	.short	126
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	448
	.short	435
	.short	497
	.short	142
	.short	498
	.short	499
	.short	129
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	448
	.short	435
	.short	142
	.short	498
	.short	499
	.short	129
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	448
	.short	435
	.short	498
	.short	498
	.short	129
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	448
	.short	435
	.short	500
	.short	139
	.short	501
	.short	502
	.short	132
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	448
	.short	435
	.short	139
	.short	501
	.short	502
	.short	132
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	448
	.short	435
	.short	501
	.short	501
	.short	132
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	448
	.short	435
	.short	503
	.short	136
	.short	484
	.short	504
	.short	435
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	448
	.short	435
	.short	136
	.short	484
	.short	504
	.short	435
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	448
	.short	435
	.short	484
	.short	505
	.short	435
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	448
	.short	435
	.short	136
	.short	435
	.short	484
	.short	484
	.short	435
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	448
	.short	435
	.short	119
	.short	120
	.short	435
	.short	435
	.short	136
	.short	483
	.short	435
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	448
	.short	435
	.short	119
	.short	435
	.short	477
	.short	482
	.short	482
	.short	123
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	480
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	444
	.short	435
	.short	477
	.short	482
	.short	482
	.short	123
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	480
	.short	435
	.short	476
	.short	477
	.short	482
	.short	482
	.short	123
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	480
	.short	435
	.short	435
	.short	443
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	444
	.short	435
	.short	476
	.short	477
	.short	478
	.short	482
	.short	123
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	147
	.short	480
	.short	435
	.short	435
	.short	443
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	444
	.short	435
	.short	474
	.short	435
	.short	506
	.short	435
	.short	493
	.short	493
	.short	123
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	448
	.short	435
	.short	474
	.short	435
	.short	474
	.short	435
	.short	435
	.short	435
	.short	484
	.short	484
	.short	435
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	448
	.short	435
	.short	474
	.short	435
	.short	474
	.short	435
	.short	435
	.short	435
	.short	484
	.short	507
	.short	435
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	448
	.short	435
	.short	474
	.short	435
	.short	474
	.short	435
	.short	506
	.short	435
	.short	484
	.short	484
	.short	435
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	448
	.short	435
	.short	474
	.short	435
	.short	474
	.short	120
	.short	435
	.short	435
	.short	136
	.short	475
	.short	435
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	448
	.short	435
	.short	474
	.short	435
	.short	467
	.short	468
	.short	473
	.short	473
	.short	123
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	471
	.short	435
	.short	435
	.short	443
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	444
	.short	435
	.short	467
	.short	468
	.short	469
	.short	473
	.short	123
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	149
	.short	471
	.short	435
	.short	435
	.short	443
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	444
	.short	435
	.short	465
	.short	435
	.short	508
	.short	435
	.short	493
	.short	493
	.short	123
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	448
	.short	435
	.short	465
	.short	435
	.short	465
	.short	435
	.short	435
	.short	435
	.short	484
	.short	484
	.short	435
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	448
	.short	435
	.short	465
	.short	435
	.short	465
	.short	435
	.short	435
	.short	435
	.short	484
	.short	509
	.short	435
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	448
	.short	435
	.short	465
	.short	435
	.short	465
	.short	435
	.short	508
	.short	435
	.short	484
	.short	484
	.short	435
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	448
	.short	435
	.short	465
	.short	435
	.short	465
	.short	120
	.short	435
	.short	435
	.short	136
	.short	466
	.short	435
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	448
	.short	435
	.short	465
	.short	435
	.short	458
	.short	459
	.short	464
	.short	464
	.short	123
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	462
	.short	435
	.short	435
	.short	443
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	444
	.short	435
	.short	458
	.short	459
	.short	460
	.short	464
	.short	123
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	151
	.short	462
	.short	435
	.short	435
	.short	443
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	444
	.short	435
	.short	456
	.short	435
	.short	510
	.short	435
	.short	493
	.short	493
	.short	123
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	448
	.short	435
	.short	456
	.short	435
	.short	456
	.short	435
	.short	435
	.short	435
	.short	484
	.short	484
	.short	435
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	448
	.short	435
	.short	456
	.short	435
	.short	456
	.short	435
	.short	435
	.short	435
	.short	484
	.short	511
	.short	435
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	448
	.short	435
	.short	456
	.short	435
	.short	456
	.short	435
	.short	510
	.short	435
	.short	484
	.short	484
	.short	435
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	448
	.short	435
	.short	456
	.short	435
	.short	456
	.short	120
	.short	435
	.short	435
	.short	136
	.short	457
	.short	435
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	448
	.short	435
	.short	456
	.short	435
	.short	449
	.short	450
	.short	455
	.short	455
	.short	123
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	453
	.short	435
	.short	435
	.short	443
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	444
	.short	435
	.short	449
	.short	450
	.short	451
	.short	455
	.short	123
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	153
	.short	453
	.short	435
	.short	435
	.short	443
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	444
	.short	435
	.short	446
	.short	435
	.short	512
	.short	435
	.short	493
	.short	493
	.short	123
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	448
	.short	435
	.short	446
	.short	435
	.short	446
	.short	435
	.short	435
	.short	435
	.short	484
	.short	484
	.short	435
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	448
	.short	435
	.short	446
	.short	435
	.short	446
	.short	435
	.short	435
	.short	435
	.short	484
	.short	513
	.short	435
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	448
	.short	435
	.short	446
	.short	435
	.short	446
	.short	435
	.short	512
	.short	435
	.short	484
	.short	484
	.short	435
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	448
	.short	435
	.short	446
	.short	435
	.short	446
	.short	120
	.short	435
	.short	435
	.short	136
	.short	447
	.short	435
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	448
	.short	435
	.short	446
	.short	435
	.short	436
	.short	437
	.short	439
	.short	439
	.short	123
	.short	118
	.short	440
	.short	441
	.short	435
	.short	435
	.short	435
	.short	442
	.short	435
	.short	435
	.short	443
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	435
	.short	444
	.short	435
	.short	188
	.short	189
	.short	190
	.short	191
	.short	514
	.short	365
	.short	84
	.short	79
	.short	194
	.short	195
	.short	196
	.short	196
	.short	156
	.short	197
	.short	363
	.short	188
	.short	200
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	363
	.short	202
	.short	363
	.short	204
	.short	515
	.short	206
	.short	207
	.short	6
	.short	1
	.short	208
	.short	209
	.short	203
	.short	203
	.short	38
	.short	210
	.short	203
	.short	203
	.short	211
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	212
	.short	203
	.short	215
	.short	189
	.short	190
	.short	191
	.short	516
	.short	517
	.short	84
	.short	157
	.short	518
	.short	519
	.short	203
	.short	196
	.short	156
	.short	520
	.short	203
	.short	215
	.short	200
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	202
	.short	203
	.short	116
	.short	521
	.short	521
	.short	84
	.short	157
	.short	208
	.short	209
	.short	203
	.short	203
	.short	156
	.short	522
	.short	203
	.short	523
	.short	203
	.short	203
	.short	524
	.short	518
	.short	519
	.short	203
	.short	518
	.short	519
	.short	203
	.short	256
	.short	203
	.short	518
	.short	525
	.short	203
	.short	518
	.short	526
	.short	203
	.short	518
	.short	203
	.short	523
	.short	203
	.short	203
	.short	203
	.short	518
	.short	519
	.short	203
	.short	527
	.short	3
	.short	363
	.short	363
	.short	404
	.short	433
	.short	363
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	368
	.short	363
	.short	527
	.short	363
	.short	528
	.short	370
	.short	529
	.short	530
	.short	84
	.short	157
	.short	518
	.short	519
	.short	203
	.short	203
	.short	158
	.short	373
	.short	203
	.short	203
	.short	200
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	202
	.short	203
	.short	531
	.short	370
	.short	532
	.short	532
	.short	84
	.short	157
	.short	518
	.short	519
	.short	203
	.short	203
	.short	203
	.short	373
	.short	203
	.short	203
	.short	200
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	202
	.short	203
	.short	370
	.short	532
	.short	532
	.short	84
	.short	157
	.short	518
	.short	519
	.short	203
	.short	203
	.short	203
	.short	373
	.short	203
	.short	203
	.short	200
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	202
	.short	203
	.short	528
	.short	370
	.short	532
	.short	532
	.short	84
	.short	157
	.short	518
	.short	519
	.short	203
	.short	203
	.short	203
	.short	373
	.short	203
	.short	203
	.short	200
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	202
	.short	203
	.short	528
	.short	370
	.short	529
	.short	532
	.short	84
	.short	157
	.short	518
	.short	519
	.short	203
	.short	203
	.short	158
	.short	373
	.short	203
	.short	203
	.short	200
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	203
	.short	202
	.short	203
	.short	215
	.short	203
	.short	281
	.short	116
	.short	533
	.short	533
	.short	160
	.short	157
	.short	208
	.short	209
	.short	203
	.short	203
	.short	203
	.short	522
	.short	203
	.short	215
	.short	203
	.short	534
	.short	184
	.short	535
	.short	536
	.short	162
	.short	157
	.short	518
	.short	519
	.short	203
	.short	203
	.short	203
	.short	537
	.short	203
	.short	184
	.short	535
	.short	536
	.short	162
	.short	157
	.short	518
	.short	519
	.short	203
	.short	203
	.short	203
	.short	537
	.short	203
	.short	535
	.short	535
	.short	162
	.short	157
	.short	518
	.short	519
	.short	203
	.short	203
	.short	203
	.short	537
	.short	203
	.short	538
	.short	181
	.short	539
	.short	540
	.short	165
	.short	157
	.short	518
	.short	519
	.short	203
	.short	203
	.short	203
	.short	537
	.short	203
	.short	181
	.short	539
	.short	540
	.short	165
	.short	157
	.short	518
	.short	519
	.short	203
	.short	203
	.short	203
	.short	537
	.short	203
	.short	539
	.short	539
	.short	165
	.short	157
	.short	518
	.short	519
	.short	203
	.short	203
	.short	203
	.short	537
	.short	203
	.short	541
	.short	178
	.short	542
	.short	543
	.short	168
	.short	157
	.short	518
	.short	519
	.short	203
	.short	203
	.short	203
	.short	537
	.short	203
	.short	178
	.short	542
	.short	543
	.short	168
	.short	157
	.short	518
	.short	519
	.short	203
	.short	203
	.short	203
	.short	537
	.short	203
	.short	542
	.short	542
	.short	168
	.short	157
	.short	518
	.short	519
	.short	203
	.short	203
	.short	203
	.short	537
	.short	203
	.short	544
	.short	175
	.short	545
	.short	546
	.short	203
	.short	157
	.short	518
	.short	519
	.short	203
	.short	203
	.short	203
	.short	537
	.short	203
	.short	175
	.short	545
	.short	546
	.short	203
	.short	157
	.short	518
	.short	519
	.short	203
	.short	203
	.short	203
	.short	537
	.short	203
	.short	545
	.short	545
	.short	203
	.short	157
	.short	518
	.short	519
	.short	203
	.short	203
	.short	203
	.short	537
	.short	203
	.short	547
	.short	203
	.short	548
	.short	549
	.short	203
	.short	157
	.short	518
	.short	519
	.short	203
	.short	203
	.short	172
	.short	203
	.short	171
	.short	203
	.short	545
	.short	545
	.short	203
	.short	157
	.short	518
	.short	519
	.short	203
	.short	545
	.short	545
	.short	203
	.short	157
	.short	518
	.short	519
	.short	203
	.short	547
	.short	203
	.short	545
	.short	545
	.short	203
	.short	157
	.short	518
	.short	519
	.short	203
	.short	547
	.short	203
	.short	548
	.short	545
	.short	203
	.short	157
	.short	518
	.short	519
	.short	203
	.short	203
	.short	172
	.short	203
	.short	527
	.short	171
	.short	363
	.short	363
	.short	98
	.short	367
	.short	363
	.short	79
	.short	194
	.short	195
	.short	363
	.short	363
	.short	363
	.short	368
	.short	363
	.short	527
	.short	363
	.short	551
	.short	550
	.short	552
	.short	552
	.short	550
	.short	186
	.short	553
	.short	554
	.short	550
	.short	552
	.short	552
	.short	550
	.short	186
	.short	553
	.short	554
	.short	550
	.short	555
	.short	550
	.short	550
	.short	556
	.short	553
	.short	554
	.short	550
	.short	553
	.short	554
	.short	550
	.short	557
	.short	550
	.short	553
	.short	558
	.short	550
	.short	553
	.short	559
	.short	550
	.short	553
	.short	550
	.short	555
	.short	550
	.short	550
	.short	550
	.short	553
	.short	554
	.short	550
	.short	0
	.section	.rodata._ZL35_indic_syllable_machine_trans_targs,"a",%progbits
	.align	2
	.type	_ZL35_indic_syllable_machine_trans_targs, %object
	.size	_ZL35_indic_syllable_machine_trans_targs, 1120
_ZL35_indic_syllable_machine_trans_targs:
	.short	178
	.short	200
	.short	207
	.short	209
	.short	210
	.short	4
	.short	213
	.short	5
	.short	7
	.short	216
	.short	8
	.short	10
	.short	219
	.short	11
	.short	13
	.short	222
	.short	14
	.short	16
	.short	17
	.short	199
	.short	19
	.short	20
	.short	221
	.short	22
	.short	23
	.short	218
	.short	25
	.short	26
	.short	215
	.short	224
	.short	229
	.short	233
	.short	236
	.short	240
	.short	243
	.short	247
	.short	250
	.short	254
	.short	257
	.short	178
	.short	280
	.short	287
	.short	289
	.short	290
	.short	41
	.short	293
	.short	42
	.short	44
	.short	296
	.short	45
	.short	47
	.short	299
	.short	48
	.short	50
	.short	302
	.short	51
	.short	53
	.short	54
	.short	279
	.short	56
	.short	57
	.short	301
	.short	59
	.short	60
	.short	298
	.short	62
	.short	63
	.short	295
	.short	304
	.short	309
	.short	313
	.short	316
	.short	320
	.short	323
	.short	327
	.short	330
	.short	334
	.short	338
	.short	178
	.short	359
	.short	366
	.short	368
	.short	369
	.short	78
	.short	372
	.short	178
	.short	79
	.short	81
	.short	375
	.short	82
	.short	84
	.short	378
	.short	85
	.short	87
	.short	381
	.short	88
	.short	90
	.short	91
	.short	358
	.short	93
	.short	94
	.short	380
	.short	96
	.short	97
	.short	377
	.short	99
	.short	100
	.short	374
	.short	383
	.short	388
	.short	392
	.short	395
	.short	399
	.short	402
	.short	406
	.short	409
	.short	413
	.short	178
	.short	440
	.short	447
	.short	449
	.short	450
	.short	114
	.short	453
	.short	115
	.short	117
	.short	456
	.short	118
	.short	120
	.short	459
	.short	121
	.short	123
	.short	462
	.short	124
	.short	126
	.short	127
	.short	439
	.short	129
	.short	130
	.short	461
	.short	132
	.short	133
	.short	458
	.short	135
	.short	136
	.short	455
	.short	464
	.short	469
	.short	473
	.short	476
	.short	480
	.short	483
	.short	487
	.short	490
	.short	494
	.short	497
	.short	417
	.short	502
	.short	513
	.short	152
	.short	516
	.short	154
	.short	519
	.short	155
	.short	157
	.short	522
	.short	158
	.short	160
	.short	525
	.short	161
	.short	528
	.short	530
	.short	531
	.short	166
	.short	167
	.short	527
	.short	169
	.short	170
	.short	524
	.short	172
	.short	173
	.short	521
	.short	175
	.short	176
	.short	518
	.short	178
	.short	536
	.short	178
	.short	179
	.short	259
	.short	339
	.short	341
	.short	416
	.short	418
	.short	361
	.short	362
	.short	419
	.short	415
	.short	498
	.short	499
	.short	386
	.short	534
	.short	387
	.short	178
	.short	180
	.short	182
	.short	36
	.short	258
	.short	202
	.short	203
	.short	256
	.short	227
	.short	228
	.short	181
	.short	35
	.short	183
	.short	252
	.short	1
	.short	184
	.short	186
	.short	34
	.short	251
	.short	249
	.short	185
	.short	33
	.short	187
	.short	245
	.short	188
	.short	190
	.short	32
	.short	244
	.short	242
	.short	189
	.short	31
	.short	191
	.short	238
	.short	192
	.short	194
	.short	30
	.short	237
	.short	235
	.short	193
	.short	29
	.short	195
	.short	231
	.short	196
	.short	198
	.short	28
	.short	230
	.short	226
	.short	197
	.short	27
	.short	212
	.short	0
	.short	201
	.short	206
	.short	178
	.short	204
	.short	205
	.short	208
	.short	2
	.short	211
	.short	3
	.short	214
	.short	6
	.short	24
	.short	217
	.short	9
	.short	21
	.short	220
	.short	12
	.short	18
	.short	223
	.short	15
	.short	225
	.short	232
	.short	234
	.short	239
	.short	241
	.short	246
	.short	248
	.short	253
	.short	255
	.short	178
	.short	260
	.short	262
	.short	73
	.short	336
	.short	282
	.short	283
	.short	337
	.short	307
	.short	308
	.short	261
	.short	72
	.short	263
	.short	332
	.short	38
	.short	264
	.short	266
	.short	71
	.short	331
	.short	329
	.short	265
	.short	70
	.short	267
	.short	325
	.short	268
	.short	270
	.short	69
	.short	324
	.short	322
	.short	269
	.short	68
	.short	271
	.short	318
	.short	272
	.short	274
	.short	67
	.short	317
	.short	315
	.short	273
	.short	66
	.short	275
	.short	311
	.short	276
	.short	278
	.short	65
	.short	310
	.short	306
	.short	277
	.short	64
	.short	292
	.short	37
	.short	281
	.short	286
	.short	178
	.short	284
	.short	285
	.short	288
	.short	39
	.short	291
	.short	40
	.short	294
	.short	43
	.short	61
	.short	297
	.short	46
	.short	58
	.short	300
	.short	49
	.short	55
	.short	303
	.short	52
	.short	305
	.short	312
	.short	314
	.short	319
	.short	321
	.short	326
	.short	328
	.short	333
	.short	335
	.short	178
	.short	340
	.short	109
	.short	342
	.short	411
	.short	75
	.short	343
	.short	345
	.short	108
	.short	410
	.short	408
	.short	344
	.short	107
	.short	346
	.short	404
	.short	347
	.short	349
	.short	106
	.short	403
	.short	401
	.short	348
	.short	105
	.short	350
	.short	397
	.short	351
	.short	353
	.short	104
	.short	396
	.short	394
	.short	352
	.short	103
	.short	354
	.short	390
	.short	355
	.short	357
	.short	102
	.short	389
	.short	385
	.short	356
	.short	101
	.short	371
	.short	74
	.short	360
	.short	365
	.short	178
	.short	363
	.short	364
	.short	367
	.short	76
	.short	370
	.short	77
	.short	373
	.short	80
	.short	98
	.short	376
	.short	83
	.short	95
	.short	379
	.short	86
	.short	92
	.short	382
	.short	89
	.short	384
	.short	391
	.short	393
	.short	398
	.short	400
	.short	405
	.short	407
	.short	412
	.short	414
	.short	178
	.short	178
	.short	420
	.short	422
	.short	146
	.short	145
	.short	442
	.short	443
	.short	496
	.short	467
	.short	468
	.short	421
	.short	423
	.short	492
	.short	111
	.short	424
	.short	426
	.short	144
	.short	491
	.short	489
	.short	425
	.short	143
	.short	427
	.short	485
	.short	428
	.short	430
	.short	142
	.short	484
	.short	482
	.short	429
	.short	141
	.short	431
	.short	478
	.short	432
	.short	434
	.short	140
	.short	477
	.short	475
	.short	433
	.short	139
	.short	435
	.short	471
	.short	436
	.short	438
	.short	138
	.short	470
	.short	466
	.short	437
	.short	137
	.short	452
	.short	110
	.short	441
	.short	446
	.short	178
	.short	444
	.short	445
	.short	448
	.short	112
	.short	451
	.short	113
	.short	454
	.short	116
	.short	134
	.short	457
	.short	119
	.short	131
	.short	460
	.short	122
	.short	128
	.short	463
	.short	125
	.short	465
	.short	472
	.short	474
	.short	479
	.short	481
	.short	486
	.short	488
	.short	493
	.short	495
	.short	147
	.short	500
	.short	501
	.short	515
	.short	504
	.short	505
	.short	533
	.short	148
	.short	509
	.short	503
	.short	508
	.short	506
	.short	507
	.short	510
	.short	511
	.short	150
	.short	514
	.short	512
	.short	149
	.short	151
	.short	517
	.short	153
	.short	174
	.short	163
	.short	520
	.short	156
	.short	171
	.short	523
	.short	159
	.short	168
	.short	526
	.short	162
	.short	165
	.short	529
	.short	164
	.short	532
	.short	178
	.short	535
	.short	177
	.short	538
	.short	539
	.short	537
	.short	542
	.short	178
	.short	540
	.short	541
	.section	.rodata._ZL37_indic_syllable_machine_trans_actions,"a",%progbits
	.align	2
	.type	_ZL37_indic_syllable_machine_trans_actions, %object
	.size	_ZL37_indic_syllable_machine_trans_actions, 560
_ZL37_indic_syllable_machine_trans_actions:
	.byte	1
	.byte	0
	.byte	2
	.byte	2
	.byte	2
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
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
	.byte	0
	.byte	2
	.byte	2
	.byte	2
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
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
	.byte	4
	.byte	0
	.byte	2
	.byte	2
	.byte	2
	.byte	0
	.byte	2
	.byte	5
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	2
	.byte	2
	.byte	6
	.byte	2
	.byte	6
	.byte	2
	.byte	6
	.byte	2
	.byte	6
	.byte	2
	.byte	7
	.byte	0
	.byte	2
	.byte	2
	.byte	2
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
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
	.byte	6
	.byte	0
	.byte	8
	.byte	0
	.byte	2
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	2
	.byte	2
	.byte	2
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	2
	.byte	9
	.byte	0
	.byte	12
	.byte	2
	.byte	2
	.byte	6
	.byte	2
	.byte	13
	.byte	13
	.byte	0
	.byte	0
	.byte	2
	.byte	2
	.byte	6
	.byte	2
	.byte	6
	.byte	2
	.byte	6
	.byte	14
	.byte	2
	.byte	2
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	0
	.byte	2
	.byte	2
	.byte	0
	.byte	2
	.byte	2
	.byte	0
	.byte	2
	.byte	2
	.byte	2
	.byte	0
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	0
	.byte	2
	.byte	2
	.byte	2
	.byte	0
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	0
	.byte	2
	.byte	2
	.byte	2
	.byte	0
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	0
	.byte	2
	.byte	2
	.byte	2
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	15
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	2
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	16
	.byte	2
	.byte	2
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	0
	.byte	2
	.byte	2
	.byte	0
	.byte	2
	.byte	2
	.byte	0
	.byte	2
	.byte	2
	.byte	2
	.byte	0
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	0
	.byte	2
	.byte	2
	.byte	2
	.byte	0
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	0
	.byte	2
	.byte	2
	.byte	2
	.byte	0
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	0
	.byte	2
	.byte	2
	.byte	2
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	17
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	2
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	18
	.byte	6
	.byte	0
	.byte	6
	.byte	6
	.byte	0
	.byte	6
	.byte	2
	.byte	0
	.byte	6
	.byte	2
	.byte	6
	.byte	0
	.byte	6
	.byte	6
	.byte	6
	.byte	2
	.byte	0
	.byte	6
	.byte	2
	.byte	6
	.byte	0
	.byte	6
	.byte	6
	.byte	6
	.byte	2
	.byte	0
	.byte	6
	.byte	2
	.byte	6
	.byte	0
	.byte	6
	.byte	6
	.byte	6
	.byte	2
	.byte	0
	.byte	6
	.byte	2
	.byte	6
	.byte	0
	.byte	6
	.byte	0
	.byte	0
	.byte	0
	.byte	19
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	2
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	20
	.byte	21
	.byte	2
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	0
	.byte	2
	.byte	2
	.byte	0
	.byte	2
	.byte	2
	.byte	2
	.byte	0
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	0
	.byte	2
	.byte	2
	.byte	2
	.byte	0
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	0
	.byte	2
	.byte	2
	.byte	2
	.byte	0
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	0
	.byte	2
	.byte	2
	.byte	2
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	22
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	2
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	0
	.byte	0
	.byte	8
	.byte	2
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	2
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
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	2
	.byte	23
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	24
	.byte	0
	.byte	0
	.section	.rodata._ZL40_indic_syllable_machine_to_state_actions,"a",%progbits
	.align	2
	.type	_ZL40_indic_syllable_machine_to_state_actions, %object
	.size	_ZL40_indic_syllable_machine_to_state_actions, 543
_ZL40_indic_syllable_machine_to_state_actions:
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
	.byte	0
	.byte	0
	.byte	10
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
	.section	.rodata._ZL42_indic_syllable_machine_from_state_actions,"a",%progbits
	.align	2
	.type	_ZL42_indic_syllable_machine_from_state_actions, %object
	.size	_ZL42_indic_syllable_machine_from_state_actions, 543
_ZL42_indic_syllable_machine_from_state_actions:
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
	.byte	0
	.byte	0
	.byte	11
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
	.section	.rodata._ZL33_indic_syllable_machine_eof_trans,"a",%progbits
	.align	2
	.type	_ZL33_indic_syllable_machine_eof_trans, %object
	.size	_ZL33_indic_syllable_machine_eof_trans, 1086
_ZL33_indic_syllable_machine_eof_trans:
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	40
	.short	40
	.short	40
	.short	40
	.short	40
	.short	40
	.short	40
	.short	40
	.short	40
	.short	40
	.short	40
	.short	40
	.short	40
	.short	40
	.short	40
	.short	40
	.short	40
	.short	40
	.short	40
	.short	40
	.short	40
	.short	40
	.short	40
	.short	40
	.short	40
	.short	40
	.short	40
	.short	40
	.short	40
	.short	40
	.short	40
	.short	40
	.short	40
	.short	40
	.short	40
	.short	40
	.short	40
	.short	79
	.short	79
	.short	79
	.short	79
	.short	86
	.short	86
	.short	79
	.short	79
	.short	79
	.short	79
	.short	79
	.short	79
	.short	79
	.short	79
	.short	79
	.short	79
	.short	79
	.short	79
	.short	79
	.short	79
	.short	79
	.short	79
	.short	79
	.short	79
	.short	79
	.short	79
	.short	79
	.short	79
	.short	79
	.short	79
	.short	79
	.short	79
	.short	79
	.short	79
	.short	79
	.short	79
	.short	118
	.short	118
	.short	118
	.short	118
	.short	118
	.short	118
	.short	118
	.short	118
	.short	118
	.short	118
	.short	118
	.short	118
	.short	118
	.short	118
	.short	118
	.short	118
	.short	118
	.short	118
	.short	118
	.short	118
	.short	118
	.short	118
	.short	118
	.short	118
	.short	118
	.short	118
	.short	118
	.short	118
	.short	118
	.short	118
	.short	118
	.short	118
	.short	118
	.short	118
	.short	118
	.short	118
	.short	118
	.short	79
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	1
	.short	186
	.short	0
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	284
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	364
	.short	435
	.short	364
	.short	435
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	436
	.short	364
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	364
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	204
	.short	364
	.short	551
	.short	551
	.short	551
	.short	551
	.short	551
	.short	551
	.short	551
	.short	551
	.short	551
	.section	.rodata._ZL28indic_syllable_machine_start,"a",%progbits
	.align	2
	.type	_ZL28indic_syllable_machine_start, %object
	.size	_ZL28indic_syllable_machine_start, 4
_ZL28indic_syllable_machine_start:
	.word	178
	.section	.rodata._ZL34indic_syllable_machine_first_final,"a",%progbits
	.align	2
	.type	_ZL34indic_syllable_machine_first_final, %object
	.size	_ZL34indic_syllable_machine_first_final, 4
_ZL34indic_syllable_machine_first_final:
	.word	178
	.section	.rodata._ZL28indic_syllable_machine_error,"a",%progbits
	.align	2
	.type	_ZL28indic_syllable_machine_error, %object
	.size	_ZL28indic_syllable_machine_error, 4
_ZL28indic_syllable_machine_error:
	.word	-1
	.section	.rodata._ZL30indic_syllable_machine_en_main,"a",%progbits
	.align	2
	.type	_ZL30indic_syllable_machine_en_main, %object
	.size	_ZL30indic_syllable_machine_en_main, 4
_ZL30indic_syllable_machine_en_main:
	.word	178
	.section	.rodata._ZZNK11hb_ot_map_t17get_stage_lookupsEjjPPKNS_12lookup_map_tEPjE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZNK11hb_ot_map_t17get_stage_lookupsEjjPPKNS_12lookup_map_tEPjE19__PRETTY_FUNCTION__, %object
	.size	_ZZNK11hb_ot_map_t17get_stage_lookupsEjjPPKNS_12lookup_map_tEPjE19__PRETTY_FUNCTION__, 120
_ZZNK11hb_ot_map_t17get_stage_lookupsEjjPPKNS_12lookup_map_tEPjE19__PRETTY_FUNCTION__:
	.ascii	"void hb_ot_map_t::get_stage_lookups(unsigned int, u"
	.ascii	"nsigned int, const hb_ot_map_t::lookup_map_t**, uns"
	.ascii	"igned int*) const\000"
	.section	.rodata._ZZL37initial_reordering_consonant_syllablePK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjjE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZL37initial_reordering_consonant_syllablePK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjjE19__PRETTY_FUNCTION__, %object
	.size	_ZZL37initial_reordering_consonant_syllablePK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjjE19__PRETTY_FUNCTION__, 124
_ZZL37initial_reordering_consonant_syllablePK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjjE19__PRETTY_FUNCTION__:
	.ascii	"void initial_reordering_consonant_syllable(const hb"
	.ascii	"_ot_shape_plan_t*, hb_face_t*, hb_buffer_t*, unsign"
	.ascii	"ed int, unsigned int)\000"
	.section	.rodata._ZZL25final_reordering_syllablePK18hb_ot_shape_plan_tP11hb_buffer_tjjE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZL25final_reordering_syllablePK18hb_ot_shape_plan_tP11hb_buffer_tjjE19__PRETTY_FUNCTION__, %object
	.size	_ZZL25final_reordering_syllablePK18hb_ot_shape_plan_tP11hb_buffer_tjjE19__PRETTY_FUNCTION__, 100
_ZZL25final_reordering_syllablePK18hb_ot_shape_plan_tP11hb_buffer_tjjE19__PRETTY_FUNCTION__:
	.ascii	"void final_reordering_syllable(const hb_ot_shape_pl"
	.ascii	"an_t*, hb_buffer_t*, unsigned int, unsigned int)\000"
	.hidden	_ZN11hb_buffer_t14deallocate_varEjjPKc
	.hidden	_ZN11hb_buffer_t12swap_buffersEv
	.hidden	_ZN11hb_buffer_t11output_infoERK15hb_glyph_info_t
	.hidden	_ZN11hb_buffer_t12clear_outputEv
	.hidden	_ZN11hb_buffer_t14merge_clustersEjj
	.hidden	_ZN11hb_buffer_t12allocate_varEjjPKc
	.hidden	_Z41hb_ot_layout_lookup_would_substitute_fastP9hb_face_tjPKjji
	.hidden	_Z23hb_indic_get_categoriesj
	.hidden	_ZN19hb_ot_map_builder_t9add_pauseEjPFvPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tE
	.hidden	_ZN19hb_ot_map_builder_t11add_featureEjj25hb_ot_map_feature_flags_t
	.hidden	_ZN11hb_buffer_t13make_room_forEjj
	.hidden	_hb_options
	.hidden	_Z16_hb_options_initv
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
