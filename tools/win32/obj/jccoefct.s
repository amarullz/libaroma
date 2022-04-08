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
	.file	"jccoefct.c"
	.section	.text.start_iMCU_row,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	start_iMCU_row, %function
start_iMCU_row:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #244]
	ldr	r3, [r0, #344]
	cmp	r2, #1
	ble	.L2
	movs	r2, #1
	str	r2, [r3, #20]
	movs	r2, #0
	str	r2, [r3, #12]
	str	r2, [r3, #16]
	bx	lr
.L2:
	ldr	r1, [r0, #240]
	ldr	r2, [r3, #8]
	subs	r1, r1, #1
	cmp	r2, r1
	ldr	r2, [r0, #248]
	ite	cc
	ldrcc	r2, [r2, #12]
	ldrcs	r2, [r2, #72]
	str	r2, [r3, #20]
	movs	r2, #0
	str	r2, [r3, #12]
	str	r2, [r3, #16]
	bx	lr
	.size	start_iMCU_row, .-start_iMCU_row
	.section	.text.compress_output,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	compress_output, %function
compress_output:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #244]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	fstmfdd	sp!, {d8, d9, d10, d11, d12, d13}
	sub	sp, sp, #60
	cmp	r3, #0
	str	r0, [sp, #16]
	ldr	r10, [r0, #344]
	ble	.L10
	movs	r4, #0
	mov	r5, r0
	mov	r9, r4
	add	r8, sp, #40
	mov	r6, r0
.L11:
	ldr	r3, [r5, #248]
	mov	r0, r6
	ldr	r7, [r10, #8]
	adds	r5, r5, #4
	ldr	lr, [r6, #4]
	ldr	r2, [r3, #12]
	ldr	r1, [r3, #4]
	add	r3, r1, #16
	ldr	r1, [r10, r3, lsl #2]
	mov	r3, r2
	str	r9, [sp]
	mul	r2, r7, r2
	ldr	ip, [lr, #32]
	blx	ip
	ldr	r3, [r6, #244]
	str	r0, [r8, r4, lsl #2]
	adds	r4, r4, #1
	cmp	r3, r4
	bgt	.L11
.L10:
	ldr	r2, [r10, #16]
	str	r2, [sp, #20]
	ldr	r3, [sp, #20]
	ldr	r2, [r10, #20]
	cmp	r3, r2
	bge	.L9
	mov	r5, r3
	ldr	r3, [r10, #12]
	ldr	r6, [sp, #16]
	lsls	r5, r5, #2
	vmov.i32	q6, #128  @ v4si
	add	r7, r10, #24
	str	r3, [sp, #24]
	str	r5, [sp, #28]
	ldr	r3, [r6, #264]
	ldr	r5, [sp, #24]
	str	r7, [sp, #36]
.L38:
	cmp	r3, r5
	bls	.L13
.L14:
	ldr	r5, [sp, #16]
	ldr	r3, [r5, #244]
	cmp	r3, #0
	ble	.L36
	lsls	r3, r3, #2
	movs	r6, #0
	str	r6, [sp, #12]
	str	r3, [sp, #32]
	mov	r3, r6
.L37:
	ldr	r2, [sp, #16]
	ldr	r6, [sp, #12]
	add	r2, r2, r6
	ldr	r1, [r2, #248]
	ldr	r2, [r1, #56]
	ldr	r1, [r1, #52]
	cmp	r2, #0
	ble	.L15
	ldr	r7, [sp, #24]
	lsls	r0, r1, #7
	cmp	r1, #0
	add	r4, sp, #40
	ldr	r4, [r6, r4]
	mul	r9, r7, r0
	ble	.L15
	cmp	r1, #1
	beq	.L106
	cmp	r1, #2
	beq	.L107
	cmp	r1, #3
	beq	.L108
	ldr	r7, [sp, #20]
	ldr	r0, [sp, #28]
	add	r2, r2, r7
	add	r2, r4, r2, lsl #2
	add	r0, r0, r4
	str	r2, [sp, #8]
	b	.L32
.L109:
	cmp	r1, #5
	add	r5, r3, #10
	add	r8, r3, #5
	str	ip, [r10, r5, lsl #2]
	add	fp, r2, #640
	beq	.L40
	cmp	r1, #6
	add	r8, r3, #11
	add	ip, r2, #768
	str	fp, [r10, r8, lsl #2]
	beq	.L41
	cmp	r1, #7
	add	r8, r3, #12
	add	lr, r2, #896
	str	ip, [r10, r8, lsl #2]
	beq	.L42
	cmp	r1, #8
	add	ip, r3, #13
	add	r7, r2, #1024
	str	lr, [r10, ip, lsl #2]
	beq	.L43
	cmp	r1, #9
	add	r3, r3, #14
	add	r2, r2, #1152
	str	r7, [r10, r3, lsl #2]
	beq	.L44
	mov	r3, r5
	adds	r4, r4, #6
	str	r2, [r10, r4, lsl #2]
.L31:
	ldr	r2, [sp, #8]
	cmp	r0, r2
	beq	.L15
.L32:
	ldr	r2, [r0], #4
	cmp	r1, #4
	add	lr, r3, #6
	add	r7, r3, #7
	add	r6, r3, #8
	add	r4, r3, #9
	add	r2, r2, r9
	add	fp, r3, #4
	add	ip, r2, #256
	add	r8, r2, #128
	add	r5, r2, #384
	str	r2, [r10, lr, lsl #2]
	str	r8, [r10, r7, lsl #2]
	str	ip, [r10, r6, lsl #2]
	add	ip, r2, #512
	str	r5, [r10, r4, lsl #2]
	bne	.L109
	ldr	r2, [sp, #8]
	mov	r3, fp
	cmp	r0, r2
	bne	.L32
.L15:
	ldr	r5, [sp, #12]
	ldr	r6, [sp, #32]
	adds	r5, r5, #4
	cmp	r5, r6
	str	r5, [sp, #12]
	bne	.L37
.L36:
	ldr	r5, [sp, #16]
	ldr	r1, [sp, #36]
	ldr	r3, [r5, #364]
	mov	r0, r5
	ldr	r3, [r3, #4]
	blx	r3
	cmp	r0, #0
	beq	.L110
	ldr	r5, [sp, #16]
	ldr	r6, [sp, #24]
	ldr	r3, [r5, #264]
	adds	r6, r6, #1
	str	r6, [sp, #24]
	cmp	r3, r6
	bhi	.L14
	ldr	r2, [r10, #20]
.L13:
	ldr	r7, [sp, #20]
	movs	r0, #0
	ldr	r5, [sp, #28]
	str	r0, [r10, #12]
	adds	r7, r7, #1
	cmp	r7, r2
	add	r5, r5, #4
	str	r7, [sp, #20]
	str	r5, [sp, #28]
	bge	.L9
	str	r0, [sp, #24]
	mov	r5, r0
	b	.L38
.L44:
	mov	r3, r4
	b	.L31
.L43:
	mov	r3, r6
	b	.L31
.L42:
	mov	r3, r7
	b	.L31
.L41:
	mov	r3, lr
	b	.L31
.L40:
	mov	r3, r8
	b	.L31
.L106:
	ldr	r1, [sp, #28]
	adds	r6, r3, #6
	add	r5, r10, r6, lsl #2
	add	r1, r1, r4
	add	lr, r5, #16
	add	r7, r1, #16
	cmp	r5, r7
	it	cc
	cmpcc	r1, lr
	ite	cs
	movcs	r0, #1
	movcc	r0, #0
	cmp	r2, #6
	ite	ls
	movls	r0, #0
	andhi	r0, r0, #1
	cmp	r0, #0
	beq	.L18
	lsrs	r6, r2, #2
	vdup.32	q8, r9
	vld1.32	{q9}, [r1]
	cmp	r6, #1
	vadd.i32	q9, q9, q8
	lsl	r0, r6, #2
	vst1.32	{q9}, [r5]
	beq	.L19
	vld1.32	{q9}, [r7]
	cmp	r6, #2
	vadd.i32	q9, q9, q8
	vst1.32	{q9}, [lr]
	beq	.L19
	adds	r1, r1, #32
	adds	r5, r5, #32
	vld1.32	{q9}, [r1]
	vadd.i32	q8, q9, q8
	vst1.32	{q8}, [r5]
.L19:
	cmp	r2, r0
	add	r7, r3, r0
	beq	.L105
	ldr	r1, [sp, #20]
	adds	r5, r7, #6
	add	r1, r1, r0
	ldr	r6, [r4, r1, lsl #2]
	adds	r1, r0, #1
	cmp	r2, r1
	add	r6, r6, r9
	str	r6, [r10, r5, lsl #2]
	ble	.L105
	ldr	r6, [sp, #20]
	adds	r0, r0, #2
	cmp	r2, r0
	add	r1, r1, r6
	ldr	r5, [r4, r1, lsl #2]
	add	r1, r7, #7
	add	r5, r5, r9
	str	r5, [r10, r1, lsl #2]
	ble	.L105
	add	r0, r0, r6
	adds	r7, r7, #8
	ldr	r1, [r4, r0, lsl #2]
	add	r1, r1, r9
	str	r1, [r10, r7, lsl #2]
.L105:
	add	r3, r3, r2
	b	.L15
.L108:
	ldr	r5, [sp, #28]
	adds	r6, r3, #6
	cmp	r2, #1
	add	r0, r3, #8
	ldr	r1, [r4, r5]
	add	r5, r3, #7
	add	r1, r1, r9
	str	r1, [r10, r6, lsl #2]
	add	r6, r1, #128
	add	r1, r1, #256
	str	r6, [r10, r5, lsl #2]
	str	r1, [r10, r0, lsl #2]
	beq	.L30
	ldr	r6, [sp, #28]
	cmp	r2, #2
	add	r5, r3, #10
	add	r0, r3, #11
	add	r4, r4, r6
	add	r6, r3, #9
	ldr	r1, [r4, #4]
	add	r1, r1, r9
	str	r1, [r10, r6, lsl #2]
	add	r6, r1, #128
	add	r1, r1, #256
	str	r6, [r10, r5, lsl #2]
	str	r1, [r10, r0, lsl #2]
	beq	.L30
	ldr	r1, [r4, #8]
	add	r6, r3, #12
	cmp	r2, #3
	add	r5, r3, #13
	add	r0, r3, #14
	add	r1, r1, r9
	str	r1, [r10, r6, lsl #2]
	add	r6, r1, #128
	add	r1, r1, #256
	str	r6, [r10, r5, lsl #2]
	str	r1, [r10, r0, lsl #2]
	beq	.L30
	ldr	r1, [r4, #12]
	add	r5, r3, #15
	add	r4, r3, #16
	add	r0, r3, #17
	add	r1, r1, r9
	str	r1, [r10, r5, lsl #2]
	add	r5, r1, #128
	add	r1, r1, #256
	str	r5, [r10, r4, lsl #2]
	str	r1, [r10, r0, lsl #2]
.L30:
	add	r2, r2, r2, lsl #1
	add	r3, r3, r2
	b	.L15
.L107:
	ldr	r5, [sp, #28]
	adds	r0, r3, #6
	add	r1, r10, r0, lsl #2
	add	r5, r5, r4
	add	r7, r1, r2, lsl #3
	add	r6, r5, r2, lsl #2
	cmp	r1, r6
	it	cc
	cmpcc	r5, r7
	ite	cs
	movcs	r6, #1
	movcc	r6, #0
	cmp	r2, #4
	ite	ls
	movls	r6, #0
	andhi	r6, r6, #1
	cmp	r6, #0
	beq	.L24
	vdup.32	q8, r9
	lsrs	r6, r2, #2
	vld1.32	{q9}, [r5]
	cmp	r6, #1
	vadd.i32	q9, q9, q8
	lsl	r0, r6, #2
	vadd.i32	q5, q9, q6
	vmov	q4, q9  @ v4si
	vst2.32	{d8-d11}, [r1]!
	beq	.L25
	adds	r5, r5, #16
	vld1.32	{q9}, [r5]
	vadd.i32	q8, q9, q8
	vadd.i32	q5, q8, q6
	vmov	q4, q8  @ v4si
	vst2.32	{d8-d11}, [r1]
.L25:
	cmp	r2, r0
	add	r1, r3, r0, lsl #1
	beq	.L28
	ldr	r5, [sp, #20]
	add	lr, r1, #6
	adds	r7, r1, #7
	add	r5, r5, r0
	ldr	r6, [r4, r5, lsl #2]
	adds	r5, r0, #1
	cmp	r2, r5
	add	r6, r6, r9
	str	r6, [r10, lr, lsl #2]
	add	r6, r6, #128
	str	r6, [r10, r7, lsl #2]
	ble	.L28
	ldr	r6, [sp, #20]
	adds	r0, r0, #2
	add	r7, r1, #8
	cmp	r2, r0
	add	r5, r5, r6
	add	r6, r1, #9
	ldr	r5, [r4, r5, lsl #2]
	add	r5, r5, r9
	str	r5, [r10, r7, lsl #2]
	add	r5, r5, #128
	str	r5, [r10, r6, lsl #2]
	ble	.L28
	ldr	r5, [sp, #20]
	add	r0, r0, r5
	add	r5, r1, #10
	ldr	r0, [r4, r0, lsl #2]
	adds	r1, r1, #11
	add	r0, r0, r9
	add	r4, r0, #128
	str	r0, [r10, r5, lsl #2]
	str	r4, [r10, r1, lsl #2]
.L28:
	add	r3, r3, r2, lsl #1
	b	.L15
.L24:
	ldr	r7, [sp, #28]
	cmp	r2, #1
	ldr	r1, [r4, r7]
	add	r4, r3, #7
	add	r1, r1, r9
	str	r1, [r10, r0, lsl #2]
	add	r1, r1, #128
	str	r1, [r10, r4, lsl #2]
	beq	.L28
	ldr	r1, [r5, #4]
	add	r4, r3, #8
	cmp	r2, #2
	add	r0, r3, #9
	add	r1, r1, r9
	str	r1, [r10, r4, lsl #2]
	add	r1, r1, #128
	str	r1, [r10, r0, lsl #2]
	beq	.L28
	ldr	r1, [r5, #8]
	add	r4, r3, #10
	cmp	r2, #3
	add	r0, r3, #11
	add	r1, r1, r9
	str	r1, [r10, r4, lsl #2]
	add	r1, r1, #128
	str	r1, [r10, r0, lsl #2]
	beq	.L28
	ldr	r1, [r5, #12]
	add	r4, r3, #12
	cmp	r2, #4
	add	r0, r3, #13
	add	r1, r1, r9
	str	r1, [r10, r4, lsl #2]
	add	r1, r1, #128
	str	r1, [r10, r0, lsl #2]
	beq	.L28
	ldr	r1, [r5, #16]
	add	r4, r3, #14
	add	r0, r3, #15
	add	r1, r1, r9
	str	r1, [r10, r4, lsl #2]
	adds	r1, r1, #128
	str	r1, [r10, r0, lsl #2]
	b	.L28
.L18:
	ldr	r7, [sp, #28]
	cmp	r2, #1
	ldr	r0, [r4, r7]
	add	r0, r0, r9
	str	r0, [r10, r6, lsl #2]
	beq	.L105
	ldr	r0, [r1, #4]
	cmp	r2, #2
	add	r4, r3, #7
	add	r0, r0, r9
	str	r0, [r10, r4, lsl #2]
	beq	.L105
	ldr	r0, [r1, #8]
	cmp	r2, #3
	add	r4, r3, #8
	add	r0, r0, r9
	str	r0, [r10, r4, lsl #2]
	beq	.L105
	ldr	r0, [r1, #12]
	cmp	r2, #4
	add	r4, r3, #9
	add	r0, r0, r9
	str	r0, [r10, r4, lsl #2]
	beq	.L105
	ldr	r0, [r1, #16]
	cmp	r2, #5
	add	r4, r3, #10
	add	r0, r0, r9
	str	r0, [r10, r4, lsl #2]
	beq	.L105
	ldr	r0, [r1, #20]
	cmp	r2, #6
	add	r4, r3, #11
	add	r0, r0, r9
	str	r0, [r10, r4, lsl #2]
	beq	.L105
	ldr	r0, [r1, #24]
	cmp	r2, #7
	add	r6, r6, #6
	add	r0, r0, r9
	str	r0, [r10, r6, lsl #2]
	beq	.L105
	ldr	r0, [r1, #28]
	cmp	r2, #8
	add	r4, r3, #13
	add	r0, r0, r9
	str	r0, [r10, r4, lsl #2]
	beq	.L105
	ldr	r0, [r1, #32]
	cmp	r2, #9
	add	r4, r3, #14
	add	r0, r0, r9
	str	r0, [r10, r4, lsl #2]
	beq	.L105
	ldr	r0, [r1, #36]
	add	r1, r3, #15
	add	r3, r3, r2
	add	r0, r0, r9
	str	r0, [r10, r1, lsl #2]
	b	.L15
.L110:
	ldr	r6, [sp, #20]
	ldr	r7, [sp, #24]
	str	r6, [r10, #16]
	str	r7, [r10, #12]
	add	sp, sp, #60
	@ sp needed
	fldmfdd	sp!, {d8-d13}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L9:
	ldr	r3, [r10, #8]
	ldr	r0, [sp, #16]
	adds	r3, r3, #1
	str	r3, [r10, #8]
	bl	start_iMCU_row(PLT)
	movs	r0, #1
	add	sp, sp, #60
	@ sp needed
	fldmfdd	sp!, {d8-d13}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	compress_output, .-compress_output
	.global	__aeabi_uidivmod
	.global	__aeabi_uidiv
	.section	.text.compress_first_pass,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	compress_first_pass, %function
compress_first_pass:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #60]
	ldr	r2, [r0, #240]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #68
	ldr	r4, [r0, #344]
	cmp	r3, #0
	add	r2, r2, #-1
	mov	r8, r0
	str	r1, [sp, #32]
	str	r4, [sp, #44]
	str	r2, [sp, #52]
	ldr	r4, [r0, #68]
	ble	.L125
	movs	r5, #0
	mov	fp, r4
	str	r5, [sp, #40]
	ldr	r5, [sp, #44]
	str	r5, [sp, #48]
.L136:
	ldr	r4, [sp, #44]
	mov	r0, r8
	ldr	r5, [fp, #12]
	pld	[fp, #180]
	ldr	r2, [r4, #8]
	ldr	r4, [sp, #48]
	mov	r3, r5
	ldr	r1, [r4, #64]
	mul	r2, r2, r5
	ldr	r4, [r8, #4]
	movs	r5, #1
	str	r5, [sp]
	ldr	r4, [r4, #32]
	blx	r4
	ldr	r5, [sp, #44]
	str	r0, [sp, #56]
	ldr	r4, [r5, #8]
	ldr	r5, [sp, #52]
	cmp	r5, r4
	ldr	r5, [fp, #12]
	str	r5, [sp, #28]
	bhi	.L114
	mov	r1, r5
	ldr	r0, [fp, #32]
	bl	__aeabi_uidivmod(PLT)
	cmp	r1, #0
	it	ne
	movne	r5, r1
	pld	[fp, #200]
	str	r5, [sp, #28]
.L114:
	ldr	r5, [fp, #28]
	ldr	r6, [fp, #8]
	mov	r0, r5
	str	r5, [sp, #24]
	mov	r1, r6
	bl	__aeabi_uidivmod(PLT)
	ldr	r5, [sp, #28]
	subs	r10, r1, #0
	it	gt
	rsbgt	r10, r10, r6
	cmp	r5, #0
	ble	.L116
	ldr	r5, [sp, #40]
	ldr	r4, [sp, #24]
	str	r6, [sp, #60]
	lsl	ip, r5, #2
	ldr	r5, [sp, #56]
	lsls	r4, r4, #7
	mov	r7, ip
	str	r4, [sp, #36]
	sub	r9, r5, #4
	lsl	r4, r10, #7
	movs	r5, #0
	str	r4, [sp, #20]
.L122:
	ldr	r4, [sp, #32]
	lsl	ip, r5, #3
	ldr	r6, [r9, #4]!
	movs	r3, #0
	ldr	lr, [r8, #360]
	mov	r0, r8
	ldr	r2, [r4, r7]
	mov	r1, fp
	ldr	r4, [sp, #24]
	str	r3, [sp, #4]
	mov	r3, r6
	str	ip, [sp]
	str	r4, [sp, #8]
	ldr	ip, [lr, #4]
	blx	ip
	cmp	r10, #0
	ble	.L120
	ldr	r4, [sp, #36]
	ldr	r1, [sp, #20]
	add	r6, r6, r4
	mov	r0, r6
	bl	jzero_far(PLT)
	ldrh	r2, [r6, #-128]
	movs	r3, #0
	ldr	r4, [sp, #20]
.L121:
	strh	r2, [r6, r3]	@ movhi
	adds	r3, r3, #128
	cmp	r4, r3
	bne	.L121
	str	r4, [sp, #20]
.L120:
	ldr	r4, [sp, #28]
	adds	r5, r5, #1
	cmp	r5, r4
	bne	.L122
	ldr	r5, [sp, #44]
	ldr	r6, [sp, #60]
	ldr	r4, [r5, #8]
.L116:
	ldr	r5, [sp, #52]
	cmp	r5, r4
	beq	.L123
.L126:
	ldr	r4, [sp, #40]
	add	fp, fp, #84
	ldr	r3, [r8, #60]
	ldr	r5, [sp, #48]
	adds	r4, r4, #1
	cmp	r3, r4
	str	r4, [sp, #40]
	add	r5, r5, #4
	str	r5, [sp, #48]
	bgt	.L136
	ldr	r1, [sp, #32]
.L125:
	mov	r0, r8
	add	sp, sp, #68
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	compress_output(PLT)
.L123:
	ldr	r4, [sp, #24]
	mov	r1, r6
	add	r10, r10, r4
	mov	r0, r10
	bl	__aeabi_uidiv(PLT)
	ldr	r3, [fp, #12]
	ldr	r5, [sp, #28]
	cmp	r5, r3
	bge	.L126
	add	r7, r6, #33554432
	ldr	r4, [sp, #56]
	subs	r7, r7, #1
	add	r3, r5, #1073741824
	lsls	r7, r7, #7
	subs	r3, r3, #1
	mov	r2, fp
	lsl	r10, r10, #7
	str	r7, [sp, #24]
	add	r7, r4, r3, lsl #2
	ldr	r5, [sp, #24]
	mov	r9, r6
	mov	fp, r7
	mov	r6, r0
	mov	r7, r2
	str	r10, [sp, #36]
	adds	r5, r5, #128
	ldr	r10, [sp, #28]
	str	r8, [sp, #28]
.L135:
	ldr	r4, [fp, #4]
	ldr	r1, [sp, #36]
	ldr	r8, [fp], #4
	mov	r0, r4
	bl	jzero_far(PLT)
	cbz	r6, .L131
	ldr	r2, [sp, #24]
	mov	lr, #0
	add	r2, r2, r8
.L134:
	cmp	r9, #0
	ldrh	r1, [r2]
	it	gt
	movgt	r3, #0
	ble	.L132
.L133:
	strh	r1, [r4, r3]	@ movhi
	adds	r3, r3, #128
	cmp	r3, r5
	bne	.L133
.L132:
	add	lr, lr, #1
	add	r4, r4, r5
	cmp	lr, r6
	add	r2, r2, r5
	bne	.L134
.L131:
	ldr	r2, [r7, #12]
	add	r10, r10, #1
	cmp	r2, r10
	bgt	.L135
	mov	fp, r7
	ldr	r8, [sp, #28]
	b	.L126
	.size	compress_first_pass, .-compress_first_pass
	.section	.text.compress_data,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	compress_data, %function
compress_data:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #92
	ldr	r10, [r0, #344]
	mov	r9, r0
	ldr	r2, [r0, #240]
	str	r1, [sp, #32]
	ldr	r3, [r10, #20]
	ldr	r1, [r0, #264]
	add	fp, r2, #-1
	ldr	r0, [r10, #16]
	subs	r1, r1, #1
	cmp	r0, r3
	str	r0, [sp, #36]
	str	r1, [sp, #76]
	bge	.L159
	add	ip, r10, #24
	ldr	r1, [r10, #12]
	str	ip, [sp, #84]
	lsls	r2, r0, #3
	ldr	ip, [sp, #76]
	str	r1, [sp, #72]
	str	r2, [sp, #80]
	cmp	ip, r1
	itttt	cs
	movcs	r3, r9
	movcs	r9, r10
	movcs	r10, fp
	movcs	fp, r3
	bcc	.L145
.L146:
	ldr	r3, [fp, #244]
	cmp	r3, #0
	ble	.L157
	mov	ip, #0
	str	fp, [sp, #68]
	mov	r8, ip
	str	ip, [sp, #64]
.L158:
	ldr	ip, [sp, #68]
	ldr	r0, [sp, #72]
	ldr	r4, [ip, #248]
	ldr	ip, [sp, #76]
	ldr	r1, [r4, #64]
	cmp	ip, r0
	ldr	r0, [sp, #72]
	ldr	r2, [r4, #56]
	ite	hi
	ldrhi	r6, [r4, #52]
	ldrls	r6, [r4, #68]
	mul	r0, r1, r0
	cmp	r2, #0
	str	r0, [sp, #28]
	ble	.L149
	adds	r1, r6, #1
	adds	r2, r6, #2
	str	r1, [sp, #40]
	adds	r3, r6, #3
	str	r2, [sp, #44]
	adds	r0, r6, #4
	adds	r1, r6, #5
	adds	r2, r6, #6
	ldr	r7, [sp, #80]
	movs	r5, #0
	str	r3, [sp, #48]
	str	r0, [sp, #52]
	str	r1, [sp, #56]
	str	r2, [sp, #60]
	b	.L153
.L152:
	ldr	r3, [r4, #56]
	adds	r5, r5, #1
	add	r8, r8, r1
	adds	r7, r7, #8
	cmp	r3, r5
	ble	.L191
.L153:
	ldr	r3, [r9, #8]
	cmp	r10, r3
	bhi	.L150
	ldr	r2, [sp, #36]
	ldr	r3, [r4, #72]
	add	r2, r2, r5
	cmp	r2, r3
	bge	.L151
.L150:
	ldr	r2, [r4, #4]
	add	r3, r8, #6
	ldr	ip, [sp, #32]
	mov	r1, r4
	ldr	lr, [fp, #360]
	mov	r0, fp
	ldr	r3, [r9, r3, lsl #2]
	ldr	r2, [ip, r2, lsl #2]
	str	r7, [sp]
	str	r6, [sp, #8]
	str	r2, [sp, #16]
	ldr	r2, [sp, #28]
	str	r2, [sp, #4]
	ldr	r2, [sp, #16]
	ldr	ip, [lr, #4]
	blx	ip
	ldr	r1, [r4, #52]
	cmp	r6, r1
	bge	.L152
	add	r2, r8, r6
	subs	r1, r1, r6
	add	r3, r9, r2, lsl #2
	lsls	r1, r1, #7
	ldr	r0, [r3, #24]
	str	r2, [sp, #24]
	str	r3, [sp, #20]
	bl	jzero_far(PLT)
	ldr	r1, [r4, #52]
	ldr	r2, [sp, #24]
	ldr	r3, [sp, #20]
	cmp	r6, r1
	bge	.L152
	adds	r2, r2, #5
	ldr	ip, [sp, #40]
	ldr	r2, [r9, r2, lsl #2]
	ldr	r3, [r3, #24]
	cmp	r1, ip
	ldrh	r2, [r2]
	strh	r2, [r3]	@ movhi
	ble	.L152
	mov	r3, ip
	ldr	ip, [sp, #44]
	add	r3, r3, r8
	adds	r2, r3, #5
	adds	r3, r3, #6
	ldr	r2, [r9, r2, lsl #2]
	cmp	r1, ip
	ldr	r3, [r9, r3, lsl #2]
	ldrh	r2, [r2]
	strh	r2, [r3]	@ movhi
	ble	.L152
	mov	r3, ip
	ldr	ip, [sp, #48]
	add	r3, r3, r8
	adds	r2, r3, #5
	adds	r3, r3, #6
	ldr	r2, [r9, r2, lsl #2]
	cmp	r1, ip
	ldr	r3, [r9, r3, lsl #2]
	ldrh	r2, [r2]
	strh	r2, [r3]	@ movhi
	ble	.L152
	mov	r3, ip
	ldr	ip, [sp, #52]
	add	r3, r3, r8
	adds	r2, r3, #5
	adds	r3, r3, #6
	ldr	r2, [r9, r2, lsl #2]
	cmp	r1, ip
	ldr	r3, [r9, r3, lsl #2]
	ldrh	r2, [r2]
	strh	r2, [r3]	@ movhi
	ble	.L152
	mov	r3, ip
	ldr	ip, [sp, #56]
	add	r3, r3, r8
	adds	r2, r3, #5
	adds	r3, r3, #6
	ldr	r2, [r9, r2, lsl #2]
	cmp	r1, ip
	ldr	r3, [r9, r3, lsl #2]
	ldrh	r2, [r2]
	strh	r2, [r3]	@ movhi
	ble	.L152
	mov	r3, ip
	ldr	ip, [sp, #60]
	add	r3, r3, r8
	adds	r2, r3, #5
	adds	r3, r3, #6
	ldr	r2, [r9, r2, lsl #2]
	cmp	r1, ip
	ldr	r3, [r9, r3, lsl #2]
	ldrh	r2, [r2]
	strh	r2, [r3]	@ movhi
	ble	.L152
	mov	r2, ip
	adds	r3, r6, #7
	add	r2, r2, r8
	cmp	r1, r3
	add	r0, r2, #5
	add	r2, r2, #6
	ldr	r0, [r9, r0, lsl #2]
	ldr	r2, [r9, r2, lsl #2]
	ldrh	r0, [r0]
	strh	r0, [r2]	@ movhi
	ble	.L152
	add	r3, r3, r8
	add	r2, r6, #8
	adds	r0, r3, #5
	adds	r3, r3, #6
	ldr	r0, [r9, r0, lsl #2]
	cmp	r1, r2
	ldr	r3, [r9, r3, lsl #2]
	ldrh	r0, [r0]
	strh	r0, [r3]	@ movhi
	ble	.L152
	add	r2, r2, r8
	add	r3, r6, #9
	adds	r0, r2, #5
	adds	r2, r2, #6
	ldr	r0, [r9, r0, lsl #2]
	cmp	r1, r3
	ldr	r2, [r9, r2, lsl #2]
	ldrh	r0, [r0]
	strh	r0, [r2]	@ movhi
	ble	.L152
	add	r3, r3, r8
	adds	r2, r3, #5
	adds	r3, r3, #6
	ldr	r2, [r9, r2, lsl #2]
	ldr	r3, [r9, r3, lsl #2]
	ldrh	r2, [r2]
	strh	r2, [r3]	@ movhi
	b	.L152
.L151:
	ldr	r1, [r4, #52]
	add	r3, r9, r8, lsl #2
	ldr	r0, [r3, #24]
	str	r3, [sp, #20]
	lsls	r1, r1, #7
	bl	jzero_far(PLT)
	ldr	r1, [r4, #52]
	ldr	r3, [sp, #20]
	cmp	r1, #0
	ble	.L152
	add	r0, r8, #5
	ldr	r2, [r3, #24]
	ldr	r3, [r9, r0, lsl #2]
	cmp	r1, #1
	ldrh	r0, [r3]
	strh	r0, [r2]	@ movhi
	beq	.L152
	add	r2, r8, #7
	ldrh	r0, [r3]
	ldr	r2, [r9, r2, lsl #2]
	cmp	r1, #2
	strh	r0, [r2]	@ movhi
	beq	.L152
	add	r2, r8, #8
	ldrh	r0, [r3]
	ldr	r2, [r9, r2, lsl #2]
	cmp	r1, #3
	strh	r0, [r2]	@ movhi
	beq	.L152
	add	r2, r8, #9
	ldrh	r0, [r3]
	ldr	r2, [r9, r2, lsl #2]
	cmp	r1, #4
	strh	r0, [r2]	@ movhi
	beq	.L152
	add	r2, r8, #10
	ldrh	r0, [r3]
	ldr	r2, [r9, r2, lsl #2]
	cmp	r1, #5
	strh	r0, [r2]	@ movhi
	beq	.L152
	add	r2, r8, #11
	ldrh	r0, [r3]
	ldr	r2, [r9, r2, lsl #2]
	cmp	r1, #6
	strh	r0, [r2]	@ movhi
	beq	.L152
	add	r2, r8, #12
	ldrh	r0, [r3]
	ldr	r2, [r9, r2, lsl #2]
	cmp	r1, #7
	strh	r0, [r2]	@ movhi
	beq	.L152
	add	r2, r8, #13
	ldrh	r0, [r3]
	ldr	r2, [r9, r2, lsl #2]
	cmp	r1, #8
	strh	r0, [r2]	@ movhi
	beq	.L152
	add	r2, r8, #14
	ldrh	r0, [r3]
	ldr	r2, [r9, r2, lsl #2]
	cmp	r1, #9
	strh	r0, [r2]	@ movhi
	itttt	ne
	addne	r0, r8, #15
	ldrhne	r2, [r3]
	movne	r3, r0
	ldrne	r3, [r9, r3, lsl #2]
	it	ne
	strhne	r2, [r3]	@ movhi
	b	.L152
.L191:
	ldr	r3, [fp, #244]
.L149:
	ldr	r0, [sp, #64]
	ldr	r1, [sp, #68]
	adds	r0, r0, #1
	cmp	r3, r0
	add	r1, r1, #4
	str	r0, [sp, #64]
	str	r1, [sp, #68]
	bgt	.L158
.L157:
	ldr	r3, [fp, #364]
	mov	r0, fp
	ldr	r1, [sp, #84]
	ldr	r3, [r3, #4]
	blx	r3
	cbz	r0, .L192
	ldr	r0, [sp, #72]
	ldr	ip, [sp, #76]
	adds	r0, r0, #1
	cmp	ip, r0
	str	r0, [sp, #72]
	bcs	.L146
	mov	r3, fp
	mov	fp, r10
	mov	r10, r9
	mov	r9, r3
	ldr	r3, [r10, #20]
.L145:
	ldr	r0, [sp, #36]
	movs	r1, #0
	ldr	r2, [sp, #80]
	str	r1, [r10, #12]
	adds	r0, r0, #1
	cmp	r3, r0
	str	r0, [sp, #36]
	add	r2, r2, #8
	ble	.L159
	mov	r3, r9
	str	r2, [sp, #80]
	mov	r9, r10
	str	r1, [sp, #72]
	mov	r10, fp
	mov	fp, r3
	b	.L146
.L192:
	ldr	r2, [sp, #36]
	ldr	r3, [sp, #72]
	str	r2, [r9, #16]
	str	r3, [r9, #12]
	add	sp, sp, #92
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L159:
	ldr	r3, [r10, #8]
	mov	r0, r9
	adds	r3, r3, #1
	str	r3, [r10, #8]
	bl	start_iMCU_row(PLT)
	movs	r0, #1
	add	sp, sp, #92
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	compress_data, .-compress_data
	.section	.text.start_pass_coef,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	start_pass_coef, %function
start_pass_coef:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, [r0, #244]
	movs	r3, #0
	push	{r4, lr}
	ldr	r4, [r0, #344]
	cmp	r2, #1
	str	r3, [r4, #8]
	ble	.L194
	movs	r3, #1
	cmp	r1, #2
	str	r3, [r4, #20]
	mov	r3, #0
	str	r3, [r4, #12]
	str	r3, [r4, #16]
	beq	.L198
.L211:
	cmp	r1, #3
	beq	.L199
	cbz	r1, .L210
	ldr	r3, [r0]
	movs	r2, #4
	pop	{r4, lr}
	str	r2, [r3, #20]
	ldr	r3, [r3]
	bx	r3	@ indirect register sibling call
.L210:
	ldr	r3, [r4, #64]
	cbz	r3, .L201
	ldr	r3, [r0]
	movs	r2, #4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
.L201:
	ldr	r3, .L214
.LPIC16:
	add	r3, pc
	str	r3, [r4, #4]
	pop	{r4, pc}
.L194:
	ldr	r3, [r0, #240]
	cmp	r3, #1
	ldr	r3, [r0, #248]
	ite	ne
	ldrne	r3, [r3, #12]
	ldreq	r3, [r3, #72]
	cmp	r1, #2
	str	r3, [r4, #20]
	mov	r3, #0
	str	r3, [r4, #12]
	str	r3, [r4, #16]
	bne	.L211
.L198:
	ldr	r3, [r4, #64]
	cbz	r3, .L212
.L204:
	ldr	r3, .L214+4
.LPIC18:
	add	r3, pc
	str	r3, [r4, #4]
	pop	{r4, pc}
.L199:
	ldr	r3, [r4, #64]
	cbz	r3, .L213
.L203:
	ldr	r3, .L214+8
.LPIC17:
	add	r3, pc
	str	r3, [r4, #4]
	pop	{r4, pc}
.L212:
	ldr	r3, [r0]
	movs	r2, #4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L204
.L213:
	ldr	r3, [r0]
	movs	r2, #4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L203
.L215:
	.align	2
.L214:
	.word	compress_data-(.LPIC16+4)
	.word	compress_output-(.LPIC18+4)
	.word	compress_first_pass-(.LPIC17+4)
	.size	start_pass_coef, .-start_pass_coef
	.section	.text.jinit_c_coef_controller,"ax",%progbits
	.align	2
	.global	jinit_c_coef_controller
	.thumb
	.thumb_func
	.type	jinit_c_coef_controller, %function
jinit_c_coef_controller:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #4]
	movs	r2, #104
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r4, r1
	sub	sp, sp, #28
	movs	r1, #1
	mov	r5, r0
	ldr	r3, [r3]
	blx	r3
	ldr	r3, .L234
	mov	r6, r0
	str	r0, [r5, #344]
.LPIC19:
	add	r3, pc
	str	r3, [r0]
	cbz	r4, .L217
	ldr	r3, [r5, #60]
	ldr	r4, [r5, #68]
	cmp	r3, #0
	ble	.L216
	mov	r8, r0
	movs	r6, #0
.L221:
	ldr	r3, [r5, #4]
	adds	r6, r6, #1
	ldr	r1, [r4, #8]
	add	r8, r8, #4
	ldr	r0, [r4, #28]
	adds	r4, r4, #84
	ldr	r9, [r3, #20]
	bl	jround_up(PLT)
	ldr	r1, [r4, #-72]
	mov	r7, r0
	ldr	r0, [r4, #-52]
	bl	jround_up(PLT)
	mov	r3, r7
	str	r0, [sp]
	ldr	r7, [r4, #-72]
	mov	r0, r5
	movs	r1, #1
	movs	r2, #0
	str	r7, [sp, #4]
	blx	r9
	str	r0, [r8, #60]
	ldr	r3, [r5, #60]
	cmp	r3, r6
	bgt	.L221
.L216:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L217:
	ldr	r3, [r5, #4]
	mov	r2, #1280
	mov	r0, r5
	movs	r1, #1
	ldr	r3, [r3, #4]
	blx	r3
	sbfx	r2, r6, #2, #1
	ands	r2, r2, #3
	beq	.L227
	cmp	r2, #1
	str	r0, [r6, #24]
	bls	.L228
	cmp	r2, #2
	add	r3, r0, #128
	str	r3, [r6, #28]
	bls	.L229
	add	r3, r0, #256
	movs	r7, #7
	str	r3, [r6, #32]
	movs	r3, #3
.L222:
	adds	r5, r3, #1
	adds	r4, r3, #2
	adds	r1, r3, #3
	str	r5, [sp, #12]
	str	r4, [sp, #16]
	adds	r5, r2, #6
	str	r1, [sp, #20]
	rsb	r2, r2, #10
	str	r3, [sp, #8]
	lsrs	r4, r2, #2
	vldr	d16, [sp, #8]
	vldr	d17, [sp, #16]
	add	r5, r6, r5, lsl #2
	vmov.i32	q11, #4  @ v4si
	cmp	r4, #1
	vshl.i32	q10, q8, #7
	lsl	r1, r4, #2
	vdup.32	q9, r0
	vadd.i32	q10, q9, q10
	vadd.i32	q8, q8, q11
	vst1.64	{d20-d21}, [r5:64]
	bls	.L224
	vshl.i32	q8, q8, #7
	vadd.i32	q9, q9, q8
	vstr	d18, [r5, #16]
	vstr	d19, [r5, #24]
.L224:
	cmp	r2, r1
	add	r3, r3, r1
	sub	r7, r7, r1
	beq	.L225
	add	r4, r0, r3, lsl #7
	cmp	r7, #1
	add	r2, r3, #6
	add	r1, r3, #1
	str	r4, [r6, r2, lsl #2]
	beq	.L225
	cmp	r7, #2
	add	r4, r3, #2
	add	r1, r0, r1, lsl #7
	it	ne
	addne	r0, r0, r4, lsl #7
	add	r2, r3, #7
	it	ne
	addne	r3, r3, #8
	str	r1, [r6, r2, lsl #2]
	it	ne
	strne	r0, [r6, r3, lsl #2]
.L225:
	movs	r3, #0
	str	r3, [r6, #64]
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L227:
	movs	r7, #10
	mov	r3, r2
	b	.L222
.L228:
	movs	r7, #9
	movs	r3, #1
	b	.L222
.L229:
	movs	r7, #8
	movs	r3, #2
	b	.L222
.L235:
	.align	2
.L234:
	.word	start_pass_coef-(.LPIC19+4)
	.size	jinit_c_coef_controller, .-jinit_c_coef_controller
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
