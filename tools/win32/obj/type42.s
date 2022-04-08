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
	.file	"type42.c"
	.section	.rodata
	.align	2
.LC0:
	.ascii	".notdef\000"
	.section	.text.T42_Open_Face,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	T42_Open_Face, %function
T42_Open_Face:
	@ args = 0, pretend = 0, frame = 360
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #360
	add	r7, sp, #0
	adds	r3, r7, #4
	str	r0, [r3]
	adds	r3, r7, #4
	ldr	r3, [r3]
	adds	r3, r3, #132
	str	r3, [r7, #340]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #100]
	str	r3, [r7, #336]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #488]
	str	r3, [r7, #332]
	add	r2, r7, #16
	adds	r3, r7, #4
	mov	r0, r2
	ldr	r1, [r3]
	bl	t42_loader_init(PLT)
	add	r3, r7, #16
	str	r3, [r7, #328]
	add	r3, r7, #12
	ldr	r0, [r7, #336]
	movs	r1, #12
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	mov	r2, r0
	adds	r3, r7, #4
	ldr	r3, [r3]
	str	r2, [r3, #492]
	add	r3, r7, #12
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L2
	b	.L3
.L2:
	adds	r3, r7, #4
	ldr	r3, [r3]
	movs	r2, #12
	str	r2, [r3, #496]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #104]
	ldr	r0, [r7, #328]
	mov	r1, r3
	ldr	r2, [r7, #336]
	ldr	r3, [r7, #332]
	bl	t42_parser_init(PLT)
	mov	r2, r0
	add	r3, r7, #12
	str	r2, [r3]
	add	r3, r7, #12
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L4
	b	.L3
.L4:
	ldr	r3, [r7, #328]
	ldr	r2, [r3, #76]
	ldr	r3, [r7, #328]
	ldr	r3, [r3, #80]
	adds	r0, r7, #4
	add	r1, r7, #16
	ldr	r0, [r0]
	bl	t42_parse_dict(PLT)
	mov	r2, r0
	add	r3, r7, #12
	str	r2, [r3]
	add	r3, r7, #12
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L5
	b	.L3
.L5:
	ldr	r3, [r7, #340]
	ldrb	r3, [r3, #301]	@ zero_extendqisi2
	cmp	r3, #42
	beq	.L6
	add	r3, r7, #12
	movs	r2, #2
	str	r2, [r3]
	b	.L3
.L6:
	add	r3, r7, #16
	ldr	r2, [r3, #144]
	ldr	r3, [r7, #340]
	str	r2, [r3, #284]
	add	r3, r7, #16
	ldr	r3, [r3, #212]
	cmp	r3, #0
	bne	.L7
	add	r3, r7, #12
	movs	r2, #3
	str	r2, [r3]
.L7:
	add	r3, r7, #16
	movs	r2, #0
	str	r2, [r3, #212]
	add	r3, r7, #16
	ldr	r2, [r3, #200]
	ldr	r3, [r7, #340]
	str	r2, [r3, #264]
	add	r3, r7, #16
	ldr	r2, [r3, #224]
	ldr	r3, [r7, #340]
	str	r2, [r3, #292]
	add	r3, r7, #16
	ldr	r2, [r3, #228]
	ldr	r3, [r7, #340]
	str	r2, [r3, #296]
	add	r3, r7, #16
	ldr	r2, [r3, #148]
	ldr	r3, [r7, #340]
	str	r2, [r3, #268]
	add	r3, r7, #16
	ldr	r2, [r3, #172]
	ldr	r3, [r7, #340]
	str	r2, [r3, #288]
	add	r3, r7, #16
	movs	r2, #0
	str	r2, [r3, #148]
	add	r3, r7, #16
	movs	r2, #0
	str	r2, [r3, #172]
	ldr	r3, [r7, #340]
	ldr	r3, [r3, #236]
	cmp	r3, #1
	bne	.L3
	movs	r3, #0
	str	r3, [r7, #348]
	movs	r3, #0
	str	r3, [r7, #344]
	movs	r3, #0
	str	r3, [r7, #356]
	b	.L8
.L15:
	ldr	r3, [r7, #340]
	ldr	r2, [r3, #252]
	ldr	r3, [r7, #356]
	lsls	r3, r3, #1
	add	r3, r3, r2
	movs	r2, #0
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #340]
	ldr	r2, [r3, #256]
	ldr	r3, [r7, #356]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, .L17
.LPIC0:
	add	r2, pc
	str	r2, [r3]
	add	r3, r7, #16
	ldr	r2, [r3, #116]
	ldr	r3, [r7, #356]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #324]
	ldr	r3, [r7, #324]
	cmp	r3, #0
	beq	.L9
	movs	r3, #0
	str	r3, [r7, #352]
	b	.L10
.L14:
	ldr	r3, [r7, #340]
	ldr	r2, [r3, #288]
	ldr	r3, [r7, #352]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #320]
	ldr	r0, [r7, #324]
	ldr	r1, [r7, #320]
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L11
	ldr	r3, [r7, #340]
	ldr	r2, [r3, #252]
	ldr	r3, [r7, #356]
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldr	r2, [r7, #352]
	uxth	r2, r2
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #340]
	ldr	r2, [r3, #256]
	ldr	r3, [r7, #356]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r7, #320]
	str	r2, [r3]
	ldr	r3, .L17+4
.LPIC1:
	add	r3, pc
	mov	r0, r3
	ldr	r1, [r7, #320]
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L12
	ldr	r2, [r7, #356]
	ldr	r3, [r7, #348]
	cmp	r2, r3
	bge	.L13
	ldr	r3, [r7, #356]
	str	r3, [r7, #348]
.L13:
	ldr	r2, [r7, #356]
	ldr	r3, [r7, #344]
	cmp	r2, r3
	blt	.L12
	ldr	r3, [r7, #356]
	adds	r3, r3, #1
	str	r3, [r7, #344]
	b	.L9
.L12:
	b	.L9
.L11:
	ldr	r3, [r7, #352]
	adds	r3, r3, #1
	str	r3, [r7, #352]
.L10:
	ldr	r3, [r7, #340]
	ldr	r2, [r3, #284]
	ldr	r3, [r7, #352]
	cmp	r2, r3
	bgt	.L14
.L9:
	ldr	r3, [r7, #356]
	adds	r3, r3, #1
	str	r3, [r7, #356]
.L8:
	add	r3, r7, #16
	ldr	r2, [r3, #108]
	ldr	r3, [r7, #356]
	cmp	r2, r3
	bgt	.L15
	ldr	r3, [r7, #340]
	ldr	r2, [r7, #348]
	str	r2, [r3, #244]
	ldr	r3, [r7, #340]
	ldr	r2, [r7, #344]
	str	r2, [r3, #248]
	add	r3, r7, #16
	ldr	r2, [r3, #88]
	ldr	r3, [r7, #340]
	str	r2, [r3, #240]
.L3:
	add	r3, r7, #16
	mov	r0, r3
	bl	t42_loader_done(PLT)
	add	r3, r7, #12
	ldr	r3, [r3]
	mov	r0, r3
	add	r7, r7, #360
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L18:
	.align	2
.L17:
	.word	.LC0-(.LPIC0+4)
	.word	.LC0-(.LPIC1+4)
	.size	T42_Open_Face, .-T42_Open_Face
	.section	.rodata
	.align	2
.LC1:
	.ascii	"postscript-cmaps\000"
	.align	2
.LC2:
	.ascii	"psaux\000"
	.align	2
.LC3:
	.ascii	"Regular\000"
	.align	2
.LC4:
	.ascii	"truetype\000"
	.section	.text.T42_Face_Init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	T42_Face_Init, %function
T42_Face_Init:
	@ args = 4, pretend = 0, frame = 112
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #116
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #8]
	str	r3, [r7, #92]
	ldr	r3, [r7, #92]
	str	r3, [r7, #88]
	ldr	r3, [r7, #92]
	adds	r3, r3, #132
	str	r3, [r7, #84]
	ldr	r3, [r7, #84]
	str	r3, [r7, #80]
	ldr	r3, [r7, #92]
	movs	r2, #0
	str	r2, [r3, #500]
	ldr	r3, [r7, #92]
	movs	r2, #1
	str	r2, [r3]
	ldr	r3, [r7, #92]
	ldr	r3, [r3, #96]
	str	r3, [r7, #76]
	ldr	r0, [r7, #76]
	ldr	r3, .L51
.LPIC2:
	add	r3, pc
	mov	r1, r3
	bl	ft_module_get_service(PLT)
	str	r0, [r7, #72]
	ldr	r3, [r7, #72]
	str	r3, [r7, #68]
	ldr	r3, [r7, #92]
	ldr	r2, [r7, #68]
	str	r2, [r3, #484]
	ldr	r3, [r7, #92]
	ldr	r3, [r3, #96]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r3, .L51+4
.LPIC3:
	add	r3, pc
	mov	r1, r3
	bl	FT_Get_Module_Interface(PLT)
	mov	r2, r0
	ldr	r3, [r7, #92]
	str	r2, [r3, #488]
	ldr	r3, [r7, #92]
	ldr	r3, [r3, #488]
	str	r3, [r7, #64]
	ldr	r3, [r7, #64]
	cmp	r3, #0
	bne	.L20
	movs	r3, #11
	str	r3, [r7, #108]
	b	.L21
.L20:
	ldr	r0, [r7, #92]
	bl	T42_Open_Face(PLT)
	str	r0, [r7, #108]
	ldr	r3, [r7, #108]
	cmp	r3, #0
	beq	.L22
	b	.L21
.L22:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bge	.L23
	b	.L21
.L23:
	ldr	r3, [r7, #4]
	uxth	r3, r3
	cmp	r3, #0
	ble	.L24
	movs	r3, #6
	str	r3, [r7, #108]
	b	.L21
.L24:
	ldr	r3, [r7, #84]
	ldr	r2, [r3, #284]
	ldr	r3, [r7, #88]
	str	r2, [r3, #16]
	ldr	r3, [r7, #88]
	movs	r2, #0
	str	r2, [r3, #36]
	ldr	r3, [r7, #88]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #88]
	ldr	r3, [r3, #8]
	orr	r3, r3, #528
	orr	r3, r3, #1
	ldr	r2, [r7, #88]
	str	r3, [r2, #8]
	ldr	r3, [r7, #80]
	ldrb	r3, [r3, #24]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L25
	ldr	r3, [r7, #88]
	ldr	r3, [r3, #8]
	orr	r2, r3, #4
	ldr	r3, [r7, #88]
	str	r2, [r3, #8]
.L25:
	ldr	r3, [r7, #88]
	ldr	r3, [r3, #8]
	orr	r2, r3, #2048
	ldr	r3, [r7, #88]
	str	r2, [r3, #8]
	ldr	r3, [r7, #80]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #88]
	str	r2, [r3, #20]
	ldr	r3, [r7, #88]
	ldr	r2, .L51+8
.LPIC4:
	add	r2, pc
	str	r2, [r3, #24]
	ldr	r3, [r7, #88]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L26
	ldr	r3, [r7, #80]
	ldr	r3, [r3, #8]
	str	r3, [r7, #104]
	ldr	r3, [r7, #88]
	ldr	r3, [r3, #20]
	str	r3, [r7, #100]
	ldr	r3, [r7, #104]
	cmp	r3, #0
	beq	.L27
	b	.L28
.L35:
	ldr	r3, [r7, #104]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #100]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L29
	ldr	r3, [r7, #100]
	adds	r3, r3, #1
	str	r3, [r7, #100]
	ldr	r3, [r7, #104]
	adds	r3, r3, #1
	str	r3, [r7, #104]
	b	.L28
.L29:
	ldr	r3, [r7, #104]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L30
	ldr	r3, [r7, #104]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #45
	bne	.L31
.L30:
	ldr	r3, [r7, #104]
	adds	r3, r3, #1
	str	r3, [r7, #104]
	b	.L28
.L31:
	ldr	r3, [r7, #100]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L32
	ldr	r3, [r7, #100]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #45
	bne	.L33
.L32:
	ldr	r3, [r7, #100]
	adds	r3, r3, #1
	str	r3, [r7, #100]
	b	.L28
.L33:
	ldr	r3, [r7, #100]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L34
	ldr	r3, [r7, #88]
	ldr	r2, [r7, #104]
	str	r2, [r3, #24]
	b	.L27
.L34:
	b	.L27
.L28:
	ldr	r3, [r7, #104]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L35
.L27:
	b	.L36
.L26:
	ldr	r3, [r7, #84]
	ldr	r3, [r3, #232]
	cmp	r3, #0
	beq	.L36
	ldr	r3, [r7, #84]
	ldr	r2, [r3, #232]
	ldr	r3, [r7, #88]
	str	r2, [r3, #20]
.L36:
	ldr	r3, [r7, #88]
	movs	r2, #0
	str	r2, [r3, #28]
	ldr	r3, [r7, #88]
	movs	r2, #0
	str	r2, [r3, #32]
	movs	r3, #9
	str	r3, [r7, #16]
	ldr	r3, [r7, #92]
	ldr	r3, [r3, #96]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r3, .L51+12
.LPIC5:
	add	r3, pc
	mov	r1, r3
	bl	FT_Get_Module(PLT)
	mov	r3, r0
	str	r3, [r7, #36]
	ldr	r3, [r7, #92]
	ldr	r3, [r3, #492]
	str	r3, [r7, #20]
	ldr	r3, [r7, #92]
	ldr	r3, [r3, #496]
	str	r3, [r7, #24]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L37
	ldr	r3, [r7, #16]
	orr	r3, r3, #16
	str	r3, [r7, #16]
	ldr	r3, [r7]
	str	r3, [r7, #40]
	ldr	r3, [r7, #128]
	str	r3, [r7, #44]
.L37:
	ldr	r3, [r7, #92]
	ldr	r3, [r3, #96]
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #92]
	add	r3, r3, #500
	add	r2, r7, #16
	mov	r0, r1
	mov	r1, r2
	movs	r2, #0
	bl	FT_Open_Face(PLT)
	str	r0, [r7, #108]
	ldr	r3, [r7, #108]
	cmp	r3, #0
	beq	.L38
	b	.L21
.L38:
	ldr	r3, [r7, #92]
	ldr	r3, [r3, #500]
	ldr	r3, [r3, #88]
	mov	r0, r3
	bl	FT_Done_Size(PLT)
	ldr	r3, [r7, #92]
	ldr	r3, [r3, #500]
	ldr	r2, [r7, #88]
	add	r4, r2, #52
	adds	r3, r3, #52
	ldmia	r3, {r0, r1, r2, r3}
	stmia	r4, {r0, r1, r2, r3}
	ldr	r3, [r7, #92]
	ldr	r3, [r3, #500]
	ldrh	r2, [r3, #68]
	ldr	r3, [r7, #88]
	strh	r2, [r3, #68]	@ movhi
	ldr	r3, [r7, #92]
	ldr	r3, [r3, #500]
	ldrh	r2, [r3, #70]
	ldr	r3, [r7, #88]
	strh	r2, [r3, #70]	@ movhi
	ldr	r3, [r7, #92]
	ldr	r3, [r3, #500]
	ldrh	r2, [r3, #72]
	ldr	r3, [r7, #88]
	strh	r2, [r3, #72]	@ movhi
	ldr	r3, [r7, #92]
	ldr	r3, [r3, #500]
	ldrh	r2, [r3, #74]
	ldr	r3, [r7, #88]
	strh	r2, [r3, #74]	@ movhi
	ldr	r3, [r7, #92]
	ldr	r3, [r3, #500]
	ldrh	r2, [r3, #76]
	ldr	r3, [r7, #88]
	strh	r2, [r3, #76]	@ movhi
	ldr	r3, [r7, #92]
	ldr	r3, [r3, #500]
	ldrh	r2, [r3, #78]
	ldr	r3, [r7, #88]
	strh	r2, [r3, #78]	@ movhi
	ldr	r3, [r7, #80]
	ldrh	r2, [r3, #26]
	ldr	r3, [r7, #88]
	strh	r2, [r3, #80]	@ movhi
	ldr	r3, [r7, #80]
	ldrh	r3, [r3, #28]
	uxth	r2, r3
	ldr	r3, [r7, #88]
	strh	r2, [r3, #82]	@ movhi
	ldr	r3, [r7, #88]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #80]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L39
	ldr	r3, [r7, #88]
	ldr	r3, [r3, #12]
	orr	r2, r3, #1
	ldr	r3, [r7, #88]
	str	r2, [r3, #12]
.L39:
	ldr	r3, [r7, #92]
	ldr	r3, [r3, #500]
	ldr	r3, [r3, #12]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L40
	ldr	r3, [r7, #88]
	ldr	r3, [r3, #12]
	orr	r2, r3, #2
	ldr	r3, [r7, #88]
	str	r2, [r3, #12]
.L40:
	ldr	r3, [r7, #92]
	ldr	r3, [r3, #500]
	ldr	r3, [r3, #8]
	and	r3, r3, #32
	cmp	r3, #0
	beq	.L41
	ldr	r3, [r7, #88]
	ldr	r3, [r3, #8]
	orr	r2, r3, #32
	ldr	r3, [r7, #88]
	str	r2, [r3, #8]
.L41:
	ldr	r3, [r7, #68]
	cmp	r3, #0
	beq	.L21
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #20]
	str	r3, [r7, #60]
	ldr	r3, [r7, #88]
	str	r3, [r7, #48]
	movs	r3, #3
	strh	r3, [r7, #56]	@ movhi
	movs	r3, #1
	strh	r3, [r7, #58]	@ movhi
	movw	r3, #26979
	movt	r3, 30062
	str	r3, [r7, #52]
	ldr	r3, [r7, #60]
	ldr	r2, [r3, #12]
	add	r3, r7, #48
	mov	r0, r2
	movs	r1, #0
	mov	r2, r3
	movs	r3, #0
	bl	FT_CMap_New(PLT)
	str	r0, [r7, #108]
	ldr	r3, [r7, #108]
	cmp	r3, #0
	beq	.L42
	ldr	r3, [r7, #108]
	uxtb	r3, r3
	cmp	r3, #163
	bne	.L21
.L42:
	movs	r3, #0
	str	r3, [r7, #108]
	movs	r3, #7
	strh	r3, [r7, #56]	@ movhi
	movs	r3, #0
	str	r3, [r7, #96]
	ldr	r3, [r7, #84]
	ldr	r3, [r3, #236]
	subs	r3, r3, #1
	cmp	r3, #3
	bhi	.L43
	adr	r1, .L45
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L45:
	.word	.L44+1-.L45
	.word	.L46+1-.L45
	.word	.L47+1-.L45
	.word	.L48+1-.L45
.L46:
	movw	r3, #20290
	movt	r3, 16708
	str	r3, [r7, #52]
	movs	r3, #0
	strh	r3, [r7, #58]	@ movhi
	ldr	r3, [r7, #60]
	ldr	r3, [r3]
	str	r3, [r7, #96]
	b	.L43
.L48:
	movw	r3, #16965
	movt	r3, 16708
	str	r3, [r7, #52]
	movs	r3, #1
	strh	r3, [r7, #58]	@ movhi
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #4]
	str	r3, [r7, #96]
	b	.L43
.L44:
	movw	r3, #16963
	movt	r3, 16708
	str	r3, [r7, #52]
	movs	r3, #2
	strh	r3, [r7, #58]	@ movhi
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #8]
	str	r3, [r7, #96]
	b	.L43
.L47:
	movw	r3, #29745
	movt	r3, 27745
	str	r3, [r7, #52]
	movs	r3, #3
	strh	r3, [r7, #58]	@ movhi
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #12]
	str	r3, [r7, #96]
	nop
.L43:
	ldr	r3, [r7, #96]
	cmp	r3, #0
	beq	.L21
	add	r3, r7, #48
	ldr	r0, [r7, #96]
	movs	r1, #0
	mov	r2, r3
	movs	r3, #0
	bl	FT_CMap_New(PLT)
	str	r0, [r7, #108]
.L21:
	ldr	r3, [r7, #108]
	mov	r0, r3
	adds	r7, r7, #116
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L52:
	.align	2
.L51:
	.word	.LC1-(.LPIC2+4)
	.word	.LC2-(.LPIC3+4)
	.word	.LC3-(.LPIC4+4)
	.word	.LC4-(.LPIC5+4)
	.size	T42_Face_Init, .-T42_Face_Init
	.section	.text.T42_Face_Done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	T42_Face_Done, %function
T42_Face_Done:
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
	bne	.L54
	b	.L53
.L54:
	ldr	r3, [r7, #20]
	adds	r3, r3, #132
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #100]
	str	r3, [r7, #8]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #500]
	cmp	r3, #0
	beq	.L56
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #500]
	mov	r0, r3
	bl	FT_Done_Face(PLT)
.L56:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #296]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #16]
	movs	r2, #0
	str	r2, [r3, #296]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #292]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #16]
	movs	r2, #0
	str	r2, [r3, #292]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #288]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #16]
	movs	r2, #0
	str	r2, [r3, #288]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #264]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #16]
	movs	r2, #0
	str	r2, [r3, #264]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #268]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #16]
	movs	r2, #0
	str	r2, [r3, #268]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #252]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #16]
	movs	r2, #0
	str	r2, [r3, #252]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #256]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #16]
	movs	r2, #0
	str	r2, [r3, #256]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #232]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #16]
	movs	r2, #0
	str	r2, [r3, #232]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #492]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #492]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #556]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #556]
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #552]
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #24]
.L53:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	T42_Face_Done, .-T42_Face_Done
	.section	.text.T42_Driver_Init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	T42_Driver_Init, %function
T42_Driver_Init:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r3, .L60
.LPIC6:
	add	r3, pc
	mov	r1, r3
	bl	FT_Get_Module(PLT)
	str	r0, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L58
	movs	r3, #11
	b	.L59
.L58:
	ldr	r3, [r7, #8]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	str	r2, [r3, #28]
	movs	r3, #0
.L59:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L61:
	.align	2
.L60:
	.word	.LC4-(.LPIC6+4)
	.size	T42_Driver_Init, .-T42_Driver_Init
	.section	.text.T42_Driver_Done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	T42_Driver_Done, %function
T42_Driver_Done:
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
	.size	T42_Driver_Done, .-T42_Driver_Done
	.section	.text.T42_Size_Init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	T42_Size_Init, %function
T42_Size_Init:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #500]
	add	r3, r7, #12
	mov	r0, r2
	mov	r1, r3
	bl	FT_New_Size(PLT)
	str	r0, [r7, #16]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #28]
	str	r2, [r3, #44]
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	FT_Activate_Size(PLT)
	ldr	r3, [r7, #16]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	T42_Size_Init, .-T42_Size_Init
	.section	.text.T42_Size_Request,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	T42_Size_Request, %function
T42_Size_Request:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #44]
	mov	r0, r3
	bl	FT_Activate_Size(PLT)
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #500]
	mov	r0, r3
	ldr	r1, [r7]
	bl	FT_Request_Size(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L66
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #500]
	ldr	r3, [r3, #88]
	ldr	r2, [r7, #4]
	add	r4, r2, #12
	add	r5, r3, #12
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5, {r0, r1, r2}
	stmia	r4, {r0, r1, r2}
.L66:
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.size	T42_Size_Request, .-T42_Size_Request
	.section	.text.T42_Size_Select,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	T42_Size_Select, %function
T42_Size_Select:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #44]
	mov	r0, r3
	bl	FT_Activate_Size(PLT)
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #500]
	ldr	r3, [r7]
	mov	r0, r2
	mov	r1, r3
	bl	FT_Select_Size(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L69
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #500]
	ldr	r3, [r3, #88]
	ldr	r2, [r7, #4]
	add	r4, r2, #12
	add	r5, r3, #12
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5, {r0, r1, r2}
	stmia	r4, {r0, r1, r2}
.L69:
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.size	T42_Size_Select, .-T42_Size_Select
	.section	.text.T42_Size_Done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	T42_Size_Done, %function
T42_Size_Done:
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
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #500]
	add	r2, r3, #108
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #44]
	mov	r0, r2
	mov	r1, r3
	bl	FT_List_Find(PLT)
	str	r0, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L71
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #44]
	mov	r0, r3
	bl	FT_Done_Size(PLT)
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #44]
.L71:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	T42_Size_Done, .-T42_Size_Done
	.section	.text.T42_GlyphSlot_Init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	T42_GlyphSlot_Init, %function
T42_GlyphSlot_Init:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #84]
	cmp	r3, #0
	bne	.L74
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #500]
	ldr	r2, [r3, #84]
	ldr	r3, [r7, #24]
	str	r2, [r3, #160]
	b	.L75
.L74:
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #500]
	add	r3, r7, #12
	mov	r0, r2
	mov	r1, r3
	bl	FT_New_GlyphSlot(PLT)
	str	r0, [r7, #28]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #24]
	str	r2, [r3, #160]
.L75:
	ldr	r3, [r7, #28]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	T42_GlyphSlot_Init, .-T42_GlyphSlot_Init
	.section	.text.T42_GlyphSlot_Done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	T42_GlyphSlot_Done, %function
T42_GlyphSlot_Done:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #160]
	mov	r0, r3
	bl	FT_Done_GlyphSlot(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	T42_GlyphSlot_Done, .-T42_GlyphSlot_Done
	.section	.text.t42_glyphslot_clear,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t42_glyphslot_clear, %function
t42_glyphslot_clear:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	ft_glyphslot_free_bitmap(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	mov	r0, r3
	movs	r1, #0
	movs	r2, #32
	bl	memset(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #108
	mov	r0, r3
	movs	r1, #0
	movs	r2, #20
	bl	memset(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #76
	mov	r0, r3
	movs	r1, #0
	movs	r2, #24
	bl	memset(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #100]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #104]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #128]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #132]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #136]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #140]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #152]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #72]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #56]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #60]
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	t42_glyphslot_clear, .-t42_glyphslot_clear
	.section	.text.T42_GlyphSlot_Load,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	T42_GlyphSlot_Load, %function
T42_GlyphSlot_Load:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	str	r3, [r7, #36]
	ldr	r3, [r7, #8]
	str	r3, [r7, #32]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #96]
	ldr	r3, [r3, #28]
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #424]
	ldr	r3, [r7, #4]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	mov	r0, r3
	bl	atol(PLT)
	mov	r3, r0
	str	r3, [r7, #4]
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #160]
	mov	r0, r3
	bl	t42_glyphslot_clear(PLT)
	ldr	r3, [r7, #24]
	ldr	r4, [r3, #72]
	ldr	r3, [r7, #36]
	ldr	r1, [r3, #160]
	ldr	r3, [r7, #32]
	ldr	r2, [r3, #44]
	ldr	r3, [r7]
	orr	r3, r3, #8
	mov	r0, r1
	mov	r1, r2
	ldr	r2, [r7, #4]
	blx	r4
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L80
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #160]
	ldr	r2, [r7, #12]
	add	r4, r2, #24
	add	r5, r3, #24
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5, {r0, r1, r2, r3}
	stmia	r4, {r0, r1, r2, r3}
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #160]
	ldr	r2, [r3, #56]
	ldr	r3, [r7, #12]
	str	r2, [r3, #56]
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #160]
	ldr	r2, [r3, #60]
	ldr	r3, [r7, #12]
	str	r2, [r3, #60]
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #160]
	ldr	r2, [r3, #72]
	ldr	r3, [r7, #12]
	str	r2, [r3, #72]
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #160]
	ldr	r2, [r7, #12]
	add	r4, r2, #108
	add	r5, r3, #108
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #160]
	ldr	r2, [r7, #12]
	add	r4, r2, #76
	add	r5, r3, #76
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5, {r0, r1}
	stmia	r4, {r0, r1}
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #160]
	ldr	r2, [r3, #100]
	ldr	r3, [r7, #12]
	str	r2, [r3, #100]
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #160]
	ldr	r2, [r3, #104]
	ldr	r3, [r7, #12]
	str	r2, [r3, #104]
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #160]
	ldr	r2, [r3, #128]
	ldr	r3, [r7, #12]
	str	r2, [r3, #128]
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #160]
	ldr	r2, [r3, #132]
	ldr	r3, [r7, #12]
	str	r2, [r3, #132]
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #160]
	ldr	r2, [r3, #136]
	ldr	r3, [r7, #12]
	str	r2, [r3, #136]
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #160]
	ldr	r2, [r3, #140]
	ldr	r3, [r7, #12]
	str	r2, [r3, #140]
.L80:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.size	T42_GlyphSlot_Load, .-T42_GlyphSlot_Load
	.section	.rodata
	.align	2
.LC5:
	.ascii	"version\000"
	.align	2
.LC6:
	.ascii	"Notice\000"
	.align	2
.LC7:
	.ascii	"FullName\000"
	.align	2
.LC8:
	.ascii	"FamilyName\000"
	.align	2
.LC9:
	.ascii	"Weight\000"
	.align	2
.LC10:
	.ascii	"ItalicAngle\000"
	.align	2
.LC11:
	.ascii	"isFixedPitch\000"
	.align	2
.LC12:
	.ascii	"UnderlinePosition\000"
	.align	2
.LC13:
	.ascii	"UnderlineThickness\000"
	.align	2
.LC14:
	.ascii	"FSType\000"
	.align	2
.LC15:
	.ascii	"FontName\000"
	.align	2
.LC16:
	.ascii	"PaintType\000"
	.align	2
.LC17:
	.ascii	"FontType\000"
	.align	2
.LC18:
	.ascii	"StrokeWidth\000"
	.align	2
.LC19:
	.ascii	"FontBBox\000"
	.align	2
.LC20:
	.ascii	"FontMatrix\000"
	.align	2
.LC21:
	.ascii	"Encoding\000"
	.align	2
.LC22:
	.ascii	"CharStrings\000"
	.align	2
.LC23:
	.ascii	"sfnts\000"
	.section	.data.rel.ro.local.t42_keywords,"aw",%progbits
	.align	2
	.type	t42_keywords, %object
	.size	t42_keywords, 720
t42_keywords:
	.word	.LC5
	.word	3
	.word	5
	.word	0
	.word	0
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC6
	.word	3
	.word	5
	.word	0
	.word	4
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC7
	.word	3
	.word	5
	.word	0
	.word	8
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC8
	.word	3
	.word	5
	.word	0
	.word	12
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC9
	.word	3
	.word	5
	.word	0
	.word	16
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC10
	.word	3
	.word	2
	.word	0
	.word	20
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC11
	.word	3
	.word	1
	.word	0
	.word	24
	.byte	1
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC12
	.word	3
	.word	2
	.word	0
	.word	26
	.byte	2
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC13
	.word	3
	.word	2
	.word	0
	.word	28
	.byte	2
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC14
	.word	2
	.word	2
	.word	0
	.word	0
	.byte	2
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC15
	.word	1
	.word	6
	.word	0
	.word	232
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC16
	.word	1
	.word	2
	.word	0
	.word	300
	.byte	1
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC17
	.word	1
	.word	2
	.word	0
	.word	301
	.byte	1
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC18
	.word	1
	.word	3
	.word	0
	.word	348
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC19
	.word	5
	.word	7
	.word	0
	.word	0
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC20
	.word	5
	.word	11
	.word	t42_parse_font_matrix
	.word	0
	.byte	0
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC21
	.word	5
	.word	11
	.word	t42_parse_encoding
	.word	0
	.byte	0
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC22
	.word	5
	.word	11
	.word	t42_parse_charstrings
	.word	0
	.byte	0
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC23
	.word	5
	.word	11
	.word	t42_parse_sfnts
	.word	0
	.byte	0
	.space	3
	.word	0
	.word	0
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
	.section	.rodata
	.align	2
.LC24:
	.ascii	"%!PS-TrueTypeFont\000"
	.section	.text.t42_parser_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t42_parser_init, %function
t42_parser_init:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	ldr	r4, [r3]
	ldr	r3, [r7, #12]
	mov	r0, r3
	movs	r1, #0
	movs	r2, #0
	ldr	r3, [r7, #4]
	blx	r4
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #80]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #76]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #84]
	ldr	r0, [r7, #8]
	movs	r1, #0
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L83
	ldr	r0, [r7, #8]
	movs	r1, #17
	bl	FT_Stream_EnterFrame(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L83
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #32]
	mov	r0, r3
	ldr	r3, .L89
.LPIC7:
	add	r3, pc
	mov	r1, r3
	movs	r2, #17
	bl	memcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L84
	movs	r3, #2
	str	r3, [r7, #16]
.L84:
	ldr	r0, [r7, #8]
	bl	FT_Stream_ExitFrame(PLT)
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L83
	ldr	r0, [r7, #8]
	movs	r1, #0
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L83
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	str	r3, [r7, #20]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	bne	.L85
	ldr	r3, [r7, #8]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #76]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #20]
	str	r2, [r3, #80]
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #84]
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #20]
	bl	FT_Stream_Skip(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L86
	b	.L83
.L85:
	add	r3, r7, #16
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #20]
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #76]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L83
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #76]
	ldr	r3, [r7, #20]
	ldr	r0, [r7, #8]
	mov	r1, r2
	mov	r2, r3
	bl	FT_Stream_Read(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L83
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #20]
	str	r2, [r3, #80]
.L86:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #76]
	ldr	r3, [r7, #12]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #76]
	ldr	r3, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #80]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
.L83:
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L87
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #84]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L87
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #76]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #76]
.L87:
	ldr	r3, [r7, #16]
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L90:
	.align	2
.L89:
	.word	.LC24-(.LPIC7+4)
	.size	t42_parser_init, .-t42_parser_init
	.section	.text.t42_parser_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t42_parser_done, %function
t42_parser_done:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #84]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L92
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #76]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #76]
.L92:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	ldr	r2, [r7, #4]
	mov	r0, r2
	blx	r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	t42_parser_done, .-t42_parser_done
	.section	.text.t42_is_space,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t42_is_space, %function
t42_is_space:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L94
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #9
	beq	.L94
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #13
	beq	.L94
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L94
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #12
	beq	.L94
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L95
.L94:
	movs	r3, #1
	b	.L96
.L95:
	movs	r3, #0
.L96:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	t42_is_space, .-t42_is_space
	.section	.text.t42_parse_font_matrix,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t42_parse_font_matrix, %function
t42_parse_font_matrix:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #60
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	str	r3, [r7, #52]
	ldr	r3, [r7, #4]
	add	r3, r3, #436
	str	r3, [r7, #48]
	ldr	r3, [r7, #4]
	add	r3, r3, #452
	str	r3, [r7, #44]
	ldr	r3, [r7, #52]
	ldr	r4, [r3, #52]
	ldr	r2, [r7, #52]
	add	r3, r7, #12
	mov	r0, r2
	movs	r1, #6
	mov	r2, r3
	movs	r3, #0
	blx	r4
	str	r0, [r7, #40]
	ldr	r3, [r7, #40]
	cmp	r3, #5
	bgt	.L99
	ldr	r3, [r7, #52]
	movs	r2, #3
	str	r2, [r3, #12]
	b	.L98
.L99:
	ldr	r3, [r7, #24]
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L101
	ldr	r3, [r7, #52]
	movs	r2, #3
	str	r2, [r3, #12]
	b	.L98
.L101:
	ldr	r3, [r7, #36]
	cmp	r3, #65536
	beq	.L102
	ldr	r3, [r7, #12]
	mov	r0, r3
	ldr	r1, [r7, #36]
	bl	FT_DivFix(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #16]
	mov	r0, r3
	ldr	r1, [r7, #36]
	bl	FT_DivFix(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	mov	r0, r3
	ldr	r1, [r7, #36]
	bl	FT_DivFix(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #28]
	mov	r0, r3
	ldr	r1, [r7, #36]
	bl	FT_DivFix(PLT)
	mov	r3, r0
	str	r3, [r7, #28]
	ldr	r3, [r7, #32]
	mov	r0, r3
	ldr	r1, [r7, #36]
	bl	FT_DivFix(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bge	.L103
	movs	r3, #0
	movt	r3, 65535
	b	.L104
.L103:
	mov	r3, #65536
.L104:
	str	r3, [r7, #24]
.L102:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #48]
	str	r2, [r3]
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #48]
	str	r2, [r3, #8]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #48]
	str	r2, [r3, #4]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #48]
	str	r2, [r3, #12]
	ldr	r3, [r7, #28]
	asrs	r2, r3, #16
	ldr	r3, [r7, #44]
	str	r2, [r3]
	ldr	r3, [r7, #32]
	asrs	r2, r3, #16
	ldr	r3, [r7, #44]
	str	r2, [r3, #4]
.L98:
	adds	r7, r7, #60
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	t42_parse_font_matrix, .-t42_parse_font_matrix
	.section	.rodata
	.align	2
.LC25:
	.ascii	"StandardEncoding\000"
	.align	2
.LC26:
	.ascii	"ExpertEncoding\000"
	.align	2
.LC27:
	.ascii	"ISOLatin1Encoding\000"
	.section	.text.t42_parse_encoding,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t42_parse_encoding, %function
t42_parse_encoding:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #76
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #8]
	str	r3, [r7, #36]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #488]
	str	r3, [r7, #32]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #28]
	ldr	r2, [r7, #40]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #40]
	ldr	r3, [r3]
	str	r3, [r7, #60]
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L107
	ldr	r3, [r7, #40]
	movs	r2, #3
	str	r2, [r3, #12]
	b	.L106
.L107:
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #48
	cmp	r3, #9
	bls	.L109
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #91
	bne	.L110
.L109:
	ldr	r3, [r7, #4]
	add	r3, r3, #372
	str	r3, [r7, #28]
	ldr	r3, [r7]
	adds	r3, r3, #92
	str	r3, [r7, #24]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #16]
	str	r3, [r7, #20]
	movs	r3, #0
	strb	r3, [r7, #51]
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #91
	bne	.L111
	mov	r3, #256
	str	r3, [r7, #56]
	movs	r3, #1
	strb	r3, [r7, #51]
	ldr	r3, [r7, #40]
	ldr	r3, [r3]
	adds	r2, r3, #1
	ldr	r3, [r7, #40]
	str	r2, [r3]
	b	.L112
.L111:
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #36]
	ldr	r2, [r7, #40]
	mov	r0, r2
	blx	r3
	str	r0, [r7, #56]
.L112:
	ldr	r3, [r7, #56]
	cmp	r3, #256
	ble	.L113
	ldr	r3, [r7, #40]
	movs	r2, #3
	str	r2, [r3, #12]
	b	.L106
.L113:
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #28]
	ldr	r2, [r7, #40]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #40]
	ldr	r2, [r3]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L115
	b	.L106
.L115:
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L116
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #12]
	ldr	r0, [r7, #20]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #28]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #16]
	ldr	r0, [r7, #20]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #28]
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L116
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #48]
	ldr	r0, [r7, #24]
	blx	r3
.L116:
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #56]
	str	r2, [r3]
	ldr	r3, [r7, #28]
	ldr	r2, [r3]
	ldr	r3, [r7]
	str	r2, [r3, #88]
	movs	r3, #0
	str	r3, [sp]
	add	r3, r7, #8
	str	r3, [sp, #4]
	ldr	r0, [r7, #20]
	movs	r1, #2
	movs	r2, #0
	ldr	r3, [r7, #56]
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #28]
	str	r2, [r3, #12]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L117
	movs	r3, #0
	str	r3, [sp]
	add	r3, r7, #8
	str	r3, [sp, #4]
	ldr	r0, [r7, #20]
	movs	r1, #4
	movs	r2, #0
	ldr	r3, [r7, #56]
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #28]
	str	r2, [r3, #16]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L117
	ldr	r3, [r7, #32]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r0, [r7, #24]
	ldr	r1, [r7, #56]
	ldr	r2, [r7, #20]
	blx	r3
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L118
.L117:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #40]
	str	r2, [r3, #12]
	b	.L106
.L118:
	movs	r3, #0
	str	r3, [r7, #52]
	b	.L119
.L120:
	ldr	r3, .L139
.LPIC8:
	add	r3, pc
	str	r3, [r7, #16]
	ldr	r3, [r7, #24]
	ldr	r4, [r3, #44]
	ldr	r0, [r7, #24]
	ldr	r1, [r7, #52]
	ldr	r2, [r7, #16]
	movs	r3, #8
	blx	r4
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	str	r3, [r7, #52]
.L119:
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #56]
	cmp	r2, r3
	blt	.L120
	movs	r3, #0
	str	r3, [r7, #52]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #28]
	ldr	r2, [r7, #40]
	mov	r0, r2
	blx	r3
	b	.L121
.L135:
	ldr	r3, [r7, #40]
	ldr	r3, [r3]
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #100
	bne	.L122
	ldr	r3, [r7, #60]
	adds	r2, r3, #3
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcs	.L122
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #101
	bne	.L122
	ldr	r3, [r7, #60]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #102
	bne	.L122
	ldr	r3, [r7, #60]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	t42_is_space(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L122
	ldr	r3, [r7, #60]
	adds	r3, r3, #3
	str	r3, [r7, #60]
	b	.L123
.L122:
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #93
	bne	.L124
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
	b	.L123
.L124:
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #48
	cmp	r3, #9
	bls	.L125
	ldrb	r3, [r7, #51]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L126
.L125:
	ldrb	r3, [r7, #51]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L127
	ldr	r3, [r7, #52]
	str	r3, [r7, #44]
	b	.L128
.L127:
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #36]
	ldr	r2, [r7, #40]
	mov	r0, r2
	blx	r3
	str	r0, [r7, #44]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #28]
	ldr	r2, [r7, #40]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #40]
	ldr	r2, [r3]
	ldr	r3, [r7, #60]
	cmp	r2, r3
	bne	.L128
	ldr	r3, [r7, #40]
	movs	r2, #2
	str	r2, [r3, #12]
	b	.L106
.L128:
	ldr	r3, [r7, #40]
	ldr	r3, [r3]
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	adds	r2, r3, #2
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcs	.L129
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #47
	bne	.L129
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #56]
	cmp	r2, r3
	bge	.L129
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
	ldr	r3, [r7, #40]
	ldr	r2, [r7, #60]
	str	r2, [r3]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #32]
	ldr	r2, [r7, #40]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #40]
	ldr	r2, [r3]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L130
	b	.L106
.L130:
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L131
	b	.L106
.L131:
	ldr	r3, [r7, #40]
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7, #60]
	subs	r3, r2, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #24]
	ldr	r4, [r3, #44]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	ldr	r0, [r7, #24]
	ldr	r1, [r7, #44]
	ldr	r2, [r7, #60]
	blx	r4
	mov	r2, r0
	ldr	r3, [r7, #40]
	str	r2, [r3, #12]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L132
	b	.L106
.L132:
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #44]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	str	r3, [r7, #52]
	b	.L133
.L129:
	ldrb	r3, [r7, #51]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L133
	ldr	r3, [r7, #40]
	movs	r2, #2
	str	r2, [r3, #12]
	b	.L106
.L133:
	b	.L134
.L126:
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #32]
	ldr	r2, [r7, #40]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L134
	nop
	b	.L106
.L134:
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #28]
	ldr	r2, [r7, #40]
	mov	r0, r2
	blx	r3
.L121:
	ldr	r3, [r7, #40]
	ldr	r2, [r3]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L135
.L123:
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #368]
	ldr	r3, [r7, #40]
	ldr	r2, [r7, #60]
	str	r2, [r3]
	b	.L106
.L110:
	ldr	r3, [r7, #60]
	add	r2, r3, #17
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcs	.L136
	ldr	r0, [r7, #60]
	ldr	r3, .L139+4
.LPIC9:
	add	r3, pc
	mov	r1, r3
	movs	r2, #16
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L136
	ldr	r3, [r7, #4]
	movs	r2, #2
	str	r2, [r3, #368]
	b	.L106
.L136:
	ldr	r3, [r7, #60]
	add	r2, r3, #15
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcs	.L137
	ldr	r0, [r7, #60]
	ldr	r3, .L139+8
.LPIC10:
	add	r3, pc
	mov	r1, r3
	movs	r2, #14
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L137
	ldr	r3, [r7, #4]
	movs	r2, #4
	str	r2, [r3, #368]
	b	.L106
.L137:
	ldr	r3, [r7, #60]
	add	r2, r3, #18
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcs	.L138
	ldr	r0, [r7, #60]
	ldr	r3, .L139+12
.LPIC11:
	add	r3, pc
	mov	r1, r3
	movs	r2, #17
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L138
	ldr	r3, [r7, #4]
	movs	r2, #3
	str	r2, [r3, #368]
	b	.L106
.L138:
	ldr	r3, [r7, #40]
	movs	r2, #162
	str	r2, [r3, #12]
.L106:
	adds	r7, r7, #68
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L140:
	.align	2
.L139:
	.word	.LC0-(.LPIC8+4)
	.word	.LC25-(.LPIC9+4)
	.word	.LC26-(.LPIC10+4)
	.word	.LC27-(.LPIC11+4)
	.size	t42_parse_encoding, .-t42_parse_encoding
	.section	.text.t42_parse_sfnts,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t42_parse_sfnts, %function
t42_parse_sfnts:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #100
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #16]
	str	r3, [r7, #44]
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #8]
	str	r3, [r7, #40]
	movs	r3, #0
	str	r3, [r7, #84]
	movs	r3, #0
	str	r3, [r7, #64]
	movs	r3, #0
	strb	r3, [r7, #63]
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #28]
	ldr	r2, [r7, #48]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #48]
	ldr	r2, [r3]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bcs	.L142
	ldr	r3, [r7, #48]
	ldr	r3, [r3]
	adds	r1, r3, #1
	ldr	r2, [r7, #48]
	str	r1, [r2]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #91
	beq	.L143
.L142:
	movs	r3, #3
	str	r3, [r7, #16]
	b	.L144
.L143:
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #28]
	ldr	r2, [r7, #48]
	mov	r0, r2
	blx	r3
	movs	r3, #0
	str	r3, [r7, #56]
	movs	r3, #0
	str	r3, [r7, #72]
	movs	r3, #0
	str	r3, [r7, #68]
	movs	r3, #0
	str	r3, [r7, #80]
	b	.L145
.L175:
	ldr	r3, [r7, #48]
	ldr	r3, [r3]
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #93
	bne	.L146
	ldr	r3, [r7, #48]
	ldr	r3, [r3]
	adds	r2, r3, #1
	ldr	r3, [r7, #48]
	str	r2, [r3]
	b	.L147
.L146:
	ldr	r3, [r7, #36]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #60
	bne	.L148
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #32]
	ldr	r2, [r7, #48]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L149
	b	.L147
.L149:
	ldr	r3, [r7, #48]
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7, #36]
	subs	r3, r2, r3
	subs	r3, r3, #1
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	str	r3, [r7, #72]
	ldr	r3, [r7, #72]
	cmp	r3, #0
	bne	.L150
	movs	r3, #3
	str	r3, [r7, #16]
	b	.L144
.L150:
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #72]
	ldr	r1, [r7, #64]
	str	r1, [sp]
	add	r1, r7, #16
	str	r1, [sp, #4]
	ldr	r0, [r7, #44]
	movs	r1, #1
	bl	ft_mem_realloc(PLT)
	str	r0, [r7, #64]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L151
	b	.L144
.L151:
	movs	r3, #1
	strb	r3, [r7, #63]
	ldr	r3, [r7, #48]
	ldr	r2, [r7, #36]
	str	r2, [r3]
	ldr	r3, [r7, #48]
	ldr	r4, [r3, #44]
	ldr	r2, [r7, #48]
	add	r3, r7, #12
	movs	r1, #1
	str	r1, [sp]
	mov	r0, r2
	ldr	r1, [r7, #64]
	ldr	r2, [r7, #72]
	blx	r4
	ldr	r3, [r7, #72]
	str	r3, [r7, #68]
	ldr	r3, [r7, #12]
	str	r3, [r7, #72]
	b	.L152
.L148:
	ldr	r3, [r7, #36]
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #48
	cmp	r3, #9
	bhi	.L152
	ldrb	r3, [r7, #63]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L153
	movs	r3, #3
	str	r3, [r7, #16]
	b	.L144
.L153:
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #36]
	ldr	r2, [r7, #48]
	mov	r0, r2
	blx	r3
	str	r0, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bge	.L154
	movs	r3, #3
	str	r3, [r7, #16]
	b	.L144
.L154:
	ldr	r3, [r7, #32]
	str	r3, [r7, #72]
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #32]
	ldr	r2, [r7, #48]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L155
	b	.L141
.L155:
	ldr	r3, [r7, #48]
	ldr	r3, [r3]
	adds	r3, r3, #1
	str	r3, [r7, #64]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #48]
	ldr	r3, [r3]
	subs	r3, r2, r3
	mov	r2, r3
	ldr	r3, [r7, #72]
	cmp	r2, r3
	bhi	.L157
	movs	r3, #3
	str	r3, [r7, #16]
	b	.L144
.L157:
	ldr	r3, [r7, #48]
	ldr	r2, [r3]
	ldr	r3, [r7, #72]
	adds	r3, r3, #1
	add	r2, r2, r3
	ldr	r3, [r7, #48]
	str	r2, [r3]
.L152:
	ldr	r3, [r7, #64]
	cmp	r3, #0
	bne	.L158
	movs	r3, #3
	str	r3, [r7, #16]
	b	.L144
.L158:
	ldr	r3, [r7, #72]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L159
	ldr	r3, [r7, #72]
	subs	r3, r3, #1
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L159
	ldr	r3, [r7, #72]
	subs	r3, r3, #1
	str	r3, [r7, #72]
.L159:
	ldr	r3, [r7, #72]
	cmp	r3, #0
	bne	.L160
	movs	r3, #3
	str	r3, [r7, #16]
	b	.L144
.L160:
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #48]
	ldr	r3, [r3]
	subs	r3, r2, r3
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #76]
	b	.L161
.L174:
	ldr	r3, [r7, #56]
	cmp	r3, #1
	beq	.L163
	cmp	r3, #1
	bcc	.L164
	cmp	r3, #2
	beq	.L165
	b	.L162
.L164:
	ldr	r3, [r7, #80]
	cmp	r3, #11
	bgt	.L166
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #492]
	ldr	r3, [r7, #80]
	adds	r1, r3, #1
	str	r1, [r7, #80]
	add	r3, r3, r2
	ldr	r1, [r7, #64]
	ldr	r2, [r7, #76]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	b	.L162
.L166:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #492]
	adds	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #4
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #492]
	adds	r3, r3, #5
	ldrb	r3, [r3]	@ zero_extendqisi2
	add	r3, r3, r2
	str	r3, [r7, #84]
	movs	r3, #1
	str	r3, [r7, #56]
	ldr	r3, [r7, #84]
	lsls	r3, r3, #4
	add	r2, r3, #12
	ldr	r3, [r7, #4]
	str	r2, [r3, #496]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #496]
	cmp	r2, r3
	bge	.L167
	movs	r3, #3
	str	r3, [r7, #16]
	b	.L144
.L167:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #496]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #492]
	str	r2, [sp]
	add	r2, r7, #16
	str	r2, [sp, #4]
	ldr	r0, [r7, #44]
	movs	r1, #1
	movs	r2, #12
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #492]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L163
	b	.L144
.L163:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #496]
	ldr	r3, [r7, #80]
	cmp	r2, r3
	ble	.L168
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #492]
	ldr	r3, [r7, #80]
	adds	r1, r3, #1
	str	r1, [r7, #80]
	add	r3, r3, r2
	ldr	r1, [r7, #64]
	ldr	r2, [r7, #76]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	b	.L162
.L168:
	movs	r3, #0
	str	r3, [r7, #52]
	b	.L169
.L172:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #492]
	ldr	r3, [r7, #52]
	lsls	r3, r3, #4
	adds	r3, r3, #24
	add	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #24]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #24]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bhi	.L170
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #496]
	ldr	r1, [r7, #28]
	ldr	r3, [r7, #20]
	subs	r3, r1, r3
	cmp	r2, r3
	ble	.L171
.L170:
	movs	r3, #3
	str	r3, [r7, #16]
	b	.L144
.L171:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #496]
	ldr	r3, [r7, #20]
	adds	r3, r3, #3
	bic	r3, r3, #3
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #496]
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	str	r3, [r7, #52]
.L169:
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #84]
	cmp	r2, r3
	blt	.L172
	movs	r3, #2
	str	r3, [r7, #56]
	ldr	r3, [r7, #84]
	lsls	r3, r3, #4
	add	r2, r3, #12
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #496]
	adds	r3, r3, #1
	ldr	r1, [r7, #4]
	ldr	r1, [r1, #492]
	str	r1, [sp]
	add	r1, r7, #16
	str	r1, [sp, #4]
	ldr	r0, [r7, #44]
	movs	r1, #1
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #492]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L165
	b	.L144
.L165:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #496]
	ldr	r3, [r7, #80]
	cmp	r2, r3
	bgt	.L173
	movs	r3, #3
	str	r3, [r7, #16]
	b	.L144
.L173:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #492]
	ldr	r3, [r7, #80]
	adds	r1, r3, #1
	str	r1, [r7, #80]
	add	r3, r3, r2
	ldr	r1, [r7, #64]
	ldr	r2, [r7, #76]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
.L162:
	ldr	r3, [r7, #76]
	adds	r3, r3, #1
	str	r3, [r7, #76]
.L161:
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #72]
	cmp	r2, r3
	bcc	.L174
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #28]
	ldr	r2, [r7, #48]
	mov	r0, r2
	blx	r3
.L145:
	ldr	r3, [r7, #48]
	ldr	r2, [r3]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bcc	.L175
	movs	r3, #3
	str	r3, [r7, #16]
.L144:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #48]
	str	r2, [r3, #12]
.L147:
	ldrb	r3, [r7, #63]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L141
	ldr	r0, [r7, #44]
	ldr	r1, [r7, #64]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #64]
.L141:
	adds	r7, r7, #92
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	t42_parse_sfnts, .-t42_parse_sfnts
	.section	.text.t42_parse_charstrings,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t42_parse_charstrings, %function
t42_parse_charstrings:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #68
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	str	r3, [r7, #40]
	ldr	r3, [r7]
	adds	r3, r3, #200
	str	r3, [r7, #36]
	ldr	r3, [r7]
	adds	r3, r3, #148
	str	r3, [r7, #32]
	ldr	r3, [r7]
	adds	r3, r3, #252
	str	r3, [r7, #28]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #16]
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #488]
	str	r3, [r7, #20]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #8]
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #52]
	movs	r3, #0
	strb	r3, [r7, #51]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #28]
	ldr	r2, [r7, #40]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #40]
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bcc	.L179
	movs	r3, #3
	str	r3, [r7, #60]
	b	.L180
.L179:
	ldr	r3, [r7, #40]
	ldr	r3, [r3]
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #48
	cmp	r3, #9
	bhi	.L181
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #36]
	ldr	r2, [r7, #40]
	mov	r0, r2
	blx	r3
	mov	r2, r0
	ldr	r3, [r7]
	str	r2, [r3, #144]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L182
	b	.L178
.L182:
	ldr	r3, [r7]
	ldr	r3, [r3, #144]
	cmp	r3, #0
	bge	.L184
	movs	r3, #3
	str	r3, [r7, #60]
	b	.L180
.L184:
	ldr	r3, [r7]
	ldr	r2, [r3, #144]
	ldr	r1, [r7, #16]
	ldr	r3, [r7, #40]
	ldr	r3, [r3]
	subs	r3, r1, r3
	asrs	r3, r3, #2
	cmp	r2, r3
	ble	.L186
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #40]
	ldr	r3, [r3]
	subs	r3, r2, r3
	asrs	r2, r3, #2
	ldr	r3, [r7]
	str	r2, [r3, #144]
	b	.L186
.L181:
	ldr	r3, [r7, #40]
	ldr	r3, [r3]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #60
	bne	.L187
	movs	r3, #0
	str	r3, [r7, #44]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #32]
	ldr	r2, [r7, #40]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L188
	b	.L178
.L188:
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #28]
	ldr	r2, [r7, #40]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #40]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	b	.L189
.L194:
	ldr	r3, [r7, #40]
	ldr	r3, [r3]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #47
	bne	.L190
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	str	r3, [r7, #44]
	b	.L191
.L190:
	ldr	r3, [r7, #40]
	ldr	r3, [r3]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #62
	bne	.L191
	ldr	r3, [r7]
	ldr	r2, [r7, #44]
	str	r2, [r3, #144]
	ldr	r3, [r7, #40]
	ldr	r2, [r7, #12]
	str	r2, [r3]
	b	.L192
.L191:
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #32]
	ldr	r2, [r7, #40]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L193
	b	.L178
.L193:
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #28]
	ldr	r2, [r7, #40]
	mov	r0, r2
	blx	r3
.L189:
	ldr	r3, [r7, #40]
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bcc	.L194
.L192:
	b	.L186
.L187:
	movs	r3, #3
	str	r3, [r7, #60]
	b	.L180
.L186:
	ldr	r3, [r7, #40]
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bcc	.L195
	movs	r3, #3
	str	r3, [r7, #60]
	b	.L180
.L195:
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L196
	movs	r3, #3
	str	r3, [r7, #60]
	b	.L180
.L196:
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r2, [r7]
	ldr	r2, [r2, #144]
	ldr	r0, [r7, #36]
	mov	r1, r2
	ldr	r2, [r7, #24]
	blx	r3
	str	r0, [r7, #60]
	ldr	r3, [r7, #60]
	cmp	r3, #0
	beq	.L197
	b	.L180
.L197:
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r2, [r7]
	ldr	r2, [r2, #144]
	ldr	r0, [r7, #32]
	mov	r1, r2
	ldr	r2, [r7, #24]
	blx	r3
	str	r0, [r7, #60]
	ldr	r3, [r7, #60]
	cmp	r3, #0
	beq	.L198
	b	.L180
.L198:
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r0, [r7, #28]
	movs	r1, #4
	ldr	r2, [r7, #24]
	blx	r3
	str	r0, [r7, #60]
	ldr	r3, [r7, #60]
	cmp	r3, #0
	beq	.L199
	b	.L180
.L199:
	movs	r3, #0
	str	r3, [r7, #56]
.L212:
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #28]
	ldr	r2, [r7, #40]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #40]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bcc	.L200
	b	.L201
.L200:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #101
	bne	.L202
	ldr	r3, [r7, #12]
	adds	r2, r3, #3
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bcs	.L202
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #110
	bne	.L202
	ldr	r3, [r7, #12]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #100
	bne	.L202
	ldr	r3, [r7, #12]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	t42_is_space(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L202
	b	.L201
.L202:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #62
	bne	.L203
	b	.L201
.L203:
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #32]
	ldr	r2, [r7, #40]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #40]
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bcc	.L204
	movs	r3, #3
	str	r3, [r7, #60]
	b	.L180
.L204:
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L205
	b	.L178
.L205:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #47
	bne	.L206
	ldr	r3, [r7, #12]
	adds	r2, r3, #2
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bcc	.L207
	movs	r3, #3
	str	r3, [r7, #60]
	b	.L180
.L207:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r3, [r7, #40]
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7, #12]
	subs	r3, r2, r3
	str	r3, [r7, #8]
	ldr	r3, [r7, #32]
	ldr	r4, [r3, #44]
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	ldr	r0, [r7, #32]
	ldr	r1, [r7, #56]
	ldr	r2, [r7, #12]
	blx	r4
	str	r0, [r7, #60]
	ldr	r3, [r7, #60]
	cmp	r3, #0
	beq	.L208
	b	.L180
.L208:
	ldr	r3, [r7, #32]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #56]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #46
	bne	.L209
	ldr	r3, [r7, #32]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #56]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, .L222
.LPIC12:
	add	r2, pc
	mov	r0, r2
	mov	r1, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L209
	ldr	r3, [r7, #56]
	str	r3, [r7, #52]
	movs	r3, #1
	strb	r3, [r7, #51]
.L209:
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #28]
	ldr	r2, [r7, #40]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #40]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #36]
	ldr	r2, [r7, #40]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #40]
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bcc	.L210
	movs	r3, #3
	str	r3, [r7, #60]
	b	.L180
.L210:
	ldr	r3, [r7, #40]
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7, #12]
	subs	r3, r2, r3
	str	r3, [r7, #8]
	ldr	r3, [r7, #36]
	ldr	r4, [r3, #44]
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	ldr	r0, [r7, #36]
	ldr	r1, [r7, #56]
	ldr	r2, [r7, #12]
	blx	r4
	str	r0, [r7, #60]
	ldr	r3, [r7, #60]
	cmp	r3, #0
	beq	.L211
	b	.L180
.L211:
	ldr	r3, [r7, #36]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #56]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	str	r3, [r7, #56]
	ldr	r3, [r7]
	ldr	r2, [r3, #144]
	ldr	r3, [r7, #56]
	cmp	r2, r3
	bgt	.L206
	b	.L201
.L206:
	b	.L212
.L201:
	ldr	r3, [r7]
	ldr	r2, [r7, #56]
	str	r2, [r3, #144]
	ldrb	r3, [r7, #51]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L213
	movs	r3, #3
	str	r3, [r7, #60]
	b	.L180
.L213:
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #24]
	ldr	r3, [r3]
	ldr	r2, .L222+4
.LPIC13:
	add	r2, pc
	mov	r0, r2
	mov	r1, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L214
	ldr	r3, [r7, #28]
	ldr	r4, [r3, #44]
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #24]
	ldr	r2, [r3]
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #28]
	ldr	r3, [r3]
	ldr	r0, [r7, #28]
	movs	r1, #0
	blx	r4
	str	r0, [r7, #60]
	ldr	r3, [r7, #60]
	cmp	r3, #0
	beq	.L215
	b	.L180
.L215:
	ldr	r3, [r7, #28]
	ldr	r4, [r3, #44]
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #24]
	ldr	r2, [r3]
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #28]
	ldr	r3, [r3]
	ldr	r0, [r7, #28]
	movs	r1, #1
	blx	r4
	str	r0, [r7, #60]
	ldr	r3, [r7, #60]
	cmp	r3, #0
	beq	.L216
	b	.L180
.L216:
	ldr	r3, [r7, #28]
	ldr	r4, [r3, #44]
	ldr	r3, [r7, #32]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #52]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #32]
	ldr	r1, [r3, #28]
	ldr	r3, [r7, #52]
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r3, [r3]
	ldr	r0, [r7, #28]
	movs	r1, #2
	blx	r4
	str	r0, [r7, #60]
	ldr	r3, [r7, #60]
	cmp	r3, #0
	beq	.L217
	b	.L180
.L217:
	ldr	r3, [r7, #28]
	ldr	r4, [r3, #44]
	ldr	r3, [r7, #36]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #52]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #36]
	ldr	r1, [r3, #28]
	ldr	r3, [r7, #52]
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r3, [r3]
	ldr	r0, [r7, #28]
	movs	r1, #3
	blx	r4
	str	r0, [r7, #60]
	ldr	r3, [r7, #60]
	cmp	r3, #0
	beq	.L218
	b	.L180
.L218:
	ldr	r3, [r7, #32]
	ldr	r4, [r3, #44]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #24]
	ldr	r2, [r3]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #28]
	ldr	r3, [r3]
	ldr	r0, [r7, #32]
	ldr	r1, [r7, #52]
	blx	r4
	str	r0, [r7, #60]
	ldr	r3, [r7, #60]
	cmp	r3, #0
	beq	.L219
	b	.L180
.L219:
	ldr	r3, [r7, #36]
	ldr	r4, [r3, #44]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #24]
	adds	r3, r3, #4
	ldr	r2, [r3]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #28]
	adds	r3, r3, #4
	ldr	r3, [r3]
	ldr	r0, [r7, #36]
	ldr	r1, [r7, #52]
	blx	r4
	str	r0, [r7, #60]
	ldr	r3, [r7, #60]
	cmp	r3, #0
	beq	.L220
	b	.L180
.L220:
	ldr	r3, [r7, #32]
	ldr	r4, [r3, #44]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #24]
	adds	r3, r3, #8
	ldr	r2, [r3]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #28]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r0, [r7, #32]
	movs	r1, #0
	blx	r4
	str	r0, [r7, #60]
	ldr	r3, [r7, #60]
	cmp	r3, #0
	beq	.L221
	b	.L180
.L221:
	ldr	r3, [r7, #36]
	ldr	r4, [r3, #44]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #24]
	adds	r3, r3, #12
	ldr	r2, [r3]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #28]
	adds	r3, r3, #12
	ldr	r3, [r3]
	ldr	r0, [r7, #36]
	movs	r1, #0
	blx	r4
	str	r0, [r7, #60]
	ldr	r3, [r7, #60]
	cmp	r3, #0
	beq	.L214
	b	.L180
.L214:
	b	.L178
.L180:
	ldr	r3, [r7, #40]
	ldr	r2, [r7, #60]
	str	r2, [r3, #12]
.L178:
	adds	r7, r7, #68
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L223:
	.align	2
.L222:
	.word	.LC0-(.LPIC12+4)
	.word	.LC0-(.LPIC13+4)
	.size	t42_parse_charstrings, .-t42_parse_charstrings
	.section	.text.t42_load_keyword,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t42_load_keyword, %function
t42_load_keyword:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #44
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #11
	bne	.L225
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	blx	r3
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	str	r3, [r7, #28]
	b	.L226
.L225:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #3
	beq	.L228
	cmp	r3, #5
	beq	.L229
	cmp	r3, #2
	beq	.L230
	b	.L235
.L228:
	ldr	r3, [r7, #12]
	adds	r3, r3, #132
	str	r3, [r7, #16]
	b	.L231
.L230:
	ldr	r3, [r7, #12]
	adds	r3, r3, #164
	str	r3, [r7, #16]
	b	.L231
.L229:
	ldr	r3, [r7, #12]
	add	r3, r3, #460
	str	r3, [r7, #16]
	b	.L231
.L235:
	ldr	r3, [r7, #12]
	adds	r3, r3, #132
	str	r3, [r7, #16]
.L231:
	add	r3, r7, #16
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #9
	beq	.L232
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #10
	bne	.L233
.L232:
	ldr	r3, [r7, #8]
	ldr	r4, [r3, #68]
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [sp]
	mov	r0, r3
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #24]
	blx	r4
	str	r0, [r7, #28]
	b	.L226
.L233:
	ldr	r3, [r7, #8]
	ldr	r4, [r3, #64]
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [sp]
	mov	r0, r3
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #24]
	blx	r4
	str	r0, [r7, #28]
.L226:
	ldr	r3, [r7, #28]
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	t42_load_keyword, .-t42_load_keyword
	.section	.rodata
	.align	2
.LC28:
	.ascii	"FontDirectory\000"
	.align	2
.LC29:
	.ascii	"known\000"
	.section	.text.t42_parse_dict,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t42_parse_dict, %function
t42_parse_dict:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #64
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #8]
	str	r3, [r7, #48]
	movs	r3, #20
	str	r3, [r7, #44]
	ldr	r3, [r7, #48]
	ldr	r2, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7]
	ldr	r2, [r7, #4]
	add	r2, r2, r3
	ldr	r3, [r7, #48]
	str	r2, [r3, #8]
	ldr	r3, [r7, #48]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #8]
	str	r3, [r7, #40]
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #28]
	ldr	r2, [r7, #48]
	mov	r0, r2
	blx	r3
	b	.L237
.L257:
	ldr	r3, [r7, #48]
	ldr	r3, [r3]
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #70
	bne	.L238
	ldr	r3, [r7, #60]
	add	r2, r3, #25
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bcs	.L238
	ldr	r0, [r7, #60]
	ldr	r3, .L258
.LPIC14:
	add	r3, pc
	mov	r1, r3
	movs	r2, #13
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L238
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #32]
	ldr	r2, [r7, #48]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #28]
	ldr	r2, [r7, #48]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #48]
	ldr	r3, [r3]
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	str	r3, [r7, #60]
	b	.L239
.L244:
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #107
	bne	.L240
	ldr	r3, [r7, #60]
	adds	r2, r3, #5
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bcs	.L240
	ldr	r0, [r7, #60]
	ldr	r3, .L258+4
.LPIC15:
	add	r3, pc
	mov	r1, r3
	movs	r2, #5
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L240
	b	.L241
.L240:
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #32]
	ldr	r2, [r7, #48]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L242
	b	.L243
.L242:
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #28]
	ldr	r2, [r7, #48]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #48]
	ldr	r3, [r3]
	str	r3, [r7, #60]
.L239:
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bcc	.L244
.L241:
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bcs	.L245
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #32]
	ldr	r2, [r7, #48]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #56]
	ldr	r1, [r7, #48]
	add	r2, r7, #16
	mov	r0, r1
	mov	r1, r2
	blx	r3
	ldr	r3, [r7, #24]
	cmp	r3, #3
	bne	.L245
	ldr	r3, [r7, #48]
	ldr	r3, [r3]
	str	r3, [r7, #56]
.L245:
	ldr	r3, [r7, #48]
	ldr	r2, [r7, #56]
	str	r2, [r3]
	b	.L247
.L238:
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #47
	bne	.L248
	ldr	r3, [r7, #60]
	adds	r2, r3, #2
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bcs	.L248
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
	ldr	r3, [r7, #48]
	ldr	r2, [r7, #60]
	str	r2, [r3]
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #32]
	ldr	r2, [r7, #48]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L249
	b	.L243
.L249:
	ldr	r3, [r7, #48]
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7, #60]
	subs	r3, r2, r3
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L250
	ldr	r3, [r7, #36]
	cmp	r3, #21
	bhi	.L250
	ldr	r3, [r7, #48]
	ldr	r2, [r3]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bcs	.L250
	movs	r3, #0
	str	r3, [r7, #52]
	b	.L251
.L256:
	ldr	r2, [r7, #52]
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, .L258+8
.LPIC16:
	add	r2, pc
	add	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	ldr	r3, [r3]
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L252
	b	.L253
.L252:
	ldr	r3, [r7, #60]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #28]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L253
	ldr	r0, [r7, #28]
	bl	strlen(PLT)
	mov	r2, r0
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bne	.L253
	ldr	r0, [r7, #60]
	ldr	r1, [r7, #28]
	ldr	r2, [r7, #36]
	bl	memcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L253
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #32]
	bl	t42_load_keyword(PLT)
	mov	r2, r0
	ldr	r3, [r7, #48]
	str	r2, [r3, #12]
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L254
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #12]
	b	.L255
.L254:
	b	.L250
.L253:
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	str	r3, [r7, #52]
.L251:
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #44]
	cmp	r2, r3
	blt	.L256
.L250:
	b	.L247
.L248:
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #32]
	ldr	r2, [r7, #48]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L247
	b	.L243
.L247:
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #28]
	ldr	r2, [r7, #48]
	mov	r0, r2
	blx	r3
.L237:
	ldr	r3, [r7, #48]
	ldr	r2, [r3]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bcc	.L257
.L243:
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #12]
.L255:
	mov	r0, r3
	adds	r7, r7, #64
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L259:
	.align	2
.L258:
	.word	.LC28-(.LPIC14+4)
	.word	.LC29-(.LPIC15+4)
	.word	t42_keywords-(.LPIC16+4)
	.size	t42_parse_dict, .-t42_parse_dict
	.section	.text.t42_loader_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t42_loader_init, %function
t42_loader_init:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	movs	r1, #0
	mov	r2, #304
	bl	memset(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #144]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #88]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #104]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #212]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #160]
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	t42_loader_init, .-t42_loader_init
	.section	.text.t42_loader_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t42_loader_done, %function
t42_loader_done:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #140]
	cmp	r3, #0
	beq	.L262
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #140]
	ldr	r2, [r7, #4]
	adds	r2, r2, #92
	mov	r0, r2
	blx	r3
.L262:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #248]
	cmp	r3, #0
	beq	.L263
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #248]
	ldr	r2, [r7, #4]
	adds	r2, r2, #200
	mov	r0, r2
	blx	r3
.L263:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #196]
	cmp	r3, #0
	beq	.L264
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #196]
	ldr	r2, [r7, #4]
	adds	r2, r2, #148
	mov	r0, r2
	blx	r3
.L264:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #300]
	cmp	r3, #0
	beq	.L265
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #300]
	ldr	r2, [r7, #4]
	adds	r2, r2, #252
	mov	r0, r2
	blx	r3
.L265:
	ldr	r0, [r7, #12]
	bl	t42_parser_done(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	t42_loader_done, .-t42_loader_done
	.section	.text.t42_get_glyph_name,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t42_get_glyph_name, %function
t42_get_glyph_name:
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
	ldr	r2, [r3, #420]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r0, [r7, #4]
	mov	r1, r3
	ldr	r2, [r7]
	bl	ft_mem_strcpyn(PLT)
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	t42_get_glyph_name, .-t42_get_glyph_name
	.section	.text.t42_get_name_index,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t42_get_name_index, %function
t42_get_name_index:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L269
.L272:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #420]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #8]
	ldr	r3, [r7]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L270
	ldr	r0, [r7]
	ldr	r1, [r7, #8]
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L270
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #424]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	mov	r0, r3
	bl	atol(PLT)
	mov	r3, r0
	b	.L271
.L270:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L269:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #416]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bgt	.L272
	movs	r3, #0
.L271:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	t42_get_name_index, .-t42_get_name_index
	.section	.data.rel.ro.local.t42_service_glyph_dict,"aw",%progbits
	.align	2
	.type	t42_service_glyph_dict, %object
	.size	t42_service_glyph_dict, 8
t42_service_glyph_dict:
	.word	t42_get_glyph_name
	.word	t42_get_name_index
	.section	.text.t42_get_ps_font_name,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t42_get_ps_font_name, %function
t42_get_ps_font_name:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #364]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	t42_get_ps_font_name, .-t42_get_ps_font_name
	.section	.data.rel.ro.local.t42_service_ps_font_name,"aw",%progbits
	.align	2
	.type	t42_service_ps_font_name, %object
	.size	t42_service_ps_font_name, 4
t42_service_ps_font_name:
	.word	t42_get_ps_font_name
	.section	.text.t42_ps_get_font_info,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t42_ps_get_font_info, %function
t42_ps_get_font_info:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	mov	r4, r2
	add	r5, r3, #132
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5, {r0, r1, r2, r3}
	stmia	r4, {r0, r1, r2, r3}
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7}
	bx	lr
	.size	t42_ps_get_font_info, .-t42_ps_get_font_info
	.section	.text.t42_ps_get_font_extra,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t42_ps_get_font_extra, %function
t42_ps_get_font_extra:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r2, [r7, #4]
	ldrh	r2, [r2, #164]	@ movhi
	strh	r2, [r3]	@ movhi
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	t42_ps_get_font_extra, .-t42_ps_get_font_extra
	.section	.text.t42_ps_has_glyph_names,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t42_ps_has_glyph_names, %function
t42_ps_has_glyph_names:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	t42_ps_has_glyph_names, .-t42_ps_has_glyph_names
	.section	.text.t42_ps_get_font_private,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t42_ps_get_font_private, %function
t42_ps_get_font_private:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	mov	r1, r2
	add	r2, r3, #168
	movs	r3, #196
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	memcpy(PLT)
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	t42_ps_get_font_private, .-t42_ps_get_font_private
	.section	.data.rel.ro.local.t42_service_ps_info,"aw",%progbits
	.align	2
	.type	t42_service_ps_info, %object
	.size	t42_service_ps_info, 20
t42_service_ps_info:
	.word	t42_ps_get_font_info
	.word	t42_ps_get_font_extra
	.word	t42_ps_has_glyph_names
	.word	t42_ps_get_font_private
	.word	0
	.section	.rodata
	.align	2
.LC30:
	.ascii	"glyph-dict\000"
	.align	2
.LC31:
	.ascii	"postscript-font-name\000"
	.align	2
.LC32:
	.ascii	"postscript-info\000"
	.align	2
.LC33:
	.ascii	"font-format\000"
	.align	2
.LC34:
	.ascii	"Type 42\000"
	.section	.data.rel.ro.local.t42_services,"aw",%progbits
	.align	2
	.type	t42_services, %object
	.size	t42_services, 40
t42_services:
	.word	.LC30
	.word	t42_service_glyph_dict
	.word	.LC31
	.word	t42_service_ps_font_name
	.word	.LC32
	.word	t42_service_ps_info
	.word	.LC33
	.word	.LC34
	.word	0
	.word	0
	.section	.text.T42_Get_Interface,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	T42_Get_Interface, %function
T42_Get_Interface:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, .L285
.LPIC17:
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
.L286:
	.align	2
.L285:
	.word	t42_services-(.LPIC17+4)
	.size	T42_Get_Interface, .-T42_Get_Interface
	.global	t42_driver_class
	.section	.rodata
	.align	2
.LC35:
	.ascii	"type42\000"
	.section	.data.rel.ro.local.t42_driver_class,"aw",%progbits
	.align	2
	.type	t42_driver_class, %object
	.size	t42_driver_class, 96
t42_driver_class:
	.word	1281
	.word	32
	.word	.LC35
	.word	65536
	.word	131072
	.word	0
	.word	T42_Driver_Init
	.word	T42_Driver_Done
	.word	T42_Get_Interface
	.word	560
	.word	48
	.word	164
	.word	T42_Face_Init
	.word	T42_Face_Done
	.word	T42_Size_Init
	.word	T42_Size_Done
	.word	T42_GlyphSlot_Init
	.word	T42_GlyphSlot_Done
	.word	T42_GlyphSlot_Load
	.word	0
	.word	0
	.word	0
	.word	T42_Size_Request
	.word	T42_Size_Select
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
