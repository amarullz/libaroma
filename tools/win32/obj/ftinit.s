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
	.file	"ftinit.c"
	.section	.data.rel.ro.ft_default_modules,"aw",%progbits
	.align	2
	.type	ft_default_modules, %object
	.size	ft_default_modules, 76
ft_default_modules:
	.word	autofit_module_class
	.word	tt_driver_class
	.word	t1_driver_class
	.word	cff_driver_class
	.word	t1cid_driver_class
	.word	pfr_driver_class
	.word	t42_driver_class
	.word	winfnt_driver_class
	.word	pcf_driver_class
	.word	psaux_module_class
	.word	psnames_module_class
	.word	pshinter_module_class
	.word	ft_raster1_renderer_class
	.word	sfnt_module_class
	.word	ft_smooth_renderer_class
	.word	ft_smooth_lcd_renderer_class
	.word	ft_smooth_lcdv_renderer_class
	.word	bdf_driver_class
	.word	0
	.section	.text.FT_Add_Default_Modules,"ax",%progbits
	.align	2
	.global	FT_Add_Default_Modules
	.thumb
	.thumb_func
	.type	FT_Add_Default_Modules, %function
FT_Add_Default_Modules:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, .L4
.LPIC0:
	add	r3, pc
	str	r3, [r7, #12]
	b	.L2
.L3:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	FT_Add_Module(PLT)
	str	r0, [r7, #8]
	ldr	r3, [r7, #12]
	adds	r3, r3, #4
	str	r3, [r7, #12]
.L2:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L5:
	.align	2
.L4:
	.word	ft_default_modules-(.LPIC0+4)
	.size	FT_Add_Default_Modules, .-FT_Add_Default_Modules
	.section	.text.FT_Init_FreeType,"ax",%progbits
	.align	2
	.global	FT_Init_FreeType
	.thumb
	.thumb_func
	.type	FT_Init_FreeType, %function
FT_Init_FreeType:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	bl	FT_New_Memory(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L7
	movs	r3, #7
	b	.L8
.L7:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	bl	FT_New_Library(PLT)
	str	r0, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L9
	ldr	r0, [r7, #12]
	bl	FT_Done_Memory(PLT)
	b	.L10
.L9:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r3
	bl	FT_Add_Default_Modules(PLT)
.L10:
	ldr	r3, [r7, #8]
.L8:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Init_FreeType, .-FT_Init_FreeType
	.section	.text.FT_Done_FreeType,"ax",%progbits
	.align	2
	.global	FT_Done_FreeType
	.thumb
	.thumb_func
	.type	FT_Done_FreeType, %function
FT_Done_FreeType:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L12
	movs	r3, #33
	b	.L13
.L12:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r0, [r7, #4]
	bl	FT_Done_Library(PLT)
	ldr	r0, [r7, #12]
	bl	FT_Done_Memory(PLT)
	movs	r3, #0
.L13:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Done_FreeType, .-FT_Done_FreeType
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
