	.syntax unified
	.arch armv7-a
	.eabi_attribute 27, 3
	.eabi_attribute 28, 1
	.fpu neon
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.thumb
	.file	"text.c"
	.section	.text._libaroma_font_hb_glyph_h_origin_func,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_libaroma_font_hb_glyph_h_origin_func, %function
_libaroma_font_hb_glyph_h_origin_func:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r0, #1
	bx	lr
	.size	_libaroma_font_hb_glyph_h_origin_func, .-_libaroma_font_hb_glyph_h_origin_func
	.section	.text._libaroma_font_hb_glyph_v_kerning_func,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_libaroma_font_hb_glyph_v_kerning_func, %function
_libaroma_font_hb_glyph_v_kerning_func:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r0, #0
	bx	lr
	.size	_libaroma_font_hb_glyph_v_kerning_func, .-_libaroma_font_hb_glyph_v_kerning_func
	.section	.text._libaroma_font_hb_destroy_function,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_libaroma_font_hb_destroy_function, %function
_libaroma_font_hb_destroy_function:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	_libaroma_font_hb_destroy_function, .-_libaroma_font_hb_destroy_function
	.section	.text._libaroma_font_hb_ref_table,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_libaroma_font_hb_ref_table, %function
_libaroma_font_hb_ref_table:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	sub	sp, sp, #16
	ldr	r5, .L13
	movs	r6, #0
	add	r4, sp, #16
	mov	r8, r1
	ldr	r9, [r2]
