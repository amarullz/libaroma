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
	.file	"hb-shape.cc"
	.section	.text._ZL7ISALPHAh,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL7ISALPHAh, %function
_ZL7ISALPHAh:
	.fnstart
.LFB32:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #96
	bls	.L2
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #122
	bls	.L3
.L2:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #64
	bls	.L4
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #90
	bhi	.L4
.L3:
	movs	r3, #1
	b	.L5
.L4:
	movs	r3, #0
.L5:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZL7ISALPHAh, .-_ZL7ISALPHAh
	.section	.text._ZL7ISALNUMh,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL7ISALNUMh, %function
_ZL7ISALNUMh:
	.fnstart
.LFB33:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #96
	bls	.L8
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #122
	bls	.L9
.L8:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #64
	bls	.L10
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #90
	bls	.L9
.L10:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L11
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L11
.L9:
	movs	r3, #1
	b	.L12
.L11:
	movs	r3, #0
.L12:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZL7ISALNUMh, .-_ZL7ISALNUMh
	.section	.text._ZL7ISSPACEh,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL7ISSPACEh, %function
_ZL7ISSPACEh:
	.fnstart
.LFB34:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L15
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #12
	beq	.L15
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L15
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #13
	beq	.L15
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #9
	beq	.L15
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #11
	bne	.L16
.L15:
	movs	r3, #1
	b	.L17
.L16:
	movs	r3, #0
.L17:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZL7ISSPACEh, .-_ZL7ISSPACEh
	.section	.text._ZL11parse_spacePPKcS0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL11parse_spacePPKcS0_, %function
_ZL11parse_spacePPKcS0_:
	.fnstart
