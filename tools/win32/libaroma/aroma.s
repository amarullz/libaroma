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
	.file	"aroma.c"
	.section	.text._libaroma_config_default,"ax",%progbits
	.align	2
	.global	_libaroma_config_default
	.thumb
	.thumb_func
	.type	_libaroma_config_default, %function
_libaroma_config_default:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L3
	movs	r2, #0
	ldr	r1, .L3+4
	movs	r0, #1
	push	{r4, r5, r6}
	movs	r6, #8
	ldr	r4, .L3+8
.LPIC0:
	add	r3, pc
.LPIC2:
	add	r1, pc
	strb	r2, [r3]
	ldr	r1, [r1, r4]
	ldr	r5, .L3+12
	ldr	r4, .L3+16
	ldr	r1, [r1]
.LPIC1:
	add	r5, pc
	strb	r2, [r3, #64]
.LPIC6:
	add	r4, pc
	strb	r2, [r3, #66]
	strb	r6, [r3, #65]
	str	r1, [r5]
	strb	r0, [r4]
	pop	{r4, r5, r6}
	bx	lr
.L4:
	.align	2
.L3:
	.word	.LANCHOR0-(.LPIC0+4)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC2+4)
	.word	stdout(GOT)
	.word	.LANCHOR1-(.LPIC1+4)
	.word	.LANCHOR2-(.LPIC6+4)
	.size	_libaroma_config_default, .-_libaroma_config_default
	.section	.text.libaroma_debug_output,"ax",%progbits
	.align	2
	.global	libaroma_debug_output
	.thumb
	.thumb_func
	.type	libaroma_debug_output, %function
libaroma_debug_output:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L10
	ldr	r2, .L10+4
.LPIC7:
	add	r3, pc
	ldr	r0, [r3]
.LPIC8:
	add	r2, pc
	cbz	r0, .L9
	bx	lr
.L9:
	ldr	r1, .L10+8
	ldr	r2, [r2, r1]
	ldr	r0, [r2]
	str	r0, [r3]
	bx	lr
.L11:
	.align	2
.L10:
	.word	.LANCHOR1-(.LPIC7+4)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC8+4)
	.word	stdout(GOT)
	.size	libaroma_debug_output, .-libaroma_debug_output
	.section	.text.libaroma_debug_tag,"ax",%progbits
	.align	2
	.global	libaroma_debug_tag
	.thumb
	.thumb_func
	.type	libaroma_debug_tag, %function
libaroma_debug_tag:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L13
.LPIC10:
	add	r0, pc
	bx	lr
.L14:
	.align	2
.L13:
	.word	.LANCHOR3-(.LPIC10+4)
	.size	libaroma_debug_tag, .-libaroma_debug_tag
	.section	.text.libaroma_debug_set_tag,"ax",%progbits
	.align	2
	.global	libaroma_debug_set_tag
	.thumb
	.thumb_func
	.type	libaroma_debug_set_tag, %function
libaroma_debug_set_tag:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L15
	mov	r3, r0
	ldr	r2, .L17
	ldr	r0, .L17+4
	mov	r1, #256
.LPIC12:
	add	r2, pc
.LPIC11:
	add	r0, pc
	b	snprintf(PLT)
.L15:
	bx	lr
.L18:
	.align	2
.L17:
	.word	.LC0-(.LPIC12+4)
	.word	.LANCHOR3-(.LPIC11+4)
	.size	libaroma_debug_set_tag, .-libaroma_debug_set_tag
	.section	.text.libaroma_debug_set_output,"ax",%progbits
	.align	2
	.global	libaroma_debug_set_output
	.thumb
	.thumb_func
	.type	libaroma_debug_set_output, %function
libaroma_debug_set_output:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L22
	ldr	r2, .L22+4
.LPIC13:
	add	r3, pc
.LPIC15:
	add	r2, pc
	str	r0, [r3]
	cbz	r0, .L21
	bx	lr
.L21:
	ldr	r1, .L22+8
	ldr	r2, [r2, r1]
	ldr	r2, [r2]
	str	r2, [r3]
	bx	lr
.L23:
	.align	2
.L22:
	.word	.LANCHOR1-(.LPIC13+4)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC15+4)
	.word	stdout(GOT)
	.size	libaroma_debug_set_output, .-libaroma_debug_set_output
	.section	.text.libaroma_config,"ax",%progbits
	.align	2
	.global	libaroma_config
	.thumb
	.thumb_func
	.type	libaroma_config, %function
