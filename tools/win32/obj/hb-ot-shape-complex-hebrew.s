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
	.file	"hb-ot-shape-complex-hebrew.cc"
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
	beq	.L2
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L3
.L2:
	movs	r3, #0
	b	.L4
.L3:
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
.L4:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZN18hb_unicode_funcs_t7composeEjjPj, .-_ZN18hb_unicode_funcs_t7composeEjjPj
	.section	.text._ZL14compose_hebrewPK31hb_ot_shape_normalize_context_tjjPj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL14compose_hebrewPK31hb_ot_shape_normalize_context_tjjPj, %function
_ZL14compose_hebrewPK31hb_ot_shape_normalize_context_tjjPj:
	.fnstart
.LFB258:
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
	strb	r3, [r7, #23]
	ldrb	r3, [r7, #23]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L6
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldrb	r3, [r3, #988]
	ubfx	r3, r3, #2, #1
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L6
	ldr	r3, [r7, #4]
	subw	r3, r3, #1460
	cmp	r3, #14
	bhi	.L6
	adr	r1, .L9
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L9:
	.word	.L8+1-.L9
	.word	.L6+1-.L9
	.word	.L6+1-.L9
	.word	.L10+1-.L9
	.word	.L11+1-.L9
	.word	.L12+1-.L9
	.word	.L6+1-.L9
	.word	.L6+1-.L9
	.word	.L13+1-.L9
	.word	.L6+1-.L9
	.word	.L6+1-.L9
	.word	.L14+1-.L9
	.word	.L6+1-.L9
	.word	.L15+1-.L9
	.word	.L16+1-.L9
.L8:
	ldr	r2, [r7, #8]
	movw	r3, #1497
	cmp	r2, r3
	bne	.L17
	ldr	r3, [r7]
	movw	r2, #64285
	str	r2, [r3]
	movs	r3, #1
	strb	r3, [r7, #23]
.L17:
	b	.L7
.L10:
	ldr	r2, [r7, #8]
	movw	r3, #1522
	cmp	r2, r3
	bne	.L18
	ldr	r3, [r7]
	movw	r2, #64287
	str	r2, [r3]
	movs	r3, #1
	strb	r3, [r7, #23]
	b	.L19
.L18:
	ldr	r3, [r7, #8]
	cmp	r3, #1488
	bne	.L19
	ldr	r3, [r7]
	movw	r2, #64302
	str	r2, [r3]
	movs	r3, #1
	strb	r3, [r7, #23]
.L19:
	b	.L7
.L11:
	ldr	r3, [r7, #8]
	cmp	r3, #1488
	bne	.L20
	ldr	r3, [r7]
	movw	r2, #64303
	str	r2, [r3]
	movs	r3, #1
	strb	r3, [r7, #23]
.L20:
	b	.L7
.L12:
	ldr	r2, [r7, #8]
	movw	r3, #1493
	cmp	r2, r3
	bne	.L21
	ldr	r3, [r7]
	movw	r2, #64331
	str	r2, [r3]
	movs	r3, #1
	strb	r3, [r7, #23]
.L21:
	b	.L7
.L13:
	ldr	r3, [r7, #8]
	cmp	r3, #1488
	bcc	.L22
	ldr	r2, [r7, #8]
	movw	r3, #1514
	cmp	r2, r3
	bhi	.L22
	ldr	r3, [r7, #8]
	sub	r2, r3, #1488
	ldr	r3, .L34
.LPIC0:
	add	r3, pc
	ldr	r2, [r3, r2, lsl #2]
	ldr	r3, [r7]
	str	r2, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3]
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	strb	r3, [r7, #23]
	b	.L23
.L22:
	ldr	r2, [r7, #8]
	movw	r3, #64298
	cmp	r2, r3
	bne	.L24
	ldr	r3, [r7]
	movw	r2, #64300
	str	r2, [r3]
	movs	r3, #1
	strb	r3, [r7, #23]
	b	.L23
.L24:
	ldr	r2, [r7, #8]
	movw	r3, #64299
	cmp	r2, r3
	bne	.L23
	ldr	r3, [r7]
	movw	r2, #64301
	str	r2, [r3]
	movs	r3, #1
	strb	r3, [r7, #23]
.L23:
	b	.L7
.L14:
	ldr	r3, [r7, #8]
	movw	r2, #1499
	cmp	r3, r2
	beq	.L26
	movw	r2, #1508
	cmp	r3, r2
	beq	.L27
	movw	r2, #1489
	cmp	r3, r2
	beq	.L28
	b	.L7
.L28:
	ldr	r3, [r7]
	movw	r2, #64332
	str	r2, [r3]
	movs	r3, #1
	strb	r3, [r7, #23]
	b	.L25
.L26:
	ldr	r3, [r7]
	movw	r2, #64333
	str	r2, [r3]
	movs	r3, #1
	strb	r3, [r7, #23]
	b	.L25
.L27:
	ldr	r3, [r7]
	movw	r2, #64334
	str	r2, [r3]
	movs	r3, #1
	strb	r3, [r7, #23]
	nop
.L25:
	b	.L7
.L15:
	ldr	r2, [r7, #8]
	movw	r3, #1513
	cmp	r2, r3
	bne	.L29
	ldr	r3, [r7]
	movw	r2, #64298
	str	r2, [r3]
	movs	r3, #1
	strb	r3, [r7, #23]
	b	.L30
.L29:
	ldr	r2, [r7, #8]
	movw	r3, #64329
	cmp	r2, r3
	bne	.L30
	ldr	r3, [r7]
	movw	r2, #64300
	str	r2, [r3]
	movs	r3, #1
	strb	r3, [r7, #23]
.L30:
	b	.L7
.L16:
	ldr	r2, [r7, #8]
	movw	r3, #1513
	cmp	r2, r3
	bne	.L31
	ldr	r3, [r7]
	movw	r2, #64299
	str	r2, [r3]
	movs	r3, #1
	strb	r3, [r7, #23]
	b	.L32
.L31:
	ldr	r2, [r7, #8]
	movw	r3, #64329
	cmp	r2, r3
	bne	.L32
	ldr	r3, [r7]
	movw	r2, #64301
	str	r2, [r3]
	movs	r3, #1
	strb	r3, [r7, #23]
.L32:
	nop
.L7:
.L6:
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L35:
	.align	2
.L34:
	.word	_ZZL14compose_hebrewPK31hb_ot_shape_normalize_context_tjjPjE12sDageshForms-(.LPIC0+4)
	.fnend
	.size	_ZL14compose_hebrewPK31hb_ot_shape_normalize_context_tjjPj, .-_ZL14compose_hebrewPK31hb_ot_shape_normalize_context_tjjPj
	.hidden	_hb_ot_complex_shaper_hebrew
	.global	_hb_ot_complex_shaper_hebrew
	.section	.data.rel.ro.local._hb_ot_complex_shaper_hebrew,"aw",%progbits
	.align	2
	.type	_hb_ot_complex_shaper_hebrew, %object
	.size	_hb_ot_complex_shaper_hebrew, 52
_hb_ot_complex_shaper_hebrew:
	.ascii	"hebrew\000"
	.space	1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	2
	.word	0
	.word	_ZL14compose_hebrewPK31hb_ot_shape_normalize_context_tjjPj
	.word	0
	.word	3
	.byte	1
	.space	3
	.section	.rodata._ZL10table_tags,"a",%progbits
	.align	2
	.type	_ZL10table_tags, %object
	.size	_ZL10table_tags, 8
_ZL10table_tags:
	.word	1196643650
	.word	1196445523
	.section	.rodata._ZZL14compose_hebrewPK31hb_ot_shape_normalize_context_tjjPjE12sDageshForms,"a",%progbits
	.align	2
	.type	_ZZL14compose_hebrewPK31hb_ot_shape_normalize_context_tjjPjE12sDageshForms, %object
	.size	_ZZL14compose_hebrewPK31hb_ot_shape_normalize_context_tjjPjE12sDageshForms, 108
_ZZL14compose_hebrewPK31hb_ot_shape_normalize_context_tjjPjE12sDageshForms:
	.word	64304
	.word	64305
	.word	64306
	.word	64307
	.word	64308
	.word	64309
	.word	64310
	.word	0
	.word	64312
	.word	64313
	.word	64314
	.word	64315
	.word	64316
	.word	0
	.word	64318
	.word	0
	.word	64320
	.word	64321
	.word	0
	.word	64323
	.word	64324
	.word	0
	.word	64326
	.word	64327
	.word	64328
	.word	64329
	.word	64330
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
