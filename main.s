	.syntax unified
	.cpu cortex-m4
	.eabi_attribute 27, 3
	.eabi_attribute 28, 1
	.fpu fpv4-sp-d16
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.thumb
	.file	"main.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	getData4DAC
	.thumb
	.thumb_func
	.type	getData4DAC, %function
getData4DAC:
.LFB111:
	.file 1 "main.c"
	.loc 1 62 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL0:
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	mov	r5, r1
	fstmfdd	sp!, {d8, d9, d10, d11}
	.cfi_def_cfa_offset 48
	.cfi_offset 80, -48
	.cfi_offset 81, -44
	.cfi_offset 82, -40
	.cfi_offset 83, -36
	.cfi_offset 84, -32
	.cfi_offset 85, -28
	.cfi_offset 86, -24
	.cfi_offset 87, -20
	subs	r4, r0, #2
	.loc 1 64 0
	flds	s16, .L10
	.loc 1 70 0
	flds	s22, .L10+4
	flds	s20, .L10+8
	.loc 1 68 0
	flds	s21, .L10+12
	.loc 1 71 0
	flds	s18, .L10+16
	.loc 1 72 0
	flds	s17, .L10+20
	addw	r6, r0, #1998
	.loc 1 70 0
	fconsts	s19, #96
	b	.L4
.LVL1:
.L2:
	.loc 1 69 0
	cmp	r5, #2
	beq	.L8
.L3:
	.loc 1 71 0 discriminator 2
	fmuls	s15, s14, s18
	.loc 1 72 0 discriminator 2
	fadds	s16, s16, s17
