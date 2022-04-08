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
	.file	"hb-fallback-shape.cc"
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
	bne	.L12
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_ZN9hb_font_t19get_glyph_h_advanceEj(PLT)
	mov	r2, r0
	ldr	r3, [r7]
	str	r2, [r3]
	ldr	r3, [r7, #24]
	movs	r2, #0
	str	r2, [r3]
	b	.L11
.L12:
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_ZN9hb_font_t19get_glyph_v_advanceEj(PLT)
	mov	r2, r0
	ldr	r3, [r7, #24]
	str	r2, [r3]
.L11:
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
	bne	.L16
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7]
	ldr	r3, [r7, #40]
	bl	_ZN9hb_font_t18get_glyph_h_originEjPiS0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L17
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7]
	ldr	r3, [r7, #40]
	bl	_ZN9hb_font_t18get_glyph_v_originEjPiS0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L17
	movs	r3, #1
	b	.L18
.L17:
	movs	r3, #0
.L18:
	cmp	r3, #0
	beq	.L19
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
.L19:
	b	.L15
.L16:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7]
	ldr	r3, [r7, #40]
	bl	_ZN9hb_font_t18get_glyph_v_originEjPiS0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L21
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7]
	ldr	r3, [r7, #40]
	bl	_ZN9hb_font_t18get_glyph_h_originEjPiS0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L21
	movs	r3, #1
	b	.L22
.L21:
	movs	r3, #0
.L22:
	cmp	r3, #0
	beq	.L15
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
.L15:
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN9hb_font_t30get_glyph_origin_for_directionEj14hb_direction_tPiS1_, .-_ZN9hb_font_t30get_glyph_origin_for_directionEj14hb_direction_tPiS1_
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
	bne	.L25
	ldr	r3, [r7, #4]
	lsrs	r3, r3, #8
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #23
	beq	.L27
	cmp	r3, #23
	bhi	.L28
	cmp	r3, #3
	beq	.L29
	cmp	r3, #6
	beq	.L30
	cmp	r3, #0
	beq	.L31
	b	.L26
.L28:
	cmp	r3, #32
	beq	.L32
	cmp	r3, #32
	bhi	.L33
	cmp	r3, #24
	beq	.L34
	b	.L26
.L33:
	cmp	r3, #254
	beq	.L35
	cmp	r3, #255
	beq	.L36
	b	.L26
.L31:
	ldr	r3, [r7, #4]
	cmp	r3, #173
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	b	.L37
.L29:
	ldr	r2, [r7, #4]
	movw	r3, #847
	cmp	r2, r3
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	b	.L37
.L30:
	ldr	r2, [r7, #4]
	movw	r3, #1564
	cmp	r2, r3
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	b	.L37
.L27:
	ldr	r0, [r7, #4]
	movw	r1, #6068
	movw	r2, #6069
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	b	.L37
.L34:
	ldr	r0, [r7, #4]
	movw	r1, #6155
	movw	r2, #6158
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	b	.L37
.L32:
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
	b	.L37
.L35:
	ldr	r0, [r7, #4]
	mov	r1, #65024
	movw	r2, #65039
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L38
	ldr	r2, [r7, #4]
	movw	r3, #65279
	cmp	r2, r3
	bne	.L39
.L38:
	movs	r3, #1
	b	.L40
.L39:
	movs	r3, #0
.L40:
	b	.L37
.L36:
	ldr	r0, [r7, #4]
	movw	r1, #65520
	movw	r2, #65528
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	b	.L37
.L26:
	movs	r3, #0
	b	.L37
.L25:
	ldr	r3, [r7, #12]
	cmp	r3, #1
	beq	.L42
	cmp	r3, #14
	beq	.L43
	b	.L44
.L42:
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
	b	.L37
.L43:
	ldr	r0, [r7, #4]
	mov	r1, #917504
	movw	r2, #4095
	movt	r2, 14
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	b	.L37
.L44:
	movs	r3, #0
.L37:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN18hb_unicode_funcs_t20is_default_ignorableEj, .-_ZN18hb_unicode_funcs_t20is_default_ignorableEj
	.section	.text._Z36_hb_fallback_shaper_face_data_createP9hb_face_t,"ax",%progbits
	.align	2
	.global	_Z36_hb_fallback_shaper_face_data_createP9hb_face_t
	.thumb
	.thumb_func
	.type	_Z36_hb_fallback_shaper_face_data_createP9hb_face_t, %function
_Z36_hb_fallback_shaper_face_data_createP9hb_face_t:
	.fnstart
.LFB150:
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
	.size	_Z36_hb_fallback_shaper_face_data_createP9hb_face_t, .-_Z36_hb_fallback_shaper_face_data_createP9hb_face_t
	.section	.text._Z37_hb_fallback_shaper_face_data_destroyP30hb_fallback_shaper_face_data_t,"ax",%progbits
	.align	2
	.global	_Z37_hb_fallback_shaper_face_data_destroyP30hb_fallback_shaper_face_data_t
	.thumb
	.thumb_func
	.type	_Z37_hb_fallback_shaper_face_data_destroyP30hb_fallback_shaper_face_data_t, %function
_Z37_hb_fallback_shaper_face_data_destroyP30hb_fallback_shaper_face_data_t:
	.fnstart
.LFB151:
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
	.size	_Z37_hb_fallback_shaper_face_data_destroyP30hb_fallback_shaper_face_data_t, .-_Z37_hb_fallback_shaper_face_data_destroyP30hb_fallback_shaper_face_data_t
	.section	.text._Z36_hb_fallback_shaper_font_data_createP9hb_font_t,"ax",%progbits
	.align	2
	.global	_Z36_hb_fallback_shaper_font_data_createP9hb_font_t
	.thumb
	.thumb_func
	.type	_Z36_hb_fallback_shaper_font_data_createP9hb_font_t, %function
_Z36_hb_fallback_shaper_font_data_createP9hb_font_t:
	.fnstart
.LFB152:
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
	.size	_Z36_hb_fallback_shaper_font_data_createP9hb_font_t, .-_Z36_hb_fallback_shaper_font_data_createP9hb_font_t
	.section	.text._Z37_hb_fallback_shaper_font_data_destroyP30hb_fallback_shaper_font_data_t,"ax",%progbits
	.align	2
	.global	_Z37_hb_fallback_shaper_font_data_destroyP30hb_fallback_shaper_font_data_t
	.thumb
	.thumb_func
	.type	_Z37_hb_fallback_shaper_font_data_destroyP30hb_fallback_shaper_font_data_t, %function
_Z37_hb_fallback_shaper_font_data_destroyP30hb_fallback_shaper_font_data_t:
	.fnstart
.LFB153:
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
	.size	_Z37_hb_fallback_shaper_font_data_destroyP30hb_fallback_shaper_font_data_t, .-_Z37_hb_fallback_shaper_font_data_destroyP30hb_fallback_shaper_font_data_t
	.section	.text._Z42_hb_fallback_shaper_shape_plan_data_createP15hb_shape_plan_tPK12hb_feature_tj,"ax",%progbits
	.align	2
	.global	_Z42_hb_fallback_shaper_shape_plan_data_createP15hb_shape_plan_tPK12hb_feature_tj
	.thumb
	.thumb_func
	.type	_Z42_hb_fallback_shaper_shape_plan_data_createP15hb_shape_plan_tPK12hb_feature_tj, %function
_Z42_hb_fallback_shaper_shape_plan_data_createP15hb_shape_plan_tPK12hb_feature_tj:
	.fnstart
.LFB154:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_Z42_hb_fallback_shaper_shape_plan_data_createP15hb_shape_plan_tPK12hb_feature_tj, .-_Z42_hb_fallback_shaper_shape_plan_data_createP15hb_shape_plan_tPK12hb_feature_tj
	.section	.text._Z43_hb_fallback_shaper_shape_plan_data_destroyP36hb_fallback_shaper_shape_plan_data_t,"ax",%progbits
	.align	2
	.global	_Z43_hb_fallback_shaper_shape_plan_data_destroyP36hb_fallback_shaper_shape_plan_data_t
	.thumb
	.thumb_func
	.type	_Z43_hb_fallback_shaper_shape_plan_data_destroyP36hb_fallback_shaper_shape_plan_data_t, %function
_Z43_hb_fallback_shaper_shape_plan_data_destroyP36hb_fallback_shaper_shape_plan_data_t:
	.fnstart
.LFB155:
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
	.size	_Z43_hb_fallback_shaper_shape_plan_data_destroyP36hb_fallback_shaper_shape_plan_data_t, .-_Z43_hb_fallback_shaper_shape_plan_data_destroyP36hb_fallback_shaper_shape_plan_data_t
	.section	.text._Z18_hb_fallback_shapeP15hb_shape_plan_tP9hb_font_tP11hb_buffer_tPK12hb_feature_tj,"ax",%progbits
	.align	2
	.global	_Z18_hb_fallback_shapeP15hb_shape_plan_tP9hb_font_tP11hb_buffer_tPK12hb_feature_tj
	.thumb
	.thumb_func
	.type	_Z18_hb_fallback_shapeP15hb_shape_plan_tP9hb_font_tP11hb_buffer_tPK12hb_feature_tj, %function
_Z18_hb_fallback_shapeP15hb_shape_plan_tP9hb_font_tP11hb_buffer_tPK12hb_feature_tj:
	.fnstart
.LFB156:
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
	add	r3, r7, #16
	ldr	r0, [r7, #8]
	movs	r1, #32
	movs	r2, #0
	bl	_ZN9hb_font_t9get_glyphEjjPj(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	strb	r3, [r7, #43]
	ldr	r0, [r7, #4]
	bl	_ZN11hb_buffer_t15clear_positionsEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	str	r3, [r7, #36]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	str	r3, [r7, #32]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #108]
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #44]
	b	.L55
.L60:
	ldrb	r3, [r7, #43]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L56
	ldr	r2, [r7, #44]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #24]
	add	r3, r3, r2
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZN18hb_unicode_funcs_t20is_default_ignorableEj(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L56
	movs	r3, #1
	b	.L57
.L56:
	movs	r3, #0
.L57:
	cmp	r3, #0
	beq	.L58
	ldr	r2, [r7, #44]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #24]
	add	r3, r3, r2
	ldr	r2, [r7, #16]
	str	r2, [r3]
	ldr	r2, [r7, #44]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [r3]
	ldr	r2, [r7, #44]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [r3, #4]
	b	.L59
.L58:
	ldr	r2, [r7, #44]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #24]
	add	r3, r3, r2
	ldr	r1, [r3]
	ldr	r2, [r7, #44]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #24]
	add	r3, r3, r2
	ldr	r0, [r7, #8]
	movs	r2, #0
	bl	_ZN9hb_font_t9get_glyphEjjPj(PLT)
	ldr	r2, [r7, #44]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #24]
	add	r3, r3, r2
	ldr	r1, [r3]
	ldr	r2, [r7, #44]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	mov	r4, r3
	ldr	r2, [r7, #44]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [sp]
	ldr	r0, [r7, #8]
	ldr	r2, [r7, #36]
	mov	r3, r4
	bl	_ZN9hb_font_t31get_glyph_advance_for_directionEj14hb_direction_tPiS1_(PLT)
	ldr	r2, [r7, #44]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #24]
	add	r3, r3, r2
	ldr	r1, [r3]
	ldr	r2, [r7, #44]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	add	r4, r3, #8
	ldr	r2, [r7, #44]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	adds	r3, r3, #12
	str	r3, [sp]
	ldr	r0, [r7, #8]
	ldr	r2, [r7, #36]
	mov	r3, r4
	bl	_ZN9hb_font_t35subtract_glyph_origin_for_directionEj14hb_direction_tPiS1_(PLT)
.L59:
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	str	r3, [r7, #44]
.L55:
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bcc	.L60
	ldr	r3, [r7, #36]
	bic	r3, r3, #2
	cmp	r3, #5
	bne	.L61
	ldr	r0, [r7, #4]
	bl	hb_buffer_reverse(PLT)
.L61:
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_Z18_hb_fallback_shapeP15hb_shape_plan_tP9hb_font_tP11hb_buffer_tPK12hb_feature_tj, .-_Z18_hb_fallback_shapeP15hb_shape_plan_tP9hb_font_tP11hb_buffer_tPK12hb_feature_tj
	.section	.text._Z12hb_in_rangesIjEbT_S0_S0_S0_S0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z12hb_in_rangesIjEbT_S0_S0_S0_S0_, %function
_Z12hb_in_rangesIjEbT_S0_S0_S0_S0_:
	.fnstart
.LFB161:
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
	bne	.L64
	ldr	r0, [r7, #12]
	ldr	r1, [r7]
	ldr	r2, [r7, #24]
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L65
.L64:
	movs	r3, #1
	b	.L66
.L65:
	movs	r3, #0
.L66:
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
.LFB162:
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
.LFB163:
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
	bne	.L71
	ldr	r0, [r7, #12]
	ldr	r1, [r7]
	ldr	r2, [r7, #24]
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L71
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #28]
	ldr	r2, [r7, #32]
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L72
.L71:
	movs	r3, #1
	b	.L73
.L72:
	movs	r3, #0
.L73:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_Z12hb_in_rangesIjEbT_S0_S0_S0_S0_S0_S0_, .-_Z12hb_in_rangesIjEbT_S0_S0_S0_S0_S0_S0_
	.hidden	_ZN11hb_buffer_t15clear_positionsEv
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
