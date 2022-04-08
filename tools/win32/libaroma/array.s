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
	.file	"array.c"
	.section	.text.libaroma_iarray,"ax",%progbits
	.align	2
	.global	libaroma_iarray
	.thumb
	.thumb_func
	.type	libaroma_iarray, %function
libaroma_iarray:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	movs	r0, #16
	bl	malloc(PLT)
	movs	r2, #0
	str	r4, [r0, #12]
	str	r2, [r0, #4]
	str	r2, [r0, #8]
	str	r2, [r0]
	pop	{r4, pc}
	.size	libaroma_iarray, .-libaroma_iarray
	.section	.text.libaroma_iarray_set_ex,"ax",%progbits
	.align	2
	.global	libaroma_iarray_set_ex
	.thumb
	.thumb_func
	.type	libaroma_iarray_set_ex, %function
libaroma_iarray_set_ex:
	@ args = 8, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	it	ne
	cmpne	r0, #0
	push	{r4, r5, r7, r8, r9, r10, lr}
	sub	sp, sp, #12
	mov	r9, r3
	mov	r8, r0
	mov	r7, r2
	ldrb	r3, [sp, #40]	@ zero_extendqisi2
	ldrb	r5, [sp, #44]	@ zero_extendqisi2
	beq	.L15
	cmp	r9, #0
	beq	.L15
	ldr	r10, [r0, #4]
	cmp	r10, #0
	beq	.L5
	ldr	r2, [r10]
	mov	r4, r10
	cmp	r1, r2
	bne	.L7
	b	.L6
.L8:
	ldr	r2, [r4]
	cmp	r1, r2
	beq	.L6
.L7:
	ldr	r4, [r4, #8]
	cmp	r4, #0
	bne	.L8
.L5:
	movs	r0, #12
	str	r1, [sp, #4]
	bl	malloc(PLT)
	ldr	r1, [sp, #4]
	mov	r4, r0
	mov	r0, r9
	str	r1, [r4]
	bl	malloc(PLT)
	mov	r1, r7
	str	r0, [r4, #4]
	mov	r2, r9
	cbz	r5, .L11
	str	r10, [r4, #8]
	bl	memcpy(PLT)
	ldmia	r8, {r2, r3}
	adds	r2, r2, #1
	str	r2, [r8]
	cbz	r3, .L12
	str	r4, [r8, #4]
	movs	r0, #1
	b	.L30
.L15:
	movs	r0, #0
.L30:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r7, r8, r9, r10, pc}
.L6:
	cbz	r3, .L9
	ldr	r3, [r8, #12]
	cbz	r3, .L9
	ldr	r0, [r4, #4]
	blx	r3
.L9:
	ldr	r0, [r4, #4]
	bl	free(PLT)
	mov	r0, r7
	bl	strlen(PLT)
	adds	r0, r0, #1
	bl	malloc(PLT)
	mov	r1, r7
	str	r0, [r4, #4]
	bl	strcpy(PLT)
	movs	r0, #1
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r7, r8, r9, r10, pc}
.L12:
	str	r4, [r8, #4]
	movs	r0, #1
	str	r4, [r8, #8]
	b	.L30
.L11:
	str	r5, [r4, #8]
	bl	memcpy(PLT)
	ldmia	r8, {r2, r3}
	adds	r2, r2, #1
	str	r2, [r8]
	cmp	r3, #0
	beq	.L12
	ldr	r3, [r8, #8]
	movs	r0, #1
	str	r4, [r3, #8]
	str	r4, [r8, #8]
	b	.L30
	.size	libaroma_iarray_set_ex, .-libaroma_iarray_set_ex
	.section	.text.libaroma_iarray_unshift,"ax",%progbits
	.align	2
	.global	libaroma_iarray_unshift
	.thumb
	.thumb_func
	.type	libaroma_iarray_unshift, %function
libaroma_iarray_unshift:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	sub	sp, sp, #12
	ldrb	r4, [sp, #24]	@ zero_extendqisi2
	movs	r5, #1
	stmia	sp, {r4, r5}
	bl	libaroma_iarray_set_ex(PLT)
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
	.size	libaroma_iarray_unshift, .-libaroma_iarray_unshift
	.section	.text.libaroma_iarray_set,"ax",%progbits
	.align	2
	.global	libaroma_iarray_set
	.thumb
	.thumb_func
	.type	libaroma_iarray_set, %function
libaroma_iarray_set:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	sub	sp, sp, #12
	ldrb	r4, [sp, #24]	@ zero_extendqisi2
	movs	r5, #0
	stmia	sp, {r4, r5}
	bl	libaroma_iarray_set_ex(PLT)
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
	.size	libaroma_iarray_set, .-libaroma_iarray_set
	.section	.text.libaroma_iarray_set_string,"ax",%progbits
	.align	2
	.global	libaroma_iarray_set_string
	.thumb
	.thumb_func
	.type	libaroma_iarray_set_string, %function
libaroma_iarray_set_string:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r4, r2
	sub	sp, sp, #12
	mov	r6, r0
	mov	r7, r1
	mov	r0, r2
	movs	r5, #0
	bl	strlen(PLT)
	mov	r1, r7
	adds	r3, r0, #1
	mov	r2, r4
	mov	r0, r6
	str	r5, [sp]
	bl	libaroma_iarray_set(PLT)
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
	.size	libaroma_iarray_set_string, .-libaroma_iarray_set_string
	.section	.text.libaroma_iarray_get,"ax",%progbits
	.align	2
	.global	libaroma_iarray_get
	.thumb
	.thumb_func
	.type	libaroma_iarray_get, %function
libaroma_iarray_get:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L42
	ldr	r0, [r0, #4]
	cbnz	r0, .L46
	b	.L42
.L45:
	ldr	r0, [r0, #8]
	cbz	r0, .L42
.L46:
	ldr	r3, [r0]
	cmp	r3, r1
	bne	.L45
	ldr	r0, [r0, #4]
	bx	lr
.L42:
	bx	lr
	.size	libaroma_iarray_get, .-libaroma_iarray_get
	.section	.text.libaroma_iarray_get_string,"ax",%progbits
	.align	2
	.global	libaroma_iarray_get_string
	.thumb
	.thumb_func
	.type	libaroma_iarray_get_string, %function
libaroma_iarray_get_string:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	libaroma_iarray_get(PLT)
	.size	libaroma_iarray_get_string, .-libaroma_iarray_get_string
	.section	.text.libaroma_iarray_delete,"ax",%progbits
	.align	2
	.global	libaroma_iarray_delete
	.thumb
	.thumb_func
	.type	libaroma_iarray_delete, %function
libaroma_iarray_delete:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cbz	r0, .L67
	ldr	r3, [r0, #4]
	cbz	r3, .L62
	ldr	r2, [r3]
	push	{r4, lr}
	cmp	r2, r1
	bne	.L56
	b	.L70
.L60:
	ldr	r2, [r4]
	cmp	r2, r1
	beq	.L55
	mov	r3, r4
.L56:
	ldr	r4, [r3, #8]
	cmp	r4, #0
	bne	.L60
	mov	r0, r4
	pop	{r4, pc}
.L55:
	ldr	r2, [r4, #8]
	str	r2, [r3, #8]
	ldr	r2, [r4, #8]
	cbz	r2, .L69
.L57:
	ldr	r2, [r0]
	ldr	r3, [r0, #12]
	subs	r2, r2, #1
	str	r2, [r0]
	cbz	r3, .L59
	ldr	r0, [r4, #4]
	blx	r3
.L59:
	ldr	r0, [r4, #4]
	bl	free(PLT)
	mov	r0, r4
	bl	free(PLT)
	movs	r0, #1
	pop	{r4, pc}
.L67:
	bx	lr
.L70:
	ldr	r2, [r3, #8]
	cbz	r2, .L58
	str	r2, [r0, #4]
	mov	r4, r3
	b	.L57
.L69:
	str	r3, [r0, #8]
	b	.L57
.L62:
	mov	r0, r3
	bx	lr
.L58:
	mov	r4, r3
	str	r2, [r0, #4]
	str	r2, [r0, #8]
	b	.L57
	.size	libaroma_iarray_delete, .-libaroma_iarray_delete
	.section	.text.libaroma_iarray_free,"ax",%progbits
	.align	2
	.global	libaroma_iarray_free
	.thumb
	.thumb_func
	.type	libaroma_iarray_free, %function
libaroma_iarray_free:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r6, r0
	cbz	r0, .L77
	ldr	r4, [r0, #4]
	cbz	r4, .L75
.L76:
	ldr	r3, [r6, #12]
	cbz	r3, .L74
	ldr	r0, [r4, #4]
	blx	r3
.L74:
	ldr	r0, [r4, #4]
	bl	free(PLT)
	ldr	r5, [r4, #8]
	mov	r0, r4
	bl	free(PLT)
	mov	r4, r5
	cmp	r5, #0
	bne	.L76
.L75:
	mov	r0, r6
	bl	free(PLT)
	movs	r0, #1
	pop	{r4, r5, r6, pc}
.L77:
	pop	{r4, r5, r6, pc}
	.size	libaroma_iarray_free, .-libaroma_iarray_free
	.section	.text.libaroma_sarray,"ax",%progbits
	.align	2
	.global	libaroma_sarray
	.thumb
	.thumb_func
	.type	libaroma_sarray, %function
libaroma_sarray:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	movs	r0, #16
	bl	malloc(PLT)
	movs	r2, #0
	str	r4, [r0, #12]
	str	r2, [r0, #4]
	str	r2, [r0, #8]
	str	r2, [r0]
	pop	{r4, pc}
	.size	libaroma_sarray, .-libaroma_sarray
	.section	.text.libaroma_sarray_set,"ax",%progbits
	.align	2
	.global	libaroma_sarray_set
	.thumb
	.thumb_func
	.type	libaroma_sarray_set, %function
libaroma_sarray_set:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	it	ne
	cmpne	r0, #0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, r0
	mov	r8, r2
	ite	eq
	moveq	r0, #1
	movne	r0, #0
	ldrb	r5, [sp, #40]	@ zero_extendqisi2
	beq	.L97
	cmp	r3, #0
	it	ne
	cmpne	r1, #0
	mov	r9, r1
	mov	r10, r3
	bne	.L111
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L111:
	mov	r0, r1
	bl	libaroma_hash(PLT)
	ldr	r4, [r7, #4]
	mov	r6, r0
	cbnz	r4, .L92
	b	.L89
.L90:
	ldr	r4, [r4, #12]
	cbz	r4, .L89
.L92:
	ldr	r3, [r4, #4]
	cmp	r3, r6
	bne	.L90
	ldr	r0, [r4]
	mov	r1, r9
	bl	strcmp(PLT)
	cmp	r0, #0
	bne	.L90
	cbz	r5, .L93
	ldr	r3, [r7, #12]
	cbz	r3, .L93
	ldr	r0, [r4, #8]
	blx	r3
.L93:
	ldr	r0, [r4, #8]
	bl	free(PLT)
	mov	r0, r8
	bl	strlen(PLT)
	adds	r0, r0, #1
	bl	malloc(PLT)
	mov	r1, r8
	str	r0, [r4, #8]
	bl	strcpy(PLT)
	movs	r0, #1
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L97:
	movs	r0, #0
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L89:
	movs	r0, #16
	bl	malloc(PLT)
	mov	r4, r0
	mov	r0, r9
	bl	strlen(PLT)
	adds	r0, r0, #1
	bl	malloc(PLT)
	mov	fp, r0
	str	r6, [r4, #4]
	mov	r0, r10
	str	fp, [r4]
	bl	malloc(PLT)
	movs	r3, #0
	mov	r5, r0
	str	r3, [r4, #12]
	mov	r1, r9
	mov	r0, fp
	str	r5, [r4, #8]
	bl	strcpy(PLT)
	mov	r2, r10
	mov	r0, r5
	mov	r1, r8
	bl	memcpy(PLT)
	ldmia	r7, {r2, r3}
	adds	r2, r2, #1
	str	r2, [r7]
	cbz	r3, .L112
	ldr	r3, [r7, #8]
	movs	r0, #1
	str	r4, [r3, #12]
	str	r4, [r7, #8]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L112:
	str	r4, [r7, #4]
	movs	r0, #1
	str	r4, [r7, #8]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	libaroma_sarray_set, .-libaroma_sarray_set
	.section	.text.libaroma_sarray_set_string,"ax",%progbits
	.align	2
	.global	libaroma_sarray_set_string
	.thumb
	.thumb_func
	.type	libaroma_sarray_set_string, %function
libaroma_sarray_set_string:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r4, r2
	sub	sp, sp, #12
	mov	r6, r0
	mov	r7, r1
	mov	r0, r2
	movs	r5, #0
	bl	strlen(PLT)
	mov	r1, r7
	adds	r3, r0, #1
	mov	r2, r4
	mov	r0, r6
	str	r5, [sp]
	bl	libaroma_sarray_set(PLT)
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
	.size	libaroma_sarray_set_string, .-libaroma_sarray_set_string
	.section	.text.libaroma_sarray_get,"ax",%progbits
	.align	2
	.global	libaroma_sarray_get
	.thumb
	.thumb_func
	.type	libaroma_sarray_get, %function
libaroma_sarray_get:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	it	ne
	cmpne	r0, #0
	push	{r4, r5, r6, lr}
	mov	r4, r0
	mov	r6, r1
	beq	.L118
	mov	r0, r1
	bl	libaroma_hash(PLT)
	ldr	r4, [r4, #4]
	mov	r5, r0
	cbnz	r4, .L120
	b	.L118
.L119:
	ldr	r4, [r4, #12]
	cbz	r4, .L118
.L120:
	ldr	r3, [r4, #4]
	cmp	r3, r5
	bne	.L119
	ldr	r0, [r4]
	mov	r1, r6
	bl	strcmp(PLT)
	cmp	r0, #0
	bne	.L119
	ldr	r0, [r4, #8]
	pop	{r4, r5, r6, pc}
.L118:
	movs	r0, #0
	pop	{r4, r5, r6, pc}
	.size	libaroma_sarray_get, .-libaroma_sarray_get
	.section	.text.libaroma_sarray_get_string,"ax",%progbits
	.align	2
	.global	libaroma_sarray_get_string
	.thumb
	.thumb_func
	.type	libaroma_sarray_get_string, %function
libaroma_sarray_get_string:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	libaroma_sarray_get(PLT)
	.size	libaroma_sarray_get_string, .-libaroma_sarray_get_string
	.section	.text.libaroma_sarray_delete,"ax",%progbits
	.align	2
	.global	libaroma_sarray_delete
	.thumb
	.thumb_func
	.type	libaroma_sarray_delete, %function
libaroma_sarray_delete:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	it	ne
	cmpne	r0, #0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r8, r0
	mov	r7, r1
	ite	eq
	moveq	r5, #1
	movne	r5, #0
	bne	.L130
.L132:
	movs	r0, #0
	pop	{r4, r5, r6, r7, r8, pc}
.L130:
	mov	r0, r1
	bl	libaroma_hash(PLT)
	ldr	r4, [r8, #4]
	mov	r6, r0
	cbnz	r4, .L138
	b	.L132
.L133:
	ldr	r3, [r4, #12]
	mov	r5, r4
	mov	r4, r3
	cmp	r3, #0
	beq	.L132
.L138:
	ldr	r3, [r4, #4]
	cmp	r3, r6
	bne	.L133
	ldr	r0, [r4]
	mov	r1, r7
	bl	strcmp(PLT)
	cmp	r0, #0
	bne	.L133
	ldr	r3, [r4, #12]
	cbz	r5, .L134
	str	r3, [r5, #12]
	ldr	r3, [r4, #12]
	cbz	r3, .L149
.L135:
	ldr	r2, [r8]
	ldr	r3, [r8, #12]
	subs	r2, r2, #1
	str	r2, [r8]
	cbz	r3, .L137
	ldr	r0, [r4, #8]
	blx	r3
.L137:
	ldr	r0, [r4, #8]
	bl	free(PLT)
	ldr	r0, [r4]
	bl	free(PLT)
	mov	r0, r4
	bl	free(PLT)
	movs	r0, #1
	pop	{r4, r5, r6, r7, r8, pc}
.L134:
	cbz	r3, .L136
	str	r3, [r8, #4]
	b	.L135
.L136:
	str	r5, [r8, #4]
.L149:
	str	r5, [r8, #8]
	b	.L135
	.size	libaroma_sarray_delete, .-libaroma_sarray_delete
	.section	.text.libaroma_sarray_free,"ax",%progbits
	.align	2
	.global	libaroma_sarray_free
	.thumb
	.thumb_func
	.type	libaroma_sarray_free, %function
libaroma_sarray_free:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r6, r0
	cbz	r0, .L156
	ldr	r4, [r0, #4]
	cbz	r4, .L154
.L155:
	ldr	r3, [r6, #12]
	cbz	r3, .L153
	ldr	r0, [r4, #8]
	blx	r3
.L153:
	ldr	r0, [r4, #8]
	bl	free(PLT)
	ldr	r0, [r4]
	bl	free(PLT)
	ldr	r5, [r4, #12]
	mov	r0, r4
	bl	free(PLT)
	mov	r4, r5
	cmp	r5, #0
	bne	.L155
.L154:
	mov	r0, r6
	bl	free(PLT)
	movs	r0, #1
	pop	{r4, r5, r6, pc}
.L156:
	pop	{r4, r5, r6, pc}
	.size	libaroma_sarray_free, .-libaroma_sarray_free
	.section	.text.libaroma_stack,"ax",%progbits
	.align	2
	.global	libaroma_stack
	.thumb
	.thumb_func
	.type	libaroma_stack, %function
libaroma_stack:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	movs	r0, #16
	bl	malloc(PLT)
	movs	r2, #0
	str	r4, [r0, #12]
	str	r2, [r0, #4]
	str	r2, [r0, #8]
	str	r2, [r0]
	pop	{r4, pc}
	.size	libaroma_stack, .-libaroma_stack
	.section	.text.libaroma_stack_push,"ax",%progbits
	.align	2
	.global	libaroma_stack_push
	.thumb
	.thumb_func
	.type	libaroma_stack_push, %function
libaroma_stack_push:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	it	ne
	cmpne	r0, #0
	push	{r4, r5, r6, r7, lr}
	mov	r4, r0
	sub	sp, sp, #12
	itet	eq
	moveq	r7, #1
	movne	r7, #0
	moveq	r0, #0
	beq	.L167
	mov	r5, r2
	mov	r0, r2
	cbnz	r2, .L172
.L167:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L172:
	movs	r0, #12
	str	r1, [sp, #4]
	bl	malloc(PLT)
	mov	r6, r0
	mov	r0, r5
	bl	malloc(PLT)
	ldr	r3, [r4, #8]
	mov	r2, r5
	ldr	r1, [sp, #4]
	stmia	r6, {r0, r3, r7}
	bl	memcpy(PLT)
	ldmia	r4, {r2, r3}
	adds	r2, r2, #1
	str	r2, [r4]
	cbz	r3, .L173
	ldr	r3, [r4, #8]
	movs	r0, #1
	str	r6, [r3, #8]
	str	r6, [r4, #8]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L173:
	str	r6, [r4, #4]
	movs	r0, #1
	str	r6, [r4, #8]
	b	.L167
	.size	libaroma_stack_push, .-libaroma_stack_push
	.section	.text.libaroma_stack_shift,"ax",%progbits
	.align	2
	.global	libaroma_stack_shift
	.thumb
	.thumb_func
	.type	libaroma_stack_shift, %function
libaroma_stack_shift:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r3, r0
	cbz	r0, .L178
	ldr	r2, [r0, #4]
	cbz	r2, .L179
	ldr	r1, [r0, #8]
	ldr	r4, [r2]
	cmp	r1, r2
	ldr	r1, [r0]
	itee	ne
	ldrne	r5, [r2, #8]
	moveq	r5, #0
	streq	r5, [r0, #8]
	mov	r0, r2
	subs	r1, r1, #1
	str	r5, [r3, #4]
	str	r1, [r3]
	bl	free(PLT)
	mov	r0, r4
	pop	{r3, r4, r5, pc}
.L178:
	pop	{r3, r4, r5, pc}
.L179:
	mov	r0, r2
	pop	{r3, r4, r5, pc}
	.size	libaroma_stack_shift, .-libaroma_stack_shift
	.section	.text.libaroma_stack_shift_string,"ax",%progbits
	.align	2
	.global	libaroma_stack_shift_string
	.thumb
	.thumb_func
	.type	libaroma_stack_shift_string, %function
libaroma_stack_shift_string:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	libaroma_stack_shift(PLT)
	.size	libaroma_stack_shift_string, .-libaroma_stack_shift_string
	.section	.text.libaroma_stack_pop,"ax",%progbits
	.align	2
	.global	libaroma_stack_pop
	.thumb
	.thumb_func
	.type	libaroma_stack_pop, %function
libaroma_stack_pop:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r3, r0
	cbz	r0, .L186
	ldr	r2, [r0, #8]
	cbz	r2, .L187
	ldr	r1, [r0, #4]
	ldr	r4, [r2]
	cmp	r1, r2
	ldr	r1, [r0]
	itee	ne
	ldrne	r5, [r2, #4]
	moveq	r5, #0
	streq	r5, [r0, #4]
	mov	r0, r2
	subs	r1, r1, #1
	str	r5, [r3, #8]
	str	r1, [r3]
	bl	free(PLT)
	mov	r0, r4
	pop	{r3, r4, r5, pc}
.L186:
	pop	{r3, r4, r5, pc}
.L187:
	mov	r0, r2
	pop	{r3, r4, r5, pc}
	.size	libaroma_stack_pop, .-libaroma_stack_pop
	.section	.text.libaroma_stack_pop_string,"ax",%progbits
	.align	2
	.global	libaroma_stack_pop_string
	.thumb
	.thumb_func
	.type	libaroma_stack_pop_string, %function
libaroma_stack_pop_string:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	libaroma_stack_pop(PLT)
	.size	libaroma_stack_pop_string, .-libaroma_stack_pop_string
	.section	.text.libaroma_stack_push_string,"ax",%progbits
	.align	2
	.global	libaroma_stack_push_string
	.thumb
	.thumb_func
	.type	libaroma_stack_push_string, %function
libaroma_stack_push_string:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r4, r1
	mov	r5, r0
	mov	r0, r1
	bl	strlen(PLT)
	mov	r1, r4
	adds	r2, r0, #1
	mov	r0, r5
	pop	{r3, r4, r5, lr}
	b	libaroma_stack_push(PLT)
	.size	libaroma_stack_push_string, .-libaroma_stack_push_string
	.section	.text.libaroma_stack_unshift,"ax",%progbits
	.align	2
	.global	libaroma_stack_unshift
	.thumb
	.thumb_func
	.type	libaroma_stack_unshift, %function
libaroma_stack_unshift:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	it	ne
	cmpne	r0, #0
	push	{r4, r5, r6, r7, lr}
	mov	r4, r0
	sub	sp, sp, #12
	itet	eq
	moveq	r6, #1
	movne	r6, #0
	moveq	r0, #0
	beq	.L193
	mov	r5, r2
	mov	r0, r2
	cbnz	r2, .L198
.L193:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L198:
	movs	r0, #12
	str	r1, [sp, #4]
	bl	malloc(PLT)
	mov	r7, r0
	mov	r0, r5
	bl	malloc(PLT)
	ldr	r3, [r4, #4]
	mov	r2, r5
	ldr	r1, [sp, #4]
	stmia	r7, {r0, r6}
	str	r3, [r7, #8]
	bl	memcpy(PLT)
	ldmia	r4, {r2, r3}
	movs	r0, #1
	adds	r2, r2, #1
	stmia	r4, {r2, r7}
	cmp	r3, #0
	bne	.L193
	str	r7, [r4, #8]
	b	.L193
	.size	libaroma_stack_unshift, .-libaroma_stack_unshift
	.section	.text.libaroma_stack_unshift_string,"ax",%progbits
	.align	2
	.global	libaroma_stack_unshift_string
	.thumb
	.thumb_func
	.type	libaroma_stack_unshift_string, %function
libaroma_stack_unshift_string:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r4, r1
	mov	r5, r0
	mov	r0, r1
	bl	strlen(PLT)
	mov	r1, r4
	adds	r2, r0, #1
	mov	r0, r5
	pop	{r3, r4, r5, lr}
	b	libaroma_stack_unshift(PLT)
	.size	libaroma_stack_unshift_string, .-libaroma_stack_unshift_string
	.section	.text.libaroma_stack_first,"ax",%progbits
	.align	2
	.global	libaroma_stack_first
	.thumb
	.thumb_func
	.type	libaroma_stack_first, %function
libaroma_stack_first:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L202
	ldr	r0, [r0, #4]
.L202:
	bx	lr
	.size	libaroma_stack_first, .-libaroma_stack_first
	.section	.text.libaroma_stack_last,"ax",%progbits
	.align	2
	.global	libaroma_stack_last
	.thumb
	.thumb_func
	.type	libaroma_stack_last, %function
libaroma_stack_last:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L205
	ldr	r0, [r0, #8]
.L205:
	bx	lr
	.size	libaroma_stack_last, .-libaroma_stack_last
	.section	.text.libaroma_stack_next,"ax",%progbits
	.align	2
	.global	libaroma_stack_next
	.thumb
	.thumb_func
	.type	libaroma_stack_next, %function
libaroma_stack_next:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L208
	ldr	r0, [r0, #8]
.L208:
	bx	lr
	.size	libaroma_stack_next, .-libaroma_stack_next
	.section	.text.libaroma_stack_prev,"ax",%progbits
	.align	2
	.global	libaroma_stack_prev
	.thumb
	.thumb_func
	.type	libaroma_stack_prev, %function
libaroma_stack_prev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L211
	ldr	r0, [r0, #4]
.L211:
	bx	lr
	.size	libaroma_stack_prev, .-libaroma_stack_prev
	.section	.text.libaroma_stack_item_val,"ax",%progbits
	.align	2
	.global	libaroma_stack_item_val
	.thumb
	.thumb_func
	.type	libaroma_stack_item_val, %function
libaroma_stack_item_val:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L214
	ldr	r0, [r0]
.L214:
	bx	lr
	.size	libaroma_stack_item_val, .-libaroma_stack_item_val
	.section	.text.libaroma_stack_item_val_string,"ax",%progbits
	.align	2
	.global	libaroma_stack_item_val_string
	.thumb
	.thumb_func
	.type	libaroma_stack_item_val_string, %function
libaroma_stack_item_val_string:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	libaroma_stack_item_val(PLT)
	.size	libaroma_stack_item_val_string, .-libaroma_stack_item_val_string
	.section	.text.libaroma_stack_item_set,"ax",%progbits
	.align	2
	.global	libaroma_stack_item_set
	.thumb
	.thumb_func
	.type	libaroma_stack_item_set, %function
libaroma_stack_item_set:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	it	ne
	cmpne	r1, #0
	push	{r4, r5, r6, lr}
	mov	r5, r3
	mov	r4, r1
	mov	r6, r2
	ldrb	r3, [sp, #16]	@ zero_extendqisi2
	beq	.L220
	cbz	r5, .L220
	cbz	r3, .L219
	ldr	r3, [r0, #12]
	cbz	r3, .L219
	ldr	r0, [r1]
	blx	r3
.L219:
	ldr	r0, [r4]
	bl	free(PLT)
	mov	r0, r5
	bl	malloc(PLT)
	mov	r1, r6
	str	r0, [r4]
	mov	r2, r5
	bl	memcpy(PLT)
	movs	r0, #1
	pop	{r4, r5, r6, pc}
.L220:
	movs	r0, #0
	pop	{r4, r5, r6, pc}
	.size	libaroma_stack_item_set, .-libaroma_stack_item_set
	.section	.text.libaroma_stack_item_set_string,"ax",%progbits
	.align	2
	.global	libaroma_stack_item_set_string
	.thumb
	.thumb_func
	.type	libaroma_stack_item_set_string, %function
libaroma_stack_item_set_string:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r4, r2
	sub	sp, sp, #12
	mov	r6, r0
	mov	r7, r1
	mov	r0, r2
	movs	r5, #0
	bl	strlen(PLT)
	mov	r1, r7
	adds	r3, r0, #1
	mov	r2, r4
	mov	r0, r6
	str	r5, [sp]
	bl	libaroma_stack_item_set(PLT)
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
	.size	libaroma_stack_item_set_string, .-libaroma_stack_item_set_string
	.section	.text.libaroma_stack_item_delete,"ax",%progbits
	.align	2
	.global	libaroma_stack_item_delete
	.thumb
	.thumb_func
	.type	libaroma_stack_item_delete, %function
libaroma_stack_item_delete:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	it	ne
	cmpne	r0, #0
	push	{r3, r4, r5, lr}
	mov	r4, r1
	beq	.L235
	ldr	r3, [r1, #4]
	ldr	r5, [r0, #8]
	ldr	r1, [r0, #4]
	cbz	r3, .L245
	ldr	r2, [r4, #8]
	str	r2, [r3, #8]
.L236:
	ldr	r2, [r4, #8]
	cbz	r2, .L246
	str	r3, [r2, #4]
.L238:
	ldr	r2, [r0]
	ldr	r3, [r0, #12]
	str	r1, [r0, #4]
	subs	r2, r2, #1
	str	r5, [r0, #8]
	str	r2, [r0]
	cbz	r3, .L239
	ldr	r0, [r4]
	blx	r3
.L239:
	ldr	r0, [r4]
	bl	free(PLT)
	mov	r0, r4
	bl	free(PLT)
	movs	r0, #1
	pop	{r3, r4, r5, pc}
.L246:
	cmp	r5, r4
	beq	.L247
.L235:
	movs	r0, #0
	pop	{r3, r4, r5, pc}
.L245:
	cmp	r1, r4
	it	eq
	ldreq	r1, [r1, #8]
	bne	.L235
	b	.L236
.L247:
	mov	r5, r3
	b	.L238
	.size	libaroma_stack_item_delete, .-libaroma_stack_item_delete
	.section	.text.libaroma_stack_get_pos,"ax",%progbits
	.align	2
	.global	libaroma_stack_get_pos
	.thumb
	.thumb_func
	.type	libaroma_stack_get_pos, %function
libaroma_stack_get_pos:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0
	it	ne
	cmpne	r0, #0
	ite	eq
	moveq	r2, #1
	movne	r2, #0
	beq	.L253
	ldr	r3, [r0, #4]
	cbz	r3, .L253
	cmp	r1, r3
	mov	r0, r2
	bne	.L250
	b	.L249
.L251:
	cmp	r1, r3
	beq	.L249
.L250:
	ldr	r3, [r3, #8]
	adds	r0, r0, #1
	cmp	r3, #0
	bne	.L251
.L253:
	mov	r0, #-1
	bx	lr
.L249:
	bx	lr
	.size	libaroma_stack_get_pos, .-libaroma_stack_get_pos
	.section	.text.libaroma_stack_at,"ax",%progbits
	.align	2
	.global	libaroma_stack_at
	.thumb
	.thumb_func
	.type	libaroma_stack_at, %function
libaroma_stack_at:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsrs	r3, r1, #31
	cmp	r0, #0
	it	eq
	orreq	r3, r3, #1
	cbnz	r3, .L264
	ldr	r2, [r0]
	cmp	r1, r2
	bge	.L265
	cmp	r1, r2, lsl #1
	bgt	.L258
	ldr	r0, [r0, #4]
	cbz	r0, .L257
	cbnz	r1, .L260
	b	.L257
.L261:
	cmp	r1, r3
	beq	.L257
.L260:
	ldr	r0, [r0, #8]
	adds	r3, r3, #1
	cmp	r0, #0
	bne	.L261
	bx	lr
.L258:
	ldr	r0, [r0, #8]
	subs	r3, r2, #1
	cbz	r0, .L257
	cmp	r1, r3
	bne	.L262
	b	.L275
.L263:
	cmp	r1, r3
	beq	.L257
.L262:
	ldr	r0, [r0, #4]
	subs	r3, r3, #1
	cmp	r0, #0
	bne	.L263
	bx	lr
.L265:
	mov	r0, r3
.L257:
	bx	lr
.L264:
	movs	r0, #0
	bx	lr
.L275:
	bx	lr
	.size	libaroma_stack_at, .-libaroma_stack_at
	.section	.text.libaroma_stack_get,"ax",%progbits
	.align	2
	.global	libaroma_stack_get
	.thumb
	.thumb_func
	.type	libaroma_stack_get, %function
libaroma_stack_get:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	bl	libaroma_stack_at(PLT)
	cbz	r0, .L277
	ldr	r0, [r0]
.L277:
	pop	{r3, pc}
	.size	libaroma_stack_get, .-libaroma_stack_get
	.section	.text.libaroma_stack_get_string,"ax",%progbits
	.align	2
	.global	libaroma_stack_get_string
	.thumb
	.thumb_func
	.type	libaroma_stack_get_string, %function
libaroma_stack_get_string:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	libaroma_stack_get(PLT)
	.size	libaroma_stack_get_string, .-libaroma_stack_get_string
	.section	.text.libaroma_stack_set,"ax",%progbits
	.align	2
	.global	libaroma_stack_set
	.thumb
	.thumb_func
	.type	libaroma_stack_set, %function
libaroma_stack_set:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r7, r2
	mov	r6, r3
	mov	r4, r0
	ldrb	r5, [sp, #24]	@ zero_extendqisi2
	bl	libaroma_stack_at(PLT)
	cbz	r0, .L282
	mov	r1, r0
	str	r5, [sp, #24]
	mov	r0, r4
	mov	r2, r7
	mov	r3, r6
	pop	{r4, r5, r6, r7, r8, lr}
	b	libaroma_stack_item_set(PLT)
.L282:
	pop	{r4, r5, r6, r7, r8, pc}
	.size	libaroma_stack_set, .-libaroma_stack_set
	.section	.text.libaroma_stack_set_string,"ax",%progbits
	.align	2
	.global	libaroma_stack_set_string
	.thumb
	.thumb_func
	.type	libaroma_stack_set_string, %function
libaroma_stack_set_string:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r4, r2
	sub	sp, sp, #12
	mov	r6, r0
	mov	r7, r1
	mov	r0, r2
	movs	r5, #0
	bl	strlen(PLT)
	mov	r1, r7
	adds	r3, r0, #1
	mov	r2, r4
	mov	r0, r6
	str	r5, [sp]
	bl	libaroma_stack_set(PLT)
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
	.size	libaroma_stack_set_string, .-libaroma_stack_set_string
	.section	.text.libaroma_stack_delete,"ax",%progbits
	.align	2
	.global	libaroma_stack_delete
	.thumb
	.thumb_func
	.type	libaroma_stack_delete, %function
libaroma_stack_delete:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	bl	libaroma_stack_at(PLT)
	cbz	r0, .L287
	mov	r1, r0
	mov	r0, r4
	pop	{r4, lr}
	b	libaroma_stack_item_delete(PLT)
.L287:
	pop	{r4, pc}
	.size	libaroma_stack_delete, .-libaroma_stack_delete
	.section	.text.libaroma_stack_add_at,"ax",%progbits
	.align	2
	.global	libaroma_stack_add_at
	.thumb
	.thumb_func
	.type	libaroma_stack_add_at, %function
libaroma_stack_add_at:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	it	ne
	cmpne	r0, #0
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
	mov	r5, r2
	beq	.L292
	clz	r4, r3
	lsrs	r4, r4, #5
	mov	r7, r3
	orrs	r4, r4, r1, lsr #31
	bne	.L292
	ldr	r3, [r0]
	mov	r8, r0
	cmp	r1, r3
	bgt	.L292
	beq	.L299
	cbz	r1, .L300
	bl	libaroma_stack_at(PLT)
	mov	r6, r0
	cbz	r0, .L292
	ldr	r9, [r0, #4]
	movs	r0, #12
	bl	malloc(PLT)
	mov	r4, r0
	mov	r0, r7
	bl	malloc(PLT)
	str	r6, [r4, #8]
	mov	r1, r5
	str	r0, [r4]
	mov	r2, r7
	str	r9, [r4, #4]
	str	r4, [r6, #4]
	str	r4, [r9, #8]
	bl	memcpy(PLT)
	ldr	r3, [r8]
	movs	r0, #1
	add	r3, r3, r0
	str	r3, [r8]
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.L292:
	movs	r0, #0
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.L300:
	mov	r1, r2
	mov	r2, r7
	pop	{r3, r4, r5, r6, r7, r8, r9, lr}
	b	libaroma_stack_unshift(PLT)
.L299:
	mov	r1, r2
	mov	r2, r7
	pop	{r3, r4, r5, r6, r7, r8, r9, lr}
	b	libaroma_stack_push(PLT)
	.size	libaroma_stack_add_at, .-libaroma_stack_add_at
	.section	.text.libaroma_stack_add_at_string,"ax",%progbits
	.align	2
	.global	libaroma_stack_add_at_string
	.thumb
	.thumb_func
	.type	libaroma_stack_add_at_string, %function
libaroma_stack_add_at_string:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r2
	mov	r5, r0
	mov	r6, r1
	mov	r0, r2
	bl	strlen(PLT)
	mov	r1, r6
	adds	r3, r0, #1
	mov	r2, r4
	mov	r0, r5
	pop	{r4, r5, r6, lr}
	b	libaroma_stack_add_at(PLT)
	.size	libaroma_stack_add_at_string, .-libaroma_stack_add_at_string
	.section	.text.libaroma_stack_free,"ax",%progbits
	.align	2
	.global	libaroma_stack_free
	.thumb
	.thumb_func
	.type	libaroma_stack_free, %function
libaroma_stack_free:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r5, r0
	cbz	r0, .L309
	ldr	r4, [r0, #4]
	cbz	r4, .L307
.L308:
	ldr	r3, [r5, #12]
	cbz	r3, .L306
	ldr	r0, [r4]
	blx	r3
.L306:
	ldr	r0, [r4]
	bl	free(PLT)
	mov	r0, r4
	ldr	r6, [r4, #8]
	bl	free(PLT)
	ldr	r3, [r5]
	mov	r4, r6
	subs	r3, r3, #1
	str	r3, [r5]
	cmp	r6, #0
	bne	.L308
.L307:
	mov	r0, r5
	bl	free(PLT)
	movs	r0, #1
	pop	{r4, r5, r6, pc}
.L309:
	pop	{r4, r5, r6, pc}
	.size	libaroma_stack_free, .-libaroma_stack_free
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
