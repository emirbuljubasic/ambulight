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
	.global	init_TIM4
	.thumb
	.thumb_func
	.type	init_TIM4, %function
init_TIM4:
.LFB111:
	.file 1 "main.c"
	.loc 1 75 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 79 0
	ldr	r0, .L3
	.loc 1 80 0
	ldr	r2, .L3+4
	.loc 1 79 0
	ldr	r1, [r0, #48]
	.loc 1 85 0
	ldr	r3, .L3+8
	.loc 1 79 0
	orr	r1, r1, #8
	.loc 1 75 0
	push	{r4}
	.cfi_def_cfa_offset 4
	.cfi_offset 4, -4
	.loc 1 79 0
	str	r1, [r0, #48]
	.loc 1 80 0
	ldr	r1, [r2]
	orr	r1, r1, #-1442840576
	str	r1, [r2]
	.loc 1 81 0
	ldr	r1, [r2, #4]
	str	r1, [r2, #4]
	.loc 1 82 0
	ldr	r1, [r2, #36]
	orr	r1, r1, #570425344
	orr	r1, r1, #2228224
	str	r1, [r2, #36]
	.loc 1 84 0
	ldr	r2, [r0, #64]
	.loc 1 86 0
	movs	r4, #104
	.loc 1 85 0
	movs	r1, #0
	.loc 1 84 0
	orr	r2, r2, #4
	str	r2, [r0, #64]
	.loc 1 85 0
	strh	r1, [r3, #40]	@ movhi
	.loc 1 86 0
	str	r4, [r3, #44]
	.loc 1 90 0
	str	r1, [r3, #60]
	.loc 1 93 0
	ldrh	r2, [r3, #24]
	uxth	r2, r2
	orrs	r2, r2, r4
	strh	r2, [r3, #24]	@ movhi
	.loc 1 94 0
	ldrh	r2, [r3, #24]
	uxth	r2, r2
	orr	r2, r2, #26624
	strh	r2, [r3, #24]	@ movhi
	.loc 1 95 0
	ldrh	r2, [r3, #28]
	uxth	r2, r2
	orrs	r2, r2, r4
	strh	r2, [r3, #28]	@ movhi
	.loc 1 96 0
	ldrh	r2, [r3, #28]
	uxth	r2, r2
	orr	r2, r2, #26624
	strh	r2, [r3, #28]	@ movhi
	.loc 1 100 0
	ldrh	r2, [r3, #32]
	bic	r2, r2, #8704
	bic	r2, r2, #34
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	strh	r2, [r3, #32]	@ movhi
	.loc 1 102 0
	ldrh	r2, [r3]
	uxth	r2, r2
	orr	r2, r2, #132
	strh	r2, [r3]	@ movhi
	.loc 1 105 0
	ldrh	r2, [r3, #20]
	uxth	r2, r2
	orr	r2, r2, #1
	strh	r2, [r3, #20]	@ movhi
	.loc 1 107 0
	ldrh	r2, [r3, #32]
	uxth	r2, r2
	orr	r2, r2, #4352
	orr	r2, r2, #17
	strh	r2, [r3, #32]	@ movhi
	.loc 1 110 0
	ldrh	r2, [r3, #12]
	uxth	r2, r2
	orr	r2, r2, #2048
	strh	r2, [r3, #12]	@ movhi
	.loc 1 111 0
	ldrh	r2, [r3, #20]
	uxth	r2, r2
	orr	r2, r2, #8
	strh	r2, [r3, #20]	@ movhi
	.loc 1 113 0
	ldrh	r2, [r3]
	.loc 1 114 0
	ldr	r4, [sp], #4
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 113 0
	uxth	r2, r2
	orr	r2, r2, #1
	strh	r2, [r3]	@ movhi
	.loc 1 114 0
	bx	lr
.L4:
	.align	2
.L3:
	.word	1073887232
	.word	1073875968
	.word	1073743872
	.cfi_endproc
.LFE111:
	.size	init_TIM4, .-init_TIM4
	.align	2
	.global	init_DMA1
	.thumb
	.thumb_func
	.type	init_DMA1, %function
init_DMA1:
.LFB112:
	.loc 1 116 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 118 0
	ldr	r3, .L10
	.loc 1 120 0
	ldr	r1, .L10+4
	.loc 1 118 0
	mov	r2, #2097152
	str	r2, [r3, #48]
	.loc 1 120 0
	ldr	r3, [r1]
	bic	r3, r3, #1
	str	r3, [r1]
.L6:
	.loc 1 121 0 discriminator 1
	ldr	r2, [r1]
	ldr	r3, .L10+4
	lsls	r2, r2, #31
	bmi	.L6
	.loc 1 116 0
	push	{r4, r5, r6, r7}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 7, -4
	.loc 1 124 0
	ldr	r0, .L10+8
	ldr	r4, [r3]
	.loc 1 126 0
	ldr	r2, .L10+12
	.loc 1 129 0
	ldr	r6, .L10+16
	.loc 1 130 0
	ldr	r5, .L10+20
.LBB8:
.LBB9:
	.file 2 "/home/emir/msut/STM32F407/Libraries/CMSIS/Include/core_cm4.h"
	.loc 2 1075 0
	ldr	r1, .L10+24
.LBE9:
.LBE8:
	.loc 1 124 0
	ands	r0, r0, r4
	str	r0, [r3]
	.loc 1 126 0
	ldr	r0, [r2]
	ldr	r4, [r2]
	eors	r0, r0, r4
	str	r0, [r2]
	.loc 1 127 0
	ldr	r0, [r2, #4]
	ldr	r7, [r2, #4]
	.loc 1 132 0
	mov	r4, #1536
	.loc 1 127 0
	eors	r0, r0, r7
	str	r0, [r2, #4]
	.loc 1 129 0
	str	r6, [r3, #8]
	.loc 1 130 0
	str	r5, [r3, #12]
	.loc 1 132 0
	str	r4, [r3, #4]
	.loc 1 134 0
	ldr	r2, [r3]
	orr	r2, r2, #67108864
	str	r2, [r3]
	.loc 1 135 0
	ldr	r2, [r3]
	orr	r2, r2, #131072
	str	r2, [r3]
	.loc 1 137 0
	ldr	r2, [r3]
	orr	r2, r2, #64
	str	r2, [r3]
	.loc 1 138 0
	ldr	r2, [r3]
	orr	r2, r2, #1024
	str	r2, [r3]
	.loc 1 139 0
	ldr	r2, [r3]
	orr	r2, r2, #16
	str	r2, [r3]
	.loc 1 141 0
	ldr	r2, [r3]
	orr	r2, r2, #8192
	str	r2, [r3]
	.loc 1 142 0
	ldr	r2, [r3]
.LBB12:
.LBB10:
	.loc 2 1075 0
	movs	r0, #64
.LBE10:
.LBE12:
	.loc 1 142 0
	orr	r2, r2, #2048
	str	r2, [r3]
.LVL0:
	.loc 1 147 0
	pop	{r4, r5, r6, r7}
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LBB13:
.LBB11:
	.loc 2 1075 0
	str	r0, [r1, #8]
.LBE11:
.LBE13:
	.loc 1 147 0
	bx	lr
.L11:
	.align	2
.L10:
	.word	1073887232
	.word	1073897656
	.word	-267386880
	.word	1073897472
	.word	1073743932
	.word	colorBuff
	.word	-536813312
	.cfi_endproc
.LFE112:
	.size	init_DMA1, .-init_DMA1
	.align	2
	.global	DMA2_Stream7_IRQHandler
	.thumb
	.thumb_func
	.type	DMA2_Stream7_IRQHandler, %function
DMA2_Stream7_IRQHandler:
.LFB113:
	.loc 1 149 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 150 0
	ldr	r1, .L13
	.loc 1 151 0
	ldr	r2, .L13+4
	.loc 1 150 0
	ldr	r3, [r1]
	.loc 1 152 0
	ldr	r0, .L13+8
	.loc 1 150 0
	bic	r3, r3, #1
	str	r3, [r1]
	.loc 1 151 0
	ldr	r3, [r2, #8]
	.loc 1 152 0
	movs	r1, #1
	.loc 1 151 0
	orr	r3, r3, #134217728
	str	r3, [r2, #8]
	.loc 1 152 0
	str	r1, [r0]
	bx	lr
.L14:
	.align	2
.L13:
	.word	1073898680
	.word	1073898496
	.word	.LANCHOR0
	.cfi_endproc
.LFE113:
	.size	DMA2_Stream7_IRQHandler, .-DMA2_Stream7_IRQHandler
	.align	2
	.global	send
	.thumb
	.thumb_func
	.type	send, %function
send:
.LFB114:
	.loc 1 155 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL1:
	.loc 1 160 0
	ldr	r3, .L21
	.loc 1 155 0
	push	{r4, r5, r6, r7}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 7, -4
	orr	r1, r0, r1, lsl #8
.LVL2:
	ldr	r4, .L21+4
	.loc 1 160 0
	ldrh	r7, [r3, #2]
	.loc 1 162 0
	ldrh	r6, [r3]
	.loc 1 156 0
	orr	r2, r1, r2, lsl #16
.LVL3:
	.loc 1 158 0
	movs	r3, #23
	.loc 1 159 0
	movs	r1, #1
.LVL4:
.L18:
	lsl	r5, r1, r3
	tst	r5, r2
	.loc 1 158 0
	add	r3, r3, #-1
.LVL5:
	.loc 1 160 0
	ite	ne
	strhne	r7, [r4]	@ movhi
	.loc 1 162 0
	strheq	r6, [r4]	@ movhi
	.loc 1 158 0
	adds	r0, r3, #1
	sub	r4, r4, #2
	bne	.L18
	.loc 1 165 0
	ldr	r2, .L21+8
.LVL6:
	ldr	r3, [r2]
.LVL7:
	orr	r3, r3, #1
	str	r3, [r2]
	.loc 1 166 0
	pop	{r4, r5, r6, r7}
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr
.L22:
	.align	2
.L21:
	.word	.LANCHOR1
	.word	colorBuff+46
	.word	1073897656
	.cfi_endproc
.LFE114:
	.size	send, .-send
	.align	2
	.global	set_LED
	.thumb
	.thumb_func
	.type	set_LED, %function
set_LED:
.LFB115:
	.loc 1 168 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL8:
	push	{r4, r5}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 5, -4
	.loc 1 169 0
	ldr	r5, .L25
	.loc 1 170 0
	add	r4, r5, r0, lsl #2
	.loc 1 169 0
	strb	r0, [r5, r0, lsl #2]
	.loc 1 170 0
	strb	r2, [r4, #1]
	.loc 1 171 0
	strb	r1, [r4, #2]
	.loc 1 172 0
	strb	r3, [r4, #3]
	.loc 1 173 0
	pop	{r4, r5}
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr
.L26:
	.align	2
.L25:
	.word	LED_Data
	.cfi_endproc
.LFE115:
	.size	set_LED, .-set_LED
	.align	2
	.global	WS2812_send
	.thumb
	.thumb_func
	.type	WS2812_send, %function
WS2812_send:
.LFB116:
	.loc 1 175 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL9:
	push	{r3, r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
.LBB14:
	.loc 1 186 0
	ldr	r3, .L37
	ldr	r7, .L37+4
	ldrh	r6, [r3, #2]
	.loc 1 188 0
	ldrh	r5, [r3]
	ldr	lr, .L37+28
	add	ip, r7, #256
	.loc 1 185 0
	movs	r4, #1
.LVL10:
.L31:
	.loc 1 181 0
	ldrb	r2, [r7, #2]	@ zero_extendqisi2
	ldrb	r0, [r7, #1]	@ zero_extendqisi2
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	lsls	r2, r2, #8
	orr	r0, r2, r0, lsl #16
	orrs	r0, r0, r3
.LVL11:
	mov	r2, lr
	.loc 1 184 0
	movs	r3, #23
.LVL12:
.L30:
	.loc 1 185 0
	lsl	r1, r4, r3
	tst	r1, r0
	.loc 1 184 0
	add	r3, r3, #-1
.LVL13:
	.loc 1 186 0
	ite	ne
	strhne	r6, [r2]	@ movhi
	.loc 1 188 0
	strheq	r5, [r2]	@ movhi
.LVL14:
	.loc 1 184 0
	adds	r1, r3, #1
	add	r2, r2, #2
	bne	.L30
.LVL15:
	adds	r7, r7, #4
.LVL16:
.LBE14:
	.loc 1 180 0 discriminator 2
	cmp	r7, ip
	add	lr, lr, #48
	bne	.L31
	ldr	r3, .L37+8
.LVL17:
	.loc 1 195 0
	movs	r1, #0
.LVL18:
	add	r2, r3, #100
.LVL19:
.L32:
	.loc 1 195 0 is_stmt 0 discriminator 3
	strh	r1, [r3, #2]!	@ movhi
	.loc 1 194 0 is_stmt 1 discriminator 3
	cmp	r3, r2
	.loc 1 195 0 discriminator 3
	mov	r4, #0
	.loc 1 194 0 discriminator 3
	bne	.L32
	.loc 1 199 0
	ldr	r1, .L37+12
	.loc 1 200 0
	ldr	r2, .L37+16
	.loc 1 199 0
	ldrh	r3, [r1]
	.loc 1 206 0
	ldr	r0, .L37+20
.LVL20:
	.loc 1 199 0
	uxth	r3, r3
	orr	r3, r3, #1
	strh	r3, [r1]	@ movhi
.LVL21:
	.loc 1 200 0
	ldr	r3, [r2]
	orr	r3, r3, #1
	str	r3, [r2]
	.loc 1 206 0
	bl	printUSART2
.LVL22:
	.loc 1 207 0
	ldr	r3, .L37+24
	str	r4, [r3]
	pop	{r3, r4, r5, r6, r7, pc}
.L38:
	.align	2
.L37:
	.word	.LANCHOR1
	.word	LED_Data
	.word	colorBuff+3070
	.word	1073743872
	.word	1073897656
	.word	.LC0
	.word	.LANCHOR0
	.word	colorBuff
	.cfi_endproc
.LFE116:
	.size	WS2812_send, .-WS2812_send
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.thumb
	.thumb_func
	.type	main, %function
main:
.LFB110:
	.loc 1 28 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL23:
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 32 0
	mov	r0, #364
	bl	initUSART2
.LVL24:
	.loc 1 33 0
	ldr	r0, .L46
	ldr	r4, .L46+4
	bl	printUSART2
.LVL25:
	.loc 1 34 0
	ldr	r0, .L46+8
	bl	printUSART2
.LVL26:
	.loc 1 35 0
	ldr	r0, .L46
	bl	printUSART2
.LVL27:
	.loc 1 38 0
	mov	r5, r4
	.loc 1 37 0
	bl	init_TIM4
.LVL28:
.LBB15:
.LBB16:
	.loc 1 171 0
	movs	r6, #255
.LBE16:
.LBE15:
	.loc 1 38 0
	bl	init_DMA1
.LVL29:
	mov	r2, r4
	.loc 1 43 0
	movs	r3, #0
.LVL30:
.L40:
.LBB19:
.LBB17:
	.loc 1 169 0 discriminator 3
	uxtb	r1, r3
	strb	r1, [r5, r3, lsl #2]
.LBE17:
.LBE19:
	.loc 1 43 0 discriminator 3
	adds	r3, r3, #1
.LVL31:
	lsls	r0, r1, #1
	cmp	r3, #64
.LBB20:
.LBB18:
	.loc 1 170 0 discriminator 3
	strb	r1, [r2, #1]
	.loc 1 172 0 discriminator 3
	strb	r0, [r2, #3]
	.loc 1 171 0 discriminator 3
	strb	r6, [r2, #2]
	add	r2, r2, #4
.LBE18:
.LBE20:
	.loc 1 43 0 discriminator 3
	bne	.L40
	.loc 1 46 0
	bl	WS2812_send
.LVL32:
	.loc 1 47 0
	movw	r0, #5000
	bl	delay_ms
.LVL33:
	.loc 1 49 0
	ldr	r2, .L46+12
	.loc 1 51 0
	ldr	r0, .L46+16
	.loc 1 49 0
	ldr	r3, [r2, #8]
	orr	r3, r3, #134217728
	str	r3, [r2, #8]
	.loc 1 51 0
	bl	printUSART2
.LVL34:
	.loc 1 52 0
	movs	r3, #0
.LBB21:
.LBB22:
	.loc 1 171 0
	mov	r2, r3
	.loc 1 170 0
	movs	r1, #255
.LVL35:
.L41:
	.loc 1 169 0
	strb	r3, [r5, r3, lsl #2]
.LBE22:
.LBE21:
	.loc 1 52 0
	adds	r3, r3, #1
.LVL36:
	cmp	r3, #64
.LBB24:
.LBB23:
	.loc 1 170 0
	strb	r1, [r4, #1]
	.loc 1 171 0
	strb	r2, [r4, #2]
	.loc 1 172 0
	strb	r2, [r4, #3]
	add	r4, r4, #4
.LBE23:
.LBE24:
	.loc 1 52 0
	bne	.L41
	.loc 1 56 0
	bl	WS2812_send
.LVL37:
.L42:
	.loc 1 72 0 discriminator 1
	b	.L42
.L47:
	.align	2
.L46:
	.word	.LC1
	.word	LED_Data
	.word	.LC2
	.word	1073898496
	.word	.LC3
	.cfi_endproc
.LFE110:
	.size	main, .-main
	.text
	.align	2
	.global	reset_LED
	.thumb
	.thumb_func
	.type	reset_LED, %function
reset_LED:
.LFB117:
	.loc 1 210 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL38:
	ldr	r0, .L51
	.loc 1 212 0
	movs	r3, #0
	mov	r2, r0
	.loc 1 214 0
	mov	r1, r3
.LVL39:
.L49:
	.loc 1 213 0 discriminator 3
	strb	r3, [r0, r3, lsl #2]
	.loc 1 212 0 discriminator 3
	adds	r3, r3, #1
.LVL40:
	cmp	r3, #64
	.loc 1 214 0 discriminator 3
	strb	r1, [r2, #1]
	.loc 1 215 0 discriminator 3
	strb	r1, [r2, #2]
	.loc 1 216 0 discriminator 3
	strb	r1, [r2, #3]
	add	r2, r2, #4
	.loc 1 212 0 discriminator 3
	bne	.L49
	.loc 1 218 0
	bx	lr
.L52:
	.align	2
.L51:
	.word	LED_Data
	.cfi_endproc
.LFE117:
	.size	reset_LED, .-reset_LED
	.comm	colorBuff,3172,4
	.global	datasentflag
	.comm	LED_Mod,256,4
	.comm	LED_Data,256,4
	.global	pwm
	.data
	.align	2
	.set	.LANCHOR1,. + 0
	.type	pwm, %object
	.size	pwm, 4
pwm:
	.short	34
	.short	67
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"izaso\012\000"
	.space	1
.LC1:
	.ascii	"\012wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww"
	.ascii	"wwwwww\012\000"
.LC2:
	.ascii	"w Starting test app...\000"
	.space	1
.LC3:
	.ascii	"pripremam drugi set\012\000"
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	datasentflag, %object
	.size	datasentflag, 4
datasentflag:
	.space	4
	.text
.Letext0:
	.file 3 "stm32f4xx.h"
	.file 4 "/home/emir/msut/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 5 "/home/emir/msut/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/stdint.h"
	.file 6 "usart.h"
	.file 7 "delay.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xd24
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF202
	.byte	0x1
	.4byte	.LASF203
	.4byte	.LASF204
	.4byte	.Ldebug_ranges0+0x58
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF183
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
	.byte	0x2
	.2byte	0x130
	.4byte	0x3c5
	.uleb128 0x8
	.4byte	.LASF108
	.byte	0x2
	.2byte	0x132
	.4byte	0x3dc
	.byte	0
	.uleb128 0x8
	.4byte	.LASF109
	.byte	0x2
	.2byte	0x133
	.4byte	0x3e1
	.byte	0x20
	.uleb128 0x8
	.4byte	.LASF110
	.byte	0x2
	.2byte	0x134
	.4byte	0x3f1
	.byte	0x80
	.uleb128 0x8
	.4byte	.LASF111
	.byte	0x2
	.2byte	0x135
	.4byte	0x3e1
	.byte	0xa0
	.uleb128 0x9
	.4byte	.LASF112
	.byte	0x2
	.2byte	0x136
	.4byte	0x3f6
	.2byte	0x100
	.uleb128 0x9
	.4byte	.LASF113
	.byte	0x2
	.2byte	0x137
	.4byte	0x3e1
	.2byte	0x120
	.uleb128 0x9
	.4byte	.LASF114
	.byte	0x2
	.2byte	0x138
	.4byte	0x3fb
	.2byte	0x180
	.uleb128 0x9
	.4byte	.LASF115
	.byte	0x2
	.2byte	0x139
	.4byte	0x3e1
	.2byte	0x1a0
	.uleb128 0x9
	.4byte	.LASF116
	.byte	0x2
	.2byte	0x13a
	.4byte	0x400
	.2byte	0x200
	.uleb128 0x9
	.4byte	.LASF117
	.byte	0x2
	.2byte	0x13b
	.4byte	0x405
	.2byte	0x220
	.uleb128 0xa
	.ascii	"IP\000"
	.byte	0x2
	.2byte	0x13c
	.4byte	0x425
	.2byte	0x300
	.uleb128 0x9
	.4byte	.LASF118
	.byte	0x2
	.2byte	0x13d
	.4byte	0x42a
	.2byte	0x3f0
	.uleb128 0x9
	.4byte	.LASF119
	.byte	0x2
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
	.byte	0x2
	.2byte	0x13f
	.4byte	0x309
	.uleb128 0xb
	.4byte	0x2fe
	.4byte	0x45c
	.uleb128 0xc
	.4byte	0x3d5
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.4byte	0x2e8
	.uleb128 0xd
	.4byte	0x2f3
	.uleb128 0x10
	.byte	0x18
	.byte	0x3
	.2byte	0x1d7
	.4byte	0x4bd
	.uleb128 0x11
	.ascii	"CR\000"
	.byte	0x3
	.2byte	0x1d9
	.4byte	0x43b
	.byte	0
	.uleb128 0x8
	.4byte	.LASF122
	.byte	0x3
	.2byte	0x1da
	.4byte	0x43b
	.byte	0x4
	.uleb128 0x11
	.ascii	"PAR\000"
	.byte	0x3
	.2byte	0x1db
	.4byte	0x43b
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF123
	.byte	0x3
	.2byte	0x1dc
	.4byte	0x43b
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF124
	.byte	0x3
	.2byte	0x1dd
	.4byte	0x43b
	.byte	0x10
	.uleb128 0x11
	.ascii	"FCR\000"
	.byte	0x3
	.2byte	0x1de
	.4byte	0x43b
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.4byte	.LASF125
	.byte	0x3
	.2byte	0x1df
	.4byte	0x466
	.uleb128 0x10
	.byte	0x10
	.byte	0x3
	.2byte	0x1e1
	.4byte	0x507
	.uleb128 0x8
	.4byte	.LASF126
	.byte	0x3
	.2byte	0x1e3
	.4byte	0x43b
	.byte	0
	.uleb128 0x8
	.4byte	.LASF127
	.byte	0x3
	.2byte	0x1e4
	.4byte	0x43b
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF128
	.byte	0x3
	.2byte	0x1e5
	.4byte	0x43b
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF129
	.byte	0x3
	.2byte	0x1e6
	.4byte	0x43b
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.4byte	.LASF130
	.byte	0x3
	.2byte	0x1e7
	.4byte	0x4c9
	.uleb128 0x10
	.byte	0x28
	.byte	0x3
	.2byte	0x28e
	.4byte	0x59f
	.uleb128 0x8
	.4byte	.LASF131
	.byte	0x3
	.2byte	0x290
	.4byte	0x43b
	.byte	0
	.uleb128 0x8
	.4byte	.LASF132
	.byte	0x3
	.2byte	0x291
	.4byte	0x43b
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF133
	.byte	0x3
	.2byte	0x292
	.4byte	0x43b
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF134
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
	.4byte	.LASF135
	.byte	0x3
	.2byte	0x296
	.4byte	0x45c
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF136
	.byte	0x3
	.2byte	0x297
	.4byte	0x45c
	.byte	0x1a
	.uleb128 0x8
	.4byte	.LASF137
	.byte	0x3
	.2byte	0x298
	.4byte	0x43b
	.byte	0x1c
	.uleb128 0x11
	.ascii	"AFR\000"
	.byte	0x3
	.2byte	0x299
	.4byte	0x59f
	.byte	0x20
	.byte	0
	.uleb128 0xd
	.4byte	0x44c
	.uleb128 0xf
	.4byte	.LASF138
	.byte	0x3
	.2byte	0x29a
	.4byte	0x513
	.uleb128 0x10
	.byte	0x88
	.byte	0x3
	.2byte	0x2dd
	.4byte	0x73f
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
	.4byte	0x5b0
	.uleb128 0x10
	.byte	0x54
	.byte	0x3
	.2byte	0x369
	.4byte	0x927
	.uleb128 0x11
	.ascii	"CR1\000"
	.byte	0x3
	.2byte	0x36b
	.4byte	0x45c
	.byte	0
	.uleb128 0x8
	.4byte	.LASF109
	.byte	0x3
	.2byte	0x36c
	.4byte	0x2e8
	.byte	0x2
	.uleb128 0x11
	.ascii	"CR2\000"
	.byte	0x3
	.2byte	0x36d
	.4byte	0x45c
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF146
	.byte	0x3
	.2byte	0x36e
	.4byte	0x2e8
	.byte	0x6
	.uleb128 0x8
	.4byte	.LASF162
	.byte	0x3
	.2byte	0x36f
	.4byte	0x45c
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF113
	.byte	0x3
	.2byte	0x370
	.4byte	0x2e8
	.byte	0xa
	.uleb128 0x8
	.4byte	.LASF163
	.byte	0x3
	.2byte	0x371
	.4byte	0x45c
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF115
	.byte	0x3
	.2byte	0x372
	.4byte	0x2e8
	.byte	0xe
	.uleb128 0x11
	.ascii	"SR\000"
	.byte	0x3
	.2byte	0x373
	.4byte	0x45c
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF117
	.byte	0x3
	.2byte	0x374
	.4byte	0x2e8
	.byte	0x12
	.uleb128 0x11
	.ascii	"EGR\000"
	.byte	0x3
	.2byte	0x375
	.4byte	0x45c
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF118
	.byte	0x3
	.2byte	0x376
	.4byte	0x2e8
	.byte	0x16
	.uleb128 0x8
	.4byte	.LASF164
	.byte	0x3
	.2byte	0x377
	.4byte	0x45c
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF158
	.byte	0x3
	.2byte	0x378
	.4byte	0x2e8
	.byte	0x1a
	.uleb128 0x8
	.4byte	.LASF165
	.byte	0x3
	.2byte	0x379
	.4byte	0x45c
	.byte	0x1c
	.uleb128 0x8
	.4byte	.LASF166
	.byte	0x3
	.2byte	0x37a
	.4byte	0x2e8
	.byte	0x1e
	.uleb128 0x8
	.4byte	.LASF167
	.byte	0x3
	.2byte	0x37b
	.4byte	0x45c
	.byte	0x20
	.uleb128 0x8
	.4byte	.LASF168
	.byte	0x3
	.2byte	0x37c
	.4byte	0x2e8
	.byte	0x22
	.uleb128 0x11
	.ascii	"CNT\000"
	.byte	0x3
	.2byte	0x37d
	.4byte	0x43b
	.byte	0x24
	.uleb128 0x11
	.ascii	"PSC\000"
	.byte	0x3
	.2byte	0x37e
	.4byte	0x45c
	.byte	0x28
	.uleb128 0x8
	.4byte	.LASF169
	.byte	0x3
	.2byte	0x37f
	.4byte	0x2e8
	.byte	0x2a
	.uleb128 0x11
	.ascii	"ARR\000"
	.byte	0x3
	.2byte	0x380
	.4byte	0x43b
	.byte	0x2c
	.uleb128 0x11
	.ascii	"RCR\000"
	.byte	0x3
	.2byte	0x381
	.4byte	0x45c
	.byte	0x30
	.uleb128 0x8
	.4byte	.LASF170
	.byte	0x3
	.2byte	0x382
	.4byte	0x2e8
	.byte	0x32
	.uleb128 0x8
	.4byte	.LASF171
	.byte	0x3
	.2byte	0x383
	.4byte	0x43b
	.byte	0x34
	.uleb128 0x8
	.4byte	.LASF172
	.byte	0x3
	.2byte	0x384
	.4byte	0x43b
	.byte	0x38
	.uleb128 0x8
	.4byte	.LASF173
	.byte	0x3
	.2byte	0x385
	.4byte	0x43b
	.byte	0x3c
	.uleb128 0x8
	.4byte	.LASF174
	.byte	0x3
	.2byte	0x386
	.4byte	0x43b
	.byte	0x40
	.uleb128 0x8
	.4byte	.LASF175
	.byte	0x3
	.2byte	0x387
	.4byte	0x45c
	.byte	0x44
	.uleb128 0x8
	.4byte	.LASF176
	.byte	0x3
	.2byte	0x388
	.4byte	0x2e8
	.byte	0x46
	.uleb128 0x11
	.ascii	"DCR\000"
	.byte	0x3
	.2byte	0x389
	.4byte	0x45c
	.byte	0x48
	.uleb128 0x8
	.4byte	.LASF177
	.byte	0x3
	.2byte	0x38a
	.4byte	0x2e8
	.byte	0x4a
	.uleb128 0x8
	.4byte	.LASF178
	.byte	0x3
	.2byte	0x38b
	.4byte	0x45c
	.byte	0x4c
	.uleb128 0x8
	.4byte	.LASF179
	.byte	0x3
	.2byte	0x38c
	.4byte	0x2e8
	.byte	0x4e
	.uleb128 0x11
	.ascii	"OR\000"
	.byte	0x3
	.2byte	0x38d
	.4byte	0x45c
	.byte	0x50
	.uleb128 0x8
	.4byte	.LASF180
	.byte	0x3
	.2byte	0x38e
	.4byte	0x2e8
	.byte	0x52
	.byte	0
	.uleb128 0xf
	.4byte	.LASF181
	.byte	0x3
	.2byte	0x38f
	.4byte	0x74b
	.uleb128 0x12
	.byte	0x4
	.4byte	0x939
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF182
	.uleb128 0x13
	.4byte	.LASF205
	.byte	0x2
	.2byte	0x430
	.byte	0x3
	.4byte	0x95a
	.uleb128 0x14
	.4byte	.LASF183
	.byte	0x2
	.2byte	0x430
	.4byte	0x260
	.byte	0
	.uleb128 0x15
	.4byte	.LASF199
	.byte	0x1
	.byte	0xa8
	.byte	0x1
	.4byte	0x993
	.uleb128 0x16
	.4byte	.LASF184
	.byte	0x1
	.byte	0xa8
	.4byte	0x2cf
	.uleb128 0x17
	.ascii	"red\000"
	.byte	0x1
	.byte	0xa8
	.4byte	0x2cf
	.uleb128 0x16
	.4byte	.LASF185
	.byte	0x1
	.byte	0xa8
	.4byte	0x2cf
	.uleb128 0x16
	.4byte	.LASF186
	.byte	0x1
	.byte	0xa8
	.4byte	0x2cf
	.byte	0
	.uleb128 0x18
	.4byte	.LASF206
	.byte	0x1
	.byte	0x4b
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x19
	.4byte	.LASF207
	.byte	0x1
	.byte	0x74
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9d0
	.uleb128 0x1a
	.4byte	0x940
	.4byte	.LBB8
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x92
	.uleb128 0x1b
	.4byte	0x94d
	.byte	0x46
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF208
	.byte	0x1
	.byte	0x95
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1d
	.4byte	.LASF188
	.byte	0x1
	.byte	0x9b
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa40
	.uleb128 0x1e
	.4byte	.LASF185
	.byte	0x1
	.byte	0x9b
	.4byte	0x2cf
	.4byte	.LLST0
	.uleb128 0x1f
	.ascii	"red\000"
	.byte	0x1
	.byte	0x9b
	.4byte	0x2cf
	.4byte	.LLST1
	.uleb128 0x1e
	.4byte	.LASF186
	.byte	0x1
	.byte	0x9b
	.4byte	0x2cf
	.4byte	.LLST2
	.uleb128 0x20
	.4byte	.LASF187
	.byte	0x1
	.byte	0x9c
	.4byte	0x2fe
	.4byte	.LLST3
	.uleb128 0x21
	.ascii	"i\000"
	.byte	0x1
	.byte	0x9d
	.4byte	0x2cf
	.4byte	.LLST4
	.byte	0
	.uleb128 0x22
	.4byte	0x95a
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa70
	.uleb128 0x23
	.4byte	0x966
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x23
	.4byte	0x971
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x23
	.4byte	0x97c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x23
	.4byte	0x987
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF189
	.byte	0x1
	.byte	0xaf
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xadf
	.uleb128 0x20
	.4byte	.LASF190
	.byte	0x1
	.byte	0xb0
	.4byte	0x2fe
	.4byte	.LLST5
	.uleb128 0x20
	.4byte	.LASF191
	.byte	0x1
	.byte	0xb1
	.4byte	0x2fe
	.4byte	.LLST6
	.uleb128 0x21
	.ascii	"i\000"
	.byte	0x1
	.byte	0xb3
	.4byte	0x2cf
	.4byte	.LLST7
	.uleb128 0x24
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.4byte	0xacb
	.uleb128 0x21
	.ascii	"j\000"
	.byte	0x1
	.byte	0xb7
	.4byte	0x2cf
	.4byte	.LLST8
	.byte	0
	.uleb128 0x25
	.4byte	.LVL22
	.4byte	0xcf7
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF209
	.byte	0x1
	.byte	0x1c
	.4byte	0x2cf
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc37
	.uleb128 0x28
	.ascii	"cnt\000"
	.byte	0x1
	.byte	0x1d
	.4byte	0x2fe
	.byte	0
	.uleb128 0x29
	.4byte	.LASF210
	.byte	0x1
	.byte	0x1d
	.4byte	0x2fe
	.uleb128 0x2a
	.4byte	.LASF192
	.byte	0x1
	.byte	0x1e
	.4byte	0x2dd
	.byte	0
	.uleb128 0x21
	.ascii	"i\000"
	.byte	0x1
	.byte	0x2a
	.4byte	0x2cf
	.4byte	.LLST9
	.uleb128 0x2b
	.4byte	0x95a
	.4byte	.LBB15
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0x2c
	.4byte	0xb5d
	.uleb128 0x2c
	.4byte	0x987
	.4byte	.LLST10
	.uleb128 0x2c
	.4byte	0x97c
	.4byte	.LLST11
	.uleb128 0x1b
	.4byte	0x971
	.byte	0xff
	.uleb128 0x2c
	.4byte	0x966
	.4byte	.LLST11
	.byte	0
	.uleb128 0x2b
	.4byte	0x95a
	.4byte	.LBB21
	.4byte	.Ldebug_ranges0+0x40
	.byte	0x1
	.byte	0x35
	.4byte	0xb8c
	.uleb128 0x1b
	.4byte	0x987
	.byte	0
	.uleb128 0x1b
	.4byte	0x97c
	.byte	0xff
	.uleb128 0x1b
	.4byte	0x971
	.byte	0
	.uleb128 0x2c
	.4byte	0x966
	.4byte	.LLST13
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL24
	.4byte	0xd09
	.4byte	0xba1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x16c
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL25
	.4byte	0xcf7
	.4byte	0xbb8
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL26
	.4byte	0xcf7
	.4byte	0xbcf
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL27
	.4byte	0xcf7
	.4byte	0xbe6
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL28
	.4byte	0x993
	.uleb128 0x2e
	.4byte	.LVL29
	.4byte	0x9a4
	.uleb128 0x2e
	.4byte	.LVL32
	.4byte	0xa70
	.uleb128 0x2d
	.4byte	.LVL33
	.4byte	0xd1a
	.4byte	0xc16
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1388
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL34
	.4byte	0xcf7
	.4byte	0xc2d
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL37
	.4byte	0xa70
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF193
	.byte	0x1
	.byte	0xd2
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc5a
	.uleb128 0x21
	.ascii	"i\000"
	.byte	0x1
	.byte	0xd3
	.4byte	0x2cf
	.4byte	.LLST14
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF194
	.byte	0x2
	.2byte	0x51b
	.4byte	0x461
	.uleb128 0xb
	.4byte	0x2e8
	.4byte	0xc76
	.uleb128 0xc
	.4byte	0x3d5
	.byte	0x1
	.byte	0
	.uleb128 0x30
	.ascii	"pwm\000"
	.byte	0x1
	.byte	0x8
	.4byte	0xc66
	.uleb128 0x5
	.byte	0x3
	.4byte	pwm
	.uleb128 0xb
	.4byte	0x2dd
	.4byte	0xc9d
	.uleb128 0xc
	.4byte	0x3d5
	.byte	0x3f
	.uleb128 0xc
	.4byte	0x3d5
	.byte	0x3
	.byte	0
	.uleb128 0x31
	.4byte	.LASF195
	.byte	0x1
	.byte	0xa
	.4byte	0xc87
	.uleb128 0x5
	.byte	0x3
	.4byte	LED_Data
	.uleb128 0x31
	.4byte	.LASF196
	.byte	0x1
	.byte	0xb
	.4byte	0xc87
	.uleb128 0x5
	.byte	0x3
	.4byte	LED_Mod
	.uleb128 0x31
	.4byte	.LASF197
	.byte	0x1
	.byte	0xd
	.4byte	0xcd0
	.uleb128 0x5
	.byte	0x3
	.4byte	datasentflag
	.uleb128 0xd
	.4byte	0x2cf
	.uleb128 0xb
	.4byte	0x2e8
	.4byte	0xce6
	.uleb128 0xe
	.4byte	0x3d5
	.2byte	0x631
	.byte	0
	.uleb128 0x31
	.4byte	.LASF198
	.byte	0x1
	.byte	0x10
	.4byte	0xcd5
	.uleb128 0x5
	.byte	0x3
	.4byte	colorBuff
	.uleb128 0x32
	.4byte	.LASF200
	.byte	0x6
	.byte	0xe
	.4byte	0xd09
	.uleb128 0x33
	.4byte	0x933
	.uleb128 0x34
	.byte	0
	.uleb128 0x32
	.4byte	.LASF201
	.byte	0x6
	.byte	0xc
	.4byte	0xd1a
	.uleb128 0x33
	.4byte	0x2fe
	.byte	0
	.uleb128 0x35
	.4byte	.LASF211
	.byte	0x7
	.byte	0x9
	.uleb128 0x33
	.4byte	0x2fe
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0xb
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
	.uleb128 0x1a
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
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL4
	.4byte	.LFE114
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL2
	.4byte	.LFE114
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LFE114
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LFE114
	.2byte	0x10
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x38
	.byte	0x24
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x40
	.byte	0x24
	.byte	0x21
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x47
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL7
	.4byte	.LFE114
	.2byte	0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0xe
	.byte	0x77
	.sleb128 0
	.byte	0x36
	.byte	0x1e
	.byte	0x3
	.4byte	LED_Data
	.byte	0x9
	.byte	0xfa
	.byte	0x1e
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x13
	.byte	0x77
	.sleb128 0
	.byte	0x36
	.byte	0x1e
	.byte	0x3
	.4byte	LED_Data
	.byte	0x9
	.byte	0xfa
	.byte	0x1e
	.byte	0x22
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x17
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x13
	.byte	0x77
	.sleb128 0
	.byte	0x36
	.byte	0x1e
	.byte	0x3
	.4byte	LED_Data
	.byte	0x9
	.byte	0xfa
	.byte	0x1e
	.byte	0x22
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x16
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x10
	.byte	0x77
	.sleb128 0
	.byte	0x36
	.byte	0x1e
	.byte	0x3
	.4byte	LED_Data
	.byte	0x9
	.byte	0xfa
	.byte	0x1e
	.byte	0x22
	.byte	0x23
	.uleb128 0x18
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x10
	.byte	0x77
	.sleb128 -4
	.byte	0x36
	.byte	0x1e
	.byte	0x3
	.4byte	LED_Data
	.byte	0x9
	.byte	0xfa
	.byte	0x1e
	.byte	0x22
	.byte	0x23
	.uleb128 0x18
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL11
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1c
	.byte	0x77
	.sleb128 -3
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x77
	.sleb128 -2
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x21
	.byte	0x77
	.sleb128 -1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x47
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x3
	.byte	0x71
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL32-1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL37-1
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL32-1
	.2byte	0x5
	.byte	0x73
	.sleb128 -1
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL31
	.4byte	.LVL32-1
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL36
	.4byte	.LVL37-1
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LFE117
	.2byte	0x1
	.byte	0x53
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
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	0
	.4byte	0
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	.LBB19
	.4byte	.LBE19
	.4byte	.LBB20
	.4byte	.LBE20
	.4byte	0
	.4byte	0
	.4byte	.LBB21
	.4byte	.LBE21
	.4byte	.LBB24
	.4byte	.LBE24
	.4byte	0
	.4byte	0
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.LFB110
	.4byte	.LFE110
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF114:
	.ascii	"ICPR\000"
.LASF134:
	.ascii	"PUPDR\000"
.LASF137:
	.ascii	"LCKR\000"
.LASF28:
	.ascii	"CAN1_RX0_IRQn\000"
.LASF9:
	.ascii	"PVD_IRQn\000"
.LASF72:
	.ascii	"CAN2_RX0_IRQn\000"
.LASF123:
	.ascii	"M0AR\000"
.LASF29:
	.ascii	"CAN1_RX1_IRQn\000"
.LASF77:
	.ascii	"DMA2_Stream6_IRQn\000"
.LASF31:
	.ascii	"EXTI9_5_IRQn\000"
.LASF81:
	.ascii	"I2C3_ER_IRQn\000"
.LASF126:
	.ascii	"LISR\000"
.LASF39:
	.ascii	"I2C1_EV_IRQn\000"
.LASF91:
	.ascii	"__uint8_t\000"
.LASF132:
	.ascii	"OTYPER\000"
.LASF76:
	.ascii	"DMA2_Stream5_IRQn\000"
.LASF188:
	.ascii	"send\000"
.LASF181:
	.ascii	"TIM_TypeDef\000"
.LASF131:
	.ascii	"MODER\000"
.LASF172:
	.ascii	"CCR2\000"
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
.LASF192:
	.ascii	"pwm_cnt\000"
.LASF112:
	.ascii	"ISPR\000"
.LASF152:
	.ascii	"AHB1LPENR\000"
.LASF201:
	.ascii	"initUSART2\000"
.LASF164:
	.ascii	"CCMR1\000"
.LASF165:
	.ascii	"CCMR2\000"
.LASF101:
	.ascii	"long long int\000"
.LASF92:
	.ascii	"signed char\000"
.LASF73:
	.ascii	"CAN2_RX1_IRQn\000"
.LASF87:
	.ascii	"CRYP_IRQn\000"
.LASF141:
	.ascii	"AHB1RSTR\000"
.LASF14:
	.ascii	"EXTI0_IRQn\000"
.LASF102:
	.ascii	"long long unsigned int\000"
.LASF170:
	.ascii	"RESERVED10\000"
.LASF176:
	.ascii	"RESERVED11\000"
.LASF177:
	.ascii	"RESERVED12\000"
.LASF179:
	.ascii	"RESERVED13\000"
.LASF180:
	.ascii	"RESERVED14\000"
.LASF98:
	.ascii	"long int\000"
.LASF145:
	.ascii	"APB2RSTR\000"
.LASF155:
	.ascii	"APB1LPENR\000"
.LASF206:
	.ascii	"init_TIM4\000"
.LASF24:
	.ascii	"DMA1_Stream5_IRQn\000"
.LASF167:
	.ascii	"CCER\000"
.LASF197:
	.ascii	"datasentflag\000"
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
.LASF138:
	.ascii	"GPIO_TypeDef\000"
.LASF52:
	.ascii	"TIM8_UP_TIM13_IRQn\000"
.LASF95:
	.ascii	"__uint16_t\000"
.LASF133:
	.ascii	"OSPEEDR\000"
.LASF99:
	.ascii	"__uint32_t\000"
.LASF195:
	.ascii	"LED_Data\000"
.LASF6:
	.ascii	"PendSV_IRQn\000"
.LASF78:
	.ascii	"DMA2_Stream7_IRQn\000"
.LASF193:
	.ascii	"reset_LED\000"
.LASF175:
	.ascii	"BDTR\000"
.LASF130:
	.ascii	"DMA_TypeDef\000"
.LASF86:
	.ascii	"DCMI_IRQn\000"
.LASF103:
	.ascii	"unsigned int\000"
.LASF22:
	.ascii	"DMA1_Stream3_IRQn\000"
.LASF25:
	.ascii	"DMA1_Stream6_IRQn\000"
.LASF204:
	.ascii	"/home/emir/git/ambulight/semafor\000"
.LASF202:
	.ascii	"GNU C 4.9.3 20141119 (release) [ARM/embedded-4_9-br"
	.ascii	"anch revision 218278] -mlittle-endian -mthumb -mcpu"
	.ascii	"=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mfpu"
	.ascii	"=fpv4-sp-d16 -g -O2 -fsingle-precision-constant\000"
.LASF1:
	.ascii	"MemoryManagement_IRQn\000"
.LASF80:
	.ascii	"I2C3_EV_IRQn\000"
.LASF100:
	.ascii	"long unsigned int\000"
.LASF196:
	.ascii	"LED_Mod\000"
.LASF161:
	.ascii	"RCC_TypeDef\000"
.LASF35:
	.ascii	"TIM1_CC_IRQn\000"
.LASF82:
	.ascii	"OTG_HS_EP1_OUT_IRQn\000"
.LASF57:
	.ascii	"SDIO_IRQn\000"
.LASF187:
	.ascii	"data\000"
.LASF4:
	.ascii	"SVCall_IRQn\000"
.LASF162:
	.ascii	"SMCR\000"
.LASF66:
	.ascii	"DMA2_Stream2_IRQn\000"
.LASF160:
	.ascii	"PLLI2SCFGR\000"
.LASF27:
	.ascii	"CAN1_TX_IRQn\000"
.LASF143:
	.ascii	"AHB3RSTR\000"
.LASF48:
	.ascii	"EXTI15_10_IRQn\000"
.LASF43:
	.ascii	"SPI1_IRQn\000"
.LASF20:
	.ascii	"DMA1_Stream1_IRQn\000"
.LASF203:
	.ascii	"main.c\000"
.LASF127:
	.ascii	"HISR\000"
.LASF156:
	.ascii	"APB2LPENR\000"
.LASF51:
	.ascii	"TIM8_BRK_TIM12_IRQn\000"
.LASF200:
	.ascii	"printUSART2\000"
.LASF7:
	.ascii	"SysTick_IRQn\000"
.LASF3:
	.ascii	"UsageFault_IRQn\000"
.LASF53:
	.ascii	"TIM8_TRG_COM_TIM14_IRQn\000"
.LASF189:
	.ascii	"WS2812_send\000"
.LASF183:
	.ascii	"IRQn\000"
.LASF128:
	.ascii	"LIFCR\000"
.LASF120:
	.ascii	"sizetype\000"
.LASF69:
	.ascii	"ETH_IRQn\000"
.LASF33:
	.ascii	"TIM1_UP_TIM10_IRQn\000"
.LASF67:
	.ascii	"DMA2_Stream3_IRQn\000"
.LASF184:
	.ascii	"LEDnum\000"
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
.LASF208:
	.ascii	"DMA2_Stream7_IRQHandler\000"
.LASF153:
	.ascii	"AHB2LPENR\000"
.LASF110:
	.ascii	"ICER\000"
.LASF210:
	.ascii	"time\000"
.LASF144:
	.ascii	"APB1RSTR\000"
.LASF85:
	.ascii	"OTG_HS_IRQn\000"
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
.LASF169:
	.ascii	"RESERVED9\000"
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
.LASF194:
	.ascii	"ITM_RxBuffer\000"
.LASF207:
	.ascii	"init_DMA1\000"
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
.LASF154:
	.ascii	"AHB3LPENR\000"
.LASF61:
	.ascii	"UART5_IRQn\000"
.LASF34:
	.ascii	"TIM1_TRG_COM_TIM11_IRQn\000"
.LASF205:
	.ascii	"NVIC_EnableIRQ\000"
.LASF96:
	.ascii	"short unsigned int\000"
.LASF198:
	.ascii	"colorBuff\000"
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
.LASF211:
	.ascii	"delay_ms\000"
.LASF75:
	.ascii	"OTG_FS_IRQn\000"
.LASF107:
	.ascii	"uint32_t\000"
.LASF166:
	.ascii	"RESERVED7\000"
.LASF46:
	.ascii	"USART2_IRQn\000"
.LASF168:
	.ascii	"RESERVED8\000"
.LASF150:
	.ascii	"APB1ENR\000"
.LASF55:
	.ascii	"DMA1_Stream7_IRQn\000"
.LASF186:
	.ascii	"blue\000"
.LASF191:
	.ascii	"color\000"
.LASF182:
	.ascii	"char\000"
.LASF2:
	.ascii	"BusFault_IRQn\000"
.LASF54:
	.ascii	"TIM8_CC_IRQn\000"
.LASF178:
	.ascii	"DMAR\000"
.LASF142:
	.ascii	"AHB2RSTR\000"
.LASF63:
	.ascii	"TIM7_IRQn\000"
.LASF190:
	.ascii	"index\000"
.LASF83:
	.ascii	"OTG_HS_EP1_IN_IRQn\000"
.LASF0:
	.ascii	"NonMaskableInt_IRQn\000"
.LASF97:
	.ascii	"__int32_t\000"
.LASF199:
	.ascii	"set_LED\000"
.LASF122:
	.ascii	"NDTR\000"
.LASF125:
	.ascii	"DMA_Stream_TypeDef\000"
.LASF148:
	.ascii	"AHB2ENR\000"
.LASF10:
	.ascii	"TAMP_STAMP_IRQn\000"
.LASF5:
	.ascii	"DebugMonitor_IRQn\000"
.LASF64:
	.ascii	"DMA2_Stream0_IRQn\000"
.LASF124:
	.ascii	"M1AR\000"
.LASF47:
	.ascii	"USART3_IRQn\000"
.LASF159:
	.ascii	"SSCGR\000"
.LASF171:
	.ascii	"CCR1\000"
.LASF36:
	.ascii	"TIM2_IRQn\000"
.LASF173:
	.ascii	"CCR3\000"
.LASF174:
	.ascii	"CCR4\000"
.LASF71:
	.ascii	"CAN2_TX_IRQn\000"
.LASF135:
	.ascii	"BSRRL\000"
.LASF185:
	.ascii	"green\000"
.LASF157:
	.ascii	"BDCR\000"
.LASF136:
	.ascii	"BSRRH\000"
.LASF104:
	.ascii	"uint8_t\000"
.LASF111:
	.ascii	"RSERVED1\000"
.LASF119:
	.ascii	"STIR\000"
.LASF45:
	.ascii	"USART1_IRQn\000"
.LASF147:
	.ascii	"AHB1ENR\000"
.LASF163:
	.ascii	"DIER\000"
.LASF89:
	.ascii	"FPU_IRQn\000"
.LASF140:
	.ascii	"CFGR\000"
.LASF40:
	.ascii	"I2C1_ER_IRQn\000"
.LASF26:
	.ascii	"ADC_IRQn\000"
.LASF65:
	.ascii	"DMA2_Stream1_IRQn\000"
.LASF209:
	.ascii	"main\000"
.LASF129:
	.ascii	"HIFCR\000"
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
.LASF15:
	.ascii	"EXTI1_IRQn\000"
.LASF19:
	.ascii	"DMA1_Stream0_IRQn\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.9.3 20141119 (release) [ARM/embedded-4_9-branch revision 218278]"
