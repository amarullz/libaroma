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
	.file	"bdf.c"
	.section	.rodata._bdf_opts,"a",%progbits
	.align	2
	.type	_bdf_opts, %object
	.size	_bdf_opts, 16
_bdf_opts:
	.word	1
	.word	1
	.word	0
	.word	8
	.section	.rodata
	.align	2
.LC0:
	.ascii	"ADD_STYLE_NAME\000"
	.align	2
.LC1:
	.ascii	"AVERAGE_WIDTH\000"
	.align	2
.LC2:
	.ascii	"AVG_CAPITAL_WIDTH\000"
	.align	2
.LC3:
	.ascii	"AVG_LOWERCASE_WIDTH\000"
	.align	2
.LC4:
	.ascii	"CAP_HEIGHT\000"
	.align	2
.LC5:
	.ascii	"CHARSET_COLLECTIONS\000"
	.align	2
.LC6:
	.ascii	"CHARSET_ENCODING\000"
	.align	2
.LC7:
	.ascii	"CHARSET_REGISTRY\000"
	.align	2
.LC8:
	.ascii	"COMMENT\000"
	.align	2
.LC9:
	.ascii	"COPYRIGHT\000"
	.align	2
.LC10:
	.ascii	"DEFAULT_CHAR\000"
	.align	2
.LC11:
	.ascii	"DESTINATION\000"
	.align	2
.LC12:
	.ascii	"DEVICE_FONT_NAME\000"
	.align	2
.LC13:
	.ascii	"END_SPACE\000"
	.align	2
.LC14:
	.ascii	"FACE_NAME\000"
	.align	2
.LC15:
	.ascii	"FAMILY_NAME\000"
	.align	2
.LC16:
	.ascii	"FIGURE_WIDTH\000"
	.align	2
.LC17:
	.ascii	"FONT\000"
	.align	2
.LC18:
	.ascii	"FONTNAME_REGISTRY\000"
	.align	2
.LC19:
	.ascii	"FONT_ASCENT\000"
	.align	2
.LC20:
	.ascii	"FONT_DESCENT\000"
	.align	2
.LC21:
	.ascii	"FOUNDRY\000"
	.align	2
.LC22:
	.ascii	"FULL_NAME\000"
	.align	2
.LC23:
	.ascii	"ITALIC_ANGLE\000"
	.align	2
.LC24:
	.ascii	"MAX_SPACE\000"
	.align	2
.LC25:
	.ascii	"MIN_SPACE\000"
	.align	2
.LC26:
	.ascii	"NORM_SPACE\000"
	.align	2
.LC27:
	.ascii	"NOTICE\000"
	.align	2
.LC28:
	.ascii	"PIXEL_SIZE\000"
	.align	2
.LC29:
	.ascii	"POINT_SIZE\000"
	.align	2
.LC30:
	.ascii	"QUAD_WIDTH\000"
	.align	2
.LC31:
	.ascii	"RAW_ASCENT\000"
	.align	2
.LC32:
	.ascii	"RAW_AVERAGE_WIDTH\000"
	.align	2
.LC33:
	.ascii	"RAW_AVG_CAPITAL_WIDTH\000"
	.align	2
.LC34:
	.ascii	"RAW_AVG_LOWERCASE_WIDTH\000"
	.align	2
.LC35:
	.ascii	"RAW_CAP_HEIGHT\000"
	.align	2
.LC36:
	.ascii	"RAW_DESCENT\000"
	.align	2
.LC37:
	.ascii	"RAW_END_SPACE\000"
	.align	2
.LC38:
	.ascii	"RAW_FIGURE_WIDTH\000"
	.align	2
.LC39:
	.ascii	"RAW_MAX_SPACE\000"
	.align	2
.LC40:
	.ascii	"RAW_MIN_SPACE\000"
	.align	2
.LC41:
	.ascii	"RAW_NORM_SPACE\000"
	.align	2
.LC42:
	.ascii	"RAW_PIXEL_SIZE\000"
	.align	2
.LC43:
	.ascii	"RAW_POINT_SIZE\000"
	.align	2
.LC44:
	.ascii	"RAW_PIXELSIZE\000"
	.align	2
.LC45:
	.ascii	"RAW_POINTSIZE\000"
	.align	2
.LC46:
	.ascii	"RAW_QUAD_WIDTH\000"
	.align	2
.LC47:
	.ascii	"RAW_SMALL_CAP_SIZE\000"
	.align	2
.LC48:
	.ascii	"RAW_STRIKEOUT_ASCENT\000"
	.align	2
.LC49:
	.ascii	"RAW_STRIKEOUT_DESCENT\000"
	.align	2
.LC50:
	.ascii	"RAW_SUBSCRIPT_SIZE\000"
	.align	2
.LC51:
	.ascii	"RAW_SUBSCRIPT_X\000"
	.align	2
.LC52:
	.ascii	"RAW_SUBSCRIPT_Y\000"
	.align	2
.LC53:
	.ascii	"RAW_SUPERSCRIPT_SIZE\000"
	.align	2
.LC54:
	.ascii	"RAW_SUPERSCRIPT_X\000"
	.align	2
.LC55:
	.ascii	"RAW_SUPERSCRIPT_Y\000"
	.align	2
.LC56:
	.ascii	"RAW_UNDERLINE_POSITION\000"
	.align	2
.LC57:
	.ascii	"RAW_UNDERLINE_THICKNESS\000"
	.align	2
.LC58:
	.ascii	"RAW_X_HEIGHT\000"
	.align	2
.LC59:
	.ascii	"RELATIVE_SETWIDTH\000"
	.align	2
.LC60:
	.ascii	"RELATIVE_WEIGHT\000"
	.align	2
.LC61:
	.ascii	"RESOLUTION\000"
	.align	2
.LC62:
	.ascii	"RESOLUTION_X\000"
	.align	2
.LC63:
	.ascii	"RESOLUTION_Y\000"
	.align	2
.LC64:
	.ascii	"SETWIDTH_NAME\000"
	.align	2
.LC65:
	.ascii	"SLANT\000"
	.align	2
.LC66:
	.ascii	"SMALL_CAP_SIZE\000"
	.align	2
.LC67:
	.ascii	"SPACING\000"
	.align	2
.LC68:
	.ascii	"STRIKEOUT_ASCENT\000"
	.align	2
.LC69:
	.ascii	"STRIKEOUT_DESCENT\000"
	.align	2
.LC70:
	.ascii	"SUBSCRIPT_SIZE\000"
	.align	2
.LC71:
	.ascii	"SUBSCRIPT_X\000"
	.align	2
.LC72:
	.ascii	"SUBSCRIPT_Y\000"
	.align	2
.LC73:
	.ascii	"SUPERSCRIPT_SIZE\000"
	.align	2
.LC74:
	.ascii	"SUPERSCRIPT_X\000"
	.align	2
.LC75:
	.ascii	"SUPERSCRIPT_Y\000"
	.align	2
.LC76:
	.ascii	"UNDERLINE_POSITION\000"
	.align	2
.LC77:
	.ascii	"UNDERLINE_THICKNESS\000"
	.align	2
.LC78:
	.ascii	"WEIGHT\000"
	.align	2
.LC79:
	.ascii	"WEIGHT_NAME\000"
	.align	2
.LC80:
	.ascii	"X_HEIGHT\000"
	.align	2
.LC81:
	.ascii	"_MULE_BASELINE_OFFSET\000"
	.align	2
.LC82:
	.ascii	"_MULE_RELATIVE_COMPOSE\000"
	.section	.data.rel.ro.local._bdf_properties,"aw",%progbits
	.align	2
	.type	_bdf_properties, %object
	.size	_bdf_properties, 1328
_bdf_properties:
	.word	.LC0
	.word	1
	.word	1
	.word	0
	.word	.LC1
	.word	2
	.word	1
	.word	0
	.word	.LC2
	.word	2
	.word	1
	.word	0
	.word	.LC3
	.word	2
	.word	1
	.word	0
	.word	.LC4
	.word	2
	.word	1
	.word	0
	.word	.LC5
	.word	1
	.word	1
	.word	0
	.word	.LC6
	.word	1
	.word	1
	.word	0
	.word	.LC7
	.word	1
	.word	1
	.word	0
	.word	.LC8
	.word	1
	.word	1
	.word	0
	.word	.LC9
	.word	1
	.word	1
	.word	0
	.word	.LC10
	.word	3
	.word	1
	.word	0
	.word	.LC11
	.word	3
	.word	1
	.word	0
	.word	.LC12
	.word	1
	.word	1
	.word	0
	.word	.LC13
	.word	2
	.word	1
	.word	0
	.word	.LC14
	.word	1
	.word	1
	.word	0
	.word	.LC15
	.word	1
	.word	1
	.word	0
	.word	.LC16
	.word	2
	.word	1
	.word	0
	.word	.LC17
	.word	1
	.word	1
	.word	0
	.word	.LC18
	.word	1
	.word	1
	.word	0
	.word	.LC19
	.word	2
	.word	1
	.word	0
	.word	.LC20
	.word	2
	.word	1
	.word	0
	.word	.LC21
	.word	1
	.word	1
	.word	0
	.word	.LC22
	.word	1
	.word	1
	.word	0
	.word	.LC23
	.word	2
	.word	1
	.word	0
	.word	.LC24
	.word	2
	.word	1
	.word	0
	.word	.LC25
	.word	2
	.word	1
	.word	0
	.word	.LC26
	.word	2
	.word	1
	.word	0
	.word	.LC27
	.word	1
	.word	1
	.word	0
	.word	.LC28
	.word	2
	.word	1
	.word	0
	.word	.LC29
	.word	2
	.word	1
	.word	0
	.word	.LC30
	.word	2
	.word	1
	.word	0
	.word	.LC31
	.word	2
	.word	1
	.word	0
	.word	.LC32
	.word	2
	.word	1
	.word	0
	.word	.LC33
	.word	2
	.word	1
	.word	0
	.word	.LC34
	.word	2
	.word	1
	.word	0
	.word	.LC35
	.word	2
	.word	1
	.word	0
	.word	.LC36
	.word	2
	.word	1
	.word	0
	.word	.LC37
	.word	2
	.word	1
	.word	0
	.word	.LC38
	.word	2
	.word	1
	.word	0
	.word	.LC39
	.word	2
	.word	1
	.word	0
	.word	.LC40
	.word	2
	.word	1
	.word	0
	.word	.LC41
	.word	2
	.word	1
	.word	0
	.word	.LC42
	.word	2
	.word	1
	.word	0
	.word	.LC43
	.word	2
	.word	1
	.word	0
	.word	.LC44
	.word	2
	.word	1
	.word	0
	.word	.LC45
	.word	2
	.word	1
	.word	0
	.word	.LC46
	.word	2
	.word	1
	.word	0
	.word	.LC47
	.word	2
	.word	1
	.word	0
	.word	.LC48
	.word	2
	.word	1
	.word	0
	.word	.LC49
	.word	2
	.word	1
	.word	0
	.word	.LC50
	.word	2
	.word	1
	.word	0
	.word	.LC51
	.word	2
	.word	1
	.word	0
	.word	.LC52
	.word	2
	.word	1
	.word	0
	.word	.LC53
	.word	2
	.word	1
	.word	0
	.word	.LC54
	.word	2
	.word	1
	.word	0
	.word	.LC55
	.word	2
	.word	1
	.word	0
	.word	.LC56
	.word	2
	.word	1
	.word	0
	.word	.LC57
	.word	2
	.word	1
	.word	0
	.word	.LC58
	.word	2
	.word	1
	.word	0
	.word	.LC59
	.word	3
	.word	1
	.word	0
	.word	.LC60
	.word	3
	.word	1
	.word	0
	.word	.LC61
	.word	2
	.word	1
	.word	0
	.word	.LC62
	.word	3
	.word	1
	.word	0
	.word	.LC63
	.word	3
	.word	1
	.word	0
	.word	.LC64
	.word	1
	.word	1
	.word	0
	.word	.LC65
	.word	1
	.word	1
	.word	0
	.word	.LC66
	.word	2
	.word	1
	.word	0
	.word	.LC67
	.word	1
	.word	1
	.word	0
	.word	.LC68
	.word	2
	.word	1
	.word	0
	.word	.LC69
	.word	2
	.word	1
	.word	0
	.word	.LC70
	.word	2
	.word	1
	.word	0
	.word	.LC71
	.word	2
	.word	1
	.word	0
	.word	.LC72
	.word	2
	.word	1
	.word	0
	.word	.LC73
	.word	2
	.word	1
	.word	0
	.word	.LC74
	.word	2
	.word	1
	.word	0
	.word	.LC75
	.word	2
	.word	1
	.word	0
	.word	.LC76
	.word	2
	.word	1
	.word	0
	.word	.LC77
	.word	2
	.word	1
	.word	0
	.word	.LC78
	.word	3
	.word	1
	.word	0
	.word	.LC79
	.word	1
	.word	1
	.word	0
	.word	.LC80
	.word	2
	.word	1
	.word	0
	.word	.LC81
	.word	2
	.word	1
	.word	0
	.word	.LC82
	.word	2
	.word	1
	.word	0
	.section	.rodata._num_bdf_properties,"a",%progbits
	.align	2
	.type	_num_bdf_properties, %object
	.size	_num_bdf_properties, 4
_num_bdf_properties:
	.word	83
	.global	__aeabi_uidivmod
	.section	.text.hash_bucket,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	hash_bucket, %function
