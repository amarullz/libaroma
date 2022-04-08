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
	.file	"sqlexer.cpp"
	.section	.text._ZnwjPv,"axG",%progbits,_ZnwjPv,comdat
	.align	2
	.weak	_ZnwjPv
	.thumb
	.thumb_func
	.type	_ZnwjPv, %function
_ZnwjPv:
	.fnstart
.LFB12:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZnwjPv, .-_ZnwjPv
	.section	.text._ZdlPvS_,"axG",%progbits,_ZdlPvS_,comdat
	.align	2
	.weak	_ZdlPvS_
	.thumb
	.thumb_func
	.type	_ZdlPvS_, %function
_ZdlPvS_:
	.fnstart
.LFB14:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZdlPvS_, .-_ZdlPvS_
	.section	.text._ZN11tagSQObjectC2Ev,"axG",%progbits,_ZN11tagSQObjectC5Ev,comdat
	.align	2
	.weak	_ZN11tagSQObjectC2Ev
	.thumb
	.thumb_func
	.type	_ZN11tagSQObjectC2Ev, %function
_ZN11tagSQObjectC2Ev:
	.fnstart
.LFB39:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN11tagSQObjectC2Ev, .-_ZN11tagSQObjectC2Ev
	.weak	_ZN11tagSQObjectC1Ev
	.thumb_set _ZN11tagSQObjectC1Ev,_ZN11tagSQObjectC2Ev
	.section	.text._ZN11SQObjectPtrC2Ev,"axG",%progbits,_ZN11SQObjectPtrC5Ev,comdat
	.align	2
	.weak	_ZN11SQObjectPtrC2Ev
	.thumb
	.thumb_func
	.type	_ZN11SQObjectPtrC2Ev, %function
_ZN11SQObjectPtrC2Ev:
	.fnstart
