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
	.file	"ftlcdfil.c"
	.section	.text._ft_lcd_filter_fir,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ft_lcd_filter_fir, %function
_ft_lcd_filter_fir:
	@ args = 0, pretend = 0, frame = 120
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #124
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #4]
	adds	r3, r3, #196
	str	r3, [r7, #88]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	str	r3, [r7, #116]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #112]
	ldr	r3, [r7, #8]
	cmp	r3, #3
	bne	.L2
	ldr	r3, [r7, #116]
	cmp	r3, #3
	bls	.L2
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	str	r3, [r7, #108]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bge	.L3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #12]
	ldr	r2, [r2]
	subs	r2, r2, #1
	mul	r3, r2, r3
	negs	r3, r3
	ldr	r2, [r7, #108]
	add	r3, r3, r2
	str	r3, [r7, #108]
	b	.L4
.L3:
	b	.L4
.L7:
	ldr	r3, [r7, #108]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #84]
	ldr	r3, [r7, #88]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r2, [r7, #84]
	mul	r3, r2, r3
	str	r3, [r7, #36]
	ldr	r3, [r7, #88]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r2, [r7, #84]
	mul	r3, r2, r3
	str	r3, [r7, #40]
	ldr	r3, [r7, #88]
	adds	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r2, [r7, #84]
	mul	r3, r2, r3
	str	r3, [r7, #44]
	movs	r3, #0
	str	r3, [r7, #48]
	ldr	r3, [r7, #108]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #84]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #88]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r1, [r7, #84]
	mul	r3, r1, r3
	add	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #88]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r1, [r7, #84]
	mul	r3, r1, r3
	add	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #88]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r1, [r7, #84]
	mul	r3, r1, r3
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #88]
	adds	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r1, [r7, #84]
	mul	r3, r1, r3
	add	r3, r3, r2
	str	r3, [r7, #48]
	movs	r3, #2
	str	r3, [r7, #104]
	b	.L5
.L6:
	ldr	r2, [r7, #108]
	ldr	r3, [r7, #104]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #80]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #88]
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r1, [r7, #80]
	mul	r3, r1, r3
	add	r3, r3, r2
	str	r3, [r7, #76]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #88]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r1, [r7, #80]
	mul	r3, r1, r3
	add	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #88]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r1, [r7, #80]
	mul	r3, r1, r3
	add	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #88]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r1, [r7, #80]
	mul	r3, r1, r3
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #88]
	adds	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r2, [r7, #80]
	mul	r3, r2, r3
	str	r3, [r7, #48]
	ldr	r3, [r7, #76]
	lsrs	r3, r3, #8
	str	r3, [r7, #76]
	ldr	r3, [r7, #76]
	lsrs	r3, r3, #8
	negs	r3, r3
	ldr	r2, [r7, #76]
	orrs	r3, r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #104]
	subs	r3, r3, #2
	ldr	r2, [r7, #108]
	add	r3, r3, r2
	ldr	r2, [r7, #76]
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #104]
	adds	r3, r3, #1
	str	r3, [r7, #104]
.L5:
	ldr	r2, [r7, #104]
	ldr	r3, [r7, #116]
	cmp	r2, r3
	bcc	.L6
	ldr	r3, [r7, #36]
	lsrs	r3, r3, #8
	str	r3, [r7, #72]
	ldr	r3, [r7, #72]
	lsrs	r3, r3, #8
	negs	r3, r3
	ldr	r2, [r7, #72]
	orrs	r3, r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #104]
	subs	r3, r3, #2
	ldr	r2, [r7, #108]
	add	r3, r3, r2
	ldr	r2, [r7, #72]
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #40]
	lsrs	r3, r3, #8
	str	r3, [r7, #72]
	ldr	r3, [r7, #72]
	lsrs	r3, r3, #8
	negs	r3, r3
	ldr	r2, [r7, #72]
	orrs	r3, r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #104]
	subs	r3, r3, #1
	ldr	r2, [r7, #108]
	add	r3, r3, r2
	ldr	r2, [r7, #72]
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #112]
	subs	r3, r3, #1
	str	r3, [r7, #112]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #108]
	add	r3, r3, r2
	str	r3, [r7, #108]
.L4:
	ldr	r3, [r7, #112]
	cmp	r3, #0
	bne	.L7
	b	.L1
.L2:
	ldr	r3, [r7, #8]
	cmp	r3, #4
	bne	.L1
	ldr	r3, [r7, #112]
	cmp	r3, #3
	bls	.L1
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	str	r3, [r7, #100]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	str	r3, [r7, #68]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bge	.L9
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #12]
	ldr	r2, [r2]
	subs	r2, r2, #1
	mul	r3, r2, r3
	negs	r3, r3
	ldr	r2, [r7, #100]
	add	r3, r3, r2
	str	r3, [r7, #100]
	b	.L10
.L9:
	b	.L10
.L13:
	ldr	r3, [r7, #100]
	str	r3, [r7, #96]
	ldr	r3, [r7, #96]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #64]
	ldr	r3, [r7, #88]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r2, [r7, #64]
	mul	r3, r2, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #88]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r2, [r7, #64]
	mul	r3, r2, r3
	str	r3, [r7, #24]
	ldr	r3, [r7, #88]
	adds	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r2, [r7, #64]
	mul	r3, r2, r3
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #32]
	ldr	r3, [r7, #68]
	ldr	r2, [r7, #96]
	add	r3, r3, r2
	str	r3, [r7, #96]
	ldr	r3, [r7, #96]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #64]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #88]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r1, [r7, #64]
	mul	r3, r1, r3
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #88]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r1, [r7, #64]
	mul	r3, r1, r3
	add	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #88]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r1, [r7, #64]
	mul	r3, r1, r3
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #88]
	adds	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r1, [r7, #64]
	mul	r3, r1, r3
	add	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #68]
	ldr	r2, [r7, #96]
	add	r3, r3, r2
	str	r3, [r7, #96]
	movs	r3, #2
	str	r3, [r7, #92]
	b	.L11
.L12:
	ldr	r3, [r7, #96]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #60]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #88]
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r1, [r7, #60]
	mul	r3, r1, r3
	add	r3, r3, r2
	str	r3, [r7, #56]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #88]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r1, [r7, #60]
	mul	r3, r1, r3
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #88]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r1, [r7, #60]
	mul	r3, r1, r3
	add	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #88]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r1, [r7, #60]
	mul	r3, r1, r3
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #88]
	adds	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r2, [r7, #60]
	mul	r3, r2, r3
	str	r3, [r7, #32]
	ldr	r3, [r7, #56]
	lsrs	r3, r3, #8
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	lsrs	r3, r3, #8
	negs	r3, r3
	ldr	r2, [r7, #56]
	orrs	r3, r3, r2
	str	r3, [r7, #56]
	ldr	r2, [r7, #68]
	mov	r3, r2
	lsls	r3, r3, #31
	subs	r3, r3, r2
	lsls	r3, r3, #1
	ldr	r2, [r7, #96]
	add	r3, r3, r2
	ldr	r2, [r7, #56]
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #68]
	ldr	r2, [r7, #96]
	add	r3, r3, r2
	str	r3, [r7, #96]
	ldr	r3, [r7, #92]
	adds	r3, r3, #1
	str	r3, [r7, #92]
.L11:
	ldr	r2, [r7, #92]
	ldr	r3, [r7, #112]
	cmp	r2, r3
	bcc	.L12
	ldr	r3, [r7, #20]
	lsrs	r3, r3, #8
	str	r3, [r7, #52]
	ldr	r3, [r7, #52]
	lsrs	r3, r3, #8
	negs	r3, r3
	ldr	r2, [r7, #52]
	orrs	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r2, [r7, #68]
	mov	r3, r2
	lsls	r3, r3, #31
	subs	r3, r3, r2
	lsls	r3, r3, #1
	ldr	r2, [r7, #96]
	add	r3, r3, r2
	ldr	r2, [r7, #52]
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #24]
	lsrs	r3, r3, #8
	str	r3, [r7, #52]
	ldr	r3, [r7, #52]
	lsrs	r3, r3, #8
	negs	r3, r3
	ldr	r2, [r7, #52]
	orrs	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #68]
	negs	r3, r3
	ldr	r2, [r7, #96]
	add	r3, r3, r2
	ldr	r2, [r7, #52]
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #116]
	subs	r3, r3, #1
	str	r3, [r7, #116]
	ldr	r3, [r7, #100]
	adds	r3, r3, #1
	str	r3, [r7, #100]
.L10:
	ldr	r3, [r7, #116]
	cmp	r3, #0
	bne	.L13
.L1:
	adds	r7, r7, #124
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	_ft_lcd_filter_fir, .-_ft_lcd_filter_fir
	.section	.text._ft_lcd_filter_legacy,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ft_lcd_filter_legacy, %function
_ft_lcd_filter_legacy:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #84
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	str	r3, [r7, #76]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #72]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	str	r3, [r7, #52]
	ldr	r3, [r7, #8]
	cmp	r3, #3
	bne	.L15
	ldr	r3, [r7, #76]
	cmp	r3, #2
	bls	.L15
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	str	r3, [r7, #68]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bge	.L16
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #12]
	ldr	r2, [r2]
	subs	r2, r2, #1
	mul	r3, r2, r3
	negs	r3, r3
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	b	.L17
.L16:
	b	.L17
.L20:
	movs	r3, #0
	str	r3, [r7, #64]
	b	.L18
.L19:
	movs	r3, #0
	str	r3, [r7, #48]
	movs	r3, #0
	str	r3, [r7, #44]
	movs	r3, #0
	str	r3, [r7, #40]
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #64]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #36]
	movw	r3, #45372
	ldr	r2, [r7, #36]
	mul	r3, r2, r3
	ldr	r2, [r7, #48]
	add	r3, r3, r2
	str	r3, [r7, #48]
	movw	r3, #10923
	ldr	r2, [r7, #36]
	mul	r3, r2, r3
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #44]
	movw	r3, #5041
	ldr	r2, [r7, #36]
	mul	r3, r2, r3
	ldr	r2, [r7, #40]
	add	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #64]
	adds	r3, r3, #1
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #36]
	movw	r3, #15124
	ldr	r2, [r7, #36]
	mul	r3, r2, r3
	ldr	r2, [r7, #48]
	add	r3, r3, r2
	str	r3, [r7, #48]
	movw	r3, #43692
	ldr	r2, [r7, #36]
	mul	r3, r2, r3
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #44]
	movw	r3, #15124
	ldr	r2, [r7, #36]
	mul	r3, r2, r3
	ldr	r2, [r7, #40]
	add	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #64]
	adds	r3, r3, #2
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #36]
	movw	r3, #5041
	ldr	r2, [r7, #36]
	mul	r3, r2, r3
	ldr	r2, [r7, #48]
	add	r3, r3, r2
	str	r3, [r7, #48]
	movw	r3, #10923
	ldr	r2, [r7, #36]
	mul	r3, r2, r3
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #44]
	movw	r3, #45372
	ldr	r2, [r7, #36]
	mul	r3, r2, r3
	ldr	r2, [r7, #40]
	add	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #64]
	add	r3, r3, r2
	ldr	r2, [r7, #48]
	lsrs	r2, r2, #16
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #64]
	adds	r3, r3, #1
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	ldr	r2, [r7, #44]
	lsrs	r2, r2, #16
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #64]
	adds	r3, r3, #2
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	ldr	r2, [r7, #40]
	lsrs	r2, r2, #16
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #64]
	adds	r3, r3, #3
	str	r3, [r7, #64]
.L18:
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #76]
	cmp	r2, r3
	bcc	.L19
	ldr	r3, [r7, #72]
	subs	r3, r3, #1
	str	r3, [r7, #72]
	ldr	r3, [r7, #52]
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
.L17:
	ldr	r3, [r7, #72]
	cmp	r3, #0
	bne	.L20
	b	.L14
.L15:
	ldr	r3, [r7, #8]
	cmp	r3, #4
	bne	.L14
	ldr	r3, [r7, #72]
	cmp	r3, #2
	bls	.L14
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	str	r3, [r7, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bge	.L22
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #12]
	ldr	r2, [r2]
	subs	r2, r2, #1
	mul	r3, r2, r3
	negs	r3, r3
	ldr	r2, [r7, #60]
	add	r3, r3, r2
	str	r3, [r7, #60]
	b	.L23
.L22:
	b	.L23
.L26:
	ldr	r3, [r7, #60]
	str	r3, [r7, #56]
	ldr	r3, [r7, #72]
	ldr	r2, [r7, #52]
	mul	r3, r2, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	str	r3, [r7, #32]
	b	.L24
.L25:
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #56]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #16]
	movw	r3, #45372
	ldr	r2, [r7, #16]
	mul	r3, r2, r3
	ldr	r2, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #28]
	movw	r3, #10923
	ldr	r2, [r7, #16]
	mul	r3, r2, r3
	ldr	r2, [r7, #24]
	add	r3, r3, r2
	str	r3, [r7, #24]
	movw	r3, #5041
	ldr	r2, [r7, #16]
	mul	r3, r2, r3
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #52]
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #16]
	movw	r3, #15124
	ldr	r2, [r7, #16]
	mul	r3, r2, r3
	ldr	r2, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #28]
	movw	r3, #43692
	ldr	r2, [r7, #16]
	mul	r3, r2, r3
	ldr	r2, [r7, #24]
	add	r3, r3, r2
	str	r3, [r7, #24]
	movw	r3, #15124
	ldr	r2, [r7, #16]
	mul	r3, r2, r3
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #52]
	lsls	r3, r3, #1
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #16]
	movw	r3, #5041
	ldr	r2, [r7, #16]
	mul	r3, r2, r3
	ldr	r2, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #28]
	movw	r3, #10923
	ldr	r2, [r7, #16]
	mul	r3, r2, r3
	ldr	r2, [r7, #24]
	add	r3, r3, r2
	str	r3, [r7, #24]
	movw	r3, #45372
	ldr	r2, [r7, #16]
	mul	r3, r2, r3
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #28]
	lsrs	r3, r3, #16
	uxtb	r2, r3
	ldr	r3, [r7, #56]
	strb	r2, [r3]
	ldr	r3, [r7, #52]
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldr	r2, [r7, #24]
	lsrs	r2, r2, #16
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #52]
	lsls	r3, r3, #1
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldr	r2, [r7, #20]
	lsrs	r2, r2, #16
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r2, [r7, #52]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	str	r3, [r7, #56]
.L24:
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bcc	.L25
	ldr	r3, [r7, #76]
	subs	r3, r3, #1
	str	r3, [r7, #76]
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
.L23:
	ldr	r3, [r7, #76]
	cmp	r3, #0
	bne	.L26
.L14:
	adds	r7, r7, #84
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	_ft_lcd_filter_legacy, .-_ft_lcd_filter_legacy
	.section	.text.FT_Library_SetLcdFilterWeights,"ax",%progbits
	.align	2
	.global	FT_Library_SetLcdFilterWeights
	.thumb
	.thumb_func
	.type	FT_Library_SetLcdFilterWeights, %function
FT_Library_SetLcdFilterWeights:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L28
	movs	r3, #33
	b	.L29
.L28:
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L30
	movs	r3, #6
	b	.L29
.L30:
	ldr	r3, [r7, #4]
	adds	r3, r3, #196
	mov	r0, r3
	ldr	r1, [r7]
	movs	r2, #5
	bl	memcpy(PLT)
	movs	r3, #0
.L29:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Library_SetLcdFilterWeights, .-FT_Library_SetLcdFilterWeights
	.section	.text.FT_Library_SetLcdFilter,"ax",%progbits
	.align	2
	.global	FT_Library_SetLcdFilter
	.thumb
	.thumb_func
	.type	FT_Library_SetLcdFilter, %function
FT_Library_SetLcdFilter:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L32
	movs	r3, #33
	b	.L33
.L32:
	ldr	r3, [r7]
	cmp	r3, #16
	bhi	.L34
	adr	r1, .L36
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L36:
	.word	.L35+1-.L36
	.word	.L37+1-.L36
	.word	.L38+1-.L36
	.word	.L39+1-.L36
	.word	.L34+1-.L36
	.word	.L34+1-.L36
	.word	.L34+1-.L36
	.word	.L34+1-.L36
	.word	.L34+1-.L36
	.word	.L34+1-.L36
	.word	.L34+1-.L36
	.word	.L34+1-.L36
	.word	.L34+1-.L36
	.word	.L34+1-.L36
	.word	.L34+1-.L36
	.word	.L34+1-.L36
	.word	.L39+1-.L36
.L35:
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #204]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #192]
	b	.L40
.L37:
	ldr	r3, [r7, #4]
	adds	r3, r3, #196
	ldr	r2, .L41
.LPIC0:
	add	r2, pc
	ldr	r0, [r2]	@ unaligned
	str	r0, [r3]	@ unaligned
	ldrb	r2, [r2, #4]
	strb	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r2, .L41+4
.LPIC1:
	add	r2, pc
	str	r2, [r3, #204]
	ldr	r3, [r7, #4]
	movs	r2, #2
	str	r2, [r3, #192]
	b	.L40
.L38:
	ldr	r3, [r7, #4]
	adds	r3, r3, #196
	ldr	r2, .L41+8
.LPIC2:
	add	r2, pc
	ldr	r0, [r2]	@ unaligned
	str	r0, [r3]	@ unaligned
	ldrb	r2, [r2, #4]
	strb	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r2, .L41+12
.LPIC3:
	add	r2, pc
	str	r2, [r3, #204]
	ldr	r3, [r7, #4]
	movs	r2, #2
	str	r2, [r3, #192]
	b	.L40
.L39:
	ldr	r3, [r7, #4]
	ldr	r2, .L41+16
.LPIC4:
	add	r2, pc
	str	r2, [r3, #204]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #192]
	b	.L40
.L34:
	movs	r3, #6
	b	.L33
.L40:
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #188]
	movs	r3, #0
.L33:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L42:
	.align	2
.L41:
	.word	default_filter.6612-(.LPIC0+4)
	.word	_ft_lcd_filter_fir-(.LPIC1+4)
	.word	light_filter.6613-(.LPIC2+4)
	.word	_ft_lcd_filter_fir-(.LPIC3+4)
	.word	_ft_lcd_filter_legacy-(.LPIC4+4)
	.size	FT_Library_SetLcdFilter, .-FT_Library_SetLcdFilter
	.section	.rodata.filters.6578,"a",%progbits
	.align	2
	.type	filters.6578, %object
	.size	filters.6578, 36
filters.6578:
	.word	45372
	.word	10923
	.word	5041
	.word	15124
	.word	43692
	.word	15124
	.word	5041
	.word	10923
	.word	45372
	.section	.rodata.default_filter.6612,"a",%progbits
	.align	2
	.type	default_filter.6612, %object
	.size	default_filter.6612, 5
default_filter.6612:
	.byte	8
	.byte	77
	.byte	86
	.byte	77
	.byte	8
	.section	.rodata.light_filter.6613,"a",%progbits
	.align	2
	.type	light_filter.6613, %object
	.size	light_filter.6613, 5
light_filter.6613:
	.byte	0
	.byte	85
	.byte	86
	.byte	85
	.byte	0
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
