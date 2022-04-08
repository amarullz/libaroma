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
	.file	"crc32.c"
	.section	.text.crc32_combine_,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	crc32_combine_, %function
crc32_combine_:
	@ args = 0, pretend = 0, frame = 256
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	ble	.L98
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #260
	movw	r6, #33568
	mov	lr, sp
	mov	r4, sp
	add	r5, sp, #124
	movs	r3, #1
	movt	r6, 60856
	str	r6, [sp]
.L4:
	str	r3, [r4, #4]!
	cmp	r4, r5
	lsl	r3, r3, #1
	bne	.L4
	movs	r7, #0
	add	ip, sp, #128
.L9:
	ldr	r3, [lr, r7]
	cmp	r3, #0
	beq	.L34
	add	r4, sp, #4
	movs	r6, #0
.L7:
	lsls	r5, r3, #31
	add	r4, r4, #4
	itt	mi
	ldrmi	r5, [r4, #-8]
	eormi	r6, r6, r5
	lsrs	r3, r3, #1
	bne	.L7
	str	r6, [ip, r7]
	adds	r7, r7, #4
	cmp	r7, #128
	bne	.L9
.L102:
	movs	r7, #0
.L14:
	ldr	r3, [ip, r7]
	cmp	r3, #0
	beq	.L35
	add	r4, sp, #132
	movs	r6, #0
.L12:
	lsls	r5, r3, #31
	add	r4, r4, #4
	itt	mi
	ldrmi	r5, [r4, #-8]
	eormi	r6, r6, r5
	lsrs	r3, r3, #1
	bne	.L12
	str	r6, [lr, r7]
	adds	r7, r7, #4
	cmp	r7, #128
	bne	.L14
.L32:
	movs	r7, #0
.L19:
	ldr	r3, [lr, r7]
	cmp	r3, #0
	beq	.L36
	add	r4, sp, #4
	movs	r5, #0
.L17:
	lsls	r6, r3, #31
	add	r4, r4, #4
	itt	mi
	ldrmi	r6, [r4, #-8]
	eormi	r5, r5, r6
	lsrs	r3, r3, #1
	bne	.L17
	str	r5, [ip, r7]
	adds	r7, r7, #4
	cmp	r7, #128
	bne	.L19
.L100:
	lsls	r7, r2, #31
	bpl	.L20
	cbz	r0, .L20
	mov	r3, r0
	add	r4, sp, #132
	movs	r0, #0
.L22:
	lsls	r6, r3, #31
	add	r4, r4, #4
	itt	mi
	ldrmi	r5, [r4, #-8]
	eormi	r0, r0, r5
	lsrs	r3, r3, #1
	bne	.L22
.L20:
	asrs	r7, r2, #1
	beq	.L23
	movs	r6, #0
.L28:
	ldr	r3, [ip, r6]
	cbz	r3, .L37
	add	r2, sp, #132
	movs	r4, #0
.L26:
	lsls	r5, r3, #31
	add	r2, r2, #4
	itt	mi
	ldrmi	r5, [r2, #-8]
	eormi	r4, r4, r5
	lsrs	r3, r3, #1
	bne	.L26
	str	r4, [lr, r6]
	adds	r6, r6, #4
	cmp	r6, #128
	bne	.L28
.L101:
	lsls	r4, r7, #31
	bpl	.L29
	cbz	r0, .L29
	mov	r3, r0
	add	r4, sp, #4
	movs	r0, #0
.L31:
	lsls	r2, r3, #31
	add	r4, r4, #4
	itt	mi
	ldrmi	r5, [r4, #-8]
	eormi	r0, r0, r5
	lsrs	r3, r3, #1
	bne	.L31
.L29:
	asrs	r2, r7, #1
	bne	.L32
.L23:
	eors	r0, r0, r1
	add	sp, sp, #260
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L36:
	mov	r5, r3
	str	r5, [ip, r7]
	adds	r7, r7, #4
	cmp	r7, #128
	bne	.L19
	b	.L100
.L37:
	mov	r4, r3
	str	r4, [lr, r6]
	adds	r6, r6, #4
	cmp	r6, #128
	bne	.L28
	b	.L101
.L35:
	mov	r6, r3
	str	r6, [lr, r7]
	adds	r7, r7, #4
	cmp	r7, #128
	bne	.L14
	b	.L32
.L34:
	mov	r6, r3
	str	r6, [ip, r7]
	adds	r7, r7, #4
	cmp	r7, #128
	bne	.L9
	b	.L102
.L98:
	bx	lr
	.size	crc32_combine_, .-crc32_combine_
	.section	.text.get_crc_table,"ax",%progbits
	.align	2
	.global	get_crc_table
	.thumb
	.thumb_func
	.type	get_crc_table, %function
get_crc_table:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L104
.LPIC8:
	add	r0, pc
	bx	lr
.L105:
	.align	2
.L104:
	.word	.LANCHOR0-(.LPIC8+4)
	.size	get_crc_table, .-get_crc_table
	.section	.text.crc32,"ax",%progbits
	.align	2
	.global	crc32
	.thumb
	.thumb_func
	.type	crc32, %function
crc32:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	beq	.L119
	mvns	r0, r0
	cmp	r2, #0
	beq	.L141
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	lsls	r4, r1, #30
	sub	sp, sp, #12
	beq	.L109
	ldr	r4, .L144
.LPIC17:
	add	r4, pc
	b	.L110
.L143:
	lsls	r3, r1, #30
	beq	.L109
.L110:
	ldrb	r3, [r1], #1	@ zero_extendqisi2
	subs	r2, r2, #1
	eor	r3, r3, r0
	uxtb	r3, r3
	ldr	r3, [r4, r3, lsl #2]
	eor	r0, r3, r0, lsr #8
	bne	.L143
.L117:
	mvns	r0, r0
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L109:
	cmp	r2, #31
	bls	.L111
	ldr	r3, .L144+4
	mov	r4, r1
	add	r6, r1, #64
	mov	r5, r2
	mov	r10, r0
	mov	r8, r2
.LPIC18:
	add	r3, pc
	str	r1, [sp, #4]
.L113:
	ldr	r2, [r6, #-64]
	subs	r5, r5, #32
	ldr	r7, [r4, #4]
	cmp	r5, #31
	ldr	r9, [r4, #12]
	eor	r10, r10, r2
	ldr	ip, [r4, #16]
	uxtb	r2, r10
	lsr	r0, r10, #24
	pld	[r6]
	add	r2, r2, #768
	ldr	r0, [r3, r0, lsl #2]
	ldr	r1, [r3, r2, lsl #2]
	ubfx	r2, r10, #8, #8
	add	r2, r2, #512
	ubfx	r10, r10, #16, #8
	add	r10, r10, #256
	ldr	r2, [r3, r2, lsl #2]
	eor	lr, r1, r0
	ldr	r0, [r3, r10, lsl #2]
	eor	r1, lr, r7
	ldr	lr, [r4, #20]
	eor	r2, r2, r1
	pld	[r4, #68]
	eor	r0, r0, r2
	ldr	r2, [r4, #24]
	uxtb	r10, r0
	lsr	r1, r0, #24
	add	r10, r10, #768
	ldr	r1, [r3, r1, lsl #2]
	ldr	r10, [r3, r10, lsl #2]
	ubfx	fp, r0, #8, #8
	ubfx	r0, r0, #16, #8
	add	fp, fp, #512
	add	r0, r0, #256
	ldr	r7, [r3, fp, lsl #2]
	eor	r10, r10, r1
	ldr	r1, [r3, r0, lsl #2]
	ldr	r0, [r4, #8]
	add	r6, r6, #32
	add	r4, r4, #32
	eor	r10, r10, r0
	ldr	r0, [r4, #-4]
	eor	fp, r10, r7
	eor	r1, fp, r1
	uxtb	r10, r1
	lsr	r7, r1, #24
	add	r10, r10, #768
	ubfx	fp, r1, #8, #8
	ldr	r10, [r3, r10, lsl #2]
	add	fp, fp, #512
	ldr	r7, [r3, r7, lsl #2]
	ubfx	r1, r1, #16, #8
	ldr	fp, [r3, fp, lsl #2]
	add	r1, r1, #256
	ldr	r1, [r3, r1, lsl #2]
	eor	r7, r10, r7
	eor	r7, r7, r9
	eor	fp, r7, fp
	eor	fp, fp, r1
	uxtb	r7, fp
	lsr	r1, fp, #24
	add	r7, r7, #768
	ubfx	r10, fp, #8, #8
	ldr	r7, [r3, r7, lsl #2]
	add	r10, r10, #512
	ldr	r1, [r3, r1, lsl #2]
	ubfx	fp, fp, #16, #8
	ldr	r9, [r3, r10, lsl #2]
	add	fp, fp, #256
	eor	r1, r1, r7
	ldr	r7, [r3, fp, lsl #2]
	eor	ip, r1, ip
	eor	ip, ip, r9
	eor	ip, ip, r7
	uxtb	r7, ip
	lsr	r1, ip, #24
	add	r7, r7, #768
	ldr	r1, [r3, r1, lsl #2]
	ldr	r9, [r3, r7, lsl #2]
	ubfx	r7, ip, #8, #8
	add	r7, r7, #512
	ubfx	ip, ip, #16, #8
	ldr	r7, [r3, r7, lsl #2]
	add	ip, ip, #256
	eor	r9, r9, r1
	ldr	r1, [r3, ip, lsl #2]
	eor	lr, r9, lr
	eor	lr, lr, r7
	eor	lr, lr, r1
	uxtb	r7, lr
	lsr	r1, lr, #24
	add	r7, r7, #768
	ldr	r1, [r3, r1, lsl #2]
	ldr	ip, [r3, r7, lsl #2]
	ubfx	r7, lr, #8, #8
	add	r7, r7, #512
	ubfx	lr, lr, #16, #8
	ldr	r7, [r3, r7, lsl #2]
	add	lr, lr, #256
	eor	ip, ip, r1
	ldr	r1, [r3, lr, lsl #2]
	eor	r2, ip, r2
	eor	r2, r2, r7
	eor	r2, r2, r1
	uxtb	r1, r2
	lsr	r7, r2, #24
	add	r1, r1, #768
	ldr	r7, [r3, r7, lsl #2]
	ldr	lr, [r3, r1, lsl #2]
	ubfx	r1, r2, #8, #8
	add	r1, r1, #512
	ubfx	r2, r2, #16, #8
	ldr	r1, [r3, r1, lsl #2]
	add	r2, r2, #256
	eor	r7, lr, r7
	ldr	r2, [r3, r2, lsl #2]
	eor	r0, r0, r7
	eor	r0, r0, r1
	eor	r0, r0, r2
	uxtb	r7, r0
	lsr	r1, r0, #24
	ubfx	r2, r0, #8, #8
	add	r7, r7, #768
	add	r2, r2, #512
	ldr	r10, [r3, r1, lsl #2]
	ldr	r7, [r3, r7, lsl #2]
	ubfx	r0, r0, #16, #8
	ldr	r1, [r3, r2, lsl #2]
	add	r0, r0, #256
	ldr	r2, [r3, r0, lsl #2]
	eor	r10, r10, r7
	eor	r10, r10, r1
	eor	r10, r10, r2
	bhi	.L113
	ldr	r1, [sp, #4]
	sub	r3, r8, #32
	bic	r3, r3, #31
	mov	r0, r10
	adds	r3, r3, #32
	and	r2, r8, #31
	add	r1, r1, r3
.L111:
	cmp	r2, #3
	bls	.L114
	ldr	r3, .L144+8
	sub	r8, r2, #4
	mov	r4, r2
	mov	r6, r1
	mov	lr, r1
	mov	ip, r2
.LPIC50:
	add	r3, pc
.L116:
	ldr	r2, [r6], #4
	subs	r4, r4, #4
	cmp	r4, #3
	eor	r0, r0, r2
	uxtb	r1, r0
	lsr	r2, r0, #24
	ubfx	r5, r0, #16, #8
	add	r1, r1, #768
	add	r5, r5, #256
	ldr	r1, [r3, r1, lsl #2]
	ldr	r2, [r3, r2, lsl #2]
	ubfx	r0, r0, #8, #8
	ldr	r7, [r3, r5, lsl #2]
	add	r0, r0, #512
	ldr	r5, [r3, r0, lsl #2]
	eor	r0, r1, r2
	eor	r0, r0, r7
	eor	r0, r0, r5
	bhi	.L116
	bic	r8, r8, #3
	mov	r1, lr
	add	r8, r8, #4
	and	r2, ip, #3
	add	r1, r1, r8
.L114:
	cmp	r2, #0
	beq	.L117
	ldr	r4, .L144+12
	add	r2, r2, r1
.LPIC54:
	add	r4, pc
.L118:
	ldrb	r3, [r1], #1	@ zero_extendqisi2
	eors	r3, r3, r0
	cmp	r1, r2
	uxtb	r3, r3
	ldr	r3, [r4, r3, lsl #2]
	eor	r0, r3, r0, lsr #8
	bne	.L118
	mvns	r0, r0
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L119:
	mov	r0, r1
	bx	lr
.L141:
	mvns	r0, r0
	bx	lr
.L145:
	.align	2
.L144:
	.word	.LANCHOR0-(.LPIC17+4)
	.word	.LANCHOR0-(.LPIC18+4)
	.word	.LANCHOR0-(.LPIC50+4)
	.word	.LANCHOR0-(.LPIC54+4)
	.size	crc32, .-crc32
	.section	.text.crc32_combine,"ax",%progbits
	.align	2
	.global	crc32_combine
	.thumb
	.thumb_func
	.type	crc32_combine, %function
crc32_combine:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	crc32_combine_(PLT)
	.size	crc32_combine, .-crc32_combine
	.section	.text.crc32_combine64,"ax",%progbits
	.align	2
	.global	crc32_combine64
	.thumb
	.thumb_func
	.type	crc32_combine64, %function
crc32_combine64:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	crc32_combine_(PLT)
	.size	crc32_combine64, .-crc32_combine64
	.section	.rodata.crc_table,"a",%progbits
	.align	3
.LANCHOR0 = . + 0
	.type	crc_table, %object
	.size	crc_table, 8192
crc_table:
	.word	0
	.word	1996959894
	.word	-301047508
	.word	-1727442502
	.word	124634137
	.word	1886057615
	.word	-379345611
	.word	-1637575261
	.word	249268274
	.word	2044508324
	.word	-522852066
	.word	-1747789432
	.word	162941995
	.word	2125561021
	.word	-407360249
	.word	-1866523247
	.word	498536548
	.word	1789927666
	.word	-205950648
	.word	-2067906082
	.word	450548861
	.word	1843258603
	.word	-187386543
	.word	-2083289657
	.word	325883990
	.word	1684777152
	.word	-43845254
	.word	-1973040660
	.word	335633487
	.word	1661365465
	.word	-99664541
	.word	-1928851979
	.word	997073096
	.word	1281953886
	.word	-715111964
	.word	-1570279054
	.word	1006888145
	.word	1258607687
	.word	-770865667
	.word	-1526024853
	.word	901097722
	.word	1119000684
	.word	-608450090
	.word	-1396901568
	.word	853044451
	.word	1172266101
	.word	-589951537
	.word	-1412350631
	.word	651767980
	.word	1373503546
	.word	-925412992
	.word	-1076862698
	.word	565507253
	.word	1454621731
	.word	-809855591
	.word	-1195530993
	.word	671266974
	.word	1594198024
	.word	-972236366
	.word	-1324619484
	.word	795835527
	.word	1483230225
	.word	-1050600021
	.word	-1234817731
	.word	1994146192
	.word	31158534
	.word	-1731059524
	.word	-271249366
	.word	1907459465
	.word	112637215
	.word	-1614814043
	.word	-390540237
	.word	2013776290
	.word	251722036
	.word	-1777751922
	.word	-519137256
	.word	2137656763
	.word	141376813
	.word	-1855689577
	.word	-429695999
	.word	1802195444
	.word	476864866
	.word	-2056965928
	.word	-228458418
	.word	1812370925
	.word	453092731
	.word	-2113342271
	.word	-183516073
	.word	1706088902
	.word	314042704
	.word	-1950435094
	.word	-54949764
	.word	1658658271
	.word	366619977
	.word	-1932296973
	.word	-69972891
	.word	1303535960
	.word	984961486
	.word	-1547960204
	.word	-725929758
	.word	1256170817
	.word	1037604311
	.word	-1529756563
	.word	-740887301
	.word	1131014506
	.word	879679996
	.word	-1385723834
	.word	-631195440
	.word	1141124467
	.word	855842277
	.word	-1442165665
	.word	-586318647
	.word	1342533948
	.word	654459306
	.word	-1106571248
	.word	-921952122
	.word	1466479909
	.word	544179635
	.word	-1184443383
	.word	-832445281
	.word	1591671054
	.word	702138776
	.word	-1328506846
	.word	-942167884
	.word	1504918807
	.word	783551873
	.word	-1212326853
	.word	-1061524307
	.word	-306674912
	.word	-1698712650
	.word	62317068
	.word	1957810842
	.word	-355121351
	.word	-1647151185
	.word	81470997
	.word	1943803523
	.word	-480048366
	.word	-1805370492
	.word	225274430
	.word	2053790376
	.word	-468791541
	.word	-1828061283
	.word	167816743
	.word	2097651377
	.word	-267414716
	.word	-2029476910
	.word	503444072
	.word	1762050814
	.word	-144550051
	.word	-2140837941
	.word	426522225
	.word	1852507879
	.word	-19653770
	.word	-1982649376
	.word	282753626
	.word	1742555852
	.word	-105259153
	.word	-1900089351
	.word	397917763
	.word	1622183637
	.word	-690576408
	.word	-1580100738
	.word	953729732
	.word	1340076626
	.word	-776247311
	.word	-1497606297
	.word	1068828381
	.word	1219638859
	.word	-670225446
	.word	-1358292148
	.word	906185462
	.word	1090812512
	.word	-547295293
	.word	-1469587627
	.word	829329135
	.word	1181335161
	.word	-882789492
	.word	-1134132454
	.word	628085408
	.word	1382605366
	.word	-871598187
	.word	-1156888829
	.word	570562233
	.word	1426400815
	.word	-977650754
	.word	-1296233688
	.word	733239954
	.word	1555261956
	.word	-1026031705
	.word	-1244606671
	.word	752459403
	.word	1541320221
	.word	-1687895376
	.word	-328994266
	.word	1969922972
	.word	40735498
	.word	-1677130071
	.word	-351390145
	.word	1913087877
	.word	83908371
	.word	-1782625662
	.word	-491226604
	.word	2075208622
	.word	213261112
	.word	-1831694693
	.word	-438977011
	.word	2094854071
	.word	198958881
	.word	-2032938284
	.word	-237706686
	.word	1759359992
	.word	534414190
	.word	-2118248755
	.word	-155638181
	.word	1873836001
	.word	414664567
	.word	-2012718362
	.word	-15766928
	.word	1711684554
	.word	285281116
	.word	-1889165569
	.word	-127750551
	.word	1634467795
	.word	376229701
	.word	-1609899400
	.word	-686959890
	.word	1308918612
	.word	956543938
	.word	-1486412191
	.word	-799009033
	.word	1231636301
	.word	1047427035
	.word	-1362007478
	.word	-640263460
	.word	1088359270
	.word	936918000
	.word	-1447252397
	.word	-558129467
	.word	1202900863
	.word	817233897
	.word	-1111625188
	.word	-893730166
	.word	1404277552
	.word	615818150
	.word	-1160759803
	.word	-841546093
	.word	1423857449
	.word	601450431
	.word	-1285129682
	.word	-1000256840
	.word	1567103746
	.word	711928724
	.word	-1274298825
	.word	-1022587231
	.word	1510334235
	.word	755167117
	.word	0
	.word	421212481
	.word	842424962
	.word	724390851
	.word	1684849924
	.word	2105013317
	.word	1448781702
	.word	1329698503
	.word	-925267448
	.word	-775767223
	.word	-84940662
	.word	-470492725
	.word	-1397403892
	.word	-1246855603
	.word	-1635570290
	.word	-2020074289
	.word	1254232657
	.word	1406739216
	.word	2029285587
	.word	1643069842
	.word	783210325
	.word	934667796
	.word	479770071
	.word	92505238
	.word	-2112120743
	.word	-1694455528
	.word	-1339163941
	.word	-1456026726
	.word	-428384931
	.word	-9671652
	.word	-733921313
	.word	-849736034
	.word	-1786501982
	.word	-1935731229
	.word	-1481488864
	.word	-1096190111
	.word	-236396122
	.word	-386674457
	.word	-1008827612
	.word	-624577947
	.word	1566420650
	.word	1145479147
	.word	1869335592
	.word	1987116393
	.word	959540142
	.word	539646703
	.word	185010476
	.word	303839341
	.word	-549046541
	.word	-966981710
	.word	-311405455
	.word	-194288336
	.word	-1154812937
	.word	-1573797194
	.word	-1994616459
	.word	-1878548428
	.word	396344571
	.word	243568058
	.word	631889529
	.word	1018359608
	.word	1945336319
	.word	1793607870
	.word	1103436669
	.word	1490954812
	.word	-260485371
	.word	-379421116
	.word	-1034998393
	.word	-615244602
	.word	-1810527743
	.word	-1928414400
	.word	-1507596157
	.word	-1086793278
	.word	950060301
	.word	565965900
	.word	177645455
	.word	328046286
	.word	1556873225
	.word	1171730760
	.word	1861902987
	.word	2011255754
	.word	-1162125996
	.word	-1549767659
	.word	-2004009002
	.word	-1852436841
	.word	-556296112
	.word	-942888687
	.word	-320734510
	.word	-168113261
	.word	1919080284
	.word	1803150877
	.word	1079293406
	.word	1498383519
	.word	370020952
	.word	253043481
	.word	607678682
	.word	1025720731
	.word	1711106983
	.word	2095471334
	.word	1472923941
	.word	1322268772
	.word	26324643
	.word	411738082
	.word	866634785
	.word	717028704
	.word	-1390091857
	.word	-1270886162
	.word	-1626176723
	.word	-2046184852
	.word	-918018901
	.word	-799861270
	.word	-75610583
	.word	-496666776
	.word	792689142
	.word	908347575
	.word	487136116
	.word	68299317
	.word	1263779058
	.word	1380486579
	.word	2036719216
	.word	1618931505
	.word	-404294658
	.word	-16923969
	.word	-707751556
	.word	-859070403
	.word	-2088093958
	.word	-1701771333
	.word	-1313057672
	.word	-1465424583
	.word	998479947
	.word	580430090
	.word	162921161
	.word	279890824
	.word	1609522511
	.word	1190423566
	.word	1842954189
	.word	1958874764
	.word	-212200893
	.word	-364829950
	.word	-1049857855
	.word	-663273088
	.word	-1758013625
	.word	-1909594618
	.word	-1526680123
	.word	-1139047292
	.word	1900120602
	.word	1750776667
	.word	1131931800
	.word	1517083097
	.word	355290910
	.word	204897887
	.word	656092572
	.word	1040194781
	.word	-1181220846
	.word	-1602014893
	.word	-1951505776
	.word	-1833610287
	.word	-571161322
	.word	-990907305
	.word	-272455788
	.word	-153512235
	.word	-1375224599
	.word	-1222865496
	.word	-1674453397
	.word	-2060783830
	.word	-898926099
	.word	-747616084
	.word	-128115857
	.word	-515495378
	.word	1725839073
	.word	2143618976
	.word	1424512099
	.word	1307796770
	.word	45282277
	.word	464110244
	.word	813994343
	.word	698327078
	.word	-456806728
	.word	-35741703
	.word	-688665542
	.word	-806814341
	.word	-2136380484
	.word	-1716364547
	.word	-1298200258
	.word	-1417398145
	.word	740041904
	.word	889656817
	.word	506086962
	.word	120682355
	.word	1215357364
	.word	1366020341
	.word	2051441462
	.word	1667084919
	.word	-872753330
	.word	-756947441
	.word	-104024628
	.word	-522746739
	.word	-1349119414
	.word	-1232264437
	.word	-1650429752
	.word	-2068102775
	.word	52649286
	.word	439905287
	.word	823476164
	.word	672009861
	.word	1733269570
	.word	2119477507
	.word	1434057408
	.word	1281543041
	.word	-2126985953
	.word	-1742474146
	.word	-1290885219
	.word	-1441425700
	.word	-447479781
	.word	-61918886
	.word	-681418087
	.word	-830909480
	.word	1239502615
	.word	1358593622
	.word	2077699477
	.word	1657543892
	.word	764250643
	.word	882293586
	.word	532408465
	.word	111204816
	.word	1585378284
	.word	1197851309
	.word	1816695150
	.word	1968414767
	.word	974272232
	.word	587794345
	.word	136598634
	.word	289367339
	.word	-1767409180
	.word	-1883486043
	.word	-1533994138
	.word	-1115018713
	.word	-221528864
	.word	-338653791
	.word	-1057104286
	.word	-639176925
	.word	347922877
	.word	229101820
	.word	646611775
	.word	1066513022
	.word	1892689081
	.word	1774917112
	.word	1122387515
	.word	1543337850
	.word	-597333067
	.word	-981574924
	.word	-296548041
	.word	-146261898
	.word	-1207325007
	.word	-1592614928
	.word	-1975530445
	.word	-1826292366
	.word	0
	.word	29518391
	.word	59036782
	.word	38190681
	.word	118073564
	.word	114017003
	.word	76381362
	.word	89069189
	.word	236147128
	.word	265370511
	.word	228034006
	.word	206958561
	.word	152762724
	.word	148411219
	.word	178138378
	.word	190596925
	.word	472294256
	.word	501532999
	.word	530741022
	.word	509615401
	.word	456068012
	.word	451764635
	.word	413917122
	.word	426358261
	.word	305525448
	.word	334993663
	.word	296822438
	.word	275991697
	.word	356276756
	.word	352202787
	.word	381193850
	.word	393929805
	.word	944588512
	.word	965684439
	.word	1003065998
	.word	973863097
	.word	1061482044
	.word	1049003019
	.word	1019230802
	.word	1023561829
	.word	912136024
	.word	933002607
	.word	903529270
	.word	874031361
	.word	827834244
	.word	815125939
	.word	852716522
	.word	856752605
	.word	611050896
	.word	631869351
	.word	669987326
	.word	640506825
	.word	593644876
	.word	580921211
	.word	551983394
	.word	556069653
	.word	712553512
	.word	733666847
	.word	704405574
	.word	675154545
	.word	762387700
	.word	749958851
	.word	787859610
	.word	792175277
	.word	1889177024
	.word	1901651959
	.word	1931368878
	.word	1927033753
	.word	2006131996
	.word	1985040171
	.word	1947726194
	.word	1976933189
	.word	2122964088
	.word	2135668303
	.word	2098006038
	.word	2093965857
	.word	2038461604
	.word	2017599123
	.word	2047123658
	.word	2076625661
	.word	1824272048
	.word	1836991623
	.word	1866005214
	.word	1861914857
	.word	1807058540
	.word	1786244187
	.word	1748062722
	.word	1777547317
	.word	1655668488
	.word	1668093247
	.word	1630251878
	.word	1625932113
	.word	1705433044
	.word	1684323811
	.word	1713505210
	.word	1742760333
	.word	1222101792
	.word	1226154263
	.word	1263738702
	.word	1251046777
	.word	1339974652
	.word	1310460363
	.word	1281013650
	.word	1301863845
	.word	1187289752
	.word	1191637167
	.word	1161842422
	.word	1149379777
	.word	1103966788
	.word	1074747507
	.word	1112139306
	.word	1133218845
	.word	1425107024
	.word	1429406311
	.word	1467333694
	.word	1454888457
	.word	1408811148
	.word	1379576507
	.word	1350309090
	.word	1371438805
	.word	1524775400
	.word	1528845279
	.word	1499917702
	.word	1487177649
	.word	1575719220
	.word	1546255107
	.word	1584350554
	.word	1605185389
	.word	-516613248
	.word	-520654409
	.word	-491663378
	.word	-478960167
	.word	-432229540
	.word	-402728597
	.word	-440899790
	.word	-461763323
	.word	-282703304
	.word	-287039473
	.word	-324886954
	.word	-312413087
	.word	-399514908
	.word	-370308909
	.word	-341100918
	.word	-362193731
	.word	-49039120
	.word	-53357881
	.word	-23630690
	.word	-11204951
	.word	-98955220
	.word	-69699045
	.word	-107035582
	.word	-128143755
	.word	-218044088
	.word	-222133377
	.word	-259769050
	.word	-247048431
	.word	-200719980
	.word	-171234397
	.word	-141715974
	.word	-162529331
	.word	-646423200
	.word	-658884777
	.word	-620984050
	.word	-616635591
	.word	-562956868
	.word	-541876341
	.word	-571137582
	.word	-600355867
	.word	-680850216
	.word	-693541137
	.word	-722478922
	.word	-718425471
	.word	-798841852
	.word	-777990605
	.word	-739872662
	.word	-769385891
	.word	-983630320
	.word	-996371417
	.word	-958780802
	.word	-954711991
	.word	-1034463540
	.word	-1013629701
	.word	-1043103070
	.word	-1072568171
	.word	-884101208
	.word	-896547425
	.word	-926319674
	.word	-922021391
	.word	-867956876
	.word	-846828221
	.word	-809446630
	.word	-838682323
	.word	-1850763712
	.word	-1871840137
	.word	-1842658770
	.word	-1813436391
	.word	-1767489892
	.word	-1755032405
	.word	-1792873742
	.word	-1797226299
	.word	-1615017992
	.word	-1635865137
	.word	-1674046570
	.word	-1644529247
	.word	-1732939996
	.word	-1720253165
	.word	-1691239606
	.word	-1695297155
	.word	-1920387792
	.word	-1941217529
	.word	-1911692962
	.word	-1882223767
	.word	-1971282452
	.word	-1958545445
	.word	-1996207742
	.word	-2000280651
	.word	-2087033720
	.word	-2108158273
	.word	-2145472282
	.word	-2116232495
	.word	-2070688684
	.word	-2058246557
	.word	-2028529606
	.word	-2032831987
	.word	-1444753248
	.word	-1474250089
	.word	-1436154674
	.word	-1415287047
	.word	-1360299908
	.word	-1356262837
	.word	-1385190382
	.word	-1397897691
	.word	-1477345000
	.word	-1506546897
	.word	-1535814282
	.word	-1514717375
	.word	-1594349116
	.word	-1590017037
	.word	-1552089686
	.word	-1564567651
	.word	-1245416496
	.word	-1274668569
	.word	-1237276738
	.word	-1216164471
	.word	-1295131892
	.word	-1290817221
	.word	-1320611998
	.word	-1333041835
	.word	-1143528856
	.word	-1173010337
	.word	-1202457082
	.word	-1181639631
	.word	-1126266188
	.word	-1122180989
	.word	-1084596518
	.word	-1097321235
	.word	0
	.word	-1195612315
	.word	-1442199413
	.word	313896942
	.word	-1889364137
	.word	937357362
	.word	627793884
	.word	-1646839623
	.word	-978048785
	.word	2097696650
	.word	1874714724
	.word	-687765759
	.word	1255587768
	.word	-227878691
	.word	-522225869
	.word	1482887254
	.word	1343838111
	.word	-391827206
	.word	-99573996
	.word	1118632049
	.word	-545537848
	.word	1741137837
	.word	1970407491
	.word	-842109146
	.word	-1783791760
	.word	756094997
	.word	1067759611
	.word	-2028416866
	.word	449832999
	.word	-1569484990
	.word	-1329192788
	.word	142231497
	.word	-1607291074
	.word	412010587
	.word	171665333
	.word	-1299775280
	.word	793786473
	.word	-1746116852
	.word	-2057703198
	.word	1038456711
	.word	1703315409
	.word	-583343948
	.word	-812691622
	.word	1999841343
	.word	-354152314
	.word	1381529571
	.word	1089329165
	.word	-128860312
	.word	-265553759
	.word	1217896388
	.word	1512189994
	.word	-492939441
	.word	2135519222
	.word	-940242797
	.word	-717183107
	.word	1845280792
	.word	899665998
	.word	-1927039189
	.word	-1617553211
	.word	657096608
	.word	-1157806311
	.word	37822588
	.word	284462994
	.word	-1471616777
	.word	-1693165507
	.word	598228824
	.word	824021174
	.word	-1985873965
	.word	343330666
	.word	-1396004849
	.word	-1098971167
	.word	113467524
	.word	1587572946
	.word	-434366537
	.word	-190203815
	.word	1276501820
	.word	-775755899
	.word	1769898208
	.word	2076913422
	.word	-1015592853
	.word	-888336478
	.word	1941006535
	.word	1627703081
	.word	-642211764
	.word	1148164341
	.word	-53215344
	.word	-295284610
	.word	1457141531
	.word	247015245
	.word	-1241169880
	.word	-1531908154
	.word	470583459
	.word	-2116308966
	.word	963106687
	.word	735213713
	.word	-1821499404
	.word	992409347
	.word	-2087022490
	.word	-1859174520
	.word	697522413
	.word	-1270587308
	.word	217581361
	.word	508405983
	.word	-1494102086
	.word	-23928852
	.word	1177467017
	.word	1419450215
	.word	-332959742
	.word	1911572667
	.word	-917753890
	.word	-604405712
	.word	1665525589
	.word	1799331996
	.word	-746338311
	.word	-1053399017
	.word	2039091058
	.word	-463652917
	.word	1558270126
	.word	1314193216
	.word	-152528859
	.word	-1366587277
	.word	372764438
	.word	75645176
	.word	-1136777315
	.word	568925988
	.word	-1722451903
	.word	-1948198993
	.word	861712586
	.word	-312887749
	.word	1441124702
	.word	1196457648
	.word	-1304107
	.word	1648042348
	.word	-628668919
	.word	-936187417
	.word	1888390786
	.word	686661332
	.word	-1873675855
	.word	-2098964897
	.word	978858298
	.word	-1483798141
	.word	523464422
	.word	226935048
	.word	-1254447507
	.word	-1119821404
	.word	100435649
	.word	390670639
	.word	-1342878134
	.word	841119475
	.word	-1969352298
	.word	-1741963656
	.word	546822429
	.word	2029308235
	.word	-1068978642
	.word	-755170880
	.word	1782671013
	.word	-141140452
	.word	1328167289
	.word	1570739863
	.word	-450629134
	.word	1298864389
	.word	-170426784
	.word	-412954226
	.word	1608431339
	.word	-1039561134
	.word	2058742071
	.word	1744848601
	.word	-792976964
	.word	-1998638614
	.word	811816591
	.word	584513889
	.word	-1704288764
	.word	129869501
	.word	-1090403880
	.word	-1380684234
	.word	352848211
	.word	494030490
	.word	-1513215489
	.word	-1216641519
	.word	264757620
	.word	-1844389427
	.word	715964072
	.word	941166918
	.word	-2136639965
	.word	-658086283
	.word	1618608400
	.word	1926213374
	.word	-898381413
	.word	1470427426
	.word	-283601337
	.word	-38979159
	.word	1158766284
	.word	1984818694
	.word	-823031453
	.word	-599513459
	.word	1693991400
	.word	-114329263
	.word	1100160564
	.word	1395044826
	.word	-342174017
	.word	-1275476247
	.word	189112716
	.word	435162722
	.word	-1588827897
	.word	1016811966
	.word	-2077804837
	.word	-1768777419
	.word	774831696
	.word	643086745
	.word	-1628905732
	.word	-1940033262
	.word	887166583
	.word	-1456066866
	.word	294275499
	.word	54519365
	.word	-1149009632
	.word	-471821962
	.word	1532818963
	.word	1240029693
	.word	-246071656
	.word	1820460577
	.word	-734109372
	.word	-963916118
	.word	2117577167
	.word	-696303304
	.word	1858283101
	.word	2088143283
	.word	-993333546
	.word	1495127663
	.word	-509497078
	.word	-216785180
	.word	1269332353
	.word	332098007
	.word	-1418260814
	.word	-1178427044
	.word	25085497
	.word	-1666580864
	.word	605395429
	.word	916469259
	.word	-1910746770
	.word	-2040129881
	.word	1054503362
	.word	745528876
	.word	-1798063799
	.word	151290352
	.word	-1313282411
	.word	-1559410309
	.word	464596510
	.word	1137851976
	.word	-76654291
	.word	-371460413
	.word	1365741990
	.word	-860837601
	.word	1946996346
	.word	1723425172
	.word	-570095887
	.word	0
	.word	-1775237257
	.word	744558318
	.word	-1169094247
	.word	432303367
	.word	-1879807376
	.word	900031465
	.word	-1550490466
	.word	847829774
	.word	-1531388807
	.word	518641120
	.word	-1998990697
	.word	726447625
	.word	-1115901570
	.word	120436967
	.word	-1860321392
	.word	1678817053
	.word	-232738710
	.word	1215412723
	.word	-566116732
	.word	2111101466
	.word	-337322643
	.word	1370871028
	.word	-947530877
	.word	1452829715
	.word	-1062704284
	.word	2063164157
	.word	-322345590
	.word	1331429652
	.word	-647231901
	.word	1664946170
	.word	-183695219
	.word	-937398725
	.word	1578133836
	.word	-465477419
	.word	1920034722
	.word	-773586116
	.word	1205077067
	.word	-41611822
	.word	1807026853
	.word	-89606859
	.word	1821946434
	.word	-691422245
	.word	1090108588
	.word	-479406030
	.word	1969020741
	.word	-821176612
	.word	1497223595
	.word	-1406084826
	.word	973135441
	.word	-2142119992
	.word	375509183
	.word	-1242254303
	.word	600093526
	.word	-1718240561
	.word	262520248
	.word	-1632107992
	.word	143131999
	.word	-1294398266
	.word	619252657
	.word	-2021888209
	.word	290220120
	.word	-1424137791
	.word	1026385590
	.word	-1874731914
	.word	108124929
	.word	-1138699624
	.word	705746415
	.word	-1987726991
	.word	532002310
	.word	-1511735393
	.word	869578984
	.word	-1563883656
	.word	888733711
	.word	-1901590122
	.word	412618465
	.word	-1156748673
	.word	759000328
	.word	-1754504047
	.word	22832102
	.word	-195990677
	.word	1650551836
	.word	-667916923
	.word	1308648178
	.word	-309000596
	.word	2074411291
	.word	-1040971646
	.word	1472466933
	.word	-958812059
	.word	1357494034
	.word	-356991349
	.word	2089335292
	.word	-551690910
	.word	1227741717
	.word	-209923188
	.word	1699534075
	.word	1482797645
	.word	-833505990
	.word	1946205347
	.word	-500122668
	.word	1101389642
	.word	-678045635
	.word	1841615268
	.word	-67840301
	.word	1793681731
	.word	-52859340
	.word	1183344557
	.word	-793222950
	.word	1932330052
	.word	-451083469
	.word	1598818986
	.word	-914616867
	.word	1014039888
	.word	-1438580185
	.word	269487038
	.word	-2044719927
	.word	632645719
	.word	-1283100896
	.word	164914873
	.word	-1612422706
	.word	251256414
	.word	-1731602135
	.word	580440240
	.word	-1264003129
	.word	389919577
	.word	-2129808338
	.word	995933623
	.word	-1385383232
	.word	545503469
	.word	-1229733990
	.word	216184323
	.word	-1697468044
	.word	961009130
	.word	-1351101795
	.word	354867972
	.word	-2095653773
	.word	302736355
	.word	-2076482412
	.word	1047162125
	.word	-1470469510
	.word	198119140
	.word	-1644230253
	.word	665714698
	.word	-1315043459
	.word	1150488560
	.word	-761067385
	.word	1760690462
	.word	-20838807
	.word	1566008055
	.word	-882416256
	.word	1899392025
	.word	-419009682
	.word	1981535486
	.word	-533998711
	.word	1518000656
	.word	-867508889
	.word	1876933113
	.word	-101728626
	.word	1136572183
	.word	-712069024
	.word	-391915818
	.word	2123616673
	.word	-993863624
	.word	1391648591
	.word	-244859951
	.word	1733803174
	.word	-586762945
	.word	1261875784
	.word	-634712616
	.word	1276840623
	.word	-162921674
	.word	1618609217
	.word	-1007722273
	.word	1440704424
	.word	-275878351
	.word	2042521926
	.word	-1934401077
	.word	444819132
	.word	-1596821723
	.word	920807506
	.word	-1787360052
	.word	54987707
	.word	-1189739998
	.word	791020885
	.word	-1103381819
	.word	671858098
	.word	-1839549397
	.word	74101596
	.word	-1476405310
	.word	835702965
	.word	-1952523988
	.word	497999451
	.word	-1329437541
	.word	653419500
	.word	-1667011979
	.word	177433858
	.word	-1459222116
	.word	1060507371
	.word	-2056845454
	.word	324468741
	.word	-2109030507
	.word	343587042
	.word	-1372868229
	.word	941340172
	.word	-1685138798
	.word	230610405
	.word	-1209017220
	.word	568318731
	.word	-724380794
	.word	1122161905
	.word	-122430104
	.word	1854134815
	.word	-854147455
	.word	1529264630
	.word	-512249745
	.word	2001188632
	.word	-430307192
	.word	1885999103
	.word	-902101402
	.word	1544225041
	.word	-6396529
	.word	1773036280
	.word	-738235551
	.word	1171221526
	.word	2028079776
	.word	-288223785
	.word	1417872462
	.word	-1028455623
	.word	1629906855
	.word	-149528368
	.word	1296525641
	.word	-612929986
	.word	1248514478
	.word	-598026535
	.word	1712054080
	.word	-264513481
	.word	1403960489
	.word	-979452962
	.word	2144318023
	.word	-369117904
	.word	485670333
	.word	-1966949686
	.word	814986067
	.word	-1499220956
	.word	87478458
	.word	-1828268083
	.word	693624404
	.word	-1083713245
	.word	779773619
	.word	-1203084860
	.word	35350621
	.word	-1809092822
	.word	935201716
	.word	-1584526141
	.word	467600730
	.word	-1913716179
	.word	0
	.word	1093737241
	.word	-2107492814
	.word	-1017959125
	.word	80047204
	.word	1173649277
	.word	-2035852714
	.word	-946454193
	.word	143317448
	.word	1237041873
	.word	-1964445702
	.word	-874908445
	.word	206550444
	.word	1300147893
	.word	-1909619810
	.word	-820209529
	.word	1360183882
	.word	270784851
	.word	-747572104
	.word	-1841172639
	.word	1440198190
	.word	350663991
	.word	-675964900
	.word	-1769700603
	.word	1503140738
	.word	413728923
	.word	-604361296
	.word	-1697958231
	.word	1566406630
	.word	476867839
	.word	-549502508
	.word	-1643226419
	.word	-1574665067
	.word	-485122164
	.word	541504167
	.word	1635232190
	.word	-1495144207
	.word	-405736472
	.word	612622019
	.word	1706214874
	.word	-1431413411
	.word	-341883324
	.word	684485487
	.word	1778217078
	.word	-1368706759
	.word	-279303648
	.word	738789131
	.word	1832393746
	.word	-214546721
	.word	-1308140090
	.word	1901359341
	.word	811953140
	.word	-135058757
	.word	-1228787294
	.word	1972444297
	.word	882902928
	.word	-71524585
	.word	-1165130738
	.word	2044635429
	.word	955232828
	.word	-8785037
	.word	-1102518166
	.word	2098971969
	.word	1009442392
	.word	89094640
	.word	1149133545
	.word	-2027073598
	.word	-971221797
	.word	25826708
	.word	1086000781
	.word	-2081938522
	.word	-1025951553
	.word	231055416
	.word	1291107105
	.word	-1884842486
	.word	-828994285
	.word	151047260
	.word	1211225925
	.word	-1956447634
	.word	-900472457
	.word	1415429050
	.word	359440547
	.word	-700478072
	.word	-1760651631
	.word	1352194014
	.word	296340679
	.word	-755310100
	.word	-1815348491
	.word	1557619314
	.word	501643627
	.word	-558541760
	.word	-1618718887
	.word	1477578262
	.word	421729551
	.word	-630179804
	.word	-1690229955
	.word	-1486095003
	.word	-430250372
	.word	621398871
	.word	1681444942
	.word	-1548840703
	.word	-492860904
	.word	567060275
	.word	1627241514
	.word	-1344199507
	.word	-288342092
	.word	763564703
	.word	1823607174
	.word	-1423685431
	.word	-367701040
	.word	692485883
	.word	1752655330
	.word	-159826129
	.word	-1220008906
	.word	1947928861
	.word	891949572
	.word	-222538933
	.word	-1282586542
	.word	1893623161
	.word	837779040
	.word	-17570073
	.word	-1077740034
	.word	2089930965
	.word	1033948108
	.word	-97088893
	.word	-1157131878
	.word	2018819249
	.word	962963368
	.word	1268286267
	.word	178886690
	.word	-906316535
	.word	-1999917552
	.word	1331556191
	.word	242021446
	.word	-851453587
	.word	-1945189772
	.word	1125276403
	.word	35865066
	.word	-1049596735
	.word	-2143193128
	.word	1205286551
	.word	115748238
	.word	-977993563
	.word	-2071716932
	.word	445268337
	.word	1539005032
	.word	-1729595581
	.word	-640062374
	.word	508505365
	.word	1602106892
	.word	-1674765529
	.word	-585367490
	.word	302028985
	.word	1395753888
	.word	-1872580981
	.word	-783043182
	.word	382072029
	.word	1475669956
	.word	-1800944913
	.word	-711534090
	.word	-373553234
	.word	-1467147081
	.word	1809723804
	.word	720317061
	.word	-310809654
	.word	-1404538669
	.word	1864064504
	.word	774522593
	.word	-516497818
	.word	-1610103425
	.word	1666508884
	.word	577106765
	.word	-437014014
	.word	-1530746597
	.word	1737589808
	.word	648060713
	.word	-1196505628
	.word	-106963203
	.word	986510294
	.word	2080237775
	.word	-1133794944
	.word	-44387687
	.word	1040818098
	.word	2134410411
	.word	-1339810772
	.word	-250280139
	.word	843459102
	.word	1937191175
	.word	-1260294072
	.word	-170890415
	.word	914572922
	.word	2008178019
	.word	1322777291
	.word	266789330
	.word	-860500743
	.word	-1920673824
	.word	1242732207
	.word	186879414
	.word	-932142947
	.word	-1992180860
	.word	1180508931
	.word	124532762
	.word	-1002498767
	.word	-2062676440
	.word	1117278055
	.word	61428862
	.word	-1057326763
	.word	-2117377460
	.word	533018753
	.word	1593058200
	.word	-1649996109
	.word	-594143830
	.word	453006565
	.word	1513181180
	.word	-1721605417
	.word	-665617970
	.word	391110985
	.word	1451162192
	.word	-1792157829
	.word	-736310174
	.word	327847213
	.word	1388025396
	.word	-1847018721
	.word	-791044090
	.word	-319586722
	.word	-1379769017
	.word	1855015020
	.word	799036277
	.word	-399109574
	.word	-1459156701
	.word	1783899144
	.word	728055569
	.word	-461789290
	.word	-1521959793
	.word	1713082788
	.word	657099453
	.word	-524497934
	.word	-1584541461
	.word	1658781120
	.word	602924761
	.word	-1109279724
	.word	-53434611
	.word	1065585190
	.word	2125631807
	.word	-1188769680
	.word	-132789399
	.word	994502210
	.word	2054683995
	.word	-1251252772
	.word	-195395899
	.word	923358190
	.word	1983400183
	.word	-1313994312
	.word	-258010463
	.word	869023626
	.word	1929192595
	.word	0
	.word	929743361
	.word	1859421187
	.word	1505641986
	.word	-592967417
	.word	-339555578
	.word	-1300460284
	.word	-2062135547
	.word	-1202646258
	.word	-1891905265
	.word	-695888115
	.word	-504408820
	.word	1694046729
	.word	1402198024
	.word	170761738
	.word	1028086795
	.word	1889740316
	.word	1204413469
	.word	511156767
	.word	689791006
	.word	-1408553189
	.word	-1688081126
	.word	-1025529064
	.word	-172660455
	.word	-923650798
	.word	-6752493
	.word	-1507413743
	.word	-1857260784
	.word	341457941
	.word	590413332
	.word	2056173590
	.word	1306819095
	.word	-532263624
	.word	-684945607
	.word	-1902982853
	.word	-1174926534
	.word	1022247999
	.word	193234494
	.word	1379582012
	.word	1699742269
	.word	1477926454
	.word	1870502967
	.word	918805045
	.word	27858996
	.word	-2067835087
	.word	-1277848272
	.word	-362032334
	.word	-587132621
	.word	-1864013020
	.word	-1483757275
	.word	-30281945
	.word	-916771546
	.word	1280139811
	.word	2066194466
	.word	580511264
	.word	368256033
	.word	682915882
	.word	534690347
	.word	1180761129
	.word	1896496680
	.word	-199462611
	.word	-1015631060
	.word	-1698106066
	.word	-1381877969
	.word	-1064461712
	.word	-135833487
	.word	-1369891213
	.word	-1724654478
	.word	472224631
	.word	726618486
	.word	1928402804
	.word	1167840629
	.word	2027719038
	.word	1337346943
	.word	369626493
	.word	560123772
	.word	-1535868807
	.word	-1826733448
	.word	-895482758
	.word	-37042565
	.word	-1339114388
	.word	-2025554323
	.word	-554026897
	.word	-376374674
	.word	1820767595
	.word	1542223722
	.word	38941032
	.word	892924777
	.word	142585698
	.word	1058368867
	.word	1722493793
	.word	1371662688
	.word	-724064667
	.word	-474127260
	.word	-1174199706
	.word	-1922441113
	.word	550229832
	.word	396432713
	.word	1310675787
	.word	2037748042
	.word	-60563889
	.word	-888595378
	.word	-1833477556
	.word	-1512204211
	.word	-1734687674
	.word	-1343224249
	.word	-162643899
	.word	-1054571964
	.word	1144180033
	.word	1935150912
	.word	719735106
	.word	495749955
	.word	1349054804
	.word	1728197461
	.word	1052538199
	.word	165066582
	.word	-1933510573
	.word	-1146471854
	.word	-501973936
	.word	-713114031
	.word	-398859686
	.word	-548200357
	.word	-2031262119
	.word	-1316510632
	.word	881978205
	.word	66791772
	.word	1514499934
	.word	1831841119
	.word	-2145700383
	.word	-1217267744
	.word	-288378398
	.word	-643468317
	.word	1555250406
	.word	1809448679
	.word	845658341
	.word	84769508
	.word	944383727
	.word	253813998
	.word	1453236972
	.word	1643405549
	.word	-454938648
	.word	-746000919
	.word	-1976128533
	.word	-1118017046
	.word	-256371715
	.word	-942484996
	.word	-1637050370
	.word	-1459202561
	.word	739252986
	.word	461035771
	.word	1120182009
	.word	1974361336
	.word	1223229683
	.word	2139341554
	.word	641565936
	.word	290932465
	.word	-1807676940
	.word	-1557410827
	.word	-90862089
	.word	-838905866
	.word	1616738521
	.word	1463270104
	.word	243924186
	.word	971194075
	.word	-1124765218
	.word	-1952468001
	.word	-769526307
	.word	-448055332
	.word	-670274601
	.word	-278484522
	.word	-1227296812
	.word	-2119029291
	.word	77882064
	.word	869179601
	.word	1785784019
	.word	1561994450
	.word	285105861
	.word	664050884
	.word	2116737734
	.word	1228937415
	.word	-866756670
	.word	-79915581
	.word	-1568484415
	.word	-1779953216
	.word	-1464906293
	.word	-1614442550
	.word	-964965944
	.word	-250541111
	.word	1946633420
	.word	1131251405
	.word	450085071
	.word	767099598
	.word	1083617169
	.word	2013031824
	.word	776088466
	.word	422111635
	.word	-1673615722
	.word	-1420532585
	.word	-219536747
	.word	-981409644
	.word	-121127777
	.word	-810713442
	.word	-1777125220
	.word	-1585841507
	.word	611300760
	.word	319125401
	.word	1253781915
	.word	2110911386
	.word	808814989
	.word	123685772
	.word	1591807374
	.word	1770770319
	.word	-325222262
	.word	-604552565
	.word	-2109143927
	.word	-1255946616
	.word	-2006672765
	.word	-1089578878
	.word	-424665472
	.word	-774185855
	.word	1422693252
	.word	1671844229
	.word	974657415
	.word	225629574
	.word	-1596923223
	.word	-1749409624
	.word	-838572374
	.word	-110189397
	.word	2088299438
	.word	1259481519
	.word	313290669
	.word	633777580
	.word	411169191
	.word	803943334
	.word	1985312164
	.word	1094694821
	.word	-1003882336
	.word	-213697887
	.word	-1426228061
	.word	-1650999646
	.word	-797719371
	.word	-417790284
	.word	-1096335178
	.word	-1983020361
	.word	215731634
	.word	1001459635
	.word	1645169073
	.word	1432718256
	.word	1747113915
	.word	1598559674
	.word	116806584
	.word	832344505
	.word	-1265967428
	.word	-2082464579
	.word	-631350593
	.word	-315320130
	.word	0
	.word	1701297336
	.word	-1949824598
	.word	-290474734
	.word	1469538959
	.word	854646327
	.word	-597726427
	.word	-1187457123
	.word	-282544955
	.word	-1974531971
	.word	1692450159
	.word	25625047
	.word	-1195387318
	.word	-573019406
	.word	863494112
	.word	1443914584
	.word	-1621681840
	.word	-97475096
	.word	345968890
	.word	1912122434
	.word	-926909473
	.word	-1381513369
	.word	1124627061
	.word	644861645
	.word	1887415701
	.word	353898797
	.word	-71850945
	.word	-1630529401
	.word	669568794
	.word	1116697506
	.word	-1407138128
	.word	-918062584
	.word	1051669152
	.word	1539870232
	.word	-1251525878
	.word	-805271630
	.word	1765298223
	.word	207613079
	.word	-487564923
	.word	-2020088515
	.word	-779647387
	.word	-1260373283
	.word	1515163599
	.word	1059599223
	.word	-2045713174
	.word	-478717870
	.word	232320320
	.word	1757368824
	.word	-1577571344
	.word	-996174008
	.word	707797594
	.word	1331142370
	.word	-160478849
	.word	-1828129337
	.word	2108113109
	.word	415300717
	.word	1322295093
	.word	733422477
	.word	-988244321
	.word	-1602278873
	.word	424148410
	.word	2082488578
	.word	-1836059632
	.word	-135771992
	.word	1029182619
	.word	1480566819
	.word	-1232069327
	.word	-738745975
	.word	1791981076
	.word	262720172
	.word	-519602242
	.word	-2074033402
	.word	-764370850
	.word	-1223222042
	.word	1505274356
	.word	1021252940
	.word	-2048408879
	.word	-528449943
	.word	238013307
	.word	1799911363
	.word	-1576071733
	.word	-949440141
	.word	700908641
	.word	1285601497
	.word	-174559420
	.word	-1862282244
	.word	2119198446
	.word	456645206
	.word	1294448910
	.word	675284406
	.word	-957370204
	.word	-1551365092
	.word	447798145
	.word	2144823097
	.word	-1854352853
	.word	-199266669
	.word	66528827
	.word	1720752771
	.word	-2009124975
	.word	-312962263
	.word	1415595188
	.word	822605836
	.word	-542618338
	.word	-1160777306
	.word	-320892162
	.word	-1984418234
	.word	1729600340
	.word	40904684
	.word	-1152847759
	.word	-567325495
	.word	813758939
	.word	1441219939
	.word	-1667219605
	.word	-104365101
	.word	392705729
	.word	1913621113
	.word	-885563932
	.word	-1370431140
	.word	1090475086
	.word	630778102
	.word	1938328494
	.word	384775958
	.word	-129990140
	.word	-1658372420
	.word	606071073
	.word	1098405273
	.word	-1344806773
	.word	-894411725
	.word	1001806317
	.word	1590814037
	.word	-1333899193
	.word	-719721217
	.word	1814117218
	.word	155617242
	.word	-404147512
	.word	-2104586640
	.word	-727782104
	.word	-1309060720
	.word	1599530114
	.word	976312378
	.word	-2096525401
	.word	-428985569
	.word	146900493
	.word	1839610549
	.word	-1528741699
	.word	-1048118267
	.word	791234839
	.word	1246688687
	.word	-210361806
	.word	-1777230198
	.word	2025728920
	.word	500799264
	.word	1271526520
	.word	783173824
	.word	-1073611310
	.word	-1520025238
	.word	475961079
	.word	2033789519
	.word	-1751736483
	.word	-219077659
	.word	85551949
	.word	1618925557
	.word	-1898880281
	.word	-340337057
	.word	1385040322
	.word	938063226
	.word	-649723800
	.word	-1138639664
	.word	-365830264
	.word	-1890163920
	.word	1643763234
	.word	77490842
	.word	-1113146105
	.word	-658439745
	.word	913224877
	.word	1393100821
	.word	-1706135011
	.word	-14037339
	.word	294026167
	.word	1960953615
	.word	-841412462
	.word	-1463899094
	.word	1175525688
	.word	594978176
	.word	1969669848
	.word	268532320
	.word	-22098062
	.word	-1681296438
	.word	586261591
	.word	1201019119
	.word	-1455837699
	.word	-866250427
	.word	116280694
	.word	1669984718
	.word	-1926871844
	.word	-398329756
	.word	1366896633
	.word	874419009
	.word	-625924525
	.word	-1076454677
	.word	-372835917
	.word	-1935588085
	.word	1645146137
	.word	124341409
	.word	-1101948100
	.word	-617207932
	.word	899256982
	.word	1358835246
	.word	-1715907546
	.word	-52500322
	.word	309419404
	.word	1997988148
	.word	-835832151
	.word	-1421243887
	.word	1172717315
	.word	545358779
	.word	1989271779
	.word	334912603
	.word	-44439223
	.word	-1740745231
	.word	554074732
	.word	1147223764
	.word	-1429304378
	.word	-810993794
	.word	943816662
	.word	1562821486
	.word	-1282836868
	.word	-688993596
	.word	1876303193
	.word	179413473
	.word	-467790605
	.word	-2122733493
	.word	-680932589
	.word	-1307674709
	.word	1554105017
	.word	969309697
	.word	-2130794084
	.word	-442952412
	.word	188129334
	.word	1850809486
	.word	-1491704186
	.word	-1032725954
	.word	752774956
	.word	1236915092
	.word	-259980279
	.word	-1780041551
	.word	2068385187
	.word	506376475
	.word	1212076611
	.word	760835835
	.word	-1007232023
	.word	-1500420271
	.word	531214540
	.word	2060323956
	.word	-1805534874
	.word	-251263522
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
