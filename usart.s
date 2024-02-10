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
	.file	"usart.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	initUSART2
	.thumb
	.thumb_func
	.type	initUSART2, %function
initUSART2:
.LFB110:
	.file 1 "usart.c"
	.loc 1 4 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL0:
	.loc 1 8 0
	ldr	r2, .L3
	.loc 1 10 0
	ldr	r3, .L3+4
	.loc 1 8 0
	ldr	r1, [r2, #48]
	orr	r1, r1, #1
	.loc 1 4 0
	push	{r4}
	.cfi_def_cfa_offset 4
	.cfi_offset 4, -4
	.loc 1 8 0
	str	r1, [r2, #48]
	.loc 1 9 0
	ldr	r1, [r2, #64]
	.loc 1 17 0
	ldr	r4, .L3+8
	.loc 1 9 0
	orr	r1, r1, #131072
	str	r1, [r2, #64]
	.loc 1 10 0
	ldr	r2, [r3]
	orr	r2, r2, #160
	str	r2, [r3]
	.loc 1 11 0
	ldr	r2, [r3, #32]
	orr	r2, r2, #30464
	str	r2, [r3, #32]
	.loc 1 13 0
	ldr	r2, [r3, #8]
	orr	r2, r2, #32
	str	r2, [r3, #8]
	.loc 1 14 0
	ldr	r2, [r3, #8]
	.loc 1 17 0
	uxth	r0, r0
.LVL1:
	.loc 1 14 0
	orr	r2, r2, #128
	.loc 1 19 0
	movw	r1, #8204
	.loc 1 14 0
	str	r2, [r3, #8]
	.loc 1 17 0
	strh	r0, [r4, #8]	@ movhi
	.loc 1 19 0
	strh	r1, [r4, #12]	@ movhi
	.loc 1 20 0
	ldr	r4, [sp], #4
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr
.L4:
	.align	2
.L3:
	.word	1073887232
	.word	1073872896
	.word	1073759232
	.cfi_endproc
.LFE110:
	.size	initUSART2, .-initUSART2
	.align	2
	.global	putcharUSART2
	.thumb
	.thumb_func
	.type	putcharUSART2, %function
putcharUSART2:
.LFB111:
	.loc 1 23 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL2:
	.loc 1 24 0
	ldr	r1, .L10
.L6:
	.loc 1 24 0 is_stmt 0 discriminator 1
	ldrh	r3, [r1]
	ldr	r2, .L10
	lsls	r3, r3, #25
	bpl	.L6
	.loc 1 26 0 is_stmt 1
	uxth	r0, r0
.LVL3:
	strh	r0, [r2, #4]	@ movhi
	bx	lr
.L11:
	.align	2
.L10:
	.word	1073759232
	.cfi_endproc
.LFE111:
	.size	putcharUSART2, .-putcharUSART2
	.align	2
	.global	printUSART2
	.thumb
	.thumb_func
	.type	printUSART2, %function
printUSART2:
.LFB112:
	.loc 1 30 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 256
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4:
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	sub	sp, sp, #256
	.cfi_def_cfa_offset 272
	.loc 1 35 0
	mov	r2, sp
	bl	getASCIIString
.LVL5:
.LBB6:
.LBB7:
	.loc 1 24 0
	ldr	r2, .L25
	add	r0, sp, #-1
	mov	r4, r2
	add	r5, sp, #255
.LBE7:
.LBE6:
.LBB9:
.LBB10:
	.loc 1 26 0
	movs	r6, #13
.LVL6:
.L13:
.LBE10:
.LBE9:
	.loc 1 37 0
	ldrb	r1, [r0, #1]!	@ zero_extendqisi2
.LVL7:
	cbz	r1, .L12
.L21:
.LBB12:
.LBB8:
	.loc 1 24 0
	ldrh	r3, [r2]
	lsls	r3, r3, #25
	bpl	.L21
	.loc 1 26 0
	uxth	r1, r1
	strh	r1, [r4, #4]	@ movhi
.LBE8:
.LBE12:
	.loc 1 40 0
	ldrb	r3, [r0]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L16
.L15:
.LVL8:
	.loc 1 45 0
	cmp	r0, r5
	bne	.L13
.LVL9:
.L12:
	.loc 1 48 0
	add	sp, sp, #256
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	pop	{r4, r5, r6, pc}
.L16:
	.cfi_restore_state
.LBB13:
.LBB11:
	.loc 1 24 0
	ldrh	r3, [r2]
	lsls	r3, r3, #25
	bpl	.L16
	.loc 1 26 0
	strh	r6, [r4, #4]	@ movhi
	b	.L15
.L26:
	.align	2
.L25:
	.word	1073759232
.LBE11:
.LBE13:
	.cfi_endproc
.LFE112:
	.size	printUSART2, .-printUSART2
	.align	2
	.global	getcharUSART2
	.thumb
	.thumb_func
	.type	getcharUSART2, %function
getcharUSART2:
.LFB113:
	.loc 1 51 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 54 0
	ldr	r1, .L31
.L28:
	.loc 1 54 0 is_stmt 0 discriminator 1
	ldrh	r3, [r1]
	ldr	r2, .L31
	lsls	r3, r3, #26
	bpl	.L28
	.loc 1 56 0 is_stmt 1
	ldrh	r0, [r2, #4]
.LVL10:
	.loc 1 57 0
	ldrh	r3, [r2]
	bic	r3, r3, #32
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	.loc 1 60 0
	uxtb	r0, r0
	.loc 1 57 0
	strh	r3, [r2]	@ movhi
	.loc 1 60 0
	bx	lr
.L32:
	.align	2
.L31:
	.word	1073759232
	.cfi_endproc
.LFE113:
	.size	getcharUSART2, .-getcharUSART2
	.align	2
	.global	enableRxUSART2
	.thumb
	.thumb_func
	.type	enableRxUSART2, %function
enableRxUSART2:
.LFB114:
	.loc 1 63 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 64 0
	ldr	r3, .L34
	movw	r2, #8196
	strh	r2, [r3, #12]	@ movhi
	bx	lr
.L35:
	.align	2
.L34:
	.word	1073759232
	.cfi_endproc
.LFE114:
	.size	enableRxUSART2, .-enableRxUSART2
	.align	2
	.global	getRxStateUSART2
	.thumb
	.thumb_func
	.type	getRxStateUSART2, %function
getRxStateUSART2:
.LFB115:
	.loc 1 68 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL11:
	.loc 1 70 0
	ldr	r3, .L37
	ldrh	r0, [r3]
.LVL12:
	eor	r0, r0, #32
.LVL13:
	.loc 1 74 0
	ubfx	r0, r0, #5, #1
	bx	lr
.L38:
	.align	2
.L37:
	.word	1073759232
	.cfi_endproc
.LFE115:
	.size	getRxStateUSART2, .-getRxStateUSART2
.Letext0:
	.file 2 "/home/tana/Desktop/msut/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/tana/Desktop/msut/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/stdint.h"
	.file 4 "/home/tana/Desktop/msut/STM32F407/Libraries/CMSIS/ST/STM32F4xx/Include/stm32f4xx.h"
	.file 5 "misc.h"
	.file 6 "/home/tana/Desktop/msut/STM32F407/Libraries/CMSIS/Include/core_cm4.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x593
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x1
	.4byte	.LASF68
	.4byte	.LASF69
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x1d
	.4byte	0x37
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x2b
	.4byte	0x50
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x3f
	.4byte	0x62
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x41
	.4byte	0x74
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x21
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x2c
	.4byte	0x57
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x2d
	.4byte	0x69
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0x5
	.4byte	0xb8
	.uleb128 0x6
	.4byte	0xb8
	.4byte	0xdf
	.uleb128 0x7
	.4byte	0xc3
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	0xa2
	.uleb128 0x5
	.4byte	0xad
	.uleb128 0x8
	.byte	0x28
	.byte	0x4
	.2byte	0x28e
	.4byte	0x175
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x4
	.2byte	0x290
	.4byte	0xca
	.byte	0
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x291
	.4byte	0xca
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x292
	.4byte	0xca
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x293
	.4byte	0xca
	.byte	0xc
	.uleb128 0xa
	.ascii	"IDR\000"
	.byte	0x4
	.2byte	0x294
	.4byte	0xca
	.byte	0x10
	.uleb128 0xa
	.ascii	"ODR\000"
	.byte	0x4
	.2byte	0x295
	.4byte	0xca
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x296
	.4byte	0xdf
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x297
	.4byte	0xdf
	.byte	0x1a
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x298
	.4byte	0xca
	.byte	0x1c
	.uleb128 0xa
	.ascii	"AFR\000"
	.byte	0x4
	.2byte	0x299
	.4byte	0x175
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.4byte	0xcf
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x29a
	.4byte	0xe9
	.uleb128 0x8
	.byte	0x88
	.byte	0x4
	.2byte	0x2dd
	.4byte	0x315
	.uleb128 0xa
	.ascii	"CR\000"
	.byte	0x4
	.2byte	0x2df
	.4byte	0xca
	.byte	0
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x2e0
	.4byte	0xca
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x2e1
	.4byte	0xca
	.byte	0x8
	.uleb128 0xa
	.ascii	"CIR\000"
	.byte	0x4
	.2byte	0x2e2
	.4byte	0xca
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x2e3
	.4byte	0xca
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x2e4
	.4byte	0xca
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x2e5
	.4byte	0xca
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x2e6
	.4byte	0xb8
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x4
	.2byte	0x2e7
	.4byte	0xca
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x4
	.2byte	0x2e8
	.4byte	0xca
	.byte	0x24
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x4
	.2byte	0x2e9
	.4byte	0xcf
	.byte	0x28
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x4
	.2byte	0x2ea
	.4byte	0xca
	.byte	0x30
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x4
	.2byte	0x2eb
	.4byte	0xca
	.byte	0x34
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x4
	.2byte	0x2ec
	.4byte	0xca
	.byte	0x38
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x4
	.2byte	0x2ed
	.4byte	0xb8
	.byte	0x3c
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x4
	.2byte	0x2ee
	.4byte	0xca
	.byte	0x40
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x4
	.2byte	0x2ef
	.4byte	0xca
	.byte	0x44
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x4
	.2byte	0x2f0
	.4byte	0xcf
	.byte	0x48
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x4
	.2byte	0x2f1
	.4byte	0xca
	.byte	0x50
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x4
	.2byte	0x2f2
	.4byte	0xca
	.byte	0x54
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x4
	.2byte	0x2f3
	.4byte	0xca
	.byte	0x58
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x4
	.2byte	0x2f4
	.4byte	0xb8
	.byte	0x5c
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x4
	.2byte	0x2f5
	.4byte	0xca
	.byte	0x60
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x4
	.2byte	0x2f6
	.4byte	0xca
	.byte	0x64
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x4
	.2byte	0x2f7
	.4byte	0xcf
	.byte	0x68
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x4
	.2byte	0x2f8
	.4byte	0xca
	.byte	0x70
	.uleb128 0xa
	.ascii	"CSR\000"
	.byte	0x4
	.2byte	0x2f9
	.4byte	0xca
	.byte	0x74
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x4
	.2byte	0x2fa
	.4byte	0xcf
	.byte	0x78
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x4
	.2byte	0x2fb
	.4byte	0xca
	.byte	0x80
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x4
	.2byte	0x2fc
	.4byte	0xca
	.byte	0x84
	.byte	0
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x4
	.2byte	0x2fd
	.4byte	0x186
	.uleb128 0x8
	.byte	0x1c
	.byte	0x4
	.2byte	0x395
	.4byte	0x3df
	.uleb128 0xa
	.ascii	"SR\000"
	.byte	0x4
	.2byte	0x397
	.4byte	0xdf
	.byte	0
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x398
	.4byte	0xa2
	.byte	0x2
	.uleb128 0xa
	.ascii	"DR\000"
	.byte	0x4
	.2byte	0x399
	.4byte	0xdf
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x4
	.2byte	0x39a
	.4byte	0xa2
	.byte	0x6
	.uleb128 0xa
	.ascii	"BRR\000"
	.byte	0x4
	.2byte	0x39b
	.4byte	0xdf
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x4
	.2byte	0x39c
	.4byte	0xa2
	.byte	0xa
	.uleb128 0xa
	.ascii	"CR1\000"
	.byte	0x4
	.2byte	0x39d
	.4byte	0xdf
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x4
	.2byte	0x39e
	.4byte	0xa2
	.byte	0xe
	.uleb128 0xa
	.ascii	"CR2\000"
	.byte	0x4
	.2byte	0x39f
	.4byte	0xdf
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x4
	.2byte	0x3a0
	.4byte	0xa2
	.byte	0x12
	.uleb128 0xa
	.ascii	"CR3\000"
	.byte	0x4
	.2byte	0x3a1
	.4byte	0xdf
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x4
	.2byte	0x3a2
	.4byte	0xa2
	.byte	0x16
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x4
	.2byte	0x3a3
	.4byte	0xdf
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x4
	.2byte	0x3a4
	.4byte	0xa2
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x4
	.2byte	0x3a5
	.4byte	0x321
	.uleb128 0xc
	.4byte	.LASF65
	.byte	0x1
	.byte	0x16
	.byte	0x1
	.4byte	0x403
	.uleb128 0xd
	.4byte	.LASF61
	.byte	0x1
	.byte	0x16
	.4byte	0x97
	.byte	0
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0x1
	.byte	0x3
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x428
	.uleb128 0xf
	.4byte	.LASF58
	.byte	0x1
	.byte	0x3
	.4byte	0xb8
	.4byte	.LLST0
	.byte	0
	.uleb128 0x10
	.4byte	0x3eb
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x445
	.uleb128 0x11
	.4byte	0x3f7
	.4byte	.LLST1
	.byte	0
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x1
	.byte	0x1d
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4e5
	.uleb128 0x12
	.ascii	"str\000"
	.byte	0x1
	.byte	0x1d
	.4byte	0x4e5
	.4byte	.LLST2
	.uleb128 0x12
	.ascii	"num\000"
	.byte	0x1
	.byte	0x1d
	.4byte	0x4f2
	.4byte	.LLST3
	.uleb128 0x13
	.4byte	.LASF59
	.byte	0x1
	.byte	0x20
	.4byte	0x4f8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x14
	.ascii	"k\000"
	.byte	0x1
	.byte	0x21
	.4byte	0xa2
	.4byte	.LLST4
	.uleb128 0x15
	.4byte	0x3eb
	.4byte	.LBB6
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x27
	.4byte	0x4ad
	.uleb128 0x16
	.4byte	0x3f7
	.byte	0
	.uleb128 0x15
	.4byte	0x3eb
	.4byte	.LBB9
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x29
	.4byte	0x4c6
	.uleb128 0x16
	.4byte	0x3f7
	.byte	0
	.uleb128 0x17
	.4byte	.LVL5
	.4byte	0x575
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.4byte	0x4eb
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF60
	.uleb128 0x19
	.byte	0x4
	.4byte	0xb8
	.uleb128 0x6
	.4byte	0x97
	.4byte	0x508
	.uleb128 0x7
	.4byte	0xc3
	.byte	0xff
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF62
	.byte	0x1
	.byte	0x32
	.4byte	0x97
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x52f
	.uleb128 0x13
	.4byte	.LASF61
	.byte	0x1
	.byte	0x34
	.4byte	0x97
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF70
	.byte	0x1
	.byte	0x3e
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1a
	.4byte	.LASF63
	.byte	0x1
	.byte	0x43
	.4byte	0x97
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x569
	.uleb128 0x1c
	.4byte	.LASF64
	.byte	0x1
	.byte	0x45
	.4byte	0x97
	.4byte	.LLST5
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x51b
	.4byte	0xe4
	.uleb128 0x1e
	.4byte	.LASF66
	.byte	0x5
	.byte	0xa
	.4byte	0x590
	.uleb128 0x1f
	.4byte	0x590
	.uleb128 0x1f
	.4byte	0x4f2
	.uleb128 0x1f
	.4byte	0x590
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.4byte	0x97
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1-.Ltext0
	.4byte	.LFE110-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL3-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL5-1-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL5-1-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x7
	.byte	0x70
	.sleb128 0
	.byte	0x91
	.sleb128 -273
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x7
	.byte	0x70
	.sleb128 0
	.byte	0x91
	.sleb128 -273
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0xa
	.byte	0x70
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x30
	.byte	0x29
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB6-.Ltext0
	.4byte	.LBE6-.Ltext0
	.4byte	.LBB12-.Ltext0
	.4byte	.LBE12-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB9-.Ltext0
	.4byte	.LBE9-.Ltext0
	.4byte	.LBB13-.Ltext0
	.4byte	.LBE13-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF42:
	.ascii	"AHB1LPENR\000"
.LASF54:
	.ascii	"GTPR\000"
.LASF32:
	.ascii	"APB1RSTR\000"
.LASF36:
	.ascii	"AHB2ENR\000"
.LASF2:
	.ascii	"short int\000"
.LASF17:
	.ascii	"sizetype\000"
.LASF49:
	.ascii	"BDCR\000"
.LASF52:
	.ascii	"PLLI2SCFGR\000"
.LASF8:
	.ascii	"__uint32_t\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF51:
	.ascii	"SSCGR\000"
.LASF44:
	.ascii	"AHB3LPENR\000"
.LASF69:
	.ascii	"/home/tana/Desktop/MSUT Zavrsni projekat/audio\000"
.LASF67:
	.ascii	"GNU C 4.9.3 20141119 (release) [ARM/embedded-4_9-br"
	.ascii	"anch revision 218278] -mlittle-endian -mthumb -mcpu"
	.ascii	"=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mfpu"
	.ascii	"=fpv4-sp-d16 -g -O2 -fsingle-precision-constant\000"
.LASF41:
	.ascii	"RESERVED3\000"
.LASF13:
	.ascii	"uint8_t\000"
.LASF39:
	.ascii	"APB1ENR\000"
.LASF55:
	.ascii	"USART_TypeDef\000"
.LASF59:
	.ascii	"r_str\000"
.LASF19:
	.ascii	"OTYPER\000"
.LASF0:
	.ascii	"signed char\000"
.LASF37:
	.ascii	"AHB3ENR\000"
.LASF10:
	.ascii	"long long int\000"
.LASF21:
	.ascii	"PUPDR\000"
.LASF7:
	.ascii	"long int\000"
.LASF56:
	.ascii	"initUSART2\000"
.LASF53:
	.ascii	"RCC_TypeDef\000"
.LASF23:
	.ascii	"BSRRH\000"
.LASF18:
	.ascii	"MODER\000"
.LASF33:
	.ascii	"APB2RSTR\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF58:
	.ascii	"baudrate\000"
.LASF66:
	.ascii	"getASCIIString\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF63:
	.ascii	"getRxStateUSART2\000"
.LASF22:
	.ascii	"BSRRL\000"
.LASF70:
	.ascii	"enableRxUSART2\000"
.LASF40:
	.ascii	"APB2ENR\000"
.LASF68:
	.ascii	"usart.c\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF16:
	.ascii	"uint32_t\000"
.LASF12:
	.ascii	"unsigned int\000"
.LASF29:
	.ascii	"AHB2RSTR\000"
.LASF14:
	.ascii	"uint16_t\000"
.LASF62:
	.ascii	"getcharUSART2\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF28:
	.ascii	"AHB1RSTR\000"
.LASF27:
	.ascii	"CFGR\000"
.LASF26:
	.ascii	"PLLCFGR\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF46:
	.ascii	"APB1LPENR\000"
.LASF57:
	.ascii	"printUSART2\000"
.LASF60:
	.ascii	"char\000"
.LASF15:
	.ascii	"int32_t\000"
.LASF61:
	.ascii	"data\000"
.LASF43:
	.ascii	"AHB2LPENR\000"
.LASF31:
	.ascii	"RESERVED0\000"
.LASF34:
	.ascii	"RESERVED1\000"
.LASF38:
	.ascii	"RESERVED2\000"
.LASF20:
	.ascii	"OSPEEDR\000"
.LASF45:
	.ascii	"RESERVED4\000"
.LASF48:
	.ascii	"RESERVED5\000"
.LASF50:
	.ascii	"RESERVED6\000"
.LASF35:
	.ascii	"AHB1ENR\000"
.LASF64:
	.ascii	"r_val\000"
.LASF6:
	.ascii	"__int32_t\000"
.LASF25:
	.ascii	"GPIO_TypeDef\000"
.LASF30:
	.ascii	"AHB3RSTR\000"
.LASF65:
	.ascii	"putcharUSART2\000"
.LASF71:
	.ascii	"ITM_RxBuffer\000"
.LASF24:
	.ascii	"LCKR\000"
.LASF47:
	.ascii	"APB2LPENR\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.9.3 20141119 (release) [ARM/embedded-4_9-branch revision 218278]"
