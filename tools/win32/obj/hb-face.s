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
	.file	"hb-face.cc"
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
	.section	.text._ZN10hb_mutex_t4initEv,"axG",%progbits,_ZN10hb_mutex_t4initEv,comdat
	.align	2
	.weak	_ZN10hb_mutex_t4initEv
	.thumb
	.thumb_func
	.type	_ZN10hb_mutex_t4initEv, %function
_ZN10hb_mutex_t4initEv:
	.fnstart
.LFB59:
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
	.size	_ZN10hb_mutex_t4initEv, .-_ZN10hb_mutex_t4initEv
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
	.section	.text._ZN10hb_mutex_t6finishEv,"axG",%progbits,_ZN10hb_mutex_t6finishEv,comdat
	.align	2
	.weak	_ZN10hb_mutex_t6finishEv
	.thumb
	.thumb_func
	.type	_ZN10hb_mutex_t6finishEv, %function
_ZN10hb_mutex_t6finishEv:
	.fnstart
.LFB62:
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
	.size	_ZN10hb_mutex_t6finishEv, .-_ZN10hb_mutex_t6finishEv
	.section	.text._ZN20hb_reference_count_t4initEi,"axG",%progbits,_ZN20hb_reference_count_t4initEi,comdat
	.align	2
	.weak	_ZN20hb_reference_count_t4initEi
	.thumb
	.thumb_func
	.type	_ZN20hb_reference_count_t4initEi, %function
_ZN20hb_reference_count_t4initEi:
	.fnstart
.LFB63:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN20hb_reference_count_t4initEi, .-_ZN20hb_reference_count_t4initEi
	.section	.text._ZN20hb_reference_count_t3incEv,"axG",%progbits,_ZN20hb_reference_count_t3incEv,comdat
	.align	2
	.weak	_ZN20hb_reference_count_t3incEv
	.thumb
	.thumb_func
	.type	_ZN20hb_reference_count_t3incEv, %function
_ZN20hb_reference_count_t3incEv:
	.fnstart
.LFB64:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	subs	r3, r3, #1
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN20hb_reference_count_t3incEv, .-_ZN20hb_reference_count_t3incEv
	.section	.text._ZN20hb_reference_count_t3decEv,"axG",%progbits,_ZN20hb_reference_count_t3decEv,comdat
	.align	2
	.weak	_ZN20hb_reference_count_t3decEv
	.thumb
	.thumb_func
	.type	_ZN20hb_reference_count_t3decEv, %function
_ZN20hb_reference_count_t3decEv:
	.fnstart
.LFB65:
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
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r3, r3, #1
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN20hb_reference_count_t3decEv, .-_ZN20hb_reference_count_t3decEv
	.section	.text._ZN20hb_reference_count_t6finishEv,"axG",%progbits,_ZN20hb_reference_count_t6finishEv,comdat
	.align	2
	.weak	_ZN20hb_reference_count_t6finishEv
	.thumb
	.thumb_func
	.type	_ZN20hb_reference_count_t6finishEv, %function
_ZN20hb_reference_count_t6finishEv:
	.fnstart
.LFB66:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	mov	r2, #-1
	str	r2, [r3]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN20hb_reference_count_t6finishEv, .-_ZN20hb_reference_count_t6finishEv
	.section	.text._ZNK20hb_reference_count_t10is_invalidEv,"axG",%progbits,_ZNK20hb_reference_count_t10is_invalidEv,comdat
	.align	2
	.weak	_ZNK20hb_reference_count_t10is_invalidEv
	.thumb
	.thumb_func
	.type	_ZNK20hb_reference_count_t10is_invalidEv, %function
_ZNK20hb_reference_count_t10is_invalidEv:
	.fnstart
.LFB67:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #-1
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
	.size	_ZNK20hb_reference_count_t10is_invalidEv, .-_ZNK20hb_reference_count_t10is_invalidEv
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
	beq	.L18
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #4]
	mov	r0, r2
	blx	r3
.L18:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN20hb_user_data_array_t19hb_user_data_item_t6finishEv, .-_ZN20hb_user_data_array_t19hb_user_data_item_t6finishEv
	.section	.text._ZN20hb_user_data_array_t4initEv,"axG",%progbits,_ZN20hb_user_data_array_t4initEv,comdat
	.align	2
	.weak	_ZN20hb_user_data_array_t4initEv
	.thumb
	.thumb_func
	.type	_ZN20hb_user_data_array_t4initEv, %function
_ZN20hb_user_data_array_t4initEv:
	.fnstart
