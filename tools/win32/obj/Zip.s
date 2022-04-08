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
	.file	"Zip.c"
	.section	.text.hashcmpZipEntry,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	hashcmpZipEntry, %function
hashcmpZipEntry:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7]
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L2
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	subs	r3, r2, r3
	b	.L3
.L2:
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	memcmp(PLT)
	mov	r3, r0
.L3:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	hashcmpZipEntry, .-hashcmpZipEntry
	.section	.text.hashcmpZipName,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	hashcmpZipName, %function
hashcmpZipName:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	str	r3, [r7, #20]
	ldr	r3, [r7]
	str	r3, [r7, #16]
	ldr	r0, [r7, #16]
	bl	strlen(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #20]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	beq	.L5
	ldr	r3, [r7, #20]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	subs	r3, r2, r3
	b	.L6
.L5:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r1, [r7, #16]
	ldr	r2, [r7, #12]
	bl	memcmp(PLT)
	mov	r3, r0
.L6:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	hashcmpZipName, .-hashcmpZipName
	.section	.text.computeHash,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	computeHash, %function
computeHash:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #2
	str	r3, [r7, #12]
	b	.L8
.L9:
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #5
	subs	r2, r3, r2
	ldr	r3, [r7, #4]
	adds	r1, r3, #1
	str	r1, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	add	r3, r3, r2
	str	r3, [r7, #12]
.L8:
	ldr	r3, [r7]
	subs	r2, r3, #1
	str	r2, [r7]
	cmp	r3, #0
	bne	.L9
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	computeHash, .-computeHash
	.section	.rodata
	.align	2
.LC0:
	.ascii	"minzip: WARNING: duplicate entry '%.*s' in Zip\012\000"
	.section	.text.addEntryToHashTable,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	addEntryToHashTable, %function
addEntryToHashTable:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	computeHash(PLT)
	str	r0, [r7, #12]
	movs	r3, #1
	str	r3, [sp]
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #12]
	ldr	r2, [r7]
	ldr	r3, .L13
.LPIC0:
	add	r3, pc
	bl	mzHashTableLookup(PLT)
	str	r0, [r7, #8]
	ldr	r2, [r7, #8]
	ldr	r3, [r7]
	cmp	r2, r3
	beq	.L11
	ldr	r3, [r7, #8]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	ldr	r1, .L13+4
.LPIC1:
	add	r1, pc
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	printf(PLT)
.L11:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L14:
	.align	2
.L13:
	.word	hashcmpZipEntry-(.LPIC0+4)
	.word	.LC0-(.LPIC1+4)
	.size	addEntryToHashTable, .-addEntryToHashTable
	.section	.rodata
	.align	2
.LC1:
	.ascii	"minzip: Filename too long (%d chatacters)\012\000"
	.align	2
.LC2:
	.ascii	"minzip: Filename contains invalid character '%03o'\012"
	.ascii	"\000"
	.section	.text.validFilename,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	validFilename, %function
validFilename:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #4096
	bcc	.L16
	ldr	r3, .L22
.LPIC2:
	add	r3, pc
	mov	r0, r3
	ldr	r1, [r7]
	bl	printf(PLT)
	movs	r3, #0
	b	.L17
.L16:
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L18
.L21:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #31
	bls	.L19
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #126
	bls	.L20
.L19:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r2, .L22+4
.LPIC3:
	add	r2, pc
	mov	r0, r2
	mov	r1, r3
	bl	printf(PLT)
	movs	r3, #0
	b	.L17
.L20:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L18:
	ldr	r2, [r7, #12]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L21
	movs	r3, #1
.L17:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L23:
	.align	2
.L22:
	.word	.LC1-(.LPIC2+4)
	.word	.LC2-(.LPIC3+4)
	.size	validFilename, .-validFilename
	.section	.rodata
	.align	2
.LC3:
	.ascii	"minzip: Found Zip archive, but it looks empty\000"
	.align	2
.LC4:
	.ascii	"minzip: Could not find end-of-central-directory in "
	.ascii	"Zip\000"
	.align	2
.LC5:
	.ascii	"minzip: Invalid entries=%d offset=%d (len=%zd)\012\000"
	.align	2
.LC6:
	.ascii	"minzip: Ran off the end (at %d)\012\000"
	.align	2
.LC7:
	.ascii	"minzip: Missed a central dir sig (at %d)\012\000"
	.align	2
.LC8:
	.ascii	"minzip: Filename ran off the end (at %d)\012\000"
	.align	2
.LC9:
	.ascii	"minzip: Invalid filename (at %d)\012\000"
	.align	2
.LC10:
	.ascii	"target <= i\000"
	.align	2
.LC11:
	.ascii	"../../../libs/minzip/Zip.c\000"
	.align	2
.LC12:
	.ascii	"minzip: Incompatible \"version made by\": 0x%02x (a"
	.ascii	"t %d)\012\000"
	.align	2
.LC13:
	.ascii	"minzip: Integer overflow adding in parseZipArchive\000"
	.align	2
.LC14:
	.ascii	"minzip: Bad offset to local header: %d (at %d)\012\000"
	.align	2
.LC15:
	.ascii	"minzip: Missed a local header sig (at %d)\012\000"
	.align	2
.LC16:
	.ascii	"minzip: Data ran off the end (at %d)\012\000"
	.section	.text.parseZipArchive,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	parseZipArchive, %function
parseZipArchive:
	@ args = 0, pretend = 0, frame = 128
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #132
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	strb	r3, [r7, #127]
	ldr	r3, [r7]
	ldr	r3, [r3]
	mov	r0, r3
	bl	get4LE(PLT)
	str	r0, [r7, #76]
	ldr	r2, [r7, #76]
	movw	r3, #19280
	movt	r3, 1541
	cmp	r2, r3
	bne	.L25
	ldr	r3, .L72
.LPIC4:
	add	r3, pc
	mov	r0, r3
	bl	puts(PLT)
	b	.L26
.L25:
	ldr	r2, [r7, #76]
	movw	r3, #19280
	movt	r3, 1027
	cmp	r2, r3
	beq	.L27
	b	.L26
.L27:
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	subs	r3, r3, #22
	add	r3, r3, r2
	str	r3, [r7, #120]
	b	.L28
.L31:
	ldr	r3, [r7, #120]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #80
	bne	.L29
	ldr	r0, [r7, #120]
	bl	get4LE(PLT)
	mov	r2, r0
	movw	r3, #19280
	movt	r3, 1541
	cmp	r2, r3
	bne	.L29
	b	.L30
.L29:
	ldr	r3, [r7, #120]
	subs	r3, r3, #1
	str	r3, [r7, #120]
.L28:
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #120]
	cmp	r2, r3
	bls	.L31
.L30:
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #120]
	cmp	r2, r3
	bls	.L32
	ldr	r3, .L72+4
.LPIC5:
	add	r3, pc
	mov	r0, r3
	bl	puts(PLT)
	b	.L26
.L32:
	ldr	r3, [r7, #120]
	adds	r3, r3, #8
	mov	r0, r3
	bl	get2LE(PLT)
	mov	r3, r0
	str	r3, [r7, #72]
	ldr	r3, [r7, #120]
	adds	r3, r3, #16
	mov	r0, r3
	bl	get4LE(PLT)
	str	r0, [r7, #68]
	ldr	r3, [r7, #72]
	cmp	r3, #0
	beq	.L33
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #68]
	cmp	r2, r3
	bhi	.L34
.L33:
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	ldr	r2, .L72+8
.LPIC6:
	add	r2, pc
	mov	r0, r2
	ldr	r1, [r7, #72]
	ldr	r2, [r7, #68]
	bl	printf(PLT)
	b	.L26
.L34:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #72]
	str	r2, [r3, #4]
	ldr	r0, [r7, #72]
	movs	r1, #40
	bl	calloc(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r0, [r7, #72]
	bl	mzHashSize(PLT)
	mov	r3, r0
	mov	r0, r3
	movs	r1, #0
	bl	mzHashTableCreate(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L26
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L26
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #120]
	movs	r3, #0
	str	r3, [r7, #116]
	b	.L35
.L67:
	ldr	r3, [r7, #120]
	add	r2, r3, #46
	ldr	r3, [r7]
	ldr	r1, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	add	r3, r3, r1
	cmp	r2, r3
	bls	.L36
	ldr	r3, .L72+12
.LPIC7:
	add	r3, pc
	mov	r0, r3
	ldr	r1, [r7, #116]
	bl	printf(PLT)
	b	.L26
.L36:
	ldr	r0, [r7, #120]
	bl	get4LE(PLT)
	mov	r2, r0
	movw	r3, #19280
	movt	r3, 513
	cmp	r2, r3
	beq	.L38
	ldr	r3, .L72+16
.LPIC8:
	add	r3, pc
	mov	r0, r3
	ldr	r1, [r7, #116]
	bl	printf(PLT)
	b	.L26
.L38:
	ldr	r3, [r7, #120]
	adds	r3, r3, #42
	mov	r0, r3
	bl	get4LE(PLT)
	str	r0, [r7, #64]
	ldr	r3, [r7, #120]
	adds	r3, r3, #28
	mov	r0, r3
	bl	get2LE(PLT)
	mov	r3, r0
	str	r3, [r7, #60]
	ldr	r3, [r7, #120]
	adds	r3, r3, #30
	mov	r0, r3
	bl	get2LE(PLT)
	mov	r3, r0
	str	r3, [r7, #56]
	ldr	r3, [r7, #120]
	adds	r3, r3, #32
	mov	r0, r3
	bl	get2LE(PLT)
	mov	r3, r0
	str	r3, [r7, #52]
	ldr	r3, [r7, #120]
	adds	r3, r3, #46
	str	r3, [r7, #48]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #60]
	add	r2, r2, r3
	ldr	r3, [r7]
	ldr	r1, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	add	r3, r3, r1
	cmp	r2, r3
	bls	.L39
	ldr	r3, .L72+20
.LPIC9:
	add	r3, pc
	mov	r0, r3
	ldr	r1, [r7, #116]
	bl	printf(PLT)
	b	.L26
.L39:
	ldr	r0, [r7, #48]
	ldr	r1, [r7, #60]
	bl	validFilename(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L40
	ldr	r3, .L72+24
.LPIC10:
	add	r3, pc
	mov	r0, r3
	ldr	r1, [r7, #116]
	bl	printf(PLT)
	b	.L26
.L40:
	ldr	r3, [r7, #116]
	cmp	r3, #0
	beq	.L41
	movs	r3, #0
	str	r3, [r7, #108]
	ldr	r3, [r7, #116]
	subs	r3, r3, #1
	str	r3, [r7, #104]
	b	.L42
.L49:
	ldr	r2, [r7, #104]
	ldr	r3, [r7, #108]
	subs	r3, r2, r3
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	mov	r2, r3
	ldr	r3, [r7, #108]
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #8]
	ldr	r2, [r7, #44]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r2, [r3]
	ldr	r3, [r7, #60]
	cmp	r2, r3
	bcs	.L43
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #8]
	ldr	r2, [r7, #44]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r3, [r3]
	str	r3, [r7, #96]
	b	.L44
.L43:
	ldr	r3, [r7, #60]
	str	r3, [r7, #96]
.L44:
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #8]
	ldr	r2, [r7, #44]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #96]
	mov	r0, r2
	ldr	r1, [r7, #48]
	mov	r2, r3
	bl	strncmp(PLT)
	str	r0, [r7, #100]
	ldr	r3, [r7, #100]
	cmp	r3, #0
	bne	.L45
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #8]
	ldr	r2, [r7, #44]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r2, [r3]
	ldr	r3, [r7, #60]
	subs	r3, r2, r3
	str	r3, [r7, #100]
.L45:
	ldr	r3, [r7, #100]
	cmp	r3, #0
	bge	.L46
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	str	r3, [r7, #108]
	b	.L42
.L46:
	ldr	r3, [r7, #100]
	cmp	r3, #0
	ble	.L47
	ldr	r3, [r7, #44]
	subs	r3, r3, #1
	str	r3, [r7, #104]
	b	.L42
.L47:
	ldr	r3, [r7, #44]
	str	r3, [r7, #104]
	b	.L48
.L42:
	ldr	r2, [r7, #108]
	ldr	r3, [r7, #104]
	cmp	r2, r3
	ble	.L49
.L48:
	ldr	r3, [r7, #104]
	adds	r3, r3, #1
	str	r3, [r7, #40]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #116]
	cmp	r2, r3
	bls	.L50
	ldr	r3, .L72+28
.LPIC11:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L72+32
.LPIC12:
	add	r3, pc
	mov	r1, r3
	movw	r2, #329
	ldr	r3, .L72+36
.LPIC13:
	add	r3, pc
	bl	__assert_fail(PLT)
.L50:
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #116]
	cmp	r2, r3
	beq	.L51
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #8]
	ldr	r3, [r7, #40]
	adds	r2, r3, #1
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #3
	adds	r0, r1, r3
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #8]
	ldr	r2, [r7, #40]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r1, r1, r3
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #40]
	subs	r2, r2, r3
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #3
	mov	r2, r3
	bl	memmove(PLT)
.L51:
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #8]
	ldr	r2, [r7, #40]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	str	r3, [r7, #112]
	b	.L52
.L41:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	str	r3, [r7, #112]
.L52:
	ldr	r3, [r7, #112]
	ldr	r2, [r7, #60]
	str	r2, [r3]
	ldr	r3, [r7, #112]
	ldr	r2, [r7, #48]
	str	r2, [r3, #4]
	ldr	r3, [r7, #120]
	adds	r3, r3, #20
	mov	r0, r3
	bl	get4LE(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #112]
	str	r2, [r3, #12]
	ldr	r3, [r7, #120]
	adds	r3, r3, #24
	mov	r0, r3
	bl	get4LE(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #112]
	str	r2, [r3, #16]
	ldr	r3, [r7, #120]
	adds	r3, r3, #10
	mov	r0, r3
	bl	get2LE(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #112]
	str	r2, [r3, #20]
	ldr	r3, [r7, #120]
	adds	r3, r3, #12
	mov	r0, r3
	bl	get4LE(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #112]
	str	r2, [r3, #24]
	ldr	r3, [r7, #120]
	adds	r3, r3, #16
	mov	r0, r3
	bl	get4LE(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #112]
	str	r2, [r3, #28]
	ldr	r3, [r7, #120]
	adds	r3, r3, #4
	mov	r0, r3
	bl	get2LE(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #112]
	str	r2, [r3, #32]
	ldr	r3, [r7, #112]
	ldr	r3, [r3, #32]
	and	r3, r3, #65280
	cmp	r3, #0
	beq	.L53
	ldr	r3, [r7, #112]
	ldr	r3, [r3, #32]
	and	r3, r3, #65280
	cmp	r3, #768
	beq	.L53
	ldr	r3, [r7, #112]
	ldr	r3, [r3, #32]
	asrs	r3, r3, #8
	ldr	r2, .L72+40
.LPIC14:
	add	r2, pc
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #116]
	bl	printf(PLT)
	b	.L26
.L53:
	ldr	r3, [r7, #120]
	adds	r3, r3, #38
	mov	r0, r3
	bl	get4LE(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #112]
	str	r2, [r3, #36]
	movs	r3, #0
	str	r3, [r7, #92]
	ldr	r3, [r7]
	ldr	r3, [r3]
	str	r3, [r7, #36]
	ldr	r3, [r7, #64]
	str	r3, [r7, #32]
	add	r3, r7, #12
	str	r3, [r7, #28]
	movs	r3, #1
	cmp	r3, #0
	beq	.L54
	movs	r3, #0
	str	r3, [r7, #88]
	ldr	r3, [r7, #36]
	mvns	r2, r3
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bcc	.L55
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L56
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #32]
	add	r2, r2, r3
	ldr	r3, [r7, #28]
	str	r2, [r3]
.L56:
	movs	r3, #1
	str	r3, [r7, #88]
.L55:
	ldr	r3, [r7, #88]
	str	r3, [r7, #92]
.L54:
	ldr	r3, [r7, #92]
	cmp	r3, #0
	bne	.L57
	ldr	r3, .L72+44
.LPIC15:
	add	r3, pc
	mov	r0, r3
	bl	puts(PLT)
	b	.L26
.L57:
	ldr	r3, [r7, #12]
	add	r2, r3, #30
	ldr	r3, [r7]
	ldr	r3, [r3]
	mov	r1, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	add	r3, r3, r1
	cmp	r2, r3
	bls	.L58
	ldr	r3, .L72+48
.LPIC16:
	add	r3, pc
	mov	r0, r3
	ldr	r1, [r7, #64]
	ldr	r2, [r7, #116]
	bl	printf(PLT)
	b	.L26
.L58:
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	get4LE(PLT)
	mov	r2, r0
	movw	r3, #19280
	movt	r3, 1027
	cmp	r2, r3
	beq	.L59
	ldr	r3, .L72+52
.LPIC17:
	add	r3, pc
	mov	r0, r3
	ldr	r1, [r7, #116]
	bl	printf(PLT)
	b	.L26
.L59:
	ldr	r3, [r7, #12]
	adds	r3, r3, #26
	mov	r0, r3
	bl	get2LE(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #64]
	adds	r4, r2, r3
	ldr	r3, [r7, #12]
	adds	r3, r3, #28
	mov	r0, r3
	bl	get2LE(PLT)
	mov	r3, r0
	add	r3, r3, r4
	adds	r3, r3, #30
	mov	r2, r3
	ldr	r3, [r7, #112]
	str	r2, [r3, #8]
	movs	r3, #0
	str	r3, [r7, #84]
	ldr	r3, [r7, #112]
	ldr	r3, [r3, #8]
	str	r3, [r7, #24]
	ldr	r3, [r7, #112]
	ldr	r3, [r3, #12]
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #1
	cmp	r3, #0
	beq	.L60
	movs	r3, #1
	str	r3, [r7, #80]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	ble	.L61
	ldr	r3, [r7, #24]
	cmp	r3, #0
	ble	.L61
	ldr	r2, [r7, #20]
	movw	r3, #65535
	movt	r3, 32767
	subs	r3, r3, r2
	ldr	r2, [r7, #24]
	cmp	r3, r2
	bge	.L62
	movs	r3, #0
	str	r3, [r7, #80]
	b	.L63
.L62:
	b	.L63
.L61:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bgt	.L63
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bgt	.L63
	ldr	r3, [r7, #20]
	rsb	r2, r3, #-2147483648
	ldr	r3, [r7, #24]
	cmp	r2, r3
	ble	.L63
	movs	r3, #0
	str	r3, [r7, #80]
.L63:
	ldr	r3, [r7, #80]
	cmp	r3, #0
	beq	.L64
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L64
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #20]
	add	r2, r2, r3
	ldr	r3, [r7, #16]
	str	r2, [r3]
.L64:
	ldr	r3, [r7, #80]
	str	r3, [r7, #84]
.L60:
	ldr	r3, [r7, #84]
	cmp	r3, #0
	bne	.L65
	ldr	r3, .L72+56
.LPIC18:
	add	r3, pc
	mov	r0, r3
	bl	puts(PLT)
	b	.L26
.L65:
	ldr	r3, [r7, #112]
	ldr	r3, [r3, #8]
	mov	r2, r3
	ldr	r3, [r7, #112]
	ldr	r3, [r3, #12]
	add	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bls	.L66
	ldr	r3, .L72+60
.LPIC19:
	add	r3, pc
	mov	r0, r3
	ldr	r1, [r7, #116]
	bl	printf(PLT)
	nop
	b	.L26
.L66:
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #56]
	add	r2, r2, r3
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	adds	r3, r3, #46
	ldr	r2, [r7, #120]
	add	r3, r3, r2
	str	r3, [r7, #120]
	ldr	r3, [r7, #116]
	adds	r3, r3, #1
	str	r3, [r7, #116]
.L35:
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #72]
	cmp	r2, r3
	bcc	.L67
	movs	r3, #0
	str	r3, [r7, #116]
	b	.L68
.L69:
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r0, [r3, #8]
	ldr	r2, [r7, #116]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r0
	mov	r0, r1
	mov	r1, r3
	bl	addEntryToHashTable(PLT)
	ldr	r3, [r7, #116]
	adds	r3, r3, #1
	str	r3, [r7, #116]
.L68:
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #72]
	cmp	r2, r3
	bcc	.L69
	movs	r3, #1
	strb	r3, [r7, #127]
.L26:
	ldrb	r3, [r7, #127]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L70
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mov	r0, r3
	bl	mzHashTableFree(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #12]
.L70:
	ldrb	r3, [r7, #127]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #132
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L73:
	.align	2
.L72:
	.word	.LC3-(.LPIC4+4)
	.word	.LC4-(.LPIC5+4)
	.word	.LC5-(.LPIC6+4)
	.word	.LC6-(.LPIC7+4)
	.word	.LC7-(.LPIC8+4)
	.word	.LC8-(.LPIC9+4)
	.word	.LC9-(.LPIC10+4)
	.word	.LC10-(.LPIC11+4)
	.word	.LC11-(.LPIC12+4)
	.word	__PRETTY_FUNCTION__.6776-(.LPIC13+4)
	.word	.LC12-(.LPIC14+4)
	.word	.LC13-(.LPIC15+4)
	.word	.LC14-(.LPIC16+4)
	.word	.LC15-(.LPIC17+4)
	.word	.LC13-(.LPIC18+4)
	.word	.LC16-(.LPIC19+4)
	.size	parseZipArchive, .-parseZipArchive
	.section	.rodata
	.align	2
.LC17:
	.ascii	"minzip: Map of '%s' failed\012\000"
	.section	.text.mzOpenZipArchive,"ax",%progbits
	.align	2
	.global	mzOpenZipArchive
	.thumb
	.thumb_func
	.type	mzOpenZipArchive, %function
mzOpenZipArchive:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r0, [r7]
	movs	r1, #0
	movs	r2, #32
	bl	memset(PLT)
	ldr	r0, [r7, #4]
	movs	r1, #0
	movs	r2, #0
	bl	open(PLT)
	mov	r2, r0
	ldr	r3, [r7]
	str	r2, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L75
	bl	__errno_location(PLT)
	mov	r3, r0
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L76
	bl	__errno_location(PLT)
	mov	r3, r0
	ldr	r3, [r3]
	b	.L77
.L76:
	mov	r3, #-1
.L77:
	str	r3, [r7, #28]
	b	.L78
.L75:
	ldr	r3, [r7]
	ldr	r2, [r3]
	add	r3, r7, #12
	mov	r0, r2
	mov	r1, r3
	bl	sysMapFileInShmem(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L79
	mov	r3, #-1
	str	r3, [r7, #28]
	ldr	r3, .L85
.LPIC20:
	add	r3, pc
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	printf(PLT)
	b	.L78
.L79:
	ldr	r3, [r7, #16]
	cmp	r3, #21
	bhi	.L80
	mov	r3, #-1
	str	r3, [r7, #28]
	b	.L78
.L80:
	add	r3, r7, #12
	ldr	r0, [r7]
	mov	r1, r3
	bl	parseZipArchive(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L81
	mov	r3, #-1
	str	r3, [r7, #28]
	b	.L78
.L81:
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7]
	add	r2, r3, #16
	add	r3, r7, #12
	mov	r0, r2
	mov	r1, r3
	bl	sysCopyMap(PLT)
	movs	r3, #0
	str	r3, [r7, #12]
.L78:
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L82
	ldr	r0, [r7]
	bl	mzCloseZipArchive(PLT)
.L82:
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L83
	add	r3, r7, #12
	mov	r0, r3
	bl	sysReleaseShmem(PLT)
.L83:
	ldr	r3, [r7, #28]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L86:
	.align	2
.L85:
	.word	.LC17-(.LPIC20+4)
	.size	mzOpenZipArchive, .-mzOpenZipArchive
	.section	.text.mzCloseZipArchive,"ax",%progbits
	.align	2
	.global	mzCloseZipArchive
	.thumb
	.thumb_func
	.type	mzCloseZipArchive, %function
mzCloseZipArchive:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #0
	blt	.L88
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r3
	bl	close(PLT)
.L88:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L89
	ldr	r3, [r7, #4]
	adds	r3, r3, #16
	mov	r0, r3
	bl	sysReleaseShmem(PLT)
.L89:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r0, r3
	bl	free(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mov	r0, r3
	bl	mzHashTableFree(PLT)
	ldr	r3, [r7, #4]
	mov	r2, #-1
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	mzCloseZipArchive, .-mzCloseZipArchive
	.section	.text.mzFindZipEntry,"ax",%progbits
	.align	2
	.global	mzFindZipEntry
	.thumb
	.thumb_func
	.type	mzFindZipEntry, %function
mzFindZipEntry:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7]
	bl	strlen(PLT)
	mov	r3, r0
	ldr	r0, [r7]
	mov	r1, r3
	bl	computeHash(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	movs	r2, #0
	str	r2, [sp]
	mov	r0, r3
	ldr	r1, [r7, #12]
	ldr	r2, [r7]
	ldr	r3, .L92
.LPIC21:
	add	r3, pc
	bl	mzHashTableLookup(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L93:
	.align	2
.L92:
	.word	hashcmpZipName-(.LPIC21+4)
	.size	mzFindZipEntry, .-mzFindZipEntry
	.section	.text.mzIsZipEntrySymlink,"ax",%progbits
	.align	2
	.global	mzIsZipEntrySymlink
	.thumb
	.thumb_func
	.type	mzIsZipEntrySymlink, %function
mzIsZipEntrySymlink:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	and	r3, r3, #65280
	cmp	r3, #768
	bne	.L95
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	asrs	r3, r3, #16
	and	r3, r3, #61440
	cmp	r3, #40960
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
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
	.size	mzIsZipEntrySymlink, .-mzIsZipEntrySymlink
	.section	.rodata
	.align	2
.LC18:
	.ascii	"minzip: Can't read %zu bytes from zip file: %d\012\000"
	.section	.text.processStoredEntry,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	processStoredEntry, %function
processStoredEntry:
	@ args = 0, pretend = 0, frame = 32800
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #32768
	sub	sp, sp, #36
	add	r7, sp, #0
	add	r4, r7, #32
	subs	r4, r4, #20
	str	r0, [r4]
	add	r0, r7, #32
	subs	r0, r0, #24
	str	r1, [r0]
	add	r1, r7, #32
	subs	r1, r1, #28
	str	r2, [r1]
	add	r2, r7, #32
	subs	r2, r2, #32
	str	r3, [r2]
	add	r3, r7, #32
	subs	r3, r3, #24
	ldr	r3, [r3]
	ldr	r3, [r3, #12]
	add	r1, r7, #32768
	add	r1, r1, #28
	str	r3, [r1]
	b	.L98
.L105:
	add	r2, r7, #32768
	add	r2, r2, #28
	ldr	r3, [r2]
	add	r1, r7, #32768
	add	r1, r1, #24
	str	r3, [r1]
	add	r2, r7, #32768
	add	r2, r2, #24
	ldr	r3, [r2]
	cmp	r3, #32768
	bls	.L99
	mov	r3, #32768
	add	r1, r7, #32768
	add	r1, r1, #24
	str	r3, [r1]
.L99:
	add	r3, r7, #32
	subs	r3, r3, #20
	ldr	r3, [r3]
	ldr	r2, [r3]
	add	r3, r7, #32
	subs	r3, r3, #16
	mov	r0, r2
	mov	r1, r3
	add	r3, r7, #32768
	add	r3, r3, #24
	ldr	r2, [r3]
	bl	read(PLT)
	add	r1, r7, #32768
	add	r1, r1, #20
	str	r0, [r1]
	add	r2, r7, #32768
	add	r2, r2, #20
	ldr	r3, [r2]
	cmp	r3, #0
	blt	.L100
	add	r3, r7, #32768
	add	r3, r3, #20
	ldr	r2, [r3]
	add	r1, r7, #32768
	add	r1, r1, #24
	ldr	r3, [r1]
	cmp	r2, r3
	beq	.L101
.L100:
	ldr	r3, .L106
.LPIC22:
	add	r3, pc
	mov	r0, r3
	add	r2, r7, #32768
	add	r2, r2, #24
	ldr	r1, [r2]
	add	r3, r7, #32768
	add	r3, r3, #20
	ldr	r2, [r3]
	bl	printf(PLT)
	movs	r3, #0
	b	.L104
.L101:
	add	r1, r7, #32
	subs	r1, r1, #28
	add	r2, r7, #32
	subs	r2, r2, #16
	add	r3, r7, #32
	subs	r3, r3, #32
	ldr	r4, [r1]
	mov	r0, r2
	add	r2, r7, #32768
	add	r2, r2, #20
	ldr	r1, [r2]
	ldr	r2, [r3]
	blx	r4
	mov	r3, r0
	add	r1, r7, #32768
	add	r1, r1, #19
	strb	r3, [r1]
	add	r2, r7, #32768
	add	r2, r2, #19
	ldrb	r3, [r2]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L103
	movs	r3, #0
	b	.L104
.L103:
	add	r3, r7, #32768
	add	r3, r3, #28
	ldr	r2, [r3]
	add	r1, r7, #32768
	add	r1, r1, #24
	ldr	r3, [r1]
	subs	r3, r2, r3
	add	r2, r7, #32768
	add	r2, r2, #28
	str	r3, [r2]
.L98:
	add	r1, r7, #32768
	add	r1, r1, #28
	ldr	r3, [r1]
	cmp	r3, #0
	bne	.L105
	movs	r3, #1
.L104:
	mov	r0, r3
	add	r7, r7, #32768
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L107:
	.align	2
.L106:
	.word	.LC18-(.LPIC22+4)
	.size	processStoredEntry, .-processStoredEntry
	.section	.rodata
	.align	2
.LC19:
	.ascii	"1.2.8\000"
	.align	2
.LC20:
	.ascii	"minzip: Installed zlib is not compatible with linke"
	.ascii	"d version (%s)\012\000"
	.align	2
.LC21:
	.ascii	"minzip: Call to inflateInit2 failed (zerr=%d)\012\000"
	.align	2
.LC22:
	.ascii	"minzip: inflate read failed (%d vs %ld)\012\000"
	.align	2
.LC23:
	.ascii	"minzip: zlib inflate call failed (zerr=%d)\012\000"
	.align	2
.LC24:
	.ascii	"minzip: Process function elected to fail (in inflat"
	.ascii	"e)\000"
	.align	2
.LC25:
	.ascii	"zerr == 1\000"
	.align	2
.LC26:
	.ascii	"minzip: Size mismatch on inflated file (%ld vs %ld)"
	.ascii	"\012\000"
	.section	.text.processDeflatedEntry,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	processDeflatedEntry, %function
processDeflatedEntry:
	@ args = 0, pretend = 0, frame = 65640
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #65536
	sub	sp, sp, #108
	add	r7, sp, #0
	add	r4, r7, #104
	subs	r4, r4, #92
	str	r0, [r4]
	add	r0, r7, #104
	subs	r0, r0, #96
	str	r1, [r0]
	add	r1, r7, #104
	subs	r1, r1, #100
	str	r2, [r1]
	add	r2, r7, #104
	subs	r2, r2, #104
	str	r3, [r2]
	mov	r3, #-1
	add	r1, r7, #65536
	add	r1, r1, #100
	str	r3, [r1]
	add	r3, r7, #104
	subs	r3, r3, #96
	ldr	r3, [r3]
	ldr	r3, [r3, #12]
	add	r2, r7, #65536
	add	r2, r2, #96
	str	r3, [r2]
	add	r3, r7, #104
	subs	r3, r3, #84
	mov	r0, r3
	movs	r1, #0
	movs	r2, #56
	bl	memset(PLT)
	add	r3, r7, #104
	subs	r3, r3, #84
	movs	r2, #0
	str	r2, [r3, #32]
	add	r3, r7, #104
	subs	r3, r3, #84
	movs	r2, #0
	str	r2, [r3, #36]
	add	r3, r7, #104
	subs	r3, r3, #84
	movs	r2, #0
	str	r2, [r3, #40]
	add	r3, r7, #104
	subs	r3, r3, #84
	movs	r2, #0
	str	r2, [r3]
	add	r3, r7, #104
	subs	r3, r3, #84
	movs	r2, #0
	str	r2, [r3, #4]
	add	r3, r7, #104
	subs	r3, r3, #84
	add	r2, r7, #104
	subs	r2, r2, #28
	str	r2, [r3, #12]
	add	r3, r7, #104
	subs	r3, r3, #84
	mov	r2, #32768
	str	r2, [r3, #16]
	add	r3, r7, #104
	subs	r3, r3, #84
	movs	r2, #2
	str	r2, [r3, #44]
	add	r3, r7, #104
	subs	r3, r3, #84
	mov	r0, r3
	mvn	r1, #14
	ldr	r3, .L125
.LPIC23:
	add	r3, pc
	mov	r2, r3
	movs	r3, #56
	bl	inflateInit2_(PLT)
	add	r3, r7, #65536
	add	r3, r3, #92
	str	r0, [r3]
	add	r1, r7, #65536
	add	r1, r1, #92
	ldr	r3, [r1]
	cmp	r3, #0
	beq	.L109
	add	r2, r7, #65536
	add	r2, r2, #92
	ldr	r3, [r2]
	cmn	r3, #6
	bne	.L110
	ldr	r3, .L125+4
.LPIC24:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L125+8
.LPIC25:
	add	r3, pc
	mov	r1, r3
	bl	printf(PLT)
	b	.L112
.L110:
	ldr	r3, .L125+12
.LPIC26:
	add	r3, pc
	mov	r0, r3
	add	r3, r7, #65536
	add	r3, r3, #92
	ldr	r1, [r3]
	bl	printf(PLT)
	b	.L112
.L109:
	add	r3, r7, #104
	subs	r3, r3, #84
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L113
	add	r1, r7, #65536
	add	r1, r1, #96
	ldr	r3, [r1]
	cmp	r3, #32768
	it	ge
	movge	r3, #32768
	add	r2, r7, #65536
	add	r2, r2, #88
	str	r3, [r2]
	add	r3, r7, #104
	subs	r3, r3, #92
	ldr	r3, [r3]
	ldr	r1, [r3]
	add	r3, r7, #65536
	add	r3, r3, #88
	ldr	r2, [r3]
	add	r3, r7, #32768
	add	r3, r3, #104
	subs	r3, r3, #28
	mov	r0, r1
	mov	r1, r3
	bl	read(PLT)
	add	r1, r7, #65536
	add	r1, r1, #84
	str	r0, [r1]
	add	r3, r7, #65536
	add	r3, r3, #84
	ldr	r2, [r3]
	add	r1, r7, #65536
	add	r1, r1, #88
	ldr	r3, [r1]
	cmp	r2, r3
	beq	.L114
	ldr	r3, .L125+16
.LPIC27:
	add	r3, pc
	mov	r0, r3
	add	r2, r7, #65536
	add	r2, r2, #84
	ldr	r1, [r2]
	add	r3, r7, #65536
	add	r3, r3, #88
	ldr	r2, [r3]
	bl	printf(PLT)
	b	.L115
.L114:
	add	r1, r7, #65536
	add	r1, r1, #96
	ldr	r2, [r1]
	add	r1, r7, #65536
	add	r1, r1, #88
	ldr	r3, [r1]
	subs	r3, r2, r3
	add	r2, r7, #65536
	add	r2, r2, #96
	str	r3, [r2]
	add	r3, r7, #104
	subs	r3, r3, #84
	add	r2, r7, #32768
	add	r2, r2, #104
	subs	r2, r2, #28
	str	r2, [r3]
	add	r3, r7, #65536
	add	r3, r3, #88
	ldr	r2, [r3]
	add	r3, r7, #104
	subs	r3, r3, #84
	str	r2, [r3, #4]
.L113:
	add	r3, r7, #104
	subs	r3, r3, #84
	mov	r0, r3
	movs	r1, #0
	bl	inflate(PLT)
	add	r1, r7, #65536
	add	r1, r1, #92
	str	r0, [r1]
	add	r2, r7, #65536
	add	r2, r2, #92
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.L116
	add	r1, r7, #65536
	add	r1, r1, #92
	ldr	r3, [r1]
	cmp	r3, #1
	beq	.L116
	ldr	r3, .L125+20
.LPIC28:
	add	r3, pc
	mov	r0, r3
	add	r2, r7, #65536
	add	r2, r2, #92
	ldr	r1, [r2]
	bl	printf(PLT)
	b	.L115
.L116:
	add	r3, r7, #104
	subs	r3, r3, #84
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L117
	add	r1, r7, #65536
	add	r1, r1, #92
	ldr	r3, [r1]
	cmp	r3, #1
	bne	.L118
	add	r3, r7, #104
	subs	r3, r3, #84
	ldr	r3, [r3, #16]
	cmp	r3, #32768
	beq	.L118
.L117:
	add	r3, r7, #104
	subs	r3, r3, #84
	ldr	r3, [r3, #12]
	mov	r2, r3
	add	r3, r7, #104
	subs	r3, r3, #28
	subs	r3, r2, r3
	add	r2, r7, #65536
	add	r2, r2, #80
	str	r3, [r2]
	add	r1, r7, #104
	subs	r1, r1, #100
	add	r2, r7, #104
	subs	r2, r2, #28
	add	r3, r7, #104
	subs	r3, r3, #104
	ldr	r4, [r1]
	mov	r0, r2
	add	r2, r7, #65536
	add	r2, r2, #80
	ldr	r1, [r2]
	ldr	r2, [r3]
	blx	r4
	mov	r3, r0
	add	r1, r7, #65536
	add	r1, r1, #79
	strb	r3, [r1]
	add	r2, r7, #65536
	add	r2, r2, #79
	ldrb	r3, [r2]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L119
	ldr	r3, .L125+24
.LPIC29:
	add	r3, pc
	mov	r0, r3
	bl	puts(PLT)
	b	.L115
.L119:
	add	r3, r7, #104
	subs	r3, r3, #84
	add	r2, r7, #104
	subs	r2, r2, #28
	str	r2, [r3, #12]
	add	r3, r7, #104
	subs	r3, r3, #84
	mov	r2, #32768
	str	r2, [r3, #16]
.L118:
	add	r1, r7, #65536
	add	r1, r1, #92
	ldr	r3, [r1]
	cmp	r3, #0
	beq	.L109
	add	r2, r7, #65536
	add	r2, r2, #92
	ldr	r3, [r2]
	cmp	r3, #1
	beq	.L120
	ldr	r3, .L125+28
.LPIC30:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L125+32
.LPIC31:
	add	r3, pc
	mov	r1, r3
	movw	r2, #671
	ldr	r3, .L125+36
.LPIC32:
	add	r3, pc
	bl	__assert_fail(PLT)
.L120:
	add	r3, r7, #104
	subs	r3, r3, #84
	ldr	r3, [r3, #20]
	add	r1, r7, #65536
	add	r1, r1, #100
	str	r3, [r1]
.L115:
	add	r3, r7, #104
	subs	r3, r3, #84
	mov	r0, r3
	bl	inflateEnd(PLT)
.L112:
	add	r3, r7, #104
	subs	r3, r3, #96
	ldr	r3, [r3]
	ldr	r2, [r3, #16]
	add	r1, r7, #65536
	add	r1, r1, #100
	ldr	r3, [r1]
	cmp	r2, r3
	beq	.L121
	add	r2, r7, #65536
	add	r2, r2, #100
	ldr	r3, [r2]
	cmp	r3, #-1
	beq	.L122
	add	r3, r7, #104
	subs	r3, r3, #96
	ldr	r3, [r3]
	ldr	r3, [r3, #16]
	ldr	r2, .L125+40
.LPIC33:
	add	r2, pc
	mov	r0, r2
	add	r2, r7, #65536
	add	r2, r2, #100
	ldr	r1, [r2]
	mov	r2, r3
	bl	printf(PLT)
.L122:
	movs	r3, #0
	b	.L124
.L121:
	movs	r3, #1
.L124:
	mov	r0, r3
	add	r7, r7, #65536
	adds	r7, r7, #108
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L126:
	.align	2
.L125:
	.word	.LC19-(.LPIC23+4)
	.word	.LC20-(.LPIC24+4)
	.word	.LC19-(.LPIC25+4)
	.word	.LC21-(.LPIC26+4)
	.word	.LC22-(.LPIC27+4)
	.word	.LC23-(.LPIC28+4)
	.word	.LC24-(.LPIC29+4)
	.word	.LC25-(.LPIC30+4)
	.word	.LC11-(.LPIC31+4)
	.word	__PRETTY_FUNCTION__.6855-(.LPIC32+4)
	.word	.LC26-(.LPIC33+4)
	.size	processDeflatedEntry, .-processDeflatedEntry
	.section	.rodata
	.align	2
.LC27:
	.ascii	"minzip: Unsupported compression type %d for entry '"
	.ascii	"%s'\012\000"
	.section	.text.mzProcessZipEntryContents,"ax",%progbits
	.align	2
	.global	mzProcessZipEntryContents
	.thumb
	.thumb_func
	.type	mzProcessZipEntryContents, %function
mzProcessZipEntryContents:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	strb	r3, [r7, #23]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	mov	r0, r3
	movs	r1, #0
	movs	r2, #1
	bl	lseek(PLT)
	str	r0, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	mov	r0, r2
	mov	r1, r3
	movs	r2, #0
	bl	lseek(PLT)
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L129
	cmp	r3, #8
	beq	.L130
	b	.L133
.L129:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	processStoredEntry(PLT)
	mov	r3, r0
	strb	r3, [r7, #23]
	b	.L131
.L130:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	processDeflatedEntry(PLT)
	mov	r3, r0
	strb	r3, [r7, #23]
	b	.L131
.L133:
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	ldr	r1, .L134
.LPIC34:
	add	r1, pc
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	printf(PLT)
	nop
.L131:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r1, [r7, #16]
	movs	r2, #0
	bl	lseek(PLT)
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L135:
	.align	2
.L134:
	.word	.LC27-(.LPIC34+4)
	.size	mzProcessZipEntryContents, .-mzProcessZipEntryContents
	.section	.text.crcProcessFunction,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	crcProcessFunction, %function
crcProcessFunction:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	mov	r0, r2
	ldr	r1, [r7, #12]
	mov	r2, r3
	bl	crc32(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3]
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	crcProcessFunction, .-crcProcessFunction
	.section	.rodata
	.align	2
.LC28:
	.ascii	"minzip: Can't calculate CRC for entry\000"
	.align	2
.LC29:
	.ascii	"minzip: CRC for entry %.*s (0x%08lx) != expected (0"
	.ascii	"x%08lx)\012\000"
	.section	.text.mzIsZipEntryIntact,"ax",%progbits
	.align	2
	.global	mzIsZipEntryIntact
	.thumb
	.thumb_func
	.type	mzIsZipEntryIntact, %function
mzIsZipEntryIntact:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r0, #0
	movs	r1, #0
	movs	r2, #0
	bl	crc32(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	ldr	r2, .L143
.LPIC35:
	add	r2, pc
	bl	mzProcessZipEntryContents(PLT)
	mov	r3, r0
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #15]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L139
	ldr	r3, .L143+4
.LPIC36:
	add	r3, pc
	mov	r0, r3
	bl	puts(PLT)
	movs	r3, #0
	b	.L142
.L139:
	ldr	r3, [r7]
	ldr	r3, [r3, #28]
	mov	r2, r3
	ldr	r3, [r7, #8]
	cmp	r2, r3
	beq	.L141
	ldr	r3, [r7]
	ldr	r1, [r3]
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	ldr	r0, [r7]
	ldr	r0, [r0, #28]
	str	r0, [sp]
	ldr	r0, .L143+8
.LPIC37:
	add	r0, pc
	bl	printf(PLT)
	movs	r3, #0
	b	.L142
.L141:
	movs	r3, #1
.L142:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L144:
	.align	2
.L143:
	.word	crcProcessFunction-(.LPIC35+4)
	.word	.LC28-(.LPIC36+4)
	.word	.LC29-(.LPIC37+4)
	.size	mzIsZipEntryIntact, .-mzIsZipEntryIntact
	.section	.text.copyProcessFunction,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	copyProcessFunction, %function
copyProcessFunction:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #4]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	blt	.L146
	ldr	r3, [r7, #20]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	mov	r0, r2
	ldr	r1, [r7, #12]
	mov	r2, r3
	bl	memcpy(PLT)
	ldr	r3, [r7, #20]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	add	r2, r2, r3
	ldr	r3, [r7, #20]
	str	r2, [r3]
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	subs	r2, r2, r3
	ldr	r3, [r7, #20]
	str	r2, [r3, #4]
	movs	r3, #1
	b	.L147
.L146:
	movs	r3, #0
.L147:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	copyProcessFunction, .-copyProcessFunction
	.section	.rodata
	.align	2
.LC30:
	.ascii	"minzip: Can't extract entry to buffer.\000"
	.section	.text.mzReadZipEntry,"ax",%progbits
	.align	2
	.global	mzReadZipEntry
	.thumb
	.thumb_func
	.type	mzReadZipEntry, %function
mzReadZipEntry:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #4]
	str	r3, [r7, #20]
	ldr	r3, [r7]
	str	r3, [r7, #24]
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, .L152
.LPIC38:
	add	r2, pc
	bl	mzProcessZipEntryContents(PLT)
	mov	r3, r0
	strb	r3, [r7, #31]
	ldrb	r3, [r7, #31]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L149
	ldr	r3, .L152+4
.LPIC39:
	add	r3, pc
	mov	r0, r3
	bl	puts(PLT)
	movs	r3, #0
	b	.L151
.L149:
	movs	r3, #1
.L151:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L153:
	.align	2
.L152:
	.word	copyProcessFunction-(.LPIC38+4)
	.word	.LC30-(.LPIC39+4)
	.size	mzReadZipEntry, .-mzReadZipEntry
	.section	.rodata
	.align	2
.LC31:
	.ascii	"minzip: Can't write %d bytes (only %d) from zip fil"
	.ascii	"e: %s\012\000"
	.section	.text.writeProcessFunction,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	writeProcessFunction, %function
writeProcessFunction:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #8]
	mov	r0, r2
	ldr	r1, [r7, #12]
	mov	r2, r3
	bl	write(PLT)
	str	r0, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	beq	.L155
	bl	__errno_location(PLT)
	mov	r3, r0
	ldr	r3, [r3]
	mov	r0, r3
	bl	strerror(PLT)
	mov	r3, r0
	ldr	r2, .L157
.LPIC40:
	add	r2, pc
	mov	r0, r2
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #20]
	bl	printf(PLT)
	movs	r3, #0
	b	.L156
.L155:
	movs	r3, #1
.L156:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L158:
	.align	2
.L157:
	.word	.LC31-(.LPIC40+4)
	.size	writeProcessFunction, .-writeProcessFunction
	.section	.rodata
	.align	2
.LC32:
	.ascii	"minzip: Can't extract entry to file.\000"
	.section	.text.mzExtractZipEntryToFile,"ax",%progbits
	.align	2
	.global	mzExtractZipEntryToFile
	.thumb
	.thumb_func
	.type	mzExtractZipEntryToFile, %function
mzExtractZipEntryToFile:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, .L162
.LPIC41:
	add	r2, pc
	bl	mzProcessZipEntryContents(PLT)
	mov	r3, r0
	strb	r3, [r7, #23]
	ldrb	r3, [r7, #23]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L160
	ldr	r3, .L162+4
.LPIC42:
	add	r3, pc
	mov	r0, r3
	bl	puts(PLT)
	movs	r3, #0
	b	.L161
.L160:
	movs	r3, #1
.L161:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L163:
	.align	2
.L162:
	.word	writeProcessFunction-(.LPIC41+4)
	.word	.LC32-(.LPIC42+4)
	.size	mzExtractZipEntryToFile, .-mzExtractZipEntryToFile
	.section	.text.targetEntryPath,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	targetEntryPath, %function
targetEntryPath:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	strb	r3, [r7, #31]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mov	r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	subs	r3, r2, r3
	adds	r3, r3, #2
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bge	.L165
	ldr	r3, [r7, #24]
	lsls	r3, r3, #1
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #24]
	mov	r0, r2
	mov	r1, r3
	bl	realloc(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L166
	movs	r3, #0
	b	.L167
.L166:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #20]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #24]
	str	r2, [r3, #20]
.L165:
	ldrb	r3, [r7, #31]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L168
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r0, [r7, #16]
	mov	r1, r2
	mov	r2, r3
	bl	memcpy(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	beq	.L169
	ldr	r3, [r7, #16]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #47
	beq	.L168
.L169:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #16]
	adds	r2, r3, #1
	str	r2, [r7, #16]
	movs	r2, #47
	strb	r2, [r3]
.L168:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	add	r2, r2, r3
	ldr	r3, [r7]
	ldr	r1, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	subs	r3, r1, r3
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	bl	memcpy(PLT)
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	subs	r3, r2, r3
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
.L167:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	targetEntryPath, .-targetEntryPath
	.section	.rodata
	.align	2
.LC33:
	.ascii	"minzip: mzExtractRecursive(): zipDir must be a rela"
	.ascii	"tive path.\000"
	.align	2
.LC34:
	.ascii	"minzip: mzExtractRecursive(): targetDir must be an "
	.ascii	"absolute path.\000"
	.align	2
.LC35:
	.ascii	"minzip: Can't allocate %d bytes for zip path\012\000"
	.align	2
.LC36:
	.ascii	"minzip: Can't assemble target path for \"%.*s\"\012"
	.ascii	"\000"
	.align	2
.LC37:
	.ascii	"minzip: Can't create containing directory for \"%s\""
	.ascii	": %s\012\000"
	.align	2
.LC38:
	.ascii	"minzip: Extracted dir \"%s\"\012\000"
	.align	2
.LC39:
	.ascii	"minzip: Symlink entry \"%s\" has no target\012\000"
	.align	2
.LC40:
	.ascii	"minzip: Can't read symlink target for \"%s\"\012\000"
	.align	2
.LC41:
	.ascii	"minzip: Can't symlink \"%s\" to \"%s\": %s\012\000"
	.align	2
.LC42:
	.ascii	"minzip: Extracted symlink \"%s\" -> \"%s\"\012\000"
	.align	2
.LC43:
	.ascii	"minzip: Can't create target file \"%s\": %s\012\000"
	.align	2
.LC44:
	.ascii	"minzip: Error extracting \"%s\"\012\000"
	.align	2
.LC45:
	.ascii	"minzip: Error touching \"%s\"\012\000"
	.align	2
.LC46:
	.ascii	"minzip: Extracted file \"%s\"\012\000"
	.section	.text.mzExtractRecursive,"ax",%progbits
	.align	2
	.global	mzExtractRecursive
	.thumb
	.thumb_func
	.type	mzExtractRecursive, %function
mzExtractRecursive:
	@ args = 12, pretend = 0, frame = 88
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #88
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #47
	bne	.L171
	ldr	r3, .L201
.LPIC43:
	add	r3, pc
	mov	r0, r3
	bl	puts(PLT)
	movs	r3, #0
	b	.L200
.L171:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #47
	beq	.L173
	ldr	r3, .L201+4
.LPIC44:
	add	r3, pc
	mov	r0, r3
	bl	puts(PLT)
	movs	r3, #0
	b	.L200
.L173:
	ldr	r0, [r7, #8]
	bl	strlen(PLT)
	str	r0, [r7, #84]
	ldr	r3, [r7, #84]
	adds	r3, r3, #2
	mov	r0, r3
	bl	malloc(PLT)
	mov	r3, r0
	str	r3, [r7, #68]
	ldr	r3, [r7, #68]
	cmp	r3, #0
	bne	.L174
	ldr	r3, [r7, #84]
	adds	r3, r3, #2
	ldr	r2, .L201+8
.LPIC45:
	add	r2, pc
	mov	r0, r2
	mov	r1, r3
	bl	printf(PLT)
	movs	r3, #0
	b	.L200
.L174:
	ldr	r3, [r7, #84]
	cmp	r3, #0
	beq	.L175
	ldr	r0, [r7, #68]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #84]
	bl	memcpy(PLT)
	ldr	r3, [r7, #84]
	subs	r3, r3, #1
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #47
	beq	.L175
	ldr	r3, [r7, #84]
	adds	r2, r3, #1
	str	r2, [r7, #84]
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	movs	r2, #47
	strb	r2, [r3]
.L175:
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #84]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	mov	r0, r3
	bl	strlen(PLT)
	mov	r3, r0
	str	r3, [r7, #28]
	ldr	r3, [r7, #68]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	mov	r0, r3
	bl	strlen(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #36]
	movs	r3, #0
	strb	r3, [r7, #79]
	movs	r3, #1
	str	r3, [r7, #72]
	movs	r3, #0
	str	r3, [r7, #80]
	b	.L176
.L199:
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #8]
	ldr	r2, [r7, #80]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	str	r3, [r7, #64]
	ldr	r3, [r7, #64]
	ldr	r2, [r3]
	ldr	r3, [r7, #84]
	cmp	r2, r3
	bcs	.L177
	ldrb	r3, [r7, #79]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L178
	b	.L179
.L178:
	b	.L180
.L177:
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r1, [r7, #68]
	ldr	r2, [r7, #84]
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L181
	ldrb	r3, [r7, #79]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L182
	b	.L179
.L182:
	b	.L180
.L181:
	movs	r3, #1
	strb	r3, [r7, #79]
	add	r3, r7, #16
	mov	r0, r3
	ldr	r1, [r7, #64]
	bl	targetEntryPath(PLT)
	str	r0, [r7, #60]
	ldr	r3, [r7, #60]
	cmp	r3, #0
	bne	.L183
	ldr	r3, [r7, #64]
	ldr	r2, [r3]
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #4]
	ldr	r1, .L201+12
.LPIC46:
	add	r1, pc
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	printf(PLT)
	movs	r3, #0
	str	r3, [r7, #72]
	b	.L179
.L183:
	ldr	r3, [r7]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L184
	ldr	r3, [r7, #100]
	cmp	r3, #0
	beq	.L185
	ldr	r3, [r7, #100]
	ldr	r0, [r7, #60]
	ldr	r1, [r7, #104]
	blx	r3
	b	.L180
.L185:
	b	.L180
.L184:
	ldr	r3, [r7, #64]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #64]
	ldr	r3, [r3]
	subs	r3, r3, #1
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #47
	bne	.L186
	ldr	r3, [r7]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L189
	ldr	r0, [r7, #60]
	movw	r1, #493
	ldr	r2, [r7, #96]
	movs	r3, #0
	bl	dirCreateHierarchy(PLT)
	str	r0, [r7, #56]
	ldr	r3, [r7, #56]
	cmp	r3, #0
	beq	.L188
	bl	__errno_location(PLT)
	mov	r3, r0
	ldr	r3, [r3]
	mov	r0, r3
	bl	strerror(PLT)
	mov	r3, r0
	ldr	r2, .L201+16
.LPIC47:
	add	r2, pc
	mov	r0, r2
	ldr	r1, [r7, #60]
	mov	r2, r3
	bl	printf(PLT)
	movs	r3, #0
	str	r3, [r7, #72]
	b	.L179
.L188:
	ldr	r3, .L201+20
.LPIC48:
	add	r3, pc
	mov	r0, r3
	ldr	r1, [r7, #60]
	bl	printf(PLT)
	b	.L189
.L186:
	ldr	r0, [r7, #60]
	movw	r1, #493
	ldr	r2, [r7, #96]
	movs	r3, #1
	bl	dirCreateHierarchy(PLT)
	str	r0, [r7, #52]
	ldr	r3, [r7, #52]
	cmp	r3, #0
	beq	.L190
	bl	__errno_location(PLT)
	mov	r3, r0
	ldr	r3, [r3]
	mov	r0, r3
	bl	strerror(PLT)
	mov	r3, r0
	ldr	r2, .L201+24
.LPIC49:
	add	r2, pc
	mov	r0, r2
	ldr	r1, [r7, #60]
	mov	r2, r3
	bl	printf(PLT)
	movs	r3, #0
	str	r3, [r7, #72]
	b	.L179
.L190:
	ldr	r3, [r7]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L191
	ldr	r0, [r7, #64]
	bl	mzIsZipEntrySymlink(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L191
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	bne	.L192
	ldr	r3, .L201+28
.LPIC50:
	add	r3, pc
	mov	r0, r3
	ldr	r1, [r7, #60]
	bl	printf(PLT)
	movs	r3, #0
	str	r3, [r7, #72]
	b	.L179
.L192:
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #16]
	adds	r3, r3, #1
	mov	r0, r3
	bl	malloc(PLT)
	mov	r3, r0
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	cmp	r3, #0
	bne	.L193
	movs	r3, #0
	str	r3, [r7, #72]
	b	.L179
.L193:
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #16]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #64]
	ldr	r2, [r7, #48]
	bl	mzReadZipEntry(PLT)
	mov	r3, r0
	str	r3, [r7, #72]
	ldr	r3, [r7, #72]
	cmp	r3, #0
	bne	.L194
	ldr	r3, .L201+32
.LPIC51:
	add	r3, pc
	mov	r0, r3
	ldr	r1, [r7, #60]
	bl	printf(PLT)
	ldr	r0, [r7, #48]
	bl	free(PLT)
	b	.L179
.L194:
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #16]
	ldr	r2, [r7, #48]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	ldr	r0, [r7, #48]
	ldr	r1, [r7, #60]
	bl	symlink(PLT)
	str	r0, [r7, #52]
	ldr	r3, [r7, #52]
	cmp	r3, #0
	beq	.L195
	bl	__errno_location(PLT)
	mov	r3, r0
	ldr	r3, [r3]
	mov	r0, r3
	bl	strerror(PLT)
	mov	r3, r0
	ldr	r2, .L201+36
.LPIC52:
	add	r2, pc
	mov	r0, r2
	ldr	r1, [r7, #60]
	ldr	r2, [r7, #48]
	bl	printf(PLT)
	ldr	r0, [r7, #48]
	bl	free(PLT)
	movs	r3, #0
	str	r3, [r7, #72]
	b	.L179
.L195:
	ldr	r3, .L201+40
.LPIC53:
	add	r3, pc
	mov	r0, r3
	ldr	r1, [r7, #60]
	ldr	r2, [r7, #48]
	bl	printf(PLT)
	ldr	r0, [r7, #48]
	bl	free(PLT)
	b	.L189
.L191:
	ldr	r0, [r7, #60]
	mov	r1, #420
	bl	creat(PLT)
	str	r0, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bge	.L196
	bl	__errno_location(PLT)
	mov	r3, r0
	ldr	r3, [r3]
	mov	r0, r3
	bl	strerror(PLT)
	mov	r3, r0
	ldr	r2, .L201+44
.LPIC54:
	add	r2, pc
	mov	r0, r2
	ldr	r1, [r7, #60]
	mov	r2, r3
	bl	printf(PLT)
	movs	r3, #0
	str	r3, [r7, #72]
	b	.L179
.L196:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #64]
	ldr	r2, [r7, #44]
	bl	mzExtractZipEntryToFile(PLT)
	mov	r3, r0
	strb	r3, [r7, #43]
	ldr	r0, [r7, #44]
	bl	close(PLT)
	ldrb	r3, [r7, #43]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L197
	ldr	r3, .L201+48
.LPIC55:
	add	r3, pc
	mov	r0, r3
	ldr	r1, [r7, #60]
	bl	printf(PLT)
	movs	r3, #0
	strb	r3, [r7, #43]
	b	.L179
.L197:
	ldr	r3, [r7, #96]
	cmp	r3, #0
	beq	.L198
	ldr	r0, [r7, #60]
	ldr	r1, [r7, #96]
	bl	utime(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L198
	ldr	r3, .L201+52
.LPIC56:
	add	r3, pc
	mov	r0, r3
	ldr	r1, [r7, #60]
	bl	printf(PLT)
	movs	r3, #0
	strb	r3, [r7, #43]
	b	.L179
.L198:
	ldr	r3, .L201+56
.LPIC57:
	add	r3, pc
	mov	r0, r3
	ldr	r1, [r7, #60]
	bl	printf(PLT)
.L189:
	ldr	r3, [r7, #100]
	cmp	r3, #0
	beq	.L180
	ldr	r3, [r7, #100]
	ldr	r0, [r7, #60]
	ldr	r1, [r7, #104]
	blx	r3
.L180:
	ldr	r3, [r7, #80]
	adds	r3, r3, #1
	str	r3, [r7, #80]
.L176:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #80]
	cmp	r2, r3
	bhi	.L199
.L179:
	ldr	r3, [r7, #24]
	mov	r0, r3
	bl	free(PLT)
	ldr	r0, [r7, #68]
	bl	free(PLT)
	ldr	r3, [r7, #72]
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
.L200:
	mov	r0, r3
	adds	r7, r7, #88
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L202:
	.align	2
.L201:
	.word	.LC33-(.LPIC43+4)
	.word	.LC34-(.LPIC44+4)
	.word	.LC35-(.LPIC45+4)
	.word	.LC36-(.LPIC46+4)
	.word	.LC37-(.LPIC47+4)
	.word	.LC38-(.LPIC48+4)
	.word	.LC37-(.LPIC49+4)
	.word	.LC39-(.LPIC50+4)
	.word	.LC40-(.LPIC51+4)
	.word	.LC41-(.LPIC52+4)
	.word	.LC42-(.LPIC53+4)
	.word	.LC43-(.LPIC54+4)
	.word	.LC44-(.LPIC55+4)
	.word	.LC45-(.LPIC56+4)
	.word	.LC46-(.LPIC57+4)
	.size	mzExtractRecursive, .-mzExtractRecursive
	.section	.rodata.__PRETTY_FUNCTION__.6776,"a",%progbits
	.align	2
	.type	__PRETTY_FUNCTION__.6776, %object
	.size	__PRETTY_FUNCTION__.6776, 16
__PRETTY_FUNCTION__.6776:
	.ascii	"parseZipArchive\000"
	.section	.rodata.__PRETTY_FUNCTION__.6855,"a",%progbits
	.align	2
	.type	__PRETTY_FUNCTION__.6855, %object
	.size	__PRETTY_FUNCTION__.6855, 21
__PRETTY_FUNCTION__.6855:
	.ascii	"processDeflatedEntry\000"
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
