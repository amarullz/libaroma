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
	.file	"hb-ot-map.cc"
	.section	.text._ZL15_hb_bit_storagej,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL15_hb_bit_storagej, %function
_ZL15_hb_bit_storagej:
	.fnstart
.LFB7:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L2
.L3:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	lsrs	r3, r3, #1
	str	r3, [r7, #4]
.L2:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L3
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZL15_hb_bit_storagej, .-_ZL15_hb_bit_storagej
	.global	__aeabi_uidiv
	.section	.text._ZL30_hb_unsigned_int_mul_overflowsjj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL30_hb_unsigned_int_mul_overflowsjj, %function
_ZL30_hb_unsigned_int_mul_overflowsjj:
	.fnstart
.LFB9:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L6
	mov	r0, #-1
	ldr	r1, [r7]
	bl	__aeabi_uidiv(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bhi	.L6
	movs	r3, #1
	b	.L7
.L6:
	movs	r3, #0
.L7:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZL30_hb_unsigned_int_mul_overflowsjj, .-_ZL30_hb_unsigned_int_mul_overflowsjj
	.section	.text._ZN11hb_ot_map_t12lookup_map_t3cmpEPKS0_S2_,"axG",%progbits,_ZN11hb_ot_map_t12lookup_map_t3cmpEPKS0_S2_,comdat
	.align	2
	.weak	_ZN11hb_ot_map_t12lookup_map_t3cmpEPKS0_S2_
	.thumb
	.thumb_func
	.type	_ZN11hb_ot_map_t12lookup_map_t3cmpEPKS0_S2_, %function
_ZN11hb_ot_map_t12lookup_map_t3cmpEPKS0_S2_:
	.fnstart
.LFB113:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrh	r2, [r3]
	ldr	r3, [r7]
	ldrh	r3, [r3]
	cmp	r2, r3
	bcc	.L10
	ldr	r3, [r7, #4]
	ldrh	r2, [r3]
	ldr	r3, [r7]
	ldrh	r3, [r3]
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
	.size	_ZN11hb_ot_map_t12lookup_map_t3cmpEPKS0_S2_, .-_ZN11hb_ot_map_t12lookup_map_t3cmpEPKS0_S2_
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
	.section	.text._Zco25hb_ot_map_feature_flags_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Zco25hb_ot_map_feature_flags_t, %function
_Zco25hb_ot_map_feature_flags_t:
	.fnstart
.LFB127:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	mvns	r3, r3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_Zco25hb_ot_map_feature_flags_t, .-_Zco25hb_ot_map_feature_flags_t
	.section	.text._ZoRR25hb_ot_map_feature_flags_tS_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZoRR25hb_ot_map_feature_flags_tS_, %function
_ZoRR25hb_ot_map_feature_flags_tS_:
	.fnstart
.LFB128:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r1, [r7]
	bl	_Zor25hb_ot_map_feature_flags_tS_(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZoRR25hb_ot_map_feature_flags_tS_, .-_ZoRR25hb_ot_map_feature_flags_tS_
	.section	.text._ZaNR25hb_ot_map_feature_flags_tS_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZaNR25hb_ot_map_feature_flags_tS_, %function
_ZaNR25hb_ot_map_feature_flags_tS_:
	.fnstart
.LFB129:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r1, [r7]
	bl	_Zan25hb_ot_map_feature_flags_tS_(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZaNR25hb_ot_map_feature_flags_tS_, .-_ZaNR25hb_ot_map_feature_flags_tS_
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
	.section	.text._ZN19hb_ot_map_builder_t14add_gpos_pauseEPFvPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tE,"axG",%progbits,_ZN19hb_ot_map_builder_t14add_gpos_pauseEPFvPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tE,comdat
	.align	2
	.weak	_ZN19hb_ot_map_builder_t14add_gpos_pauseEPFvPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tE
	.thumb
	.thumb_func
	.type	_ZN19hb_ot_map_builder_t14add_gpos_pauseEPFvPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tE, %function
_ZN19hb_ot_map_builder_t14add_gpos_pauseEPFvPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tE:
	.fnstart
.LFB132:
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
	movs	r1, #1
	ldr	r2, [r7]
	bl	_ZN19hb_ot_map_builder_t9add_pauseEjPFvPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tE(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN19hb_ot_map_builder_t14add_gpos_pauseEPFvPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tE, .-_ZN19hb_ot_map_builder_t14add_gpos_pauseEPFvPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tE
	.section	.text._ZN19hb_ot_map_builder_t14feature_info_t3cmpEPKS0_S2_,"axG",%progbits,_ZN19hb_ot_map_builder_t14feature_info_t3cmpEPKS0_S2_,comdat
	.align	2
	.weak	_ZN19hb_ot_map_builder_t14feature_info_t3cmpEPKS0_S2_
	.thumb
	.thumb_func
	.type	_ZN19hb_ot_map_builder_t14feature_info_t3cmpEPKS0_S2_, %function
_ZN19hb_ot_map_builder_t14feature_info_t3cmpEPKS0_S2_:
	.fnstart
.LFB134:
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
	beq	.L28
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3]
	cmp	r2, r3
	bcs	.L29
	mov	r3, #-1
	b	.L31
.L29:
	movs	r3, #1
	b	.L31
.L28:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bcs	.L32
	mov	r3, #-1
	b	.L31
.L32:
	movs	r3, #1
.L31:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN19hb_ot_map_builder_t14feature_info_t3cmpEPKS0_S2_, .-_ZN19hb_ot_map_builder_t14feature_info_t3cmpEPKS0_S2_
	.section	.text._ZN11hb_ot_map_t11add_lookupsEP9hb_face_tjjjb,"ax",%progbits
	.align	2
	.global	_ZN11hb_ot_map_t11add_lookupsEP9hb_face_tjjjb
	.hidden	_ZN11hb_ot_map_t11add_lookupsEP9hb_face_tjjjb
	.thumb
	.thumb_func
	.type	_ZN11hb_ot_map_t11add_lookupsEP9hb_face_tjjjb, %function
_ZN11hb_ot_map_t11add_lookupsEP9hb_face_tjjjb:
	.fnstart
.LFB246:
	@ args = 8, pretend = 0, frame = 168
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #176
	sub	sp, sp, #176
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, .L44
.LPIC0:
	add	r3, pc
	ldr	r2, [r7, #4]
	ldr	r3, [r3, r2, lsl #2]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	hb_ot_layout_table_get_lookup_count(PLT)
	mov	r3, r0
	str	r3, [r7, #156]
	movs	r3, #0
	str	r3, [r7, #164]
.L42:
	add	r3, r7, #20
	mov	r0, r3
	bl	_Z12ARRAY_LENGTHIjLj32EEjRAT0__KT_(PLT)
	mov	r3, r0
	str	r3, [r7, #148]
	ldr	r3, .L44+4
.LPIC1:
	add	r3, pc
	ldr	r2, [r7, #4]
	ldr	r3, [r3, r2, lsl #2]
	add	r2, r7, #148
	str	r2, [sp]
	add	r2, r7, #20
	str	r2, [sp, #4]
	ldr	r0, [r7, #8]
	mov	r1, r3
	ldr	r2, [r7]
	ldr	r3, [r7, #164]
	bl	hb_ot_layout_feature_get_lookups(PLT)
	movs	r3, #0
	str	r3, [r7, #160]
	b	.L36
.L41:
	ldr	r3, [r7, #160]
	lsls	r3, r3, #2
	add	r2, r7, #168
	add	r3, r3, r2
	ldr	r2, [r3, #-148]
	ldr	r3, [r7, #156]
	cmp	r2, r3
	bcc	.L37
	b	.L38
.L37:
	ldr	r3, [r7, #4]
	mov	r2, #268
	mul	r3, r2, r3
	add	r3, r3, #312
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZN21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EE4pushEv(PLT)
	mov	r3, r0
	str	r3, [r7, #152]
	ldr	r3, [r7, #152]
	cmp	r3, #0
	bne	.L39
	b	.L35
.L39:
	ldr	r3, [r7, #152]
	ldr	r2, [r7, #176]
	str	r2, [r3, #4]
	ldr	r3, [r7, #160]
	lsls	r3, r3, #2
	add	r2, r7, #168
	add	r3, r3, r2
	ldr	r3, [r3, #-148]
	uxth	r2, r3
	ldr	r3, [r7, #152]
	strh	r2, [r3]	@ movhi
	ldrb	r3, [r7, #180]	@ zero_extendqisi2
	and	r3, r3, #1
	uxtb	r1, r3
	ldr	r2, [r7, #152]
	ldrb	r3, [r2, #2]
	bfi	r3, r1, #0, #1
	strb	r3, [r2, #2]
.L38:
	ldr	r3, [r7, #160]
	adds	r3, r3, #1
	str	r3, [r7, #160]
.L36:
	ldr	r3, [r7, #148]
	ldr	r2, [r7, #160]
	cmp	r2, r3
	bcc	.L41
	ldr	r3, [r7, #148]
	ldr	r2, [r7, #164]
	add	r3, r3, r2
	str	r3, [r7, #164]
	add	r3, r7, #20
	mov	r0, r3
	bl	_Z12ARRAY_LENGTHIjLj32EEjRAT0__KT_(PLT)
	mov	r2, r0
	ldr	r3, [r7, #148]
	cmp	r2, r3
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L42
.L35:
	adds	r7, r7, #168
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L45:
	.align	2
.L44:
	.word	_ZL10table_tags-(.LPIC0+4)
	.word	_ZL10table_tags-(.LPIC1+4)
	.fnend
	.size	_ZN11hb_ot_map_t11add_lookupsEP9hb_face_tjjjb, .-_ZN11hb_ot_map_t11add_lookupsEP9hb_face_tjjjb
	.section	.text._ZN19hb_ot_map_builder_tC2EP9hb_face_tPK23hb_segment_properties_t,"ax",%progbits
	.align	2
	.global	_ZN19hb_ot_map_builder_tC2EP9hb_face_tPK23hb_segment_properties_t
	.hidden	_ZN19hb_ot_map_builder_tC2EP9hb_face_tPK23hb_segment_properties_t
	.thumb
	.thumb_func
	.type	_ZN19hb_ot_map_builder_tC2EP9hb_face_tPK23hb_segment_properties_t, %function
_ZN19hb_ot_map_builder_tC2EP9hb_face_tPK23hb_segment_properties_t:
	.fnstart
.LFB248:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #48
	sub	sp, sp, #48
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r0, [r7, #12]
	movs	r1, #0
	mov	r2, #1120
	bl	memset(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	adds	r4, r2, #4
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #8]
	add	r2, r7, #16
	add	r3, r7, #16
	adds	r3, r3, #4
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	hb_ot_tags_from_script(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	mov	r0, r3
	bl	hb_ot_tag_from_language(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #36]
	b	.L47
.L48:
	ldr	r3, .L51
.LPIC2:
	add	r3, pc
	ldr	r2, [r7, #36]
	ldr	r3, [r3, r2, lsl #2]
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r1, [r3]
	ldr	r3, [r7, #36]
	adds	r3, r3, #8
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	adds	r3, r3, #4
	ldr	r2, [r7, #36]
	adds	r2, r2, #6
	lsls	r2, r2, #2
	ldr	r0, [r7, #12]
	add	r0, r0, r2
	add	r2, r7, #16
	str	r0, [sp]
	mov	r0, r1
	ldr	r1, [r7, #28]
	bl	hb_ot_layout_table_choose_script(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r2, r3
	ldr	r1, [r7, #12]
	ldr	r3, [r7, #36]
	add	r3, r3, r1
	adds	r3, r3, #32
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r1, [r7, #12]
	ldr	r3, [r7, #36]
	adds	r3, r3, #8
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r3, [r3, #4]
	ldr	r1, [r7, #36]
	adds	r1, r1, #10
	lsls	r1, r1, #2
	ldr	r0, [r7, #12]
	add	r1, r1, r0
	adds	r1, r1, #4
	str	r1, [sp]
	mov	r0, r2
	ldr	r1, [r7, #28]
	mov	r2, r3
	ldr	r3, [r7, #32]
	bl	hb_ot_layout_script_find_language(PLT)
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L47:
	ldr	r3, [r7, #36]
	cmp	r3, #1
	bls	.L48
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L52:
	.align	2
.L51:
	.word	_ZL10table_tags-(.LPIC2+4)
	.fnend
	.size	_ZN19hb_ot_map_builder_tC2EP9hb_face_tPK23hb_segment_properties_t, .-_ZN19hb_ot_map_builder_tC2EP9hb_face_tPK23hb_segment_properties_t
	.global	_ZN19hb_ot_map_builder_tC1EP9hb_face_tPK23hb_segment_properties_t
	.hidden	_ZN19hb_ot_map_builder_tC1EP9hb_face_tPK23hb_segment_properties_t
	.thumb_set _ZN19hb_ot_map_builder_tC1EP9hb_face_tPK23hb_segment_properties_t,_ZN19hb_ot_map_builder_tC2EP9hb_face_tPK23hb_segment_properties_t
	.section	.text._ZN19hb_ot_map_builder_t11add_featureEjj25hb_ot_map_feature_flags_t,"ax",%progbits
	.align	2
	.global	_ZN19hb_ot_map_builder_t11add_featureEjj25hb_ot_map_feature_flags_t
	.hidden	_ZN19hb_ot_map_builder_t11add_featureEjj25hb_ot_map_feature_flags_t
	.thumb
	.thumb_func
	.type	_ZN19hb_ot_map_builder_t11add_featureEjj25hb_ot_map_feature_flags_t, %function
_ZN19hb_ot_map_builder_t11add_featureEjj25hb_ot_map_feature_flags_t:
	.fnstart
.LFB250:
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
	ldr	r3, [r7, #12]
	adds	r3, r3, #60
	mov	r0, r3
	bl	_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EE4pushEv(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L54
	b	.L53
.L54:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L56
	b	.L53
.L56:
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #8]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #60]
	ldr	r3, [r7, #20]
	str	r2, [r3, #4]
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7, #20]
	ldr	r2, [r7]
	str	r2, [r3, #12]
	ldr	r0, [r7]
	movs	r1, #1
	bl	_Zan25hb_ot_map_feature_flags_tS_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L57
	ldr	r3, [r7, #4]
	b	.L58
.L57:
	movs	r3, #0
.L58:
	ldr	r2, [r7, #20]
	str	r3, [r2, #16]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #52]
	ldr	r3, [r7, #20]
	str	r2, [r3, #20]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #56]
	ldr	r3, [r7, #20]
	str	r2, [r3, #24]
.L53:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN19hb_ot_map_builder_t11add_featureEjj25hb_ot_map_feature_flags_t, .-_ZN19hb_ot_map_builder_t11add_featureEjj25hb_ot_map_feature_flags_t
	.section	.text._ZNK11hb_ot_map_t15collect_lookupsEjP8hb_set_t,"ax",%progbits
	.align	2
	.global	_ZNK11hb_ot_map_t15collect_lookupsEjP8hb_set_t
	.hidden	_ZNK11hb_ot_map_t15collect_lookupsEjP8hb_set_t
	.thumb
	.thumb_func
	.type	_ZNK11hb_ot_map_t15collect_lookupsEjP8hb_set_t, %function
_ZNK11hb_ot_map_t15collect_lookupsEjP8hb_set_t:
	.fnstart
.LFB251:
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
	b	.L60
.L61:
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
	mov	r3, r0
	ldrh	r3, [r3]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	hb_set_add(PLT)
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L60:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	mov	r1, #268
	mul	r3, r1, r3
	add	r3, r3, r2
	add	r3, r3, #316
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bhi	.L61
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK11hb_ot_map_t15collect_lookupsEjP8hb_set_t, .-_ZNK11hb_ot_map_t15collect_lookupsEjP8hb_set_t
	.section	.text._ZN19hb_ot_map_builder_t9add_pauseEjPFvPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tE,"ax",%progbits
	.align	2
	.global	_ZN19hb_ot_map_builder_t9add_pauseEjPFvPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tE
	.hidden	_ZN19hb_ot_map_builder_t9add_pauseEjPFvPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tE
	.thumb
	.thumb_func
	.type	_ZN19hb_ot_map_builder_t9add_pauseEjPFvPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tE, %function
_ZN19hb_ot_map_builder_t9add_pauseEjPFvPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tE:
	.fnstart
.LFB252:
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
	ldr	r3, [r7, #8]
	movs	r2, #76
	mul	r3, r2, r3
	add	r3, r3, #968
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t12stage_info_tELj8EE4pushEv(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L63
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	adds	r3, r3, #12
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #20]
	str	r2, [r3]
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #4]
	str	r2, [r3, #4]
.L63:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	adds	r3, r3, #12
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	adds	r2, r3, #1
	ldr	r1, [r7, #12]
	ldr	r3, [r7, #8]
	adds	r3, r3, #12
	lsls	r3, r3, #2
	add	r3, r3, r1
	str	r2, [r3, #4]
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN19hb_ot_map_builder_t9add_pauseEjPFvPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tE, .-_ZN19hb_ot_map_builder_t9add_pauseEjPFvPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tE
	.section	.text._ZN19hb_ot_map_builder_t7compileER11hb_ot_map_t,"ax",%progbits
	.align	2
	.global	_ZN19hb_ot_map_builder_t7compileER11hb_ot_map_t
	.hidden	_ZN19hb_ot_map_builder_t7compileER11hb_ot_map_t
	.thumb
	.thumb_func
	.type	_ZN19hb_ot_map_builder_t7compileER11hb_ot_map_t, %function
_ZN19hb_ot_map_builder_t7compileER11hb_ot_map_t:
	.fnstart
.LFB253:
	@ args = 0, pretend = 0, frame = 112
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	.save {r4, r5, r6, r7, lr}
	.pad #124
	sub	sp, sp, #124
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	movs	r2, #1
	str	r2, [r3, #12]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #108]
	b	.L65
.L66:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #108]
	adds	r2, r2, #6
	ldr	r1, [r3, r2, lsl #2]
	ldr	r3, [r7]
	ldr	r2, [r7, #108]
	str	r1, [r3, r2, lsl #2]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #108]
	add	r3, r3, r2
	adds	r3, r3, #32
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r1, [r7]
	ldr	r3, [r7, #108]
	add	r3, r3, r1
	adds	r3, r3, #8
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r0, [r3]
	ldr	r3, .L115
.LPIC3:
	add	r3, pc
	ldr	r2, [r7, #108]
	ldr	r1, [r3, r2, lsl #2]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #108]
	adds	r3, r3, #8
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r4, [r7, #4]
	ldr	r3, [r7, #108]
	adds	r3, r3, #10
	lsls	r3, r3, #2
	add	r3, r3, r4
	ldr	r3, [r3, #4]
	add	r5, r7, #32
	ldr	r4, [r7, #108]
	lsls	r4, r4, #2
	add	r5, r5, r4
	add	r6, r7, #24
	ldr	r4, [r7, #108]
	lsls	r4, r4, #2
	add	r4, r4, r6
	str	r5, [sp]
	str	r4, [sp, #4]
	bl	hb_ot_layout_language_get_required_feature(PLT)
	ldr	r3, [r7, #108]
	adds	r3, r3, #1
	str	r3, [r7, #108]
.L65:
	ldr	r3, [r7, #108]
	cmp	r3, #1
	bls	.L66
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	cmp	r3, #0
	beq	.L64
	ldr	r3, [r7, #4]
	adds	r3, r3, #60
	mov	r0, r3
	bl	_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EE5qsortEv(PLT)
	movs	r3, #0
	str	r3, [r7, #104]
	movs	r3, #1
	str	r3, [r7, #100]
	b	.L69
.L74:
	ldr	r3, [r7, #4]
	adds	r3, r3, #60
	mov	r0, r3
	ldr	r1, [r7, #100]
	bl	_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EEixEj(PLT)
	mov	r3, r0
	ldr	r4, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #60
	mov	r0, r3
	ldr	r1, [r7, #104]
	bl	_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EEixEj(PLT)
	mov	r3, r0
	ldr	r3, [r3]
	cmp	r4, r3
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L70
	ldr	r3, [r7, #4]
	adds	r3, r3, #60
	ldr	r2, [r7, #104]
	adds	r2, r2, #1
	str	r2, [r7, #104]
	mov	r0, r3
	ldr	r1, [r7, #104]
	bl	_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EEixEj(PLT)
	mov	r4, r0
	ldr	r3, [r7, #4]
	adds	r3, r3, #60
	mov	r0, r3
	ldr	r1, [r7, #100]
	bl	_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EEixEj(PLT)
	mov	r3, r0
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5, {r0, r1, r2}
	stmia	r4, {r0, r1, r2}
	b	.L71
.L70:
	ldr	r3, [r7, #4]
	adds	r3, r3, #60
	mov	r0, r3
	ldr	r1, [r7, #100]
	bl	_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EEixEj(PLT)
	mov	r3, r0
	ldr	r3, [r3, #12]
	mov	r0, r3
	movs	r1, #1
	bl	_Zan25hb_ot_map_feature_flags_tS_(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L72
	ldr	r3, [r7, #4]
	adds	r3, r3, #60
	mov	r0, r3
	ldr	r1, [r7, #104]
	bl	_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EEixEj(PLT)
	mov	r3, r0
	adds	r3, r3, #12
	mov	r0, r3
	movs	r1, #1
	bl	_ZoRR25hb_ot_map_feature_flags_tS_(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #60
	mov	r0, r3
	ldr	r1, [r7, #104]
	bl	_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EEixEj(PLT)
	mov	r4, r0
	ldr	r3, [r7, #4]
	adds	r3, r3, #60
	mov	r0, r3
	ldr	r1, [r7, #100]
	bl	_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EEixEj(PLT)
	mov	r3, r0
	ldr	r3, [r3, #8]
	str	r3, [r4, #8]
	ldr	r3, [r7, #4]
	adds	r3, r3, #60
	mov	r0, r3
	ldr	r1, [r7, #104]
	bl	_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EEixEj(PLT)
	mov	r4, r0
	ldr	r3, [r7, #4]
	adds	r3, r3, #60
	mov	r0, r3
	ldr	r1, [r7, #100]
	bl	_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EEixEj(PLT)
	mov	r3, r0
	ldr	r3, [r3, #16]
	str	r3, [r4, #16]
	b	.L73
.L72:
	ldr	r3, [r7, #4]
	adds	r3, r3, #60
	mov	r0, r3
	ldr	r1, [r7, #104]
	bl	_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EEixEj(PLT)
	mov	r3, r0
	add	r4, r3, #12
	movs	r0, #1
	bl	_Zco25hb_ot_map_feature_flags_t(PLT)
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	bl	_ZaNR25hb_ot_map_feature_flags_tS_(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #60
	mov	r0, r3
	ldr	r1, [r7, #104]
	bl	_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EEixEj(PLT)
	mov	r4, r0
	ldr	r3, [r7, #4]
	adds	r3, r3, #60
	mov	r0, r3
	ldr	r1, [r7, #104]
	bl	_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EEixEj(PLT)
	mov	r3, r0
	add	r5, r3, #8
	ldr	r3, [r7, #4]
	adds	r3, r3, #60
	mov	r0, r3
	ldr	r1, [r7, #100]
	bl	_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EEixEj(PLT)
	mov	r3, r0
	adds	r3, r3, #8
	mov	r0, r5
	mov	r1, r3
	bl	_Z3MAXIjET_RKS0_S2_(PLT)
	mov	r3, r0
	str	r3, [r4, #8]
.L73:
	ldr	r3, [r7, #4]
	adds	r3, r3, #60
	mov	r0, r3
	ldr	r1, [r7, #104]
	bl	_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EEixEj(PLT)
	mov	r3, r0
	add	r4, r3, #12
	ldr	r3, [r7, #4]
	adds	r3, r3, #60
	mov	r0, r3
	ldr	r1, [r7, #100]
	bl	_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EEixEj(PLT)
	mov	r3, r0
	ldr	r3, [r3, #12]
	mov	r0, r3
	movs	r1, #2
	bl	_Zan25hb_ot_map_feature_flags_tS_(PLT)
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	bl	_ZoRR25hb_ot_map_feature_flags_tS_(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #60
	mov	r0, r3
	ldr	r1, [r7, #104]
	bl	_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EEixEj(PLT)
	mov	r4, r0
	ldr	r3, [r7, #4]
	adds	r3, r3, #60
	mov	r0, r3
	ldr	r1, [r7, #104]
	bl	_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EEixEj(PLT)
	mov	r3, r0
	add	r5, r3, #20
	ldr	r3, [r7, #4]
	adds	r3, r3, #60
	mov	r0, r3
	ldr	r1, [r7, #100]
	bl	_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EEixEj(PLT)
	mov	r3, r0
	adds	r3, r3, #20
	mov	r0, r5
	mov	r1, r3
	bl	_Z3MINIjET_RKS0_S2_(PLT)
	mov	r3, r0
	str	r3, [r4, #20]
	ldr	r3, [r7, #4]
	adds	r3, r3, #60
	mov	r0, r3
	ldr	r1, [r7, #104]
	bl	_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EEixEj(PLT)
	mov	r4, r0
	ldr	r3, [r7, #4]
	adds	r3, r3, #60
	mov	r0, r3
	ldr	r1, [r7, #104]
	bl	_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EEixEj(PLT)
	mov	r3, r0
	add	r5, r3, #24
	ldr	r3, [r7, #4]
	adds	r3, r3, #60
	mov	r0, r3
	ldr	r1, [r7, #100]
	bl	_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EEixEj(PLT)
	mov	r3, r0
	adds	r3, r3, #24
	mov	r0, r5
	mov	r1, r3
	bl	_Z3MINIjET_RKS0_S2_(PLT)
	mov	r3, r0
	str	r3, [r4, #24]
.L71:
	ldr	r3, [r7, #100]
	adds	r3, r3, #1
	str	r3, [r7, #100]
.L69:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #60]
	ldr	r3, [r7, #100]
	cmp	r2, r3
	bhi	.L74
	ldr	r3, [r7, #4]
	add	r2, r3, #60
	ldr	r3, [r7, #104]
	adds	r3, r3, #1
	mov	r0, r2
	mov	r1, r3
	bl	_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EE6shrinkEj(PLT)
	movs	r3, #1
	str	r3, [r7, #96]
	movs	r3, #0
	str	r3, [r7, #92]
	b	.L75
.L97:
	ldr	r3, [r7, #4]
	adds	r3, r3, #60
	mov	r0, r3
	ldr	r1, [r7, #92]
	bl	_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EEixEj(PLT)
	mov	r3, r0
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #12]
	mov	r0, r3
	movs	r1, #1
	bl	_Zan25hb_ot_map_feature_flags_tS_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L76
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #8]
	cmp	r3, #1
	bne	.L76
	movs	r3, #1
	b	.L77
.L76:
	movs	r3, #0
.L77:
	cmp	r3, #0
	beq	.L78
	movs	r3, #0
	str	r3, [r7, #88]
	b	.L79
.L78:
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #8]
	mov	r0, r3
	bl	_ZL15_hb_bit_storagej(PLT)
	str	r0, [r7, #88]
.L79:
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L80
	ldr	r2, [r7, #96]
	ldr	r3, [r7, #88]
	add	r2, r2, r3
	movs	r3, #32
	cmp	r2, r3
	bls	.L81
.L80:
	b	.L96
.L81:
	movs	r3, #0
	str	r3, [r7, #84]
	movs	r3, #0
	str	r3, [r7, #80]
	b	.L83
.L86:
	ldr	r3, [r7, #80]
	lsls	r3, r3, #2
	add	r1, r7, #112
	add	r3, r3, r1
	ldr	r2, [r3, #-88]
	ldr	r3, [r7, #48]
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L84
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #80]
	adds	r3, r3, #4
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #80]
	lsls	r3, r3, #2
	add	r1, r7, #112
	add	r3, r3, r1
	str	r2, [r3, #-96]
	movs	r3, #1
	str	r3, [r7, #84]
	b	.L85
.L84:
	ldr	r3, [r7, #4]
	ldr	r0, [r3]
	ldr	r3, .L115+4
.LPIC4:
	add	r3, pc
	ldr	r2, [r7, #80]
	ldr	r1, [r3, r2, lsl #2]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #80]
	adds	r3, r3, #8
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r4, [r7, #4]
	ldr	r3, [r7, #80]
	adds	r3, r3, #10
	lsls	r3, r3, #2
	add	r3, r3, r4
	ldr	r3, [r3, #4]
	ldr	r4, [r7, #48]
	ldr	r5, [r4]
	add	r6, r7, #8
	ldr	r4, [r7, #80]
	lsls	r4, r4, #2
	add	r4, r4, r6
	str	r5, [sp]
	str	r4, [sp, #4]
	bl	hb_ot_layout_language_find_feature(PLT)
	mov	r3, r0
	ldr	r2, [r7, #84]
	orrs	r3, r3, r2
	str	r3, [r7, #84]
.L85:
	ldr	r3, [r7, #80]
	adds	r3, r3, #1
	str	r3, [r7, #80]
.L83:
	ldr	r3, [r7, #80]
	cmp	r3, #1
	bls	.L86
	ldr	r3, [r7, #84]
	cmp	r3, #0
	bne	.L87
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #12]
	mov	r0, r3
	movs	r1, #2
	bl	_Zan25hb_ot_map_feature_flags_tS_(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L87
	movs	r3, #1
	b	.L88
.L87:
	movs	r3, #0
.L88:
	cmp	r3, #0
	beq	.L89
	b	.L96
.L89:
	ldr	r3, [r7]
	adds	r3, r3, #16
	mov	r0, r3
	bl	_ZN21hb_prealloced_array_tIN11hb_ot_map_t13feature_map_tELj8EE4pushEv(PLT)
	mov	r3, r0
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L91
	ldr	r3, [r7, #48]
	ldr	r2, [r3]
	ldr	r3, [r7, #44]
	str	r2, [r3]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #44]
	str	r2, [r3, #4]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #44]
	str	r2, [r3, #8]
	ldr	r3, [r7, #48]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #44]
	str	r2, [r3, #12]
	ldr	r3, [r7, #48]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #44]
	str	r2, [r3, #16]
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #12]
	mov	r0, r3
	movs	r1, #4
	bl	_Zan25hb_ot_map_feature_flags_tS_(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r1, r3
	ldr	r2, [r7, #44]
	ldrb	r3, [r2, #32]
	bfi	r3, r1, #1, #1
	strb	r3, [r2, #32]
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #12]
	mov	r0, r3
	movs	r1, #1
	bl	_Zan25hb_ot_map_feature_flags_tS_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L92
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #8]
	cmp	r3, #1
	bne	.L92
	movs	r3, #1
	b	.L93
.L92:
	movs	r3, #0
.L93:
	cmp	r3, #0
	beq	.L94
	ldr	r3, [r7, #44]
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [r7, #44]
	movs	r2, #1
	str	r2, [r3, #24]
	b	.L95
.L94:
	ldr	r3, [r7, #44]
	ldr	r2, [r7, #96]
	str	r2, [r3, #20]
	ldr	r2, [r7, #96]
	ldr	r3, [r7, #88]
	add	r3, r3, r2
	movs	r2, #1
	lsls	r2, r2, r3
	ldr	r3, [r7, #96]
	movs	r1, #1
	lsl	r3, r1, r3
	subs	r3, r2, r3
	mov	r2, r3
	ldr	r3, [r7, #44]
	str	r2, [r3, #24]
	ldr	r2, [r7, #96]
	ldr	r3, [r7, #88]
	add	r3, r3, r2
	str	r3, [r7, #96]
	ldr	r3, [r7]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #48]
	ldr	r1, [r3, #16]
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #20]
	lsls	r1, r1, r3
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #24]
	ands	r3, r3, r1
	orrs	r2, r2, r3
	ldr	r3, [r7]
	str	r2, [r3, #12]
.L95:
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #20]
	movs	r2, #1
	lsl	r3, r2, r3
	mov	r2, r3
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #24]
	ands	r2, r2, r3
	ldr	r3, [r7, #44]
	str	r2, [r3, #28]
	ldr	r3, [r7, #84]
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r1, r3
	ldr	r2, [r7, #44]
	ldrb	r3, [r2, #32]
	bfi	r3, r1, #0, #1
	strb	r3, [r2, #32]
.L96:
	ldr	r3, [r7, #92]
	adds	r3, r3, #1
	str	r3, [r7, #92]
.L75:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #60]
	ldr	r3, [r7, #92]
	cmp	r2, r3
	bhi	.L97
.L91:
	ldr	r3, [r7, #4]
	adds	r3, r3, #60
	mov	r0, r3
	movs	r1, #0
	bl	_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EE6shrinkEj(PLT)
	ldr	r0, [r7, #4]
	movs	r1, #0
	bl	_ZN19hb_ot_map_builder_t14add_gsub_pauseEPFvPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tE(PLT)
	ldr	r0, [r7, #4]
	movs	r1, #0
	bl	_ZN19hb_ot_map_builder_t14add_gpos_pauseEPFvPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tE(PLT)
	movs	r3, #0
	str	r3, [r7, #76]
	b	.L98
.L114:
	movs	r3, #0
	str	r3, [r7, #72]
	movs	r3, #0
	str	r3, [r7, #68]
	movs	r3, #0
	str	r3, [r7, #64]
	b	.L99
.L113:
	ldr	r3, [r7, #76]
	lsls	r3, r3, #2
	add	r2, r7, #112
	add	r3, r3, r2
	ldr	r2, [r3, #-80]
	movw	r3, #65535
	cmp	r2, r3
	beq	.L100
	ldr	r3, [r7, #76]
	lsls	r3, r3, #2
	add	r1, r7, #112
	add	r3, r3, r1
	ldr	r2, [r3, #-96]
	ldr	r3, [r7, #64]
	cmp	r2, r3
	bne	.L100
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #76]
	lsls	r3, r3, #2
	add	r1, r7, #112
	add	r3, r3, r1
	ldr	r3, [r3, #-80]
	movs	r1, #1
	str	r1, [sp]
	movs	r1, #1
	str	r1, [sp, #4]
	ldr	r0, [r7]
	mov	r1, r2
	ldr	r2, [r7, #76]
	bl	_ZN11hb_ot_map_t11add_lookupsEP9hb_face_tjjjb(PLT)
.L100:
	movs	r3, #0
	str	r3, [r7, #60]
	b	.L101
.L103:
	ldr	r3, [r7]
	adds	r3, r3, #16
	mov	r0, r3
	ldr	r1, [r7, #60]
	bl	_ZN21hb_prealloced_array_tIN11hb_ot_map_t13feature_map_tELj8EEixEj(PLT)
	mov	r2, r0
	ldr	r3, [r7, #76]
	adds	r3, r3, #2
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #64]
	cmp	r2, r3
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L102
	ldr	r3, [r7, #4]
	ldr	r5, [r3]
	ldr	r3, [r7]
	adds	r3, r3, #16
	mov	r0, r3
	ldr	r1, [r7, #60]
	bl	_ZN21hb_prealloced_array_tIN11hb_ot_map_t13feature_map_tELj8EEixEj(PLT)
	mov	r2, r0
	ldr	r3, [r7, #76]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r4, [r3, #4]
	ldr	r3, [r7]
	adds	r3, r3, #16
	mov	r0, r3
	ldr	r1, [r7, #60]
	bl	_ZN21hb_prealloced_array_tIN11hb_ot_map_t13feature_map_tELj8EEixEj(PLT)
	mov	r3, r0
	ldr	r6, [r3, #24]
	ldr	r3, [r7]
	adds	r3, r3, #16
	mov	r0, r3
	ldr	r1, [r7, #60]
	bl	_ZN21hb_prealloced_array_tIN11hb_ot_map_t13feature_map_tELj8EEixEj(PLT)
	mov	r3, r0
	ldrb	r3, [r3, #32]
	ubfx	r3, r3, #1, #1
	uxtb	r3, r3
	str	r6, [sp]
	str	r3, [sp, #4]
	ldr	r0, [r7]
	mov	r1, r5
	ldr	r2, [r7, #76]
	mov	r3, r4
	bl	_ZN11hb_ot_map_t11add_lookupsEP9hb_face_tjjjb(PLT)
.L102:
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
.L101:
	ldr	r3, [r7]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #60]
	cmp	r2, r3
	bhi	.L103
	ldr	r2, [r7]
	ldr	r3, [r7, #76]
	mov	r1, #268
	mul	r3, r1, r3
	add	r3, r3, r2
	add	r3, r3, #316
	ldr	r2, [r3]
	ldr	r3, [r7, #68]
	cmp	r2, r3
	bls	.L104
	ldr	r3, [r7, #76]
	mov	r2, #268
	mul	r3, r2, r3
	add	r3, r3, #312
	ldr	r2, [r7]
	add	r3, r3, r2
	adds	r2, r3, #4
	ldr	r1, [r7]
	ldr	r3, [r7, #76]
	mov	r0, #268
	mul	r3, r0, r3
	add	r3, r3, r1
	add	r3, r3, #316
	ldr	r3, [r3]
	mov	r0, r2
	ldr	r1, [r7, #68]
	mov	r2, r3
	bl	_ZN21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EE5qsortEjj(PLT)
	ldr	r3, [r7, #68]
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	str	r3, [r7, #52]
	b	.L105
.L108:
	ldr	r3, [r7, #76]
	mov	r2, #268
	mul	r3, r2, r3
	add	r3, r3, #312
	ldr	r2, [r7]
	add	r3, r3, r2
	adds	r3, r3, #4
	mov	r0, r3
	ldr	r1, [r7, #52]
	bl	_ZN21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EEixEj(PLT)
	mov	r3, r0
	ldrh	r4, [r3]
	ldr	r3, [r7, #76]
	mov	r2, #268
	mul	r3, r2, r3
	add	r3, r3, #312
	ldr	r2, [r7]
	add	r3, r3, r2
	adds	r3, r3, #4
	mov	r0, r3
	ldr	r1, [r7, #56]
	bl	_ZN21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EEixEj(PLT)
	mov	r3, r0
	ldrh	r3, [r3]
	cmp	r4, r3
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L106
	ldr	r3, [r7, #76]
	mov	r2, #268
	mul	r3, r2, r3
	add	r3, r3, #312
	ldr	r2, [r7]
	add	r3, r3, r2
	adds	r3, r3, #4
	ldr	r2, [r7, #56]
	adds	r2, r2, #1
	str	r2, [r7, #56]
	mov	r0, r3
	ldr	r1, [r7, #56]
	bl	_ZN21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EEixEj(PLT)
	mov	r4, r0
	ldr	r3, [r7, #76]
	mov	r2, #268
	mul	r3, r2, r3
	add	r3, r3, #312
	ldr	r2, [r7]
	add	r3, r3, r2
	adds	r3, r3, #4
	mov	r0, r3
	ldr	r1, [r7, #52]
	bl	_ZN21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EEixEj(PLT)
	mov	r2, r0
	mov	r3, r4
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	b	.L107
.L106:
	ldr	r3, [r7, #76]
	mov	r2, #268
	mul	r3, r2, r3
	add	r3, r3, #312
	ldr	r2, [r7]
	add	r3, r3, r2
	adds	r3, r3, #4
	mov	r0, r3
	ldr	r1, [r7, #52]
	bl	_ZN21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EEixEj(PLT)
	mov	r3, r0
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #76]
	mov	r2, #268
	mul	r3, r2, r3
	add	r3, r3, #312
	ldr	r2, [r7]
	add	r3, r3, r2
	adds	r3, r3, #4
	mov	r0, r3
	ldr	r1, [r7, #56]
	bl	_ZN21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EEixEj(PLT)
	mov	r3, r0
	ldr	r2, [r3, #4]
	orrs	r2, r2, r4
	str	r2, [r3, #4]
	ldr	r3, [r7, #76]
	mov	r2, #268
	mul	r3, r2, r3
	add	r3, r3, #312
	ldr	r2, [r7]
	add	r3, r3, r2
	adds	r3, r3, #4
	mov	r0, r3
	ldr	r1, [r7, #52]
	bl	_ZN21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EEixEj(PLT)
	mov	r3, r0
	ldrb	r3, [r3, #2]
	ubfx	r3, r3, #0, #1
	uxtb	r4, r3
	ldr	r3, [r7, #76]
	mov	r2, #268
	mul	r3, r2, r3
	add	r3, r3, #312
	ldr	r2, [r7]
	add	r3, r3, r2
	adds	r3, r3, #4
	mov	r0, r3
	ldr	r1, [r7, #56]
	bl	_ZN21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EEixEj(PLT)
	mov	r3, r0
	ldrb	r2, [r3, #2]
	ubfx	r2, r2, #0, #1
	uxtb	r2, r2
	mov	r1, r2
	mov	r2, r4
	ands	r2, r2, r1
	uxtb	r2, r2
	and	r2, r2, #1
	uxtb	r1, r2
	ldrb	r2, [r3, #2]
	bfi	r2, r1, #0, #1
	strb	r2, [r3, #2]
.L107:
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	str	r3, [r7, #52]
.L105:
	ldr	r2, [r7]
	ldr	r3, [r7, #76]
	mov	r1, #268
	mul	r3, r1, r3
	add	r3, r3, r2
	add	r3, r3, #316
	ldr	r2, [r3]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bhi	.L108
	ldr	r3, [r7, #76]
	mov	r2, #268
	mul	r3, r2, r3
	add	r3, r3, #312
	ldr	r2, [r7]
	add	r3, r3, r2
	adds	r2, r3, #4
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	mov	r0, r2
	mov	r1, r3
	bl	_ZN21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EE6shrinkEj(PLT)
.L104:
	ldr	r2, [r7]
	ldr	r3, [r7, #76]
	mov	r1, #268
	mul	r3, r1, r3
	add	r3, r3, r2
	add	r3, r3, #316
	ldr	r3, [r3]
	str	r3, [r7, #68]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #76]
	movs	r1, #76
	mul	r3, r1, r3
	add	r3, r3, r2
	add	r3, r3, #968
	ldr	r2, [r3]
	ldr	r3, [r7, #72]
	cmp	r2, r3
	bls	.L109
	ldr	r3, [r7, #76]
	movs	r2, #76
	mul	r3, r2, r3
	add	r3, r3, #968
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	mov	r0, r3
	ldr	r1, [r7, #72]
	bl	_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t12stage_info_tELj8EEixEj(PLT)
	mov	r3, r0
	ldr	r2, [r3]
	ldr	r3, [r7, #64]
	cmp	r2, r3
	bne	.L109
	movs	r3, #1
	b	.L110
.L109:
	movs	r3, #0
.L110:
	cmp	r3, #0
	beq	.L111
	ldr	r3, [r7, #76]
	movs	r2, #44
	mul	r3, r2, r3
	add	r3, r3, #848
	ldr	r2, [r7]
	add	r3, r3, r2
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZN21hb_prealloced_array_tIN11hb_ot_map_t11stage_map_tELj4EE4pushEv(PLT)
	mov	r3, r0
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	cmp	r3, #0
	beq	.L112
	ldr	r3, [r7, #40]
	ldr	r2, [r7, #68]
	str	r2, [r3]
	ldr	r3, [r7, #76]
	movs	r2, #76
	mul	r3, r2, r3
	add	r3, r3, #968
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	mov	r0, r3
	ldr	r1, [r7, #72]
	bl	_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t12stage_info_tELj8EEixEj(PLT)
	mov	r3, r0
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #40]
	str	r2, [r3, #4]
.L112:
	ldr	r3, [r7, #72]
	adds	r3, r3, #1
	str	r3, [r7, #72]
.L111:
	ldr	r3, [r7, #64]
	adds	r3, r3, #1
	str	r3, [r7, #64]
.L99:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #76]
	adds	r3, r3, #12
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #64]
	cmp	r2, r3
	bhi	.L113
	ldr	r3, [r7, #76]
	adds	r3, r3, #1
	str	r3, [r7, #76]
.L98:
	ldr	r3, [r7, #76]
	cmp	r3, #1
	bls	.L114
.L64:
	adds	r7, r7, #116
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L116:
	.align	2
.L115:
	.word	_ZL10table_tags-(.LPIC3+4)
	.word	_ZL10table_tags-(.LPIC4+4)
	.fnend
	.size	_ZN19hb_ot_map_builder_t7compileER11hb_ot_map_t, .-_ZN19hb_ot_map_builder_t7compileER11hb_ot_map_t
	.section	.text._Z3MINIjET_RKS0_S2_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z3MINIjET_RKS0_S2_, %function
_Z3MINIjET_RKS0_S2_:
	.fnstart
.LFB255:
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
	bcs	.L118
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	b	.L119
.L118:
	ldr	r3, [r7]
	ldr	r3, [r3]
.L119:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_Z3MINIjET_RKS0_S2_, .-_Z3MINIjET_RKS0_S2_
	.section	.text._ZNK21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EEixEj,"axG",%progbits,_ZNK21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EEixEj,comdat
	.align	2
	.weak	_ZNK21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EEixEj
	.thumb
	.thumb_func
	.type	_ZNK21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EEixEj, %function
_ZNK21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EEixEj:
	.fnstart
.LFB263:
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
	.section	.text._Z12ARRAY_LENGTHIjLj32EEjRAT0__KT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z12ARRAY_LENGTHIjLj32EEjRAT0__KT_, %function
_Z12ARRAY_LENGTHIjLj32EEjRAT0__KT_:
	.fnstart
.LFB272:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #32
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_Z12ARRAY_LENGTHIjLj32EEjRAT0__KT_, .-_Z12ARRAY_LENGTHIjLj32EEjRAT0__KT_
	.section	.text._ZN21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EE4pushEv,"axG",%progbits,_ZN21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EE4pushEv,comdat
	.align	2
	.weak	_ZN21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EE4pushEv
	.thumb
	.thumb_func
	.type	_ZN21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EE4pushEv, %function
_ZN21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EE4pushEv:
	.fnstart
.LFB273:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L126
	ldr	r3, [r7, #4]
	add	r2, r3, #12
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	mov	r0, r3
	bl	_Z12ARRAY_LENGTHIN11hb_ot_map_t12lookup_map_tELj32EEjRAT0__KT_(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
.L126:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bcs	.L127
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r0, r3, #1
	ldr	r1, [r7, #4]
	str	r0, [r1]
	lsls	r3, r3, #3
	add	r3, r3, r2
	b	.L128
.L127:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsrs	r3, r3, #1
	add	r3, r3, r2
	adds	r3, r3, #8
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	cmp	r2, r3
	bne	.L129
	ldr	r0, [r7, #16]
	movs	r1, #8
	bl	calloc(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L130
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	lsls	r3, r3, #3
	ldr	r0, [r7, #20]
	mov	r1, r2
	mov	r2, r3
	bl	memcpy(PLT)
	b	.L130
.L129:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bhi	.L131
	ldr	r0, [r7, #16]
	movs	r1, #8
	bl	_ZL30_hb_unsigned_int_mul_overflowsjj(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L132
.L131:
	movs	r3, #1
	b	.L133
.L132:
	movs	r3, #0
.L133:
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #15]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L130
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #16]
	lsls	r3, r3, #3
	mov	r0, r2
	mov	r1, r3
	bl	realloc(PLT)
	str	r0, [r7, #20]
.L130:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L134
	movs	r3, #0
	b	.L128
.L134:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #20]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #16]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r0, r3, #1
	ldr	r1, [r7, #4]
	str	r0, [r1]
	lsls	r3, r3, #3
	add	r3, r3, r2
.L128:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EE4pushEv, .-_ZN21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EE4pushEv
	.section	.text._ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EE4pushEv,"axG",%progbits,_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EE4pushEv,comdat
	.align	2
	.weak	_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EE4pushEv
	.thumb
	.thumb_func
	.type	_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EE4pushEv, %function
_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EE4pushEv:
	.fnstart
.LFB274:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L136
	ldr	r3, [r7, #4]
	add	r2, r3, #12
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	mov	r0, r3
	bl	_Z12ARRAY_LENGTHIN19hb_ot_map_builder_t14feature_info_tELj32EEjRAT0__KT_(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
.L136:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bcs	.L137
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	adds	r0, r2, #1
	ldr	r3, [r7, #4]
	str	r0, [r3]
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	b	.L138
.L137:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsrs	r3, r3, #1
	add	r3, r3, r2
	adds	r3, r3, #8
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	cmp	r2, r3
	bne	.L139
	ldr	r0, [r7, #16]
	movs	r1, #28
	bl	calloc(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L140
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r0, [r7, #20]
	mov	r2, r3
	bl	memcpy(PLT)
	b	.L140
.L139:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bhi	.L141
	ldr	r0, [r7, #16]
	movs	r1, #28
	bl	_ZL30_hb_unsigned_int_mul_overflowsjj(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L142
.L141:
	movs	r3, #1
	b	.L143
.L142:
	movs	r3, #0
.L143:
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #15]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L140
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #8]
	ldr	r2, [r7, #16]
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	mov	r0, r1
	mov	r1, r3
	bl	realloc(PLT)
	str	r0, [r7, #20]
.L140:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L144
	movs	r3, #0
	b	.L138
.L144:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #20]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #16]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	adds	r0, r2, #1
	ldr	r3, [r7, #4]
	str	r0, [r3]
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
.L138:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EE4pushEv, .-_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EE4pushEv
	.section	.text._ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t12stage_info_tELj8EE4pushEv,"axG",%progbits,_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t12stage_info_tELj8EE4pushEv,comdat
	.align	2
	.weak	_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t12stage_info_tELj8EE4pushEv
	.thumb
	.thumb_func
	.type	_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t12stage_info_tELj8EE4pushEv, %function
_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t12stage_info_tELj8EE4pushEv:
	.fnstart
.LFB275:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L146
	ldr	r3, [r7, #4]
	add	r2, r3, #12
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	mov	r0, r3
	bl	_Z12ARRAY_LENGTHIN19hb_ot_map_builder_t12stage_info_tELj8EEjRAT0__KT_(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
.L146:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bcs	.L147
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r0, r3, #1
	ldr	r1, [r7, #4]
	str	r0, [r1]
	lsls	r3, r3, #3
	add	r3, r3, r2
	b	.L148
.L147:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsrs	r3, r3, #1
	add	r3, r3, r2
	adds	r3, r3, #8
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	cmp	r2, r3
	bne	.L149
	ldr	r0, [r7, #16]
	movs	r1, #8
	bl	calloc(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L150
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	lsls	r3, r3, #3
	ldr	r0, [r7, #20]
	mov	r1, r2
	mov	r2, r3
	bl	memcpy(PLT)
	b	.L150
.L149:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bhi	.L151
	ldr	r0, [r7, #16]
	movs	r1, #8
	bl	_ZL30_hb_unsigned_int_mul_overflowsjj(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L152
.L151:
	movs	r3, #1
	b	.L153
.L152:
	movs	r3, #0
.L153:
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #15]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L150
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #16]
	lsls	r3, r3, #3
	mov	r0, r2
	mov	r1, r3
	bl	realloc(PLT)
	str	r0, [r7, #20]
.L150:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L154
	movs	r3, #0
	b	.L148
.L154:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #20]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #16]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r0, r3, #1
	ldr	r1, [r7, #4]
	str	r0, [r1]
	lsls	r3, r3, #3
	add	r3, r3, r2
.L148:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t12stage_info_tELj8EE4pushEv, .-_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t12stage_info_tELj8EE4pushEv
	.section	.text._ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EE5qsortEv,"axG",%progbits,_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EE5qsortEv,comdat
	.align	2
	.weak	_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EE5qsortEv
	.thumb
	.thumb_func
	.type	_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EE5qsortEv, %function
_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EE5qsortEv:
	.fnstart
.LFB276:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #12
	sub	sp, sp, #12
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r4, .L156
.LPIC5:
	add	r4, pc
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	movs	r2, #28
	ldr	r3, .L156+4
	ldr	r3, [r4, r3]
	bl	qsort(PLT)
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L157:
	.align	2
.L156:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC5+4)
	.word	_ZN19hb_ot_map_builder_t14feature_info_t3cmpEPKS0_S2_(GOT)
	.fnend
	.size	_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EE5qsortEv, .-_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EE5qsortEv
	.section	.text._ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EEixEj,"axG",%progbits,_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EEixEj,comdat
	.align	2
	.weak	_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EEixEj
	.thumb
	.thumb_func
	.type	_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EEixEj, %function
_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EEixEj:
	.fnstart
.LFB277:
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
	lsls	r3, r3, #3
	subs	r3, r3, r2
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
	.size	_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EEixEj, .-_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EEixEj
	.section	.text._Z3MAXIjET_RKS0_S2_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z3MAXIjET_RKS0_S2_, %function
_Z3MAXIjET_RKS0_S2_:
	.fnstart
.LFB278:
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
	bls	.L161
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	b	.L162
.L161:
	ldr	r3, [r7]
	ldr	r3, [r3]
.L162:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_Z3MAXIjET_RKS0_S2_, .-_Z3MAXIjET_RKS0_S2_
	.section	.text._ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EE6shrinkEj,"axG",%progbits,_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EE6shrinkEj,comdat
	.align	2
	.weak	_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EE6shrinkEj
	.thumb
	.thumb_func
	.type	_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EE6shrinkEj, %function
_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EE6shrinkEj:
	.fnstart
.LFB279:
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
	bls	.L164
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3]
.L164:
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EE6shrinkEj, .-_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t14feature_info_tELj32EE6shrinkEj
	.section	.text._ZN21hb_prealloced_array_tIN11hb_ot_map_t13feature_map_tELj8EE4pushEv,"axG",%progbits,_ZN21hb_prealloced_array_tIN11hb_ot_map_t13feature_map_tELj8EE4pushEv,comdat
	.align	2
	.weak	_ZN21hb_prealloced_array_tIN11hb_ot_map_t13feature_map_tELj8EE4pushEv
	.thumb
	.thumb_func
	.type	_ZN21hb_prealloced_array_tIN11hb_ot_map_t13feature_map_tELj8EE4pushEv, %function
_ZN21hb_prealloced_array_tIN11hb_ot_map_t13feature_map_tELj8EE4pushEv:
	.fnstart
.LFB280:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L167
	ldr	r3, [r7, #4]
	add	r2, r3, #12
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	mov	r0, r3
	bl	_Z12ARRAY_LENGTHIN11hb_ot_map_t13feature_map_tELj8EEjRAT0__KT_(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
.L167:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bcs	.L168
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	adds	r0, r2, #1
	ldr	r3, [r7, #4]
	str	r0, [r3]
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	b	.L169
.L168:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsrs	r3, r3, #1
	add	r3, r3, r2
	adds	r3, r3, #8
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	cmp	r2, r3
	bne	.L170
	ldr	r0, [r7, #16]
	movs	r1, #36
	bl	calloc(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L171
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r0, [r7, #20]
	mov	r2, r3
	bl	memcpy(PLT)
	b	.L171
.L170:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bhi	.L172
	ldr	r0, [r7, #16]
	movs	r1, #36
	bl	_ZL30_hb_unsigned_int_mul_overflowsjj(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L173
.L172:
	movs	r3, #1
	b	.L174
.L173:
	movs	r3, #0
.L174:
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #15]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L171
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #8]
	ldr	r2, [r7, #16]
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r0, r1
	mov	r1, r3
	bl	realloc(PLT)
	str	r0, [r7, #20]
.L171:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L175
	movs	r3, #0
	b	.L169
.L175:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #20]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #16]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	adds	r0, r2, #1
	ldr	r3, [r7, #4]
	str	r0, [r3]
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
.L169:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN21hb_prealloced_array_tIN11hb_ot_map_t13feature_map_tELj8EE4pushEv, .-_ZN21hb_prealloced_array_tIN11hb_ot_map_t13feature_map_tELj8EE4pushEv
	.section	.text._ZN21hb_prealloced_array_tIN11hb_ot_map_t13feature_map_tELj8EEixEj,"axG",%progbits,_ZN21hb_prealloced_array_tIN11hb_ot_map_t13feature_map_tELj8EEixEj,comdat
	.align	2
	.weak	_ZN21hb_prealloced_array_tIN11hb_ot_map_t13feature_map_tELj8EEixEj
	.thumb
	.thumb_func
	.type	_ZN21hb_prealloced_array_tIN11hb_ot_map_t13feature_map_tELj8EEixEj, %function
_ZN21hb_prealloced_array_tIN11hb_ot_map_t13feature_map_tELj8EEixEj:
	.fnstart
.LFB281:
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
	lsls	r3, r3, #3
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
	.size	_ZN21hb_prealloced_array_tIN11hb_ot_map_t13feature_map_tELj8EEixEj, .-_ZN21hb_prealloced_array_tIN11hb_ot_map_t13feature_map_tELj8EEixEj
	.section	.text._ZN21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EE5qsortEjj,"axG",%progbits,_ZN21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EE5qsortEjj,comdat
	.align	2
	.weak	_ZN21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EE5qsortEjj
	.thumb
	.thumb_func
	.type	_ZN21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EE5qsortEjj, %function
_ZN21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EE5qsortEjj:
	.fnstart
.LFB282:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #20
	sub	sp, sp, #20
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r4, .L179
.LPIC6:
	add	r4, pc
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #3
	add	r2, r2, r3
	ldr	r1, [r7, #4]
	ldr	r3, [r7, #8]
	subs	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	movs	r2, #8
	ldr	r3, .L179+4
	ldr	r3, [r4, r3]
	bl	qsort(PLT)
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L180:
	.align	2
.L179:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC6+4)
	.word	_ZN11hb_ot_map_t12lookup_map_t3cmpEPKS0_S2_(GOT)
	.fnend
	.size	_ZN21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EE5qsortEjj, .-_ZN21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EE5qsortEjj
	.section	.text._ZN21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EEixEj,"axG",%progbits,_ZN21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EEixEj,comdat
	.align	2
	.weak	_ZN21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EEixEj
	.thumb
	.thumb_func
	.type	_ZN21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EEixEj, %function
_ZN21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EEixEj:
	.fnstart
.LFB283:
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
	.size	_ZN21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EEixEj, .-_ZN21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EEixEj
	.section	.text._ZN21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EE6shrinkEj,"axG",%progbits,_ZN21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EE6shrinkEj,comdat
	.align	2
	.weak	_ZN21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EE6shrinkEj
	.thumb
	.thumb_func
	.type	_ZN21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EE6shrinkEj, %function
_ZN21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EE6shrinkEj:
	.fnstart
.LFB284:
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
	bls	.L183
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3]
.L183:
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EE6shrinkEj, .-_ZN21hb_prealloced_array_tIN11hb_ot_map_t12lookup_map_tELj32EE6shrinkEj
	.section	.text._ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t12stage_info_tELj8EEixEj,"axG",%progbits,_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t12stage_info_tELj8EEixEj,comdat
	.align	2
	.weak	_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t12stage_info_tELj8EEixEj
	.thumb
	.thumb_func
	.type	_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t12stage_info_tELj8EEixEj, %function
_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t12stage_info_tELj8EEixEj:
	.fnstart
.LFB285:
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
	.size	_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t12stage_info_tELj8EEixEj, .-_ZN21hb_prealloced_array_tIN19hb_ot_map_builder_t12stage_info_tELj8EEixEj
	.section	.text._ZN21hb_prealloced_array_tIN11hb_ot_map_t11stage_map_tELj4EE4pushEv,"axG",%progbits,_ZN21hb_prealloced_array_tIN11hb_ot_map_t11stage_map_tELj4EE4pushEv,comdat
	.align	2
	.weak	_ZN21hb_prealloced_array_tIN11hb_ot_map_t11stage_map_tELj4EE4pushEv
	.thumb
	.thumb_func
	.type	_ZN21hb_prealloced_array_tIN11hb_ot_map_t11stage_map_tELj4EE4pushEv, %function
_ZN21hb_prealloced_array_tIN11hb_ot_map_t11stage_map_tELj4EE4pushEv:
	.fnstart
.LFB286:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L188
	ldr	r3, [r7, #4]
	add	r2, r3, #12
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	mov	r0, r3
	bl	_Z12ARRAY_LENGTHIN11hb_ot_map_t11stage_map_tELj4EEjRAT0__KT_(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
.L188:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bcs	.L189
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r0, r3, #1
	ldr	r1, [r7, #4]
	str	r0, [r1]
	lsls	r3, r3, #3
	add	r3, r3, r2
	b	.L190
.L189:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsrs	r3, r3, #1
	add	r3, r3, r2
	adds	r3, r3, #8
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	cmp	r2, r3
	bne	.L191
	ldr	r0, [r7, #16]
	movs	r1, #8
	bl	calloc(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L192
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	lsls	r3, r3, #3
	ldr	r0, [r7, #20]
	mov	r1, r2
	mov	r2, r3
	bl	memcpy(PLT)
	b	.L192
.L191:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bhi	.L193
	ldr	r0, [r7, #16]
	movs	r1, #8
	bl	_ZL30_hb_unsigned_int_mul_overflowsjj(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L194
.L193:
	movs	r3, #1
	b	.L195
.L194:
	movs	r3, #0
.L195:
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #15]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L192
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #16]
	lsls	r3, r3, #3
	mov	r0, r2
	mov	r1, r3
	bl	realloc(PLT)
	str	r0, [r7, #20]
.L192:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L196
	movs	r3, #0
	b	.L190
.L196:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #20]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #16]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r0, r3, #1
	ldr	r1, [r7, #4]
	str	r0, [r1]
	lsls	r3, r3, #3
	add	r3, r3, r2
.L190:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN21hb_prealloced_array_tIN11hb_ot_map_t11stage_map_tELj4EE4pushEv, .-_ZN21hb_prealloced_array_tIN11hb_ot_map_t11stage_map_tELj4EE4pushEv
	.section	.text._Z12ARRAY_LENGTHIN11hb_ot_map_t12lookup_map_tELj32EEjRAT0__KT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z12ARRAY_LENGTHIN11hb_ot_map_t12lookup_map_tELj32EEjRAT0__KT_, %function
_Z12ARRAY_LENGTHIN11hb_ot_map_t12lookup_map_tELj32EEjRAT0__KT_:
	.fnstart
.LFB291:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #32
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_Z12ARRAY_LENGTHIN11hb_ot_map_t12lookup_map_tELj32EEjRAT0__KT_, .-_Z12ARRAY_LENGTHIN11hb_ot_map_t12lookup_map_tELj32EEjRAT0__KT_
	.section	.text._Z12ARRAY_LENGTHIN19hb_ot_map_builder_t14feature_info_tELj32EEjRAT0__KT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z12ARRAY_LENGTHIN19hb_ot_map_builder_t14feature_info_tELj32EEjRAT0__KT_, %function
_Z12ARRAY_LENGTHIN19hb_ot_map_builder_t14feature_info_tELj32EEjRAT0__KT_:
	.fnstart
.LFB292:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #32
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_Z12ARRAY_LENGTHIN19hb_ot_map_builder_t14feature_info_tELj32EEjRAT0__KT_, .-_Z12ARRAY_LENGTHIN19hb_ot_map_builder_t14feature_info_tELj32EEjRAT0__KT_
	.section	.text._Z12ARRAY_LENGTHIN19hb_ot_map_builder_t12stage_info_tELj8EEjRAT0__KT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z12ARRAY_LENGTHIN19hb_ot_map_builder_t12stage_info_tELj8EEjRAT0__KT_, %function
_Z12ARRAY_LENGTHIN19hb_ot_map_builder_t12stage_info_tELj8EEjRAT0__KT_:
	.fnstart
.LFB293:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #8
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_Z12ARRAY_LENGTHIN19hb_ot_map_builder_t12stage_info_tELj8EEjRAT0__KT_, .-_Z12ARRAY_LENGTHIN19hb_ot_map_builder_t12stage_info_tELj8EEjRAT0__KT_
	.section	.text._Z12ARRAY_LENGTHIN11hb_ot_map_t13feature_map_tELj8EEjRAT0__KT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z12ARRAY_LENGTHIN11hb_ot_map_t13feature_map_tELj8EEjRAT0__KT_, %function
_Z12ARRAY_LENGTHIN11hb_ot_map_t13feature_map_tELj8EEjRAT0__KT_:
	.fnstart
.LFB294:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #8
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_Z12ARRAY_LENGTHIN11hb_ot_map_t13feature_map_tELj8EEjRAT0__KT_, .-_Z12ARRAY_LENGTHIN11hb_ot_map_t13feature_map_tELj8EEjRAT0__KT_
	.section	.text._Z12ARRAY_LENGTHIN11hb_ot_map_t11stage_map_tELj4EEjRAT0__KT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z12ARRAY_LENGTHIN11hb_ot_map_t11stage_map_tELj4EEjRAT0__KT_, %function
_Z12ARRAY_LENGTHIN11hb_ot_map_t11stage_map_tELj4EEjRAT0__KT_:
	.fnstart
.LFB295:
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
	.size	_Z12ARRAY_LENGTHIN11hb_ot_map_t11stage_map_tELj4EEjRAT0__KT_, .-_Z12ARRAY_LENGTHIN11hb_ot_map_t11stage_map_tELj4EEjRAT0__KT_
	.section	.rodata._ZL10table_tags,"a",%progbits
	.align	2
	.type	_ZL10table_tags, %object
	.size	_ZL10table_tags, 8
_ZL10table_tags:
	.word	1196643650
	.word	1196445523
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