.LPIC0:
	add	r5, pc
	str	r6, [r4, #-8]!
	adds	r5, r5, #12
	ldr	r10, .L13+4
	mov	r0, r5
	bl	omp_set_nest_lock(PLT)
	mov	r2, r6
	str	r4, [sp]
	mov	r3, r6
	mov	r0, r9
	mov	r1, r8
.LPIC4:
	add	r10, pc
	bl	FT_Load_Sfnt_Table(PLT)
	mov	r7, r0
	mov	r0, r5
	bl	omp_unset_nest_lock(PLT)
	cbnz	r7, .L7
	ldr	r0, [sp, #8]
	bl	malloc(PLT)
	mov	r6, r0
	cbz	r0, .L7
	mov	r0, r5
	bl	omp_set_nest_lock(PLT)
	str	r4, [sp]
	mov	r0, r9
	mov	r1, r8
	mov	r2, r7
	mov	r3, r6
	bl	FT_Load_Sfnt_Table(PLT)
	mov	r4, r0
	mov	r0, r5
	bl	omp_unset_nest_lock(PLT)
	cbnz	r4, .L7
	ldr	r4, .L13+8
	mov	r0, r6
	ldr	r1, [sp, #8]
	mov	r3, r6
	movs	r2, #2
	ldr	r4, [r10, r4]
	str	r4, [sp]
	bl	hb_blob_create(PLT)
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L7:
	movs	r0, #0
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L14:
	.align	2
.L13:
	.word	.LANCHOR0-(.LPIC0+4)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC4+4)
	.word	free(GOT)
	.size	_libaroma_font_hb_ref_table, .-_libaroma_font_hb_ref_table
	.section	.text._libaroma_font_hb_glyph_name_func,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_libaroma_font_hb_glyph_name_func, %function
_libaroma_font_hb_glyph_name_func:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r2
	ldr	r6, .L22
	mov	r7, r3
	ldr	r8, [r1]
	ldr	r5, [sp, #24]
.LPIC5:
	add	r6, pc
	adds	r6, r6, #12
	mov	r0, r6
	bl	omp_set_nest_lock(PLT)
	mov	r1, r4
	mov	r3, r5
	mov	r2, r7
	mov	r0, r8
	bl	FT_Get_Glyph_Name(PLT)
	clz	r4, r0
	lsrs	r4, r4, #5
	mov	r0, r6
	cmp	r5, #0
	ite	eq
	moveq	r5, #0
	andne	r5, r4, #1
	bl	omp_unset_nest_lock(PLT)
	cbz	r5, .L16
	ldrb	r3, [r7]	@ zero_extendqisi2
	cmp	r3, #0
	it	eq
	moveq	r4, #0
.L16:
	mov	r0, r4
	pop	{r4, r5, r6, r7, r8, pc}
.L23:
	.align	2
.L22:
	.word	.LANCHOR0-(.LPIC5+4)
	.size	_libaroma_font_hb_glyph_name_func, .-_libaroma_font_hb_glyph_name_func
	.section	.text._libaroma_font_hb_glyph_from_name_func,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_libaroma_font_hb_glyph_from_name_func, %function
_libaroma_font_hb_glyph_from_name_func:
	@ args = 8, pretend = 0, frame = 128
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	subs	r4, r3, #0
	sub	sp, sp, #132
	mov	r8, r2
	ldr	r7, [r1]
	ldr	r6, [sp, #160]
	blt	.L36
	ldr	r9, .L40
	cmp	r4, #127
	it	ge
	movge	r4, #127
	mov	r1, r8
	mov	r2, r4
	mov	r0, sp
.LPIC9:
	add	r9, pc
	bl	strncpy(PLT)
	add	r9, r9, #12
	add	r3, sp, #128
	add	r3, r3, r4
	movs	r2, #0
	mov	r0, r9
	strb	r2, [r3, #-128]
	bl	omp_set_nest_lock(PLT)
	mov	r0, r7
	mov	r1, sp
	bl	FT_Get_Name_Index(PLT)
	str	r0, [r6]
	mov	r0, r9
	bl	omp_unset_nest_lock(PLT)
.L26:
	ldr	r5, [r6]
	cbz	r5, .L37
.L27:
	adds	r0, r5, #0
	it	ne
	movne	r0, #1
.L31:
	add	sp, sp, #132
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L37:
	ldr	r0, .L40+4
.LPIC11:
	add	r0, pc
	adds	r0, r0, #12
	bl	omp_set_nest_lock(PLT)
	mov	r0, r7
	mov	r1, r5
	mov	r2, sp
	movs	r3, #128
	bl	FT_Get_Glyph_Name(PLT)
	cbnz	r0, .L28
	cmp	r4, #0
	mov	r0, sp
	mov	r1, r8
	blt	.L38
	mov	r2, r4
	bl	strncmp(PLT)
	clz	r0, r0
	lsrs	r0, r0, #5
	cbnz	r0, .L39
.L28:
	ldr	r0, .L40+8
.LPIC13:
	add	r0, pc
	adds	r0, r0, #12
	bl	omp_unset_nest_lock(PLT)
	ldr	r5, [r6]
	b	.L27
.L36:
	ldr	r5, .L40+12
.LPIC7:
	add	r5, pc
	adds	r5, r5, #12
	mov	r0, r5
	bl	omp_set_nest_lock(PLT)
	mov	r0, r7
	mov	r1, r8
	bl	FT_Get_Name_Index(PLT)
	str	r0, [r6]
	mov	r0, r5
	bl	omp_unset_nest_lock(PLT)
	b	.L26
.L38:
	bl	strcmp(PLT)
	clz	r0, r0
	lsrs	r0, r0, #5
	cmp	r0, #0
	beq	.L28
.L39:
	ldr	r0, .L40+16
.LPIC12:
	add	r0, pc
	adds	r0, r0, #12
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #1
	b	.L31
.L41:
	.align	2
.L40:
	.word	.LANCHOR0-(.LPIC9+4)
	.word	.LANCHOR0-(.LPIC11+4)
	.word	.LANCHOR0-(.LPIC13+4)
	.word	.LANCHOR0-(.LPIC7+4)
	.word	.LANCHOR0-(.LPIC12+4)
	.size	_libaroma_font_hb_glyph_from_name_func, .-_libaroma_font_hb_glyph_from_name_func
	.section	.text._libaroma_font_hb_glyph_h_kerning_func,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_libaroma_font_hb_glyph_h_kerning_func, %function
_libaroma_font_hb_glyph_h_kerning_func:
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	sub	sp, sp, #24
	ldr	r5, .L47
	mov	r8, r2
	add	r2, sp, #12
	mov	r7, r3
	ldr	r6, [r1]
	add	r1, sp, #8
.LPIC14:
	add	r5, pc
	bl	hb_font_get_ppem(PLT)
	adds	r5, r5, #12
	ldr	r4, [sp, #8]
	clz	r4, r4
	lsrs	r4, r4, #5
	mov	r0, r5
	bl	omp_set_nest_lock(PLT)
	mov	r3, r4
	add	r4, sp, #16
	mov	r0, r6
	mov	r1, r8
	mov	r2, r7
	str	r4, [sp]
	bl	FT_Get_Kerning(PLT)
	cbnz	r0, .L46
	mov	r0, r5
	bl	omp_unset_nest_lock(PLT)
	ldr	r0, [sp, #16]
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L46:
	mov	r0, r5
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #0
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L48:
	.align	2
.L47:
	.word	.LANCHOR0-(.LPIC14+4)
	.size	_libaroma_font_hb_glyph_h_kerning_func, .-_libaroma_font_hb_glyph_h_kerning_func
	.section	.text._libaroma_font_hb_glyph_v_advance_func,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_libaroma_font_hb_glyph_v_advance_func, %function
_libaroma_font_hb_glyph_v_advance_func:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	sub	sp, sp, #8
	ldr	r4, .L54
	mov	r5, r2
	ldr	r6, [r1]
.LPIC17:
	add	r4, pc
	adds	r4, r4, #12
	mov	r0, r4
	bl	omp_set_nest_lock(PLT)
	movs	r2, #16
	mov	r0, r6
	mov	r1, r5
	mov	r3, sp
	movt	r2, 3
	bl	FT_Get_Advance(PLT)
	cbnz	r0, .L53
	mov	r0, r4
	bl	omp_unset_nest_lock(PLT)
	ldr	r0, [sp]
	rsb	r0, r0, #512
	asrs	r0, r0, #10
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
.L53:
	mov	r0, r4
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #0
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
.L55:
	.align	2
.L54:
	.word	.LANCHOR0-(.LPIC17+4)
	.size	_libaroma_font_hb_glyph_v_advance_func, .-_libaroma_font_hb_glyph_v_advance_func
	.section	.text._libaroma_font_hb_glyph_h_advance_func,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_libaroma_font_hb_glyph_h_advance_func, %function
_libaroma_font_hb_glyph_h_advance_func:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r5, r2
	ldr	r4, .L61
	sub	sp, sp, #8
	ldr	r6, [r1]
.LPIC20:
	add	r4, pc
	adds	r4, r4, #12
	mov	r0, r4
	bl	omp_set_nest_lock(PLT)
	mov	r0, r6
	mov	r1, r5
	mov	r2, #196608
	mov	r3, sp
	bl	FT_Get_Advance(PLT)
	cbnz	r0, .L60
	mov	r0, r4
	bl	omp_unset_nest_lock(PLT)
	ldr	r0, [sp]
	add	r0, r0, #512
	asrs	r0, r0, #10
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
.L60:
	mov	r0, r4
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #0
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
.L62:
	.align	2
.L61:
	.word	.LANCHOR0-(.LPIC20+4)
	.size	_libaroma_font_hb_glyph_h_advance_func, .-_libaroma_font_hb_glyph_h_advance_func
	.section	.text._libaroma_font_hb_glyph_func,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_libaroma_font_hb_glyph_func, %function
_libaroma_font_hb_glyph_func:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r6, r2
	ldr	r5, .L65
	ldr	r7, [r1]
.LPIC23:
	add	r5, pc
	ldr	r4, [sp, #24]
	adds	r5, r5, #12
	mov	r0, r5
	bl	omp_set_nest_lock(PLT)
	mov	r1, r6
	mov	r0, r7
	bl	FT_Get_Char_Index(PLT)
	str	r0, [r4]
	mov	r0, r5
	bl	omp_unset_nest_lock(PLT)
	ldr	r0, [r4]
	adds	r0, r0, #0
	it	ne
	movne	r0, #1
	pop	{r3, r4, r5, r6, r7, pc}
.L66:
	.align	2
.L65:
	.word	.LANCHOR0-(.LPIC23+4)
	.size	_libaroma_font_hb_glyph_func, .-_libaroma_font_hb_glyph_func
	.section	.text.libaroma_font_freecache_cb,"ax",%progbits
	.align	2
	.global	libaroma_font_freecache_cb
	.thumb
	.thumb_func
	.type	libaroma_font_freecache_cb, %function
libaroma_font_freecache_cb:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0]
	cbz	r0, .L67
	b	FT_Done_Glyph(PLT)
.L67:
	bx	lr
	.size	libaroma_font_freecache_cb, .-libaroma_font_freecache_cb
	.section	.text._libaroma_text_concat_ex,"ax",%progbits
	.align	2
	.global	_libaroma_text_concat_ex
	.thumb
	.thumb_func
	.type	_libaroma_text_concat_ex, %function
_libaroma_text_concat_ex:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r1
	cmp	r1, #0
	beq	.L75
	mov	r5, r0
	ldrb	r0, [r1]	@ zero_extendqisi2
	cbz	r0, .L80
	ldr	r6, [r5]
	mov	r0, r1
	mov	r7, r2
	bl	strlen(PLT)
	add	r8, r0, #1
	cbz	r6, .L71
	mov	r0, r6
	bl	strlen(PLT)
	movs	r1, #1
	add	r0, r0, r8
	bl	calloc(PLT)
	movs	r2, #0
	str	r0, [r5]
	strb	r2, [r0]
	cbnz	r7, .L72
	mov	r1, r6
	bl	strcat(PLT)
	mov	r0, r6
	bl	free(PLT)
.L73:
	ldr	r0, [r5]
	mov	r1, r4
	bl	strcat(PLT)
	movs	r0, #1
	pop	{r4, r5, r6, r7, r8, pc}
.L71:
	mov	r0, r8
	movs	r1, #1
	bl	calloc(PLT)
	str	r0, [r5]
	strb	r6, [r0]
	cmp	r7, #0
	beq	.L73
	mov	r1, r4
	bl	strcat(PLT)
	movs	r0, #1
.L80:
	pop	{r4, r5, r6, r7, r8, pc}
.L72:
	mov	r1, r4
	bl	strcat(PLT)
	mov	r1, r6
	ldr	r0, [r5]
	bl	strcat(PLT)
	mov	r0, r6
	bl	free(PLT)
	movs	r0, #1
	pop	{r4, r5, r6, r7, r8, pc}
.L75:
	mov	r0, r1
	pop	{r4, r5, r6, r7, r8, pc}
	.size	_libaroma_text_concat_ex, .-_libaroma_text_concat_ex
	.section	.text._libaroma_text_compare,"ax",%progbits
	.align	2
	.global	_libaroma_text_compare
	.thumb
	.thumb_func
	.type	_libaroma_text_compare, %function
_libaroma_text_compare:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	mov	r4, r1
	mov	r5, r0
	bl	strlen(PLT)
	mov	r7, r0
	mov	r0, r4
	bl	strlen(PLT)
	cmp	r7, r0
	blt	.L90
	cmp	r0, #0
	ble	.L88
	ldrb	r2, [r5]	@ zero_extendqisi2
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L90
	mov	r2, r5
	mov	r1, r4
	movs	r3, #0
	b	.L85
.L86:
	ldrb	r5, [r2, #1]!	@ zero_extendqisi2
	ldrb	r4, [r1, #1]!	@ zero_extendqisi2
	cmp	r5, r4
	bne	.L90
.L85:
	adds	r3, r3, #1
	cmp	r0, r3
	bne	.L86
.L88:
	movs	r0, #1
	pop	{r4, r5, r7, pc}
.L90:
	movs	r0, #0
	pop	{r4, r5, r7, pc}
	.size	_libaroma_text_compare, .-_libaroma_text_compare
	.section	.text._libaroma_text_parse_strdup,"ax",%progbits
	.align	2
	.global	_libaroma_text_parse_strdup
	.thumb
	.thumb_func
	.type	_libaroma_text_parse_strdup, %function
_libaroma_text_parse_strdup:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r5, r0
	cbz	r0, .L94
	bl	strlen(PLT)
	subs	r4, r0, #0
	ble	.L95
	adds	r0, r4, #1
	bl	malloc(PLT)
	mov	r2, r4
	mov	r1, r5
	bl	memcpy(PLT)
	movs	r2, #0
	mov	r3, r0
	strb	r2, [r3, r4]
	pop	{r3, r4, r5, pc}
.L95:
	movs	r0, #0
	pop	{r3, r4, r5, pc}
.L94:
	pop	{r3, r4, r5, pc}
	.size	_libaroma_text_parse_strdup, .-_libaroma_text_parse_strdup
	.section	.text._libaroma_text_change_current,"ax",%progbits
	.align	2
	.global	_libaroma_text_change_current
	.thumb
	.thumb_func
	.type	_libaroma_text_change_current, %function
_libaroma_text_change_current:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r4, r0
	mov	r0, r1
	bl	_libaroma_text_parse_strdup(PLT)
	mov	r5, r0
	ldr	r0, [r4, #40]
	cbz	r0, .L98
	bl	free(PLT)
.L98:
	str	r5, [r4, #40]
	pop	{r3, r4, r5, pc}
	.size	_libaroma_text_change_current, .-_libaroma_text_change_current
	.section	.text._libaroma_text_parse_tag,"ax",%progbits
	.align	2
	.global	_libaroma_text_parse_tag
	.thumb
	.thumb_func
	.type	_libaroma_text_parse_tag, %function
_libaroma_text_parse_tag:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
	mov	r6, r1
	mov	r8, r2
	mov	r9, r3
	mov	r5, r0
	bl	strlen(PLT)
	cmp	r0, #0
	ldrb	r7, [sp, #32]	@ zero_extendqisi2
	blt	.L147
	ldrb	r4, [r5]	@ zero_extendqisi2
	cmp	r4, #47
	beq	.L106
	cmp	r0, #1
	beq	.L186
	cmp	r4, #104
	beq	.L117
	bls	.L187
	cmp	r4, #108
	beq	.L122
	cmp	r4, #115
	beq	.L123
	cmp	r4, #105
	beq	.L188
.L147:
	movs	r3, #0
.L105:
	mov	r0, r3
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.L106:
	cmp	r0, #2
	ldrb	r3, [r5, #1]	@ zero_extendqisi2
	beq	.L189
	subs	r3, r3, #97
	cmp	r3, #18
	bhi	.L147
	adr	r1, .L140
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L140:
	.word	.L139+1-.L140
	.word	.L147+1-.L140
	.word	.L147+1-.L140
	.word	.L147+1-.L140
	.word	.L147+1-.L140
	.word	.L141+1-.L140
	.word	.L147+1-.L140
	.word	.L147+1-.L140
	.word	.L147+1-.L140
	.word	.L147+1-.L140
	.word	.L147+1-.L140
	.word	.L142+1-.L140
	.word	.L147+1-.L140
	.word	.L147+1-.L140
	.word	.L147+1-.L140
	.word	.L147+1-.L140
	.word	.L147+1-.L140
	.word	.L147+1-.L140
	.word	.L143+1-.L140
.L187:
	cmp	r4, #97
	beq	.L119
	cmp	r4, #102
	beq	.L120
	cmp	r4, #35
	bne	.L147
	lsls	r2, r6, #31
	bpl	.L190
.L185:
	movs	r3, #1
	mov	r0, r3
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.L186:
	cmp	r4, #105
	beq	.L108
	bls	.L191
	cmp	r4, #115
	beq	.L112
	cmp	r4, #117
	bne	.L192
	ldr	r1, [sp, #36]
	mov	r3, r0
	ldrb	r2, [r1, #16]	@ zero_extendqisi2
	orr	r2, r2, #16
	strb	r2, [r1, #16]
	b	.L105
.L189:
	cmp	r3, #105
	beq	.L132
	bhi	.L133
	cmp	r3, #42
	beq	.L134
	cmp	r3, #98
	beq	.L135
	cmp	r3, #35
	bne	.L147
	lsls	r5, r6, #31
	itt	pl
	ldrpl	r1, [sp, #36]
	strhpl	r9, [r1, #20]	@ movhi
	b	.L185
.L188:
	ldr	r1, .L193+12
	mov	r0, r5
.LPIC41:
	add	r1, pc
	bl	_libaroma_text_compare(PLT)
	cmp	r0, #0
	beq	.L147
	lsls	r7, r6, #25
	bmi	.L185
	adds	r0, r5, #4
	bl	_libaroma_text_parse_strdup(PLT)
	ldr	r3, [sp, #36]
	ldr	r1, [sp, #36]
	ldrb	r2, [r3, #17]	@ zero_extendqisi2
	movs	r3, #2
	str	r0, [r1, #24]
	and	r2, r2, #223
	orr	r2, r2, #32
	strb	r2, [r1, #17]
	b	.L105
.L191:
	cmp	r4, #42
	beq	.L110
	cmp	r4, #98
	bne	.L147
	ldr	r1, [sp, #36]
	mov	r3, r0
	ldrb	r2, [r1, #16]	@ zero_extendqisi2
	orr	r2, r2, #4
	strb	r2, [r1, #16]
	b	.L105
.L117:
	ldrb	r3, [r5, #1]	@ zero_extendqisi2
	cmp	r3, #114
	bne	.L147
	lsls	r6, r6, #24
	bmi	.L185
	ldr	r3, [sp, #36]
	ldr	r0, [sp, #36]
	ldrb	r2, [r3, #17]	@ zero_extendqisi2
	movs	r3, #2
	and	r2, r2, #175
	orr	r2, r2, #80
	strb	r2, [r0, #17]
	b	.L105
.L123:
	ldr	r1, .L193+16
	mov	r0, r5
.LPIC39:
	add	r1, pc
	bl	_libaroma_text_compare(PLT)
	cmp	r0, #0
	beq	.L147
	and	r6, r6, #4
	and	r1, r6, #255
	cmp	r6, #0
	bne	.L185
	mov	r2, r1
	adds	r0, r5, #5
	bl	strtoul(PLT)
	ldr	r1, [sp, #36]
	usat	r0, #4, r0
	movs	r3, #1
	ldrb	r2, [r1, #18]	@ zero_extendqisi2
	and	r2, r2, #15
	orr	r2, r2, r0, lsl #4
	strb	r2, [r1, #18]
	b	.L105
.L122:
	ldr	r1, .L193+20
	mov	r0, r5
.LPIC40:
	add	r1, pc
	bl	_libaroma_text_compare(PLT)
	cmp	r0, #0
	beq	.L147
	and	r6, r6, #32
	and	r1, r6, #255
	cmp	r6, #0
	bne	.L185
	add	r0, r5, #12
	bl	strtof(PLT)
	fconsts	s15, #4
	fcmpes	s0, s15
	fmstat
	fconsts	s15, #112
	it	gt
	movgt	r3, #1
	fcmpes	s0, s15
	it	le
	movle	r3, #0
	fmstat
	it	mi
	orrmi	r3, r3, #1
	cbz	r3, .L130
	ldr	r2, [sp, #36]
	fldd	d16, .L193
	ldrb	r2, [r2, #49]	@ zero_extendqisi2
	fmsr	s15, r2	@ int
	fuitos	s15, s15
	fcvtds	d17, s15
	fmuld	d16, d17, d16
	fcvtsd	s0, d16
.L130:
	flds	s15, .L193+8
	fmuls	s0, s0, s15
	bl	lroundf(PLT)
	ldr	r3, [sp, #36]
	ldr	r1, [sp, #36]
	ldrb	r2, [r3, #17]	@ zero_extendqisi2
	movs	r3, #1
	strb	r0, [r1, #28]
	and	r2, r2, #239
	orr	r2, r2, #16
	strb	r2, [r1, #17]
	b	.L105
.L120:
	ldr	r1, .L193+24
	mov	r0, r5
.LPIC38:
	add	r1, pc
	bl	_libaroma_text_compare(PLT)
	cmp	r0, #0
	beq	.L147
	and	r6, r6, #2
	and	r1, r6, #255
	cmp	r6, #0
	bne	.L185
	mov	r2, r1
	adds	r0, r5, #5
	bl	strtoul(PLT)
	ldr	r3, [sp, #36]
	bic	r0, r0, r0, asr #31
	ldrb	r2, [r3, #18]	@ zero_extendqisi2
	movs	r3, #1
	bic	r2, r2, #15
	cmp	r0, #9
	ite	le
	orrle	r2, r2, r0
	orrgt	r2, r2, #9
	ldr	r0, [sp, #36]
	strb	r2, [r0, #18]
	b	.L105
.L119:
	ldr	r1, .L193+28
	mov	r0, r5
.LPIC33:
	add	r1, pc
	bl	_libaroma_text_compare(PLT)
	cmp	r0, #0
	beq	.L147
	lsls	r3, r6, #28
	bmi	.L185
	ldr	r1, .L193+32
	adds	r5, r5, #6
	mov	r0, r5
.LPIC34:
	add	r1, pc
	bl	strcmp(PLT)
	cmp	r0, #0
	bne	.L126
	ldr	r0, [sp, #36]
	ldrb	r3, [r0, #16]	@ zero_extendqisi2
	bic	r3, r3, #3
	strb	r3, [r0, #16]
.L127:
	ldr	r1, [sp, #36]
	movs	r3, #1
	ldrb	r2, [r1, #17]	@ zero_extendqisi2
	and	r2, r2, #239
	orr	r2, r2, #16
	strb	r2, [r1, #17]
	b	.L105
.L143:
	ldr	r1, .L193+36
	mov	r0, r5
.LPIC45:
	add	r1, pc
	bl	strcmp(PLT)
	cmp	r0, #0
	bne	.L147
	lsls	r3, r6, #29
	bmi	.L185
	ldr	r3, [sp, #36]
	and	r7, r7, #240
	ldr	r0, [sp, #36]
	ldrb	r2, [r3, #18]	@ zero_extendqisi2
	movs	r3, #1
	and	r2, r2, #15
	orrs	r2, r2, r7
	strb	r2, [r0, #18]
	b	.L105
.L142:
	ldr	r1, .L193+40
	mov	r0, r5
.LPIC43:
	add	r1, pc
	bl	_libaroma_text_compare(PLT)
	cmp	r0, #0
	beq	.L147
	lsls	r1, r6, #26
	bmi	.L185
	ldr	r1, [sp, #36]
	movs	r3, #1
	ldr	r0, [sp, #36]
	ldrb	r2, [r1, #17]	@ zero_extendqisi2
	ldrb	r1, [r1, #49]	@ zero_extendqisi2
	and	r2, r2, #239
	orr	r2, r2, #16
	strb	r1, [r0, #28]
	strb	r2, [r0, #17]
	b	.L105
.L141:
	ldr	r1, .L193+44
	mov	r0, r5
.LPIC44:
	add	r1, pc
	bl	strcmp(PLT)
	cmp	r0, #0
	bne	.L147
	lsls	r2, r6, #30
	bmi	.L185
	ldr	r1, [sp, #36]
	and	r7, r7, #15
	movs	r3, #1
	ldrb	r2, [r1, #18]	@ zero_extendqisi2
	bic	r2, r2, #15
	orrs	r2, r2, r7
	strb	r2, [r1, #18]
	b	.L105
.L139:
	ldr	r1, .L193+48
	mov	r0, r5
.LPIC42:
	add	r1, pc
	bl	strcmp(PLT)
	cmp	r0, #0
	bne	.L147
	lsls	r0, r6, #28
	bmi	.L185
	ldr	r3, [sp, #36]
	and	r8, r8, #3
	ldr	r0, [sp, #36]
	ldrb	r1, [r3, #16]	@ zero_extendqisi2
	ldrb	r2, [r3, #17]	@ zero_extendqisi2
	movs	r3, #1
	bic	r1, r1, #3
	and	r2, r2, #239
	orr	r1, r8, r1
	orr	r2, r2, #16
	strb	r1, [r0, #16]
	strb	r2, [r0, #17]
	b	.L105
.L133:
	cmp	r3, #115
	beq	.L137
	cmp	r3, #117
	beq	.L138
	cmp	r3, #113
	bne	.L147
.L134:
	lsls	r4, r6, #27
	bmi	.L147
	ldr	r2, [sp, #36]
	ldrb	r3, [r2, #17]	@ zero_extendqisi2
	ands	r2, r3, #15
	beq	.L185
	and	r1, r3, #224
	ldr	r0, [sp, #36]
	subs	r3, r2, #1
	orr	r2, r1, #16
	and	r3, r3, #15
	orrs	r2, r2, r3
	movs	r3, #1
	strb	r2, [r0, #17]
	b	.L105
.L192:
	cmp	r4, #113
	bne	.L147
.L110:
	lsls	r1, r6, #27
	bmi	.L185
	ldr	r1, [sp, #36]
	ldrb	r2, [r1, #17]	@ zero_extendqisi2
	and	r3, r2, #15
	cmp	r3, #7
	bhi	.L185
	cmp	r4, #42
	lsr	r2, r2, #4
	it	eq
	ldreq	r0, [sp, #36]
	add	r3, r3, #1
	orr	r1, r2, #1
	ittt	eq
	ldrbeq	r2, [r0, #56]	@ zero_extendqisi2
	orreq	r2, r2, #2
	strbeq	r2, [r0, #56]
	and	r2, r3, #15
	orr	r2, r2, r1, lsl #4
	ldr	r1, [sp, #36]
	movs	r3, #1
	strb	r2, [r1, #17]
	b	.L105
.L190:
	mov	r0, r5
	bl	libaroma_rgb_from_string(PLT)
	ldr	r2, [sp, #36]
	movs	r3, #1
	strh	r0, [r2, #20]	@ movhi
	b	.L105
.L108:
	ldr	r3, [sp, #36]
	ldrb	r2, [r3, #16]	@ zero_extendqisi2
	mov	r3, r0
	ldr	r0, [sp, #36]
	orr	r2, r2, #8
	strb	r2, [r0, #16]
	b	.L105
.L112:
	ldr	r3, [sp, #36]
	ldrb	r2, [r3, #16]	@ zero_extendqisi2
	mov	r3, r0
	ldr	r0, [sp, #36]
	orr	r2, r2, #32
	strb	r2, [r0, #16]
	b	.L105
.L126:
	ldr	r1, .L193+52
	mov	r0, r5
.LPIC35:
	add	r1, pc
	bl	strcmp(PLT)
	cbnz	r0, .L128
	ldr	r1, [sp, #36]
	ldrb	r3, [r1, #16]	@ zero_extendqisi2
	bic	r3, r3, #3
	orr	r3, r3, #1
	strb	r3, [r1, #16]
	b	.L127
.L138:
	ldr	r1, [sp, #36]
	movs	r3, #1
	ldrb	r2, [r1, #16]	@ zero_extendqisi2
	bic	r2, r2, #16
	strb	r2, [r1, #16]
	b	.L105
.L137:
	ldr	r3, [sp, #36]
	ldr	r0, [sp, #36]
	ldrb	r2, [r3, #16]	@ zero_extendqisi2
	movs	r3, #1
	bic	r2, r2, #32
	strb	r2, [r0, #16]
	b	.L105
.L135:
	ldr	r1, [sp, #36]
	movs	r3, #1
	ldrb	r2, [r1, #16]	@ zero_extendqisi2
	bic	r2, r2, #4
	strb	r2, [r1, #16]
	b	.L105
.L132:
	ldr	r3, [sp, #36]
	ldr	r0, [sp, #36]
	ldrb	r2, [r3, #16]	@ zero_extendqisi2
	movs	r3, #1
	bic	r2, r2, #8
	strb	r2, [r0, #16]
	b	.L105
.L128:
	ldr	r1, .L193+56
	mov	r0, r5
.LPIC36:
	add	r1, pc
	bl	strcmp(PLT)
	cbnz	r0, .L129
	ldr	r2, [sp, #36]
	ldrb	r3, [r2, #16]	@ zero_extendqisi2
	bic	r3, r3, #3
	orr	r3, r3, #2
	strb	r3, [r2, #16]
	b	.L127
.L129:
	ldr	r1, .L193+60
	mov	r0, r5
.LPIC37:
	add	r1, pc
	bl	strcmp(PLT)
	cmp	r0, #0
	bne	.L127
	ldr	r0, [sp, #36]
	ldrb	r3, [r0, #16]	@ zero_extendqisi2
	orr	r3, r3, #3
	strb	r3, [r0, #16]
	b	.L127
.L194:
	.align	3
.L193:
	.word	1202590843
	.word	1065646817
	.word	1120403456
	.word	.LC8-(.LPIC41+4)
	.word	.LC6-(.LPIC39+4)
	.word	.LC7-(.LPIC40+4)
	.word	.LC5-(.LPIC38+4)
	.word	.LC0-(.LPIC33+4)
	.word	.LC1-(.LPIC34+4)
	.word	.LC12-(.LPIC45+4)
	.word	.LC10-(.LPIC43+4)
	.word	.LC11-(.LPIC44+4)
	.word	.LC9-(.LPIC42+4)
	.word	.LC2-(.LPIC35+4)
	.word	.LC3-(.LPIC36+4)
	.word	.LC4-(.LPIC37+4)
	.size	_libaroma_text_parse_tag, .-_libaroma_text_parse_tag
	.section	.text._libaroma_text_parse,"ax",%progbits
	.align	2
	.global	_libaroma_text_parse
	.thumb
	.thumb_func
	.type	_libaroma_text_parse, %function
_libaroma_text_parse:
	@ args = 12, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, r0
	ldrb	r5, [sp, #48]	@ zero_extendqisi2
	mov	fp, r1
	movs	r0, #80
	movs	r1, #1
	ldrb	r8, [sp, #40]	@ zero_extendqisi2
	mov	r10, r2
	mov	r9, r3
	cmp	r5, #99
	it	ls
	movls	r5, #120
	bl	calloc(PLT)
	movs	r3, #0
	mov	r4, r0
	strb	r5, [r0, #12]
	add	r6, r0, #16
	strb	r10, [r0]
	strb	r8, [r0, #2]
	strh	r9, [r0, #4]	@ movhi
	ldrb	lr, [r0, #57]	@ zero_extendqisi2
	str	r3, [r0, #8]
	ldmia	r0, {r0, r1, r2, r3}
	orr	lr, lr, #2
	strb	lr, [r4, #57]
	stmia	r6, {r0, r1, r2, r3}
	mov	r0, r7
	bl	_libaroma_text_parse_strdup(PLT)
	movs	r3, #1
	ldr	r2, [sp, #44]
	str	r0, [r4, #40]
	mov	r0, r4
	strb	fp, [r4, #44]
	strb	r5, [r4, #49]
	strb	r10, [r4, #45]
	strh	r9, [r4, #46]	@ movhi
	strb	r8, [r4, #48]
	str	r2, [r4, #52]
	strb	r3, [r4, #56]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	_libaroma_text_parse, .-_libaroma_text_parse
	.section	.text._libaroma_text_parse_next,"ax",%progbits
	.align	2
	.global	_libaroma_text_parse_next
	.thumb
	.thumb_func
	.type	_libaroma_text_parse_next, %function
_libaroma_text_parse_next:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	movs	r5, #0
	mov	r4, r0
	strb	r5, [r1]
	sub	sp, sp, #20
	mov	r6, r1
	ldr	r0, [r0, #8]
	cbz	r0, .L200
	bl	free(PLT)
	str	r5, [r4, #8]
.L200:
	mov	r3, r4
	ldrb	r1, [r4, #17]	@ zero_extendqisi2
	ldr	lr, [r3, #16]!	@ unaligned
	movs	r2, #0
	and	r1, r1, #15
	ldr	r5, [r3, #8]	@ unaligned
	ldr	r7, [r3, #4]	@ unaligned
	ldr	r0, [r3, #12]	@ unaligned
	str	lr, [r4]	@ unaligned
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	str	r5, [r4, #8]	@ unaligned
	str	r7, [r4, #4]	@ unaligned
	str	r0, [r4, #12]	@ unaligned
	lsrs	r3, r3, #4
	strb	r1, [r4, #17]
	str	r2, [r4, #24]
	ands	r5, r3, #6
	it	ne
	movne	r5, #33
	beq	.L259
.L241:
	mov	r0, r5
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L259:
	lsls	r2, r3, #31
	bpl	.L202
	ldrb	r3, [r4, #57]	@ zero_extendqisi2
	lsls	r3, r3, #30
	it	pl
	movpl	r5, #3
	bpl	.L241
.L202:
	ldr	fp, [r4, #40]
	cmp	fp, #0
	beq	.L229
	mov	r0, fp
	bl	strlen(PLT)
	cmp	r0, #0
	ble	.L229
	ldrb	r2, [fp]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L241
	movs	r7, #0
	movw	r8, #1022
	add	r3, r4, #40
	str	r3, [sp, #12]
.L222:
	cmp	r2, #13
	beq	.L205
	bls	.L260
	cmp	r2, #32
	beq	.L248
	cmp	r2, #60
	bne	.L204
	ldr	r3, [r4, #40]
	cmp	fp, r3
	bls	.L209
	ldrb	r3, [fp, #-1]	@ zero_extendqisi2
	cmp	r3, #92
	bne	.L209
	cbz	r7, .L205
	adds	r3, r6, r7
	strb	r2, [r3, #-1]
.L205:
	add	fp, fp, #1
.L225:
	cmp	r7, r8
	bgt	.L261
	ldrb	r2, [fp]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L222
	cmp	r7, #0
	beq	.L241
	mov	r0, r4
	mov	r1, fp
	str	r2, [sp, #8]
	movs	r5, #5
	bl	_libaroma_text_change_current(PLT)
	ldr	r2, [sp, #8]
	strb	r2, [r6, r7]
	b	.L241
.L229:
	movs	r5, #128
	mov	r0, r5
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L209:
	add	r10, fp, #1
	movs	r1, #62
	mov	r0, r10
	bl	strchr(PLT)
	mov	r9, r0
	cmp	r0, #0
	beq	.L210
	mov	r3, #0
	strb	r3, [r0]
	ldrb	r3, [fp, #1]	@ zero_extendqisi2
	cmp	r3, #126
	beq	.L262
	ldrb	lr, [r4, #48]	@ zero_extendqisi2
	mov	r0, r10
	ldrb	r1, [r4, #44]	@ zero_extendqisi2
	ldrb	r2, [r4, #45]	@ zero_extendqisi2
	ldrh	r3, [r4, #46]
	str	r4, [sp, #4]
	str	lr, [sp]
	bl	_libaroma_text_parse_tag(PLT)
	cmp	r0, #0
	bne	.L263
	mov	r3, #62
	mov	fp, r10
	strb	r3, [r9]
	mov	r3, #60
	strb	r3, [r6, r7]
	adds	r7, r7, #1
	b	.L225
.L260:
	sub	r3, r2, #9
	cmp	r3, #1
	bls	.L264
.L204:
	strb	r2, [r6, r7]
	adds	r7, r7, #1
	b	.L205
.L264:
	cmp	r2, #10
	it	eq
	moveq	r5, #3
	beq	.L217
	cmp	r2, #32
	it	ne
	movne	r5, #17
	beq	.L248
.L217:
	mov	r0, r4
	add	r1, fp, #1
	bl	_libaroma_text_change_current(PLT)
	movs	r2, #0
	cmp	r7, r2
	ite	ne
	movne	r3, #4
	moveq	r3, r2
	strb	r2, [r6, r7]
	orrs	r5, r5, r3
	b	.L241
.L262:
	add	fp, fp, #2
	mov	r0, fp
	bl	libaroma_lang_get(PLT)
	mov	r10, r0
	cbz	r0, .L265
	add	r1, r9, #1
	mov	r0, r4
	bl	_libaroma_text_change_current(PLT)
.L224:
	ldr	r0, [sp, #12]
	mov	r1, r10
	movs	r2, #1
	bl	_libaroma_text_concat_ex(PLT)
.L213:
	mov	r0, r10
	ldr	fp, [r4, #40]
	bl	free(PLT)
	b	.L225
.L248:
	movs	r5, #9
	b	.L217
.L210:
	mov	r3, #60
	mov	fp, r10
	strb	r3, [r6, r7]
	adds	r7, r7, #1
	b	.L225
.L261:
	mov	r0, r4
	mov	r1, fp
	bl	_libaroma_text_change_current(PLT)
	movs	r3, #0
	movs	r5, #69
	strb	r3, [r6, r7]
	b	.L241
.L265:
	mov	r0, fp
	bl	_libaroma_text_parse_strdup(PLT)
	add	r1, r9, #1
	mov	r10, r0
	mov	r0, r4
	bl	_libaroma_text_change_current(PLT)
	cmp	r10, #0
	beq	.L213
	b	.L224
.L263:
	mov	r0, r4
	add	r1, r9, #1
	bl	_libaroma_text_change_current(PLT)
	mov	r3, #0
	cmp	r7, #0
	ite	ne
	movne	r5, #5
	moveq	r5, #1
	strb	r3, [r6, r7]
	b	.L241
	.size	_libaroma_text_parse_next, .-_libaroma_text_parse_next
	.section	.text._libaroma_font_hb_free_functions,"ax",%progbits
	.align	2
	.global	_libaroma_font_hb_free_functions
	.thumb
	.thumb_func
	.type	_libaroma_font_hb_free_functions, %function
_libaroma_font_hb_free_functions:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L272
.LPIC46:
	add	r4, pc
	ldr	r0, [r4]
	cbz	r0, .L266
	bl	hb_font_funcs_destroy(PLT)
	movs	r3, #0
	str	r3, [r4]
.L266:
	pop	{r4, pc}
.L273:
	.align	2
.L272:
	.word	.LANCHOR1-(.LPIC46+4)
	.size	_libaroma_font_hb_free_functions, .-_libaroma_font_hb_free_functions
	.section	.text._libaroma_font_hb_update_scale,"ax",%progbits
	.align	2
	.global	_libaroma_font_hb_update_scale
	.thumb
	.thumb_func
	.type	_libaroma_font_hb_update_scale, %function
_libaroma_font_hb_update_scale:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	add	r0, r0, r0, lsl #2
	ldr	r7, .L277
	lsls	r6, r0, #2
.LPIC48:
	add	r7, pc
	add	r8, r7, r6
	ldr	r0, [r8, #4]
	cbz	r0, .L274
	ldr	r1, [r7, r6]
	mov	r2, #32768
	movs	r3, #0
	mov	r10, r2
	mov	fp, r3
	ldr	r4, [r1, #88]
	ldrh	r1, [r1, #68]
	ldr	r5, [r4, #16]
	ldr	lr, [r4, #20]
	smlal	r10, fp, r1, r5
	smlal	r2, r3, r1, lr
	lsr	r4, r10, #16
	orr	r4, r4, fp, lsl #16
	lsrs	r2, r2, #16
	mov	r1, r4
	orr	r2, r2, r3, lsl #16
	bl	hb_font_set_scale(PLT)
	ldr	r3, [r7, r6]
	ldr	r0, [r8, #4]
	pop	{r4, r5, r6, r7, r8, r10, fp, lr}
	ldr	r3, [r3, #88]
	ldrh	r1, [r3, #12]
	ldrh	r2, [r3, #14]
	b	hb_font_set_ppem(PLT)
.L274:
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L278:
	.align	2
.L277:
	.word	.LANCHOR2-(.LPIC48+4)
	.size	_libaroma_font_hb_update_scale, .-_libaroma_font_hb_update_scale
	.section	.text._libaroma_font_hb_free,"ax",%progbits
	.align	2
	.global	_libaroma_font_hb_free
	.thumb
	.thumb_func
	.type	_libaroma_font_hb_free, %function
_libaroma_font_hb_free:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	add	r0, r0, r0, lsl #2
	ldr	r4, .L285
.LPIC49:
	add	r4, pc
	add	r4, r4, r0, lsl #2
	ldr	r0, [r4, #4]
	cbz	r0, .L279
	bl	hb_font_destroy(PLT)
	movs	r3, #0
	str	r3, [r4, #4]
.L279:
	pop	{r4, pc}
.L286:
	.align	2
.L285:
	.word	.LANCHOR2-(.LPIC49+4)
	.size	_libaroma_font_hb_free, .-_libaroma_font_hb_free
	.section	.text._libaroma_font_hb_init,"ax",%progbits
	.align	2
	.global	_libaroma_font_hb_init
	.thumb
	.thumb_func
	.type	_libaroma_font_hb_init, %function
_libaroma_font_hb_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	add	r3, r0, r0, lsl #2
	ldr	r5, .L295
	sub	sp, sp, #8
	lsls	r3, r3, #2
	mov	r7, r0
.LPIC51:
	add	r5, pc
	ldr	r6, [r5, r3]
	add	r5, r5, r3
	ldr	r3, [r6, #104]
	ldr	r4, [r3, #20]
	cbz	r4, .L293
	ldr	r0, .L295+4
	mov	r1, r5
	movs	r2, #0
.LPIC52:
	add	r0, pc
	bl	hb_face_create_for_tables(PLT)
	mov	r4, r0
.L289:
	mov	r0, r4
	ldr	r1, [r6, #4]
	bl	hb_face_set_index(PLT)
	ldrh	r1, [r6, #68]
	mov	r0, r4
	ldr	r6, .L295+8
	bl	hb_face_set_upem(PLT)
	mov	r0, r4
	bl	hb_font_create(PLT)
.LPIC53:
	add	r6, pc
	mov	r8, r0
	mov	r0, r4
	bl	hb_face_destroy(PLT)
	ldr	r4, [r6]
	mov	r1, r4
	cbz	r4, .L294
.L290:
	ldr	r3, .L295+12
	mov	r0, r8
	mov	r2, r5
.LPIC77:
	add	r3, pc
	bl	hb_font_set_funcs(PLT)
	mov	r0, r7
	str	r8, [r5, #4]
	bl	_libaroma_font_hb_update_scale(PLT)
	ldr	r0, [r5, #4]
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L293:
	ldr	r1, [r3, #4]
	movs	r2, #3
	ldr	r0, [r3]
	mov	r3, r5
	str	r4, [sp]
	bl	hb_blob_create(PLT)
	ldr	r1, [r6, #4]
	mov	r8, r0
	bl	hb_face_create(PLT)
	mov	r4, r0
	mov	r0, r8
	bl	hb_blob_destroy(PLT)
	b	.L289
.L294:
	bl	hb_font_funcs_create(PLT)
	ldr	r1, .L295+16
	mov	r2, r4
	mov	r3, r4
	str	r0, [r6]
.LPIC55:
	add	r1, pc
	bl	hb_font_funcs_set_glyph_func(PLT)
	ldr	r1, .L295+20
	mov	r2, r4
	ldr	r0, [r6]
	mov	r3, r4
.LPIC57:
	add	r1, pc
	bl	hb_font_funcs_set_glyph_h_advance_func(PLT)
	ldr	r1, .L295+24
	mov	r2, r4
	ldr	r0, [r6]
	mov	r3, r4
.LPIC59:
	add	r1, pc
	bl	hb_font_funcs_set_glyph_v_advance_func(PLT)
	ldr	r1, .L295+28
	mov	r2, r4
	ldr	r0, [r6]
	mov	r3, r4
.LPIC61:
	add	r1, pc
	bl	hb_font_funcs_set_glyph_h_origin_func(PLT)
	ldr	r1, .L295+32
	mov	r2, r4
	ldr	r0, [r6]
	mov	r3, r4
.LPIC63:
	add	r1, pc
	bl	hb_font_funcs_set_glyph_v_origin_func(PLT)
	ldr	r1, .L295+36
	mov	r2, r4
	ldr	r0, [r6]
	mov	r3, r4
.LPIC65:
	add	r1, pc
	bl	hb_font_funcs_set_glyph_h_kerning_func(PLT)
	ldr	r1, .L295+40
	mov	r2, r4
	ldr	r0, [r6]
	mov	r3, r4
.LPIC67:
	add	r1, pc
	bl	hb_font_funcs_set_glyph_v_kerning_func(PLT)
	ldr	r1, .L295+44
	mov	r2, r4
	ldr	r0, [r6]
	mov	r3, r4
.LPIC69:
	add	r1, pc
	bl	hb_font_funcs_set_glyph_extents_func(PLT)
	ldr	r1, .L295+48
	mov	r2, r4
	ldr	r0, [r6]
	mov	r3, r4
.LPIC71:
	add	r1, pc
	bl	hb_font_funcs_set_glyph_contour_point_func(PLT)
	ldr	r1, .L295+52
	mov	r2, r4
	ldr	r0, [r6]
	mov	r3, r4
.LPIC73:
	add	r1, pc
	bl	hb_font_funcs_set_glyph_name_func(PLT)
	ldr	r1, .L295+56
	mov	r2, r4
	ldr	r0, [r6]
	mov	r3, r4
.LPIC75:
	add	r1, pc
	bl	hb_font_funcs_set_glyph_from_name_func(PLT)
	ldr	r1, [r6]
	b	.L290
.L296:
	.align	2
.L295:
	.word	.LANCHOR2-(.LPIC51+4)
	.word	_libaroma_font_hb_ref_table-(.LPIC52+4)
	.word	.LANCHOR1-(.LPIC53+4)
	.word	_libaroma_font_hb_destroy_function-(.LPIC77+4)
	.word	_libaroma_font_hb_glyph_func-(.LPIC55+4)
	.word	_libaroma_font_hb_glyph_h_advance_func-(.LPIC57+4)
	.word	_libaroma_font_hb_glyph_v_advance_func-(.LPIC59+4)
	.word	_libaroma_font_hb_glyph_h_origin_func-(.LPIC61+4)
	.word	_libaroma_font_hb_glyph_v_origin_func-(.LPIC63+4)
	.word	_libaroma_font_hb_glyph_h_kerning_func-(.LPIC65+4)
	.word	_libaroma_font_hb_glyph_v_kerning_func-(.LPIC67+4)
	.word	_libaroma_font_hb_glyph_extents_func-(.LPIC69+4)
	.word	_libaroma_font_hb_glyph_contour_point_func-(.LPIC71+4)
	.word	_libaroma_font_hb_glyph_name_func-(.LPIC73+4)
	.word	_libaroma_font_hb_glyph_from_name_func-(.LPIC75+4)
	.size	_libaroma_font_hb_init, .-_libaroma_font_hb_init
	.section	.text.libaroma_font_set_size,"ax",%progbits
	.align	2
	.global	libaroma_font_set_size
	.thumb
	.thumb_func
	.type	libaroma_font_set_size, %function
libaroma_font_set_size:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #9
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
	mov	r4, r0
	bhi	.L309
	add	r7, r0, r0, lsl #2
	ldr	r6, .L312
	mov	r5, r1
	lsls	r7, r7, #2
.LPIC78:
	add	r6, pc
	add	r8, r6, r7
	add	r8, r8, #8
	ldrsh	r3, [r8, #2]
	cmp	r3, r1
	beq	.L308
	cbnz	r2, .L310
	movs	r3, #20
	mov	r1, r2
	mul	r3, r3, r0
	mov	r2, r5
	ldr	r0, [r6, r3]
	add	r6, r6, r3
	bl	FT_Set_Pixel_Sizes(PLT)
	cbz	r0, .L311
.L309:
	movs	r0, #0
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.L302:
	mov	r0, r4
	strh	r5, [r8, #2]	@ movhi
	bl	_libaroma_font_hb_update_scale(PLT)
	mov	r0, r9
	bl	omp_unset_nest_lock(PLT)
.L308:
	movs	r0, #1
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.L310:
	ldr	r9, .L312+4
.LPIC79:
	add	r9, pc
	add	r9, r9, #12
	mov	r0, r9
	bl	omp_set_nest_lock(PLT)
	ldr	r0, [r6, r7]
	movs	r1, #0
	mov	r2, r5
	bl	FT_Set_Pixel_Sizes(PLT)
	cmp	r0, #0
	beq	.L302
	mov	r0, r9
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #0
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.L311:
	strh	r5, [r6, #10]	@ movhi
	mov	r0, r4
	bl	_libaroma_font_hb_update_scale(PLT)
	b	.L308
.L313:
	.align	2
.L312:
	.word	.LANCHOR2-(.LPIC78+4)
	.word	.LANCHOR0-(.LPIC79+4)
	.size	libaroma_font_set_size, .-libaroma_font_set_size
	.section	.text.libaroma_font_get_face,"ax",%progbits
	.align	2
	.global	libaroma_font_get_face
	.thumb
	.thumb_func
	.type	libaroma_font_get_face, %function
libaroma_font_get_face:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #9
	bhi	.L316
	ldr	r3, .L317
	add	r0, r0, r0, lsl #2
.LPIC86:
	add	r3, pc
	add	r0, r3, r0, lsl #2
	bx	lr
.L316:
	movs	r0, #0
	bx	lr
.L318:
	.align	2
.L317:
	.word	.LANCHOR2-(.LPIC86+4)
	.size	libaroma_font_get_face, .-libaroma_font_get_face
	.section	.text.libaroma_font_set_ucs2,"ax",%progbits
	.align	2
	.global	libaroma_font_set_ucs2
	.thumb
	.thumb_func
	.type	libaroma_font_set_ucs2, %function
libaroma_font_set_ucs2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6}
	ldr	r5, [r0, #36]
	cmp	r5, #0
	ble	.L320
	ldr	r4, [r0, #40]
	movs	r6, #3
	movt	r6, 1
	ldr	r1, [r4]
	ldr	r3, [r1, #8]
	cmp	r3, #196608
	it	ne
	cmpne	r3, r6
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	bne	.L323
	b	.L321
.L324:
	ldr	r1, [r4, #4]!
	ldr	r2, [r1, #8]
	cmp	r2, #196608
	it	ne
	cmpne	r2, r6
	beq	.L321
.L323:
	adds	r3, r3, #1
	cmp	r3, r5
	bne	.L324
.L320:
	mov	r0, #-1
	pop	{r4, r5, r6}
	bx	lr
.L321:
	pop	{r4, r5, r6}
	b	FT_Set_Charmap(PLT)
	.size	libaroma_font_set_ucs2, .-libaroma_font_set_ucs2
	.section	.text.libaroma_font_get,"ax",%progbits
	.align	2
	.global	libaroma_font_get
	.thumb
	.thumb_func
	.type	libaroma_font_get, %function
libaroma_font_get:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #9
	bhi	.L330
	ldr	r3, .L332
	add	r0, r0, r0, lsl #2
.LPIC95:
	add	r3, pc
	ldr	r0, [r3, r0, lsl #2]
	cbz	r0, .L331
.L329:
	bx	lr
.L331:
	cmp	r1, #0
	bne	.L329
	ldr	r0, [r3]
	bx	lr
.L330:
	movs	r0, #0
	bx	lr
.L333:
	.align	2
.L332:
	.word	.LANCHOR2-(.LPIC95+4)
	.size	libaroma_font_get, .-libaroma_font_get
	.section	.text.libaroma_font_size_px,"ax",%progbits
	.align	2
	.global	libaroma_font_size_px
	.thumb
	.thumb_func
	.type	libaroma_font_size_px, %function
libaroma_font_size_px:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #15
	push	{r3, lr}
	it	hi
	movhi	r0, #52
	bhi	.L336
	cbnz	r0, .L342
	movs	r0, #10
.L336:
	bl	libaroma_dp(PLT)
	uxth	r0, r0
	sxth	r0, r0
	pop	{r3, pc}
.L342:
	cmp	r0, #8
	itete	hi
	subhi	r0, r0, #8
	addls	r0, r0, #4
	uxtbhi	r0, r0
	lslls	r0, r0, #1
	itt	hi
	addhi	r0, r0, #6
	lslhi	r0, r0, #2
	bl	libaroma_dp(PLT)
	uxth	r0, r0
	sxth	r0, r0
	pop	{r3, pc}
	.size	libaroma_font_size_px, .-libaroma_font_size_px
	.section	.text.libaroma_font_glyph_get_id,"ax",%progbits
	.align	2
	.global	libaroma_font_glyph_get_id
	.thumb
	.thumb_func
	.type	libaroma_font_glyph_get_id, %function
libaroma_font_glyph_get_id:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	movw	r3, #65279
	cmp	r0, r3
	mov	r8, #0
	mov	fp, r2
	mov	r10, r0
	strb	r8, [r2]
	beq	.L350
	cmp	r1, #9
	ldr	r3, .L369
	it	ls
	movls	r8, r1
	mov	r4, r1
	add	r2, r8, r8, lsl #2
	it	hi
	movhi	r4, r8
.LPIC97:
	add	r3, pc
	ldr	r5, [r3, r2, lsl #2]
	cbz	r5, .L347
	ldr	r7, .L369+4
.LPIC98:
	add	r7, pc
	adds	r7, r7, #12
	mov	r0, r7
	bl	omp_set_nest_lock(PLT)
	mov	r0, r5
	mov	r1, r10
	bl	FT_Get_Char_Index(PLT)
	mov	r6, r0
	mov	r0, r7
	bl	omp_unset_nest_lock(PLT)
	cbnz	r6, .L367
.L347:
	ldr	r7, .L369+8
	movs	r4, #0
	ldr	r9, .L369+12
	mov	r5, r4
.LPIC101:
	add	r7, pc
.LPIC100:
	add	r9, pc
	adds	r7, r7, #12
.L351:
	ldr	r6, [r4, r9]
	mov	r0, r7
	adds	r4, r4, #20
	cbz	r6, .L348
	cmp	r8, r5
	beq	.L348
	bl	omp_set_nest_lock(PLT)
	mov	r0, r6
	mov	r1, r10
	bl	FT_Get_Char_Index(PLT)
	mov	r6, r0
	mov	r0, r7
	bl	omp_unset_nest_lock(PLT)
	cbnz	r6, .L368
.L348:
	cmp	r4, #200
	add	r5, r5, #1
	bne	.L351
.L350:
	movs	r0, #0
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L367:
	strb	r4, [fp]
	mov	r0, r6
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L368:
	strb	r5, [fp]
	mov	r0, r6
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L370:
	.align	2
.L369:
	.word	.LANCHOR2-(.LPIC97+4)
	.word	.LANCHOR0-(.LPIC98+4)
	.word	.LANCHOR0-(.LPIC101+4)
	.word	.LANCHOR2-(.LPIC100+4)
	.size	libaroma_font_glyph_get_id, .-libaroma_font_glyph_get_id
	.section	.text.libaroma_font_glyph,"ax",%progbits
	.align	2
	.global	libaroma_font_glyph
	.thumb
	.thumb_func
	.type	libaroma_font_glyph, %function
libaroma_font_glyph:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #65279
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	cmp	r0, r3
	sub	sp, sp, #68
	mov	r5, r0
	beq	.L379
	cmp	r1, #9
	mov	r4, r1
	bhi	.L379
	mov	r6, r2
	lsls	r7, r1, #2
	cbz	r2, .L382
.L374:
	ldr	r8, .L383
	add	r7, r7, r4
	ldr	r10, .L383+4
	ubfx	r9, r5, #0, #20
	orr	r9, r9, r6, lsl #20
.LPIC104:
	add	r8, pc
	add	r8, r8, #12
.LPIC105:
	add	r10, pc
	mov	r0, r8
	bl	omp_set_nest_lock(PLT)
	lsls	r3, r7, #2
	mov	r1, r9
	add	r7, r10, r3
	ldr	r0, [r7, #12]
	str	r3, [sp, #12]
	bl	libaroma_iarray_get(PLT)
	ldr	r3, [sp, #12]
	mov	fp, r0
	cbz	r0, .L375
.L381:
	mov	r0, r8
	bl	omp_unset_nest_lock(PLT)
	mov	r0, fp
.L372:
	add	sp, sp, #68
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L382:
	ldr	r3, .L383+8
	lsls	r7, r1, #2
	adds	r2, r7, r1
.LPIC103:
	add	r3, pc
	add	r3, r3, r2, lsl #2
	ldrb	r6, [r3, #10]	@ zero_extendqisi2
	b	.L374
.L375:
	ldr	r10, [r10, r3]
	cmp	r10, #0
	beq	.L377
	mov	r0, r6
	bl	libaroma_font_size_px(PLT)
	mov	r2, fp
	mov	r1, r0
	mov	r0, r4
	bl	libaroma_font_set_size(PLT)
	mov	r0, r10
	mov	r1, r5
	mov	r2, #196608
	bl	FT_Load_Glyph(PLT)
	mov	r3, r0
	cmp	r0, #0
	bne	.L377
	add	fp, sp, #20
	ldr	r0, [r10, #84]
	mov	r1, fp
	str	r3, [sp, #20]
	str	r3, [sp, #24]
	add	r4, sp, #24
	str	r3, [sp, #28]
	str	r3, [sp, #32]
	str	r3, [sp, #36]
	str	r3, [sp, #40]
	str	r3, [sp, #44]
	str	r3, [sp, #48]
	str	r3, [sp, #52]
	str	r3, [sp, #56]
	str	r3, [sp, #60]
	bl	FT_Get_Glyph(PLT)
	ldr	r6, [r10, #84]
	mov	r10, #1
	ldr	ip, [r7, #12]
	ldrh	lr, [r7, #10]
	ldr	r0, [r6, #24]!	@ unaligned
	ldr	r1, [r6, #4]	@ unaligned
	ldr	r2, [r6, #8]	@ unaligned
	ldr	r3, [r6, #12]	@ unaligned
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r2, [r6, #24]	@ unaligned
	ldr	r0, [r6, #16]	@ unaligned
	ldr	r1, [r6, #20]	@ unaligned
	ldr	r3, [r6, #28]	@ unaligned
	str	r10, [sp]
	stmia	r4!, {r0, r1, r2, r3}
	mov	r2, fp
	mov	r0, ip
	mov	r1, r9
	movs	r3, #44
	strh	lr, [sp, #60]	@ movhi
	str	r5, [sp, #56]
	bl	libaroma_iarray_set(PLT)
	ldr	r0, [r7, #12]
	mov	r1, r9
	bl	libaroma_iarray_get(PLT)
	mov	fp, r0
	b	.L381
.L379:
	movs	r0, #0
	add	sp, sp, #68
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L377:
	ldr	r0, .L383+12
.LPIC108:
	add	r0, pc
	adds	r0, r0, #12
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #0
	b	.L372
.L384:
	.align	2
.L383:
	.word	.LANCHOR0-(.LPIC104+4)
	.word	.LANCHOR2-(.LPIC105+4)
	.word	.LANCHOR2-(.LPIC103+4)
	.word	.LANCHOR0-(.LPIC108+4)
	.size	libaroma_font_glyph, .-libaroma_font_glyph
	.section	.text._libaroma_font_hb_glyph_contour_point_func,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_libaroma_font_hb_glyph_contour_point_func, %function
_libaroma_font_hb_glyph_contour_point_func:
	@ args = 12, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r0, r2
	ldrb	r1, [r1, #8]	@ zero_extendqisi2
	movs	r2, #0
	mov	r4, r3
	bl	libaroma_font_glyph(PLT)
	cbz	r0, .L386
	ldr	r1, [r0]
	movw	r2, #29804
	movt	r2, 28533
	ldr	r0, [r1, #8]
	cmp	r0, r2
	beq	.L391
.L389:
	movs	r0, #0
.L386:
	pop	{r4, pc}
.L391:
	ldrsh	r3, [r1, #22]
	cmp	r3, r4
	bls	.L389
	ldr	r3, [r1, #24]
	movs	r0, #1
	ldr	r1, [sp, #8]
	ldr	r2, [r3, r4, lsl #3]
	add	r4, r3, r4, lsl #3
	ldr	r3, [r4, #4]
	str	r2, [r1]
	ldr	r2, [sp, #12]
	str	r3, [r2]
	pop	{r4, pc}
	.size	_libaroma_font_hb_glyph_contour_point_func, .-_libaroma_font_hb_glyph_contour_point_func
	.section	.text._libaroma_font_hb_glyph_extents_func,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_libaroma_font_hb_glyph_extents_func, %function
_libaroma_font_hb_glyph_extents_func:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r0, r2
	ldrb	r1, [r1, #8]	@ zero_extendqisi2
	movs	r2, #0
	mov	r4, r3
	bl	libaroma_font_glyph(PLT)
	mov	r2, r0
	cbz	r0, .L394
	ldr	r6, [r0, #8]
	movs	r0, #1
	ldr	r5, [r2, #12]
	ldr	r1, [r2, #16]
	ldr	r3, [r2, #4]
	negs	r2, r6
	str	r5, [r4]
	str	r2, [r4, #12]
	str	r1, [r4, #4]
	str	r3, [r4, #8]
	pop	{r4, r5, r6, pc}
.L394:
	pop	{r4, r5, r6, pc}
	.size	_libaroma_font_hb_glyph_extents_func, .-_libaroma_font_hb_glyph_extents_func
	.section	.text._libaroma_font_hb_glyph_v_origin_func,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_libaroma_font_hb_glyph_v_origin_func, %function
_libaroma_font_hb_glyph_v_origin_func:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r0, r2
	ldrb	r1, [r1, #8]	@ zero_extendqisi2
	movs	r2, #0
	mov	r4, r3
	bl	libaroma_font_glyph(PLT)
	mov	r2, r0
	cbz	r0, .L398
	ldr	r6, [r0, #12]
	movs	r0, #1
	ldr	r5, [r2, #24]
	ldr	r1, [r2, #16]
	ldr	r3, [r2, #28]
	subs	r2, r6, r5
	str	r2, [r4]
	ldr	r2, [sp, #16]
	add	r3, r3, r1
	str	r3, [r2]
	pop	{r4, r5, r6, pc}
.L398:
	pop	{r4, r5, r6, pc}
	.size	_libaroma_font_hb_glyph_v_origin_func, .-_libaroma_font_hb_glyph_v_origin_func
	.section	.text.libaroma_font_free,"ax",%progbits
	.align	2
	.global	libaroma_font_free
	.thumb
	.thumb_func
	.type	libaroma_font_free, %function
libaroma_font_free:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #9
	push	{r3, r4, r5, r6, r7, lr}
	mov	r4, r0
	bls	.L420
	movs	r0, #0
	pop	{r3, r4, r5, r6, r7, pc}
.L420:
	ldr	r0, .L421
	lsls	r5, r4, #2
	ldr	r6, .L421+4
.LPIC113:
	add	r0, pc
	adds	r0, r0, #12
.LPIC114:
	add	r6, pc
	bl	omp_set_nest_lock(PLT)
	adds	r3, r5, r4
	add	r6, r6, r3, lsl #2
	ldr	r3, [r6, #4]
	cbz	r3, .L402
	mov	r0, r4
	bl	_libaroma_font_hb_free(PLT)
	movs	r3, #0
	str	r3, [r6, #4]
.L402:
	ldr	r7, .L421+8
	adds	r6, r5, r4
	lsls	r6, r6, #2
.LPIC116:
	add	r7, pc
	ldr	r0, [r7, r6]
	cbz	r0, .L403
	bl	FT_Done_Face(PLT)
	movs	r3, #0
	str	r3, [r7, r6]
.L403:
	ldr	r6, .L421+12
	adds	r3, r5, r4
.LPIC118:
	add	r6, pc
	add	r6, r6, r3, lsl #2
	ldr	r0, [r6, #12]
	cbz	r0, .L404
	bl	libaroma_iarray_free(PLT)
	movs	r3, #0
	str	r3, [r6, #12]
.L404:
	ldr	r3, .L421+16
	add	r5, r5, r4
.LPIC120:
	add	r3, pc
	add	r4, r3, r5, lsl #2
	ldr	r0, [r4, #16]
	cbz	r0, .L405
	bl	libaroma_stream_close(PLT)
	movs	r3, #0
	str	r3, [r4, #16]
.L405:
	ldr	r0, .L421+20
.LPIC122:
	add	r0, pc
	adds	r0, r0, #12
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #1
	pop	{r3, r4, r5, r6, r7, pc}
.L422:
	.align	2
.L421:
	.word	.LANCHOR0-(.LPIC113+4)
	.word	.LANCHOR2-(.LPIC114+4)
	.word	.LANCHOR2-(.LPIC116+4)
	.word	.LANCHOR2-(.LPIC118+4)
	.word	.LANCHOR2-(.LPIC120+4)
	.word	.LANCHOR0-(.LPIC122+4)
	.size	libaroma_font_free, .-libaroma_font_free
	.section	.text.libaroma_font,"ax",%progbits
	.align	2
	.global	libaroma_font
	.thumb
	.thumb_func
	.type	libaroma_font, %function
libaroma_font:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r1
	ldr	r6, .L434
	sub	sp, sp, #20
.LPIC129:
	add	r6, pc
	cbz	r1, .L429
	cmp	r0, #9
	mov	r5, r0
	bls	.L432
.L429:
	movs	r0, #0
.L424:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L432:
	ldr	r8, .L434+4
	add	r7, sp, #8
.LPIC123:
	add	r8, pc
	add	r8, r8, #12
	mov	r0, r8
	bl	omp_set_nest_lock(PLT)
	ldr	r0, .L434+8
	movs	r3, #0
	ldr	r1, [r4]
	ldr	r2, [r4, #4]
.LPIC124:
	add	r0, pc
	ldr	r0, [r0]
	str	r7, [sp]
	bl	FT_New_Memory_Face(PLT)
	mov	r7, r0
	cbnz	r0, .L425
	movs	r0, #2
	bl	libaroma_font_size_px(PLT)
	mov	r9, r0
	mov	r1, r7
	ldr	r0, [sp, #8]
	mov	r2, r9
	bl	FT_Set_Pixel_Sizes(PLT)
	cbz	r0, .L433
	ldr	r0, [sp, #8]
	bl	FT_Done_Face(PLT)
	b	.L427
.L425:
	mov	r0, r4
	bl	libaroma_stream_close(PLT)
.L427:
	ldr	r0, .L434+12
.LPIC133:
	add	r0, pc
	adds	r0, r0, #12
	bl	omp_unset_nest_lock(PLT)
	b	.L429
.L433:
	ldr	fp, .L434+16
	add	r10, r5, r5, lsl #2
	mov	r0, r5
	bl	libaroma_font_free(PLT)
	lsl	r10, r10, #2
	ldr	r3, [sp, #8]
	ldr	r2, .L434+20
.LPIC125:
	add	fp, pc
	add	r7, fp, r10
	strh	r9, [r7, #10]	@ movhi
	strb	r5, [r7, #8]
	str	r3, [fp, r10]
	str	r4, [r7, #16]
	ldr	r0, [r6, r2]
	bl	libaroma_iarray(PLT)
	str	r0, [r7, #12]
	ldr	r0, [fp, r10]
	bl	libaroma_font_set_ucs2(PLT)
	mov	r0, r5
	bl	_libaroma_font_hb_init(PLT)
	mov	r0, r8
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #1
	b	.L424
.L435:
	.align	2
.L434:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC129+4)
	.word	.LANCHOR0-(.LPIC123+4)
	.word	.LANCHOR3-(.LPIC124+4)
	.word	.LANCHOR0-(.LPIC133+4)
	.word	.LANCHOR2-(.LPIC125+4)
	.word	libaroma_font_freecache_cb(GOT)
	.size	libaroma_font, .-libaroma_font
	.section	.text.libaroma_font_glyph_width,"ax",%progbits
	.align	2
	.global	libaroma_font_glyph_width
	.thumb
	.thumb_func
	.type	libaroma_font_glyph_width, %function
libaroma_font_glyph_width:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]
	ldrsh	r0, [r3, #14]
	bx	lr
	.size	libaroma_font_glyph_width, .-libaroma_font_glyph_width
	.section	.text.libaroma_font_glyph_height,"ax",%progbits
	.align	2
	.global	libaroma_font_glyph_height
	.thumb
	.thumb_func
	.type	libaroma_font_glyph_height, %function
libaroma_font_glyph_height:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrsh	r0, [r0, #40]
	bx	lr
	.size	libaroma_font_glyph_height, .-libaroma_font_glyph_height
	.section	.text.libaroma_font_glyph_draw,"ax",%progbits
	.align	2
	.global	libaroma_font_glyph_draw
	.thumb
	.thumb_func
	.type	libaroma_font_glyph_draw, %function
libaroma_font_glyph_draw:
	@ args = 12, pretend = 0, frame = 112
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r1
	fstmfdd	sp!, {d8, d9, d10, d11, d12, d13, d14, d15}
	sub	sp, sp, #124
	ldrb	r5, [sp, #232]	@ zero_extendqisi2
	str	r3, [sp, #12]
	ldrh	r6, [sp, #224]
	ldrb	r10, [sp, #228]	@ zero_extendqisi2
	str	r5, [sp, #16]
	cmp	r1, #0
	beq	.L480
	mov	r7, r0
	ldr	r0, [r1]
	cmp	r0, #0
	beq	.L439
	mov	r9, r2
	cmp	r7, #0
	beq	.L499
.L440:
	ldr	fp, .L505+32
	add	r5, sp, #120
	mov	r8, #0
.LPIC142:
	add	fp, pc
	add	fp, fp, #12
	mov	r0, fp
	bl	omp_set_nest_lock(PLT)
	str	r8, [r5, #-24]!
	mov	r1, r5
	ldr	r0, [r4]
	bl	FT_Glyph_Copy(PLT)
	cmp	r0, #0
	bne	.L500
	tst	r10, #8
	bne	.L501
	tst	r10, #4
	bne	.L502
.L443:
	mov	r0, r5
	movs	r1, #3
	movs	r2, #0
	movs	r3, #1
	bl	FT_Glyph_To_Bitmap(PLT)
	cmp	r0, #0
	bne	.L503
	ldr	r8, [sp, #96]
	ldr	r1, [r7]
	ldr	r3, [r8, #20]
	ldr	r2, [r8, #32]
	adds	r3, r9, r3
	str	r3, [sp, #28]
	it	mi
	rsbmi	r4, r3, #0
	movw	r3, #43691
	it	mi
	strmi	r0, [sp, #28]
	movt	r3, 43690
	it	mi
	movmi	r0, r4
	umull	r5, r3, r3, r2
	it	pl
	movpl	r4, r0
	rsb	r9, r0, r3, lsr #1
	ldr	r3, [sp, #28]
	add	r3, r3, r9
	cmp	r3, r1
	itt	gt
	ldrgt	r5, [sp, #28]
	rsbgt	r9, r5, r1
	cmp	r9, #0
	it	le
	movle	r0, r8
	ble	.L447
	ldr	r5, [sp, #16]
	cmp	r5, #255
	itt	eq
	moveq	r5, #0
	streq	r5, [sp, #40]
	beq	.L448
	lsl	r0, r9, #1
	bl	malloc(PLT)
	str	r0, [sp, #40]
.L448:
	ldr	r0, [r8, #28]
	cmp	r0, #0
	beq	.L478
	and	r5, r9, #7
	add	r4, r4, r4, lsl #1
	str	r5, [sp, #36]
	and	r5, r6, #63488
	ldr	r1, [sp, #36]
	lsrs	r5, r5, #8
	str	r4, [sp, #44]
	vldr	d8, .L505
	vldr	d9, .L505+8
	rsb	r1, r1, r9
	str	r1, [sp, #24]
	and	r1, r6, #2016
	ldr	r2, [sp, #24]
	lsrs	r1, r1, #3
	vdup.16	q6, r5
	ldr	r5, [sp, #16]
	subs	r3, r2, #1
	vdup.16	q5, r1
	lsrs	r3, r3, #3
	lsls	r2, r2, #1
	adds	r3, r3, #1
	str	r2, [sp, #32]
	add	r4, r3, r3, lsl #1
	ldr	r3, [sp, #32]
	lsls	r2, r6, #3
	lsls	r4, r4, #3
	sub	lr, r3, #2
	str	r4, [sp, #76]
	rsb	r3, r5, #256
	ldr	r4, [sp, #40]
	add	r5, r9, r9, lsl #1
	and	r2, r2, #248
	vdup.16	q8, r3
	str	r5, [sp, #60]
	add	r4, r4, lr
	ldr	r5, [sp, #24]
	str	r4, [sp, #72]
	ldr	r4, [sp, #32]
	vdup.16	q7, r2
	add	r4, r4, r5
	ldr	r5, [sp, #32]
	str	r4, [sp, #64]
	ldr	r4, [sp, #40]
	vstr	d16, [sp, #80]
	vstr	d17, [sp, #88]
	add	r4, r4, r5
	movs	r5, #0
	str	r4, [sp, #68]
.L479:
	ldr	r2, [r8, #24]
	ldr	r3, [r7, #8]
	ldr	r4, [sp, #12]
	ldr	r1, [r7, #4]
	subs	r2, r5, r2
	add	r2, r2, r4
	mul	r2, r3, r2
	mul	r3, r1, r3
	add	r1, r2, r9
	cmp	r1, r3
	bgt	.L452
	cmp	r2, #0
	blt	.L452
	ldr	r4, [sp, #28]
	ldr	r0, [r8, #36]
	ldr	r1, [r7, #16]
	add	r2, r2, r4
	ldr	r4, [sp, #44]
	ldr	r3, [r8, #40]
	add	r1, r1, r2, lsl #1
	mla	fp, r0, r5, r4
	ldr	r4, [sp, #16]
	str	r1, [sp, #20]
	cmp	r4, #255
	add	fp, fp, r3
	beq	.L504
	cmp	r9, #7
	bgt	.L462
.L465:
	ldr	r4, [sp, #36]
	cbz	r4, .L464
	ldr	r4, [sp, #24]
	cmp	r9, r4
	ble	.L464
	ldr	ip, [sp, #20]
	mov	r10, #0
	ldr	r2, [sp, #32]
	ldr	r4, [sp, #64]
	ldr	r1, [sp, #60]
	str	r9, [sp, #48]
	add	ip, ip, r2
	ldr	r9, [sp, #68]
	add	r4, r4, fp
	str	r5, [sp, #52]
	add	fp, fp, r1
	mov	r5, r10
	mov	r10, ip
	str	r7, [sp, #56]
.L469:
	ldrb	r7, [r4, #2]	@ zero_extendqisi2
	mov	r1, r6
	ldrb	r2, [r4]	@ zero_extendqisi2
	adds	r4, r4, #3
	ldrb	r3, [r4, #-2]	@ zero_extendqisi2
	ldrh	r0, [r10, r5]
	str	r7, [sp]
	bl	libaroma_alpha_multi(PLT)
	cmp	r4, fp
	strh	r0, [r9, r5]	@ movhi
	add	r5, r5, #2
	bne	.L469
	ldr	r9, [sp, #48]
	ldr	r5, [sp, #52]
	ldr	r7, [sp, #56]
.L464:
	ldr	r4, [sp, #16]
	cbz	r4, .L496
	cmp	r9, #7
	bgt	.L470
.L473:
	ldr	r4, [sp, #36]
	cbz	r4, .L496
	ldr	r4, [sp, #24]
	cmp	r9, r4
	ble	.L496
	ldr	r10, [sp, #20]
	ldr	r4, [sp, #32]
	ldr	fp, [sp, #72]
	str	r5, [sp, #20]
	add	r10, r10, r4
	ldr	r4, [sp, #24]
	mov	r5, fp
	ldr	fp, [sp, #16]
.L477:
	ldrh	r0, [r10]
	adds	r4, r4, #1
	ldrh	r1, [r5, #2]!
	mov	r2, fp
	bl	libaroma_alpha(PLT)
	cmp	r4, r9
	strh	r0, [r10], #2	@ movhi
	bne	.L477
.L497:
	ldr	r5, [sp, #20]
.L496:
	ldr	r0, [r8, #28]
.L452:
	adds	r5, r5, #1
	cmp	r5, r0
	bcc	.L479
.L478:
	ldr	r4, [sp, #40]
	cbz	r4, .L498
	mov	r0, r4
	bl	free(PLT)
.L498:
	ldr	r0, [sp, #96]
.L447:
	bl	FT_Done_Glyph(PLT)
	ldr	r0, .L505+36
.LPIC146:
	add	r0, pc
	adds	r0, r0, #12
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #1
.L439:
	add	sp, sp, #124
	@ sp needed
	fldmfdd	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L504:
	cmp	r9, #7
	bgt	.L454
.L457:
	ldr	r4, [sp, #36]
	cmp	r4, #0
	beq	.L496
	ldr	r4, [sp, #24]
	cmp	r9, r4
	ble	.L496
	ldr	r10, [sp, #20]
	ldr	r4, [sp, #32]
	ldr	r1, [sp, #60]
	str	r5, [sp, #20]
	add	r10, r10, r4
	ldr	r4, [sp, #64]
	add	r4, r4, fp
	add	fp, fp, r1
.L461:
	ldrb	r5, [r4, #2]	@ zero_extendqisi2
	mov	r1, r6
	ldrb	r2, [r4]	@ zero_extendqisi2
	adds	r4, r4, #3
	ldrb	r3, [r4, #-2]	@ zero_extendqisi2
	ldrh	r0, [r10]
	str	r5, [sp]
	bl	libaroma_alpha_multi(PLT)
	cmp	r4, fp
	strh	r0, [r10], #2	@ movhi
	bne	.L461
	b	.L497
.L462:
	ldr	r4, [sp, #24]
	vmov.i16	q11, #256  @ v8hi
	vmov.i16	q14, #63488  @ v8hi
	vmov.i16	q15, #31  @ v8hi
	cmp	r4, #0
	ble	.L465
	ldr	r4, [sp, #40]
	movs	r3, #0
	ldr	lr, [sp, #20]
	mov	r2, r3
	ldr	ip, [sp, #76]
.L466:
	add	r1, fp, r2
	add	r0, lr, r3
	adds	r2, r2, #24
	vld3.8	{d16-d18}, [r1]
	cmp	r2, ip
	add	r1, r4, r3
	add	r3, r3, #16
	vld1.16	{d20-d21}, [r0]
	vmovl.u8	q13, d16
	vmovl.u8	q12, d17
	vand	q1, q10, q14
	vand	q3, q10, q4
	vsub.i16	q0, q11, q13
	vsub.i16	q2, q11, q12
	vrshr.u16	q1, q1, #8
	vrshr.u16	q3, q3, #3
	vmovl.u8	q8, d18
	vmul.i16	q13, q6, q13
	vmul.i16	q1, q1, q0
	vmul.i16	q12, q5, q12
	vmul.i16	q3, q3, q2
	vand	q10, q10, q15
	vsub.i16	q9, q11, q8
	vmul.i16	q8, q7, q8
	vshl.i16	q10, q10, #3
	vadd.i16	q13, q1, q13
	vmul.i16	q9, q10, q9
	vadd.i16	q12, q3, q12
	vshr.u16	q13, q13, #11
	vshr.u16	q12, q12, #10
	vadd.i16	q9, q9, q8
	vshl.i16	q8, q13, #11
	vshl.i16	q12, q12, #5
	vshr.u16	q9, q9, #11
	vorr	q8, q8, q12
	vorr	q8, q8, q9
	vst1.16	{d16-d17}, [r1]
	bne	.L466
	b	.L465
.L501:
	vldr	d16, .L505+16
	vldr	d17, .L505+24
	mov	r2, r0
	add	r1, sp, #104
	ldr	r0, [sp, #96]
	vstr	d16, [sp, #104]
	vstr	d17, [sp, #112]
	bl	FT_Glyph_Transform(PLT)
	tst	r10, #4
	beq	.L443
.L502:
	ldrsh	r1, [r4, #40]
	ldr	r0, [sp, #96]
	lsls	r1, r1, #1
	adds	r0, r0, #20
	bl	FT_Outline_Embolden(PLT)
	b	.L443
.L500:
	mov	r0, fp
	bl	omp_unset_nest_lock(PLT)
	mov	r0, r8
	add	sp, sp, #124
	@ sp needed
	fldmfdd	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L503:
	ldr	r0, .L505+40
	ldr	r1, [r4, #36]
.LPIC144:
	add	r0, pc
	bl	printf(PLT)
	ldr	r0, [sp, #96]
	bl	FT_Done_Glyph(PLT)
	ldr	r0, .L505+44
.LPIC145:
	add	r0, pc
	adds	r0, r0, #12
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #0
	add	sp, sp, #124
	@ sp needed
	fldmfdd	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L506:
	.align	3
.L505:
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.word	65536
	.word	20480
	.word	0
	.word	65536
	.word	.LANCHOR0-(.LPIC142+4)
	.word	.LANCHOR0-(.LPIC146+4)
	.word	.LC13-(.LPIC144+4)
	.word	.LANCHOR0-(.LPIC145+4)
.L454:
	ldr	r4, [sp, #24]
	vmov.i16	q11, #256  @ v8hi
	vmov.i16	q14, #63488  @ v8hi
	vmov.i16	q15, #31  @ v8hi
	cmp	r4, #0
	ble	.L457
	ldr	r2, [sp, #20]
	mov	r1, fp
	movs	r3, #0
	mov	r0, r4
.L458:
	vld3.8	{d16-d18}, [r1]!
	adds	r3, r3, #8
	cmp	r3, r0
	vld1.16	{d20-d21}, [r2]
	vmovl.u8	q13, d16
	vmovl.u8	q12, d17
	vand	q1, q10, q14
	vand	q3, q10, q4
	vsub.i16	q0, q11, q13
	vsub.i16	q2, q11, q12
	vrshr.u16	q1, q1, #8
	vrshr.u16	q3, q3, #3
	vmovl.u8	q8, d18
	vmul.i16	q13, q6, q13
	vmul.i16	q1, q1, q0
	vmul.i16	q12, q5, q12
	vmul.i16	q3, q3, q2
	vand	q10, q10, q15
	vsub.i16	q9, q11, q8
	vmul.i16	q8, q7, q8
	vshl.i16	q10, q10, #3
	vadd.i16	q13, q1, q13
	vmul.i16	q9, q10, q9
	vadd.i16	q10, q3, q12
	vshr.u16	q13, q13, #11
	vshr.u16	q10, q10, #10
	vadd.i16	q9, q9, q8
	vshl.i16	q8, q13, #11
	vshl.i16	q10, q10, #5
	vshr.u16	q9, q9, #11
	vorr	q8, q8, q10
	vorr	q8, q8, q9
	vst1.16	{d16-d17}, [r2]!
	blt	.L458
	b	.L457
.L470:
	ldr	r4, [sp, #16]
	vmov.i16	q11, #63488  @ v8hi
	vmov.i16	q12, #31  @ v8hi
	vdup.16	q10, r4
	ldr	r4, [sp, #24]
	cmp	r4, #0
	ble	.L473
	ldr	r2, [sp, #20]
	movs	r3, #0
	ldr	r1, [sp, #40]
	mov	r0, r4
	vldr	d26, [sp, #80]
	vldr	d27, [sp, #88]
.L474:
	vld1.16	{d16-d17}, [r1:64]!
	adds	r3, r3, #8
	vand	q2, q8, q11
	cmp	r3, r0
	vld1.16	{d18-d19}, [r2]
	vand	q1, q9, q11
	vand	q3, q9, q4
	vand	q14, q8, q4
	vrshr.u16	q1, q1, #8
	vrshr.u16	q2, q2, #8
	vrshr.u16	q3, q3, #3
	vrshr.u16	q14, q14, #3
	vand	q15, q8, q12
	vmul.i16	q1, q1, q13
	vmul.i16	q2, q2, q10
	vmul.i16	q3, q3, q13
	vand	q9, q9, q12
	vmul.i16	q14, q14, q10
	vshl.i16	q9, q9, #3
	vshl.i16	q15, q15, #3
	vmul.i16	q9, q9, q13
	vmul.i16	q15, q15, q10
	vadd.i16	q8, q1, q2
	vadd.i16	q14, q3, q14
	vshr.u16	q8, q8, #11
	vshr.u16	q14, q14, #10
	vadd.i16	q9, q9, q15
	vshl.i16	q8, q8, #11
	vshl.i16	q14, q14, #5
	vshr.u16	q9, q9, #11
	vorr	q8, q8, q14
	vorr	q8, q8, q9
	vst1.16	{d16-d17}, [r2]!
	blt	.L474
	b	.L473
.L480:
	mov	r0, r1
	add	sp, sp, #124
	@ sp needed
	fldmfdd	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L499:
	bl	libaroma_fb(PLT)
	ldr	r7, [r0, #52]
	b	.L440
	.size	libaroma_font_glyph_draw, .-libaroma_font_glyph_draw
	.section	.text.libaroma_font_init,"ax",%progbits
	.align	2
	.global	libaroma_font_init
	.thumb
	.thumb_func
	.type	libaroma_font_init, %function
libaroma_font_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	ldr	r4, .L514
.LPIC147:
	add	r4, pc
	ldr	r5, [r4]
	cbz	r5, .L512
	movs	r0, #0
	pop	{r3, r4, r5, r6, r7, pc}
.L512:
	ldr	r6, .L514+4
.LPIC148:
	add	r6, pc
	mov	r0, r6
	add	r7, r6, #12
	bl	omp_destroy_nest_lock(PLT)
	mov	r0, r7
	bl	omp_destroy_nest_lock(PLT)
	add	r0, r6, #24
	bl	omp_destroy_nest_lock(PLT)
	mov	r0, r7
	bl	omp_set_nest_lock(PLT)
	mov	r0, r4
	bl	FT_Init_FreeType(PLT)
	mov	r6, r0
	cbz	r0, .L513
	bl	libaroma_debug_output(PLT)
	mov	r4, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L514+8
	mov	r2, r0
	mov	r0, r4
.LPIC156:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L514+12
	movs	r1, #1
	movs	r2, #41
.LPIC157:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L514+16
	ldr	r2, .L514+20
.LPIC158:
	add	r1, pc
.LPIC159:
	add	r2, pc
	bl	fprintf(PLT)
	mov	r0, r7
	bl	omp_unset_nest_lock(PLT)
	mov	r0, r5
	pop	{r3, r4, r5, r6, r7, pc}
.L513:
	ldr	r0, [r4]
	movs	r1, #1
	bl	FT_Library_SetLcdFilter(PLT)
	ldr	r0, .L514+24
	mov	r1, r6
	movs	r2, #200
.LPIC154:
	add	r0, pc
	bl	memset(PLT)
	mov	r0, r7
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #1
	pop	{r3, r4, r5, r6, r7, pc}
.L515:
	.align	2
.L514:
	.word	.LANCHOR3-(.LPIC147+4)
	.word	.LANCHOR0-(.LPIC148+4)
	.word	.LC14-(.LPIC156+4)
	.word	.LC15-(.LPIC157+4)
	.word	.LC16-(.LPIC158+4)
	.word	.LC17-(.LPIC159+4)
	.word	.LANCHOR2-(.LPIC154+4)
	.size	libaroma_font_init, .-libaroma_font_init
	.section	.text.libaroma_font_release,"ax",%progbits
	.align	2
	.global	libaroma_font_release
	.thumb
	.thumb_func
	.type	libaroma_font_release, %function
libaroma_font_release:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	ldr	r4, .L526
.LPIC161:
	add	r4, pc
	add	r5, r4, #12
	mov	r0, r5
	bl	omp_set_nest_lock(PLT)
	ldr	r3, .L526+4
.LPIC162:
	add	r3, pc
	ldr	r6, [r3]
	cmp	r6, #0
	beq	.L524
	movs	r4, #0
	bl	_libaroma_font_hb_free_functions(PLT)
.L520:
	uxtb	r0, r4
	adds	r4, r4, #1
	bl	libaroma_font_free(PLT)
	cmp	r4, #10
	bne	.L520
	ldr	r4, .L526+8
.LPIC171:
	add	r4, pc
	ldr	r0, [r4]
	bl	FT_Done_FreeType(PLT)
	cbz	r0, .L525
	bl	libaroma_debug_output(PLT)
	mov	r4, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L526+12
	mov	r2, r0
	mov	r0, r4
	ldr	r4, .L526+16
.LPIC177:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L526+20
	movs	r1, #1
	movs	r2, #44
.LPIC181:
	add	r4, pc
.LPIC178:
	add	r0, pc
	add	r5, r4, #12
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L526+24
	ldr	r2, .L526+28
.LPIC179:
	add	r1, pc
.LPIC180:
	add	r2, pc
.L523:
	bl	fprintf(PLT)
	mov	r0, r5
	bl	omp_unset_nest_lock(PLT)
	mov	r0, r4
	bl	omp_init_nest_lock(PLT)
	mov	r0, r5
	bl	omp_init_nest_lock(PLT)
	add	r0, r4, #24
	bl	omp_init_nest_lock(PLT)
	movs	r0, #0
	pop	{r3, r4, r5, r6, r7, pc}
.L525:
	ldr	r3, .L526+32
	str	r0, [r4]
.LPIC173:
	add	r3, pc
	add	r5, r3, #12
	mov	r4, r3
	mov	r0, r5
	bl	omp_unset_nest_lock(PLT)
	mov	r0, r4
	bl	omp_init_nest_lock(PLT)
	mov	r0, r5
	bl	omp_init_nest_lock(PLT)
	add	r0, r4, #24
	bl	omp_init_nest_lock(PLT)
	movs	r0, #1
	pop	{r3, r4, r5, r6, r7, pc}
.L524:
	bl	libaroma_debug_output(PLT)
	mov	r7, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L526+36
	mov	r2, r0
	mov	r0, r7
.LPIC163:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L526+40
	movs	r1, #1
	movs	r2, #50
.LPIC164:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L526+44
	ldr	r2, .L526+48
.LPIC165:
	add	r1, pc
.LPIC166:
	add	r2, pc
	b	.L523
.L527:
	.align	2
.L526:
	.word	.LANCHOR0-(.LPIC161+4)
	.word	.LANCHOR3-(.LPIC162+4)
	.word	.LANCHOR3-(.LPIC171+4)
	.word	.LC14-(.LPIC177+4)
	.word	.LANCHOR0-(.LPIC181+4)
	.word	.LC19-(.LPIC178+4)
	.word	.LC16-(.LPIC179+4)
	.word	.LC17-(.LPIC180+4)
	.word	.LANCHOR0-(.LPIC173+4)
	.word	.LC14-(.LPIC163+4)
	.word	.LC18-(.LPIC164+4)
	.word	.LC16-(.LPIC165+4)
	.word	.LC17-(.LPIC166+4)
	.size	libaroma_font_release, .-libaroma_font_release
	.section	.text.libaroma_text_shaper,"ax",%progbits
	.align	2
	.global	libaroma_text_shaper
	.thumb
	.thumb_func
	.type	libaroma_text_shaper, %function
libaroma_text_shaper:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r0
	sub	sp, sp, #76
	mov	r5, r1
	movs	r1, #1
	ldrb	r0, [r0]	@ zero_extendqisi2
	bl	libaroma_font_get(PLT)
	cmp	r0, #0
	beq	.L529
	ldr	r8, .L545
.LPIC185:
	add	r8, pc
	mov	r0, r8
	bl	omp_set_nest_lock(PLT)
	ldrb	r6, [r5, #2]	@ zero_extendqisi2
	ldrb	r7, [r4]	@ zero_extendqisi2
	lsrs	r6, r6, #4
	mov	r0, r6
	bl	libaroma_font_size_px(PLT)
	movs	r2, #0
	mov	r1, r0
	mov	r0, r7
	bl	libaroma_font_set_size(PLT)
	ldrb	r0, [r4]	@ zero_extendqisi2
	bl	libaroma_font_get_face(PLT)
	ldr	r7, [r0, #4]
	bl	hb_buffer_create(PLT)
	str	r0, [sp, #40]
	bl	hb_ucdn_get_unicode_funcs(PLT)
	mov	r1, r0
	ldr	r0, [sp, #40]
	bl	hb_buffer_set_unicode_funcs(PLT)
	ldrb	r1, [r5, #32]	@ zero_extendqisi2
	ldr	r0, [sp, #40]
	cmp	r1, #0
	ite	eq
	moveq	r1, #4
	movne	r1, #5
	bl	hb_buffer_set_direction(PLT)
	ldr	r2, [r4, #8]
	movs	r3, #0
	ldr	r1, [r4, #4]
	ldr	r0, [sp, #40]
	str	r2, [sp]
	bl	hb_buffer_add_utf32(PLT)
	movs	r2, #0
	mov	r0, r7
	ldr	r1, [sp, #40]
	mov	r3, r2
	bl	hb_shape(PLT)
	ldr	r0, [sp, #40]
	bl	hb_buffer_get_length(PLT)
	mov	r7, r0
	str	r0, [sp, #64]
	ldr	r0, [sp, #40]
	cmp	r7, #0
	beq	.L544
	add	r7, sp, #64
	mov	r1, r7
	bl	hb_buffer_get_glyph_infos(PLT)
	mov	r1, r7
	str	r0, [sp, #56]
	ldr	r0, [sp, #40]
	bl	hb_buffer_get_glyph_positions(PLT)
	str	r0, [sp, #60]
	movs	r0, #20
	bl	malloc(PLT)
	ldr	r1, [sp, #64]
	str	r0, [sp, #44]
	str	r1, [r0, #4]
	add	r0, r1, r1, lsl #1
	str	r1, [sp, #24]
	lsls	r0, r0, #2
	bl	malloc(PLT)
	ldrb	r2, [r4]	@ zero_extendqisi2
	ldrb	r3, [r5, #32]	@ zero_extendqisi2
	ldr	r5, [sp, #44]
	and	r2, r2, #15
	str	r0, [sp, #52]
	orr	r6, r2, r6, lsl #4
	ldr	r4, [sp, #52]
	movs	r0, #0
	strb	r3, [r5, #13]
	strb	r6, [r5, #12]
	ldr	r6, [sp, #24]
	str	r4, [r5]
	str	r0, [r5, #16]
	cmp	r6, #0
	beq	.L539
	cmp	r6, #2
	bls	.L540
	subs	r3, r6, #3
	ldr	r5, [sp, #56]
	bic	r3, r3, #1
	mvn	r10, #-2147483648
	adds	r3, r3, #2
	mov	r8, r0
	str	r3, [sp, #48]
	mov	ip, r0
	ldr	r3, [sp, #60]
	mov	r2, r4
	str	r10, [sp, #20]
	mov	lr, r0
	str	r10, [sp, #32]
	mov	fp, r5
	mov	r10, r8
	mov	r1, r8
	mov	r7, #-2147483648
	str	r0, [sp, #8]
	str	r7, [sp, #12]
	str	r7, [sp, #16]
.L534:
	ldr	r6, [r3, #8]
	adds	r1, r1, #2
	ldr	r4, [r3, #12]
	add	fp, fp, #40
	str	r1, [sp, #8]
	adds	r2, r2, #24
	ldr	r1, [r3]
	ldr	r5, [fp, #-40]
	asrs	r6, r6, #6
	asrs	r4, r4, #6
	ldr	r9, [r3, #4]
	add	r8, r6, lr
	pld	[r3, #152]
	asrs	r1, r1, #6
	subs	r7, r0, r4
	pld	[r3, #172]
	add	r6, r6, r10
	strh	r8, [r2, #-20]	@ movhi
	asr	r9, r9, #6
	str	r5, [r2, #-24]
	add	r8, r10, r1
	strh	r1, [r2, #-16]	@ movhi
	add	lr, lr, r1
	strh	r7, [r2, #-18]	@ movhi
	add	r5, ip, r9
	ldr	r7, [r3, #28]
	add	ip, ip, r4
	ldr	r1, [r3, #20]
	rsb	r0, r9, r0
	str	r5, [sp, #28]
	adds	r3, r3, #40
	ldr	r5, [r3, #-8]
	asr	r10, r7, #6
	ldr	r7, [fp, #-20]
	ldr	r4, [r3, #-16]
	asrs	r1, r1, #6
	str	r7, [r2, #-12]
	add	r7, r8, r10
	cmp	r7, r6
	add	r10, lr, r10
	str	r10, [sp, #36]
	add	r10, r8, r1
	mov	r8, r7
	it	ge
	movge	r8, r6
	cmp	r6, r7
	asr	r9, r5, #6
	it	lt
	movlt	r6, r7
	ldr	r5, [sp, #28]
	ldr	r7, [sp, #36]
	add	lr, lr, r1
	strh	r1, [r2, #-4]	@ movhi
	asrs	r4, r4, #6
	add	r5, r5, r9
	strh	r7, [r2, #-8]	@ movhi
	cmp	r5, ip
	ldr	r7, [sp, #20]
	mov	r1, r5
	it	ge
	movge	r1, ip
	cmp	r5, ip
	it	lt
	movlt	r5, ip
	ldr	ip, [sp, #28]
	cmp	r7, r8
	rsb	r9, r9, r0
	it	ge
	movge	r7, r8
	subs	r0, r0, r4
	str	r7, [sp, #20]
	add	ip, ip, r4
	ldr	r7, [sp, #16]
	ldr	r4, [sp, #32]
	strh	r9, [r2, #-6]	@ movhi
	cmp	r7, r6
	it	lt
	movlt	r7, r6
	ldr	r6, [sp, #12]
	cmp	r4, r1
	str	r7, [sp, #16]
	it	ge
	movge	r4, r1
	cmp	r6, r5
	str	r4, [sp, #32]
	it	lt
	movlt	r6, r5
	str	r6, [sp, #12]
	ldr	r1, [sp, #8]
	ldr	r4, [sp, #48]
	cmp	r1, r4
	bne	.L534
	mov	fp, r10
	ldr	r10, [sp, #32]
	mov	r9, r1
	mov	r8, lr
.L533:
	ldr	r6, [sp, #52]
	add	r7, r9, r9, lsl #2
	add	r2, r9, r9, lsl #1
	ldr	r3, [sp, #60]
	ldr	r4, [sp, #56]
	lsls	r7, r7, #2
	add	r2, r6, r2, lsl #2
	add	r3, r3, r7
	add	r7, r7, r4
	adds	r2, r2, #8
.L536:
	ldmia	r3, {r1, lr}
	add	r9, r9, #1
	ldr	r6, [r3, #8]
	adds	r3, r3, #20
	ldr	r4, [r7], #20
	ldr	r5, [r3, #-8]
	asr	lr, lr, #6
	asrs	r1, r1, #6
	asrs	r6, r6, #6
	str	r4, [r2, #-8]
	str	lr, [sp, #28]
	ldr	lr, [sp, #20]
	add	r4, r6, r8
	add	r6, r6, fp
	asrs	r5, r5, #6
	strh	r4, [r2, #-4]	@ movhi
	add	fp, fp, r1
	cmp	lr, r6
	sub	r4, r0, r5
	it	ge
	movge	lr, r6
	strh	r4, [r2, #-2]	@ movhi
	str	lr, [sp, #20]
	add	r5, r5, ip
	ldr	lr, [sp, #16]
	add	r8, r8, r1
	ldr	r4, [sp, #12]
	strh	r1, [r2], #12	@ movhi
	cmp	lr, r6
	it	lt
	movlt	lr, r6
	cmp	r10, r5
	ldr	r6, [sp, #24]
	it	ge
	movge	r10, r5
	cmp	r4, r5
	str	lr, [sp, #16]
	it	lt
	movlt	r4, r5
	ldr	r5, [sp, #28]
	cmp	r6, r9
	str	r4, [sp, #12]
	add	ip, ip, r5
	sub	r0, r0, r5
	bhi	.L536
	mov	r7, r4
	ldr	r4, [sp, #20]
	mov	r6, ip
	cmp	r4, fp
	it	ge
	movge	r4, fp
	cmp	ip, r10
	it	ge
	movge	r6, r10
	cmp	fp, lr
	ite	ge
	rsbge	r4, r4, fp
	rsblt	r4, r4, lr
	cmp	ip, r7
	ite	ge
	rsbge	r6, r6, ip
	rsblt	r6, r6, r7
	uxth	r4, r4
	uxth	r6, r6
.L532:
	ldr	r0, [sp, #40]
	bl	hb_buffer_destroy(PLT)
	ldr	r1, [sp, #44]
	ldr	r0, .L545+4
	strh	r4, [r1, #8]	@ movhi
.LPIC187:
	add	r0, pc
	strh	r6, [r1, #10]	@ movhi
	bl	omp_unset_nest_lock(PLT)
	ldr	r0, [sp, #44]
.L529:
	add	sp, sp, #76
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L544:
	bl	hb_buffer_destroy(PLT)
	mov	r0, r8
	bl	omp_unset_nest_lock(PLT)
	mov	r0, r7
	b	.L529
.L540:
	mov	r5, #-2147483648
	mvn	r10, #-2147483648
	str	r5, [sp, #12]
	mov	r8, r0
	mov	ip, r0
	mov	fp, r0
	mov	r9, r0
	str	r10, [sp, #20]
	str	r5, [sp, #16]
	b	.L533
.L539:
	mov	r4, r6
	b	.L532
.L546:
	.align	2
.L545:
	.word	.LANCHOR0-(.LPIC185+4)
	.word	.LANCHOR0-(.LPIC187+4)
	.size	libaroma_text_shaper, .-libaroma_text_shaper
	.section	.text.libaroma_text_shaper_free,"ax",%progbits
	.align	2
	.global	libaroma_text_shaper_free
	.thumb
	.thumb_func
	.type	libaroma_text_shaper_free, %function
libaroma_text_shaper_free:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	cbz	r0, .L550
	ldr	r0, [r0]
	cbz	r0, .L549
	bl	free(PLT)
.L549:
	mov	r0, r4
	bl	free(PLT)
	movs	r0, #1
	pop	{r4, pc}
.L550:
	pop	{r4, pc}
	.size	libaroma_text_shaper_free, .-libaroma_text_shaper_free
	.section	.text.libaroma_text_get_preshaped,"ax",%progbits
	.align	2
	.global	libaroma_text_get_preshaped
	.thumb
	.thumb_func
	.type	libaroma_text_get_preshaped, %function
libaroma_text_get_preshaped:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #28
	str	r1, [sp, #8]
	cmp	r3, #0
	mov	r8, r0
	mov	r0, #0
	ldrb	r1, [r1, #2]	@ zero_extendqisi2
	mov	fp, r0
	str	r2, [sp, #12]
	ldr	r2, [sp, #8]
	and	r1, r1, #15
	str	r3, [sp, #4]
	ldrb	r9, [r2, #32]	@ zero_extendqisi2
	str	r0, [r8, #4]
	str	r0, [r8, #8]
	strb	r1, [r8]
	ble	.L556
	ldr	r3, [sp, #12]
	mov	r5, #-1
	add	r10, sp, #16
	mov	r6, r0
	subs	r7, r3, #4
.L566:
	ldr	r4, [r7, #4]!
	mov	r2, r10
	mov	fp, #0
	mov	r0, r4
	bl	libaroma_font_glyph_get_id(PLT)
	mov	r0, r4
	bl	ucdn_get_bidi_class(PLT)
	subs	r0, r0, #3
	cmp	r0, #15
	bhi	.L557
	tbb	[pc, r0]
.L559:
	.byte	(.L558-.L559)/2
	.byte	(.L558-.L559)/2
	.byte	(.L557-.L559)/2
	.byte	(.L557-.L559)/2
	.byte	(.L557-.L559)/2
	.byte	(.L560-.L559)/2
	.byte	(.L560-.L559)/2
	.byte	(.L560-.L559)/2
	.byte	(.L560-.L559)/2
	.byte	(.L560-.L559)/2
	.byte	(.L560-.L559)/2
	.byte	(.L560-.L559)/2
	.byte	(.L560-.L559)/2
	.byte	(.L560-.L559)/2
	.byte	(.L560-.L559)/2
	.byte	(.L560-.L559)/2
	.align	1
.L558:
	mov	fp, #1
.L557:
	mov	r0, r4
	bl	ucdn_get_script(PLT)
	subs	r3, r0, #40
	it	ne
	movne	r3, #1
	adds	r2, r5, #1
	it	ne
	movne	r3, #0
	cmp	r3, #0
	it	ne
	movne	r5, r0
	cmp	r6, #0
	beq	.L579
	ldrb	r1, [r8]	@ zero_extendqisi2
	ldrb	r3, [sp, #16]	@ zero_extendqisi2
	cmp	r3, r1
	bne	.L565
	cmp	fp, r9
	bne	.L565
.L563:
	ldr	r3, [sp, #4]
	adds	r6, r6, #1
	cmp	r6, r3
	bne	.L566
.L565:
	adds	r3, r5, #1
	mov	fp, r6
	beq	.L556
	ldr	r2, [sp, #8]
	str	r5, [r2, #36]
	strb	r9, [r2, #32]
.L569:
	add	r4, fp, #1
	str	fp, [r8, #8]
	lsls	r4, r4, #2
	mov	r0, r4
	bl	malloc(PLT)
	subs	r2, r4, #4
	ldr	r1, [sp, #12]
	str	r0, [r8, #4]
	bl	memcpy(PLT)
	ldr	r2, [r8, #8]
	movs	r1, #0
	ldr	r3, [r8, #4]
	movs	r0, #1
	str	r1, [r3, r2, lsl #2]
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L560:
	mov	fp, r9
	b	.L557
.L556:
	ldr	r0, [sp, #8]
	strb	r9, [r0, #32]
	mov	r0, fp
	cmp	fp, #0
	bne	.L569
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L579:
	ldrb	r1, [sp, #16]	@ zero_extendqisi2
	mov	r9, fp
	strb	r1, [r8]
	b	.L563
	.size	libaroma_text_get_preshaped, .-libaroma_text_get_preshaped
	.section	.text.libaroma_text_group,"ax",%progbits
	.align	2
	.global	libaroma_text_group
	.thumb
	.thumb_func
	.type	libaroma_text_group, %function
libaroma_text_group:
	@ args = 0, pretend = 0, frame = 1056
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r0
	ldr	r5, [r0, #64]
	subw	sp, sp, #1060
	cbz	r5, .L606
.L581:
	mov	r0, r5
	addw	sp, sp, #1060
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L606:
	add	r6, sp, #32
	b	.L585
.L582:
	tst	r0, #62
	bne	.L584
.L585:
	mov	r0, r4
	mov	r1, r6
	bl	_libaroma_text_parse_next(PLT)
	sxtb	fp, r0
	cmp	fp, #0
	bge	.L582
.L584:
	and	r3, r0, #32
	strb	r0, [r4, #57]
	and	r8, r3, #255
	cmp	r3, #0
	bne	.L581
	lsls	r3, r0, #29
	bmi	.L586
.L588:
	movs	r5, #0
.L587:
	cmp	fp, #0
	mov	r0, r5
	ittt	lt
	ldrblt	r3, [r4, #56]	@ zero_extendqisi2
	biclt	r3, r3, #1
	strblt	r3, [r4, #56]
	addw	sp, sp, #1060
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L586:
	mov	r0, r6
	bl	libaroma_utf8_len(PLT)
	subs	r5, r0, #0
	ble	.L588
	mov	r0, r6
	mov	r9, r8
	bl	libaroma_utf8_dec(PLT)
	mov	r10, r8
	str	fp, [sp, #12]
	str	r0, [sp, #8]
	mov	r7, r0
	add	r6, sp, #16
	mov	fp, r8
	b	.L593
.L607:
	str	r0, [r10, #16]
.L591:
	ldrsh	r3, [r0, #10]
	mov	r10, r0
	ldrsh	r2, [r0, #8]
	cmp	r8, r3
	add	r9, r9, r2
	it	lt
	movlt	r8, r3
.L590:
	ldr	r3, [r6, #8]
	ldr	r0, [r6, #4]
	subs	r5, r5, r3
	add	r7, r7, r3, lsl #2
	bl	free(PLT)
	cmp	r5, #0
	ble	.L592
.L593:
	mov	r0, r6
	mov	r1, r4
	mov	r2, r7
	mov	r3, r5
	bl	libaroma_text_get_preshaped(PLT)
	cbz	r0, .L592
	mov	r0, r6
	mov	r1, r4
	bl	libaroma_text_shaper(PLT)
	cmp	r0, #0
	beq	.L590
	cmp	fp, #0
	bne	.L607
	mov	fp, r0
	b	.L591
.L592:
	mov	ip, fp
	ldr	fp, [sp, #12]
	mov	r5, ip
	cmp	ip, #0
	beq	.L594
	movs	r0, #8
	str	ip, [sp, #4]
	bl	malloc(PLT)
	ldr	ip, [sp, #4]
	mov	r5, r0
	strh	r9, [r0, #4]	@ movhi
	strh	r8, [r0, #6]	@ movhi
	str	ip, [r0]
.L594:
	ldr	r0, [sp, #8]
	bl	free(PLT)
	b	.L587
	.size	libaroma_text_group, .-libaroma_text_group
	.section	.text._libaroma_text_group_free,"ax",%progbits
	.align	2
	.global	_libaroma_text_group_free
	.thumb
	.thumb_func
	.type	_libaroma_text_group_free, %function
_libaroma_text_group_free:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r5, r0
	cbz	r0, .L613
	cbz	r1, .L611
	ldr	r0, [r0]
	cbz	r0, .L611
.L612:
	ldr	r4, [r0, #16]
	bl	libaroma_text_shaper_free(PLT)
	mov	r0, r4
	cmp	r4, #0
	bne	.L612
.L611:
	mov	r0, r5
	bl	free(PLT)
	movs	r0, #1
	pop	{r3, r4, r5, pc}
.L613:
	pop	{r3, r4, r5, pc}
	.size	_libaroma_text_group_free, .-_libaroma_text_group_free
	.section	.text._libaroma_text_parse_free,"ax",%progbits
	.align	2
	.global	_libaroma_text_parse_free
	.thumb
	.thumb_func
	.type	_libaroma_text_parse_free, %function
_libaroma_text_parse_free:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r4, r0
	ldr	r0, [r0, #40]
	cbz	r0, .L622
	bl	free(PLT)
.L622:
	ldr	r0, [r4, #64]
	cbz	r0, .L623
	movs	r1, #1
	bl	_libaroma_text_group_free(PLT)
.L623:
	ldr	r0, [r4, #68]
	cbz	r0, .L624
	ldrb	r3, [r0]	@ zero_extendqisi2
	cmp	r3, #4
	beq	.L640
.L625:
	bl	free(PLT)
	movs	r3, #0
	str	r3, [r4, #68]
.L624:
	ldr	r0, [r4, #72]
	cbz	r0, .L626
	bl	free(PLT)
	movs	r3, #0
	str	r3, [r4, #72]
.L626:
	mov	r0, r4
	pop	{r3, r4, r5, lr}
	b	free(PLT)
.L640:
	ldr	r5, [r0, #4]
	movs	r1, #0
	mov	r0, r5
	bl	libaroma_canvas_free_ex1(PLT)
	mov	r0, r5
	bl	free(PLT)
	ldr	r0, [r4, #68]
	b	.L625
	.size	_libaroma_text_parse_free, .-_libaroma_text_parse_free
	.section	.text.libaroma_text_group_split,"ax",%progbits
	.align	2
	.global	libaroma_text_group_split
	.thumb
	.thumb_func
	.type	libaroma_text_group_split, %function
libaroma_text_group_split:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r1
	ldr	r1, [r0]
	sub	sp, sp, #44
	str	r0, [sp, #24]
	ldr	r5, [r1]
	str	r1, [sp, #12]
	cmp	r5, #0
	beq	.L642
	mov	r6, r5
	movs	r1, #0
.L644:
	ldr	r6, [r6, #16]
	adds	r1, r1, #1
	cmp	r6, #0
	bne	.L644
	movs	r0, #4
	bl	calloc(PLT)
	subs	r3, r0, #4
	str	r0, [sp, #28]
	str	r3, [sp, #8]
	mov	r2, r3
	mov	r3, r5
.L680:
	ldrsh	r1, [r3, #8]
	ldr	r3, [r3, #16]
	str	r6, [r2, #4]!
	add	r6, r6, r1
	cmp	r3, #0
	bne	.L680
	ldr	r9, [sp, #8]
	mov	r8, r3
	str	r3, [sp]
	str	r3, [sp, #4]
	str	r3, [sp, #20]
.L658:
	ldr	r6, [r9, #4]!
	ldrsh	r3, [r5, #8]
	add	r3, r3, r6
	cmp	r3, r4
	blt	.L646
	ldr	r0, [r5, #4]
	cmp	r0, #0
	ble	.L648
	ldr	r3, [r5]
	add	r0, r0, r0, lsl #1
	mov	r10, #0
	add	r0, r3, r0, lsl #2
.L651:
	ldrsh	r2, [r3, #4]
	adds	r3, r3, #12
	ldrsh	r1, [r3, #-4]
	add	r2, r2, r6
	add	r2, r2, r1
	cmp	r4, r2
	it	gt
	addgt	r10, r10, #1
	cmp	r3, r0
	bne	.L651
	cmp	r10, #0
	beq	.L648
	movs	r0, #20
	bl	malloc(PLT)
	ldr	r3, [r5, #12]	@ unaligned
	mov	r7, r0
	ldr	r1, [r5, #4]	@ unaligned
	mov	lr, r7
	ldr	r0, [r5]	@ unaligned
	add	ip, r10, r10, lsl #1
	ldr	r2, [r5, #8]	@ unaligned
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r0, [r5, #16]	@ unaligned
	str	r0, [lr]	@ unaligned
	lsl	r0, ip, #2
	bl	malloc(PLT)
	str	r10, [r7, #4]
	subs	r3, r4, r6
	ldr	lr, [r5, #4]
	uxth	r3, r3
	str	r0, [r7]
	strh	r3, [r7, #8]	@ movhi
	cmp	lr, #0
	ble	.L678
	movs	r2, #0
	mov	r1, lr
	mov	r3, r2
	mov	lr, r2
	mov	r2, r1
	b	.L655
.L653:
	cmp	r3, r2
	bge	.L649
.L655:
	ldr	r1, [r5]
	add	r0, r3, r3, lsl #1
	adds	r3, r3, #1
	add	r1, r1, r0, lsl #2
	ldrsh	r0, [r1, #4]
	ldrsh	ip, [r1, #8]
	add	r0, r0, r6
	add	r0, r0, ip
	cmp	r4, r0
	ble	.L653
	ldr	r0, [r7]
	add	ip, lr, lr, lsl #1
	ldr	fp, [r1]	@ unaligned
	add	lr, lr, #1
	ldr	r10, [r1, #4]	@ unaligned
	ldr	r1, [r1, #8]	@ unaligned
	add	r2, r0, ip, lsl #2
	str	fp, [r0, ip, lsl #2]	@ unaligned
	str	r10, [r2, #4]	@ unaligned
	str	r1, [r2, #8]	@ unaligned
	ldr	r2, [r5, #4]
	cmp	r3, r2
	blt	.L655
.L649:
	ldrh	r3, [r7, #8]
.L678:
	ldr	r1, [sp, #20]
	cmp	r1, #0
	beq	.L681
	ldr	r2, [sp, #4]
	str	r7, [r2, #16]
.L656:
	ldrsh	r2, [r7, #10]
	ldr	r1, [sp]
	cmp	r8, r2
	it	lt
	movlt	r8, r2
	sxtah	r1, r1, r3
	stmia	sp, {r1, r7}
.L648:
	ldr	r5, [r5, #16]
	cmp	r5, #0
	bne	.L658
	ldr	r2, [sp, #12]
	uxth	r8, r8
	ldr	r3, [sp]
	str	r8, [sp, #32]
	ldr	r7, [r2]
	uxth	r3, r3
	str	r3, [sp, #36]
	cmp	r7, #0
	beq	.L682
	mov	r8, r4
	str	r5, [sp]
	str	r5, [sp, #4]
	str	r5, [sp, #12]
	str	r5, [sp, #16]
.L677:
	ldr	r1, [sp, #8]
	ldr	r4, [r1, #4]!
	cmp	r8, r4
	str	r1, [sp, #8]
	ble	.L698
	ldrsh	r3, [r7, #8]
	add	r3, r3, r4
	cmp	r8, r3
	bgt	.L662
	ldr	lr, [r7, #4]
	cmp	lr, #0
	ble	.L662
	cmp	lr, #2
	ldr	fp, [r7]
	ble	.L683
	sub	r10, lr, #3
	movs	r6, #0
	bic	r10, r10, #1
	mov	r3, r6
	add	r10, r10, #2
	mov	r2, fp
	mov	r5, r8
.L664:
	ldrsh	r1, [r2, #4]
	adds	r3, r3, #2
	ldrsh	ip, [r2, #8]
	ldrsh	r0, [r2, #16]
	add	r9, r1, r4
	cmp	r1, r5
	add	r9, r9, ip
	ldrsh	ip, [r2, #20]
	it	ge
	movge	r1, r5
	cmp	r8, r9
	it	gt
	movgt	r1, r5
	add	r9, r0, r4
	it	le
	addle	r6, r6, #1
	add	ip, ip, r9
	cmp	r0, r1
	pld	[r2, #196]
	it	ge
	movge	r0, r1
	cmp	r8, ip
	ite	gt
	movgt	r5, r1
	movle	r5, r0
	it	le
	addle	r6, r6, #1
	cmp	r10, r3
	add	r2, r2, #24
	bne	.L664
.L663:
	add	r2, r3, r3, lsl #1
	add	fp, fp, r2, lsl #2
.L666:
	ldrsh	r2, [fp, #4]
	adds	r3, r3, #1
	ldrsh	r1, [fp, #8]
	add	fp, fp, #12
	adds	r0, r2, r4
	cmp	r2, r5
	add	r1, r1, r0
	it	ge
	movge	r2, r5
	cmp	r8, r1
	it	le
	addle	r6, r6, #1
	it	le
	movle	r5, r2
	cmp	r3, lr
	blt	.L666
	cmp	r6, #0
	beq	.L662
	movs	r0, #20
	bl	malloc(PLT)
	ldr	r3, [r7, #12]	@ unaligned
	mov	r9, r0
	ldr	r1, [r7, #4]	@ unaligned
	mov	lr, r9
	ldr	r0, [r7]	@ unaligned
	add	ip, r6, r6, lsl #1
	ldr	r2, [r7, #8]	@ unaligned
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r0, [r7, #16]	@ unaligned
	str	r0, [lr]	@ unaligned
	lsl	r0, ip, #2
	bl	malloc(PLT)
	ldrh	r3, [r7, #8]
	str	r6, [r9, #4]
	ldr	lr, [r7, #4]
	add	r3, r3, r4
	str	r0, [r9]
	subs	r3, r3, r5
	uxth	r0, r3
	cmp	lr, #0
	strh	r0, [r9, #8]	@ movhi
	ble	.L667
	movs	r2, #0
	mov	r1, lr
	mov	r3, r2
	mov	lr, r2
	mov	r2, r1
	b	.L670
.L668:
	cmp	r3, r2
	bge	.L699
.L670:
	ldr	r1, [r7]
	add	r0, r3, r3, lsl #1
	adds	r3, r3, #1
	add	r1, r1, r0, lsl #2
	ldrsh	r0, [r1, #4]
	ldrsh	r6, [r1, #8]
	add	r0, r0, r4
	add	r0, r0, r6
	cmp	r8, r0
	bgt	.L668
	ldr	r0, [r9]
	add	r6, lr, lr, lsl #1
	ldr	r10, [r1]	@ unaligned
	add	lr, lr, #1
	ldr	ip, [r1, #4]	@ unaligned
	ldr	r1, [r1, #8]	@ unaligned
	add	r2, r0, r6, lsl #2
	str	r10, [r0, r6, lsl #2]	@ unaligned
	str	ip, [r2, #4]	@ unaligned
	str	r1, [r2, #8]	@ unaligned
	ldr	r2, [r7, #4]
	cmp	r3, r2
	blt	.L670
.L699:
	ldr	r6, [r9, #4]
	ldrh	r0, [r9, #8]
.L667:
	cmp	r5, r8
	it	ge
	movge	r5, r8
	cmp	r6, #0
	bgt	.L671
.L674:
	ldr	r3, [sp, #16]
	cmp	r3, #0
	beq	.L700
.L694:
	ldr	r1, [sp, #12]
	str	r9, [r1, #16]
.L672:
	ldr	r2, [sp, #4]
	ldr	r1, [sp]
	ldrsh	r3, [r9, #10]
	str	r9, [sp, #12]
	sxtah	r2, r2, r0
	cmp	r1, r3
	it	lt
	movlt	r1, r3
	str	r2, [sp, #4]
	str	r1, [sp]
.L662:
	ldr	r7, [r7, #16]
	cmp	r7, #0
	bne	.L677
	ldr	r2, [sp, #4]
	ldr	r3, [sp]
	ldr	r0, [sp, #28]
	uxth	r4, r2
	uxth	r5, r3
.L659:
	bl	free(PLT)
	ldr	r1, [sp, #24]
	ldr	r0, [r1]
	movs	r1, #1
	bl	_libaroma_text_group_free(PLT)
	movs	r0, #8
	bl	malloc(PLT)
	ldr	r2, [sp, #24]
	mov	r3, r0
	ldr	r1, [sp, #20]
	movs	r0, #8
	str	r3, [r2]
	ldr	r2, [sp, #36]
	str	r1, [r3]
	ldr	r1, [sp, #32]
	strh	r2, [r3, #4]	@ movhi
	strh	r1, [r3, #6]	@ movhi
	bl	malloc(PLT)
	ldr	r2, [sp, #16]
	strh	r4, [r0, #4]	@ movhi
	strh	r5, [r0, #6]	@ movhi
	str	r2, [r0]
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L698:
	movs	r0, #20
	bl	malloc(PLT)
	ldr	r1, [r7, #4]	@ unaligned
	mov	r9, r0
	ldr	r2, [r7, #8]	@ unaligned
	mov	r4, r9
	ldr	r0, [r7]	@ unaligned
	ldr	r3, [r7, #12]	@ unaligned
	stmia	r4!, {r0, r1, r2, r3}
	movs	r2, #0
	ldr	r0, [r7, #16]	@ unaligned
	str	r0, [r4]	@ unaligned
	str	r2, [r7]
	str	r2, [r7, #4]
	cmp	r9, #0
	beq	.L662
	ldr	r6, [r9, #4]
	mov	r5, r8
	ldrh	r0, [r9, #8]
	cmp	r6, #0
	ble	.L674
.L671:
	add	r6, r6, r6, lsl #1
	ldr	r4, [r9]
	uxth	r5, r5
	movs	r3, #0
	lsls	r6, r6, #2
.L675:
	adds	r2, r4, r3
	adds	r3, r3, #12
	ldrh	r1, [r2, #4]
	cmp	r3, r6
	sub	r1, r1, r5
	strh	r1, [r2, #4]	@ movhi
	bne	.L675
	ldr	r3, [sp, #16]
	cmp	r3, #0
	bne	.L694
.L700:
	str	r9, [sp, #16]
	b	.L672
.L646:
	movs	r0, #20
	bl	malloc(PLT)
	ldr	r1, [r5, #4]	@ unaligned
	mov	r7, r0
	ldr	r2, [r5, #8]	@ unaligned
	mov	r6, r7
	ldr	r0, [r5]	@ unaligned
	ldr	r3, [r5, #12]	@ unaligned
	stmia	r6!, {r0, r1, r2, r3}
	movs	r2, #0
	ldr	r0, [r5, #16]	@ unaligned
	str	r0, [r6]	@ unaligned
	str	r2, [r5]
	str	r2, [r5, #4]
	cmp	r7, #0
	beq	.L648
	ldrh	r3, [r7, #8]
	b	.L678
.L681:
	str	r7, [sp, #20]
	b	.L656
.L683:
	movs	r6, #0
	mov	r5, r8
	mov	r3, r6
	b	.L663
.L642:
	mov	r1, r5
	movs	r0, #4
	str	r5, [sp, #32]
	bl	calloc(PLT)
	ldr	r5, [sp, #32]
	str	r0, [sp, #28]
	str	r5, [sp, #36]
	mov	r4, r5
	str	r5, [sp, #20]
	str	r5, [sp, #16]
	b	.L659
.L682:
	mov	r4, r5
	str	r5, [sp, #16]
	ldr	r0, [sp, #28]
	b	.L659
	.size	libaroma_text_group_split, .-libaroma_text_group_split
	.global	__aeabi_idivmod
	.section	.text.libaroma_text_tabwidth,"ax",%progbits
	.align	2
	.global	libaroma_text_tabwidth
	.thumb
	.thumb_func
	.type	libaroma_text_tabwidth, %function
libaroma_text_tabwidth:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	lsls	r4, r1, #3
	mov	r1, r4
	bl	__aeabi_idivmod(PLT)
	subs	r0, r4, r1
	pop	{r4, pc}
	.size	libaroma_text_tabwidth, .-libaroma_text_tabwidth
	.section	.text.libaroma_textline_get_floated_image_width,"ax",%progbits
	.align	2
	.global	libaroma_textline_get_floated_image_width
	.thumb
	.thumb_func
	.type	libaroma_textline_get_floated_image_width, %function
libaroma_textline_get_floated_image_width:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6}
	ldr	r5, [r0, #76]
	cmp	r5, #0
	ble	.L711
	ldr	r3, [r0, #72]
	add	r5, r5, r5, lsl #1
	ldr	r1, [r1, #4]
	cbz	r2, .L705
	add	r5, r3, r5, lsl #2
	movs	r0, #0
.L708:
	ldr	r4, [r3, #4]
	cmp	r4, r1
	ble	.L706
	ldrb	r4, [r3, #8]	@ zero_extendqisi2
	cmp	r4, r2
	bne	.L706
	ldrsh	r4, [r3]
	sxth	r0, r0
	cmp	r4, r0
	it	lt
	movlt	r4, r0
	uxth	r0, r4
.L706:
	adds	r3, r3, #12
	cmp	r3, r5
	bne	.L708
.L704:
	sxth	r0, r0
	pop	{r4, r5, r6}
	bx	lr
.L705:
	lsls	r6, r5, #2
	mov	r0, r2
.L710:
	adds	r4, r3, r2
	sxth	r5, r0
	ldr	r4, [r4, #4]
	cmp	r4, r1
	ble	.L709
	ldrsh	r0, [r3, r2]
	cmp	r0, r5
	it	lt
	movlt	r0, r5
	uxth	r0, r0
.L709:
	adds	r2, r2, #12
	cmp	r2, r6
	bne	.L710
	sxth	r0, r0
	pop	{r4, r5, r6}
	bx	lr
.L711:
	movs	r0, #0
	b	.L704
	.size	libaroma_textline_get_floated_image_width, .-libaroma_textline_get_floated_image_width
	.section	.text.libaroma_textshaped_span,"ax",%progbits
	.align	2
	.global	libaroma_textshaped_span
	.thumb
	.thumb_func
	.type	libaroma_textshaped_span, %function
libaroma_textshaped_span:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r4, r0
	movs	r0, #16
	mov	r5, r1
	bl	malloc(PLT)
	movs	r2, #0
	ldrh	r1, [r5, #4]
	ldr	lr, [r4]
	ldr	r7, [r4, #4]
	str	r2, [r4]
	str	r2, [r4, #4]
	ldrb	r6, [r4, #12]	@ zero_extendqisi2
	ldrb	r2, [r5]	@ zero_extendqisi2
	str	lr, [r0]
	str	r7, [r0, #4]
	strb	r6, [r0, #8]
	strh	r1, [r0, #10]	@ movhi
	strb	r2, [r0, #12]
	pop	{r3, r4, r5, r6, r7, pc}
	.size	libaroma_textshaped_span, .-libaroma_textshaped_span
	.section	.text.libaroma_textline_align,"ax",%progbits
	.align	2
	.global	libaroma_textline_align
	.thumb
	.thumb_func
	.type	libaroma_textline_align, %function
libaroma_textline_align:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, r0
	ldr	r7, [sp, #40]
	mov	r9, r3
	movs	r3, #0
	mov	r8, r1
	ldr	r0, [r0]
	mov	fp, r2
	ldr	r4, [sp, #44]
	cmp	r7, #-1
	it	eq
	moveq	r7, r3
	str	r9, [r6, #24]
	str	r3, [r6, #20]
	subs	r4, r4, r7
	rsb	r10, r9, r4
	cmp	r0, #0
	beq	.L767
	mov	r4, r0
	mov	r1, r3
	movs	r5, #1
.L718:
	ldrb	r3, [r4]	@ zero_extendqisi2
	cbz	r5, .L720
	cmp	r3, #6
	beq	.L813
	cmp	r3, #4
	it	ne
	movne	r5, #1
	beq	.L816
.L720:
	cmp	r3, #2
	ldr	r2, [r4, #8]
	beq	.L817
	cmp	r2, #0
	beq	.L818
.L724:
	mov	r1, r4
	mov	r4, r2
	b	.L718
.L817:
	cmp	r2, #0
	bne	.L724
	cmp	r1, #0
	beq	.L819
	str	r2, [r1, #8]
.L726:
	mov	r0, r4
	bl	free(PLT)
	ldr	r0, [r6]
	mov	r3, r0
.L727:
	cmp	r7, #0
	ble	.L717
	cbz	r0, .L717
	mov	r4, r0
	b	.L733
.L731:
	ldrh	r2, [r4, #2]
	add	r2, r2, r7
	strh	r2, [r4, #2]	@ movhi
	ldr	r4, [r4, #8]
	cbz	r4, .L717
.L733:
	ldrb	r2, [r4]	@ zero_extendqisi2
	cmp	r2, #4
	bne	.L731
	ldr	r2, [r4, #4]
	cmp	r2, #0
	beq	.L731
	ldrb	r2, [r2, #8]	@ zero_extendqisi2
	lsls	r2, r2, #30
	beq	.L731
	ldr	r4, [r4, #8]
	cmp	r4, #0
	bne	.L733
.L717:
	cmp	fp, #2
	beq	.L820
	cmp	fp, #1
	beq	.L821
	cmp	fp, #3
	beq	.L822
.L736:
	ldrh	r2, [r6, #16]
	ldrh	r1, [r6, #8]
	sxth	r4, r2
	sxth	r0, r1
	cmp	r4, r0
	bge	.L757
	ldrb	r0, [r8, #12]	@ zero_extendqisi2
	movw	r2, #34079
	movt	r2, 20971
	smulbb	r1, r1, r0
	smull	r0, r2, r2, r1
	asrs	r1, r1, #31
	rsb	r2, r1, r2, asr #5
	uxth	r2, r2
	strh	r2, [r6, #16]	@ movhi
.L757:
	cbz	r3, .L758
	ldrb	r2, [r3]	@ zero_extendqisi2
	movs	r5, #0
	ldr	r4, [r3, #8]
	cmp	r2, #2
	beq	.L823
.L759:
	cbz	r4, .L762
.L825:
	mov	r5, r3
	mov	r3, r4
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r4, [r3, #8]
	cmp	r2, #2
	bne	.L759
.L823:
	cbz	r5, .L824
	str	r4, [r5, #8]
.L761:
	mov	r0, r3
	bl	free(PLT)
	mov	r3, r5
	cmp	r4, #0
	bne	.L825
.L762:
	ldrh	r2, [r6, #16]
.L758:
	ldr	r3, [r8, #60]
	mov	r0, r6
	sxtah	r2, r3, r2
	str	r2, [r8, #60]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L816:
	ldr	r3, [r4, #4]
	cbz	r3, .L722
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	lsls	r5, r3, #30
	beq	.L722
.L813:
	ldr	r3, [r6, #12]
	movs	r5, #0
	str	r3, [r6, #24]
	ldrb	r3, [r4]	@ zero_extendqisi2
	b	.L720
.L722:
	ldr	r2, [r4, #8]
	movs	r5, #1
	cmp	r2, #0
	bne	.L724
.L818:
	mov	r3, r0
	b	.L727
.L824:
	str	r4, [r6]
	b	.L761
.L820:
	cmp	r5, #0
	bne	.L826
.L734:
	cmp	r3, #0
	beq	.L736
	mov	r2, r3
	b	.L739
.L737:
	ldrh	r1, [r2, #2]
	add	r1, r1, r10
	strh	r1, [r2, #2]	@ movhi
.L738:
	ldr	r2, [r2, #8]
	cmp	r2, #0
	beq	.L736
.L739:
	ldrb	r1, [r2]	@ zero_extendqisi2
	cmp	r1, #4
	bne	.L737
	ldr	r1, [r2, #4]
	cmp	r1, #0
	beq	.L737
	ldrb	r1, [r1, #8]	@ zero_extendqisi2
	lsls	r0, r1, #30
	bne	.L738
	b	.L737
.L821:
	asr	r10, r10, #1
	cbz	r5, .L741
	cmp	r7, #0
	ittt	le
	ldrle	r2, [r6, #20]
	addle	r2, r2, r10
	strle	r2, [r6, #20]
	add	r2, r9, r10
	str	r2, [r6, #24]
.L741:
	cmp	r3, #0
	beq	.L736
	mov	r2, r3
	b	.L745
.L743:
	ldrh	r1, [r2, #2]
	add	r1, r1, r10
	strh	r1, [r2, #2]	@ movhi
.L744:
	ldr	r2, [r2, #8]
	cmp	r2, #0
	beq	.L736
.L745:
	ldrb	r1, [r2]	@ zero_extendqisi2
	cmp	r1, #4
	bne	.L743
	ldr	r1, [r2, #4]
	cmp	r1, #0
	beq	.L743
	ldrb	r1, [r1, #8]	@ zero_extendqisi2
	lsls	r1, r1, #30
	bne	.L744
	b	.L743
.L826:
	ldr	r2, [r6, #12]
	cmp	r7, #0
	it	le
	strle	r10, [r6, #20]
	str	r2, [r6, #24]
	b	.L734
.L767:
	mov	r3, r0
	movs	r5, #1
	b	.L717
.L819:
	str	r1, [r6]
	b	.L726
.L822:
	cbz	r5, .L753
	ldr	r2, [r6, #12]
	movs	r1, #0
	str	r1, [r6, #20]
	str	r2, [r6, #24]
.L753:
	cmp	r10, #0
	ble	.L736
	cmp	r3, #0
	beq	.L736
	movs	r7, #0
	movs	r5, #1
	mov	r4, r7
	b	.L752
.L747:
	ldrh	r1, [r3, #2]
	cmp	r2, #2
	it	ne
	movne	r5, #0
	add	r1, r1, r4
	strh	r1, [r3, #2]	@ movhi
	beq	.L827
.L765:
	ldr	r3, [r3, #8]
	cbz	r3, .L828
.L752:
	ldrb	r2, [r3]	@ zero_extendqisi2
	cmp	r2, #4
	bne	.L747
	ldr	r2, [r3, #4]
	cbz	r2, .L748
	ldrb	r2, [r2, #8]	@ zero_extendqisi2
	ands	r2, r2, #3
	bne	.L765
.L748:
	ldrh	r1, [r3, #2]
	mov	r5, r2
	adds	r2, r4, r1
	strh	r2, [r3, #2]	@ movhi
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L752
.L828:
	mov	r3, r0
	cmp	r7, #0
	bne	.L753
	b	.L736
.L827:
	eor	r2, r5, #1
	cmp	r10, #0
	ite	le
	movle	r2, #0
	andgt	r2, r2, #1
	cmp	r2, #0
	beq	.L765
	adds	r7, r7, #1
	adds	r4, r4, #1
	add	r10, r10, #-1
	b	.L765
	.size	libaroma_textline_align, .-libaroma_textline_align
	.section	.text.libaroma_textline_add_span,"ax",%progbits
	.align	2
	.global	libaroma_textline_add_span
	.thumb
	.thumb_func
	.type	libaroma_textline_add_span, %function
libaroma_textline_add_span:
	@ args = 20, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r9, r0
	ldrb	r5, [sp, #40]	@ zero_extendqisi2
	movs	r0, #12
	mov	r4, r3
	mov	r6, r1
	ldrb	r7, [sp, #44]	@ zero_extendqisi2
	mov	fp, r2
	ldrsh	r10, [sp, #48]
	ldrsh	r8, [sp, #52]
	bl	malloc(PLT)
	ldr	r3, [sp, #56]
	strb	r7, [r0]
	str	r3, [r0, #4]
	ldr	r3, [r4]
	cbz	r5, .L830
	cbz	r3, .L849
.L831:
	ldr	r3, [fp]
	ldr	r2, [r6]
	cmp	r3, r2
	beq	.L841
	cbz	r3, .L836
	str	r0, [r3, #8]
.L837:
	ldr	r3, [r4]
	ldrh	r1, [r3, #2]
	mov	r2, r3
	str	r3, [r0, #8]
	str	r0, [r4]
	strh	r1, [r0, #2]	@ movhi
	cbz	r3, .L829
	uxth	r1, r8
.L840:
	ldrh	r3, [r2, #2]
	add	r3, r3, r1
	strh	r3, [r2, #2]	@ movhi
	ldr	r2, [r2, #8]
	cmp	r2, #0
	bne	.L840
.L829:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L830:
	cbz	r3, .L841
	str	r5, [fp]
	str	r5, [r4]
.L841:
	ldr	r3, [r9]
	movs	r2, #0
	strh	r10, [r0, #2]	@ movhi
	str	r2, [r0, #8]
	cbz	r3, .L850
	ldr	r3, [r6]
	str	r0, [r3, #8]
	str	r0, [r6]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L849:
	ldr	r3, [r6]
	str	r3, [fp]
	str	r0, [r4]
	b	.L831
.L836:
	str	r0, [r9]
	b	.L837
.L850:
	str	r0, [r9]
	str	r0, [r6]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	libaroma_textline_add_span, .-libaroma_textline_add_span
	.section	.text.libaroma_textline_add_span_img,"ax",%progbits
	.align	2
	.global	libaroma_textline_add_span_img
	.thumb
	.thumb_func
	.type	libaroma_textline_add_span_img, %function
libaroma_textline_add_span_img:
	@ args = 20, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	sub	sp, sp, #28
	ldr	r4, [sp, #68]
	mov	r7, r0
	mov	r5, r1
	mov	r9, r2
	ldr	r6, [sp, #64]
	ldrb	r0, [r4, #8]	@ zero_extendqisi2
	ldrb	r2, [sp, #60]	@ zero_extendqisi2
	lsls	r1, r0, #30
	bne	.L873
	ldrh	r0, [r4, #6]
	ldrsh	r7, [r5, #16]
	ldrsh	lr, [r4, #4]
	sxth	r1, r0
	cmp	r7, r1
	mov	r7, #4
	it	lt
	strhlt	r0, [r5, #16]	@ movhi
	mov	r1, r9
	ldrsh	ip, [r6]
	mov	r0, r5
	str	r2, [sp]
	mov	r2, r3
	str	r4, [sp, #16]
	ldr	r3, [sp, #56]
	str	ip, [sp, #8]
	str	lr, [sp, #12]
	str	r7, [sp, #4]
	bl	libaroma_textline_add_span(PLT)
	ldrh	r3, [r4, #4]
	ldrh	r2, [r6]
	add	r3, r3, r2
	strh	r3, [r6]	@ movhi
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L873:
	movs	r0, #12
	bl	malloc(PLT)
	ldr	r3, [r5]
	movs	r2, #4
	str	r4, [r0, #4]
	mov	r8, r0
	strb	r2, [r0]
	str	r0, [r5]
	str	r3, [r0, #8]
	cmp	r3, #0
	beq	.L874
.L854:
	ldrb	r2, [r4, #8]	@ zero_extendqisi2
	mov	r0, r7
	mov	r1, r5
	and	r2, r2, #3
	cmp	r2, #1
	beq	.L875
	movs	r2, #2
	bl	libaroma_textline_get_floated_image_width(PLT)
	ldr	r1, [sp, #72]
	ldrsh	r3, [r4, #4]
	ldr	r2, [r1]
	adds	r6, r0, r3
	subs	r3, r2, r3
	str	r3, [r1]
	strh	r3, [r8, #2]	@ movhi
.L861:
	ldr	r0, [r7, #72]
	cmp	r0, #0
	beq	.L876
	ldr	r3, [r7, #76]
	adds	r3, r3, #1
	add	r1, r3, r3, lsl #1
	lsls	r1, r1, #2
	bl	realloc(PLT)
	mov	r2, r0
	str	r0, [r7, #72]
.L863:
	ldr	r3, [r7, #76]
	adds	r1, r3, #1
	add	r3, r3, r3, lsl #1
	str	r1, [r7, #76]
	lsls	r3, r3, #2
	strh	r6, [r2, r3]	@ movhi
	add	r2, r2, r3
	ldrb	r1, [r4, #8]	@ zero_extendqisi2
	strb	r1, [r2, #8]
	ldr	r0, [r7, #72]
	ldrsh	r1, [r4, #6]
	ldr	r2, [r5, #4]
	add	r3, r3, r0
	add	r2, r2, r1
	str	r2, [r3, #4]
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L875:
	bl	libaroma_textline_get_floated_image_width(PLT)
	ldrh	r1, [r6]
	ldrh	r2, [r4, #4]
	ldr	r3, [r5]
	strh	r0, [r8, #2]	@ movhi
	add	r2, r2, r1
	strh	r2, [r6]	@ movhi
	ldrh	r1, [r4, #4]
	cbnz	r3, .L860
	b	.L857
.L858:
	ldrh	r2, [r3, #2]
	add	r2, r2, r1
	strh	r2, [r3, #2]	@ movhi
.L859:
	ldr	r3, [r3, #8]
	cbz	r3, .L857
.L860:
	ldrb	r2, [r3]	@ zero_extendqisi2
	cmp	r2, #4
	bne	.L858
	ldr	r2, [r3, #4]
	cmp	r2, #0
	beq	.L858
	ldrb	r0, [r2, #8]	@ zero_extendqisi2
	lsls	r0, r0, #30
	bne	.L859
	ldrh	r0, [r2, #4]
	ldrh	r2, [r3, #2]
	add	r2, r2, r0
	strh	r2, [r3, #2]	@ movhi
	b	.L859
.L857:
	ldrsh	r6, [r8, #2]
	sxtah	r6, r6, r1
	b	.L861
.L874:
	str	r0, [r9]
	b	.L854
.L876:
	movs	r0, #12
	bl	malloc(PLT)
	str	r0, [r7, #72]
	mov	r2, r0
	b	.L863
	.size	libaroma_textline_add_span_img, .-libaroma_textline_add_span_img
	.section	.text.libaroma_textline,"ax",%progbits
	.align	2
	.global	libaroma_textline
	.thumb
	.thumb_func
	.type	libaroma_textline, %function
libaroma_textline:
	@ args = 0, pretend = 0, frame = 128
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r0
	sub	sp, sp, #156
	movs	r0, #28
	movs	r6, #0
	bl	malloc(PLT)
	ldr	r3, [r4, #60]
	mov	r5, r0
	mov	r1, r5
	movs	r2, #1
	mov	r0, r4
	str	r6, [r5]
	str	r3, [r5, #4]
	strh	r6, [r5, #8]	@ movhi
	str	r6, [r5, #12]
	str	r6, [r5, #20]
	str	r6, [r5, #24]
	strh	r6, [r5, #16]	@ movhi
	bl	libaroma_textline_get_floated_image_width(PLT)
	ldr	r7, [r4, #52]
	movs	r2, #2
	strh	r0, [sp, #80]	@ movhi
	mov	r1, r5
	mov	r0, r4
	str	r7, [r5, #12]
	str	r7, [r5, #24]
	bl	libaroma_textline_get_floated_image_width(PLT)
	ldr	r3, [r4, #68]
	subs	r2, r7, r0
	str	r2, [sp, #88]
	str	r6, [sp, #96]
	str	r6, [sp, #104]
	str	r6, [sp, #112]
	cbz	r3, .L878
	ldrb	r7, [r3]	@ zero_extendqisi2
	cmp	r7, #5
	beq	.L992
	cmp	r7, #4
	beq	.L993
.L881:
	mov	r0, r3
	bl	free(PLT)
	movs	r3, #0
	str	r3, [r4, #68]
.L878:
	ldrb	r3, [r4, #56]	@ zero_extendqisi2
	lsls	r1, r3, #31
	bpl	.L938
	ldr	r6, .L1006
	movs	r7, #0
	mov	r9, #0
	str	r7, [sp, #40]
	movw	r7, #21846
	mov	fp, r9
.LPIC188:
	add	r6, pc
	movt	r7, 21845
	str	r6, [sp, #60]
	ldr	r6, .L1006+4
	str	r7, [sp, #52]
	mov	r7, #-1
	str	r7, [sp, #44]
.LPIC189:
	add	r6, pc
	str	r6, [sp, #64]
	ldr	r6, .L1006+8
.LPIC190:
	add	r6, pc
	str	r6, [sp, #68]
	ldr	r6, .L1006+12
.LPIC191:
	add	r6, pc
	str	r6, [sp, #76]
	movw	r6, #26215
	movt	r6, 26214
	str	r6, [sp, #72]
	movs	r6, #255
	str	r6, [sp, #48]
	mov	r6, r9
.L930:
	mov	r0, r4
	bl	libaroma_text_group(PLT)
	ldr	r7, [sp, #48]
	str	r0, [sp, #120]
	ldrb	r0, [r4, #2]	@ zero_extendqisi2
	cmp	r7, #255
	it	eq
	ldrbeq	r3, [r4]	@ zero_extendqisi2
	lsr	r0, r0, #4
	itt	eq
	andeq	r3, r3, #3
	streq	r3, [sp, #48]
	bl	libaroma_font_size_px(PLT)
	mov	r7, r0
	ldr	r0, [sp, #52]
	ldr	r1, [sp, #44]
	smull	r0, r10, r0, r7
	adds	r1, r1, #1
	sub	r10, r10, r7, asr #31
	uxth	r10, r10
	str	r10, [sp, #36]
	beq	.L994
.L885:
	ldrsh	r3, [r5, #8]
	ldr	r0, [sp, #120]
	cmp	r3, r7
	it	lt
	strhlt	r7, [r5, #8]	@ movhi
	cmp	r0, #0
	beq	.L887
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L995
	ldrh	r10, [sp, #80]
	ldrsh	r1, [r0, #4]
	ldr	r7, [sp, #88]
	sxth	r2, r10
	add	r1, r1, r2
	cmp	r6, #0
	bne	.L937
	cmp	r7, r1
	blt	.L931
.L932:
	ldr	r6, [r0]
	cbz	r6, .L897
	add	r7, sp, #112
	add	r9, sp, #96
	add	r8, sp, #104
	str	r7, [sp, #32]
	b	.L899
.L996:
	ldrh	r10, [sp, #80]
.L899:
	ldrh	fp, [r6, #8]
	mov	r0, r6
	mov	r1, r4
	ldrb	r7, [r6, #13]	@ zero_extendqisi2
	bl	libaroma_textshaped_span(PLT)
	sxth	r2, r10
	str	r0, [sp, #16]
	sxth	r3, fp
	str	r7, [sp]
	str	r2, [sp, #8]
	movs	r2, #1
	str	r3, [sp, #12]
	mov	r0, r5
	str	r2, [sp, #4]
	mov	r1, r9
	mov	r2, r8
	ldr	r3, [sp, #32]
	bl	libaroma_textline_add_span(PLT)
	ldr	r6, [r6, #16]
	cmp	r6, #0
	bne	.L996
	ldr	r0, [sp, #120]
	ldrh	r10, [sp, #80]
.L897:
	ldrh	r2, [r0, #6]
	ldrh	r1, [r0, #4]
	ldrsh	r6, [r5, #8]
	add	r3, r10, r1
	sxth	r1, r2
	strh	r3, [sp, #80]	@ movhi
	movs	r3, #0
	cmp	r6, r1
	mov	r1, #1
	it	lt
	strhlt	r2, [r5, #8]	@ movhi
	mov	r6, r3
	str	r3, [r4, #64]
	bl	_libaroma_text_group_free(PLT)
.L887:
	ldrb	r2, [r4, #57]	@ zero_extendqisi2
	ldrb	fp, [r4, #32]	@ zero_extendqisi2
	lsls	r3, r2, #28
	bpl	.L901
	ldrsh	r3, [sp, #80]
	ldr	r6, [sp, #36]
	ldr	r1, [sp, #88]
	sxtah	r0, r3, r6
	cmp	r0, r1
	bgt	.L997
	str	r6, [sp, #40]
	movs	r6, #1
.L901:
	lsls	r7, r2, #27
	bpl	.L902
	ldr	r7, [sp, #36]
	ldr	r6, [sp, #48]
	sxth	r1, r7
	cmp	r6, #0
	beq	.L998
	ldrsh	r3, [sp, #80]
	ldr	r2, [sp, #88]
	adds	r0, r3, r1
	cmp	r0, r2
	bgt	.L999
.L904:
	ldr	r7, [sp, #48]
	uxth	r1, r1
	ldrb	r2, [r4, #57]	@ zero_extendqisi2
	movs	r6, #1
	str	r1, [sp, #40]
	cbnz	r7, .L902
	movs	r6, #2
.L902:
	and	r3, r2, #2
	and	r7, r3, #255
	cmp	r3, #0
	bne	.L1000
	lsls	r0, r2, #26
	bpl	.L908
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	lsrs	r3, r3, #4
	lsls	r1, r3, #30
	bpl	.L909
	ldr	r3, [r4, #8]
	movs	r1, #59
	str	r7, [sp, #140]
	str	r7, [sp, #144]
	mov	r0, r3
	str	r3, [sp, #36]
	str	r7, [sp, #148]
	str	r3, [sp, #136]
	bl	strchr(PLT)
	cmp	r0, #0
	beq	.L910
	mov	r8, r0
	movs	r1, #59
	strb	r7, [r8], #1
	mov	r0, r8
	bl	strchr(PLT)
	cmp	r0, #0
	beq	.L911
	mov	r9, r0
	movs	r1, #59
	strb	r7, [r9], #1
	mov	r0, r9
	str	r8, [sp, #140]
	bl	strchr(PLT)
	cmp	r0, #0
	beq	.L912
	mov	r8, r0
	movs	r1, #59
	strb	r7, [r8], #1
	mov	r0, r8
	str	r9, [sp, #144]
	bl	strchr(PLT)
	cbz	r0, .L913
	strb	r7, [r0]
.L913:
	movs	r7, #4
	str	r8, [sp, #148]
	str	r7, [sp, #32]
.L914:
	add	r9, sp, #136
	movs	r2, #0
	mov	r10, #1
	mov	r3, r9
	mov	r8, r2
	mov	r9, r10
	mov	r10, r3
	str	r2, [sp, #56]
	str	r2, [sp, #128]
	str	r2, [sp, #132]
.L936:
	ldr	r7, [r10, r9, lsl #2]
	ldr	r1, [sp, #60]
	mov	r0, r7
	bl	strcmp(PLT)
	cmp	r0, #0
	beq	.L943
	mov	r0, r7
	ldr	r1, [sp, #64]
	bl	strcmp(PLT)
	cmp	r0, #0
	beq	.L944
	mov	r0, r7
	ldr	r1, [sp, #68]
	bl	strcmp(PLT)
	cmp	r0, #0
	bne	.L916
	orr	r8, r8, #4
	uxtb	r8, r8
.L915:
	ldr	r3, [sp, #32]
	add	r9, r9, #1
	cmp	r3, r9
	bgt	.L936
.L935:
	ldr	r7, [sp, #36]
	ldrb	r3, [r7]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L1001
.L928:
	ldr	r0, [r4, #8]
	cbz	r0, .L908
	bl	free(PLT)
	movs	r3, #0
	str	r3, [r4, #8]
.L908:
	ldrb	r3, [r4, #56]	@ zero_extendqisi2
	lsls	r3, r3, #31
	bmi	.L930
	ldr	r2, [sp, #48]
.L883:
	mov	r1, r4
	mov	r0, r5
	ldr	r4, [sp, #44]
	ldr	r5, [sp, #88]
	ldrsh	r3, [sp, #80]
	stmia	sp, {r4, r5}
	bl	libaroma_textline_align(PLT)
	add	sp, sp, #156
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L995:
	ldrh	r3, [sp, #80]
	ldrsh	r1, [r0, #4]
	ldr	r7, [sp, #88]
	sxth	r2, r3
	add	r1, r1, r2
	cmp	r1, r7
	bgt	.L1002
	mov	r10, r3
	cmp	r6, #0
	beq	.L932
.L937:
	ldr	r3, [sp, #40]
	sxth	lr, r3
	add	r1, r1, lr
	cmp	r7, r1
	blt	.L931
	sxth	r3, r10
	cmp	r6, #1
	ite	eq
	moveq	r6, #2
	movne	r6, #3
	movs	r7, #0
	str	r6, [sp, #4]
	str	r3, [sp, #8]
	mov	r0, r5
	add	r2, sp, #104
	str	fp, [sp]
	add	r1, sp, #96
	str	lr, [sp, #12]
	str	r7, [sp, #16]
	add	r3, sp, #112
	bl	libaroma_textline_add_span(PLT)
	ldrh	r2, [sp, #80]
	ldr	r6, [sp, #40]
	ldr	r0, [sp, #120]
	str	r7, [sp, #40]
	add	r2, r2, r6
	uxth	r2, r2
	mov	r10, r2
	strh	r2, [sp, #80]	@ movhi
	b	.L932
.L943:
	mov	r8, #1
	b	.L915
.L994:
	add	r8, r7, r7, lsl #1
	ldrb	r9, [r4, #1]	@ zero_extendqisi2
	ldr	r2, [sp, #88]
	asr	r8, r8, #2
	and	r9, r9, #15
	mul	r3, r8, r9
	str	r3, [sp, #44]
	asrs	r3, r2, #1
	ldr	r0, [sp, #44]
	cmp	r0, r3
	it	ge
	movge	r0, r3
	subs	r2, r2, r0
	str	r0, [sp, #44]
	str	r2, [sp, #88]
	cmp	r9, #0
	beq	.L885
	ldrb	r3, [r4, #56]	@ zero_extendqisi2
	lsls	r2, r3, #30
	bpl	.L885
	bic	r3, r3, #2
	movs	r0, #8
	strb	r3, [r4, #56]
	bl	malloc(PLT)
	ldr	r1, [sp, #72]
	add	r3, r9, #-1
	ldrh	r2, [sp, #80]
	mov	lr, r0
	str	lr, [sp, #16]
	mov	r0, r5
	str	fp, [sp]
	smull	r1, ip, r1, r3
	asrs	r1, r3, #31
	rsb	r9, r8, r2
	ldr	r2, [sp, #44]
	sbfx	r8, r8, #1, #15
	add	r9, r9, r2
	movs	r2, #6
	rsb	r1, r1, ip, asr #1
	ldrh	ip, [r4, #4]
	strh	r8, [lr, #4]	@ movhi
	add	r1, r1, r1, lsl #2
	strh	r9, [lr, #2]	@ movhi
	strh	ip, [lr, #6]	@ movhi
	mov	ip, #0
	rsb	r8, r1, r3
	str	r2, [sp, #4]
	str	ip, [sp, #8]
	add	r1, sp, #96
	str	ip, [sp, #12]
	add	r2, sp, #104
	add	r3, sp, #112
	strb	r8, [lr]
	bl	libaroma_textline_add_span(PLT)
	b	.L885
.L909:
	lsls	r2, r3, #29
	bpl	.L928
	ldr	r7, [sp, #48]
	movs	r0, #8
	cmp	r7, #3
	it	eq
	moveq	r7, #0
	str	r7, [sp, #48]
	bl	malloc(PLT)
	ldr	r7, [sp, #44]
	mov	r6, r0
	mov	r0, r5
	ldr	r5, [sp, #88]
	str	r6, [r4, #68]
	mov	r1, r4
	movs	r4, #5
	str	r7, [sp]
	str	r5, [sp, #4]
	ldrsh	r3, [sp, #80]
	ldr	r2, [sp, #48]
	str	r7, [r6, #4]
	strb	r4, [r6]
	bl	libaroma_textline_align(PLT)
	b	.L990
.L944:
	mov	r8, #2
	b	.L915
.L998:
	ldrsh	r0, [sp, #80]
	ldr	r7, [sp, #44]
	add	r0, r0, r7
	bl	libaroma_text_tabwidth(PLT)
	ldrsh	r3, [sp, #80]
	mov	r1, r0
	ldr	r2, [sp, #88]
	adds	r0, r3, r1
	cmp	r0, r2
	ble	.L904
.L999:
	ldr	r6, [sp, #44]
	mov	r0, r5
	str	r2, [sp, #4]
	mov	r1, r4
	ldr	r2, [sp, #48]
	str	r6, [sp]
	bl	libaroma_textline_align(PLT)
	add	sp, sp, #156
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L916:
	mov	r0, r7
	ldr	r1, [sp, #76]
	bl	strcmp(PLT)
	ldr	r3, [sp, #56]
	cmp	r0, #0
	bne	.L917
	cmp	r3, #1
	bgt	.L915
	add	r7, sp, #152
	add	r2, r7, r3, lsl #2
	adds	r3, r3, #1
	str	r3, [sp, #56]
	str	r0, [r2, #-24]
	b	.L915
.L1001:
	mov	r0, r7
	bl	libaroma_stream(PLT)
	movs	r1, #1
	mov	r2, r1
	bl	libaroma_image_ex(PLT)
	mov	r7, r0
	cmp	r0, #0
	beq	.L928
	ldr	r3, [sp, #128]
	ldr	r1, [sp, #132]
	cmp	r3, #0
	bne	.L921
	cmp	r1, #0
	beq	.L1003
	flds	s12, [r0, #4]	@ int
	flds	s13, [r0]	@ int
	fsitos	s14, s12
	fmsr	s12, r1	@ int
	fsitos	s15, s13
	fsitos	s13, s12
	fdivs	s14, s13, s14
	fmuls	s15, s14, s15
	ftosizs	s15, s15
	fmrs	r3, s15	@ int
.L923:
	movs	r0, #16
	uxth	r9, r3
	str	r1, [sp, #28]
	bl	malloc(PLT)
	ldr	r1, [sp, #28]
	sxth	r2, r9
	ldr	r3, [r5, #4]
	mov	r10, r0
	strh	r9, [r0, #4]	@ movhi
	strh	r1, [r0, #6]	@ movhi
	ldr	r1, [sp, #88]
	str	r7, [r0]
	strb	r8, [r0, #8]
	cmp	r2, r1
	str	r3, [r0, #12]
	ble	.L924
	fmsr	s15, r1	@ int
	uxth	r9, r1
	fmsr	s12, r2	@ int
	fsitos	s13, s15
	fsitos	s14, s12
	flds	s15, [r7, #4]	@ int
	strh	r9, [r0, #4]	@ movhi
	fdivs	s14, s13, s14
	fsitos	s15, s15
	fmuls	s15, s14, s15
	ftosizs	s15, s15
	fmrs	r3, s15	@ int
	strh	r3, [r0, #6]	@ movhi
.L924:
	movs	r0, #2
	bl	libaroma_dp(PLT)
	add	r0, r0, r9
	uxth	r3, r0
	strh	r3, [r10, #4]	@ movhi
	cmp	r6, #0
	bne	.L1004
	ldrsh	r7, [sp, #80]
	ldr	r2, [sp, #88]
	sxtah	r3, r7, r3
	cmp	r3, r2
	bgt	.L933
	add	r6, sp, #112
	add	r9, sp, #96
	add	r8, sp, #104
	str	r6, [sp, #32]
	b	.L934
.L917:
	cmp	r3, #1
	bgt	.L915
	mov	r0, r7
	bl	strlen(PLT)
	movs	r1, #0
	mov	ip, r0
	mov	r2, r1
	mov	r0, r7
	str	ip, [sp, #28]
	bl	strtoul(PLT)
	ldr	ip, [sp, #28]
	mov	r2, r0
	cmp	ip, #3
	ble	.L918
	add	r7, r7, ip
	ldrb	r1, [r7, #-2]	@ zero_extendqisi2
	cmp	r1, #100
	bne	.L918
	ldrb	r1, [r7, #-1]	@ zero_extendqisi2
	cmp	r1, #112
	bne	.L918
	bl	libaroma_dp(PLT)
	mov	r2, r0
.L918:
	ldr	r7, [sp, #56]
	add	r0, sp, #152
	add	r1, r0, r7, lsl #2
	adds	r7, r7, #1
	str	r7, [sp, #56]
	str	r2, [r1, #-24]
	b	.L915
.L921:
	cmp	r1, #0
	bne	.L923
	flds	s13, [r0]	@ int
	flds	s12, [r0, #4]	@ int
	fsitos	s14, s13
	fsitos	s15, s12
	fmsr	s12, r3	@ int
	fsitos	s13, s12
	fdivs	s14, s13, s14
	fmuls	s15, s14, s15
	ftosizs	s15, s15
	fmrs	r1, s15	@ int
	b	.L923
.L912:
	movs	r3, #3
	str	r9, [sp, #144]
	str	r3, [sp, #32]
	b	.L914
.L911:
	movs	r7, #2
	str	r8, [sp, #140]
	str	r7, [sp, #32]
	b	.L914
.L910:
	str	r0, [sp, #128]
	mov	r8, r0
	str	r0, [sp, #132]
	b	.L935
.L1004:
	ldrsh	r2, [sp, #80]
	ldr	r7, [sp, #40]
	ldr	r1, [sp, #88]
	sxtah	r3, r2, r3
	sxth	lr, r7
	mov	r7, r2
	add	r3, r3, lr
	cmp	r1, r3
	blt	.L933
	cmp	r6, #1
	ite	eq
	moveq	r3, #2
	movne	r3, #3
	add	r6, sp, #112
	str	r6, [sp, #32]
	add	r9, sp, #96
	movs	r6, #0
	add	r8, sp, #104
	str	r3, [sp, #4]
	mov	r1, r9
	str	r2, [sp, #8]
	mov	r0, r5
	ldr	r3, [sp, #32]
	mov	r2, r8
	str	r6, [sp, #16]
	str	fp, [sp]
	str	lr, [sp, #12]
	bl	libaroma_textline_add_span(PLT)
	ldrh	r3, [sp, #80]
	ldr	r7, [sp, #40]
	str	r6, [sp, #40]
	ldr	r6, [sp, #32]
	add	r3, r3, r7
	strh	r3, [sp, #80]	@ movhi
.L934:
	add	r1, sp, #80
	stmia	sp, {r6, fp}
	str	r1, [sp, #8]
	add	r1, sp, #88
	str	r1, [sp, #16]
	mov	r2, r9
	str	r10, [sp, #12]
	mov	r3, r8
	mov	r0, r4
	mov	r1, r5
	movs	r6, #0
	bl	libaroma_textline_add_span_img(PLT)
	b	.L928
.L993:
	ldrb	r0, [r4, #2]	@ zero_extendqisi2
	ldr	r8, [r3, #4]
	lsrs	r0, r0, #4
	bl	libaroma_font_size_px(PLT)
	ldrsh	r1, [r8, #4]
	ldrsh	r3, [sp, #80]
	ldr	r2, [sp, #88]
	strh	r0, [r5, #8]	@ movhi
	add	r1, r1, r3
	cmp	r1, r2
	bgt	.L1005
	ldr	r3, [r5, #4]
	add	r7, sp, #112
	mov	r0, r4
	mov	r1, r5
	add	r2, sp, #96
	str	r3, [r8, #12]
	add	r3, sp, #104
	str	r6, [sp, #4]
	add	r6, sp, #80
	str	r6, [sp, #8]
	add	r6, sp, #88
	str	r8, [sp, #12]
	str	r7, [sp]
	str	r6, [sp, #16]
	bl	libaroma_textline_add_span_img(PLT)
	ldr	r3, [r4, #68]
	b	.L881
.L1000:
	mov	r0, r5
	mov	r1, r4
	ldr	r5, [sp, #88]
	ldr	r4, [sp, #44]
	ldr	r2, [sp, #48]
	ldrsh	r3, [sp, #80]
	str	r4, [sp]
	cmp	r2, #3
	it	eq
	moveq	r2, #0
	str	r5, [sp, #4]
	bl	libaroma_textline_align(PLT)
.L990:
	add	sp, sp, #156
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L1003:
	ldr	r3, [r0]
	ldr	r1, [r0, #4]
	b	.L923
.L1005:
	mov	r6, #-1
	str	r2, [sp, #4]
	mov	r0, r5
	mov	r1, r4
	str	r6, [sp]
	movs	r2, #255
	bl	libaroma_textline_align(PLT)
	b	.L990
.L997:
	ldr	r7, [sp, #44]
	mov	r0, r5
	str	r1, [sp, #4]
	mov	r1, r4
	ldr	r2, [sp, #48]
	str	r7, [sp]
	bl	libaroma_textline_align(PLT)
	add	sp, sp, #156
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L992:
	ldrb	r0, [r4, #2]	@ zero_extendqisi2
	ldr	r8, [r3, #4]
	ldrb	r9, [r4]	@ zero_extendqisi2
	rsb	r2, r8, r2
	lsrs	r0, r0, #4
	str	r2, [sp, #88]
	and	r9, r9, #3
	bl	libaroma_font_size_px(PLT)
	strh	r0, [r5, #8]	@ movhi
	ldr	r0, [r4, #68]
	bl	free(PLT)
	ldrh	r10, [r4, #4]
	mov	r0, r5
	ldr	ip, [sp, #88]
	add	r1, sp, #96
	ldrh	lr, [sp, #80]
	add	r2, sp, #104
	str	r6, [r4, #68]
	add	r3, sp, #112
	str	r6, [sp]
	rsb	fp, lr, ip
	sxth	ip, ip
	sxth	lr, lr
	orr	r6, r10, fp, lsl #16
	str	r7, [sp, #4]
	str	r6, [sp, #16]
	str	lr, [sp, #8]
	str	ip, [sp, #12]
	bl	libaroma_textline_add_span(PLT)
	ldr	r6, [sp, #88]
	mov	r2, r9
	ldrsh	r3, [sp, #80]
	mov	r0, r5
	str	r8, [sp]
	mov	r1, r4
	str	r6, [sp, #4]
	bl	libaroma_textline_align(PLT)
	b	.L990
.L931:
	str	r0, [r4, #64]
	mov	r0, r5
	ldr	r5, [sp, #44]
	mov	r6, r2
	mov	r1, r4
	str	r7, [sp, #4]
	ldr	r2, [sp, #48]
	mov	r3, r6
	str	r5, [sp]
	bl	libaroma_textline_align(PLT)
	b	.L990
.L1002:
	subs	r1, r7, r2
	add	r0, sp, #120
	bl	libaroma_text_group_split(PLT)
	ldr	r3, [sp, #120]
	str	r0, [r4, #64]
	ldr	r6, [r3]
	cmp	r6, #0
	beq	.L939
	add	r7, sp, #104
	add	r10, sp, #96
	str	r7, [sp, #32]
	mov	fp, r4
	add	r7, sp, #112
.L892:
	ldrh	r9, [sp, #80]
	mov	r0, r6
	ldrh	r8, [r6, #8]
	mov	r1, fp
	ldrb	r4, [r6, #13]	@ zero_extendqisi2
	bl	libaroma_textshaped_span(PLT)
	sxth	r2, r9
	str	r0, [sp, #16]
	sxth	r3, r8
	str	r4, [sp]
	str	r2, [sp, #8]
	movs	r2, #1
	str	r3, [sp, #12]
	mov	r0, r5
	str	r2, [sp, #4]
	mov	r1, r10
	ldr	r2, [sp, #32]
	mov	r3, r7
	bl	libaroma_textline_add_span(PLT)
	ldr	r6, [r6, #16]
	cmp	r6, #0
	bne	.L892
	ldr	r0, [sp, #120]
	mov	r4, fp
.L890:
	movs	r1, #1
	bl	_libaroma_text_group_free(PLT)
	ldrh	r3, [r5, #12]
	mov	r1, r4
	ldr	r6, [sp, #44]
	mov	r0, r5
	ldr	r4, [sp, #88]
	strh	r3, [sp, #80]	@ movhi
	ldr	r2, [sp, #48]
	sxth	r3, r3
	str	r6, [sp]
	str	r4, [sp, #4]
	bl	libaroma_textline_align(PLT)
	b	.L990
.L938:
	movs	r7, #255
	mov	r6, #-1
	str	r6, [sp, #44]
	mov	r2, r7
	str	r7, [sp, #48]
	b	.L883
.L933:
	movs	r0, #8
	bl	malloc(PLT)
	mov	lr, r0
	mov	r1, r4
	str	lr, [r4, #68]
	mov	r0, r5
	ldr	r4, [sp, #44]
	mov	r3, r7
	ldr	r5, [sp, #88]
	ldr	r2, [sp, #48]
	str	r4, [sp]
	movs	r4, #4
	str	r5, [sp, #4]
	str	r10, [lr, #4]
	strb	r4, [lr]
	bl	libaroma_textline_align(PLT)
	b	.L990
.L939:
	mov	r0, r3
	b	.L890
.L1007:
	.align	2
.L1006:
	.word	.LC1-(.LPIC188+4)
	.word	.LC3-(.LPIC189+4)
	.word	.LC2-(.LPIC190+4)
	.word	.LC20-(.LPIC191+4)
	.size	libaroma_textline, .-libaroma_textline
	.section	.text.libaroma_textline_free,"ax",%progbits
	.align	2
	.global	libaroma_textline_free
	.thumb
	.thumb_func
	.type	libaroma_textline_free, %function
libaroma_textline_free:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r6, r0
	cbz	r0, .L1017
	ldr	r4, [r0]
	cbnz	r4, .L1016
	b	.L1015
.L1012:
	cmp	r3, #6
	beq	.L1028
	cmp	r3, #4
	beq	.L1029
.L1011:
	ldr	r5, [r4, #8]
	mov	r0, r4
	bl	free(PLT)
	cbz	r5, .L1015
.L1030:
	mov	r4, r5
.L1016:
	ldr	r0, [r4, #4]
	cmp	r0, #0
	beq	.L1011
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L1012
	ldr	r3, [r0]
	cbz	r3, .L1028
	mov	r0, r3
	bl	free(PLT)
	ldr	r0, [r4, #4]
.L1028:
	bl	free(PLT)
	ldr	r5, [r4, #8]
	mov	r0, r4
	bl	free(PLT)
	cmp	r5, #0
	bne	.L1030
.L1015:
	mov	r0, r6
	bl	free(PLT)
	movs	r0, #1
	pop	{r4, r5, r6, pc}
.L1029:
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
	ldr	r0, [r4, #4]
	b	.L1028
.L1017:
	pop	{r4, r5, r6, pc}
	.size	libaroma_textline_free, .-libaroma_textline_free
	.section	.text.libaroma_text_draw_span,"ax",%progbits
	.align	2
	.global	libaroma_text_draw_span
	.thumb
	.thumb_func
	.type	libaroma_text_draw_span, %function
libaroma_text_draw_span:
	@ args = 12, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #36
	mov	r4, r1
	mov	r9, r2
	mov	r7, r0
	mov	r8, r3
	ldrb	r1, [sp, #76]	@ zero_extendqisi2
	ldrh	r2, [sp, #80]
	str	r1, [sp, #28]
	str	r2, [sp, #20]
	cmp	r0, #0
	beq	.L1071
.L1032:
	ldrb	r2, [r4, #12]	@ zero_extendqisi2
	ldr	r3, [r4, #4]
	tst	r2, #48
	ite	ne
	movne	r1, #1
	moveq	r1, #0
	cmp	r3, #0
	str	r1, [sp, #24]
	ble	.L1052
	ldr	r2, [sp, #28]
	cmp	r2, #0
	beq	.L1034
	cmp	r1, #0
	bne	.L1035
	ldr	fp, [sp, #20]
	mov	r5, r1
	mov	r10, r1
	movs	r6, #255
.L1037:
	ldrb	r2, [r4, #8]	@ zero_extendqisi2
	add	r10, r10, #1
	ldr	r3, [r4]
	and	r1, r2, #15
	ldr	r0, [r3, r5]
	lsrs	r2, r2, #4
	bl	libaroma_font_glyph(PLT)
	ldr	r3, [r4]
	mov	r1, r0
	ldrb	lr, [r4, #12]	@ zero_extendqisi2
	mov	r0, r7
	add	r3, r3, r5
	adds	r5, r5, #12
	ldrsh	r2, [r3, #4]
	ldrsh	r3, [r3, #6]
	str	fp, [sp]
	add	r2, r2, r9
	str	r6, [sp, #8]
	add	r3, r3, r8
	str	lr, [sp, #4]
	bl	libaroma_font_glyph_draw(PLT)
	ldr	r3, [r4, #4]
	cmp	r10, r3
	blt	.L1037
.L1055:
	mov	r5, #-1
	mov	r10, #0
.L1036:
	bic	r6, r10, #-16777216
.L1033:
	ldr	r3, [sp, #24]
	cmp	r3, #0
	beq	.L1070
	ldr	r1, [sp, #72]
	lsrs	r3, r1, #24
	lsls	r0, r3, #27
	ldrb	r0, [r4, #8]	@ zero_extendqisi2
	ite	mi
	bicmi	r9, r1, #-16777216
	movpl	r9, r5
	lsls	r1, r3, #26
	lsr	r0, r0, #4
	bpl	.L1047
	bl	libaroma_font_size_px(PLT)
	sbfx	r0, r0, #1, #16
	fldd	d16, .L1075
	str	r0, [sp, #16]
	fmsr	s15, r0	@ int
	fsitod	d0, s15
	fmuld	d0, d0, d16
	bl	ceil(PLT)
	ldrb	r3, [r4, #12]	@ zero_extendqisi2
	ftosizd	s0, d0
	ldr	r0, [sp, #16]
	tst	r3, #32
	fmrs	fp, s0	@ int
	bne	.L1072
.L1048:
	lsls	r2, r3, #27
	bpl	.L1045
	cmp	r9, #0
	blt	.L1045
	ldr	r1, [sp, #28]
	add	r2, r8, fp
	rsb	r3, r9, r10
	cmp	r1, #0
	beq	.L1073
	ldr	r1, [sp, #20]
.L1051:
	movs	r5, #255
	str	r1, [sp, #4]
	str	fp, [sp]
	mov	r0, r7
	mov	r1, r9
	str	r5, [sp, #8]
	bl	libaroma_draw_rect(PLT)
.L1070:
	ldrb	r3, [r4, #12]	@ zero_extendqisi2
.L1045:
	orr	r0, r6, r3, lsl #24
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L1034:
	ldr	r3, [sp, #24]
	cmp	r3, #0
	bne	.L1040
	ldr	r5, [sp, #28]
	mov	r10, #255
	mov	r6, r5
.L1041:
	ldrb	r2, [r4, #8]	@ zero_extendqisi2
	adds	r6, r6, #1
	ldr	r3, [r4]
	and	r1, r2, #15
	ldr	r0, [r3, r5]
	lsrs	r2, r2, #4
	bl	libaroma_font_glyph(PLT)
	ldr	r3, [r4]
	mov	r1, r0
	ldrh	lr, [r4, #10]
	mov	r0, r7
	ldrb	ip, [r4, #12]	@ zero_extendqisi2
	add	r3, r3, r5
	adds	r5, r5, #12
	ldrsh	r2, [r3, #4]
	ldrsh	r3, [r3, #6]
	str	r10, [sp, #8]
	add	r2, r2, r9
	str	lr, [sp]
	add	r3, r3, r8
	str	ip, [sp, #4]
	bl	libaroma_font_glyph_draw(PLT)
	ldr	r3, [r4, #4]
	cmp	r6, r3
	blt	.L1041
	b	.L1055
.L1047:
	bl	libaroma_font_size_px(PLT)
	sbfx	r0, r0, #1, #16
	fldd	d16, .L1075
	str	r0, [sp, #16]
	fmsr	s15, r0	@ int
	fsitod	d0, s15
	fmuld	d0, d0, d16
	bl	ceil(PLT)
	ldrb	r3, [r4, #12]	@ zero_extendqisi2
	ftosizd	s0, d0
	ldr	r0, [sp, #16]
	tst	r3, #32
	fmrs	fp, s0	@ int
	beq	.L1048
	cmp	r5, #0
	blt	.L1048
.L1049:
	ldr	r1, [sp, #28]
	add	r2, r8, fp, lsl #1
	rsb	r3, r5, r10
	subs	r2, r2, r0
	cmp	r1, #0
	beq	.L1074
	ldr	r1, [sp, #20]
.L1050:
	movs	r0, #255
	str	r1, [sp, #4]
	str	r0, [sp, #8]
	mov	r1, r5
	str	fp, [sp]
	mov	r0, r7
	bl	libaroma_draw_rect(PLT)
	ldrb	r3, [r4, #12]	@ zero_extendqisi2
	b	.L1048
.L1040:
	ldr	r6, [sp, #28]
	mov	r5, #-1
	ldr	r3, [r4]
	mov	fp, r6
.L1043:
	ldrb	r2, [r4, #8]	@ zero_extendqisi2
	add	fp, fp, #1
	ldr	r0, [r3, r6]
	and	r1, r2, #15
	lsrs	r2, r2, #4
	bl	libaroma_font_glyph(PLT)
	ldr	r3, [r4]
	movs	r2, #255
	ldrh	lr, [r4, #10]
	mov	r1, r0
	ldrb	ip, [r4, #12]	@ zero_extendqisi2
	mov	r0, r7
	add	r3, r3, r6
	ldrsh	r10, [r3, #4]
	ldrsh	r3, [r3, #6]
	str	r2, [sp, #8]
	add	r10, r10, r9
	str	lr, [sp]
	mov	r2, r10
	add	r3, r3, r8
	str	ip, [sp, #4]
	cmp	r5, #-1
	it	eq
	moveq	r5, r10
	bl	libaroma_font_glyph_draw(PLT)
	ldr	r3, [r4]
	ldr	r2, [r4, #4]
	adds	r1, r3, r6
	adds	r6, r6, #12
	ldrsh	r1, [r1, #8]
	cmp	r2, fp
	add	r10, r10, r1
	bgt	.L1043
	b	.L1036
.L1035:
	ldr	r3, [r4]
	movs	r6, #0
	mov	fp, r6
	mov	r5, #-1
.L1039:
	ldrb	r2, [r4, #8]	@ zero_extendqisi2
	add	fp, fp, #1
	ldr	r0, [r3, r6]
	and	r1, r2, #15
	lsrs	r2, r2, #4
	bl	libaroma_font_glyph(PLT)
	ldr	r3, [r4]
	mov	r1, r0
	ldr	r2, [sp, #20]
	mov	r0, r7
	ldrb	lr, [r4, #12]	@ zero_extendqisi2
	add	r3, r3, r6
	ldrsh	r10, [r3, #4]
	ldrsh	r3, [r3, #6]
	str	r2, [sp]
	movs	r2, #255
	add	r10, r10, r9
	str	r2, [sp, #8]
	add	r3, r3, r8
	mov	r2, r10
	str	lr, [sp, #4]
	cmp	r5, #-1
	it	eq
	moveq	r5, r10
	bl	libaroma_font_glyph_draw(PLT)
	ldr	r3, [r4]
	ldr	r2, [r4, #4]
	adds	r1, r3, r6
	adds	r6, r6, #12
	ldrsh	r1, [r1, #8]
	cmp	r2, fp
	add	r10, r10, r1
	bgt	.L1039
	b	.L1036
.L1072:
	ldr	r1, [sp, #72]
	bic	r5, r1, #-16777216
	b	.L1049
.L1073:
	ldrh	r1, [r4, #10]
	b	.L1051
.L1074:
	ldrh	r1, [r4, #10]
	b	.L1050
.L1052:
	movs	r6, #0
	mov	r5, #-1
	mov	r10, r6
	b	.L1033
.L1071:
	bl	libaroma_fb(PLT)
	ldr	r7, [r0, #52]
	b	.L1032
.L1076:
	.align	3
.L1075:
	.word	1431655765
	.word	1068848469
	.size	libaroma_text_draw_span, .-libaroma_text_draw_span
	.section	.text.libaroma_text_draw_bullet,"ax",%progbits
	.align	2
	.global	libaroma_text_draw_bullet
	.thumb
	.thumb_func
	.type	libaroma_text_draw_bullet, %function
libaroma_text_draw_bullet:
	@ args = 8, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #60
	mov	r10, r3
	mov	r5, r0
	str	r2, [sp, #40]
	ldrsh	r3, [sp, #96]
	ldrh	fp, [sp, #100]
	cmp	r0, #0
	beq	.L1101
.L1078:
	lsls	r0, r3, #2
	movw	r4, #21846
	movt	r4, 21845
	smull	r2, r4, r4, r0
	subs	r2, r1, #1
	sub	r4, r4, r0, asr #31
	asrs	r4, r4, #1
	uxth	r0, r4
	sxth	r6, r0
	str	r6, [sp, #44]
	ubfx	r1, r6, #1, #16
	cmp	r2, #3
	bhi	.L1079
	tbh	[pc, r2, lsl #1]
.L1081:
	.2byte	(.L1080-.L1081)/2
	.2byte	(.L1082-.L1081)/2
	.2byte	(.L1083-.L1081)/2
	.2byte	(.L1084-.L1081)/2
.L1084:
	lsls	r4, r4, #2
	movw	r3, #21846
	movt	r3, 21845
	smull	r6, r3, r3, r4
	sub	r4, r3, r4, asr #31
	sxth	r6, r4
	add	r8, r4, #-1
	cmp	r8, #0
	asr	r7, r6, #1
	str	r7, [sp, #44]
	ubfx	r7, r7, #1, #16
	str	r7, [sp, #48]
	ble	.L1097
	ldr	ip, [sp, #40]
	sxth	r7, r7
	ldr	r2, [sp, #44]
	movs	r3, #0
	str	r6, [sp, #52]
	mov	r9, r4
	mov	r6, r3
	mov	r4, fp
	add	ip, ip, r2
	mov	fp, r7
	mov	r7, ip
.L1098:
	movs	r1, #1
	add	r2, r3, r10
	stmia	sp, {r1, r4}
	movs	r1, #255
	str	r1, [sp, #8]
	adds	r3, r3, #1
	rsb	r2, fp, r2
	mov	r0, r5
	mov	r1, r7
	bl	libaroma_draw_rect(PLT)
	add	ip, r6, #1
	uxth	r6, ip
	sxth	r3, r6
	cmp	r3, r8
	blt	.L1098
	ldr	r6, [sp, #52]
	mov	fp, r4
	mov	r4, r9
.L1097:
	cmp	r6, #0
	ble	.L1077
	ldr	r2, [sp, #48]
	add	r10, r10, r4
	add	r10, r10, #-1
	ldr	r8, [sp, #40]
	mov	r3, r6
	mov	r9, #0
	mov	r6, fp
	mov	fp, r3
	sxth	r7, r2
	rsb	r10, r7, r10
	ldr	r7, [sp, #44]
	add	r8, r8, r7
	movs	r7, #255
.L1099:
	movs	r1, #1
	rsb	r3, r9, r4
	str	r1, [sp]
	add	r2, r10, r9
	mov	r0, r5
	str	r6, [sp, #4]
	mov	r1, r8
	str	r7, [sp, #8]
	add	r9, r9, #1
	bl	libaroma_draw_rect(PLT)
	sxth	r3, r9
	cmp	fp, r3
	bgt	.L1099
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L1083:
	sxth	r1, r1
	subs	r6, r4, #1
	cmp	r6, #0
	ubfx	r7, r1, #1, #16
	str	r1, [sp, #48]
	str	r7, [sp, #52]
	ble	.L1092
	ldr	r3, [sp, #40]
	sxth	r7, r7
	mov	r8, r1
	movs	r1, #0
	add	r8, r8, r3
	mov	r3, r7
	mov	r9, r1
	mov	r7, fp
	mov	fp, r3
.L1093:
	movs	r3, #1
	add	r9, r9, #1
	add	r2, r1, r10
	stmia	sp, {r3, r7}
	uxth	r9, r9
	movs	r3, #255
	str	r3, [sp, #8]
	add	r1, r1, r8
	rsb	r2, fp, r2
	mov	r0, r5
	mov	r3, r4
	bl	libaroma_draw_rect(PLT)
	sxth	r1, r9
	cmp	r1, r6
	blt	.L1093
	mov	fp, r7
.L1092:
	ldr	r1, [sp, #44]
	cmp	r1, #0
	ble	.L1077
	ldr	r2, [sp, #40]
	mov	r9, #0
	ldr	r8, [sp, #48]
	add	r10, r10, r4
	ldr	r1, [sp, #52]
	add	r10, r10, #-1
	str	fp, [sp, #40]
	mov	fp, r9
	add	r8, r8, r2
	add	r8, r8, r6
	movs	r6, #255
	sxth	r7, r1
	mov	r9, r8
	ldr	r8, [sp, #44]
	rsb	r10, r7, r10
	movs	r7, #1
.L1094:
	ldr	r3, [sp, #40]
	rsb	r1, fp, r9
	add	r2, r10, fp
	str	r7, [sp]
	mov	r0, r5
	str	r6, [sp, #8]
	str	r3, [sp, #4]
	add	fp, fp, #1
	mov	r3, r4
	bl	libaroma_draw_rect(PLT)
	sxth	r3, fp
	cmp	r8, r3
	bgt	.L1094
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L1082:
	ldr	r4, [sp, #44]
	sbfx	r1, r1, #1, #15
	uxth	r1, r1
	cmp	r4, #0
	ble	.L1077
	ldr	r2, [sp, #40]
	movs	r3, #2
	smlabb	r0, r0, r3, r10
	sxth	r1, r1
	subs	r6, r4, #1
	add	r2, r2, r4
	str	r6, [sp, #40]
	add	r2, r2, r1
	rsb	r10, r1, r10
	subs	r1, r0, r1
	str	r2, [sp, #48]
	subs	r1, r1, #2
	movs	r4, #0
	str	r1, [sp, #52]
	mov	r8, #1
	movs	r7, #255
	b	.L1089
.L1087:
	adds	r4, r4, #1
	ldr	r6, [sp, #44]
	sxth	r3, r4
	cmp	r6, r3
	ble	.L1077
.L1089:
	ldr	r1, [sp, #48]
	lsls	r6, r4, #1
	add	r2, r10, r4
	str	r8, [sp]
	adds	r6, r6, #1
	str	fp, [sp, #4]
	rsb	r9, r4, r1
	str	r7, [sp, #8]
	mov	r1, r9
	mov	r3, r6
	mov	r0, r5
	bl	libaroma_draw_rect(PLT)
	ldr	r2, [sp, #40]
	cmp	r4, r2
	bge	.L1087
	mov	r3, r6
	ldr	r6, [sp, #52]
	str	r8, [sp]
	mov	r1, r9
	str	fp, [sp, #4]
	mov	r0, r5
	str	r7, [sp, #8]
	subs	r2, r6, r4
	bl	libaroma_draw_rect(PLT)
	b	.L1087
.L1080:
	ldr	r7, [sp, #40]
	movs	r4, #255
	stmia	sp, {r3, fp}
	mov	r0, r5
	mov	r2, r10
	str	r4, [sp, #8]
	sxtah	r1, r7, r1
	bl	libaroma_draw_rect(PLT)
.L1077:
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L1079:
	ldr	r2, [sp, #40]
	movs	r4, #255
	movw	r7, #4369
	movs	r6, #0
	stmia	sp, {r3, fp}
	mov	r0, r5
	str	fp, [sp, #8]
	sxtah	r1, r2, r1
	str	r3, [sp, #12]
	mov	r2, r10
	str	r7, [sp, #16]
	str	r4, [sp, #20]
	str	r4, [sp, #24]
	str	r6, [sp, #28]
	bl	libaroma_gradient_ex1(PLT)
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L1101:
	str	r1, [sp, #36]
	str	r3, [sp, #32]
	bl	libaroma_fb(PLT)
	ldr	r3, [sp, #32]
	ldr	r5, [r0, #52]
	ldr	r1, [sp, #36]
	b	.L1078
	.size	libaroma_text_draw_bullet, .-libaroma_text_draw_bullet
	.section	.text.libaroma_textline_draw,"ax",%progbits
	.align	2
	.global	libaroma_textline_draw
	.thumb
	.thumb_func
	.type	libaroma_textline_draw, %function
libaroma_textline_draw:
	@ args = 8, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, r0
	fstmfdd	sp!, {d8}
	sub	sp, sp, #52
	mov	r5, r1
	mov	r8, r2
	ldrh	r0, [sp, #100]
	mov	r7, r3
	ldrb	r10, [sp, #96]	@ zero_extendqisi2
	str	r0, [sp, #40]
	cmp	r6, #0
	beq	.L1128
.L1103:
	ldrsh	r3, [r5, #8]
	ldrsh	r2, [r5, #16]
	ldr	r4, [r5]
	subs	r2, r2, r3
	add	r2, r3, r2, asr #1
	str	r2, [sp, #44]
	cmp	r4, #0
	beq	.L1102
	fldd	d8, .L1129
	mov	r9, #0
	str	r6, [sp, #24]
	str	r10, [sp, #36]
.L1116:
	ldrb	r3, [r4]	@ zero_extendqisi2
	subs	r3, r3, #1
	cmp	r3, #5
	bhi	.L1105
	tbb	[pc, r3]
.L1107:
	.byte	(.L1106-.L1107)/2
	.byte	(.L1105-.L1107)/2
	.byte	(.L1105-.L1107)/2
	.byte	(.L1108-.L1107)/2
	.byte	(.L1109-.L1107)/2
	.byte	(.L1110-.L1107)/2
	.align	1
.L1110:
	ldr	r0, [r4, #4]
	ldr	r2, [r5, #4]
	ldrsh	lr, [r5, #16]
	ldrsh	r3, [r0, #4]
	ldrh	ip, [r0, #2]
	ldr	r6, [sp, #36]
	add	lr, r2, lr, asr #1
	ldrb	r1, [r0]	@ zero_extendqisi2
	add	ip, ip, r8
	sub	lr, lr, r3, asr #2
	uxth	r2, ip
	add	lr, lr, r7
	uxth	lr, lr
	cmp	r6, #0
	bne	.L1117
	ldrh	r0, [r0, #6]
.L1111:
	str	r3, [sp]
	sxth	r2, r2
	str	r0, [sp, #4]
	sxth	r3, lr
	ldr	r0, [sp, #24]
	bl	libaroma_text_draw_bullet(PLT)
.L1105:
	ldr	r4, [r4, #8]
	cmp	r4, #0
	bne	.L1116
.L1102:
	add	sp, sp, #52
	@ sp needed
	fldmfdd	sp!, {d8}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L1108:
	ldr	r10, [r4, #4]
	ldrb	r0, [r10, #8]	@ zero_extendqisi2
	ldr	r3, [r10, #12]
	and	r2, r0, #4
	and	r0, r0, #3
	cmp	r0, #1
	uxtb	r2, r2
	add	fp, r7, r3
	it	eq
	moveq	r0, #0
	beq	.L1113
	cmp	r0, #2
	itttt	ne
	ldrshne	ip, [r5, #16]
	movne	r0, #1
	ldrshne	lr, [r10, #6]
	addne	r3, fp, ip
	it	ne
	rsbne	fp, lr, r3
.L1113:
	cbz	r2, .L1114
	ldrsh	r3, [r10, #6]
	ldrsh	r2, [r5, #8]
	ldrsh	lr, [r5, #16]
	ldr	r1, [r5, #4]
	asrs	r3, r3, #1
	rsb	lr, r2, lr
	add	r2, r3, r2, asr #1
	ldr	r3, [sp, #44]
	rsb	r2, r2, lr, asr #2
	add	r3, r3, r1
	add	r3, r3, r7
	add	fp, r3, r2
.L1114:
	ldrsh	r2, [r4, #2]
	mov	r9, #0
	add	r2, r2, r8
	str	r2, [sp, #28]
	bl	libaroma_dp(PLT)
	ldr	r2, [sp, #28]
	ldrsh	ip, [r10, #4]
	add	r2, r2, r0
	movs	r0, #2
	str	r2, [sp, #28]
	str	ip, [sp, #32]
	bl	libaroma_dp(PLT)
	ldr	ip, [sp, #32]
	mov	r3, fp
	ldr	lr, [r10]
	ldr	r2, [sp, #28]
	rsb	r0, r0, ip
	str	r0, [sp]
	mov	r1, lr
	ldrsh	r0, [r10, #6]
	str	r9, [sp, #8]
	str	r9, [sp, #12]
	str	r0, [sp, #4]
	ldr	r6, [lr]
	ldr	r0, [sp, #24]
	str	r6, [sp, #16]
	ldr	r6, [lr, #4]
	str	r6, [sp, #20]
	bl	libaroma_draw_scale_smooth(PLT)
	b	.L1105
.L1106:
	ldr	r3, [r5, #4]
	ldr	r6, [sp, #44]
	ldrsh	r2, [r4, #2]
	ldr	r1, [r4, #4]
	add	r3, r3, r6
	ldr	r6, [sp, #36]
	str	r9, [sp]
	add	r3, r3, r7
	ldr	r0, [sp, #24]
	add	r2, r2, r8
	str	r6, [sp, #4]
	ldr	r6, [sp, #40]
	str	r6, [sp, #8]
	bl	libaroma_text_draw_span(PLT)
	mov	r9, r0
	b	.L1105
.L1109:
	ldrsh	lr, [r5, #8]
	ldr	r10, [r4, #4]
	fmsr	s0, lr	@ int
	fsitod	d0, s0
	fmuld	d0, d0, d8
	bl	ceil(PLT)
	ldrsh	lr, [r5, #16]
	asr	r3, r10, #16
	ldr	r2, [r5, #4]
	uxth	r0, r10
	ldr	r6, [sp, #36]
	ldrsh	r1, [r4, #2]
	ftosizd	s0, d0
	add	r2, r2, lr, asr #1
	add	r1, r1, r8
	add	r2, r2, r7
	cbz	r6, .L1112
	ldr	r0, [sp, #40]
.L1112:
	str	r0, [sp, #4]
	movs	r0, #255
	str	r0, [sp, #8]
	fsts	s0, [sp]	@ int
	ldr	r0, [sp, #24]
	bl	libaroma_draw_rect(PLT)
	b	.L1105
.L1117:
	ldr	r0, [sp, #40]
	b	.L1111
.L1128:
	bl	libaroma_fb(PLT)
	ldr	r6, [r0, #52]
	b	.L1103
.L1130:
	.align	3
.L1129:
	.word	-1717986918
	.word	1069128089
	.size	libaroma_textline_draw, .-libaroma_textline_draw
	.section	.text.libaroma_text_line_count,"ax",%progbits
	.align	2
	.global	libaroma_text_line_count
	.thumb
	.thumb_func
	.type	libaroma_text_line_count, %function
libaroma_text_line_count:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L1132
	ldr	r0, [r0, #4]
.L1132:
	bx	lr
	.size	libaroma_text_line_count, .-libaroma_text_line_count
	.section	.text.libaroma_text_height,"ax",%progbits
	.align	2
	.global	libaroma_text_height
	.thumb
	.thumb_func
	.type	libaroma_text_height, %function
libaroma_text_height:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L1135
	ldr	r0, [r0, #8]
.L1135:
	bx	lr
	.size	libaroma_text_height, .-libaroma_text_height
	.section	.text.libaroma_text_width,"ax",%progbits
	.align	2
	.global	libaroma_text_width
	.thumb
	.thumb_func
	.type	libaroma_text_width, %function
libaroma_text_width:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L1150
	push	{r4, r5}
	ldr	r5, [r0, #4]
	cmp	r5, #0
	ble	.L1145
	ldr	r3, [r0]
	movs	r0, #0
	mov	r4, r0
	movs	r1, #1
	add	r5, r3, r5, lsl #2
	b	.L1142
.L1152:
	ldr	r1, [r2, #24]
	ldr	r2, [r2, #20]
	cmp	r4, r1
	it	lt
	movlt	r4, r1
	cmp	r0, r2
	it	ge
	movge	r0, r2
	cmp	r3, r5
	mov	r1, #0
	beq	.L1151
.L1142:
	ldr	r2, [r3], #4
	cmp	r1, #0
	beq	.L1152
	cmp	r3, r5
	ldr	r4, [r2, #24]
	ldr	r0, [r2, #20]
	mov	r1, #0
	bne	.L1142
.L1151:
	subs	r0, r4, r0
.L1147:
	pop	{r4, r5}
.L1150:
	bx	lr
.L1145:
	movs	r0, #0
	b	.L1147
	.size	libaroma_text_width, .-libaroma_text_width
	.section	.text.libaroma_text,"ax",%progbits
	.align	2
	.global	libaroma_text
	.thumb
	.thumb_func
	.type	libaroma_text, %function
libaroma_text:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #20
	ldr	r6, .L1179
	mov	r7, r0
	ands	r5, r3, #255
	ubfx	r9, r3, #8, #8
	ldrb	r4, [sp, #56]	@ zero_extendqisi2
	lsr	r8, r3, #24
.LPIC192:
	add	r6, pc
	mov	r0, r6
	it	eq
	moveq	r5, #32
	adds	r0, r0, #24
	ubfx	r6, r3, #16, #8
	mov	r10, r1
	mov	fp, r2
	cmp	r4, #0
	it	eq
	moveq	r4, #120
	bl	omp_set_nest_lock(PLT)
	and	r2, r9, #252
	mov	r3, r10
	orr	r2, r2, r8
	mov	r1, r6
	str	r4, [sp, #8]
	mov	r0, r7
	stmia	sp, {r5, fp}
	and	r9, r6, #32
	bl	_libaroma_text_parse(PLT)
	movs	r1, #1
	mov	r4, r0
	movs	r0, #12
	bl	calloc(PLT)
	mov	r7, r0
	movs	r0, #8
	bl	malloc(PLT)
	movs	r2, #0
	mov	r6, r0
	mov	r8, r0
	str	r2, [r0]
	mov	r10, r2
	b	.L1158
.L1163:
	bl	libaroma_textline(PLT)
	mov	r5, r0
	cbnz	r0, .L1176
.L1158:
	ldrb	r3, [r4, #56]	@ zero_extendqisi2
	mov	r0, r4
	lsls	r3, r3, #31
	bmi	.L1163
.L1164:
	mov	r0, r4
	bl	_libaroma_text_parse_free(PLT)
	ldr	r4, [r6]
	cmp	r4, #0
	beq	.L1177
	ldr	r0, [r7, #4]
	movs	r5, #0
	lsls	r0, r0, #2
	bl	malloc(PLT)
	mov	r3, r0
	str	r0, [r7]
	b	.L1166
.L1178:
	ldr	r4, [r4]
	ldr	r3, [r7]
.L1166:
	str	r4, [r3, r5]
	mov	r0, r6
	ldr	r4, [r6, #4]
	adds	r5, r5, #4
	bl	free(PLT)
	mov	r6, r4
	cmp	r4, #0
	bne	.L1178
	ldr	r0, .L1179+4
.LPIC193:
	add	r0, pc
	adds	r0, r0, #24
	bl	omp_unset_nest_lock(PLT)
	mov	r0, r7
.L1167:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L1176:
	ldr	r3, [r8]
	movs	r0, #8
	cbz	r3, .L1159
	bl	malloc(PLT)
	str	r0, [r8, #4]
	mov	r8, r0
.L1159:
	ldrsh	r1, [r5, #16]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	str	r5, [r8]
	add	r2, r2, r1
	str	r10, [r8, #4]
	adds	r3, r3, #1
	str	r2, [r7, #8]
	str	r3, [r7, #4]
	cmp	r9, #0
	beq	.L1158
	b	.L1164
.L1177:
	mov	r0, r7
	bl	free(PLT)
	mov	r0, r6
	bl	free(PLT)
	ldr	r0, .L1179+8
.LPIC194:
	add	r0, pc
	adds	r0, r0, #24
	bl	omp_unset_nest_lock(PLT)
	mov	r0, r4
	b	.L1167
.L1180:
	.align	2
.L1179:
	.word	.LANCHOR0-(.LPIC192+4)
	.word	.LANCHOR0-(.LPIC193+4)
	.word	.LANCHOR0-(.LPIC194+4)
	.size	libaroma_text, .-libaroma_text
	.section	.text.libaroma_text_free,"ax",%progbits
	.align	2
	.global	libaroma_text_free
	.thumb
	.thumb_func
	.type	libaroma_text_free, %function
libaroma_text_free:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r5, r0
	cbz	r0, .L1186
	ldr	r0, .L1188
.LPIC195:
	add	r0, pc
	adds	r0, r0, #24
	bl	omp_set_nest_lock(PLT)
	ldr	r3, [r5, #4]
	cmp	r3, #0
	it	gt
	movgt	r4, #0
	ble	.L1184
.L1185:
	ldr	r3, [r5]
	ldr	r0, [r3, r4, lsl #2]
	adds	r4, r4, #1
	bl	libaroma_textline_free(PLT)
	ldr	r3, [r5, #4]
	cmp	r3, r4
	bgt	.L1185
.L1184:
	ldr	r0, [r5]
	bl	free(PLT)
	mov	r0, r5
	bl	free(PLT)
	ldr	r0, .L1188+4
.LPIC196:
	add	r0, pc
	adds	r0, r0, #24
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #1
	pop	{r3, r4, r5, pc}
.L1186:
	pop	{r3, r4, r5, pc}
.L1189:
	.align	2
.L1188:
	.word	.LANCHOR0-(.LPIC195+4)
	.word	.LANCHOR0-(.LPIC196+4)
	.size	libaroma_text_free, .-libaroma_text_free
	.section	.text.libaroma_text_line_info,"ax",%progbits
	.align	2
	.global	libaroma_text_line_info
	.thumb
	.thumb_func
	.type	libaroma_text_line_info, %function
libaroma_text_line_info:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L1191
	ldr	r3, [r0, #4]
	cmp	r3, r1
	ble	.L1200
	cmp	r1, #0
	blt	.L1200
	ldr	r3, [r0]
	cmp	r2, #1
	ldr	r3, [r3, r1, lsl #2]
	beq	.L1201
	cmp	r2, #2
	beq	.L1202
	cmp	r2, #3
	beq	.L1203
	cmp	r2, #4
	beq	.L1204
	cmp	r2, #6
	beq	.L1205
	cmp	r2, #7
	bne	.L1200
	ldrsh	r0, [r3, #8]
	bx	lr
.L1200:
	movs	r0, #0
.L1191:
	bx	lr
.L1201:
	ldr	r0, [r3, #24]
	ldr	r3, [r3, #20]
	subs	r0, r0, r3
	bx	lr
.L1202:
	ldr	r0, [r3, #24]
	bx	lr
.L1203:
	ldr	r0, [r3, #20]
	bx	lr
.L1204:
	ldrsh	r0, [r3, #16]
	bx	lr
.L1205:
	ldr	r0, [r3, #12]
	bx	lr
	.size	libaroma_text_line_info, .-libaroma_text_line_info
	.section	.text.libaroma_text_draw_line_ex,"ax",%progbits
	.align	2
	.global	libaroma_text_draw_line_ex
	.thumb
	.thumb_func
	.type	libaroma_text_draw_line_ex, %function
libaroma_text_draw_line_ex:
	@ args = 20, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #60
	mov	r7, r0
	mov	fp, r2
	mov	r10, r3
	ldrb	r6, [sp, #100]	@ zero_extendqisi2
	ldrh	ip, [sp, #108]
	ldrb	r8, [sp, #112]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L1236
.L1207:
	ldr	r3, [r7, #4]
	cmp	r3, r10
	blt	.L1225
	ldr	r3, [r7]
	cmp	r3, fp
	blt	.L1225
	cmp	r1, #0
	beq	.L1223
	ldr	r3, [r1, #4]
	ldr	r0, [sp, #96]
	cmp	r3, r0
	ble	.L1225
	cmp	r0, #0
	blt	.L1225
	ldr	r3, [r1]
	ldr	r1, [sp, #96]
	ldr	r0, .L1239
	ldr	r3, [r3, r1, lsl #2]
.LPIC197:
	add	r0, pc
	str	ip, [sp, #36]
	adds	r0, r0, #24
	str	r3, [sp, #44]
	bl	omp_set_nest_lock(PLT)
	ldr	r5, [sp, #44]
	ldr	ip, [sp, #36]
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L1209
	cmp	r6, #0
	beq	.L1237
	cmp	r6, #9
	bhi	.L1238
	ldr	r0, [sp, #104]
	cmp	r0, #0
	ble	.L1209
	ldr	r5, [sp, #44]
	movs	r4, #0
	fconstd	d17, #120
	mov	r2, r4
	mov	r3, r4
	ldrsh	lr, [r5, #16]
	ldr	r1, [r5, #20]
	ldr	r0, [r5, #24]
	movs	r5, #1
	str	r4, [sp]
	fmsr	s15, lr	@ int
	fsitod	d16, s15
	subs	r0, r0, r1
	str	ip, [sp, #36]
	fmuld	d16, d16, d17
	ftosizd	s15, d16
	fmrs	r1, s15	@ int
	bl	libaroma_canvas_new_ex(PLT)
	cmp	r6, #2
	movw	r3, #65535
	ite	ne
	movne	r9, r4
	moveq	r9, r3
	mov	r2, r4
	mov	r1, r9
	it	ne
	movne	r4, r3
	str	r0, [sp, #48]
	bl	libaroma_canvas_setcolor(PLT)
	ldr	r0, [sp, #44]
	ldr	r2, [r0, #20]
	mov	r1, r0
	ldr	r3, [r0, #4]
	ldr	r0, [sp, #48]
	negs	r2, r2
	str	r4, [sp, #4]
	negs	r3, r3
	str	r5, [sp]
	bl	libaroma_textline_draw(PLT)
	ldr	r4, [sp, #48]
	mov	r1, r5
	ldr	r0, [r4, #12]
	bl	calloc(PLT)
	ldr	r5, [r4, #4]
	str	r0, [r4, #20]
	ldr	ip, [sp, #36]
	cmp	r5, #0
	ble	.L1213
	ldr	r3, [r4]
	movs	r2, #0
	mov	r0, r2
.L1219:
	ldr	r1, [r4, #8]
	cmp	r3, #0
	mul	r6, r1, r2
	ble	.L1214
	lsls	r5, r6, #1
	movs	r1, #0
.L1218:
	ldr	r3, [r4, #16]
	add	lr, r6, r1
	adds	r1, r1, #1
	ldrh	r3, [r3, r5]
	adds	r5, r5, #2
	cmp	r3, r9
	ldr	r3, [r4, #20]
	ite	eq
	strbeq	r0, [r3, lr]
	strbne	r8, [r3, lr]
	ldr	r4, [sp, #48]
	ldr	r3, [r4]
	cmp	r3, r1
	bgt	.L1218
	ldr	r5, [r4, #4]
.L1214:
	adds	r2, r2, #1
	cmp	r2, r5
	blt	.L1219
.L1213:
	mov	r0, r4
	mov	r3, ip
	ldr	r1, [sp, #104]
	movs	r2, #1
	bl	libaroma_blur_ex(PLT)
	mov	r5, r0
	str	r0, [sp, #52]
	cbz	r0, .L1220
	ldr	r1, [sp, #44]
	movs	r6, #0
	mov	r0, r7
	ldr	r3, [sp, #104]
	mov	ip, #1
	movs	r4, #255
	ldr	r2, [r1, #20]
	mov	r1, r5
	str	r6, [sp]
	rsb	fp, r3, fp
	str	r6, [sp, #4]
	rsb	r3, r3, r10
	ldr	r7, [r5]
	add	r2, r2, fp
	str	r7, [sp, #8]
	ldr	r5, [r5, #4]
	str	r6, [sp, #24]
	str	r6, [sp, #28]
	str	r5, [sp, #12]
	str	ip, [sp, #16]
	str	r4, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
	mov	r1, r6
	add	r0, sp, #52
	bl	libaroma_canvas_free_ex1(PLT)
.L1220:
	add	r0, sp, #48
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
.L1209:
	ldr	r0, .L1239+4
.LPIC198:
	add	r0, pc
	adds	r0, r0, #24
	bl	omp_unset_nest_lock(PLT)
	ldr	r5, [sp, #44]
	ldrsh	r0, [r5, #16]
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L1225:
	movs	r0, #0
.L1208:
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L1236:
	str	r1, [sp, #40]
	str	ip, [sp, #36]
	bl	libaroma_fb(PLT)
	ldr	ip, [sp, #36]
	ldr	r7, [r0, #52]
	ldr	r1, [sp, #40]
	b	.L1207
.L1223:
	mov	r0, r1
	b	.L1208
.L1237:
	ldr	r3, [r5, #4]
	mov	r0, r7
	mov	r2, fp
	str	r6, [sp]
	str	r6, [sp, #4]
	mov	r1, r5
	rsb	r3, r3, r10
	bl	libaroma_textline_draw(PLT)
	b	.L1209
.L1238:
	ldr	r5, [sp, #44]
	movs	r4, #1
	mov	r0, r7
	mov	r2, fp
	ldr	r3, [r5, #4]
	mov	r1, r5
	str	ip, [sp, #4]
	str	r4, [sp]
	rsb	r3, r3, r10
	bl	libaroma_textline_draw(PLT)
	b	.L1209
.L1240:
	.align	2
.L1239:
	.word	.LANCHOR0-(.LPIC197+4)
	.word	.LANCHOR0-(.LPIC198+4)
	.size	libaroma_text_draw_line_ex, .-libaroma_text_draw_line_ex
	.section	.text.libaroma_text_draw_layer,"ax",%progbits
	.align	2
	.global	libaroma_text_draw_layer
	.thumb
	.thumb_func
	.type	libaroma_text_draw_layer, %function
libaroma_text_draw_layer:
	@ args = 28, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #52
	mov	r9, r0
	ldrb	r0, [sp, #100]	@ zero_extendqisi2
	mov	r8, r1
	ldrh	r1, [sp, #108]
	str	r0, [sp, #36]
	ldrb	r0, [sp, #112]	@ zero_extendqisi2
	ldr	r7, [sp, #92]
	ldr	r10, [sp, #96]
	str	r1, [sp, #40]
	str	r0, [sp, #44]
	cmp	r9, #0
	beq	.L1254
.L1242:
	cmp	r10, #0
	bne	.L1243
	ldr	r10, [r9, #4]
.L1243:
	cmp	r8, #0
	beq	.L1251
	ldr	r1, [r8, #4]
	cmp	r1, #0
	ble	.L1246
	ldr	r5, [r9, #4]
	negs	r4, r7
	ldr	r0, [r8]
	cmp	r4, r5
	ldr	r6, [r0]
	bgt	.L1246
	cmp	r10, r4
	blt	.L1246
	ldr	r0, [sp, #88]
	movs	r5, #0
	subs	r3, r3, r7
	mov	r4, r5
	str	r3, [sp, #32]
	mov	ip, r7
	rsb	fp, r0, r2
	b	.L1247
.L1249:
	adds	r4, r4, #1
	rsb	r3, ip, r5
	cmp	r4, r1
	bge	.L1246
.L1250:
	ldr	r2, [r9, #4]
	ldr	r0, [r8]
	cmp	r3, r2
	ldr	r6, [r0, r4, lsl #2]
	bgt	.L1246
	cmp	r10, r3
	blt	.L1246
.L1247:
	ldr	r3, [r6]
	cbz	r3, .L1255
	ldrsh	r3, [r6, #16]
	add	r3, r3, r5
	cmp	ip, r3
	it	gt
	movgt	r5, r3
	bgt	.L1249
	ldr	r7, [sp, #36]
	mov	r1, r8
	ldr	r3, [sp, #32]
	mov	r0, r9
	str	r4, [sp]
	mov	r2, fp
	str	r7, [sp, #4]
	adds	r4, r4, #1
	ldr	r7, [sp, #104]
	add	r3, r3, r5
	str	ip, [sp, #28]
	str	r7, [sp, #8]
	ldr	r7, [sp, #40]
	str	r7, [sp, #12]
	ldr	r7, [sp, #44]
	str	r7, [sp, #16]
	bl	libaroma_text_draw_line_ex(PLT)
	ldr	r1, [r8, #4]
	ldrsh	r3, [r6, #16]
	ldr	ip, [sp, #28]
	cmp	r4, r1
	add	r5, r5, r3
	rsb	r3, ip, r5
	blt	.L1250
.L1246:
	movs	r0, #1
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L1255:
	ldrsh	r3, [r6, #16]
	add	r5, r5, r3
	b	.L1249
.L1254:
	str	r2, [sp, #28]
	str	r3, [sp, #24]
	bl	libaroma_fb(PLT)
	ldr	r3, [sp, #24]
	ldr	r9, [r0, #52]
	ldr	r2, [sp, #28]
	b	.L1242
.L1251:
	mov	r0, r8
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	libaroma_text_draw_layer, .-libaroma_text_draw_layer
	.section	.text.libaroma_text_draw_ex,"ax",%progbits
	.align	2
	.global	libaroma_text_draw_ex
	.thumb
	.thumb_func
	.type	libaroma_text_draw_ex, %function
libaroma_text_draw_ex:
	@ args = 36, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #52
	ldr	r5, [sp, #96]
	ldrb	r4, [sp, #100]	@ zero_extendqisi2
	str	r5, [sp, #32]
	ldr	r5, [sp, #104]
	cmp	r4, #9
	ldr	r7, [sp, #88]
	ldr	r6, [sp, #92]
	str	r5, [sp, #36]
	ldr	r5, [sp, #116]
	ldrh	ip, [sp, #108]
	ldrb	lr, [sp, #112]	@ zero_extendqisi2
	str	r5, [sp, #40]
	ldr	r5, [sp, #120]
	str	r5, [sp, #44]
	bhi	.L1262
	cbnz	r4, .L1263
	ldr	r5, [sp, #32]
	str	r7, [sp, #88]
	str	r6, [sp, #92]
	str	r5, [sp, #96]
.L1261:
	str	r4, [sp, #100]
	str	r4, [sp, #104]
	str	r4, [sp, #108]
	str	r4, [sp, #112]
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	libaroma_text_draw_layer(PLT)
.L1263:
	mov	r9, r2
	mov	r8, r3
	ldr	r5, [sp, #32]
	mov	r10, r0
	ldr	r2, [sp, #40]
	mov	fp, r1
	ldr	r3, [sp, #44]
	str	r4, [sp, #12]
	ldr	r4, [sp, #36]
	add	r2, r2, r9
	add	r3, r3, r8
	str	r7, [sp]
	str	r6, [sp, #4]
	str	r4, [sp, #16]
	movs	r4, #0
	str	r5, [sp, #8]
	str	ip, [sp, #20]
	str	lr, [sp, #24]
	bl	libaroma_text_draw_layer(PLT)
	str	r7, [sp, #88]
	mov	r0, r10
	str	r6, [sp, #92]
	mov	r1, fp
	str	r5, [sp, #96]
	mov	r2, r9
	mov	r3, r8
	b	.L1261
.L1262:
	mov	lr, #0
	str	r4, [sp, #100]
	str	ip, [sp, #108]
	str	lr, [sp, #104]
	str	lr, [sp, #112]
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	libaroma_text_draw_layer(PLT)
	.size	libaroma_text_draw_ex, .-libaroma_text_draw_ex
	.section	.text.libaroma_draw_text_ex,"ax",%progbits
	.align	2
	.global	libaroma_draw_text_ex
	.thumb
	.thumb_func
	.type	libaroma_draw_text_ex, %function
libaroma_draw_text_ex:
	@ args = 40, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #44
	ldrb	r4, [sp, #92]	@ zero_extendqisi2
	mov	r9, r0
	mov	r8, r2
	mov	r0, r1
	ldrh	r5, [sp, #80]
	mov	r6, r3
	str	r4, [sp]
	ldr	r2, [sp, #84]
	mov	r1, r5
	ldr	r3, [sp, #88]
	ldrb	fp, [sp, #96]	@ zero_extendqisi2
	ldrh	r10, [sp, #104]
	ldrb	r7, [sp, #108]	@ zero_extendqisi2
	bl	libaroma_text(PLT)
	mov	r4, r0
	cbz	r4, .L1265
	mov	r3, r6
	ldr	r6, [sp, #112]
	ldr	r1, [sp, #100]
	movs	r5, #0
	str	r5, [sp]
	mov	r0, r9
	str	r6, [sp, #28]
	mov	r2, r8
	ldr	r6, [sp, #116]
	str	r1, [sp, #16]
	mov	r1, r4
	str	r5, [sp, #4]
	str	r5, [sp, #8]
	str	fp, [sp, #12]
	str	r10, [sp, #20]
	str	r7, [sp, #24]
	str	r6, [sp, #32]
	bl	libaroma_text_draw_ex(PLT)
	mov	r5, r0
	mov	r0, r4
	cbz	r5, .L1269
	bl	libaroma_text_height(PLT)
	mov	r5, r0
	mov	r0, r4
.L1269:
	bl	libaroma_text_free(PLT)
	mov	r0, r5
.L1265:
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	libaroma_draw_text_ex, .-libaroma_draw_text_ex
	.section	.bss._libaroma_font_faces,"aw",%nobits
	.align	2
.LANCHOR2 = . + 0
	.type	_libaroma_font_faces, %object
	.size	_libaroma_font_faces, 200
_libaroma_font_faces:
	.space	200
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"align=\000"
	.space	1
.LC1:
	.ascii	"left\000"
	.space	3
.LC2:
	.ascii	"center\000"
	.space	1
.LC3:
	.ascii	"right\000"
	.space	2
.LC4:
	.ascii	"justify\000"
.LC5:
	.ascii	"font=\000"
	.space	2
.LC6:
	.ascii	"size=\000"
	.space	2
.LC7:
	.ascii	"linespacing=\000"
	.space	3
.LC8:
	.ascii	"img=\000"
	.space	3
.LC9:
	.ascii	"/align\000"
	.space	1
.LC10:
	.ascii	"/linespacing\000"
	.space	3
.LC11:
	.ascii	"/font\000"
	.space	2
.LC12:
	.ascii	"/size\000"
	.space	2
.LC13:
	.ascii	"[FT] FR:%i\012\000"
.LC14:
	.ascii	"E/%s: \000"
	.space	1
.LC15:
	.ascii	"libaroma_font_init Error FT_Init_FreeType\000"
	.space	2
.LC16:
	.ascii	"%s\012\000"
.LC17:
	.ascii	"\000"
	.space	3
.LC18:
	.ascii	"libaroma_font_release _libaroma_font_instance=NULL\000"
	.space	1
.LC19:
	.ascii	"libaroma_font_release FT_Done_FreeType Error\000"
	.space	3
.LC20:
	.ascii	"auto\000"
	.section	.bss._LIBAROMA_FONT_HB_FUNCTIONS_CB,"aw",%nobits
	.align	2
.LANCHOR1 = . + 0
	.type	_LIBAROMA_FONT_HB_FUNCTIONS_CB, %object
	.size	_LIBAROMA_FONT_HB_FUNCTIONS_CB, 4
_LIBAROMA_FONT_HB_FUNCTIONS_CB:
	.space	4
	.section	.bss.__libaroma_text_locks,"aw",%nobits
	.align	2
.LANCHOR0 = . + 0
	.type	__libaroma_text_locks, %object
	.size	__libaroma_text_locks, 36
__libaroma_text_locks:
	.space	36
	.section	.bss._libaroma_font_instance,"aw",%nobits
	.align	2
.LANCHOR3 = . + 0
	.type	_libaroma_font_instance, %object
	.size	_libaroma_font_instance, 4
_libaroma_font_instance:
	.space	4
	.hidden	ucdn_get_script
	.hidden	ucdn_get_bidi_class
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
