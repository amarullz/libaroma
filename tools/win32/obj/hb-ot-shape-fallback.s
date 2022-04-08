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
	.file	"hb-ot-shape-fallback.cc"
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
	.section	.text._ZN9hb_font_t19get_glyph_h_kerningEjj,"axG",%progbits,_ZN9hb_font_t19get_glyph_h_kerningEjj,comdat
	.align	2
	.weak	_ZN9hb_font_t19get_glyph_h_kerningEjj
	.thumb
	.thumb_func
	.type	_ZN9hb_font_t19get_glyph_h_kerningEjj, %function
_ZN9hb_font_t19get_glyph_h_kerningEjj:
	.fnstart
.LFB156:
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
.LFB157:
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
.LFB158:
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
	.section	.text._ZN9hb_font_t31get_glyph_kerning_for_directionEjj14hb_direction_tPiS1_,"axG",%progbits,_ZN9hb_font_t31get_glyph_kerning_for_directionEjj14hb_direction_tPiS1_,comdat
	.align	2
	.weak	_ZN9hb_font_t31get_glyph_kerning_for_directionEjj14hb_direction_tPiS1_
	.thumb
	.thumb_func
	.type	_ZN9hb_font_t31get_glyph_kerning_for_directionEjj14hb_direction_tPiS1_, %function
_ZN9hb_font_t31get_glyph_kerning_for_directionEjj14hb_direction_tPiS1_:
	.fnstart
.LFB167:
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
	bne	.L10
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
	b	.L9
.L10:
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
.L9:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN9hb_font_t31get_glyph_kerning_for_directionEjj14hb_direction_tPiS1_, .-_ZN9hb_font_t31get_glyph_kerning_for_directionEjj14hb_direction_tPiS1_
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
	.section	.text._ZL43_hb_glyph_info_set_modified_combining_classP15hb_glyph_info_tj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL43_hb_glyph_info_set_modified_combining_classP15hb_glyph_info_tj, %function
_ZL43_hb_glyph_info_set_modified_combining_classP15hb_glyph_info_tj:
	.fnstart
.LFB215:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3, #17]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZL43_hb_glyph_info_set_modified_combining_classP15hb_glyph_info_tj, .-_ZL43_hb_glyph_info_set_modified_combining_classP15hb_glyph_info_tj
	.section	.text._ZL43_hb_glyph_info_get_modified_combining_classPK15hb_glyph_info_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL43_hb_glyph_info_get_modified_combining_classPK15hb_glyph_info_t, %function
_ZL43_hb_glyph_info_get_modified_combining_classPK15hb_glyph_info_t:
	.fnstart
.LFB216:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #17]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZL43_hb_glyph_info_get_modified_combining_classPK15hb_glyph_info_t, .-_ZL43_hb_glyph_info_get_modified_combining_classPK15hb_glyph_info_t
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
	.section	.text._ZL22_hb_glyph_info_is_zwnjPK15hb_glyph_info_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL22_hb_glyph_info_is_zwnjPK15hb_glyph_info_t, %function
_ZL22_hb_glyph_info_is_zwnjPK15hb_glyph_info_t:
	.fnstart
.LFB218:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
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
	.size	_ZL22_hb_glyph_info_is_zwnjPK15hb_glyph_info_t, .-_ZL22_hb_glyph_info_is_zwnjPK15hb_glyph_info_t
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
	.section	.text._ZL25_hb_glyph_info_get_lig_idPK15hb_glyph_info_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL25_hb_glyph_info_get_lig_idPK15hb_glyph_info_t, %function
_ZL25_hb_glyph_info_get_lig_idPK15hb_glyph_info_t:
	.fnstart
.LFB225:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #14]	@ zero_extendqisi2
	asrs	r3, r3, #5
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZL25_hb_glyph_info_get_lig_idPK15hb_glyph_info_t, .-_ZL25_hb_glyph_info_get_lig_idPK15hb_glyph_info_t
	.section	.text._ZL31_hb_glyph_info_ligated_internalPK15hb_glyph_info_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL31_hb_glyph_info_ligated_internalPK15hb_glyph_info_t, %function
_ZL31_hb_glyph_info_ligated_internalPK15hb_glyph_info_t:
	.fnstart
.LFB226:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #14]	@ zero_extendqisi2
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
	.size	_ZL31_hb_glyph_info_ligated_internalPK15hb_glyph_info_t, .-_ZL31_hb_glyph_info_ligated_internalPK15hb_glyph_info_t
	.section	.text._ZL27_hb_glyph_info_get_lig_compPK15hb_glyph_info_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL27_hb_glyph_info_get_lig_compPK15hb_glyph_info_t, %function
_ZL27_hb_glyph_info_get_lig_compPK15hb_glyph_info_t:
	.fnstart
.LFB227:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	_ZL31_hb_glyph_info_ligated_internalPK15hb_glyph_info_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L28
	movs	r3, #0
	b	.L29
.L28:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #14]	@ zero_extendqisi2
	and	r3, r3, #15
.L29:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZL27_hb_glyph_info_get_lig_compPK15hb_glyph_info_t, .-_ZL27_hb_glyph_info_get_lig_compPK15hb_glyph_info_t
	.section	.text._ZL32_hb_glyph_info_get_lig_num_compsPK15hb_glyph_info_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL32_hb_glyph_info_get_lig_num_compsPK15hb_glyph_info_t, %function
_ZL32_hb_glyph_info_get_lig_num_compsPK15hb_glyph_info_t:
	.fnstart