hash_bucket:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	str	r3, [r7, #8]
	b	.L2
.L3:
	ldr	r3, [r7, #16]
	lsls	r2, r3, #5
	ldr	r3, [r7, #16]
	subs	r2, r2, r3
	ldr	r3, [r7, #20]
	adds	r1, r3, #1
	str	r1, [r7, #20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	add	r3, r3, r2
	str	r3, [r7, #16]
.L2:
	ldr	r3, [r7, #20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L3
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #16]
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_uidivmod(PLT)
	mov	r3, r1
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	str	r3, [r7, #12]
	b	.L4
.L7:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L5
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #4]
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L5
	b	.L6
.L5:
	ldr	r3, [r7, #12]
	subs	r3, r3, #4
	str	r3, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcs	.L4
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	str	r3, [r7, #12]
.L4:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L7
.L6:
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	hash_bucket, .-hash_bucket
	.section	.text.hash_rehash,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	hash_rehash, %function
hash_rehash:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsls	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	movw	r3, #43691
	movt	r3, 43690
	umull	r1, r3, r3, r2
	lsrs	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #8
	str	r2, [sp, #4]
	ldr	r0, [r7]
	movs	r1, #4
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L10
	b	.L11
.L10:
	movs	r3, #0
	str	r3, [r7, #24]
	ldr	r3, [r7, #20]
	str	r3, [r7, #28]
	b	.L12
.L14:
	ldr	r3, [r7, #28]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L13
	ldr	r3, [r7, #28]
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	hash_bucket(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #28]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	str	r2, [r3]
.L13:
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	adds	r3, r3, #4
	str	r3, [r7, #28]
.L12:
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bcc	.L14
	ldr	r0, [r7]
	ldr	r1, [r7, #20]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #20]
.L11:
	ldr	r3, [r7, #8]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	hash_rehash, .-hash_rehash
	.section	.text.hash_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	hash_init, %function
hash_init:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #241
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #4]
	ldr	r2, [r7, #12]
	movw	r3, #43691
	movt	r3, 43690
	umull	r1, r3, r3, r2
	lsrs	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #8
	str	r2, [sp, #4]
	ldr	r0, [r7]
	movs	r1, #4
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L17
	nop
.L17:
	ldr	r3, [r7, #8]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	hash_init, .-hash_init
	.section	.text.hash_free,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	hash_free, %function
hash_free:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L19
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L21
.L22:
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	ldr	r0, [r7]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #16]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
	ldr	r3, [r7, #16]
	adds	r3, r3, #4
	str	r3, [r7, #16]
.L21:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bcc	.L22
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r0, [r7]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #12]
.L19:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	hash_free, .-hash_free
	.section	.text.hash_insert,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	hash_insert, %function
hash_insert:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	bl	hash_bucket(PLT)
	str	r0, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #28]
	ldr	r3, [r3]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L24
	add	r3, r7, #20
	ldr	r0, [r7]
	movs	r1, #8
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	str	r0, [r7, #24]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L25
	b	.L26
.L25:
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #24]
	str	r2, [r3]
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #8]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r2, r3
	bcc	.L27
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	hash_rehash(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L27
	b	.L26
.L27:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	b	.L26
.L24:
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #8]
	str	r2, [r3, #4]
.L26:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	hash_insert, .-hash_insert
	.section	.text.hash_lookup,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	hash_lookup, %function
hash_lookup:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	hash_bucket(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	hash_lookup, .-hash_lookup
	.section	.text._bdf_list_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_bdf_list_init, %function
_bdf_list_init:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	movs	r1, #0
	movs	r2, #16
	bl	memset(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #12]
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	_bdf_list_init, .-_bdf_list_init
	.section	.text._bdf_list_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_bdf_list_done, %function
_bdf_list_done:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L32
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r0, [r7, #4]
	movs	r1, #0
	movs	r2, #16
	bl	memset(PLT)
.L32:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	_bdf_list_done, .-_bdf_list_done
	.section	.text._bdf_list_ensure,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_bdf_list_ensure, %function
_bdf_list_ensure:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	cmp	r2, r3
	bcs	.L35
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	lsrs	r2, r3, #1
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	adds	r3, r3, #5
	str	r3, [r7, #28]
	mvn	r3, #-536870912
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #16]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bne	.L36
	movs	r3, #64
	str	r3, [r7, #12]
	b	.L35
.L36:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bcc	.L37
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bls	.L38
.L37:
	ldr	r3, [r7, #20]
	str	r3, [r7, #28]
.L38:
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #28]
	ldr	r1, [r7, #4]
	ldr	r1, [r1]
	str	r1, [sp]
	add	r1, r7, #12
	str	r1, [sp, #4]
	ldr	r0, [r7, #16]
	movs	r1, #4
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L39
	b	.L35
.L39:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #28]
	str	r2, [r3, #4]
.L35:
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	_bdf_list_ensure, .-_bdf_list_ensure
	.section	.text._bdf_list_shift,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_bdf_list_shift, %function
_bdf_list_shift:
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
	beq	.L42
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L42
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L43
.L42:
	b	.L41
.L43:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7]
	cmp	r2, r3
	bhi	.L45
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	b	.L41
.L45:
	ldr	r3, [r7]
	str	r3, [r7, #8]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L46
.L47:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r7, #4]
	ldr	r1, [r2]
	ldr	r2, [r7, #8]
	lsls	r2, r2, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L46:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bhi	.L47
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7]
	subs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
.L41:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	_bdf_list_shift, .-_bdf_list_shift
	.section	.rodata.empty,"a",%progbits
	.align	2
	.type	empty, %object
	.size	empty, 1
empty:
	.space	1
	.section	.text._bdf_list_join,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_bdf_list_join, %function
_bdf_list_join:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L49
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L50
.L49:
	movs	r3, #0
	b	.L51
.L50:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3]
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	str	r3, [r7, #28]
	b	.L52
.L56:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #28]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #20]
	b	.L53
.L54:
	ldr	r3, [r7, #24]
	adds	r2, r3, #1
	str	r2, [r7, #24]
	ldr	r2, [r7, #16]
	add	r2, r2, r3
	ldr	r3, [r7, #20]
	adds	r1, r3, #1
	str	r1, [r7, #20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	strb	r3, [r2]
.L53:
	ldr	r3, [r7, #20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L54
	ldr	r3, [r7, #28]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	bcs	.L55
	ldr	r3, [r7, #24]
	adds	r2, r3, #1
	str	r2, [r7, #24]
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	ldr	r2, [r7, #8]
	uxtb	r2, r2
	strb	r2, [r3]
.L55:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L52:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bhi	.L56
	ldr	r2, [r7, #16]
	ldr	r3, .L58
.LPIC0:
	add	r3, pc
	cmp	r2, r3
	beq	.L57
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
.L57:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #24]
	str	r2, [r3]
	ldr	r3, [r7, #16]
.L51:
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L59:
	.align	2
.L58:
	.word	empty-(.LPIC0+4)
	.size	_bdf_list_join, .-_bdf_list_join
	.section	.text._bdf_list_split,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_bdf_list_split, %function
_bdf_list_split:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #72
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #52]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L61
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, .L88
.LPIC1:
	add	r2, pc
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #4
	ldr	r2, .L88+4
.LPIC2:
	add	r2, pc
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r2, .L88+8
.LPIC3:
	add	r2, pc
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #12
	ldr	r2, .L88+12
.LPIC4:
	add	r2, pc
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #16
	ldr	r2, .L88+16
.LPIC5:
	add	r2, pc
	str	r2, [r3]
.L61:
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L62
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L62
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L63
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L64
.L63:
	movs	r3, #6
	str	r3, [r7, #52]
	b	.L62
.L64:
	add	r3, r7, #16
	mov	r0, r3
	movs	r1, #0
	movs	r2, #32
	bl	memset(PLT)
	movs	r3, #0
	str	r3, [r7, #64]
	ldr	r3, [r7, #8]
	str	r3, [r7, #60]
	b	.L65
.L69:
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #43
	bne	.L66
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L66
	movs	r3, #1
	str	r3, [r7, #64]
	b	.L67
.L66:
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsrs	r3, r3, #3
	uxtb	r3, r3
	ldr	r2, [r7, #60]
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsrs	r2, r2, #3
	uxtb	r2, r2
	add	r1, r7, #72
	add	r2, r2, r1
	ldrb	r1, [r2, #-56]	@ zero_extendqisi2
	ldr	r2, [r7, #60]
	ldrb	r2, [r2]	@ zero_extendqisi2
	and	r2, r2, #7
	movs	r0, #1
	lsl	r2, r0, r2
	uxtb	r2, r2
	orrs	r2, r2, r1
	uxtb	r2, r2
	add	r1, r7, #72
	add	r3, r3, r1
	strb	r2, [r3, #-56]
.L67:
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
.L65:
	ldr	r3, [r7, #60]
	cmp	r3, #0
	beq	.L68
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L69
.L68:
	movs	r3, #0
	str	r3, [r7, #68]
	ldr	r3, [r7, #4]
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	str	r3, [r7, #60]
	ldr	r2, [r7, #60]
	ldr	r3, [r7]
	add	r3, r3, r2
	str	r3, [r7, #48]
	b	.L70
.L84:
	b	.L71
.L73:
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	str	r3, [r7, #56]
.L71:
	ldr	r3, [r7, #56]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L72
	ldr	r3, [r7, #56]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsrs	r3, r3, #3
	uxtb	r3, r3
	add	r2, r7, #72
	add	r3, r3, r2
	ldrb	r3, [r3, #-56]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #56]
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #7
	asr	r3, r2, r3
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L73
.L72:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bne	.L74
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	adds	r3, r3, #1
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_bdf_list_ensure(PLT)
	str	r0, [r7, #52]
	ldr	r3, [r7, #52]
	cmp	r3, #0
	beq	.L74
	b	.L62
.L74:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	adds	r0, r3, #1
	ldr	r1, [r7, #12]
	str	r0, [r1, #8]
	lsls	r3, r3, #2
	add	r2, r2, r3
	ldr	r1, [r7, #56]
	ldr	r3, [r7, #60]
	cmp	r1, r3
	bls	.L75
	ldr	r3, [r7, #60]
	b	.L76
.L75:
	ldr	r3, .L88+20
.LPIC6:
	add	r3, pc
.L76:
	str	r3, [r2]
	ldr	r3, [r7, #56]
	str	r3, [r7, #60]
	ldr	r3, [r7, #64]
	cmp	r3, #0
	beq	.L77
	b	.L78
.L80:
	ldr	r3, [r7, #56]
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	str	r3, [r7, #56]
.L78:
	ldr	r3, [r7, #56]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L79
	ldr	r3, [r7, #56]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsrs	r3, r3, #3
	uxtb	r3, r3
	add	r1, r7, #72
	add	r3, r3, r1
	ldrb	r3, [r3, #-56]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #56]
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #7
	asr	r3, r2, r3
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L80
	b	.L79
.L77:
	ldr	r3, [r7, #56]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L79
	ldr	r3, [r7, #56]
	adds	r2, r3, #1
	str	r2, [r7, #56]
	movs	r2, #0
	strb	r2, [r3]
.L79:
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #60]
	cmp	r2, r3
	bls	.L81
	ldr	r3, [r7, #56]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L81
	movs	r3, #1
	b	.L82
.L81:
	movs	r3, #0
.L82:
	str	r3, [r7, #68]
	ldr	r3, [r7, #56]
	str	r3, [r7, #60]
.L70:
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #48]
	cmp	r2, r3
	bcs	.L83
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L84
.L83:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #68]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bcc	.L85
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #68]
	add	r3, r3, r2
	adds	r3, r3, #1
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_bdf_list_ensure(PLT)
	str	r0, [r7, #52]
	ldr	r3, [r7, #52]
	cmp	r3, #0
	beq	.L85
	b	.L62
.L85:
	ldr	r3, [r7, #68]
	cmp	r3, #0
	beq	.L86
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	adds	r0, r3, #1
	ldr	r1, [r7, #12]
	str	r0, [r1, #8]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, .L88+24
.LPIC7:
	add	r2, pc
	str	r2, [r3]
.L86:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	lsls	r3, r3, #2
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [r3]
.L62:
	ldr	r3, [r7, #52]
	mov	r0, r3
	adds	r7, r7, #72
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L89:
	.align	2
.L88:
	.word	empty-(.LPIC1+4)
	.word	empty-(.LPIC2+4)
	.word	empty-(.LPIC3+4)
	.word	empty-(.LPIC4+4)
	.word	empty-(.LPIC5+4)
	.word	empty-(.LPIC6+4)
	.word	empty-(.LPIC7+4)
	.size	_bdf_list_split, .-_bdf_list_split
	.section	.text._bdf_readstream,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_bdf_readstream, %function
_bdf_readstream:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #92
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #40]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	str	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L91
	movs	r3, #6
	str	r3, [r7, #20]
	b	.L92
.L91:
	mov	r3, #1024
	str	r3, [r7, #72]
	ldr	r3, [r7, #72]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #20
	str	r2, [sp, #4]
	ldr	r0, [r7, #36]
	movs	r1, #1
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	str	r0, [r7, #40]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L93
	b	.L92
.L93:
	ldr	r3, [r7, #8]
	str	r3, [r7, #24]
	movs	r3, #1
	str	r3, [r7, #76]
	ldr	r3, [r7, #40]
	movs	r2, #0
	strb	r2, [r3]
	movs	r3, #0
	str	r3, [r7, #56]
	movs	r3, #0
	str	r3, [r7, #44]
	movs	r3, #0
	str	r3, [r7, #48]
	movs	r3, #1
	str	r3, [r7, #68]
	mov	r3, #256
	str	r3, [r7, #64]
	movs	r3, #0
	str	r3, [r7, #60]
.L111:
	ldr	r3, [r7, #68]
	cmp	r3, #0
	beq	.L94
	ldr	r3, [r7, #48]
	ldr	r2, [r7, #40]
	add	r2, r2, r3
	ldr	r3, [r7, #48]
	ldr	r1, [r7, #72]
	subs	r3, r1, r3
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	bl	FT_Stream_TryRead(PLT)
	mov	r3, r0
	str	r3, [r7, #60]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #60]
	add	r3, r3, r2
	str	r3, [r7, #44]
	movs	r3, #0
	str	r3, [r7, #48]
	movs	r3, #0
	str	r3, [r7, #68]
.L94:
	ldr	r3, [r7, #56]
	str	r3, [r7, #52]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #44]
	cmp	r2, r3
	bge	.L95
	ldr	r3, [r7, #56]
	ldr	r2, [r7, #40]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #64]
	cmp	r2, r3
	bne	.L95
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	str	r3, [r7, #56]
	mov	r3, #256
	str	r3, [r7, #64]
	b	.L96
.L95:
	b	.L97
.L99:
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	str	r3, [r7, #52]
.L97:
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #44]
	cmp	r2, r3
	bge	.L98
	ldr	r3, [r7, #52]
	ldr	r2, [r7, #40]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L98
	ldr	r3, [r7, #52]
	ldr	r2, [r7, #40]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #13
	bne	.L99
.L98:
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #44]
	cmp	r2, r3
	blt	.L100
	ldr	r3, [r7, #60]
	cmp	r3, #0
	bne	.L101
	b	.L102
.L101:
	ldr	r3, [r7, #56]
	cmp	r3, #0
	bne	.L103
	ldr	r3, [r7, #72]
	cmp	r3, #65536
	bcc	.L104
	movs	r3, #6
	str	r3, [r7, #20]
	b	.L92
.L104:
	ldr	r3, [r7, #72]
	lsls	r3, r3, #1
	str	r3, [r7, #32]
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #32]
	ldr	r1, [r7, #40]
	str	r1, [sp]
	add	r1, r7, #20
	str	r1, [sp, #4]
	ldr	r0, [r7, #36]
	movs	r1, #1
	bl	ft_mem_realloc(PLT)
	str	r0, [r7, #40]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L105
	b	.L92
.L105:
	ldr	r3, [r7, #72]
	str	r3, [r7, #48]
	ldr	r3, [r7, #32]
	str	r3, [r7, #72]
	b	.L106
.L103:
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #56]
	subs	r3, r2, r3
	str	r3, [r7, #60]
	ldr	r3, [r7, #56]
	ldr	r2, [r7, #40]
	add	r2, r2, r3
	ldr	r3, [r7, #60]
	ldr	r0, [r7, #40]
	mov	r1, r2
	mov	r2, r3
	bl	memmove(PLT)
	ldr	r3, [r7, #60]
	str	r3, [r7, #48]
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #60]
	subs	r3, r2, r3
	str	r3, [r7, #44]
	movs	r3, #0
	str	r3, [r7, #56]
.L106:
	movs	r3, #1
	str	r3, [r7, #68]
	b	.L96
.L100:
	ldr	r3, [r7, #52]
	ldr	r2, [r7, #40]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #28]
	ldr	r3, [r7, #52]
	ldr	r2, [r7, #40]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #56]
	ldr	r2, [r7, #40]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #35
	beq	.L107
	ldr	r3, [r7, #56]
	ldr	r2, [r7, #40]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #26
	beq	.L107
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #56]
	cmp	r2, r3
	ble	.L107
	ldr	r4, [r7, #24]
	ldr	r3, [r7, #56]
	ldr	r2, [r7, #40]
	adds	r1, r2, r3
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #56]
	subs	r3, r2, r3
	mov	r2, r3
	add	r3, r7, #24
	ldr	r0, [r7, #4]
	str	r0, [sp]
	mov	r0, r1
	mov	r1, r2
	ldr	r2, [r7, #76]
	blx	r4
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #-1
	bne	.L108
	ldr	r4, [r7, #24]
	ldr	r3, [r7, #56]
	ldr	r2, [r7, #40]
	adds	r1, r2, r3
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #56]
	subs	r3, r2, r3
	mov	r2, r3
	add	r3, r7, #24
	ldr	r0, [r7, #4]
	str	r0, [sp]
	mov	r0, r1
	mov	r1, r2
	ldr	r2, [r7, #76]
	blx	r4
	mov	r3, r0
	str	r3, [r7, #20]
.L108:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L107
	b	.L102
.L107:
	ldr	r3, [r7, #76]
	adds	r3, r3, #1
	str	r3, [r7, #76]
	ldr	r3, [r7, #52]
	ldr	r2, [r7, #40]
	add	r3, r3, r2
	ldr	r2, [r7, #28]
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	str	r3, [r7, #56]
	ldr	r3, [r7, #28]
	cmp	r3, #10
	bne	.L109
	movs	r3, #13
	str	r3, [r7, #64]
	b	.L96
.L109:
	ldr	r3, [r7, #28]
	cmp	r3, #13
	bne	.L110
	movs	r3, #10
	str	r3, [r7, #64]
	b	.L96
.L110:
	mov	r3, #256
	str	r3, [r7, #64]
	b	.L111
.L96:
	b	.L111
.L102:
	ldr	r3, [r7]
	ldr	r2, [r7, #76]
	str	r2, [r3]
.L92:
	ldr	r0, [r7, #36]
	ldr	r1, [r7, #40]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #40]
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #84
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	_bdf_readstream, .-_bdf_readstream
	.section	.rodata.a2i,"a",%progbits
	.align	2
	.type	a2i, %object
	.size	a2i, 128
a2i:
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
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
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
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
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
	.space	1
	.section	.rodata.odigits,"a",%progbits
	.align	2
	.type	odigits, %object
	.size	odigits, 32
odigits:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-1
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
	.section	.rodata.ddigits,"a",%progbits
	.align	2
	.type	ddigits, %object
	.size	ddigits, 32
ddigits:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-1
	.byte	3
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
	.section	.rodata.hdigits,"a",%progbits
	.align	2
	.type	hdigits, %object
	.size	hdigits, 32
hdigits:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-1
	.byte	3
	.byte	126
	.byte	0
	.byte	0
	.byte	0
	.byte	126
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
	.section	.text._bdf_atoul,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_bdf_atoul, %function
_bdf_atoul:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L114
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L115
.L114:
	movs	r3, #0
	b	.L116
.L115:
	ldr	r3, [r7, #4]
	cmp	r3, #8
	beq	.L118
	cmp	r3, #16
	beq	.L119
	b	.L126
.L118:
	ldr	r3, .L127
.LPIC8:
	add	r3, pc
	str	r3, [r7, #16]
	b	.L120
.L119:
	ldr	r3, .L127+4
.LPIC9:
	add	r3, pc
	str	r3, [r7, #16]
	b	.L120
.L126:
	movs	r3, #10
	str	r3, [r7, #4]
	ldr	r3, .L127+8
.LPIC10:
	add	r3, pc
	str	r3, [r7, #16]
	nop
.L120:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #48
	bne	.L121
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #120
	beq	.L122
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #88
	bne	.L121
.L122:
	movs	r3, #16
	str	r3, [r7, #4]
	ldr	r3, .L127+12
.LPIC11:
	add	r3, pc
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	adds	r3, r3, #2
	str	r3, [r7, #12]
.L121:
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L123
.L124:
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #4]
	mul	r2, r2, r3
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r1, .L127+16
.LPIC12:
	add	r1, pc
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L123:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsrs	r3, r3, #3
	uxtb	r3, r3
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #7
	asr	r3, r2, r3
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L124
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L125
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #12]
	str	r2, [r3]
.L125:
	ldr	r3, [r7, #20]
.L116:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L128:
	.align	2
.L127:
	.word	odigits-(.LPIC8+4)
	.word	hdigits-(.LPIC9+4)
	.word	ddigits-(.LPIC10+4)
	.word	hdigits-(.LPIC11+4)
	.word	a2i-(.LPIC12+4)
	.size	_bdf_atoul, .-_bdf_atoul
	.section	.text._bdf_atol,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_bdf_atol, %function
_bdf_atol:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L130
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L131
.L130:
	movs	r3, #0
	b	.L132
.L131:
	ldr	r3, [r7, #4]
	cmp	r3, #8
	beq	.L134
	cmp	r3, #16
	beq	.L135
	b	.L145
.L134:
	ldr	r3, .L146
.LPIC13:
	add	r3, pc
	str	r3, [r7, #20]
	b	.L136
.L135:
	ldr	r3, .L146+4
.LPIC14:
	add	r3, pc
	str	r3, [r7, #20]
	b	.L136
.L145:
	movs	r3, #10
	str	r3, [r7, #4]
	ldr	r3, .L146+8
.LPIC15:
	add	r3, pc
	str	r3, [r7, #20]
	nop
.L136:
	movs	r3, #0
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #45
	bne	.L137
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
	movs	r3, #1
	str	r3, [r7, #24]
.L137:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #48
	bne	.L138
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #120
	beq	.L139
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #88
	bne	.L138
.L139:
	movs	r3, #16
	str	r3, [r7, #4]
	ldr	r3, .L146+12
.LPIC16:
	add	r3, pc
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	adds	r3, r3, #2
	str	r3, [r7, #12]
.L138:
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L140
.L141:
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #4]
	mul	r2, r2, r3
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r1, .L146+16
.LPIC17:
	add	r1, pc
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L140:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsrs	r3, r3, #3
	uxtb	r3, r3
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #7
	asr	r3, r2, r3
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L141
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L142
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #12]
	str	r2, [r3]
.L142:
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L143
	ldr	r3, [r7, #28]
	negs	r3, r3
	b	.L144
.L143:
	ldr	r3, [r7, #28]
.L144:
.L132:
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L147:
	.align	2
.L146:
	.word	odigits-(.LPIC13+4)
	.word	hdigits-(.LPIC14+4)
	.word	ddigits-(.LPIC15+4)
	.word	hdigits-(.LPIC16+4)
	.word	a2i-(.LPIC17+4)
	.size	_bdf_atol, .-_bdf_atol
	.section	.text._bdf_atous,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_bdf_atous, %function
_bdf_atous:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L149
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L150
.L149:
	movs	r3, #0
	b	.L151
.L150:
	ldr	r3, [r7, #4]
	cmp	r3, #8
	beq	.L153
	cmp	r3, #16
	beq	.L154
	b	.L161
.L153:
	ldr	r3, .L162
.LPIC18:
	add	r3, pc
	str	r3, [r7, #16]
	b	.L155
.L154:
	ldr	r3, .L162+4
.LPIC19:
	add	r3, pc
	str	r3, [r7, #16]
	b	.L155
.L161:
	movs	r3, #10
	str	r3, [r7, #4]
	ldr	r3, .L162+8
.LPIC20:
	add	r3, pc
	str	r3, [r7, #16]
	nop
.L155:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #48
	bne	.L156
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #120
	beq	.L157
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #88
	bne	.L156
.L157:
	movs	r3, #16
	str	r3, [r7, #4]
	ldr	r3, .L162+12
.LPIC21:
	add	r3, pc
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	adds	r3, r3, #2
	str	r3, [r7, #12]
.L156:
	movs	r3, #0
	strh	r3, [r7, #22]	@ movhi
	b	.L158
.L159:
	ldr	r3, [r7, #4]
	uxth	r3, r3
	ldrh	r2, [r7, #22]	@ movhi
	smulbb	r3, r2, r3
	uxth	r2, r3
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r1, .L162+16
.LPIC22:
	add	r1, pc
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	add	r3, r3, r2
	strh	r3, [r7, #22]	@ movhi
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L158:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsrs	r3, r3, #3
	uxtb	r3, r3
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #7
	asr	r3, r2, r3
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L159
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L160
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #12]
	str	r2, [r3]
.L160:
	ldrh	r3, [r7, #22]
.L151:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L163:
	.align	2
.L162:
	.word	odigits-(.LPIC18+4)
	.word	hdigits-(.LPIC19+4)
	.word	ddigits-(.LPIC20+4)
	.word	hdigits-(.LPIC21+4)
	.word	a2i-(.LPIC22+4)
	.size	_bdf_atous, .-_bdf_atous
	.section	.text._bdf_atos,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_bdf_atos, %function
_bdf_atos:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L165
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L166
.L165:
	movs	r3, #0
	b	.L167
.L166:
	ldr	r3, [r7, #4]
	cmp	r3, #8
	beq	.L169
	cmp	r3, #16
	beq	.L170
	b	.L180
.L169:
	ldr	r3, .L181
.LPIC23:
	add	r3, pc
	str	r3, [r7, #16]
	b	.L171
.L170:
	ldr	r3, .L181+4
.LPIC24:
	add	r3, pc
	str	r3, [r7, #16]
	b	.L171
.L180:
	movs	r3, #10
	str	r3, [r7, #4]
	ldr	r3, .L181+8
.LPIC25:
	add	r3, pc
	str	r3, [r7, #16]
	nop
.L171:
	movs	r3, #0
	strh	r3, [r7, #20]	@ movhi
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #45
	bne	.L172
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
	movs	r3, #1
	strh	r3, [r7, #20]	@ movhi
.L172:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #48
	bne	.L173
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #120
	beq	.L174
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #88
	bne	.L173
.L174:
	movs	r3, #16
	str	r3, [r7, #4]
	ldr	r3, .L181+12
.LPIC26:
	add	r3, pc
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	adds	r3, r3, #2
	str	r3, [r7, #12]
.L173:
	movs	r3, #0
	strh	r3, [r7, #22]	@ movhi
	b	.L175
.L176:
	ldr	r3, [r7, #4]
	uxth	r2, r3
	ldrh	r3, [r7, #22]
	smulbb	r3, r2, r3
	uxth	r2, r3
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r1, .L181+16
.LPIC27:
	add	r1, pc
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	add	r3, r3, r2
	uxth	r3, r3
	strh	r3, [r7, #22]	@ movhi
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L175:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsrs	r3, r3, #3
	uxtb	r3, r3
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #7
	asr	r3, r2, r3
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L176
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L177
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #12]
	str	r2, [r3]
.L177:
	ldrsh	r3, [r7, #20]
	cmp	r3, #0
	beq	.L178
	ldrh	r3, [r7, #22]
	negs	r3, r3
	uxth	r3, r3
	uxth	r3, r3
	b	.L179
.L178:
	ldrh	r3, [r7, #22]
.L179:
	uxth	r3, r3
.L167:
	sxth	r3, r3
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L182:
	.align	2
.L181:
	.word	odigits-(.LPIC23+4)
	.word	hdigits-(.LPIC24+4)
	.word	ddigits-(.LPIC25+4)
	.word	hdigits-(.LPIC26+4)
	.word	a2i-(.LPIC27+4)
	.size	_bdf_atos, .-_bdf_atos
	.section	.text.by_encoding,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	by_encoding, %function
by_encoding:
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
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bge	.L184
	mov	r3, #-1
	b	.L185
.L184:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	ble	.L186
	movs	r3, #1
	b	.L185
.L186:
	movs	r3, #0
.L185:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	by_encoding, .-by_encoding
	.section	.text.bdf_create_property,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	bdf_create_property, %function
bdf_create_property:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #44
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #4]
	add	r3, r3, #278528
	adds	r3, r3, #136
	ldr	r3, [r3]
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	add	r3, r3, #278528
	adds	r3, r3, #148
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	hash_lookup(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L188
	b	.L189
.L188:
	ldr	r3, [r7, #4]
	add	r3, r3, #278528
	adds	r3, r3, #144
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7, #4]
	add	r3, r3, #278528
	adds	r3, r3, #144
	ldr	r3, [r3]
	adds	r3, r3, #1
	mov	r4, r3
	ldr	r3, [r7, #4]
	add	r3, r3, #278528
	adds	r3, r3, #140
	ldr	r3, [r3]
	str	r3, [sp]
	add	r3, r7, #16
	str	r3, [sp, #4]
	ldr	r0, [r7, #28]
	movs	r1, #16
	mov	r3, r4
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	add	r3, r3, #278528
	adds	r3, r3, #140
	str	r2, [r3]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L190
	b	.L189
.L190:
	ldr	r3, [r7, #4]
	add	r3, r3, #278528
	adds	r3, r3, #140
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	add	r3, r3, #278528
	adds	r3, r3, #144
	ldr	r3, [r3]
	lsls	r3, r3, #4
	add	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r0, [r7, #24]
	movs	r1, #0
	movs	r2, #16
	bl	memset(PLT)
	ldr	r0, [r7, #12]
	bl	strlen(PLT)
	mov	r3, r0
	adds	r3, r3, #1
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #16
	str	r2, [sp, #4]
	ldr	r0, [r7, #28]
	movs	r1, #1
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #24]
	str	r2, [r3]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L191
	b	.L189
.L191:
	ldr	r3, [r7, #24]
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #20]
	bl	memcpy(PLT)
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #8]
	str	r2, [r3, #4]
	ldr	r3, [r7, #24]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	add	r3, r3, #278528
	adds	r3, r3, #144
	ldr	r2, [r3]
	movs	r3, #83
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #24]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	add	r3, r3, #278528
	adds	r3, r3, #148
	mov	r0, r2
	ldr	r1, [r7, #20]
	mov	r2, r3
	ldr	r3, [r7, #28]
	bl	hash_insert(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L192
	b	.L189
.L192:
	ldr	r3, [r7, #4]
	add	r3, r3, #278528
	adds	r3, r3, #144
	ldr	r3, [r3]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	add	r3, r3, #278528
	adds	r3, r3, #144
	str	r2, [r3]
.L189:
	ldr	r3, [r7, #16]
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	bdf_create_property, .-bdf_create_property
	.section	.text.bdf_get_property,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	bdf_get_property, %function
bdf_get_property:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L195
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L196
.L195:
	movs	r3, #0
	b	.L197
.L196:
	ldr	r3, [r7]
	add	r3, r3, #278528
	adds	r3, r3, #148
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	hash_lookup(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L198
	movs	r3, #0
	b	.L197
.L198:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	str	r3, [r7, #8]
	movs	r3, #83
	ldr	r2, [r7, #8]
	cmp	r2, r3
	bcc	.L199
	ldr	r3, [r7]
	add	r3, r3, #278528
	adds	r3, r3, #140
	ldr	r2, [r3]
	movs	r3, #83
	ldr	r1, [r7, #8]
	subs	r3, r1, r3
	lsls	r3, r3, #4
	add	r3, r3, r2
	b	.L197
.L199:
	ldr	r3, [r7, #8]
	lsls	r2, r3, #4
	ldr	r3, .L200
.LPIC28:
	add	r3, pc
	add	r3, r3, r2
.L197:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L201:
	.align	2
.L200:
	.word	_bdf_properties-(.LPIC28+4)
	.size	bdf_get_property, .-bdf_get_property
	.section	.text._bdf_add_comment,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_bdf_add_comment, %function
_bdf_add_comment:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	add	r3, r3, #278528
	adds	r3, r3, #136
	ldr	r3, [r3]
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #88]
	mov	r2, r3
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #88]
	ldr	r3, [r7, #4]
	add	r3, r3, r1
	adds	r3, r3, #1
	ldr	r1, [r7, #12]
	ldr	r1, [r1, #84]
	str	r1, [sp]
	add	r1, r7, #20
	str	r1, [sp, #4]
	ldr	r0, [r7, #28]
	movs	r1, #1
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #84]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L203
	b	.L204
.L203:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #84]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #88]
	add	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r0, [r7, #24]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	memcpy(PLT)
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	movs	r2, #10
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #88]
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #88]
.L204:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	_bdf_add_comment, .-_bdf_add_comment
	.section	.rodata
	.align	2
.LC83:
	.ascii	"-\000"
	.section	.text._bdf_set_default_spacing,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_bdf_set_default_spacing, %function
_bdf_set_default_spacing:
	@ args = 0, pretend = 0, frame = 304
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #304
	add	r7, sp, #0
	add	r3, r7, #12
	str	r0, [r3]
	add	r3, r7, #8
	str	r1, [r3]
	adds	r3, r7, #4
	str	r2, [r3]
	movs	r3, #0
	str	r3, [r7, #300]
	adds	r3, r7, #4
	adds	r2, r7, #4
	ldr	r2, [r2]
	str	r2, [r3]
	add	r3, r7, #12
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L207
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L207
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L208
.L207:
	movs	r3, #6
	str	r3, [r7, #300]
	b	.L209
.L208:
	add	r3, r7, #12
	ldr	r3, [r3]
	add	r3, r3, #278528
	adds	r3, r3, #136
	ldr	r3, [r3]
	str	r3, [r7, #296]
	add	r3, r7, #20
	mov	r0, r3
	ldr	r1, [r7, #296]
	bl	_bdf_list_init(PLT)
	add	r3, r7, #8
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #28]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r0, r3
	bl	strlen(PLT)
	mov	r3, r0
	adds	r3, r3, #1
	str	r3, [r7, #292]
	ldr	r3, [r7, #292]
	cmp	r3, #255
	bls	.L210
	movs	r3, #6
	str	r3, [r7, #300]
	b	.L209
.L210:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3]
	add	r2, r7, #36
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #292]
	bl	memcpy(PLT)
	add	r2, r7, #20
	add	r3, r7, #36
	mov	r0, r2
	ldr	r2, .L218
.LPIC29:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [r7, #292]
	bl	_bdf_list_split(PLT)
	str	r0, [r7, #300]
	ldr	r3, [r7, #300]
	cmp	r3, #0
	beq	.L211
	b	.L212
.L211:
	add	r3, r7, #20
	ldr	r3, [r3, #8]
	cmp	r3, #15
	bne	.L212
	add	r3, r7, #20
	ldr	r3, [r3]
	adds	r3, r3, #44
	ldr	r3, [r3]
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #67
	cmp	r3, #45
	bhi	.L212
	adr	r1, .L214
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L214:
	.word	.L213+1-.L214
	.word	.L212+1-.L214
	.word	.L212+1-.L214
	.word	.L212+1-.L214
	.word	.L212+1-.L214
	.word	.L212+1-.L214
	.word	.L212+1-.L214
	.word	.L212+1-.L214
	.word	.L212+1-.L214
	.word	.L212+1-.L214
	.word	.L215+1-.L214
	.word	.L212+1-.L214
	.word	.L212+1-.L214
	.word	.L216+1-.L214
	.word	.L212+1-.L214
	.word	.L212+1-.L214
	.word	.L212+1-.L214
	.word	.L212+1-.L214
	.word	.L212+1-.L214
	.word	.L212+1-.L214
	.word	.L212+1-.L214
	.word	.L212+1-.L214
	.word	.L212+1-.L214
	.word	.L212+1-.L214
	.word	.L212+1-.L214
	.word	.L212+1-.L214
	.word	.L212+1-.L214
	.word	.L212+1-.L214
	.word	.L212+1-.L214
	.word	.L212+1-.L214
	.word	.L212+1-.L214
	.word	.L212+1-.L214
	.word	.L213+1-.L214
	.word	.L212+1-.L214
	.word	.L212+1-.L214
	.word	.L212+1-.L214
	.word	.L212+1-.L214
	.word	.L212+1-.L214
	.word	.L212+1-.L214
	.word	.L212+1-.L214
	.word	.L212+1-.L214
	.word	.L212+1-.L214
	.word	.L215+1-.L214
	.word	.L212+1-.L214
	.word	.L212+1-.L214
	.word	.L216+1-.L214
.L213:
	add	r3, r7, #12
	ldr	r3, [r3]
	movs	r2, #32
	str	r2, [r3, #28]
	b	.L212
.L215:
	add	r3, r7, #12
	ldr	r3, [r3]
	movs	r2, #16
	str	r2, [r3, #28]
	b	.L212
.L216:
	add	r3, r7, #12
	ldr	r3, [r3]
	movs	r2, #8
	str	r2, [r3, #28]
	nop
.L212:
	add	r3, r7, #20
	mov	r0, r3
	bl	_bdf_list_done(PLT)
.L209:
	ldr	r3, [r7, #300]
	mov	r0, r3
	add	r7, r7, #304
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L219:
	.align	2
.L218:
	.word	.LC83-(.LPIC29+4)
	.size	_bdf_set_default_spacing, .-_bdf_set_default_spacing
	.section	.text._bdf_is_atom,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_bdf_is_atom, %function
_bdf_is_atom:
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #24]
	str	r2, [r3]
	b	.L221
.L223:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L221:
	ldr	r3, [r7, #20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L222
	ldr	r3, [r7, #20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L222
	ldr	r3, [r7, #20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #9
	bne	.L223
.L222:
	mov	r3, #-1
	str	r3, [r7, #28]
	ldr	r3, [r7, #20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L224
	ldr	r3, [r7, #20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #28]
	ldr	r3, [r7, #20]
	movs	r2, #0
	strb	r2, [r3]
.L224:
	ldr	r0, [r7, #24]
	ldr	r1, [r7, #40]
	bl	bdf_get_property(PLT)
	str	r0, [r7, #16]
	ldr	r3, [r7, #28]
	cmp	r3, #-1
	beq	.L225
	ldr	r3, [r7, #28]
	uxtb	r2, r3
	ldr	r3, [r7, #20]
	strb	r2, [r3]
.L225:
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L226
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	beq	.L226
	movs	r3, #0
	b	.L227
.L226:
	ldr	r3, [r7, #20]
	str	r3, [r7, #24]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #24]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L228
	ldr	r3, [r7, #24]
	adds	r2, r3, #1
	str	r2, [r7, #24]
	movs	r2, #0
	strb	r2, [r3]
	b	.L229
.L228:
	b	.L229
.L231:
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
.L229:
	ldr	r3, [r7, #24]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L230
	ldr	r3, [r7, #24]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L231
	ldr	r3, [r7, #24]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #9
	beq	.L231
.L230:
	ldr	r3, [r7, #24]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #34
	bne	.L232
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
.L232:
	ldr	r3, [r7]
	ldr	r2, [r7, #24]
	str	r2, [r3]
	b	.L233
.L235:
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	movs	r2, #0
	strb	r2, [r3]
.L233:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bls	.L234
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L235
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #9
	beq	.L235
.L234:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bls	.L236
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #34
	bne	.L236
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	movs	r2, #0
	strb	r2, [r3]
.L236:
	movs	r3, #1
.L227:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	_bdf_is_atom, .-_bdf_is_atom
	.section	.text._bdf_add_property,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_bdf_add_property, %function
_bdf_add_property:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	add	r3, r3, #278528
	adds	r3, r3, #136
	ldr	r3, [r3]
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #128]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	hash_lookup(PLT)
	str	r0, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L238
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #80]
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #4
	add	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #4]
	cmp	r3, #2
	beq	.L240
	cmp	r3, #3
	beq	.L241
	cmp	r3, #1
	beq	.L242
	b	.L244
.L242:
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #12]
	ldr	r0, [r7, #28]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #24]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L243
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L243
	add	r3, r7, #16
	ldr	r0, [r7, #28]
	ldr	r1, [r7, #4]
	mov	r2, r3
	bl	ft_mem_strdup(PLT)
	mov	r2, r0
	ldr	r3, [r7, #24]
	str	r2, [r3, #12]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L243
	b	.L244
.L243:
	b	.L239
.L240:
	ldr	r0, [r7, #4]
	movs	r1, #0
	movs	r2, #10
	bl	_bdf_atol(PLT)
	mov	r2, r0
	ldr	r3, [r7, #24]
	str	r2, [r3, #12]
	b	.L239
.L241:
	ldr	r0, [r7, #4]
	movs	r1, #0
	movs	r2, #10
	bl	_bdf_atoul(PLT)
	mov	r2, r0
	ldr	r3, [r7, #24]
	str	r2, [r3, #12]
	nop
.L239:
	b	.L244
.L238:
	ldr	r3, [r7, #12]
	add	r3, r3, #278528
	adds	r3, r3, #148
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	hash_lookup(PLT)
	str	r0, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L245
	ldr	r0, [r7, #8]
	movs	r1, #1
	ldr	r2, [r7, #12]
	bl	bdf_create_property(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L246
	b	.L244
.L246:
	ldr	r3, [r7, #12]
	add	r3, r3, #278528
	adds	r3, r3, #148
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	hash_lookup(PLT)
	str	r0, [r7, #36]
.L245:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #76]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #72]
	cmp	r2, r3
	bne	.L247
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #72]
	cmp	r3, #0
	bne	.L248
	movs	r3, #0
	str	r3, [sp]
	add	r3, r7, #16
	str	r3, [sp, #4]
	ldr	r0, [r7, #28]
	movs	r1, #16
	movs	r2, #0
	movs	r3, #1
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #80]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L249
	b	.L244
.L248:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #72]
	mov	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #72]
	adds	r3, r3, #1
	ldr	r1, [r7, #12]
	ldr	r1, [r1, #80]
	str	r1, [sp]
	add	r1, r7, #16
	str	r1, [sp, #4]
	ldr	r0, [r7, #28]
	movs	r1, #16
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #80]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L249
	b	.L244
.L249:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #80]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #72]
	lsls	r3, r3, #4
	add	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r0, [r7, #24]
	movs	r1, #0
	movs	r2, #16
	bl	memset(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #72]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #72]
.L247:
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #4]
	str	r3, [r7, #20]
	movs	r3, #83
	ldr	r2, [r7, #20]
	cmp	r2, r3
	bcc	.L250
	ldr	r3, [r7, #12]
	add	r3, r3, #278528
	adds	r3, r3, #140
	ldr	r2, [r3]
	movs	r3, #83
	ldr	r1, [r7, #20]
	subs	r3, r1, r3
	lsls	r3, r3, #4
	add	r3, r3, r2
	str	r3, [r7, #32]
	b	.L251
.L250:
	ldr	r3, [r7, #20]
	lsls	r2, r3, #4
	ldr	r3, .L283
.LPIC30:
	add	r3, pc
	add	r3, r3, r2
	str	r3, [r7, #32]
.L251:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #80]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #76]
	lsls	r3, r3, #4
	add	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #32]
	ldr	r2, [r3]
	ldr	r3, [r7, #24]
	str	r2, [r3]
	ldr	r3, [r7, #32]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #24]
	str	r2, [r3, #4]
	ldr	r3, [r7, #32]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #24]
	str	r2, [r3, #8]
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #4]
	cmp	r3, #2
	beq	.L253
	cmp	r3, #3
	beq	.L254
	cmp	r3, #1
	bne	.L252
	ldr	r3, [r7, #24]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L256
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L256
	add	r3, r7, #16
	ldr	r0, [r7, #28]
	ldr	r1, [r7, #4]
	mov	r2, r3
	bl	ft_mem_strdup(PLT)
	mov	r2, r0
	ldr	r3, [r7, #24]
	str	r2, [r3, #12]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L256
	b	.L244
.L256:
	b	.L252
.L253:
	ldr	r0, [r7, #4]
	movs	r1, #0
	movs	r2, #10
	bl	_bdf_atol(PLT)
	mov	r2, r0
	ldr	r3, [r7, #24]
	str	r2, [r3, #12]
	b	.L252
.L254:
	ldr	r0, [r7, #4]
	movs	r1, #0
	movs	r2, #10
	bl	_bdf_atoul(PLT)
	mov	r2, r0
	ldr	r3, [r7, #24]
	str	r2, [r3, #12]
	nop
.L252:
	ldr	r0, [r7, #8]
	ldr	r3, .L283+4
.LPIC31:
	add	r3, pc
	mov	r1, r3
	movs	r2, #7
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L257
	ldr	r3, [r7, #8]
	adds	r3, r3, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L258
	ldr	r3, [r7, #8]
	adds	r3, r3, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L258
	ldr	r3, [r7, #8]
	adds	r3, r3, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L258
	ldr	r3, [r7, #8]
	adds	r3, r3, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #13
	beq	.L258
	ldr	r3, [r7, #8]
	adds	r3, r3, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #9
	beq	.L258
.L257:
	movs	r3, #1
	b	.L259
.L258:
	movs	r3, #0
.L259:
	cmp	r3, #0
	beq	.L260
	ldr	r3, [r7, #24]
	ldr	r1, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #76]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #128]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [r7, #28]
	bl	hash_insert(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L260
	b	.L244
.L260:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #76]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #76]
	ldr	r0, [r7, #8]
	ldr	r3, .L283+8
.LPIC32:
	add	r3, pc
	mov	r1, r3
	movs	r2, #12
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L261
	ldr	r3, [r7, #8]
	adds	r3, r3, #12
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L262
	ldr	r3, [r7, #8]
	adds	r3, r3, #12
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L262
	ldr	r3, [r7, #8]
	adds	r3, r3, #12
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L262
	ldr	r3, [r7, #8]
	adds	r3, r3, #12
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #13
	beq	.L262
	ldr	r3, [r7, #8]
	adds	r3, r3, #12
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #9
	beq	.L262
.L261:
	movs	r3, #1
	b	.L263
.L262:
	movs	r3, #0
.L263:
	cmp	r3, #0
	bne	.L264
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	str	r2, [r3, #36]
	b	.L244
.L264:
	ldr	r0, [r7, #8]
	ldr	r3, .L283+12
.LPIC33:
	add	r3, pc
	mov	r1, r3
	movs	r2, #11
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L265
	ldr	r3, [r7, #8]
	adds	r3, r3, #11
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L266
	ldr	r3, [r7, #8]
	adds	r3, r3, #11
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L266
	ldr	r3, [r7, #8]
	adds	r3, r3, #11
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L266
	ldr	r3, [r7, #8]
	adds	r3, r3, #11
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #13
	beq	.L266
	ldr	r3, [r7, #8]
	adds	r3, r3, #11
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #9
	beq	.L266
.L265:
	movs	r3, #1
	b	.L267
.L266:
	movs	r3, #0
.L267:
	cmp	r3, #0
	bne	.L268
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	str	r2, [r3, #40]
	b	.L244
.L268:
	ldr	r0, [r7, #8]
	ldr	r3, .L283+16
.LPIC34:
	add	r3, pc
	mov	r1, r3
	movs	r2, #12
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L269
	ldr	r3, [r7, #8]
	adds	r3, r3, #12
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L270
	ldr	r3, [r7, #8]
	adds	r3, r3, #12
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L270
	ldr	r3, [r7, #8]
	adds	r3, r3, #12
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L270
	ldr	r3, [r7, #8]
	adds	r3, r3, #12
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #13
	beq	.L270
	ldr	r3, [r7, #8]
	adds	r3, r3, #12
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #9
	beq	.L270
.L269:
	movs	r3, #1
	b	.L271
.L270:
	movs	r3, #0
.L271:
	cmp	r3, #0
	bne	.L272
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	str	r2, [r3, #44]
	b	.L244
.L272:
	ldr	r0, [r7, #8]
	ldr	r3, .L283+20
.LPIC35:
	add	r3, pc
	mov	r1, r3
	movs	r2, #7
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L273
	ldr	r3, [r7, #8]
	adds	r3, r3, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L274
	ldr	r3, [r7, #8]
	adds	r3, r3, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L274
	ldr	r3, [r7, #8]
	adds	r3, r3, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L274
	ldr	r3, [r7, #8]
	adds	r3, r3, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #13
	beq	.L274
	ldr	r3, [r7, #8]
	adds	r3, r3, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #9
	beq	.L274
.L273:
	movs	r3, #1
	b	.L275
.L274:
	movs	r3, #0
.L275:
	cmp	r3, #0
	bne	.L244
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	bne	.L276
	movs	r3, #3
	str	r3, [r7, #16]
	b	.L244
.L276:
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #112
	beq	.L277
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #80
	bne	.L278
.L277:
	ldr	r3, [r7, #12]
	movs	r2, #8
	str	r2, [r3, #28]
	b	.L244
.L278:
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #109
	beq	.L279
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #77
	bne	.L280
.L279:
	ldr	r3, [r7, #12]
	movs	r2, #16
	str	r2, [r3, #28]
	b	.L244
.L280:
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #99
	beq	.L281
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #67
	bne	.L244
.L281:
	ldr	r3, [r7, #12]
	movs	r2, #32
	str	r2, [r3, #28]
.L244:
	ldr	r3, [r7, #16]
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L284:
	.align	2
.L283:
	.word	_bdf_properties-(.LPIC30+4)
	.word	.LC8-(.LPIC31+4)
	.word	.LC10-(.LPIC32+4)
	.word	.LC19-(.LPIC33+4)
	.word	.LC20-(.LPIC34+4)
	.word	.LC67-(.LPIC35+4)
	.size	_bdf_add_property, .-_bdf_add_property
	.section	.rodata.nibble_mask,"a",%progbits
	.align	2
	.type	nibble_mask, %object
	.size	nibble_mask, 8
nibble_mask:
	.byte	-1
	.byte	-128
	.byte	-64
	.byte	-32
	.byte	-16
	.byte	-8
	.byte	-4
	.byte	-2
	.section	.rodata
	.align	2
.LC84:
	.ascii	"CHARS\000"
	.align	2
.LC85:
	.ascii	" +\000"
	.align	2
.LC86:
	.ascii	"ENDFONT\000"
	.align	2
.LC87:
	.ascii	"ENDCHAR\000"
	.align	2
.LC88:
	.ascii	"STARTCHAR\000"
	.align	2
.LC89:
	.ascii	"ENCODING\000"
	.align	2
.LC90:
	.ascii	"SWIDTH\000"
	.align	2
.LC91:
	.ascii	"DWIDTH\000"
	.align	2
.LC92:
	.ascii	"BBX\000"
	.align	2
.LC93:
	.ascii	"BITMAP\000"
	.section	.text._bdf_parse_glyphs,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_bdf_parse_glyphs, %function
_bdf_parse_glyphs:
	@ args = 4, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #80
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #80]
	str	r3, [r7, #52]
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #32]
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	add	r3, r3, #278528
	adds	r3, r3, #136
	ldr	r3, [r3]
	str	r3, [r7, #44]
	ldr	r0, [r7, #12]
	ldr	r3, .L387
.LPIC36:
	add	r3, pc
	mov	r1, r3
	movs	r2, #7
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L286
	ldr	r3, [r7, #12]
	adds	r3, r3, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L287
	ldr	r3, [r7, #12]
	adds	r3, r3, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L287
	ldr	r3, [r7, #12]
	adds	r3, r3, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L287
	ldr	r3, [r7, #12]
	adds	r3, r3, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #13
	beq	.L287
	ldr	r3, [r7, #12]
	adds	r3, r3, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #9
	beq	.L287
.L286:
	movs	r3, #1
	b	.L288
.L287:
	movs	r3, #0
.L288:
	cmp	r3, #0
	bne	.L289
	ldr	r3, [r7, #8]
	subs	r3, r3, #7
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	adds	r3, r3, #7
	str	r3, [r7, #68]
	ldr	r3, [r7, #68]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L290
	ldr	r3, [r7, #68]
	adds	r3, r3, #1
	str	r3, [r7, #68]
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	str	r3, [r7, #8]
.L290:
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #32]
	mov	r0, r3
	ldr	r1, [r7, #68]
	ldr	r2, [r7, #8]
	bl	_bdf_add_comment(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	b	.L291
.L289:
	ldr	r3, [r7, #52]
	ldr	r3, [r3]
	and	r3, r3, #32
	cmp	r3, #0
	bne	.L292
	ldr	r0, [r7, #12]
	ldr	r3, .L387+4
.LPIC37:
	add	r3, pc
	mov	r1, r3
	movs	r2, #5
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L293
	ldr	r3, [r7, #12]
	adds	r3, r3, #5
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L294
	ldr	r3, [r7, #12]
	adds	r3, r3, #5
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L294
	ldr	r3, [r7, #12]
	adds	r3, r3, #5
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L294
	ldr	r3, [r7, #12]
	adds	r3, r3, #5
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #13
	beq	.L294
	ldr	r3, [r7, #12]
	adds	r3, r3, #5
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #9
	beq	.L294
.L293:
	movs	r3, #1
	b	.L295
.L294:
	movs	r3, #0
.L295:
	cmp	r3, #0
	beq	.L296
	movs	r3, #180
	str	r3, [r7, #16]
	b	.L291
.L296:
	ldr	r3, [r7, #52]
	add	r3, r3, #139264
	adds	r3, r3, #40
	mov	r0, r3
	ldr	r3, .L387+8
.LPIC38:
	add	r3, pc
	mov	r1, r3
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	bl	_bdf_list_split(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L297
	b	.L291
.L297:
	ldr	r3, [r7, #52]
	add	r3, r3, #139264
	adds	r3, r3, #40
	ldr	r3, [r3]
	adds	r3, r3, #4
	ldr	r3, [r3]
	mov	r0, r3
	movs	r1, #0
	movs	r2, #10
	bl	_bdf_atoul(PLT)
	mov	r2, r0
	ldr	r3, [r7, #48]
	str	r2, [r3, #48]
	ldr	r3, [r7, #48]
	ldr	r2, [r3, #48]
	ldr	r3, [r7, #52]
	str	r2, [r3, #4]
	ldr	r3, [r7, #52]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #52]
	add	r3, r3, #139264
	adds	r3, r3, #60
	ldr	r1, [r3]
	movw	r3, #52429
	movt	r3, 52428
	umull	r0, r3, r3, r1
	lsrs	r3, r3, #4
	cmp	r2, r3
	bls	.L298
	ldr	r3, [r7, #52]
	add	r3, r3, #139264
	adds	r3, r3, #60
	ldr	r2, [r3]
	movw	r3, #52429
	movt	r3, 52428
	umull	r1, r3, r3, r2
	lsrs	r2, r3, #4
	ldr	r3, [r7, #48]
	str	r2, [r3, #48]
	ldr	r3, [r7, #48]
	ldr	r2, [r3, #48]
	ldr	r3, [r7, #52]
	str	r2, [r3, #4]
.L298:
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L299
	ldr	r3, [r7, #48]
	movs	r2, #64
	str	r2, [r3, #48]
.L299:
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #4]
	cmp	r3, #1114112
	bcc	.L300
	movs	r3, #6
	str	r3, [r7, #16]
	b	.L291
.L300:
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #48]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #16
	str	r2, [sp, #4]
	ldr	r0, [r7, #44]
	movs	r1, #36
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #48]
	str	r2, [r3, #56]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L301
	b	.L291
.L301:
	ldr	r3, [r7, #52]
	ldr	r3, [r3]
	orr	r2, r3, #32
	ldr	r3, [r7, #52]
	str	r2, [r3]
	b	.L291
.L292:
	ldr	r0, [r7, #12]
	ldr	r3, .L387+12
.LPIC39:
	add	r3, pc
	mov	r1, r3
	movs	r2, #7
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L302
	ldr	r3, [r7, #12]
	adds	r3, r3, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L303
	ldr	r3, [r7, #12]
	adds	r3, r3, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L303
	ldr	r3, [r7, #12]
	adds	r3, r3, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L303
	ldr	r3, [r7, #12]
	adds	r3, r3, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #13
	beq	.L303
	ldr	r3, [r7, #12]
	adds	r3, r3, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #9
	beq	.L303
.L302:
	movs	r3, #1
	b	.L304
.L303:
	movs	r3, #0
.L304:
	cmp	r3, #0
	bne	.L305
	ldr	r3, [r7, #52]
	ldr	r3, [r3]
	and	r3, r3, #4032
	cmp	r3, #0
	beq	.L306
	movs	r3, #186
	str	r3, [r7, #16]
	b	.L291
.L306:
	ldr	r3, [r7, #48]
	ldr	r2, [r3, #56]
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #52]
	mov	r0, r2
	mov	r1, r3
	movs	r2, #36
	ldr	r3, .L387+16
.LPIC40:
	add	r3, pc
	bl	qsort(PLT)
	ldr	r3, [r7, #52]
	ldr	r3, [r3]
	bic	r2, r3, #1
	ldr	r3, [r7, #52]
	str	r2, [r3]
	b	.L291
.L305:
	ldr	r0, [r7, #12]
	ldr	r3, .L387+20
.LPIC41:
	add	r3, pc
	mov	r1, r3
	movs	r2, #7
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L307
	ldr	r3, [r7, #12]
	adds	r3, r3, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L308
	ldr	r3, [r7, #12]
	adds	r3, r3, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L308
	ldr	r3, [r7, #12]
	adds	r3, r3, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L308
	ldr	r3, [r7, #12]
	adds	r3, r3, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #13
	beq	.L308
	ldr	r3, [r7, #12]
	adds	r3, r3, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #9
	beq	.L308
.L307:
	movs	r3, #1
	b	.L309
.L308:
	movs	r3, #0
.L309:
	cmp	r3, #0
	bne	.L310
	ldr	r3, [r7, #52]
	movs	r2, #0
	str	r2, [r3, #28]
	ldr	r3, [r7, #52]
	ldr	r3, [r3]
	bic	r2, r3, #4032
	ldr	r3, [r7, #52]
	str	r2, [r3]
	b	.L291
.L310:
	ldr	r3, [r7, #52]
	ldr	r3, [r3]
	and	r3, r3, #64
	cmp	r3, #0
	beq	.L311
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #28]
	cmp	r3, #-1
	bne	.L311
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #36]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L311
	b	.L291
.L311:
	ldr	r0, [r7, #12]
	ldr	r3, .L387+24
.LPIC42:
	add	r3, pc
	mov	r1, r3
	movs	r2, #9
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L312
	ldr	r3, [r7, #12]
	adds	r3, r3, #9
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L313
	ldr	r3, [r7, #12]
	adds	r3, r3, #9
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L313
	ldr	r3, [r7, #12]
	adds	r3, r3, #9
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L313
	ldr	r3, [r7, #12]
	adds	r3, r3, #9
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #13
	beq	.L313
	ldr	r3, [r7, #12]
	adds	r3, r3, #9
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #9
	beq	.L313
.L312:
	movs	r3, #1
	b	.L314
.L313:
	movs	r3, #0
.L314:
	cmp	r3, #0
	bne	.L315
	ldr	r3, [r7, #52]
	ldr	r3, [r3]
	and	r3, r3, #4032
	cmp	r3, #0
	beq	.L316
	movs	r3, #181
	str	r3, [r7, #16]
	b	.L291
.L316:
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #24]
	ldr	r0, [r7, #44]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #52]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #52]
	add	r3, r3, #139264
	adds	r3, r3, #40
	mov	r0, r3
	ldr	r3, .L387+28
.LPIC43:
	add	r3, pc
	mov	r1, r3
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	bl	_bdf_list_split(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L317
	b	.L291
.L317:
	ldr	r3, [r7, #52]
	add	r3, r3, #139264
	adds	r3, r3, #40
	mov	r0, r3
	movs	r1, #1
	bl	_bdf_list_shift(PLT)
	ldr	r3, [r7, #52]
	add	r3, r3, #139264
	adds	r3, r3, #40
	add	r2, r7, #20
	mov	r0, r3
	movs	r1, #32
	bl	_bdf_list_join(PLT)
	str	r0, [r7, #68]
	ldr	r3, [r7, #68]
	cmp	r3, #0
	bne	.L318
	movs	r3, #3
	str	r3, [r7, #16]
	b	.L291
.L318:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #16
	str	r2, [sp, #4]
	ldr	r0, [r7, #44]
	movs	r1, #1
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #52]
	str	r2, [r3, #24]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L319
	b	.L291
.L319:
	ldr	r3, [r7, #52]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	mov	r0, r2
	ldr	r1, [r7, #68]
	mov	r2, r3
	bl	memcpy(PLT)
	ldr	r3, [r7, #52]
	ldr	r3, [r3]
	orr	r2, r3, #64
	ldr	r3, [r7, #52]
	str	r2, [r3]
	b	.L291
.L315:
	ldr	r0, [r7, #12]
	ldr	r3, .L387+32
.LPIC44:
	add	r3, pc
	mov	r1, r3
	movs	r2, #8
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L320
	ldr	r3, [r7, #12]
	adds	r3, r3, #8
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L321
	ldr	r3, [r7, #12]
	adds	r3, r3, #8
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L321
	ldr	r3, [r7, #12]
	adds	r3, r3, #8
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L321
	ldr	r3, [r7, #12]
	adds	r3, r3, #8
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #13
	beq	.L321
	ldr	r3, [r7, #12]
	adds	r3, r3, #8
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #9
	beq	.L321
.L320:
	movs	r3, #1
	b	.L322
.L321:
	movs	r3, #0
.L322:
	cmp	r3, #0
	bne	.L323
	ldr	r3, [r7, #52]
	ldr	r3, [r3]
	and	r3, r3, #64
	cmp	r3, #0
	bne	.L324
	movs	r3, #181
	str	r3, [r7, #16]
	b	.L291
.L324:
	ldr	r3, [r7, #52]
	add	r3, r3, #139264
	adds	r3, r3, #40
	mov	r0, r3
	ldr	r3, .L387+36
.LPIC45:
	add	r3, pc
	mov	r1, r3
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	bl	_bdf_list_split(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L325
	b	.L291
.L325:
	ldr	r3, [r7, #52]
	add	r3, r3, #139264
	adds	r3, r3, #40
	ldr	r3, [r3]
	adds	r3, r3, #4
	ldr	r3, [r3]
	mov	r0, r3
	movs	r1, #0
	movs	r2, #10
	bl	_bdf_atol(PLT)
	mov	r2, r0
	ldr	r3, [r7, #52]
	str	r2, [r3, #28]
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #28]
	cmp	r3, #-1
	bge	.L326
	ldr	r3, [r7, #52]
	mov	r2, #-1
	str	r2, [r3, #28]
.L326:
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #28]
	cmp	r3, #-1
	bne	.L327
	ldr	r3, [r7, #52]
	add	r3, r3, #139264
	adds	r3, r3, #48
	ldr	r3, [r3]
	cmp	r3, #2
	bls	.L327
	ldr	r3, [r7, #52]
	add	r3, r3, #139264
	adds	r3, r3, #40
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	mov	r0, r3
	movs	r1, #0
	movs	r2, #10
	bl	_bdf_atol(PLT)
	mov	r2, r0
	ldr	r3, [r7, #52]
	str	r2, [r3, #28]
.L327:
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #28]
	cmp	r3, #-1
	bge	.L328
	ldr	r3, [r7, #52]
	mov	r2, #-1
	str	r2, [r3, #28]
.L328:
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #28]
	cmp	r3, #0
	ble	.L329
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #28]
	cmp	r3, #1114112
	bcc	.L329
	movs	r3, #3
	str	r3, [r7, #16]
	b	.L291
.L329:
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #28]
	cmp	r3, #0
	blt	.L330
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #28]
	asrs	r2, r3, #5
	ldr	r3, [r7, #52]
	adds	r2, r2, #10
	ldr	r2, [r3, r2, lsl #2]
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #28]
	and	r3, r3, #31
	lsr	r3, r2, r3
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L331
	ldr	r3, [r7, #52]
	mov	r2, #-1
	str	r2, [r3, #28]
	ldr	r3, [r7, #48]
	add	r3, r3, #278528
	adds	r3, r3, #132
	movs	r2, #1
	strh	r2, [r3]	@ movhi
	b	.L330
.L331:
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #28]
	asrs	r2, r3, #5
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #28]
	asrs	r1, r3, #5
	ldr	r3, [r7, #52]
	adds	r1, r1, #10
	ldr	r1, [r3, r1, lsl #2]
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #28]
	and	r3, r3, #31
	movs	r0, #1
	lsl	r3, r0, r3
	orrs	r1, r1, r3
	ldr	r3, [r7, #52]
	adds	r2, r2, #10
	str	r1, [r3, r2, lsl #2]
.L330:
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #28]
	cmp	r3, #0
	blt	.L332
	ldr	r3, [r7, #48]
	ldr	r2, [r3, #52]
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #48]
	cmp	r2, r3
	bne	.L333
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #48]
	mov	r2, r3
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #48]
	adds	r3, r3, #64
	ldr	r1, [r7, #48]
	ldr	r1, [r1, #56]
	str	r1, [sp]
	add	r1, r7, #16
	str	r1, [sp, #4]
	ldr	r0, [r7, #44]
	movs	r1, #36
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #48]
	str	r2, [r3, #56]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L334
	b	.L291
.L334:
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #48]
	add	r2, r3, #64
	ldr	r3, [r7, #48]
	str	r2, [r3, #48]
.L333:
	ldr	r3, [r7, #48]
	ldr	r1, [r3, #56]
	ldr	r3, [r7, #48]
	ldr	r2, [r3, #52]
	adds	r0, r2, #1
	ldr	r3, [r7, #48]
	str	r0, [r3, #52]
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	str	r3, [r7, #56]
	ldr	r3, [r7, #52]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #56]
	str	r2, [r3]
	ldr	r3, [r7, #52]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #56]
	str	r2, [r3, #4]
	ldr	r3, [r7, #52]
	movs	r2, #0
	str	r2, [r3, #24]
	b	.L335
.L332:
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #36]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L336
	ldr	r3, [r7, #48]
	ldr	r2, [r3, #64]
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #60]
	cmp	r2, r3
	bne	.L337
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #60]
	mov	r2, r3
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #60]
	adds	r3, r3, #4
	ldr	r1, [r7, #48]
	ldr	r1, [r1, #68]
	str	r1, [sp]
	add	r1, r7, #16
	str	r1, [sp, #4]
	ldr	r0, [r7, #44]
	movs	r1, #36
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #48]
	str	r2, [r3, #68]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L338
	b	.L291
.L338:
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #60]
	adds	r2, r3, #4
	ldr	r3, [r7, #48]
	str	r2, [r3, #60]
.L337:
	ldr	r3, [r7, #48]
	ldr	r1, [r3, #68]
	ldr	r3, [r7, #48]
	ldr	r2, [r3, #64]
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	str	r3, [r7, #56]
	ldr	r3, [r7, #52]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #56]
	str	r2, [r3]
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #64]
	adds	r1, r3, #1
	ldr	r2, [r7, #48]
	str	r1, [r2, #64]
	mov	r2, r3
	ldr	r3, [r7, #56]
	str	r2, [r3, #4]
	ldr	r3, [r7, #52]
	movs	r2, #0
	str	r2, [r3, #24]
	b	.L339
.L336:
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #24]
	ldr	r0, [r7, #44]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #52]
	movs	r2, #0
	str	r2, [r3, #24]
.L339:
	ldr	r3, [r7, #52]
	movs	r2, #0
	str	r2, [r3, #24]
.L335:
	ldr	r3, [r7, #52]
	ldr	r3, [r3]
	bic	r2, r3, #-1073741824
	ldr	r3, [r7, #52]
	str	r2, [r3]
	ldr	r3, [r7, #52]
	ldr	r3, [r3]
	orr	r2, r3, #128
	ldr	r3, [r7, #52]
	str	r2, [r3]
	b	.L291
.L323:
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #28]
	cmp	r3, #-1
	bne	.L340
	ldr	r3, [r7, #48]
	ldr	r1, [r3, #68]
	ldr	r3, [r7, #48]
	ldr	r2, [r3, #64]
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	subs	r3, r3, #36
	add	r3, r3, r1
	str	r3, [r7, #56]
	b	.L341
.L340:
	ldr	r3, [r7, #48]
	ldr	r1, [r3, #56]
	ldr	r3, [r7, #48]
	ldr	r2, [r3, #52]
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	subs	r3, r3, #36
	add	r3, r3, r1
	str	r3, [r7, #56]
.L341:
	ldr	r3, [r7, #52]
	ldr	r3, [r3]
	and	r3, r3, #2048
	cmp	r3, #0
	beq	.L342
	ldr	r3, [r7, #52]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #56]
	ldrh	r3, [r3, #14]
	cmp	r2, r3
	bcc	.L343
	ldr	r3, [r7, #52]
	ldr	r3, [r3]
	cmp	r3, #0
	blt	.L344
	ldr	r3, [r7, #52]
	ldr	r3, [r3]
	orr	r2, r3, #-2147483648
	ldr	r3, [r7, #52]
	str	r2, [r3]
	ldr	r3, [r7, #48]
	add	r3, r3, #278528
	adds	r3, r3, #132
	movs	r2, #1
	strh	r2, [r3]	@ movhi
	b	.L291
.L344:
	b	.L291
.L343:
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #28]
	lsls	r3, r3, #1
	str	r3, [r7, #40]
	ldr	r3, [r7, #56]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #8]
	ldr	r1, [r7, #56]
	ldr	r1, [r1, #28]
	mul	r3, r1, r3
	add	r3, r3, r2
	str	r3, [r7, #64]
	movs	r3, #0
	str	r3, [r7, #60]
	b	.L345
.L349:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #60]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	uxtb	r3, r3
	lsrs	r3, r3, #3
	uxtb	r3, r3
	ldr	r2, .L387+40
.LPIC46:
	add	r2, pc
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #36]
	and	r3, r3, #7
	asr	r3, r2, r3
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L346
	b	.L347
.L346:
	ldr	r3, [r7, #64]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #4
	uxtb	r2, r3
	ldr	r3, .L387+44
.LPIC47:
	add	r3, pc
	mov	r1, r3
	ldr	r3, [r7, #36]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r2, r3
	ldr	r3, [r7, #64]
	strb	r2, [r3]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bcs	.L348
	ldr	r3, [r7, #60]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L348
	ldr	r3, [r7, #64]
	adds	r3, r3, #1
	str	r3, [r7, #64]
	ldr	r3, [r7, #64]
	movs	r2, #0
	strb	r2, [r3]
.L348:
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
.L345:
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bcc	.L349
.L347:
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bcs	.L350
	ldr	r3, [r7, #52]
	ldr	r3, [r3]
	and	r3, r3, #1073741824
	cmp	r3, #0
	bne	.L350
	ldr	r3, [r7, #52]
	ldr	r3, [r3]
	orr	r2, r3, #1073741824
	ldr	r3, [r7, #52]
	str	r2, [r3]
	ldr	r3, [r7, #48]
	add	r3, r3, #278528
	adds	r3, r3, #132
	movs	r2, #1
	strh	r2, [r3]	@ movhi
.L350:
	ldr	r3, [r7, #56]
	ldrh	r3, [r3, #12]
	mov	r2, r3
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #32]
	add	r3, r3, #278528
	adds	r3, r3, #134
	ldrh	r3, [r3]
	mul	r3, r3, r2
	and	r3, r3, #7
	str	r3, [r7, #32]
	ldr	r3, [r7, #56]
	ldrh	r3, [r3, #12]
	cmp	r3, #0
	beq	.L351
	ldr	r3, [r7, #64]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, .L387+48
.LPIC48:
	add	r3, pc
	mov	r1, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	ands	r3, r3, r2
	uxtb	r2, r3
	ldr	r3, [r7, #64]
	strb	r2, [r3]
.L351:
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bne	.L352
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #40]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsrs	r3, r3, #3
	uxtb	r3, r3
	ldr	r2, .L387+52
.LPIC49:
	add	r2, pc
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r1, [r7, #12]
	ldr	r3, [r7, #40]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #7
	asr	r3, r2, r3
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L352
	ldr	r3, [r7, #52]
	ldr	r3, [r3]
	and	r3, r3, #1073741824
	cmp	r3, #0
	bne	.L352
	ldr	r3, [r7, #52]
	ldr	r3, [r3]
	orr	r2, r3, #1073741824
	ldr	r3, [r7, #52]
	str	r2, [r3]
	ldr	r3, [r7, #48]
	add	r3, r3, #278528
	adds	r3, r3, #132
	movs	r2, #1
	strh	r2, [r3]	@ movhi
.L352:
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #52]
	str	r2, [r3, #8]
	b	.L291
.L342:
	ldr	r0, [r7, #12]
	ldr	r3, .L387+56
.LPIC50:
	add	r3, pc
	mov	r1, r3
	movs	r2, #6
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L353
	ldr	r3, [r7, #12]
	adds	r3, r3, #6
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L354
	ldr	r3, [r7, #12]
	adds	r3, r3, #6
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L354
	ldr	r3, [r7, #12]
	adds	r3, r3, #6
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L354
	ldr	r3, [r7, #12]
	adds	r3, r3, #6
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #13
	beq	.L354
	ldr	r3, [r7, #12]
	adds	r3, r3, #6
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #9
	beq	.L354
.L353:
	movs	r3, #1
	b	.L355
.L354:
	movs	r3, #0
.L355:
	cmp	r3, #0
	bne	.L356
	ldr	r3, [r7, #52]
	ldr	r3, [r3]
	and	r3, r3, #128
	cmp	r3, #0
	bne	.L357
	b	.L358
.L357:
	ldr	r3, [r7, #52]
	add	r3, r3, #139264
	adds	r3, r3, #40
	mov	r0, r3
	ldr	r3, .L387+60
.LPIC51:
	add	r3, pc
	mov	r1, r3
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	bl	_bdf_list_split(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L359
	b	.L291
.L359:
	ldr	r3, [r7, #52]
	add	r3, r3, #139264
	adds	r3, r3, #40
	ldr	r3, [r3]
	adds	r3, r3, #4
	ldr	r3, [r3]
	mov	r0, r3
	movs	r1, #0
	movs	r2, #10
	bl	_bdf_atoul(PLT)
	mov	r3, r0
	uxth	r2, r3
	ldr	r3, [r7, #56]
	strh	r2, [r3, #8]	@ movhi
	ldr	r3, [r7, #52]
	ldr	r3, [r3]
	orr	r2, r3, #256
	ldr	r3, [r7, #52]
	str	r2, [r3]
	b	.L291
.L356:
	ldr	r0, [r7, #12]
	ldr	r3, .L387+64
.LPIC52:
	add	r3, pc
	mov	r1, r3
	movs	r2, #6
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L360
	ldr	r3, [r7, #12]
	adds	r3, r3, #6
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L361
	ldr	r3, [r7, #12]
	adds	r3, r3, #6
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L361
	ldr	r3, [r7, #12]
	adds	r3, r3, #6
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L361
	ldr	r3, [r7, #12]
	adds	r3, r3, #6
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #13
	beq	.L361
	ldr	r3, [r7, #12]
	adds	r3, r3, #6
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #9
	beq	.L361
.L360:
	movs	r3, #1
	b	.L362
.L361:
	movs	r3, #0
.L362:
	cmp	r3, #0
	bne	.L363
	ldr	r3, [r7, #52]
	ldr	r3, [r3]
	and	r3, r3, #128
	cmp	r3, #0
	bne	.L364
	b	.L358
.L364:
	ldr	r3, [r7, #52]
	add	r3, r3, #139264
	adds	r3, r3, #40
	mov	r0, r3
	ldr	r3, .L387+68
.LPIC53:
	add	r3, pc
	mov	r1, r3
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	bl	_bdf_list_split(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L365
	b	.L291
.L365:
	ldr	r3, [r7, #52]
	add	r3, r3, #139264
	adds	r3, r3, #40
	ldr	r3, [r3]
	adds	r3, r3, #4
	ldr	r3, [r3]
	mov	r0, r3
	movs	r1, #0
	movs	r2, #10
	bl	_bdf_atoul(PLT)
	mov	r3, r0
	uxth	r2, r3
	ldr	r3, [r7, #56]
	strh	r2, [r3, #10]	@ movhi
	ldr	r3, [r7, #52]
	ldr	r3, [r3]
	and	r3, r3, #256
	cmp	r3, #0
	bne	.L366
	ldr	r3, [r7, #56]
	ldrh	r3, [r3, #10]
	mov	r2, r3
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #16]
	ldr	r1, [r7, #48]
	ldr	r1, [r1, #20]
	mul	r3, r1, r3
	mov	r0, r2
	mov	r1, #6464
	movt	r1, 1
	mov	r2, r3
	bl	FT_MulDiv(PLT)
	mov	r3, r0
	uxth	r2, r3
	ldr	r3, [r7, #56]
	strh	r2, [r3, #8]	@ movhi
.L366:
	ldr	r3, [r7, #52]
	ldr	r3, [r3]
	orr	r2, r3, #512
	ldr	r3, [r7, #52]
	str	r2, [r3]
	b	.L291
.L363:
	ldr	r0, [r7, #12]
	ldr	r3, .L387+72
.LPIC54:
	add	r3, pc
	mov	r1, r3
	movs	r2, #3
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L367
	ldr	r3, [r7, #12]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L368
	ldr	r3, [r7, #12]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L368
	ldr	r3, [r7, #12]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L368
	ldr	r3, [r7, #12]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #13
	beq	.L368
	ldr	r3, [r7, #12]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #9
	beq	.L368
.L367:
	movs	r3, #1
	b	.L369
.L368:
	movs	r3, #0
.L369:
	cmp	r3, #0
	bne	.L370
	ldr	r3, [r7, #52]
	ldr	r3, [r3]
	and	r3, r3, #128
	cmp	r3, #0
	bne	.L371
	b	.L358
.L388:
	.align	2
.L387:
	.word	.LC8-(.LPIC36+4)
	.word	.LC84-(.LPIC37+4)
	.word	.LC85-(.LPIC38+4)
	.word	.LC86-(.LPIC39+4)
	.word	by_encoding-(.LPIC40+4)
	.word	.LC87-(.LPIC41+4)
	.word	.LC88-(.LPIC42+4)
	.word	.LC85-(.LPIC43+4)
	.word	.LC89-(.LPIC44+4)
	.word	.LC85-(.LPIC45+4)
	.word	hdigits-(.LPIC46+4)
	.word	a2i-(.LPIC47+4)
	.word	nibble_mask-(.LPIC48+4)
	.word	hdigits-(.LPIC49+4)
	.word	.LC90-(.LPIC50+4)
	.word	.LC85-(.LPIC51+4)
	.word	.LC91-(.LPIC52+4)
	.word	.LC85-(.LPIC53+4)
	.word	.LC92-(.LPIC54+4)
.L371:
	ldr	r3, [r7, #52]
	add	r3, r3, #139264
	adds	r3, r3, #40
	mov	r0, r3
	ldr	r3, .L389
.LPIC55:
	add	r3, pc
	mov	r1, r3
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	bl	_bdf_list_split(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L372
	b	.L291
.L372:
	ldr	r3, [r7, #52]
	add	r3, r3, #139264
	adds	r3, r3, #40
	ldr	r3, [r3]
	adds	r3, r3, #4
	ldr	r3, [r3]
	mov	r0, r3
	movs	r1, #0
	movs	r2, #10
	bl	_bdf_atous(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #56]
	strh	r2, [r3, #12]	@ movhi
	ldr	r3, [r7, #52]
	add	r3, r3, #139264
	adds	r3, r3, #40
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	mov	r0, r3
	movs	r1, #0
	movs	r2, #10
	bl	_bdf_atous(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #56]
	strh	r2, [r3, #14]	@ movhi
	ldr	r3, [r7, #52]
	add	r3, r3, #139264
	adds	r3, r3, #40
	ldr	r3, [r3]
	adds	r3, r3, #12
	ldr	r3, [r3]
	mov	r0, r3
	movs	r1, #0
	movs	r2, #10
	bl	_bdf_atos(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #56]
	strh	r2, [r3, #16]	@ movhi
	ldr	r3, [r7, #52]
	add	r3, r3, #139264
	adds	r3, r3, #40
	ldr	r3, [r3]
	adds	r3, r3, #16
	ldr	r3, [r3]
	mov	r0, r3
	movs	r1, #0
	movs	r2, #10
	bl	_bdf_atos(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #56]
	strh	r2, [r3, #18]	@ movhi
	ldr	r3, [r7, #56]
	ldrh	r2, [r3, #14]
	ldr	r3, [r7, #56]
	ldrh	r3, [r3, #18]
	uxth	r3, r3
	add	r3, r3, r2
	uxth	r3, r3
	uxth	r2, r3
	ldr	r3, [r7, #56]
	strh	r2, [r3, #20]	@ movhi
	ldr	r3, [r7, #56]
	ldrh	r3, [r3, #18]
	uxth	r3, r3
	negs	r3, r3
	uxth	r3, r3
	uxth	r2, r3
	ldr	r3, [r7, #56]
	strh	r2, [r3, #22]	@ movhi
	ldr	r3, [r7, #52]
	ldrh	r2, [r3, #18]
	ldr	r3, [r7, #56]
	ldrh	r3, [r3, #20]
	sxth	r2, r2
	sxth	r3, r3
	cmp	r3, r2
	it	lt
	movlt	r3, r2
	uxth	r2, r3
	ldr	r3, [r7, #52]
	strh	r2, [r3, #18]	@ movhi
	ldr	r3, [r7, #52]
	ldrh	r2, [r3, #20]
	ldr	r3, [r7, #56]
	ldrh	r3, [r3, #22]
	sxth	r2, r2
	sxth	r3, r3
	cmp	r3, r2
	it	lt
	movlt	r3, r2
	uxth	r2, r3
	ldr	r3, [r7, #52]
	strh	r2, [r3, #20]	@ movhi
	ldr	r3, [r7, #56]
	ldrh	r2, [r3, #12]
	ldr	r3, [r7, #56]
	ldrh	r3, [r3, #16]
	uxth	r3, r3
	add	r3, r3, r2
	uxth	r3, r3
	uxth	r2, r3
	ldr	r3, [r7, #52]
	strh	r2, [r3, #22]	@ movhi
	ldr	r3, [r7, #52]
	ldrh	r2, [r3, #16]
	ldr	r3, [r7, #52]
	ldrh	r3, [r3, #22]
	sxth	r2, r2
	sxth	r3, r3
	cmp	r3, r2
	it	lt
	movlt	r3, r2
	uxth	r2, r3
	ldr	r3, [r7, #52]
	strh	r2, [r3, #16]	@ movhi
	ldr	r3, [r7, #52]
	ldrh	r2, [r3, #12]
	ldr	r3, [r7, #56]
	ldrh	r3, [r3, #16]
	sxth	r2, r2
	sxth	r3, r3
	cmp	r3, r2
	it	ge
	movge	r3, r2
	uxth	r2, r3
	ldr	r3, [r7, #52]
	strh	r2, [r3, #12]	@ movhi
	ldr	r3, [r7, #52]
	ldrh	r2, [r3, #14]
	ldr	r3, [r7, #56]
	ldrh	r3, [r3, #16]
	sxth	r2, r2
	sxth	r3, r3
	cmp	r3, r2
	it	lt
	movlt	r3, r2
	uxth	r2, r3
	ldr	r3, [r7, #52]
	strh	r2, [r3, #14]	@ movhi
	ldr	r3, [r7, #52]
	ldr	r3, [r3]
	and	r3, r3, #512
	cmp	r3, #0
	bne	.L373
	ldr	r3, [r7, #56]
	ldrh	r2, [r3, #12]
	ldr	r3, [r7, #56]
	strh	r2, [r3, #10]	@ movhi
.L373:
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #36]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L374
	ldr	r3, [r7, #56]
	ldrh	r3, [r3, #10]
	mov	r2, r3
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #16]
	ldr	r1, [r7, #48]
	ldr	r1, [r1, #20]
	mul	r3, r1, r3
	mov	r0, r2
	mov	r1, #6464
	movt	r1, 1
	mov	r2, r3
	bl	FT_MulDiv(PLT)
	mov	r3, r0
	strh	r3, [r7, #30]	@ movhi
	ldr	r3, [r7, #56]
	ldrh	r3, [r3, #8]
	ldrh	r2, [r7, #30]
	cmp	r2, r3
	beq	.L374
	ldr	r3, [r7, #56]
	ldrh	r2, [r7, #30]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #28]
	cmp	r3, #-1
	bne	.L375
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #64]
	subs	r3, r3, #1
	lsrs	r0, r3, #5
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #64]
	subs	r3, r3, #1
	lsrs	r3, r3, #5
	ldr	r2, [r7, #48]
	add	r3, r3, #34816
	adds	r3, r3, #32
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #64]
	subs	r3, r3, #1
	and	r3, r3, #31
	movs	r1, #1
	lsl	r3, r1, r3
	orrs	r2, r2, r3
	ldr	r1, [r7, #48]
	add	r3, r0, #34816
	adds	r3, r3, #32
	lsls	r3, r3, #2
	add	r3, r3, r1
	str	r2, [r3, #4]
	b	.L376
.L375:
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #4]
	asrs	r0, r3, #5
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #4]
	asrs	r3, r3, #5
	ldr	r2, [r7, #48]
	adds	r3, r3, #32
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #4]
	and	r3, r3, #31
	movs	r1, #1
	lsl	r3, r1, r3
	orrs	r2, r2, r3
	ldr	r1, [r7, #48]
	add	r3, r0, #32
	lsls	r3, r3, #2
	add	r3, r3, r1
	str	r2, [r3, #4]
.L376:
	ldr	r3, [r7, #52]
	ldr	r3, [r3]
	orr	r2, r3, #4096
	ldr	r3, [r7, #52]
	str	r2, [r3]
	ldr	r3, [r7, #48]
	add	r3, r3, #278528
	adds	r3, r3, #132
	movs	r2, #1
	strh	r2, [r3]	@ movhi
.L374:
	ldr	r3, [r7, #52]
	ldr	r3, [r3]
	orr	r2, r3, #1024
	ldr	r3, [r7, #52]
	str	r2, [r3]
	b	.L291
.L370:
	ldr	r0, [r7, #12]
	ldr	r3, .L389+4
.LPIC56:
	add	r3, pc
	mov	r1, r3
	movs	r2, #6
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L377
	ldr	r3, [r7, #12]
	adds	r3, r3, #6
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L378
	ldr	r3, [r7, #12]
	adds	r3, r3, #6
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L378
	ldr	r3, [r7, #12]
	adds	r3, r3, #6
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L378
	ldr	r3, [r7, #12]
	adds	r3, r3, #6
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #13
	beq	.L378
	ldr	r3, [r7, #12]
	adds	r3, r3, #6
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #9
	beq	.L378
.L377:
	movs	r3, #1
	b	.L379
.L378:
	movs	r3, #0
.L379:
	cmp	r3, #0
	bne	.L380
	ldr	r3, [r7, #52]
	ldr	r3, [r3]
	and	r3, r3, #1024
	cmp	r3, #0
	bne	.L381
	movs	r3, #183
	str	r3, [r7, #16]
	b	.L291
.L381:
	ldr	r3, [r7, #56]
	ldrh	r3, [r3, #12]
	mov	r2, r3
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #32]
	add	r3, r3, #278528
	adds	r3, r3, #134
	ldrh	r3, [r3]
	mul	r3, r3, r2
	adds	r3, r3, #7
	asrs	r3, r3, #3
	mov	r2, r3
	ldr	r3, [r7, #56]
	str	r2, [r3, #28]
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #28]
	ldr	r2, [r7, #56]
	ldrh	r2, [r2, #14]
	mul	r3, r2, r3
	str	r3, [r7, #24]
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #28]
	cmp	r3, #65536
	bcs	.L382
	ldr	r3, [r7, #24]
	cmp	r3, #65536
	bcc	.L383
.L382:
	movs	r3, #184
	str	r3, [r7, #16]
	b	.L291
.L383:
	ldr	r3, [r7, #24]
	uxth	r2, r3
	ldr	r3, [r7, #56]
	strh	r2, [r3, #32]	@ movhi
	ldr	r3, [r7, #56]
	ldrh	r3, [r3, #32]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #16
	str	r2, [sp, #4]
	ldr	r0, [r7, #44]
	movs	r1, #1
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #56]
	str	r2, [r3, #24]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L384
	b	.L291
.L384:
	ldr	r3, [r7, #52]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #52]
	ldr	r3, [r3]
	orr	r2, r3, #2048
	ldr	r3, [r7, #52]
	str	r2, [r3]
	b	.L291
.L380:
	movs	r3, #3
	str	r3, [r7, #16]
	b	.L291
.L358:
	movs	r3, #182
	str	r3, [r7, #16]
.L291:
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L385
	ldr	r3, [r7, #52]
	ldr	r3, [r3]
	and	r3, r3, #64
	cmp	r3, #0
	beq	.L385
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #24]
	ldr	r0, [r7, #44]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #52]
	movs	r2, #0
	str	r2, [r3, #24]
.L385:
	ldr	r3, [r7, #16]
	mov	r0, r3
	adds	r7, r7, #72
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L390:
	.align	2
.L389:
	.word	.LC85-(.LPIC55+4)
	.word	.LC93-(.LPIC56+4)
	.size	_bdf_parse_glyphs, .-_bdf_parse_glyphs
	.section	.rodata
	.align	2
.LC94:
	.ascii	"ENDPROPERTIES\000"
	.align	2
.LC95:
	.ascii	"%hd\000"
	.align	2
.LC96:
	.ascii	"_XFREE86_GLYPH_RANGES\000"
	.section	.text._bdf_parse_properties,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_bdf_parse_properties, %function
_bdf_parse_properties:
	@ args = 4, pretend = 0, frame = 168
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #176
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #164]
	ldr	r3, [r7]
	str	r3, [r7, #160]
	ldr	r3, [r7, #176]
	str	r3, [r7, #156]
	ldr	r0, [r7, #12]
	ldr	r3, .L413
.LPIC57:
	add	r3, pc
	mov	r1, r3
	movs	r2, #13
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L392
	ldr	r3, [r7, #12]
	adds	r3, r3, #13
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L393
	ldr	r3, [r7, #12]
	adds	r3, r3, #13
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L393
	ldr	r3, [r7, #12]
	adds	r3, r3, #13
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L393
	ldr	r3, [r7, #12]
	adds	r3, r3, #13
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #13
	beq	.L393
	ldr	r3, [r7, #12]
	adds	r3, r3, #13
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #9
	beq	.L393
.L392:
	movs	r3, #1
	b	.L394
.L393:
	movs	r3, #0
.L394:
	cmp	r3, #0
	bne	.L395
	ldr	r3, [r7, #156]
	ldr	r3, [r3, #32]
	mov	r0, r3
	ldr	r3, .L413+4
.LPIC58:
	add	r3, pc
	mov	r1, r3
	bl	bdf_get_font_property(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L396
	ldr	r3, [r7, #156]
	ldr	r3, [r3, #32]
	ldr	r2, [r7, #156]
	ldr	r2, [r2, #32]
	ldrh	r2, [r2, #12]
	sxth	r2, r2
	str	r2, [r3, #40]
	ldr	r3, [r7, #156]
	ldr	r3, [r3, #32]
	ldrh	r3, [r3, #12]
	sxth	r3, r3
	add	r2, r7, #16
	mov	r0, r2
	ldr	r2, .L413+8
.LPIC59:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	bl	sprintf(PLT)
	ldr	r3, [r7, #156]
	ldr	r2, [r3, #32]
	add	r3, r7, #16
	mov	r0, r2
	ldr	r2, .L413+12
.LPIC60:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [r7, #4]
	bl	_bdf_add_property(PLT)
	str	r0, [r7, #164]
	ldr	r3, [r7, #164]
	cmp	r3, #0
	beq	.L397
	b	.L398
.L397:
	ldr	r3, [r7, #156]
	ldr	r3, [r3, #32]
	add	r3, r3, #278528
	adds	r3, r3, #132
	movs	r2, #1
	strh	r2, [r3]	@ movhi
.L396:
	ldr	r3, [r7, #156]
	ldr	r3, [r3, #32]
	mov	r0, r3
	ldr	r3, .L413+16
.LPIC61:
	add	r3, pc
	mov	r1, r3
	bl	bdf_get_font_property(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L399
	ldr	r3, [r7, #156]
	ldr	r3, [r3, #32]
	ldr	r2, [r7, #156]
	ldr	r2, [r2, #32]
	ldrh	r2, [r2, #14]
	sxth	r2, r2
	str	r2, [r3, #44]
	ldr	r3, [r7, #156]
	ldr	r3, [r3, #32]
	ldrh	r3, [r3, #14]
	sxth	r3, r3
	add	r2, r7, #16
	mov	r0, r2
	ldr	r2, .L413+20
.LPIC62:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	bl	sprintf(PLT)
	ldr	r3, [r7, #156]
	ldr	r2, [r3, #32]
	add	r3, r7, #16
	mov	r0, r2
	ldr	r2, .L413+24
.LPIC63:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [r7, #4]
	bl	_bdf_add_property(PLT)
	str	r0, [r7, #164]
	ldr	r3, [r7, #164]
	cmp	r3, #0
	beq	.L400
	b	.L398
.L400:
	ldr	r3, [r7, #156]
	ldr	r3, [r3, #32]
	add	r3, r3, #278528
	adds	r3, r3, #132
	movs	r2, #1
	strh	r2, [r3]	@ movhi
.L399:
	ldr	r3, [r7, #156]
	ldr	r3, [r3]
	bic	r2, r3, #16
	ldr	r3, [r7, #156]
	str	r2, [r3]
	ldr	r3, [r7, #160]
	ldr	r2, .L413+28
.LPIC64:
	add	r2, pc
	str	r2, [r3]
	b	.L398
.L395:
	ldr	r0, [r7, #12]
	ldr	r3, .L413+32
.LPIC65:
	add	r3, pc
	mov	r1, r3
	movs	r2, #21
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L401
	ldr	r3, [r7, #12]
	adds	r3, r3, #21
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L402
	ldr	r3, [r7, #12]
	adds	r3, r3, #21
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L402
	ldr	r3, [r7, #12]
	adds	r3, r3, #21
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L402
	ldr	r3, [r7, #12]
	adds	r3, r3, #21
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #13
	beq	.L402
	ldr	r3, [r7, #12]
	adds	r3, r3, #21
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #9
	beq	.L402
.L401:
	movs	r3, #1
	b	.L403
.L402:
	movs	r3, #0
.L403:
	cmp	r3, #0
	bne	.L404
	b	.L398
.L404:
	ldr	r0, [r7, #12]
	ldr	r3, .L413+36
.LPIC66:
	add	r3, pc
	mov	r1, r3
	movs	r2, #7
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L405
	ldr	r3, [r7, #12]
	adds	r3, r3, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L406
	ldr	r3, [r7, #12]
	adds	r3, r3, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L406
	ldr	r3, [r7, #12]
	adds	r3, r3, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L406
	ldr	r3, [r7, #12]
	adds	r3, r3, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #13
	beq	.L406
	ldr	r3, [r7, #12]
	adds	r3, r3, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #9
	beq	.L406
.L405:
	movs	r3, #1
	b	.L407
.L406:
	movs	r3, #0
.L407:
	cmp	r3, #0
	bne	.L408
	ldr	r3, [r7, #12]
	str	r3, [r7, #144]
	ldr	r3, [r7, #144]
	str	r3, [r7, #148]
	ldr	r3, [r7, #144]
	adds	r3, r3, #7
	str	r3, [r7, #144]
	ldr	r3, [r7, #144]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L409
	ldr	r3, [r7, #144]
	adds	r2, r3, #1
	str	r2, [r7, #144]
	movs	r2, #0
	strb	r2, [r3]
.L409:
	ldr	r3, [r7, #156]
	ldr	r1, [r3, #32]
	ldr	r2, [r7, #148]
	ldr	r3, [r7, #144]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [r7, #4]
	bl	_bdf_add_property(PLT)
	str	r0, [r7, #164]
	ldr	r3, [r7, #164]
	cmp	r3, #0
	beq	.L398
	b	.L398
.L408:
	ldr	r3, [r7, #156]
	ldr	r1, [r3, #32]
	add	r2, r7, #148
	add	r3, r7, #144
	str	r1, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_bdf_is_atom(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L410
	ldr	r3, [r7, #156]
	ldr	r1, [r3, #32]
	ldr	r2, [r7, #148]
	ldr	r3, [r7, #144]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [r7, #4]
	bl	_bdf_add_property(PLT)
	str	r0, [r7, #164]
	ldr	r3, [r7, #164]
	cmp	r3, #0
	beq	.L398
	b	.L398
.L410:
	ldr	r3, [r7, #156]
	add	r3, r3, #139264
	adds	r3, r3, #40
	mov	r0, r3
	ldr	r3, .L413+40
.LPIC67:
	add	r3, pc
	mov	r1, r3
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	bl	_bdf_list_split(PLT)
	str	r0, [r7, #164]
	ldr	r3, [r7, #164]
	cmp	r3, #0
	beq	.L411
	b	.L398
.L411:
	ldr	r3, [r7, #156]
	add	r3, r3, #139264
	adds	r3, r3, #40
	ldr	r3, [r3]
	ldr	r3, [r3]
	str	r3, [r7, #148]
	ldr	r3, [r7, #156]
	add	r3, r3, #139264
	adds	r3, r3, #40
	mov	r0, r3
	movs	r1, #1
	bl	_bdf_list_shift(PLT)
	ldr	r3, [r7, #156]
	add	r3, r3, #139264
	adds	r3, r3, #40
	add	r2, r7, #152
	mov	r0, r3
	movs	r1, #32
	bl	_bdf_list_join(PLT)
	mov	r3, r0
	str	r3, [r7, #144]
	ldr	r3, [r7, #156]
	ldr	r1, [r3, #32]
	ldr	r2, [r7, #148]
	ldr	r3, [r7, #144]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [r7, #4]
	bl	_bdf_add_property(PLT)
	str	r0, [r7, #164]
	ldr	r3, [r7, #164]
	cmp	r3, #0
	beq	.L398
	nop
.L398:
	ldr	r3, [r7, #164]
	mov	r0, r3
	adds	r7, r7, #168
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L414:
	.align	2
.L413:
	.word	.LC94-(.LPIC57+4)
	.word	.LC19-(.LPIC58+4)
	.word	.LC95-(.LPIC59+4)
	.word	.LC19-(.LPIC60+4)
	.word	.LC20-(.LPIC61+4)
	.word	.LC95-(.LPIC62+4)
	.word	.LC20-(.LPIC63+4)
	.word	_bdf_parse_glyphs-(.LPIC64+4)
	.word	.LC96-(.LPIC65+4)
	.word	.LC8-(.LPIC66+4)
	.word	.LC85-(.LPIC67+4)
	.size	_bdf_parse_properties, .-_bdf_parse_properties
	.section	.rodata
	.align	2
.LC97:
	.ascii	"STARTFONT\000"
	.align	2
.LC98:
	.ascii	"STARTPROPERTIES\000"
	.align	2
.LC99:
	.ascii	"FONTBOUNDINGBOX\000"
	.align	2
.LC100:
	.ascii	"SIZE\000"
	.section	.text._bdf_parse_start,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_bdf_parse_start, %function
_bdf_parse_start:
	@ args = 4, pretend = 0, frame = 184
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #196
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #176]
	movs	r3, #0
	str	r3, [r7, #144]
	ldr	r3, [r7]
	str	r3, [r7, #164]
	ldr	r3, [r7, #200]
	str	r3, [r7, #160]
	ldr	r3, [r7, #160]
	ldr	r3, [r3, #32]
	cmp	r3, #0
	beq	.L416
	ldr	r3, [r7, #160]
	ldr	r3, [r3, #32]
	add	r3, r3, #278528
	adds	r3, r3, #136
	ldr	r3, [r3]
	str	r3, [r7, #176]
.L416:
	ldr	r0, [r7, #12]
	ldr	r3, .L478
.LPIC68:
	add	r3, pc
	mov	r1, r3
	movs	r2, #7
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L417
	ldr	r3, [r7, #12]
	adds	r3, r3, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L418
	ldr	r3, [r7, #12]
	adds	r3, r3, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L418
	ldr	r3, [r7, #12]
	adds	r3, r3, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L418
	ldr	r3, [r7, #12]
	adds	r3, r3, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #13
	beq	.L418
	ldr	r3, [r7, #12]
	adds	r3, r3, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #9
	beq	.L418
.L417:
	movs	r3, #1
	b	.L419
.L418:
	movs	r3, #0
.L419:
	cmp	r3, #0
	bne	.L420
	ldr	r3, [r7, #160]
	ldr	r3, [r3, #36]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L421
	ldr	r3, [r7, #160]
	ldr	r3, [r3, #32]
	cmp	r3, #0
	beq	.L421
	ldr	r3, [r7, #8]
	subs	r3, r3, #7
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	adds	r3, r3, #7
	str	r3, [r7, #180]
	ldr	r3, [r7, #180]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L422
	ldr	r3, [r7, #180]
	adds	r3, r3, #1
	str	r3, [r7, #180]
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	str	r3, [r7, #8]
.L422:
	ldr	r3, [r7, #160]
	ldr	r3, [r3, #32]
	mov	r0, r3
	ldr	r1, [r7, #180]
	ldr	r2, [r7, #8]
	bl	_bdf_add_comment(PLT)
	mov	r3, r0
	str	r3, [r7, #144]
	ldr	r3, [r7, #144]
	cmp	r3, #0
	beq	.L421
	b	.L423
.L421:
	b	.L423
.L420:
	ldr	r3, [r7, #160]
	ldr	r3, [r3]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L424
	ldr	r3, [r7, #160]
	add	r3, r3, #139264
	adds	r3, r3, #56
	ldr	r3, [r3]
	str	r3, [r7, #176]
	ldr	r0, [r7, #12]
	ldr	r3, .L478+4
.LPIC69:
	add	r3, pc
	mov	r1, r3
	movs	r2, #9
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L425
	ldr	r3, [r7, #12]
	adds	r3, r3, #9
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L426
	ldr	r3, [r7, #12]
	adds	r3, r3, #9
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L426
	ldr	r3, [r7, #12]
	adds	r3, r3, #9
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L426
	ldr	r3, [r7, #12]
	adds	r3, r3, #9
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #13
	beq	.L426
	ldr	r3, [r7, #12]
	adds	r3, r3, #9
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #9
	beq	.L426
.L425:
	movs	r3, #1
	b	.L427
.L426:
	movs	r3, #0
.L427:
	cmp	r3, #0
	beq	.L428
	movs	r3, #176
	str	r3, [r7, #144]
	b	.L423
.L428:
	ldr	r3, [r7, #160]
	movs	r2, #1
	str	r2, [r3]
	ldr	r3, [r7, #160]
	movs	r2, #0
	str	r2, [r3, #32]
	ldr	r3, [r7, #160]
	ldr	r3, [r3, #32]
	str	r3, [r7, #156]
	add	r3, r7, #144
	ldr	r0, [r7, #176]
	movw	r1, #16548
	movt	r1, 4
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	str	r0, [r7, #156]
	ldr	r3, [r7, #144]
	cmp	r3, #0
	beq	.L429
	b	.L423
.L429:
	ldr	r3, [r7, #160]
	ldr	r2, [r7, #156]
	str	r2, [r3, #32]
	ldr	r3, [r7, #160]
	add	r3, r3, #139264
	adds	r3, r3, #56
	ldr	r2, [r3]
	ldr	r3, [r7, #156]
	add	r3, r3, #278528
	adds	r3, r3, #136
	str	r2, [r3]
	ldr	r3, [r7, #160]
	add	r3, r3, #139264
	adds	r3, r3, #56
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #156]
	add	r3, r3, #278528
	adds	r3, r3, #148
	mov	r0, r3
	ldr	r1, [r7, #176]
	bl	hash_init(PLT)
	mov	r3, r0
	str	r3, [r7, #144]
	ldr	r3, [r7, #144]
	cmp	r3, #0
	beq	.L430
	b	.L423
.L430:
	movs	r3, #0
	str	r3, [r7, #172]
	ldr	r3, .L478+8
.LPIC70:
	add	r3, pc
	str	r3, [r7, #168]
	b	.L431
.L433:
	ldr	r3, [r7, #168]
	ldr	r2, [r3]
	ldr	r3, [r7, #156]
	add	r3, r3, #278528
	adds	r3, r3, #148
	mov	r0, r2
	ldr	r1, [r7, #172]
	mov	r2, r3
	ldr	r3, [r7, #176]
	bl	hash_insert(PLT)
	mov	r3, r0
	str	r3, [r7, #144]
	ldr	r3, [r7, #144]
	cmp	r3, #0
	beq	.L432
	b	.L423
.L432:
	ldr	r3, [r7, #172]
	adds	r3, r3, #1
	str	r3, [r7, #172]
	ldr	r3, [r7, #168]
	adds	r3, r3, #16
	str	r3, [r7, #168]
.L431:
	movs	r3, #83
	ldr	r2, [r7, #172]
	cmp	r2, r3
	bcc	.L433
	ldr	r3, [r7, #160]
	ldr	r4, [r3, #32]
	add	r3, r7, #144
	ldr	r0, [r7, #176]
	movs	r1, #16
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	mov	r3, r0
	str	r3, [r4, #128]
	ldr	r3, [r7, #144]
	cmp	r3, #0
	beq	.L434
	b	.L423
.L434:
	ldr	r3, [r7, #160]
	ldr	r3, [r3, #32]
	ldr	r3, [r3, #128]
	mov	r0, r3
	ldr	r1, [r7, #176]
	bl	hash_init(PLT)
	mov	r3, r0
	str	r3, [r7, #144]
	ldr	r3, [r7, #144]
	cmp	r3, #0
	beq	.L435
	b	.L423
.L435:
	ldr	r3, [r7, #160]
	ldr	r3, [r3, #32]
	ldr	r2, [r7, #160]
	ldr	r2, [r2, #36]
	ldr	r2, [r2, #12]
	str	r2, [r3, #28]
	ldr	r3, [r7, #160]
	ldr	r3, [r3, #32]
	mov	r2, #-1
	str	r2, [r3, #36]
	b	.L423
.L424:
	ldr	r0, [r7, #12]
	ldr	r3, .L478+12
.LPIC71:
	add	r3, pc
	mov	r1, r3
	movs	r2, #15
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L436
	ldr	r3, [r7, #12]
	adds	r3, r3, #15
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L437
	ldr	r3, [r7, #12]
	adds	r3, r3, #15
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L437
	ldr	r3, [r7, #12]
	adds	r3, r3, #15
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L437
	ldr	r3, [r7, #12]
	adds	r3, r3, #15
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #13
	beq	.L437
	ldr	r3, [r7, #12]
	adds	r3, r3, #15
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #9
	beq	.L437
.L436:
	movs	r3, #1
	b	.L438
.L437:
	movs	r3, #0
.L438:
	cmp	r3, #0
	bne	.L439
	ldr	r3, [r7, #160]
	ldr	r3, [r3]
	and	r3, r3, #8
	cmp	r3, #0
	bne	.L440
	movs	r3, #179
	str	r3, [r7, #144]
	b	.L423
.L440:
	ldr	r3, [r7, #160]
	add	r3, r3, #139264
	adds	r3, r3, #40
	mov	r0, r3
	ldr	r3, .L478+16
.LPIC72:
	add	r3, pc
	mov	r1, r3
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	bl	_bdf_list_split(PLT)
	mov	r3, r0
	str	r3, [r7, #144]
	ldr	r3, [r7, #144]
	cmp	r3, #0
	beq	.L441
	b	.L423
.L441:
	ldr	r3, [r7, #160]
	ldr	r4, [r3, #32]
	ldr	r3, [r7, #160]
	add	r3, r3, #139264
	adds	r3, r3, #40
	ldr	r3, [r3]
	adds	r3, r3, #4
	ldr	r3, [r3]
	mov	r0, r3
	movs	r1, #0
	movs	r2, #10
	bl	_bdf_atoul(PLT)
	mov	r3, r0
	str	r3, [r4, #72]
	ldr	r2, [r4, #72]
	ldr	r3, [r7, #160]
	str	r2, [r3, #4]
	ldr	r3, [r7, #160]
	ldr	r4, [r3, #32]
	ldr	r3, [r7, #160]
	ldr	r3, [r3, #4]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #144
	str	r2, [sp, #4]
	ldr	r0, [r7, #176]
	movs	r1, #16
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r3, r0
	str	r3, [r4, #80]
	ldr	r3, [r7, #144]
	cmp	r3, #0
	beq	.L442
	ldr	r3, [r7, #160]
	ldr	r3, [r3, #32]
	movs	r2, #0
	str	r2, [r3, #72]
	b	.L423
.L442:
	ldr	r3, [r7, #160]
	ldr	r3, [r3]
	orr	r2, r3, #16
	ldr	r3, [r7, #160]
	str	r2, [r3]
	ldr	r3, [r7, #164]
	ldr	r2, .L478+20
.LPIC73:
	add	r2, pc
	str	r2, [r3]
	b	.L423
.L439:
	ldr	r0, [r7, #12]
	ldr	r3, .L478+24
.LPIC74:
	add	r3, pc
	mov	r1, r3
	movs	r2, #15
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L443
	ldr	r3, [r7, #12]
	adds	r3, r3, #15
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L444
	ldr	r3, [r7, #12]
	adds	r3, r3, #15
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L444
	ldr	r3, [r7, #12]
	adds	r3, r3, #15
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L444
	ldr	r3, [r7, #12]
	adds	r3, r3, #15
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #13
	beq	.L444
	ldr	r3, [r7, #12]
	adds	r3, r3, #15
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #9
	beq	.L444
.L443:
	movs	r3, #1
	b	.L445
.L444:
	movs	r3, #0
.L445:
	cmp	r3, #0
	bne	.L446
	ldr	r3, [r7, #160]
	ldr	r3, [r3]
	and	r3, r3, #4
	cmp	r3, #0
	bne	.L447
	movs	r3, #178
	str	r3, [r7, #144]
	b	.L423
.L447:
	ldr	r3, [r7, #160]
	add	r3, r3, #139264
	adds	r3, r3, #40
	mov	r0, r3
	ldr	r3, .L478+28
.LPIC75:
	add	r3, pc
	mov	r1, r3
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	bl	_bdf_list_split(PLT)
	mov	r3, r0
	str	r3, [r7, #144]
	ldr	r3, [r7, #144]
	cmp	r3, #0
	beq	.L448
	b	.L423
.L448:
	ldr	r3, [r7, #160]
	ldr	r4, [r3, #32]
	ldr	r3, [r7, #160]
	add	r3, r3, #139264
	adds	r3, r3, #40
	ldr	r3, [r3]
	adds	r3, r3, #4
	ldr	r3, [r3]
	mov	r0, r3
	movs	r1, #0
	movs	r2, #10
	bl	_bdf_atous(PLT)
	mov	r3, r0
	strh	r3, [r4, #4]	@ movhi
	ldr	r3, [r7, #160]
	ldr	r4, [r3, #32]
	ldr	r3, [r7, #160]
	add	r3, r3, #139264
	adds	r3, r3, #40
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	mov	r0, r3
	movs	r1, #0
	movs	r2, #10
	bl	_bdf_atous(PLT)
	mov	r3, r0
	strh	r3, [r4, #6]	@ movhi
	ldr	r3, [r7, #160]
	ldr	r4, [r3, #32]
	ldr	r3, [r7, #160]
	add	r3, r3, #139264
	adds	r3, r3, #40
	ldr	r3, [r3]
	adds	r3, r3, #12
	ldr	r3, [r3]
	mov	r0, r3
	movs	r1, #0
	movs	r2, #10
	bl	_bdf_atos(PLT)
	mov	r3, r0
	strh	r3, [r4, #8]	@ movhi
	ldr	r3, [r7, #160]
	ldr	r4, [r3, #32]
	ldr	r3, [r7, #160]
	add	r3, r3, #139264
	adds	r3, r3, #40
	ldr	r3, [r3]
	adds	r3, r3, #16
	ldr	r3, [r3]
	mov	r0, r3
	movs	r1, #0
	movs	r2, #10
	bl	_bdf_atos(PLT)
	mov	r3, r0
	strh	r3, [r4, #10]	@ movhi
	ldr	r3, [r7, #160]
	ldr	r3, [r3, #32]
	ldr	r2, [r7, #160]
	ldr	r2, [r2, #32]
	ldrh	r1, [r2, #6]
	ldr	r2, [r7, #160]
	ldr	r2, [r2, #32]
	ldrh	r2, [r2, #10]
	uxth	r2, r2
	add	r2, r2, r1
	uxth	r2, r2
	uxth	r2, r2
	strh	r2, [r3, #12]	@ movhi
	ldr	r3, [r7, #160]
	ldr	r3, [r3, #32]
	ldr	r2, [r7, #160]
	ldr	r2, [r2, #32]
	ldrh	r2, [r2, #10]
	uxth	r2, r2
	negs	r2, r2
	uxth	r2, r2
	uxth	r2, r2
	strh	r2, [r3, #14]	@ movhi
	ldr	r3, [r7, #160]
	ldr	r3, [r3]
	orr	r2, r3, #8
	ldr	r3, [r7, #160]
	str	r2, [r3]
	b	.L423
.L446:
	ldr	r0, [r7, #12]
	ldr	r3, .L478+32
.LPIC76:
	add	r3, pc
	mov	r1, r3
	movs	r2, #4
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L449
	ldr	r3, [r7, #12]
	adds	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L450
	ldr	r3, [r7, #12]
	adds	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L450
	ldr	r3, [r7, #12]
	adds	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L450
	ldr	r3, [r7, #12]
	adds	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #13
	beq	.L450
	ldr	r3, [r7, #12]
	adds	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #9
	beq	.L450
.L449:
	movs	r3, #1
	b	.L451
.L450:
	movs	r3, #0
.L451:
	cmp	r3, #0
	bne	.L452
	ldr	r3, [r7, #160]
	add	r3, r3, #139264
	adds	r3, r3, #40
	mov	r0, r3
	ldr	r3, .L478+36
.LPIC77:
	add	r3, pc
	mov	r1, r3
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	bl	_bdf_list_split(PLT)
	mov	r3, r0
	str	r3, [r7, #144]
	ldr	r3, [r7, #144]
	cmp	r3, #0
	beq	.L453
	b	.L423
.L453:
	ldr	r3, [r7, #160]
	add	r3, r3, #139264
	adds	r3, r3, #40
	mov	r0, r3
	movs	r1, #1
	bl	_bdf_list_shift(PLT)
	ldr	r3, [r7, #160]
	add	r3, r3, #139264
	adds	r3, r3, #40
	add	r2, r7, #148
	mov	r0, r3
	movs	r1, #32
	bl	_bdf_list_join(PLT)
	str	r0, [r7, #180]
	ldr	r3, [r7, #180]
	cmp	r3, #0
	bne	.L454
	movs	r3, #3
	str	r3, [r7, #144]
	b	.L423
.L454:
	ldr	r3, [r7, #160]
	ldr	r3, [r3, #32]
	ldr	r3, [r3]
	ldr	r0, [r7, #176]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #160]
	ldr	r3, [r3, #32]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #160]
	ldr	r4, [r3, #32]
	ldr	r3, [r7, #148]
	adds	r3, r3, #1
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #144
	str	r2, [sp, #4]
	ldr	r0, [r7, #176]
	movs	r1, #1
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r3, r0
	str	r3, [r4]
	ldr	r3, [r7, #144]
	cmp	r3, #0
	beq	.L455
	b	.L423
.L455:
	ldr	r3, [r7, #160]
	ldr	r3, [r3, #32]
	ldr	r2, [r3]
	ldr	r3, [r7, #148]
	adds	r3, r3, #1
	mov	r0, r2
	ldr	r1, [r7, #180]
	mov	r2, r3
	bl	memcpy(PLT)
	ldr	r3, [r7, #160]
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #160]
	ldr	r3, [r3, #36]
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #4]
	bl	_bdf_set_default_spacing(PLT)
	mov	r3, r0
	str	r3, [r7, #144]
	ldr	r3, [r7, #144]
	cmp	r3, #0
	beq	.L456
	b	.L423
.L456:
	ldr	r3, [r7, #160]
	ldr	r3, [r3]
	orr	r2, r3, #2
	ldr	r3, [r7, #160]
	str	r2, [r3]
	b	.L423
.L452:
	ldr	r0, [r7, #12]
	ldr	r3, .L478+40
.LPIC78:
	add	r3, pc
	mov	r1, r3
	movs	r2, #4
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L457
	ldr	r3, [r7, #12]
	adds	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L458
	ldr	r3, [r7, #12]
	adds	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L458
	ldr	r3, [r7, #12]
	adds	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L458
	ldr	r3, [r7, #12]
	adds	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #13
	beq	.L458
	ldr	r3, [r7, #12]
	adds	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #9
	beq	.L458
.L457:
	movs	r3, #1
	b	.L459
.L458:
	movs	r3, #0
.L459:
	cmp	r3, #0
	bne	.L460
	ldr	r3, [r7, #160]
	ldr	r3, [r3]
	and	r3, r3, #2
	cmp	r3, #0
	bne	.L461
	movs	r3, #177
	str	r3, [r7, #144]
	b	.L423
.L461:
	ldr	r3, [r7, #160]
	add	r3, r3, #139264
	adds	r3, r3, #40
	mov	r0, r3
	ldr	r3, .L478+44
.LPIC79:
	add	r3, pc
	mov	r1, r3
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	bl	_bdf_list_split(PLT)
	mov	r3, r0
	str	r3, [r7, #144]
	ldr	r3, [r7, #144]
	cmp	r3, #0
	beq	.L462
	b	.L423
.L462:
	ldr	r3, [r7, #160]
	ldr	r4, [r3, #32]
	ldr	r3, [r7, #160]
	add	r3, r3, #139264
	adds	r3, r3, #40
	ldr	r3, [r3]
	adds	r3, r3, #4
	ldr	r3, [r3]
	mov	r0, r3
	movs	r1, #0
	movs	r2, #10
	bl	_bdf_atoul(PLT)
	mov	r3, r0
	str	r3, [r4, #16]
	ldr	r3, [r7, #160]
	ldr	r4, [r3, #32]
	ldr	r3, [r7, #160]
	add	r3, r3, #139264
	adds	r3, r3, #40
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	mov	r0, r3
	movs	r1, #0
	movs	r2, #10
	bl	_bdf_atoul(PLT)
	mov	r3, r0
	str	r3, [r4, #20]
	ldr	r3, [r7, #160]
	ldr	r4, [r3, #32]
	ldr	r3, [r7, #160]
	add	r3, r3, #139264
	adds	r3, r3, #40
	ldr	r3, [r3]
	adds	r3, r3, #12
	ldr	r3, [r3]
	mov	r0, r3
	movs	r1, #0
	movs	r2, #10
	bl	_bdf_atoul(PLT)
	mov	r3, r0
	str	r3, [r4, #24]
	ldr	r3, [r7, #160]
	add	r3, r3, #139264
	adds	r3, r3, #48
	ldr	r3, [r3]
	cmp	r3, #5
	bne	.L463
	ldr	r3, [r7, #160]
	add	r3, r3, #139264
	adds	r3, r3, #40
	ldr	r3, [r3]
	adds	r3, r3, #16
	ldr	r3, [r3]
	mov	r0, r3
	movs	r1, #0
	movs	r2, #10
	bl	_bdf_atos(PLT)
	mov	r3, r0
	strh	r3, [r7, #154]	@ movhi
	ldrh	r3, [r7, #154]
	cmp	r3, #4
	bls	.L464
	ldr	r3, [r7, #160]
	ldr	r3, [r3, #32]
	add	r3, r3, #278528
	adds	r3, r3, #134
	movs	r2, #8
	strh	r2, [r3]	@ movhi
	b	.L468
.L464:
	ldrh	r3, [r7, #154]
	cmp	r3, #2
	bls	.L466
	ldr	r3, [r7, #160]
	ldr	r3, [r3, #32]
	add	r3, r3, #278528
	adds	r3, r3, #134
	movs	r2, #4
	strh	r2, [r3]	@ movhi
	b	.L468
.L466:
	ldrh	r3, [r7, #154]
	cmp	r3, #1
	bls	.L467
	ldr	r3, [r7, #160]
	ldr	r3, [r3, #32]
	add	r3, r3, #278528
	adds	r3, r3, #134
	movs	r2, #2
	strh	r2, [r3]	@ movhi
	b	.L468
.L467:
	ldr	r3, [r7, #160]
	ldr	r3, [r3, #32]
	add	r3, r3, #278528
	adds	r3, r3, #134
	movs	r2, #1
	strh	r2, [r3]	@ movhi
	b	.L468
.L463:
	ldr	r3, [r7, #160]
	ldr	r3, [r3, #32]
	add	r3, r3, #278528
	adds	r3, r3, #134
	movs	r2, #1
	strh	r2, [r3]	@ movhi
.L468:
	ldr	r3, [r7, #160]
	ldr	r3, [r3]
	orr	r2, r3, #4
	ldr	r3, [r7, #160]
	str	r2, [r3]
	b	.L423
.L460:
	ldr	r0, [r7, #12]
	ldr	r3, .L478+48
.LPIC80:
	add	r3, pc
	mov	r1, r3
	movs	r2, #5
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L469
	ldr	r3, [r7, #12]
	adds	r3, r3, #5
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L470
	ldr	r3, [r7, #12]
	adds	r3, r3, #5
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L470
	ldr	r3, [r7, #12]
	adds	r3, r3, #5
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L470
	ldr	r3, [r7, #12]
	adds	r3, r3, #5
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #13
	beq	.L470
	ldr	r3, [r7, #12]
	adds	r3, r3, #5
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #9
	beq	.L470
.L469:
	movs	r3, #1
	b	.L471
.L470:
	movs	r3, #0
.L471:
	cmp	r3, #0
	bne	.L472
	ldr	r3, [r7, #160]
	ldr	r3, [r3]
	and	r3, r3, #8
	cmp	r3, #0
	bne	.L473
	movs	r3, #179
	str	r3, [r7, #144]
	b	.L423
.L473:
	ldr	r3, [r7, #160]
	ldr	r3, [r3, #32]
	ldr	r2, [r7, #160]
	ldr	r2, [r2, #32]
	ldrh	r2, [r2, #12]
	sxth	r2, r2
	str	r2, [r3, #40]
	ldr	r3, [r7, #160]
	ldr	r3, [r3, #32]
	ldrh	r3, [r3, #12]
	sxth	r3, r3
	add	r2, r7, #16
	mov	r0, r2
	ldr	r2, .L478+52
.LPIC81:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	bl	sprintf(PLT)
	ldr	r3, [r7, #160]
	ldr	r2, [r3, #32]
	add	r3, r7, #16
	mov	r0, r2
	ldr	r2, .L478+56
.LPIC82:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [r7, #4]
	bl	_bdf_add_property(PLT)
	mov	r3, r0
	str	r3, [r7, #144]
	ldr	r3, [r7, #144]
	cmp	r3, #0
	beq	.L475
	b	.L423
.L475:
	ldr	r3, [r7, #160]
	ldr	r3, [r3, #32]
	ldr	r2, [r7, #160]
	ldr	r2, [r2, #32]
	ldrh	r2, [r2, #14]
	sxth	r2, r2
	str	r2, [r3, #44]
	ldr	r3, [r7, #160]
	ldr	r3, [r3, #32]
	ldrh	r3, [r3, #14]
	sxth	r3, r3
	add	r2, r7, #16
	mov	r0, r2
	ldr	r2, .L478+60
.LPIC83:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	bl	sprintf(PLT)
	ldr	r3, [r7, #160]
	ldr	r2, [r3, #32]
	add	r3, r7, #16
	mov	r0, r2
	ldr	r2, .L478+64
.LPIC84:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [r7, #4]
	bl	_bdf_add_property(PLT)
	mov	r3, r0
	str	r3, [r7, #144]
	ldr	r3, [r7, #144]
	cmp	r3, #0
	beq	.L476
	b	.L423
.L476:
	ldr	r3, [r7, #160]
	ldr	r3, [r3, #32]
	add	r3, r3, #278528
	adds	r3, r3, #132
	movs	r2, #1
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #164]
	ldr	r2, .L478+68
.LPIC85:
	add	r2, pc
	str	r2, [r3]
	mov	r3, #-1
	str	r3, [r7, #144]
	nop
	b	.L423
.L472:
	movs	r3, #3
	str	r3, [r7, #144]
.L423:
	ldr	r3, [r7, #144]
	mov	r0, r3
	adds	r7, r7, #188
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L479:
	.align	2
.L478:
	.word	.LC8-(.LPIC68+4)
	.word	.LC97-(.LPIC69+4)
	.word	_bdf_properties-(.LPIC70+4)
	.word	.LC98-(.LPIC71+4)
	.word	.LC85-(.LPIC72+4)
	.word	_bdf_parse_properties-(.LPIC73+4)
	.word	.LC99-(.LPIC74+4)
	.word	.LC85-(.LPIC75+4)
	.word	.LC17-(.LPIC76+4)
	.word	.LC85-(.LPIC77+4)
	.word	.LC100-(.LPIC78+4)
	.word	.LC85-(.LPIC79+4)
	.word	.LC84-(.LPIC80+4)
	.word	.LC95-(.LPIC81+4)
	.word	.LC19-(.LPIC82+4)
	.word	.LC95-(.LPIC83+4)
	.word	.LC20-(.LPIC84+4)
	.word	_bdf_parse_glyphs-(.LPIC85+4)
	.size	_bdf_parse_start, .-_bdf_parse_start
	.section	.text.bdf_load_font,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	bdf_load_font, %function
bdf_load_font:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #44
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #8]
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #16]
	add	r3, r7, #16
	ldr	r0, [r7, #24]
	mov	r1, #8256
	movt	r1, 2
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L481
	b	.L482
.L481:
	movs	r3, #0
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L483
	ldr	r3, [r7, #4]
	b	.L484
.L483:
	ldr	r3, .L505
.LPIC86:
	add	r3, pc
.L484:
	ldr	r2, [r7, #28]
	str	r3, [r2, #36]
	ldr	r3, [r7, #28]
	movw	r2, #32767
	strh	r2, [r3, #12]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #28]
	add	r3, r3, #139264
	adds	r3, r3, #60
	str	r2, [r3]
	ldr	r3, [r7, #28]
	add	r3, r3, #139264
	adds	r3, r3, #56
	ldr	r2, [r7, #8]
	str	r2, [r3]
	ldr	r3, [r7, #28]
	add	r3, r3, #139264
	adds	r3, r3, #40
	mov	r0, r3
	ldr	r1, [r7, #8]
	bl	_bdf_list_init(PLT)
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	ldr	r2, .L505+4
.LPIC87:
	add	r2, pc
	mov	r1, r2
	ldr	r2, [r7, #28]
	bl	_bdf_readstream(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L485
	b	.L486
.L485:
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #32]
	cmp	r3, #0
	beq	.L487
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #32]
	ldr	r3, [r3, #28]
	cmp	r3, #8
	beq	.L488
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #32]
	ldr	r2, [r7, #28]
	ldr	r2, [r2, #32]
	ldrh	r2, [r2, #4]
	strh	r2, [r3, #32]	@ movhi
.L488:
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #32]
	ldr	r1, [r3, #52]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #32]
	ldr	r3, [r3, #64]
	add	r3, r3, r1
	cmp	r2, r3
	beq	.L489
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #32]
	add	r3, r3, #278528
	adds	r3, r3, #132
	movs	r2, #1
	strh	r2, [r3]	@ movhi
.L489:
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #36]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L487
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #32]
	ldr	r3, [r3, #52]
	cmp	r3, #0
	bne	.L490
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #32]
	ldr	r3, [r3, #64]
	cmp	r3, #0
	beq	.L487
.L490:
	ldr	r3, [r7, #28]
	ldrh	r3, [r3, #16]
	sxth	r2, r3
	ldr	r3, [r7, #28]
	ldrh	r3, [r3, #12]
	sxth	r3, r3
	subs	r2, r2, r3
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #32]
	ldrh	r3, [r3, #4]
	cmp	r2, r3
	beq	.L491
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #32]
	ldr	r2, [r7, #28]
	ldrh	r2, [r2, #16]
	uxth	r1, r2
	ldr	r2, [r7, #28]
	ldrh	r2, [r2, #12]
	uxth	r2, r2
	subs	r2, r1, r2
	uxth	r2, r2
	strh	r2, [r3, #4]	@ movhi
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #32]
	add	r3, r3, #278528
	adds	r3, r3, #132
	movs	r2, #1
	strh	r2, [r3]	@ movhi
.L491:
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #32]
	ldrh	r2, [r3, #8]
	ldr	r3, [r7, #28]
	ldrh	r3, [r3, #12]
	sxth	r2, r2
	sxth	r3, r3
	cmp	r2, r3
	beq	.L492
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #32]
	ldr	r2, [r7, #28]
	ldrh	r2, [r2, #12]
	strh	r2, [r3, #8]	@ movhi
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #32]
	add	r3, r3, #278528
	adds	r3, r3, #132
	movs	r2, #1
	strh	r2, [r3]	@ movhi
.L492:
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #32]
	ldrh	r2, [r3, #12]
	ldr	r3, [r7, #28]
	ldrh	r3, [r3, #18]
	sxth	r2, r2
	sxth	r3, r3
	cmp	r2, r3
	beq	.L493
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #32]
	ldr	r2, [r7, #28]
	ldrh	r2, [r2, #18]
	strh	r2, [r3, #12]	@ movhi
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #32]
	add	r3, r3, #278528
	adds	r3, r3, #132
	movs	r2, #1
	strh	r2, [r3]	@ movhi
.L493:
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #32]
	ldrh	r2, [r3, #14]
	ldr	r3, [r7, #28]
	ldrh	r3, [r3, #20]
	sxth	r2, r2
	sxth	r3, r3
	cmp	r2, r3
	beq	.L494
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #32]
	ldr	r2, [r7, #28]
	ldrh	r2, [r2, #20]
	strh	r2, [r3, #14]	@ movhi
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #32]
	ldr	r2, [r7, #28]
	ldrh	r2, [r2, #20]
	uxth	r2, r2
	negs	r2, r2
	uxth	r2, r2
	uxth	r2, r2
	strh	r2, [r3, #10]	@ movhi
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #32]
	add	r3, r3, #278528
	adds	r3, r3, #132
	movs	r2, #1
	strh	r2, [r3]	@ movhi
.L494:
	ldr	r3, [r7, #28]
	ldrh	r3, [r3, #18]
	sxth	r2, r3
	ldr	r3, [r7, #28]
	ldrh	r3, [r3, #20]
	sxth	r3, r3
	add	r2, r2, r3
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #32]
	ldrh	r3, [r3, #6]
	cmp	r2, r3
	beq	.L487
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #32]
	ldr	r2, [r7, #28]
	ldrh	r2, [r2, #18]
	uxth	r1, r2
	ldr	r2, [r7, #28]
	ldrh	r2, [r2, #20]
	uxth	r2, r2
	add	r2, r2, r1
	uxth	r2, r2
	strh	r2, [r3, #6]	@ movhi
.L487:
	ldr	r3, [r7, #28]
	ldr	r3, [r3]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L496
	ldr	r3, [r7, #28]
	ldr	r3, [r3]
	and	r3, r3, #32
	cmp	r3, #0
	bne	.L497
	movs	r3, #185
	str	r3, [r7, #16]
	b	.L486
.L497:
	movs	r3, #186
	str	r3, [r7, #16]
	b	.L486
.L496:
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #32]
	cmp	r3, #0
	beq	.L498
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #32]
	add	r3, r3, #278528
	adds	r3, r3, #136
	ldr	r3, [r3]
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #32]
	ldr	r3, [r3, #88]
	cmp	r3, #0
	beq	.L501
	ldr	r3, [r7, #28]
	ldr	r4, [r3, #32]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #32]
	ldr	r3, [r3, #88]
	mov	r2, r3
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #32]
	ldr	r3, [r3, #88]
	adds	r3, r3, #1
	ldr	r1, [r7, #28]
	ldr	r1, [r1, #32]
	ldr	r1, [r1, #84]
	str	r1, [sp]
	add	r1, r7, #16
	str	r1, [sp, #4]
	ldr	r0, [r7, #24]
	movs	r1, #1
	bl	ft_mem_realloc(PLT)
	mov	r3, r0
	str	r3, [r4, #84]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L500
	b	.L486
.L500:
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #32]
	ldr	r2, [r3, #84]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #32]
	ldr	r3, [r3, #88]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	b	.L501
.L498:
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L501
	movs	r3, #3
	str	r3, [r7, #16]
.L501:
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #32]
	ldr	r3, [r7]
	str	r2, [r3]
.L482:
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L502
	ldr	r3, [r7, #28]
	add	r3, r3, #139264
	adds	r3, r3, #40
	mov	r0, r3
	bl	_bdf_list_done(PLT)
	ldr	r3, [r7, #8]
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #24]
	ldr	r0, [r7, #24]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #28]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r0, [r7, #24]
	ldr	r1, [r7, #28]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #28]
.L502:
	ldr	r3, [r7, #16]
	b	.L504
.L486:
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #32]
	mov	r0, r3
	bl	bdf_free_font(PLT)
	ldr	r3, [r7, #8]
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #32]
	ldr	r0, [r7, #24]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #28]
	movs	r2, #0
	str	r2, [r3, #32]
	b	.L482
.L504:
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L506:
	.align	2
.L505:
	.word	_bdf_opts-(.LPIC86+4)
	.word	_bdf_parse_start-(.LPIC87+4)
	.size	bdf_load_font, .-bdf_load_font
	.section	.text.bdf_free_font,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	bdf_free_font, %function
bdf_free_font:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L508
	b	.L507
.L508:
	ldr	r3, [r7, #4]
	add	r3, r3, #278528
	adds	r3, r3, #136
	ldr	r3, [r3]
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #128]
	cmp	r3, #0
	beq	.L510
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #128]
	mov	r0, r3
	ldr	r1, [r7, #8]
	bl	hash_free(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #128]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #128]
.L510:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #84]
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L511
.L513:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #80]
	ldr	r3, [r7, #16]
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.L512
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #80]
	ldr	r3, [r7, #16]
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r3, [r3, #12]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #80]
	ldr	r3, [r7, #16]
	lsls	r3, r3, #4
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [r3, #12]
.L512:
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L511:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #72]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bhi	.L513
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #80]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #80]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	str	r3, [r7, #12]
	b	.L514
.L515:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	adds	r3, r3, #36
	str	r3, [r7, #12]
.L514:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #52]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bhi	.L515
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #68]
	str	r3, [r7, #12]
	b	.L516
.L517:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	adds	r3, r3, #36
	str	r3, [r7, #12]
.L516:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #64]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bhi	.L517
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #56]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #68]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #68]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #104]
	str	r3, [r7, #12]
	b	.L518
.L519:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	adds	r3, r3, #36
	str	r3, [r7, #12]
.L518:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #112]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bhi	.L519
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #104]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #104]
	ldr	r3, [r7, #4]
	add	r3, r3, #278528
	adds	r3, r3, #148
	mov	r0, r3
	ldr	r1, [r7, #8]
	bl	hash_free(PLT)
	ldr	r3, [r7, #4]
	add	r3, r3, #278528
	adds	r3, r3, #140
	ldr	r3, [r3]
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L520
.L522:
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.L521
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #12]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #12]
.L521:
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	adds	r3, r3, #16
	str	r3, [r7, #20]
.L520:
	ldr	r3, [r7, #4]
	add	r3, r3, #278528
	adds	r3, r3, #144
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bhi	.L522
	ldr	r3, [r7, #4]
	add	r3, r3, #278528
	adds	r3, r3, #140
	ldr	r3, [r3]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	add	r3, r3, #278528
	adds	r3, r3, #140
	movs	r2, #0
	str	r2, [r3]
.L507:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	bdf_free_font, .-bdf_free_font
	.section	.text.bdf_get_font_property,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	bdf_get_font_property, %function
bdf_get_font_property:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L524
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #72]
	cmp	r3, #0
	beq	.L524
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L524
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L525
.L524:
	movs	r3, #0
	b	.L526
.L525:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #128]
	ldr	r0, [r7]
	mov	r1, r3
	bl	hash_lookup(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L527
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #80]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #4
	add	r3, r3, r2
	b	.L528
.L527:
	movs	r3, #0
.L528:
.L526:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	bdf_get_font_property, .-bdf_get_font_property
	.section	.text.bdf_cmap_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	bdf_cmap_init, %function
bdf_cmap_init:
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
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #140]
	ldr	r2, [r3, #52]
	ldr	r3, [r7, #12]
	str	r2, [r3, #16]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #144]
	ldr	r3, [r7, #12]
	str	r2, [r3, #20]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	bdf_cmap_init, .-bdf_cmap_init
	.section	.text.bdf_cmap_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	bdf_cmap_done, %function
bdf_cmap_done:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #16]
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	bdf_cmap_done, .-bdf_cmap_done
	.section	.text.bdf_cmap_char_index,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	bdf_cmap_char_index, %function
bdf_cmap_char_index:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #44
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #20]
	str	r3, [r7, #20]
	movs	r3, #0
	strh	r3, [r7, #30]	@ movhi
	movs	r3, #0
	str	r3, [r7, #36]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #16]
	str	r3, [r7, #32]
	b	.L533
.L537:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	lsrs	r3, r3, #1
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	lsls	r3, r3, #3
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bne	.L534
	ldr	r3, [r7, #16]
	lsls	r3, r3, #3
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	ldrh	r3, [r3, #4]
	adds	r3, r3, #1
	strh	r3, [r7, #30]	@ movhi
	b	.L535
.L534:
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bcs	.L536
	ldr	r3, [r7, #16]
	str	r3, [r7, #32]
	b	.L533
.L536:
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L533:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bcc	.L537
.L535:
	ldrh	r3, [r7, #30]
	mov	r0, r3
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	bdf_cmap_char_index, .-bdf_cmap_char_index
	.section	.text.bdf_cmap_char_next,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	bdf_cmap_char_next, %function
bdf_cmap_char_next:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #44
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #20]
	str	r3, [r7, #16]
	movs	r3, #0
	strh	r3, [r7, #30]	@ movhi
	ldr	r3, [r7]
	ldr	r3, [r3]
	adds	r3, r3, #1
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #36]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #16]
	str	r3, [r7, #32]
	b	.L540
.L544:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	lsrs	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #3
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #8]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bne	.L541
	ldr	r3, [r7, #12]
	lsls	r3, r3, #3
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	ldrh	r3, [r3, #4]
	adds	r3, r3, #1
	strh	r3, [r7, #30]	@ movhi
	b	.L542
.L541:
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcs	.L543
	ldr	r3, [r7, #12]
	str	r3, [r7, #32]
	b	.L540
.L543:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L540:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bcc	.L544
	movs	r3, #0
	str	r3, [r7, #24]
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bls	.L542
	ldr	r3, [r7, #36]
	lsls	r3, r3, #3
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #24]
	ldr	r3, [r7, #36]
	lsls	r3, r3, #3
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	ldrh	r3, [r3, #4]
	adds	r3, r3, #1
	strh	r3, [r7, #30]	@ movhi
.L542:
	ldr	r3, [r7]
	ldr	r2, [r7, #24]
	str	r2, [r3]
	ldrh	r3, [r7, #30]
	mov	r0, r3
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	bdf_cmap_char_next, .-bdf_cmap_char_next
	.section	.data.rel.ro.local.bdf_cmap_class,"aw",%progbits
	.align	2
	.type	bdf_cmap_class, %object
	.size	bdf_cmap_class, 40
bdf_cmap_class:
	.word	24
	.word	bdf_cmap_init
	.word	bdf_cmap_done
	.word	bdf_cmap_char_index
	.word	bdf_cmap_char_next
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.rodata
	.align	2
.LC101:
	.ascii	"Oblique\000"
	.align	2
.LC102:
	.ascii	"Italic\000"
	.align	2
.LC103:
	.ascii	"Bold\000"
	.align	2
.LC104:
	.ascii	"Regular\000"
	.section	.text.bdf_interpret_style,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	bdf_interpret_style, %function
bdf_interpret_style:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #80
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #40]
	ldr	r3, [r7, #4]
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #100]
	str	r3, [r7, #56]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #140]
	str	r3, [r7, #52]
	movs	r3, #0
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #36]
	ldr	r3, [r7, #60]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r0, [r7, #52]
	ldr	r3, .L573
.LPIC88:
	add	r3, pc
	mov	r1, r3
	bl	bdf_get_font_property(PLT)
	str	r0, [r7, #48]
	ldr	r3, [r7, #48]
	cmp	r3, #0
	beq	.L547
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.L547
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L547
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #79
	beq	.L548
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #111
	beq	.L548
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #73
	beq	.L548
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #105
	bne	.L547
.L548:
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #12]
	orr	r2, r3, #1
	ldr	r3, [r7, #60]
	str	r2, [r3, #12]
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #79
	beq	.L549
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #111
	bne	.L550
.L549:
	ldr	r3, .L573+4
.LPIC89:
	add	r3, pc
	b	.L551
.L550:
	ldr	r3, .L573+8
.LPIC90:
	add	r3, pc
.L551:
	str	r3, [r7, #32]
.L547:
	ldr	r0, [r7, #52]
	ldr	r3, .L573+12
.LPIC91:
	add	r3, pc
	mov	r1, r3
	bl	bdf_get_font_property(PLT)
	str	r0, [r7, #48]
	ldr	r3, [r7, #48]
	cmp	r3, #0
	beq	.L552
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.L552
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L552
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #66
	beq	.L553
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #98
	bne	.L552
.L553:
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #12]
	orr	r2, r3, #2
	ldr	r3, [r7, #60]
	str	r2, [r3, #12]
	ldr	r3, .L573+16
.LPIC92:
	add	r3, pc
	str	r3, [r7, #28]
.L552:
	ldr	r0, [r7, #52]
	ldr	r3, .L573+20
.LPIC93:
	add	r3, pc
	mov	r1, r3
	bl	bdf_get_font_property(PLT)
	str	r0, [r7, #48]
	ldr	r3, [r7, #48]
	cmp	r3, #0
	beq	.L554
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.L554
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L554
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L554
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #78
	beq	.L554
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #110
	beq	.L554
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #12]
	str	r3, [r7, #36]
.L554:
	ldr	r0, [r7, #52]
	ldr	r3, .L573+24
.LPIC94:
	add	r3, pc
	mov	r1, r3
	bl	bdf_get_font_property(PLT)
	str	r0, [r7, #48]
	ldr	r3, [r7, #48]
	cmp	r3, #0
	beq	.L555
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.L555
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L555
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L555
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #78
	beq	.L555
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #110
	beq	.L555
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #12]
	str	r3, [r7, #24]
.L555:
	movs	r3, #0
	str	r3, [r7, #72]
	movs	r3, #0
	str	r3, [r7, #76]
	b	.L556
.L558:
	ldr	r3, [r7, #76]
	lsls	r3, r3, #2
	add	r1, r7, #80
	add	r3, r3, r1
	movs	r2, #0
	str	r2, [r3, #-72]
	ldr	r3, [r7, #76]
	lsls	r3, r3, #2
	add	r2, r7, #80
	add	r3, r3, r2
	ldr	r3, [r3, #-56]
	cmp	r3, #0
	beq	.L557
	ldr	r3, [r7, #76]
	lsls	r3, r3, #2
	add	r1, r7, #80
	add	r3, r3, r1
	ldr	r3, [r3, #-56]
	mov	r0, r3
	bl	strlen(PLT)
	mov	r2, r0
	ldr	r3, [r7, #76]
	lsls	r3, r3, #2
	add	r1, r7, #80
	add	r3, r3, r1
	str	r2, [r3, #-72]
	ldr	r3, [r7, #76]
	lsls	r3, r3, #2
	add	r2, r7, #80
	add	r3, r3, r2
	ldr	r2, [r3, #-72]
	ldr	r3, [r7, #72]
	add	r3, r3, r2
	adds	r3, r3, #1
	str	r3, [r7, #72]
.L557:
	ldr	r3, [r7, #76]
	adds	r3, r3, #1
	str	r3, [r7, #76]
.L556:
	ldr	r3, [r7, #76]
	cmp	r3, #3
	bls	.L558
	ldr	r3, [r7, #72]
	cmp	r3, #0
	bne	.L559
	ldr	r3, .L573+28
.LPIC95:
	add	r3, pc
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	mov	r0, r3
	bl	strlen(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #72]
.L559:
	ldr	r2, [r7, #72]
	add	r3, r7, #40
	ldr	r0, [r7, #56]
	mov	r1, r2
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #60]
	str	r2, [r3, #24]
	ldr	r3, [r7, #40]
	cmp	r3, #0
	beq	.L560
	ldr	r3, [r7, #40]
	b	.L572
.L560:
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #24]
	str	r3, [r7, #68]
	movs	r3, #0
	str	r3, [r7, #76]
	b	.L562
.L571:
	ldr	r3, [r7, #76]
	lsls	r3, r3, #2
	add	r1, r7, #80
	add	r3, r3, r1
	ldr	r3, [r3, #-56]
	str	r3, [r7, #44]
	ldr	r3, [r7, #76]
	lsls	r3, r3, #2
	add	r2, r7, #80
	add	r3, r3, r2
	ldr	r3, [r3, #-72]
	str	r3, [r7, #72]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bne	.L563
	b	.L564
.L563:
	ldr	r3, [r7, #60]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #68]
	cmp	r2, r3
	beq	.L565
	ldr	r3, [r7, #68]
	adds	r2, r3, #1
	str	r2, [r7, #68]
	movs	r2, #32
	strb	r2, [r3]
.L565:
	ldr	r0, [r7, #68]
	ldr	r1, [r7, #44]
	ldr	r2, [r7, #72]
	bl	memcpy(PLT)
	ldr	r3, [r7, #76]
	cmp	r3, #0
	beq	.L566
	ldr	r3, [r7, #76]
	cmp	r3, #3
	bne	.L567
.L566:
	movs	r3, #0
	str	r3, [r7, #64]
	b	.L568
.L570:
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #64]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L569
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #64]
	add	r3, r3, r2
	movs	r2, #45
	strb	r2, [r3]
.L569:
	ldr	r3, [r7, #64]
	adds	r3, r3, #1
	str	r3, [r7, #64]
.L568:
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #72]
	cmp	r2, r3
	bcc	.L570
.L567:
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #72]
	add	r3, r3, r2
	str	r3, [r7, #68]
.L564:
	ldr	r3, [r7, #76]
	adds	r3, r3, #1
	str	r3, [r7, #76]
.L562:
	ldr	r3, [r7, #76]
	cmp	r3, #3
	bls	.L571
	ldr	r3, [r7, #68]
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #40]
.L572:
	mov	r0, r3
	adds	r7, r7, #80
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L574:
	.align	2
.L573:
	.word	.LC65-(.LPIC88+4)
	.word	.LC101-(.LPIC89+4)
	.word	.LC102-(.LPIC90+4)
	.word	.LC79-(.LPIC91+4)
	.word	.LC103-(.LPIC92+4)
	.word	.LC64-(.LPIC93+4)
	.word	.LC0-(.LPIC94+4)
	.word	.LC104-(.LPIC95+4)
	.size	bdf_interpret_style, .-bdf_interpret_style
	.section	.text.BDF_Face_Done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	BDF_Face_Done, %function
BDF_Face_Done:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L576
	b	.L575
.L576:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #100]
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #140]
	mov	r0, r3
	bl	bdf_free_font(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #144]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #144]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #132]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #132]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #136]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #136]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #32]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #140]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #140]
.L575:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	BDF_Face_Done, .-BDF_Face_Done
	.global	__aeabi_idiv
	.section	.rodata
	.align	2
.LC105:
	.ascii	"10646\000"
	.align	2
.LC106:
	.ascii	"8859\000"
	.align	2
.LC107:
	.ascii	"1\000"
	.section	.text.BDF_Face_Init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	BDF_Face_Init, %function
BDF_Face_Init:
	@ args = 4, pretend = 0, frame = 112
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #120
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #64]
	ldr	r3, [r7, #8]
	str	r3, [r7, #96]
	ldr	r3, [r7, #96]
	ldr	r3, [r3, #100]
	str	r3, [r7, #92]
	movs	r3, #0
	str	r3, [r7, #60]
	ldr	r0, [r7, #12]
	movs	r1, #0
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #64]
	ldr	r3, [r7, #64]
	cmp	r3, #0
	beq	.L579
	b	.L580
.L579:
	movs	r3, #1
	str	r3, [r7, #44]
	movs	r3, #1
	str	r3, [r7, #48]
	movs	r3, #0
	str	r3, [r7, #52]
	movs	r3, #8
	str	r3, [r7, #56]
	add	r2, r7, #44
	add	r3, r7, #60
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #92]
	bl	bdf_load_font(PLT)
	mov	r3, r0
	str	r3, [r7, #64]
	ldr	r3, [r7, #64]
	uxtb	r3, r3
	cmp	r3, #176
	bne	.L581
	nop
.L582:
	ldr	r0, [r7, #8]
	bl	BDF_Face_Done(PLT)
	movs	r3, #2
	b	.L615
.L581:
	ldr	r3, [r7, #64]
	cmp	r3, #0
	beq	.L583
	b	.L580
.L583:
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #96]
	str	r2, [r3, #140]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	ble	.L584
	ldr	r3, [r7, #4]
	uxth	r3, r3
	cmp	r3, #0
	ble	.L584
	ldr	r0, [r7, #8]
	bl	BDF_Face_Done(PLT)
	movs	r3, #6
	b	.L615
.L584:
	movs	r3, #0
	str	r3, [r7, #88]
	ldr	r3, [r7, #8]
	movs	r2, #1
	str	r2, [r3]
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	orr	r2, r3, #146
	ldr	r3, [r7, #8]
	str	r2, [r3, #8]
	ldr	r3, [r7, #60]
	mov	r0, r3
	ldr	r3, .L616
.LPIC96:
	add	r3, pc
	mov	r1, r3
	bl	bdf_get_font_property(PLT)
	str	r0, [r7, #88]
	ldr	r3, [r7, #88]
	cmp	r3, #0
	beq	.L586
	ldr	r3, [r7, #88]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.L586
	ldr	r3, [r7, #88]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L586
	ldr	r3, [r7, #88]
	ldr	r3, [r3, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #77
	beq	.L587
	ldr	r3, [r7, #88]
	ldr	r3, [r3, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #109
	beq	.L587
	ldr	r3, [r7, #88]
	ldr	r3, [r3, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #67
	beq	.L587
	ldr	r3, [r7, #88]
	ldr	r3, [r3, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #99
	bne	.L586
.L587:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	orr	r2, r3, #4
	ldr	r3, [r7, #8]
	str	r2, [r3, #8]
.L586:
	ldr	r3, [r7, #60]
	mov	r0, r3
	ldr	r3, .L616+4
.LPIC97:
	add	r3, pc
	mov	r1, r3
	bl	bdf_get_font_property(PLT)
	str	r0, [r7, #88]
	ldr	r3, [r7, #88]
	cmp	r3, #0
	beq	.L588
	ldr	r3, [r7, #88]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L588
	ldr	r3, [r7, #88]
	ldr	r2, [r3, #12]
	add	r3, r7, #64
	ldr	r0, [r7, #92]
	mov	r1, r2
	mov	r2, r3
	bl	ft_mem_strdup(PLT)
	mov	r2, r0
	ldr	r3, [r7, #8]
	str	r2, [r3, #20]
	ldr	r3, [r7, #64]
	cmp	r3, #0
	beq	.L589
	b	.L580
.L589:
	b	.L590
.L588:
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [r3, #20]
.L590:
	ldr	r0, [r7, #96]
	bl	bdf_interpret_style(PLT)
	mov	r3, r0
	str	r3, [r7, #64]
	ldr	r3, [r7, #64]
	cmp	r3, #0
	beq	.L591
	b	.L580
.L591:
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #48]
	adds	r3, r3, #1
	mov	r2, r3
	ldr	r3, [r7, #8]
	str	r2, [r3, #16]
	ldr	r3, [r7, #8]
	movs	r2, #1
	str	r2, [r3, #28]
	movs	r3, #0
	str	r3, [sp]
	add	r3, r7, #64
	str	r3, [sp, #4]
	ldr	r0, [r7, #92]
	movs	r1, #16
	movs	r2, #0
	movs	r3, #1
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #8]
	str	r2, [r3, #32]
	ldr	r3, [r7, #64]
	cmp	r3, #0
	beq	.L592
	b	.L580
.L592:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #32]
	str	r3, [r7, #84]
	movs	r3, #0
	strh	r3, [r7, #110]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #108]	@ movhi
	ldr	r0, [r7, #84]
	movs	r1, #0
	movs	r2, #16
	bl	memset(PLT)
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #40]
	uxth	r2, r3
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #44]
	uxth	r3, r3
	add	r3, r3, r2
	uxth	r3, r3
	uxth	r2, r3
	ldr	r3, [r7, #84]
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #60]
	mov	r0, r3
	ldr	r3, .L616+8
.LPIC98:
	add	r3, pc
	mov	r1, r3
	bl	bdf_get_font_property(PLT)
	str	r0, [r7, #88]
	ldr	r3, [r7, #88]
	cmp	r3, #0
	beq	.L593
	ldr	r3, [r7, #88]
	ldr	r3, [r3, #12]
	adds	r2, r3, #5
	movw	r3, #26215
	movt	r3, 26214
	smull	r0, r3, r3, r2
	asrs	r1, r3, #2
	asrs	r3, r2, #31
	subs	r3, r1, r3
	uxth	r2, r3
	ldr	r3, [r7, #84]
	strh	r2, [r3, #2]	@ movhi
	b	.L594
.L593:
	ldr	r3, [r7, #84]
	ldrh	r3, [r3]
	sxth	r3, r3
	lsls	r2, r3, #1
	movw	r3, #21846
	movt	r3, 21845
	smull	r0, r1, r3, r2
	asrs	r3, r2, #31
	subs	r3, r1, r3
	uxth	r2, r3
	ldr	r3, [r7, #84]
	strh	r2, [r3, #2]	@ movhi
.L594:
	ldr	r3, [r7, #60]
	mov	r0, r3
	ldr	r3, .L616+12
.LPIC99:
	add	r3, pc
	mov	r1, r3
	bl	bdf_get_font_property(PLT)
	str	r0, [r7, #88]
	ldr	r3, [r7, #88]
	cmp	r3, #0
	beq	.L595
	ldr	r3, [r7, #88]
	ldr	r3, [r3, #12]
	mov	r2, #460800
	mul	r3, r2, r3
	add	r3, r3, #36096
	adds	r3, r3, #39
	movw	r2, #23971
	movt	r2, 14857
	smull	r1, r2, r2, r3
	asrs	r2, r2, #14
	asrs	r3, r3, #31
	subs	r2, r2, r3
	ldr	r3, [r7, #84]
	str	r2, [r3, #4]
	b	.L596
.L595:
	ldr	r3, [r7, #84]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	lsls	r2, r3, #6
	ldr	r3, [r7, #84]
	str	r2, [r3, #4]
.L596:
	ldr	r3, [r7, #60]
	mov	r0, r3
	ldr	r3, .L616+16
.LPIC100:
	add	r3, pc
	mov	r1, r3
	bl	bdf_get_font_property(PLT)
	str	r0, [r7, #88]
	ldr	r3, [r7, #88]
	cmp	r3, #0
	beq	.L597
	ldr	r3, [r7, #88]
	ldr	r3, [r3, #12]
	uxth	r3, r3
	sxth	r3, r3
	lsls	r2, r3, #6
	ldr	r3, [r7, #84]
	str	r2, [r3, #12]
.L597:
	ldr	r3, [r7, #60]
	mov	r0, r3
	ldr	r3, .L616+20
.LPIC101:
	add	r3, pc
	mov	r1, r3
	bl	bdf_get_font_property(PLT)
	str	r0, [r7, #88]
	ldr	r3, [r7, #88]
	cmp	r3, #0
	beq	.L598
	ldr	r3, [r7, #88]
	ldr	r3, [r3, #12]
	strh	r3, [r7, #110]	@ movhi
.L598:
	ldr	r3, [r7, #60]
	mov	r0, r3
	ldr	r3, .L616+24
.LPIC102:
	add	r3, pc
	mov	r1, r3
	bl	bdf_get_font_property(PLT)
	str	r0, [r7, #88]
	ldr	r3, [r7, #88]
	cmp	r3, #0
	beq	.L599
	ldr	r3, [r7, #88]
	ldr	r3, [r3, #12]
	strh	r3, [r7, #108]	@ movhi
.L599:
	ldr	r3, [r7, #84]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	bne	.L600
	ldr	r3, [r7, #84]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #84]
	str	r2, [r3, #12]
	ldrsh	r3, [r7, #108]
	cmp	r3, #0
	beq	.L600
	ldr	r3, [r7, #84]
	ldr	r3, [r3, #12]
	ldrsh	r2, [r7, #108]
	mul	r2, r2, r3
	movw	r3, #36409
	movt	r3, 14563
	smull	r0, r3, r3, r2
	asrs	r1, r3, #4
	asrs	r3, r2, #31
	subs	r2, r1, r3
	ldr	r3, [r7, #84]
	str	r2, [r3, #12]
.L600:
	ldrsh	r3, [r7, #110]
	cmp	r3, #0
	beq	.L601
	ldrsh	r3, [r7, #108]
	cmp	r3, #0
	beq	.L601
	ldr	r3, [r7, #84]
	ldr	r3, [r3, #12]
	ldrsh	r2, [r7, #110]
	mul	r2, r2, r3
	ldrsh	r3, [r7, #108]
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #84]
	str	r2, [r3, #8]
	b	.L602
.L601:
	ldr	r3, [r7, #84]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #84]
	str	r2, [r3, #8]
.L602:
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #56]
	str	r3, [r7, #80]
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #48]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #64
	str	r2, [sp, #4]
	ldr	r0, [r7, #92]
	movs	r1, #8
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #96]
	str	r2, [r3, #144]
	ldr	r3, [r7, #64]
	cmp	r3, #0
	beq	.L603
	b	.L580
.L603:
	ldr	r3, [r7, #96]
	movs	r2, #0
	str	r2, [r3, #164]
	movs	r3, #0
	str	r3, [r7, #104]
	b	.L604
.L606:
	ldr	r3, [r7, #96]
	ldr	r2, [r3, #144]
	ldr	r3, [r7, #104]
	lsls	r3, r3, #3
	adds	r1, r2, r3
	ldr	r2, [r7, #104]
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #80]
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	str	r3, [r1]
	ldr	r3, [r7, #96]
	ldr	r2, [r3, #144]
	ldr	r3, [r7, #104]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r7, #104]
	uxth	r2, r2
	strh	r2, [r3, #4]	@ movhi
	ldr	r2, [r7, #104]
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #80]
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #36]
	cmp	r2, r3
	bne	.L605
	ldr	r3, [r7, #104]
	cmp	r3, #-1
	beq	.L605
	ldr	r3, [r7, #96]
	ldr	r2, [r7, #104]
	str	r2, [r3, #164]
.L605:
	ldr	r3, [r7, #104]
	adds	r3, r3, #1
	str	r3, [r7, #104]
.L604:
	ldr	r3, [r7, #60]
	ldr	r2, [r3, #48]
	ldr	r3, [r7, #104]
	cmp	r2, r3
	bhi	.L606
	movs	r3, #0
	strb	r3, [r7, #103]
	ldr	r3, [r7, #60]
	mov	r0, r3
	ldr	r3, .L616+28
.LPIC103:
	add	r3, pc
	mov	r1, r3
	bl	bdf_get_font_property(PLT)
	str	r0, [r7, #76]
	ldr	r3, [r7, #60]
	mov	r0, r3
	ldr	r3, .L616+32
.LPIC104:
	add	r3, pc
	mov	r1, r3
	bl	bdf_get_font_property(PLT)
	str	r0, [r7, #72]
	ldr	r3, [r7, #76]
	cmp	r3, #0
	beq	.L607
	ldr	r3, [r7, #72]
	cmp	r3, #0
	beq	.L607
	ldr	r3, [r7, #76]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.L607
	ldr	r3, [r7, #72]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.L607
	ldr	r3, [r7, #76]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L607
	ldr	r3, [r7, #72]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L607
	ldr	r3, [r7, #72]
	ldr	r2, [r3, #12]
	add	r3, r7, #64
	ldr	r0, [r7, #92]
	mov	r1, r2
	mov	r2, r3
	bl	ft_mem_strdup(PLT)
	mov	r2, r0
	ldr	r3, [r7, #96]
	str	r2, [r3, #132]
	ldr	r3, [r7, #64]
	cmp	r3, #0
	bne	.L580
	ldr	r3, [r7, #76]
	ldr	r2, [r3, #12]
	add	r3, r7, #64
	ldr	r0, [r7, #92]
	mov	r1, r2
	mov	r2, r3
	bl	ft_mem_strdup(PLT)
	mov	r2, r0
	ldr	r3, [r7, #96]
	str	r2, [r3, #136]
	ldr	r3, [r7, #64]
	cmp	r3, #0
	bne	.L580
	ldr	r3, [r7, #96]
	ldr	r3, [r3, #136]
	str	r3, [r7, #68]
	ldr	r3, [r7, #68]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #105
	beq	.L608
	ldr	r3, [r7, #68]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #73
	bne	.L609
.L608:
	ldr	r3, [r7, #68]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #115
	beq	.L610
	ldr	r3, [r7, #68]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #83
	bne	.L609
.L610:
	ldr	r3, [r7, #68]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #111
	beq	.L611
	ldr	r3, [r7, #68]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #79
	bne	.L609
.L611:
	ldr	r3, [r7, #68]
	adds	r3, r3, #3
	str	r3, [r7, #68]
	ldr	r0, [r7, #68]
	ldr	r3, .L616+36
.LPIC105:
	add	r3, pc
	mov	r1, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L612
	ldr	r0, [r7, #68]
	ldr	r3, .L616+40
.LPIC106:
	add	r3, pc
	mov	r1, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L609
	ldr	r3, [r7, #96]
	ldr	r3, [r3, #132]
	mov	r0, r3
	ldr	r3, .L616+44
.LPIC107:
	add	r3, pc
	mov	r1, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L609
.L612:
	movs	r3, #1
	strb	r3, [r7, #103]
.L609:
	ldr	r3, [r7, #96]
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #36]
	movs	r3, #0
	strh	r3, [r7, #40]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #42]	@ movhi
	ldrb	r3, [r7, #103]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L613
	movw	r3, #26979
	movt	r3, 30062
	str	r3, [r7, #36]
	movs	r3, #3
	strh	r3, [r7, #40]	@ movhi
	movs	r3, #1
	strh	r3, [r7, #42]	@ movhi
.L613:
	add	r3, r7, #32
	ldr	r2, .L616+48
.LPIC108:
	add	r2, pc
	mov	r0, r2
	movs	r1, #0
	mov	r2, r3
	movs	r3, #0
	bl	FT_CMap_New(PLT)
	mov	r3, r0
	str	r3, [r7, #64]
	b	.L580
.L607:
	ldr	r3, [r7, #96]
	str	r3, [r7, #20]
	movw	r3, #20290
	movt	r3, 16708
	str	r3, [r7, #24]
	movs	r3, #7
	strh	r3, [r7, #28]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #30]	@ movhi
	add	r3, r7, #20
	ldr	r2, .L616+52
.LPIC109:
	add	r2, pc
	mov	r0, r2
	movs	r1, #0
	mov	r2, r3
	movs	r3, #0
	bl	FT_CMap_New(PLT)
	mov	r3, r0
	str	r3, [r7, #64]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #36]
	cmp	r3, #0
	beq	.L580
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #40]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	str	r2, [r3, #92]
.L580:
	ldr	r3, [r7, #64]
.L615:
	mov	r0, r3
	adds	r7, r7, #112
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L617:
	.align	2
.L616:
	.word	.LC67-(.LPIC96+4)
	.word	.LC15-(.LPIC97+4)
	.word	.LC1-(.LPIC98+4)
	.word	.LC29-(.LPIC99+4)
	.word	.LC28-(.LPIC100+4)
	.word	.LC62-(.LPIC101+4)
	.word	.LC63-(.LPIC102+4)
	.word	.LC7-(.LPIC103+4)
	.word	.LC6-(.LPIC104+4)
	.word	.LC105-(.LPIC105+4)
	.word	.LC106-(.LPIC106+4)
	.word	.LC107-(.LPIC107+4)
	.word	bdf_cmap_class-(.LPIC108+4)
	.word	bdf_cmap_class-(.LPIC109+4)
	.size	BDF_Face_Init, .-BDF_Face_Init
	.section	.text.BDF_Size_Select,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	BDF_Size_Select, %function
BDF_Size_Select:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #140]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r1, [r7]
	bl	FT_Select_Metrics(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #40]
	lsls	r2, r3, #6
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #44]
	mov	r3, r2
	lsls	r3, r3, #26
	subs	r3, r3, r2
	lsls	r3, r3, #6
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #28]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #4]
	lsls	r2, r3, #6
	ldr	r3, [r7, #4]
	str	r2, [r3, #36]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	BDF_Size_Select, .-BDF_Size_Select
	.section	.text.BDF_Size_Request,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	BDF_Size_Request, %function
BDF_Size_Request:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #32]
	str	r3, [r7, #20]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #140]
	str	r3, [r7, #16]
	movs	r3, #23
	str	r3, [r7, #28]
	ldr	r3, [r7]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L621
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	ldr	r2, [r7]
	ldr	r2, [r2, #16]
	mul	r3, r2, r3
	add	r2, r3, #36
	movw	r3, #36409
	movt	r3, 14563
	smull	r1, r3, r3, r2
	asrs	r1, r3, #4
	asrs	r3, r2, #31
	subs	r3, r1, r3
	b	.L622
.L621:
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
.L622:
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	adds	r3, r3, #32
	asrs	r3, r3, #6
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L624
	cmp	r3, #1
	beq	.L625
	b	.L631
.L624:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #12]
	adds	r3, r3, #32
	asrs	r2, r3, #6
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bne	.L626
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L627
.L626:
	b	.L627
.L625:
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #44]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bne	.L628
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L627
.L628:
	b	.L627
.L631:
	movs	r3, #7
	str	r3, [r7, #28]
	nop
.L627:
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L629
	ldr	r3, [r7, #28]
	b	.L630
.L629:
	ldr	r0, [r7, #4]
	movs	r1, #0
	bl	BDF_Size_Select(PLT)
	mov	r3, r0
.L630:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	BDF_Size_Request, .-BDF_Size_Request
	.section	.text.BDF_Glyph_Load,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	BDF_Glyph_Load, %function
BDF_Glyph_Load:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #72
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	str	r3, [r7, #64]
	ldr	r3, [r7, #64]
	str	r3, [r7, #60]
	movs	r3, #0
	str	r3, [r7, #68]
	ldr	r3, [r7, #12]
	adds	r3, r3, #76
	str	r3, [r7, #56]
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #140]
	add	r3, r3, #278528
	adds	r3, r3, #134
	ldrh	r3, [r3]
	str	r3, [r7, #52]
	ldr	r3, [r7, #60]
	cmp	r3, #0
	bne	.L633
	movs	r3, #35
	str	r3, [r7, #68]
	b	.L634
.L633:
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #16]
	mov	r2, r3
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bhi	.L635
	movs	r3, #6
	str	r3, [r7, #68]
	b	.L634
.L635:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L636
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #164]
	str	r3, [r7, #4]
	b	.L637
.L636:
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	str	r3, [r7, #4]
.L637:
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #140]
	ldr	r1, [r3, #56]
	ldr	r2, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	add	r4, r7, #16
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldrh	r3, [r7, #30]
	mov	r2, r3
	ldr	r3, [r7, #56]
	str	r2, [r3]
	ldrh	r3, [r7, #28]
	mov	r2, r3
	ldr	r3, [r7, #56]
	str	r2, [r3, #4]
	ldr	r3, [r7, #44]
	mov	r2, r3
	ldr	r3, [r7, #56]
	str	r2, [r3, #8]
	ldr	r3, [r7, #40]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_glyphslot_set_bitmap(PLT)
	ldr	r3, [r7, #52]
	subs	r3, r3, #1
	cmp	r3, #7
	bhi	.L638
	adr	r1, .L640
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L640:
	.word	.L639+1-.L640
	.word	.L641+1-.L640
	.word	.L638+1-.L640
	.word	.L642+1-.L640
	.word	.L638+1-.L640
	.word	.L638+1-.L640
	.word	.L638+1-.L640
	.word	.L643+1-.L640
.L639:
	ldr	r3, [r7, #56]
	movs	r2, #1
	strb	r2, [r3, #18]
	b	.L638
.L641:
	ldr	r3, [r7, #56]
	movs	r2, #3
	strb	r2, [r3, #18]
	b	.L638
.L642:
	ldr	r3, [r7, #56]
	movs	r2, #4
	strb	r2, [r3, #18]
	b	.L638
.L643:
	ldr	r3, [r7, #56]
	movs	r2, #2
	strb	r2, [r3, #18]
	ldr	r3, [r7, #56]
	mov	r2, #256
	strh	r2, [r3, #16]	@ movhi
	nop
.L638:
	ldr	r2, [r7, #12]
	movw	r3, #29811
	movt	r3, 25193
	str	r3, [r2, #72]
	ldrh	r3, [r7, #32]
	sxth	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #100]
	ldrh	r3, [r7, #36]
	sxth	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #104]
	ldrh	r3, [r7, #26]
	lsls	r2, r3, #6
	ldr	r3, [r7, #12]
	str	r2, [r3, #40]
	ldrh	r3, [r7, #32]
	sxth	r3, r3
	lsls	r2, r3, #6
	ldr	r3, [r7, #12]
	str	r2, [r3, #32]
	ldrh	r3, [r7, #36]
	sxth	r3, r3
	lsls	r2, r3, #6
	ldr	r3, [r7, #12]
	str	r2, [r3, #36]
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #6
	mov	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #24]
	ldr	r3, [r7, #56]
	ldr	r3, [r3]
	lsls	r3, r3, #6
	mov	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #28]
	ldr	r3, [r7, #12]
	add	r2, r3, #24
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #140]
	ldrh	r3, [r3, #6]
	lsls	r3, r3, #6
	mov	r0, r2
	mov	r1, r3
	bl	ft_synthesize_vertical_metrics(PLT)
.L634:
	ldr	r3, [r7, #68]
	mov	r0, r3
	adds	r7, r7, #72
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.size	BDF_Glyph_Load, .-BDF_Glyph_Load
	.section	.text.bdf_get_bdf_property,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	bdf_get_bdf_property, %function
bdf_get_bdf_property:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #140]
	mov	r0, r3
	ldr	r1, [r7, #8]
	bl	bdf_get_font_property(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L646
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	cmp	r3, #2
	beq	.L648
	cmp	r3, #3
	beq	.L649
	cmp	r3, #1
	beq	.L650
	b	.L646
.L650:
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3]
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	b	.L651
.L648:
	ldr	r3, [r7, #4]
	movs	r2, #2
	str	r2, [r3]
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	b	.L651
.L649:
	ldr	r3, [r7, #4]
	movs	r2, #3
	str	r2, [r3]
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	nop
.L651:
	movs	r3, #0
	b	.L652
.L646:
	movs	r3, #6
.L652:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	bdf_get_bdf_property, .-bdf_get_bdf_property
	.section	.text.bdf_get_charset_id,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	bdf_get_charset_id, %function
bdf_get_charset_id:
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
	ldr	r2, [r3, #132]
	ldr	r3, [r7, #8]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #136]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	bdf_get_charset_id, .-bdf_get_charset_id
	.section	.data.rel.ro.local.bdf_service_bdf,"aw",%progbits
	.align	2
	.type	bdf_service_bdf, %object
	.size	bdf_service_bdf, 8
bdf_service_bdf:
	.word	bdf_get_charset_id
	.word	bdf_get_bdf_property
	.section	.rodata
	.align	2
.LC108:
	.ascii	"bdf\000"
	.align	2
.LC109:
	.ascii	"font-format\000"
	.align	2
.LC110:
	.ascii	"BDF\000"
	.section	.data.rel.ro.local.bdf_services,"aw",%progbits
	.align	2
	.type	bdf_services, %object
	.size	bdf_services, 24
bdf_services:
	.word	.LC108
	.word	bdf_service_bdf
	.word	.LC109
	.word	.LC110
	.word	0
	.word	0
	.section	.text.bdf_driver_requester,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	bdf_driver_requester, %function
bdf_driver_requester:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, .L657
.LPIC110:
	add	r3, pc
	mov	r0, r3
	ldr	r1, [r7]
	bl	ft_service_list_lookup(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L658:
	.align	2
.L657:
	.word	bdf_services-(.LPIC110+4)
	.size	bdf_driver_requester, .-bdf_driver_requester
	.global	bdf_driver_class
	.section	.data.rel.ro.local.bdf_driver_class,"aw",%progbits
	.align	2
	.type	bdf_driver_class, %object
	.size	bdf_driver_class, 96
bdf_driver_class:
	.word	513
	.word	28
	.word	.LC108
	.word	65536
	.word	131072
	.word	0
	.word	0
	.word	0
	.word	bdf_driver_requester
	.word	168
	.word	44
	.word	160
	.word	BDF_Face_Init
	.word	BDF_Face_Done
	.word	0
	.word	0
	.word	0
	.word	0
	.word	BDF_Glyph_Load
	.word	0
	.word	0
	.word	0
	.word	BDF_Size_Request
	.word	BDF_Size_Select
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
