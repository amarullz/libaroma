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
	.file	"hb-ot-shape-normalize.cc"
	.section	.text._ZN18hb_unicode_funcs_t15combining_classEj,"axG",%progbits,_ZN18hb_unicode_funcs_t15combining_classEj,comdat
	.align	2
	.weak	_ZN18hb_unicode_funcs_t15combining_classEj
	.thumb
	.thumb_func
	.type	_ZN18hb_unicode_funcs_t15combining_classEj, %function
_ZN18hb_unicode_funcs_t15combining_classEj:
	.fnstart
.LFB83:
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
	ldr	r3, [r3, #52]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #84]
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
	.size	_ZN18hb_unicode_funcs_t15combining_classEj, .-_ZN18hb_unicode_funcs_t15combining_classEj
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
	beq	.L6
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L7
.L6:
	movs	r3, #0
	b	.L8
.L7:
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
.L8:
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
	.section	.text._ZN18hb_unicode_funcs_t23decompose_compatibilityEjPj,"axG",%progbits,_ZN18hb_unicode_funcs_t23decompose_compatibilityEjPj,comdat
	.align	2
	.weak	_ZN18hb_unicode_funcs_t23decompose_compatibilityEjPj
	.thumb
	.thumb_func
	.type	_ZN18hb_unicode_funcs_t23decompose_compatibilityEjPj, %function
_ZN18hb_unicode_funcs_t23decompose_compatibilityEjPj:
	.fnstart
.LFB90:
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
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #80]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #112]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	blx	r4
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #1
	bne	.L12
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bne	.L12
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	movs	r3, #0
	b	.L13
.L12:
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #20]
.L13:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZN18hb_unicode_funcs_t23decompose_compatibilityEjPj, .-_ZN18hb_unicode_funcs_t23decompose_compatibilityEjPj
	.section	.text._ZN18hb_unicode_funcs_t24modified_combining_classEj,"axG",%progbits,_ZN18hb_unicode_funcs_t24modified_combining_classEj,comdat
	.align	2
	.weak	_ZN18hb_unicode_funcs_t24modified_combining_classEj
	.thumb
	.thumb_func
	.type	_ZN18hb_unicode_funcs_t24modified_combining_classEj, %function
_ZN18hb_unicode_funcs_t24modified_combining_classEj:
	.fnstart
.LFB91:
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
	ldr	r2, [r7]
	movw	r3, #4151
	cmp	r2, r3
	bne	.L15
	movw	r3, #4154
	str	r3, [r7]
.L15:
	ldr	r3, [r7]
	cmp	r3, #6752
	bne	.L16
	movs	r3, #254
	b	.L17
.L16:
	ldr	r2, [r7]
	movw	r3, #4038
	cmp	r2, r3
	bne	.L18
	movs	r3, #254
	b	.L17
.L18:
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	_ZN18hb_unicode_funcs_t15combining_classEj(PLT)
	mov	r3, r0
	ldr	r2, .L19
.LPIC0:
	add	r2, pc
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
.L17:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L20:
	.align	2
.L19:
	.word	_hb_modified_combining_class-(.LPIC0+4)
	.fnend
	.size	_ZN18hb_unicode_funcs_t24modified_combining_classEj, .-_ZN18hb_unicode_funcs_t24modified_combining_classEj
	.section	.text._ZN18hb_unicode_funcs_t21is_variation_selectorEj,"axG",%progbits,_ZN18hb_unicode_funcs_t21is_variation_selectorEj,comdat
	.align	2
	.weak	_ZN18hb_unicode_funcs_t21is_variation_selectorEj
	.thumb
	.thumb_func
	.type	_ZN18hb_unicode_funcs_t21is_variation_selectorEj, %function
_ZN18hb_unicode_funcs_t21is_variation_selectorEj:
	.fnstart
.LFB92:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	movw	r3, #495
	movt	r3, 14
	str	r3, [sp]
	ldr	r0, [r7, #4]
	mov	r1, #65024
	movw	r2, #65039
	mov	r3, #256
	movt	r3, 14
	bl	_Z12hb_in_rangesIjEbT_S0_S0_S0_S0_(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN18hb_unicode_funcs_t21is_variation_selectorEj, .-_ZN18hb_unicode_funcs_t21is_variation_selectorEj
	.section	.text._ZN18hb_unicode_funcs_t20is_default_ignorableEj,"axG",%progbits,_ZN18hb_unicode_funcs_t20is_default_ignorableEj,comdat
	.align	2
	.weak	_ZN18hb_unicode_funcs_t20is_default_ignorableEj
	.thumb
	.thumb_func
	.type	_ZN18hb_unicode_funcs_t20is_default_ignorableEj, %function
_ZN18hb_unicode_funcs_t20is_default_ignorableEj:
	.fnstart
.LFB93:
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
	bne	.L24
	ldr	r3, [r7, #4]
	lsrs	r3, r3, #8
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #23
	beq	.L26
	cmp	r3, #23
	bhi	.L27
	cmp	r3, #3
	beq	.L28
	cmp	r3, #6
	beq	.L29
	cmp	r3, #0
	beq	.L30
	b	.L25
.L27:
	cmp	r3, #32
	beq	.L31
	cmp	r3, #32
	bhi	.L32
	cmp	r3, #24
	beq	.L33
	b	.L25
.L32:
	cmp	r3, #254
	beq	.L34
	cmp	r3, #255
	beq	.L35
	b	.L25
.L30:
	ldr	r3, [r7, #4]
	cmp	r3, #173
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	b	.L36
.L28:
	ldr	r2, [r7, #4]
	movw	r3, #847
	cmp	r2, r3
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	b	.L36
.L29:
	ldr	r2, [r7, #4]
	movw	r3, #1564
	cmp	r2, r3
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	b	.L36
.L26:
	ldr	r0, [r7, #4]
	movw	r1, #6068
	movw	r2, #6069
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	b	.L36
.L33:
	ldr	r0, [r7, #4]
	movw	r1, #6155
	movw	r2, #6158
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	b	.L36
.L31:
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
	b	.L36
.L34:
	ldr	r0, [r7, #4]
	mov	r1, #65024
	movw	r2, #65039
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L37
	ldr	r2, [r7, #4]
	movw	r3, #65279
	cmp	r2, r3
	bne	.L38
.L37:
	movs	r3, #1
	b	.L39
.L38:
	movs	r3, #0
.L39:
	b	.L36
.L35:
	ldr	r0, [r7, #4]
	movw	r1, #65520
	movw	r2, #65528
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	b	.L36
.L25:
	movs	r3, #0
	b	.L36
.L24:
	ldr	r3, [r7, #12]
	cmp	r3, #1
	beq	.L41
	cmp	r3, #14
	beq	.L42
	b	.L43
.L41:
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
	b	.L36
.L42:
	ldr	r0, [r7, #4]
	mov	r1, #917504
	movw	r2, #4095
	movt	r2, 14
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	b	.L36
.L43:
	movs	r3, #0
.L36:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN18hb_unicode_funcs_t20is_default_ignorableEj, .-_ZN18hb_unicode_funcs_t20is_default_ignorableEj
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
	.section	.text._ZN11hb_buffer_t4prevEv,"axG",%progbits,_ZN11hb_buffer_t4prevEv,comdat
	.align	2
	.weak	_ZN11hb_buffer_t4prevEv
	.thumb
	.thumb_func
	.type	_ZN11hb_buffer_t4prevEv, %function
_ZN11hb_buffer_t4prevEv:
	.fnstart
.LFB99:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #104]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #92]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	subs	r3, r3, #20
	add	r3, r3, r1
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN11hb_buffer_t4prevEv, .-_ZN11hb_buffer_t4prevEv
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
	beq	.L49
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #104]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	cmp	r2, r3
	bne	.L50
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #92]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	cmp	r2, r3
	beq	.L51
.L50:
	ldr	r0, [r7, #4]
	movs	r1, #1
	movs	r2, #1
	bl	_ZN11hb_buffer_t13make_room_forEjj(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L52
	b	.L48
.L52:
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
.L51:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #92]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #92]
.L49:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #84]
.L48:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.fnend
	.size	_ZN11hb_buffer_t10next_glyphEv, .-_ZN11hb_buffer_t10next_glyphEv
	.section	.text._ZN11hb_buffer_t10skip_glyphEv,"axG",%progbits,_ZN11hb_buffer_t10skip_glyphEv,comdat
	.align	2
	.weak	_ZN11hb_buffer_t10skip_glyphEv
	.thumb
	.thumb_func
	.type	_ZN11hb_buffer_t10skip_glyphEv, %function
_ZN11hb_buffer_t10skip_glyphEv:
	.fnstart
.LFB106:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #84]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN11hb_buffer_t10skip_glyphEv, .-_ZN11hb_buffer_t10skip_glyphEv
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
	.section	.text._ZL32_hb_glyph_info_set_unicode_propsP15hb_glyph_info_tP18hb_unicode_funcs_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL32_hb_glyph_info_set_unicode_propsP15hb_glyph_info_tP18hb_unicode_funcs_t, %function
_ZL32_hb_glyph_info_set_unicode_propsP15hb_glyph_info_tP18hb_unicode_funcs_t:
	.fnstart
.LFB212:
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
	ldr	r3, [r3]
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZN18hb_unicode_funcs_t16general_categoryEj(PLT)
	mov	r3, r0
	uxtb	r4, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZN18hb_unicode_funcs_t20is_default_ignorableEj(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L58
	movs	r3, #128
	b	.L59
.L58:
	movs	r3, #0
.L59:
	orrs	r3, r3, r4
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	ldr	r1, [r3]
	movw	r3, #8204
	cmp	r1, r3
	bne	.L60
	movs	r3, #64
	b	.L61
.L60:
	movs	r3, #0
.L61:
	orrs	r3, r3, r2
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	ldr	r1, [r3]
	movw	r3, #8205
	cmp	r1, r3
	bne	.L62
	movs	r3, #32
	b	.L63
.L62:
	movs	r3, #0
.L63:
	orrs	r3, r3, r2
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r0, [r7]
	mov	r1, r3
	bl	_ZN18hb_unicode_funcs_t24modified_combining_classEj(PLT)
	mov	r3, r0
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3, #17]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZL32_hb_glyph_info_set_unicode_propsP15hb_glyph_info_tP18hb_unicode_funcs_t, .-_ZL32_hb_glyph_info_set_unicode_propsP15hb_glyph_info_tP18hb_unicode_funcs_t
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
	.section	.rodata
	.align	2
.LC0:
	.ascii	"unicode_props0\000"
	.align	2
.LC1:
	.ascii	"unicode_props1\000"
	.section	.text._ZL30_hb_buffer_assert_unicode_varsP11hb_buffer_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL30_hb_buffer_assert_unicode_varsP11hb_buffer_t, %function
_ZL30_hb_buffer_assert_unicode_varsP11hb_buffer_t:
	.fnstart
.LFB242:
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
	movs	r1, #4
	movs	r2, #1
	ldr	r3, .L69
.LPIC1:
	add	r3, pc
	bl	_ZN11hb_buffer_t10assert_varEjjPKc(PLT)
	ldr	r0, [r7, #4]
	movs	r1, #5
	movs	r2, #1
	ldr	r3, .L69+4
.LPIC2:
	add	r3, pc
	bl	_ZN11hb_buffer_t10assert_varEjjPKc(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L70:
	.align	2
.L69:
	.word	.LC0-(.LPIC1+4)
	.word	.LC1-(.LPIC2+4)
	.fnend
	.size	_ZL30_hb_buffer_assert_unicode_varsP11hb_buffer_t, .-_ZL30_hb_buffer_assert_unicode_varsP11hb_buffer_t
	.section	.text._ZL17decompose_unicodePK31hb_ot_shape_normalize_context_tjPjS2_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL17decompose_unicodePK31hb_ot_shape_normalize_context_tjPjS2_, %function
_ZL17decompose_unicodePK31hb_ot_shape_normalize_context_tjPjS2_:
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
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
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
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL17decompose_unicodePK31hb_ot_shape_normalize_context_tjPjS2_, .-_ZL17decompose_unicodePK31hb_ot_shape_normalize_context_tjPjS2_
	.section	.text._ZL15compose_unicodePK31hb_ot_shape_normalize_context_tjjPj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL15compose_unicodePK31hb_ot_shape_normalize_context_tjjPj, %function
_ZL15compose_unicodePK31hb_ot_shape_normalize_context_tjjPj:
	.fnstart
.LFB259:
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
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	_ZN18hb_unicode_funcs_t7composeEjjPj(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL15compose_unicodePK31hb_ot_shape_normalize_context_tjjPj, .-_ZL15compose_unicodePK31hb_ot_shape_normalize_context_tjjPj
	.section	.text._ZL9set_glyphR15hb_glyph_info_tP9hb_font_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL9set_glyphR15hb_glyph_info_tP9hb_font_t, %function
_ZL9set_glyphR15hb_glyph_info_tP9hb_font_t:
	.fnstart
.LFB260:
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
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	ldr	r0, [r7]
	mov	r1, r2
	movs	r2, #0
	bl	_ZN9hb_font_t9get_glyphEjjPj(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL9set_glyphR15hb_glyph_info_tP9hb_font_t, .-_ZL9set_glyphR15hb_glyph_info_tP9hb_font_t
	.section	.text._ZL11output_charP11hb_buffer_tjj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL11output_charP11hb_buffer_tjj, %function
_ZL11output_charP11hb_buffer_tjj:
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
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r0, [r7, #12]
	movs	r1, #0
	bl	_ZN11hb_buffer_t3curEj(PLT)
	mov	r3, r0
	ldr	r2, [r7, #4]
	str	r2, [r3, #12]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_ZN11hb_buffer_t12output_glyphEj(PLT)
	ldr	r0, [r7, #12]
	bl	_ZN11hb_buffer_t4prevEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	mov	r0, r2
	mov	r1, r3
	bl	_ZL32_hb_glyph_info_set_unicode_propsP15hb_glyph_info_tP18hb_unicode_funcs_t(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL11output_charP11hb_buffer_tjj, .-_ZL11output_charP11hb_buffer_tjj
	.section	.text._ZL9next_charP11hb_buffer_tj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL9next_charP11hb_buffer_tj, %function
_ZL9next_charP11hb_buffer_tj:
	.fnstart
.LFB262:
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
	bl	_ZN11hb_buffer_t3curEj(PLT)
	mov	r3, r0
	ldr	r2, [r7]
	str	r2, [r3, #12]
	ldr	r0, [r7, #4]
	bl	_ZN11hb_buffer_t10next_glyphEv(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL9next_charP11hb_buffer_tj, .-_ZL9next_charP11hb_buffer_tj
	.section	.text._ZL9skip_charP11hb_buffer_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL9skip_charP11hb_buffer_t, %function
_ZL9skip_charP11hb_buffer_t:
	.fnstart
.LFB263:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	_ZN11hb_buffer_t10skip_glyphEv(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZL9skip_charP11hb_buffer_t, .-_ZL9skip_charP11hb_buffer_t
	.section	.text._ZL9decomposePK31hb_ot_shape_normalize_context_tbj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL9decomposePK31hb_ot_shape_normalize_context_tbj, %function
_ZL9decomposePK31hb_ot_shape_normalize_context_tbj:
	.fnstart
.LFB264:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #52
	sub	sp, sp, #52
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	mov	r3, r1
	str	r2, [r7, #4]
	strb	r3, [r7, #11]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	str	r3, [r7, #44]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	str	r3, [r7, #40]
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #16]
	add	r2, r7, #28
	add	r3, r7, #24
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	blx	r4
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L80
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L81
	ldr	r2, [r7, #24]
	add	r3, r7, #16
	ldr	r0, [r7, #40]
	mov	r1, r2
	movs	r2, #0
	bl	_ZN9hb_font_t9get_glyphEjjPj(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L81
.L80:
	movs	r3, #1
	b	.L82
.L81:
	movs	r3, #0
.L82:
	cmp	r3, #0
	beq	.L83
	movs	r3, #0
	b	.L91
.L83:
	ldr	r2, [r7, #28]
	add	r3, r7, #20
	ldr	r0, [r7, #40]
	mov	r1, r2
	movs	r2, #0
	bl	_ZN9hb_font_t9get_glyphEjjPj(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	strb	r3, [r7, #39]
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L85
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L85
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #20]
	ldr	r0, [r7, #44]
	mov	r1, r2
	mov	r2, r3
	bl	_ZL11output_charP11hb_buffer_tjj(PLT)
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L86
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #16]
	ldr	r0, [r7, #44]
	mov	r1, r2
	mov	r2, r3
	bl	_ZL11output_charP11hb_buffer_tjj(PLT)
	movs	r3, #2
	b	.L91
.L86:
	movs	r3, #1
	b	.L91
.L85:
	ldr	r3, [r7, #28]
	ldrb	r2, [r7, #11]	@ zero_extendqisi2
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	bl	_ZL9decomposePK31hb_ot_shape_normalize_context_tbj(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L87
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L88
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #16]
	ldr	r0, [r7, #44]
	mov	r1, r2
	mov	r2, r3
	bl	_ZL11output_charP11hb_buffer_tjj(PLT)
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	b	.L91
.L88:
	ldr	r3, [r7, #32]
	b	.L91
.L87:
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L89
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #20]
	ldr	r0, [r7, #44]
	mov	r1, r2
	mov	r2, r3
	bl	_ZL11output_charP11hb_buffer_tjj(PLT)
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L90
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #16]
	ldr	r0, [r7, #44]
	mov	r1, r2
	mov	r2, r3
	bl	_ZL11output_charP11hb_buffer_tjj(PLT)
	movs	r3, #2
	b	.L91
.L90:
	movs	r3, #1
	b	.L91
.L89:
	movs	r3, #0
.L91:
	mov	r0, r3
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZL9decomposePK31hb_ot_shape_normalize_context_tbj, .-_ZL9decomposePK31hb_ot_shape_normalize_context_tbj
	.section	.text._ZL23decompose_compatibilityPK31hb_ot_shape_normalize_context_tj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL23decompose_compatibilityPK31hb_ot_shape_normalize_context_tj, %function
_ZL23decompose_compatibilityPK31hb_ot_shape_normalize_context_tj:
	.fnstart
.LFB265:
	@ args = 0, pretend = 0, frame = 168
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #168
	sub	sp, sp, #168
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #44]
	add	r3, r7, #8
	mov	r0, r2
	ldr	r1, [r7]
	mov	r2, r3
	bl	_ZN18hb_unicode_funcs_t23decompose_compatibilityEjPj(PLT)
	mov	r3, r0
	str	r3, [r7, #160]
	ldr	r3, [r7, #160]
	cmp	r3, #0
	bne	.L93
	movs	r3, #0
	b	.L100
.L93:
	movs	r3, #0
	str	r3, [r7, #164]
	b	.L95
.L97:
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #8]
	ldr	r3, [r7, #164]
	lsls	r3, r3, #2
	add	r0, r7, #168
	add	r3, r3, r0
	ldr	r2, [r3, #-160]
	add	r0, r7, #84
	ldr	r3, [r7, #164]
	lsls	r3, r3, #2
	add	r3, r3, r0
	mov	r0, r1
	mov	r1, r2
	movs	r2, #0
	bl	_ZN9hb_font_t9get_glyphEjjPj(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L96
	movs	r3, #0
	b	.L100
.L96:
	ldr	r3, [r7, #164]
	adds	r3, r3, #1
	str	r3, [r7, #164]
.L95:
	ldr	r2, [r7, #164]
	ldr	r3, [r7, #160]
	cmp	r2, r3
	bcc	.L97
	movs	r3, #0
	str	r3, [r7, #164]
	b	.L98
.L99:
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #164]
	lsls	r3, r3, #2
	add	r2, r7, #168
	add	r3, r3, r2
	ldr	r2, [r3, #-160]
	ldr	r3, [r7, #164]
	lsls	r3, r3, #2
	add	r0, r7, #168
	add	r3, r3, r0
	ldr	r3, [r3, #-84]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	_ZL11output_charP11hb_buffer_tjj(PLT)
	ldr	r3, [r7, #164]
	adds	r3, r3, #1
	str	r3, [r7, #164]
.L98:
	ldr	r2, [r7, #164]
	ldr	r3, [r7, #160]
	cmp	r2, r3
	bcc	.L99
	ldr	r3, [r7, #160]
.L100:
	mov	r0, r3
	adds	r7, r7, #168
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL23decompose_compatibilityPK31hb_ot_shape_normalize_context_tj, .-_ZL23decompose_compatibilityPK31hb_ot_shape_normalize_context_tj
	.section	.text._ZL27decompose_current_characterPK31hb_ot_shape_normalize_context_tb,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL27decompose_current_characterPK31hb_ot_shape_normalize_context_tb, %function
_ZL27decompose_current_characterPK31hb_ot_shape_normalize_context_tb:
	.fnstart
.LFB266:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #20
	sub	sp, sp, #20
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #12]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L102
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #8]
	ldr	r0, [r7, #12]
	movs	r1, #0
	bl	_ZN11hb_buffer_t3curEj(PLT)
	mov	r3, r0
	ldr	r2, [r3]
	add	r3, r7, #8
	mov	r0, r4
	mov	r1, r2
	movs	r2, #0
	bl	_ZN9hb_font_t9get_glyphEjjPj(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L102
	movs	r3, #1
	b	.L103
.L102:
	movs	r3, #0
.L103:
	cmp	r3, #0
	beq	.L104
	ldr	r3, [r7, #8]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZL9next_charP11hb_buffer_tj(PLT)
	b	.L101
.L104:
	ldr	r0, [r7, #12]
	movs	r1, #0
	bl	_ZN11hb_buffer_t3curEj(PLT)
	mov	r3, r0
	ldr	r3, [r3]
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	ldr	r0, [r7, #4]
	mov	r1, r2
	mov	r2, r3
	bl	_ZL9decomposePK31hb_ot_shape_normalize_context_tbj(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L106
	ldr	r0, [r7, #12]
	bl	_ZL9skip_charP11hb_buffer_t(PLT)
	b	.L101
.L106:
	ldrb	r3, [r7, #3]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L107
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #8]
	ldr	r0, [r7, #12]
	movs	r1, #0
	bl	_ZN11hb_buffer_t3curEj(PLT)
	mov	r3, r0
	ldr	r2, [r3]
	add	r3, r7, #8
	mov	r0, r4
	mov	r1, r2
	movs	r2, #0
	bl	_ZN9hb_font_t9get_glyphEjjPj(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L107
	movs	r3, #1
	b	.L108
.L107:
	movs	r3, #0
.L108:
	cmp	r3, #0
	beq	.L109
	ldr	r3, [r7, #8]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZL9next_charP11hb_buffer_tj(PLT)
	b	.L101
.L109:
	ldr	r0, [r7, #12]
	movs	r1, #0
	bl	_ZN11hb_buffer_t3curEj(PLT)
	mov	r3, r0
	ldr	r3, [r3]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZL23decompose_compatibilityPK31hb_ot_shape_normalize_context_tj(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L110
	ldr	r0, [r7, #12]
	bl	_ZL9skip_charP11hb_buffer_t(PLT)
	b	.L101
.L110:
	ldr	r3, [r7, #8]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZL9next_charP11hb_buffer_tj(PLT)
.L101:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZL27decompose_current_characterPK31hb_ot_shape_normalize_context_tb, .-_ZL27decompose_current_characterPK31hb_ot_shape_normalize_context_tb
	.section	.text._ZL33handle_variation_selector_clusterPK31hb_ot_shape_normalize_context_tjb,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL33handle_variation_selector_clusterPK31hb_ot_shape_normalize_context_tjb, %function
_ZL33handle_variation_selector_clusterPK31hb_ot_shape_normalize_context_tjb:
	.fnstart
.LFB267:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #24
	sub	sp, sp, #24
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strb	r3, [r7, #7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	str	r3, [r7, #16]
	b	.L112
.L120:
	ldr	r0, [r7, #20]
	movs	r1, #1
	bl	_ZN11hb_buffer_t3curEj(PLT)
	mov	r3, r0
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZN18hb_unicode_funcs_t21is_variation_selectorEj(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L113
	ldr	r0, [r7, #20]
	movs	r1, #0
	bl	_ZN11hb_buffer_t3curEj(PLT)
	mov	r3, r0
	ldr	r5, [r3]
	ldr	r0, [r7, #20]
	movs	r1, #1
	bl	_ZN11hb_buffer_t3curEj(PLT)
	mov	r3, r0
	ldr	r4, [r3]
	ldr	r0, [r7, #20]
	movs	r1, #0
	bl	_ZN11hb_buffer_t3curEj(PLT)
	mov	r3, r0
	adds	r3, r3, #12
	ldr	r0, [r7, #16]
	mov	r1, r5
	mov	r2, r4
	bl	_ZN9hb_font_t9get_glyphEjjPj(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L114
	ldr	r0, [r7, #20]
	movs	r1, #0
	bl	_ZN11hb_buffer_t3curEj(PLT)
	mov	r3, r0
	ldr	r0, [r7, #20]
	movs	r1, #2
	movs	r2, #1
	bl	_ZN11hb_buffer_t14replace_glyphsEjjPKj(PLT)
	b	.L116
.L114:
	ldr	r0, [r7, #20]
	movs	r1, #0
	bl	_ZN11hb_buffer_t3curEj(PLT)
	mov	r3, r0
	mov	r0, r3
	ldr	r1, [r7, #16]
	bl	_ZL9set_glyphR15hb_glyph_info_tP9hb_font_t(PLT)
	ldr	r0, [r7, #20]
	bl	_ZN11hb_buffer_t10next_glyphEv(PLT)
	ldr	r0, [r7, #20]
	movs	r1, #0
	bl	_ZN11hb_buffer_t3curEj(PLT)
	mov	r3, r0
	mov	r0, r3
	ldr	r1, [r7, #16]
	bl	_ZL9set_glyphR15hb_glyph_info_tP9hb_font_t(PLT)
	ldr	r0, [r7, #20]
	bl	_ZN11hb_buffer_t10next_glyphEv(PLT)
	b	.L116
.L119:
	ldr	r0, [r7, #20]
	movs	r1, #0
	bl	_ZN11hb_buffer_t3curEj(PLT)
	mov	r3, r0
	mov	r0, r3
	ldr	r1, [r7, #16]
	bl	_ZL9set_glyphR15hb_glyph_info_tP9hb_font_t(PLT)
	ldr	r0, [r7, #20]
	bl	_ZN11hb_buffer_t10next_glyphEv(PLT)
.L116:
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #84]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcs	.L117
	ldr	r0, [r7, #20]
	movs	r1, #0
	bl	_ZN11hb_buffer_t3curEj(PLT)
	mov	r3, r0
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZN18hb_unicode_funcs_t21is_variation_selectorEj(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L117
	movs	r3, #1
	b	.L118
.L117:
	movs	r3, #0
.L118:
	cmp	r3, #0
	bne	.L119
	b	.L112
.L113:
	ldr	r0, [r7, #20]
	movs	r1, #0
	bl	_ZN11hb_buffer_t3curEj(PLT)
	mov	r3, r0
	mov	r0, r3
	ldr	r1, [r7, #16]
	bl	_ZL9set_glyphR15hb_glyph_info_tP9hb_font_t(PLT)
	ldr	r0, [r7, #20]
	bl	_ZN11hb_buffer_t10next_glyphEv(PLT)
.L112:
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #84]
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	cmp	r2, r3
	bcc	.L120
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #84]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcs	.L111
	ldr	r0, [r7, #20]
	movs	r1, #0
	bl	_ZN11hb_buffer_t3curEj(PLT)
	mov	r3, r0
	mov	r0, r3
	ldr	r1, [r7, #16]
	bl	_ZL9set_glyphR15hb_glyph_info_tP9hb_font_t(PLT)
	ldr	r0, [r7, #20]
	bl	_ZN11hb_buffer_t10next_glyphEv(PLT)
.L111:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.fnend
	.size	_ZL33handle_variation_selector_clusterPK31hb_ot_shape_normalize_context_tjb, .-_ZL33handle_variation_selector_clusterPK31hb_ot_shape_normalize_context_tjb
	.section	.text._ZL28decompose_multi_char_clusterPK31hb_ot_shape_normalize_context_tjb,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL28decompose_multi_char_clusterPK31hb_ot_shape_normalize_context_tjb, %function
_ZL28decompose_multi_char_clusterPK31hb_ot_shape_normalize_context_tjb:
	.fnstart
.LFB268:
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
	mov	r3, r2
	strb	r3, [r7, #7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #84]
	str	r3, [r7, #20]
	b	.L123
.L126:
	ldr	r3, [r7, #16]
	ldr	r1, [r3, #100]
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZN18hb_unicode_funcs_t21is_variation_selectorEj(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L124
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	mov	r2, r3
	bl	_ZL33handle_variation_selector_clusterPK31hb_ot_shape_normalize_context_tjb(PLT)
	b	.L122
.L124:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L123:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L126
	b	.L127
.L128:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZL27decompose_current_characterPK31hb_ot_shape_normalize_context_tb(PLT)
.L127:
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #84]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L128
.L122:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL28decompose_multi_char_clusterPK31hb_ot_shape_normalize_context_tjb, .-_ZL28decompose_multi_char_clusterPK31hb_ot_shape_normalize_context_tjb
	.section	.text._ZL17decompose_clusterPK31hb_ot_shape_normalize_context_tjbb,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL17decompose_clusterPK31hb_ot_shape_normalize_context_tjbb, %function
_ZL17decompose_clusterPK31hb_ot_shape_normalize_context_tjbb:
	.fnstart
.LFB269:
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
	strb	r2, [r7, #7]
	strb	r3, [r7, #6]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #84]
	adds	r2, r3, #1
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bne	.L130
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZL27decompose_current_characterPK31hb_ot_shape_normalize_context_tb(PLT)
	b	.L129
.L130:
	ldrb	r3, [r7, #6]	@ zero_extendqisi2
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	mov	r2, r3
	bl	_ZL28decompose_multi_char_clusterPK31hb_ot_shape_normalize_context_tjb(PLT)
.L129:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL17decompose_clusterPK31hb_ot_shape_normalize_context_tjbb, .-_ZL17decompose_clusterPK31hb_ot_shape_normalize_context_tjbb
	.section	.text._ZL23compare_combining_classPK15hb_glyph_info_tS1_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL23compare_combining_classPK15hb_glyph_info_tS1_, %function
_ZL23compare_combining_classPK15hb_glyph_info_tS1_:
	.fnstart
.LFB270:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	bl	_ZL43_hb_glyph_info_get_modified_combining_classPK15hb_glyph_info_t(PLT)
	str	r0, [r7, #12]
	ldr	r0, [r7]
	bl	_ZL43_hb_glyph_info_get_modified_combining_classPK15hb_glyph_info_t(PLT)
	str	r0, [r7, #8]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L133
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	b	.L134
.L133:
	mov	r3, #-1
.L134:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZL23compare_combining_classPK15hb_glyph_info_tS1_, .-_ZL23compare_combining_classPK15hb_glyph_info_tS1_
	.section	.text._Z22_hb_ot_shape_normalizePK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t,"ax",%progbits
	.align	2
	.global	_Z22_hb_ot_shape_normalizePK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t
	.hidden	_Z22_hb_ot_shape_normalizePK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t
	.thumb
	.thumb_func
	.type	_Z22_hb_ot_shape_normalizePK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t, %function
_Z22_hb_ot_shape_normalizePK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t:
	.fnstart
.LFB271:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #80
	sub	sp, sp, #80
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r0, [r7, #8]
	bl	_ZL30_hb_buffer_assert_unicode_varsP11hb_buffer_t(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #20]
	ldr	r3, [r3, #28]
	str	r3, [r7, #60]
	ldr	r3, [r7, #12]
	str	r3, [r7, #28]
	ldr	r3, [r7, #8]
	str	r3, [r7, #32]
	ldr	r3, [r7, #4]
	str	r3, [r7, #36]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #44]
	str	r3, [r7, #40]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #20]
	ldr	r3, [r3, #32]
	cmp	r3, #0
	beq	.L137
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #20]
	ldr	r3, [r3, #32]
	b	.L138
.L137:
	ldr	r3, .L171
.LPIC3:
	add	r3, pc
.L138:
	str	r3, [r7, #44]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #20]
	ldr	r3, [r3, #36]
	cmp	r3, #0
	beq	.L139
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #20]
	ldr	r3, [r3, #36]
	b	.L140
.L139:
	ldr	r3, .L171+4
.LPIC4:
	add	r3, pc
.L140:
	str	r3, [r7, #48]
	ldr	r3, [r7, #60]
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	strb	r3, [r7, #59]
	ldrb	r3, [r7, #59]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L141
	ldr	r3, [r7, #60]
	cmp	r3, #1
	beq	.L142
	ldr	r3, [r7, #60]
	cmp	r3, #3
	beq	.L142
.L141:
	movs	r3, #1
	b	.L143
.L142:
	movs	r3, #0
.L143:
	strb	r3, [r7, #58]
	ldr	r0, [r7, #8]
	bl	_ZN11hb_buffer_t12clear_outputEv(PLT)
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #88]
	str	r3, [r7, #52]
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [r3, #84]
	b	.L144
.L149:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #84]
	adds	r3, r3, #1
	str	r3, [r7, #76]
	b	.L145
.L148:
	ldr	r0, [r7, #8]
	movs	r1, #0
	bl	_ZN11hb_buffer_t3curEj(PLT)
	mov	r3, r0
	ldr	r1, [r3, #8]
	ldr	r3, [r7, #8]
	ldr	r0, [r3, #100]
	ldr	r2, [r7, #76]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	ldr	r3, [r3, #8]
	cmp	r1, r3
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L146
	b	.L147
.L146:
	ldr	r3, [r7, #76]
	adds	r3, r3, #1
	str	r3, [r7, #76]
.L145:
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bcc	.L148
.L147:
	add	r1, r7, #28
	ldrb	r2, [r7, #58]	@ zero_extendqisi2
	ldrb	r3, [r7, #59]	@ zero_extendqisi2
	mov	r0, r1
	ldr	r1, [r7, #76]
	bl	_ZL17decompose_clusterPK31hb_ot_shape_normalize_context_tjbb(PLT)
.L144:
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #84]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bcc	.L149
	ldr	r0, [r7, #8]
	bl	_ZN11hb_buffer_t12swap_buffersEv(PLT)
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #88]
	str	r3, [r7, #52]
	movs	r3, #0
	str	r3, [r7, #72]
	b	.L150
.L158:
	ldr	r3, [r7, #8]
	ldr	r1, [r3, #100]
	ldr	r2, [r7, #72]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	mov	r0, r3
	bl	_ZL43_hb_glyph_info_get_modified_combining_classPK15hb_glyph_info_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L151
	b	.L152
.L151:
	ldr	r3, [r7, #72]
	adds	r3, r3, #1
	str	r3, [r7, #68]
	b	.L153
.L156:
	ldr	r3, [r7, #8]
	ldr	r1, [r3, #100]
	ldr	r2, [r7, #68]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	mov	r0, r3
	bl	_ZL43_hb_glyph_info_get_modified_combining_classPK15hb_glyph_info_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L154
	b	.L155
.L154:
	ldr	r3, [r7, #68]
	adds	r3, r3, #1
	str	r3, [r7, #68]
.L153:
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bcc	.L156
.L155:
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #72]
	subs	r3, r2, r3
	cmp	r3, #10
	bls	.L157
	ldr	r3, [r7, #68]
	str	r3, [r7, #72]
	b	.L152
.L157:
	ldr	r3, [r7, #8]
	ldr	r1, [r3, #100]
	ldr	r2, [r7, #72]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r2, r1, r3
	ldr	r1, [r7, #68]
	ldr	r3, [r7, #72]
	subs	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L171+8
.LPIC5:
	add	r3, pc
	mov	r2, r3
	bl	_Z14hb_bubble_sortI15hb_glyph_info_tEvPT_jPFiPKS1_S4_E(PLT)
	ldr	r3, [r7, #68]
	str	r3, [r7, #72]
.L152:
	ldr	r3, [r7, #72]
	adds	r3, r3, #1
	str	r3, [r7, #72]
.L150:
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bcc	.L158
	ldr	r3, [r7, #60]
	cmp	r3, #0
	beq	.L159
	ldr	r3, [r7, #60]
	cmp	r3, #1
	bne	.L160
.L159:
	b	.L136
.L160:
	ldr	r0, [r7, #8]
	bl	_ZN11hb_buffer_t12clear_outputEv(PLT)
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #88]
	str	r3, [r7, #52]
	movs	r3, #0
	str	r3, [r7, #64]
	ldr	r0, [r7, #8]
	bl	_ZN11hb_buffer_t10next_glyphEv(PLT)
	b	.L162
.L169:
	ldr	r0, [r7, #8]
	movs	r1, #0
	bl	_ZN11hb_buffer_t3curEj(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_ZL35_hb_glyph_info_get_general_categoryPK15hb_glyph_info_t(PLT)
	mov	r3, r0
	mov	r2, #7168
	asr	r3, r2, r3
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L163
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #92]
	subs	r2, r3, #1
	ldr	r3, [r7, #64]
	cmp	r2, r3
	beq	.L164
	ldr	r0, [r7, #8]
	bl	_ZN11hb_buffer_t4prevEv(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_ZL43_hb_glyph_info_get_modified_combining_classPK15hb_glyph_info_t(PLT)
	mov	r4, r0
	ldr	r0, [r7, #8]
	movs	r1, #0
	bl	_ZN11hb_buffer_t3curEj(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_ZL43_hb_glyph_info_get_modified_combining_classPK15hb_glyph_info_t(PLT)
	mov	r3, r0
	cmp	r4, r3
	bcs	.L163
.L164:
	ldr	r4, [r7, #48]
	ldr	r3, [r7, #8]
	ldr	r1, [r3, #104]
	ldr	r2, [r7, #64]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r5, [r3]
	ldr	r0, [r7, #8]
	movs	r1, #0
	bl	_ZN11hb_buffer_t3curEj(PLT)
	mov	r3, r0
	ldr	r2, [r3]
	add	r1, r7, #28
	add	r3, r7, #24
	mov	r0, r1
	mov	r1, r5
	blx	r4
	mov	r3, r0
	cmp	r3, #0
	beq	.L163
	ldr	r2, [r7, #24]
	add	r3, r7, #20
	ldr	r0, [r7, #4]
	mov	r1, r2
	movs	r2, #0
	bl	_ZN9hb_font_t9get_glyphEjjPj(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L163
	movs	r3, #1
	b	.L165
.L163:
	movs	r3, #0
.L165:
	cmp	r3, #0
	beq	.L166
	ldr	r0, [r7, #8]
	bl	_ZN11hb_buffer_t10next_glyphEv(PLT)
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #80]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L136
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #92]
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #64]
	mov	r2, r3
	bl	_ZN11hb_buffer_t18merge_out_clustersEjj(PLT)
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #92]
	subs	r2, r3, #1
	ldr	r3, [r7, #8]
	str	r2, [r3, #92]
	ldr	r3, [r7, #8]
	ldr	r1, [r3, #104]
	ldr	r2, [r7, #64]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r2, [r7, #24]
	str	r2, [r3]
	ldr	r3, [r7, #8]
	ldr	r1, [r3, #104]
	ldr	r2, [r7, #64]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r2, [r7, #20]
	str	r2, [r3, #12]
	ldr	r3, [r7, #8]
	ldr	r1, [r3, #104]
	ldr	r2, [r7, #64]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r2, r1, r3
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #44]
	mov	r0, r2
	mov	r1, r3
	bl	_ZL32_hb_glyph_info_set_unicode_propsP15hb_glyph_info_tP18hb_unicode_funcs_t(PLT)
	b	.L162
.L166:
	ldr	r0, [r7, #8]
	bl	_ZN11hb_buffer_t10next_glyphEv(PLT)
	ldr	r0, [r7, #8]
	bl	_ZN11hb_buffer_t4prevEv(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_ZL43_hb_glyph_info_get_modified_combining_classPK15hb_glyph_info_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L162
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #92]
	subs	r3, r3, #1
	str	r3, [r7, #64]
.L162:
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #84]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bcc	.L169
	ldr	r0, [r7, #8]
	bl	_ZN11hb_buffer_t12swap_buffersEv(PLT)
.L136:
	adds	r7, r7, #80
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L172:
	.align	2
.L171:
	.word	_ZL17decompose_unicodePK31hb_ot_shape_normalize_context_tjPjS2_-(.LPIC3+4)
	.word	_ZL15compose_unicodePK31hb_ot_shape_normalize_context_tjjPj-(.LPIC4+4)
	.word	_ZL23compare_combining_classPK15hb_glyph_info_tS1_-(.LPIC5+4)
	.fnend
	.size	_Z22_hb_ot_shape_normalizePK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t, .-_Z22_hb_ot_shape_normalizePK18hb_ot_shape_plan_tP11hb_buffer_tP9hb_font_t
	.section	.text._Z12hb_in_rangesIjEbT_S0_S0_S0_S0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z12hb_in_rangesIjEbT_S0_S0_S0_S0_, %function
_Z12hb_in_rangesIjEbT_S0_S0_S0_S0_:
	.fnstart
.LFB276:
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
	bne	.L174
	ldr	r0, [r7, #12]
	ldr	r1, [r7]
	ldr	r2, [r7, #24]
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L175
.L174:
	movs	r3, #1
	b	.L176
.L175:
	movs	r3, #0
.L176:
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
.LFB277:
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
.LFB278:
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
	bne	.L181
	ldr	r0, [r7, #12]
	ldr	r1, [r7]
	ldr	r2, [r7, #24]
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L181
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #28]
	ldr	r2, [r7, #32]
	bl	_Z11hb_in_rangeIjEbT_S0_S0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L182
.L181:
	movs	r3, #1
	b	.L183
.L182:
	movs	r3, #0
.L183:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_Z12hb_in_rangesIjEbT_S0_S0_S0_S0_S0_S0_, .-_Z12hb_in_rangesIjEbT_S0_S0_S0_S0_S0_S0_
	.section	.text._Z14hb_bubble_sortI15hb_glyph_info_tEvPT_jPFiPKS1_S4_E,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z14hb_bubble_sortI15hb_glyph_info_tEvPT_jPFiPKS1_S4_E, %function
_Z14hb_bubble_sortI15hb_glyph_info_tEvPT_jPFiPKS1_S4_E:
	.fnstart
.LFB290:
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
.LFB295:
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
	bne	.L187
	b	.L186
.L187:
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	str	r3, [r7, #52]
.L193:
	movs	r3, #0
	str	r3, [r7, #48]
	movs	r3, #0
	str	r3, [r7, #44]
	b	.L189
.L192:
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
	beq	.L190
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
	beq	.L191
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
.L191:
	ldr	r3, [r7, #44]
	str	r3, [r7, #48]
.L190:
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	str	r3, [r7, #44]
.L189:
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bcc	.L192
	ldr	r3, [r7, #48]
	str	r3, [r7, #52]
	ldr	r3, [r7, #52]
	cmp	r3, #0
	bne	.L193
.L186:
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
	.hidden	_ZN11hb_buffer_t18merge_out_clustersEjj
	.hidden	_ZN11hb_buffer_t12swap_buffersEv
	.hidden	_ZN11hb_buffer_t12clear_outputEv
	.hidden	_ZN11hb_buffer_t14replace_glyphsEjjPKj
	.hidden	_ZN11hb_buffer_t12output_glyphEj
	.hidden	_ZN11hb_buffer_t10assert_varEjjPKc
	.hidden	_ZN11hb_buffer_t13make_room_forEjj
	.hidden	_hb_modified_combining_class
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