.LFB71:
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
	bl	_ZN10hb_mutex_t4initEv(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4initEv(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN20hb_user_data_array_t4initEv, .-_ZN20hb_user_data_array_t4initEv
	.section	.text._ZN20hb_user_data_array_t6finishEv,"axG",%progbits,_ZN20hb_user_data_array_t6finishEv,comdat
	.align	2
	.weak	_ZN20hb_user_data_array_t6finishEv
	.thumb
	.thumb_func
	.type	_ZN20hb_user_data_array_t6finishEv, %function
_ZN20hb_user_data_array_t6finishEv:
	.fnstart
.LFB72:
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
	adds	r2, r3, #4
	ldr	r3, [r7, #4]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE6finishERS2_(PLT)
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN10hb_mutex_t6finishEv(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN20hb_user_data_array_t6finishEv, .-_ZN20hb_user_data_array_t6finishEv
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
	bne	.L23
	bl	hb_blob_get_empty(PLT)
	mov	r3, r0
	b	.L24
.L23:
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
	bne	.L25
	bl	hb_blob_get_empty(PLT)
	mov	r3, r0
	b	.L24
.L25:
	ldr	r3, [r7, #12]
.L24:
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
	bne	.L27
	ldr	r0, [r7, #4]
	bl	_ZNK9hb_face_t9load_upemEv(PLT)
.L27:
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
	bne	.L30
	ldr	r0, [r7, #4]
	bl	_ZNK9hb_face_t15load_num_glyphsEv(PLT)
.L30:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #68]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK9hb_face_t14get_num_glyphsEv, .-_ZNK9hb_face_t14get_num_glyphsEv
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
.LFB232:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, .L34
.LPIC0:
	add	r3, pc
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L35:
	.align	2
.L34:
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
.LFB236:
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
.LFB237:
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
	bls	.L38
	ldr	r3, .L39
.LPIC1:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L39+4
.LPIC2:
	add	r3, pc
	mov	r1, r3
	movs	r2, #197
	ldr	r3, .L39+8
.LPIC3:
	add	r3, pc
	bl	__assert_fail(PLT)
.L38:
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
	ldr	r4, .L39+12
.LPIC4:
	add	r4, pc
	str	r4, [sp, #8]
	str	r0, [sp, #12]
	str	r1, [sp, #16]
	str	r2, [sp, #20]
	ldr	r2, .L39+16
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
.L40:
	.align	2
.L39:
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
.LFB238:
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
	ldr	r4, .L42
.LPIC6:
	add	r4, pc
	str	r4, [sp, #8]
	str	r0, [sp, #12]
	str	r1, [sp, #16]
	str	r2, [sp, #20]
	ldr	r2, .L42+4
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
.L43:
	.align	2
.L42:
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
.LFB239:
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
	bhi	.L45
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcc	.L45
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	mov	r2, r3
	ldr	r3, [r7, #20]
	subs	r3, r2, r3
	mov	r2, r3
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcc	.L45
	movs	r3, #1
	b	.L46
.L45:
	movs	r3, #0
.L46:
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
	beq	.L47
	ldr	r3, .L50
.LPIC8:
	add	r3, pc
	b	.L48
.L47:
	ldr	r3, .L50+4
.LPIC9:
	add	r3, pc
.L48:
	str	r4, [sp]
	movs	r4, #0
	str	r4, [sp, #4]
	ldr	r4, .L50+8
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
	ldr	r3, .L50+12
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
.L51:
	.align	2
.L50:
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
.LFB240:
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
	beq	.L53
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #20]
	bl	_ZNK2OT21hb_sanitize_context_t11check_rangeEPKvj(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L53
	movs	r3, #1
	b	.L54
.L53:
	movs	r3, #0
.L54:
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
	beq	.L55
	ldr	r3, .L60
.LPIC12:
	add	r3, pc
	b	.L56
.L55:
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L57
	ldr	r3, .L60+4
.LPIC13:
	add	r3, pc
	b	.L56
.L57:
	ldr	r3, .L60+8
.LPIC14:
	add	r3, pc
.L56:
	str	r4, [sp]
	movs	r4, #0
	str	r4, [sp, #4]
	ldr	r4, .L60+12
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
	ldr	r3, .L60+16
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
.L61:
	.align	2
.L60:
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
.LFB242:
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
	bls	.L63
	movs	r3, #0
	b	.L64
.L63:
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
	beq	.L65
	ldr	r3, .L67
.LPIC17:
	add	r3, pc
	b	.L66
.L65:
	ldr	r3, .L67+4
.LPIC18:
	add	r3, pc
.L66:
	str	r5, [sp]
	movs	r5, #0
	str	r5, [sp, #4]
	ldr	r5, .L67+8
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
	ldr	r3, .L67+12
.LPIC20:
	add	r3, pc
	mov	r0, r3
	ldr	r1, [r7, #20]
	movs	r2, #0
	movs	r3, #1
	bl	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z(PLT)
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
.L64:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L68:
	.align	2
.L67:
	.word	.LC10-(.LPIC17+4)
	.word	.LC11-(.LPIC18+4)
	.word	.LC12-(.LPIC19+4)
	.word	.LC0-(.LPIC20+4)
	.cantunwind
	.fnend
	.size	_ZN2OT21hb_sanitize_context_t8may_editEPKvj, .-_ZN2OT21hb_sanitize_context_t8may_editEPKvj
	.section	.rodata
	.align	2
.LC13:
	.ascii	"\000"
	.section	.text._ZN2OT12FixedVersion8sanitizeEPNS_21hb_sanitize_context_tE,"axG",%progbits,_ZN2OT12FixedVersion8sanitizeEPNS_21hb_sanitize_context_tE,comdat
	.align	2
	.weak	_ZN2OT12FixedVersion8sanitizeEPNS_21hb_sanitize_context_tE
	.thumb
	.thumb_func
	.type	_ZN2OT12FixedVersion8sanitizeEPNS_21hb_sanitize_context_tE, %function
_ZN2OT12FixedVersion8sanitizeEPNS_21hb_sanitize_context_tE:
	.fnstart
.LFB296:
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
	ldr	r1, .L71
.LPIC21:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L71+4
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
	bl	_ZNK2OT21hb_sanitize_context_t12check_structINS_12FixedVersionEEEbPKT_(PLT)
	mov	r3, r0
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	mov	r2, #724
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L72:
	.align	2
.L71:
	.word	_ZZN2OT12FixedVersion8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__-(.LPIC21+4)
	.word	.LC13-(.LPIC22+4)
	.fnend
	.size	_ZN2OT12FixedVersion8sanitizeEPNS_21hb_sanitize_context_tE, .-_ZN2OT12FixedVersion8sanitizeEPNS_21hb_sanitize_context_tE
	.section	.text._ZNK2OT11OffsetTable9get_tableEj,"axG",%progbits,_ZNK2OT11OffsetTable9get_tableEj,comdat
	.align	2
	.weak	_ZNK2OT11OffsetTable9get_tableEj
	.thumb
	.thumb_func
	.type	_ZNK2OT11OffsetTable9get_tableEj, %function
_ZNK2OT11OffsetTable9get_tableEj:
	.fnstart
.LFB333:
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
	adds	r3, r3, #4
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
	beq	.L74
	bl	_ZN2OTL4NullINS_11TableRecordEEERKT_v(PLT)
	mov	r3, r0
	b	.L75
.L74:
	ldr	r3, [r7]
	lsls	r3, r3, #4
	adds	r3, r3, #8
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #4
.L75:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT11OffsetTable9get_tableEj, .-_ZNK2OT11OffsetTable9get_tableEj
	.section	.text._ZNK2OT11OffsetTable16find_table_indexEjPj,"axG",%progbits,_ZNK2OT11OffsetTable16find_table_indexEjPj,comdat
	.align	2
	.weak	_ZNK2OT11OffsetTable16find_table_indexEjPj
	.thumb
	.thumb_func
	.type	_ZNK2OT11OffsetTable16find_table_indexEjPj, %function
_ZNK2OT11OffsetTable16find_table_indexEjPj:
	.fnstart
.LFB334:
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
	add	r3, r7, #20
	mov	r0, r3
	ldr	r1, [r7, #8]
	bl	_ZN2OT7IntTypeIjLj4EE3setEj(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L77
.L81:
	ldr	r3, [r7, #28]
	lsls	r3, r3, #4
	adds	r3, r3, #8
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	adds	r3, r3, #4
	add	r2, r7, #20
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK2OT7IntTypeIjLj4EEeqERKS1_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L78
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L79
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #28]
	str	r2, [r3]
.L79:
	movs	r3, #1
	b	.L83
.L78:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L77:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bcc	.L81
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L82
	ldr	r3, [r7, #4]
	movw	r2, #65535
	str	r2, [r3]
.L82:
	movs	r3, #0
.L83:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT11OffsetTable16find_table_indexEjPj, .-_ZNK2OT11OffsetTable16find_table_indexEjPj
	.section	.text._ZNK2OT11OffsetTable16get_table_by_tagEj,"axG",%progbits,_ZNK2OT11OffsetTable16get_table_by_tagEj,comdat
	.align	2
	.weak	_ZNK2OT11OffsetTable16get_table_by_tagEj
	.thumb
	.thumb_func
	.type	_ZNK2OT11OffsetTable16get_table_by_tagEj, %function
_ZNK2OT11OffsetTable16get_table_by_tagEj:
	.fnstart
.LFB335:
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
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	mov	r2, r3
	bl	_ZNK2OT11OffsetTable16find_table_indexEjPj(PLT)
	ldr	r3, [r7, #12]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZNK2OT11OffsetTable9get_tableEj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT11OffsetTable16get_table_by_tagEj, .-_ZNK2OT11OffsetTable16get_table_by_tagEj
	.section	.text._ZN2OT11OffsetTable8sanitizeEPNS_21hb_sanitize_context_tE,"axG",%progbits,_ZN2OT11OffsetTable8sanitizeEPNS_21hb_sanitize_context_tE,comdat
	.align	2
	.weak	_ZN2OT11OffsetTable8sanitizeEPNS_21hb_sanitize_context_tE
	.thumb
	.thumb_func
	.type	_ZN2OT11OffsetTable8sanitizeEPNS_21hb_sanitize_context_tE, %function
_ZN2OT11OffsetTable8sanitizeEPNS_21hb_sanitize_context_tE:
	.fnstart
.LFB336:
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
	ldr	r1, .L90
.LPIC23:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L90+4
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
	bl	_ZNK2OT21hb_sanitize_context_t12check_structINS_11OffsetTableEEEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L87
	ldr	r3, [r7, #4]
	add	r4, r3, #12
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	ldr	r0, [r7]
	mov	r1, r4
	movs	r2, #16
	bl	_ZNK2OT21hb_sanitize_context_t11check_arrayEPKvjj(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L87
	movs	r3, #1
	b	.L88
.L87:
	movs	r3, #0
.L88:
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	movs	r2, #107
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L91:
	.align	2
.L90:
	.word	_ZZN2OT11OffsetTable8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__-(.LPIC23+4)
	.word	.LC13-(.LPIC24+4)
	.fnend
	.size	_ZN2OT11OffsetTable8sanitizeEPNS_21hb_sanitize_context_tE, .-_ZN2OT11OffsetTable8sanitizeEPNS_21hb_sanitize_context_tE
	.section	.text._ZNK2OT17TTCHeaderVersion18get_faceEj,"axG",%progbits,_ZNK2OT17TTCHeaderVersion18get_faceEj,comdat
	.align	2
	.weak	_ZNK2OT17TTCHeaderVersion18get_faceEj
	.thumb
	.thumb_func
	.type	_ZNK2OT17TTCHeaderVersion18get_faceEj, %function
_ZNK2OT17TTCHeaderVersion18get_faceEj:
	.fnstart
.LFB340:
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
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	adds	r3, r3, #8
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZNK2OT7ArrayOfINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEES4_EixEj(PLT)
	mov	r3, r0
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OTplIPKNS_17TTCHeaderVersion1ENS_7IntTypeIjLj4EEENS_11OffsetTableEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT17TTCHeaderVersion18get_faceEj, .-_ZNK2OT17TTCHeaderVersion18get_faceEj
	.section	.text._ZN2OT17TTCHeaderVersion18sanitizeEPNS_21hb_sanitize_context_tE,"axG",%progbits,_ZN2OT17TTCHeaderVersion18sanitizeEPNS_21hb_sanitize_context_tE,comdat
	.align	2
	.weak	_ZN2OT17TTCHeaderVersion18sanitizeEPNS_21hb_sanitize_context_tE
	.thumb
	.thumb_func
	.type	_ZN2OT17TTCHeaderVersion18sanitizeEPNS_21hb_sanitize_context_tE, %function
_ZN2OT17TTCHeaderVersion18sanitizeEPNS_21hb_sanitize_context_tE:
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
	ldr	r1, .L96
.LPIC25:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L96+4
.LPIC26:
	add	r1, pc
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r4
	mov	r2, r3
	ldr	r3, [r7, #4]
	bl	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #8
	mov	r0, r3
	ldr	r1, [r7]
	ldr	r2, [r7, #4]
	bl	_ZN2OT7ArrayOfINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEES4_E8sanitizeEPNS_21hb_sanitize_context_tEPv(PLT)
	mov	r3, r0
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	movs	r2, #135
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L97:
	.align	2
.L96:
	.word	_ZZN2OT17TTCHeaderVersion18sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__-(.LPIC25+4)
	.word	.LC13-(.LPIC26+4)
	.fnend
	.size	_ZN2OT17TTCHeaderVersion18sanitizeEPNS_21hb_sanitize_context_tE, .-_ZN2OT17TTCHeaderVersion18sanitizeEPNS_21hb_sanitize_context_tE
	.section	.text._ZNK2OT9TTCHeader8get_faceEj,"axG",%progbits,_ZNK2OT9TTCHeader8get_faceEj,comdat
	.align	2
	.weak	_ZNK2OT9TTCHeader8get_faceEj
	.thumb
	.thumb_func
	.type	_ZNK2OT9TTCHeader8get_faceEj, %function
_ZNK2OT9TTCHeader8get_faceEj:
	.fnstart
.LFB345:
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
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	subs	r3, r3, #1
	cmp	r3, #1
	bhi	.L99
	ldr	r3, [r7, #4]
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZNK2OT17TTCHeaderVersion18get_faceEj(PLT)
	mov	r3, r0
	b	.L101
.L99:
	bl	_ZN2OTL4NullINS_11OffsetTableEEERKT_v(PLT)
	mov	r3, r0
.L101:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT9TTCHeader8get_faceEj, .-_ZNK2OT9TTCHeader8get_faceEj
	.section	.text._ZN2OT9TTCHeader8sanitizeEPNS_21hb_sanitize_context_tE,"axG",%progbits,_ZN2OT9TTCHeader8sanitizeEPNS_21hb_sanitize_context_tE,comdat
	.align	2
	.weak	_ZN2OT9TTCHeader8sanitizeEPNS_21hb_sanitize_context_tE
	.thumb
	.thumb_func
	.type	_ZN2OT9TTCHeader8sanitizeEPNS_21hb_sanitize_context_tE, %function
_ZN2OT9TTCHeader8sanitizeEPNS_21hb_sanitize_context_tE:
	.fnstart
.LFB346:
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
	ldr	r1, .L108
.LPIC27:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L108+4
.LPIC28:
	add	r1, pc
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r4
	mov	r2, r3
	ldr	r3, [r7, #4]
	bl	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN2OT12FixedVersion8sanitizeEPNS_21hb_sanitize_context_tE(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L103
	add	r3, r7, #12
	mov	r0, r3
	movs	r1, #0
	movs	r2, #174
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L107
.L103:
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	subs	r3, r3, #1
	cmp	r3, #1
	bhi	.L105
	ldr	r3, [r7, #4]
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN2OT17TTCHeaderVersion18sanitizeEPNS_21hb_sanitize_context_tE(PLT)
	mov	r3, r0
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	movs	r2, #177
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L107
.L105:
	add	r3, r7, #12
	mov	r0, r3
	movs	r1, #1
	movs	r2, #178
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
.L107:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L109:
	.align	2
.L108:
	.word	_ZZN2OT9TTCHeader8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__-(.LPIC27+4)
	.word	.LC13-(.LPIC28+4)
	.fnend
	.size	_ZN2OT9TTCHeader8sanitizeEPNS_21hb_sanitize_context_tE, .-_ZN2OT9TTCHeader8sanitizeEPNS_21hb_sanitize_context_tE
	.section	.text._ZNK2OT16OpenTypeFontFile8get_faceEj,"axG",%progbits,_ZNK2OT16OpenTypeFontFile8get_faceEj,comdat
	.align	2
	.weak	_ZNK2OT16OpenTypeFontFile8get_faceEj
	.thumb
	.thumb_func
	.type	_ZNK2OT16OpenTypeFontFile8get_faceEj, %function
_ZNK2OT16OpenTypeFontFile8get_faceEj:
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
	mov	r0, r3
	bl	_ZNK2OT7IntTypeIjLj4EEcvjEv(PLT)
	mov	r3, r0
	movw	r2, #30053
	movt	r2, 29810
	cmp	r3, r2
	beq	.L112
	movw	r2, #30053
	movt	r2, 29810
	cmp	r3, r2
	bhi	.L113
	cmp	r3, #65536
	beq	.L112
	movw	r2, #21583
	movt	r2, 20308
	cmp	r3, r2
	beq	.L112
	b	.L111
.L113:
	movw	r2, #25446
	movt	r2, 29812
	cmp	r3, r2
	beq	.L114
	movw	r2, #28721
	movt	r2, 29817
	cmp	r3, r2
	bne	.L111
.L112:
	ldr	r3, [r7, #4]
	b	.L115
.L114:
	ldr	r3, [r7, #4]
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZNK2OT9TTCHeader8get_faceEj(PLT)
	mov	r3, r0
	b	.L115
.L111:
	bl	_ZN2OTL4NullINS_11OffsetTableEEERKT_v(PLT)
	mov	r3, r0
.L115:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT16OpenTypeFontFile8get_faceEj, .-_ZNK2OT16OpenTypeFontFile8get_faceEj
	.section	.text._ZN2OT16OpenTypeFontFile8sanitizeEPNS_21hb_sanitize_context_tE,"axG",%progbits,_ZN2OT16OpenTypeFontFile8sanitizeEPNS_21hb_sanitize_context_tE,comdat
	.align	2
	.weak	_ZN2OT16OpenTypeFontFile8sanitizeEPNS_21hb_sanitize_context_tE
	.thumb
	.thumb_func
	.type	_ZN2OT16OpenTypeFontFile8sanitizeEPNS_21hb_sanitize_context_tE, %function
_ZN2OT16OpenTypeFontFile8sanitizeEPNS_21hb_sanitize_context_tE:
	.fnstart
.LFB350:
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
	ldr	r1, .L124
.LPIC29:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L124+4
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
	bl	_ZN2OT7IntTypeIjLj4EE8sanitizeEPNS_21hb_sanitize_context_tE(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L117
	add	r3, r7, #12
	mov	r0, r3
	movs	r1, #0
	movs	r2, #238
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L123
.L117:
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZNK2OT7IntTypeIjLj4EEcvjEv(PLT)
	mov	r3, r0
	movw	r2, #30053
	movt	r2, 29810
	cmp	r3, r2
	beq	.L120
	movw	r2, #30053
	movt	r2, 29810
	cmp	r3, r2
	bhi	.L121
	cmp	r3, #65536
	beq	.L120
	movw	r2, #21583
	movt	r2, 20308
	cmp	r3, r2
	beq	.L120
	b	.L119
.L121:
	movw	r2, #25446
	movt	r2, 29812
	cmp	r3, r2
	beq	.L122
	movw	r2, #28721
	movt	r2, 29817
	cmp	r3, r2
	bne	.L119
.L120:
	ldr	r3, [r7, #4]
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN2OT11OffsetTable8sanitizeEPNS_21hb_sanitize_context_tE(PLT)
	mov	r3, r0
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	movs	r2, #243
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L123
.L122:
	ldr	r3, [r7, #4]
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN2OT9TTCHeader8sanitizeEPNS_21hb_sanitize_context_tE(PLT)
	mov	r3, r0
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	movs	r2, #244
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L123
.L119:
	add	r3, r7, #12
	mov	r0, r3
	movs	r1, #1
	movs	r2, #245
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
.L123:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L125:
	.align	2
.L124:
	.word	_ZZN2OT16OpenTypeFontFile8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__-(.LPIC29+4)
	.word	.LC13-(.LPIC30+4)
	.fnend
	.size	_ZN2OT16OpenTypeFontFile8sanitizeEPNS_21hb_sanitize_context_tE, .-_ZN2OT16OpenTypeFontFile8sanitizeEPNS_21hb_sanitize_context_tE
	.section	.text._ZNK2OT4head8get_upemEv,"axG",%progbits,_ZNK2OT4head8get_upemEv,comdat
	.align	2
	.weak	_ZNK2OT4head8get_upemEv
	.thumb
	.thumb_func
	.type	_ZNK2OT4head8get_upemEv, %function
_ZNK2OT4head8get_upemEv:
	.fnstart
.LFB352:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	adds	r3, r3, #18
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #15
	bls	.L127
	ldr	r3, [r7, #12]
	cmp	r3, #16384
	bhi	.L127
	ldr	r3, [r7, #12]
	b	.L128
.L127:
	mov	r3, #1000
.L128:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT4head8get_upemEv, .-_ZNK2OT4head8get_upemEv
	.section	.text._ZN2OT4head8sanitizeEPNS_21hb_sanitize_context_tE,"axG",%progbits,_ZN2OT4head8sanitizeEPNS_21hb_sanitize_context_tE,comdat
	.align	2
	.weak	_ZN2OT4head8sanitizeEPNS_21hb_sanitize_context_tE
	.thumb
	.thumb_func
	.type	_ZN2OT4head8sanitizeEPNS_21hb_sanitize_context_tE, %function
_ZN2OT4head8sanitizeEPNS_21hb_sanitize_context_tE:
	.fnstart
.LFB353:
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
	ldr	r1, .L134
.LPIC31:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L134+4
.LPIC32:
	add	r1, pc
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r4
	mov	r2, r3
	ldr	r3, [r7, #4]
	bl	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z(PLT)
	ldr	r0, [r7]
	ldr	r1, [r7, #4]
	bl	_ZNK2OT21hb_sanitize_context_t12check_structINS_4headEEEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L131
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	cmp	r3, #1
	bne	.L131
	movs	r3, #1
	b	.L132
.L131:
	movs	r3, #0
.L132:
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
.L135:
	.align	2
.L134:
	.word	_ZZN2OT4head8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__-(.LPIC31+4)
	.word	.LC13-(.LPIC32+4)
	.fnend
	.size	_ZN2OT4head8sanitizeEPNS_21hb_sanitize_context_tE, .-_ZN2OT4head8sanitizeEPNS_21hb_sanitize_context_tE
	.section	.text._ZNK2OT4maxp14get_num_glyphsEv,"axG",%progbits,_ZNK2OT4maxp14get_num_glyphsEv,comdat
	.align	2
	.weak	_ZNK2OT4maxp14get_num_glyphsEv
	.thumb
	.thumb_func
	.type	_ZNK2OT4maxp14get_num_glyphsEv, %function
_ZNK2OT4maxp14get_num_glyphsEv:
	.fnstart
.LFB355:
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
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT4maxp14get_num_glyphsEv, .-_ZNK2OT4maxp14get_num_glyphsEv
	.section	.text._ZN2OT4maxp8sanitizeEPNS_21hb_sanitize_context_tE,"axG",%progbits,_ZN2OT4maxp8sanitizeEPNS_21hb_sanitize_context_tE,comdat
	.align	2
	.weak	_ZN2OT4maxp8sanitizeEPNS_21hb_sanitize_context_tE
	.thumb
	.thumb_func
	.type	_ZN2OT4maxp8sanitizeEPNS_21hb_sanitize_context_tE, %function
_ZN2OT4maxp8sanitizeEPNS_21hb_sanitize_context_tE:
	.fnstart
.LFB356:
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
	ldr	r1, .L143
.LPIC33:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L143+4
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
	bl	_ZNK2OT21hb_sanitize_context_t12check_structINS_4maxpEEEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L139
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	cmp	r3, #1
	beq	.L140
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L139
	ldr	r3, [r7, #4]
	adds	r3, r3, #2
	mov	r0, r3
	bl	_ZNK2OT7IntTypeItLj2EEcvtEv(PLT)
	mov	r3, r0
	cmp	r3, #20480
	bne	.L139
.L140:
	movs	r3, #1
	b	.L141
.L139:
	movs	r3, #0
.L141:
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	movs	r2, #53
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L144:
	.align	2
.L143:
	.word	_ZZN2OT4maxp8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__-(.LPIC33+4)
	.word	.LC13-(.LPIC34+4)
	.fnend
	.size	_ZN2OT4maxp8sanitizeEPNS_21hb_sanitize_context_tE, .-_ZN2OT4maxp8sanitizeEPNS_21hb_sanitize_context_tE
	.hidden	_hb_face_nil
	.global	_hb_face_nil
	.section	.data._hb_face_nil,"aw",%progbits
	.align	2
	.type	_hb_face_nil, %object
	.size	_hb_face_nil, 80
_hb_face_nil:
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	0
	.space	24
	.word	1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1000
	.word	0
	.word	-1
	.word	0
	.section	.text.hb_face_create_for_tables,"ax",%progbits
	.align	2
	.global	hb_face_create_for_tables
	.thumb
	.thumb_func
	.type	hb_face_create_for_tables, %function
hb_face_create_for_tables:
	.fnstart
.LFB361:
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
	cmp	r3, #0
	beq	.L146
	bl	_Z16hb_object_createI9hb_face_tEPT_v(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L147
.L146:
	movs	r3, #1
	b	.L148
.L147:
	movs	r3, #0
.L148:
	cmp	r3, #0
	beq	.L149
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L150
	ldr	r3, [r7, #4]
	ldr	r0, [r7, #8]
	blx	r3
.L150:
	bl	hb_face_get_empty(PLT)
	mov	r3, r0
	b	.L151
.L149:
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #12]
	str	r2, [r3, #48]
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #8]
	str	r2, [r3, #52]
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #4]
	str	r2, [r3, #56]
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #64]
	ldr	r3, [r7, #20]
	mov	r2, #-1
	str	r2, [r3, #68]
	ldr	r3, [r7, #20]
.L151:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_face_create_for_tables, .-hb_face_create_for_tables
	.section	.text._ZL32_hb_face_for_data_closure_createP9hb_blob_tj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL32_hb_face_for_data_closure_createP9hb_blob_tj, %function
_ZL32_hb_face_for_data_closure_createP9hb_blob_tj:
	.fnstart
.LFB362:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r0, #8
	bl	malloc(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L153
	movs	r3, #0
	b	.L154
.L153:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
.L154:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZL32_hb_face_for_data_closure_createP9hb_blob_tj, .-_ZL32_hb_face_for_data_closure_createP9hb_blob_tj
	.section	.text._ZL33_hb_face_for_data_closure_destroyP26hb_face_for_data_closure_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL33_hb_face_for_data_closure_destroyP26hb_face_for_data_closure_t, %function
_ZL33_hb_face_for_data_closure_destroyP26hb_face_for_data_closure_t:
	.fnstart
.LFB363:
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
	ldr	r3, [r3]
	mov	r0, r3
	bl	hb_blob_destroy(PLT)
	ldr	r0, [r7, #4]
	bl	free(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL33_hb_face_for_data_closure_destroyP26hb_face_for_data_closure_t, .-_ZL33_hb_face_for_data_closure_destroyP26hb_face_for_data_closure_t
	.section	.text._ZL33_hb_face_for_data_reference_tableP9hb_face_tjPv,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL33_hb_face_for_data_reference_tableP9hb_face_tjPv, %function
_ZL33_hb_face_for_data_reference_tableP9hb_face_tjPv:
	.fnstart
.LFB364:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #40
	sub	sp, sp, #40
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #4]
	str	r3, [r7, #36]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L157
	ldr	r3, [r7, #36]
	ldr	r3, [r3]
	mov	r0, r3
	bl	hb_blob_reference(PLT)
	mov	r3, r0
	b	.L158
.L157:
	ldr	r3, [r7, #36]
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZN2OT9SanitizerINS_16OpenTypeFontFileEE13lock_instanceEP9hb_blob_t(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #32]
	mov	r1, r3
	bl	_ZNK2OT16OpenTypeFontFile8get_faceEj(PLT)
	mov	r3, r0
	str	r3, [r7, #28]
	ldr	r0, [r7, #28]
	ldr	r1, [r7, #8]
	bl	_ZNK2OT11OffsetTable16get_table_by_tagEj(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #36]
	ldr	r5, [r3]
	ldr	r3, [r7, #24]
	adds	r3, r3, #8
	mov	r0, r3
	bl	_ZNK2OT7IntTypeIjLj4EEcvjEv(PLT)
	mov	r4, r0
	ldr	r3, [r7, #24]
	adds	r3, r3, #12
	mov	r0, r3
	bl	_ZNK2OT7IntTypeIjLj4EEcvjEv(PLT)
	mov	r3, r0
	mov	r0, r5
	mov	r1, r4
	mov	r2, r3
	bl	hb_blob_create_sub_blob(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
.L158:
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.fnend
	.size	_ZL33_hb_face_for_data_reference_tableP9hb_face_tjPv, .-_ZL33_hb_face_for_data_reference_tableP9hb_face_tjPv
	.section	.text.hb_face_create,"ax",%progbits
	.align	2
	.global	hb_face_create
	.thumb
	.thumb_func
	.type	hb_face_create, %function
hb_face_create:
	.fnstart
.LFB365:
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
	cmp	r3, #0
	beq	.L160
	ldr	r0, [r7, #4]
	bl	hb_blob_get_length(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L161
.L160:
	movs	r3, #1
	b	.L162
.L161:
	movs	r3, #0
.L162:
	cmp	r3, #0
	beq	.L163
	bl	hb_face_get_empty(PLT)
	mov	r3, r0
	b	.L164
.L163:
	ldr	r0, [r7, #4]
	bl	hb_blob_reference(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_ZN2OT9SanitizerINS_16OpenTypeFontFileEE8sanitizeEP9hb_blob_t(PLT)
	mov	r3, r0
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZL32_hb_face_for_data_closure_createP9hb_blob_tj(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L165
	bl	hb_face_get_empty(PLT)
	mov	r3, r0
	b	.L164
.L165:
	ldr	r3, .L166
.LPIC35:
	add	r3, pc
	mov	r0, r3
	ldr	r1, [r7, #12]
	ldr	r3, .L166+4
.LPIC36:
	add	r3, pc
	mov	r2, r3
	bl	hb_face_create_for_tables(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r0, [r7, #8]
	ldr	r1, [r7]
	bl	hb_face_set_index(PLT)
	ldr	r3, [r7, #8]
.L164:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L167:
	.align	2
.L166:
	.word	_ZL33_hb_face_for_data_reference_tableP9hb_face_tjPv-(.LPIC35+4)
	.word	_ZL33_hb_face_for_data_closure_destroyP26hb_face_for_data_closure_t-(.LPIC36+4)
	.fnend
	.size	hb_face_create, .-hb_face_create
	.section	.text.hb_face_get_empty,"ax",%progbits
	.align	2
	.global	hb_face_get_empty
	.thumb
	.thumb_func
	.type	hb_face_get_empty, %function
hb_face_get_empty:
	.fnstart
.LFB366:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L170
.LPIC37:
	add	r3, pc
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L171:
	.align	2
.L170:
	.word	_hb_face_nil-(.LPIC37+4)
	.cantunwind
	.fnend
	.size	hb_face_get_empty, .-hb_face_get_empty
	.section	.text.hb_face_reference,"ax",%progbits
	.align	2
	.global	hb_face_reference
	.thumb
	.thumb_func
	.type	hb_face_reference, %function
hb_face_reference:
	.fnstart
.LFB367:
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
	bl	_Z19hb_object_referenceI9hb_face_tEPT_S2_(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_face_reference, .-hb_face_reference
	.section	.text.hb_face_destroy,"ax",%progbits
	.align	2
	.global	hb_face_destroy
	.thumb
	.thumb_func
	.type	hb_face_destroy, %function
hb_face_destroy:
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
	ldr	r0, [r7, #4]
	bl	_Z17hb_object_destroyI9hb_face_tEbPT_(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L175
	b	.L174
.L175:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #76]
	str	r3, [r7, #12]
	b	.L177
.L178:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	mov	r0, r3
	bl	hb_shape_plan_destroy(PLT)
	ldr	r0, [r7, #12]
	bl	free(PLT)
	ldr	r3, [r7, #8]
	str	r3, [r7, #12]
.L177:
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L178
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #72]
	cmp	r3, #0
	beq	.L179
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #72]
	cmp	r3, #-1
	beq	.L179
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #72]
	cmp	r3, #1
	beq	.L179
	ldr	r3, [r7, #4]
	adds	r3, r3, #72
	ldr	r3, [r3]
	mov	r0, r3
	bl	_hb_ot_shaper_face_data_destroy(PLT)
.L179:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	cmp	r3, #0
	beq	.L180
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #52]
	mov	r0, r2
	blx	r3
.L180:
	ldr	r0, [r7, #4]
	bl	free(PLT)
.L174:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_face_destroy, .-hb_face_destroy
	.section	.text.hb_face_set_user_data,"ax",%progbits
	.align	2
	.global	hb_face_set_user_data
	.thumb
	.thumb_func
	.type	hb_face_set_user_data, %function
hb_face_set_user_data:
	.fnstart
.LFB369:
	@ args = 4, pretend = 0, frame = 16
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
	ldr	r3, [r7, #24]
	str	r3, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	_Z23hb_object_set_user_dataI9hb_face_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_face_set_user_data, .-hb_face_set_user_data
	.section	.text.hb_face_get_user_data,"ax",%progbits
	.align	2
	.global	hb_face_get_user_data
	.thumb
	.thumb_func
	.type	hb_face_get_user_data, %function
hb_face_get_user_data:
	.fnstart
.LFB370:
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
	bl	_Z23hb_object_get_user_dataI9hb_face_tEPvPT_P18hb_user_data_key_t(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_face_get_user_data, .-hb_face_get_user_data
	.section	.text.hb_face_make_immutable,"ax",%progbits
	.align	2
	.global	hb_face_make_immutable
	.thumb
	.thumb_func
	.type	hb_face_make_immutable, %function
hb_face_make_immutable:
	.fnstart
.LFB371:
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
	bl	_Z18hb_object_is_inertI9hb_face_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L186
	b	.L185
.L186:
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #44]
.L185:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_face_make_immutable, .-hb_face_make_immutable
	.section	.text.hb_face_is_immutable,"ax",%progbits
	.align	2
	.global	hb_face_is_immutable
	.thumb
	.thumb_func
	.type	hb_face_is_immutable, %function
hb_face_is_immutable:
	.fnstart
.LFB372:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	hb_face_is_immutable, .-hb_face_is_immutable
	.section	.text.hb_face_reference_table,"ax",%progbits
	.align	2
	.global	hb_face_reference_table
	.thumb
	.thumb_func
	.type	hb_face_reference_table, %function
hb_face_reference_table:
	.fnstart
.LFB373:
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
	bl	_ZNK9hb_face_t15reference_tableEj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_face_reference_table, .-hb_face_reference_table
	.section	.text.hb_face_reference_blob,"ax",%progbits
	.align	2
	.global	hb_face_reference_blob
	.thumb
	.thumb_func
	.type	hb_face_reference_blob, %function
hb_face_reference_blob:
	.fnstart
.LFB374:
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
	movs	r1, #0
	bl	_ZNK9hb_face_t15reference_tableEj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_face_reference_blob, .-hb_face_reference_blob
	.section	.text.hb_face_set_index,"ax",%progbits
	.align	2
	.global	hb_face_set_index
	.thumb
	.thumb_func
	.type	hb_face_set_index, %function
hb_face_set_index:
	.fnstart
.LFB375:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L195
	b	.L194
.L195:
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #60]
.L194:
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	hb_face_set_index, .-hb_face_set_index
	.section	.text.hb_face_get_index,"ax",%progbits
	.align	2
	.global	hb_face_get_index
	.thumb
	.thumb_func
	.type	hb_face_get_index, %function
hb_face_get_index:
	.fnstart
.LFB376:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	hb_face_get_index, .-hb_face_get_index
	.section	.text.hb_face_set_upem,"ax",%progbits
	.align	2
	.global	hb_face_set_upem
	.thumb
	.thumb_func
	.type	hb_face_set_upem, %function
hb_face_set_upem:
	.fnstart
.LFB377:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L200
	b	.L199
.L200:
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #64]
.L199:
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	hb_face_set_upem, .-hb_face_set_upem
	.section	.text.hb_face_get_upem,"ax",%progbits
	.align	2
	.global	hb_face_get_upem
	.thumb
	.thumb_func
	.type	hb_face_get_upem, %function
hb_face_get_upem:
	.fnstart
.LFB378:
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
	bl	_ZNK9hb_face_t8get_upemEv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_face_get_upem, .-hb_face_get_upem
	.section	.text._ZNK9hb_face_t9load_upemEv,"ax",%progbits
	.align	2
	.global	_ZNK9hb_face_t9load_upemEv
	.hidden	_ZNK9hb_face_t9load_upemEv
	.thumb
	.thumb_func
	.type	_ZNK9hb_face_t9load_upemEv, %function
_ZNK9hb_face_t9load_upemEv:
	.fnstart
.LFB379:
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
	movw	r1, #24932
	movt	r1, 26725
	bl	_ZNK9hb_face_t15reference_tableEj(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_ZN2OT9SanitizerINS_4headEE8sanitizeEP9hb_blob_t(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r0, [r7, #12]
	bl	_ZN2OT9SanitizerINS_4headEE13lock_instanceEP9hb_blob_t(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r0, [r7, #8]
	bl	_ZNK2OT4head8get_upemEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #64]
	ldr	r0, [r7, #12]
	bl	hb_blob_destroy(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK9hb_face_t9load_upemEv, .-_ZNK9hb_face_t9load_upemEv
	.section	.text.hb_face_set_glyph_count,"ax",%progbits
	.align	2
	.global	hb_face_set_glyph_count
	.thumb
	.thumb_func
	.type	hb_face_set_glyph_count, %function
hb_face_set_glyph_count:
	.fnstart
.LFB380:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L206
	b	.L205
.L206:
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #68]
.L205:
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	hb_face_set_glyph_count, .-hb_face_set_glyph_count
	.section	.text.hb_face_get_glyph_count,"ax",%progbits
	.align	2
	.global	hb_face_get_glyph_count
	.thumb
	.thumb_func
	.type	hb_face_get_glyph_count, %function
hb_face_get_glyph_count:
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
	ldr	r0, [r7, #4]
	bl	_ZNK9hb_face_t14get_num_glyphsEv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_face_get_glyph_count, .-hb_face_get_glyph_count
	.section	.text._ZNK9hb_face_t15load_num_glyphsEv,"ax",%progbits
	.align	2
	.global	_ZNK9hb_face_t15load_num_glyphsEv
	.hidden	_ZNK9hb_face_t15load_num_glyphsEv
	.thumb
	.thumb_func
	.type	_ZNK9hb_face_t15load_num_glyphsEv, %function
_ZNK9hb_face_t15load_num_glyphsEv:
	.fnstart
.LFB382:
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
	movw	r1, #30832
	movt	r1, 28001
	bl	_ZNK9hb_face_t15reference_tableEj(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_ZN2OT9SanitizerINS_4maxpEE8sanitizeEP9hb_blob_t(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r0, [r7, #12]
	bl	_ZN2OT9SanitizerINS_4maxpEE13lock_instanceEP9hb_blob_t(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r0, [r7, #8]
	bl	_ZNK2OT4maxp14get_num_glyphsEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #68]
	ldr	r0, [r7, #12]
	bl	hb_blob_destroy(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK9hb_face_t15load_num_glyphsEv, .-_ZNK9hb_face_t15load_num_glyphsEv
	.section	.text._ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4initEv,"axG",%progbits,_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4initEv,comdat
	.align	2
	.weak	_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4initEv
	.thumb
	.thumb_func
	.type	_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4initEv, %function
_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4initEv:
	.fnstart
.LFB385:
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
	bl	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4initEv(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4initEv, .-_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4initEv
	.section	.text._ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE6finishERS2_,"axG",%progbits,_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE6finishERS2_,comdat
	.align	2
	.weak	_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE6finishERS2_
	.thumb
	.thumb_func
	.type	_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE6finishERS2_, %function
_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE6finishERS2_:
	.fnstart
.LFB386:
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
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L213
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE6finishEv(PLT)
	b	.L212
.L213:
	ldr	r0, [r7]
	bl	_ZN10hb_mutex_t4lockEv(PLT)
	b	.L215
.L216:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	subs	r3, r3, #1
	mov	r0, r2
	mov	r1, r3
	bl	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EEixEj(PLT)
	mov	r2, r0
	add	r3, r7, #12
	ldmia	r2, {r0, r1, r2}
	stmia	r3, {r0, r1, r2}
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE3popEv(PLT)
	ldr	r0, [r7]
	bl	_ZN10hb_mutex_t6unlockEv(PLT)
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN20hb_user_data_array_t19hb_user_data_item_t6finishEv(PLT)
	ldr	r0, [r7]
	bl	_ZN10hb_mutex_t4lockEv(PLT)
.L215:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L216
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE6finishEv(PLT)
	ldr	r0, [r7]
	bl	_ZN10hb_mutex_t6unlockEv(PLT)
.L212:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE6finishERS2_, .-_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE6finishERS2_
	.section	.text._ZN15hb_auto_trace_tILi0EbEC2EPjPKcPKvS3_S3_z,"axG",%progbits,_ZN15hb_auto_trace_tILi0EbEC5EPjPKcPKvS3_S3_z,comdat
	.align	2
	.weak	_ZN15hb_auto_trace_tILi0EbEC2EPjPKcPKvS3_S3_z
	.thumb
	.thumb_func
	.type	_ZN15hb_auto_trace_tILi0EbEC2EPjPKcPKvS3_S3_z, %function
_ZN15hb_auto_trace_tILi0EbEC2EPjPKcPKvS3_S3_z:
	.fnstart
.LFB394:
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
.LFB397:
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
.LFB400:
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
.LFB401:
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
.LFB402:
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
	.section	.text._ZNK2OT21hb_sanitize_context_t12check_structINS_12FixedVersionEEEbPKT_,"axG",%progbits,_ZNK2OT21hb_sanitize_context_t12check_structINS_12FixedVersionEEEbPKT_,comdat
	.align	2
	.weak	_ZNK2OT21hb_sanitize_context_t12check_structINS_12FixedVersionEEEbPKT_
	.thumb
	.thumb_func
	.type	_ZNK2OT21hb_sanitize_context_t12check_structINS_12FixedVersionEEEbPKT_, %function
_ZNK2OT21hb_sanitize_context_t12check_structINS_12FixedVersionEEEbPKT_:
	.fnstart
.LFB403:
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
	.size	_ZNK2OT21hb_sanitize_context_t12check_structINS_12FixedVersionEEEbPKT_, .-_ZNK2OT21hb_sanitize_context_t12check_structINS_12FixedVersionEEEbPKT_
	.section	.text._ZN2OTL4NullINS_11TableRecordEEERKT_v,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL4NullINS_11TableRecordEEERKT_v, %function
_ZN2OTL4NullINS_11TableRecordEEERKT_v:
	.fnstart
.LFB405:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r3, .L231
.LPIC38:
	add	r3, pc
	mov	r0, r3
	bl	_ZN2OTL5CastPINS_11TableRecordEPKvEEPT_PT0_(PLT)
	mov	r3, r0
	mov	r0, r3
	pop	{r7, pc}
.L232:
	.align	2
.L231:
	.word	_ZN2OTL9_NullPoolE-(.LPIC38+4)
	.cantunwind
	.fnend
	.size	_ZN2OTL4NullINS_11TableRecordEEERKT_v, .-_ZN2OTL4NullINS_11TableRecordEEERKT_v
	.section	.text._ZNK2OT7IntTypeIjLj4EEeqERKS1_,"axG",%progbits,_ZNK2OT7IntTypeIjLj4EEeqERKS1_,comdat
	.align	2
	.weak	_ZNK2OT7IntTypeIjLj4EEeqERKS1_
	.thumb
	.thumb_func
	.type	_ZNK2OT7IntTypeIjLj4EEeqERKS1_, %function
_ZNK2OT7IntTypeIjLj4EEeqERKS1_:
	.fnstart
.LFB406:
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
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK2OT5BEIntIjLi4EEeqERKS1_(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT7IntTypeIjLj4EEeqERKS1_, .-_ZNK2OT7IntTypeIjLj4EEeqERKS1_
	.section	.text._ZNK2OT21hb_sanitize_context_t12check_structINS_11OffsetTableEEEbPKT_,"axG",%progbits,_ZNK2OT21hb_sanitize_context_t12check_structINS_11OffsetTableEEEbPKT_,comdat
	.align	2
	.weak	_ZNK2OT21hb_sanitize_context_t12check_structINS_11OffsetTableEEEbPKT_
	.thumb
	.thumb_func
	.type	_ZNK2OT21hb_sanitize_context_t12check_structINS_11OffsetTableEEEbPKT_, %function
_ZNK2OT21hb_sanitize_context_t12check_structINS_11OffsetTableEEEbPKT_:
	.fnstart
.LFB407:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	movs	r2, #12
	bl	_ZNK2OT21hb_sanitize_context_t11check_rangeEPKvj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZNK2OT21hb_sanitize_context_t12check_structINS_11OffsetTableEEEbPKT_, .-_ZNK2OT21hb_sanitize_context_t12check_structINS_11OffsetTableEEEbPKT_
	.section	.text._ZNK2OT7ArrayOfINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEES4_EixEj,"axG",%progbits,_ZNK2OT7ArrayOfINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEES4_EixEj,comdat
	.align	2
	.weak	_ZNK2OT7ArrayOfINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEES4_EixEj
	.thumb
	.thumb_func
	.type	_ZNK2OT7ArrayOfINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEES4_EixEj, %function
_ZNK2OT7ArrayOfINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEES4_EixEj:
	.fnstart
.LFB408:
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
	beq	.L238
	bl	_ZN2OTL4NullINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEEEERKT_v(PLT)
	mov	r3, r0
	b	.L239
.L238:
	ldr	r3, [r7]
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #4
.L239:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT7ArrayOfINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEES4_EixEj, .-_ZNK2OT7ArrayOfINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEES4_EixEj
	.section	.text._ZN2OTplIPKNS_17TTCHeaderVersion1ENS_7IntTypeIjLj4EEENS_11OffsetTableEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTplIPKNS_17TTCHeaderVersion1ENS_7IntTypeIjLj4EEENS_11OffsetTableEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE, %function
_ZN2OTplIPKNS_17TTCHeaderVersion1ENS_7IntTypeIjLj4EEENS_11OffsetTableEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE:
	.fnstart
.LFB409:
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
	bl	_ZNK2OT8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEclEPKv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OTplIPKNS_17TTCHeaderVersion1ENS_7IntTypeIjLj4EEENS_11OffsetTableEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE, .-_ZN2OTplIPKNS_17TTCHeaderVersion1ENS_7IntTypeIjLj4EEENS_11OffsetTableEEERKT1_RKT_RKNS_8OffsetToIS7_T0_EE
	.section	.text._ZN2OT7ArrayOfINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEES4_E8sanitizeEPNS_21hb_sanitize_context_tEPv,"axG",%progbits,_ZN2OT7ArrayOfINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEES4_E8sanitizeEPNS_21hb_sanitize_context_tEPv,comdat
	.align	2
	.weak	_ZN2OT7ArrayOfINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEES4_E8sanitizeEPNS_21hb_sanitize_context_tEPv
	.thumb
	.thumb_func
	.type	_ZN2OT7ArrayOfINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEES4_E8sanitizeEPNS_21hb_sanitize_context_tEPv, %function
_ZN2OT7ArrayOfINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEES4_E8sanitizeEPNS_21hb_sanitize_context_tEPv:
	.fnstart
.LFB410:
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
	ldr	r1, .L249
.LPIC39:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L249+4
.LPIC40:
	add	r1, pc
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r4
	mov	r2, r3
	ldr	r3, [r7, #12]
	bl	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z(PLT)
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_ZN2OT7ArrayOfINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEES4_E16sanitize_shallowEPNS_21hb_sanitize_context_tE(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L243
	add	r3, r7, #20
	mov	r0, r3
	movs	r1, #0
	movw	r2, #858
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L248
.L243:
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	_ZNK2OT7IntTypeIjLj4EEcvjEv(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L245
.L247:
	ldr	r3, [r7, #28]
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	adds	r3, r3, #4
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	_ZN2OT8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEPv(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L246
	add	r3, r7, #20
	mov	r0, r3
	movs	r1, #0
	movw	r2, #862
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L248
.L246:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L245:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bcc	.L247
	add	r3, r7, #20
	mov	r0, r3
	movs	r1, #1
	movw	r2, #863
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
.L248:
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L250:
	.align	2
.L249:
	.word	_ZZN2OT7ArrayOfINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEES4_E8sanitizeEPNS_21hb_sanitize_context_tEPvE19__PRETTY_FUNCTION__-(.LPIC39+4)
	.word	.LC13-(.LPIC40+4)
	.fnend
	.size	_ZN2OT7ArrayOfINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEES4_E8sanitizeEPNS_21hb_sanitize_context_tEPv, .-_ZN2OT7ArrayOfINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEES4_E8sanitizeEPNS_21hb_sanitize_context_tEPv
	.section	.text._ZN2OTL4NullINS_11OffsetTableEEERKT_v,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL4NullINS_11OffsetTableEEERKT_v, %function
_ZN2OTL4NullINS_11OffsetTableEEERKT_v:
	.fnstart
.LFB411:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r3, .L253
.LPIC41:
	add	r3, pc
	mov	r0, r3
	bl	_ZN2OTL5CastPINS_11OffsetTableEPKvEEPT_PT0_(PLT)
	mov	r3, r0
	mov	r0, r3
	pop	{r7, pc}
.L254:
	.align	2
.L253:
	.word	_ZN2OTL9_NullPoolE-(.LPIC41+4)
	.cantunwind
	.fnend
	.size	_ZN2OTL4NullINS_11OffsetTableEEERKT_v, .-_ZN2OTL4NullINS_11OffsetTableEEERKT_v
	.section	.text._ZN2OT7IntTypeIjLj4EE8sanitizeEPNS_21hb_sanitize_context_tE,"axG",%progbits,_ZN2OT7IntTypeIjLj4EE8sanitizeEPNS_21hb_sanitize_context_tE,comdat
	.align	2
	.weak	_ZN2OT7IntTypeIjLj4EE8sanitizeEPNS_21hb_sanitize_context_tE
	.thumb
	.thumb_func
	.type	_ZN2OT7IntTypeIjLj4EE8sanitizeEPNS_21hb_sanitize_context_tE, %function
_ZN2OT7IntTypeIjLj4EE8sanitizeEPNS_21hb_sanitize_context_tE:
	.fnstart
.LFB412:
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
	ldr	r1, .L257
.LPIC42:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L257+4
.LPIC43:
	add	r1, pc
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r4
	mov	r2, r3
	ldr	r3, [r7, #4]
	bl	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z(PLT)
	ldr	r0, [r7]
	ldr	r1, [r7, #4]
	bl	_ZNK2OT21hb_sanitize_context_t12check_structINS_7IntTypeIjLj4EEEEEbPKT_(PLT)
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
.L258:
	.align	2
.L257:
	.word	_ZZN2OT7IntTypeIjLj4EE8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__-(.LPIC42+4)
	.word	.LC13-(.LPIC43+4)
	.fnend
	.size	_ZN2OT7IntTypeIjLj4EE8sanitizeEPNS_21hb_sanitize_context_tE, .-_ZN2OT7IntTypeIjLj4EE8sanitizeEPNS_21hb_sanitize_context_tE
	.section	.text._ZNK2OT21hb_sanitize_context_t12check_structINS_4headEEEbPKT_,"axG",%progbits,_ZNK2OT21hb_sanitize_context_t12check_structINS_4headEEEbPKT_,comdat
	.align	2
	.weak	_ZNK2OT21hb_sanitize_context_t12check_structINS_4headEEEbPKT_
	.thumb
	.thumb_func
	.type	_ZNK2OT21hb_sanitize_context_t12check_structINS_4headEEEbPKT_, %function
_ZNK2OT21hb_sanitize_context_t12check_structINS_4headEEEbPKT_:
	.fnstart
.LFB413:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	movs	r2, #54
	bl	_ZNK2OT21hb_sanitize_context_t11check_rangeEPKvj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZNK2OT21hb_sanitize_context_t12check_structINS_4headEEEbPKT_, .-_ZNK2OT21hb_sanitize_context_t12check_structINS_4headEEEbPKT_
	.section	.text._ZNK2OT21hb_sanitize_context_t12check_structINS_4maxpEEEbPKT_,"axG",%progbits,_ZNK2OT21hb_sanitize_context_t12check_structINS_4maxpEEEbPKT_,comdat
	.align	2
	.weak	_ZNK2OT21hb_sanitize_context_t12check_structINS_4maxpEEEbPKT_
	.thumb
	.thumb_func
	.type	_ZNK2OT21hb_sanitize_context_t12check_structINS_4maxpEEEbPKT_, %function
_ZNK2OT21hb_sanitize_context_t12check_structINS_4maxpEEEbPKT_:
	.fnstart
.LFB414:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	movs	r2, #6
	bl	_ZNK2OT21hb_sanitize_context_t11check_rangeEPKvj(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZNK2OT21hb_sanitize_context_t12check_structINS_4maxpEEEbPKT_, .-_ZNK2OT21hb_sanitize_context_t12check_structINS_4maxpEEEbPKT_
	.section	.text._Z16hb_object_createI9hb_face_tEPT_v,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z16hb_object_createI9hb_face_tEPT_v, %function
_Z16hb_object_createI9hb_face_tEPT_v:
	.fnstart
.LFB415:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	movs	r0, #1
	movs	r1, #80
	bl	calloc(PLT)
	mov	r3, r0
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L264
	ldr	r3, [r7, #4]
	b	.L265
.L264:
	ldr	r0, [r7, #4]
	bl	_Z14hb_object_initI9hb_face_tEvPT_(PLT)
	ldr	r0, [r7, #4]
	ldr	r3, .L266
.LPIC44:
	add	r3, pc
	mov	r1, r3
	bl	_Z15hb_object_traceI9hb_face_tEvPKT_PKc(PLT)
	ldr	r3, [r7, #4]
.L265:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L267:
	.align	2
.L266:
	.word	_ZZ16hb_object_createI9hb_face_tEPT_vE19__PRETTY_FUNCTION__-(.LPIC44+4)
	.fnend
	.size	_Z16hb_object_createI9hb_face_tEPT_v, .-_Z16hb_object_createI9hb_face_tEPT_v
	.section	.text._ZN2OT9SanitizerINS_16OpenTypeFontFileEE13lock_instanceEP9hb_blob_t,"axG",%progbits,_ZN2OT9SanitizerINS_16OpenTypeFontFileEE13lock_instanceEP9hb_blob_t,comdat
	.align	2
	.weak	_ZN2OT9SanitizerINS_16OpenTypeFontFileEE13lock_instanceEP9hb_blob_t
	.thumb
	.thumb_func
	.type	_ZN2OT9SanitizerINS_16OpenTypeFontFileEE13lock_instanceEP9hb_blob_t, %function
_ZN2OT9SanitizerINS_16OpenTypeFontFileEE13lock_instanceEP9hb_blob_t:
	.fnstart
.LFB416:
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
	bne	.L269
	bl	_ZN2OTL4NullINS_16OpenTypeFontFileEEERKT_v(PLT)
	mov	r3, r0
	b	.L270
.L269:
	ldr	r0, [r7, #12]
	bl	_ZN2OTL5CastPINS_16OpenTypeFontFileEcEEPKT_PKT0_(PLT)
	mov	r3, r0
.L270:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OT9SanitizerINS_16OpenTypeFontFileEE13lock_instanceEP9hb_blob_t, .-_ZN2OT9SanitizerINS_16OpenTypeFontFileEE13lock_instanceEP9hb_blob_t
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
	.section	.text._ZN2OT9SanitizerINS_16OpenTypeFontFileEE8sanitizeEP9hb_blob_t,"axG",%progbits,_ZN2OT9SanitizerINS_16OpenTypeFontFileEE8sanitizeEP9hb_blob_t,comdat
	.align	2
	.weak	_ZN2OT9SanitizerINS_16OpenTypeFontFileEE8sanitizeEP9hb_blob_t
	.thumb
	.thumb_func
	.type	_ZN2OT9SanitizerINS_16OpenTypeFontFileEE8sanitizeEP9hb_blob_t, %function
_ZN2OT9SanitizerINS_16OpenTypeFontFileEE8sanitizeEP9hb_blob_t:
	.fnstart
.LFB417:
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
.L273:
	ldr	r3, [r7, #16]
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	ldr	r2, .L282
.LPIC45:
	add	r2, pc
	str	r2, [sp, #8]
	ldr	r2, .L282+4
.LPIC46:
	add	r2, pc
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L282+8
.LPIC47:
	add	r3, pc
	mov	r2, r3
	movs	r3, #0
	bl	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z(PLT)
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN2OT21hb_sanitize_context_t16start_processingEv(PLT)
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L274
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN2OT21hb_sanitize_context_t14end_processingEv(PLT)
	ldr	r3, [r7, #4]
	b	.L281
.L274:
	ldr	r3, [r7, #16]
	mov	r0, r3
	bl	_ZN2OTL5CastPINS_16OpenTypeFontFileEcEEPT_PT0_(PLT)
	str	r0, [r7, #40]
	add	r3, r7, #12
	ldr	r0, [r7, #40]
	mov	r1, r3
	bl	_ZN2OT16OpenTypeFontFile8sanitizeEPNS_21hb_sanitize_context_tE(PLT)
	mov	r3, r0
	strb	r3, [r7, #47]
	ldrb	r3, [r7, #47]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L276
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L277
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #28]
	movs	r1, #0
	str	r1, [sp]
	movs	r1, #0
	str	r1, [sp, #4]
	ldr	r1, .L282+12
.LPIC48:
	add	r1, pc
	str	r1, [sp, #8]
	str	r2, [sp, #12]
	ldr	r2, .L282+16
.LPIC49:
	add	r2, pc
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L282+20
.LPIC50:
	add	r3, pc
	mov	r2, r3
	movs	r3, #0
	bl	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z(PLT)
	movs	r3, #0
	str	r3, [r7, #28]
	add	r3, r7, #12
	ldr	r0, [r7, #40]
	mov	r1, r3
	bl	_ZN2OT16OpenTypeFontFile8sanitizeEPNS_21hb_sanitize_context_tE(PLT)
	mov	r3, r0
	strb	r3, [r7, #47]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L277
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #28]
	movs	r1, #0
	str	r1, [sp]
	movs	r1, #0
	str	r1, [sp, #4]
	ldr	r1, .L282+24
.LPIC51:
	add	r1, pc
	str	r1, [sp, #8]
	str	r2, [sp, #12]
	ldr	r2, .L282+28
.LPIC52:
	add	r2, pc
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L282+32
.LPIC53:
	add	r3, pc
	mov	r2, r3
	movs	r3, #0
	bl	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z(PLT)
	movs	r3, #0
	strb	r3, [r7, #47]
	b	.L277
.L276:
	ldr	r3, [r7, #28]
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L277
	ldrb	r3, [r7, #24]	@ zero_extendqisi2
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L277
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
	beq	.L277
	movs	r3, #1
	strb	r3, [r7, #24]
	ldr	r3, [r7, #16]
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	ldr	r2, .L282+36
.LPIC54:
	add	r2, pc
	str	r2, [sp, #8]
	ldr	r2, .L282+40
.LPIC55:
	add	r2, pc
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L282+44
.LPIC56:
	add	r3, pc
	mov	r2, r3
	movs	r3, #0
	bl	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z(PLT)
	b	.L273
.L277:
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN2OT21hb_sanitize_context_t14end_processingEv(PLT)
	ldr	r2, [r7, #16]
	ldrb	r3, [r7, #47]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L278
	ldr	r3, .L282+48
.LPIC57:
	add	r3, pc
	b	.L279
.L278:
	ldr	r3, .L282+52
.LPIC58:
	add	r3, pc
.L279:
	movs	r1, #0
	str	r1, [sp]
	movs	r1, #0
	str	r1, [sp, #4]
	str	r3, [sp, #8]
	ldr	r3, .L282+56
.LPIC59:
	add	r3, pc
	mov	r0, r3
	mov	r1, r2
	ldr	r3, .L282+60
.LPIC60:
	add	r3, pc
	mov	r2, r3
	movs	r3, #0
	bl	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z(PLT)
	ldrb	r3, [r7, #47]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L280
	ldr	r3, [r7, #4]
	b	.L281
.L280:
	ldr	r0, [r7, #4]
	bl	hb_blob_destroy(PLT)
	bl	hb_blob_get_empty(PLT)
	mov	r3, r0
.L281:
	mov	r0, r3
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L283:
	.align	2
.L282:
	.word	.LC14-(.LPIC45+4)
	.word	.LC0-(.LPIC46+4)
	.word	_ZZN2OT9SanitizerINS_16OpenTypeFontFileEE8sanitizeEP9hb_blob_tE19__PRETTY_FUNCTION__-(.LPIC47+4)
	.word	.LC15-(.LPIC48+4)
	.word	.LC0-(.LPIC49+4)
	.word	_ZZN2OT9SanitizerINS_16OpenTypeFontFileEE8sanitizeEP9hb_blob_tE19__PRETTY_FUNCTION__-(.LPIC50+4)
	.word	.LC16-(.LPIC51+4)
	.word	.LC0-(.LPIC52+4)
	.word	_ZZN2OT9SanitizerINS_16OpenTypeFontFileEE8sanitizeEP9hb_blob_tE19__PRETTY_FUNCTION__-(.LPIC53+4)
	.word	.LC17-(.LPIC54+4)
	.word	.LC0-(.LPIC55+4)
	.word	_ZZN2OT9SanitizerINS_16OpenTypeFontFileEE8sanitizeEP9hb_blob_tE19__PRETTY_FUNCTION__-(.LPIC56+4)
	.word	.LC18-(.LPIC57+4)
	.word	.LC19-(.LPIC58+4)
	.word	.LC0-(.LPIC59+4)
	.word	_ZZN2OT9SanitizerINS_16OpenTypeFontFileEE8sanitizeEP9hb_blob_tE19__PRETTY_FUNCTION__-(.LPIC60+4)
	.fnend
	.size	_ZN2OT9SanitizerINS_16OpenTypeFontFileEE8sanitizeEP9hb_blob_t, .-_ZN2OT9SanitizerINS_16OpenTypeFontFileEE8sanitizeEP9hb_blob_t
	.section	.text._Z19hb_object_referenceI9hb_face_tEPT_S2_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z19hb_object_referenceI9hb_face_tEPT_S2_, %function
_Z19hb_object_referenceI9hb_face_tEPT_S2_:
	.fnstart
.LFB418:
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
	ldr	r3, .L290
.LPIC61:
	add	r3, pc
	mov	r1, r3
	bl	_Z15hb_object_traceI9hb_face_tEvPKT_PKc(PLT)
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L285
	ldr	r0, [r7, #4]
	bl	_Z18hb_object_is_inertI9hb_face_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L286
.L285:
	movs	r3, #1
	b	.L287
.L286:
	movs	r3, #0
.L287:
	cmp	r3, #0
	beq	.L288
	ldr	r3, [r7, #4]
	b	.L289
.L288:
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN20hb_reference_count_t3incEv(PLT)
	ldr	r3, [r7, #4]
.L289:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L291:
	.align	2
.L290:
	.word	_ZZ19hb_object_referenceI9hb_face_tEPT_S2_E19__PRETTY_FUNCTION__-(.LPIC61+4)
	.fnend
	.size	_Z19hb_object_referenceI9hb_face_tEPT_S2_, .-_Z19hb_object_referenceI9hb_face_tEPT_S2_
	.section	.text._Z17hb_object_destroyI9hb_face_tEbPT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z17hb_object_destroyI9hb_face_tEbPT_, %function
_Z17hb_object_destroyI9hb_face_tEbPT_:
	.fnstart
.LFB419:
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
	ldr	r3, .L299
.LPIC62:
	add	r3, pc
	mov	r1, r3
	bl	_Z15hb_object_traceI9hb_face_tEvPKT_PKc(PLT)
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L293
	ldr	r0, [r7, #4]
	bl	_Z18hb_object_is_inertI9hb_face_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L294
.L293:
	movs	r3, #1
	b	.L295
.L294:
	movs	r3, #0
.L295:
	cmp	r3, #0
	beq	.L296
	movs	r3, #0
	b	.L297
.L296:
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN20hb_reference_count_t3decEv(PLT)
	mov	r3, r0
	cmp	r3, #1
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L298
	movs	r3, #0
	b	.L297
.L298:
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN20hb_reference_count_t6finishEv(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZN20hb_user_data_array_t6finishEv(PLT)
	movs	r3, #1
.L297:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L300:
	.align	2
.L299:
	.word	_ZZ17hb_object_destroyI9hb_face_tEbPT_E19__PRETTY_FUNCTION__-(.LPIC62+4)
	.fnend
	.size	_Z17hb_object_destroyI9hb_face_tEbPT_, .-_Z17hb_object_destroyI9hb_face_tEbPT_
	.section	.text._Z23hb_object_set_user_dataI9hb_face_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z23hb_object_set_user_dataI9hb_face_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei, %function
_Z23hb_object_set_user_dataI9hb_face_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei:
	.fnstart
.LFB420:
	@ args = 4, pretend = 0, frame = 16
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
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L302
	ldr	r0, [r7, #12]
	bl	_Z18hb_object_is_inertI9hb_face_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L303
.L302:
	movs	r3, #1
	b	.L304
.L303:
	movs	r3, #0
.L304:
	cmp	r3, #0
	beq	.L305
	movs	r3, #0
	b	.L306
.L305:
	ldr	r3, [r7, #12]
	adds	r3, r3, #4
	ldr	r2, [r7, #24]
	str	r2, [sp]
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	_ZN20hb_user_data_array_t3setEP18hb_user_data_key_tPvPFvS2_Ei(PLT)
	mov	r3, r0
.L306:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_Z23hb_object_set_user_dataI9hb_face_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei, .-_Z23hb_object_set_user_dataI9hb_face_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei
	.section	.text._Z23hb_object_get_user_dataI9hb_face_tEPvPT_P18hb_user_data_key_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z23hb_object_get_user_dataI9hb_face_tEPvPT_P18hb_user_data_key_t, %function
_Z23hb_object_get_user_dataI9hb_face_tEPvPT_P18hb_user_data_key_t:
	.fnstart
.LFB421:
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
	cmp	r3, #0
	beq	.L308
	ldr	r0, [r7, #4]
	bl	_Z18hb_object_is_inertI9hb_face_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L309
.L308:
	movs	r3, #1
	b	.L310
.L309:
	movs	r3, #0
.L310:
	cmp	r3, #0
	beq	.L311
	movs	r3, #0
	b	.L312
.L311:
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN20hb_user_data_array_t3getEP18hb_user_data_key_t(PLT)
	mov	r3, r0
.L312:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_Z23hb_object_get_user_dataI9hb_face_tEPvPT_P18hb_user_data_key_t, .-_Z23hb_object_get_user_dataI9hb_face_tEPvPT_P18hb_user_data_key_t
	.section	.text._Z18hb_object_is_inertI9hb_face_tEbPKT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z18hb_object_is_inertI9hb_face_tEbPKT_, %function
_Z18hb_object_is_inertI9hb_face_tEbPKT_:
	.fnstart
.LFB422:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZNK20hb_reference_count_t10is_invalidEv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_Z18hb_object_is_inertI9hb_face_tEbPKT_, .-_Z18hb_object_is_inertI9hb_face_tEbPKT_
	.section	.text._ZN2OT9SanitizerINS_4headEE8sanitizeEP9hb_blob_t,"axG",%progbits,_ZN2OT9SanitizerINS_4headEE8sanitizeEP9hb_blob_t,comdat
	.align	2
	.weak	_ZN2OT9SanitizerINS_4headEE8sanitizeEP9hb_blob_t
	.thumb
	.thumb_func
	.type	_ZN2OT9SanitizerINS_4headEE8sanitizeEP9hb_blob_t, %function
_ZN2OT9SanitizerINS_4headEE8sanitizeEP9hb_blob_t:
	.fnstart
.LFB423:
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
.L316:
	ldr	r3, [r7, #16]
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	ldr	r2, .L325
.LPIC63:
	add	r2, pc
	str	r2, [sp, #8]
	ldr	r2, .L325+4
.LPIC64:
	add	r2, pc
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L325+8
.LPIC65:
	add	r3, pc
	mov	r2, r3
	movs	r3, #0
	bl	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z(PLT)
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN2OT21hb_sanitize_context_t16start_processingEv(PLT)
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L317
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN2OT21hb_sanitize_context_t14end_processingEv(PLT)
	ldr	r3, [r7, #4]
	b	.L324
.L317:
	ldr	r3, [r7, #16]
	mov	r0, r3
	bl	_ZN2OTL5CastPINS_4headEcEEPT_PT0_(PLT)
	str	r0, [r7, #40]
	add	r3, r7, #12
	ldr	r0, [r7, #40]
	mov	r1, r3
	bl	_ZN2OT4head8sanitizeEPNS_21hb_sanitize_context_tE(PLT)
	mov	r3, r0
	strb	r3, [r7, #47]
	ldrb	r3, [r7, #47]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L319
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L320
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #28]
	movs	r1, #0
	str	r1, [sp]
	movs	r1, #0
	str	r1, [sp, #4]
	ldr	r1, .L325+12
.LPIC66:
	add	r1, pc
	str	r1, [sp, #8]
	str	r2, [sp, #12]
	ldr	r2, .L325+16
.LPIC67:
	add	r2, pc
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L325+20
.LPIC68:
	add	r3, pc
	mov	r2, r3
	movs	r3, #0
	bl	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z(PLT)
	movs	r3, #0
	str	r3, [r7, #28]
	add	r3, r7, #12
	ldr	r0, [r7, #40]
	mov	r1, r3
	bl	_ZN2OT4head8sanitizeEPNS_21hb_sanitize_context_tE(PLT)
	mov	r3, r0
	strb	r3, [r7, #47]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L320
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #28]
	movs	r1, #0
	str	r1, [sp]
	movs	r1, #0
	str	r1, [sp, #4]
	ldr	r1, .L325+24
.LPIC69:
	add	r1, pc
	str	r1, [sp, #8]
	str	r2, [sp, #12]
	ldr	r2, .L325+28
.LPIC70:
	add	r2, pc
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L325+32
.LPIC71:
	add	r3, pc
	mov	r2, r3
	movs	r3, #0
	bl	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z(PLT)
	movs	r3, #0
	strb	r3, [r7, #47]
	b	.L320
.L319:
	ldr	r3, [r7, #28]
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L320
	ldrb	r3, [r7, #24]	@ zero_extendqisi2
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L320
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
	beq	.L320
	movs	r3, #1
	strb	r3, [r7, #24]
	ldr	r3, [r7, #16]
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	ldr	r2, .L325+36
.LPIC72:
	add	r2, pc
	str	r2, [sp, #8]
	ldr	r2, .L325+40
.LPIC73:
	add	r2, pc
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L325+44
.LPIC74:
	add	r3, pc
	mov	r2, r3
	movs	r3, #0
	bl	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z(PLT)
	b	.L316
.L320:
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN2OT21hb_sanitize_context_t14end_processingEv(PLT)
	ldr	r2, [r7, #16]
	ldrb	r3, [r7, #47]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L321
	ldr	r3, .L325+48
.LPIC75:
	add	r3, pc
	b	.L322
.L321:
	ldr	r3, .L325+52
.LPIC76:
	add	r3, pc
.L322:
	movs	r1, #0
	str	r1, [sp]
	movs	r1, #0
	str	r1, [sp, #4]
	str	r3, [sp, #8]
	ldr	r3, .L325+56
.LPIC77:
	add	r3, pc
	mov	r0, r3
	mov	r1, r2
	ldr	r3, .L325+60
.LPIC78:
	add	r3, pc
	mov	r2, r3
	movs	r3, #0
	bl	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z(PLT)
	ldrb	r3, [r7, #47]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L323
	ldr	r3, [r7, #4]
	b	.L324
.L323:
	ldr	r0, [r7, #4]
	bl	hb_blob_destroy(PLT)
	bl	hb_blob_get_empty(PLT)
	mov	r3, r0
.L324:
	mov	r0, r3
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L326:
	.align	2
.L325:
	.word	.LC14-(.LPIC63+4)
	.word	.LC0-(.LPIC64+4)
	.word	_ZZN2OT9SanitizerINS_4headEE8sanitizeEP9hb_blob_tE19__PRETTY_FUNCTION__-(.LPIC65+4)
	.word	.LC15-(.LPIC66+4)
	.word	.LC0-(.LPIC67+4)
	.word	_ZZN2OT9SanitizerINS_4headEE8sanitizeEP9hb_blob_tE19__PRETTY_FUNCTION__-(.LPIC68+4)
	.word	.LC16-(.LPIC69+4)
	.word	.LC0-(.LPIC70+4)
	.word	_ZZN2OT9SanitizerINS_4headEE8sanitizeEP9hb_blob_tE19__PRETTY_FUNCTION__-(.LPIC71+4)
	.word	.LC17-(.LPIC72+4)
	.word	.LC0-(.LPIC73+4)
	.word	_ZZN2OT9SanitizerINS_4headEE8sanitizeEP9hb_blob_tE19__PRETTY_FUNCTION__-(.LPIC74+4)
	.word	.LC18-(.LPIC75+4)
	.word	.LC19-(.LPIC76+4)
	.word	.LC0-(.LPIC77+4)
	.word	_ZZN2OT9SanitizerINS_4headEE8sanitizeEP9hb_blob_tE19__PRETTY_FUNCTION__-(.LPIC78+4)
	.fnend
	.size	_ZN2OT9SanitizerINS_4headEE8sanitizeEP9hb_blob_t, .-_ZN2OT9SanitizerINS_4headEE8sanitizeEP9hb_blob_t
	.section	.text._ZN2OT9SanitizerINS_4headEE13lock_instanceEP9hb_blob_t,"axG",%progbits,_ZN2OT9SanitizerINS_4headEE13lock_instanceEP9hb_blob_t,comdat
	.align	2
	.weak	_ZN2OT9SanitizerINS_4headEE13lock_instanceEP9hb_blob_t
	.thumb
	.thumb_func
	.type	_ZN2OT9SanitizerINS_4headEE13lock_instanceEP9hb_blob_t, %function
_ZN2OT9SanitizerINS_4headEE13lock_instanceEP9hb_blob_t:
	.fnstart
.LFB424:
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
	bne	.L328
	bl	_ZN2OTL4NullINS_4headEEERKT_v(PLT)
	mov	r3, r0
	b	.L329
.L328:
	ldr	r0, [r7, #12]
	bl	_ZN2OTL5CastPINS_4headEcEEPKT_PKT0_(PLT)
	mov	r3, r0
.L329:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OT9SanitizerINS_4headEE13lock_instanceEP9hb_blob_t, .-_ZN2OT9SanitizerINS_4headEE13lock_instanceEP9hb_blob_t
	.section	.text._ZN2OT9SanitizerINS_4maxpEE8sanitizeEP9hb_blob_t,"axG",%progbits,_ZN2OT9SanitizerINS_4maxpEE8sanitizeEP9hb_blob_t,comdat
	.align	2
	.weak	_ZN2OT9SanitizerINS_4maxpEE8sanitizeEP9hb_blob_t
	.thumb
	.thumb_func
	.type	_ZN2OT9SanitizerINS_4maxpEE8sanitizeEP9hb_blob_t, %function
_ZN2OT9SanitizerINS_4maxpEE8sanitizeEP9hb_blob_t:
	.fnstart
.LFB425:
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
.L332:
	ldr	r3, [r7, #16]
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	ldr	r2, .L341
.LPIC79:
	add	r2, pc
	str	r2, [sp, #8]
	ldr	r2, .L341+4
.LPIC80:
	add	r2, pc
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L341+8
.LPIC81:
	add	r3, pc
	mov	r2, r3
	movs	r3, #0
	bl	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z(PLT)
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN2OT21hb_sanitize_context_t16start_processingEv(PLT)
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L333
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN2OT21hb_sanitize_context_t14end_processingEv(PLT)
	ldr	r3, [r7, #4]
	b	.L340
.L333:
	ldr	r3, [r7, #16]
	mov	r0, r3
	bl	_ZN2OTL5CastPINS_4maxpEcEEPT_PT0_(PLT)
	str	r0, [r7, #40]
	add	r3, r7, #12
	ldr	r0, [r7, #40]
	mov	r1, r3
	bl	_ZN2OT4maxp8sanitizeEPNS_21hb_sanitize_context_tE(PLT)
	mov	r3, r0
	strb	r3, [r7, #47]
	ldrb	r3, [r7, #47]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L335
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L336
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #28]
	movs	r1, #0
	str	r1, [sp]
	movs	r1, #0
	str	r1, [sp, #4]
	ldr	r1, .L341+12
.LPIC82:
	add	r1, pc
	str	r1, [sp, #8]
	str	r2, [sp, #12]
	ldr	r2, .L341+16
.LPIC83:
	add	r2, pc
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L341+20
.LPIC84:
	add	r3, pc
	mov	r2, r3
	movs	r3, #0
	bl	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z(PLT)
	movs	r3, #0
	str	r3, [r7, #28]
	add	r3, r7, #12
	ldr	r0, [r7, #40]
	mov	r1, r3
	bl	_ZN2OT4maxp8sanitizeEPNS_21hb_sanitize_context_tE(PLT)
	mov	r3, r0
	strb	r3, [r7, #47]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L336
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #28]
	movs	r1, #0
	str	r1, [sp]
	movs	r1, #0
	str	r1, [sp, #4]
	ldr	r1, .L341+24
.LPIC85:
	add	r1, pc
	str	r1, [sp, #8]
	str	r2, [sp, #12]
	ldr	r2, .L341+28
.LPIC86:
	add	r2, pc
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L341+32
.LPIC87:
	add	r3, pc
	mov	r2, r3
	movs	r3, #0
	bl	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z(PLT)
	movs	r3, #0
	strb	r3, [r7, #47]
	b	.L336
.L335:
	ldr	r3, [r7, #28]
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L336
	ldrb	r3, [r7, #24]	@ zero_extendqisi2
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L336
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
	beq	.L336
	movs	r3, #1
	strb	r3, [r7, #24]
	ldr	r3, [r7, #16]
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	ldr	r2, .L341+36
.LPIC88:
	add	r2, pc
	str	r2, [sp, #8]
	ldr	r2, .L341+40
.LPIC89:
	add	r2, pc
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L341+44
.LPIC90:
	add	r3, pc
	mov	r2, r3
	movs	r3, #0
	bl	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z(PLT)
	b	.L332
.L336:
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN2OT21hb_sanitize_context_t14end_processingEv(PLT)
	ldr	r2, [r7, #16]
	ldrb	r3, [r7, #47]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L337
	ldr	r3, .L341+48
.LPIC91:
	add	r3, pc
	b	.L338
.L337:
	ldr	r3, .L341+52
.LPIC92:
	add	r3, pc
.L338:
	movs	r1, #0
	str	r1, [sp]
	movs	r1, #0
	str	r1, [sp, #4]
	str	r3, [sp, #8]
	ldr	r3, .L341+56
.LPIC93:
	add	r3, pc
	mov	r0, r3
	mov	r1, r2
	ldr	r3, .L341+60
.LPIC94:
	add	r3, pc
	mov	r2, r3
	movs	r3, #0
	bl	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z(PLT)
	ldrb	r3, [r7, #47]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L339
	ldr	r3, [r7, #4]
	b	.L340
.L339:
	ldr	r0, [r7, #4]
	bl	hb_blob_destroy(PLT)
	bl	hb_blob_get_empty(PLT)
	mov	r3, r0
.L340:
	mov	r0, r3
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L342:
	.align	2
.L341:
	.word	.LC14-(.LPIC79+4)
	.word	.LC0-(.LPIC80+4)
	.word	_ZZN2OT9SanitizerINS_4maxpEE8sanitizeEP9hb_blob_tE19__PRETTY_FUNCTION__-(.LPIC81+4)
	.word	.LC15-(.LPIC82+4)
	.word	.LC0-(.LPIC83+4)
	.word	_ZZN2OT9SanitizerINS_4maxpEE8sanitizeEP9hb_blob_tE19__PRETTY_FUNCTION__-(.LPIC84+4)
	.word	.LC16-(.LPIC85+4)
	.word	.LC0-(.LPIC86+4)
	.word	_ZZN2OT9SanitizerINS_4maxpEE8sanitizeEP9hb_blob_tE19__PRETTY_FUNCTION__-(.LPIC87+4)
	.word	.LC17-(.LPIC88+4)
	.word	.LC0-(.LPIC89+4)
	.word	_ZZN2OT9SanitizerINS_4maxpEE8sanitizeEP9hb_blob_tE19__PRETTY_FUNCTION__-(.LPIC90+4)
	.word	.LC18-(.LPIC91+4)
	.word	.LC19-(.LPIC92+4)
	.word	.LC0-(.LPIC93+4)
	.word	_ZZN2OT9SanitizerINS_4maxpEE8sanitizeEP9hb_blob_tE19__PRETTY_FUNCTION__-(.LPIC94+4)
	.fnend
	.size	_ZN2OT9SanitizerINS_4maxpEE8sanitizeEP9hb_blob_t, .-_ZN2OT9SanitizerINS_4maxpEE8sanitizeEP9hb_blob_t
	.section	.text._ZN2OT9SanitizerINS_4maxpEE13lock_instanceEP9hb_blob_t,"axG",%progbits,_ZN2OT9SanitizerINS_4maxpEE13lock_instanceEP9hb_blob_t,comdat
	.align	2
	.weak	_ZN2OT9SanitizerINS_4maxpEE13lock_instanceEP9hb_blob_t
	.thumb
	.thumb_func
	.type	_ZN2OT9SanitizerINS_4maxpEE13lock_instanceEP9hb_blob_t, %function
_ZN2OT9SanitizerINS_4maxpEE13lock_instanceEP9hb_blob_t:
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
	bne	.L344
	bl	_ZN2OTL4NullINS_4maxpEEERKT_v(PLT)
	mov	r3, r0
	b	.L345
.L344:
	ldr	r0, [r7, #12]
	bl	_ZN2OTL5CastPINS_4maxpEcEEPKT_PKT0_(PLT)
	mov	r3, r0
.L345:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OT9SanitizerINS_4maxpEE13lock_instanceEP9hb_blob_t, .-_ZN2OT9SanitizerINS_4maxpEE13lock_instanceEP9hb_blob_t
	.section	.text._ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4initEv,"axG",%progbits,_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4initEv,comdat
	.align	2
	.weak	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4initEv
	.thumb
	.thumb_func
	.type	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4initEv, %function
_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4initEv:
	.fnstart
.LFB427:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	movs	r1, #0
	movs	r2, #36
	bl	memset(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4initEv, .-_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4initEv
	.section	.text._ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE6finishEv,"axG",%progbits,_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE6finishEv,comdat
	.align	2
	.weak	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE6finishEv
	.thumb
	.thumb_func
	.type	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE6finishEv, %function
_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE6finishEv:
	.fnstart
.LFB428:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	cmp	r2, r3
	beq	.L349
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r0, r3
	bl	free(PLT)
.L349:
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE6finishEv, .-_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE6finishEv
	.section	.text._ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EEixEj,"axG",%progbits,_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EEixEj,comdat
	.align	2
	.weak	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EEixEj
	.thumb
	.thumb_func
	.type	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EEixEj, %function
_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EEixEj:
	.fnstart
.LFB429:
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
.LFB430:
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
	.section	.text._ZNK2OT5BEIntIjLi4EEcvjEv,"axG",%progbits,_ZNK2OT5BEIntIjLi4EEcvjEv,comdat
	.align	2
	.weak	_ZNK2OT5BEIntIjLi4EEcvjEv
	.thumb
	.thumb_func
	.type	_ZNK2OT5BEIntIjLi4EEcvjEv, %function
_ZNK2OT5BEIntIjLi4EEcvjEv:
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
.LFB432:
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
.LFB433:
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
	.section	.text._ZN2OTL5CastPINS_11TableRecordEPKvEEPT_PT0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL5CastPINS_11TableRecordEPKvEEPT_PT0_, %function
_ZN2OTL5CastPINS_11TableRecordEPKvEEPT_PT0_:
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
	.size	_ZN2OTL5CastPINS_11TableRecordEPKvEEPT_PT0_, .-_ZN2OTL5CastPINS_11TableRecordEPKvEEPT_PT0_
	.section	.text._ZNK2OT5BEIntIjLi4EEeqERKS1_,"axG",%progbits,_ZNK2OT5BEIntIjLi4EEeqERKS1_,comdat
	.align	2
	.weak	_ZNK2OT5BEIntIjLi4EEeqERKS1_
	.thumb
	.thumb_func
	.type	_ZNK2OT5BEIntIjLi4EEeqERKS1_, %function
_ZNK2OT5BEIntIjLi4EEeqERKS1_:
	.fnstart
.LFB435:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L361
	ldr	r3, [r7, #4]
	ldrb	r2, [r3, #1]	@ zero_extendqisi2
	ldr	r3, [r7]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L361
	ldr	r3, [r7, #4]
	ldrb	r2, [r3, #2]	@ zero_extendqisi2
	ldr	r3, [r7]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L361
	ldr	r3, [r7, #4]
	ldrb	r2, [r3, #3]	@ zero_extendqisi2
	ldr	r3, [r7]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L361
	movs	r3, #1
	b	.L362
.L361:
	movs	r3, #0
.L362:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNK2OT5BEIntIjLi4EEeqERKS1_, .-_ZNK2OT5BEIntIjLi4EEeqERKS1_
	.section	.text._ZN2OTL4NullINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEEEERKT_v,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL4NullINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEEEERKT_v, %function
_ZN2OTL4NullINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEEEERKT_v:
	.fnstart
.LFB436:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r3, .L366
.LPIC95:
	add	r3, pc
	mov	r0, r3
	bl	_ZN2OTL5CastPINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEEPKvEEPT_PT0_(PLT)
	mov	r3, r0
	mov	r0, r3
	pop	{r7, pc}
.L367:
	.align	2
.L366:
	.word	_ZN2OTL9_NullPoolE-(.LPIC95+4)
	.cantunwind
	.fnend
	.size	_ZN2OTL4NullINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEEEERKT_v, .-_ZN2OTL4NullINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEEEERKT_v
	.section	.text._ZNK2OT8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEclEPKv,"axG",%progbits,_ZNK2OT8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEclEPKv,comdat
	.align	2
	.weak	_ZNK2OT8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEclEPKv
	.thumb
	.thumb_func
	.type	_ZNK2OT8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEclEPKv, %function
_ZNK2OT8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEclEPKv:
	.fnstart
.LFB437:
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
	bne	.L369
	bl	_ZN2OTL4NullINS_11OffsetTableEEERKT_v(PLT)
	mov	r3, r0
	b	.L370
.L369:
	ldr	r0, [r7]
	ldr	r1, [r7, #12]
	bl	_ZN2OTL14StructAtOffsetINS_11OffsetTableEEERKT_PKvj(PLT)
	mov	r3, r0
.L370:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZNK2OT8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEclEPKv, .-_ZNK2OT8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEclEPKv
	.section	.text._ZN2OT7ArrayOfINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEES4_E16sanitize_shallowEPNS_21hb_sanitize_context_tE,"axG",%progbits,_ZN2OT7ArrayOfINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEES4_E16sanitize_shallowEPNS_21hb_sanitize_context_tE,comdat
	.align	2
	.weak	_ZN2OT7ArrayOfINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEES4_E16sanitize_shallowEPNS_21hb_sanitize_context_tE
	.thumb
	.thumb_func
	.type	_ZN2OT7ArrayOfINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEES4_E16sanitize_shallowEPNS_21hb_sanitize_context_tE, %function
_ZN2OT7ArrayOfINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEES4_E16sanitize_shallowEPNS_21hb_sanitize_context_tE:
	.fnstart
.LFB438:
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
	ldr	r1, .L375
.LPIC96:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L375+4
.LPIC97:
	add	r1, pc
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r4
	mov	r2, r3
	ldr	r3, [r7, #4]
	bl	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z(PLT)
	ldr	r0, [r7]
	ldr	r1, [r7, #4]
	bl	_ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEES6_EEEEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L372
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
	beq	.L372
	movs	r3, #1
	b	.L373
.L372:
	movs	r3, #0
.L373:
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
.L376:
	.align	2
.L375:
	.word	_ZZN2OT7ArrayOfINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEES4_E16sanitize_shallowEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__-(.LPIC96+4)
	.word	.LC13-(.LPIC97+4)
	.fnend
	.size	_ZN2OT7ArrayOfINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEES4_E16sanitize_shallowEPNS_21hb_sanitize_context_tE, .-_ZN2OT7ArrayOfINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEES4_E16sanitize_shallowEPNS_21hb_sanitize_context_tE
	.section	.text._ZN2OT8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEPv,"axG",%progbits,_ZN2OT8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEPv,comdat
	.align	2
	.weak	_ZN2OT8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEPv
	.thumb
	.thumb_func
	.type	_ZN2OT8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEPv, %function
_ZN2OT8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEPv:
	.fnstart
.LFB439:
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
	ldr	r1, .L385
.LPIC98:
	add	r1, pc
	str	r1, [sp]
	ldr	r1, .L385+4
.LPIC99:
	add	r1, pc
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r4
	mov	r2, r3
	ldr	r3, [r7, #12]
	bl	_ZN15hb_auto_trace_tILi0EbEC1EPjPKcPKvS3_S3_z(PLT)
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #12]
	bl	_ZNK2OT21hb_sanitize_context_t12check_structINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEEEEbPKT_(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L378
	add	r3, r7, #20
	mov	r0, r3
	movs	r1, #0
	movw	r2, #759
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L384
.L378:
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	_ZNK2OT7IntTypeIjLj4EEcvjEv(PLT)
	mov	r3, r0
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L380
	add	r3, r7, #20
	mov	r0, r3
	movs	r1, #1
	movw	r2, #761
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
	b	.L384
.L380:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #28]
	bl	_ZN2OTL14StructAtOffsetINS_11OffsetTableEEERT_Pvj(PLT)
	str	r0, [r7, #24]
	ldr	r0, [r7, #24]
	ldr	r1, [r7, #8]
	bl	_ZN2OT11OffsetTable8sanitizeEPNS_21hb_sanitize_context_tE(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L381
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_ZN2OT8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEE6neuterEPNS_21hb_sanitize_context_tE(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L382
.L381:
	movs	r3, #1
	b	.L383
.L382:
	movs	r3, #0
.L383:
	add	r2, r7, #20
	mov	r0, r2
	mov	r1, r3
	movw	r2, #763
	bl	_ZN15hb_auto_trace_tILi0EbE3retEbj(PLT)
	mov	r3, r0
.L384:
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L386:
	.align	2
.L385:
	.word	_ZZN2OT8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEPvE19__PRETTY_FUNCTION__-(.LPIC98+4)
	.word	.LC13-(.LPIC99+4)
	.fnend
	.size	_ZN2OT8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEPv, .-_ZN2OT8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEPv
	.section	.text._ZN2OTL5CastPINS_11OffsetTableEPKvEEPT_PT0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL5CastPINS_11OffsetTableEPKvEEPT_PT0_, %function
_ZN2OTL5CastPINS_11OffsetTableEPKvEEPT_PT0_:
	.fnstart
.LFB440:
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
	.size	_ZN2OTL5CastPINS_11OffsetTableEPKvEEPT_PT0_, .-_ZN2OTL5CastPINS_11OffsetTableEPKvEEPT_PT0_
	.section	.text._ZNK2OT21hb_sanitize_context_t12check_structINS_7IntTypeIjLj4EEEEEbPKT_,"axG",%progbits,_ZNK2OT21hb_sanitize_context_t12check_structINS_7IntTypeIjLj4EEEEEbPKT_,comdat
	.align	2
	.weak	_ZNK2OT21hb_sanitize_context_t12check_structINS_7IntTypeIjLj4EEEEEbPKT_
	.thumb
	.thumb_func
	.type	_ZNK2OT21hb_sanitize_context_t12check_structINS_7IntTypeIjLj4EEEEEbPKT_, %function
_ZNK2OT21hb_sanitize_context_t12check_structINS_7IntTypeIjLj4EEEEEbPKT_:
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
	.size	_ZNK2OT21hb_sanitize_context_t12check_structINS_7IntTypeIjLj4EEEEEbPKT_, .-_ZNK2OT21hb_sanitize_context_t12check_structINS_7IntTypeIjLj4EEEEEbPKT_
	.section	.text._Z14hb_object_initI9hb_face_tEvPT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z14hb_object_initI9hb_face_tEvPT_, %function
_Z14hb_object_initI9hb_face_tEvPT_:
	.fnstart
.LFB442:
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
	movs	r1, #1
	bl	_ZN20hb_reference_count_t4initEi(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZN20hb_user_data_array_t4initEv(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_Z14hb_object_initI9hb_face_tEvPT_, .-_Z14hb_object_initI9hb_face_tEvPT_
	.section	.rodata
	.align	2
.LC20:
	.ascii	"OBJECT\000"
	.align	2
.LC21:
	.ascii	"%s refcount=%d\000"
	.section	.text._Z15hb_object_traceI9hb_face_tEvPKT_PKc,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z15hb_object_traceI9hb_face_tEvPKT_PKc, %function
_Z15hb_object_traceI9hb_face_tEvPKT_PKc:
	.fnstart
.LFB443:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #24
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L393
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	b	.L394
.L393:
	movs	r3, #0
.L394:
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	ldr	r2, .L395
.LPIC100:
	add	r2, pc
	str	r2, [sp, #8]
	ldr	r2, [r7]
	str	r2, [sp, #12]
	str	r3, [sp, #16]
	ldr	r3, .L395+4
.LPIC101:
	add	r3, pc
	mov	r0, r3
	ldr	r1, [r7, #4]
	movs	r2, #0
	movs	r3, #0
	bl	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L396:
	.align	2
.L395:
	.word	.LC21-(.LPIC100+4)
	.word	.LC20-(.LPIC101+4)
	.cantunwind
	.fnend
	.size	_Z15hb_object_traceI9hb_face_tEvPKT_PKc, .-_Z15hb_object_traceI9hb_face_tEvPKT_PKc
	.section	.text._ZN2OTL4NullINS_16OpenTypeFontFileEEERKT_v,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL4NullINS_16OpenTypeFontFileEEERKT_v, %function
_ZN2OTL4NullINS_16OpenTypeFontFileEEERKT_v:
	.fnstart
.LFB444:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r3, .L399
.LPIC102:
	add	r3, pc
	mov	r0, r3
	bl	_ZN2OTL5CastPINS_16OpenTypeFontFileEPKvEEPT_PT0_(PLT)
	mov	r3, r0
	mov	r0, r3
	pop	{r7, pc}
.L400:
	.align	2
.L399:
	.word	_ZN2OTL9_NullPoolE-(.LPIC102+4)
	.cantunwind
	.fnend
	.size	_ZN2OTL4NullINS_16OpenTypeFontFileEEERKT_v, .-_ZN2OTL4NullINS_16OpenTypeFontFileEEERKT_v
	.section	.text._ZN2OTL5CastPINS_16OpenTypeFontFileEcEEPKT_PKT0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL5CastPINS_16OpenTypeFontFileEcEEPKT_PKT0_, %function
_ZN2OTL5CastPINS_16OpenTypeFontFileEcEEPKT_PKT0_:
	.fnstart
.LFB445:
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
	.size	_ZN2OTL5CastPINS_16OpenTypeFontFileEcEEPKT_PKT0_, .-_ZN2OTL5CastPINS_16OpenTypeFontFileEcEEPKT_PKT0_
	.section	.text._ZN2OTL5CastPINS_16OpenTypeFontFileEcEEPT_PT0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL5CastPINS_16OpenTypeFontFileEcEEPT_PT0_, %function
_ZN2OTL5CastPINS_16OpenTypeFontFileEcEEPT_PT0_:
	.fnstart
.LFB446:
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
	.size	_ZN2OTL5CastPINS_16OpenTypeFontFileEcEEPT_PT0_, .-_ZN2OTL5CastPINS_16OpenTypeFontFileEcEEPT_PT0_
	.section	.text._ZN2OTL5CastPINS_4headEcEEPT_PT0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL5CastPINS_4headEcEEPT_PT0_, %function
_ZN2OTL5CastPINS_4headEcEEPT_PT0_:
	.fnstart
.LFB447:
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
	.size	_ZN2OTL5CastPINS_4headEcEEPT_PT0_, .-_ZN2OTL5CastPINS_4headEcEEPT_PT0_
	.section	.text._ZN2OTL4NullINS_4headEEERKT_v,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL4NullINS_4headEEERKT_v, %function
_ZN2OTL4NullINS_4headEEERKT_v:
	.fnstart
.LFB448:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r3, .L409
.LPIC103:
	add	r3, pc
	mov	r0, r3
	bl	_ZN2OTL5CastPINS_4headEPKvEEPT_PT0_(PLT)
	mov	r3, r0
	mov	r0, r3
	pop	{r7, pc}
.L410:
	.align	2
.L409:
	.word	_ZN2OTL9_NullPoolE-(.LPIC103+4)
	.cantunwind
	.fnend
	.size	_ZN2OTL4NullINS_4headEEERKT_v, .-_ZN2OTL4NullINS_4headEEERKT_v
	.section	.text._ZN2OTL5CastPINS_4headEcEEPKT_PKT0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL5CastPINS_4headEcEEPKT_PKT0_, %function
_ZN2OTL5CastPINS_4headEcEEPKT_PKT0_:
	.fnstart
.LFB449:
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
	.size	_ZN2OTL5CastPINS_4headEcEEPKT_PKT0_, .-_ZN2OTL5CastPINS_4headEcEEPKT_PKT0_
	.section	.text._ZN2OTL5CastPINS_4maxpEcEEPT_PT0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL5CastPINS_4maxpEcEEPT_PT0_, %function
_ZN2OTL5CastPINS_4maxpEcEEPT_PT0_:
	.fnstart
.LFB450:
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
	.size	_ZN2OTL5CastPINS_4maxpEcEEPT_PT0_, .-_ZN2OTL5CastPINS_4maxpEcEEPT_PT0_
	.section	.text._ZN2OTL4NullINS_4maxpEEERKT_v,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL4NullINS_4maxpEEERKT_v, %function
_ZN2OTL4NullINS_4maxpEEERKT_v:
	.fnstart
.LFB451:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r3, .L417
.LPIC104:
	add	r3, pc
	mov	r0, r3
	bl	_ZN2OTL5CastPINS_4maxpEPKvEEPT_PT0_(PLT)
	mov	r3, r0
	mov	r0, r3
	pop	{r7, pc}
.L418:
	.align	2
.L417:
	.word	_ZN2OTL9_NullPoolE-(.LPIC104+4)
	.cantunwind
	.fnend
	.size	_ZN2OTL4NullINS_4maxpEEERKT_v, .-_ZN2OTL4NullINS_4maxpEEERKT_v
	.section	.text._ZN2OTL5CastPINS_4maxpEcEEPKT_PKT0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL5CastPINS_4maxpEcEEPKT_PKT0_, %function
_ZN2OTL5CastPINS_4maxpEcEEPKT_PKT0_:
	.fnstart
.LFB452:
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
	.size	_ZN2OTL5CastPINS_4maxpEcEEPKT_PKT0_, .-_ZN2OTL5CastPINS_4maxpEcEEPKT_PKT0_
	.section	.text._ZN2OTL5CastPINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEEPKvEEPT_PT0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL5CastPINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEEPKvEEPT_PT0_, %function
_ZN2OTL5CastPINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEEPKvEEPT_PT0_:
	.fnstart
.LFB453:
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
	.size	_ZN2OTL5CastPINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEEPKvEEPT_PT0_, .-_ZN2OTL5CastPINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEEPKvEEPT_PT0_
	.section	.text._ZN2OTL14StructAtOffsetINS_11OffsetTableEEERKT_PKvj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL14StructAtOffsetINS_11OffsetTableEEERKT_PKvj, %function
_ZN2OTL14StructAtOffsetINS_11OffsetTableEEERKT_PKvj:
	.fnstart
.LFB454:
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
	.size	_ZN2OTL14StructAtOffsetINS_11OffsetTableEEERKT_PKvj, .-_ZN2OTL14StructAtOffsetINS_11OffsetTableEEERKT_PKvj
	.section	.text._ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEES6_EEEEbPKT_,"axG",%progbits,_ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEES6_EEEEbPKT_,comdat
	.align	2
	.weak	_ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEES6_EEEEbPKT_
	.thumb
	.thumb_func
	.type	_ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEES6_EEEEbPKT_, %function
_ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEES6_EEEEbPKT_:
	.fnstart
.LFB455:
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
	.size	_ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEES6_EEEEbPKT_, .-_ZNK2OT21hb_sanitize_context_t12check_structINS_7ArrayOfINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEES6_EEEEbPKT_
	.section	.text._ZNK2OT21hb_sanitize_context_t12check_structINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEEEEbPKT_,"axG",%progbits,_ZNK2OT21hb_sanitize_context_t12check_structINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEEEEbPKT_,comdat
	.align	2
	.weak	_ZNK2OT21hb_sanitize_context_t12check_structINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEEEEbPKT_
	.thumb
	.thumb_func
	.type	_ZNK2OT21hb_sanitize_context_t12check_structINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEEEEbPKT_, %function
_ZNK2OT21hb_sanitize_context_t12check_structINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEEEEbPKT_:
	.fnstart
.LFB456:
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
	.size	_ZNK2OT21hb_sanitize_context_t12check_structINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEEEEbPKT_, .-_ZNK2OT21hb_sanitize_context_t12check_structINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEEEEbPKT_
	.section	.text._ZN2OTL14StructAtOffsetINS_11OffsetTableEEERT_Pvj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL14StructAtOffsetINS_11OffsetTableEEERT_Pvj, %function
_ZN2OTL14StructAtOffsetINS_11OffsetTableEEERT_Pvj:
	.fnstart
.LFB457:
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
	.size	_ZN2OTL14StructAtOffsetINS_11OffsetTableEEERT_Pvj, .-_ZN2OTL14StructAtOffsetINS_11OffsetTableEEERT_Pvj
	.section	.text._ZN2OT8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEE6neuterEPNS_21hb_sanitize_context_tE,"axG",%progbits,_ZN2OT8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEE6neuterEPNS_21hb_sanitize_context_tE,comdat
	.align	2
	.weak	_ZN2OT8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEE6neuterEPNS_21hb_sanitize_context_tE
	.thumb
	.thumb_func
	.type	_ZN2OT8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEE6neuterEPNS_21hb_sanitize_context_tE, %function
_ZN2OT8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEE6neuterEPNS_21hb_sanitize_context_tE:
	.fnstart
.LFB458:
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
	bl	_ZN2OT21hb_sanitize_context_t7try_setINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEEiEEbPT_RKT0_(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OT8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEE6neuterEPNS_21hb_sanitize_context_tE, .-_ZN2OT8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEE6neuterEPNS_21hb_sanitize_context_tE
	.section	.text._ZN2OTL5CastPINS_16OpenTypeFontFileEPKvEEPT_PT0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL5CastPINS_16OpenTypeFontFileEPKvEEPT_PT0_, %function
_ZN2OTL5CastPINS_16OpenTypeFontFileEPKvEEPT_PT0_:
	.fnstart
.LFB459:
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
	.size	_ZN2OTL5CastPINS_16OpenTypeFontFileEPKvEEPT_PT0_, .-_ZN2OTL5CastPINS_16OpenTypeFontFileEPKvEEPT_PT0_
	.section	.text._ZN2OTL5CastPINS_4headEPKvEEPT_PT0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL5CastPINS_4headEPKvEEPT_PT0_, %function
_ZN2OTL5CastPINS_4headEPKvEEPT_PT0_:
	.fnstart
.LFB460:
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
	.size	_ZN2OTL5CastPINS_4headEPKvEEPT_PT0_, .-_ZN2OTL5CastPINS_4headEPKvEEPT_PT0_
	.section	.text._ZN2OTL5CastPINS_4maxpEPKvEEPT_PT0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZN2OTL5CastPINS_4maxpEPKvEEPT_PT0_, %function
_ZN2OTL5CastPINS_4maxpEPKvEEPT_PT0_:
	.fnstart
.LFB461:
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
	.size	_ZN2OTL5CastPINS_4maxpEPKvEEPT_PT0_, .-_ZN2OTL5CastPINS_4maxpEPKvEEPT_PT0_
	.section	.text._ZN2OT21hb_sanitize_context_t7try_setINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEEiEEbPT_RKT0_,"axG",%progbits,_ZN2OT21hb_sanitize_context_t7try_setINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEEiEEbPT_RKT0_,comdat
	.align	2
	.weak	_ZN2OT21hb_sanitize_context_t7try_setINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEEiEEbPT_RKT0_
	.thumb
	.thumb_func
	.type	_ZN2OT21hb_sanitize_context_t7try_setINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEEiEEbPT_RKT0_, %function
_ZN2OT21hb_sanitize_context_t7try_setINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEEiEEbPT_RKT0_:
	.fnstart
.LFB462:
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
	beq	.L440
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2OT7IntTypeIjLj4EE3setEj(PLT)
	movs	r3, #1
	b	.L441
.L440:
	movs	r3, #0
.L441:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN2OT21hb_sanitize_context_t7try_setINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEEiEEbPT_RKT0_, .-_ZN2OT21hb_sanitize_context_t7try_setINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEEiEEbPT_RKT0_
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
	.section	.rodata._ZZ16hb_object_createI9hb_face_tEPT_vE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZ16hb_object_createI9hb_face_tEPT_vE19__PRETTY_FUNCTION__, %object
	.size	_ZZ16hb_object_createI9hb_face_tEPT_vE19__PRETTY_FUNCTION__, 49
_ZZ16hb_object_createI9hb_face_tEPT_vE19__PRETTY_FUNCTION__:
	.ascii	"Type* hb_object_create() [with Type = hb_face_t]\000"
	.section	.rodata._ZZN2OT9SanitizerINS_16OpenTypeFontFileEE8sanitizeEP9hb_blob_tE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT9SanitizerINS_16OpenTypeFontFileEE8sanitizeEP9hb_blob_tE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT9SanitizerINS_16OpenTypeFontFileEE8sanitizeEP9hb_blob_tE19__PRETTY_FUNCTION__, 118
_ZZN2OT9SanitizerINS_16OpenTypeFontFileEE8sanitizeEP9hb_blob_tE19__PRETTY_FUNCTION__:
	.ascii	"static hb_blob_t* OT::Sanitizer<Type>::sanitize(hb_"
	.ascii	"blob_t*) [with Type = OT::OpenTypeFontFile; hb_blob"
	.ascii	"_t = hb_blob_t]\000"
	.section	.rodata._ZZN2OT21hb_sanitize_context_t16start_processingEvE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT21hb_sanitize_context_t16start_processingEvE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT21hb_sanitize_context_t16start_processingEvE19__PRETTY_FUNCTION__, 51
_ZZN2OT21hb_sanitize_context_t16start_processingEvE19__PRETTY_FUNCTION__:
	.ascii	"void OT::hb_sanitize_context_t::start_processing()\000"
	.section	.rodata._ZZN2OT16OpenTypeFontFile8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT16OpenTypeFontFile8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT16OpenTypeFontFile8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, 64
_ZZN2OT16OpenTypeFontFile8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::OpenTypeFontFile::sanitize(OT::hb_sanitize"
	.ascii	"_context_t*)\000"
	.section	.rodata._ZZN2OT7IntTypeIjLj4EE8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT7IntTypeIjLj4EE8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT7IntTypeIjLj4EE8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, 118
_ZZN2OT7IntTypeIjLj4EE8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::IntType<Type, Size>::sanitize(OT::hb_sanit"
	.ascii	"ize_context_t*) [with Type = unsigned int; unsigned"
	.ascii	" int Size = 4u]\000"
	.section	.rodata._ZZN2OT11OffsetTable8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT11OffsetTable8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT11OffsetTable8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, 59
_ZZN2OT11OffsetTable8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::OffsetTable::sanitize(OT::hb_sanitize_cont"
	.ascii	"ext_t*)\000"
	.section	.rodata._ZZN2OT9TTCHeader8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT9TTCHeader8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT9TTCHeader8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, 57
_ZZN2OT9TTCHeader8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::TTCHeader::sanitize(OT::hb_sanitize_contex"
	.ascii	"t_t*)\000"
	.section	.rodata._ZZN2OT12FixedVersion8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT12FixedVersion8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT12FixedVersion8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, 60
_ZZN2OT12FixedVersion8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::FixedVersion::sanitize(OT::hb_sanitize_con"
	.ascii	"text_t*)\000"
	.section	.rodata._ZZN2OT17TTCHeaderVersion18sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT17TTCHeaderVersion18sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT17TTCHeaderVersion18sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, 65
_ZZN2OT17TTCHeaderVersion18sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::TTCHeaderVersion1::sanitize(OT::hb_sanitiz"
	.ascii	"e_context_t*)\000"
	.section	.rodata._ZZN2OT7ArrayOfINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEES4_E8sanitizeEPNS_21hb_sanitize_context_tEPvE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT7ArrayOfINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEES4_E8sanitizeEPNS_21hb_sanitize_context_tEPvE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT7ArrayOfINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEES4_E8sanitizeEPNS_21hb_sanitize_context_tEPvE19__PRETTY_FUNCTION__, 194
_ZZN2OT7ArrayOfINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEES4_E8sanitizeEPNS_21hb_sanitize_context_tEPvE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::ArrayOf<Type, LenType>::sanitize(OT::hb_sa"
	.ascii	"nitize_context_t*, void*) [with Type = OT::OffsetTo"
	.ascii	"<OT::OffsetTable, OT::IntType<unsigned int, 4u> >; "
	.ascii	"LenType = OT::IntType<unsigned int, 4u>]\000"
	.section	.rodata._ZZN2OT7ArrayOfINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEES4_E16sanitize_shallowEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT7ArrayOfINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEES4_E16sanitize_shallowEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT7ArrayOfINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEES4_E16sanitize_shallowEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, 195
_ZZN2OT7ArrayOfINS_8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEEES4_E16sanitize_shallowEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::ArrayOf<Type, LenType>::sanitize_shallow(O"
	.ascii	"T::hb_sanitize_context_t*) [with Type = OT::OffsetT"
	.ascii	"o<OT::OffsetTable, OT::IntType<unsigned int, 4u> >;"
	.ascii	" LenType = OT::IntType<unsigned int, 4u>]\000"
	.section	.rodata._ZZN2OT8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEPvE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEPvE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEPvE19__PRETTY_FUNCTION__, 155
_ZZN2OT8OffsetToINS_11OffsetTableENS_7IntTypeIjLj4EEEE8sanitizeEPNS_21hb_sanitize_context_tEPvE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::OffsetTo<Type, OffsetType>::sanitize(OT::h"
	.ascii	"b_sanitize_context_t*, void*) [with Type = OT::Offs"
	.ascii	"etTable; OffsetType = OT::IntType<unsigned int, 4u>"
	.ascii	"]\000"
	.section	.rodata._ZZ19hb_object_referenceI9hb_face_tEPT_S2_E19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZ19hb_object_referenceI9hb_face_tEPT_S2_E19__PRETTY_FUNCTION__, %object
	.size	_ZZ19hb_object_referenceI9hb_face_tEPT_S2_E19__PRETTY_FUNCTION__, 57
_ZZ19hb_object_referenceI9hb_face_tEPT_S2_E19__PRETTY_FUNCTION__:
	.ascii	"Type* hb_object_reference(Type*) [with Type = hb_fa"
	.ascii	"ce_t]\000"
	.section	.rodata._ZZ17hb_object_destroyI9hb_face_tEbPT_E19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZ17hb_object_destroyI9hb_face_tEbPT_E19__PRETTY_FUNCTION__, %object
	.size	_ZZ17hb_object_destroyI9hb_face_tEbPT_E19__PRETTY_FUNCTION__, 54
_ZZ17hb_object_destroyI9hb_face_tEbPT_E19__PRETTY_FUNCTION__:
	.ascii	"bool hb_object_destroy(Type*) [with Type = hb_face_"
	.ascii	"t]\000"
	.section	.rodata._ZZN2OT9SanitizerINS_4headEE8sanitizeEP9hb_blob_tE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT9SanitizerINS_4headEE8sanitizeEP9hb_blob_tE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT9SanitizerINS_4headEE8sanitizeEP9hb_blob_tE19__PRETTY_FUNCTION__, 106
_ZZN2OT9SanitizerINS_4headEE8sanitizeEP9hb_blob_tE19__PRETTY_FUNCTION__:
	.ascii	"static hb_blob_t* OT::Sanitizer<Type>::sanitize(hb_"
	.ascii	"blob_t*) [with Type = OT::head; hb_blob_t = hb_blob"
	.ascii	"_t]\000"
	.section	.rodata._ZZN2OT4head8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT4head8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT4head8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, 52
_ZZN2OT4head8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::head::sanitize(OT::hb_sanitize_context_t*)"
	.ascii	"\000"
	.section	.rodata._ZZN2OT9SanitizerINS_4maxpEE8sanitizeEP9hb_blob_tE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT9SanitizerINS_4maxpEE8sanitizeEP9hb_blob_tE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT9SanitizerINS_4maxpEE8sanitizeEP9hb_blob_tE19__PRETTY_FUNCTION__, 106
_ZZN2OT9SanitizerINS_4maxpEE8sanitizeEP9hb_blob_tE19__PRETTY_FUNCTION__:
	.ascii	"static hb_blob_t* OT::Sanitizer<Type>::sanitize(hb_"
	.ascii	"blob_t*) [with Type = OT::maxp; hb_blob_t = hb_blob"
	.ascii	"_t]\000"
	.section	.rodata._ZZN2OT4maxp8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN2OT4maxp8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, %object
	.size	_ZZN2OT4maxp8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__, 52
_ZZN2OT4maxp8sanitizeEPNS_21hb_sanitize_context_tEE19__PRETTY_FUNCTION__:
	.ascii	"bool OT::maxp::sanitize(OT::hb_sanitize_context_t*)"
	.ascii	"\000"
	.hidden	_ZN20hb_user_data_array_t3getEP18hb_user_data_key_t
	.hidden	_ZN20hb_user_data_array_t3setEP18hb_user_data_key_tPvPFvS2_Ei
	.hidden	_hb_ot_shaper_face_data_destroy
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
