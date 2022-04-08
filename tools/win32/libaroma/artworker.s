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
	.file	"artworker.c"
	.section	.text._libaroma_art_arrowdrawer_line,"ax",%progbits
	.align	2
	.global	_libaroma_art_arrowdrawer_line
	.thumb
	.thumb_func
	.type	_libaroma_art_arrowdrawer_line, %function
_libaroma_art_arrowdrawer_line:
	@ args = 20, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, r0
	fstmfdd	sp!, {d8, d9}
	sub	sp, sp, #36
	ldrb	r7, [sp, #92]	@ zero_extendqisi2
	ldrh	r9, [sp, #96]
	ldrb	r10, [sp, #100]	@ zero_extendqisi2
	ldrb	r8, [sp, #104]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L1
	fmsr	s18, r2	@ int
	mov	fp, r3
	fcpys	s16, s1
	cbz	r7, .L3
	fconsts	s15, #112
	fsubs	s0, s15, s0
.L3:
	fconsts	s15, #96
	fcmpes	s0, s15
	fmstat
	bls	.L4
	fcvtds	d0, s0
	movs	r4, #96
	fconstd	d16, #224
	movs	r5, #32
	faddd	d0, d0, d16
	faddd	d0, d0, d0
	fcvtsd	s17, d0
.L9:
	add	r5, r5, r1
	fcpys	s0, s17
	flds	s1, [r5]
	add	r4, r4, r1
	flds	s2, [r5, #4]
	mov	r0, sp
	flds	s3, [r5, #8]
	add	r1, sp, #8
	flds	s4, [r5, #12]
	flds	s5, [r5, #16]
	flds	s6, [r5, #20]
	flds	s7, [r5, #24]
	flds	s8, [r5, #28]
	bl	libaroma_path_curve_calc(PLT)
	fcpys	s0, s17
	add	r0, sp, #16
	flds	s1, [r4]
	add	r1, sp, #24
	flds	s2, [r4, #4]
	flds	s3, [r4, #8]
	flds	s4, [r4, #12]
	flds	s5, [r4, #16]
	flds	s6, [r4, #20]
	flds	s7, [r4, #24]
	flds	s8, [r4, #28]
	bl	libaroma_path_curve_calc(PLT)
	cmp	r7, #0
	beq	.L19
	flds	s15, .L20+8
	flds	s12, [sp, #24]
	flds	s11, [sp, #8]
	fsubs	s12, s15, s12
	fsubs	s11, s15, s11
.L7:
	flds	s14, [sp, #88]	@ int
	mov	r0, r6
	fldd	d17, .L20
	mov	r1, r9
	flds	s13, [sp]
	mov	r2, r10
	fsitos	s2, s18
	mov	r3, r8
	fsitos	s15, s14
	flds	s14, [sp, #16]
	fconsts	s4, #52
	fcpys	s5, s16
	fcvtds	d16, s15
	fmsr	s15, fp	@ int
	fsitos	s3, s15
	fmuld	d16, d16, d17
	fcvtsd	s15, d16
	fmuls	s11, s11, s15
	fmuls	s12, s12, s15
	fmuls	s13, s15, s13
	fmuls	s14, s15, s14
	fadds	s1, s11, s3
	fmuls	s4, s15, s4
	fadds	s0, s13, s2
	fadds	s3, s12, s3
	fadds	s2, s14, s2
	fsts	s11, [sp, #8]
	fsts	s12, [sp, #24]
	fsts	s13, [sp]
	fsts	s14, [sp, #16]
	bl	libaroma_draw_line_width(PLT)
.L1:
	add	sp, sp, #36
	@ sp needed
	fldmfdd	sp!, {d8-d9}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L4:
	fadds	s17, s0, s0
	movs	r4, #64
	movs	r5, #0
	b	.L9
.L19:
	flds	s11, [sp, #8]
	flds	s12, [sp, #24]
	b	.L7
.L21:
	.align	3
.L20:
	.word	286331153
	.word	1064374545
	.word	1131413504
	.size	_libaroma_art_arrowdrawer_line, .-_libaroma_art_arrowdrawer_line
	.section	.text.libaroma_art_arrowdrawer,"ax",%progbits
	.align	2
	.global	libaroma_art_arrowdrawer
	.thumb
	.thumb_func
	.type	libaroma_art_arrowdrawer, %function
libaroma_art_arrowdrawer:
	@ args = 16, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	fconsts	s15, #112
	fcmpes	s0, s15
	fmstat
	fcmpezs	s0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r4, r0
	ite	gt
	movgt	r0, #1
	movle	r0, #0
	fmstat
	it	mi
	orrmi	r0, r0, #1
	fstmfdd	sp!, {d8}
	sub	sp, sp, #24
	fcpys	s16, s0
	ldrh	r8, [sp, #68]
	ldrb	r6, [sp, #72]	@ zero_extendqisi2
	ldrb	r5, [sp, #76]	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L27
	mov	r10, r1
	mov	r9, r2
	mov	r7, r3
	fcpys	s17, s1
	cmp	r4, #0
	beq	.L34
	cmp	r5, #0
	beq	.L26
.L35:
	ldr	r3, [r4, #20]
	cmp	r3, #0
	beq	.L27
.L28:
	ldr	r3, [sp, #64]
	mov	r0, r4
	ldr	r1, .L36
	mov	r2, r9
	fcpys	s0, s16
	fcpys	s1, s17
	str	r3, [sp]
.LPIC0:
	add	r1, pc
	mov	r3, r7
	str	r10, [sp, #4]
	str	r8, [sp, #8]
	str	r6, [sp, #12]
	str	r5, [sp, #16]
	bl	_libaroma_art_arrowdrawer_line(PLT)
	ldr	r3, [sp, #64]
	mov	r0, r4
	ldr	r1, .L36+4
	mov	r2, r9
	fcpys	s0, s16
	fcpys	s1, s17
	str	r3, [sp]
.LPIC1:
	add	r1, pc
	mov	r3, r7
	str	r10, [sp, #4]
	str	r8, [sp, #8]
	str	r6, [sp, #12]
	str	r5, [sp, #16]
	bl	_libaroma_art_arrowdrawer_line(PLT)
	ldr	r3, [sp, #64]
	mov	r0, r4
	ldr	r1, .L36+8
	mov	r2, r9
	str	r10, [sp, #4]
	str	r3, [sp]
	mov	r3, r7
	str	r8, [sp, #8]
.LPIC2:
	add	r1, pc
	str	r6, [sp, #12]
	str	r5, [sp, #16]
	fcpys	s0, s16
	fcpys	s1, s17
	bl	_libaroma_art_arrowdrawer_line(PLT)
	movs	r0, #1
	add	sp, sp, #24
	@ sp needed
	fldmfdd	sp!, {d8}
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L26:
	movs	r0, #1
	cmp	r6, #0
	bne	.L28
	add	sp, sp, #24
	@ sp needed
	fldmfdd	sp!, {d8}
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L27:
	movs	r0, #0
	add	sp, sp, #24
	@ sp needed
	fldmfdd	sp!, {d8}
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L34:
	bl	libaroma_fb(PLT)
	ldr	r4, [r0, #52]
	cmp	r5, #0
	beq	.L26
	b	.L35
.L37:
	.align	2
.L36:
	.word	.LANCHOR0-(.LPIC0+4)
	.word	.LANCHOR1-(.LPIC1+4)
	.word	.LANCHOR2-(.LPIC2+4)
	.size	libaroma_art_arrowdrawer, .-libaroma_art_arrowdrawer
	.section	.text.libaroma_art_busy_progress,"ax",%progbits
	.align	2
	.global	libaroma_art_busy_progress
	.thumb
	.thumb_func
	.type	libaroma_art_busy_progress, %function
libaroma_art_busy_progress:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	fstmfdd	sp!, {d8, d9, d10, d11, d12, d13, d14, d15}
	sub	sp, sp, #116
	str	r0, [sp, #32]
	movs	r0, #1
	bl	libaroma_dp(PLT)
	mov	r8, r0
	movs	r0, #36
	bl	libaroma_dp(PLT)
	str	r0, [sp, #64]
	movs	r0, #72
	bl	libaroma_dp(PLT)
	str	r0, [sp, #52]
	movs	r0, #28
	ldr	r5, [sp, #52]
	ldr	r4, [sp, #52]
	lsls	r5, r5, #2
	lsl	r10, r4, #1
	movs	r4, #0
	str	r5, [sp, #60]
	bl	libaroma_dp(PLT)
	ldr	r3, [sp, #52]
	mov	r6, r0
	ldr	r1, [sp, #52]
	lsls	r5, r0, #1
	str	r4, [sp]
	movs	r2, #1
	add	r3, r3, r10
	rsb	r9, r6, r10
	add	r3, r1, r3, lsl #2
	str	r3, [sp, #68]
	mov	r3, r4
	ldr	r0, [sp, #68]
	bl	libaroma_canvas_new_ex(PLT)
	str	r0, [sp, #88]
	cmp	r0, #0
	beq	.L39
	ldr	r0, [sp, #60]
	movs	r2, #1
	str	r4, [sp]
	mov	r3, r4
	mov	r1, r0
	bl	libaroma_canvas_new_ex(PLT)
	str	r0, [sp, #96]
	cmp	r0, #0
	beq	.L46
	str	r4, [sp]
	mov	r0, r5
	mov	r1, r5
	movs	r2, #1
	mov	r3, r4
	bl	libaroma_canvas_new_ex(PLT)
	mov	r7, r0
	str	r0, [sp, #104]
	cmp	r0, #0
	beq	.L52
	lsl	r8, r8, #1
	fldd	d9, .L54
	fmsr	s15, r9	@ int
	mov	r1, r4
	sub	r2, r5, r8, lsl #1
	ldr	r0, [sp, #88]
	fsitod	d8, s15
	mov	r7, r4
	str	r2, [sp, #36]
	mov	r2, r4
	str	r4, [sp, #56]
	fldd	d14, .L54+8
	fldd	d12, .L54+16
	str	r4, [sp, #48]
	fldd	d13, .L54+24
	fldd	d15, .L54+32
	fcpyd	d11, d9
	fconstd	d10, #112
	bl	libaroma_canvas_setcolor(PLT)
.L45:
	movs	r1, #0
	add	r3, sp, #80
	mov	r2, r1
	ldr	r0, [sp, #96]
	mov	r4, r1
	str	r3, [sp, #40]
	bl	libaroma_canvas_setcolor(PLT)
	add	lr, sp, #72
	fmuld	d11, d11, d14
	str	lr, [sp, #44]
	b	.L43
.L53:
	fcpyd	d0, d11
	fmacd	d0, d16, d12
	fmuld	d0, d0, d13
	bl	sincos(PLT)
	fldd	d10, [sp, #72]
	fldd	d9, [sp, #80]
.L43:
	fmuld	d0, d10, d8
	adds	r4, r4, #1
	bl	lround(PLT)
	mov	r9, r0
	fmuld	d0, d9, d8
	bl	lround(PLT)
	movs	r1, #0
	mov	fp, r0
	mov	r2, r1
	ldr	r0, [sp, #104]
	bl	libaroma_canvas_setcolor(PLT)
	ldr	r2, [sp, #36]
	add	r3, r4, r4, lsl #3
	mov	r1, r8
	ldr	r0, [sp, #104]
	lsls	r3, r3, #1
	str	r6, [sp, #12]
	str	r2, [sp]
	ldr	r2, [sp, #32]
	cmp	r3, #255
	str	r7, [sp, #28]
	str	r2, [sp, #4]
	str	r2, [sp, #8]
	add	r2, r3, #39
	it	ge
	movge	r3, #255
	uxtb	r2, r2
	uxtb	lr, r3
	movw	r3, #4369
	str	r3, [sp, #16]
	str	r2, [sp, #20]
	mov	r2, r8
	str	lr, [sp, #24]
	ldr	r3, [sp, #36]
	bl	libaroma_gradient_ex1(PLT)
	add	r2, r10, r9
	add	r3, r10, fp
	ldr	r1, [sp, #104]
	subs	r2, r2, r6
	ldr	r0, [sp, #96]
	subs	r3, r3, r6
	str	r5, [sp]
	str	r5, [sp, #4]
	str	r7, [sp, #8]
	str	r7, [sp, #12]
	str	r5, [sp, #16]
	str	r5, [sp, #20]
	bl	libaroma_draw_scale_smooth(PLT)
	cmp	r4, #12
	fmsr	s15, r4	@ int
	fsitod	d16, s15
	add	r0, sp, #80
	add	r1, sp, #72
	bne	.L53
	ldr	r4, [sp, #48]
	movs	r3, #0
	ldr	r2, [sp, #56]
	ldr	r0, [sp, #88]
	adds	r4, r4, #1
	ldr	r1, [sp, #96]
	str	r4, [sp, #48]
	mov	lr, r2
	ldr	r4, [sp, #52]
	str	r3, [sp, #8]
	str	r3, [sp, #12]
	add	lr, lr, r4
	str	r4, [sp]
	str	r4, [sp, #4]
	ldr	r4, [sp, #60]
	str	lr, [sp, #56]
	str	r4, [sp, #16]
	str	r4, [sp, #20]
	bl	libaroma_draw_scale_smooth(PLT)
	ldr	r4, [sp, #48]
	cmp	r4, #13
	beq	.L44
	fmsr	s15, r4	@ int
	add	r0, sp, #80
	fsitod	d11, s15
	add	r1, sp, #72
	fmuld	d0, d11, d15
	bl	sincos(PLT)
	fldd	d10, [sp, #72]
	fldd	d9, [sp, #80]
	b	.L45
.L44:
	add	r0, sp, #96
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
	add	r0, sp, #104
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
	ldr	r4, [sp, #64]
	movs	r2, #0
	str	r2, [sp]
	movs	r3, #0
	movs	r2, #1
	mov	r1, r4
	add	r5, r4, r4, lsl #1
	add	r5, r4, r5, lsl #2
	mov	r0, r5
	bl	libaroma_canvas_new_ex(PLT)
	mov	r7, r0
	cbz	r0, .L46
	movs	r1, #0
	add	r4, sp, #112
	mov	r2, r1
	bl	libaroma_canvas_setcolor(PLT)
	ldr	r1, [r4, #-24]!
	movs	r2, #0
	str	r5, [sp]
	mov	r3, r2
	ldr	r5, [sp, #64]
	mov	r0, r7
	str	r2, [sp, #8]
	str	r2, [sp, #12]
	str	r5, [sp, #4]
	ldr	r5, [sp, #68]
	str	r5, [sp, #16]
	ldr	r5, [sp, #52]
	str	r5, [sp, #20]
	bl	libaroma_draw_scale_smooth(PLT)
	mov	r0, r4
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
	mov	r0, r7
.L39:
	add	sp, sp, #116
	@ sp needed
	fldmfdd	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L46:
	add	r0, sp, #88
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
	movs	r0, #0
	b	.L39
.L52:
	add	r0, sp, #96
	mov	r1, r7
	bl	libaroma_canvas_free_ex1(PLT)
	add	r0, sp, #88
	mov	r1, r7
	bl	libaroma_canvas_free_ex1(PLT)
	mov	r0, r7
	b	.L39
.L55:
	.align	3
.L54:
	.word	0
	.word	0
	.word	330382099
	.word	1068740923
	.word	1431655765
	.word	1068848469
	.word	1413754602
	.word	1075388923
	.word	748859364
	.word	1071574719
	.size	libaroma_art_busy_progress, .-libaroma_art_busy_progress
	.section	.rodata.__libaroma_art_arrowdrawer_curves_bot,"a",%progbits
	.align	3
.LANCHOR2 = . + 0
	.type	__libaroma_art_arrowdrawer_curves_bot, %object
	.size	__libaroma_art_arrowdrawer_curves_bot, 128
__libaroma_art_arrowdrawer_curves_bot:
	.word	1099956224
	.word	1126825984
	.word	1088421888
	.word	1125384192
	.word	1073741824
	.word	1118306304
	.word	1106771968
	.word	1114636288
	.word	1106771968
	.word	1114636288
	.word	1110704128
	.word	1110704128
	.word	1120141312
	.word	1099956224
	.word	1123942400
	.word	1107296256
	.word	1130233856
	.word	1126825984
	.word	1129316352
	.word	1128398848
	.word	1126367232
	.word	1131413504
	.word	1119879168
	.word	1129840640
	.word	1119879168
	.word	1129840640
	.word	1114898432
	.word	1128792064
	.word	1106247680
	.word	1126301696
	.word	1106247680
	.word	1123942400
	.section	.rodata.__libaroma_art_arrowdrawer_curves_top,"a",%progbits
	.align	3
.LANCHOR0 = . + 0
	.type	__libaroma_art_arrowdrawer_curves_top, %object
	.size	__libaroma_art_arrowdrawer_curves_top, 128
__libaroma_art_arrowdrawer_curves_top:
	.word	1099956224
	.word	1116471296
	.word	1113063424
	.word	1082130432
	.word	1126170624
	.word	-1047003136
	.word	1129316352
	.word	1114636288
	.word	1129316352
	.word	1114636288
	.word	1131347968
	.word	1120272384
	.word	1129709568
	.word	1129512960
	.word	1123942400
	.word	1129250816
	.word	1130233856
	.word	1116471296
	.word	1131413504
	.word	1123811328
	.word	1130168320
	.word	1128923136
	.word	1125318656
	.word	1129709568
	.word	1125318656
	.word	1129709568
	.word	1120010240
	.word	1130627072
	.word	1106771968
	.word	1128333312
	.word	1106247680
	.word	1122107392
	.section	.rodata.__libaroma_art_arrowdrawer_curves_mid,"a",%progbits
	.align	3
.LANCHOR1 = . + 0
	.type	__libaroma_art_arrowdrawer_curves_mid, %object
	.size	__libaroma_art_arrowdrawer_curves_mid, 128
__libaroma_art_arrowdrawer_curves_mid:
	.word	1099956224
	.word	1123024896
	.word	1099956224
	.word	1115947008
	.word	1115947008
	.word	1102577664
	.word	1123024896
	.word	1102577664
	.word	1123024896
	.word	1102577664
	.word	1126694912
	.word	1102577664
	.word	1129512960
	.word	1116733440
	.word	1129512960
	.word	1123024896
	.word	1130233856
	.word	1123024896
	.word	1130233856
	.word	1127153664
	.word	1127153664
	.word	1129447424
	.word	1123024896
	.word	1129447424
	.word	1123024896
	.word	1129447424
	.word	1117257728
	.word	1129447424
	.word	1108869120
	.word	1126432768
	.word	1108869120
	.word	1123024896
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