.LFB41:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN11tagSQObjectC2Ev(PLT)
	ldr	r2, [r7, #4]
	movs	r3, #1
	movt	r3, 256
	str	r3, [r2]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN11SQObjectPtrC2Ev, .-_ZN11SQObjectPtrC2Ev
	.weak	_ZN11SQObjectPtrC1Ev
	.thumb_set _ZN11SQObjectPtrC1Ev,_ZN11SQObjectPtrC2Ev
	.section	.rodata
	.align	2
.LC0:
	.ascii	"_unVal.pTable\000"
	.align	2
.LC1:
	.ascii	"../../../libs/squirrel/squirrel/sqobject.h\000"
	.section	.text._ZN11SQObjectPtrC2EP8SQString,"axG",%progbits,_ZN11SQObjectPtrC5EP8SQString,comdat
	.align	2
	.weak	_ZN11SQObjectPtrC2EP8SQString
	.thumb
	.thumb_func
	.type	_ZN11SQObjectPtrC2EP8SQString, %function
_ZN11SQObjectPtrC2EP8SQString:
	.fnstart
.LFB82:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN11tagSQObjectC2Ev(PLT)
	ldr	r2, [r7, #4]
	movs	r3, #16
	movt	r3, 2048
	str	r3, [r2]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L11
	ldr	r3, .L14
.LPIC0:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L14+4
.LPIC1:
	add	r3, pc
	mov	r1, r3
	movs	r2, #234
	ldr	r3, .L14+8
.LPIC2:
	add	r3, pc
	bl	__assert_fail(PLT)
.L11:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #4]
	adds	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L15:
	.align	2
.L14:
	.word	.LC0-(.LPIC0+4)
	.word	.LC1-(.LPIC1+4)
	.word	_ZZN11SQObjectPtrC1EP8SQStringE19__PRETTY_FUNCTION__-(.LPIC2+4)
	.cantunwind
	.fnend
	.size	_ZN11SQObjectPtrC2EP8SQString, .-_ZN11SQObjectPtrC2EP8SQString
	.weak	_ZN11SQObjectPtrC1EP8SQString
	.thumb_set _ZN11SQObjectPtrC1EP8SQString,_ZN11SQObjectPtrC2EP8SQString
	.section	.text._ZN11SQObjectPtrC2Ei,"axG",%progbits,_ZN11SQObjectPtrC5Ei,comdat
	.align	2
	.weak	_ZN11SQObjectPtrC2Ei
	.thumb
	.thumb_func
	.type	_ZN11SQObjectPtrC2Ei, %function
_ZN11SQObjectPtrC2Ei:
	.fnstart
.LFB102:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN11tagSQObjectC2Ev(PLT)
	ldr	r2, [r7, #4]
	movs	r3, #2
	movt	r3, 1280
	str	r3, [r2]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN11SQObjectPtrC2Ei, .-_ZN11SQObjectPtrC2Ei
	.weak	_ZN11SQObjectPtrC1Ei
	.thumb_set _ZN11SQObjectPtrC1Ei,_ZN11SQObjectPtrC2Ei
	.section	.text._ZN11SQObjectPtraSEi,"axG",%progbits,_ZN11SQObjectPtraSEi,comdat
	.align	2
	.weak	_ZN11SQObjectPtraSEi
	.thumb
	.thumb_func
	.type	_ZN11SQObjectPtraSEi, %function
_ZN11SQObjectPtraSEi:
	.fnstart
.LFB104:
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
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r3, r3, #134217728
	cmp	r3, #0
	beq	.L20
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L20
	movs	r3, #1
	b	.L21
.L20:
	movs	r3, #0
.L21:
	cmp	r3, #0
	beq	.L22
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #4]
	mov	r0, r2
	blx	r3
.L22:
	ldr	r2, [r7, #4]
	movs	r3, #2
	movt	r3, 1280
	str	r3, [r2]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQObjectPtraSEi, .-_ZN11SQObjectPtraSEi
	.section	.text._ZN11SQObjectPtrD2Ev,"axG",%progbits,_ZN11SQObjectPtrD5Ev,comdat
	.align	2
	.weak	_ZN11SQObjectPtrD2Ev
	.thumb
	.thumb_func
	.type	_ZN11SQObjectPtrD2Ev, %function
_ZN11SQObjectPtrD2Ev:
	.fnstart
.LFB118:
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
	ldr	r3, [r3]
	and	r3, r3, #134217728
	cmp	r3, #0
	beq	.L25
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L25
	movs	r3, #1
	b	.L26
.L25:
	movs	r3, #0
.L26:
	cmp	r3, #0
	beq	.L27
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #4]
	mov	r0, r2
	blx	r3
.L27:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQObjectPtrD2Ev, .-_ZN11SQObjectPtrD2Ev
	.weak	_ZN11SQObjectPtrD1Ev
	.thumb_set _ZN11SQObjectPtrD1Ev,_ZN11SQObjectPtrD2Ev
	.section	.text._ZN7SQTable6CreateEP13SQSharedStatei,"axG",%progbits,_ZN7SQTable6CreateEP13SQSharedStatei,comdat
	.align	2
	.weak	_ZN7SQTable6CreateEP13SQSharedStatei
	.thumb
	.thumb_func
	.type	_ZN7SQTable6CreateEP13SQSharedStatei, %function
_ZN7SQTable6CreateEP13SQSharedStatei:
	.fnstart
.LFB139:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r0, #44
.LEHB0:
	bl	_Z12sq_vm_mallocj(PLT)
.LEHE0:
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r5, [r7, #12]
	movs	r0, #44
	mov	r1, r5
	bl	_ZnwjPv(PLT)
	mov	r4, r0
	cmp	r4, #0
	beq	.L31
	mov	r0, r4
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
.LEHB1:
	bl	_ZN7SQTableC1EP13SQSharedStatei(PLT)
.LEHE1:
.L31:
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #12]
	b	.L35
.L34:
	mov	r0, r4
	mov	r1, r5
	bl	_ZdlPvS_(PLT)
.LEHB2:
	bl	__cxa_end_cleanup(PLT)
.LEHE2:
.L35:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.global	__gxx_personality_v0
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA139:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE139-.LLSDACSB139
.LLSDACSB139:
	.uleb128 .LEHB0-.LFB139
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB139
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L34-.LFB139
	.uleb128 0
	.uleb128 .LEHB2-.LFB139
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE139:
	.section	.text._ZN7SQTable6CreateEP13SQSharedStatei,"axG",%progbits,_ZN7SQTable6CreateEP13SQSharedStatei,comdat
	.fnend
	.size	_ZN7SQTable6CreateEP13SQSharedStatei, .-_ZN7SQTable6CreateEP13SQSharedStatei
	.section	.text._ZN7SQLexerC2Ev,"ax",%progbits
	.align	2
	.global	_ZN7SQLexerC2Ev
	.thumb
	.thumb_func
	.type	_ZN7SQLexerC2Ev, %function
_ZN7SQLexerC2Ev:
	.fnstart
.LFB160:
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
	adds	r3, r3, #56
	mov	r0, r3
	bl	_ZN8sqvectorIcEC1Ev(PLT)
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN7SQLexerC2Ev, .-_ZN7SQLexerC2Ev
	.global	_ZN7SQLexerC1Ev
	.thumb_set _ZN7SQLexerC1Ev,_ZN7SQLexerC2Ev
	.section	.text._ZN7SQLexerD2Ev,"ax",%progbits
	.align	2
	.global	_ZN7SQLexerD2Ev
	.thumb
	.thumb_func
	.type	_ZN7SQLexerD2Ev, %function
_ZN7SQLexerD2Ev:
	.fnstart
.LFB163:
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
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #4]
	mov	r0, r2
.LEHB3:
	blx	r3
.LEHE3:
	ldr	r3, [r7, #4]
	adds	r3, r3, #56
	mov	r0, r3
.LEHB4:
	bl	_ZN8sqvectorIcED1Ev(PLT)
.LEHE4:
	ldr	r3, [r7, #4]
	b	.L44
.L43:
	ldr	r3, [r7, #4]
	adds	r3, r3, #56
	mov	r0, r3
	bl	_ZN8sqvectorIcED1Ev(PLT)
.LEHB5:
	bl	__cxa_end_cleanup(PLT)
.LEHE5:
.L44:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA163:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE163-.LLSDACSB163
.LLSDACSB163:
	.uleb128 .LEHB3-.LFB163
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L43-.LFB163
	.uleb128 0
	.uleb128 .LEHB4-.LFB163
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB163
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE163:
	.section	.text._ZN7SQLexerD2Ev
	.fnend
	.size	_ZN7SQLexerD2Ev, .-_ZN7SQLexerD2Ev
	.global	_ZN7SQLexerD1Ev
	.thumb_set _ZN7SQLexerD1Ev,_ZN7SQLexerD2Ev
	.section	.rodata
	.align	2
.LC2:
	.ascii	"while\000"
	.align	2
.LC3:
	.ascii	"do\000"
	.align	2
.LC4:
	.ascii	"if\000"
	.align	2
.LC5:
	.ascii	"else\000"
	.align	2
.LC6:
	.ascii	"break\000"
	.align	2
.LC7:
	.ascii	"continue\000"
	.align	2
.LC8:
	.ascii	"return\000"
	.align	2
.LC9:
	.ascii	"null\000"
	.align	2
.LC10:
	.ascii	"function\000"
	.align	2
.LC11:
	.ascii	"local\000"
	.align	2
.LC12:
	.ascii	"for\000"
	.align	2
.LC13:
	.ascii	"foreach\000"
	.align	2
.LC14:
	.ascii	"in\000"
	.align	2
.LC15:
	.ascii	"typeof\000"
	.align	2
.LC16:
	.ascii	"base\000"
	.align	2
.LC17:
	.ascii	"delete\000"
	.align	2
.LC18:
	.ascii	"try\000"
	.align	2
.LC19:
	.ascii	"catch\000"
	.align	2
.LC20:
	.ascii	"throw\000"
	.align	2
.LC21:
	.ascii	"clone\000"
	.align	2
.LC22:
	.ascii	"yield\000"
	.align	2
.LC23:
	.ascii	"resume\000"
	.align	2
.LC24:
	.ascii	"switch\000"
	.align	2
.LC25:
	.ascii	"case\000"
	.align	2
.LC26:
	.ascii	"default\000"
	.align	2
.LC27:
	.ascii	"this\000"
	.align	2
.LC28:
	.ascii	"class\000"
	.align	2
.LC29:
	.ascii	"extends\000"
	.align	2
.LC30:
	.ascii	"constructor\000"
	.align	2
.LC31:
	.ascii	"instanceof\000"
	.align	2
.LC32:
	.ascii	"true\000"
	.align	2
.LC33:
	.ascii	"false\000"
	.align	2
.LC34:
	.ascii	"static\000"
	.align	2
.LC35:
	.ascii	"enum\000"
	.align	2
.LC36:
	.ascii	"const\000"
	.section	.text._ZN7SQLexer4InitEP13SQSharedStatePFiPvES2_PFvS2_PKcES2_,"ax",%progbits
	.align	2
	.global	_ZN7SQLexer4InitEP13SQSharedStatePFiPvES2_PFvS2_PKcES2_
	.thumb
	.thumb_func
	.type	_ZN7SQLexer4InitEP13SQSharedStatePFiPvES2_PFvS2_PKcES2_, %function
_ZN7SQLexer4InitEP13SQSharedStatePFiPvES2_PFvS2_PKcES2_:
	.fnstart
.LFB165:
	@ args = 8, pretend = 0, frame = 576
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #580
	sub	sp, sp, #580
	.setfp r7, sp, #0
	add	r7, sp, #0
	add	r4, r7, #12
	str	r0, [r4]
	add	r0, r7, #8
	str	r1, [r0]
	adds	r1, r7, #4
	str	r2, [r1]
	mov	r2, r7
	str	r3, [r2]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r7, #592]
	str	r2, [r3, #68]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r7, #596]
	str	r2, [r3, #72]
	add	r3, r7, #12
	ldr	r3, [r3]
	add	r2, r7, #8
	ldr	r2, [r2]
	str	r2, [r3, #52]
	add	r3, r7, #8
	ldr	r0, [r3]
	movs	r1, #26
.LEHB6:
	bl	_ZN7SQTable6CreateEP13SQSharedStatei(PLT)
	mov	r2, r0
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #4]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r4, [r3, #4]
	add	r3, r7, #8
	ldr	r0, [r3]
	ldr	r3, .L187
.LPIC3:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE6:
	mov	r3, r0
	add	r2, r7, #16
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #24
	mov	r0, r3
	mov	r1, #274
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r2, r7, #16
	add	r3, r7, #24
	mov	r0, r4
	mov	r1, r2
	mov	r2, r3
.LEHB7:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE7:
	add	r3, r7, #24
	mov	r0, r3
.LEHB8:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE8:
	add	r3, r7, #16
	mov	r0, r3
.LEHB9:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r4, [r3, #4]
	add	r3, r7, #8
	ldr	r0, [r3]
	ldr	r3, .L187+4
.LPIC4:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE9:
	mov	r3, r0
	add	r2, r7, #32
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #40
	mov	r0, r3
	movw	r1, #277
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r2, r7, #32
	add	r3, r7, #40
	mov	r0, r4
	mov	r1, r2
	mov	r2, r3
.LEHB10:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE10:
	add	r3, r7, #40
	mov	r0, r3
.LEHB11:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE11:
	add	r3, r7, #32
	mov	r0, r3
.LEHB12:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r4, [r3, #4]
	add	r3, r7, #8
	ldr	r0, [r3]
	ldr	r3, .L187+8
.LPIC5:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE12:
	mov	r3, r0
	add	r2, r7, #48
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #56
	mov	r0, r3
	mov	r1, #272
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r2, r7, #48
	add	r3, r7, #56
	mov	r0, r4
	mov	r1, r2
	mov	r2, r3
.LEHB13:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE13:
	add	r3, r7, #56
	mov	r0, r3
.LEHB14:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE14:
	add	r3, r7, #48
	mov	r0, r3
.LEHB15:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r4, [r3, #4]
	add	r3, r7, #8
	ldr	r0, [r3]
	ldr	r3, .L187+12
.LPIC6:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE15:
	mov	r3, r0
	add	r2, r7, #64
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #72
	mov	r0, r3
	movw	r1, #273
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r2, r7, #64
	add	r3, r7, #72
	mov	r0, r4
	mov	r1, r2
	mov	r2, r3
.LEHB16:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE16:
	add	r3, r7, #72
	mov	r0, r3
.LEHB17:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE17:
	add	r3, r7, #64
	mov	r0, r3
.LEHB18:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r4, [r3, #4]
	add	r3, r7, #8
	ldr	r0, [r3]
	ldr	r3, .L187+16
.LPIC7:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE18:
	mov	r3, r0
	add	r2, r7, #80
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #88
	mov	r0, r3
	movw	r1, #275
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r2, r7, #80
	add	r3, r7, #88
	mov	r0, r4
	mov	r1, r2
	mov	r2, r3
.LEHB19:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE19:
	add	r3, r7, #88
	mov	r0, r3
.LEHB20:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE20:
	add	r3, r7, #80
	mov	r0, r3
.LEHB21:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r4, [r3, #4]
	add	r3, r7, #8
	ldr	r0, [r3]
	ldr	r3, .L187+20
.LPIC8:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE21:
	mov	r3, r0
	add	r2, r7, #96
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #104
	mov	r0, r3
	movw	r1, #291
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r2, r7, #96
	add	r3, r7, #104
	mov	r0, r4
	mov	r1, r2
	mov	r2, r3
.LEHB22:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE22:
	add	r3, r7, #104
	mov	r0, r3
.LEHB23:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE23:
	add	r3, r7, #96
	mov	r0, r3
.LEHB24:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r4, [r3, #4]
	add	r3, r7, #8
	ldr	r0, [r3]
	ldr	r3, .L187+24
.LPIC9:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE24:
	mov	r3, r0
	add	r2, r7, #112
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #120
	mov	r0, r3
	mov	r1, #286
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r2, r7, #112
	add	r3, r7, #120
	mov	r0, r4
	mov	r1, r2
	mov	r2, r3
.LEHB25:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE25:
	add	r3, r7, #120
	mov	r0, r3
.LEHB26:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE26:
	add	r3, r7, #112
	mov	r0, r3
.LEHB27:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r4, [r3, #4]
	add	r3, r7, #8
	ldr	r0, [r3]
	ldr	r3, .L187+28
.LPIC10:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE27:
	mov	r3, r0
	add	r2, r7, #128
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #136
	mov	r0, r3
	mov	r1, #278
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r2, r7, #128
	add	r3, r7, #136
	mov	r0, r4
	mov	r1, r2
	mov	r2, r3
.LEHB28:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE28:
	add	r3, r7, #136
	mov	r0, r3
.LEHB29:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE29:
	add	r3, r7, #128
	mov	r0, r3
.LEHB30:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r4, [r3, #4]
	add	r3, r7, #8
	ldr	r0, [r3]
	ldr	r3, .L187+32
.LPIC11:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE30:
	mov	r3, r0
	add	r2, r7, #144
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #152
	mov	r0, r3
	movw	r1, #285
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r2, r7, #144
	add	r3, r7, #152
	mov	r0, r4
	mov	r1, r2
	mov	r2, r3
.LEHB31:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE31:
	add	r3, r7, #152
	mov	r0, r3
.LEHB32:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE32:
	add	r3, r7, #144
	mov	r0, r3
.LEHB33:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r4, [r3, #4]
	add	r3, r7, #8
	ldr	r0, [r3]
	ldr	r3, .L187+36
.LPIC12:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE33:
	mov	r3, r0
	add	r2, r7, #160
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #168
	mov	r0, r3
	movw	r1, #283
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r2, r7, #160
	add	r3, r7, #168
	mov	r0, r4
	mov	r1, r2
	mov	r2, r3
.LEHB34:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE34:
	add	r3, r7, #168
	mov	r0, r3
.LEHB35:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE35:
	add	r3, r7, #160
	mov	r0, r3
.LEHB36:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r4, [r3, #4]
	add	r3, r7, #8
	ldr	r0, [r3]
	ldr	r3, .L187+40
.LPIC13:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE36:
	mov	r3, r0
	add	r2, r7, #176
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #184
	mov	r0, r3
	mov	r1, #276
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r2, r7, #176
	add	r3, r7, #184
	mov	r0, r4
	mov	r1, r2
	mov	r2, r3
.LEHB37:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE37:
	add	r3, r7, #184
	mov	r0, r3
.LEHB38:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE38:
	add	r3, r7, #176
	mov	r0, r3
.LEHB39:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r4, [r3, #4]
	add	r3, r7, #8
	ldr	r0, [r3]
	ldr	r3, .L187+44
.LPIC14:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE39:
	mov	r3, r0
	add	r2, r7, #192
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #200
	mov	r0, r3
	movw	r1, #279
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r2, r7, #192
	add	r3, r7, #200
	mov	r0, r4
	mov	r1, r2
	mov	r2, r3
.LEHB40:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE40:
	add	r3, r7, #200
	mov	r0, r3
.LEHB41:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE41:
	add	r3, r7, #192
	mov	r0, r3
.LEHB42:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r4, [r3, #4]
	add	r3, r7, #8
	ldr	r0, [r3]
	ldr	r3, .L187+48
.LPIC15:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE42:
	mov	r3, r0
	add	r2, r7, #208
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #216
	mov	r0, r3
	mov	r1, #280
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r2, r7, #208
	add	r3, r7, #216
	mov	r0, r4
	mov	r1, r2
	mov	r2, r3
.LEHB43:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE43:
	add	r3, r7, #216
	mov	r0, r3
.LEHB44:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE44:
	add	r3, r7, #208
	mov	r0, r3
.LEHB45:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r4, [r3, #4]
	add	r3, r7, #8
	ldr	r0, [r3]
	ldr	r3, .L187+52
.LPIC16:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE45:
	mov	r3, r0
	add	r2, r7, #224
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #232
	mov	r0, r3
	movw	r1, #287
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r2, r7, #224
	add	r3, r7, #232
	mov	r0, r4
	mov	r1, r2
	mov	r2, r3
.LEHB46:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE46:
	add	r3, r7, #232
	mov	r0, r3
.LEHB47:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE47:
	add	r3, r7, #224
	mov	r0, r3
.LEHB48:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r4, [r3, #4]
	add	r3, r7, #8
	ldr	r0, [r3]
	ldr	r3, .L187+56
.LPIC17:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE48:
	mov	r3, r0
	add	r2, r7, #240
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #248
	mov	r0, r3
	mov	r1, #262
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r2, r7, #240
	add	r3, r7, #248
	mov	r0, r4
	mov	r1, r2
	mov	r2, r3
.LEHB49:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE49:
	add	r3, r7, #248
	mov	r0, r3
.LEHB50:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE50:
	add	r3, r7, #240
	mov	r0, r3
.LEHB51:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r4, [r3, #4]
	add	r3, r7, #8
	ldr	r0, [r3]
	ldr	r3, .L187+60
.LPIC18:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE51:
	mov	r3, r0
	add	r2, r7, #256
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #264
	mov	r0, r3
	movw	r1, #263
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r2, r7, #256
	add	r3, r7, #264
	mov	r0, r4
	mov	r1, r2
	mov	r2, r3
.LEHB52:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE52:
	add	r3, r7, #264
	mov	r0, r3
.LEHB53:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE53:
	add	r3, r7, #256
	mov	r0, r3
.LEHB54:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r4, [r3, #4]
	add	r3, r7, #8
	ldr	r0, [r3]
	ldr	r3, .L187+64
.LPIC19:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE54:
	mov	r3, r0
	add	r2, r7, #272
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #280
	mov	r0, r3
	movw	r1, #293
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r2, r7, #272
	add	r3, r7, #280
	mov	r0, r4
	mov	r1, r2
	mov	r2, r3
.LEHB55:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE55:
	add	r3, r7, #280
	mov	r0, r3
.LEHB56:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE56:
	add	r3, r7, #272
	mov	r0, r3
.LEHB57:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r4, [r3, #4]
	add	r3, r7, #8
	ldr	r0, [r3]
	ldr	r3, .L187+68
.LPIC20:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE57:
	mov	r3, r0
	add	r2, r7, #288
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #296
	mov	r0, r3
	mov	r1, #294
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r2, r7, #288
	add	r3, r7, #296
	mov	r0, r4
	mov	r1, r2
	mov	r2, r3
.LEHB58:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE58:
	add	r3, r7, #296
	mov	r0, r3
.LEHB59:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE59:
	add	r3, r7, #288
	mov	r0, r3
.LEHB60:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r4, [r3, #4]
	add	r3, r7, #8
	ldr	r0, [r3]
	ldr	r3, .L187+72
.LPIC21:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE60:
	mov	r3, r0
	add	r2, r7, #304
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #312
	mov	r0, r3
	movw	r1, #295
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r2, r7, #304
	add	r3, r7, #312
	mov	r0, r4
	mov	r1, r2
	mov	r2, r3
.LEHB61:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE61:
	add	r3, r7, #312
	mov	r0, r3
.LEHB62:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE62:
	add	r3, r7, #304
	mov	r0, r3
.LEHB63:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r4, [r3, #4]
	add	r3, r7, #8
	ldr	r0, [r3]
	ldr	r3, .L187+76
.LPIC22:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE63:
	mov	r3, r0
	add	r2, r7, #320
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #328
	mov	r0, r3
	mov	r1, #284
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r2, r7, #320
	add	r3, r7, #328
	mov	r0, r4
	mov	r1, r2
	mov	r2, r3
.LEHB64:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE64:
	add	r3, r7, #328
	mov	r0, r3
.LEHB65:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE65:
	add	r3, r7, #320
	mov	r0, r3
.LEHB66:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r4, [r3, #4]
	add	r3, r7, #8
	ldr	r0, [r3]
	ldr	r3, .L187+80
.LPIC23:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE66:
	mov	r3, r0
	add	r2, r7, #336
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #344
	mov	r0, r3
	mov	r1, #292
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r2, r7, #336
	add	r3, r7, #344
	mov	r0, r4
	mov	r1, r2
	mov	r2, r3
.LEHB67:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE67:
	add	r3, r7, #344
	mov	r0, r3
.LEHB68:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE68:
	add	r3, r7, #336
	mov	r0, r3
.LEHB69:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r4, [r3, #4]
	add	r3, r7, #8
	ldr	r0, [r3]
	ldr	r3, .L187+84
.LPIC24:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE69:
	mov	r3, r0
	add	r2, r7, #352
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #360
	mov	r0, r3
	mov	r1, #298
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r2, r7, #352
	add	r3, r7, #360
	mov	r0, r4
	mov	r1, r2
	mov	r2, r3
.LEHB70:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE70:
	add	r3, r7, #360
	mov	r0, r3
.LEHB71:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE71:
	add	r3, r7, #352
	mov	r0, r3
.LEHB72:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r4, [r3, #4]
	add	r3, r7, #8
	ldr	r0, [r3]
	ldr	r3, .L187+88
.LPIC25:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE72:
	mov	r3, r0
	add	r2, r7, #368
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #376
	mov	r0, r3
	mov	r1, #268
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r2, r7, #368
	add	r3, r7, #376
	mov	r0, r4
	mov	r1, r2
	mov	r2, r3
.LEHB73:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE73:
	add	r3, r7, #376
	mov	r0, r3
.LEHB74:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE74:
	add	r3, r7, #368
	mov	r0, r3
.LEHB75:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r4, [r3, #4]
	add	r3, r7, #8
	ldr	r0, [r3]
	ldr	r3, .L187+92
.LPIC26:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE75:
	mov	r3, r0
	add	r2, r7, #384
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #392
	mov	r0, r3
	mov	r1, #300
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r2, r7, #384
	add	r3, r7, #392
	mov	r0, r4
	mov	r1, r2
	mov	r2, r3
.LEHB76:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE76:
	add	r3, r7, #392
	mov	r0, r3
.LEHB77:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE77:
	add	r3, r7, #384
	mov	r0, r3
.LEHB78:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r4, [r3, #4]
	add	r3, r7, #8
	ldr	r0, [r3]
	ldr	r3, .L187+96
.LPIC27:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE78:
	mov	r3, r0
	add	r2, r7, #400
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #408
	mov	r0, r3
	movw	r1, #301
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r2, r7, #400
	add	r3, r7, #408
	mov	r0, r4
	mov	r1, r2
	mov	r2, r3
.LEHB79:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE79:
	add	r3, r7, #408
	mov	r0, r3
.LEHB80:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE80:
	add	r3, r7, #400
	mov	r0, r3
.LEHB81:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r4, [r3, #4]
	add	r3, r7, #8
	ldr	r0, [r3]
	ldr	r3, .L187+100
.LPIC28:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE81:
	mov	r3, r0
	add	r2, r7, #416
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #424
	mov	r0, r3
	mov	r1, #302
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r2, r7, #416
	add	r3, r7, #424
	mov	r0, r4
	mov	r1, r2
	mov	r2, r3
.LEHB82:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE82:
	add	r3, r7, #424
	mov	r0, r3
.LEHB83:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE83:
	add	r3, r7, #416
	mov	r0, r3
.LEHB84:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r4, [r3, #4]
	add	r3, r7, #8
	ldr	r0, [r3]
	ldr	r3, .L187+104
.LPIC29:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE84:
	mov	r3, r0
	add	r2, r7, #432
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #440
	mov	r0, r3
	movw	r1, #307
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r2, r7, #432
	add	r3, r7, #440
	mov	r0, r4
	mov	r1, r2
	mov	r2, r3
.LEHB85:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE85:
	add	r3, r7, #440
	mov	r0, r3
.LEHB86:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE86:
	add	r3, r7, #432
	mov	r0, r3
.LEHB87:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r4, [r3, #4]
	add	r3, r7, #8
	ldr	r0, [r3]
	ldr	r3, .L187+108
.LPIC30:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE87:
	mov	r3, r0
	add	r2, r7, #448
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #456
	mov	r0, r3
	mov	r1, #308
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r2, r7, #448
	add	r3, r7, #456
	mov	r0, r4
	mov	r1, r2
	mov	r2, r3
.LEHB88:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE88:
	add	r3, r7, #456
	mov	r0, r3
.LEHB89:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE89:
	add	r3, r7, #448
	mov	r0, r3
.LEHB90:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r4, [r3, #4]
	add	r3, r7, #8
	ldr	r0, [r3]
	ldr	r3, .L187+112
.LPIC31:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE90:
	mov	r3, r0
	add	r2, r7, #464
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #472
	mov	r0, r3
	mov	r1, #310
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r2, r7, #464
	add	r3, r7, #472
	mov	r0, r4
	mov	r1, r2
	mov	r2, r3
.LEHB91:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE91:
	add	r3, r7, #472
	mov	r0, r3
.LEHB92:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE92:
	add	r3, r7, #464
	mov	r0, r3
.LEHB93:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r4, [r3, #4]
	add	r3, r7, #8
	ldr	r0, [r3]
	ldr	r3, .L187+116
.LPIC32:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE93:
	mov	r3, r0
	add	r2, r7, #480
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #488
	mov	r0, r3
	movw	r1, #311
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r2, r7, #480
	add	r3, r7, #488
	mov	r0, r4
	mov	r1, r2
	mov	r2, r3
.LEHB94:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE94:
	add	r3, r7, #488
	mov	r0, r3
.LEHB95:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE95:
	add	r3, r7, #480
	mov	r0, r3
.LEHB96:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r4, [r3, #4]
	add	r3, r7, #8
	ldr	r0, [r3]
	ldr	r3, .L187+120
.LPIC33:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE96:
	mov	r3, r0
	add	r2, r7, #496
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #504
	mov	r0, r3
	movw	r1, #315
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r2, r7, #496
	add	r3, r7, #504
	mov	r0, r4
	mov	r1, r2
	mov	r2, r3
.LEHB97:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE97:
	add	r3, r7, #504
	mov	r0, r3
.LEHB98:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE98:
	add	r3, r7, #496
	mov	r0, r3
.LEHB99:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r4, [r3, #4]
	add	r3, r7, #8
	ldr	r0, [r3]
	ldr	r3, .L187+124
.LPIC34:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE99:
	mov	r3, r0
	add	r2, r7, #512
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #520
	mov	r0, r3
	mov	r1, #316
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r2, r7, #512
	add	r3, r7, #520
	mov	r0, r4
	mov	r1, r2
	mov	r2, r3
.LEHB100:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE100:
	add	r3, r7, #520
	mov	r0, r3
.LEHB101:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE101:
	add	r3, r7, #512
	mov	r0, r3
.LEHB102:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r4, [r3, #4]
	add	r3, r7, #8
	ldr	r0, [r3]
	ldr	r3, .L187+128
.LPIC35:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE102:
	mov	r3, r0
	add	r2, r7, #528
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #536
	mov	r0, r3
	mov	r1, #322
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r2, r7, #528
	add	r3, r7, #536
	mov	r0, r4
	mov	r1, r2
	mov	r2, r3
.LEHB103:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE103:
	add	r3, r7, #536
	mov	r0, r3
.LEHB104:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE104:
	add	r3, r7, #528
	mov	r0, r3
.LEHB105:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r4, [r3, #4]
	add	r3, r7, #8
	ldr	r0, [r3]
	ldr	r3, .L187+132
.LPIC36:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE105:
	mov	r3, r0
	add	r2, r7, #544
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #552
	mov	r0, r3
	movw	r1, #323
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r2, r7, #544
	add	r3, r7, #552
	mov	r0, r4
	mov	r1, r2
	mov	r2, r3
.LEHB106:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE106:
	add	r3, r7, #552
	mov	r0, r3
.LEHB107:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE107:
	add	r3, r7, #544
	mov	r0, r3
.LEHB108:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r4, [r3, #4]
	add	r3, r7, #8
	ldr	r0, [r3]
	ldr	r3, .L187+136
.LPIC37:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE108:
	mov	r3, r0
	add	r2, r7, #560
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #568
	mov	r0, r3
	mov	r1, #324
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r2, r7, #560
	add	r3, r7, #568
	mov	r0, r4
	mov	r1, r2
	mov	r2, r3
.LEHB109:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE109:
	add	r3, r7, #568
	mov	r0, r3
.LEHB110:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE110:
	add	r3, r7, #560
	mov	r0, r3
.LEHB111:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	add	r3, r7, #12
	ldr	r3, [r3]
	adds	r2, r7, #4
	ldr	r2, [r2]
	str	r2, [r3, #40]
	add	r3, r7, #12
	ldr	r3, [r3]
	mov	r2, r7
	ldr	r2, [r2]
	str	r2, [r3, #44]
	add	r3, r7, #12
	ldr	r3, [r3]
	movs	r2, #1
	str	r2, [r3, #16]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #16]
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #20]
	add	r3, r7, #12
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [r3, #24]
	add	r3, r7, #12
	ldr	r3, [r3]
	mov	r2, #-1
	str	r2, [r3, #12]
	add	r3, r7, #12
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [r3, #8]
	add	r3, r7, #12
	ldr	r0, [r3]
	bl	_ZN7SQLexer4NextEv(PLT)
.LEHE111:
	b	.L186
.L117:
	add	r3, r7, #24
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L47
.L116:
.L47:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB112:
	bl	__cxa_end_cleanup(PLT)
.LEHE112:
.L119:
	add	r3, r7, #40
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L49
.L118:
.L49:
	add	r3, r7, #32
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB113:
	bl	__cxa_end_cleanup(PLT)
.LEHE113:
.L121:
	add	r3, r7, #56
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L51
.L120:
.L51:
	add	r3, r7, #48
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB114:
	bl	__cxa_end_cleanup(PLT)
.LEHE114:
.L123:
	add	r3, r7, #72
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L53
.L122:
.L53:
	add	r3, r7, #64
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB115:
	bl	__cxa_end_cleanup(PLT)
.LEHE115:
.L125:
	add	r3, r7, #88
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L55
.L124:
.L55:
	add	r3, r7, #80
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB116:
	bl	__cxa_end_cleanup(PLT)
.LEHE116:
.L127:
	add	r3, r7, #104
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L57
.L126:
.L57:
	add	r3, r7, #96
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB117:
	bl	__cxa_end_cleanup(PLT)
.LEHE117:
.L129:
	add	r3, r7, #120
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L59
.L128:
.L59:
	add	r3, r7, #112
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB118:
	bl	__cxa_end_cleanup(PLT)
.LEHE118:
.L131:
	add	r3, r7, #136
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L61
.L130:
.L61:
	add	r3, r7, #128
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB119:
	bl	__cxa_end_cleanup(PLT)
.LEHE119:
.L133:
	add	r3, r7, #152
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L63
.L132:
.L63:
	add	r3, r7, #144
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB120:
	bl	__cxa_end_cleanup(PLT)
.LEHE120:
.L135:
	add	r3, r7, #168
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L65
.L134:
.L65:
	add	r3, r7, #160
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB121:
	bl	__cxa_end_cleanup(PLT)
.LEHE121:
.L137:
	add	r3, r7, #184
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L67
.L136:
.L67:
	add	r3, r7, #176
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB122:
	bl	__cxa_end_cleanup(PLT)
.LEHE122:
.L139:
	add	r3, r7, #200
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L69
.L138:
.L69:
	add	r3, r7, #192
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB123:
	bl	__cxa_end_cleanup(PLT)
.LEHE123:
.L141:
	add	r3, r7, #216
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L71
.L140:
.L71:
	add	r3, r7, #208
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB124:
	bl	__cxa_end_cleanup(PLT)
.LEHE124:
.L143:
	add	r3, r7, #232
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L73
.L142:
.L73:
	add	r3, r7, #224
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB125:
	bl	__cxa_end_cleanup(PLT)
.LEHE125:
.L145:
	add	r3, r7, #248
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L75
.L188:
	.align	2
.L187:
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
	.word	.LC24-(.LPIC25+4)
	.word	.LC25-(.LPIC26+4)
	.word	.LC26-(.LPIC27+4)
	.word	.LC27-(.LPIC28+4)
	.word	.LC28-(.LPIC29+4)
	.word	.LC29-(.LPIC30+4)
	.word	.LC30-(.LPIC31+4)
	.word	.LC31-(.LPIC32+4)
	.word	.LC32-(.LPIC33+4)
	.word	.LC33-(.LPIC34+4)
	.word	.LC34-(.LPIC35+4)
	.word	.LC35-(.LPIC36+4)
	.word	.LC36-(.LPIC37+4)
.L144:
.L75:
	add	r3, r7, #240
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB126:
	bl	__cxa_end_cleanup(PLT)
.LEHE126:
.L147:
	add	r3, r7, #264
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L77
.L146:
.L77:
	add	r3, r7, #256
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB127:
	bl	__cxa_end_cleanup(PLT)
.LEHE127:
.L149:
	add	r3, r7, #280
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L79
.L148:
.L79:
	add	r3, r7, #272
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB128:
	bl	__cxa_end_cleanup(PLT)
.LEHE128:
.L151:
	add	r3, r7, #296
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L81
.L150:
.L81:
	add	r3, r7, #288
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB129:
	bl	__cxa_end_cleanup(PLT)
.LEHE129:
.L153:
	add	r3, r7, #312
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L83
.L152:
.L83:
	add	r3, r7, #304
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB130:
	bl	__cxa_end_cleanup(PLT)
.LEHE130:
.L155:
	add	r3, r7, #328
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L85
.L154:
.L85:
	add	r3, r7, #320
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB131:
	bl	__cxa_end_cleanup(PLT)
.LEHE131:
.L157:
	add	r3, r7, #344
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L87
.L156:
.L87:
	add	r3, r7, #336
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB132:
	bl	__cxa_end_cleanup(PLT)
.LEHE132:
.L159:
	add	r3, r7, #360
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L89
.L158:
.L89:
	add	r3, r7, #352
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB133:
	bl	__cxa_end_cleanup(PLT)
.LEHE133:
.L161:
	add	r3, r7, #376
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L91
.L160:
.L91:
	add	r3, r7, #368
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB134:
	bl	__cxa_end_cleanup(PLT)
.LEHE134:
.L163:
	add	r3, r7, #392
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L93
.L162:
.L93:
	add	r3, r7, #384
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB135:
	bl	__cxa_end_cleanup(PLT)
.LEHE135:
.L165:
	add	r3, r7, #408
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L95
.L164:
.L95:
	add	r3, r7, #400
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB136:
	bl	__cxa_end_cleanup(PLT)
.LEHE136:
.L167:
	add	r3, r7, #424
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L97
.L166:
.L97:
	add	r3, r7, #416
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB137:
	bl	__cxa_end_cleanup(PLT)
.LEHE137:
.L169:
	add	r3, r7, #440
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L99
.L168:
.L99:
	add	r3, r7, #432
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB138:
	bl	__cxa_end_cleanup(PLT)
.LEHE138:
.L171:
	add	r3, r7, #456
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L101
.L170:
.L101:
	add	r3, r7, #448
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB139:
	bl	__cxa_end_cleanup(PLT)
.LEHE139:
.L173:
	add	r3, r7, #472
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L103
.L172:
.L103:
	add	r3, r7, #464
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB140:
	bl	__cxa_end_cleanup(PLT)
.LEHE140:
.L175:
	add	r3, r7, #488
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L105
.L174:
.L105:
	add	r3, r7, #480
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB141:
	bl	__cxa_end_cleanup(PLT)
.LEHE141:
.L177:
	add	r3, r7, #504
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L107
.L176:
.L107:
	add	r3, r7, #496
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB142:
	bl	__cxa_end_cleanup(PLT)
.LEHE142:
.L179:
	add	r3, r7, #520
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L109
.L178:
.L109:
	add	r3, r7, #512
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB143:
	bl	__cxa_end_cleanup(PLT)
.LEHE143:
.L181:
	add	r3, r7, #536
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L111
.L180:
.L111:
	add	r3, r7, #528
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB144:
	bl	__cxa_end_cleanup(PLT)
.LEHE144:
.L183:
	add	r3, r7, #552
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L113
.L182:
.L113:
	add	r3, r7, #544
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB145:
	bl	__cxa_end_cleanup(PLT)
.LEHE145:
.L185:
	add	r3, r7, #568
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L115
.L184:
.L115:
	add	r3, r7, #560
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB146:
	bl	__cxa_end_cleanup(PLT)
.LEHE146:
.L186:
	add	r7, r7, #580
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA165:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE165-.LLSDACSB165
.LLSDACSB165:
	.uleb128 .LEHB6-.LFB165
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB165
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L117-.LFB165
	.uleb128 0
	.uleb128 .LEHB8-.LFB165
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L116-.LFB165
	.uleb128 0
	.uleb128 .LEHB9-.LFB165
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB10-.LFB165
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L119-.LFB165
	.uleb128 0
	.uleb128 .LEHB11-.LFB165
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L118-.LFB165
	.uleb128 0
	.uleb128 .LEHB12-.LFB165
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB13-.LFB165
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L121-.LFB165
	.uleb128 0
	.uleb128 .LEHB14-.LFB165
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L120-.LFB165
	.uleb128 0
	.uleb128 .LEHB15-.LFB165
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB16-.LFB165
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L123-.LFB165
	.uleb128 0
	.uleb128 .LEHB17-.LFB165
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L122-.LFB165
	.uleb128 0
	.uleb128 .LEHB18-.LFB165
	.uleb128 .LEHE18-.LEHB18
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB19-.LFB165
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L125-.LFB165
	.uleb128 0
	.uleb128 .LEHB20-.LFB165
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L124-.LFB165
	.uleb128 0
	.uleb128 .LEHB21-.LFB165
	.uleb128 .LEHE21-.LEHB21
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB22-.LFB165
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L127-.LFB165
	.uleb128 0
	.uleb128 .LEHB23-.LFB165
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L126-.LFB165
	.uleb128 0
	.uleb128 .LEHB24-.LFB165
	.uleb128 .LEHE24-.LEHB24
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB25-.LFB165
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L129-.LFB165
	.uleb128 0
	.uleb128 .LEHB26-.LFB165
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L128-.LFB165
	.uleb128 0
	.uleb128 .LEHB27-.LFB165
	.uleb128 .LEHE27-.LEHB27
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB28-.LFB165
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L131-.LFB165
	.uleb128 0
	.uleb128 .LEHB29-.LFB165
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L130-.LFB165
	.uleb128 0
	.uleb128 .LEHB30-.LFB165
	.uleb128 .LEHE30-.LEHB30
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB31-.LFB165
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L133-.LFB165
	.uleb128 0
	.uleb128 .LEHB32-.LFB165
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L132-.LFB165
	.uleb128 0
	.uleb128 .LEHB33-.LFB165
	.uleb128 .LEHE33-.LEHB33
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB34-.LFB165
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L135-.LFB165
	.uleb128 0
	.uleb128 .LEHB35-.LFB165
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L134-.LFB165
	.uleb128 0
	.uleb128 .LEHB36-.LFB165
	.uleb128 .LEHE36-.LEHB36
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB37-.LFB165
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L137-.LFB165
	.uleb128 0
	.uleb128 .LEHB38-.LFB165
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L136-.LFB165
	.uleb128 0
	.uleb128 .LEHB39-.LFB165
	.uleb128 .LEHE39-.LEHB39
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB40-.LFB165
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L139-.LFB165
	.uleb128 0
	.uleb128 .LEHB41-.LFB165
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L138-.LFB165
	.uleb128 0
	.uleb128 .LEHB42-.LFB165
	.uleb128 .LEHE42-.LEHB42
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB43-.LFB165
	.uleb128 .LEHE43-.LEHB43
	.uleb128 .L141-.LFB165
	.uleb128 0
	.uleb128 .LEHB44-.LFB165
	.uleb128 .LEHE44-.LEHB44
	.uleb128 .L140-.LFB165
	.uleb128 0
	.uleb128 .LEHB45-.LFB165
	.uleb128 .LEHE45-.LEHB45
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB46-.LFB165
	.uleb128 .LEHE46-.LEHB46
	.uleb128 .L143-.LFB165
	.uleb128 0
	.uleb128 .LEHB47-.LFB165
	.uleb128 .LEHE47-.LEHB47
	.uleb128 .L142-.LFB165
	.uleb128 0
	.uleb128 .LEHB48-.LFB165
	.uleb128 .LEHE48-.LEHB48
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB49-.LFB165
	.uleb128 .LEHE49-.LEHB49
	.uleb128 .L145-.LFB165
	.uleb128 0
	.uleb128 .LEHB50-.LFB165
	.uleb128 .LEHE50-.LEHB50
	.uleb128 .L144-.LFB165
	.uleb128 0
	.uleb128 .LEHB51-.LFB165
	.uleb128 .LEHE51-.LEHB51
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB52-.LFB165
	.uleb128 .LEHE52-.LEHB52
	.uleb128 .L147-.LFB165
	.uleb128 0
	.uleb128 .LEHB53-.LFB165
	.uleb128 .LEHE53-.LEHB53
	.uleb128 .L146-.LFB165
	.uleb128 0
	.uleb128 .LEHB54-.LFB165
	.uleb128 .LEHE54-.LEHB54
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB55-.LFB165
	.uleb128 .LEHE55-.LEHB55
	.uleb128 .L149-.LFB165
	.uleb128 0
	.uleb128 .LEHB56-.LFB165
	.uleb128 .LEHE56-.LEHB56
	.uleb128 .L148-.LFB165
	.uleb128 0
	.uleb128 .LEHB57-.LFB165
	.uleb128 .LEHE57-.LEHB57
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB58-.LFB165
	.uleb128 .LEHE58-.LEHB58
	.uleb128 .L151-.LFB165
	.uleb128 0
	.uleb128 .LEHB59-.LFB165
	.uleb128 .LEHE59-.LEHB59
	.uleb128 .L150-.LFB165
	.uleb128 0
	.uleb128 .LEHB60-.LFB165
	.uleb128 .LEHE60-.LEHB60
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB61-.LFB165
	.uleb128 .LEHE61-.LEHB61
	.uleb128 .L153-.LFB165
	.uleb128 0
	.uleb128 .LEHB62-.LFB165
	.uleb128 .LEHE62-.LEHB62
	.uleb128 .L152-.LFB165
	.uleb128 0
	.uleb128 .LEHB63-.LFB165
	.uleb128 .LEHE63-.LEHB63
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB64-.LFB165
	.uleb128 .LEHE64-.LEHB64
	.uleb128 .L155-.LFB165
	.uleb128 0
	.uleb128 .LEHB65-.LFB165
	.uleb128 .LEHE65-.LEHB65
	.uleb128 .L154-.LFB165
	.uleb128 0
	.uleb128 .LEHB66-.LFB165
	.uleb128 .LEHE66-.LEHB66
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB67-.LFB165
	.uleb128 .LEHE67-.LEHB67
	.uleb128 .L157-.LFB165
	.uleb128 0
	.uleb128 .LEHB68-.LFB165
	.uleb128 .LEHE68-.LEHB68
	.uleb128 .L156-.LFB165
	.uleb128 0
	.uleb128 .LEHB69-.LFB165
	.uleb128 .LEHE69-.LEHB69
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB70-.LFB165
	.uleb128 .LEHE70-.LEHB70
	.uleb128 .L159-.LFB165
	.uleb128 0
	.uleb128 .LEHB71-.LFB165
	.uleb128 .LEHE71-.LEHB71
	.uleb128 .L158-.LFB165
	.uleb128 0
	.uleb128 .LEHB72-.LFB165
	.uleb128 .LEHE72-.LEHB72
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB73-.LFB165
	.uleb128 .LEHE73-.LEHB73
	.uleb128 .L161-.LFB165
	.uleb128 0
	.uleb128 .LEHB74-.LFB165
	.uleb128 .LEHE74-.LEHB74
	.uleb128 .L160-.LFB165
	.uleb128 0
	.uleb128 .LEHB75-.LFB165
	.uleb128 .LEHE75-.LEHB75
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB76-.LFB165
	.uleb128 .LEHE76-.LEHB76
	.uleb128 .L163-.LFB165
	.uleb128 0
	.uleb128 .LEHB77-.LFB165
	.uleb128 .LEHE77-.LEHB77
	.uleb128 .L162-.LFB165
	.uleb128 0
	.uleb128 .LEHB78-.LFB165
	.uleb128 .LEHE78-.LEHB78
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB79-.LFB165
	.uleb128 .LEHE79-.LEHB79
	.uleb128 .L165-.LFB165
	.uleb128 0
	.uleb128 .LEHB80-.LFB165
	.uleb128 .LEHE80-.LEHB80
	.uleb128 .L164-.LFB165
	.uleb128 0
	.uleb128 .LEHB81-.LFB165
	.uleb128 .LEHE81-.LEHB81
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB82-.LFB165
	.uleb128 .LEHE82-.LEHB82
	.uleb128 .L167-.LFB165
	.uleb128 0
	.uleb128 .LEHB83-.LFB165
	.uleb128 .LEHE83-.LEHB83
	.uleb128 .L166-.LFB165
	.uleb128 0
	.uleb128 .LEHB84-.LFB165
	.uleb128 .LEHE84-.LEHB84
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB85-.LFB165
	.uleb128 .LEHE85-.LEHB85
	.uleb128 .L169-.LFB165
	.uleb128 0
	.uleb128 .LEHB86-.LFB165
	.uleb128 .LEHE86-.LEHB86
	.uleb128 .L168-.LFB165
	.uleb128 0
	.uleb128 .LEHB87-.LFB165
	.uleb128 .LEHE87-.LEHB87
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB88-.LFB165
	.uleb128 .LEHE88-.LEHB88
	.uleb128 .L171-.LFB165
	.uleb128 0
	.uleb128 .LEHB89-.LFB165
	.uleb128 .LEHE89-.LEHB89
	.uleb128 .L170-.LFB165
	.uleb128 0
	.uleb128 .LEHB90-.LFB165
	.uleb128 .LEHE90-.LEHB90
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB91-.LFB165
	.uleb128 .LEHE91-.LEHB91
	.uleb128 .L173-.LFB165
	.uleb128 0
	.uleb128 .LEHB92-.LFB165
	.uleb128 .LEHE92-.LEHB92
	.uleb128 .L172-.LFB165
	.uleb128 0
	.uleb128 .LEHB93-.LFB165
	.uleb128 .LEHE93-.LEHB93
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB94-.LFB165
	.uleb128 .LEHE94-.LEHB94
	.uleb128 .L175-.LFB165
	.uleb128 0
	.uleb128 .LEHB95-.LFB165
	.uleb128 .LEHE95-.LEHB95
	.uleb128 .L174-.LFB165
	.uleb128 0
	.uleb128 .LEHB96-.LFB165
	.uleb128 .LEHE96-.LEHB96
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB97-.LFB165
	.uleb128 .LEHE97-.LEHB97
	.uleb128 .L177-.LFB165
	.uleb128 0
	.uleb128 .LEHB98-.LFB165
	.uleb128 .LEHE98-.LEHB98
	.uleb128 .L176-.LFB165
	.uleb128 0
	.uleb128 .LEHB99-.LFB165
	.uleb128 .LEHE99-.LEHB99
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB100-.LFB165
	.uleb128 .LEHE100-.LEHB100
	.uleb128 .L179-.LFB165
	.uleb128 0
	.uleb128 .LEHB101-.LFB165
	.uleb128 .LEHE101-.LEHB101
	.uleb128 .L178-.LFB165
	.uleb128 0
	.uleb128 .LEHB102-.LFB165
	.uleb128 .LEHE102-.LEHB102
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB103-.LFB165
	.uleb128 .LEHE103-.LEHB103
	.uleb128 .L181-.LFB165
	.uleb128 0
	.uleb128 .LEHB104-.LFB165
	.uleb128 .LEHE104-.LEHB104
	.uleb128 .L180-.LFB165
	.uleb128 0
	.uleb128 .LEHB105-.LFB165
	.uleb128 .LEHE105-.LEHB105
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB106-.LFB165
	.uleb128 .LEHE106-.LEHB106
	.uleb128 .L183-.LFB165
	.uleb128 0
	.uleb128 .LEHB107-.LFB165
	.uleb128 .LEHE107-.LEHB107
	.uleb128 .L182-.LFB165
	.uleb128 0
	.uleb128 .LEHB108-.LFB165
	.uleb128 .LEHE108-.LEHB108
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB109-.LFB165
	.uleb128 .LEHE109-.LEHB109
	.uleb128 .L185-.LFB165
	.uleb128 0
	.uleb128 .LEHB110-.LFB165
	.uleb128 .LEHE110-.LEHB110
	.uleb128 .L184-.LFB165
	.uleb128 0
	.uleb128 .LEHB111-.LFB165
	.uleb128 .LEHE111-.LEHB111
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB112-.LFB165
	.uleb128 .LEHE112-.LEHB112
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB113-.LFB165
	.uleb128 .LEHE113-.LEHB113
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB114-.LFB165
	.uleb128 .LEHE114-.LEHB114
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB115-.LFB165
	.uleb128 .LEHE115-.LEHB115
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB116-.LFB165
	.uleb128 .LEHE116-.LEHB116
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB117-.LFB165
	.uleb128 .LEHE117-.LEHB117
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB118-.LFB165
	.uleb128 .LEHE118-.LEHB118
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB119-.LFB165
	.uleb128 .LEHE119-.LEHB119
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB120-.LFB165
	.uleb128 .LEHE120-.LEHB120
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB121-.LFB165
	.uleb128 .LEHE121-.LEHB121
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB122-.LFB165
	.uleb128 .LEHE122-.LEHB122
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB123-.LFB165
	.uleb128 .LEHE123-.LEHB123
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB124-.LFB165
	.uleb128 .LEHE124-.LEHB124
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB125-.LFB165
	.uleb128 .LEHE125-.LEHB125
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB126-.LFB165
	.uleb128 .LEHE126-.LEHB126
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB127-.LFB165
	.uleb128 .LEHE127-.LEHB127
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB128-.LFB165
	.uleb128 .LEHE128-.LEHB128
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB129-.LFB165
	.uleb128 .LEHE129-.LEHB129
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB130-.LFB165
	.uleb128 .LEHE130-.LEHB130
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB131-.LFB165
	.uleb128 .LEHE131-.LEHB131
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB132-.LFB165
	.uleb128 .LEHE132-.LEHB132
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB133-.LFB165
	.uleb128 .LEHE133-.LEHB133
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB134-.LFB165
	.uleb128 .LEHE134-.LEHB134
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB135-.LFB165
	.uleb128 .LEHE135-.LEHB135
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB136-.LFB165
	.uleb128 .LEHE136-.LEHB136
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB137-.LFB165
	.uleb128 .LEHE137-.LEHB137
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB138-.LFB165
	.uleb128 .LEHE138-.LEHB138
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB139-.LFB165
	.uleb128 .LEHE139-.LEHB139
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB140-.LFB165
	.uleb128 .LEHE140-.LEHB140
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB141-.LFB165
	.uleb128 .LEHE141-.LEHB141
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB142-.LFB165
	.uleb128 .LEHE142-.LEHB142
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB143-.LFB165
	.uleb128 .LEHE143-.LEHB143
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB144-.LFB165
	.uleb128 .LEHE144-.LEHB144
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB145-.LFB165
	.uleb128 .LEHE145-.LEHB145
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB146-.LFB165
	.uleb128 .LEHE146-.LEHB146
	.uleb128 0
	.uleb128 0
.LLSDACSE165:
	.section	.text._ZN7SQLexer4InitEP13SQSharedStatePFiPvES2_PFvS2_PKcES2_
	.fnend
	.size	_ZN7SQLexer4InitEP13SQSharedStatePFiPvES2_PFvS2_PKcES2_, .-_ZN7SQLexer4InitEP13SQSharedStatePFiPvES2_PFvS2_PKcES2_
	.section	.text._ZN7SQLexer5ErrorEPKc,"ax",%progbits
	.align	2
	.global	_ZN7SQLexer5ErrorEPKc
	.thumb
	.thumb_func
	.type	_ZN7SQLexer5ErrorEPKc, %function
_ZN7SQLexer5ErrorEPKc:
	.fnstart
.LFB166:
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
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #68]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #72]
	mov	r0, r2
	ldr	r1, [r7]
	blx	r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN7SQLexer5ErrorEPKc, .-_ZN7SQLexer5ErrorEPKc
	.section	.rodata
	.align	2
.LC37:
	.ascii	"Invalid character\000"
	.section	.text._ZN7SQLexer4NextEv,"ax",%progbits
	.align	2
	.global	_ZN7SQLexer4NextEv
	.thumb
	.thumb_func
	.type	_ZN7SQLexer4NextEv, %function
_ZN7SQLexer4NextEv:
	.fnstart
.LFB167:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #44]
	mov	r0, r2
	blx	r3
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #255
	ble	.L191
	ldr	r0, [r7, #4]
	ldr	r3, .L194
.LPIC38:
	add	r3, pc
	mov	r1, r3
	bl	_ZN7SQLexer5ErrorEPKc(PLT)
.L191:
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L192
	ldr	r3, [r7, #12]
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3, #48]
	b	.L190
.L192:
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #48]
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #8]
.L190:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L195:
	.align	2
.L194:
	.word	.LC37-(.LPIC38+4)
	.fnend
	.size	_ZN7SQLexer4NextEv, .-_ZN7SQLexer4NextEv
	.section	.text._ZN7SQLexer7Tok2StrEi,"ax",%progbits
	.align	2
	.global	_ZN7SQLexer7Tok2StrEi
	.thumb
	.thumb_func
	.type	_ZN7SQLexer7Tok2StrEi, %function
_ZN7SQLexer7Tok2StrEi:
	.fnstart
.LFB168:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #52
	sub	sp, sp, #52
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	add	r3, r7, #28
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	add	r3, r7, #20
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	b	.L197
.L199:
	add	r3, r7, #28
	mov	r0, r3
	ldr	r1, [r7, #36]
.LEHB147:
	bl	_ZN11SQObjectPtraSEi(PLT)
	ldr	r2, [r7, #16]
	ldr	r3, [r7]
	cmp	r2, r3
	bne	.L197
	ldr	r3, [r7, #24]
	add	r4, r3, #28
	b	.L198
.L197:
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #4]
	add	r2, r7, #28
	add	r3, r7, #20
	add	r0, r7, #12
	str	r0, [sp]
	mov	r0, r1
	movs	r1, #0
	bl	_ZN7SQTable4NextEbRK11SQObjectPtrRS0_S3_(PLT)
.LEHE147:
	mov	r3, r0
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #-1
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L199
	movs	r4, #0
.L198:
	add	r3, r7, #12
	mov	r0, r3
.LEHB148:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE148:
	add	r3, r7, #20
	mov	r0, r3
.LEHB149:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE149:
	add	r3, r7, #28
	mov	r0, r3
.LEHB150:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE150:
	mov	r3, r4
	b	.L207
.L206:
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L202
.L205:
.L202:
	add	r3, r7, #20
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L203
.L204:
.L203:
	add	r3, r7, #28
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB151:
	bl	__cxa_end_cleanup(PLT)
.LEHE151:
.L207:
	mov	r0, r3
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA168:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE168-.LLSDACSB168
.LLSDACSB168:
	.uleb128 .LEHB147-.LFB168
	.uleb128 .LEHE147-.LEHB147
	.uleb128 .L206-.LFB168
	.uleb128 0
	.uleb128 .LEHB148-.LFB168
	.uleb128 .LEHE148-.LEHB148
	.uleb128 .L205-.LFB168
	.uleb128 0
	.uleb128 .LEHB149-.LFB168
	.uleb128 .LEHE149-.LEHB149
	.uleb128 .L204-.LFB168
	.uleb128 0
	.uleb128 .LEHB150-.LFB168
	.uleb128 .LEHE150-.LEHB150
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB151-.LFB168
	.uleb128 .LEHE151-.LEHB151
	.uleb128 0
	.uleb128 0
.LLSDACSE168:
	.section	.text._ZN7SQLexer7Tok2StrEi
	.fnend
	.size	_ZN7SQLexer7Tok2StrEi, .-_ZN7SQLexer7Tok2StrEi
	.section	.rodata
	.align	2
.LC38:
	.ascii	"missing \"*/\" in comment\000"
	.section	.text._ZN7SQLexer15LexBlockCommentEv,"ax",%progbits
	.align	2
	.global	_ZN7SQLexer15LexBlockCommentEv
	.thumb
	.thumb_func
	.type	_ZN7SQLexer15LexBlockCommentEv, %function
_ZN7SQLexer15LexBlockCommentEv:
	.fnstart
.LFB169:
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
	strb	r3, [r7, #15]
	b	.L209
.L215:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L211
	cmp	r3, #42
	beq	.L212
	cmp	r3, #0
	beq	.L213
	b	.L210
.L212:
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	cmp	r3, #47
	bne	.L214
	movs	r3, #1
	strb	r3, [r7, #15]
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
.L214:
	b	.L209
.L211:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #16]
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	b	.L209
.L213:
	ldr	r0, [r7, #4]
	ldr	r3, .L216
.LPIC39:
	add	r3, pc
	mov	r1, r3
	bl	_ZN7SQLexer5ErrorEPKc(PLT)
.L210:
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
.L209:
	ldrb	r3, [r7, #15]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L215
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L217:
	.align	2
.L216:
	.word	.LC38-(.LPIC39+4)
	.fnend
	.size	_ZN7SQLexer15LexBlockCommentEv, .-_ZN7SQLexer15LexBlockCommentEv
	.section	.text._ZN7SQLexer14LexLineCommentEv,"ax",%progbits
	.align	2
	.global	_ZN7SQLexer14LexLineCommentEv
	.thumb
	.thumb_func
	.type	_ZN7SQLexer14LexLineCommentEv, %function
_ZN7SQLexer14LexLineCommentEv:
	.fnstart
.LFB170:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
.L220:
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L218
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L220
.L218:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN7SQLexer14LexLineCommentEv, .-_ZN7SQLexer14LexLineCommentEv
	.section	.rodata
	.align	2
.LC39:
	.ascii	"error parsing the string\000"
	.align	2
.LC40:
	.ascii	"invalid token '..'\000"
	.align	2
.LC41:
	.ascii	"unexpected character(control)\000"
	.section	.text._ZN7SQLexer3LexEv,"ax",%progbits
	.align	2
	.global	_ZN7SQLexer3LexEv
	.thumb
	.thumb_func
	.type	_ZN7SQLexer3LexEv, %function
_ZN7SQLexer3LexEv:
	.fnstart
.LFB171:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #32
	sub	sp, sp, #32
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #4]
	str	r2, [r3, #20]
	b	.L222
.L282:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	cmp	r3, #126
	bhi	.L223
	adr	r1, .L225
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L225:
	.word	.L224+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L226+1-.L225
	.word	.L227+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L226+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L226+1-.L225
	.word	.L228+1-.L225
	.word	.L229+1-.L225
	.word	.L230+1-.L225
	.word	.L223+1-.L225
	.word	.L231+1-.L225
	.word	.L232+1-.L225
	.word	.L229+1-.L225
	.word	.L233+1-.L225
	.word	.L233+1-.L225
	.word	.L234+1-.L225
	.word	.L235+1-.L225
	.word	.L233+1-.L225
	.word	.L236+1-.L225
	.word	.L237+1-.L225
	.word	.L238+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L239+1-.L225
	.word	.L233+1-.L225
	.word	.L240+1-.L225
	.word	.L241+1-.L225
	.word	.L242+1-.L225
	.word	.L233+1-.L225
	.word	.L243+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L233+1-.L225
	.word	.L223+1-.L225
	.word	.L233+1-.L225
	.word	.L233+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L223+1-.L225
	.word	.L233+1-.L225
	.word	.L244+1-.L225
	.word	.L233+1-.L225
	.word	.L233+1-.L225
.L226:
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	b	.L222
.L227:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movs	r2, #10
	str	r2, [r3]
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #24]
	b	.L222
.L230:
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer14LexLineCommentEv(PLT)
	b	.L222
.L238:
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	subs	r3, r3, #42
	cmp	r3, #20
	bhi	.L245
	adr	r1, .L247
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L247:
	.word	.L246+1-.L247
	.word	.L245+1-.L247
	.word	.L245+1-.L247
	.word	.L245+1-.L247
	.word	.L245+1-.L247
	.word	.L248+1-.L247
	.word	.L245+1-.L247
	.word	.L245+1-.L247
	.word	.L245+1-.L247
	.word	.L245+1-.L247
	.word	.L245+1-.L247
	.word	.L245+1-.L247
	.word	.L245+1-.L247
	.word	.L245+1-.L247
	.word	.L245+1-.L247
	.word	.L245+1-.L247
	.word	.L245+1-.L247
	.word	.L245+1-.L247
	.word	.L245+1-.L247
	.word	.L249+1-.L247
	.word	.L250+1-.L247
.L246:
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer15LexBlockCommentEv(PLT)
	b	.L222
.L248:
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer14LexLineCommentEv(PLT)
	b	.L222
.L249:
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	mov	r2, #318
	str	r2, [r3]
	mov	r3, #318
	b	.L251
.L250:
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movw	r2, #321
	str	r2, [r3]
	movw	r3, #321
	b	.L251
.L245:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movs	r2, #47
	str	r2, [r3]
	movs	r3, #47
	b	.L251
.L241:
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	cmp	r3, #61
	beq	.L252
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movs	r2, #61
	str	r2, [r3]
	movs	r3, #61
	b	.L251
.L252:
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	mov	r2, #264
	str	r2, [r3]
	mov	r3, #264
	b	.L251
.L240:
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	subs	r3, r3, #45
	cmp	r3, #16
	bhi	.L253
	adr	r1, .L255
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L255:
	.word	.L254+1-.L255
	.word	.L253+1-.L255
	.word	.L256+1-.L255
	.word	.L253+1-.L255
	.word	.L253+1-.L255
	.word	.L253+1-.L255
	.word	.L253+1-.L255
	.word	.L253+1-.L255
	.word	.L253+1-.L255
	.word	.L253+1-.L255
	.word	.L253+1-.L255
	.word	.L253+1-.L255
	.word	.L253+1-.L255
	.word	.L253+1-.L255
	.word	.L253+1-.L255
	.word	.L257+1-.L255
	.word	.L258+1-.L255
.L258:
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	cmp	r3, #62
	bne	.L259
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movw	r2, #305
	str	r2, [r3]
	movw	r3, #305
	b	.L251
.L259:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	mov	r2, #266
	str	r2, [r3]
	mov	r3, #266
	b	.L251
.L254:
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movw	r2, #281
	str	r2, [r3]
	movw	r3, #281
	b	.L251
.L257:
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	mov	r2, #296
	str	r2, [r3]
	mov	r3, #296
	b	.L251
.L256:
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	mov	r2, #320
	str	r2, [r3]
	mov	r3, #320
	b	.L251
.L253:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movs	r2, #60
	str	r2, [r3]
	movs	r3, #60
	b	.L251
.L242:
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	cmp	r3, #61
	bne	.L260
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movw	r2, #267
	str	r2, [r3]
	movw	r3, #267
	b	.L251
.L260:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	cmp	r3, #62
	bne	.L261
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	cmp	r3, #62
	bne	.L262
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	mov	r2, #306
	str	r2, [r3]
	mov	r3, #306
	b	.L251
.L262:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movw	r2, #297
	str	r2, [r3]
	movw	r3, #297
	b	.L251
.L261:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movs	r2, #62
	str	r2, [r3]
	movs	r3, #62
	b	.L251
.L228:
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	cmp	r3, #61
	beq	.L263
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movs	r2, #33
	str	r2, [r3]
	movs	r3, #33
	b	.L251
.L263:
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movw	r2, #265
	str	r2, [r3]
	movw	r3, #265
	b	.L251
.L243:
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	cmp	r3, #34
	beq	.L264
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movs	r2, #64
	str	r2, [r3]
	movs	r3, #64
	b	.L251
.L264:
	ldr	r0, [r7, #4]
	movs	r1, #34
	movs	r2, #1
	bl	_ZN7SQLexer10ReadStringEib(PLT)
	mov	r3, r0
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #-1
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L265
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #28]
	str	r2, [r3]
	ldr	r3, [r7, #28]
	b	.L251
.L265:
	ldr	r0, [r7, #4]
	ldr	r3, .L283
.LPIC40:
	add	r3, pc
	mov	r1, r3
	bl	_ZN7SQLexer5ErrorEPKc(PLT)
.L229:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	ldr	r0, [r7, #4]
	mov	r1, r3
	movs	r2, #0
	bl	_ZN7SQLexer10ReadStringEib(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #-1
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L266
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #24]
	str	r2, [r3]
	ldr	r3, [r7, #24]
	b	.L251
.L266:
	ldr	r0, [r7, #4]
	ldr	r3, .L283+4
.LPIC41:
	add	r3, pc
	mov	r1, r3
	bl	_ZN7SQLexer5ErrorEPKc(PLT)
.L233:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	str	r3, [r7, #20]
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #20]
	str	r2, [r3]
	ldr	r3, [r7, #20]
	b	.L251
.L237:
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	cmp	r3, #46
	beq	.L267
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movs	r2, #46
	str	r2, [r3]
	movs	r3, #46
	b	.L251
.L267:
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	cmp	r3, #46
	beq	.L268
	ldr	r0, [r7, #4]
	ldr	r3, .L283+8
.LPIC42:
	add	r3, pc
	mov	r1, r3
	bl	_ZN7SQLexer5ErrorEPKc(PLT)
.L268:
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	mov	r2, #312
	str	r2, [r3]
	mov	r3, #312
	b	.L251
.L232:
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	cmp	r3, #38
	beq	.L269
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movs	r2, #38
	str	r2, [r3]
	movs	r3, #38
	b	.L251
.L269:
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	mov	r2, #270
	str	r2, [r3]
	mov	r3, #270
	b	.L251
.L244:
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	cmp	r3, #124
	beq	.L270
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movs	r2, #124
	str	r2, [r3]
	movs	r3, #124
	b	.L251
.L270:
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movw	r2, #271
	str	r2, [r3]
	movw	r3, #271
	b	.L251
.L239:
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	cmp	r3, #58
	beq	.L271
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movs	r2, #58
	str	r2, [r3]
	movs	r3, #58
	b	.L251
.L271:
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movw	r2, #299
	str	r2, [r3]
	movw	r3, #299
	b	.L251
.L234:
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	cmp	r3, #61
	bne	.L272
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movw	r2, #317
	str	r2, [r3]
	movw	r3, #317
	b	.L251
.L272:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movs	r2, #42
	str	r2, [r3]
	movs	r3, #42
	b	.L251
.L231:
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	cmp	r3, #61
	bne	.L273
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movw	r2, #319
	str	r2, [r3]
	movw	r3, #319
	b	.L251
.L273:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movs	r2, #37
	str	r2, [r3]
	movs	r3, #37
	b	.L251
.L236:
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	cmp	r3, #61
	bne	.L274
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	mov	r2, #290
	str	r2, [r3]
	mov	r3, #290
	b	.L251
.L274:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	cmp	r3, #45
	bne	.L275
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	mov	r2, #304
	str	r2, [r3]
	mov	r3, #304
	b	.L251
.L275:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movs	r2, #45
	str	r2, [r3]
	movs	r3, #45
	b	.L251
.L235:
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	cmp	r3, #61
	bne	.L276
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movw	r2, #289
	str	r2, [r3]
	movw	r3, #289
	b	.L251
.L276:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	cmp	r3, #43
	bne	.L277
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movw	r2, #303
	str	r2, [r3]
	movw	r3, #303
	b	.L251
.L277:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movs	r2, #43
	str	r2, [r3]
	movs	r3, #43
	b	.L251
.L224:
	movs	r3, #0
	b	.L251
.L223:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	subs	r3, r3, #48
	cmp	r3, #9
	bhi	.L278
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer10ReadNumberEv(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #16]
	str	r2, [r3]
	ldr	r3, [r7, #16]
	b	.L251
.L278:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	mov	r0, r3
	bl	isalpha(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L279
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	cmp	r3, #95
	bne	.L280
.L279:
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer6ReadIDEv(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #8]
	str	r2, [r3]
	ldr	r3, [r7, #8]
	b	.L251
.L280:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	str	r3, [r7, #12]
	ldr	r0, [r7, #12]
	bl	iscntrl(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L281
	ldr	r0, [r7, #4]
	ldr	r3, .L283+12
.LPIC43:
	add	r3, pc
	mov	r1, r3
	bl	_ZN7SQLexer5ErrorEPKc(PLT)
.L281:
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	b	.L251
.L222:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L282
	movs	r3, #0
.L251:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L284:
	.align	2
.L283:
	.word	.LC39-(.LPIC40+4)
	.word	.LC39-(.LPIC41+4)
	.word	.LC40-(.LPIC42+4)
	.word	.LC41-(.LPIC43+4)
	.fnend
	.size	_ZN7SQLexer3LexEv, .-_ZN7SQLexer3LexEv
	.section	.text._ZN7SQLexer9GetIDTypeEPc,"ax",%progbits
	.align	2
	.global	_ZN7SQLexer9GetIDTypeEPc
	.thumb
	.thumb_func
	.type	_ZN7SQLexer9GetIDTypeEPc, %function
_ZN7SQLexer9GetIDTypeEPc:
	.fnstart
.LFB172:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #28
	sub	sp, sp, #28
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #52]
	mov	r0, r3
	ldr	r1, [r7]
	mov	r2, #-1
.LEHB152:
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE152:
	mov	r3, r0
	add	r2, r7, #16
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r2, r7, #16
	add	r3, r7, #8
	mov	r0, r4
	mov	r1, r2
	mov	r2, r3
.LEHB153:
	bl	_ZN7SQTable3GetERK11SQObjectPtrRS0_(PLT)
.LEHE153:
	mov	r3, r0
	mov	r4, r3
	add	r3, r7, #16
	mov	r0, r3
.LEHB154:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE154:
	cmp	r4, #0
	beq	.L286
	ldr	r4, [r7, #12]
	b	.L287
.L286:
	mov	r4, #258
.L287:
	add	r3, r7, #8
	mov	r0, r3
.LEHB155:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE155:
	mov	r3, r4
	b	.L293
.L292:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L290
.L291:
.L290:
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB156:
	bl	__cxa_end_cleanup(PLT)
.LEHE156:
.L293:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA172:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE172-.LLSDACSB172
.LLSDACSB172:
	.uleb128 .LEHB152-.LFB172
	.uleb128 .LEHE152-.LEHB152
	.uleb128 .L291-.LFB172
	.uleb128 0
	.uleb128 .LEHB153-.LFB172
	.uleb128 .LEHE153-.LEHB153
	.uleb128 .L292-.LFB172
	.uleb128 0
	.uleb128 .LEHB154-.LFB172
	.uleb128 .LEHE154-.LEHB154
	.uleb128 .L291-.LFB172
	.uleb128 0
	.uleb128 .LEHB155-.LFB172
	.uleb128 .LEHE155-.LEHB155
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB156-.LFB172
	.uleb128 .LEHE156-.LEHB156
	.uleb128 0
	.uleb128 0
.LLSDACSE172:
	.section	.text._ZN7SQLexer9GetIDTypeEPc
	.fnend
	.size	_ZN7SQLexer9GetIDTypeEPc, .-_ZN7SQLexer9GetIDTypeEPc
	.section	.rodata
	.align	2
.LC42:
	.ascii	"unfinished string\000"
	.align	2
.LC43:
	.ascii	"newline in a constant\000"
	.align	2
.LC44:
	.ascii	"hexadecimal number expected\000"
	.align	2
.LC45:
	.ascii	"unrecognised escaper char\000"
	.align	2
.LC46:
	.ascii	"empty constant\000"
	.align	2
.LC47:
	.ascii	"constant too long\000"
	.section	.text._ZN7SQLexer10ReadStringEib,"ax",%progbits
	.align	2
	.global	_ZN7SQLexer10ReadStringEib
	.thumb
	.thumb_func
	.type	_ZN7SQLexer10ReadStringEib, %function
_ZN7SQLexer10ReadStringEib:
	.fnstart
.LFB173:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #60
	sub	sp, sp, #60
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strb	r3, [r7, #7]
	ldr	r3, [r7, #12]
	add	r2, r3, #56
	movs	r3, #0
	strb	r3, [r7, #26]
	add	r3, r7, #26
	mov	r0, r2
	movs	r1, #0
	mov	r2, r3
	bl	_ZN8sqvectorIcE6resizeEjRKc(PLT)
	ldr	r0, [r7, #12]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #24]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L295
	mov	r3, #-1
	b	.L296
.L295:
	b	.L297
.L323:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L299
	cmp	r3, #92
	beq	.L300
	cmp	r3, #0
	bne	.L328
	ldr	r0, [r7, #12]
	ldr	r3, .L329
.LPIC44:
	add	r3, pc
	mov	r1, r3
	bl	_ZN7SQLexer5ErrorEPKc(PLT)
	mov	r3, #-1
	b	.L296
.L299:
	ldrb	r3, [r7, #7]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L302
	ldr	r0, [r7, #12]
	ldr	r3, .L329+4
.LPIC45:
	add	r3, pc
	mov	r1, r3
	bl	_ZN7SQLexer5ErrorEPKc(PLT)
.L302:
	ldr	r3, [r7, #12]
	add	r2, r3, #56
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	strb	r3, [r7, #27]
	add	r3, r7, #27
	mov	r0, r2
	mov	r1, r3
	bl	_ZN8sqvectorIcE9push_backERKc(PLT)
	ldr	r0, [r7, #12]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #16]
	b	.L297
.L300:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L303
	ldr	r3, [r7, #12]
	add	r2, r3, #56
	movs	r3, #92
	strb	r3, [r7, #28]
	add	r3, r7, #28
	mov	r0, r2
	mov	r1, r3
	bl	_ZN8sqvectorIcE9push_backERKc(PLT)
	ldr	r0, [r7, #12]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #24]
	b	.L304
.L303:
	ldr	r0, [r7, #12]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #24]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	subs	r3, r3, #34
	cmp	r3, #86
	bhi	.L305
	adr	r1, .L307
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L307:
	.word	.L306+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L308+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L309+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L310+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L311+1-.L307
	.word	.L312+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L313+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L314+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L305+1-.L307
	.word	.L315+1-.L307
	.word	.L305+1-.L307
	.word	.L316+1-.L307
	.word	.L305+1-.L307
	.word	.L317+1-.L307
	.word	.L305+1-.L307
	.word	.L318+1-.L307
.L318:
	ldr	r0, [r7, #12]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #24]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	mov	r0, r3
	bl	isxdigit(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L319
	ldr	r0, [r7, #12]
	ldr	r3, .L329+8
.LPIC46:
	add	r3, pc
	mov	r1, r3
	bl	_ZN7SQLexer5ErrorEPKc(PLT)
.L319:
	movs	r3, #4
	str	r3, [r7, #48]
	movs	r3, #0
	str	r3, [r7, #52]
	b	.L320
.L322:
	ldr	r3, [r7, #12]
	ldrb	r2, [r3, #48]	@ zero_extendqisi2
	add	r1, r7, #20
	ldr	r3, [r7, #52]
	add	r3, r3, r1
	strb	r2, [r3]
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	str	r3, [r7, #52]
	ldr	r0, [r7, #12]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #24]
.L320:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	mov	r0, r3
	bl	isxdigit(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L321
	ldr	r3, [r7, #52]
	cmp	r3, #3
	ble	.L322
.L321:
	add	r2, r7, #20
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	add	r4, r3, #56
	add	r2, r7, #20
	add	r3, r7, #16
	mov	r0, r2
	mov	r1, r3
	movs	r2, #16
	bl	strtoul(PLT)
	mov	r3, r0
	uxtb	r3, r3
	strb	r3, [r7, #29]
	add	r3, r7, #29
	mov	r0, r4
	mov	r1, r3
	bl	_ZN8sqvectorIcE9push_backERKc(PLT)
	b	.L304
.L316:
	ldr	r3, [r7, #12]
	add	r2, r3, #56
	movs	r3, #9
	strb	r3, [r7, #30]
	add	r3, r7, #30
	mov	r0, r2
	mov	r1, r3
	bl	_ZN8sqvectorIcE9push_backERKc(PLT)
	ldr	r0, [r7, #12]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #24]
	b	.L304
.L311:
	ldr	r3, [r7, #12]
	add	r2, r3, #56
	movs	r3, #7
	strb	r3, [r7, #31]
	add	r3, r7, #31
	mov	r0, r2
	mov	r1, r3
	bl	_ZN8sqvectorIcE9push_backERKc(PLT)
	ldr	r0, [r7, #12]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #24]
	b	.L304
.L312:
	ldr	r3, [r7, #12]
	add	r2, r3, #56
	movs	r3, #8
	strb	r3, [r7, #32]
	add	r3, r7, #32
	mov	r0, r2
	mov	r1, r3
	bl	_ZN8sqvectorIcE9push_backERKc(PLT)
	ldr	r0, [r7, #12]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #24]
	b	.L304
.L314:
	ldr	r3, [r7, #12]
	add	r2, r3, #56
	movs	r3, #10
	strb	r3, [r7, #33]
	add	r3, r7, #33
	mov	r0, r2
	mov	r1, r3
	bl	_ZN8sqvectorIcE9push_backERKc(PLT)
	ldr	r0, [r7, #12]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #24]
	b	.L304
.L315:
	ldr	r3, [r7, #12]
	add	r2, r3, #56
	movs	r3, #13
	strb	r3, [r7, #34]
	add	r3, r7, #34
	mov	r0, r2
	mov	r1, r3
	bl	_ZN8sqvectorIcE9push_backERKc(PLT)
	ldr	r0, [r7, #12]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #24]
	b	.L304
.L317:
	ldr	r3, [r7, #12]
	add	r2, r3, #56
	movs	r3, #11
	strb	r3, [r7, #35]
	add	r3, r7, #35
	mov	r0, r2
	mov	r1, r3
	bl	_ZN8sqvectorIcE9push_backERKc(PLT)
	ldr	r0, [r7, #12]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #24]
	b	.L304
.L313:
	ldr	r3, [r7, #12]
	add	r2, r3, #56
	movs	r3, #12
	strb	r3, [r7, #36]
	add	r3, r7, #36
	mov	r0, r2
	mov	r1, r3
	bl	_ZN8sqvectorIcE9push_backERKc(PLT)
	ldr	r0, [r7, #12]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #24]
	b	.L304
.L309:
	ldr	r3, [r7, #12]
	add	r2, r3, #56
	movs	r3, #0
	strb	r3, [r7, #37]
	add	r3, r7, #37
	mov	r0, r2
	mov	r1, r3
	bl	_ZN8sqvectorIcE9push_backERKc(PLT)
	ldr	r0, [r7, #12]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #24]
	b	.L304
.L310:
	ldr	r3, [r7, #12]
	add	r2, r3, #56
	movs	r3, #92
	strb	r3, [r7, #38]
	add	r3, r7, #38
	mov	r0, r2
	mov	r1, r3
	bl	_ZN8sqvectorIcE9push_backERKc(PLT)
	ldr	r0, [r7, #12]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #24]
	b	.L304
.L306:
	ldr	r3, [r7, #12]
	add	r2, r3, #56
	movs	r3, #34
	strb	r3, [r7, #39]
	add	r3, r7, #39
	mov	r0, r2
	mov	r1, r3
	bl	_ZN8sqvectorIcE9push_backERKc(PLT)
	ldr	r0, [r7, #12]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #24]
	b	.L304
.L308:
	ldr	r3, [r7, #12]
	add	r2, r3, #56
	movs	r3, #39
	strb	r3, [r7, #40]
	add	r3, r7, #40
	mov	r0, r2
	mov	r1, r3
	bl	_ZN8sqvectorIcE9push_backERKc(PLT)
	ldr	r0, [r7, #12]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #24]
	b	.L304
.L305:
	ldr	r0, [r7, #12]
	ldr	r3, .L329+12
.LPIC47:
	add	r3, pc
	mov	r1, r3
	bl	_ZN7SQLexer5ErrorEPKc(PLT)
	nop
.L304:
	b	.L297
.L328:
	ldr	r3, [r7, #12]
	add	r2, r3, #56
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	strb	r3, [r7, #41]
	add	r3, r7, #41
	mov	r0, r2
	mov	r1, r3
	bl	_ZN8sqvectorIcE9push_backERKc(PLT)
	ldr	r0, [r7, #12]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #24]
.L297:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bne	.L323
	ldr	r0, [r7, #12]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #24]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L324
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	cmp	r3, #34
	bne	.L324
	ldr	r3, [r7, #12]
	add	r2, r3, #56
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	strb	r3, [r7, #42]
	add	r3, r7, #42
	mov	r0, r2
	mov	r1, r3
	bl	_ZN8sqvectorIcE9push_backERKc(PLT)
	ldr	r0, [r7, #12]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #24]
	b	.L295
.L324:
	ldr	r3, [r7, #12]
	add	r2, r3, #56
	movs	r3, #0
	strb	r3, [r7, #43]
	add	r3, r7, #43
	mov	r0, r2
	mov	r1, r3
	bl	_ZN8sqvectorIcE9push_backERKc(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #56
	mov	r0, r3
	bl	_ZNK8sqvectorIcE4sizeEv(PLT)
	mov	r3, r0
	subs	r3, r3, #1
	str	r3, [r7, #44]
	ldr	r3, [r7, #8]
	cmp	r3, #39
	bne	.L325
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bne	.L326
	ldr	r0, [r7, #12]
	ldr	r3, .L329+16
.LPIC48:
	add	r3, pc
	mov	r1, r3
	bl	_ZN7SQLexer5ErrorEPKc(PLT)
.L326:
	ldr	r3, [r7, #44]
	cmp	r3, #1
	ble	.L327
	ldr	r0, [r7, #12]
	ldr	r3, .L329+20
.LPIC49:
	add	r3, pc
	mov	r1, r3
	bl	_ZN7SQLexer5ErrorEPKc(PLT)
.L327:
	ldr	r3, [r7, #12]
	adds	r3, r3, #56
	mov	r0, r3
	movs	r1, #0
	bl	_ZNK8sqvectorIcEixEj(PLT)
	mov	r3, r0
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #32]
	mov	r3, #260
	b	.L296
.L325:
	ldr	r3, [r7, #12]
	adds	r3, r3, #56
	mov	r0, r3
	movs	r1, #0
	bl	_ZNK8sqvectorIcEixEj(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #28]
	movw	r3, #259
.L296:
	mov	r0, r3
	adds	r7, r7, #60
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L330:
	.align	2
.L329:
	.word	.LC42-(.LPIC44+4)
	.word	.LC43-(.LPIC45+4)
	.word	.LC44-(.LPIC46+4)
	.word	.LC45-(.LPIC47+4)
	.word	.LC46-(.LPIC48+4)
	.word	.LC47-(.LPIC49+4)
	.fnend
	.size	_ZN7SQLexer10ReadStringEib, .-_ZN7SQLexer10ReadStringEib
	.section	.rodata
	.align	2
.LC48:
	.ascii	"0\000"
	.align	2
.LC49:
	.ascii	"../../../libs/squirrel/squirrel/sqlexer.cpp\000"
	.section	.text._Z14LexHexadecimalPKcPj,"ax",%progbits
	.align	2
	.global	_Z14LexHexadecimalPKcPj
	.thumb
	.thumb_func
	.type	_Z14LexHexadecimalPKcPj, %function
_Z14LexHexadecimalPKcPj:
	.fnstart
.LFB174:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3]
	b	.L332
.L335:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #48
	cmp	r3, #9
	bhi	.L333
	ldr	r3, [r7]
	ldr	r3, [r3]
	lsls	r2, r3, #4
	ldr	r3, [r7, #4]
	adds	r1, r3, #1
	str	r1, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	add	r3, r3, r2
	sub	r2, r3, #48
	ldr	r3, [r7]
	str	r2, [r3]
	b	.L332
.L333:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	isxdigit(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L334
	ldr	r3, [r7]
	ldr	r3, [r3]
	lsls	r4, r3, #4
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	str	r2, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	toupper(PLT)
	mov	r3, r0
	add	r3, r3, r4
	sub	r2, r3, #55
	ldr	r3, [r7]
	str	r2, [r3]
	b	.L332
.L334:
	ldr	r3, .L336
.LPIC50:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L336+4
.LPIC51:
	add	r3, pc
	mov	r1, r3
	movw	r2, #377
	ldr	r3, .L336+8
.LPIC52:
	add	r3, pc
	bl	__assert_fail(PLT)
.L332:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L335
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L337:
	.align	2
.L336:
	.word	.LC48-(.LPIC50+4)
	.word	.LC49-(.LPIC51+4)
	.word	_ZZ14LexHexadecimalPKcPjE19__PRETTY_FUNCTION__-(.LPIC52+4)
	.cantunwind
	.fnend
	.size	_Z14LexHexadecimalPKcPj, .-_Z14LexHexadecimalPKcPj
	.section	.text._Z10LexIntegerPKcPj,"ax",%progbits
	.align	2
	.global	_Z10LexIntegerPKcPj
	.thumb
	.thumb_func
	.type	_Z10LexIntegerPKcPj, %function
_Z10LexIntegerPKcPj:
	.fnstart
.LFB175:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3]
	b	.L339
.L340:
	ldr	r3, [r7]
	ldr	r2, [r3]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #1
	mov	r2, r3
	ldr	r3, [r7, #4]
	adds	r1, r3, #1
	str	r1, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	add	r3, r3, r2
	sub	r2, r3, #48
	ldr	r3, [r7]
	str	r2, [r3]
.L339:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L340
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_Z10LexIntegerPKcPj, .-_Z10LexIntegerPKcPj
	.section	.text._Z10scisodigiti,"ax",%progbits
	.align	2
	.global	_Z10scisodigiti
	.thumb
	.thumb_func
	.type	_Z10scisodigiti, %function
_Z10scisodigiti:
	.fnstart
.LFB176:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #47
	ble	.L342
	ldr	r3, [r7, #4]
	cmp	r3, #55
	bgt	.L342
	movs	r3, #1
	b	.L343
.L342:
	movs	r3, #0
.L343:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_Z10scisodigiti, .-_Z10scisodigiti
	.section	.text._Z8LexOctalPKcPj,"ax",%progbits
	.align	2
	.global	_Z8LexOctalPKcPj
	.thumb
	.thumb_func
	.type	_Z8LexOctalPKcPj, %function
_Z8LexOctalPKcPj:
	.fnstart
.LFB177:
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
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3]
	b	.L346
.L348:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	_Z10scisodigiti(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L347
	ldr	r3, [r7]
	ldr	r3, [r3]
	lsls	r2, r3, #3
	ldr	r3, [r7, #4]
	adds	r1, r3, #1
	str	r1, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	add	r3, r3, r2
	sub	r2, r3, #48
	ldr	r3, [r7]
	str	r2, [r3]
	b	.L346
.L347:
	ldr	r3, .L349
.LPIC53:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L349+4
.LPIC54:
	add	r3, pc
	mov	r1, r3
	mov	r2, #398
	ldr	r3, .L349+8
.LPIC55:
	add	r3, pc
	bl	__assert_fail(PLT)
.L346:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L348
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L350:
	.align	2
.L349:
	.word	.LC48-(.LPIC53+4)
	.word	.LC49-(.LPIC54+4)
	.word	_ZZ8LexOctalPKcPjE19__PRETTY_FUNCTION__-(.LPIC55+4)
	.fnend
	.size	_Z8LexOctalPKcPj, .-_Z8LexOctalPKcPj
	.section	.text._Z10isexponenti,"ax",%progbits
	.align	2
	.global	_Z10isexponenti
	.thumb
	.thumb_func
	.type	_Z10isexponenti, %function
_Z10isexponenti:
	.fnstart
.LFB178:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #101
	beq	.L352
	ldr	r3, [r7, #4]
	cmp	r3, #69
	bne	.L353
.L352:
	movs	r3, #1
	b	.L354
.L353:
	movs	r3, #0
.L354:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_Z10isexponenti, .-_Z10isexponenti
	.section	.rodata
	.align	2
.LC50:
	.ascii	"invalid octal number\000"
	.align	2
.LC51:
	.ascii	"too many digits for an Hex number\000"
	.align	2
.LC52:
	.ascii	"invalid numeric format\000"
	.align	2
.LC53:
	.ascii	"exponent expected\000"
	.section	.text._ZN7SQLexer10ReadNumberEv,"ax",%progbits
	.align	2
	.global	_ZN7SQLexer10ReadNumberEv
	.thumb
	.thumb_func
	.type	_ZN7SQLexer10ReadNumberEv, %function
_ZN7SQLexer10ReadNumberEv:
	.fnstart
.LFB179:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #32
	sub	sp, sp, #32
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #1
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	add	r2, r3, #56
	movs	r3, #0
	strb	r3, [r7, #16]
	add	r3, r7, #16
	mov	r0, r2
	movs	r1, #0
	mov	r2, r3
	bl	_ZN8sqvectorIcE6resizeEjRKc(PLT)
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #48
	bne	.L357
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	mov	r0, r3
	bl	toupper(PLT)
	mov	r3, r0
	cmp	r3, #88
	beq	.L358
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	mov	r0, r3
	bl	_Z10scisodigiti(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L357
.L358:
	movs	r3, #1
	b	.L359
.L357:
	movs	r3, #0
.L359:
	cmp	r3, #0
	beq	.L360
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	mov	r0, r3
	bl	_Z10scisodigiti(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L361
	movs	r3, #5
	str	r3, [r7, #28]
	b	.L362
.L363:
	ldr	r3, [r7, #4]
	add	r2, r3, #56
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	strb	r3, [r7, #17]
	add	r3, r7, #17
	mov	r0, r2
	mov	r1, r3
	bl	_ZN8sqvectorIcE9push_backERKc(PLT)
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
.L362:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	mov	r0, r3
	bl	_Z10scisodigiti(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L363
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	subs	r3, r3, #48
	cmp	r3, #9
	bhi	.L364
	ldr	r0, [r7, #4]
	ldr	r3, .L388
.LPIC56:
	add	r3, pc
	mov	r1, r3
	bl	_ZN7SQLexer5ErrorEPKc(PLT)
	b	.L364
.L361:
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	movs	r3, #3
	str	r3, [r7, #28]
	b	.L365
.L366:
	ldr	r3, [r7, #4]
	add	r2, r3, #56
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	strb	r3, [r7, #18]
	add	r3, r7, #18
	mov	r0, r2
	mov	r1, r3
	bl	_ZN8sqvectorIcE9push_backERKc(PLT)
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
.L365:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	mov	r0, r3
	bl	isxdigit(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L366
	ldr	r3, [r7, #4]
	adds	r3, r3, #56
	mov	r0, r3
	bl	_ZNK8sqvectorIcE4sizeEv(PLT)
	mov	r2, r0
	movs	r3, #8
	cmp	r2, r3
	ite	hi
	movhi	r3, #1
	movls	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L364
	ldr	r0, [r7, #4]
	ldr	r3, .L388+4
.LPIC57:
	add	r3, pc
	mov	r1, r3
	bl	_ZN7SQLexer5ErrorEPKc(PLT)
	b	.L364
.L360:
	ldr	r3, [r7, #4]
	add	r2, r3, #56
	ldr	r3, [r7, #24]
	uxtb	r3, r3
	strb	r3, [r7, #19]
	add	r3, r7, #19
	mov	r0, r2
	mov	r1, r3
	bl	_ZN8sqvectorIcE9push_backERKc(PLT)
	b	.L367
.L379:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	cmp	r3, #46
	beq	.L368
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	mov	r0, r3
	bl	_Z10isexponenti(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L369
.L368:
	movs	r3, #1
	b	.L370
.L369:
	movs	r3, #0
.L370:
	cmp	r3, #0
	beq	.L371
	movs	r3, #2
	str	r3, [r7, #28]
.L371:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	mov	r0, r3
	bl	_Z10isexponenti(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L372
	ldr	r3, [r7, #28]
	cmp	r3, #2
	beq	.L373
	ldr	r0, [r7, #4]
	ldr	r3, .L388+8
.LPIC58:
	add	r3, pc
	mov	r1, r3
	bl	_ZN7SQLexer5ErrorEPKc(PLT)
.L373:
	movs	r3, #4
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	add	r2, r3, #56
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	strb	r3, [r7, #20]
	add	r3, r7, #20
	mov	r0, r2
	mov	r1, r3
	bl	_ZN8sqvectorIcE9push_backERKc(PLT)
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	cmp	r3, #43
	beq	.L374
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	cmp	r3, #45
	bne	.L375
.L374:
	ldr	r3, [r7, #4]
	add	r2, r3, #56
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	strb	r3, [r7, #21]
	add	r3, r7, #21
	mov	r0, r2
	mov	r1, r3
	bl	_ZN8sqvectorIcE9push_backERKc(PLT)
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
.L375:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	subs	r3, r3, #48
	cmp	r3, #9
	bls	.L372
	ldr	r0, [r7, #4]
	ldr	r3, .L388+12
.LPIC59:
	add	r3, pc
	mov	r1, r3
	bl	_ZN7SQLexer5ErrorEPKc(PLT)
.L372:
	ldr	r3, [r7, #4]
	add	r2, r3, #56
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	strb	r3, [r7, #22]
	add	r3, r7, #22
	mov	r0, r2
	mov	r1, r3
	bl	_ZN8sqvectorIcE9push_backERKc(PLT)
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
.L367:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	cmp	r3, #46
	beq	.L376
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	subs	r3, r3, #48
	cmp	r3, #9
	bls	.L376
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	mov	r0, r3
	bl	_Z10isexponenti(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L377
.L376:
	movs	r3, #1
	b	.L378
.L377:
	movs	r3, #0
.L378:
	cmp	r3, #0
	bne	.L379
.L364:
	ldr	r3, [r7, #4]
	add	r2, r3, #56
	movs	r3, #0
	strb	r3, [r7, #23]
	add	r3, r7, #23
	mov	r0, r2
	mov	r1, r3
	bl	_ZN8sqvectorIcE9push_backERKc(PLT)
	ldr	r3, [r7, #28]
	subs	r3, r3, #1
	cmp	r3, #4
	bhi	.L380
	adr	r1, .L382
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L382:
	.word	.L381+1-.L382
	.word	.L383+1-.L382
	.word	.L384+1-.L382
	.word	.L383+1-.L382
	.word	.L385+1-.L382
.L383:
	ldr	r3, [r7, #4]
	adds	r3, r3, #56
	mov	r0, r3
	movs	r1, #0
	bl	_ZNK8sqvectorIcEixEj(PLT)
	mov	r2, r0
	add	r3, r7, #12
	mov	r0, r2
	mov	r1, r3
	bl	strtod(PLT)
	fcpyd	d7, d0
	fcvtsd	s15, d7
	ldr	r3, [r7, #4]
	fsts	s15, [r3, #36]
	movw	r3, #261
	b	.L387
.L381:
	ldr	r3, [r7, #4]
	adds	r3, r3, #56
	mov	r0, r3
	movs	r1, #0
	bl	_ZNK8sqvectorIcEixEj(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	adds	r3, r3, #32
	mov	r0, r2
	mov	r1, r3
	bl	_Z10LexIntegerPKcPj(PLT)
	mov	r3, #260
	b	.L387
.L384:
	ldr	r3, [r7, #4]
	adds	r3, r3, #56
	mov	r0, r3
	movs	r1, #0
	bl	_ZNK8sqvectorIcEixEj(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	adds	r3, r3, #32
	mov	r0, r2
	mov	r1, r3
	bl	_Z14LexHexadecimalPKcPj(PLT)
	mov	r3, #260
	b	.L387
.L385:
	ldr	r3, [r7, #4]
	adds	r3, r3, #56
	mov	r0, r3
	movs	r1, #0
	bl	_ZNK8sqvectorIcEixEj(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	adds	r3, r3, #32
	mov	r0, r2
	mov	r1, r3
	bl	_Z8LexOctalPKcPj(PLT)
	mov	r3, #260
	b	.L387
.L380:
	movs	r3, #0
.L387:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L389:
	.align	2
.L388:
	.word	.LC50-(.LPIC56+4)
	.word	.LC51-(.LPIC57+4)
	.word	.LC52-(.LPIC58+4)
	.word	.LC53-(.LPIC59+4)
	.fnend
	.size	_ZN7SQLexer10ReadNumberEv, .-_ZN7SQLexer10ReadNumberEv
	.section	.text._ZN7SQLexer6ReadIDEv,"ax",%progbits
	.align	2
	.global	_ZN7SQLexer6ReadIDEv
	.thumb
	.thumb_func
	.type	_ZN7SQLexer6ReadIDEv, %function
_ZN7SQLexer6ReadIDEv:
	.fnstart
.LFB180:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	add	r2, r3, #56
	movs	r3, #0
	strb	r3, [r7, #9]
	add	r3, r7, #9
	mov	r0, r2
	movs	r1, #0
	mov	r2, r3
	bl	_ZN8sqvectorIcE6resizeEjRKc(PLT)
.L391:
	ldr	r3, [r7, #4]
	add	r2, r3, #56
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	strb	r3, [r7, #10]
	add	r3, r7, #10
	mov	r0, r2
	mov	r1, r3
	bl	_ZN8sqvectorIcE9push_backERKc(PLT)
	ldr	r0, [r7, #4]
	bl	_ZN7SQLexer4NextEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	mov	r0, r3
	bl	isalnum(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L391
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	cmp	r3, #95
	beq	.L391
	ldr	r3, [r7, #4]
	add	r2, r3, #56
	movs	r3, #0
	strb	r3, [r7, #11]
	add	r3, r7, #11
	mov	r0, r2
	mov	r1, r3
	bl	_ZN8sqvectorIcE9push_backERKc(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #56
	mov	r0, r3
	movs	r1, #0
	bl	_ZNK8sqvectorIcEixEj(PLT)
	mov	r3, r0
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN7SQLexer9GetIDTypeEPc(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #258
	beq	.L392
	ldr	r3, [r7, #12]
	cmp	r3, #310
	bne	.L393
.L392:
	ldr	r3, [r7, #4]
	adds	r3, r3, #56
	mov	r0, r3
	movs	r1, #0
	bl	_ZNK8sqvectorIcEixEj(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #28]
.L393:
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN7SQLexer6ReadIDEv, .-_ZN7SQLexer6ReadIDEv
	.section	.text._ZN8sqvectorIcEC2Ev,"axG",%progbits,_ZN8sqvectorIcEC5Ev,comdat
	.align	2
	.weak	_ZN8sqvectorIcEC2Ev
	.thumb
	.thumb_func
	.type	_ZN8sqvectorIcEC2Ev, %function
_ZN8sqvectorIcEC2Ev:
	.fnstart
.LFB182:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN8sqvectorIcEC2Ev, .-_ZN8sqvectorIcEC2Ev
	.weak	_ZN8sqvectorIcEC1Ev
	.thumb_set _ZN8sqvectorIcEC1Ev,_ZN8sqvectorIcEC2Ev
	.section	.text._ZN8sqvectorIcED2Ev,"axG",%progbits,_ZN8sqvectorIcED5Ev,comdat
	.align	2
	.weak	_ZN8sqvectorIcED2Ev
	.thumb
	.thumb_func
	.type	_ZN8sqvectorIcED2Ev, %function
_ZN8sqvectorIcED2Ev:
	.fnstart
.LFB185:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L399
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L400
.L401:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L400:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bhi	.L401
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r0, r2
	mov	r1, r3
	bl	_Z10sq_vm_freePvj(PLT)
.L399:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN8sqvectorIcED2Ev, .-_ZN8sqvectorIcED2Ev
	.weak	_ZN8sqvectorIcED1Ev
	.thumb_set _ZN8sqvectorIcED1Ev,_ZN8sqvectorIcED2Ev
	.section	.text._ZN8sqvectorIcE6resizeEjRKc,"axG",%progbits,_ZN8sqvectorIcE6resizeEjRKc,comdat
	.align	2
	.weak	_ZN8sqvectorIcE6resizeEjRKc
	.thumb
	.thumb_func
	.type	_ZN8sqvectorIcE6resizeEjRKc, %function
_ZN8sqvectorIcE6resizeEjRKc:
	.fnstart
.LFB187:
	@ args = 0, pretend = 0, frame = 24
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
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcs	.L404
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_ZN8sqvectorIcE8_reallocEj(PLT)
.L404:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcs	.L405
	b	.L406
.L409:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	add	r3, r3, r2
	movs	r0, #1
	mov	r1, r3
	bl	_ZnwjPv(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L408
	ldr	r2, [r7, #4]
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
.L408:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #4]
.L406:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L409
	b	.L403
.L405:
	ldr	r3, [r7, #8]
	str	r3, [r7, #20]
	b	.L411
.L412:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L411:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bhi	.L412
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #4]
.L403:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN8sqvectorIcE6resizeEjRKc, .-_ZN8sqvectorIcE6resizeEjRKc
	.section	.text._ZN8sqvectorIcE9push_backERKc,"axG",%progbits,_ZN8sqvectorIcE9push_backERKc,comdat
	.align	2
	.weak	_ZN8sqvectorIcE9push_backERKc
	.thumb
	.thumb_func
	.type	_ZN8sqvectorIcE9push_backERKc, %function
_ZN8sqvectorIcE9push_backERKc:
	.fnstart
.LFB188:
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
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bhi	.L414
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #1
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN8sqvectorIcE8_reallocEj(PLT)
.L414:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	adds	r0, r3, #1
	ldr	r1, [r7, #4]
	str	r0, [r1, #4]
	add	r3, r3, r2
	movs	r0, #1
	mov	r1, r3
	bl	_ZnwjPv(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L416
	ldr	r2, [r7]
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
.L416:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN8sqvectorIcE9push_backERKc, .-_ZN8sqvectorIcE9push_backERKc
	.section	.text._ZNK8sqvectorIcE4sizeEv,"axG",%progbits,_ZNK8sqvectorIcE4sizeEv,comdat
	.align	2
	.weak	_ZNK8sqvectorIcE4sizeEv
	.thumb
	.thumb_func
	.type	_ZNK8sqvectorIcE4sizeEv, %function
_ZNK8sqvectorIcE4sizeEv:
	.fnstart
.LFB189:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNK8sqvectorIcE4sizeEv, .-_ZNK8sqvectorIcE4sizeEv
	.section	.text._ZNK8sqvectorIcEixEj,"axG",%progbits,_ZNK8sqvectorIcEixEj,comdat
	.align	2
	.weak	_ZNK8sqvectorIcEixEj
	.thumb
	.thumb_func
	.type	_ZNK8sqvectorIcEixEj, %function
_ZNK8sqvectorIcEixEj:
	.fnstart
.LFB190:
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
	add	r3, r3, r2
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNK8sqvectorIcEixEj, .-_ZNK8sqvectorIcEixEj
	.section	.text._ZN8sqvectorIcE8_reallocEj,"axG",%progbits,_ZN8sqvectorIcE8_reallocEj,comdat
	.align	2
	.weak	_ZN8sqvectorIcE8_reallocEj
	.thumb
	.thumb_func
	.type	_ZN8sqvectorIcE8_reallocEj, %function
_ZN8sqvectorIcE8_reallocEj:
	.fnstart
.LFB191:
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
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L423
	ldr	r3, [r7]
	b	.L424
.L423:
	movs	r3, #4
.L424:
	str	r3, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7]
	bl	_Z13sq_vm_reallocPvjj(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #8]
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN8sqvectorIcE8_reallocEj, .-_ZN8sqvectorIcE8_reallocEj
	.section	.rodata._ZZN11SQObjectPtrC1EP8SQStringE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN11SQObjectPtrC1EP8SQStringE19__PRETTY_FUNCTION__, %object
	.size	_ZZN11SQObjectPtrC1EP8SQStringE19__PRETTY_FUNCTION__, 36
_ZZN11SQObjectPtrC1EP8SQStringE19__PRETTY_FUNCTION__:
	.ascii	"SQObjectPtr::SQObjectPtr(SQString*)\000"
	.section	.rodata._ZZ14LexHexadecimalPKcPjE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZ14LexHexadecimalPKcPjE19__PRETTY_FUNCTION__, %object
	.size	_ZZ14LexHexadecimalPKcPjE19__PRETTY_FUNCTION__, 55
_ZZ14LexHexadecimalPKcPjE19__PRETTY_FUNCTION__:
	.ascii	"void LexHexadecimal(const SQChar*, SQUnsignedIntege"
	.ascii	"r*)\000"
	.section	.rodata._ZZ8LexOctalPKcPjE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZ8LexOctalPKcPjE19__PRETTY_FUNCTION__, %object
	.size	_ZZ8LexOctalPKcPjE19__PRETTY_FUNCTION__, 49
_ZZ8LexOctalPKcPjE19__PRETTY_FUNCTION__:
	.ascii	"void LexOctal(const SQChar*, SQUnsignedInteger*)\000"
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
