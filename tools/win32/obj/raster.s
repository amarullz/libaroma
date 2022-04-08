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
	.file	"raster.c"
	.section	.text.Set_High_Precision,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Set_High_Precision, %function
Set_High_Precision:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L2
	ldr	r3, [r7, #4]
	movs	r2, #12
	str	r2, [r3]
	ldr	r3, [r7, #4]
	mov	r2, #256
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	movs	r2, #30
	str	r2, [r3, #20]
	b	.L3
.L2:
	ldr	r3, [r7, #4]
	movs	r2, #6
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #32
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	movs	r2, #2
	str	r2, [r3, #20]
.L3:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #1
	lsls	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	subs	r2, r3, #6
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Set_High_Precision, .-Set_High_Precision
	.section	.text.New_Profile,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	New_Profile, %function
New_Profile:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strb	r3, [r7, #7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #92]
	cmp	r3, #0
	bne	.L5
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #12]
	str	r2, [r3, #88]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #88]
	ldr	r3, [r7, #12]
	str	r2, [r3, #92]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #40]
	add	r2, r3, #32
	ldr	r3, [r7, #12]
	str	r2, [r3, #40]
.L5:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #36]
	cmp	r2, r3
	bcc	.L6
	ldr	r3, [r7, #12]
	movs	r2, #98
	str	r2, [r3, #44]
	movs	r3, #1
	b	.L7
.L6:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #88]
	movs	r2, #0
	strh	r2, [r3, #12]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #88]
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #88]
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #88]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #40]
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #88]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #88]
	movs	r2, #0
	str	r2, [r3, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #88]
	ldr	r2, [r7, #12]
	ldrb	r2, [r2, #176]	@ zero_extendqisi2
	strh	r2, [r3, #12]	@ movhi
	ldr	r3, [r7, #8]
	cmp	r3, #1
	beq	.L9
	cmp	r3, #2
	beq	.L10
	b	.L15
.L9:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #88]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #88]
	ldrh	r2, [r2, #12]
	orr	r2, r2, #8
	uxth	r2, r2
	strh	r2, [r3, #12]	@ movhi
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L11
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #88]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #88]
	ldrh	r2, [r2, #12]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #12]	@ movhi
	b	.L12
.L11:
	b	.L12
.L10:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L13
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #88]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #88]
	ldrh	r2, [r2, #12]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #12]	@ movhi
	b	.L12
.L13:
	b	.L12
.L15:
	ldr	r3, [r7, #12]
	movs	r2, #20
	str	r2, [r3, #44]
	movs	r3, #1
	b	.L7
.L12:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #96]
	cmp	r3, #0
	bne	.L14
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #88]
	ldr	r3, [r7, #12]
	str	r2, [r3, #96]
.L14:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #100]
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #86]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #87]
	movs	r3, #0
.L7:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	New_Profile, .-New_Profile
	.section	.text.End_Profile,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	End_Profile, %function
End_Profile:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	ldr	r3, [r3, #8]
	subs	r3, r2, r3
	asrs	r3, r3, #2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bge	.L17
	ldr	r3, [r7, #4]
	movs	r2, #99
	str	r2, [r3, #44]
	movs	r3, #1
	b	.L18
.L17:
	ldr	r3, [r7, #12]
	cmp	r3, #0
	ble	.L19
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	ldr	r2, [r7, #12]
	str	r2, [r3, #16]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L20
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	ldrh	r3, [r3, #12]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L21
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #88]
	ldrh	r2, [r2, #12]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #12]	@ movhi
	b	.L20
.L21:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #88]
	ldrh	r2, [r2, #12]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #12]	@ movhi
.L20:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #4]
	str	r2, [r3, #88]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	add	r2, r3, #32
	ldr	r3, [r7, #4]
	str	r2, [r3, #40]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #40]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #88]
	ldr	r3, [r7, #8]
	str	r2, [r3, #28]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #84]
	adds	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #84]	@ movhi
.L19:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	cmp	r2, r3
	bcc	.L22
	ldr	r3, [r7, #4]
	movs	r2, #98
	str	r2, [r3, #44]
	movs	r3, #1
	b	.L18
.L22:
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #87]
	movs	r3, #0
.L18:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	End_Profile, .-End_Profile
	.section	.text.Insert_Y_Turn,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Insert_Y_Turn, %function
Insert_Y_Turn:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	subs	r3, r3, #1
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	lsls	r3, r3, #2
	negs	r3, r3
	add	r3, r3, r2
	str	r3, [r7, #16]
	b	.L24
.L26:
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	str	r3, [r7, #20]
.L24:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	blt	.L25
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7]
	cmp	r2, r3
	bgt	.L26
.L25:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	blt	.L27
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L27
.L28:
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	ldr	r2, [r7]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	str	r3, [r7]
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bge	.L28
.L27:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bge	.L29
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	subs	r2, r3, #4
	ldr	r3, [r7, #4]
	str	r2, [r3, #36]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	cmp	r2, r3
	bhi	.L30
	ldr	r3, [r7, #4]
	movs	r2, #98
	str	r2, [r3, #44]
	movs	r3, #1
	b	.L31
.L30:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #48]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #32]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #30
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r2, [r7]
	str	r2, [r3]
.L29:
	movs	r3, #0
.L31:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Insert_Y_Turn, .-Insert_Y_Turn
	.section	.text.Finalize_Profile_Table,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Finalize_Profile_Table, %function
Finalize_Profile_Table:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #84]	@ movhi
	strh	r3, [r7, #22]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #92]
	str	r3, [r7, #16]
	ldrh	r3, [r7, #22]
	cmp	r3, #1
	bls	.L33
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L33
.L41:
	ldrh	r3, [r7, #22]
	cmp	r3, #1
	bls	.L34
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #16]
	lsls	r3, r3, #2
	add	r2, r2, r3
	ldr	r3, [r7, #16]
	str	r2, [r3, #4]
	b	.L35
.L34:
	ldr	r3, [r7, #16]
	movs	r2, #0
	str	r2, [r3, #4]
.L35:
	ldr	r3, [r7, #16]
	ldrh	r3, [r3, #12]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L36
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #20]
	str	r3, [r7, #12]
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #16]
	add	r3, r3, r2
	subs	r3, r3, #1
	str	r3, [r7, #8]
	b	.L37
.L36:
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #16]
	subs	r3, r2, r3
	adds	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #20]
	str	r3, [r7, #8]
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #12]
	str	r2, [r3, #20]
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #16]
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	add	r2, r2, r3
	ldr	r3, [r7, #16]
	str	r2, [r3, #8]
.L37:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #12]
	bl	Insert_Y_Turn(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L38
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	Insert_Y_Turn(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L39
.L38:
	movs	r3, #1
	b	.L40
.L39:
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #4]
	str	r3, [r7, #16]
	ldrh	r3, [r7, #22]	@ movhi
	subs	r3, r3, #1
	strh	r3, [r7, #22]	@ movhi
	ldrh	r3, [r7, #22]
	cmp	r3, #0
	bne	.L41
	b	.L42
.L33:
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #92]
.L42:
	movs	r3, #0
.L40:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	Finalize_Profile_Table, .-Finalize_Profile_Table
	.section	.text.Split_Conic,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Split_Conic, %function
Split_Conic:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	adds	r3, r3, #32
	ldr	r2, [r7, #4]
	adds	r2, r2, #16
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #8
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	ldr	r2, [r7, #4]
	adds	r2, r2, #16
	ldr	r1, [r2]
	ldr	r2, [r7, #12]
	add	r2, r2, r1
	lsrs	r1, r2, #31
	add	r2, r2, r1
	asrs	r2, r2, #1
	str	r2, [r3]
	ldr	r3, [r3]
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	adds	r3, r3, #8
	ldr	r2, [r7, #4]
	ldr	r1, [r2]
	ldr	r2, [r7, #12]
	add	r2, r2, r1
	lsrs	r1, r2, #31
	add	r2, r2, r1
	asrs	r2, r2, #1
	str	r2, [r3]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	add	r2, r3, #16
	ldr	r1, [r7, #8]
	ldr	r3, [r7, #12]
	add	r3, r3, r1
	lsrs	r1, r3, #31
	add	r3, r3, r1
	asrs	r3, r3, #1
	str	r3, [r2]
	ldr	r3, [r7, #4]
	adds	r3, r3, #32
	ldr	r2, [r7, #4]
	adds	r2, r2, #16
	ldr	r2, [r2, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	adds	r3, r3, #8
	ldr	r3, [r3, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	ldr	r2, [r7, #4]
	adds	r2, r2, #16
	ldr	r1, [r2, #4]
	ldr	r2, [r7, #12]
	add	r2, r2, r1
	lsrs	r1, r2, #31
	add	r2, r2, r1
	asrs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	adds	r3, r3, #8
	ldr	r2, [r7, #4]
	ldr	r1, [r2, #4]
	ldr	r2, [r7, #12]
	add	r2, r2, r1
	lsrs	r1, r2, #31
	add	r2, r2, r1
	asrs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	add	r2, r3, #16
	ldr	r1, [r7, #8]
	ldr	r3, [r7, #12]
	add	r3, r3, r1
	lsrs	r1, r3, #31
	add	r3, r3, r1
	asrs	r3, r3, #1
	str	r3, [r2, #4]
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Split_Conic, .-Split_Conic
	.section	.text.Split_Cubic,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Split_Cubic, %function
Split_Cubic:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	adds	r3, r3, #48
	ldr	r2, [r7, #4]
	adds	r2, r2, #24
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #8
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	adds	r3, r3, #16
	ldr	r3, [r3]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	adds	r3, r3, #8
	ldr	r2, [r7, #4]
	ldr	r1, [r2]
	ldr	r2, [r7, #20]
	add	r2, r2, r1
	adds	r2, r2, #1
	asrs	r2, r2, #1
	str	r2, [r7, #12]
	ldr	r2, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #40
	ldr	r2, [r7, #4]
	adds	r2, r2, #24
	ldr	r1, [r2]
	ldr	r2, [r7, #16]
	add	r2, r2, r1
	adds	r2, r2, #1
	asrs	r2, r2, #1
	str	r2, [r7, #8]
	ldr	r2, [r7, #8]
	str	r2, [r3]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	add	r3, r3, r2
	adds	r3, r3, #1
	asrs	r3, r3, #1
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	adds	r3, r3, #16
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #20]
	add	r2, r2, r1
	adds	r2, r2, #1
	asrs	r2, r2, #1
	str	r2, [r7, #12]
	ldr	r2, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #32
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #20]
	add	r2, r2, r1
	adds	r2, r2, #1
	asrs	r2, r2, #1
	str	r2, [r7, #8]
	ldr	r2, [r7, #8]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #8]
	add	r2, r2, r1
	adds	r2, r2, #1
	asrs	r2, r2, #1
	str	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #48
	ldr	r2, [r7, #4]
	adds	r2, r2, #24
	ldr	r2, [r2, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	adds	r3, r3, #8
	ldr	r3, [r3, #4]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	adds	r3, r3, #16
	ldr	r3, [r3, #4]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	adds	r3, r3, #8
	ldr	r2, [r7, #4]
	ldr	r1, [r2, #4]
	ldr	r2, [r7, #20]
	add	r2, r2, r1
	adds	r2, r2, #1
	asrs	r2, r2, #1
	str	r2, [r7, #12]
	ldr	r2, [r7, #12]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	adds	r3, r3, #40
	ldr	r2, [r7, #4]
	adds	r2, r2, #24
	ldr	r1, [r2, #4]
	ldr	r2, [r7, #16]
	add	r2, r2, r1
	adds	r2, r2, #1
	asrs	r2, r2, #1
	str	r2, [r7, #8]
	ldr	r2, [r7, #8]
	str	r2, [r3, #4]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	add	r3, r3, r2
	adds	r3, r3, #1
	asrs	r3, r3, #1
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	adds	r3, r3, #16
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #20]
	add	r2, r2, r1
	adds	r2, r2, #1
	asrs	r2, r2, #1
	str	r2, [r7, #12]
	ldr	r2, [r7, #12]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	adds	r3, r3, #32
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #20]
	add	r2, r2, r1
	adds	r2, r2, #1
	asrs	r2, r2, #1
	str	r2, [r7, #8]
	ldr	r2, [r7, #8]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #8]
	add	r2, r2, r1
	adds	r2, r2, #1
	asrs	r2, r2, #1
	str	r2, [r3, #4]
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Split_Cubic, .-Split_Cubic
	.global	__aeabi_idivmod
	.section	.text.Line_Up,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Line_Up, %function
Line_Up:
	@ args = 12, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #64
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r2, [r7]
	ldr	r3, [r7, #8]
	subs	r3, r2, r3
	str	r3, [r7, #60]
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #4]
	subs	r3, r2, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	ble	.L46
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #76]
	cmp	r2, r3
	blt	.L46
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #80]
	cmp	r2, r3
	ble	.L47
.L46:
	movs	r3, #0
	b	.L48
.L47:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #76]
	cmp	r2, r3
	bge	.L49
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #4]
	subs	r3, r2, r3
	ldr	r0, [r7, #60]
	mov	r1, r3
	ldr	r2, [r7, #20]
	bl	FT_MulDiv(PLT)
	mov	r3, r0
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r7, #76]
	asr	r3, r2, r3
	str	r3, [r7, #56]
	movs	r3, #0
	str	r3, [r7, #48]
	b	.L50
.L49:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	asr	r3, r2, r3
	str	r3, [r7, #56]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	subs	r2, r3, #1
	ldr	r3, [r7, #4]
	ands	r3, r3, r2
	str	r3, [r7, #48]
.L50:
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #80]
	cmp	r2, r3
	ble	.L51
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r7, #80]
	asr	r3, r2, r3
	str	r3, [r7, #52]
	movs	r3, #0
	str	r3, [r7, #44]
	b	.L52
.L51:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r7, #72]
	asr	r3, r2, r3
	str	r3, [r7, #52]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	subs	r2, r3, #1
	ldr	r3, [r7, #72]
	ands	r3, r3, r2
	str	r3, [r7, #44]
.L52:
	ldr	r3, [r7, #48]
	cmp	r3, #0
	ble	.L53
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bne	.L54
	movs	r3, #0
	b	.L48
.L54:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #48]
	subs	r3, r2, r3
	ldr	r0, [r7, #60]
	mov	r1, r3
	ldr	r2, [r7, #20]
	bl	FT_MulDiv(PLT)
	mov	r3, r0
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	str	r3, [r7, #56]
	b	.L55
.L53:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #87]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L55
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #40]
	subs	r2, r3, #4
	ldr	r3, [r7, #12]
	str	r2, [r3, #40]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #87]
.L55:
	ldr	r3, [r7, #44]
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #12]
	strb	r2, [r3, #87]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #86]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L56
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #88]
	ldr	r2, [r7, #56]
	str	r2, [r3, #20]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #86]
.L56:
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #56]
	subs	r3, r2, r3
	adds	r3, r3, #1
	str	r3, [r7, #40]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #40]
	lsls	r3, r3, #2
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #36]
	cmp	r2, r3
	bcc	.L57
	ldr	r3, [r7, #12]
	movs	r2, #98
	str	r2, [r3, #44]
	movs	r3, #1
	b	.L48
.L57:
	ldr	r3, [r7, #60]
	cmp	r3, #0
	ble	.L58
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r1, [r7, #60]
	ldr	r2, [r7, #20]
	bl	FT_MulDiv_No_Round(PLT)
	str	r0, [r7, #36]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #60]
	mul	r3, r2, r3
	mov	r0, r3
	ldr	r1, [r7, #20]
	bl	__aeabi_idivmod(PLT)
	mov	r3, r1
	str	r3, [r7, #32]
	movs	r3, #1
	str	r3, [r7, #60]
	b	.L59
.L58:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #60]
	negs	r3, r3
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #20]
	bl	FT_MulDiv_No_Round(PLT)
	mov	r3, r0
	negs	r3, r3
	str	r3, [r7, #36]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #60]
	negs	r2, r2
	mul	r3, r2, r3
	mov	r0, r3
	ldr	r1, [r7, #20]
	bl	__aeabi_idivmod(PLT)
	mov	r3, r1
	str	r3, [r7, #32]
	mov	r3, #-1
	str	r3, [r7, #60]
.L59:
	ldr	r3, [r7, #20]
	negs	r3, r3
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #40]
	str	r3, [r7, #24]
	b	.L60
.L62:
	ldr	r3, [r7, #24]
	adds	r2, r3, #4
	str	r2, [r7, #24]
	ldr	r2, [r7, #8]
	str	r2, [r3]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	blt	.L61
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #20]
	subs	r3, r2, r3
	str	r3, [r7, #28]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #60]
	add	r3, r3, r2
	str	r3, [r7, #8]
.L61:
	ldr	r3, [r7, #40]
	subs	r3, r3, #1
	str	r3, [r7, #40]
.L60:
	ldr	r3, [r7, #40]
	cmp	r3, #0
	bgt	.L62
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #24]
	str	r2, [r3, #40]
	movs	r3, #0
.L48:
	mov	r0, r3
	adds	r7, r7, #64
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	Line_Up, .-Line_Up
	.section	.text.Line_Down,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Line_Down, %function
Line_Down:
	@ args = 12, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #16
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #86]
	strb	r3, [r7, #23]
	ldr	r3, [r7, #4]
	negs	r3, r3
	ldr	r2, [r7, #32]
	negs	r0, r2
	ldr	r2, [r7, #40]
	negs	r1, r2
	ldr	r2, [r7, #36]
	negs	r2, r2
	str	r0, [sp]
	str	r1, [sp, #4]
	str	r2, [sp, #8]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	mov	r2, r3
	ldr	r3, [r7]
	bl	Line_Up(PLT)
	mov	r3, r0
	strb	r3, [r7, #22]
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L64
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #86]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L64
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #88]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #88]
	ldr	r2, [r2, #20]
	negs	r2, r2
	str	r2, [r3, #20]
.L64:
	ldrb	r3, [r7, #22]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	Line_Down, .-Line_Down
	.global	__aeabi_idiv
	.section	.text.Bezier_Up,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Bezier_Up, %function
Bezier_Up:
	@ args = 4, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #56
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	str	r3, [r7, #40]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #3
	ldr	r2, [r7, #40]
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	str	r3, [r7, #32]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #4]
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #40]
	str	r3, [r7, #36]
	ldr	r2, [r7, #28]
	ldr	r3, [r7]
	cmp	r2, r3
	blt	.L67
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #72]
	cmp	r2, r3
	bgt	.L67
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	negs	r2, r3
	ldr	r3, [r7, #28]
	ands	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #72]
	cmp	r2, r3
	ble	.L68
	ldr	r3, [r7, #72]
	str	r3, [r7, #48]
.L68:
	ldr	r3, [r7]
	str	r3, [r7, #44]
	ldr	r2, [r7, #32]
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L69
	ldr	r3, [r7]
	str	r3, [r7, #52]
	b	.L70
.L69:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	subs	r2, r3, #1
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	negs	r3, r3
	ands	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #32]
	uxth	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	uxth	r3, r3
	subs	r3, r3, #1
	uxth	r3, r3
	uxth	r3, r3
	ands	r3, r3, r2
	strh	r3, [r7, #26]	@ movhi
	ldr	r3, [r7, #52]
	str	r3, [r7, #44]
	ldrsh	r3, [r7, #26]
	cmp	r3, #0
	bne	.L70
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #87]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L71
	ldr	r3, [r7, #36]
	subs	r3, r3, #4
	str	r3, [r7, #36]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #87]
.L71:
	ldr	r3, [r7, #36]
	adds	r2, r3, #4
	str	r2, [r7, #36]
	ldr	r2, [r7, #8]
	lsls	r2, r2, #3
	ldr	r1, [r7, #40]
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #52]
.L70:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #86]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L72
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #88]
	ldr	r2, [r7, #12]
	ldr	r2, [r2]
	ldr	r1, [r7, #44]
	asr	r2, r1, r2
	str	r2, [r3, #20]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #86]
.L72:
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bge	.L73
	b	.L67
.L73:
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #52]
	subs	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	asr	r3, r2, r3
	adds	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #36]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #36]
	cmp	r2, r3
	bcc	.L74
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #36]
	str	r2, [r3, #40]
	ldr	r3, [r7, #12]
	movs	r2, #98
	str	r2, [r3, #44]
	movs	r3, #1
	b	.L75
.L74:
	ldr	r3, [r7, #40]
	str	r3, [r7, #20]
.L81:
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #87]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #4]
	str	r3, [r7, #28]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	ble	.L76
	ldr	r3, [r7, #8]
	lsls	r3, r3, #3
	ldr	r2, [r7, #40]
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	str	r3, [r7, #32]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #32]
	subs	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	cmp	r2, r3
	blt	.L77
	ldr	r3, [r7, #4]
	ldr	r0, [r7, #40]
	blx	r3
	ldr	r3, [r7, #8]
	lsls	r3, r3, #3
	ldr	r2, [r7, #40]
	add	r3, r3, r2
	str	r3, [r7, #40]
	b	.L79
.L77:
	ldr	r4, [r7, #36]
	adds	r3, r4, #4
	str	r3, [r7, #36]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #3
	ldr	r2, [r7, #40]
	add	r3, r3, r2
	ldr	r5, [r3]
	ldr	r3, [r7, #40]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #3
	ldr	r1, [r7, #40]
	add	r3, r3, r1
	ldr	r3, [r3]
	subs	r3, r2, r3
	ldr	r1, [r7, #52]
	ldr	r2, [r7, #32]
	subs	r2, r1, r2
	mul	r2, r2, r3
	ldr	r1, [r7, #28]
	ldr	r3, [r7, #32]
	subs	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv(PLT)
	mov	r3, r0
	add	r3, r3, r5
	str	r3, [r4]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #3
	negs	r3, r3
	ldr	r2, [r7, #40]
	add	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #52]
	b	.L79
.L76:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bne	.L80
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #87]
	ldr	r3, [r7, #36]
	adds	r2, r3, #4
	str	r2, [r7, #36]
	ldr	r2, [r7, #40]
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #52]
.L80:
	ldr	r3, [r7, #8]
	lsls	r3, r3, #3
	negs	r3, r3
	ldr	r2, [r7, #40]
	add	r3, r3, r2
	str	r3, [r7, #40]
.L79:
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcc	.L67
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #48]
	cmp	r2, r3
	ble	.L81
.L67:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #36]
	str	r2, [r3, #40]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #52]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #3
	negs	r3, r3
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #52]
	movs	r3, #0
.L75:
	mov	r0, r3
	adds	r7, r7, #56
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.size	Bezier_Up, .-Bezier_Up
	.section	.text.Bezier_Down,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Bezier_Down, %function
Bezier_Down:
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	negs	r2, r3
	ldr	r3, [r7, #20]
	str	r2, [r3, #4]
	ldr	r3, [r7, #20]
	adds	r3, r3, #8
	ldr	r2, [r7, #20]
	adds	r2, r2, #8
	ldr	r2, [r2, #4]
	negs	r2, r2
	str	r2, [r3, #4]
	ldr	r3, [r7, #20]
	adds	r3, r3, #16
	ldr	r2, [r7, #20]
	adds	r2, r2, #16
	ldr	r2, [r2, #4]
	negs	r2, r2
	str	r2, [r3, #4]
	ldr	r3, [r7, #8]
	cmp	r3, #2
	ble	.L83
	ldr	r3, [r7, #20]
	adds	r3, r3, #24
	ldr	r2, [r7, #20]
	adds	r2, r2, #24
	ldr	r2, [r2, #4]
	negs	r2, r2
	str	r2, [r3, #4]
.L83:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #86]
	strb	r3, [r7, #19]
	ldr	r3, [r7, #32]
	negs	r3, r3
	ldr	r2, [r7]
	negs	r2, r2
	str	r2, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	Bezier_Up(PLT)
	mov	r3, r0
	strb	r3, [r7, #18]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L84
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #86]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L84
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #88]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #88]
	ldr	r2, [r2, #20]
	negs	r2, r2
	str	r2, [r3, #20]
.L84:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	negs	r2, r3
	ldr	r3, [r7, #20]
	str	r2, [r3, #4]
	ldrb	r3, [r7, #18]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	Bezier_Down, .-Bezier_Down
	.section	.text.Line_To,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Line_To, %function
Line_To:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #36
	add	r7, sp, #16
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #100]
	cmp	r3, #1
	beq	.L88
	cmp	r3, #1
	bcc	.L89
	cmp	r3, #2
	beq	.L90
	b	.L87
.L89:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #72]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bge	.L91
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	add	r3, r3, r2
	subs	r2, r3, #1
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	negs	r3, r3
	ands	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #72]
	subs	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	ite	ge
	movge	r3, #1
	movlt	r3, #0
	uxtb	r3, r3
	ldr	r0, [r7, #12]
	movs	r1, #1
	mov	r2, r3
	bl	New_Profile(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L92
	movs	r3, #1
	b	.L93
.L91:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #72]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	ble	.L92
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	subs	r2, r3, #1
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #72]
	ands	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	ite	ge
	movge	r3, #1
	movlt	r3, #0
	uxtb	r3, r3
	ldr	r0, [r7, #12]
	movs	r1, #2
	mov	r2, r3
	bl	New_Profile(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L92
	movs	r3, #1
	b	.L93
.L92:
	b	.L87
.L88:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #72]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	ble	.L94
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	subs	r2, r3, #1
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #72]
	ands	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	ite	ge
	movge	r3, #1
	movlt	r3, #0
	uxtb	r3, r3
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	End_Profile(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L95
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	subs	r2, r3, #1
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #72]
	ands	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	ite	ge
	movge	r3, #1
	movlt	r3, #0
	uxtb	r3, r3
	ldr	r0, [r7, #12]
	movs	r1, #2
	mov	r2, r3
	bl	New_Profile(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L94
.L95:
	movs	r3, #1
	b	.L93
.L94:
	b	.L87
.L90:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #72]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bge	.L96
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	add	r3, r3, r2
	subs	r2, r3, #1
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	negs	r3, r3
	ands	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #72]
	subs	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	ite	ge
	movge	r3, #1
	movlt	r3, #0
	uxtb	r3, r3
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	End_Profile(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L97
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	add	r3, r3, r2
	subs	r2, r3, #1
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	negs	r3, r3
	ands	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #72]
	subs	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	ite	ge
	movge	r3, #1
	movlt	r3, #0
	uxtb	r3, r3
	ldr	r0, [r7, #12]
	movs	r1, #1
	mov	r2, r3
	bl	New_Profile(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L96
.L97:
	movs	r3, #1
	b	.L93
.L96:
	nop
.L87:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #100]
	cmp	r3, #1
	beq	.L99
	cmp	r3, #2
	beq	.L100
	b	.L98
.L99:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #68]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #72]
	ldr	r1, [r7, #12]
	ldr	r0, [r1, #76]
	ldr	r1, [r7, #12]
	ldr	r1, [r1, #80]
	ldr	r4, [r7, #4]
	str	r4, [sp]
	str	r0, [sp, #4]
	str	r1, [sp, #8]
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [r7, #8]
	bl	Line_Up(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L101
	movs	r3, #1
	b	.L93
.L101:
	b	.L98
.L100:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #68]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #72]
	ldr	r1, [r7, #12]
	ldr	r0, [r1, #76]
	ldr	r1, [r7, #12]
	ldr	r1, [r1, #80]
	ldr	r4, [r7, #4]
	str	r4, [sp]
	str	r0, [sp, #4]
	str	r1, [sp, #8]
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [r7, #8]
	bl	Line_Down(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L102
	movs	r3, #1
	b	.L93
.L102:
	nop
.L98:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #68]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #72]
	movs	r3, #0
.L93:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	Line_To, .-Line_To
	.section	.text.Conic_To,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Conic_To, %function
Conic_To:
	@ args = 4, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #56
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	add	r2, r3, #180
	ldr	r3, [r7, #12]
	str	r2, [r3, #52]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	adds	r3, r3, #16
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #68]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	adds	r3, r3, #16
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #72]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	adds	r3, r3, #8
	ldr	r2, [r7, #8]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	adds	r3, r3, #8
	ldr	r2, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	ldr	r2, [r7]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	ldr	r2, [r7, #56]
	str	r2, [r3, #4]
.L118:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	adds	r3, r3, #16
	ldr	r3, [r3, #4]
	str	r3, [r7, #36]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	adds	r3, r3, #8
	ldr	r3, [r3, #4]
	str	r3, [r7, #32]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	ldr	r3, [r3, #4]
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	ldr	r3, [r3]
	str	r3, [r7, #24]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bgt	.L104
	ldr	r3, [r7, #36]
	str	r3, [r7, #44]
	ldr	r3, [r7, #28]
	str	r3, [r7, #40]
	b	.L105
.L104:
	ldr	r3, [r7, #28]
	str	r3, [r7, #44]
	ldr	r3, [r7, #36]
	str	r3, [r7, #40]
.L105:
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #44]
	cmp	r2, r3
	blt	.L106
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	ble	.L107
.L106:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	mov	r0, r3
	bl	Split_Conic(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	add	r2, r3, #16
	ldr	r3, [r7, #12]
	str	r2, [r3, #52]
	b	.L108
.L107:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bne	.L109
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	sub	r2, r3, #16
	ldr	r3, [r7, #12]
	str	r2, [r3, #52]
	b	.L108
.L109:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bge	.L110
	movs	r3, #1
	b	.L111
.L110:
	movs	r3, #2
.L111:
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #100]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	beq	.L112
	ldr	r3, [r7, #20]
	cmp	r3, #1
	bne	.L113
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	subs	r2, r3, #1
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	negs	r3, r3
	ands	r2, r2, r3
	ldr	r3, [r7, #36]
	subs	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	ite	ge
	movge	r3, #1
	movlt	r3, #0
	uxtb	r3, r3
	b	.L114
.L113:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	subs	r2, r3, #1
	ldr	r3, [r7, #36]
	ands	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	ite	ge
	movge	r3, #1
	movlt	r3, #0
	uxtb	r3, r3
.L114:
	strb	r3, [r7, #19]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #100]
	cmp	r3, #0
	beq	.L115
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	End_Profile(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L115
	b	.L116
.L115:
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #20]
	mov	r2, r3
	bl	New_Profile(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L112
	b	.L116
.L112:
	ldr	r3, [r7, #20]
	cmp	r3, #1
	bne	.L117
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #76]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #80]
	str	r2, [sp]
	ldr	r0, [r7, #12]
	movs	r1, #2
	ldr	r2, .L120
.LPIC0:
	add	r2, pc
	bl	Bezier_Up(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L108
	b	.L116
.L117:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #76]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #80]
	str	r2, [sp]
	ldr	r0, [r7, #12]
	movs	r1, #2
	ldr	r2, .L120+4
.LPIC1:
	add	r2, pc
	bl	Bezier_Down(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L108
	b	.L116
.L108:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #52]
	ldr	r3, [r7, #12]
	adds	r3, r3, #180
	cmp	r2, r3
	bcs	.L118
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #24]
	str	r2, [r3, #68]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #28]
	str	r2, [r3, #72]
	movs	r3, #0
	b	.L119
.L116:
	movs	r3, #1
.L119:
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L121:
	.align	2
.L120:
	.word	Split_Conic-(.LPIC0+4)
	.word	Split_Conic-(.LPIC1+4)
	.size	Conic_To, .-Conic_To
	.section	.text.Cubic_To,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Cubic_To, %function
Cubic_To:
	@ args = 12, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #72
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	add	r2, r3, #180
	ldr	r3, [r7, #12]
	str	r2, [r3, #52]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	adds	r3, r3, #24
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #68]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	adds	r3, r3, #24
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #72]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	adds	r3, r3, #16
	ldr	r2, [r7, #8]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	adds	r3, r3, #16
	ldr	r2, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	adds	r3, r3, #8
	ldr	r2, [r7]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	adds	r3, r3, #8
	ldr	r2, [r7, #72]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	ldr	r2, [r7, #76]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	ldr	r2, [r7, #80]
	str	r2, [r3, #4]
.L139:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	adds	r3, r3, #24
	ldr	r3, [r3, #4]
	str	r3, [r7, #44]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	adds	r3, r3, #16
	ldr	r3, [r3, #4]
	str	r3, [r7, #40]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	adds	r3, r3, #8
	ldr	r3, [r3, #4]
	str	r3, [r7, #36]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	ldr	r3, [r3, #4]
	str	r3, [r7, #32]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	ldr	r3, [r3]
	str	r3, [r7, #28]
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bgt	.L123
	ldr	r3, [r7, #44]
	str	r3, [r7, #60]
	ldr	r3, [r7, #32]
	str	r3, [r7, #56]
	b	.L124
.L123:
	ldr	r3, [r7, #32]
	str	r3, [r7, #60]
	ldr	r3, [r7, #44]
	str	r3, [r7, #56]
.L124:
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bgt	.L125
	ldr	r3, [r7, #40]
	str	r3, [r7, #52]
	ldr	r3, [r7, #36]
	str	r3, [r7, #48]
	b	.L126
.L125:
	ldr	r3, [r7, #36]
	str	r3, [r7, #52]
	ldr	r3, [r7, #40]
	str	r3, [r7, #48]
.L126:
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #60]
	cmp	r2, r3
	blt	.L127
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #56]
	cmp	r2, r3
	ble	.L128
.L127:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	mov	r0, r3
	bl	Split_Cubic(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	add	r2, r3, #24
	ldr	r3, [r7, #12]
	str	r2, [r3, #52]
	b	.L129
.L128:
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bne	.L130
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	sub	r2, r3, #24
	ldr	r3, [r7, #12]
	str	r2, [r3, #52]
	b	.L129
.L130:
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bgt	.L131
	movs	r3, #1
	b	.L132
.L131:
	movs	r3, #2
.L132:
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #100]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	beq	.L133
	ldr	r3, [r7, #24]
	cmp	r3, #1
	bne	.L134
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #44]
	add	r3, r3, r2
	subs	r2, r3, #1
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	negs	r3, r3
	ands	r2, r2, r3
	ldr	r3, [r7, #44]
	subs	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	ite	ge
	movge	r3, #1
	movlt	r3, #0
	uxtb	r3, r3
	b	.L135
.L134:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	subs	r2, r3, #1
	ldr	r3, [r7, #44]
	ands	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	ite	ge
	movge	r3, #1
	movlt	r3, #0
	uxtb	r3, r3
.L135:
	strb	r3, [r7, #23]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #100]
	cmp	r3, #0
	beq	.L136
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	End_Profile(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L136
	b	.L137
.L136:
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #24]
	mov	r2, r3
	bl	New_Profile(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L133
	b	.L137
.L133:
	ldr	r3, [r7, #24]
	cmp	r3, #1
	bne	.L138
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #76]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #80]
	str	r2, [sp]
	ldr	r0, [r7, #12]
	movs	r1, #3
	ldr	r2, .L141
.LPIC2:
	add	r2, pc
	bl	Bezier_Up(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L129
	b	.L137
.L138:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #76]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #80]
	str	r2, [sp]
	ldr	r0, [r7, #12]
	movs	r1, #3
	ldr	r2, .L141+4
.LPIC3:
	add	r2, pc
	bl	Bezier_Down(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L129
	b	.L137
.L129:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #52]
	ldr	r3, [r7, #12]
	adds	r3, r3, #180
	cmp	r2, r3
	bcs	.L139
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #28]
	str	r2, [r3, #68]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #32]
	str	r2, [r3, #72]
	movs	r3, #0
	b	.L140
.L137:
	movs	r3, #1
.L140:
	mov	r0, r3
	adds	r7, r7, #64
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L142:
	.align	2
.L141:
	.word	Split_Cubic-(.LPIC2+4)
	.word	Split_Cubic-(.LPIC3+4)
	.size	Cubic_To, .-Cubic_To
	.section	.text.Decompose_Curve,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Decompose_Curve, %function
Decompose_Curve:
	@ args = 0, pretend = 0, frame = 144
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #160
	add	r7, sp, #16
	str	r0, [r7, #12]
	str	r3, [r7, #4]
	mov	r3, r1	@ movhi
	strh	r3, [r7, #10]	@ movhi
	mov	r3, r2	@ movhi
	strh	r3, [r7, #8]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #132]
	str	r3, [r7, #88]
	ldrh	r3, [r7, #8]
	lsls	r3, r3, #3
	ldr	r2, [r7, #88]
	add	r3, r3, r2
	str	r3, [r7, #136]
	ldrh	r3, [r7, #10]
	lsls	r3, r3, #3
	ldr	r2, [r7, #88]
	add	r3, r3, r2
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L144
	ldrh	r3, [r7, #10]
	lsls	r3, r3, #3
	ldr	r2, [r7, #88]
	add	r3, r3, r2
	ldr	r3, [r3]
	negs	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	lsl	r3, r2, r3
	negs	r3, r3
	b	.L145
.L144:
	ldrh	r3, [r7, #10]
	lsls	r3, r3, #3
	ldr	r2, [r7, #88]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	lsl	r3, r2, r3
.L145:
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #8]
	subs	r3, r3, r2
	str	r3, [r7, #28]
	ldrh	r3, [r7, #10]
	lsls	r3, r3, #3
	ldr	r2, [r7, #88]
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bge	.L146
	ldrh	r3, [r7, #10]
	lsls	r3, r3, #3
	ldr	r2, [r7, #88]
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	negs	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	lsl	r3, r2, r3
	negs	r3, r3
	b	.L147
.L146:
	ldrh	r3, [r7, #10]
	lsls	r3, r3, #3
	ldr	r2, [r7, #88]
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	lsl	r3, r2, r3
.L147:
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #8]
	subs	r3, r3, r2
	str	r3, [r7, #32]
	ldrh	r3, [r7, #8]
	lsls	r3, r3, #3
	ldr	r2, [r7, #88]
	add	r3, r3, r2
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L148
	ldrh	r3, [r7, #8]
	lsls	r3, r3, #3
	ldr	r2, [r7, #88]
	add	r3, r3, r2
	ldr	r3, [r3]
	negs	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	lsl	r3, r2, r3
	negs	r3, r3
	b	.L149
.L148:
	ldrh	r3, [r7, #8]
	lsls	r3, r3, #3
	ldr	r2, [r7, #88]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	lsl	r3, r2, r3
.L149:
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #8]
	subs	r3, r3, r2
	str	r3, [r7, #44]
	ldrh	r3, [r7, #8]
	lsls	r3, r3, #3
	ldr	r2, [r7, #88]
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bge	.L150
	ldrh	r3, [r7, #8]
	lsls	r3, r3, #3
	ldr	r2, [r7, #88]
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	negs	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	lsl	r3, r2, r3
	negs	r3, r3
	b	.L151
.L150:
	ldrh	r3, [r7, #8]
	lsls	r3, r3, #3
	ldr	r2, [r7, #88]
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	lsl	r3, r2, r3
.L151:
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #8]
	subs	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L152
	ldr	r3, [r7, #28]
	str	r3, [r7, #84]
	ldr	r3, [r7, #32]
	str	r3, [r7, #28]
	ldr	r3, [r7, #84]
	str	r3, [r7, #32]
	ldr	r3, [r7, #44]
	str	r3, [r7, #80]
	ldr	r3, [r7, #48]
	str	r3, [r7, #44]
	ldr	r3, [r7, #80]
	str	r3, [r7, #48]
.L152:
	add	r3, r7, #36
	add	r2, r7, #28
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldrh	r3, [r7, #10]
	lsls	r3, r3, #3
	ldr	r2, [r7, #88]
	add	r3, r3, r2
	str	r3, [r7, #140]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #136]
	ldrh	r3, [r7, #10]
	add	r3, r3, r2
	str	r3, [r7, #132]
	ldr	r3, [r7, #132]
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L153
	ldr	r3, [r7, #132]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsrs	r3, r3, #5
	uxtb	r2, r3
	ldr	r3, [r7, #12]
	strb	r2, [r3, #176]
.L153:
	ldr	r3, [r7, #132]
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #3
	str	r3, [r7, #76]
	ldr	r3, [r7, #76]
	cmp	r3, #2
	bne	.L154
	b	.L155
.L154:
	ldr	r3, [r7, #76]
	cmp	r3, #0
	bne	.L156
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #136]
	ldrh	r3, [r7, #8]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #3
	cmp	r3, #1
	bne	.L157
	add	r3, r7, #28
	add	r2, r7, #44
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #136]
	subs	r3, r3, #8
	str	r3, [r7, #136]
	b	.L158
.L157:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #44]
	add	r3, r3, r2
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	str	r3, [r7, #28]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #48]
	add	r3, r3, r2
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	str	r3, [r7, #32]
.L158:
	ldr	r3, [r7, #140]
	subs	r3, r3, #8
	str	r3, [r7, #140]
	ldr	r3, [r7, #132]
	subs	r3, r3, #1
	str	r3, [r7, #132]
.L156:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #12]
	str	r2, [r3, #68]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #12]
	str	r2, [r3, #72]
	b	.L159
.L205:
	ldr	r3, [r7, #140]
	adds	r3, r3, #8
	str	r3, [r7, #140]
	ldr	r3, [r7, #132]
	adds	r3, r3, #1
	str	r3, [r7, #132]
	ldr	r3, [r7, #132]
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #3
	str	r3, [r7, #76]
	ldr	r3, [r7, #76]
	cmp	r3, #0
	beq	.L161
	cmp	r3, #1
	bne	.L208
	ldr	r3, [r7, #140]
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L163
	ldr	r3, [r7, #140]
	ldr	r3, [r3]
	negs	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	lsl	r3, r2, r3
	negs	r3, r3
	b	.L164
.L163:
	ldr	r3, [r7, #140]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	lsl	r3, r2, r3
.L164:
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #8]
	subs	r3, r3, r2
	str	r3, [r7, #128]
	ldr	r3, [r7, #140]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bge	.L165
	ldr	r3, [r7, #140]
	ldr	r3, [r3, #4]
	negs	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	lsl	r3, r2, r3
	negs	r3, r3
	b	.L166
.L165:
	ldr	r3, [r7, #140]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	lsl	r3, r2, r3
.L166:
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #8]
	subs	r3, r3, r2
	str	r3, [r7, #124]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L167
	ldr	r3, [r7, #128]
	str	r3, [r7, #72]
	ldr	r3, [r7, #124]
	str	r3, [r7, #128]
	ldr	r3, [r7, #72]
	str	r3, [r7, #124]
.L167:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #128]
	ldr	r2, [r7, #124]
	bl	Line_To(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L168
	b	.L169
.L168:
	b	.L159
.L161:
	ldr	r3, [r7, #140]
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L170
	ldr	r3, [r7, #140]
	ldr	r3, [r3]
	negs	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	lsl	r3, r2, r3
	negs	r3, r3
	b	.L171
.L170:
	ldr	r3, [r7, #140]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	lsl	r3, r2, r3
.L171:
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #8]
	subs	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #140]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bge	.L172
	ldr	r3, [r7, #140]
	ldr	r3, [r3, #4]
	negs	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	lsl	r3, r2, r3
	negs	r3, r3
	b	.L173
.L172:
	ldr	r3, [r7, #140]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	lsl	r3, r2, r3
.L173:
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #8]
	subs	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L174
	ldr	r3, [r7, #36]
	str	r3, [r7, #68]
	ldr	r3, [r7, #40]
	str	r3, [r7, #36]
	ldr	r3, [r7, #68]
	str	r3, [r7, #40]
.L174:
	ldr	r2, [r7, #140]
	ldr	r3, [r7, #136]
	cmp	r2, r3
	bcs	.L175
	ldr	r3, [r7, #140]
	adds	r3, r3, #8
	str	r3, [r7, #140]
	ldr	r3, [r7, #132]
	adds	r3, r3, #1
	str	r3, [r7, #132]
	ldr	r3, [r7, #132]
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #3
	str	r3, [r7, #76]
	ldr	r3, [r7, #140]
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L176
	ldr	r3, [r7, #140]
	ldr	r3, [r3]
	negs	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	lsl	r3, r2, r3
	negs	r3, r3
	b	.L177
.L176:
	ldr	r3, [r7, #140]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	lsl	r3, r2, r3
.L177:
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #8]
	subs	r3, r3, r2
	str	r3, [r7, #120]
	ldr	r3, [r7, #140]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bge	.L178
	ldr	r3, [r7, #140]
	ldr	r3, [r3, #4]
	negs	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	lsl	r3, r2, r3
	negs	r3, r3
	b	.L179
.L178:
	ldr	r3, [r7, #140]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	lsl	r3, r2, r3
.L179:
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #8]
	subs	r3, r3, r2
	str	r3, [r7, #116]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L180
	ldr	r3, [r7, #120]
	str	r3, [r7, #64]
	ldr	r3, [r7, #116]
	str	r3, [r7, #120]
	ldr	r3, [r7, #64]
	str	r3, [r7, #116]
.L180:
	ldr	r3, [r7, #76]
	cmp	r3, #1
	bne	.L181
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #40]
	ldr	r1, [r7, #116]
	str	r1, [sp]
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [r7, #120]
	bl	Conic_To(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L159
	b	.L169
.L181:
	ldr	r3, [r7, #76]
	cmp	r3, #0
	bne	.L155
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #120]
	add	r3, r3, r2
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	str	r3, [r7, #20]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #116]
	add	r3, r3, r2
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	str	r3, [r7, #24]
	ldr	r1, [r7, #36]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #20]
	ldr	r0, [r7, #24]
	str	r0, [sp]
	ldr	r0, [r7, #12]
	bl	Conic_To(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L185
	nop
	b	.L169
.L185:
	ldr	r3, [r7, #120]
	str	r3, [r7, #36]
	ldr	r3, [r7, #116]
	str	r3, [r7, #40]
	b	.L174
.L175:
	ldr	r1, [r7, #36]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #28]
	ldr	r0, [r7, #32]
	str	r0, [sp]
	ldr	r0, [r7, #12]
	bl	Conic_To(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L186
	b	.L169
.L186:
	b	.L187
.L208:
	ldr	r3, [r7, #140]
	add	r2, r3, #8
	ldr	r3, [r7, #136]
	cmp	r2, r3
	bhi	.L155
	ldr	r3, [r7, #132]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #3
	cmp	r3, #2
	bne	.L155
	ldr	r3, [r7, #140]
	adds	r3, r3, #16
	str	r3, [r7, #140]
	ldr	r3, [r7, #132]
	adds	r3, r3, #2
	str	r3, [r7, #132]
	ldr	r3, [r7, #140]
	subs	r3, r3, #16
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L188
	ldr	r3, [r7, #140]
	subs	r3, r3, #16
	ldr	r3, [r3]
	negs	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	lsl	r3, r2, r3
	negs	r3, r3
	b	.L189
.L188:
	ldr	r3, [r7, #140]
	subs	r3, r3, #16
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	lsl	r3, r2, r3
.L189:
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #8]
	subs	r3, r3, r2
	str	r3, [r7, #112]
	ldr	r3, [r7, #140]
	subs	r3, r3, #16
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bge	.L190
	ldr	r3, [r7, #140]
	subs	r3, r3, #16
	ldr	r3, [r3, #4]
	negs	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	lsl	r3, r2, r3
	negs	r3, r3
	b	.L191
.L190:
	ldr	r3, [r7, #140]
	subs	r3, r3, #16
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	lsl	r3, r2, r3
.L191:
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #8]
	subs	r3, r3, r2
	str	r3, [r7, #108]
	ldr	r3, [r7, #140]
	subs	r3, r3, #8
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L192
	ldr	r3, [r7, #140]
	subs	r3, r3, #8
	ldr	r3, [r3]
	negs	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	lsl	r3, r2, r3
	negs	r3, r3
	b	.L193
.L192:
	ldr	r3, [r7, #140]
	subs	r3, r3, #8
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	lsl	r3, r2, r3
.L193:
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #8]
	subs	r3, r3, r2
	str	r3, [r7, #104]
	ldr	r3, [r7, #140]
	subs	r3, r3, #8
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bge	.L194
	ldr	r3, [r7, #140]
	subs	r3, r3, #8
	ldr	r3, [r3, #4]
	negs	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	lsl	r3, r2, r3
	negs	r3, r3
	b	.L195
.L194:
	ldr	r3, [r7, #140]
	subs	r3, r3, #8
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	lsl	r3, r2, r3
.L195:
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #8]
	subs	r3, r3, r2
	str	r3, [r7, #100]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L196
	ldr	r3, [r7, #112]
	str	r3, [r7, #60]
	ldr	r3, [r7, #108]
	str	r3, [r7, #112]
	ldr	r3, [r7, #60]
	str	r3, [r7, #108]
	ldr	r3, [r7, #104]
	str	r3, [r7, #56]
	ldr	r3, [r7, #100]
	str	r3, [r7, #104]
	ldr	r3, [r7, #56]
	str	r3, [r7, #100]
.L196:
	ldr	r2, [r7, #140]
	ldr	r3, [r7, #136]
	cmp	r2, r3
	bhi	.L197
	ldr	r3, [r7, #140]
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L198
	ldr	r3, [r7, #140]
	ldr	r3, [r3]
	negs	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	lsl	r3, r2, r3
	negs	r3, r3
	b	.L199
.L198:
	ldr	r3, [r7, #140]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	lsl	r3, r2, r3
.L199:
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #8]
	subs	r3, r3, r2
	str	r3, [r7, #96]
	ldr	r3, [r7, #140]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bge	.L200
	ldr	r3, [r7, #140]
	ldr	r3, [r3, #4]
	negs	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	lsl	r3, r2, r3
	negs	r3, r3
	b	.L201
.L200:
	ldr	r3, [r7, #140]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	lsl	r3, r2, r3
.L201:
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #8]
	subs	r3, r3, r2
	str	r3, [r7, #92]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L202
	ldr	r3, [r7, #96]
	str	r3, [r7, #52]
	ldr	r3, [r7, #92]
	str	r3, [r7, #96]
	ldr	r3, [r7, #52]
	str	r3, [r7, #92]
.L202:
	ldr	r3, [r7, #100]
	str	r3, [sp]
	ldr	r3, [r7, #96]
	str	r3, [sp, #4]
	ldr	r3, [r7, #92]
	str	r3, [sp, #8]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #112]
	ldr	r2, [r7, #108]
	ldr	r3, [r7, #104]
	bl	Cubic_To(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L203
	b	.L169
.L203:
	b	.L159
.L197:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #32]
	ldr	r1, [r7, #100]
	str	r1, [sp]
	str	r2, [sp, #4]
	str	r3, [sp, #8]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #112]
	ldr	r2, [r7, #108]
	ldr	r3, [r7, #104]
	bl	Cubic_To(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L204
	b	.L169
.L204:
	b	.L187
.L159:
	ldr	r2, [r7, #140]
	ldr	r3, [r7, #136]
	cmp	r2, r3
	bcc	.L205
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #32]
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	bl	Line_To(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L187
	b	.L169
.L187:
	movs	r3, #0
	b	.L207
.L155:
	ldr	r3, [r7, #12]
	movs	r2, #20
	str	r2, [r3, #44]
.L169:
	movs	r3, #1
.L207:
	mov	r0, r3
	adds	r7, r7, #144
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	Decompose_Curve, .-Decompose_Curve
	.section	.text.Convert_Glyph,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Convert_Glyph, %function
Convert_Glyph:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #92]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #87]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #86]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	sub	r2, r3, #32
	ldr	r3, [r7, #4]
	str	r2, [r3, #36]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #48]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #4]
	str	r2, [r3, #88]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #40]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strh	r2, [r3, #84]	@ movhi
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L210
.L218:
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #100]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #96]
	ldr	r3, [r7, #16]
	uxth	r2, r3
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #140]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #1
	add	r3, r3, r1
	ldrh	r3, [r3]
	uxth	r3, r3
	ldr	r0, [r7, #4]
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [r7]
	bl	Decompose_Curve(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L211
	movs	r3, #1
	b	.L212
.L211:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #140]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r3, [r3]
	uxth	r3, r3
	adds	r3, r3, #1
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #72]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	subs	r3, r3, #1
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L213
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #72]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #76]
	cmp	r2, r3
	blt	.L213
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #72]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #80]
	cmp	r2, r3
	bgt	.L213
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #96]
	cmp	r3, #0
	beq	.L213
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #96]
	ldrh	r3, [r3, #12]
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	ldrh	r3, [r3, #12]
	eors	r3, r3, r2
	and	r3, r3, #8
	cmp	r3, #0
	bne	.L213
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	subs	r2, r3, #4
	ldr	r3, [r7, #4]
	str	r2, [r3, #40]
.L213:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	beq	.L214
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	ldrh	r3, [r3, #12]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L214
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	subs	r2, r3, #1
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #72]
	ands	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	ite	ge
	movge	r3, #1
	movlt	r3, #0
	uxtb	r3, r3
	strb	r3, [r7, #15]
	b	.L215
.L214:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #72]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	add	r3, r3, r2
	subs	r2, r3, #1
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	negs	r3, r3
	ands	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #72]
	subs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	ite	ge
	movge	r3, #1
	movlt	r3, #0
	uxtb	r3, r3
	strb	r3, [r7, #15]
.L215:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	End_Profile(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L216
	movs	r3, #1
	b	.L212
.L216:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #96]
	cmp	r3, #0
	beq	.L217
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #96]
	ldr	r3, [r7, #8]
	str	r2, [r3, #28]
.L217:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L210:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #128]
	sxth	r2, r3
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bgt	.L218
	ldr	r0, [r7, #4]
	bl	Finalize_Profile_Table(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L219
	movs	r3, #1
	b	.L212
.L219:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	cmp	r2, r3
	ite	cs
	movcs	r3, #1
	movcc	r3, #0
	uxtb	r3, r3
	uxtb	r3, r3
.L212:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	Convert_Glyph, .-Convert_Glyph
	.section	.text.Init_Linked,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Init_Linked, %function
Init_Linked:
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
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Init_Linked, .-Init_Linked
	.section	.text.InsNew,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	InsNew, %function
InsNew:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	str	r3, [r7, #16]
	ldr	r3, [r7]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	b	.L222
.L225:
	ldr	r3, [r7, #16]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	ble	.L223
	b	.L224
.L223:
	ldr	r3, [r7, #16]
	adds	r3, r3, #4
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	str	r3, [r7, #16]
.L222:
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L225
.L224:
	ldr	r3, [r7]
	ldr	r2, [r7, #16]
	str	r2, [r3, #4]
	ldr	r3, [r7, #20]
	ldr	r2, [r7]
	str	r2, [r3]
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	InsNew, .-InsNew
	.section	.text.DelOld,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	DelOld, %function
DelOld:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #8]
	b	.L227
.L230:
	ldr	r2, [r7, #8]
	ldr	r3, [r7]
	cmp	r2, r3
	bne	.L228
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	str	r2, [r3]
	b	.L226
.L228:
	ldr	r3, [r7, #8]
	adds	r3, r3, #4
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #8]
.L227:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L230
.L226:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	DelOld, .-DelOld
	.section	.text.Sort,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Sort, %function
Sort:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #16]
	b	.L232
.L235:
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #8]
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	str	r2, [r3]
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #16]
	ldrh	r3, [r3, #12]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L233
	movs	r3, #4
	b	.L234
.L233:
	mvn	r3, #3
.L234:
	add	r2, r2, r3
	ldr	r3, [r7, #16]
	str	r2, [r3, #8]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #16]
	subs	r2, r3, #1
	ldr	r3, [r7, #16]
	str	r2, [r3, #16]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #4]
	str	r3, [r7, #16]
.L232:
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L235
	ldr	r3, [r7, #4]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L236
	b	.L231
.L236:
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #4]
	str	r3, [r7, #12]
	b	.L238
.L241:
	ldr	r3, [r7, #16]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	cmp	r2, r3
	bgt	.L239
	ldr	r3, [r7, #16]
	adds	r3, r3, #4
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L240
	b	.L231
.L239:
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #16]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #16]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	str	r3, [r7, #16]
.L240:
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #4]
	str	r3, [r7, #12]
.L238:
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L241
.L231:
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Sort, .-Sort
	.section	.text.Vertical_Sweep_Init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Vertical_Sweep_Init, %function
Vertical_Sweep_Init:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #112]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	uxth	r3, r3
	negs	r3, r3
	uxth	r3, r3
	uxth	r2, r3
	ldr	r3, [r7, #12]
	strh	r2, [r3, #156]	@ movhi
	ldr	r3, [r7, #8]
	ldrh	r3, [r3]
	sxth	r3, r3
	negs	r3, r3
	ldr	r2, [r7, #20]
	mul	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #148]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	ble	.L242
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #148]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #104]
	subs	r3, r3, #1
	ldr	r1, [r7, #20]
	mul	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #148]
.L242:
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Vertical_Sweep_Init, .-Vertical_Sweep_Init
	.section	.text.Vertical_Sweep_Span,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Vertical_Sweep_Span, %function
Vertical_Sweep_Span:
	@ args = 8, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #52
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r2, [r7, #4]
	str	r3, [r7]
	mov	r3, r1	@ movhi
	strh	r3, [r7, #10]	@ movhi
	ldr	r3, [r7, #56]
	ldrh	r3, [r3, #12]
	and	r3, r3, #7
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	subs	r2, r3, #1
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	negs	r3, r3
	ands	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	asr	r3, r2, r3
	str	r3, [r7, #44]
	ldr	r3, [r7, #28]
	cmp	r3, #2
	beq	.L245
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	subs	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	subs	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #20]
	cmp	r2, r3
	bgt	.L245
	ldr	r3, [r7, #44]
	str	r3, [r7, #40]
	b	.L246
.L245:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	negs	r2, r3
	ldr	r3, [r7]
	ands	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	asr	r3, r2, r3
	str	r3, [r7, #40]
.L246:
	ldr	r3, [r7, #40]
	cmp	r3, #0
	blt	.L244
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #56]
	mov	r2, r3
	ldr	r3, [r7, #44]
	cmp	r2, r3
	ble	.L244
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bge	.L248
	movs	r3, #0
	str	r3, [r7, #44]
.L248:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #56]
	mov	r2, r3
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bgt	.L249
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #56]
	subs	r3, r3, #1
	str	r3, [r7, #40]
.L249:
	ldr	r3, [r7, #44]
	asrs	r3, r3, #3
	uxth	r3, r3
	sxth	r3, r3
	str	r3, [r7, #24]
	ldr	r3, [r7, #40]
	asrs	r3, r3, #3
	uxth	r3, r3
	sxth	r3, r3
	str	r3, [r7, #32]
	ldr	r3, [r7, #44]
	and	r3, r3, #7
	movs	r2, #255
	asr	r3, r2, r3
	strb	r3, [r7, #23]
	ldr	r3, [r7, #40]
	and	r3, r3, #7
	movs	r2, #127
	asr	r3, r2, r3
	uxtb	r3, r3
	mvns	r3, r3
	strb	r3, [r7, #22]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #148]
	mov	r1, r3
	ldr	r3, [r7, #24]
	add	r3, r3, r1
	add	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #24]
	subs	r3, r2, r3
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	ble	.L250
	ldr	r3, [r7, #36]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldrb	r3, [r7, #23]
	orrs	r3, r3, r2
	uxtb	r2, r3
	ldr	r3, [r7, #36]
	strb	r2, [r3]
	ldr	r3, [r7, #32]
	subs	r3, r3, #1
	str	r3, [r7, #32]
	b	.L251
.L252:
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	movs	r2, #255
	strb	r2, [r3]
	ldr	r3, [r7, #32]
	subs	r3, r3, #1
	str	r3, [r7, #32]
.L251:
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bgt	.L252
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	ldr	r2, [r7, #36]
	adds	r2, r2, #1
	ldrb	r1, [r2]	@ zero_extendqisi2
	ldrb	r2, [r7, #22]
	orrs	r2, r2, r1
	uxtb	r2, r2
	strb	r2, [r3]
	b	.L244
.L250:
	ldr	r3, [r7, #36]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldrb	r1, [r7, #23]
	ldrb	r3, [r7, #22]
	ands	r3, r3, r1
	uxtb	r3, r3
	orrs	r3, r3, r2
	uxtb	r2, r3
	ldr	r3, [r7, #36]
	strb	r2, [r3]
.L244:
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Vertical_Sweep_Span, .-Vertical_Sweep_Span
	.section	.text.Vertical_Sweep_Drop,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Vertical_Sweep_Drop, %function
Vertical_Sweep_Drop:
	@ args = 8, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #44
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r2, [r7, #4]
	str	r3, [r7]
	mov	r3, r1	@ movhi
	strh	r3, [r7, #10]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	subs	r2, r3, #1
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	negs	r3, r3
	ands	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	negs	r2, r3
	ldr	r3, [r7]
	ands	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #32]
	str	r3, [r7, #36]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	ble	.L254
	ldr	r3, [r7, #48]
	ldrh	r3, [r3, #12]
	and	r3, r3, #7
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #28]
	add	r2, r2, r3
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bne	.L255
	ldr	r3, [r7, #24]
	cmp	r3, #5
	bhi	.L271
	adr	r1, .L258
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L258:
	.word	.L257+1-.L258
	.word	.L259+1-.L258
	.word	.L271+1-.L258
	.word	.L271+1-.L258
	.word	.L260+1-.L258
	.word	.L259+1-.L258
.L257:
	ldr	r3, [r7, #28]
	str	r3, [r7, #36]
	b	.L261
.L260:
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	add	r3, r3, r2
	subs	r3, r3, #1
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	mov	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	negs	r3, r3
	ands	r3, r3, r2
	str	r3, [r7, #36]
	b	.L261
.L259:
	ldr	r3, [r7, #48]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bne	.L262
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	bgt	.L262
	ldr	r3, [r7, #48]
	ldrh	r3, [r3, #12]
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L253
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	subs	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	blt	.L253
.L262:
	ldr	r3, [r7, #52]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #48]
	cmp	r2, r3
	bne	.L264
	ldr	r3, [r7, #48]
	ldr	r2, [r3, #20]
	ldrsh	r3, [r7, #10]
	cmp	r2, r3
	bne	.L264
	ldr	r3, [r7, #48]
	ldrh	r3, [r3, #12]
	and	r3, r3, #32
	cmp	r3, #0
	beq	.L253
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	subs	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	blt	.L253
.L264:
	ldr	r3, [r7, #24]
	cmp	r3, #1
	bne	.L265
	ldr	r3, [r7, #28]
	str	r3, [r7, #36]
	b	.L272
.L265:
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	add	r3, r3, r2
	subs	r3, r3, #1
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	mov	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	negs	r3, r3
	ands	r3, r3, r2
	str	r3, [r7, #36]
.L272:
	nop
.L261:
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bge	.L267
	ldr	r3, [r7, #32]
	str	r3, [r7, #36]
	b	.L268
.L267:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r7, #36]
	asrs	r2, r2, r3
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #56]
	cmp	r2, r3
	blt	.L268
	ldr	r3, [r7, #28]
	str	r3, [r7, #36]
.L268:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bne	.L269
	ldr	r3, [r7, #28]
	b	.L270
.L269:
	ldr	r3, [r7, #32]
.L270:
	str	r3, [r7, #32]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r7, #32]
	asr	r3, r2, r3
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	asrs	r3, r3, #3
	strh	r3, [r7, #22]	@ movhi
	ldr	r3, [r7, #32]
	uxth	r3, r3
	and	r3, r3, #7
	strh	r3, [r7, #20]	@ movhi
	ldr	r3, [r7, #32]
	cmp	r3, #0
	blt	.L254
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #56]
	mov	r2, r3
	ldr	r3, [r7, #32]
	cmp	r2, r3
	ble	.L254
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #148]
	ldrsh	r3, [r7, #22]
	add	r3, r3, r1
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldrsh	r3, [r7, #20]
	movs	r1, #128
	asr	r3, r1, r3
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L254
	b	.L253
.L255:
	b	.L253
.L254:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r7, #36]
	asr	r3, r2, r3
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	blt	.L253
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #56]
	mov	r2, r3
	ldr	r3, [r7, #32]
	cmp	r2, r3
	ble	.L253
	ldr	r3, [r7, #32]
	asrs	r3, r3, #3
	strh	r3, [r7, #22]	@ movhi
	ldr	r3, [r7, #32]
	uxth	r3, r3
	and	r3, r3, #7
	strh	r3, [r7, #20]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #148]
	ldrsh	r3, [r7, #22]
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r2, [r7, #12]
	ldr	r1, [r2, #60]
	ldr	r2, [r7, #12]
	ldr	r0, [r2, #148]
	ldrsh	r2, [r7, #22]
	add	r2, r2, r0
	add	r2, r2, r1
	ldrb	r1, [r2]	@ zero_extendqisi2
	ldrsh	r2, [r7, #20]
	movs	r0, #128
	asr	r2, r0, r2
	uxtb	r2, r2
	orrs	r2, r2, r1
	uxtb	r2, r2
	strb	r2, [r3]
	b	.L253
.L263:
.L271:
	nop
.L253:
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Vertical_Sweep_Drop, .-Vertical_Sweep_Drop
	.section	.text.Vertical_Sweep_Step,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Vertical_Sweep_Step, %function
Vertical_Sweep_Step:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #148]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #156]
	sxth	r3, r3
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #148]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Vertical_Sweep_Step, .-Vertical_Sweep_Step
	.section	.text.Horizontal_Sweep_Init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Horizontal_Sweep_Init, %function
Horizontal_Sweep_Init:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Horizontal_Sweep_Init, .-Horizontal_Sweep_Init
	.section	.text.Horizontal_Sweep_Span,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Horizontal_Sweep_Span, %function
Horizontal_Sweep_Span:
	@ args = 8, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #44
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r2, [r7, #4]
	str	r3, [r7]
	mov	r3, r1	@ movhi
	strh	r3, [r7, #10]	@ movhi
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	subs	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bge	.L275
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	subs	r2, r3, #1
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	negs	r3, r3
	ands	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	negs	r2, r3
	ldr	r3, [r7]
	ands	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bne	.L275
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r7, #32]
	asr	r3, r2, r3
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	blt	.L275
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #104]
	cmp	r2, r3
	bcs	.L275
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #60]
	ldrsh	r3, [r7, #10]
	asrs	r3, r3, #3
	uxth	r3, r3
	sxth	r3, r3
	add	r3, r3, r2
	str	r3, [r7, #24]
	ldrh	r3, [r7, #10]
	and	r3, r3, #7
	movs	r2, #128
	asr	r3, r2, r3
	strb	r3, [r7, #23]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #112]
	ldr	r2, [r7, #32]
	mul	r3, r2, r3
	negs	r3, r3
	ldr	r2, [r7, #24]
	add	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #112]
	cmp	r3, #0
	ble	.L277
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #104]
	subs	r3, r3, #1
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #112]
	mul	r3, r2, r3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	str	r3, [r7, #36]
.L277:
	ldr	r3, [r7, #36]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldrb	r3, [r7, #23]
	orrs	r3, r3, r2
	uxtb	r2, r3
	ldr	r3, [r7, #36]
	strb	r2, [r3]
.L275:
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Horizontal_Sweep_Span, .-Horizontal_Sweep_Span
	.section	.text.Horizontal_Sweep_Drop,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Horizontal_Sweep_Drop, %function
Horizontal_Sweep_Drop:
	@ args = 8, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #44
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r2, [r7, #4]
	str	r3, [r7]
	mov	r3, r1	@ movhi
	strh	r3, [r7, #10]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	subs	r2, r3, #1
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	negs	r3, r3
	ands	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	negs	r2, r3
	ldr	r3, [r7]
	ands	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	str	r3, [r7, #36]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	ble	.L279
	ldr	r3, [r7, #48]
	ldrh	r3, [r3, #12]
	and	r3, r3, #7
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #24]
	add	r2, r2, r3
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bne	.L280
	ldr	r3, [r7, #20]
	cmp	r3, #5
	bhi	.L298
	adr	r1, .L283
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L283:
	.word	.L282+1-.L283
	.word	.L284+1-.L283
	.word	.L298+1-.L283
	.word	.L298+1-.L283
	.word	.L285+1-.L283
	.word	.L284+1-.L283
.L282:
	ldr	r3, [r7, #24]
	str	r3, [r7, #36]
	b	.L286
.L285:
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	add	r3, r3, r2
	subs	r3, r3, #1
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	mov	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	negs	r3, r3
	ands	r3, r3, r2
	str	r3, [r7, #36]
	b	.L286
.L284:
	ldr	r3, [r7, #48]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bne	.L287
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	bgt	.L287
	ldr	r3, [r7, #48]
	ldrh	r3, [r3, #12]
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L278
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	subs	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	blt	.L278
.L287:
	ldr	r3, [r7, #52]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #48]
	cmp	r2, r3
	bne	.L289
	ldr	r3, [r7, #48]
	ldr	r2, [r3, #20]
	ldrsh	r3, [r7, #10]
	cmp	r2, r3
	bne	.L289
	ldr	r3, [r7, #48]
	ldrh	r3, [r3, #12]
	and	r3, r3, #32
	cmp	r3, #0
	beq	.L278
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	subs	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	blt	.L278
.L289:
	ldr	r3, [r7, #20]
	cmp	r3, #1
	bne	.L290
	ldr	r3, [r7, #24]
	str	r3, [r7, #36]
	b	.L299
.L290:
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	add	r3, r3, r2
	subs	r3, r3, #1
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	mov	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	negs	r3, r3
	ands	r3, r3, r2
	str	r3, [r7, #36]
.L299:
	nop
.L286:
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bge	.L292
	ldr	r3, [r7, #28]
	str	r3, [r7, #36]
	b	.L293
.L292:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r7, #36]
	asr	r3, r2, r3
	mov	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #104]
	cmp	r2, r3
	bcc	.L293
	ldr	r3, [r7, #24]
	str	r3, [r7, #36]
.L293:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bne	.L294
	ldr	r3, [r7, #24]
	b	.L295
.L294:
	ldr	r3, [r7, #28]
.L295:
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r7, #28]
	asr	r3, r2, r3
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #60]
	ldrsh	r3, [r7, #10]
	asrs	r3, r3, #3
	uxth	r3, r3
	sxth	r3, r3
	add	r3, r3, r2
	str	r3, [r7, #32]
	ldrh	r3, [r7, #10]
	and	r3, r3, #7
	movs	r2, #128
	asr	r3, r2, r3
	strb	r3, [r7, #19]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #112]
	ldr	r2, [r7, #28]
	mul	r3, r2, r3
	negs	r3, r3
	ldr	r2, [r7, #32]
	add	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #112]
	cmp	r3, #0
	ble	.L296
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #104]
	subs	r3, r3, #1
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #112]
	mul	r3, r2, r3
	ldr	r2, [r7, #32]
	add	r3, r3, r2
	str	r3, [r7, #32]
.L296:
	ldr	r3, [r7, #28]
	cmp	r3, #0
	blt	.L279
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #104]
	cmp	r2, r3
	bcs	.L279
	ldr	r3, [r7, #32]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldrb	r3, [r7, #19]
	ands	r3, r3, r2
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L279
	b	.L278
.L280:
	b	.L278
.L279:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r7, #36]
	asr	r3, r2, r3
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	blt	.L278
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #104]
	cmp	r2, r3
	bcs	.L278
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #60]
	ldrsh	r3, [r7, #10]
	asrs	r3, r3, #3
	uxth	r3, r3
	sxth	r3, r3
	add	r3, r3, r2
	str	r3, [r7, #32]
	ldrh	r3, [r7, #10]
	and	r3, r3, #7
	movs	r2, #128
	asr	r3, r2, r3
	strb	r3, [r7, #19]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #112]
	ldr	r2, [r7, #28]
	mul	r3, r2, r3
	negs	r3, r3
	ldr	r2, [r7, #32]
	add	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #112]
	cmp	r3, #0
	ble	.L297
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #104]
	subs	r3, r3, #1
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #112]
	mul	r3, r2, r3
	ldr	r2, [r7, #32]
	add	r3, r3, r2
	str	r3, [r7, #32]
.L297:
	ldr	r3, [r7, #32]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldrb	r3, [r7, #19]
	orrs	r3, r3, r2
	uxtb	r2, r3
	ldr	r3, [r7, #32]
	strb	r2, [r3]
	b	.L278
.L288:
.L298:
	nop
.L278:
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Horizontal_Sweep_Drop, .-Horizontal_Sweep_Drop
	.section	.text.Horizontal_Sweep_Step,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Horizontal_Sweep_Step, %function
Horizontal_Sweep_Step:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Horizontal_Sweep_Step, .-Horizontal_Sweep_Step
	.section	.text.Draw_Sweep,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Draw_Sweep, %function
Draw_Sweep:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #92
	add	r7, sp, #8
	str	r0, [r7, #4]
	add	r3, r7, #16
	mov	r0, r3
	bl	Init_Linked(PLT)
	add	r3, r7, #12
	mov	r0, r3
	bl	Init_Linked(PLT)
	add	r3, r7, #8
	mov	r0, r3
	bl	Init_Linked(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #92]
	str	r3, [r7, #72]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #76]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	asr	r3, r2, r3
	uxth	r3, r3
	strh	r3, [r7, #20]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #80]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	asr	r3, r2, r3
	uxth	r3, r3
	strh	r3, [r7, #22]	@ movhi
	b	.L302
.L305:
	ldr	r3, [r7, #72]
	ldr	r3, [r3, #4]
	str	r3, [r7, #48]
	ldr	r3, [r7, #72]
	ldr	r3, [r3, #20]
	strh	r3, [r7, #46]	@ movhi
	ldr	r3, [r7, #72]
	ldr	r3, [r3, #20]
	uxth	r2, r3
	ldr	r3, [r7, #72]
	ldr	r3, [r3, #16]
	uxth	r3, r3
	add	r3, r3, r2
	uxth	r3, r3
	subs	r3, r3, #1
	uxth	r3, r3
	strh	r3, [r7, #44]	@ movhi
	ldrh	r3, [r7, #22]
	ldrsh	r2, [r7, #46]
	sxth	r3, r3
	cmp	r2, r3
	bge	.L303
	ldrh	r3, [r7, #46]	@ movhi
	strh	r3, [r7, #22]	@ movhi
.L303:
	ldrh	r3, [r7, #20]
	ldrsh	r2, [r7, #44]
	sxth	r3, r3
	cmp	r2, r3
	ble	.L304
	ldrh	r3, [r7, #44]	@ movhi
	strh	r3, [r7, #20]	@ movhi
.L304:
	ldr	r3, [r7, #72]
	movs	r2, #0
	str	r2, [r3]
	add	r3, r7, #16
	mov	r0, r3
	ldr	r1, [r7, #72]
	bl	InsNew(PLT)
	ldr	r3, [r7, #48]
	str	r3, [r7, #72]
.L302:
	ldr	r3, [r7, #72]
	cmp	r3, #0
	bne	.L305
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	bne	.L306
	ldr	r3, [r7, #4]
	movs	r2, #20
	str	r2, [r3, #44]
	movs	r3, #1
	b	.L339
.L306:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	add	r1, r7, #22
	add	r2, r7, #20
	ldr	r0, [r7, #4]
	blx	r3
	ldr	r3, [r7, #16]
	str	r3, [r7, #72]
	b	.L308
.L309:
	ldr	r3, [r7, #72]
	ldr	r2, [r3, #20]
	ldrh	r3, [r7, #22]
	sxth	r3, r3
	subs	r2, r2, r3
	ldr	r3, [r7, #72]
	str	r2, [r3, #24]
	ldr	r3, [r7, #72]
	ldr	r3, [r3, #4]
	str	r3, [r7, #72]
.L308:
	ldr	r3, [r7, #72]
	cmp	r3, #0
	bne	.L309
	ldrh	r3, [r7, #22]	@ movhi
	strh	r3, [r7, #78]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #76]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	ble	.L310
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #32]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #30
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r2, [r3]
	ldrh	r3, [r7, #22]
	sxth	r3, r3
	cmp	r2, r3
	bne	.L310
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	subs	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #48]
	b	.L311
.L310:
	b	.L311
.L333:
	ldr	r3, [r7, #16]
	str	r3, [r7, #72]
	b	.L312
.L315:
	ldr	r3, [r7, #72]
	ldr	r3, [r3, #4]
	str	r3, [r7, #48]
	ldr	r3, [r7, #72]
	ldr	r2, [r3, #24]
	ldrsh	r3, [r7, #76]
	subs	r2, r2, r3
	ldr	r3, [r7, #72]
	str	r2, [r3, #24]
	ldr	r3, [r7, #72]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	bne	.L313
	add	r3, r7, #16
	mov	r0, r3
	ldr	r1, [r7, #72]
	bl	DelOld(PLT)
	ldr	r3, [r7, #72]
	ldrh	r3, [r3, #12]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L314
	add	r3, r7, #12
	mov	r0, r3
	ldr	r1, [r7, #72]
	bl	InsNew(PLT)
	b	.L313
.L314:
	add	r3, r7, #8
	mov	r0, r3
	ldr	r1, [r7, #72]
	bl	InsNew(PLT)
.L313:
	ldr	r3, [r7, #48]
	str	r3, [r7, #72]
.L312:
	ldr	r3, [r7, #72]
	cmp	r3, #0
	bne	.L315
	add	r3, r7, #12
	mov	r0, r3
	bl	Sort(PLT)
	add	r3, r7, #8
	mov	r0, r3
	bl	Sort(PLT)
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #32]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	subs	r0, r3, #1
	ldr	r2, [r7, #4]
	str	r0, [r2, #48]
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #30
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r3, [r3]
	strh	r3, [r7, #42]	@ movhi
	ldrh	r2, [r7, #42]
	ldrh	r3, [r7, #78]
	subs	r3, r2, r3
	uxth	r3, r3
	strh	r3, [r7, #76]	@ movhi
	b	.L316
.L326:
	movs	r3, #0
	strh	r3, [r7, #62]	@ movhi
	ldr	r3, [r7, #12]
	str	r3, [r7, #68]
	ldr	r3, [r7, #8]
	str	r3, [r7, #64]
	b	.L317
.L323:
	ldr	r3, [r7, #68]
	ldr	r3, [r3]
	str	r3, [r7, #56]
	ldr	r3, [r7, #64]
	ldr	r3, [r3]
	str	r3, [r7, #52]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	ble	.L318
	ldr	r3, [r7, #56]
	str	r3, [r7, #36]
	ldr	r3, [r7, #52]
	str	r3, [r7, #56]
	ldr	r3, [r7, #36]
	str	r3, [r7, #52]
.L318:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	negs	r2, r3
	ldr	r3, [r7, #56]
	ands	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	subs	r2, r3, #1
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	negs	r3, r3
	ands	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #56]
	subs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bgt	.L319
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #56]
	cmp	r2, r3
	beq	.L319
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	beq	.L319
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bgt	.L320
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #32]
	add	r2, r2, r3
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bne	.L319
.L320:
	ldr	r3, [r7, #68]
	ldrh	r3, [r3, #12]
	and	r3, r3, #7
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #2
	beq	.L321
	ldr	r3, [r7, #68]
	ldr	r2, [r7, #56]
	str	r2, [r3]
	ldr	r3, [r7, #64]
	ldr	r2, [r7, #52]
	str	r2, [r3]
	ldr	r3, [r7, #68]
	movs	r2, #1
	str	r2, [r3, #24]
	ldrh	r3, [r7, #62]
	adds	r3, r3, #1
	strh	r3, [r7, #62]	@ movhi
	b	.L322
.L321:
	b	.L322
.L319:
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #164]
	ldrsh	r3, [r7, #78]
	ldr	r2, [r7, #68]
	str	r2, [sp]
	ldr	r2, [r7, #64]
	str	r2, [sp, #4]
	ldr	r0, [r7, #4]
	mov	r1, r3
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #52]
	blx	r4
.L322:
	ldr	r3, [r7, #68]
	ldr	r3, [r3, #4]
	str	r3, [r7, #68]
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #4]
	str	r3, [r7, #64]
.L317:
	ldr	r3, [r7, #68]
	cmp	r3, #0
	bne	.L323
	ldrsh	r3, [r7, #62]
	cmp	r3, #0
	ble	.L324
	nop
.L325:
	ldr	r3, [r7, #12]
	str	r3, [r7, #68]
	ldr	r3, [r7, #8]
	str	r3, [r7, #64]
	b	.L336
.L324:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #172]
	ldr	r0, [r7, #4]
	blx	r3
	ldrh	r3, [r7, #78]
	adds	r3, r3, #1
	strh	r3, [r7, #78]	@ movhi
	ldrsh	r2, [r7, #78]
	ldrsh	r3, [r7, #42]
	cmp	r2, r3
	bge	.L316
	add	r3, r7, #12
	mov	r0, r3
	bl	Sort(PLT)
	add	r3, r7, #8
	mov	r0, r3
	bl	Sort(PLT)
.L316:
	ldrsh	r2, [r7, #78]
	ldrsh	r3, [r7, #42]
	cmp	r2, r3
	blt	.L326
	ldr	r3, [r7, #12]
	str	r3, [r7, #72]
	b	.L327
.L329:
	ldr	r3, [r7, #72]
	ldr	r3, [r3, #4]
	str	r3, [r7, #48]
	ldr	r3, [r7, #72]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	bne	.L328
	add	r3, r7, #12
	mov	r0, r3
	ldr	r1, [r7, #72]
	bl	DelOld(PLT)
.L328:
	ldr	r3, [r7, #48]
	str	r3, [r7, #72]
.L327:
	ldr	r3, [r7, #72]
	cmp	r3, #0
	bne	.L329
	ldr	r3, [r7, #8]
	str	r3, [r7, #72]
	b	.L330
.L332:
	ldr	r3, [r7, #72]
	ldr	r3, [r3, #4]
	str	r3, [r7, #48]
	ldr	r3, [r7, #72]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	bne	.L331
	add	r3, r7, #8
	mov	r0, r3
	ldr	r1, [r7, #72]
	bl	DelOld(PLT)
.L331:
	ldr	r3, [r7, #48]
	str	r3, [r7, #72]
.L330:
	ldr	r3, [r7, #72]
	cmp	r3, #0
	bne	.L332
.L311:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	bgt	.L333
	b	.L334
.L335:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #172]
	ldr	r0, [r7, #4]
	blx	r3
	ldrh	r3, [r7, #78]
	adds	r3, r3, #1
	strh	r3, [r7, #78]	@ movhi
.L334:
	ldrh	r3, [r7, #20]
	ldrsh	r2, [r7, #78]
	sxth	r3, r3
	cmp	r2, r3
	ble	.L335
	movs	r3, #0
	b	.L339
.L338:
	ldr	r3, [r7, #68]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L337
	ldr	r3, [r7, #68]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #168]
	ldr	r3, [r7, #68]
	ldr	r2, [r3]
	ldr	r3, [r7, #64]
	ldr	r3, [r3]
	ldrsh	r1, [r7, #78]
	ldr	r0, [r7, #68]
	str	r0, [sp]
	ldr	r0, [r7, #64]
	str	r0, [sp, #4]
	ldr	r0, [r7, #4]
	blx	r4
.L337:
	ldr	r3, [r7, #68]
	ldr	r3, [r3, #4]
	str	r3, [r7, #68]
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #4]
	str	r3, [r7, #64]
.L336:
	ldr	r3, [r7, #68]
	cmp	r3, #0
	bne	.L338
	b	.L324
.L339:
	mov	r0, r3
	adds	r7, r7, #84
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	Draw_Sweep, .-Draw_Sweep
	.section	.text.Render_Single_Pass,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Render_Single_Pass, %function
Render_Single_Pass:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	b	.L341
.L348:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1020]
	ldr	r2, [r7, #4]
	adds	r3, r3, #238
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldrh	r3, [r3, #6]
	sxth	r3, r3
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #4]
	mul	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #80]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1020]
	ldr	r2, [r7, #4]
	adds	r3, r3, #238
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldrh	r3, [r3, #4]
	sxth	r3, r3
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #4]
	mul	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #76]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #4]
	str	r2, [r3, #40]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #44]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	Convert_Glyph(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L342
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	cmp	r3, #98
	beq	.L343
	movs	r3, #1
	b	.L344
.L343:
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #44]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1020]
	ldr	r2, [r7, #4]
	adds	r3, r3, #238
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldrh	r3, [r3, #4]	@ movhi
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1020]
	ldr	r2, [r7, #4]
	adds	r3, r3, #238
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldrh	r3, [r3, #6]	@ movhi
	strh	r3, [r7, #12]	@ movhi
	ldrsh	r2, [r7, #14]
	ldrsh	r3, [r7, #12]
	add	r3, r3, r2
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	strh	r3, [r7, #10]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1020]
	cmp	r3, #6
	bgt	.L345
	ldrsh	r2, [r7, #10]
	ldrsh	r3, [r7, #14]
	cmp	r2, r3
	bge	.L346
.L345:
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #1020]
	ldr	r3, [r7, #4]
	movs	r2, #20
	str	r2, [r3, #44]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	b	.L344
.L346:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1020]
	adds	r3, r3, #1
	ldr	r2, [r7, #4]
	adds	r3, r3, #238
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldrh	r2, [r7, #10]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1020]
	adds	r3, r3, #1
	ldr	r2, [r7, #4]
	adds	r3, r3, #238
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldrh	r2, [r7, #12]	@ movhi
	strh	r2, [r3, #6]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1020]
	ldrh	r2, [r7, #10]
	subs	r2, r2, #1
	uxth	r2, r2
	uxth	r2, r2
	ldr	r1, [r7, #4]
	adds	r3, r3, #238
	lsls	r3, r3, #2
	add	r3, r3, r1
	strh	r2, [r3, #6]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1020]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #1020]
	b	.L341
.L342:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #92]
	cmp	r3, #0
	beq	.L347
	ldr	r0, [r7, #4]
	bl	Draw_Sweep(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L347
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	b	.L344
.L347:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1020]
	subs	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #1020]
.L341:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1020]
	cmp	r3, #0
	bge	.L348
	movs	r3, #0
.L344:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	Render_Single_Pass, .-Render_Single_Pass
	.section	.text.Render_Glyph,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Render_Glyph, %function
Render_Glyph:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #144]
	and	r3, r3, #256
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	Set_High_Precision(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #144]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L350
	ldr	r3, [r7, #4]
	movs	r2, #2
	strb	r2, [r3, #176]
	b	.L351
.L350:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #144]
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L352
	ldr	r3, [r7, #4]
	movs	r2, #4
	strb	r2, [r3, #176]
	b	.L353
.L352:
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #176]
.L353:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #144]
	and	r3, r3, #32
	cmp	r3, #0
	bne	.L351
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #176]	@ zero_extendqisi2
	adds	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3, #176]
.L351:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #144]
	and	r3, r3, #512
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3, #177]
	ldr	r3, [r7, #4]
	ldr	r2, .L357
.LPIC4:
	add	r2, pc
	str	r2, [r3, #160]
	ldr	r3, [r7, #4]
	ldr	r2, .L357+4
.LPIC5:
	add	r2, pc
	str	r2, [r3, #164]
	ldr	r3, [r7, #4]
	ldr	r2, .L357+8
.LPIC6:
	add	r2, pc
	str	r2, [r3, #168]
	ldr	r3, [r7, #4]
	ldr	r2, .L357+12
.LPIC7:
	add	r2, pc
	str	r2, [r3, #172]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #1020]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strh	r2, [r3, #956]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #104]
	uxth	r3, r3
	subs	r3, r3, #1
	uxth	r3, r3
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #958]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #108]
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #56]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #116]
	ldr	r3, [r7, #4]
	str	r2, [r3, #60]
	ldr	r0, [r7, #4]
	movs	r1, #0
	bl	Render_Single_Pass(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L354
	ldr	r3, [r7, #12]
	b	.L355
.L354:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #177]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L356
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #176]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L356
	ldr	r3, [r7, #4]
	ldr	r2, .L357+16
.LPIC8:
	add	r2, pc
	str	r2, [r3, #160]
	ldr	r3, [r7, #4]
	ldr	r2, .L357+20
.LPIC9:
	add	r2, pc
	str	r2, [r3, #164]
	ldr	r3, [r7, #4]
	ldr	r2, .L357+24
.LPIC10:
	add	r2, pc
	str	r2, [r3, #168]
	ldr	r3, [r7, #4]
	ldr	r2, .L357+28
.LPIC11:
	add	r2, pc
	str	r2, [r3, #172]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #1020]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strh	r2, [r3, #956]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #108]
	uxth	r3, r3
	subs	r3, r3, #1
	uxth	r3, r3
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #958]	@ movhi
	ldr	r0, [r7, #4]
	movs	r1, #1
	bl	Render_Single_Pass(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L356
	ldr	r3, [r7, #12]
	b	.L355
.L356:
	movs	r3, #0
.L355:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L358:
	.align	2
.L357:
	.word	Vertical_Sweep_Init-(.LPIC4+4)
	.word	Vertical_Sweep_Span-(.LPIC5+4)
	.word	Vertical_Sweep_Drop-(.LPIC6+4)
	.word	Vertical_Sweep_Step-(.LPIC7+4)
	.word	Horizontal_Sweep_Init-(.LPIC8+4)
	.word	Horizontal_Sweep_Span-(.LPIC9+4)
	.word	Horizontal_Sweep_Drop-(.LPIC10+4)
	.word	Horizontal_Sweep_Step-(.LPIC11+4)
	.size	Render_Glyph, .-Render_Glyph
	.section	.text.ft_black_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_black_init, %function
ft_black_init:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ft_black_init, .-ft_black_init
	.section	.text.ft_black_new,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_black_new, %function
ft_black_new:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3]
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	movs	r1, #4
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L361
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3]
	ldr	r0, [r7, #12]
	bl	ft_black_init(PLT)
	ldr	r3, [r7]
	ldr	r2, [r7, #12]
	str	r2, [r3]
.L361:
	ldr	r3, [r7, #8]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_black_new, .-ft_black_new
	.section	.text.ft_black_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_black_done, %function
ft_black_done:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #4]
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_black_done, .-ft_black_done
	.section	.text.ft_black_reset,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_black_reset, %function
ft_black_reset:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ft_black_reset, .-ft_black_reset
	.section	.text.ft_black_set_mode,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_black_set_mode, %function
ft_black_set_mode:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ft_black_set_mode, .-ft_black_set_mode
	.section	.text.ft_black_render,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_black_render, %function
ft_black_render:
	@ args = 0, pretend = 0, frame = 17424
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #17408
	sub	sp, sp, #16
	add	r7, sp, #0
	add	r3, r7, #16
	subs	r3, r3, #12
	str	r0, [r3]
	add	r3, r7, #16
	subs	r3, r3, #16
	str	r1, [r3]
	add	r3, r7, #16
	subs	r3, r3, #16
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	add	r0, r7, #17408
	add	r0, r0, #12
	str	r3, [r0]
	add	r3, r7, #16
	subs	r3, r3, #16
	ldr	r3, [r3]
	ldr	r3, [r3]
	add	r1, r7, #17408
	add	r1, r1, #8
	str	r3, [r1]
	add	r3, r7, #16
	subs	r3, r3, #12
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L368
	movs	r3, #96
	b	.L382
.L368:
	add	r2, r7, #17408
	add	r2, r2, #12
	ldr	r3, [r2]
	cmp	r3, #0
	bne	.L370
	movs	r3, #20
	b	.L382
.L370:
	add	r0, r7, #17408
	add	r0, r0, #12
	ldr	r3, [r0]
	ldrh	r3, [r3, #2]
	cmp	r3, #0
	beq	.L371
	add	r1, r7, #17408
	add	r1, r1, #12
	ldr	r3, [r1]
	ldrh	r3, [r3]
	sxth	r3, r3
	cmp	r3, #0
	bgt	.L372
.L371:
	movs	r3, #0
	b	.L382
.L372:
	add	r2, r7, #17408
	add	r2, r2, #12
	ldr	r3, [r2]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L373
	add	r0, r7, #17408
	add	r0, r0, #12
	ldr	r3, [r0]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L374
.L373:
	movs	r3, #20
	b	.L382
.L374:
	add	r1, r7, #17408
	add	r1, r1, #12
	ldr	r3, [r1]
	ldrh	r3, [r3, #2]
	sxth	r2, r3
	add	r0, r7, #17408
	add	r0, r0, #12
	ldr	r3, [r0]
	ldr	r1, [r3, #12]
	add	r0, r7, #17408
	add	r0, r0, #12
	ldr	r3, [r0]
	ldrh	r3, [r3]
	sxth	r3, r3
	add	r3, r3, #-2147483648
	subs	r3, r3, #1
	lsls	r3, r3, #1
	add	r3, r3, r1
	ldrh	r3, [r3]
	sxth	r3, r3
	adds	r3, r3, #1
	cmp	r2, r3
	beq	.L375
	movs	r3, #20
	b	.L382
.L375:
	add	r3, r7, #16
	subs	r3, r3, #16
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L376
	movs	r3, #19
	b	.L382
.L376:
	add	r3, r7, #16
	subs	r3, r3, #16
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L377
	movs	r3, #19
	b	.L382
.L377:
	add	r1, r7, #17408
	add	r1, r1, #8
	ldr	r3, [r1]
	cmp	r3, #0
	bne	.L378
	movs	r3, #20
	b	.L382
.L378:
	add	r2, r7, #17408
	add	r2, r2, #8
	ldr	r3, [r2]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L379
	add	r0, r7, #17408
	add	r0, r0, #8
	ldr	r3, [r0]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L380
.L379:
	movs	r3, #0
	b	.L382
.L380:
	add	r1, r7, #17408
	add	r1, r1, #8
	ldr	r3, [r1]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	bne	.L381
	movs	r3, #20
	b	.L382
.L381:
	add	r2, r7, #16384
	add	r2, r2, #8
	add	r0, r7, #17408
	add	r0, r0, #12
	ldr	r3, [r0]
	add	r4, r2, #128
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	add	r2, r7, #16384
	add	r2, r2, #8
	add	r1, r7, #17408
	add	r1, r1, #8
	ldr	r3, [r1]
	add	r4, r2, #104
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5, {r0, r1}
	stmia	r4, {r0, r1}
	add	r2, r7, #16384
	add	r2, r2, #8
	add	r3, r7, #16
	subs	r3, r3, #8
	str	r3, [r2, #28]
	add	r2, r7, #16384
	add	r2, r2, #8
	add	r3, r7, #16
	subs	r3, r3, #8
	add	r3, r3, #16384
	str	r3, [r2, #32]
	add	r3, r7, #16384
	add	r3, r3, #8
	mov	r0, r3
	bl	Render_Glyph(PLT)
	mov	r3, r0
.L382:
	mov	r0, r3
	add	r7, r7, #17408
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.size	ft_black_render, .-ft_black_render
	.global	ft_standard_raster
	.section	.data.rel.ro.local.ft_standard_raster,"aw",%progbits
	.align	2
	.type	ft_standard_raster, %object
	.size	ft_standard_raster, 24
ft_standard_raster:
	.word	1869968492
	.word	ft_black_new
	.word	ft_black_reset
	.word	ft_black_set_mode
	.word	ft_black_render
	.word	ft_black_done
	.section	.text.ft_raster1_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_raster1_init, %function
ft_raster1_init:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #56]
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #4]
	ldr	r0, [r2, #52]
	ldr	r2, [r7, #12]
	ldr	r1, [r2, #164]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #168]
	blx	r3
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_raster1_init, .-ft_raster1_init
	.section	.text.ft_raster1_set_mode,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_raster1_set_mode, %function
ft_raster1_set_mode:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #56]
	ldr	r3, [r3, #12]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #52]
	mov	r0, r2
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	blx	r3
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_raster1_set_mode, .-ft_raster1_set_mode
	.section	.text.ft_raster1_transform,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_raster1_transform, %function
ft_raster1_transform:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	cmp	r2, r3
	beq	.L388
	movs	r3, #6
	str	r3, [r7, #20]
	b	.L389
.L388:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L390
	ldr	r3, [r7, #8]
	adds	r3, r3, #108
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	FT_Outline_Transform(PLT)
.L390:
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L389
	ldr	r3, [r7, #8]
	add	r1, r3, #108
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	FT_Outline_Translate(PLT)
.L389:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_raster1_transform, .-ft_raster1_transform
	.section	.text.ft_raster1_get_cbox,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_raster1_get_cbox, %function
ft_raster1_get_cbox:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r0, [r7, #4]
	movs	r1, #0
	movs	r2, #16
	bl	memset(PLT)
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	cmp	r2, r3
	bne	.L392
	ldr	r3, [r7, #8]
	adds	r3, r3, #108
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	FT_Outline_Get_CBox(PLT)
.L392:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_raster1_get_cbox, .-ft_raster1_get_cbox
	.section	.text.ft_raster1_render,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_raster1_render, %function
ft_raster1_render:
	@ args = 0, pretend = 0, frame = 128
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #136
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	cmp	r2, r3
	beq	.L395
	movs	r3, #6
	str	r3, [r7, #100]
	b	.L396
.L395:
	ldr	r3, [r7, #4]
	cmp	r3, #2
	beq	.L397
	movs	r3, #19
	b	.L407
.L397:
	ldr	r3, [r7, #8]
	adds	r3, r3, #108
	str	r3, [r7, #116]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L399
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #116]
	mov	r1, r2
	mov	r2, r3
	bl	FT_Outline_Translate(PLT)
.L399:
	add	r3, r7, #68
	ldr	r0, [r7, #116]
	mov	r1, r3
	bl	FT_Outline_Get_CBox(PLT)
	ldr	r3, [r7, #68]
	adds	r3, r3, #32
	bic	r3, r3, #63
	str	r3, [r7, #84]
	ldr	r3, [r7, #72]
	adds	r3, r3, #32
	bic	r3, r3, #63
	str	r3, [r7, #88]
	ldr	r3, [r7, #76]
	adds	r3, r3, #32
	bic	r3, r3, #63
	str	r3, [r7, #92]
	ldr	r3, [r7, #80]
	adds	r3, r3, #32
	bic	r3, r3, #63
	str	r3, [r7, #96]
	ldr	r2, [r7, #92]
	ldr	r3, [r7, #84]
	subs	r3, r2, r3
	asrs	r3, r3, #6
	str	r3, [r7, #124]
	ldr	r3, [r7, #124]
	cmp	r3, #0
	bne	.L400
	ldr	r3, [r7, #68]
	bic	r3, r3, #63
	str	r3, [r7, #84]
	ldr	r3, [r7, #76]
	adds	r3, r3, #63
	bic	r3, r3, #63
	str	r3, [r7, #92]
	ldr	r2, [r7, #92]
	ldr	r3, [r7, #84]
	subs	r3, r2, r3
	asrs	r3, r3, #6
	str	r3, [r7, #124]
.L400:
	ldr	r2, [r7, #96]
	ldr	r3, [r7, #88]
	subs	r3, r2, r3
	asrs	r3, r3, #6
	str	r3, [r7, #120]
	ldr	r3, [r7, #120]
	cmp	r3, #0
	bne	.L401
	ldr	r3, [r7, #72]
	bic	r3, r3, #63
	str	r3, [r7, #88]
	ldr	r3, [r7, #80]
	adds	r3, r3, #63
	bic	r3, r3, #63
	str	r3, [r7, #96]
	ldr	r2, [r7, #96]
	ldr	r3, [r7, #88]
	subs	r3, r2, r3
	asrs	r3, r3, #6
	str	r3, [r7, #120]
.L401:
	ldr	r3, [r7, #124]
	cmp	r3, #65536
	bcs	.L402
	ldr	r3, [r7, #120]
	cmp	r3, #65536
	bcc	.L403
.L402:
	movs	r3, #6
	str	r3, [r7, #100]
	b	.L396
.L403:
	ldr	r3, [r7, #8]
	adds	r3, r3, #76
	str	r3, [r7, #112]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	str	r3, [r7, #108]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #156]
	ldr	r3, [r3, #4]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L404
	ldr	r3, [r7, #112]
	ldr	r3, [r3, #12]
	ldr	r0, [r7, #108]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #112]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #156]
	ldr	r2, [r7, #8]
	ldr	r2, [r2, #156]
	ldr	r2, [r2, #4]
	bic	r2, r2, #1
	str	r2, [r3, #4]
.L404:
	ldr	r3, [r7, #124]
	adds	r3, r3, #15
	lsrs	r3, r3, #4
	lsls	r3, r3, #1
	str	r3, [r7, #104]
	ldr	r3, [r7, #112]
	movs	r2, #1
	strb	r2, [r3, #18]
	ldr	r3, [r7, #112]
	ldr	r2, [r7, #124]
	str	r2, [r3, #4]
	ldr	r3, [r7, #112]
	ldr	r2, [r7, #120]
	str	r2, [r3]
	ldr	r2, [r7, #104]
	ldr	r3, [r7, #112]
	str	r2, [r3, #8]
	ldr	r2, [r7, #120]
	ldr	r3, [r7, #104]
	movs	r1, #0
	str	r1, [sp]
	add	r1, r7, #100
	str	r1, [sp, #4]
	ldr	r0, [r7, #108]
	mov	r1, r2
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #112]
	str	r2, [r3, #12]
	ldr	r3, [r7, #100]
	cmp	r3, #0
	beq	.L405
	b	.L396
.L405:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #156]
	ldr	r2, [r7, #8]
	ldr	r2, [r2, #156]
	ldr	r2, [r2, #4]
	orr	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r7, #84]
	negs	r2, r3
	ldr	r3, [r7, #88]
	negs	r3, r3
	ldr	r0, [r7, #116]
	mov	r1, r2
	mov	r2, r3
	bl	FT_Outline_Translate(PLT)
	ldr	r3, [r7, #112]
	str	r3, [r7, #20]
	ldr	r3, [r7, #116]
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #56]
	ldr	r2, [r7, #12]
	ldr	r1, [r2, #52]
	add	r2, r7, #20
	mov	r0, r1
	mov	r1, r2
	blx	r3
	mov	r3, r0
	str	r3, [r7, #100]
	ldr	r2, [r7, #84]
	ldr	r3, [r7, #88]
	ldr	r0, [r7, #116]
	mov	r1, r2
	mov	r2, r3
	bl	FT_Outline_Translate(PLT)
	ldr	r3, [r7, #100]
	cmp	r3, #0
	beq	.L406
	b	.L396
.L406:
	ldr	r2, [r7, #8]
	movw	r3, #29811
	movt	r3, 25193
	str	r3, [r2, #72]
	ldr	r3, [r7, #84]
	asrs	r2, r3, #6
	ldr	r3, [r7, #8]
	str	r2, [r3, #100]
	ldr	r3, [r7, #96]
	asrs	r2, r3, #6
	ldr	r3, [r7, #8]
	str	r2, [r3, #104]
.L396:
	ldr	r3, [r7, #100]
.L407:
	mov	r0, r3
	adds	r7, r7, #128
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_raster1_render, .-ft_raster1_render
	.global	ft_raster1_renderer_class
	.section	.rodata
	.align	2
.LC0:
	.ascii	"raster1\000"
	.section	.data.rel.ro.ft_raster1_renderer_class,"aw",%progbits
	.align	2
	.type	ft_raster1_renderer_class, %object
	.size	ft_raster1_renderer_class, 60
ft_raster1_renderer_class:
	.word	2
	.word	64
	.word	.LC0
	.word	65536
	.word	131072
	.word	0
	.word	ft_raster1_init
	.word	0
	.word	0
	.word	1869968492
	.word	ft_raster1_render
	.word	ft_raster1_transform
	.word	ft_raster1_get_cbox
	.word	ft_raster1_set_mode
	.word	ft_standard_raster
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
