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
	.file	"sqmem.cpp"
	.section	.text._Z12sq_vm_mallocj,"ax",%progbits
	.align	2
	.global	_Z12sq_vm_mallocj
	.thumb
	.thumb_func
	.type	_Z12sq_vm_mallocj, %function
_Z12sq_vm_mallocj:
	.fnstart
.LFB127:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	malloc(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_Z12sq_vm_mallocj, .-_Z12sq_vm_mallocj
	.section	.text._Z13sq_vm_reallocPvjj,"ax",%progbits
	.align	2
	.global	_Z13sq_vm_reallocPvjj
	.thumb
	.thumb_func
	.type	_Z13sq_vm_reallocPvjj, %function
_Z13sq_vm_reallocPvjj:
	.fnstart
.LFB128:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	bl	realloc(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_Z13sq_vm_reallocPvjj, .-_Z13sq_vm_reallocPvjj
	.section	.text._Z10sq_vm_freePvj,"ax",%progbits
	.align	2
	.global	_Z10sq_vm_freePvj
	.thumb
	.thumb_func
	.type	_Z10sq_vm_freePvj, %function
_Z10sq_vm_freePvj:
	.fnstart
.LFB129:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	bl	free(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_Z10sq_vm_freePvj, .-_Z10sq_vm_freePvj
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
