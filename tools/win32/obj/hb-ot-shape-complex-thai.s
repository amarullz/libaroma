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
	.file	"hb-ot-shape-complex-thai.cc"
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
	.section	.text._ZL35_hb_glyph_info_set_general_categoryP15hb_glyph_info_t29hb_unicode_general_category_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL35_hb_glyph_info_set_general_categoryP15hb_glyph_info_t29hb_unicode_general_category_t, %function
_ZL35_hb_glyph_info_set_general_categoryP15hb_glyph_info_t29hb_unicode_general_category_t:
	.fnstart
.LFB213:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	bic	r3, r3, #31
	uxtb	r2, r3
	ldr	r3, [r7]
	uxtb	r3, r3
	orrs	r3, r3, r2
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
	.size	_ZL35_hb_glyph_info_set_general_categoryP15hb_glyph_info_t29hb_unicode_general_category_t, .-_ZL35_hb_glyph_info_set_general_categoryP15hb_glyph_info_t29hb_unicode_general_category_t
	.section	.text._ZL18get_consonant_typej,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL18get_consonant_typej, %function
_ZL18get_consonant_typej:
	.fnstart
.LFB258:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r2, [r7, #4]
	movw	r3, #3611
	cmp	r2, r3
	beq	.L11
	ldr	r2, [r7, #4]
	movw	r3, #3613
	cmp	r2, r3
	beq	.L11
	ldr	r2, [r7, #4]
	movw	r3, #3615
	cmp	r2, r3
	bne	.L12
.L11:
	movs	r3, #1
	b	.L13
.L12:
	ldr	r2, [r7, #4]
	movw	r3, #3597
	cmp	r2, r3
	beq	.L14
	ldr	r3, [r7, #4]
	cmp	r3, #3600
	bne	.L15
.L14:
	movs	r3, #2
	b	.L13
.L15:
	ldr	r2, [r7, #4]
	movw	r3, #3598
	cmp	r2, r3
	beq	.L16
	ldr	r2, [r7, #4]
	movw	r3, #3599
	cmp	r2, r3
	bne	.L17
.L16:
	movs	r3, #3
	b	.L13
.L17:
	ldr	r0, [r7, #4]
	movw	r1, #3585
	movw	r2, #3630
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L18
	movs	r3, #0
	b	.L13
.L18:
	movs	r3, #4
.L13:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZL18get_consonant_typej, .-_ZL18get_consonant_typej
	.section	.text._ZL13get_mark_typej,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL13get_mark_typej, %function
_ZL13get_mark_typej:
	.fnstart
.LFB259:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r2, [r7, #4]
	movw	r3, #3633
	cmp	r2, r3
	beq	.L20
	ldr	r0, [r7, #4]
	movw	r1, #3636
	movw	r2, #3639
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L20
	ldr	r2, [r7, #4]
	movw	r3, #3655
	cmp	r2, r3
	beq	.L20
	ldr	r0, [r7, #4]
	movw	r1, #3661
	movw	r2, #3662
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L21
.L20:
	movs	r3, #1
	b	.L22
.L21:
	movs	r3, #0
.L22:
	cmp	r3, #0
	beq	.L23
	movs	r3, #0
	b	.L24
.L23:
	ldr	r0, [r7, #4]
	movw	r1, #3640
	movw	r2, #3642
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L25
	movs	r3, #1
	b	.L24
.L25:
	ldr	r0, [r7, #4]
	movw	r1, #3656
	movw	r2, #3660
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L26
	movs	r3, #2
	b	.L24
.L26:
	movs	r3, #3
.L24:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZL13get_mark_typej, .-_ZL13get_mark_typej
	.section	.rodata
	.align	2
.LC0:
	.ascii	"false\000"
	.align	2
.LC1:
	.ascii	"../../../libs/harfbuzz-ng/src/hb-ot-shape-complex-t"
	.ascii	"hai.cc\000"
	.section	.text._ZL14thai_pua_shapej13thai_action_tP9hb_font_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL14thai_pua_shapej13thai_action_tP9hb_font_t, %function
_ZL14thai_pua_shapej13thai_action_tP9hb_font_t:
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
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #8]
	cmp	r3, #4
	bhi	.L28
	adr	r1, .L30
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L30:
	.word	.L29+1-.L30
	.word	.L31+1-.L30
	.word	.L32+1-.L30
	.word	.L33+1-.L30
	.word	.L34+1-.L30
.L28:
	ldr	r3, .L44
.LPIC0:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L44+4
.LPIC1:
	add	r3, pc
	mov	r1, r3
	movs	r2, #142
	ldr	r3, .L44+8
.LPIC2:
	add	r3, pc
	bl	__assert_fail(PLT)
.L29:
	ldr	r3, [r7, #12]
	b	.L35
.L31:
	ldr	r3, .L44+12
.LPIC3:
	add	r3, pc
	str	r3, [r7, #20]
	b	.L36
.L33:
	ldr	r3, .L44+16
.LPIC4:
	add	r3, pc
	str	r3, [r7, #20]
	b	.L36
.L32:
	ldr	r3, .L44+20
.LPIC5:
	add	r3, pc
	str	r3, [r7, #20]
	b	.L36
.L34:
	ldr	r3, .L44+24
.LPIC6:
	add	r3, pc
	str	r3, [r7, #20]
	nop
.L36:
	b	.L37
.L43:
	ldr	r3, [r7, #20]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bne	.L38
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #4]
	add	r3, r7, #16
	ldr	r0, [r7, #4]
	mov	r1, r2
	movs	r2, #0
	bl	hb_font_get_glyph(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L39
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	b	.L35
.L39:
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #8]
	add	r3, r7, #16
	ldr	r0, [r7, #4]
	mov	r1, r2
	movs	r2, #0
	bl	hb_font_get_glyph(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L42
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #8]
	b	.L35
.L38:
	ldr	r3, [r7, #20]
	adds	r3, r3, #12
	str	r3, [r7, #20]
.L37:
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L43
.L42:
	ldr	r3, [r7, #12]
.L35:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L45:
	.align	2
.L44:
	.word	.LC0-(.LPIC0+4)
	.word	.LC1-(.LPIC1+4)
	.word	_ZZL14thai_pua_shapej13thai_action_tP9hb_font_tE19__PRETTY_FUNCTION__-(.LPIC2+4)
	.word	_ZZL14thai_pua_shapej13thai_action_tP9hb_font_tE11SD_mappings-(.LPIC3+4)
	.word	_ZZL14thai_pua_shapej13thai_action_tP9hb_font_tE12SDL_mappings-(.LPIC4+4)
	.word	_ZZL14thai_pua_shapej13thai_action_tP9hb_font_tE11SL_mappings-(.LPIC5+4)
	.word	_ZZL14thai_pua_shapej13thai_action_tP9hb_font_tE11RD_mappings-(.LPIC6+4)
	.fnend
	.size	_ZL14thai_pua_shapej13thai_action_tP9hb_font_t, .-_ZL14thai_pua_shapej13thai_action_tP9hb_font_t
	.section	.data._ZL22thai_above_start_state,"aw",%progbits
	.align	2
	.type	_ZL22thai_above_start_state, %object
	.size	_ZL22thai_above_start_state, 20
_ZL22thai_above_start_state:
	.word	0
	.word	1
	.word	0
	.word	0
	.word	3
	.section	.data._ZL22thai_below_start_state,"aw",%progbits
	.align	2
	.type	_ZL22thai_below_start_state, %object
	.size	_ZL22thai_below_start_state, 20
_ZL22thai_below_start_state:
	.word	0
	.word	0
	.word	1
	.word	2
	.word	2
	.section	.text._ZL19do_thai_pua_shapingPK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL19do_thai_pua_shapingPK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t, %function
_ZL19do_thai_pua_shapingPK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t:
	.fnstart
.LFB261:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #68
	sub	sp, sp, #68
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, .L54
.LPIC7:
	add	r3, pc
	ldr	r3, [r3, #16]
	str	r3, [r7, #60]
	ldr	r3, .L54+4
.LPIC8:
	add	r3, pc
	ldr	r3, [r3, #16]
	str	r3, [r7, #56]
	movs	r3, #0
	str	r3, [r7, #52]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #100]
	str	r3, [r7, #44]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #88]
	str	r3, [r7, #40]
	movs	r3, #0
	str	r3, [r7, #48]
	b	.L47
.L53:
	ldr	r2, [r7, #48]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZL13get_mark_typej(PLT)
	mov	r3, r0
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #3
	bne	.L48
	ldr	r2, [r7, #48]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZL18get_consonant_typej(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r2, [r7, #32]
	ldr	r3, .L54+8
.LPIC9:
	add	r3, pc
	ldr	r3, [r3, r2, lsl #2]
	str	r3, [r7, #60]
	ldr	r2, [r7, #32]
	ldr	r3, .L54+12
.LPIC10:
	add	r3, pc
	ldr	r3, [r3, r2, lsl #2]
	str	r3, [r7, #56]
	ldr	r3, [r7, #48]
	str	r3, [r7, #52]
	b	.L49
.L48:
	ldr	r2, [r7, #60]
	ldr	r1, [r7, #36]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	add	r3, r3, r1
	lsls	r2, r3, #3
	ldr	r3, .L54+16
.LPIC11:
	add	r3, pc
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r2, [r7, #56]
	ldr	r1, [r7, #36]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	add	r3, r3, r1
	lsls	r2, r3, #3
	ldr	r3, .L54+20
.LPIC12:
	add	r3, pc
	add	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #4]
	str	r3, [r7, #60]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #4]
	str	r3, [r7, #56]
	ldr	r3, [r7, #28]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L50
	ldr	r3, [r7, #28]
	ldr	r3, [r3]
	b	.L51
.L50:
	ldr	r3, [r7, #24]
	ldr	r3, [r3]
.L51:
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #4
	bne	.L52
	ldr	r2, [r7, #52]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #44]
	adds	r4, r2, r3
	ldr	r2, [r7, #52]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r1, [r7, #20]
	ldr	r2, [r7, #4]
	bl	_ZL14thai_pua_shapej13thai_action_tP9hb_font_t(PLT)
	mov	r3, r0
	str	r3, [r4]
	b	.L49
.L52:
	ldr	r2, [r7, #48]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #44]
	adds	r4, r2, r3
	ldr	r2, [r7, #48]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r1, [r7, #20]
	ldr	r2, [r7, #4]
	bl	_ZL14thai_pua_shapej13thai_action_tP9hb_font_t(PLT)
	mov	r3, r0
	str	r3, [r4]
.L49:
	ldr	r3, [r7, #48]
	adds	r3, r3, #1
	str	r3, [r7, #48]
.L47:
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bcc	.L53
	adds	r7, r7, #68
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L55:
	.align	2
.L54:
	.word	_ZL22thai_above_start_state-(.LPIC7+4)
	.word	_ZL22thai_below_start_state-(.LPIC8+4)
	.word	_ZL22thai_above_start_state-(.LPIC9+4)
	.word	_ZL22thai_below_start_state-(.LPIC10+4)
	.word	_ZL24thai_above_state_machine-(.LPIC11+4)
	.word	_ZL24thai_below_state_machine-(.LPIC12+4)
	.fnend
	.size	_ZL19do_thai_pua_shapingPK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t, .-_ZL19do_thai_pua_shapingPK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t
	.section	.text._ZL20preprocess_text_thaiPK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL20preprocess_text_thaiPK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t, %function
_ZL20preprocess_text_thaiPK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t:
	.fnstart
.LFB262:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #80
	sub	sp, sp, #80
	.setfp r7, sp, #16
	add	r7, sp, #16
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r0, [r7, #8]
	bl	_ZN11hb_buffer_t12clear_outputEv(PLT)
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #88]
	str	r3, [r7, #56]
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [r3, #84]
	b	.L57
.L67:
	ldr	r0, [r7, #8]
	movs	r1, #0
	bl	_ZN11hb_buffer_t3curEj(PLT)
	mov	r3, r0
	ldr	r3, [r3]
	str	r3, [r7, #52]
	ldr	r3, [r7, #52]
	bic	r2, r3, #128
	movw	r3, #3635
	cmp	r2, r3
	beq	.L58
	ldr	r0, [r7, #8]
	bl	_ZN11hb_buffer_t10next_glyphEv(PLT)
	b	.L57
.L58:
	ldr	r3, [r7, #52]
	adds	r3, r3, #26
	str	r3, [r7, #40]
	ldr	r3, [r7, #52]
	subs	r3, r3, #1
	str	r3, [r7, #44]
	add	r3, r7, #40
	ldr	r0, [r7, #8]
	movs	r1, #1
	movs	r2, #2
	bl	_ZN11hb_buffer_t14replace_glyphsEjjPKj(PLT)
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #80]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L56
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #92]
	str	r3, [r7, #48]
	ldr	r3, [r7, #8]
	ldr	r1, [r3, #104]
	ldr	r2, [r7, #48]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	subs	r3, r3, #40
	add	r3, r3, r1
	mov	r0, r3
	movs	r1, #12
	bl	_ZL35_hb_glyph_info_set_general_categoryP15hb_glyph_info_t29hb_unicode_general_category_t(PLT)
	ldr	r3, [r7, #48]
	subs	r3, r3, #2
	str	r3, [r7, #60]
	b	.L61
.L64:
	ldr	r3, [r7, #60]
	subs	r3, r3, #1
	str	r3, [r7, #60]
.L61:
	ldr	r3, [r7, #60]
	cmp	r3, #0
	beq	.L62
	ldr	r3, [r7, #8]
	ldr	r1, [r3, #104]
	ldr	r2, [r7, #60]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	subs	r3, r3, #20
	add	r3, r3, r1
	ldr	r3, [r3]
	bic	r3, r3, #128
	movw	r2, #3662
	str	r2, [sp]
	movw	r2, #3633
	str	r2, [sp, #4]
	movw	r2, #3633
	str	r2, [sp, #8]
	mov	r0, r3
	movw	r1, #3636
	movw	r2, #3639
	movw	r3, #3655
	bl	_Z12hb_in_rangesIjEbT_S0_S0_S0_S0_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L62
	movs	r3, #1
	b	.L63
.L62:
	movs	r3, #0
.L63:
	cmp	r3, #0
	bne	.L64
	ldr	r3, [r7, #60]
	adds	r2, r3, #2
	ldr	r3, [r7, #48]
	cmp	r2, r3
	bcs	.L65
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #60]
	ldr	r2, [r7, #48]
	bl	_ZN11hb_buffer_t18merge_out_clustersEjj(PLT)
	ldr	r3, [r7, #8]
	ldr	r1, [r3, #104]
	ldr	r2, [r7, #48]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	subs	r3, r3, #40
	add	r3, r3, r1
	add	r4, r7, #20
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7, #8]
	ldr	r1, [r3, #104]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r0, r1, r3
	ldr	r3, [r7, #8]
	ldr	r1, [r3, #104]
	ldr	r2, [r7, #60]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r1, r1, r3
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #60]
	subs	r3, r2, r3
	subs	r2, r3, #2
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, r3
	bl	memmove(PLT)
	ldr	r3, [r7, #8]
	ldr	r1, [r3, #104]
	ldr	r2, [r7, #60]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	mov	r4, r3
	add	r5, r7, #20
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	b	.L66
.L65:
	ldr	r3, [r7, #60]
	cmp	r3, #0
	beq	.L66
	ldr	r3, [r7, #60]
	subs	r3, r3, #1
	ldr	r0, [r7, #8]
	mov	r1, r3
	ldr	r2, [r7, #48]
	bl	_ZN11hb_buffer_t18merge_out_clustersEjj(PLT)
.L66:
.L57:
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #84]
	ldr	r3, [r7, #56]
	cmp	r2, r3
	bcc	.L67
	ldr	r0, [r7, #8]
	bl	_ZN11hb_buffer_t12swap_buffersEv(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	movw	r3, #24937
	movt	r3, 21608
	cmp	r2, r3
	bne	.L56
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #32]	@ zero_extendqisi2
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L56
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	_ZL19do_thai_pua_shapingPK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t(PLT)
.L56:
	adds	r7, r7, #64
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.fnend
	.size	_ZL20preprocess_text_thaiPK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t, .-_ZL20preprocess_text_thaiPK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t
	.hidden	_hb_ot_complex_shaper_thai
	.global	_hb_ot_complex_shaper_thai
	.section	.data.rel.ro.local._hb_ot_complex_shaper_thai,"aw",%progbits
	.align	2
	.type	_hb_ot_complex_shaper_thai, %object
	.size	_hb_ot_complex_shaper_thai, 52
_hb_ot_complex_shaper_thai:
	.ascii	"thai\000"
	.space	3
	.word	0
	.word	0
	.word	0
	.word	0
	.word	_ZL20preprocess_text_thaiPK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t
	.word	2
	.word	0
	.word	0
	.word	0
	.word	1
	.byte	0
	.space	3
	.section	.text._Z11hb_in_rangeIjEbT_S0_S0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z11hb_in_rangeIjEbT_S0_S0_, %function
_Z11hb_in_rangeIjEbT_S0_S0_:
	.fnstart
.LFB268:
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
.LFB269:
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
	.section	.rodata._ZL10table_tags,"a",%progbits
	.align	2
	.type	_ZL10table_tags, %object
	.size	_ZL10table_tags, 8
_ZL10table_tags:
	.word	1196643650
	.word	1196445523
	.section	.rodata._ZL24thai_above_state_machine,"a",%progbits
	.align	2
	.type	_ZL24thai_above_state_machine, %object
	.size	_ZL24thai_above_state_machine, 96
_ZL24thai_above_state_machine:
	.word	0
	.word	3
	.word	0
	.word	0
	.word	1
	.word	3
	.word	2
	.word	2
	.word	0
	.word	1
	.word	3
	.word	2
	.word	0
	.word	3
	.word	0
	.word	2
	.word	2
	.word	3
	.word	0
	.word	3
	.word	0
	.word	3
	.word	0
	.word	3
	.section	.rodata._ZL24thai_below_state_machine,"a",%progbits
	.align	2
	.type	_ZL24thai_below_state_machine, %object
	.size	_ZL24thai_below_state_machine, 72
_ZL24thai_below_state_machine:
	.word	0
	.word	0
	.word	0
	.word	2
	.word	0
	.word	0
	.word	0
	.word	1
	.word	4
	.word	2
	.word	0
	.word	1
	.word	0
	.word	2
	.word	1
	.word	2
	.word	0
	.word	2
	.section	.rodata._ZZL14thai_pua_shapej13thai_action_tP9hb_font_tE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZL14thai_pua_shapej13thai_action_tP9hb_font_tE19__PRETTY_FUNCTION__, %object
	.size	_ZZL14thai_pua_shapej13thai_action_tP9hb_font_tE19__PRETTY_FUNCTION__, 73
_ZZL14thai_pua_shapej13thai_action_tP9hb_font_tE19__PRETTY_FUNCTION__:
	.ascii	"hb_codepoint_t thai_pua_shape(hb_codepoint_t, thai_"
	.ascii	"action_t, hb_font_t*)\000"
	.section	.rodata._ZZL14thai_pua_shapej13thai_action_tP9hb_font_tE11SD_mappings,"a",%progbits
	.align	2
	.type	_ZZL14thai_pua_shapej13thai_action_tP9hb_font_tE11SD_mappings, %object
	.size	_ZZL14thai_pua_shapej13thai_action_tP9hb_font_tE11SD_mappings, 108
_ZZL14thai_pua_shapej13thai_action_tP9hb_font_tE11SD_mappings:
	.word	3656
	.word	63242
	.word	63627
	.word	3657
	.word	63243
	.word	63630
	.word	3658
	.word	63244
	.word	63633
	.word	3659
	.word	63245
	.word	63636
	.word	3660
	.word	63246
	.word	63639
	.word	3640
	.word	63256
	.word	63643
	.word	3641
	.word	63257
	.word	63644
	.word	3642
	.word	63258
	.word	63645
	.word	0
	.word	0
	.word	0
	.section	.rodata._ZZL14thai_pua_shapej13thai_action_tP9hb_font_tE12SDL_mappings,"a",%progbits
	.align	2
	.type	_ZZL14thai_pua_shapej13thai_action_tP9hb_font_tE12SDL_mappings, %object
	.size	_ZZL14thai_pua_shapej13thai_action_tP9hb_font_tE12SDL_mappings, 72
_ZZL14thai_pua_shapej13thai_action_tP9hb_font_tE12SDL_mappings:
	.word	3656
	.word	63237
	.word	63628
	.word	3657
	.word	63238
	.word	63631
	.word	3658
	.word	63239
	.word	63634
	.word	3659
	.word	63240
	.word	63637
	.word	3660
	.word	63241
	.word	63640
	.word	0
	.word	0
	.word	0
	.section	.rodata._ZZL14thai_pua_shapej13thai_action_tP9hb_font_tE11SL_mappings,"a",%progbits
	.align	2
	.type	_ZZL14thai_pua_shapej13thai_action_tP9hb_font_tE11SL_mappings, %object
	.size	_ZZL14thai_pua_shapej13thai_action_tP9hb_font_tE11SL_mappings, 156
_ZZL14thai_pua_shapej13thai_action_tP9hb_font_tE11SL_mappings:
	.word	3656
	.word	63251
	.word	63626
	.word	3657
	.word	63252
	.word	63629
	.word	3658
	.word	63253
	.word	63632
	.word	3659
	.word	63254
	.word	63635
	.word	3660
	.word	63255
	.word	63638
	.word	3633
	.word	63248
	.word	63620
	.word	3636
	.word	63233
	.word	63621
	.word	3637
	.word	63234
	.word	63622
	.word	3638
	.word	63235
	.word	63623
	.word	3639
	.word	63236
	.word	63624
	.word	3655
	.word	63250
	.word	63625
	.word	3661
	.word	63249
	.word	63641
	.word	0
	.word	0
	.word	0
	.section	.rodata._ZZL14thai_pua_shapej13thai_action_tP9hb_font_tE11RD_mappings,"a",%progbits
	.align	2
	.type	_ZZL14thai_pua_shapej13thai_action_tP9hb_font_tE11RD_mappings, %object
	.size	_ZZL14thai_pua_shapej13thai_action_tP9hb_font_tE11RD_mappings, 36
_ZZL14thai_pua_shapej13thai_action_tP9hb_font_tE11RD_mappings:
	.word	3597
	.word	63247
	.word	63642
	.word	3600
	.word	63232
	.word	63646
	.word	0
	.word	0
	.word	0
	.hidden	_ZN11hb_buffer_t12swap_buffersEv
	.hidden	_ZN11hb_buffer_t18merge_out_clustersEjj
	.hidden	_ZN11hb_buffer_t14replace_glyphsEjjPKj
	.hidden	_ZN11hb_buffer_t12clear_outputEv
	.hidden	_ZN11hb_buffer_t13make_room_forEjj
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
