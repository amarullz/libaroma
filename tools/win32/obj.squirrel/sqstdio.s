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
	.file	"sqstdio.cpp"
	.section	.text._ZnwjPv,"axG",%progbits,_ZnwjPv,comdat
	.align	2
	.weak	_ZnwjPv
	.thumb
	.thumb_func
	.type	_ZnwjPv, %function
_ZnwjPv:
	.fnstart
.LFB10:
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
.LFB12:
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
	.section	.text.sqstd_fopen,"ax",%progbits
	.align	2
	.global	sqstd_fopen
	.thumb
	.thumb_func
	.type	sqstd_fopen, %function
sqstd_fopen:
	.fnstart
.LFB14:
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
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	fopen(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	sqstd_fopen, .-sqstd_fopen
	.section	.text.sqstd_fread,"ax",%progbits
	.align	2
	.global	sqstd_fread
	.thumb
	.thumb_func
	.type	sqstd_fread, %function
sqstd_fread:
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
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [r7]
	bl	fread(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	sqstd_fread, .-sqstd_fread
	.section	.text.sqstd_fwrite,"ax",%progbits
	.align	2
	.global	sqstd_fwrite
	.thumb
	.thumb_func
	.type	sqstd_fwrite, %function
sqstd_fwrite:
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
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [r7]
	bl	fwrite(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	sqstd_fwrite, .-sqstd_fwrite
	.section	.text.sqstd_fseek,"ax",%progbits
	.align	2
	.global	sqstd_fseek
	.thumb
	.thumb_func
	.type	sqstd_fseek, %function
sqstd_fseek:
	.fnstart
.LFB17:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #1
	beq	.L12
	cmp	r3, #2
	beq	.L13
	cmp	r3, #0
	bne	.L17
	movs	r3, #1
	str	r3, [r7, #20]
	b	.L15
.L12:
	movs	r3, #2
	str	r3, [r7, #20]
	b	.L15
.L13:
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L15
.L17:
	mov	r3, #-1
	b	.L16
.L15:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #20]
	bl	fseek(PLT)
	mov	r3, r0
.L16:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	sqstd_fseek, .-sqstd_fseek
	.section	.text.sqstd_ftell,"ax",%progbits
	.align	2
	.global	sqstd_ftell
	.thumb
	.thumb_func
	.type	sqstd_ftell, %function
sqstd_ftell:
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
	bl	ftell(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	sqstd_ftell, .-sqstd_ftell
	.section	.text.sqstd_fflush,"ax",%progbits
	.align	2
	.global	sqstd_fflush
	.thumb
	.thumb_func
	.type	sqstd_fflush, %function
sqstd_fflush:
	.fnstart
.LFB19:
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
	bl	fflush(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	sqstd_fflush, .-sqstd_fflush
	.section	.text.sqstd_fclose,"ax",%progbits
	.align	2
	.global	sqstd_fclose
	.thumb
	.thumb_func
	.type	sqstd_fclose, %function
sqstd_fclose:
	.fnstart
.LFB20:
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
	bl	fclose(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	sqstd_fclose, .-sqstd_fclose
	.section	.text.sqstd_feof,"ax",%progbits
	.align	2
	.global	sqstd_feof
	.thumb
	.thumb_func
	.type	sqstd_feof, %function
sqstd_feof:
	.fnstart
.LFB21:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	feof(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	sqstd_feof, .-sqstd_feof
	.section	.text._ZN8SQStreamC2Ev,"axG",%progbits,_ZN8SQStreamC5Ev,comdat
	.align	2
	.weak	_ZN8SQStreamC2Ev
	.thumb
	.thumb_func
	.type	_ZN8SQStreamC2Ev, %function
_ZN8SQStreamC2Ev:
	.fnstart
.LFB24:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r1, .L29
.LPIC0:
	add	r1, pc
	ldr	r3, [r7, #4]
	ldr	r2, .L29+4
	ldr	r2, [r1, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L30:
	.align	2
.L29:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.word	_ZTV8SQStream(GOT)
	.cantunwind
	.fnend
	.size	_ZN8SQStreamC2Ev, .-_ZN8SQStreamC2Ev
	.weak	_ZN8SQStreamC1Ev
	.thumb_set _ZN8SQStreamC1Ev,_ZN8SQStreamC2Ev
	.section	.text._ZN6SQFileC2EPvb,"axG",%progbits,_ZN6SQFileC5EPvb,comdat
	.align	2
	.weak	_ZN6SQFileC2EPvb
	.thumb
	.thumb_func
	.type	_ZN6SQFileC2EPvb, %function
_ZN6SQFileC2EPvb:
	.fnstart
.LFB29:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strb	r3, [r7, #7]
	ldr	r4, .L34
.LPIC1:
	add	r4, pc
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	_ZN8SQStreamC2Ev(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, .L34+4
	ldr	r2, [r4, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldrb	r2, [r7, #7]
	strb	r2, [r3, #8]
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L35:
	.align	2
.L34:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.word	_ZTV6SQFile(GOT)
	.cantunwind
	.fnend
	.size	_ZN6SQFileC2EPvb, .-_ZN6SQFileC2EPvb
	.weak	_ZN6SQFileC1EPvb
	.thumb_set _ZN6SQFileC1EPvb,_ZN6SQFileC2EPvb
	.section	.text._ZN6SQFileD2Ev,"axG",%progbits,_ZN6SQFileD5Ev,comdat
	.align	2
	.weak	_ZN6SQFileD2Ev
	.thumb
	.thumb_func
	.type	_ZN6SQFileD2Ev, %function
_ZN6SQFileD2Ev:
	.fnstart
.LFB32:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r1, .L40
.LPIC2:
	add	r1, pc
	ldr	r3, [r7, #4]
	ldr	r2, .L40+4
	ldr	r2, [r1, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	ldr	r0, [r7, #4]
	bl	_ZN6SQFile5CloseEv(PLT)
	movs	r3, #0
	cmp	r3, #0
	beq	.L38
	ldr	r0, [r7, #4]
	bl	_ZdlPv(PLT)
.L38:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L41:
	.align	2
.L40:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC2+4)
	.word	_ZTV6SQFile(GOT)
	.fnend
	.size	_ZN6SQFileD2Ev, .-_ZN6SQFileD2Ev
	.weak	_ZN6SQFileD1Ev
	.thumb_set _ZN6SQFileD1Ev,_ZN6SQFileD2Ev
	.section	.text._ZN6SQFileD0Ev,"axG",%progbits,_ZN6SQFileD0Ev,comdat
	.align	2
	.weak	_ZN6SQFileD0Ev
	.thumb
	.thumb_func
	.type	_ZN6SQFileD0Ev, %function
_ZN6SQFileD0Ev:
	.fnstart
.LFB34:
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
	bl	_ZN6SQFileD1Ev(PLT)
	ldr	r0, [r7, #4]
	bl	_ZdlPv(PLT)
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN6SQFileD0Ev, .-_ZN6SQFileD0Ev
	.section	.text._ZN6SQFile5CloseEv,"axG",%progbits,_ZN6SQFile5CloseEv,comdat
	.align	2
	.weak	_ZN6SQFile5CloseEv
	.thumb
	.thumb_func
	.type	_ZN6SQFile5CloseEv, %function
_ZN6SQFile5CloseEv:
	.fnstart
.LFB36:
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
	cmp	r3, #0
	beq	.L45
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L45
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	sqstd_fclose(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #8]
.L45:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN6SQFile5CloseEv, .-_ZN6SQFile5CloseEv
	.section	.text._ZN6SQFile4ReadEPvi,"axG",%progbits,_ZN6SQFile4ReadEPvi,comdat
	.align	2
	.weak	_ZN6SQFile4ReadEPvi
	.thumb
	.thumb_func
	.type	_ZN6SQFile4ReadEPvi, %function
_ZN6SQFile4ReadEPvi:
	.fnstart
.LFB37:
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
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #8]
	movs	r1, #1
	ldr	r2, [r7, #4]
	bl	sqstd_fread(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN6SQFile4ReadEPvi, .-_ZN6SQFile4ReadEPvi
	.section	.text._ZN6SQFile5WriteEPvi,"axG",%progbits,_ZN6SQFile5WriteEPvi,comdat
	.align	2
	.weak	_ZN6SQFile5WriteEPvi
	.thumb
	.thumb_func
	.type	_ZN6SQFile5WriteEPvi, %function
_ZN6SQFile5WriteEPvi:
	.fnstart
.LFB38:
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
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #8]
	movs	r1, #1
	ldr	r2, [r7, #4]
	bl	sqstd_fwrite(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN6SQFile5WriteEPvi, .-_ZN6SQFile5WriteEPvi
	.section	.text._ZN6SQFile5FlushEv,"axG",%progbits,_ZN6SQFile5FlushEv,comdat
	.align	2
	.weak	_ZN6SQFile5FlushEv
	.thumb
	.thumb_func
	.type	_ZN6SQFile5FlushEv, %function
_ZN6SQFile5FlushEv:
	.fnstart
.LFB39:
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
	mov	r0, r3
	bl	sqstd_fflush(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN6SQFile5FlushEv, .-_ZN6SQFile5FlushEv
	.section	.text._ZN6SQFile4TellEv,"axG",%progbits,_ZN6SQFile4TellEv,comdat
	.align	2
	.weak	_ZN6SQFile4TellEv
	.thumb
	.thumb_func
	.type	_ZN6SQFile4TellEv, %function
_ZN6SQFile4TellEv:
	.fnstart
.LFB40:
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
	mov	r0, r3
	bl	sqstd_ftell(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN6SQFile4TellEv, .-_ZN6SQFile4TellEv
	.section	.text._ZN6SQFile3LenEv,"axG",%progbits,_ZN6SQFile3LenEv,comdat
	.align	2
	.weak	_ZN6SQFile3LenEv
	.thumb
	.thumb_func
	.type	_ZN6SQFile3LenEv, %function
_ZN6SQFile3LenEv:
	.fnstart
.LFB41:
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
	ldr	r3, [r3]
	adds	r3, r3, #12
	ldr	r3, [r3]
	ldr	r0, [r7, #4]
	blx	r3
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r3, r3, #20
	ldr	r3, [r3]
	ldr	r0, [r7, #4]
	movs	r1, #0
	movs	r2, #1
	blx	r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r3, r3, #12
	ldr	r3, [r3]
	ldr	r0, [r7, #4]
	blx	r3
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r3, r3, #20
	ldr	r3, [r3]
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #12]
	movs	r2, #2
	blx	r3
	ldr	r3, [r7, #8]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN6SQFile3LenEv, .-_ZN6SQFile3LenEv
	.section	.text._ZN6SQFile4SeekEii,"axG",%progbits,_ZN6SQFile4SeekEii,comdat
	.align	2
	.weak	_ZN6SQFile4SeekEii
	.thumb
	.thumb_func
	.type	_ZN6SQFile4SeekEii, %function
_ZN6SQFile4SeekEii:
	.fnstart
.LFB42:
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
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	sqstd_fseek(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN6SQFile4SeekEii, .-_ZN6SQFile4SeekEii
	.section	.text._ZN6SQFile7IsValidEv,"axG",%progbits,_ZN6SQFile7IsValidEv,comdat
	.align	2
	.weak	_ZN6SQFile7IsValidEv
	.thumb
	.thumb_func
	.type	_ZN6SQFile7IsValidEv, %function
_ZN6SQFile7IsValidEv:
	.fnstart
.LFB43:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN6SQFile7IsValidEv, .-_ZN6SQFile7IsValidEv
	.section	.text._ZN6SQFile3EOSEv,"axG",%progbits,_ZN6SQFile3EOSEv,comdat
	.align	2
	.weak	_ZN6SQFile3EOSEv
	.thumb
	.thumb_func
	.type	_ZN6SQFile3EOSEv, %function
_ZN6SQFile3EOSEv:
	.fnstart
.LFB44:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #12
	sub	sp, sp, #12
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r3, r3, #12
	ldr	r3, [r3]
	ldr	r0, [r7, #4]
	blx	r3
	mov	r4, r0
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r3, r3, #16
	ldr	r3, [r3]
	ldr	r0, [r7, #4]
	blx	r3
	mov	r3, r0
	cmp	r4, r3
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZN6SQFile3EOSEv, .-_ZN6SQFile3EOSEv
	.section	.text._ZN6SQFile9GetHandleEv,"axG",%progbits,_ZN6SQFile9GetHandleEv,comdat
	.align	2
	.weak	_ZN6SQFile9GetHandleEv
	.thumb
	.thumb_func
	.type	_ZN6SQFile9GetHandleEv, %function
_ZN6SQFile9GetHandleEv:
	.fnstart
.LFB45:
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
	.size	_ZN6SQFile9GetHandleEv, .-_ZN6SQFile9GetHandleEv
	.section	.rodata
	.align	2
.LC0:
	.ascii	"file\000"
	.section	.text._ZL13_file__typeofP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL13_file__typeofP4SQVM, %function
_ZL13_file__typeofP4SQVM:
	.fnstart
.LFB46:
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
	ldr	r3, .L67
.LPIC3:
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
.L68:
	.align	2
.L67:
	.word	.LC0-(.LPIC3+4)
	.fnend
	.size	_ZL13_file__typeofP4SQVM, .-_ZL13_file__typeofP4SQVM
	.section	.text._ZL17_file_releasehookPvi,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL17_file_releasehookPvi, %function
_ZL17_file_releasehookPvi:
	.fnstart
.LFB47:
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
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #32
	ldr	r3, [r3]
	ldr	r0, [r7, #12]
	blx	r3
	ldr	r0, [r7, #12]
	movs	r1, #12
	bl	sq_free(PLT)
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL17_file_releasehookPvi, .-_ZL17_file_releasehookPvi
	.section	.rodata
	.align	2
.LC1:
	.ascii	"cannot open file\000"
	.align	2
.LC2:
	.ascii	"wrong parameter\000"
	.align	2
.LC3:
	.ascii	"cannot create blob with negative size\000"
	.section	.text._ZL17_file_constructorP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL17_file_constructorP4SQVM, %function
_ZL17_file_constructorP4SQVM:
	.fnstart
.LFB48:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #36
	sub	sp, sp, #36
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #1
	strb	r3, [r7, #31]
	ldr	r0, [r7, #4]
	movs	r1, #2
	bl	sq_gettype(PLT)
	mov	r2, r0
	movs	r3, #16
	movt	r3, 2048
	cmp	r2, r3
	bne	.L72
	ldr	r0, [r7, #4]
	movs	r1, #3
	bl	sq_gettype(PLT)
	mov	r2, r0
	movs	r3, #16
	movt	r3, 2048
	cmp	r2, r3
	bne	.L72
	movs	r3, #1
	b	.L73
.L72:
	movs	r3, #0
.L73:
	cmp	r3, #0
	beq	.L74
	add	r3, r7, #20
	ldr	r0, [r7, #4]
	movs	r1, #2
	mov	r2, r3
	bl	sq_getstring(PLT)
	add	r3, r7, #16
	ldr	r0, [r7, #4]
	movs	r1, #3
	mov	r2, r3
	bl	sq_getstring(PLT)
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	mov	r0, r2
	mov	r1, r3
	bl	sqstd_fopen(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L75
	ldr	r0, [r7, #4]
	ldr	r3, .L82
.LPIC4:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L81
.L74:
	ldr	r0, [r7, #4]
	movs	r1, #2
	bl	sq_gettype(PLT)
	mov	r3, r0
	cmp	r3, #2048
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L77
	ldr	r0, [r7, #4]
	movs	r1, #3
	bl	sq_gettype(PLT)
	mov	r2, r0
	movs	r3, #1
	movt	r3, 256
	cmp	r2, r3
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	strb	r3, [r7, #31]
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	movs	r1, #2
	mov	r2, r3
	bl	sq_getuserpointer(PLT)
	b	.L75
.L77:
	ldr	r0, [r7, #4]
	ldr	r3, .L82+4
.LPIC5:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L81
.L75:
	movs	r0, #12
	bl	sq_malloc(PLT)
	mov	r3, r0
	movs	r0, #12
	mov	r1, r3
	bl	_ZnwjPv(PLT)
	mov	r4, r0
	cmp	r4, #0
	beq	.L78
	ldr	r2, [r7, #12]
	ldrb	r3, [r7, #31]	@ zero_extendqisi2
	mov	r0, r4
	mov	r1, r2
	mov	r2, r3
	bl	_ZN6SQFileC1EPvb(PLT)
	mov	r3, r4
	b	.L79
.L78:
	mov	r3, r4
.L79:
	str	r3, [r7, #24]
	ldr	r0, [r7, #4]
	movs	r1, #1
	ldr	r2, [r7, #24]
	bl	sq_setinstanceup(PLT)
	mov	r3, r0
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L80
	ldr	r3, [r7, #24]
	ldr	r3, [r3]
	adds	r3, r3, #32
	ldr	r3, [r3]
	ldr	r0, [r7, #24]
	blx	r3
	ldr	r0, [r7, #24]
	movs	r1, #12
	bl	sq_free(PLT)
	ldr	r0, [r7, #4]
	ldr	r3, .L82+8
.LPIC6:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L81
.L80:
	ldr	r0, [r7, #4]
	movs	r1, #1
	ldr	r3, .L82+12
.LPIC7:
	add	r3, pc
	mov	r2, r3
	bl	sq_setreleasehook(PLT)
	movs	r3, #0
.L81:
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L83:
	.align	2
.L82:
	.word	.LC1-(.LPIC4+4)
	.word	.LC2-(.LPIC5+4)
	.word	.LC3-(.LPIC6+4)
	.word	_ZL17_file_releasehookPvi-(.LPIC7+4)
	.fnend
	.size	_ZL17_file_constructorP4SQVM, .-_ZL17_file_constructorP4SQVM
	.section	.text._ZL11_file_closeP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL11_file_closeP4SQVM, %function
_ZL11_file_closeP4SQVM:
	.fnstart
.LFB49:
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
	movs	r3, #1
	movt	r3, 32768
	bl	sq_getinstanceup(PLT)
	mov	r3, r0
	cmp	r3, #0
	blt	.L85
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L85
	movs	r3, #1
	b	.L86
.L85:
	movs	r3, #0
.L86:
	cmp	r3, #0
	beq	.L87
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	_ZN6SQFile5CloseEv(PLT)
.L87:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL11_file_closeP4SQVM, .-_ZL11_file_closeP4SQVM
	.section	.rodata
	.align	2
.LC4:
	.ascii	"constructor\000"
	.align	2
.LC5:
	.ascii	"x\000"
	.align	2
.LC6:
	.ascii	"_typeof\000"
	.align	2
.LC7:
	.ascii	"close\000"
	.section	.data.rel.local._ZL13_file_methods,"aw",%progbits
	.align	2
	.type	_ZL13_file_methods, %object
	.size	_ZL13_file_methods, 64
_ZL13_file_methods:
	.word	.LC4
	.word	_ZL17_file_constructorP4SQVM
	.word	3
	.word	.LC5
	.word	.LC6
	.word	_ZL13_file__typeofP4SQVM
	.word	1
	.word	.LC5
	.word	.LC7
	.word	_ZL11_file_closeP4SQVM
	.word	1
	.word	.LC5
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.rodata
	.align	2
.LC8:
	.ascii	"std_file\000"
	.section	.text.sqstd_createfile,"ax",%progbits
	.align	2
	.global	sqstd_createfile
	.thumb
	.thumb_func
	.type	sqstd_createfile, %function
sqstd_createfile:
	.fnstart
.LFB50:
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
	ldr	r0, [r7, #12]
	bl	sq_gettop(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r0, [r7, #12]
	bl	sq_pushregistrytable(PLT)
	ldr	r0, [r7, #12]
	ldr	r3, .L94
.LPIC8:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	sq_pushstring(PLT)
	ldr	r0, [r7, #12]
	mvn	r1, #1
	bl	sq_get(PLT)
	mov	r3, r0
	mvns	r3, r3
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L90
	ldr	r0, [r7, #12]
	mvn	r1, #1
	bl	sq_remove(PLT)
	ldr	r0, [r7, #12]
	bl	sq_pushroottable(PLT)
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	sq_pushuserpointer(PLT)
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L91
	ldr	r0, [r7, #12]
	movs	r1, #1
	bl	sq_pushinteger(PLT)
	b	.L92
.L91:
	ldr	r0, [r7, #12]
	bl	sq_pushnull(PLT)
.L92:
	ldr	r0, [r7, #12]
	movs	r1, #3
	movs	r2, #1
	movs	r3, #0
	bl	sq_call(PLT)
	mov	r3, r0
	mvns	r3, r3
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L90
	ldr	r0, [r7, #12]
	mvn	r1, #1
	bl	sq_remove(PLT)
	movs	r3, #0
	b	.L93
.L90:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #20]
	bl	sq_settop(PLT)
	movs	r3, #0
.L93:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L95:
	.align	2
.L94:
	.word	.LC8-(.LPIC8+4)
	.fnend
	.size	sqstd_createfile, .-sqstd_createfile
	.section	.rodata
	.align	2
.LC9:
	.ascii	"not a file\000"
	.section	.text.sqstd_getfile,"ax",%progbits
	.align	2
	.global	sqstd_getfile
	.thumb
	.thumb_func
	.type	sqstd_getfile, %function
sqstd_getfile:
	.fnstart
.LFB51:
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
	movs	r3, #0
	str	r3, [r7, #20]
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	mov	r2, r3
	movs	r3, #1
	movt	r3, 32768
	bl	sq_getinstanceup(PLT)
	mov	r3, r0
	mvns	r3, r3
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L97
	ldr	r3, [r7, #20]
	mov	r0, r3
	bl	_ZN6SQFile9GetHandleEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3]
	movs	r3, #0
	b	.L99
.L97:
	ldr	r0, [r7, #12]
	ldr	r3, .L100
.LPIC9:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
.L99:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L101:
	.align	2
.L100:
	.word	.LC9-(.LPIC9+4)
	.fnend
	.size	sqstd_getfile, .-sqstd_getfile
	.section	.text._ZL22_io_file_lexfeed_PLAINPv,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL22_io_file_lexfeed_PLAINPv, %function
_ZL22_io_file_lexfeed_PLAINPv:
	.fnstart
.LFB52:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	add	r3, r7, #11
	mov	r0, r3
	movs	r1, #1
	movs	r2, #1
	ldr	r3, [r7, #4]
	bl	sqstd_fread(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	gt
	movgt	r3, #1
	movle	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L103
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	b	.L105
.L103:
	movs	r3, #0
.L105:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL22_io_file_lexfeed_PLAINPv, .-_ZL22_io_file_lexfeed_PLAINPv
	.section	.text._ZL24_io_file_lexfeed_UCS2_LEPv,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL24_io_file_lexfeed_UCS2_LEPv, %function
_ZL24_io_file_lexfeed_UCS2_LEPv:
	.fnstart
.LFB53:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	add	r3, r7, #8
	mov	r0, r3
	movs	r1, #4
	movs	r2, #1
	ldr	r3, [r7, #4]
	bl	sqstd_fread(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	gt
	movgt	r3, #1
	movle	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L107
	ldr	r3, [r7, #8]
	uxtb	r3, r3
	b	.L109
.L107:
	movs	r3, #0
.L109:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL24_io_file_lexfeed_UCS2_LEPv, .-_ZL24_io_file_lexfeed_UCS2_LEPv
	.section	.text._ZL24_io_file_lexfeed_UCS2_BEPv,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL24_io_file_lexfeed_UCS2_BEPv, %function
_ZL24_io_file_lexfeed_UCS2_BEPv:
	.fnstart
.LFB54:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	add	r3, r7, #10
	mov	r0, r3
	movs	r1, #2
	movs	r2, #1
	ldr	r3, [r7, #4]
	bl	sqstd_fread(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	gt
	movgt	r3, #1
	movle	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L111
	ldrh	r3, [r7, #10]
	lsrs	r3, r3, #8
	uxth	r3, r3
	uxth	r2, r3
	ldrh	r3, [r7, #10]
	lsls	r3, r3, #8
	uxth	r3, r3
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	strh	r3, [r7, #10]	@ movhi
	ldrh	r3, [r7, #10]
	uxtb	r3, r3
	b	.L113
.L111:
	movs	r3, #0
.L113:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL24_io_file_lexfeed_UCS2_BEPv, .-_ZL24_io_file_lexfeed_UCS2_BEPv
	.section	.text._Z9file_readPvS_i,"ax",%progbits
	.align	2
	.global	_Z9file_readPvS_i
	.thumb
	.thumb_func
	.type	_Z9file_readPvS_i, %function
_Z9file_readPvS_i:
	.fnstart
.LFB55:
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
	ldr	r0, [r7, #8]
	movs	r1, #1
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #12]
	bl	sqstd_fread(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L115
	ldr	r3, [r7, #20]
	b	.L116
.L115:
	mov	r3, #-1
.L116:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_Z9file_readPvS_i, .-_Z9file_readPvS_i
	.section	.text._Z10file_writePvS_i,"ax",%progbits
	.align	2
	.global	_Z10file_writePvS_i
	.thumb
	.thumb_func
	.type	_Z10file_writePvS_i, %function
_Z10file_writePvS_i:
	.fnstart
.LFB56:
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
	ldr	r0, [r7, #8]
	movs	r1, #1
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #12]
	bl	sqstd_fwrite(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_Z10file_writePvS_i, .-_Z10file_writePvS_i
	.section	.rodata
	.align	2
.LC10:
	.ascii	"rb\000"
	.align	2
.LC11:
	.ascii	"io error\000"
	.align	2
.LC12:
	.ascii	"Unrecognozed ecoding\000"
	.align	2
.LC13:
	.ascii	"cannot open the file\000"
	.section	.text.sqstd_loadfile,"ax",%progbits
	.align	2
	.global	sqstd_loadfile
	.thumb
	.thumb_func
	.type	sqstd_loadfile, %function
sqstd_loadfile:
	.fnstart
.LFB57:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #44
	sub	sp, sp, #44
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r4, .L134
.LPIC12:
	add	r4, pc
	ldr	r0, [r7, #8]
	ldr	r3, .L134+4
.LPIC10:
	add	r3, pc
	mov	r1, r3
	bl	sqstd_fopen(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, .L134+8
.LPIC11:
	add	r3, pc
	str	r3, [r7, #28]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L120
	add	r3, r7, #18
	mov	r0, r3
	movs	r1, #1
	movs	r2, #2
	ldr	r3, [r7, #24]
	bl	sqstd_fread(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #2
	beq	.L121
	movs	r3, #0
	strh	r3, [r7, #18]	@ movhi
.L121:
	ldrh	r2, [r7, #18]
	movw	r3, #64250
	cmp	r2, r3
	bne	.L122
	ldr	r0, [r7, #24]
	movs	r1, #0
	movs	r2, #2
	bl	sqstd_fseek(PLT)
	ldr	r0, [r7, #12]
	ldr	r3, .L134+12
	ldr	r3, [r4, r3]
	mov	r1, r3
	ldr	r2, [r7, #24]
	bl	sq_readclosure(PLT)
	mov	r3, r0
	mvns	r3, r3
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L123
	ldr	r0, [r7, #24]
	bl	sqstd_fclose(PLT)
	movs	r3, #0
	b	.L132
.L122:
	ldrh	r3, [r7, #18]
	movw	r2, #65279
	cmp	r3, r2
	beq	.L126
	movw	r2, #65534
	cmp	r3, r2
	beq	.L127
	movw	r2, #48111
	cmp	r3, r2
	beq	.L128
	b	.L133
.L127:
	ldr	r3, .L134+16
.LPIC13:
	add	r3, pc
	str	r3, [r7, #28]
	b	.L129
.L126:
	ldr	r3, .L134+20
.LPIC14:
	add	r3, pc
	str	r3, [r7, #28]
	b	.L129
.L128:
	add	r3, r7, #17
	mov	r0, r3
	movs	r1, #1
	movs	r2, #1
	ldr	r3, [r7, #24]
	bl	sqstd_fread(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L130
	ldr	r0, [r7, #24]
	bl	sqstd_fclose(PLT)
	ldr	r0, [r7, #12]
	ldr	r3, .L134+24
.LPIC15:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L132
.L130:
	ldrb	r3, [r7, #17]	@ zero_extendqisi2
	cmp	r3, #191
	beq	.L131
	ldr	r0, [r7, #24]
	bl	sqstd_fclose(PLT)
	ldr	r0, [r7, #12]
	ldr	r3, .L134+28
.LPIC16:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L132
.L131:
	ldr	r3, .L134+32
.LPIC17:
	add	r3, pc
	str	r3, [r7, #28]
	b	.L129
.L133:
	ldr	r0, [r7, #24]
	movs	r1, #0
	movs	r2, #2
	bl	sqstd_fseek(PLT)
	nop
.L129:
	ldr	r3, [r7, #4]
	str	r3, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #28]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #8]
	bl	sq_compile(PLT)
	mov	r3, r0
	mvns	r3, r3
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L123
	ldr	r0, [r7, #24]
	bl	sqstd_fclose(PLT)
	movs	r3, #0
	b	.L132
.L123:
	ldr	r0, [r7, #24]
	bl	sqstd_fclose(PLT)
	mov	r3, #-1
	b	.L132
.L120:
	ldr	r0, [r7, #12]
	ldr	r3, .L134+36
.LPIC18:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
.L132:
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L135:
	.align	2
.L134:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC12+4)
	.word	.LC10-(.LPIC10+4)
	.word	_ZL22_io_file_lexfeed_PLAINPv-(.LPIC11+4)
	.word	_Z9file_readPvS_i(GOT)
	.word	_ZL24_io_file_lexfeed_UCS2_BEPv-(.LPIC13+4)
	.word	_ZL24_io_file_lexfeed_UCS2_LEPv-(.LPIC14+4)
	.word	.LC11-(.LPIC15+4)
	.word	.LC12-(.LPIC16+4)
	.word	_ZL22_io_file_lexfeed_PLAINPv-(.LPIC17+4)
	.word	.LC13-(.LPIC18+4)
	.fnend
	.size	sqstd_loadfile, .-sqstd_loadfile
	.section	.text.sqstd_dofile,"ax",%progbits
	.align	2
	.global	sqstd_dofile
	.thumb
	.thumb_func
	.type	sqstd_dofile, %function
sqstd_dofile:
	.fnstart
.LFB58:
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
	ldr	r1, [r7, #8]
	ldr	r2, [r7]
	bl	sqstd_loadfile(PLT)
	mov	r3, r0
	mvns	r3, r3
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L137
	ldr	r0, [r7, #12]
	mvn	r1, #1
	bl	sq_push(PLT)
	ldr	r0, [r7, #12]
	movs	r1, #1
	ldr	r2, [r7, #4]
	movs	r3, #1
	bl	sq_call(PLT)
	mov	r3, r0
	mvns	r3, r3
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L138
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L139
	mvn	r3, #1
	b	.L140
.L139:
	mov	r3, #-1
.L140:
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	sq_remove(PLT)
	movs	r3, #1
	b	.L141
.L138:
	ldr	r0, [r7, #12]
	movs	r1, #1
	bl	sq_pop(PLT)
.L137:
	mov	r3, #-1
.L141:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	sqstd_dofile, .-sqstd_dofile
	.section	.rodata
	.align	2
.LC14:
	.ascii	"wb+\000"
	.section	.text.sqstd_writeclosuretofile,"ax",%progbits
	.align	2
	.global	sqstd_writeclosuretofile
	.thumb
	.thumb_func
	.type	sqstd_writeclosuretofile, %function
sqstd_writeclosuretofile:
	.fnstart
.LFB59:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #20
	sub	sp, sp, #20
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r4, .L146
.LPIC21:
	add	r4, pc
	ldr	r0, [r7]
	ldr	r3, .L146+4
.LPIC19:
	add	r3, pc
	mov	r1, r3
	bl	sqstd_fopen(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L143
	ldr	r0, [r7, #4]
	ldr	r3, .L146+8
.LPIC20:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L144
.L143:
	ldr	r0, [r7, #4]
	ldr	r3, .L146+12
	ldr	r3, [r4, r3]
	mov	r1, r3
	ldr	r2, [r7, #12]
	bl	sq_writeclosure(PLT)
	mov	r3, r0
	mvns	r3, r3
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L145
	ldr	r0, [r7, #12]
	bl	sqstd_fclose(PLT)
	movs	r3, #0
	b	.L144
.L145:
	ldr	r0, [r7, #12]
	bl	sqstd_fclose(PLT)
	mov	r3, #-1
.L144:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L147:
	.align	2
.L146:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC21+4)
	.word	.LC14-(.LPIC19+4)
	.word	.LC13-(.LPIC20+4)
	.word	_Z10file_writePvS_i(GOT)
	.fnend
	.size	sqstd_writeclosuretofile, .-sqstd_writeclosuretofile
	.section	.text._Z14_g_io_loadfileP4SQVM,"ax",%progbits
	.align	2
	.global	_Z14_g_io_loadfileP4SQVM
	.thumb
	.thumb_func
	.type	_Z14_g_io_loadfileP4SQVM, %function
_Z14_g_io_loadfileP4SQVM:
	.fnstart
.LFB60:
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
	str	r3, [r7, #8]
	add	r3, r7, #12
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
	beq	.L149
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	movs	r1, #3
	mov	r2, r3
	bl	sq_getbool(PLT)
.L149:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	ldr	r0, [r7, #4]
	mov	r1, r2
	mov	r2, r3
	bl	sqstd_loadfile(PLT)
	mov	r3, r0
	mvns	r3, r3
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L150
	movs	r3, #1
	b	.L152
.L150:
	mov	r3, #-1
.L152:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_Z14_g_io_loadfileP4SQVM, .-_Z14_g_io_loadfileP4SQVM
	.section	.text._Z24_g_io_writeclosuretofileP4SQVM,"ax",%progbits
	.align	2
	.global	_Z24_g_io_writeclosuretofileP4SQVM
	.thumb
	.thumb_func
	.type	_Z24_g_io_writeclosuretofileP4SQVM, %function
_Z24_g_io_writeclosuretofileP4SQVM:
	.fnstart
.LFB61:
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
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	sqstd_writeclosuretofile(PLT)
	mov	r3, r0
	mvns	r3, r3
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L154
	movs	r3, #1
	b	.L156
.L154:
	mov	r3, #-1
.L156:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_Z24_g_io_writeclosuretofileP4SQVM, .-_Z24_g_io_writeclosuretofileP4SQVM
	.section	.text._Z12_g_io_dofileP4SQVM,"ax",%progbits
	.align	2
	.global	_Z12_g_io_dofileP4SQVM
	.thumb
	.thumb_func
	.type	_Z12_g_io_dofileP4SQVM, %function
_Z12_g_io_dofileP4SQVM:
	.fnstart
.LFB62:
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
	str	r3, [r7, #8]
	add	r3, r7, #12
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
	beq	.L158
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	movs	r1, #3
	mov	r2, r3
	bl	sq_getbool(PLT)
.L158:
	ldr	r0, [r7, #4]
	movs	r1, #1
	bl	sq_push(PLT)
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	ldr	r0, [r7, #4]
	mov	r1, r2
	movs	r2, #1
	bl	sqstd_dofile(PLT)
	mov	r3, r0
	mvns	r3, r3
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L159
	movs	r3, #1
	b	.L161
.L159:
	mov	r3, #-1
.L161:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_Z12_g_io_dofileP4SQVM, .-_Z12_g_io_dofileP4SQVM
	.section	.rodata
	.align	2
.LC15:
	.ascii	"loadfile\000"
	.align	2
.LC16:
	.ascii	".sb\000"
	.align	2
.LC17:
	.ascii	"dofile\000"
	.align	2
.LC18:
	.ascii	"writeclosuretofile\000"
	.align	2
.LC19:
	.ascii	".sc\000"
	.section	.data.rel._ZL11iolib_funcs,"aw",%progbits
	.align	2
	.type	_ZL11iolib_funcs, %object
	.size	_ZL11iolib_funcs, 64
_ZL11iolib_funcs:
	.word	.LC15
	.word	_Z14_g_io_loadfileP4SQVM
	.word	-2
	.word	.LC16
	.word	.LC17
	.word	_Z12_g_io_dofileP4SQVM
	.word	-2
	.word	.LC16
	.word	.LC18
	.word	_Z24_g_io_writeclosuretofileP4SQVM
	.word	3
	.word	.LC19
	.word	0
	.word	0
	.space	8
	.section	.rodata
	.align	2
.LC20:
	.ascii	"stdout\000"
	.align	2
.LC21:
	.ascii	"stdin\000"
	.align	2
.LC22:
	.ascii	"stderr\000"
	.section	.text.sqstd_register_iolib,"ax",%progbits
	.align	2
	.global	sqstd_register_iolib
	.thumb
	.thumb_func
	.type	sqstd_register_iolib, %function
sqstd_register_iolib:
	.fnstart
.LFB63:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #28
	sub	sp, sp, #28
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	ldr	r4, .L164
.LPIC27:
	add	r4, pc
	ldr	r0, [r7, #4]
	bl	sq_gettop(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, .L164+4
.LPIC22:
	add	r3, pc
	str	r3, [sp]
	ldr	r3, .L164+8
.LPIC23:
	add	r3, pc
	str	r3, [sp, #4]
	ldr	r0, [r7, #4]
	ldr	r3, .L164+12
.LPIC24:
	add	r3, pc
	mov	r1, r3
	movs	r2, #1
	movt	r2, 32768
	ldr	r3, .L164+16
.LPIC25:
	add	r3, pc
	bl	_Z14declare_streamP4SQVMPKcPvS2_P16tagSQRegFunctionS5_(PLT)
	ldr	r0, [r7, #4]
	ldr	r3, .L164+20
.LPIC26:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	sq_pushstring(PLT)
	ldr	r3, .L164+24
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	ldr	r0, [r7, #4]
	mov	r1, r3
	movs	r2, #0
	bl	sqstd_createfile(PLT)
	ldr	r0, [r7, #4]
	mvn	r1, #2
	movs	r2, #0
	bl	sq_newslot(PLT)
	ldr	r0, [r7, #4]
	ldr	r3, .L164+28
.LPIC28:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	sq_pushstring(PLT)
	ldr	r3, .L164+32
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	ldr	r0, [r7, #4]
	mov	r1, r3
	movs	r2, #0
	bl	sqstd_createfile(PLT)
	ldr	r0, [r7, #4]
	mvn	r1, #2
	movs	r2, #0
	bl	sq_newslot(PLT)
	ldr	r0, [r7, #4]
	ldr	r3, .L164+36
.LPIC29:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	sq_pushstring(PLT)
	ldr	r3, .L164+40
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	ldr	r0, [r7, #4]
	mov	r1, r3
	movs	r2, #0
	bl	sqstd_createfile(PLT)
	ldr	r0, [r7, #4]
	mvn	r1, #2
	movs	r2, #0
	bl	sq_newslot(PLT)
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #12]
	bl	sq_settop(PLT)
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L165:
	.align	2
.L164:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC27+4)
	.word	_ZL13_file_methods-(.LPIC22+4)
	.word	_ZL11iolib_funcs-(.LPIC23+4)
	.word	.LC0-(.LPIC24+4)
	.word	.LC8-(.LPIC25+4)
	.word	.LC20-(.LPIC26+4)
	.word	stdout(GOT)
	.word	.LC21-(.LPIC28+4)
	.word	stdin(GOT)
	.word	.LC22-(.LPIC29+4)
	.word	stderr(GOT)
	.fnend
	.size	sqstd_register_iolib, .-sqstd_register_iolib
	.weak	_ZTV6SQFile
	.section	.data.rel.ro._ZTV6SQFile,"awG",%progbits,_ZTV6SQFile,comdat
	.align	3
	.type	_ZTV6SQFile, %object
	.size	_ZTV6SQFile, 48
_ZTV6SQFile:
	.word	0
	.word	_ZTI6SQFile
	.word	_ZN6SQFile4ReadEPvi
	.word	_ZN6SQFile5WriteEPvi
	.word	_ZN6SQFile5FlushEv
	.word	_ZN6SQFile4TellEv
	.word	_ZN6SQFile3LenEv
	.word	_ZN6SQFile4SeekEii
	.word	_ZN6SQFile7IsValidEv
	.word	_ZN6SQFile3EOSEv
	.word	_ZN6SQFileD1Ev
	.word	_ZN6SQFileD0Ev
	.weak	_ZTV8SQStream
	.section	.data.rel.ro._ZTV8SQStream,"awG",%progbits,_ZTV8SQStream,comdat
	.align	3
	.type	_ZTV8SQStream, %object
	.size	_ZTV8SQStream, 40
_ZTV8SQStream:
	.word	0
	.word	_ZTI8SQStream
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.weak	_ZTS6SQFile
	.section	.rodata._ZTS6SQFile,"aG",%progbits,_ZTS6SQFile,comdat
	.align	2
	.type	_ZTS6SQFile, %object
	.size	_ZTS6SQFile, 8
_ZTS6SQFile:
	.ascii	"6SQFile\000"
	.weak	_ZTI6SQFile
	.section	.data.rel.ro._ZTI6SQFile,"awG",%progbits,_ZTI6SQFile,comdat
	.align	2
	.type	_ZTI6SQFile, %object
	.size	_ZTI6SQFile, 12
_ZTI6SQFile:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTS6SQFile
	.word	_ZTI8SQStream
	.weak	_ZTS8SQStream
	.section	.rodata._ZTS8SQStream,"aG",%progbits,_ZTS8SQStream,comdat
	.align	2
	.type	_ZTS8SQStream, %object
	.size	_ZTS8SQStream, 10
_ZTS8SQStream:
	.ascii	"8SQStream\000"
	.weak	_ZTI8SQStream
	.section	.data.rel.ro._ZTI8SQStream,"awG",%progbits,_ZTI8SQStream,comdat
	.align	2
	.type	_ZTI8SQStream, %object
	.size	_ZTI8SQStream, 8
_ZTI8SQStream:
	.word	_ZTVN10__cxxabiv117__class_type_infoE+8
	.word	_ZTS8SQStream
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