.LFB228:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #12]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L31
	ldr	r0, [r7, #4]
	bl	_ZL31_hb_glyph_info_ligated_internalPK15hb_glyph_info_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L31
	movs	r3, #1
	b	.L32
.L31:
	movs	r3, #0
.L32:
	cmp	r3, #0
	beq	.L33
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #14]	@ zero_extendqisi2
	and	r3, r3, #15
	b	.L34
.L33:
	movs	r3, #1
.L34:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZL32_hb_glyph_info_get_lig_num_compsPK15hb_glyph_info_t, .-_ZL32_hb_glyph_info_get_lig_num_compsPK15hb_glyph_info_t
	.section	.text._ZL30_hb_glyph_info_get_glyph_propsPK15hb_glyph_info_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL30_hb_glyph_info_get_glyph_propsPK15hb_glyph_info_t, %function
_ZL30_hb_glyph_info_get_glyph_propsPK15hb_glyph_info_t:
	.fnstart
.LFB231:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #12]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZL30_hb_glyph_info_get_glyph_propsPK15hb_glyph_info_t, .-_ZL30_hb_glyph_info_get_glyph_propsPK15hb_glyph_info_t
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
	.ascii	"glyph_props\000"
	.align	2
.LC1:
	.ascii	"lig_props\000"
	.align	2
.LC2:
	.ascii	"syllable\000"
	.section	.text._ZL31_hb_buffer_assert_gsubgpos_varsP11hb_buffer_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL31_hb_buffer_assert_gsubgpos_varsP11hb_buffer_t, %function
_ZL31_hb_buffer_assert_gsubgpos_varsP11hb_buffer_t:
	.fnstart
.LFB245:
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
	ldr	r3, .L40
.LPIC0:
	add	r3, pc
	bl	_ZN11hb_buffer_t10assert_varEjjPKc(PLT)
	ldr	r0, [r7, #4]
	movs	r1, #2
	movs	r2, #1
	ldr	r3, .L40+4
.LPIC1:
	add	r3, pc
	bl	_ZN11hb_buffer_t10assert_varEjjPKc(PLT)
	ldr	r0, [r7, #4]
	movs	r1, #3
	movs	r2, #1
	ldr	r3, .L40+8
.LPIC2:
	add	r3, pc
	bl	_ZN11hb_buffer_t10assert_varEjjPKc(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L41:
	.align	2
.L40:
	.word	.LC0-(.LPIC0+4)
	.word	.LC1-(.LPIC1+4)
	.word	.LC2-(.LPIC2+4)
	.fnend
	.size	_ZL31_hb_buffer_assert_gsubgpos_varsP11hb_buffer_t, .-_ZL31_hb_buffer_assert_gsubgpos_varsP11hb_buffer_t
	.section	.bss._ZN2OTL9_NullPoolE,"aw",%nobits
	.align	2
	.type	_ZN2OTL9_NullPoolE, %object
	.size	_ZN2OTL9_NullPoolE, 264
_ZN2OTL9_NullPoolE:
	.space	264
	.section	.text._ZNK2OT12FixedVersion6to_intEv,"axG",%progbits,_ZNK2OT12FixedVersion6to_intEv,comdat
	.align	2
	.weak	_ZNK2OT12FixedVersion6to_intEv
	.thumb
	.thumb_func
	.type	_ZNK2OT12FixedVersion6to_intEv, %function
_ZNK2OT12FixedVersion6to_intEv:
	.fnstart
.LFB329:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #12
	sub	sp, sp, #12
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	lsls	r4, r3, #16
	ldr	r3, [r7, #4]
	adds	r3, r3, #2
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	add	r3, r3, r4
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZNK2OT12FixedVersion6to_intEv, .-_ZNK2OT12FixedVersion6to_intEv
	.section	.text._ZNK2OT11RangeRecord3cmpEj,"axG",%progbits,_ZNK2OT11RangeRecord3cmpEj,comdat
	.align	2
	.weak	_ZNK2OT11RangeRecord3cmpEj
	.thumb
	.thumb_func
	.type	_ZNK2OT11RangeRecord3cmpEj, %function
_ZNK2OT11RangeRecord3cmpEj:
	.fnstart
.LFB372:
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
	bhi	.L45
	ldr	r3, [r7, #4]
	adds	r3, r3, #2
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7]
	cmp	r2, r3
	ite	cc
	movcc	r3, #1
	movcs	r3, #0
	uxtb	r3, r3
	b	.L46
.L45:
	mov	r3, #-1
.L46:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT11RangeRecord3cmpEj, .-_ZNK2OT11RangeRecord3cmpEj
	.section	.text._ZN2OTL4NullINS_11RangeRecordEEERKT_v,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL4NullINS_11RangeRecordEEERKT_v, %function
_ZN2OTL4NullINS_11RangeRecordEEERKT_v:
	.fnstart
.LFB377:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r3, .L50
.LPIC3:
	add	r3, pc
	mov	r0, r3
	bl	_ZN2OTL5CastPINS_11RangeRecordEcEEPKT_PKT0_(PLT)
	mov	r3, r0
	mov	r0, r3
	pop	{r7, pc}
.L51:
	.align	2
.L50:
	.word	_ZN2OTL16_NullRangeRecordE-(.LPIC3+4)
	.cantunwind
	.fnend
	.size	_ZN2OTL4NullINS_11RangeRecordEEERKT_v, .-_ZN2OTL4NullINS_11RangeRecordEEERKT_v
	.section	.text._ZNK2OT15CoverageFormat112get_coverageEj,"axG",%progbits,_ZNK2OT15CoverageFormat112get_coverageEj,comdat
	.align	2
	.weak	_ZNK2OT15CoverageFormat112get_coverageEj
	.thumb
	.thumb_func
	.type	_ZNK2OT15CoverageFormat112get_coverageEj, %function
_ZNK2OT15CoverageFormat112get_coverageEj:
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
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	adds	r2, r3, #2
	mov	r3, r7
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK2OT13SortedArrayOfINS_7IntTypeItLj2EEES2_E7bsearchIjEEiRKT_(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT15CoverageFormat112get_coverageEj, .-_ZNK2OT15CoverageFormat112get_coverageEj
	.section	.text._ZNK2OT15CoverageFormat212get_coverageEj,"axG",%progbits,_ZNK2OT15CoverageFormat212get_coverageEj,comdat
	.align	2
	.weak	_ZNK2OT15CoverageFormat212get_coverageEj
	.thumb
	.thumb_func
	.type	_ZNK2OT15CoverageFormat212get_coverageEj, %function
_ZNK2OT15CoverageFormat212get_coverageEj:
	.fnstart
.LFB435:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	adds	r2, r3, #2
	mov	r3, r7
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK2OT13SortedArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEE7bsearchIjEEiRKT_(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #-1
	beq	.L55
	ldr	r3, [r7, #4]
	adds	r2, r3, #2
	ldr	r3, [r7, #12]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK2OT7ArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEEixEj(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	mov	r4, r3
	ldr	r5, [r7]
	ldr	r3, [r7, #8]
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	subs	r3, r5, r3
	add	r3, r3, r4
	b	.L56
.L55:
	mov	r3, #-1
.L56:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.fnend
	.size	_ZNK2OT15CoverageFormat212get_coverageEj, .-_ZNK2OT15CoverageFormat212get_coverageEj
	.section	.text._ZNK2OT8Coverage12get_coverageEj,"axG",%progbits,_ZNK2OT8Coverage12get_coverageEj,comdat
	.align	2
	.weak	_ZNK2OT8Coverage12get_coverageEj
	.thumb
	.thumb_func
	.type	_ZNK2OT8Coverage12get_coverageEj, %function
_ZNK2OT8Coverage12get_coverageEj:
	.fnstart
.LFB447:
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
	beq	.L59
	cmp	r3, #2
	beq	.L60
	b	.L62
.L59:
	ldr	r3, [r7, #4]
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZNK2OT15CoverageFormat112get_coverageEj(PLT)
	mov	r3, r0
	b	.L61
.L60:
	ldr	r3, [r7, #4]
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZNK2OT15CoverageFormat212get_coverageEj(PLT)
	mov	r3, r0
	b	.L61
.L62:
	mov	r3, #-1
.L61:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT8Coverage12get_coverageEj, .-_ZNK2OT8Coverage12get_coverageEj
	.section	.text._ZNK2OT20MarkGlyphSetsFormat16coversEjj,"axG",%progbits,_ZNK2OT20MarkGlyphSetsFormat16coversEjj,comdat
	.align	2
	.weak	_ZNK2OT20MarkGlyphSetsFormat16coversEjj
	.thumb
	.thumb_func
	.type	_ZNK2OT20MarkGlyphSetsFormat16coversEjj, %function
_ZNK2OT20MarkGlyphSetsFormat16coversEjj:
	.fnstart
.LFB511:
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
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	adds	r3, r3, #2
	mov	r0, r3
	ldr	r1, [r7, #8]
	bl	_ZNK2OT7ArrayOfINS_8OffsetToINS_8CoverageENS_7IntTypeIjLj4EEEEENS3_ItLj2EEEEixEj(PLT)
	mov	r3, r0
	add	r2, r7, #20
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OTplIPKNS_20MarkGlyphSetsFormat1ENS_7IntTypeIjLj4EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE(PLT)
	mov	r3, r0
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	_ZNK2OT8Coverage12get_coverageEj(PLT)
	mov	r3, r0
	cmp	r3, #-1
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
	.size	_ZNK2OT20MarkGlyphSetsFormat16coversEjj, .-_ZNK2OT20MarkGlyphSetsFormat16coversEjj
	.section	.text._ZNK2OT13MarkGlyphSets6coversEjj,"axG",%progbits,_ZNK2OT13MarkGlyphSets6coversEjj,comdat
	.align	2
	.weak	_ZNK2OT13MarkGlyphSets6coversEjj
	.thumb
	.thumb_func
	.type	_ZNK2OT13MarkGlyphSets6coversEjj, %function
_ZNK2OT13MarkGlyphSets6coversEjj:
	.fnstart
.LFB515:
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
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	cmp	r3, #1
	bne	.L69
	ldr	r3, [r7, #12]
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	_ZNK2OT20MarkGlyphSetsFormat16coversEjj(PLT)
	mov	r3, r0
	b	.L68
.L69:
	movs	r3, #0
.L68:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT13MarkGlyphSets6coversEjj, .-_ZNK2OT13MarkGlyphSets6coversEjj
	.section	.text._ZNK2OT4GDEF17has_glyph_classesEv,"axG",%progbits,_ZNK2OT4GDEF17has_glyph_classesEv,comdat
	.align	2
	.weak	_ZNK2OT4GDEF17has_glyph_classesEv
	.thumb
	.thumb_func
	.type	_ZNK2OT4GDEF17has_glyph_classesEv, %function
_ZNK2OT4GDEF17has_glyph_classesEv:
	.fnstart
.LFB518:
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
	.section	.text._ZNK2OT4GDEF15mark_set_coversEjj,"axG",%progbits,_ZNK2OT4GDEF15mark_set_coversEjj,comdat
	.align	2
	.weak	_ZNK2OT4GDEF15mark_set_coversEjj
	.thumb
	.thumb_func
	.type	_ZNK2OT4GDEF15mark_set_coversEjj, %function
_ZNK2OT4GDEF15mark_set_coversEjj:
	.fnstart
.LFB528:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #28
	sub	sp, sp, #28
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r4, #0
	ldr	r3, [r7, #12]
	mov	r0, r3
.LEHB0:
	bl	_ZNK2OT12FixedVersion6to_intEv(PLT)
	mov	r3, r0
	cmp	r3, #65537
	bls	.L73
	ldr	r3, [r7, #12]
	str	r3, [r7, #20]
	movs	r4, #1
	ldr	r3, [r7, #12]
	adds	r3, r3, #12
	add	r2, r7, #20
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OTplIPKNS_4GDEFENS_7IntTypeItLj2EEENS_13MarkGlyphSetsEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE(PLT)
	mov	r3, r0
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	_ZNK2OT13MarkGlyphSets6coversEjj(PLT)
.LEHE0:
	mov	r3, r0
	cmp	r3, #0
	beq	.L73
	movs	r3, #1
	b	.L74
.L73:
	movs	r3, #0
.L74:
	cmp	r4, #0
	b	.L80
.L79:
	cmp	r4, #0
	nop
.LEHB1:
	bl	__cxa_end_cleanup(PLT)
.LEHE1:
.L80:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.global	__gxx_personality_v0
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA528:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE528-.LLSDACSB528
.LLSDACSB528:
	.uleb128 .LEHB0-.LFB528
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L79-.LFB528
	.uleb128 0
	.uleb128 .LEHB1-.LFB528
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE528:
	.section	.text._ZNK2OT4GDEF15mark_set_coversEjj,"axG",%progbits,_ZNK2OT4GDEF15mark_set_coversEjj,comdat
	.fnend
	.size	_ZNK2OT4GDEF15mark_set_coversEjj, .-_ZNK2OT4GDEF15mark_set_coversEjj
	.section	.text._ZN2OT18hb_apply_context_tC2EjP9hb_font_tP11hb_buffer_t,"axG",%progbits,_ZN2OT18hb_apply_context_tC5EjP9hb_font_tP11hb_buffer_t,comdat
	.align	2
	.weak	_ZN2OT18hb_apply_context_tC2EjP9hb_font_tP11hb_buffer_t
	.thumb
	.thumb_func
	.type	_ZN2OT18hb_apply_context_tC2EjP9hb_font_tP11hb_buffer_t, %function
_ZN2OT18hb_apply_context_tC2EjP9hb_font_tP11hb_buffer_t:
	.fnstart
.LFB573:
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
.LFB575:
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
	.section	.text._ZN2OT18hb_apply_context_t16set_lookup_propsEj,"axG",%progbits,_ZN2OT18hb_apply_context_t16set_lookup_propsEj,comdat
	.align	2
	.weak	_ZN2OT18hb_apply_context_t16set_lookup_propsEj
	.thumb
	.thumb_func
	.type	_ZN2OT18hb_apply_context_t16set_lookup_propsEj, %function
_ZN2OT18hb_apply_context_t16set_lookup_propsEj:
	.fnstart
.LFB578:
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
	str	r2, [r3, #36]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN2OT18hb_apply_context_t16set_lookup_propsEj, .-_ZN2OT18hb_apply_context_t16set_lookup_propsEj
	.section	.text._ZN2OT18hb_apply_context_t9matcher_tC2Ev,"axG",%progbits,_ZN2OT18hb_apply_context_t9matcher_tC5Ev,comdat
	.align	2
	.weak	_ZN2OT18hb_apply_context_t9matcher_tC2Ev
	.thumb
	.thumb_func
	.type	_ZN2OT18hb_apply_context_t9matcher_tC2Ev, %function
_ZN2OT18hb_apply_context_t9matcher_tC2Ev:
	.fnstart
.LFB581:
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
	strb	r2, [r3, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #5]
	ldr	r3, [r7, #4]
	mov	r2, #-1
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN2OT18hb_apply_context_t9matcher_tC2Ev, .-_ZN2OT18hb_apply_context_t9matcher_tC2Ev
	.weak	_ZN2OT18hb_apply_context_t9matcher_tC1Ev
	.thumb_set _ZN2OT18hb_apply_context_t9matcher_tC1Ev,_ZN2OT18hb_apply_context_t9matcher_tC2Ev
	.section	.text._ZN2OT18hb_apply_context_t9matcher_t15set_ignore_zwnjEb,"axG",%progbits,_ZN2OT18hb_apply_context_t9matcher_t15set_ignore_zwnjEb,comdat
	.align	2
	.weak	_ZN2OT18hb_apply_context_t9matcher_t15set_ignore_zwnjEb
	.thumb
	.thumb_func
	.type	_ZN2OT18hb_apply_context_t9matcher_t15set_ignore_zwnjEb, %function
_ZN2OT18hb_apply_context_t9matcher_t15set_ignore_zwnjEb:
	.fnstart
.LFB583:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	ldrb	r2, [r7, #3]
	strb	r2, [r3, #4]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN2OT18hb_apply_context_t9matcher_t15set_ignore_zwnjEb, .-_ZN2OT18hb_apply_context_t9matcher_t15set_ignore_zwnjEb
	.section	.text._ZN2OT18hb_apply_context_t9matcher_t14set_ignore_zwjEb,"axG",%progbits,_ZN2OT18hb_apply_context_t9matcher_t14set_ignore_zwjEb,comdat
	.align	2
	.weak	_ZN2OT18hb_apply_context_t9matcher_t14set_ignore_zwjEb
	.thumb
	.thumb_func
	.type	_ZN2OT18hb_apply_context_t9matcher_t14set_ignore_zwjEb, %function
_ZN2OT18hb_apply_context_t9matcher_t14set_ignore_zwjEb:
	.fnstart
.LFB584:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	ldrb	r2, [r7, #3]
	strb	r2, [r3, #5]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN2OT18hb_apply_context_t9matcher_t14set_ignore_zwjEb, .-_ZN2OT18hb_apply_context_t9matcher_t14set_ignore_zwjEb
	.section	.text._ZN2OT18hb_apply_context_t9matcher_t16set_lookup_propsEj,"axG",%progbits,_ZN2OT18hb_apply_context_t9matcher_t16set_lookup_propsEj,comdat
	.align	2
	.weak	_ZN2OT18hb_apply_context_t9matcher_t16set_lookup_propsEj
	.thumb
	.thumb_func
	.type	_ZN2OT18hb_apply_context_t9matcher_t16set_lookup_propsEj, %function
_ZN2OT18hb_apply_context_t9matcher_t16set_lookup_propsEj:
	.fnstart
.LFB585:
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
	.size	_ZN2OT18hb_apply_context_t9matcher_t16set_lookup_propsEj, .-_ZN2OT18hb_apply_context_t9matcher_t16set_lookup_propsEj
	.section	.text._ZN2OT18hb_apply_context_t9matcher_t8set_maskEj,"axG",%progbits,_ZN2OT18hb_apply_context_t9matcher_t8set_maskEj,comdat
	.align	2
	.weak	_ZN2OT18hb_apply_context_t9matcher_t8set_maskEj
	.thumb
	.thumb_func
	.type	_ZN2OT18hb_apply_context_t9matcher_t8set_maskEj, %function
_ZN2OT18hb_apply_context_t9matcher_t8set_maskEj:
	.fnstart
.LFB586:
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
	str	r2, [r3, #8]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN2OT18hb_apply_context_t9matcher_t8set_maskEj, .-_ZN2OT18hb_apply_context_t9matcher_t8set_maskEj
	.section	.text._ZN2OT18hb_apply_context_t9matcher_t12set_syllableEh,"axG",%progbits,_ZN2OT18hb_apply_context_t9matcher_t12set_syllableEh,comdat
	.align	2
	.weak	_ZN2OT18hb_apply_context_t9matcher_t12set_syllableEh
	.thumb
	.thumb_func
	.type	_ZN2OT18hb_apply_context_t9matcher_t12set_syllableEh, %function
_ZN2OT18hb_apply_context_t9matcher_t12set_syllableEh:
	.fnstart
.LFB587:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	ldrb	r2, [r7, #3]
	strb	r2, [r3, #12]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN2OT18hb_apply_context_t9matcher_t12set_syllableEh, .-_ZN2OT18hb_apply_context_t9matcher_t12set_syllableEh
	.section	.text._ZNK2OT18hb_apply_context_t9matcher_t9may_matchERK15hb_glyph_info_tPKNS_7IntTypeItLj2EEE,"axG",%progbits,_ZNK2OT18hb_apply_context_t9matcher_t9may_matchERK15hb_glyph_info_tPKNS_7IntTypeItLj2EEE,comdat
	.align	2
	.weak	_ZNK2OT18hb_apply_context_t9matcher_t9may_matchERK15hb_glyph_info_tPKNS_7IntTypeItLj2EEE
	.thumb
	.thumb_func
	.type	_ZNK2OT18hb_apply_context_t9matcher_t9may_matchERK15hb_glyph_info_tPKNS_7IntTypeItLj2EEE, %function
_ZNK2OT18hb_apply_context_t9matcher_t9may_matchERK15hb_glyph_info_tPKNS_7IntTypeItLj2EEE:
	.fnstart
.LFB589:
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
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L95
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L96
	ldr	r3, [r7, #12]
	ldrb	r2, [r3, #12]	@ zero_extendqisi2
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #15]	@ zero_extendqisi2
	cmp	r2, r3
	beq	.L96
.L95:
	movs	r3, #0
	b	.L97
.L96:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L98
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	ldr	r2, [r7, #8]
	ldr	r1, [r2]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #20]
	mov	r0, r1
	ldr	r1, [r7, #4]
	blx	r3
	mov	r3, r0
	cmp	r3, #0
	beq	.L99
	movs	r3, #1
	b	.L100
.L99:
	movs	r3, #0
.L100:
	b	.L97
.L98:
	movs	r3, #2
.L97:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT18hb_apply_context_t9matcher_t9may_matchERK15hb_glyph_info_tPKNS_7IntTypeItLj2EEE, .-_ZNK2OT18hb_apply_context_t9matcher_t9may_matchERK15hb_glyph_info_tPKNS_7IntTypeItLj2EEE
	.section	.text._ZNK2OT18hb_apply_context_t9matcher_t8may_skipEPKS0_RK15hb_glyph_info_t,"axG",%progbits,_ZNK2OT18hb_apply_context_t9matcher_t8may_skipEPKS0_RK15hb_glyph_info_t,comdat
	.align	2
	.weak	_ZNK2OT18hb_apply_context_t9matcher_t8may_skipEPKS0_RK15hb_glyph_info_t
	.thumb
	.thumb_func
	.type	_ZNK2OT18hb_apply_context_t9matcher_t8may_skipEPKS0_RK15hb_glyph_info_t, %function
_ZNK2OT18hb_apply_context_t9matcher_t8may_skipEPKS0_RK15hb_glyph_info_t:
	.fnstart
.LFB590:
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
	ldr	r3, [r3]
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #4]
	mov	r2, r3
	bl	_ZNK2OT18hb_apply_context_t20check_glyph_propertyEPK15hb_glyph_info_tj(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L102
	movs	r3, #1
	b	.L103
.L102:
	ldr	r0, [r7, #4]
	bl	_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L104
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L105
	ldr	r0, [r7, #4]
	bl	_ZL22_hb_glyph_info_is_zwnjPK15hb_glyph_info_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L104
.L105:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L106
	ldr	r0, [r7, #4]
	bl	_ZL21_hb_glyph_info_is_zwjPK15hb_glyph_info_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L104
.L106:
	ldr	r0, [r7, #4]
	bl	_ZL22_hb_glyph_info_ligatedPK15hb_glyph_info_t(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L104
	movs	r3, #1
	b	.L107
.L104:
	movs	r3, #0
.L107:
	cmp	r3, #0
	beq	.L108
	movs	r3, #2
	b	.L103
.L108:
	movs	r3, #0
.L103:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT18hb_apply_context_t9matcher_t8may_skipEPKS0_RK15hb_glyph_info_t, .-_ZNK2OT18hb_apply_context_t9matcher_t8may_skipEPKS0_RK15hb_glyph_info_t
	.section	.text._ZN2OT18hb_apply_context_t27skipping_forward_iterator_tC2EPS0_jjb,"axG",%progbits,_ZN2OT18hb_apply_context_t27skipping_forward_iterator_tC5EPS0_jjb,comdat
	.align	2
	.weak	_ZN2OT18hb_apply_context_t27skipping_forward_iterator_tC2EPS0_jjb
	.thumb
	.thumb_func
	.type	_ZN2OT18hb_apply_context_t27skipping_forward_iterator_tC2EPS0_jjb, %function
_ZN2OT18hb_apply_context_t27skipping_forward_iterator_tC2EPS0_jjb:
	.fnstart
.LFB592:
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	adds	r3, r3, #8
	mov	r0, r3
	bl	_ZN2OT18hb_apply_context_t9matcher_tC1Ev(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #32]
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	str	r2, [r3, #36]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #12]
	ldr	r2, [r3, #88]
	ldr	r3, [r7, #12]
	str	r2, [r3, #40]
	ldr	r3, [r7, #12]
	add	r2, r3, #8
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #36]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OT18hb_apply_context_t9matcher_t16set_lookup_propsEj(PLT)
	ldr	r3, [r7, #12]
	add	r2, r3, #8
	ldrb	r3, [r7, #32]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L110
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L111
.L110:
	movs	r3, #1
	b	.L112
.L111:
	movs	r3, #0
.L112:
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OT18hb_apply_context_t9matcher_t15set_ignore_zwnjEb(PLT)
	ldr	r3, [r7, #12]
	add	r2, r3, #8
	ldrb	r3, [r7, #32]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L113
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L113
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldrb	r3, [r3, #24]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L114
.L113:
	movs	r3, #1
	b	.L115
.L114:
	movs	r3, #0
.L115:
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OT18hb_apply_context_t9matcher_t14set_ignore_zwjEb(PLT)
	ldrb	r3, [r7, #32]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L116
	ldr	r3, [r7, #12]
	add	r2, r3, #8
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #20]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OT18hb_apply_context_t9matcher_t8set_maskEj(PLT)
.L116:
	ldr	r3, [r7, #12]
	add	r4, r3, #8
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #12]
	ldr	r2, [r3, #84]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bne	.L117
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #12]
	mov	r0, r3
	movs	r1, #0
	bl	_ZN11hb_buffer_t3curEj(PLT)
	mov	r3, r0
	ldrb	r3, [r3, #15]	@ zero_extendqisi2
	b	.L118
.L117:
	movs	r3, #0
.L118:
	mov	r0, r4
	mov	r1, r3
	bl	_ZN2OT18hb_apply_context_t9matcher_t12set_syllableEh(PLT)
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.cantunwind
	.fnend
	.size	_ZN2OT18hb_apply_context_t27skipping_forward_iterator_tC2EPS0_jjb, .-_ZN2OT18hb_apply_context_t27skipping_forward_iterator_tC2EPS0_jjb
	.weak	_ZN2OT18hb_apply_context_t27skipping_forward_iterator_tC1EPS0_jjb
	.thumb_set _ZN2OT18hb_apply_context_t27skipping_forward_iterator_tC1EPS0_jjb,_ZN2OT18hb_apply_context_t27skipping_forward_iterator_tC2EPS0_jjb
	.section	.text._ZNK2OT18hb_apply_context_t27skipping_forward_iterator_t13has_no_chanceEv,"axG",%progbits,_ZNK2OT18hb_apply_context_t27skipping_forward_iterator_t13has_no_chanceEv,comdat
	.align	2
	.weak	_ZNK2OT18hb_apply_context_t27skipping_forward_iterator_t13has_no_chanceEv
	.thumb
	.thumb_func
	.type	_ZNK2OT18hb_apply_context_t27skipping_forward_iterator_t13has_no_chanceEv, %function
_ZNK2OT18hb_apply_context_t27skipping_forward_iterator_t13has_no_chanceEv:
	.fnstart
.LFB597:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	cmp	r3, #0
	beq	.L122
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	cmp	r2, r3
	bcc	.L122
	movs	r3, #1
	b	.L123
.L122:
	movs	r3, #0
.L123:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNK2OT18hb_apply_context_t27skipping_forward_iterator_t13has_no_chanceEv, .-_ZNK2OT18hb_apply_context_t27skipping_forward_iterator_t13has_no_chanceEv
	.section	.rodata
	.align	2
.LC3:
	.ascii	"num_items > 0\000"
	.align	2
.LC4:
	.ascii	"../../../libs/harfbuzz-ng/src/hb-ot-layout-gsubgpos"
	.ascii	"-private.hh\000"
	.section	.text._ZN2OT18hb_apply_context_t27skipping_forward_iterator_t4nextEv,"axG",%progbits,_ZN2OT18hb_apply_context_t27skipping_forward_iterator_t4nextEv,comdat
	.align	2
	.weak	_ZN2OT18hb_apply_context_t27skipping_forward_iterator_t4nextEv
	.thumb
	.thumb_func
	.type	_ZN2OT18hb_apply_context_t27skipping_forward_iterator_t4nextEv, %function
_ZN2OT18hb_apply_context_t27skipping_forward_iterator_t4nextEv:
	.fnstart
.LFB599:
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
	ldr	r3, [r3, #36]
	cmp	r3, #0
	bne	.L126
	ldr	r3, .L133
.LPIC4:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L133+4
.LPIC5:
	add	r3, pc
	mov	r1, r3
	mov	r2, #428
	ldr	r3, .L133+8
.LPIC6:
	add	r3, pc
	bl	__assert_fail(PLT)
.L126:
	b	.L127
.L132:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #12]
	ldr	r1, [r3, #100]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	add	r2, r3, #8
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #20]
	bl	_ZNK2OT18hb_apply_context_t9matcher_t8may_skipEPKS0_RK15hb_glyph_info_t(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #1
	bne	.L128
	b	.L127
.L128:
	ldr	r3, [r7, #4]
	add	r2, r3, #8
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	mov	r0, r2
	ldr	r1, [r7, #20]
	mov	r2, r3
	bl	_ZNK2OT18hb_apply_context_t9matcher_t9may_matchERK15hb_glyph_info_tPKNS_7IntTypeItLj2EEE(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #1
	beq	.L129
	ldr	r3, [r7, #12]
	cmp	r3, #2
	bne	.L130
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L130
.L129:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	subs	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #36]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	adds	r2, r3, #2
	ldr	r3, [r7, #4]
	str	r2, [r3, #32]
	movs	r3, #1
	b	.L131
.L130:
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L127
	movs	r3, #0
	b	.L131
.L127:
	ldr	r0, [r7, #4]
	bl	_ZNK2OT18hb_apply_context_t27skipping_forward_iterator_t13has_no_chanceEv(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L132
	movs	r3, #0
.L131:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L134:
	.align	2
.L133:
	.word	.LC3-(.LPIC4+4)
	.word	.LC4-(.LPIC5+4)
	.word	_ZZN2OT18hb_apply_context_t27skipping_forward_iterator_t4nextEvE19__PRETTY_FUNCTION__-(.LPIC6+4)
	.fnend
	.size	_ZN2OT18hb_apply_context_t27skipping_forward_iterator_t4nextEv, .-_ZN2OT18hb_apply_context_t27skipping_forward_iterator_t4nextEv
	.section	.text._ZNK2OT18hb_apply_context_t21match_properties_markEjjj,"axG",%progbits,_ZNK2OT18hb_apply_context_t21match_properties_markEjjj,comdat
	.align	2
	.weak	_ZNK2OT18hb_apply_context_t21match_properties_markEjjj
	.thumb
	.thumb_func
	.type	_ZNK2OT18hb_apply_context_t21match_properties_markEjjj, %function
_ZNK2OT18hb_apply_context_t21match_properties_markEjjj:
	.fnstart
.LFB609:
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
	ldr	r3, [r7]
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L136
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #40]
	ldr	r3, [r7]
	lsrs	r3, r3, #16
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #8]
	bl	_ZNK2OT4GDEF15mark_set_coversEjj(PLT)
	mov	r3, r0
	b	.L137
.L136:
	ldr	r3, [r7]
	and	r3, r3, #65280
	cmp	r3, #0
	beq	.L138
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	eors	r3, r3, r2
	and	r3, r3, #65280
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	b	.L137
.L138:
	movs	r3, #1
.L137:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT18hb_apply_context_t21match_properties_markEjjj, .-_ZNK2OT18hb_apply_context_t21match_properties_markEjjj
	.section	.text._ZNK2OT18hb_apply_context_t20check_glyph_propertyEPK15hb_glyph_info_tj,"axG",%progbits,_ZNK2OT18hb_apply_context_t20check_glyph_propertyEPK15hb_glyph_info_tj,comdat
	.align	2
	.weak	_ZNK2OT18hb_apply_context_t20check_glyph_propertyEPK15hb_glyph_info_tj
	.thumb
	.thumb_func
	.type	_ZNK2OT18hb_apply_context_t20check_glyph_propertyEPK15hb_glyph_info_tj, %function
_ZNK2OT18hb_apply_context_t20check_glyph_propertyEPK15hb_glyph_info_tj:
	.fnstart
.LFB610:
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
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r0, [r7, #8]
	bl	_ZL30_hb_glyph_info_get_glyph_propsPK15hb_glyph_info_t(PLT)
	str	r0, [r7, #16]
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #4]
	ands	r3, r3, r2
	and	r3, r3, #14
	cmp	r3, #0
	beq	.L140
	movs	r3, #0
	b	.L141
.L140:
	ldr	r3, [r7, #16]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L142
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #20]
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #4]
	bl	_ZNK2OT18hb_apply_context_t21match_properties_markEjjj(PLT)
	mov	r3, r0
	b	.L141
.L142:
	movs	r3, #1
.L141:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT18hb_apply_context_t20check_glyph_propertyEPK15hb_glyph_info_tj, .-_ZNK2OT18hb_apply_context_t20check_glyph_propertyEPK15hb_glyph_info_tj
	.section	.text._ZL28recategorize_combining_classjj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL28recategorize_combining_classjj, %function
_ZL28recategorize_combining_classjj:
	.fnstart
.LFB746:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #199
	bls	.L144
	ldr	r3, [r7]
	b	.L145
.L144:
	ldr	r3, [r7, #4]
	bic	r3, r3, #255
	cmp	r3, #3584
	bne	.L146
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L147
	ldr	r3, [r7, #4]
	movw	r2, #3761
	cmp	r3, r2
	beq	.L149
	movw	r2, #3761
	cmp	r3, r2
	bhi	.L150
	movw	r2, #3639
	cmp	r3, r2
	bhi	.L151
	movw	r2, #3636
	cmp	r3, r2
	bcs	.L152
	movw	r2, #3633
	cmp	r3, r2
	beq	.L152
	b	.L146
.L151:
	movw	r2, #3655
	cmp	r3, r2
	beq	.L152
	movw	r2, #3655
	cmp	r3, r2
	bcc	.L146
	subw	r3, r3, #3660
	cmp	r3, #2
	bhi	.L146
	b	.L152
.L150:
	movw	r2, #3771
	cmp	r3, r2
	beq	.L149
	movw	r2, #3771
	cmp	r3, r2
	bhi	.L153
	subw	r3, r3, #3764
	cmp	r3, #3
	bhi	.L146
	b	.L149
.L153:
	movw	r2, #3772
	cmp	r3, r2
	beq	.L154
	subw	r3, r3, #3788
	cmp	r3, #1
	bhi	.L146
	b	.L149
.L152:
	movs	r3, #232
	str	r3, [r7]
	b	.L148
.L149:
	movs	r3, #230
	str	r3, [r7]
	b	.L148
.L154:
	movs	r3, #220
	str	r3, [r7]
	nop
.L148:
	b	.L146
.L147:
	ldr	r2, [r7, #4]
	movw	r3, #3642
	cmp	r2, r3
	bne	.L146
	movs	r3, #222
	str	r3, [r7]
.L146:
	ldr	r3, [r7]
	subs	r3, r3, #3
	cmp	r3, #129
	bhi	.L155
	adr	r1, .L157
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L157:
	.word	.L156+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L158+1-.L157
	.word	.L159+1-.L157
	.word	.L155+1-.L157
	.word	.L161+1-.L157
	.word	.L159+1-.L157
	.word	.L162+1-.L157
	.word	.L162+1-.L157
	.word	.L162+1-.L157
	.word	.L162+1-.L157
	.word	.L162+1-.L157
	.word	.L162+1-.L157
	.word	.L162+1-.L157
	.word	.L162+1-.L157
	.word	.L162+1-.L157
	.word	.L162+1-.L157
	.word	.L162+1-.L157
	.word	.L163+1-.L157
	.word	.L164+1-.L157
	.word	.L164+1-.L157
	.word	.L164+1-.L157
	.word	.L165+1-.L157
	.word	.L164+1-.L157
	.word	.L164+1-.L157
	.word	.L165+1-.L157
	.word	.L164+1-.L157
	.word	.L164+1-.L157
	.word	.L164+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L166+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L167+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L168+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L155+1-.L157
	.word	.L169+1-.L157
	.word	.L170+1-.L157
	.word	.L155+1-.L157
	.word	.L171+1-.L157
.L162:
	movs	r3, #220
	b	.L145
.L161:
	movs	r3, #214
	b	.L145
.L158:
	movs	r3, #232
	b	.L145
.L159:
	movs	r3, #228
	b	.L145
.L163:
	movs	r3, #230
	b	.L145
.L164:
	movs	r3, #230
	b	.L145
.L165:
	movs	r3, #220
	b	.L145
.L156:
	movs	r3, #222
	b	.L145
.L166:
	movs	r3, #232
	b	.L145
.L167:
	movs	r3, #220
	b	.L145
.L168:
	movs	r3, #230
	b	.L145
.L169:
	movs	r3, #220
	b	.L145
.L170:
	movs	r3, #230
	b	.L145
.L171:
	movs	r3, #220
	b	.L145
.L155:
	ldr	r3, [r7]
.L145:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZL28recategorize_combining_classjj, .-_ZL28recategorize_combining_classjj
	.section	.text._Z49_hb_ot_shape_fallback_position_recategorize_marksPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t,"ax",%progbits
	.align	2
	.global	_Z49_hb_ot_shape_fallback_position_recategorize_marksPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t
	.hidden	_Z49_hb_ot_shape_fallback_position_recategorize_marksPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t
	.thumb
	.thumb_func
	.type	_Z49_hb_ot_shape_fallback_position_recategorize_marksPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t, %function
_Z49_hb_ot_shape_fallback_position_recategorize_marksPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t:
	.fnstart
.LFB747:
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
	b	.L173
.L175:
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
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
	beq	.L174
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL43_hb_glyph_info_get_modified_combining_classPK15hb_glyph_info_t(PLT)
	str	r0, [r7, #16]
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r1, [r7, #16]
	bl	_ZL28recategorize_combining_classjj(PLT)
	str	r0, [r7, #16]
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	mov	r0, r3
	ldr	r1, [r7, #16]
	bl	_ZL43_hb_glyph_info_set_modified_combining_classP15hb_glyph_info_tj(PLT)
.L174:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L173:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bcc	.L175
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_Z49_hb_ot_shape_fallback_position_recategorize_marksPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t, .-_Z49_hb_ot_shape_fallback_position_recategorize_marksPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t
	.section	.text._ZL18zero_mark_advancesP11hb_buffer_tjj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL18zero_mark_advancesP11hb_buffer_tjj, %function
_ZL18zero_mark_advancesP11hb_buffer_tjj:
	.fnstart
.LFB748:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #100]
	str	r3, [r7, #16]
	ldr	r3, [r7, #8]
	str	r3, [r7, #20]
	b	.L177
.L179:
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #16]
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
	beq	.L178
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #108]
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #108]
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	movs	r2, #0
	str	r2, [r3, #4]
.L178:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L177:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcc	.L179
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZL18zero_mark_advancesP11hb_buffer_tjj, .-_ZL18zero_mark_advancesP11hb_buffer_tjj
	.section	.text._ZL13position_markPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tR18hb_glyph_extents_tjj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL13position_markPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tR18hb_glyph_extents_tjj, %function
_ZL13position_markPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tR18hb_glyph_extents_tjj:
	.fnstart
.LFB749:
	@ args = 8, pretend = 0, frame = 48
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
	ldr	r1, [r3, #100]
	ldr	r2, [r7, #56]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r2, [r3]
	add	r3, r7, #20
	ldr	r0, [r7, #8]
	mov	r1, r2
	mov	r2, r3
	bl	_ZN9hb_font_t17get_glyph_extentsEjP18hb_glyph_extents_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L180
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #60]
	add	r2, r3, #15
	cmp	r3, #0
	ite	lt
	movlt	r3, r2
	movge	r3, r3
	asrs	r3, r3, #4
	str	r3, [r7, #44]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #108]
	ldr	r2, [r7, #56]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #40]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #40]
	str	r2, [r3, #8]
	ldr	r3, [r7, #60]
	subs	r3, r3, #200
	cmp	r3, #34
	bhi	.L183
	adr	r1, .L185
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L185:
	.word	.L184+1-.L185
	.word	.L183+1-.L185
	.word	.L183+1-.L185
	.word	.L183+1-.L185
	.word	.L183+1-.L185
	.word	.L183+1-.L185
	.word	.L183+1-.L185
	.word	.L183+1-.L185
	.word	.L183+1-.L185
	.word	.L183+1-.L185
	.word	.L183+1-.L185
	.word	.L183+1-.L185
	.word	.L183+1-.L185
	.word	.L183+1-.L185
	.word	.L183+1-.L185
	.word	.L183+1-.L185
	.word	.L186+1-.L185
	.word	.L183+1-.L185
	.word	.L184+1-.L185
	.word	.L183+1-.L185
	.word	.L183+1-.L185
	.word	.L183+1-.L185
	.word	.L186+1-.L185
	.word	.L183+1-.L185
	.word	.L183+1-.L185
	.word	.L183+1-.L185
	.word	.L183+1-.L185
	.word	.L183+1-.L185
	.word	.L184+1-.L185
	.word	.L183+1-.L185
	.word	.L183+1-.L185
	.word	.L183+1-.L185
	.word	.L186+1-.L185
	.word	.L187+1-.L185
	.word	.L187+1-.L185
.L187:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	cmp	r3, #4
	bne	.L188
	ldr	r3, [r7, #40]
	ldr	r2, [r3, #8]
	ldr	r3, [r7]
	ldr	r1, [r3]
	ldr	r3, [r7, #28]
	lsrs	r0, r3, #31
	add	r3, r3, r0
	asrs	r3, r3, #1
	subs	r1, r1, r3
	ldr	r3, [r7, #20]
	subs	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, [r7, #40]
	str	r2, [r3, #8]
	b	.L189
.L188:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	cmp	r3, #5
	bne	.L183
	ldr	r3, [r7, #40]
	ldr	r2, [r3, #8]
	ldr	r3, [r7]
	ldr	r1, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	add	r1, r1, r3
	ldr	r3, [r7, #28]
	lsrs	r0, r3, #31
	add	r3, r3, r0
	asrs	r3, r3, #1
	subs	r1, r1, r3
	ldr	r3, [r7, #20]
	subs	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, [r7, #40]
	str	r2, [r3, #8]
	b	.L189
.L183:
	ldr	r3, [r7, #40]
	ldr	r2, [r3, #8]
	ldr	r3, [r7]
	ldr	r1, [r3]
	ldr	r3, [r7]
	ldr	r0, [r3, #8]
	ldr	r3, [r7, #28]
	subs	r3, r0, r3
	lsrs	r0, r3, #31
	add	r3, r3, r0
	asrs	r3, r3, #1
	add	r1, r1, r3
	ldr	r3, [r7, #20]
	subs	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, [r7, #40]
	str	r2, [r3, #8]
	b	.L189
.L184:
	ldr	r3, [r7, #40]
	ldr	r2, [r3, #8]
	ldr	r3, [r7]
	ldr	r1, [r3]
	ldr	r3, [r7, #20]
	subs	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, [r7, #40]
	str	r2, [r3, #8]
	b	.L189
.L186:
	ldr	r3, [r7, #40]
	ldr	r2, [r3, #8]
	ldr	r3, [r7]
	ldr	r1, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	add	r1, r1, r3
	ldr	r3, [r7, #28]
	subs	r1, r1, r3
	ldr	r3, [r7, #20]
	subs	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, [r7, #40]
	str	r2, [r3, #8]
	nop
.L189:
	ldr	r3, [r7, #60]
	subs	r3, r3, #200
	cmp	r3, #34
	bhi	.L180
	adr	r1, .L192
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L192:
	.word	.L191+1-.L192
	.word	.L180+1-.L192
	.word	.L191+1-.L192
	.word	.L180+1-.L192
	.word	.L180+1-.L192
	.word	.L180+1-.L192
	.word	.L180+1-.L192
	.word	.L180+1-.L192
	.word	.L180+1-.L192
	.word	.L180+1-.L192
	.word	.L180+1-.L192
	.word	.L180+1-.L192
	.word	.L180+1-.L192
	.word	.L180+1-.L192
	.word	.L193+1-.L192
	.word	.L180+1-.L192
	.word	.L193+1-.L192
	.word	.L180+1-.L192
	.word	.L194+1-.L192
	.word	.L180+1-.L192
	.word	.L194+1-.L192
	.word	.L180+1-.L192
	.word	.L194+1-.L192
	.word	.L180+1-.L192
	.word	.L180+1-.L192
	.word	.L180+1-.L192
	.word	.L180+1-.L192
	.word	.L180+1-.L192
	.word	.L195+1-.L192
	.word	.L180+1-.L192
	.word	.L195+1-.L192
	.word	.L180+1-.L192
	.word	.L195+1-.L192
	.word	.L194+1-.L192
	.word	.L195+1-.L192
.L194:
	ldr	r3, [r7]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #44]
	subs	r2, r2, r3
	ldr	r3, [r7]
	str	r2, [r3, #12]
.L191:
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	add	r2, r2, r3
	ldr	r3, [r7, #24]
	subs	r2, r2, r3
	ldr	r3, [r7, #40]
	str	r2, [r3, #12]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	ite	le
	movle	r3, #1
	movgt	r3, #0
	uxtb	r2, r3
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	ite	gt
	movgt	r3, #1
	movle	r3, #0
	uxtb	r3, r3
	eors	r3, r3, r2
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L196
	ldr	r3, [r7]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #12]
	subs	r2, r2, r3
	ldr	r3, [r7]
	str	r2, [r3, #12]
	ldr	r3, [r7, #40]
	movs	r2, #0
	str	r2, [r3, #12]
.L196:
	ldr	r3, [r7]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #32]
	add	r2, r2, r3
	ldr	r3, [r7]
	str	r2, [r3, #12]
	b	.L190
.L195:
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #44]
	add	r2, r2, r3
	ldr	r3, [r7]
	str	r2, [r3, #4]
	ldr	r3, [r7]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #44]
	subs	r2, r2, r3
	ldr	r3, [r7]
	str	r2, [r3, #12]
.L193:
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	ldr	r1, [r7, #24]
	ldr	r3, [r7, #32]
	add	r3, r3, r1
	subs	r2, r2, r3
	ldr	r3, [r7, #40]
	str	r2, [r3, #12]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	ite	gt
	movgt	r3, #1
	movle	r3, #0
	uxtb	r2, r3
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	ite	gt
	movgt	r3, #1
	movle	r3, #0
	uxtb	r3, r3
	eors	r3, r3, r2
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L197
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #12]
	negs	r3, r3
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	str	r3, [r7, #36]
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7]
	str	r2, [r3, #4]
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	mov	r2, r3
	ldr	r3, [r7, #36]
	subs	r3, r2, r3
	mov	r2, r3
	ldr	r3, [r7]
	str	r2, [r3, #12]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #12]
	mov	r2, r3
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #40]
	str	r2, [r3, #12]
.L197:
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #32]
	subs	r2, r2, r3
	ldr	r3, [r7]
	str	r2, [r3, #4]
	ldr	r3, [r7]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #32]
	add	r2, r2, r3
	ldr	r3, [r7]
	str	r2, [r3, #12]
	nop
.L190:
.L180:
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL13position_markPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tR18hb_glyph_extents_tjj, .-_ZL13position_markPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tR18hb_glyph_extents_tjj
	.global	__aeabi_uidiv
	.section	.text._ZL20position_around_basePK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tjj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL20position_around_basePK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tjj, %function
_ZL20position_around_basePK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tjj:
	.fnstart
.LFB750:
	@ args = 4, pretend = 0, frame = 112
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #124
	sub	sp, sp, #124
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #108]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #100]
	ldr	r2, [r7]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r2, [r3]
	add	r3, r7, #48
	ldr	r0, [r7, #8]
	mov	r1, r2
	mov	r2, r3
	bl	_ZN9hb_font_t17get_glyph_extentsEjP18hb_glyph_extents_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L199
	ldr	r3, [r7]
	adds	r3, r3, #1
	ldr	r0, [r7, #4]
	mov	r1, r3
	ldr	r2, [r7, #128]
	bl	_ZL18zero_mark_advancesP11hb_buffer_tjj(PLT)
	b	.L198
.L199:
	ldr	r1, [r7, #48]
	ldr	r3, [r7, #4]
	ldr	r0, [r3, #108]
	ldr	r2, [r7]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	ldr	r3, [r3, #8]
	add	r3, r3, r1
	str	r3, [r7, #48]
	ldr	r1, [r7, #52]
	ldr	r3, [r7, #4]
	ldr	r0, [r3, #108]
	ldr	r2, [r7]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	ldr	r3, [r3, #12]
	add	r3, r3, r1
	str	r3, [r7, #52]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #100]
	ldr	r2, [r7]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	mov	r0, r3
	bl	_ZL25_hb_glyph_info_get_lig_idPK15hb_glyph_info_t(PLT)
	str	r0, [r7, #80]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #100]
	ldr	r2, [r7]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	mov	r0, r3
	bl	_ZL32_hb_glyph_info_get_lig_num_compsPK15hb_glyph_info_t(PLT)
	str	r0, [r7, #76]
	movs	r3, #0
	str	r3, [r7, #104]
	movs	r3, #0
	str	r3, [r7, #100]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	bic	r3, r3, #2
	cmp	r3, #4
	bne	.L201
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #108]
	ldr	r2, [r7]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r3, [r3]
	ldr	r2, [r7, #104]
	subs	r3, r2, r3
	str	r3, [r7, #104]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #108]
	ldr	r2, [r7]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #100]
	subs	r3, r2, r3
	str	r3, [r7, #100]
.L201:
	add	r4, r7, #32
	add	r3, r7, #48
	ldmia	r3, {r0, r1, r2, r3}
	stmia	r4, {r0, r1, r2, r3}
	mov	r3, #-1
	str	r3, [r7, #96]
	movs	r3, #255
	str	r3, [r7, #92]
	add	r4, r7, #16
	add	r3, r7, #48
	ldmia	r3, {r0, r1, r2, r3}
	stmia	r4, {r0, r1, r2, r3}
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	str	r3, [r7, #72]
	ldr	r3, [r7]
	adds	r3, r3, #1
	str	r3, [r7, #88]
	b	.L202
.L216:
	ldr	r2, [r7, #88]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #72]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL43_hb_glyph_info_get_modified_combining_classPK15hb_glyph_info_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L203
	ldr	r3, [r7, #76]
	cmp	r3, #1
	bls	.L204
	ldr	r2, [r7, #88]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #72]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL25_hb_glyph_info_get_lig_idPK15hb_glyph_info_t(PLT)
	str	r0, [r7, #68]
	ldr	r2, [r7, #88]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #72]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL27_hb_glyph_info_get_lig_compPK15hb_glyph_info_t(PLT)
	mov	r3, r0
	subs	r3, r3, #1
	str	r3, [r7, #84]
	ldr	r3, [r7, #80]
	cmp	r3, #0
	beq	.L205
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #68]
	cmp	r2, r3
	bne	.L205
	ldr	r2, [r7, #84]
	ldr	r3, [r7, #76]
	cmp	r2, r3
	bcc	.L206
.L205:
	ldr	r3, [r7, #76]
	subs	r3, r3, #1
	str	r3, [r7, #84]
.L206:
	ldr	r2, [r7, #96]
	ldr	r3, [r7, #84]
	cmp	r2, r3
	beq	.L207
	ldr	r3, [r7, #84]
	str	r3, [r7, #96]
	movs	r3, #255
	str	r3, [r7, #92]
	add	r4, r7, #32
	add	r3, r7, #48
	ldmia	r3, {r0, r1, r2, r3}
	stmia	r4, {r0, r1, r2, r3}
	ldr	r3, [r7, #108]
	cmp	r3, #0
	bne	.L208
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r3, r3, #1
	cmp	r3, #4
	bne	.L209
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #108]
	b	.L208
.L209:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	hb_script_get_horizontal_direction(PLT)
	mov	r3, r0
	str	r3, [r7, #108]
.L208:
	ldr	r3, [r7, #108]
	cmp	r3, #4
	bne	.L211
	ldr	r3, [r7, #32]
	mov	r4, r3
	ldr	r3, [r7, #40]
	ldr	r2, [r7, #84]
	mul	r3, r2, r3
	mov	r0, r3
	ldr	r1, [r7, #76]
	bl	__aeabi_uidiv(PLT)
	mov	r3, r0
	add	r3, r3, r4
	str	r3, [r7, #32]
	b	.L212
.L211:
	ldr	r3, [r7, #32]
	mov	r4, r3
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #84]
	subs	r3, r2, r3
	subs	r3, r3, #1
	ldr	r2, [r7, #40]
	mul	r3, r2, r3
	mov	r0, r3
	ldr	r1, [r7, #76]
	bl	__aeabi_uidiv(PLT)
	mov	r3, r0
	add	r3, r3, r4
	str	r3, [r7, #32]
.L212:
	ldr	r3, [r7, #40]
	mov	r0, r3
	ldr	r1, [r7, #76]
	bl	__aeabi_uidiv(PLT)
	mov	r3, r0
	str	r3, [r7, #40]
.L207:
.L204:
	ldr	r2, [r7, #88]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #72]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL43_hb_glyph_info_get_modified_combining_classPK15hb_glyph_info_t(PLT)
	str	r0, [r7, #64]
	ldr	r2, [r7, #92]
	ldr	r3, [r7, #64]
	cmp	r2, r3
	beq	.L213
	ldr	r3, [r7, #64]
	str	r3, [r7, #92]
	add	r4, r7, #16
	add	r3, r7, #32
	ldmia	r3, {r0, r1, r2, r3}
	stmia	r4, {r0, r1, r2, r3}
.L213:
	add	r3, r7, #16
	ldr	r2, [r7, #88]
	str	r2, [sp]
	ldr	r2, [r7, #64]
	str	r2, [sp, #4]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	_ZL13position_markPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tR18hb_glyph_extents_tjj(PLT)
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #108]
	ldr	r2, [r7, #88]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #108]
	ldr	r2, [r7, #88]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #108]
	ldr	r2, [r7, #88]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r1, r1, r3
	ldr	r3, [r7, #4]
	ldr	r0, [r3, #108]
	ldr	r2, [r7, #88]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #104]
	add	r3, r3, r2
	str	r3, [r1, #8]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #108]
	ldr	r2, [r7, #88]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r1, r1, r3
	ldr	r3, [r7, #4]
	ldr	r0, [r3, #108]
	ldr	r2, [r7, #88]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #100]
	add	r3, r3, r2
	str	r3, [r1, #12]
	b	.L214
.L203:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	bic	r3, r3, #2
	cmp	r3, #4
	bne	.L215
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #108]
	ldr	r2, [r7, #88]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r3, [r3]
	ldr	r2, [r7, #104]
	subs	r3, r2, r3
	str	r3, [r7, #104]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #108]
	ldr	r2, [r7, #88]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #100]
	subs	r3, r2, r3
	str	r3, [r7, #100]
	b	.L214
.L215:
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #108]
	ldr	r2, [r7, #88]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r3, [r3]
	ldr	r2, [r7, #104]
	add	r3, r3, r2
	str	r3, [r7, #104]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #108]
	ldr	r2, [r7, #88]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #100]
	add	r3, r3, r2
	str	r3, [r7, #100]
.L214:
	ldr	r3, [r7, #88]
	adds	r3, r3, #1
	str	r3, [r7, #88]
.L202:
	ldr	r2, [r7, #88]
	ldr	r3, [r7, #128]
	cmp	r2, r3
	bcc	.L216
.L198:
	adds	r7, r7, #116
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZL20position_around_basePK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tjj, .-_ZL20position_around_basePK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tjj
	.section	.text._ZL16position_clusterPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tjj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL16position_clusterPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tjj, %function
_ZL16position_clusterPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tjj:
	.fnstart
.LFB751:
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #40
	sub	sp, sp, #40
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r2, [r7, #40]
	ldr	r3, [r7]
	subs	r3, r2, r3
	cmp	r3, #1
	bhi	.L218
	b	.L217
.L218:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	str	r3, [r7, #20]
	ldr	r3, [r7]
	str	r3, [r7, #28]
	b	.L220
.L226:
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL35_hb_glyph_info_get_general_categoryPK15hb_glyph_info_t(PLT)
	mov	r3, r0
	mov	r2, #7168
	asr	r3, r2, r3
	and	r3, r3, #1
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L221
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #24]
	b	.L222
.L225:
	ldr	r2, [r7, #24]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL35_hb_glyph_info_get_general_categoryPK15hb_glyph_info_t(PLT)
	mov	r3, r0
	mov	r2, #7168
	asr	r3, r2, r3
	and	r3, r3, #1
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L223
	b	.L224
.L223:
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
.L222:
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bcc	.L225
.L224:
	ldr	r3, [r7, #24]
	str	r3, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #28]
	bl	_ZL20position_around_basePK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tjj(PLT)
	ldr	r3, [r7, #24]
	subs	r3, r3, #1
	str	r3, [r7, #28]
.L221:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L220:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bcc	.L226
.L217:
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL16position_clusterPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tjj, .-_ZL16position_clusterPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tjj
	.section	.text._Z30_hb_ot_shape_fallback_positionPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t,"ax",%progbits
	.align	2
	.global	_Z30_hb_ot_shape_fallback_positionPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t
	.hidden	_Z30_hb_ot_shape_fallback_positionPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t
	.thumb
	.thumb_func
	.type	_Z30_hb_ot_shape_fallback_positionPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t, %function
_Z30_hb_ot_shape_fallback_positionPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t:
	.fnstart
.LFB752:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #40
	sub	sp, sp, #40
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r0, [r7, #4]
	bl	_ZL31_hb_buffer_assert_gsubgpos_varsP11hb_buffer_t(PLT)
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	ldr	r3, [r3, #8]
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	str	r3, [r7, #16]
	movs	r3, #1
	str	r3, [r7, #20]
	b	.L228
.L230:
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #100]
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	beq	.L229
	ldr	r3, [r7, #20]
	str	r3, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #28]
	bl	_ZL16position_clusterPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tjj(PLT)
	ldr	r3, [r7, #20]
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #100]
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r3, [r3, #8]
	str	r3, [r7, #24]
.L229:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L228:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bcc	.L230
	ldr	r3, [r7, #16]
	str	r3, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #28]
	bl	_ZL16position_clusterPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tjj(PLT)
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_Z30_hb_ot_shape_fallback_positionPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t, .-_Z30_hb_ot_shape_fallback_positionPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t
	.section	.text._Z26_hb_ot_shape_fallback_kernPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t,"ax",%progbits
	.align	2
	.global	_Z26_hb_ot_shape_fallback_kernPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t
	.hidden	_Z26_hb_ot_shape_fallback_kernPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t
	.thumb
	.thumb_func
	.type	_Z26_hb_ot_shape_fallback_kernPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t, %function
_Z26_hb_ot_shape_fallback_kernPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t:
	.fnstart
.LFB753:
	@ args = 0, pretend = 0, frame = 152
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #160
	sub	sp, sp, #160
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #988]
	ubfx	r3, r3, #1, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L231
	add	r3, r7, #60
	mov	r0, r3
	movs	r1, #1
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	bl	_ZN2OT18hb_apply_context_tC1EjP9hb_font_tP11hb_buffer_t(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #984]
	add	r2, r7, #60
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OT18hb_apply_context_t15set_lookup_maskEj(PLT)
	add	r3, r7, #60
	mov	r0, r3
	movs	r1, #8
	bl	_ZN2OT18hb_apply_context_t16set_lookup_propsEj(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	str	r3, [r7, #144]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	str	r3, [r7, #140]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #108]
	str	r3, [r7, #136]
	movs	r3, #0
	str	r3, [r7, #148]
	b	.L234
.L238:
	add	r2, r7, #16
	add	r3, r7, #60
	movs	r1, #0
	str	r1, [sp]
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #148]
	movs	r3, #1
	bl	_ZN2OT18hb_apply_context_t27skipping_forward_iterator_tC1EPS0_jjb(PLT)
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN2OT18hb_apply_context_t27skipping_forward_iterator_t4nextEv(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L235
	ldr	r3, [r7, #148]
	adds	r3, r3, #1
	str	r3, [r7, #148]
	b	.L234
.L235:
	ldr	r2, [r7, #148]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #140]
	add	r3, r3, r2
	ldr	r1, [r3]
	ldr	r2, [r7, #16]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #140]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	add	r0, r7, #116
	str	r0, [sp]
	add	r0, r7, #112
	str	r0, [sp, #4]
	ldr	r0, [r7, #8]
	bl	_ZN9hb_font_t31get_glyph_kerning_for_directionEjj14hb_direction_tPiS1_(PLT)
	ldr	r3, [r7, #116]
	cmp	r3, #0
	beq	.L236
	ldr	r3, [r7, #116]
	asrs	r3, r3, #1
	str	r3, [r7, #132]
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #132]
	subs	r3, r2, r3
	str	r3, [r7, #128]
	ldr	r2, [r7, #148]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #136]
	adds	r1, r2, r3
	ldr	r2, [r7, #148]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #136]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #132]
	add	r3, r3, r2
	str	r3, [r1]
	ldr	r2, [r7, #16]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #136]
	adds	r1, r2, r3
	ldr	r2, [r7, #16]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #136]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #128]
	add	r3, r3, r2
	str	r3, [r1]
	ldr	r2, [r7, #16]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #136]
	adds	r1, r2, r3
	ldr	r2, [r7, #16]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #136]
	add	r3, r3, r2
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #128]
	add	r3, r3, r2
	str	r3, [r1, #8]
.L236:
	ldr	r3, [r7, #112]
	cmp	r3, #0
	beq	.L237
	ldr	r3, [r7, #112]
	asrs	r3, r3, #1
	str	r3, [r7, #124]
	ldr	r2, [r7, #112]
	ldr	r3, [r7, #124]
	subs	r3, r2, r3
	str	r3, [r7, #120]
	ldr	r2, [r7, #148]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #136]
	adds	r1, r2, r3
	ldr	r2, [r7, #148]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #136]
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #124]
	add	r3, r3, r2
	str	r3, [r1, #4]
	ldr	r2, [r7, #16]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #136]
	adds	r1, r2, r3
	ldr	r2, [r7, #16]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #136]
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #120]
	add	r3, r3, r2
	str	r3, [r1, #4]
	ldr	r2, [r7, #16]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #136]
	adds	r1, r2, r3
	ldr	r2, [r7, #16]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #136]
	add	r3, r3, r2
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #120]
	add	r3, r3, r2
	str	r3, [r1, #12]
.L237:
	ldr	r3, [r7, #16]
	str	r3, [r7, #148]
.L234:
	ldr	r2, [r7, #148]
	ldr	r3, [r7, #144]
	cmp	r2, r3
	bcc	.L238
.L231:
	adds	r7, r7, #152
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_Z26_hb_ot_shape_fallback_kernPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t, .-_Z26_hb_ot_shape_fallback_kernPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t
	.section	.text._ZNK2OT7IntTypeIjLj4EEcvjEv,"axG",%progbits,_ZNK2OT7IntTypeIjLj4EEcvjEv,comdat
	.align	2
	.weak	_ZNK2OT7IntTypeIjLj4EEcvjEv
	.thumb
	.thumb_func
	.type	_ZNK2OT7IntTypeIjLj4EEcvjEv, %function
_ZNK2OT7IntTypeIjLj4EEcvjEv:
	.fnstart
.LFB779:
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
.LFB781:
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
.LFB784:
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
	.section	.text._ZNK2OT13SortedArrayOfINS_7IntTypeItLj2EEES2_E7bsearchIjEEiRKT_,"axG",%progbits,_ZNK2OT13SortedArrayOfINS_7IntTypeItLj2EEES2_E7bsearchIjEEiRKT_,comdat
	.align	2
	.weak	_ZNK2OT13SortedArrayOfINS_7IntTypeItLj2EEES2_E7bsearchIjEEiRKT_
	.thumb
	.thumb_func
	.type	_ZNK2OT13SortedArrayOfINS_7IntTypeItLj2EEES2_E7bsearchIjEEiRKT_, %function
_ZNK2OT13SortedArrayOfINS_7IntTypeItLj2EEES2_E7bsearchIjEEiRKT_:
	.fnstart
.LFB817:
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
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	subs	r3, r3, #1
	str	r3, [r7, #16]
	b	.L246
.L250:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	add	r3, r3, r2
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #1
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r2, r3, #2
	ldr	r3, [r7]
	ldr	r3, [r3]
	uxth	r3, r3
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK2OT7IntTypeItLj2EE3cmpEt(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bge	.L247
	ldr	r3, [r7, #12]
	subs	r3, r3, #1
	str	r3, [r7, #16]
	b	.L246
.L247:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	ble	.L248
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #20]
	b	.L246
.L248:
	ldr	r3, [r7, #12]
	b	.L249
.L246:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	ble	.L250
	mov	r3, #-1
.L249:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT13SortedArrayOfINS_7IntTypeItLj2EEES2_E7bsearchIjEEiRKT_, .-_ZNK2OT13SortedArrayOfINS_7IntTypeItLj2EEES2_E7bsearchIjEEiRKT_
	.section	.text._ZNK2OT13SortedArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEE7bsearchIjEEiRKT_,"axG",%progbits,_ZNK2OT13SortedArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEE7bsearchIjEEiRKT_,comdat
	.align	2
	.weak	_ZNK2OT13SortedArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEE7bsearchIjEEiRKT_
	.thumb
	.thumb_func
	.type	_ZNK2OT13SortedArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEE7bsearchIjEEiRKT_, %function
_ZNK2OT13SortedArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEE7bsearchIjEEiRKT_:
	.fnstart
.LFB825:
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
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	subs	r3, r3, #1
	str	r3, [r7, #16]
	b	.L252
.L256:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	add	r3, r3, r2
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #1
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r2, r3, #2
	ldr	r3, [r7]
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK2OT11RangeRecord3cmpEj(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bge	.L253
	ldr	r3, [r7, #12]
	subs	r3, r3, #1
	str	r3, [r7, #16]
	b	.L252
.L253:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	ble	.L254
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #20]
	b	.L252
.L254:
	ldr	r3, [r7, #12]
	b	.L255
.L252:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	ble	.L256
	mov	r3, #-1
.L255:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT13SortedArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEE7bsearchIjEEiRKT_, .-_ZNK2OT13SortedArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEE7bsearchIjEEiRKT_
	.section	.text._ZNK2OT7ArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEEixEj,"axG",%progbits,_ZNK2OT7ArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEEixEj,comdat
	.align	2
	.weak	_ZNK2OT7ArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEEixEj
	.thumb
	.thumb_func
	.type	_ZNK2OT7ArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEEixEj, %function
_ZNK2OT7ArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEEixEj:
	.fnstart
.LFB826:
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
	beq	.L258
	bl	_ZN2OTL4NullINS_11RangeRecordEEERKT_v(PLT)
	mov	r3, r0
	b	.L259
.L258:
	ldr	r2, [r7]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #1
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #2
.L259:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT7ArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEEixEj, .-_ZNK2OT7ArrayOfINS_11RangeRecordENS_7IntTypeItLj2EEEEixEj
	.section	.text._ZNK2OT7ArrayOfINS_8OffsetToINS_8CoverageENS_7IntTypeIjLj4EEEEENS3_ItLj2EEEEixEj,"axG",%progbits,_ZNK2OT7ArrayOfINS_8OffsetToINS_8CoverageENS_7IntTypeIjLj4EEEEENS3_ItLj2EEEEixEj,comdat
	.align	2
	.weak	_ZNK2OT7ArrayOfINS_8OffsetToINS_8CoverageENS_7IntTypeIjLj4EEEEENS3_ItLj2EEEEixEj
	.thumb
	.thumb_func
	.type	_ZNK2OT7ArrayOfINS_8OffsetToINS_8CoverageENS_7IntTypeIjLj4EEEEENS3_ItLj2EEEEixEj, %function
_ZNK2OT7ArrayOfINS_8OffsetToINS_8CoverageENS_7IntTypeIjLj4EEEEENS3_ItLj2EEEEixEj:
	.fnstart
.LFB856:
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
	beq	.L261
	bl	_ZN2OTL4NullINS_8OffsetToINS_8CoverageENS_7IntTypeIjLj4EEEEEEERKT_v(PLT)
	mov	r3, r0
	b	.L262
.L261:
	ldr	r3, [r7]
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #2
.L262:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT7ArrayOfINS_8OffsetToINS_8CoverageENS_7IntTypeIjLj4EEEEENS3_ItLj2EEEEixEj, .-_ZNK2OT7ArrayOfINS_8OffsetToINS_8CoverageENS_7IntTypeIjLj4EEEEENS3_ItLj2EEEEixEj
	.section	.text._ZN2OTplIPKNS_20MarkGlyphSetsFormat1ENS_7IntTypeIjLj4EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTplIPKNS_20MarkGlyphSetsFormat1ENS_7IntTypeIjLj4EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE, %function
_ZN2OTplIPKNS_20MarkGlyphSetsFormat1ENS_7IntTypeIjLj4EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE:
	.fnstart
.LFB857:
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
	bl	_ZNK2OT8OffsetToINS_8CoverageENS_7IntTypeIjLj4EEEEclEPKv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OTplIPKNS_20MarkGlyphSetsFormat1ENS_7IntTypeIjLj4EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE, .-_ZN2OTplIPKNS_20MarkGlyphSetsFormat1ENS_7IntTypeIjLj4EEENS_8CoverageEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE
	.section	.text._ZN2OTplIPKNS_4GDEFENS_7IntTypeItLj2EEENS_13MarkGlyphSetsEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTplIPKNS_4GDEFENS_7IntTypeItLj2EEENS_13MarkGlyphSetsEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE, %function
_ZN2OTplIPKNS_4GDEFENS_7IntTypeItLj2EEENS_13MarkGlyphSetsEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE:
	.fnstart
.LFB862:
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
	bl	_ZNK2OT8OffsetToINS_13MarkGlyphSetsENS_7IntTypeItLj2EEEEclEPKv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OTplIPKNS_4GDEFENS_7IntTypeItLj2EEENS_13MarkGlyphSetsEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE, .-_ZN2OTplIPKNS_4GDEFENS_7IntTypeItLj2EEENS_13MarkGlyphSetsEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE
	.section	.text._ZN2OTL4NullINS_8CoverageEEERKT_v,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL4NullINS_8CoverageEEERKT_v, %function
_ZN2OTL4NullINS_8CoverageEEERKT_v:
	.fnstart
.LFB867:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r3, .L269
.LPIC7:
	add	r3, pc
	mov	r0, r3
	bl	_ZN2OTL5CastPINS_8CoverageEPKvEEPT_PT0_(PLT)
	mov	r3, r0
	mov	r0, r3
	pop	{r7, pc}
.L270:
	.align	2
.L269:
	.word	_ZN2OTL9_NullPoolE-(.LPIC7+4)
	.cantunwind
	.fnend
	.size	_ZN2OTL4NullINS_8CoverageEEERKT_v, .-_ZN2OTL4NullINS_8CoverageEEERKT_v
	.section	.text._ZNK2OT5BEIntIjLi4EEcvjEv,"axG",%progbits,_ZNK2OT5BEIntIjLi4EEcvjEv,comdat
	.align	2
	.weak	_ZNK2OT5BEIntIjLi4EEcvjEv
	.thumb
	.thumb_func
	.type	_ZNK2OT5BEIntIjLi4EEcvjEv, %function
_ZNK2OT5BEIntIjLi4EEcvjEv:
	.fnstart
.LFB937:
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
.LFB939:
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
	.section	.text._ZNK2OT7IntTypeItLj2EE3cmpEt,"axG",%progbits,_ZNK2OT7IntTypeItLj2EE3cmpEt,comdat
	.align	2
	.weak	_ZNK2OT7IntTypeItLj2EE3cmpEt
	.thumb
	.thumb_func
	.type	_ZNK2OT7IntTypeItLj2EE3cmpEt, %function
_ZNK2OT7IntTypeItLj2EE3cmpEt:
	.fnstart
.LFB968:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZNK2OT5BEIntItLi2EEcvtEv(PLT)
	mov	r3, r0
	strh	r3, [r7, #14]	@ movhi
	ldrh	r2, [r7, #2]
	ldrh	r3, [r7, #14]
	cmp	r2, r3
	bcc	.L276
	ldrh	r2, [r7, #2]
	ldrh	r3, [r7, #14]
	cmp	r2, r3
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	b	.L277
.L276:
	mov	r3, #-1
.L277:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZNK2OT7IntTypeItLj2EE3cmpEt, .-_ZNK2OT7IntTypeItLj2EE3cmpEt
	.section	.text._ZN2OTL4NullINS_8OffsetToINS_8CoverageENS_7IntTypeIjLj4EEEEEEERKT_v,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL4NullINS_8OffsetToINS_8CoverageENS_7IntTypeIjLj4EEEEEEERKT_v, %function
_ZN2OTL4NullINS_8OffsetToINS_8CoverageENS_7IntTypeIjLj4EEEEEEERKT_v:
	.fnstart
.LFB1001:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r3, .L281
.LPIC8:
	add	r3, pc
	mov	r0, r3
	bl	_ZN2OTL5CastPINS_8OffsetToINS_8CoverageENS_7IntTypeIjLj4EEEEEPKvEEPT_PT0_(PLT)
	mov	r3, r0
	mov	r0, r3
	pop	{r7, pc}
.L282:
	.align	2
.L281:
	.word	_ZN2OTL9_NullPoolE-(.LPIC8+4)
	.cantunwind
	.fnend
	.size	_ZN2OTL4NullINS_8OffsetToINS_8CoverageENS_7IntTypeIjLj4EEEEEEERKT_v, .-_ZN2OTL4NullINS_8OffsetToINS_8CoverageENS_7IntTypeIjLj4EEEEEEERKT_v
	.section	.text._ZNK2OT8OffsetToINS_8CoverageENS_7IntTypeIjLj4EEEEclEPKv,"axG",%progbits,_ZNK2OT8OffsetToINS_8CoverageENS_7IntTypeIjLj4EEEEclEPKv,comdat
	.align	2
	.weak	_ZNK2OT8OffsetToINS_8CoverageENS_7IntTypeIjLj4EEEEclEPKv
	.thumb
	.thumb_func
	.type	_ZNK2OT8OffsetToINS_8CoverageENS_7IntTypeIjLj4EEEEclEPKv, %function
_ZNK2OT8OffsetToINS_8CoverageENS_7IntTypeIjLj4EEEEclEPKv:
	.fnstart
.LFB1002:
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
	bl	_ZNK2OT7IntTypeIjLj4EEcvjEv(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L284
	bl	_ZN2OTL4NullINS_8CoverageEEERKT_v(PLT)
	mov	r3, r0
	b	.L285
.L284:
	ldr	r0, [r7]
	ldr	r1, [r7, #12]
	bl	_ZN2OTL14StructAtOffsetINS_8CoverageEEERKT_PKvj(PLT)
	mov	r3, r0
.L285:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT8OffsetToINS_8CoverageENS_7IntTypeIjLj4EEEEclEPKv, .-_ZNK2OT8OffsetToINS_8CoverageENS_7IntTypeIjLj4EEEEclEPKv
	.section	.text._ZNK2OT8OffsetToINS_13MarkGlyphSetsENS_7IntTypeItLj2EEEEclEPKv,"axG",%progbits,_ZNK2OT8OffsetToINS_13MarkGlyphSetsENS_7IntTypeItLj2EEEEclEPKv,comdat
	.align	2
	.weak	_ZNK2OT8OffsetToINS_13MarkGlyphSetsENS_7IntTypeItLj2EEEEclEPKv
	.thumb
	.thumb_func
	.type	_ZNK2OT8OffsetToINS_13MarkGlyphSetsENS_7IntTypeItLj2EEEEclEPKv, %function
_ZNK2OT8OffsetToINS_13MarkGlyphSetsENS_7IntTypeItLj2EEEEclEPKv:
	.fnstart
.LFB1008:
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
	bne	.L287
	bl	_ZN2OTL4NullINS_13MarkGlyphSetsEEERKT_v(PLT)
	mov	r3, r0
	b	.L288
.L287:
	ldr	r0, [r7]
	ldr	r1, [r7, #12]
	bl	_ZN2OTL14StructAtOffsetINS_13MarkGlyphSetsEEERKT_PKvj(PLT)
	mov	r3, r0
.L288:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT8OffsetToINS_13MarkGlyphSetsENS_7IntTypeItLj2EEEEclEPKv, .-_ZNK2OT8OffsetToINS_13MarkGlyphSetsENS_7IntTypeItLj2EEEEclEPKv
	.section	.text._ZN2OTL5CastPINS_8CoverageEPKvEEPT_PT0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL5CastPINS_8CoverageEPKvEEPT_PT0_, %function
_ZN2OTL5CastPINS_8CoverageEPKvEEPT_PT0_:
	.fnstart
.LFB1021:
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
	.section	.text._ZN2OTL14StructAtOffsetINS_8CoverageEEERKT_PKvj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL14StructAtOffsetINS_8CoverageEEERKT_PKvj, %function
_ZN2OTL14StructAtOffsetINS_8CoverageEEERKT_PKvj:
	.fnstart
.LFB1099:
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
	.section	.text._ZN2OTL5CastPINS_8OffsetToINS_8CoverageENS_7IntTypeIjLj4EEEEEPKvEEPT_PT0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL5CastPINS_8OffsetToINS_8CoverageENS_7IntTypeIjLj4EEEEEPKvEEPT_PT0_, %function
_ZN2OTL5CastPINS_8OffsetToINS_8CoverageENS_7IntTypeIjLj4EEEEEPKvEEPT_PT0_:
	.fnstart
.LFB1123:
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
	.size	_ZN2OTL5CastPINS_8OffsetToINS_8CoverageENS_7IntTypeIjLj4EEEEEPKvEEPT_PT0_, .-_ZN2OTL5CastPINS_8OffsetToINS_8CoverageENS_7IntTypeIjLj4EEEEEPKvEEPT_PT0_
	.section	.text._ZN2OTL4NullINS_13MarkGlyphSetsEEERKT_v,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL4NullINS_13MarkGlyphSetsEEERKT_v, %function
_ZN2OTL4NullINS_13MarkGlyphSetsEEERKT_v:
	.fnstart
.LFB1133:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r3, .L297
.LPIC9:
	add	r3, pc
	mov	r0, r3
	bl	_ZN2OTL5CastPINS_13MarkGlyphSetsEPKvEEPT_PT0_(PLT)
	mov	r3, r0
	mov	r0, r3
	pop	{r7, pc}
.L298:
	.align	2
.L297:
	.word	_ZN2OTL9_NullPoolE-(.LPIC9+4)
	.cantunwind
	.fnend
	.size	_ZN2OTL4NullINS_13MarkGlyphSetsEEERKT_v, .-_ZN2OTL4NullINS_13MarkGlyphSetsEEERKT_v
	.section	.text._ZN2OTL14StructAtOffsetINS_13MarkGlyphSetsEEERKT_PKvj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL14StructAtOffsetINS_13MarkGlyphSetsEEERKT_PKvj, %function
_ZN2OTL14StructAtOffsetINS_13MarkGlyphSetsEEERKT_PKvj:
	.fnstart
.LFB1134:
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
	.size	_ZN2OTL14StructAtOffsetINS_13MarkGlyphSetsEEERKT_PKvj, .-_ZN2OTL14StructAtOffsetINS_13MarkGlyphSetsEEERKT_PKvj
	.section	.text._ZN2OTL5CastPINS_13MarkGlyphSetsEPKvEEPT_PT0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL5CastPINS_13MarkGlyphSetsEPKvEEPT_PT0_, %function
_ZN2OTL5CastPINS_13MarkGlyphSetsEPKvEEPT_PT0_:
	.fnstart
.LFB1204:
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
	.size	_ZN2OTL5CastPINS_13MarkGlyphSetsEPKvEEPT_PT0_, .-_ZN2OTL5CastPINS_13MarkGlyphSetsEPKvEEPT_PT0_
	.section	.rodata._ZL10table_tags,"a",%progbits
	.align	2
	.type	_ZL10table_tags, %object
	.size	_ZL10table_tags, 8
_ZL10table_tags:
	.word	1196643650
	.word	1196445523
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
	.section	.rodata._ZZN2OT18hb_apply_context_t27skipping_forward_iterator_t4nextEvE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT18hb_apply_context_t27skipping_forward_iterator_t4nextEvE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT18hb_apply_context_t27skipping_forward_iterator_t4nextEvE19__PRETTY_FUNCTION__, 65
_ZZN2OT18hb_apply_context_t27skipping_forward_iterator_t4nextEvE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::hb_apply_context_t::skipping_forward_itera"
	.ascii	"tor_t::next()\000"
	.hidden	_ZN11hb_buffer_t10assert_varEjjPKc
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
