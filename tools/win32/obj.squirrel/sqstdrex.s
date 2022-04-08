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
	.file	"sqstdrex.cpp"
	.section	.text._ZL17sqstd_rex_newnodeP5SQRexi,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL17sqstd_rex_newnodeP5SQRexi, %function
_ZL17sqstd_rex_newnodeP5SQRexi:
	.fnstart
.LFB2:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #36
	sub	sp, sp, #36
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	str	r3, [r7, #8]
	mov	r3, #-1
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	str	r3, [r7, #20]
	ldr	r3, [r7]
	cmp	r3, #258
	bne	.L2
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	adds	r1, r3, #1
	ldr	r2, [r7, #4]
	str	r1, [r2, #32]
	str	r3, [r7, #16]
.L2:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	adds	r3, r3, #1
	cmp	r2, r3
	bge	.L3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	lsls	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #20]
	ldr	r3, [r7, #28]
	lsls	r2, r3, #4
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	lsls	r3, r3, #4
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	sq_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #20]
.L3:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	adds	r0, r3, #1
	ldr	r1, [r7, #4]
	str	r0, [r1, #28]
	lsls	r3, r3, #4
	add	r3, r3, r2
	mov	r4, r3
	add	r3, r7, #8
	ldmia	r3, {r0, r1, r2, r3}
	stmia	r4, {r0, r1, r2, r3}
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	subs	r3, r3, #1
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZL17sqstd_rex_newnodeP5SQRexi, .-_ZL17sqstd_rex_newnodeP5SQRexi
	.section	.text._ZL15sqstd_rex_errorP5SQRexPKc,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL15sqstd_rex_errorP5SQRexPKc, %function
_ZL15sqstd_rex_errorP5SQRexPKc:
	.fnstart
.LFB3:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L6
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	ldr	r2, [r7]
	str	r2, [r3]
.L6:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	mov	r0, r3
	mov	r1, #-1
	bl	longjmp(PLT)
	.cantunwind
	.fnend
	.size	_ZL15sqstd_rex_errorP5SQRexPKc, .-_ZL15sqstd_rex_errorP5SQRexPKc
	.section	.rodata
	.align	2
.LC0:
	.ascii	"expected paren\000"
	.section	.text._ZL16sqstd_rex_expectP5SQRexi,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL16sqstd_rex_expectP5SQRexi, %function
_ZL16sqstd_rex_expectP5SQRexi:
	.fnstart
.LFB4:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7]
	cmp	r2, r3
	beq	.L8
	ldr	r0, [r7, #4]
	ldr	r3, .L9
.LPIC0:
	add	r3, pc
	mov	r1, r3
	bl	_ZL15sqstd_rex_errorP5SQRexPKc(PLT)
.L8:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L10:
	.align	2
.L9:
	.word	.LC0-(.LPIC0+4)
	.cantunwind
	.fnend
	.size	_ZL16sqstd_rex_expectP5SQRexi, .-_ZL16sqstd_rex_expectP5SQRexi
	.section	.rodata
	.align	2
.LC1:
	.ascii	"letter expected\000"
	.section	.text._ZL20sqstd_rex_escapecharP5SQRex,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL20sqstd_rex_escapecharP5SQRex, %function
_ZL20sqstd_rex_escapecharP5SQRex:
	.fnstart
.LFB5:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #92
	bne	.L12
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #102
	cmp	r3, #16
	bhi	.L13
	adr	r1, .L15
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L15:
	.word	.L14+1-.L15
	.word	.L13+1-.L15
	.word	.L13+1-.L15
	.word	.L13+1-.L15
	.word	.L13+1-.L15
	.word	.L13+1-.L15
	.word	.L13+1-.L15
	.word	.L13+1-.L15
	.word	.L16+1-.L15
	.word	.L13+1-.L15
	.word	.L13+1-.L15
	.word	.L13+1-.L15
	.word	.L17+1-.L15
	.word	.L13+1-.L15
	.word	.L18+1-.L15
	.word	.L13+1-.L15
	.word	.L19+1-.L15
.L19:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	movs	r3, #11
	b	.L20
.L16:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	movs	r3, #10
	b	.L20
.L18:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	movs	r3, #9
	b	.L20
.L17:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	movs	r3, #13
	b	.L20
.L14:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	movs	r3, #12
	b	.L20
.L13:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r1, r3, #1
	ldr	r2, [r7, #4]
	str	r1, [r2, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	b	.L20
.L12:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	isprint(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L21
	ldr	r0, [r7, #4]
	ldr	r3, .L22
.LPIC1:
	add	r3, pc
	mov	r1, r3
	bl	_ZL15sqstd_rex_errorP5SQRexPKc(PLT)
.L21:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r1, r3, #1
	ldr	r2, [r7, #4]
	str	r1, [r2, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
.L20:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L23:
	.align	2
.L22:
	.word	.LC1-(.LPIC1+4)
	.cantunwind
	.fnend
	.size	_ZL20sqstd_rex_escapecharP5SQRex, .-_ZL20sqstd_rex_escapecharP5SQRex
	.section	.text._ZL19sqstd_rex_charclassP5SQRexi,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL19sqstd_rex_charclassP5SQRexi, %function
_ZL19sqstd_rex_charclassP5SQRexi:
	.fnstart
.LFB6:
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
	ldr	r0, [r7, #4]
	mov	r1, #262
	bl	_ZL17sqstd_rex_newnodeP5SQRexi(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r2, [r7]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL19sqstd_rex_charclassP5SQRexi, .-_ZL19sqstd_rex_charclassP5SQRexi
	.section	.text._ZL18sqstd_rex_charnodeP5SQRexj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL18sqstd_rex_charnodeP5SQRexj, %function
_ZL18sqstd_rex_charnodeP5SQRexj:
	.fnstart
.LFB7:
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
	ldr	r3, [r3, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #92
	bne	.L27
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #65
	cmp	r3, #55
	bhi	.L28
	adr	r1, .L30
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L30:
	.word	.L29+1-.L30
	.word	.L31+1-.L30
	.word	.L29+1-.L30
	.word	.L29+1-.L30
	.word	.L28+1-.L30
	.word	.L28+1-.L30
	.word	.L28+1-.L30
	.word	.L28+1-.L30
	.word	.L28+1-.L30
	.word	.L28+1-.L30
	.word	.L28+1-.L30
	.word	.L28+1-.L30
	.word	.L28+1-.L30
	.word	.L28+1-.L30
	.word	.L28+1-.L30
	.word	.L29+1-.L30
	.word	.L28+1-.L30
	.word	.L28+1-.L30
	.word	.L29+1-.L30
	.word	.L28+1-.L30
	.word	.L28+1-.L30
	.word	.L28+1-.L30
	.word	.L29+1-.L30
	.word	.L29+1-.L30
	.word	.L28+1-.L30
	.word	.L28+1-.L30
	.word	.L28+1-.L30
	.word	.L28+1-.L30
	.word	.L28+1-.L30
	.word	.L28+1-.L30
	.word	.L28+1-.L30
	.word	.L28+1-.L30
	.word	.L29+1-.L30
	.word	.L31+1-.L30
	.word	.L29+1-.L30
	.word	.L29+1-.L30
	.word	.L28+1-.L30
	.word	.L32+1-.L30
	.word	.L28+1-.L30
	.word	.L28+1-.L30
	.word	.L28+1-.L30
	.word	.L28+1-.L30
	.word	.L28+1-.L30
	.word	.L29+1-.L30
	.word	.L28+1-.L30
	.word	.L33+1-.L30
	.word	.L28+1-.L30
	.word	.L29+1-.L30
	.word	.L28+1-.L30
	.word	.L34+1-.L30
	.word	.L29+1-.L30
	.word	.L35+1-.L30
	.word	.L29+1-.L30
	.word	.L36+1-.L30
	.word	.L29+1-.L30
	.word	.L29+1-.L30
.L33:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r0, [r7, #4]
	movs	r1, #10
	bl	_ZL17sqstd_rex_newnodeP5SQRexi(PLT)
	mov	r3, r0
	b	.L37
.L35:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r0, [r7, #4]
	movs	r1, #9
	bl	_ZL17sqstd_rex_newnodeP5SQRexi(PLT)
	mov	r3, r0
	b	.L37
.L34:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r0, [r7, #4]
	movs	r1, #13
	bl	_ZL17sqstd_rex_newnodeP5SQRexi(PLT)
	mov	r3, r0
	b	.L37
.L32:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r0, [r7, #4]
	movs	r1, #12
	bl	_ZL17sqstd_rex_newnodeP5SQRexi(PLT)
	mov	r3, r0
	b	.L37
.L36:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r0, [r7, #4]
	movs	r1, #11
	bl	_ZL17sqstd_rex_newnodeP5SQRexi(PLT)
	mov	r3, r0
	b	.L37
.L29:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldrb	r3, [r3]
	strb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZL19sqstd_rex_charclassP5SQRexi(PLT)
	mov	r3, r0
	b	.L37
.L31:
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L28
	ldr	r0, [r7, #4]
	mov	r1, #268
	bl	_ZL17sqstd_rex_newnodeP5SQRexi(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #8]
	ldrb	r2, [r2]	@ zero_extendqisi2
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7, #8]
	b	.L37
.L28:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldrb	r3, [r3]
	strb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZL17sqstd_rex_newnodeP5SQRexi(PLT)
	mov	r3, r0
	b	.L37
.L27:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	isprint(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L38
	ldr	r0, [r7, #4]
	ldr	r3, .L39
.LPIC2:
	add	r3, pc
	mov	r1, r3
	bl	_ZL15sqstd_rex_errorP5SQRexPKc(PLT)
.L38:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldrb	r3, [r3]
	strb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZL17sqstd_rex_newnodeP5SQRexi(PLT)
	mov	r3, r0
.L37:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L40:
	.align	2
.L39:
	.word	.LC1-(.LPIC2+4)
	.fnend
	.size	_ZL18sqstd_rex_charnodeP5SQRexj, .-_ZL18sqstd_rex_charnodeP5SQRexj
	.section	.rodata
	.align	2
.LC2:
	.ascii	"empty class\000"
	.align	2
.LC3:
	.ascii	"unfinished range\000"
	.align	2
.LC4:
	.ascii	"invalid range\000"
	.align	2
.LC5:
	.ascii	"cannot use character classes in ranges\000"
	.section	.text._ZL15sqstd_rex_classP5SQRex,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL15sqstd_rex_classP5SQRex, %function
_ZL15sqstd_rex_classP5SQRex:
	.fnstart
.LFB8:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #40
	sub	sp, sp, #40
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, #-1
	str	r3, [r7, #36]
	mov	r3, #-1
	str	r3, [r7, #32]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #94
	bne	.L42
	ldr	r0, [r7, #4]
	movw	r1, #263
	bl	_ZL17sqstd_rex_newnodeP5SQRexi(PLT)
	mov	r3, r0
	str	r3, [r7, #36]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	b	.L43
.L42:
	ldr	r0, [r7, #4]
	movw	r1, #261
	bl	_ZL17sqstd_rex_newnodeP5SQRexi(PLT)
	mov	r3, r0
	str	r3, [r7, #36]
.L43:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #93
	bne	.L44
	ldr	r0, [r7, #4]
	ldr	r3, .L55
.LPIC3:
	add	r3, pc
	mov	r1, r3
	bl	_ZL15sqstd_rex_errorP5SQRexPKc(PLT)
.L44:
	ldr	r3, [r7, #36]
	str	r3, [r7, #28]
	b	.L45
.L52:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #45
	bne	.L46
	ldr	r3, [r7, #32]
	cmp	r3, #-1
	beq	.L46
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r1, r3, #1
	ldr	r2, [r7, #4]
	str	r1, [r2, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #93
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L47
	ldr	r0, [r7, #4]
	ldr	r3, .L55+4
.LPIC4:
	add	r3, pc
	mov	r1, r3
	bl	_ZL15sqstd_rex_errorP5SQRexPKc(PLT)
.L47:
	ldr	r0, [r7, #4]
	mov	r1, #264
	bl	_ZL17sqstd_rex_newnodeP5SQRexi(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #32]
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	ble	.L48
	ldr	r0, [r7, #4]
	ldr	r3, .L55+8
.LPIC5:
	add	r3, pc
	mov	r1, r3
	bl	_ZL15sqstd_rex_errorP5SQRexPKc(PLT)
.L48:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #32]
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r3, [r3]
	cmp	r3, #262
	bne	.L49
	ldr	r0, [r7, #4]
	ldr	r3, .L55+12
.LPIC6:
	add	r3, pc
	mov	r1, r3
	bl	_ZL15sqstd_rex_errorP5SQRexPKc(PLT)
.L49:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #24]
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r2, [r7, #4]
	ldr	r1, [r2, #20]
	ldr	r2, [r7, #32]
	lsls	r2, r2, #4
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3, #4]
	ldr	r0, [r7, #4]
	bl	_ZL20sqstd_rex_escapecharP5SQRex(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #24]
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r2, [r7, #20]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #28]
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r2, [r7, #24]
	str	r2, [r3, #12]
	ldr	r3, [r7, #24]
	str	r3, [r7, #28]
	mov	r3, #-1
	str	r3, [r7, #32]
	b	.L45
.L46:
	ldr	r3, [r7, #32]
	cmp	r3, #-1
	beq	.L50
	ldr	r3, [r7, #32]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #28]
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r2, [r7, #16]
	str	r2, [r3, #12]
	ldr	r3, [r7, #16]
	str	r3, [r7, #28]
	ldr	r0, [r7, #4]
	movs	r1, #1
	bl	_ZL18sqstd_rex_charnodeP5SQRexj(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	b	.L45
.L50:
	ldr	r0, [r7, #4]
	movs	r1, #1
	bl	_ZL18sqstd_rex_charnodeP5SQRexj(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
.L45:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #93
	beq	.L51
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L52
.L51:
	ldr	r3, [r7, #32]
	cmp	r3, #-1
	beq	.L53
	ldr	r3, [r7, #32]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #28]
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r2, [r7, #12]
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
	str	r3, [r7, #28]
	mov	r3, #-1
	str	r3, [r7, #32]
.L53:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #36]
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r2, [r7, #4]
	ldr	r1, [r2, #20]
	ldr	r2, [r7, #36]
	lsls	r2, r2, #4
	add	r2, r2, r1
	ldr	r2, [r2, #12]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #36]
	lsls	r3, r3, #4
	add	r3, r3, r2
	mov	r2, #-1
	str	r2, [r3, #12]
	ldr	r3, [r7, #36]
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L56:
	.align	2
.L55:
	.word	.LC2-(.LPIC3+4)
	.word	.LC3-(.LPIC4+4)
	.word	.LC4-(.LPIC5+4)
	.word	.LC5-(.LPIC6+4)
	.fnend
	.size	_ZL15sqstd_rex_classP5SQRex, .-_ZL15sqstd_rex_classP5SQRex
	.section	.rodata
	.align	2
.LC6:
	.ascii	"overflow in numeric constant\000"
	.section	.text._ZL21sqstd_rex_parsenumberP5SQRex,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL21sqstd_rex_parsenumberP5SQRex, %function
_ZL21sqstd_rex_parsenumberP5SQRex:
	.fnstart
.LFB9:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #48
	str	r3, [r7, #12]
	movs	r3, #10
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	b	.L58
.L60:
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #1
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r0, r3, #1
	ldr	r1, [r7, #4]
	str	r0, [r1, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #48
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r2, [r7, #8]
	mov	r3, #51712
	movt	r3, 15258
	cmp	r2, r3
	bne	.L59
	ldr	r0, [r7, #4]
	ldr	r3, .L62
.LPIC7:
	add	r3, pc
	mov	r1, r3
	bl	_ZL15sqstd_rex_errorP5SQRexPKc(PLT)
.L59:
	ldr	r2, [r7, #8]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #1
	str	r3, [r7, #8]
.L58:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #48
	cmp	r3, #9
	bls	.L60
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L63:
	.align	2
.L62:
	.word	.LC6-(.LPIC7+4)
	.cantunwind
	.fnend
	.size	_ZL21sqstd_rex_parsenumberP5SQRex, .-_ZL21sqstd_rex_parsenumberP5SQRex
	.section	.rodata
	.align	2
.LC7:
	.ascii	"number expected\000"
	.align	2
.LC8:
	.ascii	", or } expected\000"
	.section	.text._ZL17sqstd_rex_elementP5SQRex,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL17sqstd_rex_elementP5SQRex, %function
_ZL17sqstd_rex_elementP5SQRex:
	.fnstart
.LFB10:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #40
	sub	sp, sp, #40
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, #-1
	str	r3, [r7, #36]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #40
	beq	.L66
	cmp	r3, #40
	bgt	.L67
	cmp	r3, #36
	beq	.L68
	b	.L65
.L67:
	cmp	r3, #46
	beq	.L69
	cmp	r3, #91
	beq	.L70
	b	.L65
.L66:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #63
	bne	.L71
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r0, [r7, #4]
	movs	r1, #58
	bl	_ZL16sqstd_rex_expectP5SQRexi(PLT)
	ldr	r0, [r7, #4]
	movw	r1, #259
	bl	_ZL17sqstd_rex_newnodeP5SQRexi(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	b	.L72
.L71:
	ldr	r0, [r7, #4]
	mov	r1, #258
	bl	_ZL17sqstd_rex_newnodeP5SQRexi(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
.L72:
	ldr	r0, [r7, #4]
	bl	_ZL14sqstd_rex_listP5SQRex(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #32]
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r2, [r7, #20]
	str	r2, [r3, #4]
	ldr	r3, [r7, #32]
	str	r3, [r7, #36]
	ldr	r0, [r7, #4]
	movs	r1, #41
	bl	_ZL16sqstd_rex_expectP5SQRexi(PLT)
	b	.L73
.L70:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r0, [r7, #4]
	bl	_ZL15sqstd_rex_classP5SQRex(PLT)
	mov	r3, r0
	str	r3, [r7, #36]
	ldr	r0, [r7, #4]
	movs	r1, #93
	bl	_ZL16sqstd_rex_expectP5SQRexi(PLT)
	b	.L73
.L68:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r0, [r7, #4]
	mov	r1, #266
	bl	_ZL17sqstd_rex_newnodeP5SQRexi(PLT)
	mov	r3, r0
	str	r3, [r7, #36]
	b	.L73
.L69:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r0, [r7, #4]
	mov	r1, #260
	bl	_ZL17sqstd_rex_newnodeP5SQRexi(PLT)
	mov	r3, r0
	str	r3, [r7, #36]
	b	.L73
.L65:
	ldr	r0, [r7, #4]
	movs	r1, #0
	bl	_ZL18sqstd_rex_charnodeP5SQRexj(PLT)
	mov	r3, r0
	str	r3, [r7, #36]
	nop
.L73:
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #0
	strh	r3, [r7, #26]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #24]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #43
	beq	.L75
	cmp	r3, #43
	bgt	.L76
	cmp	r3, #42
	beq	.L77
	b	.L74
.L76:
	cmp	r3, #63
	beq	.L78
	cmp	r3, #123
	beq	.L79
	b	.L74
.L77:
	movs	r3, #0
	strh	r3, [r7, #26]	@ movhi
	movw	r3, #65535
	strh	r3, [r7, #24]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	movs	r3, #1
	str	r3, [r7, #28]
	b	.L74
.L75:
	movs	r3, #1
	strh	r3, [r7, #26]	@ movhi
	movw	r3, #65535
	strh	r3, [r7, #24]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	movs	r3, #1
	str	r3, [r7, #28]
	b	.L74
.L78:
	movs	r3, #0
	strh	r3, [r7, #26]	@ movhi
	movs	r3, #1
	strh	r3, [r7, #24]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	movs	r3, #1
	str	r3, [r7, #28]
	b	.L74
.L79:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #48
	cmp	r3, #9
	bls	.L80
	ldr	r0, [r7, #4]
	ldr	r3, .L90
.LPIC8:
	add	r3, pc
	mov	r1, r3
	bl	_ZL15sqstd_rex_errorP5SQRexPKc(PLT)
.L80:
	ldr	r0, [r7, #4]
	bl	_ZL21sqstd_rex_parsenumberP5SQRex(PLT)
	mov	r3, r0
	strh	r3, [r7, #26]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #44
	beq	.L82
	cmp	r3, #125
	bne	.L89
	ldrh	r3, [r7, #26]	@ movhi
	strh	r3, [r7, #24]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	b	.L84
.L82:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	movw	r3, #65535
	strh	r3, [r7, #24]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #48
	cmp	r3, #9
	bhi	.L85
	ldr	r0, [r7, #4]
	bl	_ZL21sqstd_rex_parsenumberP5SQRex(PLT)
	mov	r3, r0
	strh	r3, [r7, #24]	@ movhi
.L85:
	ldr	r0, [r7, #4]
	movs	r1, #125
	bl	_ZL16sqstd_rex_expectP5SQRexi(PLT)
	b	.L84
.L89:
	ldr	r0, [r7, #4]
	ldr	r3, .L90+4
.LPIC9:
	add	r3, pc
	mov	r1, r3
	bl	_ZL15sqstd_rex_errorP5SQRexPKc(PLT)
.L84:
	movs	r3, #1
	str	r3, [r7, #28]
	nop
.L74:
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L86
	ldr	r0, [r7, #4]
	mov	r1, #256
	bl	_ZL17sqstd_rex_newnodeP5SQRexi(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #16]
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r2, [r7, #36]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #16]
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldrh	r2, [r7, #26]
	lsls	r1, r2, #16
	ldrh	r2, [r7, #24]
	orrs	r2, r2, r1
	str	r2, [r3, #8]
	ldr	r3, [r7, #16]
	str	r3, [r7, #36]
.L86:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #124
	beq	.L87
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #41
	beq	.L87
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #42
	beq	.L87
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #43
	beq	.L87
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L87
	ldr	r0, [r7, #4]
	bl	_ZL17sqstd_rex_elementP5SQRex(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #36]
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r2, [r7, #12]
	str	r2, [r3, #12]
.L87:
	ldr	r3, [r7, #36]
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L91:
	.align	2
.L90:
	.word	.LC7-(.LPIC8+4)
	.word	.LC8-(.LPIC9+4)
	.fnend
	.size	_ZL17sqstd_rex_elementP5SQRex, .-_ZL17sqstd_rex_elementP5SQRex
	.section	.text._ZL14sqstd_rex_listP5SQRex,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL14sqstd_rex_listP5SQRex, %function
_ZL14sqstd_rex_listP5SQRex:
	.fnstart
.LFB11:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #24
	sub	sp, sp, #24
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, #-1
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #94
	bne	.L93
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r0, [r7, #4]
	movw	r1, #267
	bl	_ZL17sqstd_rex_newnodeP5SQRexi(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
.L93:
	ldr	r0, [r7, #4]
	bl	_ZL17sqstd_rex_elementP5SQRex(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	cmp	r3, #-1
	beq	.L94
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r2, [r7, #16]
	str	r2, [r3, #12]
	b	.L95
.L94:
	ldr	r3, [r7, #16]
	str	r3, [r7, #20]
.L95:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #124
	bne	.L96
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r0, [r7, #4]
	movw	r1, #257
	bl	_ZL17sqstd_rex_newnodeP5SQRexi(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r2, [r7, #20]
	str	r2, [r3, #4]
	ldr	r0, [r7, #4]
	bl	_ZL14sqstd_rex_listP5SQRex(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r2, [r7, #8]
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	str	r3, [r7, #20]
.L96:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL14sqstd_rex_listP5SQRex, .-_ZL14sqstd_rex_listP5SQRex
	.section	.text._ZL21sqstd_rex_matchcclassic,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL21sqstd_rex_matchcclassic, %function
_ZL21sqstd_rex_matchcclassic:
	.fnstart
.LFB12:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	subs	r3, r3, #65
	cmp	r3, #55
	bhi	.L99
	adr	r1, .L101
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L101:
	.word	.L100+1-.L101
	.word	.L99+1-.L101
	.word	.L102+1-.L101
	.word	.L103+1-.L101
	.word	.L99+1-.L101
	.word	.L99+1-.L101
	.word	.L99+1-.L101
	.word	.L99+1-.L101
	.word	.L99+1-.L101
	.word	.L99+1-.L101
	.word	.L99+1-.L101
	.word	.L99+1-.L101
	.word	.L99+1-.L101
	.word	.L99+1-.L101
	.word	.L99+1-.L101
	.word	.L104+1-.L101
	.word	.L99+1-.L101
	.word	.L99+1-.L101
	.word	.L105+1-.L101
	.word	.L99+1-.L101
	.word	.L99+1-.L101
	.word	.L99+1-.L101
	.word	.L106+1-.L101
	.word	.L107+1-.L101
	.word	.L99+1-.L101
	.word	.L99+1-.L101
	.word	.L99+1-.L101
	.word	.L99+1-.L101
	.word	.L99+1-.L101
	.word	.L99+1-.L101
	.word	.L99+1-.L101
	.word	.L99+1-.L101
	.word	.L108+1-.L101
	.word	.L99+1-.L101
	.word	.L109+1-.L101
	.word	.L110+1-.L101
	.word	.L99+1-.L101
	.word	.L99+1-.L101
	.word	.L99+1-.L101
	.word	.L99+1-.L101
	.word	.L99+1-.L101
	.word	.L99+1-.L101
	.word	.L99+1-.L101
	.word	.L111+1-.L101
	.word	.L99+1-.L101
	.word	.L99+1-.L101
	.word	.L99+1-.L101
	.word	.L112+1-.L101
	.word	.L99+1-.L101
	.word	.L99+1-.L101
	.word	.L113+1-.L101
	.word	.L99+1-.L101
	.word	.L114+1-.L101
	.word	.L99+1-.L101
	.word	.L115+1-.L101
	.word	.L116+1-.L101
.L108:
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	mov	r0, r3
	bl	isalpha(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L117
	movs	r3, #1
	b	.L118
.L117:
	movs	r3, #0
.L118:
	b	.L119
.L100:
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	mov	r0, r3
	bl	isalpha(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L120
	movs	r3, #1
	b	.L121
.L120:
	movs	r3, #0
.L121:
	b	.L119
.L115:
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	mov	r0, r3
	bl	isalnum(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L122
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #95
	bne	.L123
.L122:
	movs	r3, #1
	b	.L119
.L123:
	movs	r3, #0
	b	.L119
.L106:
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	mov	r0, r3
	bl	isalnum(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L125
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #95
	beq	.L125
	movs	r3, #1
	b	.L119
.L125:
	movs	r3, #0
	b	.L119
.L113:
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	mov	r0, r3
	bl	isspace(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L127
	movs	r3, #1
	b	.L128
.L127:
	movs	r3, #0
.L128:
	b	.L119
.L105:
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	mov	r0, r3
	bl	isspace(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L129
	movs	r3, #1
	b	.L130
.L129:
	movs	r3, #0
.L130:
	b	.L119
.L110:
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	subs	r3, r3, #48
	cmp	r3, #9
	bhi	.L131
	movs	r3, #1
	b	.L132
.L131:
	movs	r3, #0
.L132:
	b	.L119
.L103:
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	subs	r3, r3, #48
	cmp	r3, #9
	bls	.L133
	movs	r3, #1
	b	.L134
.L133:
	movs	r3, #0
.L134:
	b	.L119
.L116:
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	mov	r0, r3
	bl	isxdigit(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L135
	movs	r3, #1
	b	.L136
.L135:
	movs	r3, #0
.L136:
	b	.L119
.L107:
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	mov	r0, r3
	bl	isxdigit(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L137
	movs	r3, #1
	b	.L138
.L137:
	movs	r3, #0
.L138:
	b	.L119
.L109:
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	mov	r0, r3
	bl	iscntrl(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L139
	movs	r3, #1
	b	.L140
.L139:
	movs	r3, #0
.L140:
	b	.L119
.L102:
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	mov	r0, r3
	bl	iscntrl(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L141
	movs	r3, #1
	b	.L142
.L141:
	movs	r3, #0
.L142:
	b	.L119
.L112:
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	mov	r0, r3
	bl	ispunct(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L143
	movs	r3, #1
	b	.L144
.L143:
	movs	r3, #0
.L144:
	b	.L119
.L104:
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	mov	r0, r3
	bl	ispunct(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L145
	movs	r3, #1
	b	.L146
.L145:
	movs	r3, #0
.L146:
	b	.L119
.L111:
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	mov	r0, r3
	bl	islower(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L147
	movs	r3, #1
	b	.L148
.L147:
	movs	r3, #0
.L148:
	b	.L119
.L114:
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	mov	r0, r3
	bl	isupper(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L149
	movs	r3, #1
	b	.L150
.L149:
	movs	r3, #0
.L150:
	b	.L119
.L99:
	movs	r3, #0
.L119:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZL21sqstd_rex_matchcclassic, .-_ZL21sqstd_rex_matchcclassic
	.section	.text._ZL20sqstd_rex_matchclassP5SQRexP12tagSQRexNodec,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL20sqstd_rex_matchclassP5SQRexP12tagSQRexNodec, %function
_ZL20sqstd_rex_matchclassP5SQRexP12tagSQRexNodec:
	.fnstart
.LFB13:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strb	r3, [r7, #7]
.L161:
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	cmp	r3, #262
	beq	.L153
	cmp	r3, #264
	bne	.L162
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	blt	.L155
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	bgt	.L155
	movs	r3, #1
	b	.L156
.L155:
	b	.L157
.L153:
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	mov	r0, r2
	mov	r1, r3
	bl	_ZL21sqstd_rex_matchcclassic(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L158
	movs	r3, #1
	b	.L156
.L158:
	b	.L157
.L162:
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L157
	movs	r3, #1
	b	.L156
.L157:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	cmp	r3, #-1
	beq	.L159
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	lsls	r3, r3, #4
	add	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L159
	movs	r3, #1
	b	.L160
.L159:
	movs	r3, #0
.L160:
	cmp	r3, #0
	bne	.L161
	movs	r3, #0
.L156:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZL20sqstd_rex_matchclassP5SQRexP12tagSQRexNodec, .-_ZL20sqstd_rex_matchclassP5SQRexP12tagSQRexNodec
	.section	.text._ZL19sqstd_rex_matchnodeP5SQRexP12tagSQRexNodePKcS2_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL19sqstd_rex_matchnodeP5SQRexP12tagSQRexNodePKcS2_, %function
_ZL19sqstd_rex_matchnodeP5SQRexP12tagSQRexNodePKcS2_:
	.fnstart
.LFB14:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #80
	sub	sp, sp, #80
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	sub	r3, r3, #256
	cmp	r3, #12
	bhi	.L164
	adr	r1, .L166
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L166:
	.word	.L165+1-.L166
	.word	.L167+1-.L166
	.word	.L168+1-.L166
	.word	.L168+1-.L166
	.word	.L169+1-.L166
	.word	.L170+1-.L166
	.word	.L171+1-.L166
	.word	.L170+1-.L166
	.word	.L164+1-.L166
	.word	.L164+1-.L166
	.word	.L172+1-.L166
	.word	.L173+1-.L166
	.word	.L174+1-.L166
.L165:
	movs	r3, #0
	str	r3, [r7, #76]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	lsrs	r3, r3, #16
	str	r3, [r7, #28]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	uxth	r3, r3
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #72]
	ldr	r3, [r7, #4]
	str	r3, [r7, #68]
	ldr	r3, [r7, #4]
	str	r3, [r7, #64]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	cmp	r3, #-1
	beq	.L175
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	lsls	r3, r3, #4
	add	r3, r3, r2
	str	r3, [r7, #76]
	b	.L177
.L175:
	ldr	r3, [r7]
	str	r3, [r7, #76]
	b	.L177
.L187:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r0, [r7, #12]
	mov	r1, r3
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #76]
	bl	_ZL19sqstd_rex_matchnodeP5SQRexP12tagSQRexNodePKcS2_(PLT)
	mov	r3, r0
	str	r3, [r7, #68]
	ldr	r3, [r7, #68]
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L178
	b	.L179
.L178:
	ldr	r3, [r7, #72]
	adds	r3, r3, #1
	str	r3, [r7, #72]
	ldr	r3, [r7, #68]
	str	r3, [r7, #64]
	ldr	r3, [r7, #76]
	cmp	r3, #0
	beq	.L180
	ldr	r3, [r7, #76]
	ldr	r3, [r3]
	cmp	r3, #256
	bne	.L181
	ldr	r3, [r7, #76]
	ldr	r3, [r3]
	cmp	r3, #256
	bne	.L182
	ldr	r3, [r7, #76]
	ldr	r3, [r3, #8]
	lsrs	r3, r3, #16
	cmp	r3, #0
	beq	.L182
.L181:
	movs	r3, #0
	str	r3, [r7, #60]
	ldr	r3, [r7, #76]
	ldr	r3, [r3, #12]
	cmp	r3, #-1
	beq	.L183
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #76]
	ldr	r3, [r3, #12]
	lsls	r3, r3, #4
	add	r3, r3, r2
	str	r3, [r7, #60]
	b	.L184
.L183:
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L184
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	cmp	r3, #-1
	beq	.L184
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #20]
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	lsls	r3, r3, #4
	add	r3, r3, r2
	str	r3, [r7, #60]
.L184:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #76]
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #60]
	bl	_ZL19sqstd_rex_matchnodeP5SQRexP12tagSQRexNodePKcS2_(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L182
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bne	.L185
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #72]
	cmp	r2, r3
	beq	.L179
.L185:
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	blt	.L186
	ldr	r2, [r7, #24]
	movw	r3, #65535
	cmp	r2, r3
	beq	.L179
.L186:
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	blt	.L182
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bgt	.L182
	b	.L179
.L182:
.L180:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #68]
	cmp	r2, r3
	bhi	.L177
	b	.L179
.L177:
	ldr	r2, [r7, #72]
	movw	r3, #65535
	cmp	r2, r3
	beq	.L187
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	blt	.L187
.L179:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bne	.L188
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #72]
	cmp	r2, r3
	bne	.L188
	ldr	r3, [r7, #64]
	b	.L189
.L188:
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	blt	.L190
	ldr	r2, [r7, #24]
	movw	r3, #65535
	cmp	r2, r3
	bne	.L190
	ldr	r3, [r7, #64]
	b	.L189
.L190:
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	blt	.L191
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bgt	.L191
	ldr	r3, [r7, #64]
	b	.L189
.L191:
	movs	r3, #0
	b	.L189
.L167:
	ldr	r3, [r7, #4]
	str	r3, [r7, #56]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #4
	add	r3, r3, r2
	str	r3, [r7, #52]
	b	.L192
.L194:
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #12]
	cmp	r3, #-1
	beq	.L193
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #12]
	lsls	r3, r3, #4
	add	r3, r3, r2
	str	r3, [r7, #52]
	b	.L192
.L193:
	ldr	r3, [r7, #56]
	b	.L189
.L192:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #52]
	ldr	r2, [r7, #56]
	movs	r3, #0
	bl	_ZL19sqstd_rex_matchnodeP5SQRexP12tagSQRexNodePKcS2_(PLT)
	mov	r3, r0
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L194
	ldr	r3, [r7, #4]
	str	r3, [r7, #56]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	lsls	r3, r3, #4
	add	r3, r3, r2
	str	r3, [r7, #52]
	b	.L195
.L197:
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #12]
	cmp	r3, #-1
	beq	.L196
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #12]
	lsls	r3, r3, #4
	add	r3, r3, r2
	str	r3, [r7, #52]
	b	.L195
.L196:
	ldr	r3, [r7, #56]
	b	.L189
.L195:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #52]
	ldr	r2, [r7, #56]
	movs	r3, #0
	bl	_ZL19sqstd_rex_matchnodeP5SQRexP12tagSQRexNodePKcS2_(PLT)
	mov	r3, r0
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L197
	movs	r3, #0
	b	.L189
.L168:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #4
	add	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #4]
	str	r3, [r7, #44]
	mov	r3, #-1
	str	r3, [r7, #40]
	ldr	r3, [r7, #8]
	ldr	r2, [r3]
	movw	r3, #259
	cmp	r2, r3
	beq	.L198
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #40]
	cmp	r2, r3
	bne	.L198
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #40]
	str	r3, [r7, #40]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #40]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r7, #44]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #40]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #40]
.L198:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #40]
	str	r3, [r7, #16]
.L205:
	movs	r3, #0
	str	r3, [r7, #36]
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #12]
	cmp	r3, #-1
	beq	.L199
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #12]
	lsls	r3, r3, #4
	add	r3, r3, r2
	str	r3, [r7, #36]
	b	.L200
.L199:
	ldr	r3, [r7]
	str	r3, [r7, #36]
.L200:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #48]
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #36]
	bl	_ZL19sqstd_rex_matchnodeP5SQRexP12tagSQRexNodePKcS2_(PLT)
	mov	r3, r0
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L201
	ldr	r3, [r7, #40]
	cmp	r3, #-1
	beq	.L202
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #40]
	lsls	r3, r3, #3
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #40]
	lsls	r3, r3, #3
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [r3, #4]
.L202:
	movs	r3, #0
	b	.L189
.L201:
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #12]
	cmp	r3, #-1
	beq	.L203
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #12]
	lsls	r3, r3, #4
	add	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	cmp	r3, #0
	beq	.L203
	movs	r3, #1
	b	.L204
.L203:
	movs	r3, #0
.L204:
	cmp	r3, #0
	bne	.L205
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #16]
	str	r2, [r3, #40]
	ldr	r3, [r7, #40]
	cmp	r3, #-1
	beq	.L206
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #40]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r1, [r7, #44]
	ldr	r2, [r7, #12]
	ldr	r0, [r2, #36]
	ldr	r2, [r7, #40]
	lsls	r2, r2, #3
	add	r2, r2, r0
	ldr	r2, [r2]
	subs	r2, r1, r2
	str	r2, [r3, #4]
.L206:
	ldr	r3, [r7, #44]
	b	.L189
.L174:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bne	.L207
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	isspace(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L208
.L207:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bne	.L209
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	isspace(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L208
.L209:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	isspace(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L210
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	isspace(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L208
.L210:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	isspace(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L211
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	isspace(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L211
.L208:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	cmp	r3, #98
	bne	.L212
	ldr	r3, [r7, #4]
	b	.L213
.L212:
	movs	r3, #0
.L213:
	b	.L189
.L211:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	cmp	r3, #98
	beq	.L214
	ldr	r3, [r7, #4]
	b	.L215
.L214:
	movs	r3, #0
.L215:
	b	.L189
.L173:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bne	.L216
	ldr	r3, [r7, #4]
	b	.L189
.L216:
	movs	r3, #0
	b	.L189
.L172:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bne	.L217
	ldr	r3, [r7, #4]
	b	.L189
.L217:
	movs	r3, #0
	b	.L189
.L169:
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	b	.L189
.L170:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #4
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	bl	_ZL20sqstd_rex_matchclassP5SQRexP12tagSQRexNodec(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L218
	ldr	r2, [r7, #32]
	movw	r3, #261
	cmp	r2, r3
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	b	.L219
.L218:
	ldr	r2, [r7, #32]
	movw	r3, #263
	cmp	r2, r3
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
.L219:
	cmp	r3, #0
	beq	.L220
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	b	.L189
.L220:
	movs	r3, #0
	b	.L189
.L171:
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r2
	mov	r1, r3
	bl	_ZL21sqstd_rex_matchcclassic(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L221
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	b	.L189
.L221:
	movs	r3, #0
	b	.L189
.L164:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L222
	movs	r3, #0
	b	.L189
.L222:
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
.L189:
	mov	r0, r3
	adds	r7, r7, #80
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL19sqstd_rex_matchnodeP5SQRexP12tagSQRexNodePKcS2_, .-_ZL19sqstd_rex_matchnodeP5SQRexP12tagSQRexNodePKcS2_
	.section	.rodata
	.align	2
.LC9:
	.ascii	"unexpected character\000"
	.section	.text.sqstd_rex_compile,"ax",%progbits
	.align	2
	.global	sqstd_rex_compile
	.thumb
	.thumb_func
	.type	sqstd_rex_compile, %function
sqstd_rex_compile:
	.fnstart
.LFB15:
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
	movs	r0, #52
	bl	sq_malloc(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #8]
	ldr	r0, [r7, #4]
	bl	strlen(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	lsls	r3, r3, #4
	mov	r0, r3
	bl	sq_malloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #20]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #28]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #36]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #32]
	ldr	r0, [r7, #12]
	mov	r1, #258
	bl	_ZL17sqstd_rex_newnodeP5SQRexi(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	str	r2, [r3, #48]
	mov	r0, #392
	bl	sq_malloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #44]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	mov	r0, r3
	bl	_setjmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L224
	ldr	r0, [r7, #12]
	bl	_ZL14sqstd_rex_listP5SQRex(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r2, [r7, #8]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L225
	ldr	r0, [r7, #12]
	ldr	r3, .L228
.LPIC10:
	add	r3, pc
	mov	r1, r3
	bl	_ZL15sqstd_rex_errorP5SQRexPKc(PLT)
.L225:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	lsls	r3, r3, #3
	mov	r0, r3
	bl	sq_malloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #36]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	lsls	r3, r3, #3
	mov	r0, r2
	movs	r1, #0
	mov	r2, r3
	bl	memset(PLT)
	ldr	r3, [r7, #12]
	b	.L227
.L224:
	ldr	r0, [r7, #12]
	bl	sqstd_rex_free(PLT)
	movs	r3, #0
.L227:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L229:
	.align	2
.L228:
	.word	.LC9-(.LPIC10+4)
	.fnend
	.size	sqstd_rex_compile, .-sqstd_rex_compile
	.section	.text.sqstd_rex_free,"ax",%progbits
	.align	2
	.global	sqstd_rex_free
	.thumb
	.thumb_func
	.type	sqstd_rex_free, %function
sqstd_rex_free:
	.fnstart
.LFB16:
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
	cmp	r3, #0
	beq	.L230
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L232
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	lsls	r3, r3, #4
	mov	r0, r2
	mov	r1, r3
	bl	sq_free(PLT)
.L232:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L233
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	mov	r0, r3
	mov	r1, #392
	bl	sq_free(PLT)
.L233:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	cmp	r3, #0
	beq	.L234
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	lsls	r3, r3, #3
	mov	r0, r2
	mov	r1, r3
	bl	sq_free(PLT)
.L234:
	ldr	r0, [r7, #4]
	movs	r1, #52
	bl	sq_free(PLT)
.L230:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	sqstd_rex_free, .-sqstd_rex_free
	.section	.text.sqstd_rex_match,"ax",%progbits
	.align	2
	.global	sqstd_rex_match
	.thumb
	.thumb_func
	.type	sqstd_rex_match, %function
sqstd_rex_match:
	.fnstart
.LFB17:
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
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #4]
	ldr	r0, [r7]
	bl	strlen(PLT)
	mov	r3, r0
	ldr	r2, [r7]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #40]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	ldr	r0, [r7, #4]
	mov	r1, r3
	ldr	r2, [r7]
	movs	r3, #0
	bl	_ZL19sqstd_rex_matchnodeP5SQRexP12tagSQRexNodePKcS2_(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L236
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	beq	.L237
.L236:
	movs	r3, #0
	b	.L238
.L237:
	movs	r3, #1
.L238:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	sqstd_rex_match, .-sqstd_rex_match
	.section	.text.sqstd_rex_searchrange,"ax",%progbits
	.align	2
	.global	sqstd_rex_searchrange
	.thumb
	.thumb_func
	.type	sqstd_rex_searchrange, %function
sqstd_rex_searchrange:
	.fnstart
.LFB18:
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
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	str	r3, [r7, #16]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcc	.L240
	movs	r3, #0
	b	.L241
.L240:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3]
.L247:
	ldr	r3, [r7, #8]
	str	r3, [r7, #20]
	b	.L242
.L245:
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #40]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #16]
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r0, [r7, #12]
	mov	r1, r3
	ldr	r2, [r7, #20]
	movs	r3, #0
	bl	_ZL19sqstd_rex_matchnodeP5SQRexP12tagSQRexNodePKcS2_(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L243
	b	.L244
.L243:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #16]
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r3, [r3, #12]
	str	r3, [r7, #16]
.L242:
	ldr	r3, [r7, #16]
	cmp	r3, #-1
	bne	.L245
.L244:
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L246
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bne	.L247
.L246:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L248
	movs	r3, #0
	b	.L241
.L248:
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	str	r3, [r7, #8]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L249
	ldr	r3, [r7]
	ldr	r2, [r7, #8]
	str	r2, [r3]
.L249:
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L250
	ldr	r3, [r7, #32]
	ldr	r2, [r7, #20]
	str	r2, [r3]
.L250:
	movs	r3, #1
.L241:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	sqstd_rex_searchrange, .-sqstd_rex_searchrange
	.section	.text.sqstd_rex_search,"ax",%progbits
	.align	2
	.global	sqstd_rex_search
	.thumb
	.thumb_func
	.type	sqstd_rex_search, %function
sqstd_rex_search:
	.fnstart
.LFB19:
	@ args = 0, pretend = 0, frame = 16
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
	ldr	r0, [r7, #8]
	bl	strlen(PLT)
	mov	r3, r0
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r2, [r7]
	str	r2, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	mov	r2, r3
	ldr	r3, [r7, #4]
	bl	sqstd_rex_searchrange(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	sqstd_rex_search, .-sqstd_rex_search
	.section	.text.sqstd_rex_getsubexpcount,"ax",%progbits
	.align	2
	.global	sqstd_rex_getsubexpcount
	.thumb
	.thumb_func
	.type	sqstd_rex_getsubexpcount, %function
sqstd_rex_getsubexpcount:
	.fnstart
.LFB20:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	sqstd_rex_getsubexpcount, .-sqstd_rex_getsubexpcount
	.section	.text.sqstd_rex_getsubexp,"ax",%progbits
	.align	2
	.global	sqstd_rex_getsubexp
	.thumb
	.thumb_func
	.type	sqstd_rex_getsubexp, %function
sqstd_rex_getsubexp:
	.fnstart
.LFB21:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	blt	.L256
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bgt	.L257
.L256:
	movs	r3, #0
	b	.L258
.L257:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #3
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	movs	r3, #1
.L258:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	sqstd_rex_getsubexp, .-sqstd_rex_getsubexp
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
