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
	.file	"sqstdaux.cpp"
	.section	.rodata
	.align	2
.LC0:
	.ascii	"\012CALLSTACK\012\000"
	.align	2
.LC1:
	.ascii	"unknown\000"
	.align	2
.LC2:
	.ascii	"*FUNCTION [%s()] %s line [%d]\012\000"
	.align	2
.LC3:
	.ascii	"\012LOCALS\012\000"
	.align	2
.LC4:
	.ascii	"[%s] NULL\012\000"
	.align	2
.LC5:
	.ascii	"[%s] %d\012\000"
	.align	2
.LC6:
	.ascii	"[%s] %.14g\012\000"
	.align	2
.LC7:
	.ascii	"[%s] USERPOINTER\012\000"
	.align	2
.LC8:
	.ascii	"[%s] \"%s\"\012\000"
	.align	2
.LC9:
	.ascii	"[%s] TABLE\012\000"
	.align	2
.LC10:
	.ascii	"[%s] ARRAY\012\000"
	.align	2
.LC11:
	.ascii	"[%s] CLOSURE\012\000"
	.align	2
.LC12:
	.ascii	"[%s] NATIVECLOSURE\012\000"
	.align	2
.LC13:
	.ascii	"[%s] GENERATOR\012\000"
	.align	2
.LC14:
	.ascii	"[%s] USERDATA\012\000"
	.align	2
.LC15:
	.ascii	"[%s] THREAD\012\000"
	.align	2
.LC16:
	.ascii	"[%s] CLASS\012\000"
	.align	2
.LC17:
	.ascii	"[%s] INSTANCE\012\000"
	.align	2
.LC18:
	.ascii	"[%s] WEAKREF\012\000"
	.align	2
.LC19:
	.ascii	"true\000"
	.align	2
.LC20:
	.ascii	"false\000"
	.align	2
.LC21:
	.ascii	"[%s] %s\012\000"
	.align	2
.LC22:
	.ascii	"0\000"
	.align	2
.LC23:
	.ascii	"../../../libs/squirrel/sqstdlib/sqstdaux.cpp\000"
	.section	.text.sqstd_printcallstack,"ax",%progbits
	.align	2
	.global	sqstd_printcallstack
	.thumb
	.thumb_func
	.type	sqstd_printcallstack, %function
sqstd_printcallstack:
	.fnstart