.LVL2:
	.loc 1 71 0 discriminator 2
	ftouizs	s15, s15
	fmrs	r3, s15	@ int
	strh	r3, [r4, #2]!	@ movhi
	.loc 1 65 0 discriminator 2
	cmp	r4, r6
	beq	.L9
.LVL3:
.L4:
	.loc 1 67 0
	cmp	r5, #1
	bne	.L2
	.loc 1 68 0
	fmuls	s0, s16, s21
	bl	sinf
.LVL4:
	fcpys	s14, s19
	vfma.f32	s14, s0, s20
.LVL5:
	b	.L3
.L8:
	.loc 1 70 0
	fmuls	s0, s16, s22
	bl	sinf
.LVL6:
	fcpys	s14, s19
	vfma.f32	s14, s0, s20
.LVL7:
	b	.L3
.L9:
	.loc 1 74 0
	fldmfdd	sp!, {d8-d11}
	.cfi_restore 86
	.cfi_restore 87
	.cfi_restore 84
	.cfi_restore 85
	.cfi_restore 82
	.cfi_restore 83
	.cfi_restore 80
	.cfi_restore 81
	.cfi_def_cfa_offset 16
.LVL8:
	pop	{r4, r5, r6, pc}
.LVL9:
.L11:
	.align	2
.L10:
	.word	0
	.word	1187273073
	.word	1053609165
	.word	1190490061
	.word	1166012416
	.word	944879383
	.cfi_endproc
.LFE111:
	.size	getData4DAC, .-getData4DAC
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.thumb
	.thumb_func
	.type	main, %function
main:
.LFB110:
	.loc 1 19 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 4000
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	.loc 1 22 0
	movs	r0, #45
	.loc 1 19 0
	subw	sp, sp, #4004
	.cfi_def_cfa_offset 4032
	.loc 1 22 0
	bl	initUSART2
.LVL10:
	.loc 1 24 0
	bl	initDAC1
.LVL11:
	.loc 1 25 0
	movs	r0, #30
	movw	r1, #48000
	bl	initCS43L22
.LVL12:
	.loc 1 28 0
	add	r9, sp, #2000
	.loc 1 27 0
	mov	r0, sp
	movs	r1, #1
	bl	getData4DAC
.LVL13:
	.loc 1 28 0
	mov	r0, r9
	movs	r1, #2
	.loc 1 35 0
	ldr	r4, .L23
	.loc 1 28 0
	bl	getData4DAC
.LVL14:
	.loc 1 30 0
	movs	r6, #0
	.loc 1 35 0
	mov	r8, r4
	.loc 1 29 0
	mov	r5, r6
	.loc 1 36 0
	mov	r7, r6	@ movhi
.LVL15:
.L13:
	.loc 1 35 0 discriminator 1
	ldrh	r3, [r4, #8]
	lsls	r3, r3, #30
	bpl	.L13
.LVL16:
	.loc 1 36 0
	strh	r7, [r8, #12]	@ movhi
	.loc 1 38 0
	cbz	r6, .L21
	.loc 1 44 0
	cbnz	r6, .L22
.L15:
.LVL17:
	.loc 1 49 0
	cmp	r5, #1000
	.loc 1 57 0
	mov	r0, #500
	.loc 1 51 0
	itt	cs
	eorcs	r6, r6, #1
	.loc 1 50 0
	movcs	r5, #0
.LVL18:
	.loc 1 57 0
	bl	delay_us
.LVL19:
	.loc 1 58 0
	b	.L13
.LVL20:
.L21:
	.loc 1 40 0
	ldrh	r0, [sp, r5, lsl #1]
	bl	setDAC1
.LVL21:
	.loc 1 41 0
	adds	r5, r5, #1
.LVL22:
	b	.L15
.L22:
	.loc 1 45 0
	ldrh	r0, [r9, r5, lsl #1]
	bl	setDAC1
.LVL23:
	.loc 1 46 0
	adds	r5, r5, #1
.LVL24:
	b	.L15
.L24:
	.align	2
.L23:
	.word	1073757184
	.cfi_endproc
.LFE110:
	.size	main, .-main
	.comm	dev_addr,1,1
	.text
.Letext0:
	.file 2 "/home/tana/Desktop/msut/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/tana/Desktop/msut/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/stdint.h"
	.file 4 "/home/tana/Desktop/msut/STM32F407/Libraries/CMSIS/ST/STM32F4xx/Include/stm32f4xx.h"
	.file 5 "/home/tana/Desktop/msut/STM32F407/Libraries/CMSIS/Include/core_cm4.h"
	.file 6 "i2c.h"
	.file 7 "usart.h"
	.file 8 "cs43l22.h"
	.file 9 "delay.h"
	.file 10 "/home/tana/Desktop/msut/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/math.h"
	.file 11 "dac.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x3f5
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x1
	.4byte	.LASF48
	.4byte	.LASF49
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x1d
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x2b
	.4byte	0x57
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x3f
	.4byte	0x69
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x41
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x15
	.4byte	0x33
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x21
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x2c
	.4byte	0x5e
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x3
	.byte	0x2d
	.4byte	0x70
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF18
	.uleb128 0x5
	.4byte	0x9e
	.uleb128 0x5
	.4byte	0xa9
	.uleb128 0x5
	.4byte	0xb4
	.uleb128 0x6
	.byte	0x24
	.byte	0x4
	.2byte	0x34f
	.4byte	0x1d2
	.uleb128 0x7
	.ascii	"CR1\000"
	.byte	0x4
	.2byte	0x351
	.4byte	0xd6
	.byte	0
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x352
	.4byte	0xa9
	.byte	0x2
	.uleb128 0x7
	.ascii	"CR2\000"
	.byte	0x4
	.2byte	0x353
	.4byte	0xd6
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x354
	.4byte	0xa9
	.byte	0x6
	.uleb128 0x7
	.ascii	"SR\000"
	.byte	0x4
	.2byte	0x355
	.4byte	0xd6
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x356
	.4byte	0xa9
	.byte	0xa
	.uleb128 0x7
	.ascii	"DR\000"
	.byte	0x4
	.2byte	0x357
	.4byte	0xd6
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x358
	.4byte	0xa9
	.byte	0xe
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x359
	.4byte	0xd6
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x35a
	.4byte	0xa9
	.byte	0x12
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x35b
	.4byte	0xd6
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x35c
	.4byte	0xa9
	.byte	0x16
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x35d
	.4byte	0xd6
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x35e
	.4byte	0xa9
	.byte	0x1a
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x35f
	.4byte	0xd6
	.byte	0x1c
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x360
	.4byte	0xa9
	.byte	0x1e
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x361
	.4byte	0xd6
	.byte	0x20
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0x4
	.2byte	0x362
	.4byte	0xa9
	.byte	0x22
	.byte	0
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x4
	.2byte	0x363
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF34
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF35
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF36
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0x1
	.byte	0x3d
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x27e
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x1
	.byte	0x3d
	.4byte	0x27e
	.4byte	.LLST0
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x1
	.byte	0x3d
	.4byte	0x9e
	.4byte	.LLST1
	.uleb128 0xc
	.ascii	"n\000"
	.byte	0x1
	.byte	0x3f
	.4byte	0xa9
	.4byte	.LLST2
	.uleb128 0xc
	.ascii	"y\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x25
	.4byte	.LLST3
	.uleb128 0xc
	.ascii	"t\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x25
	.4byte	.LLST4
	.uleb128 0xd
	.4byte	.LVL4
	.4byte	0x396
	.4byte	0x267
	.uleb128 0xe
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0x7
	.byte	0xf5
	.uleb128 0x50
	.uleb128 0x25
	.byte	0xf5
	.uleb128 0x55
	.uleb128 0x25
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.4byte	.LVL6
	.4byte	0x396
	.uleb128 0xe
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0x7
	.byte	0xf5
	.uleb128 0x50
	.uleb128 0x25
	.byte	0xf5
	.uleb128 0x56
	.uleb128 0x25
	.byte	0x1e
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0xa9
	.uleb128 0x11
	.4byte	.LASF51
	.byte	0x1
	.byte	0x12
	.4byte	0x90
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x368
	.uleb128 0x12
	.4byte	.LASF39
	.byte	0x1
	.byte	0x14
	.4byte	0x368
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4032
	.uleb128 0x12
	.4byte	.LASF40
	.byte	0x1
	.byte	0x15
	.4byte	0x368
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2032
	.uleb128 0xc
	.ascii	"k\000"
	.byte	0x1
	.byte	0x1d
	.4byte	0xbf
	.4byte	.LLST5
	.uleb128 0x13
	.4byte	.LASF41
	.byte	0x1
	.byte	0x1e
	.4byte	0x90
	.4byte	.LLST6
	.uleb128 0xd
	.4byte	.LVL10
	.4byte	0x3ac
	.4byte	0x2eb
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x2d
	.byte	0
	.uleb128 0x14
	.4byte	.LVL11
	.4byte	0x3bd
	.uleb128 0xd
	.4byte	.LVL12
	.4byte	0x3c4
	.4byte	0x30e
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0xbb80
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x4e
	.byte	0
	.uleb128 0xd
	.4byte	.LVL13
	.4byte	0x1f3
	.4byte	0x327
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.4byte	.LVL14
	.4byte	0x1f3
	.4byte	0x340
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.4byte	.LVL19
	.4byte	0x3da
	.4byte	0x355
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1f4
	.byte	0
	.uleb128 0x14
	.4byte	.LVL21
	.4byte	0x3eb
	.uleb128 0x14
	.4byte	.LVL23
	.4byte	0x3eb
	.byte	0
	.uleb128 0x15
	.4byte	0xa9
	.4byte	0x379
	.uleb128 0x16
	.4byte	0xca
	.2byte	0x3e7
	.byte	0
	.uleb128 0x17
	.4byte	.LASF42
	.byte	0x5
	.2byte	0x51b
	.4byte	0xdb
	.uleb128 0x18
	.4byte	.LASF43
	.byte	0x6
	.byte	0x14
	.4byte	0xd1
	.uleb128 0x5
	.byte	0x3
	.4byte	dev_addr
	.uleb128 0x19
	.4byte	.LASF52
	.byte	0xa
	.2byte	0x13c
	.4byte	0x25
	.4byte	0x3ac
	.uleb128 0x1a
	.4byte	0x25
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF44
	.byte	0x7
	.byte	0xf
	.4byte	0x3bd
	.uleb128 0x1a
	.4byte	0xbf
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF53
	.byte	0xb
	.byte	0x6
	.uleb128 0x1b
	.4byte	.LASF45
	.byte	0x8
	.byte	0x28
	.4byte	0x3da
	.uleb128 0x1a
	.4byte	0x9e
	.uleb128 0x1a
	.4byte	0xbf
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF46
	.byte	0x9
	.byte	0x7
	.4byte	0x3eb
	.uleb128 0x1a
	.4byte	0xbf
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF54
	.byte	0xb
	.byte	0x8
	.uleb128 0x1a
	.4byte	0xa9
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1
	.4byte	.LVL9
	.2byte	0x4
	.byte	0x76
	.sleb128 -1998
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LFE111
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL1
	.4byte	.LFE111
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL4-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4e
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4e
	.4byte	.LVL7
	.4byte	.LFE111
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4e
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL1
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LFE110
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.LFB110
	.4byte	.LFE110
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF53:
	.ascii	"initDAC1\000"
.LASF41:
	.ascii	"temp\000"
.LASF3:
	.ascii	"short int\000"
.LASF18:
	.ascii	"sizetype\000"
.LASF51:
	.ascii	"main\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF46:
	.ascii	"delay_us\000"
.LASF5:
	.ascii	"__uint16_t\000"
.LASF27:
	.ascii	"TXCRCR\000"
.LASF49:
	.ascii	"/home/tana/Desktop/MSUT Zavrsni projekat/audio\000"
.LASF25:
	.ascii	"RXCRCR\000"
.LASF14:
	.ascii	"uint8_t\000"
.LASF17:
	.ascii	"uint32_t\000"
.LASF37:
	.ascii	"dac_buff\000"
.LASF0:
	.ascii	"float\000"
.LASF11:
	.ascii	"long long int\000"
.LASF8:
	.ascii	"long int\000"
.LASF50:
	.ascii	"getData4DAC\000"
.LASF44:
	.ascii	"initUSART2\000"
.LASF4:
	.ascii	"__uint8_t\000"
.LASF36:
	.ascii	"long double\000"
.LASF2:
	.ascii	"unsigned char\000"
.LASF1:
	.ascii	"signed char\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF38:
	.ascii	"type\000"
.LASF13:
	.ascii	"unsigned int\000"
.LASF15:
	.ascii	"uint16_t\000"
.LASF43:
	.ascii	"dev_addr\000"
.LASF10:
	.ascii	"long unsigned int\000"
.LASF54:
	.ascii	"setDAC1\000"
.LASF52:
	.ascii	"sinf\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF34:
	.ascii	"char\000"
.LASF16:
	.ascii	"int32_t\000"
.LASF33:
	.ascii	"SPI_TypeDef\000"
.LASF31:
	.ascii	"I2SPR\000"
.LASF23:
	.ascii	"CRCPR\000"
.LASF19:
	.ascii	"RESERVED0\000"
.LASF20:
	.ascii	"RESERVED1\000"
.LASF21:
	.ascii	"RESERVED2\000"
.LASF22:
	.ascii	"RESERVED3\000"
.LASF24:
	.ascii	"RESERVED4\000"
.LASF26:
	.ascii	"RESERVED5\000"
.LASF28:
	.ascii	"RESERVED6\000"
.LASF30:
	.ascii	"RESERVED7\000"
.LASF32:
	.ascii	"RESERVED8\000"
.LASF35:
	.ascii	"double\000"
.LASF42:
	.ascii	"ITM_RxBuffer\000"
.LASF45:
	.ascii	"initCS43L22\000"
.LASF7:
	.ascii	"__int32_t\000"
.LASF48:
	.ascii	"main.c\000"
.LASF39:
	.ascii	"dac_buff1\000"
.LASF40:
	.ascii	"dac_buff2\000"
.LASF29:
	.ascii	"I2SCFGR\000"
.LASF47:
	.ascii	"GNU C 4.9.3 20141119 (release) [ARM/embedded-4_9-br"
	.ascii	"anch revision 218278] -mlittle-endian -mthumb -mcpu"
	.ascii	"=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mfpu"
	.ascii	"=fpv4-sp-d16 -g -O2 -fsingle-precision-constant\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.9.3 20141119 (release) [ARM/embedded-4_9-branch revision 218278]"
