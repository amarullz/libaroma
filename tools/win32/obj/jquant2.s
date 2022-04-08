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
	.file	"jquant2.c"
	.section	.text.prescan_quantize,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	prescan_quantize, %function
prescan_quantize:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, [r0, #472]
	cmp	r3, #0
	push	{r4, r5, r6, r7, lr}
	ldr	r7, [r0, #120]
	ldr	r6, [r2, #24]
	ble	.L1
	add	ip, r7, r7, lsl #1
	add	lr, r1, r3, lsl #2
.L9:
	ldr	r3, [r1], #4
	add	r5, r3, ip
	cbz	r7, .L7
.L8:
	ldrb	r4, [r3]	@ zero_extendqisi2
	adds	r3, r3, #3
	ldrb	r2, [r3, #-2]	@ zero_extendqisi2
	ldrb	r0, [r3, #-1]	@ zero_extendqisi2
	lsrs	r4, r4, #3
	lsrs	r2, r2, #2
	ldr	r4, [r6, r4, lsl #2]
	lsrs	r0, r0, #3
	add	r2, r4, r2, lsl #6
	ldrh	r4, [r2, r0, lsl #1]
	adds	r4, r4, #1
	uxth	r4, r4
	cbz	r4, .L6
	strh	r4, [r2, r0, lsl #1]	@ movhi
.L6:
	cmp	r3, r5
	bne	.L8
.L7:
	cmp	r1, lr
	bne	.L9
	pop	{r4, r5, r6, r7, pc}
.L1:
	pop	{r4, r5, r6, r7, pc}
	.size	prescan_quantize, .-prescan_quantize
	.section	.text.init_error_limit,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	init_error_limit, %function
init_error_limit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	movs	r1, #1
	ldr	r4, [r0, #4]
	movw	r2, #2044
	mov	r10, #0
	mov	r9, #1
	ldr	r5, [r0, #472]
	mov	r8, #-1
	ldr	r3, [r4]
	movs	r7, #3
	blx	r3
	mov	ip, #2
	add	fp, r0, #1020
	str	fp, [r5, #40]
	mvn	lr, #1
	mvn	r6, #2
	mov	fp, #4
	mvn	r5, #3
	movs	r3, #16
	str	r10, [r0, #1020]
	mov	r10, #5
	str	r9, [r0, #1024]
	mvn	r9, #4
	str	r8, [r0, #1016]
	mov	r8, #6
	str	ip, [r0, #1028]
	mvn	ip, #5
	str	lr, [r0, #1012]
	add	r4, r0, #1080
	mov	lr, #7
	str	r7, [r0, #1032]
	str	r6, [r0, #1008]
	mvn	r7, #6
	movs	r6, #8
	str	fp, [r0, #1036]
	str	r5, [r0, #1004]
	mvn	fp, #7
	movs	r5, #9
	str	r10, [r0, #1040]
	str	r9, [r0, #1000]
	mvn	r10, #8
	mov	r9, #10
	str	r8, [r0, #1044]
	str	ip, [r0, #996]
	mvn	r8, #9
	mov	ip, #11
	add	r2, r0, #960
	mov	r1, r3
	str	lr, [r0, #1048]
	str	r7, [r0, #992]
	mvn	lr, #10
	movs	r7, #12
	str	r6, [r0, #1052]
	str	fp, [r0, #988]
	mvn	r6, #11
	mov	fp, #13
	str	r5, [r0, #1056]
	str	r10, [r0, #984]
	mvn	r5, #12
	mov	r10, #14
	str	r9, [r0, #1060]
	str	r8, [r0, #980]
	mvn	r9, #13
	mov	r8, #15
	str	ip, [r0, #1064]
	mvn	ip, #14
	str	lr, [r0, #976]
	str	r7, [r0, #1068]
	str	r6, [r0, #972]
	str	fp, [r0, #1072]
	str	r5, [r0, #968]
	str	r10, [r0, #1076]
	str	r9, [r0, #964]
	str	r8, [r0, #1080]
	str	ip, [r0, #960]
.L18:
	adds	r1, r1, #1
	negs	r6, r3
	and	r5, r1, #1
	cmp	r1, #48
	eor	r5, r5, #1
	str	r3, [r4, #4]!
	str	r6, [r2, #-4]!
	add	r3, r3, r5
	bne	.L18
	negs	r5, r3
	mov	r4, r0
	mov	r2, r0
.L21:
	adds	r1, r1, #8
	pld	[r2, #1292]
	cmp	r1, #248
	str	r3, [r2, #1212]
	rsb	r6, r1, #256
	str	r5, [r4, #828]
	add	r2, r2, #32
	str	r3, [r2, #1184]
	sub	r4, r4, #32
	str	r5, [r4, #856]
	str	r3, [r2, #1188]
	str	r5, [r4, #852]
	str	r3, [r2, #1192]
	str	r5, [r4, #848]
	str	r3, [r2, #1196]
	str	r5, [r4, #844]
	str	r3, [r2, #1200]
	str	r5, [r4, #840]
	str	r3, [r2, #1204]
	str	r5, [r4, #836]
	str	r3, [r2, #1208]
	str	r5, [r4, #832]
	bne	.L21
	add	r1, r0, r6, lsl #2
	add	r2, r0, #2008
	adds	r0, r0, #32
	add	r1, r1, #2008
.L23:
	str	r3, [r2, #4]!
	cmp	r2, r1
	str	r5, [r0, #-4]!
	bne	.L23
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	init_error_limit, .-init_error_limit
	.section	.text.finish_pass2,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	finish_pass2, %function
finish_pass2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	finish_pass2, .-finish_pass2
	.section	.text.new_color_map_2_quant,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	new_color_map_2_quant, %function
new_color_map_2_quant:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #472]
	movs	r2, #1
	str	r2, [r3, #28]
	bx	lr
	.size	new_color_map_2_quant, .-new_color_map_2_quant
	.section	.text.start_pass_2_quant,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	start_pass_2_quant, %function
start_pass_2_quant:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r4, r0
	ldr	r3, [r0, #96]
	ldr	r6, [r0, #472]
	ldr	r5, [r6, #24]
	cbnz	r3, .L45
	ldr	r0, .L51
.LPIC17:
	add	r0, pc
	cbz	r1, .L31
.L41:
	ldr	r2, .L51+4
	movs	r1, #1
	ldr	r3, .L51+8
	str	r1, [r6, #28]
.LPIC18:
	add	r2, pc
.LPIC19:
	add	r3, pc
	str	r2, [r6, #4]
	str	r3, [r6, #8]
.L32:
	movs	r4, #0
.L40:
	ldr	r0, [r5, r4]
	mov	r1, #4096
	adds	r4, r4, #4
	bl	jzero_far(PLT)
	cmp	r4, #128
	bne	.L40
	movs	r3, #0
	str	r3, [r6, #28]
	pop	{r3, r4, r5, r6, r7, pc}
.L45:
	movs	r3, #2
	str	r3, [r0, #96]
	cmp	r1, #0
	bne	.L41
	ldr	r0, .L51+12
.LPIC16:
	add	r0, pc
.L31:
	ldr	r2, [r4, #140]
	ldr	r1, .L51+16
	str	r0, [r6, #4]
	cmp	r2, #0
.LPIC20:
	add	r1, pc
	str	r1, [r6, #8]
	ble	.L46
	cmp	r2, #256
	bgt	.L47
	cmp	r3, #2
	beq	.L48
.L35:
	ldr	r3, [r6, #28]
	cmp	r3, #0
	bne	.L32
	pop	{r3, r4, r5, r6, r7, pc}
.L46:
	ldr	r3, [r4]
	movs	r2, #1
	movs	r1, #56
.L44:
	str	r2, [r3, #24]
	mov	r0, r4
	ldr	r2, [r4]
	str	r1, [r3, #20]
	ldr	r3, [r2]
	blx	r3
	ldr	r3, [r4, #96]
	cmp	r3, #2
	bne	.L35
.L48:
	ldr	r3, [r4, #120]
	ldr	r0, [r6, #32]
	add	r3, r3, r3, lsl #1
	lsls	r7, r3, #1
	adds	r7, r7, #12
	cbz	r0, .L49
.L36:
	mov	r1, r7
	bl	jzero_far(PLT)
	ldr	r3, [r6, #40]
	cbz	r3, .L50
.L37:
	movs	r3, #0
	str	r3, [r6, #36]
	b	.L35
.L47:
	ldr	r3, [r4]
	mov	r2, #256
	movs	r1, #57
	b	.L44
.L49:
	ldr	r3, [r4, #4]
	mov	r0, r4
	movs	r1, #1
	mov	r2, r7
	ldr	r3, [r3, #4]
	blx	r3
	mov	r3, r0
	str	r3, [r6, #32]
	b	.L36
.L50:
	mov	r0, r4
	bl	init_error_limit(PLT)
	b	.L37
.L52:
	.align	2
.L51:
	.word	pass2_no_dither-(.LPIC17+4)
	.word	prescan_quantize-(.LPIC18+4)
	.word	finish_pass1-(.LPIC19+4)
	.word	pass2_fs_dither-(.LPIC16+4)
	.word	finish_pass2-(.LPIC20+4)
	.size	start_pass_2_quant, .-start_pass_2_quant
	.section	.text.update_box.isra.0,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	update_box.isra.0, %function
update_box.isra.0:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #36
	str	r1, [sp, #20]
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #20]
	ldr	r1, [r1]
	ldr	r2, [r2, #4]
	ldr	r4, [sp, #20]
	ldr	r3, [r3, #8]
	cmp	r1, r2
	ldr	r8, [r0, #24]
	str	r1, [sp, #4]
	str	r2, [sp, #16]
	str	r3, [sp, #8]
	ldr	r10, [r4, #12]
	ldr	r9, [r4, #16]
	ldr	r0, [r4, #20]
	bge	.L54
	add	fp, r9, #1
	add	r7, r8, r1, lsl #2
	add	fp, fp, r3, lsl #5
	mov	r4, r1
	movs	r5, #0
	lsl	fp, fp, #1
	mov	lr, r3
.L55:
	cmp	lr, r10
	bgt	.L63
	ldr	r3, [r7, r5]
	mov	r6, lr
	add	ip, r3, fp
.L64:
	cmp	r9, r0
	bgt	.L56
	ldrh	r3, [ip, #-2]
	mov	r2, ip
	cmp	r3, #0
	bne	.L59
	mov	r3, r9
	b	.L60
.L61:
	ldrh	r1, [r2], #2
	cmp	r1, #0
	bne	.L59
.L60:
	adds	r3, r3, #1
	cmp	r0, r3
	bge	.L61
.L56:
	adds	r6, r6, #1
	add	ip, ip, #64
	cmp	r10, r6
	bge	.L64
.L63:
	ldr	r3, [sp, #16]
	adds	r4, r4, #1
	adds	r5, r5, #4
	cmp	r3, r4
	bge	.L55
	ldr	r4, [sp, #4]
	b	.L58
.L68:
	ldr	r2, [sp, #20]
	str	r4, [sp, #4]
	str	r5, [sp, #16]
	str	r5, [r2, #4]
.L54:
	ldr	r4, [sp, #8]
	cmp	r4, r10
	bge	.L74
	ldr	r1, [sp, #4]
	lsls	r5, r4, #6
	lsl	lr, r9, #1
	add	ip, r1, #1073741824
	mov	fp, r1
	add	ip, ip, #-1
	add	ip, r8, ip, lsl #2
.L75:
	ldr	r1, [sp, #16]
	cmp	r1, fp
	blt	.L83
	mov	r7, ip
	mov	r6, fp
.L84:
	ldr	r3, [r7, #4]!
	cmp	r9, r0
	add	r3, r3, r5
	add	r2, r3, lr
	bgt	.L76
	ldrh	r3, [r3, r9, lsl #1]
	adds	r2, r2, #2
	cmp	r3, #0
	bne	.L79
	mov	r3, r9
	b	.L80
.L81:
	ldrh	r1, [r2], #2
	cmp	r1, #0
	bne	.L79
.L80:
	adds	r3, r3, #1
	cmp	r0, r3
	bge	.L81
.L76:
	ldr	r3, [sp, #16]
	adds	r6, r6, #1
	cmp	r6, r3
	ble	.L84
.L83:
	adds	r4, r4, #1
	adds	r5, r5, #64
	cmp	r10, r4
	bge	.L75
	ldr	r4, [sp, #8]
	b	.L78
.L88:
	ldr	r2, [sp, #20]
	mov	r10, r5
	str	r4, [sp, #8]
	str	r5, [r2, #12]
.L74:
	cmp	r9, r0
	bge	.L94
	ldr	r3, [sp, #4]
	ldr	r4, [sp, #8]
	add	fp, r3, #1073741824
	mov	r7, r3
	add	fp, fp, #-1
	add	fp, r8, fp, lsl #2
	lsl	ip, r4, #6
	mov	r4, r9
.L95:
	ldr	r1, [sp, #16]
	cmp	r1, r7
	blt	.L103
	lsl	lr, r4, #1
	mov	r6, fp
	mov	r5, r7
.L104:
	ldr	r1, [sp, #8]
	ldr	r3, [r6, #4]!
	cmp	r10, r1
	add	r3, r3, ip
	add	r2, r3, lr
	blt	.L96
	ldrh	r3, [r3, r4, lsl #1]
	cmp	r3, #0
	bne	.L99
	ldr	r3, [sp, #8]
	b	.L100
.L101:
	ldrh	r1, [r2, #64]!
	cmp	r1, #0
	bne	.L99
.L100:
	adds	r3, r3, #1
	cmp	r3, r10
	ble	.L101
.L96:
	ldr	r3, [sp, #16]
	adds	r5, r5, #1
	cmp	r3, r5
	bge	.L104
.L103:
	adds	r4, r4, #1
	cmp	r0, r4
	bge	.L95
	mov	r4, r9
	b	.L98
.L108:
	ldr	r2, [sp, #20]
	mov	r9, r4
	mov	r0, r5
	str	r5, [r2, #20]
.L94:
	ldr	r2, [sp, #8]
	ldr	r4, [sp, #16]
	ldr	r1, [sp, #4]
	rsb	r3, r2, r10
	subs	r2, r4, r1
	lsls	r1, r3, #3
	lsls	r2, r2, #4
	add	r1, r1, r3, lsl #2
	rsb	r3, r9, r0
	lsls	r3, r3, #3
	mul	r1, r1, r1
	mla	r2, r2, r2, r1
	mla	r3, r3, r3, r2
	ldr	r2, [sp, #20]
	str	r3, [r2, #24]
	ldr	r3, [sp, #4]
	cmp	r4, r3
	blt	.L135
	ldr	r4, [sp, #8]
	add	fp, r9, #1
	mov	r1, r3
	sub	lr, r0, #14
	movs	r3, #14
	cmp	fp, lr
	movt	r3, 32768
	it	lt
	movlt	fp, #1
	add	r2, r9, r4, lsl #5
	it	ge
	movge	fp, #0
	cmp	r0, r3
	add	r8, r8, r1, lsl #2
	lsl	r2, r2, #1
	it	lt
	movlt	fp, #0
	str	r8, [sp, #24]
	str	r2, [sp, #28]
	movs	r2, #0
	mov	r4, r2
	str	r2, [sp, #12]
.L115:
	ldr	r3, [sp, #8]
	cmp	r10, r3
	blt	.L121
	ldr	r2, [sp, #24]
	mov	r8, r3
	ldr	r1, [sp, #12]
	mov	r6, fp
	ldr	ip, [sp, #28]
	ldr	r3, [r2, r1]
	add	ip, ip, r3
.L122:
	cmp	r0, r9
	mov	r1, ip
	blt	.L116
	cmp	r6, #0
	beq	.L136
	add	r3, ip, #32
	mov	r5, r9
.L118:
	ldrh	r1, [r3, #-32]
	adds	r5, r5, #16
	ldrh	r7, [r3, #-30]
	adds	r2, r5, #1
	ldrh	fp, [r3, #-24]
	cmp	r1, #0
	it	ne
	addne	r4, r4, #1
	ldrh	r1, [r3, #-28]
	cmp	r7, #0
	it	ne
	addne	r4, r4, #1
	ldrh	r7, [r3, #-26]
	pld	[r3, #26]
	cmp	r1, #0
	it	ne
	addne	r4, r4, #1
	ldrh	r1, [r3, #-22]
	cmp	r7, #0
	it	ne
	addne	r4, r4, #1
	ldrh	r7, [r3, #-20]
	cmp	fp, #0
	it	ne
	addne	r4, r4, #1
	ldrh	fp, [r3, #-18]
	cmp	r1, #0
	it	ne
	addne	r4, r4, #1
	ldrh	r1, [r3, #-16]
	cmp	r7, #0
	it	ne
	addne	r4, r4, #1
	ldrh	r7, [r3, #-14]
	cmp	fp, #0
	it	ne
	addne	r4, r4, #1
	ldrh	fp, [r3, #-12]
	cmp	r1, #0
	it	ne
	addne	r4, r4, #1
	ldrh	r1, [r3, #-10]
	cmp	r7, #0
	it	ne
	addne	r4, r4, #1
	ldrh	r7, [r3, #-8]
	cmp	fp, #0
	it	ne
	addne	r4, r4, #1
	ldrh	fp, [r3, #-6]
	cmp	r1, #0
	it	ne
	addne	r4, r4, #1
	ldrh	r1, [r3, #-4]
	cmp	r7, #0
	it	ne
	addne	r4, r4, #1
	ldrh	r7, [r3, #-2]
	cmp	fp, #0
	it	ne
	addne	r4, r4, #1
	cmp	r1, #0
	it	ne
	addne	r4, r4, #1
	mov	r1, r3
	cmp	r7, #0
	it	ne
	addne	r4, r4, #1
	cmp	lr, r2
	add	r3, r3, #32
	bgt	.L118
.L119:
	ldrh	r3, [r1], #2
	cmp	r3, #0
	it	ne
	addne	r4, r4, #1
	cmp	r0, r2
	add	r2, r2, #1
	bge	.L119
.L116:
	add	r8, r8, #1
	add	ip, ip, #64
	cmp	r10, r8
	bge	.L122
	mov	fp, r6
.L121:
	ldr	r3, [sp, #4]
	ldr	r2, [sp, #16]
	ldr	r1, [sp, #12]
	adds	r3, r3, #1
	cmp	r2, r3
	str	r3, [sp, #4]
	add	r1, r1, #4
	str	r1, [sp, #12]
	bge	.L115
	ldr	r3, [sp, #20]
	str	r4, [r3, #28]
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L136:
	add	r2, r9, #1
	b	.L119
.L99:
	ldr	r2, [sp, #20]
	cmp	r0, r4
	str	r4, [r2, #16]
	ble	.L134
.L98:
	ldr	lr, [sp, #4]
	mov	r5, r0
.L105:
	ldr	r1, [sp, #16]
	cmp	r1, lr
	blt	.L112
	lsl	r9, r5, #1
	mov	r7, fp
	mov	r6, lr
.L113:
	ldr	r1, [sp, #8]
	ldr	r3, [r7, #4]!
	cmp	r10, r1
	add	r3, r3, ip
	add	r2, r3, r9
	blt	.L106
	ldrh	r3, [r3, r5, lsl #1]
	cmp	r3, #0
	bne	.L108
	ldr	r3, [sp, #8]
	b	.L109
.L110:
	ldrh	r1, [r2, #64]!
	cmp	r1, #0
	bne	.L108
.L109:
	adds	r3, r3, #1
	cmp	r10, r3
	bge	.L110
.L106:
	ldr	r3, [sp, #16]
	adds	r6, r6, #1
	cmp	r3, r6
	bge	.L113
.L112:
	subs	r5, r5, #1
	cmp	r5, r4
	bge	.L105
.L134:
	mov	r9, r4
	b	.L94
.L59:
	ldr	r2, [sp, #16]
	ldr	r1, [sp, #20]
	cmp	r2, r4
	str	r4, [r1]
	ble	.L126
.L58:
	ldr	r1, [sp, #16]
	movs	r6, #0
	mov	r5, r1
	add	lr, r8, r1, lsl #2
.L65:
	ldr	r3, [sp, #8]
	cmp	r3, r10
	bgt	.L72
	mov	r7, r3
	ldr	r3, [lr, r6]
	add	ip, r3, fp
.L73:
	cmp	r9, r0
	bgt	.L66
	ldrh	r3, [ip, #-2]
	mov	r2, ip
	cmp	r3, #0
	bne	.L68
	mov	r3, r9
	b	.L69
.L70:
	ldrh	r1, [r2], #2
	cmp	r1, #0
	bne	.L68
.L69:
	adds	r3, r3, #1
	cmp	r0, r3
	bge	.L70
.L66:
	adds	r7, r7, #1
	add	ip, ip, #64
	cmp	r10, r7
	bge	.L73
.L72:
	subs	r5, r5, #1
	subs	r6, r6, #4
	cmp	r5, r4
	bge	.L65
.L126:
	str	r4, [sp, #4]
	b	.L54
.L79:
	ldr	r2, [sp, #20]
	cmp	r10, r4
	str	r4, [r2, #8]
	ble	.L130
.L78:
	lsl	r6, r10, #6
	lsl	fp, r9, #1
	mov	r5, r10
.L85:
	ldr	r1, [sp, #16]
	ldr	r2, [sp, #4]
	cmp	r1, r2
	blt	.L92
	mov	lr, ip
	mov	r7, r2
.L93:
	ldr	r3, [lr, #4]!
	cmp	r9, r0
	add	r3, r3, r6
	add	r2, r3, fp
	bgt	.L86
	ldrh	r3, [r3, r9, lsl #1]
	adds	r2, r2, #2
	cmp	r3, #0
	bne	.L88
	mov	r3, r9
	b	.L89
.L90:
	ldrh	r1, [r2], #2
	cmp	r1, #0
	bne	.L88
.L89:
	adds	r3, r3, #1
	cmp	r0, r3
	bge	.L90
.L86:
	ldr	r3, [sp, #16]
	adds	r7, r7, #1
	cmp	r3, r7
	bge	.L93
.L92:
	subs	r5, r5, #1
	subs	r6, r6, #64
	cmp	r5, r4
	bge	.L85
.L130:
	str	r4, [sp, #8]
	b	.L74
.L135:
	ldr	r3, [sp, #20]
	movs	r4, #0
	str	r4, [r3, #28]
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	update_box.isra.0, .-update_box.isra.0
	.section	.text.fill_inverse_cmap,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	fill_inverse_cmap, %function
fill_inverse_cmap:
	@ args = 0, pretend = 0, frame = 1488
	@ frame_needed = 0, uses_anonymous_args = 0
	asrs	r3, r3, #2
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	asrs	r1, r1, #2
	subw	sp, sp, #1492
	asrs	r2, r2, #3
	str	r3, [sp, #68]
	lsls	r6, r1, #5
	str	r1, [sp, #72]
	lsls	r3, r2, #5
	ldr	r1, [sp, #68]
	adds	r7, r6, #4
	ldr	r5, [r0, #472]
	add	r10, r3, #30
	ldr	r4, [r0, #140]
	adds	r6, r6, #28
	str	r2, [sp, #64]
	adds	r2, r3, #2
	lsl	lr, r1, #5
	str	r2, [sp, #28]
	mov	r1, r2
	str	r0, [sp, #24]
	add	r3, lr, #4
	add	lr, lr, #28
	mov	r2, r3
	adds	r0, r7, r6
	add	r1, r1, r10
	add	r2, r2, lr
	ldr	r5, [r5, #24]
	asrs	r0, r0, #1
	asrs	r1, r1, #1
	asrs	r2, r2, #1
	str	r3, [sp, #32]
	cmp	r4, #0
	str	r0, [sp, #12]
	str	r1, [sp, #16]
	str	r2, [sp, #20]
	str	r5, [sp, #76]
	ble	.L173
	ldr	r5, [sp, #24]
	mov	r8, r3
	mvn	r0, #-2147483648
	movs	r3, #0
	add	ip, sp, #464
	str	r4, [sp]
	ldr	r2, [r5, #144]
	ldr	r5, [r2, #4]
	ldr	r1, [r2]
	ldr	fp, [r2, #8]
	str	r5, [sp, #8]
	str	r1, [sp, #4]
	ldr	r5, [sp, #28]
	b	.L155
.L181:
	subs	r2, r1, r7
	rsb	r9, r6, r1
	lsls	r2, r2, #1
	lsl	r9, r9, #1
	mul	r2, r2, r2
	mul	r9, r9, r9
.L143:
	ldr	r4, [sp, #8]
	ldrb	r1, [r4, r3]	@ zero_extendqisi2
	cmp	r5, r1
	ble	.L146
.L182:
	subs	r4, r1, r5
	rsb	r1, r10, r1
	add	r4, r4, r4, lsl #1
	add	r1, r1, r1, lsl #1
	mla	r2, r4, r4, r2
	mla	r4, r1, r1, r9
.L147:
	ldrb	r1, [fp, r3]	@ zero_extendqisi2
	cmp	r8, r1
	ble	.L150
.L183:
	rsb	r9, r8, r1
	rsb	r1, lr, r1
	mla	r2, r9, r9, r2
	mla	r1, r1, r1, r4
.L151:
	cmp	r0, r1
	str	r2, [ip, r3, lsl #2]
	it	ge
	movge	r0, r1
	ldr	r1, [sp]
	adds	r3, r3, #1
	cmp	r3, r1
	beq	.L180
.L155:
	ldr	r9, [sp, #4]
	ldrb	r1, [r9, r3]	@ zero_extendqisi2
	cmp	r7, r1
	bgt	.L181
	cmp	r6, r1
	bge	.L144
	ldr	r4, [sp, #8]
	subs	r2, r1, r6
	subs	r1, r1, r7
	lsls	r2, r2, #1
	lsl	r9, r1, #1
	ldrb	r1, [r4, r3]	@ zero_extendqisi2
	mul	r2, r2, r2
	mul	r9, r9, r9
	cmp	r5, r1
	bgt	.L182
.L146:
	cmp	r10, r1
	bge	.L148
	rsb	r4, r10, r1
	subs	r1, r1, r5
	add	r4, r4, r4, lsl #1
	add	r1, r1, r1, lsl #1
	mla	r2, r4, r4, r2
	mla	r4, r1, r1, r9
	ldrb	r1, [fp, r3]	@ zero_extendqisi2
	cmp	r8, r1
	bgt	.L183
.L150:
	cmp	lr, r1
	bge	.L152
	rsb	r9, lr, r1
	rsb	r1, r8, r1
	mla	r2, r9, r9, r2
	mla	r1, r1, r1, r4
	b	.L151
.L144:
	ldr	r2, [sp, #12]
	cmp	r2, r1
	mov	r2, #0
	ite	ge
	subge	r1, r1, r6
	sublt	r1, r1, r7
	lsl	r9, r1, #1
	mul	r9, r9, r9
	b	.L143
.L152:
	ldr	r9, [sp, #20]
	cmp	r9, r1
	ite	ge
	rsbge	r1, lr, r1
	rsblt	r1, r8, r1
	mla	r1, r1, r1, r4
	b	.L151
.L148:
	ldr	r4, [sp, #16]
	cmp	r4, r1
	ite	ge
	rsbge	r4, r10, r1
	sublt	r4, r1, r5
	add	r4, r4, r4, lsl #1
	mla	r4, r4, r4, r9
	b	.L147
.L180:
	movs	r5, #0
	mov	r4, r1
	add	r2, sp, #460
	mov	r3, r5
	add	r6, sp, #208
.L157:
	ldr	r1, [r2, #4]!
	cmp	r1, r0
	it	le
	strble	r3, [r6, r5]
	add	r3, r3, #1
	it	le
	addle	r5, r5, #1
	cmp	r3, r4
	bne	.L157
.L141:
	vmov.i32	q8, #2147483647  @ v4si
	mov	r3, ip
	add	r2, sp, #976
.L159:
	vst1.64	{d16-d17}, [r3:64]!
	cmp	r3, r2
	bne	.L159
	cmp	r5, #0
	beq	.L170
	ldr	r8, [sp, #24]
	add	r9, sp, #207
	str	r9, [sp, #24]
	add	r9, r9, r5
	ldr	r5, [sp, #24]
	add	r0, sp, #480
	ldr	r3, [r8, #144]
	add	r1, sp, #80
	str	r9, [sp, #36]
	str	r0, [sp, #52]
	ldr	r2, [r3]
	ldr	r4, [r3, #4]
	ldr	r3, [r3, #8]
	str	r1, [sp, #56]
	str	r2, [sp, #40]
	str	r4, [sp, #44]
	str	r3, [sp, #48]
	str	r7, [sp, #60]
.L171:
	ldrb	r6, [r5, #1]!	@ zero_extendqisi2
	add	r8, sp, #80
	ldr	r9, [sp, #44]
	add	r7, sp, #480
	ldr	r4, [sp, #28]
	ldr	r0, [sp, #40]
	ldrb	fp, [r9, r6]	@ zero_extendqisi2
	ldr	r1, [sp, #48]
	ldrb	r2, [r0, r6]	@ zero_extendqisi2
	rsb	fp, fp, r4
	str	r5, [sp, #24]
	add	fp, fp, fp, lsl #1
	ldr	r5, [sp, #60]
	ldrb	r3, [r1, r6]	@ zero_extendqisi2
	mul	r1, fp, fp
	ldr	r0, [sp, #32]
	subs	r2, r5, r2
	add	fp, fp, fp, lsl #1
	lsls	r2, r2, #1
	str	r8, [sp, #12]
	subs	r3, r0, r3
	lsl	fp, fp, #3
	add	r0, r2, #8
	str	r7, [sp, #4]
	mla	r2, r2, r2, r1
	add	lr, r3, #4
	lsls	r7, r0, #5
	lsl	lr, lr, #4
	ldr	r0, [sp, #12]
	add	r1, fp, #144
	mla	r2, r3, r3, r2
	str	r1, [sp, #16]
	add	fp, fp, #2448
	add	r8, lr, #128
	add	ip, lr, #256
	mov	r10, lr
	add	r4, r7, #2048
	str	r4, [sp, #20]
	str	r2, [sp, #8]
.L162:
	ldr	r4, [sp, #4]
	ldr	r1, [sp, #16]
	ldr	r2, [sp, #8]
	sub	r3, r4, #16
	str	r7, [sp]
.L169:
	ldr	r7, [r4, #-16]
	add	r9, r10, r2
	add	lr, r9, r8
	adds	r4, r4, #16
	add	r5, lr, ip
	adds	r3, r3, #16
	cmp	r2, r7
	add	r0, r0, #4
	it	lt
	strlt	r2, [r4, #-32]
	add	r2, r2, r1
	ldr	r7, [r3, #-12]
	add	r1, r1, #288
	it	lt
	strblt	r6, [r0, #-4]
	cmp	r9, r7
	ldr	r7, [r3, #-8]
	itt	lt
	strlt	r9, [r3, #-12]
	strblt	r6, [r0, #-3]
	cmp	lr, r7
	ldr	r7, [r3, #-4]
	itt	lt
	strlt	lr, [r3, #-8]
	strblt	r6, [r0, #-2]
	cmp	r5, r7
	itt	lt
	strlt	r5, [r3, #-4]
	strblt	r6, [r0, #-1]
	cmp	r1, fp
	bne	.L169
	ldr	r7, [sp]
	ldr	r9, [sp, #8]
	ldr	r2, [sp, #20]
	ldr	r0, [sp, #12]
	ldr	r1, [sp, #4]
	add	r9, r9, r7
	add	r7, r7, #512
	str	r9, [sp, #8]
	cmp	r7, r2
	add	r0, r0, #32
	add	r1, r1, #128
	str	r0, [sp, #12]
	str	r1, [sp, #4]
	bne	.L162
	ldr	r5, [sp, #24]
	ldr	r6, [sp, #36]
	cmp	r5, r6
	bne	.L171
.L170:
	ldr	r4, [sp, #64]
	add	r7, sp, #240
	ldr	r5, [sp, #76]
	ldr	r6, [sp, #72]
	ldr	r8, [sp, #68]
	lsls	r2, r4, #9
	str	r7, [sp, #12]
	add	r3, r5, r6, lsl #4
	add	fp, r2, #64
	add	r0, r2, #192
	str	r2, [sp, #8]
	subs	r3, r3, #4
	add	r1, r2, #256
	add	r9, r2, #128
	str	r3, [sp]
	add	r2, r2, #320
	add	r3, fp, #320
	lsl	r5, r8, #2
	lsl	r4, r8, #3
	str	r0, [sp, #28]
	str	r1, [sp, #24]
	add	r0, sp, #81
	str	r2, [sp, #20]
	add	r1, sp, #82
	str	r3, [sp, #16]
	add	r2, sp, #83
	add	r3, sp, #112
	add	r6, fp, #384
	str	r9, [sp, #32]
	str	r6, [sp, #4]
	str	fp, [sp, #36]
.L161:
	ldr	r8, [sp]
	adds	r3, r3, #32
	ldrb	r9, [r3, #-64]	@ zero_extendqisi2
	adds	r0, r0, #32
	ldr	lr, [sp, #8]
	adds	r1, r1, #32
	ldr	r7, [r8, #4]!
	adds	r2, r2, #32
	ldrb	r6, [r0, #-32]	@ zero_extendqisi2
	add	r9, r9, #1
	ldrb	ip, [r2, #-32]	@ zero_extendqisi2
	add	lr, lr, r7
	str	r8, [sp]
	strh	r9, [lr, r5, lsl #1]	@ movhi
	adds	r6, r6, #1
	add	lr, lr, r4
	ldrb	r8, [r1, #-32]	@ zero_extendqisi2
	strh	r6, [lr, #2]	@ movhi
	add	ip, ip, #1
	ldrb	r9, [r3, #-60]	@ zero_extendqisi2
	ldr	r6, [sp, #36]
	add	r8, r8, #1
	strh	r8, [lr, #4]	@ movhi
	add	r9, r9, #1
	ldrb	r8, [r0, #-28]	@ zero_extendqisi2
	add	r6, r6, r7
	strh	ip, [lr, #6]	@ movhi
	strh	r9, [r6, r5, lsl #1]	@ movhi
	add	r6, r6, r4
	ldrb	r9, [r2, #-28]	@ zero_extendqisi2
	add	r8, r8, #1
	strh	r8, [r6, #2]	@ movhi
	ldrb	r10, [r1, #-28]	@ zero_extendqisi2
	ldrb	r8, [r3, #-56]	@ zero_extendqisi2
	add	r9, r9, #1
	ldr	lr, [sp, #32]
	strh	r9, [r6, #6]	@ movhi
	add	r10, r10, #1
	ldrb	r9, [r0, #-24]	@ zero_extendqisi2
	add	r8, r8, #1
	add	lr, lr, r7
	strh	r10, [r6, #4]	@ movhi
	strh	r8, [lr, r5, lsl #1]	@ movhi
	add	r6, lr, r4
	ldrb	r8, [r2, #-24]	@ zero_extendqisi2
	add	r9, r9, #1
	ldrb	r10, [r1, #-24]	@ zero_extendqisi2
	strh	r9, [r6, #2]	@ movhi
	ldr	ip, [sp, #28]
	add	r8, r8, #1
	ldrb	r9, [r3, #-52]	@ zero_extendqisi2
	add	r10, r10, #1
	strh	r8, [r6, #6]	@ movhi
	add	ip, ip, r7
	ldrb	r8, [r0, #-20]	@ zero_extendqisi2
	add	r9, r9, #1
	add	lr, ip, r4
	strh	r10, [r6, #4]	@ movhi
	ldr	r6, [sp, #24]
	add	r8, r8, #1
	strh	r9, [ip, r5, lsl #1]	@ movhi
	ldrb	r9, [r1, #-20]	@ zero_extendqisi2
	ldrb	ip, [r2, #-20]	@ zero_extendqisi2
	add	r6, r6, r7
	strh	r8, [lr, #2]	@ movhi
	add	r9, r9, #1
	ldrb	r8, [r3, #-48]	@ zero_extendqisi2
	add	ip, ip, #1
	strh	r9, [lr, #4]	@ movhi
	strh	ip, [lr, #6]	@ movhi
	ldr	r9, [sp, #4]
	add	r8, r8, #1
	ldr	ip, [sp, #20]
	ldr	lr, [sp, #16]
	strh	r8, [r6, r5, lsl #1]	@ movhi
	add	r6, r6, r4
	ldrb	r8, [r3, #-44]	@ zero_extendqisi2
	add	ip, ip, r7
	add	lr, lr, r7
	ldrb	fp, [r0, #-16]	@ zero_extendqisi2
	add	r7, r7, r9
	ldrb	r10, [r2, #-16]	@ zero_extendqisi2
	ldrb	r9, [r1, #-16]	@ zero_extendqisi2
	add	r8, r8, #1
	add	fp, fp, #1
	add	r10, r10, #1
	strh	fp, [r6, #2]	@ movhi
	add	r9, r9, #1
	strh	r10, [r6, #6]	@ movhi
	strh	r9, [r6, #4]	@ movhi
	strh	r8, [ip, r5, lsl #1]	@ movhi
	add	ip, ip, r4
	ldrb	r9, [r0, #-12]	@ zero_extendqisi2
	ldrb	r8, [r2, #-12]	@ zero_extendqisi2
	ldrb	r6, [r1, #-12]	@ zero_extendqisi2
	add	r9, r9, #1
	add	r8, r8, #1
	strh	r9, [ip, #2]	@ movhi
	strh	r8, [ip, #6]	@ movhi
	adds	r6, r6, #1
	ldrb	r9, [r3, #-40]	@ zero_extendqisi2
	ldrb	r8, [r0, #-8]	@ zero_extendqisi2
	strh	r6, [ip, #4]	@ movhi
	add	ip, lr, r4
	add	r9, r9, #1
	adds	r6, r7, r4
	add	r8, r8, #1
	strh	r9, [lr, r5, lsl #1]	@ movhi
	ldrb	r9, [r1, #-8]	@ zero_extendqisi2
	ldrb	lr, [r2, #-8]	@ zero_extendqisi2
	strh	r8, [ip, #2]	@ movhi
	ldrb	r8, [r3, #-36]	@ zero_extendqisi2
	add	r9, r9, #1
	add	lr, lr, #1
	strh	r9, [ip, #4]	@ movhi
	strh	lr, [ip, #6]	@ movhi
	add	r8, r8, #1
	ldrb	ip, [r0, #-4]	@ zero_extendqisi2
	ldrb	lr, [r1, #-4]	@ zero_extendqisi2
	strh	r8, [r7, r5, lsl #1]	@ movhi
	ldrb	r7, [r2, #-4]	@ zero_extendqisi2
	add	ip, ip, #1
	add	lr, lr, #1
	strh	ip, [r6, #2]	@ movhi
	strh	lr, [r6, #4]	@ movhi
	adds	r7, r7, #1
	strh	r7, [r6, #6]	@ movhi
	ldr	r6, [sp, #12]
	cmp	r3, r6
	bne	.L161
	addw	sp, sp, #1492
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L173:
	movs	r5, #0
	add	ip, sp, #464
	b	.L141
	.size	fill_inverse_cmap, .-fill_inverse_cmap
	.section	.text.pass2_no_dither,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pass2_no_dither, %function
pass2_no_dither:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #28
	str	r1, [sp, #12]
	cmp	r3, #0
	ldr	r1, [r0, #472]
	str	r2, [sp, #16]
	ldr	r2, [r0, #120]
	ldr	fp, [r1, #24]
	str	r3, [sp, #20]
	str	r2, [sp, #4]
	ble	.L184
	mov	r10, fp
	mov	fp, r0
	mov	r9, #0
	str	r9, [sp]
.L192:
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #16]
	ldr	r4, [r3, r9]
	ldr	r3, [sp, #4]
	ldr	r8, [r2, r9]
	cbz	r3, .L190
	str	r9, [sp, #8]
	mov	r5, r3
	mov	r9, r8
	b	.L191
.L189:
	subs	r5, r5, #1
	add	r6, r6, #-1
	strb	r6, [r9], #1
	beq	.L197
.L191:
	ldrb	r1, [r4]	@ zero_extendqisi2
	adds	r4, r4, #3
	ldrb	r2, [r4, #-2]	@ zero_extendqisi2
	ldrb	r3, [r4, #-1]	@ zero_extendqisi2
	lsrs	r1, r1, #3
	lsrs	r2, r2, #2
	ldr	r7, [r10, r1, lsl #2]
	lsrs	r3, r3, #3
	sxth	r8, r3
	add	r7, r7, r2, lsl #6
	ldrh	r6, [r7, r8, lsl #1]
	cmp	r6, #0
	bne	.L189
	mov	r0, fp
	bl	fill_inverse_cmap(PLT)
	ldrh	r6, [r7, r8, lsl #1]
	subs	r5, r5, #1
	add	r6, r6, #-1
	strb	r6, [r9], #1
	bne	.L191
.L197:
	ldr	r9, [sp, #8]
.L190:
	ldr	r2, [sp]
	add	r9, r9, #4
	ldr	r3, [sp, #20]
	adds	r2, r2, #1
	cmp	r2, r3
	str	r2, [sp]
	bne	.L192
.L184:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	pass2_no_dither, .-pass2_no_dither
	.section	.text.pass2_fs_dither,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pass2_fs_dither, %function
pass2_fs_dither:
	@ args = 0, pretend = 0, frame = 120
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #124
	ldr	r4, [r0, #472]
	cmp	r3, #0
	str	r0, [sp, #84]
	ldr	r7, [r4, #24]
	str	r4, [sp, #88]
	ldr	r5, [sp, #84]
	ldr	r4, [r4, #40]
	ldr	r0, [r0, #144]
	ldr	r5, [r5, #120]
	str	r4, [sp, #12]
	ldr	r4, [sp, #84]
	str	r5, [sp, #80]
	str	r7, [sp, #60]
	ldr	r5, [r0]
	ldr	r7, [r0, #4]
	ldr	r4, [r4, #336]
	ldr	r0, [r0, #8]
	str	r5, [sp, #64]
	str	r7, [sp, #68]
	str	r0, [sp, #72]
	str	r4, [sp, #8]
	str	r3, [sp, #104]
	ble	.L198
	ldr	r3, [sp, #80]
	subs	r1, r1, #4
	ldr	r5, [sp, #80]
	subs	r2, r2, #4
	movs	r7, #0
	str	r1, [sp, #96]
	adds	r3, r3, #1
	str	r2, [sp, #100]
	add	r3, r3, r3, lsl #1
	add	r8, r5, #-1
	add	r0, r5, r5, lsl #1
	str	r7, [sp, #92]
	lsls	r3, r3, #1
	str	r8, [sp, #116]
	str	r3, [sp, #112]
	subs	r3, r0, #3
	str	r3, [sp, #108]
.L207:
	ldr	r9, [sp, #88]
	ldr	r10, [sp, #96]
	ldr	r7, [sp, #100]
	ldr	r3, [r9, #36]
	ldr	r5, [r10, #4]!
	ldr	r4, [r7, #4]!
	str	r10, [sp, #96]
	str	r7, [sp, #100]
	str	r4, [sp]
	cmp	r3, #0
	beq	.L200
	ldr	r3, [r9, #32]
	mov	r10, #-1
	ldr	r9, [sp, #116]
	mvn	r7, #5
	ldr	r8, [sp, #108]
	mvn	r1, #1
	str	r10, [sp, #44]
	mvn	r2, #3
	add	r4, r4, r9
	ldr	r10, [sp, #88]
	str	r4, [sp]
	add	r5, r5, r8
	ldr	r4, [sp, #112]
	mvn	r8, #2
	str	r7, [sp, #16]
	str	r8, [sp, #48]
	add	r4, r4, r3
	movs	r3, #0
	str	r4, [sp, #76]
	ldr	r4, [sp, #80]
	str	r3, [r10, #36]
	cmp	r4, #0
	beq	.L208
.L210:
	ldr	r7, [sp, #16]
	mov	r10, #0
	str	r10, [sp, #24]
	mov	r0, r10
	str	r10, [sp, #20]
	subs	r1, r1, r7
	subs	r2, r2, r7
	str	r1, [sp, #56]
	mov	r7, r10
	str	r10, [sp, #36]
	mov	r1, r10
	str	r10, [sp, #32]
	str	r10, [sp, #40]
	str	r4, [sp, #4]
	str	r10, [sp, #28]
	mov	r10, r2
	str	r2, [sp, #52]
	ldr	r4, [sp, #76]
	b	.L205
.L203:
	ldr	r10, [sp]
	subs	r2, r3, #1
	ldr	ip, [sp, #20]
	ldr	fp, [sp, #24]
	strb	r2, [r10]
	mov	r0, r10
	ldr	r10, [sp, #44]
	add	r0, r0, r10
	ldr	r10, [sp, #64]
	str	r0, [sp]
	ldrb	lr, [r10, r2]	@ zero_extendqisi2
	ldr	r10, [sp, #68]
	rsb	lr, lr, r9
	ldrb	r3, [r10, r2]	@ zero_extendqisi2
	ldr	r10, [sp, #72]
	subs	r3, r7, r3
	lsl	r7, lr, #1
	ldrb	r2, [r10, r2]	@ zero_extendqisi2
	lsls	r0, r3, #1
	add	r9, lr, r7
	ldr	r10, [sp, #28]
	add	ip, ip, r9
	add	r9, r9, r7
	rsb	r2, r2, r8
	strh	ip, [r4]	@ movhi
	lsls	r1, r2, #1
	add	r8, r3, r0
	add	fp, fp, r8
	add	ip, r2, r1
	strh	fp, [r4, #2]	@ movhi
	add	r10, r10, ip
	add	ip, ip, r1
	str	r10, [sp, #28]
	add	r7, r7, r9
	ldr	r10, [sp, #40]
	add	r8, r8, r0
	add	r0, r0, r8
	add	r1, r1, ip
	add	r10, r10, r9
	ldr	r9, [sp, #32]
	str	r10, [sp, #20]
	ldr	r10, [sp, #28]
	add	r9, r9, r8
	str	r3, [sp, #32]
	str	r9, [sp, #24]
	strh	r10, [r4, #4]	@ movhi
	ldr	r4, [sp, #36]
	str	r2, [sp, #36]
	add	r4, r4, ip
	str	r4, [sp, #28]
	ldr	r4, [sp, #4]
	subs	r4, r4, #1
	str	r4, [sp, #4]
	mov	r4, r6
	beq	.L204
	ldr	r10, [sp, #52]
	str	lr, [sp, #40]
.L205:
	ldr	r8, [sp, #16]
	ldr	r3, [sp, #8]
	ldrb	lr, [r5]	@ zero_extendqisi2
	mov	r6, r8
	ldrsh	r9, [r4, r8]
	add	r6, r6, r4
	ldrb	r2, [r5, #1]	@ zero_extendqisi2
	ldrsh	r8, [r6, r10]
	add	r7, r7, r9
	ldr	r10, [sp, #56]
	adds	r7, r7, #8
	add	r0, r0, r8
	ldr	r8, [sp, #12]
	asrs	r7, r7, #4
	ldrsh	ip, [r6, r10]
	adds	r0, r0, #8
	ldr	r10, [sp, #60]
	ldr	r7, [r8, r7, lsl #2]
	asrs	r0, r0, #4
	add	r1, r1, ip
	ldr	r0, [r8, r0, lsl #2]
	adds	r1, r1, #8
	add	r7, r7, r3
	asrs	r1, r1, #4
	ldrb	r9, [r7, lr]	@ zero_extendqisi2
	ldr	r7, [sp, #48]
	add	r0, r0, r3
	ldr	r1, [r8, r1, lsl #2]
	ldrb	r3, [r5, #2]	@ zero_extendqisi2
	add	r5, r5, r7
	ldrb	r7, [r0, r2]	@ zero_extendqisi2
	ldr	r2, [sp, #8]
	add	r2, r2, r1
	asr	r1, r9, #3
	ldrb	r8, [r2, r3]	@ zero_extendqisi2
	asrs	r2, r7, #2
	ldr	r3, [r10, r1, lsl #2]
	asr	r10, r8, #3
	add	fp, r3, r2, lsl #6
	ldrh	r3, [fp, r10, lsl #1]
	cmp	r3, #0
	bne	.L203
	mov	r3, r10
	ldr	r0, [sp, #84]
	bl	fill_inverse_cmap(PLT)
	ldrh	r3, [fp, r10, lsl #1]
	b	.L203
.L204:
	ldr	r7, [sp, #76]
	mov	r4, r9
	ldr	r8, [sp, #16]
	uxth	fp, r4
	ldr	r5, [sp, #80]
	ldr	r10, [sp, #28]
	ldr	r9, [sp, #20]
	mla	r7, r5, r8, r7
	uxth	r3, r9
	uxth	r10, r10
	str	r7, [sp, #76]
.L202:
	ldr	r5, [sp, #92]
	ldr	r8, [sp, #104]
	strh	r3, [r7]	@ movhi
	adds	r5, r5, #1
	strh	fp, [r7, #2]	@ movhi
	cmp	r5, r8
	str	r5, [sp, #92]
	strh	r10, [r7, #4]	@ movhi
	bne	.L207
.L198:
	add	sp, sp, #124
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L200:
	ldr	r4, [r9, #32]
	movs	r7, #1
	ldr	r10, [sp, #88]
	mov	r3, r7
	mov	r8, #6
	mov	r9, #3
	str	r4, [sp, #76]
	movs	r1, #10
	ldr	r4, [sp, #80]
	movs	r2, #8
	str	r7, [sp, #44]
	str	r8, [sp, #16]
	str	r9, [sp, #48]
	str	r3, [r10, #36]
	cmp	r4, #0
	bne	.L210
.L208:
	mov	r10, r4
	mov	fp, r4
	mov	r3, r10
	ldr	r7, [sp, #76]
	b	.L202
	.size	pass2_fs_dither, .-pass2_fs_dither
	.global	__aeabi_idiv
	.section	.text.finish_pass1,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	finish_pass1, %function
finish_pass1:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #472]
	movs	r1, #1
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #68
	ldr	r2, [r0, #4]
	ldr	fp, [r3, #20]
	str	r3, [sp, #60]
	ldr	r3, [r3, #16]
	ldr	r4, [r2]
	lsl	r2, fp, #5
	str	r0, [sp, #28]
	str	r3, [r0, #144]
	blx	r4
	ldr	r4, [sp, #28]
	movs	r3, #0
	movs	r2, #31
	movs	r1, #63
	mov	r5, r0
	str	r1, [r0, #12]
	str	r3, [r0]
	mov	r1, r0
	str	r3, [r0, #8]
	add	r8, r5, #100
	str	r3, [r0, #16]
	str	r2, [r0, #4]
	str	r2, [r0, #20]
	ldr	r0, [r4, #472]
	bl	update_box.isra.0(PLT)
	cmp	fp, #1
	itt	le
	movle	r5, #1
	strle	r5, [sp, #52]
	ble	.L224
	movs	r3, #1
	mov	r4, r8
	mov	r6, r3
	str	r3, [sp, #52]
	str	r8, [sp, #4]
.L223:
	cmp	fp, r6, lsl #1
	mov	r1, #0
	blt	.L214
	mov	r2, r5
	mov	r0, r1
	mov	lr, r1
.L217:
	ldr	r3, [r2, #28]
	adds	r0, r0, #1
	cmp	r3, lr
	ble	.L215
	ldr	r7, [r2, #24]
	cmp	r7, #0
	itt	gt
	movgt	r1, r2
	movgt	lr, r3
.L215:
	cmp	r0, r6
	add	r2, r2, #32
	blt	.L217
.L216:
	cmp	r1, #0
	beq	.L250
	ldr	r3, [r1, #4]
	sub	r2, r4, #68
	str	r2, [sp, #8]
	pld	[r4]
	str	r3, [r4, #-64]
	ldr	r3, [r1, #12]
	str	r3, [r4, #-56]
	ldr	r3, [r1, #20]
	str	r3, [r4, #-48]
	ldr	r3, [r1]
	str	r3, [r4, #-68]
	ldr	r3, [r1, #8]
	str	r3, [r4, #-60]
	ldr	r3, [r1, #16]
	str	r3, [r4, #-52]
	ldr	r8, [r1, #12]
	ldr	r3, [r1, #8]
	ldmia	r1, {r9, ip}
	ldr	r7, [r1, #20]
	rsb	r2, r3, r8
	ldr	lr, [r1, #16]
	lsls	r0, r2, #3
	rsb	r10, r9, ip
	lsl	r10, r10, #4
	add	r0, r0, r2, lsl #2
	rsb	r2, lr, r7
	lsls	r2, r2, #3
	cmp	r10, r0
	ble	.L252
	cmp	r10, r2
	bge	.L253
.L234:
	add	r7, r7, lr
	add	r7, r7, r7, lsr #31
	asrs	r3, r7, #1
	adds	r2, r3, #1
	str	r3, [r1, #20]
	str	r2, [r4, #-52]
.L222:
	ldr	r3, [sp, #28]
	adds	r6, r6, #1
	adds	r4, r4, #32
	ldr	r0, [r3, #472]
	bl	update_box.isra.0(PLT)
	ldr	r3, [sp, #28]
	ldr	r1, [sp, #8]
	ldr	r0, [r3, #472]
	bl	update_box.isra.0(PLT)
	cmp	r6, fp
	bne	.L223
.L250:
	ldr	r8, [sp, #4]
	str	r6, [sp, #52]
.L224:
	movs	r2, #0
	str	r8, [sp, #36]
	str	r2, [sp, #56]
.L213:
	ldr	r4, [sp, #28]
	ldr	r5, [sp, #36]
	ldr	r2, [r4, #472]
	ldr	r5, [r5, #-100]
	ldr	r4, [sp, #36]
	ldr	r1, [r2, #24]
	str	r5, [sp, #16]
	ldr	r5, [r4, #-92]
	pld	[r4]
	ldr	r3, [r4, #-96]
	str	r5, [sp, #24]
	ldr	r5, [sp, #16]
	ldr	r0, [r4, #-88]
	ldr	r2, [r4, #-84]
	ldr	r4, [r4, #-80]
	cmp	r5, r3
	str	r0, [sp, #32]
	str	r2, [sp, #4]
	str	r4, [sp, #8]
	bgt	.L238
	ldr	r0, [sp, #24]
	add	r1, r1, r5, lsl #2
	adds	r3, r3, #1
	str	r3, [sp, #40]
	movs	r4, #0
	str	r1, [sp, #44]
	mov	r5, r4
	add	r2, r2, r0, lsl #5
	ldr	r1, [sp, #32]
	mov	r0, r4
	str	r4, [sp, #20]
	lsls	r3, r2, #1
	ldr	r2, [sp, #8]
	mov	r7, r4
	adds	r1, r1, #1
	str	r3, [sp, #48]
	add	r9, r2, #1
	str	r1, [sp, #12]
.L226:
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #32]
	cmp	r1, r2
	bgt	.L231
	mov	r10, r1
	ldr	r2, [sp, #44]
	ldr	r1, [sp, #20]
	ldr	fp, [sp, #48]
	ldr	r3, [r2, r1]
	ldr	r1, [sp, #16]
	add	fp, fp, r3
	lsl	r8, r1, #3
	add	r8, r8, #4
.L232:
	ldr	r3, [sp, #4]
	mov	r1, fp
	ldr	r2, [sp, #8]
	cmp	r3, r2
	bgt	.L227
	lsl	ip, r10, #2
	mov	r2, r3
	add	ip, ip, #2
.L228:
	ldrh	r3, [r1], #2
	lsl	lr, r2, #3
	adds	r2, r2, #1
	add	lr, lr, #4
	cmp	r3, #0
	add	r7, r7, r3
	mla	lr, lr, r3, r4
	mla	r6, r8, r3, r0
	it	ne
	movne	r4, lr
	mla	r3, ip, r3, r5
	itt	ne
	movne	r0, r6
	movne	r5, r3
	cmp	r2, r9
	bne	.L228
.L227:
	ldr	r3, [sp, #12]
	add	r10, r10, #1
	add	fp, fp, #64
	cmp	r10, r3
	bne	.L232
.L231:
	ldr	r1, [sp, #16]
	ldr	r3, [sp, #40]
	ldr	r2, [sp, #20]
	adds	r1, r1, #1
	cmp	r1, r3
	str	r1, [sp, #16]
	add	r2, r2, #4
	str	r2, [sp, #20]
	bne	.L226
	asrs	r3, r7, #1
	add	r0, r0, r3
	add	r5, r5, r3
	add	r4, r4, r3
.L225:
	ldr	r2, [sp, #28]
	mov	r1, r7
	ldr	r3, [r2, #144]
	ldr	r2, [sp, #36]
	ldr	r6, [r3]
	adds	r2, r2, #32
	str	r2, [sp, #36]
	bl	__aeabi_idiv(PLT)
	ldr	r3, [sp, #56]
	mov	r1, r7
	strb	r0, [r6, r3]
	mov	r0, r5
	ldr	r5, [sp, #28]
	ldr	r3, [r5, #144]
	ldr	r5, [r3, #4]
	bl	__aeabi_idiv(PLT)
	ldr	r2, [sp, #56]
	mov	r1, r7
	strb	r0, [r5, r2]
	mov	r0, r4
	ldr	r4, [sp, #28]
	ldr	r3, [r4, #144]
	ldr	r4, [r3, #8]
	bl	__aeabi_idiv(PLT)
	ldr	r5, [sp, #56]
	ldr	r2, [sp, #52]
	strb	r0, [r4, r5]
	adds	r5, r5, #1
	cmp	r5, r2
	str	r5, [sp, #56]
	blt	.L213
	ldr	r4, [sp, #28]
	movs	r1, #1
	ldr	r5, [sp, #28]
	ldr	r3, [r4]
	movs	r4, #96
	str	r2, [r5, #140]
	mov	r0, r5
	str	r2, [r3, #24]
	ldr	r2, [r5]
	str	r4, [r3, #20]
	ldr	r3, [r2, #4]
	blx	r3
	ldr	r4, [sp, #60]
	movs	r3, #1
	str	r3, [r4, #28]
	add	sp, sp, #68
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L253:
	add	ip, ip, r9
	add	ip, ip, ip, lsr #31
	asr	r3, ip, #1
	adds	r2, r3, #1
	str	r3, [r1, #4]
	str	r2, [r4, #-68]
	b	.L222
.L238:
	movs	r4, #0
	mov	r5, r4
	mov	r0, r4
	mov	r7, r4
	b	.L225
.L214:
	mov	r3, r5
	mov	r0, r1
	mov	r2, r1
.L218:
	ldr	r7, [r3, #24]
	adds	r0, r0, #1
	cmp	r7, r2
	it	gt
	movgt	r1, r3
	cmp	r2, r7
	it	lt
	movlt	r2, r7
	cmp	r0, r6
	add	r3, r3, #32
	blt	.L218
	b	.L216
.L252:
	cmp	r0, r2
	blt	.L234
	add	r3, r3, r8
	add	r3, r3, r3, lsr #31
	asrs	r3, r3, #1
	adds	r2, r3, #1
	str	r3, [r1, #12]
	str	r2, [r4, #-60]
	b	.L222
	.size	finish_pass1, .-finish_pass1
	.section	.text.jinit_2pass_quantizer,"ax",%progbits
	.align	2
	.global	jinit_2pass_quantizer
	.thumb
	.thumb_func
	.type	jinit_2pass_quantizer, %function
jinit_2pass_quantizer:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	movs	r1, #1
	ldr	r3, [r0, #4]
	mov	r5, r0
	movs	r2, #44
	ldr	r3, [r3]
	blx	r3
	ldr	r2, [r5, #128]
	mov	r7, r0
	ldr	r1, .L272
	movs	r3, #0
	ldr	r0, .L272+4
	cmp	r2, #3
	str	r7, [r5, #472]
.LPIC38:
	add	r1, pc
	str	r3, [r7, #32]
.LPIC37:
	add	r0, pc
	str	r1, [r7, #12]
	str	r0, [r7]
	str	r3, [r7, #40]
	beq	.L255
	ldr	r3, [r5]
	movs	r2, #47
	mov	r0, r5
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
.L255:
	ldr	r3, [r5, #4]
	mov	r0, r5
	movs	r1, #1
	movs	r2, #128
	movs	r4, #0
	ldr	r3, [r3]
	blx	r3
	mov	r6, r0
	str	r0, [r7, #24]
	b	.L257
.L268:
	ldr	r6, [r7, #24]
.L257:
	ldr	r3, [r5, #4]
	mov	r0, r5
	movs	r1, #1
	mov	r2, #4096
	ldr	r3, [r3, #4]
	blx	r3
	str	r0, [r6, r4]
	adds	r4, r4, #4
	cmp	r4, #128
	bne	.L268
	ldr	r3, [r5, #116]
	movs	r2, #1
	str	r2, [r7, #28]
	cbz	r3, .L258
	ldr	r4, [r5, #104]
	cmp	r4, #7
	ble	.L269
	cmp	r4, #256
	bgt	.L270
.L260:
	ldr	r6, [r5, #4]
	movs	r3, #3
	mov	r0, r5
	movs	r1, #1
	mov	r2, r4
	ldr	r6, [r6, #8]
	blx	r6
	ldr	r3, [r5, #96]
	str	r4, [r7, #20]
	str	r0, [r7, #16]
	cbnz	r3, .L271
.L254:
	pop	{r3, r4, r5, r6, r7, pc}
.L258:
	str	r3, [r7, #16]
	ldr	r3, [r5, #96]
	cmp	r3, #0
	beq	.L254
.L271:
	ldr	r3, [r5, #120]
	movs	r1, #2
	ldr	r2, [r5, #4]
	mov	r0, r5
	str	r1, [r5, #96]
	movs	r1, #1
	add	r3, r3, r3, lsl #1
	ldr	r4, [r2, #4]
	lsl	r2, r3, r1
	adds	r2, r2, #12
	blx	r4
	str	r0, [r7, #32]
	mov	r0, r5
	pop	{r3, r4, r5, r6, r7, lr}
	b	init_error_limit(PLT)
.L269:
	ldr	r3, [r5]
	movs	r2, #8
	movs	r1, #56
.L267:
	str	r2, [r3, #24]
	mov	r0, r5
	ldr	r2, [r5]
	str	r1, [r3, #20]
	ldr	r3, [r2]
	blx	r3
	b	.L260
.L270:
	ldr	r3, [r5]
	mov	r2, #256
	movs	r1, #57
	b	.L267
.L273:
	.align	2
.L272:
	.word	new_color_map_2_quant-(.LPIC38+4)
	.word	start_pass_2_quant-(.LPIC37+4)
	.size	jinit_2pass_quantizer, .-jinit_2pass_quantizer
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