libaroma_config:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	ldr	r3, .L27
.LPIC16:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cbnz	r3, .L25
	bl	_libaroma_config_default(PLT)
.L25:
	ldr	r0, .L27+4
.LPIC17:
	add	r0, pc
	pop	{r3, pc}
.L28:
	.align	2
.L27:
	.word	.LANCHOR2-(.LPIC16+4)
	.word	.LANCHOR0-(.LPIC17+4)
	.size	libaroma_config, .-libaroma_config
	.section	.text.libaroma_start,"ax",%progbits
	.align	2
	.global	libaroma_start
	.thumb
	.thumb_func
	.type	libaroma_start, %function
libaroma_start:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L58
	bl	libaroma_debug_output(PLT)
.LPIC18:
	add	r4, pc
	mov	r5, r0
	bl	libaroma_debug_tag(PLT)
	mov	r1, r4
	mov	r2, r0
	mov	r0, r5
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r6, r0
	movs	r0, #0
	bl	libaroma_info(PLT)
	mov	r5, r0
	movs	r0, #6
	bl	libaroma_info(PLT)
	ldr	r1, .L58+4
	mov	r3, r0
	mov	r2, r5
	mov	r0, r6
.LPIC19:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r5, r0
	bl	libaroma_debug_tag(PLT)
	mov	r1, r4
	mov	r2, r0
	mov	r0, r5
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r5, r0
	movs	r0, #7
	bl	libaroma_info(PLT)
	ldr	r1, .L58+8
	mov	r2, r0
	mov	r0, r5
