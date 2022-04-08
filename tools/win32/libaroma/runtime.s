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
	.file	"runtime.c"
	.section	.text.libaroma_runtime_activate_cores,"ax",%progbits
	.align	2
	.global	libaroma_runtime_activate_cores
	.thumb
	.thumb_func
	.type	libaroma_runtime_activate_cores, %function
libaroma_runtime_activate_cores:
	@ args = 0, pretend = 0, frame = 1288
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L24
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	subs	r9, r0, #0
	mov	r5, #0
	subw	sp, sp, #1292
.LPIC8:
	add	r3, pc
	strb	r5, [r3, #28]
	ble	.L8
	ldr	r2, .L24+4
	add	r4, sp, #8
	ldr	r3, .L24+8
	ldr	r8, .L24+12
	ldr	fp, .L24+16
.LPIC12:
	add	r2, pc
	ldr	r6, .L24+20
.LPIC17:
	add	r3, pc
	str	r2, [sp]
.LPIC14:
	add	r8, pc
.LPIC16:
	add	fp, pc
	str	r3, [sp, #4]
.LPIC18:
	add	r6, pc
	b	.L7
.L3:
	mov	r0, r4
	mov	r1, r8
	bl	fopen(PLT)
	mov	r10, r0
	cmp	r0, #0
	beq	.L23
	bl	fgetc(PLT)
	mov	r7, r0
	mov	r0, r10
	bl	fclose(PLT)
	sub	r2, r7, #48
	clz	r2, r2
	lsrs	r2, r2, #5
	add	r3, fp, r5
	ldr	r1, [sp, #4]
	mov	r0, r4
	strb	r2, [r3, #12]
	adds	r5, r5, #1
	bl	fopen(PLT)
	mov	r7, r0
	movs	r0, #49
	mov	r1, r7
	cbz	r7, .L6
	bl	fputc(PLT)
	mov	r0, r7
	bl	fclose(PLT)
.L6:
	ldrb	r3, [r6, #28]	@ zero_extendqisi2
	cmp	r5, r9
	add	r3, r3, #1
	uxtb	r3, r3
	strb	r3, [r6, #28]
	beq	.L4
.L7:
	mov	r0, r4
	mov	r1, #256
	ldr	r2, [sp]
	mov	r3, r5
	bl	snprintf(PLT)
	mov	r0, r4
	bl	libaroma_file_exists(PLT)
	cmp	r0, #0
	bne	.L3
	ldr	r3, .L24+24
.LPIC13:
	add	r3, pc
	ldrb	r3, [r3, #28]	@ zero_extendqisi2
.L4:
	cbz	r3, .L8
	ldr	fp, .L24+28
	movs	r5, #0
	ldr	r10, .L24+32
	add	r6, sp, #264
	ldr	r9, .L24+36
	ldr	r8, .L24+40
.LPIC20:
	add	fp, pc
	ldr	r2, .L24+44
.LPIC21:
	add	r10, pc
.LPIC22:
	add	r9, pc
.LPIC23:
	add	r8, pc
.LPIC24:
	add	r2, pc
	str	r2, [sp]
.L10:
	mov	r3, r5
	mov	r1, #256
	mov	r2, fp
	mov	r0, r4
	bl	snprintf(PLT)
	mov	r2, r10
	mov	r3, r4
	mov	r1, #1024
	mov	r0, r6
	bl	snprintf(PLT)
	mov	r1, r9
	mov	r0, r6
	bl	fopen(PLT)
	mov	r7, r0
	adds	r5, r5, #1
	mov	r0, r8
	movs	r1, #1
	movs	r2, #11
	mov	r3, r7
	cbz	r7, .L9
	bl	fwrite(PLT)
	mov	r0, r7
	bl	fclose(PLT)
.L9:
	ldr	r2, [sp]
	ldrb	r3, [r2, #28]	@ zero_extendqisi2
	cmp	r3, r5
	bgt	.L10
.L8:
	bl	libaroma_debug_output(PLT)
	mov	r4, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L24+48
	mov	r2, r0
	mov	r0, r4
.LPIC9:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r3, .L24+52
	ldr	r1, .L24+56
.LPIC11:
	add	r3, pc
	ldrb	r2, [r3, #28]	@ zero_extendqisi2
.LPIC10:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	addw	sp, sp, #1292
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L23:
	ldr	r3, .L24+60
.LPIC15:
	add	r3, pc
	ldrb	r3, [r3, #28]	@ zero_extendqisi2
	b	.L4
.L25:
	.align	2
.L24:
	.word	.LANCHOR0-(.LPIC8+4)
	.word	.LC2-(.LPIC12+4)
	.word	.LC4-(.LPIC17+4)
	.word	.LC3-(.LPIC14+4)
	.word	.LANCHOR0-(.LPIC16+4)
	.word	.LANCHOR0-(.LPIC18+4)
	.word	.LANCHOR0-(.LPIC13+4)
	.word	.LC5-(.LPIC20+4)
	.word	.LC6-(.LPIC21+4)
	.word	.LC4-(.LPIC22+4)
	.word	.LC7-(.LPIC23+4)
	.word	.LANCHOR0-(.LPIC24+4)
	.word	.LC0-(.LPIC9+4)
	.word	.LANCHOR0-(.LPIC11+4)
	.word	.LC1-(.LPIC10+4)
	.word	.LANCHOR0-(.LPIC15+4)
	.size	libaroma_runtime_activate_cores, .-libaroma_runtime_activate_cores
	.section	.text.libaroma_runtime_rollback_cores,"ax",%progbits
	.align	2
	.global	libaroma_runtime_rollback_cores
	.thumb
	.thumb_func
	.type	libaroma_runtime_rollback_cores, %function
libaroma_runtime_rollback_cores:
	@ args = 0, pretend = 0, frame = 256
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L41
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	sub	sp, sp, #256
.LPIC25:
	add	r3, pc
	ldrb	r3, [r3, #28]	@ zero_extendqisi2
	cbz	r3, .L28
	ldr	r6, .L41+4
	movs	r4, #0
	ldr	r8, .L41+8
	ldr	r9, .L41+12
	ldr	r7, .L41+16
.LPIC27:
	add	r6, pc
.LPIC28:
	add	r8, pc
.LPIC29:
	add	r9, pc
.LPIC30:
	add	r7, pc
	b	.L32
.L30:
	ldrb	r3, [r7, #28]	@ zero_extendqisi2
	cmp	r3, r4
	ble	.L28
.L32:
	mov	r0, sp
	mov	r1, #256
	mov	r2, r6
	mov	r3, r4
	bl	snprintf(PLT)
	mov	r0, sp
	bl	libaroma_file_exists(PLT)
	cbz	r0, .L28
	add	r3, r8, r4
	adds	r4, r4, #1
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L30
	mov	r1, r9
	mov	r0, sp
	bl	fopen(PLT)
	mov	r10, r0
	movs	r0, #48
	mov	r1, r10
	cmp	r10, #0
	beq	.L30
	bl	fputc(PLT)
	mov	r0, r10
	bl	fclose(PLT)
	ldrb	r3, [r7, #28]	@ zero_extendqisi2
	cmp	r3, r4
	bgt	.L32
.L28:
	ldr	r3, .L41+20
	movs	r2, #0
.LPIC26:
	add	r3, pc
	strb	r2, [r3, #28]
	add	sp, sp, #256
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L42:
	.align	2
.L41:
	.word	.LANCHOR0-(.LPIC25+4)
	.word	.LC2-(.LPIC27+4)
	.word	.LANCHOR0-(.LPIC28+4)
	.word	.LC4-(.LPIC29+4)
	.word	.LANCHOR0-(.LPIC30+4)
	.word	.LANCHOR0-(.LPIC26+4)
	.size	libaroma_runtime_rollback_cores, .-libaroma_runtime_rollback_cores
	.section	.text.libaroma_runtime_mute_parent,"ax",%progbits
	.align	2
	.global	libaroma_runtime_mute_parent
	.thumb
	.thumb_func
	.type	libaroma_runtime_mute_parent, %function
libaroma_runtime_mute_parent:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L44
	movs	r1, #19
.LPIC31:
	add	r3, pc
	ldr	r0, [r3]
	b	kill(PLT)
.L45:
	.align	2
.L44:
	.word	.LANCHOR0-(.LPIC31+4)
	.size	libaroma_runtime_mute_parent, .-libaroma_runtime_mute_parent
	.section	.text.libaroma_runtime_continue_parent,"ax",%progbits
	.align	2
	.global	libaroma_runtime_continue_parent
	.thumb
	.thumb_func
	.type	libaroma_runtime_continue_parent, %function
libaroma_runtime_continue_parent:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L47
	movs	r1, #18
.LPIC32:
	add	r3, pc
	ldr	r0, [r3]
	b	kill(PLT)
.L48:
	.align	2
.L47:
	.word	.LANCHOR0-(.LPIC32+4)
	.size	libaroma_runtime_continue_parent, .-libaroma_runtime_continue_parent
	.section	.text.libaroma_runtime_init,"ax",%progbits
	.align	2
	.global	libaroma_runtime_init
	.thumb
	.thumb_func
	.type	libaroma_runtime_init, %function
libaroma_runtime_init:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	sub	sp, sp, #16
	ldr	r4, .L56
	bl	getppid(PLT)
.LPIC33:
	add	r4, pc
	str	r0, [r4]
	bl	getpid(PLT)
	str	r0, [r4, #4]
	bl	fork(PLT)
	cmp	r0, #0
	str	r0, [r4, #8]
	beq	.L54
	blt	.L55
	ldr	r5, .L56+4
	bl	libaroma_debug_output(PLT)
	mov	r6, r0
.LPIC46:
	add	r5, pc
	bl	libaroma_debug_tag(PLT)
	mov	r1, r5
	mov	r2, r0
	mov	r0, r6
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	ldmia	r4, {r2, r3, r6}
	ldr	r1, .L56+8
	str	r6, [sp]
.LPIC47:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	add	r1, sp, #12
	movs	r2, #0
	ldr	r0, [r4, #8]
	bl	waitpid(PLT)
	bl	libaroma_runtime_continue_parent(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r4, r0
	bl	libaroma_debug_tag(PLT)
	mov	r1, r5
	mov	r2, r0
	mov	r0, r4
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L56+12
	ldr	r2, [sp, #12]
.LPIC53:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	movs	r0, #0
	bl	_exit(PLT)
.L54:
	bl	getpid(PLT)
	str	r0, [r4, #8]
	bl	libaroma_debug_output(PLT)
	mov	r5, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L56+16
	mov	r2, r0
	mov	r0, r5
.LPIC37:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L56+20
	ldr	r2, [r4, #8]
.LPIC38:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, pc}
.L55:
	bl	libaroma_debug_output(PLT)
	mov	r4, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L56+24
	mov	r2, r0
	mov	r0, r4
.LPIC40:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L56+28
	movs	r1, #1
	movs	r2, #45
.LPIC41:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L56+32
	ldr	r2, .L56+36
.LPIC42:
	add	r1, pc
.LPIC43:
	add	r2, pc
	bl	fprintf(PLT)
	bl	libaroma_runtime_continue_parent(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r4, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L56+40
	mov	r2, r0
	mov	r0, r4
.LPIC44:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L56+44
	movs	r1, #1
	movs	r2, #19
.LPIC45:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	mov	r0, #-1
	bl	_exit(PLT)
.L57:
	.align	2
.L56:
	.word	.LANCHOR0-(.LPIC33+4)
	.word	.LC8-(.LPIC46+4)
	.word	.LC15-(.LPIC47+4)
	.word	.LC16-(.LPIC53+4)
	.word	.LC8-(.LPIC37+4)
	.word	.LC9-(.LPIC38+4)
	.word	.LC10-(.LPIC40+4)
	.word	.LC11-(.LPIC41+4)
	.word	.LC12-(.LPIC42+4)
	.word	.LC13-(.LPIC43+4)
	.word	.LC0-(.LPIC44+4)
	.word	.LC14-(.LPIC45+4)
	.size	libaroma_runtime_init, .-libaroma_runtime_init
	.section	.bss._libaroma_runtime,"aw",%nobits
	.align	2
.LANCHOR0 = . + 0
	.type	_libaroma_runtime, %object
	.size	_libaroma_runtime, 32
_libaroma_runtime:
	.space	32
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"I/%s: \000"
	.space	1
.LC1:
	.ascii	"Processor Activated : %i Core(s)\000"
	.space	3
.LC2:
	.ascii	"/sys/devices/system/cpu/cpu%i/online\000"
	.space	3
.LC3:
	.ascii	"r\000"
	.space	2
.LC4:
	.ascii	"w+\000"
	.space	1
.LC5:
	.ascii	"/sys/devices/system/cpu/cpu%i/cpufreq\000"
	.space	2
.LC6:
	.ascii	"%s/scaling_governor\000"
.LC7:
	.ascii	"performance\000"
.LC8:
	.ascii	"N/%s: \000"
	.space	1
.LC9:
	.ascii	"RUNTIME: Application @%i\000"
	.space	3
.LC10:
	.ascii	"E/%s: \000"
	.space	1
.LC11:
	.ascii	"RUNTIME: Cannot Start Application Instance...\000"
	.space	2
.LC12:
	.ascii	"%s\012\000"
.LC13:
	.ascii	"\000"
	.space	3
.LC14:
	.ascii	"RUNTIME: Halting...\000"
.LC15:
	.ascii	"RUNTIME: MONITORING(R:%i, M:%i, A:%i)\000"
	.space	2
.LC16:
	.ascii	"RUNTIME: Exit Status (%i)\000"
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
