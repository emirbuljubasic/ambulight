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
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.thumb
	.file	"main.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.thumb
	.thumb_func
	.type	NVIC_EnableIRQ, %function
NVIC_EnableIRQ:
.LFB95:
	.file 1 "/home/emir/msut/STM32F407/Libraries/CMSIS/Include/core_cm4.h"
	.loc 1 1073 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	mov	r3, r0
	strb	r3, [r7, #7]
	.loc 1 1075 0
	ldr	r1, .L2
	ldrsb	r3, [r7, #7]
	lsrs	r3, r3, #5
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	and	r2, r2, #31
	movs	r0, #1
	lsl	r2, r0, r2
	str	r2, [r1, r3, lsl #2]
	.loc 1 1076 0
	adds	r7, r7, #12
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
.L3:
	.align	2
.L2:
	.word	-536813312
	.cfi_endproc
.LFE95:
	.size	NVIC_EnableIRQ, .-NVIC_EnableIRQ
	.comm	rgb,768,4
	.comm	rgb_buffer,9316,4
	.global	state
	.data
	.type	state, %object
	.size	state, 1
state:
	.byte	1
	.section	.rodata
	.align	2
.LC0:
	.ascii	"\012wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww"
	.ascii	"wwwwww\012\000"
	.align	2
.LC1:
	.ascii	"w Starting test app...\000"
	.align	2
.LC2:
	.ascii	"main: state -> normal\012\000"
	.align	2
.LC3:
	.ascii	"main: state -> emergency\012\000"
	.text
	.align	2
	.global	main
	.thumb
	.thumb_func
	.type	main, %function
main:
.LFB110:
	.file 2 "src/main.c"
	.loc 2 11 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	add	r7, sp, #8
	.cfi_def_cfa 7, 8
	.loc 2 12 0
	mov	r0, #364
	bl	initUSART2
	.loc 2 13 0
	ldr	r0, .L8
	bl	printUSART2
	.loc 2 14 0
	ldr	r0, .L8+4
	bl	printUSART2
	.loc 2 15 0
	ldr	r0, .L8
	bl	printUSART2
	.loc 2 17 0
	bl	init_TIM4
	.loc 2 18 0
	bl	init_DMA1
	.loc 2 19 0
	bl	init_GPIOC
	.loc 2 21 0
	bl	initialize
.L7:
	.loc 2 24 0
	ldr	r3, .L8+8
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L5
	.loc 2 25 0
	ldr	r0, .L8+12
	bl	printUSART2
	.loc 2 26 0
	bl	traffic_light_sequence
	b	.L6
.L5:
	.loc 2 28 0
	ldr	r0, .L8+16
	bl	printUSART2
	.loc 2 29 0
	bl	reset_all
	.loc 2 30 0
	movs	r3, #0
	str	r3, [sp]
	movs	r0, #0
	movs	r1, #64
	movs	r2, #255
	movs	r3, #0
	bl	set_led_range
	.loc 2 31 0
	bl	send_data
.L6:
	.loc 2 33 0
	b	.L7
.L9:
	.align	2
.L8:
	.word	.LC0
	.word	.LC1
	.word	state
	.word	.LC2
	.word	.LC3
	.cfi_endproc
.LFE110:
	.size	main, .-main
	.section	.rodata
	.align	2
.LC4:
	.ascii	"isr: GPIOC->IDR [%x]\000"
	.align	2
.LC5:
	.ascii	"HIGH\012\000"
	.align	2
.LC6:
	.ascii	"LOW\012\000"
	.text
	.align	2
	.global	EXTI3_IRQHandler
	.thumb
	.thumb_func
	.type	EXTI3_IRQHandler, %function
EXTI3_IRQHandler:
.LFB111:
	.loc 2 36 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 2 38 0
	ldr	r3, .L14
	ldr	r3, [r3, #16]
	ldr	r0, .L14+4
	mov	r1, r3
	bl	printUSART2
	.loc 2 39 0
	ldr	r3, .L14+8
	ldr	r3, [r3, #20]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L10
	.loc 2 40 0
	ldr	r3, .L14
	ldr	r3, [r3, #16]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L12
	.loc 2 41 0
	ldr	r3, .L14+12
	movs	r2, #0
	strb	r2, [r3]
	.loc 2 45 0
	ldr	r0, .L14+16
	bl	printUSART2
	b	.L13
.L12:
	.loc 2 47 0
	ldr	r0, .L14+20
	bl	printUSART2
	.loc 2 48 0
	ldr	r3, .L14+12
	movs	r2, #1
	strb	r2, [r3]
.L13:
	.loc 2 50 0
	ldr	r2, .L14+8
	ldr	r3, .L14+8
	ldr	r3, [r3, #20]
	orr	r3, r3, #8
	str	r3, [r2, #20]
.L10:
	.loc 2 52 0
	pop	{r7, pc}
.L15:
	.align	2
.L14:
	.word	1073874944
	.word	.LC4
	.word	1073822720
	.word	state
	.word	.LC5
	.word	.LC6
	.cfi_endproc
.LFE111:
	.size	EXTI3_IRQHandler, .-EXTI3_IRQHandler
	.align	2
	.global	init_GPIOC
	.thumb
	.thumb_func
	.type	init_GPIOC, %function
init_GPIOC:
.LFB112:
	.loc 2 65 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 2 66 0
	ldr	r2, .L17
	ldr	r3, .L17
	ldr	r3, [r3, #48]
	orr	r3, r3, #4
	str	r3, [r2, #48]
	.loc 2 67 0
	ldr	r2, .L17+4
	ldr	r3, .L17+4
	ldr	r3, [r3]
	bic	r3, r3, #192
	str	r3, [r2]
	.loc 2 68 0
	ldr	r2, .L17+4
	ldr	r3, .L17+4
	ldr	r3, [r3, #12]
	bic	r3, r3, #192
	str	r3, [r2, #12]
	.loc 2 69 0
	ldr	r2, .L17+4
	ldr	r3, .L17+4
	ldr	r3, [r3, #12]
	orr	r3, r3, #128
	str	r3, [r2, #12]
	.loc 2 71 0
	ldr	r2, .L17
	ldr	r3, .L17
	ldr	r3, [r3, #68]
	orr	r3, r3, #16384
	str	r3, [r2, #68]
	.loc 2 72 0
	movs	r0, #9
	bl	NVIC_EnableIRQ
	.loc 2 74 0
	ldr	r3, .L17+8
	mov	r2, #8192
	str	r2, [r3, #8]
	.loc 2 75 0
	ldr	r3, .L17+12
	movs	r2, #8
	str	r2, [r3]
	.loc 2 76 0
	ldr	r2, .L17+12
	ldr	r3, .L17+12
	ldr	r3, [r3, #4]
	bic	r3, r3, #8
	str	r3, [r2, #4]
	.loc 2 77 0
	ldr	r3, .L17+12
	movs	r2, #8
	str	r2, [r3, #8]
	.loc 2 78 0
	ldr	r3, .L17+12
	movs	r2, #8
	str	r2, [r3, #12]
	.loc 2 79 0
	pop	{r7, pc}
.L18:
	.align	2
.L17:
	.word	1073887232
	.word	1073874944
	.word	1073821696
	.word	1073822720
	.cfi_endproc
.LFE112:
	.size	init_GPIOC, .-init_GPIOC
.Letext0:
	.file 3 "inc/stm32f4xx.h"
	.file 4 "/home/emir/msut/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 5 "/home/emir/msut/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/stdint.h"
	.file 6 "inc/ws2812b.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x893
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF174
	.byte	0x1
	.4byte	.LASF175
	.4byte	.LASF176
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF177
	.byte	0x1
	.byte	0x3
	.byte	0x91
	.4byte	0x260
	.uleb128 0x3
	.4byte	.LASF0
	.sleb128 -14
	.uleb128 0x3
	.4byte	.LASF1
	.sleb128 -12
	.uleb128 0x3
	.4byte	.LASF2
	.sleb128 -11
	.uleb128 0x3
	.4byte	.LASF3
	.sleb128 -10
	.uleb128 0x3
	.4byte	.LASF4
	.sleb128 -5
	.uleb128 0x3
	.4byte	.LASF5
	.sleb128 -4
	.uleb128 0x3
	.4byte	.LASF6
	.sleb128 -2
	.uleb128 0x3
	.4byte	.LASF7
	.sleb128 -1
	.uleb128 0x3
	.4byte	.LASF8
	.sleb128 0
	.uleb128 0x3
	.4byte	.LASF9
	.sleb128 1
	.uleb128 0x3
	.4byte	.LASF10
	.sleb128 2
	.uleb128 0x3
	.4byte	.LASF11
	.sleb128 3
	.uleb128 0x3
	.4byte	.LASF12
	.sleb128 4
	.uleb128 0x3
	.4byte	.LASF13
	.sleb128 5
	.uleb128 0x3
	.4byte	.LASF14
	.sleb128 6
	.uleb128 0x3
	.4byte	.LASF15
	.sleb128 7
	.uleb128 0x3
	.4byte	.LASF16
	.sleb128 8
	.uleb128 0x3
	.4byte	.LASF17
	.sleb128 9
	.uleb128 0x3
	.4byte	.LASF18
	.sleb128 10
	.uleb128 0x3
	.4byte	.LASF19
	.sleb128 11
	.uleb128 0x3
	.4byte	.LASF20
	.sleb128 12
	.uleb128 0x3
	.4byte	.LASF21
	.sleb128 13
	.uleb128 0x3
	.4byte	.LASF22
	.sleb128 14
	.uleb128 0x3
	.4byte	.LASF23
	.sleb128 15
	.uleb128 0x3
	.4byte	.LASF24
	.sleb128 16
	.uleb128 0x3
	.4byte	.LASF25
	.sleb128 17
	.uleb128 0x3
	.4byte	.LASF26
	.sleb128 18
	.uleb128 0x3
	.4byte	.LASF27
	.sleb128 19
	.uleb128 0x3
	.4byte	.LASF28
	.sleb128 20
	.uleb128 0x3
	.4byte	.LASF29
	.sleb128 21
	.uleb128 0x3
	.4byte	.LASF30
	.sleb128 22
	.uleb128 0x3
	.4byte	.LASF31
	.sleb128 23
	.uleb128 0x3
	.4byte	.LASF32
	.sleb128 24
	.uleb128 0x3
	.4byte	.LASF33
	.sleb128 25
	.uleb128 0x3
	.4byte	.LASF34
	.sleb128 26
	.uleb128 0x3
	.4byte	.LASF35
	.sleb128 27
	.uleb128 0x3
	.4byte	.LASF36
	.sleb128 28
	.uleb128 0x3
	.4byte	.LASF37
	.sleb128 29
	.uleb128 0x3
	.4byte	.LASF38
	.sleb128 30
	.uleb128 0x3
	.4byte	.LASF39
	.sleb128 31
	.uleb128 0x3
	.4byte	.LASF40
	.sleb128 32
	.uleb128 0x3
	.4byte	.LASF41
	.sleb128 33
	.uleb128 0x3
	.4byte	.LASF42
	.sleb128 34
	.uleb128 0x3
	.4byte	.LASF43
	.sleb128 35
	.uleb128 0x3
	.4byte	.LASF44
	.sleb128 36
	.uleb128 0x3
	.4byte	.LASF45
	.sleb128 37
	.uleb128 0x3
	.4byte	.LASF46
	.sleb128 38
	.uleb128 0x3
	.4byte	.LASF47
	.sleb128 39
	.uleb128 0x3
	.4byte	.LASF48
	.sleb128 40
	.uleb128 0x3
	.4byte	.LASF49
	.sleb128 41
	.uleb128 0x3
	.4byte	.LASF50
	.sleb128 42
	.uleb128 0x3
	.4byte	.LASF51
	.sleb128 43
	.uleb128 0x3
	.4byte	.LASF52
	.sleb128 44
	.uleb128 0x3
	.4byte	.LASF53
	.sleb128 45
	.uleb128 0x3
	.4byte	.LASF54
	.sleb128 46
	.uleb128 0x3
	.4byte	.LASF55
	.sleb128 47
	.uleb128 0x3
	.4byte	.LASF56
	.sleb128 48
	.uleb128 0x3
	.4byte	.LASF57
	.sleb128 49
	.uleb128 0x3
	.4byte	.LASF58
	.sleb128 50
	.uleb128 0x3
	.4byte	.LASF59
	.sleb128 51
	.uleb128 0x3
	.4byte	.LASF60
	.sleb128 52
	.uleb128 0x3
	.4byte	.LASF61
	.sleb128 53
	.uleb128 0x3
	.4byte	.LASF62
	.sleb128 54
	.uleb128 0x3
	.4byte	.LASF63
	.sleb128 55
	.uleb128 0x3
	.4byte	.LASF64
	.sleb128 56
	.uleb128 0x3
	.4byte	.LASF65
	.sleb128 57
	.uleb128 0x3
	.4byte	.LASF66
	.sleb128 58
	.uleb128 0x3
	.4byte	.LASF67
	.sleb128 59
	.uleb128 0x3
	.4byte	.LASF68
	.sleb128 60
	.uleb128 0x3
	.4byte	.LASF69
	.sleb128 61
	.uleb128 0x3
	.4byte	.LASF70
	.sleb128 62
	.uleb128 0x3
	.4byte	.LASF71
	.sleb128 63
	.uleb128 0x3
	.4byte	.LASF72
	.sleb128 64
	.uleb128 0x3
	.4byte	.LASF73
	.sleb128 65
	.uleb128 0x3
	.4byte	.LASF74
	.sleb128 66
	.uleb128 0x3
	.4byte	.LASF75
	.sleb128 67
	.uleb128 0x3
	.4byte	.LASF76
	.sleb128 68
	.uleb128 0x3
	.4byte	.LASF77
	.sleb128 69
	.uleb128 0x3
	.4byte	.LASF78
	.sleb128 70
	.uleb128 0x3
	.4byte	.LASF79
	.sleb128 71
	.uleb128 0x3
	.4byte	.LASF80
	.sleb128 72
	.uleb128 0x3
	.4byte	.LASF81
	.sleb128 73
	.uleb128 0x3
	.4byte	.LASF82
	.sleb128 74
	.uleb128 0x3
	.4byte	.LASF83
	.sleb128 75
	.uleb128 0x3
	.4byte	.LASF84
	.sleb128 76
	.uleb128 0x3
	.4byte	.LASF85
	.sleb128 77
	.uleb128 0x3
	.4byte	.LASF86
	.sleb128 78
	.uleb128 0x3
	.4byte	.LASF87
	.sleb128 79
	.uleb128 0x3
	.4byte	.LASF88
	.sleb128 80
	.uleb128 0x3
	.4byte	.LASF89
	.sleb128 81
	.byte	0
	.uleb128 0x4
	.4byte	.LASF90
	.byte	0x3
	.byte	0xef
	.4byte	0x25
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.4byte	.LASF92
	.uleb128 0x4
	.4byte	.LASF91
	.byte	0x4
	.byte	0x1d
	.4byte	0x27d
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF93
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.4byte	.LASF94
	.uleb128 0x4
	.4byte	.LASF95
	.byte	0x4
	.byte	0x2b
	.4byte	0x296
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.4byte	.LASF96
	.uleb128 0x4
	.4byte	.LASF97
	.byte	0x4
	.byte	0x3f
	.4byte	0x2a8
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.4byte	.LASF98
	.uleb128 0x4
	.4byte	.LASF99
	.byte	0x4
	.byte	0x41
	.4byte	0x2ba
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF100
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.4byte	.LASF101
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.4byte	.LASF102
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF103
	.uleb128 0x4
	.4byte	.LASF104
	.byte	0x5
	.byte	0x15
	.4byte	0x272
	.uleb128 0x4
	.4byte	.LASF105
	.byte	0x5
	.byte	0x21
	.4byte	0x28b
	.uleb128 0x4
	.4byte	.LASF106
	.byte	0x5
	.byte	0x2c
	.4byte	0x29d
	.uleb128 0x4
	.4byte	.LASF107
	.byte	0x5
	.byte	0x2d
	.4byte	0x2af
	.uleb128 0x7
	.2byte	0xe04
	.byte	0x1
	.2byte	0x130
	.4byte	0x3c5
	.uleb128 0x8
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x132
	.4byte	0x3dc
	.byte	0
	.uleb128 0x8
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x133
	.4byte	0x3e1
	.byte	0x20
	.uleb128 0x8
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x134
	.4byte	0x3f1
	.byte	0x80
	.uleb128 0x8
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x135
	.4byte	0x3e1
	.byte	0xa0
	.uleb128 0x9
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x136
	.4byte	0x3f6
	.2byte	0x100
	.uleb128 0x9
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x137
	.4byte	0x3e1
	.2byte	0x120
	.uleb128 0x9
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x138
	.4byte	0x3fb
	.2byte	0x180
	.uleb128 0x9
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x139
	.4byte	0x3e1
	.2byte	0x1a0
	.uleb128 0x9
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x13a
	.4byte	0x400
	.2byte	0x200
	.uleb128 0x9
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x13b
	.4byte	0x405
	.2byte	0x220
	.uleb128 0xa
	.ascii	"IP\000"
	.byte	0x1
	.2byte	0x13c
	.4byte	0x425
	.2byte	0x300
	.uleb128 0x9
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x13d
	.4byte	0x42a
	.2byte	0x3f0
	.uleb128 0x9
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x13e
	.4byte	0x43b
	.2byte	0xe00
	.byte	0
	.uleb128 0xb
	.4byte	0x2fe
	.4byte	0x3d5
	.uleb128 0xc
	.4byte	0x3d5
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF120
	.uleb128 0xd
	.4byte	0x3c5
	.uleb128 0xb
	.4byte	0x2fe
	.4byte	0x3f1
	.uleb128 0xc
	.4byte	0x3d5
	.byte	0x17
	.byte	0
	.uleb128 0xd
	.4byte	0x3c5
	.uleb128 0xd
	.4byte	0x3c5
	.uleb128 0xd
	.4byte	0x3c5
	.uleb128 0xd
	.4byte	0x3c5
	.uleb128 0xb
	.4byte	0x2fe
	.4byte	0x415
	.uleb128 0xc
	.4byte	0x3d5
	.byte	0x37
	.byte	0
	.uleb128 0xb
	.4byte	0x2dd
	.4byte	0x425
	.uleb128 0xc
	.4byte	0x3d5
	.byte	0xef
	.byte	0
	.uleb128 0xd
	.4byte	0x415
	.uleb128 0xb
	.4byte	0x2fe
	.4byte	0x43b
	.uleb128 0xe
	.4byte	0x3d5
	.2byte	0x283
	.byte	0
	.uleb128 0xd
	.4byte	0x2fe
	.uleb128 0xf
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x13f
	.4byte	0x309
	.uleb128 0xb
	.4byte	0x2fe
	.4byte	0x45c
	.uleb128 0xc
	.4byte	0x3d5
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.4byte	0x2fe
	.4byte	0x46c
	.uleb128 0xc
	.4byte	0x3d5
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.4byte	0x2e8
	.uleb128 0xd
	.4byte	0x2f3
	.uleb128 0x10
	.byte	0x18
	.byte	0x3
	.2byte	0x237
	.4byte	0x4cd
	.uleb128 0x11
	.ascii	"IMR\000"
	.byte	0x3
	.2byte	0x239
	.4byte	0x43b
	.byte	0
	.uleb128 0x11
	.ascii	"EMR\000"
	.byte	0x3
	.2byte	0x23a
	.4byte	0x43b
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF122
	.byte	0x3
	.2byte	0x23b
	.4byte	0x43b
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF123
	.byte	0x3
	.2byte	0x23c
	.4byte	0x43b
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF124
	.byte	0x3
	.2byte	0x23d
	.4byte	0x43b
	.byte	0x10
	.uleb128 0x11
	.ascii	"PR\000"
	.byte	0x3
	.2byte	0x23e
	.4byte	0x43b
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.4byte	.LASF125
	.byte	0x3
	.2byte	0x23f
	.4byte	0x476
	.uleb128 0x10
	.byte	0x28
	.byte	0x3
	.2byte	0x28e
	.4byte	0x565
	.uleb128 0x8
	.4byte	.LASF126
	.byte	0x3
	.2byte	0x290
	.4byte	0x43b
	.byte	0
	.uleb128 0x8
	.4byte	.LASF127
	.byte	0x3
	.2byte	0x291
	.4byte	0x43b
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF128
	.byte	0x3
	.2byte	0x292
	.4byte	0x43b
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF129
	.byte	0x3
	.2byte	0x293
	.4byte	0x43b
	.byte	0xc
	.uleb128 0x11
	.ascii	"IDR\000"
	.byte	0x3
	.2byte	0x294
	.4byte	0x43b
	.byte	0x10
	.uleb128 0x11
	.ascii	"ODR\000"
	.byte	0x3
	.2byte	0x295
	.4byte	0x43b
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF130
	.byte	0x3
	.2byte	0x296
	.4byte	0x46c
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF131
	.byte	0x3
	.2byte	0x297
	.4byte	0x46c
	.byte	0x1a
	.uleb128 0x8
	.4byte	.LASF132
	.byte	0x3
	.2byte	0x298
	.4byte	0x43b
	.byte	0x1c
	.uleb128 0x11
	.ascii	"AFR\000"
	.byte	0x3
	.2byte	0x299
	.4byte	0x565
	.byte	0x20
	.byte	0
	.uleb128 0xd
	.4byte	0x44c
	.uleb128 0xf
	.4byte	.LASF133
	.byte	0x3
	.2byte	0x29a
	.4byte	0x4d9
	.uleb128 0x10
	.byte	0x24
	.byte	0x3
	.2byte	0x2a0
	.4byte	0x5c1
	.uleb128 0x8
	.4byte	.LASF134
	.byte	0x3
	.2byte	0x2a2
	.4byte	0x43b
	.byte	0
	.uleb128 0x11
	.ascii	"PMC\000"
	.byte	0x3
	.2byte	0x2a3
	.4byte	0x43b
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF135
	.byte	0x3
	.2byte	0x2a4
	.4byte	0x5c1
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF136
	.byte	0x3
	.2byte	0x2a5
	.4byte	0x44c
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF137
	.byte	0x3
	.2byte	0x2a6
	.4byte	0x43b
	.byte	0x20
	.byte	0
	.uleb128 0xd
	.4byte	0x45c
	.uleb128 0xf
	.4byte	.LASF138
	.byte	0x3
	.2byte	0x2a7
	.4byte	0x576
	.uleb128 0x10
	.byte	0x88
	.byte	0x3
	.2byte	0x2dd
	.4byte	0x761
	.uleb128 0x11
	.ascii	"CR\000"
	.byte	0x3
	.2byte	0x2df
	.4byte	0x43b
	.byte	0
	.uleb128 0x8
	.4byte	.LASF139
	.byte	0x3
	.2byte	0x2e0
	.4byte	0x43b
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF140
	.byte	0x3
	.2byte	0x2e1
	.4byte	0x43b
	.byte	0x8
	.uleb128 0x11
	.ascii	"CIR\000"
	.byte	0x3
	.2byte	0x2e2
	.4byte	0x43b
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF141
	.byte	0x3
	.2byte	0x2e3
	.4byte	0x43b
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF142
	.byte	0x3
	.2byte	0x2e4
	.4byte	0x43b
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF143
	.byte	0x3
	.2byte	0x2e5
	.4byte	0x43b
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF109
	.byte	0x3
	.2byte	0x2e6
	.4byte	0x2fe
	.byte	0x1c
	.uleb128 0x8
	.4byte	.LASF144
	.byte	0x3
	.2byte	0x2e7
	.4byte	0x43b
	.byte	0x20
	.uleb128 0x8
	.4byte	.LASF145
	.byte	0x3
	.2byte	0x2e8
	.4byte	0x43b
	.byte	0x24
	.uleb128 0x8
	.4byte	.LASF146
	.byte	0x3
	.2byte	0x2e9
	.4byte	0x44c
	.byte	0x28
	.uleb128 0x8
	.4byte	.LASF147
	.byte	0x3
	.2byte	0x2ea
	.4byte	0x43b
	.byte	0x30
	.uleb128 0x8
	.4byte	.LASF148
	.byte	0x3
	.2byte	0x2eb
	.4byte	0x43b
	.byte	0x34
	.uleb128 0x8
	.4byte	.LASF149
	.byte	0x3
	.2byte	0x2ec
	.4byte	0x43b
	.byte	0x38
	.uleb128 0x8
	.4byte	.LASF113
	.byte	0x3
	.2byte	0x2ed
	.4byte	0x2fe
	.byte	0x3c
	.uleb128 0x8
	.4byte	.LASF150
	.byte	0x3
	.2byte	0x2ee
	.4byte	0x43b
	.byte	0x40
	.uleb128 0x8
	.4byte	.LASF151
	.byte	0x3
	.2byte	0x2ef
	.4byte	0x43b
	.byte	0x44
	.uleb128 0x8
	.4byte	.LASF115
	.byte	0x3
	.2byte	0x2f0
	.4byte	0x44c
	.byte	0x48
	.uleb128 0x8
	.4byte	.LASF152
	.byte	0x3
	.2byte	0x2f1
	.4byte	0x43b
	.byte	0x50
	.uleb128 0x8
	.4byte	.LASF153
	.byte	0x3
	.2byte	0x2f2
	.4byte	0x43b
	.byte	0x54
	.uleb128 0x8
	.4byte	.LASF154
	.byte	0x3
	.2byte	0x2f3
	.4byte	0x43b
	.byte	0x58
	.uleb128 0x8
	.4byte	.LASF117
	.byte	0x3
	.2byte	0x2f4
	.4byte	0x2fe
	.byte	0x5c
	.uleb128 0x8
	.4byte	.LASF155
	.byte	0x3
	.2byte	0x2f5
	.4byte	0x43b
	.byte	0x60
	.uleb128 0x8
	.4byte	.LASF156
	.byte	0x3
	.2byte	0x2f6
	.4byte	0x43b
	.byte	0x64
	.uleb128 0x8
	.4byte	.LASF118
	.byte	0x3
	.2byte	0x2f7
	.4byte	0x44c
	.byte	0x68
	.uleb128 0x8
	.4byte	.LASF157
	.byte	0x3
	.2byte	0x2f8
	.4byte	0x43b
	.byte	0x70
	.uleb128 0x11
	.ascii	"CSR\000"
	.byte	0x3
	.2byte	0x2f9
	.4byte	0x43b
	.byte	0x74
	.uleb128 0x8
	.4byte	.LASF158
	.byte	0x3
	.2byte	0x2fa
	.4byte	0x44c
	.byte	0x78
	.uleb128 0x8
	.4byte	.LASF159
	.byte	0x3
	.2byte	0x2fb
	.4byte	0x43b
	.byte	0x80
	.uleb128 0x8
	.4byte	.LASF160
	.byte	0x3
	.2byte	0x2fc
	.4byte	0x43b
	.byte	0x84
	.byte	0
	.uleb128 0xf
	.4byte	.LASF161
	.byte	0x3
	.2byte	0x2fd
	.4byte	0x5d2
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF162
	.uleb128 0x12
	.byte	0x3
	.byte	0x6
	.byte	0x16
	.4byte	0x7a1
	.uleb128 0x13
	.4byte	.LASF163
	.byte	0x6
	.byte	0x17
	.4byte	0x2dd
	.byte	0
	.uleb128 0x14
	.ascii	"red\000"
	.byte	0x6
	.byte	0x18
	.4byte	0x2dd
	.byte	0x1
	.uleb128 0x13
	.4byte	.LASF164
	.byte	0x6
	.byte	0x19
	.4byte	0x2dd
	.byte	0x2
	.byte	0
	.uleb128 0x15
	.ascii	"LED\000"
	.byte	0x4
	.byte	0x6
	.byte	0x15
	.4byte	0x7c4
	.uleb128 0x16
	.4byte	.LASF165
	.byte	0x6
	.byte	0x1a
	.4byte	0x774
	.uleb128 0x16
	.4byte	.LASF166
	.byte	0x6
	.byte	0x1b
	.4byte	0x2fe
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.byte	0x2
	.byte	0x7
	.4byte	0x7d9
	.uleb128 0x3
	.4byte	.LASF167
	.sleb128 0
	.uleb128 0x3
	.4byte	.LASF168
	.sleb128 1
	.byte	0
	.uleb128 0x18
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x430
	.4byte	.LFB95
	.4byte	.LFE95-.LFB95
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7ff
	.uleb128 0x19
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x430
	.4byte	0x260
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF179
	.byte	0x2
	.byte	0xb
	.4byte	0x2cf
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1b
	.4byte	.LASF169
	.byte	0x2
	.byte	0x24
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1b
	.4byte	.LASF170
	.byte	0x2
	.byte	0x41
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1c
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x51b
	.4byte	0x471
	.uleb128 0xb
	.4byte	0x7a1
	.4byte	0x852
	.uleb128 0xc
	.4byte	0x3d5
	.byte	0xbf
	.byte	0
	.uleb128 0x1d
	.ascii	"rgb\000"
	.byte	0x6
	.byte	0x1e
	.4byte	0x842
	.uleb128 0x5
	.byte	0x3
	.4byte	rgb
	.uleb128 0xb
	.4byte	0x2e8
	.4byte	0x874
	.uleb128 0xe
	.4byte	0x3d5
	.2byte	0x1231
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF172
	.byte	0x6
	.byte	0x20
	.4byte	0x863
	.uleb128 0x5
	.byte	0x3
	.4byte	rgb_buffer
	.uleb128 0x1e
	.4byte	.LASF173
	.byte	0x2
	.byte	0x7
	.4byte	0x7c4
	.uleb128 0x5
	.byte	0x3
	.4byte	state
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
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x5
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xd
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
	.uleb128 0x17
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
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
	.uleb128 0x2116
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.byte	0
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
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF114:
	.ascii	"ICPR\000"
.LASF129:
	.ascii	"PUPDR\000"
.LASF132:
	.ascii	"LCKR\000"
.LASF28:
	.ascii	"CAN1_RX0_IRQn\000"
.LASF9:
	.ascii	"PVD_IRQn\000"
.LASF72:
	.ascii	"CAN2_RX0_IRQn\000"
.LASF175:
	.ascii	"src/main.c\000"
.LASF31:
	.ascii	"EXTI9_5_IRQn\000"
.LASF81:
	.ascii	"I2C3_ER_IRQn\000"
.LASF39:
	.ascii	"I2C1_EV_IRQn\000"
.LASF91:
	.ascii	"__uint8_t\000"
.LASF127:
	.ascii	"OTYPER\000"
.LASF76:
	.ascii	"DMA2_Stream5_IRQn\000"
.LASF124:
	.ascii	"SWIER\000"
.LASF134:
	.ascii	"MEMRMP\000"
.LASF126:
	.ascii	"MODER\000"
.LASF102:
	.ascii	"long long unsigned int\000"
.LASF49:
	.ascii	"RTC_Alarm_IRQn\000"
.LASF42:
	.ascii	"I2C2_ER_IRQn\000"
.LASF38:
	.ascii	"TIM4_IRQn\000"
.LASF11:
	.ascii	"RTC_WKUP_IRQn\000"
.LASF8:
	.ascii	"WWDG_IRQn\000"
.LASF57:
	.ascii	"SDIO_IRQn\000"
.LASF152:
	.ascii	"AHB1LPENR\000"
.LASF45:
	.ascii	"USART1_IRQn\000"
.LASF101:
	.ascii	"long long int\000"
.LASF92:
	.ascii	"signed char\000"
.LASF73:
	.ascii	"CAN2_RX1_IRQn\000"
.LASF141:
	.ascii	"AHB1RSTR\000"
.LASF112:
	.ascii	"ISPR\000"
.LASF169:
	.ascii	"EXTI3_IRQHandler\000"
.LASF77:
	.ascii	"DMA2_Stream6_IRQn\000"
.LASF173:
	.ascii	"state\000"
.LASF98:
	.ascii	"long int\000"
.LASF145:
	.ascii	"APB2RSTR\000"
.LASF155:
	.ascii	"APB1LPENR\000"
.LASF24:
	.ascii	"DMA1_Stream5_IRQn\000"
.LASF70:
	.ascii	"ETH_WKUP_IRQn\000"
.LASF105:
	.ascii	"uint16_t\000"
.LASF62:
	.ascii	"TIM6_DAC_IRQn\000"
.LASF139:
	.ascii	"PLLCFGR\000"
.LASF60:
	.ascii	"UART4_IRQn\000"
.LASF50:
	.ascii	"OTG_FS_WKUP_IRQn\000"
.LASF6:
	.ascii	"PendSV_IRQn\000"
.LASF52:
	.ascii	"TIM8_UP_TIM13_IRQn\000"
.LASF128:
	.ascii	"OSPEEDR\000"
.LASF99:
	.ascii	"__uint32_t\000"
.LASF2:
	.ascii	"BusFault_IRQn\000"
.LASF78:
	.ascii	"DMA2_Stream7_IRQn\000"
.LASF86:
	.ascii	"DCMI_IRQn\000"
.LASF103:
	.ascii	"unsigned int\000"
.LASF22:
	.ascii	"DMA1_Stream3_IRQn\000"
.LASF25:
	.ascii	"DMA1_Stream6_IRQn\000"
.LASF176:
	.ascii	"/home/emir/git/ambulight/semafor\000"
.LASF122:
	.ascii	"RTSR\000"
.LASF1:
	.ascii	"MemoryManagement_IRQn\000"
.LASF80:
	.ascii	"I2C3_EV_IRQn\000"
.LASF100:
	.ascii	"long unsigned int\000"
.LASF133:
	.ascii	"GPIO_TypeDef\000"
.LASF161:
	.ascii	"RCC_TypeDef\000"
.LASF82:
	.ascii	"OTG_HS_EP1_OUT_IRQn\000"
.LASF4:
	.ascii	"SVCall_IRQn\000"
.LASF96:
	.ascii	"short unsigned int\000"
.LASF66:
	.ascii	"DMA2_Stream2_IRQn\000"
.LASF160:
	.ascii	"PLLI2SCFGR\000"
.LASF27:
	.ascii	"CAN1_TX_IRQn\000"
.LASF143:
	.ascii	"AHB3RSTR\000"
.LASF164:
	.ascii	"green\000"
.LASF48:
	.ascii	"EXTI15_10_IRQn\000"
.LASF43:
	.ascii	"SPI1_IRQn\000"
.LASF20:
	.ascii	"DMA1_Stream1_IRQn\000"
.LASF148:
	.ascii	"AHB2ENR\000"
.LASF156:
	.ascii	"APB2LPENR\000"
.LASF51:
	.ascii	"TIM8_BRK_TIM12_IRQn\000"
.LASF7:
	.ascii	"SysTick_IRQn\000"
.LASF35:
	.ascii	"TIM1_CC_IRQn\000"
.LASF53:
	.ascii	"TIM8_TRG_COM_TIM14_IRQn\000"
.LASF170:
	.ascii	"init_GPIOC\000"
.LASF177:
	.ascii	"IRQn\000"
.LASF120:
	.ascii	"sizetype\000"
.LASF69:
	.ascii	"ETH_IRQn\000"
.LASF33:
	.ascii	"TIM1_UP_TIM10_IRQn\000"
.LASF67:
	.ascii	"DMA2_Stream3_IRQn\000"
.LASF41:
	.ascii	"I2C2_EV_IRQn\000"
.LASF23:
	.ascii	"DMA1_Stream4_IRQn\000"
.LASF116:
	.ascii	"IABR\000"
.LASF79:
	.ascii	"USART6_IRQn\000"
.LASF58:
	.ascii	"TIM5_IRQn\000"
.LASF17:
	.ascii	"EXTI3_IRQn\000"
.LASF44:
	.ascii	"SPI2_IRQn\000"
.LASF21:
	.ascii	"DMA1_Stream2_IRQn\000"
.LASF71:
	.ascii	"CAN2_TX_IRQn\000"
.LASF153:
	.ascii	"AHB2LPENR\000"
.LASF110:
	.ascii	"ICER\000"
.LASF174:
	.ascii	"GNU C 4.9.3 20141119 (release) [ARM/embedded-4_9-br"
	.ascii	"anch revision 218278] -mlittle-endian -mthumb -mcpu"
	.ascii	"=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mfpu"
	.ascii	"=fpv4-sp-d16 -g -O0 -fsingle-precision-constant\000"
.LASF165:
	.ascii	"colors\000"
.LASF168:
	.ascii	"normal\000"
.LASF137:
	.ascii	"CMPCR\000"
.LASF138:
	.ascii	"SYSCFG_TypeDef\000"
.LASF109:
	.ascii	"RESERVED0\000"
.LASF146:
	.ascii	"RESERVED1\000"
.LASF113:
	.ascii	"RESERVED2\000"
.LASF115:
	.ascii	"RESERVED3\000"
.LASF117:
	.ascii	"RESERVED4\000"
.LASF118:
	.ascii	"RESERVED5\000"
.LASF158:
	.ascii	"RESERVED6\000"
.LASF59:
	.ascii	"SPI3_IRQn\000"
.LASF68:
	.ascii	"DMA2_Stream4_IRQn\000"
.LASF56:
	.ascii	"FSMC_IRQn\000"
.LASF106:
	.ascii	"int32_t\000"
.LASF93:
	.ascii	"unsigned char\000"
.LASF32:
	.ascii	"TIM1_BRK_TIM9_IRQn\000"
.LASF171:
	.ascii	"ITM_RxBuffer\000"
.LASF123:
	.ascii	"FTSR\000"
.LASF18:
	.ascii	"EXTI4_IRQn\000"
.LASF88:
	.ascii	"HASH_RNG_IRQn\000"
.LASF94:
	.ascii	"short int\000"
.LASF108:
	.ascii	"ISER\000"
.LASF121:
	.ascii	"NVIC_Type\000"
.LASF172:
	.ascii	"rgb_buffer\000"
.LASF154:
	.ascii	"AHB3LPENR\000"
.LASF61:
	.ascii	"UART5_IRQn\000"
.LASF34:
	.ascii	"TIM1_TRG_COM_TIM11_IRQn\000"
.LASF178:
	.ascii	"NVIC_EnableIRQ\000"
.LASF16:
	.ascii	"EXTI2_IRQn\000"
.LASF151:
	.ascii	"APB2ENR\000"
.LASF149:
	.ascii	"AHB3ENR\000"
.LASF12:
	.ascii	"FLASH_IRQn\000"
.LASF90:
	.ascii	"IRQn_Type\000"
.LASF75:
	.ascii	"OTG_FS_IRQn\000"
.LASF107:
	.ascii	"uint32_t\000"
.LASF46:
	.ascii	"USART2_IRQn\000"
.LASF3:
	.ascii	"UsageFault_IRQn\000"
.LASF55:
	.ascii	"DMA1_Stream7_IRQn\000"
.LASF163:
	.ascii	"blue\000"
.LASF166:
	.ascii	"color\000"
.LASF162:
	.ascii	"char\000"
.LASF87:
	.ascii	"CRYP_IRQn\000"
.LASF54:
	.ascii	"TIM8_CC_IRQn\000"
.LASF95:
	.ascii	"__uint16_t\000"
.LASF142:
	.ascii	"AHB2RSTR\000"
.LASF63:
	.ascii	"TIM7_IRQn\000"
.LASF83:
	.ascii	"OTG_HS_EP1_IN_IRQn\000"
.LASF136:
	.ascii	"RESERVED\000"
.LASF0:
	.ascii	"NonMaskableInt_IRQn\000"
.LASF97:
	.ascii	"__int32_t\000"
.LASF167:
	.ascii	"emergency\000"
.LASF150:
	.ascii	"APB1ENR\000"
.LASF40:
	.ascii	"I2C1_ER_IRQn\000"
.LASF10:
	.ascii	"TAMP_STAMP_IRQn\000"
.LASF5:
	.ascii	"DebugMonitor_IRQn\000"
.LASF64:
	.ascii	"DMA2_Stream0_IRQn\000"
.LASF47:
	.ascii	"USART3_IRQn\000"
.LASF159:
	.ascii	"SSCGR\000"
.LASF36:
	.ascii	"TIM2_IRQn\000"
.LASF144:
	.ascii	"APB1RSTR\000"
.LASF14:
	.ascii	"EXTI0_IRQn\000"
.LASF130:
	.ascii	"BSRRL\000"
.LASF85:
	.ascii	"OTG_HS_IRQn\000"
.LASF157:
	.ascii	"BDCR\000"
.LASF131:
	.ascii	"BSRRH\000"
.LASF104:
	.ascii	"uint8_t\000"
.LASF111:
	.ascii	"RSERVED1\000"
.LASF119:
	.ascii	"STIR\000"
.LASF147:
	.ascii	"AHB1ENR\000"
.LASF89:
	.ascii	"FPU_IRQn\000"
.LASF140:
	.ascii	"CFGR\000"
.LASF125:
	.ascii	"EXTI_TypeDef\000"
.LASF26:
	.ascii	"ADC_IRQn\000"
.LASF65:
	.ascii	"DMA2_Stream1_IRQn\000"
.LASF179:
	.ascii	"main\000"
.LASF29:
	.ascii	"CAN1_RX1_IRQn\000"
.LASF30:
	.ascii	"CAN1_SCE_IRQn\000"
.LASF74:
	.ascii	"CAN2_SCE_IRQn\000"
.LASF13:
	.ascii	"RCC_IRQn\000"
.LASF84:
	.ascii	"OTG_HS_WKUP_IRQn\000"
.LASF37:
	.ascii	"TIM3_IRQn\000"
.LASF135:
	.ascii	"EXTICR\000"
.LASF15:
	.ascii	"EXTI1_IRQn\000"
.LASF19:
	.ascii	"DMA1_Stream0_IRQn\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.9.3 20141119 (release) [ARM/embedded-4_9-branch revision 218278]"
