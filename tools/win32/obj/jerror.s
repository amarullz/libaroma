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
	.file	"jerror.c"
	.section	.text.emit_message,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	emit_message, %function
emit_message:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	push	{r4, lr}
	mov	r3, r0
	ldr	r4, [r0]
	blt	.L11
	ldr	r3, [r4, #104]
	cmp	r1, r3
	ble	.L12
	pop	{r4, pc}
.L12:
	ldr	r3, [r4, #8]
	pop	{r4, lr}
	bx	r3	@ indirect register sibling call
.L11:
	ldr	r2, [r4, #108]
	cbz	r2, .L3
	ldr	r1, [r4, #104]
	cmp	r1, #2
	ble	.L4
.L3:
	mov	r0, r3
	ldr	r3, [r4, #8]
	blx	r3
	ldr	r2, [r4, #108]
.L4:
	adds	r2, r2, #1
	str	r2, [r4, #108]
	pop	{r4, pc}
	.size	emit_message, .-emit_message
	.section	.text.reset_error_mgr,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	reset_error_mgr, %function
reset_error_mgr:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]
	movs	r2, #0
	str	r2, [r3, #108]
	str	r2, [r3, #20]
	bx	lr
	.size	reset_error_mgr, .-reset_error_mgr
	.section	.text.format_message,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	format_message, %function
format_message:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	sub	sp, sp, #24
	ldr	r6, [r0]
	mov	r0, r1
	ldr	r3, [r6, #20]
	cmp	r3, #0
	ble	.L15
	ldr	r2, [r6, #116]
	cmp	r3, r2
	ble	.L29
.L15:
	ldr	r2, [r6, #120]
	cmp	r2, #0
	beq	.L17
	ldr	r1, [r6, #124]
	cmp	r3, r1
	blt	.L17
	ldr	r4, [r6, #128]
	cmp	r3, r4
	bgt	.L17
	subs	r1, r3, r1
	ldr	r1, [r2, r1, lsl #2]
	cmp	r1, #0
	beq	.L17
.L18:
	mov	r5, r1
	b	.L19
.L23:
	cmp	r4, #37
	beq	.L30
	mov	r5, r3
.L19:
	mov	r3, r5
	ldrb	r4, [r3], #1	@ zero_extendqisi2
	cmp	r4, #0
	bne	.L23
.L22:
	add	r2, r6, #24
	ldmia	r2, {r2, r3, r4}
	str	r4, [sp]
	ldr	r4, [r6, #36]
	str	r4, [sp, #4]
	ldr	r4, [r6, #40]
	str	r4, [sp, #8]
	ldr	r4, [r6, #44]
	str	r4, [sp, #12]
	ldr	r4, [r6, #48]
	str	r4, [sp, #16]
	ldr	r4, [r6, #52]
	str	r4, [sp, #20]
	bl	sprintf(PLT)
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, pc}
.L29:
	ldr	r2, [r6, #112]
	ldr	r1, [r2, r3, lsl #2]
	cmp	r1, #0
	bne	.L18
	b	.L17
.L30:
	ldrb	r3, [r5, #1]	@ zero_extendqisi2
	cmp	r3, #115
	bne	.L22
	add	r2, r6, #24
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, lr}
	b	sprintf(PLT)
.L17:
	ldr	r2, [r6, #112]
	str	r3, [r6, #24]
	ldr	r1, [r2]
	b	.L18
	.size	format_message, .-format_message
	.section	.text.output_message,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	output_message, %function
output_message:
	@ args = 0, pretend = 0, frame = 200
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0]
	push	{r4, r5, lr}
	sub	sp, sp, #204
	mov	r1, sp
	ldr	r4, .L33
	ldr	r3, [r3, #12]
	blx	r3
	ldr	r3, .L33+4
.LPIC8:
	add	r4, pc
	ldr	r1, .L33+8
	mov	r2, sp
	ldr	r3, [r4, r3]
.LPIC9:
	add	r1, pc
	ldr	r0, [r3]
	bl	fprintf(PLT)
	add	sp, sp, #204
	@ sp needed
	pop	{r4, r5, pc}
.L34:
	.align	2
.L33:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC8+4)
	.word	stderr(GOT)
	.word	.LC0-(.LPIC9+4)
	.size	output_message, .-output_message
	.section	.text.error_exit,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	error_exit, %function
error_exit:
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	mov	r4, r0
	ldr	r3, [r0]
	ldr	r3, [r3, #8]
	blx	r3
	mov	r0, r4
	bl	jpeg_destroy(PLT)
	movs	r0, #1
	bl	exit(PLT)
	.size	error_exit, .-error_exit
	.section	.text.jpeg_std_error,"ax",%progbits
	.align	2
	.global	jpeg_std_error
	.thumb
	.thumb_func
	.type	jpeg_std_error, %function
jpeg_std_error:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	movs	r2, #0
	ldr	r8, .L39
	movs	r4, #123
	ldr	ip, .L39+4
	ldr	lr, .L39+8
.LPIC10:
	add	r8, pc
	ldr	r7, .L39+12
	ldr	r6, .L39+16
.LPIC11:
	add	ip, pc
	ldr	r1, .L39+20
.LPIC12:
	add	lr, pc
	ldr	r5, .L39+24
.LPIC13:
	add	r7, pc
.LPIC14:
	add	r6, pc
	stmia	r0, {r8, ip, lr}
.LPIC15:
	add	r1, pc
	str	r7, [r0, #12]
	str	r6, [r0, #16]
	str	r2, [r0, #104]
	str	r2, [r0, #108]
	str	r2, [r0, #20]
	ldr	r1, [r1, r5]
	str	r2, [r0, #120]
	str	r2, [r0, #124]
	str	r1, [r0, #112]
	str	r2, [r0, #128]
	str	r4, [r0, #116]
	pop	{r4, r5, r6, r7, r8, pc}
.L40:
	.align	2
.L39:
	.word	error_exit-(.LPIC10+4)
	.word	emit_message-(.LPIC11+4)
	.word	output_message-(.LPIC12+4)
	.word	format_message-(.LPIC13+4)
	.word	reset_error_mgr-(.LPIC14+4)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC15+4)
	.word	jpeg_std_message_table(GOT)
	.size	jpeg_std_error, .-jpeg_std_error
	.global	jpeg_std_message_table
	.section	.data.rel.ro.local.jpeg_std_message_table,"aw",%progbits
	.align	3
	.type	jpeg_std_message_table, %object
	.size	jpeg_std_message_table, 500
jpeg_std_message_table:
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.word	.LC12
	.word	.LC13
	.word	.LC14
	.word	.LC15
	.word	.LC16
	.word	.LC17
	.word	.LC18
	.word	.LC19
	.word	.LC20
	.word	.LC21
	.word	.LC22
	.word	.LC23
	.word	.LC24
	.word	.LC25
	.word	.LC26
	.word	.LC27
	.word	.LC28
	.word	.LC29
	.word	.LC30
	.word	.LC31
	.word	.LC32
	.word	.LC33
	.word	.LC34
	.word	.LC35
	.word	.LC36
	.word	.LC37
	.word	.LC38
	.word	.LC39
	.word	.LC40
	.word	.LC41
	.word	.LC42
	.word	.LC43
	.word	.LC44
	.word	.LC45
	.word	.LC46
	.word	.LC47
	.word	.LC48
	.word	.LC49
	.word	.LC50
	.word	.LC51
	.word	.LC52
	.word	.LC53
	.word	.LC54
	.word	.LC55
	.word	.LC56
	.word	.LC57
	.word	.LC58
	.word	.LC59
	.word	.LC60
	.word	.LC61
	.word	.LC62
	.word	.LC63
	.word	.LC64
	.word	.LC65
	.word	.LC66
	.word	.LC67
	.word	.LC68
	.word	.LC69
	.word	.LC70
	.word	.LC71
	.word	.LC72
	.word	.LC73
	.word	.LC74
	.word	.LC75
	.word	.LC76
	.word	.LC77
	.word	.LC78
	.word	.LC79
	.word	.LC80
	.word	.LC81
	.word	.LC82
	.word	.LC83
	.word	.LC84
	.word	.LC85
	.word	.LC86
	.word	.LC87
	.word	.LC88
	.word	.LC89
	.word	.LC90
	.word	.LC91
	.word	.LC92
	.word	.LC93
	.word	.LC94
	.word	.LC95
	.word	.LC96
	.word	.LC97
	.word	.LC98
	.word	.LC99
	.word	.LC100
	.word	.LC101
	.word	.LC102
	.word	.LC103
	.word	.LC104
	.word	.LC105
	.word	.LC106
	.word	.LC107
	.word	.LC108
	.word	.LC109
	.word	.LC110
	.word	.LC111
	.word	.LC112
	.word	.LC113
	.word	.LC114
	.word	.LC115
	.word	.LC116
	.word	.LC117
	.word	.LC118
	.word	.LC119
	.word	.LC120
	.word	.LC121
	.word	.LC122
	.word	.LC123
	.word	.LC124
	.word	0
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"%s\012\000"
.LC1:
	.ascii	"Bogus message code %d\000"
	.space	2
.LC2:
	.ascii	"Sorry, there are legal restrictions on arithmetic c"
	.ascii	"oding\000"
	.space	3
.LC3:
	.ascii	"ALIGN_TYPE is wrong, please fix\000"
.LC4:
	.ascii	"MAX_ALLOC_CHUNK is wrong, please fix\000"
	.space	3
.LC5:
	.ascii	"Bogus buffer control mode\000"
	.space	2
.LC6:
	.ascii	"Invalid component ID %d in SOS\000"
	.space	1
.LC7:
	.ascii	"DCT coefficient out of range\000"
	.space	3
.LC8:
	.ascii	"IDCT output block size %d not supported\000"
.LC9:
	.ascii	"Bogus Huffman table definition\000"
	.space	1
.LC10:
	.ascii	"Bogus input colorspace\000"
	.space	1
.LC11:
	.ascii	"Bogus JPEG colorspace\000"
	.space	2
.LC12:
	.ascii	"Bogus marker length\000"
.LC13:
	.ascii	"Wrong JPEG library version: library is %d, caller e"
	.ascii	"xpects %d\000"
	.space	3
.LC14:
	.ascii	"Sampling factors too large for interleaved scan\000"
.LC15:
	.ascii	"Invalid memory pool code %d\000"
.LC16:
	.ascii	"Unsupported JPEG data precision %d\000"
	.space	1
.LC17:
	.ascii	"Invalid progressive parameters Ss=%d Se=%d Ah=%d Al"
	.ascii	"=%d\000"
	.space	1
.LC18:
	.ascii	"Invalid progressive parameters at scan script entry"
	.ascii	" %d\000"
	.space	1
.LC19:
	.ascii	"Bogus sampling factors\000"
	.space	1
.LC20:
	.ascii	"Invalid scan script at entry %d\000"
.LC21:
	.ascii	"Improper call to JPEG library in state %d\000"
	.space	2
.LC22:
	.ascii	"JPEG parameter struct mismatch: library thinks size"
	.ascii	" is %u, caller expects %u\000"
	.space	3
.LC23:
	.ascii	"Bogus virtual array access\000"
	.space	1
.LC24:
	.ascii	"Buffer passed to JPEG library is too small\000"
	.space	1
.LC25:
	.ascii	"Suspension not allowed here\000"
.LC26:
	.ascii	"CCIR601 sampling not implemented yet\000"
	.space	3
.LC27:
	.ascii	"Too many color components: %d, max %d\000"
	.space	2
.LC28:
	.ascii	"Unsupported color conversion request\000"
	.space	3
.LC29:
	.ascii	"Bogus DAC index %d\000"
	.space	1
.LC30:
	.ascii	"Bogus DAC value 0x%x\000"
	.space	3
.LC31:
	.ascii	"Bogus DHT index %d\000"
	.space	1
.LC32:
	.ascii	"Bogus DQT index %d\000"
	.space	1
.LC33:
	.ascii	"Empty JPEG image (DNL not supported)\000"
	.space	3
.LC34:
	.ascii	"Read from EMS failed\000"
	.space	3
.LC35:
	.ascii	"Write to EMS failed\000"
.LC36:
	.ascii	"Didn't expect more than one scan\000"
	.space	3
.LC37:
	.ascii	"Input file read error\000"
	.space	2
.LC38:
	.ascii	"Output file write error --- out of disk space?\000"
	.space	1
.LC39:
	.ascii	"Fractional sampling not implemented yet\000"
.LC40:
	.ascii	"Huffman code size table overflow\000"
	.space	3
.LC41:
	.ascii	"Missing Huffman code table entry\000"
	.space	3
.LC42:
	.ascii	"Maximum supported image dimension is %u pixels\000"
	.space	1
.LC43:
	.ascii	"Empty input file\000"
	.space	3
.LC44:
	.ascii	"Premature end of input file\000"
.LC45:
	.ascii	"Cannot transcode due to multiple use of quantizatio"
	.ascii	"n table %d\000"
	.space	2
.LC46:
	.ascii	"Scan script does not transmit all data\000"
	.space	1
.LC47:
	.ascii	"Invalid color quantization mode change\000"
	.space	1
.LC48:
	.ascii	"Not implemented yet\000"
.LC49:
	.ascii	"Requested feature was omitted at compile time\000"
	.space	2
.LC50:
	.ascii	"Backing store not supported\000"
.LC51:
	.ascii	"Huffman table 0x%02x was not defined\000"
	.space	3
.LC52:
	.ascii	"JPEG datastream contains no image\000"
	.space	2
.LC53:
	.ascii	"Quantization table 0x%02x was not defined\000"
	.space	2
.LC54:
	.ascii	"Not a JPEG file: starts with 0x%02x 0x%02x\000"
	.space	1
.LC55:
	.ascii	"Insufficient memory (case %d)\000"
	.space	2
.LC56:
	.ascii	"Cannot quantize more than %d color components\000"
	.space	2
.LC57:
	.ascii	"Cannot quantize to fewer than %d colors\000"
.LC58:
	.ascii	"Cannot quantize to more than %d colors\000"
	.space	1
.LC59:
	.ascii	"Invalid JPEG file structure: two SOF markers\000"
	.space	3
.LC60:
	.ascii	"Invalid JPEG file structure: missing SOS marker\000"
.LC61:
	.ascii	"Unsupported JPEG process: SOF type 0x%02x\000"
	.space	2
.LC62:
	.ascii	"Invalid JPEG file structure: two SOI markers\000"
	.space	3
.LC63:
	.ascii	"Invalid JPEG file structure: SOS before SOF\000"
.LC64:
	.ascii	"Failed to create temporary file %s\000"
	.space	1
.LC65:
	.ascii	"Read failed on temporary file\000"
	.space	2
.LC66:
	.ascii	"Seek failed on temporary file\000"
	.space	2
.LC67:
	.ascii	"Write failed on temporary file --- out of disk spac"
	.ascii	"e?\000"
	.space	2
.LC68:
	.ascii	"Application transferred too few scanlines\000"
	.space	2
.LC69:
	.ascii	"Unsupported marker type 0x%02x\000"
	.space	1
.LC70:
	.ascii	"Virtual array controller messed up\000"
	.space	1
.LC71:
	.ascii	"Image too wide for this implementation\000"
	.space	1
.LC72:
	.ascii	"Read from XMS failed\000"
	.space	3
.LC73:
	.ascii	"Write to XMS failed\000"
.LC74:
	.ascii	"Copyright (C) 1998, Thomas G. Lane\000"
	.space	1
.LC75:
	.ascii	"6b  27-Mar-1998\000"
.LC76:
	.ascii	"Caution: quantization tables are too coarse for bas"
	.ascii	"eline JPEG\000"
	.space	2
.LC77:
	.ascii	"Adobe APP14 marker: version %d, flags 0x%04x 0x%04x"
	.ascii	", transform %d\000"
	.space	2
.LC78:
	.ascii	"Unknown APP0 marker (not JFIF), length %u\000"
	.space	2
.LC79:
	.ascii	"Unknown APP14 marker (not Adobe), length %u\000"
.LC80:
	.ascii	"Define Arithmetic Table 0x%02x: 0x%02x\000"
	.space	1
.LC81:
	.ascii	"Define Huffman Table 0x%02x\000"
.LC82:
	.ascii	"Define Quantization Table %d  precision %d\000"
	.space	1
.LC83:
	.ascii	"Define Restart Interval %u\000"
	.space	1
.LC84:
	.ascii	"Freed EMS handle %u\000"
.LC85:
	.ascii	"Obtained EMS handle %u\000"
	.space	1
.LC86:
	.ascii	"End Of Image\000"
	.space	3
.LC87:
	.ascii	"        %3d %3d %3d %3d %3d %3d %3d %3d\000"
.LC88:
	.ascii	"JFIF APP0 marker: version %d.%02d, density %dx%d  %"
	.ascii	"d\000"
	.space	3
.LC89:
	.ascii	"Warning: thumbnail image size does not match data l"
	.ascii	"ength %u\000"
.LC90:
	.ascii	"JFIF extension marker: type 0x%02x, length %u\000"
	.space	2
.LC91:
	.ascii	"    with %d x %d thumbnail image\000"
	.space	3
.LC92:
	.ascii	"Miscellaneous marker 0x%02x, length %u\000"
	.space	1
.LC93:
	.ascii	"Unexpected marker 0x%02x\000"
	.space	3
.LC94:
	.ascii	"        %4u %4u %4u %4u %4u %4u %4u %4u\000"
.LC95:
	.ascii	"Quantizing to %d = %d*%d*%d colors\000"
	.space	1
.LC96:
	.ascii	"Quantizing to %d colors\000"
.LC97:
	.ascii	"Selected %d colors for quantization\000"
.LC98:
	.ascii	"At marker 0x%02x, recovery action %d\000"
	.space	3
.LC99:
	.ascii	"RST%d\000"
	.space	2
.LC100:
	.ascii	"Smoothing not supported with nonstandard sampling r"
	.ascii	"atios\000"
	.space	3
.LC101:
	.ascii	"Start Of Frame 0x%02x: width=%u, height=%u, compone"
	.ascii	"nts=%d\000"
	.space	2
.LC102:
	.ascii	"    Component %d: %dhx%dv q=%d\000"
	.space	1
.LC103:
	.ascii	"Start of Image\000"
	.space	1
.LC104:
	.ascii	"Start Of Scan: %d components\000"
	.space	3
.LC105:
	.ascii	"    Component %d: dc=%d ac=%d\000"
	.space	2
.LC106:
	.ascii	"  Ss=%d, Se=%d, Ah=%d, Al=%d\000"
	.space	3
.LC107:
	.ascii	"Closed temporary file %s\000"
	.space	3
.LC108:
	.ascii	"Opened temporary file %s\000"
	.space	3
.LC109:
	.ascii	"JFIF extension marker: JPEG-compressed thumbnail im"
	.ascii	"age, length %u\000"
	.space	2
.LC110:
	.ascii	"JFIF extension marker: palette thumbnail image, len"
	.ascii	"gth %u\000"
	.space	2
.LC111:
	.ascii	"JFIF extension marker: RGB thumbnail image, length "
	.ascii	"%u\000"
	.space	2
.LC112:
	.ascii	"Unrecognized component IDs %d %d %d, assuming YCbCr"
	.ascii	"\000"
.LC113:
	.ascii	"Freed XMS handle %u\000"
.LC114:
	.ascii	"Obtained XMS handle %u\000"
	.space	1
.LC115:
	.ascii	"Unknown Adobe color transform code %d\000"
	.space	2
.LC116:
	.ascii	"Inconsistent progression sequence for component %d "
	.ascii	"coefficient %d\000"
	.space	2
.LC117:
	.ascii	"Corrupt JPEG data: %u extraneous bytes before marke"
	.ascii	"r 0x%02x\000"
.LC118:
	.ascii	"Corrupt JPEG data: premature end of data segment\000"
	.space	3
.LC119:
	.ascii	"Corrupt JPEG data: bad Huffman code\000"
.LC120:
	.ascii	"Warning: unknown JFIF revision number %d.%02d\000"
	.space	2
.LC121:
	.ascii	"Premature end of JPEG file\000"
	.space	1
.LC122:
	.ascii	"Corrupt JPEG data: found marker 0x%02x instead of R"
	.ascii	"ST%d\000"
.LC123:
	.ascii	"Invalid SOS parameters for sequential JPEG\000"
	.space	1
.LC124:
	.ascii	"Application transferred too many scanlines\000"
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
