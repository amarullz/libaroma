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
	.file	"hb-shaper.cc"
	.section	.bss._ZL14static_shapers,"aw",%nobits
	.align	2
	.type	_ZL14static_shapers, %object
	.size	_ZL14static_shapers, 4
_ZL14static_shapers:
	.space	4
	.section	.rodata
	.align	2
.LC0:
	.ascii	"HB_SHAPER_LIST\000"
	.section	.text._Z15_hb_shapers_getv,"ax",%progbits
	.align	2
	.global	_Z15_hb_shapers_getv
	.hidden	_Z15_hb_shapers_getv
	.thumb
	.thumb_func
	.type	_Z15_hb_shapers_getv, %function
_Z15_hb_shapers_getv:
	.fnstart
.LFB59:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #0
.L2:
	ldr	r3, .L21
.LPIC0:
	add	r3, pc
	ldr	r3, [r3]
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bne	.L3
	ldr	r3, .L21+4
.LPIC1:
	add	r3, pc
	mov	r0, r3
	bl	getenv(PLT)
	str	r0, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L4
	ldr	r3, [r7, #24]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L5
.L4:
	ldr	r3, .L21+8
.LPIC2:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L6
	ldr	r3, .L21+12
.LPIC3:
	add	r3, pc
	ldr	r2, .L21+16
.LPIC4:
	add	r2, pc
	str	r2, [r3]
.L6:
	ldr	r3, .L21+20
.LPIC5:
	add	r3, pc
	b	.L7
.L5:
	movs	r0, #20
	bl	malloc(PLT)
	mov	r3, r0
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bne	.L8
	ldr	r3, .L21+24
.LPIC6:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L9
	ldr	r3, .L21+28
.LPIC7:
	add	r3, pc
	ldr	r2, .L21+32
.LPIC8:
	add	r2, pc
	str	r2, [r3]
.L9:
	ldr	r3, .L21+36
.LPIC9:
	add	r3, pc
	b	.L7
.L8:
	ldr	r0, [r7, #44]
	ldr	r3, .L21+40
.LPIC10:
	add	r3, pc
	mov	r1, r3
	movs	r2, #20
	bl	memcpy(PLT)
	movs	r3, #0
	str	r3, [r7, #40]
	ldr	r3, [r7, #24]
	str	r3, [r7, #32]
.L16:
	ldr	r0, [r7, #32]
	movs	r1, #44
	bl	strchr(PLT)
	str	r0, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L10
	ldr	r0, [r7, #32]
	bl	strlen(PLT)
	mov	r3, r0
	ldr	r2, [r7, #32]
	add	r3, r3, r2
	str	r3, [r7, #36]
.L10:
	ldr	r3, [r7, #40]
	str	r3, [r7, #28]
	b	.L11
.L13:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #32]
	subs	r4, r2, r3
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	mov	r0, r3
	bl	strlen(PLT)
	mov	r3, r0
	cmp	r4, r3
	bne	.L12
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	mov	r2, r3
	ldr	r1, [r7, #36]
	ldr	r3, [r7, #32]
	subs	r3, r1, r3
	mov	r0, r2
	ldr	r1, [r7, #32]
	mov	r2, r3
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L12
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	adds	r4, r7, #4
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7, #40]
	adds	r2, r3, #1
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #44]
	adds	r0, r2, r3
	ldr	r2, [r7, #40]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #44]
	adds	r1, r2, r3
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #40]
	subs	r2, r2, r3
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, r3
	bl	memmove(PLT)
	ldr	r2, [r7, #40]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	mov	r4, r3
	adds	r5, r7, #4
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	str	r3, [r7, #40]
.L12:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L11:
	ldr	r3, .L21+44
.LPIC11:
	add	r3, pc
	mov	r0, r3
	bl	_Z12ARRAY_LENGTHI16hb_shaper_pair_tLj1EEjRAT0__KT_(PLT)
	mov	r2, r0
	ldr	r3, [r7, #28]
	cmp	r2, r3
	ite	hi
	movhi	r3, #1
	movls	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L13
	ldr	r3, [r7, #36]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L14
	nop
	ldr	r3, .L21+48
.LPIC12:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L17
	b	.L20
.L14:
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #32]
	b	.L16
.L20:
	ldr	r3, .L21+52
.LPIC13:
	add	r3, pc
	ldr	r2, [r7, #44]
	str	r2, [r3]
	movs	r3, #0
	b	.L18
.L17:
	movs	r3, #1
.L18:
	cmp	r3, #0
	beq	.L19
	ldr	r0, [r7, #44]
	bl	free(PLT)
	b	.L2
.L19:
.L3:
	ldr	r3, [r7, #44]
.L7:
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L22:
	.align	2
.L21:
	.word	_ZL14static_shapers-(.LPIC0+4)
	.word	.LC0-(.LPIC1+4)
	.word	_ZL14static_shapers-(.LPIC2+4)
	.word	_ZL14static_shapers-(.LPIC3+4)
	.word	_ZL11all_shapers-(.LPIC4+4)
	.word	_ZL11all_shapers-(.LPIC5+4)
	.word	_ZL14static_shapers-(.LPIC6+4)
	.word	_ZL14static_shapers-(.LPIC7+4)
	.word	_ZL11all_shapers-(.LPIC8+4)
	.word	_ZL11all_shapers-(.LPIC9+4)
	.word	_ZL11all_shapers-(.LPIC10+4)
	.word	_ZL11all_shapers-(.LPIC11+4)
	.word	_ZL14static_shapers-(.LPIC12+4)
	.word	_ZL14static_shapers-(.LPIC13+4)
	.cantunwind
	.fnend
	.size	_Z15_hb_shapers_getv, .-_Z15_hb_shapers_getv
	.section	.text._Z12ARRAY_LENGTHI16hb_shaper_pair_tLj1EEjRAT0__KT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z12ARRAY_LENGTHI16hb_shaper_pair_tLj1EEjRAT0__KT_, %function
_Z12ARRAY_LENGTHI16hb_shaper_pair_tLj1EEjRAT0__KT_:
	.fnstart
.LFB62:
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
	.size	_Z12ARRAY_LENGTHI16hb_shaper_pair_tLj1EEjRAT0__KT_, .-_Z12ARRAY_LENGTHI16hb_shaper_pair_tLj1EEjRAT0__KT_
	.section	.data.rel.ro._ZL11all_shapers,"aw",%progbits
	.align	2
	.type	_ZL11all_shapers, %object
	.size	_ZL11all_shapers, 20
_ZL11all_shapers:
	.ascii	"ot\000"
	.space	13
	.word	_hb_ot_shape
	.hidden	_hb_ot_shape
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