.LFB0:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #68
	sub	sp, sp, #68
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	sq_geterrorfunc(PLT)
	mov	r3, r0
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L1
	movs	r3, #1
	str	r3, [r7, #52]
	movs	r3, #0
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #48]
	ldr	r3, [r7, #36]
	ldr	r0, [r7, #4]
	ldr	r2, .L35
.LPIC0:
	add	r2, pc
	mov	r1, r2
	blx	r3
	b	.L3
.L6:
	ldr	r3, .L35+4
.LPIC1:
	add	r3, pc
	str	r3, [r7, #44]
	ldr	r3, .L35+8
.LPIC2:
	add	r3, pc
	str	r3, [r7, #40]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L4
	ldr	r3, [r7, #20]
	str	r3, [r7, #44]
.L4:
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L5
	ldr	r3, [r7, #24]
	str	r3, [r7, #40]
.L5:
	ldr	r3, [r7, #28]
	str	r3, [sp]
	ldr	r4, [r7, #36]
	ldr	r0, [r7, #4]
	ldr	r3, .L35+12
.LPIC3:
	add	r3, pc
	mov	r1, r3
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #40]
	blx	r4
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	str	r3, [r7, #52]
.L3:
	add	r3, r7, #20
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #52]
	mov	r2, r3
	bl	sq_stackinfos(PLT)
	mov	r3, r0
	mvns	r3, r3
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L6
	movs	r3, #0
	str	r3, [r7, #52]
	ldr	r3, [r7, #36]
	ldr	r0, [r7, #4]
	ldr	r2, .L35+16
.LPIC4:
	add	r2, pc
	mov	r1, r2
	blx	r3
	movs	r3, #0
	str	r3, [r7, #52]
	b	.L7
.L34:
	movs	r3, #0
	str	r3, [r7, #48]
	b	.L8
.L33:
	ldr	r3, [r7, #48]
	adds	r3, r3, #1
	str	r3, [r7, #48]
	ldr	r0, [r7, #4]
	mov	r1, #-1
	bl	sq_gettype(PLT)
	mov	r3, r0
	mov	r2, #256
	movt	r2, 2048
	cmp	r3, r2
	beq	.L10
	mov	r2, #256
	movt	r2, 2048
	cmp	r3, r2
	bgt	.L11
	movs	r2, #2
	movt	r2, 1280
	cmp	r3, r2
	beq	.L12
	movs	r2, #2
	movt	r2, 1280
	cmp	r3, r2
	bgt	.L13
	movs	r2, #1
	movt	r2, 256
	cmp	r3, r2
	beq	.L14
	movs	r2, #8
	movt	r2, 256
	cmp	r3, r2
	beq	.L15
	cmp	r3, #2048
	beq	.L16
	b	.L9
.L13:
	movs	r2, #16
	movt	r2, 2048
	cmp	r3, r2
	beq	.L17
	movs	r2, #64
	movt	r2, 2048
	cmp	r3, r2
	beq	.L18
	movs	r2, #4
	movt	r2, 1280
	cmp	r3, r2
	beq	.L19
	b	.L9
.L11:
	mov	r2, #16384
	movt	r2, 2048
	cmp	r3, r2
	beq	.L20
	mov	r2, #16384
	movt	r2, 2048
	cmp	r3, r2
	bgt	.L21
	mov	r2, #1024
	movt	r2, 2048
	cmp	r3, r2
	beq	.L22
	mov	r2, #4096
	movt	r2, 2048
	cmp	r3, r2
	beq	.L23
	mov	r2, #512
	movt	r2, 2048
	cmp	r3, r2
	beq	.L24
	b	.L9
.L21:
	movs	r2, #32
	movt	r2, 2560
	cmp	r3, r2
	beq	.L25
	movs	r2, #32
	movt	r2, 2560
	cmp	r3, r2
	bgt	.L26
	movs	r2, #0
	movt	r2, 2049
	cmp	r3, r2
	beq	.L27
	b	.L9
.L26:
	movs	r2, #128
	movt	r2, 2560
	cmp	r3, r2
	beq	.L28
	mov	r2, #32768
	movt	r2, 2560
	cmp	r3, r2
	beq	.L29
	b	.L9
.L14:
	ldr	r3, [r7, #36]
	ldr	r0, [r7, #4]
	ldr	r2, .L35+20
.LPIC5:
	add	r2, pc
	mov	r1, r2
	ldr	r2, [r7, #32]
	blx	r3
	b	.L30
.L12:
	add	r3, r7, #16
	ldr	r0, [r7, #4]
	mov	r1, #-1
	mov	r2, r3
	bl	sq_getinteger(PLT)
	ldr	r3, [r7, #16]
	ldr	r4, [r7, #36]
	ldr	r0, [r7, #4]
	ldr	r2, .L35+24
.LPIC6:
	add	r2, pc
	mov	r1, r2
	ldr	r2, [r7, #32]
	blx	r4
	b	.L30
.L19:
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	mov	r1, #-1
	mov	r2, r3
	bl	sq_getfloat(PLT)
	flds	s15, [r7, #12]
	fcvtds	d7, s15
	fstd	d7, [sp]
	ldr	r3, [r7, #36]
	ldr	r0, [r7, #4]
	ldr	r2, .L35+28
.LPIC7:
	add	r2, pc
	mov	r1, r2
	ldr	r2, [r7, #32]
	blx	r3
	b	.L30
.L16:
	ldr	r3, [r7, #36]
	ldr	r0, [r7, #4]
	ldr	r2, .L35+32
.LPIC8:
	add	r2, pc
	mov	r1, r2
	ldr	r2, [r7, #32]
	blx	r3
	b	.L30
.L17:
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	mov	r1, #-1
	mov	r2, r3
	bl	sq_getstring(PLT)
	ldr	r3, [r7, #8]
	ldr	r4, [r7, #36]
	ldr	r0, [r7, #4]
	ldr	r2, .L35+36
.LPIC9:
	add	r2, pc
	mov	r1, r2
	ldr	r2, [r7, #32]
	blx	r4
	b	.L30
.L25:
	ldr	r3, [r7, #36]
	ldr	r0, [r7, #4]
	ldr	r2, .L35+40
.LPIC10:
	add	r2, pc
	mov	r1, r2
	ldr	r2, [r7, #32]
	blx	r3
	b	.L30
.L18:
	ldr	r3, [r7, #36]
	ldr	r0, [r7, #4]
	ldr	r2, .L35+44
.LPIC11:
	add	r2, pc
	mov	r1, r2
	ldr	r2, [r7, #32]
	blx	r3
	b	.L30
.L10:
	ldr	r3, [r7, #36]
	ldr	r0, [r7, #4]
	ldr	r2, .L35+48
.LPIC12:
	add	r2, pc
	mov	r1, r2
	ldr	r2, [r7, #32]
	blx	r3
	b	.L30
.L24:
	ldr	r3, [r7, #36]
	ldr	r0, [r7, #4]
	ldr	r2, .L35+52
.LPIC13:
	add	r2, pc
	mov	r1, r2
	ldr	r2, [r7, #32]
	blx	r3
	b	.L30
.L22:
	ldr	r3, [r7, #36]
	ldr	r0, [r7, #4]
	ldr	r2, .L35+56
.LPIC14:
	add	r2, pc
	mov	r1, r2
	ldr	r2, [r7, #32]
	blx	r3
	b	.L30
.L28:
	ldr	r3, [r7, #36]
	ldr	r0, [r7, #4]
	ldr	r2, .L35+60
.LPIC15:
	add	r2, pc
	mov	r1, r2
	ldr	r2, [r7, #32]
	blx	r3
	b	.L30
.L23:
	ldr	r3, [r7, #36]
	ldr	r0, [r7, #4]
	ldr	r2, .L35+64
.LPIC16:
	add	r2, pc
	mov	r1, r2
	ldr	r2, [r7, #32]
	blx	r3
	b	.L30
.L20:
	ldr	r3, [r7, #36]
	ldr	r0, [r7, #4]
	ldr	r2, .L35+68
.LPIC17:
	add	r2, pc
	mov	r1, r2
	ldr	r2, [r7, #32]
	blx	r3
	b	.L30
.L29:
	ldr	r3, [r7, #36]
	ldr	r0, [r7, #4]
	ldr	r2, .L35+72
.LPIC18:
	add	r2, pc
	mov	r1, r2
	ldr	r2, [r7, #32]
	blx	r3
	b	.L30
.L27:
	ldr	r3, [r7, #36]
	ldr	r0, [r7, #4]
	ldr	r2, .L35+76
.LPIC19:
	add	r2, pc
	mov	r1, r2
	ldr	r2, [r7, #32]
	blx	r3
	b	.L30
.L15:
	add	r3, r7, #16
	ldr	r0, [r7, #4]
	mov	r1, #-1
	mov	r2, r3
	bl	sq_getinteger(PLT)
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L31
	ldr	r3, .L35+80
.LPIC20:
	add	r3, pc
	b	.L32
.L31:
	ldr	r3, .L35+84
.LPIC21:
	add	r3, pc
.L32:
	ldr	r4, [r7, #36]
	ldr	r0, [r7, #4]
	ldr	r2, .L35+88
.LPIC22:
	add	r2, pc
	mov	r1, r2
	ldr	r2, [r7, #32]
	blx	r4
	b	.L30
.L9:
	ldr	r3, .L35+92
.LPIC23:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L35+96
.LPIC24:
	add	r3, pc
	mov	r1, r3
	movs	r2, #90
	ldr	r3, .L35+100
.LPIC25:
	add	r3, pc
	bl	__assert_fail(PLT)
.L30:
	ldr	r0, [r7, #4]
	movs	r1, #1
	bl	sq_pop(PLT)
.L8:
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #48]
	ldr	r0, [r7, #4]
	mov	r1, r2
	mov	r2, r3
	bl	sq_getlocal(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L33
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	str	r3, [r7, #52]
.L7:
	ldr	r3, [r7, #52]
	cmp	r3, #9
	ble	.L34
.L1:
	adds	r7, r7, #60
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L36:
	.align	2
.L35:
	.word	.LC0-(.LPIC0+4)
	.word	.LC1-(.LPIC1+4)
	.word	.LC1-(.LPIC2+4)
	.word	.LC2-(.LPIC3+4)
	.word	.LC3-(.LPIC4+4)
	.word	.LC4-(.LPIC5+4)
	.word	.LC5-(.LPIC6+4)
	.word	.LC6-(.LPIC7+4)
	.word	.LC7-(.LPIC8+4)
	.word	.LC8-(.LPIC9+4)
	.word	.LC9-(.LPIC10+4)
	.word	.LC10-(.LPIC11+4)
	.word	.LC11-(.LPIC12+4)
	.word	.LC12-(.LPIC13+4)
	.word	.LC13-(.LPIC14+4)
	.word	.LC14-(.LPIC15+4)
	.word	.LC15-(.LPIC16+4)
	.word	.LC16-(.LPIC17+4)
	.word	.LC17-(.LPIC18+4)
	.word	.LC18-(.LPIC19+4)
	.word	.LC19-(.LPIC20+4)
	.word	.LC20-(.LPIC21+4)
	.word	.LC21-(.LPIC22+4)
	.word	.LC22-(.LPIC23+4)
	.word	.LC23-(.LPIC24+4)
	.word	_ZZ20sqstd_printcallstackE19__PRETTY_FUNCTION__-(.LPIC25+4)
	.fnend
	.size	sqstd_printcallstack, .-sqstd_printcallstack
	.section	.rodata
	.align	2
.LC24:
	.ascii	"\012AN ERROR HAS OCCURED [%s]\012\000"
	.align	2
.LC25:
	.ascii	"\012AN ERROR HAS OCCURED [unknown]\012\000"
	.section	.text._ZL21_sqstd_aux_printerrorP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL21_sqstd_aux_printerrorP4SQVM, %function
_ZL21_sqstd_aux_printerrorP4SQVM:
	.fnstart
.LFB1:
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
	bl	sq_geterrorfunc(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L38
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r0, [r7, #4]
	bl	sq_gettop(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	gt
	movgt	r3, #1
	movle	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L39
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	movs	r1, #2
	mov	r2, r3
	bl	sq_getstring(PLT)
	mov	r3, r0
	mvns	r3, r3
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L40
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	ldr	r0, [r7, #4]
	ldr	r1, .L43
.LPIC26:
	add	r1, pc
	blx	r3
	b	.L41
.L40:
	ldr	r3, [r7, #12]
	ldr	r0, [r7, #4]
	ldr	r2, .L43+4
.LPIC27:
	add	r2, pc
	mov	r1, r2
	blx	r3
.L41:
	ldr	r0, [r7, #4]
	bl	sqstd_printcallstack(PLT)
.L39:
.L38:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L44:
	.align	2
.L43:
	.word	.LC24-(.LPIC26+4)
	.word	.LC25-(.LPIC27+4)
	.fnend
	.size	_ZL21_sqstd_aux_printerrorP4SQVM, .-_ZL21_sqstd_aux_printerrorP4SQVM
	.section	.rodata
	.align	2
.LC26:
	.ascii	"%s line = (%d) column = (%d) : error %s\012\000"
	.section	.text._Z21_sqstd_compiler_errorP4SQVMPKcS2_ii,"ax",%progbits
	.align	2
	.global	_Z21_sqstd_compiler_errorP4SQVMPKcS2_ii
	.thumb
	.thumb_func
	.type	_Z21_sqstd_compiler_errorP4SQVMPKcS2_ii, %function
_Z21_sqstd_compiler_errorP4SQVMPKcS2_ii:
	.fnstart
.LFB2:
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #36
	sub	sp, sp, #36
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r0, [r7, #12]
	bl	sq_geterrorfunc(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L45
	ldr	r3, [r7, #40]
	str	r3, [sp]
	ldr	r3, [r7, #8]
	str	r3, [sp, #4]
	ldr	r4, [r7, #20]
	ldr	r0, [r7, #12]
	ldr	r3, .L47
.LPIC28:
	add	r3, pc
	mov	r1, r3
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	blx	r4
.L45:
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L48:
	.align	2
.L47:
	.word	.LC26-(.LPIC28+4)
	.fnend
	.size	_Z21_sqstd_compiler_errorP4SQVMPKcS2_ii, .-_Z21_sqstd_compiler_errorP4SQVMPKcS2_ii
	.section	.text.sqstd_seterrorhandlers,"ax",%progbits
	.align	2
	.global	sqstd_seterrorhandlers
	.thumb
	.thumb_func
	.type	sqstd_seterrorhandlers, %function
sqstd_seterrorhandlers:
	.fnstart
.LFB3:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r2, .L50
.LPIC29:
	add	r2, pc
	ldr	r0, [r7, #4]
	ldr	r3, .L50+4
	ldr	r3, [r2, r3]
	mov	r1, r3
	bl	sq_setcompilererrorhandler(PLT)
	ldr	r0, [r7, #4]
	ldr	r3, .L50+8
.LPIC30:
	add	r3, pc
	mov	r1, r3
	movs	r2, #0
	bl	sq_newclosure(PLT)
	ldr	r0, [r7, #4]
	bl	sq_seterrorhandler(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L51:
	.align	2
.L50:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC29+4)
	.word	_Z21_sqstd_compiler_errorP4SQVMPKcS2_ii(GOT)
	.word	_ZL21_sqstd_aux_printerrorP4SQVM-(.LPIC30+4)
	.fnend
	.size	sqstd_seterrorhandlers, .-sqstd_seterrorhandlers
	.section	.rodata._ZZ20sqstd_printcallstackE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZ20sqstd_printcallstackE19__PRETTY_FUNCTION__, %object
	.size	_ZZ20sqstd_printcallstackE19__PRETTY_FUNCTION__, 39
_ZZ20sqstd_printcallstackE19__PRETTY_FUNCTION__:
	.ascii	"void sqstd_printcallstack(HSQUIRRELVM)\000"
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
