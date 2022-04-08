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
	.file	"sqstdmath.cpp"
	.section	.rodata
	.align	2
.LC0:
	.ascii	"invalid param\000"
	.section	.text._ZL10math_srandP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL10math_srandP4SQVM, %function
_ZL10math_srandP4SQVM:
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
	bl	sq_getinteger(PLT)
	mov	r3, r0
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L2
	ldr	r0, [r7, #4]
	ldr	r3, .L5
.LPIC0:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L4
.L2:
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	srand(PLT)
	movs	r3, #0
.L4:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L6:
	.align	2
.L5:
	.word	.LC0-(.LPIC0+4)
	.fnend
	.size	_ZL10math_srandP4SQVM, .-_ZL10math_srandP4SQVM
	.section	.text._ZL9math_randP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL9math_randP4SQVM, %function
_ZL9math_randP4SQVM:
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
	bl	rand(PLT)
	mov	r3, r0
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	sq_pushinteger(PLT)
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL9math_randP4SQVM, .-_ZL9math_randP4SQVM
	.section	.text._ZL8math_absP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL8math_absP4SQVM, %function
_ZL8math_absP4SQVM:
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
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	movs	r1, #2
	mov	r2, r3
	bl	sq_getinteger(PLT)
	ldr	r3, [r7, #12]
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
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
	.size	_ZL8math_absP4SQVM, .-_ZL8math_absP4SQVM
	.section	.text._ZL9math_sqrtP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL9math_sqrtP4SQVM, %function
_ZL9math_sqrtP4SQVM:
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
	ldr	r0, [r7, #4]
	movs	r1, #2
	mov	r2, r3
	bl	sq_getfloat(PLT)
	flds	s15, [r7, #12]
	fcvtds	d7, s15
	fcpyd	d0, d7
	bl	sqrt(PLT)
	fcpyd	d7, d0
	fcvtsd	s15, d7
	ldr	r0, [r7, #4]
	fcpys	s0, s15
	bl	sq_pushfloat(PLT)
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL9math_sqrtP4SQVM, .-_ZL9math_sqrtP4SQVM
	.section	.text._ZL9math_fabsP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL9math_fabsP4SQVM, %function
_ZL9math_fabsP4SQVM:
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
	bl	sq_getfloat(PLT)
	flds	s15, [r7, #12]
	fabss	s15, s15
	ldr	r0, [r7, #4]
	fcpys	s0, s15
	bl	sq_pushfloat(PLT)
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL9math_fabsP4SQVM, .-_ZL9math_fabsP4SQVM
	.section	.text._ZL8math_sinP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL8math_sinP4SQVM, %function
_ZL8math_sinP4SQVM:
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
	bl	sq_getfloat(PLT)
	flds	s15, [r7, #12]
	fcvtds	d7, s15
	fcpyd	d0, d7
	bl	sin(PLT)
	fcpyd	d7, d0
	fcvtsd	s15, d7
	ldr	r0, [r7, #4]
	fcpys	s0, s15
	bl	sq_pushfloat(PLT)
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL8math_sinP4SQVM, .-_ZL8math_sinP4SQVM
	.section	.text._ZL8math_cosP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL8math_cosP4SQVM, %function
_ZL8math_cosP4SQVM:
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
	bl	sq_getfloat(PLT)
	flds	s15, [r7, #12]
	fcvtds	d7, s15
	fcpyd	d0, d7
	bl	cos(PLT)
	fcpyd	d7, d0
	fcvtsd	s15, d7
	ldr	r0, [r7, #4]
	fcpys	s0, s15
	bl	sq_pushfloat(PLT)
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL8math_cosP4SQVM, .-_ZL8math_cosP4SQVM
	.section	.text._ZL9math_asinP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL9math_asinP4SQVM, %function
_ZL9math_asinP4SQVM:
	.fnstart
.LFB9:
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
	bl	sq_getfloat(PLT)
	flds	s15, [r7, #12]
	fcvtds	d7, s15
	fcpyd	d0, d7
	bl	asin(PLT)
	fcpyd	d7, d0
	fcvtsd	s15, d7
	ldr	r0, [r7, #4]
	fcpys	s0, s15
	bl	sq_pushfloat(PLT)
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL9math_asinP4SQVM, .-_ZL9math_asinP4SQVM
	.section	.text._ZL9math_acosP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL9math_acosP4SQVM, %function
_ZL9math_acosP4SQVM:
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
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	movs	r1, #2
	mov	r2, r3
	bl	sq_getfloat(PLT)
	flds	s15, [r7, #12]
	fcvtds	d7, s15
	fcpyd	d0, d7
	bl	acos(PLT)
	fcpyd	d7, d0
	fcvtsd	s15, d7
	ldr	r0, [r7, #4]
	fcpys	s0, s15
	bl	sq_pushfloat(PLT)
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL9math_acosP4SQVM, .-_ZL9math_acosP4SQVM
	.section	.text._ZL8math_logP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL8math_logP4SQVM, %function
_ZL8math_logP4SQVM:
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
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	movs	r1, #2
	mov	r2, r3
	bl	sq_getfloat(PLT)
	flds	s15, [r7, #12]
	fcvtds	d7, s15
	fcpyd	d0, d7
	bl	log(PLT)
	fcpyd	d7, d0
	fcvtsd	s15, d7
	ldr	r0, [r7, #4]
	fcpys	s0, s15
	bl	sq_pushfloat(PLT)
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL8math_logP4SQVM, .-_ZL8math_logP4SQVM
	.section	.text._ZL10math_log10P4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL10math_log10P4SQVM, %function
_ZL10math_log10P4SQVM:
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
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	movs	r1, #2
	mov	r2, r3
	bl	sq_getfloat(PLT)
	flds	s15, [r7, #12]
	fcvtds	d7, s15
	fcpyd	d0, d7
	bl	log10(PLT)
	fcpyd	d7, d0
	fcvtsd	s15, d7
	ldr	r0, [r7, #4]
	fcpys	s0, s15
	bl	sq_pushfloat(PLT)
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL10math_log10P4SQVM, .-_ZL10math_log10P4SQVM
	.section	.text._ZL8math_tanP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL8math_tanP4SQVM, %function
_ZL8math_tanP4SQVM:
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
	str	r0, [r7, #4]
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	movs	r1, #2
	mov	r2, r3
	bl	sq_getfloat(PLT)
	flds	s15, [r7, #12]
	fcvtds	d7, s15
	fcpyd	d0, d7
	bl	tan(PLT)
	fcpyd	d7, d0
	fcvtsd	s15, d7
	ldr	r0, [r7, #4]
	fcpys	s0, s15
	bl	sq_pushfloat(PLT)
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL8math_tanP4SQVM, .-_ZL8math_tanP4SQVM
	.section	.text._ZL9math_atanP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL9math_atanP4SQVM, %function
_ZL9math_atanP4SQVM:
	.fnstart
.LFB14:
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
	bl	sq_getfloat(PLT)
	flds	s15, [r7, #12]
	fcvtds	d7, s15
	fcpyd	d0, d7
	bl	atan(PLT)
	fcpyd	d7, d0
	fcvtsd	s15, d7
	ldr	r0, [r7, #4]
	fcpys	s0, s15
	bl	sq_pushfloat(PLT)
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL9math_atanP4SQVM, .-_ZL9math_atanP4SQVM
	.section	.text._ZL10math_atan2P4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL10math_atan2P4SQVM, %function
_ZL10math_atan2P4SQVM:
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
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	movs	r1, #2
	mov	r2, r3
	bl	sq_getfloat(PLT)
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	movs	r1, #3
	mov	r2, r3
	bl	sq_getfloat(PLT)
	flds	s15, [r7, #12]
	fcvtds	d6, s15
	flds	s15, [r7, #8]
	fcvtds	d7, s15
	fcpyd	d0, d6
	fcpyd	d1, d7
	bl	atan2(PLT)
	fcpyd	d7, d0
	fcvtsd	s15, d7
	ldr	r0, [r7, #4]
	fcpys	s0, s15
	bl	sq_pushfloat(PLT)
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL10math_atan2P4SQVM, .-_ZL10math_atan2P4SQVM
	.section	.text._ZL8math_powP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL8math_powP4SQVM, %function
_ZL8math_powP4SQVM:
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
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	movs	r1, #2
	mov	r2, r3
	bl	sq_getfloat(PLT)
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	movs	r1, #3
	mov	r2, r3
	bl	sq_getfloat(PLT)
	flds	s15, [r7, #12]
	fcvtds	d6, s15
	flds	s15, [r7, #8]
	fcvtds	d7, s15
	fcpyd	d0, d6
	fcpyd	d1, d7
	bl	pow(PLT)
	fcpyd	d7, d0
	fcvtsd	s15, d7
	ldr	r0, [r7, #4]
	fcpys	s0, s15
	bl	sq_pushfloat(PLT)
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL8math_powP4SQVM, .-_ZL8math_powP4SQVM
	.section	.text._ZL10math_floorP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL10math_floorP4SQVM, %function
_ZL10math_floorP4SQVM:
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
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	movs	r1, #2
	mov	r2, r3
	bl	sq_getfloat(PLT)
	flds	s15, [r7, #12]
	fcvtds	d7, s15
	fcpyd	d0, d7
	bl	floor(PLT)
	fcpyd	d7, d0
	fcvtsd	s15, d7
	ldr	r0, [r7, #4]
	fcpys	s0, s15
	bl	sq_pushfloat(PLT)
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL10math_floorP4SQVM, .-_ZL10math_floorP4SQVM
	.section	.text._ZL9math_ceilP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL9math_ceilP4SQVM, %function
_ZL9math_ceilP4SQVM:
	.fnstart
.LFB18:
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
	bl	sq_getfloat(PLT)
	flds	s15, [r7, #12]
	fcvtds	d7, s15
	fcpyd	d0, d7
	bl	ceil(PLT)
	fcpyd	d7, d0
	fcvtsd	s15, d7
	ldr	r0, [r7, #4]
	fcpys	s0, s15
	bl	sq_pushfloat(PLT)
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL9math_ceilP4SQVM, .-_ZL9math_ceilP4SQVM
	.section	.text._ZL8math_expP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL8math_expP4SQVM, %function
_ZL8math_expP4SQVM:
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
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	movs	r1, #2
	mov	r2, r3
	bl	sq_getfloat(PLT)
	flds	s15, [r7, #12]
	fcvtds	d7, s15
	fcpyd	d0, d7
	bl	exp(PLT)
	fcpyd	d7, d0
	fcvtsd	s15, d7
	ldr	r0, [r7, #4]
	fcpys	s0, s15
	bl	sq_pushfloat(PLT)
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL8math_expP4SQVM, .-_ZL8math_expP4SQVM
	.section	.rodata
	.align	2
.LC1:
	.ascii	"sqrt\000"
	.align	2
.LC2:
	.ascii	".n\000"
	.align	2
.LC3:
	.ascii	"sin\000"
	.align	2
.LC4:
	.ascii	"cos\000"
	.align	2
.LC5:
	.ascii	"asin\000"
	.align	2
.LC6:
	.ascii	"acos\000"
	.align	2
.LC7:
	.ascii	"log\000"
	.align	2
.LC8:
	.ascii	"log10\000"
	.align	2
.LC9:
	.ascii	"tan\000"
	.align	2
.LC10:
	.ascii	"atan\000"
	.align	2
.LC11:
	.ascii	"atan2\000"
	.align	2
.LC12:
	.ascii	".nn\000"
	.align	2
.LC13:
	.ascii	"pow\000"
	.align	2
.LC14:
	.ascii	"floor\000"
	.align	2
.LC15:
	.ascii	"ceil\000"
	.align	2
.LC16:
	.ascii	"exp\000"
	.align	2
.LC17:
	.ascii	"srand\000"
	.align	2
.LC18:
	.ascii	"rand\000"
	.align	2
.LC19:
	.ascii	"fabs\000"
	.align	2
.LC20:
	.ascii	"abs\000"
	.section	.data.rel.local._ZL13mathlib_funcs,"aw",%progbits
	.align	2
	.type	_ZL13mathlib_funcs, %object
	.size	_ZL13mathlib_funcs, 304
_ZL13mathlib_funcs:
	.word	.LC1
	.word	_ZL9math_sqrtP4SQVM
	.word	2
	.word	.LC2
	.word	.LC3
	.word	_ZL8math_sinP4SQVM
	.word	2
	.word	.LC2
	.word	.LC4
	.word	_ZL8math_cosP4SQVM
	.word	2
	.word	.LC2
	.word	.LC5
	.word	_ZL9math_asinP4SQVM
	.word	2
	.word	.LC2
	.word	.LC6
	.word	_ZL9math_acosP4SQVM
	.word	2
	.word	.LC2
	.word	.LC7
	.word	_ZL8math_logP4SQVM
	.word	2
	.word	.LC2
	.word	.LC8
	.word	_ZL10math_log10P4SQVM
	.word	2
	.word	.LC2
	.word	.LC9
	.word	_ZL8math_tanP4SQVM
	.word	2
	.word	.LC2
	.word	.LC10
	.word	_ZL9math_atanP4SQVM
	.word	2
	.word	.LC2
	.word	.LC11
	.word	_ZL10math_atan2P4SQVM
	.word	3
	.word	.LC12
	.word	.LC13
	.word	_ZL8math_powP4SQVM
	.word	3
	.word	.LC12
	.word	.LC14
	.word	_ZL10math_floorP4SQVM
	.word	2
	.word	.LC2
	.word	.LC15
	.word	_ZL9math_ceilP4SQVM
	.word	2
	.word	.LC2
	.word	.LC16
	.word	_ZL8math_expP4SQVM
	.word	2
	.word	.LC2
	.word	.LC17
	.word	_ZL10math_srandP4SQVM
	.word	2
	.word	.LC2
	.word	.LC18
	.word	_ZL9math_randP4SQVM
	.word	1
	.word	0
	.word	.LC19
	.word	_ZL9math_fabsP4SQVM
	.word	2
	.word	.LC2
	.word	.LC20
	.word	_ZL8math_absP4SQVM
	.word	2
	.word	.LC2
	.word	0
	.word	0
	.space	8
	.section	.rodata
	.align	2
.LC21:
	.ascii	"RAND_MAX\000"
	.align	2
.LC22:
	.ascii	"PI\000"
	.section	.text.sqstd_register_mathlib,"ax",%progbits
	.align	2
	.global	sqstd_register_mathlib
	.thumb
	.thumb_func
	.type	sqstd_register_mathlib, %function
sqstd_register_mathlib:
	.fnstart
.LFB20:
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
	b	.L42
.L43:
	ldr	r3, .L45+4
.LPIC1:
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
	ldr	r3, .L45+8
.LPIC2:
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
	ldr	r3, .L45+12
.LPIC3:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #12]
	lsls	r3, r3, #4
	add	r3, r3, r2
	adds	r3, r3, #8
	ldr	r2, [r3]
	ldr	r3, .L45+16
.LPIC4:
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
	ldr	r3, .L45+20
.LPIC5:
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
.L42:
	ldr	r3, .L45+24
.LPIC6:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #12]
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L43
	ldr	r0, [r7, #4]
	ldr	r3, .L45+28
.LPIC7:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	sq_pushstring(PLT)
	ldr	r0, [r7, #4]
	mvn	r1, #-2147483648
	bl	sq_pushinteger(PLT)
	ldr	r0, [r7, #4]
	mvn	r1, #2
	movs	r2, #0
	bl	sq_newslot(PLT)
	ldr	r0, [r7, #4]
	ldr	r3, .L45+32
.LPIC8:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	sq_pushstring(PLT)
	ldr	r0, [r7, #4]
	flds	s0, .L45
	bl	sq_pushfloat(PLT)
	ldr	r0, [r7, #4]
	mvn	r1, #2
	movs	r2, #0
	bl	sq_newslot(PLT)
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L46:
	.align	2
.L45:
	.word	1078530011
	.word	_ZL13mathlib_funcs-(.LPIC1+4)
	.word	_ZL13mathlib_funcs-(.LPIC2+4)
	.word	_ZL13mathlib_funcs-(.LPIC3+4)
	.word	_ZL13mathlib_funcs-(.LPIC4+4)
	.word	_ZL13mathlib_funcs-(.LPIC5+4)
	.word	_ZL13mathlib_funcs-(.LPIC6+4)
	.word	.LC21-(.LPIC7+4)
	.word	.LC22-(.LPIC8+4)
	.fnend
	.size	sqstd_register_mathlib, .-sqstd_register_mathlib
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
