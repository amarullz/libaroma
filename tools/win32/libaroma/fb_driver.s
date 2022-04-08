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
	.file	"fb_driver.c"
	.section	.text.LINUXFBDR_post_16bit,"ax",%progbits
	.align	2
	.global	LINUXFBDR_post_16bit
	.thumb
	.thumb_func
	.type	LINUXFBDR_post_16bit, %function
LINUXFBDR_post_16bit:
	@ args = 24, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	sub	sp, sp, #8
	ldr	r4, [sp, #32]
	ldr	r6, [sp, #48]
	cbz	r0, .L2
	ldr	r5, [r0, #16]
	mov	r8, r2
	ldr	r0, [sp, #44]
	mov	ip, r3
	ldr	r2, [sp, #40]
	ldrb	lr, [r5, #253]	@ zero_extendqisi2
	ldr	r7, [r5, #248]
	mla	r3, r0, r6, r2
	ldr	r0, [r5, #264]
	mul	r8, r8, lr
	subs	r6, r6, r4
	mov	r2, r4
	lsls	r6, r6, #1
	add	r1, r1, r3, lsl #1
	ldr	r3, [sp, #36]
	str	r6, [sp, #4]
	mls	r4, r4, lr, r7
	mla	r7, ip, r7, r8
	str	r4, [sp]
	add	r0, r0, r7
	bl	libaroma_blt_align16(PLT)
	movs	r0, #1
.L2:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
	.size	LINUXFBDR_post_16bit, .-LINUXFBDR_post_16bit
	.section	.text.LINUXFBDR_snapshoot_16bit,"ax",%progbits
	.align	2
	.global	LINUXFBDR_snapshoot_16bit
	.thumb
	.thumb_func
	.type	LINUXFBDR_snapshoot_16bit, %function
LINUXFBDR_snapshoot_16bit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, r0
	cbz	r0, .L8
	push	{r4, r5, lr}
	movs	r5, #0
	ldr	r4, [r0, #16]
	sub	sp, sp, #12
	ldr	r2, [r0]
	mov	r0, r1
	ldr	r3, [r3, #4]
	ldr	r1, [r4, #240]
	str	r5, [sp]
	ldr	r4, [r4, #244]
	str	r4, [sp, #4]
	bl	libaroma_blt_align16(PLT)
	movs	r0, #1
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
.L8:
	bx	lr
	.size	LINUXFBDR_snapshoot_16bit, .-LINUXFBDR_snapshoot_16bit
	.section	.text.LINUXFBDR_post_32bit,"ax",%progbits
	.align	2
	.global	LINUXFBDR_post_32bit
	.thumb
	.thumb_func
	.type	LINUXFBDR_post_32bit, %function
LINUXFBDR_post_32bit:
	@ args = 24, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	sub	sp, sp, #16
	ldr	r5, [sp, #40]
	ldr	r6, [sp, #56]
	cbz	r0, .L12
	ldr	r4, [r0, #16]
	mov	ip, r3
	ldr	r0, [sp, #52]
	mov	r8, r2
	ldr	r3, [sp, #48]
	ldrb	lr, [r4, #253]	@ zero_extendqisi2
	ldr	r7, [r4, #248]
	mla	r2, r0, r6, r3
	ldr	r0, [r4, #264]
	mul	r8, r8, lr
	subs	r6, r6, r5
	lsls	r6, r6, #1
	add	r3, r4, #254
	add	r1, r1, r2, lsl #1
	str	r3, [sp, #8]
	mov	r2, r5
	str	r6, [sp, #4]
	mls	r5, r5, lr, r7
	ldr	r3, [sp, #44]
	mla	r7, ip, r7, r8
	str	r5, [sp]
	add	r0, r0, r7
	bl	libaroma_blt_align_to32_pos(PLT)
	movs	r0, #1
.L12:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
	.size	LINUXFBDR_post_32bit, .-LINUXFBDR_post_32bit
	.section	.text.QCOMFB_post,"ax",%progbits
	.align	2
	.global	QCOMFB_post
	.thumb
	.thumb_func
	.type	QCOMFB_post, %function
QCOMFB_post:
	@ args = 24, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	sub	sp, sp, #16
	ldr	r5, [sp, #40]
	ldr	r6, [sp, #56]
	cbz	r0, .L16
	ldr	r7, [sp, #52]
	rsb	r8, r5, r6
	ldr	lr, [sp, #48]
	lsl	r8, r8, #1
	ldr	r4, [r0, #16]
	ldr	r0, [r0]
	mla	ip, r7, r6, lr
	ldrb	r6, [r4, #253]	@ zero_extendqisi2
	ldr	r7, [r4, #248]
	rsb	lr, r5, r0
	ldr	r0, [r4, #264]
	cmp	r6, #2
	mul	r2, r2, r6
	add	r1, r1, ip, lsl #1
	mul	lr, r6, lr
	mla	r3, r7, r3, r2
	add	r0, r0, r3
	beq	.L20
	adds	r4, r4, #254
	str	lr, [sp]
	str	r4, [sp, #8]
	mov	r2, r5
	str	r8, [sp, #4]
	ldr	r3, [sp, #44]
	bl	libaroma_blt_align_to32_pos(PLT)
	movs	r0, #1
.L16:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L20:
	str	lr, [sp]
	mov	r2, r5
	str	r8, [sp, #4]
	ldr	r3, [sp, #44]
	bl	libaroma_blt_align16(PLT)
	movs	r0, #1
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
	.size	QCOMFB_post, .-QCOMFB_post
	.section	.text.LINUXFBDR_snapshoot_32bit,"ax",%progbits
	.align	2
	.global	LINUXFBDR_snapshoot_32bit
	.thumb
	.thumb_func
	.type	LINUXFBDR_snapshoot_32bit, %function
LINUXFBDR_snapshoot_32bit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, r0
	cbz	r0, .L23
	push	{r4, r5, r6, lr}
	movs	r6, #0
	ldr	r4, [r0, #16]
	sub	sp, sp, #16
	ldr	r2, [r0]
	mov	r0, r1
	ldr	r3, [r3, #4]
	add	r5, r4, #254
	ldr	r1, [r4, #240]
	str	r6, [sp]
	ldr	r4, [r4, #244]
	str	r5, [sp, #8]
	str	r4, [sp, #4]
	bl	libaroma_blt_align_to16_pos(PLT)
	movs	r0, #1
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, pc}
.L23:
	bx	lr
	.size	LINUXFBDR_snapshoot_32bit, .-LINUXFBDR_snapshoot_32bit
	.section	.text.QCOMFB_start_post,"ax",%progbits
	.align	2
	.global	QCOMFB_start_post
	.thumb
	.thumb_func
	.type	QCOMFB_start_post, %function
QCOMFB_start_post:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cbz	r0, .L30
	ldr	r0, [r0, #16]
	push	{r3, lr}
	add	r0, r0, #272
	bl	omp_set_nest_lock(PLT)
	movs	r0, #1
	pop	{r3, pc}
.L30:
	bx	lr
	.size	QCOMFB_start_post, .-QCOMFB_start_post
	.section	.text.LINUXFBDR_config,"ax",%progbits
	.align	2
	.global	LINUXFBDR_config
	.thumb
	.thumb_func
	.type	LINUXFBDR_config, %function
LINUXFBDR_config:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	sub	sp, sp, #72
	ldr	r4, [r0, #16]
	cbz	r4, .L32
	mov	r0, r1
	ldr	r1, .L37
	mov	r5, r3
.LPIC0:
	add	r1, pc
	bl	strcmp(PLT)
	cbnz	r0, .L32
	lsrs	r6, r5, #16
	movs	r0, #2
	add	r2, sp, #72
	strh	r5, [r4, #298]	@ movhi
	movs	r3, #1
	movw	r1, #17928
	strh	r0, [r2, #-72]!	@ movhi
	movt	r1, 49224
	ldr	r0, [r4]
	mov	r2, sp
	strh	r6, [r4, #300]	@ movhi
	strb	r3, [r4, #296]
	strh	r6, [sp, #12]	@ movhi
	strh	r3, [sp, #2]	@ movhi
	bl	ioctl(PLT)
.L32:
	movs	r0, #0
	add	sp, sp, #72
	@ sp needed
	pop	{r4, r5, r6, pc}
.L38:
	.align	2
.L37:
	.word	.LC0-(.LPIC0+4)
	.size	LINUXFBDR_config, .-LINUXFBDR_config
	.section	.text.LINUXFBDR_init_16bit,"ax",%progbits
	.align	2
	.global	LINUXFBDR_init_16bit
	.thumb
	.thumb_func
	.type	LINUXFBDR_init_16bit, %function
LINUXFBDR_init_16bit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r0
	ldr	r5, .L46
.LPIC3:
	add	r5, pc
	cmp	r0, #0
	beq	.L39
	bl	libaroma_debug_output(PLT)
	mov	r6, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L46+4
	mov	r2, r0
	mov	r0, r6
	ldr	r6, .L46+8
.LPIC1:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L46+12
	movs	r2, #31
	movs	r1, #1
.LPIC2:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	ldr	r2, [r4, #16]
	ldr	r1, [r4]
	ldr	r3, [r2, #248]
	adds	r0, r3, #3
	ands	r0, r0, r3, asr #32
	it	cc
	movcc	r0, r3
	cmp	r1, r0, asr #2
	ldr	r0, .L46+16
	ittt	eq
	addeq	r3, r3, r3, lsr #31
	asreq	r3, r3, #1
	streq	r3, [r2, #248]
	sub	r3, r3, r1, lsl #1
	ldr	r1, .L46+20
	str	r3, [r2, #244]
	ldr	r3, [r5, r6]
	ldr	r2, .L46+24
	str	r3, [r4, #32]
	ldr	r3, [r5, r0]
	str	r3, [r4, #40]
	ldr	r3, [r5, r1]
	str	r3, [r4, #36]
	ldr	r3, [r5, r2]
	str	r3, [r4, #24]
.L39:
	pop	{r4, r5, r6, pc}
.L47:
	.align	2
.L46:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC3+4)
	.word	.LC1-(.LPIC1+4)
	.word	LINUXFBDR_start_post(GOT)
	.word	.LC2-(.LPIC2+4)
	.word	LINUXFBDR_end_post(GOT)
	.word	LINUXFBDR_post_16bit(GOT)
	.word	LINUXFBDR_snapshoot_16bit(GOT)
	.size	LINUXFBDR_init_16bit, .-LINUXFBDR_init_16bit
	.section	.text.LINUXFBDR_setrgbpos,"ax",%progbits
	.align	2
	.global	LINUXFBDR_setrgbpos
	.thumb
	.thumb_func
	.type	LINUXFBDR_setrgbpos, %function
LINUXFBDR_setrgbpos:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L55
	ldr	r0, [r0, #16]
	push	{r4, r5, r6}
	lsrs	r6, r1, #3
	lsrs	r5, r2, #3
	lsrs	r4, r3, #3
	strb	r1, [r0, #254]
	strb	r2, [r0, #255]
	strb	r3, [r0, #256]
	strb	r6, [r0, #257]
	strb	r5, [r0, #258]
	strb	r4, [r0, #259]
	pop	{r4, r5, r6}
.L55:
	bx	lr
	.size	LINUXFBDR_setrgbpos, .-LINUXFBDR_setrgbpos
	.section	.text.LINUXFBDR_init_32bit,"ax",%progbits
	.align	2
	.global	LINUXFBDR_init_32bit
	.thumb
	.thumb_func
	.type	LINUXFBDR_init_32bit, %function
LINUXFBDR_init_32bit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r0
	ldr	r5, .L65
.LPIC6:
	add	r5, pc
	cmp	r0, #0
	beq	.L56
	bl	libaroma_debug_output(PLT)
	mov	r6, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L65+4
	mov	r2, r0
	mov	r0, r6
.LPIC4:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L65+8
	movs	r2, #31
	movs	r1, #1
.LPIC5:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	ldr	r3, [r4, #16]
	ldr	r2, [r4]
	ldr	r0, [r3, #248]
	ldrb	r6, [r3, #253]	@ zero_extendqisi2
	ldr	r1, [r3, #144]
	mls	r2, r2, r6, r0
	mov	r0, r4
	str	r2, [r3, #244]
	cbnz	r1, .L64
	movs	r2, #8
	movs	r3, #16
	bl	LINUXFBDR_setrgbpos(PLT)
.L59:
	ldr	r3, .L65+12
	ldr	r0, .L65+16
	ldr	r1, .L65+20
	ldr	r3, [r5, r3]
	ldr	r2, .L65+24
	str	r3, [r4, #32]
	ldr	r3, [r5, r0]
	str	r3, [r4, #40]
	ldr	r3, [r5, r1]
	str	r3, [r4, #36]
	ldr	r3, [r5, r2]
	str	r3, [r4, #24]
.L56:
	pop	{r4, r5, r6, pc}
.L64:
	movs	r1, #16
	movs	r2, #8
	movs	r3, #0
	bl	LINUXFBDR_setrgbpos(PLT)
	b	.L59
.L66:
	.align	2
.L65:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC6+4)
	.word	.LC1-(.LPIC4+4)
	.word	.LC3-(.LPIC5+4)
	.word	LINUXFBDR_start_post(GOT)
	.word	LINUXFBDR_end_post(GOT)
	.word	LINUXFBDR_post_32bit(GOT)
	.word	LINUXFBDR_snapshoot_32bit(GOT)
	.size	LINUXFBDR_init_32bit, .-LINUXFBDR_init_32bit
	.section	.text.QCOMFB_check_id,"ax",%progbits
	.align	2
	.global	QCOMFB_check_id
	.thumb
	.thumb_func
	.type	QCOMFB_check_id, %function
QCOMFB_check_id:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L76
	movs	r2, #5
	push	{r4, r5, r6, lr}
	add	r4, r0, #8
	sub	sp, sp, #8
	mov	r5, r0
.LPIC7:
	add	r1, pc
	mov	r0, r4
	bl	strncmp(PLT)
	mov	r3, r0
	cbz	r0, .L75
	ldr	r1, .L76+4
	mov	r0, r4
	movs	r2, #6
.LPIC8:
	add	r1, pc
	bl	strncmp(PLT)
	cmp	r0, #0
	ite	eq
	moveq	r0, #4
	movne	r0, #0
.L73:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
.L75:
	ldrh	r6, [r5, #13]!	@ unaligned
	add	r4, sp, #4
	strb	r3, [sp, #7]
	mov	r1, r0
	movs	r2, #10
	mov	r0, r4
	ldrb	r3, [r5, #2]	@ zero_extendqisi2
	strh	r6, [sp, #4]	@ unaligned
	strb	r3, [sp, #6]
	bl	strtol(PLT)
	cmp	r0, #400
	it	ge
	movge	r0, #5
	bge	.L73
	cmp	r0, #43
	ite	le
	movle	r0, #0
	movgt	r0, #1
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
.L77:
	.align	2
.L76:
	.word	.LC4-(.LPIC7+4)
	.word	.LC5-(.LPIC8+4)
	.size	QCOMFB_check_id, .-QCOMFB_check_id
	.section	.text.QCOMFB_split_display,"ax",%progbits
	.align	2
	.global	QCOMFB_split_display
	.thumb
	.thumb_func
	.type	QCOMFB_split_display, %function
QCOMFB_split_display:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	sub	sp, sp, #72
	add	r7, sp, #8
	mov	r5, r0
	movs	r1, #0
	movs	r2, #64
	mov	r0, r7
	ldr	r4, [r5, #16]
	bl	memset(PLT)
	ldr	r0, .L96
	ldr	r1, .L96+4
.LPIC9:
	add	r0, pc
.LPIC10:
	add	r1, pc
	bl	fopen(PLT)
	mov	r6, r0
	cbz	r0, .L79
	mov	r0, r7
	movs	r1, #1
	movs	r2, #64
	mov	r3, r6
	bl	fread(PLT)
	cmp	r0, #0
	bne	.L95
.L81:
	mov	r0, r6
	bl	fclose(PLT)
.L79:
	ldr	r3, [r5]
	cmp	r3, #2048
	ldr	r3, [r4, #292]
	bgt	.L84
	ldr	r2, [r3, #36]
	cbz	r2, .L85
.L84:
	movs	r2, #1
	strb	r2, [r3, #28]
	ldr	r3, [r4, #292]
	ldr	r2, [r3, #36]
	cbnz	r2, .L86
	ldr	r2, [r5]
	add	r2, r2, r2, lsr #31
	asrs	r2, r2, #1
	str	r2, [r3, #36]
.L86:
	ldr	r1, [r3, #32]
	cbnz	r1, .L87
	ldr	r1, [r5]
	subs	r2, r1, r2
	str	r2, [r3, #32]
.L87:
	bl	libaroma_debug_output(PLT)
	mov	r5, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L96+8
	mov	r2, r0
	mov	r0, r5
.LPIC11:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r4, [r4, #292]
	ldr	r1, .L96+12
	ldrb	r2, [r4, #28]	@ zero_extendqisi2
	ldr	r3, [r4, #32]
.LPIC12:
	add	r1, pc
	ldr	r4, [r4, #36]
	str	r4, [sp]
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	add	sp, sp, #72
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L85:
	strb	r2, [r3, #28]
	ldr	r1, [r5]
	ldr	r3, [r4, #292]
	str	r1, [r3, #32]
	str	r2, [r3, #36]
	b	.L87
.L95:
	ldr	r8, [r4, #292]
	movs	r1, #0
	mov	r0, r7
	movs	r2, #10
	bl	strtol(PLT)
	movs	r1, #32
	str	r0, [r8, #32]
	mov	r0, r7
	bl	strchr(PLT)
	cmp	r0, #0
	beq	.L81
	ldr	r7, [r4, #292]
	adds	r0, r0, #1
	movs	r1, #0
	movs	r2, #10
	bl	strtol(PLT)
	str	r0, [r7, #36]
	b	.L81
.L97:
	.align	2
.L96:
	.word	.LC6-(.LPIC9+4)
	.word	.LC7-(.LPIC10+4)
	.word	.LC8-(.LPIC11+4)
	.word	.LC9-(.LPIC12+4)
	.size	QCOMFB_split_display, .-QCOMFB_split_display
	.section	.text.QCOMFB_overlay,"ax",%progbits
	.align	2
	.global	QCOMFB_overlay
	.thumb
	.thumb_func
	.type	QCOMFB_overlay, %function
QCOMFB_overlay:
	@ args = 12, pretend = 0, frame = 728
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #732
	ldrb	r10, [sp, #776]	@ zero_extendqisi2
	mov	fp, #3
	mov	r5, fp
	mov	r8, r0
	mov	r9, r2
	add	r4, sp, #8
	movs	r7, #255
	mov	r6, #-1
	mov	fp, r1
	str	r3, [sp, #4]
.L110:
	ldr	r2, [fp, #292]
	mov	r0, r4
	movs	r1, #0
	ldrb	r2, [r2]	@ zero_extendqisi2
	cmp	r2, #1
	beq	.L132
	mov	r2, #716
	bl	memset(PLT)
	ldrb	r2, [fp, #253]	@ zero_extendqisi2
	cmp	r2, #2
	beq	.L106
	ldr	r2, [fp, #144]
	cmp	r2, #0
	beq	.L107
	movs	r2, #28
	str	r2, [r4, #8]
.L106:
	ldr	r3, [sp, #4]
	ldmia	r8, {r1, r2}
	ldr	r0, [sp, #768]
	str	r3, [r4, #20]
	ldr	r3, [sp, #772]
	str	r9, [r4, #12]
	str	r0, [r4, #28]
	str	r3, [r4, #36]
	str	r7, [r4, #52]
	str	r6, [r4, #60]
	str	r6, [r4, #68]
	str	r5, [r4, #44]
	stmia	r4, {r1, r2}
	str	r2, [r4, #24]
	str	r2, [r4, #40]
	cmp	r10, #0
	beq	.L108
	mov	r2, #256
	str	r2, [r4, #64]
.L108:
	movw	r1, #28039
	ldr	r0, [fp]
	movt	r1, 49868
	mov	r2, r4
	bl	ioctl(PLT)
	cbnz	r0, .L105
.L131:
	ldr	r0, [r4, #68]
	adds	r3, r0, #1
	bne	.L104
.L105:
	adds	r5, r5, #-1
	bcs	.L110
	mov	r0, r5
.L104:
	add	sp, sp, #732
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L132:
	mov	r2, #312
	bl	memset(PLT)
	ldrb	r2, [fp, #253]	@ zero_extendqisi2
	cmp	r2, #2
	beq	.L100
	ldr	r2, [fp, #144]
	cbz	r2, .L101
	movs	r2, #28
	str	r2, [r4, #8]
.L100:
	ldr	r3, [sp, #4]
	ldmia	r8, {r1, r2}
	ldr	r0, [sp, #768]
	str	r3, [r4, #20]
	ldr	r3, [sp, #772]
	str	r9, [r4, #12]
	str	r0, [r4, #28]
	str	r3, [r4, #36]
	str	r7, [r4, #52]
	str	r6, [r4, #56]
	str	r6, [r4, #68]
	str	r5, [r4, #44]
	stmia	r4, {r1, r2}
	str	r2, [r4, #24]
	str	r2, [r4, #40]
	cmp	r10, #0
	beq	.L102
	mov	r2, #256
	str	r2, [r4, #64]
.L102:
	movw	r1, #28039
	ldr	r0, [fp]
	movt	r1, 49464
	mov	r2, r4
	bl	ioctl(PLT)
	cmp	r0, #0
	bne	.L105
	b	.L131
.L107:
	movs	r2, #15
	str	r2, [r4, #8]
	b	.L106
.L101:
	movs	r2, #15
	str	r2, [r4, #8]
	b	.L100
	.size	QCOMFB_overlay, .-QCOMFB_overlay
	.section	.text.QCOMFB_allocate_overlays,"ax",%progbits
	.align	2
	.global	QCOMFB_allocate_overlays
	.thumb
	.thumb_func
	.type	QCOMFB_allocate_overlays, %function
QCOMFB_allocate_overlays:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	movs	r5, #0
	ldr	r4, [r0, #16]
	sub	sp, sp, #16
	mov	r2, r5
	mov	r8, r0
	ldr	r7, [r4, #292]
	mov	r1, r4
	ldr	r3, [r7, #32]
	str	r5, [sp]
	str	r5, [sp, #8]
	str	r3, [sp, #4]
	bl	QCOMFB_overlay(PLT)
	ldr	r6, [r4, #292]
	str	r0, [r7, #20]
	ldr	r3, [r6, #20]
	adds	r3, r3, #1
	beq	.L137
	ldrb	r3, [r6, #28]	@ zero_extendqisi2
	cbnz	r3, .L136
.L138:
	bl	libaroma_debug_output(PLT)
	mov	r5, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L143
	mov	r2, r0
	mov	r0, r5
.LPIC13:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r3, [r4, #292]
	ldr	r1, .L143+4
	ldr	r2, [r3, #20]
.LPIC14:
	add	r1, pc
	ldr	r3, [r3, #24]
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	movs	r0, #1
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L136:
	ldr	r3, [r6, #36]
	movs	r7, #1
	ldr	r2, [r6, #32]
	mov	r0, r8
	str	r5, [sp]
	mov	r1, r4
	str	r3, [sp, #4]
	str	r7, [sp, #8]
	bl	QCOMFB_overlay(PLT)
	ldr	r3, [r4, #292]
	str	r0, [r6, #24]
	ldr	r3, [r3, #24]
	adds	r3, r3, #1
	bne	.L138
.L137:
	movs	r0, #0
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L144:
	.align	2
.L143:
	.word	.LC8-(.LPIC13+4)
	.word	.LC10-(.LPIC14+4)
	.size	QCOMFB_allocate_overlays, .-QCOMFB_allocate_overlays
	.section	.text.QCOMFB_swap_buffer,"ax",%progbits
	.align	2
	.global	QCOMFB_swap_buffer
	.thumb
	.thumb_func
	.type	QCOMFB_swap_buffer, %function
QCOMFB_swap_buffer:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #16]
	ldr	r2, [r3, #292]
	ldrb	r1, [r2, #40]	@ zero_extendqisi2
	cbz	r1, .L146
	ldr	r1, [r2, #16]
	push	{r4}
	cbz	r1, .L152
	movs	r1, #0
.L147:
	ldr	r4, [r3, #248]
	ldr	r0, [r3, #240]
	str	r1, [r2, #16]
	mla	r1, r4, r1, r0
	ldr	r4, [sp], #4
	str	r1, [r3, #264]
	bx	lr
.L146:
	ldr	r0, [r3, #240]
	str	r1, [r2, #16]
	str	r0, [r3, #264]
	bx	lr
.L152:
	ldr	r1, [r0, #4]
	b	.L147
	.size	QCOMFB_swap_buffer, .-QCOMFB_swap_buffer
	.section	.text.QCOMFB_flush,"ax",%progbits
	.align	2
	.global	QCOMFB_flush
	.thumb
	.thumb_func
	.type	QCOMFB_flush, %function
QCOMFB_flush:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	ldr	r4, [r0, #16]
	bl	QCOMFB_swap_buffer(PLT)
	ldr	r2, [r4, #292]
	ldrb	r3, [r2, #348]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L169
	cmp	r3, #2
	beq	.L170
	cmp	r3, #3
	beq	.L171
	cmp	r3, #4
	beq	.L172
	cbz	r3, .L173
.L153:
	pop	{r3, r4, r5, pc}
.L173:
	movw	r1, #28068
	adds	r2, r2, #148
	movt	r1, 16552
	ldr	r0, [r4]
	bl	ioctl(PLT)
	cbnz	r0, .L174
	ldr	r3, [r4, #292]
	movs	r2, #1
	strb	r2, [r3, #348]
	pop	{r3, r4, r5, pc}
.L174:
	ldr	r2, [r4, #292]
	movw	r1, #28068
	movt	r1, 16568
	ldr	r0, [r4]
	adds	r2, r2, #148
	bl	ioctl(PLT)
	cmp	r0, #0
	bne	.L175
	ldr	r3, [r4, #292]
	movs	r2, #2
	strb	r2, [r3, #348]
	pop	{r3, r4, r5, pc}
.L172:
	movs	r3, #16
	add	r5, r4, #76
	str	r3, [r4, #160]
	mov	r2, r5
	ldr	r0, [r4]
	movw	r1, #17926
	bl	ioctl(PLT)
	cmp	r0, #0
	beq	.L153
	ldr	r0, [r4]
	mov	r2, r5
	movw	r1, #17921
	pop	{r3, r4, r5, lr}
	b	ioctl(PLT)
.L169:
	movw	r1, #28068
	ldr	r0, [r4]
	adds	r2, r2, #148
	movt	r1, 16552
	pop	{r3, r4, r5, lr}
	b	ioctl(PLT)
.L170:
	movw	r1, #28068
	ldr	r0, [r4]
	adds	r2, r2, #148
	movt	r1, 16568
	pop	{r3, r4, r5, lr}
	b	ioctl(PLT)
.L171:
	movw	r1, #28068
	ldr	r0, [r4]
	adds	r2, r2, #148
	movt	r1, 16584
	pop	{r3, r4, r5, lr}
	b	ioctl(PLT)
.L175:
	ldr	r2, [r4, #292]
	movw	r1, #28068
	movt	r1, 16584
	ldr	r0, [r4]
	adds	r2, r2, #148
	bl	ioctl(PLT)
	cbnz	r0, .L176
	ldr	r3, [r4, #292]
	movs	r2, #3
	strb	r2, [r3, #348]
	pop	{r3, r4, r5, pc}
.L176:
	movs	r3, #16
	add	r5, r4, #76
	str	r3, [r4, #160]
	mov	r2, r5
	ldr	r0, [r4]
	movw	r1, #17926
	bl	ioctl(PLT)
	cbz	r0, .L164
	mov	r2, r5
	ldr	r0, [r4]
	movw	r1, #17921
	bl	ioctl(PLT)
.L164:
	ldr	r3, [r4, #292]
	movs	r2, #4
	strb	r2, [r3, #348]
	pop	{r3, r4, r5, pc}
	.size	QCOMFB_flush, .-QCOMFB_flush
	.section	.text.QCOMFB_release,"ax",%progbits
	.align	2
	.global	QCOMFB_release
	.thumb
	.thumb_func
	.type	QCOMFB_release, %function
QCOMFB_release:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r5, r0
	cmp	r0, #0
	beq	.L177
	ldr	r4, [r0, #16]
	ldr	r2, [r4, #292]
	cmp	r2, #0
	beq	.L177
	ldr	r3, [r2, #20]
	adds	r3, r3, #1
	beq	.L179
	movw	r1, #28040
	adds	r2, r2, #20
	movt	r1, 16388
	ldr	r0, [r4]
	bl	ioctl(PLT)
	ldr	r2, [r4, #292]
.L179:
	ldr	r3, [r2, #24]
	adds	r3, r3, #1
	beq	.L180
	movw	r1, #28040
	adds	r2, r2, #24
	movt	r1, 16388
	ldr	r0, [r4]
	bl	ioctl(PLT)
.L180:
	mov	r0, r5
	bl	QCOMFB_flush(PLT)
	ldr	r0, [r4, #240]
	cbz	r0, .L181
	ldr	r1, [r4, #236]
	bl	munmap(PLT)
	movs	r3, #0
	str	r3, [r4, #240]
.L181:
	ldr	r2, [r4, #292]
	ldr	r0, [r2, #4]
	cmp	r0, #0
	blt	.L182
	movw	r1, #18689
	adds	r2, r2, #12
	movt	r1, 49156
	bl	ioctl(PLT)
	ldr	r2, [r4, #292]
.L182:
	ldr	r0, [r2, #8]
	cmp	r0, #0
	blt	.L183
	bl	close(PLT)
	ldr	r2, [r4, #292]
.L183:
	ldr	r0, [r2, #4]
	cmp	r0, #0
	blt	.L184
	bl	close(PLT)
	ldr	r2, [r4, #292]
.L184:
	mov	r0, r2
	bl	free(PLT)
	movs	r3, #0
	str	r3, [r4, #292]
.L177:
	pop	{r3, r4, r5, pc}
	.size	QCOMFB_release, .-QCOMFB_release
	.section	.text.LINUXFBDR_release,"ax",%progbits
	.align	2
	.global	LINUXFBDR_release
	.thumb
	.thumb_func
	.type	LINUXFBDR_release, %function
LINUXFBDR_release:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cbz	r0, .L218
	push	{r3, r4, r5, lr}
	mov	r5, r0
	ldr	r4, [r0, #16]
	cbz	r4, .L201
	ldr	r3, [r4, #292]
	cbz	r3, .L203
	bl	QCOMFB_release(PLT)
.L203:
	ldr	r0, [r4, #240]
	cbz	r0, .L204
	ldr	r1, [r4, #28]
	bl	munmap(PLT)
.L204:
	ldr	r0, [r4]
	bl	close(PLT)
	add	r0, r4, #272
	bl	omp_destroy_nest_lock(PLT)
	ldr	r0, [r5, #16]
	pop	{r3, r4, r5, lr}
	b	free(PLT)
.L218:
	bx	lr
.L201:
	pop	{r3, r4, r5, pc}
	.size	LINUXFBDR_release, .-LINUXFBDR_release
	.section	.text.QCOMFB_init,"ax",%progbits
	.align	2
	.global	QCOMFB_init
	.thumb
	.thumb_func
	.type	QCOMFB_init, %function
QCOMFB_init:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r5, r0
	sub	sp, sp, #40
	cbz	r0, .L222
	ldr	r4, [r0, #16]
	mov	r0, r4
	bl	QCOMFB_check_id(PLT)
	mov	r6, r0
	cbnz	r0, .L243
.L222:
	movs	r6, #0
.L221:
	mov	r0, r6
	add	sp, sp, #40
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L243:
	mov	r0, #352
	movs	r1, #1
	bl	calloc(PLT)
	str	r0, [r4, #292]
	cmp	r0, #0
	beq	.L222
	strb	r6, [r0]
	movs	r3, #1
	ldr	r2, [r4, #292]
	movw	r1, #4098
	ldr	r0, .L248
	movt	r1, 16
	strb	r3, [r2, #40]
.LPIC15:
	add	r0, pc
	strb	r3, [r5, #12]
	ldr	r6, [r4, #292]
	bl	open(PLT)
	ldr	r1, [r4, #292]
	str	r0, [r6, #4]
	ldr	r3, [r1, #4]
	cmp	r3, #0
	blt	.L244
	ldr	r2, [r5]
	str	r2, [r4, #248]
	ldrb	r3, [r1]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L245
	ldrb	r2, [r4, #100]	@ zero_extendqisi2
	mov	r0, r5
	ldr	r1, [r4, #144]
	strb	r2, [r4, #252]
	lsrs	r2, r2, #3
	strb	r2, [r4, #253]
	cmp	r1, #0
	beq	.L226
	movs	r1, #16
	movs	r2, #8
	bl	LINUXFBDR_setrgbpos(PLT)
	ldr	r2, [r4, #248]
	ldrb	r3, [r4, #253]	@ zero_extendqisi2
	ldr	r1, [r4, #292]
.L225:
	ldr	r6, [r5, #4]
	mul	ip, r3, r2
	ldrb	lr, [r1, #40]	@ zero_extendqisi2
	movs	r7, #0
	ldr	r1, [r5]
	movs	r0, #30
	str	r7, [sp, #28]
	mul	r6, r6, r2
	cmp	lr, r7
	ite	eq
	moveq	lr, #1
	movne	lr, #2
	subs	r2, r2, r1
	str	ip, [r4, #248]
	mul	r2, r3, r2
	mul	r3, r3, r6
	mov	r6, #35651584
	str	r2, [r4, #244]
	mul	r3, lr, r3
	str	r3, [r4, #236]
	str	r3, [sp, #16]
	bl	sysconf(PLT)
	ldr	r3, [r4, #292]
	mov	r1, #18688
	str	r0, [sp, #20]
	movt	r1, 49172
	add	r2, sp, #16
	ldr	r0, [r3, #4]
	str	r6, [sp, #24]
	bl	ioctl(PLT)
	cmp	r0, #0
	bne	.L246
	ldr	r0, [sp, #32]
	add	r2, sp, #40
	ldr	r3, [r4, #292]
	movw	r1, #18690
	movt	r1, 49160
	str	r0, [r2, #-32]!
	str	r0, [r3, #12]
	ldr	r0, [r3, #4]
	bl	ioctl(PLT)
	mov	r7, r0
	cmp	r0, #0
	bne	.L230
	ldr	r6, [sp, #12]
	movs	r2, #3
	ldr	lr, [r4, #292]
	movs	r3, #1
	ldr	r1, [r4, #236]
	str	r6, [lr, #8]
	stmia	sp, {r6, r7}
	bl	mmap(PLT)
	str	r0, [r4, #240]
	cmp	r0, #0
	beq	.L230
	mov	r0, r5
	bl	QCOMFB_split_display(PLT)
	ldr	r3, [r4, #292]
	mov	r2, #-1
	mov	r0, r5
	str	r2, [r3, #20]
	str	r2, [r3, #24]
	bl	QCOMFB_allocate_overlays(PLT)
	mov	r6, r0
	cmp	r0, #0
	beq	.L247
	ldr	r3, [r4, #292]
	mov	r1, r7
	movs	r2, #104
	mov	r8, #1
	mov	r6, r8
	strb	r7, [r3, #348]
	ldr	r0, [r4, #292]
	adds	r0, r0, #44
	bl	memset(PLT)
	ldr	r3, [r4, #292]
	mov	r1, r7
	movs	r2, #200
	ldr	lr, [r3, #8]
	add	r0, r3, #148
	str	r7, [r3, #60]
	str	r7, [r3, #48]
	str	lr, [r3, #56]
	str	lr, [r3, #52]
	bl	memset(PLT)
	ldr	r3, [r4, #292]
	mov	r0, r5
	str	r8, [r3, #148]
	str	r8, [r3, #152]
	bl	QCOMFB_flush(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r5, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L248+4
	mov	r2, r0
	mov	r0, r5
.LPIC18:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r3, [r4, #292]
	ldr	r1, .L248+8
	ldrb	r2, [r3]	@ zero_extendqisi2
.LPIC19:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	b	.L221
.L245:
	movs	r3, #16
	movs	r0, #2
	strb	r3, [r4, #252]
	mov	r3, r0
	strb	r0, [r4, #253]
	b	.L225
.L246:
	ldr	r3, [r4, #292]
	mov	r6, r7
	ldr	r0, [r3, #4]
	bl	close(PLT)
	ldr	r0, [r4, #292]
	bl	free(PLT)
	str	r7, [r4, #292]
	b	.L221
.L230:
	mov	r0, r5
	movs	r6, #0
	bl	QCOMFB_release(PLT)
	b	.L221
.L226:
	movs	r2, #8
	movs	r3, #16
	bl	LINUXFBDR_setrgbpos(PLT)
	ldr	r2, [r4, #248]
	ldrb	r3, [r4, #253]	@ zero_extendqisi2
	ldr	r1, [r4, #292]
	b	.L225
.L247:
	bl	libaroma_debug_output(PLT)
	mov	r4, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L248+12
	mov	r2, r0
	mov	r0, r4
.LPIC16:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L248+16
	movs	r2, #36
	movs	r1, #1
.LPIC17:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	mov	r0, r5
	bl	QCOMFB_release(PLT)
	b	.L221
.L244:
	mov	r0, r1
	movs	r6, #0
	bl	free(PLT)
	str	r6, [r4, #292]
	b	.L221
.L249:
	.align	2
.L248:
	.word	.LC11-(.LPIC15+4)
	.word	.LC8-(.LPIC18+4)
	.word	.LC13-(.LPIC19+4)
	.word	.LC8-(.LPIC16+4)
	.word	.LC12-(.LPIC17+4)
	.size	QCOMFB_init, .-QCOMFB_init
	.section	.text.QCOMFB_end_post,"ax",%progbits
	.align	2
	.global	QCOMFB_end_post
	.thumb
	.thumb_func
	.type	QCOMFB_end_post, %function
QCOMFB_end_post:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r5, r0
	cmp	r0, #0
	beq	.L256
	ldr	r4, [r0, #16]
	ldr	r3, [r4, #292]
	ldrb	r6, [r3, #40]	@ zero_extendqisi2
	cbnz	r6, .L261
	ldr	r7, [r3, #20]
	mov	r2, r3
	movw	r1, #28041
	str	r6, [r3, #48]
	ldr	r0, [r4]
	movt	r1, 16488
	str	r7, [r2, #44]!
	bl	ioctl(PLT)
	ldr	r3, [r4, #292]
	ldrb	r2, [r3, #28]	@ zero_extendqisi2
	cbnz	r2, .L262
.L254:
	mov	r0, r5
	bl	QCOMFB_flush(PLT)
	add	r0, r4, #272
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #1
	pop	{r4, r5, r6, r7, r8, pc}
.L261:
	ldr	r6, [r4, #248]
	mov	r2, r3
	ldr	r7, [r3, #16]
	movw	r1, #28041
	ldr	lr, [r3, #20]
	movt	r1, 16488
	ldr	r0, [r4]
	mul	r8, r6, r7
	str	r8, [r3, #48]
	str	lr, [r2, #44]!
	bl	ioctl(PLT)
	ldr	r3, [r4, #292]
	ldrb	r2, [r3, #28]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L254
	ldr	r7, [r3, #24]
	mov	r2, r3
	movw	r1, #28041
	str	r8, [r3, #48]
	ldr	r0, [r4]
	movt	r1, 16488
	str	r7, [r2, #44]!
	bl	ioctl(PLT)
	b	.L254
.L262:
	ldr	r7, [r3, #24]
	mov	r2, r3
	movw	r1, #28041
	str	r6, [r3, #48]
	ldr	r0, [r4]
	movt	r1, 16488
	str	r7, [r2, #44]!
	bl	ioctl(PLT)
	b	.L254
.L256:
	pop	{r4, r5, r6, r7, r8, pc}
	.size	QCOMFB_end_post, .-QCOMFB_end_post
	.section	.text.LINUXFBDR_swap_buffer,"ax",%progbits
	.align	2
	.global	LINUXFBDR_swap_buffer
	.thumb
	.thumb_func
	.type	LINUXFBDR_swap_buffer, %function
LINUXFBDR_swap_buffer:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4}
	ldr	r2, [r0, #96]
	ldr	r4, [r0, #52]
	ldr	r1, [r0, #240]
	ldrb	r3, [r0, #260]	@ zero_extendqisi2
	mla	r1, r4, r2, r1
	str	r1, [r0, #264]
	cbz	r3, .L264
	movs	r3, #0
	cbz	r2, .L268
.L264:
	str	r3, [r0, #96]
	ldr	r4, [sp], #4
	bx	lr
.L268:
	ldr	r3, [r0, #80]
	ldr	r4, [sp], #4
	str	r3, [r0, #96]
	bx	lr
	.size	LINUXFBDR_swap_buffer, .-LINUXFBDR_swap_buffer
	.section	.text.LINUXFBDR_wait_vsync,"ax",%progbits
	.align	2
	.global	LINUXFBDR_wait_vsync
	.thumb
	.thumb_func
	.type	LINUXFBDR_wait_vsync, %function
LINUXFBDR_wait_vsync:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	LINUXFBDR_wait_vsync, .-LINUXFBDR_wait_vsync
	.section	.text.LINUXFBDR_start_post,"ax",%progbits
	.align	2
	.global	LINUXFBDR_start_post
	.thumb
	.thumb_func
	.type	LINUXFBDR_start_post, %function
LINUXFBDR_start_post:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cbz	r0, .L274
	push	{r4, lr}
	ldr	r4, [r0, #16]
	add	r0, r4, #272
	bl	omp_set_nest_lock(PLT)
	mov	r0, r4
	bl	LINUXFBDR_wait_vsync(PLT)
	movs	r0, #1
	pop	{r4, pc}
.L274:
	bx	lr
	.size	LINUXFBDR_start_post, .-LINUXFBDR_start_post
	.section	.text.LINUXFBDR_flush,"ax",%progbits
	.align	2
	.global	LINUXFBDR_flush
	.thumb
	.thumb_func
	.type	LINUXFBDR_flush, %function
LINUXFBDR_flush:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cbz	r0, .L280
	push	{r3, r4, r5, lr}
	ldr	r4, [r0, #16]
	mov	r0, r4
	add	r5, r4, #76
	bl	LINUXFBDR_swap_buffer(PLT)
	movs	r3, #128
	mov	r2, r5
	str	r3, [r4, #160]
	movw	r1, #17926
	ldr	r0, [r4]
	bl	ioctl(PLT)
	cbnz	r0, .L281
	movs	r0, #1
	pop	{r3, r4, r5, pc}
.L281:
	ldr	r0, [r4]
	mov	r2, r5
	movw	r1, #17921
	bl	ioctl(PLT)
	movs	r0, #1
	pop	{r3, r4, r5, pc}
.L280:
	bx	lr
	.size	LINUXFBDR_flush, .-LINUXFBDR_flush
	.section	.text.LINUXFBDR_end_post,"ax",%progbits
	.align	2
	.global	LINUXFBDR_end_post
	.thumb
	.thumb_func
	.type	LINUXFBDR_end_post, %function
LINUXFBDR_end_post:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cbz	r0, .L284
	push	{r4, lr}
	ldr	r4, [r0, #16]
	bl	LINUXFBDR_flush(PLT)
	add	r0, r4, #272
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #1
	pop	{r4, pc}
.L284:
	bx	lr
	.size	LINUXFBDR_end_post, .-LINUXFBDR_end_post
	.section	.text.LINUXFBDR_init_features,"ax",%progbits
	.align	2
	.global	LINUXFBDR_init_features
	.thumb
	.thumb_func
	.type	LINUXFBDR_init_features, %function
LINUXFBDR_init_features:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r5, r0
	sub	sp, sp, #12
	cmp	r0, #0
	beq	.L287
	ldr	r4, [r0, #16]
	cbz	r4, .L287
	ldr	r1, [r4, #80]
	movs	r3, #0
	ldr	r2, [r4, #88]
	str	r3, [r4, #208]
	strb	r3, [r4, #260]
	lsls	r3, r1, #1
	cmp	r2, r3
	bcc	.L302
	movs	r3, #1
	add	r7, r4, #76
	mov	r2, r3
	add	r6, r4, #8
	strb	r3, [r4, #260]
.L293:
	movs	r3, #128
	mov	lr, #2
	strb	r2, [r5, #12]
	movw	r1, #17921
	str	r3, [r4, #160]
	mov	r2, r7
	str	lr, [r4, #204]
	ldr	r0, [r4]
	bl	ioctl(PLT)
	movw	r1, #17922
	mov	r2, r6
	ldr	r0, [r4]
	bl	ioctl(PLT)
	mov	r2, r7
	ldr	r0, [r4]
	mov	r1, #17920
	bl	ioctl(PLT)
	ldr	r3, [r4, #204]
	movs	r2, #0
	strb	r2, [r4, #288]
	cmp	r3, #2
	beq	.L287
	ldr	r1, .L304
	mov	r0, r6
	movs	r2, #6
.LPIC20:
	add	r1, pc
	bl	strncmp(PLT)
	cbz	r0, .L303
.L287:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L303:
	add	r2, sp, #8
	movs	r5, #1
	movw	r1, #20288
	str	r5, [r2, #-8]!
	movt	r1, 16388
	mov	r2, sp
	ldr	r0, [r4]
	bl	ioctl(PLT)
	cmp	r0, #0
	bne	.L287
	strb	r5, [r4, #288]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L302:
	mov	r6, r4
	movs	r1, #128
	ldr	r0, [r6], #8
	add	r7, r4, #76
	str	r3, [r4, #88]
	mov	r2, r7
	str	r1, [r4, #160]
	movw	r1, #17921
	bl	ioctl(PLT)
	mov	r2, r6
	movw	r1, #17922
	ldr	r0, [r4]
	bl	ioctl(PLT)
	mov	r2, r7
	ldr	r0, [r4]
	mov	r1, #17920
	bl	ioctl(PLT)
	ldr	r2, [r4, #80]
	ldr	r3, [r4, #88]
	cmp	r3, r2, lsl #1
	itet	cs
	movcs	r2, #1
	ldrbcc	r2, [r4, #260]	@ zero_extendqisi2
	strbcs	r2, [r4, #260]
	b	.L293
.L305:
	.align	2
.L304:
	.word	.LC14-(.LPIC20+4)
	.size	LINUXFBDR_init_features, .-LINUXFBDR_init_features
	.section	.text.LINUXFBDP_set_dpi,"ax",%progbits
	.align	2
	.global	LINUXFBDP_set_dpi
	.thumb
	.thumb_func
	.type	LINUXFBDP_set_dpi, %function
LINUXFBDP_set_dpi:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r4, r0
	fstmfdd	sp!, {d8}
	cmp	r0, #0
	beq	.L306
	ldr	r5, [r0, #16]
	movw	r2, #52429
	movt	r2, 52428
	fldd	d8, .L323
	ldr	r3, [r5, #80]
	ldr	r7, [r5, #76]
	cmp	r3, r7
	it	cs
	movcs	r3, r7
	umull	r1, r3, r2, r3
	lsrs	r3, r3, #7
	fmsr	s0, r3	@ int
	fsitod	d0, s0
	bl	trunc(PLT)
	fmuld	d0, d0, d8
	ldr	r3, [r5, #168]
	ftosizd	s15, d0
	fmrs	r6, s15	@ int
	cmp	r3, #0
	bne	.L321
.L315:
	mov	r3, r6
.L308:
	ldr	r7, .L323+24
	sub	r2, r3, #160
	ldr	r0, .L323+28
	cmp	r2, #800
	it	hi
	movhi	r3, r6
	str	r3, [r4, #44]
.LPIC22:
	add	r7, pc
.LPIC21:
	add	r0, pc
	bl	libaroma_stream_file(PLT)
	movs	r2, #1
	mov	r1, r0
	mov	r0, r7
	bl	libaroma_getprop(PLT)
	mov	r5, r0
	cmp	r0, #0
	beq	.L322
.L311:
	movs	r1, #0
	movs	r2, #10
	mov	r0, r5
	bl	strtol(PLT)
	mov	r6, r0
	mov	r0, r5
	bl	free(PLT)
	sub	r3, r6, #160
	cmp	r3, #820
	bhi	.L313
	bl	libaroma_debug_output(PLT)
	mov	r5, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L323+32
	mov	r2, r0
	mov	r0, r5
.LPIC25:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L323+36
	mov	r2, r6
.LPIC26:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	str	r6, [r4, #44]
.L306:
	fldmfdd	sp!, {d8}
	pop	{r3, r4, r5, r6, r7, pc}
.L321:
	ldr	r2, [r5, #164]
	cmp	r2, #0
	beq	.L315
	fmsr	s15, r3	@ int
	fuitod	d19, s15
	fldd	d17, .L323+8
	fmsr	s15, r7	@ int
	fuitod	d18, s15
	fldd	d0, .L323+16
	fmuld	d17, d19, d17
	fdivd	d17, d18, d17
	fmuld	d0, d17, d0
	bl	round(PLT)
	fmuld	d0, d0, d8
	ftosizd	s15, d0
	fmrs	r3, s15	@ int
	b	.L308
.L313:
	bl	libaroma_debug_output(PLT)
	mov	r4, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L323+40
	mov	r2, r0
	mov	r0, r4
.LPIC27:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L323+44
	mov	r2, r6
.LPIC28:
	add	r1, pc
	bl	fprintf(PLT)
.L320:
	bl	libaroma_debug_output(PLT)
	fldmfdd	sp!, {d8}
	mov	r1, r0
	movs	r0, #10
	pop	{r3, r4, r5, r6, r7, lr}
	b	fputc(PLT)
.L322:
	ldr	r0, .L323+48
.LPIC23:
	add	r0, pc
	bl	libaroma_stream_file(PLT)
	movs	r2, #1
	mov	r1, r0
	mov	r0, r7
	bl	libaroma_getprop(PLT)
	mov	r5, r0
	cmp	r0, #0
	bne	.L311
	bl	libaroma_debug_output(PLT)
	mov	r4, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L323+52
	mov	r2, r0
	mov	r0, r4
.LPIC29:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L323+56
	movs	r1, #1
	movs	r2, #43
.LPIC30:
	add	r0, pc
	bl	fwrite(PLT)
	b	.L320
.L324:
	.align	3
.L323:
	.word	0
	.word	1079246848
	.word	-52226802
	.word	1067722829
	.word	-1717986918
	.word	1065982361
	.word	.LC16-(.LPIC22+4)
	.word	.LC15-(.LPIC21+4)
	.word	.LC8-(.LPIC25+4)
	.word	.LC18-(.LPIC26+4)
	.word	.LC8-(.LPIC27+4)
	.word	.LC19-(.LPIC28+4)
	.word	.LC17-(.LPIC23+4)
	.word	.LC8-(.LPIC29+4)
	.word	.LC20-(.LPIC30+4)
	.size	LINUXFBDP_set_dpi, .-LINUXFBDP_set_dpi
	.section	.text.LINUXFBDR_dump,"ax",%progbits
	.align	2
	.global	LINUXFBDR_dump
	.thumb
	.thumb_func
	.type	LINUXFBDR_dump, %function
LINUXFBDR_dump:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	sub	sp, sp, #8
	ldr	r5, .L327
	mov	r4, r0
	bl	libaroma_debug_output(PLT)
.LPIC31:
	add	r5, pc
	mov	r6, r0
	bl	libaroma_debug_tag(PLT)
	mov	r1, r5
	mov	r2, r0
	mov	r0, r6
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L327+4
	movs	r2, #25
	movs	r1, #1
.LPIC32:
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
	mov	r3, r0
	ldr	r0, .L327+8
	movs	r2, #3
	movs	r1, #1
.LPIC34:
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
	ldr	r1, .L327+12
	ldr	r2, [r4, #76]
.LPIC36:
	add	r1, pc
	bl	fprintf(PLT)
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
	ldr	r1, .L327+16
	ldr	r2, [r4, #80]
.LPIC38:
	add	r1, pc
	bl	fprintf(PLT)
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
	ldr	r1, .L327+20
	ldr	r2, [r4, #100]
.LPIC40:
	add	r1, pc
	bl	fprintf(PLT)
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
	add	r2, r4, #108
	ldr	r1, .L327+24
	ldmia	r2, {r2, r3, r6}
.LPIC42:
	add	r1, pc
	str	r6, [sp]
	bl	fprintf(PLT)
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
	ldr	r6, [r4, #116]
	ldr	r1, .L327+28
	ldr	r3, [r4, #124]
	ldr	r2, [r4, #120]
.LPIC44:
	add	r1, pc
	str	r6, [sp]
	bl	fprintf(PLT)
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
	ldr	r6, [r4, #116]
	ldr	r1, .L327+32
	ldr	r3, [r4, #136]
	ldr	r2, [r4, #132]
.LPIC46:
	add	r1, pc
	str	r6, [sp]
	bl	fprintf(PLT)
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
	mov	r3, r0
	ldr	r0, .L327+36
	movs	r2, #3
	movs	r1, #1
.LPIC48:
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
	ldr	r1, .L327+40
	add	r2, r4, #8
.LPIC50:
	add	r1, pc
	bl	fprintf(PLT)
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
	ldr	r1, .L327+44
	ldr	r2, [r4, #28]
.LPIC52:
	add	r1, pc
	bl	fprintf(PLT)
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
	ldr	r1, .L327+48
	ldr	r2, [r4, #52]
.LPIC54:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	b	fputc(PLT)
.L328:
	.align	2
.L327:
	.word	.LC8-(.LPIC31+4)
	.word	.LC21-(.LPIC32+4)
	.word	.LC22-(.LPIC34+4)
	.word	.LC23-(.LPIC36+4)
	.word	.LC24-(.LPIC38+4)
	.word	.LC25-(.LPIC40+4)
	.word	.LC26-(.LPIC42+4)
	.word	.LC27-(.LPIC44+4)
	.word	.LC28-(.LPIC46+4)
	.word	.LC29-(.LPIC48+4)
	.word	.LC30-(.LPIC50+4)
	.word	.LC31-(.LPIC52+4)
	.word	.LC32-(.LPIC54+4)
	.size	LINUXFBDR_dump, .-LINUXFBDR_dump
	.section	.text.LINUXFBDR_init,"ax",%progbits
	.align	2
	.global	LINUXFBDR_init
	.thumb
	.thumb_func
	.type	LINUXFBDR_init, %function
LINUXFBDR_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	movs	r1, #1
	ldr	r6, .L346
	sub	sp, sp, #8
	mov	r5, r0
	mov	r0, #304
	bl	calloc(PLT)
.LPIC59:
	add	r6, pc
	mov	r4, r0
	cmp	r0, #0
	beq	.L341
	ldr	r3, .L346+4
	add	r0, r0, #272
	str	r4, [r5, #16]
	ldr	r3, [r6, r3]
	str	r3, [r5, #20]
	bl	omp_init_nest_lock(PLT)
	ldr	r0, .L346+8
	movs	r1, #2
	movs	r2, #0
.LPIC60:
	add	r0, pc
	bl	open(PLT)
	cmp	r0, #0
	str	r0, [r4]
	ble	.L342
.L332:
	movw	r1, #17922
	add	r2, r4, #8
	bl	ioctl(PLT)
	mov	r2, r4
	mov	r1, #17920
	ldr	r0, [r2], #76
	bl	ioctl(PLT)
	mov	r0, r4
	bl	LINUXFBDR_dump(PLT)
	ldr	r3, [r4, #76]
	mov	r0, r5
	ldr	r2, [r4, #80]
	str	r3, [r5]
	str	r2, [r5, #4]
	mul	r3, r2, r3
	str	r3, [r5, #8]
	bl	QCOMFB_init(PLT)
	cbz	r0, .L334
	ldr	r3, .L346+12
	movs	r2, #0
	ldr	r0, .L346+16
	ldr	r1, .L346+20
	ldr	r3, [r6, r3]
	str	r3, [r5, #32]
	ldr	r3, [r6, r0]
	str	r3, [r5, #40]
	ldr	r3, [r6, r1]
	str	r2, [r5, #24]
	str	r3, [r5, #36]
	bl	libaroma_debug_output(PLT)
	mov	r4, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L346+24
	mov	r2, r0
	mov	r0, r4
.LPIC66:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L346+28
	movs	r1, #1
	movs	r2, #29
.LPIC67:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
.L335:
	ldr	r3, .L346+32
	mov	r0, r5
	ldr	r3, [r6, r3]
	str	r3, [r5, #28]
	bl	LINUXFBDP_set_dpi(PLT)
	movs	r0, #1
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L334:
	bl	libaroma_debug_output(PLT)
	mov	r7, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L346+36
	mov	r2, r0
	mov	r0, r7
.LPIC68:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L346+40
	movs	r1, #1
	movs	r2, #33
.LPIC69:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	ldr	r0, [r4, #100]
	cmp	r0, #16
	it	ne
	cmpne	r0, #32
	ite	ne
	movne	r8, #1
	moveq	r8, #0
	bne	.L343
	mov	r0, r5
	bl	LINUXFBDR_init_features(PLT)
	ldr	r3, [r4, #84]
	ldr	r7, [r4, #88]
	ldrb	r2, [r4, #100]	@ zero_extendqisi2
	ldr	r1, [r4, #28]
	ldr	r0, [r4, #52]
	mul	r7, r3, r7
	strb	r2, [r4, #252]
	lsrs	r2, r2, #3
	str	r0, [r4, #248]
	strb	r2, [r4, #253]
	mul	r3, r2, r7
	cmp	r3, r1
	str	r3, [r4, #236]
	bls	.L337
	bl	libaroma_debug_output(PLT)
	mov	r5, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L346+44
	mov	r2, r0
	mov	r0, r5
.LPIC74:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L346+48
	ldr	r2, [r4, #28]
	ldr	r3, [r4, #236]
.LPIC75:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L346+52
	ldr	r2, .L346+56
.LPIC76:
	add	r1, pc
.LPIC77:
	add	r2, pc
	bl	fprintf(PLT)
.L333:
	mov	r0, r4
	bl	free(PLT)
	movs	r0, #0
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L343:
	bl	libaroma_debug_output(PLT)
	mov	r5, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L346+60
	mov	r2, r0
	mov	r0, r5
.LPIC70:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L346+64
	ldr	r2, [r4, #100]
.LPIC71:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L346+68
	ldr	r2, .L346+72
.LPIC72:
	add	r1, pc
.LPIC73:
	add	r2, pc
	bl	fprintf(PLT)
	b	.L333
.L342:
	ldr	r0, .L346+76
	movs	r1, #2
	movs	r2, #0
.LPIC61:
	add	r0, pc
	bl	open(PLT)
	cmp	r0, #0
	str	r0, [r4]
	bgt	.L332
	bl	libaroma_debug_output(PLT)
	mov	r5, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L346+80
	mov	r2, r0
	mov	r0, r5
.LPIC62:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L346+84
	movs	r1, #1
	movs	r2, #31
.LPIC63:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L346+88
	ldr	r2, .L346+92
.LPIC64:
	add	r1, pc
.LPIC65:
	add	r2, pc
	bl	fprintf(PLT)
	b	.L333
.L341:
	bl	libaroma_debug_output(PLT)
	mov	r5, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L346+96
	mov	r2, r0
	mov	r0, r5
.LPIC55:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L346+100
	movs	r1, #1
	movs	r2, #45
.LPIC56:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L346+104
	ldr	r2, .L346+108
.LPIC57:
	add	r1, pc
.LPIC58:
	add	r2, pc
	bl	fprintf(PLT)
	mov	r0, r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L337:
	ldr	r7, [r4]
	mov	r0, r8
	movs	r2, #3
	movs	r3, #1
	stmia	sp, {r7, r8}
	bl	mmap(PLT)
	str	r0, [r4, #240]
	cbz	r0, .L344
	mov	r0, r5
	bl	LINUXFBDR_flush(PLT)
	ldrb	r3, [r4, #253]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L345
	movs	r3, #1
	mov	r0, r5
	strb	r3, [r4, #4]
	bl	LINUXFBDR_init_32bit(PLT)
	b	.L335
.L345:
	strb	r8, [r4, #4]
	mov	r0, r5
	bl	LINUXFBDR_init_16bit(PLT)
	b	.L335
.L344:
	bl	libaroma_debug_output(PLT)
	mov	r5, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L346+112
	mov	r2, r0
	mov	r0, r5
.LPIC78:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L346+116
	movs	r1, #1
	movs	r2, #39
.LPIC79:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L346+120
	ldr	r2, .L346+124
.LPIC80:
	add	r1, pc
.LPIC81:
	add	r2, pc
	bl	fprintf(PLT)
	b	.L333
.L347:
	.align	2
.L346:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC59+4)
	.word	LINUXFBDR_release(GOT)
	.word	.LC37-(.LPIC60+4)
	.word	QCOMFB_start_post(GOT)
	.word	QCOMFB_end_post(GOT)
	.word	QCOMFB_post(GOT)
	.word	.LC8-(.LPIC66+4)
	.word	.LC40-(.LPIC67+4)
	.word	LINUXFBDR_config(GOT)
	.word	.LC8-(.LPIC68+4)
	.word	.LC41-(.LPIC69+4)
	.word	.LC33-(.LPIC74+4)
	.word	.LC43-(.LPIC75+4)
	.word	.LC35-(.LPIC76+4)
	.word	.LC36-(.LPIC77+4)
	.word	.LC33-(.LPIC70+4)
	.word	.LC42-(.LPIC71+4)
	.word	.LC35-(.LPIC72+4)
	.word	.LC36-(.LPIC73+4)
	.word	.LC38-(.LPIC61+4)
	.word	.LC33-(.LPIC62+4)
	.word	.LC39-(.LPIC63+4)
	.word	.LC35-(.LPIC64+4)
	.word	.LC36-(.LPIC65+4)
	.word	.LC33-(.LPIC55+4)
	.word	.LC34-(.LPIC56+4)
	.word	.LC35-(.LPIC57+4)
	.word	.LC36-(.LPIC58+4)
	.word	.LC33-(.LPIC78+4)
	.word	.LC44-(.LPIC79+4)
	.word	.LC35-(.LPIC80+4)
	.word	.LC36-(.LPIC81+4)
	.size	LINUXFBDR_init, .-LINUXFBDR_init
	.section	.text.libaroma_fb_driver_init,"ax",%progbits
	.align	2
	.global	libaroma_fb_driver_init
	.thumb
	.thumb_func
	.type	libaroma_fb_driver_init, %function
libaroma_fb_driver_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	LINUXFBDR_init(PLT)
	.size	libaroma_fb_driver_init, .-libaroma_fb_driver_init
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"pointer\000"
.LC1:
	.ascii	"N/%s: \000"
	.space	1
.LC2:
	.ascii	"LINUXFBDR Init 16bit Colorspace\000"
.LC3:
	.ascii	"LINUXFBDR Init 32bit Colorspace\000"
.LC4:
	.ascii	"msmfb\000"
	.space	2
.LC5:
	.ascii	"mdssfb\000"
	.space	1
.LC6:
	.ascii	"/sys/class/graphics/fb0/msm_fb_split\000"
	.space	3
.LC7:
	.ascii	"r\000"
	.space	2
.LC8:
	.ascii	"I/%s: \000"
	.space	1
.LC9:
	.ascii	"QCOMFB_split_display=%i, left=%i, right=%i\000"
	.space	1
.LC10:
	.ascii	"QCOMFB_allocate_overlays successfull ID=#%i,#%i\000"
.LC11:
	.ascii	"/dev/ion\000"
	.space	3
.LC12:
	.ascii	"QCOMFB_init cannot allocate overlays\000"
	.space	3
.LC13:
	.ascii	"QCOMFB_init qcom overlay driver successfull (Type:%"
	.ascii	"i)\000"
	.space	2
.LC14:
	.ascii	"omapfb\000"
	.space	1
.LC15:
	.ascii	"/default.prop\000"
	.space	2
.LC16:
	.ascii	"ro.sf.lcd_density\000"
	.space	2
.LC17:
	.ascii	"/system/build.prop\000"
	.space	1
.LC18:
	.ascii	"android getprop ro.sf.lcd_density: %i - OK\000"
	.space	1
.LC19:
	.ascii	"android getprop ro.sf.lcd_density: %i - INVALID\000"
.LC20:
	.ascii	"android getprop ro.sf.lcd_density not found\000"
.LC21:
	.ascii	"FRAMEBUFFER INFORMATIONS:\000"
	.space	2
.LC22:
	.ascii	"VAR\000"
.LC23:
	.ascii	" xres           : %i\000"
	.space	3
.LC24:
	.ascii	" yres           : %i\000"
	.space	3
.LC25:
	.ascii	" bits_per_pixel : %i\000"
	.space	3
.LC26:
	.ascii	" red            : %i, %i, %i\000"
	.space	3
.LC27:
	.ascii	" green          : %i, %i, %i\000"
	.space	3
.LC28:
	.ascii	" blue           : %i, %i, %i\000"
	.space	3
.LC29:
	.ascii	"FIX\000"
.LC30:
	.ascii	" id             : %s\000"
	.space	3
.LC31:
	.ascii	" smem_len       : %i\000"
	.space	3
.LC32:
	.ascii	" line_length    : %i\000"
	.space	3
.LC33:
	.ascii	"E/%s: \000"
	.space	1
.LC34:
	.ascii	"LINUXFBDR calloc internal data - memory error\000"
	.space	2
.LC35:
	.ascii	"%s\012\000"
.LC36:
	.ascii	"\000"
	.space	3
.LC37:
	.ascii	"/dev/graphics/fb0\000"
	.space	2
.LC38:
	.ascii	"/dev/fb0\000"
	.space	3
.LC39:
	.ascii	"LINUXFBDR no framebuffer device\000"
.LC40:
	.ascii	"using qcom framebuffer driver\000"
	.space	2
.LC41:
	.ascii	"not using qcom framebuffer driver\000"
	.space	2
.LC42:
	.ascii	"LINUXFBDR bits_per_pixel=%i not supported\000"
	.space	2
.LC43:
	.ascii	"LINUXFBDR smem_len(%i) < fb_sz(%i)\000"
	.space	1
.LC44:
	.ascii	"LINUXFBDR mmap framebuffer memory error\000"
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
