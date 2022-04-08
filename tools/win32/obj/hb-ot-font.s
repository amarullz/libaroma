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
	.file	"hb-ot-font.cc"
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
	.section	.text._ZNK9hb_face_t15reference_tableEj,"axG",%progbits,_ZNK9hb_face_t15reference_tableEj,comdat
	.align	2
	.weak	_ZNK9hb_face_t15reference_tableEj
	.thumb
	.thumb_func
	.type	_ZNK9hb_face_t15reference_tableEj, %function
_ZNK9hb_face_t15reference_tableEj:
	.fnstart
.LFB84:
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
	ldr	r3, [r3, #48]
	cmp	r3, #0
	bne	.L7
	bl	hb_blob_get_empty(PLT)
	mov	r3, r0
	b	.L8
.L7:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #52]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	blx	r3
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L9
	bl	hb_blob_get_empty(PLT)
	mov	r3, r0
	b	.L8
.L9:
	ldr	r3, [r7, #12]
.L8:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK9hb_face_t15reference_tableEj, .-_ZNK9hb_face_t15reference_tableEj
	.section	.text._ZNK9hb_face_t8get_upemEv,"axG",%progbits,_ZNK9hb_face_t8get_upemEv,comdat
	.align	2
	.weak	_ZNK9hb_face_t8get_upemEv
	.thumb
	.thumb_func
	.type	_ZNK9hb_face_t8get_upemEv, %function
_ZNK9hb_face_t8get_upemEv:
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
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	cmp	r3, #0
	bne	.L11
	ldr	r0, [r7, #4]
	bl	_ZNK9hb_face_t9load_upemEv(PLT)
.L11:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK9hb_face_t8get_upemEv, .-_ZNK9hb_face_t8get_upemEv
	.section	.text._ZNK9hb_face_t14get_num_glyphsEv,"axG",%progbits,_ZNK9hb_face_t14get_num_glyphsEv,comdat
	.align	2
	.weak	_ZNK9hb_face_t14get_num_glyphsEv
	.thumb
	.thumb_func
	.type	_ZNK9hb_face_t14get_num_glyphsEv, %function
_ZNK9hb_face_t14get_num_glyphsEv:
	.fnstart
.LFB86:
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
	ldr	r3, [r3, #68]
	cmp	r3, #-1
	bne	.L14
	ldr	r0, [r7, #4]
	bl	_ZNK9hb_face_t15load_num_glyphsEv(PLT)
.L14:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #68]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK9hb_face_t14get_num_glyphsEv, .-_ZNK9hb_face_t14get_num_glyphsEv
	.section	.text._ZN9hb_font_t10em_scale_xEs,"axG",%progbits,_ZN9hb_font_t10em_scale_xEs,comdat
	.align	2
	.weak	_ZN9hb_font_t10em_scale_xEs
	.thumb
	.thumb_func
	.type	_ZN9hb_font_t10em_scale_xEs, %function
_ZN9hb_font_t10em_scale_xEs:
	.fnstart
.LFB89:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	ldrsh	r2, [r7, #2]
	ldr	r0, [r7, #4]
	mov	r1, r2
	mov	r2, r3
	bl	_ZN9hb_font_t8em_scaleEsi(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN9hb_font_t10em_scale_xEs, .-_ZN9hb_font_t10em_scale_xEs
	.section	.text._ZN9hb_font_t10em_scale_yEs,"axG",%progbits,_ZN9hb_font_t10em_scale_yEs,comdat
	.align	2
	.weak	_ZN9hb_font_t10em_scale_yEs
	.thumb
	.thumb_func
	.type	_ZN9hb_font_t10em_scale_yEs, %function
_ZN9hb_font_t10em_scale_yEs:
	.fnstart
.LFB90:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	ldrsh	r2, [r7, #2]
	ldr	r0, [r7, #4]
	mov	r1, r2
	mov	r2, r3
	bl	_ZN9hb_font_t8em_scaleEsi(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN9hb_font_t10em_scale_yEs, .-_ZN9hb_font_t10em_scale_yEs
	.global	__aeabi_ldivmod
	.section	.text._ZN9hb_font_t8em_scaleEsi,"axG",%progbits,_ZN9hb_font_t8em_scaleEsi,comdat
	.align	2
	.weak	_ZN9hb_font_t8em_scaleEsi
	.thumb
	.thumb_func
	.type	_ZN9hb_font_t8em_scaleEsi, %function
_ZN9hb_font_t8em_scaleEsi:
	.fnstart
.LFB119:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	.save {r4, r5, r6, r7, lr}
	.pad #20
	sub	sp, sp, #20
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	mov	r3, r1
	str	r2, [r7, #4]
	strh	r3, [r7, #10]	@ movhi
	ldrsh	r0, [r7, #10]
	asr	r1, r0, #31
	ldr	r3, [r7, #4]
	mov	r2, r3
	asr	r3, r2, #31
	mul	r5, r2, r1
	mul	r4, r0, r3
	adds	r6, r5, r4
	umull	r4, r5, r0, r2
	adds	r3, r6, r5
	mov	r5, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	mov	r0, r3
	bl	_ZNK9hb_face_t8get_upemEv(PLT)
	mov	r3, r0
	mov	r2, r3
	mov	r3, #0
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_ldivmod(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r3, r2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
	.fnend
	.size	_ZN9hb_font_t8em_scaleEsi, .-_ZN9hb_font_t8em_scaleEsi
	.section	.bss._ZN2OTL9_NullPoolE,"aw",%nobits
	.align	2
	.type	_ZN2OTL9_NullPoolE, %object
	.size	_ZN2OTL9_NullPoolE, 264
_ZN2OTL9_NullPoolE:
	.space	264
	.section	.rodata
	.align	2
.LC0:
	.ascii	"SANITIZE\000"
	.section	.text._ZN2OT21hb_sanitize_context_t8get_nameEv,"axG",%progbits,_ZN2OT21hb_sanitize_context_t8get_nameEv,comdat
	.align	2
	.weak	_ZN2OT21hb_sanitize_context_t8get_nameEv
	.thumb
	.thumb_func
	.type	_ZN2OT21hb_sanitize_context_t8get_nameEv, %function
_ZN2OT21hb_sanitize_context_t8get_nameEv:
	.fnstart
.LFB129:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, .L24
.LPIC0:
	add	r3, pc
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L25:
	.align	2
.L24:
	.word	.LC0-(.LPIC0+4)
	.cantunwind
	.fnend
	.size	_ZN2OT21hb_sanitize_context_t8get_nameEv, .-_ZN2OT21hb_sanitize_context_t8get_nameEv
	.section	.text._ZN2OT21hb_sanitize_context_t4initEP9hb_blob_t,"axG",%progbits,_ZN2OT21hb_sanitize_context_t4initEP9hb_blob_t,comdat
	.align	2
	.weak	_ZN2OT21hb_sanitize_context_t4initEP9hb_blob_t
	.thumb
	.thumb_func
	.type	_ZN2OT21hb_sanitize_context_t4initEP9hb_blob_t, %function
_ZN2OT21hb_sanitize_context_t4initEP9hb_blob_t:
	.fnstart
.LFB133:
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
	ldr	r0, [r7]
	bl	hb_blob_reference(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #12]
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OT21hb_sanitize_context_t4initEP9hb_blob_t, .-_ZN2OT21hb_sanitize_context_t4initEP9hb_blob_t
	.section	.rodata
	.align	2
.LC1:
	.ascii	"this->start <= this->end\000"
	.align	2
.LC2:
	.ascii	"../../../libs/harfbuzz-ng/src/hb-open-type-private."
	.ascii	"hh\000"
	.align	2
.LC3:
	.ascii	"start [%p..%p] (%lu bytes)\000"
	.section	.text._ZN2OT21hb_sanitize_context_t16start_processingEv,"axG",%progbits,_ZN2OT21hb_sanitize_context_t16start_processingEv,comdat
	.align	2
	.weak	_ZN2OT21hb_sanitize_context_t16start_processingEv
	.thumb
	.thumb_func
	.type	_ZN2OT21hb_sanitize_context_t16start_processingEv, %function
_ZN2OT21hb_sanitize_context_t16start_processingEv:
	.fnstart
.LFB134:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #36
	sub	sp, sp, #36
	.setfp r7, sp, #24
	add	r7, sp, #24
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	mov	r0, r3
	movs	r1, #0
	bl	hb_blob_get_data(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	mov	r0, r3
	bl	hb_blob_get_length(PLT)
	mov	r3, r0
	adds	r2, r4, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	bls	.L28
	ldr	r3, .L29
.LPIC1:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L29+4
.LPIC2:
	add	r3, pc
	mov	r1, r3
	movs	r2, #197
	ldr	r3, .L29+8
.LPIC3:
	add	r3, pc
	bl	__assert_fail(PLT)
.L28:
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #4]
	ldr	r0, [r2, #4]
	ldr	r2, [r7, #4]
	ldr	r1, [r2, #8]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #8]
	mov	r4, r2
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #4]
	subs	r2, r4, r2
	movs	r4, #0
	str	r4, [sp]
	movs	r4, #1
	str	r4, [sp, #4]
	ldr	r4, .L29+12
.LPIC4:
	add	r4, pc
	str	r4, [sp, #8]
	str	r0, [sp, #12]
	str	r1, [sp, #16]
	str	r2, [sp, #20]
	ldr	r2, .L29+16
.LPIC5:
	add	r2, pc
	mov	r0, r2
	mov	r1, r3
	movs	r2, #0
	movs	r3, #1
	bl	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z(PLT)
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L30:
	.align	2
.L29:
	.word	.LC1-(.LPIC1+4)
	.word	.LC2-(.LPIC2+4)
	.word	_ZZN2OT21hb_sanitize_context_t16start_processingEvE19__PRETTY_FUNCTION__-(.LPIC3+4)
	.word	.LC3-(.LPIC4+4)
	.word	.LC0-(.LPIC5+4)
	.fnend
	.size	_ZN2OT21hb_sanitize_context_t16start_processingEv, .-_ZN2OT21hb_sanitize_context_t16start_processingEv
	.section	.rodata
	.align	2
.LC4:
	.ascii	"end [%p..%p] %u edit requests\000"
	.section	.text._ZN2OT21hb_sanitize_context_t14end_processingEv,"axG",%progbits,_ZN2OT21hb_sanitize_context_t14end_processingEv,comdat
	.align	2
	.weak	_ZN2OT21hb_sanitize_context_t14end_processingEv
	.thumb
	.thumb_func
	.type	_ZN2OT21hb_sanitize_context_t14end_processingEv, %function
_ZN2OT21hb_sanitize_context_t14end_processingEv:
	.fnstart
.LFB135:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #36
	sub	sp, sp, #36
	.setfp r7, sp, #24
	add	r7, sp, #24
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #4]
	ldr	r0, [r2, #4]
	ldr	r2, [r7, #4]
	ldr	r1, [r2, #8]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #16]
	movs	r4, #0
	str	r4, [sp]
	mov	r4, #-1
	str	r4, [sp, #4]
	ldr	r4, .L32
.LPIC6:
	add	r4, pc
	str	r4, [sp, #8]
	str	r0, [sp, #12]
	str	r1, [sp, #16]
	str	r2, [sp, #20]
	ldr	r2, .L32+4
.LPIC7:
	add	r2, pc
	mov	r0, r2
	mov	r1, r3
	movs	r2, #0
	movs	r3, #1
	bl	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	mov	r0, r3
	bl	hb_blob_destroy(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L33:
	.align	2
.L32:
	.word	.LC4-(.LPIC6+4)
	.word	.LC0-(.LPIC7+4)
	.fnend
	.size	_ZN2OT21hb_sanitize_context_t14end_processingEv, .-_ZN2OT21hb_sanitize_context_t14end_processingEv
	.section	.rodata
	.align	2
.LC5:
	.ascii	"OK\000"
	.align	2
.LC6:
	.ascii	"OUT-OF-RANGE\000"
	.align	2
.LC7:
	.ascii	"check_range [%p..%p] (%d bytes) in [%p..%p] -> %s\000"
	.section	.text._ZNK2OT21hb_sanitize_context_t11check_rangeEPKvj,"axG",%progbits,_ZNK2OT21hb_sanitize_context_t11check_rangeEPKvj,comdat
	.align	2
	.weak	_ZNK2OT21hb_sanitize_context_t11check_rangeEPKvj
	.thumb
	.thumb_func
	.type	_ZNK2OT21hb_sanitize_context_t11check_rangeEPKvj, %function
_ZNK2OT21hb_sanitize_context_t11check_rangeEPKvj:
	.fnstart
.LFB136:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #68
	add	r7, sp, #40
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #8]
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bhi	.L35
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcc	.L35
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	mov	r2, r3
	ldr	r3, [r7, #20]
	subs	r3, r2, r3
	mov	r2, r3
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcc	.L35
	movs	r3, #1
	b	.L36
.L35:
	movs	r3, #0
.L36:
	strb	r3, [r7, #19]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r4, r3, #1
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #4]
	adds	r0, r2, r3
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L37
	ldr	r3, .L40
.LPIC8:
	add	r3, pc
	b	.L38
.L37:
	ldr	r3, .L40+4
.LPIC9:
	add	r3, pc
.L38:
	str	r4, [sp]
	movs	r4, #0
	str	r4, [sp, #4]
	ldr	r4, .L40+8
.LPIC10:
	add	r4, pc
	str	r4, [sp, #8]
	ldr	r4, [r7, #20]
	str	r4, [sp, #12]
	str	r0, [sp, #16]
	ldr	r0, [r7, #4]
	str	r0, [sp, #20]
	str	r1, [sp, #24]
	str	r2, [sp, #28]
	str	r3, [sp, #32]
	ldr	r3, .L40+12
.LPIC11:
	add	r3, pc
	mov	r0, r3
	ldr	r1, [r7, #20]
	movs	r2, #0
	movs	r3, #1
	bl	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z(PLT)
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L41:
	.align	2
.L40:
	.word	.LC5-(.LPIC8+4)
	.word	.LC6-(.LPIC9+4)
	.word	.LC7-(.LPIC10+4)
	.word	.LC0-(.LPIC11+4)
	.cantunwind
	.fnend
	.size	_ZNK2OT21hb_sanitize_context_t11check_rangeEPKvj, .-_ZNK2OT21hb_sanitize_context_t11check_rangeEPKvj
	.section	.rodata
	.align	2
.LC8:
	.ascii	"OVERFLOWS\000"
	.align	2
.LC9:
	.ascii	"check_array [%p..%p] (%d*%d=%d bytes) in [%p..%p] -"
	.ascii	"> %s\000"
	.section	.text._ZNK2OT21hb_sanitize_context_t11check_arrayEPKvjj,"axG",%progbits,_ZNK2OT21hb_sanitize_context_t11check_arrayEPKvjj,comdat
	.align	2
	.weak	_ZNK2OT21hb_sanitize_context_t11check_arrayEPKvjj
	.thumb
	.thumb_func
	.type	_ZNK2OT21hb_sanitize_context_t11check_arrayEPKvjj, %function
_ZNK2OT21hb_sanitize_context_t11check_arrayEPKvjj:
	.fnstart
.LFB137:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #84
	add	r7, sp, #48
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #8]
	str	r3, [r7, #28]
	ldr	r0, [r7]
	ldr	r1, [r7, #4]
	bl	_ZL30_hb_unsigned_int_mul_overflowsjj(PLT)
	mov	r3, r0
	strb	r3, [r7, #27]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	mul	r3, r2, r3
	str	r3, [r7, #20]
	ldrb	r3, [r7, #27]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L43
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #20]
	bl	_ZNK2OT21hb_sanitize_context_t11check_rangeEPKvj(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L43
	movs	r3, #1
	b	.L44
.L43:
	movs	r3, #0
.L44:
	strb	r3, [r7, #19]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r4, r3, #1
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	mul	r3, r2, r3
	ldr	r2, [r7, #28]
	adds	r0, r2, r3
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldrb	r3, [r7, #27]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L45
	ldr	r3, .L50
.LPIC12:
	add	r3, pc
	b	.L46
.L45:
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L47
	ldr	r3, .L50+4
.LPIC13:
	add	r3, pc
	b	.L46
.L47:
	ldr	r3, .L50+8
.LPIC14:
	add	r3, pc
.L46:
	str	r4, [sp]
	movs	r4, #0
	str	r4, [sp, #4]
	ldr	r4, .L50+12
.LPIC15:
	add	r4, pc
	str	r4, [sp, #8]
	ldr	r4, [r7, #28]
	str	r4, [sp, #12]
	str	r0, [sp, #16]
	ldr	r0, [r7, #4]
	str	r0, [sp, #20]
	ldr	r0, [r7]
	str	r0, [sp, #24]
	ldr	r0, [r7, #20]
	str	r0, [sp, #28]
	str	r1, [sp, #32]
	str	r2, [sp, #36]
	str	r3, [sp, #40]
	ldr	r3, .L50+16
.LPIC16:
	add	r3, pc
	mov	r0, r3
	ldr	r1, [r7, #28]
	movs	r2, #0
	movs	r3, #1
	bl	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z(PLT)
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L51:
	.align	2
.L50:
	.word	.LC8-(.LPIC12+4)
	.word	.LC5-(.LPIC13+4)
	.word	.LC6-(.LPIC14+4)
	.word	.LC9-(.LPIC15+4)
	.word	.LC0-(.LPIC16+4)
	.cantunwind
	.fnend
	.size	_ZNK2OT21hb_sanitize_context_t11check_arrayEPKvjj, .-_ZNK2OT21hb_sanitize_context_t11check_arrayEPKvjj
	.section	.rodata
	.align	2
.LC10:
	.ascii	"GRANTED\000"
	.align	2
.LC11:
	.ascii	"DENIED\000"
	.align	2
.LC12:
	.ascii	"may_edit(%u) [%p..%p] (%d bytes) in [%p..%p] -> %s\000"
	.section	.text._ZN2OT21hb_sanitize_context_t8may_editEPKvj,"axG",%progbits,_ZN2OT21hb_sanitize_context_t8may_editEPKvj,comdat
	.align	2
	.weak	_ZN2OT21hb_sanitize_context_t8may_editEPKvj
	.thumb
	.thumb_func
	.type	_ZN2OT21hb_sanitize_context_t8may_editEPKvj, %function
_ZN2OT21hb_sanitize_context_t8may_editEPKvj:
	.fnstart
.LFB139:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #64
	add	r7, sp, #40
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	cmp	r3, #99
	bls	.L53
	movs	r3, #0
	b	.L54
.L53:
	ldr	r3, [r7, #8]
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r5, r3, #1
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #16]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #4]
	adds	r0, r2, r3
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L55
	ldr	r3, .L57
.LPIC17:
	add	r3, pc
	b	.L56
.L55:
	ldr	r3, .L57+4
.LPIC18:
	add	r3, pc
.L56:
	str	r5, [sp]
	movs	r5, #0
	str	r5, [sp, #4]
	ldr	r5, .L57+8
.LPIC19:
	add	r5, pc
	str	r5, [sp, #8]
	str	r4, [sp, #12]
	ldr	r4, [r7, #20]
	str	r4, [sp, #16]
	str	r0, [sp, #20]
	ldr	r0, [r7, #4]
	str	r0, [sp, #24]
	str	r1, [sp, #28]
	str	r2, [sp, #32]
	str	r3, [sp, #36]
	ldr	r3, .L57+12
.LPIC20:
	add	r3, pc
	mov	r0, r3
	ldr	r1, [r7, #20]
	movs	r2, #0
	movs	r3, #1
	bl	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z(PLT)
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
.L54:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L58:
	.align	2
.L57:
	.word	.LC10-(.LPIC17+4)
	.word	.LC11-(.LPIC18+4)
	.word	.LC12-(.LPIC19+4)
	.word	.LC0-(.LPIC20+4)
	.cantunwind
	.fnend
	.size	_ZN2OT21hb_sanitize_context_t8may_editEPKvj, .-_ZN2OT21hb_sanitize_context_t8may_editEPKvj
	.section	.text._ZNK2OT19CmapSubtableFormat09get_glyphEjPj,"axG",%progbits,_ZNK2OT19CmapSubtableFormat09get_glyphEjPj,comdat
	.align	2
	.weak	_ZNK2OT19CmapSubtableFormat09get_glyphEjPj
	.thumb
	.thumb_func
	.type	_ZNK2OT19CmapSubtableFormat09get_glyphEjPj, %function
_ZNK2OT19CmapSubtableFormat09get_glyphEjPj:
	.fnstart
.LFB227:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #8]
	cmp	r3, #255
	bhi	.L60
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	adds	r3, r3, #6
	ldrb	r3, [r3]	@ zero_extendqisi2
	b	.L61
.L60:
	movs	r3, #0
.L61:
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L62
	movs	r3, #0
	b	.L63
.L62:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #20]
	str	r2, [r3]
	movs	r3, #1
.L63:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNK2OT19CmapSubtableFormat09get_glyphEjPj, .-_ZNK2OT19CmapSubtableFormat09get_glyphEjPj
	.section	.rodata
	.align	2
.LC13:
	.ascii	"\000"
	.section	.text._ZN2OT19CmapSubtableFormat08sanitizeEPNS_21hb_sanitize_context_tE,"axG",%progbits,_ZN2OT19CmapSubtableFormat08sanitizeEPNS_21hb_sanitize_context_tE,comdat
	.align	2
	.weak	_ZN2OT19CmapSubtableFormat08sanitizeEPNS_21hb_sanitize_context_tE
	.thumb
	.thumb_func
	.type	_ZN2OT19CmapSubtableFormat08sanitizeEPNS_21hb_sanitize_context_tE, %function
_ZN2OT19CmapSubtableFormat08sanitizeEPNS_21hb_sanitize_context_tE:
	.fnstart
.LFB228:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #28
	sub	sp, sp, #28
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r4, [r7]
	ldr	r0, [r7]
	bl	_ZN2OT21hb_sanitize_context_t8get_nameEv(PLT)
	mov	r3, r0
	add	r2, r7, #12
	ldr	r1, .L66
.LPIC21:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L66+4
.LPIC22:
	add	r1, pc
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r4
	mov	r2, r3
	ldr	r3, [r7, #4]
	bl	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z(PLT)
	ldr	r0, [r7]
	ldr	r1, [r7, #4]
	bl	_ZNK2OT21hb_sanitize_context_t12check_structINS_19CmapSubtableFormat0EEEbPKT_(PLT)
	mov	r3, r0
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	movs	r2, #56
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L67:
	.align	2
.L66:
	.word	_ZZN2OT19CmapSubtableFormat08sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__-(.LPIC21+4)
	.word	.LC13-(.LPIC22+4)
	.fnend
	.size	_ZN2OT19CmapSubtableFormat08sanitizeEPNS_21hb_sanitize_context_tE, .-_ZN2OT19CmapSubtableFormat08sanitizeEPNS_21hb_sanitize_context_tE
	.section	.text._ZNK2OT19CmapSubtableFormat49get_glyphEjPj,"axG",%progbits,_ZNK2OT19CmapSubtableFormat49get_glyphEjPj,comdat
	.align	2
	.weak	_ZNK2OT19CmapSubtableFormat49get_glyphEjPj
	.thumb
	.thumb_func
	.type	_ZNK2OT19CmapSubtableFormat49get_glyphEjPj, %function
_ZNK2OT19CmapSubtableFormat49get_glyphEjPj:
	.fnstart
.LFB230:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #76
	sub	sp, sp, #76
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	adds	r3, r3, #6
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	lsrs	r3, r3, #1
	uxth	r3, r3
	str	r3, [r7, #56]
	ldr	r3, [r7, #12]
	adds	r3, r3, #14
	str	r3, [r7, #52]
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	lsls	r3, r3, #1
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #56]
	lsls	r3, r3, #1
	ldr	r2, [r7, #48]
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #56]
	lsls	r3, r3, #1
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #56]
	lsls	r3, r3, #1
	ldr	r2, [r7, #40]
	add	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #12]
	adds	r3, r3, #2
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #56]
	lsls	r3, r3, #3
	subs	r3, r2, r3
	subs	r3, r3, #16
	lsrs	r3, r3, #1
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #68]
	ldr	r3, [r7, #56]
	subs	r3, r3, #1
	str	r3, [r7, #64]
	b	.L69
.L73:
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #64]
	add	r3, r3, r2
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	lsls	r3, r3, #1
	ldr	r2, [r7, #48]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #8]
	cmp	r2, r3
	ite	hi
	movhi	r3, #1
	movls	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L70
	ldr	r3, [r7, #28]
	subs	r3, r3, #1
	str	r3, [r7, #64]
	b	.L69
.L70:
	ldr	r3, [r7, #28]
	lsls	r3, r3, #1
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #8]
	cmp	r2, r3
	ite	cc
	movcc	r3, #1
	movcs	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L71
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #68]
	b	.L69
.L71:
	ldr	r3, [r7, #28]
	str	r3, [r7, #24]
	nop
.L72:
	ldr	r3, [r7, #24]
	lsls	r3, r3, #1
	ldr	r2, [r7, #40]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L75
	b	.L79
.L69:
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #64]
	cmp	r2, r3
	ble	.L73
	movs	r3, #0
	b	.L74
.L79:
	ldr	r3, [r7, #24]
	lsls	r3, r3, #1
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	str	r3, [r7, #60]
	b	.L76
.L75:
	ldr	r3, [r7, #20]
	lsrs	r4, r3, #1
	ldr	r3, [r7, #24]
	lsls	r3, r3, #1
	ldr	r2, [r7, #48]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	ldr	r2, [r7, #8]
	subs	r3, r2, r3
	adds	r2, r4, r3
	ldr	r3, [r7, #24]
	add	r2, r2, r3
	ldr	r3, [r7, #56]
	subs	r3, r2, r3
	str	r3, [r7, #16]
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bcc	.L77
	movs	r3, #0
	b	.L74
.L77:
	ldr	r3, [r7, #16]
	lsls	r3, r3, #1
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	cmp	r3, #0
	bne	.L78
	movs	r3, #0
	b	.L74
.L78:
	ldr	r3, [r7, #24]
	lsls	r3, r3, #1
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	ldr	r2, [r7, #60]
	add	r3, r3, r2
	str	r3, [r7, #60]
.L76:
	ldr	r3, [r7, #60]
	uxth	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
	movs	r3, #1
.L74:
	mov	r0, r3
	adds	r7, r7, #76
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZNK2OT19CmapSubtableFormat49get_glyphEjPj, .-_ZNK2OT19CmapSubtableFormat49get_glyphEjPj
	.section	.text._ZN2OT19CmapSubtableFormat48sanitizeEPNS_21hb_sanitize_context_tE,"axG",%progbits,_ZN2OT19CmapSubtableFormat48sanitizeEPNS_21hb_sanitize_context_tE,comdat
	.align	2
	.weak	_ZN2OT19CmapSubtableFormat48sanitizeEPNS_21hb_sanitize_context_tE
	.thumb
	.thumb_func
	.type	_ZN2OT19CmapSubtableFormat48sanitizeEPNS_21hb_sanitize_context_tE, %function
_ZN2OT19CmapSubtableFormat48sanitizeEPNS_21hb_sanitize_context_tE:
	.fnstart
.LFB231:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #36
	sub	sp, sp, #36
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r4, [r7]
	ldr	r0, [r7]
	bl	_ZN2OT21hb_sanitize_context_t8get_nameEv(PLT)
	mov	r3, r0
	add	r2, r7, #12
	ldr	r1, .L86
.LPIC23:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L86+4
.LPIC24:
	add	r1, pc
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r4
	mov	r2, r3
	ldr	r3, [r7, #4]
	bl	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z(PLT)
	ldr	r0, [r7]
	ldr	r1, [r7, #4]
	bl	_ZNK2OT21hb_sanitize_context_t12check_structINS_19CmapSubtableFormat4EEEbPKT_(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L81
	add	r3, r7, #12
	mov	r0, r3
	movs	r1, #0
	movs	r2, #132
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L85
.L81:
	ldr	r3, [r7, #4]
	adds	r3, r3, #2
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	ldr	r0, [r7]
	ldr	r1, [r7, #4]
	mov	r2, r3
	bl	_ZNK2OT21hb_sanitize_context_t11check_rangeEPKvj(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L83
	movw	r3, #65535
	str	r3, [r7, #16]
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	mov	r2, r3
	ldr	r3, [r7, #4]
	subs	r3, r2, r3
	str	r3, [r7, #20]
	add	r2, r7, #16
	add	r3, r7, #20
	mov	r0, r2
	mov	r1, r3
	bl	_Z3MINIjET_RKS0_S2_(PLT)
	mov	r3, r0
	uxth	r3, r3
	strh	r3, [r7, #10]	@ movhi
	ldr	r3, [r7, #4]
	adds	r2, r3, #2
	add	r3, r7, #10
	ldr	r0, [r7]
	mov	r1, r2
	mov	r2, r3
	bl	_ZN2OT21hb_sanitize_context_t7try_setINS_7IntTypeItLj2EEEtEEbPT_RKT0_(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L84
	add	r3, r7, #12
	mov	r0, r3
	movs	r1, #0
	movs	r2, #143
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L85
.L84:
.L83:
	ldr	r3, [r7, #4]
	adds	r3, r3, #6
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	adds	r3, r3, #4
	lsls	r4, r3, #2
	ldr	r3, [r7, #4]
	adds	r3, r3, #2
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	cmp	r4, r3
	ite	ls
	movls	r3, #1
	movhi	r3, #0
	uxtb	r3, r3
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	movs	r2, #146
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
.L85:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L87:
	.align	2
.L86:
	.word	_ZZN2OT19CmapSubtableFormat48sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__-(.LPIC23+4)
	.word	.LC13-(.LPIC24+4)
	.fnend
	.size	_ZN2OT19CmapSubtableFormat48sanitizeEPNS_21hb_sanitize_context_tE, .-_ZN2OT19CmapSubtableFormat48sanitizeEPNS_21hb_sanitize_context_tE
	.section	.text._ZNK2OT21CmapSubtableLongGroup3cmpEj,"axG",%progbits,_ZNK2OT21CmapSubtableLongGroup3cmpEj,comdat
	.align	2
	.weak	_ZNK2OT21CmapSubtableLongGroup3cmpEj
	.thumb
	.thumb_func
	.type	_ZNK2OT21CmapSubtableLongGroup3cmpEj, %function
_ZNK2OT21CmapSubtableLongGroup3cmpEj:
	.fnstart
.LFB234:
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
	bl	_ZNK2OT7IntTypeIjLj4EEcvjEv(PLT)
	mov	r2, r0
	ldr	r3, [r7]
	cmp	r2, r3
	ite	hi
	movhi	r3, #1
	movls	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L89
	mov	r3, #-1
	b	.L90
.L89:
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZNK2OT7IntTypeIjLj4EEcvjEv(PLT)
	mov	r2, r0
	ldr	r3, [r7]
	cmp	r2, r3
	ite	cc
	movcc	r3, #1
	movcs	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L91
	movs	r3, #1
	b	.L90
.L91:
	movs	r3, #0
.L90:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT21CmapSubtableLongGroup3cmpEj, .-_ZNK2OT21CmapSubtableLongGroup3cmpEj
	.section	.text._ZN2OT20CmapSubtableFormat1215group_get_glyphERKNS_21CmapSubtableLongGroupEj,"axG",%progbits,_ZN2OT20CmapSubtableFormat1215group_get_glyphERKNS_21CmapSubtableLongGroupEj,comdat
	.align	2
	.weak	_ZN2OT20CmapSubtableFormat1215group_get_glyphERKNS_21CmapSubtableLongGroupEj
	.thumb
	.thumb_func
	.type	_ZN2OT20CmapSubtableFormat1215group_get_glyphERKNS_21CmapSubtableLongGroupEj, %function
_ZN2OT20CmapSubtableFormat1215group_get_glyphERKNS_21CmapSubtableLongGroupEj:
	.fnstart
.LFB245:
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
	adds	r3, r3, #8
	mov	r0, r3
	bl	_ZNK2OT7IntTypeIjLj4EEcvjEv(PLT)
	mov	r4, r0
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZNK2OT7IntTypeIjLj4EEcvjEv(PLT)
	mov	r3, r0
	ldr	r2, [r7]
	subs	r3, r2, r3
	add	r3, r3, r4
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZN2OT20CmapSubtableFormat1215group_get_glyphERKNS_21CmapSubtableLongGroupEj, .-_ZN2OT20CmapSubtableFormat1215group_get_glyphERKNS_21CmapSubtableLongGroupEj
	.section	.text._ZN2OT20CmapSubtableFormat1315group_get_glyphERKNS_21CmapSubtableLongGroupEj,"axG",%progbits,_ZN2OT20CmapSubtableFormat1315group_get_glyphERKNS_21CmapSubtableLongGroupEj,comdat
	.align	2
	.weak	_ZN2OT20CmapSubtableFormat1315group_get_glyphERKNS_21CmapSubtableLongGroupEj
	.thumb
	.thumb_func
	.type	_ZN2OT20CmapSubtableFormat1315group_get_glyphERKNS_21CmapSubtableLongGroupEj, %function
_ZN2OT20CmapSubtableFormat1315group_get_glyphERKNS_21CmapSubtableLongGroupEj:
	.fnstart
.LFB246:
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
	adds	r3, r3, #8
	mov	r0, r3
	bl	_ZNK2OT7IntTypeIjLj4EEcvjEv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OT20CmapSubtableFormat1315group_get_glyphERKNS_21CmapSubtableLongGroupEj, .-_ZN2OT20CmapSubtableFormat1315group_get_glyphERKNS_21CmapSubtableLongGroupEj
	.section	.text._ZNK2OT17UnicodeValueRange3cmpERKj,"axG",%progbits,_ZNK2OT17UnicodeValueRange3cmpERKj,comdat
	.align	2
	.weak	_ZNK2OT17UnicodeValueRange3cmpERKj
	.thumb
	.thumb_func
	.type	_ZNK2OT17UnicodeValueRange3cmpERKj, %function
_ZNK2OT17UnicodeValueRange3cmpERKj:
	.fnstart
.LFB247:
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
	ldr	r3, [r7]
	ldr	r4, [r3]
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZNK2OT7IntTypeIjLj3EEcvjEv(PLT)
	mov	r3, r0
	cmp	r4, r3
	ite	cc
	movcc	r3, #1
	movcs	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L97
	mov	r3, #-1
	b	.L98
.L97:
	ldr	r3, [r7]
	ldr	r4, [r3]
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZNK2OT7IntTypeIjLj3EEcvjEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	add	r3, r3, r2
	cmp	r4, r3
	ite	hi
	movhi	r3, #1
	movls	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L99
	movs	r3, #1
	b	.L98
.L99:
	movs	r3, #0
.L98:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZNK2OT17UnicodeValueRange3cmpERKj, .-_ZNK2OT17UnicodeValueRange3cmpERKj
	.section	.text._ZNK2OT10UVSMapping3cmpERKj,"axG",%progbits,_ZNK2OT10UVSMapping3cmpERKj,comdat
	.align	2
	.weak	_ZNK2OT10UVSMapping3cmpERKj
	.thumb
	.thumb_func
	.type	_ZNK2OT10UVSMapping3cmpERKj, %function
_ZNK2OT10UVSMapping3cmpERKj:
	.fnstart
.LFB250:
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
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK2OT7IntTypeIjLj3EE3cmpEj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT10UVSMapping3cmpERKj, .-_ZNK2OT10UVSMapping3cmpERKj
	.section	.text._ZNK2OT23VariationSelectorRecord9get_glyphEjPjPKv,"axG",%progbits,_ZNK2OT23VariationSelectorRecord9get_glyphEjPjPKv,comdat
	.align	2
	.weak	_ZNK2OT23VariationSelectorRecord9get_glyphEjPjPKv
	.thumb
	.thumb_func
	.type	_ZNK2OT23VariationSelectorRecord9get_glyphEjPjPKv, %function
_ZNK2OT23VariationSelectorRecord9get_glyphEjPjPKv:
	.fnstart
.LFB253:
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
	ldr	r3, [r7, #12]
	adds	r3, r3, #3
	mov	r2, r7
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OTplIPKvNS_7IntTypeIjLj4EEENS_13SortedArrayOfINS_17UnicodeValueRangeES4_EEEERKT1_RKT_RKNS_8OffsetToIS8_T0_EE(PLT)
	mov	r3, r0
	str	r3, [r7, #28]
	add	r3, r7, #8
	ldr	r0, [r7, #28]
	mov	r1, r3
	bl	_ZNK2OT13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEE7bsearchIjEEiRKT_(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #-1
	beq	.L103
	movs	r3, #2
	b	.L104
.L103:
	ldr	r3, [r7, #12]
	adds	r3, r3, #7
	mov	r2, r7
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OTplIPKvNS_7IntTypeIjLj4EEENS_13SortedArrayOfINS_10UVSMappingES4_EEEERKT1_RKT_RKNS_8OffsetToIS8_T0_EE(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	add	r3, r7, #8
	ldr	r0, [r7, #20]
	mov	r1, r3
	bl	_ZNK2OT13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEE7bsearchIjEEiRKT_(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #-1
	beq	.L105
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #24]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK2OT7ArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEixEj(PLT)
	mov	r3, r0
	adds	r3, r3, #3
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
	movs	r3, #1
	b	.L104
.L105:
	movs	r3, #0
.L104:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT23VariationSelectorRecord9get_glyphEjPjPKv, .-_ZNK2OT23VariationSelectorRecord9get_glyphEjPjPKv
	.section	.text._ZNK2OT23VariationSelectorRecord3cmpERKj,"axG",%progbits,_ZNK2OT23VariationSelectorRecord3cmpERKj,comdat
	.align	2
	.weak	_ZNK2OT23VariationSelectorRecord3cmpERKj
	.thumb
	.thumb_func
	.type	_ZNK2OT23VariationSelectorRecord3cmpERKj, %function
_ZNK2OT23VariationSelectorRecord3cmpERKj:
	.fnstart
.LFB254:
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
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK2OT7IntTypeIjLj3EE3cmpEj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT23VariationSelectorRecord3cmpERKj, .-_ZNK2OT23VariationSelectorRecord3cmpERKj
	.section	.text._ZN2OT23VariationSelectorRecord8sanitizeEPNS_21hb_sanitize_context_tEPv,"axG",%progbits,_ZN2OT23VariationSelectorRecord8sanitizeEPNS_21hb_sanitize_context_tEPv,comdat
	.align	2
	.weak	_ZN2OT23VariationSelectorRecord8sanitizeEPNS_21hb_sanitize_context_tEPv
	.thumb
	.thumb_func
	.type	_ZN2OT23VariationSelectorRecord8sanitizeEPNS_21hb_sanitize_context_tEPv, %function
_ZN2OT23VariationSelectorRecord8sanitizeEPNS_21hb_sanitize_context_tEPv:
	.fnstart
.LFB255:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #36
	sub	sp, sp, #36
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r4, [r7, #8]
	ldr	r0, [r7, #8]
	bl	_ZN2OT21hb_sanitize_context_t8get_nameEv(PLT)
	mov	r3, r0
	add	r2, r7, #20
	ldr	r1, .L112
.LPIC25:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L112+4
.LPIC26:
	add	r1, pc
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r4
	mov	r2, r3
	ldr	r3, [r7, #12]
	bl	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z(PLT)
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #12]
	bl	_ZNK2OT21hb_sanitize_context_t12check_structINS_23VariationSelectorRecordEEEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L109
	ldr	r3, [r7, #12]
	adds	r3, r3, #3
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	_ZN2OT8OffsetToINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEES4_E8sanitizeEPNS_21hb_sanitize_context_tEPv(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L109
	ldr	r3, [r7, #12]
	adds	r3, r3, #7
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	_ZN2OT8OffsetToINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEES4_E8sanitizeEPNS_21hb_sanitize_context_tEPv(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L109
	movs	r3, #1
	b	.L110
.L109:
	movs	r3, #0
.L110:
	add	r2, r7, #20
	mov	r0, r2
	mov	r1, r3
	movw	r2, #355
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L113:
	.align	2
.L112:
	.word	_ZZN2OT23VariationSelectorRecord8sanitizeEPNS_21hb_sanitize_context_tEPvE19__PRETTY_FUNCTION__-(.LPIC25+4)
	.word	.LC13-(.LPIC26+4)
	.fnend
	.size	_ZN2OT23VariationSelectorRecord8sanitizeEPNS_21hb_sanitize_context_tEPv, .-_ZN2OT23VariationSelectorRecord8sanitizeEPNS_21hb_sanitize_context_tEPv
	.section	.text._ZNK2OT20CmapSubtableFormat1417get_glyph_variantEjjPj,"axG",%progbits,_ZNK2OT20CmapSubtableFormat1417get_glyph_variantEjjPj,comdat
	.align	2
	.weak	_ZNK2OT20CmapSubtableFormat1417get_glyph_variantEjjPj
	.thumb
	.thumb_func
	.type	_ZNK2OT20CmapSubtableFormat1417get_glyph_variantEjjPj, %function
_ZNK2OT20CmapSubtableFormat1417get_glyph_variantEjjPj:
	.fnstart
.LFB257:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #20
	sub	sp, sp, #20
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	adds	r4, r3, #6
	ldr	r3, [r7, #12]
	adds	r2, r3, #6
	adds	r3, r7, #4
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK2OT13SortedArrayOfINS_23VariationSelectorRecordENS_7IntTypeIjLj4EEEE7bsearchIjEEiRKT_(PLT)
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	bl	_ZNK2OT7ArrayOfINS_23VariationSelectorRecordENS_7IntTypeIjLj4EEEEixEj(PLT)
	mov	r3, r0
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	bl	_ZNK2OT23VariationSelectorRecord9get_glyphEjPjPKv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZNK2OT20CmapSubtableFormat1417get_glyph_variantEjjPj, .-_ZNK2OT20CmapSubtableFormat1417get_glyph_variantEjjPj
	.section	.text._ZN2OT20CmapSubtableFormat148sanitizeEPNS_21hb_sanitize_context_tE,"axG",%progbits,_ZN2OT20CmapSubtableFormat148sanitizeEPNS_21hb_sanitize_context_tE,comdat
	.align	2
	.weak	_ZN2OT20CmapSubtableFormat148sanitizeEPNS_21hb_sanitize_context_tE
	.thumb
	.thumb_func
	.type	_ZN2OT20CmapSubtableFormat148sanitizeEPNS_21hb_sanitize_context_tE, %function
_ZN2OT20CmapSubtableFormat148sanitizeEPNS_21hb_sanitize_context_tE:
	.fnstart
.LFB258:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #28
	sub	sp, sp, #28
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r4, [r7]
	ldr	r0, [r7]
	bl	_ZN2OT21hb_sanitize_context_t8get_nameEv(PLT)
	mov	r3, r0
	add	r2, r7, #12
	ldr	r1, .L120
.LPIC27:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L120+4
.LPIC28:
	add	r1, pc
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r4
	mov	r2, r3
	ldr	r3, [r7, #4]
	bl	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z(PLT)
	ldr	r0, [r7]
	ldr	r1, [r7, #4]
	bl	_ZNK2OT21hb_sanitize_context_t12check_structINS_20CmapSubtableFormat14EEEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L117
	ldr	r3, [r7, #4]
	adds	r3, r3, #6
	mov	r0, r3
	ldr	r1, [r7]
	ldr	r2, [r7, #4]
	bl	_ZN2OT7ArrayOfINS_23VariationSelectorRecordENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEPv(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L117
	movs	r3, #1
	b	.L118
.L117:
	movs	r3, #0
.L118:
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	movw	r2, #379
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L121:
	.align	2
.L120:
	.word	_ZZN2OT20CmapSubtableFormat148sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__-(.LPIC27+4)
	.word	.LC13-(.LPIC28+4)
	.fnend
	.size	_ZN2OT20CmapSubtableFormat148sanitizeEPNS_21hb_sanitize_context_tE, .-_ZN2OT20CmapSubtableFormat148sanitizeEPNS_21hb_sanitize_context_tE
	.section	.text._ZNK2OT12CmapSubtable9get_glyphEjPj,"axG",%progbits,_ZNK2OT12CmapSubtable9get_glyphEjPj,comdat
	.align	2
	.weak	_ZNK2OT12CmapSubtable9get_glyphEjPj
	.thumb
	.thumb_func
	.type	_ZNK2OT12CmapSubtable9get_glyphEjPj, %function
_ZNK2OT12CmapSubtable9get_glyphEjPj:
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
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	cmp	r3, #13
	bhi	.L123
	adr	r1, .L125
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L125:
	.word	.L124+1-.L125
	.word	.L123+1-.L125
	.word	.L123+1-.L125
	.word	.L123+1-.L125
	.word	.L126+1-.L125
	.word	.L123+1-.L125
	.word	.L127+1-.L125
	.word	.L123+1-.L125
	.word	.L123+1-.L125
	.word	.L123+1-.L125
	.word	.L128+1-.L125
	.word	.L123+1-.L125
	.word	.L129+1-.L125
	.word	.L130+1-.L125
.L124:
	ldr	r3, [r7, #12]
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	_ZNK2OT19CmapSubtableFormat09get_glyphEjPj(PLT)
	mov	r3, r0
	b	.L131
.L126:
	ldr	r3, [r7, #12]
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	_ZNK2OT19CmapSubtableFormat49get_glyphEjPj(PLT)
	mov	r3, r0
	b	.L131
.L127:
	ldr	r3, [r7, #12]
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	_ZNK2OT19CmapSubtableTrimmedINS_7IntTypeItLj2EEEE9get_glyphEjPj(PLT)
	mov	r3, r0
	b	.L131
.L128:
	ldr	r3, [r7, #12]
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	_ZNK2OT19CmapSubtableTrimmedINS_7IntTypeIjLj4EEEE9get_glyphEjPj(PLT)
	mov	r3, r0
	b	.L131
.L129:
	ldr	r3, [r7, #12]
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	_ZNK2OT25CmapSubtableLongSegmentedINS_20CmapSubtableFormat12EE9get_glyphEjPj(PLT)
	mov	r3, r0
	b	.L131
.L130:
	ldr	r3, [r7, #12]
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	_ZNK2OT25CmapSubtableLongSegmentedINS_20CmapSubtableFormat13EE9get_glyphEjPj(PLT)
	mov	r3, r0
	b	.L131
.L123:
	movs	r3, #0
.L131:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT12CmapSubtable9get_glyphEjPj, .-_ZNK2OT12CmapSubtable9get_glyphEjPj
	.section	.text._ZNK2OT12CmapSubtable17get_glyph_variantEjjPj,"axG",%progbits,_ZNK2OT12CmapSubtable17get_glyph_variantEjjPj,comdat
	.align	2
	.weak	_ZNK2OT12CmapSubtable17get_glyph_variantEjjPj
	.thumb
	.thumb_func
	.type	_ZNK2OT12CmapSubtable17get_glyph_variantEjjPj, %function
_ZNK2OT12CmapSubtable17get_glyph_variantEjjPj:
	.fnstart
.LFB262:
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
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	cmp	r3, #14
	bne	.L136
	ldr	r3, [r7, #12]
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	_ZNK2OT20CmapSubtableFormat1417get_glyph_variantEjjPj(PLT)
	mov	r3, r0
	b	.L135
.L136:
	movs	r3, #0
.L135:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT12CmapSubtable17get_glyph_variantEjjPj, .-_ZNK2OT12CmapSubtable17get_glyph_variantEjjPj
	.section	.text._ZN2OT12CmapSubtable8sanitizeEPNS_21hb_sanitize_context_tE,"axG",%progbits,_ZN2OT12CmapSubtable8sanitizeEPNS_21hb_sanitize_context_tE,comdat
	.align	2
	.weak	_ZN2OT12CmapSubtable8sanitizeEPNS_21hb_sanitize_context_tE
	.thumb
	.thumb_func
	.type	_ZN2OT12CmapSubtable8sanitizeEPNS_21hb_sanitize_context_tE, %function
_ZN2OT12CmapSubtable8sanitizeEPNS_21hb_sanitize_context_tE:
	.fnstart
.LFB263:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #28
	sub	sp, sp, #28
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r4, [r7]
	ldr	r0, [r7]
	bl	_ZN2OT21hb_sanitize_context_t8get_nameEv(PLT)
	mov	r3, r0
	add	r2, r7, #12
	ldr	r1, .L150
.LPIC29:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L150+4
.LPIC30:
	add	r1, pc
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r4
	mov	r2, r3
	ldr	r3, [r7, #4]
	bl	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z(PLT)
	ldr	r3, [r7, #4]
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN2OT7IntTypeItLj2EE8sanitizeEPNS_21hb_sanitize_context_tE(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L138
	add	r3, r7, #12
	mov	r0, r3
	movs	r1, #0
	movw	r2, #423
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L149
.L138:
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	cmp	r3, #14
	bhi	.L140
	adr	r1, .L142
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L142:
	.word	.L141+1-.L142
	.word	.L140+1-.L142
	.word	.L140+1-.L142
	.word	.L140+1-.L142
	.word	.L143+1-.L142
	.word	.L140+1-.L142
	.word	.L144+1-.L142
	.word	.L140+1-.L142
	.word	.L140+1-.L142
	.word	.L140+1-.L142
	.word	.L145+1-.L142
	.word	.L140+1-.L142
	.word	.L146+1-.L142
	.word	.L147+1-.L142
	.word	.L148+1-.L142
.L141:
	ldr	r3, [r7, #4]
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN2OT19CmapSubtableFormat08sanitizeEPNS_21hb_sanitize_context_tE(PLT)
	mov	r3, r0
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	movw	r2, #425
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L149
.L143:
	ldr	r3, [r7, #4]
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN2OT19CmapSubtableFormat48sanitizeEPNS_21hb_sanitize_context_tE(PLT)
	mov	r3, r0
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	mov	r2, #426
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L149
.L144:
	ldr	r3, [r7, #4]
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN2OT19CmapSubtableTrimmedINS_7IntTypeItLj2EEEE8sanitizeEPNS_21hb_sanitize_context_tE(PLT)
	mov	r3, r0
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	movw	r2, #427
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L149
.L145:
	ldr	r3, [r7, #4]
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN2OT19CmapSubtableTrimmedINS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tE(PLT)
	mov	r3, r0
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	mov	r2, #428
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L149
.L146:
	ldr	r3, [r7, #4]
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN2OT25CmapSubtableLongSegmentedINS_20CmapSubtableFormat12EE8sanitizeEPNS_21hb_sanitize_context_tE(PLT)
	mov	r3, r0
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	movw	r2, #429
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L149
.L147:
	ldr	r3, [r7, #4]
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN2OT25CmapSubtableLongSegmentedINS_20CmapSubtableFormat13EE8sanitizeEPNS_21hb_sanitize_context_tE(PLT)
	mov	r3, r0
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	mov	r2, #430
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L149
.L148:
	ldr	r3, [r7, #4]
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN2OT20CmapSubtableFormat148sanitizeEPNS_21hb_sanitize_context_tE(PLT)
	mov	r3, r0
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	movw	r2, #431
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L149
.L140:
	add	r3, r7, #12
	mov	r0, r3
	movs	r1, #1
	mov	r2, #432
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
.L149:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L151:
	.align	2
.L150:
	.word	_ZZN2OT12CmapSubtable8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__-(.LPIC29+4)
	.word	.LC13-(.LPIC30+4)
	.fnend
	.size	_ZN2OT12CmapSubtable8sanitizeEPNS_21hb_sanitize_context_tE, .-_ZN2OT12CmapSubtable8sanitizeEPNS_21hb_sanitize_context_tE
	.section	.text._ZNK2OT14EncodingRecord3cmpERKS0_,"axG",%progbits,_ZNK2OT14EncodingRecord3cmpERKS0_,comdat
	.align	2
	.weak	_ZNK2OT14EncodingRecord3cmpERKS0_
	.thumb
	.thumb_func
	.type	_ZNK2OT14EncodingRecord3cmpERKS0_, %function
_ZNK2OT14EncodingRecord3cmpERKS0_:
	.fnstart
.LFB265:
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
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r1, r1, r3
	movs	r3, #0
	bfi	r3, r1, #0, #16
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK2OT7IntTypeItLj2EE3cmpES1_(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L153
	ldr	r3, [r7, #12]
	b	.L154
.L153:
	ldr	r3, [r7, #4]
	adds	r2, r3, #2
	ldr	r3, [r7]
	ldrb	r1, [r3, #2]	@ zero_extendqisi2
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r1, r1, r3
	movs	r3, #0
	bfi	r3, r1, #0, #16
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK2OT7IntTypeItLj2EE3cmpES1_(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L155
	ldr	r3, [r7, #12]
	b	.L154
.L155:
	movs	r3, #0
.L154:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT14EncodingRecord3cmpERKS0_, .-_ZNK2OT14EncodingRecord3cmpERKS0_
	.section	.text._ZN2OT14EncodingRecord8sanitizeEPNS_21hb_sanitize_context_tEPv,"axG",%progbits,_ZN2OT14EncodingRecord8sanitizeEPNS_21hb_sanitize_context_tEPv,comdat
	.align	2
	.weak	_ZN2OT14EncodingRecord8sanitizeEPNS_21hb_sanitize_context_tEPv
	.thumb
	.thumb_func
	.type	_ZN2OT14EncodingRecord8sanitizeEPNS_21hb_sanitize_context_tEPv, %function
_ZN2OT14EncodingRecord8sanitizeEPNS_21hb_sanitize_context_tEPv:
	.fnstart
.LFB266:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #36
	sub	sp, sp, #36
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r4, [r7, #8]
	ldr	r0, [r7, #8]
	bl	_ZN2OT21hb_sanitize_context_t8get_nameEv(PLT)
	mov	r3, r0
	add	r2, r7, #20
	ldr	r1, .L160
.LPIC31:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L160+4
.LPIC32:
	add	r1, pc
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r4
	mov	r2, r3
	ldr	r3, [r7, #12]
	bl	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z(PLT)
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #12]
	bl	_ZNK2OT21hb_sanitize_context_t12check_structINS_14EncodingRecordEEEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L157
	ldr	r3, [r7, #12]
	adds	r3, r3, #4
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	_ZN2OT8OffsetToINS_12CmapSubtableENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEPv(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L157
	movs	r3, #1
	b	.L158
.L157:
	movs	r3, #0
.L158:
	add	r2, r7, #20
	mov	r0, r2
	mov	r1, r3
	movw	r2, #467
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L161:
	.align	2
.L160:
	.word	_ZZN2OT14EncodingRecord8sanitizeEPNS_21hb_sanitize_context_tEPvE19__PRETTY_FUNCTION__-(.LPIC31+4)
	.word	.LC13-(.LPIC32+4)
	.fnend
	.size	_ZN2OT14EncodingRecord8sanitizeEPNS_21hb_sanitize_context_tEPv, .-_ZN2OT14EncodingRecord8sanitizeEPNS_21hb_sanitize_context_tEPv
	.section	.text._ZNK2OT4cmap13find_subtableEjj,"axG",%progbits,_ZNK2OT4cmap13find_subtableEjj,comdat
	.align	2
	.weak	_ZNK2OT4cmap13find_subtableEjj
	.thumb
	.thumb_func
	.type	_ZNK2OT4cmap13find_subtableEjj, %function
_ZNK2OT4cmap13find_subtableEjj:
	.fnstart
.LFB268:
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
	ldr	r3, [r7, #8]
	uxth	r3, r3
	add	r2, r7, #16
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OT7IntTypeItLj2EE3setEt(PLT)
	ldr	r3, [r7, #4]
	uxth	r3, r3
	add	r2, r7, #16
	adds	r2, r2, #2
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OT7IntTypeItLj2EE3setEt(PLT)
	ldr	r3, [r7, #12]
	adds	r2, r3, #2
	add	r3, r7, #16
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK2OT7ArrayOfINS_14EncodingRecordENS_7IntTypeItLj2EEEE7lsearchIS1_EEiRKT_(PLT)
	mov	r3, r0
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #-1
	beq	.L163
	ldr	r3, [r7, #12]
	adds	r2, r3, #2
	ldr	r3, [r7, #28]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK2OT7ArrayOfINS_14EncodingRecordENS_7IntTypeItLj2EEEEixEj(PLT)
	mov	r3, r0
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZNK2OT7IntTypeIjLj4EEcvjEv(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L164
.L163:
	movs	r3, #1
	b	.L165
.L164:
	movs	r3, #0
.L165:
	cmp	r3, #0
	beq	.L166
	movs	r3, #0
	b	.L168
.L166:
	ldr	r3, [r7, #12]
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	adds	r2, r3, #2
	ldr	r3, [r7, #28]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK2OT7ArrayOfINS_14EncodingRecordENS_7IntTypeItLj2EEEEixEj(PLT)
	mov	r3, r0
	adds	r3, r3, #4
	add	r2, r7, #24
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OTplIPKNS_4cmapENS_7IntTypeIjLj4EEENS_12CmapSubtableEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE(PLT)
	mov	r3, r0
.L168:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT4cmap13find_subtableEjj, .-_ZNK2OT4cmap13find_subtableEjj
	.section	.text._ZN2OT4cmap8sanitizeEPNS_21hb_sanitize_context_tE,"axG",%progbits,_ZN2OT4cmap8sanitizeEPNS_21hb_sanitize_context_tE,comdat
	.align	2
	.weak	_ZN2OT4cmap8sanitizeEPNS_21hb_sanitize_context_tE
	.thumb
	.thumb_func
	.type	_ZN2OT4cmap8sanitizeEPNS_21hb_sanitize_context_tE, %function
_ZN2OT4cmap8sanitizeEPNS_21hb_sanitize_context_tE:
	.fnstart
.LFB269:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #28
	sub	sp, sp, #28
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r4, [r7]
	ldr	r0, [r7]
	bl	_ZN2OT21hb_sanitize_context_t8get_nameEv(PLT)
	mov	r3, r0
	add	r2, r7, #12
	ldr	r1, .L173
.LPIC33:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L173+4
.LPIC34:
	add	r1, pc
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r4
	mov	r2, r3
	ldr	r3, [r7, #4]
	bl	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z(PLT)
	ldr	r0, [r7]
	ldr	r1, [r7, #4]
	bl	_ZNK2OT21hb_sanitize_context_t12check_structINS_4cmapEEEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L170
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L170
	ldr	r3, [r7, #4]
	adds	r3, r3, #2
	mov	r0, r3
	ldr	r1, [r7]
	ldr	r2, [r7, #4]
	bl	_ZN2OT7ArrayOfINS_14EncodingRecordENS_7IntTypeItLj2EEEE8sanitizeEPNS_21hb_sanitize_context_tEPv(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L170
	movs	r3, #1
	b	.L171
.L170:
	movs	r3, #0
.L171:
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	movw	r2, #503
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L174:
	.align	2
.L173:
	.word	_ZZN2OT4cmap8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__-(.LPIC33+4)
	.word	.LC13-(.LPIC34+4)
	.fnend
	.size	_ZN2OT4cmap8sanitizeEPNS_21hb_sanitize_context_tE, .-_ZN2OT4cmap8sanitizeEPNS_21hb_sanitize_context_tE
	.section	.text._ZN2OT4_hea8sanitizeEPNS_21hb_sanitize_context_tE,"axG",%progbits,_ZN2OT4_hea8sanitizeEPNS_21hb_sanitize_context_tE,comdat
	.align	2
	.weak	_ZN2OT4_hea8sanitizeEPNS_21hb_sanitize_context_tE
	.thumb
	.thumb_func
	.type	_ZN2OT4_hea8sanitizeEPNS_21hb_sanitize_context_tE, %function
_ZN2OT4_hea8sanitizeEPNS_21hb_sanitize_context_tE:
	.fnstart
.LFB272:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #28
	sub	sp, sp, #28
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r4, [r7]
	ldr	r0, [r7]
	bl	_ZN2OT21hb_sanitize_context_t8get_nameEv(PLT)
	mov	r3, r0
	add	r2, r7, #12
	ldr	r1, .L179
.LPIC35:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L179+4
.LPIC36:
	add	r1, pc
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r4
	mov	r2, r3
	ldr	r3, [r7, #4]
	bl	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z(PLT)
	ldr	r0, [r7]
	ldr	r1, [r7, #4]
	bl	_ZNK2OT21hb_sanitize_context_t12check_structINS_4_heaEEEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L176
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	cmp	r3, #1
	bne	.L176
	movs	r3, #1
	b	.L177
.L176:
	movs	r3, #0
.L177:
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	movs	r2, #54
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L180:
	.align	2
.L179:
	.word	_ZZN2OT4_hea8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__-(.LPIC35+4)
	.word	.LC13-(.LPIC36+4)
	.fnend
	.size	_ZN2OT4_hea8sanitizeEPNS_21hb_sanitize_context_tE, .-_ZN2OT4_hea8sanitizeEPNS_21hb_sanitize_context_tE
	.section	.text._ZN2OT4_mtx8sanitizeEPNS_21hb_sanitize_context_tE,"axG",%progbits,_ZN2OT4_mtx8sanitizeEPNS_21hb_sanitize_context_tE,comdat
	.align	2
	.weak	_ZN2OT4_mtx8sanitizeEPNS_21hb_sanitize_context_tE
	.thumb
	.thumb_func
	.type	_ZN2OT4_mtx8sanitizeEPNS_21hb_sanitize_context_tE, %function
_ZN2OT4_mtx8sanitizeEPNS_21hb_sanitize_context_tE:
	.fnstart
.LFB275:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #28
	sub	sp, sp, #28
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r4, [r7]
	ldr	r0, [r7]
	bl	_ZN2OT21hb_sanitize_context_t8get_nameEv(PLT)
	mov	r3, r0
	add	r2, r7, #12
	ldr	r1, .L183
.LPIC37:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L183+4
.LPIC38:
	add	r1, pc
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r4
	mov	r2, r3
	ldr	r3, [r7, #4]
	bl	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z(PLT)
	add	r3, r7, #12
	mov	r0, r3
	movs	r1, #1
	movs	r2, #64
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L184:
	.align	2
.L183:
	.word	_ZZN2OT4_mtx8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__-(.LPIC37+4)
	.word	.LC13-(.LPIC38+4)
	.fnend
	.size	_ZN2OT4_mtx8sanitizeEPNS_21hb_sanitize_context_tE, .-_ZN2OT4_mtx8sanitizeEPNS_21hb_sanitize_context_tE
	.section	.text._ZN32hb_ot_face_metrics_accelerator_t4initEP9hb_face_tjjj,"axG",%progbits,_ZN32hb_ot_face_metrics_accelerator_t4initEP9hb_face_tjjj,comdat
	.align	2
	.weak	_ZN32hb_ot_face_metrics_accelerator_t4initEP9hb_face_tjjj
	.thumb
	.thumb_func
	.type	_ZN32hb_ot_face_metrics_accelerator_t4initEP9hb_face_tjjj, %function
_ZN32hb_ot_face_metrics_accelerator_t4initEP9hb_face_tjjj:
	.fnstart
.LFB278:
	@ args = 4, pretend = 0, frame = 24
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
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #40]
	str	r2, [r3, #8]
	ldr	r0, [r7, #8]
	bl	_ZNK9hb_face_t14get_num_glyphsEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3]
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #4]
	bl	_ZNK9hb_face_t15reference_tableEj(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_ZN2OT9SanitizerINS_4_heaEE8sanitizeEP9hb_blob_t(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r0, [r7, #20]
	bl	_ZN2OT9SanitizerINS_4_heaEE13lock_instanceEP9hb_blob_t(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	adds	r3, r3, #34
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #4]
	ldr	r0, [r7, #20]
	bl	hb_blob_destroy(PLT)
	ldr	r0, [r7, #8]
	ldr	r1, [r7]
	bl	_ZNK9hb_face_t15reference_tableEj(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_ZN2OT9SanitizerINS_4_mtxEE8sanitizeEP9hb_blob_t(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L186
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	add	r3, r3, r2
	lsls	r4, r3, #1
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	mov	r0, r3
	bl	hb_blob_get_length(PLT)
	mov	r3, r0
	cmp	r4, r3
	bcs	.L187
.L186:
	movs	r3, #1
	b	.L188
.L187:
	movs	r3, #0
.L188:
	cmp	r3, #0
	beq	.L189
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	mov	r0, r3
	bl	hb_blob_destroy(PLT)
	bl	hb_blob_get_empty(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #16]
.L189:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	mov	r0, r3
	bl	_ZN2OT9SanitizerINS_4_mtxEE13lock_instanceEP9hb_blob_t(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #12]
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZN32hb_ot_face_metrics_accelerator_t4initEP9hb_face_tjjj, .-_ZN32hb_ot_face_metrics_accelerator_t4initEP9hb_face_tjjj
	.section	.text._ZN32hb_ot_face_metrics_accelerator_t4finiEv,"axG",%progbits,_ZN32hb_ot_face_metrics_accelerator_t4finiEv,comdat
	.align	2
	.weak	_ZN32hb_ot_face_metrics_accelerator_t4finiEv
	.thumb
	.thumb_func
	.type	_ZN32hb_ot_face_metrics_accelerator_t4finiEv, %function
_ZN32hb_ot_face_metrics_accelerator_t4finiEv:
	.fnstart
.LFB279:
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
	ldr	r3, [r3, #16]
	mov	r0, r3
	bl	hb_blob_destroy(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN32hb_ot_face_metrics_accelerator_t4finiEv, .-_ZN32hb_ot_face_metrics_accelerator_t4finiEv
	.section	.text._ZNK32hb_ot_face_metrics_accelerator_t11get_advanceEj,"axG",%progbits,_ZNK32hb_ot_face_metrics_accelerator_t11get_advanceEj,comdat
	.align	2
	.weak	_ZNK32hb_ot_face_metrics_accelerator_t11get_advanceEj
	.thumb
	.thumb_func
	.type	_ZNK32hb_ot_face_metrics_accelerator_t11get_advanceEj, %function
_ZNK32hb_ot_face_metrics_accelerator_t11get_advanceEj:
	.fnstart
.LFB280:
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
	ldr	r3, [r7]
	cmp	r2, r3
	bhi	.L192
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L193
	movs	r3, #0
	b	.L194
.L193:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	b	.L194
.L192:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	cmp	r2, r3
	bhi	.L195
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	subs	r3, r3, #1
	str	r3, [r7]
.L195:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	lsls	r3, r3, #2
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
.L194:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK32hb_ot_face_metrics_accelerator_t11get_advanceEj, .-_ZNK32hb_ot_face_metrics_accelerator_t11get_advanceEj
	.section	.text._ZN29hb_ot_face_cmap_accelerator_t4initEP9hb_face_t,"axG",%progbits,_ZN29hb_ot_face_cmap_accelerator_t4initEP9hb_face_t,comdat
	.align	2
	.weak	_ZN29hb_ot_face_cmap_accelerator_t4initEP9hb_face_t
	.thumb
	.thumb_func
	.type	_ZN29hb_ot_face_cmap_accelerator_t4initEP9hb_face_t, %function
_ZN29hb_ot_face_cmap_accelerator_t4initEP9hb_face_t:
	.fnstart
.LFB281:
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
	ldr	r0, [r7]
	movw	r1, #24944
	movt	r1, 25453
	bl	_ZNK9hb_face_t15reference_tableEj(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_ZN2OT9SanitizerINS_4cmapEE8sanitizeEP9hb_blob_t(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r0, r3
	bl	_ZN2OT9SanitizerINS_4cmapEE13lock_instanceEP9hb_blob_t(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L197
	ldr	r0, [r7, #12]
	movs	r1, #3
	movs	r2, #10
	bl	_ZNK2OT4cmap13find_subtableEjj(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
.L197:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L198
	ldr	r0, [r7, #12]
	movs	r1, #0
	movs	r2, #6
	bl	_ZNK2OT4cmap13find_subtableEjj(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
.L198:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L199
	ldr	r0, [r7, #12]
	movs	r1, #0
	movs	r2, #4
	bl	_ZNK2OT4cmap13find_subtableEjj(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
.L199:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L200
	ldr	r0, [r7, #12]
	movs	r1, #3
	movs	r2, #1
	bl	_ZNK2OT4cmap13find_subtableEjj(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
.L200:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L201
	ldr	r0, [r7, #12]
	movs	r1, #0
	movs	r2, #3
	bl	_ZNK2OT4cmap13find_subtableEjj(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
.L201:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L202
	ldr	r0, [r7, #12]
	movs	r1, #0
	movs	r2, #2
	bl	_ZNK2OT4cmap13find_subtableEjj(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
.L202:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L203
	ldr	r0, [r7, #12]
	movs	r1, #0
	movs	r2, #1
	bl	_ZNK2OT4cmap13find_subtableEjj(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
.L203:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L204
	ldr	r0, [r7, #12]
	movs	r1, #0
	movs	r2, #0
	bl	_ZNK2OT4cmap13find_subtableEjj(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
.L204:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L205
	bl	_ZN2OTL4NullINS_12CmapSubtableEEERKT_v(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
.L205:
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L206
	ldr	r0, [r7, #12]
	movs	r1, #0
	movs	r2, #5
	bl	_ZNK2OT4cmap13find_subtableEjj(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
.L206:
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L207
	bl	_ZN2OTL4NullINS_12CmapSubtableEEERKT_v(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
.L207:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #20]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #16]
	str	r2, [r3, #4]
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN29hb_ot_face_cmap_accelerator_t4initEP9hb_face_t, .-_ZN29hb_ot_face_cmap_accelerator_t4initEP9hb_face_t
	.section	.text._ZN29hb_ot_face_cmap_accelerator_t4finiEv,"axG",%progbits,_ZN29hb_ot_face_cmap_accelerator_t4finiEv,comdat
	.align	2
	.weak	_ZN29hb_ot_face_cmap_accelerator_t4finiEv
	.thumb
	.thumb_func
	.type	_ZN29hb_ot_face_cmap_accelerator_t4finiEv, %function
_ZN29hb_ot_face_cmap_accelerator_t4finiEv:
	.fnstart
.LFB282:
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
	mov	r0, r3
	bl	hb_blob_destroy(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN29hb_ot_face_cmap_accelerator_t4finiEv, .-_ZN29hb_ot_face_cmap_accelerator_t4finiEv
	.section	.text._ZNK29hb_ot_face_cmap_accelerator_t9get_glyphEjjPj,"axG",%progbits,_ZNK29hb_ot_face_cmap_accelerator_t9get_glyphEjjPj,comdat
	.align	2
	.weak	_ZNK29hb_ot_face_cmap_accelerator_t9get_glyphEjjPj
	.thumb
	.thumb_func
	.type	_ZNK29hb_ot_face_cmap_accelerator_t9get_glyphEjjPj, %function
_ZNK29hb_ot_face_cmap_accelerator_t9get_glyphEjjPj:
	.fnstart
.LFB283:
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
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L210
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	_ZNK2OT12CmapSubtable17get_glyph_variantEjjPj(PLT)
	mov	r3, r0
	cmp	r3, #1
	beq	.L212
	cmp	r3, #2
	beq	.L216
	cmp	r3, #0
	beq	.L214
	b	.L210
.L214:
	movs	r3, #0
	b	.L215
.L212:
	movs	r3, #1
	b	.L215
.L216:
	nop
.L210:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7]
	bl	_ZNK2OT12CmapSubtable9get_glyphEjPj(PLT)
	mov	r3, r0
.L215:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK29hb_ot_face_cmap_accelerator_t9get_glyphEjjPj, .-_ZNK29hb_ot_face_cmap_accelerator_t9get_glyphEjjPj
	.section	.text._ZL18_hb_ot_font_createP9hb_font_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL18_hb_ot_font_createP9hb_font_t, %function
_ZL18_hb_ot_font_createP9hb_font_t:
	.fnstart
.LFB284:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #32
	sub	sp, sp, #32
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	movs	r0, #1
	movs	r1, #52
	bl	calloc(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #52]
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L218
	movs	r3, #0
	b	.L219
.L218:
	ldr	r0, [r7, #16]
	bl	_ZNK9hb_face_t8get_upemEv(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	mov	r0, r3
	ldr	r1, [r7, #16]
	bl	_ZN29hb_ot_face_cmap_accelerator_t4initEP9hb_face_t(PLT)
	ldr	r3, [r7, #20]
	adds	r3, r3, #12
	ldr	r2, [r7, #12]
	lsrs	r2, r2, #1
	str	r2, [sp]
	mov	r0, r3
	ldr	r1, [r7, #16]
	movw	r2, #25953
	movt	r2, 26728
	movw	r3, #29816
	movt	r3, 26733
	bl	_ZN32hb_ot_face_metrics_accelerator_t4initEP9hb_face_tjjj(PLT)
	ldr	r3, [r7, #20]
	adds	r3, r3, #32
	ldr	r2, [r7, #12]
	str	r2, [sp]
	mov	r0, r3
	ldr	r1, [r7, #16]
	movw	r2, #25953
	movt	r2, 30312
	movw	r3, #29816
	movt	r3, 30317
	bl	_ZN32hb_ot_face_metrics_accelerator_t4initEP9hb_face_tjjj(PLT)
	ldr	r3, [r7, #20]
.L219:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL18_hb_ot_font_createP9hb_font_t, .-_ZL18_hb_ot_font_createP9hb_font_t
	.section	.text._ZL19_hb_ot_font_destroyP12hb_ot_font_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL19_hb_ot_font_destroyP12hb_ot_font_t, %function
_ZL19_hb_ot_font_destroyP12hb_ot_font_t:
	.fnstart
.LFB285:
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
	bl	_ZN29hb_ot_face_cmap_accelerator_t4finiEv(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	mov	r0, r3
	bl	_ZN32hb_ot_face_metrics_accelerator_t4finiEv(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #32
	mov	r0, r3
	bl	_ZN32hb_ot_face_metrics_accelerator_t4finiEv(PLT)
	ldr	r0, [r7, #4]
	bl	free(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL19_hb_ot_font_destroyP12hb_ot_font_t, .-_ZL19_hb_ot_font_destroyP12hb_ot_font_t
	.section	.text._ZL15hb_ot_get_glyphP9hb_font_tPvjjPjS1_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL15hb_ot_get_glyphP9hb_font_tPvjjPjS1_, %function
_ZL15hb_ot_get_glyphP9hb_font_tPvjjPjS1_:
	.fnstart
.LFB286:
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
	ldr	r3, [r7, #20]
	mov	r0, r3
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
	ldr	r3, [r7, #32]
	bl	_ZNK29hb_ot_face_cmap_accelerator_t9get_glyphEjjPj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL15hb_ot_get_glyphP9hb_font_tPvjjPjS1_, .-_ZL15hb_ot_get_glyphP9hb_font_tPvjjPjS1_
	.section	.text._ZL25hb_ot_get_glyph_h_advanceP9hb_font_tPvjS1_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL25hb_ot_get_glyph_h_advanceP9hb_font_tPvjS1_, %function
_ZL25hb_ot_get_glyph_h_advanceP9hb_font_tPvjS1_:
	.fnstart
.LFB287:
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
	ldr	r3, [r7, #8]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	adds	r3, r3, #12
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	_ZNK32hb_ot_face_metrics_accelerator_t11get_advanceEj(PLT)
	mov	r3, r0
	uxth	r3, r3
	sxth	r3, r3
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZN9hb_font_t10em_scale_xEs(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL25hb_ot_get_glyph_h_advanceP9hb_font_tPvjS1_, .-_ZL25hb_ot_get_glyph_h_advanceP9hb_font_tPvjS1_
	.section	.text._ZL25hb_ot_get_glyph_v_advanceP9hb_font_tPvjS1_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL25hb_ot_get_glyph_v_advanceP9hb_font_tPvjS1_, %function
_ZL25hb_ot_get_glyph_v_advanceP9hb_font_tPvjS1_:
	.fnstart
.LFB288:
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
	ldr	r3, [r7, #8]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	adds	r3, r3, #32
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	_ZNK32hb_ot_face_metrics_accelerator_t11get_advanceEj(PLT)
	mov	r3, r0
	uxth	r3, r3
	negs	r3, r3
	uxth	r3, r3
	uxth	r3, r3
	sxth	r3, r3
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZN9hb_font_t10em_scale_yEs(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL25hb_ot_get_glyph_v_advanceP9hb_font_tPvjS1_, .-_ZL25hb_ot_get_glyph_v_advanceP9hb_font_tPvjS1_
	.section	.text._ZL24hb_ot_get_glyph_h_originP9hb_font_tPvjPiS2_S1_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL24hb_ot_get_glyph_h_originP9hb_font_tPvjPiS2_S1_, %function
_ZL24hb_ot_get_glyph_h_originP9hb_font_tPvjPiS2_S1_:
	.fnstart
.LFB289:
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
	.size	_ZL24hb_ot_get_glyph_h_originP9hb_font_tPvjPiS2_S1_, .-_ZL24hb_ot_get_glyph_h_originP9hb_font_tPvjPiS2_S1_
	.section	.text._ZL24hb_ot_get_glyph_v_originP9hb_font_tPvjPiS2_S1_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL24hb_ot_get_glyph_v_originP9hb_font_tPvjPiS2_S1_, %function
_ZL24hb_ot_get_glyph_v_originP9hb_font_tPvjPiS2_S1_:
	.fnstart
.LFB290:
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
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZL24hb_ot_get_glyph_v_originP9hb_font_tPvjPiS2_S1_, .-_ZL24hb_ot_get_glyph_v_originP9hb_font_tPvjPiS2_S1_
	.section	.text._ZL25hb_ot_get_glyph_h_kerningP9hb_font_tPvjjS1_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL25hb_ot_get_glyph_h_kerningP9hb_font_tPvjjS1_, %function
_ZL25hb_ot_get_glyph_h_kerningP9hb_font_tPvjjS1_:
	.fnstart
.LFB291:
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
	.size	_ZL25hb_ot_get_glyph_h_kerningP9hb_font_tPvjjS1_, .-_ZL25hb_ot_get_glyph_h_kerningP9hb_font_tPvjjS1_
	.section	.text._ZL25hb_ot_get_glyph_v_kerningP9hb_font_tPvjjS1_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL25hb_ot_get_glyph_v_kerningP9hb_font_tPvjjS1_, %function
_ZL25hb_ot_get_glyph_v_kerningP9hb_font_tPvjjS1_:
	.fnstart
.LFB292:
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
	.size	_ZL25hb_ot_get_glyph_v_kerningP9hb_font_tPvjjS1_, .-_ZL25hb_ot_get_glyph_v_kerningP9hb_font_tPvjjS1_
	.section	.text._ZL23hb_ot_get_glyph_extentsP9hb_font_tPvjP18hb_glyph_extents_tS1_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL23hb_ot_get_glyph_extentsP9hb_font_tPvjP18hb_glyph_extents_tS1_, %function
_ZL23hb_ot_get_glyph_extentsP9hb_font_tPvjP18hb_glyph_extents_tS1_:
	.fnstart
.LFB293:
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
	.size	_ZL23hb_ot_get_glyph_extentsP9hb_font_tPvjP18hb_glyph_extents_tS1_, .-_ZL23hb_ot_get_glyph_extentsP9hb_font_tPvjP18hb_glyph_extents_tS1_
	.section	.text._ZL29hb_ot_get_glyph_contour_pointP9hb_font_tPvjjPiS2_S1_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL29hb_ot_get_glyph_contour_pointP9hb_font_tPvjjPiS2_S1_, %function
_ZL29hb_ot_get_glyph_contour_pointP9hb_font_tPvjjPiS2_S1_:
	.fnstart
.LFB294:
	@ args = 12, pretend = 0, frame = 16
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
	.size	_ZL29hb_ot_get_glyph_contour_pointP9hb_font_tPvjjPiS2_S1_, .-_ZL29hb_ot_get_glyph_contour_pointP9hb_font_tPvjjPiS2_S1_
	.section	.text._ZL20hb_ot_get_glyph_nameP9hb_font_tPvjPcjS1_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL20hb_ot_get_glyph_nameP9hb_font_tPvjPcjS1_, %function
_ZL20hb_ot_get_glyph_nameP9hb_font_tPvjPcjS1_:
	.fnstart
.LFB295:
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
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZL20hb_ot_get_glyph_nameP9hb_font_tPvjPcjS1_, .-_ZL20hb_ot_get_glyph_nameP9hb_font_tPvjPcjS1_
	.section	.text._ZL25hb_ot_get_glyph_from_nameP9hb_font_tPvPKciPjS1_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL25hb_ot_get_glyph_from_nameP9hb_font_tPvPKciPjS1_, %function
_ZL25hb_ot_get_glyph_from_nameP9hb_font_tPvPKciPjS1_:
	.fnstart
.LFB296:
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
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZL25hb_ot_get_glyph_from_nameP9hb_font_tPvPKciPjS1_, .-_ZL25hb_ot_get_glyph_from_nameP9hb_font_tPvPKciPjS1_
	.section	.text._ZL21_hb_ot_get_font_funcsv,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL21_hb_ot_get_font_funcsv, %function
_ZL21_hb_ot_get_font_funcsv:
	.fnstart
.LFB297:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L245
.LPIC39:
	add	r3, pc
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L246:
	.align	2
.L245:
	.word	_ZZL21_hb_ot_get_font_funcsvE9ot_ffuncs-(.LPIC39+4)
	.cantunwind
	.fnend
	.size	_ZL21_hb_ot_get_font_funcsv, .-_ZL21_hb_ot_get_font_funcsv
	.section	.text.hb_ot_font_set_funcs,"ax",%progbits
	.align	2
	.global	hb_ot_font_set_funcs
	.thumb
	.thumb_func
	.type	hb_ot_font_set_funcs, %function
hb_ot_font_set_funcs:
	.fnstart
.LFB298:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	_ZL18_hb_ot_font_createP9hb_font_t(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L248
	b	.L247
.L248:
	bl	_ZL21_hb_ot_get_font_funcsv(PLT)
	mov	r3, r0
	ldr	r0, [r7, #4]
	mov	r1, r3
	ldr	r2, [r7, #12]
	ldr	r3, .L250
.LPIC40:
	add	r3, pc
	bl	hb_font_set_funcs(PLT)
.L247:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L251:
	.align	2
.L250:
	.word	_ZL19_hb_ot_font_destroyP12hb_ot_font_t-(.LPIC40+4)
	.fnend
	.size	hb_ot_font_set_funcs, .-hb_ot_font_set_funcs
	.section	.text._Z3MINIjET_RKS0_S2_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z3MINIjET_RKS0_S2_, %function
_Z3MINIjET_RKS0_S2_:
	.fnstart
.LFB300:
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
	bcs	.L253
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	b	.L254
.L253:
	ldr	r3, [r7]
	ldr	r3, [r3]
.L254:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_Z3MINIjET_RKS0_S2_, .-_Z3MINIjET_RKS0_S2_
	.section	.text._ZN15hb_auto_trace_tILi0EbEC2EPjPKcPKvS3_S3_z,"axG",%progbits,_ZN15hb_auto_trace_tILi0EbEC5EPjPKcPKvS3_S3_z,comdat
	.align	2
	.weak	_ZN15hb_auto_trace_tILi0EbEC2EPjPKcPKvS3_S3_z
	.thumb
	.thumb_func
	.type	_ZN15hb_auto_trace_tILi0EbEC2EPjPKcPKvS3_S3_z, %function
_ZN15hb_auto_trace_tILi0EbEC2EPjPKcPKvS3_S3_z:
	.fnstart
.LFB304:
	@ args = 8, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 1
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN15hb_auto_trace_tILi0EbEC2EPjPKcPKvS3_S3_z, .-_ZN15hb_auto_trace_tILi0EbEC2EPjPKcPKvS3_S3_z
	.weak	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z
	.thumb_set _ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z,_ZN15hb_auto_trace_tILi0EbEC2EPjPKcPKvS3_S3_z
	.section	.text._ZN15hb_auto_trace_tILi0EbE3retEbj,"axG",%progbits,_ZN15hb_auto_trace_tILi0EbE3retEbj,comdat
	.align	2
	.weak	_ZN15hb_auto_trace_tILi0EbE3retEbj
	.thumb
	.thumb_func
	.type	_ZN15hb_auto_trace_tILi0EbE3retEbj, %function
_ZN15hb_auto_trace_tILi0EbE3retEbj:
	.fnstart
.LFB307:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	mov	r3, r1
	str	r2, [r7, #4]
	strb	r3, [r7, #11]
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN15hb_auto_trace_tILi0EbE3retEbj, .-_ZN15hb_auto_trace_tILi0EbE3retEbj
	.section	.text._ZNK2OT7IntTypeIjLj4EEcvjEv,"axG",%progbits,_ZNK2OT7IntTypeIjLj4EEcvjEv,comdat
	.align	2
	.weak	_ZNK2OT7IntTypeIjLj4EEcvjEv
	.thumb
	.thumb_func
	.type	_ZNK2OT7IntTypeIjLj4EEcvjEv, %function
_ZNK2OT7IntTypeIjLj4EEcvjEv:
	.fnstart
.LFB310:
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
	.section	.text._ZN2OT7IntTypeIjLj4EE3setEj,"axG",%progbits,_ZN2OT7IntTypeIjLj4EE3setEj,comdat
	.align	2
	.weak	_ZN2OT7IntTypeIjLj4EE3setEj
	.thumb
	.thumb_func
	.type	_ZN2OT7IntTypeIjLj4EE3setEj, %function
_ZN2OT7IntTypeIjLj4EE3setEj:
	.fnstart
.LFB311:
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
	ldr	r1, [r7]
	bl	_ZN2OT5BEIntIjLi4EE3setEj(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OT7IntTypeIjLj4EE3setEj, .-_ZN2OT7IntTypeIjLj4EE3setEj
	.section	.text._ZNK2OT7IntTypeItLj2EEcvtEv,"axG",%progbits,_ZNK2OT7IntTypeItLj2EEcvtEv,comdat
	.align	2
	.weak	_ZNK2OT7IntTypeItLj2EEcvtEv
	.thumb
	.thumb_func
	.type	_ZNK2OT7IntTypeItLj2EEcvtEv, %function
_ZNK2OT7IntTypeItLj2EEcvtEv:
	.fnstart
.LFB312:
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
	.section	.text._ZNK2OT21hb_sanitize_context_t12check_structINS_19CmapSubtableFormat0EEEbPKT_,"axG",%progbits,_ZNK2OT21hb_sanitize_context_t12check_structINS_19CmapSubtableFormat0EEEbPKT_,comdat
	.align	2
	.weak	_ZNK2OT21hb_sanitize_context_t12check_structINS_19CmapSubtableFormat0EEEbPKT_
	.thumb
	.thumb_func
	.type	_ZNK2OT21hb_sanitize_context_t12check_structINS_19CmapSubtableFormat0EEEbPKT_, %function
_ZNK2OT21hb_sanitize_context_t12check_structINS_19CmapSubtableFormat0EEEbPKT_:
	.fnstart
.LFB314:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	mov	r2, #262
	bl	_ZNK2OT21hb_sanitize_context_t11check_rangeEPKvj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZNK2OT21hb_sanitize_context_t12check_structINS_19CmapSubtableFormat0EEEbPKT_, .-_ZNK2OT21hb_sanitize_context_t12check_structINS_19CmapSubtableFormat0EEEbPKT_
	.section	.text._ZNK2OT21hb_sanitize_context_t12check_structINS_19CmapSubtableFormat4EEEbPKT_,"axG",%progbits,_ZNK2OT21hb_sanitize_context_t12check_structINS_19CmapSubtableFormat4EEEbPKT_,comdat
	.align	2
	.weak	_ZNK2OT21hb_sanitize_context_t12check_structINS_19CmapSubtableFormat4EEEbPKT_
	.thumb
	.thumb_func
	.type	_ZNK2OT21hb_sanitize_context_t12check_structINS_19CmapSubtableFormat4EEEbPKT_, %function
_ZNK2OT21hb_sanitize_context_t12check_structINS_19CmapSubtableFormat4EEEbPKT_:
	.fnstart
.LFB315:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	movs	r2, #14
	bl	_ZNK2OT21hb_sanitize_context_t11check_rangeEPKvj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZNK2OT21hb_sanitize_context_t12check_structINS_19CmapSubtableFormat4EEEbPKT_, .-_ZNK2OT21hb_sanitize_context_t12check_structINS_19CmapSubtableFormat4EEEbPKT_
	.section	.text._ZN2OT21hb_sanitize_context_t7try_setINS_7IntTypeItLj2EEEtEEbPT_RKT0_,"axG",%progbits,_ZN2OT21hb_sanitize_context_t7try_setINS_7IntTypeItLj2EEEtEEbPT_RKT0_,comdat
	.align	2
	.weak	_ZN2OT21hb_sanitize_context_t7try_setINS_7IntTypeItLj2EEEtEEbPT_RKT0_
	.thumb
	.thumb_func
	.type	_ZN2OT21hb_sanitize_context_t7try_setINS_7IntTypeItLj2EEEtEEbPT_RKT0_, %function
_ZN2OT21hb_sanitize_context_t7try_setINS_7IntTypeItLj2EEEtEEbPT_RKT0_:
	.fnstart
.LFB316:
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
	movs	r2, #2
	bl	_ZN2OT21hb_sanitize_context_t8may_editEPKvj(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L271
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	_ZN2OT7IntTypeItLj2EE3setEt(PLT)
	movs	r3, #1
	b	.L272
.L271:
	movs	r3, #0
.L272:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OT21hb_sanitize_context_t7try_setINS_7IntTypeItLj2EEEtEEbPT_RKT0_, .-_ZN2OT21hb_sanitize_context_t7try_setINS_7IntTypeItLj2EEEtEEbPT_RKT0_
	.section	.text._ZNK2OT7IntTypeIjLj3EEcvjEv,"axG",%progbits,_ZNK2OT7IntTypeIjLj3EEcvjEv,comdat
	.align	2
	.weak	_ZNK2OT7IntTypeIjLj3EEcvjEv
	.thumb
	.thumb_func
	.type	_ZNK2OT7IntTypeIjLj3EEcvjEv, %function
_ZNK2OT7IntTypeIjLj3EEcvjEv:
	.fnstart
.LFB318:
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
	bl	_ZNK2OT5BEIntIjLi3EEcvjEv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT7IntTypeIjLj3EEcvjEv, .-_ZNK2OT7IntTypeIjLj3EEcvjEv
	.section	.text._ZNK2OT7IntTypeIjLj3EE3cmpEj,"axG",%progbits,_ZNK2OT7IntTypeIjLj3EE3cmpEj,comdat
	.align	2
	.weak	_ZNK2OT7IntTypeIjLj3EE3cmpEj
	.thumb
	.thumb_func
	.type	_ZNK2OT7IntTypeIjLj3EE3cmpEj, %function
_ZNK2OT7IntTypeIjLj3EE3cmpEj:
	.fnstart
.LFB320:
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
	bl	_ZNK2OT5BEIntIjLi3EEcvjEv(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bcc	.L276
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
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
	.fnend
	.size	_ZNK2OT7IntTypeIjLj3EE3cmpEj, .-_ZNK2OT7IntTypeIjLj3EE3cmpEj
	.section	.text._ZN2OTplIPKvNS_7IntTypeIjLj4EEENS_13SortedArrayOfINS_17UnicodeValueRangeES4_EEEERKT1_RKT_RKNS_8OffsetToIS8_T0_EE,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTplIPKvNS_7IntTypeIjLj4EEENS_13SortedArrayOfINS_17UnicodeValueRangeES4_EEEERKT1_RKT_RKNS_8OffsetToIS8_T0_EE, %function
_ZN2OTplIPKvNS_7IntTypeIjLj4EEENS_13SortedArrayOfINS_17UnicodeValueRangeES4_EEEERKT1_RKT_RKNS_8OffsetToIS8_T0_EE:
	.fnstart
.LFB322:
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
	bl	_ZNK2OT8OffsetToINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEES4_EclEPKv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OTplIPKvNS_7IntTypeIjLj4EEENS_13SortedArrayOfINS_17UnicodeValueRangeES4_EEEERKT1_RKT_RKNS_8OffsetToIS8_T0_EE, .-_ZN2OTplIPKvNS_7IntTypeIjLj4EEENS_13SortedArrayOfINS_17UnicodeValueRangeES4_EEEERKT1_RKT_RKNS_8OffsetToIS8_T0_EE
	.section	.text._ZNK2OT13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEE7bsearchIjEEiRKT_,"axG",%progbits,_ZNK2OT13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEE7bsearchIjEEiRKT_,comdat
	.align	2
	.weak	_ZNK2OT13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEE7bsearchIjEEiRKT_
	.thumb
	.thumb_func
	.type	_ZNK2OT13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEE7bsearchIjEEiRKT_, %function
_ZNK2OT13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEE7bsearchIjEEiRKT_:
	.fnstart
.LFB323:
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
	bl	_ZNK2OT7IntTypeIjLj4EEcvjEv(PLT)
	mov	r3, r0
	subs	r3, r3, #1
	str	r3, [r7, #16]
	b	.L282
.L286:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	add	r3, r3, r2
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #4
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZNK2OT17UnicodeValueRange3cmpERKj(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bge	.L283
	ldr	r3, [r7, #12]
	subs	r3, r3, #1
	str	r3, [r7, #16]
	b	.L282
.L283:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	ble	.L284
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #20]
	b	.L282
.L284:
	ldr	r3, [r7, #12]
	b	.L285
.L282:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	ble	.L286
	mov	r3, #-1
.L285:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEE7bsearchIjEEiRKT_, .-_ZNK2OT13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEE7bsearchIjEEiRKT_
	.section	.text._ZN2OTplIPKvNS_7IntTypeIjLj4EEENS_13SortedArrayOfINS_10UVSMappingES4_EEEERKT1_RKT_RKNS_8OffsetToIS8_T0_EE,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTplIPKvNS_7IntTypeIjLj4EEENS_13SortedArrayOfINS_10UVSMappingES4_EEEERKT1_RKT_RKNS_8OffsetToIS8_T0_EE, %function
_ZN2OTplIPKvNS_7IntTypeIjLj4EEENS_13SortedArrayOfINS_10UVSMappingES4_EEEERKT1_RKT_RKNS_8OffsetToIS8_T0_EE:
	.fnstart
.LFB324:
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
	bl	_ZNK2OT8OffsetToINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEES4_EclEPKv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OTplIPKvNS_7IntTypeIjLj4EEENS_13SortedArrayOfINS_10UVSMappingES4_EEEERKT1_RKT_RKNS_8OffsetToIS8_T0_EE, .-_ZN2OTplIPKvNS_7IntTypeIjLj4EEENS_13SortedArrayOfINS_10UVSMappingES4_EEEERKT1_RKT_RKNS_8OffsetToIS8_T0_EE
	.section	.text._ZNK2OT13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEE7bsearchIjEEiRKT_,"axG",%progbits,_ZNK2OT13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEE7bsearchIjEEiRKT_,comdat
	.align	2
	.weak	_ZNK2OT13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEE7bsearchIjEEiRKT_
	.thumb
	.thumb_func
	.type	_ZNK2OT13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEE7bsearchIjEEiRKT_, %function
_ZNK2OT13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEE7bsearchIjEEiRKT_:
	.fnstart
.LFB325:
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
	bl	_ZNK2OT7IntTypeIjLj4EEcvjEv(PLT)
	mov	r3, r0
	subs	r3, r3, #1
	str	r3, [r7, #16]
	b	.L290
.L294:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	add	r3, r3, r2
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #4
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZNK2OT10UVSMapping3cmpERKj(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bge	.L291
	ldr	r3, [r7, #12]
	subs	r3, r3, #1
	str	r3, [r7, #16]
	b	.L290
.L291:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	ble	.L292
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #20]
	b	.L290
.L292:
	ldr	r3, [r7, #12]
	b	.L293
.L290:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	ble	.L294
	mov	r3, #-1
.L293:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEE7bsearchIjEEiRKT_, .-_ZNK2OT13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEE7bsearchIjEEiRKT_
	.section	.text._ZNK2OT7ArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEixEj,"axG",%progbits,_ZNK2OT7ArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEixEj,comdat
	.align	2
	.weak	_ZNK2OT7ArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEixEj
	.thumb
	.thumb_func
	.type	_ZNK2OT7ArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEixEj, %function
_ZNK2OT7ArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEixEj:
	.fnstart
.LFB326:
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
	bl	_ZNK2OT7IntTypeIjLj4EEcvjEv(PLT)
	mov	r2, r0
	ldr	r3, [r7]
	cmp	r2, r3
	ite	ls
	movls	r3, #1
	movhi	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L296
	bl	_ZN2OTL4NullINS_10UVSMappingEEERKT_v(PLT)
	mov	r3, r0
	b	.L297
.L296:
	ldr	r2, [r7]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #4
.L297:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT7ArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEixEj, .-_ZNK2OT7ArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEixEj
	.section	.text._ZNK2OT21hb_sanitize_context_t12check_structINS_23VariationSelectorRecordEEEbPKT_,"axG",%progbits,_ZNK2OT21hb_sanitize_context_t12check_structINS_23VariationSelectorRecordEEEbPKT_,comdat
	.align	2
	.weak	_ZNK2OT21hb_sanitize_context_t12check_structINS_23VariationSelectorRecordEEEbPKT_
	.thumb
	.thumb_func
	.type	_ZNK2OT21hb_sanitize_context_t12check_structINS_23VariationSelectorRecordEEEbPKT_, %function
_ZNK2OT21hb_sanitize_context_t12check_structINS_23VariationSelectorRecordEEEbPKT_:
	.fnstart
.LFB327:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	movs	r2, #11
	bl	_ZNK2OT21hb_sanitize_context_t11check_rangeEPKvj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZNK2OT21hb_sanitize_context_t12check_structINS_23VariationSelectorRecordEEEbPKT_, .-_ZNK2OT21hb_sanitize_context_t12check_structINS_23VariationSelectorRecordEEEbPKT_
	.section	.text._ZN2OT8OffsetToINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEES4_E8sanitizeEPNS_21hb_sanitize_context_tEPv,"axG",%progbits,_ZN2OT8OffsetToINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEES4_E8sanitizeEPNS_21hb_sanitize_context_tEPv,comdat
	.align	2
	.weak	_ZN2OT8OffsetToINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEES4_E8sanitizeEPNS_21hb_sanitize_context_tEPv
	.thumb
	.thumb_func
	.type	_ZN2OT8OffsetToINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEES4_E8sanitizeEPNS_21hb_sanitize_context_tEPv, %function
_ZN2OT8OffsetToINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEES4_E8sanitizeEPNS_21hb_sanitize_context_tEPv:
	.fnstart
.LFB328:
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
	ldr	r4, [r7, #8]
	ldr	r0, [r7, #8]
	bl	_ZN2OT21hb_sanitize_context_t8get_nameEv(PLT)
	mov	r3, r0
	add	r2, r7, #20
	ldr	r1, .L308
.LPIC41:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L308+4
.LPIC42:
	add	r1, pc
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r4
	mov	r2, r3
	ldr	r3, [r7, #12]
	bl	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z(PLT)
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #12]
	bl	_ZNK2OT21hb_sanitize_context_t12check_structINS_8OffsetToINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEES6_EEEEbPKT_(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L301
	add	r3, r7, #20
	mov	r0, r3
	movs	r1, #0
	movw	r2, #759
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L307
.L301:
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	_ZNK2OT7IntTypeIjLj4EEcvjEv(PLT)
	mov	r3, r0
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L303
	add	r3, r7, #20
	mov	r0, r3
	movs	r1, #1
	movw	r2, #761
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L307
.L303:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #28]
	bl	_ZN2OTL14StructAtOffsetINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEEEERT_Pvj(PLT)
	str	r0, [r7, #24]
	ldr	r3, [r7, #24]
	mov	r0, r3
	ldr	r1, [r7, #8]
	bl	_ZN2OT7ArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tE(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L304
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_ZN2OT8OffsetToINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEES4_E6neuterEPNS_21hb_sanitize_context_tE(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L305
.L304:
	movs	r3, #1
	b	.L306
.L305:
	movs	r3, #0
.L306:
	add	r2, r7, #20
	mov	r0, r2
	mov	r1, r3
	movw	r2, #763
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
.L307:
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L309:
	.align	2
.L308:
	.word	_ZZN2OT8OffsetToINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEES4_E8sanitizeEPNS_21hb_sanitize_context_tEPvE19__PRETTY_FUNCTION__-(.LPIC41+4)
	.word	.LC13-(.LPIC42+4)
	.fnend
	.size	_ZN2OT8OffsetToINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEES4_E8sanitizeEPNS_21hb_sanitize_context_tEPv, .-_ZN2OT8OffsetToINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEES4_E8sanitizeEPNS_21hb_sanitize_context_tEPv
	.section	.text._ZN2OT8OffsetToINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEES4_E8sanitizeEPNS_21hb_sanitize_context_tEPv,"axG",%progbits,_ZN2OT8OffsetToINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEES4_E8sanitizeEPNS_21hb_sanitize_context_tEPv,comdat
	.align	2
	.weak	_ZN2OT8OffsetToINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEES4_E8sanitizeEPNS_21hb_sanitize_context_tEPv
	.thumb
	.thumb_func
	.type	_ZN2OT8OffsetToINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEES4_E8sanitizeEPNS_21hb_sanitize_context_tEPv, %function
_ZN2OT8OffsetToINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEES4_E8sanitizeEPNS_21hb_sanitize_context_tEPv:
	.fnstart
.LFB329:
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
	ldr	r4, [r7, #8]
	ldr	r0, [r7, #8]
	bl	_ZN2OT21hb_sanitize_context_t8get_nameEv(PLT)
	mov	r3, r0
	add	r2, r7, #20
	ldr	r1, .L318
.LPIC43:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L318+4
.LPIC44:
	add	r1, pc
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r4
	mov	r2, r3
	ldr	r3, [r7, #12]
	bl	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z(PLT)
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #12]
	bl	_ZNK2OT21hb_sanitize_context_t12check_structINS_8OffsetToINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEES6_EEEEbPKT_(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L311
	add	r3, r7, #20
	mov	r0, r3
	movs	r1, #0
	movw	r2, #759
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L317
.L311:
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	_ZNK2OT7IntTypeIjLj4EEcvjEv(PLT)
	mov	r3, r0
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L313
	add	r3, r7, #20
	mov	r0, r3
	movs	r1, #1
	movw	r2, #761
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L317
.L313:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #28]
	bl	_ZN2OTL14StructAtOffsetINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEEEERT_Pvj(PLT)
	str	r0, [r7, #24]
	ldr	r3, [r7, #24]
	mov	r0, r3
	ldr	r1, [r7, #8]
	bl	_ZN2OT7ArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tE(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L314
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_ZN2OT8OffsetToINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEES4_E6neuterEPNS_21hb_sanitize_context_tE(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L315
.L314:
	movs	r3, #1
	b	.L316
.L315:
	movs	r3, #0
.L316:
	add	r2, r7, #20
	mov	r0, r2
	mov	r1, r3
	movw	r2, #763
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
.L317:
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L319:
	.align	2
.L318:
	.word	_ZZN2OT8OffsetToINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEES4_E8sanitizeEPNS_21hb_sanitize_context_tEPvE19__PRETTY_FUNCTION__-(.LPIC43+4)
	.word	.LC13-(.LPIC44+4)
	.fnend
	.size	_ZN2OT8OffsetToINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEES4_E8sanitizeEPNS_21hb_sanitize_context_tEPv, .-_ZN2OT8OffsetToINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEES4_E8sanitizeEPNS_21hb_sanitize_context_tEPv
	.section	.text._ZNK2OT13SortedArrayOfINS_23VariationSelectorRecordENS_7IntTypeIjLj4EEEE7bsearchIjEEiRKT_,"axG",%progbits,_ZNK2OT13SortedArrayOfINS_23VariationSelectorRecordENS_7IntTypeIjLj4EEEE7bsearchIjEEiRKT_,comdat
	.align	2
	.weak	_ZNK2OT13SortedArrayOfINS_23VariationSelectorRecordENS_7IntTypeIjLj4EEEE7bsearchIjEEiRKT_
	.thumb
	.thumb_func
	.type	_ZNK2OT13SortedArrayOfINS_23VariationSelectorRecordENS_7IntTypeIjLj4EEEE7bsearchIjEEiRKT_, %function
_ZNK2OT13SortedArrayOfINS_23VariationSelectorRecordENS_7IntTypeIjLj4EEEE7bsearchIjEEiRKT_:
	.fnstart
.LFB330:
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
	bl	_ZNK2OT7IntTypeIjLj4EEcvjEv(PLT)
	mov	r3, r0
	subs	r3, r3, #1
	str	r3, [r7, #16]
	b	.L321
.L325:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	add	r3, r3, r2
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #4
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZNK2OT23VariationSelectorRecord3cmpERKj(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bge	.L322
	ldr	r3, [r7, #12]
	subs	r3, r3, #1
	str	r3, [r7, #16]
	b	.L321
.L322:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	ble	.L323
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #20]
	b	.L321
.L323:
	ldr	r3, [r7, #12]
	b	.L324
.L321:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	ble	.L325
	mov	r3, #-1
.L324:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT13SortedArrayOfINS_23VariationSelectorRecordENS_7IntTypeIjLj4EEEE7bsearchIjEEiRKT_, .-_ZNK2OT13SortedArrayOfINS_23VariationSelectorRecordENS_7IntTypeIjLj4EEEE7bsearchIjEEiRKT_
	.section	.text._ZNK2OT7ArrayOfINS_23VariationSelectorRecordENS_7IntTypeIjLj4EEEEixEj,"axG",%progbits,_ZNK2OT7ArrayOfINS_23VariationSelectorRecordENS_7IntTypeIjLj4EEEEixEj,comdat
	.align	2
	.weak	_ZNK2OT7ArrayOfINS_23VariationSelectorRecordENS_7IntTypeIjLj4EEEEixEj
	.thumb
	.thumb_func
	.type	_ZNK2OT7ArrayOfINS_23VariationSelectorRecordENS_7IntTypeIjLj4EEEEixEj, %function
_ZNK2OT7ArrayOfINS_23VariationSelectorRecordENS_7IntTypeIjLj4EEEEixEj:
	.fnstart
.LFB331:
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
	bl	_ZNK2OT7IntTypeIjLj4EEcvjEv(PLT)
	mov	r2, r0
	ldr	r3, [r7]
	cmp	r2, r3
	ite	ls
	movls	r3, #1
	movhi	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L327
	bl	_ZN2OTL4NullINS_23VariationSelectorRecordEEERKT_v(PLT)
	mov	r3, r0
	b	.L328
.L327:
	ldr	r2, [r7]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #4
.L328:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT7ArrayOfINS_23VariationSelectorRecordENS_7IntTypeIjLj4EEEEixEj, .-_ZNK2OT7ArrayOfINS_23VariationSelectorRecordENS_7IntTypeIjLj4EEEEixEj
	.section	.text._ZNK2OT21hb_sanitize_context_t12check_structINS_20CmapSubtableFormat14EEEbPKT_,"axG",%progbits,_ZNK2OT21hb_sanitize_context_t12check_structINS_20CmapSubtableFormat14EEEbPKT_,comdat
	.align	2
	.weak	_ZNK2OT21hb_sanitize_context_t12check_structINS_20CmapSubtableFormat14EEEbPKT_
	.thumb
	.thumb_func
	.type	_ZNK2OT21hb_sanitize_context_t12check_structINS_20CmapSubtableFormat14EEEbPKT_, %function
_ZNK2OT21hb_sanitize_context_t12check_structINS_20CmapSubtableFormat14EEEbPKT_:
	.fnstart
.LFB332:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	movs	r2, #10
	bl	_ZNK2OT21hb_sanitize_context_t11check_rangeEPKvj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZNK2OT21hb_sanitize_context_t12check_structINS_20CmapSubtableFormat14EEEbPKT_, .-_ZNK2OT21hb_sanitize_context_t12check_structINS_20CmapSubtableFormat14EEEbPKT_
	.section	.text._ZN2OT7ArrayOfINS_23VariationSelectorRecordENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEPv,"axG",%progbits,_ZN2OT7ArrayOfINS_23VariationSelectorRecordENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEPv,comdat
	.align	2
	.weak	_ZN2OT7ArrayOfINS_23VariationSelectorRecordENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEPv
	.thumb
	.thumb_func
	.type	_ZN2OT7ArrayOfINS_23VariationSelectorRecordENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEPv, %function
_ZN2OT7ArrayOfINS_23VariationSelectorRecordENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEPv:
	.fnstart
.LFB333:
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
	ldr	r4, [r7, #8]
	ldr	r0, [r7, #8]
	bl	_ZN2OT21hb_sanitize_context_t8get_nameEv(PLT)
	mov	r3, r0
	add	r2, r7, #20
	ldr	r1, .L338
.LPIC45:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L338+4
.LPIC46:
	add	r1, pc
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r4
	mov	r2, r3
	ldr	r3, [r7, #12]
	bl	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z(PLT)
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_ZN2OT7ArrayOfINS_23VariationSelectorRecordENS_7IntTypeIjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tE(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L332
	add	r3, r7, #20
	mov	r0, r3
	movs	r1, #0
	movw	r2, #858
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L337
.L332:
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	_ZNK2OT7IntTypeIjLj4EEcvjEv(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L334
.L336:
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	adds	r3, r3, #4
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	_ZN2OT23VariationSelectorRecord8sanitizeEPNS_21hb_sanitize_context_tEPv(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L335
	add	r3, r7, #20
	mov	r0, r3
	movs	r1, #0
	movw	r2, #862
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L337
.L335:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L334:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bcc	.L336
	add	r3, r7, #20
	mov	r0, r3
	movs	r1, #1
	movw	r2, #863
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
.L337:
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L339:
	.align	2
.L338:
	.word	_ZZN2OT7ArrayOfINS_23VariationSelectorRecordENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEPvE19__PRETTY_FUNCTION__-(.LPIC45+4)
	.word	.LC13-(.LPIC46+4)
	.fnend
	.size	_ZN2OT7ArrayOfINS_23VariationSelectorRecordENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEPv, .-_ZN2OT7ArrayOfINS_23VariationSelectorRecordENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEPv
	.section	.text._ZNK2OT19CmapSubtableTrimmedINS_7IntTypeItLj2EEEE9get_glyphEjPj,"axG",%progbits,_ZNK2OT19CmapSubtableTrimmedINS_7IntTypeItLj2EEEE9get_glyphEjPj,comdat
	.align	2
	.weak	_ZNK2OT19CmapSubtableTrimmedINS_7IntTypeItLj2EEEE9get_glyphEjPj
	.thumb
	.thumb_func
	.type	_ZNK2OT19CmapSubtableTrimmedINS_7IntTypeItLj2EEEE9get_glyphEjPj, %function
_ZNK2OT19CmapSubtableTrimmedINS_7IntTypeItLj2EEEE9get_glyphEjPj:
	.fnstart
.LFB334:
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
	add	r4, r3, #8
	ldr	r3, [r7, #12]
	adds	r3, r3, #6
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	ldr	r2, [r7, #8]
	subs	r3, r2, r3
	mov	r0, r4
	mov	r1, r3
	bl	_ZNK2OT7ArrayOfINS_7IntTypeItLj2EEES2_EixEj(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L341
	movs	r3, #0
	b	.L342
.L341:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #20]
	str	r2, [r3]
	movs	r3, #1
.L342:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZNK2OT19CmapSubtableTrimmedINS_7IntTypeItLj2EEEE9get_glyphEjPj, .-_ZNK2OT19CmapSubtableTrimmedINS_7IntTypeItLj2EEEE9get_glyphEjPj
	.section	.text._ZNK2OT19CmapSubtableTrimmedINS_7IntTypeIjLj4EEEE9get_glyphEjPj,"axG",%progbits,_ZNK2OT19CmapSubtableTrimmedINS_7IntTypeIjLj4EEEE9get_glyphEjPj,comdat
	.align	2
	.weak	_ZNK2OT19CmapSubtableTrimmedINS_7IntTypeIjLj4EEEE9get_glyphEjPj
	.thumb
	.thumb_func
	.type	_ZNK2OT19CmapSubtableTrimmedINS_7IntTypeIjLj4EEEE9get_glyphEjPj, %function
_ZNK2OT19CmapSubtableTrimmedINS_7IntTypeIjLj4EEEE9get_glyphEjPj:
	.fnstart
.LFB335:
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
	add	r4, r3, #16
	ldr	r3, [r7, #12]
	adds	r3, r3, #12
	mov	r0, r3
	bl	_ZNK2OT7IntTypeIjLj4EEcvjEv(PLT)
	mov	r3, r0
	ldr	r2, [r7, #8]
	subs	r3, r2, r3
	mov	r0, r4
	mov	r1, r3
	bl	_ZNK2OT7ArrayOfINS_7IntTypeItLj2EEENS1_IjLj4EEEEixEj(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L344
	movs	r3, #0
	b	.L345
.L344:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #20]
	str	r2, [r3]
	movs	r3, #1
.L345:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZNK2OT19CmapSubtableTrimmedINS_7IntTypeIjLj4EEEE9get_glyphEjPj, .-_ZNK2OT19CmapSubtableTrimmedINS_7IntTypeIjLj4EEEE9get_glyphEjPj
	.section	.text._ZNK2OT25CmapSubtableLongSegmentedINS_20CmapSubtableFormat12EE9get_glyphEjPj,"axG",%progbits,_ZNK2OT25CmapSubtableLongSegmentedINS_20CmapSubtableFormat12EE9get_glyphEjPj,comdat
	.align	2
	.weak	_ZNK2OT25CmapSubtableLongSegmentedINS_20CmapSubtableFormat12EE9get_glyphEjPj
	.thumb
	.thumb_func
	.type	_ZNK2OT25CmapSubtableLongSegmentedINS_20CmapSubtableFormat12EE9get_glyphEjPj, %function
_ZNK2OT25CmapSubtableLongSegmentedINS_20CmapSubtableFormat12EE9get_glyphEjPj:
	.fnstart
.LFB336:
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
	add	r2, r3, #12
	add	r3, r7, #8
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK2OT13SortedArrayOfINS_21CmapSubtableLongGroupENS_7IntTypeIjLj4EEEE7bsearchIjEEiRKT_(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #-1
	bne	.L347
	movs	r3, #0
	b	.L348
.L347:
	ldr	r3, [r7, #12]
	add	r2, r3, #12
	ldr	r3, [r7, #20]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK2OT7ArrayOfINS_21CmapSubtableLongGroupENS_7IntTypeIjLj4EEEEixEj(PLT)
	mov	r2, r0
	ldr	r3, [r7, #8]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OT20CmapSubtableFormat1215group_get_glyphERKNS_21CmapSubtableLongGroupEj(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3]
	movs	r3, #1
.L348:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT25CmapSubtableLongSegmentedINS_20CmapSubtableFormat12EE9get_glyphEjPj, .-_ZNK2OT25CmapSubtableLongSegmentedINS_20CmapSubtableFormat12EE9get_glyphEjPj
	.section	.text._ZNK2OT25CmapSubtableLongSegmentedINS_20CmapSubtableFormat13EE9get_glyphEjPj,"axG",%progbits,_ZNK2OT25CmapSubtableLongSegmentedINS_20CmapSubtableFormat13EE9get_glyphEjPj,comdat
	.align	2
	.weak	_ZNK2OT25CmapSubtableLongSegmentedINS_20CmapSubtableFormat13EE9get_glyphEjPj
	.thumb
	.thumb_func
	.type	_ZNK2OT25CmapSubtableLongSegmentedINS_20CmapSubtableFormat13EE9get_glyphEjPj, %function
_ZNK2OT25CmapSubtableLongSegmentedINS_20CmapSubtableFormat13EE9get_glyphEjPj:
	.fnstart
.LFB337:
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
	add	r2, r3, #12
	add	r3, r7, #8
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK2OT13SortedArrayOfINS_21CmapSubtableLongGroupENS_7IntTypeIjLj4EEEE7bsearchIjEEiRKT_(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #-1
	bne	.L350
	movs	r3, #0
	b	.L351
.L350:
	ldr	r3, [r7, #12]
	add	r2, r3, #12
	ldr	r3, [r7, #20]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK2OT7ArrayOfINS_21CmapSubtableLongGroupENS_7IntTypeIjLj4EEEEixEj(PLT)
	mov	r2, r0
	ldr	r3, [r7, #8]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OT20CmapSubtableFormat1315group_get_glyphERKNS_21CmapSubtableLongGroupEj(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3]
	movs	r3, #1
.L351:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT25CmapSubtableLongSegmentedINS_20CmapSubtableFormat13EE9get_glyphEjPj, .-_ZNK2OT25CmapSubtableLongSegmentedINS_20CmapSubtableFormat13EE9get_glyphEjPj
	.section	.text._ZN2OT7IntTypeItLj2EE8sanitizeEPNS_21hb_sanitize_context_tE,"axG",%progbits,_ZN2OT7IntTypeItLj2EE8sanitizeEPNS_21hb_sanitize_context_tE,comdat
	.align	2
	.weak	_ZN2OT7IntTypeItLj2EE8sanitizeEPNS_21hb_sanitize_context_tE
	.thumb
	.thumb_func
	.type	_ZN2OT7IntTypeItLj2EE8sanitizeEPNS_21hb_sanitize_context_tE, %function
_ZN2OT7IntTypeItLj2EE8sanitizeEPNS_21hb_sanitize_context_tE:
	.fnstart
.LFB338:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #28
	sub	sp, sp, #28
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r4, [r7]
	ldr	r0, [r7]
	bl	_ZN2OT21hb_sanitize_context_t8get_nameEv(PLT)
	mov	r3, r0
	add	r2, r7, #12
	ldr	r1, .L354
.LPIC47:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L354+4
.LPIC48:
	add	r1, pc
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r4
	mov	r2, r3
	ldr	r3, [r7, #4]
	bl	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z(PLT)
	ldr	r0, [r7]
	ldr	r1, [r7, #4]
	bl	_ZNK2OT21hb_sanitize_context_t12check_structINS_7IntTypeItLj2EEEEEbPKT_(PLT)
	mov	r3, r0
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	mov	r2, #624
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L355:
	.align	2
.L354:
	.word	_ZZN2OT7IntTypeItLj2EE8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__-(.LPIC47+4)
	.word	.LC13-(.LPIC48+4)
	.fnend
	.size	_ZN2OT7IntTypeItLj2EE8sanitizeEPNS_21hb_sanitize_context_tE, .-_ZN2OT7IntTypeItLj2EE8sanitizeEPNS_21hb_sanitize_context_tE
	.section	.text._ZN2OT19CmapSubtableTrimmedINS_7IntTypeItLj2EEEE8sanitizeEPNS_21hb_sanitize_context_tE,"axG",%progbits,_ZN2OT19CmapSubtableTrimmedINS_7IntTypeItLj2EEEE8sanitizeEPNS_21hb_sanitize_context_tE,comdat
	.align	2
	.weak	_ZN2OT19CmapSubtableTrimmedINS_7IntTypeItLj2EEEE8sanitizeEPNS_21hb_sanitize_context_tE
	.thumb
	.thumb_func
	.type	_ZN2OT19CmapSubtableTrimmedINS_7IntTypeItLj2EEEE8sanitizeEPNS_21hb_sanitize_context_tE, %function
_ZN2OT19CmapSubtableTrimmedINS_7IntTypeItLj2EEEE8sanitizeEPNS_21hb_sanitize_context_tE:
	.fnstart
.LFB339:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #28
	sub	sp, sp, #28
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r4, [r7]
	ldr	r0, [r7]
	bl	_ZN2OT21hb_sanitize_context_t8get_nameEv(PLT)
	mov	r3, r0
	add	r2, r7, #12
	ldr	r1, .L360
.LPIC49:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L360+4
.LPIC50:
	add	r1, pc
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r4
	mov	r2, r3
	ldr	r3, [r7, #4]
	bl	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z(PLT)
	ldr	r0, [r7]
	ldr	r1, [r7, #4]
	bl	_ZNK2OT21hb_sanitize_context_t12check_structINS_19CmapSubtableTrimmedINS_7IntTypeItLj2EEEEEEEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L357
	ldr	r3, [r7, #4]
	adds	r3, r3, #8
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_E8sanitizeEPNS_21hb_sanitize_context_tE(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L357
	movs	r3, #1
	b	.L358
.L357:
	movs	r3, #0
.L358:
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	movs	r2, #215
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L361:
	.align	2
.L360:
	.word	_ZZN2OT19CmapSubtableTrimmedINS_7IntTypeItLj2EEEE8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__-(.LPIC49+4)
	.word	.LC13-(.LPIC50+4)
	.fnend
	.size	_ZN2OT19CmapSubtableTrimmedINS_7IntTypeItLj2EEEE8sanitizeEPNS_21hb_sanitize_context_tE, .-_ZN2OT19CmapSubtableTrimmedINS_7IntTypeItLj2EEEE8sanitizeEPNS_21hb_sanitize_context_tE
	.section	.text._ZN2OT19CmapSubtableTrimmedINS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tE,"axG",%progbits,_ZN2OT19CmapSubtableTrimmedINS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tE,comdat
	.align	2
	.weak	_ZN2OT19CmapSubtableTrimmedINS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tE
	.thumb
	.thumb_func
	.type	_ZN2OT19CmapSubtableTrimmedINS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tE, %function
_ZN2OT19CmapSubtableTrimmedINS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tE:
	.fnstart
.LFB340:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #28
	sub	sp, sp, #28
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r4, [r7]
	ldr	r0, [r7]
	bl	_ZN2OT21hb_sanitize_context_t8get_nameEv(PLT)
	mov	r3, r0
	add	r2, r7, #12
	ldr	r1, .L366
.LPIC51:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L366+4
.LPIC52:
	add	r1, pc
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r4
	mov	r2, r3
	ldr	r3, [r7, #4]
	bl	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z(PLT)
	ldr	r0, [r7]
	ldr	r1, [r7, #4]
	bl	_ZNK2OT21hb_sanitize_context_t12check_structINS_19CmapSubtableTrimmedINS_7IntTypeIjLj4EEEEEEEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L363
	ldr	r3, [r7, #4]
	adds	r3, r3, #16
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN2OT7ArrayOfINS_7IntTypeItLj2EEENS1_IjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tE(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L363
	movs	r3, #1
	b	.L364
.L363:
	movs	r3, #0
.L364:
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	movs	r2, #215
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L367:
	.align	2
.L366:
	.word	_ZZN2OT19CmapSubtableTrimmedINS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__-(.LPIC51+4)
	.word	.LC13-(.LPIC52+4)
	.fnend
	.size	_ZN2OT19CmapSubtableTrimmedINS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tE, .-_ZN2OT19CmapSubtableTrimmedINS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tE
	.section	.text._ZN2OT25CmapSubtableLongSegmentedINS_20CmapSubtableFormat12EE8sanitizeEPNS_21hb_sanitize_context_tE,"axG",%progbits,_ZN2OT25CmapSubtableLongSegmentedINS_20CmapSubtableFormat12EE8sanitizeEPNS_21hb_sanitize_context_tE,comdat
	.align	2
	.weak	_ZN2OT25CmapSubtableLongSegmentedINS_20CmapSubtableFormat12EE8sanitizeEPNS_21hb_sanitize_context_tE
	.thumb
	.thumb_func
	.type	_ZN2OT25CmapSubtableLongSegmentedINS_20CmapSubtableFormat12EE8sanitizeEPNS_21hb_sanitize_context_tE, %function
_ZN2OT25CmapSubtableLongSegmentedINS_20CmapSubtableFormat12EE8sanitizeEPNS_21hb_sanitize_context_tE:
	.fnstart
.LFB341:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #28
	sub	sp, sp, #28
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r4, [r7]
	ldr	r0, [r7]
	bl	_ZN2OT21hb_sanitize_context_t8get_nameEv(PLT)
	mov	r3, r0
	add	r2, r7, #12
	ldr	r1, .L372
.LPIC53:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L372+4
.LPIC54:
	add	r1, pc
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r4
	mov	r2, r3
	ldr	r3, [r7, #4]
	bl	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z(PLT)
	ldr	r0, [r7]
	ldr	r1, [r7, #4]
	bl	_ZNK2OT21hb_sanitize_context_t12check_structINS_25CmapSubtableLongSegmentedINS_20CmapSubtableFormat12EEEEEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L369
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN2OT7ArrayOfINS_21CmapSubtableLongGroupENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tE(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L369
	movs	r3, #1
	b	.L370
.L369:
	movs	r3, #0
.L370:
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	movs	r2, #247
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L373:
	.align	2
.L372:
	.word	_ZZN2OT25CmapSubtableLongSegmentedINS_20CmapSubtableFormat12EE8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__-(.LPIC53+4)
	.word	.LC13-(.LPIC54+4)
	.fnend
	.size	_ZN2OT25CmapSubtableLongSegmentedINS_20CmapSubtableFormat12EE8sanitizeEPNS_21hb_sanitize_context_tE, .-_ZN2OT25CmapSubtableLongSegmentedINS_20CmapSubtableFormat12EE8sanitizeEPNS_21hb_sanitize_context_tE
	.section	.text._ZN2OT25CmapSubtableLongSegmentedINS_20CmapSubtableFormat13EE8sanitizeEPNS_21hb_sanitize_context_tE,"axG",%progbits,_ZN2OT25CmapSubtableLongSegmentedINS_20CmapSubtableFormat13EE8sanitizeEPNS_21hb_sanitize_context_tE,comdat
	.align	2
	.weak	_ZN2OT25CmapSubtableLongSegmentedINS_20CmapSubtableFormat13EE8sanitizeEPNS_21hb_sanitize_context_tE
	.thumb
	.thumb_func
	.type	_ZN2OT25CmapSubtableLongSegmentedINS_20CmapSubtableFormat13EE8sanitizeEPNS_21hb_sanitize_context_tE, %function
_ZN2OT25CmapSubtableLongSegmentedINS_20CmapSubtableFormat13EE8sanitizeEPNS_21hb_sanitize_context_tE:
	.fnstart
.LFB342:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #28
	sub	sp, sp, #28
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r4, [r7]
	ldr	r0, [r7]
	bl	_ZN2OT21hb_sanitize_context_t8get_nameEv(PLT)
	mov	r3, r0
	add	r2, r7, #12
	ldr	r1, .L378
.LPIC55:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L378+4
.LPIC56:
	add	r1, pc
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r4
	mov	r2, r3
	ldr	r3, [r7, #4]
	bl	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z(PLT)
	ldr	r0, [r7]
	ldr	r1, [r7, #4]
	bl	_ZNK2OT21hb_sanitize_context_t12check_structINS_25CmapSubtableLongSegmentedINS_20CmapSubtableFormat13EEEEEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L375
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN2OT7ArrayOfINS_21CmapSubtableLongGroupENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tE(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L375
	movs	r3, #1
	b	.L376
.L375:
	movs	r3, #0
.L376:
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	movs	r2, #247
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L379:
	.align	2
.L378:
	.word	_ZZN2OT25CmapSubtableLongSegmentedINS_20CmapSubtableFormat13EE8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__-(.LPIC55+4)
	.word	.LC13-(.LPIC56+4)
	.fnend
	.size	_ZN2OT25CmapSubtableLongSegmentedINS_20CmapSubtableFormat13EE8sanitizeEPNS_21hb_sanitize_context_tE, .-_ZN2OT25CmapSubtableLongSegmentedINS_20CmapSubtableFormat13EE8sanitizeEPNS_21hb_sanitize_context_tE
	.section	.text._ZNK2OT7IntTypeItLj2EE3cmpES1_,"axG",%progbits,_ZNK2OT7IntTypeItLj2EE3cmpES1_,comdat
	.align	2
	.weak	_ZNK2OT7IntTypeItLj2EE3cmpES1_
	.thumb
	.thumb_func
	.type	_ZNK2OT7IntTypeItLj2EE3cmpES1_, %function
_ZNK2OT7IntTypeItLj2EE3cmpES1_:
	.fnstart
.LFB343:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	strh	r1, [r7]	@ movhi
	mov	r3, r7
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZNK2OT5BEIntItLi2EEcvtEv(PLT)
	mov	r3, r0
	strh	r3, [r7, #12]	@ movhi
	ldrh	r2, [r7, #14]
	ldrh	r3, [r7, #12]
	cmp	r2, r3
	bcc	.L381
	ldrh	r2, [r7, #14]
	ldrh	r3, [r7, #12]
	cmp	r2, r3
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	b	.L382
.L381:
	mov	r3, #-1
.L382:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT7IntTypeItLj2EE3cmpES1_, .-_ZNK2OT7IntTypeItLj2EE3cmpES1_
	.section	.text._ZNK2OT21hb_sanitize_context_t12check_structINS_14EncodingRecordEEEbPKT_,"axG",%progbits,_ZNK2OT21hb_sanitize_context_t12check_structINS_14EncodingRecordEEEbPKT_,comdat
	.align	2
	.weak	_ZNK2OT21hb_sanitize_context_t12check_structINS_14EncodingRecordEEEbPKT_
	.thumb
	.thumb_func
	.type	_ZNK2OT21hb_sanitize_context_t12check_structINS_14EncodingRecordEEEbPKT_, %function
_ZNK2OT21hb_sanitize_context_t12check_structINS_14EncodingRecordEEEbPKT_:
	.fnstart
.LFB344:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	movs	r2, #8
	bl	_ZNK2OT21hb_sanitize_context_t11check_rangeEPKvj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZNK2OT21hb_sanitize_context_t12check_structINS_14EncodingRecordEEEbPKT_, .-_ZNK2OT21hb_sanitize_context_t12check_structINS_14EncodingRecordEEEbPKT_
	.section	.text._ZN2OT8OffsetToINS_12CmapSubtableENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEPv,"axG",%progbits,_ZN2OT8OffsetToINS_12CmapSubtableENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEPv,comdat
	.align	2
	.weak	_ZN2OT8OffsetToINS_12CmapSubtableENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEPv
	.thumb
	.thumb_func
	.type	_ZN2OT8OffsetToINS_12CmapSubtableENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEPv, %function
_ZN2OT8OffsetToINS_12CmapSubtableENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEPv:
	.fnstart
.LFB345:
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
	ldr	r4, [r7, #8]
	ldr	r0, [r7, #8]
	bl	_ZN2OT21hb_sanitize_context_t8get_nameEv(PLT)
	mov	r3, r0
	add	r2, r7, #20
	ldr	r1, .L394
.LPIC57:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L394+4
.LPIC58:
	add	r1, pc
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r4
	mov	r2, r3
	ldr	r3, [r7, #12]
	bl	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z(PLT)
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #12]
	bl	_ZNK2OT21hb_sanitize_context_t12check_structINS_8OffsetToINS_12CmapSubtableENS_7IntTypeIjLj4EEEEEEEbPKT_(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L387
	add	r3, r7, #20
	mov	r0, r3
	movs	r1, #0
	movw	r2, #759
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L393
.L387:
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	_ZNK2OT7IntTypeIjLj4EEcvjEv(PLT)
	mov	r3, r0
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L389
	add	r3, r7, #20
	mov	r0, r3
	movs	r1, #1
	movw	r2, #761
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L393
.L389:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #28]
	bl	_ZN2OTL14StructAtOffsetINS_12CmapSubtableEEERT_Pvj(PLT)
	str	r0, [r7, #24]
	ldr	r0, [r7, #24]
	ldr	r1, [r7, #8]
	bl	_ZN2OT12CmapSubtable8sanitizeEPNS_21hb_sanitize_context_tE(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L390
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_ZN2OT8OffsetToINS_12CmapSubtableENS_7IntTypeIjLj4EEEE6neuterEPNS_21hb_sanitize_context_tE(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L391
.L390:
	movs	r3, #1
	b	.L392
.L391:
	movs	r3, #0
.L392:
	add	r2, r7, #20
	mov	r0, r2
	mov	r1, r3
	movw	r2, #763
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
.L393:
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L395:
	.align	2
.L394:
	.word	_ZZN2OT8OffsetToINS_12CmapSubtableENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEPvE19__PRETTY_FUNCTION__-(.LPIC57+4)
	.word	.LC13-(.LPIC58+4)
	.fnend
	.size	_ZN2OT8OffsetToINS_12CmapSubtableENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEPv, .-_ZN2OT8OffsetToINS_12CmapSubtableENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEPv
	.section	.text._ZN2OT7IntTypeItLj2EE3setEt,"axG",%progbits,_ZN2OT7IntTypeItLj2EE3setEt,comdat
	.align	2
	.weak	_ZN2OT7IntTypeItLj2EE3setEt
	.thumb
	.thumb_func
	.type	_ZN2OT7IntTypeItLj2EE3setEt, %function
_ZN2OT7IntTypeItLj2EE3setEt:
	.fnstart
.LFB346:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	ldr	r2, [r7, #4]
	ldrh	r3, [r7, #2]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OT5BEIntItLi2EE3setEt(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OT7IntTypeItLj2EE3setEt, .-_ZN2OT7IntTypeItLj2EE3setEt
	.section	.text._ZNK2OT7ArrayOfINS_14EncodingRecordENS_7IntTypeItLj2EEEE7lsearchIS1_EEiRKT_,"axG",%progbits,_ZNK2OT7ArrayOfINS_14EncodingRecordENS_7IntTypeItLj2EEEE7lsearchIS1_EEiRKT_,comdat
	.align	2
	.weak	_ZNK2OT7ArrayOfINS_14EncodingRecordENS_7IntTypeItLj2EEEE7lsearchIS1_EEiRKT_
	.thumb
	.thumb_func
	.type	_ZNK2OT7ArrayOfINS_14EncodingRecordENS_7IntTypeItLj2EEEE7lsearchIS1_EEiRKT_, %function
_ZNK2OT7ArrayOfINS_14EncodingRecordENS_7IntTypeItLj2EEEE7lsearchIS1_EEiRKT_:
	.fnstart
.LFB347:
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
	str	r3, [r7, #8]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L398
.L401:
	ldr	r3, [r7, #12]
	lsls	r3, r3, #3
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #2
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZNK2OT14EncodingRecord3cmpERKS0_(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L399
	ldr	r3, [r7, #12]
	b	.L400
.L399:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L398:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L401
	mov	r3, #-1
.L400:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT7ArrayOfINS_14EncodingRecordENS_7IntTypeItLj2EEEE7lsearchIS1_EEiRKT_, .-_ZNK2OT7ArrayOfINS_14EncodingRecordENS_7IntTypeItLj2EEEE7lsearchIS1_EEiRKT_
	.section	.text._ZNK2OT7ArrayOfINS_14EncodingRecordENS_7IntTypeItLj2EEEEixEj,"axG",%progbits,_ZNK2OT7ArrayOfINS_14EncodingRecordENS_7IntTypeItLj2EEEEixEj,comdat
	.align	2
	.weak	_ZNK2OT7ArrayOfINS_14EncodingRecordENS_7IntTypeItLj2EEEEixEj
	.thumb
	.thumb_func
	.type	_ZNK2OT7ArrayOfINS_14EncodingRecordENS_7IntTypeItLj2EEEEixEj, %function
_ZNK2OT7ArrayOfINS_14EncodingRecordENS_7IntTypeItLj2EEEEixEj:
	.fnstart
.LFB348:
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
	beq	.L403
	bl	_ZN2OTL4NullINS_14EncodingRecordEEERKT_v(PLT)
	mov	r3, r0
	b	.L404
.L403:
	ldr	r3, [r7]
	lsls	r3, r3, #3
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #2
.L404:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT7ArrayOfINS_14EncodingRecordENS_7IntTypeItLj2EEEEixEj, .-_ZNK2OT7ArrayOfINS_14EncodingRecordENS_7IntTypeItLj2EEEEixEj
	.section	.text._ZN2OTplIPKNS_4cmapENS_7IntTypeIjLj4EEENS_12CmapSubtableEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTplIPKNS_4cmapENS_7IntTypeIjLj4EEENS_12CmapSubtableEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE, %function
_ZN2OTplIPKNS_4cmapENS_7IntTypeIjLj4EEENS_12CmapSubtableEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE:
	.fnstart
.LFB349:
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
	bl	_ZNK2OT8OffsetToINS_12CmapSubtableENS_7IntTypeIjLj4EEEEclEPKv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OTplIPKNS_4cmapENS_7IntTypeIjLj4EEENS_12CmapSubtableEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE, .-_ZN2OTplIPKNS_4cmapENS_7IntTypeIjLj4EEENS_12CmapSubtableEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE
	.section	.text._ZNK2OT21hb_sanitize_context_t12check_structINS_4cmapEEEbPKT_,"axG",%progbits,_ZNK2OT21hb_sanitize_context_t12check_structINS_4cmapEEEbPKT_,comdat
	.align	2
	.weak	_ZNK2OT21hb_sanitize_context_t12check_structINS_4cmapEEEbPKT_
	.thumb
	.thumb_func
	.type	_ZNK2OT21hb_sanitize_context_t12check_structINS_4cmapEEEbPKT_, %function
_ZNK2OT21hb_sanitize_context_t12check_structINS_4cmapEEEbPKT_:
	.fnstart
.LFB350:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	movs	r2, #4
	bl	_ZNK2OT21hb_sanitize_context_t11check_rangeEPKvj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZNK2OT21hb_sanitize_context_t12check_structINS_4cmapEEEbPKT_, .-_ZNK2OT21hb_sanitize_context_t12check_structINS_4cmapEEEbPKT_
	.section	.text._ZN2OT7ArrayOfINS_14EncodingRecordENS_7IntTypeItLj2EEEE8sanitizeEPNS_21hb_sanitize_context_tEPv,"axG",%progbits,_ZN2OT7ArrayOfINS_14EncodingRecordENS_7IntTypeItLj2EEEE8sanitizeEPNS_21hb_sanitize_context_tEPv,comdat
	.align	2
	.weak	_ZN2OT7ArrayOfINS_14EncodingRecordENS_7IntTypeItLj2EEEE8sanitizeEPNS_21hb_sanitize_context_tEPv
	.thumb
	.thumb_func
	.type	_ZN2OT7ArrayOfINS_14EncodingRecordENS_7IntTypeItLj2EEEE8sanitizeEPNS_21hb_sanitize_context_tEPv, %function
_ZN2OT7ArrayOfINS_14EncodingRecordENS_7IntTypeItLj2EEEE8sanitizeEPNS_21hb_sanitize_context_tEPv:
	.fnstart
.LFB351:
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
	ldr	r4, [r7, #8]
	ldr	r0, [r7, #8]
	bl	_ZN2OT21hb_sanitize_context_t8get_nameEv(PLT)
	mov	r3, r0
	add	r2, r7, #20
	ldr	r1, .L416
.LPIC59:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L416+4
.LPIC60:
	add	r1, pc
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r4
	mov	r2, r3
	ldr	r3, [r7, #12]
	bl	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z(PLT)
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_ZN2OT7ArrayOfINS_14EncodingRecordENS_7IntTypeItLj2EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tE(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L410
	add	r3, r7, #20
	mov	r0, r3
	movs	r1, #0
	movw	r2, #858
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L415
.L410:
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L412
.L414:
	ldr	r3, [r7, #28]
	lsls	r3, r3, #3
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	adds	r3, r3, #2
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	_ZN2OT14EncodingRecord8sanitizeEPNS_21hb_sanitize_context_tEPv(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L413
	add	r3, r7, #20
	mov	r0, r3
	movs	r1, #0
	movw	r2, #862
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L415
.L413:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L412:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bcc	.L414
	add	r3, r7, #20
	mov	r0, r3
	movs	r1, #1
	movw	r2, #863
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
.L415:
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L417:
	.align	2
.L416:
	.word	_ZZN2OT7ArrayOfINS_14EncodingRecordENS_7IntTypeItLj2EEEE8sanitizeEPNS_21hb_sanitize_context_tEPvE19__PRETTY_FUNCTION__-(.LPIC59+4)
	.word	.LC13-(.LPIC60+4)
	.fnend
	.size	_ZN2OT7ArrayOfINS_14EncodingRecordENS_7IntTypeItLj2EEEE8sanitizeEPNS_21hb_sanitize_context_tEPv, .-_ZN2OT7ArrayOfINS_14EncodingRecordENS_7IntTypeItLj2EEEE8sanitizeEPNS_21hb_sanitize_context_tEPv
	.section	.text._ZNK2OT21hb_sanitize_context_t12check_structINS_4_heaEEEbPKT_,"axG",%progbits,_ZNK2OT21hb_sanitize_context_t12check_structINS_4_heaEEEbPKT_,comdat
	.align	2
	.weak	_ZNK2OT21hb_sanitize_context_t12check_structINS_4_heaEEEbPKT_
	.thumb
	.thumb_func
	.type	_ZNK2OT21hb_sanitize_context_t12check_structINS_4_heaEEEbPKT_, %function
_ZNK2OT21hb_sanitize_context_t12check_structINS_4_heaEEEbPKT_:
	.fnstart
.LFB352:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	movs	r2, #36
	bl	_ZNK2OT21hb_sanitize_context_t11check_rangeEPKvj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZNK2OT21hb_sanitize_context_t12check_structINS_4_heaEEEbPKT_, .-_ZNK2OT21hb_sanitize_context_t12check_structINS_4_heaEEEbPKT_
	.section	.rodata
	.align	2
.LC14:
	.ascii	"start\000"
	.align	2
.LC15:
	.ascii	"passed first round with %d edits; going for second "
	.ascii	"round\000"
	.align	2
.LC16:
	.ascii	"requested %d edits in second round; FAILLING\000"
	.align	2
.LC17:
	.ascii	"retry\000"
	.align	2
.LC18:
	.ascii	"PASSED\000"
	.align	2
.LC19:
	.ascii	"FAILED\000"
	.section	.text._ZN2OT9SanitizerINS_4_heaEE8sanitizeEP9hb_blob_t,"axG",%progbits,_ZN2OT9SanitizerINS_4_heaEE8sanitizeEP9hb_blob_t,comdat
	.align	2
	.weak	_ZN2OT9SanitizerINS_4_heaEE8sanitizeEP9hb_blob_t
	.thumb
	.thumb_func
	.type	_ZN2OT9SanitizerINS_4_heaEE8sanitizeEP9hb_blob_t, %function
_ZN2OT9SanitizerINS_4_heaEE8sanitizeEP9hb_blob_t:
	.fnstart
.LFB353:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #68
	sub	sp, sp, #68
	.setfp r7, sp, #16
	add	r7, sp, #16
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	strb	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #32]
	add	r3, r7, #12
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	_ZN2OT21hb_sanitize_context_t4initEP9hb_blob_t(PLT)
.L421:
	ldr	r3, [r7, #16]
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	ldr	r2, .L430
.LPIC61:
	add	r2, pc
	str	r2, [sp, #8]
	ldr	r2, .L430+4
.LPIC62:
	add	r2, pc
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L430+8
.LPIC63:
	add	r3, pc
	mov	r2, r3
	movs	r3, #0
	bl	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z(PLT)
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN2OT21hb_sanitize_context_t16start_processingEv(PLT)
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L422
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN2OT21hb_sanitize_context_t14end_processingEv(PLT)
	ldr	r3, [r7, #4]
	b	.L429
.L422:
	ldr	r3, [r7, #16]
	mov	r0, r3
	bl	_ZN2OTL5CastPINS_4_heaEcEEPT_PT0_(PLT)
	str	r0, [r7, #40]
	add	r3, r7, #12
	ldr	r0, [r7, #40]
	mov	r1, r3
	bl	_ZN2OT4_hea8sanitizeEPNS_21hb_sanitize_context_tE(PLT)
	mov	r3, r0
	strb	r3, [r7, #47]
	ldrb	r3, [r7, #47]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L424
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L425
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #28]
	movs	r1, #0
	str	r1, [sp]
	movs	r1, #0
	str	r1, [sp, #4]
	ldr	r1, .L430+12
.LPIC64:
	add	r1, pc
	str	r1, [sp, #8]
	str	r2, [sp, #12]
	ldr	r2, .L430+16
.LPIC65:
	add	r2, pc
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L430+20
.LPIC66:
	add	r3, pc
	mov	r2, r3
	movs	r3, #0
	bl	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z(PLT)
	movs	r3, #0
	str	r3, [r7, #28]
	add	r3, r7, #12
	ldr	r0, [r7, #40]
	mov	r1, r3
	bl	_ZN2OT4_hea8sanitizeEPNS_21hb_sanitize_context_tE(PLT)
	mov	r3, r0
	strb	r3, [r7, #47]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L425
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #28]
	movs	r1, #0
	str	r1, [sp]
	movs	r1, #0
	str	r1, [sp, #4]
	ldr	r1, .L430+24
.LPIC67:
	add	r1, pc
	str	r1, [sp, #8]
	str	r2, [sp, #12]
	ldr	r2, .L430+28
.LPIC68:
	add	r2, pc
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L430+32
.LPIC69:
	add	r3, pc
	mov	r2, r3
	movs	r3, #0
	bl	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z(PLT)
	movs	r3, #0
	strb	r3, [r7, #47]
	b	.L425
.L424:
	ldr	r3, [r7, #28]
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L425
	ldrb	r3, [r7, #24]	@ zero_extendqisi2
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L425
	ldr	r0, [r7, #4]
	movs	r1, #0
	bl	hb_blob_get_data_writable(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r4, [r7, #16]
	ldr	r0, [r7, #4]
	bl	hb_blob_get_length(PLT)
	mov	r3, r0
	add	r3, r3, r4
	str	r3, [r7, #20]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L425
	movs	r3, #1
	strb	r3, [r7, #24]
	ldr	r3, [r7, #16]
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	ldr	r2, .L430+36
.LPIC70:
	add	r2, pc
	str	r2, [sp, #8]
	ldr	r2, .L430+40
.LPIC71:
	add	r2, pc
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L430+44
.LPIC72:
	add	r3, pc
	mov	r2, r3
	movs	r3, #0
	bl	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z(PLT)
	b	.L421
.L425:
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN2OT21hb_sanitize_context_t14end_processingEv(PLT)
	ldr	r2, [r7, #16]
	ldrb	r3, [r7, #47]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L426
	ldr	r3, .L430+48
.LPIC73:
	add	r3, pc
	b	.L427
.L426:
	ldr	r3, .L430+52
.LPIC74:
	add	r3, pc
.L427:
	movs	r1, #0
	str	r1, [sp]
	movs	r1, #0
	str	r1, [sp, #4]
	str	r3, [sp, #8]
	ldr	r3, .L430+56
.LPIC75:
	add	r3, pc
	mov	r0, r3
	mov	r1, r2
	ldr	r3, .L430+60
.LPIC76:
	add	r3, pc
	mov	r2, r3
	movs	r3, #0
	bl	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z(PLT)
	ldrb	r3, [r7, #47]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L428
	ldr	r3, [r7, #4]
	b	.L429
.L428:
	ldr	r0, [r7, #4]
	bl	hb_blob_destroy(PLT)
	bl	hb_blob_get_empty(PLT)
	mov	r3, r0
.L429:
	mov	r0, r3
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L431:
	.align	2
.L430:
	.word	.LC14-(.LPIC61+4)
	.word	.LC0-(.LPIC62+4)
	.word	_ZZN2OT9SanitizerINS_4_heaEE8sanitizeEP9hb_blob_tE19__PRETTY_FUNCTION__-(.LPIC63+4)
	.word	.LC15-(.LPIC64+4)
	.word	.LC0-(.LPIC65+4)
	.word	_ZZN2OT9SanitizerINS_4_heaEE8sanitizeEP9hb_blob_tE19__PRETTY_FUNCTION__-(.LPIC66+4)
	.word	.LC16-(.LPIC67+4)
	.word	.LC0-(.LPIC68+4)
	.word	_ZZN2OT9SanitizerINS_4_heaEE8sanitizeEP9hb_blob_tE19__PRETTY_FUNCTION__-(.LPIC69+4)
	.word	.LC17-(.LPIC70+4)
	.word	.LC0-(.LPIC71+4)
	.word	_ZZN2OT9SanitizerINS_4_heaEE8sanitizeEP9hb_blob_tE19__PRETTY_FUNCTION__-(.LPIC72+4)
	.word	.LC18-(.LPIC73+4)
	.word	.LC19-(.LPIC74+4)
	.word	.LC0-(.LPIC75+4)
	.word	_ZZN2OT9SanitizerINS_4_heaEE8sanitizeEP9hb_blob_tE19__PRETTY_FUNCTION__-(.LPIC76+4)
	.fnend
	.size	_ZN2OT9SanitizerINS_4_heaEE8sanitizeEP9hb_blob_t, .-_ZN2OT9SanitizerINS_4_heaEE8sanitizeEP9hb_blob_t
	.section	.text._ZN2OT9SanitizerINS_4_heaEE13lock_instanceEP9hb_blob_t,"axG",%progbits,_ZN2OT9SanitizerINS_4_heaEE13lock_instanceEP9hb_blob_t,comdat
	.align	2
	.weak	_ZN2OT9SanitizerINS_4_heaEE13lock_instanceEP9hb_blob_t
	.thumb
	.thumb_func
	.type	_ZN2OT9SanitizerINS_4_heaEE13lock_instanceEP9hb_blob_t, %function
_ZN2OT9SanitizerINS_4_heaEE13lock_instanceEP9hb_blob_t:
	.fnstart
.LFB354:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	hb_blob_make_immutable(PLT)
	ldr	r0, [r7, #4]
	movs	r1, #0
	bl	hb_blob_get_data(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L433
	bl	_ZN2OTL4NullINS_4_heaEEERKT_v(PLT)
	mov	r3, r0
	b	.L434
.L433:
	ldr	r0, [r7, #12]
	bl	_ZN2OTL5CastPINS_4_heaEcEEPKT_PKT0_(PLT)
	mov	r3, r0
.L434:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OT9SanitizerINS_4_heaEE13lock_instanceEP9hb_blob_t, .-_ZN2OT9SanitizerINS_4_heaEE13lock_instanceEP9hb_blob_t
	.section	.text._ZN2OT9SanitizerINS_4_mtxEE8sanitizeEP9hb_blob_t,"axG",%progbits,_ZN2OT9SanitizerINS_4_mtxEE8sanitizeEP9hb_blob_t,comdat
	.align	2
	.weak	_ZN2OT9SanitizerINS_4_mtxEE8sanitizeEP9hb_blob_t
	.thumb
	.thumb_func
	.type	_ZN2OT9SanitizerINS_4_mtxEE8sanitizeEP9hb_blob_t, %function
_ZN2OT9SanitizerINS_4_mtxEE8sanitizeEP9hb_blob_t:
	.fnstart
.LFB355:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #68
	sub	sp, sp, #68
	.setfp r7, sp, #16
	add	r7, sp, #16
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	strb	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #32]
	add	r3, r7, #12
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	_ZN2OT21hb_sanitize_context_t4initEP9hb_blob_t(PLT)
.L437:
	ldr	r3, [r7, #16]
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	ldr	r2, .L446
.LPIC77:
	add	r2, pc
	str	r2, [sp, #8]
	ldr	r2, .L446+4
.LPIC78:
	add	r2, pc
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L446+8
.LPIC79:
	add	r3, pc
	mov	r2, r3
	movs	r3, #0
	bl	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z(PLT)
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN2OT21hb_sanitize_context_t16start_processingEv(PLT)
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L438
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN2OT21hb_sanitize_context_t14end_processingEv(PLT)
	ldr	r3, [r7, #4]
	b	.L445
.L438:
	ldr	r3, [r7, #16]
	mov	r0, r3
	bl	_ZN2OTL5CastPINS_4_mtxEcEEPT_PT0_(PLT)
	str	r0, [r7, #40]
	add	r3, r7, #12
	ldr	r0, [r7, #40]
	mov	r1, r3
	bl	_ZN2OT4_mtx8sanitizeEPNS_21hb_sanitize_context_tE(PLT)
	mov	r3, r0
	strb	r3, [r7, #47]
	ldrb	r3, [r7, #47]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L440
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L441
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #28]
	movs	r1, #0
	str	r1, [sp]
	movs	r1, #0
	str	r1, [sp, #4]
	ldr	r1, .L446+12
.LPIC80:
	add	r1, pc
	str	r1, [sp, #8]
	str	r2, [sp, #12]
	ldr	r2, .L446+16
.LPIC81:
	add	r2, pc
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L446+20
.LPIC82:
	add	r3, pc
	mov	r2, r3
	movs	r3, #0
	bl	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z(PLT)
	movs	r3, #0
	str	r3, [r7, #28]
	add	r3, r7, #12
	ldr	r0, [r7, #40]
	mov	r1, r3
	bl	_ZN2OT4_mtx8sanitizeEPNS_21hb_sanitize_context_tE(PLT)
	mov	r3, r0
	strb	r3, [r7, #47]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L441
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #28]
	movs	r1, #0
	str	r1, [sp]
	movs	r1, #0
	str	r1, [sp, #4]
	ldr	r1, .L446+24
.LPIC83:
	add	r1, pc
	str	r1, [sp, #8]
	str	r2, [sp, #12]
	ldr	r2, .L446+28
.LPIC84:
	add	r2, pc
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L446+32
.LPIC85:
	add	r3, pc
	mov	r2, r3
	movs	r3, #0
	bl	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z(PLT)
	movs	r3, #0
	strb	r3, [r7, #47]
	b	.L441
.L440:
	ldr	r3, [r7, #28]
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L441
	ldrb	r3, [r7, #24]	@ zero_extendqisi2
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L441
	ldr	r0, [r7, #4]
	movs	r1, #0
	bl	hb_blob_get_data_writable(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r4, [r7, #16]
	ldr	r0, [r7, #4]
	bl	hb_blob_get_length(PLT)
	mov	r3, r0
	add	r3, r3, r4
	str	r3, [r7, #20]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L441
	movs	r3, #1
	strb	r3, [r7, #24]
	ldr	r3, [r7, #16]
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	ldr	r2, .L446+36
.LPIC86:
	add	r2, pc
	str	r2, [sp, #8]
	ldr	r2, .L446+40
.LPIC87:
	add	r2, pc
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L446+44
.LPIC88:
	add	r3, pc
	mov	r2, r3
	movs	r3, #0
	bl	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z(PLT)
	b	.L437
.L441:
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN2OT21hb_sanitize_context_t14end_processingEv(PLT)
	ldr	r2, [r7, #16]
	ldrb	r3, [r7, #47]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L442
	ldr	r3, .L446+48
.LPIC89:
	add	r3, pc
	b	.L443
.L442:
	ldr	r3, .L446+52
.LPIC90:
	add	r3, pc
.L443:
	movs	r1, #0
	str	r1, [sp]
	movs	r1, #0
	str	r1, [sp, #4]
	str	r3, [sp, #8]
	ldr	r3, .L446+56
.LPIC91:
	add	r3, pc
	mov	r0, r3
	mov	r1, r2
	ldr	r3, .L446+60
.LPIC92:
	add	r3, pc
	mov	r2, r3
	movs	r3, #0
	bl	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z(PLT)
	ldrb	r3, [r7, #47]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L444
	ldr	r3, [r7, #4]
	b	.L445
.L444:
	ldr	r0, [r7, #4]
	bl	hb_blob_destroy(PLT)
	bl	hb_blob_get_empty(PLT)
	mov	r3, r0
.L445:
	mov	r0, r3
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L447:
	.align	2
.L446:
	.word	.LC14-(.LPIC77+4)
	.word	.LC0-(.LPIC78+4)
	.word	_ZZN2OT9SanitizerINS_4_mtxEE8sanitizeEP9hb_blob_tE19__PRETTY_FUNCTION__-(.LPIC79+4)
	.word	.LC15-(.LPIC80+4)
	.word	.LC0-(.LPIC81+4)
	.word	_ZZN2OT9SanitizerINS_4_mtxEE8sanitizeEP9hb_blob_tE19__PRETTY_FUNCTION__-(.LPIC82+4)
	.word	.LC16-(.LPIC83+4)
	.word	.LC0-(.LPIC84+4)
	.word	_ZZN2OT9SanitizerINS_4_mtxEE8sanitizeEP9hb_blob_tE19__PRETTY_FUNCTION__-(.LPIC85+4)
	.word	.LC17-(.LPIC86+4)
	.word	.LC0-(.LPIC87+4)
	.word	_ZZN2OT9SanitizerINS_4_mtxEE8sanitizeEP9hb_blob_tE19__PRETTY_FUNCTION__-(.LPIC88+4)
	.word	.LC18-(.LPIC89+4)
	.word	.LC19-(.LPIC90+4)
	.word	.LC0-(.LPIC91+4)
	.word	_ZZN2OT9SanitizerINS_4_mtxEE8sanitizeEP9hb_blob_tE19__PRETTY_FUNCTION__-(.LPIC92+4)
	.fnend
	.size	_ZN2OT9SanitizerINS_4_mtxEE8sanitizeEP9hb_blob_t, .-_ZN2OT9SanitizerINS_4_mtxEE8sanitizeEP9hb_blob_t
	.section	.text._ZN2OT9SanitizerINS_4_mtxEE13lock_instanceEP9hb_blob_t,"axG",%progbits,_ZN2OT9SanitizerINS_4_mtxEE13lock_instanceEP9hb_blob_t,comdat
	.align	2
	.weak	_ZN2OT9SanitizerINS_4_mtxEE13lock_instanceEP9hb_blob_t
	.thumb
	.thumb_func
	.type	_ZN2OT9SanitizerINS_4_mtxEE13lock_instanceEP9hb_blob_t, %function
_ZN2OT9SanitizerINS_4_mtxEE13lock_instanceEP9hb_blob_t:
	.fnstart
.LFB356:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	hb_blob_make_immutable(PLT)
	ldr	r0, [r7, #4]
	movs	r1, #0
	bl	hb_blob_get_data(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L449
	bl	_ZN2OTL4NullINS_4_mtxEEERKT_v(PLT)
	mov	r3, r0
	b	.L450
.L449:
	ldr	r0, [r7, #12]
	bl	_ZN2OTL5CastPINS_4_mtxEcEEPKT_PKT0_(PLT)
	mov	r3, r0
.L450:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OT9SanitizerINS_4_mtxEE13lock_instanceEP9hb_blob_t, .-_ZN2OT9SanitizerINS_4_mtxEE13lock_instanceEP9hb_blob_t
	.section	.text._ZN2OT9SanitizerINS_4cmapEE8sanitizeEP9hb_blob_t,"axG",%progbits,_ZN2OT9SanitizerINS_4cmapEE8sanitizeEP9hb_blob_t,comdat
	.align	2
	.weak	_ZN2OT9SanitizerINS_4cmapEE8sanitizeEP9hb_blob_t
	.thumb
	.thumb_func
	.type	_ZN2OT9SanitizerINS_4cmapEE8sanitizeEP9hb_blob_t, %function
_ZN2OT9SanitizerINS_4cmapEE8sanitizeEP9hb_blob_t:
	.fnstart
.LFB357:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #68
	sub	sp, sp, #68
	.setfp r7, sp, #16
	add	r7, sp, #16
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	strb	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #32]
	add	r3, r7, #12
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	_ZN2OT21hb_sanitize_context_t4initEP9hb_blob_t(PLT)
.L453:
	ldr	r3, [r7, #16]
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	ldr	r2, .L462
.LPIC93:
	add	r2, pc
	str	r2, [sp, #8]
	ldr	r2, .L462+4
.LPIC94:
	add	r2, pc
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L462+8
.LPIC95:
	add	r3, pc
	mov	r2, r3
	movs	r3, #0
	bl	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z(PLT)
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN2OT21hb_sanitize_context_t16start_processingEv(PLT)
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L454
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN2OT21hb_sanitize_context_t14end_processingEv(PLT)
	ldr	r3, [r7, #4]
	b	.L461
.L454:
	ldr	r3, [r7, #16]
	mov	r0, r3
	bl	_ZN2OTL5CastPINS_4cmapEcEEPT_PT0_(PLT)
	str	r0, [r7, #40]
	add	r3, r7, #12
	ldr	r0, [r7, #40]
	mov	r1, r3
	bl	_ZN2OT4cmap8sanitizeEPNS_21hb_sanitize_context_tE(PLT)
	mov	r3, r0
	strb	r3, [r7, #47]
	ldrb	r3, [r7, #47]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L456
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L457
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #28]
	movs	r1, #0
	str	r1, [sp]
	movs	r1, #0
	str	r1, [sp, #4]
	ldr	r1, .L462+12
.LPIC96:
	add	r1, pc
	str	r1, [sp, #8]
	str	r2, [sp, #12]
	ldr	r2, .L462+16
.LPIC97:
	add	r2, pc
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L462+20
.LPIC98:
	add	r3, pc
	mov	r2, r3
	movs	r3, #0
	bl	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z(PLT)
	movs	r3, #0
	str	r3, [r7, #28]
	add	r3, r7, #12
	ldr	r0, [r7, #40]
	mov	r1, r3
	bl	_ZN2OT4cmap8sanitizeEPNS_21hb_sanitize_context_tE(PLT)
	mov	r3, r0
	strb	r3, [r7, #47]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L457
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #28]
	movs	r1, #0
	str	r1, [sp]
	movs	r1, #0
	str	r1, [sp, #4]
	ldr	r1, .L462+24
.LPIC99:
	add	r1, pc
	str	r1, [sp, #8]
	str	r2, [sp, #12]
	ldr	r2, .L462+28
.LPIC100:
	add	r2, pc
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L462+32
.LPIC101:
	add	r3, pc
	mov	r2, r3
	movs	r3, #0
	bl	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z(PLT)
	movs	r3, #0
	strb	r3, [r7, #47]
	b	.L457
.L456:
	ldr	r3, [r7, #28]
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L457
	ldrb	r3, [r7, #24]	@ zero_extendqisi2
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L457
	ldr	r0, [r7, #4]
	movs	r1, #0
	bl	hb_blob_get_data_writable(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r4, [r7, #16]
	ldr	r0, [r7, #4]
	bl	hb_blob_get_length(PLT)
	mov	r3, r0
	add	r3, r3, r4
	str	r3, [r7, #20]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L457
	movs	r3, #1
	strb	r3, [r7, #24]
	ldr	r3, [r7, #16]
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	ldr	r2, .L462+36
.LPIC102:
	add	r2, pc
	str	r2, [sp, #8]
	ldr	r2, .L462+40
.LPIC103:
	add	r2, pc
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L462+44
.LPIC104:
	add	r3, pc
	mov	r2, r3
	movs	r3, #0
	bl	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z(PLT)
	b	.L453
.L457:
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN2OT21hb_sanitize_context_t14end_processingEv(PLT)
	ldr	r2, [r7, #16]
	ldrb	r3, [r7, #47]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L458
	ldr	r3, .L462+48
.LPIC105:
	add	r3, pc
	b	.L459
.L458:
	ldr	r3, .L462+52
.LPIC106:
	add	r3, pc
.L459:
	movs	r1, #0
	str	r1, [sp]
	movs	r1, #0
	str	r1, [sp, #4]
	str	r3, [sp, #8]
	ldr	r3, .L462+56
.LPIC107:
	add	r3, pc
	mov	r0, r3
	mov	r1, r2
	ldr	r3, .L462+60
.LPIC108:
	add	r3, pc
	mov	r2, r3
	movs	r3, #0
	bl	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z(PLT)
	ldrb	r3, [r7, #47]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L460
	ldr	r3, [r7, #4]
	b	.L461
.L460:
	ldr	r0, [r7, #4]
	bl	hb_blob_destroy(PLT)
	bl	hb_blob_get_empty(PLT)
	mov	r3, r0
.L461:
	mov	r0, r3
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L463:
	.align	2
.L462:
	.word	.LC14-(.LPIC93+4)
	.word	.LC0-(.LPIC94+4)
	.word	_ZZN2OT9SanitizerINS_4cmapEE8sanitizeEP9hb_blob_tE19__PRETTY_FUNCTION__-(.LPIC95+4)
	.word	.LC15-(.LPIC96+4)
	.word	.LC0-(.LPIC97+4)
	.word	_ZZN2OT9SanitizerINS_4cmapEE8sanitizeEP9hb_blob_tE19__PRETTY_FUNCTION__-(.LPIC98+4)
	.word	.LC16-(.LPIC99+4)
	.word	.LC0-(.LPIC100+4)
	.word	_ZZN2OT9SanitizerINS_4cmapEE8sanitizeEP9hb_blob_tE19__PRETTY_FUNCTION__-(.LPIC101+4)
	.word	.LC17-(.LPIC102+4)
	.word	.LC0-(.LPIC103+4)
	.word	_ZZN2OT9SanitizerINS_4cmapEE8sanitizeEP9hb_blob_tE19__PRETTY_FUNCTION__-(.LPIC104+4)
	.word	.LC18-(.LPIC105+4)
	.word	.LC19-(.LPIC106+4)
	.word	.LC0-(.LPIC107+4)
	.word	_ZZN2OT9SanitizerINS_4cmapEE8sanitizeEP9hb_blob_tE19__PRETTY_FUNCTION__-(.LPIC108+4)
	.fnend
	.size	_ZN2OT9SanitizerINS_4cmapEE8sanitizeEP9hb_blob_t, .-_ZN2OT9SanitizerINS_4cmapEE8sanitizeEP9hb_blob_t
	.section	.text._ZN2OT9SanitizerINS_4cmapEE13lock_instanceEP9hb_blob_t,"axG",%progbits,_ZN2OT9SanitizerINS_4cmapEE13lock_instanceEP9hb_blob_t,comdat
	.align	2
	.weak	_ZN2OT9SanitizerINS_4cmapEE13lock_instanceEP9hb_blob_t
	.thumb
	.thumb_func
	.type	_ZN2OT9SanitizerINS_4cmapEE13lock_instanceEP9hb_blob_t, %function
_ZN2OT9SanitizerINS_4cmapEE13lock_instanceEP9hb_blob_t:
	.fnstart
.LFB358:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	hb_blob_make_immutable(PLT)
	ldr	r0, [r7, #4]
	movs	r1, #0
	bl	hb_blob_get_data(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L465
	bl	_ZN2OTL4NullINS_4cmapEEERKT_v(PLT)
	mov	r3, r0
	b	.L466
.L465:
	ldr	r0, [r7, #12]
	bl	_ZN2OTL5CastPINS_4cmapEcEEPKT_PKT0_(PLT)
	mov	r3, r0
.L466:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OT9SanitizerINS_4cmapEE13lock_instanceEP9hb_blob_t, .-_ZN2OT9SanitizerINS_4cmapEE13lock_instanceEP9hb_blob_t
	.section	.text._ZN2OTL4NullINS_12CmapSubtableEEERKT_v,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL4NullINS_12CmapSubtableEEERKT_v, %function
_ZN2OTL4NullINS_12CmapSubtableEEERKT_v:
	.fnstart
.LFB359:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r3, .L470
.LPIC109:
	add	r3, pc
	mov	r0, r3
	bl	_ZN2OTL5CastPINS_12CmapSubtableEPKvEEPT_PT0_(PLT)
	mov	r3, r0
	mov	r0, r3
	pop	{r7, pc}
.L471:
	.align	2
.L470:
	.word	_ZN2OTL9_NullPoolE-(.LPIC109+4)
	.cantunwind
	.fnend
	.size	_ZN2OTL4NullINS_12CmapSubtableEEERKT_v, .-_ZN2OTL4NullINS_12CmapSubtableEEERKT_v
	.section	.text._ZNK2OT5BEIntIjLi4EEcvjEv,"axG",%progbits,_ZNK2OT5BEIntIjLi4EEcvjEv,comdat
	.align	2
	.weak	_ZNK2OT5BEIntIjLi4EEcvjEv
	.thumb
	.thumb_func
	.type	_ZNK2OT5BEIntIjLi4EEcvjEv, %function
_ZNK2OT5BEIntIjLi4EEcvjEv:
	.fnstart
.LFB364:
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
	.section	.text._ZN2OT5BEIntIjLi4EE3setEj,"axG",%progbits,_ZN2OT5BEIntIjLi4EE3setEj,comdat
	.align	2
	.weak	_ZN2OT5BEIntIjLi4EE3setEj
	.thumb
	.thumb_func
	.type	_ZN2OT5BEIntIjLi4EE3setEj, %function
_ZN2OT5BEIntIjLi4EE3setEj:
	.fnstart
.LFB365:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	lsrs	r3, r3, #24
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3]
	ldr	r3, [r7]
	lsrs	r3, r3, #16
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3, #1]
	ldr	r3, [r7]
	lsrs	r3, r3, #8
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3, #2]
	ldr	r3, [r7]
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3, #3]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN2OT5BEIntIjLi4EE3setEj, .-_ZN2OT5BEIntIjLi4EE3setEj
	.section	.text._ZNK2OT5BEIntItLi2EEcvtEv,"axG",%progbits,_ZNK2OT5BEIntItLi2EEcvtEv,comdat
	.align	2
	.weak	_ZNK2OT5BEIntItLi2EEcvtEv
	.thumb
	.thumb_func
	.type	_ZNK2OT5BEIntItLi2EEcvtEv, %function
_ZNK2OT5BEIntItLi2EEcvtEv:
	.fnstart
.LFB366:
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
	.section	.text._ZNK2OT5BEIntIjLi3EEcvjEv,"axG",%progbits,_ZNK2OT5BEIntIjLi3EEcvjEv,comdat
	.align	2
	.weak	_ZNK2OT5BEIntIjLi3EEcvjEv
	.thumb
	.thumb_func
	.type	_ZNK2OT5BEIntIjLi3EEcvjEv, %function
_ZNK2OT5BEIntIjLi3EEcvjEv:
	.fnstart
.LFB367:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #16
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	lsls	r3, r3, #8
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	add	r3, r3, r2
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNK2OT5BEIntIjLi3EEcvjEv, .-_ZNK2OT5BEIntIjLi3EEcvjEv
	.section	.text._ZNK2OT8OffsetToINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEES4_EclEPKv,"axG",%progbits,_ZNK2OT8OffsetToINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEES4_EclEPKv,comdat
	.align	2
	.weak	_ZNK2OT8OffsetToINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEES4_EclEPKv
	.thumb
	.thumb_func
	.type	_ZNK2OT8OffsetToINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEES4_EclEPKv, %function
_ZNK2OT8OffsetToINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEES4_EclEPKv:
	.fnstart
.LFB368:
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
	bne	.L480
	bl	_ZN2OTL4NullINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEEEERKT_v(PLT)
	mov	r3, r0
	b	.L481
.L480:
	ldr	r0, [r7]
	ldr	r1, [r7, #12]
	bl	_ZN2OTL14StructAtOffsetINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEEEERKT_PKvj(PLT)
	mov	r3, r0
.L481:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT8OffsetToINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEES4_EclEPKv, .-_ZNK2OT8OffsetToINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEES4_EclEPKv
	.section	.text._ZNK2OT8OffsetToINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEES4_EclEPKv,"axG",%progbits,_ZNK2OT8OffsetToINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEES4_EclEPKv,comdat
	.align	2
	.weak	_ZNK2OT8OffsetToINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEES4_EclEPKv
	.thumb
	.thumb_func
	.type	_ZNK2OT8OffsetToINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEES4_EclEPKv, %function
_ZNK2OT8OffsetToINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEES4_EclEPKv:
	.fnstart
.LFB369:
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
	bne	.L483
	bl	_ZN2OTL4NullINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEEEERKT_v(PLT)
	mov	r3, r0
	b	.L484
.L483:
	ldr	r0, [r7]
	ldr	r1, [r7, #12]
	bl	_ZN2OTL14StructAtOffsetINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEEEERKT_PKvj(PLT)
	mov	r3, r0
.L484:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT8OffsetToINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEES4_EclEPKv, .-_ZNK2OT8OffsetToINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEES4_EclEPKv
	.section	.text._ZN2OTL4NullINS_10UVSMappingEEERKT_v,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL4NullINS_10UVSMappingEEERKT_v, %function
_ZN2OTL4NullINS_10UVSMappingEEERKT_v:
	.fnstart
.LFB370:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r3, .L487
.LPIC110:
	add	r3, pc
	mov	r0, r3
	bl	_ZN2OTL5CastPINS_10UVSMappingEPKvEEPT_PT0_(PLT)
	mov	r3, r0
	mov	r0, r3
	pop	{r7, pc}
.L488:
	.align	2
.L487:
	.word	_ZN2OTL9_NullPoolE-(.LPIC110+4)
	.cantunwind
	.fnend
	.size	_ZN2OTL4NullINS_10UVSMappingEEERKT_v, .-_ZN2OTL4NullINS_10UVSMappingEEERKT_v
	.section	.text._ZNK2OT21hb_sanitize_context_t12check_structINS_8OffsetToINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEES6_EEEEbPKT_,"axG",%progbits,_ZNK2OT21hb_sanitize_context_t12check_structINS_8OffsetToINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEES6_EEEEbPKT_,comdat
	.align	2
	.weak	_ZNK2OT21hb_sanitize_context_t12check_structINS_8OffsetToINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEES6_EEEEbPKT_
	.thumb
	.thumb_func
	.type	_ZNK2OT21hb_sanitize_context_t12check_structINS_8OffsetToINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEES6_EEEEbPKT_, %function
_ZNK2OT21hb_sanitize_context_t12check_structINS_8OffsetToINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEES6_EEEEbPKT_:
	.fnstart
.LFB371:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	movs	r2, #4
	bl	_ZNK2OT21hb_sanitize_context_t11check_rangeEPKvj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZNK2OT21hb_sanitize_context_t12check_structINS_8OffsetToINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEES6_EEEEbPKT_, .-_ZNK2OT21hb_sanitize_context_t12check_structINS_8OffsetToINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEES6_EEEEbPKT_
	.section	.text._ZN2OTL14StructAtOffsetINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEEEERT_Pvj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL14StructAtOffsetINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEEEERT_Pvj, %function
_ZN2OTL14StructAtOffsetINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEEEERT_Pvj:
	.fnstart
.LFB372:
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
	.size	_ZN2OTL14StructAtOffsetINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEEEERT_Pvj, .-_ZN2OTL14StructAtOffsetINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEEEERT_Pvj
	.section	.text._ZN2OT8OffsetToINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEES4_E6neuterEPNS_21hb_sanitize_context_tE,"axG",%progbits,_ZN2OT8OffsetToINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEES4_E6neuterEPNS_21hb_sanitize_context_tE,comdat
	.align	2
	.weak	_ZN2OT8OffsetToINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEES4_E6neuterEPNS_21hb_sanitize_context_tE
	.thumb
	.thumb_func
	.type	_ZN2OT8OffsetToINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEES4_E6neuterEPNS_21hb_sanitize_context_tE, %function
_ZN2OT8OffsetToINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEES4_E6neuterEPNS_21hb_sanitize_context_tE:
	.fnstart
.LFB373:
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
	movs	r3, #0
	str	r3, [r7, #12]
	add	r3, r7, #12
	ldr	r0, [r7]
	ldr	r1, [r7, #4]
	mov	r2, r3
	bl	_ZN2OT21hb_sanitize_context_t7try_setINS_8OffsetToINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEES6_EEiEEbPT_RKT0_(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OT8OffsetToINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEES4_E6neuterEPNS_21hb_sanitize_context_tE, .-_ZN2OT8OffsetToINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEES4_E6neuterEPNS_21hb_sanitize_context_tE
	.section	.text._ZN2OT7ArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tE,"axG",%progbits,_ZN2OT7ArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tE,comdat
	.align	2
	.weak	_ZN2OT7ArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tE
	.thumb
	.thumb_func
	.type	_ZN2OT7ArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tE, %function
_ZN2OT7ArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tE:
	.fnstart
.LFB374:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #28
	sub	sp, sp, #28
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r4, [r7]
	ldr	r0, [r7]
	bl	_ZN2OT21hb_sanitize_context_t8get_nameEv(PLT)
	mov	r3, r0
	add	r2, r7, #12
	ldr	r1, .L499
.LPIC111:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L499+4
.LPIC112:
	add	r1, pc
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r4
	mov	r2, r3
	ldr	r3, [r7, #4]
	bl	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z(PLT)
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	_ZN2OT7ArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tE(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L496
	add	r3, r7, #12
	mov	r0, r3
	movs	r1, #0
	movw	r2, #843
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L498
.L496:
	add	r3, r7, #12
	mov	r0, r3
	movs	r1, #1
	movw	r2, #854
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
.L498:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L500:
	.align	2
.L499:
	.word	_ZZN2OT7ArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__-(.LPIC111+4)
	.word	.LC13-(.LPIC112+4)
	.fnend
	.size	_ZN2OT7ArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tE, .-_ZN2OT7ArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tE
	.section	.text._ZNK2OT21hb_sanitize_context_t12check_structINS_8OffsetToINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEES6_EEEEbPKT_,"axG",%progbits,_ZNK2OT21hb_sanitize_context_t12check_structINS_8OffsetToINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEES6_EEEEbPKT_,comdat
	.align	2
	.weak	_ZNK2OT21hb_sanitize_context_t12check_structINS_8OffsetToINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEES6_EEEEbPKT_
	.thumb
	.thumb_func
	.type	_ZNK2OT21hb_sanitize_context_t12check_structINS_8OffsetToINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEES6_EEEEbPKT_, %function
_ZNK2OT21hb_sanitize_context_t12check_structINS_8OffsetToINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEES6_EEEEbPKT_:
	.fnstart
.LFB375:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	movs	r2, #4
	bl	_ZNK2OT21hb_sanitize_context_t11check_rangeEPKvj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZNK2OT21hb_sanitize_context_t12check_structINS_8OffsetToINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEES6_EEEEbPKT_, .-_ZNK2OT21hb_sanitize_context_t12check_structINS_8OffsetToINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEES6_EEEEbPKT_
	.section	.text._ZN2OTL14StructAtOffsetINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEEEERT_Pvj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL14StructAtOffsetINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEEEERT_Pvj, %function
_ZN2OTL14StructAtOffsetINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEEEERT_Pvj:
	.fnstart
.LFB376:
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
	.size	_ZN2OTL14StructAtOffsetINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEEEERT_Pvj, .-_ZN2OTL14StructAtOffsetINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEEEERT_Pvj
	.section	.text._ZN2OT8OffsetToINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEES4_E6neuterEPNS_21hb_sanitize_context_tE,"axG",%progbits,_ZN2OT8OffsetToINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEES4_E6neuterEPNS_21hb_sanitize_context_tE,comdat
	.align	2
	.weak	_ZN2OT8OffsetToINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEES4_E6neuterEPNS_21hb_sanitize_context_tE
	.thumb
	.thumb_func
	.type	_ZN2OT8OffsetToINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEES4_E6neuterEPNS_21hb_sanitize_context_tE, %function
_ZN2OT8OffsetToINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEES4_E6neuterEPNS_21hb_sanitize_context_tE:
	.fnstart
.LFB377:
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
	movs	r3, #0
	str	r3, [r7, #12]
	add	r3, r7, #12
	ldr	r0, [r7]
	ldr	r1, [r7, #4]
	mov	r2, r3
	bl	_ZN2OT21hb_sanitize_context_t7try_setINS_8OffsetToINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEES6_EEiEEbPT_RKT0_(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OT8OffsetToINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEES4_E6neuterEPNS_21hb_sanitize_context_tE, .-_ZN2OT8OffsetToINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEES4_E6neuterEPNS_21hb_sanitize_context_tE
	.section	.text._ZN2OT7ArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tE,"axG",%progbits,_ZN2OT7ArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tE,comdat
	.align	2
	.weak	_ZN2OT7ArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tE
	.thumb
	.thumb_func
	.type	_ZN2OT7ArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tE, %function
_ZN2OT7ArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tE:
	.fnstart
.LFB378:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #28
	sub	sp, sp, #28
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r4, [r7]
	ldr	r0, [r7]
	bl	_ZN2OT21hb_sanitize_context_t8get_nameEv(PLT)
	mov	r3, r0
	add	r2, r7, #12
	ldr	r1, .L511
.LPIC113:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L511+4
.LPIC114:
	add	r1, pc
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r4
	mov	r2, r3
	ldr	r3, [r7, #4]
	bl	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z(PLT)
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	_ZN2OT7ArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tE(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L508
	add	r3, r7, #12
	mov	r0, r3
	movs	r1, #0
	movw	r2, #843
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L510
.L508:
	add	r3, r7, #12
	mov	r0, r3
	movs	r1, #1
	movw	r2, #854
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
.L510:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L512:
	.align	2
.L511:
	.word	_ZZN2OT7ArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__-(.LPIC113+4)
	.word	.LC13-(.LPIC114+4)
	.fnend
	.size	_ZN2OT7ArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tE, .-_ZN2OT7ArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tE
	.section	.text._ZN2OTL4NullINS_23VariationSelectorRecordEEERKT_v,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL4NullINS_23VariationSelectorRecordEEERKT_v, %function
_ZN2OTL4NullINS_23VariationSelectorRecordEEERKT_v:
	.fnstart
.LFB379:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r3, .L515
.LPIC115:
	add	r3, pc
	mov	r0, r3
	bl	_ZN2OTL5CastPINS_23VariationSelectorRecordEPKvEEPT_PT0_(PLT)
	mov	r3, r0
	mov	r0, r3
	pop	{r7, pc}
.L516:
	.align	2
.L515:
	.word	_ZN2OTL9_NullPoolE-(.LPIC115+4)
	.cantunwind
	.fnend
	.size	_ZN2OTL4NullINS_23VariationSelectorRecordEEERKT_v, .-_ZN2OTL4NullINS_23VariationSelectorRecordEEERKT_v
	.section	.text._ZN2OT7ArrayOfINS_23VariationSelectorRecordENS_7IntTypeIjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tE,"axG",%progbits,_ZN2OT7ArrayOfINS_23VariationSelectorRecordENS_7IntTypeIjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tE,comdat
	.align	2
	.weak	_ZN2OT7ArrayOfINS_23VariationSelectorRecordENS_7IntTypeIjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tE
	.thumb
	.thumb_func
	.type	_ZN2OT7ArrayOfINS_23VariationSelectorRecordENS_7IntTypeIjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tE, %function
_ZN2OT7ArrayOfINS_23VariationSelectorRecordENS_7IntTypeIjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tE:
	.fnstart
.LFB380:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #28
	sub	sp, sp, #28
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r4, [r7]
	ldr	r0, [r7]
	bl	_ZN2OT21hb_sanitize_context_t8get_nameEv(PLT)
	mov	r3, r0
	add	r2, r7, #12
	ldr	r1, .L521
.LPIC116:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L521+4
.LPIC117:
	add	r1, pc
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r4
	mov	r2, r3
	ldr	r3, [r7, #4]
	bl	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z(PLT)
	ldr	r0, [r7]
	ldr	r1, [r7, #4]
	bl	_ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_23VariationSelectorRecordENS_7IntTypeIjLj4EEEEEEEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L518
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZNK2OT7IntTypeIjLj4EEcvjEv(PLT)
	mov	r3, r0
	ldr	r0, [r7]
	ldr	r1, [r7, #4]
	movs	r2, #11
	bl	_ZNK2OT21hb_sanitize_context_t11check_arrayEPKvjj(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L518
	movs	r3, #1
	b	.L519
.L518:
	movs	r3, #0
.L519:
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	movw	r2, #889
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L522:
	.align	2
.L521:
	.word	_ZZN2OT7ArrayOfINS_23VariationSelectorRecordENS_7IntTypeIjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__-(.LPIC116+4)
	.word	.LC13-(.LPIC117+4)
	.fnend
	.size	_ZN2OT7ArrayOfINS_23VariationSelectorRecordENS_7IntTypeIjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tE, .-_ZN2OT7ArrayOfINS_23VariationSelectorRecordENS_7IntTypeIjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tE
	.section	.text._ZNK2OT7ArrayOfINS_7IntTypeItLj2EEES2_EixEj,"axG",%progbits,_ZNK2OT7ArrayOfINS_7IntTypeItLj2EEES2_EixEj,comdat
	.align	2
	.weak	_ZNK2OT7ArrayOfINS_7IntTypeItLj2EEES2_EixEj
	.thumb
	.thumb_func
	.type	_ZNK2OT7ArrayOfINS_7IntTypeItLj2EEES2_EixEj, %function
_ZNK2OT7ArrayOfINS_7IntTypeItLj2EEES2_EixEj:
	.fnstart
.LFB381:
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
	beq	.L524
	bl	_ZN2OTL4NullINS_7IntTypeItLj2EEEEERKT_v(PLT)
	mov	r3, r0
	b	.L525
.L524:
	ldr	r3, [r7]
	lsls	r3, r3, #1
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #2
.L525:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT7ArrayOfINS_7IntTypeItLj2EEES2_EixEj, .-_ZNK2OT7ArrayOfINS_7IntTypeItLj2EEES2_EixEj
	.section	.text._ZNK2OT7ArrayOfINS_7IntTypeItLj2EEENS1_IjLj4EEEEixEj,"axG",%progbits,_ZNK2OT7ArrayOfINS_7IntTypeItLj2EEENS1_IjLj4EEEEixEj,comdat
	.align	2
	.weak	_ZNK2OT7ArrayOfINS_7IntTypeItLj2EEENS1_IjLj4EEEEixEj
	.thumb
	.thumb_func
	.type	_ZNK2OT7ArrayOfINS_7IntTypeItLj2EEENS1_IjLj4EEEEixEj, %function
_ZNK2OT7ArrayOfINS_7IntTypeItLj2EEENS1_IjLj4EEEEixEj:
	.fnstart
.LFB382:
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
	bl	_ZNK2OT7IntTypeIjLj4EEcvjEv(PLT)
	mov	r2, r0
	ldr	r3, [r7]
	cmp	r2, r3
	ite	ls
	movls	r3, #1
	movhi	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L527
	bl	_ZN2OTL4NullINS_7IntTypeItLj2EEEEERKT_v(PLT)
	mov	r3, r0
	b	.L528
.L527:
	ldr	r3, [r7]
	lsls	r3, r3, #1
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #4
.L528:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT7ArrayOfINS_7IntTypeItLj2EEENS1_IjLj4EEEEixEj, .-_ZNK2OT7ArrayOfINS_7IntTypeItLj2EEENS1_IjLj4EEEEixEj
	.section	.text._ZNK2OT13SortedArrayOfINS_21CmapSubtableLongGroupENS_7IntTypeIjLj4EEEE7bsearchIjEEiRKT_,"axG",%progbits,_ZNK2OT13SortedArrayOfINS_21CmapSubtableLongGroupENS_7IntTypeIjLj4EEEE7bsearchIjEEiRKT_,comdat
	.align	2
	.weak	_ZNK2OT13SortedArrayOfINS_21CmapSubtableLongGroupENS_7IntTypeIjLj4EEEE7bsearchIjEEiRKT_
	.thumb
	.thumb_func
	.type	_ZNK2OT13SortedArrayOfINS_21CmapSubtableLongGroupENS_7IntTypeIjLj4EEEE7bsearchIjEEiRKT_, %function
_ZNK2OT13SortedArrayOfINS_21CmapSubtableLongGroupENS_7IntTypeIjLj4EEEE7bsearchIjEEiRKT_:
	.fnstart
.LFB383:
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
	bl	_ZNK2OT7IntTypeIjLj4EEcvjEv(PLT)
	mov	r3, r0
	subs	r3, r3, #1
	str	r3, [r7, #16]
	b	.L530
.L534:
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
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r2, r3, #4
	ldr	r3, [r7]
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK2OT21CmapSubtableLongGroup3cmpEj(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bge	.L531
	ldr	r3, [r7, #12]
	subs	r3, r3, #1
	str	r3, [r7, #16]
	b	.L530
.L531:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	ble	.L532
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #20]
	b	.L530
.L532:
	ldr	r3, [r7, #12]
	b	.L533
.L530:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	ble	.L534
	mov	r3, #-1
.L533:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT13SortedArrayOfINS_21CmapSubtableLongGroupENS_7IntTypeIjLj4EEEE7bsearchIjEEiRKT_, .-_ZNK2OT13SortedArrayOfINS_21CmapSubtableLongGroupENS_7IntTypeIjLj4EEEE7bsearchIjEEiRKT_
	.section	.text._ZNK2OT7ArrayOfINS_21CmapSubtableLongGroupENS_7IntTypeIjLj4EEEEixEj,"axG",%progbits,_ZNK2OT7ArrayOfINS_21CmapSubtableLongGroupENS_7IntTypeIjLj4EEEEixEj,comdat
	.align	2
	.weak	_ZNK2OT7ArrayOfINS_21CmapSubtableLongGroupENS_7IntTypeIjLj4EEEEixEj
	.thumb
	.thumb_func
	.type	_ZNK2OT7ArrayOfINS_21CmapSubtableLongGroupENS_7IntTypeIjLj4EEEEixEj, %function
_ZNK2OT7ArrayOfINS_21CmapSubtableLongGroupENS_7IntTypeIjLj4EEEEixEj:
	.fnstart
.LFB384:
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
	bl	_ZNK2OT7IntTypeIjLj4EEcvjEv(PLT)
	mov	r2, r0
	ldr	r3, [r7]
	cmp	r2, r3
	ite	ls
	movls	r3, #1
	movhi	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L536
	bl	_ZN2OTL4NullINS_21CmapSubtableLongGroupEEERKT_v(PLT)
	mov	r3, r0
	b	.L537
.L536:
	ldr	r2, [r7]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #4
.L537:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT7ArrayOfINS_21CmapSubtableLongGroupENS_7IntTypeIjLj4EEEEixEj, .-_ZNK2OT7ArrayOfINS_21CmapSubtableLongGroupENS_7IntTypeIjLj4EEEEixEj
	.section	.text._ZNK2OT21hb_sanitize_context_t12check_structINS_7IntTypeItLj2EEEEEbPKT_,"axG",%progbits,_ZNK2OT21hb_sanitize_context_t12check_structINS_7IntTypeItLj2EEEEEbPKT_,comdat
	.align	2
	.weak	_ZNK2OT21hb_sanitize_context_t12check_structINS_7IntTypeItLj2EEEEEbPKT_
	.thumb
	.thumb_func
	.type	_ZNK2OT21hb_sanitize_context_t12check_structINS_7IntTypeItLj2EEEEEbPKT_, %function
_ZNK2OT21hb_sanitize_context_t12check_structINS_7IntTypeItLj2EEEEEbPKT_:
	.fnstart
.LFB385:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	movs	r2, #2
	bl	_ZNK2OT21hb_sanitize_context_t11check_rangeEPKvj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZNK2OT21hb_sanitize_context_t12check_structINS_7IntTypeItLj2EEEEEbPKT_, .-_ZNK2OT21hb_sanitize_context_t12check_structINS_7IntTypeItLj2EEEEEbPKT_
	.section	.text._ZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_E8sanitizeEPNS_21hb_sanitize_context_tE,"axG",%progbits,_ZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_E8sanitizeEPNS_21hb_sanitize_context_tE,comdat
	.align	2
	.weak	_ZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_E8sanitizeEPNS_21hb_sanitize_context_tE
	.thumb
	.thumb_func
	.type	_ZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_E8sanitizeEPNS_21hb_sanitize_context_tE, %function
_ZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_E8sanitizeEPNS_21hb_sanitize_context_tE:
	.fnstart
.LFB386:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #28
	sub	sp, sp, #28
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r4, [r7]
	ldr	r0, [r7]
	bl	_ZN2OT21hb_sanitize_context_t8get_nameEv(PLT)
	mov	r3, r0
	add	r2, r7, #12
	ldr	r1, .L544
.LPIC118:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L544+4
.LPIC119:
	add	r1, pc
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r4
	mov	r2, r3
	ldr	r3, [r7, #4]
	bl	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z(PLT)
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	_ZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_E16sanitize_shallowEPNS_21hb_sanitize_context_tE(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L541
	add	r3, r7, #12
	mov	r0, r3
	movs	r1, #0
	movw	r2, #843
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L543
.L541:
	add	r3, r7, #12
	mov	r0, r3
	movs	r1, #1
	movw	r2, #854
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
.L543:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L545:
	.align	2
.L544:
	.word	_ZZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_E8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__-(.LPIC118+4)
	.word	.LC13-(.LPIC119+4)
	.fnend
	.size	_ZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_E8sanitizeEPNS_21hb_sanitize_context_tE, .-_ZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_E8sanitizeEPNS_21hb_sanitize_context_tE
	.section	.text._ZNK2OT21hb_sanitize_context_t12check_structINS_19CmapSubtableTrimmedINS_7IntTypeItLj2EEEEEEEbPKT_,"axG",%progbits,_ZNK2OT21hb_sanitize_context_t12check_structINS_19CmapSubtableTrimmedINS_7IntTypeItLj2EEEEEEEbPKT_,comdat
	.align	2
	.weak	_ZNK2OT21hb_sanitize_context_t12check_structINS_19CmapSubtableTrimmedINS_7IntTypeItLj2EEEEEEEbPKT_
	.thumb
	.thumb_func
	.type	_ZNK2OT21hb_sanitize_context_t12check_structINS_19CmapSubtableTrimmedINS_7IntTypeItLj2EEEEEEEbPKT_, %function
_ZNK2OT21hb_sanitize_context_t12check_structINS_19CmapSubtableTrimmedINS_7IntTypeItLj2EEEEEEEbPKT_:
	.fnstart
.LFB387:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	movs	r2, #10
	bl	_ZNK2OT21hb_sanitize_context_t11check_rangeEPKvj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZNK2OT21hb_sanitize_context_t12check_structINS_19CmapSubtableTrimmedINS_7IntTypeItLj2EEEEEEEbPKT_, .-_ZNK2OT21hb_sanitize_context_t12check_structINS_19CmapSubtableTrimmedINS_7IntTypeItLj2EEEEEEEbPKT_
	.section	.text._ZN2OT7ArrayOfINS_7IntTypeItLj2EEENS1_IjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tE,"axG",%progbits,_ZN2OT7ArrayOfINS_7IntTypeItLj2EEENS1_IjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tE,comdat
	.align	2
	.weak	_ZN2OT7ArrayOfINS_7IntTypeItLj2EEENS1_IjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tE
	.thumb
	.thumb_func
	.type	_ZN2OT7ArrayOfINS_7IntTypeItLj2EEENS1_IjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tE, %function
_ZN2OT7ArrayOfINS_7IntTypeItLj2EEENS1_IjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tE:
	.fnstart
.LFB388:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #28
	sub	sp, sp, #28
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r4, [r7]
	ldr	r0, [r7]
	bl	_ZN2OT21hb_sanitize_context_t8get_nameEv(PLT)
	mov	r3, r0
	add	r2, r7, #12
	ldr	r1, .L552
.LPIC120:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L552+4
.LPIC121:
	add	r1, pc
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r4
	mov	r2, r3
	ldr	r3, [r7, #4]
	bl	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z(PLT)
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	_ZN2OT7ArrayOfINS_7IntTypeItLj2EEENS1_IjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tE(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L549
	add	r3, r7, #12
	mov	r0, r3
	movs	r1, #0
	movw	r2, #843
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L551
.L549:
	add	r3, r7, #12
	mov	r0, r3
	movs	r1, #1
	movw	r2, #854
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
.L551:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L553:
	.align	2
.L552:
	.word	_ZZN2OT7ArrayOfINS_7IntTypeItLj2EEENS1_IjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__-(.LPIC120+4)
	.word	.LC13-(.LPIC121+4)
	.fnend
	.size	_ZN2OT7ArrayOfINS_7IntTypeItLj2EEENS1_IjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tE, .-_ZN2OT7ArrayOfINS_7IntTypeItLj2EEENS1_IjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tE
	.section	.text._ZNK2OT21hb_sanitize_context_t12check_structINS_19CmapSubtableTrimmedINS_7IntTypeIjLj4EEEEEEEbPKT_,"axG",%progbits,_ZNK2OT21hb_sanitize_context_t12check_structINS_19CmapSubtableTrimmedINS_7IntTypeIjLj4EEEEEEEbPKT_,comdat
	.align	2
	.weak	_ZNK2OT21hb_sanitize_context_t12check_structINS_19CmapSubtableTrimmedINS_7IntTypeIjLj4EEEEEEEbPKT_
	.thumb
	.thumb_func
	.type	_ZNK2OT21hb_sanitize_context_t12check_structINS_19CmapSubtableTrimmedINS_7IntTypeIjLj4EEEEEEEbPKT_, %function
_ZNK2OT21hb_sanitize_context_t12check_structINS_19CmapSubtableTrimmedINS_7IntTypeIjLj4EEEEEEEbPKT_:
	.fnstart
.LFB389:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	movs	r2, #20
	bl	_ZNK2OT21hb_sanitize_context_t11check_rangeEPKvj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZNK2OT21hb_sanitize_context_t12check_structINS_19CmapSubtableTrimmedINS_7IntTypeIjLj4EEEEEEEbPKT_, .-_ZNK2OT21hb_sanitize_context_t12check_structINS_19CmapSubtableTrimmedINS_7IntTypeIjLj4EEEEEEEbPKT_
	.section	.text._ZN2OT7ArrayOfINS_21CmapSubtableLongGroupENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tE,"axG",%progbits,_ZN2OT7ArrayOfINS_21CmapSubtableLongGroupENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tE,comdat
	.align	2
	.weak	_ZN2OT7ArrayOfINS_21CmapSubtableLongGroupENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tE
	.thumb
	.thumb_func
	.type	_ZN2OT7ArrayOfINS_21CmapSubtableLongGroupENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tE, %function
_ZN2OT7ArrayOfINS_21CmapSubtableLongGroupENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tE:
	.fnstart
.LFB390:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #28
	sub	sp, sp, #28
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r4, [r7]
	ldr	r0, [r7]
	bl	_ZN2OT21hb_sanitize_context_t8get_nameEv(PLT)
	mov	r3, r0
	add	r2, r7, #12
	ldr	r1, .L560
.LPIC122:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L560+4
.LPIC123:
	add	r1, pc
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r4
	mov	r2, r3
	ldr	r3, [r7, #4]
	bl	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z(PLT)
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	_ZN2OT7ArrayOfINS_21CmapSubtableLongGroupENS_7IntTypeIjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tE(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L557
	add	r3, r7, #12
	mov	r0, r3
	movs	r1, #0
	movw	r2, #843
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L559
.L557:
	add	r3, r7, #12
	mov	r0, r3
	movs	r1, #1
	movw	r2, #854
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
.L559:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L561:
	.align	2
.L560:
	.word	_ZZN2OT7ArrayOfINS_21CmapSubtableLongGroupENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__-(.LPIC122+4)
	.word	.LC13-(.LPIC123+4)
	.fnend
	.size	_ZN2OT7ArrayOfINS_21CmapSubtableLongGroupENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tE, .-_ZN2OT7ArrayOfINS_21CmapSubtableLongGroupENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tE
	.section	.text._ZNK2OT21hb_sanitize_context_t12check_structINS_25CmapSubtableLongSegmentedINS_20CmapSubtableFormat12EEEEEbPKT_,"axG",%progbits,_ZNK2OT21hb_sanitize_context_t12check_structINS_25CmapSubtableLongSegmentedINS_20CmapSubtableFormat12EEEEEbPKT_,comdat
	.align	2
	.weak	_ZNK2OT21hb_sanitize_context_t12check_structINS_25CmapSubtableLongSegmentedINS_20CmapSubtableFormat12EEEEEbPKT_
	.thumb
	.thumb_func
	.type	_ZNK2OT21hb_sanitize_context_t12check_structINS_25CmapSubtableLongSegmentedINS_20CmapSubtableFormat12EEEEEbPKT_, %function
_ZNK2OT21hb_sanitize_context_t12check_structINS_25CmapSubtableLongSegmentedINS_20CmapSubtableFormat12EEEEEbPKT_:
	.fnstart
.LFB391:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	movs	r2, #16
	bl	_ZNK2OT21hb_sanitize_context_t11check_rangeEPKvj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZNK2OT21hb_sanitize_context_t12check_structINS_25CmapSubtableLongSegmentedINS_20CmapSubtableFormat12EEEEEbPKT_, .-_ZNK2OT21hb_sanitize_context_t12check_structINS_25CmapSubtableLongSegmentedINS_20CmapSubtableFormat12EEEEEbPKT_
	.section	.text._ZNK2OT21hb_sanitize_context_t12check_structINS_25CmapSubtableLongSegmentedINS_20CmapSubtableFormat13EEEEEbPKT_,"axG",%progbits,_ZNK2OT21hb_sanitize_context_t12check_structINS_25CmapSubtableLongSegmentedINS_20CmapSubtableFormat13EEEEEbPKT_,comdat
	.align	2
	.weak	_ZNK2OT21hb_sanitize_context_t12check_structINS_25CmapSubtableLongSegmentedINS_20CmapSubtableFormat13EEEEEbPKT_
	.thumb
	.thumb_func
	.type	_ZNK2OT21hb_sanitize_context_t12check_structINS_25CmapSubtableLongSegmentedINS_20CmapSubtableFormat13EEEEEbPKT_, %function
_ZNK2OT21hb_sanitize_context_t12check_structINS_25CmapSubtableLongSegmentedINS_20CmapSubtableFormat13EEEEEbPKT_:
	.fnstart
.LFB392:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	movs	r2, #16
	bl	_ZNK2OT21hb_sanitize_context_t11check_rangeEPKvj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZNK2OT21hb_sanitize_context_t12check_structINS_25CmapSubtableLongSegmentedINS_20CmapSubtableFormat13EEEEEbPKT_, .-_ZNK2OT21hb_sanitize_context_t12check_structINS_25CmapSubtableLongSegmentedINS_20CmapSubtableFormat13EEEEEbPKT_
	.section	.text._ZNK2OT21hb_sanitize_context_t12check_structINS_8OffsetToINS_12CmapSubtableENS_7IntTypeIjLj4EEEEEEEbPKT_,"axG",%progbits,_ZNK2OT21hb_sanitize_context_t12check_structINS_8OffsetToINS_12CmapSubtableENS_7IntTypeIjLj4EEEEEEEbPKT_,comdat
	.align	2
	.weak	_ZNK2OT21hb_sanitize_context_t12check_structINS_8OffsetToINS_12CmapSubtableENS_7IntTypeIjLj4EEEEEEEbPKT_
	.thumb
	.thumb_func
	.type	_ZNK2OT21hb_sanitize_context_t12check_structINS_8OffsetToINS_12CmapSubtableENS_7IntTypeIjLj4EEEEEEEbPKT_, %function
_ZNK2OT21hb_sanitize_context_t12check_structINS_8OffsetToINS_12CmapSubtableENS_7IntTypeIjLj4EEEEEEEbPKT_:
	.fnstart
.LFB393:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	movs	r2, #4
	bl	_ZNK2OT21hb_sanitize_context_t11check_rangeEPKvj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZNK2OT21hb_sanitize_context_t12check_structINS_8OffsetToINS_12CmapSubtableENS_7IntTypeIjLj4EEEEEEEbPKT_, .-_ZNK2OT21hb_sanitize_context_t12check_structINS_8OffsetToINS_12CmapSubtableENS_7IntTypeIjLj4EEEEEEEbPKT_
	.section	.text._ZN2OTL14StructAtOffsetINS_12CmapSubtableEEERT_Pvj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL14StructAtOffsetINS_12CmapSubtableEEERT_Pvj, %function
_ZN2OTL14StructAtOffsetINS_12CmapSubtableEEERT_Pvj:
	.fnstart
.LFB394:
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
	.size	_ZN2OTL14StructAtOffsetINS_12CmapSubtableEEERT_Pvj, .-_ZN2OTL14StructAtOffsetINS_12CmapSubtableEEERT_Pvj
	.section	.text._ZN2OT8OffsetToINS_12CmapSubtableENS_7IntTypeIjLj4EEEE6neuterEPNS_21hb_sanitize_context_tE,"axG",%progbits,_ZN2OT8OffsetToINS_12CmapSubtableENS_7IntTypeIjLj4EEEE6neuterEPNS_21hb_sanitize_context_tE,comdat
	.align	2
	.weak	_ZN2OT8OffsetToINS_12CmapSubtableENS_7IntTypeIjLj4EEEE6neuterEPNS_21hb_sanitize_context_tE
	.thumb
	.thumb_func
	.type	_ZN2OT8OffsetToINS_12CmapSubtableENS_7IntTypeIjLj4EEEE6neuterEPNS_21hb_sanitize_context_tE, %function
_ZN2OT8OffsetToINS_12CmapSubtableENS_7IntTypeIjLj4EEEE6neuterEPNS_21hb_sanitize_context_tE:
	.fnstart
.LFB395:
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
	movs	r3, #0
	str	r3, [r7, #12]
	add	r3, r7, #12
	ldr	r0, [r7]
	ldr	r1, [r7, #4]
	mov	r2, r3
	bl	_ZN2OT21hb_sanitize_context_t7try_setINS_8OffsetToINS_12CmapSubtableENS_7IntTypeIjLj4EEEEEiEEbPT_RKT0_(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OT8OffsetToINS_12CmapSubtableENS_7IntTypeIjLj4EEEE6neuterEPNS_21hb_sanitize_context_tE, .-_ZN2OT8OffsetToINS_12CmapSubtableENS_7IntTypeIjLj4EEEE6neuterEPNS_21hb_sanitize_context_tE
	.section	.text._ZN2OT5BEIntItLi2EE3setEt,"axG",%progbits,_ZN2OT5BEIntItLi2EE3setEt,comdat
	.align	2
	.weak	_ZN2OT5BEIntItLi2EE3setEt
	.thumb
	.thumb_func
	.type	_ZN2OT5BEIntItLi2EE3setEt, %function
_ZN2OT5BEIntItLi2EE3setEt:
	.fnstart
.LFB396:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	ldrh	r3, [r7, #2]
	lsrs	r3, r3, #8
	uxth	r3, r3
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3]
	ldrh	r3, [r7, #2]	@ movhi
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3, #1]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN2OT5BEIntItLi2EE3setEt, .-_ZN2OT5BEIntItLi2EE3setEt
	.section	.text._ZN2OTL4NullINS_14EncodingRecordEEERKT_v,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL4NullINS_14EncodingRecordEEERKT_v, %function
_ZN2OTL4NullINS_14EncodingRecordEEERKT_v:
	.fnstart
.LFB397:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r3, .L575
.LPIC124:
	add	r3, pc
	mov	r0, r3
	bl	_ZN2OTL5CastPINS_14EncodingRecordEPKvEEPT_PT0_(PLT)
	mov	r3, r0
	mov	r0, r3
	pop	{r7, pc}
.L576:
	.align	2
.L575:
	.word	_ZN2OTL9_NullPoolE-(.LPIC124+4)
	.cantunwind
	.fnend
	.size	_ZN2OTL4NullINS_14EncodingRecordEEERKT_v, .-_ZN2OTL4NullINS_14EncodingRecordEEERKT_v
	.section	.text._ZNK2OT8OffsetToINS_12CmapSubtableENS_7IntTypeIjLj4EEEEclEPKv,"axG",%progbits,_ZNK2OT8OffsetToINS_12CmapSubtableENS_7IntTypeIjLj4EEEEclEPKv,comdat
	.align	2
	.weak	_ZNK2OT8OffsetToINS_12CmapSubtableENS_7IntTypeIjLj4EEEEclEPKv
	.thumb
	.thumb_func
	.type	_ZNK2OT8OffsetToINS_12CmapSubtableENS_7IntTypeIjLj4EEEEclEPKv, %function
_ZNK2OT8OffsetToINS_12CmapSubtableENS_7IntTypeIjLj4EEEEclEPKv:
	.fnstart
.LFB398:
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
	bne	.L578
	bl	_ZN2OTL4NullINS_12CmapSubtableEEERKT_v(PLT)
	mov	r3, r0
	b	.L579
.L578:
	ldr	r0, [r7]
	ldr	r1, [r7, #12]
	bl	_ZN2OTL14StructAtOffsetINS_12CmapSubtableEEERKT_PKvj(PLT)
	mov	r3, r0
.L579:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT8OffsetToINS_12CmapSubtableENS_7IntTypeIjLj4EEEEclEPKv, .-_ZNK2OT8OffsetToINS_12CmapSubtableENS_7IntTypeIjLj4EEEEclEPKv
	.section	.text._ZN2OT7ArrayOfINS_14EncodingRecordENS_7IntTypeItLj2EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tE,"axG",%progbits,_ZN2OT7ArrayOfINS_14EncodingRecordENS_7IntTypeItLj2EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tE,comdat
	.align	2
	.weak	_ZN2OT7ArrayOfINS_14EncodingRecordENS_7IntTypeItLj2EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tE
	.thumb
	.thumb_func
	.type	_ZN2OT7ArrayOfINS_14EncodingRecordENS_7IntTypeItLj2EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tE, %function
_ZN2OT7ArrayOfINS_14EncodingRecordENS_7IntTypeItLj2EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tE:
	.fnstart
.LFB399:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #28
	sub	sp, sp, #28
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r4, [r7]
	ldr	r0, [r7]
	bl	_ZN2OT21hb_sanitize_context_t8get_nameEv(PLT)
	mov	r3, r0
	add	r2, r7, #12
	ldr	r1, .L584
.LPIC125:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L584+4
.LPIC126:
	add	r1, pc
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r4
	mov	r2, r3
	ldr	r3, [r7, #4]
	bl	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z(PLT)
	ldr	r0, [r7]
	ldr	r1, [r7, #4]
	bl	_ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_14EncodingRecordENS_7IntTypeItLj2EEEEEEEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L581
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	ldr	r0, [r7]
	ldr	r1, [r7, #4]
	movs	r2, #8
	bl	_ZNK2OT21hb_sanitize_context_t11check_arrayEPKvjj(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L581
	movs	r3, #1
	b	.L582
.L581:
	movs	r3, #0
.L582:
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	movw	r2, #889
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L585:
	.align	2
.L584:
	.word	_ZZN2OT7ArrayOfINS_14EncodingRecordENS_7IntTypeItLj2EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__-(.LPIC125+4)
	.word	.LC13-(.LPIC126+4)
	.fnend
	.size	_ZN2OT7ArrayOfINS_14EncodingRecordENS_7IntTypeItLj2EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tE, .-_ZN2OT7ArrayOfINS_14EncodingRecordENS_7IntTypeItLj2EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tE
	.section	.text._ZN2OTL5CastPINS_4_heaEcEEPT_PT0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL5CastPINS_4_heaEcEEPT_PT0_, %function
_ZN2OTL5CastPINS_4_heaEcEEPT_PT0_:
	.fnstart
.LFB400:
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
	.size	_ZN2OTL5CastPINS_4_heaEcEEPT_PT0_, .-_ZN2OTL5CastPINS_4_heaEcEEPT_PT0_
	.section	.text._ZN2OTL4NullINS_4_heaEEERKT_v,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL4NullINS_4_heaEEERKT_v, %function
_ZN2OTL4NullINS_4_heaEEERKT_v:
	.fnstart
.LFB401:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r3, .L590
.LPIC127:
	add	r3, pc
	mov	r0, r3
	bl	_ZN2OTL5CastPINS_4_heaEPKvEEPT_PT0_(PLT)
	mov	r3, r0
	mov	r0, r3
	pop	{r7, pc}
.L591:
	.align	2
.L590:
	.word	_ZN2OTL9_NullPoolE-(.LPIC127+4)
	.cantunwind
	.fnend
	.size	_ZN2OTL4NullINS_4_heaEEERKT_v, .-_ZN2OTL4NullINS_4_heaEEERKT_v
	.section	.text._ZN2OTL5CastPINS_4_heaEcEEPKT_PKT0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL5CastPINS_4_heaEcEEPKT_PKT0_, %function
_ZN2OTL5CastPINS_4_heaEcEEPKT_PKT0_:
	.fnstart
.LFB402:
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
	.size	_ZN2OTL5CastPINS_4_heaEcEEPKT_PKT0_, .-_ZN2OTL5CastPINS_4_heaEcEEPKT_PKT0_
	.section	.text._ZN2OTL5CastPINS_4_mtxEcEEPT_PT0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL5CastPINS_4_mtxEcEEPT_PT0_, %function
_ZN2OTL5CastPINS_4_mtxEcEEPT_PT0_:
	.fnstart
.LFB403:
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
	.size	_ZN2OTL5CastPINS_4_mtxEcEEPT_PT0_, .-_ZN2OTL5CastPINS_4_mtxEcEEPT_PT0_
	.section	.text._ZN2OTL4NullINS_4_mtxEEERKT_v,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL4NullINS_4_mtxEEERKT_v, %function
_ZN2OTL4NullINS_4_mtxEEERKT_v:
	.fnstart
.LFB404:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r3, .L598
.LPIC128:
	add	r3, pc
	mov	r0, r3
	bl	_ZN2OTL5CastPINS_4_mtxEPKvEEPT_PT0_(PLT)
	mov	r3, r0
	mov	r0, r3
	pop	{r7, pc}
.L599:
	.align	2
.L598:
	.word	_ZN2OTL9_NullPoolE-(.LPIC128+4)
	.cantunwind
	.fnend
	.size	_ZN2OTL4NullINS_4_mtxEEERKT_v, .-_ZN2OTL4NullINS_4_mtxEEERKT_v
	.section	.text._ZN2OTL5CastPINS_4_mtxEcEEPKT_PKT0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL5CastPINS_4_mtxEcEEPKT_PKT0_, %function
_ZN2OTL5CastPINS_4_mtxEcEEPKT_PKT0_:
	.fnstart
.LFB405:
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
	.size	_ZN2OTL5CastPINS_4_mtxEcEEPKT_PKT0_, .-_ZN2OTL5CastPINS_4_mtxEcEEPKT_PKT0_
	.section	.text._ZN2OTL5CastPINS_4cmapEcEEPT_PT0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL5CastPINS_4cmapEcEEPT_PT0_, %function
_ZN2OTL5CastPINS_4cmapEcEEPT_PT0_:
	.fnstart
.LFB406:
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
	.size	_ZN2OTL5CastPINS_4cmapEcEEPT_PT0_, .-_ZN2OTL5CastPINS_4cmapEcEEPT_PT0_
	.section	.text._ZN2OTL4NullINS_4cmapEEERKT_v,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL4NullINS_4cmapEEERKT_v, %function
_ZN2OTL4NullINS_4cmapEEERKT_v:
	.fnstart
.LFB407:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r3, .L606
.LPIC129:
	add	r3, pc
	mov	r0, r3
	bl	_ZN2OTL5CastPINS_4cmapEPKvEEPT_PT0_(PLT)
	mov	r3, r0
	mov	r0, r3
	pop	{r7, pc}
.L607:
	.align	2
.L606:
	.word	_ZN2OTL9_NullPoolE-(.LPIC129+4)
	.cantunwind
	.fnend
	.size	_ZN2OTL4NullINS_4cmapEEERKT_v, .-_ZN2OTL4NullINS_4cmapEEERKT_v
	.section	.text._ZN2OTL5CastPINS_4cmapEcEEPKT_PKT0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL5CastPINS_4cmapEcEEPKT_PKT0_, %function
_ZN2OTL5CastPINS_4cmapEcEEPKT_PKT0_:
	.fnstart
.LFB408:
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
	.size	_ZN2OTL5CastPINS_4cmapEcEEPKT_PKT0_, .-_ZN2OTL5CastPINS_4cmapEcEEPKT_PKT0_
	.section	.text._ZN2OTL5CastPINS_12CmapSubtableEPKvEEPT_PT0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL5CastPINS_12CmapSubtableEPKvEEPT_PT0_, %function
_ZN2OTL5CastPINS_12CmapSubtableEPKvEEPT_PT0_:
	.fnstart
.LFB409:
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
	.size	_ZN2OTL5CastPINS_12CmapSubtableEPKvEEPT_PT0_, .-_ZN2OTL5CastPINS_12CmapSubtableEPKvEEPT_PT0_
	.section	.text._ZN2OTL4NullINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEEEERKT_v,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL4NullINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEEEERKT_v, %function
_ZN2OTL4NullINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEEEERKT_v:
	.fnstart
.LFB410:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r3, .L614
.LPIC130:
	add	r3, pc
	mov	r0, r3
	bl	_ZN2OTL5CastPINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEEPKvEEPT_PT0_(PLT)
	mov	r3, r0
	mov	r0, r3
	pop	{r7, pc}
.L615:
	.align	2
.L614:
	.word	_ZN2OTL9_NullPoolE-(.LPIC130+4)
	.cantunwind
	.fnend
	.size	_ZN2OTL4NullINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEEEERKT_v, .-_ZN2OTL4NullINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEEEERKT_v
	.section	.text._ZN2OTL14StructAtOffsetINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEEEERKT_PKvj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL14StructAtOffsetINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEEEERKT_PKvj, %function
_ZN2OTL14StructAtOffsetINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEEEERKT_PKvj:
	.fnstart
.LFB411:
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
	.size	_ZN2OTL14StructAtOffsetINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEEEERKT_PKvj, .-_ZN2OTL14StructAtOffsetINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEEEERKT_PKvj
	.section	.text._ZN2OTL4NullINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEEEERKT_v,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL4NullINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEEEERKT_v, %function
_ZN2OTL4NullINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEEEERKT_v:
	.fnstart
.LFB412:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r3, .L620
.LPIC131:
	add	r3, pc
	mov	r0, r3
	bl	_ZN2OTL5CastPINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEEPKvEEPT_PT0_(PLT)
	mov	r3, r0
	mov	r0, r3
	pop	{r7, pc}
.L621:
	.align	2
.L620:
	.word	_ZN2OTL9_NullPoolE-(.LPIC131+4)
	.cantunwind
	.fnend
	.size	_ZN2OTL4NullINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEEEERKT_v, .-_ZN2OTL4NullINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEEEERKT_v
	.section	.text._ZN2OTL14StructAtOffsetINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEEEERKT_PKvj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL14StructAtOffsetINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEEEERKT_PKvj, %function
_ZN2OTL14StructAtOffsetINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEEEERKT_PKvj:
	.fnstart
.LFB413:
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
	.size	_ZN2OTL14StructAtOffsetINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEEEERKT_PKvj, .-_ZN2OTL14StructAtOffsetINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEEEERKT_PKvj
	.section	.text._ZN2OTL5CastPINS_10UVSMappingEPKvEEPT_PT0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL5CastPINS_10UVSMappingEPKvEEPT_PT0_, %function
_ZN2OTL5CastPINS_10UVSMappingEPKvEEPT_PT0_:
	.fnstart
.LFB414:
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
	.size	_ZN2OTL5CastPINS_10UVSMappingEPKvEEPT_PT0_, .-_ZN2OTL5CastPINS_10UVSMappingEPKvEEPT_PT0_
	.section	.text._ZN2OT21hb_sanitize_context_t7try_setINS_8OffsetToINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEES6_EEiEEbPT_RKT0_,"axG",%progbits,_ZN2OT21hb_sanitize_context_t7try_setINS_8OffsetToINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEES6_EEiEEbPT_RKT0_,comdat
	.align	2
	.weak	_ZN2OT21hb_sanitize_context_t7try_setINS_8OffsetToINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEES6_EEiEEbPT_RKT0_
	.thumb
	.thumb_func
	.type	_ZN2OT21hb_sanitize_context_t7try_setINS_8OffsetToINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEES6_EEiEEbPT_RKT0_, %function
_ZN2OT21hb_sanitize_context_t7try_setINS_8OffsetToINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEES6_EEiEEbPT_RKT0_:
	.fnstart
.LFB415:
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
	movs	r2, #4
	bl	_ZN2OT21hb_sanitize_context_t8may_editEPKvj(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L627
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OT7IntTypeIjLj4EE3setEj(PLT)
	movs	r3, #1
	b	.L628
.L627:
	movs	r3, #0
.L628:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OT21hb_sanitize_context_t7try_setINS_8OffsetToINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEES6_EEiEEbPT_RKT0_, .-_ZN2OT21hb_sanitize_context_t7try_setINS_8OffsetToINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEES6_EEiEEbPT_RKT0_
	.section	.text._ZN2OT7ArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tE,"axG",%progbits,_ZN2OT7ArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tE,comdat
	.align	2
	.weak	_ZN2OT7ArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tE
	.thumb
	.thumb_func
	.type	_ZN2OT7ArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tE, %function
_ZN2OT7ArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tE:
	.fnstart
.LFB416:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #28
	sub	sp, sp, #28
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r4, [r7]
	ldr	r0, [r7]
	bl	_ZN2OT21hb_sanitize_context_t8get_nameEv(PLT)
	mov	r3, r0
	add	r2, r7, #12
	ldr	r1, .L633
.LPIC132:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L633+4
.LPIC133:
	add	r1, pc
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r4
	mov	r2, r3
	ldr	r3, [r7, #4]
	bl	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z(PLT)
	ldr	r0, [r7]
	ldr	r1, [r7, #4]
	bl	_ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEEEEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L630
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZNK2OT7IntTypeIjLj4EEcvjEv(PLT)
	mov	r3, r0
	ldr	r0, [r7]
	ldr	r1, [r7, #4]
	movs	r2, #4
	bl	_ZNK2OT21hb_sanitize_context_t11check_arrayEPKvjj(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L630
	movs	r3, #1
	b	.L631
.L630:
	movs	r3, #0
.L631:
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	movw	r2, #889
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L634:
	.align	2
.L633:
	.word	_ZZN2OT7ArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__-(.LPIC132+4)
	.word	.LC13-(.LPIC133+4)
	.fnend
	.size	_ZN2OT7ArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tE, .-_ZN2OT7ArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tE
	.section	.text._ZN2OT21hb_sanitize_context_t7try_setINS_8OffsetToINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEES6_EEiEEbPT_RKT0_,"axG",%progbits,_ZN2OT21hb_sanitize_context_t7try_setINS_8OffsetToINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEES6_EEiEEbPT_RKT0_,comdat
	.align	2
	.weak	_ZN2OT21hb_sanitize_context_t7try_setINS_8OffsetToINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEES6_EEiEEbPT_RKT0_
	.thumb
	.thumb_func
	.type	_ZN2OT21hb_sanitize_context_t7try_setINS_8OffsetToINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEES6_EEiEEbPT_RKT0_, %function
_ZN2OT21hb_sanitize_context_t7try_setINS_8OffsetToINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEES6_EEiEEbPT_RKT0_:
	.fnstart
.LFB417:
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
	movs	r2, #4
	bl	_ZN2OT21hb_sanitize_context_t8may_editEPKvj(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L636
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OT7IntTypeIjLj4EE3setEj(PLT)
	movs	r3, #1
	b	.L637
.L636:
	movs	r3, #0
.L637:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OT21hb_sanitize_context_t7try_setINS_8OffsetToINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEES6_EEiEEbPT_RKT0_, .-_ZN2OT21hb_sanitize_context_t7try_setINS_8OffsetToINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEES6_EEiEEbPT_RKT0_
	.section	.text._ZN2OT7ArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tE,"axG",%progbits,_ZN2OT7ArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tE,comdat
	.align	2
	.weak	_ZN2OT7ArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tE
	.thumb
	.thumb_func
	.type	_ZN2OT7ArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tE, %function
_ZN2OT7ArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tE:
	.fnstart
.LFB418:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #28
	sub	sp, sp, #28
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r4, [r7]
	ldr	r0, [r7]
	bl	_ZN2OT21hb_sanitize_context_t8get_nameEv(PLT)
	mov	r3, r0
	add	r2, r7, #12
	ldr	r1, .L642
.LPIC134:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L642+4
.LPIC135:
	add	r1, pc
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r4
	mov	r2, r3
	ldr	r3, [r7, #4]
	bl	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z(PLT)
	ldr	r0, [r7]
	ldr	r1, [r7, #4]
	bl	_ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEEEEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L639
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZNK2OT7IntTypeIjLj4EEcvjEv(PLT)
	mov	r3, r0
	ldr	r0, [r7]
	ldr	r1, [r7, #4]
	movs	r2, #5
	bl	_ZNK2OT21hb_sanitize_context_t11check_arrayEPKvjj(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L639
	movs	r3, #1
	b	.L640
.L639:
	movs	r3, #0
.L640:
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	movw	r2, #889
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L643:
	.align	2
.L642:
	.word	_ZZN2OT7ArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__-(.LPIC134+4)
	.word	.LC13-(.LPIC135+4)
	.fnend
	.size	_ZN2OT7ArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tE, .-_ZN2OT7ArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tE
	.section	.text._ZN2OTL5CastPINS_23VariationSelectorRecordEPKvEEPT_PT0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL5CastPINS_23VariationSelectorRecordEPKvEEPT_PT0_, %function
_ZN2OTL5CastPINS_23VariationSelectorRecordEPKvEEPT_PT0_:
	.fnstart
.LFB419:
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
	.size	_ZN2OTL5CastPINS_23VariationSelectorRecordEPKvEEPT_PT0_, .-_ZN2OTL5CastPINS_23VariationSelectorRecordEPKvEEPT_PT0_
	.section	.text._ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_23VariationSelectorRecordENS_7IntTypeIjLj4EEEEEEEbPKT_,"axG",%progbits,_ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_23VariationSelectorRecordENS_7IntTypeIjLj4EEEEEEEbPKT_,comdat
	.align	2
	.weak	_ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_23VariationSelectorRecordENS_7IntTypeIjLj4EEEEEEEbPKT_
	.thumb
	.thumb_func
	.type	_ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_23VariationSelectorRecordENS_7IntTypeIjLj4EEEEEEEbPKT_, %function
_ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_23VariationSelectorRecordENS_7IntTypeIjLj4EEEEEEEbPKT_:
	.fnstart
.LFB420:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	movs	r2, #4
	bl	_ZNK2OT21hb_sanitize_context_t11check_rangeEPKvj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_23VariationSelectorRecordENS_7IntTypeIjLj4EEEEEEEbPKT_, .-_ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_23VariationSelectorRecordENS_7IntTypeIjLj4EEEEEEEbPKT_
	.section	.text._ZN2OTL4NullINS_7IntTypeItLj2EEEEERKT_v,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL4NullINS_7IntTypeItLj2EEEEERKT_v, %function
_ZN2OTL4NullINS_7IntTypeItLj2EEEEERKT_v:
	.fnstart
.LFB421:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r3, .L650
.LPIC136:
	add	r3, pc
	mov	r0, r3
	bl	_ZN2OTL5CastPINS_7IntTypeItLj2EEEPKvEEPT_PT0_(PLT)
	mov	r3, r0
	mov	r0, r3
	pop	{r7, pc}
.L651:
	.align	2
.L650:
	.word	_ZN2OTL9_NullPoolE-(.LPIC136+4)
	.cantunwind
	.fnend
	.size	_ZN2OTL4NullINS_7IntTypeItLj2EEEEERKT_v, .-_ZN2OTL4NullINS_7IntTypeItLj2EEEEERKT_v
	.section	.text._ZN2OTL4NullINS_21CmapSubtableLongGroupEEERKT_v,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL4NullINS_21CmapSubtableLongGroupEEERKT_v, %function
_ZN2OTL4NullINS_21CmapSubtableLongGroupEEERKT_v:
	.fnstart
.LFB422:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r3, .L654
.LPIC137:
	add	r3, pc
	mov	r0, r3
	bl	_ZN2OTL5CastPINS_21CmapSubtableLongGroupEPKvEEPT_PT0_(PLT)
	mov	r3, r0
	mov	r0, r3
	pop	{r7, pc}
.L655:
	.align	2
.L654:
	.word	_ZN2OTL9_NullPoolE-(.LPIC137+4)
	.cantunwind
	.fnend
	.size	_ZN2OTL4NullINS_21CmapSubtableLongGroupEEERKT_v, .-_ZN2OTL4NullINS_21CmapSubtableLongGroupEEERKT_v
	.section	.text._ZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_E16sanitize_shallowEPNS_21hb_sanitize_context_tE,"axG",%progbits,_ZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_E16sanitize_shallowEPNS_21hb_sanitize_context_tE,comdat
	.align	2
	.weak	_ZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_E16sanitize_shallowEPNS_21hb_sanitize_context_tE
	.thumb
	.thumb_func
	.type	_ZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_E16sanitize_shallowEPNS_21hb_sanitize_context_tE, %function
_ZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_E16sanitize_shallowEPNS_21hb_sanitize_context_tE:
	.fnstart
.LFB423:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #28
	sub	sp, sp, #28
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r4, [r7]
	ldr	r0, [r7]
	bl	_ZN2OT21hb_sanitize_context_t8get_nameEv(PLT)
	mov	r3, r0
	add	r2, r7, #12
	ldr	r1, .L660
.LPIC138:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L660+4
.LPIC139:
	add	r1, pc
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r4
	mov	r2, r3
	ldr	r3, [r7, #4]
	bl	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z(PLT)
	ldr	r0, [r7]
	ldr	r1, [r7, #4]
	bl	_ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_7IntTypeItLj2EEES4_EEEEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L657
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	ldr	r0, [r7]
	ldr	r1, [r7, #4]
	movs	r2, #2
	bl	_ZNK2OT21hb_sanitize_context_t11check_arrayEPKvjj(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L657
	movs	r3, #1
	b	.L658
.L657:
	movs	r3, #0
.L658:
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	movw	r2, #889
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L661:
	.align	2
.L660:
	.word	_ZZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_E16sanitize_shallowEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__-(.LPIC138+4)
	.word	.LC13-(.LPIC139+4)
	.fnend
	.size	_ZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_E16sanitize_shallowEPNS_21hb_sanitize_context_tE, .-_ZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_E16sanitize_shallowEPNS_21hb_sanitize_context_tE
	.section	.text._ZN2OT7ArrayOfINS_7IntTypeItLj2EEENS1_IjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tE,"axG",%progbits,_ZN2OT7ArrayOfINS_7IntTypeItLj2EEENS1_IjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tE,comdat
	.align	2
	.weak	_ZN2OT7ArrayOfINS_7IntTypeItLj2EEENS1_IjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tE
	.thumb
	.thumb_func
	.type	_ZN2OT7ArrayOfINS_7IntTypeItLj2EEENS1_IjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tE, %function
_ZN2OT7ArrayOfINS_7IntTypeItLj2EEENS1_IjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tE:
	.fnstart
.LFB424:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #28
	sub	sp, sp, #28
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r4, [r7]
	ldr	r0, [r7]
	bl	_ZN2OT21hb_sanitize_context_t8get_nameEv(PLT)
	mov	r3, r0
	add	r2, r7, #12
	ldr	r1, .L666
.LPIC140:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L666+4
.LPIC141:
	add	r1, pc
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r4
	mov	r2, r3
	ldr	r3, [r7, #4]
	bl	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z(PLT)
	ldr	r0, [r7]
	ldr	r1, [r7, #4]
	bl	_ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_7IntTypeItLj2EEENS3_IjLj4EEEEEEEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L663
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZNK2OT7IntTypeIjLj4EEcvjEv(PLT)
	mov	r3, r0
	ldr	r0, [r7]
	ldr	r1, [r7, #4]
	movs	r2, #2
	bl	_ZNK2OT21hb_sanitize_context_t11check_arrayEPKvjj(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L663
	movs	r3, #1
	b	.L664
.L663:
	movs	r3, #0
.L664:
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	movw	r2, #889
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L667:
	.align	2
.L666:
	.word	_ZZN2OT7ArrayOfINS_7IntTypeItLj2EEENS1_IjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__-(.LPIC140+4)
	.word	.LC13-(.LPIC141+4)
	.fnend
	.size	_ZN2OT7ArrayOfINS_7IntTypeItLj2EEENS1_IjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tE, .-_ZN2OT7ArrayOfINS_7IntTypeItLj2EEENS1_IjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tE
	.section	.text._ZN2OT7ArrayOfINS_21CmapSubtableLongGroupENS_7IntTypeIjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tE,"axG",%progbits,_ZN2OT7ArrayOfINS_21CmapSubtableLongGroupENS_7IntTypeIjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tE,comdat
	.align	2
	.weak	_ZN2OT7ArrayOfINS_21CmapSubtableLongGroupENS_7IntTypeIjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tE
	.thumb
	.thumb_func
	.type	_ZN2OT7ArrayOfINS_21CmapSubtableLongGroupENS_7IntTypeIjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tE, %function
_ZN2OT7ArrayOfINS_21CmapSubtableLongGroupENS_7IntTypeIjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tE:
	.fnstart
.LFB425:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #28
	sub	sp, sp, #28
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r4, [r7]
	ldr	r0, [r7]
	bl	_ZN2OT21hb_sanitize_context_t8get_nameEv(PLT)
	mov	r3, r0
	add	r2, r7, #12
	ldr	r1, .L672
.LPIC142:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L672+4
.LPIC143:
	add	r1, pc
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r4
	mov	r2, r3
	ldr	r3, [r7, #4]
	bl	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z(PLT)
	ldr	r0, [r7]
	ldr	r1, [r7, #4]
	bl	_ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_21CmapSubtableLongGroupENS_7IntTypeIjLj4EEEEEEEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L669
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZNK2OT7IntTypeIjLj4EEcvjEv(PLT)
	mov	r3, r0
	ldr	r0, [r7]
	ldr	r1, [r7, #4]
	movs	r2, #12
	bl	_ZNK2OT21hb_sanitize_context_t11check_arrayEPKvjj(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L669
	movs	r3, #1
	b	.L670
.L669:
	movs	r3, #0
.L670:
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	movw	r2, #889
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L673:
	.align	2
.L672:
	.word	_ZZN2OT7ArrayOfINS_21CmapSubtableLongGroupENS_7IntTypeIjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__-(.LPIC142+4)
	.word	.LC13-(.LPIC143+4)
	.fnend
	.size	_ZN2OT7ArrayOfINS_21CmapSubtableLongGroupENS_7IntTypeIjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tE, .-_ZN2OT7ArrayOfINS_21CmapSubtableLongGroupENS_7IntTypeIjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tE
	.section	.text._ZN2OT21hb_sanitize_context_t7try_setINS_8OffsetToINS_12CmapSubtableENS_7IntTypeIjLj4EEEEEiEEbPT_RKT0_,"axG",%progbits,_ZN2OT21hb_sanitize_context_t7try_setINS_8OffsetToINS_12CmapSubtableENS_7IntTypeIjLj4EEEEEiEEbPT_RKT0_,comdat
	.align	2
	.weak	_ZN2OT21hb_sanitize_context_t7try_setINS_8OffsetToINS_12CmapSubtableENS_7IntTypeIjLj4EEEEEiEEbPT_RKT0_
	.thumb
	.thumb_func
	.type	_ZN2OT21hb_sanitize_context_t7try_setINS_8OffsetToINS_12CmapSubtableENS_7IntTypeIjLj4EEEEEiEEbPT_RKT0_, %function
_ZN2OT21hb_sanitize_context_t7try_setINS_8OffsetToINS_12CmapSubtableENS_7IntTypeIjLj4EEEEEiEEbPT_RKT0_:
	.fnstart
.LFB426:
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
	movs	r2, #4
	bl	_ZN2OT21hb_sanitize_context_t8may_editEPKvj(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L675
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OT7IntTypeIjLj4EE3setEj(PLT)
	movs	r3, #1
	b	.L676
.L675:
	movs	r3, #0
.L676:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OT21hb_sanitize_context_t7try_setINS_8OffsetToINS_12CmapSubtableENS_7IntTypeIjLj4EEEEEiEEbPT_RKT0_, .-_ZN2OT21hb_sanitize_context_t7try_setINS_8OffsetToINS_12CmapSubtableENS_7IntTypeIjLj4EEEEEiEEbPT_RKT0_
	.section	.text._ZN2OTL5CastPINS_14EncodingRecordEPKvEEPT_PT0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL5CastPINS_14EncodingRecordEPKvEEPT_PT0_, %function
_ZN2OTL5CastPINS_14EncodingRecordEPKvEEPT_PT0_:
	.fnstart
.LFB427:
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
	.size	_ZN2OTL5CastPINS_14EncodingRecordEPKvEEPT_PT0_, .-_ZN2OTL5CastPINS_14EncodingRecordEPKvEEPT_PT0_
	.section	.text._ZN2OTL14StructAtOffsetINS_12CmapSubtableEEERKT_PKvj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL14StructAtOffsetINS_12CmapSubtableEEERKT_PKvj, %function
_ZN2OTL14StructAtOffsetINS_12CmapSubtableEEERKT_PKvj:
	.fnstart
.LFB428:
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
	.size	_ZN2OTL14StructAtOffsetINS_12CmapSubtableEEERKT_PKvj, .-_ZN2OTL14StructAtOffsetINS_12CmapSubtableEEERKT_PKvj
	.section	.text._ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_14EncodingRecordENS_7IntTypeItLj2EEEEEEEbPKT_,"axG",%progbits,_ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_14EncodingRecordENS_7IntTypeItLj2EEEEEEEbPKT_,comdat
	.align	2
	.weak	_ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_14EncodingRecordENS_7IntTypeItLj2EEEEEEEbPKT_
	.thumb
	.thumb_func
	.type	_ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_14EncodingRecordENS_7IntTypeItLj2EEEEEEEbPKT_, %function
_ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_14EncodingRecordENS_7IntTypeItLj2EEEEEEEbPKT_:
	.fnstart
.LFB429:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	movs	r2, #2
	bl	_ZNK2OT21hb_sanitize_context_t11check_rangeEPKvj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_14EncodingRecordENS_7IntTypeItLj2EEEEEEEbPKT_, .-_ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_14EncodingRecordENS_7IntTypeItLj2EEEEEEEbPKT_
	.section	.text._ZN2OTL5CastPINS_4_heaEPKvEEPT_PT0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL5CastPINS_4_heaEPKvEEPT_PT0_, %function
_ZN2OTL5CastPINS_4_heaEPKvEEPT_PT0_:
	.fnstart
.LFB430:
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
	.size	_ZN2OTL5CastPINS_4_heaEPKvEEPT_PT0_, .-_ZN2OTL5CastPINS_4_heaEPKvEEPT_PT0_
	.section	.text._ZN2OTL5CastPINS_4_mtxEPKvEEPT_PT0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL5CastPINS_4_mtxEPKvEEPT_PT0_, %function
_ZN2OTL5CastPINS_4_mtxEPKvEEPT_PT0_:
	.fnstart
.LFB431:
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
	.size	_ZN2OTL5CastPINS_4_mtxEPKvEEPT_PT0_, .-_ZN2OTL5CastPINS_4_mtxEPKvEEPT_PT0_
	.section	.text._ZN2OTL5CastPINS_4cmapEPKvEEPT_PT0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL5CastPINS_4cmapEPKvEEPT_PT0_, %function
_ZN2OTL5CastPINS_4cmapEPKvEEPT_PT0_:
	.fnstart
.LFB432:
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
	.size	_ZN2OTL5CastPINS_4cmapEPKvEEPT_PT0_, .-_ZN2OTL5CastPINS_4cmapEPKvEEPT_PT0_
	.section	.text._ZN2OTL5CastPINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEEPKvEEPT_PT0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL5CastPINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEEPKvEEPT_PT0_, %function
_ZN2OTL5CastPINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEEPKvEEPT_PT0_:
	.fnstart
.LFB433:
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
	.size	_ZN2OTL5CastPINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEEPKvEEPT_PT0_, .-_ZN2OTL5CastPINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEEPKvEEPT_PT0_
	.section	.text._ZN2OTL5CastPINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEEPKvEEPT_PT0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL5CastPINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEEPKvEEPT_PT0_, %function
_ZN2OTL5CastPINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEEPKvEEPT_PT0_:
	.fnstart
.LFB434:
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
	.size	_ZN2OTL5CastPINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEEPKvEEPT_PT0_, .-_ZN2OTL5CastPINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEEPKvEEPT_PT0_
	.section	.text._ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEEEEbPKT_,"axG",%progbits,_ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEEEEbPKT_,comdat
	.align	2
	.weak	_ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEEEEbPKT_
	.thumb
	.thumb_func
	.type	_ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEEEEbPKT_, %function
_ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEEEEbPKT_:
	.fnstart
.LFB435:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	movs	r2, #4
	bl	_ZNK2OT21hb_sanitize_context_t11check_rangeEPKvj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEEEEbPKT_, .-_ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEEEEbPKT_
	.section	.text._ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEEEEbPKT_,"axG",%progbits,_ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEEEEbPKT_,comdat
	.align	2
	.weak	_ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEEEEbPKT_
	.thumb
	.thumb_func
	.type	_ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEEEEbPKT_, %function
_ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEEEEbPKT_:
	.fnstart
.LFB436:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	movs	r2, #4
	bl	_ZNK2OT21hb_sanitize_context_t11check_rangeEPKvj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEEEEbPKT_, .-_ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEEEEbPKT_
	.section	.text._ZN2OTL5CastPINS_7IntTypeItLj2EEEPKvEEPT_PT0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL5CastPINS_7IntTypeItLj2EEEPKvEEPT_PT0_, %function
_ZN2OTL5CastPINS_7IntTypeItLj2EEEPKvEEPT_PT0_:
	.fnstart
.LFB437:
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
	.size	_ZN2OTL5CastPINS_7IntTypeItLj2EEEPKvEEPT_PT0_, .-_ZN2OTL5CastPINS_7IntTypeItLj2EEEPKvEEPT_PT0_
	.section	.text._ZN2OTL5CastPINS_21CmapSubtableLongGroupEPKvEEPT_PT0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL5CastPINS_21CmapSubtableLongGroupEPKvEEPT_PT0_, %function
_ZN2OTL5CastPINS_21CmapSubtableLongGroupEPKvEEPT_PT0_:
	.fnstart
.LFB438:
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
	.size	_ZN2OTL5CastPINS_21CmapSubtableLongGroupEPKvEEPT_PT0_, .-_ZN2OTL5CastPINS_21CmapSubtableLongGroupEPKvEEPT_PT0_
	.section	.text._ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_7IntTypeItLj2EEES4_EEEEbPKT_,"axG",%progbits,_ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_7IntTypeItLj2EEES4_EEEEbPKT_,comdat
	.align	2
	.weak	_ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_7IntTypeItLj2EEES4_EEEEbPKT_
	.thumb
	.thumb_func
	.type	_ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_7IntTypeItLj2EEES4_EEEEbPKT_, %function
_ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_7IntTypeItLj2EEES4_EEEEbPKT_:
	.fnstart
.LFB439:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	movs	r2, #2
	bl	_ZNK2OT21hb_sanitize_context_t11check_rangeEPKvj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_7IntTypeItLj2EEES4_EEEEbPKT_, .-_ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_7IntTypeItLj2EEES4_EEEEbPKT_
	.section	.text._ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_7IntTypeItLj2EEENS3_IjLj4EEEEEEEbPKT_,"axG",%progbits,_ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_7IntTypeItLj2EEENS3_IjLj4EEEEEEEbPKT_,comdat
	.align	2
	.weak	_ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_7IntTypeItLj2EEENS3_IjLj4EEEEEEEbPKT_
	.thumb
	.thumb_func
	.type	_ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_7IntTypeItLj2EEENS3_IjLj4EEEEEEEbPKT_, %function
_ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_7IntTypeItLj2EEENS3_IjLj4EEEEEEEbPKT_:
	.fnstart
.LFB440:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	movs	r2, #4
	bl	_ZNK2OT21hb_sanitize_context_t11check_rangeEPKvj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_7IntTypeItLj2EEENS3_IjLj4EEEEEEEbPKT_, .-_ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_7IntTypeItLj2EEENS3_IjLj4EEEEEEEbPKT_
	.section	.text._ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_21CmapSubtableLongGroupENS_7IntTypeIjLj4EEEEEEEbPKT_,"axG",%progbits,_ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_21CmapSubtableLongGroupENS_7IntTypeIjLj4EEEEEEEbPKT_,comdat
	.align	2
	.weak	_ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_21CmapSubtableLongGroupENS_7IntTypeIjLj4EEEEEEEbPKT_
	.thumb
	.thumb_func
	.type	_ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_21CmapSubtableLongGroupENS_7IntTypeIjLj4EEEEEEEbPKT_, %function
_ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_21CmapSubtableLongGroupENS_7IntTypeIjLj4EEEEEEEbPKT_:
	.fnstart
.LFB441:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	movs	r2, #4
	bl	_ZNK2OT21hb_sanitize_context_t11check_rangeEPKvj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_21CmapSubtableLongGroupENS_7IntTypeIjLj4EEEEEEEbPKT_, .-_ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_21CmapSubtableLongGroupENS_7IntTypeIjLj4EEEEEEEbPKT_
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
	.section	.rodata._ZZN2OT9SanitizerINS_4cmapEE8sanitizeEP9hb_blob_tE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT9SanitizerINS_4cmapEE8sanitizeEP9hb_blob_tE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT9SanitizerINS_4cmapEE8sanitizeEP9hb_blob_tE19__PRETTY_FUNCTION__, 106
_ZZN2OT9SanitizerINS_4cmapEE8sanitizeEP9hb_blob_tE19__PRETTY_FUNCTION__:
	.ascii	"static hb_blob_t* OT::Sanitizer<Type>::sanitize(hb_"
	.ascii	"blob_t*) [with Type = OT::cmap; hb_blob_t = hb_blob"
	.ascii	"_t]\000"
	.section	.rodata._ZZN2OT21hb_sanitize_context_t16start_processingEvE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT21hb_sanitize_context_t16start_processingEvE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT21hb_sanitize_context_t16start_processingEvE19__PRETTY_FUNCTION__, 51
_ZZN2OT21hb_sanitize_context_t16start_processingEvE19__PRETTY_FUNCTION__:
	.ascii	"void OT::hb_sanitize_context_t::start_processing()\000"
	.section	.rodata._ZZN2OT4cmap8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT4cmap8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT4cmap8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, 52
_ZZN2OT4cmap8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::cmap::sanitize(OT::hb_sanitize_context_t*)"
	.ascii	"\000"
	.section	.rodata._ZZN2OT7ArrayOfINS_14EncodingRecordENS_7IntTypeItLj2EEEE8sanitizeEPNS_21hb_sanitize_context_tEPvE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT7ArrayOfINS_14EncodingRecordENS_7IntTypeItLj2EEEE8sanitizeEPNS_21hb_sanitize_context_tEPvE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT7ArrayOfINS_14EncodingRecordENS_7IntTypeItLj2EEEE8sanitizeEPNS_21hb_sanitize_context_tEPvE19__PRETTY_FUNCTION__, 157
_ZZN2OT7ArrayOfINS_14EncodingRecordENS_7IntTypeItLj2EEEE8sanitizeEPNS_21hb_sanitize_context_tEPvE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::ArrayOf<Type, LenType>::sanitize(OT::hb_sa"
	.ascii	"nitize_context_t*, void*) [with Type = OT::Encoding"
	.ascii	"Record; LenType = OT::IntType<short unsigned int, 2"
	.ascii	"u>]\000"
	.section	.rodata._ZZN2OT7ArrayOfINS_14EncodingRecordENS_7IntTypeItLj2EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT7ArrayOfINS_14EncodingRecordENS_7IntTypeItLj2EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT7ArrayOfINS_14EncodingRecordENS_7IntTypeItLj2EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, 158
_ZZN2OT7ArrayOfINS_14EncodingRecordENS_7IntTypeItLj2EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::ArrayOf<Type, LenType>::sanitize_shallow(O"
	.ascii	"T::hb_sanitize_context_t*) [with Type = OT::Encodin"
	.ascii	"gRecord; LenType = OT::IntType<short unsigned int, "
	.ascii	"2u>]\000"
	.section	.rodata._ZZN2OT14EncodingRecord8sanitizeEPNS_21hb_sanitize_context_tEPvE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT14EncodingRecord8sanitizeEPNS_21hb_sanitize_context_tEPvE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT14EncodingRecord8sanitizeEPNS_21hb_sanitize_context_tEPvE19__PRETTY_FUNCTION__, 69
_ZZN2OT14EncodingRecord8sanitizeEPNS_21hb_sanitize_context_tEPvE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::EncodingRecord::sanitize(OT::hb_sanitize_c"
	.ascii	"ontext_t*, void*)\000"
	.section	.rodata._ZZN2OT8OffsetToINS_12CmapSubtableENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEPvE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT8OffsetToINS_12CmapSubtableENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEPvE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT8OffsetToINS_12CmapSubtableENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEPvE19__PRETTY_FUNCTION__, 156
_ZZN2OT8OffsetToINS_12CmapSubtableENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEPvE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::OffsetTo<Type, OffsetType>::sanitize(OT::h"
	.ascii	"b_sanitize_context_t*, void*) [with Type = OT::Cmap"
	.ascii	"Subtable; OffsetType = OT::IntType<unsigned int, 4u"
	.ascii	">]\000"
	.section	.rodata._ZZN2OT12CmapSubtable8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT12CmapSubtable8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT12CmapSubtable8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, 60
_ZZN2OT12CmapSubtable8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::CmapSubtable::sanitize(OT::hb_sanitize_con"
	.ascii	"text_t*)\000"
	.section	.rodata._ZZN2OT7IntTypeItLj2EE8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT7IntTypeItLj2EE8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT7IntTypeItLj2EE8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, 124
_ZZN2OT7IntTypeItLj2EE8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::IntType<Type, Size>::sanitize(OT::hb_sanit"
	.ascii	"ize_context_t*) [with Type = short unsigned int; un"
	.ascii	"signed int Size = 2u]\000"
	.section	.rodata._ZZN2OT19CmapSubtableFormat08sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT19CmapSubtableFormat08sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT19CmapSubtableFormat08sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, 67
_ZZN2OT19CmapSubtableFormat08sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::CmapSubtableFormat0::sanitize(OT::hb_sanit"
	.ascii	"ize_context_t*)\000"
	.section	.rodata._ZZN2OT19CmapSubtableFormat48sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT19CmapSubtableFormat48sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT19CmapSubtableFormat48sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, 67
_ZZN2OT19CmapSubtableFormat48sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::CmapSubtableFormat4::sanitize(OT::hb_sanit"
	.ascii	"ize_context_t*)\000"
	.section	.rodata._ZZN2OT19CmapSubtableTrimmedINS_7IntTypeItLj2EEEE8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT19CmapSubtableTrimmedINS_7IntTypeItLj2EEEE8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT19CmapSubtableTrimmedINS_7IntTypeItLj2EEEE8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, 123
_ZZN2OT19CmapSubtableTrimmedINS_7IntTypeItLj2EEEE8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::CmapSubtableTrimmed<UINT>::sanitize(OT::hb"
	.ascii	"_sanitize_context_t*) [with UINT = OT::IntType<shor"
	.ascii	"t unsigned int, 2u>]\000"
	.section	.rodata._ZZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_E8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_E8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_E8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, 167
_ZZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_E8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::ArrayOf<Type, LenType>::sanitize(OT::hb_sa"
	.ascii	"nitize_context_t*) [with Type = OT::IntType<short u"
	.ascii	"nsigned int, 2u>; LenType = OT::IntType<short unsig"
	.ascii	"ned int, 2u>]\000"
	.section	.rodata._ZZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_E16sanitize_shallowEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_E16sanitize_shallowEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_E16sanitize_shallowEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, 175
_ZZN2OT7ArrayOfINS_7IntTypeItLj2EEES2_E16sanitize_shallowEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::ArrayOf<Type, LenType>::sanitize_shallow(O"
	.ascii	"T::hb_sanitize_context_t*) [with Type = OT::IntType"
	.ascii	"<short unsigned int, 2u>; LenType = OT::IntType<sho"
	.ascii	"rt unsigned int, 2u>]\000"
	.section	.rodata._ZZN2OT19CmapSubtableTrimmedINS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT19CmapSubtableTrimmedINS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT19CmapSubtableTrimmedINS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, 117
_ZZN2OT19CmapSubtableTrimmedINS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::CmapSubtableTrimmed<UINT>::sanitize(OT::hb"
	.ascii	"_sanitize_context_t*) [with UINT = OT::IntType<unsi"
	.ascii	"gned int, 4u>]\000"
	.section	.rodata._ZZN2OT7ArrayOfINS_7IntTypeItLj2EEENS1_IjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT7ArrayOfINS_7IntTypeItLj2EEENS1_IjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT7ArrayOfINS_7IntTypeItLj2EEENS1_IjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, 161
_ZZN2OT7ArrayOfINS_7IntTypeItLj2EEENS1_IjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::ArrayOf<Type, LenType>::sanitize(OT::hb_sa"
	.ascii	"nitize_context_t*) [with Type = OT::IntType<short u"
	.ascii	"nsigned int, 2u>; LenType = OT::IntType<unsigned in"
	.ascii	"t, 4u>]\000"
	.section	.rodata._ZZN2OT7ArrayOfINS_7IntTypeItLj2EEENS1_IjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT7ArrayOfINS_7IntTypeItLj2EEENS1_IjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT7ArrayOfINS_7IntTypeItLj2EEENS1_IjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, 169
_ZZN2OT7ArrayOfINS_7IntTypeItLj2EEENS1_IjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::ArrayOf<Type, LenType>::sanitize_shallow(O"
	.ascii	"T::hb_sanitize_context_t*) [with Type = OT::IntType"
	.ascii	"<short unsigned int, 2u>; LenType = OT::IntType<uns"
	.ascii	"igned int, 4u>]\000"
	.section	.rodata._ZZN2OT25CmapSubtableLongSegmentedINS_20CmapSubtableFormat12EE8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT25CmapSubtableLongSegmentedINS_20CmapSubtableFormat12EE8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT25CmapSubtableLongSegmentedINS_20CmapSubtableFormat12EE8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, 112
_ZZN2OT25CmapSubtableLongSegmentedINS_20CmapSubtableFormat12EE8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::CmapSubtableLongSegmented<T>::sanitize(OT:"
	.ascii	":hb_sanitize_context_t*) [with T = OT::CmapSubtable"
	.ascii	"Format12]\000"
	.section	.rodata._ZZN2OT7ArrayOfINS_21CmapSubtableLongGroupENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT7ArrayOfINS_21CmapSubtableLongGroupENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT7ArrayOfINS_21CmapSubtableLongGroupENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, 151
_ZZN2OT7ArrayOfINS_21CmapSubtableLongGroupENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::ArrayOf<Type, LenType>::sanitize(OT::hb_sa"
	.ascii	"nitize_context_t*) [with Type = OT::CmapSubtableLon"
	.ascii	"gGroup; LenType = OT::IntType<unsigned int, 4u>]\000"
	.section	.rodata._ZZN2OT7ArrayOfINS_21CmapSubtableLongGroupENS_7IntTypeIjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT7ArrayOfINS_21CmapSubtableLongGroupENS_7IntTypeIjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT7ArrayOfINS_21CmapSubtableLongGroupENS_7IntTypeIjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, 159
_ZZN2OT7ArrayOfINS_21CmapSubtableLongGroupENS_7IntTypeIjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::ArrayOf<Type, LenType>::sanitize_shallow(O"
	.ascii	"T::hb_sanitize_context_t*) [with Type = OT::CmapSub"
	.ascii	"tableLongGroup; LenType = OT::IntType<unsigned int,"
	.ascii	" 4u>]\000"
	.section	.rodata._ZZN2OT25CmapSubtableLongSegmentedINS_20CmapSubtableFormat13EE8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT25CmapSubtableLongSegmentedINS_20CmapSubtableFormat13EE8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT25CmapSubtableLongSegmentedINS_20CmapSubtableFormat13EE8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, 112
_ZZN2OT25CmapSubtableLongSegmentedINS_20CmapSubtableFormat13EE8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::CmapSubtableLongSegmented<T>::sanitize(OT:"
	.ascii	":hb_sanitize_context_t*) [with T = OT::CmapSubtable"
	.ascii	"Format13]\000"
	.section	.rodata._ZZN2OT20CmapSubtableFormat148sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT20CmapSubtableFormat148sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT20CmapSubtableFormat148sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, 68
_ZZN2OT20CmapSubtableFormat148sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::CmapSubtableFormat14::sanitize(OT::hb_sani"
	.ascii	"tize_context_t*)\000"
	.section	.rodata._ZZN2OT7ArrayOfINS_23VariationSelectorRecordENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEPvE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT7ArrayOfINS_23VariationSelectorRecordENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEPvE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT7ArrayOfINS_23VariationSelectorRecordENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEPvE19__PRETTY_FUNCTION__, 160
_ZZN2OT7ArrayOfINS_23VariationSelectorRecordENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEPvE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::ArrayOf<Type, LenType>::sanitize(OT::hb_sa"
	.ascii	"nitize_context_t*, void*) [with Type = OT::Variatio"
	.ascii	"nSelectorRecord; LenType = OT::IntType<unsigned int"
	.ascii	", 4u>]\000"
	.section	.rodata._ZZN2OT7ArrayOfINS_23VariationSelectorRecordENS_7IntTypeIjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT7ArrayOfINS_23VariationSelectorRecordENS_7IntTypeIjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT7ArrayOfINS_23VariationSelectorRecordENS_7IntTypeIjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, 161
_ZZN2OT7ArrayOfINS_23VariationSelectorRecordENS_7IntTypeIjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::ArrayOf<Type, LenType>::sanitize_shallow(O"
	.ascii	"T::hb_sanitize_context_t*) [with Type = OT::Variati"
	.ascii	"onSelectorRecord; LenType = OT::IntType<unsigned in"
	.ascii	"t, 4u>]\000"
	.section	.rodata._ZZN2OT23VariationSelectorRecord8sanitizeEPNS_21hb_sanitize_context_tEPvE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT23VariationSelectorRecord8sanitizeEPNS_21hb_sanitize_context_tEPvE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT23VariationSelectorRecord8sanitizeEPNS_21hb_sanitize_context_tEPvE19__PRETTY_FUNCTION__, 78
_ZZN2OT23VariationSelectorRecord8sanitizeEPNS_21hb_sanitize_context_tEPvE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::VariationSelectorRecord::sanitize(OT::hb_s"
	.ascii	"anitize_context_t*, void*)\000"
	.section	.rodata._ZZN2OT8OffsetToINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEES4_E8sanitizeEPNS_21hb_sanitize_context_tEPvE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT8OffsetToINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEES4_E8sanitizeEPNS_21hb_sanitize_context_tEPvE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT8OffsetToINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEES4_E8sanitizeEPNS_21hb_sanitize_context_tEPvE19__PRETTY_FUNCTION__, 212
_ZZN2OT8OffsetToINS_13SortedArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEEES4_E8sanitizeEPNS_21hb_sanitize_context_tEPvE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::OffsetTo<Type, OffsetType>::sanitize(OT::h"
	.ascii	"b_sanitize_context_t*, void*) [with Type = OT::Sort"
	.ascii	"edArrayOf<OT::UnicodeValueRange, OT::IntType<unsign"
	.ascii	"ed int, 4u> >; OffsetType = OT::IntType<unsigned in"
	.ascii	"t, 4u>]\000"
	.section	.rodata._ZZN2OT7ArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT7ArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT7ArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, 147
_ZZN2OT7ArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::ArrayOf<Type, LenType>::sanitize(OT::hb_sa"
	.ascii	"nitize_context_t*) [with Type = OT::UnicodeValueRan"
	.ascii	"ge; LenType = OT::IntType<unsigned int, 4u>]\000"
	.section	.rodata._ZZN2OT7ArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT7ArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT7ArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, 155
_ZZN2OT7ArrayOfINS_17UnicodeValueRangeENS_7IntTypeIjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::ArrayOf<Type, LenType>::sanitize_shallow(O"
	.ascii	"T::hb_sanitize_context_t*) [with Type = OT::Unicode"
	.ascii	"ValueRange; LenType = OT::IntType<unsigned int, 4u>"
	.ascii	"]\000"
	.section	.rodata._ZZN2OT8OffsetToINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEES4_E8sanitizeEPNS_21hb_sanitize_context_tEPvE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT8OffsetToINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEES4_E8sanitizeEPNS_21hb_sanitize_context_tEPvE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT8OffsetToINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEES4_E8sanitizeEPNS_21hb_sanitize_context_tEPvE19__PRETTY_FUNCTION__, 205
_ZZN2OT8OffsetToINS_13SortedArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEEES4_E8sanitizeEPNS_21hb_sanitize_context_tEPvE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::OffsetTo<Type, OffsetType>::sanitize(OT::h"
	.ascii	"b_sanitize_context_t*, void*) [with Type = OT::Sort"
	.ascii	"edArrayOf<OT::UVSMapping, OT::IntType<unsigned int,"
	.ascii	" 4u> >; OffsetType = OT::IntType<unsigned int, 4u>]"
	.ascii	"\000"
	.section	.rodata._ZZN2OT7ArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT7ArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT7ArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, 140
_ZZN2OT7ArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::ArrayOf<Type, LenType>::sanitize(OT::hb_sa"
	.ascii	"nitize_context_t*) [with Type = OT::UVSMapping; Len"
	.ascii	"Type = OT::IntType<unsigned int, 4u>]\000"
	.section	.rodata._ZZN2OT7ArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT7ArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT7ArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, 148
_ZZN2OT7ArrayOfINS_10UVSMappingENS_7IntTypeIjLj4EEEE16sanitize_shallowEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::ArrayOf<Type, LenType>::sanitize_shallow(O"
	.ascii	"T::hb_sanitize_context_t*) [with Type = OT::UVSMapp"
	.ascii	"ing; LenType = OT::IntType<unsigned int, 4u>]\000"
	.section	.rodata._ZZN2OT9SanitizerINS_4_heaEE8sanitizeEP9hb_blob_tE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT9SanitizerINS_4_heaEE8sanitizeEP9hb_blob_tE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT9SanitizerINS_4_heaEE8sanitizeEP9hb_blob_tE19__PRETTY_FUNCTION__, 106
_ZZN2OT9SanitizerINS_4_heaEE8sanitizeEP9hb_blob_tE19__PRETTY_FUNCTION__:
	.ascii	"static hb_blob_t* OT::Sanitizer<Type>::sanitize(hb_"
	.ascii	"blob_t*) [with Type = OT::_hea; hb_blob_t = hb_blob"
	.ascii	"_t]\000"
	.section	.rodata._ZZN2OT4_hea8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT4_hea8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT4_hea8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, 52
_ZZN2OT4_hea8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::_hea::sanitize(OT::hb_sanitize_context_t*)"
	.ascii	"\000"
	.section	.rodata._ZZN2OT9SanitizerINS_4_mtxEE8sanitizeEP9hb_blob_tE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT9SanitizerINS_4_mtxEE8sanitizeEP9hb_blob_tE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT9SanitizerINS_4_mtxEE8sanitizeEP9hb_blob_tE19__PRETTY_FUNCTION__, 106
_ZZN2OT9SanitizerINS_4_mtxEE8sanitizeEP9hb_blob_tE19__PRETTY_FUNCTION__:
	.ascii	"static hb_blob_t* OT::Sanitizer<Type>::sanitize(hb_"
	.ascii	"blob_t*) [with Type = OT::_mtx; hb_blob_t = hb_blob"
	.ascii	"_t]\000"
	.section	.rodata._ZZN2OT4_mtx8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT4_mtx8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT4_mtx8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, 52
_ZZN2OT4_mtx8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::_mtx::sanitize(OT::hb_sanitize_context_t*)"
	.ascii	"\000"
	.section	.data.rel.ro.local._ZZL21_hb_ot_get_font_funcsvE9ot_ffuncs,"aw",%progbits
	.align	2
	.type	_ZZL21_hb_ot_get_font_funcsvE9ot_ffuncs, %object
	.size	_ZZL21_hb_ot_get_font_funcsvE9ot_ffuncs, 180
_ZZL21_hb_ot_get_font_funcsvE9ot_ffuncs:
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	0
	.space	24
	.word	1
	.word	_ZL15hb_ot_get_glyphP9hb_font_tPvjjPjS1_
	.word	_ZL25hb_ot_get_glyph_h_advanceP9hb_font_tPvjS1_
	.word	_ZL25hb_ot_get_glyph_v_advanceP9hb_font_tPvjS1_
	.word	_ZL24hb_ot_get_glyph_h_originP9hb_font_tPvjPiS2_S1_
	.word	_ZL24hb_ot_get_glyph_v_originP9hb_font_tPvjPiS2_S1_
	.word	_ZL25hb_ot_get_glyph_h_kerningP9hb_font_tPvjjS1_
	.word	_ZL25hb_ot_get_glyph_v_kerningP9hb_font_tPvjjS1_
	.word	_ZL23hb_ot_get_glyph_extentsP9hb_font_tPvjP18hb_glyph_extents_tS1_
	.word	_ZL29hb_ot_get_glyph_contour_pointP9hb_font_tPvjjPiS2_S1_
	.word	_ZL20hb_ot_get_glyph_nameP9hb_font_tPvjPcjS1_
	.word	_ZL25hb_ot_get_glyph_from_nameP9hb_font_tPvPKciPjS1_
	.space	88
	.hidden	_ZNK9hb_face_t15load_num_glyphsEv
	.hidden	_ZNK9hb_face_t9load_upemEv
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
