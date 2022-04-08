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
	.file	"smooth.c"
	.section	.text.gray_init_cells,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	gray_init_cells, %function
gray_init_cells:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #1636]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #1640]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #1644]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #436]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #440]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #444]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #424]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #428]
	ldr	r3, [r7, #12]
	movs	r2, #1
	str	r2, [r3, #432]
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	gray_init_cells, .-gray_init_cells
	.section	.text.gray_compute_cbox,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	gray_compute_cbox, %function
gray_compute_cbox:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	add	r3, r3, #1360
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #4]
	str	r3, [r7, #28]
	ldr	r3, [r7, #24]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	lsls	r3, r3, #3
	ldr	r2, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #24]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	cmp	r3, #0
	bgt	.L3
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #404]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #404]
	ldr	r3, [r7, #4]
	str	r2, [r3, #400]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #412]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #412]
	ldr	r3, [r7, #4]
	str	r2, [r3, #408]
	b	.L2
.L3:
	ldr	r3, [r7, #28]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #404]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #404]
	ldr	r3, [r7, #4]
	str	r2, [r3, #400]
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	str	r2, [r3, #412]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #412]
	ldr	r3, [r7, #4]
	str	r2, [r3, #408]
	ldr	r3, [r7, #28]
	adds	r3, r3, #8
	str	r3, [r7, #28]
	b	.L5
.L10:
	ldr	r3, [r7, #28]
	ldr	r3, [r3]
	str	r3, [r7, #16]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #400]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	ble	.L6
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #16]
	str	r2, [r3, #400]
.L6:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #404]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bge	.L7
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #16]
	str	r2, [r3, #404]
.L7:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #408]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	ble	.L8
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #408]
.L8:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #412]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bge	.L9
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #412]
.L9:
	ldr	r3, [r7, #28]
	adds	r3, r3, #8
	str	r3, [r7, #28]
.L5:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcc	.L10
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #400]
	asrs	r2, r3, #6
	ldr	r3, [r7, #4]
	str	r2, [r3, #400]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #408]
	asrs	r2, r3, #6
	ldr	r3, [r7, #4]
	str	r2, [r3, #408]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #404]
	adds	r3, r3, #63
	asrs	r2, r3, #6
	ldr	r3, [r7, #4]
	str	r2, [r3, #404]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #412]
	adds	r3, r3, #63
	asrs	r2, r3, #6
	ldr	r3, [r7, #4]
	str	r2, [r3, #412]
.L2:
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	gray_compute_cbox, .-gray_compute_cbox
	.section	.text.gray_find_cell,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	gray_find_cell, %function
gray_find_cell:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #392]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #416]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bge	.L12
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #416]
	str	r3, [r7, #12]
.L12:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #1644]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #396]
	lsls	r3, r3, #2
	add	r3, r3, r2
	str	r3, [r7, #20]
.L16:
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L13
	ldr	r3, [r7, #16]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bgt	.L13
	ldr	r3, [r7, #16]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bne	.L14
	b	.L15
.L14:
	ldr	r3, [r7, #16]
	adds	r3, r3, #12
	str	r3, [r7, #20]
	b	.L16
.L13:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #444]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #440]
	cmp	r2, r3
	blt	.L17
	ldr	r3, [r7, #4]
	mov	r0, r3
	movs	r1, #1
	bl	longjmp(PLT)
.L17:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #436]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #444]
	adds	r0, r3, #1
	ldr	r1, [r7, #4]
	str	r0, [r1, #444]
	lsls	r3, r3, #4
	add	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #16]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #16]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #20]
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	str	r2, [r3, #12]
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #16]
	str	r2, [r3]
.L15:
	ldr	r3, [r7, #16]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	gray_find_cell, .-gray_find_cell
	.section	.text.gray_record_cell,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	gray_record_cell, %function
gray_record_cell:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #424]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #428]
	orrs	r3, r3, r2
	cmp	r3, #0
	beq	.L19
	ldr	r0, [r7, #4]
	bl	gray_find_cell(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #424]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #428]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #4]
.L19:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	gray_record_cell, .-gray_record_cell
	.section	.text.gray_set_cell,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	gray_set_cell, %function
gray_set_cell:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #408]
	ldr	r2, [r7, #4]
	subs	r3, r2, r3
	str	r3, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #404]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bge	.L22
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #404]
	str	r3, [r7, #8]
.L22:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #400]
	ldr	r2, [r7, #8]
	subs	r3, r2, r3
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bge	.L23
	mov	r3, #-1
	str	r3, [r7, #8]
.L23:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #392]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bne	.L24
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #396]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	beq	.L25
.L24:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #432]
	cmp	r3, #0
	bne	.L26
	ldr	r0, [r7, #12]
	bl	gray_record_cell(PLT)
.L26:
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #424]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #428]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #392]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #396]
.L25:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #420]
	cmp	r2, r3
	bcs	.L27
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #416]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bgt	.L28
.L27:
	movs	r3, #1
	b	.L29
.L28:
	movs	r3, #0
.L29:
	ldr	r2, [r7, #12]
	str	r3, [r2, #432]
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	gray_set_cell, .-gray_set_cell
	.section	.text.gray_start_cell,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	gray_start_cell, %function
gray_start_cell:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #404]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bge	.L31
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #404]
	str	r3, [r7, #8]
.L31:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #400]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	ble	.L32
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #400]
	subs	r3, r3, #1
	str	r3, [r7, #8]
.L32:
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #424]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #428]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #400]
	ldr	r2, [r7, #8]
	subs	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #392]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #408]
	ldr	r2, [r7, #4]
	subs	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #396]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #432]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	gray_set_cell(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	gray_start_cell, .-gray_start_cell
	.global	__aeabi_idiv
	.section	.text.gray_render_line,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	gray_render_line, %function
gray_render_line:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #72
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #448]
	asrs	r3, r3, #8
	str	r3, [r7, #60]
	ldr	r3, [r7, #8]
	asrs	r3, r3, #8
	str	r3, [r7, #48]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #452]
	asrs	r3, r3, #8
	str	r3, [r7, #56]
	ldr	r3, [r7, #4]
	asrs	r3, r3, #8
	str	r3, [r7, #44]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #412]
	ldr	r3, [r7, #56]
	cmp	r2, r3
	bgt	.L34
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #412]
	ldr	r3, [r7, #44]
	cmp	r2, r3
	ble	.L35
.L34:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #408]
	ldr	r3, [r7, #56]
	cmp	r2, r3
	ble	.L36
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #408]
	ldr	r3, [r7, #44]
	cmp	r2, r3
	bgt	.L35
.L36:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #448]
	ldr	r2, [r7, #8]
	subs	r3, r2, r3
	str	r3, [r7, #40]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #452]
	ldr	r2, [r7, #4]
	subs	r3, r2, r3
	str	r3, [r7, #36]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #448]
	ldr	r3, [r7, #60]
	lsls	r3, r3, #8
	subs	r3, r2, r3
	str	r3, [r7, #68]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #452]
	ldr	r3, [r7, #56]
	lsls	r3, r3, #8
	subs	r3, r2, r3
	str	r3, [r7, #64]
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #48]
	cmp	r2, r3
	bne	.L37
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #44]
	cmp	r2, r3
	bne	.L37
	b	.L38
.L37:
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L39
	ldr	r3, [r7, #48]
	str	r3, [r7, #60]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #60]
	ldr	r2, [r7, #56]
	bl	gray_set_cell(PLT)
	b	.L38
.L39:
	ldr	r3, [r7, #40]
	cmp	r3, #0
	bne	.L40
	ldr	r3, [r7, #36]
	cmp	r3, #0
	ble	.L41
.L42:
	mov	r3, #256
	str	r3, [r7, #32]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #428]
	ldr	r1, [r7, #32]
	ldr	r3, [r7, #64]
	subs	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #428]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #424]
	ldr	r1, [r7, #32]
	ldr	r3, [r7, #64]
	subs	r3, r1, r3
	ldr	r1, [r7, #68]
	mul	r3, r1, r3
	lsls	r3, r3, #1
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #424]
	movs	r3, #0
	str	r3, [r7, #64]
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	str	r3, [r7, #56]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #60]
	ldr	r2, [r7, #56]
	bl	gray_set_cell(PLT)
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #44]
	cmp	r2, r3
	bne	.L42
	b	.L38
.L41:
	movs	r3, #0
	str	r3, [r7, #32]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #428]
	ldr	r1, [r7, #32]
	ldr	r3, [r7, #64]
	subs	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #428]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #424]
	ldr	r1, [r7, #32]
	ldr	r3, [r7, #64]
	subs	r3, r1, r3
	ldr	r1, [r7, #68]
	mul	r3, r1, r3
	lsls	r3, r3, #1
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #424]
	mov	r3, #256
	str	r3, [r7, #64]
	ldr	r3, [r7, #56]
	subs	r3, r3, #1
	str	r3, [r7, #56]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #60]
	ldr	r2, [r7, #56]
	bl	gray_set_cell(PLT)
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #44]
	cmp	r2, r3
	bne	.L41
	b	.L38
.L40:
	ldr	r3, [r7, #40]
	ldr	r2, [r7, #64]
	mul	r2, r2, r3
	ldr	r3, [r7, #36]
	ldr	r1, [r7, #68]
	mul	r3, r1, r3
	subs	r3, r2, r3
	str	r3, [r7, #52]
	mvn	r0, #-16777216
	ldr	r1, [r7, #40]
	bl	__aeabi_idiv(PLT)
	mov	r3, r0
	str	r3, [r7, #28]
	mvn	r0, #-16777216
	ldr	r1, [r7, #36]
	bl	__aeabi_idiv(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
.L47:
	ldr	r3, [r7, #52]
	cmp	r3, #0
	bgt	.L43
	ldr	r2, [r7, #40]
	mov	r3, r2
	lsls	r3, r3, #24
	subs	r3, r3, r2
	lsls	r3, r3, #8
	mov	r2, r3
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	cmp	r3, #0
	ble	.L43
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #52]
	ldr	r2, [r7, #28]
	mul	r3, r2, r3
	lsrs	r3, r3, #24
	str	r3, [r7, #32]
	ldr	r2, [r7, #36]
	mov	r3, r2
	lsls	r3, r3, #24
	subs	r3, r3, r2
	lsls	r3, r3, #8
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #428]
	ldr	r1, [r7, #32]
	ldr	r3, [r7, #64]
	subs	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #428]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #424]
	ldr	r1, [r7, #32]
	ldr	r3, [r7, #64]
	subs	r3, r1, r3
	ldr	r0, [r7, #68]
	ldr	r1, [r7, #20]
	add	r1, r1, r0
	mul	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #424]
	mov	r3, #256
	str	r3, [r7, #68]
	ldr	r3, [r7, #32]
	str	r3, [r7, #64]
	ldr	r3, [r7, #60]
	subs	r3, r3, #1
	str	r3, [r7, #60]
	b	.L44
.L43:
	ldr	r2, [r7, #40]
	mov	r3, r2
	lsls	r3, r3, #24
	subs	r3, r3, r2
	lsls	r3, r3, #8
	mov	r2, r3
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	cmp	r3, #0
	bgt	.L45
	ldr	r2, [r7, #40]
	mov	r3, r2
	lsls	r3, r3, #24
	subs	r3, r3, r2
	lsls	r3, r3, #8
	mov	r2, r3
	ldr	r3, [r7, #52]
	add	r2, r2, r3
	ldr	r3, [r7, #36]
	lsls	r3, r3, #8
	add	r3, r3, r2
	cmp	r3, #0
	ble	.L45
	ldr	r2, [r7, #40]
	mov	r3, r2
	lsls	r3, r3, #24
	subs	r3, r3, r2
	lsls	r3, r3, #8
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #52]
	negs	r3, r3
	ldr	r2, [r7, #24]
	mul	r3, r2, r3
	lsrs	r3, r3, #24
	str	r3, [r7, #20]
	mov	r3, #256
	str	r3, [r7, #32]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #428]
	ldr	r1, [r7, #32]
	ldr	r3, [r7, #64]
	subs	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #428]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #424]
	ldr	r1, [r7, #32]
	ldr	r3, [r7, #64]
	subs	r3, r1, r3
	ldr	r0, [r7, #68]
	ldr	r1, [r7, #20]
	add	r1, r1, r0
	mul	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #424]
	ldr	r3, [r7, #20]
	str	r3, [r7, #68]
	movs	r3, #0
	str	r3, [r7, #64]
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	str	r3, [r7, #56]
	b	.L44
.L45:
	ldr	r2, [r7, #40]
	mov	r3, r2
	lsls	r3, r3, #24
	subs	r3, r3, r2
	lsls	r3, r3, #8
	mov	r2, r3
	ldr	r3, [r7, #52]
	add	r2, r2, r3
	ldr	r3, [r7, #36]
	lsls	r3, r3, #8
	add	r3, r3, r2
	cmp	r3, #0
	bgt	.L46
	ldr	r3, [r7, #36]
	lsls	r2, r3, #8
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	cmp	r3, #0
	blt	.L46
	ldr	r3, [r7, #36]
	lsls	r3, r3, #8
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #52]
	mov	r3, #256
	str	r3, [r7, #20]
	ldr	r3, [r7, #52]
	ldr	r2, [r7, #28]
	mul	r3, r2, r3
	lsrs	r3, r3, #24
	str	r3, [r7, #32]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #428]
	ldr	r1, [r7, #32]
	ldr	r3, [r7, #64]
	subs	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #428]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #424]
	ldr	r1, [r7, #32]
	ldr	r3, [r7, #64]
	subs	r3, r1, r3
	ldr	r0, [r7, #68]
	ldr	r1, [r7, #20]
	add	r1, r1, r0
	mul	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #424]
	movs	r3, #0
	str	r3, [r7, #68]
	ldr	r3, [r7, #32]
	str	r3, [r7, #64]
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
	b	.L44
.L46:
	ldr	r3, [r7, #24]
	negs	r3, r3
	ldr	r2, [r7, #52]
	mul	r3, r2, r3
	lsrs	r3, r3, #24
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #32]
	ldr	r3, [r7, #40]
	lsls	r3, r3, #8
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #428]
	ldr	r1, [r7, #32]
	ldr	r3, [r7, #64]
	subs	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #428]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #424]
	ldr	r1, [r7, #32]
	ldr	r3, [r7, #64]
	subs	r3, r1, r3
	ldr	r0, [r7, #68]
	ldr	r1, [r7, #20]
	add	r1, r1, r0
	mul	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #424]
	ldr	r3, [r7, #20]
	str	r3, [r7, #68]
	mov	r3, #256
	str	r3, [r7, #64]
	ldr	r3, [r7, #56]
	subs	r3, r3, #1
	str	r3, [r7, #56]
.L44:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #60]
	ldr	r2, [r7, #56]
	bl	gray_set_cell(PLT)
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #48]
	cmp	r2, r3
	bne	.L47
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #44]
	cmp	r2, r3
	bne	.L47
.L38:
	ldr	r3, [r7, #48]
	lsls	r3, r3, #8
	ldr	r2, [r7, #8]
	subs	r3, r2, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #44]
	lsls	r3, r3, #8
	ldr	r2, [r7, #4]
	subs	r3, r2, r3
	str	r3, [r7, #32]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #428]
	ldr	r1, [r7, #32]
	ldr	r3, [r7, #64]
	subs	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #428]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #424]
	ldr	r1, [r7, #32]
	ldr	r3, [r7, #64]
	subs	r3, r1, r3
	ldr	r0, [r7, #68]
	ldr	r1, [r7, #20]
	add	r1, r1, r0
	mul	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #424]
.L35:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #448]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #452]
	adds	r7, r7, #72
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	gray_render_line, .-gray_render_line
	.section	.text.gray_split_conic,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	gray_split_conic, %function
gray_split_conic:
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
	.size	gray_split_conic, .-gray_split_conic
	.section	.text.gray_render_conic,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	gray_render_conic, %function
gray_render_conic:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #56
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	add	r3, r3, #1232
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	add	r3, r3, #456
	str	r3, [r7, #32]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	lsls	r2, r3, #2
	ldr	r3, [r7, #32]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsls	r2, r3, #2
	ldr	r3, [r7, #32]
	str	r2, [r3, #4]
	ldr	r3, [r7, #32]
	adds	r3, r3, #8
	ldr	r2, [r7, #8]
	ldr	r2, [r2]
	lsls	r2, r2, #2
	str	r2, [r3]
	ldr	r3, [r7, #32]
	adds	r3, r3, #8
	ldr	r2, [r7, #8]
	ldr	r2, [r2, #4]
	lsls	r2, r2, #2
	str	r2, [r3, #4]
	ldr	r3, [r7, #32]
	adds	r3, r3, #16
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #448]
	str	r2, [r3]
	ldr	r3, [r7, #32]
	adds	r3, r3, #16
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #452]
	str	r2, [r3, #4]
	movs	r3, #0
	str	r3, [r7, #40]
	ldr	r3, [r7, #32]
	adds	r3, r3, #16
	ldr	r2, [r3]
	ldr	r3, [r7, #32]
	ldr	r3, [r3]
	adds	r1, r2, r3
	ldr	r3, [r7, #32]
	adds	r3, r3, #8
	ldr	r2, [r3]
	mov	r3, r2
	lsls	r3, r3, #31
	subs	r3, r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r1
	cmp	r3, #0
	bge	.L50
	ldr	r3, [r7, #32]
	adds	r3, r3, #8
	ldr	r3, [r3]
	lsls	r2, r3, #1
	ldr	r3, [r7, #32]
	adds	r3, r3, #16
	ldr	r1, [r3]
	ldr	r3, [r7, #32]
	ldr	r3, [r3]
	add	r3, r3, r1
	subs	r3, r2, r3
	b	.L51
.L50:
	ldr	r3, [r7, #32]
	adds	r3, r3, #16
	ldr	r2, [r3]
	ldr	r3, [r7, #32]
	ldr	r3, [r3]
	adds	r1, r2, r3
	ldr	r3, [r7, #32]
	adds	r3, r3, #8
	ldr	r2, [r3]
	mov	r3, r2
	lsls	r3, r3, #31
	subs	r3, r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r1
.L51:
	str	r3, [r7, #52]
	ldr	r3, [r7, #32]
	adds	r3, r3, #16
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #4]
	adds	r1, r2, r3
	ldr	r3, [r7, #32]
	adds	r3, r3, #8
	ldr	r2, [r3, #4]
	mov	r3, r2
	lsls	r3, r3, #31
	subs	r3, r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r1
	cmp	r3, #0
	bge	.L52
	ldr	r3, [r7, #32]
	adds	r3, r3, #8
	ldr	r3, [r3, #4]
	lsls	r2, r3, #1
	ldr	r3, [r7, #32]
	adds	r3, r3, #16
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #4]
	add	r3, r3, r1
	subs	r3, r2, r3
	b	.L53
.L52:
	ldr	r3, [r7, #32]
	adds	r3, r3, #16
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #4]
	adds	r1, r2, r3
	ldr	r3, [r7, #32]
	adds	r3, r3, #8
	ldr	r2, [r3, #4]
	mov	r3, r2
	lsls	r3, r3, #31
	subs	r3, r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r1
.L53:
	str	r3, [r7, #24]
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bge	.L54
	ldr	r3, [r7, #24]
	str	r3, [r7, #52]
.L54:
	ldr	r3, [r7, #52]
	cmp	r3, #63
	bgt	.L55
	b	.L56
.L55:
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #4]
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	str	r3, [r7, #48]
	ldr	r3, [r7, #32]
	adds	r3, r3, #8
	ldr	r3, [r3, #4]
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #48]
	cmp	r2, r3
	bge	.L57
	ldr	r3, [r7, #20]
	str	r3, [r7, #48]
.L57:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #44]
	cmp	r2, r3
	ble	.L58
	ldr	r3, [r7, #20]
	str	r3, [r7, #44]
.L58:
	ldr	r3, [r7, #32]
	adds	r3, r3, #16
	ldr	r3, [r3, #4]
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #48]
	cmp	r2, r3
	bge	.L59
	ldr	r3, [r7, #20]
	str	r3, [r7, #48]
.L59:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #44]
	cmp	r2, r3
	ble	.L60
	ldr	r3, [r7, #20]
	str	r3, [r7, #44]
.L60:
	ldr	r3, [r7, #48]
	asrs	r2, r3, #8
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #412]
	cmp	r2, r3
	bge	.L56
	ldr	r3, [r7, #44]
	asrs	r2, r3, #8
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #408]
	cmp	r2, r3
	blt	.L56
	movs	r3, #0
	str	r3, [r7, #36]
.L61:
	ldr	r3, [r7, #52]
	asrs	r3, r3, #2
	str	r3, [r7, #52]
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
	ldr	r3, [r7, #52]
	cmp	r3, #64
	bgt	.L61
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #36]
	str	r2, [r3]
.L63:
	ldr	r3, [r7, #40]
	lsls	r3, r3, #2
	ldr	r2, [r7, #28]
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	ble	.L56
	ldr	r0, [r7, #32]
	bl	gray_split_conic(PLT)
	ldr	r3, [r7, #32]
	adds	r3, r3, #16
	str	r3, [r7, #32]
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	lsls	r3, r3, #2
	ldr	r2, [r7, #28]
	add	r2, r2, r3
	ldr	r3, [r7, #40]
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r1, [r7, #28]
	add	r3, r3, r1
	ldr	r1, [r7, #36]
	subs	r1, r1, #1
	str	r1, [r3]
	ldr	r3, [r3]
	str	r3, [r2]
	b	.L62
.L56:
	ldr	r3, [r7, #32]
	ldr	r2, [r3]
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	bl	gray_render_line(PLT)
	ldr	r3, [r7, #40]
	subs	r3, r3, #1
	str	r3, [r7, #40]
	ldr	r3, [r7, #32]
	subs	r3, r3, #16
	str	r3, [r7, #32]
.L62:
	ldr	r3, [r7, #40]
	cmp	r3, #0
	bge	.L63
	adds	r7, r7, #56
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	gray_render_conic, .-gray_render_conic
	.section	.text.gray_split_cubic,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	gray_split_cubic, %function
gray_split_cubic:
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
	add	r2, r3, #8
	ldr	r3, [r7, #4]
	ldr	r1, [r3]
	ldr	r3, [r7, #20]
	add	r3, r3, r1
	lsrs	r1, r3, #31
	add	r3, r3, r1
	asrs	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	str	r3, [r2]
	ldr	r3, [r7, #4]
	add	r2, r3, #40
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	ldr	r1, [r3]
	ldr	r3, [r7, #16]
	add	r3, r3, r1
	lsrs	r1, r3, #31
	add	r3, r3, r1
	asrs	r3, r3, #1
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	str	r3, [r2]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	add	r3, r3, r2
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	add	r2, r3, #16
	ldr	r1, [r7, #12]
	ldr	r3, [r7, #20]
	add	r3, r3, r1
	lsrs	r1, r3, #31
	add	r3, r3, r1
	asrs	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	str	r3, [r2]
	ldr	r3, [r7, #4]
	add	r2, r3, #32
	ldr	r1, [r7, #8]
	ldr	r3, [r7, #20]
	add	r3, r3, r1
	lsrs	r1, r3, #31
	add	r3, r3, r1
	asrs	r3, r3, #1
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	str	r3, [r2]
	ldr	r3, [r7, #4]
	add	r2, r3, #24
	ldr	r1, [r7, #12]
	ldr	r3, [r7, #8]
	add	r3, r3, r1
	lsrs	r1, r3, #31
	add	r3, r3, r1
	asrs	r3, r3, #1
	str	r3, [r2]
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
	add	r2, r3, #8
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #20]
	add	r3, r3, r1
	lsrs	r1, r3, #31
	add	r3, r3, r1
	asrs	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	str	r3, [r2, #4]
	ldr	r3, [r7, #4]
	add	r2, r3, #40
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #16]
	add	r3, r3, r1
	lsrs	r1, r3, #31
	add	r3, r3, r1
	asrs	r3, r3, #1
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	str	r3, [r2, #4]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	add	r3, r3, r2
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	add	r2, r3, #16
	ldr	r1, [r7, #12]
	ldr	r3, [r7, #20]
	add	r3, r3, r1
	lsrs	r1, r3, #31
	add	r3, r3, r1
	asrs	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	str	r3, [r2, #4]
	ldr	r3, [r7, #4]
	add	r2, r3, #32
	ldr	r1, [r7, #8]
	ldr	r3, [r7, #20]
	add	r3, r3, r1
	lsrs	r1, r3, #31
	add	r3, r3, r1
	asrs	r3, r3, #1
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	str	r3, [r2, #4]
	ldr	r3, [r7, #4]
	add	r2, r3, #24
	ldr	r1, [r7, #12]
	ldr	r3, [r7, #8]
	add	r3, r3, r1
	lsrs	r1, r3, #31
	add	r3, r3, r1
	asrs	r3, r3, #1
	str	r3, [r2, #4]
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	gray_split_cubic, .-gray_split_cubic
	.section	.text.gray_render_cubic,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	gray_render_cubic, %function
gray_render_cubic:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #80
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	add	r3, r3, #456
	str	r3, [r7, #76]
	ldr	r3, [r7]
	ldr	r3, [r3]
	lsls	r2, r3, #2
	ldr	r3, [r7, #76]
	str	r2, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	lsls	r2, r3, #2
	ldr	r3, [r7, #76]
	str	r2, [r3, #4]
	ldr	r3, [r7, #76]
	adds	r3, r3, #8
	ldr	r2, [r7, #4]
	ldr	r2, [r2]
	lsls	r2, r2, #2
	str	r2, [r3]
	ldr	r3, [r7, #76]
	adds	r3, r3, #8
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #4]
	lsls	r2, r2, #2
	str	r2, [r3, #4]
	ldr	r3, [r7, #76]
	adds	r3, r3, #16
	ldr	r2, [r7, #8]
	ldr	r2, [r2]
	lsls	r2, r2, #2
	str	r2, [r3]
	ldr	r3, [r7, #76]
	adds	r3, r3, #16
	ldr	r2, [r7, #8]
	ldr	r2, [r2, #4]
	lsls	r2, r2, #2
	str	r2, [r3, #4]
	ldr	r3, [r7, #76]
	adds	r3, r3, #24
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #448]
	str	r2, [r3]
	ldr	r3, [r7, #76]
	adds	r3, r3, #24
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #452]
	str	r2, [r3, #4]
	ldr	r3, [r7, #76]
	ldr	r3, [r3, #4]
	str	r3, [r7, #68]
	ldr	r3, [r7, #68]
	str	r3, [r7, #72]
	ldr	r3, [r7, #76]
	adds	r3, r3, #8
	ldr	r3, [r3, #4]
	str	r3, [r7, #64]
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #72]
	cmp	r2, r3
	bge	.L66
	ldr	r3, [r7, #64]
	str	r3, [r7, #72]
.L66:
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #68]
	cmp	r2, r3
	ble	.L67
	ldr	r3, [r7, #64]
	str	r3, [r7, #68]
.L67:
	ldr	r3, [r7, #76]
	adds	r3, r3, #16
	ldr	r3, [r3, #4]
	str	r3, [r7, #64]
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #72]
	cmp	r2, r3
	bge	.L68
	ldr	r3, [r7, #64]
	str	r3, [r7, #72]
.L68:
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #68]
	cmp	r2, r3
	ble	.L69
	ldr	r3, [r7, #64]
	str	r3, [r7, #68]
.L69:
	ldr	r3, [r7, #76]
	adds	r3, r3, #24
	ldr	r3, [r3, #4]
	str	r3, [r7, #64]
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #72]
	cmp	r2, r3
	bge	.L70
	ldr	r3, [r7, #64]
	str	r3, [r7, #72]
.L70:
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #68]
	cmp	r2, r3
	ble	.L71
	ldr	r3, [r7, #64]
	str	r3, [r7, #68]
.L71:
	ldr	r3, [r7, #72]
	asrs	r2, r3, #8
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #412]
	cmp	r2, r3
	bge	.L72
	ldr	r3, [r7, #68]
	asrs	r2, r3, #8
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #408]
	cmp	r2, r3
	blt	.L72
.L82:
	ldr	r3, [r7, #76]
	adds	r3, r3, #24
	ldr	r2, [r3]
	ldr	r3, [r7, #76]
	ldr	r3, [r3]
	subs	r3, r2, r3
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	str	r3, [r7, #56]
	ldr	r3, [r7, #76]
	adds	r3, r3, #24
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #76]
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	str	r3, [r7, #52]
	ldr	r3, [r7, #52]
	str	r3, [r7, #48]
	ldr	r3, [r7, #60]
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	str	r3, [r7, #60]
	ldr	r3, [r7, #52]
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	str	r3, [r7, #52]
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	ble	.L73
	ldr	r2, [r7, #52]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	asrs	r2, r3, #3
	ldr	r3, [r7, #60]
	add	r3, r3, r2
	b	.L74
.L73:
	ldr	r2, [r7, #60]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	asrs	r2, r3, #3
	ldr	r3, [r7, #52]
	add	r3, r3, r2
.L74:
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #32768
	blt	.L75
	b	.L76
.L75:
	ldr	r3, [r7, #44]
	movs	r2, #42
	mul	r3, r2, r3
	str	r3, [r7, #40]
	ldr	r3, [r7, #76]
	adds	r3, r3, #8
	ldr	r2, [r3]
	ldr	r3, [r7, #76]
	ldr	r3, [r3]
	subs	r3, r2, r3
	str	r3, [r7, #36]
	ldr	r3, [r7, #76]
	adds	r3, r3, #8
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #76]
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	str	r3, [r7, #32]
	ldr	r3, [r7, #48]
	ldr	r2, [r7, #36]
	mul	r2, r2, r3
	ldr	r3, [r7, #56]
	ldr	r1, [r7, #32]
	mul	r3, r1, r3
	subs	r3, r2, r3
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	str	r3, [r7, #28]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	ble	.L77
	b	.L76
.L77:
	ldr	r3, [r7, #76]
	adds	r3, r3, #16
	ldr	r2, [r3]
	ldr	r3, [r7, #76]
	ldr	r3, [r3]
	subs	r3, r2, r3
	str	r3, [r7, #24]
	ldr	r3, [r7, #76]
	adds	r3, r3, #16
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #76]
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #48]
	ldr	r2, [r7, #24]
	mul	r2, r2, r3
	ldr	r3, [r7, #56]
	ldr	r1, [r7, #20]
	mul	r3, r1, r3
	subs	r3, r2, r3
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	str	r3, [r7, #28]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	ble	.L78
	b	.L76
.L78:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #56]
	subs	r3, r2, r3
	ldr	r2, [r7, #36]
	mul	r2, r2, r3
	ldr	r1, [r7, #32]
	ldr	r3, [r7, #48]
	subs	r3, r1, r3
	ldr	r1, [r7, #32]
	mul	r3, r1, r3
	add	r3, r3, r2
	cmp	r3, #0
	bgt	.L76
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #56]
	subs	r3, r2, r3
	ldr	r2, [r7, #24]
	mul	r2, r2, r3
	ldr	r1, [r7, #20]
	ldr	r3, [r7, #48]
	subs	r3, r1, r3
	ldr	r1, [r7, #20]
	mul	r3, r1, r3
	add	r3, r3, r2
	cmp	r3, #0
	bgt	.L76
	b	.L72
.L76:
	ldr	r0, [r7, #76]
	bl	gray_split_cubic(PLT)
	ldr	r3, [r7, #76]
	adds	r3, r3, #24
	str	r3, [r7, #76]
	nop
	b	.L82
.L72:
	ldr	r3, [r7, #76]
	ldr	r2, [r3]
	ldr	r3, [r7, #76]
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	bl	gray_render_line(PLT)
	ldr	r3, [r7, #12]
	add	r2, r3, #456
	ldr	r3, [r7, #76]
	cmp	r2, r3
	bne	.L80
	b	.L83
.L80:
	ldr	r3, [r7, #76]
	subs	r3, r3, #24
	str	r3, [r7, #76]
	b	.L82
.L83:
	adds	r7, r7, #80
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	gray_render_cubic, .-gray_render_cubic
	.section	.text.gray_move_to,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	gray_move_to, %function
gray_move_to:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3, #432]
	cmp	r3, #0
	bne	.L85
	ldr	r0, [r7]
	bl	gray_record_cell(PLT)
.L85:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	lsls	r3, r3, #2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #2
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	asrs	r2, r3, #8
	ldr	r3, [r7, #8]
	asrs	r3, r3, #8
	ldr	r0, [r7]
	mov	r1, r2
	mov	r2, r3
	bl	gray_start_cell(PLT)
	ldr	r3, [r7]
	ldr	r2, [r7, #12]
	str	r2, [r3, #448]
	ldr	r3, [r7]
	ldr	r2, [r7, #8]
	str	r2, [r3, #452]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	gray_move_to, .-gray_move_to
	.section	.text.gray_line_to,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	gray_line_to, %function
gray_line_to:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	lsls	r2, r3, #2
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #2
	ldr	r0, [r7]
	mov	r1, r2
	mov	r2, r3
	bl	gray_render_line(PLT)
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	gray_line_to, .-gray_line_to
	.section	.text.gray_conic_to,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	gray_conic_to, %function
gray_conic_to:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #8]
	bl	gray_render_conic(PLT)
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	gray_conic_to, .-gray_conic_to
	.section	.text.gray_cubic_to,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	gray_cubic_to, %function
gray_cubic_to:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r0, [r7]
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	bl	gray_render_cubic(PLT)
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	gray_cubic_to, .-gray_cubic_to
	.section	.text.gray_render_span,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	gray_render_span, %function
gray_render_span:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7]
	addw	r3, r3, #1380
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #8]
	ldr	r1, [r7, #12]
	mul	r3, r1, r3
	negs	r3, r3
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	blt	.L94
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	subs	r3, r3, #1
	ldr	r2, [r7, #20]
	ldr	r2, [r2, #8]
	mul	r3, r2, r3
	ldr	r2, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #28]
	b	.L95
.L94:
	b	.L95
.L106:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #4]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L96
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #2]
	cmp	r3, #7
	bls	.L97
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]
	sxth	r3, r3
	ldr	r2, [r7, #28]
	adds	r1, r2, r3
	ldrb	r2, [r7, #19]	@ zero_extendqisi2
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #2]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	memset(PLT)
	b	.L96
.L97:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]
	sxth	r3, r3
	ldr	r2, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #2]
	subs	r3, r3, #1
	cmp	r3, #6
	bhi	.L96
	adr	r1, .L99
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L99:
	.word	.L98+1-.L99
	.word	.L100+1-.L99
	.word	.L101+1-.L99
	.word	.L102+1-.L99
	.word	.L103+1-.L99
	.word	.L104+1-.L99
	.word	.L105+1-.L99
.L105:
	ldr	r3, [r7, #24]
	adds	r2, r3, #1
	str	r2, [r7, #24]
	ldrb	r2, [r7, #19]
	strb	r2, [r3]
.L104:
	ldr	r3, [r7, #24]
	adds	r2, r3, #1
	str	r2, [r7, #24]
	ldrb	r2, [r7, #19]
	strb	r2, [r3]
.L103:
	ldr	r3, [r7, #24]
	adds	r2, r3, #1
	str	r2, [r7, #24]
	ldrb	r2, [r7, #19]
	strb	r2, [r3]
.L102:
	ldr	r3, [r7, #24]
	adds	r2, r3, #1
	str	r2, [r7, #24]
	ldrb	r2, [r7, #19]
	strb	r2, [r3]
.L101:
	ldr	r3, [r7, #24]
	adds	r2, r3, #1
	str	r2, [r7, #24]
	ldrb	r2, [r7, #19]
	strb	r2, [r3]
.L100:
	ldr	r3, [r7, #24]
	adds	r2, r3, #1
	str	r2, [r7, #24]
	ldrb	r2, [r7, #19]
	strb	r2, [r3]
.L98:
	ldr	r3, [r7, #24]
	ldrb	r2, [r7, #19]
	strb	r2, [r3]
.L96:
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	adds	r3, r3, #6
	str	r3, [r7, #4]
.L95:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bgt	.L106
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	gray_render_span, .-gray_render_span
	.section	.text.gray_hline,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	gray_hline, %function
gray_hline:
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7]
	asrs	r3, r3, #9
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bge	.L108
	ldr	r3, [r7, #28]
	negs	r3, r3
	str	r3, [r7, #28]
.L108:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #1376]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L109
	ldr	r3, [r7, #28]
	ubfx	r3, r3, #0, #9
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #256
	ble	.L110
	ldr	r3, [r7, #28]
	rsb	r3, r3, #512
	str	r3, [r7, #28]
	b	.L112
.L110:
	ldr	r3, [r7, #28]
	cmp	r3, #256
	bne	.L112
	movs	r3, #255
	str	r3, [r7, #28]
	b	.L112
.L109:
	ldr	r3, [r7, #28]
	cmp	r3, #255
	ble	.L112
	movs	r3, #255
	str	r3, [r7, #28]
.L112:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #408]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	str	r3, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #400]
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r2, [r7, #8]
	movw	r3, #32766
	cmp	r2, r3
	ble	.L113
	movw	r3, #32767
	str	r3, [r7, #8]
.L113:
	ldr	r2, [r7, #4]
	mvn	r3, #-2147483648
	cmp	r2, r3
	bne	.L114
	mvn	r3, #-2147483648
	str	r3, [r7, #4]
.L114:
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L107
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #1612]
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #1
	add	r3, r3, #1416
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	adds	r3, r3, #4
	subs	r3, r3, #6
	str	r3, [r7, #24]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	ble	.L116
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #1624]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bne	.L116
	ldr	r3, [r7, #24]
	ldrh	r3, [r3]
	sxth	r2, r3
	ldr	r3, [r7, #24]
	ldrh	r3, [r3, #2]
	add	r2, r2, r3
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bne	.L116
	ldr	r3, [r7, #24]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bne	.L116
	ldr	r3, [r7, #24]
	ldrh	r2, [r3, #2]
	ldr	r3, [r7, #48]
	uxth	r3, r3
	add	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7, #24]
	strh	r2, [r3, #2]	@ movhi
	b	.L107
.L116:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #1624]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bne	.L117
	ldr	r3, [r7, #20]
	cmp	r3, #31
	ble	.L118
.L117:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #1616]
	cmp	r3, #0
	beq	.L119
	ldr	r3, [r7, #20]
	cmp	r3, #0
	ble	.L119
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #1616]
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #1624]
	ldr	r3, [r7, #12]
	addw	r2, r3, #1420
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #1620]
	mov	r0, r1
	ldr	r1, [r7, #20]
	blx	r4
.L119:
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #1612]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #1624]
	ldr	r3, [r7, #12]
	addw	r3, r3, #1420
	str	r3, [r7, #24]
	b	.L120
.L118:
	ldr	r3, [r7, #24]
	adds	r3, r3, #6
	str	r3, [r7, #24]
.L120:
	ldr	r3, [r7, #8]
	uxth	r2, r3
	ldr	r3, [r7, #24]
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #48]
	uxth	r2, r3
	ldr	r3, [r7, #24]
	strh	r2, [r3, #2]	@ movhi
	ldr	r3, [r7, #28]
	uxtb	r2, r3
	ldr	r3, [r7, #24]
	strb	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #1612]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #1612]
.L107:
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	gray_hline, .-gray_hline
	.section	.text.gray_sweep,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	gray_sweep, %function
gray_sweep:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #44
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #444]
	cmp	r3, #0
	bne	.L122
	b	.L121
.L122:
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #1612]
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L124
.L130:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #1644]
	ldr	r3, [r7, #28]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L125
.L128:
	ldr	r3, [r7, #24]
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	ble	.L126
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L126
	ldr	r3, [r7, #20]
	lsls	r3, r3, #9
	ldr	r2, [r7, #24]
	ldr	r1, [r2]
	ldr	r2, [r7, #16]
	subs	r2, r1, r2
	str	r2, [sp]
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #16]
	ldr	r2, [r7, #28]
	bl	gray_hline(PLT)
.L126:
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	lsls	r2, r3, #9
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #8]
	subs	r3, r2, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L127
	ldr	r3, [r7, #24]
	ldr	r3, [r3]
	cmp	r3, #0
	blt	.L127
	ldr	r3, [r7, #24]
	ldr	r3, [r3]
	movs	r2, #1
	str	r2, [sp]
	ldr	r0, [r7, #4]
	mov	r1, r3
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #12]
	bl	gray_hline(PLT)
.L127:
	ldr	r3, [r7, #24]
	ldr	r3, [r3]
	adds	r3, r3, #1
	str	r3, [r7, #16]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #12]
	str	r3, [r7, #24]
.L125:
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L128
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L129
	ldr	r3, [r7, #20]
	lsls	r3, r3, #9
	ldr	r2, [r7, #4]
	ldr	r1, [r2, #416]
	ldr	r2, [r7, #16]
	subs	r2, r1, r2
	str	r2, [sp]
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #16]
	ldr	r2, [r7, #28]
	bl	gray_hline(PLT)
.L129:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L124:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #1648]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bgt	.L130
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1616]
	cmp	r3, #0
	beq	.L121
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1612]
	cmp	r3, #0
	ble	.L121
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #1616]
	ldr	r3, [r7, #4]
	ldr	r0, [r3, #1624]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #1612]
	ldr	r3, [r7, #4]
	addw	r2, r3, #1420
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1620]
	blx	r4
.L121:
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	gray_sweep, .-gray_sweep
	.section	.data.rel.ro.local.func_interface,"aw",%progbits
	.align	2
	.type	func_interface, %object
	.size	func_interface, 24
func_interface:
	.word	gray_move_to
	.word	gray_line_to
	.word	gray_conic_to
	.word	gray_cubic_to
	.word	0
	.word	0
	.section	.text.gray_convert_glyph_inner,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	gray_convert_glyph_inner, %function
gray_convert_glyph_inner:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_setjmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L132
	ldr	r3, [r7, #4]
	add	r3, r3, #1360
	mov	r0, r3
	ldr	r3, .L136
.LPIC0:
	add	r3, pc
	mov	r1, r3
	ldr	r2, [r7, #4]
	bl	FT_Outline_Decompose(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #432]
	cmp	r3, #0
	bne	.L134
	ldr	r0, [r7, #4]
	bl	gray_record_cell(PLT)
	b	.L134
.L132:
	movs	r3, #64
	str	r3, [r7, #12]
.L134:
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L137:
	.align	2
.L136:
	.word	func_interface-(.LPIC0+4)
	.size	gray_convert_glyph_inner, .-gray_convert_glyph_inner
	.section	.text.gray_convert_glyph,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	gray_convert_glyph, %function
gray_convert_glyph:
	@ args = 0, pretend = 0, frame = 392
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #392
	add	r7, sp, #0
	adds	r3, r7, #4
	str	r0, [r3]
	adds	r3, r7, #4
	ldr	r0, [r3]
	bl	gray_compute_cbox(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	addw	r3, r3, #1404
	str	r3, [r7, #380]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r2, [r3, #404]
	ldr	r3, [r7, #380]
	ldr	r3, [r3]
	cmp	r2, r3
	ble	.L139
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r2, [r3, #400]
	ldr	r3, [r7, #380]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	bge	.L139
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r2, [r3, #412]
	ldr	r3, [r7, #380]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	ble	.L139
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r2, [r3, #408]
	ldr	r3, [r7, #380]
	ldr	r3, [r3, #12]
	cmp	r2, r3
	blt	.L140
.L139:
	movs	r3, #0
	b	.L164
.L140:
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r2, [r3, #400]
	ldr	r3, [r7, #380]
	ldr	r3, [r3]
	cmp	r2, r3
	bge	.L142
	ldr	r3, [r7, #380]
	ldr	r2, [r3]
	adds	r3, r7, #4
	ldr	r3, [r3]
	str	r2, [r3, #400]
.L142:
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r2, [r3, #408]
	ldr	r3, [r7, #380]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bge	.L143
	ldr	r3, [r7, #380]
	ldr	r2, [r3, #4]
	adds	r3, r7, #4
	ldr	r3, [r3]
	str	r2, [r3, #408]
.L143:
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r2, [r3, #404]
	ldr	r3, [r7, #380]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	ble	.L144
	ldr	r3, [r7, #380]
	ldr	r2, [r3, #8]
	adds	r3, r7, #4
	ldr	r3, [r3]
	str	r2, [r3, #404]
.L144:
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r2, [r3, #412]
	ldr	r3, [r7, #380]
	ldr	r3, [r3, #12]
	cmp	r2, r3
	ble	.L145
	ldr	r3, [r7, #380]
	ldr	r2, [r3, #12]
	adds	r3, r7, #4
	ldr	r3, [r3]
	str	r2, [r3, #412]
.L145:
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r2, [r3, #404]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #400]
	subs	r2, r2, r3
	adds	r3, r7, #4
	ldr	r3, [r3]
	str	r2, [r3, #416]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r2, [r3, #412]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #408]
	subs	r2, r2, r3
	adds	r3, r7, #4
	ldr	r3, [r3]
	str	r2, [r3, #420]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r2, [r3, #412]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #408]
	subs	r2, r2, r3
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #1628]
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv(PLT)
	mov	r3, r0
	mov	r2, r3
	add	r3, r7, #20
	str	r2, [r3]
	add	r3, r7, #20
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L146
	add	r3, r7, #20
	movs	r2, #1
	str	r2, [r3]
.L146:
	add	r3, r7, #20
	ldr	r3, [r3]
	cmp	r3, #38
	ble	.L147
	add	r3, r7, #20
	movs	r2, #39
	str	r2, [r3]
.L147:
	adds	r3, r7, #4
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [r3, #1632]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r2, [r3, #408]
	add	r3, r7, #16
	str	r2, [r3]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r2, [r3, #412]
	add	r3, r7, #8
	str	r2, [r3]
	add	r3, r7, #24
	movs	r2, #0
	str	r2, [r3]
	b	.L148
.L162:
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r2, [r3, #1628]
	add	r3, r7, #16
	ldr	r3, [r3]
	add	r2, r2, r3
	add	r3, r7, #12
	str	r2, [r3]
	add	r3, r7, #20
	ldr	r3, [r3]
	subs	r2, r3, #1
	add	r3, r7, #24
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L149
	add	r3, r7, #12
	ldr	r2, [r3]
	add	r3, r7, #8
	ldr	r3, [r3]
	cmp	r2, r3
	ble	.L150
.L149:
	add	r3, r7, #8
	ldr	r2, [r3]
	add	r3, r7, #12
	str	r2, [r3]
.L150:
	add	r3, r7, #16
	ldr	r2, [r3]
	add	r3, r7, #32
	str	r2, [r3]
	add	r3, r7, #12
	ldr	r2, [r3]
	add	r3, r7, #32
	str	r2, [r3, #4]
	add	r3, r7, #28
	add	r2, r7, #32
	str	r2, [r3]
.L161:
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r2, [r3, #1636]
	adds	r3, r7, #4
	ldr	r3, [r3]
	str	r2, [r3, #1644]
	add	r3, r7, #28
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	add	r3, r7, #28
	ldr	r3, [r3]
	ldr	r3, [r3]
	subs	r2, r2, r3
	adds	r3, r7, #4
	ldr	r3, [r3]
	str	r2, [r3, #1648]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #1648]
	lsls	r3, r3, #2
	str	r3, [r7, #384]
	ldr	r2, [r7, #384]
	asrs	r3, r2, #31
	lsrs	r3, r3, #28
	add	r2, r2, r3
	and	r2, r2, #15
	subs	r3, r2, r3
	str	r3, [r7, #376]
	ldr	r3, [r7, #376]
	cmp	r3, #0
	ble	.L151
	ldr	r3, [r7, #376]
	rsb	r3, r3, #16
	ldr	r2, [r7, #384]
	add	r3, r3, r2
	str	r3, [r7, #384]
.L151:
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #1640]
	str	r3, [r7, #372]
	ldr	r2, [r7, #372]
	asrs	r3, r2, #31
	lsrs	r3, r3, #28
	add	r2, r2, r3
	and	r2, r2, #15
	subs	r3, r2, r3
	ldr	r2, [r7, #372]
	subs	r3, r2, r3
	str	r3, [r7, #372]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r2, [r3, #1636]
	ldr	r3, [r7, #372]
	add	r3, r3, r2
	str	r3, [r7, #368]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r2, [r3, #1636]
	ldr	r3, [r7, #384]
	add	r2, r2, r3
	adds	r3, r7, #4
	ldr	r3, [r3]
	str	r2, [r3, #436]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r2, [r3, #436]
	ldr	r3, [r7, #368]
	cmp	r2, r3
	bcc	.L152
	b	.L153
.L152:
	ldr	r2, [r7, #368]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #436]
	subs	r3, r2, r3
	asrs	r3, r3, #4
	mov	r2, r3
	adds	r3, r7, #4
	ldr	r3, [r3]
	str	r2, [r3, #440]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #440]
	cmp	r3, #1
	bgt	.L154
	b	.L153
.L154:
	movs	r3, #0
	str	r3, [r7, #388]
	b	.L155
.L156:
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r2, [r3, #1644]
	ldr	r3, [r7, #388]
	lsls	r3, r3, #2
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #388]
	adds	r3, r3, #1
	str	r3, [r7, #388]
.L155:
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r2, [r3, #1648]
	ldr	r3, [r7, #388]
	cmp	r2, r3
	bgt	.L156
	adds	r3, r7, #4
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [r3, #444]
	adds	r3, r7, #4
	ldr	r3, [r3]
	movs	r2, #1
	str	r2, [r3, #432]
	add	r3, r7, #28
	ldr	r3, [r3]
	ldr	r2, [r3]
	adds	r3, r7, #4
	ldr	r3, [r3]
	str	r2, [r3, #408]
	add	r3, r7, #28
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	adds	r3, r7, #4
	ldr	r3, [r3]
	str	r2, [r3, #412]
	add	r3, r7, #28
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	add	r3, r7, #28
	ldr	r3, [r3]
	ldr	r3, [r3]
	subs	r2, r2, r3
	adds	r3, r7, #4
	ldr	r3, [r3]
	str	r2, [r3, #420]
	adds	r3, r7, #4
	ldr	r0, [r3]
	bl	gray_convert_glyph_inner(PLT)
	str	r0, [r7, #364]
	ldr	r3, [r7, #364]
	cmp	r3, #0
	bne	.L157
	adds	r3, r7, #4
	ldr	r3, [r3]
	addw	r3, r3, #1380
	adds	r2, r7, #4
	ldr	r0, [r2]
	mov	r1, r3
	bl	gray_sweep(PLT)
	add	r3, r7, #28
	ldr	r3, [r3]
	sub	r2, r3, #8
	add	r3, r7, #28
	str	r2, [r3]
	b	.L158
.L157:
	ldr	r3, [r7, #364]
	cmp	r3, #64
	beq	.L153
	movs	r3, #1
	b	.L164
.L153:
	add	r3, r7, #28
	ldr	r3, [r3]
	ldr	r3, [r3]
	str	r3, [r7, #360]
	add	r3, r7, #28
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	str	r3, [r7, #356]
	ldr	r2, [r7, #356]
	ldr	r3, [r7, #360]
	subs	r3, r2, r3
	asrs	r2, r3, #1
	ldr	r3, [r7, #360]
	add	r3, r3, r2
	str	r3, [r7, #352]
	ldr	r2, [r7, #352]
	ldr	r3, [r7, #360]
	cmp	r2, r3
	bne	.L159
	movs	r3, #1
	b	.L164
.L159:
	ldr	r2, [r7, #360]
	ldr	r3, [r7, #356]
	subs	r2, r2, r3
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #1628]
	cmp	r2, r3
	blt	.L160
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #1632]
	adds	r2, r3, #1
	adds	r3, r7, #4
	ldr	r3, [r3]
	str	r2, [r3, #1632]
.L160:
	add	r3, r7, #28
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r2, [r7, #360]
	str	r2, [r3]
	add	r3, r7, #28
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r2, [r7, #352]
	str	r2, [r3, #4]
	add	r3, r7, #28
	ldr	r3, [r3]
	ldr	r2, [r7, #352]
	str	r2, [r3]
	add	r3, r7, #28
	ldr	r3, [r3]
	ldr	r2, [r7, #356]
	str	r2, [r3, #4]
	add	r3, r7, #28
	ldr	r3, [r3]
	add	r2, r3, #8
	add	r3, r7, #28
	str	r2, [r3]
.L158:
	add	r3, r7, #28
	ldr	r2, [r3]
	add	r3, r7, #32
	cmp	r2, r3
	bcs	.L161
	add	r3, r7, #24
	ldr	r3, [r3]
	adds	r2, r3, #1
	add	r3, r7, #24
	str	r2, [r3]
	add	r3, r7, #12
	ldr	r2, [r3]
	add	r3, r7, #16
	str	r2, [r3]
.L148:
	add	r3, r7, #24
	ldr	r2, [r3]
	add	r3, r7, #20
	ldr	r3, [r3]
	cmp	r2, r3
	blt	.L162
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #1632]
	cmp	r3, #8
	ble	.L163
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #1628]
	cmp	r3, #16
	ble	.L163
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #1628]
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	mov	r2, r3
	adds	r3, r7, #4
	ldr	r3, [r3]
	str	r2, [r3, #1628]
.L163:
	movs	r3, #0
.L164:
	mov	r0, r3
	add	r7, r7, #392
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	gray_convert_glyph, .-gray_convert_glyph
	.section	.text.gray_raster_render,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	gray_raster_render, %function
gray_raster_render:
	@ args = 0, pretend = 0, frame = 18064
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #18048
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
	add	r0, r7, #18048
	add	r0, r0, #12
	str	r3, [r0]
	add	r3, r7, #16
	subs	r3, r3, #16
	ldr	r3, [r3]
	ldr	r3, [r3]
	add	r1, r7, #18048
	add	r1, r1, #8
	str	r3, [r1]
	mov	r3, #16384
	add	r2, r7, #18048
	add	r2, r2, #4
	str	r3, [r2]
	add	r0, r7, #18048
	add	r0, r0, #4
	ldr	r3, [r0]
	add	r2, r3, #127
	cmp	r3, #0
	ite	lt
	movlt	r3, r2
	movge	r3, r3
	asrs	r3, r3, #7
	add	r1, r7, #18048
	str	r3, [r1]
	add	r3, r7, #16
	subs	r3, r3, #12
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L166
	movs	r3, #6
	b	.L184
.L166:
	add	r2, r7, #18048
	add	r2, r2, #12
	ldr	r3, [r2]
	cmp	r3, #0
	bne	.L168
	movs	r3, #20
	b	.L184
.L168:
	add	r0, r7, #18048
	add	r0, r0, #12
	ldr	r3, [r0]
	ldrh	r3, [r3, #2]
	cmp	r3, #0
	beq	.L169
	add	r1, r7, #18048
	add	r1, r1, #12
	ldr	r3, [r1]
	ldrh	r3, [r3]
	sxth	r3, r3
	cmp	r3, #0
	bgt	.L170
.L169:
	movs	r3, #0
	b	.L184
.L170:
	add	r2, r7, #18048
	add	r2, r2, #12
	ldr	r3, [r2]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L171
	add	r0, r7, #18048
	add	r0, r0, #12
	ldr	r3, [r0]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L172
.L171:
	movs	r3, #20
	b	.L184
.L172:
	add	r1, r7, #18048
	add	r1, r1, #12
	ldr	r3, [r1]
	ldrh	r3, [r3, #2]
	sxth	r2, r3
	add	r0, r7, #18048
	add	r0, r0, #12
	ldr	r3, [r0]
	ldr	r1, [r3, #12]
	add	r0, r7, #18048
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
	beq	.L173
	movs	r3, #20
	b	.L184
.L173:
	add	r3, r7, #16
	subs	r3, r3, #16
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #2
	cmp	r3, #0
	bne	.L174
	add	r1, r7, #18048
	add	r1, r1, #8
	ldr	r3, [r1]
	cmp	r3, #0
	bne	.L175
	movs	r3, #6
	b	.L184
.L175:
	add	r2, r7, #18048
	add	r2, r2, #8
	ldr	r3, [r2]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L176
	add	r0, r7, #18048
	add	r0, r0, #8
	ldr	r3, [r0]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L177
.L176:
	movs	r3, #0
	b	.L184
.L177:
	add	r1, r7, #18048
	add	r1, r1, #8
	ldr	r3, [r1]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	bne	.L174
	movs	r3, #6
	b	.L184
.L174:
	add	r3, r7, #16
	subs	r3, r3, #16
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L178
	movs	r3, #19
	b	.L184
.L178:
	add	r3, r7, #16
	subs	r3, r3, #16
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #2
	cmp	r3, #0
	bne	.L179
	add	r3, r7, #16384
	add	r3, r3, #8
	movs	r2, #0
	str	r2, [r3, #1404]
	add	r3, r7, #16384
	add	r3, r3, #8
	movs	r2, #0
	str	r2, [r3, #1408]
	add	r2, r7, #18048
	add	r2, r2, #8
	ldr	r3, [r2]
	ldr	r3, [r3, #4]
	mov	r2, r3
	add	r3, r7, #16384
	add	r3, r3, #8
	str	r2, [r3, #1412]
	add	r0, r7, #18048
	add	r0, r0, #8
	ldr	r3, [r0]
	ldr	r3, [r3]
	mov	r2, r3
	add	r3, r7, #16384
	add	r3, r3, #8
	str	r2, [r3, #1416]
	b	.L180
.L179:
	add	r3, r7, #16
	subs	r3, r3, #16
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L181
	add	r2, r7, #16384
	add	r2, r2, #8
	add	r3, r7, #16
	subs	r3, r3, #16
	ldr	r3, [r3]
	addw	r4, r2, #1404
	adds	r3, r3, #32
	ldmia	r3, {r0, r1, r2, r3}
	stmia	r4, {r0, r1, r2, r3}
	b	.L180
.L181:
	add	r2, r7, #16384
	add	r2, r2, #8
	mov	r3, #32768
	movt	r3, 65535
	str	r3, [r2, #1404]
	add	r2, r7, #16384
	add	r2, r2, #8
	mov	r3, #32768
	movt	r3, 65535
	str	r3, [r2, #1408]
	add	r3, r7, #16384
	add	r3, r3, #8
	movw	r2, #32767
	str	r2, [r3, #1412]
	add	r3, r7, #16384
	add	r3, r3, #8
	movw	r2, #32767
	str	r2, [r3, #1416]
.L180:
	add	r2, r7, #16384
	add	r2, r2, #8
	add	r3, r7, #16
	subs	r3, r3, #8
	mov	r0, r2
	mov	r1, r3
	add	r3, r7, #18048
	add	r3, r3, #4
	ldr	r2, [r3]
	bl	gray_init_cells(PLT)
	add	r2, r7, #16384
	add	r2, r2, #8
	add	r0, r7, #18048
	add	r0, r0, #12
	ldr	r3, [r0]
	add	r4, r2, #1360
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	add	r3, r7, #16384
	add	r3, r3, #8
	movs	r2, #0
	str	r2, [r3, #444]
	add	r3, r7, #16384
	add	r3, r3, #8
	movs	r2, #1
	str	r2, [r3, #432]
	add	r3, r7, #16384
	add	r3, r3, #8
	add	r1, r7, #18048
	ldr	r2, [r1]
	str	r2, [r3, #1628]
	add	r3, r7, #16384
	add	r3, r3, #8
	movs	r2, #0
	str	r2, [r3, #1612]
	add	r3, r7, #16384
	add	r3, r3, #8
	movs	r2, #0
	str	r2, [r3, #1624]
	add	r3, r7, #16
	subs	r3, r3, #16
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L182
	add	r3, r7, #16
	subs	r3, r3, #16
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	add	r3, r7, #16384
	add	r3, r3, #8
	str	r2, [r3, #1616]
	add	r3, r7, #16
	subs	r3, r3, #16
	ldr	r3, [r3]
	ldr	r2, [r3, #28]
	add	r3, r7, #16384
	add	r3, r3, #8
	str	r2, [r3, #1620]
	b	.L183
.L182:
	add	r2, r7, #16384
	add	r2, r2, #8
	add	r0, r7, #18048
	add	r0, r0, #8
	ldr	r3, [r0]
	addw	r4, r2, #1380
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5, {r0, r1}
	stmia	r4, {r0, r1}
	add	r3, r7, #16384
	add	r3, r3, #8
	ldr	r2, .L185
.LPIC1:
	add	r2, pc
	str	r2, [r3, #1616]
	add	r3, r7, #16384
	add	r3, r3, #8
	add	r2, r7, #16384
	add	r2, r2, #8
	str	r2, [r3, #1620]
.L183:
	add	r3, r7, #16384
	add	r3, r3, #8
	mov	r0, r3
	bl	gray_convert_glyph(PLT)
	mov	r3, r0
.L184:
	mov	r0, r3
	add	r7, r7, #18048
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L186:
	.align	2
.L185:
	.word	gray_render_span-(.LPIC1+4)
	.size	gray_raster_render, .-gray_raster_render
	.section	.text.gray_raster_new,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	gray_raster_new, %function
gray_raster_new:
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
	bne	.L188
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7]
	ldr	r2, [r7, #12]
	str	r2, [r3]
.L188:
	ldr	r3, [r7, #8]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	gray_raster_new, .-gray_raster_new
	.section	.text.gray_raster_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	gray_raster_done, %function
gray_raster_done:
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
	.size	gray_raster_done, .-gray_raster_done
	.section	.text.gray_raster_reset,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	gray_raster_reset, %function
gray_raster_reset:
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
	.size	gray_raster_reset, .-gray_raster_reset
	.section	.text.gray_raster_set_mode,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	gray_raster_set_mode, %function
gray_raster_set_mode:
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
	.size	gray_raster_set_mode, .-gray_raster_set_mode
	.global	ft_grays_raster
	.section	.data.rel.ro.local.ft_grays_raster,"aw",%progbits
	.align	2
	.type	ft_grays_raster, %object
	.size	ft_grays_raster, 24
ft_grays_raster:
	.word	1869968492
	.word	gray_raster_new
	.word	gray_raster_reset
	.word	gray_raster_set_mode
	.word	gray_raster_render
	.word	gray_raster_done
	.section	.text.ft_smooth_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_smooth_init, %function
ft_smooth_init:
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
	.size	ft_smooth_init, .-ft_smooth_init
	.section	.text.ft_smooth_set_mode,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_smooth_set_mode, %function
ft_smooth_set_mode:
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
	.size	ft_smooth_set_mode, .-ft_smooth_set_mode
	.section	.text.ft_smooth_transform,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_smooth_transform, %function
ft_smooth_transform:
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
	beq	.L199
	movs	r3, #6
	str	r3, [r7, #20]
	b	.L200
.L199:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L201
	ldr	r3, [r7, #8]
	adds	r3, r3, #108
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	FT_Outline_Transform(PLT)
.L201:
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L200
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
.L200:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_smooth_transform, .-ft_smooth_transform
	.section	.text.ft_smooth_get_cbox,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_smooth_get_cbox, %function
ft_smooth_get_cbox:
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
	bne	.L203
	ldr	r3, [r7, #8]
	adds	r3, r3, #108
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	FT_Outline_Get_CBox(PLT)
.L203:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_smooth_get_cbox, .-ft_smooth_get_cbox
	.section	.text.ft_smooth_render_generic,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_smooth_render_generic, %function
ft_smooth_render_generic:
	@ args = 4, pretend = 0, frame = 168
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #168
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #8]
	adds	r3, r3, #108
	str	r3, [r7, #124]
	ldr	r3, [r7, #8]
	adds	r3, r3, #76
	str	r3, [r7, #120]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	str	r3, [r7, #116]
	movs	r3, #0
	str	r3, [r7, #164]
	movs	r3, #0
	str	r3, [r7, #160]
	ldr	r3, [r7, #4]
	cmp	r3, #3
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #112]
	ldr	r3, [r7, #4]
	cmp	r3, #4
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #108]
	movs	r3, #0
	strb	r3, [r7, #139]
	movs	r3, #0
	strb	r3, [r7, #138]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	cmp	r2, r3
	beq	.L206
	movs	r3, #6
	str	r3, [r7, #84]
	b	.L207
.L206:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #176]
	cmp	r2, r3
	beq	.L208
	movs	r3, #19
	str	r3, [r7, #84]
	b	.L207
.L208:
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L209
	ldr	r3, [r7]
	ldr	r3, [r3]
	str	r3, [r7, #164]
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	str	r3, [r7, #160]
.L209:
	add	r3, r7, #68
	ldr	r0, [r7, #124]
	mov	r1, r3
	bl	FT_Outline_Get_CBox(PLT)
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #164]
	add	r3, r3, r2
	bic	r3, r3, #63
	str	r3, [r7, #68]
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #160]
	add	r3, r3, r2
	bic	r3, r3, #63
	str	r3, [r7, #72]
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #164]
	add	r3, r3, r2
	adds	r3, r3, #63
	bic	r3, r3, #63
	str	r3, [r7, #76]
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #160]
	add	r3, r3, r2
	adds	r3, r3, #63
	bic	r3, r3, #63
	str	r3, [r7, #80]
	ldr	r3, [r7, #68]
	ldr	r2, [r7, #164]
	subs	r3, r2, r3
	str	r3, [r7, #164]
	ldr	r3, [r7, #72]
	ldr	r2, [r7, #160]
	subs	r3, r2, r3
	str	r3, [r7, #160]
	ldr	r3, [r7, #68]
	asrs	r3, r3, #6
	str	r3, [r7, #156]
	ldr	r3, [r7, #80]
	asrs	r3, r3, #6
	str	r3, [r7, #152]
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #68]
	subs	r3, r2, r3
	lsrs	r3, r3, #6
	str	r3, [r7, #148]
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #72]
	subs	r3, r2, r3
	lsrs	r3, r3, #6
	str	r3, [r7, #144]
	ldr	r3, [r7, #148]
	str	r3, [r7, #140]
	ldr	r3, [r7, #112]
	cmp	r3, #0
	beq	.L210
	ldr	r2, [r7, #148]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	str	r3, [r7, #148]
	ldr	r3, [r7, #148]
	adds	r3, r3, #3
	bic	r3, r3, #3
	str	r3, [r7, #140]
.L210:
	ldr	r3, [r7, #108]
	cmp	r3, #0
	beq	.L211
	ldr	r2, [r7, #144]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	str	r3, [r7, #144]
.L211:
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	ldr	r3, [r3, #204]
	cmp	r3, #0
	beq	.L212
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	ldr	r3, [r3, #192]
	str	r3, [r7, #104]
	ldr	r3, [r7, #112]
	cmp	r3, #0
	beq	.L213
	ldr	r3, [r7, #104]
	asrs	r3, r3, #1
	lsls	r3, r3, #6
	ldr	r2, [r7, #164]
	add	r3, r3, r2
	str	r3, [r7, #164]
	ldr	r3, [r7, #104]
	asrs	r3, r3, #1
	ldr	r2, [r7, #156]
	subs	r3, r2, r3
	str	r3, [r7, #156]
	ldr	r2, [r7, #104]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldr	r2, [r7, #148]
	add	r3, r3, r2
	str	r3, [r7, #148]
	ldr	r3, [r7, #148]
	adds	r3, r3, #3
	bic	r3, r3, #3
	str	r3, [r7, #140]
.L213:
	ldr	r3, [r7, #108]
	cmp	r3, #0
	beq	.L212
	ldr	r3, [r7, #104]
	asrs	r3, r3, #1
	lsls	r3, r3, #6
	ldr	r2, [r7, #160]
	add	r3, r3, r2
	str	r3, [r7, #160]
	ldr	r3, [r7, #104]
	asrs	r3, r3, #1
	ldr	r2, [r7, #152]
	add	r3, r3, r2
	str	r3, [r7, #152]
	ldr	r2, [r7, #104]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldr	r2, [r7, #144]
	add	r3, r3, r2
	str	r3, [r7, #144]
.L212:
	ldr	r3, [r7, #148]
	cmp	r3, #32768
	bge	.L214
	ldr	r3, [r7, #144]
	cmp	r3, #32768
	blt	.L215
.L214:
	movs	r3, #98
	str	r3, [r7, #84]
	b	.L207
.L215:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #156]
	ldr	r3, [r3, #4]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L216
	ldr	r3, [r7, #120]
	ldr	r3, [r3, #12]
	ldr	r0, [r7, #116]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #120]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #156]
	ldr	r2, [r7, #8]
	ldr	r2, [r2, #156]
	ldr	r2, [r2, #4]
	bic	r2, r2, #1
	str	r2, [r3, #4]
.L216:
	ldr	r3, [r7, #140]
	ldr	r2, [r7, #144]
	mul	r2, r2, r3
	add	r3, r7, #84
	ldr	r0, [r7, #116]
	mov	r1, r2
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #120]
	str	r2, [r3, #12]
	ldr	r3, [r7, #84]
	cmp	r3, #0
	beq	.L217
	b	.L207
.L217:
	movs	r3, #1
	strb	r3, [r7, #138]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #156]
	ldr	r2, [r7, #8]
	ldr	r2, [r2, #156]
	ldr	r2, [r2, #4]
	orr	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r2, [r7, #8]
	movw	r3, #29811
	movt	r3, 25193
	str	r3, [r2, #72]
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #156]
	str	r2, [r3, #100]
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #152]
	str	r2, [r3, #104]
	ldr	r3, [r7, #120]
	movs	r2, #2
	strb	r2, [r3, #18]
	ldr	r3, [r7, #120]
	mov	r2, #256
	strh	r2, [r3, #16]	@ movhi
	ldr	r2, [r7, #148]
	ldr	r3, [r7, #120]
	str	r2, [r3, #4]
	ldr	r2, [r7, #144]
	ldr	r3, [r7, #120]
	str	r2, [r3]
	ldr	r3, [r7, #120]
	ldr	r2, [r7, #140]
	str	r2, [r3, #8]
	ldr	r3, [r7, #164]
	cmp	r3, #0
	bne	.L218
	ldr	r3, [r7, #160]
	cmp	r3, #0
	beq	.L219
.L218:
	ldr	r0, [r7, #124]
	ldr	r1, [r7, #164]
	ldr	r2, [r7, #160]
	bl	FT_Outline_Translate(PLT)
	movs	r3, #1
	strb	r3, [r7, #139]
.L219:
	ldr	r3, [r7, #120]
	str	r3, [r7, #20]
	ldr	r3, [r7, #124]
	str	r3, [r7, #24]
	movs	r3, #1
	str	r3, [r7, #28]
	ldr	r3, [r7, #124]
	ldr	r3, [r3, #4]
	str	r3, [r7, #100]
	ldr	r3, [r7, #124]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	lsls	r3, r3, #3
	ldr	r2, [r7, #100]
	add	r3, r3, r2
	str	r3, [r7, #96]
	ldr	r3, [r7, #112]
	cmp	r3, #0
	beq	.L220
	ldr	r3, [r7, #100]
	str	r3, [r7, #132]
	b	.L221
.L222:
	ldr	r3, [r7, #132]
	ldr	r2, [r3]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r2, r2, r3
	ldr	r3, [r7, #132]
	str	r2, [r3]
	ldr	r3, [r7, #132]
	adds	r3, r3, #8
	str	r3, [r7, #132]
.L221:
	ldr	r2, [r7, #132]
	ldr	r3, [r7, #96]
	cmp	r2, r3
	bcc	.L222
.L220:
	ldr	r3, [r7, #108]
	cmp	r3, #0
	beq	.L223
	ldr	r3, [r7, #100]
	str	r3, [r7, #132]
	b	.L224
.L225:
	ldr	r3, [r7, #132]
	ldr	r2, [r3, #4]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r2, r2, r3
	ldr	r3, [r7, #132]
	str	r2, [r3, #4]
	ldr	r3, [r7, #132]
	adds	r3, r3, #8
	str	r3, [r7, #132]
.L224:
	ldr	r2, [r7, #132]
	ldr	r3, [r7, #96]
	cmp	r2, r3
	bcc	.L225
.L223:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #56]
	ldr	r2, [r7, #12]
	ldr	r1, [r2, #52]
	add	r2, r7, #20
	mov	r0, r1
	mov	r1, r2
	blx	r3
	mov	r3, r0
	str	r3, [r7, #84]
	ldr	r3, [r7, #124]
	ldr	r3, [r3, #4]
	str	r3, [r7, #92]
	ldr	r3, [r7, #124]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	lsls	r3, r3, #3
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	str	r3, [r7, #88]
	ldr	r3, [r7, #112]
	cmp	r3, #0
	beq	.L226
	ldr	r3, [r7, #92]
	str	r3, [r7, #128]
	b	.L227
.L228:
	ldr	r3, [r7, #128]
	ldr	r2, [r3]
	movw	r3, #21846
	movt	r3, 21845
	smull	r0, r1, r3, r2
	asrs	r3, r2, #31
	subs	r2, r1, r3
	ldr	r3, [r7, #128]
	str	r2, [r3]
	ldr	r3, [r7, #128]
	adds	r3, r3, #8
	str	r3, [r7, #128]
.L227:
	ldr	r2, [r7, #128]
	ldr	r3, [r7, #88]
	cmp	r2, r3
	bcc	.L228
.L226:
	ldr	r3, [r7, #108]
	cmp	r3, #0
	beq	.L229
	ldr	r3, [r7, #92]
	str	r3, [r7, #128]
	b	.L230
.L231:
	ldr	r3, [r7, #128]
	ldr	r2, [r3, #4]
	movw	r3, #21846
	movt	r3, 21845
	smull	r0, r1, r3, r2
	asrs	r3, r2, #31
	subs	r2, r1, r3
	ldr	r3, [r7, #128]
	str	r2, [r3, #4]
	ldr	r3, [r7, #128]
	adds	r3, r3, #8
	str	r3, [r7, #128]
.L230:
	ldr	r2, [r7, #128]
	ldr	r3, [r7, #88]
	cmp	r2, r3
	bcc	.L231
.L229:
	ldr	r3, [r7, #84]
	cmp	r3, #0
	beq	.L232
	b	.L207
.L232:
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	ldr	r3, [r3, #204]
	cmp	r3, #0
	beq	.L233
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	ldr	r3, [r3, #204]
	ldr	r2, [r7, #8]
	ldr	r2, [r2]
	ldr	r0, [r7, #120]
	ldr	r1, [r7, #4]
	blx	r3
.L233:
	movs	r3, #0
	strb	r3, [r7, #138]
	movs	r3, #0
	str	r3, [r7, #84]
.L207:
	ldrb	r3, [r7, #139]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L234
	ldr	r3, [r7, #164]
	negs	r2, r3
	ldr	r3, [r7, #160]
	negs	r3, r3
	ldr	r0, [r7, #124]
	mov	r1, r2
	mov	r2, r3
	bl	FT_Outline_Translate(PLT)
.L234:
	ldrb	r3, [r7, #138]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L235
	ldr	r3, [r7, #120]
	ldr	r3, [r3, #12]
	ldr	r0, [r7, #116]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #120]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #156]
	ldr	r2, [r7, #8]
	ldr	r2, [r2, #156]
	ldr	r2, [r2, #4]
	bic	r2, r2, #1
	str	r2, [r3, #4]
.L235:
	ldr	r3, [r7, #84]
	mov	r0, r3
	adds	r7, r7, #168
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_smooth_render_generic, .-ft_smooth_render_generic
	.section	.text.ft_smooth_render,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_smooth_render, %function
ft_smooth_render:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #1
	bne	.L238
	movs	r3, #0
	str	r3, [r7, #4]
.L238:
	movs	r3, #0
	str	r3, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	ft_smooth_render_generic(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_smooth_render, .-ft_smooth_render
	.section	.text.ft_smooth_render_lcd,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_smooth_render_lcd, %function
ft_smooth_render_lcd:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #3
	str	r3, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	ft_smooth_render_generic(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L241
	ldr	r3, [r7, #8]
	movs	r2, #5
	strb	r2, [r3, #94]
.L241:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_smooth_render_lcd, .-ft_smooth_render_lcd
	.section	.text.ft_smooth_render_lcd_v,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_smooth_render_lcd_v, %function
ft_smooth_render_lcd_v:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #4
	str	r3, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	ft_smooth_render_generic(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L244
	ldr	r3, [r7, #8]
	movs	r2, #6
	strb	r2, [r3, #94]
.L244:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_smooth_render_lcd_v, .-ft_smooth_render_lcd_v
	.global	ft_smooth_renderer_class
	.section	.rodata
	.align	2
.LC0:
	.ascii	"smooth\000"
	.section	.data.rel.ro.ft_smooth_renderer_class,"aw",%progbits
	.align	2
	.type	ft_smooth_renderer_class, %object
	.size	ft_smooth_renderer_class, 60
ft_smooth_renderer_class:
	.word	2
	.word	64
	.word	.LC0
	.word	65536
	.word	131072
	.word	0
	.word	ft_smooth_init
	.word	0
	.word	0
	.word	1869968492
	.word	ft_smooth_render
	.word	ft_smooth_transform
	.word	ft_smooth_get_cbox
	.word	ft_smooth_set_mode
	.word	ft_grays_raster
	.global	ft_smooth_lcd_renderer_class
	.section	.rodata
	.align	2
.LC1:
	.ascii	"smooth-lcd\000"
	.section	.data.rel.ro.ft_smooth_lcd_renderer_class,"aw",%progbits
	.align	2
	.type	ft_smooth_lcd_renderer_class, %object
	.size	ft_smooth_lcd_renderer_class, 60
ft_smooth_lcd_renderer_class:
	.word	2
	.word	64
	.word	.LC1
	.word	65536
	.word	131072
	.word	0
	.word	ft_smooth_init
	.word	0
	.word	0
	.word	1869968492
	.word	ft_smooth_render_lcd
	.word	ft_smooth_transform
	.word	ft_smooth_get_cbox
	.word	ft_smooth_set_mode
	.word	ft_grays_raster
	.global	ft_smooth_lcdv_renderer_class
	.section	.rodata
	.align	2
.LC2:
	.ascii	"smooth-lcdv\000"
	.section	.data.rel.ro.ft_smooth_lcdv_renderer_class,"aw",%progbits
	.align	2
	.type	ft_smooth_lcdv_renderer_class, %object
	.size	ft_smooth_lcdv_renderer_class, 60
ft_smooth_lcdv_renderer_class:
	.word	2
	.word	64
	.word	.LC2
	.word	65536
	.word	131072
	.word	0
	.word	ft_smooth_init
	.word	0
	.word	0
	.word	1869968492
	.word	ft_smooth_render_lcd_v
	.word	ft_smooth_transform
	.word	ft_smooth_get_cbox
	.word	ft_smooth_set_mode
	.word	ft_grays_raster
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
