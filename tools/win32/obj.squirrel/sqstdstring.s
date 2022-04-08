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
	.file	"sqstdstring.cpp"
	.section	.rodata
	.align	2
.LC0:
	.ascii	"-+ #0\000"
	.align	2
.LC1:
	.ascii	"width format too long\000"
	.align	2
.LC2:
	.ascii	"precision format too long\000"
	.align	2
.LC3:
	.ascii	"format too long\000"
	.section	.text._ZL15validate_formatP4SQVMPcPKciRi,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL15validate_formatP4SQVMPcPKciRi, %function
_ZL15validate_formatP4SQVMPcPKciRi:
	.fnstart
.LFB2:
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #36
	sub	sp, sp, #36
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7]
	str	r3, [r7, #24]
	ldr	r3, [r7, #8]
	movs	r2, #37
	strb	r2, [r3]
	b	.L2
.L3:
	ldr	r3, [r7]
	adds	r3, r3, #1
	str	r3, [r7]
.L2:
	ldr	r3, [r7]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r2, .L14
.LPIC0:
	add	r2, pc
	mov	r0, r2
	mov	r1, r3
	bl	strchr(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L3
	b	.L4
.L6:
	ldr	r3, [r7]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrb	r2, [r3]	@ zero_extendqisi2
	add	r1, r7, #20
	ldr	r3, [r7, #28]
	add	r3, r3, r1
	strb	r2, [r3]
	ldr	r3, [r7]
	adds	r3, r3, #1
	str	r3, [r7]
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #2
	ble	.L4
	ldr	r0, [r7, #12]
	ldr	r3, .L14+4
.LPIC1:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L13
.L4:
	ldr	r3, [r7]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #48
	cmp	r3, #9
	bls	.L6
	add	r2, r7, #20
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	ble	.L7
	add	r3, r7, #20
	mov	r0, r3
	bl	atoi(PLT)
	mov	r2, r0
	ldr	r3, [r7, #48]
	str	r2, [r3]
	b	.L8
.L7:
	ldr	r3, [r7, #48]
	movs	r2, #0
	str	r2, [r3]
.L8:
	ldr	r3, [r7]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #46
	bne	.L9
	ldr	r3, [r7]
	adds	r3, r3, #1
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L10
.L11:
	ldr	r3, [r7]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrb	r2, [r3]	@ zero_extendqisi2
	add	r1, r7, #20
	ldr	r3, [r7, #28]
	add	r3, r3, r1
	strb	r2, [r3]
	ldr	r3, [r7]
	adds	r3, r3, #1
	str	r3, [r7]
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #2
	ble	.L10
	ldr	r0, [r7, #12]
	ldr	r3, .L14+8
.LPIC2:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L13
.L10:
	ldr	r3, [r7]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #48
	cmp	r3, #9
	bls	.L11
	add	r2, r7, #20
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	ble	.L9
	ldr	r3, [r7, #48]
	ldr	r4, [r3]
	add	r3, r7, #20
	mov	r0, r3
	bl	atoi(PLT)
	mov	r3, r0
	adds	r2, r4, r3
	ldr	r3, [r7, #48]
	str	r2, [r3]
.L9:
	ldr	r2, [r7]
	ldr	r3, [r7, #24]
	subs	r3, r2, r3
	cmp	r3, #20
	ble	.L12
	ldr	r0, [r7, #12]
	ldr	r3, .L14+12
.LPIC3:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L13
.L12:
	ldr	r3, [r7, #8]
	adds	r1, r3, #1
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #4]
	add	r2, r2, r3
	ldr	r0, [r7]
	ldr	r3, [r7, #24]
	subs	r3, r0, r3
	adds	r3, r3, #1
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	memcpy(PLT)
	ldr	r2, [r7]
	ldr	r3, [r7, #24]
	subs	r3, r2, r3
	adds	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7]
.L13:
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L15:
	.align	2
.L14:
	.word	.LC0-(.LPIC0+4)
	.word	.LC1-(.LPIC1+4)
	.word	.LC2-(.LPIC2+4)
	.word	.LC3-(.LPIC3+4)
	.fnend
	.size	_ZL15validate_formatP4SQVMPcPKciRi, .-_ZL15validate_formatP4SQVMPcPKciRi
	.section	.rodata
	.align	2
.LC4:
	.ascii	"i < allocated\000"
	.align	2
.LC5:
	.ascii	"../../../libs/squirrel/sqstdlib/sqstdstring.cpp\000"
	.align	2
.LC6:
	.ascii	"not enough paramters for the given format string\000"
	.align	2
.LC7:
	.ascii	"string expected for the specified format\000"
	.align	2
.LC8:
	.ascii	"integer expected for the specified format\000"
	.align	2
.LC9:
	.ascii	"float expected for the specified format\000"
	.align	2
.LC10:
	.ascii	"invalid format\000"
	.section	.text.sqstd_format,"ax",%progbits
	.align	2
	.global	sqstd_format
	.thumb
	.thumb_func
	.type	sqstd_format, %function
sqstd_format:
	.fnstart
.LFB3:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #96
	sub	sp, sp, #96
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	add	r3, r7, #56
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	mov	r2, r3
	bl	sq_getstring(PLT)
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	sq_getsize(PLT)
	mov	r3, r0
	adds	r3, r3, #2
	str	r3, [r7, #80]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #80]
	bl	sq_getscratchpad(PLT)
	mov	r3, r0
	str	r3, [r7, #84]
	movs	r3, #0
	str	r3, [r7, #76]
	movs	r3, #0
	str	r3, [r7, #72]
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #68]
	movs	r3, #0
	str	r3, [r7, #32]
	b	.L17
.L38:
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #76]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #37
	beq	.L18
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #80]
	cmp	r2, r3
	blt	.L19
	ldr	r3, .L40
.LPIC4:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L40+4
.LPIC5:
	add	r3, pc
	mov	r1, r3
	movs	r2, #79
	ldr	r3, .L40+8
.LPIC6:
	add	r3, pc
	bl	__assert_fail(PLT)
.L19:
	ldr	r3, [r7, #72]
	adds	r2, r3, #1
	str	r2, [r7, #72]
	ldr	r2, [r7, #84]
	add	r3, r3, r2
	ldr	r1, [r7, #56]
	ldr	r2, [r7, #76]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [r7, #76]
	adds	r3, r3, #1
	str	r3, [r7, #76]
	b	.L17
.L18:
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #76]
	adds	r3, r3, #1
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #37
	bne	.L20
	ldr	r3, [r7, #72]
	adds	r2, r3, #1
	str	r2, [r7, #72]
	ldr	r2, [r7, #84]
	add	r3, r3, r2
	movs	r2, #37
	strb	r2, [r3]
	ldr	r3, [r7, #76]
	adds	r3, r3, #2
	str	r3, [r7, #76]
	b	.L17
.L20:
	ldr	r3, [r7, #76]
	adds	r3, r3, #1
	str	r3, [r7, #76]
	ldr	r0, [r7, #12]
	bl	sq_gettop(PLT)
	mov	r2, r0
	ldr	r3, [r7, #68]
	cmp	r2, r3
	ite	lt
	movlt	r3, #1
	movge	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L21
	ldr	r0, [r7, #12]
	ldr	r3, .L40+12
.LPIC7:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L39
.L21:
	ldr	r3, [r7, #56]
	add	r2, r7, #36
	add	r1, r7, #32
	str	r1, [sp]
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [r7, #76]
	bl	_ZL15validate_formatP4SQVMPcPKciRi(PLT)
	mov	r3, r0
	str	r3, [r7, #76]
	ldr	r3, [r7, #76]
	cmp	r3, #0
	bge	.L23
	mov	r3, #-1
	b	.L39
.L23:
	movs	r3, #0
	str	r3, [r7, #64]
	movs	r3, #0
	str	r3, [r7, #60]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #76]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #69
	cmp	r3, #51
	bhi	.L24
	adr	r1, .L26
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L26:
	.word	.L25+1-.L26
	.word	.L24+1-.L26
	.word	.L25+1-.L26
	.word	.L24+1-.L26
	.word	.L24+1-.L26
	.word	.L24+1-.L26
	.word	.L24+1-.L26
	.word	.L24+1-.L26
	.word	.L24+1-.L26
	.word	.L24+1-.L26
	.word	.L24+1-.L26
	.word	.L24+1-.L26
	.word	.L24+1-.L26
	.word	.L24+1-.L26
	.word	.L24+1-.L26
	.word	.L24+1-.L26
	.word	.L24+1-.L26
	.word	.L24+1-.L26
	.word	.L24+1-.L26
	.word	.L27+1-.L26
	.word	.L24+1-.L26
	.word	.L24+1-.L26
	.word	.L24+1-.L26
	.word	.L24+1-.L26
	.word	.L24+1-.L26
	.word	.L24+1-.L26
	.word	.L24+1-.L26
	.word	.L24+1-.L26
	.word	.L24+1-.L26
	.word	.L24+1-.L26
	.word	.L27+1-.L26
	.word	.L27+1-.L26
	.word	.L25+1-.L26
	.word	.L25+1-.L26
	.word	.L25+1-.L26
	.word	.L24+1-.L26
	.word	.L27+1-.L26
	.word	.L24+1-.L26
	.word	.L24+1-.L26
	.word	.L24+1-.L26
	.word	.L24+1-.L26
	.word	.L24+1-.L26
	.word	.L27+1-.L26
	.word	.L24+1-.L26
	.word	.L24+1-.L26
	.word	.L24+1-.L26
	.word	.L28+1-.L26
	.word	.L24+1-.L26
	.word	.L27+1-.L26
	.word	.L24+1-.L26
	.word	.L24+1-.L26
	.word	.L27+1-.L26
.L28:
	add	r3, r7, #28
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #68]
	mov	r2, r3
	bl	sq_getstring(PLT)
	mov	r3, r0
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L29
	ldr	r0, [r7, #12]
	ldr	r3, .L40+16
.LPIC8:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L39
.L29:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #68]
	bl	sq_getsize(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	add	r3, r3, r2
	str	r3, [r7, #64]
	movs	r3, #115
	str	r3, [r7, #60]
	b	.L30
.L27:
	add	r3, r7, #24
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #68]
	mov	r2, r3
	bl	sq_getinteger(PLT)
	mov	r3, r0
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L31
	ldr	r0, [r7, #12]
	ldr	r3, .L40+20
.LPIC9:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L39
.L31:
	movs	r2, #100
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	add	r3, r3, r2
	str	r3, [r7, #64]
	movs	r3, #105
	str	r3, [r7, #60]
	b	.L30
.L25:
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #68]
	mov	r2, r3
	bl	sq_getfloat(PLT)
	mov	r3, r0
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L32
	ldr	r0, [r7, #12]
	ldr	r3, .L40+24
.LPIC10:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L39
.L32:
	movs	r2, #100
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	add	r3, r3, r2
	str	r3, [r7, #64]
	movs	r3, #102
	str	r3, [r7, #60]
	b	.L30
.L24:
	ldr	r0, [r7, #12]
	ldr	r3, .L40+28
.LPIC11:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L39
.L30:
	ldr	r3, [r7, #76]
	adds	r3, r3, #1
	str	r3, [r7, #76]
	ldr	r3, [r7, #64]
	adds	r2, r3, #1
	ldr	r3, [r7, #80]
	add	r3, r3, r2
	str	r3, [r7, #80]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #80]
	bl	sq_getscratchpad(PLT)
	mov	r3, r0
	str	r3, [r7, #84]
	ldr	r3, [r7, #60]
	cmp	r3, #105
	beq	.L34
	cmp	r3, #115
	beq	.L35
	cmp	r3, #102
	beq	.L36
	b	.L33
.L35:
	ldr	r3, [r7, #72]
	ldr	r2, [r7, #84]
	adds	r1, r2, r3
	ldr	r3, [r7, #28]
	add	r2, r7, #36
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	sprintf(PLT)
	mov	r3, r0
	ldr	r2, [r7, #72]
	add	r3, r3, r2
	str	r3, [r7, #72]
	b	.L33
.L34:
	ldr	r3, [r7, #72]
	ldr	r2, [r7, #84]
	adds	r1, r2, r3
	ldr	r3, [r7, #24]
	add	r2, r7, #36
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	sprintf(PLT)
	mov	r3, r0
	ldr	r2, [r7, #72]
	add	r3, r3, r2
	str	r3, [r7, #72]
	b	.L33
.L36:
	ldr	r3, [r7, #72]
	ldr	r2, [r7, #84]
	add	r2, r2, r3
	flds	s15, [r7, #20]
	fcvtds	d7, s15
	add	r3, r7, #36
	mov	r0, r2
	mov	r1, r3
	fmrrd	r2, r3, d7
	bl	sprintf(PLT)
	mov	r3, r0
	ldr	r2, [r7, #72]
	add	r3, r3, r2
	str	r3, [r7, #72]
	nop
.L33:
	ldr	r3, [r7, #68]
	adds	r3, r3, #1
	str	r3, [r7, #68]
.L17:
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #76]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L38
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #72]
	str	r2, [r3]
	ldr	r3, [r7, #72]
	ldr	r2, [r7, #84]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7]
	ldr	r2, [r7, #84]
	str	r2, [r3]
	movs	r3, #0
.L39:
	mov	r0, r3
	adds	r7, r7, #88
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L41:
	.align	2
.L40:
	.word	.LC4-(.LPIC4+4)
	.word	.LC5-(.LPIC5+4)
	.word	_ZZ12sqstd_formatE19__PRETTY_FUNCTION__-(.LPIC6+4)
	.word	.LC6-(.LPIC7+4)
	.word	.LC7-(.LPIC8+4)
	.word	.LC8-(.LPIC9+4)
	.word	.LC9-(.LPIC10+4)
	.word	.LC10-(.LPIC11+4)
	.fnend
	.size	sqstd_format, .-sqstd_format
	.section	.text._ZL14_string_formatP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL14_string_formatP4SQVM, %function
_ZL14_string_formatP4SQVM:
	.fnstart
.LFB4:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #8]
	add	r2, r7, #8
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	movs	r1, #2
	bl	sqstd_format(PLT)
	mov	r3, r0
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L43
	mov	r3, #-1
	b	.L45
.L43:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	ldr	r0, [r7, #4]
	mov	r1, r2
	mov	r2, r3
	bl	sq_pushstring(PLT)
	movs	r3, #1
.L45:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL14_string_formatP4SQVM, .-_ZL14_string_formatP4SQVM
	.section	.text._ZL9__strip_lPKcPS0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL9__strip_lPKcPS0_, %function
_ZL9__strip_lPKcPS0_:
	.fnstart
.LFB5:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	b	.L47
.L49:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L47:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L48
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	isspace(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L49
.L48:
	ldr	r3, [r7]
	ldr	r2, [r7, #12]
	str	r2, [r3]
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZL9__strip_lPKcPS0_, .-_ZL9__strip_lPKcPS0_
	.section	.text._ZL9__strip_rPKciPS0_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL9__strip_rPKciPS0_, %function
_ZL9__strip_rPKciPS0_:
	.fnstart
.LFB6:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L51
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3]
	b	.L50
.L51:
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #20]
	b	.L53
.L55:
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	str	r3, [r7, #20]
.L53:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bcc	.L54
	ldr	r3, [r7, #20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	isspace(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L55
.L54:
	ldr	r3, [r7, #20]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3]
.L50:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZL9__strip_rPKciPS0_, .-_ZL9__strip_rPKciPS0_
	.section	.text._ZL13_string_stripP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL13_string_stripP4SQVM, %function
_ZL13_string_stripP4SQVM:
	.fnstart
.LFB7:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #24
	sub	sp, sp, #24
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	add	r3, r7, #16
	ldr	r0, [r7, #4]
	movs	r1, #2
	mov	r2, r3
	bl	sq_getstring(PLT)
	ldr	r0, [r7, #4]
	movs	r1, #2
	bl	sq_getsize(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r2, [r7, #16]
	add	r3, r7, #12
	mov	r0, r2
	mov	r1, r3
	bl	_ZL9__strip_lPKcPS0_(PLT)
	ldr	r2, [r7, #16]
	add	r3, r7, #8
	mov	r0, r2
	ldr	r1, [r7, #20]
	mov	r2, r3
	bl	_ZL9__strip_rPKciPS0_(PLT)
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	mov	r1, r3
	ldr	r3, [r7, #12]
	subs	r3, r1, r3
	ldr	r0, [r7, #4]
	mov	r1, r2
	mov	r2, r3
	bl	sq_pushstring(PLT)
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL13_string_stripP4SQVM, .-_ZL13_string_stripP4SQVM
	.section	.text._ZL14_string_lstripP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL14_string_lstripP4SQVM, %function
_ZL14_string_lstripP4SQVM:
	.fnstart
.LFB8:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	movs	r1, #2
	mov	r2, r3
	bl	sq_getstring(PLT)
	ldr	r2, [r7, #12]
	add	r3, r7, #8
	mov	r0, r2
	mov	r1, r3
	bl	_ZL9__strip_lPKcPS0_(PLT)
	ldr	r3, [r7, #8]
	ldr	r0, [r7, #4]
	mov	r1, r3
	mov	r2, #-1
	bl	sq_pushstring(PLT)
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL14_string_lstripP4SQVM, .-_ZL14_string_lstripP4SQVM
	.section	.text._ZL14_string_rstripP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL14_string_rstripP4SQVM, %function
_ZL14_string_rstripP4SQVM:
	.fnstart
.LFB9:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #24
	sub	sp, sp, #24
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	add	r3, r7, #16
	ldr	r0, [r7, #4]
	movs	r1, #2
	mov	r2, r3
	bl	sq_getstring(PLT)
	ldr	r0, [r7, #4]
	movs	r1, #2
	bl	sq_getsize(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r2, [r7, #16]
	add	r3, r7, #12
	mov	r0, r2
	ldr	r1, [r7, #20]
	mov	r2, r3
	bl	_ZL9__strip_rPKciPS0_(PLT)
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #12]
	mov	r1, r3
	ldr	r3, [r7, #16]
	subs	r3, r1, r3
	ldr	r0, [r7, #4]
	mov	r1, r2
	mov	r2, r3
	bl	sq_pushstring(PLT)
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL14_string_rstripP4SQVM, .-_ZL14_string_rstripP4SQVM
	.section	.rodata
	.align	2
.LC11:
	.ascii	"empty separators string\000"
	.section	.text._ZL13_string_splitP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL13_string_splitP4SQVM, %function
_ZL13_string_splitP4SQVM:
	.fnstart
.LFB10:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #32
	sub	sp, sp, #32
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	add	r3, r7, #16
	ldr	r0, [r7, #4]
	movs	r1, #2
	mov	r2, r3
	bl	sq_getstring(PLT)
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	movs	r1, #3
	mov	r2, r3
	bl	sq_getstring(PLT)
	ldr	r0, [r7, #4]
	movs	r1, #3
	bl	sq_getsize(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L63
	ldr	r0, [r7, #4]
	ldr	r3, .L68
.LPIC12:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L67
.L63:
	ldr	r0, [r7, #4]
	movs	r1, #2
	bl	sq_getsize(PLT)
	mov	r3, r0
	adds	r3, r3, #1
	str	r3, [r7, #24]
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #24]
	bl	sq_getscratchpad(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #24]
	ldr	r0, [r7, #20]
	mov	r1, r2
	mov	r2, r3
	bl	memcpy(PLT)
	ldr	r3, [r7, #12]
	ldr	r0, [r7, #20]
	mov	r1, r3
	bl	strtok(PLT)
	str	r0, [r7, #28]
	ldr	r0, [r7, #4]
	movs	r1, #0
	bl	sq_newarray(PLT)
	b	.L65
.L66:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #28]
	mov	r2, #-1
	bl	sq_pushstring(PLT)
	ldr	r0, [r7, #4]
	mvn	r1, #1
	bl	sq_arrayappend(PLT)
	ldr	r3, [r7, #12]
	movs	r0, #0
	mov	r1, r3
	bl	strtok(PLT)
	str	r0, [r7, #28]
.L65:
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L66
	movs	r3, #1
.L67:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L69:
	.align	2
.L68:
	.word	.LC11-(.LPIC12+4)
	.fnend
	.size	_ZL13_string_splitP4SQVM, .-_ZL13_string_splitP4SQVM
	.section	.text._ZL19_rexobj_releasehookPvi,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL19_rexobj_releasehookPvi, %function
_ZL19_rexobj_releasehookPvi:
	.fnstart
.LFB11:
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
	ldr	r0, [r7, #12]
	bl	sqstd_rex_free(PLT)
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL19_rexobj_releasehookPvi, .-_ZL19_rexobj_releasehookPvi
	.section	.text._ZL13_regexp_matchP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL13_regexp_matchP4SQVM, %function
_ZL13_regexp_matchP4SQVM:
	.fnstart
.LFB12:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	movs	r1, #1
	mov	r2, r3
	movs	r3, #0
	bl	sq_getinstanceup(PLT)
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	movs	r1, #2
	mov	r2, r3
	bl	sq_getstring(PLT)
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	mov	r0, r2
	mov	r1, r3
	bl	sqstd_rex_match(PLT)
	mov	r3, r0
	cmp	r3, #1
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L73
	ldr	r0, [r7, #4]
	movs	r1, #1
	bl	sq_pushbool(PLT)
	movs	r3, #1
	b	.L75
.L73:
	ldr	r0, [r7, #4]
	movs	r1, #0
	bl	sq_pushbool(PLT)
	movs	r3, #1
.L75:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL13_regexp_matchP4SQVM, .-_ZL13_regexp_matchP4SQVM
	.section	.rodata
	.align	2
.LC12:
	.ascii	"begin\000"
	.align	2
.LC13:
	.ascii	"end\000"
	.section	.text._ZL12_addrexmatchP4SQVMPKcS2_S2_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL12_addrexmatchP4SQVMPKcS2_S2_, %function
_ZL12_addrexmatchP4SQVMPKcS2_S2_:
	.fnstart
.LFB13:
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
	str	r3, [r7]
	ldr	r0, [r7, #12]
	bl	sq_newtable(PLT)
	ldr	r0, [r7, #12]
	ldr	r3, .L77
.LPIC13:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	sq_pushstring(PLT)
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #8]
	subs	r3, r2, r3
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	sq_pushinteger(PLT)
	ldr	r0, [r7, #12]
	mvn	r1, #2
	bl	sq_rawset(PLT)
	ldr	r0, [r7, #12]
	ldr	r3, .L77+4
.LPIC14:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	sq_pushstring(PLT)
	ldr	r2, [r7]
	ldr	r3, [r7, #8]
	subs	r3, r2, r3
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	sq_pushinteger(PLT)
	ldr	r0, [r7, #12]
	mvn	r1, #2
	bl	sq_rawset(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L78:
	.align	2
.L77:
	.word	.LC12-(.LPIC13+4)
	.word	.LC13-(.LPIC14+4)
	.fnend
	.size	_ZL12_addrexmatchP4SQVMPKcS2_S2_, .-_ZL12_addrexmatchP4SQVMPKcS2_S2_
	.section	.text._ZL14_regexp_searchP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL14_regexp_searchP4SQVM, %function
_ZL14_regexp_searchP4SQVM:
	.fnstart
.LFB14:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #32
	sub	sp, sp, #32
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #28]
	add	r3, r7, #28
	ldr	r0, [r7, #4]
	movs	r1, #1
	mov	r2, r3
	movs	r3, #0
	bl	sq_getinstanceup(PLT)
	movs	r3, #0
	str	r3, [r7, #12]
	add	r3, r7, #24
	ldr	r0, [r7, #4]
	movs	r1, #2
	mov	r2, r3
	bl	sq_getstring(PLT)
	ldr	r0, [r7, #4]
	bl	sq_gettop(PLT)
	mov	r3, r0
	cmp	r3, #2
	ite	gt
	movgt	r3, #1
	movle	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L80
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	movs	r1, #3
	mov	r2, r3
	bl	sq_getinteger(PLT)
.L80:
	ldr	r0, [r7, #28]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #12]
	adds	r1, r2, r3
	add	r2, r7, #20
	add	r3, r7, #16
	bl	sqstd_rex_search(PLT)
	mov	r3, r0
	cmp	r3, #1
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L81
	ldr	r1, [r7, #24]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	ldr	r0, [r7, #4]
	bl	_ZL12_addrexmatchP4SQVMPKcS2_S2_(PLT)
	movs	r3, #1
	b	.L83
.L81:
	movs	r3, #0
.L83:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL14_regexp_searchP4SQVM, .-_ZL14_regexp_searchP4SQVM
	.section	.text._ZL15_regexp_captureP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL15_regexp_captureP4SQVM, %function
_ZL15_regexp_captureP4SQVM:
	.fnstart
.LFB15:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #48
	sub	sp, sp, #48
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #36]
	add	r3, r7, #36
	ldr	r0, [r7, #4]
	movs	r1, #1
	mov	r2, r3
	movs	r3, #0
	bl	sq_getinstanceup(PLT)
	movs	r3, #0
	str	r3, [r7, #20]
	add	r3, r7, #32
	ldr	r0, [r7, #4]
	movs	r1, #2
	mov	r2, r3
	bl	sq_getstring(PLT)
	ldr	r0, [r7, #4]
	bl	sq_gettop(PLT)
	mov	r3, r0
	cmp	r3, #2
	ite	gt
	movgt	r3, #1
	movle	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L85
	add	r3, r7, #20
	ldr	r0, [r7, #4]
	movs	r1, #3
	mov	r2, r3
	bl	sq_getinteger(PLT)
.L85:
	ldr	r0, [r7, #36]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #20]
	adds	r1, r2, r3
	add	r2, r7, #28
	add	r3, r7, #24
	bl	sqstd_rex_search(PLT)
	mov	r3, r0
	cmp	r3, #1
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L86
	ldr	r3, [r7, #36]
	mov	r0, r3
	bl	sqstd_rex_getsubexpcount(PLT)
	mov	r3, r0
	str	r3, [r7, #40]
	ldr	r0, [r7, #4]
	movs	r1, #0
	bl	sq_newarray(PLT)
	movs	r3, #0
	str	r3, [r7, #44]
	b	.L87
.L90:
	ldr	r2, [r7, #36]
	add	r3, r7, #12
	mov	r0, r2
	ldr	r1, [r7, #44]
	mov	r2, r3
	bl	sqstd_rex_getsubexp(PLT)
	ldr	r3, [r7, #16]
	cmp	r3, #0
	ble	.L88
	ldr	r1, [r7, #32]
	ldr	r2, [r7, #12]
	ldr	r0, [r7, #12]
	ldr	r3, [r7, #16]
	add	r3, r3, r0
	ldr	r0, [r7, #4]
	bl	_ZL12_addrexmatchP4SQVMPKcS2_S2_(PLT)
	b	.L89
.L88:
	ldr	r1, [r7, #32]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #32]
	ldr	r0, [r7, #4]
	bl	_ZL12_addrexmatchP4SQVMPKcS2_S2_(PLT)
.L89:
	ldr	r0, [r7, #4]
	mvn	r1, #1
	bl	sq_arrayappend(PLT)
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	str	r3, [r7, #44]
.L87:
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	blt	.L90
	movs	r3, #1
	b	.L92
.L86:
	movs	r3, #0
.L92:
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL15_regexp_captureP4SQVM, .-_ZL15_regexp_captureP4SQVM
	.section	.text._ZL19_regexp_subexpcountP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL19_regexp_subexpcountP4SQVM, %function
_ZL19_regexp_subexpcountP4SQVM:
	.fnstart
.LFB16:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	movs	r1, #1
	mov	r2, r3
	movs	r3, #0
	bl	sq_getinstanceup(PLT)
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	sqstd_rex_getsubexpcount(PLT)
	mov	r3, r0
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	sq_pushinteger(PLT)
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL19_regexp_subexpcountP4SQVM, .-_ZL19_regexp_subexpcountP4SQVM
	.section	.text._ZL19_regexp_constructorP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL19_regexp_constructorP4SQVM, %function
_ZL19_regexp_constructorP4SQVM:
	.fnstart
.LFB17:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #24
	sub	sp, sp, #24
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	movs	r1, #2
	mov	r2, r3
	bl	sq_getstring(PLT)
	ldr	r2, [r7, #12]
	add	r3, r7, #16
	mov	r0, r2
	mov	r1, r3
	bl	sqstd_rex_compile(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L96
	ldr	r3, [r7, #16]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L98
.L96:
	ldr	r0, [r7, #4]
	movs	r1, #1
	ldr	r2, [r7, #20]
	bl	sq_setinstanceup(PLT)
	ldr	r0, [r7, #4]
	movs	r1, #1
	ldr	r3, .L99
.LPIC15:
	add	r3, pc
	mov	r2, r3
	bl	sq_setreleasehook(PLT)
	movs	r3, #0
.L98:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L100:
	.align	2
.L99:
	.word	_ZL19_rexobj_releasehookPvi-(.LPIC15+4)
	.fnend
	.size	_ZL19_regexp_constructorP4SQVM, .-_ZL19_regexp_constructorP4SQVM
	.section	.rodata
	.align	2
.LC14:
	.ascii	"regexp\000"
	.section	.text._ZL15_regexp__typeofP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL15_regexp__typeofP4SQVM, %function
_ZL15_regexp__typeofP4SQVM:
	.fnstart
.LFB18:
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
	ldr	r3, .L103
.LPIC16:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	sq_pushstring(PLT)
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L104:
	.align	2
.L103:
	.word	.LC14-(.LPIC16+4)
	.fnend
	.size	_ZL15_regexp__typeofP4SQVM, .-_ZL15_regexp__typeofP4SQVM
	.section	.rodata
	.align	2
.LC15:
	.ascii	"constructor\000"
	.align	2
.LC16:
	.ascii	".s\000"
	.align	2
.LC17:
	.ascii	"search\000"
	.align	2
.LC18:
	.ascii	"xsn\000"
	.align	2
.LC19:
	.ascii	"match\000"
	.align	2
.LC20:
	.ascii	"xs\000"
	.align	2
.LC21:
	.ascii	"capture\000"
	.align	2
.LC22:
	.ascii	"subexpcount\000"
	.align	2
.LC23:
	.ascii	"x\000"
	.align	2
.LC24:
	.ascii	"_typeof\000"
	.section	.data.rel.local._ZL12rexobj_funcs,"aw",%progbits
	.align	2
	.type	_ZL12rexobj_funcs, %object
	.size	_ZL12rexobj_funcs, 112
_ZL12rexobj_funcs:
	.word	.LC15
	.word	_ZL19_regexp_constructorP4SQVM
	.word	2
	.word	.LC16
	.word	.LC17
	.word	_ZL14_regexp_searchP4SQVM
	.word	-2
	.word	.LC18
	.word	.LC19
	.word	_ZL13_regexp_matchP4SQVM
	.word	2
	.word	.LC20
	.word	.LC21
	.word	_ZL15_regexp_captureP4SQVM
	.word	-2
	.word	.LC18
	.word	.LC22
	.word	_ZL19_regexp_subexpcountP4SQVM
	.word	1
	.word	.LC23
	.word	.LC24
	.word	_ZL15_regexp__typeofP4SQVM
	.word	1
	.word	.LC23
	.word	0
	.word	0
	.space	8
	.section	.rodata
	.align	2
.LC25:
	.ascii	"format\000"
	.align	2
.LC26:
	.ascii	"strip\000"
	.align	2
.LC27:
	.ascii	"lstrip\000"
	.align	2
.LC28:
	.ascii	"rstrip\000"
	.align	2
.LC29:
	.ascii	"split\000"
	.align	2
.LC30:
	.ascii	".ss\000"
	.section	.data.rel.local._ZL15stringlib_funcs,"aw",%progbits
	.align	2
	.type	_ZL15stringlib_funcs, %object
	.size	_ZL15stringlib_funcs, 96
_ZL15stringlib_funcs:
	.word	.LC25
	.word	_ZL14_string_formatP4SQVM
	.word	-2
	.word	.LC16
	.word	.LC26
	.word	_ZL13_string_stripP4SQVM
	.word	2
	.word	.LC16
	.word	.LC27
	.word	_ZL14_string_lstripP4SQVM
	.word	2
	.word	.LC16
	.word	.LC28
	.word	_ZL14_string_rstripP4SQVM
	.word	2
	.word	.LC16
	.word	.LC29
	.word	_ZL13_string_splitP4SQVM
	.word	3
	.word	.LC30
	.word	0
	.word	0
	.space	8
	.section	.text.sqstd_register_stringlib,"ax",%progbits
	.align	2
	.global	sqstd_register_stringlib
	.thumb
	.thumb_func
	.type	sqstd_register_stringlib, %function
sqstd_register_stringlib:
	.fnstart
.LFB19:
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
	ldr	r3, .L111
.LPIC17:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	sq_pushstring(PLT)
	ldr	r0, [r7, #4]
	movs	r1, #0
	bl	sq_newclass(PLT)
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L106
.L107:
	ldr	r3, [r7, #12]
	lsls	r2, r3, #4
	ldr	r3, .L111+4
.LPIC18:
	add	r3, pc
	add	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	ldr	r0, [r7, #4]
	mov	r1, r3
	mov	r2, #-1
	bl	sq_pushstring(PLT)
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #4]
	mov	r1, r3
	movs	r2, #0
	bl	sq_newclosure(PLT)
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	ldr	r0, [r7, #4]
	mov	r1, r2
	mov	r2, r3
	bl	sq_setparamscheck(PLT)
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	ldr	r0, [r7, #4]
	mov	r1, #-1
	mov	r2, r3
	bl	sq_setnativeclosurename(PLT)
	ldr	r0, [r7, #4]
	mvn	r1, #2
	movs	r2, #0
	bl	sq_newslot(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L106:
	ldr	r3, .L111+8
.LPIC19:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #12]
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L107
	ldr	r0, [r7, #4]
	mvn	r1, #2
	movs	r2, #0
	bl	sq_newslot(PLT)
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L108
.L109:
	ldr	r3, .L111+12
.LPIC20:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #12]
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r0, [r7, #4]
	mov	r1, r3
	mov	r2, #-1
	bl	sq_pushstring(PLT)
	ldr	r3, .L111+16
.LPIC21:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #12]
	lsls	r3, r3, #4
	add	r3, r3, r2
	adds	r3, r3, #4
	ldr	r3, [r3]
	ldr	r0, [r7, #4]
	mov	r1, r3
	movs	r2, #0
	bl	sq_newclosure(PLT)
	ldr	r3, .L111+20
.LPIC22:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #12]
	lsls	r3, r3, #4
	add	r3, r3, r2
	adds	r3, r3, #8
	ldr	r2, [r3]
	ldr	r3, .L111+24
.LPIC23:
	add	r3, pc
	mov	r1, r3
	ldr	r3, [r7, #12]
	lsls	r3, r3, #4
	add	r3, r3, r1
	adds	r3, r3, #12
	ldr	r3, [r3]
	ldr	r0, [r7, #4]
	mov	r1, r2
	mov	r2, r3
	bl	sq_setparamscheck(PLT)
	ldr	r3, .L111+28
.LPIC24:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #12]
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r0, [r7, #4]
	mov	r1, #-1
	mov	r2, r3
	bl	sq_setnativeclosurename(PLT)
	ldr	r0, [r7, #4]
	mvn	r1, #2
	movs	r2, #0
	bl	sq_newslot(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L108:
	ldr	r3, .L111+32
.LPIC25:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #12]
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L109
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L112:
	.align	2
.L111:
	.word	.LC14-(.LPIC17+4)
	.word	_ZL12rexobj_funcs-(.LPIC18+4)
	.word	_ZL12rexobj_funcs-(.LPIC19+4)
	.word	_ZL15stringlib_funcs-(.LPIC20+4)
	.word	_ZL15stringlib_funcs-(.LPIC21+4)
	.word	_ZL15stringlib_funcs-(.LPIC22+4)
	.word	_ZL15stringlib_funcs-(.LPIC23+4)
	.word	_ZL15stringlib_funcs-(.LPIC24+4)
	.word	_ZL15stringlib_funcs-(.LPIC25+4)
	.fnend
	.size	sqstd_register_stringlib, .-sqstd_register_stringlib
	.section	.rodata._ZZ12sqstd_formatE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZ12sqstd_formatE19__PRETTY_FUNCTION__, %object
	.size	_ZZ12sqstd_formatE19__PRETTY_FUNCTION__, 68
_ZZ12sqstd_formatE19__PRETTY_FUNCTION__:
	.ascii	"SQRESULT sqstd_format(HSQUIRRELVM, SQInteger, SQInt"
	.ascii	"eger*, SQChar**)\000"
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
