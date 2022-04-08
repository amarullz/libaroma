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
	.file	"sqstdstream.cpp"
	.section	.rodata
	.align	2
.LC0:
	.ascii	"invalid type tag\000"
	.align	2
.LC1:
	.ascii	"the stream is invalid\000"
	.align	2
.LC2:
	.ascii	"no data left to read\000"
	.section	.text._Z16_stream_readblobP4SQVM,"ax",%progbits
	.align	2
	.global	_Z16_stream_readblobP4SQVM
	.thumb
	.thumb_func
	.type	_Z16_stream_readblobP4SQVM, %function
_Z16_stream_readblobP4SQVM:
	.fnstart
.LFB38:
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
	str	r3, [r7, #16]
	add	r3, r7, #16
	ldr	r0, [r7, #4]
	movs	r1, #1
	mov	r2, r3
	mov	r3, #-2147483648
	bl	sq_getinstanceup(PLT)
	mov	r3, r0
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L2
	ldr	r0, [r7, #4]
	ldr	r3, .L11
.LPIC0:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L10
.L2:
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L4
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	adds	r3, r3, #24
	ldr	r3, [r3]
	ldr	r2, [r7, #16]
	mov	r0, r2
	blx	r3
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L5
.L4:
	movs	r3, #1
	b	.L6
.L5:
	movs	r3, #0
.L6:
	cmp	r3, #0
	beq	.L7
	ldr	r0, [r7, #4]
	ldr	r3, .L11+4
.LPIC1:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L10
.L7:
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	movs	r1, #2
	mov	r2, r3
	bl	sq_getinteger(PLT)
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	adds	r3, r3, #16
	ldr	r3, [r3]
	ldr	r2, [r7, #16]
	mov	r0, r2
	blx	r3
	mov	r2, r0
	ldr	r3, [r7, #12]
	cmp	r2, r3
	ite	lt
	movlt	r3, #1
	movge	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L8
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	adds	r3, r3, #16
	ldr	r3, [r3]
	ldr	r2, [r7, #16]
	mov	r0, r2
	blx	r3
	mov	r3, r0
	str	r3, [r7, #12]
.L8:
	ldr	r3, [r7, #12]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	sq_getscratchpad(PLT)
	mov	r3, r0
	str	r3, [r7, #28]
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r1, [r7, #16]
	ldr	r2, [r7, #12]
	mov	r0, r1
	ldr	r1, [r7, #28]
	blx	r3
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bgt	.L9
	ldr	r0, [r7, #4]
	ldr	r3, .L11+8
.LPIC2:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L10
.L9:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #24]
	bl	sqstd_createblob(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #24]
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #28]
	mov	r2, r3
	bl	memcpy(PLT)
	movs	r3, #1
.L10:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L12:
	.align	2
.L11:
	.word	.LC0-(.LPIC0+4)
	.word	.LC1-(.LPIC1+4)
	.word	.LC2-(.LPIC2+4)
	.fnend
	.size	_Z16_stream_readblobP4SQVM, .-_Z16_stream_readblobP4SQVM
	.section	.rodata
	.align	2
.LC3:
	.ascii	"io error\000"
	.align	2
.LC4:
	.ascii	"invalid format\000"
	.section	.text._Z13_stream_readnP4SQVM,"ax",%progbits
	.align	2
	.global	_Z13_stream_readnP4SQVM
	.thumb
	.thumb_func
	.type	_Z13_stream_readnP4SQVM, %function
_Z13_stream_readnP4SQVM:
	.fnstart
.LFB39:
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
	str	r3, [r7, #44]
	add	r3, r7, #44
	ldr	r0, [r7, #4]
	movs	r1, #1
	mov	r2, r3
	mov	r3, #-2147483648
	bl	sq_getinstanceup(PLT)
	mov	r3, r0
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L14
	ldr	r0, [r7, #4]
	ldr	r3, .L40
.LPIC3:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L39
.L14:
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L16
	ldr	r3, [r7, #44]
	ldr	r3, [r3]
	adds	r3, r3, #24
	ldr	r3, [r3]
	ldr	r2, [r7, #44]
	mov	r0, r2
	blx	r3
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L17
.L16:
	movs	r3, #1
	b	.L18
.L17:
	movs	r3, #0
.L18:
	cmp	r3, #0
	beq	.L19
	ldr	r0, [r7, #4]
	ldr	r3, .L40+4
.LPIC4:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L39
.L19:
	add	r3, r7, #40
	ldr	r0, [r7, #4]
	movs	r1, #2
	mov	r2, r3
	bl	sq_getinteger(PLT)
	ldr	r3, [r7, #40]
	subs	r3, r3, #98
	cmp	r3, #21
	bhi	.L20
	adr	r1, .L22
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L22:
	.word	.L21+1-.L22
	.word	.L23+1-.L22
	.word	.L24+1-.L22
	.word	.L20+1-.L22
	.word	.L25+1-.L22
	.word	.L20+1-.L22
	.word	.L20+1-.L22
	.word	.L26+1-.L22
	.word	.L20+1-.L22
	.word	.L20+1-.L22
	.word	.L27+1-.L22
	.word	.L20+1-.L22
	.word	.L20+1-.L22
	.word	.L20+1-.L22
	.word	.L20+1-.L22
	.word	.L20+1-.L22
	.word	.L20+1-.L22
	.word	.L28+1-.L22
	.word	.L20+1-.L22
	.word	.L20+1-.L22
	.word	.L20+1-.L22
	.word	.L29+1-.L22
.L27:
	ldr	r3, [r7, #44]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r1, [r7, #44]
	add	r2, r7, #36
	mov	r0, r1
	mov	r1, r2
	movs	r2, #4
	blx	r3
	mov	r3, r0
	cmp	r3, #4
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L30
	ldr	r0, [r7, #4]
	ldr	r3, .L40+8
.LPIC5:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L39
.L30:
	ldr	r3, [r7, #36]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	sq_pushinteger(PLT)
	b	.L31
.L26:
	ldr	r3, [r7, #44]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r1, [r7, #44]
	add	r2, r7, #32
	mov	r0, r1
	mov	r1, r2
	movs	r2, #4
	blx	r3
	mov	r3, r0
	cmp	r3, #4
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L32
	ldr	r0, [r7, #4]
	ldr	r3, .L40+12
.LPIC6:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L39
.L32:
	ldr	r3, [r7, #32]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	sq_pushinteger(PLT)
	b	.L31
.L28:
	ldr	r3, [r7, #44]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r1, [r7, #44]
	add	r2, r7, #30
	mov	r0, r1
	mov	r1, r2
	movs	r2, #2
	blx	r3
	mov	r3, r0
	cmp	r3, #2
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L33
	ldr	r0, [r7, #4]
	ldr	r3, .L40+16
.LPIC7:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L39
.L33:
	ldrh	r3, [r7, #30]
	sxth	r3, r3
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	sq_pushinteger(PLT)
	b	.L31
.L29:
	ldr	r3, [r7, #44]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r1, [r7, #44]
	add	r2, r7, #28
	mov	r0, r1
	mov	r1, r2
	movs	r2, #2
	blx	r3
	mov	r3, r0
	cmp	r3, #2
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L34
	ldr	r0, [r7, #4]
	ldr	r3, .L40+20
.LPIC8:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L39
.L34:
	ldrh	r3, [r7, #28]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	sq_pushinteger(PLT)
	b	.L31
.L23:
	ldr	r3, [r7, #44]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r1, [r7, #44]
	add	r2, r7, #27
	mov	r0, r1
	mov	r1, r2
	movs	r2, #1
	blx	r3
	mov	r3, r0
	cmp	r3, #1
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L35
	ldr	r0, [r7, #4]
	ldr	r3, .L40+24
.LPIC9:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L39
.L35:
	ldrb	r3, [r7, #27]	@ zero_extendqisi2
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	sq_pushinteger(PLT)
	b	.L31
.L21:
	ldr	r3, [r7, #44]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r1, [r7, #44]
	add	r2, r7, #26
	mov	r0, r1
	mov	r1, r2
	movs	r2, #1
	blx	r3
	mov	r3, r0
	cmp	r3, #1
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L36
	ldr	r0, [r7, #4]
	ldr	r3, .L40+28
.LPIC10:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L39
.L36:
	ldrb	r3, [r7, #26]	@ zero_extendqisi2
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	sq_pushinteger(PLT)
	b	.L31
.L25:
	ldr	r3, [r7, #44]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r1, [r7, #44]
	add	r2, r7, #20
	mov	r0, r1
	mov	r1, r2
	movs	r2, #4
	blx	r3
	mov	r3, r0
	cmp	r3, #4
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L37
	ldr	r0, [r7, #4]
	ldr	r3, .L40+32
.LPIC11:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L39
.L37:
	flds	s15, [r7, #20]
	ldr	r0, [r7, #4]
	fcpys	s0, s15
	bl	sq_pushfloat(PLT)
	b	.L31
.L24:
	ldr	r3, [r7, #44]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r1, [r7, #44]
	add	r2, r7, #8
	mov	r0, r1
	mov	r1, r2
	movs	r2, #8
	blx	r3
	mov	r3, r0
	cmp	r3, #8
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L38
	ldr	r0, [r7, #4]
	ldr	r3, .L40+36
.LPIC12:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L39
.L38:
	fldd	d7, [r7, #8]
	fcvtsd	s15, d7
	ldr	r0, [r7, #4]
	fcpys	s0, s15
	bl	sq_pushfloat(PLT)
	b	.L31
.L20:
	ldr	r0, [r7, #4]
	ldr	r3, .L40+40
.LPIC13:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L39
.L31:
	movs	r3, #1
.L39:
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L41:
	.align	2
.L40:
	.word	.LC0-(.LPIC3+4)
	.word	.LC1-(.LPIC4+4)
	.word	.LC3-(.LPIC5+4)
	.word	.LC3-(.LPIC6+4)
	.word	.LC3-(.LPIC7+4)
	.word	.LC3-(.LPIC8+4)
	.word	.LC3-(.LPIC9+4)
	.word	.LC3-(.LPIC10+4)
	.word	.LC3-(.LPIC11+4)
	.word	.LC3-(.LPIC12+4)
	.word	.LC4-(.LPIC13+4)
	.fnend
	.size	_Z13_stream_readnP4SQVM, .-_Z13_stream_readnP4SQVM
	.section	.rodata
	.align	2
.LC5:
	.ascii	"invalid parameter\000"
	.section	.text._Z17_stream_writeblobP4SQVM,"ax",%progbits
	.align	2
	.global	_Z17_stream_writeblobP4SQVM
	.thumb
	.thumb_func
	.type	_Z17_stream_writeblobP4SQVM, %function
_Z17_stream_writeblobP4SQVM:
	.fnstart
.LFB40:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #24
	sub	sp, sp, #24
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	movs	r1, #1
	mov	r2, r3
	mov	r3, #-2147483648
	bl	sq_getinstanceup(PLT)
	mov	r3, r0
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L43
	ldr	r0, [r7, #4]
	ldr	r3, .L52
.LPIC14:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L51
.L43:
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L45
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #24
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	mov	r0, r2
	blx	r3
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L46
.L45:
	movs	r3, #1
	b	.L47
.L46:
	movs	r3, #0
.L47:
	cmp	r3, #0
	beq	.L48
	ldr	r0, [r7, #4]
	ldr	r3, .L52+4
.LPIC15:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L51
.L48:
	add	r3, r7, #16
	ldr	r0, [r7, #4]
	movs	r1, #2
	mov	r2, r3
	bl	sqstd_getblob(PLT)
	mov	r3, r0
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L49
	ldr	r0, [r7, #4]
	ldr	r3, .L52+8
.LPIC16:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L51
.L49:
	ldr	r0, [r7, #4]
	movs	r1, #2
	bl	sqstd_getblobsize(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #4
	ldr	r3, [r3]
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #16]
	mov	r0, r1
	mov	r1, r2
	ldr	r2, [r7, #20]
	blx	r3
	mov	r2, r0
	ldr	r3, [r7, #20]
	cmp	r2, r3
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L50
	ldr	r0, [r7, #4]
	ldr	r3, .L52+12
.LPIC17:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L51
.L50:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #20]
	bl	sq_pushinteger(PLT)
	movs	r3, #1
.L51:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L53:
	.align	2
.L52:
	.word	.LC0-(.LPIC14+4)
	.word	.LC1-(.LPIC15+4)
	.word	.LC5-(.LPIC16+4)
	.word	.LC3-(.LPIC17+4)
	.fnend
	.size	_Z17_stream_writeblobP4SQVM, .-_Z17_stream_writeblobP4SQVM
	.section	.text._Z14_stream_writenP4SQVM,"ax",%progbits
	.align	2
	.global	_Z14_stream_writenP4SQVM
	.thumb
	.thumb_func
	.type	_Z14_stream_writenP4SQVM, %function
_Z14_stream_writenP4SQVM:
	.fnstart
.LFB41:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #56
	sub	sp, sp, #56
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #52]
	add	r3, r7, #52
	ldr	r0, [r7, #4]
	movs	r1, #1
	mov	r2, r3
	mov	r3, #-2147483648
	bl	sq_getinstanceup(PLT)
	mov	r3, r0
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L55
	ldr	r0, [r7, #4]
	ldr	r3, .L73
.LPIC18:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L72
.L55:
	ldr	r3, [r7, #52]
	cmp	r3, #0
	beq	.L57
	ldr	r3, [r7, #52]
	ldr	r3, [r3]
	adds	r3, r3, #24
	ldr	r3, [r3]
	ldr	r2, [r7, #52]
	mov	r0, r2
	blx	r3
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L58
.L57:
	movs	r3, #1
	b	.L59
.L58:
	movs	r3, #0
.L59:
	cmp	r3, #0
	beq	.L60
	ldr	r0, [r7, #4]
	ldr	r3, .L73+4
.LPIC19:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L72
.L60:
	add	r3, r7, #48
	ldr	r0, [r7, #4]
	movs	r1, #3
	mov	r2, r3
	bl	sq_getinteger(PLT)
	ldr	r3, [r7, #48]
	subs	r3, r3, #98
	cmp	r3, #21
	bhi	.L61
	adr	r1, .L63
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L63:
	.word	.L62+1-.L63
	.word	.L64+1-.L63
	.word	.L65+1-.L63
	.word	.L61+1-.L63
	.word	.L66+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L67+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L68+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L69+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L70+1-.L63
.L68:
	add	r3, r7, #44
	ldr	r0, [r7, #4]
	movs	r1, #2
	mov	r2, r3
	bl	sq_getinteger(PLT)
	ldr	r3, [r7, #44]
	str	r3, [r7, #36]
	ldr	r3, [r7, #52]
	ldr	r3, [r3]
	adds	r3, r3, #4
	ldr	r3, [r3]
	ldr	r1, [r7, #52]
	add	r2, r7, #36
	mov	r0, r1
	mov	r1, r2
	movs	r2, #4
	blx	r3
	b	.L71
.L67:
	add	r3, r7, #44
	ldr	r0, [r7, #4]
	movs	r1, #2
	mov	r2, r3
	bl	sq_getinteger(PLT)
	ldr	r3, [r7, #44]
	str	r3, [r7, #32]
	ldr	r3, [r7, #52]
	ldr	r3, [r3]
	adds	r3, r3, #4
	ldr	r3, [r3]
	ldr	r1, [r7, #52]
	add	r2, r7, #32
	mov	r0, r1
	mov	r1, r2
	movs	r2, #4
	blx	r3
	b	.L71
.L69:
	add	r3, r7, #44
	ldr	r0, [r7, #4]
	movs	r1, #2
	mov	r2, r3
	bl	sq_getinteger(PLT)
	ldr	r3, [r7, #44]
	uxth	r3, r3
	strh	r3, [r7, #30]	@ movhi
	ldr	r3, [r7, #52]
	ldr	r3, [r3]
	adds	r3, r3, #4
	ldr	r3, [r3]
	ldr	r1, [r7, #52]
	add	r2, r7, #30
	mov	r0, r1
	mov	r1, r2
	movs	r2, #2
	blx	r3
	b	.L71
.L70:
	add	r3, r7, #44
	ldr	r0, [r7, #4]
	movs	r1, #2
	mov	r2, r3
	bl	sq_getinteger(PLT)
	ldr	r3, [r7, #44]
	uxth	r3, r3
	strh	r3, [r7, #28]	@ movhi
	ldr	r3, [r7, #52]
	ldr	r3, [r3]
	adds	r3, r3, #4
	ldr	r3, [r3]
	ldr	r1, [r7, #52]
	add	r2, r7, #28
	mov	r0, r1
	mov	r1, r2
	movs	r2, #2
	blx	r3
	b	.L71
.L64:
	add	r3, r7, #44
	ldr	r0, [r7, #4]
	movs	r1, #2
	mov	r2, r3
	bl	sq_getinteger(PLT)
	ldr	r3, [r7, #44]
	uxtb	r3, r3
	strb	r3, [r7, #27]
	ldr	r3, [r7, #52]
	ldr	r3, [r3]
	adds	r3, r3, #4
	ldr	r3, [r3]
	ldr	r1, [r7, #52]
	add	r2, r7, #27
	mov	r0, r1
	mov	r1, r2
	movs	r2, #1
	blx	r3
	b	.L71
.L62:
	add	r3, r7, #44
	ldr	r0, [r7, #4]
	movs	r1, #2
	mov	r2, r3
	bl	sq_getinteger(PLT)
	ldr	r3, [r7, #44]
	uxtb	r3, r3
	strb	r3, [r7, #26]
	ldr	r3, [r7, #52]
	ldr	r3, [r3]
	adds	r3, r3, #4
	ldr	r3, [r3]
	ldr	r1, [r7, #52]
	add	r2, r7, #26
	mov	r0, r1
	mov	r1, r2
	movs	r2, #1
	blx	r3
	b	.L71
.L66:
	add	r3, r7, #40
	ldr	r0, [r7, #4]
	movs	r1, #2
	mov	r2, r3
	bl	sq_getfloat(PLT)
	ldr	r3, [r7, #40]	@ float
	str	r3, [r7, #20]	@ float
	ldr	r3, [r7, #52]
	ldr	r3, [r3]
	adds	r3, r3, #4
	ldr	r3, [r3]
	ldr	r1, [r7, #52]
	add	r2, r7, #20
	mov	r0, r1
	mov	r1, r2
	movs	r2, #4
	blx	r3
	b	.L71
.L65:
	add	r3, r7, #40
	ldr	r0, [r7, #4]
	movs	r1, #2
	mov	r2, r3
	bl	sq_getfloat(PLT)
	flds	s15, [r7, #40]
	fcvtds	d7, s15
	fstd	d7, [r7, #8]
	ldr	r3, [r7, #52]
	ldr	r3, [r3]
	adds	r3, r3, #4
	ldr	r3, [r3]
	ldr	r1, [r7, #52]
	add	r2, r7, #8
	mov	r0, r1
	mov	r1, r2
	movs	r2, #8
	blx	r3
	b	.L71
.L61:
	ldr	r0, [r7, #4]
	ldr	r3, .L73+8
.LPIC20:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L72
.L71:
	movs	r3, #0
.L72:
	mov	r0, r3
	adds	r7, r7, #56
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L74:
	.align	2
.L73:
	.word	.LC0-(.LPIC18+4)
	.word	.LC1-(.LPIC19+4)
	.word	.LC4-(.LPIC20+4)
	.fnend
	.size	_Z14_stream_writenP4SQVM, .-_Z14_stream_writenP4SQVM
	.section	.rodata
	.align	2
.LC6:
	.ascii	"invalid origin\000"
	.section	.text._Z12_stream_seekP4SQVM,"ax",%progbits
	.align	2
	.global	_Z12_stream_seekP4SQVM
	.thumb
	.thumb_func
	.type	_Z12_stream_seekP4SQVM, %function
_Z12_stream_seekP4SQVM:
	.fnstart
.LFB42:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #24
	sub	sp, sp, #24
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #16]
	add	r3, r7, #16
	ldr	r0, [r7, #4]
	movs	r1, #1
	mov	r2, r3
	mov	r3, #-2147483648
	bl	sq_getinstanceup(PLT)
	mov	r3, r0
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L76
	ldr	r0, [r7, #4]
	ldr	r3, .L90
.LPIC21:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L88
.L76:
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L78
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	adds	r3, r3, #24
	ldr	r3, [r3]
	ldr	r2, [r7, #16]
	mov	r0, r2
	blx	r3
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L79
.L78:
	movs	r3, #1
	b	.L80
.L79:
	movs	r3, #0
.L80:
	cmp	r3, #0
	beq	.L81
	ldr	r0, [r7, #4]
	ldr	r3, .L90+4
.LPIC22:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L88
.L81:
	movs	r3, #2
	str	r3, [r7, #20]
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	movs	r1, #2
	mov	r2, r3
	bl	sq_getinteger(PLT)
	ldr	r0, [r7, #4]
	bl	sq_gettop(PLT)
	mov	r3, r0
	cmp	r3, #2
	ite	gt
	movgt	r3, #1
	movle	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L82
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	movs	r1, #3
	mov	r2, r3
	bl	sq_getinteger(PLT)
	ldr	r3, [r7, #8]
	cmp	r3, #99
	beq	.L84
	cmp	r3, #101
	beq	.L85
	cmp	r3, #98
	bne	.L89
	movs	r3, #2
	str	r3, [r7, #20]
	b	.L87
.L84:
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L87
.L85:
	movs	r3, #1
	str	r3, [r7, #20]
	b	.L87
.L89:
	ldr	r0, [r7, #4]
	ldr	r3, .L90+8
.LPIC23:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L88
.L87:
.L82:
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	adds	r3, r3, #20
	ldr	r3, [r3]
	ldr	r1, [r7, #16]
	ldr	r2, [r7, #12]
	mov	r0, r1
	mov	r1, r2
	ldr	r2, [r7, #20]
	blx	r3
	mov	r3, r0
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	sq_pushinteger(PLT)
	movs	r3, #1
.L88:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L91:
	.align	2
.L90:
	.word	.LC0-(.LPIC21+4)
	.word	.LC1-(.LPIC22+4)
	.word	.LC6-(.LPIC23+4)
	.fnend
	.size	_Z12_stream_seekP4SQVM, .-_Z12_stream_seekP4SQVM
	.section	.text._Z12_stream_tellP4SQVM,"ax",%progbits
	.align	2
	.global	_Z12_stream_tellP4SQVM
	.thumb
	.thumb_func
	.type	_Z12_stream_tellP4SQVM, %function
_Z12_stream_tellP4SQVM:
	.fnstart
.LFB43:
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
	mov	r3, #-2147483648
	bl	sq_getinstanceup(PLT)
	mov	r3, r0
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L93
	ldr	r0, [r7, #4]
	ldr	r3, .L100
.LPIC24:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L99
.L93:
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L95
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #24
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	mov	r0, r2
	blx	r3
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L96
.L95:
	movs	r3, #1
	b	.L97
.L96:
	movs	r3, #0
.L97:
	cmp	r3, #0
	beq	.L98
	ldr	r0, [r7, #4]
	ldr	r3, .L100+4
.LPIC25:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L99
.L98:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #12
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	mov	r0, r2
	blx	r3
	mov	r3, r0
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	sq_pushinteger(PLT)
	movs	r3, #1
.L99:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L101:
	.align	2
.L100:
	.word	.LC0-(.LPIC24+4)
	.word	.LC1-(.LPIC25+4)
	.fnend
	.size	_Z12_stream_tellP4SQVM, .-_Z12_stream_tellP4SQVM
	.section	.text._Z11_stream_lenP4SQVM,"ax",%progbits
	.align	2
	.global	_Z11_stream_lenP4SQVM
	.thumb
	.thumb_func
	.type	_Z11_stream_lenP4SQVM, %function
_Z11_stream_lenP4SQVM:
	.fnstart
.LFB44:
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
	mov	r3, #-2147483648
	bl	sq_getinstanceup(PLT)
	mov	r3, r0
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L103
	ldr	r0, [r7, #4]
	ldr	r3, .L110
.LPIC26:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L109
.L103:
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L105
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #24
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	mov	r0, r2
	blx	r3
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L106
.L105:
	movs	r3, #1
	b	.L107
.L106:
	movs	r3, #0
.L107:
	cmp	r3, #0
	beq	.L108
	ldr	r0, [r7, #4]
	ldr	r3, .L110+4
.LPIC27:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L109
.L108:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #16
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	mov	r0, r2
	blx	r3
	mov	r3, r0
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	sq_pushinteger(PLT)
	movs	r3, #1
.L109:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L111:
	.align	2
.L110:
	.word	.LC0-(.LPIC26+4)
	.word	.LC1-(.LPIC27+4)
	.fnend
	.size	_Z11_stream_lenP4SQVM, .-_Z11_stream_lenP4SQVM
	.section	.text._Z13_stream_flushP4SQVM,"ax",%progbits
	.align	2
	.global	_Z13_stream_flushP4SQVM
	.thumb
	.thumb_func
	.type	_Z13_stream_flushP4SQVM, %function
_Z13_stream_flushP4SQVM:
	.fnstart
.LFB45:
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
	mov	r3, #-2147483648
	bl	sq_getinstanceup(PLT)
	mov	r3, r0
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L113
	ldr	r0, [r7, #4]
	ldr	r3, .L122
.LPIC28:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L121
.L113:
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L115
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #24
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	mov	r0, r2
	blx	r3
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L116
.L115:
	movs	r3, #1
	b	.L117
.L116:
	movs	r3, #0
.L117:
	cmp	r3, #0
	beq	.L118
	ldr	r0, [r7, #4]
	ldr	r3, .L122+4
.LPIC29:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L121
.L118:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	mov	r0, r2
	blx	r3
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L119
	ldr	r0, [r7, #4]
	movs	r1, #1
	bl	sq_pushinteger(PLT)
	b	.L120
.L119:
	ldr	r0, [r7, #4]
	bl	sq_pushnull(PLT)
.L120:
	movs	r3, #1
.L121:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L123:
	.align	2
.L122:
	.word	.LC0-(.LPIC28+4)
	.word	.LC1-(.LPIC29+4)
	.fnend
	.size	_Z13_stream_flushP4SQVM, .-_Z13_stream_flushP4SQVM
	.section	.text._Z11_stream_eosP4SQVM,"ax",%progbits
	.align	2
	.global	_Z11_stream_eosP4SQVM
	.thumb
	.thumb_func
	.type	_Z11_stream_eosP4SQVM, %function
_Z11_stream_eosP4SQVM:
	.fnstart
.LFB46:
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
	mov	r3, #-2147483648
	bl	sq_getinstanceup(PLT)
	mov	r3, r0
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L125
	ldr	r0, [r7, #4]
	ldr	r3, .L134
.LPIC30:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L133
.L125:
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L127
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #24
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	mov	r0, r2
	blx	r3
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L128
.L127:
	movs	r3, #1
	b	.L129
.L128:
	movs	r3, #0
.L129:
	cmp	r3, #0
	beq	.L130
	ldr	r0, [r7, #4]
	ldr	r3, .L134+4
.LPIC31:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L133
.L130:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #28
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	mov	r0, r2
	blx	r3
	mov	r3, r0
	cmp	r3, #0
	beq	.L131
	ldr	r0, [r7, #4]
	movs	r1, #1
	bl	sq_pushinteger(PLT)
	b	.L132
.L131:
	ldr	r0, [r7, #4]
	bl	sq_pushnull(PLT)
.L132:
	movs	r3, #1
.L133:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L135:
	.align	2
.L134:
	.word	.LC0-(.LPIC30+4)
	.word	.LC1-(.LPIC31+4)
	.fnend
	.size	_Z11_stream_eosP4SQVM, .-_Z11_stream_eosP4SQVM
	.section	.rodata
	.align	2
.LC7:
	.ascii	"this object cannot be cloned\000"
	.section	.text._Z15_stream__clonedP4SQVM,"ax",%progbits
	.align	2
	.global	_Z15_stream__clonedP4SQVM
	.thumb
	.thumb_func
	.type	_Z15_stream__clonedP4SQVM, %function
_Z15_stream__clonedP4SQVM:
	.fnstart
.LFB47:
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
	ldr	r3, .L138
.LPIC32:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L139:
	.align	2
.L138:
	.word	.LC7-(.LPIC32+4)
	.fnend
	.size	_Z15_stream__clonedP4SQVM, .-_Z15_stream__clonedP4SQVM
	.section	.rodata
	.align	2
.LC8:
	.ascii	"readblob\000"
	.align	2
.LC9:
	.ascii	"xn\000"
	.align	2
.LC10:
	.ascii	"readn\000"
	.align	2
.LC11:
	.ascii	"writeblob\000"
	.align	2
.LC12:
	.ascii	"xx\000"
	.align	2
.LC13:
	.ascii	"writen\000"
	.align	2
.LC14:
	.ascii	"xnn\000"
	.align	2
.LC15:
	.ascii	"seek\000"
	.align	2
.LC16:
	.ascii	"tell\000"
	.align	2
.LC17:
	.ascii	"x\000"
	.align	2
.LC18:
	.ascii	"len\000"
	.align	2
.LC19:
	.ascii	"eos\000"
	.align	2
.LC20:
	.ascii	"flush\000"
	.align	2
.LC21:
	.ascii	"_cloned\000"
	.section	.data.rel._ZL15_stream_methods,"aw",%progbits
	.align	2
	.type	_ZL15_stream_methods, %object
	.size	_ZL15_stream_methods, 176
_ZL15_stream_methods:
	.word	.LC8
	.word	_Z16_stream_readblobP4SQVM
	.word	2
	.word	.LC9
	.word	.LC10
	.word	_Z13_stream_readnP4SQVM
	.word	2
	.word	.LC9
	.word	.LC11
	.word	_Z17_stream_writeblobP4SQVM
	.word	-2
	.word	.LC12
	.word	.LC13
	.word	_Z14_stream_writenP4SQVM
	.word	3
	.word	.LC14
	.word	.LC15
	.word	_Z12_stream_seekP4SQVM
	.word	-2
	.word	.LC14
	.word	.LC16
	.word	_Z12_stream_tellP4SQVM
	.word	1
	.word	.LC17
	.word	.LC18
	.word	_Z11_stream_lenP4SQVM
	.word	1
	.word	.LC17
	.word	.LC19
	.word	_Z11_stream_eosP4SQVM
	.word	1
	.word	.LC17
	.word	.LC20
	.word	_Z13_stream_flushP4SQVM
	.word	1
	.word	.LC17
	.word	.LC21
	.word	_Z15_stream__clonedP4SQVM
	.word	0
	.word	0
	.word	0
	.word	0
	.space	8
	.section	.rodata
	.align	2
.LC22:
	.ascii	"std_stream\000"
	.align	2
.LC23:
	.ascii	"stream\000"
	.section	.text._Z16init_streamclassP4SQVM,"ax",%progbits
	.align	2
	.global	_Z16init_streamclassP4SQVM
	.thumb
	.thumb_func
	.type	_Z16init_streamclassP4SQVM, %function
_Z16init_streamclassP4SQVM:
	.fnstart
.LFB48:
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
	bl	sq_pushregistrytable(PLT)
	ldr	r0, [r7, #4]
	ldr	r3, .L145
.LPIC33:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	sq_pushstring(PLT)
	ldr	r0, [r7, #4]
	mvn	r1, #1
	bl	sq_get(PLT)
	mov	r3, r0
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L141
	ldr	r0, [r7, #4]
	ldr	r3, .L145+4
.LPIC34:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	sq_pushstring(PLT)
	ldr	r0, [r7, #4]
	movs	r1, #0
	bl	sq_newclass(PLT)
	ldr	r0, [r7, #4]
	mov	r1, #-1
	mov	r2, #-2147483648
	bl	sq_settypetag(PLT)
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L142
.L143:
	ldr	r3, [r7, #12]
	lsls	r2, r3, #4
	ldr	r3, .L145+8
.LPIC35:
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
	ldr	r0, [r7, #4]
	mvn	r1, #2
	movs	r2, #0
	bl	sq_newslot(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L142:
	ldr	r3, .L145+12
.LPIC36:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #12]
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L143
	ldr	r0, [r7, #4]
	mvn	r1, #2
	movs	r2, #0
	bl	sq_newslot(PLT)
	ldr	r0, [r7, #4]
	bl	sq_pushroottable(PLT)
	ldr	r0, [r7, #4]
	ldr	r3, .L145+16
.LPIC37:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	sq_pushstring(PLT)
	ldr	r0, [r7, #4]
	ldr	r3, .L145+20
.LPIC38:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	sq_pushstring(PLT)
	ldr	r0, [r7, #4]
	mvn	r1, #3
	bl	sq_get(PLT)
	ldr	r0, [r7, #4]
	mvn	r1, #2
	movs	r2, #0
	bl	sq_newslot(PLT)
	ldr	r0, [r7, #4]
	movs	r1, #1
	bl	sq_pop(PLT)
	b	.L144
.L141:
	ldr	r0, [r7, #4]
	movs	r1, #1
	bl	sq_pop(PLT)
.L144:
	ldr	r0, [r7, #4]
	movs	r1, #1
	bl	sq_pop(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L146:
	.align	2
.L145:
	.word	.LC22-(.LPIC33+4)
	.word	.LC22-(.LPIC34+4)
	.word	_ZL15_stream_methods-(.LPIC35+4)
	.word	_ZL15_stream_methods-(.LPIC36+4)
	.word	.LC23-(.LPIC37+4)
	.word	.LC22-(.LPIC38+4)
	.fnend
	.size	_Z16init_streamclassP4SQVM, .-_Z16init_streamclassP4SQVM
	.section	.rodata
	.align	2
.LC24:
	.ascii	"table expected\000"
	.section	.text._Z14declare_streamP4SQVMPKcPvS2_P16tagSQRegFunctionS5_,"ax",%progbits
	.align	2
	.global	_Z14declare_streamP4SQVMPKcPvS2_P16tagSQRegFunctionS5_
	.thumb
	.thumb_func
	.type	_Z14declare_streamP4SQVMPKcPvS2_P16tagSQRegFunctionS5_, %function
_Z14declare_streamP4SQVMPKcPvS2_P16tagSQRegFunctionS5_:
	.fnstart
.LFB49:
	@ args = 8, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #32
	sub	sp, sp, #32
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r0, [r7, #12]
	mov	r1, #-1
	bl	sq_gettype(PLT)
	mov	r2, r0
	movs	r3, #32
	movt	r3, 2560
	cmp	r2, r3
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L148
	ldr	r0, [r7, #12]
	ldr	r3, .L155
.LPIC39:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L149
.L148:
	ldr	r0, [r7, #12]
	bl	sq_gettop(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r0, [r7, #12]
	bl	_Z16init_streamclassP4SQVM(PLT)
	ldr	r0, [r7, #12]
	bl	sq_pushregistrytable(PLT)
	ldr	r0, [r7, #12]
	ldr	r1, [r7]
	mov	r2, #-1
	bl	sq_pushstring(PLT)
	ldr	r0, [r7, #12]
	ldr	r3, .L155+4
.LPIC40:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	sq_pushstring(PLT)
	ldr	r0, [r7, #12]
	mvn	r1, #2
	bl	sq_get(PLT)
	mov	r3, r0
	mvns	r3, r3
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L150
	ldr	r0, [r7, #12]
	movs	r1, #1
	bl	sq_newclass(PLT)
	ldr	r0, [r7, #12]
	mov	r1, #-1
	ldr	r2, [r7, #4]
	bl	sq_settypetag(PLT)
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L151
.L152:
	ldr	r3, [r7, #28]
	lsls	r3, r3, #4
	ldr	r2, [r7, #40]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	ldr	r0, [r7, #12]
	mov	r1, r3
	mov	r2, #-1
	bl	sq_pushstring(PLT)
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #12]
	mov	r1, r3
	movs	r2, #0
	bl	sq_newclosure(PLT)
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #12]
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	bl	sq_setparamscheck(PLT)
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	ldr	r0, [r7, #12]
	mov	r1, #-1
	mov	r2, r3
	bl	sq_setnativeclosurename(PLT)
	ldr	r0, [r7, #12]
	mvn	r1, #2
	movs	r2, #0
	bl	sq_newslot(PLT)
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L151:
	ldr	r3, [r7, #28]
	lsls	r3, r3, #4
	ldr	r2, [r7, #40]
	add	r3, r3, r2
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L152
	ldr	r0, [r7, #12]
	mvn	r1, #2
	movs	r2, #0
	bl	sq_newslot(PLT)
	ldr	r0, [r7, #12]
	movs	r1, #1
	bl	sq_pop(PLT)
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L153
.L154:
	ldr	r3, [r7, #28]
	lsls	r3, r3, #4
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	ldr	r0, [r7, #12]
	mov	r1, r3
	mov	r2, #-1
	bl	sq_pushstring(PLT)
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #12]
	mov	r1, r3
	movs	r2, #0
	bl	sq_newclosure(PLT)
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #12]
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	bl	sq_setparamscheck(PLT)
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	ldr	r0, [r7, #12]
	mov	r1, #-1
	mov	r2, r3
	bl	sq_setnativeclosurename(PLT)
	ldr	r0, [r7, #12]
	mvn	r1, #2
	movs	r2, #0
	bl	sq_newslot(PLT)
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L153:
	ldr	r3, [r7, #28]
	lsls	r3, r3, #4
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L154
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	mov	r2, #-1
	bl	sq_pushstring(PLT)
	ldr	r0, [r7, #12]
	bl	sq_pushregistrytable(PLT)
	ldr	r0, [r7, #12]
	ldr	r1, [r7]
	mov	r2, #-1
	bl	sq_pushstring(PLT)
	ldr	r0, [r7, #12]
	mvn	r1, #1
	bl	sq_get(PLT)
	ldr	r0, [r7, #12]
	mvn	r1, #1
	bl	sq_remove(PLT)
	ldr	r0, [r7, #12]
	mvn	r1, #2
	movs	r2, #0
	bl	sq_newslot(PLT)
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #24]
	bl	sq_settop(PLT)
	movs	r3, #0
	b	.L149
.L150:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #24]
	bl	sq_settop(PLT)
	mov	r3, #-1
.L149:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L156:
	.align	2
.L155:
	.word	.LC24-(.LPIC39+4)
	.word	.LC22-(.LPIC40+4)
	.fnend
	.size	_Z14declare_streamP4SQVMPKcPvS2_P16tagSQRegFunctionS5_, .-_Z14declare_streamP4SQVMPKcPvS2_P16tagSQRegFunctionS5_
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
