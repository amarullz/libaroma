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
	.file	"autofit.c"
	.section	.text.af_sort_pos,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_sort_pos, %function
af_sort_pos:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #1
	str	r3, [r7, #20]
	b	.L2
.L7:
	ldr	r3, [r7, #20]
	str	r3, [r7, #16]
	b	.L3
.L6:
	ldr	r3, [r7, #16]
	lsls	r3, r3, #2
	ldr	r2, [r7]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r1, [r7]
	add	r3, r3, r1
	ldr	r3, [r3]
	cmp	r2, r3
	blt	.L4
	b	.L5
.L4:
	ldr	r3, [r7, #16]
	lsls	r3, r3, #2
	ldr	r2, [r7]
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #16]
	lsls	r3, r3, #2
	ldr	r2, [r7]
	add	r2, r2, r3
	ldr	r3, [r7, #16]
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r1, [r7]
	add	r3, r3, r1
	ldr	r3, [r3]
	str	r3, [r2]
	ldr	r3, [r7, #16]
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7]
	add	r3, r3, r2
	ldr	r2, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #16]
	subs	r3, r3, #1
	str	r3, [r7, #16]
.L3:
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L6
.L5:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L2:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcc	.L7
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	af_sort_pos, .-af_sort_pos
	.global	__aeabi_idiv
	.section	.text.af_sort_and_quantize_widths,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_sort_and_quantize_widths, %function
af_sort_and_quantize_widths:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #52
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L8
	movs	r3, #1
	str	r3, [r7, #44]
	b	.L11
.L16:
	ldr	r3, [r7, #44]
	str	r3, [r7, #40]
	b	.L12
.L15:
	ldr	r2, [r7, #40]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r1, [r3]
	ldr	r2, [r7, #40]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	subs	r3, r3, #12
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	cmp	r1, r3
	blt	.L13
	b	.L14
.L13:
	ldr	r2, [r7, #40]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r2, r2, r3
	add	r3, r7, #16
	ldmia	r2, {r0, r1, r2}
	stmia	r3, {r0, r1, r2}
	ldr	r2, [r7, #40]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	adds	r1, r2, r3
	ldr	r2, [r7, #40]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	subs	r3, r3, #12
	ldr	r2, [r7, #8]
	add	r2, r2, r3
	mov	r3, r1
	ldmia	r2, {r0, r1, r2}
	stmia	r3, {r0, r1, r2}
	ldr	r2, [r7, #40]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	subs	r3, r3, #12
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	add	r2, r7, #16
	ldmia	r2, {r0, r1, r2}
	stmia	r3, {r0, r1, r2}
	ldr	r3, [r7, #40]
	subs	r3, r3, #1
	str	r3, [r7, #40]
.L12:
	ldr	r3, [r7, #40]
	cmp	r3, #0
	bne	.L15
.L14:
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	str	r3, [r7, #44]
.L11:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #44]
	cmp	r2, r3
	bhi	.L16
	movs	r3, #0
	str	r3, [r7, #36]
	ldr	r2, [r7, #36]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #32]
	movs	r3, #1
	str	r3, [r7, #44]
	b	.L17
.L23:
	ldr	r2, [r7, #44]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #32]
	subs	r2, r2, r3
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bgt	.L18
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	subs	r2, r3, #1
	ldr	r3, [r7, #44]
	cmp	r2, r3
	bne	.L19
.L18:
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r2, [r7, #44]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #32]
	subs	r2, r2, r3
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bgt	.L20
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	subs	r2, r3, #1
	ldr	r3, [r7, #44]
	cmp	r2, r3
	bne	.L20
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	str	r3, [r7, #44]
.L20:
	ldr	r3, [r7, #36]
	str	r3, [r7, #40]
	b	.L21
.L22:
	ldr	r2, [r7, #40]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r2, [r7, #40]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	str	r3, [r7, #40]
.L21:
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #44]
	cmp	r2, r3
	bcc	.L22
	ldr	r2, [r7, #36]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	adds	r4, r2, r3
	ldr	r3, [r7, #40]
	ldr	r0, [r7, #28]
	mov	r1, r3
	bl	__aeabi_idiv(PLT)
	mov	r3, r0
	str	r3, [r4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	subs	r2, r3, #1
	ldr	r3, [r7, #44]
	cmp	r2, r3
	bls	.L19
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	str	r3, [r7, #36]
	ldr	r2, [r7, #36]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #32]
.L19:
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	str	r3, [r7, #44]
.L17:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #44]
	cmp	r2, r3
	bhi	.L23
	movs	r3, #1
	str	r3, [r7, #36]
	movs	r3, #1
	str	r3, [r7, #44]
	b	.L24
.L26:
	ldr	r2, [r7, #44]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L25
	ldr	r2, [r7, #36]
	adds	r3, r2, #1
	str	r3, [r7, #36]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	adds	r1, r2, r3
	ldr	r2, [r7, #44]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r2, r2, r3
	mov	r3, r1
	ldmia	r2, {r0, r1, r2}
	stmia	r3, {r0, r1, r2}
.L25:
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	str	r3, [r7, #44]
.L24:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #44]
	cmp	r2, r3
	bhi	.L26
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #36]
	str	r2, [r3]
.L8:
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	af_sort_and_quantize_widths, .-af_sort_and_quantize_widths
	.global	af_blue_strings
	.section	.rodata.af_blue_strings,"a",%progbits
	.align	2
	.type	af_blue_strings, %object
	.size	af_blue_strings, 1040
af_blue_strings:
	.byte	-40
	.byte	-89
	.byte	-40
	.byte	-91
	.byte	-39
	.byte	-124
	.byte	-39
	.byte	-125
	.byte	-40
	.byte	-73
	.byte	-40
	.byte	-72
	.byte	0
	.byte	-40
	.byte	-86
	.byte	-40
	.byte	-85
	.byte	-40
	.byte	-73
	.byte	-40
	.byte	-72
	.byte	-39
	.byte	-125
	.byte	0
	.byte	-39
	.byte	-128
	.byte	0
	.byte	-48
	.byte	-111
	.byte	-48
	.byte	-110
	.byte	-48
	.byte	-107
	.byte	-48
	.byte	-97
	.byte	-48
	.byte	-105
	.byte	-48
	.byte	-98
	.byte	-48
	.byte	-95
	.byte	-48
	.byte	-83
	.byte	0
	.byte	-48
	.byte	-111
	.byte	-48
	.byte	-110
	.byte	-48
	.byte	-107
	.byte	-48
	.byte	-88
	.byte	-48
	.byte	-105
	.byte	-48
	.byte	-98
	.byte	-48
	.byte	-95
	.byte	-48
	.byte	-83
	.byte	0
	.byte	-47
	.byte	-123
	.byte	-48
	.byte	-65
	.byte	-48
	.byte	-67
	.byte	-47
	.byte	-120
	.byte	-48
	.byte	-75
	.byte	-48
	.byte	-73
	.byte	-48
	.byte	-66
	.byte	-47
	.byte	-127
	.byte	0
	.byte	-47
	.byte	-128
	.byte	-47
	.byte	-125
	.byte	-47
	.byte	-124
	.byte	0
	.byte	-32
	.byte	-92
	.byte	-107
	.byte	-32
	.byte	-92
	.byte	-82
	.byte	-32
	.byte	-92
	.byte	-123
	.byte	-32
	.byte	-92
	.byte	-122
	.byte	-32
	.byte	-92
	.byte	-91
	.byte	-32
	.byte	-92
	.byte	-89
	.byte	-32
	.byte	-92
	.byte	-83
	.byte	-32
	.byte	-92
	.byte	-74
	.byte	0
	.byte	-32
	.byte	-92
	.byte	-120
	.byte	-32
	.byte	-92
	.byte	-112
	.byte	-32
	.byte	-92
	.byte	-109
	.byte	-32
	.byte	-92
	.byte	-108
	.byte	-32
	.byte	-92
	.byte	-65
	.byte	-32
	.byte	-91
	.byte	-128
	.byte	-32
	.byte	-91
	.byte	-117
	.byte	-32
	.byte	-91
	.byte	-116
	.byte	0
	.byte	-32
	.byte	-92
	.byte	-107
	.byte	-32
	.byte	-92
	.byte	-82
	.byte	-32
	.byte	-92
	.byte	-123
	.byte	-32
	.byte	-92
	.byte	-122
	.byte	-32
	.byte	-92
	.byte	-91
	.byte	-32
	.byte	-92
	.byte	-89
	.byte	-32
	.byte	-92
	.byte	-83
	.byte	-32
	.byte	-92
	.byte	-74
	.byte	0
	.byte	-32
	.byte	-91
	.byte	-127
	.byte	-32
	.byte	-91
	.byte	-125
	.byte	0
	.byte	-50
	.byte	-109
	.byte	-50
	.byte	-110
	.byte	-50
	.byte	-107
	.byte	-50
	.byte	-106
	.byte	-50
	.byte	-104
	.byte	-50
	.byte	-97
	.byte	-50
	.byte	-87
	.byte	0
	.byte	-50
	.byte	-110
	.byte	-50
	.byte	-108
	.byte	-50
	.byte	-106
	.byte	-50
	.byte	-98
	.byte	-50
	.byte	-104
	.byte	-50
	.byte	-97
	.byte	0
	.byte	-50
	.byte	-78
	.byte	-50
	.byte	-72
	.byte	-50
	.byte	-76
	.byte	-50
	.byte	-74
	.byte	-50
	.byte	-69
	.byte	-50
	.byte	-66
	.byte	0
	.byte	-50
	.byte	-79
	.byte	-50
	.byte	-75
	.byte	-50
	.byte	-71
	.byte	-50
	.byte	-65
	.byte	-49
	.byte	-128
	.byte	-49
	.byte	-125
	.byte	-49
	.byte	-124
	.byte	-49
	.byte	-119
	.byte	0
	.byte	-50
	.byte	-78
	.byte	-50
	.byte	-77
	.byte	-50
	.byte	-73
	.byte	-50
	.byte	-68
	.byte	-49
	.byte	-127
	.byte	-49
	.byte	-122
	.byte	-49
	.byte	-121
	.byte	-49
	.byte	-120
	.byte	0
	.byte	-41
	.byte	-111
	.byte	-41
	.byte	-109
	.byte	-41
	.byte	-108
	.byte	-41
	.byte	-105
	.byte	-41
	.byte	-102
	.byte	-41
	.byte	-101
	.byte	-41
	.byte	-99
	.byte	-41
	.byte	-95
	.byte	0
	.byte	-41
	.byte	-111
	.byte	-41
	.byte	-104
	.byte	-41
	.byte	-101
	.byte	-41
	.byte	-99
	.byte	-41
	.byte	-95
	.byte	-41
	.byte	-90
	.byte	0
	.byte	-41
	.byte	-89
	.byte	-41
	.byte	-102
	.byte	-41
	.byte	-97
	.byte	-41
	.byte	-93
	.byte	-41
	.byte	-91
	.byte	0
	.byte	-32
	.byte	-70
	.byte	-78
	.byte	-32
	.byte	-70
	.byte	-108
	.byte	-32
	.byte	-70
	.byte	-83
	.byte	-32
	.byte	-70
	.byte	-95
	.byte	-32
	.byte	-70
	.byte	-91
	.byte	-32
	.byte	-70
	.byte	-89
	.byte	-32
	.byte	-70
	.byte	-93
	.byte	-32
	.byte	-70
	.byte	-121
	.byte	0
	.byte	-32
	.byte	-70
	.byte	-78
	.byte	-32
	.byte	-70
	.byte	-83
	.byte	-32
	.byte	-70
	.byte	-102
	.byte	-32
	.byte	-70
	.byte	-115
	.byte	-32
	.byte	-70
	.byte	-93
	.byte	-32
	.byte	-70
	.byte	-82
	.byte	-32
	.byte	-70
	.byte	-89
	.byte	-32
	.byte	-70
	.byte	-94
	.byte	0
	.byte	-32
	.byte	-70
	.byte	-101
	.byte	-32
	.byte	-70
	.byte	-94
	.byte	-32
	.byte	-70
	.byte	-97
	.byte	-32
	.byte	-70
	.byte	-99
	.byte	0
	.byte	-32
	.byte	-69
	.byte	-126
	.byte	-32
	.byte	-69
	.byte	-124
	.byte	-32
	.byte	-69
	.byte	-125
	.byte	0
	.byte	-32
	.byte	-70
	.byte	-121
	.byte	-32
	.byte	-70
	.byte	-118
	.byte	-32
	.byte	-70
	.byte	-106
	.byte	-32
	.byte	-70
	.byte	-67
	.byte	-32
	.byte	-69
	.byte	-122
	.byte	-32
	.byte	-70
	.byte	-81
	.byte	0
	.byte	84
	.byte	72
	.byte	69
	.byte	90
	.byte	79
	.byte	67
	.byte	81
	.byte	83
	.byte	0
	.byte	72
	.byte	69
	.byte	90
	.byte	76
	.byte	79
	.byte	67
	.byte	85
	.byte	83
	.byte	0
	.byte	102
	.byte	105
	.byte	106
	.byte	107
	.byte	100
	.byte	98
	.byte	104
	.byte	0
	.byte	120
	.byte	122
	.byte	114
	.byte	111
	.byte	101
	.byte	115
	.byte	99
	.byte	0
	.byte	112
	.byte	113
	.byte	103
	.byte	106
	.byte	121
	.byte	0
	.byte	-30
	.byte	-126
	.byte	-128
	.byte	-30
	.byte	-126
	.byte	-125
	.byte	-30
	.byte	-126
	.byte	-123
	.byte	-30
	.byte	-126
	.byte	-121
	.byte	-30
	.byte	-126
	.byte	-120
	.byte	0
	.byte	-30
	.byte	-126
	.byte	-128
	.byte	-30
	.byte	-126
	.byte	-127
	.byte	-30
	.byte	-126
	.byte	-126
	.byte	-30
	.byte	-126
	.byte	-125
	.byte	-30
	.byte	-126
	.byte	-120
	.byte	0
	.byte	-31
	.byte	-75
	.byte	-94
	.byte	-30
	.byte	-79
	.byte	-68
	.byte	-30
	.byte	-126
	.byte	-107
	.byte	-30
	.byte	-126
	.byte	-106
	.byte	-30
	.byte	-126
	.byte	-105
	.byte	0
	.byte	-30
	.byte	-126
	.byte	-112
	.byte	-30
	.byte	-126
	.byte	-111
	.byte	-30
	.byte	-126
	.byte	-110
	.byte	-30
	.byte	-126
	.byte	-109
	.byte	-30
	.byte	-126
	.byte	-103
	.byte	-30
	.byte	-126
	.byte	-101
	.byte	-31
	.byte	-75
	.byte	-91
	.byte	-31
	.byte	-75
	.byte	-92
	.byte	-31
	.byte	-75
	.byte	-93
	.byte	0
	.byte	-31
	.byte	-75
	.byte	-90
	.byte	-31
	.byte	-75
	.byte	-89
	.byte	-31
	.byte	-75
	.byte	-88
	.byte	-31
	.byte	-75
	.byte	-87
	.byte	-30
	.byte	-126
	.byte	-102
	.byte	0
	.byte	-30
	.byte	-127
	.byte	-80
	.byte	-62
	.byte	-77
	.byte	-30
	.byte	-127
	.byte	-75
	.byte	-30
	.byte	-127
	.byte	-73
	.byte	-31
	.byte	-75
	.byte	-128
	.byte	-31
	.byte	-76
	.byte	-76
	.byte	-31
	.byte	-76
	.byte	-79
	.byte	-31
	.byte	-76
	.byte	-68
	.byte	0
	.byte	-30
	.byte	-127
	.byte	-80
	.byte	-62
	.byte	-71
	.byte	-62
	.byte	-78
	.byte	-62
	.byte	-77
	.byte	-31
	.byte	-76
	.byte	-79
	.byte	-31
	.byte	-76
	.byte	-72
	.byte	-31
	.byte	-76
	.byte	-68
	.byte	-31
	.byte	-75
	.byte	-127
	.byte	0
	.byte	-31
	.byte	-75
	.byte	-121
	.byte	-31
	.byte	-75
	.byte	-120
	.byte	-31
	.byte	-75
	.byte	-113
	.byte	-54
	.byte	-80
	.byte	-54
	.byte	-78
	.byte	-31
	.byte	-74
	.byte	-96
	.byte	-30
	.byte	-127
	.byte	-79
	.byte	0
	.byte	-31
	.byte	-75
	.byte	-119
	.byte	-31
	.byte	-75
	.byte	-110
	.byte	-54
	.byte	-77
	.byte	-53
	.byte	-94
	.byte	-53
	.byte	-93
	.byte	-31
	.byte	-74
	.byte	-100
	.byte	-31
	.byte	-74
	.byte	-69
	.byte	0
	.byte	-31
	.byte	-75
	.byte	-106
	.byte	-54
	.byte	-72
	.byte	-31
	.byte	-75
	.byte	-115
	.byte	0
	.byte	-32
	.byte	-80
	.byte	-121
	.byte	-32
	.byte	-80
	.byte	-116
	.byte	-32
	.byte	-80
	.byte	-103
	.byte	-32
	.byte	-80
	.byte	-98
	.byte	-32
	.byte	-80
	.byte	-93
	.byte	-32
	.byte	-80
	.byte	-79
	.byte	-32
	.byte	-79
	.byte	-81
	.byte	0
	.byte	-32
	.byte	-80
	.byte	-123
	.byte	-32
	.byte	-80
	.byte	-107
	.byte	-32
	.byte	-80
	.byte	-102
	.byte	-32
	.byte	-80
	.byte	-80
	.byte	-32
	.byte	-80
	.byte	-67
	.byte	-32
	.byte	-79
	.byte	-88
	.byte	-32
	.byte	-79
	.byte	-84
	.byte	0
	.byte	-32
	.byte	-72
	.byte	-102
	.byte	-32
	.byte	-71
	.byte	-128
	.byte	-32
	.byte	-71
	.byte	-127
	.byte	-32
	.byte	-72
	.byte	-83
	.byte	-32
	.byte	-72
	.byte	-127
	.byte	-32
	.byte	-72
	.byte	-78
	.byte	0
	.byte	-32
	.byte	-72
	.byte	-102
	.byte	-32
	.byte	-72
	.byte	-101
	.byte	-32
	.byte	-72
	.byte	-87
	.byte	-32
	.byte	-72
	.byte	-81
	.byte	-32
	.byte	-72
	.byte	-83
	.byte	-32
	.byte	-72
	.byte	-94
	.byte	-32
	.byte	-72
	.byte	-82
	.byte	0
	.byte	-32
	.byte	-72
	.byte	-101
	.byte	-32
	.byte	-72
	.byte	-99
	.byte	-32
	.byte	-72
	.byte	-97
	.byte	0
	.byte	-32
	.byte	-71
	.byte	-126
	.byte	-32
	.byte	-71
	.byte	-125
	.byte	-32
	.byte	-71
	.byte	-124
	.byte	0
	.byte	-32
	.byte	-72
	.byte	-114
	.byte	-32
	.byte	-72
	.byte	-113
	.byte	-32
	.byte	-72
	.byte	-92
	.byte	-32
	.byte	-72
	.byte	-90
	.byte	0
	.byte	-32
	.byte	-72
	.byte	-115
	.byte	-32
	.byte	-72
	.byte	-112
	.byte	0
	.byte	-32
	.byte	-71
	.byte	-112
	.byte	-32
	.byte	-71
	.byte	-111
	.byte	-32
	.byte	-71
	.byte	-109
	.byte	0
	.byte	-28
	.byte	-69
	.byte	-106
	.byte	-28
	.byte	-69
	.byte	-84
	.byte	-28
	.byte	-67
	.byte	-96
	.byte	-28
	.byte	-66
	.byte	-122
	.byte	-27
	.byte	-128
	.byte	-111
	.byte	-27
	.byte	-120
	.byte	-80
	.byte	-27
	.byte	-110
	.byte	-116
	.byte	-27
	.byte	-100
	.byte	-80
	.byte	-27
	.byte	-81
	.byte	-71
	.byte	-27
	.byte	-80
	.byte	-115
	.byte	-27
	.byte	-80
	.byte	-79
	.byte	-27
	.byte	-72
	.byte	-83
	.byte	-26
	.byte	-120
	.byte	-111
	.byte	-26
	.byte	-105
	.byte	-74
	.byte	-26
	.byte	-103
	.byte	-126
	.byte	-26
	.byte	-100
	.byte	-125
	.byte	-26
	.byte	-99
	.byte	-91
	.byte	-25
	.byte	-126
	.byte	-70
	.byte	-24
	.byte	-125
	.byte	-67
	.byte	-24
	.byte	-120
	.byte	-80
	.byte	-24
	.byte	-86
	.byte	-86
	.byte	-24
	.byte	-81
	.byte	-76
	.byte	-24
	.byte	-65
	.byte	-103
	.byte	-23
	.byte	-128
	.byte	-103
	.byte	-23
	.byte	-67
	.byte	-118
	.byte	124
	.byte	-27
	.byte	-122
	.byte	-101
	.byte	-27
	.byte	-112
	.byte	-116
	.byte	-27
	.byte	-73
	.byte	-78
	.byte	-26
	.byte	-124
	.byte	-65
	.byte	-26
	.byte	-105
	.byte	-94
	.byte	-26
	.byte	-104
	.byte	-97
	.byte	-26
	.byte	-104
	.byte	-81
	.byte	-26
	.byte	-103
	.byte	-81
	.byte	-26
	.byte	-80
	.byte	-111
	.byte	-25
	.byte	-123
	.byte	-89
	.byte	-25
	.byte	-114
	.byte	-80
	.byte	-25
	.byte	-113
	.byte	-66
	.byte	-25
	.byte	-112
	.byte	-122
	.byte	-25
	.byte	-108
	.byte	-88
	.byte	-25
	.byte	-67
	.byte	-82
	.byte	-24
	.byte	-90
	.byte	-127
	.byte	-24
	.byte	-69
	.byte	-115
	.byte	-23
	.byte	-126
	.byte	-93
	.byte	-23
	.byte	-123
	.byte	-115
	.byte	-23
	.byte	-121
	.byte	-116
	.byte	-23
	.byte	-106
	.byte	-117
	.byte	-23
	.byte	-101
	.byte	-73
	.byte	-23
	.byte	-100
	.byte	-78
	.byte	-23
	.byte	-99
	.byte	-94
	.byte	-23
	.byte	-95
	.byte	-66
	.byte	0
	.byte	-28
	.byte	-72
	.byte	-86
	.byte	-28
	.byte	-72
	.byte	-70
	.byte	-28
	.byte	-70
	.byte	-70
	.byte	-28
	.byte	-69
	.byte	-106
	.byte	-28
	.byte	-69
	.byte	-91
	.byte	-28
	.byte	-69
	.byte	-84
	.byte	-28
	.byte	-67
	.byte	-96
	.byte	-28
	.byte	-66
	.byte	-122
	.byte	-27
	.byte	-128
	.byte	-117
	.byte	-27
	.byte	-128
	.byte	-111
	.byte	-27
	.byte	-120
	.byte	-80
	.byte	-27
	.byte	-110
	.byte	-116
	.byte	-27
	.byte	-92
	.byte	-89
	.byte	-27
	.byte	-81
	.byte	-71
	.byte	-27
	.byte	-80
	.byte	-115
	.byte	-27
	.byte	-80
	.byte	-79
	.byte	-26
	.byte	-120
	.byte	-111
	.byte	-26
	.byte	-105
	.byte	-74
	.byte	-26
	.byte	-103
	.byte	-126
	.byte	-26
	.byte	-100
	.byte	-119
	.byte	-26
	.byte	-99
	.byte	-91
	.byte	-25
	.byte	-126
	.byte	-70
	.byte	-24
	.byte	-90
	.byte	-127
	.byte	-24
	.byte	-86
	.byte	-86
	.byte	-24
	.byte	-81
	.byte	-76
	.byte	124
	.byte	-28
	.byte	-72
	.byte	-69
	.byte	-28
	.byte	-70
	.byte	-101
	.byte	-27
	.byte	-101
	.byte	-96
	.byte	-27
	.byte	-82
	.byte	-125
	.byte	-26
	.byte	-125
	.byte	-77
	.byte	-26
	.byte	-124
	.byte	-113
	.byte	-25
	.byte	-112
	.byte	-122
	.byte	-25
	.byte	-108
	.byte	-97
	.byte	-25
	.byte	-107
	.byte	-74
	.byte	-25
	.byte	-100
	.byte	-117
	.byte	-25
	.byte	-99
	.byte	-128
	.byte	-25
	.byte	-67
	.byte	-82
	.byte	-24
	.byte	-128
	.byte	-123
	.byte	-24
	.byte	-121
	.byte	-86
	.byte	-24
	.byte	-111
	.byte	-105
	.byte	-24
	.byte	-93
	.byte	-95
	.byte	-24
	.byte	-65
	.byte	-121
	.byte	-24
	.byte	-65
	.byte	-104
	.byte	-24
	.byte	-65
	.byte	-101
	.byte	-23
	.byte	-128
	.byte	-78
	.byte	-23
	.byte	-127
	.byte	-114
	.byte	-23
	.byte	-127
	.byte	-109
	.byte	-23
	.byte	-126
	.byte	-124
	.byte	-23
	.byte	-121
	.byte	-116
	.byte	-23
	.byte	-99
	.byte	-94
	.byte	0
	.global	af_blue_stringsets
	.section	.rodata.af_blue_stringsets,"a",%progbits
	.align	2
	.type	af_blue_stringsets, %object
	.size	af_blue_stringsets, 544
af_blue_stringsets:
	.word	0
	.short	1
	.space	2
	.word	13
	.short	0
	.space	2
	.word	24
	.short	2
	.space	2
	.word	1040
	.short	0
	.space	2
	.word	27
	.short	1
	.space	2
	.word	44
	.short	0
	.space	2
	.word	61
	.short	5
	.space	2
	.word	61
	.short	0
	.space	2
	.word	78
	.short	0
	.space	2
	.word	1040
	.short	0
	.space	2
	.word	110
	.short	1
	.space	2
	.word	135
	.short	1
	.space	2
	.word	85
	.short	7
	.space	2
	.word	85
	.short	0
	.space	2
	.word	160
	.short	0
	.space	2
	.word	1040
	.short	0
	.space	2
	.word	167
	.short	1
	.space	2
	.word	182
	.short	0
	.space	2
	.word	195
	.short	1
	.space	2
	.word	208
	.short	5
	.space	2
	.word	208
	.short	0
	.space	2
	.word	225
	.short	0
	.space	2
	.word	1040
	.short	0
	.space	2
	.word	242
	.short	9
	.space	2
	.word	259
	.short	0
	.space	2
	.word	272
	.short	0
	.space	2
	.word	1040
	.short	0
	.space	2
	.word	283
	.short	5
	.space	2
	.word	308
	.short	0
	.space	2
	.word	333
	.short	1
	.space	2
	.word	346
	.short	1
	.space	2
	.word	356
	.short	0
	.space	2
	.word	1040
	.short	0
	.space	2
	.word	375
	.short	1
	.space	2
	.word	384
	.short	0
	.space	2
	.word	393
	.short	1
	.space	2
	.word	401
	.short	5
	.space	2
	.word	401
	.short	0
	.space	2
	.word	409
	.short	0
	.space	2
	.word	1040
	.short	0
	.space	2
	.word	415
	.short	1
	.space	2
	.word	431
	.short	0
	.space	2
	.word	447
	.short	1
	.space	2
	.word	463
	.short	5
	.space	2
	.word	463
	.short	0
	.space	2
	.word	491
	.short	0
	.space	2
	.word	1040
	.short	0
	.space	2
	.word	507
	.short	1
	.space	2
	.word	531
	.short	0
	.space	2
	.word	553
	.short	1
	.space	2
	.word	573
	.short	5
	.space	2
	.word	573
	.short	0
	.space	2
	.word	592
	.short	0
	.space	2
	.word	1040
	.short	0
	.space	2
	.word	601
	.short	1
	.space	2
	.word	623
	.short	0
	.space	2
	.word	1040
	.short	0
	.space	2
	.word	645
	.short	5
	.space	2
	.word	664
	.short	0
	.space	2
	.word	686
	.short	1
	.space	2
	.word	696
	.short	1
	.space	2
	.word	706
	.short	0
	.space	2
	.word	719
	.short	0
	.space	2
	.word	726
	.short	0
	.space	2
	.word	1040
	.short	0
	.space	2
	.word	736
	.short	1
	.space	2
	.word	888
	.short	0
	.space	2
	.word	1040
	.short	0
	.space	2
	.global	af_arab_script_class
	.section	.data.rel.ro.af_arab_script_class,"aw",%progbits
	.align	2
	.type	af_arab_script_class, %object
	.size	af_arab_script_class, 24
af_arab_script_class:
	.word	0
	.word	af_arab_uniranges
	.word	af_arab_nonbase_uniranges
	.word	1604
	.word	1581
	.word	1600
	.global	af_cyrl_script_class
	.section	.data.rel.ro.af_cyrl_script_class,"aw",%progbits
	.align	2
	.type	af_cyrl_script_class, %object
	.size	af_cyrl_script_class, 24
af_cyrl_script_class:
	.word	1
	.word	af_cyrl_uniranges
	.word	af_cyrl_nonbase_uniranges
	.word	1086
	.word	1054
	.word	0
	.global	af_deva_script_class
	.section	.data.rel.ro.af_deva_script_class,"aw",%progbits
	.align	2
	.type	af_deva_script_class, %object
	.size	af_deva_script_class, 24
af_deva_script_class:
	.word	2
	.word	af_deva_uniranges
	.word	af_deva_nonbase_uniranges
	.word	2336
	.word	2357
	.word	2335
	.global	af_grek_script_class
	.section	.data.rel.ro.af_grek_script_class,"aw",%progbits
	.align	2
	.type	af_grek_script_class, %object
	.size	af_grek_script_class, 24
af_grek_script_class:
	.word	3
	.word	af_grek_uniranges
	.word	af_grek_nonbase_uniranges
	.word	959
	.word	927
	.word	0
	.global	af_hebr_script_class
	.section	.data.rel.ro.af_hebr_script_class,"aw",%progbits
	.align	2
	.type	af_hebr_script_class, %object
	.size	af_hebr_script_class, 24
af_hebr_script_class:
	.word	4
	.word	af_hebr_uniranges
	.word	af_hebr_nonbase_uniranges
	.word	1501
	.word	0
	.word	0
	.global	af_lao_script_class
	.section	.data.rel.ro.af_lao_script_class,"aw",%progbits
	.align	2
	.type	af_lao_script_class, %object
	.size	af_lao_script_class, 24
af_lao_script_class:
	.word	5
	.word	af_lao_uniranges
	.word	af_lao_nonbase_uniranges
	.word	3792
	.word	0
	.word	0
	.global	af_latn_script_class
	.section	.data.rel.ro.af_latn_script_class,"aw",%progbits
	.align	2
	.type	af_latn_script_class, %object
	.size	af_latn_script_class, 24
af_latn_script_class:
	.word	6
	.word	af_latn_uniranges
	.word	af_latn_nonbase_uniranges
	.word	111
	.word	79
	.word	48
	.global	af_latb_script_class
	.section	.data.rel.ro.af_latb_script_class,"aw",%progbits
	.align	2
	.type	af_latb_script_class, %object
	.size	af_latb_script_class, 24
af_latb_script_class:
	.word	7
	.word	af_latb_uniranges
	.word	af_latb_nonbase_uniranges
	.word	8338
	.word	8320
	.word	0
	.global	af_latp_script_class
	.section	.data.rel.ro.af_latp_script_class,"aw",%progbits
	.align	2
	.type	af_latp_script_class, %object
	.size	af_latp_script_class, 24
af_latp_script_class:
	.word	8
	.word	af_latp_uniranges
	.word	af_latp_nonbase_uniranges
	.word	7506
	.word	7484
	.word	8304
	.global	af_none_script_class
	.section	.data.rel.ro.af_none_script_class,"aw",%progbits
	.align	2
	.type	af_none_script_class, %object
	.size	af_none_script_class, 24
af_none_script_class:
	.word	9
	.word	af_none_uniranges
	.word	af_none_nonbase_uniranges
	.word	0
	.word	0
	.word	0
	.global	af_telu_script_class
	.section	.data.rel.ro.af_telu_script_class,"aw",%progbits
	.align	2
	.type	af_telu_script_class, %object
	.size	af_telu_script_class, 24
af_telu_script_class:
	.word	10
	.word	af_telu_uniranges
	.word	af_telu_nonbase_uniranges
	.word	3174
	.word	3175
	.word	0
	.global	af_thai_script_class
	.section	.data.rel.ro.af_thai_script_class,"aw",%progbits
	.align	2
	.type	af_thai_script_class, %object
	.size	af_thai_script_class, 24
af_thai_script_class:
	.word	11
	.word	af_thai_uniranges
	.word	af_thai_nonbase_uniranges
	.word	3634
	.word	3653
	.word	3664
	.global	af_beng_script_class
	.section	.data.rel.ro.af_beng_script_class,"aw",%progbits
	.align	2
	.type	af_beng_script_class, %object
	.size	af_beng_script_class, 24
af_beng_script_class:
	.word	12
	.word	af_beng_uniranges
	.word	af_beng_nonbase_uniranges
	.word	111
	.word	0
	.word	0
	.global	af_gujr_script_class
	.section	.data.rel.ro.af_gujr_script_class,"aw",%progbits
	.align	2
	.type	af_gujr_script_class, %object
	.size	af_gujr_script_class, 24
af_gujr_script_class:
	.word	13
	.word	af_gujr_uniranges
	.word	af_gujr_nonbase_uniranges
	.word	111
	.word	0
	.word	0
	.global	af_guru_script_class
	.section	.data.rel.ro.af_guru_script_class,"aw",%progbits
	.align	2
	.type	af_guru_script_class, %object
	.size	af_guru_script_class, 24
af_guru_script_class:
	.word	14
	.word	af_guru_uniranges
	.word	af_guru_nonbase_uniranges
	.word	111
	.word	0
	.word	0
	.global	af_knda_script_class
	.section	.data.rel.ro.af_knda_script_class,"aw",%progbits
	.align	2
	.type	af_knda_script_class, %object
	.size	af_knda_script_class, 24
af_knda_script_class:
	.word	15
	.word	af_knda_uniranges
	.word	af_knda_nonbase_uniranges
	.word	111
	.word	0
	.word	0
	.global	af_limb_script_class
	.section	.data.rel.ro.af_limb_script_class,"aw",%progbits
	.align	2
	.type	af_limb_script_class, %object
	.size	af_limb_script_class, 24
af_limb_script_class:
	.word	16
	.word	af_limb_uniranges
	.word	af_limb_nonbase_uniranges
	.word	111
	.word	0
	.word	0
	.global	af_mlym_script_class
	.section	.data.rel.ro.af_mlym_script_class,"aw",%progbits
	.align	2
	.type	af_mlym_script_class, %object
	.size	af_mlym_script_class, 24
af_mlym_script_class:
	.word	17
	.word	af_mlym_uniranges
	.word	af_mlym_nonbase_uniranges
	.word	111
	.word	0
	.word	0
	.global	af_orya_script_class
	.section	.data.rel.ro.af_orya_script_class,"aw",%progbits
	.align	2
	.type	af_orya_script_class, %object
	.size	af_orya_script_class, 24
af_orya_script_class:
	.word	18
	.word	af_orya_uniranges
	.word	af_orya_nonbase_uniranges
	.word	111
	.word	0
	.word	0
	.global	af_sinh_script_class
	.section	.data.rel.ro.af_sinh_script_class,"aw",%progbits
	.align	2
	.type	af_sinh_script_class, %object
	.size	af_sinh_script_class, 24
af_sinh_script_class:
	.word	19
	.word	af_sinh_uniranges
	.word	af_sinh_nonbase_uniranges
	.word	111
	.word	0
	.word	0
	.global	af_sund_script_class
	.section	.data.rel.ro.af_sund_script_class,"aw",%progbits
	.align	2
	.type	af_sund_script_class, %object
	.size	af_sund_script_class, 24
af_sund_script_class:
	.word	20
	.word	af_sund_uniranges
	.word	af_sund_nonbase_uniranges
	.word	111
	.word	0
	.word	0
	.global	af_sylo_script_class
	.section	.data.rel.ro.af_sylo_script_class,"aw",%progbits
	.align	2
	.type	af_sylo_script_class, %object
	.size	af_sylo_script_class, 24
af_sylo_script_class:
	.word	21
	.word	af_sylo_uniranges
	.word	af_sylo_nonbase_uniranges
	.word	111
	.word	0
	.word	0
	.global	af_taml_script_class
	.section	.data.rel.ro.af_taml_script_class,"aw",%progbits
	.align	2
	.type	af_taml_script_class, %object
	.size	af_taml_script_class, 24
af_taml_script_class:
	.word	22
	.word	af_taml_uniranges
	.word	af_taml_nonbase_uniranges
	.word	111
	.word	0
	.word	0
	.global	af_tibt_script_class
	.section	.data.rel.ro.af_tibt_script_class,"aw",%progbits
	.align	2
	.type	af_tibt_script_class, %object
	.size	af_tibt_script_class, 24
af_tibt_script_class:
	.word	23
	.word	af_tibt_uniranges
	.word	af_tibt_nonbase_uniranges
	.word	111
	.word	0
	.word	0
	.global	af_hani_script_class
	.section	.data.rel.ro.af_hani_script_class,"aw",%progbits
	.align	2
	.type	af_hani_script_class, %object
	.size	af_hani_script_class, 24
af_hani_script_class:
	.word	24
	.word	af_hani_uniranges
	.word	af_hani_nonbase_uniranges
	.word	30000
	.word	22231
	.word	0
	.global	af_arab_dflt_style_class
	.section	.rodata.af_arab_dflt_style_class,"a",%progbits
	.align	2
	.type	af_arab_dflt_style_class, %object
	.size	af_arab_dflt_style_class, 20
af_arab_dflt_style_class:
	.word	0
	.word	1
	.word	0
	.word	0
	.word	10
	.global	af_cyrl_c2cp_style_class
	.section	.rodata.af_cyrl_c2cp_style_class,"a",%progbits
	.align	2
	.type	af_cyrl_c2cp_style_class, %object
	.size	af_cyrl_c2cp_style_class, 20
af_cyrl_c2cp_style_class:
	.word	1
	.word	1
	.word	1
	.word	4
	.word	0
	.global	af_cyrl_c2sc_style_class
	.section	.rodata.af_cyrl_c2sc_style_class,"a",%progbits
	.align	2
	.type	af_cyrl_c2sc_style_class, %object
	.size	af_cyrl_c2sc_style_class, 20
af_cyrl_c2sc_style_class:
	.word	2
	.word	1
	.word	1
	.word	4
	.word	1
	.global	af_cyrl_ordn_style_class
	.section	.rodata.af_cyrl_ordn_style_class,"a",%progbits
	.align	2
	.type	af_cyrl_ordn_style_class, %object
	.size	af_cyrl_ordn_style_class, 20
af_cyrl_ordn_style_class:
	.word	3
	.word	1
	.word	1
	.word	4
	.word	2
	.global	af_cyrl_pcap_style_class
	.section	.rodata.af_cyrl_pcap_style_class,"a",%progbits
	.align	2
	.type	af_cyrl_pcap_style_class, %object
	.size	af_cyrl_pcap_style_class, 20
af_cyrl_pcap_style_class:
	.word	4
	.word	1
	.word	1
	.word	4
	.word	3
	.global	af_cyrl_sinf_style_class
	.section	.rodata.af_cyrl_sinf_style_class,"a",%progbits
	.align	2
	.type	af_cyrl_sinf_style_class, %object
	.size	af_cyrl_sinf_style_class, 20
af_cyrl_sinf_style_class:
	.word	5
	.word	1
	.word	1
	.word	4
	.word	5
	.global	af_cyrl_smcp_style_class
	.section	.rodata.af_cyrl_smcp_style_class,"a",%progbits
	.align	2
	.type	af_cyrl_smcp_style_class, %object
	.size	af_cyrl_smcp_style_class, 20
af_cyrl_smcp_style_class:
	.word	6
	.word	1
	.word	1
	.word	4
	.word	6
	.global	af_cyrl_subs_style_class
	.section	.rodata.af_cyrl_subs_style_class,"a",%progbits
	.align	2
	.type	af_cyrl_subs_style_class, %object
	.size	af_cyrl_subs_style_class, 20
af_cyrl_subs_style_class:
	.word	7
	.word	1
	.word	1
	.word	4
	.word	7
	.global	af_cyrl_sups_style_class
	.section	.rodata.af_cyrl_sups_style_class,"a",%progbits
	.align	2
	.type	af_cyrl_sups_style_class, %object
	.size	af_cyrl_sups_style_class, 20
af_cyrl_sups_style_class:
	.word	8
	.word	1
	.word	1
	.word	4
	.word	8
	.global	af_cyrl_titl_style_class
	.section	.rodata.af_cyrl_titl_style_class,"a",%progbits
	.align	2
	.type	af_cyrl_titl_style_class, %object
	.size	af_cyrl_titl_style_class, 20
af_cyrl_titl_style_class:
	.word	9
	.word	1
	.word	1
	.word	4
	.word	9
	.global	af_cyrl_dflt_style_class
	.section	.rodata.af_cyrl_dflt_style_class,"a",%progbits
	.align	2
	.type	af_cyrl_dflt_style_class, %object
	.size	af_cyrl_dflt_style_class, 20
af_cyrl_dflt_style_class:
	.word	10
	.word	1
	.word	1
	.word	4
	.word	10
	.global	af_deva_dflt_style_class
	.section	.rodata.af_deva_dflt_style_class,"a",%progbits
	.align	2
	.type	af_deva_dflt_style_class, %object
	.size	af_deva_dflt_style_class, 20
af_deva_dflt_style_class:
	.word	11
	.word	1
	.word	2
	.word	10
	.word	10
	.global	af_grek_c2cp_style_class
	.section	.rodata.af_grek_c2cp_style_class,"a",%progbits
	.align	2
	.type	af_grek_c2cp_style_class, %object
	.size	af_grek_c2cp_style_class, 20
af_grek_c2cp_style_class:
	.word	12
	.word	1
	.word	3
	.word	16
	.word	0
	.global	af_grek_c2sc_style_class
	.section	.rodata.af_grek_c2sc_style_class,"a",%progbits
	.align	2
	.type	af_grek_c2sc_style_class, %object
	.size	af_grek_c2sc_style_class, 20
af_grek_c2sc_style_class:
	.word	13
	.word	1
	.word	3
	.word	16
	.word	1
	.global	af_grek_ordn_style_class
	.section	.rodata.af_grek_ordn_style_class,"a",%progbits
	.align	2
	.type	af_grek_ordn_style_class, %object
	.size	af_grek_ordn_style_class, 20
af_grek_ordn_style_class:
	.word	14
	.word	1
	.word	3
	.word	16
	.word	2
	.global	af_grek_pcap_style_class
	.section	.rodata.af_grek_pcap_style_class,"a",%progbits
	.align	2
	.type	af_grek_pcap_style_class, %object
	.size	af_grek_pcap_style_class, 20
af_grek_pcap_style_class:
	.word	15
	.word	1
	.word	3
	.word	16
	.word	3
	.global	af_grek_sinf_style_class
	.section	.rodata.af_grek_sinf_style_class,"a",%progbits
	.align	2
	.type	af_grek_sinf_style_class, %object
	.size	af_grek_sinf_style_class, 20
af_grek_sinf_style_class:
	.word	16
	.word	1
	.word	3
	.word	16
	.word	5
	.global	af_grek_smcp_style_class
	.section	.rodata.af_grek_smcp_style_class,"a",%progbits
	.align	2
	.type	af_grek_smcp_style_class, %object
	.size	af_grek_smcp_style_class, 20
af_grek_smcp_style_class:
	.word	17
	.word	1
	.word	3
	.word	16
	.word	6
	.global	af_grek_subs_style_class
	.section	.rodata.af_grek_subs_style_class,"a",%progbits
	.align	2
	.type	af_grek_subs_style_class, %object
	.size	af_grek_subs_style_class, 20
af_grek_subs_style_class:
	.word	18
	.word	1
	.word	3
	.word	16
	.word	7
	.global	af_grek_sups_style_class
	.section	.rodata.af_grek_sups_style_class,"a",%progbits
	.align	2
	.type	af_grek_sups_style_class, %object
	.size	af_grek_sups_style_class, 20
af_grek_sups_style_class:
	.word	19
	.word	1
	.word	3
	.word	16
	.word	8
	.global	af_grek_titl_style_class
	.section	.rodata.af_grek_titl_style_class,"a",%progbits
	.align	2
	.type	af_grek_titl_style_class, %object
	.size	af_grek_titl_style_class, 20
af_grek_titl_style_class:
	.word	20
	.word	1
	.word	3
	.word	16
	.word	9
	.global	af_grek_dflt_style_class
	.section	.rodata.af_grek_dflt_style_class,"a",%progbits
	.align	2
	.type	af_grek_dflt_style_class, %object
	.size	af_grek_dflt_style_class, 20
af_grek_dflt_style_class:
	.word	21
	.word	1
	.word	3
	.word	16
	.word	10
	.global	af_hebr_dflt_style_class
	.section	.rodata.af_hebr_dflt_style_class,"a",%progbits
	.align	2
	.type	af_hebr_dflt_style_class, %object
	.size	af_hebr_dflt_style_class, 20
af_hebr_dflt_style_class:
	.word	22
	.word	1
	.word	4
	.word	23
	.word	10
	.global	af_lao_dflt_style_class
	.section	.rodata.af_lao_dflt_style_class,"a",%progbits
	.align	2
	.type	af_lao_dflt_style_class, %object
	.size	af_lao_dflt_style_class, 20
af_lao_dflt_style_class:
	.word	23
	.word	1
	.word	5
	.word	27
	.word	10
	.global	af_latn_c2cp_style_class
	.section	.rodata.af_latn_c2cp_style_class,"a",%progbits
	.align	2
	.type	af_latn_c2cp_style_class, %object
	.size	af_latn_c2cp_style_class, 20
af_latn_c2cp_style_class:
	.word	24
	.word	1
	.word	6
	.word	33
	.word	0
	.global	af_latn_c2sc_style_class
	.section	.rodata.af_latn_c2sc_style_class,"a",%progbits
	.align	2
	.type	af_latn_c2sc_style_class, %object
	.size	af_latn_c2sc_style_class, 20
af_latn_c2sc_style_class:
	.word	25
	.word	1
	.word	6
	.word	33
	.word	1
	.global	af_latn_ordn_style_class
	.section	.rodata.af_latn_ordn_style_class,"a",%progbits
	.align	2
	.type	af_latn_ordn_style_class, %object
	.size	af_latn_ordn_style_class, 20
af_latn_ordn_style_class:
	.word	26
	.word	1
	.word	6
	.word	33
	.word	2
	.global	af_latn_pcap_style_class
	.section	.rodata.af_latn_pcap_style_class,"a",%progbits
	.align	2
	.type	af_latn_pcap_style_class, %object
	.size	af_latn_pcap_style_class, 20
af_latn_pcap_style_class:
	.word	27
	.word	1
	.word	6
	.word	33
	.word	3
	.global	af_latn_sinf_style_class
	.section	.rodata.af_latn_sinf_style_class,"a",%progbits
	.align	2
	.type	af_latn_sinf_style_class, %object
	.size	af_latn_sinf_style_class, 20
af_latn_sinf_style_class:
	.word	28
	.word	1
	.word	6
	.word	33
	.word	5
	.global	af_latn_smcp_style_class
	.section	.rodata.af_latn_smcp_style_class,"a",%progbits
	.align	2
	.type	af_latn_smcp_style_class, %object
	.size	af_latn_smcp_style_class, 20
af_latn_smcp_style_class:
	.word	29
	.word	1
	.word	6
	.word	33
	.word	6
	.global	af_latn_subs_style_class
	.section	.rodata.af_latn_subs_style_class,"a",%progbits
	.align	2
	.type	af_latn_subs_style_class, %object
	.size	af_latn_subs_style_class, 20
af_latn_subs_style_class:
	.word	30
	.word	1
	.word	6
	.word	33
	.word	7
	.global	af_latn_sups_style_class
	.section	.rodata.af_latn_sups_style_class,"a",%progbits
	.align	2
	.type	af_latn_sups_style_class, %object
	.size	af_latn_sups_style_class, 20
af_latn_sups_style_class:
	.word	31
	.word	1
	.word	6
	.word	33
	.word	8
	.global	af_latn_titl_style_class
	.section	.rodata.af_latn_titl_style_class,"a",%progbits
	.align	2
	.type	af_latn_titl_style_class, %object
	.size	af_latn_titl_style_class, 20
af_latn_titl_style_class:
	.word	32
	.word	1
	.word	6
	.word	33
	.word	9
	.global	af_latn_dflt_style_class
	.section	.rodata.af_latn_dflt_style_class,"a",%progbits
	.align	2
	.type	af_latn_dflt_style_class, %object
	.size	af_latn_dflt_style_class, 20
af_latn_dflt_style_class:
	.word	33
	.word	1
	.word	6
	.word	33
	.word	10
	.global	af_latb_dflt_style_class
	.section	.rodata.af_latb_dflt_style_class,"a",%progbits
	.align	2
	.type	af_latb_dflt_style_class, %object
	.size	af_latb_dflt_style_class, 20
af_latb_dflt_style_class:
	.word	34
	.word	1
	.word	7
	.word	40
	.word	10
	.global	af_latp_dflt_style_class
	.section	.rodata.af_latp_dflt_style_class,"a",%progbits
	.align	2
	.type	af_latp_dflt_style_class, %object
	.size	af_latp_dflt_style_class, 20
af_latp_dflt_style_class:
	.word	35
	.word	1
	.word	8
	.word	47
	.word	10
	.global	af_none_dflt_style_class
	.section	.rodata.af_none_dflt_style_class,"a",%progbits
	.align	2
	.type	af_none_dflt_style_class, %object
	.size	af_none_dflt_style_class, 20
af_none_dflt_style_class:
	.word	36
	.word	0
	.word	9
	.word	0
	.word	10
	.global	af_telu_dflt_style_class
	.section	.rodata.af_telu_dflt_style_class,"a",%progbits
	.align	2
	.type	af_telu_dflt_style_class, %object
	.size	af_telu_dflt_style_class, 20
af_telu_dflt_style_class:
	.word	37
	.word	1
	.word	10
	.word	54
	.word	10
	.global	af_thai_dflt_style_class
	.section	.rodata.af_thai_dflt_style_class,"a",%progbits
	.align	2
	.type	af_thai_dflt_style_class, %object
	.size	af_thai_dflt_style_class, 20
af_thai_dflt_style_class:
	.word	38
	.word	1
	.word	11
	.word	57
	.word	10
	.global	af_beng_dflt_style_class
	.section	.rodata.af_beng_dflt_style_class,"a",%progbits
	.align	2
	.type	af_beng_dflt_style_class, %object
	.size	af_beng_dflt_style_class, 20
af_beng_dflt_style_class:
	.word	39
	.word	3
	.word	12
	.word	0
	.word	10
	.global	af_gujr_dflt_style_class
	.section	.rodata.af_gujr_dflt_style_class,"a",%progbits
	.align	2
	.type	af_gujr_dflt_style_class, %object
	.size	af_gujr_dflt_style_class, 20
af_gujr_dflt_style_class:
	.word	40
	.word	3
	.word	13
	.word	0
	.word	10
	.global	af_guru_dflt_style_class
	.section	.rodata.af_guru_dflt_style_class,"a",%progbits
	.align	2
	.type	af_guru_dflt_style_class, %object
	.size	af_guru_dflt_style_class, 20
af_guru_dflt_style_class:
	.word	41
	.word	3
	.word	14
	.word	0
	.word	10
	.global	af_knda_dflt_style_class
	.section	.rodata.af_knda_dflt_style_class,"a",%progbits
	.align	2
	.type	af_knda_dflt_style_class, %object
	.size	af_knda_dflt_style_class, 20
af_knda_dflt_style_class:
	.word	42
	.word	3
	.word	15
	.word	0
	.word	10
	.global	af_limb_dflt_style_class
	.section	.rodata.af_limb_dflt_style_class,"a",%progbits
	.align	2
	.type	af_limb_dflt_style_class, %object
	.size	af_limb_dflt_style_class, 20
af_limb_dflt_style_class:
	.word	43
	.word	3
	.word	16
	.word	0
	.word	10
	.global	af_mlym_dflt_style_class
	.section	.rodata.af_mlym_dflt_style_class,"a",%progbits
	.align	2
	.type	af_mlym_dflt_style_class, %object
	.size	af_mlym_dflt_style_class, 20
af_mlym_dflt_style_class:
	.word	44
	.word	3
	.word	17
	.word	0
	.word	10
	.global	af_orya_dflt_style_class
	.section	.rodata.af_orya_dflt_style_class,"a",%progbits
	.align	2
	.type	af_orya_dflt_style_class, %object
	.size	af_orya_dflt_style_class, 20
af_orya_dflt_style_class:
	.word	45
	.word	3
	.word	18
	.word	0
	.word	10
	.global	af_sinh_dflt_style_class
	.section	.rodata.af_sinh_dflt_style_class,"a",%progbits
	.align	2
	.type	af_sinh_dflt_style_class, %object
	.size	af_sinh_dflt_style_class, 20
af_sinh_dflt_style_class:
	.word	46
	.word	3
	.word	19
	.word	0
	.word	10
	.global	af_sund_dflt_style_class
	.section	.rodata.af_sund_dflt_style_class,"a",%progbits
	.align	2
	.type	af_sund_dflt_style_class, %object
	.size	af_sund_dflt_style_class, 20
af_sund_dflt_style_class:
	.word	47
	.word	3
	.word	20
	.word	0
	.word	10
	.global	af_sylo_dflt_style_class
	.section	.rodata.af_sylo_dflt_style_class,"a",%progbits
	.align	2
	.type	af_sylo_dflt_style_class, %object
	.size	af_sylo_dflt_style_class, 20
af_sylo_dflt_style_class:
	.word	48
	.word	3
	.word	21
	.word	0
	.word	10
	.global	af_taml_dflt_style_class
	.section	.rodata.af_taml_dflt_style_class,"a",%progbits
	.align	2
	.type	af_taml_dflt_style_class, %object
	.size	af_taml_dflt_style_class, 20
af_taml_dflt_style_class:
	.word	49
	.word	3
	.word	22
	.word	0
	.word	10
	.global	af_tibt_dflt_style_class
	.section	.rodata.af_tibt_dflt_style_class,"a",%progbits
	.align	2
	.type	af_tibt_dflt_style_class, %object
	.size	af_tibt_dflt_style_class, 20
af_tibt_dflt_style_class:
	.word	50
	.word	3
	.word	23
	.word	0
	.word	10
	.global	af_hani_dflt_style_class
	.section	.rodata.af_hani_dflt_style_class,"a",%progbits
	.align	2
	.type	af_hani_dflt_style_class, %object
	.size	af_hani_dflt_style_class, 20
af_hani_dflt_style_class:
	.word	51
	.word	2
	.word	24
	.word	65
	.word	10
	.global	af_writing_system_classes
	.section	.data.rel.ro.af_writing_system_classes,"aw",%progbits
	.align	2
	.type	af_writing_system_classes, %object
	.size	af_writing_system_classes, 20
af_writing_system_classes:
	.word	af_dummy_writing_system_class
	.word	af_latin_writing_system_class
	.word	af_cjk_writing_system_class
	.word	af_indic_writing_system_class
	.word	0
	.global	af_script_classes
	.section	.data.rel.ro.af_script_classes,"aw",%progbits
	.align	2
	.type	af_script_classes, %object
	.size	af_script_classes, 104
af_script_classes:
	.word	af_arab_script_class
	.word	af_cyrl_script_class
	.word	af_deva_script_class
	.word	af_grek_script_class
	.word	af_hebr_script_class
	.word	af_lao_script_class
	.word	af_latn_script_class
	.word	af_latb_script_class
	.word	af_latp_script_class
	.word	af_none_script_class
	.word	af_telu_script_class
	.word	af_thai_script_class
	.word	af_beng_script_class
	.word	af_gujr_script_class
	.word	af_guru_script_class
	.word	af_knda_script_class
	.word	af_limb_script_class
	.word	af_mlym_script_class
	.word	af_orya_script_class
	.word	af_sinh_script_class
	.word	af_sund_script_class
	.word	af_sylo_script_class
	.word	af_taml_script_class
	.word	af_tibt_script_class
	.word	af_hani_script_class
	.word	0
	.global	af_style_classes
	.section	.data.rel.ro.af_style_classes,"aw",%progbits
	.align	2
	.type	af_style_classes, %object
	.size	af_style_classes, 212
af_style_classes:
	.word	af_arab_dflt_style_class
	.word	af_cyrl_c2cp_style_class
	.word	af_cyrl_c2sc_style_class
	.word	af_cyrl_ordn_style_class
	.word	af_cyrl_pcap_style_class
	.word	af_cyrl_sinf_style_class
	.word	af_cyrl_smcp_style_class
	.word	af_cyrl_subs_style_class
	.word	af_cyrl_sups_style_class
	.word	af_cyrl_titl_style_class
	.word	af_cyrl_dflt_style_class
	.word	af_deva_dflt_style_class
	.word	af_grek_c2cp_style_class
	.word	af_grek_c2sc_style_class
	.word	af_grek_ordn_style_class
	.word	af_grek_pcap_style_class
	.word	af_grek_sinf_style_class
	.word	af_grek_smcp_style_class
	.word	af_grek_subs_style_class
	.word	af_grek_sups_style_class
	.word	af_grek_titl_style_class
	.word	af_grek_dflt_style_class
	.word	af_hebr_dflt_style_class
	.word	af_lao_dflt_style_class
	.word	af_latn_c2cp_style_class
	.word	af_latn_c2sc_style_class
	.word	af_latn_ordn_style_class
	.word	af_latn_pcap_style_class
	.word	af_latn_sinf_style_class
	.word	af_latn_smcp_style_class
	.word	af_latn_subs_style_class
	.word	af_latn_sups_style_class
	.word	af_latn_titl_style_class
	.word	af_latn_dflt_style_class
	.word	af_latb_dflt_style_class
	.word	af_latp_dflt_style_class
	.word	af_none_dflt_style_class
	.word	af_telu_dflt_style_class
	.word	af_thai_dflt_style_class
	.word	af_beng_dflt_style_class
	.word	af_gujr_dflt_style_class
	.word	af_guru_dflt_style_class
	.word	af_knda_dflt_style_class
	.word	af_limb_dflt_style_class
	.word	af_mlym_dflt_style_class
	.word	af_orya_dflt_style_class
	.word	af_sinh_dflt_style_class
	.word	af_sund_dflt_style_class
	.word	af_sylo_dflt_style_class
	.word	af_taml_dflt_style_class
	.word	af_tibt_dflt_style_class
	.word	af_hani_dflt_style_class
	.word	0
	.section	.text.af_face_globals_compute_style_coverage,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_face_globals_compute_style_coverage, %function
af_face_globals_compute_style_coverage:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #84
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r4, .L59
.LPIC0:
	add	r4, pc
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #92]
	str	r3, [r7, #40]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	str	r3, [r7, #36]
	mov	r3, #-1
	str	r3, [r7, #64]
	movs	r3, #0
	str	r3, [r7, #68]
	b	.L28
.L29:
	ldr	r3, [r7, #68]
	lsls	r3, r3, #1
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	movw	r2, #16383
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #68]
	adds	r3, r3, #1
	str	r3, [r7, #68]
.L28:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, [r7, #68]
	cmp	r2, r3
	bhi	.L29
	ldr	r0, [r7, #44]
	movw	r1, #26979
	movt	r1, 30062
	bl	FT_Select_Charmap(PLT)
	str	r0, [r7, #76]
	ldr	r3, [r7, #76]
	cmp	r3, #0
	beq	.L30
	movs	r3, #0
	str	r3, [r7, #76]
	b	.L31
.L30:
	movs	r3, #0
	str	r3, [r7, #72]
	b	.L32
.L47:
	ldr	r3, .L59+4
	ldr	r3, [r4, r3]
	ldr	r2, [r7, #72]
	ldr	r3, [r3, r2, lsl #2]
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	ldr	r2, [r3, #8]
	ldr	r3, .L59+8
	ldr	r3, [r4, r3]
	ldr	r3, [r3, r2, lsl #2]
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L33
	b	.L34
.L33:
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #16]
	cmp	r3, #10
	bne	.L35
	ldr	r3, [r7, #32]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #252]
	ldr	r3, [r3, #16]
	cmp	r2, r3
	bne	.L36
	ldr	r3, [r7, #72]
	str	r3, [r7, #64]
.L36:
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #4]
	str	r3, [r7, #60]
	b	.L37
.L41:
	ldr	r3, [r7, #60]
	ldr	r3, [r3]
	str	r3, [r7, #56]
	ldr	r0, [r7, #44]
	ldr	r1, [r7, #56]
	bl	FT_Get_Char_Index(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L38
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bls	.L38
	ldr	r3, [r7, #16]
	lsls	r3, r3, #1
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrh	r3, [r3]
	ubfx	r2, r3, #0, #14
	movw	r3, #16383
	cmp	r2, r3
	bne	.L38
	ldr	r3, [r7, #16]
	lsls	r3, r3, #1
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldr	r2, [r7, #72]
	uxth	r2, r2
	strh	r2, [r3]	@ movhi
.L38:
	add	r3, r7, #16
	ldr	r0, [r7, #44]
	ldr	r1, [r7, #56]
	mov	r2, r3
	bl	FT_Get_Next_Char(PLT)
	str	r0, [r7, #56]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L39
	ldr	r3, [r7, #60]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #56]
	cmp	r2, r3
	bcc	.L39
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bls	.L40
	ldr	r3, [r7, #16]
	lsls	r3, r3, #1
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrh	r3, [r3]
	ubfx	r2, r3, #0, #14
	movw	r3, #16383
	cmp	r2, r3
	bne	.L40
	ldr	r3, [r7, #16]
	lsls	r3, r3, #1
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldr	r2, [r7, #72]
	uxth	r2, r2
	strh	r2, [r3]	@ movhi
	b	.L38
.L40:
	b	.L38
.L39:
	ldr	r3, [r7, #60]
	adds	r3, r3, #8
	str	r3, [r7, #60]
.L37:
	ldr	r3, [r7, #60]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L41
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #8]
	str	r3, [r7, #60]
	b	.L42
.L46:
	ldr	r3, [r7, #60]
	ldr	r3, [r3]
	str	r3, [r7, #52]
	ldr	r0, [r7, #44]
	ldr	r1, [r7, #52]
	bl	FT_Get_Char_Index(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L43
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bls	.L43
	ldr	r3, [r7, #12]
	lsls	r3, r3, #1
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrh	r3, [r3]
	ubfx	r2, r3, #0, #14
	ldr	r3, [r7, #72]
	uxth	r3, r3
	cmp	r2, r3
	bne	.L43
	ldr	r3, [r7, #12]
	lsls	r3, r3, #1
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldr	r2, [r7, #12]
	lsls	r2, r2, #1
	ldr	r1, [r7, #36]
	add	r2, r2, r1
	ldrh	r2, [r2]
	orr	r2, r2, #16384
	uxth	r2, r2
	strh	r2, [r3]	@ movhi
.L43:
	add	r3, r7, #12
	ldr	r0, [r7, #44]
	ldr	r1, [r7, #52]
	mov	r2, r3
	bl	FT_Get_Next_Char(PLT)
	str	r0, [r7, #52]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L44
	ldr	r3, [r7, #60]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bcc	.L44
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bls	.L45
	ldr	r3, [r7, #12]
	lsls	r3, r3, #1
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrh	r3, [r3]
	ubfx	r2, r3, #0, #14
	ldr	r3, [r7, #72]
	uxth	r3, r3
	cmp	r2, r3
	bne	.L45
	ldr	r3, [r7, #12]
	lsls	r3, r3, #1
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldr	r2, [r7, #12]
	lsls	r2, r2, #1
	ldr	r1, [r7, #36]
	add	r2, r2, r1
	ldrh	r2, [r2]
	orr	r2, r2, #16384
	uxth	r2, r2
	strh	r2, [r3]	@ movhi
	b	.L43
.L45:
	b	.L43
.L44:
	ldr	r3, [r7, #60]
	adds	r3, r3, #8
	str	r3, [r7, #60]
.L42:
	ldr	r3, [r7, #60]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L46
	b	.L34
.L35:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #32]
	ldr	r2, [r7, #36]
	bl	af_get_coverage(PLT)
.L34:
	ldr	r3, [r7, #72]
	adds	r3, r3, #1
	str	r3, [r7, #72]
.L32:
	ldr	r3, .L59+4
	ldr	r3, [r4, r3]
	ldr	r2, [r7, #72]
	ldr	r3, [r3, r2, lsl #2]
	cmp	r3, #0
	bne	.L47
	ldr	r3, .L59+4
	ldr	r3, [r4, r3]
	ldr	r2, [r7, #64]
	ldr	r3, [r3, r2, lsl #2]
	ldr	r0, [r7, #4]
	mov	r1, r3
	ldr	r2, [r7, #36]
	bl	af_get_coverage(PLT)
	movs	r3, #0
	str	r3, [r7, #72]
	b	.L48
.L50:
	ldr	r3, .L59+4
	ldr	r3, [r4, r3]
	ldr	r2, [r7, #72]
	ldr	r3, [r3, r2, lsl #2]
	str	r3, [r7, #24]
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #64]
	cmp	r2, r3
	beq	.L49
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #16]
	cmp	r3, #10
	bne	.L49
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #24]
	ldr	r2, [r7, #36]
	bl	af_get_coverage(PLT)
.L49:
	ldr	r3, [r7, #72]
	adds	r3, r3, #1
	str	r3, [r7, #72]
.L48:
	ldr	r3, .L59+4
	ldr	r3, [r4, r3]
	ldr	r2, [r7, #72]
	ldr	r3, [r3, r2, lsl #2]
	cmp	r3, #0
	bne	.L50
	movs	r3, #48
	str	r3, [r7, #68]
	b	.L51
.L53:
	ldr	r0, [r7, #44]
	ldr	r1, [r7, #68]
	bl	FT_Get_Char_Index(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L52
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bls	.L52
	ldr	r3, [r7, #20]
	lsls	r3, r3, #1
	ldr	r2, [r7, #36]
	add	r2, r2, r3
	ldr	r3, [r7, #20]
	lsls	r3, r3, #1
	ldr	r1, [r7, #36]
	add	r3, r3, r1
	ldrh	r3, [r3]
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	uxth	r3, r3
	strh	r3, [r2]	@ movhi
.L52:
	ldr	r3, [r7, #68]
	adds	r3, r3, #1
	str	r3, [r7, #68]
.L51:
	ldr	r3, [r7, #68]
	cmp	r3, #57
	bls	.L53
.L31:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #252]
	ldr	r2, [r3, #12]
	movw	r3, #16383
	cmp	r2, r3
	beq	.L54
	movs	r3, #0
	str	r3, [r7, #48]
	b	.L55
.L57:
	ldr	r3, [r7, #48]
	lsls	r3, r3, #1
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrh	r3, [r3]
	ubfx	r2, r3, #0, #14
	movw	r3, #16383
	cmp	r2, r3
	bne	.L56
	ldr	r3, [r7, #48]
	lsls	r3, r3, #1
	ldr	r2, [r7, #36]
	add	r2, r2, r3
	ldr	r3, [r7, #48]
	lsls	r3, r3, #1
	ldr	r1, [r7, #36]
	add	r3, r3, r1
	ldrh	r3, [r3]
	bic	r3, r3, #16320
	bic	r3, r3, #63
	uxth	r3, r3
	strh	r3, [r2]	@ movhi
	ldr	r3, [r7, #48]
	lsls	r3, r3, #1
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldr	r2, [r7, #48]
	lsls	r2, r2, #1
	ldr	r1, [r7, #36]
	add	r2, r2, r1
	ldrh	r1, [r2]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #252]
	ldr	r2, [r2, #12]
	uxth	r2, r2
	orrs	r2, r2, r1
	uxth	r2, r2
	strh	r2, [r3]	@ movhi
.L56:
	ldr	r3, [r7, #48]
	adds	r3, r3, #1
	str	r3, [r7, #48]
.L55:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #48]
	cmp	r2, r3
	bgt	.L57
.L54:
	ldr	r0, [r7, #44]
	ldr	r1, [r7, #40]
	bl	FT_Set_Charmap(PLT)
	ldr	r3, [r7, #76]
	mov	r0, r3
	adds	r7, r7, #84
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L60:
	.align	2
.L59:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.word	af_style_classes(GOT)
	.word	af_script_classes(GOT)
	.size	af_face_globals_compute_style_coverage, .-af_face_globals_compute_style_coverage
	.section	.text.af_face_globals_new,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_face_globals_new, %function
af_face_globals_new:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #100]
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	adds	r3, r3, #128
	lsls	r3, r3, #1
	mov	r2, r3
	add	r3, r7, #20
	ldr	r0, [r7, #24]
	mov	r1, r2
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L62
	b	.L63
.L62:
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #28]
	str	r2, [r3, #4]
	ldr	r3, [r7, #28]
	add	r2, r3, #256
	ldr	r3, [r7, #28]
	str	r2, [r3, #8]
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #4]
	str	r2, [r3, #252]
	ldr	r3, [r7, #28]
	movs	r2, #0
	strh	r2, [r3, #228]	@ movhi
	ldr	r3, [r7, #28]
	movs	r2, #0
	str	r2, [r3, #240]
	ldr	r3, [r7, #28]
	movs	r2, #0
	str	r2, [r3, #244]
	ldr	r3, [r7, #28]
	movs	r2, #0
	str	r2, [r3, #232]
	ldr	r3, [r7, #28]
	movs	r2, #0
	str	r2, [r3, #236]
	ldr	r3, [r7, #28]
	movs	r2, #0
	str	r2, [r3, #248]
	ldr	r0, [r7, #12]
	movs	r1, #0
	bl	hb_ft_font_create(PLT)
	mov	r2, r0
	ldr	r3, [r7, #28]
	str	r2, [r3, #12]
	ldr	r0, [r7, #28]
	bl	af_face_globals_compute_style_coverage(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L64
	ldr	r0, [r7, #28]
	bl	af_face_globals_free(PLT)
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L63
.L64:
	ldr	r3, [r7, #28]
	movs	r2, #0
	str	r2, [r3, #16]
.L63:
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #28]
	str	r2, [r3]
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	af_face_globals_new, .-af_face_globals_new
	.section	.text.af_face_globals_free,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_face_globals_free, %function
af_face_globals_free:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r4, .L72
.LPIC1:
	add	r4, pc
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L66
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #100]
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L68
.L71:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #20]
	adds	r3, r3, #4
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L69
	ldr	r3, .L72+4
	ldr	r3, [r4, r3]
	ldr	r2, [r7, #20]
	ldr	r3, [r3, r2, lsl #2]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, .L72+8
	ldr	r3, [r4, r3]
	ldr	r3, [r3, r2, lsl #2]
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L70
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #16]
	ldr	r1, [r7, #4]
	ldr	r3, [r7, #20]
	adds	r3, r3, #4
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r3, [r3, #4]
	mov	r0, r3
	blx	r2
.L70:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #20]
	adds	r3, r3, #4
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #16]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #20]
	adds	r3, r3, #4
	lsls	r3, r3, #2
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [r3, #4]
.L69:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L68:
	ldr	r3, [r7, #20]
	cmp	r3, #51
	bls	.L71
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mov	r0, r3
	bl	hb_font_destroy(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strh	r2, [r3, #228]	@ movhi
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #240]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #244]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #232]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #236]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #248]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r0, [r7, #16]
	ldr	r1, [r7, #4]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #4]
.L66:
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L73:
	.align	2
.L72:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.word	af_style_classes(GOT)
	.word	af_writing_system_classes(GOT)
	.size	af_face_globals_free, .-af_face_globals_free
	.section	.text.af_face_globals_get_metrics,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_face_globals_get_metrics, %function
af_face_globals_get_metrics:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, .L83
.LPIC2:
	add	r3, pc
	movs	r2, #0
	str	r2, [r7, #36]
	ldr	r2, [r7, #4]
	str	r2, [r7, #32]
	movs	r2, #0
	str	r2, [r7, #16]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #4]
	mov	r1, r2
	ldr	r2, [r7, #8]
	cmp	r1, r2
	bhi	.L75
	movs	r3, #6
	str	r3, [r7, #16]
	b	.L76
.L75:
	ldr	r2, [r7, #32]
	cmp	r2, #36
	beq	.L77
	ldr	r2, [r7, #32]
	adds	r2, r2, #1
	cmp	r2, #51
	bls	.L78
.L77:
	ldr	r2, [r7, #12]
	ldr	r1, [r2, #8]
	ldr	r2, [r7, #8]
	lsls	r2, r2, #1
	add	r2, r2, r1
	ldrh	r2, [r2]
	ubfx	r2, r2, #0, #14
	str	r2, [r7, #32]
.L78:
	ldr	r2, .L83+4
	ldr	r2, [r3, r2]
	ldr	r1, [r7, #32]
	ldr	r2, [r2, r1, lsl #2]
	str	r2, [r7, #28]
	ldr	r2, [r7, #28]
	ldr	r2, [r2, #4]
	ldr	r1, .L83+8
	ldr	r3, [r3, r1]
	ldr	r3, [r3, r2, lsl #2]
	str	r3, [r7, #24]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #32]
	adds	r3, r3, #4
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L76
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #100]
	str	r3, [r7, #20]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #4]
	mov	r2, r3
	add	r3, r7, #16
	ldr	r0, [r7, #20]
	mov	r1, r2
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	str	r0, [r7, #36]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L79
	b	.L76
.L79:
	ldr	r3, [r7, #36]
	ldr	r2, [r7, #28]
	str	r2, [r3]
	ldr	r3, [r7, #36]
	ldr	r2, [r7, #12]
	str	r2, [r3, #36]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L80
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #12]
	ldr	r2, [r2]
	ldr	r0, [r7, #36]
	mov	r1, r2
	blx	r3
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L80
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L81
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #16]
	ldr	r0, [r7, #36]
	blx	r3
.L81:
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #36]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #36]
	b	.L76
.L80:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #32]
	adds	r3, r3, #4
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r7, #36]
	str	r2, [r3, #4]
.L76:
	ldr	r3, [r7]
	ldr	r2, [r7, #36]
	str	r2, [r3]
	ldr	r3, [r7, #16]
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L84:
	.align	2
.L83:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC2+4)
	.word	af_style_classes(GOT)
	.word	af_writing_system_classes(GOT)
	.size	af_face_globals_get_metrics, .-af_face_globals_get_metrics
	.section	.text.af_face_globals_is_digit,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_face_globals_is_digit, %function
af_face_globals_is_digit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, [r7]
	cmp	r2, r3
	bls	.L86
	movs	r3, #0
	b	.L87
.L86:
	movs	r3, #0
.L87:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	af_face_globals_is_digit, .-af_face_globals_is_digit
	.section	.text.FT_MulFix_arm,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	FT_MulFix_arm, %function
FT_MulFix_arm:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
#APP
@ 86 "../../../libs/freetype/include/freetype/internal/ftcalc.h" 1
	smull  r0, r1, r2, r3
	mov    r3, r1, asr #31
	add    r3, r3, #0x8000
	adds   r0, r0, r3
	adc    r1, r1, #0
	mov    r3, r0, lsr #16
	orr    r3, r3, r1, lsl #16
	
@ 0 "" 2
	.thumb
	str	r3, [r7, #4]
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	FT_MulFix_arm, .-FT_MulFix_arm
	.section	.text.af_axis_hints_new_segment,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_axis_hints_new_segment, %function
af_axis_hints_new_segment:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #36]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	cmp	r3, #17
	bgt	.L91
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L93
	ldr	r3, [r7, #12]
	add	r2, r3, #28
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	movs	r2, #18
	str	r2, [r3, #4]
	b	.L93
.L91:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	blt	.L93
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	str	r3, [r7, #32]
	movw	r3, #43690
	movt	r3, 682
	str	r3, [r7, #24]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	blt	.L94
	movs	r3, #64
	str	r3, [r7, #20]
	b	.L95
.L94:
	ldr	r3, [r7, #32]
	asrs	r3, r3, #2
	adds	r3, r3, #4
	ldr	r2, [r7, #32]
	add	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	blt	.L96
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	ble	.L97
.L96:
	ldr	r3, [r7, #24]
	str	r3, [r7, #32]
.L97:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	adds	r3, r3, #28
	cmp	r2, r3
	bne	.L98
	movs	r3, #0
	str	r3, [sp]
	add	r3, r7, #20
	str	r3, [sp, #4]
	ldr	r0, [r7, #8]
	movs	r1, #48
	movs	r2, #0
	ldr	r3, [r7, #32]
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L99
	b	.L95
.L99:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	adds	r3, r3, #28
	mov	r0, r2
	mov	r1, r3
	mov	r2, #864
	bl	memcpy(PLT)
	b	.L100
.L98:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	str	r3, [sp]
	add	r3, r7, #20
	str	r3, [sp, #4]
	ldr	r0, [r7, #8]
	movs	r1, #48
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #32]
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L100
	b	.L95
.L100:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #32]
	str	r2, [r3, #4]
.L93:
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r0, r3, #1
	ldr	r2, [r7, #12]
	str	r0, [r2]
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #4
	add	r3, r3, r1
	str	r3, [r7, #36]
.L95:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #36]
	str	r2, [r3]
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	af_axis_hints_new_segment, .-af_axis_hints_new_segment
	.section	.text.af_axis_hints_new_edge,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_axis_hints_new_edge, %function
af_axis_hints_new_edge:
	@ args = 4, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #36]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	cmp	r3, #11
	bgt	.L103
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	bne	.L105
	ldr	r3, [r7, #12]
	add	r2, r3, #892
	ldr	r3, [r7, #12]
	str	r2, [r3, #20]
	ldr	r3, [r7, #12]
	movs	r2, #12
	str	r2, [r3, #16]
	b	.L105
.L103:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	cmp	r2, r3
	blt	.L105
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	str	r3, [r7, #32]
	movw	r3, #43690
	movt	r3, 682
	str	r3, [r7, #24]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	blt	.L106
	movs	r3, #64
	str	r3, [r7, #16]
	b	.L107
.L106:
	ldr	r3, [r7, #32]
	asrs	r3, r3, #2
	adds	r3, r3, #4
	ldr	r2, [r7, #32]
	add	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	blt	.L108
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	ble	.L109
.L108:
	ldr	r3, [r7, #24]
	str	r3, [r7, #32]
.L109:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #12]
	add	r3, r3, #892
	cmp	r2, r3
	bne	.L110
	movs	r3, #0
	str	r3, [sp]
	add	r3, r7, #16
	str	r3, [sp, #4]
	ldr	r0, [r7]
	movs	r1, #48
	movs	r2, #0
	ldr	r3, [r7, #32]
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #20]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L111
	b	.L107
.L111:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #12]
	add	r3, r3, #892
	mov	r0, r2
	mov	r1, r3
	mov	r2, #576
	bl	memcpy(PLT)
	b	.L112
.L110:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #20]
	str	r3, [sp]
	add	r3, r7, #16
	str	r3, [sp, #4]
	ldr	r0, [r7]
	movs	r1, #48
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #32]
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #20]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L112
	b	.L107
.L112:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #32]
	str	r2, [r3, #16]
.L105:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #20]
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #4
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #36]
	b	.L113
.L117:
	ldr	r3, [r7, #36]
	subs	r3, r3, #48
	ldrh	r3, [r3]
	sxth	r2, r3
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bge	.L114
	b	.L115
.L114:
	ldr	r3, [r7, #36]
	subs	r3, r3, #48
	ldrh	r3, [r3]
	sxth	r2, r3
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bne	.L116
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bne	.L116
	b	.L115
.L116:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #36]
	mov	r4, r2
	sub	r5, r3, #48
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5, {r0, r1, r2, r3}
	stmia	r4, {r0, r1, r2, r3}
	ldr	r3, [r7, #36]
	subs	r3, r3, #48
	str	r3, [r7, #36]
.L113:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bhi	.L117
.L115:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #12]
.L107:
	ldr	r3, [r7, #56]
	ldr	r2, [r7, #36]
	str	r2, [r3]
	ldr	r3, [r7, #16]
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.size	af_axis_hints_new_edge, .-af_axis_hints_new_edge
	.section	.text.af_direction_compute,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_direction_compute, %function
af_direction_compute:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	blt	.L120
	ldr	r3, [r7, #4]
	negs	r2, r3
	ldr	r3, [r7]
	cmp	r2, r3
	bgt	.L121
	movs	r3, #2
	str	r3, [r7, #12]
	ldr	r3, [r7]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	str	r3, [r7, #16]
	b	.L123
.L121:
	mov	r3, #-1
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	negs	r3, r3
	str	r3, [r7, #20]
	ldr	r3, [r7]
	str	r3, [r7, #16]
	b	.L123
.L120:
	ldr	r3, [r7, #4]
	negs	r2, r3
	ldr	r3, [r7]
	cmp	r2, r3
	bgt	.L124
	movs	r3, #1
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	str	r3, [r7, #20]
	ldr	r3, [r7]
	str	r3, [r7, #16]
	b	.L123
.L124:
	mvn	r3, #1
	str	r3, [r7, #12]
	ldr	r3, [r7]
	negs	r3, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	str	r3, [r7, #16]
.L123:
	ldr	r3, [r7, #16]
	eor	r2, r3, r3, asr #31
	sub	r2, r2, r3, asr #31
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #1
	mov	r2, r3
	ldr	r3, [r7, #20]
	cmp	r2, r3
	blt	.L125
	movs	r3, #4
	str	r3, [r7, #12]
.L125:
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	af_direction_compute, .-af_direction_compute
	.section	.text.af_glyph_hints_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_glyph_hints_init, %function
af_glyph_hints_init:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	movs	r1, #0
	movw	r2, #3000
	bl	memset(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3]
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	af_glyph_hints_init, .-af_glyph_hints_init
	.section	.text.af_glyph_hints_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_glyph_hints_done, %function
af_glyph_hints_done:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L129
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L130
.L129:
	b	.L128
.L130:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L132
.L135:
	ldr	r3, [r7, #20]
	movw	r2, #1468
	mul	r3, r2, r3
	adds	r3, r3, #40
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	adds	r3, r3, #28
	cmp	r2, r3
	beq	.L133
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	ldr	r0, [r7, #16]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #8]
.L133:
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #12]
	add	r3, r3, #892
	cmp	r2, r3
	beq	.L134
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #20]
	ldr	r0, [r7, #16]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #20]
.L134:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L132:
	ldr	r3, [r7, #20]
	cmp	r3, #1
	ble	.L135
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #4]
	addw	r3, r3, #3000
	cmp	r2, r3
	beq	.L136
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	ldr	r0, [r7, #16]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #40]
.L136:
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #32]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #36]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #4]
	addw	r3, r3, #3032
	cmp	r2, r3
	beq	.L137
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	ldr	r0, [r7, #16]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #28]
.L137:
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
.L128:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	af_glyph_hints_done, .-af_glyph_hints_done
	.section	.text.af_glyph_hints_rescale,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_glyph_hints_rescale, %function
af_glyph_hints_rescale:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #2988]
	ldr	r3, [r7]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #4]
	str	r2, [r3, #2980]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	af_glyph_hints_rescale, .-af_glyph_hints_rescale
	.section	.text.af_glyph_hints_reload,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_glyph_hints_reload, %function
af_glyph_hints_reload:
	@ args = 0, pretend = 0, frame = 168
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #180
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #104]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #100]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	str	r3, [r7, #96]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	str	r3, [r7, #92]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #88]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #36]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #44]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #56]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #1512]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #1524]
	ldr	r3, [r7]
	ldrh	r3, [r3]
	sxth	r3, r3
	str	r3, [r7, #84]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	str	r3, [r7, #80]
	ldr	r3, [r7, #84]
	cmp	r3, #8
	bhi	.L140
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	cmp	r3, #0
	bne	.L142
	ldr	r3, [r7, #4]
	addw	r2, r3, #3000
	ldr	r3, [r7, #4]
	str	r2, [r3, #40]
	ldr	r3, [r7, #4]
	movs	r2, #8
	str	r2, [r3, #32]
	b	.L142
.L140:
	ldr	r2, [r7, #84]
	ldr	r3, [r7, #80]
	cmp	r2, r3
	bls	.L142
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #4]
	addw	r3, r3, #3000
	cmp	r2, r3
	bne	.L143
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #40]
.L143:
	ldr	r3, [r7, #84]
	adds	r3, r3, #3
	bic	r3, r3, #3
	str	r3, [r7, #84]
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #84]
	ldr	r1, [r7, #4]
	ldr	r1, [r1, #40]
	str	r1, [sp]
	add	r1, r7, #8
	str	r1, [sp, #4]
	ldr	r0, [r7, #88]
	movs	r1, #4
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #40]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L144
	b	.L145
.L144:
	ldr	r2, [r7, #84]
	ldr	r3, [r7, #4]
	str	r2, [r3, #32]
.L142:
	ldr	r3, [r7]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	adds	r3, r3, #2
	str	r3, [r7, #84]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	str	r3, [r7, #80]
	ldr	r3, [r7, #84]
	cmp	r3, #96
	bhi	.L146
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	cmp	r3, #0
	bne	.L148
	ldr	r3, [r7, #4]
	addw	r2, r3, #3032
	ldr	r3, [r7, #4]
	str	r2, [r3, #28]
	ldr	r3, [r7, #4]
	movs	r2, #96
	str	r2, [r3, #20]
	b	.L148
.L146:
	ldr	r2, [r7, #84]
	ldr	r3, [r7, #80]
	cmp	r2, r3
	bls	.L148
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #4]
	addw	r3, r3, #3032
	cmp	r2, r3
	bne	.L149
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #28]
.L149:
	ldr	r3, [r7, #84]
	adds	r3, r3, #9
	bic	r3, r3, #7
	str	r3, [r7, #84]
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #84]
	ldr	r1, [r7, #4]
	ldr	r1, [r1, #28]
	str	r1, [sp]
	add	r1, r7, #8
	str	r1, [sp, #4]
	ldr	r0, [r7, #88]
	movs	r1, #40
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #28]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L150
	b	.L145
.L150:
	ldr	r2, [r7, #84]
	ldr	r3, [r7, #4]
	str	r2, [r3, #20]
.L148:
	ldr	r3, [r7]
	ldrh	r3, [r3, #2]
	sxth	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7]
	ldrh	r3, [r3]
	sxth	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #36]
	ldr	r3, [r7, #4]
	movs	r2, #2
	str	r2, [r3, #68]
	ldr	r3, [r7, #4]
	mov	r2, #-1
	str	r2, [r3, #1536]
	ldr	r0, [r7]
	bl	FT_Outline_Get_Orientation(PLT)
	mov	r3, r0
	cmp	r3, #1
	bne	.L151
	ldr	r3, [r7, #4]
	mvn	r2, #1
	str	r2, [r3, #68]
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #1536]
.L151:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #104]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #100]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #96]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #92]
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #2992]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #2996]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	str	r3, [r7, #76]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	bne	.L152
	b	.L145
.L152:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #3
	ldr	r2, [r7, #76]
	add	r3, r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	str	r3, [r7, #160]
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	str	r3, [r7, #156]
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	ldrh	r3, [r3]
	sxth	r2, r3
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #3
	ldr	r2, [r7, #76]
	add	r3, r3, r2
	str	r3, [r7, #152]
	ldr	r3, [r7, #152]
	str	r3, [r7, #148]
	movs	r3, #0
	str	r3, [r7, #144]
	ldr	r3, [r7, #76]
	str	r3, [r7, #164]
	b	.L153
.L159:
	ldr	r3, [r7, #164]
	movs	r2, #4
	strb	r2, [r3, #2]
	ldr	r3, [r7, #164]
	movs	r2, #4
	strb	r2, [r3, #3]
	ldr	r3, [r7, #160]
	ldr	r3, [r3]
	uxth	r2, r3
	ldr	r3, [r7, #164]
	strh	r2, [r3, #12]	@ movhi
	ldr	r3, [r7, #160]
	ldr	r3, [r3, #4]
	uxth	r2, r3
	ldr	r3, [r7, #164]
	strh	r2, [r3, #14]	@ movhi
	ldr	r3, [r7, #160]
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r1, [r7, #104]
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #96]
	add	r2, r2, r3
	ldr	r3, [r7, #164]
	str	r2, [r3, #16]
	ldr	r3, [r7, #164]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #164]
	str	r2, [r3, #4]
	ldr	r3, [r7, #160]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r1, [r7, #100]
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #92]
	add	r2, r2, r3
	ldr	r3, [r7, #164]
	str	r2, [r3, #20]
	ldr	r3, [r7, #164]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #164]
	str	r2, [r3, #8]
	ldr	r3, [r7, #156]
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #3
	cmp	r3, #0
	beq	.L155
	cmp	r3, #2
	beq	.L156
	b	.L187
.L155:
	ldr	r3, [r7, #164]
	movs	r2, #1
	strh	r2, [r3]	@ movhi
	b	.L157
.L156:
	ldr	r3, [r7, #164]
	movs	r2, #2
	strh	r2, [r3]	@ movhi
	b	.L157
.L187:
	ldr	r3, [r7, #164]
	movs	r2, #0
	strh	r2, [r3]	@ movhi
.L157:
	ldr	r3, [r7, #164]
	ldr	r2, [r7, #148]
	str	r2, [r3, #36]
	ldr	r3, [r7, #148]
	ldr	r2, [r7, #164]
	str	r2, [r3, #32]
	ldr	r3, [r7, #164]
	str	r3, [r7, #148]
	ldr	r2, [r7, #164]
	ldr	r3, [r7, #152]
	cmp	r2, r3
	bne	.L158
	ldr	r3, [r7, #144]
	adds	r3, r3, #1
	str	r3, [r7, #144]
	ldr	r3, [r7]
	ldrh	r3, [r3]
	sxth	r3, r3
	ldr	r2, [r7, #144]
	cmp	r2, r3
	bge	.L158
	ldr	r3, [r7]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #144]
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r3, [r3]
	sxth	r2, r3
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #3
	ldr	r2, [r7, #76]
	add	r3, r3, r2
	str	r3, [r7, #152]
	ldr	r3, [r7, #152]
	str	r3, [r7, #148]
.L158:
	ldr	r3, [r7, #164]
	adds	r3, r3, #40
	str	r3, [r7, #164]
	ldr	r3, [r7, #160]
	adds	r3, r3, #8
	str	r3, [r7, #160]
	ldr	r3, [r7, #156]
	adds	r3, r3, #1
	str	r3, [r7, #156]
.L153:
	ldr	r2, [r7, #164]
	ldr	r3, [r7, #72]
	cmp	r2, r3
	bcc	.L159
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	str	r3, [r7, #140]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	lsls	r3, r3, #2
	ldr	r2, [r7, #140]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	str	r3, [r7, #136]
	movs	r3, #0
	strh	r3, [r7, #134]	@ movhi
	b	.L160
.L161:
	ldrsh	r2, [r7, #134]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #3
	ldr	r2, [r7, #76]
	add	r2, r2, r3
	ldr	r3, [r7, #140]
	str	r2, [r3]
	ldr	r3, [r7, #136]
	ldrh	r3, [r3]
	uxth	r3, r3
	adds	r3, r3, #1
	uxth	r3, r3
	strh	r3, [r7, #134]	@ movhi
	ldr	r3, [r7, #140]
	adds	r3, r3, #4
	str	r3, [r7, #140]
	ldr	r3, [r7, #136]
	adds	r3, r3, #2
	str	r3, [r7, #136]
.L160:
	ldr	r2, [r7, #140]
	ldr	r3, [r7, #68]
	cmp	r2, r3
	bcc	.L161
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #2988]
	ldr	r3, [r3, #4]
	ldrh	r3, [r3, #68]
	str	r3, [r7, #64]
	ldr	r2, [r7, #64]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	lsrs	r3, r3, #11
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	lsls	r3, r3, #1
	subs	r3, r3, #1
	str	r3, [r7, #56]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	lsls	r3, r3, #2
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	str	r3, [r7, #128]
	b	.L162
.L172:
	ldr	r3, [r7, #128]
	ldr	r3, [r3]
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	str	r3, [r7, #164]
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #36]
	str	r3, [r7, #120]
	b	.L163
.L166:
	ldr	r3, [r7, #164]
	ldrh	r3, [r3, #12]
	sxth	r2, r3
	ldr	r3, [r7, #120]
	ldrh	r3, [r3, #12]
	sxth	r3, r3
	subs	r3, r2, r3
	str	r3, [r7, #112]
	ldr	r3, [r7, #164]
	ldrh	r3, [r3, #14]
	sxth	r2, r3
	ldr	r3, [r7, #120]
	ldrh	r3, [r3, #14]
	sxth	r3, r3
	subs	r3, r2, r3
	str	r3, [r7, #108]
	ldr	r3, [r7, #112]
	eor	r2, r3, r3, asr #31
	sub	r2, r2, r3, asr #31
	ldr	r3, [r7, #108]
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	add	r2, r2, r3
	ldr	r3, [r7, #56]
	cmp	r2, r3
	blt	.L164
	b	.L165
.L164:
	ldr	r3, [r7, #120]
	str	r3, [r7, #164]
	ldr	r3, [r7, #120]
	ldr	r3, [r3, #36]
	str	r3, [r7, #120]
.L163:
	ldr	r2, [r7, #120]
	ldr	r3, [r7, #48]
	cmp	r2, r3
	bne	.L166
.L165:
	ldr	r3, [r7, #164]
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	str	r3, [r7, #116]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #116]
	subs	r3, r2, r3
	asrs	r2, r3, #3
	movw	r3, #52429
	movt	r3, 52428
	mul	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #116]
	str	r2, [r3, #24]
	ldr	r3, [r7, #116]
	ldr	r3, [r3, #24]
	negs	r2, r3
	ldr	r3, [r7, #48]
	str	r2, [r3, #28]
	movs	r3, #0
	str	r3, [r7, #112]
	movs	r3, #0
	str	r3, [r7, #108]
	ldr	r3, [r7, #48]
	str	r3, [r7, #124]
.L171:
	ldr	r3, [r7, #124]
	str	r3, [r7, #164]
	ldr	r3, [r7, #164]
	ldr	r3, [r3, #32]
	str	r3, [r7, #124]
	ldr	r3, [r7, #124]
	ldrh	r3, [r3, #12]
	sxth	r2, r3
	ldr	r3, [r7, #164]
	ldrh	r3, [r3, #12]
	sxth	r3, r3
	subs	r3, r2, r3
	ldr	r2, [r7, #112]
	add	r3, r3, r2
	str	r3, [r7, #112]
	ldr	r3, [r7, #124]
	ldrh	r3, [r3, #14]
	sxth	r2, r3
	ldr	r3, [r7, #164]
	ldrh	r3, [r3, #14]
	sxth	r3, r3
	subs	r3, r2, r3
	ldr	r2, [r7, #108]
	add	r3, r3, r2
	str	r3, [r7, #108]
	ldr	r3, [r7, #112]
	eor	r2, r3, r3, asr #31
	sub	r2, r2, r3, asr #31
	ldr	r3, [r7, #108]
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	add	r2, r2, r3
	ldr	r3, [r7, #60]
	cmp	r2, r3
	bge	.L167
	ldr	r3, [r7, #124]
	ldrh	r3, [r3]
	orr	r3, r3, #16
	uxth	r2, r3
	ldr	r3, [r7, #124]
	strh	r2, [r3]	@ movhi
	b	.L168
.L167:
	ldr	r2, [r7, #124]
	ldr	r3, [r7, #116]
	subs	r3, r2, r3
	asrs	r2, r3, #3
	movw	r3, #52429
	movt	r3, 52428
	mul	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #116]
	str	r2, [r3, #24]
	ldr	r3, [r7, #116]
	ldr	r3, [r3, #24]
	negs	r2, r3
	ldr	r3, [r7, #124]
	str	r2, [r3, #28]
	ldr	r0, [r7, #112]
	ldr	r1, [r7, #108]
	bl	af_direction_compute(PLT)
	str	r0, [r7, #44]
	ldr	r3, [r7, #44]
	uxtb	r2, r3
	ldr	r3, [r7, #116]
	strb	r2, [r3, #3]
	ldr	r3, [r7, #116]
	ldr	r3, [r3, #32]
	str	r3, [r7, #116]
	b	.L169
.L170:
	ldr	r3, [r7, #44]
	uxtb	r2, r3
	ldr	r3, [r7, #116]
	strb	r2, [r3, #2]
	ldr	r3, [r7, #44]
	uxtb	r2, r3
	ldr	r3, [r7, #116]
	strb	r2, [r3, #3]
	ldr	r3, [r7, #116]
	ldr	r3, [r3, #32]
	str	r3, [r7, #116]
.L169:
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #124]
	cmp	r2, r3
	bne	.L170
	ldr	r3, [r7, #44]
	uxtb	r2, r3
	ldr	r3, [r7, #124]
	strb	r2, [r3, #2]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #116]
	subs	r3, r2, r3
	asrs	r2, r3, #3
	movw	r3, #52429
	movt	r3, 52428
	mul	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #116]
	str	r2, [r3, #24]
	ldr	r3, [r7, #116]
	ldr	r3, [r3, #24]
	negs	r2, r3
	ldr	r3, [r7, #48]
	str	r2, [r3, #28]
	movs	r3, #0
	str	r3, [r7, #112]
	movs	r3, #0
	str	r3, [r7, #108]
.L168:
	ldr	r2, [r7, #124]
	ldr	r3, [r7, #48]
	cmp	r2, r3
	bne	.L171
	ldr	r3, [r7, #128]
	adds	r3, r3, #4
	str	r3, [r7, #128]
.L162:
	ldr	r2, [r7, #128]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bcc	.L172
	ldr	r3, [r7, #76]
	str	r3, [r7, #164]
	b	.L173
.L176:
	ldr	r3, [r7, #164]
	ldrh	r3, [r3]
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L174
	b	.L175
.L174:
	ldr	r3, [r7, #164]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	sxtb	r3, r3
	cmp	r3, #4
	bne	.L175
	ldr	r3, [r7, #164]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	sxtb	r3, r3
	cmp	r3, #4
	bne	.L175
	ldr	r3, [r7, #164]
	ldr	r3, [r3, #24]
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #3
	ldr	r2, [r7, #164]
	add	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #164]
	ldr	r3, [r3, #28]
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #3
	ldr	r2, [r7, #164]
	add	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #164]
	ldrh	r3, [r3, #12]
	sxth	r2, r3
	ldr	r3, [r7, #36]
	ldrh	r3, [r3, #12]
	sxth	r3, r3
	subs	r3, r2, r3
	str	r3, [r7, #32]
	ldr	r3, [r7, #164]
	ldrh	r3, [r3, #14]
	sxth	r2, r3
	ldr	r3, [r7, #36]
	ldrh	r3, [r3, #14]
	sxth	r3, r3
	subs	r3, r2, r3
	str	r3, [r7, #28]
	ldr	r3, [r7, #40]
	ldrh	r3, [r3, #12]
	sxth	r2, r3
	ldr	r3, [r7, #164]
	ldrh	r3, [r3, #12]
	sxth	r3, r3
	subs	r3, r2, r3
	str	r3, [r7, #24]
	ldr	r3, [r7, #40]
	ldrh	r3, [r3, #14]
	sxth	r2, r3
	ldr	r3, [r7, #164]
	ldrh	r3, [r3, #14]
	sxth	r3, r3
	subs	r3, r2, r3
	str	r3, [r7, #20]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #24]
	eors	r3, r3, r2
	cmp	r3, #0
	blt	.L175
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #20]
	eors	r3, r3, r2
	cmp	r3, #0
	blt	.L175
	ldr	r3, [r7, #164]
	ldrh	r3, [r3]
	orr	r3, r3, #16
	uxth	r2, r3
	ldr	r3, [r7, #164]
	strh	r2, [r3]	@ movhi
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #36]
	subs	r3, r2, r3
	asrs	r2, r3, #3
	movw	r3, #52429
	movt	r3, 52428
	mul	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #36]
	str	r2, [r3, #24]
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #24]
	negs	r2, r3
	ldr	r3, [r7, #40]
	str	r2, [r3, #28]
.L175:
	ldr	r3, [r7, #164]
	adds	r3, r3, #40
	str	r3, [r7, #164]
.L173:
	ldr	r2, [r7, #164]
	ldr	r3, [r7, #72]
	cmp	r2, r3
	bcc	.L176
	ldr	r3, [r7, #76]
	str	r3, [r7, #164]
	b	.L177
.L185:
	ldr	r3, [r7, #164]
	ldrh	r3, [r3]
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L178
	b	.L179
.L178:
	ldr	r3, [r7, #164]
	ldrh	r3, [r3]
	and	r3, r3, #3
	cmp	r3, #0
	beq	.L180
.L181:
	ldr	r3, [r7, #164]
	ldrh	r3, [r3]
	orr	r3, r3, #16
	uxth	r2, r3
	ldr	r3, [r7, #164]
	strh	r2, [r3]	@ movhi
	b	.L179
.L180:
	ldr	r3, [r7, #164]
	ldrb	r2, [r3, #3]	@ zero_extendqisi2
	ldr	r3, [r7, #164]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	sxtb	r2, r2
	sxtb	r3, r3
	cmp	r2, r3
	bne	.L182
	ldr	r3, [r7, #164]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	sxtb	r3, r3
	cmp	r3, #4
	beq	.L183
	b	.L181
.L183:
	ldr	r3, [r7, #164]
	ldr	r3, [r3, #24]
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #3
	ldr	r2, [r7, #164]
	add	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #164]
	ldr	r3, [r3, #28]
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #3
	ldr	r2, [r7, #164]
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #164]
	ldrh	r3, [r3, #12]
	sxth	r2, r3
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #12]
	sxth	r3, r3
	subs	r0, r2, r3
	ldr	r3, [r7, #164]
	ldrh	r3, [r3, #14]
	sxth	r2, r3
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #14]
	sxth	r3, r3
	subs	r1, r2, r3
	ldr	r3, [r7, #16]
	ldrh	r3, [r3, #12]
	sxth	r2, r3
	ldr	r3, [r7, #164]
	ldrh	r3, [r3, #12]
	sxth	r3, r3
	subs	r2, r2, r3
	ldr	r3, [r7, #16]
	ldrh	r3, [r3, #14]
	sxth	r4, r3
	ldr	r3, [r7, #164]
	ldrh	r3, [r3, #14]
	sxth	r3, r3
	subs	r3, r4, r3
	bl	ft_corner_is_flat(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L184
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #12]
	subs	r3, r2, r3
	asrs	r2, r3, #3
	movw	r3, #52429
	movt	r3, 52428
	mul	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	negs	r2, r3
	ldr	r3, [r7, #16]
	str	r2, [r3, #28]
	b	.L181
.L184:
	b	.L179
.L182:
	ldr	r3, [r7, #164]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	sxtb	r2, r3
	ldr	r3, [r7, #164]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	sxtb	r3, r3
	negs	r3, r3
	cmp	r2, r3
	bne	.L179
	b	.L181
.L179:
	ldr	r3, [r7, #164]
	adds	r3, r3, #40
	str	r3, [r7, #164]
.L177:
	ldr	r2, [r7, #164]
	ldr	r3, [r7, #72]
	cmp	r2, r3
	bcc	.L185
.L145:
	ldr	r3, [r7, #8]
	mov	r0, r3
	adds	r7, r7, #172
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	af_glyph_hints_reload, .-af_glyph_hints_reload
	.section	.text.af_glyph_hints_save,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_glyph_hints_save, %function
af_glyph_hints_save:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #3
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	str	r3, [r7, #16]
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	str	r3, [r7, #12]
	b	.L189
.L193:
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #16]
	str	r2, [r3]
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #16]
	str	r2, [r3, #4]
	ldr	r3, [r7, #20]
	ldrh	r3, [r3]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L190
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3]
	b	.L191
.L190:
	ldr	r3, [r7, #20]
	ldrh	r3, [r3]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L192
	ldr	r3, [r7, #12]
	movs	r2, #2
	strb	r2, [r3]
	b	.L191
.L192:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3]
.L191:
	ldr	r3, [r7, #20]
	adds	r3, r3, #40
	str	r3, [r7, #20]
	ldr	r3, [r7, #16]
	adds	r3, r3, #8
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L189:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L193
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	af_glyph_hints_save, .-af_glyph_hints_save
	.section	.text.af_glyph_hints_align_edge_points,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_glyph_hints_align_edge_points, %function
af_glyph_hints_align_edge_points:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #60
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	movw	r2, #1468
	mul	r3, r2, r3
	adds	r3, r3, #40
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #8]
	str	r3, [r7, #36]
	ldr	r3, [r7, #40]
	ldr	r3, [r3]
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #4
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L195
	ldr	r3, [r7, #36]
	str	r3, [r7, #52]
	b	.L196
.L201:
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #12]
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L197
	b	.L198
.L197:
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #40]
	str	r3, [r7, #24]
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #44]
	str	r3, [r7, #20]
	ldr	r3, [r7, #24]
	str	r3, [r7, #48]
.L200:
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #48]
	str	r2, [r3, #16]
	ldr	r3, [r7, #48]
	ldrh	r3, [r3]
	orr	r3, r3, #4
	uxth	r2, r3
	ldr	r3, [r7, #48]
	strh	r2, [r3]	@ movhi
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bne	.L199
	b	.L198
.L199:
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #32]
	str	r3, [r7, #48]
	b	.L200
.L198:
	ldr	r3, [r7, #52]
	adds	r3, r3, #48
	str	r3, [r7, #52]
.L196:
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bcc	.L201
	b	.L194
.L195:
	ldr	r3, [r7, #36]
	str	r3, [r7, #52]
	b	.L203
.L208:
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #12]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L204
	b	.L205
.L204:
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #40]
	str	r3, [r7, #12]
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #44]
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	str	r3, [r7, #44]
.L207:
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #44]
	str	r2, [r3, #20]
	ldr	r3, [r7, #44]
	ldrh	r3, [r3]
	orr	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #44]
	strh	r2, [r3]	@ movhi
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bne	.L206
	b	.L205
.L206:
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #32]
	str	r3, [r7, #44]
	b	.L207
.L205:
	ldr	r3, [r7, #52]
	adds	r3, r3, #48
	str	r3, [r7, #52]
.L203:
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bcc	.L208
.L194:
	adds	r7, r7, #60
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	af_glyph_hints_align_edge_points, .-af_glyph_hints_align_edge_points
	.section	.text.af_glyph_hints_align_strong_points,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_glyph_hints_align_strong_points, %function
af_glyph_hints_align_strong_points:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #92
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	str	r3, [r7, #56]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7]
	movw	r2, #1468
	mul	r3, r2, r3
	adds	r3, r3, #40
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #20]
	str	r3, [r7, #44]
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #12]
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #4
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L210
	movs	r3, #4
	str	r3, [r7, #84]
	b	.L211
.L210:
	movs	r3, #8
	str	r3, [r7, #84]
.L211:
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bcs	.L209
	ldr	r3, [r7, #56]
	str	r3, [r7, #80]
	b	.L213
.L236:
	ldr	r3, [r7, #80]
	ldrh	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7, #84]
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L214
	b	.L215
.L214:
	ldr	r3, [r7, #80]
	ldrh	r3, [r3]
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L216
	b	.L215
.L216:
	ldr	r3, [r7]
	cmp	r3, #1
	bne	.L217
	ldr	r3, [r7, #80]
	ldrh	r3, [r3, #14]
	sxth	r3, r3
	str	r3, [r7, #76]
	ldr	r3, [r7, #80]
	ldr	r3, [r3, #8]
	str	r3, [r7, #72]
	b	.L218
.L217:
	ldr	r3, [r7, #80]
	ldrh	r3, [r3, #12]
	sxth	r3, r3
	str	r3, [r7, #76]
	ldr	r3, [r7, #80]
	ldr	r3, [r3, #4]
	str	r3, [r7, #72]
.L218:
	ldr	r3, [r7, #76]
	str	r3, [r7, #36]
	ldr	r3, [r7, #44]
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	ldrh	r3, [r3]
	sxth	r2, r3
	ldr	r3, [r7, #76]
	subs	r3, r2, r3
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	blt	.L219
	ldr	r3, [r7, #32]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #4]
	ldr	r1, [r7, #72]
	subs	r3, r1, r3
	add	r3, r3, r2
	str	r3, [r7, #76]
	b	.L220
.L219:
	ldr	r3, [r7, #40]
	subs	r3, r3, #48
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	ldrh	r3, [r3]
	sxth	r3, r3
	ldr	r2, [r7, #76]
	subs	r3, r2, r3
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	blt	.L221
	ldr	r3, [r7, #32]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #4]
	ldr	r1, [r7, #72]
	subs	r3, r1, r3
	add	r3, r3, r2
	str	r3, [r7, #76]
	b	.L220
.L221:
	movs	r3, #0
	str	r3, [r7, #68]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #44]
	subs	r3, r2, r3
	asrs	r2, r3, #4
	movw	r3, #43691
	movt	r3, 43690
	mul	r3, r3, r2
	str	r3, [r7, #64]
	ldr	r3, [r7, #64]
	cmp	r3, #8
	bgt	.L222
	movs	r3, #0
	str	r3, [r7, #60]
	b	.L223
.L226:
	ldr	r2, [r7, #60]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #4
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	ldrh	r3, [r3]
	sxth	r2, r3
	ldr	r3, [r7, #76]
	cmp	r2, r3
	blt	.L224
	b	.L225
.L224:
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
.L223:
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #64]
	cmp	r2, r3
	blt	.L226
.L225:
	ldr	r2, [r7, #60]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #4
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	ldrh	r3, [r3]
	sxth	r2, r3
	ldr	r3, [r7, #76]
	cmp	r2, r3
	bne	.L227
	ldr	r2, [r7, #60]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #4
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	ldr	r3, [r3, #8]
	str	r3, [r7, #76]
	b	.L220
.L227:
	ldr	r3, [r7, #60]
	str	r3, [r7, #68]
	b	.L228
.L222:
	b	.L229
.L232:
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #68]
	add	r3, r3, r2
	asrs	r3, r3, #1
	str	r3, [r7, #24]
	ldr	r2, [r7, #24]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #4
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	ldrh	r3, [r3]
	sxth	r3, r3
	str	r3, [r7, #20]
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bge	.L230
	ldr	r3, [r7, #24]
	str	r3, [r7, #64]
	b	.L229
.L230:
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	ble	.L231
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #68]
	b	.L229
.L231:
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #8]
	str	r3, [r7, #76]
	b	.L220
.L229:
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #64]
	cmp	r2, r3
	blt	.L232
.L228:
	ldr	r2, [r7, #68]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #4
	subs	r3, r3, #48
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #68]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #4
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	bne	.L233
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #8]
	subs	r2, r2, r3
	ldr	r3, [r7, #12]
	ldrh	r3, [r3]
	sxth	r1, r3
	ldr	r3, [r7, #16]
	ldrh	r3, [r3]
	sxth	r3, r3
	subs	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	FT_DivFix(PLT)
	mov	r2, r0
	ldr	r3, [r7, #16]
	str	r2, [r3, #16]
.L233:
	ldr	r3, [r7, #16]
	ldr	r4, [r3, #8]
	ldr	r3, [r7, #16]
	ldrh	r3, [r3]
	sxth	r3, r3
	ldr	r2, [r7, #36]
	subs	r2, r2, r3
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #16]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r3, r0
	add	r3, r3, r4
	str	r3, [r7, #76]
.L220:
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L234
	ldr	r3, [r7, #80]
	ldr	r2, [r7, #76]
	str	r2, [r3, #16]
	b	.L235
.L234:
	ldr	r3, [r7, #80]
	ldr	r2, [r7, #76]
	str	r2, [r3, #20]
.L235:
	ldr	r3, [r7, #80]
	ldrh	r2, [r3]
	ldr	r3, [r7, #84]
	uxth	r3, r3
	orrs	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7, #80]
	strh	r2, [r3]	@ movhi
.L215:
	ldr	r3, [r7, #80]
	adds	r3, r3, #40
	str	r3, [r7, #80]
.L213:
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bcc	.L236
.L209:
	adds	r7, r7, #92
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	af_glyph_hints_align_strong_points, .-af_glyph_hints_align_strong_points
	.section	.text.af_iup_shift,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_iup_shift, %function
af_iup_shift:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	subs	r3, r2, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L238
	b	.L237
.L238:
	ldr	r3, [r7, #12]
	str	r3, [r7, #20]
	b	.L240
.L241:
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #16]
	add	r2, r2, r3
	ldr	r3, [r7, #20]
	str	r2, [r3, #24]
	ldr	r3, [r7, #20]
	adds	r3, r3, #40
	str	r3, [r7, #20]
.L240:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcc	.L241
	ldr	r3, [r7, #4]
	adds	r3, r3, #40
	str	r3, [r7, #20]
	b	.L242
.L243:
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #16]
	add	r2, r2, r3
	ldr	r3, [r7, #20]
	str	r2, [r3, #24]
	ldr	r3, [r7, #20]
	adds	r3, r3, #40
	str	r3, [r7, #20]
.L242:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bls	.L243
.L237:
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	af_iup_shift, .-af_iup_shift
	.section	.text.af_iup_interp,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_iup_interp, %function
af_iup_interp:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #56
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bls	.L245
	b	.L244
.L245:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #28]
	ldr	r3, [r7]
	ldr	r3, [r3, #28]
	cmp	r2, r3
	ble	.L247
	ldr	r3, [r7, #4]
	str	r3, [r7, #52]
	ldr	r3, [r7]
	str	r3, [r7, #4]
	ldr	r3, [r7, #52]
	str	r3, [r7]
.L247:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	str	r3, [r7, #44]
	ldr	r3, [r7]
	ldr	r3, [r3, #28]
	str	r3, [r7, #40]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	str	r3, [r7, #36]
	ldr	r3, [r7]
	ldr	r3, [r3, #24]
	str	r3, [r7, #32]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #44]
	subs	r3, r2, r3
	str	r3, [r7, #28]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #40]
	subs	r3, r2, r3
	str	r3, [r7, #24]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	beq	.L248
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bne	.L249
.L248:
	ldr	r3, [r7, #12]
	str	r3, [r7, #52]
	b	.L250
.L254:
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #28]
	str	r3, [r7, #48]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #44]
	cmp	r2, r3
	bgt	.L251
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #48]
	b	.L252
.L251:
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	blt	.L253
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	str	r3, [r7, #48]
	b	.L252
.L253:
	ldr	r3, [r7, #36]
	str	r3, [r7, #48]
.L252:
	ldr	r3, [r7, #52]
	ldr	r2, [r7, #48]
	str	r2, [r3, #24]
	ldr	r3, [r7, #52]
	adds	r3, r3, #40
	str	r3, [r7, #52]
.L250:
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bls	.L254
	b	.L244
.L249:
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #36]
	subs	r2, r2, r3
	ldr	r1, [r7, #40]
	ldr	r3, [r7, #44]
	subs	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	FT_DivFix(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #12]
	str	r3, [r7, #52]
	b	.L255
.L259:
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #28]
	str	r3, [r7, #48]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #44]
	cmp	r2, r3
	bgt	.L256
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #48]
	b	.L257
.L256:
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	blt	.L258
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	str	r3, [r7, #48]
	b	.L257
.L258:
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #44]
	subs	r3, r2, r3
	mov	r0, r3
	ldr	r1, [r7, #20]
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	str	r3, [r7, #48]
.L257:
	ldr	r3, [r7, #52]
	ldr	r2, [r7, #48]
	str	r2, [r3, #24]
	ldr	r3, [r7, #52]
	adds	r3, r3, #40
	str	r3, [r7, #52]
.L255:
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bls	.L259
.L244:
	adds	r7, r7, #56
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	af_iup_interp, .-af_iup_interp
	.section	.text.af_glyph_hints_align_weak_points,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_glyph_hints_align_weak_points, %function
af_glyph_hints_align_weak_points:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	str	r3, [r7, #32]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #3
	ldr	r2, [r7, #32]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	str	r3, [r7, #44]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	lsls	r3, r3, #2
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L261
	movs	r3, #4
	str	r3, [r7, #40]
	ldr	r3, [r7, #32]
	str	r3, [r7, #36]
	b	.L262
.L263:
	ldr	r3, [r7, #36]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #36]
	str	r2, [r3, #24]
	ldr	r3, [r7, #36]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #36]
	str	r2, [r3, #28]
	ldr	r3, [r7, #36]
	adds	r3, r3, #40
	str	r3, [r7, #36]
.L262:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bcc	.L263
	b	.L267
.L261:
	movs	r3, #8
	str	r3, [r7, #40]
	ldr	r3, [r7, #32]
	str	r3, [r7, #36]
	b	.L265
.L266:
	ldr	r3, [r7, #36]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #36]
	str	r2, [r3, #24]
	ldr	r3, [r7, #36]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #36]
	str	r2, [r3, #28]
	ldr	r3, [r7, #36]
	adds	r3, r3, #40
	str	r3, [r7, #36]
.L265:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bcc	.L266
	b	.L267
.L284:
	ldr	r3, [r7, #44]
	ldr	r3, [r3]
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #36]
	str	r3, [r7, #20]
	ldr	r3, [r7, #36]
	str	r3, [r7, #16]
.L272:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bls	.L268
	b	.L269
.L268:
	ldr	r3, [r7, #36]
	ldrh	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7, #40]
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L270
	nop
	ldr	r3, [r7, #36]
	str	r3, [r7, #12]
	b	.L273
.L270:
	ldr	r3, [r7, #36]
	adds	r3, r3, #40
	str	r3, [r7, #36]
	b	.L272
.L275:
	ldr	r3, [r7, #36]
	adds	r3, r3, #40
	str	r3, [r7, #36]
.L273:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcs	.L274
	ldr	r3, [r7, #36]
	adds	r3, r3, #40
	ldrh	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7, #40]
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L275
.L274:
	ldr	r3, [r7, #36]
	str	r3, [r7, #8]
	ldr	r3, [r7, #36]
	adds	r3, r3, #40
	str	r3, [r7, #36]
.L280:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bls	.L276
	nop
.L277:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bne	.L282
	b	.L291
.L276:
	ldr	r3, [r7, #36]
	ldrh	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7, #40]
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L278
	nop
	ldr	r3, [r7, #8]
	add	r2, r3, #40
	ldr	r3, [r7, #36]
	subs	r3, r3, #40
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #36]
	bl	af_iup_interp(PLT)
	nop
	b	.L273
.L278:
	ldr	r3, [r7, #36]
	adds	r3, r3, #40
	str	r3, [r7, #36]
	b	.L280
.L291:
	ldr	r0, [r7, #16]
	ldr	r1, [r7, #20]
	ldr	r2, [r7, #12]
	bl	af_iup_shift(PLT)
	b	.L269
.L282:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcs	.L283
	ldr	r3, [r7, #8]
	adds	r3, r3, #40
	mov	r0, r3
	ldr	r1, [r7, #20]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	bl	af_iup_interp(PLT)
.L283:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bls	.L269
	ldr	r3, [r7, #12]
	subs	r3, r3, #40
	ldr	r0, [r7, #16]
	mov	r1, r3
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	bl	af_iup_interp(PLT)
.L269:
	ldr	r3, [r7, #44]
	adds	r3, r3, #4
	str	r3, [r7, #44]
.L267:
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bcc	.L284
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L285
	ldr	r3, [r7, #32]
	str	r3, [r7, #36]
	b	.L286
.L287:
	ldr	r3, [r7, #36]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #36]
	str	r2, [r3, #16]
	ldr	r3, [r7, #36]
	adds	r3, r3, #40
	str	r3, [r7, #36]
.L286:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bcc	.L287
	b	.L260
.L285:
	ldr	r3, [r7, #32]
	str	r3, [r7, #36]
	b	.L289
.L290:
	ldr	r3, [r7, #36]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #36]
	str	r2, [r3, #20]
	ldr	r3, [r7, #36]
	adds	r3, r3, #40
	str	r3, [r7, #36]
.L289:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bcc	.L290
.L260:
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	af_glyph_hints_align_weak_points, .-af_glyph_hints_align_weak_points
	.global	af_arab_uniranges
	.section	.rodata.af_arab_uniranges,"a",%progbits
	.align	2
	.type	af_arab_uniranges, %object
	.size	af_arab_uniranges, 56
af_arab_uniranges:
	.word	1536
	.word	1791
	.word	1872
	.word	2047
	.word	2208
	.word	2303
	.word	64336
	.word	65023
	.word	65136
	.word	65279
	.word	126464
	.word	126719
	.word	0
	.word	0
	.global	af_arab_nonbase_uniranges
	.section	.rodata.af_arab_nonbase_uniranges,"a",%progbits
	.align	2
	.type	af_arab_nonbase_uniranges, %object
	.size	af_arab_nonbase_uniranges, 152
af_arab_nonbase_uniranges:
	.word	1536
	.word	1541
	.word	1552
	.word	1562
	.word	1611
	.word	1631
	.word	1648
	.word	1648
	.word	1750
	.word	1756
	.word	1759
	.word	1764
	.word	1767
	.word	1768
	.word	1770
	.word	1773
	.word	2275
	.word	2303
	.word	64434
	.word	64449
	.word	65136
	.word	65136
	.word	65138
	.word	65138
	.word	65140
	.word	65140
	.word	65142
	.word	65142
	.word	65144
	.word	65144
	.word	65146
	.word	65146
	.word	65148
	.word	65148
	.word	65150
	.word	65150
	.word	0
	.word	0
	.global	af_cyrl_uniranges
	.section	.rodata.af_cyrl_uniranges,"a",%progbits
	.align	2
	.type	af_cyrl_uniranges, %object
	.size	af_cyrl_uniranges, 40
af_cyrl_uniranges:
	.word	1024
	.word	1279
	.word	1280
	.word	1327
	.word	11744
	.word	11775
	.word	42560
	.word	42655
	.word	0
	.word	0
	.global	af_cyrl_nonbase_uniranges
	.section	.rodata.af_cyrl_nonbase_uniranges,"a",%progbits
	.align	2
	.type	af_cyrl_nonbase_uniranges, %object
	.size	af_cyrl_nonbase_uniranges, 40
af_cyrl_nonbase_uniranges:
	.word	1155
	.word	1161
	.word	11744
	.word	11775
	.word	42607
	.word	42623
	.word	42654
	.word	42655
	.word	0
	.word	0
	.global	af_deva_uniranges
	.section	.rodata.af_deva_uniranges,"a",%progbits
	.align	2
	.type	af_deva_uniranges, %object
	.size	af_deva_uniranges, 56
af_deva_uniranges:
	.word	2304
	.word	2363
	.word	2365
	.word	2384
	.word	2387
	.word	2403
	.word	2406
	.word	2431
	.word	8377
	.word	8377
	.word	43232
	.word	43263
	.word	0
	.word	0
	.global	af_deva_nonbase_uniranges
	.section	.rodata.af_deva_nonbase_uniranges,"a",%progbits
	.align	2
	.type	af_deva_nonbase_uniranges, %object
	.size	af_deva_nonbase_uniranges, 64
af_deva_nonbase_uniranges:
	.word	2304
	.word	2306
	.word	2362
	.word	2362
	.word	2369
	.word	2376
	.word	2381
	.word	2381
	.word	2387
	.word	2391
	.word	2402
	.word	2403
	.word	43232
	.word	43249
	.word	0
	.word	0
	.global	af_grek_uniranges
	.section	.rodata.af_grek_uniranges,"a",%progbits
	.align	2
	.type	af_grek_uniranges, %object
	.size	af_grek_uniranges, 24
af_grek_uniranges:
	.word	880
	.word	1023
	.word	7936
	.word	8191
	.word	0
	.word	0
	.global	af_grek_nonbase_uniranges
	.section	.rodata.af_grek_nonbase_uniranges,"a",%progbits
	.align	2
	.type	af_grek_nonbase_uniranges, %object
	.size	af_grek_nonbase_uniranges, 64
af_grek_nonbase_uniranges:
	.word	890
	.word	890
	.word	900
	.word	901
	.word	8125
	.word	8129
	.word	8141
	.word	8143
	.word	8157
	.word	8159
	.word	8173
	.word	8175
	.word	8189
	.word	8190
	.word	0
	.word	0
	.global	af_hebr_uniranges
	.section	.rodata.af_hebr_uniranges,"a",%progbits
	.align	2
	.type	af_hebr_uniranges, %object
	.size	af_hebr_uniranges, 24
af_hebr_uniranges:
	.word	1424
	.word	1535
	.word	64285
	.word	64335
	.word	0
	.word	0
	.global	af_hebr_nonbase_uniranges
	.section	.rodata.af_hebr_nonbase_uniranges,"a",%progbits
	.align	2
	.type	af_hebr_nonbase_uniranges, %object
	.size	af_hebr_nonbase_uniranges, 48
af_hebr_nonbase_uniranges:
	.word	1425
	.word	1471
	.word	1473
	.word	1474
	.word	1476
	.word	1477
	.word	1479
	.word	1479
	.word	64286
	.word	64286
	.word	0
	.word	0
	.global	af_lao_uniranges
	.section	.rodata.af_lao_uniranges,"a",%progbits
	.align	2
	.type	af_lao_uniranges, %object
	.size	af_lao_uniranges, 16
af_lao_uniranges:
	.word	3712
	.word	3839
	.word	0
	.word	0
	.global	af_lao_nonbase_uniranges
	.section	.rodata.af_lao_nonbase_uniranges,"a",%progbits
	.align	2
	.type	af_lao_nonbase_uniranges, %object
	.size	af_lao_nonbase_uniranges, 32
af_lao_nonbase_uniranges:
	.word	3761
	.word	3761
	.word	3764
	.word	3772
	.word	3784
	.word	3789
	.word	0
	.word	0
	.global	af_latn_uniranges
	.section	.rodata.af_latn_uniranges,"a",%progbits
	.align	2
	.type	af_latn_uniranges, %object
	.size	af_latn_uniranges, 264
af_latn_uniranges:
	.word	32
	.word	127
	.word	160
	.word	169
	.word	171
	.word	177
	.word	180
	.word	184
	.word	187
	.word	255
	.word	256
	.word	383
	.word	384
	.word	591
	.word	592
	.word	687
	.word	697
	.word	735
	.word	741
	.word	767
	.word	768
	.word	879
	.word	6832
	.word	6846
	.word	7424
	.word	7467
	.word	7531
	.word	7543
	.word	7545
	.word	7551
	.word	7552
	.word	7578
	.word	7616
	.word	7679
	.word	7680
	.word	7935
	.word	8192
	.word	8303
	.word	8352
	.word	8376
	.word	8378
	.word	8399
	.word	8528
	.word	8591
	.word	11360
	.word	11387
	.word	11390
	.word	11391
	.word	11776
	.word	11903
	.word	42784
	.word	42863
	.word	42865
	.word	42999
	.word	43002
	.word	43007
	.word	43824
	.word	43867
	.word	43872
	.word	43887
	.word	64256
	.word	64262
	.word	119808
	.word	120831
	.word	0
	.word	0
	.global	af_latn_nonbase_uniranges
	.section	.rodata.af_latn_nonbase_uniranges,"a",%progbits
	.align	2
	.type	af_latn_nonbase_uniranges, %object
	.size	af_latn_nonbase_uniranges, 136
af_latn_nonbase_uniranges:
	.word	94
	.word	96
	.word	126
	.word	126
	.word	168
	.word	169
	.word	174
	.word	176
	.word	180
	.word	180
	.word	184
	.word	184
	.word	188
	.word	190
	.word	697
	.word	735
	.word	741
	.word	767
	.word	768
	.word	879
	.word	6832
	.word	6846
	.word	7616
	.word	7679
	.word	8215
	.word	8215
	.word	8254
	.word	8254
	.word	42888
	.word	42888
	.word	43000
	.word	43002
	.word	0
	.word	0
	.global	af_latb_uniranges
	.section	.rodata.af_latb_uniranges,"a",%progbits
	.align	2
	.type	af_latb_uniranges, %object
	.size	af_latb_uniranges, 32
af_latb_uniranges:
	.word	7522
	.word	7530
	.word	8320
	.word	8348
	.word	11388
	.word	11388
	.word	0
	.word	0
	.global	af_latb_nonbase_uniranges
	.section	.rodata.af_latb_nonbase_uniranges,"a",%progbits
	.align	2
	.type	af_latb_nonbase_uniranges, %object
	.size	af_latb_nonbase_uniranges, 8
af_latb_nonbase_uniranges:
	.space	8
	.global	af_latp_uniranges
	.section	.rodata.af_latp_uniranges,"a",%progbits
	.align	2
	.type	af_latp_uniranges, %object
	.size	af_latp_uniranges, 112
af_latp_uniranges:
	.word	170
	.word	170
	.word	178
	.word	179
	.word	185
	.word	186
	.word	688
	.word	696
	.word	736
	.word	740
	.word	7468
	.word	7521
	.word	7544
	.word	7544
	.word	7579
	.word	7615
	.word	8304
	.word	8319
	.word	11389
	.word	11389
	.word	42864
	.word	42864
	.word	43000
	.word	43001
	.word	43868
	.word	43871
	.word	0
	.word	0
	.global	af_latp_nonbase_uniranges
	.section	.rodata.af_latp_nonbase_uniranges,"a",%progbits
	.align	2
	.type	af_latp_nonbase_uniranges, %object
	.size	af_latp_nonbase_uniranges, 8
af_latp_nonbase_uniranges:
	.space	8
	.global	af_none_uniranges
	.section	.rodata.af_none_uniranges,"a",%progbits
	.align	2
	.type	af_none_uniranges, %object
	.size	af_none_uniranges, 8
af_none_uniranges:
	.space	8
	.global	af_none_nonbase_uniranges
	.section	.rodata.af_none_nonbase_uniranges,"a",%progbits
	.align	2
	.type	af_none_nonbase_uniranges, %object
	.size	af_none_nonbase_uniranges, 8
af_none_nonbase_uniranges:
	.space	8
	.global	af_telu_uniranges
	.section	.rodata.af_telu_uniranges,"a",%progbits
	.align	2
	.type	af_telu_uniranges, %object
	.size	af_telu_uniranges, 16
af_telu_uniranges:
	.word	3072
	.word	3199
	.word	0
	.word	0
	.global	af_telu_nonbase_uniranges
	.section	.rodata.af_telu_nonbase_uniranges,"a",%progbits
	.align	2
	.type	af_telu_nonbase_uniranges, %object
	.size	af_telu_nonbase_uniranges, 40
af_telu_nonbase_uniranges:
	.word	3072
	.word	3072
	.word	3134
	.word	3136
	.word	3142
	.word	3158
	.word	3170
	.word	3171
	.word	0
	.word	0
	.global	af_thai_uniranges
	.section	.rodata.af_thai_uniranges,"a",%progbits
	.align	2
	.type	af_thai_uniranges, %object
	.size	af_thai_uniranges, 16
af_thai_uniranges:
	.word	3584
	.word	3711
	.word	0
	.word	0
	.global	af_thai_nonbase_uniranges
	.section	.rodata.af_thai_nonbase_uniranges,"a",%progbits
	.align	2
	.type	af_thai_nonbase_uniranges, %object
	.size	af_thai_nonbase_uniranges, 32
af_thai_nonbase_uniranges:
	.word	3633
	.word	3633
	.word	3636
	.word	3642
	.word	3655
	.word	3662
	.word	0
	.word	0
	.global	af_beng_uniranges
	.section	.rodata.af_beng_uniranges,"a",%progbits
	.align	2
	.type	af_beng_uniranges, %object
	.size	af_beng_uniranges, 16
af_beng_uniranges:
	.word	2432
	.word	2559
	.word	0
	.word	0
	.global	af_beng_nonbase_uniranges
	.section	.rodata.af_beng_nonbase_uniranges,"a",%progbits
	.align	2
	.type	af_beng_nonbase_uniranges, %object
	.size	af_beng_nonbase_uniranges, 48
af_beng_nonbase_uniranges:
	.word	2433
	.word	2433
	.word	2492
	.word	2492
	.word	2497
	.word	2500
	.word	2509
	.word	2509
	.word	2530
	.word	2531
	.word	0
	.word	0
	.global	af_gujr_uniranges
	.section	.rodata.af_gujr_uniranges,"a",%progbits
	.align	2
	.type	af_gujr_uniranges, %object
	.size	af_gujr_uniranges, 16
af_gujr_uniranges:
	.word	2688
	.word	2815
	.word	0
	.word	0
	.global	af_gujr_nonbase_uniranges
	.section	.rodata.af_gujr_nonbase_uniranges,"a",%progbits
	.align	2
	.type	af_gujr_nonbase_uniranges, %object
	.size	af_gujr_nonbase_uniranges, 48
af_gujr_nonbase_uniranges:
	.word	2689
	.word	2690
	.word	2748
	.word	2748
	.word	2753
	.word	2760
	.word	2765
	.word	2765
	.word	2786
	.word	2787
	.word	0
	.word	0
	.global	af_guru_uniranges
	.section	.rodata.af_guru_uniranges,"a",%progbits
	.align	2
	.type	af_guru_uniranges, %object
	.size	af_guru_uniranges, 16
af_guru_uniranges:
	.word	2560
	.word	2687
	.word	0
	.word	0
	.global	af_guru_nonbase_uniranges
	.section	.rodata.af_guru_nonbase_uniranges,"a",%progbits
	.align	2
	.type	af_guru_nonbase_uniranges, %object
	.size	af_guru_nonbase_uniranges, 48
af_guru_nonbase_uniranges:
	.word	2561
	.word	2562
	.word	2620
	.word	2622
	.word	2625
	.word	2641
	.word	2672
	.word	2673
	.word	2677
	.word	2677
	.word	0
	.word	0
	.global	af_knda_uniranges
	.section	.rodata.af_knda_uniranges,"a",%progbits
	.align	2
	.type	af_knda_uniranges, %object
	.size	af_knda_uniranges, 16
af_knda_uniranges:
	.word	3200
	.word	3327
	.word	0
	.word	0
	.global	af_knda_nonbase_uniranges
	.section	.rodata.af_knda_nonbase_uniranges,"a",%progbits
	.align	2
	.type	af_knda_nonbase_uniranges, %object
	.size	af_knda_nonbase_uniranges, 56
af_knda_nonbase_uniranges:
	.word	3201
	.word	3201
	.word	3260
	.word	3260
	.word	3263
	.word	3263
	.word	3270
	.word	3270
	.word	3276
	.word	3277
	.word	3298
	.word	3299
	.word	0
	.word	0
	.global	af_limb_uniranges
	.section	.rodata.af_limb_uniranges,"a",%progbits
	.align	2
	.type	af_limb_uniranges, %object
	.size	af_limb_uniranges, 16
af_limb_uniranges:
	.word	6400
	.word	6479
	.word	0
	.word	0
	.global	af_limb_nonbase_uniranges
	.section	.rodata.af_limb_nonbase_uniranges,"a",%progbits
	.align	2
	.type	af_limb_nonbase_uniranges, %object
	.size	af_limb_nonbase_uniranges, 32
af_limb_nonbase_uniranges:
	.word	6432
	.word	6434
	.word	6439
	.word	6452
	.word	6455
	.word	6459
	.word	0
	.word	0
	.global	af_mlym_uniranges
	.section	.rodata.af_mlym_uniranges,"a",%progbits
	.align	2
	.type	af_mlym_uniranges, %object
	.size	af_mlym_uniranges, 16
af_mlym_uniranges:
	.word	3328
	.word	3455
	.word	0
	.word	0
	.global	af_mlym_nonbase_uniranges
	.section	.rodata.af_mlym_nonbase_uniranges,"a",%progbits
	.align	2
	.type	af_mlym_nonbase_uniranges, %object
	.size	af_mlym_nonbase_uniranges, 32
af_mlym_nonbase_uniranges:
	.word	3329
	.word	3329
	.word	3405
	.word	3406
	.word	3426
	.word	3427
	.word	0
	.word	0
	.global	af_orya_uniranges
	.section	.rodata.af_orya_uniranges,"a",%progbits
	.align	2
	.type	af_orya_uniranges, %object
	.size	af_orya_uniranges, 16
af_orya_uniranges:
	.word	2816
	.word	2943
	.word	0
	.word	0
	.global	af_orya_nonbase_uniranges
	.section	.rodata.af_orya_nonbase_uniranges,"a",%progbits
	.align	2
	.type	af_orya_nonbase_uniranges, %object
	.size	af_orya_nonbase_uniranges, 56
af_orya_nonbase_uniranges:
	.word	2817
	.word	2818
	.word	2876
	.word	2876
	.word	2879
	.word	2879
	.word	2881
	.word	2884
	.word	2893
	.word	2902
	.word	2914
	.word	2915
	.word	0
	.word	0
	.global	af_sinh_uniranges
	.section	.rodata.af_sinh_uniranges,"a",%progbits
	.align	2
	.type	af_sinh_uniranges, %object
	.size	af_sinh_uniranges, 16
af_sinh_uniranges:
	.word	3456
	.word	3583
	.word	0
	.word	0
	.global	af_sinh_nonbase_uniranges
	.section	.rodata.af_sinh_nonbase_uniranges,"a",%progbits
	.align	2
	.type	af_sinh_nonbase_uniranges, %object
	.size	af_sinh_nonbase_uniranges, 24
af_sinh_nonbase_uniranges:
	.word	3530
	.word	3530
	.word	3538
	.word	3542
	.word	0
	.word	0
	.global	af_sund_uniranges
	.section	.rodata.af_sund_uniranges,"a",%progbits
	.align	2
	.type	af_sund_uniranges, %object
	.size	af_sund_uniranges, 24
af_sund_uniranges:
	.word	7040
	.word	7103
	.word	7360
	.word	7375
	.word	0
	.word	0
	.global	af_sund_nonbase_uniranges
	.section	.rodata.af_sund_nonbase_uniranges,"a",%progbits
	.align	2
	.type	af_sund_nonbase_uniranges, %object
	.size	af_sund_nonbase_uniranges, 24
af_sund_nonbase_uniranges:
	.word	7040
	.word	7042
	.word	7073
	.word	7085
	.word	0
	.word	0
	.global	af_sylo_uniranges
	.section	.rodata.af_sylo_uniranges,"a",%progbits
	.align	2
	.type	af_sylo_uniranges, %object
	.size	af_sylo_uniranges, 16
af_sylo_uniranges:
	.word	43008
	.word	43055
	.word	0
	.word	0
	.global	af_sylo_nonbase_uniranges
	.section	.rodata.af_sylo_nonbase_uniranges,"a",%progbits
	.align	2
	.type	af_sylo_nonbase_uniranges, %object
	.size	af_sylo_nonbase_uniranges, 40
af_sylo_nonbase_uniranges:
	.word	43010
	.word	43010
	.word	43014
	.word	43014
	.word	43019
	.word	43019
	.word	43045
	.word	43046
	.word	0
	.word	0
	.global	af_taml_uniranges
	.section	.rodata.af_taml_uniranges,"a",%progbits
	.align	2
	.type	af_taml_uniranges, %object
	.size	af_taml_uniranges, 16
af_taml_uniranges:
	.word	2944
	.word	3071
	.word	0
	.word	0
	.global	af_taml_nonbase_uniranges
	.section	.rodata.af_taml_nonbase_uniranges,"a",%progbits
	.align	2
	.type	af_taml_nonbase_uniranges, %object
	.size	af_taml_nonbase_uniranges, 32
af_taml_nonbase_uniranges:
	.word	2946
	.word	2946
	.word	3008
	.word	3010
	.word	3021
	.word	3021
	.word	0
	.word	0
	.global	af_tibt_uniranges
	.section	.rodata.af_tibt_uniranges,"a",%progbits
	.align	2
	.type	af_tibt_uniranges, %object
	.size	af_tibt_uniranges, 16
af_tibt_uniranges:
	.word	3840
	.word	4095
	.word	0
	.word	0
	.global	af_tibt_nonbase_uniranges
	.section	.rodata.af_tibt_nonbase_uniranges,"a",%progbits
	.align	2
	.type	af_tibt_nonbase_uniranges, %object
	.size	af_tibt_nonbase_uniranges, 80
af_tibt_nonbase_uniranges:
	.word	3864
	.word	3865
	.word	3893
	.word	3893
	.word	3895
	.word	3895
	.word	3897
	.word	3897
	.word	3902
	.word	3903
	.word	3953
	.word	3966
	.word	3968
	.word	3972
	.word	3974
	.word	3975
	.word	3981
	.word	4028
	.word	0
	.word	0
	.global	af_hani_uniranges
	.section	.rodata.af_hani_uniranges,"a",%progbits
	.align	2
	.type	af_hani_uniranges, %object
	.size	af_hani_uniranges, 248
af_hani_uniranges:
	.word	4352
	.word	4607
	.word	11904
	.word	12031
	.word	12032
	.word	12255
	.word	12272
	.word	12287
	.word	12288
	.word	12351
	.word	12352
	.word	12447
	.word	12448
	.word	12543
	.word	12544
	.word	12591
	.word	12592
	.word	12687
	.word	12688
	.word	12703
	.word	12704
	.word	12735
	.word	12736
	.word	12783
	.word	12784
	.word	12799
	.word	13056
	.word	13311
	.word	13312
	.word	19903
	.word	19904
	.word	19967
	.word	19968
	.word	40959
	.word	43360
	.word	43391
	.word	44032
	.word	55215
	.word	55216
	.word	55295
	.word	63744
	.word	64255
	.word	65040
	.word	65055
	.word	65072
	.word	65103
	.word	65280
	.word	65519
	.word	110592
	.word	110847
	.word	119552
	.word	119647
	.word	131072
	.word	173791
	.word	173824
	.word	177983
	.word	177984
	.word	178207
	.word	194560
	.word	195103
	.word	0
	.word	0
	.global	af_hani_nonbase_uniranges
	.section	.rodata.af_hani_nonbase_uniranges,"a",%progbits
	.align	2
	.type	af_hani_nonbase_uniranges, %object
	.size	af_hani_nonbase_uniranges, 24
af_hani_nonbase_uniranges:
	.word	12330
	.word	12335
	.word	12688
	.word	12703
	.word	0
	.word	0
	.section	.text.af_dummy_hints_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_dummy_hints_init, %function
af_dummy_hints_init:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	af_glyph_hints_rescale(PLT)
	ldr	r3, [r7]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #4]
	str	r2, [r3, #16]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	af_dummy_hints_init, .-af_dummy_hints_init
	.section	.text.af_dummy_hints_apply,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_dummy_hints_apply, %function
af_dummy_hints_apply:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #4]
	bl	af_glyph_hints_reload(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L295
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #4]
	bl	af_glyph_hints_save(PLT)
.L295:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	af_dummy_hints_apply, .-af_dummy_hints_apply
	.global	af_dummy_writing_system_class
	.section	.data.rel.ro.local.af_dummy_writing_system_class,"aw",%progbits
	.align	2
	.type	af_dummy_writing_system_class, %object
	.size	af_dummy_writing_system_class, 32
af_dummy_writing_system_class:
	.word	0
	.word	40
	.word	0
	.word	0
	.word	0
	.word	0
	.word	af_dummy_hints_init
	.word	af_dummy_hints_apply
	.section	.text.af_latin_metrics_init_widths,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_latin_metrics_init_widths, %function
af_latin_metrics_init_widths:
	@ args = 0, pretend = 0, frame = 12416
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #12416
	sub	sp, sp, #4
	add	r7, sp, #0
	add	r3, r7, #64
	subs	r3, r3, #60
	str	r0, [r3]
	mov	r3, r7
	str	r1, [r3]
	ldr	r4, .L314
.LPIC3:
	add	r4, pc
	mov	r3, r7
	ldr	r3, [r3]
	ldr	r2, [r3, #100]
	add	r3, r7, #5504
	subs	r3, r3, #16
	mov	r0, r3
	mov	r1, r2
	bl	af_glyph_hints_init(PLT)
	add	r3, r7, #64
	subs	r3, r3, #60
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [r3, #52]
	add	r3, r7, #64
	subs	r3, r3, #60
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [r3, #2764]
	add	r3, r7, #64
	subs	r3, r3, #56
	adds	r3, r3, #4
	add	r0, r7, #12352
	add	r0, r0, #48
	str	r3, [r0]
	add	r3, r7, #64
	subs	r3, r3, #60
	ldr	r3, [r3]
	ldr	r3, [r3]
	add	r1, r7, #12352
	add	r1, r1, #44
	str	r3, [r1]
	add	r2, r7, #12352
	add	r2, r2, #44
	ldr	r3, [r2]
	ldr	r2, [r3, #8]
	ldr	r3, .L314+4
	ldr	r3, [r4, r3]
	ldr	r3, [r3, r2, lsl #2]
	add	ip, r7, #12352
	add	ip, ip, #40
	str	r3, [ip]
	add	r0, r7, #12352
	add	r0, r0, #40
	ldr	r3, [r0]
	ldr	r3, [r3, #12]
	add	r1, r7, #12352
	add	r1, r1, #36
	str	r3, [r1]
	add	r3, r7, #64
	subs	r3, r3, #60
	ldr	r1, [r3]
	add	r2, r7, #5504
	subs	r2, r2, #20
	add	r3, r7, #5504
	subs	r3, r3, #24
	mov	r0, r1
	add	ip, r7, #12352
	add	ip, ip, #36
	ldr	r1, [ip]
	bl	af_get_char_index(PLT)
	add	r3, r7, #5504
	subs	r3, r3, #20
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L298
	add	r0, r7, #12352
	add	r0, r0, #40
	ldr	r3, [r0]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L299
	add	r1, r7, #12352
	add	r1, r1, #40
	ldr	r3, [r1]
	ldr	r3, [r3, #16]
	add	r2, r7, #12352
	add	r2, r2, #36
	str	r3, [r2]
	add	r3, r7, #64
	subs	r3, r3, #60
	ldr	r1, [r3]
	add	r2, r7, #5504
	subs	r2, r2, #20
	add	r3, r7, #5504
	subs	r3, r3, #24
	mov	r0, r1
	add	ip, r7, #12352
	add	ip, ip, #36
	ldr	r1, [ip]
	bl	af_get_char_index(PLT)
	add	r3, r7, #5504
	subs	r3, r3, #20
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L298
	add	r0, r7, #12352
	add	r0, r0, #40
	ldr	r3, [r0]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L300
	add	r1, r7, #12352
	add	r1, r1, #40
	ldr	r3, [r1]
	ldr	r3, [r3, #20]
	add	r2, r7, #12352
	add	r2, r2, #36
	str	r3, [r2]
	add	r3, r7, #64
	subs	r3, r3, #60
	ldr	r1, [r3]
	add	r2, r7, #5504
	subs	r2, r2, #20
	add	r3, r7, #5504
	subs	r3, r3, #24
	mov	r0, r1
	add	ip, r7, #12352
	add	ip, ip, #36
	ldr	r1, [ip]
	bl	af_get_char_index(PLT)
	add	r3, r7, #5504
	subs	r3, r3, #20
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L298
	b	.L301
.L300:
	b	.L301
.L299:
	b	.L301
.L298:
	add	r3, r7, #5504
	subs	r3, r3, #20
	ldr	r3, [r3]
	mov	r2, r7
	ldr	r0, [r2]
	mov	r1, r3
	movs	r2, #1
	bl	FT_Load_Glyph(PLT)
	add	r1, r7, #12352
	add	r1, r1, #32
	str	r0, [r1]
	add	r2, r7, #12352
	add	r2, r2, #32
	ldr	r3, [r2]
	cmp	r3, #0
	bne	.L301
	mov	r3, r7
	ldr	r3, [r3]
	ldr	r3, [r3, #84]
	ldrh	r3, [r3, #110]
	sxth	r3, r3
	cmp	r3, #0
	ble	.L301
	add	r3, r7, #64
	subs	r3, r3, #56
	mov	r0, r3
	movs	r1, #0
	movw	r2, #5468
	bl	memset(PLT)
	add	r3, r7, #64
	subs	r3, r3, #60
	ldr	r3, [r3]
	ldr	r2, [r3, #40]
	add	r3, r7, #64
	subs	r3, r3, #56
	str	r2, [r3, #40]
	add	ip, r7, #12352
	add	ip, ip, #48
	ldr	r3, [ip]
	mov	r2, #65536
	str	r2, [r3, #4]
	add	r0, r7, #12352
	add	r0, r0, #48
	ldr	r3, [r0]
	mov	r2, #65536
	str	r2, [r3, #8]
	add	r1, r7, #12352
	add	r1, r1, #48
	ldr	r3, [r1]
	movs	r2, #0
	str	r2, [r3, #12]
	add	r2, r7, #12352
	add	r2, r2, #48
	ldr	r3, [r2]
	movs	r2, #0
	str	r2, [r3, #16]
	add	ip, r7, #12352
	add	ip, ip, #48
	ldr	r3, [ip]
	mov	r2, r7
	ldr	r2, [r2]
	str	r2, [r3]
	add	r0, r7, #12352
	add	r0, r0, #48
	ldr	r3, [r0]
	movs	r2, #0
	str	r2, [r3, #20]
	add	r1, r7, #12352
	add	r1, r1, #48
	ldr	r3, [r1]
	movs	r2, #0
	str	r2, [r3, #24]
	add	r2, r7, #5504
	subs	r2, r2, #16
	add	r3, r7, #64
	subs	r3, r3, #56
	mov	r0, r2
	mov	r1, r3
	bl	af_glyph_hints_rescale(PLT)
	mov	r3, r7
	ldr	r3, [r3]
	ldr	r3, [r3, #84]
	add	r2, r3, #108
	add	r3, r7, #5504
	subs	r3, r3, #16
	mov	r0, r3
	mov	r1, r2
	bl	af_glyph_hints_reload(PLT)
	add	r2, r7, #12352
	add	r2, r2, #32
	str	r0, [r2]
	add	ip, r7, #12352
	add	ip, ip, #32
	ldr	r3, [ip]
	cmp	r3, #0
	beq	.L302
	b	.L301
.L302:
	movs	r3, #0
	add	r0, r7, #12352
	add	r0, r0, #60
	str	r3, [r0]
	b	.L303
.L309:
	add	r3, r7, #64
	subs	r3, r3, #60
	add	r1, r7, #12352
	add	r1, r1, #60
	ldr	r2, [r1]
	movw	r1, #2712
	mul	r2, r1, r2
	adds	r2, r2, #40
	ldr	r3, [r3]
	add	r3, r3, r2
	adds	r3, r3, #4
	add	r2, r7, #12352
	add	r2, r2, #28
	str	r3, [r2]
	add	r3, r7, #5504
	subs	r3, r3, #16
	add	ip, r7, #12352
	add	ip, ip, #60
	ldr	r2, [ip]
	movw	r1, #1468
	mul	r2, r1, r2
	adds	r2, r2, #40
	add	r3, r3, r2
	adds	r3, r3, #4
	add	r0, r7, #12352
	add	r0, r0, #24
	str	r3, [r0]
	add	r3, r7, #5504
	subs	r3, r3, #28
	movs	r2, #0
	str	r2, [r3]
	add	r1, r7, #12352
	add	r1, r1, #60
	ldr	r2, [r1]
	add	r3, r7, #5504
	subs	r3, r3, #16
	mov	r0, r3
	mov	r1, r2
	bl	af_latin_hints_compute_segments(PLT)
	add	r2, r7, #12352
	add	r2, r2, #32
	str	r0, [r2]
	add	ip, r7, #12352
	add	ip, ip, #32
	ldr	r3, [ip]
	cmp	r3, #0
	bne	.L301
	add	r0, r7, #12352
	add	r0, r0, #60
	ldr	r4, [r0]
	add	r3, r7, #5504
	subs	r3, r3, #16
	mov	r0, r3
	movs	r1, #0
	movs	r2, #0
	mov	r3, r4
	bl	af_latin_hints_link_segments(PLT)
	add	r1, r7, #12352
	add	r1, r1, #24
	ldr	r3, [r1]
	ldr	r3, [r3, #8]
	add	r2, r7, #12352
	add	r2, r2, #56
	str	r3, [r2]
	add	ip, r7, #12352
	add	ip, ip, #24
	ldr	r3, [ip]
	ldr	r3, [r3]
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #4
	add	r0, r7, #12352
	add	r0, r0, #56
	ldr	r2, [r0]
	add	r3, r3, r2
	add	r1, r7, #12352
	add	r1, r1, #20
	str	r3, [r1]
	b	.L305
.L308:
	add	r2, r7, #12352
	add	r2, r2, #56
	ldr	r3, [r2]
	ldr	r3, [r3, #20]
	add	ip, r7, #12352
	add	ip, ip, #16
	str	r3, [ip]
	add	r0, r7, #12352
	add	r0, r0, #16
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L306
	add	r1, r7, #12352
	add	r1, r1, #16
	ldr	r3, [r1]
	ldr	r2, [r3, #20]
	add	ip, r7, #12352
	add	ip, ip, #56
	ldr	r3, [ip]
	cmp	r2, r3
	bne	.L306
	add	r0, r7, #12352
	add	r0, r0, #16
	ldr	r2, [r0]
	add	r1, r7, #12352
	add	r1, r1, #56
	ldr	r3, [r1]
	cmp	r2, r3
	bls	.L306
	add	r2, r7, #12352
	add	r2, r2, #56
	ldr	r3, [r2]
	ldrh	r3, [r3, #2]
	sxth	r2, r3
	add	ip, r7, #12352
	add	ip, ip, #16
	ldr	r3, [ip]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	subs	r3, r2, r3
	add	r0, r7, #12352
	add	r0, r0, #52
	str	r3, [r0]
	add	r1, r7, #12352
	add	r1, r1, #52
	ldr	r3, [r1]
	cmp	r3, #0
	bge	.L307
	add	r2, r7, #12352
	add	r2, r2, #52
	ldr	r3, [r2]
	negs	r3, r3
	add	ip, r7, #12352
	add	ip, ip, #52
	str	r3, [ip]
.L307:
	add	r3, r7, #5504
	subs	r3, r3, #28
	ldr	r3, [r3]
	cmp	r3, #15
	bhi	.L306
	add	r3, r7, #5504
	subs	r3, r3, #28
	ldr	r3, [r3]
	mov	r2, r3
	adds	r1, r2, #1
	add	r3, r7, #5504
	subs	r3, r3, #28
	str	r1, [r3]
	add	r0, r7, #12352
	add	r0, r0, #28
	ldr	r1, [r0]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #12
	add	r1, r7, #12352
	add	r1, r1, #52
	ldr	r2, [r1]
	str	r2, [r3]
.L306:
	add	r2, r7, #12352
	add	r2, r2, #56
	ldr	r3, [r2]
	adds	r3, r3, #48
	add	ip, r7, #12352
	add	ip, ip, #56
	str	r3, [ip]
.L305:
	add	r0, r7, #12352
	add	r0, r0, #56
	ldr	r2, [r0]
	add	r1, r7, #12352
	add	r1, r1, #20
	ldr	r3, [r1]
	cmp	r2, r3
	bcc	.L308
	add	r2, r7, #12352
	add	r2, r2, #28
	ldr	r3, [r2]
	add	r1, r3, #12
	add	r3, r7, #64
	subs	r3, r3, #56
	ldr	r2, [r3, #40]
	movw	r3, #34079
	movt	r3, 20971
	umull	ip, r3, r3, r2
	lsrs	r3, r3, #5
	mov	r2, r3
	add	r3, r7, #5504
	subs	r3, r3, #28
	mov	r0, r3
	bl	af_sort_and_quantize_widths(PLT)
	add	r3, r7, #5504
	subs	r3, r3, #28
	ldr	r2, [r3]
	add	r0, r7, #12352
	add	r0, r0, #28
	ldr	r3, [r0]
	str	r2, [r3, #8]
	add	r1, r7, #12352
	add	r1, r1, #60
	ldr	r3, [r1]
	adds	r3, r3, #1
	add	r2, r7, #12352
	add	r2, r2, #60
	str	r3, [r2]
.L303:
	add	ip, r7, #12352
	add	ip, ip, #60
	ldr	r3, [ip]
	cmp	r3, #1
	ble	.L309
.L301:
	movs	r3, #0
	add	r0, r7, #12352
	add	r0, r0, #60
	str	r3, [r0]
	b	.L310
.L313:
	add	r3, r7, #64
	subs	r3, r3, #60
	add	r1, r7, #12352
	add	r1, r1, #60
	ldr	r2, [r1]
	movw	r1, #2712
	mul	r2, r1, r2
	adds	r2, r2, #40
	ldr	r3, [r3]
	add	r3, r3, r2
	adds	r3, r3, #4
	add	r2, r7, #12352
	add	r2, r2, #12
	str	r3, [r2]
	add	ip, r7, #12352
	add	ip, ip, #12
	ldr	r3, [ip]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L311
	add	r0, r7, #12352
	add	r0, r0, #12
	ldr	r3, [r0]
	ldr	r3, [r3, #12]
	b	.L312
.L311:
	add	r3, r7, #64
	subs	r3, r3, #60
	ldr	r3, [r3]
	ldr	r3, [r3, #40]
	movs	r2, #50
	mul	r3, r2, r3
	addw	r2, r3, #2047
	cmp	r3, #0
	ite	lt
	movlt	r3, r2
	movge	r3, r3
	asrs	r3, r3, #11
.L312:
	add	r1, r7, #12352
	add	r1, r1, #8
	str	r3, [r1]
	add	r3, r7, #12352
	add	r3, r3, #8
	ldr	r2, [r3]
	movw	r3, #26215
	movt	r3, 26214
	smull	ip, r3, r3, r2
	asrs	r1, r3, #1
	asrs	r3, r2, #31
	subs	r2, r1, r3
	add	r0, r7, #12352
	add	r0, r0, #12
	ldr	r3, [r0]
	str	r2, [r3, #204]
	add	r1, r7, #12352
	add	r1, r1, #12
	ldr	r3, [r1]
	add	ip, r7, #12352
	add	ip, ip, #8
	ldr	r2, [ip]
	str	r2, [r3, #208]
	add	r0, r7, #12352
	add	r0, r0, #12
	ldr	r3, [r0]
	movs	r2, #0
	strb	r2, [r3, #212]
	add	r1, r7, #12352
	add	r1, r1, #60
	ldr	r3, [r1]
	adds	r3, r3, #1
	add	r2, r7, #12352
	add	r2, r2, #60
	str	r3, [r2]
.L310:
	add	ip, r7, #12352
	add	ip, ip, #60
	ldr	r3, [ip]
	cmp	r3, #1
	ble	.L313
	add	r3, r7, #5504
	subs	r3, r3, #16
	mov	r0, r3
	bl	af_glyph_hints_done(PLT)
	add	r7, r7, #12416
	adds	r7, r7, #4
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L315:
	.align	2
.L314:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC3+4)
	.word	af_script_classes(GOT)
	.size	af_latin_metrics_init_widths, .-af_latin_metrics_init_widths
	.section	.text.af_latin_metrics_init_blues,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_latin_metrics_init_blues, %function
af_latin_metrics_init_blues:
	@ args = 0, pretend = 0, frame = 632
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #636
	add	r7, sp, #0
	adds	r3, r7, #4
	str	r0, [r3]
	mov	r3, r7
	str	r1, [r3]
	ldr	r6, .L402
.LPIC4:
	add	r6, pc
	adds	r3, r7, #4
	ldr	r3, [r3]
	addw	r3, r3, #2756
	str	r3, [r7, #520]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3]
	str	r3, [r7, #516]
	ldr	r3, [r7, #516]
	ldr	r3, [r3, #12]
	str	r3, [r7, #512]
	ldr	r3, [r7, #512]
	lsls	r2, r3, #3
	ldr	r3, .L402+4
	ldr	r3, [r6, r3]
	add	r3, r3, r2
	str	r3, [r7, #620]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #40]
	lsrs	r2, r3, #1
	movw	r3, #9363
	movt	r3, 37449
	umull	r1, r3, r3, r2
	lsrs	r3, r3, #2
	str	r3, [r7, #508]
	b	.L317
.L400:
	ldr	r3, [r7, #620]
	ldr	r2, [r3]
	ldr	r3, .L402+8
	ldr	r3, [r6, r3]
	add	r3, r3, r2
	str	r3, [r7, #616]
	movs	r3, #0
	str	r3, [r7, #628]
	movs	r3, #0
	str	r3, [r7, #624]
	movs	r3, #0
	str	r3, [r7, #612]
	movs	r3, #0
	str	r3, [r7, #608]
	b	.L318
.L391:
	movs	r3, #0
	strb	r3, [r7, #587]
	ldr	r3, [r7, #616]
	adds	r2, r3, #1
	str	r2, [r7, #616]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #604]
	ldr	r3, [r7, #604]
	cmp	r3, #127
	bls	.L319
	ldr	r3, [r7, #604]
	cmp	r3, #223
	bhi	.L320
	movs	r3, #1
	str	r3, [r7, #580]
	ldr	r3, [r7, #604]
	and	r3, r3, #31
	str	r3, [r7, #604]
	b	.L321
.L320:
	ldr	r3, [r7, #604]
	cmp	r3, #239
	bhi	.L322
	movs	r3, #2
	str	r3, [r7, #580]
	ldr	r3, [r7, #604]
	and	r3, r3, #15
	str	r3, [r7, #604]
	b	.L321
.L322:
	movs	r3, #3
	str	r3, [r7, #580]
	ldr	r3, [r7, #604]
	and	r3, r3, #7
	str	r3, [r7, #604]
	b	.L323
.L321:
	b	.L323
.L324:
	ldr	r3, [r7, #604]
	lsls	r2, r3, #6
	ldr	r3, [r7, #616]
	adds	r1, r3, #1
	str	r1, [r7, #616]
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #63
	orrs	r3, r3, r2
	str	r3, [r7, #604]
	ldr	r3, [r7, #580]
	subs	r3, r3, #1
	str	r3, [r7, #580]
.L323:
	ldr	r3, [r7, #580]
	cmp	r3, #0
	bne	.L324
.L319:
	adds	r3, r7, #4
	ldr	r1, [r3]
	add	r2, r7, #12
	add	r3, r7, #8
	mov	r0, r1
	ldr	r1, [r7, #604]
	bl	af_get_char_index(PLT)
	add	r3, r7, #12
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L325
	b	.L318
.L325:
	add	r3, r7, #12
	ldr	r3, [r3]
	mov	r2, r7
	ldr	r0, [r2]
	mov	r1, r3
	movs	r2, #1
	bl	FT_Load_Glyph(PLT)
	str	r0, [r7, #504]
	mov	r3, r7
	ldr	r3, [r3]
	ldr	r3, [r3, #84]
	add	r2, r7, #16
	mov	r4, r2
	add	r5, r3, #108
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7, #504]
	cmp	r3, #0
	bne	.L327
	add	r3, r7, #16
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	cmp	r3, #2
	bgt	.L328
.L327:
	b	.L318
.L328:
	add	r3, r7, #16
	ldr	r3, [r3, #4]
	str	r3, [r7, #500]
	mov	r3, #-1
	str	r3, [r7, #596]
	movs	r3, #0
	str	r3, [r7, #600]
	movs	r3, #0
	str	r3, [r7, #592]
	movs	r3, #0
	str	r3, [r7, #588]
	movs	r3, #0
	str	r3, [r7, #572]
	mov	r3, #-1
	str	r3, [r7, #496]
	movs	r3, #0
	str	r3, [r7, #576]
	b	.L329
.L344:
	ldr	r3, [r7, #596]
	str	r3, [r7, #492]
	add	r3, r7, #16
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #576]
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r3, [r3]
	sxth	r3, r3
	str	r3, [r7, #496]
	ldr	r2, [r7, #496]
	ldr	r3, [r7, #572]
	cmp	r2, r3
	bgt	.L330
	b	.L331
.L330:
	ldr	r3, [r7, #620]
	ldrh	r3, [r3, #4]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L332
	ldr	r3, [r7, #572]
	str	r3, [r7, #568]
	b	.L333
.L337:
	ldr	r3, [r7, #596]
	cmp	r3, #0
	blt	.L334
	ldr	r3, [r7, #568]
	lsls	r3, r3, #3
	ldr	r2, [r7, #500]
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #600]
	cmp	r2, r3
	ble	.L335
.L334:
	ldr	r3, [r7, #568]
	str	r3, [r7, #596]
	ldr	r3, [r7, #568]
	lsls	r3, r3, #3
	ldr	r2, [r7, #500]
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	str	r3, [r7, #600]
	add	r3, r7, #8
	ldr	r2, [r3]
	ldr	r3, [r7, #600]
	add	r3, r3, r2
	ldr	r2, [r7, #612]
	cmp	r3, r2
	it	lt
	movlt	r3, r2
	str	r3, [r7, #612]
	b	.L336
.L335:
	ldr	r3, [r7, #568]
	lsls	r3, r3, #3
	ldr	r2, [r7, #500]
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	add	r3, r7, #8
	ldr	r3, [r3]
	add	r3, r3, r2
	ldr	r2, [r7, #608]
	cmp	r3, r2
	it	ge
	movge	r3, r2
	str	r3, [r7, #608]
.L336:
	ldr	r3, [r7, #568]
	adds	r3, r3, #1
	str	r3, [r7, #568]
.L333:
	ldr	r2, [r7, #568]
	ldr	r3, [r7, #496]
	cmp	r2, r3
	ble	.L337
	b	.L338
.L332:
	ldr	r3, [r7, #572]
	str	r3, [r7, #568]
	b	.L339
.L343:
	ldr	r3, [r7, #596]
	cmp	r3, #0
	blt	.L340
	ldr	r3, [r7, #568]
	lsls	r3, r3, #3
	ldr	r2, [r7, #500]
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #600]
	cmp	r2, r3
	bge	.L341
.L340:
	ldr	r3, [r7, #568]
	str	r3, [r7, #596]
	ldr	r3, [r7, #568]
	lsls	r3, r3, #3
	ldr	r2, [r7, #500]
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	str	r3, [r7, #600]
	add	r3, r7, #8
	ldr	r2, [r3]
	ldr	r3, [r7, #600]
	add	r3, r3, r2
	ldr	r2, [r7, #608]
	cmp	r3, r2
	it	ge
	movge	r3, r2
	str	r3, [r7, #608]
	b	.L342
.L341:
	ldr	r3, [r7, #568]
	lsls	r3, r3, #3
	ldr	r2, [r7, #500]
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	add	r3, r7, #8
	ldr	r3, [r3]
	add	r3, r3, r2
	ldr	r2, [r7, #612]
	cmp	r3, r2
	it	lt
	movlt	r3, r2
	str	r3, [r7, #612]
.L342:
	ldr	r3, [r7, #568]
	adds	r3, r3, #1
	str	r3, [r7, #568]
.L339:
	ldr	r2, [r7, #568]
	ldr	r3, [r7, #496]
	cmp	r2, r3
	ble	.L343
.L338:
	ldr	r2, [r7, #596]
	ldr	r3, [r7, #492]
	cmp	r2, r3
	beq	.L331
	ldr	r3, [r7, #572]
	str	r3, [r7, #592]
	ldr	r3, [r7, #496]
	str	r3, [r7, #588]
.L331:
	ldr	r3, [r7, #496]
	adds	r3, r3, #1
	str	r3, [r7, #572]
	ldr	r3, [r7, #576]
	adds	r3, r3, #1
	str	r3, [r7, #576]
.L329:
	add	r3, r7, #16
	ldrh	r3, [r3]
	sxth	r2, r3
	ldr	r3, [r7, #576]
	cmp	r2, r3
	bgt	.L344
	ldr	r3, [r7, #596]
	cmp	r3, #0
	blt	.L345
	ldr	r3, [r7, #596]
	lsls	r3, r3, #3
	ldr	r2, [r7, #500]
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #488]
	ldr	r3, [r7, #596]
	str	r3, [r7, #556]
	ldr	r3, [r7, #596]
	str	r3, [r7, #552]
	add	r3, r7, #16
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #596]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #3
	cmp	r3, #1
	bne	.L346
	ldr	r3, [r7, #596]
	str	r3, [r7, #548]
	ldr	r3, [r7, #596]
	str	r3, [r7, #544]
	b	.L347
.L346:
	mov	r3, #-1
	str	r3, [r7, #548]
	mov	r3, #-1
	str	r3, [r7, #544]
.L347:
	ldr	r3, [r7, #596]
	str	r3, [r7, #564]
	ldr	r3, [r7, #564]
	str	r3, [r7, #560]
.L353:
	ldr	r2, [r7, #564]
	ldr	r3, [r7, #592]
	cmp	r2, r3
	ble	.L348
	ldr	r3, [r7, #564]
	subs	r3, r3, #1
	str	r3, [r7, #564]
	b	.L349
.L348:
	ldr	r3, [r7, #588]
	str	r3, [r7, #564]
.L349:
	ldr	r3, [r7, #564]
	lsls	r3, r3, #3
	ldr	r2, [r7, #500]
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #600]
	subs	r3, r2, r3
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	str	r3, [r7, #484]
	ldr	r3, [r7, #484]
	cmp	r3, #5
	ble	.L350
	ldr	r3, [r7, #564]
	lsls	r3, r3, #3
	ldr	r2, [r7, #500]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #488]
	subs	r3, r2, r3
	eor	r1, r3, r3, asr #31
	sub	r1, r1, r3, asr #31
	ldr	r2, [r7, #484]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	cmp	r1, r3
	bgt	.L350
	b	.L351
.L350:
	ldr	r3, [r7, #564]
	str	r3, [r7, #556]
	add	r3, r7, #16
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #564]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #3
	cmp	r3, #1
	bne	.L352
	ldr	r3, [r7, #564]
	str	r3, [r7, #548]
	ldr	r3, [r7, #544]
	cmp	r3, #0
	bge	.L352
	ldr	r3, [r7, #564]
	str	r3, [r7, #544]
.L352:
	ldr	r2, [r7, #564]
	ldr	r3, [r7, #596]
	cmp	r2, r3
	bne	.L353
.L351:
	ldr	r2, [r7, #560]
	ldr	r3, [r7, #588]
	cmp	r2, r3
	bge	.L354
	ldr	r3, [r7, #560]
	adds	r3, r3, #1
	str	r3, [r7, #560]
	b	.L355
.L354:
	ldr	r3, [r7, #592]
	str	r3, [r7, #560]
.L355:
	ldr	r3, [r7, #560]
	lsls	r3, r3, #3
	ldr	r2, [r7, #500]
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #600]
	subs	r3, r2, r3
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	str	r3, [r7, #484]
	ldr	r3, [r7, #484]
	cmp	r3, #5
	ble	.L356
	ldr	r3, [r7, #560]
	lsls	r3, r3, #3
	ldr	r2, [r7, #500]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #488]
	subs	r3, r2, r3
	eor	r1, r3, r3, asr #31
	sub	r1, r1, r3, asr #31
	ldr	r2, [r7, #484]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	cmp	r1, r3
	bgt	.L356
	b	.L357
.L356:
	ldr	r3, [r7, #560]
	str	r3, [r7, #552]
	add	r3, r7, #16
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #560]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #3
	cmp	r3, #1
	bne	.L358
	ldr	r3, [r7, #560]
	str	r3, [r7, #544]
	ldr	r3, [r7, #548]
	cmp	r3, #0
	bge	.L358
	ldr	r3, [r7, #560]
	str	r3, [r7, #548]
.L358:
	ldr	r2, [r7, #560]
	ldr	r3, [r7, #596]
	cmp	r2, r3
	bne	.L351
.L357:
	ldr	r3, [r7, #620]
	ldrh	r3, [r3, #4]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L359
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r2, [r3, #40]
	movw	r3, #34079
	movt	r3, 20971
	umull	r1, r3, r3, r2
	lsrs	r3, r3, #3
	str	r3, [r7, #480]
	ldr	r3, [r7, #552]
	lsls	r3, r3, #3
	ldr	r2, [r7, #500]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #556]
	lsls	r3, r3, #3
	ldr	r1, [r7, #500]
	add	r3, r3, r1
	ldr	r3, [r3]
	subs	r3, r2, r3
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	str	r3, [r7, #484]
	ldr	r2, [r7, #484]
	ldr	r3, [r7, #480]
	cmp	r2, r3
	bge	.L359
	ldr	r2, [r7, #552]
	ldr	r3, [r7, #556]
	subs	r3, r2, r3
	adds	r2, r3, #2
	ldr	r1, [r7, #588]
	ldr	r3, [r7, #592]
	subs	r3, r1, r3
	cmp	r2, r3
	bgt	.L359
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #40]
	lsrs	r3, r3, #2
	str	r3, [r7, #476]
	movs	r3, #0
	str	r3, [r7, #528]
	movs	r3, #0
	str	r3, [r7, #524]
	ldr	r3, [r7, #596]
	str	r3, [r7, #564]
.L364:
	ldr	r2, [r7, #564]
	ldr	r3, [r7, #592]
	cmp	r2, r3
	ble	.L360
	ldr	r3, [r7, #564]
	subs	r3, r3, #1
	str	r3, [r7, #564]
	b	.L361
.L360:
	ldr	r3, [r7, #588]
	str	r3, [r7, #564]
.L361:
	ldr	r3, [r7, #564]
	lsls	r3, r3, #3
	ldr	r2, [r7, #500]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #488]
	cmp	r2, r3
	beq	.L362
	b	.L363
.L362:
	ldr	r2, [r7, #564]
	ldr	r3, [r7, #596]
	cmp	r2, r3
	bne	.L364
.L363:
	ldr	r2, [r7, #564]
	ldr	r3, [r7, #596]
	cmp	r2, r3
	bne	.L365
	b	.L318
.L365:
	ldr	r3, [r7, #564]
	lsls	r3, r3, #3
	ldr	r2, [r7, #500]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #596]
	lsls	r3, r3, #3
	ldr	r1, [r7, #500]
	add	r3, r3, r1
	ldr	r3, [r3]
	cmp	r2, r3
	ite	lt
	movlt	r3, #1
	movge	r3, #0
	uxtb	r3, r3
	strb	r3, [r7, #475]
	ldr	r3, [r7, #552]
	str	r3, [r7, #540]
	ldr	r3, [r7, #540]
	str	r3, [r7, #536]
	movs	r3, #0
	strb	r3, [r7, #535]
.L383:
	ldrb	r3, [r7, #535]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L366
	ldr	r3, [r7, #536]
	str	r3, [r7, #540]
	add	r3, r7, #16
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #540]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #3
	cmp	r3, #1
	bne	.L367
	ldr	r3, [r7, #540]
	str	r3, [r7, #528]
	ldr	r3, [r7, #540]
	str	r3, [r7, #524]
	b	.L368
.L367:
	mov	r3, #-1
	str	r3, [r7, #528]
	mov	r3, #-1
	str	r3, [r7, #524]
.L368:
	movs	r3, #1
	strb	r3, [r7, #535]
.L366:
	ldr	r2, [r7, #536]
	ldr	r3, [r7, #588]
	cmp	r2, r3
	bge	.L369
	ldr	r3, [r7, #536]
	adds	r3, r3, #1
	str	r3, [r7, #536]
	b	.L370
.L369:
	ldr	r3, [r7, #592]
	str	r3, [r7, #536]
.L370:
	ldr	r3, [r7, #540]
	lsls	r3, r3, #3
	ldr	r2, [r7, #500]
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #600]
	subs	r3, r2, r3
	eor	r2, r3, r3, asr #31
	sub	r2, r2, r3, asr #31
	ldr	r3, [r7, #476]
	cmp	r2, r3
	ble	.L371
	movs	r3, #0
	strb	r3, [r7, #535]
	b	.L372
.L371:
	ldr	r3, [r7, #536]
	lsls	r3, r3, #3
	ldr	r2, [r7, #500]
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #540]
	lsls	r3, r3, #3
	ldr	r1, [r7, #500]
	add	r3, r3, r1
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	str	r3, [r7, #484]
	ldr	r3, [r7, #484]
	cmp	r3, #5
	ble	.L373
	ldr	r3, [r7, #536]
	lsls	r3, r3, #3
	ldr	r2, [r7, #500]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #540]
	lsls	r3, r3, #3
	ldr	r1, [r7, #500]
	add	r3, r3, r1
	ldr	r3, [r3]
	subs	r3, r2, r3
	eor	r1, r3, r3, asr #31
	sub	r1, r1, r3, asr #31
	ldr	r2, [r7, #484]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	cmp	r1, r3
	bgt	.L373
	movs	r3, #0
	strb	r3, [r7, #535]
	b	.L372
.L373:
	add	r3, r7, #16
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #536]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #3
	cmp	r3, #1
	bne	.L374
	ldr	r3, [r7, #536]
	str	r3, [r7, #524]
	ldr	r3, [r7, #528]
	cmp	r3, #0
	bge	.L374
	ldr	r3, [r7, #536]
	str	r3, [r7, #528]
.L374:
	ldr	r3, [r7, #540]
	lsls	r3, r3, #3
	ldr	r2, [r7, #500]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #536]
	lsls	r3, r3, #3
	ldr	r1, [r7, #500]
	add	r3, r3, r1
	ldr	r3, [r3]
	cmp	r2, r3
	ite	lt
	movlt	r3, #1
	movge	r3, #0
	uxtb	r3, r3
	strb	r3, [r7, #474]
	ldr	r3, [r7, #536]
	lsls	r3, r3, #3
	ldr	r2, [r7, #500]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #540]
	lsls	r3, r3, #3
	ldr	r1, [r7, #500]
	add	r3, r3, r1
	ldr	r3, [r3]
	subs	r3, r2, r3
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	str	r3, [r7, #468]
	ldrb	r2, [r7, #474]	@ zero_extendqisi2
	ldrb	r3, [r7, #475]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L372
	ldr	r2, [r7, #468]
	ldr	r3, [r7, #480]
	cmp	r2, r3
	blt	.L372
.L382:
	ldr	r2, [r7, #536]
	ldr	r3, [r7, #588]
	cmp	r2, r3
	bge	.L375
	ldr	r3, [r7, #536]
	adds	r3, r3, #1
	str	r3, [r7, #536]
	b	.L376
.L375:
	ldr	r3, [r7, #592]
	str	r3, [r7, #536]
.L376:
	ldr	r3, [r7, #536]
	lsls	r3, r3, #3
	ldr	r2, [r7, #500]
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #540]
	lsls	r3, r3, #3
	ldr	r1, [r7, #500]
	add	r3, r3, r1
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	str	r3, [r7, #468]
	ldr	r3, [r7, #468]
	cmp	r3, #5
	ble	.L377
	ldr	r3, [r7, #560]
	lsls	r3, r3, #3
	ldr	r2, [r7, #500]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #540]
	lsls	r3, r3, #3
	ldr	r1, [r7, #500]
	add	r3, r3, r1
	ldr	r3, [r3]
	subs	r3, r2, r3
	eor	r1, r3, r3, asr #31
	sub	r1, r1, r3, asr #31
	ldr	r2, [r7, #484]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	cmp	r1, r3
	bgt	.L377
	ldr	r2, [r7, #536]
	ldr	r3, [r7, #592]
	cmp	r2, r3
	ble	.L378
	ldr	r3, [r7, #536]
	subs	r3, r3, #1
	str	r3, [r7, #536]
	b	.L380
.L378:
	ldr	r3, [r7, #588]
	str	r3, [r7, #536]
	b	.L380
.L377:
	ldr	r3, [r7, #536]
	str	r3, [r7, #524]
	add	r3, r7, #16
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #536]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #3
	cmp	r3, #1
	bne	.L381
	ldr	r3, [r7, #536]
	str	r3, [r7, #524]
	ldr	r3, [r7, #528]
	cmp	r3, #0
	bge	.L381
	ldr	r3, [r7, #536]
	str	r3, [r7, #528]
.L381:
	ldr	r2, [r7, #536]
	ldr	r3, [r7, #556]
	cmp	r2, r3
	bne	.L382
.L380:
	ldr	r3, [r7, #540]
	lsls	r3, r3, #3
	ldr	r2, [r7, #500]
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	str	r3, [r7, #600]
	ldr	r3, [r7, #540]
	str	r3, [r7, #556]
	ldr	r3, [r7, #536]
	str	r3, [r7, #552]
	ldr	r3, [r7, #528]
	str	r3, [r7, #548]
	ldr	r3, [r7, #524]
	str	r3, [r7, #544]
	b	.L359
.L372:
	ldr	r2, [r7, #536]
	ldr	r3, [r7, #556]
	cmp	r2, r3
	bne	.L383
.L359:
	add	r3, r7, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #600]
	add	r3, r3, r2
	str	r3, [r7, #600]
	ldr	r3, [r7, #548]
	cmp	r3, #0
	blt	.L384
	ldr	r3, [r7, #544]
	cmp	r3, #0
	blt	.L384
	ldr	r3, [r7, #544]
	lsls	r3, r3, #3
	ldr	r2, [r7, #500]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #548]
	lsls	r3, r3, #3
	ldr	r1, [r7, #500]
	add	r3, r3, r1
	ldr	r3, [r3]
	subs	r3, r2, r3
	eor	r2, r3, r3, asr #31
	sub	r2, r2, r3, asr #31
	ldr	r3, [r7, #508]
	cmp	r2, r3
	ble	.L384
	movs	r3, #0
	strb	r3, [r7, #587]
	b	.L385
.L384:
	add	r3, r7, #16
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #556]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #3
	cmp	r3, #1
	bne	.L386
	add	r3, r7, #16
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #552]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #3
	cmp	r3, #1
	beq	.L387
.L386:
	movs	r3, #1
	b	.L388
.L387:
	movs	r3, #0
.L388:
	strb	r3, [r7, #587]
.L385:
	ldrb	r3, [r7, #587]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L345
	ldr	r3, [r7, #620]
	ldrh	r3, [r3, #4]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L345
	b	.L318
.L345:
	ldrb	r3, [r7, #587]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L389
	ldr	r3, [r7, #624]
	adds	r2, r3, #1
	str	r2, [r7, #624]
	add	r2, r7, #36
	ldr	r1, [r7, #600]
	str	r1, [r2, r3, lsl #2]
	b	.L318
.L389:
	ldr	r3, [r7, #628]
	adds	r2, r3, #1
	str	r2, [r7, #628]
	add	r2, r7, #240
	ldr	r1, [r7, #600]
	str	r1, [r2, r3, lsl #2]
.L318:
	ldr	r3, [r7, #616]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L391
	ldr	r3, [r7, #628]
	cmp	r3, #0
	bne	.L392
	ldr	r3, [r7, #624]
	cmp	r3, #0
	bne	.L392
	b	.L393
.L392:
	add	r3, r7, #36
	ldr	r0, [r7, #624]
	mov	r1, r3
	bl	af_sort_pos(PLT)
	add	r3, r7, #240
	ldr	r0, [r7, #628]
	mov	r1, r3
	bl	af_sort_pos(PLT)
	ldr	r3, [r7, #520]
	ldr	r2, [r3, #216]
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #216
	ldr	r2, [r7, #520]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #464]
	ldr	r3, [r7, #464]
	str	r3, [r7, #460]
	ldr	r3, [r7, #464]
	adds	r3, r3, #12
	str	r3, [r7, #456]
	ldr	r3, [r7, #520]
	ldr	r3, [r3, #216]
	adds	r2, r3, #1
	ldr	r3, [r7, #520]
	str	r2, [r3, #216]
	ldr	r3, [r7, #628]
	cmp	r3, #0
	bne	.L394
	ldr	r3, [r7, #624]
	lsrs	r2, r3, #1
	add	r3, r7, #36
	ldr	r2, [r3, r2, lsl #2]
	ldr	r3, [r7, #456]
	str	r2, [r3]
	ldr	r3, [r7, #456]
	ldr	r2, [r3]
	ldr	r3, [r7, #460]
	str	r2, [r3]
	b	.L395
.L394:
	ldr	r3, [r7, #624]
	cmp	r3, #0
	bne	.L396
	ldr	r3, [r7, #628]
	lsrs	r2, r3, #1
	add	r3, r7, #240
	ldr	r2, [r3, r2, lsl #2]
	ldr	r3, [r7, #456]
	str	r2, [r3]
	ldr	r3, [r7, #456]
	ldr	r2, [r3]
	ldr	r3, [r7, #460]
	str	r2, [r3]
	b	.L395
.L396:
	ldr	r3, [r7, #628]
	lsrs	r2, r3, #1
	add	r3, r7, #240
	ldr	r2, [r3, r2, lsl #2]
	ldr	r3, [r7, #460]
	str	r2, [r3]
	ldr	r3, [r7, #624]
	lsrs	r2, r3, #1
	add	r3, r7, #36
	ldr	r2, [r3, r2, lsl #2]
	ldr	r3, [r7, #456]
	str	r2, [r3]
.L395:
	ldr	r3, [r7, #456]
	ldr	r2, [r3]
	ldr	r3, [r7, #460]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L397
	ldr	r3, [r7, #460]
	ldr	r3, [r3]
	str	r3, [r7, #452]
	ldr	r3, [r7, #456]
	ldr	r3, [r3]
	str	r3, [r7, #448]
	ldr	r2, [r7, #448]
	ldr	r3, [r7, #452]
	cmp	r2, r3
	ite	gt
	movgt	r3, #1
	movle	r3, #0
	uxtb	r3, r3
	strb	r3, [r7, #447]
	ldr	r3, [r7, #620]
	ldrh	r3, [r3, #4]
	and	r2, r3, #1
	ldrb	r3, [r7, #447]	@ zero_extendqisi2
	cmp	r2, r3
	beq	.L397
	ldr	r2, [r7, #448]
	ldr	r3, [r7, #452]
	add	r3, r3, r2
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	mov	r2, r3
	ldr	r3, [r7, #456]
	str	r2, [r3]
	ldr	r3, [r7, #456]
	ldr	r2, [r3]
	ldr	r3, [r7, #460]
	str	r2, [r3]
.L397:
	ldr	r3, [r7, #464]
	ldr	r2, [r7, #612]
	str	r2, [r3, #24]
	ldr	r3, [r7, #464]
	ldr	r2, [r7, #608]
	str	r2, [r3, #28]
	ldr	r3, [r7, #464]
	movs	r2, #0
	str	r2, [r3, #32]
	ldr	r3, [r7, #620]
	ldrh	r3, [r3, #4]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L398
	ldr	r3, [r7, #464]
	ldr	r3, [r3, #32]
	orr	r2, r3, #2
	ldr	r3, [r7, #464]
	str	r2, [r3, #32]
.L398:
	ldr	r3, [r7, #620]
	ldrh	r3, [r3, #4]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L399
	ldr	r3, [r7, #464]
	ldr	r3, [r3, #32]
	orr	r2, r3, #4
	ldr	r3, [r7, #464]
	str	r2, [r3, #32]
.L399:
	ldr	r3, [r7, #620]
	ldrh	r3, [r3, #4]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L393
	ldr	r3, [r7, #464]
	ldr	r3, [r3, #32]
	orr	r2, r3, #8
	ldr	r3, [r7, #464]
	str	r2, [r3, #32]
.L393:
	ldr	r3, [r7, #620]
	adds	r3, r3, #8
	str	r3, [r7, #620]
.L317:
	ldr	r3, [r7, #620]
	ldr	r3, [r3]
	cmp	r3, #1040
	bne	.L400
	nop
	add	r7, r7, #636
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L403:
	.align	2
.L402:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC4+4)
	.word	af_blue_stringsets(GOT)
	.word	af_blue_strings(GOT)
	.size	af_latin_metrics_init_blues, .-af_latin_metrics_init_blues
	.section	.text.af_latin_metrics_check_digits,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_latin_metrics_check_digits, %function
af_latin_metrics_check_digits:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	strb	r3, [r7, #27]
	movs	r3, #1
	strb	r3, [r7, #26]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #48
	str	r3, [r7, #28]
	b	.L405
.L413:
	ldr	r1, [r7, #4]
	add	r2, r7, #12
	add	r3, r7, #8
	mov	r0, r1
	ldr	r1, [r7, #28]
	bl	af_get_char_index(PLT)
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L406
	b	.L412
.L406:
	ldr	r2, [r7, #12]
	add	r3, r7, #16
	ldr	r0, [r7]
	mov	r1, r2
	movw	r2, #2051
	bl	FT_Get_Advance(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L408
	b	.L412
.L408:
	ldrb	r3, [r7, #27]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L409
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	beq	.L412
	movs	r3, #0
	strb	r3, [r7, #26]
	b	.L411
.L409:
	ldr	r3, [r7, #16]
	str	r3, [r7, #20]
	movs	r3, #1
	strb	r3, [r7, #27]
.L412:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L405:
	ldr	r3, [r7, #28]
	cmp	r3, #57
	bls	.L413
.L411:
	ldr	r3, [r7, #4]
	ldrb	r2, [r7, #26]
	strb	r2, [r3, #32]
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	af_latin_metrics_check_digits, .-af_latin_metrics_check_digits
	.section	.text.af_latin_metrics_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_latin_metrics_init, %function
af_latin_metrics_init:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3, #92]
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldrh	r3, [r3, #68]
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #40]
	ldr	r0, [r7]
	movw	r1, #26979
	movt	r1, 30062
	bl	FT_Select_Charmap(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L415
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	af_latin_metrics_init_widths(PLT)
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	af_latin_metrics_init_blues(PLT)
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	af_latin_metrics_check_digits(PLT)
.L415:
	ldr	r0, [r7]
	ldr	r1, [r7, #12]
	bl	FT_Set_Charmap(PLT)
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	af_latin_metrics_init, .-af_latin_metrics_init
	.section	.text.af_latin_metrics_scale_dim,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_latin_metrics_scale_dim, %function
af_latin_metrics_scale_dim:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #88
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L418
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	str	r3, [r7, #84]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	str	r3, [r7, #80]
	b	.L419
.L418:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	str	r3, [r7, #84]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #16]
	str	r3, [r7, #80]
.L419:
	ldr	r3, [r7, #4]
	movw	r2, #2712
	mul	r3, r2, r3
	adds	r3, r3, #40
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	ldr	r2, [r3, #2704]
	ldr	r3, [r7, #84]
	cmp	r2, r3
	bne	.L420
	ldr	r3, [r7, #56]
	ldr	r2, [r3, #2708]
	ldr	r3, [r7, #80]
	cmp	r2, r3
	bne	.L420
	b	.L417
.L420:
	ldr	r3, [r7, #56]
	ldr	r2, [r7, #84]
	str	r2, [r3, #2704]
	ldr	r3, [r7, #56]
	ldr	r2, [r7, #80]
	str	r2, [r3, #2708]
	ldr	r3, [r7, #12]
	addw	r3, r3, #2756
	str	r3, [r7, #52]
	movs	r3, #0
	str	r3, [r7, #72]
	movs	r3, #0
	str	r3, [r7, #76]
	b	.L422
.L425:
	ldr	r1, [r7, #52]
	ldr	r2, [r7, #76]
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #252
	ldr	r3, [r3]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L423
	ldr	r2, [r7, #76]
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #216
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #72]
	b	.L424
.L423:
	ldr	r3, [r7, #76]
	adds	r3, r3, #1
	str	r3, [r7, #76]
.L422:
	ldr	r3, [r7, #52]
	ldr	r2, [r3, #216]
	ldr	r3, [r7, #76]
	cmp	r2, r3
	bhi	.L425
.L424:
	ldr	r3, [r7, #72]
	cmp	r3, #0
	beq	.L426
	ldr	r3, [r7, #72]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	str	r0, [r7, #48]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #88]
	ldrh	r3, [r3, #12]
	str	r3, [r7, #44]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #36]
	ldr	r3, [r3, #16]
	str	r3, [r7, #40]
	movs	r3, #40
	str	r3, [r7, #68]
	ldr	r3, [r7, #40]
	cmp	r3, #0
	beq	.L427
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bhi	.L427
	ldr	r3, [r7, #44]
	cmp	r3, #5
	bls	.L427
	movs	r3, #52
	str	r3, [r7, #68]
.L427:
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #68]
	add	r3, r3, r2
	bic	r3, r3, #63
	str	r3, [r7, #36]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	beq	.L426
	ldr	r3, [r7, #4]
	cmp	r3, #1
	bne	.L426
	ldr	r0, [r7, #84]
	ldr	r1, [r7, #36]
	ldr	r2, [r7, #48]
	bl	FT_MulDiv(PLT)
	str	r0, [r7, #32]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #40]
	str	r3, [r7, #64]
	movs	r3, #0
	str	r3, [r7, #76]
	b	.L428
.L429:
	ldr	r1, [r7, #52]
	ldr	r2, [r7, #76]
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #244
	ldr	r3, [r3]
	ldr	r2, [r7, #64]
	cmp	r3, r2
	it	lt
	movlt	r3, r2
	str	r3, [r7, #64]
	ldr	r1, [r7, #52]
	ldr	r2, [r7, #76]
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #248
	ldr	r3, [r3]
	negs	r3, r3
	ldr	r2, [r7, #64]
	cmp	r3, r2
	it	lt
	movlt	r3, r2
	str	r3, [r7, #64]
	ldr	r3, [r7, #76]
	adds	r3, r3, #1
	str	r3, [r7, #76]
.L428:
	ldr	r3, [r7, #52]
	ldr	r2, [r3, #216]
	ldr	r3, [r7, #76]
	cmp	r2, r3
	bhi	.L429
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #84]
	subs	r3, r2, r3
	ldr	r0, [r7, #64]
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r3, r0
	cmp	r3, #0
	bge	.L430
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #84]
	subs	r3, r2, r3
	ldr	r0, [r7, #64]
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r3, r0
	negs	r3, r3
	b	.L431
.L430:
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #84]
	subs	r3, r2, r3
	ldr	r0, [r7, #64]
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r3, r0
.L431:
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	bic	r3, r3, #127
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L426
	ldr	r3, [r7, #32]
	str	r3, [r7, #84]
.L426:
	ldr	r3, [r7, #56]
	ldr	r2, [r7, #84]
	str	r2, [r3]
	ldr	r3, [r7, #56]
	ldr	r2, [r7, #80]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L432
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #84]
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #80]
	str	r2, [r3, #16]
	b	.L433
.L432:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #84]
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #80]
	str	r2, [r3, #20]
.L433:
	movs	r3, #0
	str	r3, [r7, #76]
	b	.L434
.L435:
	ldr	r2, [r7, #76]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #8
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r1, [r7, #84]
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #24]
	str	r2, [r3, #4]
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #24]
	str	r2, [r3, #8]
	ldr	r3, [r7, #76]
	adds	r3, r3, #1
	str	r3, [r7, #76]
.L434:
	ldr	r3, [r7, #56]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #76]
	cmp	r2, r3
	bhi	.L435
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #208]
	mov	r0, r3
	ldr	r1, [r7, #84]
	bl	FT_MulFix_arm(PLT)
	mov	r3, r0
	cmp	r3, #39
	ite	le
	movle	r3, #1
	movgt	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #56]
	strb	r2, [r3, #212]
	ldr	r3, [r7, #4]
	cmp	r3, #1
	bne	.L417
	movs	r3, #0
	str	r3, [r7, #76]
	b	.L436
.L443:
	ldr	r2, [r7, #76]
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #216
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r1, [r7, #84]
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #80]
	add	r2, r2, r3
	ldr	r3, [r7, #20]
	str	r2, [r3, #4]
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #20]
	str	r2, [r3, #8]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #12]
	mov	r0, r3
	ldr	r1, [r7, #84]
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #80]
	add	r2, r2, r3
	ldr	r3, [r7, #20]
	str	r2, [r3, #16]
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #20]
	str	r2, [r3, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #32]
	bic	r2, r3, #1
	ldr	r3, [r7, #20]
	str	r2, [r3, #32]
	ldr	r3, [r7, #20]
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #12]
	subs	r3, r2, r3
	mov	r0, r3
	ldr	r1, [r7, #84]
	bl	FT_MulFix_arm(PLT)
	str	r0, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #48
	bgt	.L437
	ldr	r3, [r7, #16]
	cmn	r3, #48
	blt	.L437
	ldr	r3, [r7, #16]
	str	r3, [r7, #60]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bge	.L438
	ldr	r3, [r7, #60]
	negs	r3, r3
	str	r3, [r7, #60]
.L438:
	ldr	r3, [r7, #60]
	cmp	r3, #31
	bgt	.L439
	movs	r3, #0
	str	r3, [r7, #60]
	b	.L440
.L439:
	ldr	r3, [r7, #60]
	cmp	r3, #47
	bgt	.L441
	movs	r3, #32
	str	r3, [r7, #60]
	b	.L440
.L441:
	movs	r3, #64
	str	r3, [r7, #60]
.L440:
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bge	.L442
	ldr	r3, [r7, #60]
	negs	r3, r3
	str	r3, [r7, #60]
.L442:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	adds	r3, r3, #32
	bic	r2, r3, #63
	ldr	r3, [r7, #20]
	str	r2, [r3, #8]
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #60]
	subs	r2, r2, r3
	ldr	r3, [r7, #20]
	str	r2, [r3, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #32]
	orr	r2, r3, #1
	ldr	r3, [r7, #20]
	str	r2, [r3, #32]
.L437:
	ldr	r3, [r7, #76]
	adds	r3, r3, #1
	str	r3, [r7, #76]
.L436:
	ldr	r3, [r7, #56]
	ldr	r2, [r3, #216]
	ldr	r3, [r7, #76]
	cmp	r2, r3
	bhi	.L443
.L417:
	adds	r7, r7, #88
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	af_latin_metrics_scale_dim, .-af_latin_metrics_scale_dim
	.section	.text.af_latin_metrics_scale,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_latin_metrics_scale, %function
af_latin_metrics_scale:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #4]
	str	r2, [r3, #28]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	movs	r2, #0
	bl	af_latin_metrics_scale_dim(PLT)
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	movs	r2, #1
	bl	af_latin_metrics_scale_dim(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	af_latin_metrics_scale, .-af_latin_metrics_scale
	.section	.text.af_latin_get_standard_widths,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_latin_get_standard_widths, %function
af_latin_get_standard_widths:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L446
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #2964]
	ldr	r3, [r7, #8]
	str	r2, [r3]
.L446:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L445
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #252]
	ldr	r3, [r7, #4]
	str	r2, [r3]
.L445:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	af_latin_get_standard_widths, .-af_latin_get_standard_widths
	.section	.text.af_latin_hints_compute_segments,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_latin_hints_compute_segments, %function
af_latin_hints_compute_segments:
	@ args = 0, pretend = 0, frame = 184
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #184
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #2988]
	str	r3, [r7, #132]
	ldr	r3, [r7]
	movw	r2, #1468
	mul	r3, r2, r3
	adds	r3, r3, #40
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #128]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #124]
	movs	r3, #0
	str	r3, [r7, #180]
	movs	r3, #0
	str	r3, [r7, #56]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	str	r3, [r7, #176]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	lsls	r3, r3, #2
	ldr	r2, [r7, #176]
	add	r3, r3, r2
	str	r3, [r7, #120]
	ldr	r3, [r7, #132]
	ldr	r3, [r3, #40]
	lsrs	r2, r3, #1
	movw	r3, #9363
	movt	r3, 37449
	umull	r1, r3, r3, r2
	lsrs	r3, r3, #2
	str	r3, [r7, #116]
	add	r3, r7, #8
	mov	r0, r3
	movs	r1, #0
	movs	r2, #48
	bl	memset(PLT)
	mov	r3, #32000
	str	r3, [r7, #40]
	movs	r3, #0
	strb	r3, [r7, #8]
	ldr	r3, [r7, #128]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	str	r3, [r7, #112]
	ldr	r3, [r7, #112]
	str	r3, [r7, #172]
	ldr	r3, [r7, #128]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L449
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	str	r3, [r7, #168]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #3
	ldr	r2, [r7, #168]
	add	r3, r3, r2
	str	r3, [r7, #108]
	b	.L450
.L451:
	ldr	r3, [r7, #168]
	ldrh	r3, [r3, #12]
	sxth	r2, r3
	ldr	r3, [r7, #168]
	str	r2, [r3, #24]
	ldr	r3, [r7, #168]
	ldrh	r3, [r3, #14]
	sxth	r2, r3
	ldr	r3, [r7, #168]
	str	r2, [r3, #28]
	ldr	r3, [r7, #168]
	adds	r3, r3, #40
	str	r3, [r7, #168]
.L450:
	ldr	r2, [r7, #168]
	ldr	r3, [r7, #108]
	cmp	r2, r3
	bcc	.L451
	b	.L452
.L449:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	str	r3, [r7, #164]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #3
	ldr	r2, [r7, #164]
	add	r3, r3, r2
	str	r3, [r7, #104]
	b	.L453
.L454:
	ldr	r3, [r7, #164]
	ldrh	r3, [r3, #14]
	sxth	r2, r3
	ldr	r3, [r7, #164]
	str	r2, [r3, #24]
	ldr	r3, [r7, #164]
	ldrh	r3, [r3, #12]
	sxth	r2, r3
	ldr	r3, [r7, #164]
	str	r2, [r3, #28]
	ldr	r3, [r7, #164]
	adds	r3, r3, #40
	str	r3, [r7, #164]
.L453:
	ldr	r2, [r7, #164]
	ldr	r3, [r7, #104]
	cmp	r2, r3
	bcc	.L454
.L452:
	b	.L455
.L479:
	ldr	r3, [r7, #176]
	ldr	r3, [r3]
	str	r3, [r7, #160]
	ldr	r3, [r7, #160]
	ldr	r3, [r3, #36]
	str	r3, [r7, #100]
	movs	r3, #0
	str	r3, [r7, #156]
	mov	r3, #32000
	str	r3, [r7, #152]
	mov	r3, #33536
	movt	r3, 65535
	str	r3, [r7, #148]
	mov	r3, #32000
	str	r3, [r7, #144]
	mov	r3, #33536
	movt	r3, 65535
	str	r3, [r7, #140]
	ldr	r2, [r7, #160]
	ldr	r3, [r7, #100]
	cmp	r2, r3
	bne	.L456
	b	.L457
.L456:
	ldr	r3, [r7, #100]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	sxtb	r3, r3
	eor	r2, r3, r3, asr #31
	sub	r2, r2, r3, asr #31
	ldr	r3, [r7, #112]
	cmp	r2, r3
	bne	.L458
	ldr	r3, [r7, #160]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	sxtb	r3, r3
	eor	r2, r3, r3, asr #31
	sub	r2, r2, r3, asr #31
	ldr	r3, [r7, #112]
	cmp	r2, r3
	bne	.L458
	ldr	r3, [r7, #160]
	str	r3, [r7, #100]
.L461:
	ldr	r3, [r7, #160]
	ldr	r3, [r3, #36]
	str	r3, [r7, #160]
	ldr	r3, [r7, #160]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	sxtb	r3, r3
	eor	r2, r3, r3, asr #31
	sub	r2, r2, r3, asr #31
	ldr	r3, [r7, #112]
	cmp	r2, r3
	beq	.L459
	ldr	r3, [r7, #160]
	ldr	r3, [r3, #32]
	str	r3, [r7, #160]
	b	.L458
.L459:
	ldr	r2, [r7, #160]
	ldr	r3, [r7, #100]
	cmp	r2, r3
	bne	.L460
	b	.L458
.L460:
	b	.L461
.L458:
	ldr	r3, [r7, #160]
	str	r3, [r7, #100]
	movs	r3, #0
	strb	r3, [r7, #139]
.L478:
	ldr	r3, [r7, #156]
	cmp	r3, #0
	beq	.L462
	ldr	r3, [r7, #160]
	ldr	r3, [r3, #24]
	str	r3, [r7, #96]
	ldr	r2, [r7, #96]
	ldr	r3, [r7, #152]
	cmp	r2, r3
	bge	.L463
	ldr	r3, [r7, #96]
	str	r3, [r7, #152]
.L463:
	ldr	r2, [r7, #96]
	ldr	r3, [r7, #148]
	cmp	r2, r3
	ble	.L464
	ldr	r3, [r7, #96]
	str	r3, [r7, #148]
.L464:
	ldr	r3, [r7, #160]
	ldrh	r3, [r3]
	and	r3, r3, #3
	cmp	r3, #0
	bne	.L465
	ldr	r3, [r7, #160]
	ldr	r3, [r3, #28]
	str	r3, [r7, #92]
	ldr	r2, [r7, #92]
	ldr	r3, [r7, #144]
	cmp	r2, r3
	bge	.L466
	ldr	r3, [r7, #92]
	str	r3, [r7, #144]
.L466:
	ldr	r2, [r7, #92]
	ldr	r3, [r7, #140]
	cmp	r2, r3
	ble	.L465
	ldr	r3, [r7, #92]
	str	r3, [r7, #140]
.L465:
	ldr	r3, [r7, #160]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	sxtb	r2, r3
	ldr	r3, [r7, #172]
	cmp	r2, r3
	bne	.L467
	ldr	r2, [r7, #160]
	ldr	r3, [r7, #100]
	cmp	r2, r3
	bne	.L462
.L467:
	ldr	r3, [r7, #56]
	ldr	r2, [r7, #160]
	str	r2, [r3, #44]
	ldr	r3, [r7, #56]
	ldr	r1, [r7, #152]
	ldr	r2, [r7, #148]
	add	r2, r2, r1
	asrs	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3, #2]	@ movhi
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #40]
	ldrh	r2, [r3]
	ldr	r3, [r7, #160]
	ldrh	r3, [r3]
	orrs	r3, r3, r2
	uxth	r3, r3
	and	r3, r3, #3
	cmp	r3, #0
	beq	.L468
	ldr	r2, [r7, #140]
	ldr	r3, [r7, #144]
	subs	r2, r2, r3
	ldr	r3, [r7, #116]
	cmp	r2, r3
	bge	.L468
	ldr	r3, [r7, #56]
	ldr	r2, [r7, #56]
	ldrb	r2, [r2]	@ zero_extendqisi2
	orr	r2, r2, #1
	uxtb	r2, r2
	strb	r2, [r3]
.L468:
	ldr	r3, [r7, #160]
	ldr	r3, [r3, #28]
	str	r3, [r7, #148]
	ldr	r3, [r7, #148]
	str	r3, [r7, #152]
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #40]
	ldr	r3, [r3, #28]
	str	r3, [r7, #92]
	ldr	r2, [r7, #92]
	ldr	r3, [r7, #152]
	cmp	r2, r3
	bge	.L469
	ldr	r3, [r7, #92]
	str	r3, [r7, #152]
.L469:
	ldr	r2, [r7, #92]
	ldr	r3, [r7, #148]
	cmp	r2, r3
	ble	.L470
	ldr	r3, [r7, #92]
	str	r3, [r7, #148]
.L470:
	ldr	r3, [r7, #56]
	ldr	r2, [r7, #152]
	uxth	r2, r2
	strh	r2, [r3, #4]	@ movhi
	ldr	r3, [r7, #56]
	ldr	r2, [r7, #148]
	uxth	r2, r2
	strh	r2, [r3, #6]	@ movhi
	ldr	r3, [r7, #56]
	ldr	r2, [r7, #56]
	ldrh	r2, [r2, #6]
	uxth	r1, r2
	ldr	r2, [r7, #56]
	ldrh	r2, [r2, #4]
	uxth	r2, r2
	subs	r2, r1, r2
	uxth	r2, r2
	uxth	r2, r2
	strh	r2, [r3, #8]	@ movhi
	movs	r3, #0
	str	r3, [r7, #156]
	movs	r3, #0
	str	r3, [r7, #56]
.L462:
	ldr	r2, [r7, #160]
	ldr	r3, [r7, #100]
	cmp	r2, r3
	bne	.L471
	ldrb	r3, [r7, #139]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L472
	b	.L457
.L472:
	movs	r3, #1
	strb	r3, [r7, #139]
.L471:
	ldr	r3, [r7, #156]
	cmp	r3, #0
	bne	.L473
	ldr	r3, [r7, #160]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	sxtb	r3, r3
	eor	r2, r3, r3, asr #31
	sub	r2, r2, r3, asr #31
	ldr	r3, [r7, #112]
	cmp	r2, r3
	bne	.L473
	ldr	r3, [r7, #160]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	sxtb	r3, r3
	str	r3, [r7, #172]
	add	r3, r7, #56
	ldr	r0, [r7, #128]
	ldr	r1, [r7, #124]
	mov	r2, r3
	bl	af_axis_hints_new_segment(PLT)
	str	r0, [r7, #180]
	ldr	r3, [r7, #180]
	cmp	r3, #0
	beq	.L474
	b	.L475
.L474:
	ldr	r3, [r7, #56]
	mov	r4, r3
	add	r5, r7, #8
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5, {r0, r1, r2, r3}
	stmia	r4, {r0, r1, r2, r3}
	ldr	r3, [r7, #56]
	ldr	r2, [r7, #172]
	uxtb	r2, r2
	strb	r2, [r3, #1]
	ldr	r3, [r7, #56]
	ldr	r2, [r7, #160]
	str	r2, [r3, #40]
	ldr	r3, [r7, #56]
	ldr	r2, [r7, #160]
	str	r2, [r3, #44]
	ldr	r3, [r7, #160]
	ldr	r3, [r3, #24]
	str	r3, [r7, #148]
	ldr	r3, [r7, #148]
	str	r3, [r7, #152]
	ldr	r3, [r7, #160]
	ldrh	r3, [r3]
	and	r3, r3, #3
	cmp	r3, #0
	beq	.L476
	mov	r3, #32000
	str	r3, [r7, #144]
	mov	r3, #33536
	movt	r3, 65535
	str	r3, [r7, #140]
	b	.L477
.L476:
	ldr	r3, [r7, #160]
	ldr	r3, [r3, #28]
	str	r3, [r7, #140]
	ldr	r3, [r7, #140]
	str	r3, [r7, #144]
.L477:
	movs	r3, #1
	str	r3, [r7, #156]
.L473:
	ldr	r3, [r7, #160]
	ldr	r3, [r3, #32]
	str	r3, [r7, #160]
	b	.L478
.L457:
	ldr	r3, [r7, #176]
	adds	r3, r3, #4
	str	r3, [r7, #176]
.L455:
	ldr	r2, [r7, #176]
	ldr	r3, [r7, #120]
	cmp	r2, r3
	bcc	.L479
	ldr	r3, [r7, #128]
	ldr	r3, [r3, #8]
	str	r3, [r7, #88]
	ldr	r3, [r7, #128]
	ldr	r3, [r3]
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #4
	ldr	r2, [r7, #88]
	add	r3, r3, r2
	str	r3, [r7, #84]
	ldr	r3, [r7, #88]
	str	r3, [r7, #56]
	b	.L480
.L486:
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #40]
	str	r3, [r7, #80]
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #44]
	str	r3, [r7, #76]
	ldr	r3, [r7, #80]
	ldr	r3, [r3, #28]
	str	r3, [r7, #72]
	ldr	r3, [r7, #76]
	ldr	r3, [r3, #28]
	str	r3, [r7, #68]
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #68]
	cmp	r2, r3
	bge	.L481
	ldr	r3, [r7, #80]
	ldr	r3, [r3, #36]
	str	r3, [r7, #64]
	ldr	r3, [r7, #64]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #72]
	cmp	r2, r3
	bge	.L482
	ldr	r3, [r7, #56]
	ldr	r2, [r7, #56]
	ldrh	r2, [r2, #8]
	uxth	r1, r2
	ldr	r2, [r7, #64]
	ldr	r2, [r2, #28]
	ldr	r0, [r7, #72]
	subs	r2, r0, r2
	asrs	r2, r2, #1
	uxth	r2, r2
	add	r2, r2, r1
	uxth	r2, r2
	uxth	r2, r2
	strh	r2, [r3, #8]	@ movhi
.L482:
	ldr	r3, [r7, #76]
	ldr	r3, [r3, #32]
	str	r3, [r7, #64]
	ldr	r3, [r7, #64]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #68]
	cmp	r2, r3
	ble	.L483
	ldr	r3, [r7, #56]
	ldr	r2, [r7, #56]
	ldrh	r2, [r2, #8]
	uxth	r1, r2
	ldr	r2, [r7, #64]
	ldr	r0, [r2, #28]
	ldr	r2, [r7, #68]
	subs	r2, r0, r2
	asrs	r2, r2, #1
	uxth	r2, r2
	add	r2, r2, r1
	uxth	r2, r2
	uxth	r2, r2
	strh	r2, [r3, #8]	@ movhi
	b	.L484
.L483:
	b	.L484
.L481:
	ldr	r3, [r7, #80]
	ldr	r3, [r3, #36]
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #72]
	cmp	r2, r3
	ble	.L485
	ldr	r3, [r7, #56]
	ldr	r2, [r7, #56]
	ldrh	r2, [r2, #8]
	uxth	r1, r2
	ldr	r2, [r7, #60]
	ldr	r0, [r2, #28]
	ldr	r2, [r7, #72]
	subs	r2, r0, r2
	asrs	r2, r2, #1
	uxth	r2, r2
	add	r2, r2, r1
	uxth	r2, r2
	uxth	r2, r2
	strh	r2, [r3, #8]	@ movhi
.L485:
	ldr	r3, [r7, #76]
	ldr	r3, [r3, #32]
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #68]
	cmp	r2, r3
	bge	.L484
	ldr	r3, [r7, #56]
	ldr	r2, [r7, #56]
	ldrh	r2, [r2, #8]
	uxth	r1, r2
	ldr	r2, [r7, #60]
	ldr	r2, [r2, #28]
	ldr	r0, [r7, #68]
	subs	r2, r0, r2
	asrs	r2, r2, #1
	uxth	r2, r2
	add	r2, r2, r1
	uxth	r2, r2
	uxth	r2, r2
	strh	r2, [r3, #8]	@ movhi
.L484:
	ldr	r3, [r7, #56]
	adds	r3, r3, #48
	str	r3, [r7, #56]
.L480:
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #84]
	cmp	r2, r3
	bcc	.L486
.L475:
	ldr	r3, [r7, #180]
	mov	r0, r3
	adds	r7, r7, #184
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.size	af_latin_hints_compute_segments, .-af_latin_hints_compute_segments
	.section	.text.af_latin_hints_link_segments,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_latin_hints_link_segments, %function
af_latin_hints_link_segments:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #88
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7]
	movw	r2, #1468
	mul	r3, r2, r3
	adds	r3, r3, #40
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #8]
	str	r3, [r7, #52]
	ldr	r3, [r7, #56]
	ldr	r3, [r3]
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #4
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L489
	ldr	r2, [r7, #8]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	subs	r3, r3, #12
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #80]
	b	.L490
.L489:
	movs	r3, #0
	str	r3, [r7, #80]
.L490:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #2988]
	ldr	r3, [r3, #40]
	lsls	r3, r3, #3
	addw	r2, r3, #2047
	cmp	r3, #0
	ite	lt
	movlt	r3, r2
	movge	r3, r3
	asrs	r3, r3, #11
	str	r3, [r7, #84]
	ldr	r3, [r7, #84]
	cmp	r3, #0
	bne	.L491
	movs	r3, #1
	str	r3, [r7, #84]
.L491:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #2988]
	ldr	r3, [r3, #40]
	movw	r2, #6000
	mul	r3, r2, r3
	addw	r2, r3, #2047
	cmp	r3, #0
	ite	lt
	movlt	r3, r2
	movge	r3, r3
	asrs	r3, r3, #11
	str	r3, [r7, #44]
	movw	r3, #3000
	str	r3, [r7, #40]
	ldr	r3, [r7, #52]
	str	r3, [r7, #76]
	b	.L492
.L506:
	ldr	r3, [r7, #76]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	sxtb	r2, r3
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #24]
	cmp	r2, r3
	beq	.L493
	b	.L494
.L493:
	ldr	r3, [r7, #52]
	str	r3, [r7, #72]
	b	.L495
.L505:
	ldr	r3, [r7, #76]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	str	r3, [r7, #36]
	ldr	r3, [r7, #72]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	str	r3, [r7, #32]
	ldr	r3, [r7, #76]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	sxtb	r2, r3
	ldr	r3, [r7, #72]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	sxtb	r3, r3
	add	r3, r3, r2
	cmp	r3, #0
	bne	.L496
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	ble	.L496
	ldr	r3, [r7, #76]
	ldrh	r3, [r3, #4]
	sxth	r3, r3
	str	r3, [r7, #68]
	ldr	r3, [r7, #76]
	ldrh	r3, [r3, #6]
	sxth	r3, r3
	str	r3, [r7, #64]
	ldr	r3, [r7, #72]
	ldrh	r3, [r3, #4]
	sxth	r2, r3
	ldr	r3, [r7, #68]
	cmp	r2, r3
	ble	.L497
	ldr	r3, [r7, #72]
	ldrh	r3, [r3, #4]
	sxth	r3, r3
	str	r3, [r7, #68]
.L497:
	ldr	r3, [r7, #72]
	ldrh	r3, [r3, #6]
	sxth	r2, r3
	ldr	r3, [r7, #64]
	cmp	r2, r3
	bge	.L498
	ldr	r3, [r7, #72]
	ldrh	r3, [r3, #6]
	sxth	r3, r3
	str	r3, [r7, #64]
.L498:
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #68]
	subs	r3, r2, r3
	str	r3, [r7, #28]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #84]
	cmp	r2, r3
	blt	.L496
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #36]
	subs	r3, r2, r3
	str	r3, [r7, #24]
	ldr	r3, [r7, #80]
	cmp	r3, #0
	beq	.L499
	ldr	r3, [r7, #24]
	lsls	r3, r3, #10
	mov	r0, r3
	ldr	r1, [r7, #80]
	bl	__aeabi_idiv(PLT)
	mov	r3, r0
	sub	r3, r3, #1024
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	movw	r3, #10000
	cmp	r2, r3
	ble	.L500
	mov	r3, #32000
	str	r3, [r7, #60]
	b	.L501
.L500:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	ble	.L502
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #20]
	mul	r3, r2, r3
	mov	r0, r3
	ldr	r1, [r7, #40]
	bl	__aeabi_idiv(PLT)
	mov	r3, r0
	str	r3, [r7, #60]
	b	.L501
.L502:
	movs	r3, #0
	str	r3, [r7, #60]
	b	.L503
.L501:
	b	.L503
.L499:
	ldr	r3, [r7, #24]
	str	r3, [r7, #60]
.L503:
	ldr	r0, [r7, #44]
	ldr	r1, [r7, #28]
	bl	__aeabi_idiv(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #60]
	add	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #76]
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	ble	.L504
	ldr	r3, [r7, #76]
	ldr	r2, [r7, #16]
	str	r2, [r3, #32]
	ldr	r3, [r7, #76]
	ldr	r2, [r7, #72]
	str	r2, [r3, #20]
.L504:
	ldr	r3, [r7, #72]
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	ble	.L496
	ldr	r3, [r7, #72]
	ldr	r2, [r7, #16]
	str	r2, [r3, #32]
	ldr	r3, [r7, #72]
	ldr	r2, [r7, #76]
	str	r2, [r3, #20]
.L496:
	ldr	r3, [r7, #72]
	adds	r3, r3, #48
	str	r3, [r7, #72]
.L495:
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #48]
	cmp	r2, r3
	bcc	.L505
.L494:
	ldr	r3, [r7, #76]
	adds	r3, r3, #48
	str	r3, [r7, #76]
.L492:
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #48]
	cmp	r2, r3
	bcc	.L506
	ldr	r3, [r7, #52]
	str	r3, [r7, #76]
	b	.L507
.L509:
	ldr	r3, [r7, #76]
	ldr	r3, [r3, #20]
	str	r3, [r7, #72]
	ldr	r3, [r7, #72]
	cmp	r3, #0
	beq	.L508
	ldr	r3, [r7, #72]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #76]
	cmp	r2, r3
	beq	.L508
	ldr	r3, [r7, #76]
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [r7, #72]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #76]
	str	r2, [r3, #24]
.L508:
	ldr	r3, [r7, #76]
	adds	r3, r3, #48
	str	r3, [r7, #76]
.L507:
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #48]
	cmp	r2, r3
	bcc	.L509
	adds	r7, r7, #88
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	af_latin_hints_link_segments, .-af_latin_hints_link_segments
	.section	.text.af_latin_hints_compute_edges,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_latin_hints_compute_edges, %function
af_latin_hints_compute_edges:
	@ args = 0, pretend = 0, frame = 112
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #124
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	movw	r2, #1468
	mul	r3, r2, r3
	adds	r3, r3, #40
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #52]
	movs	r3, #0
	str	r3, [r7, #108]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #48]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #2988]
	ldr	r3, [r7]
	movw	r1, #2712
	mul	r3, r1, r3
	adds	r3, r3, #40
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #44]
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #8]
	str	r3, [r7, #40]
	ldr	r3, [r7, #52]
	ldr	r3, [r3]
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #4
	ldr	r2, [r7, #40]
	add	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #52]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L511
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	b	.L512
.L511:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
.L512:
	str	r3, [r7, #32]
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L513
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	movs	r0, #64
	mov	r1, r3
	bl	FT_DivFix(PLT)
	str	r0, [r7, #96]
	b	.L514
.L513:
	movs	r3, #0
	str	r3, [r7, #96]
.L514:
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #204]
	mov	r0, r3
	ldr	r1, [r7, #32]
	bl	FT_MulFix_arm(PLT)
	str	r0, [r7, #100]
	ldr	r3, [r7, #100]
	cmp	r3, #16
	ble	.L515
	movs	r3, #16
	str	r3, [r7, #100]
.L515:
	ldr	r0, [r7, #100]
	ldr	r1, [r7, #32]
	bl	FT_DivFix(PLT)
	str	r0, [r7, #100]
	ldr	r3, [r7, #40]
	str	r3, [r7, #104]
	b	.L516
.L528:
	movs	r3, #0
	str	r3, [r7, #92]
	ldr	r3, [r7, #104]
	ldrh	r3, [r3, #8]
	sxth	r2, r3
	ldr	r3, [r7, #96]
	cmp	r2, r3
	bge	.L517
	b	.L518
.L517:
	ldr	r3, [r7, #104]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L519
	ldr	r3, [r7, #104]
	ldrh	r3, [r3, #8]
	sxth	r3, r3
	lsls	r1, r3, #1
	ldr	r2, [r7, #96]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	cmp	r1, r3
	bge	.L519
	b	.L518
.L519:
	movs	r3, #0
	str	r3, [r7, #88]
	b	.L520
.L524:
	ldr	r3, [r7, #52]
	ldr	r1, [r3, #20]
	ldr	r2, [r7, #88]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #4
	add	r3, r3, r1
	str	r3, [r7, #28]
	ldr	r3, [r7, #104]
	ldrh	r3, [r3, #2]
	sxth	r2, r3
	ldr	r3, [r7, #28]
	ldrh	r3, [r3]
	sxth	r3, r3
	subs	r3, r2, r3
	str	r3, [r7, #84]
	ldr	r3, [r7, #84]
	cmp	r3, #0
	bge	.L521
	ldr	r3, [r7, #84]
	negs	r3, r3
	str	r3, [r7, #84]
.L521:
	ldr	r2, [r7, #84]
	ldr	r3, [r7, #100]
	cmp	r2, r3
	bge	.L522
	ldr	r3, [r7, #28]
	ldrb	r2, [r3, #13]	@ zero_extendqisi2
	ldr	r3, [r7, #104]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	sxtb	r2, r2
	sxtb	r3, r3
	cmp	r2, r3
	bne	.L522
	ldr	r3, [r7, #28]
	str	r3, [r7, #92]
	b	.L523
.L522:
	ldr	r3, [r7, #88]
	adds	r3, r3, #1
	str	r3, [r7, #88]
.L520:
	ldr	r3, [r7, #52]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #88]
	cmp	r2, r3
	bgt	.L524
.L523:
	ldr	r3, [r7, #92]
	cmp	r3, #0
	bne	.L525
	ldr	r3, [r7, #104]
	ldrh	r3, [r3, #2]
	sxth	r2, r3
	ldr	r3, [r7, #104]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	sxtb	r3, r3
	add	r1, r7, #12
	str	r1, [sp]
	ldr	r0, [r7, #52]
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [r7, #48]
	bl	af_axis_hints_new_edge(PLT)
	str	r0, [r7, #108]
	ldr	r3, [r7, #108]
	cmp	r3, #0
	bne	.L527
	ldr	r3, [r7, #12]
	mov	r0, r3
	movs	r1, #0
	movs	r2, #48
	bl	memset(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #104]
	str	r2, [r3, #40]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #104]
	str	r2, [r3, #44]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #104]
	ldrb	r2, [r2, #1]	@ zero_extendqisi2
	strb	r2, [r3, #13]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #104]
	ldrh	r2, [r2, #2]
	strh	r2, [r3]	@ movhi
	ldr	r4, [r7, #12]
	ldr	r3, [r7, #104]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	mov	r0, r3
	ldr	r1, [r7, #32]
	bl	FT_MulFix_arm(PLT)
	mov	r3, r0
	str	r3, [r4, #4]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7, #104]
	ldr	r2, [r7, #104]
	str	r2, [r3, #16]
	b	.L518
.L525:
	ldr	r3, [r7, #92]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #104]
	str	r2, [r3, #16]
	ldr	r3, [r7, #92]
	ldr	r3, [r3, #44]
	ldr	r2, [r7, #104]
	str	r2, [r3, #16]
	ldr	r3, [r7, #92]
	ldr	r2, [r7, #104]
	str	r2, [r3, #44]
.L518:
	ldr	r3, [r7, #104]
	adds	r3, r3, #48
	str	r3, [r7, #104]
.L516:
	ldr	r2, [r7, #104]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L528
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #20]
	str	r3, [r7, #24]
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #12]
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #4
	ldr	r2, [r7, #24]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #24]
	str	r3, [r7, #80]
	b	.L529
.L532:
	ldr	r3, [r7, #80]
	ldr	r3, [r3, #40]
	str	r3, [r7, #104]
	ldr	r3, [r7, #104]
	cmp	r3, #0
	beq	.L530
.L531:
	ldr	r3, [r7, #104]
	ldr	r2, [r7, #80]
	str	r2, [r3, #12]
	ldr	r3, [r7, #104]
	ldr	r3, [r3, #16]
	str	r3, [r7, #104]
	ldr	r3, [r7, #80]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #104]
	cmp	r2, r3
	bne	.L531
.L530:
	ldr	r3, [r7, #80]
	adds	r3, r3, #48
	str	r3, [r7, #80]
.L529:
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcc	.L532
	ldr	r3, [r7, #24]
	str	r3, [r7, #80]
	b	.L533
.L551:
	movs	r3, #0
	str	r3, [r7, #76]
	movs	r3, #0
	str	r3, [r7, #72]
	ldr	r3, [r7, #80]
	ldr	r3, [r3, #40]
	str	r3, [r7, #104]
.L548:
	ldr	r3, [r7, #104]
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L534
	ldr	r3, [r7, #76]
	adds	r3, r3, #1
	str	r3, [r7, #76]
	b	.L535
.L534:
	ldr	r3, [r7, #72]
	adds	r3, r3, #1
	str	r3, [r7, #72]
.L535:
	ldr	r3, [r7, #104]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L536
	ldr	r3, [r7, #104]
	ldr	r3, [r3, #24]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L536
	ldr	r3, [r7, #104]
	ldr	r3, [r3, #24]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #80]
	cmp	r2, r3
	beq	.L536
	movs	r3, #1
	b	.L537
.L536:
	movs	r3, #0
.L537:
	strb	r3, [r7, #19]
	ldr	r3, [r7, #104]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L538
	ldr	r3, [r7, #104]
	ldr	r3, [r3, #20]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	bne	.L539
.L538:
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L540
.L539:
	ldr	r3, [r7, #80]
	ldr	r3, [r3, #24]
	str	r3, [r7, #68]
	ldr	r3, [r7, #104]
	ldr	r3, [r3, #20]
	str	r3, [r7, #64]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L541
	ldr	r3, [r7, #104]
	ldr	r3, [r3, #24]
	str	r3, [r7, #64]
	ldr	r3, [r7, #80]
	ldr	r3, [r3, #28]
	str	r3, [r7, #68]
.L541:
	ldr	r3, [r7, #68]
	cmp	r3, #0
	beq	.L542
	ldr	r3, [r7, #80]
	ldrh	r3, [r3]
	sxth	r2, r3
	ldr	r3, [r7, #68]
	ldrh	r3, [r3]
	sxth	r3, r3
	subs	r3, r2, r3
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	cmp	r3, #0
	bge	.L543
	ldr	r3, [r7, #60]
	negs	r3, r3
	str	r3, [r7, #60]
.L543:
	ldr	r3, [r7, #104]
	ldrh	r3, [r3, #2]
	sxth	r2, r3
	ldr	r3, [r7, #64]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	subs	r3, r2, r3
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	cmp	r3, #0
	bge	.L544
	ldr	r3, [r7, #56]
	negs	r3, r3
	str	r3, [r7, #56]
.L544:
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #60]
	cmp	r2, r3
	bge	.L545
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #12]
	str	r3, [r7, #68]
	b	.L546
.L545:
	b	.L546
.L542:
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #12]
	str	r3, [r7, #68]
.L546:
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L547
	ldr	r3, [r7, #80]
	ldr	r2, [r7, #68]
	str	r2, [r3, #28]
	ldr	r3, [r7, #68]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	orr	r3, r3, #2
	uxtb	r2, r3
	ldr	r3, [r7, #68]
	strb	r2, [r3, #12]
	b	.L540
.L547:
	ldr	r3, [r7, #80]
	ldr	r2, [r7, #68]
	str	r2, [r3, #24]
.L540:
	ldr	r3, [r7, #104]
	ldr	r3, [r3, #16]
	str	r3, [r7, #104]
	ldr	r3, [r7, #80]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #104]
	cmp	r2, r3
	bne	.L548
	ldr	r3, [r7, #80]
	movs	r2, #0
	strb	r2, [r3, #12]
	ldr	r3, [r7, #76]
	cmp	r3, #0
	ble	.L549
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #72]
	cmp	r2, r3
	blt	.L549
	ldr	r3, [r7, #80]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	orr	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [r7, #80]
	strb	r2, [r3, #12]
.L549:
	ldr	r3, [r7, #80]
	ldr	r3, [r3, #28]
	cmp	r3, #0
	beq	.L550
	ldr	r3, [r7, #80]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L550
	ldr	r3, [r7, #80]
	movs	r2, #0
	str	r2, [r3, #28]
.L550:
	ldr	r3, [r7, #80]
	adds	r3, r3, #48
	str	r3, [r7, #80]
.L533:
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcc	.L551
.L527:
	ldr	r3, [r7, #108]
	mov	r0, r3
	adds	r7, r7, #116
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	af_latin_hints_compute_edges, .-af_latin_hints_compute_edges
	.section	.text.af_latin_hints_detect_features,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_latin_hints_detect_features, %function
af_latin_hints_detect_features:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r0, [r7, #12]
	ldr	r1, [r7]
	bl	af_latin_hints_compute_segments(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L554
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	af_latin_hints_link_segments(PLT)
	ldr	r0, [r7, #12]
	ldr	r1, [r7]
	bl	af_latin_hints_compute_edges(PLT)
	str	r0, [r7, #20]
.L554:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	af_latin_hints_detect_features, .-af_latin_hints_detect_features
	.section	.text.af_latin_hints_compute_blue_edges,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_latin_hints_compute_blue_edges, %function
af_latin_hints_compute_blue_edges:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #56
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	add	r3, r3, #1512
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #20]
	str	r3, [r7, #52]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #12]
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #4
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7]
	addw	r3, r3, #2756
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	str	r3, [r7, #16]
	b	.L557
.L568:
	movs	r3, #0
	str	r3, [r7, #44]
	movs	r3, #0
	strb	r3, [r7, #43]
	ldr	r3, [r7]
	ldr	r2, [r3, #40]
	movw	r3, #52429
	movt	r3, 52428
	umull	r1, r3, r3, r2
	lsrs	r3, r3, #5
	mov	r0, r3
	ldr	r1, [r7, #16]
	bl	FT_MulFix_arm(PLT)
	str	r0, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #32
	ble	.L558
	movs	r3, #32
	str	r3, [r7, #36]
.L558:
	movs	r3, #0
	str	r3, [r7, #48]
	b	.L559
.L566:
	ldr	r2, [r7, #48]
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #216
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L560
	b	.L561
.L560:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	and	r3, r3, #2
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	strb	r3, [r7, #11]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	and	r3, r3, #4
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	strb	r3, [r7, #10]
	ldr	r3, [r7, #52]
	ldrb	r3, [r3, #13]	@ zero_extendqisi2
	sxtb	r2, r3
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #24]
	cmp	r2, r3
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	strb	r3, [r7, #9]
	ldrb	r2, [r7, #11]	@ zero_extendqisi2
	ldrb	r3, [r7, #9]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L562
	ldrb	r3, [r7, #10]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L561
.L562:
	ldr	r3, [r7, #52]
	ldrh	r3, [r3]
	sxth	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	subs	r3, r2, r3
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bge	.L563
	ldr	r3, [r7, #32]
	negs	r3, r3
	str	r3, [r7, #32]
.L563:
	ldr	r0, [r7, #32]
	ldr	r1, [r7, #16]
	bl	FT_MulFix_arm(PLT)
	str	r0, [r7, #32]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bge	.L564
	ldr	r3, [r7, #32]
	str	r3, [r7, #36]
	ldr	r3, [r7, #12]
	str	r3, [r7, #44]
	ldrb	r3, [r7, #10]
	strb	r3, [r7, #43]
.L564:
	ldr	r3, [r7, #52]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L561
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L561
	ldrb	r3, [r7, #10]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L561
	ldr	r3, [r7, #52]
	ldrh	r3, [r3]
	sxth	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	cmp	r2, r3
	ite	lt
	movlt	r3, #1
	movge	r3, #0
	uxtb	r3, r3
	strb	r3, [r7, #8]
	ldrb	r2, [r7, #11]	@ zero_extendqisi2
	ldrb	r3, [r7, #8]	@ zero_extendqisi2
	cmp	r2, r3
	beq	.L561
	ldr	r3, [r7, #52]
	ldrh	r3, [r3]
	sxth	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	subs	r3, r2, r3
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bge	.L565
	ldr	r3, [r7, #32]
	negs	r3, r3
	str	r3, [r7, #32]
.L565:
	ldr	r0, [r7, #32]
	ldr	r1, [r7, #16]
	bl	FT_MulFix_arm(PLT)
	str	r0, [r7, #32]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bge	.L561
	ldr	r3, [r7, #32]
	str	r3, [r7, #36]
	ldr	r3, [r7, #12]
	adds	r3, r3, #12
	str	r3, [r7, #44]
	ldrb	r3, [r7, #10]
	strb	r3, [r7, #43]
.L561:
	ldr	r3, [r7, #48]
	adds	r3, r3, #1
	str	r3, [r7, #48]
.L559:
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #216]
	ldr	r3, [r7, #48]
	cmp	r2, r3
	bhi	.L566
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L567
	ldr	r3, [r7, #52]
	ldr	r2, [r7, #44]
	str	r2, [r3, #20]
	ldrb	r3, [r7, #43]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L567
	ldr	r3, [r7, #52]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	orr	r3, r3, #8
	uxtb	r2, r3
	ldr	r3, [r7, #52]
	strb	r2, [r3, #12]
.L567:
	ldr	r3, [r7, #52]
	adds	r3, r3, #48
	str	r3, [r7, #52]
.L557:
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bcc	.L568
	adds	r7, r7, #56
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	af_latin_hints_compute_blue_edges, .-af_latin_hints_compute_blue_edges
	.section	.text.af_latin_hints_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_latin_hints_init, %function
af_latin_hints_init:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	str	r3, [r7, #12]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	af_glyph_hints_rescale(PLT)
	ldr	r3, [r7]
	ldr	r2, [r3, #44]
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7]
	ldr	r2, [r3, #48]
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7]
	ldr	r2, [r3, #2756]
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7]
	ldr	r2, [r3, #2760]
	ldr	r3, [r7, #4]
	str	r2, [r3, #16]
	ldr	r3, [r7]
	ldr	r3, [r3, #24]
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #2980]
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #8]
	cmp	r3, #2
	beq	.L570
	ldr	r3, [r7, #8]
	cmp	r3, #3
	bne	.L571
.L570:
	ldr	r3, [r7, #16]
	orr	r3, r3, #1
	str	r3, [r7, #16]
.L571:
	ldr	r3, [r7, #8]
	cmp	r3, #2
	beq	.L572
	ldr	r3, [r7, #8]
	cmp	r3, #4
	bne	.L573
.L572:
	ldr	r3, [r7, #16]
	orr	r3, r3, #2
	str	r3, [r7, #16]
.L573:
	ldr	r3, [r7, #8]
	cmp	r3, #1
	beq	.L574
	ldr	r3, [r7, #16]
	orr	r3, r3, #4
	str	r3, [r7, #16]
.L574:
	ldr	r3, [r7, #8]
	cmp	r3, #2
	bne	.L575
	ldr	r3, [r7, #16]
	orr	r3, r3, #8
	str	r3, [r7, #16]
.L575:
	ldr	r3, [r7, #8]
	cmp	r3, #1
	beq	.L576
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L577
.L576:
	ldr	r3, [r7, #20]
	orr	r3, r3, #1
	str	r3, [r7, #20]
.L577:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #20]
	str	r2, [r3, #2980]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #16]
	str	r2, [r3, #2984]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	af_latin_hints_init, .-af_latin_hints_init
	.section	.text.af_latin_snap_width,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_latin_snap_width, %function
af_latin_snap_width:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #44
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #98
	str	r3, [r7, #32]
	ldr	r3, [r7, #4]
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #36]
	b	.L580
.L583:
	ldr	r2, [r7, #36]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	str	r3, [r7, #20]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #20]
	subs	r3, r2, r3
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bge	.L581
	ldr	r3, [r7, #24]
	negs	r3, r3
	str	r3, [r7, #24]
.L581:
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bge	.L582
	ldr	r3, [r7, #24]
	str	r3, [r7, #32]
	ldr	r3, [r7, #20]
	str	r3, [r7, #28]
.L582:
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L580:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L583
	ldr	r3, [r7, #28]
	adds	r3, r3, #32
	bic	r3, r3, #63
	str	r3, [r7, #16]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	blt	.L584
	ldr	r3, [r7, #16]
	add	r2, r3, #48
	ldr	r3, [r7, #4]
	cmp	r2, r3
	ble	.L586
	ldr	r3, [r7, #28]
	str	r3, [r7, #4]
	b	.L586
.L584:
	ldr	r3, [r7, #16]
	sub	r2, r3, #48
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bge	.L586
	ldr	r3, [r7, #28]
	str	r3, [r7, #4]
.L586:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	af_latin_snap_width, .-af_latin_snap_width
	.section	.text.af_latin_compute_stem_width,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_latin_compute_stem_width, %function
af_latin_compute_stem_width:
	@ args = 4, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #2988]
	str	r3, [r7, #28]
	ldr	r3, [r7, #8]
	movw	r2, #2712
	mul	r3, r2, r3
	adds	r3, r3, #40
	ldr	r2, [r7, #28]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	str	r3, [r7, #44]
	movs	r3, #0
	str	r3, [r7, #40]
	ldr	r3, [r7, #8]
	cmp	r3, #1
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #2984]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L589
	ldr	r3, [r7, #24]
	ldrb	r3, [r3, #212]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L590
.L589:
	ldr	r3, [r7, #4]
	b	.L591
.L590:
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bge	.L592
	ldr	r3, [r7, #4]
	negs	r3, r3
	str	r3, [r7, #44]
	movs	r3, #1
	str	r3, [r7, #40]
.L592:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L593
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #2984]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L594
.L593:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L595
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #2984]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L595
.L594:
	ldr	r3, [r7, #56]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L596
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L596
	ldr	r3, [r7, #44]
	cmp	r3, #191
	ble	.L597
.L596:
	ldr	r3, [r7]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L598
	ldr	r3, [r7, #44]
	cmp	r3, #79
	bgt	.L600
	movs	r3, #64
	str	r3, [r7, #44]
	b	.L600
.L598:
	ldr	r3, [r7, #44]
	cmp	r3, #55
	bgt	.L600
	movs	r3, #56
	str	r3, [r7, #44]
.L600:
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L601
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #16]
	ldr	r2, [r7, #44]
	subs	r3, r2, r3
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bge	.L602
	ldr	r3, [r7, #36]
	negs	r3, r3
	str	r3, [r7, #36]
.L602:
	ldr	r3, [r7, #36]
	cmp	r3, #39
	bgt	.L603
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #16]
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #47
	bgt	.L604
	movs	r3, #48
	str	r3, [r7, #44]
	b	.L597
.L604:
	b	.L597
.L603:
	ldr	r3, [r7, #44]
	cmp	r3, #191
	bgt	.L605
	ldr	r3, [r7, #44]
	and	r3, r3, #63
	str	r3, [r7, #36]
	ldr	r3, [r7, #44]
	bic	r3, r3, #63
	str	r3, [r7, #44]
	ldr	r3, [r7, #36]
	cmp	r3, #9
	bgt	.L606
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	str	r3, [r7, #44]
	b	.L601
.L606:
	ldr	r3, [r7, #36]
	cmp	r3, #31
	bgt	.L608
	ldr	r3, [r7, #44]
	adds	r3, r3, #10
	str	r3, [r7, #44]
	b	.L601
.L608:
	ldr	r3, [r7, #36]
	cmp	r3, #53
	bgt	.L609
	ldr	r3, [r7, #44]
	adds	r3, r3, #54
	str	r3, [r7, #44]
	b	.L601
.L609:
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	str	r3, [r7, #44]
	b	.L597
.L605:
	ldr	r3, [r7, #44]
	adds	r3, r3, #32
	bic	r3, r3, #63
	str	r3, [r7, #44]
	b	.L597
.L601:
	b	.L597
.L595:
	ldr	r3, [r7, #44]
	str	r3, [r7, #16]
	ldr	r3, [r7, #24]
	add	r2, r3, #12
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #8]
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #44]
	bl	af_latin_snap_width(PLT)
	str	r0, [r7, #44]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L610
	ldr	r3, [r7, #44]
	cmp	r3, #63
	ble	.L611
	ldr	r3, [r7, #44]
	adds	r3, r3, #16
	bic	r3, r3, #63
	str	r3, [r7, #44]
	b	.L597
.L611:
	movs	r3, #64
	str	r3, [r7, #44]
	b	.L597
.L610:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #2984]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L613
	ldr	r3, [r7, #44]
	cmp	r3, #63
	bgt	.L614
	movs	r3, #64
	str	r3, [r7, #44]
	b	.L597
.L614:
	ldr	r3, [r7, #44]
	adds	r3, r3, #32
	bic	r3, r3, #63
	str	r3, [r7, #44]
	b	.L597
.L613:
	ldr	r3, [r7, #44]
	cmp	r3, #47
	bgt	.L616
	ldr	r3, [r7, #44]
	adds	r3, r3, #64
	asrs	r3, r3, #1
	str	r3, [r7, #44]
	b	.L597
.L616:
	ldr	r3, [r7, #44]
	cmp	r3, #127
	bgt	.L617
	ldr	r3, [r7, #44]
	adds	r3, r3, #22
	bic	r3, r3, #63
	str	r3, [r7, #44]
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #16]
	subs	r3, r2, r3
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bge	.L618
	ldr	r3, [r7, #32]
	negs	r3, r3
	str	r3, [r7, #32]
.L618:
	ldr	r3, [r7, #32]
	cmp	r3, #15
	ble	.L619
	ldr	r3, [r7, #16]
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #47
	bgt	.L619
	ldr	r3, [r7, #44]
	adds	r3, r3, #64
	asrs	r3, r3, #1
	str	r3, [r7, #44]
	b	.L597
.L619:
	b	.L597
.L617:
	ldr	r3, [r7, #44]
	adds	r3, r3, #32
	bic	r3, r3, #63
	str	r3, [r7, #44]
.L597:
	ldr	r3, [r7, #40]
	cmp	r3, #0
	beq	.L620
	ldr	r3, [r7, #44]
	negs	r3, r3
	str	r3, [r7, #44]
.L620:
	ldr	r3, [r7, #44]
.L591:
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	af_latin_compute_stem_width, .-af_latin_compute_stem_width
	.section	.text.af_latin_align_linked_edge,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_latin_align_linked_edge, %function
af_latin_align_linked_edge:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	ldr	r2, [r7]
	ldrb	r2, [r2, #12]	@ zero_extendqisi2
	str	r2, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #20]
	bl	af_latin_compute_stem_width(PLT)
	str	r0, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #16]
	add	r2, r2, r3
	ldr	r3, [r7]
	str	r2, [r3, #8]
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	af_latin_align_linked_edge, .-af_latin_align_linked_edge
	.section	.text.af_latin_align_serif_edge,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_latin_align_serif_edge, %function
af_latin_align_serif_edge:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	subs	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	af_latin_align_serif_edge, .-af_latin_align_serif_edge
	.section	.text.af_latin_hint_edges,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_latin_hint_edges, %function
af_latin_hint_edges:
	@ args = 0, pretend = 0, frame = 168
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #180
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	movw	r2, #1468
	mul	r3, r2, r3
	adds	r3, r3, #40
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #72]
	ldr	r3, [r7, #72]
	ldr	r3, [r3, #20]
	str	r3, [r7, #68]
	ldr	r3, [r7, #72]
	ldr	r3, [r3, #12]
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #4
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #64]
	movs	r3, #0
	str	r3, [r7, #160]
	movs	r3, #0
	str	r3, [r7, #156]
	ldr	r3, [r7]
	cmp	r3, #1
	bne	.L624
	ldr	r3, [r7, #68]
	str	r3, [r7, #164]
	b	.L625
.L634:
	ldr	r3, [r7, #164]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L626
	b	.L627
.L626:
	movs	r3, #0
	str	r3, [r7, #148]
	ldr	r3, [r7, #164]
	ldr	r3, [r3, #24]
	str	r3, [r7, #144]
	ldr	r3, [r7, #164]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L628
	ldr	r3, [r7, #144]
	cmp	r3, #0
	beq	.L628
	ldr	r3, [r7, #144]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L628
	ldr	r3, [r7, #164]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	and	r3, r3, #8
	strb	r3, [r7, #63]
	ldr	r3, [r7, #144]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	and	r3, r3, #8
	strb	r3, [r7, #62]
	ldrb	r3, [r7, #62]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L629
	ldr	r3, [r7, #144]
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [r7, #144]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	bic	r3, r3, #8
	uxtb	r2, r3
	ldr	r3, [r7, #144]
	strb	r2, [r3, #12]
	b	.L628
.L629:
	ldrb	r3, [r7, #63]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L628
	ldr	r3, [r7, #164]
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [r7, #164]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	bic	r3, r3, #8
	uxtb	r2, r3
	ldr	r3, [r7, #164]
	strb	r2, [r3, #12]
.L628:
	ldr	r3, [r7, #164]
	ldr	r3, [r3, #20]
	str	r3, [r7, #152]
	ldr	r3, [r7, #152]
	cmp	r3, #0
	beq	.L630
	ldr	r3, [r7, #164]
	str	r3, [r7, #148]
	b	.L631
.L630:
	ldr	r3, [r7, #144]
	cmp	r3, #0
	beq	.L631
	ldr	r3, [r7, #144]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L631
	ldr	r3, [r7, #144]
	ldr	r3, [r3, #20]
	str	r3, [r7, #152]
	ldr	r3, [r7, #144]
	str	r3, [r7, #148]
	ldr	r3, [r7, #164]
	str	r3, [r7, #144]
.L631:
	ldr	r3, [r7, #148]
	cmp	r3, #0
	bne	.L632
	b	.L627
.L632:
	ldr	r3, [r7, #152]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #148]
	str	r2, [r3, #8]
	ldr	r3, [r7, #148]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	orr	r3, r3, #4
	uxtb	r2, r3
	ldr	r3, [r7, #148]
	strb	r2, [r3, #12]
	ldr	r3, [r7, #144]
	cmp	r3, #0
	beq	.L633
	ldr	r3, [r7, #144]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	bne	.L633
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	ldr	r2, [r7, #148]
	ldr	r3, [r7, #144]
	bl	af_latin_align_linked_edge(PLT)
	ldr	r3, [r7, #144]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	orr	r3, r3, #4
	uxtb	r2, r3
	ldr	r3, [r7, #144]
	strb	r2, [r3, #12]
.L633:
	ldr	r3, [r7, #160]
	cmp	r3, #0
	bne	.L627
	ldr	r3, [r7, #164]
	str	r3, [r7, #160]
.L627:
	ldr	r3, [r7, #164]
	adds	r3, r3, #48
	str	r3, [r7, #164]
.L625:
	ldr	r2, [r7, #164]
	ldr	r3, [r7, #64]
	cmp	r2, r3
	bcc	.L634
.L624:
	ldr	r3, [r7, #68]
	str	r3, [r7, #164]
	b	.L635
.L662:
	ldr	r3, [r7, #164]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L636
	b	.L637
.L636:
	ldr	r3, [r7, #164]
	ldr	r3, [r3, #24]
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	cmp	r3, #0
	bne	.L638
	ldr	r3, [r7, #156]
	adds	r3, r3, #1
	str	r3, [r7, #156]
	b	.L637
.L638:
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L639
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #164]
	bl	af_latin_align_linked_edge(PLT)
	ldr	r3, [r7, #164]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	orr	r3, r3, #4
	uxtb	r2, r3
	ldr	r3, [r7, #164]
	strb	r2, [r3, #12]
	b	.L637
.L639:
	ldr	r3, [r7, #160]
	cmp	r3, #0
	bne	.L640
	ldr	r3, [r7, #56]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #164]
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	str	r3, [r7, #52]
	ldr	r3, [r7, #164]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	ldr	r2, [r7, #56]
	ldrb	r2, [r2, #12]	@ zero_extendqisi2
	str	r2, [sp]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	ldr	r2, [r7, #52]
	bl	af_latin_compute_stem_width(PLT)
	str	r0, [r7, #48]
	ldr	r3, [r7, #48]
	cmp	r3, #64
	bgt	.L641
	movs	r3, #32
	str	r3, [r7, #128]
	movs	r3, #32
	str	r3, [r7, #124]
	b	.L642
.L641:
	movs	r3, #38
	str	r3, [r7, #128]
	movs	r3, #26
	str	r3, [r7, #124]
.L642:
	ldr	r3, [r7, #48]
	cmp	r3, #95
	bgt	.L643
	ldr	r3, [r7, #164]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #52]
	asrs	r3, r3, #1
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	adds	r3, r3, #32
	bic	r3, r3, #63
	str	r3, [r7, #140]
	ldr	r2, [r7, #128]
	ldr	r3, [r7, #140]
	subs	r2, r2, r3
	ldr	r3, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #136]
	ldr	r3, [r7, #136]
	cmp	r3, #0
	bge	.L644
	ldr	r3, [r7, #136]
	negs	r3, r3
	str	r3, [r7, #136]
.L644:
	ldr	r2, [r7, #140]
	ldr	r3, [r7, #124]
	add	r3, r3, r2
	ldr	r2, [r7, #44]
	subs	r3, r2, r3
	str	r3, [r7, #132]
	ldr	r3, [r7, #132]
	cmp	r3, #0
	bge	.L645
	ldr	r3, [r7, #132]
	negs	r3, r3
	str	r3, [r7, #132]
.L645:
	ldr	r2, [r7, #136]
	ldr	r3, [r7, #132]
	cmp	r2, r3
	bge	.L646
	ldr	r2, [r7, #140]
	ldr	r3, [r7, #128]
	subs	r3, r2, r3
	str	r3, [r7, #140]
	b	.L647
.L646:
	ldr	r2, [r7, #140]
	ldr	r3, [r7, #124]
	add	r3, r3, r2
	str	r3, [r7, #140]
.L647:
	ldr	r3, [r7, #48]
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	ldr	r2, [r7, #140]
	subs	r2, r2, r3
	ldr	r3, [r7, #164]
	str	r2, [r3, #8]
	ldr	r3, [r7, #164]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #48]
	add	r2, r2, r3
	ldr	r3, [r7, #56]
	str	r2, [r3, #8]
	b	.L648
.L643:
	ldr	r3, [r7, #164]
	ldr	r3, [r3, #4]
	adds	r3, r3, #32
	bic	r2, r3, #63
	ldr	r3, [r7, #164]
	str	r2, [r3, #8]
.L648:
	ldr	r3, [r7, #164]
	str	r3, [r7, #160]
	ldr	r3, [r7, #164]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	orr	r3, r3, #4
	uxtb	r2, r3
	ldr	r3, [r7, #164]
	strb	r2, [r3, #12]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	ldr	r2, [r7, #164]
	ldr	r3, [r7, #56]
	bl	af_latin_align_linked_edge(PLT)
	b	.L637
.L640:
	ldr	r3, [r7, #160]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #164]
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #160]
	ldr	r3, [r3, #4]
	subs	r3, r1, r3
	add	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #56]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #164]
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	asrs	r2, r3, #1
	ldr	r3, [r7, #40]
	add	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #164]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	ldr	r2, [r7, #56]
	ldrb	r2, [r2, #12]	@ zero_extendqisi2
	str	r2, [sp]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	ldr	r2, [r7, #36]
	bl	af_latin_compute_stem_width(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #56]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L649
	ldr	r3, [r7, #56]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #28]
	subs	r2, r2, r3
	ldr	r3, [r7, #164]
	str	r2, [r3, #8]
	b	.L650
.L649:
	ldr	r3, [r7, #28]
	cmp	r3, #95
	bgt	.L651
	ldr	r3, [r7, #32]
	adds	r3, r3, #32
	bic	r3, r3, #63
	str	r3, [r7, #120]
	ldr	r3, [r7, #28]
	cmp	r3, #64
	bgt	.L652
	movs	r3, #32
	str	r3, [r7, #108]
	movs	r3, #32
	str	r3, [r7, #104]
	b	.L653
.L652:
	movs	r3, #38
	str	r3, [r7, #108]
	movs	r3, #26
	str	r3, [r7, #104]
.L653:
	ldr	r2, [r7, #108]
	ldr	r3, [r7, #120]
	subs	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	str	r3, [r7, #116]
	ldr	r3, [r7, #116]
	cmp	r3, #0
	bge	.L654
	ldr	r3, [r7, #116]
	negs	r3, r3
	str	r3, [r7, #116]
.L654:
	ldr	r2, [r7, #120]
	ldr	r3, [r7, #104]
	add	r3, r3, r2
	ldr	r2, [r7, #32]
	subs	r3, r2, r3
	str	r3, [r7, #112]
	ldr	r3, [r7, #112]
	cmp	r3, #0
	bge	.L655
	ldr	r3, [r7, #112]
	negs	r3, r3
	str	r3, [r7, #112]
.L655:
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #112]
	cmp	r2, r3
	bge	.L656
	ldr	r2, [r7, #120]
	ldr	r3, [r7, #108]
	subs	r3, r2, r3
	str	r3, [r7, #120]
	b	.L657
.L656:
	ldr	r2, [r7, #120]
	ldr	r3, [r7, #104]
	add	r3, r3, r2
	str	r3, [r7, #120]
.L657:
	ldr	r3, [r7, #28]
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	ldr	r2, [r7, #120]
	subs	r2, r2, r3
	ldr	r3, [r7, #164]
	str	r2, [r3, #8]
	ldr	r3, [r7, #28]
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	mov	r2, r3
	ldr	r3, [r7, #120]
	add	r2, r2, r3
	ldr	r3, [r7, #56]
	str	r2, [r3, #8]
	b	.L650
.L651:
	ldr	r3, [r7, #160]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #164]
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #160]
	ldr	r3, [r3, #4]
	subs	r3, r1, r3
	add	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #56]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #164]
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	asrs	r2, r3, #1
	ldr	r3, [r7, #40]
	add	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #164]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	ldr	r2, [r7, #56]
	ldrb	r2, [r2, #12]	@ zero_extendqisi2
	str	r2, [sp]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	ldr	r2, [r7, #36]
	bl	af_latin_compute_stem_width(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #40]
	adds	r3, r3, #32
	bic	r3, r3, #63
	str	r3, [r7, #120]
	ldr	r3, [r7, #28]
	asrs	r2, r3, #1
	ldr	r3, [r7, #120]
	add	r2, r2, r3
	ldr	r3, [r7, #32]
	subs	r3, r2, r3
	str	r3, [r7, #116]
	ldr	r3, [r7, #116]
	cmp	r3, #0
	bge	.L658
	ldr	r3, [r7, #116]
	negs	r3, r3
	str	r3, [r7, #116]
.L658:
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	adds	r3, r3, #32
	bic	r2, r3, #63
	ldr	r3, [r7, #28]
	subs	r3, r2, r3
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	asrs	r2, r3, #1
	ldr	r3, [r7, #24]
	add	r2, r2, r3
	ldr	r3, [r7, #32]
	subs	r3, r2, r3
	str	r3, [r7, #112]
	ldr	r3, [r7, #112]
	cmp	r3, #0
	bge	.L659
	ldr	r3, [r7, #112]
	negs	r3, r3
	str	r3, [r7, #112]
.L659:
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #112]
	cmp	r2, r3
	bge	.L660
	ldr	r3, [r7, #120]
	b	.L661
.L660:
	ldr	r3, [r7, #24]
.L661:
	ldr	r2, [r7, #164]
	str	r3, [r2, #8]
	ldr	r3, [r7, #164]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #28]
	add	r2, r2, r3
	ldr	r3, [r7, #56]
	str	r2, [r3, #8]
.L650:
	ldr	r3, [r7, #164]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	orr	r3, r3, #4
	uxtb	r2, r3
	ldr	r3, [r7, #164]
	strb	r2, [r3, #12]
	ldr	r3, [r7, #56]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	orr	r3, r3, #4
	uxtb	r2, r3
	ldr	r3, [r7, #56]
	strb	r2, [r3, #12]
	ldr	r2, [r7, #164]
	ldr	r3, [r7, #68]
	cmp	r2, r3
	bls	.L637
	ldr	r3, [r7, #164]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #164]
	subs	r3, r3, #48
	ldr	r3, [r3, #8]
	cmp	r2, r3
	bge	.L637
	ldr	r3, [r7, #164]
	subs	r3, r3, #48
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #164]
	str	r2, [r3, #8]
.L637:
	ldr	r3, [r7, #164]
	adds	r3, r3, #48
	str	r3, [r7, #164]
.L635:
	ldr	r2, [r7, #164]
	ldr	r3, [r7, #64]
	cmp	r2, r3
	bcc	.L662
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #68]
	subs	r3, r2, r3
	asrs	r2, r3, #4
	movw	r3, #43691
	movt	r3, 43690
	mul	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L663
	ldr	r3, [r7, #20]
	cmp	r3, #6
	beq	.L664
	ldr	r3, [r7, #20]
	cmp	r3, #12
	bne	.L663
.L664:
	ldr	r3, [r7, #20]
	cmp	r3, #6
	bne	.L665
	ldr	r3, [r7, #68]
	str	r3, [r7, #100]
	ldr	r3, [r7, #68]
	adds	r3, r3, #96
	str	r3, [r7, #96]
	ldr	r3, [r7, #68]
	adds	r3, r3, #192
	str	r3, [r7, #92]
	b	.L666
.L665:
	ldr	r3, [r7, #68]
	adds	r3, r3, #48
	str	r3, [r7, #100]
	ldr	r3, [r7, #68]
	adds	r3, r3, #240
	str	r3, [r7, #96]
	ldr	r3, [r7, #68]
	add	r3, r3, #432
	str	r3, [r7, #92]
.L666:
	ldr	r3, [r7, #96]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #100]
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #92]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #96]
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	str	r3, [r7, #12]
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #12]
	subs	r3, r2, r3
	str	r3, [r7, #88]
	ldr	r3, [r7, #88]
	cmp	r3, #0
	bge	.L667
	ldr	r3, [r7, #88]
	negs	r3, r3
	str	r3, [r7, #88]
.L667:
	ldr	r3, [r7, #88]
	cmp	r3, #7
	bgt	.L663
	ldr	r3, [r7, #92]
	ldr	r1, [r3, #8]
	ldr	r3, [r7, #100]
	ldr	r0, [r3, #8]
	ldr	r3, [r7, #96]
	ldr	r2, [r3, #8]
	mov	r3, r2
	lsls	r3, r3, #31
	subs	r3, r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r0
	add	r3, r3, r1
	str	r3, [r7, #8]
	ldr	r3, [r7, #92]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #8]
	subs	r2, r2, r3
	ldr	r3, [r7, #92]
	str	r2, [r3, #8]
	ldr	r3, [r7, #92]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L668
	ldr	r3, [r7, #92]
	ldr	r3, [r3, #24]
	ldr	r2, [r7, #92]
	ldr	r2, [r2, #24]
	ldr	r1, [r2, #8]
	ldr	r2, [r7, #8]
	subs	r2, r1, r2
	str	r2, [r3, #8]
.L668:
	ldr	r3, [r7, #20]
	cmp	r3, #12
	bne	.L669
	ldr	r3, [r7, #68]
	add	r3, r3, #384
	ldr	r2, [r7, #68]
	add	r2, r2, #384
	ldr	r1, [r2, #8]
	ldr	r2, [r7, #8]
	subs	r2, r1, r2
	str	r2, [r3, #8]
	ldr	r3, [r7, #68]
	add	r3, r3, #528
	ldr	r2, [r7, #68]
	add	r2, r2, #528
	ldr	r1, [r2, #8]
	ldr	r2, [r7, #8]
	subs	r2, r1, r2
	str	r2, [r3, #8]
.L669:
	ldr	r3, [r7, #92]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	orr	r3, r3, #4
	uxtb	r2, r3
	ldr	r3, [r7, #92]
	strb	r2, [r3, #12]
	ldr	r3, [r7, #92]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L663
	ldr	r3, [r7, #92]
	ldr	r3, [r3, #24]
	ldr	r2, [r7, #92]
	ldr	r2, [r2, #24]
	ldrb	r2, [r2, #12]	@ zero_extendqisi2
	orr	r2, r2, #4
	uxtb	r2, r2
	strb	r2, [r3, #12]
.L663:
	ldr	r3, [r7, #156]
	cmp	r3, #0
	bne	.L670
	ldr	r3, [r7, #160]
	cmp	r3, #0
	bne	.L623
.L670:
	ldr	r3, [r7, #68]
	str	r3, [r7, #164]
	b	.L672
.L691:
	ldr	r3, [r7, #164]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L673
	b	.L674
.L673:
	mov	r3, #1000
	str	r3, [r7, #84]
	ldr	r3, [r7, #164]
	ldr	r3, [r3, #28]
	cmp	r3, #0
	beq	.L675
	ldr	r3, [r7, #164]
	ldr	r3, [r3, #28]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #164]
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	str	r3, [r7, #84]
	ldr	r3, [r7, #84]
	cmp	r3, #0
	bge	.L675
	ldr	r3, [r7, #84]
	negs	r3, r3
	str	r3, [r7, #84]
.L675:
	ldr	r3, [r7, #84]
	cmp	r3, #79
	bgt	.L676
	ldr	r3, [r7, #164]
	ldr	r3, [r3, #28]
	ldr	r0, [r7, #4]
	mov	r1, r3
	ldr	r2, [r7, #164]
	bl	af_latin_align_serif_edge(PLT)
	b	.L677
.L676:
	ldr	r3, [r7, #160]
	cmp	r3, #0
	bne	.L678
	ldr	r3, [r7, #164]
	ldr	r3, [r3, #4]
	adds	r3, r3, #32
	bic	r2, r3, #63
	ldr	r3, [r7, #164]
	str	r2, [r3, #8]
	ldr	r3, [r7, #164]
	str	r3, [r7, #160]
	b	.L677
.L678:
	ldr	r3, [r7, #164]
	subs	r3, r3, #48
	str	r3, [r7, #80]
	b	.L679
.L682:
	ldr	r3, [r7, #80]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L680
	b	.L681
.L680:
	ldr	r3, [r7, #80]
	subs	r3, r3, #48
	str	r3, [r7, #80]
.L679:
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #68]
	cmp	r2, r3
	bcs	.L682
.L681:
	ldr	r3, [r7, #164]
	adds	r3, r3, #48
	str	r3, [r7, #76]
	b	.L683
.L686:
	ldr	r3, [r7, #76]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L684
	b	.L685
.L684:
	ldr	r3, [r7, #76]
	adds	r3, r3, #48
	str	r3, [r7, #76]
.L683:
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #64]
	cmp	r2, r3
	bcc	.L686
.L685:
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #68]
	cmp	r2, r3
	bcc	.L687
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #164]
	cmp	r2, r3
	bcs	.L687
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #64]
	cmp	r2, r3
	bcs	.L687
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #164]
	cmp	r2, r3
	bls	.L687
	ldr	r3, [r7, #76]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #80]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bne	.L688
	ldr	r3, [r7, #80]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #164]
	str	r2, [r3, #8]
	b	.L677
.L688:
	ldr	r3, [r7, #80]
	ldr	r4, [r3, #8]
	ldr	r3, [r7, #164]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #80]
	ldr	r3, [r3, #4]
	subs	r1, r2, r3
	ldr	r3, [r7, #76]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #80]
	ldr	r3, [r3, #8]
	subs	r2, r2, r3
	ldr	r3, [r7, #76]
	ldr	r0, [r3, #4]
	ldr	r3, [r7, #80]
	ldr	r3, [r3, #4]
	subs	r3, r0, r3
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	FT_MulDiv(PLT)
	mov	r3, r0
	adds	r2, r4, r3
	ldr	r3, [r7, #164]
	str	r2, [r3, #8]
	b	.L677
.L687:
	ldr	r3, [r7, #160]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #164]
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #160]
	ldr	r3, [r3, #4]
	subs	r3, r1, r3
	adds	r3, r3, #16
	bic	r3, r3, #31
	add	r2, r2, r3
	ldr	r3, [r7, #164]
	str	r2, [r3, #8]
.L677:
	ldr	r3, [r7, #164]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	orr	r3, r3, #4
	uxtb	r2, r3
	ldr	r3, [r7, #164]
	strb	r2, [r3, #12]
	ldr	r2, [r7, #164]
	ldr	r3, [r7, #68]
	cmp	r2, r3
	bls	.L690
	ldr	r3, [r7, #164]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #164]
	subs	r3, r3, #48
	ldr	r3, [r3, #8]
	cmp	r2, r3
	bge	.L690
	ldr	r3, [r7, #164]
	subs	r3, r3, #48
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #164]
	str	r2, [r3, #8]
.L690:
	ldr	r3, [r7, #164]
	add	r2, r3, #48
	ldr	r3, [r7, #64]
	cmp	r2, r3
	bcs	.L674
	ldr	r3, [r7, #164]
	adds	r3, r3, #48
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L674
	ldr	r3, [r7, #164]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #164]
	adds	r3, r3, #48
	ldr	r3, [r3, #8]
	cmp	r2, r3
	ble	.L674
	ldr	r3, [r7, #164]
	adds	r3, r3, #48
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #164]
	str	r2, [r3, #8]
.L674:
	ldr	r3, [r7, #164]
	adds	r3, r3, #48
	str	r3, [r7, #164]
.L672:
	ldr	r2, [r7, #164]
	ldr	r3, [r7, #64]
	cmp	r2, r3
	bcc	.L691
.L623:
	adds	r7, r7, #172
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	af_latin_hint_edges, .-af_latin_hint_edges
	.section	.text.af_latin_hints_apply,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_latin_hints_apply, %function
af_latin_hints_apply:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #4]
	bl	af_glyph_hints_reload(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L693
	b	.L694
.L693:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #2980]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L695
	ldr	r3, [r7]
	adds	r3, r3, #44
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #20]
	adds	r3, r3, #12
	ldr	r0, [r7, #8]
	mov	r1, r2
	mov	r2, r3
	movs	r3, #0
	bl	af_latin_hints_detect_features(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L695
	b	.L694
.L695:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #2980]
	and	r3, r3, #2
	cmp	r3, #0
	bne	.L696
	ldr	r3, [r7]
	addw	r3, r3, #2756
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #20]
	adds	r3, r3, #12
	ldr	r0, [r7, #8]
	mov	r1, r2
	mov	r2, r3
	movs	r3, #1
	bl	af_latin_hints_detect_features(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L697
	b	.L694
.L697:
	ldr	r3, [r7]
	ldr	r3, [r3, #36]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r3, [r3]
	and	r3, r3, #16384
	cmp	r3, #0
	bne	.L696
	ldr	r0, [r7, #8]
	ldr	r1, [r7]
	bl	af_latin_hints_compute_blue_edges(PLT)
.L696:
	movs	r3, #0
	str	r3, [r7, #24]
	b	.L698
.L702:
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L699
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #2980]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L700
.L699:
	ldr	r3, [r7, #24]
	cmp	r3, #1
	bne	.L701
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #2980]
	and	r3, r3, #2
	cmp	r3, #0
	bne	.L701
.L700:
	ldr	r3, [r7, #24]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	af_latin_hint_edges(PLT)
	ldr	r3, [r7, #24]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	af_glyph_hints_align_edge_points(PLT)
	ldr	r3, [r7, #24]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	af_glyph_hints_align_strong_points(PLT)
	ldr	r3, [r7, #24]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	af_glyph_hints_align_weak_points(PLT)
.L701:
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
.L698:
	ldr	r3, [r7, #24]
	cmp	r3, #1
	ble	.L702
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #4]
	bl	af_glyph_hints_save(PLT)
.L694:
	ldr	r3, [r7, #28]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	af_latin_hints_apply, .-af_latin_hints_apply
	.global	af_latin_writing_system_class
	.section	.data.rel.ro.local.af_latin_writing_system_class,"aw",%progbits
	.align	2
	.type	af_latin_writing_system_class, %object
	.size	af_latin_writing_system_class, 32
af_latin_writing_system_class:
	.word	1
	.word	5468
	.word	af_latin_metrics_init
	.word	af_latin_metrics_scale
	.word	0
	.word	af_latin_get_standard_widths
	.word	af_latin_hints_init
	.word	af_latin_hints_apply
	.section	.text.af_cjk_metrics_init_widths,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_cjk_metrics_init_widths, %function
af_cjk_metrics_init_widths:
	@ args = 0, pretend = 0, frame = 11312
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #11264
	sub	sp, sp, #52
	add	r7, sp, #0
	add	r3, r7, #48
	subs	r3, r3, #44
	str	r0, [r3]
	add	r3, r7, #48
	subs	r3, r3, #48
	str	r1, [r3]
	ldr	r4, .L721
.LPIC5:
	add	r4, pc
	add	r3, r7, #48
	subs	r3, r3, #48
	ldr	r3, [r3]
	ldr	r2, [r3, #100]
	add	r3, r7, #4384
	add	r3, r3, #16
	subs	r3, r3, #16
	mov	r0, r3
	mov	r1, r2
	bl	af_glyph_hints_init(PLT)
	add	r3, r7, #48
	subs	r3, r3, #44
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [r3, #52]
	add	r3, r7, #48
	subs	r3, r3, #44
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [r3, #2212]
	add	r3, r7, #48
	subs	r3, r3, #40
	adds	r3, r3, #4
	add	r0, r7, #11264
	add	r0, r0, #32
	str	r3, [r0]
	add	r3, r7, #48
	subs	r3, r3, #44
	ldr	r3, [r3]
	ldr	r3, [r3]
	add	r1, r7, #11264
	add	r1, r1, #28
	str	r3, [r1]
	add	r2, r7, #11264
	add	r2, r2, #28
	ldr	r3, [r2]
	ldr	r2, [r3, #8]
	ldr	r3, .L721+4
	ldr	r3, [r4, r3]
	ldr	r3, [r3, r2, lsl #2]
	add	ip, r7, #11264
	add	ip, ip, #24
	str	r3, [ip]
	add	r0, r7, #11264
	add	r0, r0, #24
	ldr	r3, [r0]
	ldr	r3, [r3, #12]
	add	r1, r7, #11264
	add	r1, r1, #20
	str	r3, [r1]
	add	r3, r7, #48
	subs	r3, r3, #44
	ldr	r1, [r3]
	add	r2, r7, #4384
	add	r2, r2, #16
	subs	r2, r2, #20
	add	r3, r7, #4384
	add	r3, r3, #16
	subs	r3, r3, #24
	mov	r0, r1
	add	ip, r7, #11264
	add	ip, ip, #20
	ldr	r1, [ip]
	bl	af_get_char_index(PLT)
	add	r3, r7, #4384
	add	r3, r3, #16
	subs	r3, r3, #20
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L705
	add	r0, r7, #11264
	add	r0, r0, #24
	ldr	r3, [r0]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L706
	add	r1, r7, #11264
	add	r1, r1, #24
	ldr	r3, [r1]
	ldr	r3, [r3, #16]
	add	r2, r7, #11264
	add	r2, r2, #20
	str	r3, [r2]
	add	r3, r7, #48
	subs	r3, r3, #44
	ldr	r1, [r3]
	add	r2, r7, #4384
	add	r2, r2, #16
	subs	r2, r2, #20
	add	r3, r7, #4384
	add	r3, r3, #16
	subs	r3, r3, #24
	mov	r0, r1
	add	ip, r7, #11264
	add	ip, ip, #20
	ldr	r1, [ip]
	bl	af_get_char_index(PLT)
	add	r3, r7, #4384
	add	r3, r3, #16
	subs	r3, r3, #20
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L705
	add	r0, r7, #11264
	add	r0, r0, #24
	ldr	r3, [r0]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L707
	add	r1, r7, #11264
	add	r1, r1, #24
	ldr	r3, [r1]
	ldr	r3, [r3, #20]
	add	r2, r7, #11264
	add	r2, r2, #20
	str	r3, [r2]
	add	r3, r7, #48
	subs	r3, r3, #44
	ldr	r1, [r3]
	add	r2, r7, #4384
	add	r2, r2, #16
	subs	r2, r2, #20
	add	r3, r7, #4384
	add	r3, r3, #16
	subs	r3, r3, #24
	mov	r0, r1
	add	ip, r7, #11264
	add	ip, ip, #20
	ldr	r1, [ip]
	bl	af_get_char_index(PLT)
	add	r3, r7, #4384
	add	r3, r3, #16
	subs	r3, r3, #20
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L705
	b	.L708
.L707:
	b	.L708
.L706:
	b	.L708
.L705:
	add	r3, r7, #4384
	add	r3, r3, #16
	subs	r3, r3, #20
	ldr	r2, [r3]
	add	r3, r7, #48
	subs	r3, r3, #48
	ldr	r0, [r3]
	mov	r1, r2
	movs	r2, #1
	bl	FT_Load_Glyph(PLT)
	add	r1, r7, #11264
	add	r1, r1, #16
	str	r0, [r1]
	add	r2, r7, #11264
	add	r2, r2, #16
	ldr	r3, [r2]
	cmp	r3, #0
	bne	.L708
	add	r3, r7, #48
	subs	r3, r3, #48
	ldr	r3, [r3]
	ldr	r3, [r3, #84]
	ldrh	r3, [r3, #110]
	sxth	r3, r3
	cmp	r3, #0
	ble	.L708
	add	r3, r7, #48
	subs	r3, r3, #40
	mov	r0, r3
	movs	r1, #0
	movw	r2, #4364
	bl	memset(PLT)
	add	r3, r7, #48
	subs	r3, r3, #44
	ldr	r3, [r3]
	ldr	r2, [r3, #40]
	add	r3, r7, #48
	subs	r3, r3, #40
	str	r2, [r3, #40]
	add	ip, r7, #11264
	add	ip, ip, #32
	ldr	r3, [ip]
	mov	r2, #65536
	str	r2, [r3, #4]
	add	r0, r7, #11264
	add	r0, r0, #32
	ldr	r3, [r0]
	mov	r2, #65536
	str	r2, [r3, #8]
	add	r1, r7, #11264
	add	r1, r1, #32
	ldr	r3, [r1]
	movs	r2, #0
	str	r2, [r3, #12]
	add	r2, r7, #11264
	add	r2, r2, #32
	ldr	r3, [r2]
	movs	r2, #0
	str	r2, [r3, #16]
	add	r3, r7, #11264
	add	r3, r3, #32
	ldr	r2, [r3]
	add	r3, r7, #48
	subs	r3, r3, #48
	ldr	r3, [r3]
	str	r3, [r2]
	add	ip, r7, #11264
	add	ip, ip, #32
	ldr	r3, [ip]
	movs	r2, #0
	str	r2, [r3, #20]
	add	r0, r7, #11264
	add	r0, r0, #32
	ldr	r3, [r0]
	movs	r2, #0
	str	r2, [r3, #24]
	add	r2, r7, #4384
	add	r2, r2, #16
	subs	r2, r2, #16
	add	r3, r7, #48
	subs	r3, r3, #40
	mov	r0, r2
	mov	r1, r3
	bl	af_glyph_hints_rescale(PLT)
	add	r3, r7, #48
	subs	r3, r3, #48
	ldr	r3, [r3]
	ldr	r3, [r3, #84]
	add	r2, r3, #108
	add	r3, r7, #4384
	add	r3, r3, #16
	subs	r3, r3, #16
	mov	r0, r3
	mov	r1, r2
	bl	af_glyph_hints_reload(PLT)
	add	r1, r7, #11264
	add	r1, r1, #16
	str	r0, [r1]
	add	r2, r7, #11264
	add	r2, r2, #16
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.L709
	b	.L708
.L709:
	movs	r3, #0
	add	ip, r7, #11264
	add	ip, ip, #44
	str	r3, [ip]
	b	.L710
.L716:
	add	r3, r7, #48
	subs	r3, r3, #44
	add	r0, r7, #11264
	add	r0, r0, #44
	ldr	r2, [r0]
	mov	r1, #2160
	mul	r2, r1, r2
	adds	r2, r2, #40
	ldr	r3, [r3]
	add	r3, r3, r2
	adds	r3, r3, #4
	add	r1, r7, #11264
	add	r1, r1, #12
	str	r3, [r1]
	add	r3, r7, #4384
	add	r3, r3, #16
	subs	r3, r3, #16
	add	ip, r7, #11264
	add	ip, ip, #44
	ldr	r2, [ip]
	movw	r1, #1468
	mul	r2, r1, r2
	adds	r2, r2, #40
	add	r3, r3, r2
	adds	r3, r3, #4
	add	r0, r7, #11264
	add	r0, r0, #8
	str	r3, [r0]
	add	r3, r7, #4384
	add	r3, r3, #16
	subs	r3, r3, #28
	movs	r2, #0
	str	r2, [r3]
	add	r1, r7, #11264
	add	r1, r1, #44
	ldr	r2, [r1]
	add	r3, r7, #4384
	add	r3, r3, #16
	subs	r3, r3, #16
	mov	r0, r3
	mov	r1, r2
	bl	af_latin_hints_compute_segments(PLT)
	add	r2, r7, #11264
	add	r2, r2, #16
	str	r0, [r2]
	add	ip, r7, #11264
	add	ip, ip, #16
	ldr	r3, [ip]
	cmp	r3, #0
	bne	.L708
	add	r0, r7, #11264
	add	r0, r0, #44
	ldr	r4, [r0]
	add	r3, r7, #4384
	add	r3, r3, #16
	subs	r3, r3, #16
	mov	r0, r3
	movs	r1, #0
	movs	r2, #0
	mov	r3, r4
	bl	af_latin_hints_link_segments(PLT)
	add	r1, r7, #11264
	add	r1, r1, #8
	ldr	r3, [r1]
	ldr	r3, [r3, #8]
	add	r2, r7, #11264
	add	r2, r2, #40
	str	r3, [r2]
	add	ip, r7, #11264
	add	ip, ip, #8
	ldr	r3, [ip]
	ldr	r3, [r3]
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #4
	add	r0, r7, #11264
	add	r0, r0, #40
	ldr	r2, [r0]
	add	r3, r3, r2
	add	r1, r7, #11264
	add	r1, r1, #4
	str	r3, [r1]
	b	.L712
.L715:
	add	r2, r7, #11264
	add	r2, r2, #40
	ldr	r3, [r2]
	ldr	r3, [r3, #20]
	add	ip, r7, #11264
	str	r3, [ip]
	add	r0, r7, #11264
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L713
	add	r1, r7, #11264
	ldr	r3, [r1]
	ldr	r2, [r3, #20]
	add	ip, r7, #11264
	add	ip, ip, #40
	ldr	r3, [ip]
	cmp	r2, r3
	bne	.L713
	add	r0, r7, #11264
	ldr	r2, [r0]
	add	r1, r7, #11264
	add	r1, r1, #40
	ldr	r3, [r1]
	cmp	r2, r3
	bls	.L713
	add	r2, r7, #11264
	add	r2, r2, #40
	ldr	r3, [r2]
	ldrh	r3, [r3, #2]
	sxth	r2, r3
	add	ip, r7, #11264
	ldr	r3, [ip]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	subs	r3, r2, r3
	add	r0, r7, #11264
	add	r0, r0, #36
	str	r3, [r0]
	add	r1, r7, #11264
	add	r1, r1, #36
	ldr	r3, [r1]
	cmp	r3, #0
	bge	.L714
	add	r2, r7, #11264
	add	r2, r2, #36
	ldr	r3, [r2]
	negs	r3, r3
	add	ip, r7, #11264
	add	ip, ip, #36
	str	r3, [ip]
.L714:
	add	r3, r7, #4384
	add	r3, r3, #16
	subs	r3, r3, #28
	ldr	r3, [r3]
	cmp	r3, #15
	bhi	.L713
	add	r3, r7, #4384
	add	r3, r3, #16
	subs	r3, r3, #28
	ldr	r3, [r3]
	mov	r2, r3
	adds	r1, r2, #1
	add	r3, r7, #4384
	add	r3, r3, #16
	subs	r3, r3, #28
	str	r1, [r3]
	add	r0, r7, #11264
	add	r0, r0, #12
	ldr	r1, [r0]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #12
	add	r1, r7, #11264
	add	r1, r1, #36
	ldr	r2, [r1]
	str	r2, [r3]
.L713:
	add	r2, r7, #11264
	add	r2, r2, #40
	ldr	r3, [r2]
	adds	r3, r3, #48
	add	ip, r7, #11264
	add	ip, ip, #40
	str	r3, [ip]
.L712:
	add	r0, r7, #11264
	add	r0, r0, #40
	ldr	r2, [r0]
	add	r1, r7, #11264
	add	r1, r1, #4
	ldr	r3, [r1]
	cmp	r2, r3
	bcc	.L715
	add	r2, r7, #11264
	add	r2, r2, #12
	ldr	r3, [r2]
	add	r1, r3, #12
	add	r3, r7, #48
	subs	r3, r3, #40
	ldr	r2, [r3, #40]
	movw	r3, #34079
	movt	r3, 20971
	umull	ip, r3, r3, r2
	lsrs	r3, r3, #5
	mov	r2, r3
	add	r3, r7, #4384
	add	r3, r3, #16
	subs	r3, r3, #28
	mov	r0, r3
	bl	af_sort_and_quantize_widths(PLT)
	add	r3, r7, #4384
	add	r3, r3, #16
	subs	r3, r3, #28
	ldr	r2, [r3]
	add	r0, r7, #11264
	add	r0, r0, #12
	ldr	r3, [r0]
	str	r2, [r3, #8]
	add	r1, r7, #11264
	add	r1, r1, #44
	ldr	r3, [r1]
	adds	r3, r3, #1
	add	r2, r7, #11264
	add	r2, r2, #44
	str	r3, [r2]
.L710:
	add	ip, r7, #11264
	add	ip, ip, #44
	ldr	r3, [ip]
	cmp	r3, #1
	ble	.L716
.L708:
	movs	r3, #0
	add	r0, r7, #11264
	add	r0, r0, #44
	str	r3, [r0]
	b	.L717
.L720:
	add	r3, r7, #48
	subs	r3, r3, #44
	add	r1, r7, #11264
	add	r1, r1, #44
	ldr	r2, [r1]
	mov	r1, #2160
	mul	r2, r1, r2
	adds	r2, r2, #40
	ldr	r3, [r3]
	add	r3, r3, r2
	adds	r3, r3, #4
	add	r2, r7, #11200
	add	r2, r2, #60
	str	r3, [r2]
	add	ip, r7, #11200
	add	ip, ip, #60
	ldr	r3, [ip]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L718
	add	r0, r7, #11200
	add	r0, r0, #60
	ldr	r3, [r0]
	ldr	r3, [r3, #12]
	b	.L719
.L718:
	add	r3, r7, #48
	subs	r3, r3, #44
	ldr	r3, [r3]
	ldr	r3, [r3, #40]
	movs	r2, #50
	mul	r3, r2, r3
	addw	r2, r3, #2047
	cmp	r3, #0
	ite	lt
	movlt	r3, r2
	movge	r3, r3
	asrs	r3, r3, #11
.L719:
	add	r1, r7, #11200
	add	r1, r1, #56
	str	r3, [r1]
	add	r3, r7, #11200
	add	r3, r3, #56
	ldr	r2, [r3]
	movw	r3, #26215
	movt	r3, 26214
	smull	ip, r3, r3, r2
	asrs	r1, r3, #1
	asrs	r3, r2, #31
	subs	r2, r1, r3
	add	r0, r7, #11200
	add	r0, r0, #60
	ldr	r3, [r0]
	str	r2, [r3, #204]
	add	r1, r7, #11200
	add	r1, r1, #60
	ldr	r3, [r1]
	add	ip, r7, #11200
	add	ip, ip, #56
	ldr	r2, [ip]
	str	r2, [r3, #208]
	add	r0, r7, #11200
	add	r0, r0, #60
	ldr	r3, [r0]
	movs	r2, #0
	strb	r2, [r3, #212]
	add	r1, r7, #11264
	add	r1, r1, #44
	ldr	r3, [r1]
	adds	r3, r3, #1
	add	r2, r7, #11264
	add	r2, r2, #44
	str	r3, [r2]
.L717:
	add	ip, r7, #11264
	add	ip, ip, #44
	ldr	r3, [ip]
	cmp	r3, #1
	ble	.L720
	add	r3, r7, #4384
	add	r3, r3, #16
	subs	r3, r3, #16
	mov	r0, r3
	bl	af_glyph_hints_done(PLT)
	add	r7, r7, #11264
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L722:
	.align	2
.L721:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC5+4)
	.word	af_script_classes(GOT)
	.size	af_cjk_metrics_init_widths, .-af_cjk_metrics_init_widths
	.section	.text.af_cjk_metrics_init_blues,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_cjk_metrics_init_blues, %function
af_cjk_metrics_init_blues:
	@ args = 0, pretend = 0, frame = 544
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #548
	add	r7, sp, #0
	adds	r3, r7, #4
	str	r0, [r3]
	mov	r3, r7
	str	r1, [r3]
	ldr	r6, .L773
.LPIC6:
	add	r6, pc
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3]
	str	r3, [r7, #488]
	ldr	r3, [r7, #488]
	ldr	r3, [r3, #12]
	str	r3, [r7, #484]
	ldr	r3, [r7, #484]
	lsls	r2, r3, #3
	ldr	r3, .L773+4
	ldr	r3, [r6, r3]
	add	r3, r3, r2
	str	r3, [r7, #524]
	b	.L724
.L771:
	ldr	r3, [r7, #524]
	ldr	r2, [r3]
	ldr	r3, .L773+8
	ldr	r3, [r6, r3]
	add	r3, r3, r2
	str	r3, [r7, #520]
	ldr	r3, [r7, #524]
	ldrh	r3, [r3, #4]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L725
	adds	r3, r7, #4
	ldr	r3, [r3]
	adds	r3, r3, #44
	str	r3, [r7, #528]
	b	.L726
.L725:
	adds	r3, r7, #4
	ldr	r3, [r3]
	addw	r3, r3, #2204
	str	r3, [r7, #528]
.L726:
	movs	r3, #0
	str	r3, [r7, #540]
	movs	r3, #0
	str	r3, [r7, #536]
	movs	r3, #1
	strb	r3, [r7, #535]
	b	.L727
.L764:
	ldr	r3, [r7, #520]
	adds	r2, r3, #1
	str	r2, [r7, #520]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #516]
	ldr	r3, [r7, #516]
	cmp	r3, #127
	bls	.L728
	ldr	r3, [r7, #516]
	cmp	r3, #223
	bhi	.L729
	movs	r3, #1
	str	r3, [r7, #504]
	ldr	r3, [r7, #516]
	and	r3, r3, #31
	str	r3, [r7, #516]
	b	.L730
.L729:
	ldr	r3, [r7, #516]
	cmp	r3, #239
	bhi	.L731
	movs	r3, #2
	str	r3, [r7, #504]
	ldr	r3, [r7, #516]
	and	r3, r3, #15
	str	r3, [r7, #516]
	b	.L730
.L731:
	movs	r3, #3
	str	r3, [r7, #504]
	ldr	r3, [r7, #516]
	and	r3, r3, #7
	str	r3, [r7, #516]
	b	.L732
.L730:
	b	.L732
.L733:
	ldr	r3, [r7, #516]
	lsls	r2, r3, #6
	ldr	r3, [r7, #520]
	adds	r1, r3, #1
	str	r1, [r7, #520]
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #63
	orrs	r3, r3, r2
	str	r3, [r7, #516]
	ldr	r3, [r7, #504]
	subs	r3, r3, #1
	str	r3, [r7, #504]
.L732:
	ldr	r3, [r7, #504]
	cmp	r3, #0
	bne	.L733
.L728:
	ldr	r3, [r7, #516]
	cmp	r3, #124
	bne	.L734
	movs	r3, #0
	strb	r3, [r7, #535]
	b	.L727
.L734:
	adds	r3, r7, #4
	ldr	r1, [r3]
	add	r2, r7, #16
	add	r3, r7, #12
	mov	r0, r1
	ldr	r1, [r7, #516]
	bl	af_get_char_index(PLT)
	add	r3, r7, #16
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L736
	b	.L727
.L736:
	add	r3, r7, #16
	ldr	r3, [r3]
	mov	r2, r7
	ldr	r0, [r2]
	mov	r1, r3
	movs	r2, #1
	bl	FT_Load_Glyph(PLT)
	str	r0, [r7, #480]
	mov	r3, r7
	ldr	r3, [r3]
	ldr	r3, [r3, #84]
	add	r2, r7, #20
	mov	r4, r2
	add	r5, r3, #108
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7, #480]
	cmp	r3, #0
	bne	.L737
	add	r3, r7, #20
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	cmp	r3, #0
	bgt	.L738
.L737:
	b	.L727
.L738:
	add	r3, r7, #20
	ldr	r3, [r3, #4]
	str	r3, [r7, #476]
	mov	r3, #-1
	str	r3, [r7, #508]
	movs	r3, #0
	str	r3, [r7, #512]
	movs	r3, #0
	str	r3, [r7, #496]
	mov	r3, #-1
	str	r3, [r7, #472]
	movs	r3, #0
	str	r3, [r7, #500]
	b	.L739
.L761:
	add	r3, r7, #20
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #500]
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r3, [r3]
	sxth	r3, r3
	str	r3, [r7, #472]
	ldr	r2, [r7, #472]
	ldr	r3, [r7, #496]
	cmp	r2, r3
	bgt	.L740
	b	.L741
.L740:
	ldr	r3, [r7, #524]
	ldrh	r3, [r3, #4]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L742
	ldr	r3, [r7, #524]
	ldrh	r3, [r3, #4]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L743
	ldr	r3, [r7, #496]
	str	r3, [r7, #492]
	b	.L744
.L747:
	ldr	r3, [r7, #508]
	cmp	r3, #0
	blt	.L745
	ldr	r3, [r7, #492]
	lsls	r3, r3, #3
	ldr	r2, [r7, #476]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #512]
	cmp	r2, r3
	ble	.L746
.L745:
	ldr	r3, [r7, #492]
	str	r3, [r7, #508]
	ldr	r3, [r7, #492]
	lsls	r3, r3, #3
	ldr	r2, [r7, #476]
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #512]
.L746:
	ldr	r3, [r7, #492]
	adds	r3, r3, #1
	str	r3, [r7, #492]
.L744:
	ldr	r2, [r7, #492]
	ldr	r3, [r7, #472]
	cmp	r2, r3
	ble	.L747
	b	.L741
.L743:
	ldr	r3, [r7, #496]
	str	r3, [r7, #492]
	b	.L748
.L751:
	ldr	r3, [r7, #508]
	cmp	r3, #0
	blt	.L749
	ldr	r3, [r7, #492]
	lsls	r3, r3, #3
	ldr	r2, [r7, #476]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #512]
	cmp	r2, r3
	bge	.L750
.L749:
	ldr	r3, [r7, #492]
	str	r3, [r7, #508]
	ldr	r3, [r7, #492]
	lsls	r3, r3, #3
	ldr	r2, [r7, #476]
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #512]
.L750:
	ldr	r3, [r7, #492]
	adds	r3, r3, #1
	str	r3, [r7, #492]
.L748:
	ldr	r2, [r7, #492]
	ldr	r3, [r7, #472]
	cmp	r2, r3
	ble	.L751
	b	.L741
.L742:
	ldr	r3, [r7, #524]
	ldrh	r3, [r3, #4]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L752
	ldr	r3, [r7, #496]
	str	r3, [r7, #492]
	b	.L753
.L756:
	ldr	r3, [r7, #508]
	cmp	r3, #0
	blt	.L754
	ldr	r3, [r7, #492]
	lsls	r3, r3, #3
	ldr	r2, [r7, #476]
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #512]
	cmp	r2, r3
	ble	.L755
.L754:
	ldr	r3, [r7, #492]
	str	r3, [r7, #508]
	ldr	r3, [r7, #492]
	lsls	r3, r3, #3
	ldr	r2, [r7, #476]
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	str	r3, [r7, #512]
.L755:
	ldr	r3, [r7, #492]
	adds	r3, r3, #1
	str	r3, [r7, #492]
.L753:
	ldr	r2, [r7, #492]
	ldr	r3, [r7, #472]
	cmp	r2, r3
	ble	.L756
	b	.L741
.L752:
	ldr	r3, [r7, #496]
	str	r3, [r7, #492]
	b	.L757
.L760:
	ldr	r3, [r7, #508]
	cmp	r3, #0
	blt	.L758
	ldr	r3, [r7, #492]
	lsls	r3, r3, #3
	ldr	r2, [r7, #476]
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #512]
	cmp	r2, r3
	bge	.L759
.L758:
	ldr	r3, [r7, #492]
	str	r3, [r7, #508]
	ldr	r3, [r7, #492]
	lsls	r3, r3, #3
	ldr	r2, [r7, #476]
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	str	r3, [r7, #512]
.L759:
	ldr	r3, [r7, #492]
	adds	r3, r3, #1
	str	r3, [r7, #492]
.L757:
	ldr	r2, [r7, #492]
	ldr	r3, [r7, #472]
	cmp	r2, r3
	ble	.L760
.L741:
	ldr	r3, [r7, #472]
	adds	r3, r3, #1
	str	r3, [r7, #496]
	ldr	r3, [r7, #500]
	adds	r3, r3, #1
	str	r3, [r7, #500]
.L739:
	add	r3, r7, #20
	ldrh	r3, [r3]
	sxth	r2, r3
	ldr	r3, [r7, #500]
	cmp	r2, r3
	bgt	.L761
	ldrb	r3, [r7, #535]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L762
	ldr	r3, [r7, #540]
	adds	r2, r3, #1
	str	r2, [r7, #540]
	add	r2, r7, #244
	ldr	r1, [r7, #512]
	str	r1, [r2, r3, lsl #2]
	b	.L727
.L762:
	ldr	r3, [r7, #536]
	adds	r2, r3, #1
	str	r2, [r7, #536]
	add	r2, r7, #40
	ldr	r1, [r7, #512]
	str	r1, [r2, r3, lsl #2]
.L727:
	ldr	r3, [r7, #520]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L764
	ldr	r3, [r7, #536]
	cmp	r3, #0
	bne	.L765
	ldr	r3, [r7, #540]
	cmp	r3, #0
	bne	.L765
	b	.L766
.L765:
	add	r3, r7, #244
	ldr	r0, [r7, #540]
	mov	r1, r3
	bl	af_sort_pos(PLT)
	add	r3, r7, #40
	ldr	r0, [r7, #536]
	mov	r1, r3
	bl	af_sort_pos(PLT)
	ldr	r3, [r7, #528]
	ldr	r2, [r3, #216]
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #216
	ldr	r2, [r7, #528]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #468]
	ldr	r3, [r7, #468]
	str	r3, [r7, #464]
	ldr	r3, [r7, #468]
	adds	r3, r3, #12
	str	r3, [r7, #460]
	ldr	r3, [r7, #528]
	ldr	r3, [r3, #216]
	adds	r2, r3, #1
	ldr	r3, [r7, #528]
	str	r2, [r3, #216]
	ldr	r3, [r7, #536]
	cmp	r3, #0
	bne	.L767
	ldr	r3, [r7, #540]
	lsrs	r2, r3, #1
	add	r3, r7, #244
	ldr	r2, [r3, r2, lsl #2]
	ldr	r3, [r7, #460]
	str	r2, [r3]
	ldr	r3, [r7, #460]
	ldr	r2, [r3]
	ldr	r3, [r7, #464]
	str	r2, [r3]
	b	.L768
.L767:
	ldr	r3, [r7, #540]
	cmp	r3, #0
	bne	.L769
	ldr	r3, [r7, #536]
	lsrs	r2, r3, #1
	add	r3, r7, #40
	ldr	r2, [r3, r2, lsl #2]
	ldr	r3, [r7, #460]
	str	r2, [r3]
	ldr	r3, [r7, #460]
	ldr	r2, [r3]
	ldr	r3, [r7, #464]
	str	r2, [r3]
	b	.L768
.L769:
	ldr	r3, [r7, #540]
	lsrs	r2, r3, #1
	add	r3, r7, #244
	ldr	r2, [r3, r2, lsl #2]
	ldr	r3, [r7, #464]
	str	r2, [r3]
	ldr	r3, [r7, #536]
	lsrs	r2, r3, #1
	add	r3, r7, #40
	ldr	r2, [r3, r2, lsl #2]
	ldr	r3, [r7, #460]
	str	r2, [r3]
.L768:
	ldr	r3, [r7, #460]
	ldr	r2, [r3]
	ldr	r3, [r7, #464]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L770
	ldr	r3, [r7, #464]
	ldr	r3, [r3]
	str	r3, [r7, #456]
	ldr	r3, [r7, #460]
	ldr	r3, [r3]
	str	r3, [r7, #452]
	ldr	r2, [r7, #452]
	ldr	r3, [r7, #456]
	cmp	r2, r3
	ite	lt
	movlt	r3, #1
	movge	r3, #0
	uxtb	r3, r3
	strb	r3, [r7, #451]
	ldr	r3, [r7, #524]
	ldrh	r3, [r3, #4]
	and	r2, r3, #1
	ldrb	r3, [r7, #451]	@ zero_extendqisi2
	cmp	r2, r3
	beq	.L770
	ldr	r2, [r7, #452]
	ldr	r3, [r7, #456]
	add	r3, r3, r2
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	mov	r2, r3
	ldr	r3, [r7, #460]
	str	r2, [r3]
	ldr	r3, [r7, #460]
	ldr	r2, [r3]
	ldr	r3, [r7, #464]
	str	r2, [r3]
.L770:
	ldr	r3, [r7, #468]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #524]
	ldrh	r3, [r3, #4]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L766
	ldr	r3, [r7, #468]
	ldr	r3, [r3, #24]
	orr	r2, r3, #2
	ldr	r3, [r7, #468]
	str	r2, [r3, #24]
.L766:
	ldr	r3, [r7, #524]
	adds	r3, r3, #8
	str	r3, [r7, #524]
.L724:
	ldr	r3, [r7, #524]
	ldr	r3, [r3]
	cmp	r3, #1040
	bne	.L771
	nop
	add	r7, r7, #548
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L774:
	.align	2
.L773:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC6+4)
	.word	af_blue_stringsets(GOT)
	.word	af_blue_strings(GOT)
	.size	af_cjk_metrics_init_blues, .-af_cjk_metrics_init_blues
	.section	.text.af_cjk_metrics_check_digits,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_cjk_metrics_check_digits, %function
af_cjk_metrics_check_digits:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	strb	r3, [r7, #27]
	movs	r3, #1
	strb	r3, [r7, #26]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #48
	str	r3, [r7, #28]
	b	.L776
.L784:
	ldr	r1, [r7, #4]
	add	r2, r7, #12
	add	r3, r7, #8
	mov	r0, r1
	ldr	r1, [r7, #28]
	bl	af_get_char_index(PLT)
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L777
	b	.L783
.L777:
	ldr	r2, [r7, #12]
	add	r3, r7, #16
	ldr	r0, [r7]
	mov	r1, r2
	movw	r2, #2051
	bl	FT_Get_Advance(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L779
	b	.L783
.L779:
	ldrb	r3, [r7, #27]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L780
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	beq	.L783
	movs	r3, #0
	strb	r3, [r7, #26]
	b	.L782
.L780:
	ldr	r3, [r7, #16]
	str	r3, [r7, #20]
	movs	r3, #1
	strb	r3, [r7, #27]
.L783:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L776:
	ldr	r3, [r7, #28]
	cmp	r3, #57
	bls	.L784
.L782:
	ldr	r3, [r7, #4]
	ldrb	r2, [r7, #26]
	strb	r2, [r3, #32]
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	af_cjk_metrics_check_digits, .-af_cjk_metrics_check_digits
	.section	.text.af_cjk_metrics_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_cjk_metrics_init, %function
af_cjk_metrics_init:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3, #92]
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldrh	r3, [r3, #68]
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #40]
	ldr	r0, [r7]
	movw	r1, #26979
	movt	r1, 30062
	bl	FT_Select_Charmap(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L786
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	af_cjk_metrics_init_widths(PLT)
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	af_cjk_metrics_init_blues(PLT)
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	af_cjk_metrics_check_digits(PLT)
.L786:
	ldr	r0, [r7]
	ldr	r1, [r7, #12]
	bl	FT_Set_Charmap(PLT)
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	af_cjk_metrics_init, .-af_cjk_metrics_init
	.section	.text.af_cjk_metrics_scale_dim,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_cjk_metrics_scale_dim, %function
af_cjk_metrics_scale_dim:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L789
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	str	r3, [r7, #44]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	str	r3, [r7, #40]
	b	.L790
.L789:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	str	r3, [r7, #44]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #16]
	str	r3, [r7, #40]
.L790:
	ldr	r3, [r7, #4]
	mov	r2, #2160
	mul	r3, r2, r3
	adds	r3, r3, #40
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #2152]
	ldr	r3, [r7, #44]
	cmp	r2, r3
	bne	.L791
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #2156]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bne	.L791
	b	.L788
.L791:
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #44]
	str	r2, [r3, #2152]
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #40]
	str	r2, [r3, #2156]
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #44]
	str	r2, [r3]
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #40]
	str	r2, [r3, #4]
	movs	r3, #0
	str	r3, [r7, #36]
	b	.L793
.L799:
	ldr	r2, [r7, #36]
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #216
	ldr	r2, [r7, #28]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r1, [r7, #44]
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #40]
	add	r2, r2, r3
	ldr	r3, [r7, #24]
	str	r2, [r3, #4]
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #24]
	str	r2, [r3, #8]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #12]
	mov	r0, r3
	ldr	r1, [r7, #44]
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #40]
	add	r2, r2, r3
	ldr	r3, [r7, #24]
	str	r2, [r3, #16]
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #24]
	str	r2, [r3, #20]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #24]
	bic	r2, r3, #1
	ldr	r3, [r7, #24]
	str	r2, [r3, #24]
	ldr	r3, [r7, #24]
	ldr	r2, [r3]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #12]
	subs	r3, r2, r3
	mov	r0, r3
	ldr	r1, [r7, #44]
	bl	FT_MulFix_arm(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #48
	bgt	.L794
	ldr	r3, [r7, #20]
	cmn	r3, #48
	blt	.L794
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #4]
	adds	r3, r3, #32
	bic	r2, r3, #63
	ldr	r3, [r7, #24]
	str	r2, [r3, #8]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #8]
	mov	r0, r3
	ldr	r1, [r7, #44]
	bl	FT_DivFix(PLT)
	mov	r2, r0
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #12]
	subs	r3, r2, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	str	r3, [r7, #32]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bge	.L795
	ldr	r3, [r7, #32]
	negs	r3, r3
	str	r3, [r7, #32]
.L795:
	ldr	r0, [r7, #32]
	ldr	r1, [r7, #44]
	bl	FT_MulFix_arm(PLT)
	str	r0, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #31
	bgt	.L796
	movs	r3, #0
	str	r3, [r7, #32]
	b	.L797
.L796:
	ldr	r3, [r7, #32]
	adds	r3, r3, #32
	bic	r3, r3, #63
	str	r3, [r7, #32]
.L797:
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bge	.L798
	ldr	r3, [r7, #32]
	negs	r3, r3
	str	r3, [r7, #32]
.L798:
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #32]
	subs	r2, r2, r3
	ldr	r3, [r7, #24]
	str	r2, [r3, #20]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #24]
	orr	r2, r3, #1
	ldr	r3, [r7, #24]
	str	r2, [r3, #24]
.L794:
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L793:
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #216]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bhi	.L799
.L788:
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	af_cjk_metrics_scale_dim, .-af_cjk_metrics_scale_dim
	.section	.text.af_cjk_metrics_scale,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_cjk_metrics_scale, %function
af_cjk_metrics_scale:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	adds	r4, r2, #4
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5, {r0, r1, r2}
	stmia	r4, {r0, r1, r2}
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	movs	r2, #0
	bl	af_cjk_metrics_scale_dim(PLT)
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	movs	r2, #1
	bl	af_cjk_metrics_scale_dim(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.size	af_cjk_metrics_scale, .-af_cjk_metrics_scale
	.section	.text.af_cjk_get_standard_widths,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_cjk_get_standard_widths, %function
af_cjk_get_standard_widths:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L802
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #2412]
	ldr	r3, [r7, #8]
	str	r2, [r3]
.L802:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L801
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #252]
	ldr	r3, [r7, #4]
	str	r2, [r3]
.L801:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	af_cjk_get_standard_widths, .-af_cjk_get_standard_widths
	.section	.text.af_cjk_hints_compute_segments,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_cjk_hints_compute_segments, %function
af_cjk_hints_compute_segments:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	movw	r2, #1468
	mul	r3, r2, r3
	adds	r3, r3, #40
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #8]
	str	r3, [r7, #28]
	ldr	r3, [r7, #32]
	ldr	r3, [r3]
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #4
	ldr	r2, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	af_latin_hints_compute_segments(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L805
	ldr	r3, [r7, #20]
	b	.L806
.L805:
	ldr	r3, [r7, #28]
	str	r3, [r7, #44]
	b	.L807
.L813:
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #40]
	str	r3, [r7, #40]
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #44]
	str	r3, [r7, #16]
	ldr	r3, [r7, #40]
	ldrh	r3, [r3]
	and	r3, r3, #3
	str	r3, [r7, #36]
	ldr	r3, [r7, #44]
	ldrb	r3, [r3]	@ zero_extendqisi2
	bic	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [r7, #44]
	strb	r2, [r3]
	b	.L808
.L812:
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #32]
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	ldrh	r3, [r3]
	and	r3, r3, #3
	str	r3, [r7, #12]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L809
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L809
	b	.L810
.L809:
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bne	.L811
	ldr	r3, [r7, #44]
	ldrb	r3, [r3]	@ zero_extendqisi2
	orr	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [r7, #44]
	strb	r2, [r3]
.L811:
	ldr	r3, [r7, #12]
	str	r3, [r7, #36]
.L808:
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bne	.L812
.L810:
	ldr	r3, [r7, #44]
	adds	r3, r3, #48
	str	r3, [r7, #44]
.L807:
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bcc	.L813
	movs	r3, #0
.L806:
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	af_cjk_hints_compute_segments, .-af_cjk_hints_compute_segments
	.section	.text.af_cjk_hints_link_segments,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_cjk_hints_link_segments, %function
af_cjk_hints_link_segments:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #72
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	movw	r2, #1468
	mul	r3, r2, r3
	adds	r3, r3, #40
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #8]
	str	r3, [r7, #44]
	ldr	r3, [r7, #48]
	ldr	r3, [r3]
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #4
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #24]
	str	r3, [r7, #36]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #2988]
	ldr	r3, [r3, #40]
	lsls	r3, r3, #3
	addw	r2, r3, #2047
	cmp	r3, #0
	ite	lt
	movlt	r3, r2
	movge	r3, r3
	asrs	r3, r3, #11
	str	r3, [r7, #32]
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L815
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	b	.L816
.L815:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
.L816:
	str	r3, [r7, #28]
	movs	r0, #192
	ldr	r1, [r7, #28]
	bl	FT_DivFix(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #44]
	str	r3, [r7, #68]
	b	.L817
.L829:
	ldr	r3, [r7, #68]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	sxtb	r2, r3
	ldr	r3, [r7, #36]
	cmp	r2, r3
	beq	.L818
	b	.L819
.L818:
	ldr	r3, [r7, #44]
	str	r3, [r7, #64]
	b	.L820
.L828:
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #68]
	cmp	r2, r3
	beq	.L821
	ldr	r3, [r7, #68]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	sxtb	r2, r3
	ldr	r3, [r7, #64]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	sxtb	r3, r3
	add	r3, r3, r2
	cmp	r3, #0
	bne	.L821
	ldr	r3, [r7, #64]
	ldrh	r3, [r3, #2]
	sxth	r2, r3
	ldr	r3, [r7, #68]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	subs	r3, r2, r3
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bge	.L822
	b	.L821
.L822:
	ldr	r3, [r7, #68]
	ldrh	r3, [r3, #4]
	sxth	r3, r3
	str	r3, [r7, #60]
	ldr	r3, [r7, #68]
	ldrh	r3, [r3, #6]
	sxth	r3, r3
	str	r3, [r7, #56]
	ldr	r3, [r7, #64]
	ldrh	r3, [r3, #4]
	sxth	r2, r3
	ldr	r3, [r7, #60]
	cmp	r2, r3
	ble	.L823
	ldr	r3, [r7, #64]
	ldrh	r3, [r3, #4]
	sxth	r3, r3
	str	r3, [r7, #60]
.L823:
	ldr	r3, [r7, #64]
	ldrh	r3, [r3, #6]
	sxth	r2, r3
	ldr	r3, [r7, #56]
	cmp	r2, r3
	bge	.L824
	ldr	r3, [r7, #64]
	ldrh	r3, [r3, #6]
	sxth	r3, r3
	str	r3, [r7, #56]
.L824:
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #60]
	subs	r3, r2, r3
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	blt	.L821
	ldr	r3, [r7, #24]
	lsls	r1, r3, #3
	ldr	r3, [r7, #68]
	ldr	r2, [r3, #32]
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	cmp	r1, r3
	bge	.L825
	ldr	r3, [r7, #24]
	lsls	r1, r3, #3
	ldr	r3, [r7, #68]
	ldr	r2, [r3, #32]
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	cmp	r1, r3
	blt	.L826
	ldr	r3, [r7, #68]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bge	.L825
.L826:
	ldr	r3, [r7, #68]
	ldr	r2, [r7, #24]
	str	r2, [r3, #32]
	ldr	r3, [r7, #68]
	ldr	r2, [r7, #20]
	str	r2, [r3, #36]
	ldr	r3, [r7, #68]
	ldr	r2, [r7, #64]
	str	r2, [r3, #20]
.L825:
	ldr	r3, [r7, #24]
	lsls	r1, r3, #3
	ldr	r3, [r7, #64]
	ldr	r2, [r3, #32]
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	cmp	r1, r3
	bge	.L821
	ldr	r3, [r7, #24]
	lsls	r1, r3, #3
	ldr	r3, [r7, #64]
	ldr	r2, [r3, #32]
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	cmp	r1, r3
	blt	.L827
	ldr	r3, [r7, #64]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bge	.L821
.L827:
	ldr	r3, [r7, #64]
	ldr	r2, [r7, #24]
	str	r2, [r3, #32]
	ldr	r3, [r7, #64]
	ldr	r2, [r7, #20]
	str	r2, [r3, #36]
	ldr	r3, [r7, #64]
	ldr	r2, [r7, #68]
	str	r2, [r3, #20]
.L821:
	ldr	r3, [r7, #64]
	adds	r3, r3, #48
	str	r3, [r7, #64]
.L820:
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bcc	.L828
.L819:
	ldr	r3, [r7, #68]
	adds	r3, r3, #48
	str	r3, [r7, #68]
.L817:
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bcc	.L829
	ldr	r3, [r7, #44]
	str	r3, [r7, #68]
	b	.L830
.L850:
	ldr	r3, [r7, #68]
	ldr	r3, [r3, #20]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L831
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #68]
	cmp	r2, r3
	bne	.L831
	ldr	r3, [r7, #16]
	ldrh	r2, [r3, #2]
	ldr	r3, [r7, #68]
	ldrh	r3, [r3, #2]
	sxth	r2, r2
	sxth	r3, r3
	cmp	r2, r3
	bgt	.L832
.L831:
	b	.L833
.L832:
	ldr	r3, [r7, #68]
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	blt	.L834
	b	.L833
.L834:
	ldr	r3, [r7, #44]
	str	r3, [r7, #64]
	b	.L835
.L849:
	ldr	r3, [r7, #64]
	ldrh	r2, [r3, #2]
	ldr	r3, [r7, #68]
	ldrh	r3, [r3, #2]
	sxth	r2, r2
	sxth	r3, r3
	cmp	r2, r3
	bgt	.L836
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #64]
	cmp	r2, r3
	bne	.L837
.L836:
	b	.L838
.L837:
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #20]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L839
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #64]
	cmp	r2, r3
	bne	.L839
	ldr	r3, [r7, #12]
	ldrh	r2, [r3, #2]
	ldr	r3, [r7, #16]
	ldrh	r3, [r3, #2]
	sxth	r2, r2
	sxth	r3, r3
	cmp	r2, r3
	bge	.L840
.L839:
	b	.L838
.L840:
	ldr	r3, [r7, #68]
	ldrh	r2, [r3, #2]
	ldr	r3, [r7, #64]
	ldrh	r3, [r3, #2]
	sxth	r2, r2
	sxth	r3, r3
	cmp	r2, r3
	bne	.L841
	ldr	r3, [r7, #16]
	ldrh	r2, [r3, #2]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #2]
	sxth	r2, r2
	sxth	r3, r3
	cmp	r2, r3
	bne	.L841
	b	.L838
.L841:
	ldr	r3, [r7, #64]
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #68]
	ldr	r3, [r3, #32]
	cmp	r2, r3
	ble	.L842
	ldr	r3, [r7, #68]
	ldr	r3, [r3, #32]
	lsls	r2, r3, #2
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #32]
	cmp	r2, r3
	bgt	.L843
.L842:
	b	.L838
.L843:
	ldr	r3, [r7, #68]
	ldr	r1, [r3, #36]
	ldr	r3, [r7, #64]
	ldr	r2, [r3, #36]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	cmp	r1, r3
	blt	.L844
	ldr	r3, [r7, #44]
	str	r3, [r7, #52]
	b	.L845
.L848:
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #20]
	str	r3, [r7, #8]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #64]
	cmp	r2, r3
	bne	.L846
	ldr	r3, [r7, #52]
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [r7, #52]
	ldr	r2, [r7, #16]
	str	r2, [r3, #24]
	b	.L847
.L846:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bne	.L847
	ldr	r3, [r7, #52]
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [r7, #52]
	ldr	r2, [r7, #68]
	str	r2, [r3, #24]
.L847:
	ldr	r3, [r7, #52]
	adds	r3, r3, #48
	str	r3, [r7, #52]
.L845:
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bcc	.L848
	b	.L838
.L844:
	ldr	r3, [r7, #16]
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #68]
	str	r2, [r3, #20]
	b	.L833
.L838:
	ldr	r3, [r7, #64]
	adds	r3, r3, #48
	str	r3, [r7, #64]
.L835:
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bcc	.L849
.L833:
	ldr	r3, [r7, #68]
	adds	r3, r3, #48
	str	r3, [r7, #68]
.L830:
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bcc	.L850
	ldr	r3, [r7, #44]
	str	r3, [r7, #68]
	b	.L851
.L855:
	ldr	r3, [r7, #68]
	ldr	r3, [r3, #20]
	str	r3, [r7, #64]
	ldr	r3, [r7, #64]
	cmp	r3, #0
	beq	.L852
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #28]
	adds	r2, r3, #1
	ldr	r3, [r7, #64]
	str	r2, [r3, #28]
	ldr	r3, [r7, #64]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #68]
	cmp	r2, r3
	beq	.L852
	ldr	r3, [r7, #68]
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [r7, #64]
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	blt	.L853
	ldr	r3, [r7, #68]
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #32]
	lsls	r3, r3, #2
	cmp	r2, r3
	bge	.L854
.L853:
	ldr	r3, [r7, #64]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #68]
	str	r2, [r3, #24]
	b	.L852
.L854:
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #28]
	subs	r2, r3, #1
	ldr	r3, [r7, #64]
	str	r2, [r3, #28]
.L852:
	ldr	r3, [r7, #68]
	adds	r3, r3, #48
	str	r3, [r7, #68]
.L851:
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bcc	.L855
	adds	r7, r7, #72
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	af_cjk_hints_link_segments, .-af_cjk_hints_link_segments
	.section	.text.af_cjk_hints_compute_edges,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_cjk_hints_compute_edges, %function
af_cjk_hints_compute_edges:
	@ args = 0, pretend = 0, frame = 128
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #140
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	movw	r2, #1468
	mul	r3, r2, r3
	adds	r3, r3, #40
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #64]
	movs	r3, #0
	str	r3, [r7, #124]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #60]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #2988]
	ldr	r3, [r7]
	mov	r1, #2160
	mul	r3, r1, r3
	adds	r3, r3, #40
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #56]
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #8]
	str	r3, [r7, #52]
	ldr	r3, [r7, #64]
	ldr	r3, [r3]
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #4
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #64]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L857
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	b	.L858
.L857:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
.L858:
	str	r3, [r7, #44]
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #204]
	mov	r0, r3
	ldr	r1, [r7, #44]
	bl	FT_MulFix_arm(PLT)
	str	r0, [r7, #116]
	ldr	r3, [r7, #116]
	cmp	r3, #16
	ble	.L859
	movs	r0, #16
	ldr	r1, [r7, #44]
	bl	FT_DivFix(PLT)
	str	r0, [r7, #116]
	b	.L860
.L859:
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #204]
	str	r3, [r7, #116]
.L860:
	ldr	r3, [r7, #52]
	str	r3, [r7, #120]
	b	.L861
.L877:
	movs	r3, #0
	str	r3, [r7, #112]
	movw	r3, #65535
	str	r3, [r7, #108]
	movs	r3, #0
	str	r3, [r7, #104]
	b	.L862
.L872:
	ldr	r3, [r7, #64]
	ldr	r1, [r3, #20]
	ldr	r2, [r7, #104]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #4
	add	r3, r3, r1
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	ldrb	r2, [r3, #13]	@ zero_extendqisi2
	ldr	r3, [r7, #120]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	sxtb	r2, r2
	sxtb	r3, r3
	cmp	r2, r3
	beq	.L863
	b	.L864
.L863:
	ldr	r3, [r7, #120]
	ldrh	r3, [r3, #2]
	sxth	r2, r3
	ldr	r3, [r7, #40]
	ldrh	r3, [r3]
	sxth	r3, r3
	subs	r3, r2, r3
	str	r3, [r7, #100]
	ldr	r3, [r7, #100]
	cmp	r3, #0
	bge	.L865
	ldr	r3, [r7, #100]
	negs	r3, r3
	str	r3, [r7, #100]
.L865:
	ldr	r2, [r7, #100]
	ldr	r3, [r7, #116]
	cmp	r2, r3
	bge	.L864
	ldr	r2, [r7, #100]
	ldr	r3, [r7, #108]
	cmp	r2, r3
	bge	.L864
	ldr	r3, [r7, #120]
	ldr	r3, [r3, #20]
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L866
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #40]
	str	r3, [r7, #96]
	movs	r3, #0
	str	r3, [r7, #92]
.L871:
	ldr	r3, [r7, #96]
	ldr	r3, [r3, #20]
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L867
	ldr	r3, [r7, #36]
	ldrh	r2, [r3, #2]
	ldr	r3, [r7, #32]
	ldrh	r3, [r3, #2]
	sxth	r2, r2
	sxth	r3, r3
	cmp	r2, r3
	ble	.L868
	ldr	r3, [r7, #36]
	ldrh	r3, [r3, #2]
	sxth	r2, r3
	ldr	r3, [r7, #32]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	subs	r3, r2, r3
	b	.L869
.L868:
	ldr	r3, [r7, #32]
	ldrh	r3, [r3, #2]
	sxth	r2, r3
	ldr	r3, [r7, #36]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	subs	r3, r2, r3
.L869:
	str	r3, [r7, #92]
	ldr	r2, [r7, #92]
	ldr	r3, [r7, #116]
	cmp	r2, r3
	blt	.L867
	b	.L870
.L867:
	ldr	r3, [r7, #96]
	ldr	r3, [r3, #16]
	str	r3, [r7, #96]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #40]
	ldr	r2, [r7, #96]
	cmp	r2, r3
	bne	.L871
.L870:
	ldr	r2, [r7, #92]
	ldr	r3, [r7, #116]
	cmp	r2, r3
	blt	.L866
	b	.L864
.L866:
	ldr	r3, [r7, #100]
	str	r3, [r7, #108]
	ldr	r3, [r7, #40]
	str	r3, [r7, #112]
.L864:
	ldr	r3, [r7, #104]
	adds	r3, r3, #1
	str	r3, [r7, #104]
.L862:
	ldr	r3, [r7, #64]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #104]
	cmp	r2, r3
	bgt	.L872
	ldr	r3, [r7, #112]
	cmp	r3, #0
	bne	.L873
	ldr	r3, [r7, #120]
	ldrh	r3, [r3, #2]
	sxth	r2, r3
	ldr	r3, [r7, #120]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	sxtb	r3, r3
	add	r1, r7, #12
	str	r1, [sp]
	ldr	r0, [r7, #64]
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [r7, #60]
	bl	af_axis_hints_new_edge(PLT)
	str	r0, [r7, #124]
	ldr	r3, [r7, #124]
	cmp	r3, #0
	bne	.L875
	ldr	r3, [r7, #12]
	mov	r0, r3
	movs	r1, #0
	movs	r2, #48
	bl	memset(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #120]
	str	r2, [r3, #40]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #120]
	str	r2, [r3, #44]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #120]
	ldrb	r2, [r2, #1]	@ zero_extendqisi2
	strb	r2, [r3, #13]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #120]
	ldrh	r2, [r2, #2]
	strh	r2, [r3]	@ movhi
	ldr	r4, [r7, #12]
	ldr	r3, [r7, #120]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	mov	r0, r3
	ldr	r1, [r7, #44]
	bl	FT_MulFix_arm(PLT)
	mov	r3, r0
	str	r3, [r4, #4]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7, #120]
	ldr	r2, [r7, #120]
	str	r2, [r3, #16]
	b	.L876
.L873:
	ldr	r3, [r7, #112]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #120]
	str	r2, [r3, #16]
	ldr	r3, [r7, #112]
	ldr	r3, [r3, #44]
	ldr	r2, [r7, #120]
	str	r2, [r3, #16]
	ldr	r3, [r7, #112]
	ldr	r2, [r7, #120]
	str	r2, [r3, #44]
.L876:
	ldr	r3, [r7, #120]
	adds	r3, r3, #48
	str	r3, [r7, #120]
.L861:
	ldr	r2, [r7, #120]
	ldr	r3, [r7, #48]
	cmp	r2, r3
	bcc	.L877
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #20]
	str	r3, [r7, #28]
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #12]
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #4
	ldr	r2, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	str	r3, [r7, #88]
	b	.L878
.L881:
	ldr	r3, [r7, #88]
	ldr	r3, [r3, #40]
	str	r3, [r7, #120]
	ldr	r3, [r7, #120]
	cmp	r3, #0
	beq	.L879
.L880:
	ldr	r3, [r7, #120]
	ldr	r2, [r7, #88]
	str	r2, [r3, #12]
	ldr	r3, [r7, #120]
	ldr	r3, [r3, #16]
	str	r3, [r7, #120]
	ldr	r3, [r7, #88]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #120]
	cmp	r2, r3
	bne	.L880
.L879:
	ldr	r3, [r7, #88]
	adds	r3, r3, #48
	str	r3, [r7, #88]
.L878:
	ldr	r2, [r7, #88]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bcc	.L881
	ldr	r3, [r7, #28]
	str	r3, [r7, #88]
	b	.L882
.L900:
	movs	r3, #0
	str	r3, [r7, #84]
	movs	r3, #0
	str	r3, [r7, #80]
	ldr	r3, [r7, #88]
	ldr	r3, [r3, #40]
	str	r3, [r7, #120]
.L897:
	ldr	r3, [r7, #120]
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L883
	ldr	r3, [r7, #84]
	adds	r3, r3, #1
	str	r3, [r7, #84]
	b	.L884
.L883:
	ldr	r3, [r7, #80]
	adds	r3, r3, #1
	str	r3, [r7, #80]
.L884:
	ldr	r3, [r7, #120]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L885
	ldr	r3, [r7, #120]
	ldr	r3, [r3, #24]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #88]
	cmp	r2, r3
	beq	.L885
	movs	r3, #1
	b	.L886
.L885:
	movs	r3, #0
.L886:
	strb	r3, [r7, #23]
	ldr	r3, [r7, #120]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	bne	.L887
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L888
.L887:
	ldr	r3, [r7, #88]
	ldr	r3, [r3, #24]
	str	r3, [r7, #76]
	ldr	r3, [r7, #120]
	ldr	r3, [r3, #20]
	str	r3, [r7, #72]
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L889
	ldr	r3, [r7, #120]
	ldr	r3, [r3, #24]
	str	r3, [r7, #72]
	ldr	r3, [r7, #88]
	ldr	r3, [r3, #28]
	str	r3, [r7, #76]
.L889:
	ldr	r3, [r7, #76]
	cmp	r3, #0
	beq	.L890
	ldr	r3, [r7, #88]
	ldrh	r3, [r3]
	sxth	r2, r3
	ldr	r3, [r7, #76]
	ldrh	r3, [r3]
	sxth	r3, r3
	subs	r3, r2, r3
	str	r3, [r7, #68]
	ldr	r3, [r7, #68]
	cmp	r3, #0
	bge	.L891
	ldr	r3, [r7, #68]
	negs	r3, r3
	str	r3, [r7, #68]
.L891:
	ldr	r3, [r7, #120]
	ldrh	r2, [r3, #2]
	ldr	r3, [r7, #72]
	ldrh	r3, [r3, #2]
	sxth	r2, r2
	sxth	r3, r3
	cmp	r2, r3
	ble	.L892
	ldr	r3, [r7, #120]
	ldrh	r3, [r3, #2]
	sxth	r2, r3
	ldr	r3, [r7, #72]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	subs	r3, r2, r3
	b	.L893
.L892:
	ldr	r3, [r7, #72]
	ldrh	r3, [r3, #2]
	sxth	r2, r3
	ldr	r3, [r7, #120]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	subs	r3, r2, r3
.L893:
	str	r3, [r7, #16]
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #68]
	cmp	r2, r3
	bge	.L894
	ldr	r3, [r7, #72]
	ldr	r3, [r3, #12]
	str	r3, [r7, #76]
	b	.L895
.L894:
	b	.L895
.L890:
	ldr	r3, [r7, #72]
	ldr	r3, [r3, #12]
	str	r3, [r7, #76]
.L895:
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L896
	ldr	r3, [r7, #88]
	ldr	r2, [r7, #76]
	str	r2, [r3, #28]
	ldr	r3, [r7, #76]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	orr	r3, r3, #2
	uxtb	r2, r3
	ldr	r3, [r7, #76]
	strb	r2, [r3, #12]
	b	.L888
.L896:
	ldr	r3, [r7, #88]
	ldr	r2, [r7, #76]
	str	r2, [r3, #24]
.L888:
	ldr	r3, [r7, #120]
	ldr	r3, [r3, #16]
	str	r3, [r7, #120]
	ldr	r3, [r7, #88]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #120]
	cmp	r2, r3
	bne	.L897
	ldr	r3, [r7, #88]
	movs	r2, #0
	strb	r2, [r3, #12]
	ldr	r3, [r7, #84]
	cmp	r3, #0
	ble	.L898
	ldr	r2, [r7, #84]
	ldr	r3, [r7, #80]
	cmp	r2, r3
	blt	.L898
	ldr	r3, [r7, #88]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	orr	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [r7, #88]
	strb	r2, [r3, #12]
.L898:
	ldr	r3, [r7, #88]
	ldr	r3, [r3, #28]
	cmp	r3, #0
	beq	.L899
	ldr	r3, [r7, #88]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L899
	ldr	r3, [r7, #88]
	movs	r2, #0
	str	r2, [r3, #28]
.L899:
	ldr	r3, [r7, #88]
	adds	r3, r3, #48
	str	r3, [r7, #88]
.L882:
	ldr	r2, [r7, #88]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bcc	.L900
.L875:
	ldr	r3, [r7, #124]
	mov	r0, r3
	adds	r7, r7, #132
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	af_cjk_hints_compute_edges, .-af_cjk_hints_compute_edges
	.section	.text.af_cjk_hints_detect_features,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_cjk_hints_detect_features, %function
af_cjk_hints_detect_features:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	af_cjk_hints_compute_segments(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L903
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	af_cjk_hints_link_segments(PLT)
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	af_cjk_hints_compute_edges(PLT)
	str	r0, [r7, #12]
.L903:
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	af_cjk_hints_detect_features, .-af_cjk_hints_detect_features
	.section	.text.af_cjk_hints_compute_blue_edges,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_cjk_hints_compute_blue_edges, %function
af_cjk_hints_compute_blue_edges:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #72
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #4]
	movw	r2, #1468
	mul	r3, r2, r3
	adds	r3, r3, #40
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #20]
	str	r3, [r7, #68]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #12]
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #4
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #4]
	mov	r2, #2160
	mul	r3, r2, r3
	adds	r3, r3, #40
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	ldr	r3, [r3]
	str	r3, [r7, #28]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #40]
	movw	r3, #52429
	movt	r3, 52428
	umull	r1, r3, r3, r2
	lsrs	r3, r3, #5
	mov	r0, r3
	ldr	r1, [r7, #28]
	bl	FT_MulFix_arm(PLT)
	str	r0, [r7, #64]
	ldr	r3, [r7, #64]
	cmp	r3, #32
	ble	.L906
	movs	r3, #32
	str	r3, [r7, #64]
	b	.L907
.L906:
	b	.L907
.L916:
	movs	r3, #0
	str	r3, [r7, #56]
	ldr	r3, [r7, #64]
	str	r3, [r7, #52]
	movs	r3, #0
	str	r3, [r7, #60]
	b	.L908
.L914:
	ldr	r2, [r7, #60]
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #216
	ldr	r2, [r7, #32]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #24]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L909
	b	.L910
.L909:
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #24]
	and	r3, r3, #2
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	strb	r3, [r7, #23]
	ldr	r3, [r7, #68]
	ldrb	r3, [r3, #13]	@ zero_extendqisi2
	sxtb	r2, r3
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #24]
	cmp	r2, r3
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	strb	r3, [r7, #22]
	ldrb	r2, [r7, #23]	@ zero_extendqisi2
	ldrb	r3, [r7, #22]	@ zero_extendqisi2
	cmp	r2, r3
	beq	.L910
	ldr	r3, [r7, #68]
	ldrh	r3, [r3]
	sxth	r2, r3
	ldr	r3, [r7, #24]
	ldr	r3, [r3]
	subs	r3, r2, r3
	eor	r2, r3, r3, asr #31
	sub	r2, r2, r3, asr #31
	ldr	r3, [r7, #68]
	ldrh	r3, [r3]
	sxth	r1, r3
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #12]
	subs	r3, r1, r3
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	cmp	r2, r3
	ble	.L911
	ldr	r3, [r7, #24]
	adds	r3, r3, #12
	str	r3, [r7, #44]
	b	.L912
.L911:
	ldr	r3, [r7, #24]
	str	r3, [r7, #44]
.L912:
	ldr	r3, [r7, #68]
	ldrh	r3, [r3]
	sxth	r2, r3
	ldr	r3, [r7, #44]
	ldr	r3, [r3]
	subs	r3, r2, r3
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	cmp	r3, #0
	bge	.L913
	ldr	r3, [r7, #48]
	negs	r3, r3
	str	r3, [r7, #48]
.L913:
	ldr	r0, [r7, #48]
	ldr	r1, [r7, #28]
	bl	FT_MulFix_arm(PLT)
	str	r0, [r7, #48]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bge	.L910
	ldr	r3, [r7, #48]
	str	r3, [r7, #52]
	ldr	r3, [r7, #44]
	str	r3, [r7, #56]
.L910:
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
.L908:
	ldr	r3, [r7, #32]
	ldr	r2, [r3, #216]
	ldr	r3, [r7, #60]
	cmp	r2, r3
	bhi	.L914
	ldr	r3, [r7, #56]
	cmp	r3, #0
	beq	.L915
	ldr	r3, [r7, #68]
	ldr	r2, [r7, #56]
	str	r2, [r3, #20]
.L915:
	ldr	r3, [r7, #68]
	adds	r3, r3, #48
	str	r3, [r7, #68]
.L907:
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L916
	adds	r7, r7, #72
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	af_cjk_hints_compute_blue_edges, .-af_cjk_hints_compute_blue_edges
	.section	.text.af_cjk_hints_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_cjk_hints_init, %function
af_cjk_hints_init:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	af_glyph_hints_rescale(PLT)
	ldr	r3, [r7]
	ldr	r2, [r3, #44]
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7]
	ldr	r2, [r3, #48]
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7]
	ldr	r2, [r3, #2204]
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7]
	ldr	r2, [r3, #2208]
	ldr	r3, [r7, #4]
	str	r2, [r3, #16]
	ldr	r3, [r7]
	ldr	r3, [r3, #24]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #2980]
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #16]
	cmp	r3, #2
	beq	.L918
	ldr	r3, [r7, #16]
	cmp	r3, #3
	bne	.L919
.L918:
	ldr	r3, [r7, #20]
	orr	r3, r3, #1
	str	r3, [r7, #20]
.L919:
	ldr	r3, [r7, #16]
	cmp	r3, #2
	beq	.L920
	ldr	r3, [r7, #16]
	cmp	r3, #4
	bne	.L921
.L920:
	ldr	r3, [r7, #20]
	orr	r3, r3, #2
	str	r3, [r7, #20]
.L921:
	ldr	r3, [r7, #16]
	cmp	r3, #1
	beq	.L922
	ldr	r3, [r7, #20]
	orr	r3, r3, #4
	str	r3, [r7, #20]
.L922:
	ldr	r3, [r7, #16]
	cmp	r3, #2
	bne	.L923
	ldr	r3, [r7, #20]
	orr	r3, r3, #8
	str	r3, [r7, #20]
.L923:
	ldr	r3, [r7, #12]
	orr	r3, r3, #4
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #2980]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #20]
	str	r2, [r3, #2984]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	af_cjk_hints_init, .-af_cjk_hints_init
	.section	.text.af_cjk_snap_width,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_cjk_snap_width, %function
af_cjk_snap_width:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #44
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #98
	str	r3, [r7, #32]
	ldr	r3, [r7, #4]
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #36]
	b	.L926
.L929:
	ldr	r2, [r7, #36]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	str	r3, [r7, #20]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #20]
	subs	r3, r2, r3
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bge	.L927
	ldr	r3, [r7, #24]
	negs	r3, r3
	str	r3, [r7, #24]
.L927:
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bge	.L928
	ldr	r3, [r7, #24]
	str	r3, [r7, #32]
	ldr	r3, [r7, #20]
	str	r3, [r7, #28]
.L928:
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L926:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L929
	ldr	r3, [r7, #28]
	adds	r3, r3, #32
	bic	r3, r3, #63
	str	r3, [r7, #16]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	blt	.L930
	ldr	r3, [r7, #16]
	add	r2, r3, #48
	ldr	r3, [r7, #4]
	cmp	r2, r3
	ble	.L932
	ldr	r3, [r7, #28]
	str	r3, [r7, #4]
	b	.L932
.L930:
	ldr	r3, [r7, #16]
	sub	r2, r3, #48
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bge	.L932
	ldr	r3, [r7, #28]
	str	r3, [r7, #4]
.L932:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	af_cjk_snap_width, .-af_cjk_snap_width
	.section	.text.af_cjk_compute_stem_width,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_cjk_compute_stem_width, %function
af_cjk_compute_stem_width:
	@ args = 4, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #2988]
	str	r3, [r7, #28]
	ldr	r3, [r7, #8]
	mov	r2, #2160
	mul	r3, r2, r3
	adds	r3, r3, #40
	ldr	r2, [r7, #28]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	str	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #32]
	ldr	r3, [r7, #8]
	cmp	r3, #1
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	strb	r3, [r7, #23]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #2984]
	and	r3, r3, #4
	cmp	r3, #0
	bne	.L935
	ldr	r3, [r7, #4]
	b	.L936
.L935:
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bge	.L937
	ldr	r3, [r7, #4]
	negs	r3, r3
	str	r3, [r7, #36]
	movs	r3, #1
	str	r3, [r7, #32]
.L937:
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L938
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #2984]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L939
.L938:
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L940
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #2984]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L940
.L939:
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L941
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #16]
	ldr	r2, [r7, #36]
	subs	r3, r2, r3
	cmn	r3, #39
	blt	.L941
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #16]
	ldr	r2, [r7, #36]
	subs	r3, r2, r3
	cmp	r3, #39
	bgt	.L941
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #16]
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #47
	bgt	.L942
	movs	r3, #48
	str	r3, [r7, #36]
	b	.L943
.L942:
	b	.L943
.L941:
	ldr	r3, [r7, #36]
	cmp	r3, #53
	bgt	.L944
	ldr	r3, [r7, #36]
	rsb	r3, r3, #54
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	str	r3, [r7, #36]
	b	.L945
.L944:
	ldr	r3, [r7, #36]
	cmp	r3, #191
	bgt	.L945
	ldr	r3, [r7, #36]
	and	r3, r3, #63
	str	r3, [r7, #16]
	ldr	r3, [r7, #36]
	bic	r3, r3, #63
	str	r3, [r7, #36]
	ldr	r3, [r7, #16]
	cmp	r3, #9
	bgt	.L946
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #16]
	add	r3, r3, r2
	str	r3, [r7, #36]
	b	.L945
.L946:
	ldr	r3, [r7, #16]
	cmp	r3, #21
	bgt	.L947
	ldr	r3, [r7, #36]
	adds	r3, r3, #10
	str	r3, [r7, #36]
	b	.L945
.L947:
	ldr	r3, [r7, #16]
	cmp	r3, #41
	bgt	.L948
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #16]
	add	r3, r3, r2
	str	r3, [r7, #36]
	b	.L945
.L948:
	ldr	r3, [r7, #16]
	cmp	r3, #53
	bgt	.L949
	ldr	r3, [r7, #36]
	adds	r3, r3, #54
	str	r3, [r7, #36]
	b	.L945
.L949:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #16]
	add	r3, r3, r2
	str	r3, [r7, #36]
	b	.L943
.L945:
	b	.L943
.L940:
	ldr	r3, [r7, #24]
	add	r2, r3, #12
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #8]
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #36]
	bl	af_cjk_snap_width(PLT)
	str	r0, [r7, #36]
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L950
	ldr	r3, [r7, #36]
	cmp	r3, #63
	ble	.L951
	ldr	r3, [r7, #36]
	adds	r3, r3, #16
	bic	r3, r3, #63
	str	r3, [r7, #36]
	b	.L943
.L951:
	movs	r3, #64
	str	r3, [r7, #36]
	b	.L943
.L950:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #2984]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L953
	ldr	r3, [r7, #36]
	cmp	r3, #63
	bgt	.L954
	movs	r3, #64
	str	r3, [r7, #36]
	b	.L943
.L954:
	ldr	r3, [r7, #36]
	adds	r3, r3, #32
	bic	r3, r3, #63
	str	r3, [r7, #36]
	b	.L943
.L953:
	ldr	r3, [r7, #36]
	cmp	r3, #47
	bgt	.L956
	ldr	r3, [r7, #36]
	adds	r3, r3, #64
	asrs	r3, r3, #1
	str	r3, [r7, #36]
	b	.L943
.L956:
	ldr	r3, [r7, #36]
	cmp	r3, #127
	bgt	.L957
	ldr	r3, [r7, #36]
	adds	r3, r3, #22
	bic	r3, r3, #63
	str	r3, [r7, #36]
	b	.L943
.L957:
	ldr	r3, [r7, #36]
	adds	r3, r3, #32
	bic	r3, r3, #63
	str	r3, [r7, #36]
.L943:
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L958
	ldr	r3, [r7, #36]
	negs	r3, r3
	str	r3, [r7, #36]
.L958:
	ldr	r3, [r7, #36]
.L936:
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	af_cjk_compute_stem_width, .-af_cjk_compute_stem_width
	.section	.text.af_cjk_align_linked_edge,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_cjk_align_linked_edge, %function
af_cjk_align_linked_edge:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	ldr	r2, [r7]
	ldrb	r2, [r2, #12]	@ zero_extendqisi2
	str	r2, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #20]
	bl	af_cjk_compute_stem_width(PLT)
	str	r0, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #16]
	add	r2, r2, r3
	ldr	r3, [r7]
	str	r2, [r3, #8]
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	af_cjk_align_linked_edge, .-af_cjk_align_linked_edge
	.section	.text.af_cjk_align_serif_edge,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_cjk_align_serif_edge, %function
af_cjk_align_serif_edge:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	subs	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	af_cjk_align_serif_edge, .-af_cjk_align_serif_edge
	.section	.text.af_hint_normal_stem,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_hint_normal_stem, %function
af_hint_normal_stem:
	@ args = 4, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #72
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #64
	str	r3, [r7, #44]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #2984]
	and	r3, r3, #4
	cmp	r3, #0
	bne	.L962
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L963
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L963
	ldr	r3, [r7, #72]
	cmp	r3, #1
	bne	.L964
	movs	r3, #55
	str	r3, [r7, #44]
	b	.L962
.L964:
	movs	r3, #49
	str	r3, [r7, #44]
	b	.L962
.L963:
	ldr	r3, [r7, #72]
	cmp	r3, #1
	bne	.L966
	movs	r3, #61
	str	r3, [r7, #44]
	b	.L962
.L966:
	movs	r3, #59
	str	r3, [r7, #44]
.L962:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	str	r3, [r7, #40]
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	ldrb	r2, [r2, #12]	@ zero_extendqisi2
	str	r2, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #72]
	ldr	r2, [r7, #40]
	bl	af_cjk_compute_stem_width(PLT)
	str	r0, [r7, #36]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	add	r3, r3, r2
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	mov	r2, r3
	ldr	r3, [r7]
	add	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #36]
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	ldr	r2, [r7, #32]
	subs	r3, r2, r3
	str	r3, [r7, #28]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	and	r3, r3, #63
	str	r3, [r7, #20]
	ldr	r3, [r7, #24]
	and	r3, r3, #63
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	rsb	r3, r3, #64
	str	r3, [r7, #60]
	ldr	r3, [r7, #16]
	rsb	r3, r3, #64
	str	r3, [r7, #56]
	movs	r3, #0
	str	r3, [r7, #52]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L967
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L967
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #44]
	cmp	r2, r3
	bgt	.L968
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bge	.L969
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bgt	.L970
	ldr	r3, [r7, #60]
	str	r3, [r7, #52]
	b	.L969
.L970:
	ldr	r3, [r7, #16]
	negs	r3, r3
	str	r3, [r7, #52]
	b	.L967
.L969:
	b	.L967
.L968:
	ldr	r3, [r7, #44]
	cmp	r3, #63
	bgt	.L971
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #44]
	cmp	r2, r3
	bge	.L967
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #44]
	cmp	r2, r3
	bge	.L967
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #44]
	cmp	r2, r3
	bge	.L967
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #44]
	cmp	r2, r3
	bge	.L967
.L971:
	ldr	r3, [r7, #36]
	and	r3, r3, #63
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	cmp	r3, #31
	bgt	.L972
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #48]
	cmp	r2, r3
	ble	.L967
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #48]
	cmp	r2, r3
	ble	.L967
	b	.L973
.L972:
	ldr	r3, [r7, #44]
	rsb	r3, r3, #64
	str	r3, [r7, #48]
.L973:
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #60]
	subs	r3, r2, r3
	str	r3, [r7, #20]
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #48]
	subs	r3, r2, r3
	str	r3, [r7, #60]
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #16]
	subs	r3, r2, r3
	str	r3, [r7, #56]
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #48]
	subs	r3, r2, r3
	str	r3, [r7, #16]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #60]
	cmp	r2, r3
	bgt	.L974
	ldr	r3, [r7, #20]
	negs	r3, r3
	str	r3, [r7, #60]
.L974:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #56]
	cmp	r2, r3
	bgt	.L975
	ldr	r3, [r7, #16]
	negs	r3, r3
	str	r3, [r7, #56]
.L975:
	ldr	r3, [r7, #60]
	eor	r2, r3, r3, asr #31
	sub	r2, r2, r3, asr #31
	ldr	r3, [r7, #56]
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	cmp	r2, r3
	bgt	.L976
	ldr	r3, [r7, #60]
	str	r3, [r7, #52]
	b	.L967
.L976:
	ldr	r3, [r7, #56]
	str	r3, [r7, #52]
.L967:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #2984]
	and	r3, r3, #4
	cmp	r3, #0
	bne	.L977
	ldr	r3, [r7, #52]
	cmp	r3, #14
	ble	.L978
	movs	r3, #14
	str	r3, [r7, #52]
	b	.L977
.L978:
	ldr	r3, [r7, #52]
	cmn	r3, #14
	bge	.L977
	mvn	r3, #13
	str	r3, [r7, #52]
.L977:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bge	.L979
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #28]
	str	r2, [r3, #8]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #36]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	b	.L980
.L979:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #36]
	add	r2, r2, r3
	ldr	r3, [r7, #8]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #28]
	str	r2, [r3, #8]
.L980:
	ldr	r3, [r7, #52]
	mov	r0, r3
	adds	r7, r7, #64
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	af_hint_normal_stem, .-af_hint_normal_stem
	.section	.text.af_cjk_hint_edges,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_cjk_hint_edges, %function
af_cjk_hint_edges:
	@ args = 0, pretend = 0, frame = 96
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #108
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	movw	r2, #1468
	mul	r3, r2, r3
	adds	r3, r3, #40
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #20]
	str	r3, [r7, #28]
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #12]
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #4
	ldr	r2, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #88]
	movs	r3, #0
	str	r3, [r7, #84]
	movs	r3, #0
	str	r3, [r7, #80]
	movs	r3, #0
	strb	r3, [r7, #79]
	movs	r3, #0
	str	r3, [r7, #72]
	ldr	r3, [r7, #28]
	str	r3, [r7, #92]
	b	.L983
.L990:
	ldr	r3, [r7, #92]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L984
	b	.L985
.L984:
	ldr	r3, [r7, #92]
	ldr	r3, [r3, #20]
	str	r3, [r7, #68]
	movs	r3, #0
	str	r3, [r7, #64]
	ldr	r3, [r7, #92]
	ldr	r3, [r3, #24]
	str	r3, [r7, #60]
	ldr	r3, [r7, #68]
	cmp	r3, #0
	beq	.L986
	ldr	r3, [r7, #92]
	str	r3, [r7, #64]
	b	.L987
.L986:
	ldr	r3, [r7, #60]
	cmp	r3, #0
	beq	.L987
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L987
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #20]
	str	r3, [r7, #68]
	ldr	r3, [r7, #60]
	str	r3, [r7, #64]
	ldr	r3, [r7, #92]
	str	r3, [r7, #60]
.L987:
	ldr	r3, [r7, #64]
	cmp	r3, #0
	bne	.L988
	b	.L985
.L988:
	ldr	r3, [r7, #68]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #64]
	str	r2, [r3, #8]
	ldr	r3, [r7, #64]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	orr	r3, r3, #4
	uxtb	r2, r3
	ldr	r3, [r7, #64]
	strb	r2, [r3, #12]
	ldr	r3, [r7, #60]
	cmp	r3, #0
	beq	.L989
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	bne	.L989
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #60]
	bl	af_cjk_align_linked_edge(PLT)
	ldr	r3, [r7, #60]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	orr	r3, r3, #4
	uxtb	r2, r3
	ldr	r3, [r7, #60]
	strb	r2, [r3, #12]
.L989:
	ldr	r3, [r7, #88]
	cmp	r3, #0
	bne	.L985
	ldr	r3, [r7, #92]
	str	r3, [r7, #88]
.L985:
	ldr	r3, [r7, #92]
	adds	r3, r3, #48
	str	r3, [r7, #92]
.L983:
	ldr	r2, [r7, #92]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bcc	.L990
	ldr	r3, [r7, #28]
	str	r3, [r7, #92]
	b	.L991
.L1001:
	ldr	r3, [r7, #92]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L992
	b	.L993
.L992:
	ldr	r3, [r7, #92]
	ldr	r3, [r3, #24]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L994
	ldr	r3, [r7, #80]
	adds	r3, r3, #1
	str	r3, [r7, #80]
	b	.L993
.L994:
	ldrb	r3, [r7, #79]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L995
	ldr	r3, [r7, #92]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #72]
	adds	r3, r3, #64
	cmp	r2, r3
	blt	.L996
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #72]
	adds	r3, r3, #64
	cmp	r2, r3
	bge	.L995
.L996:
	ldr	r3, [r7, #80]
	adds	r3, r3, #1
	str	r3, [r7, #80]
	b	.L993
.L995:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L997
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #92]
	bl	af_cjk_align_linked_edge(PLT)
	ldr	r3, [r7, #92]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	orr	r3, r3, #4
	uxtb	r2, r3
	ldr	r3, [r7, #92]
	strb	r2, [r3, #12]
	b	.L993
.L997:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #92]
	cmp	r2, r3
	bcs	.L998
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #92]
	bl	af_cjk_align_linked_edge(PLT)
	ldr	r3, [r7, #92]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	orr	r3, r3, #4
	uxtb	r2, r3
	ldr	r3, [r7, #92]
	strb	r2, [r3, #12]
	movs	r3, #1
	strb	r3, [r7, #79]
	ldr	r3, [r7, #92]
	ldr	r3, [r3, #8]
	str	r3, [r7, #72]
	b	.L993
.L998:
	ldr	r3, [r7]
	cmp	r3, #1
	beq	.L999
	ldr	r3, [r7, #88]
	cmp	r3, #0
	bne	.L999
	movs	r3, #0
	str	r3, [sp]
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #92]
	ldr	r2, [r7, #20]
	movs	r3, #0
	bl	af_hint_normal_stem(PLT)
	str	r0, [r7, #84]
	b	.L1000
.L999:
	ldr	r3, [r7]
	str	r3, [sp]
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #92]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #84]
	bl	af_hint_normal_stem(PLT)
.L1000:
	ldr	r3, [r7, #92]
	str	r3, [r7, #88]
	ldr	r3, [r7, #92]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	orr	r3, r3, #4
	uxtb	r2, r3
	ldr	r3, [r7, #92]
	strb	r2, [r3, #12]
	ldr	r3, [r7, #20]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	orr	r3, r3, #4
	uxtb	r2, r3
	ldr	r3, [r7, #20]
	strb	r2, [r3, #12]
	movs	r3, #1
	strb	r3, [r7, #79]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #8]
	str	r3, [r7, #72]
.L993:
	ldr	r3, [r7, #92]
	adds	r3, r3, #48
	str	r3, [r7, #92]
.L991:
	ldr	r2, [r7, #92]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bcc	.L1001
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #28]
	subs	r3, r2, r3
	asrs	r2, r3, #4
	movw	r3, #43691
	movt	r3, 43690
	mul	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L1002
	ldr	r3, [r7, #16]
	cmp	r3, #6
	beq	.L1003
	ldr	r3, [r7, #16]
	cmp	r3, #12
	bne	.L1002
.L1003:
	ldr	r3, [r7, #16]
	cmp	r3, #6
	bne	.L1004
	ldr	r3, [r7, #28]
	str	r3, [r7, #56]
	ldr	r3, [r7, #28]
	adds	r3, r3, #96
	str	r3, [r7, #52]
	ldr	r3, [r7, #28]
	adds	r3, r3, #192
	str	r3, [r7, #48]
	b	.L1005
.L1004:
	ldr	r3, [r7, #28]
	adds	r3, r3, #48
	str	r3, [r7, #56]
	ldr	r3, [r7, #28]
	adds	r3, r3, #240
	str	r3, [r7, #52]
	ldr	r3, [r7, #28]
	add	r3, r3, #432
	str	r3, [r7, #48]
.L1005:
	ldr	r3, [r7, #52]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #48]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	str	r3, [r7, #8]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	subs	r3, r2, r3
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bge	.L1006
	ldr	r3, [r7, #44]
	negs	r3, r3
	str	r3, [r7, #44]
.L1006:
	ldr	r3, [r7, #56]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #56]
	adds	r3, r3, #48
	cmp	r2, r3
	bne	.L1002
	ldr	r3, [r7, #52]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #52]
	adds	r3, r3, #48
	cmp	r2, r3
	bne	.L1002
	ldr	r3, [r7, #48]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #48]
	adds	r3, r3, #48
	cmp	r2, r3
	bne	.L1002
	ldr	r3, [r7, #44]
	cmp	r3, #7
	bgt	.L1002
	ldr	r3, [r7, #48]
	ldr	r1, [r3, #8]
	ldr	r3, [r7, #56]
	ldr	r0, [r3, #8]
	ldr	r3, [r7, #52]
	ldr	r2, [r3, #8]
	mov	r3, r2
	lsls	r3, r3, #31
	subs	r3, r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r0
	add	r3, r3, r1
	str	r3, [r7, #84]
	ldr	r3, [r7, #48]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #84]
	subs	r2, r2, r3
	ldr	r3, [r7, #48]
	str	r2, [r3, #8]
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L1007
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #24]
	ldr	r2, [r7, #48]
	ldr	r2, [r2, #24]
	ldr	r1, [r2, #8]
	ldr	r2, [r7, #84]
	subs	r2, r1, r2
	str	r2, [r3, #8]
.L1007:
	ldr	r3, [r7, #16]
	cmp	r3, #12
	bne	.L1008
	ldr	r3, [r7, #28]
	add	r3, r3, #384
	ldr	r2, [r7, #28]
	add	r2, r2, #384
	ldr	r1, [r2, #8]
	ldr	r2, [r7, #84]
	subs	r2, r1, r2
	str	r2, [r3, #8]
	ldr	r3, [r7, #28]
	add	r3, r3, #528
	ldr	r2, [r7, #28]
	add	r2, r2, #528
	ldr	r1, [r2, #8]
	ldr	r2, [r7, #84]
	subs	r2, r1, r2
	str	r2, [r3, #8]
.L1008:
	ldr	r3, [r7, #48]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	orr	r3, r3, #4
	uxtb	r2, r3
	ldr	r3, [r7, #48]
	strb	r2, [r3, #12]
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L1002
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #24]
	ldr	r2, [r7, #48]
	ldr	r2, [r2, #24]
	ldrb	r2, [r2, #12]	@ zero_extendqisi2
	orr	r2, r2, #4
	uxtb	r2, r2
	strb	r2, [r3, #12]
.L1002:
	ldr	r3, [r7, #80]
	cmp	r3, #0
	bne	.L1009
	b	.L1010
.L1009:
	ldr	r3, [r7, #28]
	str	r3, [r7, #92]
	b	.L1011
.L1014:
	ldr	r3, [r7, #92]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L1012
	b	.L1013
.L1012:
	ldr	r3, [r7, #92]
	ldr	r3, [r3, #28]
	cmp	r3, #0
	beq	.L1013
	ldr	r3, [r7, #92]
	ldr	r3, [r3, #28]
	ldr	r0, [r7, #4]
	mov	r1, r3
	ldr	r2, [r7, #92]
	bl	af_cjk_align_serif_edge(PLT)
	ldr	r3, [r7, #92]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	orr	r3, r3, #4
	uxtb	r2, r3
	ldr	r3, [r7, #92]
	strb	r2, [r3, #12]
	ldr	r3, [r7, #80]
	subs	r3, r3, #1
	str	r3, [r7, #80]
.L1013:
	ldr	r3, [r7, #92]
	adds	r3, r3, #48
	str	r3, [r7, #92]
.L1011:
	ldr	r2, [r7, #92]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bcc	.L1014
	ldr	r3, [r7, #80]
	cmp	r3, #0
	bne	.L1015
	b	.L1010
.L1015:
	ldr	r3, [r7, #28]
	str	r3, [r7, #92]
	b	.L1016
.L1029:
	ldr	r3, [r7, #92]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L1017
	b	.L1018
.L1017:
	ldr	r3, [r7, #92]
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	str	r3, [r7, #40]
	b	.L1019
.L1021:
	ldr	r3, [r7, #40]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L1019
	b	.L1020
.L1019:
	ldr	r3, [r7, #40]
	subs	r3, r3, #48
	str	r3, [r7, #40]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bcs	.L1021
.L1020:
	b	.L1022
.L1024:
	ldr	r3, [r7, #36]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L1022
	b	.L1023
.L1022:
	ldr	r3, [r7, #36]
	adds	r3, r3, #48
	str	r3, [r7, #36]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bcc	.L1024
.L1023:
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bcs	.L1025
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bcs	.L1018
.L1025:
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bcs	.L1026
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	ldr	r2, [r7, #92]
	bl	af_cjk_align_serif_edge(PLT)
	b	.L1018
.L1026:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bcc	.L1027
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #40]
	ldr	r2, [r7, #92]
	bl	af_cjk_align_serif_edge(PLT)
	b	.L1018
.L1027:
	ldr	r3, [r7, #36]
	ldrh	r2, [r3]
	ldr	r3, [r7, #40]
	ldrh	r3, [r3]
	sxth	r2, r2
	sxth	r3, r3
	cmp	r2, r3
	bne	.L1028
	ldr	r3, [r7, #40]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #92]
	str	r2, [r3, #8]
	b	.L1018
.L1028:
	ldr	r3, [r7, #40]
	ldr	r4, [r3, #8]
	ldr	r3, [r7, #92]
	ldrh	r3, [r3]
	sxth	r2, r3
	ldr	r3, [r7, #40]
	ldrh	r3, [r3]
	sxth	r3, r3
	subs	r1, r2, r3
	ldr	r3, [r7, #36]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #8]
	subs	r2, r2, r3
	ldr	r3, [r7, #36]
	ldrh	r3, [r3]
	sxth	r0, r3
	ldr	r3, [r7, #40]
	ldrh	r3, [r3]
	sxth	r3, r3
	subs	r3, r0, r3
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	FT_MulDiv(PLT)
	mov	r3, r0
	adds	r2, r4, r3
	ldr	r3, [r7, #92]
	str	r2, [r3, #8]
.L1018:
	ldr	r3, [r7, #92]
	adds	r3, r3, #48
	str	r3, [r7, #92]
.L1016:
	ldr	r2, [r7, #92]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bcc	.L1029
.L1010:
	nop
	adds	r7, r7, #100
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	af_cjk_hint_edges, .-af_cjk_hint_edges
	.section	.text.af_cjk_align_edge_points,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_cjk_align_edge_points, %function
af_cjk_align_edge_points:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #52
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	movw	r2, #1468
	mul	r3, r2, r3
	adds	r3, r3, #40
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #20]
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #12]
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #4
	ldr	r2, [r7, #24]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L1032
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #2984]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L1033
.L1032:
	ldr	r3, [r7]
	cmp	r3, #1
	bne	.L1034
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #2984]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L1034
.L1033:
	movs	r3, #1
	b	.L1035
.L1034:
	movs	r3, #0
.L1035:
	strb	r3, [r7, #19]
	ldr	r3, [r7, #24]
	str	r3, [r7, #44]
	b	.L1036
.L1051:
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #40]
	str	r3, [r7, #40]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1037
.L1043:
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #40]
	str	r3, [r7, #36]
.L1042:
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L1038
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #36]
	str	r2, [r3, #16]
	ldr	r3, [r7, #36]
	ldrh	r3, [r3]
	orr	r3, r3, #4
	uxth	r2, r3
	ldr	r3, [r7, #36]
	strh	r2, [r3]	@ movhi
	b	.L1039
.L1038:
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #36]
	str	r2, [r3, #20]
	ldr	r3, [r7, #36]
	ldrh	r3, [r3]
	orr	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #36]
	strh	r2, [r3]	@ movhi
.L1039:
	ldr	r3, [r7, #40]
	ldr	r2, [r3, #44]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bne	.L1040
	nop
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #16]
	str	r3, [r7, #40]
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bne	.L1043
	b	.L1044
.L1040:
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #32]
	str	r3, [r7, #36]
	b	.L1042
.L1037:
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	str	r3, [r7, #12]
.L1050:
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #40]
	str	r3, [r7, #32]
.L1049:
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L1045
	ldr	r3, [r7, #32]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #12]
	add	r2, r2, r3
	ldr	r3, [r7, #32]
	str	r2, [r3, #16]
	ldr	r3, [r7, #32]
	ldrh	r3, [r3]
	orr	r3, r3, #4
	uxth	r2, r3
	ldr	r3, [r7, #32]
	strh	r2, [r3]	@ movhi
	b	.L1046
.L1045:
	ldr	r3, [r7, #32]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #12]
	add	r2, r2, r3
	ldr	r3, [r7, #32]
	str	r2, [r3, #20]
	ldr	r3, [r7, #32]
	ldrh	r3, [r3]
	orr	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #32]
	strh	r2, [r3]	@ movhi
.L1046:
	ldr	r3, [r7, #40]
	ldr	r2, [r3, #44]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bne	.L1047
	nop
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #16]
	str	r3, [r7, #40]
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bne	.L1050
	b	.L1044
.L1047:
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #32]
	str	r3, [r7, #32]
	b	.L1049
.L1044:
	ldr	r3, [r7, #44]
	adds	r3, r3, #48
	str	r3, [r7, #44]
.L1036:
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcc	.L1051
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	af_cjk_align_edge_points, .-af_cjk_align_edge_points
	.section	.text.af_cjk_hints_apply,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_cjk_hints_apply, %function
af_cjk_hints_apply:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #4]
	bl	af_glyph_hints_reload(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L1053
	b	.L1054
.L1053:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #2980]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L1055
	ldr	r0, [r7, #8]
	movs	r1, #0
	bl	af_cjk_hints_detect_features(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L1056
	b	.L1054
.L1056:
	ldr	r0, [r7, #8]
	ldr	r1, [r7]
	movs	r2, #0
	bl	af_cjk_hints_compute_blue_edges(PLT)
.L1055:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #2980]
	and	r3, r3, #2
	cmp	r3, #0
	bne	.L1057
	ldr	r0, [r7, #8]
	movs	r1, #1
	bl	af_cjk_hints_detect_features(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L1058
	b	.L1054
.L1058:
	ldr	r0, [r7, #8]
	ldr	r1, [r7]
	movs	r2, #1
	bl	af_cjk_hints_compute_blue_edges(PLT)
.L1057:
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L1059
.L1063:
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L1060
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #2980]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L1061
.L1060:
	ldr	r3, [r7, #16]
	cmp	r3, #1
	bne	.L1062
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #2980]
	and	r3, r3, #2
	cmp	r3, #0
	bne	.L1062
.L1061:
	ldr	r3, [r7, #16]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	af_cjk_hint_edges(PLT)
	ldr	r3, [r7, #16]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	af_cjk_align_edge_points(PLT)
	ldr	r3, [r7, #16]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	af_glyph_hints_align_strong_points(PLT)
	ldr	r3, [r7, #16]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	af_glyph_hints_align_weak_points(PLT)
.L1062:
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L1059:
	ldr	r3, [r7, #16]
	cmp	r3, #1
	ble	.L1063
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #4]
	bl	af_glyph_hints_save(PLT)
.L1054:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	af_cjk_hints_apply, .-af_cjk_hints_apply
	.global	af_cjk_writing_system_class
	.section	.data.rel.ro.local.af_cjk_writing_system_class,"aw",%progbits
	.align	2
	.type	af_cjk_writing_system_class, %object
	.size	af_cjk_writing_system_class, 32
af_cjk_writing_system_class:
	.word	2
	.word	4364
	.word	af_cjk_metrics_init
	.word	af_cjk_metrics_scale
	.word	0
	.word	af_cjk_get_standard_widths
	.word	af_cjk_hints_init
	.word	af_cjk_hints_apply
	.section	.text.af_indic_metrics_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_indic_metrics_init, %function
af_indic_metrics_init:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3, #92]
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldrh	r3, [r3, #68]
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #40]
	ldr	r0, [r7]
	movw	r1, #26979
	movt	r1, 30062
	bl	FT_Select_Charmap(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1066
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3, #92]
	b	.L1067
.L1066:
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	af_cjk_metrics_init_widths(PLT)
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	af_cjk_metrics_check_digits(PLT)
.L1067:
	ldr	r0, [r7]
	ldr	r1, [r7, #12]
	bl	FT_Set_Charmap(PLT)
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	af_indic_metrics_init, .-af_indic_metrics_init
	.section	.text.af_indic_metrics_scale,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_indic_metrics_scale, %function
af_indic_metrics_scale:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	af_cjk_metrics_scale(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	af_indic_metrics_scale, .-af_indic_metrics_scale
	.section	.text.af_indic_hints_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_indic_hints_init, %function
af_indic_hints_init:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	af_cjk_hints_init(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	af_indic_hints_init, .-af_indic_hints_init
	.section	.text.af_indic_hints_apply,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_indic_hints_apply, %function
af_indic_hints_apply:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	af_cjk_hints_apply(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	af_indic_hints_apply, .-af_indic_hints_apply
	.section	.text.af_indic_get_standard_widths,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_indic_get_standard_widths, %function
af_indic_get_standard_widths:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L1075
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #2412]
	ldr	r3, [r7, #8]
	str	r2, [r3]
.L1075:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L1074
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #252]
	ldr	r3, [r7, #4]
	str	r2, [r3]
.L1074:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	af_indic_get_standard_widths, .-af_indic_get_standard_widths
	.global	af_indic_writing_system_class
	.section	.data.rel.ro.local.af_indic_writing_system_class,"aw",%progbits
	.align	2
	.type	af_indic_writing_system_class, %object
	.size	af_indic_writing_system_class, 32
af_indic_writing_system_class:
	.word	3
	.word	4364
	.word	af_indic_metrics_init
	.word	af_indic_metrics_scale
	.word	0
	.word	af_indic_get_standard_widths
	.word	af_indic_hints_init
	.word	af_indic_hints_apply
	.section	.rodata.petite_capitals_from_capitals_coverage,"a",%progbits
	.align	2
	.type	petite_capitals_from_capitals_coverage, %object
	.size	petite_capitals_from_capitals_coverage, 8
petite_capitals_from_capitals_coverage:
	.word	1664246640
	.word	0
	.section	.rodata.small_capitals_from_capitals_coverage,"a",%progbits
	.align	2
	.type	small_capitals_from_capitals_coverage, %object
	.size	small_capitals_from_capitals_coverage, 8
small_capitals_from_capitals_coverage:
	.word	1664250723
	.word	0
	.section	.rodata.ordinals_coverage,"a",%progbits
	.align	2
	.type	ordinals_coverage, %object
	.size	ordinals_coverage, 8
ordinals_coverage:
	.word	1869767790
	.word	0
	.section	.rodata.petite_capitals_coverage,"a",%progbits
	.align	2
	.type	petite_capitals_coverage, %object
	.size	petite_capitals_coverage, 8
petite_capitals_coverage:
	.word	1885561200
	.word	0
	.section	.rodata.ruby_coverage,"a",%progbits
	.align	2
	.type	ruby_coverage, %object
	.size	ruby_coverage, 8
ruby_coverage:
	.word	1920295545
	.word	0
	.section	.rodata.scientific_inferiors_coverage,"a",%progbits
	.align	2
	.type	scientific_inferiors_coverage, %object
	.size	scientific_inferiors_coverage, 8
scientific_inferiors_coverage:
	.word	1936289382
	.word	0
	.section	.rodata.small_capitals_coverage,"a",%progbits
	.align	2
	.type	small_capitals_coverage, %object
	.size	small_capitals_coverage, 8
small_capitals_coverage:
	.word	1936548720
	.word	0
	.section	.rodata.subscript_coverage,"a",%progbits
	.align	2
	.type	subscript_coverage, %object
	.size	subscript_coverage, 8
subscript_coverage:
	.word	1937072755
	.word	0
	.section	.rodata.superscript_coverage,"a",%progbits
	.align	2
	.type	superscript_coverage, %object
	.size	superscript_coverage, 8
superscript_coverage:
	.word	1937076339
	.word	0
	.section	.rodata.titling_coverage,"a",%progbits
	.align	2
	.type	titling_coverage, %object
	.size	titling_coverage, 8
titling_coverage:
	.word	1953068140
	.word	0
	.section	.data.rel.local.coverages,"aw",%progbits
	.align	2
	.type	coverages, %object
	.size	coverages, 44
coverages:
	.word	petite_capitals_from_capitals_coverage
	.word	small_capitals_from_capitals_coverage
	.word	ordinals_coverage
	.word	petite_capitals_coverage
	.word	ruby_coverage
	.word	scientific_inferiors_coverage
	.word	small_capitals_coverage
	.word	subscript_coverage
	.word	superscript_coverage
	.word	titling_coverage
	.word	0
	.section	.rodata.scripts,"a",%progbits
	.align	2
	.type	scripts, %object
	.size	scripts, 100
scripts:
	.word	1098015074
	.word	1132032620
	.word	1147500129
	.word	1198679403
	.word	1214603890
	.word	1281453935
	.word	1281455214
	.word	0
	.word	0
	.word	0
	.word	1415933045
	.word	1416126825
	.word	1113943655
	.word	1198877298
	.word	1198879349
	.word	1265525857
	.word	1281977698
	.word	1298954605
	.word	1332902241
	.word	1399418472
	.word	1400204900
	.word	1400466543
	.word	1415671148
	.word	1416192628
	.word	1214344809
	.section	.text.af_get_coverage,"ax",%progbits
	.align	2
	.global	af_get_coverage
	.thumb
	.thumb_func
	.type	af_get_coverage, %function
af_get_coverage:
	@ args = 0, pretend = 0, frame = 96
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #116
	add	r7, sp, #16
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r4, .L1111
.LPIC9:
	add	r4, pc
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #40]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L1078
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L1078
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L1079
.L1078:
	movs	r3, #6
	b	.L1110
.L1079:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	mov	r0, r3
	bl	hb_font_get_face(PLT)
	str	r0, [r7, #72]
	bl	hb_set_create(PLT)
	str	r0, [r7, #68]
	bl	hb_set_create(PLT)
	str	r0, [r7, #64]
	bl	hb_set_create(PLT)
	str	r0, [r7, #60]
	bl	hb_set_create(PLT)
	str	r0, [r7, #56]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #16]
	ldr	r3, .L1111+4
.LPIC7:
	add	r3, pc
	ldr	r3, [r3, r2, lsl #2]
	str	r3, [r7, #52]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #8]
	ldr	r3, .L1111+8
.LPIC8:
	add	r3, pc
	ldr	r3, [r3, r2, lsl #2]
	str	r3, [r7, #48]
	add	r2, r7, #28
	add	r3, r7, #28
	adds	r3, r3, #4
	ldr	r0, [r7, #48]
	mov	r1, r2
	mov	r2, r3
	bl	hb_ot_tags_from_script(PLT)
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #252]
	ldr	r3, [r3, #16]
	cmp	r2, r3
	bne	.L1081
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #16]
	cmp	r3, #10
	bne	.L1081
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L1082
	movw	r3, #19540
	movt	r3, 17478
	str	r3, [r7, #28]
	b	.L1083
.L1082:
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bne	.L1084
	movw	r3, #19540
	movt	r3, 17478
	str	r3, [r7, #32]
	b	.L1083
.L1084:
	ldr	r2, [r7, #32]
	movw	r3, #19540
	movt	r3, 17478
	cmp	r2, r3
	beq	.L1083
	movw	r3, #19540
	movt	r3, 17478
	str	r3, [r7, #36]
	b	.L1085
.L1083:
	b	.L1085
.L1081:
	ldr	r2, [r7, #32]
	movw	r3, #19540
	movt	r3, 17478
	cmp	r2, r3
	bne	.L1085
	movs	r3, #0
	str	r3, [r7, #32]
.L1085:
	add	r3, r7, #28
	ldr	r2, [r7, #52]
	str	r2, [sp]
	ldr	r2, [r7, #68]
	str	r2, [sp, #4]
	ldr	r0, [r7, #72]
	movw	r1, #21826
	movt	r1, 18259
	mov	r2, r3
	movs	r3, #0
	bl	hb_ot_layout_collect_lookups(PLT)
	ldr	r0, [r7, #68]
	bl	hb_set_is_empty(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1086
	b	.L1087
.L1086:
	add	r3, r7, #28
	ldr	r2, [r7, #52]
	str	r2, [sp]
	ldr	r2, [r7, #60]
	str	r2, [sp, #4]
	ldr	r0, [r7, #72]
	movw	r1, #20307
	movt	r1, 18256
	mov	r2, r3
	movs	r3, #0
	bl	hb_ot_layout_collect_lookups(PLT)
	mov	r3, #-1
	str	r3, [r7, #24]
	b	.L1088
.L1089:
	ldr	r3, [r7, #24]
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	ldr	r2, [r7, #64]
	str	r2, [sp, #8]
	ldr	r0, [r7, #72]
	movw	r1, #21826
	movt	r1, 18259
	mov	r2, r3
	movs	r3, #0
	bl	hb_ot_layout_lookup_collect_glyphs(PLT)
.L1088:
	add	r3, r7, #24
	ldr	r0, [r7, #68]
	mov	r1, r3
	bl	hb_set_next(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L1089
	mov	r3, #-1
	str	r3, [r7, #24]
	b	.L1090
.L1091:
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #56]
	str	r2, [sp]
	movs	r2, #0
	str	r2, [sp, #4]
	movs	r2, #0
	str	r2, [sp, #8]
	ldr	r0, [r7, #72]
	movw	r1, #20307
	movt	r1, 18256
	mov	r2, r3
	movs	r3, #0
	bl	hb_ot_layout_lookup_collect_glyphs(PLT)
.L1090:
	add	r3, r7, #24
	ldr	r0, [r7, #60]
	mov	r1, r3
	bl	hb_set_next(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L1091
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #16]
	cmp	r3, #10
	beq	.L1092
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	lsls	r2, r3, #3
	ldr	r3, .L1111+12
	ldr	r3, [r4, r3]
	add	r3, r3, r2
	str	r3, [r7, #92]
	movs	r3, #0
	strb	r3, [r7, #91]
	b	.L1093
.L1105:
	ldr	r3, [r7, #92]
	ldr	r2, [r3]
	ldr	r3, .L1111+16
	ldr	r3, [r4, r3]
	add	r3, r3, r2
	str	r3, [r7, #84]
	b	.L1094
.L1104:
	ldr	r3, [r7, #84]
	adds	r2, r3, #1
	str	r2, [r7, #84]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #80]
	ldr	r3, [r7, #80]
	cmp	r3, #127
	bls	.L1095
	ldr	r3, [r7, #80]
	cmp	r3, #223
	bhi	.L1096
	movs	r3, #1
	str	r3, [r7, #76]
	ldr	r3, [r7, #80]
	and	r3, r3, #31
	str	r3, [r7, #80]
	b	.L1097
.L1096:
	ldr	r3, [r7, #80]
	cmp	r3, #239
	bhi	.L1098
	movs	r3, #2
	str	r3, [r7, #76]
	ldr	r3, [r7, #80]
	and	r3, r3, #15
	str	r3, [r7, #80]
	b	.L1097
.L1098:
	movs	r3, #3
	str	r3, [r7, #76]
	ldr	r3, [r7, #80]
	and	r3, r3, #7
	str	r3, [r7, #80]
	b	.L1099
.L1097:
	b	.L1099
.L1100:
	ldr	r3, [r7, #80]
	lsls	r2, r3, #6
	ldr	r3, [r7, #84]
	adds	r1, r3, #1
	str	r1, [r7, #84]
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #63
	orrs	r3, r3, r2
	str	r3, [r7, #80]
	ldr	r3, [r7, #76]
	subs	r3, r3, #1
	str	r3, [r7, #76]
.L1099:
	ldr	r3, [r7, #76]
	cmp	r3, #0
	bne	.L1100
.L1095:
	mov	r3, #-1
	str	r3, [r7, #24]
	b	.L1101
.L1103:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r1, [r7, #80]
	bl	FT_Get_Char_Index(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r2, [r7, #24]
	add	r3, r7, #20
	movs	r1, #1
	str	r1, [sp]
	ldr	r0, [r7, #72]
	mov	r1, r2
	mov	r2, r3
	movs	r3, #1
	bl	hb_ot_layout_lookup_would_substitute(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1101
	movs	r3, #1
	strb	r3, [r7, #91]
	b	.L1094
.L1101:
	add	r3, r7, #24
	ldr	r0, [r7, #68]
	mov	r1, r3
	bl	hb_set_next(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L1103
.L1094:
	ldr	r3, [r7, #84]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L1104
	ldr	r3, [r7, #92]
	adds	r3, r3, #8
	str	r3, [r7, #92]
.L1093:
	ldr	r3, [r7, #92]
	ldr	r3, [r3]
	cmp	r3, #1040
	bne	.L1105
	ldrb	r3, [r7, #91]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L1092
	b	.L1087
.L1092:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #16]
	cmp	r3, #10
	beq	.L1106
	ldr	r0, [r7, #64]
	ldr	r1, [r7, #56]
	bl	hb_set_subtract(PLT)
.L1106:
	mov	r3, #-1
	str	r3, [r7, #24]
	b	.L1107
.L1109:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bhi	.L1108
	b	.L1107
.L1108:
	ldr	r3, [r7, #24]
	lsls	r3, r3, #1
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrh	r2, [r3]
	movw	r3, #16383
	cmp	r2, r3
	bne	.L1107
	ldr	r3, [r7, #24]
	lsls	r3, r3, #1
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldr	r2, [r7, #8]
	ldr	r2, [r2]
	uxth	r2, r2
	strh	r2, [r3]	@ movhi
.L1107:
	add	r3, r7, #24
	ldr	r0, [r7, #64]
	mov	r1, r3
	bl	hb_set_next(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L1109
.L1087:
	ldr	r0, [r7, #68]
	bl	hb_set_destroy(PLT)
	ldr	r0, [r7, #64]
	bl	hb_set_destroy(PLT)
	ldr	r0, [r7, #60]
	bl	hb_set_destroy(PLT)
	ldr	r0, [r7, #56]
	bl	hb_set_destroy(PLT)
	movs	r3, #0
.L1110:
	mov	r0, r3
	adds	r7, r7, #100
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L1112:
	.align	2
.L1111:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC9+4)
	.word	coverages-(.LPIC7+4)
	.word	scripts-(.LPIC8+4)
	.word	af_blue_stringsets(GOT)
	.word	af_blue_strings(GOT)
	.size	af_get_coverage, .-af_get_coverage
	.section	.rodata.petite_capitals_from_capitals_feature,"a",%progbits
	.align	2
	.type	petite_capitals_from_capitals_feature, %object
	.size	petite_capitals_from_capitals_feature, 16
petite_capitals_from_capitals_feature:
	.word	1664246640
	.word	1
	.word	0
	.word	-1
	.section	.rodata.small_capitals_from_capitals_feature,"a",%progbits
	.align	2
	.type	small_capitals_from_capitals_feature, %object
	.size	small_capitals_from_capitals_feature, 16
small_capitals_from_capitals_feature:
	.word	1664250723
	.word	1
	.word	0
	.word	-1
	.section	.rodata.ordinals_feature,"a",%progbits
	.align	2
	.type	ordinals_feature, %object
	.size	ordinals_feature, 16
ordinals_feature:
	.word	1869767790
	.word	1
	.word	0
	.word	-1
	.section	.rodata.petite_capitals_feature,"a",%progbits
	.align	2
	.type	petite_capitals_feature, %object
	.size	petite_capitals_feature, 16
petite_capitals_feature:
	.word	1885561200
	.word	1
	.word	0
	.word	-1
	.section	.rodata.ruby_feature,"a",%progbits
	.align	2
	.type	ruby_feature, %object
	.size	ruby_feature, 16
ruby_feature:
	.word	1920295545
	.word	1
	.word	0
	.word	-1
	.section	.rodata.scientific_inferiors_feature,"a",%progbits
	.align	2
	.type	scientific_inferiors_feature, %object
	.size	scientific_inferiors_feature, 16
scientific_inferiors_feature:
	.word	1936289382
	.word	1
	.word	0
	.word	-1
	.section	.rodata.small_capitals_feature,"a",%progbits
	.align	2
	.type	small_capitals_feature, %object
	.size	small_capitals_feature, 16
small_capitals_feature:
	.word	1936548720
	.word	1
	.word	0
	.word	-1
	.section	.rodata.subscript_feature,"a",%progbits
	.align	2
	.type	subscript_feature, %object
	.size	subscript_feature, 16
subscript_feature:
	.word	1937072755
	.word	1
	.word	0
	.word	-1
	.section	.rodata.superscript_feature,"a",%progbits
	.align	2
	.type	superscript_feature, %object
	.size	superscript_feature, 16
superscript_feature:
	.word	1937076339
	.word	1
	.word	0
	.word	-1
	.section	.rodata.titling_feature,"a",%progbits
	.align	2
	.type	titling_feature, %object
	.size	titling_feature, 16
titling_feature:
	.word	1953068140
	.word	1
	.word	0
	.word	-1
	.section	.data.rel.local.features,"aw",%progbits
	.align	2
	.type	features, %object
	.size	features, 44
features:
	.word	petite_capitals_from_capitals_feature
	.word	small_capitals_from_capitals_feature
	.word	ordinals_feature
	.word	petite_capitals_feature
	.word	ruby_feature
	.word	scientific_inferiors_feature
	.word	small_capitals_feature
	.word	subscript_feature
	.word	superscript_feature
	.word	titling_feature
	.word	0
	.section	.text.af_get_char_index,"ax",%progbits
	.align	2
	.global	af_get_char_index
	.thumb
	.thumb_func
	.type	af_get_char_index, %function
af_get_char_index:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #72
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L1114
	movs	r3, #6
	b	.L1115
.L1114:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #36]
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r1, [r7, #8]
	bl	FT_Get_Char_Index(PLT)
	str	r0, [r7, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	ldr	r2, [r3, #16]
	ldr	r3, .L1120
.LPIC10:
	add	r3, pc
	ldr	r3, [r3, r2, lsl #2]
	str	r3, [r7, #52]
	ldr	r3, [r7, #52]
	cmp	r3, #0
	beq	.L1116
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #36]
	ldr	r3, [r3]
	ldrh	r3, [r3, #68]
	str	r3, [r7, #48]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #36]
	ldr	r3, [r3, #12]
	str	r3, [r7, #44]
	bl	hb_buffer_create(PLT)
	str	r0, [r7, #40]
	ldr	r3, [r7, #8]
	str	r3, [r7, #24]
	ldr	r0, [r7, #44]
	ldr	r1, [r7, #48]
	ldr	r2, [r7, #48]
	bl	hb_font_set_scale(PLT)
	ldr	r0, [r7, #40]
	movs	r1, #4
	bl	hb_buffer_set_direction(PLT)
	ldr	r3, [r7, #56]
	ldr	r2, [r3, #8]
	ldr	r3, .L1120+4
.LPIC11:
	add	r3, pc
	ldr	r3, [r3, r2, lsl #2]
	ldr	r0, [r7, #40]
	mov	r1, r3
	bl	hb_buffer_set_script(PLT)
	add	r3, r7, #24
	movs	r2, #1
	str	r2, [sp]
	ldr	r0, [r7, #40]
	mov	r1, r3
	movs	r2, #1
	movs	r3, #0
	bl	hb_buffer_add_utf32(PLT)
	ldr	r0, [r7, #44]
	ldr	r1, [r7, #40]
	ldr	r2, [r7, #52]
	movs	r3, #1
	bl	hb_shape(PLT)
	add	r3, r7, #20
	ldr	r0, [r7, #40]
	mov	r1, r3
	bl	hb_buffer_get_glyph_infos(PLT)
	str	r0, [r7, #36]
	add	r3, r7, #20
	ldr	r0, [r7, #40]
	mov	r1, r3
	bl	hb_buffer_get_glyph_positions(PLT)
	str	r0, [r7, #32]
	ldr	r3, [r7, #36]
	ldr	r3, [r3]
	str	r3, [r7, #28]
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bne	.L1117
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3]
	b	.L1118
.L1117:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #28]
	str	r2, [r3]
	ldr	r3, [r7, #32]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	str	r2, [r3]
.L1118:
	ldr	r0, [r7, #40]
	bl	hb_buffer_destroy(PLT)
	b	.L1119
.L1116:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #60]
	str	r2, [r3]
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3]
.L1119:
	movs	r3, #0
.L1115:
	mov	r0, r3
	adds	r7, r7, #64
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L1121:
	.align	2
.L1120:
	.word	features-(.LPIC10+4)
	.word	scripts-(.LPIC11+4)
	.size	af_get_char_index, .-af_get_char_index
	.section	.text.af_loader_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_loader_init, %function
af_loader_init:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	movs	r1, #0
	movs	r2, #60
	bl	memset(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #8]
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	af_loader_init, .-af_loader_init
	.section	.text.af_loader_reset,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_loader_reset, %function
af_loader_reset:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #116]
	ldr	r3, [r7, #12]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L1124
	ldr	r3, [r7, #12]
	adds	r3, r3, #4
	ldr	r0, [r7, #4]
	mov	r1, r3
	ldr	r2, [r7, #8]
	bl	af_face_globals_new(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L1124
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	str	r2, [r3, #116]
	ldr	r3, [r7, #4]
	ldr	r2, .L1126
.LPIC12:
	add	r2, pc
	str	r2, [r3, #120]
.L1124:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L1127:
	.align	2
.L1126:
	.word	af_face_globals_free-(.LPIC12+4)
	.size	af_loader_reset, .-af_loader_reset
	.section	.text.af_loader_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_loader_done, %function
af_loader_done:
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
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	af_loader_done, .-af_loader_done
	.section	.rodata
	.align	2
.LC0:
	.word	65536
	.word	0
	.word	0
	.word	65536
	.section	.text.af_loader_load_g,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_loader_load_g, %function
af_loader_load_g:
	@ args = 0, pretend = 0, frame = 208
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #208
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r4, .L1165
.LPIC14:
	add	r4, pc
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #252]
	str	r3, [r7, #192]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #188]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	str	r3, [r7, #184]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	str	r3, [r7, #180]
	ldr	r3, [r7, #188]
	ldr	r3, [r3, #84]
	str	r3, [r7, #176]
	ldr	r3, [r7, #176]
	ldr	r3, [r3, #156]
	str	r3, [r7, #172]
	ldr	r3, [r7, #172]
	ldr	r3, [r3]
	str	r3, [r7, #168]
	ldr	r3, [r7]
	orr	r3, r3, #8192
	str	r3, [r7, #164]
	ldr	r0, [r7, #188]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #164]
	bl	FT_Load_Glyph(PLT)
	str	r0, [r7, #204]
	ldr	r3, [r7, #204]
	cmp	r3, #0
	beq	.L1130
	b	.L1131
.L1130:
	ldr	r3, [r7, #192]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L1132
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	str	r3, [r7, #160]
	movs	r3, #0
	str	r3, [r7, #76]
	movs	r3, #0
	str	r3, [r7, #72]
	ldr	r3, [r7, #188]
	ldr	r3, [r3, #88]
	ldrh	r2, [r3, #12]
	ldr	r3, [r7, #160]
	ldrh	r3, [r3, #228]
	cmp	r2, r3
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	strb	r3, [r7, #159]
	ldr	r3, [r7, #188]
	ldrh	r3, [r3, #68]
	lsls	r3, r3, #16
	str	r3, [r7, #152]
	mov	r0, #65536000
	ldr	r1, [r7, #152]
	bl	FT_DivFix(PLT)
	str	r0, [r7, #148]
	ldr	r3, .L1165+4
.LPIC13:
	add	r3, pc
	add	r5, r7, #56
	ldmia	r3, {r0, r1, r2, r3}
	stmia	r5, {r0, r1, r2, r3}
	ldr	r3, [r7, #188]
	ldrh	r3, [r3, #68]
	cmp	r3, #0
	bne	.L1133
	b	.L1132
.L1133:
	ldr	r3, [r7, #184]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, .L1165+8
	ldr	r3, [r4, r3]
	ldr	r3, [r3, r2, lsl #2]
	str	r3, [r7, #144]
	ldr	r3, [r7, #144]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L1135
	ldr	r3, [r7, #144]
	ldr	r3, [r3, #20]
	add	r1, r7, #72
	add	r2, r7, #76
	ldr	r0, [r7, #184]
	blx	r3
	ldrb	r3, [r7, #159]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L1137
	b	.L1163
.L1135:
	b	.L1132
.L1163:
	ldr	r3, [r7, #76]
	cmp	r3, #0
	ble	.L1138
	ldr	r3, [r7, #160]
	ldr	r2, [r3, #232]
	ldr	r3, [r7, #76]
	cmp	r2, r3
	beq	.L1138
.L1137:
	ldr	r3, [r7, #76]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #188]
	mov	r2, r3
	bl	af_loader_compute_darkening(PLT)
	mov	r3, r0
	lsls	r3, r3, #16
	str	r3, [r7, #140]
	ldr	r3, [r7, #188]
	ldr	r3, [r3, #88]
	ldr	r3, [r3, #16]
	ldr	r0, [r7, #140]
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r3, r0
	mov	r0, r3
	ldr	r1, [r7, #148]
	bl	FT_DivFix(PLT)
	str	r0, [r7, #136]
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #160]
	str	r2, [r3, #232]
	ldr	r3, [r7, #188]
	ldr	r3, [r3, #88]
	ldrh	r2, [r3, #12]
	ldr	r3, [r7, #160]
	strh	r2, [r3, #228]	@ movhi
	ldr	r3, [r7, #136]
	add	r3, r3, #32768
	lsrs	r3, r3, #16
	uxth	r3, r3
	sxth	r2, r3
	ldr	r3, [r7, #160]
	str	r2, [r3, #240]
.L1138:
	ldrb	r3, [r7, #159]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L1139
	ldr	r3, [r7, #72]
	cmp	r3, #0
	ble	.L1140
	ldr	r3, [r7, #160]
	ldr	r2, [r3, #236]
	ldr	r3, [r7, #72]
	cmp	r2, r3
	beq	.L1140
.L1139:
	ldr	r3, [r7, #72]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #188]
	mov	r2, r3
	bl	af_loader_compute_darkening(PLT)
	mov	r3, r0
	lsls	r3, r3, #16
	str	r3, [r7, #132]
	ldr	r3, [r7, #188]
	ldr	r3, [r3, #88]
	ldr	r3, [r3, #20]
	ldr	r0, [r7, #132]
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r3, r0
	mov	r0, r3
	ldr	r1, [r7, #148]
	bl	FT_DivFix(PLT)
	str	r0, [r7, #128]
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #160]
	str	r2, [r3, #236]
	ldr	r3, [r7, #188]
	ldr	r3, [r3, #88]
	ldrh	r2, [r3, #12]
	ldr	r3, [r7, #160]
	strh	r2, [r3, #228]	@ movhi
	ldr	r3, [r7, #128]
	add	r3, r3, #32768
	lsrs	r3, r3, #16
	uxth	r3, r3
	sxth	r2, r3
	ldr	r3, [r7, #160]
	str	r2, [r3, #244]
	ldr	r3, [r7, #132]
	rsb	r3, r3, #-16777216
	add	r3, r3, #16252928
	ldr	r2, [r7, #152]
	add	r3, r3, r2
	mov	r0, r3
	ldr	r1, [r7, #152]
	bl	FT_DivFix(PLT)
	mov	r2, r0
	ldr	r3, [r7, #160]
	str	r2, [r3, #248]
.L1140:
	ldr	r3, [r7, #176]
	add	r1, r3, #108
	ldr	r3, [r7, #160]
	ldr	r2, [r3, #240]
	ldr	r3, [r7, #160]
	ldr	r3, [r3, #244]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	FT_Outline_EmboldenXY(PLT)
	ldr	r3, [r7, #160]
	ldr	r3, [r3, #248]
	str	r3, [r7, #68]
	ldr	r3, [r7, #176]
	add	r2, r3, #108
	add	r3, r7, #56
	mov	r0, r2
	mov	r1, r3
	bl	FT_Outline_Transform(PLT)
.L1132:
	ldr	r3, [r7, #172]
	ldrb	r2, [r3, #8]	@ zero_extendqisi2
	ldr	r3, [r7, #12]
	strb	r2, [r3, #16]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1141
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #172]
	add	r5, r2, #20
	adds	r3, r3, #12
	ldmia	r3, {r0, r1, r2, r3}
	stmia	r5, {r0, r1, r2, r3}
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #172]
	adds	r3, r3, #36
	adds	r2, r2, #28
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #12]
	add	r5, r7, #40
	adds	r3, r3, #20
	ldmia	r3, {r0, r1, r2, r3}
	stmia	r5, {r0, r1, r2, r3}
	add	r3, r7, #40
	mov	r0, r3
	bl	FT_Matrix_Invert(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L1141
	ldr	r3, [r7, #12]
	add	r2, r3, #36
	add	r3, r7, #40
	mov	r0, r2
	mov	r1, r3
	bl	FT_Vector_Transform(PLT)
.L1141:
	ldr	r3, [r7, #176]
	ldr	r2, [r3, #72]
	movw	r3, #29804
	movt	r3, 28533
	cmp	r2, r3
	bne	.L1164
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1145
	ldr	r3, [r7, #176]
	add	r1, r3, #108
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #40]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	FT_Outline_Translate(PLT)
.L1145:
	ldr	r3, [r7, #180]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	str	r2, [r3, #44]
	ldr	r3, [r7, #180]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #12]
	str	r2, [r3, #48]
	ldr	r3, [r7, #176]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #180]
	ldr	r3, [r3, #4]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #180]
	ldr	r3, [r3, #8]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #52]
	ldr	r3, [r7, #180]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #12]
	str	r2, [r3, #56]
	ldr	r3, [r7, #176]
	ldrh	r3, [r3, #110]
	cmp	r3, #0
	bne	.L1146
	b	.L1147
.L1146:
	ldr	r3, [r7, #184]
	ldr	r3, [r3]
	str	r3, [r7, #124]
	ldr	r3, [r7, #124]
	ldr	r2, [r3, #4]
	ldr	r3, .L1165+8
	ldr	r3, [r4, r3]
	ldr	r3, [r3, r2, lsl #2]
	str	r3, [r7, #120]
	ldr	r3, [r7, #120]
	ldr	r3, [r3, #28]
	cmp	r3, #0
	beq	.L1148
	ldr	r3, [r7, #120]
	ldr	r4, [r3, #28]
	ldr	r3, [r7, #168]
	adds	r3, r3, #20
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #180]
	mov	r2, r3
	ldr	r3, [r7, #184]
	blx	r4
.L1148:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #20]
	cmp	r3, #1
	beq	.L1149
	ldr	r3, [r7, #180]
	adds	r3, r3, #44
	str	r3, [r7, #116]
	ldr	r3, [r7, #116]
	ldr	r3, [r3, #20]
	str	r3, [r7, #112]
	ldr	r3, [r7, #116]
	ldr	r3, [r3, #12]
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #4
	subs	r3, r3, #48
	ldr	r2, [r7, #112]
	add	r3, r3, r2
	str	r3, [r7, #108]
	ldr	r3, [r7, #116]
	ldr	r3, [r3, #12]
	cmp	r3, #1
	ble	.L1150
	ldr	r3, [r7, #180]
	ldr	r3, [r3, #2980]
	and	r3, r3, #4
	cmp	r3, #0
	bne	.L1150
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #52]
	ldr	r3, [r7, #108]
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	str	r3, [r7, #104]
	ldr	r3, [r7, #112]
	ldr	r3, [r3, #4]
	str	r3, [r7, #100]
	ldr	r3, [r7, #112]
	ldr	r3, [r3, #8]
	str	r3, [r7, #96]
	ldr	r2, [r7, #96]
	ldr	r3, [r7, #100]
	subs	r3, r2, r3
	str	r3, [r7, #200]
	ldr	r3, [r7, #108]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #104]
	add	r3, r3, r2
	str	r3, [r7, #196]
	ldr	r3, [r7, #100]
	cmp	r3, #23
	bgt	.L1151
	ldr	r3, [r7, #200]
	subs	r3, r3, #8
	str	r3, [r7, #200]
.L1151:
	ldr	r3, [r7, #104]
	cmp	r3, #23
	bgt	.L1152
	ldr	r3, [r7, #196]
	adds	r3, r3, #8
	str	r3, [r7, #196]
.L1152:
	ldr	r3, [r7, #200]
	adds	r3, r3, #32
	bic	r2, r3, #63
	ldr	r3, [r7, #12]
	str	r2, [r3, #44]
	ldr	r3, [r7, #196]
	adds	r3, r3, #32
	bic	r2, r3, #63
	ldr	r3, [r7, #12]
	str	r2, [r3, #52]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #44]
	ldr	r3, [r7, #96]
	cmp	r2, r3
	blt	.L1153
	ldr	r3, [r7, #100]
	cmp	r3, #0
	ble	.L1153
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	sub	r2, r3, #64
	ldr	r3, [r7, #12]
	str	r2, [r3, #44]
.L1153:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #52]
	ldr	r3, [r7, #108]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	bgt	.L1154
	ldr	r3, [r7, #104]
	cmp	r3, #0
	ble	.L1154
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	add	r2, r3, #64
	ldr	r3, [r7, #12]
	str	r2, [r3, #52]
.L1154:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #44]
	ldr	r3, [r7, #200]
	subs	r2, r2, r3
	ldr	r3, [r7, #176]
	str	r2, [r3, #144]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #52]
	ldr	r3, [r7, #196]
	subs	r2, r2, r3
	ldr	r3, [r7, #176]
	str	r2, [r3, #148]
	b	.L1156
.L1150:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	str	r3, [r7, #92]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	str	r3, [r7, #88]
	ldr	r3, [r7, #92]
	adds	r3, r3, #32
	bic	r2, r3, #63
	ldr	r3, [r7, #12]
	str	r2, [r3, #44]
	ldr	r3, [r7, #88]
	adds	r3, r3, #32
	bic	r2, r3, #63
	ldr	r3, [r7, #12]
	str	r2, [r3, #52]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #44]
	ldr	r3, [r7, #92]
	subs	r2, r2, r3
	ldr	r3, [r7, #176]
	str	r2, [r3, #144]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #52]
	ldr	r3, [r7, #88]
	subs	r2, r2, r3
	ldr	r3, [r7, #176]
	str	r2, [r3, #148]
	b	.L1156
.L1149:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	str	r3, [r7, #84]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	str	r3, [r7, #80]
	ldr	r3, [r7, #180]
	ldr	r2, [r3, #2992]
	ldr	r3, [r7, #84]
	add	r3, r3, r2
	adds	r3, r3, #32
	bic	r2, r3, #63
	ldr	r3, [r7, #12]
	str	r2, [r3, #44]
	ldr	r3, [r7, #180]
	ldr	r2, [r3, #2996]
	ldr	r3, [r7, #80]
	add	r3, r3, r2
	adds	r3, r3, #32
	bic	r2, r3, #63
	ldr	r3, [r7, #12]
	str	r2, [r3, #52]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #44]
	ldr	r3, [r7, #84]
	subs	r2, r2, r3
	ldr	r3, [r7, #176]
	str	r2, [r3, #144]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #52]
	ldr	r3, [r7, #80]
	subs	r2, r2, r3
	ldr	r3, [r7, #176]
	str	r2, [r3, #148]
	b	.L1147
.L1156:
	b	.L1147
.L1164:
	movs	r3, #7
	str	r3, [r7, #204]
.L1147:
	ldr	r3, [r7, #176]
	ldr	r2, [r3, #44]
	ldr	r3, [r7, #176]
	ldr	r3, [r3, #32]
	subs	r3, r2, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #176]
	ldr	r2, [r3, #48]
	ldr	r3, [r7, #176]
	ldr	r3, [r3, #36]
	subs	r3, r2, r3
	str	r3, [r7, #20]
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #184]
	ldr	r3, [r3, #8]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #184]
	ldr	r3, [r3, #12]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1157
	ldr	r3, [r7, #168]
	add	r2, r3, #20
	ldr	r3, [r7, #12]
	adds	r3, r3, #20
	mov	r0, r2
	mov	r1, r3
	bl	FT_Outline_Transform(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #20
	add	r2, r7, #16
	mov	r0, r2
	mov	r1, r3
	bl	FT_Vector_Transform(PLT)
.L1157:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L1158
	ldr	r3, [r7, #168]
	add	r2, r3, #20
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	negs	r3, r3
	mov	r0, r2
	mov	r1, r3
	movs	r2, #0
	bl	FT_Outline_Translate(PLT)
.L1158:
	ldr	r3, [r7, #168]
	add	r2, r3, #20
	add	r3, r7, #24
	mov	r0, r2
	mov	r1, r3
	bl	FT_Outline_Get_CBox(PLT)
	ldr	r3, [r7, #24]
	bic	r3, r3, #63
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	bic	r3, r3, #63
	str	r3, [r7, #28]
	ldr	r3, [r7, #32]
	adds	r3, r3, #63
	bic	r3, r3, #63
	str	r3, [r7, #32]
	ldr	r3, [r7, #36]
	adds	r3, r3, #63
	bic	r3, r3, #63
	str	r3, [r7, #36]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #24]
	subs	r2, r2, r3
	ldr	r3, [r7, #176]
	str	r2, [r3, #24]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #28]
	subs	r2, r2, r3
	ldr	r3, [r7, #176]
	str	r2, [r3, #28]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #176]
	str	r2, [r3, #32]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #176]
	str	r2, [r3, #36]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #16]
	add	r3, r3, r2
	bic	r2, r3, #63
	ldr	r3, [r7, #176]
	str	r2, [r3, #44]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	bic	r2, r3, #63
	ldr	r3, [r7, #176]
	str	r2, [r3, #48]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #20]
	cmp	r3, #1
	beq	.L1159
	ldr	r3, [r7, #176]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #8]
	and	r3, r3, #4
	cmp	r3, #0
	bne	.L1160
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	af_face_globals_is_digit(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1159
	ldr	r3, [r7, #184]
	ldrb	r3, [r3, #32]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1159
.L1160:
	ldr	r3, [r7, #176]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #184]
	ldr	r3, [r3, #8]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #176]
	str	r2, [r3, #40]
	ldr	r3, [r7, #176]
	movs	r2, #0
	str	r2, [r3, #144]
	ldr	r3, [r7, #176]
	movs	r2, #0
	str	r2, [r3, #148]
	b	.L1161
.L1159:
	ldr	r3, [r7, #176]
	ldr	r3, [r3, #40]
	cmp	r3, #0
	beq	.L1161
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #52]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	subs	r2, r2, r3
	ldr	r3, [r7, #176]
	str	r2, [r3, #40]
.L1161:
	ldr	r3, [r7, #176]
	ldr	r2, [r3, #52]
	ldr	r3, [r7, #184]
	ldr	r3, [r3, #12]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #176]
	str	r2, [r3, #52]
	ldr	r3, [r7, #176]
	ldr	r3, [r3, #40]
	adds	r3, r3, #32
	bic	r2, r3, #63
	ldr	r3, [r7, #176]
	str	r2, [r3, #40]
	ldr	r3, [r7, #176]
	ldr	r3, [r3, #52]
	adds	r3, r3, #32
	bic	r2, r3, #63
	ldr	r3, [r7, #176]
	str	r2, [r3, #52]
	ldr	r2, [r7, #176]
	movw	r3, #29804
	movt	r3, 28533
	str	r3, [r2, #72]
.L1131:
	ldr	r3, [r7, #204]
	mov	r0, r3
	adds	r7, r7, #208
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L1166:
	.align	2
.L1165:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC14+4)
	.word	.LC0-(.LPIC13+4)
	.word	af_writing_system_classes(GOT)
	.size	af_loader_load_g, .-af_loader_load_g
	.section	.text.af_loader_load_glyph,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_loader_load_glyph, %function
af_loader_load_glyph:
	@ args = 4, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #72
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r4, .L1177
.LPIC15:
	add	r4, pc
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	str	r3, [r7, #64]
	ldr	r3, [r7, #64]
	cmp	r3, #0
	bne	.L1168
	movs	r3, #36
	b	.L1176
.L1168:
	add	r3, r7, #24
	mov	r0, r3
	movs	r1, #0
	movs	r2, #28
	bl	memset(PLT)
	ldr	r3, [r7, #4]
	str	r3, [r7, #24]
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #16]
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #36]
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #20]
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #40]
	ldr	r3, [r7, #88]
	asrs	r3, r3, #16
	and	r3, r3, #15
	str	r3, [r7, #44]
	movs	r3, #0
	str	r3, [r7, #48]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	af_loader_reset(PLT)
	str	r0, [r7, #68]
	ldr	r3, [r7, #68]
	cmp	r3, #0
	bne	.L1170
	movs	r3, #36
	str	r3, [r7, #60]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	add	r3, r7, #20
	mov	r0, r2
	ldr	r1, [r7]
	ldr	r2, [r7, #60]
	bl	af_face_globals_get_metrics(PLT)
	str	r0, [r7, #68]
	ldr	r3, [r7, #68]
	cmp	r3, #0
	bne	.L1170
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	ldr	r2, [r3, #4]
	ldr	r3, .L1177+4
	ldr	r3, [r4, r3]
	ldr	r3, [r3, r2, lsl #2]
	str	r3, [r7, #52]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #12]
	str	r2, [r3, #12]
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L1172
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #12]
	ldr	r1, [r7, #20]
	add	r2, r7, #24
	mov	r0, r1
	mov	r1, r2
	blx	r3
	b	.L1173
.L1172:
	ldr	r3, [r7, #20]
	adds	r4, r3, #4
	add	r5, r7, #24
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5, {r0, r1, r2}
	stmia	r4, {r0, r1, r2}
.L1173:
	ldr	r3, [r7, #88]
	orr	r3, r3, #2048
	orr	r3, r3, #1
	str	r3, [r7, #88]
	ldr	r3, [r7, #88]
	bic	r3, r3, #4
	str	r3, [r7, #88]
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L1174
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #24]
	ldr	r2, [r7, #12]
	ldr	r1, [r2, #8]
	ldr	r2, [r7, #20]
	mov	r0, r1
	mov	r1, r2
	blx	r3
	str	r0, [r7, #68]
	ldr	r3, [r7, #68]
	cmp	r3, #0
	beq	.L1174
	b	.L1170
.L1174:
	add	r3, r7, #24
	ldr	r0, [r7, #12]
	mov	r1, r3
	ldr	r2, [r7]
	ldr	r3, [r7, #88]
	bl	af_loader_load_g(PLT)
	str	r0, [r7, #68]
.L1170:
	ldr	r3, [r7, #68]
.L1176:
	mov	r0, r3
	adds	r7, r7, #72
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L1178:
	.align	2
.L1177:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC15+4)
	.word	af_writing_system_classes(GOT)
	.size	af_loader_load_glyph, .-af_loader_load_glyph
	.section	.text.af_loader_compute_darkening,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_loader_compute_darkening, %function
af_loader_compute_darkening:
	@ args = 0, pretend = 0, frame = 120
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #124
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #252]
	str	r3, [r7, #104]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #88]
	ldrh	r3, [r3, #12]
	lsls	r3, r3, #16
	cmp	r3, #262144
	it	lt
	movlt	r3, #262144
	str	r3, [r7, #100]
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #68]	@ movhi
	strh	r3, [r7, #98]	@ movhi
	ldrh	r3, [r7, #98]
	lsls	r3, r3, #16
	mov	r0, #65536000
	mov	r1, r3
	bl	FT_DivFix(PLT)
	str	r0, [r7, #92]
	ldr	r2, [r7, #92]
	movw	r3, #654
	cmp	r2, r3
	bgt	.L1180
	movs	r3, #0
	b	.L1181
.L1180:
	ldr	r3, [r7, #104]
	ldr	r3, [r3, #24]
	str	r3, [r7, #88]
	ldr	r3, [r7, #104]
	ldr	r3, [r3, #28]
	str	r3, [r7, #84]
	ldr	r3, [r7, #104]
	ldr	r3, [r3, #32]
	str	r3, [r7, #80]
	ldr	r3, [r7, #104]
	ldr	r3, [r3, #36]
	str	r3, [r7, #76]
	ldr	r3, [r7, #104]
	ldr	r3, [r3, #40]
	str	r3, [r7, #72]
	ldr	r3, [r7, #104]
	ldr	r3, [r3, #44]
	str	r3, [r7, #68]
	ldr	r3, [r7, #104]
	ldr	r3, [r3, #48]
	str	r3, [r7, #64]
	ldr	r3, [r7, #104]
	ldr	r3, [r3, #52]
	str	r3, [r7, #60]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bgt	.L1182
	mov	r3, #4915200
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	str	r3, [r7, #116]
	b	.L1183
.L1182:
	ldr	r3, [r7, #4]
	lsls	r3, r3, #16
	str	r3, [r7, #56]
	ldr	r0, [r7, #56]
	ldr	r1, [r7, #92]
	bl	FT_MulFix_arm(PLT)
	str	r0, [r7, #116]
.L1183:
	ldr	r3, [r7, #116]
	clz	r3, r3
	rsb	r2, r3, #31
	ldr	r3, [r7, #100]
	clz	r3, r3
	rsb	r3, r3, #31
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #52]
	cmp	r3, #45
	ble	.L1184
	ldr	r3, [r7, #64]
	lsls	r3, r3, #16
	str	r3, [r7, #112]
	b	.L1185
.L1184:
	ldr	r0, [r7, #116]
	ldr	r1, [r7, #100]
	bl	FT_MulFix_arm(PLT)
	str	r0, [r7, #112]
.L1185:
	ldr	r3, [r7, #88]
	lsls	r3, r3, #16
	mov	r2, r3
	ldr	r3, [r7, #112]
	cmp	r2, r3
	ble	.L1186
	ldr	r3, [r7, #84]
	lsls	r3, r3, #16
	mov	r0, r3
	ldr	r1, [r7, #100]
	bl	FT_DivFix(PLT)
	str	r0, [r7, #108]
	b	.L1187
.L1186:
	ldr	r3, [r7, #80]
	lsls	r3, r3, #16
	mov	r2, r3
	ldr	r3, [r7, #112]
	cmp	r2, r3
	ble	.L1188
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #88]
	subs	r3, r2, r3
	str	r3, [r7, #48]
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #84]
	subs	r3, r2, r3
	str	r3, [r7, #44]
	ldr	r3, [r7, #88]
	lsls	r3, r3, #16
	mov	r0, r3
	ldr	r1, [r7, #100]
	bl	FT_DivFix(PLT)
	mov	r3, r0
	ldr	r2, [r7, #116]
	subs	r3, r2, r3
	str	r3, [r7, #40]
	ldr	r3, [r7, #48]
	cmp	r3, #0
	bne	.L1189
	b	.L1190
.L1189:
	ldr	r0, [r7, #40]
	ldr	r1, [r7, #44]
	ldr	r2, [r7, #48]
	bl	FT_MulDiv(PLT)
	mov	r4, r0
	ldr	r3, [r7, #84]
	lsls	r3, r3, #16
	mov	r0, r3
	ldr	r1, [r7, #100]
	bl	FT_DivFix(PLT)
	mov	r3, r0
	add	r3, r3, r4
	str	r3, [r7, #108]
	b	.L1187
.L1188:
	ldr	r3, [r7, #72]
	lsls	r3, r3, #16
	mov	r2, r3
	ldr	r3, [r7, #112]
	cmp	r2, r3
	ble	.L1191
.L1190:
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #80]
	subs	r3, r2, r3
	str	r3, [r7, #36]
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #76]
	subs	r3, r2, r3
	str	r3, [r7, #32]
	ldr	r3, [r7, #80]
	lsls	r3, r3, #16
	mov	r0, r3
	ldr	r1, [r7, #100]
	bl	FT_DivFix(PLT)
	mov	r3, r0
	ldr	r2, [r7, #116]
	subs	r3, r2, r3
	str	r3, [r7, #28]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L1192
	b	.L1193
.L1192:
	ldr	r0, [r7, #28]
	ldr	r1, [r7, #32]
	ldr	r2, [r7, #36]
	bl	FT_MulDiv(PLT)
	mov	r4, r0
	ldr	r3, [r7, #76]
	lsls	r3, r3, #16
	mov	r0, r3
	ldr	r1, [r7, #100]
	bl	FT_DivFix(PLT)
	mov	r3, r0
	add	r3, r3, r4
	str	r3, [r7, #108]
	b	.L1187
.L1191:
	ldr	r3, [r7, #64]
	lsls	r3, r3, #16
	mov	r2, r3
	ldr	r3, [r7, #112]
	cmp	r2, r3
	ble	.L1194
.L1193:
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #72]
	subs	r3, r2, r3
	str	r3, [r7, #24]
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #68]
	subs	r3, r2, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #72]
	lsls	r3, r3, #16
	mov	r0, r3
	ldr	r1, [r7, #100]
	bl	FT_DivFix(PLT)
	mov	r3, r0
	ldr	r2, [r7, #116]
	subs	r3, r2, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L1195
	b	.L1194
.L1195:
	ldr	r0, [r7, #16]
	ldr	r1, [r7, #20]
	ldr	r2, [r7, #24]
	bl	FT_MulDiv(PLT)
	mov	r4, r0
	ldr	r3, [r7, #68]
	lsls	r3, r3, #16
	mov	r0, r3
	ldr	r1, [r7, #100]
	bl	FT_DivFix(PLT)
	mov	r3, r0
	add	r3, r3, r4
	str	r3, [r7, #108]
	b	.L1187
.L1194:
	ldr	r3, [r7, #60]
	lsls	r3, r3, #16
	mov	r0, r3
	ldr	r1, [r7, #100]
	bl	FT_DivFix(PLT)
	str	r0, [r7, #108]
.L1187:
	ldr	r0, [r7, #108]
	ldr	r1, [r7, #92]
	bl	FT_DivFix(PLT)
	mov	r3, r0
	add	r3, r3, #32768
	lsrs	r3, r3, #16
	uxth	r3, r3
	sxth	r3, r3
.L1181:
	mov	r0, r3
	adds	r7, r7, #124
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	af_loader_compute_darkening, .-af_loader_compute_darkening
	.section	.text.af_property_get_face_globals,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_property_get_face_globals, %function
af_property_get_face_globals:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L1197
	movs	r3, #35
	b	.L1201
.L1197:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #116]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L1199
	add	r3, r7, #16
	ldr	r0, [r7, #12]
	mov	r1, r3
	ldr	r2, [r7, #4]
	bl	af_face_globals_new(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L1199
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #12]
	str	r2, [r3, #116]
	ldr	r3, [r7, #12]
	ldr	r2, .L1202
.LPIC16:
	add	r2, pc
	str	r2, [r3, #120]
.L1199:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L1200
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #8]
	str	r2, [r3]
.L1200:
	ldr	r3, [r7, #20]
.L1201:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L1203:
	.align	2
.L1202:
	.word	af_face_globals_free-(.LPIC16+4)
	.size	af_property_get_face_globals, .-af_property_get_face_globals
	.section	.rodata
	.align	2
.LC1:
	.ascii	"fallback-script\000"
	.align	2
.LC2:
	.ascii	"default-script\000"
	.align	2
.LC3:
	.ascii	"increase-x-height\000"
	.align	2
.LC4:
	.ascii	"darkening-parameters\000"
	.align	2
.LC5:
	.ascii	"no-stem-darkening\000"
	.section	.text.af_property_set,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_property_set, %function
af_property_set:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #92
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r4, .L1219
.LPIC18:
	add	r4, pc
	movs	r3, #0
	str	r3, [r7, #80]
	ldr	r3, [r7, #12]
	str	r3, [r7, #76]
	ldr	r0, [r7, #8]
	ldr	r3, .L1219+4
.LPIC17:
	add	r3, pc
	mov	r1, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L1205
	ldr	r3, [r7, #4]
	str	r3, [r7, #72]
	movs	r3, #0
	str	r3, [r7, #84]
	b	.L1206
.L1209:
	ldr	r3, .L1219+8
	ldr	r3, [r4, r3]
	ldr	r2, [r7, #84]
	ldr	r3, [r3, r2, lsl #2]
	str	r3, [r7, #68]
	ldr	r3, [r7, #68]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #72]
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L1207
	ldr	r3, [r7, #68]
	ldr	r3, [r3, #16]
	cmp	r3, #10
	bne	.L1207
	ldr	r3, [r7, #76]
	ldr	r2, [r7, #84]
	str	r2, [r3, #12]
	b	.L1208
.L1207:
	ldr	r3, [r7, #84]
	adds	r3, r3, #1
	str	r3, [r7, #84]
.L1206:
	ldr	r3, .L1219+8
	ldr	r3, [r4, r3]
	ldr	r2, [r7, #84]
	ldr	r3, [r3, r2, lsl #2]
	cmp	r3, #0
	bne	.L1209
.L1208:
	ldr	r3, .L1219+8
	ldr	r3, [r4, r3]
	ldr	r2, [r7, #84]
	ldr	r3, [r3, r2, lsl #2]
	cmp	r3, #0
	bne	.L1210
	movs	r3, #6
	b	.L1211
.L1210:
	ldr	r3, [r7, #80]
	b	.L1211
.L1205:
	ldr	r0, [r7, #8]
	ldr	r3, .L1219+12
.LPIC19:
	add	r3, pc
	mov	r1, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L1212
	ldr	r3, [r7, #4]
	str	r3, [r7, #64]
	ldr	r3, [r7, #64]
	ldr	r2, [r3]
	ldr	r3, [r7, #76]
	str	r2, [r3, #16]
	ldr	r3, [r7, #80]
	b	.L1211
.L1212:
	ldr	r0, [r7, #8]
	ldr	r3, .L1219+16
.LPIC20:
	add	r3, pc
	mov	r1, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L1213
	ldr	r3, [r7, #4]
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	ldr	r2, [r3]
	add	r3, r7, #16
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #76]
	bl	af_property_get_face_globals(PLT)
	str	r0, [r7, #80]
	ldr	r3, [r7, #80]
	cmp	r3, #0
	bne	.L1214
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #60]
	ldr	r2, [r2, #4]
	str	r2, [r3, #16]
.L1214:
	ldr	r3, [r7, #80]
	b	.L1211
.L1213:
	ldr	r0, [r7, #8]
	ldr	r3, .L1219+20
.LPIC21:
	add	r3, pc
	mov	r1, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L1215
	ldr	r3, [r7, #4]
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	ldr	r3, [r3]
	str	r3, [r7, #52]
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #4]
	str	r3, [r7, #48]
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #8]
	str	r3, [r7, #44]
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #12]
	str	r3, [r7, #40]
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #16]
	str	r3, [r7, #36]
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #20]
	str	r3, [r7, #32]
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #24]
	str	r3, [r7, #28]
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #28]
	str	r3, [r7, #24]
	ldr	r3, [r7, #52]
	cmp	r3, #0
	blt	.L1216
	ldr	r3, [r7, #44]
	cmp	r3, #0
	blt	.L1216
	ldr	r3, [r7, #36]
	cmp	r3, #0
	blt	.L1216
	ldr	r3, [r7, #28]
	cmp	r3, #0
	blt	.L1216
	ldr	r3, [r7, #48]
	cmp	r3, #0
	blt	.L1216
	ldr	r3, [r7, #40]
	cmp	r3, #0
	blt	.L1216
	ldr	r3, [r7, #32]
	cmp	r3, #0
	blt	.L1216
	ldr	r3, [r7, #24]
	cmp	r3, #0
	blt	.L1216
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #44]
	cmp	r2, r3
	bgt	.L1216
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bgt	.L1216
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bgt	.L1216
	ldr	r3, [r7, #48]
	cmp	r3, #500
	bgt	.L1216
	ldr	r3, [r7, #40]
	cmp	r3, #500
	bgt	.L1216
	ldr	r3, [r7, #32]
	cmp	r3, #500
	bgt	.L1216
	ldr	r3, [r7, #24]
	cmp	r3, #500
	ble	.L1217
.L1216:
	movs	r3, #6
	b	.L1211
.L1217:
	ldr	r3, [r7, #76]
	ldr	r2, [r7, #52]
	str	r2, [r3, #24]
	ldr	r3, [r7, #76]
	ldr	r2, [r7, #48]
	str	r2, [r3, #28]
	ldr	r3, [r7, #76]
	ldr	r2, [r7, #44]
	str	r2, [r3, #32]
	ldr	r3, [r7, #76]
	ldr	r2, [r7, #40]
	str	r2, [r3, #36]
	ldr	r3, [r7, #76]
	ldr	r2, [r7, #36]
	str	r2, [r3, #40]
	ldr	r3, [r7, #76]
	ldr	r2, [r7, #32]
	str	r2, [r3, #44]
	ldr	r3, [r7, #76]
	ldr	r2, [r7, #28]
	str	r2, [r3, #48]
	ldr	r3, [r7, #76]
	ldr	r2, [r7, #24]
	str	r2, [r3, #52]
	ldr	r3, [r7, #80]
	b	.L1211
.L1215:
	ldr	r0, [r7, #8]
	ldr	r3, .L1219+24
.LPIC22:
	add	r3, pc
	mov	r1, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L1218
	ldr	r3, [r7, #4]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #76]
	strb	r2, [r3, #20]
	ldr	r3, [r7, #80]
	b	.L1211
.L1218:
	movs	r3, #12
.L1211:
	mov	r0, r3
	adds	r7, r7, #92
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L1220:
	.align	2
.L1219:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC18+4)
	.word	.LC1-(.LPIC17+4)
	.word	af_style_classes(GOT)
	.word	.LC2-(.LPIC19+4)
	.word	.LC3-(.LPIC20+4)
	.word	.LC4-(.LPIC21+4)
	.word	.LC5-(.LPIC22+4)
	.size	af_property_set, .-af_property_set
	.section	.rodata
	.align	2
.LC6:
	.ascii	"glyph-to-script-map\000"
	.section	.text.af_property_get,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_property_get, %function
af_property_get:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #84
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r4, .L1231
.LPIC25:
	add	r4, pc
	movs	r3, #0
	str	r3, [r7, #76]
	ldr	r3, [r7, #12]
	str	r3, [r7, #72]
	ldr	r3, [r7, #72]
	ldr	r3, [r3, #12]
	str	r3, [r7, #68]
	ldr	r3, [r7, #72]
	ldr	r3, [r3, #16]
	str	r3, [r7, #64]
	ldr	r0, [r7, #8]
	ldr	r3, .L1231+4
.LPIC23:
	add	r3, pc
	mov	r1, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L1222
	ldr	r3, [r7, #4]
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	ldr	r2, [r3]
	add	r3, r7, #24
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #72]
	bl	af_property_get_face_globals(PLT)
	str	r0, [r7, #76]
	ldr	r3, [r7, #76]
	cmp	r3, #0
	bne	.L1223
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #60]
	str	r2, [r3, #4]
.L1223:
	ldr	r3, [r7, #76]
	b	.L1224
.L1222:
	ldr	r0, [r7, #8]
	ldr	r3, .L1231+8
.LPIC24:
	add	r3, pc
	mov	r1, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L1225
	ldr	r3, [r7, #4]
	str	r3, [r7, #56]
	ldr	r3, .L1231+12
	ldr	r3, [r4, r3]
	ldr	r2, [r7, #68]
	ldr	r3, [r3, r2, lsl #2]
	str	r3, [r7, #52]
	ldr	r3, [r7, #52]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #56]
	str	r2, [r3]
	ldr	r3, [r7, #76]
	b	.L1224
.L1225:
	ldr	r0, [r7, #8]
	ldr	r3, .L1231+16
.LPIC26:
	add	r3, pc
	mov	r1, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L1226
	ldr	r3, [r7, #4]
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	ldr	r2, [r7, #64]
	str	r2, [r3]
	ldr	r3, [r7, #76]
	b	.L1224
.L1226:
	ldr	r0, [r7, #8]
	ldr	r3, .L1231+20
.LPIC27:
	add	r3, pc
	mov	r1, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L1227
	ldr	r3, [r7, #4]
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	ldr	r2, [r3]
	add	r3, r7, #20
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #72]
	bl	af_property_get_face_globals(PLT)
	str	r0, [r7, #76]
	ldr	r3, [r7, #76]
	cmp	r3, #0
	bne	.L1228
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #44]
	str	r2, [r3, #4]
.L1228:
	ldr	r3, [r7, #76]
	b	.L1224
.L1227:
	ldr	r0, [r7, #8]
	ldr	r3, .L1231+24
.LPIC28:
	add	r3, pc
	mov	r1, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L1229
	ldr	r3, [r7, #72]
	adds	r3, r3, #24
	str	r3, [r7, #40]
	ldr	r3, [r7, #4]
	str	r3, [r7, #36]
	ldr	r3, [r7, #40]
	ldr	r2, [r3]
	ldr	r3, [r7, #36]
	str	r2, [r3]
	ldr	r3, [r7, #36]
	adds	r3, r3, #4
	ldr	r2, [r7, #40]
	ldr	r2, [r2, #4]
	str	r2, [r3]
	ldr	r3, [r7, #36]
	adds	r3, r3, #8
	ldr	r2, [r7, #40]
	ldr	r2, [r2, #8]
	str	r2, [r3]
	ldr	r3, [r7, #36]
	adds	r3, r3, #12
	ldr	r2, [r7, #40]
	ldr	r2, [r2, #12]
	str	r2, [r3]
	ldr	r3, [r7, #36]
	adds	r3, r3, #16
	ldr	r2, [r7, #40]
	ldr	r2, [r2, #16]
	str	r2, [r3]
	ldr	r3, [r7, #36]
	adds	r3, r3, #20
	ldr	r2, [r7, #40]
	ldr	r2, [r2, #20]
	str	r2, [r3]
	ldr	r3, [r7, #36]
	adds	r3, r3, #24
	ldr	r2, [r7, #40]
	ldr	r2, [r2, #24]
	str	r2, [r3]
	ldr	r3, [r7, #36]
	adds	r3, r3, #28
	ldr	r2, [r7, #40]
	ldr	r2, [r2, #28]
	str	r2, [r3]
	ldr	r3, [r7, #76]
	b	.L1224
.L1229:
	ldr	r0, [r7, #8]
	ldr	r3, .L1231+28
.LPIC29:
	add	r3, pc
	mov	r1, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L1230
	ldr	r3, [r7, #72]
	ldrb	r3, [r3, #20]
	strb	r3, [r7, #35]
	ldr	r3, [r7, #4]
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	ldrb	r2, [r7, #35]
	strb	r2, [r3]
	ldr	r3, [r7, #76]
	b	.L1224
.L1230:
	movs	r3, #12
.L1224:
	mov	r0, r3
	adds	r7, r7, #84
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L1232:
	.align	2
.L1231:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC25+4)
	.word	.LC6-(.LPIC23+4)
	.word	.LC1-(.LPIC24+4)
	.word	af_style_classes(GOT)
	.word	.LC2-(.LPIC26+4)
	.word	.LC3-(.LPIC27+4)
	.word	.LC4-(.LPIC28+4)
	.word	.LC5-(.LPIC29+4)
	.size	af_property_get, .-af_property_get
	.section	.data.rel.ro.local.af_service_properties,"aw",%progbits
	.align	2
	.type	af_service_properties, %object
	.size	af_service_properties, 8
af_service_properties:
	.word	af_property_set
	.word	af_property_get
	.section	.rodata
	.align	2
.LC7:
	.ascii	"properties\000"
	.section	.data.rel.ro.local.af_services,"aw",%progbits
	.align	2
	.type	af_services, %object
	.size	af_services, 16
af_services:
	.word	.LC7
	.word	af_service_properties
	.word	0
	.word	0
	.section	.text.af_get_interface,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_get_interface, %function
af_get_interface:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, .L1235
.LPIC30:
	add	r3, pc
	mov	r0, r3
	ldr	r1, [r7]
	bl	ft_service_list_lookup(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L1236:
	.align	2
.L1235:
	.word	af_services-(.LPIC30+4)
	.size	af_get_interface, .-af_get_interface
	.section	.text.af_autofitter_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_autofitter_init, %function
af_autofitter_init:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	movs	r2, #51
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
	movs	r2, #6
	str	r2, [r3, #16]
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #20]
	ldr	r3, [r7, #12]
	mov	r2, #500
	str	r2, [r3, #24]
	ldr	r3, [r7, #12]
	mov	r2, #400
	str	r2, [r3, #28]
	ldr	r3, [r7, #12]
	mov	r2, #1000
	str	r2, [r3, #32]
	ldr	r3, [r7, #12]
	movw	r2, #275
	str	r2, [r3, #36]
	ldr	r3, [r7, #12]
	movw	r2, #1667
	str	r2, [r3, #40]
	ldr	r3, [r7, #12]
	movw	r2, #275
	str	r2, [r3, #44]
	ldr	r3, [r7, #12]
	movw	r2, #2333
	str	r2, [r3, #48]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #52]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	af_autofitter_init, .-af_autofitter_init
	.section	.text.af_autofitter_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_autofitter_done, %function
af_autofitter_done:
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
	.size	af_autofitter_done, .-af_autofitter_done
	.section	.text.af_autofitter_load_glyph,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	af_autofitter_load_glyph, %function
af_autofitter_load_glyph:
	@ args = 4, pretend = 0, frame = 6960
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #6944
	sub	sp, sp, #28
	add	r7, sp, #8
	add	r4, r7, #16
	subs	r4, r4, #4
	str	r0, [r4]
	add	r0, r7, #16
	subs	r0, r0, #8
	str	r1, [r0]
	add	r1, r7, #16
	subs	r1, r1, #12
	str	r2, [r1]
	add	r2, r7, #16
	subs	r2, r2, #16
	str	r3, [r2]
	movs	r3, #0
	add	r2, r7, #6944
	add	r2, r2, #12
	str	r3, [r2]
	add	r3, r7, #16
	subs	r3, r3, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	add	ip, r7, #6944
	add	ip, ip, #8
	str	r3, [ip]
	add	r3, r7, #16
	subs	r3, r3, #12
	add	r2, r7, #16
	subs	r2, r2, #12
	ldr	r2, [r2]
	str	r2, [r3]
	add	r3, r7, #80
	mov	r0, r3
	add	r2, r7, #6944
	add	r2, r2, #8
	ldr	r1, [r2]
	bl	af_glyph_hints_init(PLT)
	add	r3, r7, #48
	subs	r3, r3, #28
	add	r2, r7, #80
	mov	r0, r3
	mov	r1, r2
	bl	af_loader_init(PLT)
	add	r3, r7, #16
	subs	r3, r3, #8
	ldr	r3, [r3]
	ldr	r4, [r3, #4]
	add	r1, r7, #48
	subs	r1, r1, #28
	add	r2, r7, #16
	subs	r2, r2, #4
	add	r3, r7, #16
	subs	r3, r3, #16
	add	ip, r7, #6976
	ldr	r0, [ip]
	str	r0, [sp]
	mov	r0, r1
	ldr	r1, [r2]
	mov	r2, r4
	ldr	r3, [r3]
	bl	af_loader_load_glyph(PLT)
	add	r2, r7, #6944
	add	r2, r2, #12
	str	r0, [r2]
	add	r3, r7, #48
	subs	r3, r3, #28
	mov	r0, r3
	bl	af_loader_done(PLT)
	add	r3, r7, #80
	mov	r0, r3
	bl	af_glyph_hints_done(PLT)
	add	ip, r7, #6944
	add	ip, ip, #12
	ldr	r3, [ip]
	mov	r0, r3
	add	r7, r7, #6944
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	af_autofitter_load_glyph, .-af_autofitter_load_glyph
	.global	af_autofitter_interface
	.section	.data.rel.ro.local.af_autofitter_interface,"aw",%progbits
	.align	2
	.type	af_autofitter_interface, %object
	.size	af_autofitter_interface, 16
af_autofitter_interface:
	.word	0
	.word	0
	.word	0
	.word	af_autofitter_load_glyph
	.global	autofit_module_class
	.section	.rodata
	.align	2
.LC8:
	.ascii	"autofitter\000"
	.section	.data.rel.ro.autofit_module_class,"aw",%progbits
	.align	2
	.type	autofit_module_class, %object
	.size	autofit_module_class, 36
autofit_module_class:
	.word	4
	.word	56
	.word	.LC8
	.word	65536
	.word	131072
	.word	af_autofitter_interface
	.word	af_autofitter_init
	.word	af_autofitter_done
	.word	af_get_interface
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
