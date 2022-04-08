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
	.file	"filter_neon_intrinsics.c"
	.section	.text.png_read_filter_row_up_neon,"ax",%progbits
	.align	2
	.global	png_read_filter_row_up_neon
	.thumb
	.thumb_func
	.type	png_read_filter_row_up_neon, %function
png_read_filter_row_up_neon:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #4]
	add	r3, r3, r1
	cmp	r1, r3
	bcs	.L1
.L4:
	vld1.8	{d18-d19}, [r1]
	vld1.8	{d16-d17}, [r2]!
	vadd.i8	q8, q9, q8
	vst1.8	{d16-d17}, [r1]!
	cmp	r3, r1
	bhi	.L4
.L1:
	bx	lr
	.size	png_read_filter_row_up_neon, .-png_read_filter_row_up_neon
	.section	.text.png_read_filter_row_sub3_neon,"ax",%progbits
	.align	2
	.global	png_read_filter_row_sub3_neon
	.thumb
	.thumb_func
	.type	png_read_filter_row_sub3_neon, %function
png_read_filter_row_sub3_neon:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5}
	vmov.i32	d19, #0  @ v8qi
	ldr	r5, [r0, #4]
	vld1.8	{d16-d17}, [r1]
	add	r5, r5, r1
	cmp	r1, r5
	vmov	d18, d16  @ v8qi
	vmov	d16, d17  @ v8qi
	bcs	.L6
.L9:
	vadd.i8	d22, d19, d18
	add	r3, r1, #12
	vext.8	d21, d18, d16, #3
	adds	r4, r1, #3
	vadd.i8	d21, d22, d21
	adds	r0, r1, #6
	vext.8	d18, d18, d16, #6
	add	r2, r1, #9
	vadd.i8	d20, d21, d18
	cmp	r5, r3
	vext.8	d16, d16, d16, #1
	vadd.i8	d19, d20, d16
	vld1.8	{d16-d17}, [r3]
	vst1.32	{d22[0]}, [r1]
	vmov	d18, d16  @ v8qi
	mov	r1, r3
	vmov	d16, d17  @ v8qi
	vst1.32	{d21[0]}, [r4]
	vst1.32	{d20[0]}, [r0]
	vst1.32	{d19[0]}, [r2]
	bhi	.L9
.L6:
	pop	{r4, r5}
	bx	lr
	.size	png_read_filter_row_sub3_neon, .-png_read_filter_row_sub3_neon
	.section	.text.png_read_filter_row_sub4_neon,"ax",%progbits
	.align	2
	.global	png_read_filter_row_sub4_neon
	.thumb
	.thumb_func
	.type	png_read_filter_row_sub4_neon, %function
png_read_filter_row_sub4_neon:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #4]
	vmov.i32	d24, #0  @ v8qi
	add	r3, r3, r1
	cmp	r1, r3
	bcs	.L11
.L14:
	vld4.32	{d20-d23}, [r1]
	vadd.i8	d24, d24, d20
	vadd.i8	d26, d24, d21
	vmov	d16, d24  @ v8qi
	vadd.i8	d25, d26, d22
	vmov	d17, d26  @ v8qi
	vadd.i8	d24, d25, d23
	vmov	d18, d25  @ v8qi
	vmov	d19, d24  @ v8qi
	vst4.32	{d16[0], d17[0], d18[0], d19[0]}, [r1]!
	cmp	r3, r1
	bhi	.L14
.L11:
	bx	lr
	.size	png_read_filter_row_sub4_neon, .-png_read_filter_row_sub4_neon
	.section	.text.png_read_filter_row_avg3_neon,"ax",%progbits
	.align	2
	.global	png_read_filter_row_avg3_neon
	.thumb
	.thumb_func
	.type	png_read_filter_row_avg3_neon, %function
png_read_filter_row_avg3_neon:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6}
	vmov.i32	d21, #0  @ v8qi
	ldr	r6, [r0, #4]
	vld1.8	{d16-d17}, [r1]
	add	r6, r6, r1
	cmp	r1, r6
	vmov	d19, d16  @ v8qi
	vmov	d18, d17  @ v8qi
	bcs	.L15
.L18:
	vld1.8	{d16-d17}, [r2]
	add	r3, r1, #12
	adds	r5, r1, #3
	adds	r4, r1, #6
	vmov	d20, d16  @ v8qi
	vext.8	d25, d19, d18, #3
	vext.8	d24, d19, d18, #6
	add	r0, r1, #9
	vhadd.u8	d21, d21, d20
	cmp	r6, r3
	vext.8	d22, d20, d17, #3
	add	r2, r2, #12
	vext.8	d20, d20, d17, #6
	vadd.i8	d19, d21, d19
	vext.8	d21, d17, d17, #1
	vhadd.u8	d22, d19, d22
	vext.8	d23, d18, d18, #1
	vld1.8	{d16-d17}, [r3]
	vadd.i8	d22, d22, d25
	vst1.32	{d19[0]}, [r1]
	vmov	d18, d17  @ v8qi
	vhadd.u8	d20, d22, d20
	vmov	d19, d16  @ v8qi
	vst1.32	{d22[0]}, [r5]
	mov	r1, r3
	vadd.i8	d20, d20, d24
	vhadd.u8	d21, d20, d21
	vst1.32	{d20[0]}, [r4]
	vadd.i8	d21, d21, d23
	vst1.32	{d21[0]}, [r0]
	bhi	.L18
.L15:
	pop	{r4, r5, r6}
	bx	lr
	.size	png_read_filter_row_avg3_neon, .-png_read_filter_row_avg3_neon
	.section	.text.png_read_filter_row_avg4_neon,"ax",%progbits
	.align	2
	.global	png_read_filter_row_avg4_neon
	.thumb
	.thumb_func
	.type	png_read_filter_row_avg4_neon, %function
png_read_filter_row_avg4_neon:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #4]
	vmov.i32	d28, #0  @ v8qi
	add	r3, r3, r1
	cmp	r1, r3
	bcs	.L20
.L23:
	vld4.32	{d24-d27}, [r2]
	adds	r2, r2, #16
	vld4.32	{d20-d23}, [r1]
	vhadd.u8	d28, d28, d24
	vadd.i8	d29, d28, d20
	vhadd.u8	d28, d29, d25
	vmov	d16, d29  @ v8qi
	vadd.i8	d28, d28, d21
	vhadd.u8	d29, d28, d26
	vmov	d17, d28  @ v8qi
	vadd.i8	d29, d29, d22
	vhadd.u8	d28, d29, d27
	vmov	d18, d29  @ v8qi
	vadd.i8	d28, d28, d23
	vmov	d19, d28  @ v8qi
	vst4.32	{d16[0], d17[0], d18[0], d19[0]}, [r1]!
	cmp	r3, r1
	bhi	.L23
.L20:
	bx	lr
	.size	png_read_filter_row_avg4_neon, .-png_read_filter_row_avg4_neon
	.section	.text.png_read_filter_row_paeth3_neon,"ax",%progbits
	.align	2
	.global	png_read_filter_row_paeth3_neon
	.thumb
	.thumb_func
	.type	png_read_filter_row_paeth3_neon, %function
png_read_filter_row_paeth3_neon:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6}
	vmov.i32	d26, #0  @ v8qi
	ldr	r6, [r0, #4]
	fstmfdd	sp!, {d8, d9, d10, d11, d12, d13}
	vmov	d30, d26  @ v8qi
	add	r6, r6, r1
	vld1.8	{d16-d17}, [r1]
	cmp	r1, r6
	vmov	d29, d16  @ v8qi
	vmov	d28, d17  @ v8qi
	bcs	.L24
.L27:
	vld1.8	{d16-d17}, [r2]
	add	r3, r1, #12
	vaddl.u8	q12, d26, d26
	adds	r5, r1, #3
	vmov	d19, d16  @ v8qi
	vabdl.u8	q10, d30, d26
	vmov	d16, d17  @ v8qi
	vext.8	d4, d29, d28, #3
	vext.8	d31, d29, d28, #6
	adds	r4, r1, #6
	vaddl.u8	q11, d30, d19
	add	r0, r1, #9
	vabdl.u8	q3, d19, d26
	cmp	r6, r3
	vext.8	d17, d19, d17, #3
	add	r2, r2, #12
	vabd.u16	q12, q11, q12
	vaddl.u8	q11, d19, d19
	vcge.u16	q1, q10, q3
	vabdl.u8	q0, d17, d19
	vcge.u16	q10, q12, q10
	vcge.u16	q3, q12, q3
	vext.8	d27, d19, d16, #6
	vaddl.u8	q5, d17, d17
	vand	q3, q1, q3
	vmovn.i16	d20, q10
	vabdl.u8	q12, d27, d17
	vbsl	d20, d19, d26
	vmovn.i16	d5, q3
	vext.8	d26, d16, d16, #1
	vbsl	d5, d30, d20
	vaddl.u8	q4, d27, d27
	vadd.i8	d5, d5, d29
	vabdl.u8	q10, d26, d27
	vext.8	d30, d28, d28, #1
	vaddl.u8	q1, d5, d17
	vabdl.u8	q3, d5, d19
	vabd.u16	q11, q1, q11
	vld1.8	{d2-d3}, [r3]
	vcge.u16	q6, q3, q0
	vst1.32	{d5[0]}, [r1]
	vmov	d29, d2  @ v8qi
	vcge.u16	q0, q11, q0
	vmov	d28, d3  @ v8qi
	vcge.u16	q11, q11, q3
	mov	r1, r3
	vand	q0, q6, q0
	vmovn.i16	d22, q11
	vmovn.i16	d0, q0
	vbsl	d22, d17, d19
	vbsl	d0, d5, d22
	vadd.i8	d4, d0, d4
	vaddl.u8	q9, d4, d27
	vabdl.u8	q11, d4, d17
	vst1.32	{d4[0]}, [r5]
	vabd.u16	q9, q9, q5
	vcge.u16	q3, q11, q12
	vcge.u16	q12, q9, q12
	vcge.u16	q9, q9, q11
	vand	q12, q3, q12
	vmovn.i16	d18, q9
	vmovn.i16	d24, q12
	vbsl	d18, d27, d17
	vbsl	d24, d4, d18
	vadd.i8	d31, d24, d31
	vaddl.u8	q8, d31, d26
	vabdl.u8	q9, d31, d27
	vst1.32	{d31[0]}, [r4]
	vabd.u16	q8, q8, q4
	vcge.u16	q11, q9, q10
	vcge.u16	q10, q8, q10
	vcge.u16	q8, q8, q9
	vand	q10, q11, q10
	vmovn.i16	d16, q8
	vmovn.i16	d20, q10
	vbsl	d16, d26, d27
	vbsl	d20, d31, d16
	vadd.i8	d30, d20, d30
	vst1.32	{d30[0]}, [r0]
	bhi	.L27
.L24:
	fldmfdd	sp!, {d8-d13}
	pop	{r4, r5, r6}
	bx	lr
	.size	png_read_filter_row_paeth3_neon, .-png_read_filter_row_paeth3_neon
	.section	.text.png_read_filter_row_paeth4_neon,"ax",%progbits
	.align	2
	.global	png_read_filter_row_paeth4_neon
	.thumb
	.thumb_func
	.type	png_read_filter_row_paeth4_neon, %function
png_read_filter_row_paeth4_neon:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #4]
	vmov.i32	d29, #0  @ v8qi
	add	r3, r3, r1
	vmov	d30, d29  @ v8qi
	cmp	r1, r3
	bcs	.L35
	fstmfdd	sp!, {d8, d9, d10, d11, d12, d13, d14, d15}
	sub	sp, sp, #16
.L32:
	vld4.32	{d12-d15}, [r2]
	adds	r2, r2, #16
	vaddl.u8	q2, d29, d29
	vabdl.u8	q1, d30, d29
	vaddl.u8	q3, d30, d12
	vmov	d26, d14  @ v8qi
	vabdl.u8	q12, d12, d29
	vmov	d31, d15  @ v8qi
	vld4.32	{d20-d23}, [r1]
	vmov	d27, d13  @ v8qi
	vmov	d28, d12  @ v8qi
	vabd.u16	q2, q3, q2
	vcge.u16	q3, q1, q12
	vaddl.u8	q8, d12, d12
	vaddl.u8	q4, d14, d14
	vcge.u16	q12, q2, q12
	vcge.u16	q2, q2, q1
	vst1.64	{d16-d17}, [sp:64]
	vand	q12, q3, q12
	vabdl.u8	q1, d14, d13
	vmovn.i16	d4, q2
	vmovn.i16	d5, q12
	vbsl	d4, d12, d29
	vmov	d29, d15  @ v8qi
	vabdl.u8	q12, d15, d14
	vbsl	d5, d30, d4
	vld1.64	{d14-d15}, [sp:64]
	vadd.i8	d30, d5, d20
	vabdl.u8	q0, d13, d12
	vaddl.u8	q5, d13, d13
	vaddl.u8	q2, d30, d13
	vmov	d16, d30  @ v8qi
	vabdl.u8	q3, d30, d12
	vabd.u16	q6, q2, q7
	vcge.u16	q2, q3, q0
	vcge.u16	q3, q6, q3
	vcge.u16	q0, q6, q0
	vand	q0, q2, q0
	vmovn.i16	d6, q3
	vmovn.i16	d7, q0
	vbsl	d6, d27, d28
	vbsl	d7, d30, d6
	vadd.i8	d7, d7, d21
	vaddl.u8	q0, d7, d26
	vmov	d17, d7  @ v8qi
	vabdl.u8	q2, d7, d27
	vabd.u16	q5, q0, q5
	vcge.u16	q0, q2, q1
	vcge.u16	q1, q5, q1
	vcge.u16	q5, q5, q2
	vand	q1, q0, q1
	vmovn.i16	d28, q5
	vmovn.i16	d2, q1
	vbsl	d28, d26, d27
	vbsl	d2, d7, d28
	vadd.i8	d2, d2, d22
	vaddl.u8	q2, d2, d31
	vmov	d18, d2  @ v8qi
	vabdl.u8	q3, d2, d26
	vabd.u16	q4, q2, q4
	vcge.u16	q2, q3, q12
	vcge.u16	q12, q4, q12
	vcge.u16	q4, q4, q3
	vand	q12, q2, q12
	vmovn.i16	d8, q4
	vmovn.i16	d24, q12
	vbsl	d8, d31, d26
	vbsl	d24, d2, d8
	vadd.i8	d30, d24, d23
	vmov	d19, d30  @ v8qi
	vst4.32	{d16[0], d17[0], d18[0], d19[0]}, [r1]!
	cmp	r3, r1
	bhi	.L32
	add	sp, sp, #16
	@ sp needed
	fldmfdd	sp!, {d8-d15}
.L35:
	bx	lr
	.size	png_read_filter_row_paeth4_neon, .-png_read_filter_row_paeth4_neon
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
