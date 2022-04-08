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
	.file	"hb-ot-tag.cc"
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
	.section	.text._ZL7TOUPPERh,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL7TOUPPERh, %function
_ZL7TOUPPERh:
	.fnstart
.LFB35:
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
	bhi	.L8
	ldrb	r3, [r7, #7]
	subs	r3, r3, #32
	uxtb	r3, r3
	b	.L9
.L8:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
.L9:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZL7TOUPPERh, .-_ZL7TOUPPERh
	.section	.text._ZL25hb_ot_old_tag_from_script11hb_script_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL25hb_ot_old_tag_from_script11hb_script_t, %function
_ZL25hb_ot_old_tag_from_script11hb_script_t:
	.fnstart
.LFB59:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movw	r2, #28527
	movt	r2, 19553
	cmp	r3, r2
	beq	.L13
	movw	r2, #28527
	movt	r2, 19553
	cmp	r3, r2
	bhi	.L14
	cmp	r3, #0
	beq	.L15
	movw	r2, #29281
	movt	r2, 18537
	cmp	r3, r2
	beq	.L16
	b	.L12
.L14:
	movw	r2, #26985
	movt	r2, 22113
	cmp	r3, r2
	beq	.L17
	movw	r2, #26985
	movt	r2, 22889
	cmp	r3, r2
	beq	.L18
	movw	r2, #28527
	movt	r2, 20075
	cmp	r3, r2
	beq	.L19
	b	.L12
.L15:
	movw	r3, #19540
	movt	r3, 17478
	b	.L20
.L16:
	movw	r3, #28257
	movt	r3, 27489
	b	.L20
.L13:
	movw	r3, #28448
	movt	r3, 27745
	b	.L20
.L18:
	movw	r3, #8224
	movt	r3, 31081
	b	.L20
.L19:
	movw	r3, #28448
	movt	r3, 28267
	b	.L20
.L17:
	movw	r3, #26912
	movt	r3, 30305
	b	.L20
.L12:
	ldr	r3, [r7, #4]
	orr	r3, r3, #536870912
.L20:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZL25hb_ot_old_tag_from_script11hb_script_t, .-_ZL25hb_ot_old_tag_from_script11hb_script_t
	.section	.text._ZL23hb_ot_old_tag_to_scriptj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL23hb_ot_old_tag_to_scriptj, %function
_ZL23hb_ot_old_tag_to_scriptj:
	.fnstart
.LFB60:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r2, [r7, #4]
	movw	r3, #19540
	movt	r3, 17478
	cmp	r2, r3
	bne	.L22
	movs	r3, #0
	b	.L23
.L22:
	ldr	r3, [r7, #4]
	and	r3, r3, #65280
	cmp	r3, #8192
	bne	.L24
	ldr	r3, [r7, #4]
	lsrs	r3, r3, #8
	and	r3, r3, #65280
	ldr	r2, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r7, #4]
.L24:
	ldr	r3, [r7, #4]
	uxtb	r3, r3
	cmp	r3, #32
	bne	.L25
	ldr	r3, [r7, #4]
	lsrs	r3, r3, #8
	uxtb	r3, r3
	ldr	r2, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r7, #4]
.L25:
	ldr	r3, [r7, #4]
	bic	r3, r3, #536870912
.L23:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZL23hb_ot_old_tag_to_scriptj, .-_ZL23hb_ot_old_tag_to_scriptj
	.section	.text._ZL25hb_ot_new_tag_from_script11hb_script_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL25hb_ot_new_tag_from_script11hb_script_t, %function
_ZL25hb_ot_new_tag_from_script11hb_script_t:
	.fnstart
.LFB61:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movw	r2, #25697
	movt	r2, 19310
	cmp	r3, r2
	beq	.L28
	movw	r2, #25697
	movt	r2, 19310
	cmp	r3, r2
	bhi	.L29
	movw	r2, #30305
	movt	r2, 17509
	cmp	r3, r2
	beq	.L30
	movw	r2, #30305
	movt	r2, 17509
	cmp	r3, r2
	bhi	.L31
	movw	r2, #28263
	movt	r2, 16997
	cmp	r3, r2
	beq	.L32
	b	.L27
.L31:
	movw	r2, #27250
	movt	r2, 18293
	cmp	r3, r2
	beq	.L33
	movw	r2, #29301
	movt	r2, 18293
	cmp	r3, r2
	beq	.L34
	b	.L27
.L29:
	movw	r2, #31073
	movt	r2, 20338
	cmp	r3, r2
	beq	.L35
	movw	r2, #31073
	movt	r2, 20338
	cmp	r3, r2
	bhi	.L36
	movw	r2, #31085
	movt	r2, 19820
	cmp	r3, r2
	beq	.L37
	movw	r2, #28018
	movt	r2, 19833
	cmp	r3, r2
	beq	.L38
	b	.L27
.L36:
	movw	r2, #28012
	movt	r2, 21601
	cmp	r3, r2
	beq	.L39
	movw	r2, #27765
	movt	r2, 21605
	cmp	r3, r2
	beq	.L40
	b	.L27
.L32:
	movw	r3, #26418
	movt	r3, 25198
	b	.L41
.L30:
	movw	r3, #30258
	movt	r3, 25701
	b	.L41
.L33:
	movw	r3, #29234
	movt	r3, 26474
	b	.L41
.L34:
	movw	r3, #29234
	movt	r3, 26485
	b	.L41
.L28:
	movw	r3, #25650
	movt	r3, 27502
	b	.L41
.L37:
	movw	r3, #27954
	movt	r3, 28012
	b	.L41
.L35:
	movw	r3, #31026
	movt	r3, 28530
	b	.L41
.L39:
	movw	r3, #27698
	movt	r3, 29805
	b	.L41
.L40:
	movw	r3, #27698
	movt	r3, 29797
	b	.L41
.L38:
	movw	r3, #27954
	movt	r3, 28025
	b	.L41
.L27:
	movw	r3, #19540
	movt	r3, 17478
.L41:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZL25hb_ot_new_tag_from_script11hb_script_t, .-_ZL25hb_ot_new_tag_from_script11hb_script_t
	.section	.text._ZL23hb_ot_new_tag_to_scriptj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL23hb_ot_new_tag_to_scriptj, %function
_ZL23hb_ot_new_tag_to_scriptj:
	.fnstart
.LFB62:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movw	r2, #25650
	movt	r2, 27502
	cmp	r3, r2
	beq	.L44
	movw	r2, #25650
	movt	r2, 27502
	cmp	r3, r2
	bhi	.L45
	movw	r2, #30258
	movt	r2, 25701
	cmp	r3, r2
	beq	.L46
	movw	r2, #30258
	movt	r2, 25701
	cmp	r3, r2
	bhi	.L47
	movw	r2, #26418
	movt	r2, 25198
	cmp	r3, r2
	beq	.L48
	b	.L43
.L47:
	movw	r2, #29234
	movt	r2, 26474
	cmp	r3, r2
	beq	.L49
	movw	r2, #29234
	movt	r2, 26485
	cmp	r3, r2
	beq	.L50
	b	.L43
.L45:
	movw	r2, #31026
	movt	r2, 28530
	cmp	r3, r2
	beq	.L51
	movw	r2, #31026
	movt	r2, 28530
	cmp	r3, r2
	bhi	.L52
	movw	r2, #27954
	movt	r2, 28012
	cmp	r3, r2
	beq	.L53
	movw	r2, #27954
	movt	r2, 28025
	cmp	r3, r2
	beq	.L54
	b	.L43
.L52:
	movw	r2, #27698
	movt	r2, 29797
	cmp	r3, r2
	beq	.L55
	movw	r2, #27698
	movt	r2, 29805
	cmp	r3, r2
	beq	.L56
	b	.L43
.L48:
	movw	r3, #28263
	movt	r3, 16997
	b	.L57
.L46:
	movw	r3, #30305
	movt	r3, 17509
	b	.L57
.L49:
	movw	r3, #27250
	movt	r3, 18293
	b	.L57
.L50:
	movw	r3, #29301
	movt	r3, 18293
	b	.L57
.L44:
	movw	r3, #25697
	movt	r3, 19310
	b	.L57
.L53:
	movw	r3, #31085
	movt	r3, 19820
	b	.L57
.L51:
	movw	r3, #31073
	movt	r3, 20338
	b	.L57
.L56:
	movw	r3, #28012
	movt	r3, 21601
	b	.L57
.L55:
	movw	r3, #27765
	movt	r3, 21605
	b	.L57
.L54:
	movw	r3, #28018
	movt	r3, 19833
	b	.L57
.L43:
	movw	r3, #31354
	movt	r3, 23162
.L57:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZL23hb_ot_new_tag_to_scriptj, .-_ZL23hb_ot_new_tag_to_scriptj
	.section	.text.hb_ot_tags_from_script,"ax",%progbits
	.align	2
	.global	hb_ot_tags_from_script
	.thumb
	.thumb_func
	.type	hb_ot_tags_from_script, %function
hb_ot_tags_from_script:
	.fnstart
.LFB63:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r2, [r7, #4]
	movw	r3, #19540
	movt	r3, 17478
	str	r3, [r2]
	ldr	r0, [r7, #12]
	bl	_ZL25hb_ot_old_tag_from_script11hb_script_t(PLT)
	mov	r2, r0
	ldr	r3, [r7, #8]
	str	r2, [r3]
	ldr	r0, [r7, #12]
	bl	_ZL25hb_ot_new_tag_from_script11hb_script_t(PLT)
	str	r0, [r7, #20]
	ldr	r2, [r7, #20]
	movw	r3, #19540
	movt	r3, 17478
	cmp	r2, r3
	beq	.L58
	ldr	r3, [r7, #8]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #20]
	str	r2, [r3]
.L58:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	hb_ot_tags_from_script, .-hb_ot_tags_from_script
	.section	.text.hb_ot_tag_to_script,"ax",%progbits
	.align	2
	.global	hb_ot_tag_to_script
	.thumb
	.thumb_func
	.type	hb_ot_tag_to_script, %function
hb_ot_tag_to_script:
	.fnstart
.LFB64:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	uxtb	r3, r3
	cmp	r3, #50
	bne	.L61
	ldr	r0, [r7, #4]
	bl	_ZL23hb_ot_new_tag_to_scriptj(PLT)
	mov	r3, r0
	b	.L62
.L61:
	ldr	r0, [r7, #4]
	bl	_ZL23hb_ot_old_tag_to_scriptj(PLT)
	mov	r3, r0
.L62:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	hb_ot_tag_to_script, .-hb_ot_tag_to_script
	.section	.text._ZL28lang_compare_first_componentPKcS0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL28lang_compare_first_componentPKcS0_, %function
_ZL28lang_compare_first_componentPKcS0_:
	.fnstart
.LFB65:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	movs	r1, #45
	bl	strchr(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L64
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #4]
	subs	r3, r2, r3
	b	.L65
.L64:
	ldr	r0, [r7, #4]
	bl	strlen(PLT)
	mov	r3, r0
.L65:
	str	r3, [r7, #16]
	ldr	r0, [r7]
	movs	r1, #45
	bl	strchr(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L66
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	subs	r3, r2, r3
	b	.L67
.L66:
	ldr	r0, [r7]
	bl	strlen(PLT)
	mov	r3, r0
.L67:
	str	r3, [r7, #12]
	add	r2, r7, #16
	add	r3, r7, #12
	mov	r0, r2
	mov	r1, r3
	bl	_Z3MAXIjET_RKS0_S2_(PLT)
	mov	r3, r0
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	mov	r2, r3
	bl	strncmp(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZL28lang_compare_first_componentPKcS0_, .-_ZL28lang_compare_first_componentPKcS0_
	.section	.text._ZL12lang_matchesPKcS0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL12lang_matchesPKcS0_, %function
_ZL12lang_matchesPKcS0_:
	.fnstart
.LFB66:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7]
	bl	strlen(PLT)
	str	r0, [r7, #12]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	ldr	r2, [r7, #12]
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L70
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L71
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #45
	bne	.L70
.L71:
	movs	r3, #1
	b	.L72
.L70:
	movs	r3, #0
.L72:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZL12lang_matchesPKcS0_, .-_ZL12lang_matchesPKcS0_
	.section	.rodata
	.align	2
.LC0:
	.ascii	"x-hbot\000"
	.align	2
.LC1:
	.ascii	"zh\000"
	.section	.text.hb_ot_tag_from_language,"ax",%progbits
	.align	2
	.global	hb_ot_tag_from_language
	.thumb
	.thumb_func
	.type	hb_ot_tag_from_language, %function
hb_ot_tag_from_language:
	.fnstart
.LFB67:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #48
	sub	sp, sp, #48
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L75
	movw	r3, #27764
	movt	r3, 25702
	b	.L76
.L75:
	ldr	r0, [r7, #4]
	bl	hb_language_to_string(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r0, [r7, #24]
	ldr	r3, .L92
.LPIC0:
	add	r3, pc
	mov	r1, r3
	bl	strstr(PLT)
	str	r0, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L77
	ldr	r3, [r7, #36]
	adds	r3, r3, #6
	str	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #32]
	b	.L78
.L81:
	ldr	r3, [r7, #32]
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	_ZL7TOUPPERh(PLT)
	mov	r3, r0
	mov	r2, r3
	add	r1, r7, #12
	ldr	r3, [r7, #32]
	add	r3, r3, r1
	strb	r2, [r3]
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	str	r3, [r7, #32]
.L78:
	ldr	r3, [r7, #32]
	cmp	r3, #3
	bgt	.L79
	ldr	r3, [r7, #32]
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	_ZL7ISALPHAh(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L79
	movs	r3, #1
	b	.L80
.L79:
	movs	r3, #0
.L80:
	cmp	r3, #0
	bne	.L81
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L82
	b	.L83
.L84:
	add	r2, r7, #12
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	movs	r2, #32
	strb	r2, [r3]
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	str	r3, [r7, #32]
.L83:
	ldr	r3, [r7, #32]
	cmp	r3, #3
	ble	.L84
	add	r3, r7, #12
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	add	r3, r7, #12
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	add	r3, r7, #12
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	add	r3, r7, #12
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	b	.L76
.L82:
.L77:
	ldr	r3, .L92+4
.LPIC1:
	add	r3, pc
	mov	r0, r3
	bl	_Z12ARRAY_LENGTHI7LangTagLj531EEjRAT0__KT_(PLT)
	mov	r3, r0
	ldr	r2, .L92+8
.LPIC2:
	add	r2, pc
	str	r2, [sp]
	ldr	r0, [r7, #24]
	ldr	r2, .L92+12
.LPIC3:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	movs	r3, #8
	bl	bsearch(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L85
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	b	.L76
.L85:
	ldr	r0, [r7, #24]
	ldr	r3, .L92+16
.LPIC4:
	add	r3, pc
	mov	r1, r3
	bl	_ZL28lang_compare_first_componentPKcS0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L86
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L87
.L89:
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, .L92+20
.LPIC5:
	add	r2, pc
	add	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldr	r0, [r7, #24]
	mov	r1, r3
	bl	_ZL12lang_matchesPKcS0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L88
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #8]
	b	.L76
.L88:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L87:
	ldr	r3, .L92+24
.LPIC6:
	add	r3, pc
	mov	r0, r3
	bl	_Z12ARRAY_LENGTHI11LangTagLongLj7EEjRAT0__KT_(PLT)
	mov	r2, r0
	ldr	r3, [r7, #28]
	cmp	r2, r3
	ite	hi
	movhi	r3, #1
	movls	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L89
	movw	r3, #21280
	movt	r3, 23112
	b	.L76
.L86:
	ldr	r0, [r7, #24]
	movs	r1, #45
	bl	strchr(PLT)
	str	r0, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L90
	ldr	r0, [r7, #24]
	bl	strlen(PLT)
	mov	r3, r0
	ldr	r2, [r7, #24]
	add	r3, r3, r2
	str	r3, [r7, #36]
.L90:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #24]
	subs	r3, r2, r3
	cmp	r3, #3
	bne	.L91
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #24]
	subs	r3, r2, r3
	ldr	r0, [r7, #24]
	mov	r1, r3
	bl	hb_tag_from_string(PLT)
	mov	r3, r0
	bic	r3, r3, #536879104
	bic	r3, r3, #2097152
	b	.L76
.L91:
	movw	r3, #27764
	movt	r3, 25702
.L76:
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L93:
	.align	2
.L92:
	.word	.LC0-(.LPIC0+4)
	.word	_ZL12ot_languages-(.LPIC1+4)
	.word	_ZL28lang_compare_first_componentPKcS0_-(.LPIC2+4)
	.word	_ZL12ot_languages-(.LPIC3+4)
	.word	.LC1-(.LPIC4+4)
	.word	_ZL15ot_languages_zh-(.LPIC5+4)
	.word	_ZL15ot_languages_zh-(.LPIC6+4)
	.fnend
	.size	hb_ot_tag_from_language, .-hb_ot_tag_from_language
	.section	.rodata
	.align	2
.LC2:
	.ascii	"zh-hk\000"
	.align	2
.LC3:
	.ascii	"zh-Hans\000"
	.align	2
.LC4:
	.ascii	"zh-Hant\000"
	.section	.text.hb_ot_tag_to_language,"ax",%progbits
	.align	2
	.global	hb_ot_tag_to_language
	.thumb
	.thumb_func
	.type	hb_ot_tag_to_language, %function
hb_ot_tag_to_language:
	.fnstart
.LFB68:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #24
	sub	sp, sp, #24
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r2, [r7, #4]
	movw	r3, #27764
	movt	r3, 25702
	cmp	r2, r3
	bne	.L95
	movs	r3, #0
	b	.L96
.L95:
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L97
.L99:
	ldr	r3, .L107
.LPIC7:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #20]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bne	.L98
	ldr	r3, [r7, #20]
	lsls	r2, r3, #3
	ldr	r3, .L107+4
.LPIC8:
	add	r3, pc
	add	r3, r3, r2
	mov	r0, r3
	mov	r1, #-1
	bl	hb_language_from_string(PLT)
	mov	r3, r0
	b	.L96
.L98:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L97:
	ldr	r3, .L107+8
.LPIC9:
	add	r3, pc
	mov	r0, r3
	bl	_Z12ARRAY_LENGTHI7LangTagLj531EEjRAT0__KT_(PLT)
	mov	r2, r0
	ldr	r3, [r7, #20]
	cmp	r2, r3
	ite	hi
	movhi	r3, #1
	movls	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L99
	ldr	r3, [r7, #4]
	lsrs	r2, r3, #16
	lsls	r2, r2, #16
	movs	r3, #0
	movt	r3, 23112
	cmp	r2, r3
	bne	.L100
	ldr	r2, [r7, #4]
	movw	r3, #21280
	movt	r3, 23112
	cmp	r2, r3
	beq	.L102
	movw	r3, #21536
	movt	r3, 23112
	cmp	r2, r3
	beq	.L103
	movw	r3, #18464
	movt	r3, 23112
	cmp	r2, r3
	beq	.L104
	nop
	b	.L100
.L104:
	ldr	r3, .L107+12
.LPIC10:
	add	r3, pc
	mov	r0, r3
	mov	r1, #-1
	bl	hb_language_from_string(PLT)
	mov	r3, r0
	b	.L96
.L102:
	ldr	r3, .L107+16
.LPIC11:
	add	r3, pc
	mov	r0, r3
	mov	r1, #-1
	bl	hb_language_from_string(PLT)
	mov	r3, r0
	b	.L96
.L103:
	ldr	r3, .L107+20
.LPIC12:
	add	r3, pc
	mov	r0, r3
	mov	r1, #-1
	bl	hb_language_from_string(PLT)
	mov	r3, r0
	b	.L96
.L100:
	ldr	r3, .L107+24
.LPIC13:
	add	r3, pc
	mov	r2, r3
	add	r3, r7, #8
	ldmia	r2, {r0, r1}
	str	r0, [r3]
	adds	r3, r3, #4
	strh	r1, [r3]	@ movhi
	adds	r3, r3, #2
	lsrs	r2, r1, #16
	strb	r2, [r3]
	add	r3, r7, #15
	movs	r2, #0
	strb	r2, [r3]
	adds	r3, r3, #1
	movs	r2, #0
	strb	r2, [r3]
	adds	r3, r3, #1
	movs	r2, #0
	strb	r2, [r3]
	adds	r3, r3, #1
	movs	r2, #0
	strb	r2, [r3]
	adds	r3, r3, #1
	ldr	r3, [r7, #4]
	lsrs	r3, r3, #24
	uxtb	r3, r3
	strb	r3, [r7, #14]
	ldr	r3, [r7, #4]
	lsrs	r3, r3, #16
	uxtb	r3, r3
	strb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	lsrs	r3, r3, #8
	uxtb	r3, r3
	strb	r3, [r7, #16]
	ldr	r3, [r7, #4]
	uxtb	r3, r3
	strb	r3, [r7, #17]
	ldrb	r3, [r7, #17]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L105
	movs	r3, #0
	strb	r3, [r7, #17]
.L105:
	movs	r3, #0
	strb	r3, [r7, #18]
	add	r3, r7, #8
	mov	r0, r3
	mov	r1, #-1
	bl	hb_language_from_string(PLT)
	mov	r3, r0
.L96:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L108:
	.align	2
.L107:
	.word	_ZL12ot_languages-(.LPIC7+4)
	.word	_ZL12ot_languages-(.LPIC8+4)
	.word	_ZL12ot_languages-(.LPIC9+4)
	.word	.LC2-(.LPIC10+4)
	.word	.LC3-(.LPIC11+4)
	.word	.LC4-(.LPIC12+4)
	.word	.LC0-(.LPIC13+4)
	.fnend
	.size	hb_ot_tag_to_language, .-hb_ot_tag_to_language
	.section	.text._Z3MAXIjET_RKS0_S2_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z3MAXIjET_RKS0_S2_, %function
_Z3MAXIjET_RKS0_S2_:
	.fnstart
.LFB71:
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
	bls	.L110
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	b	.L111
.L110:
	ldr	r3, [r7]
	ldr	r3, [r3]
.L111:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_Z3MAXIjET_RKS0_S2_, .-_Z3MAXIjET_RKS0_S2_
	.section	.text._Z12ARRAY_LENGTHI7LangTagLj531EEjRAT0__KT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z12ARRAY_LENGTHI7LangTagLj531EEjRAT0__KT_, %function
_Z12ARRAY_LENGTHI7LangTagLj531EEjRAT0__KT_:
	.fnstart
.LFB72:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	movw	r3, #531
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_Z12ARRAY_LENGTHI7LangTagLj531EEjRAT0__KT_, .-_Z12ARRAY_LENGTHI7LangTagLj531EEjRAT0__KT_
	.section	.text._Z12ARRAY_LENGTHI11LangTagLongLj7EEjRAT0__KT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z12ARRAY_LENGTHI11LangTagLongLj7EEjRAT0__KT_, %function
_Z12ARRAY_LENGTHI11LangTagLongLj7EEjRAT0__KT_:
	.fnstart
.LFB73:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #7
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_Z12ARRAY_LENGTHI11LangTagLongLj7EEjRAT0__KT_, .-_Z12ARRAY_LENGTHI11LangTagLongLj7EEjRAT0__KT_
	.section	.rodata._ZL12ot_languages,"a",%progbits
	.align	2
	.type	_ZL12ot_languages, %object
	.size	_ZL12ot_languages, 4248
_ZL12ot_languages:
	.ascii	"aa\000"
	.space	1
	.word	1095127584
	.ascii	"ab\000"
	.space	1
	.word	1094863648
	.ascii	"abq\000"
	.word	1094861088
	.ascii	"ach\000"
	.word	1094928416
	.ascii	"ada\000"
	.word	1145980704
	.ascii	"ady\000"
	.word	1094998304
	.ascii	"af\000"
	.space	1
	.word	1095125792
	.ascii	"aii\000"
	.word	1398227232
	.ascii	"aio\000"
	.word	1095323424
	.ascii	"aiw\000"
	.word	1095911712
	.ascii	"ak\000"
	.space	1
	.word	1415006496
	.ascii	"alt\000"
	.word	1095521312
	.ascii	"am\000"
	.space	1
	.word	1095583776
	.ascii	"amf\000"
	.word	1212304928
	.ascii	"an\000"
	.space	1
	.word	1095911200
	.ascii	"ang\000"
	.word	1095649056
	.ascii	"ar\000"
	.space	1
	.word	1095909664
	.ascii	"arb\000"
	.word	1095909664
	.ascii	"arn\000"
	.word	1296125984
	.ascii	"ary\000"
	.word	1297044000
	.ascii	"as\000"
	.space	1
	.word	1095978272
	.ascii	"ast\000"
	.word	1095980064
	.ascii	"ath\000"
	.word	1096042528
	.ascii	"atv\000"
	.word	1095521312
	.ascii	"av\000"
	.space	1
	.word	1096176160
	.ascii	"awa\000"
	.word	1096237344
	.ascii	"ay\000"
	.space	1
	.word	1096371488
	.ascii	"az\000"
	.space	1
	.word	1096434976
	.ascii	"azb\000"
	.word	1096434208
	.ascii	"azj\000"
	.word	1096434976
	.ascii	"ba\000"
	.space	1
	.word	1112754208
	.ascii	"bai\000"
	.word	1112362016
	.ascii	"bal\000"
	.word	1112295712
	.ascii	"ban\000"
	.word	1111576096
	.ascii	"bar\000"
	.word	1111577120
	.ascii	"bbc\000"
	.word	1111638816
	.ascii	"bci\000"
	.word	1111577888
	.ascii	"bcl\000"
	.word	1112099616
	.ascii	"bcq\000"
	.word	1111705632
	.ascii	"be\000"
	.space	1
	.word	1111837728
	.ascii	"bem\000"
	.word	1111837984
	.ascii	"ber\000"
	.word	1111839264
	.ascii	"bfq\000"
	.word	1111573536
	.ascii	"bft\000"
	.word	1112298528
	.ascii	"bfy\000"
	.word	1111574304
	.ascii	"bg\000"
	.space	1
	.word	1111970336
	.ascii	"bgc\000"
	.word	1111966496
	.ascii	"bgq\000"
	.word	1111970080
	.ascii	"bhb\000"
	.word	1112033568
	.ascii	"bhk\000"
	.word	1112099616
	.ascii	"bho\000"
	.word	1112035104
	.ascii	"bi\000"
	.space	1
	.word	1112101664
	.ascii	"bik\000"
	.word	1112099616
	.ascii	"bin\000"
	.word	1162104608
	.ascii	"bjj\000"
	.word	1112164896
	.ascii	"bjt\000"
	.word	1112296992
	.ascii	"bla\000"
	.word	1112229408
	.ascii	"ble\000"
	.word	1112296992
	.ascii	"blk\000"
	.word	1112296224
	.ascii	"bln\000"
	.word	1112099616
	.ascii	"bm\000"
	.space	1
	.word	1112359456
	.ascii	"bn\000"
	.space	1
	.word	1111838240
	.ascii	"bo\000"
	.space	1
	.word	1414087200
	.ascii	"bpy\000"
	.word	1112561952
	.ascii	"bqi\000"
	.word	1280459552
	.ascii	"br\000"
	.space	1
	.word	1112687904
	.ascii	"bra\000"
	.word	1112688928
	.ascii	"brh\000"
	.word	1112688672
	.ascii	"brx\000"
	.word	1112692768
	.ascii	"bs\000"
	.space	1
	.word	1112494880
	.ascii	"btb\000"
	.word	1112820000
	.ascii	"bto\000"
	.word	1112099616
	.ascii	"bts\000"
	.word	1112822560
	.ascii	"bug\000"
	.word	1112885024
	.ascii	"bxr\000"
	.word	1380078880
	.ascii	"byn\000"
	.word	1112099872
	.ascii	"ca\000"
	.space	1
	.word	1128354848
	.ascii	"cbk\000"
	.word	1128418080
	.ascii	"ce\000"
	.space	1
	.word	1128809760
	.ascii	"ceb\000"
	.word	1128612384
	.ascii	"cgg\000"
	.word	1128744736
	.ascii	"ch\000"
	.space	1
	.word	1128808736
	.ascii	"cho\000"
	.word	1128812320
	.ascii	"chp\000"
	.word	1128812576
	.ascii	"chr\000"
	.word	1128813088
	.ascii	"chy\000"
	.word	1128814880
	.ascii	"ckb\000"
	.word	1263882784
	.ascii	"ckt\000"
	.word	1128811296
	.ascii	"cop\000"
	.word	1129271328
	.ascii	"cr\000"
	.space	1
	.word	1129465120
	.ascii	"crh\000"
	.word	1129468960
	.ascii	"crj\000"
	.word	1162039840
	.ascii	"crl\000"
	.word	1162039840
	.ascii	"crm\000"
	.word	1296257568
	.ascii	"crx\000"
	.word	1129468448
	.ascii	"cs\000"
	.space	1
	.word	1129535776
	.ascii	"csb\000"
	.word	1129529888
	.ascii	"ctg\000"
	.word	1129596704
	.ascii	"cts\000"
	.word	1112099616
	.ascii	"cu\000"
	.space	1
	.word	1129532448
	.ascii	"cv\000"
	.space	1
	.word	1128813856
	.ascii	"cwd\000"
	.word	1145262624
	.ascii	"cy\000"
	.space	1
	.word	1464159264
	.ascii	"da\000"
	.space	1
	.word	1145130528
	.ascii	"dap\000"
	.word	1313428256
	.ascii	"dar\000"
	.word	1145131552
	.ascii	"de\000"
	.space	1
	.word	1145394464
	.ascii	"dgo\000"
	.word	1145524000
	.ascii	"dhd\000"
	.word	1296127776
	.ascii	"din\000"
	.word	1145981728
	.ascii	"diq\000"
	.word	1145655584
	.ascii	"dje\000"
	.word	1145721376
	.ascii	"dng\000"
	.word	1146441248
	.ascii	"doi\000"
	.word	1145524768
	.ascii	"dsb\000"
	.word	1280524832
	.ascii	"dv\000"
	.space	1
	.word	1145656864
	.ascii	"dyu\000"
	.word	1247104032
	.ascii	"dz\000"
	.space	1
	.word	1146768928
	.ascii	"ee\000"
	.space	1
	.word	1163347232
	.ascii	"efi\000"
	.word	1162234144
	.ascii	"ekk\000"
	.word	1163151648
	.ascii	"el\000"
	.space	1
	.word	1162628128
	.ascii	"emk\000"
	.word	1296976672
	.ascii	"en\000"
	.space	1
	.word	1162757920
	.ascii	"eo\000"
	.space	1
	.word	1314148128
	.ascii	"eot\000"
	.word	1112820000
	.ascii	"es\000"
	.space	1
	.word	1163087904
	.ascii	"et\000"
	.space	1
	.word	1163151648
	.ascii	"eu\000"
	.space	1
	.word	1163219232
	.ascii	"eve\000"
	.word	1163284000
	.ascii	"evn\000"
	.word	1163283232
	.ascii	"fa\000"
	.space	1
	.word	1178685984
	.ascii	"ff\000"
	.space	1
	.word	1179995168
	.ascii	"fi\000"
	.space	1
	.word	1179209248
	.ascii	"fil\000"
	.word	1346980896
	.ascii	"fj\000"
	.space	1
	.word	1179273504
	.ascii	"fo\000"
	.space	1
	.word	1179603744
	.ascii	"fon\000"
	.word	1179602464
	.ascii	"fr\000"
	.space	1
	.word	1179795744
	.ascii	"frc\000"
	.word	1179796256
	.ascii	"frp\000"
	.word	1179799584
	.ascii	"fur\000"
	.word	1179798560
	.ascii	"fuv\000"
	.word	1179997728
	.ascii	"fy\000"
	.space	1
	.word	1179797792
	.ascii	"ga\000"
	.space	1
	.word	1230129440
	.ascii	"gaa\000"
	.word	1195459616
	.ascii	"gag\000"
	.word	1195460384
	.ascii	"gbm\000"
	.word	1195464480
	.ascii	"gd\000"
	.space	1
	.word	1195459872
	.ascii	"gez\000"
	.word	1195727392
	.ascii	"ggo\000"
	.word	1196379680
	.ascii	"gl\000"
	.space	1
	.word	1195461664
	.ascii	"gld\000"
	.word	1312902688
	.ascii	"glk\000"
	.word	1196182304
	.ascii	"gn\000"
	.space	1
	.word	1196769568
	.ascii	"gno\000"
	.word	1196379680
	.ascii	"gog\000"
	.word	1196377888
	.ascii	"gon\000"
	.word	1196379680
	.ascii	"grt\000"
	.word	1196576544
	.ascii	"gru\000"
	.word	1397704480
	.ascii	"gu\000"
	.space	1
	.word	1196771872
	.ascii	"guc\000"
	.word	1196770080
	.ascii	"guk\000"
	.word	1196251680
	.ascii	"guz\000"
	.word	1196775968
	.ascii	"gv\000"
	.space	1
	.word	1296980000
	.ascii	"ha\000"
	.space	1
	.word	1212241184
	.ascii	"har\000"
	.word	1213352224
	.ascii	"haw\000"
	.word	1212241696
	.ascii	"hay\000"
	.word	1212242208
	.ascii	"haz\000"
	.word	1212242464
	.ascii	"he\000"
	.space	1
	.word	1230459424
	.ascii	"hz\000"
	.space	1
	.word	1212502560
	.ascii	"hi\000"
	.space	1
	.word	1212763680
	.ascii	"hil\000"
	.word	1212763168
	.ascii	"hnd\000"
	.word	1213088800
	.ascii	"hne\000"
	.word	1128810528
	.ascii	"hno\000"
	.word	1213088800
	.ascii	"ho\000"
	.space	1
	.word	1213026080
	.ascii	"hoc\000"
	.word	1213145120
	.ascii	"hoj\000"
	.word	1212240416
	.ascii	"hr\000"
	.space	1
	.word	1213355552
	.ascii	"hsb\000"
	.word	1431519776
	.ascii	"ht\000"
	.space	1
	.word	1212238112
	.ascii	"hu\000"
	.space	1
	.word	1213550112
	.ascii	"hy\000"
	.space	1
	.word	1213809952
	.ascii	"hz\000"
	.space	1
	.word	1212502560
	.ascii	"ia\000"
	.space	1
	.word	1229865248
	.ascii	"ibb\000"
	.word	1229079072
	.ascii	"id\000"
	.space	1
	.word	1229866016
	.ascii	"ie\000"
	.space	1
	.word	1229735200
	.ascii	"ig\000"
	.space	1
	.word	1229082400
	.ascii	"igb\000"
	.word	1161972000
	.ascii	"ijc\000"
	.word	1229606688
	.ascii	"ijo\000"
	.word	1229606688
	.ascii	"ik\000"
	.space	1
	.word	1229998880
	.ascii	"ilo\000"
	.word	1229737760
	.ascii	"inh\000"
	.word	1229866784
	.ascii	"io\000"
	.space	1
	.word	1229213472
	.ascii	"is\000"
	.space	1
	.word	1230195744
	.ascii	"it\000"
	.space	1
	.word	1230258464
	.ascii	"iu\000"
	.space	1
	.word	1229870368
	.ascii	"ja\000"
	.space	1
	.word	1245793824
	.ascii	"jam\000"
	.word	1245793568
	.ascii	"jbo\000"
	.word	1245859616
	.ascii	"jv\000"
	.space	1
	.word	1245795872
	.ascii	"ka\000"
	.space	1
	.word	1262572576
	.ascii	"kaa\000"
	.word	1263684384
	.ascii	"kab\000"
	.word	1262567968
	.ascii	"kam\000"
	.word	1263354400
	.ascii	"kar\000"
	.word	1263685152
	.ascii	"kbd\000"
	.word	1262567968
	.ascii	"kde\000"
	.word	1262765344
	.ascii	"kdr\000"
	.word	1263684896
	.ascii	"kdt\000"
	.word	1263884576
	.ascii	"kex\000"
	.word	1263226400
	.ascii	"kfr\000"
	.word	1262568224
	.ascii	"kfy\000"
	.word	1263357472
	.ascii	"kg\000"
	.space	1
	.word	1263488544
	.ascii	"kha\000"
	.word	1263749408
	.ascii	"khb\000"
	.word	1480737824
	.ascii	"kht\000"
	.word	1263029792
	.ascii	"khw\000"
	.word	1263032096
	.ascii	"ki\000"
	.space	1
	.word	1263094560
	.ascii	"kj\000"
	.space	1
	.word	1263878432
	.ascii	"kjh\000"
	.word	1263026464
	.ascii	"kjp\000"
	.word	1263161376
	.ascii	"kk\000"
	.space	1
	.word	1262574112
	.ascii	"kl\000"
	.space	1
	.word	1196576288
	.ascii	"kln\000"
	.word	1262570528
	.ascii	"km\000"
	.space	1
	.word	1263029536
	.ascii	"kmb\000"
	.word	1296191008
	.ascii	"kmw\000"
	.word	1263357728
	.ascii	"kn\000"
	.space	1
	.word	1262571040
	.ascii	"knn\000"
	.word	1263487776
	.ascii	"ko\000"
	.space	1
	.word	1263489568
	.ascii	"koi\000"
	.word	1263489056
	.ascii	"kok\000"
	.word	1263487776
	.ascii	"kpe\000"
	.word	1263553568
	.ascii	"kpv\000"
	.word	1263491616
	.ascii	"kpy\000"
	.word	1264143136
	.ascii	"kqy\000"
	.word	1263686688
	.ascii	"kr\000"
	.space	1
	.word	1263424032
	.ascii	"kri\000"
	.word	1263683872
	.ascii	"krl\000"
	.word	1263684640
	.ascii	"kru\000"
	.word	1263883552
	.ascii	"ks\000"
	.space	1
	.word	1263749152
	.ascii	"ksh\000"
	.word	1263749152
	.ascii	"ksw\000"
	.word	1263752992
	.ascii	"ku\000"
	.space	1
	.word	1263882784
	.ascii	"kum\000"
	.word	1263881504
	.ascii	"kv\000"
	.space	1
	.word	1263488288
	.ascii	"kvd\000"
	.word	1263880480
	.ascii	"kw\000"
	.space	1
	.word	1129271840
	.ascii	"kxc\000"
	.word	1263358752
	.ascii	"kxu\000"
	.word	1263880480
	.ascii	"ky\000"
	.space	1
	.word	1263096352
	.ascii	"kyu\000"
	.word	1264145696
	.ascii	"la\000"
	.space	1
	.word	1279349792
	.ascii	"lad\000"
	.word	1247101984
	.ascii	"lb\000"
	.space	1
	.word	1280596512
	.ascii	"lbe\000"
	.word	1279347488
	.ascii	"lbj\000"
	.word	1279544096
	.ascii	"lez\000"
	.word	1279613472
	.ascii	"lg\000"
	.space	1
	.word	1280657184
	.ascii	"li\000"
	.space	1
	.word	1279872288
	.ascii	"lif\000"
	.word	1280131616
	.ascii	"lij\000"
	.word	1279871520
	.ascii	"lis\000"
	.word	1279873824
	.ascii	"ljp\000"
	.word	1279938592
	.ascii	"lki\000"
	.word	1280002336
	.ascii	"lld\000"
	.word	1279345696
	.ascii	"lmn\000"
	.word	1279348000
	.ascii	"lmo\000"
	.word	1280134944
	.ascii	"ln\000"
	.space	1
	.word	1279872544
	.ascii	"lo\000"
	.space	1
	.word	1279348512
	.ascii	"lrc\000"
	.word	1280459552
	.ascii	"lt\000"
	.space	1
	.word	1280591904
	.ascii	"lu\000"
	.space	1
	.word	1280655904
	.ascii	"lua\000"
	.word	1280655904
	.ascii	"luo\000"
	.word	1280659232
	.ascii	"lus\000"
	.word	1296652832
	.ascii	"luy\000"
	.word	1280657440
	.ascii	"luz\000"
	.word	1280459552
	.ascii	"lv\000"
	.space	1
	.word	1280723232
	.ascii	"lzz\000"
	.word	1279351328
	.ascii	"mad\000"
	.word	1296122912
	.ascii	"mag\000"
	.word	1296123680
	.ascii	"mai\000"
	.word	1297369120
	.ascii	"mak\000"
	.word	1296781856
	.ascii	"man\000"
	.word	1296976672
	.ascii	"mdc\000"
	.word	1296844064
	.ascii	"mdf\000"
	.word	1297042208
	.ascii	"mdr\000"
	.word	1296323104
	.ascii	"mdy\000"
	.word	1296844064
	.ascii	"men\000"
	.word	1296319776
	.ascii	"mer\000"
	.word	1296388640
	.ascii	"mfe\000"
	.word	1296450848
	.ascii	"mg\000"
	.space	1
	.word	1296844576
	.ascii	"mh\000"
	.space	1
	.word	1296123936
	.ascii	"mhr\000"
	.word	1280131360
	.ascii	"mi\000"
	.space	1
	.word	1297238304
	.ascii	"min\000"
	.word	1296649760
	.ascii	"mk\000"
	.space	1
	.word	1296778272
	.ascii	"mku\000"
	.word	1296976672
	.ascii	"mkw\000"
	.word	1296783136
	.ascii	"ml\000"
	.space	1
	.word	1296847392
	.ascii	"mlq\000"
	.word	1296976672
	.ascii	"mn\000"
	.space	1
	.word	1296975648
	.ascii	"mnc\000"
	.word	1296255008
	.ascii	"mni\000"
	.word	1296976160
	.ascii	"mnk\000"
	.word	1296974880
	.ascii	"mns\000"
	.word	1296125472
	.ascii	"mnw\000"
	.word	1297042976
	.ascii	"mo\000"
	.space	1
	.word	1297042464
	.ascii	"moh\000"
	.word	1297041440
	.ascii	"mos\000"
	.word	1297044256
	.ascii	"mpe\000"
	.word	1296124448
	.ascii	"mr\000"
	.space	1
	.word	1296126496
	.ascii	"mrj\000"
	.word	1213022496
	.ascii	"ms\000"
	.space	1
	.word	1296849184
	.ascii	"msc\000"
	.word	1296976672
	.ascii	"mt\000"
	.space	1
	.word	1297371936
	.ascii	"mtr\000"
	.word	1296127776
	.ascii	"mus\000"
	.word	1297437472
	.ascii	"mve\000"
	.word	1296127776
	.ascii	"mwk\000"
	.word	1296976672
	.ascii	"mwl\000"
	.word	1297566752
	.ascii	"mwr\000"
	.word	1296127776
	.ascii	"mww\000"
	.word	1297569568
	.ascii	"my\000"
	.space	1
	.word	1112689952
	.ascii	"mym\000"
	.word	1296387616
	.ascii	"myq\000"
	.word	1296976672
	.ascii	"myv\000"
	.word	1163024928
	.ascii	"mzn\000"
	.word	1297763872
	.ascii	"na\000"
	.space	1
	.word	1312904480
	.ascii	"nag\000"
	.word	1312900896
	.ascii	"nah\000"
	.word	1312901152
	.ascii	"nap\000"
	.word	1312903200
	.ascii	"nb\000"
	.space	1
	.word	1313821216
	.ascii	"nco\000"
	.word	1397309984
	.ascii	"nd\000"
	.space	1
	.word	1313096224
	.ascii	"ndc\000"
	.word	1313096480
	.ascii	"nds\000"
	.word	1313100576
	.ascii	"ne\000"
	.space	1
	.word	1313165344
	.ascii	"new\000"
	.word	1313167136
	.ascii	"ng\000"
	.space	1
	.word	1313097504
	.ascii	"nga\000"
	.word	1313292576
	.ascii	"ngl\000"
	.word	1280136992
	.ascii	"niu\000"
	.word	1313428768
	.ascii	"niv\000"
	.word	1195985952
	.ascii	"nl\000"
	.space	1
	.word	1313621024
	.ascii	"nn\000"
	.space	1
	.word	1314475552
	.ascii	"no\000"
	.space	1
	.word	1313821216
	.ascii	"nod\000"
	.word	1314144544
	.ascii	"noe\000"
	.word	1313817888
	.ascii	"nog\000"
	.word	1313818400
	.ascii	"nov\000"
	.word	1313822240
	.ascii	"nqo\000"
	.word	1313558304
	.ascii	"nr\000"
	.space	1
	.word	1313096224
	.ascii	"nsk\000"
	.word	1312903968
	.ascii	"nso\000"
	.word	1397707808
	.ascii	"ny\000"
	.space	1
	.word	1128810784
	.ascii	"nym\000"
	.word	1314475296
	.ascii	"nyn\000"
	.word	1313557536
	.ascii	"oc\000"
	.space	1
	.word	1329809696
	.ascii	"oj\000"
	.space	1
	.word	1330266656
	.ascii	"ojs\000"
	.word	1329812000
	.ascii	"om\000"
	.space	1
	.word	1330794272
	.ascii	"or\000"
	.space	1
	.word	1330792736
	.ascii	"os\000"
	.space	1
	.word	1330860832
	.ascii	"pa\000"
	.space	1
	.word	1346457120
	.ascii	"pag\000"
	.word	1346455328
	.ascii	"pam\000"
	.word	1346456864
	.ascii	"pap\000"
	.word	1346457632
	.ascii	"pcc\000"
	.word	1346585376
	.ascii	"pcd\000"
	.word	1346585632
	.ascii	"pce\000"
	.word	1347176224
	.ascii	"pdc\000"
	.word	1346650912
	.ascii	"pes\000"
	.word	1178685984
	.ascii	"phk\000"
	.word	1346915104
	.ascii	"pi\000"
	.space	1
	.word	1346456608
	.ascii	"pih\000"
	.word	1346979872
	.ascii	"pl\000"
	.space	1
	.word	1347177248
	.ascii	"pll\000"
	.word	1347176224
	.ascii	"plp\000"
	.word	1346457632
	.ascii	"pms\000"
	.word	1347244832
	.ascii	"pnb\000"
	.word	1347306016
	.ascii	"prs\000"
	.word	1146243360
	.ascii	"ps\000"
	.space	1
	.word	1346458400
	.ascii	"pt\000"
	.space	1
	.word	1347700512
	.ascii	"pwo\000"
	.word	1347899168
	.ascii	"qu\000"
	.space	1
	.word	1364548128
	.ascii	"quc\000"
	.word	1364542240
	.ascii	"quz\000"
	.word	1364548128
	.ascii	"raj\000"
	.word	1380010528
	.ascii	"rbb\000"
	.word	1347176224
	.ascii	"rej\000"
	.word	1380272672
	.ascii	"ria\000"
	.word	1380532512
	.ascii	"ril\000"
	.word	1380532512
	.ascii	"rki\000"
	.word	1095912224
	.ascii	"rm\000"
	.space	1
	.word	1380799264
	.ascii	"rmy\000"
	.word	1380800800
	.ascii	"rn\000"
	.space	1
	.word	1381322272
	.ascii	"ro\000"
	.space	1
	.word	1380928800
	.ascii	"rom\000"
	.word	1380931872
	.ascii	"ru\000"
	.space	1
	.word	1381323552
	.ascii	"rue\000"
	.word	1381194016
	.ascii	"rup\000"
	.word	1381322784
	.ascii	"rw\000"
	.space	1
	.word	1381318944
	.ascii	"rwr\000"
	.word	1296127776
	.ascii	"sa\000"
	.space	1
	.word	1396788768
	.ascii	"sah\000"
	.word	1497451296
	.ascii	"sas\000"
	.word	1396790048
	.ascii	"sat\000"
	.word	1396790304
	.ascii	"sck\000"
	.word	1396786208
	.ascii	"sc\000"
	.space	1
	.word	1397900320
	.ascii	"scn\000"
	.word	1396919840
	.ascii	"sco\000"
	.word	1396920096
	.ascii	"scs\000"
	.word	1397506336
	.ascii	"sd\000"
	.space	1
	.word	1397638176
	.ascii	"se\000"
	.space	1
	.word	1314082080
	.ascii	"seh\000"
	.word	1397637408
	.ascii	"sel\000"
	.word	1397050400
	.ascii	"sg\000"
	.space	1
	.word	1397182240
	.ascii	"sga\000"
	.word	1397178656
	.ascii	"sgs\000"
	.word	1397183264
	.ascii	"sgw\000"
	.word	1128810272
	.ascii	"shn\000"
	.word	1397247520
	.ascii	"si\000"
	.space	1
	.word	1397639200
	.ascii	"sid\000"
	.word	1397310496
	.ascii	"sjd\000"
	.word	1263750432
	.ascii	"sk\000"
	.space	1
	.word	1397446944
	.ascii	"skr\000"
	.word	1397902112
	.ascii	"sl\000"
	.space	1
	.word	1397511712
	.ascii	"sm\000"
	.space	1
	.word	1397575456
	.ascii	"sma\000"
	.word	1397968160
	.ascii	"smj\000"
	.word	1280527648
	.ascii	"smn\000"
	.word	1230196000
	.ascii	"sms\000"
	.word	1397445408
	.ascii	"sn\000"
	.space	1
	.word	1397637408
	.ascii	"snk\000"
	.word	1397639968
	.ascii	"so\000"
	.space	1
	.word	1397574688
	.ascii	"sop\000"
	.word	1397706784
	.ascii	"sq\000"
	.space	1
	.word	1397836064
	.ascii	"sr\000"
	.space	1
	.word	1397899808
	.ascii	"srr\000"
	.word	1397903904
	.ascii	"ss\000"
	.space	1
	.word	1398233632
	.ascii	"st\000"
	.space	1
	.word	1397707808
	.ascii	"stq\000"
	.word	1398034720
	.ascii	"stv\000"
	.word	1397311264
	.ascii	"su\000"
	.space	1
	.word	1398099488
	.ascii	"suk\000"
	.word	1398098720
	.ascii	"suq\000"
	.word	1398100512
	.ascii	"sv\000"
	.space	1
	.word	1398162720
	.ascii	"sva\000"
	.word	1398161696
	.ascii	"sw\000"
	.space	1
	.word	1398229792
	.ascii	"swb\000"
	.word	1129140768
	.ascii	"swh\000"
	.word	1398229792
	.ascii	"swv\000"
	.word	1296127776
	.ascii	"sxu\000"
	.word	1398297888
	.ascii	"syl\000"
	.word	1398361120
	.ascii	"syr\000"
	.word	1398362656
	.ascii	"szl\000"
	.word	1398426656
	.ascii	"ta\000"
	.space	1
	.word	1413565728
	.ascii	"tab\000"
	.word	1413562912
	.ascii	"tcy\000"
	.word	1414876192
	.ascii	"tdd\000"
	.word	1413760032
	.ascii	"te\000"
	.space	1
	.word	1413827616
	.ascii	"tem\000"
	.word	1414352416
	.ascii	"tet\000"
	.word	1413829664
	.ascii	"tg\000"
	.space	1
	.word	1413564960
	.ascii	"th\000"
	.space	1
	.word	1414021408
	.ascii	"ti\000"
	.space	1
	.word	1413962016
	.ascii	"tig\000"
	.word	1413960224
	.ascii	"tiv\000"
	.word	1414092320
	.ascii	"tk\000"
	.space	1
	.word	1414221088
	.ascii	"tl\000"
	.space	1
	.word	1413958688
	.ascii	"tmh\000"
	.word	1953327136
	.ascii	"tn\000"
	.space	1
	.word	1414414624
	.ascii	"to\000"
	.space	1
	.word	1413959200
	.ascii	"tpi\000"
	.word	1414547744
	.ascii	"tr\000"
	.space	1
	.word	1414679328
	.ascii	"tru\000"
	.word	1414873376
	.ascii	"ts\000"
	.space	1
	.word	1414743840
	.ascii	"tt\000"
	.space	1
	.word	1413567520
	.ascii	"tum\000"
	.word	1414876448
	.ascii	"tw\000"
	.space	1
	.word	1415006496
	.ascii	"ty\000"
	.space	1
	.word	1414026272
	.ascii	"tyv\000"
	.word	1414878752
	.ascii	"tyz\000"
	.word	1415141920
	.ascii	"tzm\000"
	.word	1415204128
	.ascii	"udm\000"
	.word	1430539552
	.ascii	"ug\000"
	.space	1
	.word	1431914272
	.ascii	"uk\000"
	.space	1
	.word	1430999584
	.ascii	"umb\000"
	.word	1431126560
	.ascii	"unr\000"
	.word	1297436192
	.ascii	"ur\000"
	.space	1
	.word	1431454752
	.ascii	"uz\000"
	.space	1
	.word	1431978528
	.ascii	"uzn\000"
	.word	1431978528
	.ascii	"uzs\000"
	.word	1431978528
	.ascii	"ve\000"
	.space	1
	.word	1447382560
	.ascii	"vec\000"
	.word	1447379744
	.ascii	"vls\000"
	.word	1179403552
	.ascii	"vi\000"
	.space	1
	.word	1447646240
	.ascii	"vmw\000"
	.word	1296124704
	.ascii	"vo\000"
	.space	1
	.word	1448037408
	.ascii	"vro\000"
	.word	1448234784
	.ascii	"wa\000"
	.space	1
	.word	1464618528
	.ascii	"war\000"
	.word	1463898656
	.ascii	"wbm\000"
	.word	1463885856
	.ascii	"wbr\000"
	.word	1463895840
	.ascii	"wle\000"
	.word	1397311264
	.ascii	"wry\000"
	.word	1296127776
	.ascii	"wtm\000"
	.word	1465142560
	.ascii	"wo\000"
	.space	1
	.word	1464616480
	.ascii	"xal\000"
	.word	1263291680
	.ascii	"xh\000"
	.space	1
	.word	1481134880
	.ascii	"xog\000"
	.word	1481590560
	.ascii	"xom\000"
	.word	1263357728
	.ascii	"xsl\000"
	.word	1397967904
	.ascii	"xst\000"
	.word	1397311264
	.ascii	"xwo\000"
	.word	1414480928
	.ascii	"yao\000"
	.word	1497452320
	.ascii	"yi\000"
	.space	1
	.word	1246316832
	.ascii	"yo\000"
	.space	1
	.word	1497514272
	.ascii	"yso\000"
	.word	1313428256
	.ascii	"za\000"
	.space	1
	.word	1514684704
	.ascii	"zea\000"
	.word	1514488096
	.ascii	"zne\000"
	.word	1515078688
	.ascii	"zu\000"
	.space	1
	.word	1515539488
	.ascii	"zum\000"
	.word	1280459552
	.section	.rodata._ZL15ot_languages_zh,"a",%progbits
	.align	2
	.type	_ZL15ot_languages_zh, %object
	.size	_ZL15ot_languages_zh, 84
_ZL15ot_languages_zh:
	.ascii	"zh-cn\000"
	.space	2
	.word	1514689312
	.ascii	"zh-hk\000"
	.space	2
	.word	1514686496
	.ascii	"zh-mo\000"
	.space	2
	.word	1514689568
	.ascii	"zh-sg\000"
	.space	2
	.word	1514689312
	.ascii	"zh-tw\000"
	.space	2
	.word	1514689568
	.ascii	"zh-hans\000"
	.word	1514689312
	.ascii	"zh-hant\000"
	.word	1514689568
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
