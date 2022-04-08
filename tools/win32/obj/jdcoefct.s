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
	.file	"jdcoefct.c"
	.section	.text.start_iMCU_row,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	start_iMCU_row, %function
start_iMCU_row:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #340]
	ldr	r3, [r0, #440]
	cmp	r2, #1
	ble	.L2
	movs	r2, #1
	str	r2, [r3, #52]
	movs	r2, #0
	str	r2, [r3, #44]
	str	r2, [r3, #48]
	bx	lr
.L2:
	ldr	r1, [r0, #332]
	ldr	r2, [r0, #156]
	subs	r1, r1, #1
	cmp	r2, r1
	ldr	r2, [r0, #344]
	ite	cc
	ldrcc	r2, [r2, #12]
	ldrcs	r2, [r2, #72]
	str	r2, [r3, #52]
	movs	r2, #0
	str	r2, [r3, #44]
	str	r2, [r3, #48]
	bx	lr
	.size	start_iMCU_row, .-start_iMCU_row
	.section	.text.dummy_consume_data,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	dummy_consume_data, %function
dummy_consume_data:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r0, #0
	bx	lr
	.size	dummy_consume_data, .-dummy_consume_data
	.section	.text.start_output_pass,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	start_output_pass, %function
start_output_pass:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r4, r0
	ldr	r6, [r0, #440]
	ldr	r3, [r6, #20]
	cbz	r3, .L8
	ldr	r3, [r0, #88]
	cbnz	r3, .L78
.L19:
	ldr	r3, .L80
.LPIC9:
	add	r3, pc
	str	r3, [r6, #16]
.L8:
	movs	r3, #0
	str	r3, [r4, #164]
	pop	{r3, r4, r5, r6, r7, pc}
.L78:
	ldr	r3, [r0, #232]
	cmp	r3, #0
	beq	.L19
	ldr	r3, [r0, #168]
	cmp	r3, #0
	beq	.L19
	ldr	r3, [r6, #136]
	cmp	r3, #0
	beq	.L79
	mov	r0, r3
.L11:
	ldr	r3, [r4, #40]
	ldr	r7, [r4, #224]
	cmp	r3, #0
	ble	.L19
	ldr	r1, [r7, #76]
	cmp	r1, #0
	beq	.L19
	ldrh	r3, [r1]
	cmp	r3, #0
	beq	.L19
	ldrh	r3, [r1, #2]
	cmp	r3, #0
	beq	.L19
	ldrh	r3, [r1, #16]
	cmp	r3, #0
	beq	.L19
	ldrh	r3, [r1, #32]
	cmp	r3, #0
	beq	.L19
	movs	r2, #0
	mov	r5, r2
	b	.L12
.L18:
	ldr	r1, [r7, #76]
	cmp	r1, #0
	beq	.L19
	ldrh	r3, [r1]
	cmp	r3, #0
	beq	.L19
	ldrh	r3, [r1, #2]
	cmp	r3, #0
	beq	.L19
	ldrh	r3, [r1, #16]
	cmp	r3, #0
	beq	.L19
	ldrh	r3, [r1, #32]
	cmp	r3, #0
	beq	.L19
.L12:
	ldrh	lr, [r1, #18]
	lsls	r3, r5, #8
	adds	r7, r7, #84
	adds	r5, r5, #1
	cmp	lr, #0
	beq	.L19
	ldrh	r1, [r1, #4]
	cmp	r1, #0
	beq	.L19
	ldr	r1, [r4, #168]
	ldr	lr, [r1, r3]
	add	r3, r3, r1
	cmp	lr, #0
	blt	.L19
	ldr	r1, [r3, #4]
	adds	r0, r0, #24
	str	r1, [r0, #-20]
	ldr	r1, [r3, #8]
	ldr	lr, [r3, #4]
	str	r1, [r0, #-16]
	ldr	r1, [r3, #12]
	cmp	lr, #0
	it	ne
	movne	r2, #1
	ldr	lr, [r3, #8]
	str	r1, [r0, #-12]
	ldr	r1, [r3, #16]
	cmp	lr, #0
	it	ne
	movne	r2, #1
	ldr	lr, [r3, #12]
	str	r1, [r0, #-8]
	ldr	r1, [r3, #20]
	cmp	lr, #0
	it	ne
	movne	r2, #1
	ldr	lr, [r3, #16]
	str	r1, [r0, #-4]
	ldr	r1, [r3, #20]
	cmp	lr, #0
	it	ne
	movne	r2, #1
	ldr	r3, [r4, #40]
	cmp	r1, #0
	it	ne
	movne	r2, #1
	cmp	r5, r3
	blt	.L18
	cmp	r2, #0
	beq	.L19
	ldr	r3, .L80+4
.LPIC8:
	add	r3, pc
	str	r3, [r6, #16]
	movs	r3, #0
	str	r3, [r4, #164]
	pop	{r3, r4, r5, r6, r7, pc}
.L79:
	ldr	r3, [r0, #40]
	movs	r1, #1
	ldr	r5, [r0, #4]
	add	r2, r3, r3, lsl #1
	ldr	r5, [r5]
	lsls	r2, r2, #3
	blx	r5
	str	r0, [r6, #136]
	b	.L11
.L81:
	.align	2
.L80:
	.word	decompress_data-(.LPIC9+4)
	.word	decompress_smooth_data-(.LPIC8+4)
	.size	start_output_pass, .-start_output_pass
	.global	__aeabi_uidivmod
	.section	.text.decompress_data,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	decompress_data, %function
decompress_data:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	fp, r0
	ldr	r4, [fp, #332]
	sub	sp, sp, #52
	ldr	r0, [r0, #440]
	str	r1, [sp, #36]
	str	r0, [sp, #44]
.L83:
	ldr	r2, [fp, #152]
	mov	r0, fp
	ldr	r3, [fp, #160]
	cmp	r2, r3
	blt	.L85
	bne	.L86
	ldr	r2, [fp, #156]
	ldr	r3, [fp, #164]
	cmp	r2, r3
	bhi	.L86
.L85:
	ldr	r3, [fp, #448]
	ldr	r3, [r3]
	blx	r3
	cmp	r0, #0
	bne	.L83
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L86:
	ldr	r2, [fp, #40]
	ldr	r10, [fp, #224]
	cmp	r2, #0
	ble	.L101
	ldr	r3, [sp, #44]
	movs	r1, #0
	subs	r4, r4, #1
	str	r1, [sp, #28]
	str	r4, [sp, #40]
	str	r3, [sp, #32]
.L102:
	ldr	r3, [r10, #48]
	pld	[r10, #216]
	cmp	r3, #0
	beq	.L89
	ldr	r3, [fp, #228]
	ldr	r2, [fp, #4]
	ldr	r0, [sp, #32]
	ldr	r4, [r2, #32]
	ldr	r1, [r0, #96]
	cmp	r3, #0
	beq	.L90
	ldr	r3, [r10, #12]
	movs	r2, #0
.L91:
	movs	r0, #0
	str	r0, [sp]
	mov	r0, fp
	blx	r4
	ldr	r3, [fp, #164]
	mov	r4, r0
	ldr	r1, [sp, #40]
	cmp	r1, r3
	bls	.L92
	ldr	r2, [r10, #12]
	str	r2, [sp, #20]
.L93:
	ldr	r1, [sp, #28]
	ldr	r2, [fp, #460]
	ldr	r3, [fp, #228]
	ldr	r0, [sp, #36]
	pld	[r10, #196]
	add	r2, r2, r1, lsl #2
	ldr	r8, [r10, #28]
	ldr	r7, [r0, r1, lsl #2]
	ldr	r9, [r2, #4]
	cmp	r3, #0
	bne	.L115
	str	r3, [sp, #12]
.L94:
	ldr	r2, [sp, #20]
	cmp	r2, #0
	ble	.L114
	ldr	r0, [sp, #12]
	subs	r4, r4, #4
	ldr	r3, [r10, #36]
	movs	r1, #0
	str	r4, [sp, #16]
	str	r1, [sp, #8]
	lsls	r0, r0, #7
	str	r0, [sp, #24]
.L100:
	ldr	r2, [sp, #16]
	ldr	r1, [sp, #12]
	ldr	r5, [sp, #12]
	ldr	r4, [r2, #4]!
	ldr	r0, [sp, #24]
	cmp	r1, r8
	str	r2, [sp, #16]
	mul	r5, r3, r5
	add	r4, r4, r0
	bcs	.L97
	mov	r6, r1
.L98:
	str	r5, [sp]
	mov	r2, r4
	mov	r3, r7
	mov	r0, fp
	mov	r1, r10
	adds	r6, r6, #1
	blx	r9
	ldr	r3, [r10, #36]
	cmp	r6, r8
	add	r4, r4, #128
	add	r5, r5, r3
	bcc	.L98
.L97:
	ldr	r2, [sp, #8]
	add	r7, r7, r3, lsl #2
	ldr	r0, [sp, #20]
	adds	r2, r2, #1
	cmp	r2, r0
	str	r2, [sp, #8]
	bne	.L100
.L114:
	ldr	r2, [fp, #40]
.L89:
	ldr	r1, [sp, #28]
	add	r10, r10, #84
	ldr	r3, [sp, #32]
	adds	r1, r1, #1
	cmp	r1, r2
	add	r3, r3, #4
	str	r1, [sp, #28]
	str	r3, [sp, #32]
	blt	.L102
.L101:
	ldr	r3, [fp, #164]
	ldr	r0, [fp, #332]
	adds	r3, r3, #1
	cmp	r3, r0
	ite	cc
	movcc	r0, #3
	movcs	r0, #4
	str	r3, [fp, #164]
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L92:
	ldr	r3, [r10, #12]
	ldr	r0, [r10, #32]
	mov	r1, r3
	str	r3, [sp, #20]
	bl	__aeabi_uidivmod(PLT)
	ldr	r0, [sp, #20]
	cmp	r1, #0
	it	ne
	movne	r0, r1
	str	r0, [sp, #20]
	b	.L93
.L90:
	ldr	r3, [r10, #12]
	ldr	r2, [fp, #164]
	mul	r2, r2, r3
	b	.L91
.L115:
	ldr	r3, [fp, #440]
	mov	r0, r8
	ldr	r2, [r10, #8]
	ldr	r1, [r3, #36]
	ldr	r3, [r3, #32]
	subs	r1, r1, r3
	mul	r1, r2, r1
	bl	jmin(PLT)
	ldr	r1, [sp, #44]
	mov	r8, r0
	ldr	r2, [r10, #8]
	ldr	r3, [r1, #40]
	mul	r2, r2, r3
	str	r2, [sp, #12]
	b	.L94
	.size	decompress_data, .-decompress_data
	.section	.text.consume_data,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	consume_data, %function
consume_data:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #340]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r10, r0
	ldr	r4, [r0, #440]
	sub	sp, sp, #68
	cmp	r3, #0
	mov	fp, r4
	ble	.L117
	mov	r6, r0
	movs	r5, #0
	add	r8, sp, #48
	movs	r7, #1
	mov	r9, r4
.L121:
	ldr	r3, [r6, #344]
	movs	r2, #0
	ldr	r0, [r10, #4]
	ldr	r1, [r3, #4]
	ldr	r4, [r0, #32]
	ldr	r0, [r10, #228]
	adds	r1, r1, #24
	ldr	r3, [r3, #12]
	ldr	r1, [r9, r1, lsl #2]
	cbnz	r0, .L119
	ldr	r2, [r10, #156]
	mul	r2, r2, r3
.L119:
	str	r7, [sp]
	mov	r0, r10
	blx	r4
	ldr	r3, [r10, #340]
	adds	r6, r6, #4
	str	r0, [r8, r5, lsl #2]
	adds	r5, r5, #1
	cmp	r3, r5
	bgt	.L121
	ldr	r2, [r10, #228]
	ldr	r5, [r10, #360]
	str	r5, [sp, #40]
	cbz	r2, .L122
	cmp	r3, #1
	ldr	r4, [r10, #440]
	it	gt
	movgt	r3, #1
	ble	.L152
.L123:
	ldr	r2, [r10, #456]
	ldr	r5, [r4, #28]
	ldr	r4, [r4, #24]
	ldr	r1, [r2, #24]
	ldr	r0, [sp, #40]
	subs	r2, r5, r4
	ldr	r1, [r1]
	mul	r1, r1, r2
	mul	r1, r3, r1
	bl	jmin(PLT)
	str	r0, [sp, #40]
.L122:
	ldr	r5, [fp, #48]
	ldr	r3, [fp, #52]
	str	r5, [sp, #36]
	cmp	r5, r3
	bge	.L150
	add	r3, r5, #1073741824
	add	r5, fp, #56
	subs	r3, r3, #1
	str	r5, [sp, #44]
	lsls	r3, r3, #2
	str	r3, [sp, #32]
.L151:
	ldr	r3, [r10, #228]
	cbz	r3, .L127
	ldr	r2, [r10, #456]
	ldr	r3, [r10, #152]
	ldr	r1, [r10, #440]
	ldr	r4, [r2, #24]
	ldr	r5, [sp, #36]
	add	r3, r3, r3, lsl #2
	ldr	r1, [r1, #24]
	ldr	r4, [r4, #16]
	ldr	r0, [r10, #156]
	add	r3, r4, r3, lsl #3
	ldr	r4, [r3, #8]
	ldr	r3, [r3, #36]
	mla	r1, r4, r5, r1
	ldr	r3, [r3, r0, lsl #2]
	add	r1, r1, r1, lsl #2
	add	r3, r3, r1, lsl #2
	add	r1, r3, #12
	ldmia	r1, {r0, r1}
	stmia	sp, {r0, r1}
	mov	r0, r10
	ldr	r4, [r2, #12]
	ldmia	r3, {r1, r2, r3}
	blx	r4
.L127:
	ldr	r2, [fp, #44]
	ldr	r5, [sp, #40]
	str	r2, [sp, #28]
	cmp	r5, r2
	bls	.L128
.L129:
	ldr	r2, [r10, #340]
	cmp	r2, #0
	ble	.L148
	movs	r3, #0
	str	r10, [sp, #24]
	mov	r4, r3
	str	r3, [sp, #20]
.L149:
	ldr	r3, [sp, #24]
	ldr	r7, [r3, #344]
	ldr	r3, [r7, #56]
	ldr	r1, [r7, #52]
	cmp	r3, #0
	ble	.L130
	ldr	r5, [sp, #20]
	add	r2, sp, #48
	ldr	r8, [sp, #32]
	lsl	r9, r1, #7
	movs	r6, #0
	ldr	r2, [r2, r5, lsl #2]
	ldr	r5, [sp, #28]
	add	r8, r8, r2
	mul	r9, r5, r9
	b	.L144
.L132:
	cmp	r1, #1
	ble	.L154
.L214:
	ldr	r0, [r10, #228]
	adds	r3, r3, #14
	str	r2, [fp, r3, lsl #2]
	add	ip, r4, #2
	add	r3, r5, #256
	cbz	r0, .L134
	ldr	r0, [r10, #152]
	cmp	r0, #0
	beq	.L204
.L134:
	cmp	r1, #2
	ble	.L161
	ldr	r0, [r10, #228]
	add	ip, ip, #14
	str	r3, [fp, ip, lsl #2]
	add	r2, r5, #384
	add	ip, r4, #3
	cbz	r0, .L135
	ldr	r0, [r10, #152]
	cmp	r0, #0
	beq	.L205
.L135:
	cmp	r1, #3
	ble	.L161
	ldr	r0, [r10, #228]
	add	ip, ip, #14
	str	r2, [fp, ip, lsl #2]
	add	r3, r5, #512
	add	ip, r4, #4
	cbz	r0, .L136
	ldr	r0, [r10, #152]
	cmp	r0, #0
	beq	.L206
.L136:
	cmp	r1, #4
	ble	.L161
	ldr	r0, [r10, #228]
	add	ip, ip, #14
	str	r3, [fp, ip, lsl #2]
	add	r2, r5, #640
	add	ip, r4, #5
	cbz	r0, .L137
	ldr	r0, [r10, #152]
	cmp	r0, #0
	beq	.L207
.L137:
	cmp	r1, #5
	ble	.L161
	ldr	r0, [r10, #228]
	add	ip, ip, #14
	str	r2, [fp, ip, lsl #2]
	add	r3, r5, #768
	add	ip, r4, #6
	cbz	r0, .L138
	ldr	r0, [r10, #152]
	cmp	r0, #0
	beq	.L208
.L138:
	cmp	r1, #6
	ble	.L161
	ldr	r0, [r10, #228]
	add	ip, ip, #14
	str	r3, [fp, ip, lsl #2]
	add	r2, r5, #896
	add	ip, r4, #7
	cbz	r0, .L139
	ldr	r0, [r10, #152]
	cmp	r0, #0
	beq	.L209
.L139:
	cmp	r1, #7
	ble	.L161
	ldr	r0, [r10, #228]
	add	ip, ip, #14
	str	r2, [fp, ip, lsl #2]
	add	r3, r5, #1024
	add	ip, r4, #8
	cbz	r0, .L140
	ldr	r0, [r10, #152]
	cmp	r0, #0
	beq	.L210
.L140:
	cmp	r1, #8
	ble	.L161
	ldr	r0, [r10, #228]
	add	ip, ip, #14
	str	r3, [fp, ip, lsl #2]
	add	r5, r5, #1152
	add	r2, r4, #9
	cbz	r0, .L141
	ldr	r0, [r10, #152]
	cmp	r0, #0
	beq	.L211
.L141:
	cmp	r1, #9
	ble	.L162
.L215:
	ldr	r3, [r10, #228]
	adds	r2, r2, #14
	str	r5, [fp, r2, lsl #2]
	adds	r4, r4, #10
	cbz	r3, .L133
	ldr	r3, [r10, #152]
	cmp	r3, #0
	beq	.L212
.L133:
	ldr	r3, [r7, #56]
.L131:
	adds	r6, r6, #1
	cmp	r6, r3
	bge	.L213
.L144:
	ldr	r5, [r8, #4]!
	cmp	r1, #0
	add	r5, r5, r9
	ble	.L131
	ldr	r0, [r10, #228]
	add	r3, r4, #14
	str	r5, [fp, r3, lsl #2]
	add	r2, r5, #128
	adds	r3, r4, #1
	cmp	r0, #0
	beq	.L132
	ldr	r0, [r10, #152]
	cmp	r0, #0
	bne	.L132
	movs	r1, #128
	mov	r0, r5
	str	r2, [sp, #12]
	str	r3, [sp, #16]
	bl	jzero_far(PLT)
	ldr	r1, [r7, #52]
	ldr	r3, [sp, #16]
	ldr	r2, [sp, #12]
	cmp	r1, #1
	bgt	.L214
.L154:
	mov	r4, r3
	b	.L133
.L161:
	mov	r4, ip
	b	.L133
.L205:
	movs	r1, #128
	mov	r0, r3
	str	r2, [sp, #12]
	str	ip, [sp, #8]
	bl	jzero_far(PLT)
	ldr	r1, [r7, #52]
	ldr	ip, [sp, #8]
	ldr	r2, [sp, #12]
	b	.L135
.L204:
	movs	r1, #128
	mov	r0, r2
	str	r3, [sp, #16]
	str	ip, [sp, #8]
	bl	jzero_far(PLT)
	ldr	r1, [r7, #52]
	ldr	ip, [sp, #8]
	ldr	r3, [sp, #16]
	b	.L134
.L212:
	movs	r1, #128
	mov	r0, r5
	bl	jzero_far(PLT)
	ldr	r1, [r7, #52]
	b	.L133
.L210:
	movs	r1, #128
	mov	r0, r2
	str	r3, [sp, #16]
	str	ip, [sp, #8]
	bl	jzero_far(PLT)
	ldr	r1, [r7, #52]
	ldr	ip, [sp, #8]
	ldr	r3, [sp, #16]
	b	.L140
.L211:
	movs	r1, #128
	mov	r0, r3
	str	r2, [sp, #12]
	bl	jzero_far(PLT)
	ldr	r1, [r7, #52]
	ldr	r2, [sp, #12]
	cmp	r1, #9
	bgt	.L215
.L162:
	mov	r4, r2
	b	.L133
.L206:
	movs	r1, #128
	mov	r0, r2
	str	r3, [sp, #16]
	str	ip, [sp, #8]
	bl	jzero_far(PLT)
	ldr	r1, [r7, #52]
	ldr	ip, [sp, #8]
	ldr	r3, [sp, #16]
	b	.L136
.L207:
	movs	r1, #128
	mov	r0, r3
	str	r2, [sp, #12]
	str	ip, [sp, #8]
	bl	jzero_far(PLT)
	ldr	r1, [r7, #52]
	ldr	ip, [sp, #8]
	ldr	r2, [sp, #12]
	b	.L137
.L208:
	movs	r1, #128
	mov	r0, r2
	str	r3, [sp, #16]
	str	ip, [sp, #8]
	bl	jzero_far(PLT)
	ldr	r1, [r7, #52]
	ldr	ip, [sp, #8]
	ldr	r3, [sp, #16]
	b	.L138
.L209:
	movs	r1, #128
	mov	r0, r3
	str	r2, [sp, #12]
	str	ip, [sp, #8]
	bl	jzero_far(PLT)
	ldr	r1, [r7, #52]
	ldr	ip, [sp, #8]
	ldr	r2, [sp, #12]
	b	.L139
.L213:
	ldr	r2, [r10, #340]
.L130:
	ldr	r3, [sp, #20]
	ldr	r5, [sp, #24]
	adds	r3, r3, #1
	cmp	r3, r2
	add	r5, r5, #4
	str	r3, [sp, #20]
	str	r5, [sp, #24]
	blt	.L149
.L148:
	ldr	r3, [r10, #456]
	mov	r0, r10
	ldr	r1, [sp, #44]
	ldr	r3, [r3, #4]
	blx	r3
	cbz	r0, .L216
	ldr	r3, [sp, #28]
	ldr	r5, [sp, #40]
	adds	r3, r3, #1
	cmp	r5, r3
	str	r3, [sp, #28]
	bhi	.L129
.L128:
	ldr	r5, [sp, #36]
	movs	r0, #0
	ldr	r3, [fp, #52]
	str	r0, [fp, #44]
	adds	r5, r5, #1
	str	r5, [sp, #36]
	ldr	r5, [sp, #32]
	adds	r5, r5, #4
	str	r5, [sp, #32]
	ldr	r5, [sp, #36]
	cmp	r3, r5
	bgt	.L151
.L150:
	ldr	r3, [r10, #156]
	ldr	r2, [r10, #332]
	adds	r3, r3, #1
	cmp	r3, r2
	str	r3, [r10, #156]
	bcs	.L217
	mov	r0, r10
	bl	start_iMCU_row(PLT)
	movs	r0, #3
	add	sp, sp, #68
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L216:
	ldr	r5, [sp, #36]
	ldr	r2, [sp, #28]
	str	r5, [fp, #48]
	str	r2, [fp, #44]
	add	sp, sp, #68
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L117:
	ldr	r3, [r0, #228]
	ldr	r5, [r0, #360]
	str	r5, [sp, #40]
	cmp	r3, #0
	beq	.L122
.L152:
	ldr	r3, [r10, #344]
	ldr	r3, [r3, #8]
	b	.L123
.L217:
	ldr	r3, [r10, #448]
	mov	r0, r10
	ldr	r3, [r3, #20]
	blx	r3
	movs	r0, #4
	add	sp, sp, #68
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	consume_data, .-consume_data
	.section	.text.decompress_onepass,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	decompress_onepass, %function
decompress_onepass:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #332]
	ldr	r2, [r0, #228]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #60
	ldr	r4, [r0, #440]
	subs	r5, r3, #1
	mov	fp, r0
	str	r1, [sp, #48]
	str	r4, [sp, #20]
	ldr	r1, [r0, #360]
	str	r5, [sp, #16]
	cmp	r2, #0
	bne	.L219
	ldr	r5, [sp, #20]
	subs	r1, r1, #1
	str	r1, [sp, #44]
.L220:
	ldr	r4, [sp, #20]
	ldr	r5, [r5, #48]
	ldr	r2, [r4, #52]
	str	r5, [sp, #32]
	cmp	r5, r2
	bge	.L221
	ldr	r5, [r4, #44]
	adds	r4, r4, #56
	str	r4, [sp, #52]
	ldr	r4, [sp, #44]
	str	r5, [sp, #36]
	cmp	r4, r5
	bcs	.L243
	b	.L222
.L250:
	ldr	r3, [fp, #456]
	mov	r0, fp
	ldr	r3, [r3, #8]
	blx	r3
.L224:
	ldr	r5, [sp, #36]
	ldr	r4, [sp, #44]
	adds	r5, r5, #1
	cmp	r4, r5
	str	r5, [sp, #36]
	bcc	.L249
.L243:
	ldr	r5, [sp, #20]
	ldr	r4, [sp, #36]
	ldr	r3, [r5, #40]
	cmp	r3, r4
	bhi	.L250
	ldr	r1, [fp, #368]
	ldr	r0, [r5, #56]
	lsls	r1, r1, #7
	bl	jzero_far(PLT)
	ldr	r3, [fp, #456]
	mov	r0, fp
	ldr	r1, [sp, #52]
	ldr	r3, [r3, #4]
	blx	r3
	cmp	r0, #0
	beq	.L225
	ldr	r1, [fp, #340]
	cmp	r1, #0
	ble	.L224
	mov	r4, fp
	movs	r5, #0
	ldr	r6, [r4, #344]
	str	r5, [sp, #28]
	str	fp, [sp, #40]
	ldr	r3, [r6, #48]
	str	r5, [sp, #12]
	cbnz	r3, .L228
.L251:
	ldr	r5, [sp, #12]
	ldr	r3, [r6, #60]
	add	r5, r5, r3
	str	r5, [sp, #12]
.L229:
	ldr	r5, [sp, #28]
	ldr	r4, [sp, #40]
	adds	r5, r5, #1
	cmp	r5, r1
	add	r4, r4, #4
	str	r5, [sp, #28]
	str	r4, [sp, #40]
	bge	.L224
	ldr	r6, [r4, #344]
	ldr	r3, [r6, #48]
	cmp	r3, #0
	beq	.L251
.L228:
	ldr	r2, [r6, #4]
	ldr	r5, [sp, #44]
	ldr	r4, [sp, #36]
	ldr	r3, [fp, #460]
	ldr	r0, [r6, #64]
	cmp	r5, r4
	ldr	r5, [sp, #48]
	ldr	r7, [sp, #32]
	add	r3, r3, r2, lsl #2
	it	hi
	ldrhi	r8, [r6, #52]
	ldr	r4, [r5, r2, lsl #2]
	ldr	r9, [r3, #4]
	ldr	r5, [sp, #36]
	ldr	r3, [r6, #36]
	ldr	r2, [r6, #56]
	it	ls
	ldrls	r8, [r6, #68]
	mul	r5, r0, r5
	cmp	r2, #0
	mul	r7, r7, r3
	str	r5, [sp, #24]
	add	r7, r4, r7, lsl #2
	ble	.L229
	movs	r4, #0
	str	r4, [sp, #8]
.L239:
	ldr	r1, [fp, #156]
	ldr	r5, [sp, #16]
	cmp	r5, r1
	bhi	.L235
	ldr	r0, [sp, #8]
	ldr	r4, [sp, #32]
	ldr	r1, [r6, #72]
	add	r0, r0, r4
	cmp	r1, r0
	ble	.L234
.L235:
	cmp	r8, #0
	ble	.L234
	ldr	r5, [sp, #12]
	ldr	r4, [sp, #20]
	add	ip, r5, #13
	ldr	r5, [sp, #24]
	add	r10, r4, ip, lsl #2
	movs	r4, #0
.L237:
	ldr	r2, [r10, #4]!
	mov	r3, r7
	str	r5, [sp]
	mov	r0, fp
	mov	r1, r6
	adds	r4, r4, #1
	blx	r9
	ldr	r3, [r6, #36]
	cmp	r4, r8
	add	r5, r5, r3
	bne	.L237
	ldr	r2, [r6, #56]
.L234:
	ldr	r5, [sp, #8]
	add	r7, r7, r3, lsl #2
	ldr	r4, [sp, #12]
	ldr	r1, [r6, #52]
	adds	r5, r5, #1
	cmp	r5, r2
	str	r5, [sp, #8]
	add	r4, r4, r1
	str	r4, [sp, #12]
	blt	.L239
	ldr	r1, [fp, #340]
	b	.L229
.L249:
	ldr	r5, [sp, #20]
	ldr	r2, [r5, #52]
.L222:
	ldr	r4, [sp, #32]
	movs	r5, #0
	adds	r4, r4, #1
	str	r4, [sp, #32]
	ldr	r4, [sp, #20]
	str	r5, [r4, #44]
	ldr	r5, [sp, #32]
	cmp	r5, r2
	bge	.L244
	movs	r4, #0
	str	r4, [sp, #36]
	b	.L243
.L225:
	ldr	r4, [sp, #32]
	ldr	r5, [sp, #20]
	str	r4, [r5, #48]
	ldr	r4, [sp, #36]
	str	r4, [r5, #44]
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L219:
	ldr	r1, [r4, #36]
	mov	r5, r4
	ldr	r2, [r4, #32]
	subs	r2, r1, r2
	subs	r2, r2, #1
	str	r2, [sp, #44]
	b	.L220
.L244:
	ldr	r3, [fp, #332]
.L221:
	ldr	r2, [fp, #156]
	ldr	r1, [fp, #164]
	adds	r2, r2, #1
	cmp	r2, r3
	add	r1, r1, #1
	str	r1, [fp, #164]
	str	r2, [fp, #156]
	bcs	.L246
	mov	r0, fp
	bl	start_iMCU_row(PLT)
	movs	r0, #3
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L246:
	ldr	r3, [fp, #448]
	mov	r0, fp
	ldr	r3, [r3, #20]
	blx	r3
	movs	r0, #4
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	decompress_onepass, .-decompress_onepass
	.section	.text.consume_data_build_huffman_index_progressive,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	consume_data_build_huffman_index_progressive, %function
consume_data_build_huffman_index_progressive:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #340]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	fp, r0
	sub	sp, sp, #76
	mov	r4, r1
	cmp	r3, #0
	mov	r7, r2
	ldr	r10, [r0, #440]
	it	le
	movle	r3, #4
	ble	.L253
	movs	r3, #4
	mov	r6, r0
	movs	r5, #0
	mov	r0, r3
.L254:
	ldr	r2, [r6, #344]
	adds	r5, r5, #1
	adds	r6, r6, #4
	ldr	r1, [r2, #8]
	bl	jmin(PLT)
	ldr	r2, [fp, #340]
	cmp	r2, r5
	bgt	.L254
	mov	r3, r0
.L253:
	ldr	r5, [r4]
	add	r7, r7, r7, lsl #2
	ldr	r1, [r4, #16]
	ldr	r2, [r10, #52]
	ldr	r0, [fp, #360]
	mul	r5, r5, r3
	add	r1, r1, r7, lsl #3
	str	r2, [r1, #12]
	str	r1, [sp, #36]
	mov	r1, r5
	str	r5, [sp, #48]
	bl	jdiv_round_up(PLT)
	ldr	r7, [r10, #52]
	ldr	r1, [sp, #36]
	ldr	r5, [fp, #340]
	ldr	r6, [fp, #156]
	mul	r7, r7, r0
	ldr	r8, [r1, #36]
	str	r0, [r1, #8]
	str	r5, [r1, #4]
	add	r7, r7, r7, lsl #2
	lsls	r7, r7, #2
	mov	r0, r7
	bl	malloc(PLT)
	ldr	r3, [r4, #12]
	cmp	r5, #0
	str	r0, [r8, r6, lsl #2]
	ldr	r0, [sp, #36]
	add	r3, r3, r7
	ldr	r2, [r0, #36]
	str	r3, [r4, #12]
	ldr	r2, [r2, r6, lsl #2]
	str	r2, [sp, #44]
	ble	.L258
	add	r7, sp, #56
	mov	r5, fp
	movs	r4, #0
	movs	r6, #1
	mov	r8, r7
.L259:
	ldr	r3, [r5, #344]
	mov	r0, fp
	ldr	r7, [fp, #4]
	movs	r2, #0
	adds	r5, r5, #4
	ldr	r1, [r3, #4]
	ldr	r3, [r3, #12]
	adds	r1, r1, #24
	ldr	r1, [r10, r1, lsl #2]
	str	r6, [sp]
	ldr	r7, [r7, #32]
	blx	r7
	ldr	r3, [fp, #340]
	str	r0, [r8, r4, lsl #2]
	adds	r4, r4, #1
	cmp	r3, r4
	bgt	.L259
.L258:
	ldr	r2, [r10, #48]
	ldr	r1, [r10, #52]
	str	r2, [sp, #40]
	cmp	r2, r1
	bge	.L257
	add	r2, r2, #1073741824
	ldr	r3, [r10, #44]
	subs	r2, r2, #1
	lsls	r2, r2, #2
	str	r3, [sp, #28]
	str	r2, [sp, #32]
	add	r2, r10, #56
	str	r2, [sp, #52]
	mov	r2, fp
	ldr	r3, [fp, #360]
	mov	fp, r10
	mov	r10, r2
	ldr	r2, [sp, #28]
.L294:
	cmp	r3, r2
	bls	.L262
.L263:
	ldr	r2, [r10, #340]
	cmp	r2, #0
	ble	.L292
	movs	r3, #0
	str	r10, [sp, #24]
	mov	r4, r3
	str	r3, [sp, #20]
.L293:
	ldr	r3, [sp, #24]
	ldr	r6, [r3, #344]
	ldr	r3, [r6, #56]
	ldr	r1, [r6, #52]
	cmp	r3, #0
	ble	.L264
	ldr	r0, [sp, #20]
	add	r2, sp, #56
	ldr	r8, [sp, #32]
	lsl	r9, r1, #7
	movs	r7, #0
	ldr	r2, [r2, r0, lsl #2]
	ldr	r0, [sp, #28]
	add	r8, r8, r2
	mul	r9, r0, r9
	b	.L286
.L266:
	cmp	r1, #1
	itt	le
	movle	r4, r3
	ldrle	r3, [r6, #56]
	ble	.L265
	ldr	r0, [r10, #152]
	adds	r3, r3, #14
	str	r2, [fp, r3, lsl #2]
	add	ip, r4, #2
	add	r3, r5, #256
	cmp	r0, #0
	beq	.L301
.L268:
	cmp	r1, #2
	ble	.L300
	ldr	r0, [r10, #152]
	add	ip, ip, #14
	str	r3, [fp, ip, lsl #2]
	add	r2, r5, #384
	add	ip, r4, #3
	cmp	r0, #0
	beq	.L302
.L270:
	cmp	r1, #3
	ble	.L300
	ldr	r0, [r10, #152]
	add	ip, ip, #14
	str	r2, [fp, ip, lsl #2]
	add	r3, r5, #512
	add	ip, r4, #4
	cmp	r0, #0
	beq	.L303
.L272:
	cmp	r1, #4
	ble	.L300
	ldr	r0, [r10, #152]
	add	ip, ip, #14
	str	r3, [fp, ip, lsl #2]
	add	r2, r5, #640
	add	ip, r4, #5
	cmp	r0, #0
	beq	.L304
.L274:
	cmp	r1, #5
	ble	.L300
	ldr	r0, [r10, #152]
	add	ip, ip, #14
	str	r2, [fp, ip, lsl #2]
	add	r3, r5, #768
	add	ip, r4, #6
	cmp	r0, #0
	beq	.L305
.L276:
	cmp	r1, #6
	ble	.L300
	ldr	r0, [r10, #152]
	add	ip, ip, #14
	str	r3, [fp, ip, lsl #2]
	add	r2, r5, #896
	add	ip, r4, #7
	cmp	r0, #0
	beq	.L306
.L278:
	cmp	r1, #7
	ble	.L300
	ldr	r0, [r10, #152]
	add	ip, ip, #14
	str	r2, [fp, ip, lsl #2]
	add	r3, r5, #1024
	add	ip, r4, #8
	cmp	r0, #0
	beq	.L307
.L280:
	cmp	r1, #8
	ble	.L300
	ldr	r0, [r10, #152]
	add	ip, ip, #14
	str	r3, [fp, ip, lsl #2]
	add	r5, r5, #1152
	add	r2, r4, #9
	cmp	r0, #0
	beq	.L308
.L282:
	cmp	r1, #9
	itt	le
	movle	r4, r2
	ldrle	r3, [r6, #56]
	ble	.L265
	ldr	r3, [r10, #152]
	adds	r2, r2, #14
	str	r5, [fp, r2, lsl #2]
	cmp	r3, #0
	beq	.L309
.L284:
	ldr	r3, [r6, #56]
	adds	r4, r4, #10
.L265:
	adds	r7, r7, #1
	cmp	r7, r3
	bge	.L310
.L286:
	ldr	r5, [r8, #4]!
	cmp	r1, #0
	add	r5, r5, r9
	ble	.L265
	ldr	r0, [r10, #152]
	add	r3, r4, #14
	str	r5, [fp, r3, lsl #2]
	add	r2, r5, #128
	adds	r3, r4, #1
	cmp	r0, #0
	bne	.L266
	movs	r1, #128
	mov	r0, r5
	str	r2, [sp, #12]
	str	r3, [sp, #16]
	bl	jzero_far(PLT)
	ldr	r1, [r6, #52]
	ldr	r3, [sp, #16]
	ldr	r2, [sp, #12]
	b	.L266
.L300:
	ldr	r3, [r6, #56]
	adds	r7, r7, #1
	mov	r4, ip
	cmp	r7, r3
	blt	.L286
.L310:
	ldr	r2, [r10, #340]
.L264:
	ldr	r3, [sp, #20]
	adds	r3, r3, #1
	str	r3, [sp, #20]
	ldr	r3, [sp, #24]
	adds	r3, r3, #4
	str	r3, [sp, #24]
	ldr	r3, [sp, #20]
	cmp	r3, r2
	blt	.L293
.L292:
	ldr	r0, [sp, #28]
	ldr	r1, [sp, #48]
	bl	__aeabi_uidivmod(PLT)
	cmp	r1, #0
	beq	.L311
.L288:
	ldr	r3, [r10, #456]
	mov	r0, r10
	ldr	r1, [sp, #52]
	ldr	r3, [r3, #4]
	blx	r3
	cmp	r0, #0
	beq	.L312
	ldr	r2, [sp, #28]
	ldr	r3, [r10, #360]
	adds	r2, r2, #1
	cmp	r3, r2
	str	r2, [sp, #28]
	bhi	.L263
	ldr	r1, [fp, #52]
.L262:
	ldr	r2, [sp, #40]
	movs	r0, #0
	str	r0, [fp, #44]
	adds	r2, r2, #1
	str	r2, [sp, #40]
	ldr	r2, [sp, #32]
	adds	r2, r2, #4
	str	r2, [sp, #32]
	ldr	r2, [sp, #40]
	cmp	r2, r1
	bge	.L298
	mov	r2, r0
	str	r0, [sp, #28]
	b	.L294
.L301:
	movs	r1, #128
	mov	r0, r2
	str	r3, [sp, #16]
	str	ip, [sp, #8]
	bl	jzero_far(PLT)
	ldr	r1, [r6, #52]
	ldr	ip, [sp, #8]
	ldr	r3, [sp, #16]
	b	.L268
.L302:
	movs	r1, #128
	mov	r0, r3
	str	r2, [sp, #12]
	str	ip, [sp, #8]
	bl	jzero_far(PLT)
	ldr	r1, [r6, #52]
	ldr	ip, [sp, #8]
	ldr	r2, [sp, #12]
	b	.L270
.L306:
	movs	r1, #128
	mov	r0, r3
	str	r2, [sp, #12]
	str	ip, [sp, #8]
	bl	jzero_far(PLT)
	ldr	r1, [r6, #52]
	ldr	ip, [sp, #8]
	ldr	r2, [sp, #12]
	b	.L278
.L305:
	movs	r1, #128
	mov	r0, r2
	str	r3, [sp, #16]
	str	ip, [sp, #8]
	bl	jzero_far(PLT)
	ldr	r1, [r6, #52]
	ldr	ip, [sp, #8]
	ldr	r3, [sp, #16]
	b	.L276
.L304:
	movs	r1, #128
	mov	r0, r3
	str	r2, [sp, #12]
	str	ip, [sp, #8]
	bl	jzero_far(PLT)
	ldr	r1, [r6, #52]
	ldr	ip, [sp, #8]
	ldr	r2, [sp, #12]
	b	.L274
.L303:
	movs	r1, #128
	mov	r0, r2
	str	r3, [sp, #16]
	str	ip, [sp, #8]
	bl	jzero_far(PLT)
	ldr	r1, [r6, #52]
	ldr	ip, [sp, #8]
	ldr	r3, [sp, #16]
	b	.L272
.L309:
	movs	r1, #128
	mov	r0, r5
	bl	jzero_far(PLT)
	ldr	r1, [r6, #52]
	b	.L284
.L308:
	movs	r1, #128
	mov	r0, r3
	str	r2, [sp, #12]
	bl	jzero_far(PLT)
	ldr	r1, [r6, #52]
	ldr	r2, [sp, #12]
	b	.L282
.L307:
	movs	r1, #128
	mov	r0, r2
	str	r3, [sp, #16]
	str	ip, [sp, #8]
	bl	jzero_far(PLT)
	ldr	r1, [r6, #52]
	ldr	ip, [sp, #8]
	ldr	r3, [sp, #16]
	b	.L280
.L311:
	ldr	r1, [sp, #44]
	ldr	r3, [r10, #456]
	mov	r0, r1
	adds	r0, r0, #20
	ldr	r3, [r3, #16]
	str	r0, [sp, #44]
	mov	r0, r10
	blx	r3
	b	.L288
.L312:
	ldr	r2, [sp, #40]
	ldr	r3, [sp, #28]
	str	r2, [fp, #48]
	str	r3, [fp, #44]
	add	sp, sp, #76
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L298:
	mov	fp, r10
.L257:
	ldr	r3, [fp, #456]
	mov	r0, fp
	ldr	r1, [sp, #36]
	ldr	r3, [r3, #16]
	adds	r1, r1, #16
	blx	r3
	ldr	r3, [fp, #156]
	ldr	r2, [fp, #332]
	adds	r3, r3, #1
	cmp	r3, r2
	str	r3, [fp, #156]
	bcs	.L313
	mov	r0, fp
	bl	start_iMCU_row(PLT)
	movs	r0, #3
	add	sp, sp, #76
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L313:
	ldr	r3, [fp, #448]
	mov	r0, fp
	ldr	r3, [r3, #20]
	blx	r3
	movs	r0, #4
	add	sp, sp, #76
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	consume_data_build_huffman_index_progressive, .-consume_data_build_huffman_index_progressive
	.section	.text.consume_data_multi_scan,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	consume_data_multi_scan, %function
consume_data_multi_scan:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
	mov	r4, r0
	ldr	r3, [r0, #456]
	ldr	r8, [r0, #156]
	ldr	r6, [r3, #24]
	bl	jinit_phuff_decoder(PLT)
	ldr	r3, [r6, #4]
	cmp	r3, #0
	ble	.L316
	movs	r7, #0
	mov	r5, r7
	mov	r9, r7
.L317:
	ldr	r3, [r4, #448]
	mov	r0, r4
	ldr	r3, [r3, #20]
	blx	r3
	ldr	r3, [r6, #16]
	mov	r0, r4
	ldr	r1, [r3, r7]
	adds	r7, r7, #40
	bl	jset_input_stream_position(PLT)
	ldr	r3, [r4, #448]
	mov	r2, r5
	mov	r1, r6
	mov	r0, r4
	str	r8, [r4, #164]
	ldr	r3, [r3, #8]
	str	r9, [r4, #428]
	blx	r3
	ldr	r3, [r4, #456]
	mov	r0, r4
	str	r5, [r4, #152]
	adds	r5, r5, #1
	str	r8, [r4, #156]
	str	r6, [r3, #24]
	bl	consume_data(PLT)
	ldr	r3, [r6, #4]
	cmp	r3, r5
	bgt	.L317
.L316:
	movs	r3, #0
	add	r2, r8, #1
	str	r2, [r4, #156]
	movs	r0, #3
	str	r3, [r4, #152]
	str	r3, [r4, #160]
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
	.size	consume_data_multi_scan, .-consume_data_multi_scan
	.global	__aeabi_idiv
	.section	.text.decompress_smooth_data,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	decompress_smooth_data, %function
decompress_smooth_data:
	@ args = 0, pretend = 0, frame = 304
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #316
	ldr	r4, [r0, #440]
	mov	r6, r0
	str	r0, [sp, #80]
	str	r4, [sp, #172]
	str	r1, [sp, #176]
	ldr	r4, [r0, #332]
	b	.L321
.L325:
	ldr	r1, [r6, #448]
	ldr	r5, [r1, #28]
	cbnz	r5, .L327
	cmp	r3, r2
	bne	.L322
	ldr	r5, [r6, #164]
	ldr	r2, [r6, #412]
	ldr	r3, [r6, #156]
	cmp	r2, #0
	ite	ne
	movne	r2, r5
	addeq	r2, r5, #1
	cmp	r3, r2
	bhi	.L323
.L322:
	ldr	r3, [r1]
	blx	r3
	cmp	r0, #0
	beq	.L324
.L321:
	ldr	r3, [r6, #152]
	mov	r0, r6
	ldr	r2, [r6, #160]
	cmp	r3, r2
	ble	.L325
.L327:
	ldr	r6, [sp, #80]
	ldr	r5, [r6, #164]
.L323:
	ldr	r6, [sp, #80]
	ldr	r2, [r6, #40]
	ldr	r7, [r6, #224]
	cmp	r2, #0
	str	r7, [sp, #28]
	ble	.L328
	ldr	r7, [sp, #172]
	subs	r4, r4, #1
	movs	r6, #0
	str	r4, [sp, #180]
	add	r4, sp, #184
	str	r6, [sp, #160]
	str	r7, [sp, #168]
	str	r4, [sp, #44]
.L363:
	ldr	r6, [sp, #28]
	ldr	r3, [r6, #48]
	pld	[r6, #132]
	cmp	r3, #0
	beq	.L329
	ldr	r7, [sp, #180]
	cmp	r7, r5
	bls	.L330
	ldr	r4, [r6, #12]
	movs	r6, #0
	str	r6, [sp, #152]
	str	r4, [sp, #148]
	lsls	r3, r4, #1
.L331:
	ldr	r6, [sp, #168]
	ldr	r1, [r6, #96]
	cmp	r5, #0
	beq	.L332
.L398:
	subs	r2, r5, #1
	ldr	r5, [sp, #80]
	movs	r6, #0
	add	r3, r3, r4
	mul	r2, r2, r4
	ldr	r0, [r5, #4]
	str	r6, [sp]
	ldr	r4, [r0, #32]
	mov	r0, r5
	blx	r4
	ldr	r7, [sp, #28]
	str	r6, [sp, #156]
	ldr	r3, [r7, #12]
	add	r0, r0, r3, lsl #2
.L333:
	ldr	r4, [sp, #80]
	ldr	r5, [sp, #160]
	ldr	r6, [sp, #172]
	ldr	r1, [r4, #460]
	ldr	r3, [r7, #76]
	ldr	r2, [r6, #136]
	add	r4, r5, r5, lsl #1
	ldr	r6, [sp, #176]
	pld	[r7, #160]
	add	r1, r1, r5, lsl #2
	ldr	r7, [sp, #148]
	ldr	r5, [r6, r5, lsl #2]
	add	r9, r2, r4, lsl #3
	ldr	r1, [r1, #4]
	cmp	r7, #0
	ldrh	r6, [r3]
	str	r5, [sp, #68]
	str	r1, [sp, #84]
	ldrh	r5, [r3, #2]
	ldrh	r4, [r3, #16]
	ldrh	r1, [r3, #32]
	ldrh	r2, [r3, #18]
	ldrh	r3, [r3, #4]
	ble	.L396
	add	r7, r6, r6, lsl #3
	add	r6, r6, r6, lsl #2
	str	r6, [sp, #128]
	lsls	r6, r5, #7
	lsls	r5, r5, #8
	str	r7, [sp, #88]
	str	r6, [sp, #104]
	lsls	r7, r7, #2
	lsls	r6, r1, #7
	str	r5, [sp, #108]
	lsls	r5, r4, #7
	str	r7, [sp, #92]
	lsls	r4, r4, #8
	lsls	r7, r2, #7
	str	r6, [sp, #120]
	lsls	r1, r1, #8
	ldr	r6, [sp, #148]
	lsls	r2, r2, #8
	str	r5, [sp, #112]
	movs	r5, #0
	str	r4, [sp, #116]
	lsls	r4, r3, #7
	str	r7, [sp, #132]
	lsls	r3, r3, #8
	mov	r7, r5
	str	r1, [sp, #124]
	subs	r0, r0, #4
	subs	r6, r6, #1
	str	r2, [sp, #136]
	str	r4, [sp, #140]
	str	r3, [sp, #144]
	str	r0, [sp, #100]
	str	r5, [sp, #96]
	str	r6, [sp, #164]
.L362:
	ldr	r4, [sp, #100]
	ldr	r2, [sp, #156]
	ldr	r3, [r4, #4]!
	cmp	r7, #0
	ite	ne
	movne	r2, #0
	andeq	r2, r2, #1
	str	r4, [sp, #100]
	cmp	r2, #0
	bne	.L365
	ldr	r5, [r4, #-4]
	str	r5, [sp, #76]
.L335:
	ldr	r6, [sp, #152]
	cbz	r6, .L336
	ldr	r7, [sp, #164]
	ldr	r4, [sp, #96]
	cmp	r7, r4
	beq	.L366
.L336:
	ldr	r5, [sp, #100]
	ldr	r5, [r5, #4]
	mov	r7, r5
	str	r5, [sp, #72]
.L337:
	ldr	r6, [sp, #76]
	mov	r8, #0
	ldrsh	r10, [r7], #128
	mov	r5, r8
	ldrsh	fp, [r3]
	ldrsh	r4, [r6], #128
	str	r7, [sp, #52]
	str	r8, [sp, #12]
	str	r6, [sp, #56]
	ldr	r6, [sp, #28]
	str	r4, [sp, #20]
	mov	r4, r3
	ldr	r7, [sp, #56]
	ldr	r3, [r6, #28]
	ldr	r6, [sp, #20]
	str	r10, [sp, #60]
	subs	r3, r3, #1
	str	fp, [sp, #48]
	str	r6, [sp, #64]
	ldr	r6, [sp, #52]
	str	r3, [sp, #40]
	mov	r8, r6
	b	.L360
.L397:
	ldr	r6, [sp, #20]
	str	r10, [sp, #60]
	str	fp, [sp, #48]
	ldr	r10, [sp, #36]
	ldr	fp, [sp, #24]
	str	r6, [sp, #64]
	ldr	r6, [sp, #32]
	str	r6, [sp, #20]
.L360:
	mov	r0, r4
	add	r1, sp, #184
	movs	r2, #1
	bl	jcopy_block_row(PLT)
	ldr	r6, [sp, #40]
	cmp	r6, r5
	bls	.L367
	ldr	r6, [sp, #76]
	pld	[r4, #256]
	subs	r2, r7, r6
	ldr	r6, [sp, #72]
	adds	r7, r7, #128
	pld	[r7]
	rsb	r3, r6, r8
	ldr	r6, [sp, #56]
	add	r8, r8, #128
	pld	[r8]
	add	r2, r2, r6
	ldr	r6, [sp, #52]
	ldrsh	r2, [r2, #-128]
	add	r3, r3, r6
	ldrsh	r6, [r4, #128]
	ldrsh	r3, [r3, #-128]
	str	r2, [sp, #32]
	str	r6, [sp, #24]
	str	r3, [sp, #36]
.L338:
	ldr	r3, [r9, #4]
	cbz	r3, .L339
	ldrsh	r2, [sp, #186]
	cbnz	r2, .L339
	ldr	r6, [sp, #48]
	ldr	r1, [sp, #24]
	subs	r0, r6, r1
	ldr	r6, [sp, #92]
	mul	r0, r0, r6
	ldr	r6, [sp, #104]
	cmp	r0, #0
	blt	.L340
	add	r0, r0, r6
	ldr	r1, [sp, #108]
	str	r3, [sp, #16]
	bl	__aeabi_idiv(PLT)
	ldr	r3, [sp, #16]
	cmp	r3, #0
	ble	.L341
	movs	r1, #1
	lsl	r3, r1, r3
	cmp	r0, r3
	it	ge
	addge	r0, r3, #-1
.L341:
	strh	r0, [sp, #186]	@ movhi
.L339:
	ldr	r3, [r9, #8]
	cbz	r3, .L343
	ldrsh	r2, [sp, #200]
	cbnz	r2, .L343
	ldr	r6, [sp, #20]
	rsb	r0, r10, r6
	ldr	r6, [sp, #92]
	mul	r0, r0, r6
	ldr	r6, [sp, #112]
	cmp	r0, #0
	blt	.L344
	add	r0, r0, r6
	ldr	r1, [sp, #116]
	str	r3, [sp, #16]
	bl	__aeabi_idiv(PLT)
	ldr	r3, [sp, #16]
	cmp	r3, #0
	ble	.L345
	movs	r1, #1
	lsl	r3, r1, r3
	cmp	r0, r3
	it	ge
	addge	r0, r3, #-1
.L345:
	strh	r0, [sp, #200]	@ movhi
.L343:
	ldr	r3, [r9, #12]
	cbz	r3, .L347
	ldrsh	r2, [sp, #216]
	cbnz	r2, .L347
	ldr	r0, [sp, #20]
	ldr	r6, [sp, #88]
	add	r0, r0, r10
	sub	r0, r0, fp, lsl #1
	mul	r0, r0, r6
	ldr	r6, [sp, #120]
	cmp	r0, #0
	blt	.L348
	add	r0, r0, r6
	ldr	r1, [sp, #124]
	str	r3, [sp, #16]
	bl	__aeabi_idiv(PLT)
	ldr	r3, [sp, #16]
	cmp	r3, #0
	ble	.L349
	movs	r1, #1
	lsl	r3, r1, r3
	cmp	r0, r3
	it	ge
	addge	r0, r3, #-1
.L349:
	strh	r0, [sp, #216]	@ movhi
.L347:
	ldr	r3, [r9, #16]
	cbz	r3, .L351
	ldrsh	r2, [sp, #202]
	cbnz	r2, .L351
	ldr	r6, [sp, #64]
	ldr	r1, [sp, #32]
	subs	r0, r6, r1
	ldr	r6, [sp, #60]
	subs	r0, r0, r6
	ldr	r6, [sp, #36]
	add	r0, r0, r6
	ldr	r6, [sp, #128]
	mul	r0, r0, r6
	ldr	r6, [sp, #132]
	cmp	r0, #0
	blt	.L352
	add	r0, r0, r6
	ldr	r1, [sp, #136]
	str	r3, [sp, #16]
	bl	__aeabi_idiv(PLT)
	ldr	r3, [sp, #16]
	cmp	r3, #0
	ble	.L353
	movs	r1, #1
	lsl	r3, r1, r3
	cmp	r0, r3
	it	ge
	addge	r0, r3, #-1
.L353:
	strh	r0, [sp, #202]	@ movhi
.L351:
	ldr	r3, [r9, #20]
	cbz	r3, .L355
	ldrsh	r2, [sp, #188]
	cbnz	r2, .L355
	ldr	r6, [sp, #24]
	ldr	r0, [sp, #48]
	add	r0, r0, r6
	ldr	r6, [sp, #88]
	sub	r0, r0, fp, lsl #1
	mul	r0, r0, r6
	ldr	r6, [sp, #140]
	cmp	r0, #0
	blt	.L356
	add	r0, r0, r6
	ldr	r1, [sp, #144]
	str	r3, [sp, #16]
	bl	__aeabi_idiv(PLT)
	ldr	r3, [sp, #16]
	cmp	r3, #0
	ble	.L357
	movs	r1, #1
	lsl	r3, r1, r3
	cmp	r0, r3
	it	ge
	addge	r0, r3, #-1
.L357:
	strh	r0, [sp, #188]	@ movhi
.L355:
	ldr	r6, [sp, #12]
	add	r2, sp, #184
	ldr	r3, [sp, #68]
	adds	r5, r5, #1
	ldr	r0, [sp, #80]
	adds	r4, r4, #128
	str	r6, [sp]
	ldr	r1, [sp, #28]
	ldr	r6, [sp, #84]
	blx	r6
	ldr	r6, [sp, #28]
	ldr	r3, [r6, #36]
	ldr	r6, [sp, #12]
	add	r6, r6, r3
	str	r6, [sp, #12]
	ldr	r6, [sp, #40]
	cmp	r6, r5
	bcs	.L397
	ldr	r7, [sp, #96]
	ldr	r4, [sp, #68]
	ldr	r5, [sp, #148]
	adds	r7, r7, #1
	str	r7, [sp, #96]
	add	r4, r4, r3, lsl #2
	cmp	r7, r5
	str	r4, [sp, #68]
	bne	.L362
	ldr	r6, [sp, #80]
	ldr	r2, [r6, #40]
	ldr	r5, [r6, #164]
.L329:
	ldr	r7, [sp, #160]
	ldr	r4, [sp, #28]
	ldr	r6, [sp, #168]
	adds	r7, r7, #1
	cmp	r7, r2
	add	r4, r4, #84
	add	r6, r6, #4
	str	r7, [sp, #160]
	str	r4, [sp, #28]
	str	r6, [sp, #168]
	blt	.L363
.L328:
	ldr	r4, [sp, #80]
	adds	r5, r5, #1
	ldr	r0, [r4, #332]
	str	r5, [r4, #164]
	cmp	r5, r0
	ite	cs
	movcs	r0, #4
	movcc	r0, #3
.L324:
	add	sp, sp, #316
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L352:
	subs	r0, r6, r0
	ldr	r1, [sp, #136]
	str	r3, [sp, #16]
	bl	__aeabi_idiv(PLT)
	ldr	r3, [sp, #16]
	cmp	r3, #0
	ble	.L354
	movs	r1, #1
	lsl	r3, r1, r3
	cmp	r0, r3
	it	ge
	addge	r0, r3, #-1
.L354:
	negs	r0, r0
	b	.L353
.L348:
	subs	r0, r6, r0
	ldr	r1, [sp, #124]
	str	r3, [sp, #16]
	bl	__aeabi_idiv(PLT)
	ldr	r3, [sp, #16]
	cmp	r3, #0
	ble	.L350
	movs	r1, #1
	lsl	r3, r1, r3
	cmp	r0, r3
	it	ge
	addge	r0, r3, #-1
.L350:
	negs	r0, r0
	b	.L349
.L344:
	subs	r0, r6, r0
	ldr	r1, [sp, #116]
	str	r3, [sp, #16]
	bl	__aeabi_idiv(PLT)
	ldr	r3, [sp, #16]
	cmp	r3, #0
	ble	.L346
	movs	r1, #1
	lsl	r3, r1, r3
	cmp	r0, r3
	it	ge
	addge	r0, r3, #-1
.L346:
	negs	r0, r0
	b	.L345
.L340:
	subs	r0, r6, r0
	ldr	r1, [sp, #108]
	str	r3, [sp, #16]
	bl	__aeabi_idiv(PLT)
	ldr	r3, [sp, #16]
	cmp	r3, #0
	ble	.L342
	movs	r1, #1
	lsl	r3, r1, r3
	cmp	r0, r3
	it	ge
	addge	r0, r3, #-1
.L342:
	negs	r0, r0
	b	.L341
.L356:
	subs	r0, r6, r0
	ldr	r1, [sp, #144]
	str	r3, [sp, #16]
	bl	__aeabi_idiv(PLT)
	ldr	r3, [sp, #16]
	cmp	r3, #0
	ble	.L358
	movs	r1, #1
	lsl	r3, r1, r3
	cmp	r0, r3
	it	ge
	addge	r0, r3, #-1
.L358:
	negs	r0, r0
	b	.L357
.L365:
	str	r3, [sp, #76]
	b	.L335
.L330:
	ldr	r7, [sp, #28]
	ldr	r4, [r7, #12]
	ldr	r0, [r7, #32]
	mov	r1, r4
	bl	__aeabi_uidivmod(PLT)
	str	r1, [sp, #148]
	cbz	r1, .L364
	movs	r6, #1
	mov	r3, r1
	str	r6, [sp, #152]
	ldr	r6, [sp, #168]
	ldr	r1, [r6, #96]
	cmp	r5, #0
	bne	.L398
.L332:
	ldr	r6, [sp, #80]
	movs	r7, #1
	mov	r2, r5
	str	r7, [sp, #156]
	ldr	r4, [r6, #4]
	mov	r0, r6
	str	r5, [sp]
	ldr	r4, [r4, #32]
	blx	r4
	ldr	r7, [sp, #28]
	b	.L333
.L364:
	movs	r7, #1
	mov	r3, r4
	str	r4, [sp, #148]
	str	r7, [sp, #152]
	b	.L331
.L396:
	ldr	r4, [sp, #80]
	ldr	r2, [r4, #40]
	ldr	r5, [r4, #164]
	b	.L329
.L367:
	ldr	r6, [sp, #20]
	adds	r7, r7, #128
	add	r8, r8, #128
	str	r10, [sp, #36]
	str	fp, [sp, #24]
	str	r6, [sp, #32]
	b	.L338
.L366:
	str	r3, [sp, #72]
	mov	r7, r3
	b	.L337
	.size	decompress_smooth_data, .-decompress_smooth_data
	.section	.text.start_input_pass,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	start_input_pass, %function
start_input_pass:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #340]
	movs	r3, #0
	str	r3, [r0, #156]
	ldr	r3, [r0, #440]
	cmp	r2, #1
	ble	.L400
	movs	r2, #1
	str	r2, [r3, #52]
	movs	r2, #0
	str	r2, [r3, #44]
	str	r2, [r3, #48]
	bx	lr
.L400:
	ldr	r2, [r0, #332]
	cmp	r2, #1
	ldr	r2, [r0, #344]
	ite	ne
	ldrne	r2, [r2, #12]
	ldreq	r2, [r2, #72]
	str	r2, [r3, #52]
	movs	r2, #0
	str	r2, [r3, #44]
	str	r2, [r3, #48]
	bx	lr
	.size	start_input_pass, .-start_input_pass
	.section	.text.consume_data_build_huffman_index_baseline,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	consume_data_build_huffman_index_baseline, %function
consume_data_build_huffman_index_baseline:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	add	r2, r2, r2, lsl #2
	ldr	r3, [r1, #16]
	mov	r6, r1
	mov	r5, r0
	ldr	r8, [r0, #440]
	ldr	r1, [r1]
	add	r4, r3, r2, lsl #3
	ldr	r0, [r0, #360]
	ldr	r7, [r8, #52]
	str	r7, [r4, #12]
	bl	jdiv_round_up(PLT)
	mul	r0, r0, r7
	ldr	r9, [r4, #36]
	ldr	r7, [r5, #156]
	add	r0, r0, r0, lsl #2
	lsl	r10, r0, #2
	mov	r0, r10
	bl	malloc(PLT)
	ldr	r3, [r6, #12]
	ldr	r2, [r8, #52]
	str	r0, [r9, r7, lsl #2]
	ldr	r9, [r8, #48]
	add	r3, r3, r10
	ldr	r1, [r4, #36]
	str	r3, [r6, #12]
	cmp	r9, r2
	ldr	r7, [r1, r7, lsl #2]
	bge	.L413
	ldr	r4, [r8, #44]
	mov	r10, #0
	ldr	r3, [r5, #360]
.L414:
	cmp	r3, r4
	bhi	.L412
	b	.L407
.L408:
	ldr	r3, [r5, #456]
	mov	r0, r5
	ldr	r3, [r3, #8]
	blx	r3
	cbz	r0, .L420
.L409:
	ldr	r3, [r5, #360]
	adds	r4, r4, #1
	cmp	r3, r4
	bls	.L421
.L412:
	mov	r0, r4
	ldr	r1, [r6]
	bl	__aeabi_uidivmod(PLT)
	cmp	r1, #0
	bne	.L408
	ldr	r3, [r5, #456]
	mov	r1, r7
	mov	r0, r5
	adds	r7, r7, #20
	ldr	r3, [r3, #16]
	blx	r3
	ldr	r3, [r5, #456]
	mov	r0, r5
	ldr	r3, [r3, #8]
	blx	r3
	cmp	r0, #0
	bne	.L409
.L420:
	str	r9, [r8, #48]
	str	r4, [r8, #44]
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L421:
	ldr	r2, [r8, #52]
.L407:
	add	r9, r9, #1
	str	r10, [r8, #44]
	cmp	r9, r2
	bge	.L413
	movs	r4, #0
	b	.L414
.L413:
	ldr	r3, [r5, #156]
	ldr	r1, [r5, #332]
	adds	r3, r3, #1
	cmp	r3, r1
	str	r3, [r5, #156]
	bcs	.L422
	ldr	r0, [r5, #340]
	ldr	r2, [r5, #440]
	cmp	r0, #1
	ble	.L415
	movs	r3, #1
	str	r3, [r2, #52]
.L416:
	movs	r3, #0
	movs	r0, #3
	str	r3, [r2, #44]
	str	r3, [r2, #48]
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L422:
	ldr	r3, [r5, #448]
	mov	r0, r5
	ldr	r3, [r3, #20]
	blx	r3
	movs	r0, #4
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L415:
	subs	r1, r1, #1
	cmp	r3, r1
	ldr	r3, [r5, #344]
	ite	cc
	ldrcc	r3, [r3, #12]
	ldrcs	r3, [r3, #72]
	str	r3, [r2, #52]
	b	.L416
	.size	consume_data_build_huffman_index_baseline, .-consume_data_build_huffman_index_baseline
	.section	.text.jinit_d_coef_controller,"ax",%progbits
	.align	2
	.global	jinit_d_coef_controller
	.thumb
	.thumb_func
	.type	jinit_d_coef_controller, %function
jinit_d_coef_controller:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #4]
	movs	r2, #140
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r0
	sub	sp, sp, #44
	mov	r5, r1
	movs	r1, #1
	ldr	r3, [r3]
	blx	r3
	ldr	r2, [r4, #228]
	mov	r6, r0
	ldr	r1, .L461
	movs	r3, #0
	ldr	r0, .L461+4
	str	r6, [r4, #440]
.LPIC18:
	add	r1, pc
	str	r3, [r6, #24]
.LPIC19:
	add	r0, pc
	str	r1, [r6]
	str	r0, [r6, #12]
	str	r3, [r6, #28]
	str	r3, [r6, #40]
	str	r3, [r6, #136]
	cmp	r2, #0
	beq	.L424
	ldr	r2, [r4, #232]
	cmp	r2, #0
	beq	.L425
	ldr	r2, [r4, #40]
	ldr	r5, [r4, #224]
	cmp	r2, r3
	itt	gt
	movgt	r9, r3
	movgt	r8, r6
	ble	.L428
.L429:
	ldr	r3, [r4, #4]
	add	r9, r9, #1
	ldr	r1, [r5, #8]
	add	r8, r8, #4
	ldr	r0, [r5, #28]
	adds	r5, r5, #84
	ldr	r10, [r3, #20]
	ldr	fp, [r5, #-72]
	bl	jround_up(PLT)
	ldr	r7, [r5, #-72]
	movs	r1, #1
	mov	r3, r0
	str	fp, [sp, #4]
	mov	r0, r4
	mov	r2, r1
	str	r7, [sp]
	blx	r10
	str	r0, [r8, #92]
	ldr	r3, [r4, #40]
	cmp	r3, r9
	bgt	.L429
.L428:
	ldr	r0, .L461+8
	add	r3, r6, #96
	ldr	r1, .L461+12
	ldr	r2, .L461+16
.LPIC20:
	add	r0, pc
	str	r3, [r6, #20]
.LPIC21:
	add	r1, pc
	str	r0, [r6, #8]
.LPIC22:
	add	r2, pc
	str	r1, [r6, #4]
	str	r2, [r6, #16]
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L424:
	cmp	r5, #0
	beq	.L435
	ldr	r3, [r4, #40]
	ldr	r5, [r4, #224]
	cmp	r3, #0
	itt	gt
	movgt	r9, r2
	movgt	r8, r6
	ble	.L438
.L439:
	ldr	r3, [r4, #232]
	add	r9, r9, #1
	ldr	r7, [r5, #12]
	cbz	r3, .L437
	add	r7, r7, r7, lsl #1
.L437:
	ldr	r3, [r4, #4]
	adds	r5, r5, #84
	ldr	r1, [r5, #-76]
	add	r8, r8, #4
	ldr	r0, [r5, #-56]
	ldr	r10, [r3, #20]
	bl	jround_up(PLT)
	ldr	r1, [r5, #-72]
	mov	fp, r0
	ldr	r0, [r5, #-52]
	bl	jround_up(PLT)
	movs	r1, #1
	str	r0, [sp]
	mov	r3, fp
	str	r7, [sp, #4]
	mov	r2, r1
	mov	r0, r4
	blx	r10
	str	r0, [r8, #92]
	ldr	r3, [r4, #40]
	cmp	r3, r9
	bgt	.L439
.L438:
	ldr	r2, .L461+20
	add	r1, r6, #96
	ldr	r3, .L461+24
	str	r1, [r6, #20]
.LPIC26:
	add	r2, pc
.LPIC27:
	add	r3, pc
	str	r2, [r6, #4]
	str	r3, [r6, #16]
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L425:
	ldr	r3, [r4, #4]
	mov	r2, #1280
	mov	r0, r4
	movs	r1, #1
	ldr	r3, [r3, #4]
	blx	r3
	sbfx	r2, r6, #2, #1
	ands	r2, r2, #3
	beq	.L445
	cmp	r2, #1
	str	r0, [r6, #56]
	bls	.L446
	cmp	r2, #2
	add	r3, r0, #128
	str	r3, [r6, #60]
	bls	.L447
	add	r3, r0, #256
	movs	r7, #7
	str	r3, [r6, #64]
	movs	r3, #3
.L430:
	adds	r5, r3, #1
	adds	r4, r3, #2
	adds	r1, r3, #3
	str	r5, [sp, #28]
	str	r4, [sp, #32]
	add	r5, r2, #14
	str	r1, [sp, #36]
	rsb	r2, r2, #10
	str	r3, [sp, #24]
	lsrs	r4, r2, #2
	vldr	d16, [sp, #24]
	vldr	d17, [sp, #32]
	add	r5, r6, r5, lsl #2
	vmov.i32	q11, #4  @ v4si
	cmp	r4, #1
	vshl.i32	q10, q8, #7
	lsl	r1, r4, #2
	vdup.32	q9, r0
	vadd.i32	q10, q9, q10
	vadd.i32	q8, q8, q11
	vst1.64	{d20-d21}, [r5:64]
	bls	.L432
	vshl.i32	q8, q8, #7
	vadd.i32	q9, q9, q8
	vstr	d18, [r5, #16]
	vstr	d19, [r5, #24]
.L432:
	cmp	r2, r1
	add	r3, r3, r1
	sub	r7, r7, r1
	beq	.L433
	add	r4, r0, r3, lsl #7
	cmp	r7, #1
	add	r2, r3, #14
	add	r1, r3, #1
	str	r4, [r6, r2, lsl #2]
	beq	.L433
	cmp	r7, #2
	add	r4, r3, #2
	add	r1, r0, r1, lsl #7
	it	ne
	addne	r0, r0, r4, lsl #7
	add	r2, r3, #15
	it	ne
	addne	r3, r3, #16
	str	r1, [r6, r2, lsl #2]
	it	ne
	strne	r0, [r6, r3, lsl #2]
.L433:
	ldr	r0, .L461+28
	movs	r3, #0
	ldr	r1, .L461+32
	ldr	r2, .L461+36
.LPIC23:
	add	r0, pc
	str	r3, [r6, #20]
.LPIC24:
	add	r1, pc
	str	r0, [r6, #8]
.LPIC25:
	add	r2, pc
	str	r1, [r6, #4]
	str	r2, [r6, #16]
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L435:
	ldr	r3, [r4, #4]
	mov	r2, #1280
	mov	r0, r4
	movs	r1, #1
	ldr	r3, [r3, #4]
	blx	r3
	sbfx	r2, r6, #2, #1
	ands	r2, r2, #3
	beq	.L448
	cmp	r2, #1
	str	r0, [r6, #56]
	bls	.L449
	cmp	r2, #2
	add	r3, r0, #128
	str	r3, [r6, #60]
	bls	.L450
	add	r3, r0, #256
	movs	r7, #7
	str	r3, [r6, #64]
	movs	r3, #3
.L440:
	adds	r5, r3, #1
	adds	r4, r3, #2
	adds	r1, r3, #3
	str	r5, [sp, #12]
	str	r4, [sp, #16]
	add	r5, r2, #14
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
	bls	.L442
	vshl.i32	q8, q8, #7
	vadd.i32	q9, q9, q8
	vstr	d18, [r5, #16]
	vstr	d19, [r5, #24]
.L442:
	cmp	r2, r1
	add	r3, r3, r1
	sub	r7, r7, r1
	beq	.L443
	add	r4, r0, r3, lsl #7
	cmp	r7, #1
	add	r2, r3, #14
	add	r1, r3, #1
	str	r4, [r6, r2, lsl #2]
	beq	.L443
	cmp	r7, #2
	add	r4, r3, #2
	add	r1, r0, r1, lsl #7
	it	ne
	addne	r0, r0, r4, lsl #7
	add	r2, r3, #15
	it	ne
	addne	r3, r3, #16
	str	r1, [r6, r2, lsl #2]
	it	ne
	strne	r0, [r6, r3, lsl #2]
.L443:
	ldr	r2, .L461+40
	movs	r1, #0
	ldr	r3, .L461+44
	str	r1, [r6, #20]
.LPIC28:
	add	r2, pc
.LPIC29:
	add	r3, pc
	str	r2, [r6, #4]
	str	r3, [r6, #16]
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L445:
	movs	r7, #10
	mov	r3, r2
	b	.L430
.L448:
	movs	r7, #10
	mov	r3, r2
	b	.L440
.L450:
	movs	r7, #8
	movs	r3, #2
	b	.L440
.L449:
	movs	r7, #9
	movs	r3, #1
	b	.L440
.L447:
	movs	r7, #8
	movs	r3, #2
	b	.L430
.L446:
	movs	r7, #9
	movs	r3, #1
	b	.L430
.L462:
	.align	2
.L461:
	.word	start_input_pass-(.LPIC18+4)
	.word	start_output_pass-(.LPIC19+4)
	.word	consume_data_build_huffman_index_progressive-(.LPIC20+4)
	.word	consume_data_multi_scan-(.LPIC21+4)
	.word	decompress_onepass-(.LPIC22+4)
	.word	consume_data-(.LPIC26+4)
	.word	decompress_data-(.LPIC27+4)
	.word	consume_data_build_huffman_index_baseline-(.LPIC23+4)
	.word	dummy_consume_data-(.LPIC24+4)
	.word	decompress_onepass-(.LPIC25+4)
	.word	dummy_consume_data-(.LPIC28+4)
	.word	decompress_onepass-(.LPIC29+4)
	.size	jinit_d_coef_controller, .-jinit_d_coef_controller
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
