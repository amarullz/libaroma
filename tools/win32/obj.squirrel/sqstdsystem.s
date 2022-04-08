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
	.file	"sqstdsystem.cpp"
	.section	.text._ZL14_system_getenvP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL14_system_getenvP4SQVM, %function
_ZL14_system_getenvP4SQVM:
	.fnstart
.LFB2:
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
	mov	r3, r0
	mvns	r3, r3
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L2
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	getenv(PLT)
	mov	r3, r0
	ldr	r0, [r7, #4]
	mov	r1, r3
	mov	r2, #-1
	bl	sq_pushstring(PLT)
	movs	r3, #1
	b	.L4
.L2:
	movs	r3, #0
.L4:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL14_system_getenvP4SQVM, .-_ZL14_system_getenvP4SQVM
	.section	.rodata
	.align	2
.LC0:
	.ascii	"wrong param\000"
	.section	.text._ZL14_system_systemP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL14_system_systemP4SQVM, %function
_ZL14_system_systemP4SQVM:
	.fnstart
.LFB3:
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
	mov	r3, r0
	mvns	r3, r3
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L6
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	system(PLT)
	mov	r3, r0
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	sq_pushinteger(PLT)
	movs	r3, #1
	b	.L8
.L6:
	ldr	r0, [r7, #4]
	ldr	r3, .L9
.LPIC0:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
.L8:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L10:
	.align	2
.L9:
	.word	.LC0-(.LPIC0+4)
	.fnend
	.size	_ZL14_system_systemP4SQVM, .-_ZL14_system_systemP4SQVM
	.section	.text._ZL13_system_clockP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL13_system_clockP4SQVM, %function
_ZL13_system_clockP4SQVM:
	.fnstart
.LFB4:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	bl	clock(PLT)
	mov	r3, r0
	fmsr	s15, r3	@ int
	fsitos	s14, s15
	flds	s15, .L13
	fdivs	s15, s14, s15
	ldr	r0, [r7, #4]
	fcpys	s0, s15
	bl	sq_pushfloat(PLT)
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L14:
	.align	2
.L13:
	.word	1232348160
	.fnend
	.size	_ZL13_system_clockP4SQVM, .-_ZL13_system_clockP4SQVM
	.section	.text._ZL12_system_timeP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL12_system_timeP4SQVM, %function
_ZL12_system_timeP4SQVM:
	.fnstart
.LFB5:
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
	mov	r0, r3
	bl	time(PLT)
	add	r3, r7, #12
	ldr	r3, [r3]
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
	.size	_ZL12_system_timeP4SQVM, .-_ZL12_system_timeP4SQVM
	.section	.rodata
	.align	2
.LC1:
	.ascii	"remove() failed\000"
	.section	.text._ZL14_system_removeP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL14_system_removeP4SQVM, %function
_ZL14_system_removeP4SQVM:
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
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	movs	r1, #2
	mov	r2, r3
	bl	sq_getstring(PLT)
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	remove(PLT)
	mov	r3, r0
	cmp	r3, #-1
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L18
	ldr	r0, [r7, #4]
	ldr	r3, .L21
.LPIC1:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L20
.L18:
	movs	r3, #0
.L20:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L22:
	.align	2
.L21:
	.word	.LC1-(.LPIC1+4)
	.fnend
	.size	_ZL14_system_removeP4SQVM, .-_ZL14_system_removeP4SQVM
	.section	.rodata
	.align	2
.LC2:
	.ascii	"rename() failed\000"
	.section	.text._ZL14_system_renameP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL14_system_renameP4SQVM, %function
_ZL14_system_renameP4SQVM:
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
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	movs	r1, #2
	mov	r2, r3
	bl	sq_getstring(PLT)
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	movs	r1, #3
	mov	r2, r3
	bl	sq_getstring(PLT)
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	mov	r0, r2
	mov	r1, r3
	bl	rename(PLT)
	mov	r3, r0
	cmp	r3, #-1
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L24
	ldr	r0, [r7, #4]
	ldr	r3, .L27
.LPIC2:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L26
.L24:
	movs	r3, #0
.L26:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L28:
	.align	2
.L27:
	.word	.LC2-(.LPIC2+4)
	.fnend
	.size	_ZL14_system_renameP4SQVM, .-_ZL14_system_renameP4SQVM
	.section	.text._ZL17_set_integer_slotP4SQVMPKci,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL17_set_integer_slotP4SQVMPKci, %function
_ZL17_set_integer_slotP4SQVMPKci:
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
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	mov	r2, #-1
	bl	sq_pushstring(PLT)
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	bl	sq_pushinteger(PLT)
	ldr	r0, [r7, #12]
	mvn	r1, #2
	bl	sq_rawset(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL17_set_integer_slotP4SQVMPKci, .-_ZL17_set_integer_slotP4SQVMPKci
	.section	.rodata
	.align	2
.LC3:
	.ascii	"crt api failure\000"
	.align	2
.LC4:
	.ascii	"sec\000"
	.align	2
.LC5:
	.ascii	"min\000"
	.align	2
.LC6:
	.ascii	"hour\000"
	.align	2
.LC7:
	.ascii	"day\000"
	.align	2
.LC8:
	.ascii	"month\000"
	.align	2
.LC9:
	.ascii	"year\000"
	.align	2
.LC10:
	.ascii	"wday\000"
	.align	2
.LC11:
	.ascii	"yday\000"
	.section	.text._ZL12_system_dateP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL12_system_dateP4SQVM, %function
_ZL12_system_dateP4SQVM:
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
	movs	r3, #108
	str	r3, [r7, #8]
	ldr	r0, [r7, #4]
	bl	sq_gettop(PLT)
	mov	r3, r0
	cmp	r3, #1
	ite	gt
	movgt	r3, #1
	movle	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L31
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	movs	r1, #2
	mov	r2, r3
	bl	sq_getinteger(PLT)
	ldr	r3, [r7, #12]
	str	r3, [r7, #16]
	ldr	r0, [r7, #4]
	bl	sq_gettop(PLT)
	mov	r3, r0
	cmp	r3, #2
	ite	gt
	movgt	r3, #1
	movle	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L32
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	movs	r1, #3
	mov	r2, r3
	bl	sq_getinteger(PLT)
	b	.L32
.L31:
	add	r3, r7, #16
	mov	r0, r3
	bl	time(PLT)
.L32:
	ldr	r3, [r7, #8]
	cmp	r3, #117
	bne	.L33
	add	r3, r7, #16
	mov	r0, r3
	bl	gmtime(PLT)
	str	r0, [r7, #20]
	b	.L34
.L33:
	add	r3, r7, #16
	mov	r0, r3
	bl	localtime(PLT)
	str	r0, [r7, #20]
.L34:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L35
	ldr	r0, [r7, #4]
	ldr	r3, .L38
.LPIC3:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L37
.L35:
	ldr	r0, [r7, #4]
	bl	sq_newtable(PLT)
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	ldr	r0, [r7, #4]
	ldr	r2, .L38+4
.LPIC4:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	bl	_ZL17_set_integer_slotP4SQVMPKci(PLT)
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #4]
	ldr	r2, .L38+8
.LPIC5:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	bl	_ZL17_set_integer_slotP4SQVMPKci(PLT)
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #8]
	ldr	r0, [r7, #4]
	ldr	r2, .L38+12
.LPIC6:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	bl	_ZL17_set_integer_slotP4SQVMPKci(PLT)
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #12]
	ldr	r0, [r7, #4]
	ldr	r2, .L38+16
.LPIC7:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	bl	_ZL17_set_integer_slotP4SQVMPKci(PLT)
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #16]
	ldr	r0, [r7, #4]
	ldr	r2, .L38+20
.LPIC8:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	bl	_ZL17_set_integer_slotP4SQVMPKci(PLT)
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #20]
	addw	r3, r3, #1900
	ldr	r0, [r7, #4]
	ldr	r2, .L38+24
.LPIC9:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	bl	_ZL17_set_integer_slotP4SQVMPKci(PLT)
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #24]
	ldr	r0, [r7, #4]
	ldr	r2, .L38+28
.LPIC10:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	bl	_ZL17_set_integer_slotP4SQVMPKci(PLT)
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #28]
	ldr	r0, [r7, #4]
	ldr	r2, .L38+32
.LPIC11:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	bl	_ZL17_set_integer_slotP4SQVMPKci(PLT)
	movs	r3, #1
.L37:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L39:
	.align	2
.L38:
	.word	.LC3-(.LPIC3+4)
	.word	.LC4-(.LPIC4+4)
	.word	.LC5-(.LPIC5+4)
	.word	.LC6-(.LPIC6+4)
	.word	.LC7-(.LPIC7+4)
	.word	.LC8-(.LPIC8+4)
	.word	.LC9-(.LPIC9+4)
	.word	.LC10-(.LPIC10+4)
	.word	.LC11-(.LPIC11+4)
	.fnend
	.size	_ZL12_system_dateP4SQVM, .-_ZL12_system_dateP4SQVM
	.section	.rodata
	.align	2
.LC12:
	.ascii	"getenv\000"
	.align	2
.LC13:
	.ascii	".s\000"
	.align	2
.LC14:
	.ascii	"system\000"
	.align	2
.LC15:
	.ascii	"clock\000"
	.align	2
.LC16:
	.ascii	"time\000"
	.align	2
.LC17:
	.ascii	"date\000"
	.align	2
.LC18:
	.ascii	".nn\000"
	.align	2
.LC19:
	.ascii	"remove\000"
	.align	2
.LC20:
	.ascii	"rename\000"
	.align	2
.LC21:
	.ascii	".ss\000"
	.section	.data.rel.local._ZL15systemlib_funcs,"aw",%progbits
	.align	2
	.type	_ZL15systemlib_funcs, %object
	.size	_ZL15systemlib_funcs, 128
_ZL15systemlib_funcs:
	.word	.LC12
	.word	_ZL14_system_getenvP4SQVM
	.word	2
	.word	.LC13
	.word	.LC14
	.word	_ZL14_system_systemP4SQVM
	.word	2
	.word	.LC13
	.word	.LC15
	.word	_ZL13_system_clockP4SQVM
	.word	0
	.word	0
	.word	.LC16
	.word	_ZL12_system_timeP4SQVM
	.word	1
	.word	0
	.word	.LC17
	.word	_ZL12_system_dateP4SQVM
	.word	-1
	.word	.LC18
	.word	.LC19
	.word	_ZL14_system_removeP4SQVM
	.word	2
	.word	.LC13
	.word	.LC20
	.word	_ZL14_system_renameP4SQVM
	.word	3
	.word	.LC21
	.word	0
	.word	0
	.space	8
	.section	.text.sqstd_register_systemlib,"ax",%progbits
	.align	2
	.global	sqstd_register_systemlib
	.thumb
	.thumb_func
	.type	sqstd_register_systemlib, %function
sqstd_register_systemlib:
	.fnstart
.LFB10:
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
	b	.L41
.L42:
	ldr	r3, .L44
.LPIC12:
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
	ldr	r3, .L44+4
.LPIC13:
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
	ldr	r3, .L44+8
.LPIC14:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #12]
	lsls	r3, r3, #4
	add	r3, r3, r2
	adds	r3, r3, #8
	ldr	r2, [r3]
	ldr	r3, .L44+12
.LPIC15:
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
	ldr	r3, .L44+16
.LPIC16:
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
.L41:
	ldr	r3, .L44+20
.LPIC17:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #12]
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L42
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L45:
	.align	2
.L44:
	.word	_ZL15systemlib_funcs-(.LPIC12+4)
	.word	_ZL15systemlib_funcs-(.LPIC13+4)
	.word	_ZL15systemlib_funcs-(.LPIC14+4)
	.word	_ZL15systemlib_funcs-(.LPIC15+4)
	.word	_ZL15systemlib_funcs-(.LPIC16+4)
	.word	_ZL15systemlib_funcs-(.LPIC17+4)
	.fnend
	.size	sqstd_register_systemlib, .-sqstd_register_systemlib
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
