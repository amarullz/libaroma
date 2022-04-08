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
	.file	"hb-ft.cc"
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
	.section	.text._ZL15hb_ft_get_glyphP9hb_font_tPvjjPjS1_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL15hb_ft_get_glyphP9hb_font_tPvjjPjS1_, %function
_ZL15hb_ft_get_glyphP9hb_font_tPvjjPjS1_:
	.fnstart
.LFB120:
	@ args = 8, pretend = 0, frame = 24
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
	str	r3, [r7, #20]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L3
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
	bl	FT_Face_GetCharVariantIndex(PLT)
	mov	r2, r0
	ldr	r3, [r7, #32]
	str	r2, [r3]
	ldr	r3, [r7, #32]
	ldr	r3, [r3]
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	b	.L4
.L3:
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #4]
	bl	FT_Get_Char_Index(PLT)
	mov	r2, r0
	ldr	r3, [r7, #32]
	str	r2, [r3]
	ldr	r3, [r7, #32]
	ldr	r3, [r3]
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
.L4:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL15hb_ft_get_glyphP9hb_font_tPvjjPjS1_, .-_ZL15hb_ft_get_glyphP9hb_font_tPvjjPjS1_
	.section	.text._ZL25hb_ft_get_glyph_h_advanceP9hb_font_tPvjS1_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL25hb_ft_get_glyph_h_advanceP9hb_font_tPvjS1_, %function
_ZL25hb_ft_get_glyph_h_advanceP9hb_font_tPvjS1_:
	.fnstart
.LFB121:
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
	ldr	r3, [r7, #8]
	str	r3, [r7, #28]
	movs	r3, #2
	str	r3, [r7, #24]
	add	r3, r7, #20
	ldr	r0, [r7, #28]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #24]
	bl	FT_Get_Advance(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L6
	movs	r3, #0
	b	.L8
.L6:
	ldr	r3, [r7, #20]
	add	r3, r3, #512
	asrs	r3, r3, #10
.L8:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL25hb_ft_get_glyph_h_advanceP9hb_font_tPvjS1_, .-_ZL25hb_ft_get_glyph_h_advanceP9hb_font_tPvjS1_
	.section	.text._ZL25hb_ft_get_glyph_v_advanceP9hb_font_tPvjS1_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL25hb_ft_get_glyph_v_advanceP9hb_font_tPvjS1_, %function
_ZL25hb_ft_get_glyph_v_advanceP9hb_font_tPvjS1_:
	.fnstart
.LFB122:
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
	ldr	r3, [r7, #8]
	str	r3, [r7, #28]
	movs	r3, #18
	str	r3, [r7, #24]
	add	r3, r7, #20
	ldr	r0, [r7, #28]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #24]
	bl	FT_Get_Advance(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L10
	movs	r3, #0
	b	.L12
.L10:
	ldr	r3, [r7, #20]
	rsb	r3, r3, #512
	asrs	r3, r3, #10
.L12:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL25hb_ft_get_glyph_v_advanceP9hb_font_tPvjS1_, .-_ZL25hb_ft_get_glyph_v_advanceP9hb_font_tPvjS1_
	.section	.text._ZL24hb_ft_get_glyph_h_originP9hb_font_tPvjPiS2_S1_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL24hb_ft_get_glyph_h_originP9hb_font_tPvjPiS2_S1_, %function
_ZL24hb_ft_get_glyph_h_originP9hb_font_tPvjPiS2_S1_:
	.fnstart
.LFB123:
	@ args = 8, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZL24hb_ft_get_glyph_h_originP9hb_font_tPvjPiS2_S1_, .-_ZL24hb_ft_get_glyph_h_originP9hb_font_tPvjPiS2_S1_
	.section	.text._ZL24hb_ft_get_glyph_v_originP9hb_font_tPvjPiS2_S1_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL24hb_ft_get_glyph_v_originP9hb_font_tPvjPiS2_S1_, %function
_ZL24hb_ft_get_glyph_v_originP9hb_font_tPvjPiS2_S1_:
	.fnstart
.LFB124:
	@ args = 8, pretend = 0, frame = 24
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
	str	r3, [r7, #20]
	movs	r3, #2
	str	r3, [r7, #16]
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #16]
	bl	FT_Load_Glyph(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L16
	movs	r3, #0
	b	.L17
.L16:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #84]
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #84]
	ldr	r3, [r3, #44]
	subs	r2, r2, r3
	ldr	r3, [r7]
	str	r2, [r3]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #84]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #84]
	ldr	r3, [r3, #48]
	add	r2, r2, r3
	ldr	r3, [r7, #32]
	str	r2, [r3]
	movs	r3, #1
.L17:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL24hb_ft_get_glyph_v_originP9hb_font_tPvjPiS2_S1_, .-_ZL24hb_ft_get_glyph_v_originP9hb_font_tPvjPiS2_S1_
	.section	.text._ZL25hb_ft_get_glyph_h_kerningP9hb_font_tPvjjS1_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL25hb_ft_get_glyph_h_kerningP9hb_font_tPvjjS1_, %function
_ZL25hb_ft_get_glyph_h_kerningP9hb_font_tPvjjS1_:
	.fnstart
.LFB125:
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
	ldr	r3, [r7, #8]
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #24]
	add	r3, r7, #16
	str	r3, [sp]
	ldr	r0, [r7, #28]
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
	ldr	r3, [r7, #24]
	bl	FT_Get_Kerning(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L19
	movs	r3, #0
	b	.L21
.L19:
	ldr	r3, [r7, #16]
.L21:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL25hb_ft_get_glyph_h_kerningP9hb_font_tPvjjS1_, .-_ZL25hb_ft_get_glyph_h_kerningP9hb_font_tPvjjS1_
	.section	.text._ZL25hb_ft_get_glyph_v_kerningP9hb_font_tPvjjS1_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL25hb_ft_get_glyph_v_kerningP9hb_font_tPvjjS1_, %function
_ZL25hb_ft_get_glyph_v_kerningP9hb_font_tPvjjS1_:
	.fnstart
.LFB126:
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
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZL25hb_ft_get_glyph_v_kerningP9hb_font_tPvjjS1_, .-_ZL25hb_ft_get_glyph_v_kerningP9hb_font_tPvjjS1_
	.section	.text._ZL23hb_ft_get_glyph_extentsP9hb_font_tPvjP18hb_glyph_extents_tS1_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL23hb_ft_get_glyph_extentsP9hb_font_tPvjP18hb_glyph_extents_tS1_, %function
_ZL23hb_ft_get_glyph_extentsP9hb_font_tPvjP18hb_glyph_extents_tS1_:
	.fnstart
.LFB127:
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
	ldr	r3, [r7, #8]
	str	r3, [r7, #20]
	movs	r3, #2
	str	r3, [r7, #16]
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #16]
	bl	FT_Load_Glyph(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L25
	movs	r3, #0
	b	.L26
.L25:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #84]
	ldr	r2, [r3, #32]
	ldr	r3, [r7]
	str	r2, [r3]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #84]
	ldr	r2, [r3, #36]
	ldr	r3, [r7]
	str	r2, [r3, #4]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #84]
	ldr	r2, [r3, #24]
	ldr	r3, [r7]
	str	r2, [r3, #8]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #84]
	ldr	r3, [r3, #28]
	negs	r2, r3
	ldr	r3, [r7]
	str	r2, [r3, #12]
	movs	r3, #1
.L26:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL23hb_ft_get_glyph_extentsP9hb_font_tPvjP18hb_glyph_extents_tS1_, .-_ZL23hb_ft_get_glyph_extentsP9hb_font_tPvjP18hb_glyph_extents_tS1_
	.section	.text._ZL29hb_ft_get_glyph_contour_pointP9hb_font_tPvjjPiS2_S1_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL29hb_ft_get_glyph_contour_pointP9hb_font_tPvjjPiS2_S1_, %function
_ZL29hb_ft_get_glyph_contour_pointP9hb_font_tPvjjPiS2_S1_:
	.fnstart
.LFB128:
	@ args = 12, pretend = 0, frame = 24
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
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #16]
	bl	FT_Load_Glyph(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L28
	movs	r3, #0
	b	.L29
.L28:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #84]
	ldr	r2, [r3, #72]
	movw	r3, #29804
	movt	r3, 28533
	cmp	r2, r3
	beq	.L30
	movs	r3, #0
	b	.L29
.L30:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #84]
	ldrh	r3, [r3, #110]
	sxth	r2, r3
	ldr	r3, [r7]
	cmp	r2, r3
	bhi	.L31
	movs	r3, #0
	b	.L29
.L31:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #84]
	ldr	r2, [r3, #112]
	ldr	r3, [r7]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #32]
	str	r2, [r3]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #84]
	ldr	r2, [r3, #112]
	ldr	r3, [r7]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #36]
	str	r2, [r3]
	movs	r3, #1
.L29:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL29hb_ft_get_glyph_contour_pointP9hb_font_tPvjjPiS2_S1_, .-_ZL29hb_ft_get_glyph_contour_pointP9hb_font_tPvjjPiS2_S1_
	.section	.text._ZL20hb_ft_get_glyph_nameP9hb_font_tPvjPcjS1_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL20hb_ft_get_glyph_nameP9hb_font_tPvjPcjS1_, %function
_ZL20hb_ft_get_glyph_nameP9hb_font_tPvjPcjS1_:
	.fnstart
.LFB129:
	@ args = 8, pretend = 0, frame = 24
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
	str	r3, [r7, #16]
	ldr	r0, [r7, #16]
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
	ldr	r3, [r7, #32]
	bl	FT_Get_Glyph_Name(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L33
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L33
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L33
	movs	r3, #0
	str	r3, [r7, #20]
.L33:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL20hb_ft_get_glyph_nameP9hb_font_tPvjPcjS1_, .-_ZL20hb_ft_get_glyph_nameP9hb_font_tPvjPcjS1_
	.section	.text._ZL25hb_ft_get_glyph_from_nameP9hb_font_tPvPKciPjS1_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL25hb_ft_get_glyph_from_nameP9hb_font_tPvPKciPjS1_, %function
_ZL25hb_ft_get_glyph_from_nameP9hb_font_tPvPKciPjS1_:
	.fnstart
.LFB130:
	@ args = 8, pretend = 0, frame = 152
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #152
	sub	sp, sp, #152
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #8]
	str	r3, [r7, #148]
	ldr	r3, [r7]
	cmp	r3, #0
	bge	.L36
	ldr	r0, [r7, #148]
	ldr	r1, [r7, #4]
	bl	FT_Get_Name_Index(PLT)
	mov	r2, r0
	ldr	r3, [r7, #160]
	str	r2, [r3]
	b	.L37
.L36:
	movs	r3, #128
	subs	r3, r3, #1
	str	r3, [r7, #144]
	mov	r2, r7
	add	r3, r7, #144
	mov	r0, r2
	mov	r1, r3
	bl	_Z3MINIiET_RKS0_S2_(PLT)
	mov	r3, r0
	str	r3, [r7]
	ldr	r3, [r7]
	add	r2, r7, #16
	mov	r0, r2
	ldr	r1, [r7, #4]
	mov	r2, r3
	bl	strncpy(PLT)
	ldr	r3, [r7]
	add	r2, r7, #152
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3, #-136]
	add	r3, r7, #16
	ldr	r0, [r7, #148]
	mov	r1, r3
	bl	FT_Get_Name_Index(PLT)
	mov	r2, r0
	ldr	r3, [r7, #160]
	str	r2, [r3]
.L37:
	ldr	r3, [r7, #160]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L38
	add	r3, r7, #16
	ldr	r0, [r7, #148]
	movs	r1, #0
	mov	r2, r3
	movs	r3, #128
	bl	FT_Get_Glyph_Name(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L39
	ldr	r3, [r7]
	cmp	r3, #0
	bge	.L39
	add	r3, r7, #16
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	b	.L40
.L39:
	ldr	r3, [r7]
	add	r2, r7, #16
	mov	r0, r2
	ldr	r1, [r7, #4]
	mov	r2, r3
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
.L40:
	cmp	r3, #0
	beq	.L41
	movs	r3, #1
	b	.L42
.L41:
.L38:
	ldr	r3, [r7, #160]
	ldr	r3, [r3]
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
.L42:
	mov	r0, r3
	adds	r7, r7, #152
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL25hb_ft_get_glyph_from_nameP9hb_font_tPvPKciPjS1_, .-_ZL25hb_ft_get_glyph_from_nameP9hb_font_tPvPKciPjS1_
	.section	.text._ZL21_hb_ft_get_font_funcsv,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL21_hb_ft_get_font_funcsv, %function
_ZL21_hb_ft_get_font_funcsv:
	.fnstart
.LFB131:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L45
.LPIC0:
	add	r3, pc
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L46:
	.align	2
.L45:
	.word	_ZZL21_hb_ft_get_font_funcsvE9ft_ffuncs-(.LPIC0+4)
	.cantunwind
	.fnend
	.size	_ZL21_hb_ft_get_font_funcsv, .-_ZL21_hb_ft_get_font_funcsv
	.section	.text._ZL15reference_tableP9hb_face_tjPv,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL15reference_tableP9hb_face_tjPv, %function
_ZL15reference_tableP9hb_face_tjPv:
	.fnstart
.LFB132:
	@ args = 0, pretend = 0, frame = 32
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
	ldr	r4, .L53
.LPIC1:
	add	r4, pc
	ldr	r3, [r7, #4]
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #16]
	add	r3, r7, #16
	str	r3, [sp]
	ldr	r0, [r7, #28]
	ldr	r1, [r7, #8]
	movs	r2, #0
	movs	r3, #0
	bl	FT_Load_Sfnt_Table(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L48
	movs	r3, #0
	b	.L52
.L48:
	ldr	r3, [r7, #16]
	mov	r0, r3
	bl	malloc(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L50
	movs	r3, #0
	b	.L52
.L50:
	add	r3, r7, #16
	str	r3, [sp]
	ldr	r0, [r7, #28]
	ldr	r1, [r7, #8]
	movs	r2, #0
	ldr	r3, [r7, #20]
	bl	FT_Load_Sfnt_Table(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L51
	movs	r3, #0
	b	.L52
.L51:
	ldr	r3, [r7, #16]
	ldr	r2, .L53+4
	ldr	r2, [r4, r2]
	str	r2, [sp]
	ldr	r0, [r7, #20]
	mov	r1, r3
	movs	r2, #2
	ldr	r3, [r7, #20]
	bl	hb_blob_create(PLT)
	mov	r3, r0
.L52:
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L54:
	.align	2
.L53:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.word	free(GOT)
	.fnend
	.size	_ZL15reference_tableP9hb_face_tjPv, .-_ZL15reference_tableP9hb_face_tjPv
	.section	.text.hb_ft_face_create,"ax",%progbits
	.align	2
	.global	hb_ft_face_create
	.thumb
	.thumb_func
	.type	hb_ft_face_create, %function
hb_ft_face_create:
	.fnstart
.LFB133:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #24
	sub	sp, sp, #24
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #104]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	bne	.L56
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #104]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #104]
	ldr	r3, [r3, #4]
	ldr	r1, [r7]
	str	r1, [sp]
	mov	r0, r2
	mov	r1, r3
	movs	r2, #1
	ldr	r3, [r7, #4]
	bl	hb_blob_create(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	hb_face_create(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r0, [r7, #8]
	bl	hb_blob_destroy(PLT)
	b	.L57
.L56:
	ldr	r3, .L59
.LPIC2:
	add	r3, pc
	mov	r0, r3
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
	bl	hb_face_create_for_tables(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
.L57:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	hb_face_set_index(PLT)
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #68]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	hb_face_set_upem(PLT)
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L60:
	.align	2
.L59:
	.word	_ZL15reference_tableP9hb_face_tjPv-(.LPIC2+4)
	.fnend
	.size	hb_ft_face_create, .-hb_ft_face_create
	.section	.text.hb_ft_face_create_referenced,"ax",%progbits
	.align	2
	.global	hb_ft_face_create_referenced
	.thumb
	.thumb_func
	.type	hb_ft_face_create_referenced, %function
hb_ft_face_create_referenced:
	.fnstart
.LFB134:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #12
	sub	sp, sp, #12
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r4, .L63
.LPIC3:
	add	r4, pc
	ldr	r0, [r7, #4]
	bl	FT_Reference_Face(PLT)
	ldr	r0, [r7, #4]
	ldr	r3, .L63+4
	ldr	r3, [r4, r3]
	mov	r1, r3
	bl	hb_ft_face_create(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L64:
	.align	2
.L63:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC3+4)
	.word	FT_Done_Face(GOT)
	.fnend
	.size	hb_ft_face_create_referenced, .-hb_ft_face_create_referenced
	.section	.text._ZL19hb_ft_face_finalizeP11FT_FaceRec_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL19hb_ft_face_finalizeP11FT_FaceRec_, %function
_ZL19hb_ft_face_finalizeP11FT_FaceRec_:
	.fnstart
.LFB135:
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
	ldr	r3, [r3, #44]
	mov	r0, r3
	bl	hb_face_destroy(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL19hb_ft_face_finalizeP11FT_FaceRec_, .-_ZL19hb_ft_face_finalizeP11FT_FaceRec_
	.section	.text.hb_ft_face_create_cached,"ax",%progbits
	.align	2
	.global	hb_ft_face_create_cached
	.thumb
	.thumb_func
	.type	hb_ft_face_create_cached, %function
hb_ft_face_create_cached:
	.fnstart
.LFB136:
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
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L67
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #48]
	ldr	r3, .L71
.LPIC4:
	add	r3, pc
	cmp	r2, r3
	beq	.L68
.L67:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L69
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	ldr	r0, [r7, #4]
	blx	r3
.L69:
	ldr	r0, [r7, #4]
	movs	r1, #0
	bl	hb_ft_face_create(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #44]
	ldr	r3, [r7, #4]
	ldr	r2, .L71+4
.LPIC5:
	add	r2, pc
	str	r2, [r3, #48]
.L68:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	mov	r0, r3
	bl	hb_face_reference(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L72:
	.align	2
.L71:
	.word	_ZL19hb_ft_face_finalizeP11FT_FaceRec_-(.LPIC4+4)
	.word	_ZL19hb_ft_face_finalizeP11FT_FaceRec_-(.LPIC5+4)
	.fnend
	.size	hb_ft_face_create_cached, .-hb_ft_face_create_cached
	.section	.text._ZL11_do_nothingv,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL11_do_nothingv, %function
_ZL11_do_nothingv:
	.fnstart
.LFB137:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZL11_do_nothingv, .-_ZL11_do_nothingv
	.section	.text.hb_ft_font_create,"ax",%progbits
	.align	2
	.global	hb_ft_font_create
	.thumb
	.thumb_func
	.type	hb_ft_font_create, %function
hb_ft_font_create:
	.fnstart
.LFB138:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	.save {r4, r5, r6, r7, r8, r9, lr}
	.pad #20
	sub	sp, sp, #20
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	hb_ft_face_create(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r0, [r7, #12]
	bl	hb_font_create(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r0, [r7, #12]
	bl	hb_face_destroy(PLT)
	bl	_ZL21_hb_ft_get_font_funcsv(PLT)
	mov	r3, r0
	ldr	r0, [r7, #8]
	mov	r1, r3
	ldr	r2, [r7, #4]
	ldr	r3, .L76
.LPIC6:
	add	r3, pc
	bl	hb_font_set_funcs(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	ldr	r3, [r3, #16]
	mov	r0, r3
	asr	r1, r0, #31
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #68]
	uxth	r2, r3
	mov	r3, #0
	mul	lr, r2, r1
	mul	r6, r0, r3
	add	r6, r6, lr
	umull	r2, r3, r0, r2
	adds	r1, r6, r3
	mov	r3, r1
	adds	r2, r2, #32768
	adc	r3, r3, #0
	lsr	r8, r2, #16
	orr	r8, r8, r3, lsl #16
	lsr	r9, r3, #16
	mov	r6, r8
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	ldr	r3, [r3, #20]
	mov	r0, r3
	asr	r1, r0, #31
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #68]
	uxth	r2, r3
	mov	r3, #0
	mul	ip, r2, r1
	mul	lr, r0, r3
	add	lr, lr, ip
	umull	r2, r3, r0, r2
	add	r1, lr, r3
	mov	r3, r1
	adds	r2, r2, #32768
	adc	r3, r3, #0
	lsrs	r4, r2, #16
	orr	r4, r4, r3, lsl #16
	lsrs	r5, r3, #16
	mov	r3, r4
	ldr	r0, [r7, #8]
	mov	r1, r6
	mov	r2, r3
	bl	hb_font_set_scale(PLT)
	ldr	r3, [r7, #8]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L77:
	.align	2
.L76:
	.word	_ZL11_do_nothingv-(.LPIC6+4)
	.fnend
	.size	hb_ft_font_create, .-hb_ft_font_create
	.section	.text.hb_ft_font_create_referenced,"ax",%progbits
	.align	2
	.global	hb_ft_font_create_referenced
	.thumb
	.thumb_func
	.type	hb_ft_font_create_referenced, %function
hb_ft_font_create_referenced:
	.fnstart
.LFB139:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #12
	sub	sp, sp, #12
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r4, .L80
.LPIC7:
	add	r4, pc
	ldr	r0, [r7, #4]
	bl	FT_Reference_Face(PLT)
	ldr	r0, [r7, #4]
	ldr	r3, .L80+4
	ldr	r3, [r4, r3]
	mov	r1, r3
	bl	hb_ft_font_create(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L81:
	.align	2
.L80:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC7+4)
	.word	FT_Done_Face(GOT)
	.fnend
	.size	hb_ft_font_create_referenced, .-hb_ft_font_create_referenced
	.section	.bss._ZL10ft_library,"aw",%nobits
	.align	2
	.type	_ZL10ft_library, %object
	.size	_ZL10ft_library, 4
_ZL10ft_library:
	.space	4
	.section	.text._ZL14get_ft_libraryv,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL14get_ft_libraryv, %function
_ZL14get_ft_libraryv:
	.fnstart
.LFB140:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
.L83:
	ldr	r3, .L90
.LPIC8:
	add	r3, pc
	ldr	r3, [r3]
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L84
	adds	r3, r7, #4
	mov	r0, r3
	bl	FT_Init_FreeType(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L85
	movs	r3, #0
	b	.L89
.L85:
	ldr	r3, .L90+4
.LPIC9:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L87
	ldr	r3, .L90+8
.LPIC10:
	add	r3, pc
	ldr	r2, [r7, #4]
	str	r2, [r3]
	movs	r3, #0
	b	.L88
.L87:
	movs	r3, #1
.L88:
	cmp	r3, #0
	beq	.L84
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	FT_Done_FreeType(PLT)
	b	.L83
.L84:
	ldr	r3, [r7, #4]
.L89:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L91:
	.align	2
.L90:
	.word	_ZL10ft_library-(.LPIC8+4)
	.word	_ZL10ft_library-(.LPIC9+4)
	.word	_ZL10ft_library-(.LPIC10+4)
	.fnend
	.size	_ZL14get_ft_libraryv, .-_ZL14get_ft_libraryv
	.section	.text._ZL13_release_blobP11FT_FaceRec_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL13_release_blobP11FT_FaceRec_, %function
_ZL13_release_blobP11FT_FaceRec_:
	.fnstart
.LFB141:
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
	ldr	r3, [r3, #44]
	mov	r0, r3
	bl	hb_blob_destroy(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL13_release_blobP11FT_FaceRec_, .-_ZL13_release_blobP11FT_FaceRec_
	.section	.rodata
	.align	2
.LC0:
	.ascii	"FT\000"
	.align	2
.LC1:
	.ascii	"Font face has empty blob\000"
	.align	2
.LC2:
	.ascii	"Font face FT_New_Memory_Face() failed\000"
	.align	2
.LC3:
	.ascii	"font->y_scale >= 0\000"
	.align	2
.LC4:
	.ascii	"../../../libs/harfbuzz-ng/src/hb-ft.cc\000"
	.section	.text.hb_ft_font_set_funcs,"ax",%progbits
	.align	2
	.global	hb_ft_font_set_funcs
	.thumb
	.thumb_func
	.type	hb_ft_font_set_funcs, %function
hb_ft_font_set_funcs:
	.fnstart
.LFB142:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	.save {r4, r5, r6, r7, lr}
	.pad #52
	sub	sp, sp, #52
	.setfp r7, sp, #16
	add	r7, sp, #16
	str	r0, [r7, #4]
	ldr	r4, .L98
.LPIC19:
	add	r4, pc
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #52]
	mov	r0, r3
	bl	hb_face_reference_blob(PLT)
	mov	r3, r0
	str	r3, [r7, #28]
	add	r3, r7, #16
	ldr	r0, [r7, #28]
	mov	r1, r3
	bl	hb_blob_get_data(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L94
	movs	r3, #0
	str	r3, [sp]
	movs	r3, #0
	str	r3, [sp, #4]
	ldr	r3, .L98+4
.LPIC11:
	add	r3, pc
	str	r3, [sp, #8]
	ldr	r3, .L98+8
.LPIC12:
	add	r3, pc
	mov	r0, r3
	ldr	r1, [r7, #4]
	movs	r2, #0
	movs	r3, #0
	bl	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z(PLT)
.L94:
	movs	r3, #0
	str	r3, [r7, #12]
	bl	_ZL14get_ft_libraryv(PLT)
	mov	r6, r0
	ldr	r3, [r7, #16]
	mov	r5, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #52]
	mov	r0, r3
	bl	hb_face_get_index(PLT)
	mov	r3, r0
	add	r2, r7, #12
	str	r2, [sp]
	mov	r0, r6
	ldr	r1, [r7, #24]
	mov	r2, r5
	bl	FT_New_Memory_Face(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L95
	ldr	r0, [r7, #28]
	bl	hb_blob_destroy(PLT)
	movs	r3, #0
	str	r3, [sp]
	movs	r3, #0
	str	r3, [sp, #4]
	ldr	r3, .L98+12
.LPIC13:
	add	r3, pc
	str	r3, [sp, #8]
	ldr	r3, .L98+16
.LPIC14:
	add	r3, pc
	mov	r0, r3
	ldr	r1, [r7, #4]
	movs	r2, #0
	movs	r3, #0
	bl	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z(PLT)
	b	.L93
.L95:
	ldr	r3, [r7, #12]
	mov	r0, r3
	movw	r1, #26979
	movt	r1, 30062
	bl	FT_Select_Charmap(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	cmp	r3, #0
	bge	.L97
	ldr	r3, .L98+20
.LPIC15:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L98+24
.LPIC16:
	add	r3, pc
	mov	r1, r3
	movw	r2, #533
	ldr	r3, .L98+28
.LPIC17:
	add	r3, pc
	bl	__assert_fail(PLT)
.L97:
	ldr	r1, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #56]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	movs	r0, #0
	str	r0, [sp]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	movs	r3, #0
	bl	FT_Set_Char_Size(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #28]
	str	r2, [r3, #44]
	ldr	r3, [r7, #12]
	ldr	r2, .L98+32
.LPIC18:
	add	r2, pc
	str	r2, [r3, #48]
	bl	_ZL21_hb_ft_get_font_funcsv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	ldr	r0, [r7, #4]
	mov	r1, r2
	mov	r2, r3
	ldr	r3, .L98+36
	ldr	r3, [r4, r3]
	bl	hb_font_set_funcs(PLT)
.L93:
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L99:
	.align	2
.L98:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC19+4)
	.word	.LC1-(.LPIC11+4)
	.word	.LC0-(.LPIC12+4)
	.word	.LC2-(.LPIC13+4)
	.word	.LC0-(.LPIC14+4)
	.word	.LC3-(.LPIC15+4)
	.word	.LC4-(.LPIC16+4)
	.word	_ZZ20hb_ft_font_set_funcsE19__PRETTY_FUNCTION__-(.LPIC17+4)
	.word	_ZL13_release_blobP11FT_FaceRec_-(.LPIC18+4)
	.word	FT_Done_Face(GOT)
	.fnend
	.size	hb_ft_font_set_funcs, .-hb_ft_font_set_funcs
	.section	.text.hb_ft_font_get_face,"ax",%progbits
	.align	2
	.global	hb_ft_font_get_face
	.thumb
	.thumb_func
	.type	hb_ft_font_get_face, %function
hb_ft_font_get_face:
	.fnstart
.LFB143:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r1, .L104
.LPIC20:
	add	r1, pc
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #80]
	ldr	r3, .L104+4
	ldr	r3, [r1, r3]
	cmp	r2, r3
	beq	.L101
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #80]
	ldr	r3, .L104+8
.LPIC21:
	add	r3, pc
	cmp	r2, r3
	bne	.L102
.L101:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #76]
	b	.L103
.L102:
	movs	r3, #0
.L103:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L105:
	.align	2
.L104:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC20+4)
	.word	FT_Done_Face(GOT)
	.word	_ZL11_do_nothingv-(.LPIC21+4)
	.cantunwind
	.fnend
	.size	hb_ft_font_get_face, .-hb_ft_font_get_face
	.section	.text._Z3MINIiET_RKS0_S2_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z3MINIiET_RKS0_S2_, %function
_Z3MINIiET_RKS0_S2_:
	.fnstart
.LFB148:
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
	bge	.L107
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	b	.L108
.L107:
	ldr	r3, [r7]
	ldr	r3, [r3]
.L108:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_Z3MINIiET_RKS0_S2_, .-_Z3MINIiET_RKS0_S2_
	.section	.data.rel.ro.local._ZZL21_hb_ft_get_font_funcsvE9ft_ffuncs,"aw",%progbits
	.align	2
	.type	_ZZL21_hb_ft_get_font_funcsvE9ft_ffuncs, %object
	.size	_ZZL21_hb_ft_get_font_funcsvE9ft_ffuncs, 180
_ZZL21_hb_ft_get_font_funcsvE9ft_ffuncs:
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	0
	.space	24
	.word	1
	.word	_ZL15hb_ft_get_glyphP9hb_font_tPvjjPjS1_
	.word	_ZL25hb_ft_get_glyph_h_advanceP9hb_font_tPvjS1_
	.word	_ZL25hb_ft_get_glyph_v_advanceP9hb_font_tPvjS1_
	.word	_ZL24hb_ft_get_glyph_h_originP9hb_font_tPvjPiS2_S1_
	.word	_ZL24hb_ft_get_glyph_v_originP9hb_font_tPvjPiS2_S1_
	.word	_ZL25hb_ft_get_glyph_h_kerningP9hb_font_tPvjjS1_
	.word	_ZL25hb_ft_get_glyph_v_kerningP9hb_font_tPvjjS1_
	.word	_ZL23hb_ft_get_glyph_extentsP9hb_font_tPvjP18hb_glyph_extents_tS1_
	.word	_ZL29hb_ft_get_glyph_contour_pointP9hb_font_tPvjjPiS2_S1_
	.word	_ZL20hb_ft_get_glyph_nameP9hb_font_tPvjPcjS1_
	.word	_ZL25hb_ft_get_glyph_from_nameP9hb_font_tPvPKciPjS1_
	.space	88
	.section	.rodata._ZZ20hb_ft_font_set_funcsE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZ20hb_ft_font_set_funcsE19__PRETTY_FUNCTION__, %object
	.size	_ZZ20hb_ft_font_set_funcsE19__PRETTY_FUNCTION__, 38
_ZZ20hb_ft_font_set_funcsE19__PRETTY_FUNCTION__:
	.ascii	"void hb_ft_font_set_funcs(hb_font_t*)\000"
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
