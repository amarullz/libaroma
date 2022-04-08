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
	.file	"hb-buffer-serialize.cc"
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
	beq	.L2
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #12
	beq	.L2
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L2
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #13
	beq	.L2
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #9
	beq	.L2
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #11
	bne	.L3
.L2:
	movs	r3, #1
	b	.L4
.L3:
	movs	r3, #0
.L4:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZL7ISSPACEh, .-_ZL7ISSPACEh
	.section	.rodata
	.align	2
.LC0:
	.ascii	"text\000"
	.align	2
.LC1:
	.ascii	"json\000"
	.section	.data.rel.local._ZL17serialize_formats,"aw",%progbits
	.align	2
	.type	_ZL17serialize_formats, %object
	.size	_ZL17serialize_formats, 12
_ZL17serialize_formats:
	.word	.LC0
	.word	.LC1
	.word	0
	.section	.text.hb_buffer_serialize_list_formats,"ax",%progbits
	.align	2
	.global	hb_buffer_serialize_list_formats
	.thumb
	.thumb_func
	.type	hb_buffer_serialize_list_formats, %function
hb_buffer_serialize_list_formats:
	.fnstart
.LFB112:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L8
.LPIC0:
	add	r3, pc
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L9:
	.align	2
.L8:
	.word	_ZL17serialize_formats-(.LPIC0+4)
	.cantunwind
	.fnend
	.size	hb_buffer_serialize_list_formats, .-hb_buffer_serialize_list_formats
	.section	.text.hb_buffer_serialize_format_from_string,"ax",%progbits
	.align	2
	.global	hb_buffer_serialize_format_from_string
	.thumb
	.thumb_func
	.type	hb_buffer_serialize_format_from_string, %function
hb_buffer_serialize_format_from_string:
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
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	hb_tag_from_string(PLT)
	mov	r3, r0
	and	r3, r3, #-538976289
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	hb_buffer_serialize_format_from_string, .-hb_buffer_serialize_format_from_string
	.section	.text.hb_buffer_serialize_format_to_string,"ax",%progbits
	.align	2
	.global	hb_buffer_serialize_format_to_string
	.thumb
	.thumb_func
	.type	hb_buffer_serialize_format_to_string, %function
hb_buffer_serialize_format_to_string:
	.fnstart