.LPIC21:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r5, r0
	bl	libaroma_debug_tag(PLT)
	mov	r1, r4
	mov	r2, r0
	mov	r0, r5
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #32
	bl	fputc(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	bl	libaroma_config(PLT)
	ldrb	r3, [r0, #66]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L48
	bl	libaroma_config(PLT)
	ldrb	r3, [r0, #66]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L49
.L31:
	bl	libaroma_debug_output(PLT)
	mov	r4, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L58+12
	mov	r2, r0
	mov	r0, r4
.LPIC23:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L58+16
	movs	r2, #51
	movs	r1, #1
.LPIC24:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	bl	libaroma_config(PLT)
	ldrb	r3, [r0, #65]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L50
.L32:
	bl	libaroma_fb_init(PLT)
	mov	r4, r0
	cmp	r0, #0
	beq	.L51
	bl	libaroma_font_init(PLT)
	mov	r4, r0
	cmp	r0, #0
	beq	.L52
	bl	libaroma_hid_init(PLT)
	mov	r4, r0
	cmp	r0, #0
	beq	.L53
	bl	libaroma_msg_init(PLT)
	mov	r4, r0
	cmp	r0, #0
	beq	.L54
	bl	libaroma_lang_init(PLT)
	mov	r4, r0
	cmp	r0, #0
	beq	.L55
	bl	libaroma_timer_init(PLT)
	mov	r4, r0
	cmp	r0, #0
	beq	.L56
	bl	libaroma_wm_init(PLT)
	mov	r4, r0
	cmp	r0, #0
	beq	.L57
	ldr	r5, .L58+20
	movs	r4, #1
	bl	libaroma_debug_output(PLT)
	mov	r6, r0
.LPIC53:
	add	r5, pc
	bl	libaroma_debug_tag(PLT)
	mov	r1, r5
	mov	r2, r0
	mov	r0, r6
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L58+24
	movs	r2, #51
	mov	r1, r4
.LPIC54:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r6, r0
	bl	libaroma_debug_tag(PLT)
	mov	r1, r5
	mov	r2, r0
	mov	r0, r6
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #32
	bl	fputc(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	b	.L34
.L52:
	bl	libaroma_debug_output(PLT)
	mov	r5, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L58+28
	mov	r2, r0
	mov	r0, r5
.LPIC29:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L58+32
	movs	r1, #1
	movs	r2, #42
.LPIC30:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L58+36
	ldr	r2, .L58+40
.LPIC31:
	add	r1, pc
.LPIC32:
	add	r2, pc
	bl	fprintf(PLT)
.L34:
	mov	r0, r4
	pop	{r4, r5, r6, pc}
.L51:
	bl	libaroma_debug_output(PLT)
	mov	r5, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L58+44
	mov	r2, r0
	mov	r0, r5
.LPIC25:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L58+48
	movs	r1, #1
	movs	r2, #42
.LPIC26:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L58+52
	ldr	r2, .L58+56
.LPIC27:
	add	r1, pc
.LPIC28:
	add	r2, pc
	bl	fprintf(PLT)
	mov	r0, r4
	pop	{r4, r5, r6, pc}
.L50:
	bl	libaroma_config(PLT)
	ldrb	r0, [r0, #65]	@ zero_extendqisi2
	bl	libaroma_runtime_activate_cores(PLT)
	b	.L32
.L48:
	bl	libaroma_runtime_init(PLT)
	bl	libaroma_config(PLT)
	ldrb	r3, [r0, #66]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L31
.L49:
	bl	libaroma_runtime_mute_parent(PLT)
	b	.L31
.L54:
	bl	libaroma_debug_output(PLT)
	mov	r5, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L58+60
	mov	r2, r0
	mov	r0, r5
.LPIC37:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L58+64
	movs	r1, #1
	movs	r2, #44
.LPIC38:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L58+68
	ldr	r2, .L58+72
.LPIC39:
	add	r1, pc
.LPIC40:
	add	r2, pc
	bl	fprintf(PLT)
	b	.L34
.L53:
	bl	libaroma_debug_output(PLT)
	mov	r5, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L58+76
	mov	r2, r0
	mov	r0, r5
.LPIC33:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L58+80
	movs	r1, #1
	movs	r2, #41
.LPIC34:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L58+84
	ldr	r2, .L58+88
.LPIC35:
	add	r1, pc
.LPIC36:
	add	r2, pc
	bl	fprintf(PLT)
	mov	r0, r4
	pop	{r4, r5, r6, pc}
.L55:
	bl	libaroma_debug_output(PLT)
	mov	r5, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L58+92
	mov	r2, r0
	mov	r0, r5
.LPIC41:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L58+96
	movs	r1, #1
	movs	r2, #46
.LPIC42:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L58+100
	ldr	r2, .L58+104
.LPIC43:
	add	r1, pc
.LPIC44:
	add	r2, pc
	bl	fprintf(PLT)
	b	.L34
.L57:
	bl	libaroma_debug_output(PLT)
	mov	r5, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L58+108
	mov	r2, r0
	mov	r0, r5
.LPIC49:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L58+112
	movs	r1, #1
	movs	r2, #45
.LPIC50:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L58+116
	ldr	r2, .L58+120
.LPIC51:
	add	r1, pc
.LPIC52:
	add	r2, pc
	bl	fprintf(PLT)
	b	.L34
.L56:
	bl	libaroma_debug_output(PLT)
	mov	r5, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L58+124
	mov	r2, r0
	mov	r0, r5
.LPIC45:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L58+128
	movs	r1, #1
	movs	r2, #43
.LPIC46:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L58+132
	ldr	r2, .L58+136
.LPIC47:
	add	r1, pc
.LPIC48:
	add	r2, pc
	bl	fprintf(PLT)
	b	.L34
.L59:
	.align	2
.L58:
	.word	.LC1-(.LPIC18+4)
	.word	.LC2-(.LPIC19+4)
	.word	.LC3-(.LPIC21+4)
	.word	.LC1-(.LPIC23+4)
	.word	.LC4-(.LPIC24+4)
	.word	.LC1-(.LPIC53+4)
	.word	.LC15-(.LPIC54+4)
	.word	.LC5-(.LPIC29+4)
	.word	.LC9-(.LPIC30+4)
	.word	.LC7-(.LPIC31+4)
	.word	.LC8-(.LPIC32+4)
	.word	.LC5-(.LPIC25+4)
	.word	.LC6-(.LPIC26+4)
	.word	.LC7-(.LPIC27+4)
	.word	.LC8-(.LPIC28+4)
	.word	.LC5-(.LPIC37+4)
	.word	.LC11-(.LPIC38+4)
	.word	.LC7-(.LPIC39+4)
	.word	.LC8-(.LPIC40+4)
	.word	.LC5-(.LPIC33+4)
	.word	.LC10-(.LPIC34+4)
	.word	.LC7-(.LPIC35+4)
	.word	.LC8-(.LPIC36+4)
	.word	.LC5-(.LPIC41+4)
	.word	.LC12-(.LPIC42+4)
	.word	.LC7-(.LPIC43+4)
	.word	.LC8-(.LPIC44+4)
	.word	.LC5-(.LPIC49+4)
	.word	.LC14-(.LPIC50+4)
	.word	.LC7-(.LPIC51+4)
	.word	.LC8-(.LPIC52+4)
	.word	.LC5-(.LPIC45+4)
	.word	.LC13-(.LPIC46+4)
	.word	.LC7-(.LPIC47+4)
	.word	.LC8-(.LPIC48+4)
	.size	libaroma_start, .-libaroma_start
	.section	.text.libaroma_end,"ax",%progbits
	.align	2
	.global	libaroma_end
	.thumb
	.thumb_func
	.type	libaroma_end, %function
libaroma_end:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	ldr	r4, .L62
	bl	libaroma_debug_output(PLT)
.LPIC56:
	add	r4, pc
	mov	r5, r0
	bl	libaroma_debug_tag(PLT)
	mov	r1, r4
	mov	r2, r0
	mov	r0, r5
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L62+4
	movs	r2, #51
	movs	r1, #1
.LPIC57:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r5, r0
	bl	libaroma_debug_tag(PLT)
	mov	r1, r4
	mov	r2, r0
	mov	r0, r5
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #32
	bl	fputc(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	bl	libaroma_wm_release(PLT)
	bl	libaroma_timer_release(PLT)
	bl	libaroma_lang_release(PLT)
	bl	libaroma_msg_release(PLT)
	bl	libaroma_hid_release(PLT)
	bl	libaroma_font_release(PLT)
	bl	libaroma_fb_release(PLT)
	bl	libaroma_runtime_rollback_cores(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r5, r0
	bl	libaroma_debug_tag(PLT)
	mov	r1, r4
	mov	r2, r0
	mov	r0, r5
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L62+8
	movs	r2, #51
	movs	r1, #1
.LPIC60:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	movs	r0, #1
	pop	{r3, r4, r5, pc}
.L63:
	.align	2
.L62:
	.word	.LC1-(.LPIC56+4)
	.word	.LC15-(.LPIC57+4)
	.word	.LC4-(.LPIC60+4)
	.size	libaroma_end, .-libaroma_end
	.section	.data._libaroma_debug_tag,"aw",%progbits
	.align	3
.LANCHOR3 = . + 0
	.type	_libaroma_debug_tag, %object
	.size	_libaroma_debug_tag, 256
_libaroma_debug_tag:
	.ascii	"LIBAROMA()\000"
	.space	245
	.section	.bss._libaroma_config,"aw",%nobits
	.align	2
.LANCHOR0 = . + 0
	.type	_libaroma_config, %object
	.size	_libaroma_config, 67
_libaroma_config:
	.space	67
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"%s\000"
	.space	1
.LC1:
	.ascii	"I/%s: \000"
	.space	1
.LC2:
	.ascii	"%s Version %s\000"
	.space	2
.LC3:
	.ascii	"  %s\000"
	.space	3
.LC4:
	.ascii	"==================================================="
	.ascii	"\000"
.LC5:
	.ascii	"E/%s: \000"
	.space	1
.LC6:
	.ascii	"libaroma_start cannot start framebuffer...\000"
	.space	1
.LC7:
	.ascii	"%s\012\000"
.LC8:
	.ascii	"\000"
	.space	3
.LC9:
	.ascii	"libaroma_start cannot start font engine...\000"
	.space	1
.LC10:
	.ascii	"libaroma_start cannot start hid engine...\000"
	.space	2
.LC11:
	.ascii	"libaroma_start cannot start message queue...\000"
	.space	3
.LC12:
	.ascii	"libaroma_start cannot start language engine...\000"
	.space	1
.LC13:
	.ascii	"libaroma_start cannot start timer engine...\000"
.LC14:
	.ascii	"libaroma_start cannot start window manager...\000"
	.space	2
.LC15:
	.ascii	"___________________________________________________"
	.ascii	"\000"
	.section	.bss._libaroma_debug_fp,"aw",%nobits
	.align	2
.LANCHOR1 = . + 0
	.type	_libaroma_debug_fp, %object
	.size	_libaroma_debug_fp, 4
_libaroma_debug_fp:
	.space	4
	.section	.bss._libaroma_config_ready,"aw",%nobits
.LANCHOR2 = . + 0
	.type	_libaroma_config_ready, %object
	.size	_libaroma_config_ready, 1
_libaroma_config_ready:
	.space	1
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
