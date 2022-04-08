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
	.file	"truetype.c"
	.section	.rodata
	.align	2
.LC4:
	.ascii	"interpreter-version\000"
	.section	.text.tt_property_set,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_property_set, %function
tt_property_set:
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
	str	r3, [r7, #24]
	ldr	r0, [r7, #8]
	ldr	r3, .L4
.LPIC0:
	add	r3, pc
	mov	r1, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L2
	ldr	r3, [r7, #4]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r2, [r3]
	ldr	r3, [r7, #24]
	str	r2, [r3, #64]
	ldr	r3, [r7, #28]
	b	.L3
.L2:
	movs	r3, #12
.L3:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L5:
	.align	2
.L4:
	.word	.LC4-(.LPIC0+4)
	.size	tt_property_set, .-tt_property_set
	.section	.text.tt_property_get,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_property_get, %function
tt_property_get:
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
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #64]
	str	r3, [r7, #20]
	ldr	r0, [r7, #8]
	ldr	r3, .L9
.LPIC1:
	add	r3, pc
	mov	r1, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L7
	ldr	r3, [r7, #4]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #20]
	str	r2, [r3]
	ldr	r3, [r7, #28]
	b	.L8
.L7:
	movs	r3, #12
.L8:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L10:
	.align	2
.L9:
	.word	.LC4-(.LPIC1+4)
	.size	tt_property_get, .-tt_property_get
	.section	.data.rel.ro.local.tt_service_properties,"aw",%progbits
	.align	2
	.type	tt_service_properties, %object
	.size	tt_service_properties, 8
tt_service_properties:
	.word	tt_property_set
	.word	tt_property_get
	.section	.text.tt_get_kerning,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_get_kerning, %function
tt_get_kerning:
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
	beq	.L12
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #84]
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	blx	r3
	mov	r2, r0
	ldr	r3, [r7]
	str	r2, [r3]
.L12:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_get_kerning, .-tt_get_kerning
	.section	.text.tt_get_advances,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_get_advances, %function
tt_get_advances:
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	str	r3, [r7, #24]
	ldr	r3, [r7]
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L15
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L16
.L17:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #28]
	add	r2, r2, r3
	add	r3, r7, #22
	add	r1, r7, #20
	str	r1, [sp]
	ldr	r0, [r7, #24]
	mov	r1, r2
	movs	r2, #0
	bl	TT_Get_VMetrics(PLT)
	ldr	r3, [r7, #28]
	lsls	r3, r3, #2
	ldr	r2, [r7, #40]
	add	r3, r3, r2
	ldrh	r2, [r7, #20]
	str	r2, [r3]
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L16:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcc	.L17
	b	.L18
.L15:
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L19
.L20:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #28]
	adds	r1, r2, r3
	add	r2, r7, #18
	add	r3, r7, #16
	ldr	r0, [r7, #24]
	bl	TT_Get_HMetrics(PLT)
	ldr	r3, [r7, #28]
	lsls	r3, r3, #2
	ldr	r2, [r7, #40]
	add	r3, r3, r2
	ldrh	r2, [r7, #16]
	str	r2, [r3]
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L19:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcc	.L20
.L18:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_get_advances, .-tt_get_advances
	.section	.text.tt_size_select,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_size_select, %function
tt_size_select:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #20]
	ldr	r2, [r7]
	str	r2, [r3, #112]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L23
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r1, [r7]
	bl	FT_Select_Metrics(PLT)
	ldr	r0, [r7, #20]
	bl	tt_size_reset(PLT)
	b	.L24
.L23:
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #532]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	str	r3, [r7, #12]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #108]
	ldr	r0, [r7, #24]
	ldr	r1, [r7]
	ldr	r2, [r7, #12]
	blx	r3
	str	r0, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L24
	ldr	r3, [r7, #20]
	mov	r2, #-1
	str	r2, [r3, #112]
.L24:
	ldr	r3, [r7, #28]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_size_select, .-tt_size_select
	.section	.text.tt_size_request,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_size_request, %function
tt_size_request:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L27
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #532]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #104]
	add	r2, r7, #12
	ldr	r0, [r7, #20]
	ldr	r1, [r7]
	blx	r3
	str	r0, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L28
	ldr	r3, [r7, #24]
	mov	r2, #-1
	str	r2, [r3, #112]
	b	.L27
.L28:
	ldr	r3, [r7, #12]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	tt_size_select(PLT)
	mov	r3, r0
	b	.L29
.L27:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r1, [r7]
	bl	FT_Request_Metrics(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L30
	ldr	r0, [r7, #24]
	bl	tt_size_reset(PLT)
	str	r0, [r7, #28]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #24]
	add	r4, r2, #12
	add	r5, r3, #44
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5, {r0, r1, r2}
	stmia	r4, {r0, r1, r2}
.L30:
	ldr	r3, [r7, #28]
.L29:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.size	tt_size_request, .-tt_size_request
	.section	.text.tt_glyph_load,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_glyph_load, %function
tt_glyph_load:
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
	str	r3, [r7, #28]
	ldr	r3, [r7, #8]
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	str	r3, [r7, #20]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L32
	movs	r3, #37
	b	.L33
.L32:
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L34
	movs	r3, #36
	b	.L33
.L34:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L35
	movs	r3, #35
	b	.L33
.L35:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #16]
	mov	r2, r3
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bhi	.L36
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #128]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	bne	.L36
	movs	r3, #6
	b	.L33
.L36:
	ldr	r3, [r7]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L37
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #8]
	and	r3, r3, #8192
	cmp	r3, #0
	beq	.L38
	ldr	r3, [r7]
	bic	r3, r3, #2
	str	r3, [r7]
.L38:
	ldr	r3, [r7]
	and	r3, r3, #32768
	cmp	r3, #0
	beq	.L37
	ldr	r3, [r7]
	orr	r3, r3, #2
	str	r3, [r7]
.L37:
	ldr	r2, [r7]
	movw	r3, #1025
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L39
	ldr	r3, [r7]
	orr	r3, r3, #9
	str	r3, [r7]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #8]
	and	r3, r3, #8192
	cmp	r3, #0
	bne	.L39
	ldr	r3, [r7]
	orr	r3, r3, #2
	str	r3, [r7]
.L39:
	ldr	r0, [r7, #24]
	ldr	r1, [r7, #28]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	TT_Load_Glyph(PLT)
	str	r0, [r7, #16]
	ldr	r3, [r7, #16]
.L33:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_glyph_load, .-tt_glyph_load
	.section	.data.rel.ro.local.tt_service_gx_multi_masters,"aw",%progbits
	.align	2
	.type	tt_service_gx_multi_masters, %object
	.size	tt_service_gx_multi_masters, 20
tt_service_gx_multi_masters:
	.word	0
	.word	0
	.word	TT_Set_MM_Blend
	.word	TT_Get_MM_Var
	.word	TT_Set_Var_Design
	.section	.rodata.tt_service_truetype_engine,"a",%progbits
	.align	2
	.type	tt_service_truetype_engine, %object
	.size	tt_service_truetype_engine, 4
tt_service_truetype_engine:
	.word	2
	.section	.data.rel.ro.local.tt_service_truetype_glyf,"aw",%progbits
	.align	2
	.type	tt_service_truetype_glyf, %object
	.size	tt_service_truetype_glyf, 4
tt_service_truetype_glyf:
	.word	tt_face_get_location
	.section	.rodata
	.align	2
.LC5:
	.ascii	"font-format\000"
	.align	2
.LC6:
	.ascii	"TrueType\000"
	.align	2
.LC7:
	.ascii	"multi-masters\000"
	.align	2
.LC8:
	.ascii	"truetype-engine\000"
	.align	2
.LC9:
	.ascii	"tt-glyf\000"
	.align	2
.LC10:
	.ascii	"properties\000"
	.section	.data.rel.ro.local.tt_services,"aw",%progbits
	.align	2
	.type	tt_services, %object
	.size	tt_services, 48
tt_services:
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	tt_service_gx_multi_masters
	.word	.LC8
	.word	tt_service_truetype_engine
	.word	.LC9
	.word	tt_service_truetype_glyf
	.word	.LC10
	.word	tt_service_properties
	.word	0
	.word	0
	.section	.rodata
	.align	2
.LC11:
	.ascii	"sfnt\000"
	.section	.text.tt_get_interface,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_get_interface, %function
tt_get_interface:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, .L46
.LPIC2:
	add	r3, pc
	mov	r0, r3
	ldr	r1, [r7]
	bl	ft_service_list_lookup(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L41
	ldr	r3, [r7, #20]
	b	.L42
.L41:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L43
	movs	r3, #0
	b	.L42
.L43:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L44
	movs	r3, #0
	b	.L42
.L44:
	ldr	r0, [r7, #16]
	ldr	r3, .L46+4
.LPIC3:
	add	r3, pc
	mov	r1, r3
	bl	FT_Get_Module(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L45
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L45
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #16]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	blx	r3
	mov	r3, r0
	b	.L42
.L45:
	movs	r3, #0
.L42:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L47:
	.align	2
.L46:
	.word	tt_services-(.LPIC2+4)
	.word	.LC11-(.LPIC3+4)
	.size	tt_get_interface, .-tt_get_interface
	.global	tt_driver_class
	.section	.rodata
	.align	2
.LC12:
	.ascii	"truetype\000"
	.section	.data.rel.ro.local.tt_driver_class,"aw",%progbits
	.align	2
	.type	tt_driver_class, %object
	.size	tt_driver_class, 96
tt_driver_class:
	.word	1281
	.word	68
	.word	.LC12
	.word	65536
	.word	131072
	.word	0
	.word	tt_driver_init
	.word	tt_driver_done
	.word	tt_get_interface
	.word	800
	.word	304
	.word	160
	.word	tt_face_init
	.word	tt_face_done
	.word	tt_size_init
	.word	tt_size_done
	.word	tt_slot_init
	.word	0
	.word	tt_glyph_load
	.word	tt_get_kerning
	.word	0
	.word	tt_get_advances
	.word	tt_size_request
	.word	tt_size_select
	.section	.text.tt_face_load_loca,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_face_load_loca, %function
tt_face_load_loca:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #52
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #508]
	ldr	r3, [r7, #4]
	add	r3, r3, #668
	ldr	r0, [r7, #4]
	movw	r1, #31078
	movt	r1, 26476
	ldr	r2, [r7]
	blx	r4
	str	r0, [r7, #44]
	ldr	r3, [r7, #44]
	uxtb	r3, r3
	cmp	r3, #142
	bne	.L49
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #668]
	b	.L50
.L49:
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L50
	b	.L51
.L50:
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #508]
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	movw	r1, #25441
	movt	r1, 27759
	ldr	r2, [r7]
	blx	r4
	str	r0, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L52
	movs	r3, #144
	str	r3, [r7, #44]
	b	.L51
.L52:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #210]
	cmp	r3, #0
	beq	.L53
	movs	r3, #2
	str	r3, [r7, #40]
	ldr	r3, [r7, #8]
	cmp	r3, #262144
	bcc	.L54
	movs	r3, #8
	str	r3, [r7, #44]
	b	.L51
.L54:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #40]
	lsrs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #696]
	b	.L55
.L53:
	movs	r3, #1
	str	r3, [r7, #40]
	ldr	r3, [r7, #8]
	cmp	r3, #131072
	bcc	.L56
	movs	r3, #8
	str	r3, [r7, #44]
	b	.L51
.L56:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #40]
	lsrs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #696]
.L55:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #696]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	adds	r3, r3, #1
	cmp	r2, r3
	beq	.L57
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #696]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	cmp	r2, r3
	bhi	.L57
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	adds	r2, r3, #1
	ldr	r3, [r7, #40]
	lsl	r3, r2, r3
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #156]
	str	r3, [r7, #36]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #152]
	lsls	r3, r3, #4
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r0, [r7]
	bl	FT_Stream_Pos(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	mvn	r3, #-2147483648
	str	r3, [r7, #32]
	movs	r3, #0
	strb	r3, [r7, #31]
	b	.L58
.L60:
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #8]
	mov	r2, r3
	ldr	r3, [r7, #16]
	subs	r3, r2, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	ble	.L59
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bge	.L59
	ldr	r3, [r7, #12]
	str	r3, [r7, #32]
	movs	r3, #1
	strb	r3, [r7, #31]
.L59:
	ldr	r3, [r7, #36]
	adds	r3, r3, #16
	str	r3, [r7, #36]
.L58:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcc	.L60
	ldrb	r3, [r7, #31]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L61
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, [r7, #16]
	subs	r3, r2, r3
	str	r3, [r7, #32]
.L61:
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bcc	.L62
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #696]
	ldr	r3, [r7, #24]
	str	r3, [r7, #8]
	b	.L57
.L62:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #696]
	cmp	r3, #0
	beq	.L63
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #696]
	subs	r3, r3, #1
	b	.L64
.L63:
	movs	r3, #0
.L64:
	ldr	r2, [r7, #4]
	str	r3, [r2, #16]
.L57:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	add	r3, r3, #700
	ldr	r0, [r7]
	mov	r1, r2
	mov	r2, r3
	bl	FT_Stream_ExtractFrame(PLT)
	str	r0, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L51
	nop
.L51:
	ldr	r3, [r7, #44]
	mov	r0, r3
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	tt_face_load_loca, .-tt_face_load_loca
	.section	.text.tt_face_get_location,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_face_get_location, %function
tt_face_get_location:
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
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #696]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bls	.L67
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #210]
	cmp	r3, #0
	beq	.L68
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #700]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #2
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #700]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #696]
	lsls	r3, r3, #2
	add	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	adds	r3, r3, #4
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #20]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #20]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	str	r3, [r7, #24]
	ldr	r3, [r7, #20]
	adds	r2, r3, #4
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bhi	.L67
	ldr	r3, [r7, #20]
	adds	r3, r3, #4
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #20]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #20]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #24]
	b	.L67
.L68:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #700]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #1
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #700]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #696]
	lsls	r3, r3, #1
	add	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	adds	r3, r3, #2
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	str	r3, [r7, #24]
	ldr	r3, [r7, #20]
	adds	r2, r3, #2
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bhi	.L70
	ldr	r3, [r7, #20]
	adds	r3, r3, #2
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #24]
.L70:
	ldr	r3, [r7, #28]
	lsls	r3, r3, #1
	str	r3, [r7, #28]
	ldr	r3, [r7, #24]
	lsls	r3, r3, #1
	str	r3, [r7, #24]
.L67:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #668]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bcs	.L71
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	movs	r3, #0
	b	.L72
.L71:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #668]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bcs	.L73
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #668]
	str	r3, [r7, #24]
.L73:
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bcc	.L74
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #28]
	subs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
	b	.L75
.L74:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #668]
	ldr	r3, [r7, #28]
	subs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
.L75:
	ldr	r3, [r7, #28]
.L72:
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	tt_face_get_location, .-tt_face_get_location
	.section	.text.tt_face_done_loca,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_face_done_loca, %function
tt_face_done_loca:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #104]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	add	r3, r3, #700
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	FT_Stream_ReleaseFrame(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #696]
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_face_done_loca, .-tt_face_done_loca
	.section	.text.tt_face_load_cvt,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_face_load_cvt, %function
tt_face_load_cvt:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #44
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3, #28]
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #508]
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	movw	r1, #29728
	movt	r1, 25462
	ldr	r2, [r7]
	blx	r4
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L78
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #644]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #648]
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L79
.L78:
	ldr	r3, [r7, #12]
	lsrs	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #644]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #644]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #16
	str	r2, [sp, #4]
	ldr	r0, [r7, #24]
	movs	r1, #2
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #648]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L80
	b	.L79
.L80:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #644]
	lsls	r3, r3, #1
	ldr	r0, [r7]
	mov	r1, r3
	bl	FT_Stream_EnterFrame(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L81
	b	.L79
.L81:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #648]
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #644]
	lsls	r3, r3, #1
	ldr	r2, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #20]
	b	.L82
.L83:
	ldr	r0, [r7]
	bl	FT_Stream_GetUShort(PLT)
	mov	r3, r0
	uxth	r2, r3
	ldr	r3, [r7, #28]
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #28]
	adds	r3, r3, #2
	str	r3, [r7, #28]
.L82:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcc	.L83
	ldr	r0, [r7]
	bl	FT_Stream_ExitFrame(PLT)
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #672]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L79
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	tt_face_vary_cvt(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
.L79:
	ldr	r3, [r7, #16]
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	tt_face_load_cvt, .-tt_face_load_cvt
	.section	.text.tt_face_load_fpgm,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_face_load_fpgm, %function
tt_face_load_fpgm:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #508]
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	movw	r1, #26477
	movt	r1, 26224
	ldr	r2, [r7]
	blx	r4
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L86
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #632]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #628]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L87
.L86:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	str	r2, [r3, #628]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	add	r3, r3, #632
	ldr	r0, [r7]
	mov	r1, r2
	mov	r2, r3
	bl	FT_Stream_ExtractFrame(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L87
	nop
.L87:
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	tt_face_load_fpgm, .-tt_face_load_fpgm
	.section	.text.tt_face_load_prep,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_face_load_prep, %function
tt_face_load_prep:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #508]
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	movw	r1, #25968
	movt	r1, 28786
	ldr	r2, [r7]
	blx	r4
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L90
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #640]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #636]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L91
.L90:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	str	r2, [r3, #636]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	add	r3, r3, #640
	ldr	r0, [r7]
	mov	r1, r2
	mov	r2, r3
	bl	FT_Stream_ExtractFrame(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L91
	nop
.L91:
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	tt_face_load_prep, .-tt_face_load_prep
	.section	.text.tt_face_load_hdmx,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_face_load_hdmx, %function
tt_face_load_hdmx:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #60
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3, #28]
	str	r3, [r7, #32]
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #508]
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	movw	r1, #28024
	movt	r1, 26724
	ldr	r2, [r7]
	blx	r4
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L94
	ldr	r3, [r7, #12]
	cmp	r3, #7
	bhi	.L95
.L94:
	movs	r3, #0
	b	.L108
.L95:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	add	r3, r3, #704
	ldr	r0, [r7]
	mov	r1, r2
	mov	r2, r3
	bl	FT_Stream_ExtractFrame(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L97
	b	.L98
.L97:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #704]
	str	r3, [r7, #36]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #36]
	adds	r3, r3, #2
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #24]
	ldr	r3, [r7, #36]
	adds	r3, r3, #2
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #36]
	adds	r3, r3, #4
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #36]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #36]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	cmn	r3, #65537
	bls	.L99
	ldr	r3, [r7, #40]
	uxth	r3, r3
	str	r3, [r7, #40]
.L99:
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L100
	ldr	r3, [r7, #20]
	cmp	r3, #255
	bhi	.L100
	ldr	r3, [r7, #40]
	cmp	r3, #65537
	bhi	.L100
	ldr	r3, [r7, #40]
	cmp	r3, #3
	bhi	.L101
.L100:
	movs	r3, #3
	str	r3, [r7, #16]
	b	.L102
.L101:
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #16
	str	r2, [sp, #4]
	ldr	r0, [r7, #32]
	movs	r1, #1
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #720]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L103
	b	.L102
.L103:
	movs	r3, #0
	str	r3, [r7, #44]
	b	.L104
.L107:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #40]
	add	r2, r2, r3
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bls	.L105
	b	.L106
.L105:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #720]
	ldr	r3, [r7, #44]
	add	r3, r3, r2
	ldr	r2, [r7, #36]
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #40]
	add	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	str	r3, [r7, #44]
.L104:
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcc	.L107
.L106:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #44]
	str	r2, [r3, #712]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	str	r2, [r3, #708]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #40]
	str	r2, [r3, #716]
.L98:
	ldr	r3, [r7, #16]
	b	.L108
.L102:
	ldr	r3, [r7, #4]
	add	r3, r3, #704
	ldr	r0, [r7]
	mov	r1, r3
	bl	FT_Stream_ReleaseFrame(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #708]
	b	.L98
.L108:
	mov	r0, r3
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	tt_face_load_hdmx, .-tt_face_load_hdmx
	.section	.text.tt_face_free_hdmx,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_face_free_hdmx, %function
tt_face_free_hdmx:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #104]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #720]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #720]
	ldr	r3, [r7, #4]
	add	r3, r3, #704
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	FT_Stream_ReleaseFrame(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_face_free_hdmx, .-tt_face_free_hdmx
	.section	.text.tt_face_get_device_metrics,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_face_get_device_metrics, %function
tt_face_get_device_metrics:
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
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #716]
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #704]
	adds	r3, r3, #8
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L111
.L115:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #720]
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bne	.L112
	ldr	r3, [r7, #4]
	adds	r3, r3, #2
	str	r3, [r7, #4]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcs	.L113
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #20]
	mul	r2, r2, r3
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	str	r3, [r7, #24]
	b	.L114
.L113:
	b	.L114
.L112:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L111:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #712]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bhi	.L115
.L114:
	ldr	r3, [r7, #24]
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	tt_face_get_device_metrics, .-tt_face_get_device_metrics
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
	.section	.text.TT_Get_HMetrics,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	TT_Get_HMetrics, %function
TT_Get_HMetrics:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #28
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #532]
	ldr	r4, [r3, #112]
	ldr	r3, [r7]
	str	r3, [sp]
	ldr	r0, [r7, #12]
	movs	r1, #0
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	blx	r4
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	TT_Get_HMetrics, .-TT_Get_HMetrics
	.section	.text.TT_Get_VMetrics,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	TT_Get_VMetrics, %function
TT_Get_VMetrics:
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #28
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #292]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L121
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #532]
	ldr	r4, [r3, #112]
	ldr	r3, [r7, #32]
	str	r3, [sp]
	ldr	r0, [r7, #12]
	movs	r1, #1
	ldr	r2, [r7, #8]
	ldr	r3, [r7]
	blx	r4
	b	.L120
.L121:
	ldr	r3, [r7, #12]
	ldrh	r2, [r3, #364]
	movw	r3, #65535
	cmp	r2, r3
	beq	.L123
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #434]
	uxth	r2, r3
	ldr	r3, [r7, #4]
	uxth	r3, r3
	subs	r3, r2, r3
	uxth	r3, r3
	uxth	r2, r3
	ldr	r3, [r7]
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #434]
	sxth	r2, r3
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #436]
	sxth	r3, r3
	subs	r3, r2, r3
	cmp	r3, #0
	bge	.L124
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #436]
	uxth	r2, r3
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #434]
	uxth	r3, r3
	subs	r3, r2, r3
	uxth	r3, r3
	b	.L125
.L124:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #434]
	uxth	r2, r3
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #436]
	uxth	r3, r3
	subs	r3, r2, r3
	uxth	r3, r3
.L125:
	ldr	r2, [r7, #32]
	strh	r3, [r2]	@ movhi
	b	.L120
.L123:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #220]
	uxth	r2, r3
	ldr	r3, [r7, #4]
	uxth	r3, r3
	subs	r3, r2, r3
	uxth	r3, r3
	uxth	r2, r3
	ldr	r3, [r7]
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #220]
	sxth	r2, r3
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #222]
	sxth	r3, r3
	subs	r3, r2, r3
	cmp	r3, #0
	bge	.L126
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #222]
	uxth	r2, r3
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #220]
	uxth	r3, r3
	subs	r3, r2, r3
	uxth	r3, r3
	b	.L127
.L126:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #220]
	uxth	r2, r3
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #222]
	uxth	r3, r3
	subs	r3, r2, r3
	uxth	r3, r3
.L127:
	ldr	r2, [r7, #32]
	strh	r3, [r2]	@ movhi
.L120:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	TT_Get_VMetrics, .-TT_Get_VMetrics
	.section	.text.tt_get_metrics,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_get_metrics, %function
tt_get_metrics:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #96]
	str	r3, [r7, #32]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	str	r3, [r7, #28]
	movs	r3, #0
	strh	r3, [r7, #18]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #16]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #14]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #12]	@ movhi
	ldr	r0, [r7, #28]
	bl	FT_Stream_Pos(PLT)
	str	r0, [r7, #24]
	add	r2, r7, #18
	add	r3, r7, #14
	ldr	r0, [r7, #36]
	ldr	r1, [r7]
	bl	TT_Get_HMetrics(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #48]
	add	r3, r7, #16
	add	r1, r7, #12
	str	r1, [sp]
	ldr	r0, [r7, #36]
	ldr	r1, [r7]
	bl	TT_Get_VMetrics(PLT)
	ldr	r0, [r7, #28]
	ldr	r1, [r7, #24]
	bl	FT_Stream_Seek(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L129
	ldr	r3, [r7, #20]
	b	.L133
.L129:
	ldrh	r3, [r7, #18]
	sxth	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #52]
	ldrh	r3, [r7, #14]
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #56]
	ldrh	r3, [r7, #16]
	sxth	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #176]
	ldrh	r3, [r7, #12]
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #180]
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #64]
	cmp	r3, #38
	bne	.L131
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	cmp	r3, #0
	beq	.L131
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	movs	r2, #0
	str	r2, [r3, #632]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	sph_set_tweaks(PLT)
.L131:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #64]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L132
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #64]
	ldrh	r3, [r7, #14]
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #60]
.L132:
	movs	r3, #0
.L133:
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_get_metrics, .-tt_get_metrics
	.section	.text.tt_get_metrics_incr_overrides,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_get_metrics_incr_overrides, %function
tt_get_metrics_incr_overrides:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #44
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #36]
	movs	r3, #0
	strh	r3, [r7, #34]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #32]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #30]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #28]	@ movhi
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #128]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L135
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #128]
	ldr	r3, [r3, #48]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L135
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #52]
	str	r3, [r7, #8]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #128]
	ldr	r3, [r3, #48]
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #128]
	ldr	r3, [r3, #48]
	ldr	r2, [r3, #4]
	add	r3, r7, #8
	mov	r0, r2
	ldr	r1, [r7]
	movs	r2, #0
	blx	r4
	str	r0, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L136
	b	.L134
.L136:
	ldr	r3, [r7, #8]
	strh	r3, [r7, #34]	@ movhi
	ldr	r3, [r7, #16]
	strh	r3, [r7, #30]	@ movhi
	ldrsh	r2, [r7, #34]
	ldr	r3, [r7, #4]
	str	r2, [r3, #52]
	ldrh	r2, [r7, #30]
	ldr	r3, [r7, #4]
	str	r2, [r3, #56]
	ldrsh	r2, [r7, #32]
	ldr	r3, [r7, #4]
	str	r2, [r3, #176]
	ldrh	r2, [r7, #28]
	ldr	r3, [r7, #4]
	str	r2, [r3, #180]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #64]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L135
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #64]
	ldrh	r2, [r7, #30]
	ldr	r3, [r7, #4]
	str	r2, [r3, #60]
.L135:
	nop
.L134:
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	tt_get_metrics_incr_overrides, .-tt_get_metrics_incr_overrides
	.section	.text.TT_Access_Glyph_Frame,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	TT_Access_Glyph_Frame, %function
TT_Access_Glyph_Frame:
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
	ldr	r3, [r3, #24]
	str	r3, [r7, #16]
	ldr	r0, [r7, #16]
	ldr	r1, [r7, #4]
	bl	FT_Stream_Seek(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L140
	ldr	r0, [r7, #16]
	ldr	r1, [r7]
	bl	FT_Stream_EnterFrame(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L141
.L140:
	ldr	r3, [r7, #20]
	b	.L142
.L141:
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #12]
	str	r2, [r3, #200]
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #12]
	str	r2, [r3, #204]
	movs	r3, #0
.L142:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	TT_Access_Glyph_Frame, .-TT_Access_Glyph_Frame
	.section	.text.TT_Forget_Glyph_Frame,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	TT_Forget_Glyph_Frame, %function
TT_Forget_Glyph_Frame:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	str	r3, [r7, #12]
	ldr	r0, [r7, #12]
	bl	FT_Stream_ExitFrame(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	TT_Forget_Glyph_Frame, .-TT_Forget_Glyph_Frame
	.section	.text.TT_Load_Glyph_Header,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	TT_Load_Glyph_Header, %function
TT_Load_Glyph_Header:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #200]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #204]
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	add	r2, r3, #10
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bls	.L145
	movs	r3, #20
	b	.L146
.L145:
	ldr	r3, [r7, #12]
	adds	r3, r3, #2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #12]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #32]	@ movhi
	ldr	r3, [r7, #12]
	adds	r3, r3, #2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #12]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	sxth	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #36]
	ldr	r3, [r7, #12]
	adds	r3, r3, #2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #12]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	sxth	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #40]
	ldr	r3, [r7, #12]
	adds	r3, r3, #2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #12]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	sxth	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #44]
	ldr	r3, [r7, #12]
	adds	r3, r3, #2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #12]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	sxth	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #48]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #200]
	movs	r3, #0
.L146:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TT_Load_Glyph_Header, .-TT_Load_Glyph_Header
	.section	.text.TT_Load_Simple_Glyph,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	TT_Load_Simple_Glyph, %function
TT_Load_Simple_Glyph:
	@ args = 0, pretend = 0, frame = 104
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #112
	add	r7, sp, #8
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #200]
	str	r3, [r7, #96]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #204]
	str	r3, [r7, #56]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #52]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #32]
	sxth	r3, r3
	str	r3, [r7, #48]
	movs	r3, #0
	str	r3, [r7, #44]
	ldr	r3, [r7, #48]
	cmp	r3, #0
	beq	.L148
	ldr	r3, [r7, #52]
	ldrh	r3, [r3, #20]
	sxth	r2, r3
	ldr	r3, [r7, #52]
	ldrh	r3, [r3, #56]
	sxth	r3, r3
	add	r2, r2, r3
	ldr	r3, [r7, #48]
	add	r2, r2, r3
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	bls	.L148
	ldr	r3, [r7, #48]
	ldr	r0, [r7, #52]
	movs	r1, #0
	mov	r2, r3
	bl	FT_GlyphLoader_CheckPoints(PLT)
	mov	r3, r0
	b	.L149
.L148:
	movs	r3, #0
.L149:
	str	r3, [r7, #100]
	ldr	r3, [r7, #100]
	cmp	r3, #0
	beq	.L150
	b	.L151
.L150:
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #68]
	str	r3, [r7, #72]
	ldr	r3, [r7, #48]
	lsls	r3, r3, #1
	ldr	r2, [r7, #72]
	add	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r2, [r7, #48]
	movw	r3, #4094
	cmp	r2, r3
	bgt	.L152
	ldr	r3, [r7, #48]
	adds	r3, r3, #1
	lsls	r3, r3, #1
	ldr	r2, [r7, #96]
	add	r2, r2, r3
	ldr	r3, [r7, #56]
	cmp	r2, r3
	bhi	.L152
	ldr	r3, [r7, #96]
	adds	r3, r3, #2
	str	r3, [r7, #96]
	ldr	r3, [r7, #96]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #96]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	strh	r3, [r7, #70]	@ movhi
	ldr	r3, [r7, #48]
	cmp	r3, #0
	ble	.L153
	ldr	r3, [r7, #72]
	ldrh	r2, [r7, #70]	@ movhi
	strh	r2, [r3]	@ movhi
.L153:
	ldrsh	r3, [r7, #70]
	cmp	r3, #0
	bge	.L154
	b	.L152
.L154:
	ldr	r3, [r7, #72]
	adds	r3, r3, #2
	str	r3, [r7, #72]
	b	.L155
.L157:
	ldr	r3, [r7, #96]
	adds	r3, r3, #2
	str	r3, [r7, #96]
	ldr	r3, [r7, #96]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #96]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7, #72]
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #72]
	ldrh	r3, [r3]
	ldrsh	r2, [r7, #70]
	sxth	r3, r3
	cmp	r2, r3
	blt	.L156
	b	.L152
.L156:
	ldr	r3, [r7, #72]
	ldrh	r3, [r3]	@ movhi
	strh	r3, [r7, #70]	@ movhi
	ldr	r3, [r7, #72]
	adds	r3, r3, #2
	str	r3, [r7, #72]
.L155:
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bcc	.L157
	movs	r3, #0
	str	r3, [r7, #92]
	ldr	r3, [r7, #48]
	cmp	r3, #0
	ble	.L158
	ldr	r3, [r7, #72]
	subs	r3, r3, #2
	ldrh	r3, [r3]
	sxth	r3, r3
	adds	r3, r3, #1
	str	r3, [r7, #92]
	ldr	r3, [r7, #92]
	cmp	r3, #0
	bge	.L158
	b	.L152
.L158:
	ldr	r3, [r7, #92]
	cmn	r3, #4
	beq	.L159
	ldr	r3, [r7, #52]
	ldrh	r3, [r3, #22]
	sxth	r2, r3
	ldr	r3, [r7, #52]
	ldrh	r3, [r3, #58]
	sxth	r3, r3
	add	r2, r2, r3
	ldr	r3, [r7, #92]
	add	r3, r3, r2
	adds	r2, r3, #4
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bls	.L159
	ldr	r3, [r7, #92]
	adds	r3, r3, #4
	ldr	r0, [r7, #52]
	mov	r1, r3
	movs	r2, #0
	bl	FT_GlyphLoader_CheckPoints(PLT)
	mov	r3, r0
	b	.L160
.L159:
	movs	r3, #0
.L160:
	str	r3, [r7, #100]
	ldr	r3, [r7, #100]
	cmp	r3, #0
	beq	.L161
	b	.L151
.L161:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	movs	r2, #0
	str	r2, [r3, #140]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	movs	r2, #0
	str	r2, [r3, #136]
	ldr	r3, [r7, #96]
	adds	r2, r3, #2
	ldr	r3, [r7, #56]
	cmp	r2, r3
	bls	.L162
	b	.L152
.L162:
	ldr	r3, [r7, #96]
	adds	r3, r3, #2
	str	r3, [r7, #96]
	ldr	r3, [r7, #96]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #96]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	strh	r3, [r7, #38]	@ movhi
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #96]
	subs	r2, r2, r3
	ldrh	r3, [r7, #38]
	cmp	r2, r3
	bge	.L163
	movs	r3, #22
	str	r3, [r7, #100]
	b	.L151
.L163:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	and	r3, r3, #2
	cmp	r3, #0
	bne	.L164
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	ldr	r3, [r3, #388]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	ldr	r1, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	add	r3, r3, #392
	ldrh	r0, [r7, #38]
	add	r2, r7, #12
	str	r0, [sp]
	mov	r0, r1
	mov	r1, r2
	movs	r2, #1
	bl	Update_Max(PLT)
	str	r0, [r7, #100]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	ldr	r2, [r7, #12]
	uxth	r2, r2
	str	r2, [r3, #388]
	ldr	r3, [r7, #100]
	cmp	r3, #0
	beq	.L165
	ldr	r3, [r7, #100]
	b	.L189
.L165:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldrh	r2, [r7, #38]
	str	r2, [r3, #140]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #160]
	ldr	r2, [r2, #392]
	str	r2, [r3, #136]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	ldr	r2, [r3, #392]
	ldrh	r3, [r7, #38]
	mov	r0, r2
	ldr	r1, [r7, #96]
	mov	r2, r3
	bl	memcpy(PLT)
.L164:
	ldrh	r3, [r7, #38]
	ldr	r2, [r7, #96]
	add	r3, r3, r2
	str	r3, [r7, #96]
	ldr	r3, [r7, #52]
	adds	r3, r3, #56
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #8]
	str	r3, [r7, #88]
	ldr	r3, [r7, #92]
	ldr	r2, [r7, #88]
	add	r3, r3, r2
	str	r3, [r7, #28]
	b	.L167
.L173:
	ldr	r3, [r7, #96]
	adds	r2, r3, #1
	ldr	r3, [r7, #56]
	cmp	r2, r3
	bls	.L168
	b	.L152
.L168:
	ldr	r3, [r7, #88]
	adds	r2, r3, #1
	str	r2, [r7, #88]
	ldr	r2, [r7, #96]
	adds	r1, r2, #1
	str	r1, [r7, #96]
	ldrb	r2, [r2]
	strb	r2, [r7, #27]
	ldrb	r2, [r7, #27]
	strb	r2, [r3]
	ldrb	r3, [r7, #27]	@ zero_extendqisi2
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L167
	ldr	r3, [r7, #96]
	adds	r2, r3, #1
	ldr	r3, [r7, #56]
	cmp	r2, r3
	bls	.L169
	b	.L152
.L169:
	ldr	r3, [r7, #96]
	adds	r2, r3, #1
	str	r2, [r7, #96]
	ldrb	r3, [r3]
	strb	r3, [r7, #87]
	ldrb	r3, [r7, #87]	@ zero_extendqisi2
	ldr	r2, [r7, #88]
	add	r2, r2, r3
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bls	.L170
	b	.L152
.L170:
	b	.L171
.L172:
	ldr	r3, [r7, #88]
	adds	r2, r3, #1
	str	r2, [r7, #88]
	ldrb	r2, [r7, #27]
	strb	r2, [r3]
	ldrb	r3, [r7, #87]	@ zero_extendqisi2
	subs	r3, r3, #1
	strb	r3, [r7, #87]
.L171:
	ldrb	r3, [r7, #87]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L172
.L167:
	ldr	r2, [r7, #88]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bcc	.L173
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #4]
	str	r3, [r7, #80]
	ldr	r3, [r7, #92]
	lsls	r3, r3, #3
	ldr	r2, [r7, #80]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #8]
	str	r3, [r7, #88]
	movs	r3, #0
	str	r3, [r7, #76]
	ldr	r3, [r7, #44]
	ldr	r2, [r7, #96]
	add	r2, r2, r3
	ldr	r3, [r7, #56]
	cmp	r2, r3
	bls	.L174
	b	.L152
.L174:
	b	.L175
.L181:
	movs	r3, #0
	str	r3, [r7, #64]
	ldr	r3, [r7, #88]
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L176
	ldr	r3, [r7, #96]
	adds	r2, r3, #1
	ldr	r3, [r7, #56]
	cmp	r2, r3
	bls	.L177
	b	.L152
.L177:
	ldr	r3, [r7, #96]
	adds	r2, r3, #1
	str	r2, [r7, #96]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #64]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	and	r3, r3, #16
	cmp	r3, #0
	bne	.L179
	ldr	r3, [r7, #64]
	negs	r3, r3
	str	r3, [r7, #64]
	b	.L179
.L176:
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	and	r3, r3, #16
	cmp	r3, #0
	bne	.L179
	ldr	r3, [r7, #96]
	adds	r2, r3, #2
	ldr	r3, [r7, #56]
	cmp	r2, r3
	bls	.L180
	b	.L152
.L180:
	ldr	r3, [r7, #96]
	adds	r3, r3, #2
	str	r3, [r7, #96]
	ldr	r3, [r7, #96]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #96]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	sxth	r3, r3
	str	r3, [r7, #64]
.L179:
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #80]
	ldr	r2, [r7, #76]
	str	r2, [r3]
	ldrb	r3, [r7, #19]
	bic	r3, r3, #18
	uxtb	r2, r3
	ldr	r3, [r7, #88]
	strb	r2, [r3]
	ldr	r3, [r7, #80]
	adds	r3, r3, #8
	str	r3, [r7, #80]
	ldr	r3, [r7, #88]
	adds	r3, r3, #1
	str	r3, [r7, #88]
.L175:
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcc	.L181
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #60]
	str	r3, [r7, #80]
	ldr	r3, [r7, #92]
	lsls	r3, r3, #3
	ldr	r2, [r7, #80]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #8]
	str	r3, [r7, #88]
	movs	r3, #0
	str	r3, [r7, #76]
	b	.L182
.L188:
	movs	r3, #0
	str	r3, [r7, #60]
	ldr	r3, [r7, #88]
	ldrb	r3, [r3]
	strb	r3, [r7, #18]
	ldrb	r3, [r7, #18]	@ zero_extendqisi2
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L183
	ldr	r3, [r7, #96]
	adds	r2, r3, #1
	ldr	r3, [r7, #56]
	cmp	r2, r3
	bls	.L184
	b	.L152
.L184:
	ldr	r3, [r7, #96]
	adds	r2, r3, #1
	str	r2, [r7, #96]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #60]
	ldrb	r3, [r7, #18]	@ zero_extendqisi2
	and	r3, r3, #32
	cmp	r3, #0
	bne	.L186
	ldr	r3, [r7, #60]
	negs	r3, r3
	str	r3, [r7, #60]
	b	.L186
.L183:
	ldrb	r3, [r7, #18]	@ zero_extendqisi2
	and	r3, r3, #32
	cmp	r3, #0
	bne	.L186
	ldr	r3, [r7, #96]
	adds	r2, r3, #2
	ldr	r3, [r7, #56]
	cmp	r2, r3
	bls	.L187
	b	.L152
.L187:
	ldr	r3, [r7, #96]
	adds	r3, r3, #2
	str	r3, [r7, #96]
	ldr	r3, [r7, #96]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #96]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	sxth	r3, r3
	str	r3, [r7, #60]
.L186:
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #60]
	add	r3, r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #80]
	ldr	r2, [r7, #76]
	str	r2, [r3, #4]
	ldrb	r3, [r7, #18]
	and	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [r7, #88]
	strb	r2, [r3]
	ldr	r3, [r7, #80]
	adds	r3, r3, #8
	str	r3, [r7, #80]
	ldr	r3, [r7, #88]
	adds	r3, r3, #1
	str	r3, [r7, #88]
.L182:
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcc	.L188
	ldr	r3, [r7, #92]
	uxth	r2, r3
	ldr	r3, [r7, #32]
	strh	r2, [r3, #2]	@ movhi
	ldr	r3, [r7, #48]
	uxth	r2, r3
	ldr	r3, [r7, #32]
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #96]
	str	r2, [r3, #200]
.L151:
	ldr	r3, [r7, #100]
	b	.L189
.L152:
	movs	r3, #20
	str	r3, [r7, #100]
	b	.L151
.L189:
	mov	r0, r3
	adds	r7, r7, #104
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	TT_Load_Simple_Glyph, .-TT_Load_Simple_Glyph
	.section	.text.TT_Load_Composite_Glyph,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	TT_Load_Composite_Glyph, %function
TT_Load_Composite_Glyph:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #56
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #200]
	str	r3, [r7, #48]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #204]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #44]
.L208:
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	ldr	r0, [r7, #16]
	mov	r1, r3
	bl	FT_GlyphLoader_CheckSubGlyphs(PLT)
	str	r0, [r7, #52]
	ldr	r3, [r7, #52]
	cmp	r3, #0
	beq	.L191
	b	.L192
.L191:
	ldr	r3, [r7, #48]
	adds	r2, r3, #4
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bls	.L193
	b	.L194
.L193:
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #88]
	ldr	r3, [r7, #44]
	lsls	r3, r3, #5
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #48]
	adds	r3, r3, #2
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #48]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r2, r3
	ldr	r3, [r7, #12]
	strh	r2, [r3, #4]	@ movhi
	ldr	r3, [r7, #48]
	adds	r3, r3, #2
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #48]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3]
	movs	r3, #2
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #4]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L195
	ldr	r3, [r7, #24]
	adds	r3, r3, #2
	str	r3, [r7, #24]
.L195:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #4]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L196
	ldr	r3, [r7, #24]
	adds	r3, r3, #2
	str	r3, [r7, #24]
	b	.L197
.L196:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #4]
	and	r3, r3, #64
	cmp	r3, #0
	beq	.L198
	ldr	r3, [r7, #24]
	adds	r3, r3, #4
	str	r3, [r7, #24]
	b	.L197
.L198:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #4]
	and	r3, r3, #128
	cmp	r3, #0
	beq	.L197
	ldr	r3, [r7, #24]
	adds	r3, r3, #8
	str	r3, [r7, #24]
.L197:
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #24]
	add	r2, r2, r3
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bls	.L199
	b	.L194
.L199:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #4]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L200
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #4]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L201
	ldr	r3, [r7, #48]
	adds	r3, r3, #2
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #48]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	sxth	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #48]
	adds	r3, r3, #2
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #48]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	sxth	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #12]
	b	.L203
.L201:
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r3, r3
	sxtb	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r3, r3
	sxtb	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #12]
	b	.L203
.L200:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #4]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L204
	ldr	r3, [r7, #48]
	adds	r3, r3, #2
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #48]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #48]
	adds	r3, r3, #2
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #48]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #12]
	b	.L203
.L204:
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #12]
.L203:
	mov	r3, #65536
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	str	r3, [r7, #40]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	str	r3, [r7, #36]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #4]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L205
	ldr	r3, [r7, #48]
	adds	r3, r3, #2
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #48]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	sxth	r3, r3
	lsls	r3, r3, #2
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	str	r3, [r7, #32]
	b	.L206
.L205:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #4]
	and	r3, r3, #64
	cmp	r3, #0
	beq	.L207
	ldr	r3, [r7, #48]
	adds	r3, r3, #2
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #48]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	sxth	r3, r3
	lsls	r3, r3, #2
	str	r3, [r7, #40]
	ldr	r3, [r7, #48]
	adds	r3, r3, #2
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #48]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	sxth	r3, r3
	lsls	r3, r3, #2
	str	r3, [r7, #32]
	b	.L206
.L207:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #4]
	and	r3, r3, #128
	cmp	r3, #0
	beq	.L206
	ldr	r3, [r7, #48]
	adds	r3, r3, #2
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #48]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	sxth	r3, r3
	lsls	r3, r3, #2
	str	r3, [r7, #40]
	ldr	r3, [r7, #48]
	adds	r3, r3, #2
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #48]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	sxth	r3, r3
	lsls	r3, r3, #2
	str	r3, [r7, #28]
	ldr	r3, [r7, #48]
	adds	r3, r3, #2
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #48]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	sxth	r3, r3
	lsls	r3, r3, #2
	str	r3, [r7, #36]
	ldr	r3, [r7, #48]
	adds	r3, r3, #2
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #48]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	sxth	r3, r3
	lsls	r3, r3, #2
	str	r3, [r7, #32]
.L206:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #40]
	str	r2, [r3, #16]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #36]
	str	r2, [r3, #20]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #28]
	str	r2, [r3, #24]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #32]
	str	r2, [r3, #28]
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	str	r3, [r7, #44]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #4]
	and	r3, r3, #32
	cmp	r3, #0
	bne	.L208
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #44]
	str	r2, [r3, #84]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	str	r3, [r7, #8]
	ldr	r0, [r7, #8]
	bl	FT_Stream_Pos(PLT)
	mov	r3, r0
	ldr	r2, [r7, #48]
	add	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #20]
	subs	r3, r2, r3
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #168]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #48]
	str	r2, [r3, #200]
.L192:
	ldr	r3, [r7, #52]
	b	.L210
.L194:
	movs	r3, #21
	str	r3, [r7, #52]
	b	.L192
.L210:
	mov	r0, r3
	adds	r7, r7, #56
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	TT_Load_Composite_Glyph, .-TT_Load_Composite_Glyph
	.section	.text.TT_Init_Glyph_Loading,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	TT_Init_Glyph_Loading, %function
TT_Init_Glyph_Loading:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r2, .L212
.LPIC4:
	add	r2, pc
	str	r2, [r3, #512]
	ldr	r3, [r7, #4]
	ldr	r2, .L212+4
.LPIC5:
	add	r2, pc
	str	r2, [r3, #520]
	ldr	r3, [r7, #4]
	ldr	r2, .L212+8
.LPIC6:
	add	r2, pc
	str	r2, [r3, #524]
	ldr	r3, [r7, #4]
	ldr	r2, .L212+12
.LPIC7:
	add	r2, pc
	str	r2, [r3, #528]
	ldr	r3, [r7, #4]
	ldr	r2, .L212+16
.LPIC8:
	add	r2, pc
	str	r2, [r3, #516]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L213:
	.align	2
.L212:
	.word	TT_Access_Glyph_Frame-(.LPIC4+4)
	.word	TT_Load_Glyph_Header-(.LPIC5+4)
	.word	TT_Load_Simple_Glyph-(.LPIC6+4)
	.word	TT_Load_Composite_Glyph-(.LPIC7+4)
	.word	TT_Forget_Glyph_Frame-(.LPIC8+4)
	.size	TT_Init_Glyph_Loading, .-TT_Init_Glyph_Loading
	.section	.text.tt_prepare_zone,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_prepare_zone, %function
tt_prepare_zone:
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
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #2]
	uxth	r2, r3
	ldr	r3, [r7, #4]
	uxth	r3, r3
	subs	r3, r2, r3
	uxth	r2, r3
	ldr	r3, [r7, #12]
	strh	r2, [r3, #8]	@ movhi
	ldr	r3, [r7, #8]
	ldrh	r3, [r3]
	uxth	r2, r3
	ldr	r3, [r7]
	uxth	r3, r3
	subs	r3, r2, r3
	uxth	r3, r3
	uxth	r2, r3
	ldr	r3, [r7, #12]
	strh	r2, [r3, #10]	@ movhi
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #4]
	lsls	r3, r3, #3
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #12]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	lsls	r3, r3, #3
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #16]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #4]
	lsls	r3, r3, #3
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #20]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #24]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	lsls	r3, r3, #1
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #28]
	ldr	r3, [r7, #4]
	uxth	r2, r3
	ldr	r3, [r7, #12]
	strh	r2, [r3, #32]	@ movhi
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	tt_prepare_zone, .-tt_prepare_zone
	.section	.text.TT_Hint_Glyph,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	TT_Hint_Glyph, %function
TT_Hint_Glyph:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #56
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #52]
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #96]
	str	r3, [r7, #48]
	ldr	r3, [r7, #4]
	adds	r3, r3, #124
	str	r3, [r7, #44]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldr	r3, [r3, #140]
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	cmp	r3, #0
	ble	.L216
	ldr	r3, [r7, #44]
	ldr	r1, [r3, #12]
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #44]
	ldrh	r3, [r3, #8]
	lsls	r3, r3, #3
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	memcpy(PLT)
.L216:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #160]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	add	r1, r2, #284
	add	r2, r3, #172
	movs	r3, #68
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	memcpy(PLT)
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L217
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	mov	r2, #65536
	str	r2, [r3, #220]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	mov	r2, #65536
	str	r2, [r3, #224]
	ldr	r3, [r7, #44]
	ldr	r1, [r3, #20]
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #44]
	ldrh	r3, [r3, #8]
	lsls	r3, r3, #3
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	memcpy(PLT)
	b	.L218
.L217:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #4]
	ldr	r2, [r2, #48]
	str	r2, [r3, #220]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #4]
	ldr	r2, [r2, #52]
	str	r2, [r3, #224]
.L218:
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #44]
	ldrh	r3, [r3, #8]
	add	r3, r3, #536870912
	subs	r3, r3, #4
	lsls	r3, r3, #3
	add	r2, r2, r3
	ldr	r3, [r7, #44]
	ldr	r1, [r3, #16]
	ldr	r3, [r7, #44]
	ldrh	r3, [r3, #8]
	add	r3, r3, #536870912
	subs	r3, r3, #4
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r3, [r3]
	adds	r3, r3, #32
	bic	r3, r3, #63
	str	r3, [r2]
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #44]
	ldrh	r3, [r3, #8]
	add	r3, r3, #536870912
	subs	r3, r3, #3
	lsls	r3, r3, #3
	add	r2, r2, r3
	ldr	r3, [r7, #44]
	ldr	r1, [r3, #16]
	ldr	r3, [r7, #44]
	ldrh	r3, [r3, #8]
	add	r3, r3, #536870912
	subs	r3, r3, #3
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r3, [r3]
	adds	r3, r3, #32
	bic	r3, r3, #63
	str	r3, [r2]
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #44]
	ldrh	r3, [r3, #8]
	add	r3, r3, #536870912
	subs	r3, r3, #2
	lsls	r3, r3, #3
	add	r2, r2, r3
	ldr	r3, [r7, #44]
	ldr	r1, [r3, #16]
	ldr	r3, [r7, #44]
	ldrh	r3, [r3, #8]
	add	r3, r3, #536870912
	subs	r3, r3, #2
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r3, [r3, #4]
	adds	r3, r3, #32
	bic	r3, r3, #63
	str	r3, [r2, #4]
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #44]
	ldrh	r3, [r3, #8]
	add	r3, r3, #536870912
	subs	r3, r3, #1
	lsls	r3, r3, #3
	add	r2, r2, r3
	ldr	r3, [r7, #44]
	ldr	r1, [r3, #16]
	ldr	r3, [r7, #44]
	ldrh	r3, [r3, #8]
	add	r3, r3, #536870912
	subs	r3, r3, #1
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r3, [r3, #4]
	adds	r3, r3, #32
	bic	r3, r3, #63
	str	r3, [r2, #4]
	ldr	r3, [r7, #40]
	cmp	r3, #0
	ble	.L219
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	add	r4, r7, #12
	add	r5, r3, #56
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #160]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	ldr	r3, [r3, #392]
	mov	r0, r2
	movs	r1, #3
	mov	r2, r3
	ldr	r3, [r7, #40]
	bl	TT_Set_CodeRange(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	ldrb	r2, [r7, #3]
	strb	r2, [r3, #560]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #160]
	ldr	r3, [r7, #44]
	add	r4, r2, #144
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	mov	r0, r3
	bl	TT_Run_Context(PLT)
	str	r0, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L220
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	ldrb	r3, [r3, #561]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L220
	ldr	r3, [r7, #32]
	b	.L221
.L220:
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldrb	r1, [r2]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #160]
	ldr	r2, [r2, #340]
	lsls	r2, r2, #5
	uxtb	r2, r2
	orrs	r2, r2, r1
	uxtb	r2, r2
	orr	r2, r2, #4
	uxtb	r2, r2
	strb	r2, [r3]
.L219:
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #44]
	ldrh	r3, [r3, #8]
	add	r3, r3, #536870912
	subs	r3, r3, #4
	lsls	r3, r3, #3
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #68
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #44]
	ldrh	r3, [r3, #8]
	add	r3, r3, #536870912
	subs	r3, r3, #3
	lsls	r3, r3, #3
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #76
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #44]
	ldrh	r3, [r3, #8]
	add	r3, r3, #536870912
	subs	r3, r3, #2
	lsls	r3, r3, #3
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #184
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #44]
	ldrh	r3, [r3, #8]
	add	r3, r3, #536870912
	subs	r3, r3, #1
	lsls	r3, r3, #3
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #192
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #64]
	cmp	r3, #38
	bne	.L222
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	ldr	r3, [r3, #632]
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L223
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	adds	r3, r3, #56
	mov	r0, r3
	mvn	r1, #23
	movs	r2, #0
	bl	FT_Outline_EmboldenXY(PLT)
	b	.L222
.L223:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	ldr	r3, [r3, #632]
	and	r3, r3, #64
	cmp	r3, #0
	beq	.L222
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	adds	r3, r3, #56
	mov	r0, r3
	movs	r1, #24
	movs	r2, #0
	bl	FT_Outline_EmboldenXY(PLT)
.L222:
	movs	r3, #0
.L221:
	mov	r0, r3
	adds	r7, r7, #56
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.size	TT_Hint_Glyph, .-TT_Hint_Glyph
	.section	.text.TT_Process_Simple_Glyph,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	TT_Process_Simple_Glyph, %function
TT_Process_Simple_Glyph:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #80
	add	r7, sp, #8
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #44]
	movs	r3, #0
	str	r3, [r7, #68]
	ldr	r3, [r7, #44]
	adds	r3, r3, #56
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	str	r3, [r7, #36]
	ldr	r3, [r7, #40]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #36]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r7, #4]
	adds	r2, r2, #68
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #40]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r7, #4]
	adds	r2, r2, #76
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #40]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #36]
	adds	r3, r3, #2
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r7, #4]
	adds	r2, r2, #184
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #40]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #36]
	adds	r3, r3, #3
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r7, #4]
	adds	r2, r2, #192
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #40]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #40]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #40]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #36]
	adds	r3, r3, #2
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #40]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #36]
	adds	r3, r3, #3
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #36]
	adds	r3, r3, #4
	str	r3, [r7, #36]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldrb	r3, [r3, #672]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L225
	ldr	r3, [r7, #4]
	ldr	r1, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #36]
	mov	r0, r1
	mov	r1, r2
	ldr	r2, [r7, #40]
	bl	TT_Vary_Apply_Glyph_Deltas(PLT)
	str	r0, [r7, #68]
	ldr	r3, [r7, #68]
	cmp	r3, #0
	beq	.L225
	ldr	r3, [r7, #68]
	b	.L226
.L225:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	and	r3, r3, #2
	cmp	r3, #0
	bne	.L227
	ldr	r3, [r7, #4]
	add	r2, r3, #124
	ldr	r3, [r7, #44]
	adds	r3, r3, #56
	mov	r0, r2
	mov	r1, r3
	movs	r2, #0
	movs	r3, #0
	bl	tt_prepare_zone(PLT)
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #144]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #140]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #132]
	adds	r3, r3, #4
	lsls	r3, r3, #3
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	memcpy(PLT)
.L227:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #96]
	str	r3, [r7, #28]
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #20]
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldrh	r3, [r3, #44]
	str	r3, [r7, #20]
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #24]
	str	r3, [r7, #16]
	mov	r3, #1000
	str	r3, [r7, #64]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #4]
	str	r3, [r7, #60]
	ldr	r3, [r7, #40]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #36]
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #56]
	movs	r3, #0
	str	r3, [r7, #52]
	movs	r3, #0
	strb	r3, [r7, #51]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #64]
	cmp	r3, #38
	bne	.L228
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	and	r3, r3, #2
	cmp	r3, #0
	bne	.L229
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	str	r3, [sp]
	ldr	r0, [r7, #32]
	ldr	r1, [r7, #24]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	bl	sph_test_tweak_x_scaling(PLT)
	str	r0, [r7, #64]
.L229:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L230
	ldr	r3, [r7, #64]
	cmp	r3, #1000
	beq	.L233
.L230:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #48]
	ldr	r3, [r7, #64]
	mov	r0, r2
	mov	r1, r3
	mov	r2, #1000
	bl	FT_MulDiv(PLT)
	str	r0, [r7, #56]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #52]
	str	r3, [r7, #52]
	ldr	r3, [r7, #64]
	cmp	r3, #1000
	beq	.L232
	ldr	r3, [r7, #20]
	cmp	r3, #11
	bls	.L232
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #8
	mov	r2, r3
	ldr	r3, [r7, #64]
	rsb	r3, r3, #1000
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r3, r0
	ldr	r0, [r7, #40]
	mov	r1, r3
	movs	r2, #0
	bl	FT_Outline_EmboldenXY(PLT)
.L232:
	movs	r3, #1
	strb	r3, [r7, #51]
	b	.L233
.L228:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L233
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #48]
	str	r3, [r7, #56]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #52]
	str	r3, [r7, #52]
	movs	r3, #1
	strb	r3, [r7, #51]
.L233:
	ldrb	r3, [r7, #51]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L234
	b	.L235
.L236:
	ldr	r3, [r7, #60]
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r1, [r7, #56]
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #60]
	str	r2, [r3]
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r1, [r7, #52]
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #60]
	str	r2, [r3, #4]
	ldr	r3, [r7, #60]
	adds	r3, r3, #8
	str	r3, [r7, #60]
.L235:
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bcc	.L236
	ldr	r3, [r7, #40]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #36]
	add	r3, r3, #536870912
	subs	r3, r3, #4
	lsls	r3, r3, #3
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #68
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #40]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #36]
	add	r3, r3, #536870912
	subs	r3, r3, #3
	lsls	r3, r3, #3
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #76
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #40]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #36]
	add	r3, r3, #536870912
	subs	r3, r3, #2
	lsls	r3, r3, #3
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #184
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #40]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #36]
	add	r3, r3, #536870912
	subs	r3, r3, #1
	lsls	r3, r3, #3
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #192
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
.L234:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	and	r3, r3, #2
	cmp	r3, #0
	bne	.L237
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #132]
	adds	r3, r3, #4
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #132]	@ movhi
	ldr	r0, [r7, #4]
	movs	r1, #0
	bl	TT_Hint_Glyph(PLT)
	str	r0, [r7, #68]
.L237:
	ldr	r3, [r7, #68]
.L226:
	mov	r0, r3
	adds	r7, r7, #72
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	TT_Process_Simple_Glyph, .-TT_Process_Simple_Glyph
	.section	.text.TT_Process_Composite_Component,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	TT_Process_Composite_Component, %function
TT_Process_Composite_Component:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #88
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	str	r3, [r7, #76]
	ldr	r3, [r7, #76]
	ldr	r2, [r3, #24]
	ldr	r3, [r7]
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #76]
	ldrh	r3, [r3, #22]
	uxth	r2, r3
	ldr	r3, [r7]
	uxth	r3, r3
	subs	r3, r2, r3
	uxth	r3, r3
	uxth	r3, r3
	strh	r3, [r7, #18]	@ movhi
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #4]
	uxtb	r3, r3
	bic	r3, r3, #55
	strb	r3, [r7, #75]
	ldrb	r3, [r7, #75]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L239
	ldr	r3, [r7, #8]
	adds	r3, r3, #16
	add	r2, r7, #16
	mov	r0, r2
	mov	r1, r3
	bl	FT_Outline_Transform(PLT)
.L239:
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #4]
	and	r3, r3, #2
	cmp	r3, #0
	bne	.L240
	ldr	r3, [r7, #76]
	ldrh	r3, [r3, #22]
	sxth	r3, r3
	str	r3, [r7, #68]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	str	r3, [r7, #64]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	str	r3, [r7, #60]
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldr	r2, [r7, #60]
	ldr	r3, [r7]
	add	r3, r3, r2
	str	r3, [r7, #60]
	ldr	r2, [r7, #64]
	ldr	r3, [r7]
	cmp	r2, r3
	bcs	.L241
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #68]
	cmp	r2, r3
	bcc	.L242
.L241:
	movs	r3, #21
	b	.L249
.L242:
	ldr	r3, [r7, #76]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #64]
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #76]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #60]
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #56]
	ldr	r2, [r3]
	ldr	r3, [r7, #52]
	ldr	r3, [r3]
	subs	r3, r2, r3
	str	r3, [r7, #84]
	ldr	r3, [r7, #56]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	str	r3, [r7, #80]
	b	.L244
.L240:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	str	r3, [r7, #84]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	str	r3, [r7, #80]
	ldr	r3, [r7, #84]
	cmp	r3, #0
	bne	.L245
	ldr	r3, [r7, #80]
	cmp	r3, #0
	bne	.L245
	movs	r3, #0
	b	.L249
.L245:
	ldrb	r3, [r7, #75]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L246
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #4]
	and	r3, r3, #2048
	cmp	r3, #0
	beq	.L246
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #20]
	mov	r0, r2
	mov	r1, r3
	bl	FT_Hypot(PLT)
	str	r0, [r7, #48]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #24]
	mov	r0, r2
	mov	r1, r3
	bl	FT_Hypot(PLT)
	str	r0, [r7, #44]
	ldr	r0, [r7, #84]
	ldr	r1, [r7, #48]
	bl	FT_MulFix_arm(PLT)
	str	r0, [r7, #84]
	ldr	r0, [r7, #80]
	ldr	r1, [r7, #44]
	bl	FT_MulFix_arm(PLT)
	str	r0, [r7, #80]
.L246:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L244
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #48]
	str	r3, [r7, #40]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #52]
	str	r3, [r7, #36]
	ldr	r0, [r7, #84]
	ldr	r1, [r7, #40]
	bl	FT_MulFix_arm(PLT)
	str	r0, [r7, #84]
	ldr	r0, [r7, #80]
	ldr	r1, [r7, #36]
	bl	FT_MulFix_arm(PLT)
	str	r0, [r7, #80]
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #4]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L244
	ldr	r3, [r7, #84]
	adds	r3, r3, #32
	bic	r3, r3, #63
	str	r3, [r7, #84]
	ldr	r3, [r7, #80]
	adds	r3, r3, #32
	bic	r3, r3, #63
	str	r3, [r7, #80]
.L244:
	ldr	r3, [r7, #84]
	cmp	r3, #0
	bne	.L247
	ldr	r3, [r7, #80]
	cmp	r3, #0
	beq	.L248
.L247:
	add	r3, r7, #16
	mov	r0, r3
	ldr	r1, [r7, #84]
	ldr	r2, [r7, #80]
	bl	FT_Outline_Translate(PLT)
.L248:
	movs	r3, #0
.L249:
	mov	r0, r3
	adds	r7, r7, #88
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	TT_Process_Composite_Component, .-TT_Process_Composite_Component
	.section	.text.TT_Process_Composite_Glyph,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	TT_Process_Composite_Glyph, %function
TT_Process_Composite_Glyph:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	adds	r3, r3, #20
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	cmn	r3, #4
	beq	.L251
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	ldrh	r3, [r3, #22]
	sxth	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	ldrh	r3, [r3, #58]
	sxth	r3, r3
	add	r2, r2, r3
	ldr	r3, [r7, #32]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	add	r3, r3, r2
	adds	r2, r3, #4
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bls	.L251
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #32]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	adds	r3, r3, #4
	mov	r0, r2
	mov	r1, r3
	movs	r2, #0
	bl	FT_GlyphLoader_CheckPoints(PLT)
	mov	r3, r0
	b	.L252
.L251:
	movs	r3, #0
.L252:
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L253
	ldr	r3, [r7, #20]
	b	.L264
.L253:
	ldr	r3, [r7, #32]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #32]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r7, #12]
	adds	r2, r2, #68
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #32]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #32]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	adds	r3, r3, #1
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r7, #12]
	adds	r2, r2, #76
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #32]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #32]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	adds	r3, r3, #2
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r7, #12]
	adds	r2, r2, #184
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #32]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #32]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	adds	r3, r3, #3
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r7, #12]
	adds	r2, r2, #192
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #32]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #32]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #32]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #32]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	adds	r3, r3, #1
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #32]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #32]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	adds	r3, r3, #2
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #32]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #32]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	adds	r3, r3, #3
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #168]
	ldr	r0, [r7, #28]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L255
	add	r3, r7, #20
	ldr	r0, [r7, #28]
	mov	r1, r3
	bl	FT_Stream_ReadUShort(PLT)
	mov	r3, r0
	strh	r3, [r7, #26]	@ movhi
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L256
.L255:
	ldr	r3, [r7, #20]
	b	.L264
.L256:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldrh	r3, [r3, #286]	@ movhi
	strh	r3, [r7, #24]	@ movhi
	ldrh	r2, [r7, #26]
	ldrh	r3, [r7, #24]
	cmp	r2, r3
	bls	.L258
	ldrh	r2, [r7, #26]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	cmp	r2, r3
	ble	.L259
	movs	r3, #22
	b	.L264
.L259:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #160]
	ldr	r3, [r3, #388]
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #160]
	ldr	r1, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #160]
	add	r3, r3, #392
	ldrh	r0, [r7, #26]
	add	r2, r7, #16
	str	r0, [sp]
	mov	r0, r1
	mov	r1, r2
	movs	r2, #1
	bl	Update_Max(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #160]
	ldr	r2, [r7, #16]
	uxth	r2, r2
	str	r2, [r3, #388]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L260
	ldr	r3, [r7, #20]
	b	.L264
.L258:
	ldrh	r3, [r7, #26]
	cmp	r3, #0
	bne	.L260
	movs	r3, #0
	b	.L264
.L260:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #160]
	ldr	r2, [r3, #392]
	ldrh	r3, [r7, #26]
	ldr	r0, [r7, #28]
	mov	r1, r2
	mov	r2, r3
	bl	FT_Stream_Read(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L261
	ldr	r3, [r7, #20]
	b	.L264
.L261:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #160]
	ldr	r2, [r2, #392]
	str	r2, [r3, #136]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	ldrh	r2, [r7, #26]
	str	r2, [r3, #140]
	ldr	r3, [r7, #12]
	add	r2, r3, #124
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	adds	r3, r3, #20
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	bl	tt_prepare_zone(PLT)
	movs	r3, #0
	str	r3, [r7, #36]
	b	.L262
.L263:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #148]
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	ldr	r2, [r7, #12]
	ldr	r1, [r2, #148]
	ldr	r2, [r7, #36]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	bic	r2, r2, #24
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L262:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #132]
	mov	r2, r3
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bhi	.L263
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #132]
	adds	r3, r3, #4
	uxth	r2, r3
	ldr	r3, [r7, #12]
	strh	r2, [r3, #132]	@ movhi
	ldr	r0, [r7, #12]
	movs	r1, #1
	bl	TT_Hint_Glyph(PLT)
	mov	r3, r0
.L264:
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	TT_Process_Composite_Glyph, .-TT_Process_Composite_Glyph
	.section	.rodata
	.align	2
.LC0:
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.align	2
.LC1:
	.short	0
	.short	1
	.short	2
	.short	3
	.section	.text.load_truetype_glyph,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	load_truetype_glyph, %function
load_truetype_glyph:
	@ args = 0, pretend = 0, frame = 256
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #268
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	strb	r3, [r7, #3]
	movs	r3, #0
	str	r3, [r7, #148]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #220]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	str	r3, [r7, #216]
	movs	r3, #0
	strb	r3, [r7, #243]
	movs	r3, #0
	strb	r3, [r7, #242]
	ldr	r3, [r7, #4]
	cmp	r3, #1
	bls	.L266
	ldr	r3, [r7, #220]
	ldrh	r3, [r3, #290]
	mov	r2, r3
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcs	.L266
	movs	r3, #21
	str	r3, [r7, #148]
	b	.L267
.L266:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L268
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #48]
	str	r3, [r7, #252]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #52]
	str	r3, [r7, #248]
	b	.L269
.L268:
	mov	r3, #65536
	str	r3, [r7, #252]
	mov	r3, #65536
	str	r3, [r7, #248]
.L269:
	ldr	r3, [r7, #220]
	ldr	r3, [r3, #128]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L270
	ldr	r3, [r7, #220]
	ldr	r3, [r3, #128]
	ldr	r3, [r3, #48]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r2, [r7, #220]
	ldr	r2, [r2, #128]
	ldr	r2, [r2, #48]
	ldr	r1, [r2, #4]
	add	r2, r7, #100
	mov	r0, r1
	ldr	r1, [r7, #8]
	blx	r3
	mov	r3, r0
	str	r3, [r7, #148]
	ldr	r3, [r7, #148]
	cmp	r3, #0
	beq	.L271
	b	.L267
.L271:
	movs	r3, #1
	strb	r3, [r7, #242]
	movs	r3, #0
	str	r3, [r7, #244]
	ldr	r2, [r7, #104]
	ldr	r3, [r7, #12]
	str	r2, [r3, #28]
	add	r3, r7, #108
	mov	r0, r3
	movs	r1, #0
	movs	r2, #40
	bl	memset(PLT)
	ldr	r2, [r7, #100]
	ldr	r3, [r7, #104]
	add	r1, r7, #108
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	FT_Stream_OpenMemory(PLT)
	ldr	r3, [r7, #12]
	add	r2, r7, #108
	str	r2, [r3, #24]
	b	.L272
.L270:
	ldr	r3, [r7, #12]
	adds	r3, r3, #28
	ldr	r0, [r7, #220]
	ldr	r1, [r7, #8]
	mov	r2, r3
	bl	tt_face_get_location(PLT)
	str	r0, [r7, #244]
.L272:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	cmp	r3, #0
	ble	.L273
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #84]
	cmp	r3, #0
	bne	.L274
	ldr	r3, [r7, #220]
	ldr	r3, [r3, #128]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	bne	.L274
	movs	r3, #8
	str	r3, [r7, #148]
	b	.L267
.L274:
	ldr	r3, [r7, #220]
	ldr	r4, [r3, #512]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #84]
	ldr	r3, [r7, #244]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	blx	r4
	mov	r3, r0
	str	r3, [r7, #148]
	ldr	r3, [r7, #148]
	cmp	r3, #0
	beq	.L275
	b	.L267
.L275:
	movs	r3, #1
	strb	r3, [r7, #243]
	ldr	r3, [r7, #220]
	ldr	r3, [r3, #520]
	ldr	r0, [r7, #12]
	blx	r3
	mov	r3, r0
	str	r3, [r7, #148]
	ldr	r3, [r7, #148]
	cmp	r3, #0
	beq	.L276
	b	.L267
.L276:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	tt_get_metrics(PLT)
	mov	r3, r0
	str	r3, [r7, #148]
	ldr	r3, [r7, #148]
	cmp	r3, #0
	beq	.L277
	b	.L267
.L277:
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L273
	b	.L267
.L273:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	cmp	r3, #0
	beq	.L278
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #32]
	cmp	r3, #0
	bne	.L279
.L278:
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #36]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #44]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #40]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #48]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	tt_get_metrics(PLT)
	mov	r3, r0
	str	r3, [r7, #148]
	ldr	r3, [r7, #148]
	cmp	r3, #0
	beq	.L280
	b	.L267
.L280:
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L281
	b	.L267
.L281:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #160]
	cmp	r3, #0
	beq	.L282
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #160]
	ldrb	r3, [r3, #616]	@ zero_extendqisi2
	b	.L283
.L282:
	movs	r3, #0
.L283:
	strb	r3, [r7, #155]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #160]
	cmp	r3, #0
	beq	.L284
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #160]
	ldrb	r3, [r3, #608]	@ zero_extendqisi2
	b	.L285
.L284:
	movs	r3, #0
.L285:
	strb	r3, [r7, #154]
	ldrb	r3, [r7, #155]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L286
	ldrb	r3, [r7, #154]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L286
	movs	r3, #1
	b	.L287
.L286:
	movs	r3, #0
.L287:
	strb	r3, [r7, #153]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	subs	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #68]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #68]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #56]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #76]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #80]
	ldrb	r3, [r7, #153]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L288
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #56]
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	b	.L289
.L288:
	movs	r3, #0
.L289:
	ldr	r2, [r7, #12]
	str	r3, [r2, #184]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #48]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #176]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #188]
	ldrb	r3, [r7, #153]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L290
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #56]
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	b	.L291
.L290:
	movs	r3, #0
.L291:
	ldr	r2, [r7, #12]
	str	r3, [r2, #192]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #188]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #180]
	subs	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #196]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	tt_get_metrics_incr_overrides(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldrb	r3, [r3, #672]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L292
	ldr	r3, .L334
.LPIC9:
	add	r3, pc
	mov	r2, r3
	add	r3, r7, #96
	ldr	r0, [r2]	@ unaligned
	str	r0, [r3]	@ unaligned
	ldr	r3, .L334+4
.LPIC10:
	add	r3, pc
	mov	r2, r3
	add	r3, r7, #88
	ldr	r0, [r2]	@ unaligned
	ldr	r1, [r2, #4]	@ unaligned
	stmia	r3!, {r0, r1}
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #68]
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #72]
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #76]
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #80]
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #184]
	str	r3, [r7, #32]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #188]
	str	r3, [r7, #36]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #192]
	str	r3, [r7, #40]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #196]
	str	r3, [r7, #44]
	movs	r3, #4
	strh	r3, [r7, #70]	@ movhi
	movs	r3, #4
	strh	r3, [r7, #68]	@ movhi
	add	r3, r7, #16
	str	r3, [r7, #72]
	add	r3, r7, #96
	str	r3, [r7, #76]
	add	r3, r7, #88
	str	r3, [r7, #80]
	ldr	r3, [r7, #12]
	ldr	r1, [r3]
	ldrh	r3, [r7, #70]
	sxth	r3, r3
	add	r2, r7, #68
	mov	r0, r1
	ldr	r1, [r7, #8]
	bl	TT_Vary_Apply_Glyph_Deltas(PLT)
	mov	r3, r0
	str	r3, [r7, #148]
	ldr	r3, [r7, #148]
	cmp	r3, #0
	bne	.L267
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #12]
	str	r2, [r3, #68]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #12]
	str	r2, [r3, #72]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #12]
	str	r2, [r3, #76]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #12]
	str	r2, [r3, #80]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #12]
	str	r2, [r3, #184]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #12]
	str	r2, [r3, #188]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #12]
	str	r2, [r3, #192]
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #12]
	str	r2, [r3, #196]
.L292:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L294
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #68]
	mov	r0, r3
	ldr	r1, [r7, #252]
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #68]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #76]
	mov	r0, r3
	ldr	r1, [r7, #252]
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #76]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #184]
	mov	r0, r3
	ldr	r1, [r7, #252]
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #184]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #188]
	mov	r0, r3
	ldr	r1, [r7, #248]
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #188]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #192]
	mov	r0, r3
	ldr	r1, [r7, #252]
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #192]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #196]
	mov	r0, r3
	ldr	r1, [r7, #248]
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #196]
.L294:
	movs	r3, #0
	str	r3, [r7, #148]
	b	.L267
.L279:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #160]
	cmp	r3, #0
	beq	.L295
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #160]
	ldrb	r3, [r3, #616]	@ zero_extendqisi2
	b	.L296
.L295:
	movs	r3, #0
.L296:
	strb	r3, [r7, #215]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #160]
	cmp	r3, #0
	beq	.L297
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #160]
	ldrb	r3, [r3, #608]	@ zero_extendqisi2
	b	.L298
.L297:
	movs	r3, #0
.L298:
	strb	r3, [r7, #214]
	ldrb	r3, [r7, #215]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L299
	ldrb	r3, [r7, #214]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L299
	movs	r3, #1
	b	.L300
.L299:
	movs	r3, #0
.L300:
	strb	r3, [r7, #213]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	subs	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #68]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #68]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #56]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #76]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #80]
	ldrb	r3, [r7, #213]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L301
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #56]
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	b	.L302
.L301:
	movs	r3, #0
.L302:
	ldr	r2, [r7, #12]
	str	r3, [r2, #184]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #48]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #176]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #188]
	ldrb	r3, [r7, #213]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L303
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #56]
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	b	.L304
.L303:
	movs	r3, #0
.L304:
	ldr	r2, [r7, #12]
	str	r3, [r2, #192]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #188]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #180]
	subs	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #196]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	tt_get_metrics_incr_overrides(PLT)
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #32]
	sxth	r3, r3
	cmp	r3, #0
	ble	.L305
	ldr	r3, [r7, #220]
	ldr	r3, [r3, #524]
	ldr	r0, [r7, #12]
	blx	r3
	mov	r3, r0
	str	r3, [r7, #148]
	ldr	r3, [r7, #148]
	cmp	r3, #0
	beq	.L306
	b	.L267
.L306:
	ldr	r3, [r7, #220]
	ldr	r3, [r3, #516]
	ldr	r0, [r7, #12]
	blx	r3
	movs	r3, #0
	strb	r3, [r7, #243]
	ldr	r0, [r7, #12]
	bl	TT_Process_Simple_Glyph(PLT)
	mov	r3, r0
	str	r3, [r7, #148]
	ldr	r3, [r7, #148]
	cmp	r3, #0
	beq	.L307
	b	.L267
.L307:
	ldr	r0, [r7, #216]
	bl	FT_GlyphLoader_Add(PLT)
	b	.L267
.L305:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #32]
	sxth	r3, r3
	cmp	r3, #-1
	bne	.L308
	ldr	r3, [r7, #220]
	ldr	r3, [r3, #100]
	str	r3, [r7, #208]
	ldr	r3, [r7, #12]
	add	r2, r3, #208
	ldr	r3, [r7, #8]
	mov	r0, r2
	mov	r1, r3
	bl	FT_List_Find(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L309
	movs	r3, #21
	str	r3, [r7, #148]
	b	.L267
.L309:
	movs	r3, #0
	str	r3, [r7, #204]
	add	r3, r7, #148
	ldr	r0, [r7, #208]
	movs	r1, #12
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	str	r0, [r7, #204]
	ldr	r3, [r7, #148]
	cmp	r3, #0
	beq	.L310
	b	.L267
.L310:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #204]
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	adds	r3, r3, #208
	mov	r0, r3
	ldr	r1, [r7, #204]
	bl	FT_List_Add(PLT)
	ldr	r3, [r7, #216]
	ldrh	r3, [r3, #22]
	sxth	r3, r3
	str	r3, [r7, #200]
	ldr	r3, [r7, #216]
	ldrh	r3, [r3, #20]
	sxth	r3, r3
	str	r3, [r7, #196]
	ldr	r3, [r7, #220]
	ldr	r3, [r3, #528]
	ldr	r0, [r7, #12]
	blx	r3
	mov	r3, r0
	str	r3, [r7, #148]
	ldr	r3, [r7, #148]
	cmp	r3, #0
	beq	.L311
	b	.L267
.L311:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #168]
	str	r3, [r7, #192]
	ldr	r3, [r7, #220]
	ldr	r3, [r3, #516]
	ldr	r0, [r7, #12]
	blx	r3
	movs	r3, #0
	strb	r3, [r7, #243]
	ldr	r3, [r7, #220]
	ldrb	r3, [r3, #672]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L312
	movs	r3, #0
	str	r3, [r7, #188]
	movs	r3, #0
	str	r3, [r7, #184]
	movs	r3, #0
	str	r3, [r7, #180]
	ldr	r3, [r7, #216]
	ldr	r3, [r3, #84]
	strh	r3, [r7, #178]	@ movhi
	ldr	r3, [r7, #216]
	ldr	r3, [r3, #84]
	uxth	r3, r3
	adds	r3, r3, #4
	uxth	r3, r3
	uxth	r3, r3
	strh	r3, [r7, #50]	@ movhi
	ldrh	r3, [r7, #50]
	strh	r3, [r7, #48]	@ movhi
	ldrh	r3, [r7, #50]
	sxth	r3, r3
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #148
	str	r2, [sp, #4]
	ldr	r0, [r7, #208]
	movs	r1, #8
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	str	r0, [r7, #188]
	ldr	r3, [r7, #148]
	cmp	r3, #0
	bne	.L313
	ldrh	r3, [r7, #50]
	sxth	r3, r3
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #148
	str	r2, [sp, #4]
	ldr	r0, [r7, #208]
	movs	r1, #1
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	str	r0, [r7, #184]
	ldr	r3, [r7, #148]
	cmp	r3, #0
	bne	.L313
	ldrh	r3, [r7, #50]
	sxth	r3, r3
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #148
	str	r2, [sp, #4]
	ldr	r0, [r7, #208]
	movs	r1, #2
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	str	r0, [r7, #180]
	ldr	r3, [r7, #148]
	cmp	r3, #0
	bne	.L313
	ldr	r3, [r7, #216]
	ldr	r3, [r3, #88]
	str	r3, [r7, #236]
	movs	r3, #0
	strh	r3, [r7, #240]	@ movhi
	b	.L314
.L315:
	ldrsh	r3, [r7, #240]
	lsls	r3, r3, #3
	ldr	r2, [r7, #188]
	add	r3, r3, r2
	ldr	r2, [r7, #236]
	ldr	r2, [r2, #8]
	str	r2, [r3]
	ldrsh	r3, [r7, #240]
	lsls	r3, r3, #3
	ldr	r2, [r7, #188]
	add	r3, r3, r2
	ldr	r2, [r7, #236]
	ldr	r2, [r2, #12]
	str	r2, [r3, #4]
	ldrsh	r3, [r7, #240]
	ldr	r2, [r7, #184]
	add	r3, r3, r2
	movs	r2, #1
	strb	r2, [r3]
	ldrsh	r3, [r7, #240]
	lsls	r3, r3, #1
	ldr	r2, [r7, #180]
	add	r3, r3, r2
	ldrh	r2, [r7, #240]	@ movhi
	strh	r2, [r3]	@ movhi
	ldrh	r3, [r7, #240]
	adds	r3, r3, #1
	strh	r3, [r7, #240]	@ movhi
	ldr	r3, [r7, #236]
	adds	r3, r3, #32
	str	r3, [r7, #236]
.L314:
	ldrsh	r2, [r7, #240]
	ldrsh	r3, [r7, #178]
	cmp	r2, r3
	blt	.L315
	ldrsh	r3, [r7, #240]
	lsls	r3, r3, #3
	ldr	r2, [r7, #188]
	add	r3, r3, r2
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #68]
	str	r2, [r3]
	ldrsh	r3, [r7, #240]
	lsls	r3, r3, #3
	ldr	r2, [r7, #188]
	add	r3, r3, r2
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #72]
	str	r2, [r3, #4]
	ldrsh	r3, [r7, #240]
	ldr	r2, [r7, #184]
	add	r3, r3, r2
	movs	r2, #1
	strb	r2, [r3]
	ldrsh	r3, [r7, #240]
	lsls	r3, r3, #1
	ldr	r2, [r7, #180]
	add	r3, r3, r2
	ldrh	r2, [r7, #240]	@ movhi
	strh	r2, [r3]	@ movhi
	ldrh	r3, [r7, #240]
	adds	r3, r3, #1
	strh	r3, [r7, #240]	@ movhi
	ldrsh	r3, [r7, #240]
	lsls	r3, r3, #3
	ldr	r2, [r7, #188]
	add	r3, r3, r2
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #76]
	str	r2, [r3]
	ldrsh	r3, [r7, #240]
	lsls	r3, r3, #3
	ldr	r2, [r7, #188]
	add	r3, r3, r2
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #80]
	str	r2, [r3, #4]
	ldrsh	r3, [r7, #240]
	ldr	r2, [r7, #184]
	add	r3, r3, r2
	movs	r2, #1
	strb	r2, [r3]
	ldrsh	r3, [r7, #240]
	lsls	r3, r3, #1
	ldr	r2, [r7, #180]
	add	r3, r3, r2
	ldrh	r2, [r7, #240]	@ movhi
	strh	r2, [r3]	@ movhi
	ldrh	r3, [r7, #240]
	adds	r3, r3, #1
	strh	r3, [r7, #240]	@ movhi
	ldrsh	r3, [r7, #240]
	lsls	r3, r3, #3
	ldr	r2, [r7, #188]
	add	r3, r3, r2
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #184]
	str	r2, [r3]
	ldrsh	r3, [r7, #240]
	lsls	r3, r3, #3
	ldr	r2, [r7, #188]
	add	r3, r3, r2
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #188]
	str	r2, [r3, #4]
	ldrsh	r3, [r7, #240]
	ldr	r2, [r7, #184]
	add	r3, r3, r2
	movs	r2, #1
	strb	r2, [r3]
	ldrsh	r3, [r7, #240]
	lsls	r3, r3, #1
	ldr	r2, [r7, #180]
	add	r3, r3, r2
	ldrh	r2, [r7, #240]	@ movhi
	strh	r2, [r3]	@ movhi
	ldrh	r3, [r7, #240]
	adds	r3, r3, #1
	strh	r3, [r7, #240]	@ movhi
	ldrsh	r3, [r7, #240]
	lsls	r3, r3, #3
	ldr	r2, [r7, #188]
	add	r3, r3, r2
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #192]
	str	r2, [r3]
	ldrsh	r3, [r7, #240]
	lsls	r3, r3, #3
	ldr	r2, [r7, #188]
	add	r3, r3, r2
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #196]
	str	r2, [r3, #4]
	ldrsh	r3, [r7, #240]
	ldr	r2, [r7, #184]
	add	r3, r3, r2
	movs	r2, #1
	strb	r2, [r3]
	ldrsh	r3, [r7, #240]
	lsls	r3, r3, #1
	ldr	r2, [r7, #180]
	add	r3, r3, r2
	ldrh	r2, [r7, #240]	@ movhi
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #188]
	str	r3, [r7, #52]
	ldr	r3, [r7, #184]
	str	r3, [r7, #56]
	ldr	r3, [r7, #180]
	str	r3, [r7, #60]
	ldrh	r3, [r7, #50]
	sxth	r3, r3
	add	r2, r7, #48
	ldr	r0, [r7, #220]
	ldr	r1, [r7, #8]
	bl	TT_Vary_Apply_Glyph_Deltas(PLT)
	mov	r3, r0
	str	r3, [r7, #148]
	ldr	r3, [r7, #148]
	cmp	r3, #0
	beq	.L316
	b	.L313
.L316:
	ldr	r3, [r7, #216]
	ldr	r3, [r3, #88]
	str	r3, [r7, #236]
	movs	r3, #0
	strh	r3, [r7, #240]	@ movhi
	b	.L317
.L318:
	ldrsh	r3, [r7, #240]
	lsls	r3, r3, #3
	ldr	r2, [r7, #188]
	add	r3, r3, r2
	ldr	r3, [r3]
	uxth	r3, r3
	sxth	r2, r3
	ldr	r3, [r7, #236]
	str	r2, [r3, #8]
	ldrsh	r3, [r7, #240]
	lsls	r3, r3, #3
	ldr	r2, [r7, #188]
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	uxth	r3, r3
	sxth	r2, r3
	ldr	r3, [r7, #236]
	str	r2, [r3, #12]
	ldrh	r3, [r7, #240]
	adds	r3, r3, #1
	strh	r3, [r7, #240]	@ movhi
	ldr	r3, [r7, #236]
	adds	r3, r3, #32
	str	r3, [r7, #236]
.L317:
	ldrsh	r2, [r7, #240]
	ldrsh	r3, [r7, #178]
	cmp	r2, r3
	blt	.L318
	ldrsh	r3, [r7, #240]
	lsls	r3, r3, #3
	ldr	r2, [r7, #188]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	str	r2, [r3, #68]
	ldrsh	r3, [r7, #240]
	lsls	r3, r3, #3
	ldr	r2, [r7, #188]
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	str	r2, [r3, #72]
	ldrsh	r3, [r7, #240]
	adds	r3, r3, #1
	lsls	r3, r3, #3
	ldr	r2, [r7, #188]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	str	r2, [r3, #76]
	ldrsh	r3, [r7, #240]
	adds	r3, r3, #1
	lsls	r3, r3, #3
	ldr	r2, [r7, #188]
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	str	r2, [r3, #80]
	ldrsh	r3, [r7, #240]
	adds	r3, r3, #2
	lsls	r3, r3, #3
	ldr	r2, [r7, #188]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	str	r2, [r3, #184]
	ldrsh	r3, [r7, #240]
	adds	r3, r3, #2
	lsls	r3, r3, #3
	ldr	r2, [r7, #188]
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	str	r2, [r3, #188]
	ldrsh	r3, [r7, #240]
	adds	r3, r3, #3
	lsls	r3, r3, #3
	ldr	r2, [r7, #188]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	str	r2, [r3, #192]
	ldrsh	r3, [r7, #240]
	adds	r3, r3, #3
	lsls	r3, r3, #3
	ldr	r2, [r7, #188]
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	str	r2, [r3, #196]
.L313:
	ldr	r3, [r7, #52]
	ldr	r0, [r7, #208]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #52]
	ldr	r3, [r7, #56]
	ldr	r0, [r7, #208]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #56]
	ldr	r3, [r7, #60]
	ldr	r0, [r7, #208]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #60]
	ldr	r3, [r7, #148]
	cmp	r3, #0
	bne	.L267
.L312:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L320
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #68]
	mov	r0, r3
	ldr	r1, [r7, #252]
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #68]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #76]
	mov	r0, r3
	ldr	r1, [r7, #252]
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #76]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #184]
	mov	r0, r3
	ldr	r1, [r7, #252]
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #184]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #188]
	mov	r0, r3
	ldr	r1, [r7, #248]
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #188]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #192]
	mov	r0, r3
	ldr	r1, [r7, #252]
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #192]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #196]
	mov	r0, r3
	ldr	r1, [r7, #248]
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #196]
.L320:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	and	r3, r3, #1024
	cmp	r3, #0
	beq	.L321
	ldr	r0, [r7, #216]
	bl	FT_GlyphLoader_Add(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	movw	r3, #28016
	movt	r3, 25455
	str	r3, [r2, #72]
	b	.L267
.L321:
	movs	r3, #0
	str	r3, [r7, #228]
	ldr	r3, [r7, #200]
	str	r3, [r7, #224]
	ldr	r3, [r7, #216]
	ldr	r3, [r3, #84]
	str	r3, [r7, #172]
	ldr	r3, [r7, #216]
	ldr	r3, [r3, #48]
	str	r3, [r7, #168]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	str	r3, [r7, #164]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	str	r3, [r7, #160]
	ldr	r0, [r7, #216]
	bl	FT_GlyphLoader_Add(PLT)
	movs	r3, #0
	str	r3, [r7, #232]
	b	.L322
.L329:
	ldr	r3, [r7, #216]
	ldr	r2, [r3, #52]
	ldr	r1, [r7, #168]
	ldr	r3, [r7, #232]
	add	r3, r3, r1
	lsls	r3, r3, #5
	add	r3, r3, r2
	str	r3, [r7, #228]
	ldr	r2, [r7, #12]
	add	r3, r7, #16
	adds	r2, r2, #68
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r2, [r7, #12]
	add	r3, r7, #24
	adds	r2, r2, #76
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r2, [r7, #12]
	add	r3, r7, #32
	adds	r2, r2, #184
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r2, [r7, #12]
	add	r3, r7, #40
	adds	r2, r2, #192
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #216]
	ldrh	r3, [r3, #22]
	sxth	r3, r3
	str	r3, [r7, #156]
	ldr	r3, [r7, #228]
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	movs	r3, #0
	bl	load_truetype_glyph(PLT)
	mov	r3, r0
	str	r3, [r7, #148]
	ldr	r3, [r7, #148]
	cmp	r3, #0
	beq	.L323
	b	.L267
.L323:
	ldr	r3, [r7, #216]
	ldr	r2, [r3, #52]
	ldr	r1, [r7, #168]
	ldr	r3, [r7, #232]
	add	r3, r3, r1
	lsls	r3, r3, #5
	add	r3, r3, r2
	str	r3, [r7, #228]
	ldr	r3, [r7, #228]
	ldrh	r3, [r3, #4]
	and	r3, r3, #512
	cmp	r3, #0
	bne	.L325
	ldr	r3, [r7, #12]
	adds	r3, r3, #68
	add	r2, r7, #16
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #12]
	adds	r3, r3, #76
	add	r2, r7, #24
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #12]
	adds	r3, r3, #184
	add	r2, r7, #32
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #12]
	adds	r3, r3, #192
	add	r2, r7, #40
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
.L325:
	ldr	r3, [r7, #216]
	ldrh	r3, [r3, #22]
	sxth	r3, r3
	str	r3, [r7, #224]
	ldr	r2, [r7, #224]
	ldr	r3, [r7, #156]
	cmp	r2, r3
	beq	.L327
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #228]
	ldr	r2, [r7, #200]
	ldr	r3, [r7, #156]
	bl	TT_Process_Composite_Component(PLT)
	mov	r3, r0
	str	r3, [r7, #148]
	ldr	r3, [r7, #148]
	cmp	r3, #0
	beq	.L327
	nop
	b	.L267
.L327:
	ldr	r3, [r7, #232]
	adds	r3, r3, #1
	str	r3, [r7, #232]
.L322:
	ldr	r2, [r7, #232]
	ldr	r3, [r7, #172]
	cmp	r2, r3
	bcc	.L329
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #164]
	str	r2, [r3, #24]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #160]
	str	r2, [r3, #28]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #192]
	str	r2, [r3, #168]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	and	r3, r3, #2
	cmp	r3, #0
	bne	.L330
	ldr	r3, [r7, #228]
	ldrh	r3, [r3, #4]
	and	r3, r3, #256
	cmp	r3, #0
	beq	.L330
	ldr	r2, [r7, #224]
	ldr	r3, [r7, #200]
	cmp	r2, r3
	bls	.L330
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #200]
	ldr	r2, [r7, #196]
	bl	TT_Process_Composite_Glyph(PLT)
	mov	r3, r0
	str	r3, [r7, #148]
	ldr	r3, [r7, #148]
	cmp	r3, #0
	beq	.L330
	b	.L267
.L330:
	b	.L267
.L308:
	movs	r3, #20
	str	r3, [r7, #148]
	nop
.L267:
	ldrb	r3, [r7, #243]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L331
	ldr	r3, [r7, #220]
	ldr	r3, [r3, #516]
	ldr	r0, [r7, #12]
	blx	r3
.L331:
	ldrb	r3, [r7, #242]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L332
	ldr	r3, [r7, #220]
	ldr	r3, [r3, #128]
	ldr	r3, [r3, #48]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #220]
	ldr	r2, [r2, #128]
	ldr	r2, [r2, #48]
	ldr	r1, [r2, #4]
	add	r2, r7, #100
	mov	r0, r1
	mov	r1, r2
	blx	r3
.L332:
	ldr	r3, [r7, #148]
	mov	r0, r3
	add	r7, r7, #260
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L335:
	.align	2
.L334:
	.word	.LC0-(.LPIC9+4)
	.word	.LC1-(.LPIC10+4)
	.size	load_truetype_glyph, .-load_truetype_glyph
	.section	.text.compute_glyph_metrics,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	compute_glyph_metrics, %function
compute_glyph_metrics:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #92
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #72]
	ldr	r3, [r7, #72]
	ldr	r3, [r3, #96]
	str	r3, [r7, #68]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	str	r3, [r7, #64]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #60]
	mov	r3, #65536
	str	r3, [r7, #84]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L337
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #20]
	str	r3, [r7, #84]
.L337:
	ldr	r3, [r7, #64]
	ldr	r2, [r3, #72]
	movw	r3, #28016
	movt	r3, 25455
	cmp	r2, r3
	beq	.L338
	ldr	r3, [r7, #64]
	add	r2, r3, #108
	add	r3, r7, #24
	mov	r0, r2
	mov	r1, r3
	bl	FT_Outline_Get_CBox(PLT)
	b	.L339
.L338:
	ldr	r3, [r7, #4]
	add	r4, r7, #24
	adds	r3, r3, #36
	ldmia	r3, {r0, r1, r2, r3}
	stmia	r4, {r0, r1, r2, r3}
.L339:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #60]
	ldr	r3, [r7, #64]
	str	r2, [r3, #56]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #64]
	str	r2, [r3, #32]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #64]
	str	r2, [r3, #36]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #76]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #68]
	subs	r2, r2, r3
	ldr	r3, [r7, #64]
	str	r2, [r3, #40]
	ldr	r3, [r7, #72]
	ldr	r3, [r3, #480]
	cmp	r3, #0
	bne	.L340
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	and	r3, r3, #2
	cmp	r3, #0
	bne	.L340
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	and	r3, r3, #2097152
	cmp	r3, #0
	bne	.L340
	ldr	r3, [r7, #60]
	ldrh	r3, [r3, #12]
	ldr	r0, [r7, #72]
	mov	r1, r3
	ldr	r2, [r7]
	bl	tt_face_get_device_metrics(PLT)
	str	r0, [r7, #56]
	ldr	r3, [r7, #68]
	ldr	r3, [r3, #64]
	cmp	r3, #38
	bne	.L341
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	lsrs	r3, r3, #16
	and	r3, r3, #15
	cmp	r3, #2
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	strb	r3, [r7, #55]
	ldr	r3, [r7, #56]
	cmp	r3, #0
	beq	.L342
	ldrb	r3, [r7, #55]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L343
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	ldrb	r3, [r3, #618]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L344
.L343:
	ldrb	r3, [r7, #55]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L342
.L344:
	ldr	r3, [r7, #56]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #6
	ldr	r3, [r7, #64]
	str	r2, [r3, #40]
	b	.L340
.L342:
	b	.L340
.L341:
	ldr	r3, [r7, #56]
	cmp	r3, #0
	beq	.L340
	ldr	r3, [r7, #56]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #6
	ldr	r3, [r7, #64]
	str	r2, [r3, #40]
.L340:
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #24]
	subs	r2, r2, r3
	ldr	r3, [r7, #64]
	str	r2, [r3, #24]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #28]
	subs	r2, r2, r3
	ldr	r3, [r7, #64]
	str	r2, [r3, #28]
	ldr	r3, [r7, #72]
	ldrb	r3, [r3, #292]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L345
	ldr	r3, [r7, #72]
	ldrh	r3, [r3, #330]
	cmp	r3, #0
	beq	.L345
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #188]
	ldr	r3, [r7, #36]
	subs	r3, r2, r3
	mov	r0, r3
	ldr	r1, [r7, #84]
	bl	FT_DivFix(PLT)
	mov	r3, r0
	uxth	r3, r3
	sxth	r3, r3
	str	r3, [r7, #80]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #188]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #196]
	cmp	r2, r3
	bgt	.L346
	movs	r3, #0
	str	r3, [r7, #76]
	b	.L348
.L346:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #188]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #196]
	subs	r3, r2, r3
	mov	r0, r3
	ldr	r1, [r7, #84]
	bl	FT_DivFix(PLT)
	mov	r3, r0
	uxth	r3, r3
	str	r3, [r7, #76]
	b	.L348
.L345:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #28]
	subs	r3, r2, r3
	mov	r0, r3
	ldr	r1, [r7, #84]
	bl	FT_DivFix(PLT)
	mov	r3, r0
	uxth	r3, r3
	sxth	r3, r3
	str	r3, [r7, #48]
	ldr	r3, [r7, #72]
	ldrh	r2, [r3, #364]
	movw	r3, #65535
	cmp	r2, r3
	beq	.L349
	ldr	r3, [r7, #72]
	ldrh	r3, [r3, #434]
	sxth	r2, r3
	ldr	r3, [r7, #72]
	ldrh	r3, [r3, #436]
	sxth	r3, r3
	subs	r3, r2, r3
	str	r3, [r7, #76]
	b	.L350
.L349:
	ldr	r3, [r7, #72]
	ldrh	r3, [r3, #220]
	sxth	r2, r3
	ldr	r3, [r7, #72]
	ldrh	r3, [r3, #222]
	sxth	r3, r3
	subs	r3, r2, r3
	str	r3, [r7, #76]
.L350:
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #48]
	subs	r3, r2, r3
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	str	r3, [r7, #80]
.L348:
	ldr	r3, [r7, #72]
	ldr	r3, [r3, #128]
	ldr	r3, [r3, #48]
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L351
	ldr	r3, [r7, #44]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L351
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, [r7, #80]
	str	r3, [r7, #12]
	ldr	r3, [r7, #76]
	str	r3, [r7, #16]
	ldr	r3, [r7, #44]
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #4]
	add	r3, r7, #8
	mov	r0, r2
	ldr	r1, [r7]
	movs	r2, #1
	blx	r4
	str	r0, [r7, #40]
	ldr	r3, [r7, #40]
	cmp	r3, #0
	beq	.L352
	ldr	r3, [r7, #40]
	b	.L355
.L352:
	ldr	r3, [r7, #12]
	str	r3, [r7, #80]
	ldr	r3, [r7, #16]
	str	r3, [r7, #76]
.L351:
	ldr	r3, [r7, #64]
	ldr	r2, [r7, #76]
	str	r2, [r3, #60]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L354
	ldr	r0, [r7, #80]
	ldr	r1, [r7, #84]
	bl	FT_MulFix_arm(PLT)
	str	r0, [r7, #80]
	ldr	r0, [r7, #76]
	ldr	r1, [r7, #84]
	bl	FT_MulFix_arm(PLT)
	str	r0, [r7, #76]
.L354:
	ldr	r3, [r7, #64]
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #40]
	lsrs	r1, r3, #31
	add	r3, r3, r1
	asrs	r3, r3, #1
	subs	r2, r2, r3
	ldr	r3, [r7, #64]
	str	r2, [r3, #44]
	ldr	r3, [r7, #64]
	ldr	r2, [r7, #80]
	str	r2, [r3, #48]
	ldr	r3, [r7, #64]
	ldr	r2, [r7, #76]
	str	r2, [r3, #52]
	movs	r3, #0
.L355:
	mov	r0, r3
	adds	r7, r7, #92
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	compute_glyph_metrics, .-compute_glyph_metrics
	.section	.text.load_sbit_image,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	load_sbit_image, %function
load_sbit_image:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #68
	add	r7, sp, #16
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #532]
	str	r3, [r7, #40]
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #104]
	str	r3, [r7, #36]
	ldr	r3, [r7, #40]
	ldr	r4, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #112]
	ldr	r3, [r7]
	ldr	r1, [r7, #8]
	adds	r1, r1, #76
	ldr	r0, [r7, #36]
	str	r0, [sp]
	str	r1, [sp, #4]
	add	r1, r7, #16
	str	r1, [sp, #8]
	ldr	r0, [r7, #44]
	mov	r1, r2
	ldr	r2, [r7, #4]
	blx	r4
	str	r0, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bne	.L357
	ldr	r3, [r7, #8]
	movs	r2, #0
	strh	r2, [r3, #110]	@ movhi
	ldr	r3, [r7, #8]
	movs	r2, #0
	strh	r2, [r3, #108]	@ movhi
	ldrh	r3, [r7, #18]
	lsls	r2, r3, #6
	ldr	r3, [r7, #8]
	str	r2, [r3, #24]
	ldrh	r3, [r7, #16]
	lsls	r2, r3, #6
	ldr	r3, [r7, #8]
	str	r2, [r3, #28]
	ldrh	r3, [r7, #20]
	sxth	r3, r3
	lsls	r2, r3, #6
	ldr	r3, [r7, #8]
	str	r2, [r3, #32]
	ldrh	r3, [r7, #22]
	sxth	r3, r3
	lsls	r2, r3, #6
	ldr	r3, [r7, #8]
	str	r2, [r3, #36]
	ldrh	r3, [r7, #24]
	lsls	r2, r3, #6
	ldr	r3, [r7, #8]
	str	r2, [r3, #40]
	ldrh	r3, [r7, #26]
	sxth	r3, r3
	lsls	r2, r3, #6
	ldr	r3, [r7, #8]
	str	r2, [r3, #44]
	ldrh	r3, [r7, #28]
	sxth	r3, r3
	lsls	r2, r3, #6
	ldr	r3, [r7, #8]
	str	r2, [r3, #48]
	ldrh	r3, [r7, #30]
	lsls	r2, r3, #6
	ldr	r3, [r7, #8]
	str	r2, [r3, #52]
	ldr	r2, [r7, #8]
	movw	r3, #29811
	movt	r3, 25193
	str	r3, [r2, #72]
	ldr	r3, [r7]
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L358
	ldrh	r3, [r7, #26]
	sxth	r2, r3
	ldr	r3, [r7, #8]
	str	r2, [r3, #100]
	ldrh	r3, [r7, #28]
	sxth	r2, r3
	ldr	r3, [r7, #8]
	str	r2, [r3, #104]
	b	.L357
.L358:
	ldrh	r3, [r7, #20]
	sxth	r2, r3
	ldr	r3, [r7, #8]
	str	r2, [r3, #100]
	ldrh	r3, [r7, #22]
	sxth	r2, r3
	ldr	r3, [r7, #8]
	str	r2, [r3, #104]
.L357:
	ldr	r3, [r7, #32]
	mov	r0, r3
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	load_sbit_image, .-load_sbit_image
	.section	.text.tt_loader_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_loader_init, %function
tt_loader_init:
	@ args = 4, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #56
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r4, .L394
.LPIC11:
	add	r4, pc
	ldr	r3, [r7]
	uxtb	r3, r3
	bic	r3, r3, #127
	strb	r3, [r7, #47]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #104]
	str	r3, [r7, #36]
	ldr	r0, [r7, #12]
	movs	r1, #0
	movs	r2, #216
	bl	memset(PLT)
	ldr	r3, [r7]
	and	r3, r3, #2
	cmp	r3, #0
	bne	.L361
	ldrb	r3, [r7, #72]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L361
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #96]
	str	r3, [r7, #32]
	movs	r3, #0
	strb	r3, [r7, #54]
	movs	r3, #0
	strb	r3, [r7, #53]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #296]
	cmp	r3, #0
	blt	.L362
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #300]
	cmp	r3, #0
	bge	.L363
.L362:
	ldrb	r3, [r7, #47]	@ zero_extendqisi2
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	tt_size_ready_bytecode(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L364
	ldr	r3, [r7, #28]
	b	.L365
.L364:
	b	.L366
.L363:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #296]
	cmp	r3, #0
	beq	.L367
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #296]
	b	.L365
.L367:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #300]
	cmp	r3, #0
	beq	.L366
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #300]
	b	.L365
.L366:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #292]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L368
	movs	r3, #153
	b	.L365
.L368:
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #64]
	cmp	r3, #38
	bne	.L369
	ldr	r3, [r7]
	asrs	r3, r3, #16
	and	r3, r3, #15
	cmp	r3, #2
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	strb	r3, [r7, #54]
	ldrb	r3, [r7, #54]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L370
	movs	r3, #0
	strb	r3, [r7, #55]
	b	.L371
.L370:
	movs	r3, #0
	strb	r3, [r7, #55]
.L371:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #8]
	and	r3, r3, #8192
	cmp	r3, #0
	beq	.L372
	movs	r3, #0
	strb	r3, [r7, #54]
.L372:
	ldrb	r3, [r7, #54]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L373
	ldrb	r3, [r7, #55]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L374
.L373:
	movs	r3, #1
	b	.L375
.L374:
	movs	r3, #0
.L375:
	uxtb	r2, r3
	ldr	r3, [r7, #24]
	strb	r2, [r3, #617]
	ldr	r3, [r7, #24]
	movs	r2, #38
	str	r2, [r3, #624]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #632]
	and	r3, r3, #8192
	cmp	r3, #0
	beq	.L376
	ldr	r3, [r7, #24]
	movs	r2, #35
	str	r2, [r3, #624]
.L376:
	ldr	r3, [r7, #24]
	movs	r2, #0
	strb	r2, [r3, #618]
	ldr	r3, [r7, #24]
	movs	r2, #1
	strb	r2, [r3, #619]
	ldr	r3, [r7, #24]
	movs	r2, #0
	strb	r2, [r3, #620]
	ldr	r3, [r7, #24]
	movs	r2, #0
	strb	r2, [r3, #621]
	ldr	r3, [r7, #24]
	movs	r2, #1
	strb	r2, [r3, #622]
	ldr	r3, [r7, #24]
	movs	r2, #0
	strb	r2, [r3, #623]
	b	.L377
.L369:
	ldr	r3, [r7]
	asrs	r3, r3, #16
	and	r3, r3, #15
	cmp	r3, #2
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	strb	r3, [r7, #55]
.L377:
	ldr	r0, [r7, #24]
	ldr	r1, [r7, #40]
	ldr	r2, [r7, #8]
	bl	TT_Load_Context(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L378
	ldr	r3, [r7, #28]
	b	.L365
.L378:
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #64]
	cmp	r3, #38
	bne	.L379
	ldr	r3, [r7, #24]
	ldrb	r3, [r3, #616]	@ zero_extendqisi2
	ldrb	r2, [r7, #54]	@ zero_extendqisi2
	cmp	r2, r3
	beq	.L380
	ldr	r3, [r7, #24]
	ldrb	r2, [r7, #54]
	strb	r2, [r3, #616]
	movs	r3, #1
	strb	r3, [r7, #53]
.L380:
	ldr	r3, [r7, #24]
	ldrb	r3, [r3, #608]	@ zero_extendqisi2
	ldrb	r2, [r7, #55]	@ zero_extendqisi2
	cmp	r2, r3
	beq	.L382
	ldr	r3, [r7, #24]
	ldrb	r2, [r7, #55]
	strb	r2, [r3, #608]
	movs	r3, #1
	strb	r3, [r7, #53]
	b	.L382
.L379:
	ldr	r3, [r7, #24]
	ldrb	r3, [r3, #608]	@ zero_extendqisi2
	ldrb	r2, [r7, #55]	@ zero_extendqisi2
	cmp	r2, r3
	beq	.L382
	ldr	r3, [r7, #24]
	ldrb	r2, [r7, #55]
	strb	r2, [r3, #608]
	movs	r3, #1
	strb	r3, [r7, #53]
.L382:
	ldrb	r3, [r7, #53]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L383
	movs	r3, #0
	str	r3, [r7, #48]
	b	.L384
.L385:
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #244]
	ldr	r3, [r7, #48]
	lsls	r3, r3, #2
	adds	r5, r2, r3
	ldr	r3, [r7, #40]
	ldr	r2, [r3, #648]
	ldr	r3, [r7, #48]
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r3, [r3]
	sxth	r2, r3
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #88]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r3, r0
	str	r3, [r5]
	ldr	r3, [r7, #48]
	adds	r3, r3, #1
	str	r3, [r7, #48]
.L384:
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #240]
	ldr	r3, [r7, #48]
	cmp	r2, r3
	bhi	.L385
	ldrb	r3, [r7, #47]	@ zero_extendqisi2
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	tt_size_run_prep(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L383
	ldr	r3, [r7, #28]
	b	.L365
.L383:
	ldr	r3, [r7, #24]
	ldrb	r3, [r3, #336]	@ zero_extendqisi2
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L386
	ldr	r3, [r7]
	orr	r3, r3, #2
	str	r3, [r7]
.L386:
	ldr	r3, [r7, #24]
	ldrb	r3, [r3, #336]	@ zero_extendqisi2
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L387
	ldr	r2, [r7, #24]
	ldr	r3, .L394+4
	ldr	r3, [r4, r3]
	add	r1, r2, #284
	mov	r2, r3
	movs	r3, #68
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	memcpy(PLT)
.L387:
	ldr	r3, [r7, #24]
	ldrb	r3, [r3, #336]	@ zero_extendqisi2
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L388
	ldr	r3, [r7, #24]
	movs	r2, #0
	strb	r2, [r3, #617]
.L388:
	ldr	r3, [r7]
	uxtb	r3, r3
	bic	r3, r3, #127
	uxtb	r2, r3
	ldr	r3, [r7, #24]
	strb	r2, [r3, #561]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #24]
	str	r2, [r3, #160]
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #392]
	ldr	r3, [r7, #12]
	str	r2, [r3, #164]
.L361:
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #128]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L389
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #84]
	b	.L390
.L389:
	ldr	r3, [r7, #40]
	ldr	r4, [r3, #508]
	ldr	r0, [r7, #40]
	movw	r1, #31078
	movt	r1, 26476
	ldr	r2, [r7, #36]
	movs	r3, #0
	blx	r4
	str	r0, [r7, #28]
	ldr	r3, [r7, #28]
	uxtb	r3, r3
	cmp	r3, #142
	bne	.L391
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #84]
	b	.L390
.L391:
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L392
	ldr	r3, [r7, #28]
	b	.L365
.L392:
	ldr	r0, [r7, #36]
	bl	FT_Stream_Pos(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #84]
.L390:
	ldrb	r3, [r7, #72]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L393
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #156]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r0, [r7, #20]
	bl	FT_GlyphLoader_Rewind(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #20]
	str	r2, [r3, #12]
.L393:
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	str	r2, [r3, #16]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #40]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #36]
	str	r2, [r3, #24]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #208]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #212]
	movs	r3, #0
.L365:
	mov	r0, r3
	adds	r7, r7, #56
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L395:
	.align	2
.L394:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC11+4)
	.word	tt_default_graphics_state(GOT)
	.size	tt_loader_init, .-tt_loader_init
	.section	.text.tt_loader_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_loader_done, %function
tt_loader_done:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	add	r2, r3, #208
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #100]
	mov	r0, r2
	movs	r1, #0
	mov	r2, r3
	movs	r3, #0
	bl	FT_List_Finalize(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_loader_done, .-tt_loader_done
	.section	.text.TT_Load_Glyph,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	TT_Load_Glyph, %function
TT_Load_Glyph:
	@ args = 0, pretend = 0, frame = 240
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #248
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #112]
	cmp	r3, #-1
	beq	.L398
	ldr	r3, [r7]
	and	r3, r3, #8
	cmp	r3, #0
	bne	.L398
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	load_sbit_image(PLT)
	str	r0, [r7, #236]
	ldr	r3, [r7, #236]
	cmp	r3, #0
	bne	.L398
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #8]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L399
	add	r3, r7, #20
	movs	r2, #1
	str	r2, [sp]
	mov	r0, r3
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #8]
	ldr	r3, [r7]
	bl	tt_loader_init(PLT)
	add	r3, r7, #20
	mov	r0, r3
	ldr	r1, [r7, #4]
	movs	r2, #0
	movs	r3, #1
	bl	load_truetype_glyph(PLT)
	add	r3, r7, #20
	mov	r0, r3
	bl	tt_loader_done(PLT)
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #8]
	str	r2, [r3, #56]
	ldr	r2, [r7, #200]
	ldr	r3, [r7, #8]
	str	r2, [r3, #60]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #40]
	cmp	r3, #0
	bne	.L400
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #56]
	cmp	r3, #0
	beq	.L400
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #56]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #8]
	str	r2, [r3, #40]
.L400:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #52]
	cmp	r3, #0
	bne	.L399
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #60]
	cmp	r3, #0
	beq	.L399
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #20]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #8]
	str	r2, [r3, #52]
.L399:
	movs	r3, #0
	b	.L418
.L398:
	ldr	r3, [r7]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L402
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #108]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L402
	movs	r3, #36
	b	.L418
.L402:
	ldr	r3, [r7]
	and	r3, r3, #16384
	cmp	r3, #0
	beq	.L403
	movs	r3, #6
	b	.L418
.L403:
	add	r3, r7, #20
	movs	r2, #0
	str	r2, [sp]
	mov	r0, r3
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #8]
	ldr	r3, [r7]
	bl	tt_loader_init(PLT)
	str	r0, [r7, #236]
	ldr	r3, [r7, #236]
	cmp	r3, #0
	beq	.L404
	ldr	r3, [r7, #236]
	b	.L418
.L404:
	ldr	r2, [r7, #8]
	movw	r3, #29804
	movt	r3, 28533
	str	r3, [r2, #72]
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [r3, #128]
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [r3, #124]
	add	r3, r7, #20
	mov	r0, r3
	ldr	r1, [r7, #4]
	movs	r2, #0
	movs	r3, #0
	bl	load_truetype_glyph(PLT)
	str	r0, [r7, #236]
	ldr	r3, [r7, #236]
	cmp	r3, #0
	bne	.L405
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #72]
	movw	r3, #28016
	movt	r3, 25455
	cmp	r2, r3
	bne	.L406
	ldr	r3, [r7, #32]
	ldr	r2, [r3, #48]
	ldr	r3, [r7, #8]
	str	r2, [r3, #128]
	ldr	r3, [r7, #32]
	ldr	r2, [r3, #52]
	ldr	r3, [r7, #8]
	str	r2, [r3, #132]
	b	.L407
.L406:
	ldr	r3, [r7, #32]
	ldr	r2, [r7, #8]
	add	r4, r2, #108
	add	r5, r3, #20
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #124]
	bic	r2, r3, #512
	ldr	r3, [r7, #8]
	str	r2, [r3, #124]
	ldr	r3, [r7, #88]
	cmp	r3, #0
	beq	.L407
	ldr	r3, [r7, #8]
	add	r2, r3, #108
	ldr	r3, [r7, #88]
	negs	r3, r3
	mov	r0, r2
	mov	r1, r3
	movs	r2, #0
	bl	FT_Outline_Translate(PLT)
.L407:
	ldr	r3, [r7]
	and	r3, r3, #2
	cmp	r3, #0
	bne	.L408
	ldr	r3, [r7, #180]
	ldrb	r3, [r3, #337]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L409
	ldr	r3, [r7, #180]
	ldr	r3, [r3, #340]
	cmp	r3, #5
	bhi	.L410
	adr	r1, .L412
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L412:
	.word	.L411+1-.L412
	.word	.L419+1-.L412
	.word	.L410+1-.L412
	.word	.L410+1-.L412
	.word	.L414+1-.L412
	.word	.L415+1-.L412
.L411:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #124]
	orr	r2, r3, #32
	ldr	r3, [r7, #8]
	str	r2, [r3, #124]
	b	.L416
.L414:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #124]
	orr	r2, r3, #48
	ldr	r3, [r7, #8]
	str	r2, [r3, #124]
	b	.L416
.L415:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #124]
	orr	r2, r3, #16
	ldr	r3, [r7, #8]
	str	r2, [r3, #124]
	b	.L416
.L410:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #124]
	orr	r2, r3, #8
	ldr	r3, [r7, #8]
	str	r2, [r3, #124]
	b	.L416
.L419:
	nop
.L416:
	b	.L408
.L409:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #124]
	orr	r2, r3, #8
	ldr	r3, [r7, #8]
	str	r2, [r3, #124]
.L408:
	add	r3, r7, #20
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	compute_glyph_metrics(PLT)
	str	r0, [r7, #236]
.L405:
	add	r3, r7, #20
	mov	r0, r3
	bl	tt_loader_done(PLT)
	ldr	r3, [r7]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L417
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #14]
	cmp	r3, #23
	bhi	.L417
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #124]
	orr	r2, r3, #256
	ldr	r3, [r7, #8]
	str	r2, [r3, #124]
.L417:
	ldr	r3, [r7, #236]
.L418:
	mov	r0, r3
	adds	r7, r7, #240
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.size	TT_Load_Glyph, .-TT_Load_Glyph
	.section	.text.tt_glyphzone_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_glyphzone_done, %function
tt_glyphzone_done:
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
	cmp	r3, #0
	beq	.L420
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strh	r2, [r3, #8]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r2, [r3, #8]
	ldr	r3, [r7, #4]
	strh	r2, [r3, #4]	@ movhi
	ldr	r3, [r7, #4]
	movs	r2, #0
	strh	r2, [r3, #10]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r2, [r3, #10]
	ldr	r3, [r7, #4]
	strh	r2, [r3, #6]	@ movhi
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
.L420:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_glyphzone_done, .-tt_glyphzone_done
	.section	.text.tt_glyphzone_new,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_glyphzone_new, %function
tt_glyphzone_new:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r3, [r7, #4]
	mov	r3, r1	@ movhi
	strh	r3, [r7, #10]	@ movhi
	mov	r3, r2	@ movhi
	strh	r3, [r7, #8]	@ movhi
	ldr	r0, [r7, #4]
	movs	r1, #0
	movs	r2, #36
	bl	memset(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3]
	ldrh	r3, [r7, #10]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #20
	str	r2, [sp, #4]
	ldr	r0, [r7, #12]
	movs	r1, #8
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L423
	ldrh	r3, [r7, #10]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #20
	str	r2, [sp, #4]
	ldr	r0, [r7, #12]
	movs	r1, #8
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #16]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L423
	ldrh	r3, [r7, #10]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #20
	str	r2, [sp, #4]
	ldr	r0, [r7, #12]
	movs	r1, #8
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L423
	ldrh	r3, [r7, #10]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #20
	str	r2, [sp, #4]
	ldr	r0, [r7, #12]
	movs	r1, #1
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L423
	ldrsh	r3, [r7, #8]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #20
	str	r2, [sp, #4]
	ldr	r0, [r7, #12]
	movs	r1, #2
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #28]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L424
.L423:
	ldr	r0, [r7, #4]
	bl	tt_glyphzone_done(PLT)
	b	.L425
.L424:
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #10]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #8]	@ movhi
	strh	r2, [r3, #6]	@ movhi
.L425:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_glyphzone_new, .-tt_glyphzone_new
	.section	.text.tt_check_trickyness_family,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_check_trickyness_family, %function
tt_check_trickyness_family:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L428
.L431:
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, .L432
.LPIC12:
	add	r2, pc
	add	r3, r3, r2
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	strstr(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L429
	movs	r3, #1
	b	.L430
.L429:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L428:
	ldr	r3, [r7, #12]
	cmp	r3, #8
	ble	.L431
	movs	r3, #0
.L430:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L433:
	.align	2
.L432:
	.word	trick_names.8679-(.LPIC12+4)
	.size	tt_check_trickyness_family, .-tt_check_trickyness_family
	.section	.text.tt_synth_sfnt_checksum,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_synth_sfnt_checksum, %function
tt_synth_sfnt_checksum:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	FT_Stream_EnterFrame(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L435
	movs	r3, #0
	b	.L436
.L435:
	b	.L437
.L438:
	ldr	r0, [r7, #4]
	bl	FT_Stream_GetULong(PLT)
	mov	r3, r0
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7]
	subs	r3, r3, #4
	str	r3, [r7]
.L437:
	ldr	r3, [r7]
	cmp	r3, #3
	bhi	.L438
	movs	r3, #3
	str	r3, [r7, #16]
	b	.L439
.L440:
	ldr	r0, [r7, #4]
	bl	FT_Stream_GetChar(PLT)
	mov	r3, r0
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #16]
	lsls	r3, r3, #3
	lsl	r3, r2, r3
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7]
	subs	r3, r3, #1
	str	r3, [r7]
	ldr	r3, [r7, #16]
	subs	r3, r3, #1
	str	r3, [r7, #16]
.L439:
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L440
	ldr	r0, [r7, #4]
	bl	FT_Stream_ExitFrame(PLT)
	ldr	r3, [r7, #20]
.L436:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_synth_sfnt_checksum, .-tt_synth_sfnt_checksum
	.section	.text.tt_get_sfnt_checksum,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_get_sfnt_checksum, %function
tt_get_sfnt_checksum:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #508]
	cmp	r3, #0
	bne	.L442
	movs	r3, #0
	b	.L443
.L442:
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #508]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #156]
	ldrh	r3, [r7, #2]
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #104]
	ldr	r0, [r7, #4]
	mov	r1, r2
	mov	r2, r3
	movs	r3, #0
	blx	r4
	mov	r3, r0
	cmp	r3, #0
	beq	.L444
	movs	r3, #0
	b	.L443
.L444:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #104]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #156]
	ldrh	r3, [r7, #2]
	lsls	r3, r3, #4
	add	r3, r3, r1
	ldr	r3, [r3, #12]
	mov	r0, r2
	mov	r1, r3
	bl	tt_synth_sfnt_checksum(PLT)
	mov	r3, r0
.L443:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	tt_get_sfnt_checksum, .-tt_get_sfnt_checksum
	.section	.text.tt_check_trickyness_sfnt_ids,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_check_trickyness_sfnt_ids, %function
tt_check_trickyness_sfnt_ids:
	@ args = 0, pretend = 0, frame = 96
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #96
	add	r7, sp, #0
	str	r0, [r7, #4]
	add	r3, r7, #8
	mov	r0, r3
	movs	r1, #0
	movs	r2, #68
	bl	memset(PLT)
	movs	r3, #0
	strb	r3, [r7, #91]
	movs	r3, #0
	strb	r3, [r7, #90]
	movs	r3, #0
	strb	r3, [r7, #89]
	movs	r3, #0
	strh	r3, [r7, #86]	@ movhi
	b	.L446
.L459:
	movs	r3, #0
	str	r3, [r7, #92]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #156]
	ldrh	r3, [r7, #86]
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r2, [r3]
	movw	r3, #26477
	movt	r3, 26224
	cmp	r2, r3
	beq	.L448
	movw	r3, #25968
	movt	r3, 28786
	cmp	r2, r3
	beq	.L449
	movw	r3, #29728
	movt	r3, 25462
	cmp	r2, r3
	beq	.L450
	b	.L452
.L450:
	movs	r3, #0
	str	r3, [r7, #76]
	movs	r3, #1
	strb	r3, [r7, #91]
	b	.L451
.L448:
	movs	r3, #1
	str	r3, [r7, #76]
	movs	r3, #1
	strb	r3, [r7, #90]
	b	.L451
.L449:
	movs	r3, #2
	str	r3, [r7, #76]
	movs	r3, #1
	strb	r3, [r7, #89]
	nop
.L451:
	movs	r3, #0
	str	r3, [r7, #80]
	b	.L453
.L458:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #156]
	ldrh	r3, [r7, #86]
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r1, [r3, #12]
	ldr	r3, .L467
.LPIC13:
	add	r3, pc
	mov	r0, r3
	ldr	r2, [r7, #80]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldr	r2, [r7, #76]
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r0
	ldr	r3, [r3, #4]
	cmp	r1, r3
	bne	.L454
	ldr	r3, [r7, #92]
	cmp	r3, #0
	bne	.L455
	ldrh	r3, [r7, #86]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	tt_get_sfnt_checksum(PLT)
	str	r0, [r7, #92]
.L455:
	ldr	r3, .L467+4
.LPIC14:
	add	r3, pc
	mov	r1, r3
	ldr	r2, [r7, #80]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldr	r2, [r7, #76]
	add	r3, r3, r2
	ldr	r2, [r1, r3, lsl #3]
	ldr	r3, [r7, #92]
	cmp	r2, r3
	bne	.L456
	ldr	r3, [r7, #80]
	lsls	r3, r3, #2
	add	r1, r7, #96
	add	r3, r3, r1
	ldr	r3, [r3, #-88]
	adds	r2, r3, #1
	ldr	r3, [r7, #80]
	lsls	r3, r3, #2
	add	r1, r7, #96
	add	r3, r3, r1
	str	r2, [r3, #-88]
.L456:
	ldr	r3, [r7, #80]
	lsls	r3, r3, #2
	add	r2, r7, #96
	add	r3, r3, r2
	ldr	r3, [r3, #-88]
	cmp	r3, #3
	bne	.L454
	movs	r3, #1
	b	.L466
.L454:
	ldr	r3, [r7, #80]
	adds	r3, r3, #1
	str	r3, [r7, #80]
.L453:
	ldr	r3, [r7, #80]
	cmp	r3, #16
	ble	.L458
.L452:
	ldrh	r3, [r7, #86]
	adds	r3, r3, #1
	strh	r3, [r7, #86]	@ movhi
.L446:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #152]
	ldrh	r2, [r7, #86]
	cmp	r2, r3
	bcc	.L459
	movs	r3, #0
	str	r3, [r7, #80]
	b	.L460
.L465:
	ldrb	r3, [r7, #91]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L461
	ldr	r3, .L467+8
.LPIC15:
	add	r3, pc
	mov	r1, r3
	ldr	r2, [r7, #80]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	adds	r3, r3, #4
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L461
	ldr	r3, [r7, #80]
	lsls	r3, r3, #2
	add	r1, r7, #96
	add	r3, r3, r1
	ldr	r3, [r3, #-88]
	adds	r2, r3, #1
	ldr	r3, [r7, #80]
	lsls	r3, r3, #2
	add	r1, r7, #96
	add	r3, r3, r1
	str	r2, [r3, #-88]
.L461:
	ldrb	r3, [r7, #90]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L462
	ldr	r3, .L467+12
.LPIC16:
	add	r3, pc
	mov	r1, r3
	ldr	r2, [r7, #80]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	adds	r3, r3, #12
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L462
	ldr	r3, [r7, #80]
	lsls	r3, r3, #2
	add	r2, r7, #96
	add	r3, r3, r2
	ldr	r3, [r3, #-88]
	adds	r2, r3, #1
	ldr	r3, [r7, #80]
	lsls	r3, r3, #2
	add	r1, r7, #96
	add	r3, r3, r1
	str	r2, [r3, #-88]
.L462:
	ldrb	r3, [r7, #89]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L463
	ldr	r3, .L467+16
.LPIC17:
	add	r3, pc
	mov	r1, r3
	ldr	r2, [r7, #80]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	adds	r3, r3, #20
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L463
	ldr	r3, [r7, #80]
	lsls	r3, r3, #2
	add	r2, r7, #96
	add	r3, r3, r2
	ldr	r3, [r3, #-88]
	adds	r2, r3, #1
	ldr	r3, [r7, #80]
	lsls	r3, r3, #2
	add	r1, r7, #96
	add	r3, r3, r1
	str	r2, [r3, #-88]
.L463:
	ldr	r3, [r7, #80]
	lsls	r3, r3, #2
	add	r2, r7, #96
	add	r3, r3, r2
	ldr	r3, [r3, #-88]
	cmp	r3, #3
	bne	.L464
	movs	r3, #1
	b	.L466
.L464:
	ldr	r3, [r7, #80]
	adds	r3, r3, #1
	str	r3, [r7, #80]
.L460:
	ldr	r3, [r7, #80]
	cmp	r3, #16
	ble	.L465
	movs	r3, #0
.L466:
	mov	r0, r3
	adds	r7, r7, #96
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L468:
	.align	2
.L467:
	.word	sfnt_id.8708-(.LPIC13+4)
	.word	sfnt_id.8708-(.LPIC14+4)
	.word	sfnt_id.8708-(.LPIC15+4)
	.word	sfnt_id.8708-(.LPIC16+4)
	.word	sfnt_id.8708-(.LPIC17+4)
	.size	tt_check_trickyness_sfnt_ids, .-tt_check_trickyness_sfnt_ids
	.section	.text.tt_check_trickyness,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_check_trickyness, %function
tt_check_trickyness:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L470
	movs	r3, #0
	b	.L471
.L470:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L472
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	mov	r0, r3
	bl	tt_check_trickyness_family(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L472
	movs	r3, #1
	b	.L471
.L472:
	ldr	r0, [r7, #4]
	bl	tt_check_trickyness_sfnt_ids(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L473
	movs	r3, #1
	b	.L471
.L473:
	movs	r3, #0
.L471:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_check_trickyness, .-tt_check_trickyness
	.section	.rodata
	.align	2
.LC13:
	.ascii	".notdef\000"
	.section	.text.tt_check_single_notdef,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_check_single_notdef, %function
tt_check_single_notdef:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #47]
	ldr	r3, [r7, #4]
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #40]
	b	.L475
.L479:
	add	r3, r7, #20
	ldr	r0, [r7, #28]
	ldr	r1, [r7, #40]
	mov	r2, r3
	bl	tt_face_get_location(PLT)
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L476
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #1
	bls	.L477
	b	.L478
.L477:
	ldr	r3, [r7, #40]
	str	r3, [r7, #36]
.L476:
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	str	r3, [r7, #40]
.L475:
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #696]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bhi	.L479
.L478:
	ldr	r3, [r7, #32]
	cmp	r3, #1
	bne	.L480
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L481
	movs	r3, #1
	strb	r3, [r7, #47]
	b	.L480
.L481:
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	mov	r2, r3
	movs	r3, #8
	bl	FT_Get_Glyph_Name(PLT)
	str	r0, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L480
	ldrb	r3, [r7, #12]	@ zero_extendqisi2
	cmp	r3, #46
	bne	.L480
	add	r3, r7, #12
	mov	r0, r3
	ldr	r3, .L484
.LPIC18:
	add	r3, pc
	mov	r1, r3
	movs	r2, #8
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L480
	movs	r3, #1
	strb	r3, [r7, #47]
.L480:
	ldrb	r3, [r7, #47]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L485:
	.align	2
.L484:
	.word	.LC13-(.LPIC18+4)
	.size	tt_check_single_notdef, .-tt_check_single_notdef
	.section	.text.tt_face_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_face_init, %function
tt_face_init:
	@ args = 4, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #60
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #8]
	str	r3, [r7, #40]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #96]
	ldr	r3, [r3, #4]
	str	r3, [r7, #36]
	ldr	r0, [r7, #36]
	ldr	r3, .L509
.LPIC19:
	add	r3, pc
	mov	r1, r3
	bl	FT_Get_Module_Interface(PLT)
	str	r0, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bne	.L487
	movs	r3, #11
	str	r3, [r7, #44]
	b	.L488
.L487:
	ldr	r0, [r7, #12]
	movs	r1, #0
	bl	FT_Stream_Seek(PLT)
	str	r0, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L489
	b	.L488
.L489:
	ldr	r3, [r7, #32]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #64]
	str	r3, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #40]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	blx	r4
	str	r0, [r7, #44]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #104]
	str	r3, [r7, #12]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L490
	b	.L488
.L490:
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #148]
	cmp	r3, #65536
	beq	.L491
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #148]
	cmp	r3, #131072
	beq	.L491
	ldr	r3, [r7, #40]
	ldr	r2, [r3, #148]
	movw	r3, #30053
	movt	r3, 29810
	cmp	r2, r3
	beq	.L491
	nop
.L492:
	movs	r3, #2
	str	r3, [r7, #44]
	b	.L488
.L491:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	orr	r2, r3, #2048
	ldr	r3, [r7, #8]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bge	.L493
	movs	r3, #0
	b	.L494
.L493:
	ldr	r3, [r7, #32]
	ldr	r4, [r3, #8]
	ldr	r3, [r7, #64]
	str	r3, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #40]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	blx	r4
	str	r0, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L495
	b	.L488
.L495:
	ldr	r0, [r7, #8]
	bl	tt_check_trickyness(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L496
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	orr	r2, r3, #8192
	ldr	r3, [r7, #8]
	str	r2, [r3, #8]
.L496:
	ldr	r0, [r7, #40]
	ldr	r1, [r7, #12]
	bl	tt_face_load_hdmx(PLT)
	str	r0, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L497
	b	.L488
.L497:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L498
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #128]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	bne	.L499
	ldr	r0, [r7, #40]
	ldr	r1, [r7, #12]
	bl	tt_face_load_loca(PLT)
	str	r0, [r7, #44]
.L499:
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bne	.L500
	ldr	r0, [r7, #40]
	ldr	r1, [r7, #12]
	bl	tt_face_load_cvt(PLT)
	str	r0, [r7, #44]
.L500:
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bne	.L501
	ldr	r0, [r7, #40]
	ldr	r1, [r7, #12]
	bl	tt_face_load_fpgm(PLT)
	str	r0, [r7, #44]
.L501:
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bne	.L502
	ldr	r0, [r7, #40]
	ldr	r1, [r7, #12]
	bl	tt_face_load_prep(PLT)
	str	r0, [r7, #44]
.L502:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #128]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	bne	.L498
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #28]
	cmp	r3, #0
	beq	.L498
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #700]
	cmp	r3, #0
	beq	.L498
	ldr	r0, [r7, #8]
	bl	tt_check_single_notdef(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L498
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	bic	r2, r3, #1
	ldr	r3, [r7, #8]
	str	r2, [r3, #8]
.L498:
	ldr	r3, [r7, #4]
	asrs	r3, r3, #16
	str	r3, [r7, #28]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	and	r3, r3, #256
	cmp	r3, #0
	beq	.L503
	ldr	r3, [r7, #28]
	cmp	r3, #0
	ble	.L503
	ldr	r0, [r7, #40]
	movs	r1, #0
	bl	TT_Get_MM_Var(PLT)
	str	r0, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L504
	b	.L488
.L504:
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #676]
	ldr	r3, [r3, #8]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L503
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #100]
	str	r3, [r7, #24]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #676]
	ldr	r3, [r3, #8]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #28]
	add	r3, r3, #536870912
	subs	r3, r3, #1
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #116]
	ldr	r2, [r7, #20]
	ldr	r2, [r2, #4]
	uxth	r1, r2
	add	r2, r7, #16
	ldr	r0, [r7, #40]
	blx	r3
	str	r0, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L505
	b	.L488
.L505:
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L507
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #24]
	ldr	r0, [r7, #24]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #40]
	movs	r2, #0
	str	r2, [r3, #24]
.L507:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #40]
	str	r2, [r3, #24]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #676]
	ldr	r3, [r3, #8]
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	ldr	r0, [r7, #40]
	mov	r1, r2
	mov	r2, r3
	bl	TT_Set_Var_Design(PLT)
	str	r0, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L503
	nop
	b	.L488
.L503:
	ldr	r0, [r7, #40]
	bl	TT_Init_Glyph_Loading(PLT)
.L488:
	ldr	r3, [r7, #44]
.L494:
	mov	r0, r3
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L510:
	.align	2
.L509:
	.word	.LC11-(.LPIC19+4)
	.size	tt_face_init, .-tt_face_init
	.section	.text.tt_face_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_face_done, %function
tt_face_done:
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
	bne	.L512
	b	.L511
.L512:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #104]
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #532]
	str	r3, [r7, #8]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #660]
	cmp	r3, #0
	beq	.L514
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #660]
	ldr	r2, [r7, #20]
	ldr	r2, [r2, #656]
	mov	r0, r2
	blx	r3
.L514:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L515
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	ldr	r0, [r7, #20]
	blx	r3
.L515:
	ldr	r0, [r7, #20]
	bl	tt_face_done_loca(PLT)
	ldr	r0, [r7, #20]
	bl	tt_face_free_hdmx(PLT)
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #648]
	ldr	r0, [r7, #16]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #648]
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #644]
	ldr	r3, [r7, #20]
	add	r3, r3, #632
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	FT_Stream_ReleaseFrame(PLT)
	ldr	r3, [r7, #20]
	add	r3, r3, #640
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	FT_Stream_ReleaseFrame(PLT)
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #628]
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #636]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #676]
	ldr	r0, [r7, #16]
	mov	r1, r3
	bl	tt_done_blend(PLT)
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #676]
.L511:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_face_done, .-tt_face_done
	.section	.text.tt_size_run_fpgm,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_size_run_fpgm, %function
tt_size_run_fpgm:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #292]
	str	r3, [r7, #20]
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #24]
	ldr	r2, [r7, #4]
	bl	TT_Load_Context(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L517
	ldr	r3, [r7, #28]
	b	.L518
.L517:
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #428]
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r3, [r7, #20]
	movs	r2, #64
	str	r2, [r3, #476]
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #480]
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #484]
	ldr	r3, [r7, #20]
	movs	r2, #0
	strb	r2, [r3, #488]
	ldr	r3, [r7, #20]
	mov	r2, #16384
	str	r2, [r3, #564]
	ldr	r3, [r7, #20]
	ldrb	r2, [r7, #3]
	strb	r2, [r3, #561]
	ldr	r3, [r7, #20]
	adds	r3, r3, #216
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	adds	r3, r3, #244
	str	r3, [r7, #12]
	ldr	r3, [r7, #16]
	movs	r2, #0
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #16]
	movs	r2, #0
	strh	r2, [r3, #2]	@ movhi
	ldr	r3, [r7, #16]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #16]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strh	r2, [r3, #8]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r3, [r7, #12]
	mov	r2, #65536
	str	r2, [r3, #12]
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #632]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #628]
	ldr	r0, [r7, #20]
	movs	r1, #1
	bl	TT_Set_CodeRange(PLT)
	ldr	r0, [r7, #20]
	movs	r1, #2
	bl	TT_Clear_CodeRange(PLT)
	ldr	r0, [r7, #20]
	movs	r1, #3
	bl	TT_Clear_CodeRange(PLT)
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #628]
	cmp	r3, #0
	beq	.L519
	ldr	r0, [r7, #20]
	movs	r1, #1
	movs	r2, #0
	bl	TT_Goto_CodeRange(PLT)
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #652]
	ldr	r0, [r7, #20]
	blx	r3
	str	r0, [r7, #28]
	b	.L520
.L519:
	movs	r3, #0
	str	r3, [r7, #28]
.L520:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #28]
	str	r2, [r3, #296]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L521
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #4]
	bl	TT_Save_Context(PLT)
.L521:
	ldr	r3, [r7, #28]
.L518:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_size_run_fpgm, .-tt_size_run_fpgm
	.section	.text.tt_size_run_prep,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_size_run_prep, %function
tt_size_run_prep:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #292]
	str	r3, [r7, #12]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #16]
	ldr	r2, [r7, #4]
	bl	TT_Load_Context(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L523
	ldr	r3, [r7, #20]
	b	.L524
.L523:
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #428]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #488]
	ldr	r3, [r7, #12]
	ldrb	r2, [r7, #3]
	strb	r2, [r3, #561]
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #640]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #636]
	ldr	r0, [r7, #12]
	movs	r1, #2
	bl	TT_Set_CodeRange(PLT)
	ldr	r0, [r7, #12]
	movs	r1, #3
	bl	TT_Clear_CodeRange(PLT)
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #636]
	cmp	r3, #0
	beq	.L525
	ldr	r0, [r7, #12]
	movs	r1, #2
	movs	r2, #0
	bl	TT_Goto_CodeRange(PLT)
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #652]
	ldr	r0, [r7, #12]
	blx	r3
	str	r0, [r7, #20]
	b	.L526
.L525:
	movs	r3, #0
	str	r3, [r7, #20]
.L526:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #20]
	str	r2, [r3, #300]
	ldr	r3, [r7, #12]
	mov	r2, #16384
	strh	r2, [r3, #290]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #0
	strh	r2, [r3, #292]	@ movhi
	ldr	r3, [r7, #12]
	mov	r2, #16384
	strh	r2, [r3, #294]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #0
	strh	r2, [r3, #296]	@ movhi
	ldr	r3, [r7, #12]
	mov	r2, #16384
	strh	r2, [r3, #298]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #0
	strh	r2, [r3, #300]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #0
	strh	r2, [r3, #284]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #0
	strh	r2, [r3, #286]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #0
	strh	r2, [r3, #288]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #1
	strh	r2, [r3, #344]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #1
	strh	r2, [r3, #346]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #1
	strh	r2, [r3, #348]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #1
	str	r2, [r3, #304]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #12]
	add	r1, r2, #172
	add	r2, r3, #284
	movs	r3, #68
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	memcpy(PLT)
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	bl	TT_Save_Context(PLT)
	ldr	r3, [r7, #20]
.L524:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_size_run_prep, .-tt_size_run_prep
	.section	.text.tt_size_done_bytecode,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_size_done_bytecode, %function
tt_size_done_bytecode:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #100]
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #292]
	cmp	r3, #0
	beq	.L528
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #292]
	mov	r0, r3
	bl	TT_Done_Context(PLT)
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #292]
.L528:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #244]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #244]
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #240]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #252]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #252]
	ldr	r3, [r7, #20]
	movs	r2, #0
	strh	r2, [r3, #248]	@ movhi
	ldr	r3, [r7, #20]
	add	r3, r3, #256
	mov	r0, r3
	bl	tt_glyphzone_done(PLT)
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #124]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #124]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #136]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #136]
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #116]
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #120]
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #128]
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #132]
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #140]
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #144]
	ldr	r3, [r7, #20]
	mov	r2, #-1
	str	r2, [r3, #296]
	ldr	r3, [r7, #20]
	mov	r2, #-1
	str	r2, [r3, #300]
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_size_done_bytecode, .-tt_size_done_bytecode
	.section	.text.tt_size_init_bytecode,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_size_init_bytecode, %function
tt_size_init_bytecode:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #52
	add	r7, sp, #8
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r4, .L537
.LPIC20:
	add	r4, pc
	ldr	r3, [r7, #4]
	str	r3, [r7, #36]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #100]
	str	r3, [r7, #28]
	ldr	r3, [r7, #32]
	add	r3, r3, #260
	str	r3, [r7, #24]
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #124]
	ldr	r0, [r7, #28]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #36]
	movs	r2, #0
	str	r2, [r3, #124]
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #136]
	ldr	r0, [r7, #28]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #36]
	movs	r2, #0
	str	r2, [r3, #136]
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #244]
	ldr	r0, [r7, #28]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #36]
	movs	r2, #0
	str	r2, [r3, #244]
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #252]
	ldr	r0, [r7, #28]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #36]
	movs	r2, #0
	str	r2, [r3, #252]
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #292]
	cmp	r3, #0
	beq	.L530
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #292]
	mov	r0, r3
	bl	TT_Done_Context(PLT)
.L530:
	ldr	r3, [r7, #36]
	add	r3, r3, #256
	mov	r0, r3
	bl	tt_glyphzone_done(PLT)
	ldr	r3, [r7, #36]
	mov	r2, #-1
	str	r2, [r3, #296]
	ldr	r3, [r7, #36]
	mov	r2, #-1
	str	r2, [r3, #300]
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #96]
	mov	r0, r3
	bl	TT_New_Context(PLT)
	mov	r2, r0
	ldr	r3, [r7, #36]
	str	r2, [r3, #292]
	ldr	r3, [r7, #24]
	ldrh	r3, [r3, #20]
	mov	r2, r3
	ldr	r3, [r7, #36]
	str	r2, [r3, #120]
	ldr	r3, [r7, #24]
	ldrh	r3, [r3, #22]
	mov	r2, r3
	ldr	r3, [r7, #36]
	str	r2, [r3, #132]
	ldr	r3, [r7, #36]
	movs	r2, #0
	str	r2, [r3, #116]
	ldr	r3, [r7, #36]
	movs	r2, #0
	str	r2, [r3, #128]
	ldr	r3, [r7, #36]
	movs	r2, #0
	str	r2, [r3, #140]
	ldr	r3, [r7, #36]
	movs	r2, #0
	str	r2, [r3, #144]
	ldr	r3, [r7, #32]
	ldr	r2, [r3, #644]
	ldr	r3, [r7, #36]
	str	r2, [r3, #240]
	ldr	r3, [r7, #24]
	ldrh	r2, [r3, #18]
	ldr	r3, [r7, #36]
	strh	r2, [r3, #248]	@ movhi
	ldr	r3, [r7, #36]
	adds	r3, r3, #72
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	movs	r2, #0
	strb	r2, [r3, #37]
	ldr	r3, [r7, #20]
	movs	r2, #0
	strb	r2, [r3, #38]
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #28]
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #32]
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #120]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #8
	str	r2, [sp, #4]
	ldr	r0, [r7, #28]
	movs	r1, #24
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #36]
	str	r2, [r3, #124]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L531
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #132]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #8
	str	r2, [sp, #4]
	ldr	r0, [r7, #28]
	movs	r1, #24
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #36]
	str	r2, [r3, #136]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L531
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #240]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #8
	str	r2, [sp, #4]
	ldr	r0, [r7, #28]
	movs	r1, #4
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #36]
	str	r2, [r3, #244]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L531
	ldr	r3, [r7, #36]
	ldrh	r3, [r3, #248]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #8
	str	r2, [sp, #4]
	ldr	r0, [r7, #28]
	movs	r1, #4
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #36]
	str	r2, [r3, #252]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L531
	ldr	r3, [r7, #24]
	ldrh	r3, [r3, #16]	@ movhi
	strh	r3, [r7, #18]	@ movhi
	ldrh	r3, [r7, #18]	@ movhi
	adds	r3, r3, #4
	strh	r3, [r7, #18]	@ movhi
	ldr	r3, [r7, #36]
	add	r3, r3, #256
	ldrh	r2, [r7, #18]
	ldr	r0, [r7, #28]
	mov	r1, r2
	movs	r2, #0
	bl	tt_glyphzone_new(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L532
	b	.L531
.L532:
	ldr	r3, [r7, #36]
	ldrh	r2, [r7, #18]	@ movhi
	strh	r2, [r3, #264]	@ movhi
	ldr	r2, [r7, #36]
	ldr	r3, .L537+4
	ldr	r3, [r4, r3]
	add	r1, r2, #172
	mov	r2, r3
	movs	r3, #68
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	memcpy(PLT)
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #96]
	ldr	r3, [r3, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #172]
	ldr	r3, [r7, #32]
	str	r2, [r3, #652]
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #652]
	cmp	r3, #0
	bne	.L533
	ldr	r3, [r7, #32]
	ldr	r2, .L537+8
	ldr	r2, [r4, r2]
	str	r2, [r3, #652]
.L533:
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	ldr	r0, [r7, #36]
	mov	r1, r3
	bl	tt_size_run_fpgm(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	b	.L536
.L531:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L535
	ldr	r0, [r7, #4]
	bl	tt_size_done_bytecode(PLT)
.L535:
	ldr	r3, [r7, #8]
.L536:
	mov	r0, r3
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L538:
	.align	2
.L537:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC20+4)
	.word	tt_default_graphics_state(GOT)
	.word	TT_RunIns(GOT)
	.size	tt_size_init_bytecode, .-tt_size_init_bytecode
	.section	.text.tt_size_ready_bytecode,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_size_ready_bytecode, %function
tt_size_ready_bytecode:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r4, .L549
.LPIC21:
	add	r4, pc
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #296]
	cmp	r3, #0
	bge	.L540
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	tt_size_init_bytecode(PLT)
	str	r0, [r7, #20]
.L540:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L541
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #296]
	cmp	r3, #0
	bne	.L541
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #300]
	cmp	r3, #0
	bge	.L541
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L542
.L543:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #244]
	ldr	r3, [r7, #16]
	lsls	r3, r3, #2
	adds	r5, r2, r3
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #648]
	ldr	r3, [r7, #16]
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r3, [r3]
	sxth	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r3, r0
	str	r3, [r5]
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L542:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #240]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bhi	.L543
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L544
.L545:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #268]
	ldr	r3, [r7, #16]
	lsls	r3, r3, #3
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #268]
	ldr	r3, [r7, #16]
	lsls	r3, r3, #3
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #272]
	ldr	r3, [r7, #16]
	lsls	r3, r3, #3
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #272]
	ldr	r3, [r7, #16]
	lsls	r3, r3, #3
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L544:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #264]
	mov	r2, r3
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bhi	.L545
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L546
.L547:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #252]
	ldr	r3, [r7, #16]
	lsls	r3, r3, #2
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L546:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #248]
	mov	r2, r3
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bhi	.L547
	ldr	r2, [r7, #4]
	ldr	r3, .L549+4
	ldr	r3, [r4, r3]
	add	r1, r2, #172
	mov	r2, r3
	movs	r3, #68
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	memcpy(PLT)
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	tt_size_run_prep(PLT)
	str	r0, [r7, #20]
.L541:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L550:
	.align	2
.L549:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC21+4)
	.word	tt_default_graphics_state(GOT)
	.size	tt_size_ready_bytecode, .-tt_size_ready_bytecode
	.section	.text.tt_size_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_size_init, %function
tt_size_init:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	mov	r2, #-1
	str	r2, [r3, #296]
	ldr	r3, [r7, #12]
	mov	r2, #-1
	str	r2, [r3, #300]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #108]
	ldr	r3, [r7, #12]
	mov	r2, #-1
	str	r2, [r3, #112]
	ldr	r3, [r7, #8]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	tt_size_init, .-tt_size_init
	.section	.text.tt_size_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_size_done, %function
tt_size_done:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	ldr	r0, [r7, #4]
	bl	tt_size_done_bytecode(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #108]
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_size_done, .-tt_size_done
	.section	.text.tt_size_reset,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_size_reset, %function
tt_size_reset:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #108]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	adds	r3, r3, #44
	str	r3, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	mov	r4, r2
	add	r5, r3, #12
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5, {r0, r1, r2}
	stmia	r4, {r0, r1, r2}
	ldr	r3, [r7, #12]
	ldrh	r3, [r3]
	cmp	r3, #0
	beq	.L555
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #2]
	cmp	r3, #0
	bne	.L556
.L555:
	movs	r3, #151
	b	.L557
.L556:
	ldr	r3, [r7, #16]
	ldrh	r3, [r3, #176]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L558
	ldr	r3, [r7, #12]
	ldrh	r3, [r3]
	lsls	r2, r3, #6
	ldr	r3, [r7, #16]
	ldrh	r3, [r3, #68]
	mov	r0, r2
	mov	r1, r3
	bl	FT_DivFix(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #2]
	lsls	r2, r3, #6
	ldr	r3, [r7, #16]
	ldrh	r3, [r3, #68]
	mov	r0, r2
	mov	r1, r3
	bl	FT_DivFix(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #16]
	ldrh	r3, [r3, #70]
	sxth	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r3, r0
	adds	r3, r3, #32
	bic	r2, r3, #63
	ldr	r3, [r7, #12]
	str	r2, [r3, #12]
	ldr	r3, [r7, #16]
	ldrh	r3, [r3, #72]
	sxth	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r3, r0
	adds	r3, r3, #32
	bic	r2, r3, #63
	ldr	r3, [r7, #12]
	str	r2, [r3, #16]
	ldr	r3, [r7, #16]
	ldrh	r3, [r3, #74]
	sxth	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r3, r0
	adds	r3, r3, #32
	bic	r2, r3, #63
	ldr	r3, [r7, #12]
	str	r2, [r3, #20]
	ldr	r3, [r7, #16]
	ldrh	r3, [r3, #76]
	sxth	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r3, r0
	adds	r3, r3, #32
	bic	r2, r3, #63
	ldr	r3, [r7, #12]
	str	r2, [r3, #24]
.L558:
	ldr	r3, [r7, #12]
	ldrh	r2, [r3]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #2]
	cmp	r2, r3
	bcc	.L559
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	str	r2, [r3, #88]
	ldr	r3, [r7, #12]
	ldrh	r2, [r3]
	ldr	r3, [r7, #4]
	strh	r2, [r3, #80]	@ movhi
	ldr	r3, [r7, #4]
	mov	r2, #65536
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #2]
	mov	r2, r3
	ldr	r3, [r7, #12]
	ldrh	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	FT_DivFix(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #76]
	b	.L560
.L559:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	str	r2, [r3, #88]
	ldr	r3, [r7, #12]
	ldrh	r2, [r3, #2]
	ldr	r3, [r7, #4]
	strh	r2, [r3, #80]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #2]
	mov	r0, r2
	mov	r1, r3
	bl	FT_DivFix(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #72]
	ldr	r3, [r7, #4]
	mov	r2, #65536
	str	r2, [r3, #76]
.L560:
	ldr	r3, [r7, #4]
	mov	r2, #-1
	str	r2, [r3, #300]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L561
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #108]
.L561:
	ldr	r3, [r7, #20]
.L557:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.size	tt_size_reset, .-tt_size_reset
	.section	.text.tt_driver_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_driver_init, %function
tt_driver_init:
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
	movs	r2, #38
	str	r2, [r3, #64]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	tt_driver_init, .-tt_driver_init
	.section	.text.tt_driver_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_driver_done, %function
tt_driver_done:
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
	.size	tt_driver_done, .-tt_driver_done
	.section	.text.tt_slot_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_slot_init, %function
tt_slot_init:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #156]
	ldr	r3, [r3]
	mov	r0, r3
	bl	FT_GlyphLoader_CreateExtra(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_slot_init, .-tt_slot_init
	.section	.text.TT_Goto_CodeRange,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	TT_Goto_CodeRange, %function
TT_Goto_CodeRange:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	adds	r3, r3, #55
	lsls	r3, r3, #3
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	str	r2, [r3, #356]
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	str	r2, [r3, #364]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #360]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #352]
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TT_Goto_CodeRange, .-TT_Goto_CodeRange
	.section	.text.TT_Set_CodeRange,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	TT_Set_CodeRange, %function
TT_Set_CodeRange:
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
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	ldr	r2, [r7, #12]
	adds	r3, r3, #55
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	ldr	r2, [r7, #12]
	adds	r3, r3, #55
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r7]
	str	r2, [r3, #8]
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TT_Set_CodeRange, .-TT_Set_CodeRange
	.section	.text.TT_Clear_CodeRange,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	TT_Clear_CodeRange, %function
TT_Clear_CodeRange:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	subs	r3, r3, #1
	ldr	r2, [r7, #4]
	adds	r3, r3, #55
	lsls	r3, r3, #3
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7]
	subs	r3, r3, #1
	ldr	r2, [r7, #4]
	adds	r3, r3, #55
	lsls	r3, r3, #3
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [r3, #8]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TT_Clear_CodeRange, .-TT_Clear_CodeRange
	.section	.text.TT_Done_Context,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	TT_Done_Context, %function
TT_Done_Context:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strh	r2, [r3, #440]	@ movhi
	ldr	r3, [r7, #4]
	movs	r2, #0
	strh	r2, [r3, #442]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #436]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #436]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #432]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #428]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #392]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #392]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #388]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #4]
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	TT_Done_Context, .-TT_Done_Context
	.section	.text.Init_Context,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Init_Context, %function
Init_Context:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	movs	r2, #32
	str	r2, [r3, #432]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #432]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #12
	str	r2, [sp, #4]
	ldr	r0, [r7]
	movs	r1, #16
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #436]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L572
	nop
.L573:
	ldr	r0, [r7, #4]
	bl	TT_Done_Context(PLT)
	ldr	r3, [r7, #12]
	b	.L575
.L572:
	ldr	r3, [r7, #4]
	movs	r2, #0
	strh	r2, [r3, #440]	@ movhi
	ldr	r3, [r7, #4]
	movs	r2, #0
	strh	r2, [r3, #442]	@ movhi
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #388]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #392]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	movs	r3, #0
.L575:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	Init_Context, .-Init_Context
	.section	.text.Update_Max,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Update_Max, %function
Update_Max:
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7]
	str	r3, [r7, #20]
	ldr	r3, [r7, #8]
	ldr	r2, [r3]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bcs	.L577
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	mul	r3, r2, r3
	mov	r2, r3
	ldr	r3, [r7, #32]
	ldr	r1, [r7, #4]
	mul	r3, r1, r3
	ldr	r1, [r7, #20]
	ldr	r1, [r1]
	str	r1, [sp]
	add	r1, r7, #16
	str	r1, [sp, #4]
	ldr	r0, [r7, #12]
	movs	r1, #1
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #20]
	str	r2, [r3]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L578
	ldr	r3, [r7, #16]
	b	.L580
.L578:
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #32]
	str	r2, [r3]
.L577:
	movs	r3, #0
.L580:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	Update_Max, .-Update_Max
	.section	.text.TT_Load_Context,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	TT_Load_Context, %function
TT_Load_Context:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3]
	ldr	r3, [r7, #8]
	add	r3, r3, #260
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L582
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #116]
	ldr	r3, [r7, #12]
	str	r2, [r3, #396]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #120]
	ldr	r3, [r7, #12]
	str	r2, [r3, #400]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #128]
	ldr	r3, [r7, #12]
	str	r2, [r3, #408]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #132]
	ldr	r3, [r7, #12]
	str	r2, [r3, #412]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #124]
	ldr	r3, [r7, #12]
	str	r2, [r3, #404]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #136]
	ldr	r3, [r7, #12]
	str	r2, [r3, #416]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	add	r4, r2, #244
	add	r5, r3, #72
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5, {r0, r1}
	stmia	r4, {r0, r1}
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	add	r4, r2, #216
	add	r5, r3, #44
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5, {r0, r1, r2}
	stmia	r4, {r0, r1, r2}
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #140]
	ldr	r3, [r7, #12]
	str	r2, [r3, #420]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #144]
	ldr	r3, [r7, #12]
	str	r2, [r3, #424]
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L583
.L584:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #28]
	adds	r2, r2, #55
	lsls	r2, r2, #3
	add	r2, r2, r3
	ldr	r1, [r7, #4]
	ldr	r3, [r7, #28]
	adds	r3, r3, #18
	lsls	r3, r3, #3
	add	r3, r3, r1
	adds	r2, r2, #4
	adds	r3, r3, #4
	ldmia	r3, {r0, r1}
	stmia	r2, {r0, r1}
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L583:
	ldr	r3, [r7, #28]
	cmp	r3, #2
	ble	.L584
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	add	r1, r2, #284
	add	r2, r3, #172
	movs	r3, #68
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	memcpy(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #240]
	ldr	r3, [r7, #12]
	str	r2, [r3, #380]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #244]
	ldr	r3, [r7, #12]
	str	r2, [r3, #384]
	ldr	r3, [r7, #4]
	ldrh	r2, [r3, #248]
	ldr	r3, [r7, #12]
	strh	r2, [r3, #468]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #252]
	ldr	r3, [r7, #12]
	str	r2, [r3, #472]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	add	r4, r2, #180
	add	r5, r3, #256
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7, #12]
	adds	r3, r3, #36
	mov	r0, r3
	movs	r1, #0
	movs	r2, #36
	bl	memset(PLT)
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #12]
	add	r4, r2, #72
	add	r5, r3, #36
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #12]
	add	r4, r2, #108
	add	r5, r3, #36
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
.L582:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #20]
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #8]
	ldr	r3, [r7, #12]
	adds	r3, r3, #24
	ldr	r2, [r7, #24]
	ldrh	r2, [r2, #24]
	adds	r2, r2, #32
	mov	r0, r2
	add	r2, r7, #16
	str	r0, [sp]
	mov	r0, r1
	mov	r1, r2
	movs	r2, #4
	bl	Update_Max(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #16]
	mov	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L585
	ldr	r3, [r7, #20]
	b	.L588
.L585:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #388]
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #8]
	ldr	r3, [r7, #12]
	add	r3, r3, #392
	ldr	r2, [r7, #24]
	ldrh	r2, [r2, #26]
	mov	r0, r2
	add	r2, r7, #16
	str	r0, [sp]
	mov	r0, r1
	mov	r1, r2
	movs	r2, #1
	bl	Update_Max(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #16]
	uxth	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #388]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L587
	ldr	r3, [r7, #20]
	b	.L588
.L587:
	ldr	r3, [r7, #12]
	movs	r2, #0
	strh	r2, [r3, #152]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #0
	strh	r2, [r3, #154]	@ movhi
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #12]
	add	r4, r2, #72
	add	r5, r3, #144
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #12]
	add	r4, r2, #108
	add	r5, r3, #144
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #12]
	add	r4, r2, #36
	add	r5, r3, #144
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #488]
	movs	r3, #0
.L588:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.size	TT_Load_Context, .-TT_Load_Context
	.section	.text.TT_Save_Context,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	TT_Save_Context, %function
TT_Save_Context:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #396]
	ldr	r3, [r7]
	str	r2, [r3, #116]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #408]
	ldr	r3, [r7]
	str	r2, [r3, #128]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #420]
	ldr	r3, [r7]
	str	r2, [r3, #140]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #424]
	ldr	r3, [r7]
	str	r2, [r3, #144]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L590
.L591:
	ldr	r3, [r7]
	ldr	r2, [r7, #12]
	adds	r2, r2, #18
	lsls	r2, r2, #3
	add	r2, r2, r3
	ldr	r1, [r7, #4]
	ldr	r3, [r7, #12]
	adds	r3, r3, #55
	lsls	r3, r3, #3
	add	r3, r3, r1
	adds	r2, r2, #4
	adds	r3, r3, #4
	ldmia	r3, {r0, r1}
	stmia	r2, {r0, r1}
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L590:
	ldr	r3, [r7, #12]
	cmp	r3, #2
	ble	.L591
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TT_Save_Context, .-TT_Save_Context
	.section	.text.TT_Run_Context,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	TT_Run_Context, %function
TT_Run_Context:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	movs	r1, #3
	movs	r2, #0
	bl	TT_Goto_CodeRange(PLT)
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #4]
	add	r4, r2, #36
	add	r5, r3, #144
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #4]
	add	r4, r2, #72
	add	r5, r3, #144
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #4]
	add	r4, r2, #108
	add	r5, r3, #144
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7, #4]
	movs	r2, #1
	strh	r2, [r3, #344]	@ movhi
	ldr	r3, [r7, #4]
	movs	r2, #1
	strh	r2, [r3, #346]	@ movhi
	ldr	r3, [r7, #4]
	movs	r2, #1
	strh	r2, [r3, #348]	@ movhi
	ldr	r3, [r7, #4]
	mov	r2, #16384
	strh	r2, [r3, #294]	@ movhi
	ldr	r3, [r7, #4]
	movs	r2, #0
	strh	r2, [r3, #296]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #4]
	add	r3, r3, #298
	add	r2, r2, #294
	ldr	r2, [r2]	@ unaligned
	str	r2, [r3]	@ unaligned
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #4]
	add	r3, r3, #290
	add	r2, r2, #294
	ldr	r2, [r2]	@ unaligned
	str	r2, [r3]	@ unaligned
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #312]
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #304]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #428]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #652]
	ldr	r0, [r7, #4]
	blx	r3
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.size	TT_Run_Context, .-TT_Run_Context
	.global	tt_default_graphics_state
	.section	.rodata.tt_default_graphics_state,"a",%progbits
	.align	2
	.type	tt_default_graphics_state, %object
	.size	tt_default_graphics_state, 68
tt_default_graphics_state:
	.short	0
	.short	0
	.short	0
	.short	16384
	.short	0
	.short	16384
	.short	0
	.short	16384
	.short	0
	.space	2
	.word	1
	.word	64
	.word	1
	.byte	1
	.space	3
	.word	68
	.word	0
	.word	0
	.short	9
	.short	3
	.byte	0
	.byte	0
	.space	2
	.word	0
	.short	1
	.short	1
	.short	1
	.space	2
	.section	.text.TT_New_Context,"ax",%progbits
	.align	2
	.global	TT_New_Context
	.thumb
	.thumb_func
	.type	TT_New_Context, %function
TT_New_Context:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L595
	b	.L596
.L595:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	str	r3, [r7, #16]
	add	r3, r7, #12
	ldr	r0, [r7, #16]
	mov	r1, #640
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L597
	b	.L596
.L597:
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #16]
	bl	Init_Context(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L598
	b	.L596
.L598:
	ldr	r3, [r7, #20]
	b	.L600
.L596:
	movs	r3, #0
.L600:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	TT_New_Context, .-TT_New_Context
	.section	.rodata.Pop_Push_Count,"a",%progbits
	.align	2
	.type	Pop_Push_Count, %object
	.size	Pop_Push_Count, 256
Pop_Push_Count:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	2
	.byte	2
	.byte	0
	.byte	80
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	0
	.byte	0
	.byte	16
	.byte	0
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	18
	.byte	16
	.byte	0
	.byte	34
	.byte	1
	.byte	17
	.byte	16
	.byte	32
	.byte	0
	.byte	16
	.byte	32
	.byte	16
	.byte	16
	.byte	0
	.byte	16
	.byte	16
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	0
	.byte	32
	.byte	32
	.byte	0
	.byte	0
	.byte	32
	.byte	32
	.byte	0
	.byte	0
	.byte	32
	.byte	17
	.byte	32
	.byte	17
	.byte	17
	.byte	17
	.byte	32
	.byte	33
	.byte	33
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	16
	.byte	33
	.byte	33
	.byte	33
	.byte	33
	.byte	33
	.byte	33
	.byte	17
	.byte	17
	.byte	16
	.byte	0
	.byte	33
	.byte	33
	.byte	17
	.byte	16
	.byte	16
	.byte	16
	.byte	33
	.byte	33
	.byte	33
	.byte	33
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	32
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	32
	.byte	32
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	16
	.byte	16
	.byte	0
	.byte	32
	.byte	32
	.byte	0
	.byte	0
	.byte	16
	.byte	32
	.byte	32
	.byte	17
	.byte	16
	.byte	51
	.byte	33
	.byte	33
	.byte	16
	.byte	32
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.section	.rodata.opcode_length,"a",%progbits
	.align	2
	.type	opcode_length, %object
	.size	opcode_length, 256
opcode_length:
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
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	-1
	.byte	-2
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
	.byte	1
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	3
	.byte	5
	.byte	7
	.byte	9
	.byte	11
	.byte	13
	.byte	15
	.byte	17
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
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.section	.text.TT_MulFix14_arm,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	TT_MulFix14_arm, %function
TT_MulFix14_arm:
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
@ 1265 "../../../libs/freetype/src/truetype/ttinterp.c" 1
	smull  r0, r1, r2, r3
	mov    r3, r1, asr #31
	add    r3, r3, #0x2000
	adds   r0, r0, r3
	adc    r1, r1, #0
	mov    r3, r0, lsr #14
	orr    r3, r3, r1, lsl #18
	
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
	.size	TT_MulFix14_arm, .-TT_MulFix14_arm
	.section	.text.TT_DotFix14_long_long,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	TT_DotFix14_long_long, %function
TT_DotFix14_long_long:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	mov	r0, r3
	asr	r1, r0, #31
	ldr	r3, [r7, #4]
	mov	r2, r3
	asr	r3, r2, #31
	mul	lr, r2, r1
	mul	r6, r0, r3
	add	r6, r6, lr
	umull	r2, r3, r0, r2
	adds	r1, r6, r3
	mov	r3, r1
	strd	r2, [r7, #24]
	strd	r2, [r7, #24]
	ldr	r3, [r7, #8]
	mov	r0, r3
	asr	r1, r0, #31
	ldr	r3, [r7]
	mov	r2, r3
	asr	r3, r2, #31
	mul	lr, r2, r1
	mul	r6, r0, r3
	add	r6, r6, lr
	umull	r2, r3, r0, r2
	adds	r1, r6, r3
	mov	r3, r1
	strd	r2, [r7, #16]
	strd	r2, [r7, #16]
	ldrd	r0, [r7, #24]
	ldrd	r2, [r7, #16]
	adds	r2, r2, r0
	adc	r3, r3, r1
	strd	r2, [r7, #24]
	ldrd	r2, [r7, #24]
	asr	r8, r3, #31
	asr	r9, r3, #31
	strd	r8, [r7, #16]
	ldrd	r2, [r7, #16]
	adds	r2, r2, #8192
	adc	r3, r3, #0
	ldrd	r0, [r7, #24]
	adds	r2, r2, r0
	adc	r3, r3, r1
	strd	r2, [r7, #24]
	ldrd	r2, [r7, #24]
	lsrs	r4, r2, #14
	orr	r4, r4, r3, lsl #18
	asrs	r5, r3, #14
	mov	r3, r4
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
	.size	TT_DotFix14_long_long, .-TT_DotFix14_long_long
	.section	.text.Current_Ratio,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Current_Ratio, %function
Current_Ratio:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #256]
	cmp	r3, #0
	bne	.L606
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #296]
	cmp	r3, #0
	bne	.L607
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #244]
	ldr	r3, [r7, #4]
	str	r2, [r3, #256]
	b	.L606
.L607:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #294]
	cmp	r3, #0
	bne	.L608
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #248]
	ldr	r3, [r7, #4]
	str	r2, [r3, #256]
	b	.L606
.L608:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #244]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #294]
	sxth	r3, r3
	mov	r0, r2
	mov	r1, r3
	bl	TT_MulFix14_arm(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #248]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #296]
	sxth	r3, r3
	mov	r0, r2
	mov	r1, r3
	bl	TT_MulFix14_arm(PLT)
	str	r0, [r7, #8]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	FT_Hypot(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #256]
.L606:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #256]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	Current_Ratio, .-Current_Ratio
	.section	.text.Current_Ppem,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Current_Ppem, %function
Current_Ppem:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #252]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Current_Ppem, .-Current_Ppem
	.section	.text.Current_Ppem_Stretched,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Current_Ppem_Stretched, %function
Current_Ppem_Stretched:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #252]
	mov	r4, r3
	ldr	r0, [r7, #4]
	bl	Current_Ratio(PLT)
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	Current_Ppem_Stretched, .-Current_Ppem_Stretched
	.section	.text.Read_CVT,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Read_CVT, %function
Read_CVT:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #384]
	ldr	r3, [r7]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Read_CVT, .-Read_CVT
	.section	.text.Read_CVT_Stretched,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Read_CVT_Stretched, %function
Read_CVT_Stretched:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #384]
	ldr	r3, [r7]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r4, [r3]
	ldr	r0, [r7, #4]
	bl	Current_Ratio(PLT)
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	Read_CVT_Stretched, .-Read_CVT_Stretched
	.section	.text.Write_CVT,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Write_CVT, %function
Write_CVT:
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
	ldr	r2, [r3, #384]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r7, #4]
	str	r2, [r3]
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Write_CVT, .-Write_CVT
	.section	.text.Write_CVT_Stretched,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Write_CVT_Stretched, %function
Write_CVT_Stretched:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #384]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #2
	adds	r4, r2, r3
	ldr	r0, [r7, #12]
	bl	Current_Ratio(PLT)
	mov	r3, r0
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	FT_DivFix(PLT)
	mov	r3, r0
	str	r3, [r4]
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	Write_CVT_Stretched, .-Write_CVT_Stretched
	.section	.text.Move_CVT,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Move_CVT, %function
Move_CVT:
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
	ldr	r2, [r3, #384]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r7, #12]
	ldr	r1, [r2, #384]
	ldr	r2, [r7, #8]
	lsls	r2, r2, #2
	add	r2, r2, r1
	ldr	r1, [r2]
	ldr	r2, [r7, #4]
	add	r2, r2, r1
	str	r2, [r3]
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Move_CVT, .-Move_CVT
	.section	.text.Move_CVT_Stretched,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Move_CVT_Stretched, %function
Move_CVT_Stretched:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #384]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #2
	adds	r4, r2, r3
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #384]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r5, [r3]
	ldr	r0, [r7, #12]
	bl	Current_Ratio(PLT)
	mov	r3, r0
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	FT_DivFix(PLT)
	mov	r3, r0
	add	r3, r3, r5
	str	r3, [r4]
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.size	Move_CVT_Stretched, .-Move_CVT_Stretched
	.section	.text.GetShortIns,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	GetShortIns, %function
GetShortIns:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #360]
	adds	r2, r3, #2
	ldr	r3, [r7, #4]
	str	r2, [r3, #360]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #356]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #360]
	subs	r3, r3, #2
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #356]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #360]
	subs	r3, r3, #1
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	add	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	sxth	r3, r3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	GetShortIns, .-GetShortIns
	.section	.text.Ins_Goto_CodeRange,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_Goto_CodeRange, %function
Ins_Goto_CodeRange:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	ble	.L625
	ldr	r3, [r7, #8]
	cmp	r3, #3
	ble	.L626
.L625:
	ldr	r3, [r7, #12]
	movs	r2, #132
	str	r2, [r3, #12]
	movs	r3, #1
	b	.L627
.L626:
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	adds	r3, r3, #55
	lsls	r3, r3, #3
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L628
	ldr	r3, [r7, #12]
	movs	r2, #138
	str	r2, [r3, #12]
	movs	r3, #1
	b	.L627
.L628:
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bge	.L629
	ldr	r3, [r7, #12]
	movs	r2, #131
	str	r2, [r3, #12]
	movs	r3, #1
	b	.L627
.L629:
	ldr	r3, [r7, #20]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	str	r2, [r3, #356]
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	str	r2, [r3, #364]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #360]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #352]
	movs	r3, #0
.L627:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Ins_Goto_CodeRange, .-Ins_Goto_CodeRange
	.section	.text.Direct_Move,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Direct_Move, %function
Direct_Move:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r3, [r7]
	mov	r3, r2	@ movhi
	strh	r3, [r7, #6]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #298]
	sxth	r3, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L631
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #96]
	ldr	r3, [r3, #64]
	cmp	r3, #38
	bne	.L632
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #617]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L632
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #632]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L633
.L632:
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #16]
	ldrh	r3, [r7, #6]
	lsls	r3, r3, #3
	adds	r4, r2, r3
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #16]
	ldrh	r3, [r7, #6]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r5, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #564]
	ldr	r0, [r7]
	ldr	r1, [r7, #20]
	mov	r2, r3
	bl	FT_MulDiv(PLT)
	mov	r3, r0
	add	r3, r3, r5
	str	r3, [r4]
.L633:
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #24]
	ldrh	r3, [r7, #6]
	add	r3, r3, r2
	ldr	r2, [r7, #8]
	ldr	r1, [r2, #24]
	ldrh	r2, [r7, #6]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	orr	r2, r2, #8
	uxtb	r2, r2
	strb	r2, [r3]
.L631:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #300]
	sxth	r3, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L630
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #16]
	ldrh	r3, [r7, #6]
	lsls	r3, r3, #3
	adds	r4, r2, r3
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #16]
	ldrh	r3, [r7, #6]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r5, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #564]
	ldr	r0, [r7]
	ldr	r1, [r7, #20]
	mov	r2, r3
	bl	FT_MulDiv(PLT)
	mov	r3, r0
	add	r3, r3, r5
	str	r3, [r4, #4]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #24]
	ldrh	r3, [r7, #6]
	add	r3, r3, r2
	ldr	r2, [r7, #8]
	ldr	r1, [r2, #24]
	ldrh	r2, [r7, #6]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	orr	r2, r2, #16
	uxtb	r2, r2
	strb	r2, [r3]
.L630:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.size	Direct_Move, .-Direct_Move
	.section	.text.Direct_Move_Orig,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Direct_Move_Orig, %function
Direct_Move_Orig:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r3, [r7]
	mov	r3, r2	@ movhi
	strh	r3, [r7, #6]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #298]
	sxth	r3, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L636
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #12]
	ldrh	r3, [r7, #6]
	lsls	r3, r3, #3
	adds	r4, r2, r3
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #12]
	ldrh	r3, [r7, #6]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r5, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #564]
	ldr	r0, [r7]
	ldr	r1, [r7, #20]
	mov	r2, r3
	bl	FT_MulDiv(PLT)
	mov	r3, r0
	add	r3, r3, r5
	str	r3, [r4]
.L636:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #300]
	sxth	r3, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L635
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #12]
	ldrh	r3, [r7, #6]
	lsls	r3, r3, #3
	adds	r4, r2, r3
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #12]
	ldrh	r3, [r7, #6]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r5, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #564]
	ldr	r0, [r7]
	ldr	r1, [r7, #20]
	mov	r2, r3
	bl	FT_MulDiv(PLT)
	mov	r3, r0
	add	r3, r3, r5
	str	r3, [r4, #4]
.L635:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.size	Direct_Move_Orig, .-Direct_Move_Orig
	.section	.text.Direct_Move_X,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Direct_Move_X, %function
Direct_Move_X:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r3, [r7]
	mov	r3, r2	@ movhi
	strh	r3, [r7, #6]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #96]
	ldr	r3, [r3, #64]
	cmp	r3, #38
	bne	.L639
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #617]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L640
.L639:
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #16]
	ldrh	r3, [r7, #6]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r7, #8]
	ldr	r1, [r2, #16]
	ldrh	r2, [r7, #6]
	lsls	r2, r2, #3
	add	r2, r2, r1
	ldr	r1, [r2]
	ldr	r2, [r7]
	add	r2, r2, r1
	str	r2, [r3]
.L640:
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #24]
	ldrh	r3, [r7, #6]
	add	r3, r3, r2
	ldr	r2, [r7, #8]
	ldr	r1, [r2, #24]
	ldrh	r2, [r7, #6]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	orr	r2, r2, #8
	uxtb	r2, r2
	strb	r2, [r3]
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Direct_Move_X, .-Direct_Move_X
	.section	.text.Direct_Move_Y,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Direct_Move_Y, %function
Direct_Move_Y:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r3, [r7]
	mov	r3, r2	@ movhi
	strh	r3, [r7, #6]	@ movhi
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #16]
	ldrh	r3, [r7, #6]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r7, #8]
	ldr	r1, [r2, #16]
	ldrh	r2, [r7, #6]
	lsls	r2, r2, #3
	add	r2, r2, r1
	ldr	r1, [r2, #4]
	ldr	r2, [r7]
	add	r2, r2, r1
	str	r2, [r3, #4]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #24]
	ldrh	r3, [r7, #6]
	add	r3, r3, r2
	ldr	r2, [r7, #8]
	ldr	r1, [r2, #24]
	ldrh	r2, [r7, #6]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	orr	r2, r2, #16
	uxtb	r2, r2
	strb	r2, [r3]
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Direct_Move_Y, .-Direct_Move_Y
	.section	.text.Direct_Move_Orig_X,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Direct_Move_Orig_X, %function
Direct_Move_Orig_X:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r3, [r7]
	mov	r3, r2	@ movhi
	strh	r3, [r7, #6]	@ movhi
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #12]
	ldrh	r3, [r7, #6]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r7, #8]
	ldr	r1, [r2, #12]
	ldrh	r2, [r7, #6]
	lsls	r2, r2, #3
	add	r2, r2, r1
	ldr	r1, [r2]
	ldr	r2, [r7]
	add	r2, r2, r1
	str	r2, [r3]
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Direct_Move_Orig_X, .-Direct_Move_Orig_X
	.section	.text.Direct_Move_Orig_Y,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Direct_Move_Orig_Y, %function
Direct_Move_Orig_Y:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r3, [r7]
	mov	r3, r2	@ movhi
	strh	r3, [r7, #6]	@ movhi
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #12]
	ldrh	r3, [r7, #6]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r7, #8]
	ldr	r1, [r2, #12]
	ldrh	r2, [r7, #6]
	lsls	r2, r2, #3
	add	r2, r2, r1
	ldr	r1, [r2, #4]
	ldr	r2, [r7]
	add	r2, r2, r1
	str	r2, [r3, #4]
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Direct_Move_Orig_Y, .-Direct_Move_Orig_Y
	.section	.text.Round_None,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Round_None, %function
Round_None:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	blt	.L645
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bge	.L647
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L647
.L645:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	subs	r3, r2, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	ble	.L647
	movs	r3, #0
	str	r3, [r7, #20]
.L647:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Round_None, .-Round_None
	.section	.text.Round_To_Grid,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Round_To_Grid, %function
Round_To_Grid:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	blt	.L650
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #32
	bic	r3, r3, #63
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bge	.L652
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L652
.L650:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #8]
	subs	r3, r2, r3
	adds	r3, r3, #32
	bic	r3, r3, #63
	negs	r3, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	ble	.L652
	movs	r3, #0
	str	r3, [r7, #20]
.L652:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Round_To_Grid, .-Round_To_Grid
	.section	.text.Round_To_Half_Grid,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Round_To_Half_Grid, %function
Round_To_Half_Grid:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	blt	.L655
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	bic	r3, r3, #63
	adds	r3, r3, #32
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bge	.L657
	movs	r3, #32
	str	r3, [r7, #20]
	b	.L657
.L655:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #8]
	subs	r3, r2, r3
	bic	r2, r3, #63
	movw	r3, #65504
	movt	r3, 65535
	subs	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	ble	.L657
	mvn	r3, #31
	str	r3, [r7, #20]
.L657:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Round_To_Half_Grid, .-Round_To_Half_Grid
	.section	.text.Round_Down_To_Grid,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Round_Down_To_Grid, %function
Round_Down_To_Grid:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	blt	.L660
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	bic	r3, r3, #63
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bge	.L662
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L662
.L660:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #8]
	subs	r3, r2, r3
	bic	r3, r3, #63
	negs	r3, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	ble	.L662
	movs	r3, #0
	str	r3, [r7, #20]
.L662:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Round_Down_To_Grid, .-Round_Down_To_Grid
	.section	.text.Round_Up_To_Grid,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Round_Up_To_Grid, %function
Round_Up_To_Grid:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	blt	.L665
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #63
	bic	r3, r3, #63
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bge	.L667
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L667
.L665:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #8]
	subs	r3, r2, r3
	adds	r3, r3, #63
	bic	r3, r3, #63
	negs	r3, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	ble	.L667
	movs	r3, #0
	str	r3, [r7, #20]
.L667:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Round_Up_To_Grid, .-Round_Up_To_Grid
	.section	.text.Round_To_Double_Grid,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Round_To_Double_Grid, %function
Round_To_Double_Grid:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	blt	.L670
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #16
	bic	r3, r3, #31
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bge	.L672
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L672
.L670:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #8]
	subs	r3, r2, r3
	adds	r3, r3, #16
	bic	r3, r3, #31
	negs	r3, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	ble	.L672
	movs	r3, #0
	str	r3, [r7, #20]
.L672:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Round_To_Double_Grid, .-Round_To_Double_Grid
	.section	.text.Round_Super,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Round_Super, %function
Round_Super:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	blt	.L675
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #480]
	ldr	r2, [r7, #8]
	subs	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #484]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #476]
	negs	r3, r3
	ands	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #480]
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bge	.L677
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #480]
	str	r3, [r7, #20]
	b	.L677
.L675:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #484]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #480]
	subs	r2, r2, r3
	ldr	r3, [r7, #8]
	subs	r2, r2, r3
	ldr	r3, [r7, #4]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #476]
	negs	r3, r3
	ands	r3, r3, r2
	negs	r3, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #480]
	ldr	r2, [r7, #20]
	subs	r3, r2, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	ble	.L677
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #480]
	negs	r3, r3
	str	r3, [r7, #20]
.L677:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Round_Super, .-Round_Super
	.global	__aeabi_idiv
	.section	.text.Round_Super_45,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Round_Super_45, %function
Round_Super_45:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	blt	.L680
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #480]
	ldr	r2, [r7, #8]
	subs	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #484]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #476]
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv(PLT)
	mov	r3, r0
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #476]
	mul	r3, r2, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #480]
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bge	.L682
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #480]
	str	r3, [r7, #20]
	b	.L682
.L680:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #484]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #480]
	subs	r2, r2, r3
	ldr	r3, [r7, #8]
	subs	r2, r2, r3
	ldr	r3, [r7, #4]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #476]
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv(PLT)
	mov	r3, r0
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #476]
	mul	r3, r2, r3
	negs	r3, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #480]
	ldr	r2, [r7, #20]
	subs	r3, r2, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	ble	.L682
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #480]
	negs	r3, r3
	str	r3, [r7, #20]
.L682:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	Round_Super_45, .-Round_Super_45
	.section	.text.Compute_Round,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Compute_Round, %function
Compute_Round:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #7
	bhi	.L684
	adr	r1, .L687
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L687:
	.word	.L686+1-.L687
	.word	.L688+1-.L687
	.word	.L689+1-.L687
	.word	.L690+1-.L687
	.word	.L691+1-.L687
	.word	.L692+1-.L687
	.word	.L693+1-.L687
	.word	.L694+1-.L687
.L692:
	ldr	r3, [r7, #4]
	ldr	r2, .L695
.LPIC22:
	add	r2, pc
	str	r2, [r3, #568]
	b	.L684
.L688:
	ldr	r3, [r7, #4]
	ldr	r2, .L695+4
.LPIC23:
	add	r2, pc
	str	r2, [r3, #568]
	b	.L684
.L691:
	ldr	r3, [r7, #4]
	ldr	r2, .L695+8
.LPIC24:
	add	r2, pc
	str	r2, [r3, #568]
	b	.L684
.L690:
	ldr	r3, [r7, #4]
	ldr	r2, .L695+12
.LPIC25:
	add	r2, pc
	str	r2, [r3, #568]
	b	.L684
.L686:
	ldr	r3, [r7, #4]
	ldr	r2, .L695+16
.LPIC26:
	add	r2, pc
	str	r2, [r3, #568]
	b	.L684
.L689:
	ldr	r3, [r7, #4]
	ldr	r2, .L695+20
.LPIC27:
	add	r2, pc
	str	r2, [r3, #568]
	b	.L684
.L693:
	ldr	r3, [r7, #4]
	ldr	r2, .L695+24
.LPIC28:
	add	r2, pc
	str	r2, [r3, #568]
	b	.L684
.L694:
	ldr	r3, [r7, #4]
	ldr	r2, .L695+28
.LPIC29:
	add	r2, pc
	str	r2, [r3, #568]
	nop
.L684:
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L696:
	.align	2
.L695:
	.word	Round_None-(.LPIC22+4)
	.word	Round_To_Grid-(.LPIC23+4)
	.word	Round_Up_To_Grid-(.LPIC24+4)
	.word	Round_Down_To_Grid-(.LPIC25+4)
	.word	Round_To_Half_Grid-(.LPIC26+4)
	.word	Round_To_Double_Grid-(.LPIC27+4)
	.word	Round_Super-(.LPIC28+4)
	.word	Round_Super_45-(.LPIC29+4)
	.size	Compute_Round, .-Compute_Round
	.section	.text.SetSuperRound,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	SetSuperRound, %function
SetSuperRound:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	mov	r3, r1
	str	r2, [r7, #4]
	strh	r3, [r7, #10]	@ movhi
	ldr	r3, [r7, #4]
	and	r3, r3, #192
	cmp	r3, #64
	beq	.L699
	cmp	r3, #64
	bgt	.L700
	cmp	r3, #0
	beq	.L701
	b	.L698
.L700:
	cmp	r3, #128
	beq	.L702
	cmp	r3, #192
	beq	.L703
	b	.L698
.L701:
	ldrsh	r3, [r7, #10]
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	uxth	r3, r3
	sxth	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #476]
	b	.L698
.L699:
	ldrsh	r2, [r7, #10]
	ldr	r3, [r7, #12]
	str	r2, [r3, #476]
	b	.L698
.L702:
	ldrsh	r3, [r7, #10]
	lsls	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #476]
	b	.L698
.L703:
	ldrsh	r2, [r7, #10]
	ldr	r3, [r7, #12]
	str	r2, [r3, #476]
	nop
.L698:
	ldr	r3, [r7, #4]
	and	r3, r3, #48
	cmp	r3, #16
	beq	.L705
	cmp	r3, #16
	bgt	.L706
	cmp	r3, #0
	beq	.L707
	b	.L704
.L706:
	cmp	r3, #32
	beq	.L708
	cmp	r3, #48
	beq	.L709
	b	.L704
.L707:
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #480]
	b	.L704
.L705:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #476]
	adds	r2, r3, #3
	cmp	r3, #0
	ite	lt
	movlt	r3, r2
	movge	r3, r3
	asrs	r3, r3, #2
	mov	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #480]
	b	.L704
.L708:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #476]
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	mov	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #480]
	b	.L704
.L709:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #476]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	adds	r2, r3, #3
	cmp	r3, #0
	ite	lt
	movlt	r3, r2
	movge	r3, r3
	asrs	r3, r3, #2
	mov	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #480]
	nop
.L704:
	ldr	r3, [r7, #4]
	and	r3, r3, #15
	cmp	r3, #0
	bne	.L710
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #476]
	subs	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #484]
	b	.L711
.L710:
	ldr	r3, [r7, #4]
	and	r3, r3, #15
	subs	r3, r3, #4
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #476]
	mul	r3, r2, r3
	adds	r2, r3, #7
	cmp	r3, #0
	ite	lt
	movlt	r3, r2
	movge	r3, r3
	asrs	r3, r3, #3
	mov	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #484]
.L711:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #476]
	asrs	r2, r3, #8
	ldr	r3, [r7, #12]
	str	r2, [r3, #476]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #480]
	asrs	r2, r3, #8
	ldr	r3, [r7, #12]
	str	r2, [r3, #480]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #484]
	asrs	r2, r3, #8
	ldr	r3, [r7, #12]
	str	r2, [r3, #484]
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	SetSuperRound, .-SetSuperRound
	.section	.text.Project,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Project, %function
Project:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #294]
	sxth	r2, r3
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #296]
	sxth	r3, r3
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #4]
	bl	TT_DotFix14_long_long(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	Project, .-Project
	.section	.text.Dual_Project,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Dual_Project, %function
Dual_Project:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #290]
	sxth	r2, r3
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #292]
	sxth	r3, r3
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #4]
	bl	TT_DotFix14_long_long(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	Dual_Project, .-Dual_Project
	.section	.text.Project_x,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Project_x, %function
Project_x:
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
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Project_x, .-Project_x
	.section	.text.Project_y,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Project_y, %function
Project_y:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Project_y, .-Project_y
	.section	.text.Compute_Funcs,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Compute_Funcs, %function
Compute_Funcs:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #298]
	sxth	r3, r3
	cmp	r3, #16384
	bne	.L721
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #294]
	sxth	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #564]
	b	.L722
.L721:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #300]
	sxth	r3, r3
	cmp	r3, #16384
	bne	.L723
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #296]
	sxth	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #564]
	b	.L722
.L723:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #294]
	sxth	r3, r3
	ldr	r2, [r7, #4]
	ldrh	r2, [r2, #298]
	sxth	r2, r2
	mul	r2, r2, r3
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #296]
	sxth	r3, r3
	ldr	r1, [r7, #4]
	ldrh	r1, [r1, #300]
	sxth	r1, r1
	mul	r3, r1, r3
	add	r3, r3, r2
	asrs	r2, r3, #14
	ldr	r3, [r7, #4]
	str	r2, [r3, #564]
.L722:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #294]
	sxth	r3, r3
	cmp	r3, #16384
	bne	.L724
	ldr	r3, [r7, #4]
	ldr	r2, .L733
.LPIC30:
	add	r2, pc
	str	r2, [r3, #572]
	b	.L725
.L724:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #296]
	sxth	r3, r3
	cmp	r3, #16384
	bne	.L726
	ldr	r3, [r7, #4]
	ldr	r2, .L733+4
.LPIC31:
	add	r2, pc
	str	r2, [r3, #572]
	b	.L725
.L726:
	ldr	r3, [r7, #4]
	ldr	r2, .L733+8
.LPIC32:
	add	r2, pc
	str	r2, [r3, #572]
.L725:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #290]
	sxth	r3, r3
	cmp	r3, #16384
	bne	.L727
	ldr	r3, [r7, #4]
	ldr	r2, .L733+12
.LPIC33:
	add	r2, pc
	str	r2, [r3, #576]
	b	.L728
.L727:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #292]
	sxth	r3, r3
	cmp	r3, #16384
	bne	.L729
	ldr	r3, [r7, #4]
	ldr	r2, .L733+16
.LPIC34:
	add	r2, pc
	str	r2, [r3, #576]
	b	.L728
.L729:
	ldr	r3, [r7, #4]
	ldr	r2, .L733+20
.LPIC35:
	add	r2, pc
	str	r2, [r3, #576]
.L728:
	ldr	r3, [r7, #4]
	ldr	r2, .L733+24
.LPIC36:
	add	r2, pc
	str	r2, [r3, #584]
	ldr	r3, [r7, #4]
	ldr	r2, .L733+28
.LPIC37:
	add	r2, pc
	str	r2, [r3, #588]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #564]
	cmp	r3, #16384
	bne	.L730
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #298]
	sxth	r3, r3
	cmp	r3, #16384
	bne	.L731
	ldr	r3, [r7, #4]
	ldr	r2, .L733+32
.LPIC38:
	add	r2, pc
	str	r2, [r3, #584]
	ldr	r3, [r7, #4]
	ldr	r2, .L733+36
.LPIC39:
	add	r2, pc
	str	r2, [r3, #588]
	b	.L730
.L731:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #300]
	sxth	r3, r3
	cmp	r3, #16384
	bne	.L730
	ldr	r3, [r7, #4]
	ldr	r2, .L733+40
.LPIC40:
	add	r2, pc
	str	r2, [r3, #584]
	ldr	r3, [r7, #4]
	ldr	r2, .L733+44
.LPIC41:
	add	r2, pc
	str	r2, [r3, #588]
.L730:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #564]
	cmn	r3, #1024
	ble	.L732
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #564]
	cmp	r3, #1024
	bge	.L732
	ldr	r3, [r7, #4]
	mov	r2, #16384
	str	r2, [r3, #564]
.L732:
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #256]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L734:
	.align	2
.L733:
	.word	Project_x-(.LPIC30+4)
	.word	Project_y-(.LPIC31+4)
	.word	Project-(.LPIC32+4)
	.word	Project_x-(.LPIC33+4)
	.word	Project_y-(.LPIC34+4)
	.word	Dual_Project-(.LPIC35+4)
	.word	Direct_Move-(.LPIC36+4)
	.word	Direct_Move_Orig-(.LPIC37+4)
	.word	Direct_Move_X-(.LPIC38+4)
	.word	Direct_Move_Orig_X-(.LPIC39+4)
	.word	Direct_Move_Y-(.LPIC40+4)
	.word	Direct_Move_Orig_Y-(.LPIC41+4)
	.size	Compute_Funcs, .-Compute_Funcs
	.section	.text.Normalize,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Normalize, %function
Normalize:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L736
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L736
	movs	r3, #0
	b	.L738
.L736:
	ldr	r3, [r7, #12]
	str	r3, [r7, #16]
	ldr	r3, [r7, #8]
	str	r3, [r7, #20]
	add	r3, r7, #16
	mov	r0, r3
	bl	FT_Vector_NormLen(PLT)
	ldr	r3, [r7, #16]
	adds	r2, r3, #3
	cmp	r3, #0
	ite	lt
	movlt	r3, r2
	movge	r3, r3
	asrs	r3, r3, #2
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #20]
	adds	r2, r3, #3
	cmp	r3, #0
	ite	lt
	movlt	r3, r2
	movge	r3, r3
	asrs	r3, r3, #2
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #2]	@ movhi
	movs	r3, #0
.L738:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	Normalize, .-Normalize
	.section	.text.Ins_MPPEM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_MPPEM, %function
Ins_MPPEM:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #592]
	ldr	r0, [r7, #4]
	blx	r3
	mov	r2, r0
	ldr	r3, [r7]
	str	r2, [r3]
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	Ins_MPPEM, .-Ins_MPPEM
	.section	.text.Ins_MPS,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_MPS, %function
Ins_MPS:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #592]
	ldr	r0, [r7, #4]
	blx	r3
	mov	r2, r0
	ldr	r3, [r7]
	str	r2, [r3]
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	Ins_MPS, .-Ins_MPS
	.section	.text.Ins_DUP,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_DUP, %function
Ins_DUP:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	ldr	r2, [r7, #4]
	ldr	r2, [r2]
	str	r2, [r3]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Ins_DUP, .-Ins_DUP
	.section	.text.Ins_POP,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_POP, %function
Ins_POP:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Ins_POP, .-Ins_POP
	.section	.text.Ins_CLEAR,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_CLEAR, %function
Ins_CLEAR:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #32]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Ins_CLEAR, .-Ins_CLEAR
	.section	.text.Ins_SWAP,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_SWAP, %function
Ins_SWAP:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	ldr	r2, [r7, #12]
	str	r2, [r3]
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Ins_SWAP, .-Ins_SWAP
	.section	.text.Ins_DEPTH,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_DEPTH, %function
Ins_DEPTH:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #16]
	ldr	r3, [r7]
	str	r2, [r3]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Ins_DEPTH, .-Ins_DEPTH
	.section	.text.Ins_LT,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_LT, %function
Ins_LT:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	ldr	r3, [r3]
	cmp	r2, r3
	ite	lt
	movlt	r3, #1
	movge	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Ins_LT, .-Ins_LT
	.section	.text.Ins_LTEQ,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_LTEQ, %function
Ins_LTEQ:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	ldr	r3, [r3]
	cmp	r2, r3
	ite	le
	movle	r3, #1
	movgt	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Ins_LTEQ, .-Ins_LTEQ
	.section	.text.Ins_GT,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_GT, %function
Ins_GT:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	ldr	r3, [r3]
	cmp	r2, r3
	ite	gt
	movgt	r3, #1
	movle	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Ins_GT, .-Ins_GT
	.section	.text.Ins_GTEQ,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_GTEQ, %function
Ins_GTEQ:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	ldr	r3, [r3]
	cmp	r2, r3
	ite	ge
	movge	r3, #1
	movlt	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Ins_GTEQ, .-Ins_GTEQ
	.section	.text.Ins_EQ,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_EQ, %function
Ins_EQ:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	ldr	r3, [r3]
	cmp	r2, r3
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Ins_EQ, .-Ins_EQ
	.section	.text.Ins_NEQ,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_NEQ, %function
Ins_NEQ:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	ldr	r3, [r3]
	cmp	r2, r3
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Ins_NEQ, .-Ins_NEQ
	.section	.text.Ins_ODD,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_ODD, %function
Ins_ODD:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #568]
	ldr	r2, [r7]
	ldr	r2, [r2]
	ldr	r0, [r7, #4]
	mov	r1, r2
	movs	r2, #0
	blx	r3
	mov	r3, r0
	and	r3, r3, #127
	cmp	r3, #64
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [r7]
	str	r2, [r3]
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	Ins_ODD, .-Ins_ODD
	.section	.text.Ins_EVEN,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_EVEN, %function
Ins_EVEN:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #568]
	ldr	r2, [r7]
	ldr	r2, [r2]
	ldr	r0, [r7, #4]
	mov	r1, r2
	movs	r2, #0
	blx	r3
	mov	r3, r0
	and	r3, r3, #127
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [r7]
	str	r2, [r3]
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	Ins_EVEN, .-Ins_EVEN
	.section	.text.Ins_AND,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_AND, %function
Ins_AND:
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
	beq	.L755
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L755
	movs	r3, #1
	b	.L756
.L755:
	movs	r3, #0
.L756:
	ldr	r2, [r7, #4]
	str	r3, [r2]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Ins_AND, .-Ins_AND
	.section	.text.Ins_OR,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_OR, %function
Ins_OR:
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
	bne	.L758
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L759
.L758:
	movs	r3, #1
	b	.L760
.L759:
	movs	r3, #0
.L760:
	ldr	r2, [r7, #4]
	str	r3, [r2]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Ins_OR, .-Ins_OR
	.section	.text.Ins_NOT,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_NOT, %function
Ins_NOT:
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
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Ins_NOT, .-Ins_NOT
	.section	.text.Ins_ADD,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_ADD, %function
Ins_ADD:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	ldr	r3, [r3]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Ins_ADD, .-Ins_ADD
	.section	.text.Ins_SUB,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_SUB, %function
Ins_SUB:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	ldr	r3, [r3]
	subs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Ins_SUB, .-Ins_SUB
	.section	.text.Ins_DIV,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_DIV, %function
Ins_DIV:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	adds	r3, r3, #4
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L765
	ldr	r3, [r7, #4]
	movs	r2, #133
	str	r2, [r3, #12]
	b	.L764
.L765:
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7]
	adds	r3, r3, #4
	ldr	r3, [r3]
	mov	r0, r2
	movs	r1, #64
	mov	r2, r3
	bl	FT_MulDiv_No_Round(PLT)
	mov	r2, r0
	ldr	r3, [r7]
	str	r2, [r3]
.L764:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	Ins_DIV, .-Ins_DIV
	.section	.text.Ins_MUL,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_MUL, %function
Ins_MUL:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	movs	r2, #64
	bl	FT_MulDiv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3]
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	Ins_MUL, .-Ins_MUL
	.section	.text.Ins_ABS,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_ABS, %function
Ins_ABS:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	eor	r2, r3, r3, asr #31
	sub	r2, r2, r3, asr #31
	ldr	r3, [r7, #4]
	str	r2, [r3]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Ins_ABS, .-Ins_ABS
	.section	.text.Ins_NEG,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_NEG, %function
Ins_NEG:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	negs	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Ins_NEG, .-Ins_NEG
	.section	.text.Ins_FLOOR,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_FLOOR, %function
Ins_FLOOR:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r3, #63
	ldr	r3, [r7, #4]
	str	r2, [r3]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Ins_FLOOR, .-Ins_FLOOR
	.section	.text.Ins_CEILING,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_CEILING, %function
Ins_CEILING:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r3, r3, #63
	bic	r2, r3, #63
	ldr	r3, [r7, #4]
	str	r2, [r3]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Ins_CEILING, .-Ins_CEILING
	.section	.text.Ins_RS,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_RS, %function
Ins_RS:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #468]
	mov	r2, r3
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bhi	.L773
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #561]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L774
	ldr	r3, [r7, #4]
	movs	r2, #134
	str	r2, [r3, #12]
	b	.L772
.L774:
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3]
	b	.L772
.L773:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #96]
	ldr	r3, [r3, #64]
	cmp	r3, #38
	bne	.L776
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #617]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L776
	ldr	r3, [r7, #12]
	cmp	r3, #24
	bne	.L777
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #792]
	and	r3, r3, #96
	cmp	r3, #0
	bne	.L778
.L777:
	ldr	r3, [r7, #12]
	cmp	r3, #22
	bne	.L779
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #636]
	and	r3, r3, #128
	cmp	r3, #0
	bne	.L778
.L779:
	ldr	r3, [r7, #12]
	cmp	r3, #8
	bne	.L776
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #792]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L776
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #628]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L776
.L778:
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3]
	b	.L772
.L776:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #472]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7]
	str	r2, [r3]
.L772:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Ins_RS, .-Ins_RS
	.section	.text.Ins_WS,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_WS, %function
Ins_WS:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #468]
	mov	r2, r3
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bhi	.L781
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #561]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L780
	ldr	r3, [r7, #4]
	movs	r2, #134
	str	r2, [r3, #12]
	b	.L780
.L781:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #472]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r7]
	ldr	r2, [r2, #4]
	str	r2, [r3]
.L780:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Ins_WS, .-Ins_WS
	.section	.text.Ins_WCVTP,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_WCVTP, %function
Ins_WCVTP:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #380]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bhi	.L784
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #561]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L783
	ldr	r3, [r7, #4]
	movs	r2, #134
	str	r2, [r3, #12]
	b	.L783
.L784:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #600]
	ldr	r2, [r7]
	adds	r2, r2, #4
	ldr	r2, [r2]
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #12]
	blx	r3
.L783:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	Ins_WCVTP, .-Ins_WCVTP
	.section	.text.Ins_WCVTF,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_WCVTF, %function
Ins_WCVTF:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #380]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bhi	.L787
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #561]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L786
	ldr	r3, [r7, #4]
	movs	r2, #134
	str	r2, [r3, #12]
	b	.L786
.L787:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #384]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #2
	adds	r4, r2, r3
	ldr	r3, [r7]
	adds	r3, r3, #4
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #260]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r3, r0
	str	r3, [r4]
.L786:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	Ins_WCVTF, .-Ins_WCVTF
	.section	.text.Ins_RCVT,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_RCVT, %function
Ins_RCVT:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #380]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bhi	.L790
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #561]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L791
	ldr	r3, [r7, #4]
	movs	r2, #134
	str	r2, [r3, #12]
	b	.L789
.L791:
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3]
	b	.L789
.L790:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #596]
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #12]
	blx	r3
	mov	r2, r0
	ldr	r3, [r7]
	str	r2, [r3]
.L789:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	Ins_RCVT, .-Ins_RCVT
	.section	.text.Ins_AA,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_AA, %function
Ins_AA:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Ins_AA, .-Ins_AA
	.section	.text.Ins_DEBUG,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_DEBUG, %function
Ins_DEBUG:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #135
	str	r2, [r3, #12]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Ins_DEBUG, .-Ins_DEBUG
	.section	.text.Ins_ROUND,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_ROUND, %function
Ins_ROUND:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #568]
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #368]	@ zero_extendqisi2
	subs	r3, r3, #104
	ldr	r1, [r7, #4]
	adds	r3, r3, #64
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r3, [r3, #8]
	ldr	r0, [r7, #4]
	mov	r1, r2
	mov	r2, r3
	blx	r4
	mov	r2, r0
	ldr	r3, [r7]
	str	r2, [r3]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	Ins_ROUND, .-Ins_ROUND
	.section	.text.Ins_NROUND,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_NROUND, %function
Ins_NROUND:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #368]	@ zero_extendqisi2
	subs	r3, r3, #108
	ldr	r1, [r7, #4]
	adds	r3, r3, #64
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r3, [r3, #8]
	ldr	r0, [r7, #4]
	mov	r1, r2
	mov	r2, r3
	bl	Round_None(PLT)
	mov	r2, r0
	ldr	r3, [r7]
	str	r2, [r3]
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	Ins_NROUND, .-Ins_NROUND
	.section	.text.Ins_MAX,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_MAX, %function
Ins_MAX:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r2, r3
	ble	.L797
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	str	r2, [r3]
.L797:
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Ins_MAX, .-Ins_MAX
	.section	.text.Ins_MIN,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_MIN, %function
Ins_MIN:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r2, r3
	bge	.L799
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	str	r2, [r3]
.L799:
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Ins_MIN, .-Ins_MIN
	.section	.text.Ins_MINDEX,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_MINDEX, %function
Ins_MINDEX:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	ble	.L802
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bge	.L803
.L802:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #561]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L804
	ldr	r3, [r7, #4]
	movs	r2, #134
	str	r2, [r3, #12]
	b	.L801
.L804:
	b	.L801
.L803:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #28]
	ldr	r3, [r7, #12]
	subs	r3, r1, r3
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #28]
	ldr	r3, [r7, #12]
	subs	r3, r1, r3
	lsls	r3, r3, #2
	adds	r1, r2, r3
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r0, [r3, #28]
	ldr	r3, [r7, #12]
	subs	r3, r0, r3
	adds	r3, r3, #1
	lsls	r3, r3, #2
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	subs	r3, r3, #1
	lsls	r3, r3, #2
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	memmove(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r7, #8]
	str	r2, [r3]
.L801:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	Ins_MINDEX, .-Ins_MINDEX
	.section	.text.Ins_CINDEX,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_CINDEX, %function
Ins_CINDEX:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	ble	.L807
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bge	.L808
.L807:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #561]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L809
	ldr	r3, [r7, #4]
	movs	r2, #134
	str	r2, [r3, #12]
.L809:
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3]
	b	.L806
.L808:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #28]
	ldr	r3, [r7, #12]
	subs	r3, r1, r3
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7]
	str	r2, [r3]
.L806:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Ins_CINDEX, .-Ins_CINDEX
	.section	.text.Ins_ROLL,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_ROLL, %function
Ins_ROLL:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	adds	r3, r3, #8
	ldr	r2, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	ldr	r2, [r7, #20]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #16]
	str	r2, [r3]
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Ins_ROLL, .-Ins_ROLL
	.section	.text.Ins_SLOOP,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_SLOOP, %function
Ins_SLOOP:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L813
	ldr	r3, [r7, #4]
	movs	r2, #132
	str	r2, [r3, #12]
	b	.L812
.L813:
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #304]
.L812:
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Ins_SLOOP, .-Ins_SLOOP
	.section	.text.SkipCode,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	SkipCode, %function
SkipCode:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #360]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #372]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #360]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #360]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #364]
	cmp	r2, r3
	bge	.L816
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #356]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #360]
	add	r3, r3, r2
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #4]
	strb	r2, [r3, #368]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #368]	@ zero_extendqisi2
	ldr	r2, .L820
.LPIC42:
	add	r2, pc
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	sxtb	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #372]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #372]
	cmp	r3, #0
	bge	.L817
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #360]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #364]
	cmp	r2, r3
	blt	.L818
	b	.L816
.L818:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #372]
	ldr	r2, [r7, #4]
	ldr	r1, [r2, #356]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #360]
	adds	r2, r2, #1
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	mul	r3, r2, r3
	rsb	r2, r3, #2
	ldr	r3, [r7, #4]
	str	r2, [r3, #372]
.L817:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #360]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #372]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #364]
	cmp	r2, r3
	bgt	.L816
	movs	r3, #0
	b	.L819
.L816:
	ldr	r3, [r7, #4]
	movs	r2, #131
	str	r2, [r3, #12]
	movs	r3, #1
.L819:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L821:
	.align	2
.L820:
	.word	opcode_length-(.LPIC42+4)
	.size	SkipCode, .-SkipCode
	.section	.text.Ins_IF,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_IF, %function
Ins_IF:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L823
	b	.L822
.L823:
	movs	r3, #1
	str	r3, [r7, #12]
	movs	r3, #0
	strb	r3, [r7, #11]
.L830:
	ldr	r0, [r7, #4]
	bl	SkipCode(PLT)
	mov	r3, r0
	cmp	r3, #1
	bne	.L825
	b	.L822
.L825:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #368]	@ zero_extendqisi2
	cmp	r3, #88
	beq	.L827
	cmp	r3, #89
	beq	.L828
	cmp	r3, #27
	beq	.L829
	b	.L826
.L827:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
	b	.L826
.L829:
	ldr	r3, [r7, #12]
	cmp	r3, #1
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	strb	r3, [r7, #11]
	b	.L826
.L828:
	ldr	r3, [r7, #12]
	subs	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	strb	r3, [r7, #11]
	nop
.L826:
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L830
.L822:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	Ins_IF, .-Ins_IF
	.section	.text.Ins_ELSE,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_ELSE, %function
Ins_ELSE:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #1
	str	r3, [r7, #12]
.L837:
	ldr	r0, [r7, #4]
	bl	SkipCode(PLT)
	mov	r3, r0
	cmp	r3, #1
	bne	.L832
	b	.L831
.L832:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #368]	@ zero_extendqisi2
	cmp	r3, #88
	beq	.L835
	cmp	r3, #89
	beq	.L836
	b	.L834
.L835:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
	b	.L834
.L836:
	ldr	r3, [r7, #12]
	subs	r3, r3, #1
	str	r3, [r7, #12]
	nop
.L834:
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L837
.L831:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	Ins_ELSE, .-Ins_ELSE
	.section	.text.Ins_EIF,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_EIF, %function
Ins_EIF:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Ins_EIF, .-Ins_EIF
	.section	.text.Ins_JMPR,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_JMPR, %function
Ins_JMPR:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L840
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	cmp	r3, #0
	bne	.L840
	ldr	r3, [r7, #4]
	movs	r2, #132
	str	r2, [r3, #12]
.L840:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #360]
	ldr	r3, [r7]
	ldr	r3, [r3]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #360]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #360]
	cmp	r3, #0
	blt	.L841
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #428]
	cmp	r3, #0
	ble	.L842
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #360]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #436]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #428]
	add	r3, r3, #268435456
	subs	r3, r3, #1
	lsls	r3, r3, #4
	add	r3, r3, r1
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	ble	.L842
.L841:
	ldr	r3, [r7, #4]
	movs	r2, #132
	str	r2, [r3, #12]
.L842:
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #376]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Ins_JMPR, .-Ins_JMPR
	.section	.text.Ins_JROT,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_JROT, %function
Ins_JROT:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	adds	r3, r3, #4
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L843
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	Ins_JMPR(PLT)
.L843:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	Ins_JROT, .-Ins_JROT
	.section	.text.Ins_JROF,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_JROF, %function
Ins_JROF:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	adds	r3, r3, #4
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L845
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	Ins_JMPR(PLT)
.L845:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	Ins_JROF, .-Ins_JROF
	.section	.rodata
	.align	2
.LC2:
	.short	12
	.short	8
	.short	8
	.short	6
	.short	7
	.short	4
	.short	5
	.short	4
	.short	2
	.section	.text.Ins_FDEF,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_FDEF, %function
Ins_FDEF:
	@ args = 0, pretend = 0, frame = 176
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #176
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	add	r2, r7, #52
	movs	r3, #108
	mov	r0, r2
	movs	r1, #0
	mov	r2, r3
	bl	memset(PLT)
	movs	r3, #75
	strb	r3, [r7, #52]
	movs	r3, #83
	strb	r3, [r7, #53]
	movs	r3, #35
	strb	r3, [r7, #54]
	movs	r3, #75
	strb	r3, [r7, #55]
	movs	r3, #81
	strb	r3, [r7, #56]
	movs	r3, #90
	strb	r3, [r7, #57]
	movs	r3, #88
	strb	r3, [r7, #58]
	movs	r3, #56
	strb	r3, [r7, #59]
	movs	r3, #27
	strb	r3, [r7, #60]
	movs	r3, #33
	strb	r3, [r7, #61]
	movs	r3, #33
	strb	r3, [r7, #62]
	movs	r3, #89
	strb	r3, [r7, #63]
	movs	r3, #75
	strb	r3, [r7, #64]
	movs	r3, #84
	strb	r3, [r7, #65]
	movs	r3, #88
	strb	r3, [r7, #66]
	movs	r3, #56
	strb	r3, [r7, #67]
	movs	r3, #27
	strb	r3, [r7, #68]
	movs	r3, #33
	strb	r3, [r7, #69]
	movs	r3, #33
	strb	r3, [r7, #70]
	movs	r3, #89
	strb	r3, [r7, #71]
	movs	r3, #32
	strb	r3, [r7, #76]
	movs	r3, #32
	strb	r3, [r7, #77]
	movs	r3, #176
	strb	r3, [r7, #78]
	movs	r3, #96
	strb	r3, [r7, #79]
	movs	r3, #70
	strb	r3, [r7, #80]
	movs	r3, #176
	strb	r3, [r7, #81]
	movs	r3, #35
	strb	r3, [r7, #82]
	movs	r3, #66
	strb	r3, [r7, #83]
	movs	r3, #69
	strb	r3, [r7, #88]
	movs	r3, #35
	strb	r3, [r7, #89]
	movs	r3, #70
	strb	r3, [r7, #90]
	movs	r3, #96
	strb	r3, [r7, #91]
	movs	r3, #32
	strb	r3, [r7, #92]
	movs	r3, #176
	strb	r3, [r7, #93]
	movs	r3, #32
	strb	r3, [r7, #100]
	movs	r3, #100
	strb	r3, [r7, #101]
	movs	r3, #176
	strb	r3, [r7, #102]
	movs	r3, #96
	strb	r3, [r7, #103]
	movs	r3, #102
	strb	r3, [r7, #104]
	movs	r3, #35
	strb	r3, [r7, #105]
	movs	r3, #176
	strb	r3, [r7, #106]
	movs	r3, #1
	strb	r3, [r7, #112]
	movs	r3, #176
	strb	r3, [r7, #113]
	movs	r3, #67
	strb	r3, [r7, #114]
	movs	r3, #88
	strb	r3, [r7, #115]
	movs	r3, #1
	strb	r3, [r7, #124]
	movs	r3, #24
	strb	r3, [r7, #125]
	movs	r3, #176
	strb	r3, [r7, #126]
	movs	r3, #67
	strb	r3, [r7, #127]
	movs	r3, #88
	strb	r3, [r7, #128]
	movs	r3, #1
	strb	r3, [r7, #136]
	movs	r3, #32
	strb	r3, [r7, #137]
	movs	r3, #176
	strb	r3, [r7, #138]
	movs	r3, #37
	strb	r3, [r7, #139]
	movs	r3, #6
	strb	r3, [r7, #148]
	movs	r3, #125
	strb	r3, [r7, #149]
	movs	r3, #9
	strh	r3, [r7, #168]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #32]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #34]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #36]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #38]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #40]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #42]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #44]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #46]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #48]	@ movhi
	ldr	r3, .L892
.LPIC43:
	add	r3, pc
	add	r4, r7, #12
	mov	r5, r3
	ldr	r0, [r5]	@ unaligned
	ldr	r1, [r5, #4]	@ unaligned
	ldr	r2, [r5, #8]	@ unaligned
	ldr	r3, [r5, #12]	@ unaligned
	stmia	r4!, {r0, r1, r2, r3}
	ldrh	r3, [r5, #16]	@ unaligned
	strh	r3, [r4]	@ unaligned
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #404]
	str	r3, [r7, #172]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #396]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	ldr	r2, [r7, #172]
	add	r3, r3, r2
	str	r3, [r7, #164]
	ldr	r3, [r7]
	ldr	r3, [r3]
	str	r3, [r7, #160]
	b	.L848
.L851:
	ldr	r3, [r7, #172]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #160]
	cmp	r2, r3
	bne	.L849
	b	.L850
.L849:
	ldr	r3, [r7, #172]
	adds	r3, r3, #24
	str	r3, [r7, #172]
.L848:
	ldr	r2, [r7, #172]
	ldr	r3, [r7, #164]
	cmp	r2, r3
	bcc	.L851
.L850:
	ldr	r2, [r7, #172]
	ldr	r3, [r7, #164]
	cmp	r2, r3
	bne	.L852
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #396]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #400]
	cmp	r2, r3
	bcc	.L853
	ldr	r3, [r7, #4]
	movs	r2, #140
	str	r2, [r3, #12]
	b	.L847
.L853:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #396]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #396]
.L852:
	ldr	r3, [r7, #160]
	cmp	r3, #65536
	bcc	.L855
	ldr	r3, [r7, #4]
	movs	r2, #140
	str	r2, [r3, #12]
	b	.L847
.L855:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #352]
	ldr	r3, [r7, #172]
	str	r2, [r3]
	ldr	r3, [r7, #160]
	uxth	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #172]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #360]
	adds	r2, r3, #1
	ldr	r3, [r7, #172]
	str	r2, [r3, #4]
	ldr	r3, [r7, #172]
	movs	r2, #1
	strb	r2, [r3, #16]
	ldr	r3, [r7, #172]
	movs	r2, #0
	strb	r2, [r3, #17]
	ldr	r3, [r7, #172]
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #420]
	ldr	r3, [r7, #160]
	cmp	r2, r3
	bcs	.L856
	ldr	r3, [r7, #160]
	uxth	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #420]
.L856:
	ldr	r3, [r7, #160]
	cmp	r3, #63
	bls	.L857
	ldr	r3, [r7, #160]
	cmp	r3, #66
	bhi	.L857
	ldr	r3, [r7, #172]
	ldr	r3, [r3, #20]
	orr	r2, r3, #128
	ldr	r3, [r7, #172]
	str	r2, [r3, #20]
	b	.L858
.L857:
	b	.L858
.L888:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #96]
	ldr	r3, [r3, #64]
	cmp	r3, #38
	bne	.L859
	movs	r3, #0
	strh	r3, [r7, #170]	@ movhi
	b	.L860
.L885:
	ldrh	r3, [r7, #170]
	lsls	r3, r3, #1
	add	r0, r7, #176
	add	r3, r3, r0
	ldrh	r2, [r3, #-144]
	ldrh	r3, [r7, #170]
	lsls	r3, r3, #1
	add	r1, r7, #176
	add	r3, r3, r1
	ldrh	r3, [r3, #-164]
	cmp	r2, r3
	bcs	.L861
	ldr	r3, [r7, #4]
	ldrb	r1, [r3, #368]	@ zero_extendqisi2
	ldrh	r2, [r7, #170]
	ldrh	r3, [r7, #170]
	lsls	r3, r3, #1
	add	r0, r7, #176
	add	r3, r3, r0
	ldrh	r3, [r3, #-144]
	mov	r0, r3
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r2, r7, #176
	add	r3, r3, r2
	add	r3, r3, r0
	subs	r3, r3, #124
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r1, r3
	bne	.L861
	ldrh	r1, [r7, #170]
	ldrh	r3, [r7, #170]
	lsls	r3, r3, #1
	add	r0, r7, #176
	add	r3, r3, r0
	ldrh	r3, [r3, #-144]
	adds	r3, r3, #1
	uxth	r2, r3
	lsls	r3, r1, #1
	add	r1, r7, #176
	add	r3, r3, r1
	strh	r2, [r3, #-144]	@ movhi
	ldrh	r3, [r7, #170]
	lsls	r3, r3, #1
	add	r2, r7, #176
	add	r3, r3, r2
	ldrh	r2, [r3, #-144]
	ldrh	r3, [r7, #170]
	lsls	r3, r3, #1
	add	r0, r7, #176
	add	r3, r3, r0
	ldrh	r3, [r3, #-164]
	cmp	r2, r3
	bne	.L862
	ldrh	r3, [r7, #170]
	cmp	r3, #8
	bhi	.L863
	adr	r1, .L865
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L865:
	.word	.L864+1-.L865
	.word	.L866+1-.L865
	.word	.L867+1-.L865
	.word	.L868+1-.L865
	.word	.L869+1-.L865
	.word	.L870+1-.L865
	.word	.L871+1-.L865
	.word	.L872+1-.L865
	.word	.L863+1-.L865
.L864:
	ldr	r3, [r7, #172]
	ldr	r3, [r3, #20]
	orr	r2, r3, #1
	ldr	r3, [r7, #172]
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2]
	ldr	r2, [r2, #792]
	orr	r2, r2, #1
	str	r2, [r3, #792]
	b	.L863
.L866:
	ldr	r3, [r7, #172]
	ldr	r3, [r3, #20]
	orr	r2, r3, #2
	ldr	r3, [r7, #172]
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2]
	ldr	r2, [r2, #792]
	orr	r2, r2, #2
	str	r2, [r3, #792]
	b	.L863
.L867:
	ldr	r3, [r7, #160]
	cmp	r3, #58
	beq	.L875
	b	.L863
.L875:
	ldr	r3, [r7, #172]
	ldr	r3, [r3, #20]
	orr	r2, r3, #4
	ldr	r3, [r7, #172]
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2]
	ldr	r2, [r2, #792]
	orr	r2, r2, #4
	str	r2, [r3, #792]
	b	.L863
.L868:
	ldr	r3, [r7, #160]
	cmp	r3, #0
	beq	.L877
	b	.L863
.L877:
	ldr	r3, [r7, #172]
	ldr	r3, [r3, #20]
	orr	r2, r3, #8
	ldr	r3, [r7, #172]
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2]
	ldr	r2, [r2, #792]
	orr	r2, r2, #8
	str	r2, [r3, #792]
	b	.L863
.L869:
	ldr	r3, [r7, #172]
	ldr	r3, [r3, #20]
	orr	r2, r3, #16
	ldr	r3, [r7, #172]
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2]
	ldr	r2, [r2, #792]
	orr	r2, r2, #16
	str	r2, [r3, #792]
	b	.L863
.L870:
	ldr	r3, [r7, #160]
	cmp	r3, #8
	bhi	.L890
	adr	r0, .L880
	ldr	r1, [r0, r3, lsl #2]
	add	r0, r0, r1
	bx	r0
	.p2align 2
.L880:
	.word	.L879+1-.L880
	.word	.L879+1-.L880
	.word	.L879+1-.L880
	.word	.L890+1-.L880
	.word	.L879+1-.L880
	.word	.L890+1-.L880
	.word	.L890+1-.L880
	.word	.L879+1-.L880
	.word	.L879+1-.L880
.L879:
	ldr	r3, [r7, #172]
	ldr	r3, [r3, #20]
	orr	r2, r3, #32
	ldr	r3, [r7, #172]
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2]
	ldr	r2, [r2, #792]
	orr	r2, r2, #32
	str	r2, [r3, #792]
	b	.L890
.L871:
	ldr	r3, [r7, #160]
	cmp	r3, #8
	bhi	.L891
	adr	r2, .L883
	ldr	r0, [r2, r3, lsl #2]
	add	r2, r2, r0
	bx	r2
	.p2align 2
.L883:
	.word	.L882+1-.L883
	.word	.L882+1-.L883
	.word	.L882+1-.L883
	.word	.L891+1-.L883
	.word	.L882+1-.L883
	.word	.L891+1-.L883
	.word	.L891+1-.L883
	.word	.L882+1-.L883
	.word	.L882+1-.L883
.L882:
	ldr	r3, [r7, #172]
	ldr	r3, [r3, #20]
	orr	r2, r3, #64
	ldr	r3, [r7, #172]
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2]
	ldr	r2, [r2, #792]
	orr	r2, r2, #64
	str	r2, [r3, #792]
	b	.L891
.L872:
	ldr	r3, [r7, #172]
	ldr	r3, [r3, #20]
	orr	r2, r3, #256
	ldr	r3, [r7, #172]
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2]
	ldr	r2, [r2, #792]
	orr	r2, r2, #256
	str	r2, [r3, #792]
	b	.L863
.L890:
	nop
	b	.L863
.L891:
	nop
.L863:
	ldrh	r3, [r7, #170]
	lsls	r3, r3, #1
	add	r1, r7, #176
	add	r3, r3, r1
	movs	r2, #0
	strh	r2, [r3, #-144]	@ movhi
	b	.L884
.L862:
	b	.L884
.L861:
	ldrh	r3, [r7, #170]
	lsls	r3, r3, #1
	add	r2, r7, #176
	add	r3, r3, r2
	movs	r2, #0
	strh	r2, [r3, #-144]	@ movhi
.L884:
	ldrh	r3, [r7, #170]
	adds	r3, r3, #1
	strh	r3, [r7, #170]	@ movhi
.L860:
	ldrh	r2, [r7, #170]
	ldrh	r3, [r7, #168]
	cmp	r2, r3
	bcc	.L885
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2]
	ldr	r2, [r2, #792]
	uxtb	r2, r2
	and	r2, r2, #3
	uxtb	r2, r2
	strb	r2, [r3, #796]
.L859:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #368]	@ zero_extendqisi2
	cmp	r3, #45
	beq	.L886
	cmp	r3, #137
	beq	.L887
	cmp	r3, #44
	bne	.L858
.L887:
	ldr	r3, [r7, #4]
	movs	r2, #137
	str	r2, [r3, #12]
	b	.L847
.L886:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #360]
	ldr	r3, [r7, #172]
	str	r2, [r3, #8]
	b	.L847
.L858:
	ldr	r0, [r7, #4]
	bl	SkipCode(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L888
.L847:
	adds	r7, r7, #176
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L893:
	.align	2
.L892:
	.word	.LC2-(.LPIC43+4)
	.size	Ins_FDEF, .-Ins_FDEF
	.section	.text.Ins_ENDF,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_ENDF, %function
Ins_ENDF:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #636]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #428]
	cmp	r3, #0
	bgt	.L895
	ldr	r3, [r7, #4]
	movs	r2, #136
	str	r2, [r3, #12]
	b	.L894
.L895:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #428]
	subs	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #428]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #436]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #428]
	lsls	r3, r3, #4
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	subs	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #376]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	ble	.L897
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #428]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #428]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	str	r2, [r3, #360]
	b	.L894
.L897:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #4]
	mov	r1, r2
	mov	r2, r3
	bl	Ins_Goto_CodeRange(PLT)
.L894:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	Ins_ENDF, .-Ins_ENDF
	.section	.text.Ins_CALL,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_CALL, %function
Ins_CALL:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #420]
	adds	r2, r3, #1
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bhi	.L899
	b	.L900
.L899:
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #404]
	ldr	r2, [r7, #16]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #420]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #396]
	cmp	r2, r3
	bne	.L901
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	beq	.L902
.L901:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #404]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #396]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #12]
	b	.L903
.L905:
	ldr	r3, [r7, #20]
	adds	r3, r3, #24
	str	r3, [r7, #20]
.L903:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bcs	.L904
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bne	.L905
.L904:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bne	.L902
	b	.L900
.L902:
	ldr	r3, [r7, #20]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L906
	b	.L900
.L906:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #96]
	ldr	r3, [r3, #64]
	cmp	r3, #38
	bne	.L907
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #617]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L907
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #628]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L908
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #632]
	and	r3, r3, #1024
	cmp	r3, #0
	bne	.L900
.L908:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #20]
	and	r3, r3, #8
	cmp	r3, #0
	bne	.L900
.L907:
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #4]
	str	r2, [r3, #636]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #428]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #432]
	cmp	r2, r3
	blt	.L909
	ldr	r3, [r7, #4]
	movs	r2, #130
	str	r2, [r3, #12]
	b	.L898
.L909:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #436]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #428]
	lsls	r3, r3, #4
	add	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #352]
	ldr	r3, [r7, #8]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #360]
	adds	r2, r3, #1
	ldr	r3, [r7, #8]
	str	r2, [r3, #4]
	ldr	r3, [r7, #8]
	movs	r2, #1
	str	r2, [r3, #8]
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #20]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #428]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #428]
	ldr	r3, [r7, #20]
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #4]
	mov	r1, r2
	mov	r2, r3
	bl	Ins_Goto_CodeRange(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #376]
	b	.L898
.L900:
	ldr	r3, [r7, #4]
	movs	r2, #134
	str	r2, [r3, #12]
.L898:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	Ins_CALL, .-Ins_CALL
	.section	.text.Ins_LOOPCALL,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_LOOPCALL, %function
Ins_LOOPCALL:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	adds	r3, r3, #4
	ldr	r3, [r3]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #420]
	adds	r2, r3, #1
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bhi	.L912
	b	.L913
.L912:
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #404]
	ldr	r2, [r7, #16]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #420]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #396]
	cmp	r2, r3
	bne	.L914
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	beq	.L915
.L914:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #404]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #396]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #12]
	b	.L916
.L918:
	ldr	r3, [r7, #20]
	adds	r3, r3, #24
	str	r3, [r7, #20]
.L916:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bcs	.L917
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bne	.L918
.L917:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bne	.L915
	b	.L913
.L915:
	ldr	r3, [r7, #20]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L919
	b	.L913
.L919:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #96]
	ldr	r3, [r3, #64]
	cmp	r3, #38
	bne	.L920
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #617]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L920
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #20]
	and	r3, r3, #8
	cmp	r3, #0
	bne	.L913
.L920:
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #4]
	str	r2, [r3, #636]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #428]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #432]
	cmp	r2, r3
	blt	.L921
	ldr	r3, [r7, #4]
	movs	r2, #130
	str	r2, [r3, #12]
	b	.L911
.L921:
	ldr	r3, [r7]
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L923
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #436]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #428]
	lsls	r3, r3, #4
	add	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #352]
	ldr	r3, [r7, #8]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #360]
	adds	r2, r3, #1
	ldr	r3, [r7, #8]
	str	r2, [r3, #4]
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	str	r2, [r3, #8]
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #20]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #428]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #428]
	ldr	r3, [r7, #20]
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #4]
	mov	r1, r2
	mov	r2, r3
	bl	Ins_Goto_CodeRange(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #376]
	b	.L911
.L923:
	b	.L911
.L913:
	ldr	r3, [r7, #4]
	movs	r2, #134
	str	r2, [r3, #12]
.L911:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	Ins_LOOPCALL, .-Ins_LOOPCALL
	.section	.text.Ins_IDEF,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_IDEF, %function
Ins_IDEF:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #416]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #408]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #8]
	b	.L925
.L928:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L926
	b	.L927
.L926:
	ldr	r3, [r7, #12]
	adds	r3, r3, #24
	str	r3, [r7, #12]
.L925:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L928
.L927:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bne	.L929
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #408]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #412]
	cmp	r2, r3
	bcc	.L930
	ldr	r3, [r7, #4]
	movs	r2, #141
	str	r2, [r3, #12]
	b	.L924
.L930:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #408]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #408]
.L929:
	ldr	r3, [r7]
	ldr	r3, [r3]
	cmp	r3, #0
	blt	.L932
	ldr	r3, [r7]
	ldr	r3, [r3]
	cmp	r3, #255
	ble	.L933
.L932:
	ldr	r3, [r7, #4]
	movs	r2, #141
	str	r2, [r3, #12]
	b	.L924
.L933:
	ldr	r3, [r7]
	ldr	r3, [r3]
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #360]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #352]
	ldr	r3, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #16]
	ldr	r3, [r7]
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #424]
	cmp	r2, r3
	bls	.L934
	ldr	r3, [r7]
	ldr	r3, [r3]
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #424]
	b	.L935
.L934:
	b	.L935
.L938:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #368]	@ zero_extendqisi2
	cmp	r3, #45
	beq	.L939
	cmp	r3, #137
	beq	.L937
	cmp	r3, #44
	bne	.L935
.L937:
	ldr	r3, [r7, #4]
	movs	r2, #137
	str	r2, [r3, #12]
	b	.L924
.L935:
	ldr	r0, [r7, #4]
	bl	SkipCode(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L938
	b	.L924
.L939:
	nop
.L924:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	Ins_IDEF, .-Ins_IDEF
	.section	.text.Ins_NPUSHB,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_NPUSHB, %function
Ins_NPUSHB:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #356]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #360]
	adds	r3, r3, #1
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	strh	r3, [r7, #12]	@ movhi
	ldrh	r2, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	adds	r1, r3, #1
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	subs	r3, r1, r3
	cmp	r2, r3
	bcc	.L941
	ldr	r3, [r7, #4]
	movs	r2, #130
	str	r2, [r3, #12]
	b	.L940
.L941:
	movs	r3, #1
	strh	r3, [r7, #14]	@ movhi
	b	.L943
.L944:
	ldrh	r3, [r7, #14]
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7]
	add	r3, r3, r2
	ldr	r2, [r7, #4]
	ldr	r1, [r2, #356]
	ldr	r2, [r7, #4]
	ldr	r0, [r2, #360]
	ldrh	r2, [r7, #14]
	add	r2, r2, r0
	adds	r2, r2, #1
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	str	r2, [r3]
	ldrh	r3, [r7, #14]
	adds	r3, r3, #1
	strh	r3, [r7, #14]	@ movhi
.L943:
	ldrh	r2, [r7, #14]
	ldrh	r3, [r7, #12]
	cmp	r2, r3
	bls	.L944
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #32]
	ldrh	r3, [r7, #12]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #32]
.L940:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Ins_NPUSHB, .-Ins_NPUSHB
	.section	.text.Ins_NPUSHW,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_NPUSHW, %function
Ins_NPUSHW:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #356]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #360]
	adds	r3, r3, #1
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	strh	r3, [r7, #12]	@ movhi
	ldrh	r2, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	adds	r1, r3, #1
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	subs	r3, r1, r3
	cmp	r2, r3
	bcc	.L946
	ldr	r3, [r7, #4]
	movs	r2, #130
	str	r2, [r3, #12]
	b	.L945
.L946:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #360]
	adds	r2, r3, #2
	ldr	r3, [r7, #4]
	str	r2, [r3, #360]
	movs	r3, #0
	strh	r3, [r7, #14]	@ movhi
	b	.L948
.L949:
	ldrh	r3, [r7, #14]
	lsls	r3, r3, #2
	ldr	r2, [r7]
	adds	r4, r2, r3
	ldr	r0, [r7, #4]
	bl	GetShortIns(PLT)
	mov	r3, r0
	str	r3, [r4]
	ldrh	r3, [r7, #14]
	adds	r3, r3, #1
	strh	r3, [r7, #14]	@ movhi
.L948:
	ldrh	r2, [r7, #14]
	ldrh	r3, [r7, #12]
	cmp	r2, r3
	bcc	.L949
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #376]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #32]
	ldrh	r3, [r7, #12]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #32]
.L945:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	Ins_NPUSHW, .-Ins_NPUSHW
	.section	.text.Ins_PUSHB,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_PUSHB, %function
Ins_PUSHB:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #368]	@ zero_extendqisi2
	subs	r3, r3, #175
	strh	r3, [r7, #12]	@ movhi
	ldrh	r2, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	adds	r1, r3, #1
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	subs	r3, r1, r3
	cmp	r2, r3
	bcc	.L951
	ldr	r3, [r7, #4]
	movs	r2, #130
	str	r2, [r3, #12]
	b	.L950
.L951:
	movs	r3, #1
	strh	r3, [r7, #14]	@ movhi
	b	.L953
.L954:
	ldrh	r3, [r7, #14]
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7]
	add	r3, r3, r2
	ldr	r2, [r7, #4]
	ldr	r1, [r2, #356]
	ldr	r2, [r7, #4]
	ldr	r0, [r2, #360]
	ldrh	r2, [r7, #14]
	add	r2, r2, r0
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	str	r2, [r3]
	ldrh	r3, [r7, #14]
	adds	r3, r3, #1
	strh	r3, [r7, #14]	@ movhi
.L953:
	ldrh	r2, [r7, #14]
	ldrh	r3, [r7, #12]
	cmp	r2, r3
	bls	.L954
.L950:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Ins_PUSHB, .-Ins_PUSHB
	.section	.text.Ins_PUSHW,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_PUSHW, %function
Ins_PUSHW:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #368]	@ zero_extendqisi2
	subs	r3, r3, #183
	strh	r3, [r7, #12]	@ movhi
	ldrh	r2, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	adds	r1, r3, #1
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	subs	r3, r1, r3
	cmp	r2, r3
	bcc	.L956
	ldr	r3, [r7, #4]
	movs	r2, #130
	str	r2, [r3, #12]
	b	.L955
.L956:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #360]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #360]
	movs	r3, #0
	strh	r3, [r7, #14]	@ movhi
	b	.L958
.L959:
	ldrh	r3, [r7, #14]
	lsls	r3, r3, #2
	ldr	r2, [r7]
	adds	r4, r2, r3
	ldr	r0, [r7, #4]
	bl	GetShortIns(PLT)
	mov	r3, r0
	str	r3, [r4]
	ldrh	r3, [r7, #14]
	adds	r3, r3, #1
	strh	r3, [r7, #14]	@ movhi
.L958:
	ldrh	r2, [r7, #14]
	ldrh	r3, [r7, #12]
	cmp	r2, r3
	bcc	.L959
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #376]
.L955:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	Ins_PUSHW, .-Ins_PUSHW
	.section	.text.Ins_SxVTL,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_SxVTL, %function
Ins_SxVTL:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r3, [r7, #4]
	mov	r3, r1	@ movhi
	strh	r3, [r7, #10]	@ movhi
	mov	r3, r2	@ movhi
	strh	r3, [r7, #8]	@ movhi
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #368]
	strb	r3, [r7, #31]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #116]
	ldrh	r2, [r7, #10]
	cmp	r2, r3
	bcs	.L961
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #80]
	ldrh	r2, [r7, #8]
	cmp	r2, r3
	bcc	.L962
.L961:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #561]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L963
	ldr	r3, [r7, #12]
	movs	r2, #134
	str	r2, [r3, #12]
.L963:
	movs	r3, #1
	b	.L964
.L962:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #88]
	ldrh	r3, [r7, #8]
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #124]
	ldrh	r3, [r7, #10]
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #24]
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	subs	r3, r2, r3
	str	r3, [r7, #36]
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	str	r3, [r7, #32]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L965
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bne	.L965
	mov	r3, #16384
	str	r3, [r7, #36]
	movs	r3, #0
	strb	r3, [r7, #31]
.L965:
	ldrb	r3, [r7, #31]	@ zero_extendqisi2
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L966
	ldr	r3, [r7, #32]
	str	r3, [r7, #16]
	ldr	r3, [r7, #36]
	str	r3, [r7, #32]
	ldr	r3, [r7, #16]
	negs	r3, r3
	str	r3, [r7, #36]
.L966:
	ldr	r0, [r7, #36]
	ldr	r1, [r7, #32]
	ldr	r2, [r7, #4]
	bl	Normalize(PLT)
	movs	r3, #0
.L964:
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	Ins_SxVTL, .-Ins_SxVTL
	.section	.text.Ins_SxyTCA,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_SxyTCA, %function
Ins_SxyTCA:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #368]
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	and	r3, r3, #1
	lsls	r3, r3, #14
	strh	r3, [r7, #12]	@ movhi
	ldrh	r3, [r7, #12]	@ movhi
	eor	r3, r3, #16384
	strh	r3, [r7, #10]	@ movhi
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #3
	bhi	.L968
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #12]	@ movhi
	strh	r2, [r3, #294]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #10]	@ movhi
	strh	r2, [r3, #296]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #12]	@ movhi
	strh	r2, [r3, #290]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #10]	@ movhi
	strh	r2, [r3, #292]	@ movhi
.L968:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	and	r3, r3, #2
	cmp	r3, #0
	bne	.L969
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #12]	@ movhi
	strh	r2, [r3, #298]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #10]	@ movhi
	strh	r2, [r3, #300]	@ movhi
.L969:
	ldr	r0, [r7, #4]
	bl	Compute_Funcs(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	Ins_SxyTCA, .-Ins_SxyTCA
	.section	.text.Ins_SPVTL,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_SPVTL, %function
Ins_SPVTL:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	adds	r3, r3, #4
	ldr	r3, [r3]
	uxth	r1, r3
	ldr	r3, [r7]
	ldr	r3, [r3]
	uxth	r2, r3
	ldr	r3, [r7, #4]
	add	r3, r3, #294
	ldr	r0, [r7, #4]
	bl	Ins_SxVTL(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L970
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #4]
	add	r3, r3, #290
	add	r2, r2, #294
	ldr	r2, [r2]	@ unaligned
	str	r2, [r3]	@ unaligned
	ldr	r0, [r7, #4]
	bl	Compute_Funcs(PLT)
.L970:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	Ins_SPVTL, .-Ins_SPVTL
	.section	.text.Ins_SFVTL,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_SFVTL, %function
Ins_SFVTL:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	adds	r3, r3, #4
	ldr	r3, [r3]
	uxth	r1, r3
	ldr	r3, [r7]
	ldr	r3, [r3]
	uxth	r2, r3
	ldr	r3, [r7, #4]
	add	r3, r3, #298
	ldr	r0, [r7, #4]
	bl	Ins_SxVTL(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L972
	ldr	r0, [r7, #4]
	bl	Compute_Funcs(PLT)
.L972:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	Ins_SFVTL, .-Ins_SFVTL
	.section	.text.Ins_SFVTPV,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_SFVTPV, %function
Ins_SFVTPV:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #4]
	add	r3, r3, #298
	add	r2, r2, #294
	ldr	r2, [r2]	@ unaligned
	str	r2, [r3]	@ unaligned
	ldr	r0, [r7, #4]
	bl	Compute_Funcs(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	Ins_SFVTPV, .-Ins_SFVTPV
	.section	.text.Ins_SPVFS,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_SPVFS, %function
Ins_SPVFS:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	adds	r3, r3, #4
	ldr	r3, [r3]
	strh	r3, [r7, #22]	@ movhi
	ldrsh	r3, [r7, #22]
	str	r3, [r7, #16]
	ldr	r3, [r7]
	ldr	r3, [r3]
	strh	r3, [r7, #22]	@ movhi
	ldrsh	r3, [r7, #22]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	add	r3, r3, #294
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #16]
	mov	r2, r3
	bl	Normalize(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #4]
	add	r3, r3, #290
	add	r2, r2, #294
	ldr	r2, [r2]	@ unaligned
	str	r2, [r3]	@ unaligned
	ldr	r0, [r7, #4]
	bl	Compute_Funcs(PLT)
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	Ins_SPVFS, .-Ins_SPVFS
	.section	.text.Ins_SFVFS,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_SFVFS, %function
Ins_SFVFS:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	adds	r3, r3, #4
	ldr	r3, [r3]
	strh	r3, [r7, #22]	@ movhi
	ldrsh	r3, [r7, #22]
	str	r3, [r7, #16]
	ldr	r3, [r7]
	ldr	r3, [r3]
	strh	r3, [r7, #22]	@ movhi
	ldrsh	r3, [r7, #22]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	add	r3, r3, #298
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #16]
	mov	r2, r3
	bl	Normalize(PLT)
	ldr	r0, [r7, #4]
	bl	Compute_Funcs(PLT)
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	Ins_SFVFS, .-Ins_SFVFS
	.section	.text.Ins_GPV,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_GPV, %function
Ins_GPV:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #294]
	sxth	r2, r3
	ldr	r3, [r7]
	str	r2, [r3]
	ldr	r3, [r7]
	adds	r3, r3, #4
	ldr	r2, [r7, #4]
	ldrh	r2, [r2, #296]
	sxth	r2, r2
	str	r2, [r3]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Ins_GPV, .-Ins_GPV
	.section	.text.Ins_GFV,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_GFV, %function
Ins_GFV:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #298]
	sxth	r2, r3
	ldr	r3, [r7]
	str	r2, [r3]
	ldr	r3, [r7]
	adds	r3, r3, #4
	ldr	r2, [r7, #4]
	ldrh	r2, [r2, #300]
	sxth	r2, r2
	str	r2, [r3]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Ins_GFV, .-Ins_GFV
	.section	.text.Ins_SRP0,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_SRP0, %function
Ins_SRP0:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3]
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #284]	@ movhi
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Ins_SRP0, .-Ins_SRP0
	.section	.text.Ins_SRP1,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_SRP1, %function
Ins_SRP1:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3]
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #286]	@ movhi
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Ins_SRP1, .-Ins_SRP1
	.section	.text.Ins_SRP2,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_SRP2, %function
Ins_SRP2:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3]
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #288]	@ movhi
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Ins_SRP2, .-Ins_SRP2
	.section	.text.Ins_SMD,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_SMD, %function
Ins_SMD:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #308]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Ins_SMD, .-Ins_SMD
	.section	.text.Ins_SCVTCI,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_SCVTCI, %function
Ins_SCVTCI:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #320]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Ins_SCVTCI, .-Ins_SCVTCI
	.section	.text.Ins_SSWCI,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_SSWCI, %function
Ins_SSWCI:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #324]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Ins_SSWCI, .-Ins_SSWCI
	.section	.text.Ins_SSW,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_SSW, %function
Ins_SSW:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #260]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #328]
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	Ins_SSW, .-Ins_SSW
	.section	.text.Ins_FLIPON,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_FLIPON, %function
Ins_FLIPON:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #316]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Ins_FLIPON, .-Ins_FLIPON
	.section	.text.Ins_FLIPOFF,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_FLIPOFF, %function
Ins_FLIPOFF:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #316]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Ins_FLIPOFF, .-Ins_FLIPOFF
	.section	.text.Ins_SANGW,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_SANGW, %function
Ins_SANGW:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Ins_SANGW, .-Ins_SANGW
	.section	.text.Ins_SDB,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_SDB, %function
Ins_SDB:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3]
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #332]	@ movhi
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Ins_SDB, .-Ins_SDB
	.section	.text.Ins_SDS,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_SDS, %function
Ins_SDS:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3]
	cmp	r3, #6
	bls	.L991
	ldr	r3, [r7, #4]
	movs	r2, #132
	str	r2, [r3, #12]
	b	.L990
.L991:
	ldr	r3, [r7]
	ldr	r3, [r3]
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #334]	@ movhi
.L990:
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Ins_SDS, .-Ins_SDS
	.section	.text.Ins_RTHG,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_RTHG, %function
Ins_RTHG:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #312]
	ldr	r3, [r7, #4]
	ldr	r2, .L994
.LPIC44:
	add	r2, pc
	str	r2, [r3, #568]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L995:
	.align	2
.L994:
	.word	Round_To_Half_Grid-(.LPIC44+4)
	.size	Ins_RTHG, .-Ins_RTHG
	.section	.text.Ins_RTG,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_RTG, %function
Ins_RTG:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #312]
	ldr	r3, [r7, #4]
	ldr	r2, .L997
.LPIC45:
	add	r2, pc
	str	r2, [r3, #568]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L998:
	.align	2
.L997:
	.word	Round_To_Grid-(.LPIC45+4)
	.size	Ins_RTG, .-Ins_RTG
	.section	.text.Ins_RTDG,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_RTDG, %function
Ins_RTDG:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #2
	str	r2, [r3, #312]
	ldr	r3, [r7, #4]
	ldr	r2, .L1000
.LPIC46:
	add	r2, pc
	str	r2, [r3, #568]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L1001:
	.align	2
.L1000:
	.word	Round_To_Double_Grid-(.LPIC46+4)
	.size	Ins_RTDG, .-Ins_RTDG
	.section	.text.Ins_RUTG,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_RUTG, %function
Ins_RUTG:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #4
	str	r2, [r3, #312]
	ldr	r3, [r7, #4]
	ldr	r2, .L1003
.LPIC47:
	add	r2, pc
	str	r2, [r3, #568]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L1004:
	.align	2
.L1003:
	.word	Round_Up_To_Grid-(.LPIC47+4)
	.size	Ins_RUTG, .-Ins_RUTG
	.section	.text.Ins_RDTG,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_RDTG, %function
Ins_RDTG:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #3
	str	r2, [r3, #312]
	ldr	r3, [r7, #4]
	ldr	r2, .L1006
.LPIC48:
	add	r2, pc
	str	r2, [r3, #568]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L1007:
	.align	2
.L1006:
	.word	Round_Down_To_Grid-(.LPIC48+4)
	.size	Ins_RDTG, .-Ins_RDTG
	.section	.text.Ins_ROFF,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_ROFF, %function
Ins_ROFF:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #5
	str	r2, [r3, #312]
	ldr	r3, [r7, #4]
	ldr	r2, .L1009
.LPIC49:
	add	r2, pc
	str	r2, [r3, #568]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L1010:
	.align	2
.L1009:
	.word	Round_None-(.LPIC49+4)
	.size	Ins_ROFF, .-Ins_ROFF
	.section	.text.Ins_SROUND,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_SROUND, %function
Ins_SROUND:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3]
	ldr	r0, [r7, #4]
	mov	r1, #16384
	mov	r2, r3
	bl	SetSuperRound(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #6
	str	r2, [r3, #312]
	ldr	r3, [r7, #4]
	ldr	r2, .L1012
.LPIC50:
	add	r2, pc
	str	r2, [r3, #568]
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L1013:
	.align	2
.L1012:
	.word	Round_Super-(.LPIC50+4)
	.size	Ins_SROUND, .-Ins_SROUND
	.section	.text.Ins_S45ROUND,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_S45ROUND, %function
Ins_S45ROUND:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3]
	ldr	r0, [r7, #4]
	movw	r1, #11585
	mov	r2, r3
	bl	SetSuperRound(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #7
	str	r2, [r3, #312]
	ldr	r3, [r7, #4]
	ldr	r2, .L1015
.LPIC51:
	add	r2, pc
	str	r2, [r3, #568]
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L1016:
	.align	2
.L1015:
	.word	Round_Super_45-(.LPIC51+4)
	.size	Ins_S45ROUND, .-Ins_S45ROUND
	.section	.text.Ins_GC,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_GC, %function
Ins_GC:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3]
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #116]
	mov	r2, r3
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bhi	.L1018
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #561]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1019
	ldr	r3, [r7, #4]
	movs	r2, #134
	str	r2, [r3, #12]
.L1019:
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L1020
.L1018:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #368]	@ zero_extendqisi2
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L1021
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #576]
	ldr	r2, [r7, #4]
	ldr	r1, [r2, #120]
	ldr	r2, [r7, #8]
	lsls	r2, r2, #3
	add	r2, r2, r1
	ldr	r1, [r2]
	ldr	r2, [r7, #4]
	ldr	r0, [r2, #120]
	ldr	r2, [r7, #8]
	lsls	r2, r2, #3
	add	r2, r2, r0
	ldr	r2, [r2, #4]
	ldr	r0, [r7, #4]
	blx	r3
	str	r0, [r7, #12]
	b	.L1020
.L1021:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #572]
	ldr	r2, [r7, #4]
	ldr	r1, [r2, #124]
	ldr	r2, [r7, #8]
	lsls	r2, r2, #3
	add	r2, r2, r1
	ldr	r1, [r2]
	ldr	r2, [r7, #4]
	ldr	r0, [r2, #124]
	ldr	r2, [r7, #8]
	lsls	r2, r2, #3
	add	r2, r2, r0
	ldr	r2, [r2, #4]
	ldr	r0, [r7, #4]
	blx	r3
	str	r0, [r7, #12]
.L1020:
	ldr	r3, [r7]
	ldr	r2, [r7, #12]
	str	r2, [r3]
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	Ins_GC, .-Ins_GC
	.section	.text.Ins_SCFS,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_SCFS, %function
Ins_SCFS:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3]
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #116]
	ldrh	r2, [r7, #14]
	cmp	r2, r3
	bcc	.L1023
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #561]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1024
	ldr	r3, [r7, #4]
	movs	r2, #134
	str	r2, [r3, #12]
	b	.L1022
.L1024:
	b	.L1022
.L1023:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #572]
	ldr	r2, [r7, #4]
	ldr	r1, [r2, #124]
	ldrh	r2, [r7, #14]
	lsls	r2, r2, #3
	add	r2, r2, r1
	ldr	r1, [r2]
	ldr	r2, [r7, #4]
	ldr	r0, [r2, #124]
	ldrh	r2, [r7, #14]
	lsls	r2, r2, #3
	add	r2, r2, r0
	ldr	r2, [r2, #4]
	ldr	r0, [r7, #4]
	blx	r3
	str	r0, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #584]
	ldr	r3, [r7, #4]
	add	r1, r3, #108
	ldr	r3, [r7]
	adds	r3, r3, #4
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	subs	r3, r2, r3
	ldrh	r2, [r7, #14]
	ldr	r0, [r7, #4]
	blx	r4
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #348]
	cmp	r3, #0
	bne	.L1022
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #120]
	ldrh	r3, [r7, #14]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r7, #4]
	ldr	r1, [r2, #124]
	ldrh	r2, [r7, #14]
	lsls	r2, r2, #3
	add	r2, r2, r1
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
.L1022:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	Ins_SCFS, .-Ins_SCFS
	.section	.text.Ins_MD,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_MD, %function
Ins_MD:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #44
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	adds	r3, r3, #4
	ldr	r3, [r3]
	strh	r3, [r7, #34]	@ movhi
	ldr	r3, [r7]
	ldr	r3, [r3]
	strh	r3, [r7, #32]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #44]
	ldrh	r2, [r7, #32]
	cmp	r2, r3
	bcs	.L1027
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #80]
	ldrh	r2, [r7, #34]
	cmp	r2, r3
	bcc	.L1028
.L1027:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #561]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1029
	ldr	r3, [r7, #4]
	movs	r2, #134
	str	r2, [r3, #12]
.L1029:
	movs	r3, #0
	str	r3, [r7, #36]
	b	.L1030
.L1028:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #368]	@ zero_extendqisi2
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L1031
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #572]
	ldr	r2, [r7, #4]
	ldr	r1, [r2, #52]
	ldrh	r2, [r7, #32]
	lsls	r2, r2, #3
	add	r2, r2, r1
	ldr	r1, [r2]
	ldr	r2, [r7, #4]
	ldr	r0, [r2, #88]
	ldrh	r2, [r7, #34]
	lsls	r2, r2, #3
	add	r2, r2, r0
	ldr	r2, [r2]
	subs	r1, r1, r2
	ldr	r2, [r7, #4]
	ldr	r0, [r2, #52]
	ldrh	r2, [r7, #32]
	lsls	r2, r2, #3
	add	r2, r2, r0
	ldr	r0, [r2, #4]
	ldr	r2, [r7, #4]
	ldr	r4, [r2, #88]
	ldrh	r2, [r7, #34]
	lsls	r2, r2, #3
	add	r2, r2, r4
	ldr	r2, [r2, #4]
	subs	r2, r0, r2
	ldr	r0, [r7, #4]
	blx	r3
	str	r0, [r7, #36]
	b	.L1030
.L1031:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #344]
	cmp	r3, #0
	beq	.L1032
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #346]
	cmp	r3, #0
	bne	.L1033
.L1032:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #48]
	ldrh	r3, [r7, #32]
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #84]
	ldrh	r3, [r7, #34]
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #576]
	ldr	r2, [r7, #20]
	ldr	r1, [r2]
	ldr	r2, [r7, #16]
	ldr	r2, [r2]
	subs	r1, r1, r2
	ldr	r2, [r7, #20]
	ldr	r0, [r2, #4]
	ldr	r2, [r7, #16]
	ldr	r2, [r2, #4]
	subs	r2, r0, r2
	ldr	r0, [r7, #4]
	blx	r3
	str	r0, [r7, #36]
	b	.L1030
.L1033:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #56]
	ldrh	r3, [r7, #32]
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #92]
	ldrh	r3, [r7, #34]
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #220]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #224]
	cmp	r2, r3
	bne	.L1034
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #576]
	ldr	r2, [r7, #28]
	ldr	r1, [r2]
	ldr	r2, [r7, #24]
	ldr	r2, [r2]
	subs	r1, r1, r2
	ldr	r2, [r7, #28]
	ldr	r0, [r2, #4]
	ldr	r2, [r7, #24]
	ldr	r2, [r2, #4]
	subs	r2, r0, r2
	ldr	r0, [r7, #4]
	blx	r3
	str	r0, [r7, #36]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #220]
	ldr	r0, [r7, #36]
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	str	r0, [r7, #36]
	b	.L1030
.L1034:
	ldr	r3, [r7, #28]
	ldr	r2, [r3]
	ldr	r3, [r7, #24]
	ldr	r3, [r3]
	subs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #220]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #4]
	subs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #224]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #576]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #12]
	ldr	r0, [r7, #4]
	blx	r3
	str	r0, [r7, #36]
.L1030:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #96]
	ldr	r3, [r3, #64]
	cmp	r3, #38
	bne	.L1035
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #617]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1035
	ldr	r3, [r7, #36]
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	cmp	r3, #64
	bne	.L1035
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L1035:
	ldr	r3, [r7]
	ldr	r2, [r7, #36]
	str	r2, [r3]
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	Ins_MD, .-Ins_MD
	.section	.text.Ins_SDPVTL,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_SDPVTL, %function
Ins_SDPVTL:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #368]
	strb	r3, [r7, #39]
	ldr	r3, [r7]
	adds	r3, r3, #4
	ldr	r3, [r3]
	strh	r3, [r7, #36]	@ movhi
	ldr	r3, [r7]
	ldr	r3, [r3]
	strh	r3, [r7, #34]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #80]
	ldrh	r2, [r7, #34]
	cmp	r2, r3
	bcs	.L1037
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #116]
	ldrh	r2, [r7, #36]
	cmp	r2, r3
	bcc	.L1038
.L1037:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #561]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1039
	ldr	r3, [r7, #4]
	movs	r2, #134
	str	r2, [r3, #12]
	b	.L1036
.L1039:
	b	.L1036
.L1038:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #84]
	ldrh	r3, [r7, #34]
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #120]
	ldrh	r3, [r7, #36]
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	ldr	r2, [r3]
	ldr	r3, [r7, #24]
	ldr	r3, [r3]
	subs	r3, r2, r3
	str	r3, [r7, #44]
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	str	r3, [r7, #40]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bne	.L1041
	ldr	r3, [r7, #40]
	cmp	r3, #0
	bne	.L1041
	mov	r3, #16384
	str	r3, [r7, #44]
	movs	r3, #0
	strb	r3, [r7, #39]
.L1041:
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L1042
	ldr	r3, [r7, #40]
	str	r3, [r7, #20]
	ldr	r3, [r7, #44]
	str	r3, [r7, #40]
	ldr	r3, [r7, #20]
	negs	r3, r3
	str	r3, [r7, #44]
.L1042:
	ldr	r3, [r7, #4]
	add	r3, r3, #290
	ldr	r0, [r7, #44]
	ldr	r1, [r7, #40]
	mov	r2, r3
	bl	Normalize(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #88]
	ldrh	r3, [r7, #34]
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #124]
	ldrh	r3, [r7, #36]
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #16]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	subs	r3, r2, r3
	str	r3, [r7, #44]
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	str	r3, [r7, #40]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bne	.L1043
	ldr	r3, [r7, #40]
	cmp	r3, #0
	bne	.L1043
	mov	r3, #16384
	str	r3, [r7, #44]
	movs	r3, #0
	strb	r3, [r7, #39]
.L1043:
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L1044
	ldr	r3, [r7, #40]
	str	r3, [r7, #20]
	ldr	r3, [r7, #44]
	str	r3, [r7, #40]
	ldr	r3, [r7, #20]
	negs	r3, r3
	str	r3, [r7, #44]
.L1044:
	ldr	r3, [r7, #4]
	add	r3, r3, #294
	ldr	r0, [r7, #44]
	ldr	r1, [r7, #40]
	mov	r2, r3
	bl	Normalize(PLT)
	ldr	r0, [r7, #4]
	bl	Compute_Funcs(PLT)
.L1036:
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	Ins_SDPVTL, .-Ins_SDPVTL
	.section	.text.Ins_SZP0,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_SZP0, %function
Ins_SZP0:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L1047
	cmp	r3, #1
	beq	.L1048
	b	.L1052
.L1047:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #4]
	add	r4, r2, #36
	add	r5, r3, #180
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	b	.L1049
.L1048:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #4]
	add	r4, r2, #36
	add	r5, r3, #144
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	b	.L1049
.L1052:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #561]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1050
	ldr	r3, [r7, #4]
	movs	r2, #134
	str	r2, [r3, #12]
	b	.L1045
.L1050:
	b	.L1045
.L1049:
	ldr	r3, [r7]
	ldr	r3, [r3]
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #344]	@ movhi
.L1045:
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7}
	bx	lr
	.size	Ins_SZP0, .-Ins_SZP0
	.section	.text.Ins_SZP1,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_SZP1, %function
Ins_SZP1:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L1055
	cmp	r3, #1
	beq	.L1056
	b	.L1060
.L1055:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #4]
	add	r4, r2, #72
	add	r5, r3, #180
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	b	.L1057
.L1056:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #4]
	add	r4, r2, #72
	add	r5, r3, #144
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	b	.L1057
.L1060:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #561]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1058
	ldr	r3, [r7, #4]
	movs	r2, #134
	str	r2, [r3, #12]
	b	.L1053
.L1058:
	b	.L1053
.L1057:
	ldr	r3, [r7]
	ldr	r3, [r3]
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #346]	@ movhi
.L1053:
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7}
	bx	lr
	.size	Ins_SZP1, .-Ins_SZP1
	.section	.text.Ins_SZP2,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_SZP2, %function
Ins_SZP2:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L1063
	cmp	r3, #1
	beq	.L1064
	b	.L1068
.L1063:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #4]
	add	r4, r2, #108
	add	r5, r3, #180
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	b	.L1065
.L1064:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #4]
	add	r4, r2, #108
	add	r5, r3, #144
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	b	.L1065
.L1068:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #561]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1066
	ldr	r3, [r7, #4]
	movs	r2, #134
	str	r2, [r3, #12]
	b	.L1061
.L1066:
	b	.L1061
.L1065:
	ldr	r3, [r7]
	ldr	r3, [r3]
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #348]	@ movhi
.L1061:
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7}
	bx	lr
	.size	Ins_SZP2, .-Ins_SZP2
	.section	.text.Ins_SZPS,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_SZPS, %function
Ins_SZPS:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L1071
	cmp	r3, #1
	beq	.L1072
	b	.L1076
.L1071:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #4]
	add	r4, r2, #36
	add	r5, r3, #180
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	b	.L1073
.L1072:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #4]
	add	r4, r2, #36
	add	r5, r3, #144
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	b	.L1073
.L1076:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #561]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1074
	ldr	r3, [r7, #4]
	movs	r2, #134
	str	r2, [r3, #12]
	b	.L1069
.L1074:
	b	.L1069
.L1073:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #4]
	add	r4, r2, #72
	add	r5, r3, #36
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #4]
	add	r4, r2, #108
	add	r5, r3, #36
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7]
	ldr	r3, [r3]
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #344]	@ movhi
	ldr	r3, [r7]
	ldr	r3, [r3]
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #346]	@ movhi
	ldr	r3, [r7]
	ldr	r3, [r3]
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #348]	@ movhi
.L1069:
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7}
	bx	lr
	.size	Ins_SZPS, .-Ins_SZPS
	.section	.text.Ins_INSTCTRL,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_INSTCTRL, %function
Ins_INSTCTRL:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	adds	r3, r3, #4
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r3, [r7]
	ldr	r3, [r3]
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L1078
	ldr	r3, [r7, #20]
	cmp	r3, #3
	bls	.L1079
.L1078:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #561]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1080
	ldr	r3, [r7, #4]
	movs	r2, #134
	str	r2, [r3, #12]
	b	.L1077
.L1080:
	b	.L1077
.L1079:
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	movs	r2, #1
	lsl	r3, r2, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L1082
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	beq	.L1082
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #561]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1083
	ldr	r3, [r7, #4]
	movs	r2, #134
	str	r2, [r3, #12]
	b	.L1077
.L1083:
	b	.L1077
.L1082:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #336]	@ zero_extendqisi2
	uxtb	r2, r3
	ldr	r3, [r7, #12]
	uxtb	r3, r3
	mvns	r3, r3
	uxtb	r3, r3
	ands	r3, r3, r2
	uxtb	r3, r3
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3, #336]
	ldr	r3, [r7, #4]
	ldrb	r2, [r3, #336]	@ zero_extendqisi2
	ldr	r3, [r7, #16]
	uxtb	r3, r3
	orrs	r3, r3, r2
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3, #336]
	ldr	r3, [r7, #20]
	cmp	r3, #3
	bne	.L1077
	ldr	r3, [r7, #16]
	cmp	r3, #4
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3, #617]
.L1077:
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Ins_INSTCTRL, .-Ins_INSTCTRL
	.section	.text.Ins_SCANCTRL,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_SCANCTRL, %function
Ins_SCANCTRL:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3]
	uxtb	r3, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #255
	bne	.L1085
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #337]
	b	.L1084
.L1085:
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L1087
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #337]
	b	.L1084
.L1087:
	ldr	r3, [r7]
	ldr	r3, [r3]
	and	r3, r3, #256
	cmp	r3, #0
	beq	.L1088
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #252]
	mov	r2, r3
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bgt	.L1088
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #337]
.L1088:
	ldr	r3, [r7]
	ldr	r3, [r3]
	and	r3, r3, #512
	cmp	r3, #0
	beq	.L1089
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #281]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1089
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #337]
.L1089:
	ldr	r3, [r7]
	ldr	r3, [r3]
	and	r3, r3, #1024
	cmp	r3, #0
	beq	.L1090
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #282]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1090
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #337]
.L1090:
	ldr	r3, [r7]
	ldr	r3, [r3]
	and	r3, r3, #2048
	cmp	r3, #0
	beq	.L1091
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #252]
	mov	r2, r3
	ldr	r3, [r7, #12]
	cmp	r2, r3
	ble	.L1091
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #337]
.L1091:
	ldr	r3, [r7]
	ldr	r3, [r3]
	and	r3, r3, #4096
	cmp	r3, #0
	beq	.L1092
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #281]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1092
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #337]
.L1092:
	ldr	r3, [r7]
	ldr	r3, [r3]
	and	r3, r3, #8192
	cmp	r3, #0
	beq	.L1084
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #282]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1084
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #337]
.L1084:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Ins_SCANCTRL, .-Ins_SCANCTRL
	.section	.text.Ins_SCANTYPE,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_SCANTYPE, %function
Ins_SCANTYPE:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3]
	cmp	r3, #0
	blt	.L1093
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #340]
.L1093:
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Ins_SCANTYPE, .-Ins_SCANTYPE
	.section	.text.Ins_FLIPPT,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_FLIPPT, %function
Ins_FLIPPT:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #304]
	cmp	r2, r3
	bge	.L1096
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #561]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1097
	ldr	r3, [r7, #4]
	movs	r2, #129
	str	r2, [r3, #12]
	b	.L1098
.L1097:
	b	.L1098
.L1096:
	b	.L1099
.L1103:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	subs	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #28]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #152]
	ldrh	r2, [r7, #14]
	cmp	r2, r3
	bcc	.L1100
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #561]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1101
	ldr	r3, [r7, #4]
	movs	r2, #134
	str	r2, [r3, #12]
	b	.L1095
.L1100:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #168]
	ldrh	r3, [r7, #14]
	add	r3, r3, r2
	ldr	r2, [r7, #4]
	ldr	r1, [r2, #168]
	ldrh	r2, [r7, #14]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	eor	r2, r2, #1
	uxtb	r2, r2
	strb	r2, [r3]
.L1101:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #304]
	subs	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #304]
.L1099:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #304]
	cmp	r3, #0
	bgt	.L1103
.L1098:
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #304]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #4]
	str	r2, [r3, #32]
.L1095:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Ins_FLIPPT, .-Ins_FLIPPT
	.section	.text.Ins_FLIPRGON,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_FLIPRGON, %function
Ins_FLIPRGON:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	adds	r3, r3, #4
	ldr	r3, [r3]
	strh	r3, [r7, #12]	@ movhi
	ldr	r3, [r7]
	ldr	r3, [r3]
	strh	r3, [r7, #10]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #152]
	ldrh	r2, [r7, #12]
	cmp	r2, r3
	bcs	.L1105
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #152]
	ldrh	r2, [r7, #10]
	cmp	r2, r3
	bcc	.L1106
.L1105:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #561]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1107
	ldr	r3, [r7, #4]
	movs	r2, #134
	str	r2, [r3, #12]
	b	.L1104
.L1107:
	b	.L1104
.L1106:
	ldrh	r3, [r7, #10]	@ movhi
	strh	r3, [r7, #14]	@ movhi
	b	.L1109
.L1110:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #168]
	ldrh	r3, [r7, #14]
	add	r3, r3, r2
	ldr	r2, [r7, #4]
	ldr	r1, [r2, #168]
	ldrh	r2, [r7, #14]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	orr	r2, r2, #1
	uxtb	r2, r2
	strb	r2, [r3]
	ldrh	r3, [r7, #14]
	adds	r3, r3, #1
	strh	r3, [r7, #14]	@ movhi
.L1109:
	ldrh	r2, [r7, #14]
	ldrh	r3, [r7, #12]
	cmp	r2, r3
	bls	.L1110
.L1104:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Ins_FLIPRGON, .-Ins_FLIPRGON
	.section	.text.Ins_FLIPRGOFF,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_FLIPRGOFF, %function
Ins_FLIPRGOFF:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	adds	r3, r3, #4
	ldr	r3, [r3]
	strh	r3, [r7, #12]	@ movhi
	ldr	r3, [r7]
	ldr	r3, [r3]
	strh	r3, [r7, #10]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #152]
	ldrh	r2, [r7, #12]
	cmp	r2, r3
	bcs	.L1112
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #152]
	ldrh	r2, [r7, #10]
	cmp	r2, r3
	bcc	.L1113
.L1112:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #561]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1114
	ldr	r3, [r7, #4]
	movs	r2, #134
	str	r2, [r3, #12]
	b	.L1111
.L1114:
	b	.L1111
.L1113:
	ldrh	r3, [r7, #10]	@ movhi
	strh	r3, [r7, #14]	@ movhi
	b	.L1116
.L1117:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #168]
	ldrh	r3, [r7, #14]
	add	r3, r3, r2
	ldr	r2, [r7, #4]
	ldr	r1, [r2, #168]
	ldrh	r2, [r7, #14]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	bic	r2, r2, #1
	uxtb	r2, r2
	strb	r2, [r3]
	ldrh	r3, [r7, #14]
	adds	r3, r3, #1
	strh	r3, [r7, #14]	@ movhi
.L1116:
	ldrh	r2, [r7, #14]
	ldrh	r3, [r7, #12]
	cmp	r2, r3
	bls	.L1117
.L1111:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Ins_FLIPRGOFF, .-Ins_FLIPRGOFF
	.section	.text.Compute_Point_Displacement,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Compute_Point_Displacement, %function
Compute_Point_Displacement:
	@ args = 4, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #64
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #368]	@ zero_extendqisi2
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L1119
	ldr	r3, [r7, #12]
	add	r4, r7, #20
	add	r5, r3, #36
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #286]	@ movhi
	strh	r3, [r7, #62]	@ movhi
	b	.L1120
.L1119:
	ldr	r3, [r7, #12]
	add	r4, r7, #20
	add	r5, r3, #72
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #288]	@ movhi
	strh	r3, [r7, #62]	@ movhi
.L1120:
	ldrh	r3, [r7, #28]
	ldrh	r2, [r7, #62]
	cmp	r2, r3
	bcc	.L1121
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #561]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1122
	ldr	r3, [r7, #12]
	movs	r2, #134
	str	r2, [r3, #12]
.L1122:
	ldr	r3, [r7, #80]
	movs	r2, #0
	strh	r2, [r3]	@ movhi
	movs	r3, #1
	b	.L1124
.L1121:
	ldr	r3, [r7]
	mov	r4, r3
	add	r5, r7, #20
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7, #80]
	ldrh	r2, [r7, #62]	@ movhi
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #572]
	ldr	r1, [r7, #36]
	ldrh	r2, [r7, #62]
	lsls	r2, r2, #3
	add	r2, r2, r1
	ldr	r1, [r2]
	ldr	r0, [r7, #32]
	ldrh	r2, [r7, #62]
	lsls	r2, r2, #3
	add	r2, r2, r0
	ldr	r2, [r2]
	subs	r1, r1, r2
	ldr	r0, [r7, #36]
	ldrh	r2, [r7, #62]
	lsls	r2, r2, #3
	add	r2, r2, r0
	ldr	r0, [r2, #4]
	ldr	r4, [r7, #32]
	ldrh	r2, [r7, #62]
	lsls	r2, r2, #3
	add	r2, r2, r4
	ldr	r2, [r2, #4]
	subs	r2, r0, r2
	ldr	r0, [r7, #12]
	blx	r3
	str	r0, [r7, #56]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #298]
	sxth	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #564]
	ldr	r0, [r7, #56]
	mov	r1, r2
	mov	r2, r3
	bl	FT_MulDiv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #8]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #300]
	sxth	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #564]
	ldr	r0, [r7, #56]
	mov	r1, r2
	mov	r2, r3
	bl	FT_MulDiv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3]
	movs	r3, #0
.L1124:
	mov	r0, r3
	adds	r7, r7, #64
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.size	Compute_Point_Displacement, .-Compute_Point_Displacement
	.section	.text.Move_Zp2_Point,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Move_Zp2_Point, %function
Move_Zp2_Point:
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r2, [r7, #4]
	str	r3, [r7]
	mov	r3, r1	@ movhi
	strh	r3, [r7, #10]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #298]
	cmp	r3, #0
	beq	.L1126
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #124]
	ldrh	r3, [r7, #10]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r7, #12]
	ldr	r1, [r2, #124]
	ldrh	r2, [r7, #10]
	lsls	r2, r2, #3
	add	r2, r2, r1
	ldr	r1, [r2]
	ldr	r2, [r7, #4]
	add	r2, r2, r1
	str	r2, [r3]
	ldrb	r3, [r7, #24]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1126
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #132]
	ldrh	r3, [r7, #10]
	add	r3, r3, r2
	ldr	r2, [r7, #12]
	ldr	r1, [r2, #132]
	ldrh	r2, [r7, #10]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	orr	r2, r2, #8
	uxtb	r2, r2
	strb	r2, [r3]
.L1126:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #300]
	cmp	r3, #0
	beq	.L1125
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #124]
	ldrh	r3, [r7, #10]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r7, #12]
	ldr	r1, [r2, #124]
	ldrh	r2, [r7, #10]
	lsls	r2, r2, #3
	add	r2, r2, r1
	ldr	r1, [r2, #4]
	ldr	r2, [r7]
	add	r2, r2, r1
	str	r2, [r3, #4]
	ldrb	r3, [r7, #24]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1125
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #132]
	ldrh	r3, [r7, #10]
	add	r3, r3, r2
	ldr	r2, [r7, #12]
	ldr	r1, [r2, #132]
	ldrh	r2, [r7, #10]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	orr	r2, r2, #16
	uxtb	r2, r2
	strb	r2, [r3]
.L1125:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Move_Zp2_Point, .-Move_Zp2_Point
	.section	.text.Ins_SHP,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_SHP, %function
Ins_SHP:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #72
	add	r7, sp, #8
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #304]
	cmp	r2, r3
	bge	.L1129
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #561]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1130
	ldr	r3, [r7, #4]
	movs	r2, #134
	str	r2, [r3, #12]
	b	.L1131
.L1130:
	b	.L1131
.L1129:
	add	r1, r7, #16
	add	r2, r7, #12
	add	r3, r7, #24
	add	r0, r7, #22
	str	r0, [sp]
	ldr	r0, [r7, #4]
	bl	Compute_Point_Displacement(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1132
	b	.L1128
.L1132:
	b	.L1134
.L1138:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	subs	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #28]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	strh	r3, [r7, #62]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #116]
	ldrh	r2, [r7, #62]
	cmp	r2, r3
	bcc	.L1135
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #561]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1136
	ldr	r3, [r7, #4]
	movs	r2, #134
	str	r2, [r3, #12]
	b	.L1128
.L1135:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #96]
	ldr	r3, [r3, #64]
	cmp	r3, #38
	bne	.L1137
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #617]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1137
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #62]
	movs	r1, #1
	str	r1, [sp]
	ldr	r0, [r7, #4]
	mov	r1, r2
	movs	r2, #0
	bl	Move_Zp2_Point(PLT)
	b	.L1136
.L1137:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #12]
	ldrh	r1, [r7, #62]
	movs	r0, #1
	str	r0, [sp]
	ldr	r0, [r7, #4]
	bl	Move_Zp2_Point(PLT)
.L1136:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #304]
	subs	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #304]
.L1134:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #304]
	cmp	r3, #0
	bgt	.L1138
.L1131:
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #304]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #4]
	str	r2, [r3, #32]
.L1128:
	adds	r7, r7, #64
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	Ins_SHP, .-Ins_SHP
	.section	.text.Ins_SHC,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_SHC, %function
Ins_SHC:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #80
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3]
	strh	r3, [r7, #64]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #348]
	cmp	r3, #0
	beq	.L1141
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #118]
	b	.L1142
.L1141:
	movs	r3, #1
.L1142:
	strh	r3, [r7, #62]	@ movhi
	ldrh	r2, [r7, #64]
	ldrh	r3, [r7, #62]
	cmp	r2, r3
	bcc	.L1143
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #561]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1144
	ldr	r3, [r7, #4]
	movs	r2, #134
	str	r2, [r3, #12]
	b	.L1140
.L1144:
	b	.L1140
.L1143:
	add	r1, r7, #16
	add	r2, r7, #12
	add	r3, r7, #24
	add	r0, r7, #22
	str	r0, [sp]
	ldr	r0, [r7, #4]
	bl	Compute_Point_Displacement(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1146
	b	.L1140
.L1146:
	ldrsh	r3, [r7, #64]
	cmp	r3, #0
	bne	.L1147
	movs	r3, #0
	strh	r3, [r7, #70]	@ movhi
	b	.L1148
.L1147:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #136]
	ldrsh	r3, [r7, #64]
	add	r3, r3, #-2147483648
	subs	r3, r3, #1
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r2, [r3]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #140]
	subs	r3, r2, r3
	uxth	r3, r3
	adds	r3, r3, #1
	strh	r3, [r7, #70]	@ movhi
.L1148:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #348]
	cmp	r3, #0
	bne	.L1149
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #116]	@ movhi
	strh	r3, [r7, #68]	@ movhi
	b	.L1150
.L1149:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #136]
	ldrsh	r3, [r7, #64]
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r2, [r3]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #140]
	subs	r3, r2, r3
	uxth	r3, r3
	adds	r3, r3, #1
	strh	r3, [r7, #68]	@ movhi
.L1150:
	ldrh	r3, [r7, #70]	@ movhi
	strh	r3, [r7, #66]	@ movhi
	b	.L1151
.L1154:
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #124]
	cmp	r2, r3
	bne	.L1152
	ldrh	r3, [r7, #22]
	ldrh	r2, [r7, #66]
	cmp	r2, r3
	beq	.L1153
.L1152:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #12]
	ldrh	r1, [r7, #66]
	movs	r0, #1
	str	r0, [sp]
	ldr	r0, [r7, #4]
	bl	Move_Zp2_Point(PLT)
.L1153:
	ldrh	r3, [r7, #66]
	adds	r3, r3, #1
	strh	r3, [r7, #66]	@ movhi
.L1151:
	ldrh	r2, [r7, #66]
	ldrh	r3, [r7, #68]
	cmp	r2, r3
	bcc	.L1154
.L1140:
	adds	r7, r7, #72
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	Ins_SHC, .-Ins_SHC
	.section	.text.Ins_SHZ,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_SHZ, %function
Ins_SHZ:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #72
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3]
	cmp	r3, #1
	bls	.L1157
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #561]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1158
	ldr	r3, [r7, #4]
	movs	r2, #134
	str	r2, [r3, #12]
	b	.L1156
.L1158:
	b	.L1156
.L1157:
	add	r1, r7, #16
	add	r2, r7, #12
	add	r3, r7, #24
	add	r0, r7, #22
	str	r0, [sp]
	ldr	r0, [r7, #4]
	bl	Compute_Point_Displacement(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1160
	b	.L1156
.L1160:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #348]
	cmp	r3, #0
	bne	.L1161
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #116]	@ movhi
	strh	r3, [r7, #62]	@ movhi
	b	.L1162
.L1161:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #348]
	cmp	r3, #1
	bne	.L1163
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #118]
	sxth	r3, r3
	cmp	r3, #0
	ble	.L1163
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #136]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #118]
	sxth	r3, r3
	add	r3, r3, #-2147483648
	subs	r3, r3, #1
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r3, [r3]
	adds	r3, r3, #1
	strh	r3, [r7, #62]	@ movhi
	b	.L1162
.L1163:
	movs	r3, #0
	strh	r3, [r7, #62]	@ movhi
.L1162:
	movs	r3, #0
	strh	r3, [r7, #60]	@ movhi
	b	.L1164
.L1167:
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #124]
	cmp	r2, r3
	bne	.L1165
	ldrh	r3, [r7, #22]
	ldrh	r2, [r7, #60]
	cmp	r2, r3
	beq	.L1166
.L1165:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #12]
	ldrh	r1, [r7, #60]
	movs	r0, #0
	str	r0, [sp]
	ldr	r0, [r7, #4]
	bl	Move_Zp2_Point(PLT)
.L1166:
	ldrh	r3, [r7, #60]
	adds	r3, r3, #1
	strh	r3, [r7, #60]	@ movhi
.L1164:
	ldrh	r2, [r7, #60]
	ldrh	r3, [r7, #62]
	cmp	r2, r3
	bcc	.L1167
.L1156:
	adds	r7, r7, #64
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	Ins_SHZ, .-Ins_SHZ
	.section	.text.Ins_SHPIX,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_SHPIX, %function
Ins_SHPIX:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #304]
	adds	r3, r3, #1
	cmp	r2, r3
	bge	.L1170
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #561]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1171
	ldr	r3, [r7, #4]
	movs	r2, #134
	str	r2, [r3, #12]
	b	.L1172
.L1171:
	b	.L1172
.L1170:
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #298]
	sxth	r3, r3
	mov	r0, r2
	mov	r1, r3
	bl	TT_MulFix14_arm(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #300]
	sxth	r3, r3
	mov	r0, r2
	mov	r1, r3
	bl	TT_MulFix14_arm(PLT)
	str	r0, [r7, #24]
	b	.L1173
.L1190:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	subs	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #28]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	strh	r3, [r7, #18]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #116]
	ldrh	r2, [r7, #18]
	cmp	r2, r3
	bcc	.L1174
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #561]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1175
	ldr	r3, [r7, #4]
	movs	r2, #134
	str	r2, [r3, #12]
	b	.L1169
.L1174:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #96]
	ldr	r3, [r3, #64]
	cmp	r3, #38
	bne	.L1177
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #617]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1177
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #300]
	cmp	r3, #0
	beq	.L1178
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #124]
	ldrh	r3, [r7, #18]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	str	r3, [r7, #20]
	b	.L1179
.L1178:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #124]
	ldrh	r3, [r7, #18]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #20]
.L1179:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldrb	r3, [r3, #796]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L1180
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #300]
	cmp	r3, #0
	beq	.L1180
	ldrh	r3, [r7, #18]
	movs	r2, #1
	str	r2, [sp]
	ldr	r0, [r7, #4]
	mov	r1, r3
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #24]
	bl	Move_Zp2_Point(PLT)
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #300]
	cmp	r3, #0
	beq	.L1181
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #124]
	ldrh	r3, [r7, #18]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #632]
	and	r3, r3, #65536
	cmp	r3, #0
	beq	.L1181
	ldr	r3, [r7, #20]
	and	r3, r3, #63
	cmp	r3, #0
	beq	.L1181
	ldr	r3, [r7, #12]
	and	r3, r3, #63
	cmp	r3, #0
	beq	.L1181
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	beq	.L1181
	ldr	r3, [r7, #28]
	negs	r2, r3
	ldr	r3, [r7, #24]
	negs	r3, r3
	ldrh	r1, [r7, #18]
	movs	r0, #1
	str	r0, [sp]
	ldr	r0, [r7, #4]
	bl	Move_Zp2_Point(PLT)
	b	.L1182
.L1181:
	b	.L1182
.L1180:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldrb	r3, [r3, #796]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1183
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #632]
	and	r3, r3, #16384
	cmp	r3, #0
	beq	.L1184
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	adds	r3, r3, #32
	bic	r2, r3, #63
	ldr	r3, [r7, #20]
	subs	r3, r2, r3
	str	r3, [r7, #28]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	adds	r3, r3, #32
	bic	r2, r3, #63
	ldr	r3, [r7, #20]
	subs	r3, r2, r3
	str	r3, [r7, #24]
.L1184:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #628]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1185
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #636]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L1175
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #636]
	and	r3, r3, #2
	cmp	r3, #0
	bne	.L1175
.L1185:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #632]
	and	r3, r3, #4
	cmp	r3, #0
	bne	.L1186
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #560]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1187
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #300]
	cmp	r3, #0
	bne	.L1188
.L1187:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #132]
	ldrh	r3, [r7, #18]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #16
	cmp	r3, #0
	bne	.L1188
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #632]
	and	r3, r3, #32
	cmp	r3, #0
	beq	.L1186
.L1188:
	ldrh	r3, [r7, #18]
	movs	r2, #1
	str	r2, [sp]
	ldr	r0, [r7, #4]
	mov	r1, r3
	movs	r2, #0
	ldr	r3, [r7, #24]
	bl	Move_Zp2_Point(PLT)
.L1186:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #300]
	cmp	r3, #0
	beq	.L1182
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #124]
	ldrh	r3, [r7, #18]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	and	r3, r3, #63
	cmp	r3, #0
	bne	.L1182
	ldr	r3, [r7, #12]
	and	r3, r3, #63
	cmp	r3, #0
	beq	.L1182
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	beq	.L1182
	ldr	r3, [r7, #24]
	negs	r3, r3
	ldrh	r2, [r7, #18]
	movs	r1, #1
	str	r1, [sp]
	ldr	r0, [r7, #4]
	mov	r1, r2
	movs	r2, #0
	bl	Move_Zp2_Point(PLT)
	b	.L1175
.L1183:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #636]
	and	r3, r3, #256
	cmp	r3, #0
	beq	.L1182
	ldrh	r3, [r7, #18]
	movs	r2, #1
	str	r2, [sp]
	ldr	r0, [r7, #4]
	mov	r1, r3
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #24]
	bl	Move_Zp2_Point(PLT)
	b	.L1175
.L1182:
	b	.L1175
.L1177:
	ldrh	r3, [r7, #18]
	movs	r2, #1
	str	r2, [sp]
	ldr	r0, [r7, #4]
	mov	r1, r3
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #24]
	bl	Move_Zp2_Point(PLT)
.L1175:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #304]
	subs	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #304]
.L1173:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #304]
	cmp	r3, #0
	bgt	.L1190
.L1172:
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #304]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #4]
	str	r2, [r3, #32]
.L1169:
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	Ins_SHPIX, .-Ins_SHPIX
	.section	.text.Ins_MSIRP,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_MSIRP, %function
Ins_MSIRP:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #96]
	ldr	r3, [r3, #64]
	cmp	r3, #38
	bne	.L1192
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #320]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #617]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1192
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #298]
	cmp	r3, #0
	beq	.L1192
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #632]
	and	r3, r3, #256
	cmp	r3, #0
	bne	.L1192
	movs	r3, #0
	str	r3, [r7, #16]
.L1192:
	ldr	r3, [r7]
	ldr	r3, [r3]
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #80]
	ldrh	r2, [r7, #14]
	cmp	r2, r3
	bcs	.L1193
	ldr	r3, [r7, #4]
	ldrh	r2, [r3, #284]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #44]
	cmp	r2, r3
	bcc	.L1194
.L1193:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #561]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1195
	ldr	r3, [r7, #4]
	movs	r2, #134
	str	r2, [r3, #12]
	b	.L1191
.L1195:
	b	.L1191
.L1194:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #346]
	cmp	r3, #0
	bne	.L1197
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #84]
	ldrh	r3, [r7, #14]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r7, #4]
	ldr	r1, [r2, #48]
	ldr	r2, [r7, #4]
	ldrh	r2, [r2, #284]
	lsls	r2, r2, #3
	add	r2, r2, r1
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #588]
	ldr	r3, [r7, #4]
	add	r1, r3, #72
	ldr	r3, [r7]
	adds	r3, r3, #4
	ldr	r3, [r3]
	ldrh	r2, [r7, #14]
	ldr	r0, [r7, #4]
	blx	r4
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #88]
	ldrh	r3, [r7, #14]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r7, #4]
	ldr	r1, [r2, #84]
	ldrh	r2, [r7, #14]
	lsls	r2, r2, #3
	add	r2, r2, r1
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
.L1197:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #572]
	ldr	r2, [r7, #4]
	ldr	r1, [r2, #88]
	ldrh	r2, [r7, #14]
	lsls	r2, r2, #3
	add	r2, r2, r1
	ldr	r1, [r2]
	ldr	r2, [r7, #4]
	ldr	r0, [r2, #52]
	ldr	r2, [r7, #4]
	ldrh	r2, [r2, #284]
	lsls	r2, r2, #3
	add	r2, r2, r0
	ldr	r2, [r2]
	subs	r1, r1, r2
	ldr	r2, [r7, #4]
	ldr	r0, [r2, #88]
	ldrh	r2, [r7, #14]
	lsls	r2, r2, #3
	add	r2, r2, r0
	ldr	r0, [r2, #4]
	ldr	r2, [r7, #4]
	ldr	r4, [r2, #52]
	ldr	r2, [r7, #4]
	ldrh	r2, [r2, #284]
	lsls	r2, r2, #3
	add	r2, r2, r4
	ldr	r2, [r2, #4]
	subs	r2, r0, r2
	ldr	r0, [r7, #4]
	blx	r3
	str	r0, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #96]
	ldr	r3, [r3, #64]
	cmp	r3, #38
	bne	.L1198
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #617]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1198
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #298]
	cmp	r3, #0
	beq	.L1198
	ldr	r3, [r7]
	adds	r3, r3, #4
	ldr	r3, [r3]
	ldr	r2, [r7, #20]
	subs	r3, r2, r3
	eor	r2, r3, r3, asr #31
	sub	r2, r2, r3, asr #31
	ldr	r3, [r7, #16]
	cmp	r2, r3
	blt	.L1198
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	str	r3, [r7, #20]
.L1198:
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #584]
	ldr	r3, [r7, #4]
	add	r1, r3, #72
	ldr	r3, [r7]
	adds	r3, r3, #4
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	subs	r3, r2, r3
	ldrh	r2, [r7, #14]
	ldr	r0, [r7, #4]
	blx	r4
	ldr	r3, [r7, #4]
	ldrh	r2, [r3, #284]
	ldr	r3, [r7, #4]
	strh	r2, [r3, #286]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #14]	@ movhi
	strh	r2, [r3, #288]	@ movhi
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #368]	@ zero_extendqisi2
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L1191
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #14]	@ movhi
	strh	r2, [r3, #284]	@ movhi
.L1191:
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	Ins_MSIRP, .-Ins_MSIRP
	.section	.text.Ins_MDAP,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_MDAP, %function
Ins_MDAP:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3]
	strh	r3, [r7, #18]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #44]
	ldrh	r2, [r7, #18]
	cmp	r2, r3
	bcc	.L1200
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #561]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1201
	ldr	r3, [r7, #4]
	movs	r2, #134
	str	r2, [r3, #12]
	b	.L1199
.L1201:
	b	.L1199
.L1200:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #368]	@ zero_extendqisi2
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L1203
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #572]
	ldr	r2, [r7, #4]
	ldr	r1, [r2, #52]
	ldrh	r2, [r7, #18]
	lsls	r2, r2, #3
	add	r2, r2, r1
	ldr	r1, [r2]
	ldr	r2, [r7, #4]
	ldr	r0, [r2, #52]
	ldrh	r2, [r7, #18]
	lsls	r2, r2, #3
	add	r2, r2, r0
	ldr	r2, [r2, #4]
	ldr	r0, [r7, #4]
	blx	r3
	str	r0, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #96]
	ldr	r3, [r3, #64]
	cmp	r3, #38
	bne	.L1204
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #617]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1204
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #298]
	cmp	r3, #0
	beq	.L1204
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #264]
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #12]
	mov	r2, r3
	bl	Round_None(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	subs	r3, r2, r3
	str	r3, [r7, #20]
	b	.L1206
.L1204:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #568]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #264]
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #12]
	blx	r3
	mov	r2, r0
	ldr	r3, [r7, #12]
	subs	r3, r2, r3
	str	r3, [r7, #20]
	b	.L1206
.L1203:
	movs	r3, #0
	str	r3, [r7, #20]
.L1206:
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #584]
	ldr	r3, [r7, #4]
	add	r2, r3, #36
	ldrh	r3, [r7, #18]
	ldr	r0, [r7, #4]
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [r7, #20]
	blx	r4
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #18]	@ movhi
	strh	r2, [r3, #284]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #18]	@ movhi
	strh	r2, [r3, #286]	@ movhi
.L1199:
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	Ins_MDAP, .-Ins_MDAP
	.section	.text.Ins_MIAP,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_MIAP, %function
Ins_MIAP:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #320]
	str	r3, [r7, #24]
	ldr	r3, [r7]
	adds	r3, r3, #4
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r3, [r7]
	ldr	r3, [r3]
	strh	r3, [r7, #18]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #96]
	ldr	r3, [r3, #64]
	cmp	r3, #38
	bne	.L1208
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #617]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1208
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #298]
	cmp	r3, #0
	beq	.L1208
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #300]
	cmp	r3, #0
	bne	.L1208
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #632]
	and	r3, r3, #256
	cmp	r3, #0
	bne	.L1208
	movs	r3, #0
	str	r3, [r7, #24]
.L1208:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #44]
	ldrh	r2, [r7, #18]
	cmp	r2, r3
	bcs	.L1209
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #380]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bhi	.L1210
.L1209:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #561]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1211
	ldr	r3, [r7, #4]
	movs	r2, #134
	str	r2, [r3, #12]
	b	.L1212
.L1211:
	b	.L1212
.L1210:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #596]
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #20]
	blx	r3
	str	r0, [r7, #28]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #344]
	cmp	r3, #0
	bne	.L1213
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #96]
	ldr	r3, [r3, #64]
	cmp	r3, #38
	bne	.L1214
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #617]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1214
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldrb	r3, [r3, #796]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L1215
.L1214:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #48]
	ldrh	r3, [r7, #18]
	lsls	r3, r3, #3
	adds	r4, r2, r3
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #298]
	sxth	r3, r3
	ldr	r0, [r7, #28]
	mov	r1, r3
	bl	TT_MulFix14_arm(PLT)
	mov	r3, r0
	str	r3, [r4]
.L1215:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #48]
	ldrh	r3, [r7, #18]
	lsls	r3, r3, #3
	adds	r4, r2, r3
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #300]
	sxth	r3, r3
	ldr	r0, [r7, #28]
	mov	r1, r3
	bl	TT_MulFix14_arm(PLT)
	mov	r3, r0
	str	r3, [r4, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #52]
	ldrh	r3, [r7, #18]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r7, #4]
	ldr	r1, [r2, #48]
	ldrh	r2, [r7, #18]
	lsls	r2, r2, #3
	add	r2, r2, r1
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
.L1213:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #96]
	ldr	r3, [r3, #64]
	cmp	r3, #38
	bne	.L1216
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #617]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1216
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #632]
	and	r3, r3, #128
	cmp	r3, #0
	beq	.L1216
	ldr	r3, [r7, #28]
	cmp	r3, #0
	ble	.L1216
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #300]
	cmp	r3, #0
	beq	.L1216
	movs	r3, #0
	str	r3, [r7, #28]
.L1216:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #572]
	ldr	r2, [r7, #4]
	ldr	r1, [r2, #52]
	ldrh	r2, [r7, #18]
	lsls	r2, r2, #3
	add	r2, r2, r1
	ldr	r1, [r2]
	ldr	r2, [r7, #4]
	ldr	r0, [r2, #52]
	ldrh	r2, [r7, #18]
	lsls	r2, r2, #3
	add	r2, r2, r0
	ldr	r2, [r2, #4]
	ldr	r0, [r7, #4]
	blx	r3
	str	r0, [r7, #12]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #368]	@ zero_extendqisi2
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L1217
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #12]
	subs	r3, r2, r3
	eor	r2, r3, r3, asr #31
	sub	r2, r2, r3, asr #31
	ldr	r3, [r7, #24]
	cmp	r2, r3
	ble	.L1218
	ldr	r3, [r7, #12]
	str	r3, [r7, #28]
.L1218:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #96]
	ldr	r3, [r3, #64]
	cmp	r3, #38
	bne	.L1219
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #617]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1219
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #298]
	cmp	r3, #0
	beq	.L1219
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #264]
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #28]
	mov	r2, r3
	bl	Round_None(PLT)
	str	r0, [r7, #28]
	b	.L1217
.L1219:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #568]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #264]
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #28]
	blx	r3
	str	r0, [r7, #28]
.L1217:
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #584]
	ldr	r3, [r7, #4]
	add	r1, r3, #36
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #12]
	subs	r3, r2, r3
	ldrh	r2, [r7, #18]
	ldr	r0, [r7, #4]
	blx	r4
.L1212:
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #18]	@ movhi
	strh	r2, [r3, #284]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #18]	@ movhi
	strh	r2, [r3, #286]	@ movhi
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	Ins_MIAP, .-Ins_MIAP
	.section	.text.Ins_MDRP,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_MDRP, %function
Ins_MDRP:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #52
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #308]
	str	r3, [r7, #36]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #96]
	ldr	r3, [r3, #64]
	cmp	r3, #38
	bne	.L1221
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #617]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1221
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #298]
	cmp	r3, #0
	beq	.L1221
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #632]
	and	r3, r3, #256
	cmp	r3, #0
	bne	.L1221
	movs	r3, #0
	str	r3, [r7, #36]
.L1221:
	ldr	r3, [r7]
	ldr	r3, [r3]
	strh	r3, [r7, #34]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #80]
	ldrh	r2, [r7, #34]
	cmp	r2, r3
	bcs	.L1222
	ldr	r3, [r7, #4]
	ldrh	r2, [r3, #284]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #44]
	cmp	r2, r3
	bcc	.L1223
.L1222:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #561]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1224
	ldr	r3, [r7, #4]
	movs	r2, #134
	str	r2, [r3, #12]
	b	.L1225
.L1224:
	b	.L1225
.L1223:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #344]
	cmp	r3, #0
	beq	.L1226
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #346]
	cmp	r3, #0
	bne	.L1227
.L1226:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #84]
	ldrh	r3, [r7, #34]
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #48]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #284]
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #576]
	ldr	r2, [r7, #20]
	ldr	r1, [r2]
	ldr	r2, [r7, #16]
	ldr	r2, [r2]
	subs	r1, r1, r2
	ldr	r2, [r7, #20]
	ldr	r0, [r2, #4]
	ldr	r2, [r7, #16]
	ldr	r2, [r2, #4]
	subs	r2, r0, r2
	ldr	r0, [r7, #4]
	blx	r3
	str	r0, [r7, #44]
	b	.L1228
.L1227:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #92]
	ldrh	r3, [r7, #34]
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #56]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #284]
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #220]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #224]
	cmp	r2, r3
	bne	.L1229
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #576]
	ldr	r2, [r7, #28]
	ldr	r1, [r2]
	ldr	r2, [r7, #24]
	ldr	r2, [r2]
	subs	r1, r1, r2
	ldr	r2, [r7, #28]
	ldr	r0, [r2, #4]
	ldr	r2, [r7, #24]
	ldr	r2, [r2, #4]
	subs	r2, r0, r2
	ldr	r0, [r7, #4]
	blx	r3
	str	r0, [r7, #44]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #220]
	ldr	r0, [r7, #44]
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	str	r0, [r7, #44]
	b	.L1228
.L1229:
	ldr	r3, [r7, #28]
	ldr	r2, [r3]
	ldr	r3, [r7, #24]
	ldr	r3, [r3]
	subs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #220]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #4]
	subs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #224]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #576]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #12]
	ldr	r0, [r7, #4]
	blx	r3
	str	r0, [r7, #44]
.L1228:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #328]
	ldr	r2, [r7, #44]
	subs	r3, r2, r3
	eor	r2, r3, r3, asr #31
	sub	r2, r2, r3, asr #31
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #324]
	cmp	r2, r3
	bge	.L1230
	ldr	r3, [r7, #44]
	cmp	r3, #0
	blt	.L1231
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #328]
	str	r3, [r7, #44]
	b	.L1230
.L1231:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #328]
	negs	r3, r3
	str	r3, [r7, #44]
.L1230:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #368]	@ zero_extendqisi2
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L1232
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #96]
	ldr	r3, [r3, #64]
	cmp	r3, #38
	bne	.L1233
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #617]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1233
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #298]
	cmp	r3, #0
	beq	.L1233
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #368]	@ zero_extendqisi2
	and	r3, r3, #3
	ldr	r2, [r7, #4]
	adds	r3, r3, #64
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #8]
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #44]
	mov	r2, r3
	bl	Round_None(PLT)
	str	r0, [r7, #40]
	b	.L1235
.L1233:
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #568]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #368]	@ zero_extendqisi2
	and	r3, r3, #3
	ldr	r2, [r7, #4]
	adds	r3, r3, #64
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #8]
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #44]
	mov	r2, r3
	blx	r4
	str	r0, [r7, #40]
	b	.L1235
.L1232:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #368]	@ zero_extendqisi2
	and	r3, r3, #3
	ldr	r2, [r7, #4]
	adds	r3, r3, #64
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #8]
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #44]
	mov	r2, r3
	bl	Round_None(PLT)
	str	r0, [r7, #40]
.L1235:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #368]	@ zero_extendqisi2
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L1236
	ldr	r3, [r7, #44]
	cmp	r3, #0
	blt	.L1237
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bge	.L1236
	ldr	r3, [r7, #36]
	str	r3, [r7, #40]
	b	.L1236
.L1237:
	ldr	r3, [r7, #36]
	negs	r2, r3
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bge	.L1236
	ldr	r3, [r7, #36]
	negs	r3, r3
	str	r3, [r7, #40]
.L1236:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #572]
	ldr	r2, [r7, #4]
	ldr	r1, [r2, #88]
	ldrh	r2, [r7, #34]
	lsls	r2, r2, #3
	add	r2, r2, r1
	ldr	r1, [r2]
	ldr	r2, [r7, #4]
	ldr	r0, [r2, #52]
	ldr	r2, [r7, #4]
	ldrh	r2, [r2, #284]
	lsls	r2, r2, #3
	add	r2, r2, r0
	ldr	r2, [r2]
	subs	r1, r1, r2
	ldr	r2, [r7, #4]
	ldr	r0, [r2, #88]
	ldrh	r2, [r7, #34]
	lsls	r2, r2, #3
	add	r2, r2, r0
	ldr	r0, [r2, #4]
	ldr	r2, [r7, #4]
	ldr	r4, [r2, #52]
	ldr	r2, [r7, #4]
	ldrh	r2, [r2, #284]
	lsls	r2, r2, #3
	add	r2, r2, r4
	ldr	r2, [r2, #4]
	subs	r2, r0, r2
	ldr	r0, [r7, #4]
	blx	r3
	str	r0, [r7, #44]
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #584]
	ldr	r3, [r7, #4]
	add	r1, r3, #72
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #44]
	subs	r3, r2, r3
	ldrh	r2, [r7, #34]
	ldr	r0, [r7, #4]
	blx	r4
.L1225:
	ldr	r3, [r7, #4]
	ldrh	r2, [r3, #284]
	ldr	r3, [r7, #4]
	strh	r2, [r3, #286]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #34]	@ movhi
	strh	r2, [r3, #288]	@ movhi
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #368]	@ zero_extendqisi2
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L1220
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #34]	@ movhi
	strh	r2, [r3, #284]	@ movhi
.L1220:
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	Ins_MDRP, .-Ins_MDRP
	.section	.text.Ins_MIRP,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_MIRP, %function
Ins_MIRP:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #56
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #0
	strb	r3, [r7, #35]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #308]
	str	r3, [r7, #40]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #320]
	str	r3, [r7, #44]
	ldr	r3, [r7]
	ldr	r3, [r3]
	strh	r3, [r7, #26]	@ movhi
	ldr	r3, [r7]
	adds	r3, r3, #4
	ldr	r3, [r3]
	adds	r3, r3, #1
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #96]
	ldr	r3, [r3, #64]
	cmp	r3, #38
	bne	.L1241
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #617]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1241
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #298]
	cmp	r3, #0
	beq	.L1241
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #632]
	and	r3, r3, #256
	cmp	r3, #0
	bne	.L1241
	movs	r3, #0
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	str	r3, [r7, #44]
.L1241:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #80]
	ldrh	r2, [r7, #26]
	cmp	r2, r3
	bcs	.L1242
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #380]
	adds	r2, r3, #1
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bls	.L1242
	ldr	r3, [r7, #4]
	ldrh	r2, [r3, #284]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #44]
	cmp	r2, r3
	bcc	.L1243
.L1242:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #561]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1244
	ldr	r3, [r7, #4]
	movs	r2, #134
	str	r2, [r3, #12]
	b	.L1245
.L1244:
	b	.L1245
.L1243:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L1246
	movs	r3, #0
	str	r3, [r7, #52]
	b	.L1247
.L1246:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #596]
	ldr	r2, [r7, #20]
	subs	r2, r2, #1
	ldr	r0, [r7, #4]
	mov	r1, r2
	blx	r3
	str	r0, [r7, #52]
.L1247:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #328]
	ldr	r2, [r7, #52]
	subs	r3, r2, r3
	eor	r2, r3, r3, asr #31
	sub	r2, r2, r3, asr #31
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #324]
	cmp	r2, r3
	bge	.L1248
	ldr	r3, [r7, #52]
	cmp	r3, #0
	blt	.L1249
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #328]
	str	r3, [r7, #52]
	b	.L1248
.L1249:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #328]
	negs	r3, r3
	str	r3, [r7, #52]
.L1248:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #346]
	cmp	r3, #0
	bne	.L1250
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #84]
	ldrh	r3, [r7, #26]
	lsls	r3, r3, #3
	adds	r4, r2, r3
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #48]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #284]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r5, [r3]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #298]
	sxth	r3, r3
	ldr	r0, [r7, #52]
	mov	r1, r3
	bl	TT_MulFix14_arm(PLT)
	mov	r3, r0
	add	r3, r3, r5
	str	r3, [r4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #84]
	ldrh	r3, [r7, #26]
	lsls	r3, r3, #3
	adds	r4, r2, r3
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #48]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #284]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r5, [r3, #4]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #300]
	sxth	r3, r3
	ldr	r0, [r7, #52]
	mov	r1, r3
	bl	TT_MulFix14_arm(PLT)
	mov	r3, r0
	add	r3, r3, r5
	str	r3, [r4, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #88]
	ldrh	r3, [r7, #26]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r7, #4]
	ldr	r1, [r2, #84]
	ldrh	r2, [r7, #26]
	lsls	r2, r2, #3
	add	r2, r2, r1
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
.L1250:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #576]
	ldr	r2, [r7, #4]
	ldr	r1, [r2, #84]
	ldrh	r2, [r7, #26]
	lsls	r2, r2, #3
	add	r2, r2, r1
	ldr	r1, [r2]
	ldr	r2, [r7, #4]
	ldr	r0, [r2, #48]
	ldr	r2, [r7, #4]
	ldrh	r2, [r2, #284]
	lsls	r2, r2, #3
	add	r2, r2, r0
	ldr	r2, [r2]
	subs	r1, r1, r2
	ldr	r2, [r7, #4]
	ldr	r0, [r2, #84]
	ldrh	r2, [r7, #26]
	lsls	r2, r2, #3
	add	r2, r2, r0
	ldr	r0, [r2, #4]
	ldr	r2, [r7, #4]
	ldr	r4, [r2, #48]
	ldr	r2, [r7, #4]
	ldrh	r2, [r2, #284]
	lsls	r2, r2, #3
	add	r2, r2, r4
	ldr	r2, [r2, #4]
	subs	r2, r0, r2
	ldr	r0, [r7, #4]
	blx	r3
	str	r0, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #572]
	ldr	r2, [r7, #4]
	ldr	r1, [r2, #88]
	ldrh	r2, [r7, #26]
	lsls	r2, r2, #3
	add	r2, r2, r1
	ldr	r1, [r2]
	ldr	r2, [r7, #4]
	ldr	r0, [r2, #52]
	ldr	r2, [r7, #4]
	ldrh	r2, [r2, #284]
	lsls	r2, r2, #3
	add	r2, r2, r0
	ldr	r2, [r2]
	subs	r1, r1, r2
	ldr	r2, [r7, #4]
	ldr	r0, [r2, #88]
	ldrh	r2, [r7, #26]
	lsls	r2, r2, #3
	add	r2, r2, r0
	ldr	r0, [r2, #4]
	ldr	r2, [r7, #4]
	ldr	r4, [r2, #52]
	ldr	r2, [r7, #4]
	ldrh	r2, [r2, #284]
	lsls	r2, r2, #3
	add	r2, r2, r4
	ldr	r2, [r2, #4]
	subs	r2, r0, r2
	ldr	r0, [r7, #4]
	blx	r3
	str	r0, [r7, #12]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #316]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1251
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #52]
	eors	r3, r3, r2
	cmp	r3, #0
	bge	.L1251
	ldr	r3, [r7, #52]
	negs	r3, r3
	str	r3, [r7, #52]
.L1251:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #96]
	ldr	r3, [r3, #64]
	cmp	r3, #38
	bne	.L1252
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #617]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1252
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #300]
	cmp	r3, #0
	beq	.L1252
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #632]
	and	r3, r3, #262144
	cmp	r3, #0
	beq	.L1252
	ldr	r3, [r7, #12]
	cmn	r3, #64
	bge	.L1253
	ldr	r3, [r7, #52]
	subs	r3, r3, #16
	str	r3, [r7, #52]
	b	.L1252
.L1253:
	ldr	r3, [r7, #12]
	cmp	r3, #64
	ble	.L1252
	ldr	r3, [r7, #12]
	cmp	r3, #83
	bgt	.L1252
	ldr	r3, [r7, #52]
	adds	r3, r3, #32
	str	r3, [r7, #52]
.L1252:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #368]	@ zero_extendqisi2
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L1254
	ldr	r3, [r7, #4]
	ldrh	r2, [r3, #344]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #346]
	cmp	r2, r3
	bne	.L1255
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #16]
	subs	r3, r2, r3
	eor	r2, r3, r3, asr #31
	sub	r2, r2, r3, asr #31
	ldr	r3, [r7, #44]
	cmp	r2, r3
	ble	.L1255
	ldr	r3, [r7, #16]
	str	r3, [r7, #52]
.L1255:
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #568]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #368]	@ zero_extendqisi2
	and	r3, r3, #3
	ldr	r2, [r7, #4]
	adds	r3, r3, #64
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #8]
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #52]
	mov	r2, r3
	blx	r4
	str	r0, [r7, #48]
	b	.L1256
.L1254:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #96]
	ldr	r3, [r3, #64]
	cmp	r3, #38
	bne	.L1257
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #617]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1257
	ldr	r3, [r7, #4]
	ldrh	r2, [r3, #344]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #346]
	cmp	r2, r3
	bne	.L1257
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #16]
	subs	r3, r2, r3
	eor	r2, r3, r3, asr #31
	sub	r2, r2, r3, asr #31
	ldr	r3, [r7, #44]
	cmp	r2, r3
	ble	.L1257
	ldr	r3, [r7, #16]
	str	r3, [r7, #52]
.L1257:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #368]	@ zero_extendqisi2
	and	r3, r3, #3
	ldr	r2, [r7, #4]
	adds	r3, r3, #64
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #8]
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #52]
	mov	r2, r3
	bl	Round_None(PLT)
	str	r0, [r7, #48]
.L1256:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #368]	@ zero_extendqisi2
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L1258
	ldr	r3, [r7, #16]
	cmp	r3, #0
	blt	.L1259
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bge	.L1258
	ldr	r3, [r7, #40]
	str	r3, [r7, #48]
	b	.L1258
.L1259:
	ldr	r3, [r7, #40]
	negs	r2, r3
	ldr	r3, [r7, #48]
	cmp	r2, r3
	bge	.L1258
	ldr	r3, [r7, #40]
	negs	r3, r3
	str	r3, [r7, #48]
.L1258:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #96]
	ldr	r3, [r3, #64]
	cmp	r3, #38
	bne	.L1261
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #88]
	ldrh	r3, [r7, #26]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	str	r3, [r7, #36]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #617]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1262
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #300]
	cmp	r3, #0
	beq	.L1262
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #632]
	and	r3, r3, #16384
	cmp	r3, #0
	beq	.L1262
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #48]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	subs	r3, r2, r3
	adds	r3, r3, #32
	bic	r2, r3, #63
	ldr	r3, [r7, #36]
	subs	r2, r2, r3
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #48]
.L1262:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #617]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1261
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #300]
	cmp	r3, #0
	beq	.L1261
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #368]	@ zero_extendqisi2
	and	r3, r3, #16
	cmp	r3, #0
	bne	.L1261
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #368]	@ zero_extendqisi2
	and	r3, r3, #8
	cmp	r3, #0
	bne	.L1261
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #632]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L1261
	ldr	r3, [r7, #48]
	adds	r3, r3, #64
	str	r3, [r7, #48]
.L1261:
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #584]
	ldr	r3, [r7, #4]
	add	r1, r3, #72
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #12]
	subs	r3, r2, r3
	ldrh	r2, [r7, #26]
	ldr	r0, [r7, #4]
	blx	r4
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #96]
	ldr	r3, [r3, #64]
	cmp	r3, #38
	bne	.L1245
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #88]
	ldrh	r3, [r7, #26]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #617]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1263
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldrb	r3, [r3, #796]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1264
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #300]
	cmp	r3, #0
	beq	.L1264
	ldr	r3, [r7, #36]
	and	r3, r3, #63
	cmp	r3, #0
	bne	.L1264
	ldr	r3, [r7, #28]
	and	r3, r3, #63
	cmp	r3, #0
	beq	.L1264
	movs	r3, #1
	strb	r3, [r7, #35]
.L1264:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #632]
	and	r3, r3, #65536
	cmp	r3, #0
	beq	.L1263
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #300]
	cmp	r3, #0
	beq	.L1263
	ldr	r3, [r7, #28]
	and	r3, r3, #63
	cmp	r3, #0
	beq	.L1263
	ldr	r3, [r7, #36]
	and	r3, r3, #63
	cmp	r3, #0
	beq	.L1263
	movs	r3, #1
	strb	r3, [r7, #35]
.L1263:
	ldrb	r3, [r7, #35]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1245
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #584]
	ldr	r3, [r7, #4]
	add	r1, r3, #72
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #48]
	subs	r3, r2, r3
	ldrh	r2, [r7, #26]
	ldr	r0, [r7, #4]
	blx	r4
.L1245:
	ldr	r3, [r7, #4]
	ldrh	r2, [r3, #284]
	ldr	r3, [r7, #4]
	strh	r2, [r3, #286]	@ movhi
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #368]	@ zero_extendqisi2
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L1265
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #26]	@ movhi
	strh	r2, [r3, #284]	@ movhi
.L1265:
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #26]	@ movhi
	strh	r2, [r3, #288]	@ movhi
	adds	r7, r7, #56
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.size	Ins_MIRP, .-Ins_MIRP
	.section	.text.Ins_ALIGNRP,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_ALIGNRP, %function
Ins_ALIGNRP:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #96]
	ldr	r3, [r3, #64]
	cmp	r3, #38
	bne	.L1267
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #617]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1267
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #628]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1267
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #632]
	and	r3, r3, #512
	cmp	r3, #0
	beq	.L1267
	ldr	r3, [r7, #4]
	movs	r2, #134
	str	r2, [r3, #12]
	b	.L1268
.L1267:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #304]
	cmp	r2, r3
	blt	.L1269
	ldr	r3, [r7, #4]
	ldrh	r2, [r3, #284]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #44]
	cmp	r2, r3
	bcc	.L1270
.L1269:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #561]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1271
	ldr	r3, [r7, #4]
	movs	r2, #134
	str	r2, [r3, #12]
	b	.L1268
.L1271:
	b	.L1268
.L1270:
	b	.L1272
.L1276:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	subs	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #28]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #80]
	ldrh	r2, [r7, #14]
	cmp	r2, r3
	bcc	.L1273
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #561]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1274
	ldr	r3, [r7, #4]
	movs	r2, #134
	str	r2, [r3, #12]
	b	.L1266
.L1273:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #572]
	ldr	r2, [r7, #4]
	ldr	r1, [r2, #88]
	ldrh	r2, [r7, #14]
	lsls	r2, r2, #3
	add	r2, r2, r1
	ldr	r1, [r2]
	ldr	r2, [r7, #4]
	ldr	r0, [r2, #52]
	ldr	r2, [r7, #4]
	ldrh	r2, [r2, #284]
	lsls	r2, r2, #3
	add	r2, r2, r0
	ldr	r2, [r2]
	subs	r1, r1, r2
	ldr	r2, [r7, #4]
	ldr	r0, [r2, #88]
	ldrh	r2, [r7, #14]
	lsls	r2, r2, #3
	add	r2, r2, r0
	ldr	r0, [r2, #4]
	ldr	r2, [r7, #4]
	ldr	r4, [r2, #52]
	ldr	r2, [r7, #4]
	ldrh	r2, [r2, #284]
	lsls	r2, r2, #3
	add	r2, r2, r4
	ldr	r2, [r2, #4]
	subs	r2, r0, r2
	ldr	r0, [r7, #4]
	blx	r3
	str	r0, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #584]
	ldr	r3, [r7, #4]
	add	r1, r3, #72
	ldr	r3, [r7, #8]
	negs	r3, r3
	ldrh	r2, [r7, #14]
	ldr	r0, [r7, #4]
	blx	r4
.L1274:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #304]
	subs	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #304]
.L1272:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #304]
	cmp	r3, #0
	bgt	.L1276
.L1268:
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #304]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #4]
	str	r2, [r3, #32]
.L1266:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	Ins_ALIGNRP, .-Ins_ALIGNRP
	.section	.text.Ins_ISECT,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_ISECT, %function
Ins_ISECT:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #68
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3]
	strh	r3, [r7, #62]	@ movhi
	ldr	r3, [r7]
	adds	r3, r3, #4
	ldr	r3, [r3]
	strh	r3, [r7, #60]	@ movhi
	ldr	r3, [r7]
	adds	r3, r3, #8
	ldr	r3, [r3]
	strh	r3, [r7, #58]	@ movhi
	ldr	r3, [r7]
	adds	r3, r3, #12
	ldr	r3, [r3]
	strh	r3, [r7, #56]	@ movhi
	ldr	r3, [r7]
	adds	r3, r3, #16
	ldr	r3, [r3]
	strh	r3, [r7, #54]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #44]
	ldrh	r2, [r7, #56]
	cmp	r2, r3
	bcs	.L1278
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #44]
	ldrh	r2, [r7, #54]
	cmp	r2, r3
	bcs	.L1278
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #80]
	ldrh	r2, [r7, #60]
	cmp	r2, r3
	bcs	.L1278
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #80]
	ldrh	r2, [r7, #58]
	cmp	r2, r3
	bcs	.L1278
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #116]
	ldrh	r2, [r7, #62]
	cmp	r2, r3
	bcc	.L1279
.L1278:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #561]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1277
	ldr	r3, [r7, #4]
	movs	r2, #134
	str	r2, [r3, #12]
	b	.L1277
.L1279:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #52]
	ldrh	r3, [r7, #54]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #52]
	ldrh	r3, [r7, #56]
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r3, [r3]
	subs	r3, r2, r3
	str	r3, [r7, #48]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #52]
	ldrh	r3, [r7, #54]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #52]
	ldrh	r3, [r7, #56]
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	str	r3, [r7, #44]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #88]
	ldrh	r3, [r7, #58]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #88]
	ldrh	r3, [r7, #60]
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r3, [r3]
	subs	r3, r2, r3
	str	r3, [r7, #40]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #88]
	ldrh	r3, [r7, #58]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #88]
	ldrh	r3, [r7, #60]
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	str	r3, [r7, #36]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #52]
	ldrh	r3, [r7, #56]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #88]
	ldrh	r3, [r7, #60]
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r3, [r3]
	subs	r3, r2, r3
	str	r3, [r7, #32]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #52]
	ldrh	r3, [r7, #56]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #88]
	ldrh	r3, [r7, #60]
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	str	r3, [r7, #28]
	ldr	r3, [r7, #44]
	negs	r3, r3
	ldr	r0, [r7, #40]
	mov	r1, r3
	movs	r2, #64
	bl	FT_MulDiv(PLT)
	mov	r4, r0
	ldr	r0, [r7, #36]
	ldr	r1, [r7, #48]
	movs	r2, #64
	bl	FT_MulDiv(PLT)
	mov	r3, r0
	add	r3, r3, r4
	str	r3, [r7, #24]
	ldr	r0, [r7, #40]
	ldr	r1, [r7, #48]
	movs	r2, #64
	bl	FT_MulDiv(PLT)
	mov	r4, r0
	ldr	r0, [r7, #36]
	ldr	r1, [r7, #44]
	movs	r2, #64
	bl	FT_MulDiv(PLT)
	mov	r3, r0
	add	r3, r3, r4
	str	r3, [r7, #20]
	ldr	r3, [r7, #24]
	eor	r2, r3, r3, asr #31
	sub	r2, r2, r3, asr #31
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #1
	add	r2, r2, r3
	ldr	r3, [r7, #20]
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	cmp	r2, r3
	ble	.L1282
	ldr	r3, [r7, #44]
	negs	r3, r3
	ldr	r0, [r7, #32]
	mov	r1, r3
	movs	r2, #64
	bl	FT_MulDiv(PLT)
	mov	r4, r0
	ldr	r0, [r7, #28]
	ldr	r1, [r7, #48]
	movs	r2, #64
	bl	FT_MulDiv(PLT)
	mov	r3, r0
	add	r3, r3, r4
	str	r3, [r7, #16]
	ldr	r0, [r7, #16]
	ldr	r1, [r7, #40]
	ldr	r2, [r7, #24]
	bl	FT_MulDiv(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r0, [r7, #16]
	ldr	r1, [r7, #36]
	ldr	r2, [r7, #24]
	bl	FT_MulDiv(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #124]
	ldrh	r3, [r7, #62]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r7, #4]
	ldr	r1, [r2, #88]
	ldrh	r2, [r7, #60]
	lsls	r2, r2, #3
	add	r2, r2, r1
	ldr	r1, [r2]
	ldr	r2, [r7, #8]
	add	r2, r2, r1
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #124]
	ldrh	r3, [r7, #62]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r7, #4]
	ldr	r1, [r2, #88]
	ldrh	r2, [r7, #60]
	lsls	r2, r2, #3
	add	r2, r2, r1
	ldr	r1, [r2, #4]
	ldr	r2, [r7, #12]
	add	r2, r2, r1
	str	r2, [r3, #4]
	b	.L1283
.L1282:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #124]
	ldrh	r3, [r7, #62]
	lsls	r3, r3, #3
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #88]
	ldrh	r3, [r7, #60]
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r1, [r3]
	ldr	r3, [r7, #4]
	ldr	r0, [r3, #88]
	ldrh	r3, [r7, #58]
	lsls	r3, r3, #3
	add	r3, r3, r0
	ldr	r3, [r3]
	add	r1, r1, r3
	ldr	r3, [r7, #4]
	ldr	r0, [r3, #52]
	ldrh	r3, [r7, #56]
	lsls	r3, r3, #3
	add	r3, r3, r0
	ldr	r3, [r3]
	add	r1, r1, r3
	ldr	r3, [r7, #4]
	ldr	r0, [r3, #52]
	ldrh	r3, [r7, #54]
	lsls	r3, r3, #3
	add	r3, r3, r0
	ldr	r3, [r3]
	add	r3, r3, r1
	adds	r1, r3, #3
	cmp	r3, #0
	ite	lt
	movlt	r3, r1
	movge	r3, r3
	asrs	r3, r3, #2
	str	r3, [r2]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #124]
	ldrh	r3, [r7, #62]
	lsls	r3, r3, #3
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #88]
	ldrh	r3, [r7, #60]
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r0, [r3, #88]
	ldrh	r3, [r7, #58]
	lsls	r3, r3, #3
	add	r3, r3, r0
	ldr	r3, [r3, #4]
	add	r1, r1, r3
	ldr	r3, [r7, #4]
	ldr	r0, [r3, #52]
	ldrh	r3, [r7, #56]
	lsls	r3, r3, #3
	add	r3, r3, r0
	ldr	r3, [r3, #4]
	add	r1, r1, r3
	ldr	r3, [r7, #4]
	ldr	r0, [r3, #52]
	ldrh	r3, [r7, #54]
	lsls	r3, r3, #3
	add	r3, r3, r0
	ldr	r3, [r3, #4]
	add	r3, r3, r1
	adds	r1, r3, #3
	cmp	r3, #0
	ite	lt
	movlt	r3, r1
	movge	r3, r3
	asrs	r3, r3, #2
	str	r3, [r2, #4]
.L1283:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #132]
	ldrh	r3, [r7, #62]
	add	r3, r3, r2
	ldr	r2, [r7, #4]
	ldr	r1, [r2, #132]
	ldrh	r2, [r7, #62]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	orr	r2, r2, #24
	uxtb	r2, r2
	strb	r2, [r3]
.L1277:
	adds	r7, r7, #68
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	Ins_ISECT, .-Ins_ISECT
	.section	.text.Ins_ALIGNPTS,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_ALIGNPTS, %function
Ins_ALIGNPTS:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3]
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7]
	adds	r3, r3, #4
	ldr	r3, [r3]
	strh	r3, [r7, #12]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #80]
	ldrh	r2, [r7, #14]
	cmp	r2, r3
	bcs	.L1285
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #44]
	ldrh	r2, [r7, #12]
	cmp	r2, r3
	bcc	.L1286
.L1285:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #561]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1287
	ldr	r3, [r7, #4]
	movs	r2, #134
	str	r2, [r3, #12]
	b	.L1284
.L1287:
	b	.L1284
.L1286:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #572]
	ldr	r2, [r7, #4]
	ldr	r1, [r2, #52]
	ldrh	r2, [r7, #12]
	lsls	r2, r2, #3
	add	r2, r2, r1
	ldr	r1, [r2]
	ldr	r2, [r7, #4]
	ldr	r0, [r2, #88]
	ldrh	r2, [r7, #14]
	lsls	r2, r2, #3
	add	r2, r2, r0
	ldr	r2, [r2]
	subs	r1, r1, r2
	ldr	r2, [r7, #4]
	ldr	r0, [r2, #52]
	ldrh	r2, [r7, #12]
	lsls	r2, r2, #3
	add	r2, r2, r0
	ldr	r0, [r2, #4]
	ldr	r2, [r7, #4]
	ldr	r4, [r2, #88]
	ldrh	r2, [r7, #14]
	lsls	r2, r2, #3
	add	r2, r2, r4
	ldr	r2, [r2, #4]
	subs	r2, r0, r2
	ldr	r0, [r7, #4]
	blx	r3
	mov	r3, r0
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #584]
	ldr	r3, [r7, #4]
	add	r2, r3, #72
	ldrh	r3, [r7, #14]
	ldr	r0, [r7, #4]
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [r7, #8]
	blx	r4
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #584]
	ldr	r3, [r7, #4]
	add	r1, r3, #36
	ldr	r3, [r7, #8]
	negs	r3, r3
	ldrh	r2, [r7, #12]
	ldr	r0, [r7, #4]
	blx	r4
.L1284:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	Ins_ALIGNPTS, .-Ins_ALIGNPTS
	.section	.text.Ins_IP,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_IP, %function
Ins_IP:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #68
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #304]
	cmp	r2, r3
	bge	.L1290
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #561]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1291
	ldr	r3, [r7, #4]
	movs	r2, #134
	str	r2, [r3, #12]
	b	.L1292
.L1291:
	b	.L1292
.L1290:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #344]
	cmp	r3, #0
	beq	.L1293
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #346]
	cmp	r3, #0
	beq	.L1293
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #348]
	cmp	r3, #0
	bne	.L1294
.L1293:
	movs	r3, #1
	b	.L1295
.L1294:
	movs	r3, #0
.L1295:
	str	r3, [r7, #40]
	ldr	r3, [r7, #4]
	ldrh	r2, [r3, #286]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #44]
	cmp	r2, r3
	bcc	.L1296
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #561]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1297
	ldr	r3, [r7, #4]
	movs	r2, #134
	str	r2, [r3, #12]
	b	.L1292
.L1297:
	b	.L1292
.L1296:
	ldr	r3, [r7, #40]
	cmp	r3, #0
	beq	.L1298
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #48]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #286]
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #52]
	b	.L1299
.L1298:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #56]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #286]
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #52]
.L1299:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #52]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #286]
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #4]
	ldrh	r2, [r3, #286]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #44]
	cmp	r2, r3
	bcs	.L1300
	ldr	r3, [r7, #4]
	ldrh	r2, [r3, #288]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #80]
	cmp	r2, r3
	bcc	.L1301
.L1300:
	movs	r3, #0
	str	r3, [r7, #60]
	movs	r3, #0
	str	r3, [r7, #56]
	b	.L1306
.L1301:
	ldr	r3, [r7, #40]
	cmp	r3, #0
	beq	.L1303
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #576]
	ldr	r2, [r7, #4]
	ldr	r1, [r2, #84]
	ldr	r2, [r7, #4]
	ldrh	r2, [r2, #288]
	lsls	r2, r2, #3
	add	r2, r2, r1
	ldr	r1, [r2]
	ldr	r2, [r7, #52]
	ldr	r2, [r2]
	subs	r1, r1, r2
	ldr	r2, [r7, #4]
	ldr	r0, [r2, #84]
	ldr	r2, [r7, #4]
	ldrh	r2, [r2, #288]
	lsls	r2, r2, #3
	add	r2, r2, r0
	ldr	r0, [r2, #4]
	ldr	r2, [r7, #52]
	ldr	r2, [r2, #4]
	subs	r2, r0, r2
	ldr	r0, [r7, #4]
	blx	r3
	str	r0, [r7, #60]
	b	.L1304
.L1303:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #220]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #224]
	cmp	r2, r3
	bne	.L1305
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #576]
	ldr	r2, [r7, #4]
	ldr	r1, [r2, #92]
	ldr	r2, [r7, #4]
	ldrh	r2, [r2, #288]
	lsls	r2, r2, #3
	add	r2, r2, r1
	ldr	r1, [r2]
	ldr	r2, [r7, #52]
	ldr	r2, [r2]
	subs	r1, r1, r2
	ldr	r2, [r7, #4]
	ldr	r0, [r2, #92]
	ldr	r2, [r7, #4]
	ldrh	r2, [r2, #288]
	lsls	r2, r2, #3
	add	r2, r2, r0
	ldr	r0, [r2, #4]
	ldr	r2, [r7, #52]
	ldr	r2, [r2, #4]
	subs	r2, r0, r2
	ldr	r0, [r7, #4]
	blx	r3
	str	r0, [r7, #60]
	b	.L1304
.L1305:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #92]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #288]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #52]
	ldr	r3, [r3]
	subs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #220]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #92]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #288]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #4]
	subs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #224]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #576]
	ldr	r1, [r7, #20]
	ldr	r2, [r7, #24]
	ldr	r0, [r7, #4]
	blx	r3
	str	r0, [r7, #60]
.L1304:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #572]
	ldr	r2, [r7, #4]
	ldr	r1, [r2, #88]
	ldr	r2, [r7, #4]
	ldrh	r2, [r2, #288]
	lsls	r2, r2, #3
	add	r2, r2, r1
	ldr	r1, [r2]
	ldr	r2, [r7, #36]
	ldr	r2, [r2]
	subs	r1, r1, r2
	ldr	r2, [r7, #4]
	ldr	r0, [r2, #88]
	ldr	r2, [r7, #4]
	ldrh	r2, [r2, #288]
	lsls	r2, r2, #3
	add	r2, r2, r0
	ldr	r0, [r2, #4]
	ldr	r2, [r7, #36]
	ldr	r2, [r2, #4]
	subs	r2, r0, r2
	ldr	r0, [r7, #4]
	blx	r3
	str	r0, [r7, #56]
	b	.L1306
.L1318:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	subs	r1, r3, #1
	ldr	r3, [r7, #4]
	str	r1, [r3, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #32]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #116]
	mov	r2, r3
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bhi	.L1307
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #561]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1308
	ldr	r3, [r7, #4]
	movs	r2, #134
	str	r2, [r3, #12]
	b	.L1289
.L1308:
	b	.L1310
.L1307:
	ldr	r3, [r7, #40]
	cmp	r3, #0
	beq	.L1311
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #576]
	ldr	r2, [r7, #4]
	ldr	r1, [r2, #120]
	ldr	r2, [r7, #32]
	lsls	r2, r2, #3
	add	r2, r2, r1
	ldr	r1, [r2]
	ldr	r2, [r7, #52]
	ldr	r2, [r2]
	subs	r1, r1, r2
	ldr	r2, [r7, #4]
	ldr	r0, [r2, #120]
	ldr	r2, [r7, #32]
	lsls	r2, r2, #3
	add	r2, r2, r0
	ldr	r0, [r2, #4]
	ldr	r2, [r7, #52]
	ldr	r2, [r2, #4]
	subs	r2, r0, r2
	ldr	r0, [r7, #4]
	blx	r3
	str	r0, [r7, #48]
	b	.L1312
.L1311:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #220]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #224]
	cmp	r2, r3
	bne	.L1313
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #576]
	ldr	r2, [r7, #4]
	ldr	r1, [r2, #128]
	ldr	r2, [r7, #32]
	lsls	r2, r2, #3
	add	r2, r2, r1
	ldr	r1, [r2]
	ldr	r2, [r7, #52]
	ldr	r2, [r2]
	subs	r1, r1, r2
	ldr	r2, [r7, #4]
	ldr	r0, [r2, #128]
	ldr	r2, [r7, #32]
	lsls	r2, r2, #3
	add	r2, r2, r0
	ldr	r0, [r2, #4]
	ldr	r2, [r7, #52]
	ldr	r2, [r2, #4]
	subs	r2, r0, r2
	ldr	r0, [r7, #4]
	blx	r3
	str	r0, [r7, #48]
	b	.L1312
.L1313:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #128]
	ldr	r3, [r7, #32]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #52]
	ldr	r3, [r3]
	subs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #220]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #128]
	ldr	r3, [r7, #32]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #4]
	subs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #224]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #576]
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #16]
	ldr	r0, [r7, #4]
	blx	r3
	str	r0, [r7, #48]
.L1312:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #572]
	ldr	r2, [r7, #4]
	ldr	r1, [r2, #124]
	ldr	r2, [r7, #32]
	lsls	r2, r2, #3
	add	r2, r2, r1
	ldr	r1, [r2]
	ldr	r2, [r7, #36]
	ldr	r2, [r2]
	subs	r1, r1, r2
	ldr	r2, [r7, #4]
	ldr	r0, [r2, #124]
	ldr	r2, [r7, #32]
	lsls	r2, r2, #3
	add	r2, r2, r0
	ldr	r0, [r2, #4]
	ldr	r2, [r7, #36]
	ldr	r2, [r2, #4]
	subs	r2, r0, r2
	ldr	r0, [r7, #4]
	blx	r3
	str	r0, [r7, #28]
	ldr	r3, [r7, #48]
	cmp	r3, #0
	beq	.L1314
	ldr	r3, [r7, #60]
	cmp	r3, #0
	beq	.L1315
	ldr	r0, [r7, #48]
	ldr	r1, [r7, #56]
	ldr	r2, [r7, #60]
	bl	FT_MulDiv(PLT)
	str	r0, [r7, #44]
	b	.L1317
.L1315:
	ldr	r3, [r7, #48]
	str	r3, [r7, #44]
	b	.L1317
.L1314:
	movs	r3, #0
	str	r3, [r7, #44]
.L1317:
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #584]
	ldr	r3, [r7, #4]
	add	r1, r3, #108
	ldr	r3, [r7, #32]
	uxth	r2, r3
	ldr	r0, [r7, #44]
	ldr	r3, [r7, #28]
	subs	r3, r0, r3
	ldr	r0, [r7, #4]
	blx	r4
.L1310:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #304]
	subs	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #304]
.L1306:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #304]
	cmp	r3, #0
	bgt	.L1318
.L1292:
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #304]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #4]
	str	r2, [r3, #32]
.L1289:
	adds	r7, r7, #68
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	Ins_IP, .-Ins_IP
	.section	.text.Ins_UTP,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_UTP, %function
Ins_UTP:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3]
	strh	r3, [r7, #12]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #44]
	ldrh	r2, [r7, #12]
	cmp	r2, r3
	bcc	.L1320
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #561]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1321
	ldr	r3, [r7, #4]
	movs	r2, #134
	str	r2, [r3, #12]
	b	.L1319
.L1321:
	b	.L1319
.L1320:
	movs	r3, #255
	strb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #298]
	cmp	r3, #0
	beq	.L1323
	ldrb	r3, [r7, #15]
	bic	r3, r3, #8
	strb	r3, [r7, #15]
.L1323:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #300]
	cmp	r3, #0
	beq	.L1324
	ldrb	r3, [r7, #15]
	bic	r3, r3, #16
	strb	r3, [r7, #15]
.L1324:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #60]
	ldrh	r3, [r7, #12]
	add	r3, r3, r2
	ldr	r2, [r7, #4]
	ldr	r1, [r2, #60]
	ldrh	r2, [r7, #12]
	add	r2, r2, r1
	ldrb	r1, [r2]	@ zero_extendqisi2
	ldrb	r2, [r7, #15]
	ands	r2, r2, r1
	uxtb	r2, r2
	strb	r2, [r3]
.L1319:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Ins_UTP, .-Ins_UTP
	.section	.text._iup_worker_shift,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_iup_worker_shift, %function
_iup_worker_shift:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r1, [r3]
	ldr	r3, [r7]
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r3, [r3]
	subs	r3, r2, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L1325
	ldr	r3, [r7, #8]
	str	r3, [r7, #20]
	b	.L1327
.L1328:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r7, #12]
	ldr	r1, [r2, #4]
	ldr	r2, [r7, #20]
	lsls	r2, r2, #3
	add	r2, r2, r1
	ldr	r1, [r2]
	ldr	r2, [r7, #16]
	add	r2, r2, r1
	str	r2, [r3]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L1327:
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L1328
	ldr	r3, [r7]
	adds	r3, r3, #1
	str	r3, [r7, #20]
	b	.L1329
.L1330:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r7, #12]
	ldr	r1, [r2, #4]
	ldr	r2, [r7, #20]
	lsls	r2, r2, #3
	add	r2, r2, r1
	ldr	r1, [r2]
	ldr	r2, [r7, #16]
	add	r2, r2, r1
	str	r2, [r3]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L1329:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L1330
.L1325:
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	_iup_worker_shift, .-_iup_worker_shift
	.section	.text._iup_worker_interpolate,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_iup_worker_interpolate, %function
_iup_worker_interpolate:
	@ args = 4, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #80
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L1332
	b	.L1331
.L1332:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	cmp	r2, r3
	bls	.L1334
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #88]
	cmp	r2, r3
	bhi	.L1335
.L1334:
	b	.L1331
.L1335:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #72]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #88]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #68]
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #68]
	cmp	r2, r3
	ble	.L1336
	ldr	r3, [r7, #72]
	str	r3, [r7, #48]
	ldr	r3, [r7, #68]
	str	r3, [r7, #72]
	ldr	r3, [r7, #48]
	str	r3, [r7, #68]
	ldr	r3, [r7]
	str	r3, [r7, #44]
	ldr	r3, [r7, #88]
	str	r3, [r7]
	ldr	r3, [r7, #44]
	str	r3, [r7, #88]
.L1336:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #40]
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #88]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #36]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #32]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #88]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #28]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #40]
	subs	r3, r2, r3
	str	r3, [r7, #24]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #36]
	subs	r3, r2, r3
	str	r3, [r7, #20]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	beq	.L1337
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #68]
	cmp	r2, r3
	bne	.L1338
.L1337:
	ldr	r3, [r7, #8]
	str	r3, [r7, #76]
	b	.L1339
.L1343:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #76]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #64]
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bgt	.L1340
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	str	r3, [r7, #64]
	b	.L1341
.L1340:
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	blt	.L1342
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #64]
	b	.L1341
.L1342:
	ldr	r3, [r7, #32]
	str	r3, [r7, #64]
.L1341:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #76]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r7, #64]
	str	r2, [r3]
	ldr	r3, [r7, #76]
	adds	r3, r3, #1
	str	r3, [r7, #76]
.L1339:
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L1343
	b	.L1331
.L1338:
	movs	r3, #0
	str	r3, [r7, #60]
	movs	r3, #0
	strb	r3, [r7, #59]
	ldr	r3, [r7, #8]
	str	r3, [r7, #76]
	b	.L1344
.L1349:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #76]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #52]
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bgt	.L1345
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	str	r3, [r7, #52]
	b	.L1346
.L1345:
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	blt	.L1347
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #52]
	b	.L1346
.L1347:
	ldrb	r3, [r7, #59]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L1348
	movs	r3, #1
	strb	r3, [r7, #59]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #32]
	subs	r2, r2, r3
	ldr	r1, [r7, #68]
	ldr	r3, [r7, #72]
	subs	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	FT_DivFix(PLT)
	str	r0, [r7, #60]
.L1348:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #76]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #72]
	subs	r3, r2, r3
	mov	r0, r3
	ldr	r1, [r7, #60]
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	str	r3, [r7, #52]
.L1346:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #76]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r7, #52]
	str	r2, [r3]
	ldr	r3, [r7, #76]
	adds	r3, r3, #1
	str	r3, [r7, #76]
.L1344:
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L1349
.L1331:
	adds	r7, r7, #80
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	_iup_worker_interpolate, .-_iup_worker_interpolate
	.section	.text.Ins_IUP,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_IUP, %function
Ins_IUP:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #64
	add	r7, sp, #8
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #154]
	cmp	r3, #0
	bne	.L1351
	b	.L1350
.L1351:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #368]	@ zero_extendqisi2
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L1353
	movs	r3, #8
	strb	r3, [r7, #55]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #156]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #164]
	str	r3, [r7, #20]
	b	.L1354
.L1353:
	movs	r3, #16
	strb	r3, [r7, #55]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #156]
	adds	r3, r3, #4
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	adds	r3, r3, #4
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #164]
	adds	r3, r3, #4
	str	r3, [r7, #20]
.L1354:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #152]
	str	r3, [r7, #24]
	movs	r3, #0
	strh	r3, [r7, #38]	@ movhi
	movs	r3, #0
	str	r3, [r7, #40]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #96]
	ldr	r3, [r3, #64]
	cmp	r3, #38
	bne	.L1355
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #617]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1355
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #628]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #632]
	and	r3, r3, #32768
	cmp	r3, #0
	beq	.L1355
	b	.L1350
.L1355:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #172]
	ldrsh	r3, [r7, #38]
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #176]
	subs	r3, r2, r3
	str	r3, [r7, #48]
	ldr	r3, [r7, #40]
	str	r3, [r7, #32]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #152]
	mov	r2, r3
	ldr	r3, [r7, #48]
	cmp	r2, r3
	bhi	.L1356
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #152]
	subs	r3, r3, #1
	str	r3, [r7, #48]
	b	.L1357
.L1356:
	b	.L1357
.L1359:
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	str	r3, [r7, #40]
.L1357:
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #48]
	cmp	r2, r3
	bhi	.L1358
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #168]
	ldr	r3, [r7, #40]
	add	r3, r3, r2
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldrb	r3, [r7, #55]
	ands	r3, r3, r2
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L1359
.L1358:
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #48]
	cmp	r2, r3
	bhi	.L1360
	ldr	r3, [r7, #40]
	str	r3, [r7, #28]
	ldr	r3, [r7, #40]
	str	r3, [r7, #44]
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	str	r3, [r7, #40]
	b	.L1361
.L1363:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #168]
	ldr	r3, [r7, #40]
	add	r3, r3, r2
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldrb	r3, [r7, #55]
	ands	r3, r3, r2
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L1362
	ldr	r3, [r7, #44]
	adds	r2, r3, #1
	ldr	r3, [r7, #40]
	subs	r3, r3, #1
	add	r1, r7, #12
	ldr	r0, [r7, #40]
	str	r0, [sp]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [r7, #44]
	bl	_iup_worker_interpolate(PLT)
	ldr	r3, [r7, #40]
	str	r3, [r7, #44]
.L1362:
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	str	r3, [r7, #40]
.L1361:
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #48]
	cmp	r2, r3
	bls	.L1363
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bne	.L1364
	add	r3, r7, #12
	mov	r0, r3
	ldr	r1, [r7, #32]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #44]
	bl	_iup_worker_shift(PLT)
	b	.L1360
.L1364:
	ldr	r3, [r7, #44]
	uxth	r3, r3
	adds	r3, r3, #1
	uxth	r3, r3
	add	r2, r7, #12
	ldr	r1, [r7, #28]
	str	r1, [sp]
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #44]
	bl	_iup_worker_interpolate(PLT)
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L1360
	ldr	r3, [r7, #28]
	subs	r3, r3, #1
	add	r2, r7, #12
	ldr	r1, [r7, #28]
	str	r1, [sp]
	mov	r0, r2
	ldr	r1, [r7, #32]
	mov	r2, r3
	ldr	r3, [r7, #44]
	bl	_iup_worker_interpolate(PLT)
.L1360:
	ldrh	r3, [r7, #38]
	adds	r3, r3, #1
	strh	r3, [r7, #38]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #154]
	ldrsh	r2, [r7, #38]
	sxth	r3, r3
	cmp	r2, r3
	blt	.L1355
.L1350:
	adds	r7, r7, #56
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	Ins_IUP, .-Ins_IUP
	.section	.text.Ins_DELTAP,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_DELTAP, %function
Ins_DELTAP:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #44
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #96]
	ldr	r3, [r3, #64]
	cmp	r3, #38
	bne	.L1367
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #617]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1367
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #628]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1367
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #632]
	and	r3, r3, #2048
	cmp	r3, #0
	beq	.L1367
	b	.L1368
.L1367:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #592]
	ldr	r0, [r7, #4]
	blx	r3
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	movs	r3, #1
	str	r3, [r7, #36]
	b	.L1369
.L1389:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	cmp	r3, #1
	bgt	.L1370
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #561]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1371
	ldr	r3, [r7, #4]
	movs	r2, #129
	str	r2, [r3, #12]
.L1371:
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #28]
	b	.L1368
.L1370:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	subs	r2, r3, #2
	ldr	r3, [r7, #4]
	str	r2, [r3, #28]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	adds	r3, r3, #1
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	strh	r3, [r7, #18]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #44]
	ldrh	r2, [r7, #18]
	cmp	r2, r3
	bcs	.L1372
	ldr	r3, [r7, #28]
	and	r3, r3, #240
	lsrs	r3, r3, #4
	str	r3, [r7, #32]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #368]	@ zero_extendqisi2
	cmp	r3, #113
	beq	.L1374
	cmp	r3, #114
	beq	.L1375
	cmp	r3, #93
	b	.L1373
.L1374:
	ldr	r3, [r7, #32]
	adds	r3, r3, #16
	str	r3, [r7, #32]
	b	.L1373
.L1375:
	ldr	r3, [r7, #32]
	adds	r3, r3, #32
	str	r3, [r7, #32]
	nop
.L1373:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #332]
	ldr	r2, [r7, #32]
	add	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bne	.L1388
	ldr	r3, [r7, #28]
	and	r3, r3, #15
	subs	r3, r3, #8
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	blt	.L1378
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L1378:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #334]
	rsb	r3, r3, #6
	ldr	r2, [r7, #28]
	lsl	r3, r2, r3
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #96]
	ldr	r3, [r3, #64]
	cmp	r3, #38
	bne	.L1379
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #617]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1380
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #632]
	and	r3, r3, #2
	cmp	r3, #0
	bne	.L1380
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #560]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1381
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #300]
	cmp	r3, #0
	beq	.L1381
.L1380:
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #584]
	ldr	r3, [r7, #4]
	add	r2, r3, #36
	ldrh	r3, [r7, #18]
	ldr	r0, [r7, #4]
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [r7, #28]
	blx	r4
	b	.L1388
.L1381:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #617]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1388
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #300]
	cmp	r3, #0
	beq	.L1388
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #52]
	ldrh	r3, [r7, #18]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	strh	r3, [r7, #16]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldrb	r3, [r3, #796]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L1383
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #60]
	ldrh	r3, [r7, #18]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L1383
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #584]
	ldr	r3, [r7, #4]
	add	r2, r3, #36
	ldrh	r3, [r7, #18]
	ldr	r0, [r7, #4]
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [r7, #28]
	blx	r4
	b	.L1384
.L1383:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldrb	r3, [r3, #796]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1384
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #632]
	and	r3, r3, #4
	cmp	r3, #0
	bne	.L1384
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #632]
	and	r3, r3, #16384
	cmp	r3, #0
	beq	.L1385
	ldrh	r2, [r7, #16]
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	adds	r3, r3, #32
	bic	r2, r3, #63
	ldrh	r3, [r7, #16]
	subs	r3, r2, r3
	str	r3, [r7, #28]
.L1385:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #628]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L1384
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #60]
	ldrh	r3, [r7, #18]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L1384
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #584]
	ldr	r3, [r7, #4]
	add	r2, r3, #36
	ldrh	r3, [r7, #18]
	ldr	r0, [r7, #4]
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [r7, #28]
	blx	r4
.L1384:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #52]
	ldrh	r3, [r7, #18]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #300]
	cmp	r3, #0
	beq	.L1388
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldrb	r3, [r3, #796]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1386
	ldrh	r3, [r7, #16]
	and	r3, r3, #63
	cmp	r3, #0
	bne	.L1386
	ldrh	r3, [r7, #14]
	and	r3, r3, #63
	cmp	r3, #0
	bne	.L1387
.L1386:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #632]
	and	r3, r3, #524288
	cmp	r3, #0
	beq	.L1388
	ldrh	r3, [r7, #16]
	and	r3, r3, #63
	cmp	r3, #0
	beq	.L1388
	ldrh	r3, [r7, #14]
	and	r3, r3, #63
	cmp	r3, #0
	beq	.L1388
.L1387:
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #584]
	ldr	r3, [r7, #4]
	add	r1, r3, #36
	ldr	r3, [r7, #28]
	negs	r3, r3
	ldrh	r2, [r7, #18]
	ldr	r0, [r7, #4]
	blx	r4
	b	.L1388
.L1379:
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #584]
	ldr	r3, [r7, #4]
	add	r2, r3, #36
	ldrh	r3, [r7, #18]
	ldr	r0, [r7, #4]
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [r7, #28]
	blx	r4
	b	.L1388
.L1372:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #561]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1388
	ldr	r3, [r7, #4]
	movs	r2, #134
	str	r2, [r3, #12]
.L1388:
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L1369:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bls	.L1389
.L1368:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #4]
	str	r2, [r3, #32]
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	Ins_DELTAP, .-Ins_DELTAP
	.section	.text.Ins_DELTAC,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_DELTAC, %function
Ins_DELTAC:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #592]
	ldr	r0, [r7, #4]
	blx	r3
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	movs	r3, #1
	str	r3, [r7, #28]
	b	.L1391
.L1403:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	cmp	r3, #1
	bgt	.L1392
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #561]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1393
	ldr	r3, [r7, #4]
	movs	r2, #129
	str	r2, [r3, #12]
.L1393:
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #28]
	b	.L1394
.L1392:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	subs	r2, r3, #2
	ldr	r3, [r7, #4]
	str	r2, [r3, #28]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	adds	r3, r3, #1
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #380]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bhi	.L1395
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #561]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1396
	ldr	r3, [r7, #4]
	movs	r2, #134
	str	r2, [r3, #12]
	b	.L1390
.L1395:
	ldr	r3, [r7, #20]
	and	r3, r3, #240
	lsrs	r3, r3, #4
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #368]	@ zero_extendqisi2
	cmp	r3, #116
	beq	.L1399
	cmp	r3, #117
	beq	.L1400
	cmp	r3, #115
	b	.L1398
.L1399:
	ldr	r3, [r7, #24]
	adds	r3, r3, #16
	str	r3, [r7, #24]
	b	.L1398
.L1400:
	ldr	r3, [r7, #24]
	adds	r3, r3, #32
	str	r3, [r7, #24]
	nop
.L1398:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #332]
	ldr	r2, [r7, #24]
	add	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bne	.L1396
	ldr	r3, [r7, #20]
	and	r3, r3, #15
	subs	r3, r3, #8
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	blt	.L1402
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L1402:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #334]
	rsb	r3, r3, #6
	ldr	r2, [r7, #20]
	lsl	r3, r2, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #604]
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #20]
	blx	r3
.L1396:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L1391:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bls	.L1403
.L1394:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #4]
	str	r2, [r3, #32]
.L1390:
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	Ins_DELTAC, .-Ins_DELTAC
	.section	.text.Ins_GETINFO,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_GETINFO, %function
Ins_GETINFO:
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
	ldr	r3, [r3]
	ldr	r3, [r3, #96]
	ldr	r3, [r3, #64]
	cmp	r3, #38
	bne	.L1405
	ldr	r3, [r7]
	ldr	r3, [r3]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L1405
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #616]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1405
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #617]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1406
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #624]
	str	r3, [r7, #12]
	b	.L1408
.L1406:
	movs	r3, #38
	str	r3, [r7, #12]
	b	.L1408
.L1405:
	ldr	r3, [r7]
	ldr	r3, [r3]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L1408
	movs	r3, #35
	str	r3, [r7, #12]
.L1408:
	ldr	r3, [r7]
	ldr	r3, [r3]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L1409
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #281]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1409
	ldr	r3, [r7, #12]
	orr	r3, r3, #128
	str	r3, [r7, #12]
.L1409:
	ldr	r3, [r7]
	ldr	r3, [r3]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L1410
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #282]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1410
	ldr	r3, [r7, #12]
	orr	r3, r3, #256
	str	r3, [r7, #12]
.L1410:
	ldr	r3, [r7]
	ldr	r3, [r3]
	and	r3, r3, #32
	cmp	r3, #0
	beq	.L1411
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #608]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1411
	ldr	r3, [r7, #12]
	orr	r3, r3, #4096
	str	r3, [r7, #12]
.L1411:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #96]
	ldr	r3, [r3, #64]
	cmp	r3, #38
	bne	.L1412
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #624]
	cmp	r3, #34
	ble	.L1412
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #624]
	cmp	r3, #36
	ble	.L1412
	ldr	r3, [r7]
	ldr	r3, [r3]
	and	r3, r3, #64
	cmp	r3, #0
	beq	.L1413
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #616]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1413
	ldr	r3, [r7, #12]
	orr	r3, r3, #8192
	str	r3, [r7, #12]
.L1413:
	ldr	r3, [r7]
	ldr	r3, [r3]
	and	r3, r3, #128
	cmp	r3, #0
	beq	.L1414
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #618]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1414
	ldr	r3, [r7, #12]
	orr	r3, r3, #16384
	str	r3, [r7, #12]
.L1414:
	ldr	r3, [r7]
	ldr	r3, [r3]
	and	r3, r3, #256
	cmp	r3, #0
	beq	.L1415
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #621]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1415
	ldr	r3, [r7, #12]
	orr	r3, r3, #32768
	str	r3, [r7, #12]
.L1415:
	ldr	r3, [r7]
	ldr	r3, [r3]
	and	r3, r3, #512
	cmp	r3, #0
	beq	.L1416
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #620]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1416
	ldr	r3, [r7, #12]
	orr	r3, r3, #65536
	str	r3, [r7, #12]
.L1416:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #624]
	cmp	r3, #37
	ble	.L1412
	ldr	r3, [r7]
	ldr	r3, [r3]
	and	r3, r3, #1024
	cmp	r3, #0
	beq	.L1417
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #622]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1417
	ldr	r3, [r7, #12]
	orr	r3, r3, #131072
	str	r3, [r7, #12]
.L1417:
	ldr	r3, [r7]
	ldr	r3, [r3]
	and	r3, r3, #2048
	cmp	r3, #0
	beq	.L1418
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #619]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1418
	ldr	r3, [r7, #12]
	orr	r3, r3, #262144
	str	r3, [r7, #12]
.L1418:
	ldr	r3, [r7]
	ldr	r3, [r3]
	and	r3, r3, #4096
	cmp	r3, #0
	beq	.L1412
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #623]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1412
	ldr	r3, [r7, #12]
	orr	r3, r3, #524288
	str	r3, [r7, #12]
.L1412:
	ldr	r3, [r7]
	ldr	r2, [r7, #12]
	str	r2, [r3]
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	Ins_GETINFO, .-Ins_GETINFO
	.section	.text.Ins_UNKNOWN,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Ins_UNKNOWN, %function
Ins_UNKNOWN:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #416]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #408]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #16]
	b	.L1420
.L1424:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #12]
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #368]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L1421
	ldr	r3, [r7, #20]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1421
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #428]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #432]
	cmp	r2, r3
	blt	.L1422
	ldr	r3, [r7, #4]
	movs	r2, #130
	str	r2, [r3, #12]
	b	.L1419
.L1422:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #436]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #428]
	adds	r0, r3, #1
	ldr	r1, [r7, #4]
	str	r0, [r1, #428]
	lsls	r3, r3, #4
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #352]
	ldr	r3, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #360]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	movs	r2, #1
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #20]
	str	r2, [r3, #12]
	ldr	r3, [r7, #20]
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #4]
	mov	r1, r2
	mov	r2, r3
	bl	Ins_Goto_CodeRange(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #376]
	b	.L1419
.L1421:
	ldr	r3, [r7, #20]
	adds	r3, r3, #24
	str	r3, [r7, #20]
.L1420:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bcc	.L1424
	ldr	r3, [r7, #4]
	movs	r2, #128
	str	r2, [r3, #12]
.L1419:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	Ins_UNKNOWN, .-Ins_UNKNOWN
	.section	.rodata
	.align	2
.LC3:
	.byte	6
	.byte	125
	.section	.text.TT_RunIns,"ax",%progbits
	.align	2
	.global	TT_RunIns
	.thumb
	.thumb_func
	.type	TT_RunIns, %function
TT_RunIns:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #56
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #52]
	ldr	r3, .L1587
.LPIC52:
	add	r3, pc
	mov	r2, r3
	add	r3, r7, #20
	ldrh	r2, [r2]	@ unaligned
	strh	r2, [r3]	@ unaligned
	movs	r3, #1
	strh	r3, [r7, #42]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #16]	@ movhi
	movs	r3, #1
	strh	r3, [r7, #12]	@ movhi
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #628]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #256]
	ldr	r3, [r7, #4]
	ldrh	r2, [r3, #216]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #218]
	cmp	r2, r3
	beq	.L1426
	ldr	r3, [r7, #4]
	ldr	r2, .L1587+4
.LPIC53:
	add	r2, pc
	str	r2, [r3, #592]
	ldr	r3, [r7, #4]
	ldr	r2, .L1587+8
.LPIC54:
	add	r2, pc
	str	r2, [r3, #596]
	ldr	r3, [r7, #4]
	ldr	r2, .L1587+12
.LPIC55:
	add	r2, pc
	str	r2, [r3, #600]
	ldr	r3, [r7, #4]
	ldr	r2, .L1587+16
.LPIC56:
	add	r2, pc
	str	r2, [r3, #604]
	b	.L1427
.L1426:
	ldr	r3, [r7, #4]
	ldr	r2, .L1587+20
.LPIC57:
	add	r2, pc
	str	r2, [r3, #592]
	ldr	r3, [r7, #4]
	ldr	r2, .L1587+24
.LPIC58:
	add	r2, pc
	str	r2, [r3, #596]
	ldr	r3, [r7, #4]
	ldr	r2, .L1587+28
.LPIC59:
	add	r2, pc
	str	r2, [r3, #600]
	ldr	r3, [r7, #4]
	ldr	r2, .L1587+32
.LPIC60:
	add	r2, pc
	str	r2, [r3, #604]
.L1427:
	ldr	r0, [r7, #4]
	bl	Compute_Funcs(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #312]
	uxtb	r3, r3
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	Compute_Round(PLT)
.L1584:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #356]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #360]
	add	r3, r3, r2
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #4]
	strb	r2, [r3, #368]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #368]	@ zero_extendqisi2
	ldr	r2, .L1587+36
.LPIC61:
	add	r2, pc
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	sxtb	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #372]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #372]
	cmp	r3, #0
	bge	.L1428
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #360]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #364]
	cmp	r2, r3
	blt	.L1429
	b	.L1430
.L1429:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #372]
	ldr	r2, [r7, #4]
	ldr	r1, [r2, #356]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #360]
	adds	r2, r2, #1
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	mul	r3, r2, r3
	rsb	r2, r3, #2
	ldr	r3, [r7, #4]
	str	r2, [r3, #372]
.L1428:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #360]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #372]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #364]
	cmp	r2, r3
	ble	.L1431
	b	.L1430
.L1431:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #368]	@ zero_extendqisi2
	ldr	r1, .L1587+40
.LPIC62:
	add	r1, pc
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	lsrs	r3, r3, #4
	uxtb	r3, r3
	subs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	cmp	r3, #0
	bge	.L1432
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #561]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1433
	ldr	r3, [r7, #4]
	movs	r2, #129
	str	r2, [r3, #12]
	b	.L1434
.L1433:
	movs	r3, #0
	strh	r3, [r7, #50]	@ movhi
	b	.L1435
.L1436:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #24]
	ldrh	r3, [r7, #50]
	lsls	r3, r3, #2
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [r3]
	ldrh	r3, [r7, #50]
	adds	r3, r3, #1
	strh	r3, [r7, #50]	@ movhi
.L1435:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #368]	@ zero_extendqisi2
	ldr	r2, .L1587+44
.LPIC63:
	add	r2, pc
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	lsrs	r3, r3, #4
	uxtb	r3, r3
	ldrh	r2, [r7, #50]
	cmp	r2, r3
	bcc	.L1436
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #28]
.L1432:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #368]	@ zero_extendqisi2
	ldr	r1, .L1587+48
.LPIC64:
	add	r1, pc
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	and	r3, r3, #15
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #32]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	cmp	r2, r3
	ble	.L1437
	ldr	r3, [r7, #4]
	movs	r2, #130
	str	r2, [r3, #12]
	b	.L1434
.L1437:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #376]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #96]
	ldr	r3, [r3, #64]
	cmp	r3, #38
	bne	.L1438
	movs	r3, #0
	strh	r3, [r7, #50]	@ movhi
	b	.L1439
.L1445:
	ldrh	r3, [r7, #50]
	lsls	r3, r3, #1
	add	r0, r7, #56
	add	r3, r3, r0
	ldrh	r2, [r3, #-40]
	ldrh	r3, [r7, #50]
	lsls	r3, r3, #1
	add	r1, r7, #56
	add	r3, r3, r1
	ldrh	r3, [r3, #-44]
	cmp	r2, r3
	bcs	.L1440
	ldr	r3, [r7, #4]
	ldrb	r2, [r3, #368]	@ zero_extendqisi2
	ldrh	r1, [r7, #50]
	ldrh	r3, [r7, #50]
	lsls	r3, r3, #1
	add	r0, r7, #56
	add	r3, r3, r0
	ldrh	r3, [r3, #-40]
	lsls	r1, r1, #1
	add	r0, r7, #56
	add	r1, r1, r0
	add	r3, r3, r1
	subs	r3, r3, #36
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L1440
	ldrh	r1, [r7, #50]
	ldrh	r3, [r7, #50]
	lsls	r3, r3, #1
	add	r2, r7, #56
	add	r3, r3, r2
	ldrh	r3, [r3, #-40]
	adds	r3, r3, #1
	uxth	r2, r3
	lsls	r3, r1, #1
	add	r0, r7, #56
	add	r3, r3, r0
	strh	r2, [r3, #-40]	@ movhi
	ldrh	r3, [r7, #50]
	lsls	r3, r3, #1
	add	r1, r7, #56
	add	r3, r3, r1
	ldrh	r2, [r3, #-40]
	ldrh	r3, [r7, #50]
	lsls	r3, r3, #1
	add	r0, r7, #56
	add	r3, r3, r0
	ldrh	r3, [r3, #-44]
	cmp	r2, r3
	bne	.L1441
	ldrh	r3, [r7, #50]
	cmp	r3, #0
	nop
	ldrh	r3, [r7, #50]
	lsls	r3, r3, #1
	add	r1, r7, #56
	add	r3, r3, r1
	movs	r2, #0
	strh	r2, [r3, #-40]	@ movhi
	b	.L1444
.L1441:
	b	.L1444
.L1440:
	ldrh	r3, [r7, #50]
	lsls	r3, r3, #1
	add	r2, r7, #56
	add	r3, r3, r2
	movs	r2, #0
	strh	r2, [r3, #-40]	@ movhi
.L1444:
	ldrh	r3, [r7, #50]
	adds	r3, r3, #1
	strh	r3, [r7, #50]	@ movhi
.L1439:
	ldrh	r2, [r7, #50]
	ldrh	r3, [r7, #42]
	cmp	r2, r3
	bcc	.L1445
.L1438:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	lsls	r3, r3, #2
	add	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #368]
	strb	r3, [r7, #35]
	ldrb	r3, [r7, #35]	@ zero_extendqisi2
	cmp	r3, #143
	bhi	.L1446
	adr	r0, .L1448
	ldr	r1, [r0, r3, lsl #2]
	add	r0, r0, r1
	bx	r0
	.p2align 2
.L1448:
	.word	.L1447+1-.L1448
	.word	.L1447+1-.L1448
	.word	.L1447+1-.L1448
	.word	.L1447+1-.L1448
	.word	.L1447+1-.L1448
	.word	.L1447+1-.L1448
	.word	.L1449+1-.L1448
	.word	.L1449+1-.L1448
	.word	.L1450+1-.L1448
	.word	.L1450+1-.L1448
	.word	.L1451+1-.L1448
	.word	.L1452+1-.L1448
	.word	.L1453+1-.L1448
	.word	.L1454+1-.L1448
	.word	.L1455+1-.L1448
	.word	.L1456+1-.L1448
	.word	.L1457+1-.L1448
	.word	.L1458+1-.L1448
	.word	.L1459+1-.L1448
	.word	.L1460+1-.L1448
	.word	.L1461+1-.L1448
	.word	.L1462+1-.L1448
	.word	.L1463+1-.L1448
	.word	.L1464+1-.L1448
	.word	.L1465+1-.L1448
	.word	.L1466+1-.L1448
	.word	.L1467+1-.L1448
	.word	.L1468+1-.L1448
	.word	.L1469+1-.L1448
	.word	.L1470+1-.L1448
	.word	.L1471+1-.L1448
	.word	.L1472+1-.L1448
	.word	.L1473+1-.L1448
	.word	.L1474+1-.L1448
	.word	.L1475+1-.L1448
	.word	.L1476+1-.L1448
	.word	.L1477+1-.L1448
	.word	.L1478+1-.L1448
	.word	.L1479+1-.L1448
	.word	.L1480+1-.L1448
	.word	.L1481+1-.L1448
	.word	.L1482+1-.L1448
	.word	.L1483+1-.L1448
	.word	.L1484+1-.L1448
	.word	.L1485+1-.L1448
	.word	.L1486+1-.L1448
	.word	.L1487+1-.L1448
	.word	.L1487+1-.L1448
	.word	.L1488+1-.L1448
	.word	.L1488+1-.L1448
	.word	.L1489+1-.L1448
	.word	.L1489+1-.L1448
	.word	.L1490+1-.L1448
	.word	.L1490+1-.L1448
	.word	.L1491+1-.L1448
	.word	.L1491+1-.L1448
	.word	.L1492+1-.L1448
	.word	.L1493+1-.L1448
	.word	.L1494+1-.L1448
	.word	.L1494+1-.L1448
	.word	.L1495+1-.L1448
	.word	.L1496+1-.L1448
	.word	.L1497+1-.L1448
	.word	.L1497+1-.L1448
	.word	.L1498+1-.L1448
	.word	.L1499+1-.L1448
	.word	.L1500+1-.L1448
	.word	.L1501+1-.L1448
	.word	.L1502+1-.L1448
	.word	.L1503+1-.L1448
	.word	.L1504+1-.L1448
	.word	.L1504+1-.L1448
	.word	.L1505+1-.L1448
	.word	.L1506+1-.L1448
	.word	.L1506+1-.L1448
	.word	.L1507+1-.L1448
	.word	.L1508+1-.L1448
	.word	.L1509+1-.L1448
	.word	.L1510+1-.L1448
	.word	.L1511+1-.L1448
	.word	.L1512+1-.L1448
	.word	.L1513+1-.L1448
	.word	.L1514+1-.L1448
	.word	.L1515+1-.L1448
	.word	.L1516+1-.L1448
	.word	.L1517+1-.L1448
	.word	.L1518+1-.L1448
	.word	.L1519+1-.L1448
	.word	.L1520+1-.L1448
	.word	.L1521+1-.L1448
	.word	.L1522+1-.L1448
	.word	.L1523+1-.L1448
	.word	.L1524+1-.L1448
	.word	.L1525+1-.L1448
	.word	.L1526+1-.L1448
	.word	.L1527+1-.L1448
	.word	.L1528+1-.L1448
	.word	.L1529+1-.L1448
	.word	.L1530+1-.L1448
	.word	.L1531+1-.L1448
	.word	.L1532+1-.L1448
	.word	.L1533+1-.L1448
	.word	.L1534+1-.L1448
	.word	.L1535+1-.L1448
	.word	.L1536+1-.L1448
	.word	.L1536+1-.L1448
	.word	.L1536+1-.L1448
	.word	.L1536+1-.L1448
	.word	.L1537+1-.L1448
	.word	.L1537+1-.L1448
	.word	.L1537+1-.L1448
	.word	.L1537+1-.L1448
	.word	.L1538+1-.L1448
	.word	.L1539+1-.L1448
	.word	.L1539+1-.L1448
	.word	.L1540+1-.L1448
	.word	.L1540+1-.L1448
	.word	.L1540+1-.L1448
	.word	.L1541+1-.L1448
	.word	.L1542+1-.L1448
	.word	.L1543+1-.L1448
	.word	.L1544+1-.L1448
	.word	.L1545+1-.L1448
	.word	.L1546+1-.L1448
	.word	.L1547+1-.L1448
	.word	.L1548+1-.L1448
	.word	.L1549+1-.L1448
	.word	.L1550+1-.L1448
	.word	.L1551+1-.L1448
	.word	.L1552+1-.L1448
	.word	.L1553+1-.L1448
	.word	.L1554+1-.L1448
	.word	.L1554+1-.L1448
	.word	.L1555+1-.L1448
	.word	.L1556+1-.L1448
	.word	.L1556+1-.L1448
	.word	.L1557+1-.L1448
	.word	.L1558+1-.L1448
	.word	.L1559+1-.L1448
	.word	.L1560+1-.L1448
	.word	.L1561+1-.L1448
	.word	.L1562+1-.L1448
	.word	.L1563+1-.L1448
	.word	.L1564+1-.L1448
.L1447:
	ldr	r0, [r7, #4]
	bl	Ins_SxyTCA(PLT)
	b	.L1565
.L1449:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_SPVTL(PLT)
	b	.L1565
.L1450:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_SFVTL(PLT)
	b	.L1565
.L1451:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_SPVFS(PLT)
	b	.L1565
.L1452:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_SFVFS(PLT)
	b	.L1565
.L1453:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_GPV(PLT)
	b	.L1565
.L1454:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_GFV(PLT)
	b	.L1565
.L1455:
	ldr	r0, [r7, #4]
	bl	Ins_SFVTPV(PLT)
	b	.L1565
.L1456:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_ISECT(PLT)
	b	.L1565
.L1457:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_SRP0(PLT)
	b	.L1565
.L1458:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_SRP1(PLT)
	b	.L1565
.L1459:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_SRP2(PLT)
	b	.L1565
.L1460:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_SZP0(PLT)
	b	.L1565
.L1461:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_SZP1(PLT)
	b	.L1565
.L1462:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_SZP2(PLT)
	b	.L1565
.L1463:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_SZPS(PLT)
	b	.L1565
.L1464:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_SLOOP(PLT)
	b	.L1565
.L1465:
	ldr	r0, [r7, #4]
	bl	Ins_RTG(PLT)
	b	.L1565
.L1466:
	ldr	r0, [r7, #4]
	bl	Ins_RTHG(PLT)
	b	.L1565
.L1467:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_SMD(PLT)
	b	.L1565
.L1468:
	ldr	r0, [r7, #4]
	bl	Ins_ELSE(PLT)
	b	.L1565
.L1469:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_JMPR(PLT)
	b	.L1565
.L1470:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_SCVTCI(PLT)
	b	.L1565
.L1471:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_SSWCI(PLT)
	b	.L1565
.L1472:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_SSW(PLT)
	b	.L1565
.L1473:
	ldr	r0, [r7, #36]
	bl	Ins_DUP(PLT)
	b	.L1565
.L1474:
	bl	Ins_POP(PLT)
	b	.L1565
.L1475:
	ldr	r0, [r7, #4]
	bl	Ins_CLEAR(PLT)
	b	.L1565
.L1476:
	ldr	r0, [r7, #36]
	bl	Ins_SWAP(PLT)
	b	.L1565
.L1477:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_DEPTH(PLT)
	b	.L1565
.L1478:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_CINDEX(PLT)
	b	.L1565
.L1479:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_MINDEX(PLT)
	b	.L1565
.L1480:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_ALIGNPTS(PLT)
	b	.L1565
.L1481:
	ldr	r0, [r7, #4]
	bl	Ins_UNKNOWN(PLT)
	b	.L1565
.L1482:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_UTP(PLT)
	b	.L1565
.L1483:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_LOOPCALL(PLT)
	b	.L1565
.L1484:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_CALL(PLT)
	b	.L1565
.L1485:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_FDEF(PLT)
	b	.L1565
.L1486:
	ldr	r0, [r7, #4]
	bl	Ins_ENDF(PLT)
	b	.L1565
.L1487:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_MDAP(PLT)
	b	.L1565
.L1488:
	ldr	r0, [r7, #4]
	bl	Ins_IUP(PLT)
	b	.L1565
.L1489:
	ldr	r0, [r7, #4]
	bl	Ins_SHP(PLT)
	b	.L1565
.L1490:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_SHC(PLT)
	b	.L1565
.L1491:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_SHZ(PLT)
	b	.L1565
.L1492:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_SHPIX(PLT)
	b	.L1565
.L1493:
	ldr	r0, [r7, #4]
	bl	Ins_IP(PLT)
	b	.L1565
.L1494:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_MSIRP(PLT)
	b	.L1565
.L1495:
	ldr	r0, [r7, #4]
	bl	Ins_ALIGNRP(PLT)
	b	.L1565
.L1496:
	ldr	r0, [r7, #4]
	bl	Ins_RTDG(PLT)
	b	.L1565
.L1497:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_MIAP(PLT)
	b	.L1565
.L1498:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_NPUSHB(PLT)
	b	.L1565
.L1499:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_NPUSHW(PLT)
	b	.L1565
.L1500:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_WS(PLT)
	b	.L1565
.L1501:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_RS(PLT)
	b	.L1565
.L1502:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_WCVTP(PLT)
	b	.L1565
.L1503:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_RCVT(PLT)
	b	.L1565
.L1504:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_GC(PLT)
	b	.L1565
.L1505:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_SCFS(PLT)
	b	.L1565
.L1506:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_MD(PLT)
	b	.L1565
.L1507:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_MPPEM(PLT)
	b	.L1565
.L1508:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_MPS(PLT)
	b	.L1565
.L1509:
	ldr	r0, [r7, #4]
	bl	Ins_FLIPON(PLT)
	b	.L1565
.L1510:
	ldr	r0, [r7, #4]
	bl	Ins_FLIPOFF(PLT)
	b	.L1565
.L1511:
	ldr	r0, [r7, #4]
	bl	Ins_DEBUG(PLT)
	b	.L1565
.L1512:
	ldr	r0, [r7, #36]
	bl	Ins_LT(PLT)
	b	.L1565
.L1513:
	ldr	r0, [r7, #36]
	bl	Ins_LTEQ(PLT)
	b	.L1565
.L1514:
	ldr	r0, [r7, #36]
	bl	Ins_GT(PLT)
	b	.L1565
.L1515:
	ldr	r0, [r7, #36]
	bl	Ins_GTEQ(PLT)
	b	.L1565
.L1516:
	ldr	r0, [r7, #36]
	bl	Ins_EQ(PLT)
	b	.L1565
.L1517:
	ldr	r0, [r7, #36]
	bl	Ins_NEQ(PLT)
	b	.L1565
.L1518:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_ODD(PLT)
	b	.L1565
.L1519:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_EVEN(PLT)
	b	.L1565
.L1520:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_IF(PLT)
	b	.L1565
.L1521:
	bl	Ins_EIF(PLT)
	b	.L1565
.L1522:
	ldr	r0, [r7, #36]
	bl	Ins_AND(PLT)
	b	.L1565
.L1523:
	ldr	r0, [r7, #36]
	bl	Ins_OR(PLT)
	b	.L1565
.L1524:
	ldr	r0, [r7, #36]
	bl	Ins_NOT(PLT)
	b	.L1565
.L1525:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_DELTAP(PLT)
	b	.L1565
.L1526:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_SDB(PLT)
	b	.L1565
.L1527:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_SDS(PLT)
	b	.L1565
.L1528:
	ldr	r0, [r7, #36]
	bl	Ins_ADD(PLT)
	b	.L1565
.L1529:
	ldr	r0, [r7, #36]
	bl	Ins_SUB(PLT)
	b	.L1565
.L1530:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_DIV(PLT)
	b	.L1565
.L1531:
	ldr	r0, [r7, #36]
	bl	Ins_MUL(PLT)
	b	.L1565
.L1532:
	ldr	r0, [r7, #36]
	bl	Ins_ABS(PLT)
	b	.L1565
.L1533:
	ldr	r0, [r7, #36]
	bl	Ins_NEG(PLT)
	b	.L1565
.L1534:
	ldr	r0, [r7, #36]
	bl	Ins_FLOOR(PLT)
	b	.L1565
.L1535:
	ldr	r0, [r7, #36]
	bl	Ins_CEILING(PLT)
	b	.L1565
.L1536:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_ROUND(PLT)
	b	.L1565
.L1537:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_NROUND(PLT)
	b	.L1565
.L1538:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_WCVTF(PLT)
	b	.L1565
.L1539:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_DELTAP(PLT)
	b	.L1565
.L1540:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_DELTAC(PLT)
	b	.L1565
.L1541:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_SROUND(PLT)
	b	.L1565
.L1542:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_S45ROUND(PLT)
	b	.L1565
.L1543:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_JROT(PLT)
	b	.L1565
.L1544:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_JROF(PLT)
	b	.L1565
.L1545:
	ldr	r0, [r7, #4]
	bl	Ins_ROFF(PLT)
	b	.L1565
.L1546:
	ldr	r0, [r7, #4]
	bl	Ins_UNKNOWN(PLT)
	b	.L1565
.L1547:
	ldr	r0, [r7, #4]
	bl	Ins_RUTG(PLT)
	b	.L1565
.L1548:
	ldr	r0, [r7, #4]
	bl	Ins_RDTG(PLT)
	b	.L1565
.L1549:
	bl	Ins_SANGW(PLT)
	b	.L1565
.L1550:
	bl	Ins_AA(PLT)
	b	.L1565
.L1551:
	ldr	r0, [r7, #4]
	bl	Ins_FLIPPT(PLT)
	b	.L1565
.L1552:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_FLIPRGON(PLT)
	b	.L1565
.L1553:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_FLIPRGOFF(PLT)
	b	.L1565
.L1554:
	ldr	r0, [r7, #4]
	bl	Ins_UNKNOWN(PLT)
	b	.L1565
.L1555:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_SCANCTRL(PLT)
	b	.L1565
.L1556:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_SDPVTL(PLT)
	b	.L1565
.L1557:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_GETINFO(PLT)
	b	.L1565
.L1558:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_IDEF(PLT)
	b	.L1565
.L1559:
	ldr	r0, [r7, #36]
	bl	Ins_ROLL(PLT)
	b	.L1565
.L1560:
	ldr	r0, [r7, #36]
	bl	Ins_MAX(PLT)
	b	.L1565
.L1561:
	ldr	r0, [r7, #36]
	bl	Ins_MIN(PLT)
	b	.L1565
.L1562:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_SCANTYPE(PLT)
	b	.L1565
.L1563:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_INSTCTRL(PLT)
	b	.L1565
.L1564:
	ldr	r0, [r7, #4]
	bl	Ins_UNKNOWN(PLT)
	b	.L1565
.L1446:
	ldrb	r3, [r7, #35]	@ zero_extendqisi2
	cmp	r3, #223
	bls	.L1566
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_MIRP(PLT)
	b	.L1565
.L1566:
	ldrb	r3, [r7, #35]	@ zero_extendqisi2
	cmp	r3, #191
	bls	.L1567
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_MDRP(PLT)
	b	.L1565
.L1567:
	ldrb	r3, [r7, #35]	@ zero_extendqisi2
	cmp	r3, #183
	bls	.L1568
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_PUSHW(PLT)
	b	.L1565
.L1568:
	ldrb	r3, [r7, #35]	@ zero_extendqisi2
	cmp	r3, #175
	bls	.L1569
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	bl	Ins_PUSHB(PLT)
	b	.L1565
.L1569:
	ldr	r0, [r7, #4]
	bl	Ins_UNKNOWN(PLT)
.L1565:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L1570
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	cmp	r3, #128
	beq	.L1572
	b	.L1434
.L1572:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #416]
	str	r3, [r7, #44]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #408]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #28]
	b	.L1573
.L1578:
	ldr	r3, [r7, #44]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1574
	ldr	r3, [r7, #4]
	ldrb	r2, [r3, #368]	@ zero_extendqisi2
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #12]
	uxtb	r3, r3
	cmp	r2, r3
	bne	.L1574
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #428]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #432]
	cmp	r2, r3
	blt	.L1575
	ldr	r3, [r7, #4]
	movs	r2, #134
	str	r2, [r3, #12]
	b	.L1434
.L1575:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #436]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #428]
	lsls	r3, r3, #4
	add	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #352]
	ldr	r3, [r7, #24]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #360]
	adds	r2, r3, #1
	ldr	r3, [r7, #24]
	str	r2, [r3, #4]
	ldr	r3, [r7, #24]
	movs	r2, #1
	str	r2, [r3, #8]
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #44]
	str	r2, [r3, #12]
	ldr	r3, [r7, #44]
	ldr	r2, [r3]
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #4]
	mov	r1, r2
	mov	r2, r3
	bl	Ins_Goto_CodeRange(PLT)
	mov	r3, r0
	cmp	r3, #1
	bne	.L1576
	b	.L1434
.L1576:
	b	.L1577
.L1574:
	ldr	r3, [r7, #44]
	adds	r3, r3, #24
	str	r3, [r7, #44]
.L1573:
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bcc	.L1578
	ldr	r3, [r7, #4]
	movs	r2, #128
	str	r2, [r3, #12]
	b	.L1434
.L1570:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #4]
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #376]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1579
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #360]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #372]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #360]
.L1579:
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	str	r3, [r7, #52]
	ldr	r2, [r7, #52]
	movw	r3, #10000
	cmp	r2, r3
	ble	.L1577
	movs	r3, #139
	b	.L1586
.L1577:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #360]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #364]
	cmp	r2, r3
	blt	.L1581
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #428]
	cmp	r3, #0
	ble	.L1582
	ldr	r3, [r7, #4]
	movs	r2, #131
	str	r2, [r3, #12]
	b	.L1434
.L1582:
	b	.L1583
.L1581:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #488]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1584
.L1583:
	movs	r3, #0
	b	.L1586
.L1430:
	ldr	r3, [r7, #4]
	movs	r2, #131
	str	r2, [r3, #12]
.L1434:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L1585
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #488]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L1585
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #352]
	cmp	r3, #3
	bne	.L1585
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r2, #-1
	str	r2, [r3, #296]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r2, #-1
	str	r2, [r3, #300]
.L1585:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
.L1586:
	mov	r0, r3
	adds	r7, r7, #56
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L1588:
	.align	2
.L1587:
	.word	.LC3-(.LPIC52+4)
	.word	Current_Ppem_Stretched-(.LPIC53+4)
	.word	Read_CVT_Stretched-(.LPIC54+4)
	.word	Write_CVT_Stretched-(.LPIC55+4)
	.word	Move_CVT_Stretched-(.LPIC56+4)
	.word	Current_Ppem-(.LPIC57+4)
	.word	Read_CVT-(.LPIC58+4)
	.word	Write_CVT-(.LPIC59+4)
	.word	Move_CVT-(.LPIC60+4)
	.word	opcode_length-(.LPIC61+4)
	.word	Pop_Push_Count-(.LPIC62+4)
	.word	Pop_Push_Count-(.LPIC63+4)
	.word	Pop_Push_Count-(.LPIC64+4)
	.size	TT_RunIns, .-TT_RunIns
	.section	.rodata.FAMILY_CLASS_Rules,"a",%progbits
	.align	2
	.type	FAMILY_CLASS_Rules, %object
	.size	FAMILY_CLASS_Rules, 22624
FAMILY_CLASS_Rules:
	.ascii	"MS Legacy Fonts\000"
	.space	16
	.ascii	"Aharoni\000"
	.space	24
	.ascii	"Andale Mono\000"
	.space	20
	.ascii	"Andalus\000"
	.space	24
	.ascii	"Angsana New\000"
	.space	20
	.ascii	"AngsanaUPC\000"
	.space	21
	.ascii	"Arabic Transparent\000"
	.space	13
	.ascii	"Arial Black\000"
	.space	20
	.ascii	"Arial Narrow\000"
	.space	19
	.ascii	"Arial Unicode MS\000"
	.space	15
	.ascii	"Arial\000"
	.space	26
	.ascii	"Batang\000"
	.space	25
	.ascii	"Browallia New\000"
	.space	18
	.ascii	"BrowalliaUPC\000"
	.space	19
	.ascii	"Comic Sans MS\000"
	.space	18
	.ascii	"Cordia New\000"
	.space	21
	.ascii	"CordiaUPC\000"
	.space	22
	.ascii	"Courier New\000"
	.space	20
	.ascii	"DFKai-SB\000"
	.space	23
	.ascii	"David Transparent\000"
	.space	14
	.ascii	"David\000"
	.space	26
	.ascii	"DilleniaUPC\000"
	.space	20
	.ascii	"Estrangelo Edessa\000"
	.space	14
	.ascii	"EucrosiaUPC\000"
	.space	20
	.ascii	"FangSong_GB2312\000"
	.space	16
	.ascii	"Fixed Miriam Transparent\000"
	.space	7
	.ascii	"FrankRuehl\000"
	.space	21
	.ascii	"Franklin Gothic Medium\000"
	.space	9
	.ascii	"FreesiaUPC\000"
	.space	21
	.ascii	"Garamond\000"
	.space	23
	.ascii	"Gautami\000"
	.space	24
	.ascii	"Georgia\000"
	.space	24
	.ascii	"Gulim\000"
	.space	26
	.ascii	"Impact\000"
	.space	25
	.ascii	"IrisUPC\000"
	.space	24
	.ascii	"JasmineUPC\000"
	.space	21
	.ascii	"KaiTi_GB2312\000"
	.space	19
	.ascii	"KodchiangUPC\000"
	.space	19
	.ascii	"Latha\000"
	.space	26
	.ascii	"Levenim MT\000"
	.space	21
	.ascii	"LilyUPC\000"
	.space	24
	.ascii	"Lucida Console\000"
	.space	17
	.ascii	"Lucida Sans Unicode\000"
	.space	12
	.ascii	"MS Gothic\000"
	.space	22
	.ascii	"MS Mincho\000"
	.space	22
	.ascii	"MV Boli\000"
	.space	24
	.ascii	"Mangal\000"
	.space	25
	.ascii	"Marlett\000"
	.space	24
	.ascii	"Microsoft Sans Serif\000"
	.space	11
	.ascii	"Mingliu\000"
	.space	24
	.ascii	"Miriam Fixed\000"
	.space	19
	.ascii	"Miriam Transparent\000"
	.space	13
	.ascii	"Miriam\000"
	.space	25
	.ascii	"Narkisim\000"
	.space	23
	.ascii	"Palatino Linotype\000"
	.space	14
	.ascii	"Raavi\000"
	.space	26
	.ascii	"Rod Transparent\000"
	.space	16
	.ascii	"Rod\000"
	.space	28
	.ascii	"Shruti\000"
	.space	25
	.ascii	"SimHei\000"
	.space	25
	.ascii	"Simplified Arabic Fixed\000"
	.space	8
	.ascii	"Simplified Arabic\000"
	.space	14
	.ascii	"Simsun\000"
	.space	25
	.ascii	"Sylfaen\000"
	.space	24
	.ascii	"Symbol\000"
	.space	25
	.ascii	"Tahoma\000"
	.space	25
	.ascii	"Times New Roman\000"
	.space	16
	.ascii	"Traditional Arabic\000"
	.space	13
	.ascii	"Trebuchet MS\000"
	.space	19
	.ascii	"Tunga\000"
	.space	26
	.ascii	"Verdana\000"
	.space	24
	.ascii	"Webdings\000"
	.space	23
	.ascii	"Wingdings\000"
	.space	22
	.ascii	"\000"
	.space	31
	.space	864
	.ascii	"Core MS Legacy Fonts\000"
	.space	11
	.ascii	"Arial Black\000"
	.space	20
	.ascii	"Arial Narrow\000"
	.space	19
	.ascii	"Arial Unicode MS\000"
	.space	15
	.ascii	"Arial\000"
	.space	26
	.ascii	"Comic Sans MS\000"
	.space	18
	.ascii	"Courier New\000"
	.space	20
	.ascii	"Garamond\000"
	.space	23
	.ascii	"Georgia\000"
	.space	24
	.ascii	"Impact\000"
	.space	25
	.ascii	"Lucida Console\000"
	.space	17
	.ascii	"Lucida Sans Unicode\000"
	.space	12
	.ascii	"Microsoft Sans Serif\000"
	.space	11
	.ascii	"Palatino Linotype\000"
	.space	14
	.ascii	"Tahoma\000"
	.space	25
	.ascii	"Times New Roman\000"
	.space	16
	.ascii	"Trebuchet MS\000"
	.space	19
	.ascii	"Verdana\000"
	.space	24
	.ascii	"\000"
	.space	31
	.space	2624
	.ascii	"Apple Legacy Fonts\000"
	.space	13
	.ascii	"Geneva\000"
	.space	25
	.ascii	"Times\000"
	.space	26
	.ascii	"Monaco\000"
	.space	25
	.ascii	"Century\000"
	.space	24
	.ascii	"Chalkboard\000"
	.space	21
	.ascii	"Lobster\000"
	.space	24
	.ascii	"Century Gothic\000"
	.space	17
	.ascii	"Optima\000"
	.space	25
	.ascii	"Lucida Grande\000"
	.space	18
	.ascii	"Gill Sans\000"
	.space	22
	.ascii	"Baskerville\000"
	.space	20
	.ascii	"Helvetica\000"
	.space	22
	.ascii	"Helvetica Neue\000"
	.space	17
	.ascii	"\000"
	.space	31
	.space	2752
	.ascii	"Legacy Sans Fonts\000"
	.space	14
	.ascii	"Andale Mono\000"
	.space	20
	.ascii	"Arial Unicode MS\000"
	.space	15
	.ascii	"Arial\000"
	.space	26
	.ascii	"Century Gothic\000"
	.space	17
	.ascii	"Comic Sans MS\000"
	.space	18
	.ascii	"Franklin Gothic Medium\000"
	.space	9
	.ascii	"Geneva\000"
	.space	25
	.ascii	"Lucida Console\000"
	.space	17
	.ascii	"Lucida Grande\000"
	.space	18
	.ascii	"Lucida Sans Unicode\000"
	.space	12
	.ascii	"Lucida Sans Typewriter\000"
	.space	9
	.ascii	"Microsoft Sans Serif\000"
	.space	11
	.ascii	"Monaco\000"
	.space	25
	.ascii	"Tahoma\000"
	.space	25
	.ascii	"Trebuchet MS\000"
	.space	19
	.ascii	"Verdana\000"
	.space	24
	.ascii	"\000"
	.space	31
	.space	2656
	.ascii	"Misc Legacy Fonts\000"
	.space	14
	.ascii	"Dark Courier\000"
	.space	19
	.ascii	"\000"
	.space	31
	.space	3136
	.ascii	"Verdana Clones\000"
	.space	17
	.ascii	"DejaVu Sans\000"
	.space	20
	.ascii	"Bitstream Vera Sans\000"
	.space	12
	.ascii	"\000"
	.space	31
	.space	3104
	.ascii	"Verdana and Clones\000"
	.space	13
	.ascii	"DejaVu Sans\000"
	.space	20
	.ascii	"Bitstream Vera Sans\000"
	.space	12
	.ascii	"Verdana\000"
	.space	24
	.ascii	"\000"
	.space	31
	.space	3072
	.section	.rodata.STYLE_CLASS_Rules,"a",%progbits
	.align	2
	.type	STYLE_CLASS_Rules, %object
	.size	STYLE_CLASS_Rules, 16160
STYLE_CLASS_Rules:
	.ascii	"Regular Class\000"
	.space	18
	.ascii	"Regular\000"
	.space	24
	.ascii	"Book\000"
	.space	27
	.ascii	"Medium\000"
	.space	25
	.ascii	"Roman\000"
	.space	26
	.ascii	"Normal\000"
	.space	25
	.ascii	"\000"
	.space	31
	.space	3008
	.ascii	"Regular/Italic Class\000"
	.space	11
	.ascii	"Regular\000"
	.space	24
	.ascii	"Book\000"
	.space	27
	.ascii	"Medium\000"
	.space	25
	.ascii	"Italic\000"
	.space	25
	.ascii	"Oblique\000"
	.space	24
	.ascii	"Roman\000"
	.space	26
	.ascii	"Normal\000"
	.space	25
	.ascii	"\000"
	.space	31
	.space	2944
	.ascii	"Bold/BoldItalic Class\000"
	.space	10
	.ascii	"Bold\000"
	.space	27
	.ascii	"Bold Italic\000"
	.space	20
	.ascii	"Black\000"
	.space	26
	.ascii	"\000"
	.space	31
	.space	3072
	.ascii	"Bold/Italic/BoldItalic Class\000"
	.space	3
	.ascii	"Bold\000"
	.space	27
	.ascii	"Bold Italic\000"
	.space	20
	.ascii	"Black\000"
	.space	26
	.ascii	"Italic\000"
	.space	25
	.ascii	"Oblique\000"
	.space	24
	.ascii	"\000"
	.space	31
	.space	3008
	.ascii	"Regular/Bold Class\000"
	.space	13
	.ascii	"Regular\000"
	.space	24
	.ascii	"Book\000"
	.space	27
	.ascii	"Medium\000"
	.space	25
	.ascii	"Normal\000"
	.space	25
	.ascii	"Roman\000"
	.space	26
	.ascii	"Bold\000"
	.space	27
	.ascii	"Black\000"
	.space	26
	.ascii	"\000"
	.space	31
	.space	2944
	.section	.rodata.COMPATIBILITY_MODE_Rules,"a",%progbits
	.align	2
	.type	COMPATIBILITY_MODE_Rules, %object
	.size	COMPATIBILITY_MODE_Rules, 72
COMPATIBILITY_MODE_Rules:
	.ascii	"Verdana Clones\000"
	.space	17
	.word	0
	.ascii	"\000"
	.space	31
	.word	0
	.section	.rodata.PIXEL_HINTING_Rules,"a",%progbits
	.align	2
	.type	PIXEL_HINTING_Rules, %object
	.size	PIXEL_HINTING_Rules, 144
PIXEL_HINTING_Rules:
	.ascii	"Courier New\000"
	.space	20
	.word	12
	.ascii	"Italic\000"
	.space	25
	.word	122
	.ascii	"Courier New\000"
	.space	20
	.word	11
	.ascii	"Italic\000"
	.space	25
	.word	122
	.section	.rodata.DO_SHPIX_Rules,"a",%progbits
	.align	2
	.type	DO_SHPIX_Rules, %object
	.size	DO_SHPIX_Rules, 72
DO_SHPIX_Rules:
	.ascii	"-\000"
	.space	30
	.word	0
	.ascii	"\000"
	.space	31
	.word	0
	.section	.rodata.SKIP_NONPIXEL_Y_MOVES_Rules,"a",%progbits
	.align	2
	.type	SKIP_NONPIXEL_Y_MOVES_Rules, %object
	.size	SKIP_NONPIXEL_Y_MOVES_Rules, 288
SKIP_NONPIXEL_Y_MOVES_Rules:
	.ascii	"Consolas\000"
	.space	23
	.word	0
	.ascii	"\000"
	.space	31
	.word	0
	.ascii	"Core MS Legacy Fonts\000"
	.space	11
	.word	0
	.ascii	"Regular\000"
	.space	24
	.word	0
	.ascii	"Legacy Sans Fonts\000"
	.space	14
	.word	0
	.ascii	"\000"
	.space	31
	.word	0
	.ascii	"Verdana Clones\000"
	.space	17
	.word	0
	.ascii	"\000"
	.space	31
	.word	0
	.section	.rodata.SKIP_NONPIXEL_Y_MOVES_Rules_Exceptions,"a",%progbits
	.align	2
	.type	SKIP_NONPIXEL_Y_MOVES_Rules_Exceptions, %object
	.size	SKIP_NONPIXEL_Y_MOVES_Rules_Exceptions, 72
SKIP_NONPIXEL_Y_MOVES_Rules_Exceptions:
	.ascii	"Courier New\000"
	.space	20
	.word	0
	.ascii	"Regular\000"
	.space	24
	.word	0
	.section	.rodata.SKIP_NONPIXEL_Y_MOVES_DELTAP_Rules,"a",%progbits
	.align	2
	.type	SKIP_NONPIXEL_Y_MOVES_DELTAP_Rules, %object
	.size	SKIP_NONPIXEL_Y_MOVES_DELTAP_Rules, 144
SKIP_NONPIXEL_Y_MOVES_DELTAP_Rules:
	.ascii	"Times New Roman\000"
	.space	16
	.word	0
	.ascii	"Regular/Bold Class\000"
	.space	13
	.word	78
	.ascii	"Georgia\000"
	.space	24
	.word	0
	.ascii	"Regular/Bold Class\000"
	.space	13
	.word	78
	.section	.rodata.SKIP_OFFPIXEL_Y_MOVES_Rules,"a",%progbits
	.align	2
	.type	SKIP_OFFPIXEL_Y_MOVES_Rules, %object
	.size	SKIP_OFFPIXEL_Y_MOVES_Rules, 72
SKIP_OFFPIXEL_Y_MOVES_Rules:
	.ascii	"-\000"
	.space	30
	.word	0
	.ascii	"\000"
	.space	31
	.word	0
	.section	.rodata.SKIP_OFFPIXEL_Y_MOVES_Rules_Exceptions,"a",%progbits
	.align	2
	.type	SKIP_OFFPIXEL_Y_MOVES_Rules_Exceptions, %object
	.size	SKIP_OFFPIXEL_Y_MOVES_Rules_Exceptions, 72
SKIP_OFFPIXEL_Y_MOVES_Rules_Exceptions:
	.ascii	"-\000"
	.space	30
	.word	0
	.ascii	"\000"
	.space	31
	.word	0
	.section	.rodata.ROUND_NONPIXEL_Y_MOVES_Rules,"a",%progbits
	.align	2
	.type	ROUND_NONPIXEL_Y_MOVES_Rules, %object
	.size	ROUND_NONPIXEL_Y_MOVES_Rules, 144
ROUND_NONPIXEL_Y_MOVES_Rules:
	.ascii	"Droid Sans\000"
	.space	21
	.word	0
	.ascii	"Regular/Italic Class\000"
	.space	11
	.word	0
	.ascii	"Droid Sans Mono\000"
	.space	16
	.word	0
	.ascii	"\000"
	.space	31
	.word	0
	.section	.rodata.ROUND_NONPIXEL_Y_MOVES_Rules_Exceptions,"a",%progbits
	.align	2
	.type	ROUND_NONPIXEL_Y_MOVES_Rules_Exceptions, %object
	.size	ROUND_NONPIXEL_Y_MOVES_Rules_Exceptions, 72
ROUND_NONPIXEL_Y_MOVES_Rules_Exceptions:
	.ascii	"-\000"
	.space	30
	.word	0
	.ascii	"\000"
	.space	31
	.word	0
	.section	.rodata.ALLOW_X_DMOVE_Rules,"a",%progbits
	.align	2
	.type	ALLOW_X_DMOVE_Rules, %object
	.size	ALLOW_X_DMOVE_Rules, 72
ALLOW_X_DMOVE_Rules:
	.ascii	"Verdana\000"
	.space	24
	.word	0
	.ascii	"Regular\000"
	.space	24
	.word	52
	.section	.rodata.RASTERIZER_35_Rules,"a",%progbits
	.align	2
	.type	RASTERIZER_35_Rules, %object
	.size	RASTERIZER_35_Rules, 576
RASTERIZER_35_Rules:
	.ascii	"Times New Roman\000"
	.space	16
	.word	0
	.ascii	"Regular\000"
	.space	24
	.word	105
	.ascii	"Times New Roman\000"
	.space	16
	.word	0
	.ascii	"Regular\000"
	.space	24
	.word	106
	.ascii	"Times New Roman\000"
	.space	16
	.word	0
	.ascii	"Regular\000"
	.space	24
	.word	109
	.ascii	"Times New Roman\000"
	.space	16
	.word	0
	.ascii	"Regular\000"
	.space	24
	.word	114
	.ascii	"Times New Roman\000"
	.space	16
	.word	0
	.ascii	"Regular\000"
	.space	24
	.word	97
	.ascii	"Times New Roman\000"
	.space	16
	.word	0
	.ascii	"Regular\000"
	.space	24
	.word	110
	.ascii	"Times New Roman\000"
	.space	16
	.word	0
	.ascii	"Regular\000"
	.space	24
	.word	112
	.ascii	"Times\000"
	.space	26
	.word	0
	.ascii	"\000"
	.space	31
	.word	0
	.section	.rodata.NORMAL_ROUND_Rules,"a",%progbits
	.align	2
	.type	NORMAL_ROUND_Rules, %object
	.size	NORMAL_ROUND_Rules, 72
NORMAL_ROUND_Rules:
	.ascii	"Courier New\000"
	.space	20
	.word	0
	.ascii	"\000"
	.space	31
	.word	0
	.section	.rodata.SKIP_IUP_Rules,"a",%progbits
	.align	2
	.type	SKIP_IUP_Rules, %object
	.size	SKIP_IUP_Rules, 72
SKIP_IUP_Rules:
	.ascii	"Arial\000"
	.space	26
	.word	13
	.ascii	"Regular\000"
	.space	24
	.word	97
	.section	.rodata.MIAP_HACK_Rules,"a",%progbits
	.align	2
	.type	MIAP_HACK_Rules, %object
	.size	MIAP_HACK_Rules, 72
MIAP_HACK_Rules:
	.ascii	"Geneva\000"
	.space	25
	.word	12
	.ascii	"\000"
	.space	31
	.word	0
	.section	.rodata.ALWAYS_SKIP_DELTAP_Rules,"a",%progbits
	.align	2
	.type	ALWAYS_SKIP_DELTAP_Rules, %object
	.size	ALWAYS_SKIP_DELTAP_Rules, 1656
ALWAYS_SKIP_DELTAP_Rules:
	.ascii	"Georgia\000"
	.space	24
	.word	0
	.ascii	"Regular\000"
	.space	24
	.word	107
	.ascii	"Trebuchet MS\000"
	.space	19
	.word	14
	.ascii	"Regular\000"
	.space	24
	.word	101
	.ascii	"Trebuchet MS\000"
	.space	19
	.word	13
	.ascii	"Regular\000"
	.space	24
	.word	101
	.ascii	"Trebuchet MS\000"
	.space	19
	.word	15
	.ascii	"Regular\000"
	.space	24
	.word	101
	.ascii	"Trebuchet MS\000"
	.space	19
	.word	0
	.ascii	"Italic\000"
	.space	25
	.word	118
	.ascii	"Trebuchet MS\000"
	.space	19
	.word	0
	.ascii	"Italic\000"
	.space	25
	.word	119
	.ascii	"Trebuchet MS\000"
	.space	19
	.word	0
	.ascii	"Regular\000"
	.space	24
	.word	89
	.ascii	"Arial\000"
	.space	26
	.word	11
	.ascii	"Regular\000"
	.space	24
	.word	115
	.ascii	"Verdana\000"
	.space	24
	.word	10
	.ascii	"Regular\000"
	.space	24
	.word	0
	.ascii	"Verdana\000"
	.space	24
	.word	9
	.ascii	"Regular\000"
	.space	24
	.word	0
	.ascii	"Legacy Sans Fonts\000"
	.space	14
	.word	0
	.ascii	"\000"
	.space	31
	.word	1080
	.ascii	"Legacy Sans Fonts\000"
	.space	14
	.word	0
	.ascii	"\000"
	.space	31
	.word	1081
	.ascii	"Arial\000"
	.space	26
	.word	10
	.ascii	"Regular\000"
	.space	24
	.word	54
	.ascii	"Arial\000"
	.space	26
	.word	0
	.ascii	"Bold/BoldItalic Class\000"
	.space	10
	.word	97
	.ascii	"Arial\000"
	.space	26
	.word	24
	.ascii	"Bold\000"
	.space	27
	.word	97
	.ascii	"Arial\000"
	.space	26
	.word	25
	.ascii	"Bold\000"
	.space	27
	.word	97
	.ascii	"Arial\000"
	.space	26
	.word	24
	.ascii	"Bold\000"
	.space	27
	.word	115
	.ascii	"Arial\000"
	.space	26
	.word	25
	.ascii	"Bold\000"
	.space	27
	.word	115
	.ascii	"Arial\000"
	.space	26
	.word	34
	.ascii	"Bold\000"
	.space	27
	.word	115
	.ascii	"Arial\000"
	.space	26
	.word	35
	.ascii	"Bold\000"
	.space	27
	.word	115
	.ascii	"Arial\000"
	.space	26
	.word	36
	.ascii	"Bold\000"
	.space	27
	.word	115
	.ascii	"Arial\000"
	.space	26
	.word	25
	.ascii	"Regular\000"
	.space	24
	.word	115
	.ascii	"Arial\000"
	.space	26
	.word	26
	.ascii	"Regular\000"
	.space	24
	.word	115
	.section	.rodata.ALWAYS_DO_DELTAP_Rules,"a",%progbits
	.align	2
	.type	ALWAYS_DO_DELTAP_Rules, %object
	.size	ALWAYS_DO_DELTAP_Rules, 72
ALWAYS_DO_DELTAP_Rules:
	.ascii	"-\000"
	.space	30
	.word	0
	.ascii	"\000"
	.space	31
	.word	0
	.section	.rodata.NO_ALIGNRP_AFTER_IUP_Rules,"a",%progbits
	.align	2
	.type	NO_ALIGNRP_AFTER_IUP_Rules, %object
	.size	NO_ALIGNRP_AFTER_IUP_Rules, 72
NO_ALIGNRP_AFTER_IUP_Rules:
	.ascii	"-\000"
	.space	30
	.word	0
	.ascii	"\000"
	.space	31
	.word	0
	.section	.rodata.NO_DELTAP_AFTER_IUP_Rules,"a",%progbits
	.align	2
	.type	NO_DELTAP_AFTER_IUP_Rules, %object
	.size	NO_DELTAP_AFTER_IUP_Rules, 72
NO_DELTAP_AFTER_IUP_Rules:
	.ascii	"-\000"
	.space	30
	.word	0
	.ascii	"\000"
	.space	31
	.word	0
	.section	.rodata.NO_CALL_AFTER_IUP_Rules,"a",%progbits
	.align	2
	.type	NO_CALL_AFTER_IUP_Rules, %object
	.size	NO_CALL_AFTER_IUP_Rules, 72
NO_CALL_AFTER_IUP_Rules:
	.ascii	"-\000"
	.space	30
	.word	0
	.ascii	"\000"
	.space	31
	.word	0
	.section	.rodata.DEEMBOLDEN_Rules,"a",%progbits
	.align	2
	.type	DEEMBOLDEN_Rules, %object
	.size	DEEMBOLDEN_Rules, 648
DEEMBOLDEN_Rules:
	.ascii	"Courier New\000"
	.space	20
	.word	0
	.ascii	"Bold\000"
	.space	27
	.word	65
	.ascii	"Courier New\000"
	.space	20
	.word	0
	.ascii	"Bold\000"
	.space	27
	.word	87
	.ascii	"Courier New\000"
	.space	20
	.word	0
	.ascii	"Bold\000"
	.space	27
	.word	119
	.ascii	"Courier New\000"
	.space	20
	.word	0
	.ascii	"Bold\000"
	.space	27
	.word	77
	.ascii	"Courier New\000"
	.space	20
	.word	0
	.ascii	"Bold\000"
	.space	27
	.word	88
	.ascii	"Courier New\000"
	.space	20
	.word	0
	.ascii	"Bold\000"
	.space	27
	.word	75
	.ascii	"Courier New\000"
	.space	20
	.word	0
	.ascii	"Bold\000"
	.space	27
	.word	120
	.ascii	"Courier New\000"
	.space	20
	.word	0
	.ascii	"Bold\000"
	.space	27
	.word	122
	.ascii	"Courier New\000"
	.space	20
	.word	0
	.ascii	"Bold\000"
	.space	27
	.word	118
	.section	.rodata.EMBOLDEN_Rules,"a",%progbits
	.align	2
	.type	EMBOLDEN_Rules, %object
	.size	EMBOLDEN_Rules, 144
EMBOLDEN_Rules:
	.ascii	"Courier New\000"
	.space	20
	.word	0
	.ascii	"Regular\000"
	.space	24
	.word	0
	.ascii	"Courier New\000"
	.space	20
	.word	0
	.ascii	"Italic\000"
	.space	25
	.word	0
	.section	.rodata.TIMES_NEW_ROMAN_HACK_Rules,"a",%progbits
	.align	2
	.type	TIMES_NEW_ROMAN_HACK_Rules, %object
	.size	TIMES_NEW_ROMAN_HACK_Rules, 864
TIMES_NEW_ROMAN_HACK_Rules:
	.ascii	"Times New Roman\000"
	.space	16
	.word	16
	.ascii	"Italic\000"
	.space	25
	.word	50
	.ascii	"Times New Roman\000"
	.space	16
	.word	16
	.ascii	"Italic\000"
	.space	25
	.word	53
	.ascii	"Times New Roman\000"
	.space	16
	.word	16
	.ascii	"Italic\000"
	.space	25
	.word	55
	.ascii	"Times New Roman\000"
	.space	16
	.word	16
	.ascii	"Regular\000"
	.space	24
	.word	50
	.ascii	"Times New Roman\000"
	.space	16
	.word	16
	.ascii	"Regular\000"
	.space	24
	.word	53
	.ascii	"Times New Roman\000"
	.space	16
	.word	16
	.ascii	"Regular\000"
	.space	24
	.word	55
	.ascii	"Times New Roman\000"
	.space	16
	.word	17
	.ascii	"Italic\000"
	.space	25
	.word	50
	.ascii	"Times New Roman\000"
	.space	16
	.word	17
	.ascii	"Italic\000"
	.space	25
	.word	53
	.ascii	"Times New Roman\000"
	.space	16
	.word	17
	.ascii	"Italic\000"
	.space	25
	.word	55
	.ascii	"Times New Roman\000"
	.space	16
	.word	17
	.ascii	"Regular\000"
	.space	24
	.word	50
	.ascii	"Times New Roman\000"
	.space	16
	.word	17
	.ascii	"Regular\000"
	.space	24
	.word	53
	.ascii	"Times New Roman\000"
	.space	16
	.word	17
	.ascii	"Regular\000"
	.space	24
	.word	55
	.section	.rodata.COURIER_NEW_2_HACK_Rules,"a",%progbits
	.align	2
	.type	COURIER_NEW_2_HACK_Rules, %object
	.size	COURIER_NEW_2_HACK_Rules, 1080
COURIER_NEW_2_HACK_Rules:
	.ascii	"Courier New\000"
	.space	20
	.word	10
	.ascii	"Regular\000"
	.space	24
	.word	50
	.ascii	"Courier New\000"
	.space	20
	.word	11
	.ascii	"Regular\000"
	.space	24
	.word	50
	.ascii	"Courier New\000"
	.space	20
	.word	12
	.ascii	"Regular\000"
	.space	24
	.word	50
	.ascii	"Courier New\000"
	.space	20
	.word	13
	.ascii	"Regular\000"
	.space	24
	.word	50
	.ascii	"Courier New\000"
	.space	20
	.word	14
	.ascii	"Regular\000"
	.space	24
	.word	50
	.ascii	"Courier New\000"
	.space	20
	.word	15
	.ascii	"Regular\000"
	.space	24
	.word	50
	.ascii	"Courier New\000"
	.space	20
	.word	16
	.ascii	"Regular\000"
	.space	24
	.word	50
	.ascii	"Courier New\000"
	.space	20
	.word	17
	.ascii	"Regular\000"
	.space	24
	.word	50
	.ascii	"Courier New\000"
	.space	20
	.word	18
	.ascii	"Regular\000"
	.space	24
	.word	50
	.ascii	"Courier New\000"
	.space	20
	.word	19
	.ascii	"Regular\000"
	.space	24
	.word	50
	.ascii	"Courier New\000"
	.space	20
	.word	20
	.ascii	"Regular\000"
	.space	24
	.word	50
	.ascii	"Courier New\000"
	.space	20
	.word	21
	.ascii	"Regular\000"
	.space	24
	.word	50
	.ascii	"Courier New\000"
	.space	20
	.word	22
	.ascii	"Regular\000"
	.space	24
	.word	50
	.ascii	"Courier New\000"
	.space	20
	.word	23
	.ascii	"Regular\000"
	.space	24
	.word	50
	.ascii	"Courier New\000"
	.space	20
	.word	24
	.ascii	"Regular\000"
	.space	24
	.word	50
	.section	.rodata.COMPATIBLE_WIDTHS_Rules,"a",%progbits
	.align	2
	.type	COMPATIBLE_WIDTHS_Rules, %object
	.size	COMPATIBLE_WIDTHS_Rules, 2736
COMPATIBLE_WIDTHS_Rules:
	.ascii	"Arial Unicode MS\000"
	.space	15
	.word	12
	.ascii	"Regular Class\000"
	.space	18
	.word	109
	.ascii	"Arial Unicode MS\000"
	.space	15
	.word	14
	.ascii	"Regular Class\000"
	.space	18
	.word	109
	.ascii	"Arial\000"
	.space	26
	.word	10
	.ascii	"Regular Class\000"
	.space	18
	.word	1096
	.ascii	"Arial\000"
	.space	26
	.word	11
	.ascii	"Regular Class\000"
	.space	18
	.word	109
	.ascii	"Arial\000"
	.space	26
	.word	12
	.ascii	"Regular Class\000"
	.space	18
	.word	109
	.ascii	"Arial\000"
	.space	26
	.word	12
	.ascii	"Regular Class\000"
	.space	18
	.word	1096
	.ascii	"Arial\000"
	.space	26
	.word	13
	.ascii	"Regular Class\000"
	.space	18
	.word	1096
	.ascii	"Arial\000"
	.space	26
	.word	14
	.ascii	"Regular Class\000"
	.space	18
	.word	109
	.ascii	"Arial\000"
	.space	26
	.word	14
	.ascii	"Regular Class\000"
	.space	18
	.word	1096
	.ascii	"Arial\000"
	.space	26
	.word	15
	.ascii	"Regular Class\000"
	.space	18
	.word	1096
	.ascii	"Arial\000"
	.space	26
	.word	17
	.ascii	"Regular Class\000"
	.space	18
	.word	109
	.ascii	"DejaVu Sans\000"
	.space	20
	.word	15
	.ascii	"Regular Class\000"
	.space	18
	.word	0
	.ascii	"Microsoft Sans Serif\000"
	.space	11
	.word	11
	.ascii	"Regular Class\000"
	.space	18
	.word	0
	.ascii	"Microsoft Sans Serif\000"
	.space	11
	.word	12
	.ascii	"Regular Class\000"
	.space	18
	.word	0
	.ascii	"Segoe UI\000"
	.space	23
	.word	11
	.ascii	"Regular Class\000"
	.space	18
	.word	0
	.ascii	"Monaco\000"
	.space	25
	.word	0
	.ascii	"Regular Class\000"
	.space	18
	.word	0
	.ascii	"Segoe UI\000"
	.space	23
	.word	12
	.ascii	"Regular Class\000"
	.space	18
	.word	109
	.ascii	"Segoe UI\000"
	.space	23
	.word	14
	.ascii	"Regular Class\000"
	.space	18
	.word	109
	.ascii	"Tahoma\000"
	.space	25
	.word	11
	.ascii	"Regular Class\000"
	.space	18
	.word	0
	.ascii	"Times New Roman\000"
	.space	16
	.word	16
	.ascii	"Regular Class\000"
	.space	18
	.word	99
	.ascii	"Times New Roman\000"
	.space	16
	.word	16
	.ascii	"Regular Class\000"
	.space	18
	.word	109
	.ascii	"Times New Roman\000"
	.space	16
	.word	16
	.ascii	"Regular Class\000"
	.space	18
	.word	111
	.ascii	"Times New Roman\000"
	.space	16
	.word	16
	.ascii	"Regular Class\000"
	.space	18
	.word	119
	.ascii	"Trebuchet MS\000"
	.space	19
	.word	11
	.ascii	"Regular Class\000"
	.space	18
	.word	0
	.ascii	"Trebuchet MS\000"
	.space	19
	.word	12
	.ascii	"Regular Class\000"
	.space	18
	.word	0
	.ascii	"Trebuchet MS\000"
	.space	19
	.word	14
	.ascii	"Regular Class\000"
	.space	18
	.word	0
	.ascii	"Trebuchet MS\000"
	.space	19
	.word	15
	.ascii	"Regular Class\000"
	.space	18
	.word	0
	.ascii	"Ubuntu\000"
	.space	25
	.word	12
	.ascii	"Regular Class\000"
	.space	18
	.word	109
	.ascii	"Verdana\000"
	.space	24
	.word	10
	.ascii	"Regular Class\000"
	.space	18
	.word	1096
	.ascii	"Verdana\000"
	.space	24
	.word	11
	.ascii	"Regular Class\000"
	.space	18
	.word	1096
	.ascii	"Verdana and Clones\000"
	.space	13
	.word	12
	.ascii	"Regular Class\000"
	.space	18
	.word	105
	.ascii	"Verdana and Clones\000"
	.space	13
	.word	12
	.ascii	"Regular Class\000"
	.space	18
	.word	106
	.ascii	"Verdana and Clones\000"
	.space	13
	.word	12
	.ascii	"Regular Class\000"
	.space	18
	.word	108
	.ascii	"Verdana and Clones\000"
	.space	13
	.word	12
	.ascii	"Regular Class\000"
	.space	18
	.word	109
	.ascii	"Verdana and Clones\000"
	.space	13
	.word	13
	.ascii	"Regular Class\000"
	.space	18
	.word	105
	.ascii	"Verdana and Clones\000"
	.space	13
	.word	13
	.ascii	"Regular Class\000"
	.space	18
	.word	106
	.ascii	"Verdana and Clones\000"
	.space	13
	.word	13
	.ascii	"Regular Class\000"
	.space	18
	.word	108
	.ascii	"Verdana and Clones\000"
	.space	13
	.word	14
	.ascii	"Regular Class\000"
	.space	18
	.word	109
	.section	.rodata.X_SCALING_Rules,"a",%progbits
	.align	2
	.type	X_SCALING_Rules, %object
	.size	X_SCALING_Rules, 3800
X_SCALING_Rules:
	.ascii	"DejaVu Sans\000"
	.space	20
	.word	12
	.ascii	"Regular Class\000"
	.space	18
	.word	109
	.word	950
	.ascii	"Verdana and Clones\000"
	.space	13
	.word	12
	.ascii	"Regular Class\000"
	.space	18
	.word	97
	.word	1100
	.ascii	"Verdana and Clones\000"
	.space	13
	.word	13
	.ascii	"Regular Class\000"
	.space	18
	.word	97
	.word	1050
	.ascii	"Arial\000"
	.space	26
	.word	11
	.ascii	"Regular Class\000"
	.space	18
	.word	109
	.word	975
	.ascii	"Arial\000"
	.space	26
	.word	12
	.ascii	"Regular Class\000"
	.space	18
	.word	109
	.word	1050
	.ascii	"Arial\000"
	.space	26
	.word	13
	.ascii	"Regular Class\000"
	.space	18
	.word	1083
	.word	950
	.ascii	"Arial\000"
	.space	26
	.word	13
	.ascii	"Regular Class\000"
	.space	18
	.word	111
	.word	950
	.ascii	"Arial\000"
	.space	26
	.word	13
	.ascii	"Regular Class\000"
	.space	18
	.word	101
	.word	950
	.ascii	"Arial\000"
	.space	26
	.word	14
	.ascii	"Regular Class\000"
	.space	18
	.word	109
	.word	950
	.ascii	"Arial\000"
	.space	26
	.word	15
	.ascii	"Regular Class\000"
	.space	18
	.word	1083
	.word	925
	.ascii	"Bitstream Vera Sans\000"
	.space	12
	.word	10
	.ascii	"Regular/Italic Class\000"
	.space	11
	.word	0
	.word	1100
	.ascii	"Bitstream Vera Sans\000"
	.space	12
	.word	12
	.ascii	"Regular/Italic Class\000"
	.space	11
	.word	0
	.word	1050
	.ascii	"Bitstream Vera Sans\000"
	.space	12
	.word	16
	.ascii	"Regular Class\000"
	.space	18
	.word	0
	.word	1050
	.ascii	"Bitstream Vera Sans\000"
	.space	12
	.word	9
	.ascii	"Regular/Italic Class\000"
	.space	11
	.word	0
	.word	1050
	.ascii	"DejaVu Sans\000"
	.space	20
	.word	12
	.ascii	"Regular Class\000"
	.space	18
	.word	108
	.word	975
	.ascii	"DejaVu Sans\000"
	.space	20
	.word	12
	.ascii	"Regular Class\000"
	.space	18
	.word	105
	.word	975
	.ascii	"DejaVu Sans\000"
	.space	20
	.word	12
	.ascii	"Regular Class\000"
	.space	18
	.word	106
	.word	975
	.ascii	"DejaVu Sans\000"
	.space	20
	.word	13
	.ascii	"Regular Class\000"
	.space	18
	.word	108
	.word	950
	.ascii	"DejaVu Sans\000"
	.space	20
	.word	13
	.ascii	"Regular Class\000"
	.space	18
	.word	105
	.word	950
	.ascii	"DejaVu Sans\000"
	.space	20
	.word	13
	.ascii	"Regular Class\000"
	.space	18
	.word	106
	.word	950
	.ascii	"DejaVu Sans\000"
	.space	20
	.word	10
	.ascii	"Regular/Italic Class\000"
	.space	11
	.word	0
	.word	1100
	.ascii	"DejaVu Sans\000"
	.space	20
	.word	12
	.ascii	"Regular/Italic Class\000"
	.space	11
	.word	0
	.word	1050
	.ascii	"Georgia\000"
	.space	24
	.word	10
	.ascii	"\000"
	.space	31
	.word	0
	.word	1050
	.ascii	"Georgia\000"
	.space	24
	.word	11
	.ascii	"\000"
	.space	31
	.word	0
	.word	1100
	.ascii	"Georgia\000"
	.space	24
	.word	12
	.ascii	"\000"
	.space	31
	.word	0
	.word	1025
	.ascii	"Georgia\000"
	.space	24
	.word	13
	.ascii	"\000"
	.space	31
	.word	0
	.word	1050
	.ascii	"Georgia\000"
	.space	24
	.word	16
	.ascii	"\000"
	.space	31
	.word	0
	.word	1050
	.ascii	"Georgia\000"
	.space	24
	.word	17
	.ascii	"\000"
	.space	31
	.word	0
	.word	1030
	.ascii	"Liberation Sans\000"
	.space	16
	.word	12
	.ascii	"Regular Class\000"
	.space	18
	.word	109
	.word	1100
	.ascii	"Lucida Grande\000"
	.space	18
	.word	11
	.ascii	"Regular Class\000"
	.space	18
	.word	109
	.word	1100
	.ascii	"Microsoft Sans Serif\000"
	.space	11
	.word	11
	.ascii	"Regular Class\000"
	.space	18
	.word	109
	.word	950
	.ascii	"Microsoft Sans Serif\000"
	.space	11
	.word	12
	.ascii	"Regular Class\000"
	.space	18
	.word	109
	.word	1050
	.ascii	"Segoe UI\000"
	.space	23
	.word	12
	.ascii	"Regular Class\000"
	.space	18
	.word	72
	.word	1050
	.ascii	"Segoe UI\000"
	.space	23
	.word	12
	.ascii	"Regular Class\000"
	.space	18
	.word	109
	.word	1050
	.ascii	"Segoe UI\000"
	.space	23
	.word	14
	.ascii	"Regular Class\000"
	.space	18
	.word	109
	.word	1050
	.ascii	"Tahoma\000"
	.space	25
	.word	11
	.ascii	"Regular Class\000"
	.space	18
	.word	105
	.word	975
	.ascii	"Tahoma\000"
	.space	25
	.word	11
	.ascii	"Regular Class\000"
	.space	18
	.word	108
	.word	975
	.ascii	"Tahoma\000"
	.space	25
	.word	11
	.ascii	"Regular Class\000"
	.space	18
	.word	106
	.word	900
	.ascii	"Tahoma\000"
	.space	25
	.word	11
	.ascii	"Regular Class\000"
	.space	18
	.word	109
	.word	918
	.ascii	"Verdana\000"
	.space	24
	.word	10
	.ascii	"Regular/Italic Class\000"
	.space	11
	.word	0
	.word	1100
	.ascii	"Verdana\000"
	.space	24
	.word	12
	.ascii	"Regular Class\000"
	.space	18
	.word	109
	.word	975
	.ascii	"Verdana\000"
	.space	24
	.word	12
	.ascii	"Regular/Italic Class\000"
	.space	11
	.word	0
	.word	1050
	.ascii	"Verdana\000"
	.space	24
	.word	13
	.ascii	"Regular/Italic Class\000"
	.space	11
	.word	105
	.word	950
	.ascii	"Verdana\000"
	.space	24
	.word	13
	.ascii	"Regular/Italic Class\000"
	.space	11
	.word	106
	.word	950
	.ascii	"Verdana\000"
	.space	24
	.word	13
	.ascii	"Regular/Italic Class\000"
	.space	11
	.word	108
	.word	950
	.ascii	"Verdana\000"
	.space	24
	.word	16
	.ascii	"Regular Class\000"
	.space	18
	.word	0
	.word	1050
	.ascii	"Verdana\000"
	.space	24
	.word	9
	.ascii	"Regular/Italic Class\000"
	.space	11
	.word	0
	.word	1050
	.ascii	"Times New Roman\000"
	.space	16
	.word	16
	.ascii	"Regular Class\000"
	.space	18
	.word	109
	.word	918
	.ascii	"Trebuchet MS\000"
	.space	19
	.word	11
	.ascii	"Regular Class\000"
	.space	18
	.word	109
	.word	800
	.ascii	"Trebuchet MS\000"
	.space	19
	.word	12
	.ascii	"Regular Class\000"
	.space	18
	.word	109
	.word	800
	.section	.text.is_member_of_family_class,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	is_member_of_family_class, %function
is_member_of_family_class:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L1590
	movs	r3, #1
	b	.L1591
.L1590:
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L1592
	movs	r3, #1
	b	.L1591
.L1592:
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L1593
.L1599:
	ldr	r3, [r7, #12]
	mov	r2, #3232
	mul	r2, r2, r3
	ldr	r3, .L1600
.LPIC65:
	add	r3, pc
	add	r3, r3, r2
	mov	r0, r3
	ldr	r1, [r7]
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L1594
	movs	r3, #0
	str	r3, [r7, #8]
	b	.L1595
.L1598:
	ldr	r3, [r7, #12]
	movs	r2, #101
	mul	r2, r2, r3
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	adds	r3, r3, #1
	lsls	r2, r3, #5
	ldr	r3, .L1600+4
.LPIC66:
	add	r3, pc
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L1596
	b	.L1597
.L1596:
	ldr	r3, [r7, #12]
	movs	r2, #101
	mul	r2, r2, r3
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	adds	r3, r3, #1
	lsls	r2, r3, #5
	ldr	r3, .L1600+8
.LPIC67:
	add	r3, pc
	add	r3, r3, r2
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L1597
	movs	r3, #1
	b	.L1591
.L1597:
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L1595:
	ldr	r3, [r7, #8]
	cmp	r3, #99
	bls	.L1598
.L1594:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L1593:
	ldr	r3, [r7, #12]
	cmp	r3, #6
	bls	.L1599
	movs	r3, #0
.L1591:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L1601:
	.align	2
.L1600:
	.word	FAMILY_CLASS_Rules-(.LPIC65+4)
	.word	FAMILY_CLASS_Rules-(.LPIC66+4)
	.word	FAMILY_CLASS_Rules-(.LPIC67+4)
	.size	is_member_of_family_class, .-is_member_of_family_class
	.section	.text.is_member_of_style_class,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	is_member_of_style_class, %function
is_member_of_style_class:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L1603
	movs	r3, #1
	b	.L1604
.L1603:
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L1605
	movs	r3, #1
	b	.L1604
.L1605:
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L1606
.L1612:
	ldr	r3, [r7, #12]
	mov	r2, #3232
	mul	r2, r2, r3
	ldr	r3, .L1613
.LPIC68:
	add	r3, pc
	add	r3, r3, r2
	mov	r0, r3
	ldr	r1, [r7]
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L1607
	movs	r3, #0
	str	r3, [r7, #8]
	b	.L1608
.L1611:
	ldr	r3, [r7, #12]
	movs	r2, #101
	mul	r2, r2, r3
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	adds	r3, r3, #1
	lsls	r2, r3, #5
	ldr	r3, .L1613+4
.LPIC69:
	add	r3, pc
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L1609
	b	.L1610
.L1609:
	ldr	r3, [r7, #12]
	movs	r2, #101
	mul	r2, r2, r3
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	adds	r3, r3, #1
	lsls	r2, r3, #5
	ldr	r3, .L1613+8
.LPIC70:
	add	r3, pc
	add	r3, r3, r2
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L1610
	movs	r3, #1
	b	.L1604
.L1610:
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L1608:
	ldr	r3, [r7, #8]
	cmp	r3, #99
	bls	.L1611
.L1607:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L1606:
	ldr	r3, [r7, #12]
	cmp	r3, #4
	bls	.L1612
	movs	r3, #0
.L1604:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L1614:
	.align	2
.L1613:
	.word	STYLE_CLASS_Rules-(.LPIC68+4)
	.word	STYLE_CLASS_Rules-(.LPIC69+4)
	.word	STYLE_CLASS_Rules-(.LPIC70+4)
	.size	is_member_of_style_class, .-is_member_of_style_class
	.section	.text.sph_test_tweak,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	sph_test_tweak, %function
sph_test_tweak:
	@ args = 12, pretend = 0, frame = 24
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
	b	.L1616
.L1621:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L1617
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	is_member_of_family_class(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1617
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldr	r3, [r3, #32]
	cmp	r3, #0
	beq	.L1618
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bne	.L1617
.L1618:
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L1617
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	adds	r3, r3, #36
	ldr	r0, [r7]
	mov	r1, r3
	bl	is_member_of_style_class(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1617
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldr	r3, [r3, #68]
	cmp	r3, #0
	beq	.L1619
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldr	r3, [r3, #68]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	FT_Get_Char_Index(PLT)
	mov	r2, r0
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bne	.L1617
.L1619:
	movs	r3, #1
	b	.L1620
.L1617:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L1616:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bcc	.L1621
	movs	r3, #0
.L1620:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	sph_test_tweak, .-sph_test_tweak
	.section	.text.scale_test_tweak,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	scale_test_tweak, %function
scale_test_tweak:
	@ args = 12, pretend = 0, frame = 24
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
	b	.L1623
.L1628:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L1624
	ldr	r3, [r7, #20]
	movs	r2, #76
	mul	r3, r2, r3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	is_member_of_family_class(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1624
	ldr	r3, [r7, #20]
	movs	r2, #76
	mul	r3, r2, r3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldr	r3, [r3, #32]
	cmp	r3, #0
	beq	.L1625
	ldr	r3, [r7, #20]
	movs	r2, #76
	mul	r3, r2, r3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bne	.L1624
.L1625:
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L1624
	ldr	r3, [r7, #20]
	movs	r2, #76
	mul	r3, r2, r3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	adds	r3, r3, #36
	ldr	r0, [r7]
	mov	r1, r3
	bl	is_member_of_style_class(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1624
	ldr	r3, [r7, #20]
	movs	r2, #76
	mul	r3, r2, r3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldr	r3, [r3, #68]
	cmp	r3, #0
	beq	.L1626
	ldr	r3, [r7, #20]
	movs	r2, #76
	mul	r3, r2, r3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldr	r3, [r3, #68]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	FT_Get_Char_Index(PLT)
	mov	r2, r0
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bne	.L1624
.L1626:
	ldr	r3, [r7, #20]
	movs	r2, #76
	mul	r3, r2, r3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldr	r3, [r3, #72]
	b	.L1627
.L1624:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L1623:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bcc	.L1628
	mov	r3, #1000
.L1627:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	scale_test_tweak, .-scale_test_tweak
	.section	.text.sph_test_tweak_x_scaling,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	sph_test_tweak_x_scaling, %function
sph_test_tweak_x_scaling:
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #16
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #24]
	str	r3, [sp]
	ldr	r3, .L1631
.LPIC71:
	add	r3, pc
	str	r3, [sp, #4]
	movs	r3, #50
	str	r3, [sp, #8]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	scale_test_tweak(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L1632:
	.align	2
.L1631:
	.word	X_SCALING_Rules-(.LPIC71+4)
	.size	sph_test_tweak_x_scaling, .-sph_test_tweak_x_scaling
	.section	.text.sph_set_tweaks,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	sph_set_tweaks, %function
sph_set_tweaks:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #16
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #20]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldrh	r3, [r3, #44]
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #24]
	str	r3, [r7, #8]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	bne	.L1634
	b	.L1633
.L1634:
	ldr	r3, [r7]
	str	r3, [sp]
	ldr	r3, .L1666
.LPIC72:
	add	r3, pc
	str	r3, [sp, #4]
	movs	r3, #2
	str	r3, [sp, #8]
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #16]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	bl	sph_test_tweak(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1636
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #160]
	ldr	r2, [r2, #632]
	orr	r2, r2, #4096
	str	r2, [r3, #632]
.L1636:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	ldr	r3, [r3, #632]
	and	r3, r3, #4096
	cmp	r3, #0
	beq	.L1637
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	movs	r2, #0
	strb	r2, [r3, #617]
	b	.L1633
.L1637:
	ldr	r3, [r7]
	str	r3, [sp]
	ldr	r3, .L1666+4
.LPIC73:
	add	r3, pc
	str	r3, [sp, #4]
	movs	r3, #1
	str	r3, [sp, #8]
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #16]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	bl	sph_test_tweak(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1638
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #160]
	ldr	r2, [r2, #632]
	orr	r2, r2, #1
	str	r2, [r3, #632]
.L1638:
	ldr	r3, [r7]
	str	r3, [sp]
	ldr	r3, .L1666+8
.LPIC74:
	add	r3, pc
	str	r3, [sp, #4]
	movs	r3, #1
	str	r3, [sp, #8]
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #16]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	bl	sph_test_tweak(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1639
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #160]
	ldr	r2, [r2, #632]
	orr	r2, r2, #2
	str	r2, [r3, #632]
.L1639:
	ldr	r3, [r7]
	str	r3, [sp]
	ldr	r3, .L1666+12
.LPIC75:
	add	r3, pc
	str	r3, [sp, #4]
	movs	r3, #23
	str	r3, [sp, #8]
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #16]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	bl	sph_test_tweak(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1640
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #160]
	ldr	r2, [r2, #632]
	orr	r2, r2, #4
	str	r2, [r3, #632]
.L1640:
	ldr	r3, [r7]
	str	r3, [sp]
	ldr	r3, .L1666+16
.LPIC76:
	add	r3, pc
	str	r3, [sp, #4]
	movs	r3, #9
	str	r3, [sp, #8]
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #16]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	bl	sph_test_tweak(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1641
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #160]
	ldr	r2, [r2, #632]
	orr	r2, r2, #16
	str	r2, [r3, #632]
.L1641:
	ldr	r3, [r7]
	str	r3, [sp]
	ldr	r3, .L1666+20
.LPIC77:
	add	r3, pc
	str	r3, [sp, #4]
	movs	r3, #1
	str	r3, [sp, #8]
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #16]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	bl	sph_test_tweak(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1642
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #160]
	ldr	r2, [r2, #632]
	orr	r2, r2, #32
	str	r2, [r3, #632]
.L1642:
	ldr	r3, [r7]
	str	r3, [sp]
	ldr	r3, .L1666+24
.LPIC78:
	add	r3, pc
	str	r3, [sp, #4]
	movs	r3, #2
	str	r3, [sp, #8]
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #16]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	bl	sph_test_tweak(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1643
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #160]
	ldr	r2, [r2, #632]
	orr	r2, r2, #64
	str	r2, [r3, #632]
.L1643:
	ldr	r3, [r7]
	str	r3, [sp]
	ldr	r3, .L1666+28
.LPIC79:
	add	r3, pc
	str	r3, [sp, #4]
	movs	r3, #1
	str	r3, [sp, #8]
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #16]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	bl	sph_test_tweak(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1644
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #160]
	ldr	r2, [r2, #632]
	orr	r2, r2, #128
	str	r2, [r3, #632]
.L1644:
	ldr	r3, [r7]
	str	r3, [sp]
	ldr	r3, .L1666+32
.LPIC80:
	add	r3, pc
	str	r3, [sp, #4]
	movs	r3, #1
	str	r3, [sp, #8]
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #16]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	bl	sph_test_tweak(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1645
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #160]
	ldr	r2, [r2, #632]
	orr	r2, r2, #256
	str	r2, [r3, #632]
.L1645:
	ldr	r3, [r7]
	str	r3, [sp]
	ldr	r3, .L1666+36
.LPIC81:
	add	r3, pc
	str	r3, [sp, #4]
	movs	r3, #1
	str	r3, [sp, #8]
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #16]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	bl	sph_test_tweak(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1646
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #160]
	ldr	r2, [r2, #632]
	orr	r2, r2, #512
	str	r2, [r3, #632]
.L1646:
	ldr	r3, [r7]
	str	r3, [sp]
	ldr	r3, .L1666+40
.LPIC82:
	add	r3, pc
	str	r3, [sp, #4]
	movs	r3, #1
	str	r3, [sp, #8]
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #16]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	bl	sph_test_tweak(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1647
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #160]
	ldr	r2, [r2, #632]
	orr	r2, r2, #1024
	str	r2, [r3, #632]
.L1647:
	ldr	r3, [r7]
	str	r3, [sp]
	ldr	r3, .L1666+44
.LPIC83:
	add	r3, pc
	str	r3, [sp, #4]
	movs	r3, #1
	str	r3, [sp, #8]
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #16]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	bl	sph_test_tweak(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1648
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #160]
	ldr	r2, [r2, #632]
	orr	r2, r2, #2048
	str	r2, [r3, #632]
.L1648:
	ldr	r3, [r7]
	str	r3, [sp]
	ldr	r3, .L1666+48
.LPIC84:
	add	r3, pc
	str	r3, [sp, #4]
	movs	r3, #8
	str	r3, [sp, #8]
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #16]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	bl	sph_test_tweak(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1649
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #160]
	ldr	r2, [r2, #632]
	orr	r2, r2, #8192
	str	r2, [r3, #632]
.L1649:
	ldr	r3, [r7]
	str	r3, [sp]
	ldr	r3, .L1666+52
.LPIC85:
	add	r3, pc
	str	r3, [sp, #4]
	movs	r3, #1
	str	r3, [sp, #8]
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #16]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	bl	sph_test_tweak(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1650
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #160]
	ldr	r2, [r2, #632]
	orr	r2, r2, #32768
	str	r2, [r3, #632]
.L1650:
	ldr	r3, [r7]
	str	r3, [sp]
	ldr	r3, .L1666+56
.LPIC86:
	add	r3, pc
	str	r3, [sp, #4]
	movs	r3, #1
	str	r3, [sp, #8]
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #16]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	bl	sph_test_tweak(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1651
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #160]
	ldr	r2, [r2, #632]
	orr	r2, r2, #131072
	str	r2, [r3, #632]
.L1651:
	ldr	r3, [r7]
	str	r3, [sp]
	ldr	r3, .L1666+60
.LPIC87:
	add	r3, pc
	str	r3, [sp, #4]
	movs	r3, #1
	str	r3, [sp, #8]
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #16]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	bl	sph_test_tweak(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1652
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #160]
	ldr	r2, [r2, #632]
	bic	r2, r2, #131072
	str	r2, [r3, #632]
.L1652:
	ldr	r3, [r7]
	str	r3, [sp]
	ldr	r3, .L1666+64
.LPIC88:
	add	r3, pc
	str	r3, [sp, #4]
	movs	r3, #2
	str	r3, [sp, #8]
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #16]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	bl	sph_test_tweak(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1653
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #160]
	ldr	r2, [r2, #632]
	orr	r2, r2, #524288
	str	r2, [r3, #632]
.L1653:
	ldr	r3, [r7]
	str	r3, [sp]
	ldr	r3, .L1666+68
.LPIC89:
	add	r3, pc
	str	r3, [sp, #4]
	movs	r3, #4
	str	r3, [sp, #8]
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #16]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	bl	sph_test_tweak(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1654
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #160]
	ldr	r2, [r2, #632]
	orr	r2, r2, #65536
	str	r2, [r3, #632]
.L1654:
	ldr	r3, [r7]
	str	r3, [sp]
	ldr	r3, .L1666+72
.LPIC90:
	add	r3, pc
	str	r3, [sp, #4]
	movs	r3, #1
	str	r3, [sp, #8]
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #16]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	bl	sph_test_tweak(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1655
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #160]
	ldr	r2, [r2, #632]
	bic	r2, r2, #65536
	str	r2, [r3, #632]
.L1655:
	ldr	r3, [r7]
	str	r3, [sp]
	ldr	r3, .L1666+76
.LPIC91:
	add	r3, pc
	str	r3, [sp, #4]
	movs	r3, #2
	str	r3, [sp, #8]
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #16]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	bl	sph_test_tweak(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1656
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #160]
	ldr	r2, [r2, #632]
	orr	r2, r2, #16384
	str	r2, [r3, #632]
.L1656:
	ldr	r3, [r7]
	str	r3, [sp]
	ldr	r3, .L1666+80
.LPIC92:
	add	r3, pc
	str	r3, [sp, #4]
	movs	r3, #1
	str	r3, [sp, #8]
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #16]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	bl	sph_test_tweak(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1657
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #160]
	ldr	r2, [r2, #632]
	bic	r2, r2, #16384
	str	r2, [r3, #632]
.L1657:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	ldr	r3, [r3, #632]
	and	r3, r3, #8192
	cmp	r3, #0
	beq	.L1658
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	ldr	r3, [r3, #624]
	cmp	r3, #35
	beq	.L1659
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	movs	r2, #35
	str	r2, [r3, #624]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	ldr	r3, [r3, #4]
	mov	r2, #-1
	str	r2, [r3, #300]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	uxtb	r3, r3
	bic	r3, r3, #127
	uxtb	r3, r3
	mov	r0, r2
	mov	r1, r3
	bl	tt_size_ready_bytecode(PLT)
	b	.L1661
.L1659:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	movs	r2, #35
	str	r2, [r3, #624]
	b	.L1661
.L1658:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	ldr	r3, [r3, #624]
	cmp	r3, #38
	beq	.L1662
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	movs	r2, #38
	str	r2, [r3, #624]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	ldr	r3, [r3, #4]
	mov	r2, #-1
	str	r2, [r3, #300]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	uxtb	r3, r3
	bic	r3, r3, #127
	uxtb	r3, r3
	mov	r0, r2
	mov	r1, r3
	bl	tt_size_ready_bytecode(PLT)
	b	.L1661
.L1662:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	movs	r2, #38
	str	r2, [r3, #624]
.L1661:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	and	r3, r3, #2
	cmp	r3, #0
	bne	.L1663
	ldr	r3, [r7]
	str	r3, [sp]
	ldr	r3, .L1666+84
.LPIC93:
	add	r3, pc
	str	r3, [sp, #4]
	movs	r3, #12
	str	r3, [sp, #8]
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #16]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	bl	sph_test_tweak(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1664
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #160]
	ldr	r2, [r2, #632]
	orr	r2, r2, #262144
	str	r2, [r3, #632]
.L1664:
	ldr	r3, [r7]
	str	r3, [sp]
	ldr	r3, .L1666+88
.LPIC94:
	add	r3, pc
	str	r3, [sp, #4]
	movs	r3, #15
	str	r3, [sp, #8]
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #16]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	bl	sph_test_tweak(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1663
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #160]
	ldr	r2, [r2, #632]
	orr	r2, r2, #8
	str	r2, [r3, #632]
.L1663:
	ldr	r3, [r7]
	str	r3, [sp]
	ldr	r3, .L1666+92
.LPIC95:
	add	r3, pc
	str	r3, [sp, #4]
	movs	r3, #1
	str	r3, [sp, #8]
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #16]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	bl	sph_test_tweak(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1665
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	ldr	r3, [r3]
	movs	r2, #1
	strb	r2, [r3, #796]
.L1665:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	and	r3, r3, #2
	cmp	r3, #0
	bne	.L1633
	ldr	r3, [r7]
	str	r3, [sp]
	ldr	r3, .L1666+96
.LPIC96:
	add	r3, pc
	str	r3, [sp, #4]
	movs	r3, #38
	str	r3, [sp, #8]
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #16]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	bl	sph_test_tweak(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1633
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #160]
	ldrb	r2, [r2, #618]	@ zero_extendqisi2
	orr	r2, r2, #1
	uxtb	r2, r2
	strb	r2, [r3, #618]
.L1633:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L1667:
	.align	2
.L1666:
	.word	PIXEL_HINTING_Rules-(.LPIC72+4)
	.word	ALLOW_X_DMOVE_Rules-(.LPIC73+4)
	.word	ALWAYS_DO_DELTAP_Rules-(.LPIC74+4)
	.word	ALWAYS_SKIP_DELTAP_Rules-(.LPIC75+4)
	.word	DEEMBOLDEN_Rules-(.LPIC76+4)
	.word	DO_SHPIX_Rules-(.LPIC77+4)
	.word	EMBOLDEN_Rules-(.LPIC78+4)
	.word	MIAP_HACK_Rules-(.LPIC79+4)
	.word	NORMAL_ROUND_Rules-(.LPIC80+4)
	.word	NO_ALIGNRP_AFTER_IUP_Rules-(.LPIC81+4)
	.word	NO_CALL_AFTER_IUP_Rules-(.LPIC82+4)
	.word	NO_DELTAP_AFTER_IUP_Rules-(.LPIC83+4)
	.word	RASTERIZER_35_Rules-(.LPIC84+4)
	.word	SKIP_IUP_Rules-(.LPIC85+4)
	.word	SKIP_OFFPIXEL_Y_MOVES_Rules-(.LPIC86+4)
	.word	SKIP_OFFPIXEL_Y_MOVES_Rules_Exceptions-(.LPIC87+4)
	.word	SKIP_NONPIXEL_Y_MOVES_DELTAP_Rules-(.LPIC88+4)
	.word	SKIP_NONPIXEL_Y_MOVES_Rules-(.LPIC89+4)
	.word	SKIP_NONPIXEL_Y_MOVES_Rules_Exceptions-(.LPIC90+4)
	.word	ROUND_NONPIXEL_Y_MOVES_Rules-(.LPIC91+4)
	.word	ROUND_NONPIXEL_Y_MOVES_Rules_Exceptions-(.LPIC92+4)
	.word	TIMES_NEW_ROMAN_HACK_Rules-(.LPIC93+4)
	.word	COURIER_NEW_2_HACK_Rules-(.LPIC94+4)
	.word	COMPATIBILITY_MODE_Rules-(.LPIC95+4)
	.word	COMPATIBLE_WIDTHS_Rules-(.LPIC96+4)
	.size	sph_set_tweaks, .-sph_set_tweaks
	.section	.text.ft_var_readpackedpoints,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_var_readpackedpoints, %function
ft_var_readpackedpoints:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #56
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r0, [r7, #12]
	bl	FT_Stream_GetChar(PLT)
	mov	r3, r0
	uxtb	r3, r3
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bne	.L1669
	mov	r3, #-1
	b	.L1682
.L1669:
	ldr	r3, [r7, #44]
	and	r3, r3, #128
	cmp	r3, #0
	beq	.L1671
	ldr	r3, [r7, #44]
	and	r3, r3, #127
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	lsls	r3, r3, #8
	str	r3, [r7, #44]
	ldr	r0, [r7, #12]
	bl	FT_Stream_GetChar(PLT)
	mov	r3, r0
	uxtb	r3, r3
	ldr	r2, [r7, #44]
	orrs	r3, r3, r2
	str	r3, [r7, #44]
.L1671:
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bls	.L1672
	movs	r3, #0
	b	.L1682
.L1672:
	ldr	r3, [r7, #44]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #16
	str	r2, [sp, #4]
	ldr	r0, [r7, #24]
	movs	r1, #2
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L1673
	movs	r3, #0
	b	.L1682
.L1673:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #44]
	str	r2, [r3]
	movs	r3, #0
	str	r3, [r7, #40]
	b	.L1674
.L1681:
	ldr	r0, [r7, #12]
	bl	FT_Stream_GetChar(PLT)
	mov	r3, r0
	uxtb	r3, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	and	r3, r3, #128
	cmp	r3, #0
	beq	.L1675
	ldr	r3, [r7, #20]
	and	r3, r3, #127
	str	r3, [r7, #20]
	ldr	r0, [r7, #12]
	bl	FT_Stream_GetUShort(PLT)
	mov	r3, r0
	strh	r3, [r7, #34]	@ movhi
	ldr	r3, [r7, #40]
	adds	r2, r3, #1
	str	r2, [r7, #40]
	lsls	r3, r3, #1
	ldr	r2, [r7, #28]
	add	r3, r3, r2
	ldrh	r2, [r7, #34]	@ movhi
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L1676
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #20]
	add	r2, r2, r3
	ldr	r3, [r7, #44]
	cmp	r2, r3
	bhi	.L1676
	movs	r3, #0
	str	r3, [r7, #36]
	b	.L1677
.L1678:
	ldr	r0, [r7, #12]
	bl	FT_Stream_GetUShort(PLT)
	mov	r3, r0
	mov	r2, r3
	ldrh	r3, [r7, #34]	@ movhi
	add	r3, r3, r2
	strh	r3, [r7, #34]	@ movhi
	ldr	r3, [r7, #40]
	adds	r2, r3, #1
	str	r2, [r7, #40]
	lsls	r3, r3, #1
	ldr	r2, [r7, #28]
	add	r3, r3, r2
	ldrh	r2, [r7, #34]	@ movhi
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L1677:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcc	.L1678
	b	.L1674
.L1675:
	ldr	r0, [r7, #12]
	bl	FT_Stream_GetChar(PLT)
	mov	r3, r0
	uxtb	r3, r3
	strh	r3, [r7, #34]	@ movhi
	ldr	r3, [r7, #40]
	adds	r2, r3, #1
	str	r2, [r7, #40]
	lsls	r3, r3, #1
	ldr	r2, [r7, #28]
	add	r3, r3, r2
	ldrh	r2, [r7, #34]	@ movhi
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L1676
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #20]
	add	r2, r2, r3
	ldr	r3, [r7, #44]
	cmp	r2, r3
	bhi	.L1676
	movs	r3, #0
	str	r3, [r7, #36]
	b	.L1679
.L1680:
	ldr	r0, [r7, #12]
	bl	FT_Stream_GetChar(PLT)
	mov	r3, r0
	uxtb	r3, r3
	mov	r2, r3
	ldrh	r3, [r7, #34]	@ movhi
	add	r3, r3, r2
	strh	r3, [r7, #34]	@ movhi
	ldr	r3, [r7, #40]
	adds	r2, r3, #1
	str	r2, [r7, #40]
	lsls	r3, r3, #1
	ldr	r2, [r7, #28]
	add	r3, r3, r2
	ldrh	r2, [r7, #34]	@ movhi
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L1679:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcc	.L1680
.L1674:
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #44]
	cmp	r2, r3
	bcc	.L1681
.L1676:
	ldr	r3, [r7, #28]
.L1682:
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_var_readpackedpoints, .-ft_var_readpackedpoints
	.section	.text.ft_var_readpackeddeltas,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_var_readpackeddeltas, %function
ft_var_readpackeddeltas:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #60
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #36]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	str	r3, [r7, #20]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bls	.L1684
	movs	r3, #0
	b	.L1698
.L1684:
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #20
	str	r2, [sp, #4]
	ldr	r0, [r7, #32]
	movs	r1, #2
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	str	r0, [r7, #36]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L1686
	movs	r3, #0
	b	.L1698
.L1686:
	movs	r3, #0
	str	r3, [r7, #44]
	b	.L1687
.L1697:
	ldr	r0, [r7, #12]
	bl	FT_Stream_GetChar(PLT)
	mov	r3, r0
	uxtb	r3, r3
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	and	r3, r3, #63
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	and	r3, r3, #128
	cmp	r3, #0
	beq	.L1688
	movs	r3, #0
	str	r3, [r7, #40]
	b	.L1689
.L1691:
	ldr	r3, [r7, #44]
	adds	r2, r3, #1
	str	r2, [r7, #44]
	lsls	r3, r3, #1
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	movs	r2, #0
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	str	r3, [r7, #40]
.L1689:
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bhi	.L1690
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcc	.L1691
	b	.L1690
.L1688:
	ldr	r3, [r7, #28]
	and	r3, r3, #64
	cmp	r3, #0
	beq	.L1692
	movs	r3, #0
	str	r3, [r7, #40]
	b	.L1693
.L1694:
	ldr	r3, [r7, #44]
	adds	r2, r3, #1
	str	r2, [r7, #44]
	lsls	r3, r3, #1
	ldr	r2, [r7, #36]
	adds	r4, r2, r3
	ldr	r0, [r7, #12]
	bl	FT_Stream_GetUShort(PLT)
	mov	r3, r0
	uxth	r3, r3
	strh	r3, [r4]	@ movhi
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	str	r3, [r7, #40]
.L1693:
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bhi	.L1690
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcc	.L1694
	b	.L1690
.L1692:
	movs	r3, #0
	str	r3, [r7, #40]
	b	.L1695
.L1696:
	ldr	r3, [r7, #44]
	adds	r2, r3, #1
	str	r2, [r7, #44]
	lsls	r3, r3, #1
	ldr	r2, [r7, #36]
	adds	r4, r2, r3
	ldr	r0, [r7, #12]
	bl	FT_Stream_GetChar(PLT)
	mov	r3, r0
	uxth	r3, r3
	strh	r3, [r4]	@ movhi
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	str	r3, [r7, #40]
.L1695:
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bhi	.L1690
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcc	.L1696
.L1690:
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bhi	.L1687
	ldr	r0, [r7, #32]
	ldr	r1, [r7, #36]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #36]
	movs	r3, #0
	b	.L1698
.L1687:
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcc	.L1697
	ldr	r3, [r7, #36]
.L1698:
	mov	r0, r3
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	ft_var_readpackeddeltas, .-ft_var_readpackeddeltas
	.section	.text.ft_var_load_avar,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_var_load_avar, %function
ft_var_load_avar:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #60
	add	r7, sp, #8
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #104]
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #28]
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #676]
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	str	r3, [r7, #12]
	ldr	r3, [r7, #24]
	movs	r2, #1
	strb	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #508]
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	movw	r1, #24946
	movt	r1, 24950
	ldr	r2, [r7, #32]
	blx	r4
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L1700
	b	.L1699
.L1700:
	ldr	r3, [r7, #8]
	ldr	r0, [r7, #32]
	mov	r1, r3
	bl	FT_Stream_EnterFrame(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L1702
	b	.L1699
.L1702:
	ldr	r0, [r7, #32]
	bl	FT_Stream_GetULong(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r0, [r7, #32]
	bl	FT_Stream_GetULong(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	cmp	r3, #65536
	beq	.L1703
	b	.L1704
.L1703:
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #8]
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7, #16]
	cmp	r2, r3
	beq	.L1705
	b	.L1704
.L1705:
	movs	r3, #0
	str	r3, [sp]
	add	r3, r7, #12
	str	r3, [sp, #4]
	ldr	r0, [r7, #28]
	movs	r1, #8
	movs	r2, #0
	ldr	r3, [r7, #16]
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #24]
	str	r2, [r3, #20]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L1706
	b	.L1704
.L1706:
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #20]
	str	r3, [r7, #44]
	movs	r3, #0
	str	r3, [r7, #40]
	b	.L1707
.L1714:
	ldr	r0, [r7, #32]
	bl	FT_Stream_GetUShort(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #44]
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #44]
	ldrh	r3, [r3]
	lsls	r2, r3, #2
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bhi	.L1708
	ldr	r3, [r7, #44]
	ldrh	r3, [r3]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #12
	str	r2, [sp, #4]
	ldr	r0, [r7, #28]
	movs	r1, #8
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #44]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L1709
.L1708:
	ldr	r3, [r7, #40]
	subs	r3, r3, #1
	str	r3, [r7, #36]
	b	.L1710
.L1711:
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #36]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #28]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #36]
	lsls	r3, r3, #3
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	str	r3, [r7, #36]
.L1710:
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bge	.L1711
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #20]
	ldr	r0, [r7, #28]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #24]
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [r7, #24]
	movs	r2, #0
	str	r2, [r3, #20]
	b	.L1704
.L1709:
	movs	r3, #0
	str	r3, [r7, #36]
	b	.L1712
.L1713:
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #36]
	lsls	r3, r3, #3
	adds	r4, r2, r3
	ldr	r0, [r7, #32]
	bl	FT_Stream_GetUShort(PLT)
	mov	r3, r0
	uxth	r3, r3
	sxth	r3, r3
	lsls	r3, r3, #2
	str	r3, [r4]
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #36]
	lsls	r3, r3, #3
	adds	r4, r2, r3
	ldr	r0, [r7, #32]
	bl	FT_Stream_GetUShort(PLT)
	mov	r3, r0
	uxth	r3, r3
	sxth	r3, r3
	lsls	r3, r3, #2
	str	r3, [r4, #4]
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L1712:
	ldr	r3, [r7, #44]
	ldrh	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bgt	.L1713
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	str	r3, [r7, #40]
	ldr	r3, [r7, #44]
	adds	r3, r3, #8
	str	r3, [r7, #44]
.L1707:
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	blt	.L1714
.L1704:
	ldr	r0, [r7, #32]
	bl	FT_Stream_ExitFrame(PLT)
.L1699:
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	ft_var_load_avar, .-ft_var_load_avar
	.section	.text.ft_var_load_gvar,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_var_load_gvar, %function
ft_var_load_gvar:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #76
	add	r7, sp, #8
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #104]
	str	r3, [r7, #52]
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #28]
	str	r3, [r7, #48]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #676]
	str	r3, [r7, #44]
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #508]
	add	r3, r7, #28
	ldr	r0, [r7, #4]
	movw	r1, #24946
	movt	r1, 26486
	ldr	r2, [r7, #52]
	blx	r4
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L1717
	b	.L1718
.L1717:
	ldr	r0, [r7, #52]
	bl	FT_Stream_Pos(PLT)
	str	r0, [r7, #40]
	add	r3, r7, #8
	ldr	r0, [r7, #52]
	ldr	r2, .L1741
.LPIC97:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	bl	FT_Stream_ReadFields(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L1719
	b	.L1718
.L1719:
	ldr	r3, [r7, #8]
	cmp	r3, #65536
	beq	.L1720
	movs	r3, #8
	str	r3, [r7, #32]
	b	.L1718
.L1720:
	ldrh	r2, [r7, #12]
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #8]
	ldr	r3, [r3]
	uxth	r3, r3
	cmp	r2, r3
	beq	.L1721
	movs	r3, #8
	str	r3, [r7, #32]
	b	.L1718
.L1721:
	ldrh	r3, [r7, #14]
	ldrh	r2, [r7, #12]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	lsrs	r3, r3, #1
	cmp	r2, r3
	bls	.L1722
	movs	r3, #8
	str	r3, [r7, #32]
	b	.L1718
.L1722:
	ldrh	r3, [r7, #20]
	mov	r2, r3
	ldrh	r3, [r7, #22]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L1723
	movs	r3, #8
	b	.L1724
.L1723:
	movs	r3, #6
.L1724:
	mul	r2, r3, r2
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bls	.L1725
	movs	r3, #8
	str	r3, [r7, #32]
	b	.L1718
.L1725:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #44]
	str	r2, [r3, #40]
	ldrh	r3, [r7, #14]
	mov	r2, r3
	ldr	r3, [r7, #44]
	str	r2, [r3, #24]
	ldrh	r3, [r7, #20]
	mov	r2, r3
	ldr	r3, [r7, #44]
	str	r2, [r3, #32]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #40]
	add	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #32]
	adds	r3, r3, #1
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #32
	str	r2, [sp, #4]
	ldr	r0, [r7, #48]
	movs	r1, #4
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #44]
	str	r2, [r3, #36]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L1726
	b	.L1718
.L1726:
	ldrh	r3, [r7, #22]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L1727
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #32]
	adds	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r0, [r7, #52]
	mov	r1, r3
	bl	FT_Stream_EnterFrame(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L1728
	b	.L1718
.L1728:
	movs	r3, #0
	str	r3, [r7, #60]
	b	.L1729
.L1730:
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #60]
	lsls	r3, r3, #2
	adds	r4, r2, r3
	ldr	r0, [r7, #52]
	bl	FT_Stream_GetULong(PLT)
	mov	r2, r0
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	str	r3, [r4]
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
.L1729:
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #60]
	cmp	r2, r3
	bcs	.L1730
	ldr	r0, [r7, #52]
	bl	FT_Stream_ExitFrame(PLT)
	b	.L1731
.L1727:
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #32]
	adds	r3, r3, #1
	lsls	r3, r3, #1
	ldr	r0, [r7, #52]
	mov	r1, r3
	bl	FT_Stream_EnterFrame(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L1732
	b	.L1718
.L1732:
	movs	r3, #0
	str	r3, [r7, #60]
	b	.L1733
.L1734:
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #60]
	lsls	r3, r3, #2
	adds	r4, r2, r3
	ldr	r0, [r7, #52]
	bl	FT_Stream_GetUShort(PLT)
	mov	r3, r0
	lsls	r3, r3, #1
	mov	r2, r3
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	str	r3, [r4]
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
.L1733:
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #60]
	cmp	r2, r3
	bcs	.L1734
	ldr	r0, [r7, #52]
	bl	FT_Stream_ExitFrame(PLT)
.L1731:
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L1718
	ldrh	r3, [r7, #12]
	ldr	r2, [r7, #44]
	ldr	r2, [r2, #24]
	mul	r3, r2, r3
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #32
	str	r2, [sp, #4]
	ldr	r0, [r7, #48]
	movs	r1, #4
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #44]
	str	r2, [r3, #28]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L1735
	b	.L1718
.L1735:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #40]
	add	r3, r3, r2
	ldr	r0, [r7, #52]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bne	.L1718
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #24]
	ldrh	r2, [r7, #12]
	mul	r3, r2, r3
	lsls	r3, r3, #1
	ldr	r0, [r7, #52]
	mov	r1, r3
	bl	FT_Stream_EnterFrame(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bne	.L1718
	movs	r3, #0
	str	r3, [r7, #60]
	b	.L1736
.L1739:
	movs	r3, #0
	str	r3, [r7, #56]
	b	.L1737
.L1738:
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #28]
	ldrh	r3, [r7, #12]
	ldr	r1, [r7, #60]
	mul	r1, r1, r3
	ldr	r3, [r7, #56]
	add	r3, r3, r1
	lsls	r3, r3, #2
	adds	r4, r2, r3
	ldr	r0, [r7, #52]
	bl	FT_Stream_GetUShort(PLT)
	mov	r3, r0
	uxth	r3, r3
	sxth	r3, r3
	lsls	r3, r3, #2
	str	r3, [r4]
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	str	r3, [r7, #56]
.L1737:
	ldrh	r3, [r7, #12]
	mov	r2, r3
	ldr	r3, [r7, #56]
	cmp	r2, r3
	bhi	.L1738
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
.L1736:
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #60]
	cmp	r2, r3
	bhi	.L1739
	ldr	r0, [r7, #52]
	bl	FT_Stream_ExitFrame(PLT)
.L1718:
	ldr	r3, [r7, #32]
	mov	r0, r3
	adds	r7, r7, #68
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L1742:
	.align	2
.L1741:
	.word	gvar_fields.10381-(.LPIC97+4)
	.size	ft_var_load_gvar, .-ft_var_load_gvar
	.section	.text.ft_var_apply_tuple,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_var_apply_tuple, %function
ft_var_apply_tuple:
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r2, [r7, #4]
	str	r3, [r7]
	mov	r3, r1	@ movhi
	strh	r3, [r7, #10]	@ movhi
	mov	r3, #65536
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L1744
.L1756:
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L1745
	b	.L1746
.L1745:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L1747
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L1748
.L1747:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L1749
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldr	r3, [r3]
	cmp	r3, #0
	bgt	.L1750
.L1749:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L1751
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L1751
.L1750:
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L1748
.L1751:
	ldrh	r3, [r7, #10]
	and	r3, r3, #16384
	cmp	r3, #0
	bne	.L1752
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	ldr	r0, [r7, #16]
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	str	r0, [r7, #16]
	b	.L1746
.L1752:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	ldr	r1, [r7]
	add	r3, r3, r1
	ldr	r3, [r3]
	cmp	r2, r3
	blt	.L1753
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	ldr	r1, [r7, #32]
	add	r3, r3, r1
	ldr	r3, [r3]
	cmp	r2, r3
	ble	.L1754
.L1753:
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L1748
.L1754:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	ldr	r1, [r7, #4]
	add	r3, r3, r1
	ldr	r3, [r3]
	cmp	r2, r3
	bge	.L1755
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	ldr	r1, [r7]
	add	r3, r3, r1
	ldr	r3, [r3]
	subs	r2, r2, r3
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	ldr	r1, [r7, #4]
	add	r3, r3, r1
	ldr	r1, [r3]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	ldr	r0, [r7]
	add	r3, r3, r0
	ldr	r3, [r3]
	subs	r3, r1, r3
	ldr	r0, [r7, #16]
	mov	r1, r2
	mov	r2, r3
	bl	FT_MulDiv(PLT)
	str	r0, [r7, #16]
	b	.L1746
.L1755:
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	ldr	r2, [r7, #32]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r3, [r3]
	subs	r2, r2, r3
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	ldr	r1, [r7, #32]
	add	r3, r3, r1
	ldr	r1, [r3]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	ldr	r0, [r7, #4]
	add	r3, r3, r0
	ldr	r3, [r3]
	subs	r3, r1, r3
	ldr	r0, [r7, #16]
	mov	r1, r2
	mov	r2, r3
	bl	FT_MulDiv(PLT)
	str	r0, [r7, #16]
.L1746:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L1744:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bhi	.L1756
.L1748:
	ldr	r3, [r7, #16]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_var_apply_tuple, .-ft_var_apply_tuple
	.section	.rodata
	.align	2
.LC14:
	.ascii	"Weight\000"
	.align	2
.LC15:
	.ascii	"Width\000"
	.align	2
.LC16:
	.ascii	"OpticalSize\000"
	.align	2
.LC17:
	.ascii	"Slant\000"
	.section	.text.TT_Get_MM_Var,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	TT_Get_MM_Var, %function
TT_Get_MM_Var:
	@ args = 0, pretend = 0, frame = 96
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #100
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #104]
	str	r3, [r7, #64]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	str	r3, [r7, #60]
	movs	r3, #0
	str	r3, [r7, #44]
	movs	r3, #0
	str	r3, [r7, #56]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #676]
	cmp	r3, #0
	bne	.L1759
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #508]
	add	r3, r7, #48
	ldr	r0, [r7, #4]
	movw	r1, #24946
	movt	r1, 26486
	ldr	r2, [r7, #64]
	blx	r4
	mov	r3, r0
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L1760
	b	.L1761
.L1760:
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #508]
	add	r3, r7, #48
	ldr	r0, [r7, #4]
	movw	r1, #24946
	movt	r1, 26230
	ldr	r2, [r7, #64]
	blx	r4
	mov	r3, r0
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L1762
	b	.L1761
.L1762:
	ldr	r0, [r7, #64]
	bl	FT_Stream_Pos(PLT)
	str	r0, [r7, #52]
	add	r3, r7, #28
	ldr	r0, [r7, #64]
	ldr	r2, .L1791
.LPIC98:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	bl	FT_Stream_ReadFields(PLT)
	mov	r3, r0
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L1763
	b	.L1761
.L1763:
	ldr	r3, [r7, #28]
	cmp	r3, #65536
	bne	.L1764
	ldrh	r3, [r7, #38]
	cmp	r3, #20
	bne	.L1764
	ldrh	r2, [r7, #36]
	movw	r3, #16382
	cmp	r2, r3
	bhi	.L1764
	ldrh	r3, [r7, #42]
	mov	r2, r3
	ldrh	r3, [r7, #36]
	adds	r3, r3, #1
	lsls	r3, r3, #2
	cmp	r2, r3
	bne	.L1764
	ldrh	r3, [r7, #40]
	cmp	r3, #32512
	bcs	.L1764
	ldrh	r3, [r7, #32]
	mov	r1, r3
	ldrh	r3, [r7, #40]
	ldrh	r2, [r7, #42]
	mul	r3, r2, r3
	mov	r0, r3
	ldrh	r3, [r7, #36]
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	adds	r2, r1, r3
	ldr	r3, [r7, #48]
	cmp	r2, r3
	bls	.L1765
.L1764:
	movs	r3, #8
	str	r3, [r7, #44]
	b	.L1761
.L1765:
	add	r3, r7, #44
	ldr	r0, [r7, #60]
	movs	r1, #44
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #676]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L1766
	b	.L1761
.L1766:
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #676]
	ldrh	r3, [r7, #36]
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #1
	add	r2, r2, r3
	ldrh	r3, [r7, #40]
	add	r3, r3, r2
	lsls	r2, r3, #1
	ldrh	r3, [r7, #40]
	ldrh	r0, [r7, #36]
	mul	r3, r0, r3
	add	r3, r3, r2
	adds	r3, r3, #5
	lsls	r0, r3, #2
	ldrh	r3, [r7, #36]
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	add	r3, r3, r0
	str	r3, [r1, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #676]
	ldr	r3, [r3, #12]
	mov	r2, r3
	add	r3, r7, #44
	ldr	r0, [r7, #60]
	mov	r1, r2
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	str	r0, [r7, #56]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L1767
	b	.L1761
.L1767:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #676]
	ldr	r2, [r7, #56]
	str	r2, [r3, #8]
	ldrh	r3, [r7, #36]
	mov	r2, r3
	ldr	r3, [r7, #56]
	str	r2, [r3]
	ldr	r3, [r7, #56]
	mov	r2, #-1
	str	r2, [r3, #4]
	ldrh	r3, [r7, #40]
	mov	r2, r3
	ldr	r3, [r7, #56]
	str	r2, [r3, #8]
	ldr	r3, [r7, #56]
	add	r2, r3, #20
	ldr	r3, [r7, #56]
	str	r2, [r3, #12]
	ldr	r3, [r7, #56]
	ldr	r1, [r3, #12]
	ldrh	r3, [r7, #36]
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	adds	r2, r1, r3
	ldr	r3, [r7, #56]
	str	r2, [r3, #16]
	ldr	r3, [r7, #56]
	ldr	r2, [r3, #16]
	ldrh	r3, [r7, #40]
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #84]
	movs	r3, #0
	str	r3, [r7, #92]
	b	.L1768
.L1769:
	ldr	r3, [r7, #56]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #92]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r7, #84]
	str	r2, [r3]
	ldrh	r3, [r7, #36]
	lsls	r3, r3, #2
	ldr	r2, [r7, #84]
	add	r3, r3, r2
	str	r3, [r7, #84]
	ldr	r3, [r7, #92]
	adds	r3, r3, #1
	str	r3, [r7, #92]
.L1768:
	ldrh	r3, [r7, #40]
	mov	r2, r3
	ldr	r3, [r7, #92]
	cmp	r2, r3
	bgt	.L1769
	ldr	r3, [r7, #84]
	str	r3, [r7, #80]
	movs	r3, #0
	str	r3, [r7, #92]
	b	.L1770
.L1771:
	ldr	r3, [r7, #56]
	ldr	r1, [r3, #12]
	ldr	r2, [r7, #92]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r2, [r7, #80]
	str	r2, [r3]
	ldr	r3, [r7, #80]
	adds	r3, r3, #5
	str	r3, [r7, #80]
	ldr	r3, [r7, #92]
	adds	r3, r3, #1
	str	r3, [r7, #92]
.L1770:
	ldrh	r3, [r7, #36]
	mov	r2, r3
	ldr	r3, [r7, #92]
	cmp	r2, r3
	bgt	.L1771
	ldrh	r3, [r7, #32]
	mov	r2, r3
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	ldr	r0, [r7, #64]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L1772
	b	.L1761
.L1772:
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #12]
	str	r3, [r7, #76]
	movs	r3, #0
	str	r3, [r7, #92]
	b	.L1773
.L1775:
	add	r3, r7, #8
	ldr	r0, [r7, #64]
	ldr	r2, .L1791+4
.LPIC99:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	bl	FT_Stream_ReadFields(PLT)
	mov	r3, r0
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bne	.L1761
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #76]
	str	r2, [r3, #16]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #76]
	str	r2, [r3, #4]
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #76]
	str	r2, [r3, #8]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #76]
	str	r2, [r3, #12]
	ldrh	r3, [r7, #26]
	mov	r2, r3
	ldr	r3, [r7, #76]
	str	r2, [r3, #20]
	ldr	r3, [r7, #76]
	ldr	r3, [r3]
	ldr	r2, [r7, #76]
	ldr	r2, [r2, #16]
	lsrs	r2, r2, #24
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #76]
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, [r7, #76]
	ldr	r2, [r2, #16]
	lsrs	r2, r2, #16
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #76]
	ldr	r3, [r3]
	adds	r3, r3, #2
	ldr	r2, [r7, #76]
	ldr	r2, [r2, #16]
	lsrs	r2, r2, #8
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #76]
	ldr	r3, [r3]
	adds	r3, r3, #3
	ldr	r2, [r7, #76]
	ldr	r2, [r2, #16]
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #76]
	ldr	r3, [r3]
	adds	r3, r3, #4
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #76]
	adds	r3, r3, #24
	str	r3, [r7, #76]
	ldr	r3, [r7, #92]
	adds	r3, r3, #1
	str	r3, [r7, #92]
.L1773:
	ldrh	r3, [r7, #36]
	mov	r2, r3
	ldr	r3, [r7, #92]
	cmp	r2, r3
	bgt	.L1775
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #16]
	str	r3, [r7, #72]
	movs	r3, #0
	str	r3, [r7, #92]
	b	.L1776
.L1780:
	ldrh	r3, [r7, #36]
	adds	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r0, [r7, #64]
	mov	r1, r3
	bl	FT_Stream_EnterFrame(PLT)
	mov	r3, r0
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L1777
	b	.L1761
.L1777:
	ldr	r0, [r7, #64]
	bl	FT_Stream_GetUShort(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #72]
	str	r2, [r3, #4]
	ldr	r0, [r7, #64]
	bl	FT_Stream_GetUShort(PLT)
	movs	r3, #0
	str	r3, [r7, #88]
	b	.L1778
.L1779:
	ldr	r3, [r7, #72]
	ldr	r2, [r3]
	ldr	r3, [r7, #88]
	lsls	r3, r3, #2
	adds	r4, r2, r3
	ldr	r0, [r7, #64]
	bl	FT_Stream_GetULong(PLT)
	mov	r3, r0
	str	r3, [r4]
	ldr	r3, [r7, #88]
	adds	r3, r3, #1
	str	r3, [r7, #88]
.L1778:
	ldrh	r3, [r7, #36]
	mov	r2, r3
	ldr	r3, [r7, #88]
	cmp	r2, r3
	bgt	.L1779
	ldr	r0, [r7, #64]
	bl	FT_Stream_ExitFrame(PLT)
	ldr	r3, [r7, #92]
	adds	r3, r3, #1
	str	r3, [r7, #92]
	ldr	r3, [r7, #72]
	adds	r3, r3, #8
	str	r3, [r7, #72]
.L1776:
	ldrh	r3, [r7, #40]
	mov	r2, r3
	ldr	r3, [r7, #92]
	cmp	r2, r3
	bgt	.L1780
.L1759:
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L1761
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #676]
	ldr	r3, [r3, #12]
	mov	r2, r3
	add	r3, r7, #44
	ldr	r0, [r7, #60]
	mov	r1, r2
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	str	r0, [r7, #56]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L1781
	b	.L1761
.L1781:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #676]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #676]
	ldr	r3, [r3, #12]
	ldr	r0, [r7, #56]
	mov	r1, r2
	mov	r2, r3
	bl	memcpy(PLT)
	ldr	r3, [r7, #56]
	add	r2, r3, #20
	ldr	r3, [r7, #56]
	str	r2, [r3, #12]
	ldr	r3, [r7, #56]
	ldr	r1, [r3, #12]
	ldr	r3, [r7, #56]
	ldr	r2, [r3]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	adds	r2, r1, r3
	ldr	r3, [r7, #56]
	str	r2, [r3, #16]
	ldr	r3, [r7, #56]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #8]
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #84]
	movs	r3, #0
	str	r3, [r7, #68]
	b	.L1782
.L1783:
	ldr	r3, [r7, #56]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #68]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r7, #84]
	str	r2, [r3]
	ldr	r3, [r7, #56]
	ldr	r3, [r3]
	lsls	r3, r3, #2
	ldr	r2, [r7, #84]
	add	r3, r3, r2
	str	r3, [r7, #84]
	ldr	r3, [r7, #68]
	adds	r3, r3, #1
	str	r3, [r7, #68]
.L1782:
	ldr	r3, [r7, #56]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #68]
	cmp	r2, r3
	bhi	.L1783
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #12]
	str	r3, [r7, #76]
	ldr	r3, [r7, #84]
	str	r3, [r7, #80]
	movs	r3, #0
	str	r3, [r7, #68]
	b	.L1784
.L1789:
	ldr	r3, [r7, #76]
	ldr	r2, [r7, #80]
	str	r2, [r3]
	ldr	r3, [r7, #76]
	ldr	r2, [r3, #16]
	movw	r3, #26740
	movt	r3, 30567
	cmp	r2, r3
	bne	.L1785
	ldr	r3, [r7, #76]
	ldr	r2, .L1791+8
.LPIC100:
	add	r2, pc
	str	r2, [r3]
	b	.L1786
.L1785:
	ldr	r3, [r7, #76]
	ldr	r2, [r3, #16]
	movw	r3, #29800
	movt	r3, 30564
	cmp	r2, r3
	bne	.L1787
	ldr	r3, [r7, #76]
	ldr	r2, .L1791+12
.LPIC101:
	add	r2, pc
	str	r2, [r3]
	b	.L1786
.L1787:
	ldr	r3, [r7, #76]
	ldr	r2, [r3, #16]
	movw	r3, #29562
	movt	r3, 28528
	cmp	r2, r3
	bne	.L1788
	ldr	r3, [r7, #76]
	ldr	r2, .L1791+16
.LPIC102:
	add	r2, pc
	str	r2, [r3]
	b	.L1786
.L1788:
	ldr	r3, [r7, #76]
	ldr	r2, [r3, #16]
	movw	r3, #28276
	movt	r3, 29548
	cmp	r2, r3
	bne	.L1786
	ldr	r3, [r7, #76]
	ldr	r2, .L1791+20
.LPIC103:
	add	r2, pc
	str	r2, [r3]
.L1786:
	ldr	r3, [r7, #80]
	adds	r3, r3, #5
	str	r3, [r7, #80]
	ldr	r3, [r7, #76]
	adds	r3, r3, #24
	str	r3, [r7, #76]
	ldr	r3, [r7, #68]
	adds	r3, r3, #1
	str	r3, [r7, #68]
.L1784:
	ldr	r3, [r7, #56]
	ldr	r2, [r3]
	ldr	r3, [r7, #68]
	cmp	r2, r3
	bhi	.L1789
	ldr	r3, [r7]
	ldr	r2, [r7, #56]
	str	r2, [r3]
.L1761:
	ldr	r3, [r7, #44]
	mov	r0, r3
	adds	r7, r7, #100
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L1792:
	.align	2
.L1791:
	.word	fvar_fields.10442-(.LPIC98+4)
	.word	fvaraxis_fields.10443-(.LPIC99+4)
	.word	.LC14-(.LPIC100+4)
	.word	.LC15-(.LPIC101+4)
	.word	.LC16-(.LPIC102+4)
	.word	.LC17-(.LPIC103+4)
	.size	TT_Get_MM_Var, .-TT_Get_MM_Var
	.section	.text.TT_Set_MM_Blend,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	TT_Set_MM_Blend, %function
TT_Set_MM_Blend:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #100]
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #672]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #676]
	cmp	r3, #0
	bne	.L1794
	ldr	r0, [r7, #12]
	movs	r1, #0
	bl	TT_Get_MM_Var(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L1794
	b	.L1795
.L1794:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #676]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #8]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcs	.L1796
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	str	r3, [r7, #8]
.L1796:
	movs	r3, #0
	str	r3, [r7, #36]
	b	.L1797
.L1800:
	ldr	r3, [r7, #36]
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldr	r3, [r3]
	cmn	r3, #65536
	blt	.L1798
	ldr	r3, [r7, #36]
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldr	r3, [r3]
	cmp	r3, #65536
	ble	.L1799
.L1798:
	movs	r3, #6
	str	r3, [r7, #16]
	b	.L1795
.L1799:
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L1797:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L1800
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #36]
	cmp	r3, #0
	bne	.L1801
	ldr	r0, [r7, #12]
	bl	ft_var_load_gvar(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L1801
	b	.L1795
.L1801:
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L1802
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #16
	str	r2, [sp, #4]
	ldr	r0, [r7, #28]
	movs	r1, #4
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #24]
	str	r2, [r3, #4]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L1803
	b	.L1795
.L1803:
	movs	r3, #1
	str	r3, [r7, #32]
	b	.L1804
.L1802:
	movs	r3, #0
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #36]
	b	.L1805
.L1808:
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #36]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #36]
	lsls	r3, r3, #2
	ldr	r1, [r7, #4]
	add	r3, r3, r1
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L1806
	movs	r3, #2
	str	r3, [r7, #32]
	b	.L1807
.L1806:
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L1805:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L1808
.L1807:
	b	.L1809
.L1811:
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #36]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L1810
	movs	r3, #2
	str	r3, [r7, #32]
	b	.L1804
.L1810:
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L1809:
	ldr	r3, [r7, #20]
	ldr	r2, [r3]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bhi	.L1811
.L1804:
	ldr	r3, [r7, #20]
	ldr	r2, [r3]
	ldr	r3, [r7, #24]
	str	r2, [r3]
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #2
	mov	r0, r2
	ldr	r1, [r7, #4]
	mov	r2, r3
	bl	memcpy(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #672]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #648]
	cmp	r3, #0
	beq	.L1795
	ldr	r3, [r7, #32]
	cmp	r3, #1
	beq	.L1812
	cmp	r3, #1
	bcc	.L1816
	cmp	r3, #2
	bne	.L1795
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #648]
	ldr	r0, [r7, #28]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #648]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #648]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #104]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	tt_face_load_cvt(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	b	.L1795
.L1812:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #104]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	tt_face_vary_cvt(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	b	.L1795
.L1816:
	nop
.L1795:
	ldr	r3, [r7, #16]
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	TT_Set_MM_Blend, .-TT_Set_MM_Blend
	.section	.text.TT_Set_Var_Design,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	TT_Set_Var_Design, %function
TT_Set_Var_Design:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #64
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #52]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #100]
	str	r3, [r7, #32]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #676]
	cmp	r3, #0
	bne	.L1818
	ldr	r0, [r7, #12]
	movs	r1, #0
	bl	TT_Get_MM_Var(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L1818
	b	.L1819
.L1818:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #676]
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #8]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcs	.L1820
	ldr	r3, [r7, #24]
	ldr	r3, [r3]
	str	r3, [r7, #8]
.L1820:
	ldr	r3, [r7, #24]
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #20
	str	r2, [sp, #4]
	ldr	r0, [r7, #32]
	movs	r1, #4
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	str	r0, [r7, #52]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L1821
	b	.L1819
.L1821:
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #12]
	str	r3, [r7, #40]
	movs	r3, #0
	str	r3, [r7, #48]
	b	.L1822
.L1828:
	ldr	r3, [r7, #48]
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #12]
	cmp	r2, r3
	bgt	.L1823
	ldr	r3, [r7, #48]
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bge	.L1824
.L1823:
	movs	r3, #6
	str	r3, [r7, #20]
	b	.L1819
.L1824:
	ldr	r3, [r7, #48]
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	bge	.L1825
	ldr	r3, [r7, #48]
	lsls	r3, r3, #2
	ldr	r2, [r7, #52]
	adds	r4, r2, r3
	ldr	r3, [r7, #48]
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #8]
	subs	r2, r2, r3
	ldr	r3, [r7, #40]
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #8]
	subs	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	FT_DivFix(PLT)
	mov	r3, r0
	negs	r3, r3
	str	r3, [r4]
	b	.L1826
.L1825:
	ldr	r3, [r7, #40]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	bne	.L1827
	ldr	r3, [r7, #48]
	lsls	r3, r3, #2
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [r3]
	b	.L1826
.L1827:
	ldr	r3, [r7, #48]
	lsls	r3, r3, #2
	ldr	r2, [r7, #52]
	adds	r4, r2, r3
	ldr	r3, [r7, #48]
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #8]
	subs	r2, r2, r3
	ldr	r3, [r7, #40]
	ldr	r1, [r3, #12]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #8]
	subs	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	FT_DivFix(PLT)
	mov	r3, r0
	str	r3, [r4]
.L1826:
	ldr	r3, [r7, #48]
	adds	r3, r3, #1
	str	r3, [r7, #48]
	ldr	r3, [r7, #40]
	adds	r3, r3, #24
	str	r3, [r7, #40]
.L1822:
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L1828
	b	.L1829
.L1830:
	ldr	r3, [r7, #48]
	lsls	r3, r3, #2
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #48]
	adds	r3, r3, #1
	str	r3, [r7, #48]
.L1829:
	ldr	r3, [r7, #24]
	ldr	r2, [r3]
	ldr	r3, [r7, #48]
	cmp	r2, r3
	bhi	.L1830
	ldr	r3, [r7, #28]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L1831
	ldr	r0, [r7, #12]
	bl	ft_var_load_avar(PLT)
.L1831:
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L1832
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #20]
	str	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #48]
	b	.L1833
.L1838:
	movs	r3, #1
	str	r3, [r7, #44]
	b	.L1834
.L1837:
	ldr	r3, [r7, #48]
	lsls	r3, r3, #2
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #36]
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #44]
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r3, [r3]
	cmp	r2, r3
	bge	.L1835
	ldr	r3, [r7, #48]
	lsls	r3, r3, #2
	ldr	r2, [r7, #52]
	adds	r4, r2, r3
	ldr	r3, [r7, #48]
	lsls	r3, r3, #2
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #36]
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #44]
	add	r3, r3, #536870912
	subs	r3, r3, #1
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r3, [r3]
	subs	r1, r2, r3
	ldr	r3, [r7, #36]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #44]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #36]
	ldr	r0, [r3, #4]
	ldr	r3, [r7, #44]
	add	r3, r3, #536870912
	subs	r3, r3, #1
	lsls	r3, r3, #3
	add	r3, r3, r0
	ldr	r3, [r3, #4]
	subs	r2, r2, r3
	ldr	r3, [r7, #36]
	ldr	r0, [r3, #4]
	ldr	r3, [r7, #44]
	lsls	r3, r3, #3
	add	r3, r3, r0
	ldr	r0, [r3]
	ldr	r3, [r7, #36]
	ldr	r5, [r3, #4]
	ldr	r3, [r7, #44]
	add	r3, r3, #536870912
	subs	r3, r3, #1
	lsls	r3, r3, #3
	add	r3, r3, r5
	ldr	r3, [r3]
	subs	r3, r0, r3
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	FT_MulDiv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #36]
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #44]
	add	r3, r3, #536870912
	subs	r3, r3, #1
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r3, [r3, #4]
	add	r3, r3, r2
	str	r3, [r4]
	b	.L1836
.L1835:
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	str	r3, [r7, #44]
.L1834:
	ldr	r3, [r7, #36]
	ldrh	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7, #44]
	cmp	r2, r3
	bhi	.L1837
.L1836:
	ldr	r3, [r7, #48]
	adds	r3, r3, #1
	str	r3, [r7, #48]
	ldr	r3, [r7, #36]
	adds	r3, r3, #8
	str	r3, [r7, #36]
.L1833:
	ldr	r3, [r7, #24]
	ldr	r2, [r3]
	ldr	r3, [r7, #48]
	cmp	r2, r3
	bhi	.L1838
.L1832:
	ldr	r3, [r7, #24]
	ldr	r3, [r3]
	ldr	r0, [r7, #12]
	mov	r1, r3
	ldr	r2, [r7, #52]
	bl	TT_Set_MM_Blend(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
.L1819:
	ldr	r0, [r7, #32]
	ldr	r1, [r7, #52]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #52]
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #56
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.size	TT_Set_Var_Design, .-TT_Set_Var_Design
	.section	.text.tt_face_vary_cvt,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_face_vary_cvt, %function
tt_face_vary_cvt:
	@ args = 0, pretend = 0, frame = 96
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #104
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3, #28]
	str	r3, [r7, #68]
	movs	r3, #0
	str	r3, [r7, #80]
	movs	r3, #0
	str	r3, [r7, #76]
	movs	r3, #0
	str	r3, [r7, #72]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #676]
	str	r3, [r7, #64]
	ldr	r3, [r7, #64]
	cmp	r3, #0
	bne	.L1841
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L1842
.L1841:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #648]
	cmp	r3, #0
	bne	.L1843
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L1842
.L1843:
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #508]
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	movw	r1, #24946
	movt	r1, 25462
	ldr	r2, [r7]
	blx	r4
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L1844
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L1842
.L1844:
	ldr	r3, [r7, #12]
	ldr	r0, [r7]
	mov	r1, r3
	bl	FT_Stream_EnterFrame(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L1845
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L1842
.L1845:
	ldr	r3, [r7]
	ldr	r3, [r3, #32]
	mov	r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3]
	subs	r3, r2, r3
	str	r3, [r7, #60]
	ldr	r0, [r7]
	bl	FT_Stream_GetULong(PLT)
	mov	r3, r0
	cmp	r3, #65536
	beq	.L1846
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L1847
.L1846:
	ldr	r3, [r7, #64]
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #16
	str	r2, [sp, #4]
	ldr	r0, [r7, #68]
	movs	r1, #4
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	str	r0, [r7, #80]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L1847
	ldr	r3, [r7, #64]
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #16
	str	r2, [sp, #4]
	ldr	r0, [r7, #68]
	movs	r1, #4
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	str	r0, [r7, #76]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L1847
	ldr	r3, [r7, #64]
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #16
	str	r2, [sp, #4]
	ldr	r0, [r7, #68]
	movs	r1, #4
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	str	r0, [r7, #72]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L1847
	ldr	r0, [r7]
	bl	FT_Stream_GetUShort(PLT)
	mov	r3, r0
	str	r3, [r7, #56]
	ldr	r0, [r7]
	bl	FT_Stream_GetUShort(PLT)
	mov	r3, r0
	str	r3, [r7, #92]
	ldr	r3, [r7, #56]
	lsls	r2, r3, #2
	ldr	r3, [r7, #92]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bls	.L1848
	movs	r3, #8
	str	r3, [r7, #16]
	b	.L1847
.L1848:
	ldr	r2, [r7, #92]
	ldr	r3, [r7, #60]
	add	r3, r3, r2
	str	r3, [r7, #92]
	movs	r3, #0
	str	r3, [r7, #88]
	b	.L1849
.L1874:
	ldr	r0, [r7]
	bl	FT_Stream_GetUShort(PLT)
	mov	r3, r0
	str	r3, [r7, #52]
	ldr	r0, [r7]
	bl	FT_Stream_GetUShort(PLT)
	mov	r3, r0
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	and	r3, r3, #32768
	cmp	r3, #0
	beq	.L1850
	movs	r3, #0
	str	r3, [r7, #84]
	b	.L1851
.L1852:
	ldr	r3, [r7, #84]
	lsls	r3, r3, #2
	ldr	r2, [r7, #80]
	adds	r4, r2, r3
	ldr	r0, [r7]
	bl	FT_Stream_GetUShort(PLT)
	mov	r3, r0
	uxth	r3, r3
	sxth	r3, r3
	lsls	r3, r3, #2
	str	r3, [r4]
	ldr	r3, [r7, #84]
	adds	r3, r3, #1
	str	r3, [r7, #84]
.L1851:
	ldr	r3, [r7, #64]
	ldr	r2, [r3]
	ldr	r3, [r7, #84]
	cmp	r2, r3
	bhi	.L1852
	b	.L1876
.L1850:
	ldr	r3, [r7, #48]
	and	r3, r3, #16384
	cmp	r3, #0
	beq	.L1854
	movs	r3, #0
	str	r3, [r7, #84]
	b	.L1855
.L1856:
	ldr	r0, [r7]
	bl	FT_Stream_GetUShort(PLT)
	ldr	r3, [r7, #84]
	adds	r3, r3, #1
	str	r3, [r7, #84]
.L1855:
	ldr	r3, [r7, #64]
	ldr	r3, [r3]
	lsls	r2, r3, #1
	ldr	r3, [r7, #84]
	cmp	r2, r3
	bhi	.L1856
.L1854:
	ldr	r2, [r7, #92]
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #92]
	b	.L1857
.L1876:
	ldr	r3, [r7, #48]
	and	r3, r3, #16384
	cmp	r3, #0
	beq	.L1858
	movs	r3, #0
	str	r3, [r7, #84]
	b	.L1859
.L1860:
	ldr	r3, [r7, #84]
	lsls	r3, r3, #2
	ldr	r2, [r7, #76]
	adds	r4, r2, r3
	ldr	r0, [r7]
	bl	FT_Stream_GetUShort(PLT)
	mov	r3, r0
	uxth	r3, r3
	sxth	r3, r3
	lsls	r3, r3, #2
	str	r3, [r4]
	ldr	r3, [r7, #84]
	adds	r3, r3, #1
	str	r3, [r7, #84]
.L1859:
	ldr	r3, [r7, #64]
	ldr	r2, [r3]
	ldr	r3, [r7, #84]
	cmp	r2, r3
	bhi	.L1860
	movs	r3, #0
	str	r3, [r7, #84]
	b	.L1861
.L1862:
	ldr	r3, [r7, #84]
	lsls	r3, r3, #2
	ldr	r2, [r7, #72]
	adds	r4, r2, r3
	ldr	r0, [r7]
	bl	FT_Stream_GetUShort(PLT)
	mov	r3, r0
	uxth	r3, r3
	sxth	r3, r3
	lsls	r3, r3, #2
	str	r3, [r4]
	ldr	r3, [r7, #84]
	adds	r3, r3, #1
	str	r3, [r7, #84]
.L1861:
	ldr	r3, [r7, #64]
	ldr	r2, [r3]
	ldr	r3, [r7, #84]
	cmp	r2, r3
	bhi	.L1862
.L1858:
	ldr	r3, [r7, #48]
	uxth	r3, r3
	ldr	r2, [r7, #72]
	str	r2, [sp]
	ldr	r0, [r7, #64]
	mov	r1, r3
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #76]
	bl	ft_var_apply_tuple(PLT)
	str	r0, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L1863
	ldr	r3, [r7, #48]
	and	r3, r3, #8192
	cmp	r3, #0
	bne	.L1864
.L1863:
	ldr	r2, [r7, #92]
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #92]
	b	.L1857
.L1864:
	ldr	r3, [r7]
	ldr	r3, [r3, #32]
	mov	r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3]
	subs	r3, r2, r3
	str	r3, [r7, #40]
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #92]
	add	r2, r2, r3
	ldr	r3, [r7]
	str	r2, [r3, #32]
	ldr	r2, [r7, #12]
	add	r3, r7, #8
	ldr	r0, [r7]
	mov	r1, r2
	mov	r2, r3
	bl	ft_var_readpackedpoints(PLT)
	str	r0, [r7, #36]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L1865
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #644]
	b	.L1866
.L1865:
	ldr	r3, [r7, #8]
.L1866:
	ldr	r0, [r7]
	mov	r1, r2
	mov	r2, r3
	bl	ft_var_readpackeddeltas(PLT)
	str	r0, [r7, #32]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L1867
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L1867
	ldr	r3, [r7, #36]
	cmp	r3, #-1
	bne	.L1868
	movs	r3, #0
	str	r3, [r7, #84]
	b	.L1869
.L1870:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #648]
	ldr	r3, [r7, #84]
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r3, [r3]
	sxth	r3, r3
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #648]
	ldr	r3, [r7, #84]
	lsls	r3, r3, #1
	adds	r4, r2, r3
	ldr	r3, [r7, #28]
	uxth	r5, r3
	ldr	r3, [r7, #84]
	lsls	r3, r3, #1
	ldr	r2, [r7, #32]
	add	r3, r3, r2
	ldrh	r3, [r3]
	sxth	r3, r3
	mov	r0, r3
	ldr	r1, [r7, #44]
	bl	FT_MulFix_arm(PLT)
	mov	r3, r0
	uxth	r3, r3
	add	r3, r3, r5
	uxth	r3, r3
	uxth	r3, r3
	strh	r3, [r4]	@ movhi
	ldr	r3, [r7, #84]
	adds	r3, r3, #1
	str	r3, [r7, #84]
.L1869:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #644]
	ldr	r3, [r7, #84]
	cmp	r2, r3
	bhi	.L1870
	b	.L1867
.L1868:
	movs	r3, #0
	str	r3, [r7, #84]
	b	.L1871
.L1872:
	ldr	r3, [r7, #84]
	lsls	r3, r3, #1
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrh	r3, [r3]
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #648]
	ldr	r3, [r7, #24]
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r3, [r3]
	sxth	r3, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #648]
	ldr	r3, [r7, #24]
	lsls	r3, r3, #1
	adds	r4, r2, r3
	ldr	r3, [r7, #20]
	uxth	r5, r3
	ldr	r3, [r7, #84]
	lsls	r3, r3, #1
	ldr	r2, [r7, #32]
	add	r3, r3, r2
	ldrh	r3, [r3]
	sxth	r3, r3
	mov	r0, r3
	ldr	r1, [r7, #44]
	bl	FT_MulFix_arm(PLT)
	mov	r3, r0
	uxth	r3, r3
	add	r3, r3, r5
	uxth	r3, r3
	uxth	r3, r3
	strh	r3, [r4]	@ movhi
	ldr	r3, [r7, #84]
	adds	r3, r3, #1
	str	r3, [r7, #84]
.L1871:
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #84]
	cmp	r2, r3
	bcc	.L1872
.L1867:
	ldr	r3, [r7, #36]
	cmp	r3, #-1
	beq	.L1873
	ldr	r0, [r7, #68]
	ldr	r1, [r7, #36]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #36]
.L1873:
	ldr	r0, [r7, #68]
	ldr	r1, [r7, #32]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #32]
	ldr	r2, [r7, #92]
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #92]
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #40]
	add	r2, r2, r3
	ldr	r3, [r7]
	str	r2, [r3, #32]
.L1857:
	ldr	r3, [r7, #88]
	adds	r3, r3, #1
	str	r3, [r7, #88]
.L1849:
	ldr	r3, [r7, #56]
	ubfx	r2, r3, #0, #12
	ldr	r3, [r7, #88]
	cmp	r2, r3
	bhi	.L1874
.L1847:
	ldr	r0, [r7]
	bl	FT_Stream_ExitFrame(PLT)
.L1842:
	ldr	r0, [r7, #68]
	ldr	r1, [r7, #80]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #80]
	ldr	r0, [r7, #68]
	ldr	r1, [r7, #76]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #76]
	ldr	r0, [r7, #68]
	ldr	r1, [r7, #72]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #72]
	ldr	r3, [r7, #16]
	mov	r0, r3
	adds	r7, r7, #96
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.size	tt_face_vary_cvt, .-tt_face_vary_cvt
	.section	.text.tt_delta_shift,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_delta_shift, %function
tt_delta_shift:
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #4]
	lsls	r3, r3, #3
	ldr	r2, [r7, #40]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	lsls	r3, r3, #3
	ldr	r1, [r7]
	add	r3, r3, r1
	ldr	r3, [r3]
	subs	r3, r2, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	lsls	r3, r3, #3
	ldr	r2, [r7, #40]
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	lsls	r3, r3, #3
	ldr	r1, [r7]
	add	r3, r3, r1
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	str	r3, [r7, #24]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L1878
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L1877
.L1878:
	ldr	r3, [r7, #12]
	str	r3, [r7, #28]
	b	.L1880
.L1881:
	ldr	r3, [r7, #28]
	lsls	r3, r3, #3
	ldr	r2, [r7, #40]
	add	r3, r3, r2
	ldr	r2, [r7, #28]
	lsls	r2, r2, #3
	ldr	r1, [r7, #40]
	add	r2, r2, r1
	ldr	r1, [r2]
	ldr	r2, [r7, #20]
	add	r2, r2, r1
	str	r2, [r3]
	ldr	r3, [r7, #28]
	lsls	r3, r3, #3
	ldr	r2, [r7, #40]
	add	r3, r3, r2
	ldr	r2, [r7, #28]
	lsls	r2, r2, #3
	ldr	r1, [r7, #40]
	add	r2, r2, r1
	ldr	r1, [r2, #4]
	ldr	r2, [r7, #24]
	add	r2, r2, r1
	str	r2, [r3, #4]
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L1880:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	blt	.L1881
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #28]
	b	.L1882
.L1883:
	ldr	r3, [r7, #28]
	lsls	r3, r3, #3
	ldr	r2, [r7, #40]
	add	r3, r3, r2
	ldr	r2, [r7, #28]
	lsls	r2, r2, #3
	ldr	r1, [r7, #40]
	add	r2, r2, r1
	ldr	r1, [r2]
	ldr	r2, [r7, #20]
	add	r2, r2, r1
	str	r2, [r3]
	ldr	r3, [r7, #28]
	lsls	r3, r3, #3
	ldr	r2, [r7, #40]
	add	r3, r3, r2
	ldr	r2, [r7, #28]
	lsls	r2, r2, #3
	ldr	r1, [r7, #40]
	add	r2, r2, r1
	ldr	r1, [r2, #4]
	ldr	r2, [r7, #24]
	add	r2, r2, r1
	str	r2, [r3, #4]
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L1882:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	ble	.L1883
.L1877:
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	tt_delta_shift, .-tt_delta_shift
	.section	.text.tt_delta_interpolate,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_delta_interpolate, %function
tt_delta_interpolate:
	@ args = 8, pretend = 0, frame = 56
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
	ble	.L1885
	b	.L1884
.L1885:
	movs	r3, #0
	str	r3, [r7, #48]
	b	.L1887
.L1902:
	ldr	r3, [r7, #48]
	lsls	r3, r3, #2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldr	r3, [r7, #48]
	lsls	r3, r3, #2
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #4]
	lsls	r3, r3, #3
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7]
	lsls	r3, r3, #3
	ldr	r1, [r7, #64]
	add	r3, r3, r1
	ldr	r3, [r3]
	cmp	r2, r3
	ble	.L1888
	ldr	r3, [r7, #4]
	str	r3, [r7, #52]
	ldr	r3, [r7]
	str	r3, [r7, #4]
	ldr	r3, [r7, #52]
	str	r3, [r7]
.L1888:
	ldr	r3, [r7, #4]
	lsls	r3, r3, #3
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #40]
	ldr	r3, [r7]
	lsls	r3, r3, #3
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #36]
	ldr	r3, [r7, #4]
	lsls	r3, r3, #3
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #32]
	ldr	r3, [r7]
	lsls	r3, r3, #3
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #28]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #40]
	subs	r3, r2, r3
	str	r3, [r7, #24]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #36]
	subs	r3, r2, r3
	str	r3, [r7, #20]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	beq	.L1889
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bne	.L1890
.L1889:
	ldr	r3, [r7, #12]
	str	r3, [r7, #52]
	b	.L1891
.L1895:
	ldr	r3, [r7, #52]
	lsls	r3, r3, #3
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #44]
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bgt	.L1892
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	str	r3, [r7, #44]
	b	.L1893
.L1892:
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	blt	.L1894
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #44]
	b	.L1893
.L1894:
	ldr	r3, [r7, #32]
	str	r3, [r7, #44]
.L1893:
	ldr	r3, [r7, #52]
	lsls	r3, r3, #3
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	ldr	r2, [r7, #44]
	str	r2, [r3]
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	str	r3, [r7, #52]
.L1891:
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	ble	.L1895
	b	.L1896
.L1890:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #32]
	subs	r2, r2, r3
	ldr	r1, [r7, #36]
	ldr	r3, [r7, #40]
	subs	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	FT_DivFix(PLT)
	str	r0, [r7, #16]
	ldr	r3, [r7, #12]
	str	r3, [r7, #52]
	b	.L1897
.L1901:
	ldr	r3, [r7, #52]
	lsls	r3, r3, #3
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #44]
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bgt	.L1898
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	str	r3, [r7, #44]
	b	.L1899
.L1898:
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	blt	.L1900
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #44]
	b	.L1899
.L1900:
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #40]
	subs	r3, r2, r3
	mov	r0, r3
	ldr	r1, [r7, #16]
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	str	r3, [r7, #44]
.L1899:
	ldr	r3, [r7, #52]
	lsls	r3, r3, #3
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	ldr	r2, [r7, #44]
	str	r2, [r3]
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	str	r3, [r7, #52]
.L1897:
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	ble	.L1901
.L1896:
	ldr	r3, [r7, #48]
	adds	r3, r3, #1
	str	r3, [r7, #48]
.L1887:
	ldr	r3, [r7, #48]
	cmp	r3, #1
	ble	.L1902
.L1884:
	adds	r7, r7, #56
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_delta_interpolate, .-tt_delta_interpolate
	.section	.text.tt_handle_deltas,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_handle_deltas, %function
tt_handle_deltas:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #56
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3]
	cmp	r3, #0
	bne	.L1904
	b	.L1903
.L1904:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	str	r3, [r7, #32]
	movs	r3, #0
	strh	r3, [r7, #38]	@ movhi
	movs	r3, #0
	str	r3, [r7, #40]
.L1914:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #12]
	ldrsh	r3, [r7, #38]
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r3, [r3]
	sxth	r3, r3
	str	r3, [r7, #28]
	ldr	r3, [r7, #40]
	str	r3, [r7, #24]
	b	.L1906
.L1908:
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	str	r3, [r7, #40]
.L1906:
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bgt	.L1907
	ldr	r3, [r7, #40]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1908
.L1907:
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bgt	.L1909
	ldr	r3, [r7, #40]
	str	r3, [r7, #20]
	ldr	r3, [r7, #40]
	str	r3, [r7, #44]
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	str	r3, [r7, #40]
	b	.L1910
.L1912:
	ldr	r3, [r7, #40]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1911
	ldr	r3, [r7, #44]
	adds	r2, r3, #1
	ldr	r3, [r7, #40]
	subs	r3, r3, #1
	ldr	r1, [r7, #8]
	str	r1, [sp]
	ldr	r1, [r7, #32]
	str	r1, [sp, #4]
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #40]
	bl	tt_delta_interpolate(PLT)
	ldr	r3, [r7, #40]
	str	r3, [r7, #44]
.L1911:
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	str	r3, [r7, #40]
.L1910:
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	ble	.L1912
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bne	.L1913
	ldr	r3, [r7, #32]
	str	r3, [sp]
	ldr	r0, [r7, #24]
	ldr	r1, [r7, #28]
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #8]
	bl	tt_delta_shift(PLT)
	b	.L1909
.L1913:
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	ldr	r2, [r7, #8]
	str	r2, [sp]
	ldr	r2, [r7, #32]
	str	r2, [sp, #4]
	mov	r0, r3
	ldr	r1, [r7, #28]
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #20]
	bl	tt_delta_interpolate(PLT)
	ldr	r3, [r7, #20]
	cmp	r3, #0
	ble	.L1909
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	ldr	r2, [r7, #8]
	str	r2, [sp]
	ldr	r2, [r7, #32]
	str	r2, [sp, #4]
	ldr	r0, [r7, #24]
	mov	r1, r3
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #20]
	bl	tt_delta_interpolate(PLT)
.L1909:
	ldrh	r3, [r7, #38]
	adds	r3, r3, #1
	strh	r3, [r7, #38]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r3, [r3]
	ldrsh	r2, [r7, #38]
	sxth	r3, r3
	cmp	r2, r3
	blt	.L1914
.L1903:
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_handle_deltas, .-tt_handle_deltas
	.section	.text.TT_Vary_Apply_Glyph_Deltas,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	TT_Vary_Apply_Glyph_Deltas, %function
TT_Vary_Apply_Glyph_Deltas:
	@ args = 0, pretend = 0, frame = 120
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #128
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #104]
	str	r3, [r7, #80]
	ldr	r3, [r7, #80]
	ldr	r3, [r3, #28]
	str	r3, [r7, #76]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #676]
	str	r3, [r7, #72]
	movs	r3, #0
	str	r3, [r7, #68]
	movs	r3, #0
	str	r3, [r7, #116]
	movs	r3, #0
	str	r3, [r7, #64]
	movs	r3, #0
	str	r3, [r7, #100]
	movs	r3, #0
	str	r3, [r7, #96]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #92]
	movs	r3, #0
	str	r3, [r7, #88]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #672]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1916
	ldr	r3, [r7, #72]
	cmp	r3, #0
	bne	.L1917
.L1916:
	movs	r3, #6
	b	.L1957
.L1917:
	ldr	r3, [r7, #72]
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bls	.L1919
	ldr	r3, [r7, #72]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #72]
	ldr	r1, [r3, #36]
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L1920
.L1919:
	movs	r3, #0
	b	.L1957
.L1920:
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #24
	str	r2, [sp, #4]
	ldr	r0, [r7, #76]
	movs	r1, #8
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	str	r0, [r7, #68]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L1921
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #24
	str	r2, [sp, #4]
	ldr	r0, [r7, #76]
	movs	r1, #1
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	str	r0, [r7, #116]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L1921
	ldr	r3, [r7, #72]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r0, [r7, #80]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L1921
	ldr	r3, [r7, #72]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #72]
	ldr	r1, [r3, #36]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r3, [r3]
	subs	r3, r2, r3
	ldr	r0, [r7, #80]
	mov	r1, r3
	bl	FT_Stream_EnterFrame(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L1921
	ldr	r3, [r7, #80]
	ldr	r3, [r3, #32]
	mov	r2, r3
	ldr	r3, [r7, #80]
	ldr	r3, [r3]
	subs	r3, r2, r3
	str	r3, [r7, #60]
	ldr	r3, [r7, #72]
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #24
	str	r2, [sp, #4]
	ldr	r0, [r7, #76]
	movs	r1, #4
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	str	r0, [r7, #64]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L1922
	ldr	r3, [r7, #72]
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #24
	str	r2, [sp, #4]
	ldr	r0, [r7, #76]
	movs	r1, #4
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	str	r0, [r7, #100]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L1922
	ldr	r3, [r7, #72]
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #24
	str	r2, [sp, #4]
	ldr	r0, [r7, #76]
	movs	r1, #4
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	str	r0, [r7, #96]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L1922
	ldr	r0, [r7, #80]
	bl	FT_Stream_GetUShort(PLT)
	mov	r3, r0
	str	r3, [r7, #56]
	ldr	r0, [r7, #80]
	bl	FT_Stream_GetUShort(PLT)
	mov	r3, r0
	str	r3, [r7, #112]
	ldr	r3, [r7, #56]
	lsls	r2, r3, #2
	ldr	r3, [r7, #112]
	add	r2, r2, r3
	ldr	r3, [r7, #72]
	ldr	r3, [r3, #40]
	cmp	r2, r3
	bls	.L1923
	movs	r3, #8
	str	r3, [r7, #24]
	b	.L1922
.L1923:
	ldr	r2, [r7, #112]
	ldr	r3, [r7, #60]
	add	r3, r3, r2
	str	r3, [r7, #112]
	ldr	r3, [r7, #56]
	and	r3, r3, #32768
	cmp	r3, #0
	beq	.L1924
	ldr	r3, [r7, #80]
	ldr	r3, [r3, #32]
	mov	r2, r3
	ldr	r3, [r7, #80]
	ldr	r3, [r3]
	subs	r3, r2, r3
	str	r3, [r7, #52]
	ldr	r3, [r7, #80]
	ldr	r2, [r3]
	ldr	r3, [r7, #112]
	add	r2, r2, r3
	ldr	r3, [r7, #80]
	str	r2, [r3, #32]
	ldr	r3, [r7, #72]
	ldr	r2, [r3, #40]
	add	r3, r7, #16
	ldr	r0, [r7, #80]
	mov	r1, r2
	mov	r2, r3
	bl	ft_var_readpackedpoints(PLT)
	str	r0, [r7, #92]
	ldr	r3, [r7, #80]
	ldr	r3, [r3, #32]
	mov	r2, r3
	ldr	r3, [r7, #80]
	ldr	r3, [r3]
	subs	r3, r2, r3
	str	r3, [r7, #112]
	ldr	r3, [r7, #80]
	ldr	r2, [r3]
	ldr	r3, [r7, #52]
	add	r2, r2, r3
	ldr	r3, [r7, #80]
	str	r2, [r3, #32]
.L1924:
	movs	r3, #0
	str	r3, [r7, #108]
	b	.L1925
.L1955:
	ldr	r0, [r7, #80]
	bl	FT_Stream_GetUShort(PLT)
	mov	r3, r0
	str	r3, [r7, #48]
	ldr	r0, [r7, #80]
	bl	FT_Stream_GetUShort(PLT)
	mov	r3, r0
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	and	r3, r3, #32768
	cmp	r3, #0
	beq	.L1926
	movs	r3, #0
	str	r3, [r7, #104]
	b	.L1927
.L1928:
	ldr	r3, [r7, #104]
	lsls	r3, r3, #2
	ldr	r2, [r7, #64]
	adds	r4, r2, r3
	ldr	r0, [r7, #80]
	bl	FT_Stream_GetUShort(PLT)
	mov	r3, r0
	uxth	r3, r3
	sxth	r3, r3
	lsls	r3, r3, #2
	str	r3, [r4]
	ldr	r3, [r7, #104]
	adds	r3, r3, #1
	str	r3, [r7, #104]
.L1927:
	ldr	r3, [r7, #72]
	ldr	r2, [r3]
	ldr	r3, [r7, #104]
	cmp	r2, r3
	bhi	.L1928
	b	.L1929
.L1926:
	ldr	r3, [r7, #44]
	ubfx	r2, r3, #0, #12
	ldr	r3, [r7, #72]
	ldr	r3, [r3, #24]
	cmp	r2, r3
	bcc	.L1930
	movs	r3, #8
	str	r3, [r7, #24]
	b	.L1922
.L1930:
	ldr	r3, [r7, #72]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #44]
	ubfx	r3, r3, #0, #12
	ldr	r1, [r7, #72]
	ldr	r1, [r1]
	mul	r3, r1, r3
	lsls	r3, r3, #2
	add	r2, r2, r3
	ldr	r3, [r7, #72]
	ldr	r3, [r3]
	lsls	r3, r3, #2
	ldr	r0, [r7, #64]
	mov	r1, r2
	mov	r2, r3
	bl	memcpy(PLT)
.L1929:
	ldr	r3, [r7, #44]
	and	r3, r3, #16384
	cmp	r3, #0
	beq	.L1931
	movs	r3, #0
	str	r3, [r7, #104]
	b	.L1932
.L1933:
	ldr	r3, [r7, #104]
	lsls	r3, r3, #2
	ldr	r2, [r7, #100]
	adds	r4, r2, r3
	ldr	r0, [r7, #80]
	bl	FT_Stream_GetUShort(PLT)
	mov	r3, r0
	uxth	r3, r3
	sxth	r3, r3
	lsls	r3, r3, #2
	str	r3, [r4]
	ldr	r3, [r7, #104]
	adds	r3, r3, #1
	str	r3, [r7, #104]
.L1932:
	ldr	r3, [r7, #72]
	ldr	r2, [r3]
	ldr	r3, [r7, #104]
	cmp	r2, r3
	bhi	.L1933
	movs	r3, #0
	str	r3, [r7, #104]
	b	.L1934
.L1935:
	ldr	r3, [r7, #104]
	lsls	r3, r3, #2
	ldr	r2, [r7, #96]
	adds	r4, r2, r3
	ldr	r0, [r7, #80]
	bl	FT_Stream_GetUShort(PLT)
	mov	r3, r0
	uxth	r3, r3
	sxth	r3, r3
	lsls	r3, r3, #2
	str	r3, [r4]
	ldr	r3, [r7, #104]
	adds	r3, r3, #1
	str	r3, [r7, #104]
.L1934:
	ldr	r3, [r7, #72]
	ldr	r2, [r3]
	ldr	r3, [r7, #104]
	cmp	r2, r3
	bhi	.L1935
.L1931:
	ldr	r3, [r7, #44]
	uxth	r3, r3
	ldr	r2, [r7, #96]
	str	r2, [sp]
	ldr	r0, [r7, #72]
	mov	r1, r3
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #100]
	bl	ft_var_apply_tuple(PLT)
	str	r0, [r7, #40]
	ldr	r3, [r7, #40]
	cmp	r3, #0
	bne	.L1936
	ldr	r2, [r7, #112]
	ldr	r3, [r7, #48]
	add	r3, r3, r2
	str	r3, [r7, #112]
	b	.L1937
.L1936:
	ldr	r3, [r7, #80]
	ldr	r3, [r3, #32]
	mov	r2, r3
	ldr	r3, [r7, #80]
	ldr	r3, [r3]
	subs	r3, r2, r3
	str	r3, [r7, #52]
	ldr	r3, [r7, #44]
	and	r3, r3, #8192
	cmp	r3, #0
	beq	.L1938
	ldr	r3, [r7, #80]
	ldr	r2, [r3]
	ldr	r3, [r7, #112]
	add	r2, r2, r3
	ldr	r3, [r7, #80]
	str	r2, [r3, #32]
	ldr	r3, [r7, #72]
	ldr	r2, [r3, #40]
	add	r3, r7, #20
	ldr	r0, [r7, #80]
	mov	r1, r2
	mov	r2, r3
	bl	ft_var_readpackedpoints(PLT)
	str	r0, [r7, #88]
	ldr	r3, [r7, #88]
	str	r3, [r7, #84]
	b	.L1939
.L1938:
	ldr	r3, [r7, #92]
	str	r3, [r7, #84]
	ldr	r3, [r7, #16]
	str	r3, [r7, #20]
.L1939:
	ldr	r3, [r7, #72]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L1940
	ldr	r3, [r7]
	b	.L1941
.L1940:
	ldr	r3, [r7, #20]
.L1941:
	ldr	r0, [r7, #80]
	mov	r1, r2
	mov	r2, r3
	bl	ft_var_readpackeddeltas(PLT)
	str	r0, [r7, #36]
	ldr	r3, [r7, #72]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L1942
	ldr	r3, [r7]
	b	.L1943
.L1942:
	ldr	r3, [r7, #20]
.L1943:
	ldr	r0, [r7, #80]
	mov	r1, r2
	mov	r2, r3
	bl	ft_var_readpackeddeltas(PLT)
	str	r0, [r7, #32]
	ldr	r3, [r7, #84]
	cmp	r3, #0
	beq	.L1944
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L1944
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L1944
	ldr	r3, [r7, #84]
	cmp	r3, #-1
	bne	.L1945
	movs	r3, #0
	str	r3, [r7, #104]
	b	.L1946
.L1947:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #104]
	lsls	r3, r3, #3
	adds	r4, r2, r3
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #104]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r5, [r3]
	ldr	r3, [r7, #104]
	lsls	r3, r3, #1
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrh	r3, [r3]
	sxth	r3, r3
	mov	r0, r3
	ldr	r1, [r7, #40]
	bl	FT_MulFix_arm(PLT)
	mov	r3, r0
	add	r3, r3, r5
	str	r3, [r4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #104]
	lsls	r3, r3, #3
	adds	r4, r2, r3
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #104]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r5, [r3, #4]
	ldr	r3, [r7, #104]
	lsls	r3, r3, #1
	ldr	r2, [r7, #32]
	add	r3, r3, r2
	ldrh	r3, [r3]
	sxth	r3, r3
	mov	r0, r3
	ldr	r1, [r7, #40]
	bl	FT_MulFix_arm(PLT)
	mov	r3, r0
	add	r3, r3, r5
	str	r3, [r4, #4]
	ldr	r3, [r7, #104]
	adds	r3, r3, #1
	str	r3, [r7, #104]
.L1946:
	ldr	r2, [r7, #104]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L1947
	b	.L1944
.L1945:
	ldr	r3, [r7, #88]
	cmp	r3, #0
	beq	.L1944
	movs	r3, #0
	str	r3, [r7, #104]
	b	.L1948
.L1949:
	ldr	r3, [r7, #104]
	lsls	r3, r3, #3
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	ldr	r2, [r7, #4]
	ldr	r1, [r2, #4]
	ldr	r2, [r7, #104]
	lsls	r2, r2, #3
	add	r2, r2, r1
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #104]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #104]
	adds	r3, r3, #1
	str	r3, [r7, #104]
.L1948:
	ldr	r2, [r7, #104]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L1949
	movs	r3, #0
	str	r3, [r7, #104]
	b	.L1950
.L1953:
	ldr	r3, [r7, #104]
	lsls	r3, r3, #1
	ldr	r2, [r7, #88]
	add	r3, r3, r2
	ldrh	r3, [r3]	@ movhi
	strh	r3, [r7, #30]	@ movhi
	ldrh	r2, [r7, #30]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L1951
	b	.L1952
.L1951:
	ldrh	r3, [r7, #30]
	ldr	r2, [r7, #116]
	add	r3, r3, r2
	movs	r2, #1
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldrh	r3, [r7, #30]
	lsls	r3, r3, #3
	adds	r4, r2, r3
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldrh	r3, [r7, #30]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r5, [r3]
	ldr	r3, [r7, #104]
	lsls	r3, r3, #1
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrh	r3, [r3]
	sxth	r3, r3
	mov	r0, r3
	ldr	r1, [r7, #40]
	bl	FT_MulFix_arm(PLT)
	mov	r3, r0
	add	r3, r3, r5
	str	r3, [r4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldrh	r3, [r7, #30]
	lsls	r3, r3, #3
	adds	r4, r2, r3
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldrh	r3, [r7, #30]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r5, [r3, #4]
	ldr	r3, [r7, #104]
	lsls	r3, r3, #1
	ldr	r2, [r7, #32]
	add	r3, r3, r2
	ldrh	r3, [r3]
	sxth	r3, r3
	mov	r0, r3
	ldr	r1, [r7, #40]
	bl	FT_MulFix_arm(PLT)
	mov	r3, r0
	add	r3, r3, r5
	str	r3, [r4, #4]
.L1952:
	ldr	r3, [r7, #104]
	adds	r3, r3, #1
	str	r3, [r7, #104]
.L1950:
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #104]
	cmp	r2, r3
	bcc	.L1953
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #68]
	ldr	r2, [r7, #116]
	bl	tt_handle_deltas(PLT)
.L1944:
	ldr	r3, [r7, #88]
	cmp	r3, #-1
	beq	.L1954
	ldr	r0, [r7, #76]
	ldr	r1, [r7, #88]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #88]
.L1954:
	ldr	r0, [r7, #76]
	ldr	r1, [r7, #36]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #36]
	ldr	r0, [r7, #76]
	ldr	r1, [r7, #32]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #32]
	ldr	r2, [r7, #112]
	ldr	r3, [r7, #48]
	add	r3, r3, r2
	str	r3, [r7, #112]
	ldr	r3, [r7, #80]
	ldr	r2, [r3]
	ldr	r3, [r7, #52]
	add	r2, r2, r3
	ldr	r3, [r7, #80]
	str	r2, [r3, #32]
.L1937:
	ldr	r3, [r7, #108]
	adds	r3, r3, #1
	str	r3, [r7, #108]
.L1925:
	ldr	r3, [r7, #56]
	ubfx	r2, r3, #0, #12
	ldr	r3, [r7, #108]
	cmp	r2, r3
	bhi	.L1955
.L1922:
	ldr	r3, [r7, #92]
	cmp	r3, #-1
	beq	.L1956
	ldr	r0, [r7, #76]
	ldr	r1, [r7, #92]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #92]
.L1956:
	ldr	r0, [r7, #76]
	ldr	r1, [r7, #64]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #64]
	ldr	r0, [r7, #76]
	ldr	r1, [r7, #100]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #100]
	ldr	r0, [r7, #76]
	ldr	r1, [r7, #96]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #96]
	ldr	r0, [r7, #80]
	bl	FT_Stream_ExitFrame(PLT)
.L1921:
	ldr	r0, [r7, #76]
	ldr	r1, [r7, #68]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #68]
	ldr	r0, [r7, #76]
	ldr	r1, [r7, #116]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #116]
	ldr	r3, [r7, #24]
.L1957:
	mov	r0, r3
	adds	r7, r7, #120
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.size	TT_Vary_Apply_Glyph_Deltas, .-TT_Vary_Apply_Glyph_Deltas
	.section	.text.tt_done_blend,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_done_blend, %function
tt_done_blend:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L1958
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L1960
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L1961
.L1962:
	ldr	r3, [r7]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #3
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L1961:
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bhi	.L1962
	ldr	r3, [r7]
	ldr	r3, [r3, #20]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3, #20]
.L1960:
	ldr	r3, [r7]
	ldr	r3, [r3, #28]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3, #28]
	ldr	r3, [r7]
	ldr	r3, [r3, #36]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3, #36]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7]
.L1958:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_done_blend, .-tt_done_blend
	.section	.rodata.trick_names.8679,"a",%progbits
	.align	2
	.type	trick_names.8679, %object
	.size	trick_names.8679, 180
trick_names.8679:
	.ascii	"DFKaiSho-SB\000"
	.space	8
	.ascii	"DFKaiShu\000"
	.space	11
	.ascii	"DFKai-SB\000"
	.space	11
	.ascii	"HuaTianKaiTi?\000"
	.space	6
	.ascii	"HuaTianSongTi?\000"
	.space	5
	.ascii	"Ming(for ISO10646)\000"
	.space	1
	.ascii	"MingLiU\000"
	.space	12
	.ascii	"PMingLiU\000"
	.space	11
	.ascii	"MingLi43\000"
	.space	11
	.section	.rodata.sfnt_id.8708,"a",%progbits
	.align	2
	.type	sfnt_id.8708, %object
	.size	sfnt_id.8708, 408
sfnt_id.8708:
	.word	96268376
	.word	740
	.word	673397745
	.word	34756
	.word	-1555783190
	.word	481
	.word	96268376
	.word	740
	.word	673397745
	.word	34756
	.word	-1555783189
	.word	481
	.word	300280532
	.word	848
	.word	1513146939
	.word	36963
	.word	329524738
	.word	126
	.word	-262148
	.word	8
	.word	-1667348296
	.word	48802
	.word	1879179538
	.word	8
	.word	-262148
	.word	8
	.word	173671555
	.word	97337
	.word	1879179538
	.word	8
	.word	0
	.word	0
	.word	1086924117
	.word	229
	.word	-1550100253
	.word	4476
	.word	0
	.word	0
	.word	868488786
	.word	229
	.word	651609386
	.word	3946
	.word	0
	.word	0
	.word	1840342301
	.word	413
	.word	1819167491
	.word	9362
	.word	0
	.word	0
	.word	1086924117
	.word	229
	.word	-565052720
	.word	4476
	.word	0
	.word	0
	.word	-2048625052
	.word	229
	.word	-1496963023
	.word	7338
	.word	0
	.word	0
	.word	763960573
	.word	413
	.word	-1604303309
	.word	7656
	.word	0
	.word	0
	.word	1084913484
	.word	459
	.word	-1688425834
	.word	8090
	.word	0
	.word	0
	.word	222161355
	.word	321
	.word	-736987290
	.word	8832
	.word	0
	.word	0
	.word	1248405144
	.word	496
	.word	873284422
	.word	8138
	.word	0
	.word	0
	.word	-852179452
	.word	358
	.word	1827868742
	.word	8880
	.word	0
	.word	0
	.word	1571246869
	.word	413
	.word	1081367135
	.word	8928
	.word	0
	.word	0
	.word	-262800312
	.word	450
	.word	956358355
	.word	7704
	.section	.rodata.gvar_fields.10381,"a",%progbits
	.align	2
	.type	gvar_fields.10381, %object
	.size	gvar_fields.10381, 36
gvar_fields.10381:
	.byte	4
	.byte	0
	.short	20
	.byte	17
	.byte	4
	.short	0
	.byte	12
	.byte	2
	.short	4
	.byte	12
	.byte	2
	.short	6
	.byte	16
	.byte	4
	.short	8
	.byte	12
	.byte	2
	.short	12
	.byte	12
	.byte	2
	.short	14
	.byte	16
	.byte	4
	.short	16
	.byte	0
	.byte	0
	.short	0
	.section	.rodata.fvar_fields.10442,"a",%progbits
	.align	2
	.type	fvar_fields.10442, %object
	.size	fvar_fields.10442, 36
fvar_fields.10442:
	.byte	4
	.byte	0
	.short	16
	.byte	17
	.byte	4
	.short	0
	.byte	12
	.byte	2
	.short	4
	.byte	12
	.byte	2
	.short	6
	.byte	12
	.byte	2
	.short	8
	.byte	12
	.byte	2
	.short	10
	.byte	12
	.byte	2
	.short	12
	.byte	12
	.byte	2
	.short	14
	.byte	0
	.byte	0
	.short	0
	.section	.rodata.fvaraxis_fields.10443,"a",%progbits
	.align	2
	.type	fvaraxis_fields.10443, %object
	.size	fvaraxis_fields.10443, 32
fvaraxis_fields.10443:
	.byte	4
	.byte	0
	.short	20
	.byte	16
	.byte	4
	.short	0
	.byte	17
	.byte	4
	.short	4
	.byte	17
	.byte	4
	.short	8
	.byte	17
	.byte	4
	.short	12
	.byte	12
	.byte	2
	.short	16
	.byte	12
	.byte	2
	.short	18
	.byte	0
	.byte	0
	.short	0
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