.LFB114:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r2, [r7, #4]
	movw	r3, #20302
	movt	r3, 19027
	cmp	r2, r3
	beq	.L14
	movw	r3, #22612
	movt	r3, 21573
	cmp	r2, r3
	bne	.L17
	ldr	r3, .L18
.LPIC1:
	add	r3, pc
	ldr	r3, [r3]
	b	.L16
.L14:
	ldr	r3, .L18+4
.LPIC2:
	add	r3, pc
	ldr	r3, [r3, #4]
	b	.L16
.L17:
	movs	r3, #0
.L16:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L19:
	.align	2
.L18:
	.word	_ZL17serialize_formats-(.LPIC1+4)
	.word	_ZL17serialize_formats-(.LPIC2+4)
	.cantunwind
	.fnend
	.size	hb_buffer_serialize_format_to_string, .-hb_buffer_serialize_format_to_string
	.section	.rodata
	.align	2
.LC2:
	.ascii	"\"g\":\000"
	.align	2
.LC3:
	.ascii	"%u\000"
	.align	2
.LC4:
	.ascii	",\"cl\":%u\000"
	.align	2
.LC5:
	.ascii	",\"dx\":%d,\"dy\":%d\000"
	.align	2
.LC6:
	.ascii	",\"ax\":%d,\"ay\":%d\000"
	.section	.text._ZL32_hb_buffer_serialize_glyphs_jsonP11hb_buffer_tjjPcjPjP9hb_font_t27hb_buffer_serialize_flags_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL32_hb_buffer_serialize_glyphs_jsonP11hb_buffer_tjjPcjPjP9hb_font_t27hb_buffer_serialize_flags_t, %function
_ZL32_hb_buffer_serialize_glyphs_jsonP11hb_buffer_tjjPcjPjP9hb_font_t27hb_buffer_serialize_flags_t:
	.fnstart
.LFB115:
	@ args = 16, pretend = 0, frame = 1208
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #1220
	subw	sp, sp, #1220
	.setfp r7, sp, #8
	add	r7, sp, #8
	add	r4, r7, #12
	str	r0, [r4]
	add	r0, r7, #8
	str	r1, [r0]
	adds	r1, r7, #4
	str	r2, [r1]
	mov	r2, r7
	str	r3, [r2]
	add	r3, r7, #12
	ldr	r0, [r3]
	movs	r1, #0
	bl	hb_buffer_get_glyph_infos(PLT)
	mov	r3, r0
	str	r3, [r7, #1192]
	add	r3, r7, #12
	ldr	r0, [r3]
	movs	r1, #0
	bl	hb_buffer_get_glyph_positions(PLT)
	mov	r3, r0
	str	r3, [r7, #1188]
	ldr	r3, [r7, #1228]
	movs	r2, #0
	str	r2, [r3]
	add	r3, r7, #8
	ldr	r3, [r3]
	str	r3, [r7, #1204]
	b	.L21
.L32:
	add	r3, r7, #144
	str	r3, [r7, #1200]
	ldr	r3, [r7, #1204]
	cmp	r3, #0
	beq	.L22
	ldr	r3, [r7, #1200]
	adds	r2, r3, #1
	str	r2, [r7, #1200]
	movs	r2, #44
	strb	r2, [r3]
.L22:
	ldr	r3, [r7, #1200]
	adds	r2, r3, #1
	str	r2, [r7, #1200]
	movs	r2, #123
	strb	r2, [r3]
	ldr	r3, [r7, #1200]
	ldr	r2, .L33
.LPIC3:
	add	r2, pc
	ldr	r0, [r2]	@ unaligned
	str	r0, [r3]	@ unaligned
	ldrb	r2, [r2, #4]
	strb	r2, [r3, #4]
	ldr	r3, [r7, #1200]
	adds	r3, r3, #4
	str	r3, [r7, #1200]
	ldr	r3, [r7, #1236]
	and	r3, r3, #4
	cmp	r3, #0
	bne	.L23
	ldr	r2, [r7, #1204]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #1192]
	add	r3, r3, r2
	ldr	r2, [r3]
	add	r3, r7, #16
	ldr	r0, [r7, #1232]
	mov	r1, r2
	mov	r2, r3
	movs	r3, #128
	bl	hb_font_glyph_to_string(PLT)
	ldr	r3, [r7, #1200]
	adds	r2, r3, #1
	str	r2, [r7, #1200]
	movs	r2, #34
	strb	r2, [r3]
	add	r3, r7, #16
	str	r3, [r7, #1196]
	b	.L24
.L26:
	ldr	r3, [r7, #1196]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #34
	bne	.L25
	ldr	r3, [r7, #1200]
	adds	r2, r3, #1
	str	r2, [r7, #1200]
	movs	r2, #92
	strb	r2, [r3]
.L25:
	ldr	r3, [r7, #1200]
	adds	r2, r3, #1
	str	r2, [r7, #1200]
	ldr	r2, [r7, #1196]
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [r7, #1196]
	adds	r3, r3, #1
	str	r3, [r7, #1196]
.L24:
	ldr	r3, [r7, #1196]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L26
	ldr	r3, [r7, #1200]
	adds	r2, r3, #1
	str	r2, [r7, #1200]
	movs	r2, #34
	strb	r2, [r3]
	b	.L27
.L23:
	movs	r3, #0
	str	r3, [r7, #1168]
	add	r3, r7, #144
	mov	r0, r3
	bl	_Z12ARRAY_LENGTHIcLj1024EEjRAT0__KT_(PLT)
	mov	r2, r0
	add	r1, r7, #144
	ldr	r3, [r7, #1200]
	subs	r3, r1, r3
	adds	r1, r2, r3
	ldr	r2, [r7, #1204]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #1192]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r0, [r7, #1200]
	ldr	r2, .L33+4
.LPIC4:
	add	r2, pc
	bl	snprintf(PLT)
	mov	r3, r0
	str	r3, [r7, #1172]
	add	r2, r7, #1168
	addw	r3, r7, #1172
	mov	r0, r2
	mov	r1, r3
	bl	_Z3MAXIiET_RKS0_S2_(PLT)
	mov	r3, r0
	ldr	r2, [r7, #1200]
	add	r3, r3, r2
	str	r3, [r7, #1200]
.L27:
	ldr	r3, [r7, #1236]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L28
	movs	r3, #0
	str	r3, [r7, #1176]
	add	r3, r7, #144
	mov	r0, r3
	bl	_Z12ARRAY_LENGTHIcLj1024EEjRAT0__KT_(PLT)
	mov	r2, r0
	add	r1, r7, #144
	ldr	r3, [r7, #1200]
	subs	r3, r1, r3
	adds	r1, r2, r3
	ldr	r2, [r7, #1204]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #1192]
	add	r3, r3, r2
	ldr	r3, [r3, #8]
	ldr	r0, [r7, #1200]
	ldr	r2, .L33+8
.LPIC5:
	add	r2, pc
	bl	snprintf(PLT)
	mov	r3, r0
	str	r3, [r7, #1180]
	add	r2, r7, #1176
	addw	r3, r7, #1180
	mov	r0, r2
	mov	r1, r3
	bl	_Z3MAXIiET_RKS0_S2_(PLT)
	mov	r3, r0
	ldr	r2, [r7, #1200]
	add	r3, r3, r2
	str	r3, [r7, #1200]
.L28:
	ldr	r3, [r7, #1236]
	and	r3, r3, #2
	cmp	r3, #0
	bne	.L29
	add	r3, r7, #144
	mov	r0, r3
	bl	_Z12ARRAY_LENGTHIcLj1024EEjRAT0__KT_(PLT)
	mov	r2, r0
	add	r1, r7, #144
	ldr	r3, [r7, #1200]
	subs	r3, r1, r3
	adds	r1, r2, r3
	ldr	r2, [r7, #1204]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #1188]
	add	r3, r3, r2
	ldr	r4, [r3, #8]
	ldr	r2, [r7, #1204]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #1188]
	add	r3, r3, r2
	ldr	r3, [r3, #12]
	str	r3, [sp]
	ldr	r0, [r7, #1200]
	ldr	r3, .L33+12
.LPIC6:
	add	r3, pc
	mov	r2, r3
	mov	r3, r4
	bl	snprintf(PLT)
	mov	r3, r0
	ldr	r2, [r7, #1200]
	add	r3, r3, r2
	str	r3, [r7, #1200]
	add	r3, r7, #144
	mov	r0, r3
	bl	_Z12ARRAY_LENGTHIcLj1024EEjRAT0__KT_(PLT)
	mov	r2, r0
	add	r1, r7, #144
	ldr	r3, [r7, #1200]
	subs	r3, r1, r3
	adds	r1, r2, r3
	ldr	r2, [r7, #1204]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #1188]
	add	r3, r3, r2
	ldr	r4, [r3]
	ldr	r2, [r7, #1204]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #1188]
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	str	r3, [sp]
	ldr	r0, [r7, #1200]
	ldr	r3, .L33+16
.LPIC7:
	add	r3, pc
	mov	r2, r3
	mov	r3, r4
	bl	snprintf(PLT)
	mov	r3, r0
	ldr	r2, [r7, #1200]
	add	r3, r3, r2
	str	r3, [r7, #1200]
.L29:
	ldr	r3, [r7, #1200]
	adds	r2, r3, #1
	str	r2, [r7, #1200]
	movs	r2, #125
	strb	r2, [r3]
	ldr	r2, [r7, #1200]
	add	r3, r7, #144
	subs	r3, r2, r3
	str	r3, [r7, #1184]
	ldr	r2, [r7, #1224]
	ldr	r3, [r7, #1184]
	cmp	r2, r3
	bls	.L30
	mov	r2, r7
	add	r3, r7, #144
	ldr	r0, [r2]
	mov	r1, r3
	ldr	r2, [r7, #1184]
	bl	memcpy(PLT)
	mov	r3, r7
	mov	r2, r7
	ldr	r1, [r2]
	ldr	r2, [r7, #1184]
	add	r2, r2, r1
	str	r2, [r3]
	ldr	r2, [r7, #1224]
	ldr	r3, [r7, #1184]
	subs	r3, r2, r3
	str	r3, [r7, #1224]
	ldr	r3, [r7, #1228]
	ldr	r2, [r3]
	ldr	r3, [r7, #1184]
	add	r2, r2, r3
	ldr	r3, [r7, #1228]
	str	r2, [r3]
	mov	r3, r7
	ldr	r3, [r3]
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #1204]
	adds	r3, r3, #1
	str	r3, [r7, #1204]
	b	.L21
.L30:
	add	r3, r7, #8
	ldr	r2, [r7, #1204]
	ldr	r3, [r3]
	subs	r3, r2, r3
	b	.L31
.L21:
	adds	r3, r7, #4
	ldr	r2, [r7, #1204]
	ldr	r3, [r3]
	cmp	r2, r3
	bcc	.L32
	adds	r2, r7, #4
	add	r3, r7, #8
	ldr	r2, [r2]
	ldr	r3, [r3]
	subs	r3, r2, r3
.L31:
	mov	r0, r3
	addw	r7, r7, #1212
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L34:
	.align	2
.L33:
	.word	.LC2-(.LPIC3+4)
	.word	.LC3-(.LPIC4+4)
	.word	.LC4-(.LPIC5+4)
	.word	.LC5-(.LPIC6+4)
	.word	.LC6-(.LPIC7+4)
	.fnend
	.size	_ZL32_hb_buffer_serialize_glyphs_jsonP11hb_buffer_tjjPcjPjP9hb_font_t27hb_buffer_serialize_flags_t, .-_ZL32_hb_buffer_serialize_glyphs_jsonP11hb_buffer_tjjPcjPjP9hb_font_t27hb_buffer_serialize_flags_t
	.section	.rodata
	.align	2
.LC7:
	.ascii	"=%u\000"
	.align	2
.LC8:
	.ascii	"@%d,%d\000"
	.align	2
.LC9:
	.ascii	"%d\000"
	.align	2
.LC10:
	.ascii	",%d\000"
	.section	.text._ZL32_hb_buffer_serialize_glyphs_textP11hb_buffer_tjjPcjPjP9hb_font_t27hb_buffer_serialize_flags_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL32_hb_buffer_serialize_glyphs_textP11hb_buffer_tjjPcjPjP9hb_font_t27hb_buffer_serialize_flags_t, %function
_ZL32_hb_buffer_serialize_glyphs_textP11hb_buffer_tjjPcjPjP9hb_font_t27hb_buffer_serialize_flags_t:
	.fnstart
.LFB116:
	@ args = 16, pretend = 0, frame = 1104
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #1116
	subw	sp, sp, #1116
	.setfp r7, sp, #8
	add	r7, sp, #8
	add	r4, r7, #12
	str	r0, [r4]
	add	r0, r7, #8
	str	r1, [r0]
	adds	r1, r7, #4
	str	r2, [r1]
	mov	r2, r7
	str	r3, [r2]
	add	r3, r7, #12
	ldr	r0, [r3]
	movs	r1, #0
	bl	hb_buffer_get_glyph_infos(PLT)
	mov	r3, r0
	str	r3, [r7, #1092]
	add	r3, r7, #12
	ldr	r0, [r3]
	movs	r1, #0
	bl	hb_buffer_get_glyph_positions(PLT)
	mov	r3, r0
	str	r3, [r7, #1088]
	ldr	r3, [r7, #1124]
	movs	r2, #0
	str	r2, [r3]
	add	r3, r7, #8
	ldr	r3, [r3]
	str	r3, [r7, #1100]
	b	.L36
.L46:
	add	r3, r7, #20
	str	r3, [r7, #1096]
	ldr	r3, [r7, #1100]
	cmp	r3, #0
	beq	.L37
	ldr	r3, [r7, #1096]
	adds	r2, r3, #1
	str	r2, [r7, #1096]
	movs	r2, #124
	strb	r2, [r3]
.L37:
	ldr	r3, [r7, #1132]
	and	r3, r3, #4
	cmp	r3, #0
	bne	.L38
	ldr	r2, [r7, #1100]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #1092]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r0, [r7, #1128]
	mov	r1, r3
	ldr	r2, [r7, #1096]
	movs	r3, #128
	bl	hb_font_glyph_to_string(PLT)
	ldr	r0, [r7, #1096]
	bl	strlen(PLT)
	mov	r3, r0
	ldr	r2, [r7, #1096]
	add	r3, r3, r2
	str	r3, [r7, #1096]
	b	.L39
.L38:
	movs	r3, #0
	str	r3, [r7, #1044]
	add	r3, r7, #20
	mov	r0, r3
	bl	_Z12ARRAY_LENGTHIcLj1024EEjRAT0__KT_(PLT)
	mov	r2, r0
	add	r1, r7, #20
	ldr	r3, [r7, #1096]
	subs	r3, r1, r3
	adds	r1, r2, r3
	ldr	r2, [r7, #1100]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #1092]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r0, [r7, #1096]
	ldr	r2, .L47
.LPIC8:
	add	r2, pc
	bl	snprintf(PLT)
	mov	r3, r0
	str	r3, [r7, #1048]
	addw	r2, r7, #1044
	add	r3, r7, #1048
	mov	r0, r2
	mov	r1, r3
	bl	_Z3MAXIiET_RKS0_S2_(PLT)
	mov	r3, r0
	ldr	r2, [r7, #1096]
	add	r3, r3, r2
	str	r3, [r7, #1096]
.L39:
	ldr	r3, [r7, #1132]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L40
	movs	r3, #0
	str	r3, [r7, #1052]
	add	r3, r7, #20
	mov	r0, r3
	bl	_Z12ARRAY_LENGTHIcLj1024EEjRAT0__KT_(PLT)
	mov	r2, r0
	add	r1, r7, #20
	ldr	r3, [r7, #1096]
	subs	r3, r1, r3
	adds	r1, r2, r3
	ldr	r2, [r7, #1100]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #1092]
	add	r3, r3, r2
	ldr	r3, [r3, #8]
	ldr	r0, [r7, #1096]
	ldr	r2, .L47+4
.LPIC9:
	add	r2, pc
	bl	snprintf(PLT)
	mov	r3, r0
	str	r3, [r7, #1056]
	addw	r2, r7, #1052
	add	r3, r7, #1056
	mov	r0, r2
	mov	r1, r3
	bl	_Z3MAXIiET_RKS0_S2_(PLT)
	mov	r3, r0
	ldr	r2, [r7, #1096]
	add	r3, r3, r2
	str	r3, [r7, #1096]
.L40:
	ldr	r3, [r7, #1132]
	and	r3, r3, #2
	cmp	r3, #0
	bne	.L41
	ldr	r2, [r7, #1100]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #1088]
	add	r3, r3, r2
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L42
	ldr	r2, [r7, #1100]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #1088]
	add	r3, r3, r2
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L43
.L42:
	movs	r3, #0
	str	r3, [r7, #1060]
	add	r3, r7, #20
	mov	r0, r3
	bl	_Z12ARRAY_LENGTHIcLj1024EEjRAT0__KT_(PLT)
	mov	r2, r0
	add	r1, r7, #20
	ldr	r3, [r7, #1096]
	subs	r3, r1, r3
	adds	r1, r2, r3
	ldr	r2, [r7, #1100]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #1088]
	add	r3, r3, r2
	ldr	r4, [r3, #8]
	ldr	r2, [r7, #1100]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #1088]
	add	r3, r3, r2
	ldr	r3, [r3, #12]
	str	r3, [sp]
	ldr	r0, [r7, #1096]
	ldr	r3, .L47+8
.LPIC10:
	add	r3, pc
	mov	r2, r3
	mov	r3, r4
	bl	snprintf(PLT)
	mov	r3, r0
	str	r3, [r7, #1064]
	addw	r2, r7, #1060
	add	r3, r7, #1064
	mov	r0, r2
	mov	r1, r3
	bl	_Z3MAXIiET_RKS0_S2_(PLT)
	mov	r3, r0
	ldr	r2, [r7, #1096]
	add	r3, r3, r2
	str	r3, [r7, #1096]
.L43:
	ldr	r3, [r7, #1096]
	adds	r2, r3, #1
	str	r2, [r7, #1096]
	movs	r2, #43
	strb	r2, [r3]
	movs	r3, #0
	str	r3, [r7, #1068]
	add	r3, r7, #20
	mov	r0, r3
	bl	_Z12ARRAY_LENGTHIcLj1024EEjRAT0__KT_(PLT)
	mov	r2, r0
	add	r1, r7, #20
	ldr	r3, [r7, #1096]
	subs	r3, r1, r3
	adds	r1, r2, r3
	ldr	r2, [r7, #1100]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #1088]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r0, [r7, #1096]
	ldr	r2, .L47+12
.LPIC11:
	add	r2, pc
	bl	snprintf(PLT)
	mov	r3, r0
	str	r3, [r7, #1072]
	addw	r2, r7, #1068
	add	r3, r7, #1072
	mov	r0, r2
	mov	r1, r3
	bl	_Z3MAXIiET_RKS0_S2_(PLT)
	mov	r3, r0
	ldr	r2, [r7, #1096]
	add	r3, r3, r2
	str	r3, [r7, #1096]
	ldr	r2, [r7, #1100]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #1088]
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L41
	movs	r3, #0
	str	r3, [r7, #1076]
	add	r3, r7, #20
	mov	r0, r3
	bl	_Z12ARRAY_LENGTHIcLj1024EEjRAT0__KT_(PLT)
	mov	r2, r0
	add	r1, r7, #20
	ldr	r3, [r7, #1096]
	subs	r3, r1, r3
	adds	r1, r2, r3
	ldr	r2, [r7, #1100]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #1088]
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #1096]
	ldr	r2, .L47+16
.LPIC12:
	add	r2, pc
	bl	snprintf(PLT)
	mov	r3, r0
	str	r3, [r7, #1080]
	addw	r2, r7, #1076
	add	r3, r7, #1080
	mov	r0, r2
	mov	r1, r3
	bl	_Z3MAXIiET_RKS0_S2_(PLT)
	mov	r3, r0
	ldr	r2, [r7, #1096]
	add	r3, r3, r2
	str	r3, [r7, #1096]
.L41:
	ldr	r2, [r7, #1096]
	add	r3, r7, #20
	subs	r3, r2, r3
	str	r3, [r7, #1084]
	ldr	r2, [r7, #1120]
	ldr	r3, [r7, #1084]
	cmp	r2, r3
	bls	.L44
	mov	r2, r7
	add	r3, r7, #20
	ldr	r0, [r2]
	mov	r1, r3
	ldr	r2, [r7, #1084]
	bl	memcpy(PLT)
	mov	r3, r7
	mov	r2, r7
	ldr	r1, [r2]
	ldr	r2, [r7, #1084]
	add	r2, r2, r1
	str	r2, [r3]
	ldr	r2, [r7, #1120]
	ldr	r3, [r7, #1084]
	subs	r3, r2, r3
	str	r3, [r7, #1120]
	ldr	r3, [r7, #1124]
	ldr	r2, [r3]
	ldr	r3, [r7, #1084]
	add	r2, r2, r3
	ldr	r3, [r7, #1124]
	str	r2, [r3]
	mov	r3, r7
	ldr	r3, [r3]
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #1100]
	adds	r3, r3, #1
	str	r3, [r7, #1100]
	b	.L36
.L44:
	add	r3, r7, #8
	ldr	r2, [r7, #1100]
	ldr	r3, [r3]
	subs	r3, r2, r3
	b	.L45
.L36:
	adds	r3, r7, #4
	ldr	r2, [r7, #1100]
	ldr	r3, [r3]
	cmp	r2, r3
	bcc	.L46
	adds	r2, r7, #4
	add	r3, r7, #8
	ldr	r2, [r2]
	ldr	r3, [r3]
	subs	r3, r2, r3
.L45:
	mov	r0, r3
	addw	r7, r7, #1108
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L48:
	.align	2
.L47:
	.word	.LC3-(.LPIC8+4)
	.word	.LC7-(.LPIC9+4)
	.word	.LC8-(.LPIC10+4)
	.word	.LC9-(.LPIC11+4)
	.word	.LC10-(.LPIC12+4)
	.fnend
	.size	_ZL32_hb_buffer_serialize_glyphs_textP11hb_buffer_tjjPcjPjP9hb_font_t27hb_buffer_serialize_flags_t, .-_ZL32_hb_buffer_serialize_glyphs_textP11hb_buffer_tjjPcjPjP9hb_font_t27hb_buffer_serialize_flags_t
	.section	.rodata
	.align	2
.LC11:
	.ascii	"start <= end && end <= buffer->len\000"
	.align	2
.LC12:
	.ascii	"../../../libs/harfbuzz-ng/src/hb-buffer-serialize.c"
	.ascii	"c\000"
	.align	2
.LC13:
	.ascii	"(!buffer->len && buffer->content_type == HB_BUFFER_"
	.ascii	"CONTENT_TYPE_INVALID) || buffer->content_type == HB"
	.ascii	"_BUFFER_CONTENT_TYPE_GLYPHS\000"
	.section	.text.hb_buffer_serialize_glyphs,"ax",%progbits
	.align	2
	.global	hb_buffer_serialize_glyphs
	.thumb
	.thumb_func
	.type	hb_buffer_serialize_glyphs, %function
hb_buffer_serialize_glyphs:
	.fnstart
.LFB117:
	@ args = 20, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #40
	sub	sp, sp, #40
	.setfp r7, sp, #16
	add	r7, sp, #16
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bhi	.L50
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #88]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcs	.L51
.L50:
	ldr	r3, .L63
.LPIC13:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L63+4
.LPIC14:
	add	r3, pc
	mov	r1, r3
	mov	r2, #256
	ldr	r3, .L63+8
.LPIC15:
	add	r3, pc
	bl	__assert_fail(PLT)
.L51:
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L52
	add	r3, r7, #20
	str	r3, [r7, #36]
.L52:
	ldr	r3, [r7, #36]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #88]
	cmp	r3, #0
	bne	.L53
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #56]
	cmp	r3, #0
	beq	.L54
.L53:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #56]
	cmp	r3, #2
	beq	.L54
	ldr	r3, .L63+12
.LPIC16:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L63+16
.LPIC17:
	add	r3, pc
	mov	r1, r3
	mov	r2, #264
	ldr	r3, .L63+20
.LPIC18:
	add	r3, pc
	bl	__assert_fail(PLT)
.L54:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bne	.L55
	movs	r3, #0
	b	.L61
.L55:
	ldr	r3, [r7, #40]
	cmp	r3, #0
	bne	.L57
	bl	hb_font_get_empty(PLT)
	mov	r3, r0
	str	r3, [r7, #40]
.L57:
	ldr	r2, [r7, #44]
	movw	r3, #20302
	movt	r3, 19027
	cmp	r2, r3
	beq	.L59
	movw	r3, #22612
	movt	r3, 21573
	cmp	r2, r3
	bne	.L62
	ldr	r3, [r7, #32]
	str	r3, [sp]
	ldr	r3, [r7, #36]
	str	r3, [sp, #4]
	ldr	r3, [r7, #40]
	str	r3, [sp, #8]
	ldr	r3, [r7, #48]
	str	r3, [sp, #12]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	_ZL32_hb_buffer_serialize_glyphs_textP11hb_buffer_tjjPcjPjP9hb_font_t27hb_buffer_serialize_flags_t(PLT)
	mov	r3, r0
	b	.L61
.L59:
	ldr	r3, [r7, #32]
	str	r3, [sp]
	ldr	r3, [r7, #36]
	str	r3, [sp, #4]
	ldr	r3, [r7, #40]
	str	r3, [sp, #8]
	ldr	r3, [r7, #48]
	str	r3, [sp, #12]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	_ZL32_hb_buffer_serialize_glyphs_jsonP11hb_buffer_tjjPcjPjP9hb_font_t27hb_buffer_serialize_flags_t(PLT)
	mov	r3, r0
	b	.L61
.L62:
	movs	r3, #0
.L61:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L64:
	.align	2
.L63:
	.word	.LC11-(.LPIC13+4)
	.word	.LC12-(.LPIC14+4)
	.word	_ZZ26hb_buffer_serialize_glyphsE19__PRETTY_FUNCTION__-(.LPIC15+4)
	.word	.LC13-(.LPIC16+4)
	.word	.LC12-(.LPIC17+4)
	.word	_ZZ26hb_buffer_serialize_glyphsE19__PRETTY_FUNCTION__-(.LPIC18+4)
	.fnend
	.size	hb_buffer_serialize_glyphs, .-hb_buffer_serialize_glyphs
	.section	.text._ZL10parse_uintPKcS0_Pj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL10parse_uintPKcS0_Pj, %function
_ZL10parse_uintPKcS0_Pj:
	.fnstart
.LFB118:
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
	subs	r3, r2, r3
	str	r3, [r7, #56]
	add	r2, r7, #52
	add	r3, r7, #56
	mov	r0, r2
	mov	r1, r3
	bl	_Z3MINIjET_RKS0_S2_(PLT)
	str	r0, [r7, #68]
	add	r3, r7, #16
	mov	r0, r3
	ldr	r1, [r7, #12]
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
	movs	r2, #10
	bl	strtol(PLT)
	mov	r3, r0
	str	r3, [r7, #60]
	bl	__errno_location(PLT)
	mov	r3, r0
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L66
	ldr	r3, [r7, #48]
	ldr	r2, [r7, #64]
	cmp	r2, r3
	beq	.L66
	ldr	r3, [r7, #48]
	mov	r2, r3
	ldr	r3, [r7, #64]
	subs	r2, r2, r3
	ldr	r1, [r7, #8]
	ldr	r3, [r7, #12]
	subs	r3, r1, r3
	cmp	r2, r3
	beq	.L67
.L66:
	movs	r3, #0
	b	.L69
.L67:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #60]
	str	r2, [r3]
	movs	r3, #1
.L69:
	mov	r0, r3
	adds	r7, r7, #72
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZL10parse_uintPKcS0_Pj, .-_ZL10parse_uintPKcS0_Pj
	.section	.text._ZL9parse_intPKcS0_Pi,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL9parse_intPKcS0_Pi, %function
_ZL9parse_intPKcS0_Pi:
	.fnstart
.LFB119:
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
	subs	r3, r2, r3
	str	r3, [r7, #56]
	add	r2, r7, #52
	add	r3, r7, #56
	mov	r0, r2
	mov	r1, r3
	bl	_Z3MINIjET_RKS0_S2_(PLT)
	str	r0, [r7, #68]
	add	r3, r7, #16
	mov	r0, r3
	ldr	r1, [r7, #12]
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
	movs	r2, #10
	bl	strtol(PLT)
	str	r0, [r7, #60]
	bl	__errno_location(PLT)
	mov	r3, r0
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L71
	ldr	r3, [r7, #48]
	ldr	r2, [r7, #64]
	cmp	r2, r3
	beq	.L71
	ldr	r3, [r7, #48]
	mov	r2, r3
	ldr	r3, [r7, #64]
	subs	r2, r2, r3
	ldr	r1, [r7, #8]
	ldr	r3, [r7, #12]
	subs	r3, r1, r3
	cmp	r2, r3
	beq	.L72
.L71:
	movs	r3, #0
	b	.L74
.L72:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #60]
	str	r2, [r3]
	movs	r3, #1
.L74:
	mov	r0, r3
	adds	r7, r7, #72
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZL9parse_intPKcS0_Pi, .-_ZL9parse_intPKcS0_Pi
	.section	.text._ZL34_hb_buffer_deserialize_glyphs_jsonP11hb_buffer_tPKcjPS2_P9hb_font_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL34_hb_buffer_deserialize_glyphs_jsonP11hb_buffer_tPKcjPS2_P9hb_font_t, %function
_ZL34_hb_buffer_deserialize_glyphs_jsonP11hb_buffer_tPKcjPS2_P9hb_font_t:
	.fnstart
.LFB120:
	@ args = 4, pretend = 0, frame = 88
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #88
	sub	sp, sp, #88
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #8]
	str	r3, [r7, #84]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	str	r3, [r7, #72]
	ldr	r0, [r7, #12]
	movs	r1, #0
	bl	hb_buffer_get_glyph_positions(PLT)
	b	.L76
.L79:
	ldr	r3, [r7, #84]
	adds	r3, r3, #1
	str	r3, [r7, #84]
.L76:
	ldr	r2, [r7, #84]
	ldr	r3, [r7, #72]
	cmp	r2, r3
	bcs	.L77
	ldr	r3, [r7, #84]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	_ZL7ISSPACEh(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L77
	movs	r3, #1
	b	.L78
.L77:
	movs	r3, #0
.L78:
	cmp	r3, #0
	bne	.L79
	ldr	r2, [r7, #84]
	ldr	r3, [r7, #72]
	cmp	r2, r3
	bcs	.L80
	ldr	r3, [r7, #84]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #88]
	cmp	r3, #0
	beq	.L81
	movs	r3, #44
	b	.L82
.L81:
	movs	r3, #91
.L82:
	cmp	r2, r3
	bne	.L80
	ldr	r3, [r7, #84]
	adds	r3, r3, #1
	str	r3, [r7, #84]
	ldr	r3, [r7]
	ldr	r2, [r7, #84]
	str	r2, [r3]
.L80:
	movs	r3, #0
	str	r3, [r7, #80]
	add	r3, r7, #36
	movs	r2, #0
	str	r2, [r3]
	adds	r3, r3, #4
	movs	r2, #0
	str	r2, [r3]
	adds	r3, r3, #4
	movs	r2, #0
	str	r2, [r3]
	adds	r3, r3, #4
	movs	r2, #0
	str	r2, [r3]
	adds	r3, r3, #4
	movs	r2, #0
	str	r2, [r3]
	adds	r3, r3, #4
	add	r3, r7, #16
	movs	r2, #0
	str	r2, [r3]
	adds	r3, r3, #4
	movs	r2, #0
	str	r2, [r3]
	adds	r3, r3, #4
	movs	r2, #0
	str	r2, [r3]
	adds	r3, r3, #4
	movs	r2, #0
	str	r2, [r3]
	adds	r3, r3, #4
	movs	r2, #0
	str	r2, [r3]
	adds	r3, r3, #4
	movs	r3, #1
	str	r3, [r7, #76]
	ldr	r2, [r7, #84]
	ldr	r3, [r7, #72]
	cmp	r2, r3
	bne	.L83
	b	.L129
.L83:
	ldr	r3, [r7, #76]
	cmp	r3, #0
	bne	.L85
	b	.L129
.L85:
	ldr	r3, [r7, #76]
	lsls	r3, r3, #1
	mov	r2, r3
	ldr	r3, .L133
.LPIC19:
	add	r3, pc
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldr	r3, .L133+4
.LPIC20:
	add	r3, pc
	ldr	r2, [r7, #76]
	ldrh	r3, [r3, r2, lsl #1]
	sxth	r2, r3
	ldr	r3, .L133+8
.LPIC21:
	add	r3, pc
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldr	r3, .L133+12
.LPIC22:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #76]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	cmp	r3, #0
	ble	.L86
	ldr	r3, [r7, #68]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #84]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	bhi	.L86
	ldr	r3, [r7, #84]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #68]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	bhi	.L86
	ldr	r3, [r7, #84]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #68]
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r2, r3
	b	.L87
.L86:
	ldr	r3, [r7, #60]
.L87:
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #56]
	ldr	r3, .L133+16
.LPIC23:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #76]
	ldr	r3, .L133+20
.LPIC24:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L88
	b	.L89
.L88:
	ldr	r3, .L133+24
.LPIC25:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #1
	cmp	r3, #15
	bhi	.L89
	adr	r1, .L91
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L91:
	.word	.L90+1-.L91
	.word	.L92+1-.L91
	.word	.L93+1-.L91
	.word	.L94+1-.L91
	.word	.L95+1-.L91
	.word	.L96+1-.L91
	.word	.L97+1-.L91
	.word	.L98+1-.L91
	.word	.L99+1-.L91
	.word	.L100+1-.L91
	.word	.L101+1-.L91
	.word	.L102+1-.L91
	.word	.L103+1-.L91
	.word	.L104+1-.L91
	.word	.L105+1-.L91
	.word	.L106+1-.L91
.L90:
	add	r3, r7, #36
	mov	r0, r3
	movs	r1, #0
	movs	r2, #20
	bl	memset(PLT)
	add	r3, r7, #16
	mov	r0, r3
	movs	r1, #0
	movs	r2, #20
	bl	memset(PLT)
	b	.L89
.L95:
	add	r3, r7, #36
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZN11hb_buffer_t8add_infoERK15hb_glyph_info_t(PLT)
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #80]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L107
	movs	r3, #0
	b	.L132
.L107:
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #108]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #88]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	subs	r3, r3, #20
	add	r3, r3, r1
	mov	r4, r3
	add	r5, r7, #16
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7]
	ldr	r2, [r7, #84]
	str	r2, [r3]
	b	.L89
.L92:
	ldr	r3, [r7, #84]
	str	r3, [r7, #80]
	b	.L89
.L104:
	ldr	r2, [r7, #84]
	ldr	r3, [r7, #80]
	subs	r2, r2, r3
	add	r3, r7, #36
	ldr	r0, [r7, #104]
	ldr	r1, [r7, #80]
	bl	hb_font_glyph_from_string(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L109
	movs	r3, #0
	b	.L132
.L109:
	b	.L89
.L105:
	add	r3, r7, #36
	ldr	r0, [r7, #80]
	ldr	r1, [r7, #84]
	mov	r2, r3
	bl	_ZL10parse_uintPKcS0_Pj(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L110
	movs	r3, #0
	b	.L132
.L110:
	b	.L89
.L98:
	add	r3, r7, #36
	adds	r3, r3, #8
	ldr	r0, [r7, #80]
	ldr	r1, [r7, #84]
	mov	r2, r3
	bl	_ZL10parse_uintPKcS0_Pj(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L111
	movs	r3, #0
	b	.L132
.L111:
	b	.L89
.L100:
	add	r3, r7, #16
	adds	r3, r3, #8
	ldr	r0, [r7, #80]
	ldr	r1, [r7, #84]
	mov	r2, r3
	bl	_ZL9parse_intPKcS0_Pi(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L112
	movs	r3, #0
	b	.L132
.L112:
	b	.L89
.L102:
	add	r3, r7, #16
	adds	r3, r3, #12
	ldr	r0, [r7, #80]
	ldr	r1, [r7, #84]
	mov	r2, r3
	bl	_ZL9parse_intPKcS0_Pi(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L113
	movs	r3, #0
	b	.L132
.L113:
	b	.L89
.L93:
	add	r3, r7, #16
	ldr	r0, [r7, #80]
	ldr	r1, [r7, #84]
	mov	r2, r3
	bl	_ZL9parse_intPKcS0_Pi(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L114
	movs	r3, #0
	b	.L132
.L114:
	b	.L89
.L96:
	add	r3, r7, #16
	adds	r3, r3, #4
	ldr	r0, [r7, #80]
	ldr	r1, [r7, #84]
	mov	r2, r3
	bl	_ZL9parse_intPKcS0_Pi(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L115
	movs	r3, #0
	b	.L132
.L115:
	b	.L89
.L106:
	add	r3, r7, #36
	ldr	r0, [r7, #80]
	ldr	r1, [r7, #84]
	mov	r2, r3
	bl	_ZL10parse_uintPKcS0_Pj(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L116
	movs	r3, #0
	b	.L132
.L116:
	add	r3, r7, #36
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZN11hb_buffer_t8add_infoERK15hb_glyph_info_t(PLT)
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #80]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L117
	movs	r3, #0
	b	.L132
.L117:
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #108]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #88]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	subs	r3, r3, #20
	add	r3, r3, r1
	mov	r4, r3
	add	r5, r7, #16
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7]
	ldr	r2, [r7, #84]
	str	r2, [r3]
	b	.L89
.L99:
	add	r3, r7, #36
	adds	r3, r3, #8
	ldr	r0, [r7, #80]
	ldr	r1, [r7, #84]
	mov	r2, r3
	bl	_ZL10parse_uintPKcS0_Pj(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L118
	movs	r3, #0
	b	.L132
.L118:
	add	r3, r7, #36
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZN11hb_buffer_t8add_infoERK15hb_glyph_info_t(PLT)
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #80]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L119
	movs	r3, #0
	b	.L132
.L119:
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #108]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #88]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	subs	r3, r3, #20
	add	r3, r3, r1
	mov	r4, r3
	add	r5, r7, #16
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7]
	ldr	r2, [r7, #84]
	str	r2, [r3]
	b	.L89
.L101:
	add	r3, r7, #16
	adds	r3, r3, #8
	ldr	r0, [r7, #80]
	ldr	r1, [r7, #84]
	mov	r2, r3
	bl	_ZL9parse_intPKcS0_Pi(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L120
	movs	r3, #0
	b	.L132
.L120:
	add	r3, r7, #36
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZN11hb_buffer_t8add_infoERK15hb_glyph_info_t(PLT)
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #80]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L121
	movs	r3, #0
	b	.L132
.L121:
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #108]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #88]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	subs	r3, r3, #20
	add	r3, r3, r1
	mov	r4, r3
	add	r5, r7, #16
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7]
	ldr	r2, [r7, #84]
	str	r2, [r3]
	b	.L89
.L103:
	add	r3, r7, #16
	adds	r3, r3, #12
	ldr	r0, [r7, #80]
	ldr	r1, [r7, #84]
	mov	r2, r3
	bl	_ZL9parse_intPKcS0_Pi(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L122
	movs	r3, #0
	b	.L132
.L122:
	add	r3, r7, #36
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZN11hb_buffer_t8add_infoERK15hb_glyph_info_t(PLT)
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #80]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L123
	movs	r3, #0
	b	.L132
.L123:
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #108]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #88]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	subs	r3, r3, #20
	add	r3, r3, r1
	mov	r4, r3
	add	r5, r7, #16
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7]
	ldr	r2, [r7, #84]
	str	r2, [r3]
	b	.L89
.L94:
	add	r3, r7, #16
	ldr	r0, [r7, #80]
	ldr	r1, [r7, #84]
	mov	r2, r3
	bl	_ZL9parse_intPKcS0_Pi(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L124
	movs	r3, #0
	b	.L132
.L124:
	add	r3, r7, #36
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZN11hb_buffer_t8add_infoERK15hb_glyph_info_t(PLT)
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #80]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L125
	movs	r3, #0
	b	.L132
.L125:
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #108]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #88]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	subs	r3, r3, #20
	add	r3, r3, r1
	mov	r4, r3
	add	r5, r7, #16
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7]
	ldr	r2, [r7, #84]
	str	r2, [r3]
	b	.L89
.L97:
	add	r3, r7, #16
	adds	r3, r3, #4
	ldr	r0, [r7, #80]
	ldr	r1, [r7, #84]
	mov	r2, r3
	bl	_ZL9parse_intPKcS0_Pi(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L126
	movs	r3, #0
	b	.L132
.L126:
	add	r3, r7, #36
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZN11hb_buffer_t8add_infoERK15hb_glyph_info_t(PLT)
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #80]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L127
	movs	r3, #0
	b	.L132
.L127:
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #108]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #88]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	subs	r3, r3, #20
	add	r3, r3, r1
	mov	r4, r3
	add	r5, r7, #16
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7]
	ldr	r2, [r7, #84]
	str	r2, [r3]
	nop
.L89:
	ldr	r3, [r7, #76]
	cmp	r3, #0
	bne	.L128
	b	.L129
.L128:
	ldr	r3, [r7, #84]
	adds	r3, r3, #1
	str	r3, [r7, #84]
	ldr	r2, [r7, #84]
	ldr	r3, [r7, #72]
	cmp	r2, r3
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L129
	b	.L85
.L84:
.L129:
	ldr	r3, [r7]
	ldr	r2, [r7, #84]
	str	r2, [r3]
	ldr	r2, [r7, #84]
	ldr	r3, [r7, #72]
	cmp	r2, r3
	bne	.L130
	ldr	r3, [r7, #84]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #93
	beq	.L130
	movs	r3, #1
	b	.L131
.L130:
	movs	r3, #0
.L131:
.L132:
	mov	r0, r3
	adds	r7, r7, #88
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L134:
	.align	2
.L133:
	.word	_ZL28_deserialize_json_trans_keys-(.LPIC19+4)
	.word	_ZL31_deserialize_json_index_offsets-(.LPIC20+4)
	.word	_ZL26_deserialize_json_indicies-(.LPIC21+4)
	.word	_ZL27_deserialize_json_key_spans-(.LPIC22+4)
	.word	_ZL29_deserialize_json_trans_targs-(.LPIC23+4)
	.word	_ZL31_deserialize_json_trans_actions-(.LPIC24+4)
	.word	_ZL31_deserialize_json_trans_actions-(.LPIC25+4)
	.fnend
	.size	_ZL34_hb_buffer_deserialize_glyphs_jsonP11hb_buffer_tPKcjPS2_P9hb_font_t, .-_ZL34_hb_buffer_deserialize_glyphs_jsonP11hb_buffer_tPKcjPS2_P9hb_font_t
	.section	.text._ZL34_hb_buffer_deserialize_glyphs_textP11hb_buffer_tPKcjPS2_P9hb_font_t,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL34_hb_buffer_deserialize_glyphs_textP11hb_buffer_tPKcjPS2_P9hb_font_t, %function
_ZL34_hb_buffer_deserialize_glyphs_textP11hb_buffer_tPKcjPS2_P9hb_font_t:
	.fnstart
.LFB121:
	@ args = 4, pretend = 0, frame = 96
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #96
	sub	sp, sp, #96
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #8]
	str	r3, [r7, #92]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	str	r3, [r7, #80]
	ldr	r0, [r7, #12]
	movs	r1, #0
	bl	hb_buffer_get_glyph_positions(PLT)
	b	.L136
.L139:
	ldr	r3, [r7, #92]
	adds	r3, r3, #1
	str	r3, [r7, #92]
.L136:
	ldr	r2, [r7, #92]
	ldr	r3, [r7, #80]
	cmp	r2, r3
	bcs	.L137
	ldr	r3, [r7, #92]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	_ZL7ISSPACEh(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L137
	movs	r3, #1
	b	.L138
.L137:
	movs	r3, #0
.L138:
	cmp	r3, #0
	bne	.L139
	ldr	r2, [r7, #92]
	ldr	r3, [r7, #80]
	cmp	r2, r3
	bcs	.L140
	ldr	r3, [r7, #92]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #88]
	cmp	r3, #0
	beq	.L141
	movs	r3, #124
	b	.L142
.L141:
	movs	r3, #91
.L142:
	cmp	r2, r3
	bne	.L140
	ldr	r3, [r7, #92]
	adds	r3, r3, #1
	str	r3, [r7, #92]
	ldr	r3, [r7]
	ldr	r2, [r7, #92]
	str	r2, [r3]
.L140:
	ldr	r3, [r7, #80]
	str	r3, [r7, #76]
	movs	r3, #0
	str	r3, [r7, #88]
	movs	r3, #1
	str	r3, [r7, #84]
	ldr	r2, [r7, #92]
	ldr	r3, [r7, #80]
	cmp	r2, r3
	bne	.L143
	b	.L144
.L143:
	ldr	r3, [r7, #84]
	cmp	r3, #0
	bne	.L145
	b	.L146
.L145:
	ldr	r3, [r7, #84]
	lsls	r3, r3, #1
	mov	r2, r3
	ldr	r3, .L201
.LPIC26:
	add	r3, pc
	add	r3, r3, r2
	str	r3, [r7, #72]
	ldr	r3, .L201+4
.LPIC27:
	add	r3, pc
	ldr	r2, [r7, #84]
	ldrh	r3, [r3, r2, lsl #1]
	sxth	r2, r3
	ldr	r3, .L201+8
.LPIC28:
	add	r3, pc
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldr	r3, .L201+12
.LPIC29:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #84]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #64]
	ldr	r3, [r7, #64]
	cmp	r3, #0
	ble	.L147
	ldr	r3, [r7, #72]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #92]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	bhi	.L147
	ldr	r3, [r7, #92]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #72]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	bhi	.L147
	ldr	r3, [r7, #92]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #72]
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r2, r3
	b	.L148
.L147:
	ldr	r3, [r7, #64]
.L148:
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #60]
	ldr	r3, .L201+16
.LPIC30:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #60]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #84]
	ldr	r3, .L201+20
.LPIC31:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #60]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L149
	b	.L150
.L149:
	ldr	r3, .L201+24
.LPIC32:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #60]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #1
	cmp	r3, #11
	bhi	.L150
	adr	r1, .L152
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L152:
	.word	.L151+1-.L152
	.word	.L153+1-.L152
	.word	.L154+1-.L152
	.word	.L155+1-.L152
	.word	.L156+1-.L152
	.word	.L157+1-.L152
	.word	.L158+1-.L152
	.word	.L159+1-.L152
	.word	.L160+1-.L152
	.word	.L161+1-.L152
	.word	.L162+1-.L152
	.word	.L163+1-.L152
.L153:
	ldr	r3, [r7, #92]
	str	r3, [r7, #88]
	b	.L150
.L156:
	ldr	r2, [r7, #92]
	ldr	r3, [r7, #88]
	subs	r2, r2, r3
	add	r3, r7, #40
	ldr	r0, [r7, #112]
	ldr	r1, [r7, #88]
	bl	hb_font_glyph_from_string(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L164
	movs	r3, #0
	b	.L200
.L164:
	b	.L150
.L161:
	add	r3, r7, #40
	adds	r3, r3, #8
	ldr	r0, [r7, #88]
	ldr	r1, [r7, #92]
	mov	r2, r3
	bl	_ZL10parse_uintPKcS0_Pj(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L166
	movs	r3, #0
	b	.L200
.L166:
	b	.L150
.L154:
	add	r3, r7, #20
	adds	r3, r3, #8
	ldr	r0, [r7, #88]
	ldr	r1, [r7, #92]
	mov	r2, r3
	bl	_ZL9parse_intPKcS0_Pi(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L167
	movs	r3, #0
	b	.L200
.L167:
	b	.L150
.L163:
	add	r3, r7, #20
	adds	r3, r3, #12
	ldr	r0, [r7, #88]
	ldr	r1, [r7, #92]
	mov	r2, r3
	bl	_ZL9parse_intPKcS0_Pi(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L168
	movs	r3, #0
	b	.L200
.L168:
	b	.L150
.L158:
	add	r3, r7, #20
	ldr	r0, [r7, #88]
	ldr	r1, [r7, #92]
	mov	r2, r3
	bl	_ZL9parse_intPKcS0_Pi(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L169
	movs	r3, #0
	b	.L200
.L169:
	b	.L150
.L151:
	add	r3, r7, #40
	mov	r0, r3
	movs	r1, #0
	movs	r2, #20
	bl	memset(PLT)
	add	r3, r7, #20
	mov	r0, r3
	movs	r1, #0
	movs	r2, #20
	bl	memset(PLT)
	ldr	r3, [r7, #92]
	str	r3, [r7, #88]
	b	.L150
.L155:
	ldr	r2, [r7, #92]
	ldr	r3, [r7, #88]
	subs	r2, r2, r3
	add	r3, r7, #40
	ldr	r0, [r7, #112]
	ldr	r1, [r7, #88]
	bl	hb_font_glyph_from_string(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L170
	movs	r3, #0
	b	.L200
.L170:
	add	r3, r7, #40
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZN11hb_buffer_t8add_infoERK15hb_glyph_info_t(PLT)
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #80]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L171
	movs	r3, #0
	b	.L200
.L171:
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #108]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #88]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	subs	r3, r3, #20
	add	r3, r3, r1
	mov	r4, r3
	add	r5, r7, #20
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7]
	ldr	r2, [r7, #92]
	str	r2, [r3]
	b	.L150
.L160:
	add	r3, r7, #40
	adds	r3, r3, #8
	ldr	r0, [r7, #88]
	ldr	r1, [r7, #92]
	mov	r2, r3
	bl	_ZL10parse_uintPKcS0_Pj(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L172
	movs	r3, #0
	b	.L200
.L172:
	add	r3, r7, #40
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZN11hb_buffer_t8add_infoERK15hb_glyph_info_t(PLT)
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #80]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L173
	movs	r3, #0
	b	.L200
.L173:
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #108]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #88]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	subs	r3, r3, #20
	add	r3, r3, r1
	mov	r4, r3
	add	r5, r7, #20
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7]
	ldr	r2, [r7, #92]
	str	r2, [r3]
	b	.L150
.L162:
	add	r3, r7, #20
	adds	r3, r3, #12
	ldr	r0, [r7, #88]
	ldr	r1, [r7, #92]
	mov	r2, r3
	bl	_ZL9parse_intPKcS0_Pi(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L174
	movs	r3, #0
	b	.L200
.L174:
	add	r3, r7, #40
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZN11hb_buffer_t8add_infoERK15hb_glyph_info_t(PLT)
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #80]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L175
	movs	r3, #0
	b	.L200
.L175:
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #108]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #88]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	subs	r3, r3, #20
	add	r3, r3, r1
	mov	r4, r3
	add	r5, r7, #20
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7]
	ldr	r2, [r7, #92]
	str	r2, [r3]
	b	.L150
.L157:
	add	r3, r7, #20
	ldr	r0, [r7, #88]
	ldr	r1, [r7, #92]
	mov	r2, r3
	bl	_ZL9parse_intPKcS0_Pi(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L176
	movs	r3, #0
	b	.L200
.L176:
	add	r3, r7, #40
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZN11hb_buffer_t8add_infoERK15hb_glyph_info_t(PLT)
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #80]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L177
	movs	r3, #0
	b	.L200
.L177:
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #108]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #88]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	subs	r3, r3, #20
	add	r3, r3, r1
	mov	r4, r3
	add	r5, r7, #20
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7]
	ldr	r2, [r7, #92]
	str	r2, [r3]
	b	.L150
.L159:
	add	r3, r7, #20
	adds	r3, r3, #4
	ldr	r0, [r7, #88]
	ldr	r1, [r7, #92]
	mov	r2, r3
	bl	_ZL9parse_intPKcS0_Pi(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L178
	movs	r3, #0
	b	.L200
.L178:
	add	r3, r7, #40
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZN11hb_buffer_t8add_infoERK15hb_glyph_info_t(PLT)
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #80]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L179
	movs	r3, #0
	b	.L200
.L179:
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #108]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #88]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	subs	r3, r3, #20
	add	r3, r3, r1
	mov	r4, r3
	add	r5, r7, #20
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7]
	ldr	r2, [r7, #92]
	str	r2, [r3]
	nop
.L150:
	ldr	r3, [r7, #84]
	cmp	r3, #0
	bne	.L180
	b	.L146
.L180:
	ldr	r3, [r7, #92]
	adds	r3, r3, #1
	str	r3, [r7, #92]
	ldr	r2, [r7, #92]
	ldr	r3, [r7, #80]
	cmp	r2, r3
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L144
	b	.L145
.L144:
	ldr	r2, [r7, #92]
	ldr	r3, [r7, #76]
	cmp	r2, r3
	bne	.L146
	ldr	r3, .L201+28
.LPIC33:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #84]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #4
	cmp	r3, #7
	bhi	.L146
	adr	r1, .L183
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L183:
	.word	.L182+1-.L183
	.word	.L146+1-.L183
	.word	.L184+1-.L183
	.word	.L146+1-.L183
	.word	.L185+1-.L183
	.word	.L186+1-.L183
	.word	.L146+1-.L183
	.word	.L187+1-.L183
.L182:
	ldr	r2, [r7, #92]
	ldr	r3, [r7, #88]
	subs	r2, r2, r3
	add	r3, r7, #40
	ldr	r0, [r7, #112]
	ldr	r1, [r7, #88]
	bl	hb_font_glyph_from_string(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L188
	movs	r3, #0
	b	.L200
.L188:
	add	r3, r7, #40
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZN11hb_buffer_t8add_infoERK15hb_glyph_info_t(PLT)
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #80]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L189
	movs	r3, #0
	b	.L200
.L189:
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #108]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #88]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	subs	r3, r3, #20
	add	r3, r3, r1
	mov	r4, r3
	add	r5, r7, #20
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7]
	ldr	r2, [r7, #92]
	str	r2, [r3]
	b	.L181
.L186:
	add	r3, r7, #40
	adds	r3, r3, #8
	ldr	r0, [r7, #88]
	ldr	r1, [r7, #92]
	mov	r2, r3
	bl	_ZL10parse_uintPKcS0_Pj(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L190
	movs	r3, #0
	b	.L200
.L190:
	add	r3, r7, #40
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZN11hb_buffer_t8add_infoERK15hb_glyph_info_t(PLT)
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #80]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L191
	movs	r3, #0
	b	.L200
.L191:
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #108]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #88]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	subs	r3, r3, #20
	add	r3, r3, r1
	mov	r4, r3
	add	r5, r7, #20
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7]
	ldr	r2, [r7, #92]
	str	r2, [r3]
	b	.L181
.L187:
	add	r3, r7, #20
	adds	r3, r3, #12
	ldr	r0, [r7, #88]
	ldr	r1, [r7, #92]
	mov	r2, r3
	bl	_ZL9parse_intPKcS0_Pi(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L192
	movs	r3, #0
	b	.L200
.L192:
	add	r3, r7, #40
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZN11hb_buffer_t8add_infoERK15hb_glyph_info_t(PLT)
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #80]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L193
	movs	r3, #0
	b	.L200
.L193:
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #108]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #88]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	subs	r3, r3, #20
	add	r3, r3, r1
	mov	r4, r3
	add	r5, r7, #20
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7]
	ldr	r2, [r7, #92]
	str	r2, [r3]
	b	.L181
.L184:
	add	r3, r7, #20
	ldr	r0, [r7, #88]
	ldr	r1, [r7, #92]
	mov	r2, r3
	bl	_ZL9parse_intPKcS0_Pi(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L194
	movs	r3, #0
	b	.L200
.L194:
	add	r3, r7, #40
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZN11hb_buffer_t8add_infoERK15hb_glyph_info_t(PLT)
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #80]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L195
	movs	r3, #0
	b	.L200
.L195:
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #108]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #88]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	subs	r3, r3, #20
	add	r3, r3, r1
	mov	r4, r3
	add	r5, r7, #20
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7]
	ldr	r2, [r7, #92]
	str	r2, [r3]
	b	.L181
.L185:
	add	r3, r7, #20
	adds	r3, r3, #4
	ldr	r0, [r7, #88]
	ldr	r1, [r7, #92]
	mov	r2, r3
	bl	_ZL9parse_intPKcS0_Pi(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L196
	movs	r3, #0
	b	.L200
.L196:
	add	r3, r7, #40
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZN11hb_buffer_t8add_infoERK15hb_glyph_info_t(PLT)
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #80]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L197
	movs	r3, #0
	b	.L200
.L197:
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #108]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #88]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	subs	r3, r3, #20
	add	r3, r3, r1
	mov	r4, r3
	add	r5, r7, #20
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7]
	ldr	r2, [r7, #92]
	str	r2, [r3]
	nop
.L181:
.L146:
	ldr	r3, [r7]
	ldr	r2, [r7, #92]
	str	r2, [r3]
	ldr	r2, [r7, #92]
	ldr	r3, [r7, #80]
	cmp	r2, r3
	bne	.L198
	ldr	r3, [r7, #92]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #93
	beq	.L198
	movs	r3, #1
	b	.L199
.L198:
	movs	r3, #0
.L199:
.L200:
	mov	r0, r3
	adds	r7, r7, #96
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L202:
	.align	2
.L201:
	.word	_ZL28_deserialize_text_trans_keys-(.LPIC26+4)
	.word	_ZL31_deserialize_text_index_offsets-(.LPIC27+4)
	.word	_ZL26_deserialize_text_indicies-(.LPIC28+4)
	.word	_ZL27_deserialize_text_key_spans-(.LPIC29+4)
	.word	_ZL29_deserialize_text_trans_targs-(.LPIC30+4)
	.word	_ZL31_deserialize_text_trans_actions-(.LPIC31+4)
	.word	_ZL31_deserialize_text_trans_actions-(.LPIC32+4)
	.word	_ZL29_deserialize_text_eof_actions-(.LPIC33+4)
	.fnend
	.size	_ZL34_hb_buffer_deserialize_glyphs_textP11hb_buffer_tPKcjPS2_P9hb_font_t, .-_ZL34_hb_buffer_deserialize_glyphs_textP11hb_buffer_tPKcjPS2_P9hb_font_t
	.section	.text.hb_buffer_deserialize_glyphs,"ax",%progbits
	.align	2
	.global	hb_buffer_deserialize_glyphs
	.thumb
	.thumb_func
	.type	hb_buffer_deserialize_glyphs, %function
hb_buffer_deserialize_glyphs:
	.fnstart
.LFB122:
	@ args = 8, pretend = 0, frame = 24
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
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L204
	add	r3, r7, #20
	str	r3, [r7]
.L204:
	ldr	r3, [r7]
	ldr	r2, [r7, #8]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #88]
	cmp	r3, #0
	bne	.L205
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #56]
	cmp	r3, #0
	beq	.L206
.L205:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #56]
	cmp	r3, #2
	beq	.L206
	ldr	r3, .L216
.LPIC34:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L216+4
.LPIC35:
	add	r3, pc
	mov	r1, r3
	mov	r2, #366
	ldr	r3, .L216+8
.LPIC36:
	add	r3, pc
	bl	__assert_fail(PLT)
.L206:
	ldr	r3, [r7, #4]
	cmp	r3, #-1
	bne	.L207
	ldr	r0, [r7, #8]
	bl	strlen(PLT)
	mov	r3, r0
	str	r3, [r7, #4]
.L207:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L208
	ldr	r3, [r7]
	ldr	r2, [r7, #8]
	str	r2, [r3]
	movs	r3, #0
	b	.L214
.L208:
	ldr	r0, [r7, #12]
	movs	r1, #2
	bl	hb_buffer_set_content_type(PLT)
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bne	.L210
	bl	hb_font_get_empty(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
.L210:
	ldr	r2, [r7, #36]
	movw	r3, #20302
	movt	r3, 19027
	cmp	r2, r3
	beq	.L212
	movw	r3, #22612
	movt	r3, 21573
	cmp	r2, r3
	bne	.L215
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #32]
	str	r2, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	mov	r2, r3
	ldr	r3, [r7]
	bl	_ZL34_hb_buffer_deserialize_glyphs_textP11hb_buffer_tPKcjPS2_P9hb_font_t(PLT)
	mov	r3, r0
	b	.L214
.L212:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #32]
	str	r2, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	mov	r2, r3
	ldr	r3, [r7]
	bl	_ZL34_hb_buffer_deserialize_glyphs_jsonP11hb_buffer_tPKcjPS2_P9hb_font_t(PLT)
	mov	r3, r0
	b	.L214
.L215:
	movs	r3, #0
.L214:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L217:
	.align	2
.L216:
	.word	.LC13-(.LPIC34+4)
	.word	.LC12-(.LPIC35+4)
	.word	_ZZ28hb_buffer_deserialize_glyphsE19__PRETTY_FUNCTION__-(.LPIC36+4)
	.fnend
	.size	hb_buffer_deserialize_glyphs, .-hb_buffer_deserialize_glyphs
	.section	.text._Z3MINIjET_RKS0_S2_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z3MINIjET_RKS0_S2_, %function
_Z3MINIjET_RKS0_S2_:
	.fnstart
.LFB124:
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
	bcs	.L219
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	b	.L220
.L219:
	ldr	r3, [r7]
	ldr	r3, [r3]
.L220:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_Z3MINIjET_RKS0_S2_, .-_Z3MINIjET_RKS0_S2_
	.section	.text._Z12ARRAY_LENGTHIcLj1024EEjRAT0__KT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z12ARRAY_LENGTHIcLj1024EEjRAT0__KT_, %function
_Z12ARRAY_LENGTHIcLj1024EEjRAT0__KT_:
	.fnstart
.LFB130:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, #1024
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_Z12ARRAY_LENGTHIcLj1024EEjRAT0__KT_, .-_Z12ARRAY_LENGTHIcLj1024EEjRAT0__KT_
	.section	.text._Z3MAXIiET_RKS0_S2_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z3MAXIiET_RKS0_S2_, %function
_Z3MAXIiET_RKS0_S2_:
	.fnstart
.LFB131:
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
	ble	.L225
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	b	.L226
.L225:
	ldr	r3, [r7]
	ldr	r3, [r3]
.L226:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_Z3MAXIiET_RKS0_S2_, .-_Z3MAXIiET_RKS0_S2_
	.section	.text._Z12ARRAY_LENGTHIcLj32EEjRAT0__KT_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_Z12ARRAY_LENGTHIcLj32EEjRAT0__KT_, %function
_Z12ARRAY_LENGTHIcLj32EEjRAT0__KT_:
	.fnstart
.LFB132:
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
	.section	.rodata._ZL28_deserialize_json_trans_keys,"a",%progbits
	.align	2
	.type	_ZL28_deserialize_json_trans_keys, %object
	.size	_ZL28_deserialize_json_trans_keys, 95
_ZL28_deserialize_json_trans_keys:
	.byte	0
	.byte	0
	.byte	9
	.byte	123
	.byte	9
	.byte	34
	.byte	97
	.byte	103
	.byte	120
	.byte	121
	.byte	34
	.byte	34
	.byte	9
	.byte	58
	.byte	9
	.byte	57
	.byte	48
	.byte	57
	.byte	9
	.byte	125
	.byte	9
	.byte	125
	.byte	9
	.byte	125
	.byte	34
	.byte	34
	.byte	9
	.byte	58
	.byte	9
	.byte	57
	.byte	48
	.byte	57
	.byte	9
	.byte	125
	.byte	9
	.byte	125
	.byte	108
	.byte	108
	.byte	34
	.byte	34
	.byte	9
	.byte	58
	.byte	9
	.byte	57
	.byte	9
	.byte	125
	.byte	9
	.byte	125
	.byte	120
	.byte	121
	.byte	34
	.byte	34
	.byte	9
	.byte	58
	.byte	9
	.byte	57
	.byte	48
	.byte	57
	.byte	9
	.byte	125
	.byte	9
	.byte	125
	.byte	34
	.byte	34
	.byte	9
	.byte	58
	.byte	9
	.byte	57
	.byte	48
	.byte	57
	.byte	9
	.byte	125
	.byte	9
	.byte	125
	.byte	34
	.byte	34
	.byte	9
	.byte	58
	.byte	9
	.byte	57
	.byte	65
	.byte	122
	.byte	34
	.byte	122
	.byte	9
	.byte	125
	.byte	9
	.byte	125
	.byte	9
	.byte	93
	.byte	9
	.byte	123
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata._ZL27_deserialize_json_key_spans,"a",%progbits
	.align	2
	.type	_ZL27_deserialize_json_key_spans, %object
	.size	_ZL27_deserialize_json_key_spans, 47
_ZL27_deserialize_json_key_spans:
	.byte	0
	.byte	115
	.byte	26
	.byte	7
	.byte	2
	.byte	1
	.byte	50
	.byte	49
	.byte	10
	.byte	117
	.byte	117
	.byte	117
	.byte	1
	.byte	50
	.byte	49
	.byte	10
	.byte	117
	.byte	117
	.byte	1
	.byte	1
	.byte	50
	.byte	49
	.byte	117
	.byte	117
	.byte	2
	.byte	1
	.byte	50
	.byte	49
	.byte	10
	.byte	117
	.byte	117
	.byte	1
	.byte	50
	.byte	49
	.byte	10
	.byte	117
	.byte	117
	.byte	1
	.byte	50
	.byte	49
	.byte	58
	.byte	89
	.byte	117
	.byte	117
	.byte	85
	.byte	115
	.byte	0
	.section	.rodata._ZL31_deserialize_json_index_offsets,"a",%progbits
	.align	2
	.type	_ZL31_deserialize_json_index_offsets, %object
	.size	_ZL31_deserialize_json_index_offsets, 94
_ZL31_deserialize_json_index_offsets:
	.short	0
	.short	0
	.short	116
	.short	143
	.short	151
	.short	154
	.short	156
	.short	207
	.short	257
	.short	268
	.short	386
	.short	504
	.short	622
	.short	624
	.short	675
	.short	725
	.short	736
	.short	854
	.short	972
	.short	974
	.short	976
	.short	1027
	.short	1077
	.short	1195
	.short	1313
	.short	1316
	.short	1318
	.short	1369
	.short	1419
	.short	1430
	.short	1548
	.short	1666
	.short	1668
	.short	1719
	.short	1769
	.short	1780
	.short	1898
	.short	2016
	.short	2018
	.short	2069
	.short	2119
	.short	2178
	.short	2268
	.short	2386
	.short	2504
	.short	2590
	.short	2706
	.section	.rodata._ZL26_deserialize_json_indicies,"a",%progbits
	.align	2
	.type	_ZL26_deserialize_json_indicies, %object
	.size	_ZL26_deserialize_json_indicies, 2708
_ZL26_deserialize_json_indicies:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	2
	.byte	1
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	3
	.byte	1
	.byte	4
	.byte	1
	.byte	5
	.byte	1
	.byte	6
	.byte	7
	.byte	1
	.byte	1
	.byte	8
	.byte	1
	.byte	9
	.byte	10
	.byte	1
	.byte	11
	.byte	1
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	11
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	12
	.byte	1
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	12
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	13
	.byte	1
	.byte	1
	.byte	14
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	1
	.byte	16
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	1
	.byte	18
	.byte	18
	.byte	18
	.byte	18
	.byte	18
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	18
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	19
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	20
	.byte	1
	.byte	21
	.byte	21
	.byte	21
	.byte	21
	.byte	21
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	21
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	3
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	22
	.byte	1
	.byte	18
	.byte	18
	.byte	18
	.byte	18
	.byte	18
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	18
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	19
	.byte	1
	.byte	1
	.byte	1
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	20
	.byte	1
	.byte	23
	.byte	1
	.byte	23
	.byte	23
	.byte	23
	.byte	23
	.byte	23
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	23
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	24
	.byte	1
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	24
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	25
	.byte	1
	.byte	1
	.byte	26
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	1
	.byte	28
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	1
	.byte	30
	.byte	30
	.byte	30
	.byte	30
	.byte	30
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	30
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	31
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	32
	.byte	1
	.byte	30
	.byte	30
	.byte	30
	.byte	30
	.byte	30
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	30
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	31
	.byte	1
	.byte	1
	.byte	1
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	32
	.byte	1
	.byte	33
	.byte	1
	.byte	34
	.byte	1
	.byte	34
	.byte	34
	.byte	34
	.byte	34
	.byte	34
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	34
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	35
	.byte	1
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	35
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	36
	.byte	37
	.byte	37
	.byte	37
	.byte	37
	.byte	37
	.byte	37
	.byte	37
	.byte	37
	.byte	37
	.byte	1
	.byte	38
	.byte	38
	.byte	38
	.byte	38
	.byte	38
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	38
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	39
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	40
	.byte	1
	.byte	38
	.byte	38
	.byte	38
	.byte	38
	.byte	38
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	38
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	39
	.byte	1
	.byte	1
	.byte	1
	.byte	41
	.byte	41
	.byte	41
	.byte	41
	.byte	41
	.byte	41
	.byte	41
	.byte	41
	.byte	41
	.byte	41
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	40
	.byte	1
	.byte	42
	.byte	43
	.byte	1
	.byte	44
	.byte	1
	.byte	44
	.byte	44
	.byte	44
	.byte	44
	.byte	44
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	44
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	45
	.byte	1
	.byte	45
	.byte	45
	.byte	45
	.byte	45
	.byte	45
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	45
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	46
	.byte	1
	.byte	1
	.byte	47
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	1
	.byte	49
	.byte	50
	.byte	50
	.byte	50
	.byte	50
	.byte	50
	.byte	50
	.byte	50
	.byte	50
	.byte	50
	.byte	1
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	51
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	52
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	53
	.byte	1
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	51
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	52
	.byte	1
	.byte	1
	.byte	1
	.byte	50
	.byte	50
	.byte	50
	.byte	50
	.byte	50
	.byte	50
	.byte	50
	.byte	50
	.byte	50
	.byte	50
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	53
	.byte	1
	.byte	54
	.byte	1
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	54
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	55
	.byte	1
	.byte	55
	.byte	55
	.byte	55
	.byte	55
	.byte	55
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	55
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	56
	.byte	1
	.byte	1
	.byte	57
	.byte	58
	.byte	58
	.byte	58
	.byte	58
	.byte	58
	.byte	58
	.byte	58
	.byte	58
	.byte	58
	.byte	1
	.byte	59
	.byte	60
	.byte	60
	.byte	60
	.byte	60
	.byte	60
	.byte	60
	.byte	60
	.byte	60
	.byte	60
	.byte	1
	.byte	61
	.byte	61
	.byte	61
	.byte	61
	.byte	61
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	61
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	62
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	63
	.byte	1
	.byte	61
	.byte	61
	.byte	61
	.byte	61
	.byte	61
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	61
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	62
	.byte	1
	.byte	1
	.byte	1
	.byte	60
	.byte	60
	.byte	60
	.byte	60
	.byte	60
	.byte	60
	.byte	60
	.byte	60
	.byte	60
	.byte	60
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	63
	.byte	1
	.byte	64
	.byte	1
	.byte	64
	.byte	64
	.byte	64
	.byte	64
	.byte	64
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	64
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	65
	.byte	1
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	65
	.byte	1
	.byte	66
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	67
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	68
	.byte	1
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	69
	.byte	1
	.byte	70
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	71
	.byte	71
	.byte	1
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	71
	.byte	1
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	1
	.byte	72
	.byte	72
	.byte	72
	.byte	72
	.byte	72
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	72
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	73
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	74
	.byte	1
	.byte	72
	.byte	72
	.byte	72
	.byte	72
	.byte	72
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	72
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	73
	.byte	1
	.byte	1
	.byte	1
	.byte	75
	.byte	75
	.byte	75
	.byte	75
	.byte	75
	.byte	75
	.byte	75
	.byte	75
	.byte	75
	.byte	75
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	74
	.byte	1
	.byte	76
	.byte	76
	.byte	76
	.byte	76
	.byte	76
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	76
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	77
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	78
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	2
	.byte	1
	.byte	1
	.byte	0
	.section	.rodata._ZL29_deserialize_json_trans_targs,"a",%progbits
	.align	2
	.type	_ZL29_deserialize_json_trans_targs, %object
	.size	_ZL29_deserialize_json_trans_targs, 79
_ZL29_deserialize_json_trans_targs:
	.byte	1
	.byte	0
	.byte	2
	.byte	2
	.byte	3
	.byte	4
	.byte	18
	.byte	24
	.byte	37
	.byte	5
	.byte	12
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	11
	.byte	9
	.byte	11
	.byte	10
	.byte	2
	.byte	44
	.byte	10
	.byte	44
	.byte	13
	.byte	14
	.byte	15
	.byte	16
	.byte	17
	.byte	16
	.byte	17
	.byte	10
	.byte	2
	.byte	44
	.byte	19
	.byte	20
	.byte	21
	.byte	22
	.byte	23
	.byte	10
	.byte	2
	.byte	44
	.byte	23
	.byte	25
	.byte	31
	.byte	26
	.byte	27
	.byte	28
	.byte	29
	.byte	30
	.byte	29
	.byte	30
	.byte	10
	.byte	2
	.byte	44
	.byte	32
	.byte	33
	.byte	34
	.byte	35
	.byte	36
	.byte	35
	.byte	36
	.byte	10
	.byte	2
	.byte	44
	.byte	38
	.byte	39
	.byte	40
	.byte	42
	.byte	43
	.byte	41
	.byte	10
	.byte	41
	.byte	10
	.byte	2
	.byte	44
	.byte	43
	.byte	44
	.byte	45
	.byte	46
	.section	.rodata._ZL31_deserialize_json_trans_actions,"a",%progbits
	.align	2
	.type	_ZL31_deserialize_json_trans_actions, %object
	.size	_ZL31_deserialize_json_trans_actions, 79
_ZL31_deserialize_json_trans_actions:
	.byte	0
	.byte	0
	.byte	1
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
	.byte	2
	.byte	2
	.byte	2
	.byte	0
	.byte	0
	.byte	3
	.byte	3
	.byte	4
	.byte	0
	.byte	5
	.byte	0
	.byte	0
	.byte	2
	.byte	2
	.byte	2
	.byte	0
	.byte	0
	.byte	6
	.byte	6
	.byte	7
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	2
	.byte	8
	.byte	8
	.byte	9
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	2
	.byte	2
	.byte	0
	.byte	0
	.byte	10
	.byte	10
	.byte	11
	.byte	0
	.byte	0
	.byte	2
	.byte	2
	.byte	2
	.byte	0
	.byte	0
	.byte	12
	.byte	12
	.byte	13
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	2
	.byte	2
	.byte	14
	.byte	0
	.byte	15
	.byte	15
	.byte	16
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata._ZL22deserialize_json_start,"a",%progbits
	.align	2
	.type	_ZL22deserialize_json_start, %object
	.size	_ZL22deserialize_json_start, 4
_ZL22deserialize_json_start:
	.word	1
	.section	.rodata._ZL28deserialize_json_first_final,"a",%progbits
	.align	2
	.type	_ZL28deserialize_json_first_final, %object
	.size	_ZL28deserialize_json_first_final, 4
_ZL28deserialize_json_first_final:
	.word	44
	.section	.rodata._ZL22deserialize_json_error,"a",%progbits
	.align	2
	.type	_ZL22deserialize_json_error, %object
	.size	_ZL22deserialize_json_error, 4
_ZL22deserialize_json_error:
	.space	4
	.section	.rodata._ZL24deserialize_json_en_main,"a",%progbits
	.align	2
	.type	_ZL24deserialize_json_en_main, %object
	.size	_ZL24deserialize_json_en_main, 4
_ZL24deserialize_json_en_main:
	.word	1
	.section	.rodata._ZL28_deserialize_text_trans_keys,"a",%progbits
	.align	2
	.type	_ZL28_deserialize_text_trans_keys, %object
	.size	_ZL28_deserialize_text_trans_keys, 55
_ZL28_deserialize_text_trans_keys:
	.byte	0
	.byte	0
	.byte	9
	.byte	122
	.byte	45
	.byte	57
	.byte	48
	.byte	57
	.byte	45
	.byte	57
	.byte	48
	.byte	57
	.byte	48
	.byte	57
	.byte	45
	.byte	57
	.byte	48
	.byte	57
	.byte	44
	.byte	44
	.byte	45
	.byte	57
	.byte	48
	.byte	57
	.byte	44
	.byte	57
	.byte	9
	.byte	124
	.byte	9
	.byte	124
	.byte	0
	.byte	0
	.byte	9
	.byte	122
	.byte	9
	.byte	124
	.byte	9
	.byte	124
	.byte	9
	.byte	124
	.byte	9
	.byte	124
	.byte	9
	.byte	124
	.byte	9
	.byte	124
	.byte	9
	.byte	124
	.byte	9
	.byte	124
	.byte	9
	.byte	124
	.byte	9
	.byte	124
	.byte	0
	.section	.rodata._ZL27_deserialize_text_key_spans,"a",%progbits
	.align	2
	.type	_ZL27_deserialize_text_key_spans, %object
	.size	_ZL27_deserialize_text_key_spans, 27
_ZL27_deserialize_text_key_spans:
	.byte	0
	.byte	114
	.byte	13
	.byte	10
	.byte	13
	.byte	10
	.byte	10
	.byte	13
	.byte	10
	.byte	1
	.byte	13
	.byte	10
	.byte	14
	.byte	116
	.byte	116
	.byte	0
	.byte	114
	.byte	116
	.byte	116
	.byte	116
	.byte	116
	.byte	116
	.byte	116
	.byte	116
	.byte	116
	.byte	116
	.byte	116
	.section	.rodata._ZL31_deserialize_text_index_offsets,"a",%progbits
	.align	2
	.type	_ZL31_deserialize_text_index_offsets, %object
	.size	_ZL31_deserialize_text_index_offsets, 54
_ZL31_deserialize_text_index_offsets:
	.short	0
	.short	0
	.short	115
	.short	129
	.short	140
	.short	154
	.short	165
	.short	176
	.short	190
	.short	201
	.short	203
	.short	217
	.short	228
	.short	243
	.short	360
	.short	477
	.short	478
	.short	593
	.short	710
	.short	827
	.short	944
	.short	1061
	.short	1178
	.short	1295
	.short	1412
	.short	1529
	.short	1646
	.section	.rodata._ZL26_deserialize_text_indicies,"a",%progbits
	.align	2
	.type	_ZL26_deserialize_text_indicies, %object
	.size	_ZL26_deserialize_text_indicies, 1764
_ZL26_deserialize_text_indicies:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	2
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	1
	.byte	5
	.byte	1
	.byte	1
	.byte	6
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	1
	.byte	8
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	1
	.byte	10
	.byte	1
	.byte	1
	.byte	11
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	1
	.byte	13
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	1
	.byte	15
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	1
	.byte	17
	.byte	1
	.byte	1
	.byte	18
	.byte	19
	.byte	19
	.byte	19
	.byte	19
	.byte	19
	.byte	19
	.byte	19
	.byte	19
	.byte	19
	.byte	1
	.byte	20
	.byte	21
	.byte	21
	.byte	21
	.byte	21
	.byte	21
	.byte	21
	.byte	21
	.byte	21
	.byte	21
	.byte	1
	.byte	22
	.byte	1
	.byte	23
	.byte	1
	.byte	1
	.byte	24
	.byte	25
	.byte	25
	.byte	25
	.byte	25
	.byte	25
	.byte	25
	.byte	25
	.byte	25
	.byte	25
	.byte	1
	.byte	26
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	1
	.byte	22
	.byte	1
	.byte	1
	.byte	1
	.byte	21
	.byte	21
	.byte	21
	.byte	21
	.byte	21
	.byte	21
	.byte	21
	.byte	21
	.byte	21
	.byte	21
	.byte	1
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	28
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	29
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	30
	.byte	1
	.byte	1
	.byte	31
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	32
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	33
	.byte	1
	.byte	34
	.byte	34
	.byte	34
	.byte	34
	.byte	34
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	34
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	35
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	36
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	2
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	1
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	28
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	29
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	37
	.byte	37
	.byte	37
	.byte	37
	.byte	37
	.byte	37
	.byte	37
	.byte	37
	.byte	37
	.byte	37
	.byte	1
	.byte	1
	.byte	1
	.byte	30
	.byte	1
	.byte	1
	.byte	31
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	32
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	33
	.byte	1
	.byte	38
	.byte	38
	.byte	38
	.byte	38
	.byte	38
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	38
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	39
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	40
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	41
	.byte	1
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	42
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	43
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	44
	.byte	1
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	42
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	43
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	44
	.byte	1
	.byte	38
	.byte	38
	.byte	38
	.byte	38
	.byte	38
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	38
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	39
	.byte	1
	.byte	1
	.byte	1
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	40
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	41
	.byte	1
	.byte	45
	.byte	45
	.byte	45
	.byte	45
	.byte	45
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	45
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	46
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	47
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	48
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	49
	.byte	1
	.byte	50
	.byte	50
	.byte	50
	.byte	50
	.byte	50
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	50
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	51
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	52
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	53
	.byte	1
	.byte	50
	.byte	50
	.byte	50
	.byte	50
	.byte	50
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	50
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	51
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	52
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	53
	.byte	1
	.byte	45
	.byte	45
	.byte	45
	.byte	45
	.byte	45
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	45
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	46
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	47
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	48
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	49
	.byte	1
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	28
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	29
	.byte	1
	.byte	55
	.byte	55
	.byte	1
	.byte	55
	.byte	55
	.byte	55
	.byte	55
	.byte	55
	.byte	55
	.byte	55
	.byte	55
	.byte	55
	.byte	55
	.byte	1
	.byte	1
	.byte	1
	.byte	30
	.byte	1
	.byte	1
	.byte	31
	.byte	55
	.byte	55
	.byte	55
	.byte	55
	.byte	55
	.byte	55
	.byte	55
	.byte	55
	.byte	55
	.byte	55
	.byte	55
	.byte	55
	.byte	55
	.byte	55
	.byte	55
	.byte	55
	.byte	55
	.byte	55
	.byte	55
	.byte	55
	.byte	55
	.byte	55
	.byte	55
	.byte	55
	.byte	55
	.byte	55
	.byte	1
	.byte	1
	.byte	32
	.byte	1
	.byte	55
	.byte	1
	.byte	55
	.byte	55
	.byte	55
	.byte	55
	.byte	55
	.byte	55
	.byte	55
	.byte	55
	.byte	55
	.byte	55
	.byte	55
	.byte	55
	.byte	55
	.byte	55
	.byte	55
	.byte	55
	.byte	55
	.byte	55
	.byte	55
	.byte	55
	.byte	55
	.byte	55
	.byte	55
	.byte	55
	.byte	55
	.byte	55
	.byte	1
	.byte	33
	.byte	1
	.byte	0
	.section	.rodata._ZL29_deserialize_text_trans_targs,"a",%progbits
	.align	2
	.type	_ZL29_deserialize_text_trans_targs, %object
	.size	_ZL29_deserialize_text_trans_targs, 56
_ZL29_deserialize_text_trans_targs:
	.byte	1
	.byte	0
	.byte	13
	.byte	17
	.byte	26
	.byte	3
	.byte	18
	.byte	21
	.byte	18
	.byte	21
	.byte	5
	.byte	19
	.byte	20
	.byte	19
	.byte	20
	.byte	22
	.byte	25
	.byte	8
	.byte	9
	.byte	12
	.byte	9
	.byte	12
	.byte	10
	.byte	11
	.byte	23
	.byte	24
	.byte	23
	.byte	24
	.byte	14
	.byte	2
	.byte	6
	.byte	7
	.byte	15
	.byte	16
	.byte	14
	.byte	15
	.byte	16
	.byte	17
	.byte	14
	.byte	4
	.byte	15
	.byte	16
	.byte	14
	.byte	15
	.byte	16
	.byte	14
	.byte	2
	.byte	7
	.byte	15
	.byte	16
	.byte	14
	.byte	2
	.byte	15
	.byte	16
	.byte	25
	.byte	26
	.section	.rodata._ZL31_deserialize_text_trans_actions,"a",%progbits
	.align	2
	.type	_ZL31_deserialize_text_trans_actions, %object
	.size	_ZL31_deserialize_text_trans_actions, 56
_ZL31_deserialize_text_trans_actions:
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	2
	.byte	2
	.byte	2
	.byte	0
	.byte	0
	.byte	2
	.byte	2
	.byte	2
	.byte	0
	.byte	0
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	0
	.byte	0
	.byte	3
	.byte	2
	.byte	2
	.byte	2
	.byte	0
	.byte	0
	.byte	4
	.byte	5
	.byte	5
	.byte	5
	.byte	4
	.byte	4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	6
	.byte	7
	.byte	6
	.byte	6
	.byte	8
	.byte	8
	.byte	8
	.byte	9
	.byte	10
	.byte	10
	.byte	9
	.byte	9
	.byte	11
	.byte	12
	.byte	11
	.byte	11
	.byte	0
	.byte	0
	.section	.rodata._ZL29_deserialize_text_eof_actions,"a",%progbits
	.align	2
	.type	_ZL29_deserialize_text_eof_actions, %object
	.size	_ZL29_deserialize_text_eof_actions, 27
_ZL29_deserialize_text_eof_actions:
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
	.byte	4
	.byte	0
	.byte	0
	.byte	0
	.byte	4
	.byte	6
	.byte	8
	.byte	8
	.byte	6
	.byte	9
	.byte	11
	.byte	11
	.byte	9
	.byte	4
	.section	.rodata._ZL22deserialize_text_start,"a",%progbits
	.align	2
	.type	_ZL22deserialize_text_start, %object
	.size	_ZL22deserialize_text_start, 4
_ZL22deserialize_text_start:
	.word	1
	.section	.rodata._ZL28deserialize_text_first_final,"a",%progbits
	.align	2
	.type	_ZL28deserialize_text_first_final, %object
	.size	_ZL28deserialize_text_first_final, 4
_ZL28deserialize_text_first_final:
	.word	13
	.section	.rodata._ZL22deserialize_text_error,"a",%progbits
	.align	2
	.type	_ZL22deserialize_text_error, %object
	.size	_ZL22deserialize_text_error, 4
_ZL22deserialize_text_error:
	.space	4
	.section	.rodata._ZL24deserialize_text_en_main,"a",%progbits
	.align	2
	.type	_ZL24deserialize_text_en_main, %object
	.size	_ZL24deserialize_text_en_main, 4
_ZL24deserialize_text_en_main:
	.word	1
	.section	.rodata._ZZ26hb_buffer_serialize_glyphsE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZ26hb_buffer_serialize_glyphsE19__PRETTY_FUNCTION__, %object
	.size	_ZZ26hb_buffer_serialize_glyphsE19__PRETTY_FUNCTION__, 189
_ZZ26hb_buffer_serialize_glyphsE19__PRETTY_FUNCTION__:
	.ascii	"unsigned int hb_buffer_serialize_glyphs(hb_buffer_t"
	.ascii	"*, unsigned int, unsigned int, char*, unsigned int,"
	.ascii	" unsigned int*, hb_font_t*, hb_buffer_serialize_for"
	.ascii	"mat_t, hb_buffer_serialize_flags_t)\000"
	.section	.rodata._ZZ28hb_buffer_deserialize_glyphsE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZ28hb_buffer_deserialize_glyphsE19__PRETTY_FUNCTION__, %object
	.size	_ZZ28hb_buffer_deserialize_glyphsE19__PRETTY_FUNCTION__, 127
_ZZ28hb_buffer_deserialize_glyphsE19__PRETTY_FUNCTION__:
	.ascii	"hb_bool_t hb_buffer_deserialize_glyphs(hb_buffer_t*"
	.ascii	", const char*, int, const char**, hb_font_t*, hb_bu"
	.ascii	"ffer_serialize_format_t)\000"
	.hidden	_ZN11hb_buffer_t8add_infoERK15hb_glyph_info_t
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