.LFB150:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	b	.L20
.L23:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3]
.L20:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7]
	cmp	r2, r3
	bcs	.L21
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	_ZL7ISSPACEh(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L21
	movs	r3, #1
	b	.L22
.L21:
	movs	r3, #0
.L22:
	cmp	r3, #0
	bne	.L23
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZL11parse_spacePPKcS0_, .-_ZL11parse_spacePPKcS0_
	.section	.text._ZL10parse_charPPKcS0_c,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL10parse_charPPKcS0_c, %function
_ZL10parse_charPPKcS0_c:
	.fnstart
.LFB151:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strb	r3, [r7, #7]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_ZL11parse_spacePPKcS0_(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	beq	.L26
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	cmp	r2, r3
	beq	.L27
.L26:
	movs	r3, #0
	b	.L28
.L27:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3]
	movs	r3, #1
.L28:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZL10parse_charPPKcS0_c, .-_ZL10parse_charPPKcS0_c
	.section	.text._ZL10parse_uintPPKcS0_Pj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL10parse_uintPPKcS0_Pj, %function
_ZL10parse_uintPPKcS0_Pj:
	.fnstart
.LFB152:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #72
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	add	r3, r7, #16
	mov	r0, r3
	bl	_Z12ARRAY_LENGTHIcLj32EEjRAT0__KT_(PLT)
	mov	r3, r0
	subs	r3, r3, #1
	str	r3, [r7, #52]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	subs	r3, r2, r3
	str	r3, [r7, #56]
	add	r2, r7, #52
	add	r3, r7, #56
	mov	r0, r2
	mov	r1, r3
	bl	_Z3MINIjET_RKS0_S2_(PLT)
	str	r0, [r7, #68]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	add	r2, r7, #16
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #68]
	bl	strncpy(PLT)
	add	r2, r7, #16
	ldr	r3, [r7, #68]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	add	r3, r7, #16
	str	r3, [r7, #64]
	ldr	r3, [r7, #64]
	str	r3, [r7, #48]
	bl	__errno_location(PLT)
	mov	r3, r0
	movs	r2, #0
	str	r2, [r3]
	add	r3, r7, #48
	ldr	r0, [r7, #64]
	mov	r1, r3
	movs	r2, #0
	bl	strtol(PLT)
	mov	r3, r0
	str	r3, [r7, #60]
	bl	__errno_location(PLT)
	mov	r3, r0
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L30
	ldr	r3, [r7, #48]
	ldr	r2, [r7, #64]
	cmp	r2, r3
	bne	.L31
.L30:
	movs	r3, #0
	b	.L33
.L31:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #60]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #48]
	mov	r1, r3
	ldr	r3, [r7, #64]
	subs	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3]
	movs	r3, #1
.L33:
	mov	r0, r3
	adds	r7, r7, #72
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZL10parse_uintPPKcS0_Pj, .-_ZL10parse_uintPPKcS0_Pj
	.section	.rodata
	.align	2
.LC0:
	.ascii	"on\000"
	.align	2
.LC1:
	.ascii	"off\000"
	.section	.text._ZL10parse_boolPPKcS0_Pj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL10parse_boolPPKcS0_Pj, %function
_ZL10parse_boolPPKcS0_Pj:
	.fnstart
.LFB153:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_ZL11parse_spacePPKcS0_(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	b	.L35
.L38:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3]
.L35:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcs	.L36
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	_ZL7ISALPHAh(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L36
	movs	r3, #1
	b	.L37
.L36:
	movs	r3, #0
.L37:
	cmp	r3, #0
	bne	.L38
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7, #20]
	subs	r3, r2, r3
	cmp	r3, #2
	beq	.L39
	ldr	r0, [r7, #20]
	ldr	r3, .L45
.LPIC0:
	add	r3, pc
	mov	r1, r3
	movs	r2, #2
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L40
.L39:
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3]
	b	.L41
.L40:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7, #20]
	subs	r3, r2, r3
	cmp	r3, #3
	beq	.L42
	ldr	r0, [r7, #20]
	ldr	r3, .L45+4
.LPIC1:
	add	r3, pc
	mov	r1, r3
	movs	r2, #2
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L43
.L42:
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	b	.L41
.L43:
	movs	r3, #0
	b	.L44
.L41:
	movs	r3, #1
.L44:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L46:
	.align	2
.L45:
	.word	.LC0-(.LPIC0+4)
	.word	.LC1-(.LPIC1+4)
	.cantunwind
	.fnend
	.size	_ZL10parse_boolPPKcS0_Pj, .-_ZL10parse_boolPPKcS0_Pj
	.section	.text._ZL26parse_feature_value_prefixPPKcS0_P12hb_feature_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL26parse_feature_value_prefixPPKcS0_P12hb_feature_t, %function
_ZL26parse_feature_value_prefixPPKcS0_P12hb_feature_t:
	.fnstart
.LFB154:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	movs	r2, #45
	bl	_ZL10parse_charPPKcS0_c(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L48
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	b	.L49
.L48:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	movs	r2, #43
	bl	_ZL10parse_charPPKcS0_c(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #4]
.L49:
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZL26parse_feature_value_prefixPPKcS0_P12hb_feature_t, .-_ZL26parse_feature_value_prefixPPKcS0_P12hb_feature_t
	.section	.text._ZL17parse_feature_tagPPKcS0_P12hb_feature_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL17parse_feature_tagPPKcS0_P12hb_feature_t, %function
_ZL17parse_feature_tagPPKcS0_P12hb_feature_t:
	.fnstart
.LFB155:
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
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_ZL11parse_spacePPKcS0_(PLT)
	movs	r3, #0
	strb	r3, [r7, #23]
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcs	.L52
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #39
	beq	.L53
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #34
	bne	.L52
.L53:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldrb	r3, [r3]
	strb	r3, [r7, #23]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3]
.L52:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #16]
	b	.L54
.L57:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3]
.L54:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcs	.L55
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	_ZL7ISALNUMh(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L55
	movs	r3, #1
	b	.L56
.L55:
	movs	r3, #0
.L56:
	cmp	r3, #0
	bne	.L57
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	beq	.L58
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7, #16]
	subs	r3, r2, r3
	cmp	r3, #4
	ble	.L59
.L58:
	movs	r3, #0
	b	.L60
.L59:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7, #16]
	subs	r3, r2, r3
	ldr	r0, [r7, #16]
	mov	r1, r3
	bl	hb_tag_from_string(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L61
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7, #16]
	subs	r3, r2, r3
	cmp	r3, #4
	beq	.L62
	movs	r3, #0
	b	.L60
.L62:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	beq	.L63
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldrb	r2, [r7, #23]	@ zero_extendqisi2
	cmp	r2, r3
	beq	.L64
.L63:
	movs	r3, #0
	b	.L60
.L64:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3]
.L61:
	movs	r3, #1
.L60:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL17parse_feature_tagPPKcS0_P12hb_feature_t, .-_ZL17parse_feature_tagPPKcS0_P12hb_feature_t
	.section	.text._ZL21parse_feature_indicesPPKcS0_P12hb_feature_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL21parse_feature_indicesPPKcS0_P12hb_feature_t, %function
_ZL21parse_feature_indicesPPKcS0_P12hb_feature_t:
	.fnstart
.LFB156:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_ZL11parse_spacePPKcS0_(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	mov	r2, #-1
	str	r2, [r3, #12]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	movs	r2, #91
	bl	_ZL10parse_charPPKcS0_c(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L66
	movs	r3, #1
	b	.L67
.L66:
	ldr	r3, [r7, #4]
	adds	r3, r3, #8
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	mov	r2, r3
	bl	_ZL10parse_uintPPKcS0_Pj(PLT)
	mov	r3, r0
	strb	r3, [r7, #23]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	movs	r2, #58
	bl	_ZL10parse_charPPKcS0_c(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L68
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	mov	r2, r3
	bl	_ZL10parse_uintPPKcS0_Pj(PLT)
	b	.L69
.L68:
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L69
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
.L69:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	movs	r2, #93
	bl	_ZL10parse_charPPKcS0_c(PLT)
	mov	r3, r0
.L67:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZL21parse_feature_indicesPPKcS0_P12hb_feature_t, .-_ZL21parse_feature_indicesPPKcS0_P12hb_feature_t
	.section	.text._ZL27parse_feature_value_postfixPPKcS0_P12hb_feature_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL27parse_feature_value_postfixPPKcS0_P12hb_feature_t, %function
_ZL27parse_feature_value_postfixPPKcS0_P12hb_feature_t:
	.fnstart
.LFB157:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	movs	r2, #61
	bl	_ZL10parse_charPPKcS0_c(PLT)
	mov	r3, r0
	strb	r3, [r7, #23]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	mov	r2, r3
	bl	_ZL10parse_uintPPKcS0_Pj(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L71
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	mov	r2, r3
	bl	_ZL10parse_boolPPKcS0_Pj(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L72
.L71:
	movs	r3, #1
	b	.L73
.L72:
	movs	r3, #0
.L73:
	strb	r3, [r7, #22]
	ldrb	r3, [r7, #23]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L74
	ldrb	r3, [r7, #22]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L75
.L74:
	movs	r3, #1
	b	.L76
.L75:
	movs	r3, #0
.L76:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZL27parse_feature_value_postfixPPKcS0_P12hb_feature_t, .-_ZL27parse_feature_value_postfixPPKcS0_P12hb_feature_t
	.section	.text._ZL17parse_one_featurePPKcS0_P12hb_feature_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL17parse_one_featurePPKcS0_P12hb_feature_t, %function
_ZL17parse_one_featurePPKcS0_P12hb_feature_t:
	.fnstart
.LFB158:
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
	bl	_ZL26parse_feature_value_prefixPPKcS0_P12hb_feature_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L79
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	_ZL17parse_feature_tagPPKcS0_P12hb_feature_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L79
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	_ZL21parse_feature_indicesPPKcS0_P12hb_feature_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L79
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	_ZL27parse_feature_value_postfixPPKcS0_P12hb_feature_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L79
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_ZL11parse_spacePPKcS0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L79
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bne	.L79
	movs	r3, #1
	b	.L80
.L79:
	movs	r3, #0
.L80:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL17parse_one_featurePPKcS0_P12hb_feature_t, .-_ZL17parse_one_featurePPKcS0_P12hb_feature_t
	.section	.text.hb_feature_from_string,"ax",%progbits
	.align	2
	.global	hb_feature_from_string
	.thumb
	.thumb_func
	.type	hb_feature_from_string, %function
hb_feature_from_string:
	.fnstart
.LFB159:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #36
	sub	sp, sp, #36
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bge	.L83
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	strlen(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
.L83:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	add	r2, r2, r3
	add	r1, r7, #12
	add	r3, r7, #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	_ZL17parse_one_featurePPKcS0_P12hb_feature_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L84
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L85
	ldr	r3, [r7, #4]
	mov	r4, r3
	add	r3, r7, #16
	ldmia	r3, {r0, r1, r2, r3}
	stmia	r4, {r0, r1, r2, r3}
.L85:
	movs	r3, #1
	b	.L88
.L84:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L87
	ldr	r0, [r7, #4]
	movs	r1, #0
	movs	r2, #16
	bl	memset(PLT)
.L87:
	movs	r3, #0
.L88:
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	hb_feature_from_string, .-hb_feature_from_string
	.section	.rodata
	.align	2
.LC2:
	.ascii	"%u\000"
	.align	2
.LC3:
	.ascii	"len < ARRAY_LENGTH (s)\000"
	.align	2
.LC4:
	.ascii	"../../../libs/harfbuzz-ng/src/hb-shape.cc\000"
	.section	.text.hb_feature_to_string,"ax",%progbits
	.align	2
	.global	hb_feature_to_string
	.thumb
	.thumb_func
	.type	hb_feature_to_string, %function
hb_feature_to_string:
	.fnstart
.LFB160:
	@ args = 0, pretend = 0, frame = 176
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #180
	sub	sp, sp, #180
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L89
	movs	r3, #0
	str	r3, [r7, #144]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L92
	ldr	r3, [r7, #144]
	adds	r2, r3, #1
	str	r2, [r7, #144]
	add	r2, r7, #176
	add	r3, r3, r2
	movs	r2, #45
	strb	r2, [r3, #-160]
.L92:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #144]
	add	r1, r7, #16
	add	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	hb_tag_to_string(PLT)
	ldr	r3, [r7, #144]
	adds	r3, r3, #4
	str	r3, [r7, #144]
	b	.L93
.L95:
	ldr	r3, [r7, #144]
	subs	r3, r3, #1
	str	r3, [r7, #144]
.L93:
	ldr	r3, [r7, #144]
	cmp	r3, #0
	beq	.L94
	ldr	r3, [r7, #144]
	subs	r3, r3, #1
	add	r2, r7, #176
	add	r3, r3, r2
	ldrb	r3, [r3, #-160]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L95
.L94:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L96
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	cmp	r3, #-1
	beq	.L97
.L96:
	ldr	r3, [r7, #144]
	adds	r2, r3, #1
	str	r2, [r7, #144]
	add	r2, r7, #176
	add	r3, r3, r2
	movs	r2, #91
	strb	r2, [r3, #-160]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L98
	movs	r3, #0
	str	r3, [r7, #148]
	ldr	r3, [r7, #144]
	add	r2, r7, #16
	adds	r4, r2, r3
	add	r3, r7, #16
	mov	r0, r3
	bl	_Z12ARRAY_LENGTHIcLj128EEjRAT0__KT_(PLT)
	mov	r2, r0
	ldr	r3, [r7, #144]
	subs	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	mov	r0, r4
	mov	r1, r2
	ldr	r2, .L102
.LPIC2:
	add	r2, pc
	bl	snprintf(PLT)
	mov	r3, r0
	str	r3, [r7, #152]
	add	r2, r7, #148
	add	r3, r7, #152
	mov	r0, r2
	mov	r1, r3
	bl	_Z3MAXIiET_RKS0_S2_(PLT)
	mov	r3, r0
	ldr	r2, [r7, #144]
	add	r3, r3, r2
	str	r3, [r7, #144]
.L98:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	adds	r3, r3, #1
	cmp	r2, r3
	beq	.L99
	ldr	r3, [r7, #144]
	adds	r2, r3, #1
	str	r2, [r7, #144]
	add	r2, r7, #176
	add	r3, r3, r2
	movs	r2, #58
	strb	r2, [r3, #-160]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	cmp	r3, #-1
	beq	.L99
	movs	r3, #0
	str	r3, [r7, #156]
	ldr	r3, [r7, #144]
	add	r2, r7, #16
	adds	r4, r2, r3
	add	r3, r7, #16
	mov	r0, r3
	bl	_Z12ARRAY_LENGTHIcLj128EEjRAT0__KT_(PLT)
	mov	r2, r0
	ldr	r3, [r7, #144]
	subs	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	mov	r0, r4
	mov	r1, r2
	ldr	r2, .L102+4
.LPIC3:
	add	r2, pc
	bl	snprintf(PLT)
	mov	r3, r0
	str	r3, [r7, #160]
	add	r2, r7, #156
	add	r3, r7, #160
	mov	r0, r2
	mov	r1, r3
	bl	_Z3MAXIiET_RKS0_S2_(PLT)
	mov	r3, r0
	ldr	r2, [r7, #144]
	add	r3, r3, r2
	str	r3, [r7, #144]
.L99:
	ldr	r3, [r7, #144]
	adds	r2, r3, #1
	str	r2, [r7, #144]
	add	r2, r7, #176
	add	r3, r3, r2
	movs	r2, #93
	strb	r2, [r3, #-160]
.L97:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bls	.L100
	ldr	r3, [r7, #144]
	adds	r2, r3, #1
	str	r2, [r7, #144]
	add	r2, r7, #176
	add	r3, r3, r2
	movs	r2, #61
	strb	r2, [r3, #-160]
	movs	r3, #0
	str	r3, [r7, #164]
	ldr	r3, [r7, #144]
	add	r2, r7, #16
	adds	r4, r2, r3
	add	r3, r7, #16
	mov	r0, r3
	bl	_Z12ARRAY_LENGTHIcLj128EEjRAT0__KT_(PLT)
	mov	r2, r0
	ldr	r3, [r7, #144]
	subs	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r4
	mov	r1, r2
	ldr	r2, .L102+8
.LPIC4:
	add	r2, pc
	bl	snprintf(PLT)
	mov	r3, r0
	str	r3, [r7, #168]
	add	r2, r7, #164
	add	r3, r7, #168
	mov	r0, r2
	mov	r1, r3
	bl	_Z3MAXIiET_RKS0_S2_(PLT)
	mov	r3, r0
	ldr	r2, [r7, #144]
	add	r3, r3, r2
	str	r3, [r7, #144]
.L100:
	add	r3, r7, #16
	mov	r0, r3
	bl	_Z12ARRAY_LENGTHIcLj128EEjRAT0__KT_(PLT)
	mov	r2, r0
	ldr	r3, [r7, #144]
	cmp	r2, r3
	bhi	.L101
	ldr	r3, .L102+12
.LPIC5:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L102+16
.LPIC6:
	add	r3, pc
	mov	r1, r3
	movw	r2, #273
	ldr	r3, .L102+20
.LPIC7:
	add	r3, pc
	bl	__assert_fail(PLT)
.L101:
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	str	r3, [r7, #172]
	add	r2, r7, #144
	add	r3, r7, #172
	mov	r0, r2
	mov	r1, r3
	bl	_Z3MINIjET_RKS0_S2_(PLT)
	mov	r3, r0
	str	r3, [r7, #144]
	ldr	r3, [r7, #144]
	add	r2, r7, #16
	ldr	r0, [r7, #8]
	mov	r1, r2
	mov	r2, r3
	bl	memcpy(PLT)
	ldr	r3, [r7, #144]
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
.L89:
	adds	r7, r7, #180
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L103:
	.align	2
.L102:
	.word	.LC2-(.LPIC2+4)
	.word	.LC2-(.LPIC3+4)
	.word	.LC2-(.LPIC4+4)
	.word	.LC3-(.LPIC5+4)
	.word	.LC4-(.LPIC6+4)
	.word	_ZZ20hb_feature_to_stringE19__PRETTY_FUNCTION__-(.LPIC7+4)
	.fnend
	.size	hb_feature_to_string, .-hb_feature_to_string
	.section	.bss._ZL18static_shaper_list,"aw",%nobits
	.align	2
	.type	_ZL18static_shaper_list, %object
	.size	_ZL18static_shaper_list, 4
_ZL18static_shaper_list:
	.space	4
	.section	.text.hb_shape_list_shapers,"ax",%progbits
	.align	2
	.global	hb_shape_list_shapers
	.thumb
	.thumb_func
	.type	hb_shape_list_shapers, %function
hb_shape_list_shapers:
	.fnstart
.LFB161:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
.L105:
	ldr	r3, .L114
.LPIC8:
	add	r3, pc
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L106
	movs	r3, #1
	adds	r3, r3, #1
	mov	r0, r3
	movs	r1, #4
	bl	calloc(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L107
	ldr	r3, .L114+4
.LPIC9:
	add	r3, pc
	b	.L108
.L107:
	bl	_Z15_hb_shapers_getv(PLT)
	mov	r3, r0
	str	r3, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #8]
	b	.L109
.L110:
	ldr	r3, [r7, #8]
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	adds	r1, r2, r3
	ldr	r2, [r7, #8]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	str	r3, [r1]
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L109:
	movs	r2, #1
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bhi	.L110
	ldr	r3, [r7, #8]
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, .L114+8
.LPIC10:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L111
	ldr	r3, .L114+12
.LPIC11:
	add	r3, pc
	ldr	r2, [r7, #12]
	str	r2, [r3]
	movs	r3, #0
	b	.L112
.L111:
	movs	r3, #1
.L112:
	cmp	r3, #0
	beq	.L113
	ldr	r0, [r7, #12]
	bl	free(PLT)
	b	.L105
.L113:
.L106:
	ldr	r3, [r7, #12]
.L108:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L115:
	.align	2
.L114:
	.word	_ZL18static_shaper_list-(.LPIC8+4)
	.word	_ZZ21hb_shape_list_shapersE15nil_shaper_list-(.LPIC9+4)
	.word	_ZL18static_shaper_list-(.LPIC10+4)
	.word	_ZL18static_shaper_list-(.LPIC11+4)
	.fnend
	.size	hb_shape_list_shapers, .-hb_shape_list_shapers
	.section	.rodata
	.align	2
.LC5:
	.ascii	"buffer->content_type == HB_BUFFER_CONTENT_TYPE_UNIC"
	.ascii	"ODE\000"
	.section	.text.hb_shape_full,"ax",%progbits
	.align	2
	.global	hb_shape_full
	.thumb
	.thumb_func
	.type	hb_shape_full, %function
hb_shape_full:
	.fnstart
.LFB162:
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
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #88]
	cmp	r3, #0
	bne	.L117
	movs	r3, #1
	b	.L118
.L117:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #56]
	cmp	r3, #1
	beq	.L119
	ldr	r3, .L121
.LPIC12:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L121+4
.LPIC13:
	add	r3, pc
	mov	r1, r3
	mov	r2, #358
	ldr	r3, .L121+8
.LPIC14:
	add	r3, pc
	bl	__assert_fail(PLT)
.L119:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #52]
	ldr	r3, [r7, #8]
	adds	r3, r3, #60
	ldr	r1, [r7, #32]
	str	r1, [sp]
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	hb_shape_plan_create_cached(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7]
	str	r3, [sp]
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	bl	hb_shape_plan_execute(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r0, [r7, #20]
	bl	hb_shape_plan_destroy(PLT)
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L120
	ldr	r3, [r7, #8]
	movs	r2, #2
	str	r2, [r3, #56]
.L120:
	ldr	r3, [r7, #16]
.L118:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L122:
	.align	2
.L121:
	.word	.LC5-(.LPIC12+4)
	.word	.LC4-(.LPIC13+4)
	.word	_ZZ13hb_shape_fullE19__PRETTY_FUNCTION__-(.LPIC14+4)
	.fnend
	.size	hb_shape_full, .-hb_shape_full
	.section	.text.hb_shape,"ax",%progbits
	.align	2
	.global	hb_shape
	.thumb
	.thumb_func
	.type	hb_shape, %function
hb_shape:
	.fnstart
.LFB163:
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
	str	r3, [r7]
	movs	r3, #0
	str	r3, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	hb_shape_full(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_shape, .-hb_shape
	.section	.text._Z3MINIjET_RKS0_S2_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z3MINIjET_RKS0_S2_, %function
_Z3MINIjET_RKS0_S2_:
	.fnstart
.LFB165:
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
	bcs	.L125
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	b	.L126
.L125:
	ldr	r3, [r7]
	ldr	r3, [r3]
.L126:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_Z3MINIjET_RKS0_S2_, .-_Z3MINIjET_RKS0_S2_
	.section	.text._Z12ARRAY_LENGTHIcLj32EEjRAT0__KT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z12ARRAY_LENGTHIcLj32EEjRAT0__KT_, %function
_Z12ARRAY_LENGTHIcLj32EEjRAT0__KT_:
	.fnstart
.LFB171:
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
	.size	_Z12ARRAY_LENGTHIcLj32EEjRAT0__KT_, .-_Z12ARRAY_LENGTHIcLj32EEjRAT0__KT_
	.section	.text._Z12ARRAY_LENGTHIcLj128EEjRAT0__KT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z12ARRAY_LENGTHIcLj128EEjRAT0__KT_, %function
_Z12ARRAY_LENGTHIcLj128EEjRAT0__KT_:
	.fnstart
.LFB172:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #128
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_Z12ARRAY_LENGTHIcLj128EEjRAT0__KT_, .-_Z12ARRAY_LENGTHIcLj128EEjRAT0__KT_
	.section	.text._Z3MAXIiET_RKS0_S2_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z3MAXIiET_RKS0_S2_, %function
_Z3MAXIiET_RKS0_S2_:
	.fnstart
.LFB173:
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
	ble	.L133
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	b	.L134
.L133:
	ldr	r3, [r7]
	ldr	r3, [r3]
.L134:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_Z3MAXIiET_RKS0_S2_, .-_Z3MAXIiET_RKS0_S2_
	.section	.rodata._ZZ20hb_feature_to_stringE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZ20hb_feature_to_stringE19__PRETTY_FUNCTION__, %object
	.size	_ZZ20hb_feature_to_stringE19__PRETTY_FUNCTION__, 62
_ZZ20hb_feature_to_stringE19__PRETTY_FUNCTION__:
	.ascii	"void hb_feature_to_string(hb_feature_t*, char*, uns"
	.ascii	"igned int)\000"
	.section	.bss._ZZ21hb_shape_list_shapersE15nil_shaper_list,"aw",%nobits
	.align	2
	.type	_ZZ21hb_shape_list_shapersE15nil_shaper_list, %object
	.size	_ZZ21hb_shape_list_shapersE15nil_shaper_list, 4
_ZZ21hb_shape_list_shapersE15nil_shaper_list:
	.space	4
	.section	.rodata._ZZ13hb_shape_fullE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZ13hb_shape_fullE19__PRETTY_FUNCTION__, %object
	.size	_ZZ13hb_shape_fullE19__PRETTY_FUNCTION__, 105
_ZZ13hb_shape_fullE19__PRETTY_FUNCTION__:
	.ascii	"hb_bool_t hb_shape_full(hb_font_t*, hb_buffer_t*, c"
	.ascii	"onst hb_feature_t*, unsigned int, const char* const"
	.ascii	"*)\000"
	.hidden	_Z15_hb_shapers_getv
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
