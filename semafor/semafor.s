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
	.file	"semafor.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.comm	rgb,768,4
	.comm	rgb_buffer,9316,4
	.align	2
	.global	initialize
	.thumb
	.thumb_func
	.type	initialize, %function
initialize:
.LFB110:
	.file 1 "src/semafor.c"
	.loc 1 5 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #24
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 7 0
	mov	r3, #256
	str	r3, [r7, #12]
	.loc 1 8 0
	movs	r3, #10
	str	r3, [r7, #8]
	.loc 1 12 0
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L2
.L6:
.LBB2:
	.loc 1 14 0
	ldr	r3, [r7, #20]
	lsls	r3, r3, #8
	ldr	r2, .L9
	smull	r1, r2, r2, r3
	asrs	r2, r2, #5
	asrs	r3, r3, #31
	subs	r3, r2, r3
	strb	r3, [r7, #7]
	.loc 1 18 0
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #84
	bhi	.L3
	.loc 1 19 0
	ldrb	r3, [r7, #7]
	mov	r2, r3
	lsls	r2, r2, #1
	add	r3, r3, r2
	strb	r3, [r7, #19]
	.loc 1 20 0
	ldrb	r3, [r7, #7]
	mov	r2, r3
	lsls	r3, r3, #2
	subs	r3, r2, r3
	uxtb	r3, r3
	subs	r3, r3, #1
	strb	r3, [r7, #18]
	.loc 1 21 0
	movs	r3, #0
	strb	r3, [r7, #17]
	b	.L4
.L3:
	.loc 1 22 0
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #169
	bhi	.L5
	.loc 1 23 0
	ldrb	r3, [r7, #7]
	subs	r3, r3, #85
	strb	r3, [r7, #7]
	.loc 1 24 0
	ldrb	r3, [r7, #7]
	mov	r2, r3
	lsls	r3, r3, #2
	subs	r3, r2, r3
	uxtb	r3, r3
	subs	r3, r3, #1
	strb	r3, [r7, #19]
	.loc 1 25 0
	movs	r3, #0
	strb	r3, [r7, #18]
	.loc 1 26 0
	ldrb	r3, [r7, #7]
	mov	r2, r3
	lsls	r2, r2, #1
	add	r3, r3, r2
	strb	r3, [r7, #17]
	b	.L4
.L5:
	.loc 1 28 0
	ldrb	r3, [r7, #7]
	adds	r3, r3, #86
	strb	r3, [r7, #7]
	.loc 1 29 0
	movs	r3, #0
	strb	r3, [r7, #19]
	.loc 1 30 0
	ldrb	r3, [r7, #7]
	mov	r2, r3
	lsls	r2, r2, #1
	add	r3, r3, r2
	strb	r3, [r7, #18]
	.loc 1 31 0
	ldrb	r3, [r7, #7]
	mov	r2, r3
	lsls	r3, r3, #2
	subs	r3, r2, r3
	uxtb	r3, r3
	subs	r3, r3, #1
	strb	r3, [r7, #17]
.L4:
	.loc 1 35 0 discriminator 2
	ldr	r3, [r7, #20]
	uxth	r0, r3
	ldrb	r1, [r7, #19]	@ zero_extendqisi2
	ldrb	r2, [r7, #18]	@ zero_extendqisi2
	ldrb	r3, [r7, #17]	@ zero_extendqisi2
	bl	set_led
	.loc 1 39 0 discriminator 2
	bl	send_data
	.loc 1 42 0 discriminator 2
	ldr	r3, [r7, #8]
	mov	r0, r3
	bl	delay_ms
.LBE2:
	.loc 1 12 0 discriminator 2
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L2:
	.loc 1 12 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #20]
	cmp	r3, #191
	ble	.L6
	.loc 1 45 0 is_stmt 1
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L7
.L8:
	.loc 1 46 0 discriminator 3
	ldr	r3, [r7, #20]
	uxth	r3, r3
	mov	r0, r3
	bl	reset_led
	.loc 1 47 0 discriminator 3
	bl	send_data
	.loc 1 48 0 discriminator 3
	ldr	r3, [r7, #8]
	mov	r0, r3
	bl	delay_ms
	.loc 1 45 0 discriminator 3
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L7:
	.loc 1 45 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #20]
	cmp	r3, #191
	ble	.L8
	.loc 1 50 0 is_stmt 1
	adds	r7, r7, #24
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L10:
	.align	2
.L9:
	.word	715827883
	.cfi_endproc
.LFE110:
	.size	initialize, .-initialize
	.align	2
	.global	traffic_light_sequence
	.thumb
	.thumb_func
	.type	traffic_light_sequence, %function
traffic_light_sequence:
.LFB111:
	.loc 1 52 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	add	r7, sp, #8
	.cfi_def_cfa 7, 16
	.loc 1 53 0
	movs	r3, #0
	str	r3, [sp]
	movs	r0, #0
	movs	r1, #64
	movs	r2, #255
	movs	r3, #0
	bl	set_led_range
	.loc 1 54 0
	bl	send_data
	.loc 1 55 0
	movw	r0, #5000
	bl	delay_ms
	.loc 1 57 0
	movs	r3, #0
	str	r3, [sp]
	movs	r0, #64
	movs	r1, #128
	movs	r2, #128
	movs	r3, #60
	bl	set_led_range
	.loc 1 58 0
	bl	send_data
	.loc 1 59 0
	mov	r0, #2000
	bl	delay_ms
	.loc 1 61 0
	movs	r3, #0
	str	r3, [sp]
	movs	r0, #0
	movs	r1, #128
	movs	r2, #0
	movs	r3, #0
	bl	set_led_range
	.loc 1 62 0
	bl	send_data
	.loc 1 64 0
	movs	r3, #0
	str	r3, [sp]
	movs	r0, #128
	movs	r1, #192
	movs	r2, #0
	movs	r3, #255
	bl	set_led_range
	.loc 1 65 0
	bl	send_data
	.loc 1 66 0
	movw	r0, #7000
	bl	delay_ms
	.loc 1 68 0
	movs	r3, #0
	str	r3, [r7, #4]
	.loc 1 69 0
	movs	r3, #0
	str	r3, [r7, #4]
	b	.L12
.L13:
	.loc 1 70 0 discriminator 3
	movs	r3, #0
	str	r3, [sp]
	movs	r0, #128
	movs	r1, #192
	movs	r2, #0
	movs	r3, #255
	bl	set_led_range
	.loc 1 71 0 discriminator 3
	bl	send_data
	.loc 1 72 0 discriminator 3
	mov	r0, #500
	bl	delay_ms
	.loc 1 74 0 discriminator 3
	movs	r3, #0
	str	r3, [sp]
	movs	r0, #128
	movs	r1, #192
	movs	r2, #0
	movs	r3, #0
	bl	set_led_range
	.loc 1 75 0 discriminator 3
	bl	send_data
	.loc 1 76 0 discriminator 3
	mov	r0, #500
	bl	delay_ms
	.loc 1 69 0 discriminator 3
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
.L12:
	.loc 1 69 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	cmp	r3, #4
	ble	.L13
	.loc 1 79 0 is_stmt 1
	movs	r3, #0
	str	r3, [sp]
	movs	r0, #64
	movs	r1, #128
	movs	r2, #128
	movs	r3, #60
	bl	set_led_range
	.loc 1 80 0
	bl	send_data
	.loc 1 81 0
	mov	r0, #2000
	bl	delay_ms
	.loc 1 83 0
	movs	r3, #0
	str	r3, [sp]
	movs	r0, #64
	movs	r1, #128
	movs	r2, #0
	movs	r3, #0
	bl	set_led_range
	.loc 1 84 0
	bl	send_data
	.loc 1 85 0
	adds	r7, r7, #8
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE111:
	.size	traffic_light_sequence, .-traffic_light_sequence
.Letext0:
	.file 2 "/home/emir/msut/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/emir/msut/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/stdint.h"
	.file 4 "inc/ws2812b.h"
	.file 5 "/home/emir/msut/STM32F407/Libraries/CMSIS/Include/core_cm4.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x219
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0x1
	.4byte	.LASF30
	.4byte	.LASF31
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
	.4byte	0xad
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF18
	.uleb128 0x6
	.byte	0x3
	.byte	0x4
	.byte	0x16
	.4byte	0x103
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x4
	.byte	0x17
	.4byte	0x97
	.byte	0
	.uleb128 0x8
	.ascii	"red\000"
	.byte	0x4
	.byte	0x18
	.4byte	0x97
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x4
	.byte	0x19
	.4byte	0x97
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.ascii	"LED\000"
	.byte	0x4
	.byte	0x4
	.byte	0x15
	.4byte	0x126
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x4
	.byte	0x1a
	.4byte	0xd6
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x4
	.byte	0x1b
	.4byte	0xb8
	.byte	0
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x1
	.byte	0x5
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a6
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x1
	.byte	0x7
	.4byte	0x1a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x1
	.byte	0x8
	.4byte	0x1a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.ascii	"i\000"
	.byte	0x1
	.byte	0xb
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xe
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0xd
	.ascii	"hue\000"
	.byte	0x1
	.byte	0xe
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0xd
	.ascii	"red\000"
	.byte	0x1
	.byte	0x11
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0x1
	.byte	0x11
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0x1
	.byte	0x11
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -15
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	0x89
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x1
	.byte	0x34
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1cd
	.uleb128 0xd
	.ascii	"i\000"
	.byte	0x1
	.byte	0x44
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x10
	.4byte	.LASF27
	.byte	0x5
	.2byte	0x51b
	.4byte	0xca
	.uleb128 0x11
	.4byte	0x103
	.4byte	0x1e9
	.uleb128 0x12
	.4byte	0xc3
	.byte	0xbf
	.byte	0
	.uleb128 0x13
	.ascii	"rgb\000"
	.byte	0x4
	.byte	0x1e
	.4byte	0x1d9
	.uleb128 0x5
	.byte	0x3
	.4byte	rgb
	.uleb128 0x11
	.4byte	0xa2
	.4byte	0x20b
	.uleb128 0x14
	.4byte	0xc3
	.2byte	0x1231
	.byte	0
	.uleb128 0x15
	.4byte	.LASF28
	.byte	0x4
	.byte	0x20
	.4byte	0x1fa
	.uleb128 0x5
	.byte	0x3
	.4byte	rgb_buffer
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x15
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
.LASF3:
	.ascii	"__uint8_t\000"
.LASF28:
	.ascii	"rgb_buffer\000"
.LASF6:
	.ascii	"__int32_t\000"
.LASF25:
	.ascii	"initialize\000"
.LASF19:
	.ascii	"blue\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF23:
	.ascii	"num_steps\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF20:
	.ascii	"green\000"
.LASF27:
	.ascii	"ITM_RxBuffer\000"
.LASF31:
	.ascii	"/home/emir/git/ambulight/semafor\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF8:
	.ascii	"__uint32_t\000"
.LASF22:
	.ascii	"color\000"
.LASF12:
	.ascii	"unsigned int\000"
.LASF18:
	.ascii	"char\000"
.LASF13:
	.ascii	"uint8_t\000"
.LASF24:
	.ascii	"step_delay\000"
.LASF15:
	.ascii	"int32_t\000"
.LASF17:
	.ascii	"sizetype\000"
.LASF30:
	.ascii	"src/semafor.c\000"
.LASF10:
	.ascii	"long long int\000"
.LASF26:
	.ascii	"traffic_light_sequence\000"
.LASF2:
	.ascii	"short int\000"
.LASF14:
	.ascii	"uint16_t\000"
.LASF16:
	.ascii	"uint32_t\000"
.LASF7:
	.ascii	"long int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF29:
	.ascii	"GNU C 4.9.3 20141119 (release) [ARM/embedded-4_9-br"
	.ascii	"anch revision 218278] -mlittle-endian -mthumb -mcpu"
	.ascii	"=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mfpu"
	.ascii	"=fpv4-sp-d16 -g -O0 -fsingle-precision-constant\000"
.LASF21:
	.ascii	"colors\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.9.3 20141119 (release) [ARM/embedded-4_9-branch revision 218278]"
