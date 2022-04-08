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
	.file	"cff.c"
	.section	.text.cff_get_kerning,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_get_kerning, %function
cff_get_kerning:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #532]
	str	r3, [r7, #16]
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L2
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #84]
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	blx	r3
	mov	r2, r0
	ldr	r3, [r7]
	str	r2, [r3]
.L2:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cff_get_kerning, .-cff_get_kerning
	.section	.text.cff_glyph_load,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_glyph_load, %function
cff_glyph_load:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	str	r3, [r7, #24]
	ldr	r3, [r7, #8]
	str	r3, [r7, #28]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L5
	movs	r3, #37
	b	.L6
.L5:
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L7
	ldr	r3, [r7]
	orr	r3, r3, #3
	str	r3, [r7]
.L7:
	ldr	r3, [r7]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L8
	movs	r3, #0
	str	r3, [r7, #28]
.L8:
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L9
	ldr	r3, [r7, #8]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	beq	.L9
	movs	r3, #35
	b	.L6
.L9:
	ldr	r0, [r7, #24]
	ldr	r1, [r7, #28]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	cff_slot_load(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
.L6:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cff_glyph_load, .-cff_glyph_load
	.section	.text.cff_get_advances,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_get_advances, %function
cff_get_advances:
	@ args = 4, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #52
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #32]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #84]
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L11
	ldr	r3, [r7, #12]
	str	r3, [r7, #24]
	ldr	r3, [r7]
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L12
	ldr	r3, [r7, #24]
	ldrb	r3, [r3, #292]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L13
	b	.L11
.L13:
	movs	r3, #0
	str	r3, [r7, #36]
	b	.L15
.L16:
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #532]
	ldr	r4, [r3, #112]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #36]
	add	r2, r2, r3
	add	r3, r7, #22
	add	r1, r7, #20
	str	r1, [sp]
	ldr	r0, [r7, #24]
	movs	r1, #1
	blx	r4
	ldr	r3, [r7, #36]
	lsls	r3, r3, #2
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrh	r2, [r7, #20]
	str	r2, [r3]
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L15:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcc	.L16
	b	.L17
.L12:
	ldr	r3, [r7, #24]
	ldrh	r3, [r3, #250]
	cmp	r3, #0
	bne	.L18
	b	.L11
.L18:
	movs	r3, #0
	str	r3, [r7, #36]
	b	.L19
.L20:
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #532]
	ldr	r4, [r3, #112]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #36]
	add	r2, r2, r3
	add	r3, r7, #22
	add	r1, r7, #18
	str	r1, [sp]
	ldr	r0, [r7, #24]
	movs	r1, #0
	blx	r4
	ldr	r3, [r7, #36]
	lsls	r3, r3, #2
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrh	r2, [r7, #18]
	str	r2, [r3]
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L19:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcc	.L20
.L17:
	ldr	r3, [r7, #32]
	b	.L21
.L11:
	ldr	r3, [r7]
	orr	r3, r3, #256
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #36]
	b	.L22
.L27:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #88]
	ldr	r1, [r7, #8]
	ldr	r3, [r7, #36]
	add	r3, r3, r1
	ldr	r0, [r7, #28]
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [r7]
	bl	cff_glyph_load(PLT)
	str	r0, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L23
	b	.L24
.L23:
	ldr	r3, [r7, #36]
	lsls	r3, r3, #2
	ldr	r2, [r7, #56]
	add	r2, r2, r3
	ldr	r3, [r7]
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L25
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #60]
	b	.L26
.L25:
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #56]
.L26:
	str	r3, [r2]
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L22:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcc	.L27
.L24:
	ldr	r3, [r7, #32]
.L21:
	mov	r0, r3
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	cff_get_advances, .-cff_get_advances
	.section	.text.cff_get_glyph_name,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_get_glyph_name, %function
cff_get_glyph_name:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #656]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #2956]
	cmp	r3, #0
	bne	.L29
	movs	r3, #11
	str	r3, [r7, #28]
	b	.L30
.L29:
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #1160]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r3, [r3]	@ movhi
	strh	r3, [r7, #22]	@ movhi
	ldrh	r3, [r7, #22]
	ldr	r0, [r7, #24]
	mov	r1, r3
	bl	cff_index_get_sid_string(PLT)
	str	r0, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L31
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #16]
	ldr	r2, [r7]
	bl	ft_mem_strcpyn(PLT)
.L31:
	movs	r3, #0
	str	r3, [r7, #28]
.L30:
	ldr	r3, [r7, #28]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cff_get_glyph_name, .-cff_get_glyph_name
	.section	.rodata
	.align	2
.LC0:
	.ascii	"postscript-cmaps\000"
	.section	.text.cff_get_name_index,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_get_name_index, %function
cff_get_name_index:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #656]
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	add	r3, r3, #1152
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #96]
	str	r3, [r7, #20]
	ldr	r0, [r7, #20]
	ldr	r3, .L42
.LPIC0:
	add	r3, pc
	mov	r1, r3
	bl	ft_module_get_service(PLT)
	str	r0, [r7, #16]
	ldr	r3, [r7, #16]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L34
	movs	r3, #0
	b	.L35
.L34:
	movs	r3, #0
	str	r3, [r7, #32]
	b	.L36
.L41:
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #32]
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r3, [r3]	@ movhi
	strh	r3, [r7, #10]	@ movhi
	ldrh	r3, [r7, #10]
	cmp	r3, #390
	bls	.L37
	ldrh	r3, [r7, #10]
	subw	r3, r3, #391
	ldr	r0, [r7, #28]
	mov	r1, r3
	bl	cff_index_get_string(PLT)
	str	r0, [r7, #36]
	b	.L38
.L37:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #20]
	ldrh	r2, [r7, #10]
	mov	r0, r2
	blx	r3
	str	r0, [r7, #36]
.L38:
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L39
	b	.L40
.L39:
	ldr	r0, [r7]
	ldr	r1, [r7, #36]
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L40
	ldr	r3, [r7, #32]
	b	.L35
.L40:
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	str	r3, [r7, #32]
.L36:
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bhi	.L41
	movs	r3, #0
.L35:
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L43:
	.align	2
.L42:
	.word	.LC0-(.LPIC0+4)
	.size	cff_get_name_index, .-cff_get_name_index
	.section	.data.rel.ro.local.cff_service_glyph_dict,"aw",%progbits
	.align	2
	.type	cff_service_glyph_dict, %object
	.size	cff_service_glyph_dict, 8
cff_service_glyph_dict:
	.word	cff_get_glyph_name
	.word	cff_get_name_index
	.section	.text.cff_ps_has_glyph_names,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_ps_has_glyph_names, %function
cff_ps_has_glyph_names:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	and	r3, r3, #512
	cmp	r3, #0
	ite	gt
	movgt	r3, #1
	movle	r3, #0
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	cff_ps_has_glyph_names, .-cff_ps_has_glyph_names
	.section	.text.cff_ps_get_font_info,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_ps_get_font_info, %function
cff_ps_get_font_info:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #656]
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L47
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #2960]
	cmp	r3, #0
	bne	.L47
	ldr	r3, [r7, #28]
	addw	r3, r3, #1324
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	str	r3, [r7, #16]
	add	r3, r7, #12
	ldr	r0, [r7, #16]
	movs	r1, #32
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L48
	b	.L49
.L48:
	ldr	r3, [r7, #24]
	ldr	r3, [r3]
	ldr	r0, [r7, #28]
	mov	r1, r3
	bl	cff_index_get_sid_string(PLT)
	mov	r2, r0
	ldr	r3, [r7, #20]
	str	r2, [r3]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #28]
	mov	r1, r3
	bl	cff_index_get_sid_string(PLT)
	mov	r2, r0
	ldr	r3, [r7, #20]
	str	r2, [r3, #4]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #12]
	ldr	r0, [r7, #28]
	mov	r1, r3
	bl	cff_index_get_sid_string(PLT)
	mov	r2, r0
	ldr	r3, [r7, #20]
	str	r2, [r3, #8]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #16]
	ldr	r0, [r7, #28]
	mov	r1, r3
	bl	cff_index_get_sid_string(PLT)
	mov	r2, r0
	ldr	r3, [r7, #20]
	str	r2, [r3, #12]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #20]
	ldr	r0, [r7, #28]
	mov	r1, r3
	bl	cff_index_get_sid_string(PLT)
	mov	r2, r0
	ldr	r3, [r7, #20]
	str	r2, [r3, #16]
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #20]
	str	r2, [r3, #20]
	ldr	r3, [r7, #24]
	ldrb	r2, [r3, #24]	@ zero_extendqisi2
	ldr	r3, [r7, #20]
	strb	r2, [r3, #24]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #32]
	uxth	r2, r3
	ldr	r3, [r7, #20]
	strh	r2, [r3, #26]	@ movhi
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #36]
	uxth	r2, r3
	ldr	r3, [r7, #20]
	strh	r2, [r3, #28]	@ movhi
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #20]
	str	r2, [r3, #2960]
.L47:
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L49
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #2960]
	ldr	r2, [r7]
	mov	r4, r2
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5, {r0, r1, r2, r3}
	stmia	r4, {r0, r1, r2, r3}
.L49:
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.size	cff_ps_get_font_info, .-cff_ps_get_font_info
	.section	.data.rel.ro.local.cff_service_ps_info,"aw",%progbits
	.align	2
	.type	cff_service_ps_info, %object
	.size	cff_service_ps_info, 20
cff_service_ps_info:
	.word	cff_ps_get_font_info
	.word	0
	.word	cff_ps_has_glyph_names
	.word	0
	.word	0
	.section	.rodata
	.align	2
.LC1:
	.ascii	"sfnt\000"
	.align	2
.LC2:
	.ascii	"postscript-font-name\000"
	.section	.text.cff_get_ps_name,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_get_ps_name, %function
cff_get_ps_name:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #656]
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #532]
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L52
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L52
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #96]
	ldr	r3, [r3, #4]
	str	r3, [r7, #20]
	ldr	r0, [r7, #20]
	ldr	r3, .L54
.LPIC1:
	add	r3, pc
	mov	r1, r3
	bl	FT_Get_Module(PLT)
	str	r0, [r7, #16]
	ldr	r0, [r7, #16]
	ldr	r3, .L54+4
.LPIC2:
	add	r3, pc
	mov	r1, r3
	bl	ft_module_get_service(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L52
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L52
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r0, [r7, #4]
	blx	r3
	mov	r3, r0
	b	.L53
.L52:
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #1304]
.L53:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L55:
	.align	2
.L54:
	.word	.LC1-(.LPIC1+4)
	.word	.LC2-(.LPIC2+4)
	.size	cff_get_ps_name, .-cff_get_ps_name
	.section	.data.rel.ro.local.cff_service_ps_name,"aw",%progbits
	.align	2
	.type	cff_service_ps_name, %object
	.size	cff_service_ps_name, 4
cff_service_ps_name:
	.word	cff_get_ps_name
	.section	.rodata
	.align	2
.LC3:
	.ascii	"tt-cmaps\000"
	.section	.text.cff_get_cmap_info,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_get_cmap_info, %function
cff_get_cmap_info:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, .L59
.LPIC3:
	add	r3, pc
	ldr	r2, [r7, #4]
	str	r2, [r7, #24]
	movs	r2, #0
	str	r2, [r7, #28]
	ldr	r2, [r7, #24]
	ldr	r2, [r2]
	str	r2, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r2, [r2, #96]
	ldr	r2, [r2, #4]
	str	r2, [r7, #16]
	ldr	r2, [r7]
	movs	r1, #0
	str	r1, [r2]
	ldr	r2, [r7]
	movs	r1, #0
	str	r1, [r2, #4]
	ldr	r2, [r7, #24]
	ldr	r1, [r2, #12]
	ldr	r2, .L59+4
	ldr	r2, [r3, r2]
	cmp	r1, r2
	beq	.L57
	ldr	r2, [r7, #24]
	ldr	r2, [r2, #12]
	ldr	r1, .L59+8
	ldr	r3, [r3, r1]
	cmp	r2, r3
	beq	.L57
	ldr	r0, [r7, #16]
	ldr	r3, .L59+12
.LPIC4:
	add	r3, pc
	mov	r1, r3
	bl	FT_Get_Module(PLT)
	str	r0, [r7, #12]
	ldr	r0, [r7, #12]
	ldr	r3, .L59+16
.LPIC5:
	add	r3, pc
	mov	r1, r3
	bl	ft_module_get_service(PLT)
	str	r0, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L57
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L57
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	blx	r3
	str	r0, [r7, #28]
.L57:
	ldr	r3, [r7, #28]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L60:
	.align	2
.L59:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC3+4)
	.word	cff_cmap_encoding_class_rec(GOT)
	.word	cff_cmap_unicode_class_rec(GOT)
	.word	.LC1-(.LPIC4+4)
	.word	.LC3-(.LPIC5+4)
	.size	cff_get_cmap_info, .-cff_get_cmap_info
	.section	.data.rel.ro.local.cff_service_get_cmap_info,"aw",%progbits
	.align	2
	.type	cff_service_get_cmap_info, %object
	.size	cff_service_get_cmap_info, 4
cff_service_get_cmap_info:
	.word	cff_get_cmap_info
	.section	.text.cff_get_ros,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_get_ros, %function
cff_get_ros:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #656]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L62
	ldr	r3, [r7, #24]
	addw	r3, r3, #1324
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #132]
	movw	r3, #65535
	cmp	r2, r3
	bne	.L63
	movs	r3, #6
	str	r3, [r7, #28]
	b	.L62
.L63:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L64
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #2964]
	cmp	r3, #0
	bne	.L65
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #132]
	ldr	r0, [r7, #24]
	mov	r1, r3
	bl	cff_index_get_sid_string(PLT)
	mov	r2, r0
	ldr	r3, [r7, #24]
	str	r2, [r3, #2964]
.L65:
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #2964]
	ldr	r3, [r7, #8]
	str	r2, [r3]
.L64:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L66
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #2968]
	cmp	r3, #0
	bne	.L67
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #136]
	ldr	r0, [r7, #24]
	mov	r1, r3
	bl	cff_index_get_sid_string(PLT)
	mov	r2, r0
	ldr	r3, [r7, #24]
	str	r2, [r3, #2968]
.L67:
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #2968]
	ldr	r3, [r7, #4]
	str	r2, [r3]
.L66:
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L62
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #140]
	ldr	r3, [r7]
	str	r2, [r3]
.L62:
	ldr	r3, [r7, #28]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cff_get_ros, .-cff_get_ros
	.section	.text.cff_get_is_cid,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_get_is_cid, %function
cff_get_is_cid:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #656]
	str	r3, [r7, #16]
	ldr	r3, [r7]
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L70
	ldr	r3, [r7, #16]
	addw	r3, r3, #1324
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #132]
	movw	r3, #65535
	cmp	r2, r3
	beq	.L70
	ldr	r3, [r7]
	movs	r2, #1
	strb	r2, [r3]
.L70:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	cff_get_is_cid, .-cff_get_is_cid
	.section	.text.cff_get_cid_from_glyph_index,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_get_cid_from_glyph_index, %function
cff_get_cid_from_glyph_index:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #656]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L73
	ldr	r3, [r7, #24]
	addw	r3, r3, #1324
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #132]
	movw	r3, #65535
	cmp	r2, r3
	bne	.L74
	movs	r3, #6
	str	r3, [r7, #28]
	b	.L73
.L74:
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcs	.L75
	movs	r3, #6
	str	r3, [r7, #28]
	b	.L73
.L75:
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #1160]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r3, [r3]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L73
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #16]
	str	r2, [r3]
.L73:
	ldr	r3, [r7, #28]
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	cff_get_cid_from_glyph_index, .-cff_get_cid_from_glyph_index
	.section	.data.rel.ro.local.cff_service_cid_info,"aw",%progbits
	.align	2
	.type	cff_service_cid_info, %object
	.size	cff_service_cid_info, 12
cff_service_cid_info:
	.word	cff_get_ros
	.word	cff_get_is_cid
	.word	cff_get_cid_from_glyph_index
	.section	.rodata
	.align	2
.LC4:
	.ascii	"darkening-parameters\000"
	.align	2
.LC5:
	.ascii	"hinting-engine\000"
	.align	2
.LC6:
	.ascii	"no-stem-darkening\000"
	.section	.text.cff_property_set,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_property_set, %function
cff_property_set:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #72
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #68]
	ldr	r3, [r7, #12]
	str	r3, [r7, #64]
	ldr	r0, [r7, #8]
	ldr	r3, .L86
.LPIC6:
	add	r3, pc
	mov	r1, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L78
	ldr	r3, [r7, #4]
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	ldr	r3, [r3]
	str	r3, [r7, #56]
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #4]
	str	r3, [r7, #52]
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #8]
	str	r3, [r7, #48]
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #12]
	str	r3, [r7, #44]
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #16]
	str	r3, [r7, #40]
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #20]
	str	r3, [r7, #36]
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #24]
	str	r3, [r7, #32]
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #28]
	str	r3, [r7, #28]
	ldr	r3, [r7, #56]
	cmp	r3, #0
	blt	.L79
	ldr	r3, [r7, #48]
	cmp	r3, #0
	blt	.L79
	ldr	r3, [r7, #40]
	cmp	r3, #0
	blt	.L79
	ldr	r3, [r7, #32]
	cmp	r3, #0
	blt	.L79
	ldr	r3, [r7, #52]
	cmp	r3, #0
	blt	.L79
	ldr	r3, [r7, #44]
	cmp	r3, #0
	blt	.L79
	ldr	r3, [r7, #36]
	cmp	r3, #0
	blt	.L79
	ldr	r3, [r7, #28]
	cmp	r3, #0
	blt	.L79
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #48]
	cmp	r2, r3
	bgt	.L79
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bgt	.L79
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bgt	.L79
	ldr	r3, [r7, #52]
	cmp	r3, #500
	bgt	.L79
	ldr	r3, [r7, #44]
	cmp	r3, #500
	bgt	.L79
	ldr	r3, [r7, #36]
	cmp	r3, #500
	bgt	.L79
	ldr	r3, [r7, #28]
	cmp	r3, #500
	ble	.L80
.L79:
	movs	r3, #6
	b	.L81
.L80:
	ldr	r3, [r7, #64]
	ldr	r2, [r7, #56]
	str	r2, [r3, #36]
	ldr	r3, [r7, #64]
	ldr	r2, [r7, #52]
	str	r2, [r3, #40]
	ldr	r3, [r7, #64]
	ldr	r2, [r7, #48]
	str	r2, [r3, #44]
	ldr	r3, [r7, #64]
	ldr	r2, [r7, #44]
	str	r2, [r3, #48]
	ldr	r3, [r7, #64]
	ldr	r2, [r7, #40]
	str	r2, [r3, #52]
	ldr	r3, [r7, #64]
	ldr	r2, [r7, #36]
	str	r2, [r3, #56]
	ldr	r3, [r7, #64]
	ldr	r2, [r7, #32]
	str	r2, [r3, #60]
	ldr	r3, [r7, #64]
	ldr	r2, [r7, #28]
	str	r2, [r3, #64]
	ldr	r3, [r7, #68]
	b	.L81
.L78:
	ldr	r0, [r7, #8]
	ldr	r3, .L86+4
.LPIC7:
	add	r3, pc
	mov	r1, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L82
	ldr	r3, [r7, #4]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L83
	movs	r3, #7
	str	r3, [r7, #68]
	b	.L84
.L83:
	ldr	r3, [r7, #24]
	ldr	r2, [r3]
	ldr	r3, [r7, #64]
	str	r2, [r3, #28]
.L84:
	ldr	r3, [r7, #68]
	b	.L81
.L82:
	ldr	r0, [r7, #8]
	ldr	r3, .L86+8
.LPIC8:
	add	r3, pc
	mov	r1, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L85
	ldr	r3, [r7, #4]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #64]
	strb	r2, [r3, #32]
	ldr	r3, [r7, #68]
	b	.L81
.L85:
	movs	r3, #12
.L81:
	mov	r0, r3
	adds	r7, r7, #72
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L87:
	.align	2
.L86:
	.word	.LC4-(.LPIC6+4)
	.word	.LC5-(.LPIC7+4)
	.word	.LC6-(.LPIC8+4)
	.size	cff_property_set, .-cff_property_set
	.section	.text.cff_property_get,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_property_get, %function
cff_property_get:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #44]
	ldr	r3, [r7, #12]
	str	r3, [r7, #40]
	ldr	r0, [r7, #8]
	ldr	r3, .L93
.LPIC9:
	add	r3, pc
	mov	r1, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L89
	ldr	r3, [r7, #40]
	adds	r3, r3, #36
	str	r3, [r7, #36]
	ldr	r3, [r7, #4]
	str	r3, [r7, #32]
	ldr	r3, [r7, #36]
	ldr	r2, [r3]
	ldr	r3, [r7, #32]
	str	r2, [r3]
	ldr	r3, [r7, #32]
	adds	r3, r3, #4
	ldr	r2, [r7, #36]
	ldr	r2, [r2, #4]
	str	r2, [r3]
	ldr	r3, [r7, #32]
	adds	r3, r3, #8
	ldr	r2, [r7, #36]
	ldr	r2, [r2, #8]
	str	r2, [r3]
	ldr	r3, [r7, #32]
	adds	r3, r3, #12
	ldr	r2, [r7, #36]
	ldr	r2, [r2, #12]
	str	r2, [r3]
	ldr	r3, [r7, #32]
	adds	r3, r3, #16
	ldr	r2, [r7, #36]
	ldr	r2, [r2, #16]
	str	r2, [r3]
	ldr	r3, [r7, #32]
	adds	r3, r3, #20
	ldr	r2, [r7, #36]
	ldr	r2, [r2, #20]
	str	r2, [r3]
	ldr	r3, [r7, #32]
	adds	r3, r3, #24
	ldr	r2, [r7, #36]
	ldr	r2, [r2, #24]
	str	r2, [r3]
	ldr	r3, [r7, #32]
	adds	r3, r3, #28
	ldr	r2, [r7, #36]
	ldr	r2, [r2, #28]
	str	r2, [r3]
	ldr	r3, [r7, #44]
	b	.L90
.L89:
	ldr	r0, [r7, #8]
	ldr	r3, .L93+4
.LPIC10:
	add	r3, pc
	mov	r1, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L91
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #28]
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #28]
	str	r2, [r3]
	ldr	r3, [r7, #44]
	b	.L90
.L91:
	ldr	r0, [r7, #8]
	ldr	r3, .L93+8
.LPIC11:
	add	r3, pc
	mov	r1, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L92
	ldr	r3, [r7, #40]
	ldrb	r3, [r3, #32]
	strb	r3, [r7, #23]
	ldr	r3, [r7, #4]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldrb	r2, [r7, #23]
	strb	r2, [r3]
	ldr	r3, [r7, #44]
	b	.L90
.L92:
	movs	r3, #12
.L90:
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L94:
	.align	2
.L93:
	.word	.LC4-(.LPIC9+4)
	.word	.LC5-(.LPIC10+4)
	.word	.LC6-(.LPIC11+4)
	.size	cff_property_get, .-cff_property_get
	.section	.data.rel.ro.local.cff_service_properties,"aw",%progbits
	.align	2
	.type	cff_service_properties, %object
	.size	cff_service_properties, 8
cff_service_properties:
	.word	cff_property_set
	.word	cff_property_get
	.section	.rodata
	.align	2
.LC7:
	.ascii	"font-format\000"
	.align	2
.LC8:
	.ascii	"CFF\000"
	.align	2
.LC9:
	.ascii	"postscript-info\000"
	.align	2
.LC10:
	.ascii	"glyph-dict\000"
	.align	2
.LC11:
	.ascii	"CID\000"
	.align	2
.LC12:
	.ascii	"properties\000"
	.section	.data.rel.ro.local.cff_services,"aw",%progbits
	.align	2
	.type	cff_services, %object
	.size	cff_services, 64
cff_services:
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	cff_service_ps_info
	.word	.LC2
	.word	cff_service_ps_name
	.word	.LC10
	.word	cff_service_glyph_dict
	.word	.LC3
	.word	cff_service_get_cmap_info
	.word	.LC11
	.word	cff_service_cid_info
	.word	.LC12
	.word	cff_service_properties
	.word	0
	.word	0
	.section	.text.cff_get_interface,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_get_interface, %function
cff_get_interface:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, .L102
.LPIC12:
	add	r3, pc
	mov	r0, r3
	ldr	r1, [r7]
	bl	ft_service_list_lookup(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L96
	ldr	r3, [r7, #20]
	b	.L97
.L96:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L98
	movs	r3, #0
	b	.L97
.L98:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L99
	movs	r3, #0
	b	.L97
.L99:
	ldr	r0, [r7, #16]
	ldr	r3, .L102+4
.LPIC13:
	add	r3, pc
	mov	r1, r3
	bl	FT_Get_Module(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L100
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #32]
	ldr	r0, [r7, #12]
	ldr	r1, [r7]
	blx	r3
	mov	r3, r0
	b	.L101
.L100:
	movs	r3, #0
.L101:
.L97:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L103:
	.align	2
.L102:
	.word	cff_services-(.LPIC12+4)
	.word	.LC1-(.LPIC13+4)
	.size	cff_get_interface, .-cff_get_interface
	.global	cff_driver_class
	.section	.rodata
	.align	2
.LC13:
	.ascii	"cff\000"
	.section	.data.rel.ro.local.cff_driver_class,"aw",%progbits
	.align	2
	.type	cff_driver_class, %object
	.size	cff_driver_class, 96
cff_driver_class:
	.word	3329
	.word	68
	.word	.LC13
	.word	65536
	.word	131072
	.word	0
	.word	cff_driver_init
	.word	cff_driver_done
	.word	cff_get_interface
	.word	800
	.word	48
	.word	172
	.word	cff_face_init
	.word	cff_face_done
	.word	cff_size_init
	.word	cff_size_done
	.word	cff_slot_init
	.word	cff_slot_done
	.word	cff_glyph_load
	.word	cff_get_kerning
	.word	0
	.word	cff_get_advances
	.word	cff_size_request
	.word	cff_size_select
	.section	.text.cff_parser_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_parser_init, %function
cff_parser_init:
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
	movs	r1, #0
	mov	r2, #416
	bl	memset(PLT)
	ldr	r3, [r7, #12]
	add	r2, r3, #16
	ldr	r3, [r7, #12]
	str	r2, [r3, #404]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #408]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #412]
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	str	r2, [r3]
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cff_parser_init, .-cff_parser_init
	.section	.text.cff_parse_integer,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_parse_integer, %function
cff_parse_integer:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	adds	r2, r3, #1
	str	r2, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	cmp	r3, #28
	bne	.L106
	ldr	r3, [r7, #16]
	adds	r2, r3, #2
	ldr	r3, [r7]
	cmp	r2, r3
	bls	.L107
	b	.L108
.L107:
	ldr	r3, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	sxth	r3, r3
	str	r3, [r7, #20]
	b	.L109
.L106:
	ldr	r3, [r7, #12]
	cmp	r3, #29
	bne	.L110
	ldr	r3, [r7, #16]
	adds	r2, r3, #4
	ldr	r3, [r7]
	cmp	r2, r3
	bls	.L111
	b	.L108
.L111:
	ldr	r3, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #16]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #16]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #20]
	b	.L109
.L110:
	ldr	r3, [r7, #12]
	cmp	r3, #246
	bgt	.L112
	ldr	r3, [r7, #12]
	subs	r3, r3, #139
	str	r3, [r7, #20]
	b	.L109
.L112:
	ldr	r3, [r7, #12]
	cmp	r3, #250
	bgt	.L113
	ldr	r3, [r7, #16]
	adds	r2, r3, #1
	ldr	r3, [r7]
	cmp	r2, r3
	bls	.L114
	b	.L108
.L114:
	ldr	r3, [r7, #12]
	subs	r3, r3, #247
	lsls	r2, r3, #8
	ldr	r3, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	add	r3, r3, r2
	adds	r3, r3, #108
	str	r3, [r7, #20]
	b	.L109
.L113:
	ldr	r3, [r7, #16]
	adds	r2, r3, #1
	ldr	r3, [r7]
	cmp	r2, r3
	bls	.L115
	b	.L108
.L115:
	ldr	r3, [r7, #12]
	rsb	r3, r3, #251
	lsls	r2, r3, #8
	ldr	r3, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r2, r3
	subs	r3, r3, #108
	str	r3, [r7, #20]
.L109:
	ldr	r3, [r7, #20]
	b	.L117
.L108:
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L109
.L117:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	cff_parse_integer, .-cff_parse_integer
	.section	.rodata.power_tens,"a",%progbits
	.align	2
	.type	power_tens, %object
	.size	power_tens, 40
power_tens:
	.word	1
	.word	10
	.word	100
	.word	1000
	.word	10000
	.word	100000
	.word	1000000
	.word	10000000
	.word	100000000
	.word	1000000000
	.global	__aeabi_idiv
	.section	.text.cff_parse_real,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_parse_real, %function
cff_parse_real:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #72
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	str	r3, [r7, #68]
	movs	r3, #0
	str	r3, [r7, #44]
	movs	r3, #0
	str	r3, [r7, #40]
	movs	r3, #0
	str	r3, [r7, #36]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L119
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3]
.L119:
	movs	r3, #0
	str	r3, [r7, #56]
	movs	r3, #0
	str	r3, [r7, #52]
	movs	r3, #0
	str	r3, [r7, #48]
	movs	r3, #0
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #24]
	movs	r3, #4
	str	r3, [r7, #60]
.L128:
	ldr	r3, [r7, #60]
	cmp	r3, #0
	beq	.L120
	ldr	r3, [r7, #68]
	adds	r3, r3, #1
	str	r3, [r7, #68]
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L120
	b	.L121
.L120:
	ldr	r3, [r7, #68]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #60]
	asr	r3, r2, r3
	and	r3, r3, #15
	str	r3, [r7, #64]
	ldr	r3, [r7, #60]
	rsb	r3, r3, #4
	str	r3, [r7, #60]
	ldr	r3, [r7, #64]
	cmp	r3, #14
	bne	.L122
	movs	r3, #1
	str	r3, [r7, #44]
	b	.L123
.L122:
	ldr	r3, [r7, #64]
	cmp	r3, #9
	ble	.L124
	nop
	ldr	r3, [r7, #64]
	cmp	r3, #10
	bne	.L129
	b	.L134
.L124:
	ldr	r2, [r7, #52]
	movw	r3, #52427
	movt	r3, 3276
	cmp	r2, r3
	ble	.L126
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	str	r3, [r7, #32]
	b	.L123
.L126:
	ldr	r3, [r7, #64]
	cmp	r3, #0
	bne	.L127
	ldr	r3, [r7, #52]
	cmp	r3, #0
	beq	.L123
.L127:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
	ldr	r2, [r7, #52]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #1
	mov	r2, r3
	ldr	r3, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #52]
	b	.L128
.L123:
	b	.L128
.L134:
	ldr	r3, [r7, #60]
	cmp	r3, #0
	beq	.L130
	ldr	r3, [r7, #68]
	adds	r3, r3, #1
	str	r3, [r7, #68]
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L130
	b	.L121
.L130:
	ldr	r3, [r7, #68]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #60]
	asr	r3, r2, r3
	and	r3, r3, #15
	str	r3, [r7, #64]
	ldr	r3, [r7, #60]
	rsb	r3, r3, #4
	str	r3, [r7, #60]
	ldr	r3, [r7, #64]
	cmp	r3, #9
	ble	.L131
	b	.L129
.L131:
	ldr	r3, [r7, #64]
	cmp	r3, #0
	bne	.L132
	ldr	r3, [r7, #52]
	cmp	r3, #0
	bne	.L132
	ldr	r3, [r7, #32]
	subs	r3, r3, #1
	str	r3, [r7, #32]
	b	.L133
.L132:
	ldr	r2, [r7, #52]
	movw	r3, #52427
	movt	r3, 3276
	cmp	r2, r3
	bgt	.L133
	ldr	r3, [r7, #24]
	cmp	r3, #8
	bgt	.L133
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
	ldr	r2, [r7, #52]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #1
	mov	r2, r3
	ldr	r3, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #52]
	b	.L134
.L133:
	b	.L134
.L129:
	ldr	r3, [r7, #64]
	cmp	r3, #12
	bne	.L135
	movs	r3, #1
	str	r3, [r7, #40]
	movs	r3, #11
	str	r3, [r7, #64]
.L135:
	ldr	r3, [r7, #64]
	cmp	r3, #11
	bne	.L136
.L142:
	ldr	r3, [r7, #60]
	cmp	r3, #0
	beq	.L137
	ldr	r3, [r7, #68]
	adds	r3, r3, #1
	str	r3, [r7, #68]
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L137
	b	.L121
.L137:
	ldr	r3, [r7, #68]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #60]
	asr	r3, r2, r3
	and	r3, r3, #15
	str	r3, [r7, #64]
	ldr	r3, [r7, #60]
	rsb	r3, r3, #4
	str	r3, [r7, #60]
	ldr	r3, [r7, #64]
	cmp	r3, #9
	ble	.L138
	nop
	ldr	r3, [r7, #40]
	cmp	r3, #0
	beq	.L136
	b	.L169
.L138:
	ldr	r3, [r7, #48]
	cmp	r3, #1000
	ble	.L140
	movs	r3, #1
	str	r3, [r7, #36]
	b	.L142
.L140:
	ldr	r2, [r7, #48]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #1
	mov	r2, r3
	ldr	r3, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #48]
	b	.L142
.L169:
	ldr	r3, [r7, #48]
	negs	r3, r3
	str	r3, [r7, #48]
.L136:
	ldr	r3, [r7, #52]
	cmp	r3, #0
	bne	.L143
	b	.L144
.L143:
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L145
	ldr	r3, [r7, #40]
	cmp	r3, #0
	beq	.L146
	b	.L147
.L146:
	b	.L148
.L145:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	ldr	r2, [r7, #48]
	add	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L149
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #24]
	cmp	r3, #5
	bgt	.L150
	ldr	r3, [r7, #52]
	cmp	r3, #32768
	blt	.L151
	ldr	r0, [r7, #52]
	movs	r1, #10
	bl	FT_DivFix(PLT)
	str	r0, [r7, #56]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #24]
	subs	r3, r2, r3
	adds	r2, r3, #1
	ldr	r3, [r7]
	str	r2, [r3]
	b	.L144
.L151:
	ldr	r3, [r7, #48]
	cmp	r3, #0
	ble	.L153
	ldr	r3, [r7, #48]
	cmp	r3, #5
	it	ge
	movge	r3, #5
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #24]
	subs	r3, r2, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	ble	.L154
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #20]
	subs	r3, r2, r3
	str	r3, [r7, #48]
	ldr	r3, .L171
.LPIC14:
	add	r3, pc
	ldr	r2, [r7, #16]
	ldr	r2, [r3, r2, lsl #2]
	ldr	r3, [r7, #52]
	mul	r3, r2, r3
	str	r3, [r7, #52]
	ldr	r3, [r7, #52]
	cmp	r3, #32768
	blt	.L156
	ldr	r2, [r7, #52]
	movw	r3, #26215
	movt	r3, 26214
	smull	r1, r3, r3, r2
	asrs	r1, r3, #2
	asrs	r3, r2, #31
	subs	r3, r1, r3
	str	r3, [r7, #52]
	ldr	r3, [r7, #48]
	adds	r3, r3, #1
	str	r3, [r7, #48]
	b	.L157
.L154:
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #24]
	subs	r3, r2, r3
	str	r3, [r7, #48]
	b	.L157
.L156:
	b	.L157
.L153:
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #24]
	subs	r3, r2, r3
	str	r3, [r7, #48]
.L157:
	ldr	r3, [r7, #52]
	lsls	r3, r3, #16
	str	r3, [r7, #56]
	ldr	r3, [r7]
	ldr	r2, [r7, #48]
	str	r2, [r3]
	b	.L144
.L150:
	ldr	r3, [r7, #24]
	subs	r2, r3, #5
	ldr	r3, .L171+4
.LPIC15:
	add	r3, pc
	ldr	r3, [r3, r2, lsl #2]
	ldr	r0, [r7, #52]
	mov	r1, r3
	bl	__aeabi_idiv(PLT)
	mov	r3, r0
	cmp	r3, #32768
	blt	.L159
	ldr	r3, [r7, #24]
	subs	r2, r3, #4
	ldr	r3, .L171+8
.LPIC16:
	add	r3, pc
	ldr	r3, [r3, r2, lsl #2]
	ldr	r0, [r7, #52]
	mov	r1, r3
	bl	FT_DivFix(PLT)
	str	r0, [r7, #56]
	ldr	r3, [r7, #48]
	subs	r2, r3, #4
	ldr	r3, [r7]
	str	r2, [r3]
	b	.L144
.L159:
	ldr	r3, [r7, #24]
	subs	r2, r3, #5
	ldr	r3, .L171+12
.LPIC17:
	add	r3, pc
	ldr	r3, [r3, r2, lsl #2]
	ldr	r0, [r7, #52]
	mov	r1, r3
	bl	FT_DivFix(PLT)
	str	r0, [r7, #56]
	ldr	r3, [r7, #48]
	subs	r2, r3, #5
	ldr	r3, [r7]
	str	r2, [r3]
	b	.L144
.L149:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #48]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #48]
	subs	r3, r2, r3
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	cmp	r3, #5
	ble	.L160
	b	.L148
.L160:
	ldr	r3, [r7, #28]
	cmn	r3, #5
	bge	.L161
	b	.L147
.L161:
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bge	.L162
	ldr	r3, [r7, #28]
	negs	r2, r3
	ldr	r3, .L171+16
.LPIC18:
	add	r3, pc
	ldr	r3, [r3, r2, lsl #2]
	ldr	r0, [r7, #52]
	mov	r1, r3
	bl	__aeabi_idiv(PLT)
	mov	r3, r0
	str	r3, [r7, #52]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #24]
.L162:
	ldr	r3, [r7, #24]
	cmp	r3, #10
	bne	.L163
	ldr	r2, [r7, #52]
	movw	r3, #26215
	movt	r3, 26214
	smull	r1, r3, r3, r2
	asrs	r1, r3, #2
	asrs	r3, r2, #31
	subs	r3, r1, r3
	str	r3, [r7, #52]
	ldr	r3, [r7, #24]
	subs	r3, r3, #1
	str	r3, [r7, #24]
.L163:
	ldr	r3, [r7, #24]
	cmp	r3, #0
	ble	.L164
	ldr	r3, .L171+20
.LPIC19:
	add	r3, pc
	ldr	r2, [r7, #24]
	ldr	r3, [r3, r2, lsl #2]
	ldr	r0, [r7, #52]
	mov	r1, r3
	bl	__aeabi_idiv(PLT)
	mov	r3, r0
	cmp	r3, #32768
	blt	.L165
	b	.L144
.L165:
	ldr	r3, .L171+24
.LPIC20:
	add	r3, pc
	ldr	r2, [r7, #24]
	ldr	r3, [r3, r2, lsl #2]
	ldr	r0, [r7, #52]
	mov	r1, r3
	bl	FT_DivFix(PLT)
	str	r0, [r7, #56]
	b	.L144
.L164:
	ldr	r3, [r7, #24]
	negs	r2, r3
	ldr	r3, .L171+28
.LPIC21:
	add	r3, pc
	ldr	r2, [r3, r2, lsl #2]
	ldr	r3, [r7, #52]
	mul	r3, r2, r3
	str	r3, [r7, #52]
	ldr	r3, [r7, #52]
	cmp	r3, #32768
	blt	.L166
	b	.L148
.L166:
	ldr	r3, [r7, #52]
	lsls	r3, r3, #16
	str	r3, [r7, #56]
.L144:
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L167
	ldr	r3, [r7, #56]
	negs	r3, r3
	str	r3, [r7, #56]
.L167:
	ldr	r3, [r7, #56]
	b	.L170
.L148:
	mvn	r3, #-2147483648
	str	r3, [r7, #56]
	b	.L144
.L147:
	movs	r3, #0
	str	r3, [r7, #56]
	b	.L144
.L121:
	movs	r3, #0
	str	r3, [r7, #56]
	b	.L144
.L170:
	mov	r0, r3
	adds	r7, r7, #72
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L172:
	.align	2
.L171:
	.word	power_tens-(.LPIC14+4)
	.word	power_tens-(.LPIC15+4)
	.word	power_tens-(.LPIC16+4)
	.word	power_tens-(.LPIC17+4)
	.word	power_tens-(.LPIC18+4)
	.word	power_tens-(.LPIC19+4)
	.word	power_tens-(.LPIC20+4)
	.word	power_tens-(.LPIC21+4)
	.size	cff_parse_real, .-cff_parse_real
	.section	.text.cff_parse_num,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_parse_num, %function
cff_parse_num:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #30
	bne	.L174
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	movs	r2, #0
	movs	r3, #0
	bl	cff_parse_real(PLT)
	mov	r3, r0
	asrs	r3, r3, #16
	b	.L175
.L174:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	cff_parse_integer(PLT)
	mov	r3, r0
.L175:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cff_parse_num, .-cff_parse_num
	.section	.text.do_fixed,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	do_fixed, %function
do_fixed:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #30
	bne	.L178
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7]
	movs	r3, #0
	bl	cff_parse_real(PLT)
	mov	r3, r0
	b	.L179
.L178:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	cff_parse_integer(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L180
	ldr	r3, .L184
.LPIC22:
	add	r3, pc
	ldr	r2, [r7]
	ldr	r2, [r3, r2, lsl #2]
	ldr	r3, [r7, #12]
	mul	r3, r2, r3
	str	r3, [r7, #12]
.L180:
	ldr	r3, [r7, #12]
	cmp	r3, #32768
	blt	.L181
	mvn	r3, #-2147483648
	str	r3, [r7, #12]
	b	.L182
.L181:
	ldr	r3, [r7, #12]
	cmn	r3, #32768
	bgt	.L183
	movs	r3, #1
	movt	r3, 32768
	str	r3, [r7, #12]
	b	.L182
.L183:
	ldr	r3, [r7, #12]
	lsls	r3, r3, #16
	b	.L179
.L182:
	ldr	r3, [r7, #12]
.L179:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L185:
	.align	2
.L184:
	.word	power_tens-(.LPIC22+4)
	.size	do_fixed, .-do_fixed
	.section	.text.cff_parse_fixed,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_parse_fixed, %function
cff_parse_fixed:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	movs	r1, #0
	bl	do_fixed(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cff_parse_fixed, .-cff_parse_fixed
	.section	.text.cff_parse_fixed_scaled,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_parse_fixed_scaled, %function
cff_parse_fixed_scaled:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	do_fixed(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cff_parse_fixed_scaled, .-cff_parse_fixed_scaled
	.section	.text.cff_parse_fixed_dynamic,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_parse_fixed_dynamic, %function
cff_parse_fixed_dynamic:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #30
	bne	.L191
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	movs	r2, #0
	ldr	r3, [r7]
	bl	cff_parse_real(PLT)
	mov	r3, r0
	b	.L192
.L191:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	cff_parse_integer(PLT)
	str	r0, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #32768
	blt	.L193
	movs	r3, #5
	str	r3, [r7, #12]
	b	.L194
.L197:
	ldr	r3, .L199
.LPIC23:
	add	r3, pc
	ldr	r2, [r7, #12]
	ldr	r2, [r3, r2, lsl #2]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	ble	.L195
	b	.L196
.L195:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L194:
	ldr	r3, [r7, #12]
	cmp	r3, #9
	ble	.L197
.L196:
	ldr	r3, [r7, #12]
	subs	r2, r3, #5
	ldr	r3, .L199+4
.LPIC24:
	add	r3, pc
	ldr	r3, [r3, r2, lsl #2]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	__aeabi_idiv(PLT)
	mov	r3, r0
	cmp	r3, #32768
	blt	.L198
	ldr	r3, [r7, #12]
	subs	r2, r3, #4
	ldr	r3, [r7]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	subs	r2, r3, #4
	ldr	r3, .L199+8
.LPIC25:
	add	r3, pc
	ldr	r3, [r3, r2, lsl #2]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	FT_DivFix(PLT)
	mov	r3, r0
	b	.L192
.L198:
	ldr	r3, [r7, #12]
	subs	r2, r3, #5
	ldr	r3, [r7]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	subs	r2, r3, #5
	ldr	r3, .L199+12
.LPIC26:
	add	r3, pc
	ldr	r3, [r3, r2, lsl #2]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	FT_DivFix(PLT)
	mov	r3, r0
	b	.L192
.L193:
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #16
.L192:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L200:
	.align	2
.L199:
	.word	power_tens-(.LPIC23+4)
	.word	power_tens-(.LPIC24+4)
	.word	power_tens-(.LPIC25+4)
	.word	power_tens-(.LPIC26+4)
	.size	cff_parse_fixed_dynamic, .-cff_parse_fixed_dynamic
	.section	.text.cff_parse_font_matrix,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_parse_font_matrix, %function
cff_parse_font_matrix:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #412]
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	adds	r3, r3, #48
	str	r3, [r7, #28]
	ldr	r3, [r7, #32]
	adds	r3, r3, #72
	str	r3, [r7, #24]
	ldr	r3, [r7, #32]
	adds	r3, r3, #68
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	adds	r3, r3, #16
	str	r3, [r7, #16]
	movs	r3, #161
	str	r3, [r7, #36]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #404]
	ldr	r3, [r7, #4]
	adds	r3, r3, #40
	cmp	r2, r3
	bcc	.L202
	movs	r3, #0
	str	r3, [r7, #36]
	ldr	r3, [r7, #32]
	movs	r2, #1
	strb	r2, [r3, #64]
	ldr	r3, [r7, #16]
	adds	r2, r3, #4
	str	r2, [r7, #16]
	add	r2, r7, #12
	mov	r0, r3
	mov	r1, r2
	bl	cff_parse_fixed_dynamic(PLT)
	mov	r2, r0
	ldr	r3, [r7, #28]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	negs	r3, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	blt	.L203
	ldr	r3, [r7, #12]
	cmp	r3, #9
	ble	.L204
.L203:
	ldr	r3, [r7, #28]
	mov	r2, #65536
	str	r2, [r3]
	ldr	r3, [r7, #28]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #28]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #28]
	mov	r2, #65536
	str	r2, [r3, #12]
	ldr	r3, [r7, #24]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #24]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #20]
	movs	r2, #1
	str	r2, [r3]
	b	.L202
.L204:
	ldr	r3, [r7, #16]
	adds	r2, r3, #4
	str	r2, [r7, #16]
	ldr	r2, [r7, #12]
	mov	r0, r3
	mov	r1, r2
	bl	cff_parse_fixed_scaled(PLT)
	mov	r2, r0
	ldr	r3, [r7, #28]
	str	r2, [r3, #8]
	ldr	r3, [r7, #16]
	adds	r2, r3, #4
	str	r2, [r7, #16]
	ldr	r2, [r7, #12]
	mov	r0, r3
	mov	r1, r2
	bl	cff_parse_fixed_scaled(PLT)
	mov	r2, r0
	ldr	r3, [r7, #28]
	str	r2, [r3, #4]
	ldr	r3, [r7, #16]
	adds	r2, r3, #4
	str	r2, [r7, #16]
	ldr	r2, [r7, #12]
	mov	r0, r3
	mov	r1, r2
	bl	cff_parse_fixed_scaled(PLT)
	mov	r2, r0
	ldr	r3, [r7, #28]
	str	r2, [r3, #12]
	ldr	r3, [r7, #16]
	adds	r2, r3, #4
	str	r2, [r7, #16]
	ldr	r2, [r7, #12]
	mov	r0, r3
	mov	r1, r2
	bl	cff_parse_fixed_scaled(PLT)
	mov	r2, r0
	ldr	r3, [r7, #24]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r0, [r7, #16]
	mov	r1, r3
	bl	cff_parse_fixed_scaled(PLT)
	mov	r2, r0
	ldr	r3, [r7, #24]
	str	r2, [r3, #4]
	ldr	r2, [r7, #12]
	ldr	r3, .L206
.LPIC27:
	add	r3, pc
	ldr	r3, [r3, r2, lsl #2]
	mov	r2, r3
	ldr	r3, [r7, #20]
	str	r2, [r3]
.L202:
	ldr	r3, [r7, #36]
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L207:
	.align	2
.L206:
	.word	power_tens-(.LPIC27+4)
	.size	cff_parse_font_matrix, .-cff_parse_font_matrix
	.section	.text.cff_parse_font_bbox,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_parse_font_bbox, %function
cff_parse_font_bbox:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #412]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	adds	r3, r3, #84
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	adds	r3, r3, #16
	str	r3, [r7, #8]
	movs	r3, #161
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #404]
	ldr	r3, [r7, #4]
	adds	r3, r3, #32
	cmp	r2, r3
	bcc	.L209
	ldr	r3, [r7, #8]
	adds	r2, r3, #4
	str	r2, [r7, #8]
	mov	r0, r3
	bl	cff_parse_fixed(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	FT_RoundFix(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #8]
	adds	r2, r3, #4
	str	r2, [r7, #8]
	mov	r0, r3
	bl	cff_parse_fixed(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	FT_RoundFix(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #4]
	ldr	r3, [r7, #8]
	adds	r2, r3, #4
	str	r2, [r7, #8]
	mov	r0, r3
	bl	cff_parse_fixed(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	FT_RoundFix(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r0, [r7, #8]
	bl	cff_parse_fixed(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	FT_RoundFix(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #12]
	movs	r3, #0
	str	r3, [r7, #20]
.L209:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cff_parse_font_bbox, .-cff_parse_font_bbox
	.section	.text.cff_parse_private_dict,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_parse_private_dict, %function
cff_parse_private_dict:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #412]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	adds	r3, r3, #16
	str	r3, [r7, #12]
	movs	r3, #161
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #404]
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	cmp	r2, r3
	bcc	.L212
	ldr	r3, [r7, #12]
	adds	r2, r3, #4
	str	r2, [r7, #12]
	mov	r0, r3
	bl	cff_parse_num(PLT)
	str	r0, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bge	.L213
	movs	r3, #3
	str	r3, [r7, #20]
	b	.L212
.L213:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #16]
	str	r2, [r3, #120]
	ldr	r0, [r7, #12]
	bl	cff_parse_num(PLT)
	str	r0, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bge	.L214
	movs	r3, #3
	str	r3, [r7, #20]
	b	.L212
.L214:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #16]
	str	r2, [r3, #116]
	movs	r3, #0
	str	r3, [r7, #20]
.L212:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cff_parse_private_dict, .-cff_parse_private_dict
	.section	.text.cff_parse_cid_ros,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_parse_cid_ros, %function
cff_parse_cid_ros:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #412]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	adds	r3, r3, #16
	str	r3, [r7, #12]
	movs	r3, #161
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #404]
	ldr	r3, [r7, #4]
	adds	r3, r3, #28
	cmp	r2, r3
	bcc	.L217
	ldr	r3, [r7, #12]
	adds	r2, r3, #4
	str	r2, [r7, #12]
	mov	r0, r3
	bl	cff_parse_num(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #16]
	str	r2, [r3, #132]
	ldr	r3, [r7, #12]
	adds	r2, r3, #4
	str	r2, [r7, #12]
	mov	r0, r3
	bl	cff_parse_num(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #16]
	str	r2, [r3, #136]
	ldr	r0, [r7, #12]
	bl	cff_parse_num(PLT)
	mov	r2, r0
	ldr	r3, [r7, #16]
	str	r2, [r3, #140]
	movs	r3, #0
	str	r3, [r7, #20]
.L217:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cff_parse_cid_ros, .-cff_parse_cid_ros
	.section	.data.rel.ro.local.cff_field_handlers,"aw",%progbits
	.align	2
	.type	cff_field_handlers, %object
	.size	cff_field_handlers, 1456
cff_field_handlers:
	.word	4
	.word	4096
	.word	0
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	4
	.word	4097
	.word	4
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	4
	.word	4352
	.word	8
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	4
	.word	4098
	.word	12
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	4
	.word	4099
	.word	16
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	4
	.word	4100
	.word	20
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	5
	.word	4353
	.word	24
	.byte	1
	.space	3
	.word	0
	.word	0
	.word	0
	.word	2
	.word	4354
	.word	28
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	2
	.word	4355
	.word	32
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	2
	.word	4356
	.word	36
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	1
	.word	4357
	.word	40
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	1
	.word	4358
	.word	44
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	7
	.word	4359
	.word	0
	.byte	0
	.space	3
	.word	cff_parse_font_matrix
	.word	0
	.word	0
	.word	1
	.word	4109
	.word	80
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	7
	.word	4101
	.word	0
	.byte	0
	.space	3
	.word	cff_parse_font_bbox
	.word	0
	.word	0
	.word	1
	.word	4360
	.word	100
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	1
	.word	4111
	.word	104
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	1
	.word	4112
	.word	108
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	1
	.word	4113
	.word	112
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	7
	.word	4114
	.word	0
	.byte	0
	.space	3
	.word	cff_parse_private_dict
	.word	0
	.word	0
	.word	1
	.word	4372
	.word	124
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	4
	.word	4373
	.word	128
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	7
	.word	4382
	.word	0
	.byte	0
	.space	3
	.word	cff_parse_cid_ros
	.word	0
	.word	0
	.word	1
	.word	4383
	.word	144
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	1
	.word	4384
	.word	148
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	1
	.word	4385
	.word	152
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	1
	.word	4386
	.word	156
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	1
	.word	4387
	.word	160
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	1
	.word	4388
	.word	164
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	1
	.word	4389
	.word	168
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	4
	.word	4390
	.word	172
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	6
	.word	8198
	.word	4
	.byte	4
	.space	3
	.word	0
	.word	14
	.word	0
	.word	6
	.word	8199
	.word	60
	.byte	4
	.space	3
	.word	0
	.word	10
	.word	1
	.word	6
	.word	8200
	.word	100
	.byte	4
	.space	3
	.word	0
	.word	14
	.word	2
	.word	6
	.word	8201
	.word	156
	.byte	4
	.space	3
	.word	0
	.word	10
	.word	3
	.word	3
	.word	8457
	.word	196
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	1
	.word	8458
	.word	200
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	1
	.word	8459
	.word	204
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	1
	.word	8202
	.word	208
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	1
	.word	8203
	.word	212
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	6
	.word	8460
	.word	220
	.byte	4
	.space	3
	.word	0
	.word	13
	.word	216
	.word	6
	.word	8461
	.word	272
	.byte	4
	.space	3
	.word	0
	.word	13
	.word	217
	.word	5
	.word	8462
	.word	324
	.byte	1
	.space	3
	.word	0
	.word	0
	.word	0
	.word	2
	.word	8463
	.word	328
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	1
	.word	8464
	.word	332
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	1
	.word	8465
	.word	336
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	2
	.word	8466
	.word	340
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	1
	.word	8467
	.word	344
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	1
	.word	8211
	.word	348
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	1
	.word	8212
	.word	352
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	1
	.word	8213
	.word	356
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.byte	0
	.space	3
	.word	0
	.word	0
	.word	0
	.section	.text.cff_parser_run,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_parser_run, %function
cff_parser_run:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #64
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #8]
	str	r3, [r7, #60]
	movs	r3, #0
	str	r3, [r7, #56]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	add	r2, r3, #16
	ldr	r3, [r7, #12]
	str	r2, [r3, #404]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #12]
	b	.L220
.L265:
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #26
	bls	.L221
	ldr	r3, [r7, #24]
	cmp	r3, #31
	beq	.L221
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #404]
	mov	r2, r3
	ldr	r3, [r7, #12]
	adds	r3, r3, #16
	subs	r3, r2, r3
	cmp	r3, #384
	blt	.L222
	nop
.L223:
	movs	r3, #6
	str	r3, [r7, #56]
	b	.L226
.L222:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #404]
	adds	r1, r3, #4
	ldr	r2, [r7, #12]
	str	r1, [r2, #404]
	ldr	r2, [r7, #60]
	str	r2, [r3]
	ldr	r3, [r7, #24]
	cmp	r3, #30
	bne	.L224
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
.L230:
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcc	.L225
	b	.L226
.L225:
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsrs	r3, r3, #4
	uxtb	r3, r3
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #15
	bne	.L227
	b	.L228
.L227:
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #15
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #15
	bne	.L229
	b	.L228
.L229:
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
	b	.L230
.L228:
	b	.L231
.L224:
	ldr	r3, [r7, #24]
	cmp	r3, #28
	bne	.L232
	ldr	r3, [r7, #60]
	adds	r3, r3, #2
	str	r3, [r7, #60]
	b	.L231
.L232:
	ldr	r3, [r7, #24]
	cmp	r3, #29
	bne	.L233
	ldr	r3, [r7, #60]
	adds	r3, r3, #4
	str	r3, [r7, #60]
	b	.L231
.L233:
	ldr	r3, [r7, #24]
	cmp	r3, #246
	bls	.L231
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
	b	.L234
.L231:
	b	.L234
.L221:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #404]
	mov	r2, r3
	ldr	r3, [r7, #12]
	adds	r3, r3, #16
	subs	r3, r2, r3
	asrs	r3, r3, #2
	str	r3, [r7, #48]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #404]
	ldr	r2, [r7, #60]
	str	r2, [r3]
	ldr	r3, [r7, #24]
	str	r3, [r7, #52]
	ldr	r3, [r7, #24]
	cmp	r3, #12
	bne	.L235
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcc	.L236
	nop
.L237:
	movs	r3, #6
	str	r3, [r7, #56]
	b	.L226
.L236:
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	orr	r3, r3, #256
	str	r3, [r7, #52]
.L235:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #408]
	ldr	r2, [r7, #52]
	orrs	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, .L269
.LPIC28:
	add	r3, pc
	str	r3, [r7, #44]
	b	.L238
.L264:
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bne	.L239
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #412]
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #8]
	add	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #44]
	ldr	r3, [r3]
	cmp	r3, #6
	beq	.L240
	ldr	r3, [r7, #48]
	cmp	r3, #0
	bne	.L240
	nop
.L241:
	movs	r3, #6
	str	r3, [r7, #56]
	b	.L226
.L240:
	ldr	r3, [r7, #44]
	ldr	r3, [r3]
	subs	r3, r3, #1
	cmp	r3, #5
	bhi	.L242
	adr	r1, .L244
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L244:
	.word	.L243+1-.L244
	.word	.L245+1-.L244
	.word	.L246+1-.L244
	.word	.L243+1-.L244
	.word	.L243+1-.L244
	.word	.L247+1-.L244
.L243:
	ldr	r3, [r7, #12]
	adds	r3, r3, #16
	mov	r0, r3
	bl	cff_parse_num(PLT)
	str	r0, [r7, #40]
	b	.L248
.L245:
	ldr	r3, [r7, #12]
	adds	r3, r3, #16
	mov	r0, r3
	bl	cff_parse_fixed(PLT)
	str	r0, [r7, #40]
	b	.L248
.L246:
	ldr	r3, [r7, #12]
	adds	r3, r3, #16
	mov	r0, r3
	movs	r1, #3
	bl	cff_parse_fixed_scaled(PLT)
	str	r0, [r7, #40]
.L248:
	ldr	r3, [r7, #44]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L250
	cmp	r3, #4
	beq	.L251
	cmp	r3, #1
	bne	.L267
	ldr	r3, [r7, #40]
	uxtb	r2, r3
	ldr	r3, [r7, #36]
	strb	r2, [r3]
	b	.L253
.L250:
	ldr	r3, [r7, #40]
	uxth	r2, r3
	ldr	r3, [r7, #36]
	strh	r2, [r3]	@ movhi
	b	.L253
.L251:
	ldr	r3, [r7, #36]
	ldr	r2, [r7, #40]
	str	r2, [r3]
	b	.L253
.L267:
	ldr	r3, [r7, #36]
	ldr	r2, [r7, #40]
	str	r2, [r3]
	b	.L254
.L253:
	b	.L254
.L247:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #412]
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #24]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	adds	r3, r3, #16
	str	r3, [r7, #32]
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #48]
	cmp	r2, r3
	bcs	.L255
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #20]
	str	r3, [r7, #48]
.L255:
	ldr	r3, [r7, #48]
	uxtb	r2, r3
	ldr	r3, [r7, #20]
	strb	r2, [r3]
	movs	r3, #0
	str	r3, [r7, #40]
	b	.L256
.L262:
	ldr	r3, [r7, #32]
	adds	r2, r3, #4
	str	r2, [r7, #32]
	mov	r0, r3
	bl	cff_parse_num(PLT)
	mov	r3, r0
	ldr	r2, [r7, #40]
	add	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #44]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L258
	cmp	r3, #4
	beq	.L259
	cmp	r3, #1
	bne	.L268
	ldr	r3, [r7, #40]
	uxtb	r2, r3
	ldr	r3, [r7, #36]
	strb	r2, [r3]
	b	.L261
.L258:
	ldr	r3, [r7, #40]
	uxth	r2, r3
	ldr	r3, [r7, #36]
	strh	r2, [r3]	@ movhi
	b	.L261
.L259:
	ldr	r3, [r7, #36]
	ldr	r2, [r7, #40]
	str	r2, [r3]
	b	.L261
.L268:
	ldr	r3, [r7, #36]
	ldr	r2, [r7, #40]
	str	r2, [r3]
.L261:
	ldr	r3, [r7, #44]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #48]
	subs	r3, r3, #1
	str	r3, [r7, #48]
.L256:
	ldr	r3, [r7, #48]
	cmp	r3, #0
	bne	.L262
	b	.L254
.L242:
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #16]
	ldr	r0, [r7, #12]
	blx	r3
	str	r0, [r7, #56]
	ldr	r3, [r7, #56]
	cmp	r3, #0
	beq	.L254
	b	.L226
.L254:
	b	.L263
.L239:
	ldr	r3, [r7, #44]
	adds	r3, r3, #28
	str	r3, [r7, #44]
.L238:
	ldr	r3, [r7, #44]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L264
.L263:
	ldr	r3, [r7, #12]
	add	r2, r3, #16
	ldr	r3, [r7, #12]
	str	r2, [r3, #404]
.L234:
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
.L220:
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcc	.L265
.L226:
	ldr	r3, [r7, #56]
	mov	r0, r3
	adds	r7, r7, #64
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L270:
	.align	2
.L269:
	.word	cff_field_handlers-(.LPIC28+4)
	.size	cff_parser_run, .-cff_parser_run
	.section	.rodata.cff_isoadobe_charset,"a",%progbits
	.align	2
	.type	cff_isoadobe_charset, %object
	.size	cff_isoadobe_charset, 458
cff_isoadobe_charset:
	.short	0
	.short	1
	.short	2
	.short	3
	.short	4
	.short	5
	.short	6
	.short	7
	.short	8
	.short	9
	.short	10
	.short	11
	.short	12
	.short	13
	.short	14
	.short	15
	.short	16
	.short	17
	.short	18
	.short	19
	.short	20
	.short	21
	.short	22
	.short	23
	.short	24
	.short	25
	.short	26
	.short	27
	.short	28
	.short	29
	.short	30
	.short	31
	.short	32
	.short	33
	.short	34
	.short	35
	.short	36
	.short	37
	.short	38
	.short	39
	.short	40
	.short	41
	.short	42
	.short	43
	.short	44
	.short	45
	.short	46
	.short	47
	.short	48
	.short	49
	.short	50
	.short	51
	.short	52
	.short	53
	.short	54
	.short	55
	.short	56
	.short	57
	.short	58
	.short	59
	.short	60
	.short	61
	.short	62
	.short	63
	.short	64
	.short	65
	.short	66
	.short	67
	.short	68
	.short	69
	.short	70
	.short	71
	.short	72
	.short	73
	.short	74
	.short	75
	.short	76
	.short	77
	.short	78
	.short	79
	.short	80
	.short	81
	.short	82
	.short	83
	.short	84
	.short	85
	.short	86
	.short	87
	.short	88
	.short	89
	.short	90
	.short	91
	.short	92
	.short	93
	.short	94
	.short	95
	.short	96
	.short	97
	.short	98
	.short	99
	.short	100
	.short	101
	.short	102
	.short	103
	.short	104
	.short	105
	.short	106
	.short	107
	.short	108
	.short	109
	.short	110
	.short	111
	.short	112
	.short	113
	.short	114
	.short	115
	.short	116
	.short	117
	.short	118
	.short	119
	.short	120
	.short	121
	.short	122
	.short	123
	.short	124
	.short	125
	.short	126
	.short	127
	.short	128
	.short	129
	.short	130
	.short	131
	.short	132
	.short	133
	.short	134
	.short	135
	.short	136
	.short	137
	.short	138
	.short	139
	.short	140
	.short	141
	.short	142
	.short	143
	.short	144
	.short	145
	.short	146
	.short	147
	.short	148
	.short	149
	.short	150
	.short	151
	.short	152
	.short	153
	.short	154
	.short	155
	.short	156
	.short	157
	.short	158
	.short	159
	.short	160
	.short	161
	.short	162
	.short	163
	.short	164
	.short	165
	.short	166
	.short	167
	.short	168
	.short	169
	.short	170
	.short	171
	.short	172
	.short	173
	.short	174
	.short	175
	.short	176
	.short	177
	.short	178
	.short	179
	.short	180
	.short	181
	.short	182
	.short	183
	.short	184
	.short	185
	.short	186
	.short	187
	.short	188
	.short	189
	.short	190
	.short	191
	.short	192
	.short	193
	.short	194
	.short	195
	.short	196
	.short	197
	.short	198
	.short	199
	.short	200
	.short	201
	.short	202
	.short	203
	.short	204
	.short	205
	.short	206
	.short	207
	.short	208
	.short	209
	.short	210
	.short	211
	.short	212
	.short	213
	.short	214
	.short	215
	.short	216
	.short	217
	.short	218
	.short	219
	.short	220
	.short	221
	.short	222
	.short	223
	.short	224
	.short	225
	.short	226
	.short	227
	.short	228
	.section	.rodata.cff_expert_charset,"a",%progbits
	.align	2
	.type	cff_expert_charset, %object
	.size	cff_expert_charset, 332
cff_expert_charset:
	.short	0
	.short	1
	.short	229
	.short	230
	.short	231
	.short	232
	.short	233
	.short	234
	.short	235
	.short	236
	.short	237
	.short	238
	.short	13
	.short	14
	.short	15
	.short	99
	.short	239
	.short	240
	.short	241
	.short	242
	.short	243
	.short	244
	.short	245
	.short	246
	.short	247
	.short	248
	.short	27
	.short	28
	.short	249
	.short	250
	.short	251
	.short	252
	.short	253
	.short	254
	.short	255
	.short	256
	.short	257
	.short	258
	.short	259
	.short	260
	.short	261
	.short	262
	.short	263
	.short	264
	.short	265
	.short	266
	.short	109
	.short	110
	.short	267
	.short	268
	.short	269
	.short	270
	.short	271
	.short	272
	.short	273
	.short	274
	.short	275
	.short	276
	.short	277
	.short	278
	.short	279
	.short	280
	.short	281
	.short	282
	.short	283
	.short	284
	.short	285
	.short	286
	.short	287
	.short	288
	.short	289
	.short	290
	.short	291
	.short	292
	.short	293
	.short	294
	.short	295
	.short	296
	.short	297
	.short	298
	.short	299
	.short	300
	.short	301
	.short	302
	.short	303
	.short	304
	.short	305
	.short	306
	.short	307
	.short	308
	.short	309
	.short	310
	.short	311
	.short	312
	.short	313
	.short	314
	.short	315
	.short	316
	.short	317
	.short	318
	.short	158
	.short	155
	.short	163
	.short	319
	.short	320
	.short	321
	.short	322
	.short	323
	.short	324
	.short	325
	.short	326
	.short	150
	.short	164
	.short	169
	.short	327
	.short	328
	.short	329
	.short	330
	.short	331
	.short	332
	.short	333
	.short	334
	.short	335
	.short	336
	.short	337
	.short	338
	.short	339
	.short	340
	.short	341
	.short	342
	.short	343
	.short	344
	.short	345
	.short	346
	.short	347
	.short	348
	.short	349
	.short	350
	.short	351
	.short	352
	.short	353
	.short	354
	.short	355
	.short	356
	.short	357
	.short	358
	.short	359
	.short	360
	.short	361
	.short	362
	.short	363
	.short	364
	.short	365
	.short	366
	.short	367
	.short	368
	.short	369
	.short	370
	.short	371
	.short	372
	.short	373
	.short	374
	.short	375
	.short	376
	.short	377
	.short	378
	.section	.rodata.cff_expertsubset_charset,"a",%progbits
	.align	2
	.type	cff_expertsubset_charset, %object
	.size	cff_expertsubset_charset, 174
cff_expertsubset_charset:
	.short	0
	.short	1
	.short	231
	.short	232
	.short	235
	.short	236
	.short	237
	.short	238
	.short	13
	.short	14
	.short	15
	.short	99
	.short	239
	.short	240
	.short	241
	.short	242
	.short	243
	.short	244
	.short	245
	.short	246
	.short	247
	.short	248
	.short	27
	.short	28
	.short	249
	.short	250
	.short	251
	.short	253
	.short	254
	.short	255
	.short	256
	.short	257
	.short	258
	.short	259
	.short	260
	.short	261
	.short	262
	.short	263
	.short	264
	.short	265
	.short	266
	.short	109
	.short	110
	.short	267
	.short	268
	.short	269
	.short	270
	.short	272
	.short	300
	.short	301
	.short	302
	.short	305
	.short	314
	.short	315
	.short	158
	.short	155
	.short	163
	.short	320
	.short	321
	.short	322
	.short	323
	.short	324
	.short	325
	.short	326
	.short	150
	.short	164
	.short	169
	.short	327
	.short	328
	.short	329
	.short	330
	.short	331
	.short	332
	.short	333
	.short	334
	.short	335
	.short	336
	.short	337
	.short	338
	.short	339
	.short	340
	.short	341
	.short	342
	.short	343
	.short	344
	.short	345
	.short	346
	.section	.rodata.cff_standard_encoding,"a",%progbits
	.align	2
	.type	cff_standard_encoding, %object
	.size	cff_standard_encoding, 512
cff_standard_encoding:
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	1
	.short	2
	.short	3
	.short	4
	.short	5
	.short	6
	.short	7
	.short	8
	.short	9
	.short	10
	.short	11
	.short	12
	.short	13
	.short	14
	.short	15
	.short	16
	.short	17
	.short	18
	.short	19
	.short	20
	.short	21
	.short	22
	.short	23
	.short	24
	.short	25
	.short	26
	.short	27
	.short	28
	.short	29
	.short	30
	.short	31
	.short	32
	.short	33
	.short	34
	.short	35
	.short	36
	.short	37
	.short	38
	.short	39
	.short	40
	.short	41
	.short	42
	.short	43
	.short	44
	.short	45
	.short	46
	.short	47
	.short	48
	.short	49
	.short	50
	.short	51
	.short	52
	.short	53
	.short	54
	.short	55
	.short	56
	.short	57
	.short	58
	.short	59
	.short	60
	.short	61
	.short	62
	.short	63
	.short	64
	.short	65
	.short	66
	.short	67
	.short	68
	.short	69
	.short	70
	.short	71
	.short	72
	.short	73
	.short	74
	.short	75
	.short	76
	.short	77
	.short	78
	.short	79
	.short	80
	.short	81
	.short	82
	.short	83
	.short	84
	.short	85
	.short	86
	.short	87
	.short	88
	.short	89
	.short	90
	.short	91
	.short	92
	.short	93
	.short	94
	.short	95
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	96
	.short	97
	.short	98
	.short	99
	.short	100
	.short	101
	.short	102
	.short	103
	.short	104
	.short	105
	.short	106
	.short	107
	.short	108
	.short	109
	.short	110
	.short	0
	.short	111
	.short	112
	.short	113
	.short	114
	.short	0
	.short	115
	.short	116
	.short	117
	.short	118
	.short	119
	.short	120
	.short	121
	.short	122
	.short	0
	.short	123
	.short	0
	.short	124
	.short	125
	.short	126
	.short	127
	.short	128
	.short	129
	.short	130
	.short	131
	.short	0
	.short	132
	.short	133
	.short	0
	.short	134
	.short	135
	.short	136
	.short	137
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	138
	.short	0
	.short	139
	.short	0
	.short	0
	.short	0
	.short	0
	.short	140
	.short	141
	.short	142
	.short	143
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	144
	.short	0
	.short	0
	.short	0
	.short	145
	.short	0
	.short	0
	.short	146
	.short	147
	.short	148
	.short	149
	.short	0
	.short	0
	.short	0
	.short	0
	.section	.rodata.cff_expert_encoding,"a",%progbits
	.align	2
	.type	cff_expert_encoding, %object
	.size	cff_expert_encoding, 512
cff_expert_encoding:
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	1
	.short	229
	.short	230
	.short	0
	.short	231
	.short	232
	.short	233
	.short	234
	.short	235
	.short	236
	.short	237
	.short	238
	.short	13
	.short	14
	.short	15
	.short	99
	.short	239
	.short	240
	.short	241
	.short	242
	.short	243
	.short	244
	.short	245
	.short	246
	.short	247
	.short	248
	.short	27
	.short	28
	.short	249
	.short	250
	.short	251
	.short	252
	.short	0
	.short	253
	.short	254
	.short	255
	.short	256
	.short	257
	.short	0
	.short	0
	.short	0
	.short	258
	.short	0
	.short	0
	.short	259
	.short	260
	.short	261
	.short	262
	.short	0
	.short	0
	.short	263
	.short	264
	.short	265
	.short	0
	.short	266
	.short	109
	.short	110
	.short	267
	.short	268
	.short	269
	.short	0
	.short	270
	.short	271
	.short	272
	.short	273
	.short	274
	.short	275
	.short	276
	.short	277
	.short	278
	.short	279
	.short	280
	.short	281
	.short	282
	.short	283
	.short	284
	.short	285
	.short	286
	.short	287
	.short	288
	.short	289
	.short	290
	.short	291
	.short	292
	.short	293
	.short	294
	.short	295
	.short	296
	.short	297
	.short	298
	.short	299
	.short	300
	.short	301
	.short	302
	.short	303
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	304
	.short	305
	.short	306
	.short	0
	.short	0
	.short	307
	.short	308
	.short	309
	.short	310
	.short	311
	.short	0
	.short	312
	.short	0
	.short	0
	.short	312
	.short	0
	.short	0
	.short	314
	.short	315
	.short	0
	.short	0
	.short	316
	.short	317
	.short	318
	.short	0
	.short	0
	.short	0
	.short	158
	.short	155
	.short	163
	.short	319
	.short	320
	.short	321
	.short	322
	.short	323
	.short	324
	.short	325
	.short	0
	.short	0
	.short	326
	.short	150
	.short	164
	.short	169
	.short	327
	.short	328
	.short	329
	.short	330
	.short	331
	.short	332
	.short	333
	.short	334
	.short	335
	.short	336
	.short	337
	.short	338
	.short	339
	.short	340
	.short	341
	.short	342
	.short	343
	.short	344
	.short	345
	.short	346
	.short	347
	.short	348
	.short	349
	.short	350
	.short	351
	.short	352
	.short	353
	.short	354
	.short	355
	.short	356
	.short	357
	.short	358
	.short	359
	.short	360
	.short	361
	.short	362
	.short	363
	.short	364
	.short	365
	.short	366
	.short	367
	.short	368
	.short	369
	.short	370
	.short	371
	.short	372
	.short	373
	.short	374
	.short	375
	.short	376
	.short	377
	.short	378
	.section	.text.cff_get_standard_encoding,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_get_standard_encoding, %function
cff_get_standard_encoding:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #255
	bhi	.L272
	ldr	r3, .L275
.LPIC29:
	add	r3, pc
	ldr	r2, [r7, #4]
	ldrh	r3, [r3, r2, lsl #1]
	b	.L273
.L272:
	movs	r3, #0
.L273:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L276:
	.align	2
.L275:
	.word	cff_standard_encoding-(.LPIC29+4)
	.size	cff_get_standard_encoding, .-cff_get_standard_encoding
	.section	.text.cff_index_read_offset,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_index_read_offset, %function
cff_index_read_offset:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	add	r2, r7, #12
	ldr	r0, [r7, #20]
	mov	r1, r2
	mov	r2, r3
	bl	FT_Stream_Read(PLT)
	str	r0, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L278
	movs	r3, #0
	str	r3, [r7, #24]
	b	.L279
.L280:
	ldr	r3, [r7, #28]
	lsls	r2, r3, #8
	add	r1, r7, #12
	ldr	r3, [r7, #24]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
.L279:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bgt	.L280
.L278:
	ldr	r3, [r7]
	ldr	r2, [r7, #16]
	str	r2, [r3]
	ldr	r3, [r7, #28]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cff_index_read_offset, .-cff_index_read_offset
	.section	.text.cff_index_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_index_init, %function
cff_index_init:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strb	r3, [r7, #7]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #28]
	str	r3, [r7, #28]
	ldr	r0, [r7, #12]
	movs	r1, #0
	movs	r2, #32
	bl	memset(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3]
	ldr	r0, [r7, #8]
	bl	FT_Stream_Pos(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #4]
	add	r3, r7, #16
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	FT_Stream_ReadUShort(PLT)
	mov	r3, r0
	strh	r3, [r7, #26]	@ movhi
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L283
	ldrh	r3, [r7, #26]
	cmp	r3, #0
	beq	.L283
	add	r3, r7, #16
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	FT_Stream_ReadChar(PLT)
	mov	r3, r0
	strb	r3, [r7, #25]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L284
	b	.L283
.L284:
	ldrb	r3, [r7, #25]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L285
	ldrb	r3, [r7, #25]	@ zero_extendqisi2
	cmp	r3, #4
	bls	.L286
.L285:
	movs	r3, #8
	str	r3, [r7, #16]
	b	.L283
.L286:
	ldrh	r2, [r7, #26]
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldrb	r2, [r7, #25]
	strb	r2, [r3, #12]
	ldrh	r3, [r7, #26]
	adds	r3, r3, #1
	ldrb	r2, [r7, #25]	@ zero_extendqisi2
	mul	r3, r2, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	adds	r2, r3, #3
	ldr	r3, [r7, #12]
	str	r2, [r3, #16]
	ldrb	r3, [r7, #25]	@ zero_extendqisi2
	ldr	r2, [r7, #20]
	subs	r3, r2, r3
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	FT_Stream_Skip(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L287
	b	.L283
.L287:
	add	r3, r7, #16
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	cff_index_read_offset(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L288
	b	.L283
.L288:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L289
	movs	r3, #8
	str	r3, [r7, #16]
	b	.L283
.L289:
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #20]
	str	r2, [r3, #20]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L290
	ldr	r3, [r7, #12]
	adds	r3, r3, #28
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #20]
	mov	r2, r3
	bl	FT_Stream_ExtractFrame(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L283
	b	.L283
.L290:
	ldr	r3, [r7, #20]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	FT_Stream_Skip(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L283
	nop
.L283:
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L291
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	ldr	r0, [r7, #28]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #24]
.L291:
	ldr	r3, [r7, #16]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cff_index_init, .-cff_index_init
	.section	.text.cff_index_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_index_done, %function
cff_index_done:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L293
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	cmp	r3, #0
	beq	.L295
	ldr	r3, [r7, #4]
	adds	r3, r3, #28
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	FT_Stream_ReleaseFrame(PLT)
.L295:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r0, [r7, #4]
	movs	r1, #0
	movs	r2, #32
	bl	memset(PLT)
.L293:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cff_index_done, .-cff_index_done
	.section	.text.cff_index_load_offsets,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_index_load_offsets, %function
cff_index_load_offsets:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #8
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #28]
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L297
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	bne	.L297
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #12]
	strb	r3, [r7, #23]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r3, r3, #1
	ldrb	r2, [r7, #23]	@ zero_extendqisi2
	mul	r3, r2, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r3, r3, #1
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #8
	str	r2, [sp, #4]
	ldr	r0, [r7, #24]
	movs	r1, #4
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L297
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	adds	r3, r3, #3
	ldr	r0, [r7, #28]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L297
	ldr	r0, [r7, #28]
	ldr	r1, [r7, #16]
	bl	FT_Stream_EnterFrame(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L297
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	str	r3, [r7, #32]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #32]
	str	r3, [r7, #36]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #16]
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L305
	cmp	r3, #3
	beq	.L307
	cmp	r3, #1
	beq	.L302
	b	.L309
.L303:
	ldr	r3, [r7, #36]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #32]
	str	r2, [r3]
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
	ldr	r3, [r7, #32]
	adds	r3, r3, #4
	str	r3, [r7, #32]
.L302:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bcc	.L303
	b	.L304
.L306:
	ldr	r3, [r7, #36]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #32]
	str	r2, [r3]
	ldr	r3, [r7, #36]
	adds	r3, r3, #2
	str	r3, [r7, #36]
	ldr	r3, [r7, #32]
	adds	r3, r3, #4
	str	r3, [r7, #32]
.L305:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bcc	.L306
	b	.L304
.L308:
	ldr	r3, [r7, #36]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #16
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #36]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r2, r2, r3
	ldr	r3, [r7, #32]
	str	r2, [r3]
	ldr	r3, [r7, #36]
	adds	r3, r3, #3
	str	r3, [r7, #36]
	ldr	r3, [r7, #32]
	adds	r3, r3, #4
	str	r3, [r7, #32]
.L307:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bcc	.L308
	b	.L304
.L310:
	ldr	r3, [r7, #36]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #36]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #36]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r2, r2, r3
	ldr	r3, [r7, #32]
	str	r2, [r3]
	ldr	r3, [r7, #36]
	adds	r3, r3, #4
	str	r3, [r7, #36]
	ldr	r3, [r7, #32]
	adds	r3, r3, #4
	str	r3, [r7, #32]
.L309:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bcc	.L310
.L304:
	ldr	r0, [r7, #28]
	bl	FT_Stream_ExitFrame(PLT)
.L297:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L311
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	ldr	r0, [r7, #24]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #24]
.L311:
	ldr	r3, [r7, #8]
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cff_index_load_offsets, .-cff_index_load_offsets
	.section	.text.cff_index_get_pointers,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_index_get_pointers, %function
cff_index_get_pointers:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #68
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #28]
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #52]
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	bne	.L314
	ldr	r0, [r7, #12]
	bl	cff_index_load_offsets(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L314
	b	.L315
.L314:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L315
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	adds	r3, r3, #1
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #20
	str	r2, [sp, #4]
	ldr	r0, [r7, #32]
	movs	r1, #4
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L315
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L316
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	add	r3, r3, r2
	mov	r2, r3
	add	r3, r7, #20
	ldr	r0, [r7, #32]
	mov	r1, r2
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	str	r0, [r7, #52]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L315
.L316:
	movs	r3, #0
	str	r3, [r7, #40]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	ldr	r3, [r3]
	subs	r3, r3, #1
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L317
	movs	r3, #0
	str	r3, [r7, #44]
.L317:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L318
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #44]
	add	r2, r2, r3
	ldr	r3, [r7, #28]
	str	r2, [r3]
	b	.L319
.L318:
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #44]
	add	r2, r2, r3
	ldr	r3, [r7, #28]
	str	r2, [r3]
.L319:
	movs	r3, #1
	str	r3, [r7, #48]
	b	.L320
.L325:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #48]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	subs	r3, r3, #1
	str	r3, [r7, #36]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #44]
	cmp	r2, r3
	bcs	.L321
	ldr	r3, [r7, #44]
	str	r3, [r7, #36]
	b	.L322
.L321:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcs	.L322
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #20]
	str	r3, [r7, #36]
.L322:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L323
	ldr	r3, [r7, #48]
	lsls	r3, r3, #2
	ldr	r2, [r7, #28]
	add	r3, r3, r2
	ldr	r1, [r7, #24]
	ldr	r2, [r7, #36]
	add	r2, r2, r1
	str	r2, [r3]
	b	.L324
.L323:
	ldr	r3, [r7, #48]
	lsls	r3, r3, #2
	ldr	r2, [r7, #28]
	add	r3, r3, r2
	ldr	r1, [r7, #36]
	ldr	r2, [r7, #40]
	add	r2, r2, r1
	ldr	r1, [r7, #52]
	add	r2, r2, r1
	str	r2, [r3]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #44]
	cmp	r2, r3
	beq	.L324
	ldr	r3, [r7, #48]
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #28]
	add	r3, r3, r2
	ldr	r1, [r3]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #44]
	add	r2, r2, r3
	ldr	r3, [r7, #48]
	lsls	r3, r3, #2
	ldr	r0, [r7, #28]
	add	r3, r3, r0
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r3, [r7, #48]
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r4, [r7, #28]
	add	r3, r3, r4
	ldr	r3, [r3]
	subs	r3, r0, r3
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	memcpy(PLT)
	ldr	r3, [r7, #48]
	lsls	r3, r3, #2
	ldr	r2, [r7, #28]
	add	r3, r3, r2
	ldr	r3, [r3]
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #48]
	lsls	r3, r3, #2
	ldr	r2, [r7, #28]
	add	r3, r3, r2
	ldr	r2, [r7, #48]
	lsls	r2, r2, #2
	ldr	r1, [r7, #28]
	add	r2, r2, r1
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	str	r3, [r7, #40]
.L324:
	ldr	r3, [r7, #36]
	str	r3, [r7, #44]
	ldr	r3, [r7, #48]
	adds	r3, r3, #1
	str	r3, [r7, #48]
.L320:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #48]
	cmp	r2, r3
	bcs	.L325
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #28]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L315
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #52]
	str	r2, [r3]
.L315:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #60
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	cff_index_get_pointers, .-cff_index_get_pointers
	.section	.text.cff_index_access_element,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_index_access_element, %function
cff_index_access_element:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L328
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bls	.L328
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #32]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	bne	.L329
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	ldr	r2, [r7, #8]
	mul	r3, r2, r3
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	adds	r3, r3, #3
	ldr	r0, [r7, #28]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L330
	b	.L331
.L330:
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	cff_index_read_offset(PLT)
	str	r0, [r7, #36]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L332
	b	.L331
.L332:
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L333
.L334:
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	cff_index_read_offset(PLT)
	str	r0, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bne	.L333
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bhi	.L334
.L333:
	b	.L335
.L329:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L335
.L336:
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bne	.L335
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bhi	.L336
.L335:
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #4]
	adds	r2, r3, #1
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bcc	.L337
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #28]
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #32]
	subs	r3, r1, r3
	adds	r3, r3, #1
	cmp	r2, r3
	bls	.L338
.L337:
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	subs	r3, r2, r3
	adds	r3, r3, #1
	str	r3, [r7, #32]
.L338:
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L339
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bls	.L339
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #36]
	subs	r2, r2, r3
	ldr	r3, [r7]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	cmp	r3, #0
	beq	.L340
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
	b	.L341
.L340:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	subs	r3, r3, #1
	ldr	r0, [r7, #28]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L331
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #36]
	subs	r3, r2, r3
	ldr	r0, [r7, #28]
	mov	r1, r3
	ldr	r2, [r7, #4]
	bl	FT_Stream_ExtractFrame(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L331
.L341:
	nop
	b	.L331
.L339:
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3]
	b	.L331
.L328:
	movs	r3, #6
	str	r3, [r7, #20]
.L331:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cff_index_access_element, .-cff_index_access_element
	.section	.text.cff_index_forget_element,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_index_forget_element, %function
cff_index_forget_element:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	cmp	r3, #0
	bne	.L344
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r0, [r7, #12]
	ldr	r1, [r7]
	bl	FT_Stream_ReleaseFrame(PLT)
.L344:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cff_index_forget_element, .-cff_index_forget_element
	.section	.text.cff_index_get_name,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_index_get_name, %function
cff_index_get_name:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	adds	r3, r3, #20
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	ldr	r3, [r3]
	ldr	r3, [r3, #28]
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #28]
	add	r2, r7, #16
	add	r3, r7, #12
	ldr	r0, [r7, #24]
	ldr	r1, [r7]
	bl	cff_index_access_element(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L347
	b	.L348
.L347:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	mov	r2, r3
	add	r3, r7, #8
	ldr	r0, [r7, #20]
	mov	r1, r2
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L349
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r0, [r7, #28]
	mov	r1, r2
	mov	r2, r3
	bl	memcpy(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #28]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
.L349:
	add	r3, r7, #16
	ldr	r0, [r7, #24]
	mov	r1, r3
	bl	cff_index_forget_element(PLT)
.L348:
	ldr	r3, [r7, #28]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cff_index_get_name, .-cff_index_get_name
	.section	.text.cff_index_get_string,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_index_get_string, %function
cff_index_get_string:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #1312]
	ldr	r3, [r7]
	cmp	r2, r3
	bls	.L352
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #1316]
	ldr	r3, [r7]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	b	.L353
.L352:
	movs	r3, #0
.L353:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	cff_index_get_string, .-cff_index_get_string
	.section	.text.cff_index_get_sid_string,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_index_get_sid_string, %function
cff_index_get_sid_string:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r2, [r7]
	movw	r3, #65535
	cmp	r2, r3
	bne	.L356
	movs	r3, #0
	b	.L357
.L356:
	ldr	r3, [r7]
	cmp	r3, #390
	bls	.L358
	ldr	r3, [r7]
	subw	r3, r3, #391
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	cff_index_get_string(PLT)
	mov	r3, r0
	b	.L357
.L358:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #2956]
	cmp	r3, #0
	bne	.L359
	movs	r3, #0
	b	.L357
.L359:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #2956]
	ldr	r3, [r3, #20]
	ldr	r0, [r7]
	blx	r3
	mov	r3, r0
.L357:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cff_index_get_sid_string, .-cff_index_get_sid_string
	.section	.text.CFF_Done_FD_Select,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	CFF_Done_FD_Select, %function
CFF_Done_FD_Select:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L361
	ldr	r3, [r7, #4]
	adds	r3, r3, #8
	ldr	r0, [r7]
	mov	r1, r3
	bl	FT_Stream_ReleaseFrame(PLT)
.L361:
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	CFF_Done_FD_Select, .-CFF_Done_FD_Select
	.section	.text.CFF_Load_FD_Select,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	CFF_Load_FD_Select, %function
CFF_Load_FD_Select:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L363
	add	r3, r7, #20
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	FT_Stream_ReadChar(PLT)
	mov	r3, r0
	strb	r3, [r7, #31]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L363
	ldr	r3, [r7, #12]
	ldrb	r2, [r7, #31]
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #20]
	ldrb	r3, [r7, #31]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L365
	cmp	r3, #3
	beq	.L366
	b	.L372
.L365:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #12]
	b	.L367
.L366:
	add	r3, r7, #20
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	FT_Stream_ReadUShort(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L368
	b	.L363
.L368:
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L369
	movs	r3, #3
	str	r3, [r7, #20]
	b	.L363
.L369:
	ldr	r2, [r7, #24]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	adds	r2, r3, #2
	ldr	r3, [r7, #12]
	str	r2, [r3, #12]
.L367:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	adds	r3, r3, #8
	ldr	r0, [r7, #4]
	mov	r1, r2
	mov	r2, r3
	bl	FT_Stream_ExtractFrame(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L370
	b	.L363
.L370:
	b	.L363
.L372:
	movs	r3, #3
	str	r3, [r7, #20]
.L363:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	CFF_Load_FD_Select, .-CFF_Load_FD_Select
	.section	.text.cff_fd_select_get,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_fd_select_get, %function
cff_fd_select_get:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	strb	r3, [r7, #31]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L375
	cmp	r3, #3
	beq	.L376
	b	.L374
.L375:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #31]
	b	.L374
.L376:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r2, [r7]
	subs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	cmp	r2, r3
	bcs	.L377
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #24]
	strb	r3, [r7, #31]
	b	.L374
.L377:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r2, [r7, #24]
	add	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #24]
	adds	r3, r3, #2
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #24]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #20]
.L381:
	ldr	r2, [r7]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcs	.L378
	b	.L379
.L378:
	ldr	r3, [r7, #24]
	adds	r2, r3, #1
	str	r2, [r7, #24]
	ldrb	r3, [r3]
	strb	r3, [r7, #15]
	ldr	r3, [r7, #24]
	adds	r3, r3, #2
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #24]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #8]
	ldr	r2, [r7]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcs	.L380
	ldrb	r3, [r7, #15]
	strb	r3, [r7, #31]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #20]
	str	r2, [r3, #16]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #20]
	subs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldrb	r2, [r7, #15]
	strb	r2, [r3, #24]
	b	.L379
.L380:
	ldr	r3, [r7, #8]
	str	r3, [r7, #20]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bcc	.L381
.L379:
	nop
.L374:
	ldrb	r3, [r7, #31]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	cff_fd_select_get, .-cff_fd_select_get
	.section	.text.cff_charset_compute_cids,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_charset_compute_cids, %function
cff_charset_compute_cids:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	strh	r3, [r7, #22]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L384
	b	.L385
.L384:
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L386
.L388:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #28]
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r3, [r3]
	ldrh	r2, [r7, #22]
	cmp	r2, r3
	bcs	.L387
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #28]
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r3, [r3]	@ movhi
	strh	r3, [r7, #22]	@ movhi
.L387:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L386:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L388
	ldrh	r3, [r7, #22]
	adds	r3, r3, #1
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #16
	str	r2, [sp, #4]
	ldr	r0, [r7, #4]
	movs	r1, #2
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #12]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L389
	b	.L385
.L389:
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	str	r3, [r7, #24]
	b	.L390
.L391:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #8]
	ldr	r3, [r7, #24]
	lsls	r3, r3, #1
	add	r3, r3, r1
	ldrh	r3, [r3]
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldr	r2, [r7, #24]
	uxth	r2, r2
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #24]
	subs	r3, r3, #1
	str	r3, [r7, #24]
.L390:
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bge	.L391
	ldrh	r2, [r7, #22]
	ldr	r3, [r7, #12]
	str	r2, [r3, #16]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #20]
.L385:
	ldr	r3, [r7, #16]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cff_charset_compute_cids, .-cff_charset_compute_cids
	.section	.text.cff_charset_cid_to_gindex,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_charset_cid_to_gindex, %function
cff_charset_cid_to_gindex:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #16]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L394
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r3, [r3]
	str	r3, [r7, #12]
.L394:
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	cff_charset_cid_to_gindex, .-cff_charset_cid_to_gindex
	.section	.text.cff_charset_free_cids,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_charset_free_cids, %function
cff_charset_free_cids:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r0, [r7]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #16]
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cff_charset_free_cids, .-cff_charset_free_cids
	.section	.text.cff_charset_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_charset_done, %function
cff_charset_done:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3, #28]
	str	r3, [r7, #12]
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #12]
	bl	cff_charset_free_cids(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cff_charset_done, .-cff_charset_done
	.section	.text.cff_charset_load,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_charset_load, %function
cff_charset_load:
	@ args = 8, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #52
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #56]
	cmp	r3, #2
	bls	.L399
	ldr	r2, [r7]
	ldr	r3, [r7, #56]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L400
	add	r3, r7, #16
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	FT_Stream_ReadChar(PLT)
	mov	r3, r0
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L400
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #16
	str	r2, [sp, #4]
	ldr	r0, [r7, #20]
	movs	r1, #2
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L401
	b	.L400
.L401:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	movs	r2, #0
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L403
	cmp	r3, #2
	bhi	.L402
	b	.L431
.L403:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L405
	ldr	r3, [r7, #8]
	add	r3, r3, #-2147483648
	subs	r3, r3, #1
	lsls	r3, r3, #1
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	FT_Stream_EnterFrame(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L406
	b	.L400
.L406:
	movs	r3, #1
	str	r3, [r7, #32]
	b	.L407
.L408:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #32]
	lsls	r3, r3, #1
	adds	r4, r2, r3
	ldr	r0, [r7, #4]
	bl	FT_Stream_GetUShort(PLT)
	mov	r3, r0
	strh	r3, [r4]	@ movhi
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	str	r3, [r7, #32]
.L407:
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L408
	ldr	r0, [r7, #4]
	bl	FT_Stream_ExitFrame(PLT)
	b	.L409
.L405:
	b	.L409
.L431:
	movs	r3, #1
	str	r3, [r7, #32]
	b	.L410
.L417:
	add	r3, r7, #16
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	FT_Stream_ReadUShort(PLT)
	mov	r3, r0
	strh	r3, [r7, #38]	@ movhi
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L411
	b	.L400
.L411:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	cmp	r3, #2
	bne	.L412
	add	r3, r7, #16
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	FT_Stream_ReadUShort(PLT)
	mov	r3, r0
	str	r3, [r7, #28]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L413
	b	.L400
.L412:
	add	r3, r7, #16
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	FT_Stream_ReadChar(PLT)
	mov	r3, r0
	uxtb	r3, r3
	str	r3, [r7, #28]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L413
	b	.L400
.L413:
	ldrh	r2, [r7, #38]
	ldr	r3, [r7, #28]
	rsb	r3, r3, #65280
	adds	r3, r3, #255
	cmp	r2, r3
	bls	.L414
	ldrh	r3, [r7, #38]
	rsb	r3, r3, #65280
	adds	r3, r3, #255
	str	r3, [r7, #28]
.L414:
	movs	r3, #0
	str	r3, [r7, #24]
	b	.L415
.L416:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #32]
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r2, [r7, #38]	@ movhi
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	str	r3, [r7, #32]
	ldrh	r3, [r7, #38]
	adds	r3, r3, #1
	strh	r3, [r7, #38]	@ movhi
.L415:
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcs	.L410
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bls	.L416
.L410:
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L417
	b	.L409
.L402:
	movs	r3, #3
	str	r3, [r7, #16]
	b	.L400
.L409:
	b	.L418
.L399:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #56]
	str	r2, [r3, #4]
	ldr	r3, [r7, #56]
	cmp	r3, #1
	beq	.L420
	cmp	r3, #1
	bcc	.L421
	cmp	r3, #2
	beq	.L422
	b	.L432
.L421:
	ldr	r3, [r7, #8]
	cmp	r3, #229
	bls	.L423
	movs	r3, #3
	str	r3, [r7, #16]
	b	.L400
.L423:
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #16
	str	r2, [sp, #4]
	ldr	r0, [r7, #20]
	movs	r1, #2
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L424
	b	.L400
.L424:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #1
	mov	r0, r2
	ldr	r2, .L433
.LPIC30:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	bl	memcpy(PLT)
	b	.L418
.L420:
	ldr	r3, [r7, #8]
	cmp	r3, #166
	bls	.L425
	movs	r3, #3
	str	r3, [r7, #16]
	b	.L400
.L425:
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #16
	str	r2, [sp, #4]
	ldr	r0, [r7, #20]
	movs	r1, #2
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L426
	b	.L400
.L426:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #1
	mov	r0, r2
	ldr	r2, .L433+4
.LPIC31:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	bl	memcpy(PLT)
	b	.L418
.L422:
	ldr	r3, [r7, #8]
	cmp	r3, #87
	bls	.L427
	movs	r3, #3
	str	r3, [r7, #16]
	b	.L400
.L427:
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #16
	str	r2, [sp, #4]
	ldr	r0, [r7, #20]
	movs	r1, #2
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L428
	b	.L400
.L428:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #1
	mov	r0, r2
	ldr	r2, .L433+8
.LPIC32:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	bl	memcpy(PLT)
	b	.L418
.L432:
	movs	r3, #3
	str	r3, [r7, #16]
	b	.L400
.L418:
	ldrb	r3, [r7, #60]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L400
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #20]
	bl	cff_charset_compute_cids(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
.L400:
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L429
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	ldr	r0, [r7, #20]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	ldr	r0, [r7, #20]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #8]
.L429:
	ldr	r3, [r7, #16]
	mov	r0, r3
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L434:
	.align	2
.L433:
	.word	cff_isoadobe_charset-(.LPIC30+4)
	.word	cff_expert_charset-(.LPIC31+4)
	.word	cff_expertsubset_charset-(.LPIC32+4)
	.size	cff_charset_load, .-cff_charset_load
	.section	.text.cff_encoding_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_encoding_done, %function
cff_encoding_done:
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
	.size	cff_encoding_done, .-cff_encoding_done
	.section	.text.cff_encoding_load,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_encoding_load, %function
cff_encoding_load:
	@ args = 8, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #64
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L437
	movs	r3, #3
	str	r3, [r7, #16]
	b	.L438
.L437:
	movs	r3, #0
	str	r3, [r7, #60]
	b	.L439
.L440:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #60]
	adds	r3, r3, #4
	lsls	r3, r3, #1
	add	r3, r3, r2
	movs	r2, #0
	strh	r2, [r3, #4]	@ movhi
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #60]
	add	r3, r3, #260
	lsls	r3, r3, #1
	add	r3, r3, r2
	movs	r2, #0
	strh	r2, [r3, #4]	@ movhi
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
.L439:
	ldr	r3, [r7, #60]
	cmp	r3, #255
	bls	.L440
	ldr	r3, [r7, #76]
	cmp	r3, #1
	bls	.L441
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #76]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r0, [r7]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L438
	add	r3, r7, #16
	ldr	r0, [r7]
	mov	r1, r3
	bl	FT_Stream_ReadChar(PLT)
	mov	r3, r0
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L438
	add	r3, r7, #16
	ldr	r0, [r7]
	mov	r1, r3
	bl	FT_Stream_ReadChar(PLT)
	mov	r3, r0
	uxtb	r3, r3
	str	r3, [r7, #32]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L438
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	and	r3, r3, #127
	cmp	r3, #0
	beq	.L443
	cmp	r3, #1
	beq	.L444
	b	.L480
.L443:
	ldr	r3, [r7, #32]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r0, [r7]
	ldr	r1, [r7, #32]
	bl	FT_Stream_EnterFrame(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L445
	b	.L438
.L445:
	ldr	r3, [r7]
	ldr	r3, [r3, #32]
	str	r3, [r7, #52]
	movs	r3, #1
	str	r3, [r7, #60]
	b	.L446
.L448:
	ldr	r3, [r7, #52]
	adds	r2, r3, #1
	str	r2, [r7, #52]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #56]
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcs	.L447
	ldr	r3, [r7, #60]
	uxth	r2, r3
	ldr	r1, [r7, #12]
	ldr	r3, [r7, #56]
	add	r3, r3, #260
	lsls	r3, r3, #1
	add	r3, r3, r1
	strh	r2, [r3, #4]	@ movhi
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #60]
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r2, [r3]
	ldr	r1, [r7, #12]
	ldr	r3, [r7, #56]
	adds	r3, r3, #4
	lsls	r3, r3, #1
	add	r3, r3, r1
	strh	r2, [r3, #4]	@ movhi
.L447:
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
.L446:
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bls	.L448
	ldr	r0, [r7]
	bl	FT_Stream_ExitFrame(PLT)
	b	.L449
.L444:
	movs	r3, #1
	str	r3, [r7, #48]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #8]
	movs	r3, #0
	str	r3, [r7, #60]
	b	.L450
.L457:
	add	r3, r7, #16
	ldr	r0, [r7]
	mov	r1, r3
	bl	FT_Stream_ReadChar(PLT)
	mov	r3, r0
	uxtb	r3, r3
	str	r3, [r7, #56]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L451
	b	.L438
.L451:
	add	r3, r7, #16
	ldr	r0, [r7]
	mov	r1, r3
	bl	FT_Stream_ReadChar(PLT)
	mov	r3, r0
	uxtb	r3, r3
	str	r3, [r7, #28]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L452
	b	.L438
.L452:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bcs	.L453
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #28]
	str	r2, [r3, #8]
.L453:
	ldr	r3, [r7, #48]
	str	r3, [r7, #44]
	b	.L454
.L456:
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcs	.L455
	ldr	r3, [r7, #56]
	cmp	r3, #255
	bhi	.L455
	ldr	r3, [r7, #44]
	uxth	r2, r3
	ldr	r1, [r7, #12]
	ldr	r3, [r7, #56]
	add	r3, r3, #260
	lsls	r3, r3, #1
	add	r3, r3, r1
	strh	r2, [r3, #4]	@ movhi
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #44]
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r2, [r3]
	ldr	r1, [r7, #12]
	ldr	r3, [r7, #56]
	adds	r3, r3, #4
	lsls	r3, r3, #1
	add	r3, r3, r1
	strh	r2, [r3, #4]	@ movhi
.L455:
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	str	r3, [r7, #44]
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	str	r3, [r7, #56]
.L454:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #48]
	add	r2, r2, r3
	ldr	r3, [r7, #44]
	cmp	r2, r3
	bhi	.L456
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #48]
.L450:
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bcc	.L457
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r3, #256
	bls	.L458
	ldr	r3, [r7, #12]
	mov	r2, #256
	str	r2, [r3, #8]
	b	.L449
.L458:
	b	.L449
.L480:
	movs	r3, #3
	str	r3, [r7, #16]
	b	.L438
.L449:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	and	r3, r3, #128
	cmp	r3, #0
	beq	.L459
	add	r3, r7, #16
	ldr	r0, [r7]
	mov	r1, r3
	bl	FT_Stream_ReadChar(PLT)
	mov	r3, r0
	uxtb	r3, r3
	str	r3, [r7, #32]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L460
	b	.L438
.L460:
	movs	r3, #0
	str	r3, [r7, #60]
	b	.L461
.L468:
	add	r3, r7, #16
	ldr	r0, [r7]
	mov	r1, r3
	bl	FT_Stream_ReadChar(PLT)
	mov	r3, r0
	uxtb	r3, r3
	str	r3, [r7, #56]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L462
	b	.L438
.L462:
	add	r3, r7, #16
	ldr	r0, [r7]
	mov	r1, r3
	bl	FT_Stream_ReadUShort(PLT)
	mov	r3, r0
	strh	r3, [r7, #26]	@ movhi
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L463
	b	.L438
.L463:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #56]
	adds	r3, r3, #4
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r2, [r7, #26]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	movs	r3, #0
	str	r3, [r7, #40]
	b	.L464
.L467:
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #40]
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r3, [r3]
	ldrh	r2, [r7, #26]
	cmp	r2, r3
	bne	.L465
	ldr	r3, [r7, #40]
	uxth	r2, r3
	ldr	r1, [r7, #12]
	ldr	r3, [r7, #56]
	add	r3, r3, #260
	lsls	r3, r3, #1
	add	r3, r3, r1
	strh	r2, [r3, #4]	@ movhi
	b	.L466
.L465:
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	str	r3, [r7, #40]
.L464:
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcc	.L467
.L466:
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
.L461:
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bcc	.L468
.L459:
	b	.L438
.L441:
	ldr	r3, [r7, #76]
	cmp	r3, #0
	beq	.L470
	cmp	r3, #1
	beq	.L471
	b	.L481
.L470:
	ldr	r3, [r7, #12]
	adds	r3, r3, #12
	mov	r0, r3
	ldr	r3, .L482
.LPIC33:
	add	r3, pc
	mov	r1, r3
	mov	r2, #512
	bl	memcpy(PLT)
	b	.L472
.L471:
	ldr	r3, [r7, #12]
	adds	r3, r3, #12
	mov	r0, r3
	ldr	r3, .L482+4
.LPIC34:
	add	r3, pc
	mov	r1, r3
	mov	r2, #512
	bl	memcpy(PLT)
.L472:
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7]
	ldr	r3, [r3, #28]
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #4]
	mov	r2, r3
	bl	cff_charset_compute_cids(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L473
	b	.L438
.L473:
	movs	r3, #0
	str	r3, [r7, #60]
	b	.L474
.L478:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #60]
	adds	r3, r3, #4
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r3, [r3, #4]
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #36]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L475
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #20]
	bl	cff_charset_cid_to_gindex(PLT)
	str	r0, [r7, #36]
.L475:
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L476
	ldr	r3, [r7, #36]
	uxth	r2, r3
	ldr	r1, [r7, #12]
	ldr	r3, [r7, #60]
	add	r3, r3, #260
	lsls	r3, r3, #1
	add	r3, r3, r1
	strh	r2, [r3, #4]	@ movhi
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	b	.L477
.L476:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #60]
	add	r3, r3, #260
	lsls	r3, r3, #1
	add	r3, r3, r2
	movs	r2, #0
	strh	r2, [r3, #4]	@ movhi
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #60]
	adds	r3, r3, #4
	lsls	r3, r3, #1
	add	r3, r3, r2
	movs	r2, #0
	strh	r2, [r3, #4]	@ movhi
.L477:
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
.L474:
	ldr	r3, [r7, #60]
	cmp	r3, #255
	bls	.L478
	b	.L438
.L481:
	movs	r3, #3
	str	r3, [r7, #16]
	nop
.L438:
	ldr	r3, [r7, #16]
	mov	r0, r3
	adds	r7, r7, #64
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L483:
	.align	2
.L482:
	.word	cff_standard_encoding-(.LPIC33+4)
	.word	cff_expert_encoding-(.LPIC34+4)
	.size	cff_encoding_load, .-cff_encoding_load
	.section	.text.cff_subfont_load,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_subfont_load, %function
cff_subfont_load:
	@ args = 8, pretend = 0, frame = 456
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #460
	add	r7, sp, #0
	add	r4, r7, #12
	str	r0, [r4]
	add	r0, r7, #8
	str	r1, [r0]
	adds	r1, r7, #4
	str	r2, [r1]
	mov	r2, r7
	str	r3, [r2]
	add	r3, r7, #24
	movs	r2, #0
	str	r2, [r3]
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r3, [r7, #448]
	add	r3, r7, #12
	ldr	r3, [r3]
	adds	r3, r3, #176
	str	r3, [r7, #444]
	add	r3, r7, #12
	ldr	r3, [r3]
	add	r2, r7, #28
	mov	r0, r2
	mov	r1, #4096
	mov	r2, r3
	ldr	r3, [r7, #476]
	bl	cff_parser_init(PLT)
	ldr	r0, [r7, #448]
	movs	r1, #0
	movs	r2, #176
	bl	memset(PLT)
	ldr	r2, [r7, #448]
	movs	r3, #0
	movt	r3, 65436
	str	r3, [r2, #32]
	ldr	r3, [r7, #448]
	mov	r2, #3276800
	str	r2, [r3, #36]
	ldr	r3, [r7, #448]
	movs	r2, #2
	str	r2, [r3, #44]
	ldr	r3, [r7, #448]
	mov	r2, #65536
	str	r2, [r3, #48]
	ldr	r3, [r7, #448]
	mov	r2, #65536
	str	r2, [r3, #60]
	ldr	r3, [r7, #448]
	movw	r2, #8720
	str	r2, [r3, #156]
	ldr	r3, [r7, #448]
	movw	r2, #65535
	str	r2, [r3]
	ldr	r3, [r7, #448]
	movw	r2, #65535
	str	r2, [r3, #4]
	ldr	r3, [r7, #448]
	movw	r2, #65535
	str	r2, [r3, #8]
	ldr	r3, [r7, #448]
	movw	r2, #65535
	str	r2, [r3, #12]
	ldr	r3, [r7, #448]
	movw	r2, #65535
	str	r2, [r3, #16]
	ldr	r3, [r7, #448]
	movw	r2, #65535
	str	r2, [r3, #20]
	ldr	r3, [r7, #448]
	movw	r2, #65535
	str	r2, [r3, #128]
	ldr	r3, [r7, #448]
	movw	r2, #65535
	str	r2, [r3, #132]
	ldr	r3, [r7, #448]
	movw	r2, #65535
	str	r2, [r3, #136]
	ldr	r3, [r7, #448]
	movw	r2, #65535
	str	r2, [r3, #172]
	add	r0, r7, #8
	adds	r1, r7, #4
	add	r2, r7, #24
	add	r3, r7, #20
	ldr	r0, [r0]
	ldr	r1, [r1]
	bl	cff_index_access_element(PLT)
	str	r0, [r7, #452]
	ldr	r3, [r7, #452]
	cmp	r3, #0
	bne	.L485
	add	r3, r7, #24
	ldr	r2, [r3]
	add	r3, r7, #24
	ldr	r1, [r3]
	add	r3, r7, #20
	ldr	r3, [r3]
	add	r3, r3, r1
	add	r1, r7, #28
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	cff_parser_run(PLT)
	str	r0, [r7, #452]
.L485:
	add	r2, r7, #8
	add	r3, r7, #24
	ldr	r0, [r2]
	mov	r1, r3
	bl	cff_index_forget_element(PLT)
	ldr	r3, [r7, #452]
	cmp	r3, #0
	beq	.L486
	b	.L487
.L486:
	ldr	r3, [r7, #448]
	ldr	r2, [r3, #132]
	movw	r3, #65535
	cmp	r2, r3
	beq	.L488
	b	.L487
.L488:
	ldr	r3, [r7, #448]
	ldr	r3, [r3, #116]
	cmp	r3, #0
	beq	.L489
	ldr	r3, [r7, #448]
	ldr	r3, [r3, #120]
	cmp	r3, #0
	beq	.L489
	ldr	r0, [r7, #444]
	movs	r1, #0
	mov	r2, #360
	bl	memset(PLT)
	ldr	r3, [r7, #444]
	movs	r2, #7
	str	r2, [r3, #200]
	ldr	r3, [r7, #444]
	movs	r2, #1
	str	r2, [r3, #204]
	ldr	r3, [r7, #444]
	mov	r2, #-1
	str	r2, [r3, #332]
	ldr	r3, [r7, #444]
	movw	r2, #3932
	str	r2, [r3, #340]
	ldr	r2, [r7, #444]
	mov	r3, #40960
	movt	r3, 39
	str	r3, [r2, #196]
	add	r3, r7, #28
	mov	r0, r3
	mov	r1, #8192
	ldr	r2, [r7, #444]
	ldr	r3, [r7, #476]
	bl	cff_parser_init(PLT)
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #116]
	ldr	r3, [r7, #472]
	add	r3, r3, r2
	mov	r2, r7
	ldr	r0, [r2]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	str	r0, [r7, #452]
	ldr	r3, [r7, #452]
	cmp	r3, #0
	bne	.L487
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #120]
	mov	r2, r7
	ldr	r0, [r2]
	mov	r1, r3
	bl	FT_Stream_EnterFrame(PLT)
	str	r0, [r7, #452]
	ldr	r3, [r7, #452]
	cmp	r3, #0
	bne	.L487
	mov	r3, r7
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	mov	r3, r7
	ldr	r3, [r3]
	ldr	r3, [r3, #36]
	add	r1, r7, #28
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	cff_parser_run(PLT)
	str	r0, [r7, #452]
	mov	r3, r7
	ldr	r0, [r3]
	bl	FT_Stream_ExitFrame(PLT)
	ldr	r3, [r7, #452]
	cmp	r3, #0
	beq	.L490
	b	.L487
.L490:
	ldr	r3, [r7, #444]
	ldrb	r3, [r3]	@ zero_extendqisi2
	bic	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [r7, #444]
	strb	r2, [r3]
.L489:
	ldr	r3, [r7, #444]
	ldr	r3, [r3, #348]
	cmp	r3, #0
	beq	.L487
	ldr	r3, [r7, #448]
	ldr	r2, [r3, #116]
	ldr	r3, [r7, #472]
	add	r2, r2, r3
	ldr	r3, [r7, #444]
	ldr	r3, [r3, #348]
	add	r3, r3, r2
	mov	r2, r7
	ldr	r0, [r2]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	str	r0, [r7, #452]
	ldr	r3, [r7, #452]
	cmp	r3, #0
	beq	.L491
	b	.L487
.L491:
	add	r3, r7, #12
	ldr	r3, [r3]
	add	r2, r3, #536
	mov	r3, r7
	mov	r0, r2
	ldr	r1, [r3]
	movs	r2, #1
	bl	cff_index_init(PLT)
	str	r0, [r7, #452]
	ldr	r3, [r7, #452]
	cmp	r3, #0
	beq	.L492
	b	.L487
.L492:
	add	r3, r7, #12
	ldr	r3, [r3]
	add	r2, r3, #536
	add	r3, r7, #12
	ldr	r3, [r3]
	add	r3, r3, #568
	mov	r0, r2
	mov	r1, r3
	movs	r2, #0
	bl	cff_index_get_pointers(PLT)
	str	r0, [r7, #452]
	ldr	r3, [r7, #452]
	cmp	r3, #0
	beq	.L487
	nop
.L487:
	ldr	r3, [r7, #452]
	mov	r0, r3
	add	r7, r7, #460
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	cff_subfont_load, .-cff_subfont_load
	.section	.text.cff_subfont_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_subfont_done, %function
cff_subfont_done:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L494
	ldr	r3, [r7]
	add	r3, r3, #536
	mov	r0, r3
	bl	cff_index_done(PLT)
	ldr	r3, [r7]
	ldr	r3, [r3, #568]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3, #568]
.L494:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cff_subfont_done, .-cff_subfont_done
	.section	.text.cff_font_load,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_font_load, %function
cff_font_load:
	@ args = 4, pretend = 0, frame = 112
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #124
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #28]
	str	r3, [r7, #100]
	ldr	r0, [r7]
	movs	r1, #0
	movw	r2, #2980
	bl	memset(PLT)
	add	r3, r7, #48
	mov	r0, r3
	movs	r1, #0
	movs	r2, #32
	bl	memset(PLT)
	ldr	r3, [r7]
	ldr	r2, [r7, #8]
	str	r2, [r3]
	ldr	r3, [r7]
	ldr	r2, [r7, #100]
	str	r2, [r3, #4]
	ldr	r3, [r7]
	addw	r3, r3, #1324
	str	r3, [r7, #96]
	ldr	r0, [r7, #8]
	bl	FT_Stream_Pos(PLT)
	str	r0, [r7, #92]
	ldr	r0, [r7, #8]
	ldr	r3, .L530
.LPIC35:
	add	r3, pc
	mov	r1, r3
	ldr	r2, [r7]
	bl	FT_Stream_ReadFields(PLT)
	mov	r3, r0
	str	r3, [r7, #80]
	ldr	r3, [r7, #80]
	cmp	r3, #0
	beq	.L497
	b	.L498
.L497:
	ldr	r3, [r7]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L499
	ldr	r3, [r7]
	ldrb	r3, [r3, #18]	@ zero_extendqisi2
	cmp	r3, #3
	bls	.L499
	ldr	r3, [r7]
	ldrb	r3, [r3, #19]	@ zero_extendqisi2
	cmp	r3, #4
	bls	.L500
.L499:
	movs	r3, #2
	str	r3, [r7, #80]
	b	.L498
.L500:
	ldr	r3, [r7]
	ldrb	r3, [r3, #18]	@ zero_extendqisi2
	subs	r3, r3, #4
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	FT_Stream_Skip(PLT)
	mov	r3, r0
	str	r3, [r7, #80]
	ldr	r3, [r7, #80]
	cmp	r3, #0
	beq	.L501
	b	.L498
.L501:
	ldr	r3, [r7]
	adds	r3, r3, #20
	mov	r0, r3
	ldr	r1, [r7, #8]
	movs	r2, #0
	bl	cff_index_init(PLT)
	mov	r3, r0
	str	r3, [r7, #80]
	ldr	r3, [r7, #80]
	cmp	r3, #0
	bne	.L498
	ldr	r3, [r7]
	add	r3, r3, #1208
	mov	r0, r3
	ldr	r1, [r7, #8]
	movs	r2, #0
	bl	cff_index_init(PLT)
	mov	r3, r0
	str	r3, [r7, #80]
	ldr	r3, [r7, #80]
	cmp	r3, #0
	bne	.L498
	add	r3, r7, #48
	mov	r0, r3
	ldr	r1, [r7, #8]
	movs	r2, #1
	bl	cff_index_init(PLT)
	mov	r3, r0
	str	r3, [r7, #80]
	ldr	r3, [r7, #80]
	cmp	r3, #0
	bne	.L498
	ldr	r3, [r7]
	adds	r3, r3, #84
	mov	r0, r3
	ldr	r1, [r7, #8]
	movs	r2, #1
	bl	cff_index_init(PLT)
	mov	r3, r0
	str	r3, [r7, #80]
	ldr	r3, [r7, #80]
	cmp	r3, #0
	bne	.L498
	ldr	r3, [r7]
	addw	r2, r3, #1316
	ldr	r3, [r7]
	add	r3, r3, #1320
	add	r1, r7, #48
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	cff_index_get_pointers(PLT)
	mov	r3, r0
	str	r3, [r7, #80]
	ldr	r3, [r7, #80]
	cmp	r3, #0
	bne	.L498
	ldr	r2, [r7, #56]
	ldr	r3, [r7]
	str	r2, [r3, #1312]
	ldrb	r3, [r7, #128]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L502
	ldr	r3, [r7, #4]
	uxth	r3, r3
	str	r3, [r7, #108]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	ble	.L503
	ldr	r3, [r7]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #108]
	cmp	r2, r3
	bhi	.L503
	movs	r3, #6
	str	r3, [r7, #80]
	b	.L498
.L503:
	ldr	r3, [r7]
	ldr	r2, [r3, #28]
	ldr	r3, [r7]
	str	r2, [r3, #8]
	b	.L504
.L502:
	movs	r3, #0
	str	r3, [r7, #108]
	ldr	r3, [r7]
	ldr	r3, [r3, #28]
	cmp	r3, #1
	bls	.L504
	movs	r3, #3
	str	r3, [r7, #80]
	b	.L498
.L504:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bge	.L505
	b	.L498
.L505:
	ldr	r3, [r7]
	addw	r2, r3, #1324
	ldr	r3, [r7]
	add	r3, r3, #1208
	ldr	r1, [r7, #92]
	str	r1, [sp]
	ldr	r1, [r7, #12]
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #108]
	ldr	r3, [r7, #8]
	bl	cff_subfont_load(PLT)
	mov	r3, r0
	str	r3, [r7, #80]
	ldr	r3, [r7, #80]
	cmp	r3, #0
	beq	.L506
	b	.L498
.L506:
	ldr	r3, [r7, #96]
	ldr	r2, [r3, #112]
	ldr	r3, [r7, #92]
	add	r3, r3, r2
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #80]
	ldr	r3, [r7, #80]
	cmp	r3, #0
	beq	.L507
	b	.L498
.L507:
	ldr	r3, [r7]
	add	r3, r3, #1176
	mov	r0, r3
	ldr	r1, [r7, #8]
	movs	r2, #0
	bl	cff_index_init(PLT)
	mov	r3, r0
	str	r3, [r7, #80]
	ldr	r3, [r7, #80]
	cmp	r3, #0
	beq	.L508
	b	.L498
.L508:
	ldr	r3, [r7, #96]
	ldr	r2, [r3, #132]
	movw	r3, #65535
	cmp	r2, r3
	beq	.L509
	movs	r3, #0
	str	r3, [r7, #88]
	ldr	r3, [r7, #96]
	ldr	r2, [r3, #164]
	ldr	r3, [r7, #92]
	add	r3, r3, r2
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #80]
	ldr	r3, [r7, #80]
	cmp	r3, #0
	beq	.L510
	b	.L498
.L510:
	add	r3, r7, #16
	mov	r0, r3
	ldr	r1, [r7, #8]
	movs	r2, #0
	bl	cff_index_init(PLT)
	mov	r3, r0
	str	r3, [r7, #80]
	ldr	r3, [r7, #80]
	cmp	r3, #0
	beq	.L512
	b	.L498
.L512:
	ldr	r3, [r7, #24]
	cmp	r3, #256
	bls	.L513
	b	.L514
.L513:
	ldr	r2, [r7, #24]
	ldr	r3, [r7]
	str	r2, [r3, #1896]
	ldr	r3, [r7, #24]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #80
	str	r2, [sp, #4]
	ldr	r0, [r7, #100]
	mov	r1, #572
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	str	r0, [r7, #88]
	ldr	r3, [r7, #80]
	cmp	r3, #0
	beq	.L515
	b	.L514
.L515:
	movs	r3, #0
	str	r3, [r7, #104]
	b	.L516
.L517:
	ldr	r3, [r7, #104]
	mov	r2, #572
	mul	r3, r2, r3
	ldr	r2, [r7, #88]
	add	r2, r2, r3
	ldr	r1, [r7]
	ldr	r3, [r7, #104]
	add	r3, r3, #474
	lsls	r3, r3, #2
	add	r3, r3, r1
	str	r2, [r3, #4]
	ldr	r3, [r7, #104]
	adds	r3, r3, #1
	str	r3, [r7, #104]
.L516:
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #104]
	cmp	r2, r3
	bhi	.L517
	movs	r3, #0
	str	r3, [r7, #104]
	b	.L518
.L520:
	ldr	r2, [r7]
	ldr	r3, [r7, #104]
	add	r3, r3, #474
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	str	r3, [r7, #88]
	add	r3, r7, #16
	ldr	r2, [r7, #92]
	str	r2, [sp]
	ldr	r2, [r7, #12]
	str	r2, [sp, #4]
	ldr	r0, [r7, #88]
	mov	r1, r3
	ldr	r2, [r7, #104]
	ldr	r3, [r7, #8]
	bl	cff_subfont_load(PLT)
	mov	r3, r0
	str	r3, [r7, #80]
	ldr	r3, [r7, #80]
	cmp	r3, #0
	beq	.L519
	b	.L514
.L519:
	ldr	r3, [r7, #104]
	adds	r3, r3, #1
	str	r3, [r7, #104]
.L518:
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #104]
	cmp	r2, r3
	bhi	.L520
	ldr	r3, [r7]
	addw	r1, r3, #2924
	ldr	r3, [r7]
	ldr	r2, [r3, #1184]
	ldr	r3, [r7, #96]
	ldr	r0, [r3, #168]
	ldr	r3, [r7, #92]
	add	r3, r3, r0
	mov	r0, r1
	mov	r1, r2
	ldr	r2, [r7, #8]
	bl	CFF_Load_FD_Select(PLT)
	mov	r3, r0
	str	r3, [r7, #80]
.L514:
	add	r3, r7, #16
	mov	r0, r3
	bl	cff_index_done(PLT)
	ldr	r3, [r7, #80]
	cmp	r3, #0
	beq	.L521
	nop
	b	.L498
.L521:
	b	.L522
.L509:
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3, #1896]
.L522:
	ldr	r3, [r7, #96]
	ldr	r3, [r3, #112]
	cmp	r3, #0
	bne	.L523
	movs	r3, #3
	str	r3, [r7, #80]
	b	.L498
.L523:
	ldr	r3, [r7]
	ldr	r2, [r3, #1184]
	ldr	r3, [r7]
	str	r2, [r3, #12]
	ldr	r3, [r7]
	add	r2, r3, #84
	ldr	r3, [r7]
	addw	r3, r3, #1308
	mov	r0, r2
	mov	r1, r3
	movs	r2, #0
	bl	cff_index_get_pointers(PLT)
	mov	r3, r0
	str	r3, [r7, #80]
	ldr	r3, [r7, #80]
	cmp	r3, #0
	beq	.L524
	b	.L498
.L524:
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L525
	ldr	r3, [r7, #96]
	ldr	r2, [r3, #132]
	movw	r3, #65535
	cmp	r2, r3
	beq	.L526
	ldrb	r3, [r7, #128]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L526
	movs	r3, #1
	b	.L527
.L526:
	movs	r3, #0
.L527:
	strb	r3, [r7, #87]
	ldr	r3, [r7]
	add	r2, r3, #1152
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	ldr	r1, [r7, #96]
	ldr	r1, [r1, #104]
	str	r1, [sp]
	ldrb	r1, [r7, #87]	@ zero_extendqisi2
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #92]
	bl	cff_charset_load(PLT)
	mov	r3, r0
	str	r3, [r7, #80]
	ldr	r3, [r7, #80]
	cmp	r3, #0
	beq	.L528
	b	.L498
.L528:
	ldr	r3, [r7, #96]
	ldr	r2, [r3, #132]
	movw	r3, #65535
	cmp	r2, r3
	bne	.L525
	ldr	r3, [r7]
	add	r1, r3, #116
	ldr	r3, [r7]
	add	r2, r3, #1152
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	ldr	r0, [r7, #96]
	ldr	r0, [r0, #108]
	ldr	r4, [r7, #92]
	str	r4, [sp]
	str	r0, [sp, #4]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [r7, #8]
	bl	cff_encoding_load(PLT)
	mov	r3, r0
	str	r3, [r7, #80]
	ldr	r3, [r7, #80]
	cmp	r3, #0
	beq	.L525
	b	.L498
.L525:
	ldr	r0, [r7]
	ldr	r1, [r7, #108]
	bl	cff_index_get_name(PLT)
	mov	r2, r0
	ldr	r3, [r7]
	str	r2, [r3, #1304]
.L498:
	add	r3, r7, #48
	mov	r0, r3
	bl	cff_index_done(PLT)
	ldr	r3, [r7, #80]
	mov	r0, r3
	adds	r7, r7, #116
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L531:
	.align	2
.L530:
	.word	cff_header_fields.8929-(.LPIC35+4)
	.size	cff_font_load, .-cff_font_load
	.section	.text.cff_font_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_font_done, %function
cff_font_done:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	adds	r3, r3, #84
	mov	r0, r3
	bl	cff_index_done(PLT)
	ldr	r3, [r7, #4]
	add	r3, r3, #1208
	mov	r0, r3
	bl	cff_index_done(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #20
	mov	r0, r3
	bl	cff_index_done(PLT)
	ldr	r3, [r7, #4]
	add	r3, r3, #1176
	mov	r0, r3
	bl	cff_index_done(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1896]
	cmp	r3, #0
	beq	.L533
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L534
.L535:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #12]
	add	r3, r3, #474
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	cff_subfont_done(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L534:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #1896]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bhi	.L535
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1900]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #1900]
.L533:
	ldr	r3, [r7, #4]
	adds	r3, r3, #116
	mov	r0, r3
	bl	cff_encoding_done(PLT)
	ldr	r3, [r7, #4]
	add	r2, r3, #1152
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	cff_charset_done(PLT)
	ldr	r3, [r7, #4]
	addw	r3, r3, #1324
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	cff_subfont_done(PLT)
	ldr	r3, [r7, #4]
	addw	r2, r3, #2924
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	CFF_Done_FD_Select(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #2960]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #2960]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1304]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #1304]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1308]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #1308]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1316]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #1316]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1320]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #1320]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #2976]
	cmp	r3, #0
	beq	.L532
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #2976]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #2972]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #2972]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #2972]
.L532:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cff_font_done, .-cff_font_done
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
	.section	.rodata
	.align	2
.LC14:
	.ascii	"pshinter\000"
	.section	.text.cff_size_get_globals_funcs,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_size_get_globals_funcs, %function
cff_size_get_globals_funcs:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #656]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #2952]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #96]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r3, .L543
.LPIC36:
	add	r3, pc
	mov	r1, r3
	bl	FT_Get_Module(PLT)
	str	r0, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L540
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L540
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L540
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r0, [r7, #8]
	blx	r3
	mov	r3, r0
	b	.L541
.L540:
	movs	r3, #0
.L541:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L544:
	.align	2
.L543:
	.word	.LC14-(.LPIC36+4)
	.size	cff_size_get_globals_funcs, .-cff_size_get_globals_funcs
	.section	.text.cff_size_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_size_done, %function
cff_size_done:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #656]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L545
	ldr	r0, [r7, #24]
	bl	cff_size_get_globals_funcs(PLT)
	str	r0, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L545
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #12]
	ldr	r2, [r2]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #1896]
	str	r3, [r7, #28]
	b	.L547
.L548:
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #28]
	subs	r3, r3, #1
	ldr	r1, [r7, #12]
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r3, [r3, #4]
	mov	r0, r3
	blx	r2
	ldr	r3, [r7, #28]
	subs	r3, r3, #1
	str	r3, [r7, #28]
.L547:
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L548
.L545:
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cff_size_done, .-cff_size_done
	.section	.text.cff_make_private_dict,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_make_private_dict, %function
cff_make_private_dict:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	adds	r3, r3, #176
	str	r3, [r7, #16]
	ldr	r0, [r7]
	movs	r1, #0
	movs	r2, #196
	bl	memset(PLT)
	ldr	r3, [r7, #16]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7]
	strb	r2, [r3, #8]
	ldr	r3, [r7]
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L550
.L551:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	uxth	r2, r3
	ldr	r1, [r7]
	ldr	r3, [r7, #20]
	adds	r3, r3, #4
	lsls	r3, r3, #1
	add	r3, r3, r1
	strh	r2, [r3, #4]	@ movhi
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L550:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bcc	.L551
	ldr	r3, [r7, #16]
	ldrb	r2, [r3, #1]	@ zero_extendqisi2
	ldr	r3, [r7]
	strb	r2, [r3, #9]
	ldr	r3, [r7]
	ldrb	r3, [r3, #9]	@ zero_extendqisi2
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L552
.L553:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #20]
	adds	r3, r3, #14
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	uxth	r1, r3
	ldr	r3, [r7]
	ldr	r2, [r7, #20]
	adds	r2, r2, #20
	strh	r1, [r3, r2, lsl #1]	@ movhi
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L552:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bcc	.L553
	ldr	r3, [r7, #16]
	ldrb	r2, [r3, #2]	@ zero_extendqisi2
	ldr	r3, [r7]
	strb	r2, [r3, #10]
	ldr	r3, [r7]
	ldrb	r3, [r3, #10]	@ zero_extendqisi2
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L554
.L555:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #20]
	adds	r3, r3, #24
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	uxth	r2, r3
	ldr	r1, [r7]
	ldr	r3, [r7, #20]
	adds	r3, r3, #28
	lsls	r3, r3, #1
	add	r3, r3, r1
	strh	r2, [r3, #4]	@ movhi
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L554:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bcc	.L555
	ldr	r3, [r7, #16]
	ldrb	r2, [r3, #3]	@ zero_extendqisi2
	ldr	r3, [r7]
	strb	r2, [r3, #11]
	ldr	r3, [r7]
	ldrb	r3, [r3, #11]	@ zero_extendqisi2
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L556
.L557:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #20]
	adds	r3, r3, #38
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	uxth	r1, r3
	ldr	r3, [r7]
	ldr	r2, [r7, #20]
	adds	r2, r2, #44
	strh	r1, [r3, r2, lsl #1]	@ movhi
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L556:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bcc	.L557
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #196]
	ldr	r3, [r7]
	str	r2, [r3, #108]
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #200]
	ldr	r3, [r7]
	str	r2, [r3, #112]
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #204]
	ldr	r3, [r7]
	str	r2, [r3, #116]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #208]
	uxth	r2, r3
	ldr	r3, [r7]
	strh	r2, [r3, #120]	@ movhi
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #212]
	uxth	r2, r3
	ldr	r3, [r7]
	strh	r2, [r3, #122]	@ movhi
	ldr	r3, [r7, #16]
	ldrb	r2, [r3, #216]	@ zero_extendqisi2
	ldr	r3, [r7]
	strb	r2, [r3, #124]
	ldr	r3, [r7]
	ldrb	r3, [r3, #124]	@ zero_extendqisi2
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L558
.L559:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #20]
	adds	r3, r3, #54
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	uxth	r1, r3
	ldr	r3, [r7]
	ldr	r2, [r7, #20]
	adds	r2, r2, #64
	strh	r1, [r3, r2, lsl #1]	@ movhi
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L558:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bcc	.L559
	ldr	r3, [r7, #16]
	ldrb	r2, [r3, #217]	@ zero_extendqisi2
	ldr	r3, [r7]
	strb	r2, [r3, #125]
	ldr	r3, [r7]
	ldrb	r3, [r3, #125]	@ zero_extendqisi2
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L560
.L561:
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #20]
	adds	r2, r2, #68
	ldr	r3, [r3, r2, lsl #2]
	uxth	r2, r3
	ldr	r1, [r7]
	ldr	r3, [r7, #20]
	adds	r3, r3, #76
	lsls	r3, r3, #1
	add	r3, r3, r1
	strh	r2, [r3, #2]	@ movhi
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L560:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bcc	.L561
	ldr	r3, [r7, #16]
	ldrb	r2, [r3, #324]	@ zero_extendqisi2
	ldr	r3, [r7]
	strb	r2, [r3, #126]
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #336]
	ldr	r3, [r7]
	str	r2, [r3, #184]
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #332]
	ldr	r3, [r7]
	str	r2, [r3, #4]
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cff_make_private_dict, .-cff_make_private_dict
	.section	.text.cff_size_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_size_init, %function
cff_size_init:
	@ args = 0, pretend = 0, frame = 240
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #240
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	str	r3, [r7, #232]
	movs	r3, #0
	str	r3, [r7, #204]
	ldr	r0, [r7, #232]
	bl	cff_size_get_globals_funcs(PLT)
	str	r0, [r7, #228]
	ldr	r3, [r7, #228]
	cmp	r3, #0
	beq	.L563
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #224]
	ldr	r3, [r7, #224]
	ldr	r3, [r3, #656]
	str	r3, [r7, #220]
	movs	r3, #0
	str	r3, [r7, #216]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #100]
	str	r3, [r7, #212]
	add	r3, r7, #204
	ldr	r0, [r7, #212]
	movw	r1, #1028
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	str	r0, [r7, #216]
	ldr	r3, [r7, #204]
	cmp	r3, #0
	beq	.L564
	b	.L570
.L564:
	ldr	r3, [r7, #220]
	addw	r2, r3, #1324
	add	r3, r7, #8
	mov	r0, r2
	mov	r1, r3
	bl	cff_make_private_dict(PLT)
	ldr	r3, [r7, #228]
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2]
	ldr	r0, [r2, #100]
	ldr	r2, [r7, #216]
	add	r1, r7, #8
	blx	r3
	mov	r3, r0
	str	r3, [r7, #204]
	ldr	r3, [r7, #204]
	cmp	r3, #0
	beq	.L566
	b	.L570
.L566:
	ldr	r3, [r7, #220]
	ldr	r3, [r3, #1896]
	str	r3, [r7, #236]
	b	.L567
.L569:
	ldr	r3, [r7, #236]
	subs	r3, r3, #1
	ldr	r2, [r7, #220]
	add	r3, r3, #474
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	str	r3, [r7, #208]
	add	r3, r7, #8
	ldr	r0, [r7, #208]
	mov	r1, r3
	bl	cff_make_private_dict(PLT)
	ldr	r3, [r7, #228]
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2]
	ldr	r0, [r2, #100]
	ldr	r2, [r7, #236]
	subs	r2, r2, #1
	lsls	r2, r2, #2
	ldr	r1, [r7, #216]
	add	r2, r2, r1
	adds	r2, r2, #4
	add	r1, r7, #8
	blx	r3
	mov	r3, r0
	str	r3, [r7, #204]
	ldr	r3, [r7, #204]
	cmp	r3, #0
	beq	.L568
	nop
	b	.L570
.L568:
	ldr	r3, [r7, #236]
	subs	r3, r3, #1
	str	r3, [r7, #236]
.L567:
	ldr	r3, [r7, #236]
	cmp	r3, #0
	bne	.L569
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #216]
	str	r2, [r3, #40]
.L563:
	ldr	r3, [r7, #232]
	mov	r2, #-1
	str	r2, [r3, #44]
.L570:
	ldr	r3, [r7, #204]
	mov	r0, r3
	adds	r7, r7, #240
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cff_size_init, .-cff_size_init
	.section	.text.cff_size_select,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_size_select, %function
cff_size_select:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #68
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	ldr	r2, [r7]
	str	r2, [r3, #44]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r1, [r7]
	bl	FT_Select_Metrics(PLT)
	ldr	r0, [r7, #40]
	bl	cff_size_get_globals_funcs(PLT)
	str	r0, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L573
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #656]
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #1392]
	str	r3, [r7, #20]
	ldr	r3, [r7, #36]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #24]
	ldr	r1, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	movs	r0, #0
	str	r0, [sp]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	movs	r3, #0
	blx	r4
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #1896]
	str	r3, [r7, #52]
	b	.L574
.L577:
	ldr	r3, [r7, #52]
	subs	r3, r3, #1
	ldr	r2, [r7, #28]
	add	r3, r3, #474
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #68]
	str	r3, [r7, #12]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	beq	.L575
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	mov	r0, r3
	ldr	r1, [r7, #20]
	ldr	r2, [r7, #12]
	bl	FT_MulDiv(PLT)
	str	r0, [r7, #48]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	mov	r0, r3
	ldr	r1, [r7, #20]
	ldr	r2, [r7, #12]
	bl	FT_MulDiv(PLT)
	str	r0, [r7, #44]
	b	.L576
.L575:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	str	r3, [r7, #48]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	str	r3, [r7, #44]
.L576:
	ldr	r3, [r7, #36]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #52]
	subs	r3, r3, #1
	ldr	r2, [r7, #24]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	movs	r2, #0
	str	r2, [sp]
	mov	r0, r3
	ldr	r1, [r7, #48]
	ldr	r2, [r7, #44]
	movs	r3, #0
	blx	r4
	ldr	r3, [r7, #52]
	subs	r3, r3, #1
	str	r3, [r7, #52]
.L574:
	ldr	r3, [r7, #52]
	cmp	r3, #0
	bne	.L577
.L573:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #60
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	cff_size_select, .-cff_size_select
	.section	.text.cff_size_request,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_size_request, %function
cff_size_request:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #76
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	str	r3, [r7, #48]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L580
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #532]
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #104]
	add	r2, r7, #8
	ldr	r0, [r7, #44]
	ldr	r1, [r7]
	blx	r3
	mov	r3, r0
	cmp	r3, #0
	beq	.L581
	ldr	r3, [r7, #48]
	mov	r2, #-1
	str	r2, [r3, #44]
	b	.L580
.L581:
	ldr	r3, [r7, #8]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	cff_size_select(PLT)
	mov	r3, r0
	b	.L582
.L580:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r1, [r7]
	bl	FT_Request_Metrics(PLT)
	ldr	r0, [r7, #48]
	bl	cff_size_get_globals_funcs(PLT)
	str	r0, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L583
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #656]
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #1392]
	str	r3, [r7, #20]
	ldr	r3, [r7, #36]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #24]
	ldr	r1, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	movs	r0, #0
	str	r0, [sp]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	movs	r3, #0
	blx	r4
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #1896]
	str	r3, [r7, #60]
	b	.L584
.L587:
	ldr	r3, [r7, #60]
	subs	r3, r3, #1
	ldr	r2, [r7, #28]
	add	r3, r3, #474
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #68]
	str	r3, [r7, #12]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	beq	.L585
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	mov	r0, r3
	ldr	r1, [r7, #20]
	ldr	r2, [r7, #12]
	bl	FT_MulDiv(PLT)
	str	r0, [r7, #56]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	mov	r0, r3
	ldr	r1, [r7, #20]
	ldr	r2, [r7, #12]
	bl	FT_MulDiv(PLT)
	str	r0, [r7, #52]
	b	.L586
.L585:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	str	r3, [r7, #56]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	str	r3, [r7, #52]
.L586:
	ldr	r3, [r7, #36]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #60]
	subs	r3, r3, #1
	ldr	r2, [r7, #24]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	movs	r2, #0
	str	r2, [sp]
	mov	r0, r3
	ldr	r1, [r7, #56]
	ldr	r2, [r7, #52]
	movs	r3, #0
	blx	r4
	ldr	r3, [r7, #60]
	subs	r3, r3, #1
	str	r3, [r7, #60]
.L584:
	ldr	r3, [r7, #60]
	cmp	r3, #0
	bne	.L587
.L583:
	movs	r3, #0
.L582:
	mov	r0, r3
	adds	r7, r7, #68
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	cff_size_request, .-cff_size_request
	.section	.text.cff_slot_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_slot_done, %function
cff_slot_done:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #156]
	movs	r2, #0
	str	r2, [r3, #36]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	cff_slot_done, .-cff_slot_done
	.section	.text.cff_slot_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_slot_init, %function
cff_slot_init:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #656]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #2952]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L590
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #96]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r3, .L592
.LPIC37:
	add	r3, pc
	mov	r1, r3
	bl	FT_Get_Module(PLT)
	str	r0, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L590
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #8]
	ldr	r0, [r7, #16]
	blx	r3
	str	r0, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #156]
	ldr	r2, [r7, #12]
	str	r2, [r3, #36]
.L590:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L593:
	.align	2
.L592:
	.word	.LC14-(.LPIC37+4)
	.size	cff_slot_init, .-cff_slot_init
	.section	.text.cff_strcpy,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_strcpy, %function
cff_strcpy:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	mov	r2, r3
	bl	ft_mem_strdup(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #8]
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cff_strcpy, .-cff_strcpy
	.section	.text.remove_subset_prefix,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	remove_subset_prefix, %function
remove_subset_prefix:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r0, [r7, #4]
	bl	strlen(PLT)
	mov	r3, r0
	adds	r3, r3, #1
	str	r3, [r7, #16]
	movs	r3, #1
	strb	r3, [r7, #15]
	b	.L597
.L606:
	ldr	r3, [r7, #16]
	cmp	r3, #6
	ble	.L598
	ldr	r3, [r7, #4]
	adds	r3, r3, #6
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #43
	bne	.L598
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L599
.L602:
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #64
	bls	.L600
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #90
	bls	.L601
.L600:
	movs	r3, #0
	strb	r3, [r7, #15]
.L601:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L599:
	ldr	r3, [r7, #20]
	cmp	r3, #5
	ble	.L602
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L603
	movs	r3, #7
	str	r3, [r7, #20]
	b	.L604
.L605:
	ldr	r3, [r7, #20]
	subs	r3, r3, #7
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldr	r2, [r7, #20]
	ldr	r1, [r7, #4]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L604:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	blt	.L605
	ldr	r3, [r7, #16]
	subs	r3, r3, #7
	str	r3, [r7, #16]
	b	.L597
.L603:
	b	.L597
.L598:
	movs	r3, #0
	strb	r3, [r7, #15]
.L597:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L606
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	remove_subset_prefix, .-remove_subset_prefix
	.section	.text.remove_style,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	remove_style, %function
remove_style:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	bl	strlen(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r0, [r7]
	bl	strlen(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	ble	.L607
	movs	r3, #1
	str	r3, [r7, #20]
	b	.L609
.L612:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #20]
	subs	r3, r2, r3
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r1, [r7, #12]
	ldr	r3, [r7, #20]
	subs	r3, r1, r3
	ldr	r1, [r7]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	beq	.L610
	b	.L611
.L610:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L609:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	ble	.L612
.L611:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	ble	.L607
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #12]
	subs	r3, r2, r3
	subs	r3, r3, #1
	str	r3, [r7, #20]
	b	.L613
.L615:
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	str	r3, [r7, #20]
.L613:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	ble	.L614
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #45
	beq	.L615
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L615
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #95
	beq	.L615
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #43
	beq	.L615
.L614:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	ble	.L607
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
.L607:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	remove_style, .-remove_style
	.section	.rodata
	.align	2
.LC15:
	.ascii	"Regular\000"
	.align	2
.LC16:
	.ascii	"Bold\000"
	.align	2
.LC17:
	.ascii	"Black\000"
	.section	.text.cff_face_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_face_init, %function
cff_face_init:
	@ args = 4, pretend = 0, frame = 176
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #184
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r4, .L684
.LPIC46:
	add	r4, pc
	ldr	r3, [r7, #8]
	str	r3, [r7, #136]
	movs	r3, #1
	strb	r3, [r7, #175]
	movs	r3, #0
	strb	r3, [r7, #174]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #96]
	ldr	r3, [r3, #4]
	str	r3, [r7, #132]
	ldr	r0, [r7, #132]
	ldr	r3, .L684+4
.LPIC38:
	add	r3, pc
	mov	r1, r3
	bl	FT_Get_Module_Interface(PLT)
	str	r0, [r7, #128]
	ldr	r3, [r7, #128]
	cmp	r3, #0
	bne	.L617
	movs	r3, #11
	str	r3, [r7, #32]
	b	.L618
.L617:
	ldr	r3, [r7, #136]
	ldr	r3, [r3, #96]
	str	r3, [r7, #124]
	ldr	r0, [r7, #124]
	ldr	r3, .L684+8
.LPIC39:
	add	r3, pc
	mov	r1, r3
	bl	ft_module_get_service(PLT)
	str	r0, [r7, #120]
	ldr	r3, [r7, #120]
	str	r3, [r7, #116]
	ldr	r0, [r7, #132]
	ldr	r3, .L684+12
.LPIC40:
	add	r3, pc
	mov	r1, r3
	bl	FT_Get_Module_Interface(PLT)
	str	r0, [r7, #112]
	ldr	r0, [r7, #12]
	movs	r1, #0
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L619
	b	.L618
.L619:
	ldr	r3, [r7, #128]
	ldr	r5, [r3, #4]
	ldr	r3, [r7, #192]
	str	r3, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #136]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	blx	r5
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bne	.L620
	ldr	r3, [r7, #136]
	ldr	r2, [r3, #148]
	movw	r3, #21583
	movt	r3, 20308
	cmp	r2, r3
	beq	.L621
	movs	r3, #2
	str	r3, [r7, #32]
	b	.L618
.L621:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bge	.L622
	movs	r3, #0
	b	.L683
.L622:
	movs	r3, #1
	strb	r3, [r7, #174]
	ldr	r3, [r7, #136]
	ldr	r5, [r3, #508]
	ldr	r0, [r7, #136]
	movw	r1, #24932
	movt	r1, 26725
	ldr	r2, [r7, #12]
	movs	r3, #0
	blx	r5
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bne	.L624
	movs	r3, #0
	strb	r3, [r7, #175]
	ldr	r3, [r7, #128]
	ldr	r5, [r3, #8]
	ldr	r3, [r7, #192]
	str	r3, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #136]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	blx	r5
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L625
	b	.L618
.L624:
	ldr	r3, [r7, #128]
	ldr	r3, [r3, #32]
	ldr	r0, [r7, #136]
	ldr	r1, [r7, #12]
	blx	r3
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L625
	b	.L618
.L625:
	ldr	r3, [r7, #136]
	ldr	r5, [r3, #508]
	ldr	r0, [r7, #136]
	movw	r1, #17952
	movt	r1, 17222
	ldr	r2, [r7, #12]
	movs	r3, #0
	blx	r5
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L626
	b	.L618
.L620:
	ldr	r0, [r7, #12]
	movs	r1, #0
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L627
	b	.L618
.L627:
	movs	r3, #0
	str	r3, [r7, #32]
.L626:
	movs	r3, #0
	str	r3, [r7, #108]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #100]
	str	r3, [r7, #104]
	add	r3, r7, #32
	ldr	r0, [r7, #104]
	movw	r1, #2980
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	str	r0, [r7, #108]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L628
	b	.L618
.L628:
	ldr	r3, [r7, #136]
	ldr	r2, [r7, #108]
	str	r2, [r3, #656]
	ldrb	r3, [r7, #175]	@ zero_extendqisi2
	str	r3, [sp]
	ldr	r0, [r7, #132]
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #108]
	bl	cff_font_load(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L629
	b	.L618
.L629:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bge	.L630
	movs	r3, #0
	b	.L683
.L630:
	ldr	r3, [r7, #108]
	ldr	r2, [r7, #112]
	str	r2, [r3, #2952]
	ldr	r3, [r7, #108]
	ldr	r2, [r7, #116]
	str	r2, [r3, #2956]
	ldr	r3, [r7, #4]
	uxth	r2, r3
	ldr	r3, [r7, #8]
	str	r2, [r3, #4]
	ldr	r3, [r7, #108]
	ldr	r3, [r3, #12]
	mov	r2, r3
	ldr	r3, [r7, #8]
	str	r2, [r3, #16]
	ldr	r3, [r7, #108]
	addw	r3, r3, #1324
	str	r3, [r7, #100]
	ldr	r3, [r7, #100]
	ldr	r2, [r3, #132]
	movw	r3, #65535
	cmp	r2, r3
	bne	.L631
	ldr	r3, [r7, #116]
	cmp	r3, #0
	bne	.L631
	movs	r3, #11
	str	r3, [r7, #32]
	b	.L618
.L631:
	ldr	r3, [r7, #100]
	ldrb	r3, [r3, #64]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L632
	ldrb	r3, [r7, #175]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L633
	ldr	r3, [r7, #136]
	ldrh	r3, [r3, #68]
	b	.L634
.L633:
	mov	r3, #1000
.L634:
	ldr	r2, [r7, #100]
	str	r3, [r2, #68]
.L632:
	ldr	r3, [r7, #100]
	adds	r3, r3, #48
	str	r3, [r7, #96]
	ldr	r3, [r7, #100]
	adds	r3, r3, #72
	str	r3, [r7, #92]
	ldr	r3, [r7, #100]
	adds	r3, r3, #68
	str	r3, [r7, #88]
	ldr	r3, [r7, #96]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	str	r3, [r7, #84]
	ldr	r3, [r7, #84]
	cmp	r3, #65536
	beq	.L635
	ldr	r3, [r7, #88]
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r1, [r7, #84]
	bl	FT_DivFix(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #88]
	str	r2, [r3]
	ldr	r3, [r7, #96]
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r1, [r7, #84]
	bl	FT_DivFix(PLT)
	mov	r2, r0
	ldr	r3, [r7, #96]
	str	r2, [r3]
	ldr	r3, [r7, #96]
	ldr	r3, [r3, #8]
	mov	r0, r3
	ldr	r1, [r7, #84]
	bl	FT_DivFix(PLT)
	mov	r2, r0
	ldr	r3, [r7, #96]
	str	r2, [r3, #8]
	ldr	r3, [r7, #96]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r1, [r7, #84]
	bl	FT_DivFix(PLT)
	mov	r2, r0
	ldr	r3, [r7, #96]
	str	r2, [r3, #4]
	ldr	r3, [r7, #96]
	ldr	r3, [r3, #12]
	mov	r0, r3
	ldr	r1, [r7, #84]
	bl	FT_DivFix(PLT)
	mov	r2, r0
	ldr	r3, [r7, #96]
	str	r2, [r3, #12]
	ldr	r3, [r7, #92]
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r1, [r7, #84]
	bl	FT_DivFix(PLT)
	mov	r2, r0
	ldr	r3, [r7, #92]
	str	r2, [r3]
	ldr	r3, [r7, #92]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r1, [r7, #84]
	bl	FT_DivFix(PLT)
	mov	r2, r0
	ldr	r3, [r7, #92]
	str	r2, [r3, #4]
.L635:
	ldr	r3, [r7, #92]
	ldr	r3, [r3]
	asrs	r2, r3, #16
	ldr	r3, [r7, #92]
	str	r2, [r3]
	ldr	r3, [r7, #92]
	ldr	r3, [r3, #4]
	asrs	r2, r3, #16
	ldr	r3, [r7, #92]
	str	r2, [r3, #4]
	ldr	r3, [r7, #108]
	ldr	r3, [r3, #1896]
	str	r3, [r7, #164]
	b	.L636
.L643:
	ldr	r3, [r7, #164]
	subs	r3, r3, #1
	ldr	r2, [r7, #108]
	add	r3, r3, #474
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	str	r3, [r7, #80]
	ldr	r3, [r7, #108]
	addw	r3, r3, #1324
	str	r3, [r7, #76]
	ldr	r3, [r7, #80]
	ldrb	r3, [r3, #64]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L637
	ldr	r3, [r7, #76]
	ldrb	r3, [r3, #64]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L638
	ldr	r3, [r7, #76]
	ldr	r3, [r3, #68]
	cmp	r3, #1
	bls	.L639
	ldr	r3, [r7, #80]
	ldr	r3, [r3, #68]
	cmp	r3, #1
	bls	.L639
	ldr	r3, [r7, #80]
	ldr	r2, [r3, #68]
	ldr	r3, [r7, #76]
	ldr	r3, [r3, #68]
	cmp	r3, r2
	it	cs
	movcs	r3, r2
	str	r3, [r7, #160]
	b	.L640
.L639:
	movs	r3, #1
	str	r3, [r7, #160]
.L640:
	ldr	r3, [r7, #76]
	add	r2, r3, #48
	ldr	r3, [r7, #80]
	adds	r3, r3, #48
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #160]
	bl	FT_Matrix_Multiply_Scaled(PLT)
	ldr	r3, [r7, #80]
	add	r2, r3, #72
	ldr	r3, [r7, #76]
	adds	r3, r3, #48
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #160]
	bl	FT_Vector_Transform_Scaled(PLT)
	ldr	r3, [r7, #80]
	ldr	r3, [r3, #68]
	mov	r2, r3
	ldr	r3, [r7, #76]
	ldr	r3, [r3, #68]
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #160]
	bl	FT_MulDiv(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #80]
	str	r2, [r3, #68]
	b	.L641
.L638:
	b	.L641
.L637:
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #76]
	add	r5, r2, #48
	adds	r3, r3, #48
	ldmia	r3, {r0, r1, r2, r3}
	stmia	r5, {r0, r1, r2, r3}
	ldr	r3, [r7, #80]
	ldr	r2, [r7, #76]
	adds	r3, r3, #72
	adds	r2, r2, #72
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #76]
	ldr	r2, [r3, #68]
	ldr	r3, [r7, #80]
	str	r2, [r3, #68]
.L641:
	ldr	r3, [r7, #80]
	adds	r3, r3, #48
	str	r3, [r7, #72]
	ldr	r3, [r7, #80]
	adds	r3, r3, #72
	str	r3, [r7, #68]
	ldr	r3, [r7, #80]
	adds	r3, r3, #68
	str	r3, [r7, #64]
	ldr	r3, [r7, #72]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	cmp	r3, #65536
	beq	.L642
	ldr	r3, [r7, #64]
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r1, [r7, #60]
	bl	FT_DivFix(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #64]
	str	r2, [r3]
	ldr	r3, [r7, #72]
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r1, [r7, #60]
	bl	FT_DivFix(PLT)
	mov	r2, r0
	ldr	r3, [r7, #72]
	str	r2, [r3]
	ldr	r3, [r7, #72]
	ldr	r3, [r3, #8]
	mov	r0, r3
	ldr	r1, [r7, #60]
	bl	FT_DivFix(PLT)
	mov	r2, r0
	ldr	r3, [r7, #72]
	str	r2, [r3, #8]
	ldr	r3, [r7, #72]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r1, [r7, #60]
	bl	FT_DivFix(PLT)
	mov	r2, r0
	ldr	r3, [r7, #72]
	str	r2, [r3, #4]
	ldr	r3, [r7, #72]
	ldr	r3, [r3, #12]
	mov	r0, r3
	ldr	r1, [r7, #60]
	bl	FT_DivFix(PLT)
	mov	r2, r0
	ldr	r3, [r7, #72]
	str	r2, [r3, #12]
	ldr	r3, [r7, #68]
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r1, [r7, #60]
	bl	FT_DivFix(PLT)
	mov	r2, r0
	ldr	r3, [r7, #68]
	str	r2, [r3]
	ldr	r3, [r7, #68]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r1, [r7, #60]
	bl	FT_DivFix(PLT)
	mov	r2, r0
	ldr	r3, [r7, #68]
	str	r2, [r3, #4]
.L642:
	ldr	r3, [r7, #68]
	ldr	r3, [r3]
	asrs	r2, r3, #16
	ldr	r3, [r7, #68]
	str	r2, [r3]
	ldr	r3, [r7, #68]
	ldr	r3, [r3, #4]
	asrs	r2, r3, #16
	ldr	r3, [r7, #68]
	str	r2, [r3, #4]
	ldr	r3, [r7, #164]
	subs	r3, r3, #1
	str	r3, [r7, #164]
.L636:
	ldr	r3, [r7, #164]
	cmp	r3, #0
	bne	.L643
	ldrb	r3, [r7, #175]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L644
	movs	r3, #0
	str	r3, [r7, #156]
	ldr	r3, [r7, #108]
	ldr	r3, [r3, #8]
	mov	r2, r3
	ldr	r3, [r7, #8]
	str	r2, [r3]
	ldr	r3, [r7, #100]
	ldr	r2, [r3, #132]
	movw	r3, #65535
	cmp	r2, r3
	beq	.L645
	ldr	r3, [r7, #108]
	ldr	r3, [r3, #1168]
	adds	r3, r3, #1
	mov	r2, r3
	ldr	r3, [r7, #8]
	str	r2, [r3, #16]
	b	.L646
.L645:
	ldr	r3, [r7, #108]
	ldr	r3, [r3, #1184]
	mov	r2, r3
	ldr	r3, [r7, #8]
	str	r2, [r3, #16]
.L646:
	ldr	r3, [r7, #100]
	ldr	r3, [r3, #84]
	asrs	r2, r3, #16
	ldr	r3, [r7, #8]
	str	r2, [r3, #52]
	ldr	r3, [r7, #100]
	ldr	r3, [r3, #88]
	asrs	r2, r3, #16
	ldr	r3, [r7, #8]
	str	r2, [r3, #56]
	ldr	r3, [r7, #100]
	ldr	r3, [r3, #92]
	add	r3, r3, #65280
	adds	r3, r3, #255
	asrs	r2, r3, #16
	ldr	r3, [r7, #8]
	str	r2, [r3, #60]
	ldr	r3, [r7, #100]
	ldr	r3, [r3, #96]
	add	r3, r3, #65280
	adds	r3, r3, #255
	asrs	r2, r3, #16
	ldr	r3, [r7, #8]
	str	r2, [r3, #64]
	ldr	r3, [r7, #100]
	ldr	r3, [r3, #68]
	uxth	r2, r3
	ldr	r3, [r7, #8]
	strh	r2, [r3, #68]	@ movhi
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #64]
	uxth	r2, r3
	ldr	r3, [r7, #8]
	strh	r2, [r3, #70]	@ movhi
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #56]
	uxth	r2, r3
	ldr	r3, [r7, #8]
	strh	r2, [r3, #72]	@ movhi
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #68]
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, r3
	movw	r3, #26215
	movt	r3, 26214
	smull	r1, r3, r3, r2
	asrs	r1, r3, #2
	asrs	r3, r2, #31
	subs	r3, r1, r3
	uxth	r2, r3
	ldr	r3, [r7, #8]
	strh	r2, [r3, #74]	@ movhi
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #74]
	sxth	r2, r3
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #70]
	sxth	r1, r3
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #72]
	sxth	r3, r3
	subs	r3, r1, r3
	cmp	r2, r3
	bge	.L647
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #70]
	uxth	r2, r3
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #72]
	uxth	r3, r3
	subs	r3, r2, r3
	uxth	r3, r3
	uxth	r2, r3
	ldr	r3, [r7, #8]
	strh	r2, [r3, #74]	@ movhi
.L647:
	ldr	r3, [r7, #100]
	ldr	r3, [r3, #32]
	asrs	r3, r3, #16
	uxth	r2, r3
	ldr	r3, [r7, #8]
	strh	r2, [r3, #80]	@ movhi
	ldr	r3, [r7, #100]
	ldr	r3, [r3, #36]
	asrs	r3, r3, #16
	uxth	r2, r3
	ldr	r3, [r7, #8]
	strh	r2, [r3, #82]	@ movhi
	ldr	r3, [r7, #4]
	uxth	r3, r3
	ldr	r0, [r7, #108]
	mov	r1, r3
	bl	cff_index_get_name(PLT)
	mov	r2, r0
	ldr	r3, [r7, #8]
	str	r2, [r3, #20]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L648
	ldr	r3, [r7, #100]
	ldr	r3, [r3, #12]
	ldr	r0, [r7, #108]
	mov	r1, r3
	bl	cff_index_get_sid_string(PLT)
	str	r0, [r7, #56]
	ldr	r3, [r7, #56]
	str	r3, [r7, #152]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #20]
	str	r3, [r7, #148]
	movs	r3, #0
	str	r3, [r7, #52]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #20]
	mov	r0, r3
	bl	remove_subset_prefix(PLT)
	ldr	r3, [r7, #100]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L649
	ldr	r3, [r7, #100]
	ldr	r3, [r3, #16]
	ldr	r0, [r7, #108]
	mov	r1, r3
	bl	cff_index_get_sid_string(PLT)
	str	r0, [r7, #52]
	ldr	r3, [r7, #52]
	cmp	r3, #0
	beq	.L649
	ldr	r3, [r7, #52]
	str	r3, [r7, #148]
.L649:
	ldr	r3, [r7, #56]
	cmp	r3, #0
	beq	.L650
	ldr	r3, [r7, #148]
	cmp	r3, #0
	beq	.L650
	b	.L651
.L658:
	ldr	r3, [r7, #152]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #148]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L652
	ldr	r3, [r7, #148]
	adds	r3, r3, #1
	str	r3, [r7, #148]
	ldr	r3, [r7, #152]
	adds	r3, r3, #1
	str	r3, [r7, #152]
	b	.L651
.L652:
	ldr	r3, [r7, #152]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L653
	ldr	r3, [r7, #152]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #45
	bne	.L654
.L653:
	ldr	r3, [r7, #152]
	adds	r3, r3, #1
	str	r3, [r7, #152]
	b	.L651
.L654:
	ldr	r3, [r7, #148]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L655
	ldr	r3, [r7, #148]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #45
	bne	.L656
.L655:
	ldr	r3, [r7, #148]
	adds	r3, r3, #1
	str	r3, [r7, #148]
	b	.L651
.L656:
	ldr	r3, [r7, #148]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L657
	ldr	r3, [r7, #152]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L657
	ldr	r0, [r7, #104]
	ldr	r1, [r7, #152]
	bl	cff_strcpy(PLT)
	str	r0, [r7, #156]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #20]
	mov	r0, r3
	ldr	r1, [r7, #156]
	bl	remove_style(PLT)
	b	.L650
.L657:
	b	.L650
.L651:
	ldr	r3, [r7, #152]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L658
.L650:
	b	.L659
.L648:
	ldr	r3, [r7, #100]
	ldr	r3, [r3, #172]
	ldr	r0, [r7, #108]
	mov	r1, r3
	bl	cff_index_get_sid_string(PLT)
	str	r0, [r7, #48]
	ldr	r3, [r7, #48]
	cmp	r3, #0
	beq	.L659
	ldr	r0, [r7, #104]
	ldr	r1, [r7, #48]
	bl	cff_strcpy(PLT)
	mov	r2, r0
	ldr	r3, [r7, #8]
	str	r2, [r3, #20]
.L659:
	ldr	r3, [r7, #156]
	cmp	r3, #0
	beq	.L660
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #156]
	str	r2, [r3, #24]
	b	.L661
.L660:
	ldr	r0, [r7, #104]
	ldr	r3, .L684+16
.LPIC41:
	add	r3, pc
	mov	r1, r3
	bl	cff_strcpy(PLT)
	mov	r2, r0
	ldr	r3, [r7, #8]
	str	r2, [r3, #24]
.L661:
	movw	r3, #2065
	str	r3, [r7, #168]
	ldrb	r3, [r7, #174]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L662
	ldr	r3, [r7, #168]
	orr	r3, r3, #8
	str	r3, [r7, #168]
.L662:
	ldr	r3, [r7, #100]
	ldrb	r3, [r3, #24]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L663
	ldr	r3, [r7, #168]
	orr	r3, r3, #4
	str	r3, [r7, #168]
.L663:
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #168]
	orrs	r2, r2, r3
	ldr	r3, [r7, #8]
	str	r2, [r3, #8]
	movs	r3, #0
	str	r3, [r7, #168]
	ldr	r3, [r7, #100]
	ldr	r3, [r3, #28]
	cmp	r3, #0
	beq	.L664
	ldr	r3, [r7, #168]
	orr	r3, r3, #1
	str	r3, [r7, #168]
.L664:
	ldr	r3, [r7, #100]
	ldr	r3, [r3, #20]
	ldr	r0, [r7, #108]
	mov	r1, r3
	bl	cff_index_get_sid_string(PLT)
	str	r0, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L665
	ldr	r0, [r7, #44]
	ldr	r3, .L684+20
.LPIC42:
	add	r3, pc
	mov	r1, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L666
	ldr	r0, [r7, #44]
	ldr	r3, .L684+24
.LPIC43:
	add	r3, pc
	mov	r1, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L665
.L666:
	ldr	r3, [r7, #168]
	orr	r3, r3, #2
	str	r3, [r7, #168]
.L665:
	ldr	r3, [r7, #168]
	and	r3, r3, #2
	cmp	r3, #0
	bne	.L667
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L667
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #24]
	mov	r0, r3
	ldr	r3, .L684+28
.LPIC44:
	add	r3, pc
	mov	r1, r3
	movs	r2, #4
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L668
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #24]
	mov	r0, r3
	ldr	r3, .L684+32
.LPIC45:
	add	r3, pc
	mov	r1, r3
	movs	r2, #5
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L667
.L668:
	ldr	r3, [r7, #168]
	orr	r3, r3, #2
	str	r3, [r7, #168]
.L667:
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #168]
	str	r2, [r3, #12]
.L644:
	ldr	r3, [r7, #100]
	ldr	r2, [r3, #132]
	movw	r3, #65535
	cmp	r2, r3
	bne	.L669
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	orr	r2, r3, #512
	ldr	r3, [r7, #8]
	str	r2, [r3, #8]
.L669:
	ldr	r3, [r7, #100]
	ldr	r2, [r3, #132]
	movw	r3, #65535
	cmp	r2, r3
	beq	.L670
	ldrb	r3, [r7, #175]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L670
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	orr	r2, r3, #4096
	ldr	r3, [r7, #8]
	str	r2, [r3, #8]
.L670:
	ldr	r3, [r7, #108]
	adds	r3, r3, #116
	str	r3, [r7, #40]
	movs	r3, #0
	str	r3, [r7, #144]
	b	.L671
.L675:
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #144]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	ldrh	r3, [r3, #8]
	cmp	r3, #3
	bne	.L672
	ldr	r3, [r7, #36]
	ldrh	r3, [r3, #10]
	cmp	r3, #1
	bne	.L672
	b	.L673
.L672:
	ldr	r3, [r7, #36]
	ldrh	r3, [r3, #8]
	cmp	r3, #0
	bne	.L674
	b	.L673
.L674:
	ldr	r3, [r7, #144]
	adds	r3, r3, #1
	str	r3, [r7, #144]
.L671:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #36]
	mov	r2, r3
	ldr	r3, [r7, #144]
	cmp	r2, r3
	bhi	.L675
	ldrb	r3, [r7, #175]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L676
	ldr	r3, [r7, #108]
	ldr	r2, [r3, #1456]
	movw	r3, #65535
	cmp	r2, r3
	beq	.L676
	b	.L618
.L676:
	ldr	r3, [r7, #8]
	str	r3, [r7, #20]
	movs	r3, #3
	strh	r3, [r7, #28]	@ movhi
	movs	r3, #1
	strh	r3, [r7, #30]	@ movhi
	movw	r3, #26979
	movt	r3, 30062
	str	r3, [r7, #24]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #36]
	str	r3, [r7, #144]
	add	r3, r7, #20
	ldr	r2, .L684+36
	ldr	r2, [r4, r2]
	mov	r0, r2
	movs	r1, #0
	mov	r2, r3
	movs	r3, #0
	bl	FT_CMap_New(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L678
	ldr	r3, [r7, #32]
	uxtb	r3, r3
	cmp	r3, #163
	beq	.L678
	b	.L618
.L678:
	movs	r3, #0
	str	r3, [r7, #32]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #92]
	cmp	r3, #0
	bne	.L673
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #36]
	mov	r2, r3
	ldr	r3, [r7, #144]
	cmp	r2, r3
	beq	.L673
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #144]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	str	r2, [r3, #92]
.L673:
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L618
	ldr	r3, [r7, #8]
	str	r3, [r7, #20]
	movs	r3, #7
	strh	r3, [r7, #28]	@ movhi
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L680
	movs	r3, #0
	strh	r3, [r7, #30]	@ movhi
	movw	r3, #20290
	movt	r3, 16708
	str	r3, [r7, #24]
	ldr	r3, .L684+40
	ldr	r3, [r4, r3]
	str	r3, [r7, #140]
	b	.L681
.L680:
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.L682
	movs	r3, #1
	strh	r3, [r7, #30]	@ movhi
	movw	r3, #16965
	movt	r3, 16708
	str	r3, [r7, #24]
	ldr	r3, .L684+40
	ldr	r3, [r4, r3]
	str	r3, [r7, #140]
	b	.L681
.L682:
	movs	r3, #2
	strh	r3, [r7, #30]	@ movhi
	movw	r3, #16963
	movt	r3, 16708
	str	r3, [r7, #24]
	ldr	r3, .L684+40
	ldr	r3, [r4, r3]
	str	r3, [r7, #140]
.L681:
	add	r3, r7, #20
	ldr	r0, [r7, #140]
	movs	r1, #0
	mov	r2, r3
	movs	r3, #0
	bl	FT_CMap_New(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
.L618:
	ldr	r3, [r7, #32]
.L683:
	mov	r0, r3
	adds	r7, r7, #176
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L685:
	.align	2
.L684:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC46+4)
	.word	.LC1-(.LPIC38+4)
	.word	.LC0-(.LPIC39+4)
	.word	.LC14-(.LPIC40+4)
	.word	.LC15-(.LPIC41+4)
	.word	.LC16-(.LPIC42+4)
	.word	.LC17-(.LPIC43+4)
	.word	.LC16-(.LPIC44+4)
	.word	.LC17-(.LPIC45+4)
	.word	cff_cmap_unicode_class_rec(GOT)
	.word	cff_cmap_encoding_class_rec(GOT)
	.size	cff_face_init, .-cff_face_init
	.section	.text.cff_face_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_face_done, %function
cff_face_done:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L687
	b	.L686
.L687:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #532]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L689
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	ldr	r0, [r7, #20]
	blx	r3
.L689:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #656]
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L686
	ldr	r0, [r7, #8]
	bl	cff_font_done(PLT)
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #656]
	ldr	r0, [r7, #16]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #656]
.L686:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cff_face_done, .-cff_face_done
	.section	.text.cff_driver_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_driver_init, %function
cff_driver_init:
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
	movs	r2, #1
	str	r2, [r3, #28]
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #32]
	ldr	r3, [r7, #12]
	mov	r2, #500
	str	r2, [r3, #36]
	ldr	r3, [r7, #12]
	mov	r2, #400
	str	r2, [r3, #40]
	ldr	r3, [r7, #12]
	mov	r2, #1000
	str	r2, [r3, #44]
	ldr	r3, [r7, #12]
	movw	r2, #275
	str	r2, [r3, #48]
	ldr	r3, [r7, #12]
	movw	r2, #1667
	str	r2, [r3, #52]
	ldr	r3, [r7, #12]
	movw	r2, #275
	str	r2, [r3, #56]
	ldr	r3, [r7, #12]
	movw	r2, #2333
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #64]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	cff_driver_init, .-cff_driver_init
	.section	.text.cff_driver_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_driver_done, %function
cff_driver_done:
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
	.size	cff_driver_done, .-cff_driver_done
	.section	.text.cff_builder_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_builder_init, %function
cff_builder_init:
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #64]
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #65]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	str	r2, [r3, #8]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #100]
	ldr	r3, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L694
	ldr	r3, [r7]
	ldr	r3, [r3, #156]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #20]
	str	r2, [r3, #12]
	ldr	r3, [r7, #20]
	add	r2, r3, #20
	ldr	r3, [r7, #12]
	str	r2, [r3, #16]
	ldr	r3, [r7, #20]
	add	r2, r3, #56
	ldr	r3, [r7, #12]
	str	r2, [r3, #20]
	ldr	r0, [r7, #20]
	bl	FT_GlyphLoader_Rewind(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #68]
	ldrb	r3, [r7, #32]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L694
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L694
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	str	r2, [r3, #72]
	ldr	r3, [r7]
	ldr	r3, [r3, #156]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #12]
	str	r2, [r3, #68]
.L694:
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #28]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #32]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #36]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #40]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #44]
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cff_builder_init, .-cff_builder_init
	.section	.text.cff_builder_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_builder_done, %function
cff_builder_done:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L695
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r2, [r7, #12]
	add	r4, r2, #108
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
.L695:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7}
	bx	lr
	.size	cff_builder_done, .-cff_builder_done
	.section	.text.cff_compute_bias,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_compute_bias, %function
cff_compute_bias:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #1
	bne	.L698
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L699
.L698:
	ldr	r3, [r7]
	cmp	r3, #1240
	bcs	.L700
	movs	r3, #107
	str	r3, [r7, #12]
	b	.L699
.L700:
	ldr	r2, [r7]
	movw	r3, #33899
	cmp	r2, r3
	bhi	.L701
	movw	r3, #1131
	str	r3, [r7, #12]
	b	.L699
.L701:
	mov	r3, #32768
	str	r3, [r7, #12]
.L699:
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	cff_compute_bias, .-cff_compute_bias
	.section	.text.cff_decoder_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_decoder_init, %function
cff_decoder_init:
	@ args = 8, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #656]
	str	r3, [r7, #20]
	ldr	r0, [r7, #12]
	movs	r1, #0
	mov	r2, #740
	bl	memset(PLT)
	ldr	r3, [r7, #12]
	ldrb	r2, [r7, #32]	@ zero_extendqisi2
	str	r2, [sp]
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	cff_builder_init(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #20]
	str	r2, [r3, #76]
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #92]
	ldr	r3, [r7, #12]
	str	r2, [r3, #700]
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #1308]
	ldr	r3, [r7, #12]
	str	r2, [r3, #716]
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #1368]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #700]
	mov	r0, r2
	mov	r1, r3
	bl	cff_compute_bias(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #708]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #36]
	str	r2, [r3, #728]
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cff_decoder_init, .-cff_decoder_init
	.section	.text.cff_decoder_prepare,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_decoder_prepare, %function
cff_decoder_prepare:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #656]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	addw	r3, r3, #1324
	str	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #32]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #1896]
	cmp	r3, #0
	beq	.L705
	ldr	r3, [r7, #24]
	addw	r3, r3, #2924
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	cff_fd_select_get(PLT)
	mov	r3, r0
	strb	r3, [r7, #23]
	ldrb	r2, [r7, #23]	@ zero_extendqisi2
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #1896]
	cmp	r2, r3
	bcc	.L706
	movs	r3, #3
	str	r3, [r7, #32]
	b	.L707
.L706:
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	ldr	r2, [r7, #24]
	add	r3, r3, #474
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	str	r3, [r7, #36]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #68]
	cmp	r3, #0
	beq	.L705
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L705
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #40]
	str	r3, [r7, #16]
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	ldr	r2, [r7, #16]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #28]
	str	r2, [r3, #72]
.L705:
	ldr	r3, [r7, #36]
	ldr	r2, [r3, #544]
	ldr	r3, [r7, #12]
	str	r2, [r3, #696]
	ldr	r3, [r7, #36]
	ldr	r2, [r3, #568]
	ldr	r3, [r7, #12]
	str	r2, [r3, #712]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #76]
	ldr	r2, [r3, #1368]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #696]
	mov	r0, r2
	mov	r1, r3
	bl	cff_compute_bias(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #704]
	ldr	r3, [r7, #36]
	ldr	r2, [r3, #528]
	ldr	r3, [r7, #12]
	str	r2, [r3, #552]
	ldr	r3, [r7, #36]
	ldr	r2, [r3, #532]
	ldr	r3, [r7, #12]
	str	r2, [r3, #556]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #36]
	str	r2, [r3, #736]
.L707:
	ldr	r3, [r7, #32]
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cff_decoder_prepare, .-cff_decoder_prepare
	.section	.text.cff_check_points,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_check_points, %function
cff_check_points:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L710
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldrh	r3, [r3, #22]
	sxth	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldrh	r3, [r3, #58]
	sxth	r3, r3
	add	r2, r2, r3
	ldr	r3, [r7]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bls	.L710
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	mov	r0, r2
	mov	r1, r3
	movs	r2, #0
	bl	FT_GlyphLoader_CheckPoints(PLT)
	mov	r3, r0
	b	.L711
.L710:
	movs	r3, #0
.L711:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cff_check_points, .-cff_check_points
	.section	.text.cff_builder_add_point,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_builder_add_point, %function
cff_builder_add_point:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	strb	r3, [r7, #3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #20]
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #65]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L714
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #28]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #28]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #8]
	asrs	r2, r3, #10
	ldr	r3, [r7, #24]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	asrs	r2, r3, #10
	ldr	r3, [r7, #24]
	str	r2, [r3, #4]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L715
	movs	r3, #1
	b	.L716
.L715:
	movs	r3, #2
.L716:
	ldr	r2, [r7, #20]
	strb	r3, [r2]
.L714:
	ldr	r3, [r7, #28]
	ldrh	r3, [r3, #2]
	uxth	r3, r3
	adds	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #28]
	strh	r2, [r3, #2]	@ movhi
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	cff_builder_add_point, .-cff_builder_add_point
	.section	.text.cff_builder_add_point1,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_builder_add_point1, %function
cff_builder_add_point1:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r0, [r7, #12]
	movs	r1, #1
	bl	cff_check_points(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L718
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	movs	r3, #1
	bl	cff_builder_add_point(PLT)
.L718:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cff_builder_add_point1, .-cff_builder_add_point1
	.section	.text.cff_builder_add_contour,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_builder_add_contour, %function
cff_builder_add_contour:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #65]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L721
	ldr	r3, [r7, #12]
	ldrh	r3, [r3]
	uxth	r3, r3
	adds	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #12]
	strh	r2, [r3]	@ movhi
	movs	r3, #0
	b	.L722
.L721:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldrh	r3, [r3, #20]
	sxth	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldrh	r3, [r3, #56]
	sxth	r3, r3
	add	r3, r3, r2
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	bls	.L723
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mov	r0, r3
	movs	r1, #0
	movs	r2, #1
	bl	FT_GlyphLoader_CheckPoints(PLT)
	mov	r3, r0
	b	.L724
.L723:
	movs	r3, #0
.L724:
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L725
	ldr	r3, [r7, #12]
	ldrh	r3, [r3]
	sxth	r3, r3
	cmp	r3, #0
	ble	.L726
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3]
	sxth	r3, r3
	add	r3, r3, #-2147483648
	subs	r3, r3, #1
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldr	r2, [r7, #12]
	ldrh	r2, [r2, #2]
	uxth	r2, r2
	subs	r2, r2, #1
	uxth	r2, r2
	uxth	r2, r2
	strh	r2, [r3]	@ movhi
.L726:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3]
	uxth	r3, r3
	adds	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #12]
	strh	r2, [r3]	@ movhi
.L725:
	ldr	r3, [r7, #8]
.L722:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cff_builder_add_contour, .-cff_builder_add_contour
	.section	.text.cff_builder_start_point,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_builder_start_point, %function
cff_builder_start_point:
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
	ldrb	r3, [r3, #64]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L728
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #64]
	ldr	r0, [r7, #12]
	bl	cff_builder_add_contour(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L728
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	cff_builder_add_point1(PLT)
	str	r0, [r7, #20]
.L728:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cff_builder_start_point, .-cff_builder_start_point
	.section	.text.cff_builder_close_contour,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_builder_close_contour, %function
cff_builder_close_contour:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L731
	b	.L730
.L731:
	ldr	r3, [r7, #28]
	ldrh	r3, [r3]
	sxth	r3, r3
	cmp	r3, #1
	ble	.L733
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #28]
	ldrh	r3, [r3]
	sxth	r3, r3
	add	r3, r3, #-2147483648
	subs	r3, r3, #2
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r3, [r3]
	sxth	r3, r3
	adds	r3, r3, #1
	b	.L734
.L733:
	movs	r3, #0
.L734:
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	cmp	r3, #1
	ble	.L735
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #24]
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #28]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	add	r3, r3, #536870912
	subs	r3, r3, #1
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #28]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	subs	r3, r3, #1
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L735
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bne	.L735
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L735
	ldr	r3, [r7, #28]
	ldrh	r3, [r3, #2]
	uxth	r3, r3
	subs	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #28]
	strh	r2, [r3, #2]	@ movhi
.L735:
	ldr	r3, [r7, #28]
	ldrh	r3, [r3]
	sxth	r3, r3
	cmp	r3, #0
	ble	.L730
	ldr	r3, [r7, #28]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	subs	r2, r3, #1
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bne	.L736
	ldr	r3, [r7, #28]
	ldrh	r3, [r3]
	uxth	r3, r3
	subs	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #28]
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #28]
	ldrh	r3, [r3, #2]
	uxth	r3, r3
	subs	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #28]
	strh	r2, [r3, #2]	@ movhi
	b	.L730
.L736:
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #28]
	ldrh	r3, [r3]
	sxth	r3, r3
	add	r3, r3, #-2147483648
	subs	r3, r3, #1
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldr	r2, [r7, #28]
	ldrh	r2, [r2, #2]
	uxth	r2, r2
	subs	r2, r2, #1
	uxth	r2, r2
	uxth	r2, r2
	strh	r2, [r3]	@ movhi
.L730:
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	cff_builder_close_contour, .-cff_builder_close_contour
	.section	.text.cff_lookup_glyph_by_stdcharcode,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_lookup_glyph_by_stdcharcode, %function
cff_lookup_glyph_by_stdcharcode:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1160]
	cmp	r3, #0
	bne	.L738
	mov	r3, #-1
	b	.L739
.L738:
	ldr	r3, [r7]
	cmp	r3, #0
	blt	.L740
	ldr	r3, [r7]
	cmp	r3, #255
	ble	.L741
.L740:
	mov	r3, #-1
	b	.L739
.L741:
	ldr	r3, [r7]
	mov	r0, r3
	bl	cff_get_standard_encoding(PLT)
	mov	r3, r0
	strh	r3, [r7, #10]	@ movhi
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L742
.L744:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #1160]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r3, [r3]
	ldrh	r2, [r7, #10]
	cmp	r2, r3
	bne	.L743
	ldr	r3, [r7, #12]
	b	.L739
.L743:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L742:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bhi	.L744
	mov	r3, #-1
.L739:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cff_lookup_glyph_by_stdcharcode, .-cff_lookup_glyph_by_stdcharcode
	.section	.text.cff_get_glyph_data,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_get_glyph_data, %function
cff_get_glyph_data:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #128]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L746
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #128]
	ldr	r3, [r3, #48]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #128]
	ldr	r2, [r2, #48]
	ldr	r1, [r2, #4]
	add	r2, r7, #16
	mov	r0, r1
	ldr	r1, [r7, #8]
	blx	r3
	str	r0, [r7, #28]
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #20]
	mov	r2, r3
	ldr	r3, [r7]
	str	r2, [r3]
	ldr	r3, [r7, #28]
	b	.L747
.L746:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #656]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	add	r3, r3, #1176
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	cff_index_access_element(PLT)
	mov	r3, r0
.L747:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cff_get_glyph_data, .-cff_get_glyph_data
	.section	.text.cff_free_glyph_data,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_free_glyph_data, %function
cff_free_glyph_data:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #128]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L749
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #128]
	ldr	r3, [r3, #48]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #128]
	ldr	r2, [r2, #48]
	ldr	r1, [r2, #4]
	add	r2, r7, #20
	mov	r0, r1
	mov	r1, r2
	blx	r3
	b	.L748
.L749:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #656]
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	add	r3, r3, #1176
	mov	r0, r3
	ldr	r1, [r7, #8]
	bl	cff_index_forget_element(PLT)
.L748:
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cff_free_glyph_data, .-cff_free_glyph_data
	.section	.text.cff_slot_load,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_slot_load, %function
cff_slot_load:
	@ args = 0, pretend = 0, frame = 928
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #944
	add	r7, sp, #16
	add	r4, r7, #12
	str	r0, [r4]
	add	r0, r7, #8
	str	r1, [r0]
	adds	r1, r7, #4
	str	r2, [r1]
	mov	r2, r7
	str	r3, [r2]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	str	r3, [r7, #908]
	ldr	r3, [r7, #908]
	ldr	r3, [r3, #656]
	str	r3, [r7, #904]
	movs	r3, #0
	strb	r3, [r7, #922]
	ldr	r3, [r7, #904]
	ldr	r2, [r3, #1456]
	movw	r3, #65535
	cmp	r2, r3
	beq	.L752
	ldr	r3, [r7, #904]
	ldr	r3, [r3, #1164]
	cmp	r3, #0
	beq	.L752
	adds	r3, r7, #4
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L753
	ldr	r3, [r7, #904]
	add	r2, r3, #1152
	adds	r4, r7, #4
	adds	r3, r7, #4
	mov	r0, r2
	ldr	r1, [r3]
	bl	cff_charset_cid_to_gindex(PLT)
	str	r0, [r4]
	adds	r3, r7, #4
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L753
	movs	r3, #6
	b	.L803
.L753:
	b	.L755
.L752:
	ldr	r3, [r7, #904]
	ldr	r2, [r3, #12]
	adds	r3, r7, #4
	ldr	r3, [r3]
	cmp	r2, r3
	bhi	.L755
	movs	r3, #6
	b	.L803
.L755:
	mov	r3, r7
	ldr	r3, [r3]
	and	r3, r3, #1024
	cmp	r3, #0
	beq	.L756
	mov	r3, r7
	mov	r2, r7
	ldr	r2, [r2]
	orr	r2, r2, #3
	str	r2, [r3]
.L756:
	add	r3, r7, #12
	ldr	r3, [r3]
	mov	r2, #65536
	str	r2, [r3, #164]
	add	r3, r7, #12
	ldr	r3, [r3]
	mov	r2, #65536
	str	r2, [r3, #168]
	add	r3, r7, #8
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L757
	add	r3, r7, #8
	ldr	r3, [r3]
	ldr	r2, [r3, #16]
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #164]
	add	r3, r7, #8
	ldr	r3, [r3]
	ldr	r2, [r3, #20]
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #168]
.L757:
	add	r3, r7, #8
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L758
	add	r3, r7, #8
	ldr	r3, [r3]
	ldr	r3, [r3]
	str	r3, [r7, #900]
	ldr	r3, [r7, #900]
	ldr	r3, [r3, #532]
	str	r3, [r7, #896]
	ldr	r3, [r7, #900]
	ldr	r3, [r3, #104]
	str	r3, [r7, #892]
	add	r3, r7, #8
	ldr	r3, [r3]
	ldr	r3, [r3, #44]
	cmp	r3, #-1
	beq	.L758
	ldr	r3, [r7, #896]
	ldr	r3, [r3, #96]
	cmp	r3, #0
	beq	.L758
	mov	r3, r7
	ldr	r3, [r3]
	and	r3, r3, #8
	cmp	r3, #0
	bne	.L758
	ldr	r3, [r7, #896]
	ldr	r4, [r3, #72]
	add	r3, r7, #8
	ldr	r3, [r3]
	ldr	r1, [r3, #44]
	mov	r3, r7
	ldr	r3, [r3]
	add	r2, r7, #12
	ldr	r2, [r2]
	add	r0, r2, #76
	adds	r2, r7, #4
	ldr	r5, [r7, #892]
	str	r5, [sp]
	str	r0, [sp, #4]
	add	r0, r7, #68
	str	r0, [sp, #8]
	ldr	r0, [r7, #908]
	ldr	r2, [r2]
	blx	r4
	str	r0, [r7, #924]
	ldr	r3, [r7, #924]
	cmp	r3, #0
	bne	.L758
	add	r3, r7, #12
	ldr	r3, [r3]
	movs	r2, #0
	strh	r2, [r3, #110]	@ movhi
	add	r3, r7, #12
	ldr	r3, [r3]
	movs	r2, #0
	strh	r2, [r3, #108]	@ movhi
	add	r3, r7, #68
	ldrh	r3, [r3, #2]
	lsls	r2, r3, #6
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #24]
	add	r3, r7, #68
	ldrh	r3, [r3]
	lsls	r2, r3, #6
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #28]
	add	r3, r7, #68
	ldrh	r3, [r3, #4]
	sxth	r3, r3
	lsls	r2, r3, #6
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #32]
	add	r3, r7, #68
	ldrh	r3, [r3, #6]
	sxth	r3, r3
	lsls	r2, r3, #6
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #36]
	add	r3, r7, #68
	ldrh	r3, [r3, #8]
	lsls	r2, r3, #6
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #40]
	add	r3, r7, #68
	ldrh	r3, [r3, #10]
	sxth	r3, r3
	lsls	r2, r3, #6
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #44]
	add	r3, r7, #68
	ldrh	r3, [r3, #12]
	sxth	r3, r3
	lsls	r2, r3, #6
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #48]
	add	r3, r7, #68
	ldrh	r3, [r3, #14]
	lsls	r2, r3, #6
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #52]
	add	r3, r7, #12
	ldr	r2, [r3]
	movw	r3, #29811
	movt	r3, 25193
	str	r3, [r2, #72]
	mov	r3, r7
	ldr	r3, [r3]
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L760
	add	r3, r7, #68
	ldrh	r3, [r3, #10]
	sxth	r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #100]
	add	r3, r7, #68
	ldrh	r3, [r3, #12]
	sxth	r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #104]
	b	.L761
.L760:
	add	r3, r7, #68
	ldrh	r3, [r3, #4]
	sxth	r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #100]
	add	r3, r7, #68
	ldrh	r3, [r3, #6]
	sxth	r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #104]
.L761:
	ldr	r3, [r7, #908]
	ldr	r3, [r3, #532]
	ldr	r4, [r3, #112]
	adds	r2, r7, #4
	add	r3, r7, #64
	add	r1, r7, #66
	str	r1, [sp]
	ldr	r0, [r7, #908]
	movs	r1, #0
	ldr	r2, [r2]
	blx	r4
	add	r3, r7, #66
	ldrh	r3, [r3]
	mov	r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #56]
	ldr	r3, [r7, #908]
	ldrb	r3, [r3, #292]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L762
	ldr	r3, [r7, #908]
	ldrh	r3, [r3, #330]
	cmp	r3, #0
	beq	.L762
	movs	r3, #1
	b	.L763
.L762:
	movs	r3, #0
.L763:
	strb	r3, [r7, #891]
	ldrb	r3, [r7, #891]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L764
	ldr	r3, [r7, #908]
	ldr	r3, [r3, #532]
	ldr	r4, [r3, #112]
	adds	r2, r7, #4
	add	r3, r7, #64
	add	r1, r7, #66
	str	r1, [sp]
	ldr	r0, [r7, #908]
	movs	r1, #1
	ldr	r2, [r2]
	blx	r4
	add	r3, r7, #66
	ldrh	r3, [r3]
	mov	r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #60]
	b	.L765
.L764:
	ldr	r3, [r7, #908]
	ldrh	r2, [r3, #364]
	movw	r3, #65535
	cmp	r2, r3
	beq	.L766
	ldr	r3, [r7, #908]
	ldrh	r3, [r3, #434]
	sxth	r2, r3
	ldr	r3, [r7, #908]
	ldrh	r3, [r3, #436]
	sxth	r3, r3
	subs	r2, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #60]
	b	.L765
.L766:
	ldr	r3, [r7, #908]
	ldrh	r3, [r3, #220]
	sxth	r2, r3
	ldr	r3, [r7, #908]
	ldrh	r3, [r3, #222]
	sxth	r3, r3
	subs	r2, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #60]
.L765:
	ldr	r3, [r7, #924]
	b	.L803
.L758:
	mov	r3, r7
	ldr	r3, [r3]
	and	r3, r3, #16384
	cmp	r3, #0
	beq	.L767
	movs	r3, #6
	b	.L803
.L767:
	ldr	r3, [r7, #904]
	ldr	r3, [r3, #1896]
	cmp	r3, #0
	beq	.L768
	ldr	r3, [r7, #904]
	addw	r2, r3, #2924
	adds	r3, r7, #4
	mov	r0, r2
	ldr	r1, [r3]
	bl	cff_fd_select_get(PLT)
	mov	r3, r0
	strb	r3, [r7, #921]
	ldrb	r2, [r7, #921]	@ zero_extendqisi2
	ldr	r3, [r7, #904]
	ldr	r3, [r3, #1896]
	cmp	r2, r3
	bcc	.L769
	ldr	r3, [r7, #904]
	ldr	r3, [r3, #1896]
	uxtb	r3, r3
	subs	r3, r3, #1
	strb	r3, [r7, #921]
.L769:
	ldr	r3, [r7, #904]
	ldr	r3, [r3, #1392]
	str	r3, [r7, #884]
	ldrb	r3, [r7, #921]	@ zero_extendqisi2
	ldr	r2, [r7, #904]
	add	r3, r3, #474
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #68]
	str	r3, [r7, #880]
	ldrb	r3, [r7, #921]	@ zero_extendqisi2
	ldr	r2, [r7, #904]
	add	r3, r3, #474
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	add	r2, r7, #92
	mov	r4, r2
	adds	r3, r3, #48
	ldmia	r3, {r0, r1, r2, r3}
	stmia	r4, {r0, r1, r2, r3}
	ldrb	r3, [r7, #921]	@ zero_extendqisi2
	ldr	r2, [r7, #904]
	add	r3, r3, #474
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	add	r3, r7, #84
	adds	r2, r2, #72
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r2, [r7, #884]
	ldr	r3, [r7, #880]
	cmp	r2, r3
	beq	.L770
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #164]
	mov	r0, r3
	ldr	r1, [r7, #884]
	ldr	r2, [r7, #880]
	bl	FT_MulDiv(PLT)
	mov	r2, r0
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #164]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #168]
	mov	r0, r3
	ldr	r1, [r7, #884]
	ldr	r2, [r7, #880]
	bl	FT_MulDiv(PLT)
	mov	r2, r0
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #168]
	movs	r3, #1
	strb	r3, [r7, #922]
	b	.L771
.L770:
	b	.L771
.L768:
	add	r2, r7, #92
	ldr	r3, [r7, #904]
	mov	r4, r2
	addw	r3, r3, #1372
	ldmia	r3, {r0, r1, r2, r3}
	stmia	r4, {r0, r1, r2, r3}
	add	r3, r7, #84
	ldr	r2, [r7, #904]
	addw	r2, r2, #1396
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
.L771:
	add	r3, r7, #12
	ldr	r3, [r3]
	movs	r2, #0
	strh	r2, [r3, #110]	@ movhi
	add	r3, r7, #12
	ldr	r3, [r3]
	movs	r2, #0
	strh	r2, [r3, #108]	@ movhi
	mov	r3, r7
	ldr	r3, [r3]
	and	r3, r3, #2
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	strb	r3, [r7, #923]
	mov	r3, r7
	ldr	r3, [r3]
	and	r3, r3, #1
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	strb	r3, [r7, #879]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldrb	r2, [r7, #923]
	strb	r2, [r3, #160]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldrb	r2, [r7, #879]
	strb	r2, [r3, #161]
	add	r3, r7, #12
	ldr	r2, [r3]
	movw	r3, #29804
	movt	r3, 28533
	str	r3, [r2, #72]
	mov	r3, r7
	ldr	r3, [r3]
	asrs	r3, r3, #16
	and	r3, r3, #15
	mov	r0, r3
	add	r1, r7, #108
	add	r2, r7, #8
	add	r3, r7, #12
	ldrb	r4, [r7, #923]	@ zero_extendqisi2
	str	r4, [sp]
	str	r0, [sp, #4]
	mov	r0, r1
	ldr	r1, [r7, #908]
	ldr	r2, [r2]
	ldr	r3, [r3]
	bl	cff_decoder_init(PLT)
	mov	r3, r7
	ldr	r3, [r3]
	and	r3, r3, #256
	cmp	r3, #0
	beq	.L772
	add	r3, r7, #108
	movs	r2, #1
	strb	r2, [r3, #561]
.L772:
	add	r3, r7, #108
	movs	r2, #0
	strb	r2, [r3, #66]
	adds	r1, r7, #4
	add	r2, r7, #60
	add	r3, r7, #56
	ldr	r0, [r7, #908]
	ldr	r1, [r1]
	bl	cff_get_glyph_data(PLT)
	str	r0, [r7, #924]
	ldr	r3, [r7, #924]
	cmp	r3, #0
	beq	.L773
	b	.L774
.L773:
	add	r1, r7, #108
	add	r2, r7, #8
	adds	r3, r7, #4
	mov	r0, r1
	ldr	r1, [r2]
	ldr	r2, [r3]
	bl	cff_decoder_prepare(PLT)
	str	r0, [r7, #924]
	ldr	r3, [r7, #924]
	cmp	r3, #0
	beq	.L775
	b	.L774
.L775:
	add	r3, r7, #60
	ldr	r2, [r3]
	add	r3, r7, #56
	ldr	r3, [r3]
	add	r1, r7, #108
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	cf2_decoder_parse_charstrings(PLT)
	str	r0, [r7, #924]
	ldr	r3, [r7, #924]
	uxtb	r3, r3
	cmp	r3, #164
	bne	.L776
	movs	r3, #0
	strb	r3, [r7, #923]
	movs	r3, #1
	strb	r3, [r7, #922]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldrb	r2, [r7, #923]
	strb	r2, [r3, #160]
	add	r3, r7, #60
	ldr	r2, [r3]
	add	r3, r7, #56
	ldr	r3, [r3]
	add	r1, r7, #108
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	cf2_decoder_parse_charstrings(PLT)
	str	r0, [r7, #924]
.L776:
	add	r3, r7, #56
	ldr	r3, [r3]
	add	r2, r7, #60
	ldr	r0, [r7, #908]
	mov	r1, r2
	mov	r2, r3
	bl	cff_free_glyph_data(PLT)
	ldr	r3, [r7, #924]
	cmp	r3, #0
	beq	.L777
	b	.L774
.L777:
	ldr	r3, [r7, #908]
	ldr	r3, [r3, #128]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L778
	add	r3, r7, #12
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [r3, #136]
	add	r3, r7, #12
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [r3, #140]
	b	.L774
.L778:
	ldr	r3, [r7, #904]
	add	r3, r3, #1176
	str	r3, [r7, #872]
	ldr	r3, [r7, #872]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L774
	ldr	r3, [r7, #872]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #872]
	ldr	r1, [r3, #24]
	adds	r3, r7, #4
	ldr	r3, [r3]
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r3, [r3]
	subs	r3, r3, #1
	add	r2, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #136]
	add	r3, r7, #56
	ldr	r3, [r3]
	mov	r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #140]
.L774:
	ldr	r3, [r7, #924]
	cmp	r3, #0
	bne	.L779
	add	r3, r7, #108
	mov	r0, r3
	bl	cff_builder_done(PLT)
.L779:
	ldr	r3, [r7, #924]
	cmp	r3, #0
	bne	.L780
	ldr	r3, [r7, #908]
	ldr	r3, [r3, #128]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L780
	ldr	r3, [r7, #908]
	ldr	r3, [r3, #128]
	ldr	r3, [r3, #48]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L780
	add	r3, r7, #108
	ldr	r2, [r3, #32]
	add	r3, r7, #40
	str	r2, [r3]
	add	r3, r7, #40
	movs	r2, #0
	str	r2, [r3, #4]
	add	r3, r7, #108
	ldr	r2, [r3, #40]
	add	r3, r7, #40
	str	r2, [r3, #8]
	add	r3, r7, #108
	ldr	r2, [r3, #44]
	add	r3, r7, #40
	str	r2, [r3, #12]
	ldr	r3, [r7, #908]
	ldr	r3, [r3, #128]
	ldr	r3, [r3, #48]
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	ldr	r3, [r7, #908]
	ldr	r3, [r3, #128]
	ldr	r3, [r3, #48]
	ldr	r1, [r3, #4]
	adds	r2, r7, #4
	add	r3, r7, #40
	mov	r0, r1
	ldr	r1, [r2]
	movs	r2, #0
	blx	r4
	str	r0, [r7, #924]
	add	r3, r7, #40
	ldr	r2, [r3]
	add	r3, r7, #108
	str	r2, [r3, #32]
	add	r3, r7, #40
	ldr	r2, [r3, #8]
	add	r3, r7, #108
	str	r2, [r3, #40]
	add	r3, r7, #40
	ldr	r2, [r3, #12]
	add	r3, r7, #108
	str	r2, [r3, #44]
.L780:
	ldr	r3, [r7, #924]
	cmp	r3, #0
	bne	.L781
	mov	r3, r7
	ldr	r3, [r3]
	and	r3, r3, #1024
	cmp	r3, #0
	beq	.L782
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #156]
	str	r3, [r7, #868]
	add	r3, r7, #108
	ldr	r2, [r3, #32]
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #32]
	add	r3, r7, #108
	ldr	r2, [r3, #552]
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #40]
	ldr	r2, [r7, #868]
	add	r3, r7, #92
	add	r4, r2, #12
	ldmia	r3, {r0, r1, r2, r3}
	stmia	r4, {r0, r1, r2, r3}
	ldr	r3, [r7, #868]
	add	r2, r7, #84
	adds	r3, r3, #28
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #868]
	movs	r2, #1
	strb	r2, [r3, #8]
	b	.L781
.L782:
	add	r3, r7, #12
	ldr	r3, [r3]
	adds	r3, r3, #24
	str	r3, [r7, #864]
	ldr	r3, [r7, #908]
	ldrh	r3, [r3, #250]
	cmp	r3, #0
	beq	.L783
	add	r3, r7, #22
	movs	r2, #0
	strh	r2, [r3]	@ movhi
	add	r3, r7, #20
	movs	r2, #0
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #908]
	ldr	r3, [r3, #532]
	ldr	r4, [r3, #112]
	adds	r2, r7, #4
	add	r3, r7, #22
	add	r1, r7, #20
	str	r1, [sp]
	ldr	r0, [r7, #908]
	movs	r1, #0
	ldr	r2, [r2]
	blx	r4
	add	r3, r7, #20
	ldrh	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7, #864]
	str	r2, [r3, #16]
	add	r3, r7, #22
	ldrh	r3, [r3]
	sxth	r2, r3
	ldr	r3, [r7, #864]
	str	r2, [r3, #8]
	add	r3, r7, #20
	ldrh	r3, [r3]
	mov	r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #56]
	b	.L784
.L783:
	add	r3, r7, #108
	ldr	r2, [r3, #552]
	ldr	r3, [r7, #864]
	str	r2, [r3, #16]
	add	r3, r7, #108
	ldr	r2, [r3, #552]
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #56]
.L784:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #156]
	movs	r2, #0
	strb	r2, [r3, #8]
	ldr	r3, [r7, #908]
	ldrb	r3, [r3, #292]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L785
	ldr	r3, [r7, #908]
	ldrh	r3, [r3, #330]
	cmp	r3, #0
	beq	.L785
	movs	r3, #1
	b	.L786
.L785:
	movs	r3, #0
.L786:
	strb	r3, [r7, #863]
	ldrb	r3, [r7, #863]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L787
	add	r3, r7, #18
	movs	r2, #0
	strh	r2, [r3]	@ movhi
	add	r3, r7, #16
	movs	r2, #0
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #908]
	ldr	r3, [r3, #532]
	ldr	r4, [r3, #112]
	adds	r2, r7, #4
	add	r3, r7, #18
	add	r1, r7, #16
	str	r1, [sp]
	ldr	r0, [r7, #908]
	movs	r1, #1
	ldr	r2, [r2]
	blx	r4
	add	r3, r7, #18
	ldrh	r3, [r3]
	sxth	r2, r3
	ldr	r3, [r7, #864]
	str	r2, [r3, #24]
	add	r3, r7, #16
	ldrh	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7, #864]
	str	r2, [r3, #28]
	b	.L788
.L787:
	ldr	r3, [r7, #908]
	ldrh	r2, [r3, #364]
	movw	r3, #65535
	cmp	r2, r3
	beq	.L789
	ldr	r3, [r7, #908]
	ldrh	r3, [r3, #434]
	sxth	r2, r3
	ldr	r3, [r7, #908]
	ldrh	r3, [r3, #436]
	sxth	r3, r3
	subs	r2, r2, r3
	ldr	r3, [r7, #864]
	str	r2, [r3, #28]
	b	.L788
.L789:
	ldr	r3, [r7, #908]
	ldrh	r3, [r3, #220]
	sxth	r2, r3
	ldr	r3, [r7, #908]
	ldrh	r3, [r3, #222]
	sxth	r3, r3
	subs	r2, r2, r3
	ldr	r3, [r7, #864]
	str	r2, [r3, #28]
.L788:
	ldr	r3, [r7, #864]
	ldr	r2, [r3, #28]
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #60]
	add	r3, r7, #12
	ldr	r2, [r3]
	movw	r3, #29804
	movt	r3, 28533
	str	r3, [r2, #72]
	add	r3, r7, #12
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [r3, #124]
	add	r3, r7, #8
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L790
	add	r3, r7, #8
	ldr	r3, [r3]
	ldrh	r3, [r3, #14]
	cmp	r3, #23
	bhi	.L790
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #124]
	orr	r2, r3, #256
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #124]
.L790:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #124]
	orr	r2, r3, #4
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #124]
	add	r3, r7, #92
	ldr	r3, [r3]
	cmp	r3, #65536
	bne	.L791
	add	r3, r7, #92
	ldr	r3, [r3, #12]
	cmp	r3, #65536
	bne	.L791
	add	r3, r7, #92
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L791
	add	r3, r7, #92
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L792
.L791:
	add	r3, r7, #12
	ldr	r3, [r3]
	add	r2, r3, #108
	add	r3, r7, #92
	mov	r0, r2
	mov	r1, r3
	bl	FT_Outline_Transform(PLT)
	ldr	r3, [r7, #864]
	ldr	r2, [r3, #16]
	add	r3, r7, #92
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #864]
	str	r2, [r3, #16]
	ldr	r3, [r7, #864]
	ldr	r2, [r3, #28]
	add	r3, r7, #92
	ldr	r3, [r3, #12]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #864]
	str	r2, [r3, #28]
.L792:
	add	r3, r7, #84
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L793
	add	r3, r7, #84
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L794
.L793:
	add	r3, r7, #12
	ldr	r3, [r3]
	add	r1, r3, #108
	add	r3, r7, #84
	ldr	r2, [r3]
	add	r3, r7, #84
	ldr	r3, [r3, #4]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	FT_Outline_Translate(PLT)
	ldr	r3, [r7, #864]
	ldr	r2, [r3, #16]
	add	r3, r7, #84
	ldr	r3, [r3]
	add	r2, r2, r3
	ldr	r3, [r7, #864]
	str	r2, [r3, #16]
	ldr	r3, [r7, #864]
	ldr	r2, [r3, #28]
	add	r3, r7, #84
	ldr	r3, [r3, #4]
	add	r2, r2, r3
	ldr	r3, [r7, #864]
	str	r2, [r3, #28]
.L794:
	mov	r3, r7
	ldr	r3, [r3]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L795
	ldrb	r3, [r7, #922]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L796
.L795:
	add	r3, r7, #12
	ldr	r3, [r3]
	adds	r3, r3, #108
	str	r3, [r7, #856]
	ldr	r3, [r7, #856]
	ldr	r3, [r3, #4]
	str	r3, [r7, #912]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #164]
	str	r3, [r7, #852]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #168]
	str	r3, [r7, #848]
	ldrb	r3, [r7, #923]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L797
	add	r3, r7, #108
	ldr	r3, [r3, #68]
	cmp	r3, #0
	bne	.L798
.L797:
	ldr	r3, [r7, #856]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	str	r3, [r7, #916]
	b	.L799
.L800:
	ldr	r3, [r7, #912]
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r1, [r7, #852]
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #912]
	str	r2, [r3]
	ldr	r3, [r7, #912]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r1, [r7, #848]
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #912]
	str	r2, [r3, #4]
	ldr	r3, [r7, #916]
	subs	r3, r3, #1
	str	r3, [r7, #916]
	ldr	r3, [r7, #912]
	adds	r3, r3, #8
	str	r3, [r7, #912]
.L799:
	ldr	r3, [r7, #916]
	cmp	r3, #0
	bgt	.L800
.L798:
	ldr	r3, [r7, #864]
	ldr	r3, [r3, #16]
	mov	r0, r3
	ldr	r1, [r7, #852]
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #864]
	str	r2, [r3, #16]
	ldr	r3, [r7, #864]
	ldr	r3, [r3, #28]
	mov	r0, r3
	ldr	r1, [r7, #848]
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #864]
	str	r2, [r3, #28]
.L796:
	add	r3, r7, #12
	ldr	r3, [r3]
	add	r2, r3, #108
	add	r3, r7, #24
	mov	r0, r2
	mov	r1, r3
	bl	FT_Outline_Get_CBox(PLT)
	add	r3, r7, #24
	ldr	r2, [r3, #8]
	add	r3, r7, #24
	ldr	r3, [r3]
	subs	r2, r2, r3
	ldr	r3, [r7, #864]
	str	r2, [r3]
	add	r3, r7, #24
	ldr	r2, [r3, #12]
	add	r3, r7, #24
	ldr	r3, [r3, #4]
	subs	r2, r2, r3
	ldr	r3, [r7, #864]
	str	r2, [r3, #4]
	add	r3, r7, #24
	ldr	r2, [r3]
	ldr	r3, [r7, #864]
	str	r2, [r3, #8]
	add	r3, r7, #24
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #864]
	str	r2, [r3, #12]
	ldrb	r3, [r7, #863]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L801
	ldr	r3, [r7, #864]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #864]
	ldr	r3, [r3, #16]
	lsrs	r1, r3, #31
	add	r3, r3, r1
	asrs	r3, r3, #1
	subs	r2, r2, r3
	ldr	r3, [r7, #864]
	str	r2, [r3, #20]
	b	.L781
.L801:
	mov	r3, r7
	ldr	r3, [r3]
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L781
	ldr	r3, [r7, #864]
	ldr	r3, [r3, #28]
	ldr	r0, [r7, #864]
	mov	r1, r3
	bl	ft_synthesize_vertical_metrics(PLT)
.L781:
	ldr	r3, [r7, #924]
.L803:
	mov	r0, r3
	add	r7, r7, #928
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.size	cff_slot_load, .-cff_slot_load
	.section	.text.cff_cmap_encoding_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_cmap_encoding_init, %function
cff_cmap_encoding_init:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #656]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	adds	r3, r3, #116
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	add	r2, r3, #524
	ldr	r3, [r7, #4]
	str	r2, [r3, #16]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	cff_cmap_encoding_init, .-cff_cmap_encoding_init
	.section	.text.cff_cmap_encoding_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_cmap_encoding_done, %function
cff_cmap_encoding_done:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #16]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	cff_cmap_encoding_done, .-cff_cmap_encoding_done
	.section	.text.cff_cmap_encoding_char_index,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_cmap_encoding_char_index, %function
cff_cmap_encoding_char_index:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7]
	cmp	r3, #255
	bhi	.L808
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #16]
	ldr	r3, [r7]
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r3, [r3]
	str	r3, [r7, #12]
.L808:
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	cff_cmap_encoding_char_index, .-cff_cmap_encoding_char_index
	.section	.text.cff_cmap_encoding_char_next,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_cmap_encoding_char_next, %function
cff_cmap_encoding_char_next:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #12]
	cmp	r3, #254
	bhi	.L811
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L814:
	ldr	r3, [r7, #16]
	cmp	r3, #255
	bls	.L812
	b	.L811
.L812:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #16]
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r3, [r3]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L813
	ldr	r3, [r7]
	ldr	r2, [r7, #16]
	str	r2, [r3]
	b	.L811
.L813:
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
	b	.L814
.L811:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	cff_cmap_encoding_char_next, .-cff_cmap_encoding_char_next
	.global	cff_cmap_encoding_class_rec
	.section	.data.rel.ro.local.cff_cmap_encoding_class_rec,"aw",%progbits
	.align	2
	.type	cff_cmap_encoding_class_rec, %object
	.size	cff_cmap_encoding_class_rec, 40
cff_cmap_encoding_class_rec:
	.word	20
	.word	cff_cmap_encoding_init
	.word	cff_cmap_encoding_done
	.word	cff_cmap_encoding_char_index
	.word	cff_cmap_encoding_char_next
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.text.cff_sid_to_glyph_name,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_sid_to_glyph_name, %function
cff_sid_to_glyph_name:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #656]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	add	r3, r3, #1152
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #8]
	ldr	r3, [r7]
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r3, [r3]
	str	r3, [r7, #12]
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #12]
	bl	cff_index_get_sid_string(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cff_sid_to_glyph_name, .-cff_sid_to_glyph_name
	.section	.text.cff_cmap_unicode_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_cmap_unicode_init, %function
cff_cmap_unicode_init:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #44
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #100]
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #656]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	add	r3, r3, #1152
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #2956]
	str	r3, [r7, #12]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L819
	movs	r3, #163
	b	.L820
.L819:
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #12]
	movs	r2, #0
	str	r2, [sp]
	ldr	r2, [r7, #28]
	str	r2, [sp, #4]
	ldr	r0, [r7, #24]
	ldr	r1, [r7, #4]
	mov	r2, r3
	ldr	r3, .L821
.LPIC47:
	add	r3, pc
	blx	r4
	mov	r3, r0
.L820:
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L822:
	.align	2
.L821:
	.word	cff_sid_to_glyph_name-(.LPIC47+4)
	.size	cff_cmap_unicode_init, .-cff_cmap_unicode_init
	.section	.text.cff_cmap_unicode_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_cmap_unicode_done, %function
cff_cmap_unicode_done:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #100]
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #16]
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cff_cmap_unicode_done, .-cff_cmap_unicode_done
	.section	.text.cff_cmap_unicode_char_index,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_cmap_unicode_char_index, %function
cff_cmap_unicode_char_index:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #656]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #2956]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	blx	r3
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cff_cmap_unicode_char_index, .-cff_cmap_unicode_char_index
	.section	.text.cff_cmap_unicode_char_next,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cff_cmap_unicode_char_next, %function
cff_cmap_unicode_char_next:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #656]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #2956]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	blx	r3
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cff_cmap_unicode_char_next, .-cff_cmap_unicode_char_next
	.global	cff_cmap_unicode_class_rec
	.section	.data.rel.ro.local.cff_cmap_unicode_class_rec,"aw",%progbits
	.align	2
	.type	cff_cmap_unicode_class_rec, %object
	.size	cff_cmap_unicode_class_rec, 40
cff_cmap_unicode_class_rec:
	.word	24
	.word	cff_cmap_unicode_init
	.word	cff_cmap_unicode_done
	.word	cff_cmap_unicode_char_index
	.word	cff_cmap_unicode_char_next
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.text.cf2_arrstack_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_arrstack_init, %function
cf2_arrstack_init:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
	movs	r2, #10
	str	r2, [r3, #16]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #28]
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	cf2_arrstack_init, .-cf2_arrstack_init
	.section	.text.cf2_arrstack_finalize,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_arrstack_finalize, %function
cf2_arrstack_finalize:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #28]
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cf2_arrstack_finalize, .-cf2_arrstack_finalize
	.global	__aeabi_uidiv
	.section	.text.cf2_arrstack_setNumElements,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_arrstack_setNumElements, %function
cf2_arrstack_setNumElements:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldr	r2, [r7]
	mul	r3, r2, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mvn	r0, #-2147483648
	mov	r1, r3
	bl	__aeabi_uidiv(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L832
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	mov	r2, r3
	ldr	r3, [r7, #16]
	ldr	r1, [r7, #4]
	ldr	r1, [r1, #28]
	str	r1, [sp]
	add	r1, r7, #12
	str	r1, [sp, #4]
	ldr	r0, [r7, #20]
	movs	r1, #1
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #28]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L832
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #16]
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #20]
	ldr	r3, [r7]
	cmp	r2, r3
	bls	.L834
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	movs	r1, #130
	bl	cf2_setError(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #20]
	movs	r3, #0
	b	.L836
.L834:
	movs	r3, #1
	b	.L836
.L832:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	movs	r1, #64
	bl	cf2_setError(PLT)
	movs	r3, #0
.L836:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cf2_arrstack_setNumElements, .-cf2_arrstack_setNumElements
	.section	.text.cf2_arrstack_setCount,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_arrstack_setCount, %function
cf2_arrstack_setCount:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	cmp	r2, r3
	bcs	.L838
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	cf2_arrstack_setNumElements(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L838
	b	.L837
.L838:
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #20]
.L837:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cf2_arrstack_setCount, .-cf2_arrstack_setCount
	.section	.text.cf2_arrstack_clear,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_arrstack_clear, %function
cf2_arrstack_clear:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #20]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	cf2_arrstack_clear, .-cf2_arrstack_clear
	.section	.text.cf2_arrstack_size,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_arrstack_size, %function
cf2_arrstack_size:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	cf2_arrstack_size, .-cf2_arrstack_size
	.section	.text.cf2_arrstack_getBuffer,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_arrstack_getBuffer, %function
cf2_arrstack_getBuffer:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	cf2_arrstack_getBuffer, .-cf2_arrstack_getBuffer
	.section	.text.cf2_arrstack_getPointer,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_arrstack_getPointer, %function
cf2_arrstack_getPointer:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #20]
	ldr	r3, [r7]
	cmp	r2, r3
	bhi	.L846
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	movs	r1, #130
	bl	cf2_setError(PLT)
	movs	r3, #0
	str	r3, [r7]
.L846:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldr	r1, [r7]
	mul	r3, r1, r3
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cf2_arrstack_getPointer, .-cf2_arrstack_getPointer
	.section	.text.cf2_arrstack_push,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_arrstack_push, %function
cf2_arrstack_push:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	cmp	r2, r3
	bne	.L849
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	add	r3, r3, r2
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	cf2_arrstack_setNumElements(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L849
	b	.L848
.L849:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #8]
	mul	r3, r2, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldr	r0, [r7, #8]
	ldr	r1, [r7]
	mov	r2, r3
	bl	memcpy(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #20]
.L848:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cf2_arrstack_push, .-cf2_arrstack_push
	.section	.text.cf2_blues_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_blues_init, %function
cf2_blues_init:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #92
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3, #132]
	str	r3, [r7, #68]
	movs	r3, #0
	str	r3, [r7, #84]
	ldr	r0, [r7, #4]
	movs	r1, #0
	mov	r2, #308
	bl	memset(PLT)
	ldr	r3, [r7]
	ldr	r2, [r3, #48]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	add	r1, r3, #12
	ldr	r3, [r7, #4]
	add	r2, r3, #16
	ldr	r3, [r7, #4]
	adds	r3, r3, #20
	ldr	r0, [r7, #68]
	bl	cf2_getBlueMetrics(PLT)
	add	r2, r7, #36
	add	r3, r7, #20
	ldr	r0, [r7, #68]
	mov	r1, r2
	mov	r2, r3
	bl	cf2_getBlueValues(PLT)
	add	r2, r7, #32
	add	r3, r7, #16
	ldr	r0, [r7, #68]
	mov	r1, r2
	mov	r2, r3
	bl	cf2_getOtherBlues(PLT)
	add	r2, r7, #28
	add	r3, r7, #12
	ldr	r0, [r7, #68]
	mov	r1, r2
	mov	r2, r3
	bl	cf2_getFamilyBlues(PLT)
	add	r2, r7, #24
	add	r3, r7, #8
	ldr	r0, [r7, #68]
	mov	r1, r2
	mov	r2, r3
	bl	cf2_getFamilyOtherBlues(PLT)
	movs	r3, #0
	movt	r3, 65416
	str	r3, [r7, #64]
	mov	r3, #57671680
	str	r3, [r7, #60]
	ldr	r0, [r7, #68]
	bl	cf2_getLanguageGroup(PLT)
	mov	r3, r0
	cmp	r3, #1
	bne	.L852
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L853
	ldr	r3, [r7, #36]
	cmp	r3, #4
	bne	.L852
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	lsls	r3, r3, #16
	mov	r2, r3
	ldr	r3, [r7, #64]
	cmp	r2, r3
	bge	.L852
	ldr	r3, [r7, #20]
	adds	r3, r3, #4
	ldr	r3, [r3]
	lsls	r3, r3, #16
	mov	r2, r3
	ldr	r3, [r7, #64]
	cmp	r2, r3
	bge	.L852
	ldr	r3, [r7, #20]
	adds	r3, r3, #8
	ldr	r3, [r3]
	lsls	r3, r3, #16
	mov	r2, r3
	ldr	r3, [r7, #60]
	cmp	r2, r3
	ble	.L852
	ldr	r3, [r7, #20]
	adds	r3, r3, #12
	ldr	r3, [r3]
	lsls	r3, r3, #16
	mov	r2, r3
	ldr	r3, [r7, #60]
	cmp	r2, r3
	ble	.L852
.L853:
	ldr	r3, [r7, #64]
	subs	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #56]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #56]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r3, r0
	add	r3, r3, #32768
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	sub	r2, r3, #32768
	ldr	r3, [r7, #4]
	str	r2, [r3, #60]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #64]
	ldr	r3, [r7, #4]
	movs	r2, #49
	str	r2, [r3, #48]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	ldr	r3, [r7]
	ldr	r3, [r3, #188]
	lsls	r3, r3, #1
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #36]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r3, r0
	add	r3, r3, #32768
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	add	r2, r3, #32768
	ldr	r3, [r7, #4]
	str	r2, [r3, #40]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #44]
	ldr	r3, [r7, #4]
	movs	r2, #50
	str	r2, [r3, #28]
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #9]
	b	.L851
.L852:
	movs	r3, #0
	str	r3, [r7, #80]
	b	.L855
.L862:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r1, [r7, #20]
	ldr	r3, [r7, #80]
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r3, [r3]
	lsls	r3, r3, #16
	mov	r1, r3
	ldr	r0, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	adds	r3, r3, #68
	str	r1, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r1, [r7, #20]
	ldr	r3, [r7, #80]
	adds	r3, r3, #1
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r3, [r3]
	lsls	r3, r3, #16
	mov	r1, r3
	ldr	r0, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	adds	r3, r3, #72
	str	r1, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r1, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #72
	ldr	r1, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r0, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	adds	r3, r3, #68
	ldr	r3, [r3]
	subs	r3, r1, r3
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	cmp	r3, #0
	bge	.L856
	b	.L857
.L856:
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #84]
	cmp	r2, r3
	ble	.L858
	ldr	r3, [r7, #56]
	str	r3, [r7, #84]
.L858:
	ldr	r3, [r7, #80]
	cmp	r3, #0
	beq	.L859
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #4]
	ldr	r0, [r7, #4]
	mov	r3, r1
	lsls	r3, r3, #2
	add	r3, r3, r1
	lsls	r3, r3, #2
	add	r3, r3, r0
	adds	r3, r3, #72
	ldr	r1, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3, #188]
	lsls	r3, r3, #1
	add	r1, r1, r3
	ldr	r0, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	adds	r3, r3, #72
	str	r1, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #4]
	ldr	r0, [r7, #4]
	mov	r3, r1
	lsls	r3, r3, #2
	add	r3, r3, r1
	lsls	r3, r3, #2
	add	r3, r3, r0
	adds	r3, r3, #68
	ldr	r1, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3, #188]
	lsls	r3, r3, #1
	add	r1, r1, r3
	ldr	r0, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	adds	r3, r3, #68
	str	r1, [r3]
.L859:
	ldr	r3, [r7, #80]
	cmp	r3, #0
	bne	.L860
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r1, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #80
	movs	r2, #1
	strb	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #4]
	ldr	r0, [r7, #4]
	mov	r3, r1
	lsls	r3, r3, #2
	add	r3, r3, r1
	lsls	r3, r3, #2
	add	r3, r3, r0
	adds	r3, r3, #72
	ldr	r1, [r3]
	ldr	r0, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	adds	r3, r3, #76
	str	r1, [r3]
	b	.L861
.L860:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r1, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #80
	movs	r2, #0
	strb	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #4]
	ldr	r0, [r7, #4]
	mov	r3, r1
	lsls	r3, r3, #2
	add	r3, r3, r1
	lsls	r3, r3, #2
	add	r3, r3, r0
	adds	r3, r3, #68
	ldr	r1, [r3]
	ldr	r0, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	adds	r3, r3, #76
	str	r1, [r3]
.L861:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
.L857:
	ldr	r3, [r7, #80]
	adds	r3, r3, #2
	str	r3, [r7, #80]
.L855:
	ldr	r3, [r7, #36]
	ldr	r2, [r7, #80]
	cmp	r2, r3
	bcc	.L862
	movs	r3, #0
	str	r3, [r7, #80]
	b	.L863
.L867:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r1, [r7, #16]
	ldr	r3, [r7, #80]
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r3, [r3]
	lsls	r3, r3, #16
	mov	r1, r3
	ldr	r0, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	adds	r3, r3, #68
	str	r1, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r1, [r7, #16]
	ldr	r3, [r7, #80]
	adds	r3, r3, #1
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r3, [r3]
	lsls	r3, r3, #16
	mov	r1, r3
	ldr	r0, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	adds	r3, r3, #72
	str	r1, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r1, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #72
	ldr	r1, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r0, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	adds	r3, r3, #68
	ldr	r3, [r3]
	subs	r3, r1, r3
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	cmp	r3, #0
	bge	.L864
	b	.L865
.L864:
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #84]
	cmp	r2, r3
	ble	.L866
	ldr	r3, [r7, #56]
	str	r3, [r7, #84]
.L866:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r1, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #80
	movs	r2, #1
	strb	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #4]
	ldr	r0, [r7, #4]
	mov	r3, r1
	lsls	r3, r3, #2
	add	r3, r3, r1
	lsls	r3, r3, #2
	add	r3, r3, r0
	adds	r3, r3, #72
	ldr	r1, [r3]
	ldr	r0, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	adds	r3, r3, #76
	str	r1, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
.L865:
	ldr	r3, [r7, #80]
	adds	r3, r3, #2
	str	r3, [r7, #80]
.L863:
	ldr	r3, [r7, #32]
	ldr	r2, [r7, #80]
	cmp	r2, r3
	bcc	.L867
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, #65536
	mov	r1, r3
	bl	FT_DivFix(PLT)
	str	r0, [r7, #52]
	movs	r3, #0
	str	r3, [r7, #80]
	b	.L868
.L879:
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #80]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #76
	ldr	r3, [r3]
	str	r3, [r7, #48]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #80]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #80
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L869
	mvn	r3, #-2147483648
	str	r3, [r7, #72]
	movs	r3, #0
	str	r3, [r7, #76]
	b	.L870
.L873:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #76]
	adds	r3, r3, #1
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	lsls	r3, r3, #16
	str	r3, [r7, #44]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #44]
	subs	r3, r2, r3
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	str	r3, [r7, #40]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #72]
	cmp	r2, r3
	bge	.L871
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bge	.L871
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #80]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #76
	ldr	r2, [r7, #44]
	str	r2, [r3]
	ldr	r3, [r7, #40]
	str	r3, [r7, #72]
	ldr	r3, [r7, #40]
	cmp	r3, #0
	bne	.L871
	b	.L872
.L871:
	ldr	r3, [r7, #76]
	adds	r3, r3, #2
	str	r3, [r7, #76]
.L870:
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #76]
	cmp	r2, r3
	bcc	.L873
.L872:
	ldr	r3, [r7, #28]
	cmp	r3, #1
	bls	.L875
	ldr	r3, [r7, #12]
	adds	r3, r3, #4
	ldr	r3, [r3]
	lsls	r3, r3, #16
	str	r3, [r7, #44]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #44]
	subs	r3, r2, r3
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	str	r3, [r7, #40]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #72]
	cmp	r2, r3
	bge	.L875
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bge	.L875
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #80]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #76
	ldr	r2, [r7, #44]
	str	r2, [r3]
	b	.L875
.L869:
	mvn	r3, #-2147483648
	str	r3, [r7, #72]
	movs	r3, #2
	str	r3, [r7, #76]
	b	.L876
.L878:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #76]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	lsls	r3, r3, #16
	str	r3, [r7, #44]
	ldr	r3, [r7]
	ldr	r3, [r3, #188]
	lsls	r3, r3, #1
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #44]
	subs	r3, r2, r3
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	str	r3, [r7, #40]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #72]
	cmp	r2, r3
	bge	.L877
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bge	.L877
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #80]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #76
	ldr	r2, [r7, #44]
	str	r2, [r3]
	ldr	r3, [r7, #40]
	str	r3, [r7, #72]
	ldr	r3, [r7, #40]
	cmp	r3, #0
	bne	.L877
	b	.L875
.L877:
	ldr	r3, [r7, #76]
	adds	r3, r3, #2
	str	r3, [r7, #76]
.L876:
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #76]
	cmp	r2, r3
	bcc	.L878
.L875:
	ldr	r3, [r7, #80]
	adds	r3, r3, #1
	str	r3, [r7, #80]
.L868:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #80]
	cmp	r2, r3
	bhi	.L879
	ldr	r3, [r7, #84]
	cmp	r3, #0
	ble	.L880
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #12]
	mov	r0, #65536
	ldr	r1, [r7, #84]
	bl	FT_DivFix(PLT)
	mov	r3, r0
	cmp	r4, r3
	ble	.L880
	mov	r0, #65536
	ldr	r1, [r7, #84]
	bl	FT_DivFix(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
.L880:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	cmp	r2, r3
	bge	.L881
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	movw	r0, #39322
	mov	r1, r2
	mov	r2, r3
	bl	FT_MulDiv(PLT)
	mov	r3, r0
	rsb	r3, r3, #39168
	adds	r3, r3, #154
	ldr	r2, [r7, #4]
	str	r3, [r2, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	cmp	r3, #32768
	blt	.L881
	ldr	r3, [r7, #4]
	movw	r2, #32767
	str	r2, [r3, #24]
.L881:
	ldr	r3, [r7]
	ldrb	r3, [r3, #142]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L882
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #24]
.L882:
	movs	r3, #0
	str	r3, [r7, #80]
	b	.L883
.L886:
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #80]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #80
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L884
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #80]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #76
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	subs	r3, r2, r3
	add	r3, r3, #32768
	lsrs	r2, r3, #16
	lsls	r2, r2, #16
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #80]
	mov	r3, r1
	lsls	r3, r3, #2
	add	r3, r3, r1
	lsls	r3, r3, #2
	add	r3, r3, r0
	adds	r3, r3, #80
	str	r2, [r3]
	b	.L885
.L884:
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #80]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #76
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	add	r3, r3, r2
	add	r3, r3, #32768
	lsrs	r2, r3, #16
	lsls	r2, r2, #16
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #80]
	mov	r3, r1
	lsls	r3, r3, #2
	add	r3, r3, r1
	lsls	r3, r3, #2
	add	r3, r3, r0
	adds	r3, r3, #80
	str	r2, [r3]
.L885:
	ldr	r3, [r7, #80]
	adds	r3, r3, #1
	str	r3, [r7, #80]
.L883:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #80]
	cmp	r2, r3
	bhi	.L886
.L851:
	adds	r7, r7, #92
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	cf2_blues_init, .-cf2_blues_init
	.section	.text.cf2_blues_capture,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_blues_capture, %function
cf2_blues_capture:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #20]
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #32]
	movs	r3, #0
	strb	r3, [r7, #31]
	movs	r3, #0
	str	r3, [r7, #24]
	b	.L888
.L898:
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #24]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #80
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L889
	ldr	r0, [r7, #8]
	bl	cf2_hint_isBottom(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L889
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #24]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #68
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	subs	r2, r2, r3
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	bgt	.L889
	ldr	r3, [r7, #8]
	ldr	r1, [r3, #8]
	ldr	r0, [r7, #12]
	ldr	r2, [r7, #24]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	adds	r3, r3, #72
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	cmp	r1, r3
	bgt	.L889
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L890
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #24]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #80
	ldr	r3, [r3]
	str	r3, [r7, #36]
	b	.L891
.L890:
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #24]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #72
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	subs	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	cmp	r2, r3
	blt	.L892
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #24]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #80
	ldr	r3, [r3]
	sub	r2, r3, #65536
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	add	r3, r3, #32768
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	cmp	r3, r2
	it	ge
	movge	r3, r2
	str	r3, [r7, #36]
	b	.L891
.L892:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	add	r3, r3, #32768
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	str	r3, [r7, #36]
.L891:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	ldr	r2, [r7, #36]
	subs	r3, r2, r3
	str	r3, [r7, #32]
	movs	r3, #1
	strb	r3, [r7, #31]
	b	.L893
.L889:
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #24]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #80
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L894
	ldr	r0, [r7, #4]
	bl	cf2_hint_isTop(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L894
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #24]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #68
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	subs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	bgt	.L894
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #8]
	ldr	r0, [r7, #12]
	ldr	r2, [r7, #24]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	adds	r3, r3, #72
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	cmp	r1, r3
	bgt	.L894
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L895
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #24]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #80
	ldr	r3, [r3]
	str	r3, [r7, #36]
	b	.L896
.L895:
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #8]
	ldr	r0, [r7, #12]
	ldr	r2, [r7, #24]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	adds	r3, r3, #68
	ldr	r3, [r3]
	subs	r2, r1, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	cmp	r2, r3
	blt	.L897
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #24]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #80
	ldr	r3, [r3]
	add	r2, r3, #65536
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	add	r3, r3, #32768
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	cmp	r3, r2
	it	lt
	movlt	r3, r2
	str	r3, [r7, #36]
	b	.L896
.L897:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	add	r3, r3, #32768
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	str	r3, [r7, #36]
.L896:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r2, [r7, #36]
	subs	r3, r2, r3
	str	r3, [r7, #32]
	movs	r3, #1
	strb	r3, [r7, #31]
	b	.L893
.L894:
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
.L888:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bhi	.L898
.L893:
	ldrb	r3, [r7, #31]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L899
	ldr	r0, [r7, #8]
	bl	cf2_hint_isValid(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L900
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #32]
	add	r2, r2, r3
	ldr	r3, [r7, #8]
	str	r2, [r3, #12]
	ldr	r0, [r7, #8]
	bl	cf2_hint_lock(PLT)
.L900:
	ldr	r0, [r7, #4]
	bl	cf2_hint_isValid(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L899
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #32]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r0, [r7, #4]
	bl	cf2_hint_lock(PLT)
.L899:
	ldrb	r3, [r7, #31]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cf2_blues_capture, .-cf2_blues_capture
	.section	.text.cf2_setError,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_setError, %function
cf2_setError:
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
	beq	.L902
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L902
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3]
.L902:
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	cf2_setError, .-cf2_setError
	.section	.text.cf2_computeDarkening,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_computeDarkening, %function
cf2_computeDarkening:
	@ args = 12, pretend = 0, frame = 96
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #100
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #112]
	cmp	r3, #0
	bne	.L905
	ldrb	r3, [r7, #116]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L905
	b	.L904
.L905:
	ldr	r2, [r7, #12]
	movw	r3, #654
	cmp	r2, r3
	bgt	.L907
	b	.L904
.L907:
	ldrb	r3, [r7, #116]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L908
	ldr	r3, [r7, #120]
	ldr	r3, [r3]
	str	r3, [r7, #88]
	ldr	r3, [r7, #120]
	ldr	r3, [r3, #4]
	str	r3, [r7, #84]
	ldr	r3, [r7, #120]
	ldr	r3, [r3, #8]
	str	r3, [r7, #80]
	ldr	r3, [r7, #120]
	ldr	r3, [r3, #12]
	str	r3, [r7, #76]
	ldr	r3, [r7, #120]
	ldr	r3, [r3, #16]
	str	r3, [r7, #72]
	ldr	r3, [r7, #120]
	ldr	r3, [r3, #20]
	str	r3, [r7, #68]
	ldr	r3, [r7, #120]
	ldr	r3, [r3, #24]
	str	r3, [r7, #64]
	ldr	r3, [r7, #120]
	ldr	r3, [r3, #28]
	str	r3, [r7, #60]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #112]
	add	r3, r3, r2
	mov	r0, r3
	ldr	r1, [r7, #12]
	bl	FT_MulFix_arm(PLT)
	str	r0, [r7, #56]
	ldr	r3, [r7, #56]
	clz	r3, r3
	rsb	r2, r3, #31
	ldr	r3, [r7, #8]
	clz	r3, r3
	rsb	r3, r3, #31
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #52]
	cmp	r3, #45
	ble	.L909
	ldr	r3, [r7, #64]
	lsls	r3, r3, #16
	str	r3, [r7, #92]
	b	.L910
.L909:
	ldr	r0, [r7, #56]
	ldr	r1, [r7, #8]
	bl	FT_MulFix_arm(PLT)
	str	r0, [r7, #92]
.L910:
	ldr	r3, [r7, #88]
	lsls	r3, r3, #16
	mov	r2, r3
	ldr	r3, [r7, #92]
	cmp	r2, r3
	ble	.L911
	ldr	r3, [r7, #84]
	lsls	r3, r3, #16
	mov	r0, r3
	ldr	r1, [r7, #8]
	bl	FT_DivFix(PLT)
	mov	r2, r0
	ldr	r3, [r7]
	str	r2, [r3]
	b	.L912
.L911:
	ldr	r3, [r7, #80]
	lsls	r3, r3, #16
	mov	r2, r3
	ldr	r3, [r7, #92]
	cmp	r2, r3
	ble	.L913
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
	ldr	r1, [r7, #8]
	bl	FT_DivFix(PLT)
	mov	r3, r0
	ldr	r2, [r7, #56]
	subs	r3, r2, r3
	str	r3, [r7, #40]
	ldr	r3, [r7, #48]
	cmp	r3, #0
	bne	.L914
	b	.L915
.L914:
	ldr	r0, [r7, #40]
	ldr	r1, [r7, #44]
	ldr	r2, [r7, #48]
	bl	FT_MulDiv(PLT)
	mov	r4, r0
	ldr	r3, [r7, #84]
	lsls	r3, r3, #16
	mov	r0, r3
	ldr	r1, [r7, #8]
	bl	FT_DivFix(PLT)
	mov	r3, r0
	adds	r2, r4, r3
	ldr	r3, [r7]
	str	r2, [r3]
	b	.L912
.L913:
	ldr	r3, [r7, #72]
	lsls	r3, r3, #16
	mov	r2, r3
	ldr	r3, [r7, #92]
	cmp	r2, r3
	ble	.L916
.L915:
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
	ldr	r1, [r7, #8]
	bl	FT_DivFix(PLT)
	mov	r3, r0
	ldr	r2, [r7, #56]
	subs	r3, r2, r3
	str	r3, [r7, #28]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L917
	b	.L918
.L917:
	ldr	r0, [r7, #28]
	ldr	r1, [r7, #32]
	ldr	r2, [r7, #36]
	bl	FT_MulDiv(PLT)
	mov	r4, r0
	ldr	r3, [r7, #76]
	lsls	r3, r3, #16
	mov	r0, r3
	ldr	r1, [r7, #8]
	bl	FT_DivFix(PLT)
	mov	r3, r0
	adds	r2, r4, r3
	ldr	r3, [r7]
	str	r2, [r3]
	b	.L912
.L916:
	ldr	r3, [r7, #64]
	lsls	r3, r3, #16
	mov	r2, r3
	ldr	r3, [r7, #92]
	cmp	r2, r3
	ble	.L919
.L918:
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
	ldr	r1, [r7, #8]
	bl	FT_DivFix(PLT)
	mov	r3, r0
	ldr	r2, [r7, #56]
	subs	r3, r2, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L920
	b	.L919
.L920:
	ldr	r0, [r7, #16]
	ldr	r1, [r7, #20]
	ldr	r2, [r7, #24]
	bl	FT_MulDiv(PLT)
	mov	r4, r0
	ldr	r3, [r7, #68]
	lsls	r3, r3, #16
	mov	r0, r3
	ldr	r1, [r7, #8]
	bl	FT_DivFix(PLT)
	mov	r3, r0
	adds	r2, r4, r3
	ldr	r3, [r7]
	str	r2, [r3]
	b	.L912
.L919:
	ldr	r3, [r7, #60]
	lsls	r3, r3, #16
	mov	r0, r3
	ldr	r1, [r7, #8]
	bl	FT_DivFix(PLT)
	mov	r2, r0
	ldr	r3, [r7]
	str	r2, [r3]
.L912:
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #1
	mov	r0, r2
	mov	r1, r3
	bl	FT_DivFix(PLT)
	mov	r2, r0
	ldr	r3, [r7]
	str	r2, [r3]
.L908:
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #112]
	lsrs	r1, r3, #31
	add	r3, r3, r1
	asrs	r3, r3, #1
	add	r2, r2, r3
	ldr	r3, [r7]
	str	r2, [r3]
.L904:
	adds	r7, r7, #100
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	cf2_computeDarkening, .-cf2_computeDarkening
	.section	.text.cf2_font_setup,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_font_setup, %function
cf2_font_setup:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #64
	add	r7, sp, #16
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #132]
	str	r3, [r7, #36]
	movs	r3, #0
	strb	r3, [r7, #47]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #92]
	str	r3, [r7, #32]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #96]
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r0, [r7, #36]
	bl	cf2_getSubfont(PLT)
	str	r0, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #136]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	beq	.L922
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #24]
	str	r2, [r3, #136]
	movs	r3, #1
	strb	r3, [r7, #47]
.L922:
	ldr	r0, [r7, #36]
	bl	cf2_getPpemY(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #84]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	beq	.L923
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #20]
	str	r2, [r3, #84]
	movs	r3, #1
	strb	r3, [r7, #47]
.L923:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3, #140]
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	ldr	r0, [r7]
	mov	r1, r3
	movs	r2, #16
	bl	memcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L924
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	add	r4, r2, #12
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5, {r0, r1}
	stmia	r4, {r0, r1}
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #32]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #4]
	str	r2, [r3, #28]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	add	r4, r2, #36
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5, {r0, r1}
	stmia	r4, {r0, r1}
	ldr	r3, [r7, #4]
	mov	r2, #65536
	str	r2, [r3, #72]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #72]
	ldr	r3, [r7, #4]
	str	r2, [r3, #60]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #68]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #68]
	ldr	r3, [r7, #4]
	str	r2, [r3, #64]
	movs	r3, #1
	strb	r3, [r7, #47]
.L924:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #142]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	and	r3, r3, #2
	cmp	r2, r3
	beq	.L925
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	uxtb	r3, r3
	and	r3, r3, #2
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3, #142]
	movs	r3, #1
	strb	r3, [r7, #47]
.L925:
	ldrb	r3, [r7, #47]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L921
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	cmp	r3, #0
	bne	.L927
	mov	r3, #1000
	str	r3, [r7, #40]
.L927:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	cmp	r3, #262144
	it	lt
	movlt	r3, #262144
	str	r3, [r7, #20]
	mov	r0, #65536000
	ldr	r1, [r7, #40]
	bl	__aeabi_idiv(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r0, [r7, #36]
	bl	cf2_getStdVW(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #176]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #176]
	cmp	r3, #0
	bgt	.L928
	mov	r0, #4915200
	ldr	r1, [r7, #16]
	bl	FT_DivFix(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #176]
.L928:
	ldr	r3, [r7, #32]
	cmp	r3, #0
	ble	.L929
	ldr	r3, [r7, #40]
	lsls	r3, r3, #16
	mov	r0, r3
	ldr	r1, [r7, #20]
	bl	FT_DivFix(PLT)
	mov	r2, r0
	ldr	r3, [r7, #32]
	cmp	r2, r3
	blt	.L930
	ldr	r3, [r7, #40]
	lsls	r3, r3, #16
	mov	r0, r3
	ldr	r1, [r7, #20]
	bl	FT_DivFix(PLT)
	mov	r3, r0
	b	.L931
.L930:
	ldr	r3, [r7, #32]
.L931:
	str	r3, [r7, #32]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #176]
	ldr	r3, [r7, #4]
	adds	r3, r3, #184
	ldr	r1, [r7, #4]
	adds	r1, r1, #144
	ldr	r0, [r7, #32]
	str	r0, [sp]
	movs	r0, #0
	str	r0, [sp, #4]
	str	r1, [sp, #8]
	ldr	r0, [r7, #16]
	ldr	r1, [r7, #20]
	bl	cf2_computeDarkening(PLT)
	b	.L932
.L929:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #176]
	ldr	r3, [r7, #4]
	adds	r3, r3, #184
	ldr	r1, [r7, #4]
	ldrb	r0, [r1, #142]	@ zero_extendqisi2
	ldr	r1, [r7, #4]
	adds	r1, r1, #144
	movs	r4, #0
	str	r4, [sp]
	str	r0, [sp, #4]
	str	r1, [sp, #8]
	ldr	r0, [r7, #16]
	ldr	r1, [r7, #20]
	bl	cf2_computeDarkening(PLT)
.L932:
	ldr	r0, [r7, #36]
	bl	cf2_getStdHW(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	ble	.L933
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #176]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #1
	cmp	r2, r3
	ble	.L933
	mov	r0, #4915200
	ldr	r1, [r7, #16]
	bl	FT_DivFix(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #180]
	b	.L934
.L933:
	mov	r0, #7208960
	ldr	r1, [r7, #16]
	bl	FT_DivFix(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #180]
.L934:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #180]
	ldr	r3, [r7, #4]
	adds	r3, r3, #188
	ldr	r1, [r7, #4]
	ldrb	r0, [r1, #142]	@ zero_extendqisi2
	ldr	r1, [r7, #4]
	adds	r1, r1, #144
	ldr	r4, [r7, #28]
	str	r4, [sp]
	str	r0, [sp, #4]
	str	r1, [sp, #8]
	ldr	r0, [r7, #16]
	ldr	r1, [r7, #20]
	bl	cf2_computeDarkening(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #184]
	cmp	r3, #0
	bne	.L935
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #188]
	cmp	r3, #0
	beq	.L936
.L935:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #141]
	b	.L937
.L936:
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #141]
.L937:
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #192]
	ldr	r3, [r7, #4]
	adds	r3, r3, #196
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	cf2_blues_init(PLT)
.L921:
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.size	cf2_font_setup, .-cf2_font_setup
	.section	.text.cf2_getGlyphOutline,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_getGlyphOutline, %function
cf2_getGlyphOutline:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #56
	add	r7, sp, #16
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	str	r3, [r7, #28]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	bl	cf2_font_setup(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L939
	b	.L940
.L939:
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #192]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #141]
	strb	r3, [r7, #39]
.L945:
	ldr	r3, [r7, #12]
	adds	r3, r3, #100
	mov	r0, r3
	bl	cf2_outline_reset(PLT)
	ldr	r3, [r7, #12]
	add	r2, r3, #100
	add	r3, r7, #24
	movs	r1, #0
	str	r1, [sp]
	movs	r1, #0
	str	r1, [sp, #4]
	movs	r1, #0
	str	r1, [sp, #8]
	add	r1, r7, #20
	str	r1, [sp, #12]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	cf2_interpT2CharString(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L941
	b	.L940
.L941:
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L942
	b	.L943
.L942:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #116]
	cmp	r3, #0
	blt	.L944
	b	.L943
.L944:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #192]
	movs	r3, #0
	strb	r3, [r7, #39]
	b	.L945
.L943:
	ldr	r3, [r7, #12]
	adds	r3, r3, #100
	mov	r0, r3
	bl	cf2_outline_close(PLT)
.L940:
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #4
	mov	r0, r3
	ldr	r1, [r7, #32]
	bl	cf2_setError(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cf2_getGlyphOutline, .-cf2_getGlyphOutline
	.section	.text.cf2_checkTransform,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_checkTransform, %function
cf2_checkTransform:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L948
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	bgt	.L949
.L948:
	movs	r3, #36
	b	.L950
.L949:
	ldr	r3, [r7]
	cmp	r3, #32768
	blt	.L951
	movs	r3, #164
	b	.L950
.L951:
	ldr	r3, [r7]
	lsls	r3, r3, #16
	mov	r0, #131072000
	mov	r1, r3
	bl	FT_DivFix(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bgt	.L952
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	ble	.L953
.L952:
	movs	r3, #164
	b	.L950
.L953:
	movs	r3, #0
.L950:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cf2_checkTransform, .-cf2_checkTransform
	.section	.text.cf2_setGlyphWidth,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_setGlyphWidth, %function
cf2_setGlyphWidth:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	str	r3, [r7, #12]
	ldr	r3, [r7]
	add	r3, r3, #32768
	lsrs	r3, r3, #16
	uxth	r3, r3
	sxth	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #552]
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	cf2_setGlyphWidth, .-cf2_setGlyphWidth
	.section	.text.cf2_free_instance,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_free_instance, %function
cf2_free_instance:
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
	cmp	r3, #0
	beq	.L955
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #8]
.L955:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	cf2_free_instance, .-cf2_free_instance
	.section	.text.cf2_builder_moveTo,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_builder_moveTo, %function
cf2_builder_moveTo:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	str	r3, [r7, #8]
	ldr	r0, [r7, #8]
	bl	cff_builder_close_contour(PLT)
	ldr	r3, [r7, #8]
	movs	r2, #0
	strb	r2, [r3, #64]
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cf2_builder_moveTo, .-cf2_builder_moveTo
	.section	.text.cf2_builder_lineTo,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_builder_lineTo, %function
cf2_builder_lineTo:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #28]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldrb	r3, [r3, #64]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L959
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #16]
	mov	r1, r2
	mov	r2, r3
	bl	cff_builder_start_point(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L959
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L960
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	ldr	r2, [r7, #12]
	str	r2, [r3]
	b	.L958
.L960:
	b	.L958
.L959:
	ldr	r3, [r7]
	ldr	r2, [r3, #8]
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	ldr	r0, [r7, #16]
	mov	r1, r2
	mov	r2, r3
	bl	cff_builder_add_point1(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L958
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L962
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	ldr	r2, [r7, #12]
	str	r2, [r3]
.L962:
	nop
.L958:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cf2_builder_lineTo, .-cf2_builder_lineTo
	.section	.text.cf2_builder_cubeTo,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_builder_cubeTo, %function
cf2_builder_cubeTo:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #28]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldrb	r3, [r3, #64]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L964
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #16]
	mov	r1, r2
	mov	r2, r3
	bl	cff_builder_start_point(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L964
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L965
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	ldr	r2, [r7, #12]
	str	r2, [r3]
	b	.L963
.L965:
	b	.L963
.L964:
	ldr	r0, [r7, #16]
	movs	r1, #3
	bl	cff_check_points(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L967
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L968
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	ldr	r2, [r7, #12]
	str	r2, [r3]
	b	.L963
.L968:
	b	.L963
.L967:
	ldr	r3, [r7]
	ldr	r2, [r3, #8]
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	ldr	r0, [r7, #16]
	mov	r1, r2
	mov	r2, r3
	movs	r3, #0
	bl	cff_builder_add_point(PLT)
	ldr	r3, [r7]
	ldr	r2, [r3, #16]
	ldr	r3, [r7]
	ldr	r3, [r3, #20]
	ldr	r0, [r7, #16]
	mov	r1, r2
	mov	r2, r3
	movs	r3, #0
	bl	cff_builder_add_point(PLT)
	ldr	r3, [r7]
	ldr	r2, [r3, #24]
	ldr	r3, [r7]
	ldr	r3, [r3, #28]
	ldr	r0, [r7, #16]
	mov	r1, r2
	mov	r2, r3
	movs	r3, #1
	bl	cff_builder_add_point(PLT)
.L963:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cf2_builder_cubeTo, .-cf2_builder_cubeTo
	.section	.text.cf2_outline_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_outline_init, %function
cf2_outline_init:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r0, [r7, #12]
	movs	r1, #0
	movs	r2, #32
	bl	memset(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #20]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #12]
	ldr	r2, .L970
.LPIC48:
	add	r2, pc
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, .L970+4
.LPIC49:
	add	r2, pc
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r2, .L970+8
.LPIC50:
	add	r2, pc
	str	r2, [r3, #12]
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L971:
	.align	2
.L970:
	.word	cf2_builder_moveTo-(.LPIC48+4)
	.word	cf2_builder_lineTo-(.LPIC49+4)
	.word	cf2_builder_cubeTo-(.LPIC50+4)
	.size	cf2_outline_init, .-cf2_outline_init
	.section	.text.cf2_getScaleAndHintFlag,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_getScaleAndHintFlag, %function
cf2_getScaleAndHintFlag:
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	ldrb	r2, [r3, #160]	@ zero_extendqisi2
	ldr	r3, [r7]
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	ldrb	r2, [r3, #161]	@ zero_extendqisi2
	ldr	r3, [r7, #24]
	strb	r2, [r3]
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L973
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	ldr	r3, [r3, #164]
	adds	r3, r3, #32
	add	r2, r3, #63
	cmp	r3, #0
	ite	lt
	movlt	r3, r2
	movge	r3, r3
	asrs	r3, r3, #6
	mov	r2, r3
	ldr	r3, [r7, #8]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	ldr	r3, [r3, #168]
	adds	r3, r3, #32
	add	r2, r3, #63
	cmp	r3, #0
	ite	lt
	movlt	r3, r2
	movge	r3, r3
	asrs	r3, r3, #6
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
	b	.L972
.L973:
	ldr	r3, [r7, #8]
	mov	r2, #1024
	str	r2, [r3]
	ldr	r3, [r7, #4]
	mov	r2, #1024
	str	r2, [r3]
.L972:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	cf2_getScaleAndHintFlag, .-cf2_getScaleAndHintFlag
	.section	.text.cf2_getUnitsPerEm,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_getUnitsPerEm, %function
cf2_getUnitsPerEm:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldrh	r3, [r3, #68]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	cf2_getUnitsPerEm, .-cf2_getUnitsPerEm
	.section	.text.cf2_decoder_parse_charstrings,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_decoder_parse_charstrings, %function
cf2_decoder_parse_charstrings:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #100
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #64]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #80]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #76]
	ldr	r3, [r3, #2972]
	str	r3, [r7, #84]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #76]
	ldr	r3, [r3, #2972]
	cmp	r3, #0
	bne	.L978
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #76]
	ldr	r2, .L987
.LPIC51:
	add	r2, pc
	str	r2, [r3, #2976]
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #76]
	add	r3, r7, #64
	ldr	r0, [r7, #80]
	mov	r1, #504
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	mov	r3, r0
	str	r3, [r4, #2972]
	ldr	r3, [r7, #64]
	cmp	r3, #0
	beq	.L979
	movs	r3, #64
	b	.L986
.L979:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #76]
	ldr	r3, [r3, #2972]
	str	r3, [r7, #84]
	ldr	r3, [r7, #84]
	ldr	r2, [r7, #80]
	str	r2, [r3]
	ldr	r3, [r7, #84]
	add	r1, r3, #100
	ldr	r3, [r7, #84]
	ldr	r2, [r3]
	ldr	r3, [r7, #84]
	adds	r3, r3, #4
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	cf2_outline_init(PLT)
.L978:
	ldr	r3, [r7, #84]
	ldr	r2, [r7, #12]
	str	r2, [r3, #132]
	ldr	r3, [r7, #84]
	ldr	r2, [r7, #12]
	str	r2, [r3, #128]
	ldr	r3, [r7, #12]
	str	r3, [r7, #76]
	ldr	r3, [r7, #76]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #96]
	str	r3, [r7, #72]
	movs	r3, #0
	str	r3, [r7, #68]
	add	r3, r7, #48
	mov	r0, r3
	movs	r1, #0
	movs	r2, #16
	bl	memset(PLT)
	ldr	r3, [r7, #8]
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	str	r3, [r7, #52]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	str	r3, [r7, #56]
	add	r3, r7, #24
	mov	r0, r3
	movs	r1, #0
	movs	r2, #24
	bl	memset(PLT)
	add	r1, r7, #24
	add	r3, r7, #24
	add	r2, r3, #12
	add	r3, r7, #19
	add	r0, r7, #18
	str	r0, [sp]
	ldr	r0, [r7, #12]
	bl	cf2_getScaleAndHintFlag(PLT)
	ldr	r3, [r7, #84]
	movs	r2, #0
	str	r2, [r3, #8]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L981
	ldr	r3, [r7, #84]
	ldr	r3, [r3, #8]
	orr	r2, r3, #1
	ldr	r3, [r7, #84]
	str	r2, [r3, #8]
.L981:
	ldrb	r3, [r7, #18]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L982
	ldr	r3, [r7, #72]
	ldrb	r3, [r3, #32]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L982
	ldr	r3, [r7, #84]
	ldr	r3, [r3, #8]
	orr	r2, r3, #2
	ldr	r3, [r7, #84]
	str	r2, [r3, #8]
.L982:
	ldr	r3, [r7, #72]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #84]
	str	r2, [r3, #144]
	ldr	r3, [r7, #72]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #84]
	str	r2, [r3, #148]
	ldr	r3, [r7, #72]
	ldr	r2, [r3, #44]
	ldr	r3, [r7, #84]
	str	r2, [r3, #152]
	ldr	r3, [r7, #72]
	ldr	r2, [r3, #48]
	ldr	r3, [r7, #84]
	str	r2, [r3, #156]
	ldr	r3, [r7, #72]
	ldr	r2, [r3, #52]
	ldr	r3, [r7, #84]
	str	r2, [r3, #160]
	ldr	r3, [r7, #72]
	ldr	r2, [r3, #56]
	ldr	r3, [r7, #84]
	str	r2, [r3, #164]
	ldr	r3, [r7, #72]
	ldr	r2, [r3, #60]
	ldr	r3, [r7, #84]
	str	r2, [r3, #168]
	ldr	r3, [r7, #72]
	ldr	r2, [r3, #64]
	ldr	r3, [r7, #84]
	str	r2, [r3, #172]
	ldr	r0, [r7, #12]
	bl	cf2_getUnitsPerEm(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #84]
	str	r2, [r3, #88]
	ldrb	r3, [r7, #18]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L983
	ldr	r3, [r7, #84]
	ldr	r3, [r3, #88]
	add	r2, r7, #24
	mov	r0, r2
	mov	r1, r3
	bl	cf2_checkTransform(PLT)
	str	r0, [r7, #68]
	ldr	r3, [r7, #68]
	cmp	r3, #0
	beq	.L983
	ldr	r3, [r7, #68]
	b	.L986
.L983:
	add	r1, r7, #48
	add	r2, r7, #24
	add	r3, r7, #20
	ldr	r0, [r7, #84]
	bl	cf2_getGlyphOutline(PLT)
	str	r0, [r7, #68]
	ldr	r3, [r7, #68]
	cmp	r3, #0
	beq	.L985
	movs	r3, #3
	b	.L986
.L985:
	ldr	r3, [r7, #84]
	add	r2, r3, #100
	ldr	r3, [r7, #20]
	mov	r0, r2
	mov	r1, r3
	bl	cf2_setGlyphWidth(PLT)
	movs	r3, #0
.L986:
	mov	r0, r3
	adds	r7, r7, #92
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L988:
	.align	2
.L987:
	.word	cf2_free_instance-(.LPIC51+4)
	.size	cf2_decoder_parse_charstrings, .-cf2_decoder_parse_charstrings
	.section	.text.cf2_getSubfont,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_getSubfont, %function
cf2_getSubfont:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #736]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	cf2_getSubfont, .-cf2_getSubfont
	.section	.text.cf2_getPpemY,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_getPpemY, %function
cf2_getPpemY:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #88]
	ldrh	r3, [r3, #14]
	lsls	r3, r3, #16
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	cf2_getPpemY, .-cf2_getPpemY
	.section	.text.cf2_getStdVW,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_getStdVW, %function
cf2_getStdVW:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #736]
	ldr	r3, [r3, #388]
	lsls	r3, r3, #16
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	cf2_getStdVW, .-cf2_getStdVW
	.section	.text.cf2_getStdHW,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_getStdHW, %function
cf2_getStdHW:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #736]
	ldr	r3, [r3, #384]
	lsls	r3, r3, #16
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	cf2_getStdHW, .-cf2_getStdHW
	.section	.text.cf2_getBlueMetrics,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_getBlueMetrics, %function
cf2_getBlueMetrics:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #736]
	ldr	r3, [r3, #372]
	mov	r0, r3
	mov	r1, #65536000
	bl	FT_DivFix(PLT)
	mov	r2, r0
	ldr	r3, [r7, #8]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #736]
	ldr	r3, [r3, #376]
	lsls	r3, r3, #16
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #736]
	ldr	r3, [r3, #380]
	lsls	r3, r3, #16
	mov	r2, r3
	ldr	r3, [r7]
	str	r2, [r3]
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cf2_getBlueMetrics, .-cf2_getBlueMetrics
	.section	.text.cf2_getBlueValues,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_getBlueValues, %function
cf2_getBlueValues:
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
	ldr	r3, [r3, #736]
	ldrb	r3, [r3, #176]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #8]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #736]
	add	r2, r3, #180
	ldr	r3, [r7, #4]
	str	r2, [r3]
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	cf2_getBlueValues, .-cf2_getBlueValues
	.section	.text.cf2_getOtherBlues,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_getOtherBlues, %function
cf2_getOtherBlues:
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
	ldr	r3, [r3, #736]
	ldrb	r3, [r3, #177]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #8]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #736]
	add	r2, r3, #236
	ldr	r3, [r7, #4]
	str	r2, [r3]
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	cf2_getOtherBlues, .-cf2_getOtherBlues
	.section	.text.cf2_getFamilyBlues,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_getFamilyBlues, %function
cf2_getFamilyBlues:
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
	ldr	r3, [r3, #736]
	ldrb	r3, [r3, #178]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #8]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #736]
	add	r2, r3, #276
	ldr	r3, [r7, #4]
	str	r2, [r3]
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	cf2_getFamilyBlues, .-cf2_getFamilyBlues
	.section	.text.cf2_getFamilyOtherBlues,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_getFamilyOtherBlues, %function
cf2_getFamilyOtherBlues:
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
	ldr	r3, [r3, #736]
	ldrb	r3, [r3, #179]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #8]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #736]
	add	r2, r3, #332
	ldr	r3, [r7, #4]
	str	r2, [r3]
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	cf2_getFamilyOtherBlues, .-cf2_getFamilyOtherBlues
	.section	.text.cf2_getLanguageGroup,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_getLanguageGroup, %function
cf2_getLanguageGroup:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #736]
	ldr	r3, [r3, #512]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	cf2_getLanguageGroup, .-cf2_getLanguageGroup
	.section	.text.cf2_initGlobalRegionBuffer,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_initGlobalRegionBuffer, %function
cf2_initGlobalRegionBuffer:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r0, [r7, #4]
	movs	r1, #0
	movs	r2, #16
	bl	memset(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #708]
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #700]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bhi	.L1005
	movs	r3, #1
	b	.L1006
.L1005:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #716]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #716]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	movs	r3, #0
.L1006:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cf2_initGlobalRegionBuffer, .-cf2_initGlobalRegionBuffer
	.section	.text.cf2_getSeacComponent,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_getSeacComponent, %function
cf2_getSeacComponent:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r0, [r7, #4]
	movs	r1, #0
	movs	r2, #16
	bl	memset(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #128]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L1008
	ldr	r3, [r7, #8]
	str	r3, [r7, #28]
	b	.L1009
.L1008:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #76]
	mov	r0, r3
	ldr	r1, [r7, #8]
	bl	cff_lookup_glyph_by_stdcharcode(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bge	.L1009
	movs	r3, #18
	b	.L1012
.L1009:
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #4]
	ldr	r1, [r7, #28]
	add	r2, r7, #20
	add	r3, r7, #16
	bl	cff_get_glyph_data(PLT)
	str	r0, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L1011
	ldr	r3, [r7, #24]
	b	.L1012
.L1011:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	movs	r3, #0
.L1012:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cf2_getSeacComponent, .-cf2_getSeacComponent
	.section	.text.cf2_freeSeacComponent,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_freeSeacComponent, %function
cf2_freeSeacComponent:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #4]
	ldr	r3, [r7]
	adds	r2, r3, #4
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	mov	r0, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	subs	r3, r0, r3
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	cff_free_glyph_data(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cf2_freeSeacComponent, .-cf2_freeSeacComponent
	.section	.text.cf2_initLocalRegionBuffer,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_initLocalRegionBuffer, %function
cf2_initLocalRegionBuffer:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r0, [r7, #4]
	movs	r1, #0
	movs	r2, #16
	bl	memset(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #704]
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #696]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bhi	.L1015
	movs	r3, #1
	b	.L1016
.L1015:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #712]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #712]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	movs	r3, #0
.L1016:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cf2_initLocalRegionBuffer, .-cf2_initLocalRegionBuffer
	.section	.text.cf2_getDefaultWidthX,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_getDefaultWidthX, %function
cf2_getDefaultWidthX:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #736]
	ldr	r3, [r3, #528]
	lsls	r3, r3, #16
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	cf2_getDefaultWidthX, .-cf2_getDefaultWidthX
	.section	.text.cf2_getNominalWidthX,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_getNominalWidthX, %function
cf2_getNominalWidthX:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #736]
	ldr	r3, [r3, #532]
	lsls	r3, r3, #16
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	cf2_getNominalWidthX, .-cf2_getNominalWidthX
	.section	.text.cf2_outline_reset,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_outline_reset, %function
cf2_outline_reset:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	mov	r0, r3
	bl	FT_GlyphLoader_Rewind(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cf2_outline_reset, .-cf2_outline_reset
	.section	.text.cf2_outline_close,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_outline_close, %function
cf2_outline_close:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	cff_builder_close_contour(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	mov	r0, r3
	bl	FT_GlyphLoader_Add(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cf2_outline_close, .-cf2_outline_close
	.section	.text.cf2_getWindingMomentum,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_getWindingMomentum, %function
cf2_getWindingMomentum:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	asrs	r3, r3, #16
	ldr	r1, [r7]
	ldr	r2, [r7, #8]
	subs	r2, r1, r2
	asrs	r2, r2, #16
	mul	r2, r2, r3
	ldr	r3, [r7, #8]
	asrs	r3, r3, #16
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #12]
	subs	r1, r0, r1
	asrs	r1, r1, #16
	mul	r3, r1, r3
	subs	r3, r2, r3
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	cf2_getWindingMomentum, .-cf2_getWindingMomentum
	.section	.text.cf2_hint_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_hint_init, %function
cf2_hint_init:
	@ args = 12, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r0, [r7, #12]
	movs	r1, #0
	movs	r2, #20
	bl	memset(PLT)
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #4]
	bl	cf2_arrstack_getPointer(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmn	r3, #1376256
	bne	.L1026
	ldrb	r3, [r7, #40]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1027
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	movs	r2, #1
	str	r2, [r3]
	b	.L1029
.L1027:
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3]
	b	.L1029
.L1026:
	ldr	r3, [r7, #16]
	cmn	r3, #1310720
	bne	.L1030
	ldrb	r3, [r7, #40]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1031
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3]
	b	.L1029
.L1031:
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	movs	r2, #2
	str	r2, [r3]
	b	.L1029
.L1030:
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bge	.L1033
	ldrb	r3, [r7, #40]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1034
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	movs	r2, #4
	str	r2, [r3]
	b	.L1029
.L1034:
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	movs	r2, #8
	str	r2, [r3]
	b	.L1029
.L1033:
	ldrb	r3, [r7, #40]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1036
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	movs	r2, #4
	str	r2, [r3]
	b	.L1029
.L1036:
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	movs	r2, #8
	str	r2, [r3]
.L1029:
	ldr	r0, [r7, #12]
	bl	cf2_hint_isTop(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1037
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7]
	ldr	r3, [r3, #188]
	lsls	r3, r3, #1
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
.L1037:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #32]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #36]
	str	r2, [r3, #16]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L1038
	ldr	r3, [r7, #20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1038
	ldr	r0, [r7, #12]
	bl	cf2_hint_isTop(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1039
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #12]
	str	r2, [r3, #12]
	b	.L1040
.L1039:
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	str	r2, [r3, #12]
.L1040:
	ldr	r0, [r7, #12]
	bl	cf2_hint_lock(PLT)
	b	.L1025
.L1038:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	mov	r0, r3
	ldr	r1, [r7, #36]
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #12]
.L1025:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cf2_hint_init, .-cf2_hint_init
	.section	.text.cf2_hint_initZero,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_hint_initZero, %function
cf2_hint_initZero:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	movs	r1, #0
	movs	r2, #20
	bl	memset(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cf2_hint_initZero, .-cf2_hint_initZero
	.section	.text.cf2_hint_isValid,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_hint_isValid, %function
cf2_hint_isValid:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
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
	.size	cf2_hint_isValid, .-cf2_hint_isValid
	.section	.text.cf2_hint_isPair,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_hint_isPair, %function
cf2_hint_isPair:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r3, r3, #12
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
	.size	cf2_hint_isPair, .-cf2_hint_isPair
	.section	.text.cf2_hint_isPairTop,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_hint_isPairTop, %function
cf2_hint_isPairTop:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r3, r3, #8
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
	.size	cf2_hint_isPairTop, .-cf2_hint_isPairTop
	.section	.text.cf2_hint_isTop,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_hint_isTop, %function
cf2_hint_isTop:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r3, r3, #10
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
	.size	cf2_hint_isTop, .-cf2_hint_isTop
	.section	.text.cf2_hint_isBottom,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_hint_isBottom, %function
cf2_hint_isBottom:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r3, r3, #5
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
	.size	cf2_hint_isBottom, .-cf2_hint_isBottom
	.section	.text.cf2_hint_isLocked,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_hint_isLocked, %function
cf2_hint_isLocked:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r3, r3, #16
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
	.size	cf2_hint_isLocked, .-cf2_hint_isLocked
	.section	.text.cf2_hint_isSynthetic,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_hint_isSynthetic, %function
cf2_hint_isSynthetic:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r3, r3, #32
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
	.size	cf2_hint_isSynthetic, .-cf2_hint_isSynthetic
	.section	.text.cf2_hint_lock,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_hint_lock, %function
cf2_hint_lock:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r3, #16
	ldr	r3, [r7, #4]
	str	r2, [r3]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	cf2_hint_lock, .-cf2_hint_lock
	.section	.text.cf2_hintmap_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_hintmap_init, %function
cf2_hintmap_init:
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r0, [r7, #12]
	movs	r1, #0
	movw	r2, #3868
	bl	memset(PLT)
	ldr	r3, [r7, #8]
	ldrb	r2, [r3, #140]	@ zero_extendqisi2
	ldr	r3, [r7, #12]
	strb	r2, [r3, #13]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #24]
	str	r2, [r3, #16]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	str	r2, [r3, #8]
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cf2_hintmap_init, .-cf2_hintmap_init
	.section	.text.cf2_hintmap_isValid,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_hintmap_isValid, %function
cf2_hintmap_isValid:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	cf2_hintmap_isValid, .-cf2_hintmap_isValid
	.section	.text.cf2_hintmap_map,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_hintmap_map, %function
cf2_hintmap_map:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L1062
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #13]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L1063
.L1062:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r0, [r7]
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r3, r0
	b	.L1064
.L1063:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	str	r3, [r7, #12]
	b	.L1065
.L1067:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L1065:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	subs	r2, r3, #1
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bls	.L1066
	ldr	r3, [r7, #12]
	adds	r2, r3, #1
	ldr	r1, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #36
	ldr	r2, [r3]
	ldr	r3, [r7]
	cmp	r2, r3
	ble	.L1067
.L1066:
	b	.L1068
.L1070:
	ldr	r3, [r7, #12]
	subs	r3, r3, #1
	str	r3, [r7, #12]
.L1068:
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L1069
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #36
	ldr	r2, [r3]
	ldr	r3, [r7]
	cmp	r2, r3
	bgt	.L1070
.L1069:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #24]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L1071
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #36]
	ldr	r3, [r7]
	cmp	r2, r3
	ble	.L1071
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	ldr	r2, [r7]
	subs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	add	r3, r3, r2
	b	.L1064
.L1071:
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #36
	ldr	r3, [r3]
	ldr	r2, [r7]
	subs	r1, r2, r3
	ldr	r0, [r7, #4]
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	adds	r3, r3, #44
	ldr	r3, [r3]
	mov	r0, r1
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r1, r0
	ldr	r0, [r7, #4]
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	adds	r3, r3, #40
	ldr	r3, [r3]
	add	r3, r3, r1
.L1064:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cf2_hintmap_map, .-cf2_hintmap_map
	.section	.text.cf2_hintmap_adjustHints,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_hintmap_adjustHints, %function
cf2_hintmap_adjustHints:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #80
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r0, r3
	bl	cf2_arrstack_clear(PLT)
	movs	r3, #0
	str	r3, [r7, #76]
	b	.L1073
.L1095:
	ldr	r2, [r7, #76]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #24
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #4
	mov	r0, r3
	bl	cf2_hint_isPair(PLT)
	mov	r3, r0
	strb	r3, [r7, #70]
	ldrb	r3, [r7, #70]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1074
	ldr	r3, [r7, #76]
	adds	r3, r3, #1
	b	.L1075
.L1074:
	ldr	r3, [r7, #76]
.L1075:
	str	r3, [r7, #64]
	ldr	r2, [r7, #76]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #24
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #4
	mov	r0, r3
	bl	cf2_hint_isLocked(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L1076
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #76]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #40
	ldr	r3, [r3]
	uxth	r3, r3
	str	r3, [r7, #60]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #64]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #40
	ldr	r3, [r3]
	uxth	r3, r3
	str	r3, [r7, #56]
	ldr	r3, [r7, #60]
	negs	r3, r3
	str	r3, [r7, #52]
	ldr	r3, [r7, #56]
	negs	r3, r3
	str	r3, [r7, #48]
	ldr	r3, [r7, #60]
	cmp	r3, #0
	beq	.L1077
	ldr	r3, [r7, #60]
	rsb	r3, r3, #65536
	b	.L1078
.L1077:
	movs	r3, #0
.L1078:
	str	r3, [r7, #44]
	ldr	r3, [r7, #56]
	cmp	r3, #0
	beq	.L1079
	ldr	r3, [r7, #56]
	rsb	r3, r3, #65536
	b	.L1080
.L1079:
	movs	r3, #0
.L1080:
	str	r3, [r7, #40]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #44]
	cmp	r3, r2
	it	ge
	movge	r3, r2
	str	r3, [r7, #36]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #52]
	cmp	r3, r2
	it	lt
	movlt	r3, r2
	str	r3, [r7, #32]
	mov	r3, #32768
	str	r3, [r7, #28]
	mov	r3, #32768
	str	r3, [r7, #24]
	movs	r3, #0
	strb	r3, [r7, #71]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	subs	r2, r3, #1
	ldr	r3, [r7, #64]
	cmp	r2, r3
	bls	.L1081
	ldr	r3, [r7, #64]
	adds	r2, r3, #1
	ldr	r1, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #40
	ldr	r1, [r3]
	ldr	r0, [r7, #4]
	ldr	r2, [r7, #64]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	adds	r3, r3, #40
	ldr	r2, [r3]
	ldr	r3, [r7, #36]
	add	r2, r2, r3
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	cmp	r1, r3
	blt	.L1082
.L1081:
	ldr	r3, [r7, #76]
	cmp	r3, #0
	beq	.L1083
	ldr	r3, [r7, #76]
	subs	r2, r3, #1
	ldr	r1, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #40
	ldr	r1, [r3]
	ldr	r0, [r7, #4]
	ldr	r2, [r7, #76]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	adds	r3, r3, #40
	ldr	r2, [r3]
	ldr	r3, [r7, #32]
	add	r2, r2, r3
	ldr	r3, [r7, #28]
	subs	r3, r2, r3
	cmp	r1, r3
	bgt	.L1084
.L1083:
	ldr	r3, [r7, #32]
	negs	r2, r3
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bge	.L1085
	ldr	r3, [r7, #32]
	b	.L1086
.L1085:
	ldr	r3, [r7, #36]
.L1086:
	str	r3, [r7, #72]
	b	.L1088
.L1084:
	ldr	r3, [r7, #36]
	str	r3, [r7, #72]
	b	.L1088
.L1082:
	ldr	r3, [r7, #76]
	cmp	r3, #0
	beq	.L1089
	ldr	r3, [r7, #76]
	subs	r2, r3, #1
	ldr	r1, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #40
	ldr	r1, [r3]
	ldr	r0, [r7, #4]
	ldr	r2, [r7, #76]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	adds	r3, r3, #40
	ldr	r2, [r3]
	ldr	r3, [r7, #32]
	add	r2, r2, r3
	ldr	r3, [r7, #28]
	subs	r3, r2, r3
	cmp	r1, r3
	bgt	.L1090
.L1089:
	ldr	r3, [r7, #32]
	str	r3, [r7, #72]
	ldr	r3, [r7, #32]
	negs	r2, r3
	ldr	r3, [r7, #36]
	cmp	r2, r3
	ite	gt
	movgt	r3, #1
	movle	r3, #0
	uxtb	r3, r3
	strb	r3, [r7, #71]
	b	.L1088
.L1090:
	movs	r3, #0
	str	r3, [r7, #72]
	movs	r3, #1
	strb	r3, [r7, #71]
.L1088:
	ldrb	r3, [r7, #71]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1091
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	subs	r2, r3, #1
	ldr	r3, [r7, #64]
	cmp	r2, r3
	bls	.L1091
	ldr	r3, [r7, #64]
	adds	r2, r3, #1
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #24
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #4
	mov	r0, r3
	bl	cf2_hint_isLocked(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L1091
	ldr	r3, [r7, #64]
	str	r3, [r7, #12]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #72]
	subs	r3, r2, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	add	r3, r7, #12
	mov	r0, r2
	mov	r1, r3
	bl	cf2_arrstack_push(PLT)
.L1091:
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #76]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #40
	ldr	r2, [r3]
	ldr	r3, [r7, #72]
	adds	r1, r2, r3
	ldr	r0, [r7, #4]
	ldr	r2, [r7, #76]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	adds	r3, r3, #40
	str	r1, [r3]
	ldrb	r3, [r7, #70]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1076
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #64]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #40
	ldr	r2, [r3]
	ldr	r3, [r7, #72]
	adds	r1, r2, r3
	ldr	r0, [r7, #4]
	ldr	r2, [r7, #64]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	adds	r3, r3, #40
	str	r1, [r3]
.L1076:
	ldr	r3, [r7, #76]
	cmp	r3, #0
	beq	.L1092
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #76]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #36
	ldr	r1, [r3]
	ldr	r3, [r7, #76]
	subs	r2, r3, #1
	ldr	r0, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	adds	r3, r3, #36
	ldr	r3, [r3]
	cmp	r1, r3
	beq	.L1092
	ldr	r3, [r7, #76]
	subs	r4, r3, #1
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #76]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #40
	ldr	r1, [r3]
	ldr	r3, [r7, #76]
	subs	r2, r3, #1
	ldr	r0, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	adds	r3, r3, #40
	ldr	r3, [r3]
	subs	r1, r1, r3
	ldr	r0, [r7, #4]
	ldr	r2, [r7, #76]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	adds	r3, r3, #36
	ldr	r0, [r3]
	ldr	r3, [r7, #76]
	subs	r2, r3, #1
	ldr	r5, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r5
	adds	r3, r3, #36
	ldr	r3, [r3]
	subs	r3, r0, r3
	mov	r0, r1
	mov	r1, r3
	bl	FT_DivFix(PLT)
	mov	r2, r0
	ldr	r1, [r7, #4]
	mov	r3, r4
	lsls	r3, r3, #2
	add	r3, r3, r4
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #44
	str	r2, [r3]
.L1092:
	ldrb	r3, [r7, #70]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1093
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #64]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #36
	ldr	r1, [r3]
	ldr	r3, [r7, #64]
	subs	r2, r3, #1
	ldr	r0, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	adds	r3, r3, #36
	ldr	r3, [r3]
	cmp	r1, r3
	beq	.L1094
	ldr	r3, [r7, #64]
	subs	r4, r3, #1
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #64]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #40
	ldr	r1, [r3]
	ldr	r3, [r7, #64]
	subs	r2, r3, #1
	ldr	r0, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	adds	r3, r3, #40
	ldr	r3, [r3]
	subs	r1, r1, r3
	ldr	r0, [r7, #4]
	ldr	r2, [r7, #64]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	adds	r3, r3, #36
	ldr	r0, [r3]
	ldr	r3, [r7, #64]
	subs	r2, r3, #1
	ldr	r5, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r5
	adds	r3, r3, #36
	ldr	r3, [r3]
	subs	r3, r0, r3
	mov	r0, r1
	mov	r1, r3
	bl	FT_DivFix(PLT)
	mov	r2, r0
	ldr	r1, [r7, #4]
	mov	r3, r4
	lsls	r3, r3, #2
	add	r3, r3, r4
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #44
	str	r2, [r3]
.L1094:
	ldr	r3, [r7, #76]
	adds	r3, r3, #1
	str	r3, [r7, #76]
.L1093:
	ldr	r3, [r7, #76]
	adds	r3, r3, #1
	str	r3, [r7, #76]
.L1073:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #76]
	cmp	r2, r3
	bhi	.L1095
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r0, r3
	bl	cf2_arrstack_size(PLT)
	str	r0, [r7, #76]
	b	.L1096
.L1098:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #76]
	subs	r3, r3, #1
	mov	r0, r2
	mov	r1, r3
	bl	cf2_arrstack_getPointer(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	str	r3, [r7, #64]
	ldr	r3, [r7, #64]
	adds	r2, r3, #1
	ldr	r1, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #40
	ldr	r1, [r3]
	ldr	r0, [r7, #4]
	ldr	r2, [r7, #64]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	adds	r3, r3, #40
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	add	r3, r3, r2
	add	r3, r3, #32768
	cmp	r1, r3
	blt	.L1097
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #64]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #40
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	adds	r1, r2, r3
	ldr	r0, [r7, #4]
	ldr	r2, [r7, #64]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	adds	r3, r3, #40
	str	r1, [r3]
	ldr	r2, [r7, #64]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #24
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #4
	mov	r0, r3
	bl	cf2_hint_isPair(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1097
	ldr	r3, [r7, #64]
	subs	r2, r3, #1
	ldr	r3, [r7, #64]
	subs	r1, r3, #1
	ldr	r0, [r7, #4]
	mov	r3, r1
	lsls	r3, r3, #2
	add	r3, r3, r1
	lsls	r3, r3, #2
	add	r3, r3, r0
	adds	r3, r3, #40
	ldr	r1, [r3]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	add	r1, r1, r3
	ldr	r0, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	adds	r3, r3, #40
	str	r1, [r3]
.L1097:
	ldr	r3, [r7, #76]
	subs	r3, r3, #1
	str	r3, [r7, #76]
.L1096:
	ldr	r3, [r7, #76]
	cmp	r3, #0
	bne	.L1098
	adds	r7, r7, #80
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.size	cf2_hintmap_adjustHints, .-cf2_hintmap_adjustHints
	.section	.text.cf2_hintmap_insertHint,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_hintmap_insertHint, %function
cf2_hintmap_insertHint:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #56
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #1
	strb	r3, [r7, #51]
	ldr	r3, [r7, #8]
	str	r3, [r7, #44]
	ldr	r3, [r7, #4]
	str	r3, [r7, #28]
	ldr	r0, [r7, #8]
	bl	cf2_hint_isValid(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L1100
	ldr	r3, [r7, #4]
	str	r3, [r7, #44]
	movs	r3, #0
	strb	r3, [r7, #51]
	b	.L1101
.L1100:
	ldr	r0, [r7, #4]
	bl	cf2_hint_isValid(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L1101
	movs	r3, #0
	strb	r3, [r7, #51]
.L1101:
	ldrb	r3, [r7, #51]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1102
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	bge	.L1102
	b	.L1099
.L1102:
	movs	r3, #0
	str	r3, [r7, #52]
	b	.L1104
.L1107:
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #52]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #36
	ldr	r2, [r3]
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	blt	.L1105
	b	.L1106
.L1105:
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	str	r3, [r7, #52]
.L1104:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bhi	.L1107
.L1106:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bls	.L1108
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #52]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #36
	ldr	r2, [r3]
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	bne	.L1109
	b	.L1099
.L1109:
	ldrb	r3, [r7, #51]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1110
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #52]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #36
	ldr	r2, [r3]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	bgt	.L1110
	b	.L1099
.L1110:
	ldr	r2, [r7, #52]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #24
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	adds	r3, r3, #4
	mov	r0, r3
	bl	cf2_hint_isPairTop(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1108
	b	.L1099
.L1108:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	cf2_hintmap_isValid(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1111
	ldr	r0, [r7, #44]
	bl	cf2_hint_isLocked(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L1111
	ldrb	r3, [r7, #51]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1112
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #28]
	ldr	r1, [r3, #8]
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #8]
	add	r3, r3, r1
	lsrs	r1, r3, #31
	add	r3, r3, r1
	asrs	r3, r3, #1
	mov	r0, r2
	mov	r1, r3
	bl	cf2_hintmap_map(PLT)
	str	r0, [r7, #24]
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #8]
	subs	r3, r2, r3
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	mov	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	str	r0, [r7, #20]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #20]
	subs	r2, r2, r3
	ldr	r3, [r7, #44]
	str	r2, [r3, #12]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #20]
	add	r2, r2, r3
	ldr	r3, [r7, #28]
	str	r2, [r3, #12]
	b	.L1111
.L1112:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #8]
	mov	r0, r2
	mov	r1, r3
	bl	cf2_hintmap_map(PLT)
	mov	r2, r0
	ldr	r3, [r7, #44]
	str	r2, [r3, #12]
.L1111:
	ldr	r3, [r7, #52]
	cmp	r3, #0
	beq	.L1113
	ldr	r3, [r7, #44]
	ldr	r1, [r3, #12]
	ldr	r3, [r7, #52]
	subs	r2, r3, #1
	ldr	r0, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	adds	r3, r3, #40
	ldr	r3, [r3]
	cmp	r1, r3
	bge	.L1113
	b	.L1099
.L1113:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bls	.L1114
	ldrb	r3, [r7, #51]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1115
	ldr	r3, [r7, #28]
	ldr	r1, [r3, #12]
	ldr	r0, [r7, #12]
	ldr	r2, [r7, #52]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	adds	r3, r3, #40
	ldr	r3, [r3]
	cmp	r1, r3
	ble	.L1114
	b	.L1099
.L1115:
	ldr	r3, [r7, #44]
	ldr	r1, [r3, #12]
	ldr	r0, [r7, #12]
	ldr	r2, [r7, #52]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	adds	r3, r3, #40
	ldr	r3, [r3]
	cmp	r1, r3
	ble	.L1114
	b	.L1099
.L1114:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #20]
	subs	r3, r3, #1
	str	r3, [r7, #40]
	ldrb	r3, [r7, #51]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1116
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #20]
	adds	r3, r3, #1
	b	.L1117
.L1116:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #20]
.L1117:
	str	r3, [r7, #36]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #52]
	subs	r3, r2, r3
	str	r3, [r7, #32]
	ldr	r3, [r7, #36]
	cmp	r3, #191
	bls	.L1118
	b	.L1099
.L1118:
	b	.L1119
.L1120:
	ldr	r1, [r7, #36]
	subs	r3, r1, #1
	str	r3, [r7, #36]
	ldr	r2, [r7, #40]
	subs	r3, r2, #1
	str	r3, [r7, #40]
	ldr	r0, [r7, #12]
	mov	r3, r1
	lsls	r3, r3, #2
	add	r3, r3, r1
	lsls	r3, r3, #2
	add	r3, r3, r0
	add	r1, r3, #24
	ldr	r0, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	adds	r3, r3, #24
	adds	r4, r1, #4
	adds	r5, r3, #4
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
.L1119:
	ldr	r3, [r7, #32]
	subs	r2, r3, #1
	str	r2, [r7, #32]
	cmp	r3, #0
	bne	.L1120
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #52]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	add	r2, r3, #24
	ldr	r3, [r7, #44]
	adds	r4, r2, #4
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #20]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #20]
	ldrb	r3, [r7, #51]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1121
	ldr	r3, [r7, #52]
	adds	r2, r3, #1
	ldr	r1, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	add	r2, r3, #24
	ldr	r3, [r7, #28]
	adds	r4, r2, #4
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #20]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #20]
.L1121:
	nop
.L1099:
	adds	r7, r7, #56
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.size	cf2_hintmap_insertHint, .-cf2_hintmap_insertHint
	.section	.text.cf2_hintmap_build,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_hintmap_build, %function
cf2_hintmap_build:
	@ args = 8, pretend = 0, frame = 208
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #224
	add	r7, sp, #16
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #192]
	ldrb	r3, [r7, #228]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L1123
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	cf2_hintmap_isValid(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L1123
	ldr	r3, [r7]
	ldr	r3, [r3]
	add	r2, r7, #156
	mov	r0, r2
	mov	r1, r3
	bl	cf2_hintmask_init(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	add	r3, r7, #156
	ldr	r1, [r7, #224]
	str	r1, [sp]
	movs	r1, #1
	str	r1, [sp, #4]
	mov	r0, r2
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	cf2_hintmap_build(PLT)
.L1123:
	ldr	r0, [r7]
	bl	cf2_hintmask_isValid(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L1124
	ldr	r0, [r7, #8]
	bl	cf2_arrstack_size(PLT)
	mov	r4, r0
	ldr	r0, [r7, #4]
	bl	cf2_arrstack_size(PLT)
	mov	r3, r0
	add	r3, r3, r4
	ldr	r0, [r7]
	mov	r1, r3
	bl	cf2_hintmask_setAll(PLT)
	ldr	r0, [r7]
	bl	cf2_hintmask_isValid(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L1124
	b	.L1122
.L1124:
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7]
	add	r4, r7, #156
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5, {r0, r1, r2}
	stmia	r4, {r0, r1, r2}
	add	r3, r7, #156
	mov	r0, r3
	bl	cf2_hintmask_getMaskPtr(PLT)
	str	r0, [r7, #204]
	ldr	r0, [r7, #8]
	bl	cf2_arrstack_size(PLT)
	str	r0, [r7, #188]
	ldr	r3, [r7]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #188]
	cmp	r2, r3
	bcs	.L1126
	b	.L1122
.L1126:
	ldr	r3, [r7, #192]
	ldrb	r3, [r3, #205]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1127
	add	r3, r7, #136
	mov	r0, r3
	bl	cf2_hint_initZero(PLT)
	ldr	r3, [r7, #192]
	add	r2, r3, #244
	add	r3, r7, #136
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	bl	cf2_hintmap_insertHint(PLT)
	ldr	r3, [r7, #192]
	adds	r3, r3, #224
	add	r2, r7, #136
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	bl	cf2_hintmap_insertHint(PLT)
.L1127:
	movs	r3, #0
	str	r3, [r7, #200]
	movs	r3, #128
	strb	r3, [r7, #199]
	b	.L1128
.L1134:
	ldr	r3, [r7, #204]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldrb	r3, [r7, #199]
	ands	r3, r3, r2
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L1129
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #16]
	add	r3, r7, #116
	ldr	r1, [r7, #224]
	str	r1, [sp]
	str	r2, [sp, #4]
	movs	r2, #1
	str	r2, [sp, #8]
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #200]
	ldr	r3, [r7, #192]
	bl	cf2_hint_init(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #16]
	add	r3, r7, #96
	ldr	r1, [r7, #224]
	str	r1, [sp]
	str	r2, [sp, #4]
	movs	r2, #0
	str	r2, [sp, #8]
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #200]
	ldr	r3, [r7, #192]
	bl	cf2_hint_init(PLT)
	add	r3, r7, #116
	mov	r0, r3
	bl	cf2_hint_isLocked(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L1130
	add	r3, r7, #96
	mov	r0, r3
	bl	cf2_hint_isLocked(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L1130
	ldr	r3, [r7, #192]
	add	r1, r3, #196
	add	r2, r7, #116
	add	r3, r7, #96
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	cf2_blues_capture(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1129
.L1130:
	add	r2, r7, #116
	add	r3, r7, #96
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	bl	cf2_hintmap_insertHint(PLT)
	ldr	r3, [r7, #204]
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r2, r3
	ldrb	r3, [r7, #199]	@ zero_extendqisi2
	mvns	r3, r3
	uxtb	r3, r3
	ands	r3, r3, r2
	uxtb	r3, r3
	uxtb	r2, r3
	ldr	r3, [r7, #204]
	strb	r2, [r3]
.L1129:
	ldr	r3, [r7, #200]
	and	r3, r3, #7
	cmp	r3, #7
	bne	.L1132
	ldr	r3, [r7, #204]
	adds	r3, r3, #1
	str	r3, [r7, #204]
	movs	r3, #128
	strb	r3, [r7, #199]
	b	.L1133
.L1132:
	ldrb	r3, [r7, #199]	@ zero_extendqisi2
	lsrs	r3, r3, #1
	strb	r3, [r7, #199]
.L1133:
	ldr	r3, [r7, #200]
	adds	r3, r3, #1
	str	r3, [r7, #200]
.L1128:
	ldr	r2, [r7, #200]
	ldr	r3, [r7, #188]
	cmp	r2, r3
	bcc	.L1134
	ldrb	r3, [r7, #228]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1135
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L1136
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #36]
	cmp	r3, #0
	bgt	.L1136
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #20]
	subs	r2, r3, #1
	ldr	r1, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #36
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L1138
.L1136:
	add	r3, r7, #76
	mov	r0, r3
	bl	cf2_hint_initZero(PLT)
	movs	r3, #49
	str	r3, [r7, #76]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	str	r3, [r7, #92]
	add	r3, r7, #56
	mov	r0, r3
	bl	cf2_hint_initZero(PLT)
	add	r2, r7, #76
	add	r3, r7, #56
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	bl	cf2_hintmap_insertHint(PLT)
	b	.L1138
.L1135:
	add	r3, r7, #156
	mov	r0, r3
	bl	cf2_hintmask_getMaskPtr(PLT)
	str	r0, [r7, #204]
	movs	r3, #0
	str	r3, [r7, #200]
	movs	r3, #128
	strb	r3, [r7, #199]
	b	.L1139
.L1143:
	ldr	r3, [r7, #204]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldrb	r3, [r7, #199]
	ands	r3, r3, r2
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L1140
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #16]
	add	r3, r7, #36
	ldr	r1, [r7, #224]
	str	r1, [sp]
	str	r2, [sp, #4]
	movs	r2, #1
	str	r2, [sp, #8]
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #200]
	ldr	r3, [r7, #192]
	bl	cf2_hint_init(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #16]
	add	r3, r7, #16
	ldr	r1, [r7, #224]
	str	r1, [sp]
	str	r2, [sp, #4]
	movs	r2, #0
	str	r2, [sp, #8]
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #200]
	ldr	r3, [r7, #192]
	bl	cf2_hint_init(PLT)
	add	r2, r7, #36
	add	r3, r7, #16
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	bl	cf2_hintmap_insertHint(PLT)
.L1140:
	ldr	r3, [r7, #200]
	and	r3, r3, #7
	cmp	r3, #7
	bne	.L1141
	ldr	r3, [r7, #204]
	adds	r3, r3, #1
	str	r3, [r7, #204]
	movs	r3, #128
	strb	r3, [r7, #199]
	b	.L1142
.L1141:
	ldrb	r3, [r7, #199]	@ zero_extendqisi2
	lsrs	r3, r3, #1
	strb	r3, [r7, #199]
.L1142:
	ldr	r3, [r7, #200]
	adds	r3, r3, #1
	str	r3, [r7, #200]
.L1139:
	ldr	r2, [r7, #200]
	ldr	r3, [r7, #188]
	cmp	r2, r3
	bcc	.L1143
.L1138:
	ldr	r0, [r7, #12]
	bl	cf2_hintmap_adjustHints(PLT)
	ldrb	r3, [r7, #228]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L1144
	movs	r3, #0
	str	r3, [r7, #200]
	b	.L1145
.L1149:
	ldr	r2, [r7, #200]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #24
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	adds	r3, r3, #4
	mov	r0, r3
	bl	cf2_hint_isSynthetic(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L1146
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #200]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #32
	ldr	r3, [r3]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	cf2_arrstack_getPointer(PLT)
	str	r0, [r7, #184]
	ldr	r2, [r7, #200]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #24
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	adds	r3, r3, #4
	mov	r0, r3
	bl	cf2_hint_isTop(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1147
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #200]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #40
	ldr	r2, [r3]
	ldr	r3, [r7, #184]
	str	r2, [r3, #16]
	b	.L1148
.L1147:
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #200]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #40
	ldr	r2, [r3]
	ldr	r3, [r7, #184]
	str	r2, [r3, #12]
.L1148:
	ldr	r3, [r7, #184]
	movs	r2, #1
	strb	r2, [r3]
.L1146:
	ldr	r3, [r7, #200]
	adds	r3, r3, #1
	str	r3, [r7, #200]
.L1145:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #200]
	cmp	r2, r3
	bhi	.L1149
.L1144:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #12]
	ldr	r0, [r7]
	movs	r1, #0
	bl	cf2_hintmask_setNew(PLT)
.L1122:
	adds	r7, r7, #208
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.size	cf2_hintmap_build, .-cf2_hintmap_build
	.section	.text.cf2_glyphpath_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_glyphpath_init, %function
cf2_glyphpath_init:
	@ args = 24, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r0, [r7, #12]
	movs	r1, #0
	movw	r2, #11784
	bl	memset(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	add	r3, r3, #11584
	adds	r3, r3, #28
	ldr	r2, [r7, #8]
	ldr	r1, [r2]
	ldr	r2, [r7, #8]
	adds	r2, r2, #4
	mov	r0, r3
	movs	r3, #8
	bl	cf2_arrstack_init(PLT)
	ldr	r3, [r7, #12]
	add	r1, r3, #7744
	ldr	r3, [r7, #12]
	add	r2, r3, #7744
	ldr	r3, [r7, #12]
	add	r3, r3, #11584
	adds	r3, r3, #28
	ldr	r0, [r7]
	str	r0, [sp]
	mov	r0, r1
	ldr	r1, [r7, #8]
	bl	cf2_hintmap_init(PLT)
	ldr	r3, [r7, #12]
	addw	r1, r3, #3876
	ldr	r3, [r7, #12]
	add	r2, r3, #7744
	ldr	r3, [r7, #12]
	add	r3, r3, #11584
	adds	r3, r3, #28
	ldr	r0, [r7]
	str	r0, [sp]
	mov	r0, r1
	ldr	r1, [r7, #8]
	bl	cf2_hintmap_init(PLT)
	ldr	r3, [r7, #12]
	add	r1, r3, #8
	ldr	r3, [r7, #12]
	add	r2, r3, #7744
	ldr	r3, [r7, #12]
	add	r3, r3, #11584
	adds	r3, r3, #28
	ldr	r0, [r7]
	str	r0, [sp]
	mov	r0, r1
	ldr	r1, [r7, #8]
	bl	cf2_hintmap_init(PLT)
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #12]
	add	r3, r3, #11584
	adds	r3, r3, #60
	str	r2, [r3]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #44]
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	str	r2, [r3]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #48]
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #4
	str	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #8
	ldr	r2, [r7, #44]
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #20
	ldr	r2, [r7, #24]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #24
	ldr	r2, [r7, #28]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #28
	ldr	r2, [r7, #32]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #32
	ldr	r2, [r7, #36]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #36
	ldr	r2, [r7, #40]
	str	r2, [r3]
	ldr	r3, [r7, #8]
	ldrb	r2, [r3, #141]	@ zero_extendqisi2
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #18
	strb	r2, [r3]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #184]
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #40
	str	r2, [r3]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #188]
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #44
	str	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #44
	ldr	r3, [r3]
	eor	r2, r3, r3, asr #31
	sub	r2, r2, r3, asr #31
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #40
	ldr	r3, [r3]
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	cmp	r3, r2
	it	lt
	movlt	r3, r2
	lsls	r2, r3, #1
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #48
	str	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #52
	movw	r2, #6554
	str	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #19
	movs	r2, #1
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #16
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #17
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	adds	r3, r3, #32
	movs	r2, #0
	strb	r2, [r3]
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cf2_glyphpath_init, .-cf2_glyphpath_init
	.section	.text.cf2_glyphpath_finalize,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_glyphpath_finalize, %function
cf2_glyphpath_finalize:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	add	r3, r3, #11584
	adds	r3, r3, #28
	mov	r0, r3
	bl	cf2_arrstack_finalize(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cf2_glyphpath_finalize, .-cf2_glyphpath_finalize
	.section	.text.cf2_glyphpath_hintPoint,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_glyphpath_hintPoint, %function
cf2_glyphpath_hintPoint:
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	add	r3, r3, #11584
	adds	r3, r3, #60
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r1, [r7]
	bl	FT_MulFix_arm(PLT)
	mov	r4, r0
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r1, [r7, #40]
	bl	FT_MulFix_arm(PLT)
	mov	r3, r0
	add	r3, r3, r4
	str	r3, [r7, #16]
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #40]
	bl	cf2_hintmap_map(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #60]
	ldr	r3, [r7, #16]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r4, r0
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #68]
	ldr	r3, [r7, #20]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r3, r0
	adds	r2, r4, r3
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #8
	ldr	r3, [r3]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #64]
	ldr	r3, [r7, #16]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r4, r0
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #72]
	ldr	r3, [r7, #20]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r3, r0
	adds	r2, r4, r3
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #12
	ldr	r3, [r3]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	cf2_glyphpath_hintPoint, .-cf2_glyphpath_hintPoint
	.section	.text.cf2_glyphpath_computeIntersection,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_glyphpath_computeIntersection, %function
cf2_glyphpath_computeIntersection:
	@ args = 8, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #52
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	subs	r3, r2, r3
	adds	r3, r3, #16
	asrs	r3, r3, #5
	str	r3, [r7, #32]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	adds	r3, r3, #16
	asrs	r3, r3, #5
	str	r3, [r7, #36]
	ldr	r3, [r7, #64]
	ldr	r2, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3]
	subs	r3, r2, r3
	adds	r3, r3, #16
	asrs	r3, r3, #5
	str	r3, [r7, #24]
	ldr	r3, [r7, #64]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	adds	r3, r3, #16
	asrs	r3, r3, #5
	str	r3, [r7, #28]
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	subs	r3, r2, r3
	adds	r3, r3, #16
	asrs	r3, r3, #5
	str	r3, [r7, #16]
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	adds	r3, r3, #16
	asrs	r3, r3, #5
	str	r3, [r7, #20]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #28]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r4, r0
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #24]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r3, r0
	subs	r3, r4, r3
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bne	.L1155
	movs	r3, #0
	b	.L1163
.L1155:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #28]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r4, r0
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #24]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r3, r0
	subs	r3, r4, r3
	mov	r0, r3
	ldr	r1, [r7, #44]
	bl	FT_DivFix(PLT)
	str	r0, [r7, #40]
	ldr	r3, [r7, #8]
	ldr	r4, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	subs	r3, r2, r3
	ldr	r0, [r7, #40]
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r3, r0
	adds	r2, r4, r3
	ldr	r3, [r7, #68]
	str	r2, [r3]
	ldr	r3, [r7, #8]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	ldr	r0, [r7, #40]
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r3, r0
	adds	r2, r4, r3
	ldr	r3, [r7, #68]
	str	r2, [r3, #4]
	ldr	r3, [r7, #8]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L1157
	ldr	r3, [r7, #68]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	subs	r3, r2, r3
	eor	r2, r3, r3, asr #31
	sub	r2, r2, r3, asr #31
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #52
	ldr	r3, [r3]
	cmp	r2, r3
	bge	.L1157
	ldr	r3, [r7, #8]
	ldr	r2, [r3]
	ldr	r3, [r7, #68]
	str	r2, [r3]
.L1157:
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bne	.L1158
	ldr	r3, [r7, #68]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	eor	r2, r3, r3, asr #31
	sub	r2, r2, r3, asr #31
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #52
	ldr	r3, [r3]
	cmp	r2, r3
	bge	.L1158
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #68]
	str	r2, [r3, #4]
.L1158:
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #64]
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L1159
	ldr	r3, [r7, #68]
	ldr	r2, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3]
	subs	r3, r2, r3
	eor	r2, r3, r3, asr #31
	sub	r2, r2, r3, asr #31
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #52
	ldr	r3, [r3]
	cmp	r2, r3
	bge	.L1159
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #68]
	str	r2, [r3]
.L1159:
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bne	.L1160
	ldr	r3, [r7, #68]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	eor	r2, r3, r3, asr #31
	sub	r2, r2, r3, asr #31
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #52
	ldr	r3, [r3]
	cmp	r2, r3
	bge	.L1160
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #68]
	str	r2, [r3, #4]
.L1160:
	ldr	r3, [r7, #68]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r1, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3]
	add	r3, r3, r1
	lsrs	r1, r3, #31
	add	r3, r3, r1
	asrs	r3, r3, #1
	subs	r3, r2, r3
	eor	r2, r3, r3, asr #31
	sub	r2, r2, r3, asr #31
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #48
	ldr	r3, [r3]
	cmp	r2, r3
	bgt	.L1161
	ldr	r3, [r7, #68]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #4]
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	add	r3, r3, r1
	lsrs	r1, r3, #31
	add	r3, r3, r1
	asrs	r3, r3, #1
	subs	r3, r2, r3
	eor	r2, r3, r3, asr #31
	sub	r2, r2, r3, asr #31
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #48
	ldr	r3, [r3]
	cmp	r2, r3
	ble	.L1162
.L1161:
	movs	r3, #0
	b	.L1163
.L1162:
	movs	r3, #1
.L1163:
	mov	r0, r3
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	cf2_glyphpath_computeIntersection, .-cf2_glyphpath_computeIntersection
	.section	.text.cf2_glyphpath_pushPrevElem,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_glyphpath_pushPrevElem, %function
cf2_glyphpath_pushPrevElem:
	@ args = 16, pretend = 8, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	sub	sp, sp, #8
	push	{r4, r7, lr}
	sub	sp, sp, #84
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7, #92]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	strb	r3, [r7, #63]
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	adds	r3, r3, #36
	ldr	r3, [r3]
	cmp	r3, #2
	bne	.L1165
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	adds	r3, r3, #40
	str	r3, [r7, #68]
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	adds	r3, r3, #48
	str	r3, [r7, #64]
	b	.L1166
.L1165:
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	adds	r3, r3, #56
	str	r3, [r7, #68]
	ldr	r3, [r7, #12]
	add	r3, r3, #11776
	str	r3, [r7, #64]
.L1166:
	ldr	r3, [r7, #64]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L1167
	ldr	r3, [r7, #64]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	beq	.L1168
.L1167:
	add	r3, r7, #92
	str	r3, [sp]
	add	r3, r7, #16
	str	r3, [sp, #4]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #68]
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #4]
	bl	cf2_glyphpath_computeIntersection(PLT)
	mov	r3, r0
	strb	r3, [r7, #63]
	ldrb	r3, [r7, #63]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1168
	ldr	r3, [r7, #64]
	add	r2, r7, #16
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
.L1168:
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	adds	r3, r3, #16
	add	r2, r7, #24
	ldmia	r3, {r0, r1}
	stmia	r2, {r0, r1}
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	adds	r3, r3, #36
	ldr	r3, [r3]
	cmp	r3, #2
	beq	.L1170
	cmp	r3, #4
	beq	.L1171
	b	.L1169
.L1170:
	movs	r3, #2
	str	r3, [r7, #56]
	ldrb	r3, [r7, #100]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1172
	ldr	r3, [r7, #12]
	addw	r2, r3, #3876
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	adds	r3, r3, #48
	ldr	r4, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	adds	r3, r3, #52
	ldr	r1, [r3]
	add	r3, r7, #24
	adds	r3, r3, #8
	str	r1, [sp]
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	mov	r3, r4
	bl	cf2_glyphpath_hintPoint(PLT)
	b	.L1173
.L1172:
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	adds	r3, r3, #48
	ldr	r4, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	adds	r3, r3, #52
	ldr	r2, [r3]
	add	r3, r7, #24
	adds	r3, r3, #8
	str	r2, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	mov	r2, r3
	mov	r3, r4
	bl	cf2_glyphpath_hintPoint(PLT)
.L1173:
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bne	.L1174
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	beq	.L1175
.L1174:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #12]
	ldr	r1, [r2, #4]
	add	r2, r7, #24
	mov	r0, r1
	mov	r1, r2
	blx	r3
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	adds	r3, r3, #16
	add	r2, r7, #32
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	b	.L1169
.L1175:
	b	.L1169
.L1171:
	movs	r3, #4
	str	r3, [r7, #56]
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	adds	r3, r3, #48
	ldr	r4, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	adds	r3, r3, #52
	ldr	r2, [r3]
	add	r3, r7, #24
	adds	r3, r3, #8
	str	r2, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	mov	r2, r3
	mov	r3, r4
	bl	cf2_glyphpath_hintPoint(PLT)
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	adds	r3, r3, #56
	ldr	r4, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	adds	r3, r3, #60
	ldr	r2, [r3]
	add	r3, r7, #24
	adds	r3, r3, #16
	str	r2, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	mov	r2, r3
	mov	r3, r4
	bl	cf2_glyphpath_hintPoint(PLT)
	ldr	r3, [r7, #12]
	add	r3, r3, #11776
	ldr	r4, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #11776
	adds	r3, r3, #4
	ldr	r2, [r3]
	add	r3, r7, #24
	adds	r3, r3, #24
	str	r2, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	mov	r2, r3
	mov	r3, r4
	bl	cf2_glyphpath_hintPoint(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #12]
	ldr	r2, [r7, #12]
	ldr	r1, [r2, #4]
	add	r2, r7, #24
	mov	r0, r1
	mov	r1, r2
	blx	r3
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	adds	r3, r3, #16
	add	r2, r7, #48
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	nop
.L1169:
	ldrb	r3, [r7, #63]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1176
	ldrb	r3, [r7, #100]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1177
.L1176:
	ldrb	r3, [r7, #100]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1178
	ldr	r3, [r7, #12]
	addw	r1, r3, #3876
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r0, [r2, #4]
	add	r2, r7, #24
	adds	r2, r2, #8
	str	r0, [sp]
	ldr	r0, [r7, #12]
	bl	cf2_glyphpath_hintPoint(PLT)
	b	.L1179
.L1178:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r1, [r2, #4]
	add	r2, r7, #24
	adds	r2, r2, #8
	str	r1, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	cf2_glyphpath_hintPoint(PLT)
.L1179:
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	adds	r3, r3, #16
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L1180
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	adds	r3, r3, #20
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L1177
.L1180:
	movs	r3, #2
	str	r3, [r7, #56]
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	adds	r3, r3, #16
	add	r2, r7, #24
	ldmia	r3, {r0, r1}
	stmia	r2, {r0, r1}
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #12]
	ldr	r1, [r2, #4]
	add	r2, r7, #24
	mov	r0, r1
	mov	r1, r2
	blx	r3
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	adds	r3, r3, #16
	add	r2, r7, #32
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
.L1177:
	ldrb	r3, [r7, #63]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1164
	ldr	r3, [r7, #4]
	add	r2, r7, #16
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
.L1164:
	adds	r7, r7, #76
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, lr}
	add	sp, sp, #8
	bx	lr
	.size	cf2_glyphpath_pushPrevElem, .-cf2_glyphpath_pushPrevElem
	.section	.text.cf2_glyphpath_pushMove,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_glyphpath_pushMove, %function
cf2_glyphpath_pushMove:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #64
	add	r7, sp, #8
	str	r0, [r7, #12]
	adds	r3, r7, #4
	stmia	r3, {r1, r2}
	movs	r3, #1
	str	r3, [r7, #52]
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	adds	r3, r3, #16
	add	r2, r7, #20
	ldmia	r3, {r0, r1}
	stmia	r2, {r0, r1}
	ldr	r3, [r7, #12]
	adds	r3, r3, #8
	mov	r0, r3
	bl	cf2_hintmap_isValid(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L1183
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	adds	r3, r3, #24
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	adds	r3, r3, #28
	ldr	r3, [r3]
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	bl	cf2_glyphpath_moveTo(PLT)
.L1183:
	ldr	r3, [r7, #12]
	add	r1, r3, #8
	ldr	r3, [r7, #4]
	ldr	r0, [r7, #8]
	add	r2, r7, #20
	adds	r2, r2, #8
	str	r0, [sp]
	ldr	r0, [r7, #12]
	bl	cf2_glyphpath_hintPoint(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	ldr	r1, [r2, #4]
	add	r2, r7, #20
	mov	r0, r1
	mov	r1, r2
	blx	r3
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	adds	r3, r3, #16
	add	r2, r7, #28
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #56
	adds	r2, r7, #4
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	adds	r7, r7, #56
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cf2_glyphpath_pushMove, .-cf2_glyphpath_pushMove
	.section	.text.cf2_glyphpath_computeOffset,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_glyphpath_computeOffset, %function
cf2_glyphpath_computeOffset:
	@ args = 12, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r2, [r7]
	ldr	r3, [r7, #8]
	subs	r3, r2, r3
	str	r3, [r7, #20]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #4]
	subs	r3, r2, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldrb	r3, [r3, #192]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1185
	ldr	r3, [r7, #20]
	negs	r3, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #16]
	negs	r3, r3
	str	r3, [r7, #16]
.L1185:
	ldr	r3, [r7, #48]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #48]
	ldr	r2, [r3]
	ldr	r3, [r7, #44]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #18
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L1186
	b	.L1184
.L1186:
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r5, [r3, #16]
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
	ldr	r3, [r7, #40]
	bl	cf2_getWindingMomentum(PLT)
	mov	r3, r0
	add	r3, r3, r5
	str	r3, [r4, #16]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	blt	.L1188
	ldr	r3, [r7, #16]
	cmp	r3, #0
	blt	.L1189
	ldr	r3, [r7, #16]
	lsls	r2, r3, #1
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bge	.L1190
	ldr	r3, [r7, #44]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #48]
	movs	r2, #0
	str	r2, [r3]
	b	.L1184
.L1190:
	ldr	r3, [r7, #20]
	lsls	r2, r3, #1
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bge	.L1192
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #40
	ldr	r2, [r3]
	ldr	r3, [r7, #44]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #44
	ldr	r2, [r3]
	ldr	r3, [r7, #48]
	str	r2, [r3]
	b	.L1184
.L1192:
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #40
	ldr	r3, [r3]
	movw	r0, #45875
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #44]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #44
	ldr	r3, [r3]
	movw	r0, #19661
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #48]
	str	r2, [r3]
	b	.L1184
.L1189:
	ldr	r2, [r7, #16]
	mov	r3, r2
	lsls	r3, r3, #31
	subs	r3, r3, r2
	lsls	r3, r3, #1
	mov	r2, r3
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bge	.L1194
	ldr	r3, [r7, #44]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #48]
	movs	r2, #0
	str	r2, [r3]
	b	.L1184
.L1194:
	ldr	r3, [r7, #16]
	negs	r2, r3
	ldr	r3, [r7, #20]
	lsls	r3, r3, #1
	cmp	r2, r3
	ble	.L1195
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #40
	ldr	r3, [r3]
	negs	r2, r3
	ldr	r3, [r7, #44]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #44
	ldr	r2, [r3]
	ldr	r3, [r7, #48]
	str	r2, [r3]
	b	.L1184
.L1195:
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #40
	ldr	r3, [r3]
	movw	r0, #19662
	movt	r0, 65535
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #44]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #44
	ldr	r3, [r3]
	movw	r0, #19661
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #48]
	str	r2, [r3]
	b	.L1184
.L1188:
	ldr	r3, [r7, #16]
	cmp	r3, #0
	blt	.L1196
	ldr	r3, [r7, #20]
	negs	r2, r3
	ldr	r3, [r7, #16]
	lsls	r3, r3, #1
	cmp	r2, r3
	ble	.L1197
	ldr	r3, [r7, #44]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #44
	ldr	r3, [r3]
	lsls	r2, r3, #1
	ldr	r3, [r7, #48]
	str	r2, [r3]
	b	.L1184
.L1197:
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #31
	subs	r3, r3, r2
	lsls	r3, r3, #1
	mov	r2, r3
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bge	.L1199
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #40
	ldr	r2, [r3]
	ldr	r3, [r7, #44]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #44
	ldr	r2, [r3]
	ldr	r3, [r7, #48]
	str	r2, [r3]
	b	.L1184
.L1199:
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #40
	ldr	r3, [r3]
	movw	r0, #45875
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #44]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #44
	ldr	r3, [r3]
	movw	r0, #45875
	movt	r0, 1
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #48]
	str	r2, [r3]
	b	.L1184
.L1196:
	ldr	r3, [r7, #20]
	negs	r1, r3
	ldr	r2, [r7, #16]
	mov	r3, r2
	lsls	r3, r3, #31
	subs	r3, r3, r2
	lsls	r3, r3, #1
	cmp	r1, r3
	ble	.L1200
	ldr	r3, [r7, #44]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #44
	ldr	r3, [r3]
	lsls	r2, r3, #1
	ldr	r3, [r7, #48]
	str	r2, [r3]
	b	.L1184
.L1200:
	ldr	r3, [r7, #16]
	negs	r1, r3
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #31
	subs	r3, r3, r2
	lsls	r3, r3, #1
	cmp	r1, r3
	ble	.L1201
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #40
	ldr	r3, [r3]
	negs	r2, r3
	ldr	r3, [r7, #44]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #44
	ldr	r2, [r3]
	ldr	r3, [r7, #48]
	str	r2, [r3]
	b	.L1184
.L1201:
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #40
	ldr	r3, [r3]
	movw	r0, #19662
	movt	r0, 65535
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #44]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #44
	ldr	r3, [r3]
	movw	r0, #45875
	movt	r0, 1
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #48]
	str	r2, [r3]
.L1184:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.size	cf2_glyphpath_computeOffset, .-cf2_glyphpath_computeOffset
	.section	.text.cf2_glyphpath_moveTo,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_glyphpath_moveTo, %function
cf2_glyphpath_moveTo:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #28
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r0, [r7, #12]
	bl	cf2_glyphpath_closeOpenPath(PLT)
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	adds	r3, r3, #24
	ldr	r2, [r7, #8]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	adds	r3, r3, #24
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	adds	r3, r3, #8
	str	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	adds	r3, r3, #28
	ldr	r2, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	adds	r3, r3, #28
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	adds	r3, r3, #12
	str	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #19
	movs	r2, #1
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #8
	mov	r0, r3
	bl	cf2_hintmap_isValid(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1203
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #28
	ldr	r3, [r3]
	mov	r0, r3
	bl	cf2_hintmask_isNew(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1204
.L1203:
	ldr	r3, [r7, #12]
	add	r0, r3, #8
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #20
	ldr	r1, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #24
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #28
	ldr	r4, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #32
	ldr	r3, [r3]
	str	r3, [sp]
	movs	r3, #0
	str	r3, [sp, #4]
	mov	r3, r4
	bl	cf2_hintmap_build(PLT)
.L1204:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #12]
	addw	r1, r2, #3876
	add	r2, r3, #8
	movw	r3, #3868
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	memcpy(PLT)
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	cf2_glyphpath_moveTo, .-cf2_glyphpath_moveTo
	.section	.text.cf2_glyphpath_lineTo,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_glyphpath_lineTo, %function
cf2_glyphpath_lineTo:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #68
	add	r7, sp, #16
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #28
	ldr	r3, [r3]
	mov	r0, r3
	bl	cf2_hintmask_isNew(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1206
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #17
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L1206
	movs	r3, #1
	b	.L1207
.L1206:
	movs	r3, #0
.L1207:
	strb	r3, [r7, #47]
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	adds	r3, r3, #8
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bne	.L1208
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	adds	r3, r3, #12
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bne	.L1208
	ldrb	r3, [r7, #47]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1205
.L1208:
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	adds	r3, r3, #8
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	adds	r3, r3, #12
	ldr	r3, [r3]
	ldr	r1, [r7, #4]
	str	r1, [sp]
	add	r1, r7, #40
	str	r1, [sp, #4]
	add	r1, r7, #36
	str	r1, [sp, #8]
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [r7, #8]
	bl	cf2_glyphpath_computeOffset(PLT)
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	adds	r3, r3, #8
	ldr	r2, [r3]
	ldr	r3, [r7, #40]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	adds	r3, r3, #12
	ldr	r2, [r3]
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #19
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1210
	ldr	r0, [r7, #12]
	add	r3, r7, #28
	ldmia	r3, {r1, r2}
	bl	cf2_glyphpath_pushMove(PLT)
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #19
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #16
	movs	r2, #1
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	add	r2, r7, #20
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
.L1210:
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	adds	r3, r3, #32
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1211
	ldr	r3, [r7, #12]
	add	r1, r3, #8
	add	r2, r7, #28
	movs	r3, #0
	str	r3, [sp, #4]
	ldr	r3, [r7, #24]
	str	r3, [sp]
	ldr	r3, [r7, #20]
	ldr	r0, [r7, #12]
	bl	cf2_glyphpath_pushPrevElem(PLT)
.L1211:
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	adds	r3, r3, #32
	movs	r2, #1
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	adds	r3, r3, #36
	movs	r2, #2
	str	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	adds	r3, r3, #40
	add	r2, r7, #28
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	adds	r3, r3, #48
	add	r2, r7, #20
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldrb	r3, [r7, #47]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1212
	ldr	r3, [r7, #12]
	add	r0, r3, #8
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #20
	ldr	r1, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #24
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #28
	ldr	r4, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #32
	ldr	r3, [r3]
	str	r3, [sp]
	movs	r3, #0
	str	r3, [sp, #4]
	mov	r3, r4
	bl	cf2_hintmap_build(PLT)
.L1212:
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	adds	r3, r3, #8
	ldr	r2, [r7, #8]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	adds	r3, r3, #12
	ldr	r2, [r7, #4]
	str	r2, [r3]
.L1205:
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	cf2_glyphpath_lineTo, .-cf2_glyphpath_lineTo
	.section	.text.cf2_glyphpath_curveTo,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_glyphpath_curveTo, %function
cf2_glyphpath_curveTo:
	@ args = 12, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #80
	add	r7, sp, #16
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	adds	r3, r3, #8
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	adds	r3, r3, #12
	ldr	r3, [r3]
	ldr	r1, [r7, #4]
	str	r1, [sp]
	add	r1, r7, #60
	str	r1, [sp, #4]
	add	r1, r7, #56
	str	r1, [sp, #8]
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [r7, #8]
	bl	cf2_glyphpath_computeOffset(PLT)
	ldr	r3, [r7, #88]
	str	r3, [sp]
	add	r3, r7, #52
	str	r3, [sp, #4]
	add	r3, r7, #48
	str	r3, [sp, #8]
	ldr	r0, [r7, #12]
	ldr	r1, [r7]
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #84]
	bl	cf2_glyphpath_computeOffset(PLT)
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r5, [r3, #16]
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
	ldr	r3, [r7, #80]
	bl	cf2_getWindingMomentum(PLT)
	mov	r3, r0
	add	r3, r3, r5
	str	r3, [r4, #16]
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	adds	r3, r3, #8
	ldr	r2, [r3]
	ldr	r3, [r7, #60]
	add	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	adds	r3, r3, #12
	ldr	r2, [r3]
	ldr	r3, [r7, #56]
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r2, [r7, #52]
	ldr	r3, [r7]
	add	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #80]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #84]
	add	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #88]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #19
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1214
	ldr	r0, [r7, #12]
	add	r3, r7, #40
	ldmia	r3, {r1, r2}
	bl	cf2_glyphpath_pushMove(PLT)
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #19
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #16
	movs	r2, #1
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	add	r2, r7, #32
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
.L1214:
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	adds	r3, r3, #32
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1215
	ldr	r3, [r7, #12]
	add	r1, r3, #8
	add	r2, r7, #40
	movs	r3, #0
	str	r3, [sp, #4]
	ldr	r3, [r7, #36]
	str	r3, [sp]
	ldr	r3, [r7, #32]
	ldr	r0, [r7, #12]
	bl	cf2_glyphpath_pushPrevElem(PLT)
.L1215:
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	adds	r3, r3, #32
	movs	r2, #1
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	adds	r3, r3, #36
	movs	r2, #4
	str	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	adds	r3, r3, #40
	add	r2, r7, #40
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	adds	r3, r3, #48
	add	r2, r7, #32
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	adds	r3, r3, #56
	add	r2, r7, #24
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #12]
	add	r3, r3, #11776
	add	r2, r7, #16
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #28
	ldr	r3, [r3]
	mov	r0, r3
	bl	cf2_hintmask_isNew(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1216
	ldr	r3, [r7, #12]
	add	r0, r3, #8
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #20
	ldr	r1, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #24
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #28
	ldr	r4, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #11648
	adds	r3, r3, #32
	ldr	r3, [r3]
	str	r3, [sp]
	movs	r3, #0
	str	r3, [sp, #4]
	mov	r3, r4
	bl	cf2_hintmap_build(PLT)
.L1216:
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	adds	r3, r3, #8
	ldr	r2, [r7, #84]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #11712
	adds	r3, r3, #12
	ldr	r2, [r7, #88]
	str	r2, [r3]
	adds	r7, r7, #64
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.size	cf2_glyphpath_curveTo, .-cf2_glyphpath_curveTo
	.section	.text.cf2_glyphpath_closeOpenPath,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_glyphpath_closeOpenPath, %function
cf2_glyphpath_closeOpenPath:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #8
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	add	r3, r3, #11648
	adds	r3, r3, #16
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1217
	ldr	r3, [r7, #4]
	add	r3, r3, #11648
	adds	r3, r3, #17
	movs	r2, #1
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	add	r3, r3, #11712
	adds	r3, r3, #24
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	add	r3, r3, #11712
	adds	r3, r3, #28
	ldr	r3, [r3]
	ldr	r0, [r7, #4]
	mov	r1, r2
	mov	r2, r3
	bl	cf2_glyphpath_lineTo(PLT)
	ldr	r3, [r7, #4]
	add	r3, r3, #11712
	adds	r3, r3, #32
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1219
	ldr	r3, [r7, #4]
	add	r1, r3, #8
	ldr	r3, [r7, #4]
	add	r2, r3, #11648
	adds	r2, r2, #56
	ldr	r3, [r7, #4]
	add	r3, r3, #11712
	movs	r0, #1
	str	r0, [sp, #4]
	ldr	r0, [r3, #4]
	str	r0, [sp]
	ldr	r3, [r3]
	ldr	r0, [r7, #4]
	bl	cf2_glyphpath_pushPrevElem(PLT)
.L1219:
	ldr	r3, [r7, #4]
	add	r3, r3, #11648
	adds	r3, r3, #19
	movs	r2, #1
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	add	r3, r3, #11648
	adds	r3, r3, #16
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	add	r3, r3, #11648
	adds	r3, r3, #17
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	add	r3, r3, #11712
	adds	r3, r3, #32
	movs	r2, #0
	strb	r2, [r3]
.L1217:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cf2_glyphpath_closeOpenPath, .-cf2_glyphpath_closeOpenPath
	.section	.text.cf2_hintmask_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_hintmask_init, %function
cf2_hintmask_init:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	movs	r1, #0
	movs	r2, #28
	bl	memset(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3]
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cf2_hintmask_init, .-cf2_hintmask_init
	.section	.text.cf2_hintmask_isValid,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_hintmask_isValid, %function
cf2_hintmask_isValid:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	cf2_hintmask_isValid, .-cf2_hintmask_isValid
	.section	.text.cf2_hintmask_isNew,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_hintmask_isNew, %function
cf2_hintmask_isNew:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	cf2_hintmask_isNew, .-cf2_hintmask_isNew
	.section	.text.cf2_hintmask_setNew,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_hintmask_setNew, %function
cf2_hintmask_setNew:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	ldrb	r2, [r7, #3]
	strb	r2, [r3, #5]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	cf2_hintmask_setNew, .-cf2_hintmask_setNew
	.section	.text.cf2_hintmask_getMaskPtr,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_hintmask_getMaskPtr, %function
cf2_hintmask_getMaskPtr:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	adds	r3, r3, #16
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	cf2_hintmask_getMaskPtr, .-cf2_hintmask_getMaskPtr
	.section	.text.cf2_hintmask_setCounts,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_hintmask_setCounts, %function
cf2_hintmask_setCounts:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #96
	bls	.L1229
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r3
	movs	r1, #18
	bl	cf2_setError(PLT)
	movs	r3, #0
	b	.L1230
.L1229:
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r3, r3, #7
	lsrs	r2, r3, #3
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #4]
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #5]
	ldr	r3, [r7]
.L1230:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cf2_hintmask_setCounts, .-cf2_hintmask_setCounts
	.section	.text.cf2_hintmask_read,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_hintmask_read, %function
cf2_hintmask_read:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	bl	cf2_hintmask_setCounts(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L1232
	b	.L1231
.L1232:
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L1234
.L1235:
	ldr	r0, [r7, #8]
	bl	cf2_buf_readByte(PLT)
	mov	r3, r0
	uxtb	r2, r3
	ldr	r1, [r7, #12]
	ldr	r3, [r7, #20]
	add	r3, r3, r1
	adds	r3, r3, #16
	strb	r2, [r3]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L1234:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bhi	.L1235
.L1231:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cf2_hintmask_read, .-cf2_hintmask_read
	.section	.text.cf2_hintmask_setAll,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_hintmask_setAll, %function
cf2_hintmask_setAll:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	negs	r3, r3
	and	r3, r3, #7
	movs	r2, #1
	lsl	r3, r2, r3
	subs	r3, r3, #1
	str	r3, [r7, #8]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	cf2_hintmask_setCounts(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L1237
	b	.L1236
.L1237:
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L1239
.L1240:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	adds	r3, r3, #16
	movs	r2, #255
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L1239:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bhi	.L1240
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	subs	r3, r3, #1
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #12]
	subs	r2, r2, #1
	ldr	r1, [r7, #4]
	add	r2, r2, r1
	ldrb	r1, [r2, #16]	@ zero_extendqisi2
	ldr	r2, [r7, #8]
	uxtb	r2, r2
	mvns	r2, r2
	uxtb	r2, r2
	ands	r2, r2, r1
	uxtb	r2, r2
	ldr	r1, [r7, #4]
	add	r3, r3, r1
	strb	r2, [r3, #16]
.L1236:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cf2_hintmask_setAll, .-cf2_hintmask_setAll
	.section	.text.cf2_doStems,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_doStems, %function
cf2_doStems:
	@ args = 8, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #60
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r0, [r7, #8]
	bl	cf2_stack_count(PLT)
	str	r0, [r7, #44]
	ldr	r3, [r7, #44]
	uxtb	r3, r3
	and	r3, r3, #1
	strb	r3, [r7, #43]
	ldr	r3, [r7, #76]
	str	r3, [r7, #48]
	ldrb	r3, [r7, #43]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1242
	ldr	r3, [r7, #72]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L1242
	ldr	r0, [r7, #8]
	movs	r1, #0
	bl	cf2_stack_getReal(PLT)
	mov	r4, r0
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #132]
	mov	r0, r3
	bl	cf2_getNominalWidthX(PLT)
	mov	r3, r0
	adds	r2, r4, r3
	ldr	r3, [r7]
	str	r2, [r3]
.L1242:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #132]
	ldrb	r3, [r3, #561]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1243
	b	.L1244
.L1243:
	ldrb	r3, [r7, #43]	@ zero_extendqisi2
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #52]
	b	.L1245
.L1246:
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #52]
	bl	cf2_stack_getReal(PLT)
	mov	r3, r0
	ldr	r2, [r7, #48]
	add	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	str	r3, [r7, #24]
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	cf2_stack_getReal(PLT)
	mov	r3, r0
	ldr	r2, [r7, #48]
	add	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	str	r3, [r7, #28]
	movs	r3, #0
	strb	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	str	r3, [r7, #36]
	add	r3, r7, #20
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	cf2_arrstack_push(PLT)
	ldr	r3, [r7, #52]
	adds	r3, r3, #2
	str	r3, [r7, #52]
.L1245:
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #44]
	cmp	r2, r3
	bcc	.L1246
	ldr	r0, [r7, #8]
	bl	cf2_stack_clear(PLT)
.L1244:
	ldr	r3, [r7, #72]
	movs	r2, #1
	strb	r2, [r3]
	adds	r7, r7, #60
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	cf2_doStems, .-cf2_doStems
	.section	.text.cf2_doFlex,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_doFlex, %function
cf2_doFlex:
	@ args = 8, pretend = 0, frame = 104
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #124
	add	r7, sp, #16
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #100]
	ldr	r3, [r7, #128]
	adds	r3, r3, #9
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	strb	r3, [r7, #91]
	ldrb	r3, [r7, #91]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1248
	movs	r3, #9
	b	.L1249
.L1248:
	movs	r3, #10
.L1249:
	str	r3, [r7, #84]
	movs	r3, #0
	str	r3, [r7, #96]
	b	.L1250
.L1252:
	ldr	r3, [r7, #96]
	adds	r1, r3, #2
	ldr	r3, [r7, #96]
	lsls	r3, r3, #2
	add	r2, r7, #104
	add	r3, r3, r2
	ldr	r2, [r3, #-84]
	lsls	r3, r1, #2
	add	r1, r7, #104
	add	r3, r3, r1
	str	r2, [r3, #-84]
	ldr	r3, [r7, #96]
	ldr	r2, [r7, #128]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1251
	ldr	r3, [r7, #96]
	adds	r4, r3, #2
	ldr	r3, [r7, #96]
	adds	r3, r3, #2
	lsls	r3, r3, #2
	add	r2, r7, #104
	add	r3, r3, r2
	ldr	r5, [r3, #-84]
	ldr	r3, [r7, #100]
	adds	r2, r3, #1
	str	r2, [r7, #100]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	cf2_stack_getReal(PLT)
	mov	r3, r0
	adds	r2, r5, r3
	lsls	r3, r4, #2
	add	r1, r7, #104
	add	r3, r3, r1
	str	r2, [r3, #-84]
.L1251:
	ldr	r3, [r7, #96]
	adds	r3, r3, #1
	str	r3, [r7, #96]
.L1250:
	ldr	r2, [r7, #96]
	ldr	r3, [r7, #84]
	cmp	r2, r3
	blt	.L1252
	ldrb	r3, [r7, #91]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1253
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #64]
.L1253:
	ldrb	r3, [r7, #132]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1254
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	subs	r3, r2, r3
	eor	r2, r3, r3, asr #31
	sub	r2, r2, r3, asr #31
	ldr	r1, [r7, #64]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	subs	r3, r1, r3
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	cmp	r2, r3
	ite	gt
	movgt	r3, #1
	movle	r3, #0
	uxtb	r3, r3
	strb	r3, [r7, #83]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #100]
	bl	cf2_stack_getReal(PLT)
	str	r0, [r7, #76]
	ldrb	r3, [r7, #83]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1255
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #76]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #72]
	b	.L1257
.L1255:
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	str	r3, [r7, #68]
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #76]
	add	r3, r3, r2
	str	r3, [r7, #72]
	b	.L1257
.L1254:
	ldr	r3, [r7, #128]
	adds	r3, r3, #10
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1258
	ldr	r4, [r7, #60]
	ldr	r3, [r7, #100]
	adds	r2, r3, #1
	str	r2, [r7, #100]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	cf2_stack_getReal(PLT)
	mov	r3, r0
	add	r3, r3, r4
	str	r3, [r7, #68]
	b	.L1259
.L1258:
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	str	r3, [r7, #68]
.L1259:
	ldr	r3, [r7, #128]
	adds	r3, r3, #11
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1260
	ldr	r4, [r7, #64]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #100]
	bl	cf2_stack_getReal(PLT)
	mov	r3, r0
	add	r3, r3, r4
	str	r3, [r7, #72]
	b	.L1257
.L1260:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #72]
.L1257:
	movs	r3, #0
	str	r3, [r7, #92]
	b	.L1261
.L1262:
	ldr	r2, [r7, #92]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, #2
	lsls	r3, r3, #2
	add	r2, r7, #104
	add	r3, r3, r2
	ldr	r1, [r3, #-84]
	ldr	r2, [r7, #92]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, #3
	lsls	r3, r3, #2
	add	r2, r7, #104
	add	r3, r3, r2
	ldr	r5, [r3, #-84]
	ldr	r2, [r7, #92]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, #4
	lsls	r3, r3, #2
	add	r2, r7, #104
	add	r3, r3, r2
	ldr	r4, [r3, #-84]
	ldr	r2, [r7, #92]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, #5
	lsls	r3, r3, #2
	add	r2, r7, #104
	add	r3, r3, r2
	ldr	r6, [r3, #-84]
	ldr	r3, [r7, #92]
	adds	r2, r3, #1
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #1
	lsls	r3, r3, #2
	add	r2, r7, #104
	add	r3, r3, r2
	ldr	r0, [r3, #-84]
	ldr	r2, [r7, #92]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, #7
	lsls	r3, r3, #2
	add	r2, r7, #104
	add	r3, r3, r2
	ldr	r3, [r3, #-84]
	str	r6, [sp]
	str	r0, [sp, #4]
	str	r3, [sp, #8]
	ldr	r0, [r7]
	mov	r2, r5
	mov	r3, r4
	bl	cf2_glyphpath_curveTo(PLT)
	ldr	r3, [r7, #92]
	adds	r3, r3, #1
	str	r3, [r7, #92]
.L1261:
	ldr	r3, [r7, #92]
	cmp	r3, #1
	ble	.L1262
	ldr	r0, [r7, #12]
	bl	cf2_stack_clear(PLT)
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #8]
	str	r2, [r3]
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	adds	r7, r7, #108
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
	.size	cf2_doFlex, .-cf2_doFlex
	.section	.text.cf2_interpT2CharString,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_interpT2CharString, %function
cf2_interpT2CharString:
	@ args = 16, pretend = 0, frame = 16136
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #16128
	sub	sp, sp, #36
	add	r7, sp, #24
	add	r4, r7, #72
	subs	r4, r4, #60
	str	r0, [r4]
	add	r0, r7, #8
	str	r1, [r0]
	add	r1, r7, #8
	subs	r1, r1, #4
	str	r2, [r1]
	add	r2, r7, #8
	subs	r2, r2, #8
	str	r3, [r2]
	movs	r3, #0
	add	r0, r7, #16128
	add	r0, r0, #4
	str	r3, [r0]
	add	r3, r7, #72
	subs	r3, r3, #60
	ldr	r3, [r3]
	ldr	r3, [r3, #132]
	add	r1, r7, #16000
	add	r1, r1, #44
	str	r3, [r1]
	add	r3, r7, #72
	subs	r3, r3, #60
	ldr	r3, [r3]
	adds	r3, r3, #4
	add	r2, r7, #16000
	add	r2, r2, #40
	str	r3, [r2]
	add	r3, r7, #72
	subs	r3, r3, #60
	ldr	r3, [r3]
	ldr	r3, [r3]
	add	ip, r7, #16000
	add	ip, ip, #36
	str	r3, [ip]
	add	r3, r7, #72
	subs	r3, r3, #60
	ldr	r3, [r3]
	ldr	r3, [r3, #48]
	add	r0, r7, #16000
	add	r0, r0, #32
	str	r3, [r0]
	add	r1, r7, #16000
	add	r1, r1, #44
	ldr	r0, [r1]
	bl	cf2_getNominalWidthX(PLT)
	add	r2, r7, #16000
	add	r2, r2, #28
	str	r0, [r2]
	add	ip, r7, #16128
	add	ip, ip, #40
	ldr	r3, [ip]
	add	r0, r7, #16000
	add	r0, r0, #24
	str	r3, [r0]
	movs	r3, #0
	add	r1, r7, #16000
	add	r1, r1, #20
	str	r3, [r1]
	mov	r3, #11520
	movt	r3, 305
	add	r2, r7, #16064
	add	r2, r2, #60
	str	r3, [r2]
	movs	r3, #0
	add	ip, r7, #16064
	add	ip, ip, #56
	str	r3, [ip]
	mov	r3, #-1
	add	r0, r7, #16064
	add	r0, r0, #52
	str	r3, [r0]
	add	r3, r7, #15808
	add	r3, r3, #8
	mov	r0, r3
	add	r2, r7, #16000
	add	r2, r2, #36
	ldr	r1, [r2]
	add	r3, r7, #16000
	add	r3, r3, #40
	ldr	r2, [r3]
	movs	r3, #16
	bl	cf2_arrstack_init(PLT)
	add	r3, r7, #15744
	add	r3, r3, #36
	mov	r0, r3
	add	ip, r7, #16000
	add	ip, ip, #36
	ldr	r1, [ip]
	add	r3, r7, #16000
	add	r3, r3, #40
	ldr	r2, [r3]
	movs	r3, #20
	bl	cf2_arrstack_init(PLT)
	add	r3, r7, #15744
	add	r3, r3, #4
	mov	r0, r3
	add	ip, r7, #16000
	add	ip, ip, #36
	ldr	r1, [ip]
	add	r3, r7, #16000
	add	r3, r3, #40
	ldr	r2, [r3]
	movs	r3, #20
	bl	cf2_arrstack_init(PLT)
	add	r3, r7, #15680
	add	r3, r3, #40
	mov	r0, r3
	add	ip, r7, #16000
	add	ip, ip, #40
	ldr	r1, [ip]
	bl	cf2_hintmask_init(PLT)
	add	r3, r7, #72
	subs	r3, r3, #60
	ldr	r3, [r3]
	add	r0, r3, #196
	addw	r1, r7, #3976
	subs	r1, r1, #40
	add	r2, r7, #72
	subs	r2, r2, #60
	add	r3, r7, #8
	subs	r3, r3, #4
	add	r4, r7, #15744
	add	r4, r4, #36
	str	r4, [sp]
	add	r4, r7, #15744
	add	r4, r4, #4
	str	r4, [sp, #4]
	add	r4, r7, #15680
	add	r4, r4, #40
	str	r4, [sp, #8]
	add	ip, r7, #16000
	add	ip, ip, #24
	ldr	r4, [ip]
	str	r4, [sp, #12]
	str	r0, [sp, #16]
	add	r0, r7, #8
	subs	r0, r0, #8
	ldr	r0, [r0]
	str	r0, [sp, #20]
	mov	r0, r1
	ldr	r1, [r2]
	ldr	r2, [r3]
	add	ip, r7, #16000
	add	ip, ip, #32
	ldr	r3, [ip]
	bl	cf2_glyphpath_init(PLT)
	add	r3, r7, #15808
	add	r3, r3, #7
	movs	r2, #0
	strb	r2, [r3]
	add	r1, r7, #16000
	add	r1, r1, #44
	ldr	r0, [r1]
	bl	cf2_getDefaultWidthX(PLT)
	mov	r2, r0
	add	ip, r7, #16128
	add	ip, ip, #44
	ldr	r3, [ip]
	str	r2, [r3]
	add	r1, r7, #16000
	add	r1, r1, #36
	ldr	r0, [r1]
	add	r2, r7, #16000
	add	r2, r2, #40
	ldr	r1, [r2]
	bl	cf2_stack_init(PLT)
	add	r3, r7, #16000
	add	r3, r3, #20
	str	r0, [r3]
	add	ip, r7, #16000
	add	ip, ip, #20
	ldr	r3, [ip]
	cmp	r3, #0
	bne	.L1264
	movs	r3, #64
	add	r0, r7, #16128
	add	r0, r0, #4
	str	r3, [r0]
	b	.L1265
.L1264:
	add	r3, r7, #15808
	add	r3, r3, #8
	mov	r0, r3
	movs	r1, #17
	bl	cf2_arrstack_setCount(PLT)
	add	r3, r7, #15808
	add	r3, r3, #8
	mov	r0, r3
	bl	cf2_arrstack_getBuffer(PLT)
	add	r1, r7, #16064
	add	r1, r1, #56
	str	r0, [r1]
	add	r3, r7, #16064
	add	r3, r3, #56
	ldr	r2, [r3]
	add	r3, r7, #8
	ldr	r3, [r3]
	mov	r4, r2
	ldmia	r3, {r0, r1, r2, r3}
	stmia	r4, {r0, r1, r2, r3}
	movs	r3, #0
	add	ip, r7, #16064
	add	ip, ip, #52
	str	r3, [ip]
	add	r0, r7, #16000
	add	r0, r0, #40
	ldr	r3, [r0]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L1266
	b	.L1265
.L1266:
	add	r1, r7, #16064
	add	r1, r1, #56
	ldr	r0, [r1]
	bl	cf2_buf_isEnd(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1267
	add	r2, r7, #16064
	add	r2, r2, #52
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.L1268
	movs	r3, #11
	add	ip, r7, #16128
	add	ip, ip, #3
	strb	r3, [ip]
	b	.L1270
.L1268:
	movs	r3, #14
	add	r0, r7, #16128
	add	r0, r0, #3
	strb	r3, [r0]
	b	.L1270
.L1267:
	add	r1, r7, #16064
	add	r1, r1, #56
	ldr	r0, [r1]
	bl	cf2_buf_readByte(PLT)
	mov	r3, r0
	add	r2, r7, #16128
	add	r2, r2, #3
	strb	r3, [r2]
.L1270:
	add	ip, r7, #16000
	add	ip, ip, #40
	ldr	r3, [ip]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L1271
	b	.L1265
.L1271:
	add	r0, r7, #16064
	add	r0, r0, #60
	ldr	r3, [r0]
	subs	r3, r3, #1
	add	r1, r7, #16064
	add	r1, r1, #60
	str	r3, [r1]
	add	r2, r7, #16064
	add	r2, r2, #60
	ldr	r3, [r2]
	cmp	r3, #0
	bne	.L1272
	movs	r3, #18
	add	ip, r7, #16128
	add	ip, ip, #4
	str	r3, [ip]
	b	.L1265
.L1272:
	add	r0, r7, #16128
	add	r0, r0, #3
	ldrb	r3, [r0]	@ zero_extendqisi2
	cmp	r3, #31
	bhi	.L1273
	adr	r1, .L1275
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L1275:
	.word	.L1386+1-.L1275
	.word	.L1276+1-.L1275
	.word	.L1386+1-.L1275
	.word	.L1277+1-.L1275
	.word	.L1278+1-.L1275
	.word	.L1279+1-.L1275
	.word	.L1280+1-.L1275
	.word	.L1280+1-.L1275
	.word	.L1281+1-.L1275
	.word	.L1386+1-.L1275
	.word	.L1282+1-.L1275
	.word	.L1283+1-.L1275
	.word	.L1284+1-.L1275
	.word	.L1386+1-.L1275
	.word	.L1285+1-.L1275
	.word	.L1386+1-.L1275
	.word	.L1386+1-.L1275
	.word	.L1386+1-.L1275
	.word	.L1276+1-.L1275
	.word	.L1286+1-.L1275
	.word	.L1286+1-.L1275
	.word	.L1287+1-.L1275
	.word	.L1288+1-.L1275
	.word	.L1277+1-.L1275
	.word	.L1281+1-.L1275
	.word	.L1289+1-.L1275
	.word	.L1290+1-.L1275
	.word	.L1291+1-.L1275
	.word	.L1292+1-.L1275
	.word	.L1282+1-.L1275
	.word	.L1293+1-.L1275
	.word	.L1293+1-.L1275
.L1276:
	add	r3, r7, #15680
	add	r3, r3, #40
	mov	r0, r3
	bl	cf2_hintmask_isValid(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1295
	b	.L1294
.L1295:
	add	r3, r7, #72
	subs	r3, r3, #60
	add	r2, r7, #15744
	add	r2, r2, #36
	add	r1, r7, #15808
	add	r1, r1, #7
	str	r1, [sp]
	movs	r1, #0
	str	r1, [sp, #4]
	ldr	r0, [r3]
	add	r3, r7, #16000
	add	r3, r3, #20
	ldr	r1, [r3]
	add	ip, r7, #16128
	add	ip, ip, #44
	ldr	r3, [ip]
	bl	cf2_doStems(PLT)
	add	r3, r7, #72
	subs	r3, r3, #60
	ldr	r3, [r3]
	ldr	r3, [r3, #132]
	ldrb	r3, [r3, #561]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1296
	b	.L1265
.L1296:
	b	.L1294
.L1277:
	add	r3, r7, #15680
	add	r3, r3, #40
	mov	r0, r3
	bl	cf2_hintmask_isValid(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1297
	b	.L1294
.L1297:
	add	r3, r7, #72
	subs	r3, r3, #60
	add	r2, r7, #15744
	add	r2, r2, #4
	add	r1, r7, #15808
	add	r1, r1, #7
	str	r1, [sp]
	movs	r1, #0
	str	r1, [sp, #4]
	ldr	r0, [r3]
	add	r3, r7, #16000
	add	r3, r3, #20
	ldr	r1, [r3]
	add	ip, r7, #16128
	add	ip, ip, #44
	ldr	r3, [ip]
	bl	cf2_doStems(PLT)
	add	r3, r7, #72
	subs	r3, r3, #60
	ldr	r3, [r3]
	ldr	r3, [r3, #132]
	ldrb	r3, [r3, #561]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1298
	b	.L1265
.L1298:
	b	.L1294
.L1278:
	add	r1, r7, #16000
	add	r1, r1, #20
	ldr	r0, [r1]
	bl	cf2_stack_count(PLT)
	mov	r3, r0
	cmp	r3, #1
	bls	.L1299
	add	r3, r7, #15808
	add	r3, r3, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L1299
	add	r2, r7, #16000
	add	r2, r2, #20
	ldr	r0, [r2]
	movs	r1, #0
	bl	cf2_stack_getReal(PLT)
	mov	r2, r0
	add	ip, r7, #16000
	add	ip, ip, #28
	ldr	r3, [ip]
	add	r2, r2, r3
	add	r0, r7, #16128
	add	r0, r0, #44
	ldr	r3, [r0]
	str	r2, [r3]
.L1299:
	add	r3, r7, #15808
	add	r3, r3, #7
	movs	r2, #1
	strb	r2, [r3]
	add	r3, r7, #72
	subs	r3, r3, #60
	ldr	r3, [r3]
	ldr	r3, [r3, #132]
	ldrb	r3, [r3, #561]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1300
	b	.L1265
.L1300:
	add	r1, r7, #16000
	add	r1, r1, #20
	ldr	r0, [r1]
	bl	cf2_stack_popFixed(PLT)
	mov	r2, r0
	add	ip, r7, #16128
	add	ip, ip, #40
	ldr	r3, [ip]
	add	r3, r3, r2
	add	r0, r7, #16128
	add	r0, r0, #40
	str	r3, [r0]
	add	r2, r7, #16128
	add	r2, r2, #36
	ldr	r1, [r2]
	add	r3, r7, #16128
	add	r3, r3, #40
	ldr	r2, [r3]
	addw	r3, r7, #3976
	subs	r3, r3, #40
	mov	r0, r3
	bl	cf2_glyphpath_moveTo(PLT)
	b	.L1294
.L1279:
	add	ip, r7, #16000
	add	ip, ip, #20
	ldr	r0, [ip]
	bl	cf2_stack_count(PLT)
	add	r1, r7, #16000
	add	r1, r1, #16
	str	r0, [r1]
	movs	r3, #0
	add	r2, r7, #16064
	add	r2, r2, #48
	str	r3, [r2]
	b	.L1301
.L1302:
	add	r3, r7, #16000
	add	r3, r3, #20
	ldr	r0, [r3]
	add	ip, r7, #16064
	add	ip, ip, #48
	ldr	r1, [ip]
	bl	cf2_stack_getReal(PLT)
	mov	r2, r0
	add	r0, r7, #16128
	add	r0, r0, #36
	ldr	r3, [r0]
	add	r3, r3, r2
	add	r1, r7, #16128
	add	r1, r1, #36
	str	r3, [r1]
	add	r2, r7, #16064
	add	r2, r2, #48
	ldr	r3, [r2]
	adds	r3, r3, #1
	add	ip, r7, #16000
	add	ip, ip, #20
	ldr	r0, [ip]
	mov	r1, r3
	bl	cf2_stack_getReal(PLT)
	mov	r2, r0
	add	r0, r7, #16128
	add	r0, r0, #40
	ldr	r3, [r0]
	add	r3, r3, r2
	add	r1, r7, #16128
	add	r1, r1, #40
	str	r3, [r1]
	add	r2, r7, #16128
	add	r2, r2, #36
	ldr	r1, [r2]
	add	r3, r7, #16128
	add	r3, r3, #40
	ldr	r2, [r3]
	addw	r3, r7, #3976
	subs	r3, r3, #40
	mov	r0, r3
	bl	cf2_glyphpath_lineTo(PLT)
	add	ip, r7, #16064
	add	ip, ip, #48
	ldr	r3, [ip]
	adds	r3, r3, #2
	add	r0, r7, #16064
	add	r0, r0, #48
	str	r3, [r0]
.L1301:
	add	r1, r7, #16064
	add	r1, r1, #48
	ldr	r2, [r1]
	add	ip, r7, #16000
	add	ip, ip, #16
	ldr	r3, [ip]
	cmp	r2, r3
	bcc	.L1302
	add	r1, r7, #16000
	add	r1, r1, #20
	ldr	r0, [r1]
	bl	cf2_stack_clear(PLT)
	b	.L1303
.L1280:
	add	r2, r7, #16000
	add	r2, r2, #20
	ldr	r0, [r2]
	bl	cf2_stack_count(PLT)
	add	r3, r7, #16000
	add	r3, r3, #12
	str	r0, [r3]
	add	ip, r7, #16128
	add	ip, ip, #3
	ldrb	r3, [ip]	@ zero_extendqisi2
	cmp	r3, #6
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	add	r0, r7, #16064
	add	r0, r0, #43
	strb	r3, [r0]
	movs	r3, #0
	add	r1, r7, #16064
	add	r1, r1, #44
	str	r3, [r1]
	b	.L1304
.L1307:
	add	r2, r7, #16000
	add	r2, r2, #20
	ldr	r0, [r2]
	add	r3, r7, #16064
	add	r3, r3, #44
	ldr	r1, [r3]
	bl	cf2_stack_getReal(PLT)
	add	ip, r7, #16000
	add	ip, ip, #8
	str	r0, [ip]
	add	r0, r7, #16064
	add	r0, r0, #43
	ldrb	r3, [r0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1305
	add	r1, r7, #16128
	add	r1, r1, #36
	ldr	r2, [r1]
	add	ip, r7, #16000
	add	ip, ip, #8
	ldr	r3, [ip]
	add	r3, r3, r2
	add	r0, r7, #16128
	add	r0, r0, #36
	str	r3, [r0]
	b	.L1306
.L1305:
	add	r1, r7, #16128
	add	r1, r1, #40
	ldr	r2, [r1]
	add	ip, r7, #16000
	add	ip, ip, #8
	ldr	r3, [ip]
	add	r3, r3, r2
	add	r0, r7, #16128
	add	r0, r0, #40
	str	r3, [r0]
.L1306:
	add	r1, r7, #16064
	add	r1, r1, #43
	ldrb	r3, [r1]	@ zero_extendqisi2
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	add	r2, r7, #16064
	add	r2, r2, #43
	strb	r3, [r2]
	add	r3, r7, #16128
	add	r3, r3, #36
	ldr	r1, [r3]
	add	ip, r7, #16128
	add	ip, ip, #40
	ldr	r2, [ip]
	addw	r3, r7, #3976
	subs	r3, r3, #40
	mov	r0, r3
	bl	cf2_glyphpath_lineTo(PLT)
	add	r0, r7, #16064
	add	r0, r0, #44
	ldr	r3, [r0]
	adds	r3, r3, #1
	add	r1, r7, #16064
	add	r1, r1, #44
	str	r3, [r1]
.L1304:
	add	r3, r7, #16064
	add	r3, r3, #44
	ldr	r2, [r3]
	add	ip, r7, #16000
	add	ip, ip, #12
	ldr	r3, [ip]
	cmp	r2, r3
	bcc	.L1307
	add	r1, r7, #16000
	add	r1, r1, #20
	ldr	r0, [r1]
	bl	cf2_stack_clear(PLT)
	b	.L1303
.L1281:
	add	r2, r7, #16000
	add	r2, r2, #20
	ldr	r0, [r2]
	bl	cf2_stack_count(PLT)
	add	r3, r7, #16000
	add	r3, r3, #4
	str	r0, [r3]
	movs	r3, #0
	add	ip, r7, #16064
	add	ip, ip, #36
	str	r3, [ip]
	b	.L1308
.L1309:
	add	r1, r7, #16000
	add	r1, r1, #20
	ldr	r0, [r1]
	add	r2, r7, #16064
	add	r2, r2, #36
	ldr	r1, [r2]
	bl	cf2_stack_getReal(PLT)
	mov	r2, r0
	add	ip, r7, #16128
	add	ip, ip, #36
	ldr	r3, [ip]
	add	r3, r3, r2
	add	r0, r7, #16000
	str	r3, [r0]
	add	r1, r7, #16064
	add	r1, r1, #36
	ldr	r3, [r1]
	adds	r3, r3, #1
	add	r2, r7, #16000
	add	r2, r2, #20
	ldr	r0, [r2]
	mov	r1, r3
	bl	cf2_stack_getReal(PLT)
	mov	r2, r0
	add	ip, r7, #16128
	add	ip, ip, #40
	ldr	r3, [ip]
	add	r3, r3, r2
	add	r0, r7, #15936
	add	r0, r0, #60
	str	r3, [r0]
	add	r1, r7, #16064
	add	r1, r1, #36
	ldr	r3, [r1]
	adds	r3, r3, #2
	add	r2, r7, #16000
	add	r2, r2, #20
	ldr	r0, [r2]
	mov	r1, r3
	bl	cf2_stack_getReal(PLT)
	mov	r2, r0
	add	ip, r7, #16000
	ldr	r3, [ip]
	add	r3, r3, r2
	add	r0, r7, #15936
	add	r0, r0, #56
	str	r3, [r0]
	add	r1, r7, #16064
	add	r1, r1, #36
	ldr	r3, [r1]
	adds	r3, r3, #3
	add	r2, r7, #16000
	add	r2, r2, #20
	ldr	r0, [r2]
	mov	r1, r3
	bl	cf2_stack_getReal(PLT)
	mov	r2, r0
	add	ip, r7, #15936
	add	ip, ip, #60
	ldr	r3, [ip]
	add	r3, r3, r2
	add	r0, r7, #15936
	add	r0, r0, #52
	str	r3, [r0]
	add	r1, r7, #16064
	add	r1, r1, #36
	ldr	r3, [r1]
	adds	r3, r3, #4
	add	r2, r7, #16000
	add	r2, r2, #20
	ldr	r0, [r2]
	mov	r1, r3
	bl	cf2_stack_getReal(PLT)
	mov	r2, r0
	add	ip, r7, #15936
	add	ip, ip, #56
	ldr	r3, [ip]
	add	r3, r3, r2
	add	r0, r7, #15936
	add	r0, r0, #48
	str	r3, [r0]
	add	r1, r7, #16064
	add	r1, r1, #36
	ldr	r3, [r1]
	adds	r3, r3, #5
	add	r2, r7, #16000
	add	r2, r2, #20
	ldr	r0, [r2]
	mov	r1, r3
	bl	cf2_stack_getReal(PLT)
	mov	r2, r0
	add	ip, r7, #15936
	add	ip, ip, #52
	ldr	r3, [ip]
	add	r3, r3, r2
	add	r0, r7, #15936
	add	r0, r0, #44
	str	r3, [r0]
	addw	r3, r7, #3976
	subs	r3, r3, #40
	add	r1, r7, #15936
	add	r1, r1, #52
	ldr	r2, [r1]
	str	r2, [sp]
	add	ip, r7, #15936
	add	ip, ip, #48
	ldr	r2, [ip]
	str	r2, [sp, #4]
	add	r0, r7, #15936
	add	r0, r0, #44
	ldr	r2, [r0]
	str	r2, [sp, #8]
	mov	r0, r3
	add	r2, r7, #16000
	ldr	r1, [r2]
	add	r3, r7, #15936
	add	r3, r3, #60
	ldr	r2, [r3]
	add	ip, r7, #15936
	add	ip, ip, #56
	ldr	r3, [ip]
	bl	cf2_glyphpath_curveTo(PLT)
	add	r0, r7, #15936
	add	r0, r0, #48
	ldr	r3, [r0]
	add	r1, r7, #16128
	add	r1, r1, #36
	str	r3, [r1]
	add	r2, r7, #15936
	add	r2, r2, #44
	ldr	r3, [r2]
	add	ip, r7, #16128
	add	ip, ip, #40
	str	r3, [ip]
	add	r0, r7, #16064
	add	r0, r0, #36
	ldr	r3, [r0]
	adds	r3, r3, #6
	add	r1, r7, #16064
	add	r1, r1, #36
	str	r3, [r1]
.L1308:
	add	r2, r7, #16064
	add	r2, r2, #36
	ldr	r3, [r2]
	adds	r2, r3, #6
	add	ip, r7, #16000
	add	ip, ip, #4
	ldr	r3, [ip]
	cmp	r2, r3
	bls	.L1309
	add	r0, r7, #16128
	add	r0, r0, #3
	ldrb	r3, [r0]	@ zero_extendqisi2
	cmp	r3, #24
	bne	.L1310
	add	r1, r7, #16000
	add	r1, r1, #20
	ldr	r0, [r1]
	add	r2, r7, #16064
	add	r2, r2, #36
	ldr	r1, [r2]
	bl	cf2_stack_getReal(PLT)
	mov	r2, r0
	add	ip, r7, #16128
	add	ip, ip, #36
	ldr	r3, [ip]
	add	r3, r3, r2
	add	r0, r7, #16128
	add	r0, r0, #36
	str	r3, [r0]
	add	r1, r7, #16064
	add	r1, r1, #36
	ldr	r3, [r1]
	adds	r3, r3, #1
	add	r2, r7, #16000
	add	r2, r2, #20
	ldr	r0, [r2]
	mov	r1, r3
	bl	cf2_stack_getReal(PLT)
	mov	r2, r0
	add	ip, r7, #16128
	add	ip, ip, #40
	ldr	r3, [ip]
	add	r3, r3, r2
	add	r0, r7, #16128
	add	r0, r0, #40
	str	r3, [r0]
	add	r2, r7, #16128
	add	r2, r2, #36
	ldr	r1, [r2]
	add	r3, r7, #16128
	add	r3, r3, #40
	ldr	r2, [r3]
	addw	r3, r7, #3976
	subs	r3, r3, #40
	mov	r0, r3
	bl	cf2_glyphpath_lineTo(PLT)
.L1310:
	add	ip, r7, #16000
	add	ip, ip, #20
	ldr	r0, [ip]
	bl	cf2_stack_clear(PLT)
	b	.L1303
.L1282:
	add	r0, r7, #16064
	add	r0, r0, #52
	ldr	r3, [r0]
	cmp	r3, #16
	ble	.L1311
	movs	r3, #18
	add	r1, r7, #16128
	add	r1, r1, #4
	str	r3, [r1]
	b	.L1265
.L1311:
	add	r2, r7, #16064
	add	r2, r2, #52
	ldr	r3, [r2]
	adds	r3, r3, #1
	add	r2, r7, #15808
	add	r2, r2, #8
	mov	r0, r2
	mov	r1, r3
	bl	cf2_arrstack_getPointer(PLT)
	add	r3, r7, #16064
	add	r3, r3, #56
	str	r0, [r3]
	add	ip, r7, #16000
	add	ip, ip, #20
	ldr	r0, [ip]
	bl	cf2_stack_popInt(PLT)
	add	r1, r7, #15936
	add	r1, r1, #40
	str	r0, [r1]
	add	r2, r7, #16128
	add	r2, r2, #3
	ldrb	r3, [r2]	@ zero_extendqisi2
	cmp	r3, #29
	bne	.L1385
	add	r3, r7, #16000
	add	r3, r3, #44
	ldr	r0, [r3]
	add	ip, r7, #15936
	add	ip, ip, #40
	ldr	r1, [ip]
	add	r3, r7, #16064
	add	r3, r3, #56
	ldr	r2, [r3]
	bl	cf2_initGlobalRegionBuffer(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1314
	movs	r3, #18
	add	ip, r7, #16128
	add	ip, ip, #4
	str	r3, [ip]
	b	.L1265
.L1314:
	b	.L1315
.L1385:
	add	r1, r7, #16000
	add	r1, r1, #44
	ldr	r0, [r1]
	add	r2, r7, #15936
	add	r2, r2, #40
	ldr	r1, [r2]
	add	r3, r7, #16064
	add	r3, r3, #56
	ldr	r2, [r3]
	bl	cf2_initLocalRegionBuffer(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1315
	movs	r3, #18
	add	ip, r7, #16128
	add	ip, ip, #4
	str	r3, [ip]
	b	.L1265
.L1315:
	add	r0, r7, #16064
	add	r0, r0, #52
	ldr	r3, [r0]
	adds	r3, r3, #1
	add	r1, r7, #16064
	add	r1, r1, #52
	str	r3, [r1]
	b	.L1303
.L1283:
	add	r2, r7, #16064
	add	r2, r2, #52
	ldr	r3, [r2]
	cmp	r3, #0
	bgt	.L1316
	movs	r3, #18
	add	ip, r7, #16128
	add	ip, ip, #4
	str	r3, [ip]
	b	.L1265
.L1316:
	add	r0, r7, #16064
	add	r0, r0, #52
	ldr	r3, [r0]
	subs	r3, r3, #1
	add	r1, r7, #16064
	add	r1, r1, #52
	str	r3, [r1]
	add	r2, r7, #16064
	add	r2, r2, #52
	ldr	r3, [r2]
	add	r2, r7, #15808
	add	r2, r2, #8
	mov	r0, r2
	mov	r1, r3
	bl	cf2_arrstack_getPointer(PLT)
	add	r3, r7, #16064
	add	r3, r3, #56
	str	r0, [r3]
	b	.L1303
.L1284:
	add	ip, r7, #16064
	add	ip, ip, #56
	ldr	r0, [ip]
	bl	cf2_buf_readByte(PLT)
	mov	r3, r0
	add	r0, r7, #15936
	add	r0, r0, #39
	strb	r3, [r0]
	add	r1, r7, #15936
	add	r1, r1, #39
	ldrb	r3, [r1]	@ zero_extendqisi2
	cmp	r3, #37
	bhi	.L1387
	adr	r2, .L1319
	ldr	ip, [r2, r3, lsl #2]
	add	r2, r2, ip
	bx	r2
	.p2align 2
.L1319:
	.word	.L1388+1-.L1319
	.word	.L1387+1-.L1319
	.word	.L1387+1-.L1319
	.word	.L1388+1-.L1319
	.word	.L1388+1-.L1319
	.word	.L1388+1-.L1319
	.word	.L1387+1-.L1319
	.word	.L1387+1-.L1319
	.word	.L1387+1-.L1319
	.word	.L1388+1-.L1319
	.word	.L1388+1-.L1319
	.word	.L1388+1-.L1319
	.word	.L1388+1-.L1319
	.word	.L1387+1-.L1319
	.word	.L1388+1-.L1319
	.word	.L1388+1-.L1319
	.word	.L1387+1-.L1319
	.word	.L1387+1-.L1319
	.word	.L1388+1-.L1319
	.word	.L1387+1-.L1319
	.word	.L1388+1-.L1319
	.word	.L1388+1-.L1319
	.word	.L1388+1-.L1319
	.word	.L1388+1-.L1319
	.word	.L1388+1-.L1319
	.word	.L1387+1-.L1319
	.word	.L1388+1-.L1319
	.word	.L1388+1-.L1319
	.word	.L1388+1-.L1319
	.word	.L1388+1-.L1319
	.word	.L1388+1-.L1319
	.word	.L1387+1-.L1319
	.word	.L1387+1-.L1319
	.word	.L1387+1-.L1319
	.word	.L1340+1-.L1319
	.word	.L1341+1-.L1319
	.word	.L1342+1-.L1319
	.word	.L1343+1-.L1319
.L1340:
	add	r1, r7, #16128
	add	r1, r1, #36
	add	r2, r7, #16128
	add	r2, r2, #40
	addw	r3, r7, #3976
	subs	r3, r3, #40
	ldr	r0, .L1390
.LPIC52:
	add	r0, pc
	str	r0, [sp]
	movs	r0, #0
	str	r0, [sp, #4]
	add	ip, r7, #16000
	add	ip, ip, #20
	ldr	r0, [ip]
	bl	cf2_doFlex(PLT)
	b	.L1303
.L1341:
	add	r1, r7, #16128
	add	r1, r1, #36
	add	r2, r7, #16128
	add	r2, r2, #40
	addw	r3, r7, #3976
	subs	r3, r3, #40
	ldr	r0, .L1390+4
.LPIC53:
	add	r0, pc
	str	r0, [sp]
	movs	r0, #0
	str	r0, [sp, #4]
	add	ip, r7, #16000
	add	ip, ip, #20
	ldr	r0, [ip]
	bl	cf2_doFlex(PLT)
	b	.L1317
.L1342:
	add	r1, r7, #16128
	add	r1, r1, #36
	add	r2, r7, #16128
	add	r2, r2, #40
	addw	r3, r7, #3976
	subs	r3, r3, #40
	ldr	r0, .L1390+8
.LPIC54:
	add	r0, pc
	str	r0, [sp]
	movs	r0, #0
	str	r0, [sp, #4]
	add	ip, r7, #16000
	add	ip, ip, #20
	ldr	r0, [ip]
	bl	cf2_doFlex(PLT)
	b	.L1303
.L1343:
	add	r1, r7, #16128
	add	r1, r1, #36
	add	r2, r7, #16128
	add	r2, r2, #40
	addw	r3, r7, #3976
	subs	r3, r3, #40
	ldr	r0, .L1390+12
.LPIC55:
	add	r0, pc
	str	r0, [sp]
	movs	r0, #1
	str	r0, [sp, #4]
	add	ip, r7, #16000
	add	ip, ip, #20
	ldr	r0, [ip]
	bl	cf2_doFlex(PLT)
	b	.L1303
.L1388:
	nop
.L1317:
	b	.L1387
.L1285:
	add	r1, r7, #16000
	add	r1, r1, #20
	ldr	r0, [r1]
	bl	cf2_stack_count(PLT)
	mov	r3, r0
	cmp	r3, #1
	beq	.L1344
	add	r2, r7, #16000
	add	r2, r2, #20
	ldr	r0, [r2]
	bl	cf2_stack_count(PLT)
	mov	r3, r0
	cmp	r3, #5
	bne	.L1345
.L1344:
	add	r3, r7, #15808
	add	r3, r3, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L1345
	add	r3, r7, #16000
	add	r3, r3, #20
	ldr	r0, [r3]
	movs	r1, #0
	bl	cf2_stack_getReal(PLT)
	mov	r2, r0
	add	ip, r7, #16000
	add	ip, ip, #28
	ldr	r3, [ip]
	add	r2, r2, r3
	add	r0, r7, #16128
	add	r0, r0, #44
	ldr	r3, [r0]
	str	r2, [r3]
.L1345:
	add	r3, r7, #15808
	add	r3, r3, #7
	movs	r2, #1
	strb	r2, [r3]
	add	r3, r7, #72
	subs	r3, r3, #60
	ldr	r3, [r3]
	ldr	r3, [r3, #132]
	ldrb	r3, [r3, #561]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1346
	b	.L1265
.L1346:
	addw	r3, r7, #3976
	subs	r3, r3, #40
	mov	r0, r3
	bl	cf2_glyphpath_closeOpenPath(PLT)
	add	r1, r7, #16000
	add	r1, r1, #20
	ldr	r0, [r1]
	bl	cf2_stack_count(PLT)
	mov	r3, r0
	cmp	r3, #1
	bls	.L1389
	add	r2, r7, #16128
	add	r2, r2, #32
	ldrb	r3, [r2]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1348
	movs	r3, #18
	add	ip, r7, #16128
	add	ip, ip, #4
	str	r3, [ip]
	b	.L1265
.L1348:
	add	r1, r7, #16000
	add	r1, r1, #20
	ldr	r0, [r1]
	bl	cf2_stack_popInt(PLT)
	add	r2, r7, #15936
	add	r2, r2, #32
	str	r0, [r2]
	add	r3, r7, #16000
	add	r3, r3, #20
	ldr	r0, [r3]
	bl	cf2_stack_popInt(PLT)
	add	ip, r7, #15936
	add	ip, ip, #28
	str	r0, [ip]
	add	r1, r7, #16000
	add	r1, r1, #20
	ldr	r0, [r1]
	bl	cf2_stack_popFixed(PLT)
	mov	r3, r0
	add	r2, r7, #16128
	add	r2, r2, #40
	str	r3, [r2]
	add	r3, r7, #16000
	add	r3, r3, #20
	ldr	r0, [r3]
	bl	cf2_stack_popFixed(PLT)
	mov	r3, r0
	add	ip, r7, #16128
	add	ip, ip, #36
	str	r3, [ip]
	addw	r3, r7, #3976
	subs	r3, r3, #56
	add	r1, r7, #16000
	add	r1, r1, #44
	ldr	r0, [r1]
	add	r2, r7, #15936
	add	r2, r2, #32
	ldr	r1, [r2]
	mov	r2, r3
	bl	cf2_getSeacComponent(PLT)
	add	r3, r7, #15936
	add	r3, r3, #24
	str	r0, [r3]
	add	ip, r7, #15936
	add	ip, ip, #24
	ldr	r3, [ip]
	cmp	r3, #0
	beq	.L1350
	add	r0, r7, #15936
	add	r0, r0, #24
	ldr	r3, [r0]
	add	r1, r7, #16128
	add	r1, r1, #4
	str	r3, [r1]
	b	.L1265
.L1350:
	add	r2, r7, #16128
	add	r2, r2, #36
	ldr	r5, [r2]
	add	r3, r7, #16128
	add	r3, r3, #40
	ldr	r4, [r3]
	add	r0, r7, #72
	subs	r0, r0, #60
	addw	r1, r7, #3976
	subs	r1, r1, #56
	add	r2, r7, #8
	subs	r2, r2, #4
	add	r3, r7, #8
	subs	r3, r3, #8
	movs	r6, #1
	str	r6, [sp]
	str	r5, [sp, #4]
	str	r4, [sp, #8]
	addw	r4, r7, #3976
	subs	r4, r4, #60
	str	r4, [sp, #12]
	ldr	r0, [r0]
	ldr	r2, [r2]
	ldr	r3, [r3]
	bl	cf2_interpT2CharString(PLT)
	addw	r3, r7, #3976
	subs	r3, r3, #56
	add	ip, r7, #16000
	add	ip, ip, #44
	ldr	r0, [ip]
	mov	r1, r3
	bl	cf2_freeSeacComponent(PLT)
	addw	r3, r7, #3976
	subs	r3, r3, #56
	add	r1, r7, #16000
	add	r1, r1, #44
	ldr	r0, [r1]
	add	r2, r7, #15936
	add	r2, r2, #28
	ldr	r1, [r2]
	mov	r2, r3
	bl	cf2_getSeacComponent(PLT)
	add	r3, r7, #15936
	add	r3, r3, #24
	str	r0, [r3]
	add	ip, r7, #15936
	add	ip, ip, #24
	ldr	r3, [ip]
	cmp	r3, #0
	beq	.L1351
	add	r0, r7, #15936
	add	r0, r0, #24
	ldr	r3, [r0]
	add	r1, r7, #16128
	add	r1, r1, #4
	str	r3, [r1]
	nop
	b	.L1265
.L1351:
	add	r0, r7, #72
	subs	r0, r0, #60
	addw	r1, r7, #3976
	subs	r1, r1, #56
	add	r2, r7, #8
	subs	r2, r2, #4
	add	r3, r7, #8
	subs	r3, r3, #8
	movs	r4, #1
	str	r4, [sp]
	movs	r4, #0
	str	r4, [sp, #4]
	movs	r4, #0
	str	r4, [sp, #8]
	addw	r4, r7, #3976
	subs	r4, r4, #60
	str	r4, [sp, #12]
	ldr	r0, [r0]
	ldr	r2, [r2]
	ldr	r3, [r3]
	bl	cf2_interpT2CharString(PLT)
	addw	r3, r7, #3976
	subs	r3, r3, #56
	add	r2, r7, #16000
	add	r2, r2, #44
	ldr	r0, [r2]
	mov	r1, r3
	bl	cf2_freeSeacComponent(PLT)
	b	.L1389
.L1286:
	add	r3, r7, #16000
	add	r3, r3, #20
	ldr	r0, [r3]
	bl	cf2_stack_count(PLT)
	mov	r3, r0
	cmp	r3, #1
	bls	.L1352
	add	r3, r7, #15680
	add	r3, r3, #40
	mov	r0, r3
	bl	cf2_hintmask_isValid(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1352
	b	.L1294
.L1352:
	add	r3, r7, #72
	subs	r3, r3, #60
	add	r2, r7, #15744
	add	r2, r2, #4
	add	r1, r7, #15808
	add	r1, r1, #7
	str	r1, [sp]
	movs	r1, #0
	str	r1, [sp, #4]
	ldr	r0, [r3]
	add	ip, r7, #16000
	add	ip, ip, #20
	ldr	r1, [ip]
	add	ip, r7, #16128
	add	ip, ip, #44
	ldr	r3, [ip]
	bl	cf2_doStems(PLT)
	add	r3, r7, #72
	subs	r3, r3, #60
	ldr	r3, [r3]
	ldr	r3, [r3, #132]
	ldrb	r3, [r3, #561]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1353
	b	.L1265
.L1353:
	add	r0, r7, #16128
	add	r0, r0, #3
	ldrb	r3, [r0]	@ zero_extendqisi2
	cmp	r3, #19
	bne	.L1354
	add	r3, r7, #15744
	add	r3, r3, #36
	mov	r0, r3
	bl	cf2_arrstack_size(PLT)
	mov	r4, r0
	add	r3, r7, #15744
	add	r3, r3, #4
	mov	r0, r3
	bl	cf2_arrstack_size(PLT)
	mov	r3, r0
	add	r3, r3, r4
	add	r2, r7, #15680
	add	r2, r2, #40
	mov	r0, r2
	add	r2, r7, #16064
	add	r2, r2, #56
	ldr	r1, [r2]
	mov	r2, r3
	bl	cf2_hintmask_read(PLT)
	b	.L1294
.L1354:
	add	r1, r7, #72
	subs	r1, r1, #52
	add	r2, r7, #72
	subs	r2, r2, #60
	addw	r3, r7, #3976
	subs	r3, r3, #40
	add	r4, r3, #7744
	addw	r3, r7, #3976
	subs	r3, r3, #40
	add	r3, r3, #11584
	adds	r3, r3, #28
	add	ip, r7, #16000
	add	ip, ip, #32
	ldr	r0, [ip]
	str	r0, [sp]
	mov	r0, r1
	ldr	r1, [r2]
	mov	r2, r4
	bl	cf2_hintmap_init(PLT)
	addw	r3, r7, #3912
	subs	r3, r3, #24
	mov	r0, r3
	add	r2, r7, #16000
	add	r2, r2, #40
	ldr	r1, [r2]
	bl	cf2_hintmask_init(PLT)
	add	r3, r7, #15744
	add	r3, r3, #36
	mov	r0, r3
	bl	cf2_arrstack_size(PLT)
	mov	r4, r0
	add	r3, r7, #15744
	add	r3, r3, #4
	mov	r0, r3
	bl	cf2_arrstack_size(PLT)
	mov	r3, r0
	adds	r2, r4, r3
	addw	r3, r7, #3912
	subs	r3, r3, #24
	mov	r0, r3
	add	r3, r7, #16064
	add	r3, r3, #56
	ldr	r1, [r3]
	bl	cf2_hintmask_read(PLT)
	add	r2, r7, #72
	subs	r2, r2, #52
	add	r1, r7, #15744
	add	r1, r1, #36
	add	r4, r7, #15744
	add	r4, r4, #4
	addw	r3, r7, #3912
	subs	r3, r3, #24
	movs	r0, #0
	str	r0, [sp]
	movs	r0, #0
	str	r0, [sp, #4]
	mov	r0, r2
	mov	r2, r4
	bl	cf2_hintmap_build(PLT)
	b	.L1294
.L1287:
	add	ip, r7, #16000
	add	ip, ip, #20
	ldr	r0, [ip]
	bl	cf2_stack_count(PLT)
	mov	r3, r0
	cmp	r3, #2
	bls	.L1356
	add	r3, r7, #15808
	add	r3, r3, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L1356
	add	r1, r7, #16000
	add	r1, r1, #20
	ldr	r0, [r1]
	movs	r1, #0
	bl	cf2_stack_getReal(PLT)
	mov	r2, r0
	add	ip, r7, #16000
	add	ip, ip, #28
	ldr	r3, [ip]
	add	r2, r2, r3
	add	r0, r7, #16128
	add	r0, r0, #44
	ldr	r3, [r0]
	str	r2, [r3]
.L1356:
	add	r3, r7, #15808
	add	r3, r3, #7
	movs	r2, #1
	strb	r2, [r3]
	add	r3, r7, #72
	subs	r3, r3, #60
	ldr	r3, [r3]
	ldr	r3, [r3, #132]
	ldrb	r3, [r3, #561]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1357
	b	.L1265
.L1357:
	add	r1, r7, #16000
	add	r1, r1, #20
	ldr	r0, [r1]
	bl	cf2_stack_popFixed(PLT)
	mov	r2, r0
	add	ip, r7, #16128
	add	ip, ip, #40
	ldr	r3, [ip]
	add	r3, r3, r2
	add	r0, r7, #16128
	add	r0, r0, #40
	str	r3, [r0]
	add	r1, r7, #16000
	add	r1, r1, #20
	ldr	r0, [r1]
	bl	cf2_stack_popFixed(PLT)
	mov	r2, r0
	add	ip, r7, #16128
	add	ip, ip, #36
	ldr	r3, [ip]
	add	r3, r3, r2
	add	r0, r7, #16128
	add	r0, r0, #36
	str	r3, [r0]
	add	r2, r7, #16128
	add	r2, r2, #36
	ldr	r1, [r2]
	add	r3, r7, #16128
	add	r3, r3, #40
	ldr	r2, [r3]
	addw	r3, r7, #3976
	subs	r3, r3, #40
	mov	r0, r3
	bl	cf2_glyphpath_moveTo(PLT)
	b	.L1294
.L1288:
	add	ip, r7, #16000
	add	ip, ip, #20
	ldr	r0, [ip]
	bl	cf2_stack_count(PLT)
	mov	r3, r0
	cmp	r3, #1
	bls	.L1358
	add	r3, r7, #15808
	add	r3, r3, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L1358
	add	r1, r7, #16000
	add	r1, r1, #20
	ldr	r0, [r1]
	movs	r1, #0
	bl	cf2_stack_getReal(PLT)
	mov	r2, r0
	add	ip, r7, #16000
	add	ip, ip, #28
	ldr	r3, [ip]
	add	r2, r2, r3
	add	r0, r7, #16128
	add	r0, r0, #44
	ldr	r3, [r0]
	str	r2, [r3]
.L1358:
	add	r3, r7, #15808
	add	r3, r3, #7
	movs	r2, #1
	strb	r2, [r3]
	add	r3, r7, #72
	subs	r3, r3, #60
	ldr	r3, [r3]
	ldr	r3, [r3, #132]
	ldrb	r3, [r3, #561]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1359
	b	.L1265
.L1359:
	add	r1, r7, #16000
	add	r1, r1, #20
	ldr	r0, [r1]
	bl	cf2_stack_popFixed(PLT)
	mov	r2, r0
	add	ip, r7, #16128
	add	ip, ip, #36
	ldr	r3, [ip]
	add	r3, r3, r2
	add	r0, r7, #16128
	add	r0, r0, #36
	str	r3, [r0]
	add	r2, r7, #16128
	add	r2, r2, #36
	ldr	r1, [r2]
	add	r3, r7, #16128
	add	r3, r3, #40
	ldr	r2, [r3]
	addw	r3, r7, #3976
	subs	r3, r3, #40
	mov	r0, r3
	bl	cf2_glyphpath_moveTo(PLT)
	b	.L1294
.L1289:
	add	ip, r7, #16000
	add	ip, ip, #20
	ldr	r0, [ip]
	bl	cf2_stack_count(PLT)
	add	r1, r7, #15936
	add	r1, r1, #20
	str	r0, [r1]
	movs	r3, #0
	add	r2, r7, #16064
	add	r2, r2, #32
	str	r3, [r2]
	b	.L1360
.L1361:
	add	r3, r7, #16000
	add	r3, r3, #20
	ldr	r0, [r3]
	add	ip, r7, #16064
	add	ip, ip, #32
	ldr	r1, [ip]
	bl	cf2_stack_getReal(PLT)
	mov	r2, r0
	add	r0, r7, #16128
	add	r0, r0, #36
	ldr	r3, [r0]
	add	r3, r3, r2
	add	r1, r7, #16128
	add	r1, r1, #36
	str	r3, [r1]
	add	r2, r7, #16064
	add	r2, r2, #32
	ldr	r3, [r2]
	adds	r3, r3, #1
	add	ip, r7, #16000
	add	ip, ip, #20
	ldr	r0, [ip]
	mov	r1, r3
	bl	cf2_stack_getReal(PLT)
	mov	r2, r0
	add	r0, r7, #16128
	add	r0, r0, #40
	ldr	r3, [r0]
	add	r3, r3, r2
	add	r1, r7, #16128
	add	r1, r1, #40
	str	r3, [r1]
	add	r2, r7, #16128
	add	r2, r2, #36
	ldr	r1, [r2]
	add	r3, r7, #16128
	add	r3, r3, #40
	ldr	r2, [r3]
	addw	r3, r7, #3976
	subs	r3, r3, #40
	mov	r0, r3
	bl	cf2_glyphpath_lineTo(PLT)
	add	ip, r7, #16064
	add	ip, ip, #32
	ldr	r3, [ip]
	adds	r3, r3, #2
	add	r0, r7, #16064
	add	r0, r0, #32
	str	r3, [r0]
.L1360:
	add	r1, r7, #16064
	add	r1, r1, #32
	ldr	r3, [r1]
	adds	r2, r3, #6
	add	ip, r7, #15936
	add	ip, ip, #20
	ldr	r3, [ip]
	cmp	r2, r3
	bcc	.L1361
	b	.L1362
.L1363:
	add	r1, r7, #16000
	add	r1, r1, #20
	ldr	r0, [r1]
	add	r2, r7, #16064
	add	r2, r2, #32
	ldr	r1, [r2]
	bl	cf2_stack_getReal(PLT)
	mov	r2, r0
	add	ip, r7, #16128
	add	ip, ip, #36
	ldr	r3, [ip]
	add	r3, r3, r2
	add	r0, r7, #15936
	add	r0, r0, #16
	str	r3, [r0]
	add	r1, r7, #16064
	add	r1, r1, #32
	ldr	r3, [r1]
	adds	r3, r3, #1
	add	r2, r7, #16000
	add	r2, r2, #20
	ldr	r0, [r2]
	mov	r1, r3
	bl	cf2_stack_getReal(PLT)
	mov	r2, r0
	add	ip, r7, #16128
	add	ip, ip, #40
	ldr	r3, [ip]
	add	r3, r3, r2
	add	r0, r7, #15936
	add	r0, r0, #12
	str	r3, [r0]
	add	r1, r7, #16064
	add	r1, r1, #32
	ldr	r3, [r1]
	adds	r3, r3, #2
	add	r2, r7, #16000
	add	r2, r2, #20
	ldr	r0, [r2]
	mov	r1, r3
	bl	cf2_stack_getReal(PLT)
	mov	r2, r0
	add	ip, r7, #15936
	add	ip, ip, #16
	ldr	r3, [ip]
	add	r3, r3, r2
	add	r0, r7, #15936
	add	r0, r0, #8
	str	r3, [r0]
	add	r1, r7, #16064
	add	r1, r1, #32
	ldr	r3, [r1]
	adds	r3, r3, #3
	add	r2, r7, #16000
	add	r2, r2, #20
	ldr	r0, [r2]
	mov	r1, r3
	bl	cf2_stack_getReal(PLT)
	mov	r2, r0
	add	ip, r7, #15936
	add	ip, ip, #12
	ldr	r3, [ip]
	add	r3, r3, r2
	add	r0, r7, #15936
	add	r0, r0, #4
	str	r3, [r0]
	add	r1, r7, #16064
	add	r1, r1, #32
	ldr	r3, [r1]
	adds	r3, r3, #4
	add	r2, r7, #16000
	add	r2, r2, #20
	ldr	r0, [r2]
	mov	r1, r3
	bl	cf2_stack_getReal(PLT)
	mov	r2, r0
	add	ip, r7, #15936
	add	ip, ip, #8
	ldr	r3, [ip]
	add	r3, r3, r2
	add	r0, r7, #15936
	str	r3, [r0]
	add	r1, r7, #16064
	add	r1, r1, #32
	ldr	r3, [r1]
	adds	r3, r3, #5
	add	r2, r7, #16000
	add	r2, r2, #20
	ldr	r0, [r2]
	mov	r1, r3
	bl	cf2_stack_getReal(PLT)
	mov	r2, r0
	add	ip, r7, #15936
	add	ip, ip, #4
	ldr	r3, [ip]
	add	r3, r3, r2
	add	r0, r7, #15872
	add	r0, r0, #60
	str	r3, [r0]
	addw	r3, r7, #3976
	subs	r3, r3, #40
	add	r1, r7, #15936
	add	r1, r1, #4
	ldr	r2, [r1]
	str	r2, [sp]
	add	ip, r7, #15936
	ldr	r2, [ip]
	str	r2, [sp, #4]
	add	r0, r7, #15872
	add	r0, r0, #60
	ldr	r2, [r0]
	str	r2, [sp, #8]
	mov	r0, r3
	add	r2, r7, #15936
	add	r2, r2, #16
	ldr	r1, [r2]
	add	r3, r7, #15936
	add	r3, r3, #12
	ldr	r2, [r3]
	add	ip, r7, #15936
	add	ip, ip, #8
	ldr	r3, [ip]
	bl	cf2_glyphpath_curveTo(PLT)
	add	r0, r7, #15936
	ldr	r3, [r0]
	add	r1, r7, #16128
	add	r1, r1, #36
	str	r3, [r1]
	add	r2, r7, #15872
	add	r2, r2, #60
	ldr	r3, [r2]
	add	ip, r7, #16128
	add	ip, ip, #40
	str	r3, [ip]
	add	r0, r7, #16064
	add	r0, r0, #32
	ldr	r3, [r0]
	adds	r3, r3, #6
	add	r1, r7, #16064
	add	r1, r1, #32
	str	r3, [r1]
.L1362:
	add	r3, r7, #16064
	add	r3, r3, #32
	ldr	r2, [r3]
	add	ip, r7, #15936
	add	ip, ip, #20
	ldr	r3, [ip]
	cmp	r2, r3
	bcc	.L1363
	add	r1, r7, #16000
	add	r1, r1, #20
	ldr	r0, [r1]
	bl	cf2_stack_clear(PLT)
	b	.L1303
.L1290:
	add	r2, r7, #16000
	add	r2, r2, #20
	ldr	r0, [r2]
	bl	cf2_stack_count(PLT)
	add	r3, r7, #15872
	add	r3, r3, #56
	str	r0, [r3]
	movs	r3, #0
	add	ip, r7, #16064
	add	ip, ip, #28
	str	r3, [ip]
	add	r0, r7, #15872
	add	r0, r0, #56
	ldr	r3, [r0]
	bic	r3, r3, #2
	add	r1, r7, #15872
	add	r1, r1, #52
	str	r3, [r1]
	add	r3, r7, #15872
	add	r3, r3, #56
	ldr	r2, [r3]
	add	ip, r7, #15872
	add	ip, ip, #52
	ldr	r3, [ip]
	subs	r3, r2, r3
	add	r0, r7, #16064
	add	r0, r0, #28
	ldr	r2, [r0]
	add	r3, r3, r2
	add	r1, r7, #16064
	add	r1, r1, #28
	str	r3, [r1]
	b	.L1364
.L1367:
	add	r3, r7, #15872
	add	r3, r3, #52
	ldr	r2, [r3]
	add	ip, r7, #16064
	add	ip, ip, #28
	ldr	r3, [ip]
	subs	r3, r2, r3
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L1365
	add	r1, r7, #16000
	add	r1, r1, #20
	ldr	r0, [r1]
	add	r2, r7, #16064
	add	r2, r2, #28
	ldr	r1, [r2]
	bl	cf2_stack_getReal(PLT)
	mov	r2, r0
	add	ip, r7, #16128
	add	ip, ip, #36
	ldr	r3, [ip]
	add	r3, r3, r2
	add	r0, r7, #16064
	add	r0, r0, #24
	str	r3, [r0]
	add	r1, r7, #16064
	add	r1, r1, #28
	ldr	r3, [r1]
	adds	r3, r3, #1
	add	r2, r7, #16064
	add	r2, r2, #28
	str	r3, [r2]
	b	.L1366
.L1365:
	add	ip, r7, #16128
	add	ip, ip, #36
	ldr	r3, [ip]
	add	r0, r7, #16064
	add	r0, r0, #24
	str	r3, [r0]
.L1366:
	add	r1, r7, #16000
	add	r1, r1, #20
	ldr	r0, [r1]
	add	r2, r7, #16064
	add	r2, r2, #28
	ldr	r1, [r2]
	bl	cf2_stack_getReal(PLT)
	mov	r2, r0
	add	ip, r7, #16128
	add	ip, ip, #40
	ldr	r3, [ip]
	add	r3, r3, r2
	add	r0, r7, #15872
	add	r0, r0, #48
	str	r3, [r0]
	add	r1, r7, #16064
	add	r1, r1, #28
	ldr	r3, [r1]
	adds	r3, r3, #1
	add	r2, r7, #16000
	add	r2, r2, #20
	ldr	r0, [r2]
	mov	r1, r3
	bl	cf2_stack_getReal(PLT)
	mov	r2, r0
	add	ip, r7, #16064
	add	ip, ip, #24
	ldr	r3, [ip]
	add	r3, r3, r2
	add	r0, r7, #15872
	add	r0, r0, #44
	str	r3, [r0]
	add	r1, r7, #16064
	add	r1, r1, #28
	ldr	r3, [r1]
	adds	r3, r3, #2
	add	r2, r7, #16000
	add	r2, r2, #20
	ldr	r0, [r2]
	mov	r1, r3
	bl	cf2_stack_getReal(PLT)
	mov	r2, r0
	add	ip, r7, #15872
	add	ip, ip, #48
	ldr	r3, [ip]
	add	r3, r3, r2
	add	r0, r7, #15872
	add	r0, r0, #40
	str	r3, [r0]
	add	r1, r7, #15872
	add	r1, r1, #44
	ldr	r3, [r1]
	add	r2, r7, #15872
	add	r2, r2, #36
	str	r3, [r2]
	add	ip, r7, #16064
	add	ip, ip, #28
	ldr	r3, [ip]
	adds	r3, r3, #3
	add	r1, r7, #16000
	add	r1, r1, #20
	ldr	r0, [r1]
	mov	r1, r3
	bl	cf2_stack_getReal(PLT)
	mov	r2, r0
	add	ip, r7, #15872
	add	ip, ip, #40
	ldr	r3, [ip]
	add	r3, r3, r2
	add	r0, r7, #15872
	add	r0, r0, #32
	str	r3, [r0]
	addw	r3, r7, #3976
	subs	r3, r3, #40
	add	r1, r7, #15872
	add	r1, r1, #40
	ldr	r2, [r1]
	str	r2, [sp]
	add	ip, r7, #15872
	add	ip, ip, #36
	ldr	r2, [ip]
	str	r2, [sp, #4]
	add	r0, r7, #15872
	add	r0, r0, #32
	ldr	r2, [r0]
	str	r2, [sp, #8]
	mov	r0, r3
	add	r2, r7, #16064
	add	r2, r2, #24
	ldr	r1, [r2]
	add	r3, r7, #15872
	add	r3, r3, #48
	ldr	r2, [r3]
	add	ip, r7, #15872
	add	ip, ip, #44
	ldr	r3, [ip]
	bl	cf2_glyphpath_curveTo(PLT)
	add	r0, r7, #15872
	add	r0, r0, #36
	ldr	r3, [r0]
	add	r1, r7, #16128
	add	r1, r1, #36
	str	r3, [r1]
	add	r2, r7, #15872
	add	r2, r2, #32
	ldr	r3, [r2]
	add	ip, r7, #16128
	add	ip, ip, #40
	str	r3, [ip]
	add	r0, r7, #16064
	add	r0, r0, #28
	ldr	r3, [r0]
	adds	r3, r3, #4
	add	r1, r7, #16064
	add	r1, r1, #28
	str	r3, [r1]
.L1364:
	add	r3, r7, #16064
	add	r3, r3, #28
	ldr	r2, [r3]
	add	ip, r7, #15872
	add	ip, ip, #52
	ldr	r3, [ip]
	cmp	r2, r3
	bcc	.L1367
	add	r1, r7, #16000
	add	r1, r1, #20
	ldr	r0, [r1]
	bl	cf2_stack_clear(PLT)
	b	.L1303
.L1291:
	add	r2, r7, #16000
	add	r2, r2, #20
	ldr	r0, [r2]
	bl	cf2_stack_count(PLT)
	add	r3, r7, #15872
	add	r3, r3, #28
	str	r0, [r3]
	movs	r3, #0
	add	ip, r7, #16064
	add	ip, ip, #20
	str	r3, [ip]
	add	r0, r7, #15872
	add	r0, r0, #28
	ldr	r3, [r0]
	bic	r3, r3, #2
	add	r1, r7, #15872
	add	r1, r1, #24
	str	r3, [r1]
	add	r3, r7, #15872
	add	r3, r3, #28
	ldr	r2, [r3]
	add	ip, r7, #15872
	add	ip, ip, #24
	ldr	r3, [ip]
	subs	r3, r2, r3
	add	r0, r7, #16064
	add	r0, r0, #20
	ldr	r2, [r0]
	add	r3, r3, r2
	add	r1, r7, #16064
	add	r1, r1, #20
	str	r3, [r1]
	b	.L1368
.L1371:
	add	r3, r7, #15872
	add	r3, r3, #24
	ldr	r2, [r3]
	add	ip, r7, #16064
	add	ip, ip, #20
	ldr	r3, [ip]
	subs	r3, r2, r3
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L1369
	add	r1, r7, #16000
	add	r1, r1, #20
	ldr	r0, [r1]
	add	r2, r7, #16064
	add	r2, r2, #20
	ldr	r1, [r2]
	bl	cf2_stack_getReal(PLT)
	mov	r2, r0
	add	ip, r7, #16128
	add	ip, ip, #40
	ldr	r3, [ip]
	add	r3, r3, r2
	add	r0, r7, #16064
	add	r0, r0, #16
	str	r3, [r0]
	add	r1, r7, #16064
	add	r1, r1, #20
	ldr	r3, [r1]
	adds	r3, r3, #1
	add	r2, r7, #16064
	add	r2, r2, #20
	str	r3, [r2]
	b	.L1370
.L1391:
	.align	2
.L1390:
	.word	readFromStack.10792-(.LPIC52+4)
	.word	readFromStack.10794-(.LPIC53+4)
	.word	readFromStack.10796-(.LPIC54+4)
	.word	readFromStack.10798-(.LPIC55+4)
.L1369:
	add	ip, r7, #16128
	add	ip, ip, #40
	ldr	r3, [ip]
	add	r0, r7, #16064
	add	r0, r0, #16
	str	r3, [r0]
.L1370:
	add	r1, r7, #16000
	add	r1, r1, #20
	ldr	r0, [r1]
	add	r2, r7, #16064
	add	r2, r2, #20
	ldr	r1, [r2]
	bl	cf2_stack_getReal(PLT)
	mov	r2, r0
	add	ip, r7, #16128
	add	ip, ip, #36
	ldr	r3, [ip]
	add	r3, r3, r2
	add	r0, r7, #15872
	add	r0, r0, #20
	str	r3, [r0]
	add	r1, r7, #16064
	add	r1, r1, #20
	ldr	r3, [r1]
	adds	r3, r3, #1
	add	r2, r7, #16000
	add	r2, r2, #20
	ldr	r0, [r2]
	mov	r1, r3
	bl	cf2_stack_getReal(PLT)
	mov	r2, r0
	add	ip, r7, #15872
	add	ip, ip, #20
	ldr	r3, [ip]
	add	r3, r3, r2
	add	r0, r7, #15872
	add	r0, r0, #16
	str	r3, [r0]
	add	r1, r7, #16064
	add	r1, r1, #20
	ldr	r3, [r1]
	adds	r3, r3, #2
	add	r2, r7, #16000
	add	r2, r2, #20
	ldr	r0, [r2]
	mov	r1, r3
	bl	cf2_stack_getReal(PLT)
	mov	r2, r0
	add	ip, r7, #16064
	add	ip, ip, #16
	ldr	r3, [ip]
	add	r3, r3, r2
	add	r0, r7, #15872
	add	r0, r0, #12
	str	r3, [r0]
	add	r1, r7, #16064
	add	r1, r1, #20
	ldr	r3, [r1]
	adds	r3, r3, #3
	add	r2, r7, #16000
	add	r2, r2, #20
	ldr	r0, [r2]
	mov	r1, r3
	bl	cf2_stack_getReal(PLT)
	mov	r1, r0
	add	r3, r7, #15872
	add	r3, r3, #8
	add	ip, r7, #15872
	add	ip, ip, #16
	ldr	r2, [ip]
	add	r2, r2, r1
	str	r2, [r3]
	add	r3, r7, #15872
	add	r3, r3, #4
	add	r0, r7, #15872
	add	r0, r0, #12
	ldr	r2, [r0]
	str	r2, [r3]
	addw	r3, r7, #3976
	subs	r3, r3, #40
	add	r1, r7, #15872
	add	r1, r1, #12
	ldr	r2, [r1]
	str	r2, [sp]
	add	r2, r7, #15872
	add	r2, r2, #8
	ldr	r2, [r2]
	str	r2, [sp, #4]
	add	r2, r7, #15872
	add	r2, r2, #4
	ldr	r2, [r2]
	str	r2, [sp, #8]
	mov	r0, r3
	add	r2, r7, #15872
	add	r2, r2, #20
	ldr	r1, [r2]
	add	r3, r7, #16064
	add	r3, r3, #16
	ldr	r2, [r3]
	add	ip, r7, #15872
	add	ip, ip, #16
	ldr	r3, [ip]
	bl	cf2_glyphpath_curveTo(PLT)
	add	r3, r7, #15872
	add	r3, r3, #8
	ldr	r3, [r3]
	add	r0, r7, #16128
	add	r0, r0, #36
	str	r3, [r0]
	add	r3, r7, #15872
	add	r3, r3, #4
	ldr	r3, [r3]
	add	r1, r7, #16128
	add	r1, r1, #40
	str	r3, [r1]
	add	r2, r7, #16064
	add	r2, r2, #20
	ldr	r3, [r2]
	adds	r3, r3, #4
	add	ip, r7, #16064
	add	ip, ip, #20
	str	r3, [ip]
.L1368:
	add	r0, r7, #16064
	add	r0, r0, #20
	ldr	r2, [r0]
	add	r1, r7, #15872
	add	r1, r1, #24
	ldr	r3, [r1]
	cmp	r2, r3
	bcc	.L1371
	add	r2, r7, #16000
	add	r2, r2, #20
	ldr	r0, [r2]
	bl	cf2_stack_clear(PLT)
	b	.L1303
.L1293:
	add	r4, r7, #15872
	add	r3, r7, #16000
	add	r3, r3, #20
	ldr	r0, [r3]
	bl	cf2_stack_count(PLT)
	str	r0, [r4]
	movs	r3, #0
	add	ip, r7, #16064
	add	ip, ip, #12
	str	r3, [ip]
	add	r0, r7, #16128
	add	r0, r0, #3
	ldrb	r3, [r0]	@ zero_extendqisi2
	cmp	r3, #31
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	add	r1, r7, #16064
	add	r1, r1, #11
	strb	r3, [r1]
	add	r3, r7, #15808
	add	r3, r3, #60
	add	r2, r7, #15872
	ldr	r2, [r2]
	bic	r2, r2, #2
	str	r2, [r3]
	add	r2, r7, #15872
	add	r3, r7, #15808
	add	r3, r3, #60
	ldr	r2, [r2]
	ldr	r3, [r3]
	subs	r3, r2, r3
	add	ip, r7, #16064
	add	ip, ip, #12
	ldr	r2, [ip]
	add	r3, r3, r2
	add	r0, r7, #16064
	add	r0, r0, #12
	str	r3, [r0]
	b	.L1372
.L1379:
	add	r1, r7, #16064
	add	r1, r1, #11
	ldrb	r3, [r1]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1373
	add	r2, r7, #16000
	add	r2, r2, #20
	ldr	r0, [r2]
	add	r3, r7, #16064
	add	r3, r3, #12
	ldr	r1, [r3]
	bl	cf2_stack_getReal(PLT)
	mov	r2, r0
	add	ip, r7, #16128
	add	ip, ip, #36
	ldr	r3, [ip]
	add	r3, r3, r2
	add	r0, r7, #16064
	add	r0, r0, #4
	str	r3, [r0]
	add	r1, r7, #16128
	add	r1, r1, #40
	ldr	r3, [r1]
	add	r2, r7, #16000
	add	r2, r2, #56
	str	r3, [r2]
	add	ip, r7, #16064
	add	ip, ip, #12
	ldr	r3, [ip]
	adds	r3, r3, #1
	add	r1, r7, #16000
	add	r1, r1, #20
	ldr	r0, [r1]
	mov	r1, r3
	bl	cf2_stack_getReal(PLT)
	mov	r2, r0
	add	ip, r7, #16064
	add	ip, ip, #4
	ldr	r3, [ip]
	add	r3, r3, r2
	add	r0, r7, #16064
	str	r3, [r0]
	add	r1, r7, #16064
	add	r1, r1, #12
	ldr	r3, [r1]
	adds	r3, r3, #2
	add	r2, r7, #16000
	add	r2, r2, #20
	ldr	r0, [r2]
	mov	r1, r3
	bl	cf2_stack_getReal(PLT)
	mov	r2, r0
	add	ip, r7, #16000
	add	ip, ip, #56
	ldr	r3, [ip]
	add	r3, r3, r2
	add	r0, r7, #16000
	add	r0, r0, #52
	str	r3, [r0]
	add	r1, r7, #16064
	add	r1, r1, #12
	ldr	r3, [r1]
	adds	r3, r3, #3
	add	r2, r7, #16000
	add	r2, r2, #20
	ldr	r0, [r2]
	mov	r1, r3
	bl	cf2_stack_getReal(PLT)
	mov	r2, r0
	add	ip, r7, #16000
	add	ip, ip, #52
	ldr	r3, [ip]
	add	r3, r3, r2
	add	r0, r7, #16000
	add	r0, r0, #48
	str	r3, [r0]
	add	r3, r7, #15808
	add	r3, r3, #60
	ldr	r2, [r3]
	add	r1, r7, #16064
	add	r1, r1, #12
	ldr	r3, [r1]
	subs	r3, r2, r3
	cmp	r3, #5
	bne	.L1374
	add	r2, r7, #16064
	add	r2, r2, #12
	ldr	r3, [r2]
	adds	r3, r3, #4
	add	ip, r7, #16000
	add	ip, ip, #20
	ldr	r0, [ip]
	mov	r1, r3
	bl	cf2_stack_getReal(PLT)
	mov	r2, r0
	add	r0, r7, #16064
	ldr	r3, [r0]
	add	r3, r3, r2
	add	r1, r7, #16000
	add	r1, r1, #60
	str	r3, [r1]
	add	r2, r7, #16064
	add	r2, r2, #12
	ldr	r3, [r2]
	adds	r3, r3, #1
	add	ip, r7, #16064
	add	ip, ip, #12
	str	r3, [ip]
	b	.L1375
.L1374:
	add	r0, r7, #16064
	ldr	r3, [r0]
	add	r1, r7, #16000
	add	r1, r1, #60
	str	r3, [r1]
.L1375:
	movs	r3, #0
	add	r2, r7, #16064
	add	r2, r2, #11
	strb	r3, [r2]
	b	.L1376
.L1373:
	add	ip, r7, #16128
	add	ip, ip, #36
	ldr	r3, [ip]
	add	r0, r7, #16064
	add	r0, r0, #4
	str	r3, [r0]
	add	r1, r7, #16000
	add	r1, r1, #20
	ldr	r0, [r1]
	add	r2, r7, #16064
	add	r2, r2, #12
	ldr	r1, [r2]
	bl	cf2_stack_getReal(PLT)
	mov	r2, r0
	add	ip, r7, #16128
	add	ip, ip, #40
	ldr	r3, [ip]
	add	r3, r3, r2
	add	r0, r7, #16000
	add	r0, r0, #56
	str	r3, [r0]
	add	r1, r7, #16064
	add	r1, r1, #12
	ldr	r3, [r1]
	adds	r3, r3, #1
	add	r2, r7, #16000
	add	r2, r2, #20
	ldr	r0, [r2]
	mov	r1, r3
	bl	cf2_stack_getReal(PLT)
	mov	r2, r0
	add	ip, r7, #16064
	add	ip, ip, #4
	ldr	r3, [ip]
	add	r3, r3, r2
	add	r0, r7, #16064
	str	r3, [r0]
	add	r1, r7, #16064
	add	r1, r1, #12
	ldr	r3, [r1]
	adds	r3, r3, #2
	add	r2, r7, #16000
	add	r2, r2, #20
	ldr	r0, [r2]
	mov	r1, r3
	bl	cf2_stack_getReal(PLT)
	mov	r2, r0
	add	ip, r7, #16000
	add	ip, ip, #56
	ldr	r3, [ip]
	add	r3, r3, r2
	add	r0, r7, #16000
	add	r0, r0, #52
	str	r3, [r0]
	add	r1, r7, #16064
	add	r1, r1, #12
	ldr	r3, [r1]
	adds	r3, r3, #3
	add	r2, r7, #16000
	add	r2, r2, #20
	ldr	r0, [r2]
	mov	r1, r3
	bl	cf2_stack_getReal(PLT)
	mov	r2, r0
	add	ip, r7, #16064
	ldr	r3, [ip]
	add	r3, r3, r2
	add	r0, r7, #16000
	add	r0, r0, #60
	str	r3, [r0]
	add	r3, r7, #15808
	add	r3, r3, #60
	ldr	r2, [r3]
	add	r1, r7, #16064
	add	r1, r1, #12
	ldr	r3, [r1]
	subs	r3, r2, r3
	cmp	r3, #5
	bne	.L1377
	add	r2, r7, #16064
	add	r2, r2, #12
	ldr	r3, [r2]
	adds	r3, r3, #4
	add	ip, r7, #16000
	add	ip, ip, #20
	ldr	r0, [ip]
	mov	r1, r3
	bl	cf2_stack_getReal(PLT)
	mov	r2, r0
	add	r0, r7, #16000
	add	r0, r0, #52
	ldr	r3, [r0]
	add	r3, r3, r2
	add	r1, r7, #16000
	add	r1, r1, #48
	str	r3, [r1]
	add	r2, r7, #16064
	add	r2, r2, #12
	ldr	r3, [r2]
	adds	r3, r3, #1
	add	ip, r7, #16064
	add	ip, ip, #12
	str	r3, [ip]
	b	.L1378
.L1377:
	add	r0, r7, #16000
	add	r0, r0, #52
	ldr	r3, [r0]
	add	r1, r7, #16000
	add	r1, r1, #48
	str	r3, [r1]
.L1378:
	movs	r3, #1
	add	r2, r7, #16064
	add	r2, r2, #11
	strb	r3, [r2]
.L1376:
	addw	r3, r7, #3976
	subs	r3, r3, #40
	add	ip, r7, #16000
	add	ip, ip, #52
	ldr	r2, [ip]
	str	r2, [sp]
	add	r0, r7, #16000
	add	r0, r0, #60
	ldr	r2, [r0]
	str	r2, [sp, #4]
	add	r1, r7, #16000
	add	r1, r1, #48
	ldr	r2, [r1]
	str	r2, [sp, #8]
	mov	r0, r3
	add	r2, r7, #16064
	add	r2, r2, #4
	ldr	r1, [r2]
	add	r3, r7, #16000
	add	r3, r3, #56
	ldr	r2, [r3]
	add	ip, r7, #16064
	ldr	r3, [ip]
	bl	cf2_glyphpath_curveTo(PLT)
	add	r0, r7, #16000
	add	r0, r0, #60
	ldr	r3, [r0]
	add	r1, r7, #16128
	add	r1, r1, #36
	str	r3, [r1]
	add	r2, r7, #16000
	add	r2, r2, #48
	ldr	r3, [r2]
	add	ip, r7, #16128
	add	ip, ip, #40
	str	r3, [ip]
	add	r0, r7, #16064
	add	r0, r0, #12
	ldr	r3, [r0]
	adds	r3, r3, #4
	add	r1, r7, #16064
	add	r1, r1, #12
	str	r3, [r1]
.L1372:
	add	r3, r7, #15808
	add	r3, r3, #60
	add	ip, r7, #16064
	add	ip, ip, #12
	ldr	r2, [ip]
	ldr	r3, [r3]
	cmp	r2, r3
	bcc	.L1379
	add	r1, r7, #16000
	add	r1, r1, #20
	ldr	r0, [r1]
	bl	cf2_stack_clear(PLT)
	b	.L1303
.L1292:
	add	r2, r7, #16064
	add	r2, r2, #56
	ldr	r0, [r2]
	bl	cf2_buf_readByte(PLT)
	mov	r3, r0
	lsls	r3, r3, #8
	uxth	r4, r3
	add	r3, r7, #16064
	add	r3, r3, #56
	ldr	r0, [r3]
	bl	cf2_buf_readByte(PLT)
	mov	r3, r0
	uxth	r3, r3
	mov	r2, r4	@ movhi
	orrs	r3, r3, r2
	uxth	r2, r3
	add	r3, r7, #15808
	add	r3, r3, #56
	sxth	r2, r2
	str	r2, [r3]
	add	r3, r7, #15808
	add	r3, r3, #56
	add	ip, r7, #16000
	add	ip, ip, #20
	ldr	r0, [ip]
	ldr	r1, [r3]
	bl	cf2_stack_pushInt(PLT)
	b	.L1303
.L1273:
	add	r0, r7, #16128
	add	r0, r0, #3
	ldrb	r3, [r0]	@ zero_extendqisi2
	cmp	r3, #246
	bhi	.L1380
	add	r1, r7, #16128
	add	r1, r1, #3
	ldrb	r2, [r1]	@ zero_extendqisi2
	add	r3, r7, #15808
	add	r3, r3, #52
	subs	r2, r2, #139
	str	r2, [r3]
	add	r3, r7, #15808
	add	r3, r3, #52
	add	r2, r7, #16000
	add	r2, r2, #20
	ldr	r0, [r2]
	ldr	r1, [r3]
	bl	cf2_stack_pushInt(PLT)
	b	.L1381
.L1380:
	add	ip, r7, #16128
	add	ip, ip, #3
	ldrb	r3, [ip]	@ zero_extendqisi2
	cmp	r3, #250
	bhi	.L1382
	add	r3, r7, #15808
	add	r3, r3, #48
	add	r0, r7, #16128
	add	r0, r0, #3
	ldrb	r2, [r0]	@ zero_extendqisi2
	str	r2, [r3]
	add	r3, r7, #15808
	add	r3, r3, #48
	add	r2, r7, #15808
	add	r2, r2, #48
	ldr	r2, [r2]
	subs	r2, r2, #247
	str	r2, [r3]
	add	r3, r7, #15808
	add	r3, r3, #48
	add	r2, r7, #15808
	add	r2, r2, #48
	ldr	r2, [r2]
	lsls	r2, r2, #8
	str	r2, [r3]
	add	r1, r7, #16064
	add	r1, r1, #56
	ldr	r0, [r1]
	bl	cf2_buf_readByte(PLT)
	mov	r1, r0
	add	r3, r7, #15808
	add	r3, r3, #48
	add	r2, r7, #15808
	add	r2, r2, #48
	ldr	r2, [r2]
	add	r2, r2, r1
	str	r2, [r3]
	add	r3, r7, #15808
	add	r3, r3, #48
	add	r2, r7, #15808
	add	r2, r2, #48
	ldr	r2, [r2]
	adds	r2, r2, #108
	str	r2, [r3]
	add	r3, r7, #15808
	add	r3, r3, #48
	add	r2, r7, #16000
	add	r2, r2, #20
	ldr	r0, [r2]
	ldr	r1, [r3]
	bl	cf2_stack_pushInt(PLT)
	b	.L1381
.L1382:
	add	ip, r7, #16128
	add	ip, ip, #3
	ldrb	r3, [ip]	@ zero_extendqisi2
	cmp	r3, #255
	beq	.L1383
	add	r3, r7, #15808
	add	r3, r3, #44
	add	r0, r7, #16128
	add	r0, r0, #3
	ldrb	r2, [r0]	@ zero_extendqisi2
	str	r2, [r3]
	add	r3, r7, #15808
	add	r3, r3, #44
	add	r2, r7, #15808
	add	r2, r2, #44
	ldr	r2, [r2]
	subs	r2, r2, #251
	str	r2, [r3]
	add	r3, r7, #15808
	add	r3, r3, #44
	add	r2, r7, #15808
	add	r2, r2, #44
	ldr	r2, [r2]
	lsls	r2, r2, #8
	str	r2, [r3]
	add	r1, r7, #16064
	add	r1, r1, #56
	ldr	r0, [r1]
	bl	cf2_buf_readByte(PLT)
	mov	r1, r0
	add	r3, r7, #15808
	add	r3, r3, #44
	add	r2, r7, #15808
	add	r2, r2, #44
	ldr	r2, [r2]
	add	r2, r2, r1
	str	r2, [r3]
	add	r2, r7, #15808
	add	r2, r2, #44
	add	r3, r7, #15808
	add	r3, r3, #44
	ldr	r1, [r3]
	movw	r3, #65428
	movt	r3, 65535
	subs	r3, r3, r1
	str	r3, [r2]
	add	r3, r7, #15808
	add	r3, r3, #44
	add	r2, r7, #16000
	add	r2, r2, #20
	ldr	r0, [r2]
	ldr	r1, [r3]
	bl	cf2_stack_pushInt(PLT)
	b	.L1381
.L1383:
	add	r3, r7, #16064
	add	r3, r3, #56
	ldr	r0, [r3]
	bl	cf2_buf_readByte(PLT)
	mov	r3, r0
	lsls	r4, r3, #24
	add	ip, r7, #16064
	add	ip, ip, #56
	ldr	r0, [ip]
	bl	cf2_buf_readByte(PLT)
	mov	r3, r0
	lsls	r3, r3, #16
	orrs	r4, r4, r3
	add	r1, r7, #16064
	add	r1, r1, #56
	ldr	r0, [r1]
	bl	cf2_buf_readByte(PLT)
	mov	r3, r0
	lsls	r3, r3, #8
	orrs	r4, r4, r3
	add	r2, r7, #16064
	add	r2, r2, #56
	ldr	r0, [r2]
	bl	cf2_buf_readByte(PLT)
	mov	r3, r0
	orr	r2, r4, r3
	add	r3, r7, #15808
	add	r3, r3, #40
	str	r2, [r3]
	add	r3, r7, #15808
	add	r3, r3, #40
	add	ip, r7, #16000
	add	ip, ip, #20
	ldr	r0, [ip]
	ldr	r1, [r3]
	bl	cf2_stack_pushFixed(PLT)
	b	.L1303
.L1381:
	b	.L1303
.L1386:
	nop
	b	.L1294
.L1387:
	nop
.L1294:
	add	r1, r7, #16000
	add	r1, r1, #20
	ldr	r0, [r1]
	bl	cf2_stack_clear(PLT)
	b	.L1266
.L1303:
	b	.L1266
.L1389:
	nop
.L1265:
	add	r2, r7, #16000
	add	r2, r2, #40
	ldr	r0, [r2]
	add	r3, r7, #16128
	add	r3, r3, #4
	ldr	r1, [r3]
	bl	cf2_setError(PLT)
	addw	r3, r7, #3976
	subs	r3, r3, #40
	mov	r0, r3
	bl	cf2_glyphpath_finalize(PLT)
	add	r3, r7, #15744
	add	r3, r3, #4
	mov	r0, r3
	bl	cf2_arrstack_finalize(PLT)
	add	r3, r7, #15744
	add	r3, r3, #36
	mov	r0, r3
	bl	cf2_arrstack_finalize(PLT)
	add	r3, r7, #15808
	add	r3, r3, #8
	mov	r0, r3
	bl	cf2_arrstack_finalize(PLT)
	add	ip, r7, #16000
	add	ip, ip, #20
	ldr	r0, [ip]
	bl	cf2_stack_free(PLT)
	nop
	add	r7, r7, #16128
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
	.size	cf2_interpT2CharString, .-cf2_interpT2CharString
	.section	.text.cf2_buf_readByte,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_buf_readByte, %function
cf2_buf_readByte:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	bcs	.L1393
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	adds	r1, r3, #1
	ldr	r2, [r7, #4]
	str	r1, [r2, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	b	.L1394
.L1393:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r3
	movs	r1, #85
	bl	cf2_setError(PLT)
	movs	r3, #0
.L1394:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cf2_buf_readByte, .-cf2_buf_readByte
	.section	.text.cf2_buf_isEnd,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_buf_isEnd, %function
cf2_buf_isEnd:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	ite	cs
	movcs	r3, #1
	movcc	r3, #0
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	cf2_buf_isEnd, .-cf2_buf_isEnd
	.section	.text.cf2_stack_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_stack_init, %function
cf2_stack_init:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #8]
	movs	r3, #0
	str	r3, [r7, #12]
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	mov	r1, #396
	mov	r2, r3
	bl	ft_mem_qalloc(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L1398
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	add	r2, r3, #8
	ldr	r3, [r7, #12]
	str	r2, [r3, #392]
.L1398:
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cf2_stack_init, .-cf2_stack_init
	.section	.text.cf2_stack_free,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_stack_free, %function
cf2_stack_free:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L1400
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #4]
.L1400:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cf2_stack_free, .-cf2_stack_free
	.section	.text.cf2_stack_count,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_stack_count, %function
cf2_stack_count:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #392]
	mov	r2, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #8
	subs	r3, r2, r3
	asrs	r3, r3, #3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	cf2_stack_count, .-cf2_stack_count
	.section	.text.cf2_stack_pushInt,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_stack_pushInt, %function
cf2_stack_pushInt:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #392]
	ldr	r3, [r7, #4]
	add	r3, r3, #392
	cmp	r2, r3
	bne	.L1405
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	movs	r1, #130
	bl	cf2_setError(PLT)
	b	.L1404
.L1405:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #392]
	ldr	r2, [r7]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #392]
	movs	r2, #2
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #392]
	add	r2, r3, #8
	ldr	r3, [r7, #4]
	str	r2, [r3, #392]
.L1404:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cf2_stack_pushInt, .-cf2_stack_pushInt
	.section	.text.cf2_stack_pushFixed,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_stack_pushFixed, %function
cf2_stack_pushFixed:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #392]
	ldr	r3, [r7, #4]
	add	r3, r3, #392
	cmp	r2, r3
	bne	.L1408
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	movs	r1, #130
	bl	cf2_setError(PLT)
	b	.L1407
.L1408:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #392]
	ldr	r2, [r7]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #392]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #392]
	add	r2, r3, #8
	ldr	r3, [r7, #4]
	str	r2, [r3, #392]
.L1407:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cf2_stack_pushFixed, .-cf2_stack_pushFixed
	.section	.text.cf2_stack_popInt,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_stack_popInt, %function
cf2_stack_popInt:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #392]
	ldr	r3, [r7, #4]
	adds	r3, r3, #8
	cmp	r2, r3
	bne	.L1411
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	movs	r1, #161
	bl	cf2_setError(PLT)
	movs	r3, #0
	b	.L1412
.L1411:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #392]
	subs	r3, r3, #8
	ldr	r3, [r3, #4]
	cmp	r3, #2
	beq	.L1413
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	movs	r1, #160
	bl	cf2_setError(PLT)
	movs	r3, #0
	b	.L1412
.L1413:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #392]
	sub	r2, r3, #8
	ldr	r3, [r7, #4]
	str	r2, [r3, #392]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #392]
	ldr	r3, [r3]
.L1412:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cf2_stack_popInt, .-cf2_stack_popInt
	.section	.text.cf2_stack_popFixed,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_stack_popFixed, %function
cf2_stack_popFixed:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #392]
	ldr	r3, [r7, #4]
	adds	r3, r3, #8
	cmp	r2, r3
	bne	.L1415
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	movs	r1, #161
	bl	cf2_setError(PLT)
	movs	r3, #0
	b	.L1416
.L1415:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #392]
	sub	r2, r3, #8
	ldr	r3, [r7, #4]
	str	r2, [r3, #392]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #392]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	beq	.L1418
	cmp	r3, #2
	bne	.L1422
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #392]
	ldr	r3, [r3]
	lsls	r3, r3, #16
	b	.L1416
.L1418:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #392]
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L1420
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #392]
	ldr	r3, [r3]
	rsb	r3, r3, #8192
	asrs	r3, r3, #14
	negs	r3, r3
	b	.L1421
.L1420:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #392]
	ldr	r3, [r3]
	add	r3, r3, #8192
	asrs	r3, r3, #14
.L1421:
	b	.L1416
.L1422:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #392]
	ldr	r3, [r3]
.L1416:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cf2_stack_popFixed, .-cf2_stack_popFixed
	.section	.text.cf2_stack_getReal,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_stack_getReal, %function
cf2_stack_getReal:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	bl	cf2_stack_count(PLT)
	mov	r2, r0
	ldr	r3, [r7]
	cmp	r2, r3
	bhi	.L1424
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	movs	r1, #130
	bl	cf2_setError(PLT)
	movs	r3, #0
	b	.L1425
.L1424:
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	adds	r3, r3, #1
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	cmp	r3, #1
	beq	.L1427
	cmp	r3, #2
	bne	.L1431
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	adds	r2, r2, #1
	ldr	r3, [r3, r2, lsl #3]
	lsls	r3, r3, #16
	b	.L1425
.L1427:
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	adds	r2, r2, #1
	ldr	r3, [r3, r2, lsl #3]
	cmp	r3, #0
	bge	.L1429
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	adds	r2, r2, #1
	ldr	r3, [r3, r2, lsl #3]
	rsb	r3, r3, #8192
	asrs	r3, r3, #14
	negs	r3, r3
	b	.L1430
.L1429:
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	adds	r2, r2, #1
	ldr	r3, [r3, r2, lsl #3]
	add	r3, r3, #8192
	asrs	r3, r3, #14
.L1430:
	b	.L1425
.L1431:
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	adds	r2, r2, #1
	ldr	r3, [r3, r2, lsl #3]
.L1425:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cf2_stack_getReal, .-cf2_stack_getReal
	.section	.text.cf2_stack_clear,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cf2_stack_clear, %function
cf2_stack_clear:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	add	r2, r3, #8
	ldr	r3, [r7, #4]
	str	r2, [r3, #392]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	cf2_stack_clear, .-cf2_stack_clear
	.section	.rodata.cff_header_fields.8929,"a",%progbits
	.align	2
	.type	cff_header_fields.8929, %object
	.size	cff_header_fields.8929, 24
cff_header_fields.8929:
	.byte	4
	.byte	0
	.short	4
	.byte	8
	.byte	1
	.short	16
	.byte	8
	.byte	1
	.short	17
	.byte	8
	.byte	1
	.short	18
	.byte	8
	.byte	1
	.short	19
	.byte	0
	.byte	0
	.short	0
	.section	.rodata.readFromStack.10792,"a",%progbits
	.align	2
	.type	readFromStack.10792, %object
	.size	readFromStack.10792, 12
readFromStack.10792:
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.section	.rodata.readFromStack.10794,"a",%progbits
	.align	2
	.type	readFromStack.10794, %object
	.size	readFromStack.10794, 12
readFromStack.10794:
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.section	.rodata.readFromStack.10796,"a",%progbits
	.align	2
	.type	readFromStack.10796, %object
	.size	readFromStack.10796, 12
readFromStack.10796:
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.section	.rodata.readFromStack.10798,"a",%progbits
	.align	2
	.type	readFromStack.10798, %object
	.size	readFromStack.10798, 12
readFromStack.10798:
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
