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
	.file	"hb-common.cc"
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
	beq	.L2
	mov	r0, #-1
	ldr	r1, [r7]
	bl	__aeabi_uidiv(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bhi	.L2
	movs	r3, #1
	b	.L3
.L2:
	movs	r3, #0
.L3:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZL30_hb_unsigned_int_mul_overflowsjj, .-_ZL30_hb_unsigned_int_mul_overflowsjj
	.section	.text._ZL7TOLOWERh,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL7TOLOWERh, %function
_ZL7TOLOWERh:
	.fnstart
.LFB36:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #64
	bls	.L6
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #90
	bhi	.L6
	ldrb	r3, [r7, #7]
	adds	r3, r3, #32
	uxtb	r3, r3
	b	.L7
.L6:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
.L7:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZL7TOLOWERh, .-_ZL7TOLOWERh
	.section	.text._ZN10hb_mutex_t4lockEv,"axG",%progbits,_ZN10hb_mutex_t4lockEv,comdat
	.align	2
	.weak	_ZN10hb_mutex_t4lockEv
	.thumb
	.thumb_func
	.type	_ZN10hb_mutex_t4lockEv, %function
_ZN10hb_mutex_t4lockEv:
	.fnstart
.LFB60:
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
	.size	_ZN10hb_mutex_t4lockEv, .-_ZN10hb_mutex_t4lockEv
	.section	.text._ZN10hb_mutex_t6unlockEv,"axG",%progbits,_ZN10hb_mutex_t6unlockEv,comdat
	.align	2
	.weak	_ZN10hb_mutex_t6unlockEv
	.thumb
	.thumb_func
	.type	_ZN10hb_mutex_t6unlockEv, %function
_ZN10hb_mutex_t6unlockEv:
	.fnstart
.LFB61:
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
	.size	_ZN10hb_mutex_t6unlockEv, .-_ZN10hb_mutex_t6unlockEv
	.section	.text._ZNK20hb_user_data_array_t19hb_user_data_item_teqEP18hb_user_data_key_t,"axG",%progbits,_ZNK20hb_user_data_array_t19hb_user_data_item_teqEP18hb_user_data_key_t,comdat
	.align	2
	.weak	_ZNK20hb_user_data_array_t19hb_user_data_item_teqEP18hb_user_data_key_t
	.thumb
	.thumb_func
	.type	_ZNK20hb_user_data_array_t19hb_user_data_item_teqEP18hb_user_data_key_t, %function
_ZNK20hb_user_data_array_t19hb_user_data_item_teqEP18hb_user_data_key_t:
	.fnstart
.LFB68:
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
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNK20hb_user_data_array_t19hb_user_data_item_teqEP18hb_user_data_key_t, .-_ZNK20hb_user_data_array_t19hb_user_data_item_teqEP18hb_user_data_key_t
	.section	.text._ZNK20hb_user_data_array_t19hb_user_data_item_teqERS0_,"axG",%progbits,_ZNK20hb_user_data_array_t19hb_user_data_item_teqERS0_,comdat
	.align	2
	.weak	_ZNK20hb_user_data_array_t19hb_user_data_item_teqERS0_
	.thumb
	.thumb_func
	.type	_ZNK20hb_user_data_array_t19hb_user_data_item_teqERS0_, %function
_ZNK20hb_user_data_array_t19hb_user_data_item_teqERS0_:
	.fnstart
.LFB69:
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
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNK20hb_user_data_array_t19hb_user_data_item_teqERS0_, .-_ZNK20hb_user_data_array_t19hb_user_data_item_teqERS0_
	.section	.text._ZN20hb_user_data_array_t19hb_user_data_item_t6finishEv,"axG",%progbits,_ZN20hb_user_data_array_t19hb_user_data_item_t6finishEv,comdat
	.align	2
	.weak	_ZN20hb_user_data_array_t19hb_user_data_item_t6finishEv
	.thumb
	.thumb_func
	.type	_ZN20hb_user_data_array_t19hb_user_data_item_t6finishEv, %function
_ZN20hb_user_data_array_t19hb_user_data_item_t6finishEv:
	.fnstart
.LFB70:
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
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L15
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #4]
	mov	r0, r2
	blx	r3
.L15:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN20hb_user_data_array_t19hb_user_data_item_t6finishEv, .-_ZN20hb_user_data_array_t19hb_user_data_item_t6finishEv
	.hidden	_hb_options
	.global	_hb_options
	.section	.bss._hb_options,"aw",%nobits
	.align	2
	.type	_hb_options, %object
	.size	_hb_options, 4
_hb_options:
	.space	4
	.section	.rodata
	.align	2
.LC0:
	.ascii	"HB_OPTIONS\000"
	.align	2
.LC1:
	.ascii	"uniscribe-bug-compatible\000"
	.section	.text._Z16_hb_options_initv,"ax",%progbits
	.align	2
	.global	_Z16_hb_options_initv
	.hidden	_Z16_hb_options_initv
	.thumb
	.thumb_func
	.type	_Z16_hb_options_initv, %function
_Z16_hb_options_initv:
	.fnstart
.LFB82:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	movs	r3, #0
	str	r3, [r7]
	ldrb	r3, [r7]
	orr	r3, r3, #1
	strb	r3, [r7]
	ldr	r3, .L20
.LPIC0:
	add	r3, pc
	mov	r0, r3
	bl	getenv(PLT)
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L18
	ldr	r0, [r7, #4]
	ldr	r3, .L20+4
.LPIC1:
	add	r3, pc
	mov	r1, r3
	bl	strstr(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L18
	movs	r3, #1
	b	.L19
.L18:
	movs	r3, #0
.L19:
	and	r3, r3, #1
	uxtb	r2, r3
	ldrb	r3, [r7]
	bfi	r3, r2, #1, #1
	strb	r3, [r7]
	ldr	r3, .L20+8
.LPIC2:
	add	r3, pc
	ldr	r2, [r7]
	str	r2, [r3]
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L21:
	.align	2
.L20:
	.word	.LC0-(.LPIC0+4)
	.word	.LC1-(.LPIC1+4)
	.word	_hb_options-(.LPIC2+4)
	.cantunwind
	.fnend
	.size	_Z16_hb_options_initv, .-_Z16_hb_options_initv
	.section	.text.hb_tag_from_string,"ax",%progbits
	.align	2
	.global	hb_tag_from_string
	.thumb
	.thumb_func
	.type	hb_tag_from_string, %function
hb_tag_from_string:
	.fnstart
.LFB83:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L23
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L23
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L24
.L23:
	movs	r3, #0
	b	.L33
.L24:
	ldr	r3, [r7]
	cmp	r3, #0
	blt	.L26
	ldr	r3, [r7]
	cmp	r3, #4
	ble	.L27
.L26:
	movs	r3, #4
	str	r3, [r7]
.L27:
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L28
.L30:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	ldrb	r2, [r3]	@ zero_extendqisi2
	add	r1, r7, #8
	ldr	r3, [r7, #12]
	add	r3, r3, r1
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L28:
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bls	.L29
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L30
.L29:
	b	.L31
.L32:
	add	r2, r7, #8
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	movs	r2, #32
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L31:
	ldr	r3, [r7, #12]
	cmp	r3, #3
	bls	.L32
	add	r3, r7, #8
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	add	r3, r7, #8
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	add	r3, r7, #8
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	add	r3, r7, #8
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
.L33:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	hb_tag_from_string, .-hb_tag_from_string
	.section	.text.hb_tag_to_string,"ax",%progbits
	.align	2
	.global	hb_tag_to_string
	.thumb
	.thumb_func
	.type	hb_tag_to_string, %function
hb_tag_to_string:
	.fnstart
.LFB84:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	lsrs	r3, r3, #24
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3]
	ldr	r3, [r7]
	adds	r3, r3, #1
	ldr	r2, [r7, #4]
	lsrs	r2, r2, #16
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7]
	adds	r3, r3, #2
	ldr	r2, [r7, #4]
	lsrs	r2, r2, #8
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7]
	adds	r3, r3, #3
	ldr	r2, [r7, #4]
	uxtb	r2, r2
	strb	r2, [r3]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	hb_tag_to_string, .-hb_tag_to_string
	.section	.text.hb_direction_from_string,"ax",%progbits
	.align	2
	.global	hb_direction_from_string
	.thumb
	.thumb_func
	.type	hb_direction_from_string, %function
hb_direction_from_string:
	.fnstart
.LFB85:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L36
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L36
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L37
.L36:
	movs	r3, #0
	b	.L38
.L37:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	_ZL7TOLOWERh(PLT)
	mov	r3, r0
	strb	r3, [r7, #11]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L39
.L41:
	ldr	r3, .L42
.LPIC3:
	add	r3, pc
	ldr	r2, [r7, #12]
	ldrb	r3, [r3, r2, lsl #2]	@ zero_extendqisi2
	ldrb	r2, [r7, #11]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L40
	ldr	r3, [r7, #12]
	adds	r3, r3, #4
	b	.L38
.L40:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L39:
	ldr	r3, .L42+4
.LPIC4:
	add	r3, pc
	mov	r0, r3
	bl	_Z12ARRAY_LENGTHIA4_cLj4EEjRAT0__KT_(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	cmp	r2, r3
	ite	hi
	movhi	r3, #1
	movls	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L41
	movs	r3, #0
.L38:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L43:
	.align	2
.L42:
	.word	_ZL17direction_strings-(.LPIC3+4)
	.word	_ZL17direction_strings-(.LPIC4+4)
	.cantunwind
	.fnend
	.size	hb_direction_from_string, .-hb_direction_from_string
	.section	.rodata
	.align	2
.LC2:
	.ascii	"invalid\000"
	.section	.text.hb_direction_to_string,"ax",%progbits
	.align	2
	.global	hb_direction_to_string
	.thumb
	.thumb_func
	.type	hb_direction_to_string, %function
hb_direction_to_string:
	.fnstart
.LFB86:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	subs	r3, r3, #4
	mov	r4, r3
	ldr	r3, .L47
.LPIC5:
	add	r3, pc
	mov	r0, r3
	bl	_Z12ARRAY_LENGTHIA4_cLj4EEjRAT0__KT_(PLT)
	mov	r3, r0
	cmp	r4, r3
	ite	cc
	movcc	r3, #1
	movcs	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L45
	ldr	r3, [r7, #4]
	subs	r3, r3, #4
	lsls	r2, r3, #2
	ldr	r3, .L47+4
.LPIC6:
	add	r3, pc
	add	r3, r3, r2
	b	.L46
.L45:
	ldr	r3, .L47+8
.LPIC7:
	add	r3, pc
.L46:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L48:
	.align	2
.L47:
	.word	_ZL17direction_strings-(.LPIC5+4)
	.word	_ZL17direction_strings-(.LPIC6+4)
	.word	.LC2-(.LPIC7+4)
	.cantunwind
	.fnend
	.size	hb_direction_to_string, .-hb_direction_to_string
	.section	.text._ZL10lang_equalPK18hb_language_impl_tPKv,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL10lang_equalPK18hb_language_impl_tPKv, %function
_ZL10lang_equalPK18hb_language_impl_tPKv:
	.fnstart
.LFB87:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7]
	str	r3, [r7, #8]
	b	.L50
.L52:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L50:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L51
	ldr	r3, [r7, #12]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r1, .L54
.LPIC8:
	add	r1, pc
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	cmp	r2, r3
	beq	.L52
.L51:
	ldr	r3, [r7, #12]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r1, .L54+4
.LPIC9:
	add	r1, pc
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	cmp	r2, r3
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L55:
	.align	2
.L54:
	.word	_ZL9canon_map-(.LPIC8+4)
	.word	_ZL9canon_map-(.LPIC9+4)
	.cantunwind
	.fnend
	.size	_ZL10lang_equalPK18hb_language_impl_tPKv, .-_ZL10lang_equalPK18hb_language_impl_tPKv
	.section	.text._ZNK18hb_language_item_teqEPKc,"axG",%progbits,_ZNK18hb_language_item_teqEPKc,comdat
	.align	2
	.weak	_ZNK18hb_language_item_teqEPKc
	.thumb
	.thumb_func
	.type	_ZNK18hb_language_item_teqEPKc, %function
_ZNK18hb_language_item_teqEPKc:
	.fnstart
.LFB88:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZL10lang_equalPK18hb_language_impl_tPKv(PLT)
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
	.cantunwind
	.fnend
	.size	_ZNK18hb_language_item_teqEPKc, .-_ZNK18hb_language_item_teqEPKc
	.section	.text._ZN18hb_language_item_taSEPKc,"axG",%progbits,_ZN18hb_language_item_taSEPKc,comdat
	.align	2
	.weak	_ZN18hb_language_item_taSEPKc
	.thumb
	.thumb_func
	.type	_ZN18hb_language_item_taSEPKc, %function
_ZN18hb_language_item_taSEPKc:
	.fnstart
.LFB89:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7]
	bl	strdup(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #12]
	b	.L59
.L60:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r2, .L62
.LPIC10:
	add	r2, pc
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	ldr	r3, [r7, #12]
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L59:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L60
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L63:
	.align	2
.L62:
	.word	_ZL9canon_map-(.LPIC10+4)
	.cantunwind
	.fnend
	.size	_ZN18hb_language_item_taSEPKc, .-_ZN18hb_language_item_taSEPKc
	.section	.bss._ZL5langs,"aw",%nobits
	.align	2
	.type	_ZL5langs, %object
	.size	_ZL5langs, 4
_ZL5langs:
	.space	4
	.section	.text._ZL19lang_find_or_insertPKc,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL19lang_find_or_insertPKc, %function
_ZL19lang_find_or_insertPKc:
	.fnstart
.LFB91:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
.L65:
	ldr	r3, .L74
.LPIC11:
	add	r3, pc
	ldr	r3, [r3]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	str	r3, [r7, #20]
	b	.L66
.L69:
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #4]
	bl	_ZNK18hb_language_item_teqEPKc(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L67
	ldr	r3, [r7, #20]
	b	.L68
.L67:
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	str	r3, [r7, #20]
.L66:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L69
	movs	r0, #1
	movs	r1, #8
	bl	calloc(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L70
	movs	r3, #0
	b	.L68
.L70:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #16]
	str	r2, [r3]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	bl	_ZN18hb_language_item_taSEPKc(PLT)
	ldr	r3, .L74+4
.LPIC12:
	add	r3, pc
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bne	.L71
	ldr	r3, .L74+8
.LPIC13:
	add	r3, pc
	ldr	r2, [r7, #12]
	str	r2, [r3]
	movs	r3, #0
	b	.L72
.L71:
	movs	r3, #1
.L72:
	cmp	r3, #0
	beq	.L73
	ldr	r0, [r7, #12]
	bl	free(PLT)
	b	.L65
.L73:
	ldr	r3, [r7, #12]
.L68:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L75:
	.align	2
.L74:
	.word	_ZL5langs-(.LPIC11+4)
	.word	_ZL5langs-(.LPIC12+4)
	.word	_ZL5langs-(.LPIC13+4)
	.cantunwind
	.fnend
	.size	_ZL19lang_find_or_insertPKc, .-_ZL19lang_find_or_insertPKc
	.section	.text.hb_language_from_string,"ax",%progbits
	.align	2
	.global	hb_language_from_string
	.thumb
	.thumb_func
	.type	hb_language_from_string, %function
hb_language_from_string:
	.fnstart
.LFB92:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #80
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L77
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L77
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L78
.L77:
	movs	r3, #0
	b	.L83
.L78:
	ldr	r3, [r7]
	cmp	r3, #0
	blt	.L80
	movs	r3, #64
	subs	r3, r3, #1
	str	r3, [r7, #72]
	mov	r2, r7
	add	r3, r7, #72
	mov	r0, r2
	mov	r1, r3
	bl	_Z3MINIiET_RKS0_S2_(PLT)
	mov	r3, r0
	str	r3, [r7]
	ldr	r3, [r7]
	add	r2, r7, #8
	mov	r0, r2
	ldr	r1, [r7, #4]
	mov	r2, r3
	bl	memcpy(PLT)
	ldr	r3, [r7]
	add	r2, r7, #80
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3, #-72]
	add	r3, r7, #8
	str	r3, [r7, #4]
.L80:
	ldr	r0, [r7, #4]
	bl	_ZL19lang_find_or_insertPKc(PLT)
	mov	r3, r0
	str	r3, [r7, #76]
	ldr	r3, [r7, #76]
	cmp	r3, #0
	beq	.L81
	ldr	r3, [r7, #76]
	ldr	r3, [r3, #4]
	b	.L82
.L81:
	movs	r3, #0
.L82:
.L83:
	mov	r0, r3
	adds	r7, r7, #80
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	hb_language_from_string, .-hb_language_from_string
	.section	.text.hb_language_to_string,"ax",%progbits
	.align	2
	.global	hb_language_to_string
	.thumb
	.thumb_func
	.type	hb_language_to_string, %function
hb_language_to_string:
	.fnstart
.LFB93:
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
	.size	hb_language_to_string, .-hb_language_to_string
	.section	.text.hb_language_get_default,"ax",%progbits
	.align	2
	.global	hb_language_get_default
	.thumb
	.thumb_func
	.type	hb_language_get_default, %function
hb_language_get_default:
	.fnstart
.LFB94:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	ldr	r3, .L89
.LPIC14:
	add	r3, pc
	ldr	r3, [r3]
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L87
	movs	r0, #0
	movs	r1, #0
	bl	setlocale(PLT)
	mov	r3, r0
	mov	r0, r3
	mov	r1, #-1
	bl	hb_language_from_string(PLT)
	mov	r3, r0
	str	r3, [r7, #4]
	ldr	r3, .L89+4
.LPIC15:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L87
	ldr	r3, .L89+8
.LPIC16:
	add	r3, pc
	ldr	r2, [r7, #4]
	str	r2, [r3]
.L87:
	ldr	r3, .L89+12
.LPIC17:
	add	r3, pc
	ldr	r3, [r3]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L90:
	.align	2
.L89:
	.word	_ZZ23hb_language_get_defaultE16default_language-(.LPIC14+4)
	.word	_ZZ23hb_language_get_defaultE16default_language-(.LPIC15+4)
	.word	_ZZ23hb_language_get_defaultE16default_language-(.LPIC16+4)
	.word	_ZZ23hb_language_get_defaultE16default_language-(.LPIC17+4)
	.fnend
	.size	hb_language_get_default, .-hb_language_get_default
	.section	.text.hb_script_from_iso15924_tag,"ax",%progbits
	.align	2
	.global	hb_script_from_iso15924_tag
	.thumb
	.thumb_func
	.type	hb_script_from_iso15924_tag, %function
hb_script_from_iso15924_tag:
	.fnstart
.LFB95:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L92
	movs	r3, #0
	b	.L93
.L92:
	ldr	r3, [r7, #4]
	and	r3, r3, #-538976289
	orr	r3, r3, #2097184
	orr	r3, r3, #8192
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	movw	r2, #24931
	movt	r2, 20833
	cmp	r3, r2
	beq	.L95
	movw	r2, #24931
	movt	r2, 20833
	cmp	r3, r2
	bhi	.L96
	movw	r2, #29798
	movt	r2, 19553
	cmp	r3, r2
	beq	.L97
	movw	r2, #29799
	movt	r2, 19553
	cmp	r3, r2
	beq	.L98
	movw	r2, #29299
	movt	r2, 17273
	cmp	r3, r2
	beq	.L99
	b	.L94
.L96:
	movw	r2, #29285
	movt	r2, 21369
	cmp	r3, r2
	beq	.L100
	movw	r2, #29285
	movt	r2, 21369
	cmp	r3, r2
	bhi	.L101
	movw	r2, #24937
	movt	r2, 20833
	cmp	r3, r2
	beq	.L102
	b	.L94
.L101:
	movw	r2, #29290
	movt	r2, 21369
	cmp	r3, r2
	beq	.L103
	movw	r2, #29294
	movt	r2, 21369
	cmp	r3, r2
	beq	.L104
	b	.L94
.L102:
	movw	r3, #28264
	movt	r3, 23145
	b	.L93
.L95:
	movw	r3, #28788
	movt	r3, 17263
	b	.L93
.L99:
	movw	r3, #29292
	movt	r3, 17273
	b	.L93
.L97:
	movw	r3, #29806
	movt	r3, 19553
	b	.L93
.L98:
	movw	r3, #29806
	movt	r3, 19553
	b	.L93
.L100:
	movw	r3, #29283
	movt	r3, 21369
	b	.L93
.L103:
	movw	r3, #29283
	movt	r3, 21369
	b	.L93
.L104:
	movw	r3, #29283
	movt	r3, 21369
	b	.L93
.L94:
	ldr	r3, [r7, #4]
	and	r2, r3, #-522133280
	movw	r3, #24672
	movt	r3, 16480
	cmp	r2, r3
	bne	.L105
	ldr	r3, [r7, #4]
	b	.L93
.L105:
	movw	r3, #31354
	movt	r3, 23162
.L93:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	hb_script_from_iso15924_tag, .-hb_script_from_iso15924_tag
	.section	.text.hb_script_from_string,"ax",%progbits
	.align	2
	.global	hb_script_from_string
	.thumb
	.thumb_func
	.type	hb_script_from_string, %function
hb_script_from_string:
	.fnstart
.LFB96:
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
	bl	hb_tag_from_string(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	hb_script_from_iso15924_tag(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_script_from_string, .-hb_script_from_string
	.section	.text.hb_script_to_iso15924_tag,"ax",%progbits
	.align	2
	.global	hb_script_to_iso15924_tag
	.thumb
	.thumb_func
	.type	hb_script_to_iso15924_tag, %function
hb_script_to_iso15924_tag:
	.fnstart
.LFB97:
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
	.size	hb_script_to_iso15924_tag, .-hb_script_to_iso15924_tag
	.section	.text.hb_script_get_horizontal_direction,"ax",%progbits
	.align	2
	.global	hb_script_get_horizontal_direction
	.thumb
	.thumb_func
	.type	hb_script_get_horizontal_direction, %function
hb_script_get_horizontal_direction:
	.fnstart
.LFB98:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movw	r2, #29282
	movt	r2, 20065
	cmp	r3, r2
	beq	.L112
	movw	r2, #29282
	movt	r2, 20065
	cmp	r3, r2
	bhi	.L113
	movw	r2, #24946
	movt	r2, 19304
	cmp	r3, r2
	beq	.L112
	movw	r2, #24946
	movt	r2, 19304
	cmp	r3, r2
	bhi	.L114
	movw	r2, #29556
	movt	r2, 16758
	cmp	r3, r2
	beq	.L112
	movw	r2, #29556
	movt	r2, 16758
	cmp	r3, r2
	bhi	.L115
	movw	r2, #24930
	movt	r2, 16754
	cmp	r3, r2
	beq	.L112
	movw	r2, #28009
	movt	r2, 16754
	cmp	r3, r2
	beq	.L112
	b	.L111
.L115:
	movw	r2, #29300
	movt	r2, 17264
	cmp	r3, r2
	beq	.L112
	movw	r2, #25202
	movt	r2, 18533
	cmp	r3, r2
	beq	.L112
	b	.L111
.L114:
	movw	r2, #28265
	movt	r2, 19809
	cmp	r3, r2
	beq	.L112
	movw	r2, #28265
	movt	r2, 19809
	cmp	r3, r2
	bhi	.L116
	movw	r2, #25705
	movt	r2, 19577
	cmp	r3, r2
	beq	.L112
	movw	r2, #28260
	movt	r2, 19809
	cmp	r3, r2
	beq	.L112
	b	.L111
.L116:
	movw	r2, #29283
	movt	r2, 19813
	cmp	r3, r2
	beq	.L112
	movw	r2, #29295
	movt	r2, 19813
	cmp	r3, r2
	beq	.L112
	movw	r2, #28260
	movt	r2, 19813
	cmp	r3, r2
	beq	.L112
	b	.L111
.L113:
	movw	r2, #27760
	movt	r2, 20584
	cmp	r3, r2
	beq	.L112
	movw	r2, #27760
	movt	r2, 20584
	cmp	r3, r2
	bhi	.L117
	movw	r2, #27496
	movt	r2, 20338
	cmp	r3, r2
	beq	.L112
	movw	r2, #27496
	movt	r2, 20338
	cmp	r3, r2
	bhi	.L118
	movw	r2, #24948
	movt	r2, 20066
	cmp	r3, r2
	beq	.L112
	movw	r2, #28527
	movt	r2, 20075
	cmp	r3, r2
	beq	.L112
	b	.L111
.L118:
	movw	r2, #27757
	movt	r2, 20577
	cmp	r3, r2
	beq	.L112
	movw	r2, #27753
	movt	r2, 20584
	cmp	r3, r2
	beq	.L112
	b	.L111
.L117:
	movw	r2, #28018
	movt	r2, 21345
	cmp	r3, r2
	beq	.L112
	movw	r2, #28018
	movt	r2, 21345
	cmp	r3, r2
	bhi	.L119
	movw	r2, #28280
	movt	r2, 20584
	cmp	r3, r2
	beq	.L112
	movw	r2, #29801
	movt	r2, 20594
	cmp	r3, r2
	beq	.L112
	b	.L111
.L119:
	movw	r2, #29283
	movt	r2, 21369
	cmp	r3, r2
	beq	.L112
	movw	r2, #24929
	movt	r2, 21608
	cmp	r3, r2
	beq	.L112
	movw	r2, #29282
	movt	r2, 21345
	cmp	r3, r2
	bne	.L111
.L112:
	movs	r3, #5
	b	.L120
.L111:
	movs	r3, #4
.L120:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	hb_script_get_horizontal_direction, .-hb_script_get_horizontal_direction
	.section	.text._ZN20hb_user_data_array_t3setEP18hb_user_data_key_tPvPFvS2_Ei,"ax",%progbits
	.align	2
	.global	_ZN20hb_user_data_array_t3setEP18hb_user_data_key_tPvPFvS2_Ei
	.hidden	_ZN20hb_user_data_array_t3setEP18hb_user_data_key_tPvPFvS2_Ei
	.thumb
	.thumb_func
	.type	_ZN20hb_user_data_array_t3setEP18hb_user_data_key_tPvPFvS2_Ei, %function
_ZN20hb_user_data_array_t3setEP18hb_user_data_key_tPvPFvS2_Ei:
	.fnstart
.LFB99:
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
	cmp	r3, #0
	bne	.L122
	movs	r3, #0
	b	.L125
.L122:
	ldr	r3, [r7, #40]
	cmp	r3, #0
	beq	.L124
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L124
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L124
	ldr	r3, [r7, #12]
	adds	r2, r3, #4
	ldr	r3, [r7, #12]
	mov	r0, r2
	ldr	r1, [r7, #8]
	mov	r2, r3
	bl	_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE6removeIP18hb_user_data_key_tEEvT_RS2_(PLT)
	movs	r3, #1
	b	.L125
.L124:
	ldr	r3, [r7, #8]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	str	r3, [r7, #20]
	ldr	r3, [r7]
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	adds	r3, r3, #4
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #40]
	cmp	r2, #0
	ite	ne
	movne	r2, #1
	moveq	r2, #0
	uxtb	r2, r2
	str	r1, [sp]
	str	r2, [sp, #4]
	mov	r0, r3
	add	r3, r7, #16
	ldmia	r3, {r1, r2, r3}
	bl	_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE17replace_or_insertIS1_EEPS1_T_RS2_b(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	strb	r3, [r7, #31]
	ldrb	r3, [r7, #31]	@ zero_extendqisi2
.L125:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN20hb_user_data_array_t3setEP18hb_user_data_key_tPvPFvS2_Ei, .-_ZN20hb_user_data_array_t3setEP18hb_user_data_key_tPvPFvS2_Ei
	.section	.text._ZN20hb_user_data_array_t3getEP18hb_user_data_key_t,"ax",%progbits
	.align	2
	.global	_ZN20hb_user_data_array_t3getEP18hb_user_data_key_t
	.hidden	_ZN20hb_user_data_array_t3getEP18hb_user_data_key_t
	.thumb
	.thumb_func
	.type	_ZN20hb_user_data_array_t3getEP18hb_user_data_key_t, %function
_ZN20hb_user_data_array_t3getEP18hb_user_data_key_t:
	.fnstart
.LFB100:
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
	add	r3, r7, #12
	movs	r2, #0
	str	r2, [r3]
	adds	r3, r3, #4
	movs	r2, #0
	str	r2, [r3]
	adds	r3, r3, #4
	movs	r2, #0
	str	r2, [r3]
	adds	r3, r3, #4
	ldr	r3, [r7, #4]
	adds	r1, r3, #4
	ldr	r3, [r7, #4]
	add	r2, r7, #12
	mov	r0, r1
	ldr	r1, [r7]
	bl	_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4findIP18hb_user_data_key_tEEbT_PS1_RS2_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L127
	ldr	r3, [r7, #16]
	b	.L128
.L127:
	movs	r3, #0
.L128:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN20hb_user_data_array_t3getEP18hb_user_data_key_t, .-_ZN20hb_user_data_array_t3getEP18hb_user_data_key_t
	.section	.text.hb_version,"ax",%progbits
	.align	2
	.global	hb_version
	.thumb
	.thumb_func
	.type	hb_version, %function
hb_version:
	.fnstart
.LFB101:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #8]
	movs	r2, #9
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #37
	str	r2, [r3]
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	hb_version, .-hb_version
	.section	.rodata
	.align	2
.LC3:
	.ascii	"0.9.37\000"
	.section	.text.hb_version_string,"ax",%progbits
	.align	2
	.global	hb_version_string
	.thumb
	.thumb_func
	.type	hb_version_string, %function
hb_version_string:
	.fnstart
.LFB102:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L133
.LPIC18:
	add	r3, pc
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L134:
	.align	2
.L133:
	.word	.LC3-(.LPIC18+4)
	.cantunwind
	.fnend
	.size	hb_version_string, .-hb_version_string
	.section	.text.hb_version_atleast,"ax",%progbits
	.align	2
	.global	hb_version_atleast
	.thumb
	.thumb_func
	.type	hb_version_atleast, %function
hb_version_atleast:
	.fnstart
.LFB103:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	movw	r2, #10000
	mul	r2, r2, r3
	ldr	r3, [r7, #8]
	movs	r1, #100
	mul	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	add	r2, r2, r3
	movw	r3, #937
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
	.size	hb_version_atleast, .-hb_version_atleast
	.section	.text._Z12ARRAY_LENGTHIA4_cLj4EEjRAT0__KT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z12ARRAY_LENGTHIA4_cLj4EEjRAT0__KT_, %function
_Z12ARRAY_LENGTHIA4_cLj4EEjRAT0__KT_:
	.fnstart
.LFB108:
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
	.size	_Z12ARRAY_LENGTHIA4_cLj4EEjRAT0__KT_, .-_Z12ARRAY_LENGTHIA4_cLj4EEjRAT0__KT_
	.section	.text._Z3MINIiET_RKS0_S2_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z3MINIiET_RKS0_S2_, %function
_Z3MINIiET_RKS0_S2_:
	.fnstart
.LFB109:
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
	bge	.L140
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	b	.L141
.L140:
	ldr	r3, [r7]
	ldr	r3, [r3]
.L141:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_Z3MINIiET_RKS0_S2_, .-_Z3MINIiET_RKS0_S2_
	.section	.text._ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE6removeIP18hb_user_data_key_tEEvT_RS2_,"axG",%progbits,_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE6removeIP18hb_user_data_key_tEEvT_RS2_,comdat
	.align	2
	.weak	_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE6removeIP18hb_user_data_key_tEEvT_RS2_
	.thumb
	.thumb_func
	.type	_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE6removeIP18hb_user_data_key_tEEvT_RS2_, %function
_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE6removeIP18hb_user_data_key_tEEvT_RS2_:
	.fnstart
.LFB110:
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
	ldr	r0, [r7, #4]
	bl	_ZN10hb_mutex_t4lockEv(PLT)
	ldr	r3, [r7, #12]
	mov	r0, r3
	ldr	r1, [r7, #8]
	bl	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4findIP18hb_user_data_key_tEEPS1_T_(PLT)
	mov	r3, r0
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L144
	ldr	r2, [r7, #28]
	add	r3, r7, #16
	ldmia	r2, {r0, r1, r2}
	stmia	r3, {r0, r1, r2}
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	subs	r3, r3, #1
	mov	r0, r2
	mov	r1, r3
	bl	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EEixEj(PLT)
	mov	r2, r0
	ldr	r3, [r7, #28]
	ldmia	r2, {r0, r1, r2}
	stmia	r3, {r0, r1, r2}
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE3popEv(PLT)
	ldr	r0, [r7, #4]
	bl	_ZN10hb_mutex_t6unlockEv(PLT)
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN20hb_user_data_array_t19hb_user_data_item_t6finishEv(PLT)
	b	.L143
.L144:
	ldr	r0, [r7, #4]
	bl	_ZN10hb_mutex_t6unlockEv(PLT)
.L143:
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE6removeIP18hb_user_data_key_tEEvT_RS2_, .-_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE6removeIP18hb_user_data_key_tEEvT_RS2_
	.section	.text._ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE17replace_or_insertIS1_EEPS1_T_RS2_b,"axG",%progbits,_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE17replace_or_insertIS1_EEPS1_T_RS2_b,comdat
	.align	2
	.weak	_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE17replace_or_insertIS1_EEPS1_T_RS2_b
	.thumb
	.thumb_func
	.type	_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE17replace_or_insertIS1_EEPS1_T_RS2_b, %function
_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE17replace_or_insertIS1_EEPS1_T_RS2_b:
	.fnstart
.LFB111:
	@ args = 8, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #32
	sub	sp, sp, #32
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	mov	r0, r7
	stmia	r0, {r1, r2, r3}
	ldr	r0, [r7, #40]
	bl	_ZN10hb_mutex_t4lockEv(PLT)
	ldr	r3, [r7, #12]
	mov	r0, r3
	mov	r3, r7
	ldmia	r3, {r1, r2, r3}
	bl	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4findIS1_EEPS1_T_(PLT)
	mov	r3, r0
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L147
	ldrb	r3, [r7, #44]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L148
	ldr	r2, [r7, #28]
	add	r3, r7, #16
	ldmia	r2, {r0, r1, r2}
	stmia	r3, {r0, r1, r2}
	ldr	r3, [r7, #28]
	mov	r2, r7
	ldmia	r2, {r0, r1, r2}
	stmia	r3, {r0, r1, r2}
	ldr	r0, [r7, #40]
	bl	_ZN10hb_mutex_t6unlockEv(PLT)
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN20hb_user_data_array_t19hb_user_data_item_t6finishEv(PLT)
	b	.L150
.L148:
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r0, [r7, #40]
	bl	_ZN10hb_mutex_t6unlockEv(PLT)
	b	.L150
.L147:
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4pushEv(PLT)
	mov	r3, r0
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L151
	ldr	r3, [r7, #28]
	mov	r2, r7
	ldmia	r2, {r0, r1, r2}
	stmia	r3, {r0, r1, r2}
.L151:
	ldr	r0, [r7, #40]
	bl	_ZN10hb_mutex_t6unlockEv(PLT)
.L150:
	ldr	r3, [r7, #28]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE17replace_or_insertIS1_EEPS1_T_RS2_b, .-_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE17replace_or_insertIS1_EEPS1_T_RS2_b
	.section	.text._ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4findIP18hb_user_data_key_tEEbT_PS1_RS2_,"axG",%progbits,_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4findIP18hb_user_data_key_tEEbT_PS1_RS2_,comdat
	.align	2
	.weak	_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4findIP18hb_user_data_key_tEEbT_PS1_RS2_
	.thumb
	.thumb_func
	.type	_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4findIP18hb_user_data_key_tEEbT_PS1_RS2_, %function
_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4findIP18hb_user_data_key_tEEbT_PS1_RS2_:
	.fnstart
.LFB112:
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
	ldr	r0, [r7]
	bl	_ZN10hb_mutex_t4lockEv(PLT)
	ldr	r3, [r7, #12]
	mov	r0, r3
	ldr	r1, [r7, #8]
	bl	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4findIP18hb_user_data_key_tEEPS1_T_(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L154
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #20]
	ldmia	r2, {r0, r1, r2}
	stmia	r3, {r0, r1, r2}
.L154:
	ldr	r0, [r7]
	bl	_ZN10hb_mutex_t6unlockEv(PLT)
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
	.size	_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4findIP18hb_user_data_key_tEEbT_PS1_RS2_, .-_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4findIP18hb_user_data_key_tEEbT_PS1_RS2_
	.section	.text._ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EEixEj,"axG",%progbits,_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EEixEj,comdat
	.align	2
	.weak	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EEixEj
	.thumb
	.thumb_func
	.type	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EEixEj, %function
_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EEixEj:
	.fnstart
.LFB115:
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
	lsls	r3, r3, #1
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
	.size	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EEixEj, .-_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EEixEj
	.section	.text._ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE3popEv,"axG",%progbits,_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE3popEv,comdat
	.align	2
	.weak	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE3popEv
	.thumb
	.thumb_func
	.type	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE3popEv, %function
_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE3popEv:
	.fnstart
.LFB116:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	subs	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE3popEv, .-_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE3popEv
	.section	.text._ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4findIP18hb_user_data_key_tEEPS1_T_,"axG",%progbits,_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4findIP18hb_user_data_key_tEEPS1_T_,comdat
	.align	2
	.weak	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4findIP18hb_user_data_key_tEEPS1_T_
	.thumb
	.thumb_func
	.type	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4findIP18hb_user_data_key_tEEPS1_T_, %function
_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4findIP18hb_user_data_key_tEEPS1_T_:
	.fnstart
.LFB117:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L160
.L163:
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #8]
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZNK20hb_user_data_array_t19hb_user_data_item_teqEP18hb_user_data_key_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L161
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #8]
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	b	.L162
.L161:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L160:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bhi	.L163
	movs	r3, #0
.L162:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4findIP18hb_user_data_key_tEEPS1_T_, .-_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4findIP18hb_user_data_key_tEEPS1_T_
	.section	.text._ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4findIS1_EEPS1_T_,"axG",%progbits,_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4findIS1_EEPS1_T_,comdat
	.align	2
	.weak	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4findIS1_EEPS1_T_
	.thumb
	.thumb_func
	.type	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4findIS1_EEPS1_T_, %function
_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4findIS1_EEPS1_T_:
	.fnstart
.LFB118:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	mov	r0, r7
	stmia	r0, {r1, r2, r3}
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L165
.L168:
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #8]
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r2, r1, r3
	mov	r3, r7
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK20hb_user_data_array_t19hb_user_data_item_teqERS0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L166
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #8]
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	b	.L167
.L166:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L165:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bhi	.L168
	movs	r3, #0
.L167:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4findIS1_EEPS1_T_, .-_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4findIS1_EEPS1_T_
	.section	.text._ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4pushEv,"axG",%progbits,_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4pushEv,comdat
	.align	2
	.weak	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4pushEv
	.thumb
	.thumb_func
	.type	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4pushEv, %function
_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4pushEv:
	.fnstart
.LFB119:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L170
	ldr	r3, [r7, #4]
	add	r2, r3, #12
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	mov	r0, r3
	bl	_Z12ARRAY_LENGTHIN20hb_user_data_array_t19hb_user_data_item_tELj2EEjRAT0__KT_(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
.L170:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bcs	.L171
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	adds	r0, r2, #1
	ldr	r3, [r7, #4]
	str	r0, [r3]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	b	.L172
.L171:
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
	bne	.L173
	ldr	r0, [r7, #16]
	movs	r1, #12
	bl	calloc(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L174
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r0, [r7, #20]
	mov	r2, r3
	bl	memcpy(PLT)
	b	.L174
.L173:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bhi	.L175
	ldr	r0, [r7, #16]
	movs	r1, #12
	bl	_ZL30_hb_unsigned_int_mul_overflowsjj(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L176
.L175:
	movs	r3, #1
	b	.L177
.L176:
	movs	r3, #0
.L177:
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #15]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L174
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #8]
	ldr	r2, [r7, #16]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r0, r1
	mov	r1, r3
	bl	realloc(PLT)
	str	r0, [r7, #20]
.L174:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L178
	movs	r3, #0
	b	.L172
.L178:
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
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
.L172:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4pushEv, .-_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4pushEv
	.section	.text._Z12ARRAY_LENGTHIN20hb_user_data_array_t19hb_user_data_item_tELj2EEjRAT0__KT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z12ARRAY_LENGTHIN20hb_user_data_array_t19hb_user_data_item_tELj2EEjRAT0__KT_, %function
_Z12ARRAY_LENGTHIN20hb_user_data_array_t19hb_user_data_item_tELj2EEjRAT0__KT_:
	.fnstart
.LFB120:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #2
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_Z12ARRAY_LENGTHIN20hb_user_data_array_t19hb_user_data_item_tELj2EEjRAT0__KT_, .-_Z12ARRAY_LENGTHIN20hb_user_data_array_t19hb_user_data_item_tELj2EEjRAT0__KT_
	.section	.rodata._ZL17direction_strings,"a",%progbits
	.align	2
	.type	_ZL17direction_strings, %object
	.size	_ZL17direction_strings, 16
_ZL17direction_strings:
	.ascii	"ltr\000"
	.ascii	"rtl\000"
	.ascii	"ttb\000"
	.ascii	"btt\000"
	.section	.rodata._ZL9canon_map,"a",%progbits
	.align	2
	.type	_ZL9canon_map, %object
	.size	_ZL9canon_map, 256
_ZL9canon_map:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	45
	.byte	0
	.byte	0
	.byte	48
	.byte	49
	.byte	50
	.byte	51
	.byte	52
	.byte	53
	.byte	54
	.byte	55
	.byte	56
	.byte	57
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	45
	.byte	97
	.byte	98
	.byte	99
	.byte	100
	.byte	101
	.byte	102
	.byte	103
	.byte	104
	.byte	105
	.byte	106
	.byte	107
	.byte	108
	.byte	109
	.byte	110
	.byte	111
	.byte	112
	.byte	113
	.byte	114
	.byte	115
	.byte	116
	.byte	117
	.byte	118
	.byte	119
	.byte	120
	.byte	121
	.byte	122
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	45
	.byte	0
	.byte	97
	.byte	98
	.byte	99
	.byte	100
	.byte	101
	.byte	102
	.byte	103
	.byte	104
	.byte	105
	.byte	106
	.byte	107
	.byte	108
	.byte	109
	.byte	110
	.byte	111
	.byte	112
	.byte	113
	.byte	114
	.byte	115
	.byte	116
	.byte	117
	.byte	118
	.byte	119
	.byte	120
	.byte	121
	.byte	122
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.space	128
	.section	.bss._ZZ23hb_language_get_defaultE16default_language,"aw",%nobits
	.align	2
	.type	_ZZ23hb_language_get_defaultE16default_language, %object
	.size	_ZZ23hb_language_get_defaultE16default_language, 4
_ZZ23hb_language_get_defaultE16default_language:
	.space	4
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
