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
	.file	"hb-blob.cc"
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
	beq	.L14
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #4]
	mov	r0, r2
	blx	r3
.L14:
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
	.section	.text._ZL26_hb_blob_destroy_user_dataP9hb_blob_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL26_hb_blob_destroy_user_dataP9hb_blob_t, %function
_ZL26_hb_blob_destroy_user_dataP9hb_blob_t:
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
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	cmp	r3, #0
	beq	.L18
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #60]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #60]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #64]
.L18:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL26_hb_blob_destroy_user_dataP9hb_blob_t, .-_ZL26_hb_blob_destroy_user_dataP9hb_blob_t
	.section	.text.hb_blob_create,"ax",%progbits
	.align	2
	.global	hb_blob_create
	.thumb
	.thumb_func
	.type	hb_blob_create, %function
hb_blob_create:
	.fnstart
.LFB84:
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
	cmp	r3, #0
	beq	.L21
	ldr	r3, [r7, #8]
	cmp	r3, #0
	blt	.L21
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bcc	.L21
	bl	_Z16hb_object_createI9hb_blob_tEPT_v(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L22
.L21:
	movs	r3, #1
	b	.L23
.L22:
	movs	r3, #0
.L23:
	cmp	r3, #0
	beq	.L24
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L25
	ldr	r3, [r7, #32]
	ldr	r0, [r7]
	blx	r3
.L25:
	bl	hb_blob_get_empty(PLT)
	mov	r3, r0
	b	.L26
.L24:
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
	ldr	r2, [r7]
	str	r2, [r3, #60]
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #32]
	str	r2, [r3, #64]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #56]
	cmp	r3, #0
	bne	.L27
	ldr	r3, [r7, #20]
	movs	r2, #1
	str	r2, [r3, #56]
	ldr	r0, [r7, #20]
	bl	_ZL13_try_writableP9hb_blob_t(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L27
	ldr	r0, [r7, #20]
	bl	hb_blob_destroy(PLT)
	bl	hb_blob_get_empty(PLT)
	mov	r3, r0
	b	.L26
.L27:
	ldr	r3, [r7, #20]
.L26:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_blob_create, .-hb_blob_create
	.section	.text.hb_blob_create_sub_blob,"ax",%progbits
	.align	2
	.global	hb_blob_create_sub_blob
	.thumb
	.thumb_func
	.type	hb_blob_create_sub_blob, %function
hb_blob_create_sub_blob:
	.fnstart
.LFB85:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	.save {r4, r5, r6, r7, lr}
	.pad #36
	sub	sp, sp, #36
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r6, .L32
.LPIC0:
	add	r6, pc
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L29
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #52]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bhi	.L30
.L29:
	bl	hb_blob_get_empty(PLT)
	mov	r3, r0
	b	.L31
.L30:
	ldr	r0, [r7, #12]
	bl	hb_blob_make_immutable(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #48]
	ldr	r3, [r7, #8]
	adds	r5, r2, r3
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #52]
	ldr	r3, [r7, #8]
	subs	r3, r2, r3
	str	r3, [r7, #16]
	adds	r2, r7, #4
	add	r3, r7, #16
	mov	r0, r2
	mov	r1, r3
	bl	_Z3MINIjET_RKS0_S2_(PLT)
	mov	r4, r0
	ldr	r0, [r7, #12]
	bl	hb_blob_reference(PLT)
	mov	r3, r0
	ldr	r2, .L32+4
	ldr	r2, [r6, r2]
	str	r2, [sp]
	mov	r0, r5
	mov	r1, r4
	movs	r2, #1
	bl	hb_blob_create(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
.L31:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L33:
	.align	2
.L32:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.word	hb_blob_destroy(GOT)
	.fnend
	.size	hb_blob_create_sub_blob, .-hb_blob_create_sub_blob
	.section	.text.hb_blob_get_empty,"ax",%progbits
	.align	2
	.global	hb_blob_get_empty
	.thumb
	.thumb_func
	.type	hb_blob_get_empty, %function
hb_blob_get_empty:
	.fnstart
.LFB86:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L36
.LPIC1:
	add	r3, pc
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L37:
	.align	2
.L36:
	.word	_ZZ17hb_blob_get_emptyE12_hb_blob_nil-(.LPIC1+4)
	.cantunwind
	.fnend
	.size	hb_blob_get_empty, .-hb_blob_get_empty
	.section	.text.hb_blob_reference,"ax",%progbits
	.align	2
	.global	hb_blob_reference
	.thumb
	.thumb_func
	.type	hb_blob_reference, %function
hb_blob_reference:
	.fnstart
.LFB87:
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
	bl	_Z19hb_object_referenceI9hb_blob_tEPT_S2_(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_blob_reference, .-hb_blob_reference
	.section	.text.hb_blob_destroy,"ax",%progbits
	.align	2
	.global	hb_blob_destroy
	.thumb
	.thumb_func
	.type	hb_blob_destroy, %function
hb_blob_destroy:
	.fnstart
.LFB88:
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
	bl	_Z17hb_object_destroyI9hb_blob_tEbPT_(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L41
	b	.L40
.L41:
	ldr	r0, [r7, #4]
	bl	_ZL26_hb_blob_destroy_user_dataP9hb_blob_t(PLT)
	ldr	r0, [r7, #4]
	bl	free(PLT)
.L40:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_blob_destroy, .-hb_blob_destroy
	.section	.text.hb_blob_set_user_data,"ax",%progbits
	.align	2
	.global	hb_blob_set_user_data
	.thumb
	.thumb_func
	.type	hb_blob_set_user_data, %function
hb_blob_set_user_data:
	.fnstart
.LFB89:
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
	bl	_Z23hb_object_set_user_dataI9hb_blob_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_blob_set_user_data, .-hb_blob_set_user_data
	.section	.text.hb_blob_get_user_data,"ax",%progbits
	.align	2
	.global	hb_blob_get_user_data
	.thumb
	.thumb_func
	.type	hb_blob_get_user_data, %function
hb_blob_get_user_data:
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
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	_Z23hb_object_get_user_dataI9hb_blob_tEPvPT_P18hb_user_data_key_t(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_blob_get_user_data, .-hb_blob_get_user_data
	.section	.text.hb_blob_make_immutable,"ax",%progbits
	.align	2
	.global	hb_blob_make_immutable
	.thumb
	.thumb_func
	.type	hb_blob_make_immutable, %function
hb_blob_make_immutable:
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
	ldr	r0, [r7, #4]
	bl	_Z18hb_object_is_inertI9hb_blob_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L48
	b	.L47
.L48:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #44]
.L47:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_blob_make_immutable, .-hb_blob_make_immutable
	.section	.text.hb_blob_is_immutable,"ax",%progbits
	.align	2
	.global	hb_blob_is_immutable
	.thumb
	.thumb_func
	.type	hb_blob_is_immutable, %function
hb_blob_is_immutable:
	.fnstart
.LFB92:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #44]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	hb_blob_is_immutable, .-hb_blob_is_immutable
	.section	.text.hb_blob_get_length,"ax",%progbits
	.align	2
	.global	hb_blob_get_length
	.thumb
	.thumb_func
	.type	hb_blob_get_length, %function
hb_blob_get_length:
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
	ldr	r3, [r3, #52]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	hb_blob_get_length, .-hb_blob_get_length
	.section	.text.hb_blob_get_data,"ax",%progbits
	.align	2
	.global	hb_blob_get_data
	.thumb
	.thumb_func
	.type	hb_blob_get_data, %function
hb_blob_get_data:
	.fnstart
.LFB94:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L55
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #52]
	ldr	r3, [r7]
	str	r2, [r3]
.L55:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	hb_blob_get_data, .-hb_blob_get_data
	.section	.text.hb_blob_get_data_writable,"ax",%progbits
	.align	2
	.global	hb_blob_get_data_writable
	.thumb
	.thumb_func
	.type	hb_blob_get_data_writable, %function
hb_blob_get_data_writable:
	.fnstart
.LFB95:
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
	bl	_ZL13_try_writableP9hb_blob_t(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L58
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L59
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3]
.L59:
	movs	r3, #0
	b	.L60
.L58:
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L61
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #52]
	ldr	r3, [r7]
	str	r2, [r3]
.L61:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
.L60:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_blob_get_data_writable, .-hb_blob_get_data_writable
	.section	.text._ZL31_try_make_writable_inplace_unixP9hb_blob_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL31_try_make_writable_inplace_unixP9hb_blob_t, %function
_ZL31_try_make_writable_inplace_unixP9hb_blob_t:
	.fnstart
.LFB96:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZL31_try_make_writable_inplace_unixP9hb_blob_t, .-_ZL31_try_make_writable_inplace_unixP9hb_blob_t
	.section	.rodata
	.align	2
.LC0:
	.ascii	"BLOB\000"
	.align	2
.LC1:
	.ascii	"making writable inplace\012\000"
	.align	2
.LC2:
	.ascii	"making writable -> FAILED\012\000"
	.section	.text._ZL21_try_writable_inplaceP9hb_blob_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL21_try_writable_inplaceP9hb_blob_t, %function
_ZL21_try_writable_inplaceP9hb_blob_t:
	.fnstart
.LFB97:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #16
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [sp]
	movs	r3, #0
	str	r3, [sp, #4]
	ldr	r3, .L67
.LPIC2:
	add	r3, pc
	str	r3, [sp, #8]
	ldr	r3, .L67+4
.LPIC3:
	add	r3, pc
	mov	r0, r3
	ldr	r1, [r7, #4]
	ldr	r3, .L67+8
.LPIC4:
	add	r3, pc
	mov	r2, r3
	movs	r3, #0
	bl	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z(PLT)
	ldr	r0, [r7, #4]
	bl	_ZL31_try_make_writable_inplace_unixP9hb_blob_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L65
	movs	r3, #1
	b	.L66
.L65:
	movs	r3, #0
	str	r3, [sp]
	movs	r3, #0
	str	r3, [sp, #4]
	ldr	r3, .L67+12
.LPIC5:
	add	r3, pc
	str	r3, [sp, #8]
	ldr	r3, .L67+16
.LPIC6:
	add	r3, pc
	mov	r0, r3
	ldr	r1, [r7, #4]
	ldr	r3, .L67+20
.LPIC7:
	add	r3, pc
	mov	r2, r3
	movs	r3, #0
	bl	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #56]
	movs	r3, #0
.L66:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L68:
	.align	2
.L67:
	.word	.LC1-(.LPIC2+4)
	.word	.LC0-(.LPIC3+4)
	.word	_ZZL21_try_writable_inplaceP9hb_blob_tE19__PRETTY_FUNCTION__-(.LPIC4+4)
	.word	.LC2-(.LPIC5+4)
	.word	.LC0-(.LPIC6+4)
	.word	_ZZL21_try_writable_inplaceP9hb_blob_tE19__PRETTY_FUNCTION__-(.LPIC7+4)
	.cantunwind
	.fnend
	.size	_ZL21_try_writable_inplaceP9hb_blob_t, .-_ZL21_try_writable_inplaceP9hb_blob_t
	.section	.rodata
	.align	2
.LC3:
	.ascii	"current data is -> %p\012\000"
	.align	2
.LC4:
	.ascii	"dupped successfully -> %p\012\000"
	.section	.text._ZL13_try_writableP9hb_blob_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL13_try_writableP9hb_blob_t, %function
_ZL13_try_writableP9hb_blob_t:
	.fnstart
.LFB98:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #36
	sub	sp, sp, #36
	.setfp r7, sp, #16
	add	r7, sp, #16
	str	r0, [r7, #4]
	ldr	r4, .L78
.LPIC14:
	add	r4, pc
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #44]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L70
	movs	r3, #0
	b	.L71
.L70:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	cmp	r3, #2
	bne	.L72
	movs	r3, #1
	b	.L71
.L72:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	cmp	r3, #3
	bne	.L73
	ldr	r0, [r7, #4]
	bl	_ZL21_try_writable_inplaceP9hb_blob_t(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L73
	movs	r3, #1
	b	.L74
.L73:
	movs	r3, #0
.L74:
	cmp	r3, #0
	beq	.L75
	movs	r3, #1
	b	.L71
.L75:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	cmp	r3, #2
	bne	.L76
	movs	r3, #1
	b	.L71
.L76:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	ldr	r2, .L78+4
.LPIC8:
	add	r2, pc
	str	r2, [sp, #8]
	str	r3, [sp, #12]
	ldr	r3, .L78+8
.LPIC9:
	add	r3, pc
	mov	r0, r3
	ldr	r1, [r7, #4]
	ldr	r3, .L78+12
.LPIC10:
	add	r3, pc
	mov	r2, r3
	movs	r3, #0
	bl	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #52]
	mov	r0, r3
	bl	malloc(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L77
	movs	r3, #0
	b	.L71
.L77:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	ldr	r2, .L78+16
.LPIC11:
	add	r2, pc
	str	r2, [sp, #8]
	str	r3, [sp, #12]
	ldr	r3, .L78+20
.LPIC12:
	add	r3, pc
	mov	r0, r3
	ldr	r1, [r7, #4]
	ldr	r3, .L78+24
.LPIC13:
	add	r3, pc
	mov	r2, r3
	movs	r3, #0
	bl	_Z13_hb_debug_msgILi0EEvPKcPKvS1_bjiS1_z(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #48]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #52]
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	bl	memcpy(PLT)
	ldr	r0, [r7, #4]
	bl	_ZL26_hb_blob_destroy_user_dataP9hb_blob_t(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #2
	str	r2, [r3, #56]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #48]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #60]
	ldr	r3, [r7, #4]
	ldr	r2, .L78+28
	ldr	r2, [r4, r2]
	str	r2, [r3, #64]
	movs	r3, #1
.L71:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L79:
	.align	2
.L78:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC14+4)
	.word	.LC3-(.LPIC8+4)
	.word	.LC0-(.LPIC9+4)
	.word	_ZZL13_try_writableP9hb_blob_tE19__PRETTY_FUNCTION__-(.LPIC10+4)
	.word	.LC4-(.LPIC11+4)
	.word	.LC0-(.LPIC12+4)
	.word	_ZZL13_try_writableP9hb_blob_tE19__PRETTY_FUNCTION__-(.LPIC13+4)
	.word	free(GOT)
	.fnend
	.size	_ZL13_try_writableP9hb_blob_t, .-_ZL13_try_writableP9hb_blob_t
	.section	.text._Z3MINIjET_RKS0_S2_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z3MINIjET_RKS0_S2_, %function
_Z3MINIjET_RKS0_S2_:
	.fnstart
.LFB100:
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
	bcs	.L81
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	b	.L82
.L81:
	ldr	r3, [r7]
	ldr	r3, [r3]
.L82:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_Z3MINIjET_RKS0_S2_, .-_Z3MINIjET_RKS0_S2_
	.section	.text._ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4initEv,"axG",%progbits,_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4initEv,comdat
	.align	2
	.weak	_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4initEv
	.thumb
	.thumb_func
	.type	_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4initEv, %function
_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4initEv:
	.fnstart
.LFB101:
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
.LFB102:
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
	bne	.L86
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE6finishEv(PLT)
	b	.L85
.L86:
	ldr	r0, [r7]
	bl	_ZN10hb_mutex_t4lockEv(PLT)
	b	.L88
.L89:
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
.L88:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L89
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE6finishEv(PLT)
	ldr	r0, [r7]
	bl	_ZN10hb_mutex_t6unlockEv(PLT)
.L85:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE6finishERS2_, .-_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE6finishERS2_
	.section	.text._Z16hb_object_createI9hb_blob_tEPT_v,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z16hb_object_createI9hb_blob_tEPT_v, %function
_Z16hb_object_createI9hb_blob_tEPT_v:
	.fnstart
.LFB103:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	movs	r0, #1
	movs	r1, #68
	bl	calloc(PLT)
	mov	r3, r0
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L91
	ldr	r3, [r7, #4]
	b	.L92
.L91:
	ldr	r0, [r7, #4]
	bl	_Z14hb_object_initI9hb_blob_tEvPT_(PLT)
	ldr	r0, [r7, #4]
	ldr	r3, .L93
.LPIC15:
	add	r3, pc
	mov	r1, r3
	bl	_Z15hb_object_traceI9hb_blob_tEvPKT_PKc(PLT)
	ldr	r3, [r7, #4]
.L92:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L94:
	.align	2
.L93:
	.word	_ZZ16hb_object_createI9hb_blob_tEPT_vE19__PRETTY_FUNCTION__-(.LPIC15+4)
	.fnend
	.size	_Z16hb_object_createI9hb_blob_tEPT_v, .-_Z16hb_object_createI9hb_blob_tEPT_v
	.section	.text._Z19hb_object_referenceI9hb_blob_tEPT_S2_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z19hb_object_referenceI9hb_blob_tEPT_S2_, %function
_Z19hb_object_referenceI9hb_blob_tEPT_S2_:
	.fnstart
.LFB104:
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
	ldr	r3, .L101
.LPIC16:
	add	r3, pc
	mov	r1, r3
	bl	_Z15hb_object_traceI9hb_blob_tEvPKT_PKc(PLT)
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L96
	ldr	r0, [r7, #4]
	bl	_Z18hb_object_is_inertI9hb_blob_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L97
.L96:
	movs	r3, #1
	b	.L98
.L97:
	movs	r3, #0
.L98:
	cmp	r3, #0
	beq	.L99
	ldr	r3, [r7, #4]
	b	.L100
.L99:
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN20hb_reference_count_t3incEv(PLT)
	ldr	r3, [r7, #4]
.L100:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L102:
	.align	2
.L101:
	.word	_ZZ19hb_object_referenceI9hb_blob_tEPT_S2_E19__PRETTY_FUNCTION__-(.LPIC16+4)
	.fnend
	.size	_Z19hb_object_referenceI9hb_blob_tEPT_S2_, .-_Z19hb_object_referenceI9hb_blob_tEPT_S2_
	.section	.text._Z17hb_object_destroyI9hb_blob_tEbPT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z17hb_object_destroyI9hb_blob_tEbPT_, %function
_Z17hb_object_destroyI9hb_blob_tEbPT_:
	.fnstart
.LFB105:
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
	ldr	r3, .L110
.LPIC17:
	add	r3, pc
	mov	r1, r3
	bl	_Z15hb_object_traceI9hb_blob_tEvPKT_PKc(PLT)
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L104
	ldr	r0, [r7, #4]
	bl	_Z18hb_object_is_inertI9hb_blob_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L105
.L104:
	movs	r3, #1
	b	.L106
.L105:
	movs	r3, #0
.L106:
	cmp	r3, #0
	beq	.L107
	movs	r3, #0
	b	.L108
.L107:
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
	beq	.L109
	movs	r3, #0
	b	.L108
.L109:
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN20hb_reference_count_t6finishEv(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZN20hb_user_data_array_t6finishEv(PLT)
	movs	r3, #1
.L108:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L111:
	.align	2
.L110:
	.word	_ZZ17hb_object_destroyI9hb_blob_tEbPT_E19__PRETTY_FUNCTION__-(.LPIC17+4)
	.fnend
	.size	_Z17hb_object_destroyI9hb_blob_tEbPT_, .-_Z17hb_object_destroyI9hb_blob_tEbPT_
	.section	.text._Z23hb_object_set_user_dataI9hb_blob_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z23hb_object_set_user_dataI9hb_blob_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei, %function
_Z23hb_object_set_user_dataI9hb_blob_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei:
	.fnstart
.LFB106:
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
	beq	.L113
	ldr	r0, [r7, #12]
	bl	_Z18hb_object_is_inertI9hb_blob_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L114
.L113:
	movs	r3, #1
	b	.L115
.L114:
	movs	r3, #0
.L115:
	cmp	r3, #0
	beq	.L116
	movs	r3, #0
	b	.L117
.L116:
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
.L117:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_Z23hb_object_set_user_dataI9hb_blob_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei, .-_Z23hb_object_set_user_dataI9hb_blob_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei
	.section	.text._Z23hb_object_get_user_dataI9hb_blob_tEPvPT_P18hb_user_data_key_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z23hb_object_get_user_dataI9hb_blob_tEPvPT_P18hb_user_data_key_t, %function
_Z23hb_object_get_user_dataI9hb_blob_tEPvPT_P18hb_user_data_key_t:
	.fnstart
.LFB107:
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
	beq	.L119
	ldr	r0, [r7, #4]
	bl	_Z18hb_object_is_inertI9hb_blob_tEbPKT_(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L120
.L119:
	movs	r3, #1
	b	.L121
.L120:
	movs	r3, #0
.L121:
	cmp	r3, #0
	beq	.L122
	movs	r3, #0
	b	.L123
.L122:
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN20hb_user_data_array_t3getEP18hb_user_data_key_t(PLT)
	mov	r3, r0
.L123:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_Z23hb_object_get_user_dataI9hb_blob_tEPvPT_P18hb_user_data_key_t, .-_Z23hb_object_get_user_dataI9hb_blob_tEPvPT_P18hb_user_data_key_t
	.section	.text._Z18hb_object_is_inertI9hb_blob_tEbPKT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z18hb_object_is_inertI9hb_blob_tEbPKT_, %function
_Z18hb_object_is_inertI9hb_blob_tEbPKT_:
	.fnstart
.LFB108:
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
	.size	_Z18hb_object_is_inertI9hb_blob_tEbPKT_, .-_Z18hb_object_is_inertI9hb_blob_tEbPKT_
	.section	.text._ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4initEv,"axG",%progbits,_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4initEv,comdat
	.align	2
	.weak	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4initEv
	.thumb
	.thumb_func
	.type	_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4initEv, %function
_ZN21hb_prealloced_array_tIN20hb_user_data_array_t19hb_user_data_item_tELj2EE4initEv:
	.fnstart
.LFB109:
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
.LFB110:
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
	beq	.L128
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r0, r3
	bl	free(PLT)
.L128:
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
.LFB111:
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
.LFB112:
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
	.section	.text._Z14hb_object_initI9hb_blob_tEvPT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z14hb_object_initI9hb_blob_tEvPT_, %function
_Z14hb_object_initI9hb_blob_tEvPT_:
	.fnstart
.LFB113:
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
	.size	_Z14hb_object_initI9hb_blob_tEvPT_, .-_Z14hb_object_initI9hb_blob_tEvPT_
	.section	.rodata
	.align	2
.LC5:
	.ascii	"OBJECT\000"
	.align	2
.LC6:
	.ascii	"%s refcount=%d\000"
	.section	.text._Z15hb_object_traceI9hb_blob_tEvPKT_PKc,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z15hb_object_traceI9hb_blob_tEvPKT_PKc, %function
_Z15hb_object_traceI9hb_blob_tEvPKT_PKc:
	.fnstart
.LFB114:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #24
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L134
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	b	.L135
.L134:
	movs	r3, #0
.L135:
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	ldr	r2, .L136
.LPIC18:
	add	r2, pc
	str	r2, [sp, #8]
	ldr	r2, [r7]
	str	r2, [sp, #12]
	str	r3, [sp, #16]
	ldr	r3, .L136+4
.LPIC19:
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
.L137:
	.align	2
.L136:
	.word	.LC6-(.LPIC18+4)
	.word	.LC5-(.LPIC19+4)
	.cantunwind
	.fnend
	.size	_Z15hb_object_traceI9hb_blob_tEvPKT_PKc, .-_Z15hb_object_traceI9hb_blob_tEvPKT_PKc
	.section	.rodata._ZZ16hb_object_createI9hb_blob_tEPT_vE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZ16hb_object_createI9hb_blob_tEPT_vE19__PRETTY_FUNCTION__, %object
	.size	_ZZ16hb_object_createI9hb_blob_tEPT_vE19__PRETTY_FUNCTION__, 49
_ZZ16hb_object_createI9hb_blob_tEPT_vE19__PRETTY_FUNCTION__:
	.ascii	"Type* hb_object_create() [with Type = hb_blob_t]\000"
	.section	.rodata._ZZ17hb_blob_get_emptyE12_hb_blob_nil,"a",%progbits
	.align	2
	.type	_ZZ17hb_blob_get_emptyE12_hb_blob_nil, %object
	.size	_ZZ17hb_blob_get_emptyE12_hb_blob_nil, 68
_ZZ17hb_blob_get_emptyE12_hb_blob_nil:
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	0
	.space	24
	.byte	1
	.space	3
	.word	0
	.word	0
	.word	1
	.word	0
	.word	0
	.section	.rodata._ZZ19hb_object_referenceI9hb_blob_tEPT_S2_E19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZ19hb_object_referenceI9hb_blob_tEPT_S2_E19__PRETTY_FUNCTION__, %object
	.size	_ZZ19hb_object_referenceI9hb_blob_tEPT_S2_E19__PRETTY_FUNCTION__, 57
_ZZ19hb_object_referenceI9hb_blob_tEPT_S2_E19__PRETTY_FUNCTION__:
	.ascii	"Type* hb_object_reference(Type*) [with Type = hb_bl"
	.ascii	"ob_t]\000"
	.section	.rodata._ZZ17hb_object_destroyI9hb_blob_tEbPT_E19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZ17hb_object_destroyI9hb_blob_tEbPT_E19__PRETTY_FUNCTION__, %object
	.size	_ZZ17hb_object_destroyI9hb_blob_tEbPT_E19__PRETTY_FUNCTION__, 54
_ZZ17hb_object_destroyI9hb_blob_tEbPT_E19__PRETTY_FUNCTION__:
	.ascii	"bool hb_object_destroy(Type*) [with Type = hb_blob_"
	.ascii	"t]\000"
	.section	.rodata._ZZL21_try_writable_inplaceP9hb_blob_tE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZL21_try_writable_inplaceP9hb_blob_tE19__PRETTY_FUNCTION__, %object
	.size	_ZZL21_try_writable_inplaceP9hb_blob_tE19__PRETTY_FUNCTION__, 39
_ZZL21_try_writable_inplaceP9hb_blob_tE19__PRETTY_FUNCTION__:
	.ascii	"bool _try_writable_inplace(hb_blob_t*)\000"
	.section	.rodata._ZZL13_try_writableP9hb_blob_tE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZL13_try_writableP9hb_blob_tE19__PRETTY_FUNCTION__, %object
	.size	_ZZL13_try_writableP9hb_blob_tE19__PRETTY_FUNCTION__, 31
_ZZL13_try_writableP9hb_blob_tE19__PRETTY_FUNCTION__:
	.ascii	"bool _try_writable(hb_blob_t*)\000"
	.hidden	_ZN20hb_user_data_array_t3getEP18hb_user_data_key_t
	.hidden	_ZN20hb_user_data_array_t3setEP18hb_user_data_key_tPvPFvS2_Ei
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
