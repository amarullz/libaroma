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
	.file	"hb-ucdn.cc"
	.section	.text._ZL23hb_ucdn_combining_classP18hb_unicode_funcs_tjPv,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL23hb_ucdn_combining_classP18hb_unicode_funcs_tjPv, %function
_ZL23hb_ucdn_combining_classP18hb_unicode_funcs_tjPv:
	.fnstart
.LFB94:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r0, [r7, #8]
	bl	ucdn_get_combining_class(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL23hb_ucdn_combining_classP18hb_unicode_funcs_tjPv, .-_ZL23hb_ucdn_combining_classP18hb_unicode_funcs_tjPv
	.section	.text._ZL23hb_ucdn_eastasian_widthP18hb_unicode_funcs_tjPv,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL23hb_ucdn_eastasian_widthP18hb_unicode_funcs_tjPv, %function
_ZL23hb_ucdn_eastasian_widthP18hb_unicode_funcs_tjPv:
	.fnstart
.LFB95:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #24
	sub	sp, sp, #24
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r0, [r7, #8]
	bl	ucdn_get_east_asian_width(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L4
	ldr	r3, [r7, #20]
	cmp	r3, #2
	bne	.L5
.L4:
	movs	r3, #2
	b	.L6
.L5:
	movs	r3, #1
.L6:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL23hb_ucdn_eastasian_widthP18hb_unicode_funcs_tjPv, .-_ZL23hb_ucdn_eastasian_widthP18hb_unicode_funcs_tjPv
	.section	.text._ZL24hb_ucdn_general_categoryP18hb_unicode_funcs_tjPv,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL24hb_ucdn_general_categoryP18hb_unicode_funcs_tjPv, %function
_ZL24hb_ucdn_general_categoryP18hb_unicode_funcs_tjPv:
	.fnstart
.LFB96:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r0, [r7, #8]
	bl	ucdn_get_general_category(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL24hb_ucdn_general_categoryP18hb_unicode_funcs_tjPv, .-_ZL24hb_ucdn_general_categoryP18hb_unicode_funcs_tjPv
	.section	.text._ZL17hb_ucdn_mirroringP18hb_unicode_funcs_tjPv,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL17hb_ucdn_mirroringP18hb_unicode_funcs_tjPv, %function
_ZL17hb_ucdn_mirroringP18hb_unicode_funcs_tjPv:
	.fnstart
.LFB97:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r0, [r7, #8]
	bl	ucdn_mirror(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL17hb_ucdn_mirroringP18hb_unicode_funcs_tjPv, .-_ZL17hb_ucdn_mirroringP18hb_unicode_funcs_tjPv
	.section	.text._ZL14hb_ucdn_scriptP18hb_unicode_funcs_tjPv,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL14hb_ucdn_scriptP18hb_unicode_funcs_tjPv, %function
_ZL14hb_ucdn_scriptP18hb_unicode_funcs_tjPv:
	.fnstart
.LFB98:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r0, [r7, #8]
	bl	ucdn_get_script(PLT)
	mov	r2, r0
	ldr	r3, .L14
.LPIC0:
	add	r3, pc
	ldr	r3, [r3, r2, lsl #2]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L15:
	.align	2
.L14:
	.word	_ZL21ucdn_script_translate-(.LPIC0+4)
	.fnend
	.size	_ZL14hb_ucdn_scriptP18hb_unicode_funcs_tjPv, .-_ZL14hb_ucdn_scriptP18hb_unicode_funcs_tjPv
	.section	.text._ZL15hb_ucdn_composeP18hb_unicode_funcs_tjjPjPv,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL15hb_ucdn_composeP18hb_unicode_funcs_tjjPjPv, %function
_ZL15hb_ucdn_composeP18hb_unicode_funcs_tjjPjPv:
	.fnstart
.LFB99:
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r0, [r7]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	ucdn_compose(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL15hb_ucdn_composeP18hb_unicode_funcs_tjjPjPv, .-_ZL15hb_ucdn_composeP18hb_unicode_funcs_tjjPjPv
	.section	.text._ZL17hb_ucdn_decomposeP18hb_unicode_funcs_tjPjS1_Pv,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL17hb_ucdn_decomposeP18hb_unicode_funcs_tjPjS1_Pv, %function
_ZL17hb_ucdn_decomposeP18hb_unicode_funcs_tjPjS1_Pv:
	.fnstart
.LFB100:
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
	bl	ucdn_decompose(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL17hb_ucdn_decomposeP18hb_unicode_funcs_tjPjS1_Pv, .-_ZL17hb_ucdn_decomposeP18hb_unicode_funcs_tjPjS1_Pv
	.section	.text._ZL31hb_ucdn_decompose_compatibilityP18hb_unicode_funcs_tjPjPv,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL31hb_ucdn_decompose_compatibilityP18hb_unicode_funcs_tjPjPv, %function
_ZL31hb_ucdn_decompose_compatibilityP18hb_unicode_funcs_tjPjPv:
	.fnstart
.LFB101:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #4]
	bl	ucdn_compat_decompose(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL31hb_ucdn_decompose_compatibilityP18hb_unicode_funcs_tjPjPv, .-_ZL31hb_ucdn_decompose_compatibilityP18hb_unicode_funcs_tjPjPv
	.section	.text.hb_ucdn_get_unicode_funcs,"ax",%progbits
	.align	2
	.global	hb_ucdn_get_unicode_funcs
	.hidden	hb_ucdn_get_unicode_funcs
	.thumb
	.thumb_func
	.type	hb_ucdn_get_unicode_funcs, %function
hb_ucdn_get_unicode_funcs:
	.fnstart
.LFB102:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L24
.LPIC1:
	add	r3, pc
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L25:
	.align	2
.L24:
	.word	_ZZ25hb_ucdn_get_unicode_funcsE22_hb_ucdn_unicode_funcs-(.LPIC1+4)
	.cantunwind
	.fnend
	.size	hb_ucdn_get_unicode_funcs, .-hb_ucdn_get_unicode_funcs
	.section	.rodata._ZL21ucdn_script_translate,"a",%progbits
	.align	2
	.type	_ZL21ucdn_script_translate, %object
	.size	_ZL21ucdn_script_translate, 504
_ZL21ucdn_script_translate:
	.word	1517910393
	.word	1281455214
	.word	1198679403
	.word	1132032620
	.word	1098018158
	.word	1214603890
	.word	1098015074
	.word	1400468067
	.word	1416126817
	.word	1147500129
	.word	1113943655
	.word	1198879349
	.word	1198877298
	.word	1332902241
	.word	1415671148
	.word	1415933045
	.word	1265525857
	.word	1298954605
	.word	1399418472
	.word	1416126825
	.word	1281453935
	.word	1416192628
	.word	1299803506
	.word	1197830002
	.word	1214344807
	.word	1165256809
	.word	1130915186
	.word	1130458739
	.word	1332175213
	.word	1383427698
	.word	1265134962
	.word	1299148391
	.word	1214870113
	.word	1264676449
	.word	1114599535
	.word	1214344809
	.word	1500080489
	.word	1232363884
	.word	1198486632
	.word	1148416628
	.word	1516858984
	.word	1416064103
	.word	1214344815
	.word	1114990692
	.word	1415669602
	.word	1281977698
	.word	1415670885
	.word	1281977954
	.word	1432838514
	.word	1399349623
	.word	1332964705
	.word	1131442804
	.word	1114792297
	.word	1114990441
	.word	1131376756
	.word	1415670901
	.word	1198285159
	.word	1415999079
	.word	1400466543
	.word	1483761007
	.word	1265131890
	.word	1113681001
	.word	1483961720
	.word	1349021304
	.word	1349017959
	.word	1315663727
	.word	1400204900
	.word	1281716323
	.word	1332503403
	.word	1449224553
	.word	1398895986
	.word	1264675945
	.word	1382706791
	.word	1283023721
	.word	1130459753
	.word	1283023977
	.word	1130914157
	.word	1281453665
	.word	1415673460
	.word	1098281844
	.word	1164409200
	.word	1398893938
	.word	1281979253
	.word	1113681269
	.word	1247901281
	.word	1299473769
	.word	1098018153
	.word	1398895202
	.word	1349678185
	.word	1349020777
	.word	1332898664
	.word	1265920105
	.word	1113683051
	.word	1114792296
	.word	1298230884
	.word	1130457965
	.word	1298494051
	.word	1298494063
	.word	1349284452
	.word	1399353956
	.word	1399812705
	.word	1415670642
	.word	1517976186
	.word	1113682803
	.word	1097295970
	.word	1148547180
	.word	1164730977
	.word	1198678382
	.word	1265135466
	.word	1399418468
	.word	1281977953
	.word	1298229354
	.word	1298230889
	.word	1298493028
	.word	1299145833
	.word	1299345263
	.word	1315070324
	.word	1315009122
	.word	1348825709
	.word	1215131239
	.word	1348562029
	.word	1348564323
	.word	1349020784
	.word	1399415908
	.word	1416196712
	.word	1466004065
	.section	.data.rel.ro.local._ZZ25hb_ucdn_get_unicode_funcsE22_hb_ucdn_unicode_funcs,"aw",%progbits
	.align	2
	.type	_ZZ25hb_ucdn_get_unicode_funcsE22_hb_ucdn_unicode_funcs, %object
	.size	_ZZ25hb_ucdn_get_unicode_funcsE22_hb_ucdn_unicode_funcs, 148
_ZZ25hb_ucdn_get_unicode_funcsE22_hb_ucdn_unicode_funcs:
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	0
	.space	24
	.word	0
	.byte	1
	.space	3
	.word	_ZL23hb_ucdn_combining_classP18hb_unicode_funcs_tjPv
	.word	_ZL23hb_ucdn_eastasian_widthP18hb_unicode_funcs_tjPv
	.word	_ZL24hb_ucdn_general_categoryP18hb_unicode_funcs_tjPv
	.word	_ZL17hb_ucdn_mirroringP18hb_unicode_funcs_tjPv
	.word	_ZL14hb_ucdn_scriptP18hb_unicode_funcs_tjPv
	.word	_ZL15hb_ucdn_composeP18hb_unicode_funcs_tjjPjPv
	.word	_ZL17hb_ucdn_decomposeP18hb_unicode_funcs_tjPjS1_Pv
	.word	_ZL31hb_ucdn_decompose_compatibilityP18hb_unicode_funcs_tjPjPv
	.space	64
	.hidden	ucdn_compat_decompose
	.hidden	ucdn_decompose
	.hidden	ucdn_compose
	.hidden	ucdn_get_script
	.hidden	ucdn_mirror
	.hidden	ucdn_get_general_category
	.hidden	ucdn_get_east_asian_width
	.hidden	ucdn_get_combining_class
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
