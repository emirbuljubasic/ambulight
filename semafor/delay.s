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
	.file	"delay.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	delay_ms
	.thumb
	.thumb_func
	.type	delay_ms, %function
delay_ms:
.LFB110:
	.file 1 "src/delay.c"
	.loc 1 6 0
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
	str	r0, [r7, #4]
	.loc 1 8 0
	ldr	r2, .L6
	ldr	r3, .L6
	ldr	r3, [r3, #64]
	orr	r3, r3, #64
	str	r3, [r2, #64]
	.loc 1 9 0
	ldr	r3, .L6+4
	movs	r2, #83
	strh	r2, [r3, #40]	@ movhi
	.loc 1 11 0
	ldr	r3, .L6+4
	mov	r2, #1000
	str	r2, [r3, #44]
	.loc 1 12 0
	ldr	r3, .L6+4
	movs	r2, #132
	strh	r2, [r3]	@ movhi
	.loc 1 14 0
	ldr	r2, .L6+4
	ldr	r3, .L6+4
	ldrh	r3, [r3, #20]	@ movhi
	uxth	r3, r3
	orr	r3, r3, #1
	uxth	r3, r3
	strh	r3, [r2, #20]	@ movhi
	.loc 1 15 0
	ldr	r2, .L6+4
	ldr	r3, .L6+4
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	orr	r3, r3, #1
	uxth	r3, r3
	strh	r3, [r2]	@ movhi
	.loc 1 16 0
	b	.L2
.L5:
	.loc 1 18 0
	nop
.L3:
	.loc 1 18 0 is_stmt 0 discriminator 1
	ldr	r3, .L6+4
	ldrh	r3, [r3, #16]	@ movhi
	uxth	r3, r3
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L3
	.loc 1 21 0 is_stmt 1
	ldr	r2, .L6+4
	ldr	r3, .L6+4
	ldrh	r3, [r3, #16]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #1
	uxth	r3, r3
	strh	r3, [r2, #16]	@ movhi
	.loc 1 22 0
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	str	r3, [r7, #4]
.L2:
	.loc 1 16 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L4
	.loc 1 16 0 is_stmt 0 discriminator 1
	ldr	r3, .L6+8
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L5
.L4:
	.loc 1 25 0 is_stmt 1
	ldr	r2, .L6+4
	ldr	r3, .L6+4
	ldrh	r3, [r3, #16]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #1
	uxth	r3, r3
	strh	r3, [r2, #16]	@ movhi
	.loc 1 26 0
	ldr	r2, .L6+4
	ldr	r3, .L6+4
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #1
	uxth	r3, r3
	strh	r3, [r2]	@ movhi
	.loc 1 27 0
	ldr	r2, .L6
	ldr	r3, .L6
	ldr	r3, [r3, #64]
	bic	r3, r3, #64
	str	r3, [r2, #64]
	.loc 1 28 0
	adds	r7, r7, #12
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
.L7:
	.align	2
.L6:
	.word	1073887232
	.word	1073747968
	.word	state
	.cfi_endproc
.LFE110:
	.size	delay_ms, .-delay_ms
	.align	2
	.global	delay_ms_irq
	.thumb
	.thumb_func
	.type	delay_ms_irq, %function
delay_ms_irq:
.LFB111:
	.loc 1 30 0
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
	str	r0, [r7, #4]
	.loc 1 31 0
	ldr	r2, .L12
	ldr	r3, .L12
	ldr	r3, [r3, #64]
	orr	r3, r3, #64
	str	r3, [r2, #64]
	.loc 1 32 0
	ldr	r3, .L12+4
	movs	r2, #83
	strh	r2, [r3, #40]	@ movhi
	.loc 1 34 0
	ldr	r3, .L12+4
	mov	r2, #1000
	str	r2, [r3, #44]
	.loc 1 35 0
	ldr	r3, .L12+4
	movs	r2, #132
	strh	r2, [r3]	@ movhi
	.loc 1 37 0
	ldr	r2, .L12+4
	ldr	r3, .L12+4
	ldrh	r3, [r3, #20]	@ movhi
	uxth	r3, r3
	orr	r3, r3, #1
	uxth	r3, r3
	strh	r3, [r2, #20]	@ movhi
	.loc 1 38 0
	ldr	r2, .L12+4
	ldr	r3, .L12+4
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	orr	r3, r3, #1
	uxth	r3, r3
	strh	r3, [r2]	@ movhi
	.loc 1 39 0
	b	.L9
.L11:
	.loc 1 41 0
	nop
.L10:
	.loc 1 41 0 is_stmt 0 discriminator 1
	ldr	r3, .L12+4
	ldrh	r3, [r3, #16]	@ movhi
	uxth	r3, r3
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L10
	.loc 1 44 0 is_stmt 1
	ldr	r2, .L12+4
	ldr	r3, .L12+4
	ldrh	r3, [r3, #16]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #1
	uxth	r3, r3
	strh	r3, [r2, #16]	@ movhi
	.loc 1 45 0
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	str	r3, [r7, #4]
.L9:
	.loc 1 39 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L11
	.loc 1 48 0
	ldr	r2, .L12+4
	ldr	r3, .L12+4
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #1
	uxth	r3, r3
	strh	r3, [r2]	@ movhi
	.loc 1 49 0
	ldr	r2, .L12
	ldr	r3, .L12
	ldr	r3, [r3, #64]
	bic	r3, r3, #64
	str	r3, [r2, #64]
	.loc 1 50 0
	adds	r7, r7, #12
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
.L13:
	.align	2
.L12:
	.word	1073887232
	.word	1073747968
	.cfi_endproc
.LFE111:
	.size	delay_ms_irq, .-delay_ms_irq
	.align	2
	.global	delay_us
	.thumb
	.thumb_func
	.type	delay_us, %function
delay_us:
.LFB112:
	.loc 1 52 0
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
	str	r0, [r7, #4]
	.loc 1 54 0
	ldr	r2, .L18
	ldr	r3, .L18
	ldr	r3, [r3, #64]
	orr	r3, r3, #64
	str	r3, [r2, #64]
	.loc 1 55 0
	ldr	r3, .L18+4
	movs	r2, #0
	strh	r2, [r3, #40]	@ movhi
	.loc 1 57 0
	ldr	r3, .L18+4
	movs	r2, #84
	str	r2, [r3, #44]
	.loc 1 58 0
	ldr	r3, .L18+4
	movs	r2, #132
	strh	r2, [r3]	@ movhi
	.loc 1 61 0
	ldr	r2, .L18+4
	ldr	r3, .L18+4
	ldrh	r3, [r3, #20]	@ movhi
	uxth	r3, r3
	orr	r3, r3, #1
	uxth	r3, r3
	strh	r3, [r2, #20]	@ movhi
	.loc 1 62 0
	ldr	r2, .L18+4
	ldr	r3, .L18+4
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	orr	r3, r3, #1
	uxth	r3, r3
	strh	r3, [r2]	@ movhi
	.loc 1 63 0
	b	.L15
.L17:
	.loc 1 64 0
	nop
.L16:
	.loc 1 64 0 is_stmt 0 discriminator 1
	ldr	r3, .L18+4
	ldrh	r3, [r3, #16]	@ movhi
	uxth	r3, r3
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L16
	.loc 1 67 0 is_stmt 1
	ldr	r2, .L18+4
	ldr	r3, .L18+4
	ldrh	r3, [r3, #16]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #1
	uxth	r3, r3
	strh	r3, [r2, #16]	@ movhi
	.loc 1 68 0
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	str	r3, [r7, #4]
.L15:
	.loc 1 63 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L17
	.loc 1 70 0
	ldr	r2, .L18+4
	ldr	r3, .L18+4
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #1
	uxth	r3, r3
	strh	r3, [r2]	@ movhi
	.loc 1 71 0
	ldr	r2, .L18
	ldr	r3, .L18
	ldr	r3, [r3, #64]
	bic	r3, r3, #64
	str	r3, [r2, #64]
	.loc 1 72 0
	adds	r7, r7, #12
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
.L19:
	.align	2
.L18:
	.word	1073887232
	.word	1073747968
	.cfi_endproc
.LFE112:
	.size	delay_us, .-delay_us
	.align	2
	.global	initSTOPWATCH
	.thumb
	.thumb_func
	.type	initSTOPWATCH, %function
initSTOPWATCH:
.LFB113:
	.loc 1 74 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 75 0
	ldr	r2, .L21
	ldr	r3, .L21
	ldr	r3, [r3, #64]
	orr	r3, r3, #8
	str	r3, [r2, #64]
	.loc 1 76 0
	ldr	r3, .L21+4
	movs	r2, #83
	strh	r2, [r3, #40]	@ movhi
	.loc 1 78 0
	ldr	r3, .L21+4
	mov	r2, #-1
	str	r2, [r3, #44]
	.loc 1 79 0
	ldr	r3, .L21+4
	movs	r2, #132
	strh	r2, [r3]	@ movhi
	.loc 1 81 0
	ldr	r3, .L21+4
	movs	r2, #0
	strh	r2, [r3, #4]	@ movhi
	.loc 1 82 0
	ldr	r3, .L21+4
	movs	r2, #0
	str	r2, [r3, #36]
	.loc 1 83 0
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
.L22:
	.align	2
.L21:
	.word	1073887232
	.word	1073744896
	.cfi_endproc
.LFE113:
	.size	initSTOPWATCH, .-initSTOPWATCH
	.align	2
	.global	startSTOPWATCH
	.thumb
	.thumb_func
	.type	startSTOPWATCH, %function
startSTOPWATCH:
.LFB114:
	.loc 1 85 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 86 0
	ldr	r2, .L24
	ldr	r3, .L24
	ldrh	r3, [r3, #20]	@ movhi
	uxth	r3, r3
	orr	r3, r3, #1
	uxth	r3, r3
	strh	r3, [r2, #20]	@ movhi
	.loc 1 87 0
	ldr	r2, .L24
	ldr	r3, .L24
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	orr	r3, r3, #1
	uxth	r3, r3
	strh	r3, [r2]	@ movhi
	.loc 1 88 0
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
.L25:
	.align	2
.L24:
	.word	1073744896
	.cfi_endproc
.LFE114:
	.size	startSTOPWATCH, .-startSTOPWATCH
	.align	2
	.global	stopSTOPWATCH
	.thumb
	.thumb_func
	.type	stopSTOPWATCH, %function
stopSTOPWATCH:
.LFB115:
	.loc 1 90 0
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
	.loc 1 93 0
	ldr	r3, .L28
	ldr	r3, [r3, #36]
	str	r3, [r7, #4]
	.loc 1 94 0
	ldr	r2, .L28
	ldr	r3, .L28
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #1
	uxth	r3, r3
	strh	r3, [r2]	@ movhi
	.loc 1 95 0
	ldr	r3, [r7, #4]
	.loc 1 96 0
	mov	r0, r3
	adds	r7, r7, #12
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
.L29:
	.align	2
.L28:
	.word	1073744896
	.cfi_endproc
.LFE115:
	.size	stopSTOPWATCH, .-stopSTOPWATCH
	.align	2
	.global	initSYSTIMER
	.thumb
	.thumb_func
	.type	initSYSTIMER, %function
initSYSTIMER:
.LFB116:
	.loc 1 98 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 99 0
	ldr	r2, .L31
	ldr	r3, .L31
	ldr	r3, [r3, #64]
	orr	r3, r3, #1
	str	r3, [r2, #64]
	.loc 1 100 0
	mov	r3, #1073741824
	movs	r2, #83
	strh	r2, [r3, #40]	@ movhi
	.loc 1 102 0
	mov	r3, #1073741824
	mov	r2, #-1
	str	r2, [r3, #44]
	.loc 1 103 0
	mov	r3, #1073741824
	movs	r2, #132
	strh	r2, [r3]	@ movhi
	.loc 1 105 0
	mov	r3, #1073741824
	movs	r2, #0
	strh	r2, [r3, #4]	@ movhi
	.loc 1 106 0
	mov	r3, #1073741824
	movs	r2, #0
	str	r2, [r3, #36]
	.loc 1 107 0
	mov	r2, #1073741824
	mov	r3, #1073741824
	ldrh	r3, [r3, #20]	@ movhi
	uxth	r3, r3
	orr	r3, r3, #1
	uxth	r3, r3
	strh	r3, [r2, #20]	@ movhi
	.loc 1 108 0
	mov	r2, #1073741824
	mov	r3, #1073741824
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	orr	r3, r3, #1
	uxth	r3, r3
	strh	r3, [r2]	@ movhi
	.loc 1 109 0
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
.L32:
	.align	2
.L31:
	.word	1073887232
	.cfi_endproc
.LFE116:
	.size	initSYSTIMER, .-initSYSTIMER
	.align	2
	.global	getSYSTIMER
	.thumb
	.thumb_func
	.type	getSYSTIMER, %function
getSYSTIMER:
.LFB117:
	.loc 1 111 0
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
	.loc 1 112 0
	mov	r3, #1073741824
	ldr	r3, [r3, #36]
	str	r3, [r7, #4]
	.loc 1 113 0
	ldr	r3, [r7, #4]
	.loc 1 114 0
	mov	r0, r3
	adds	r7, r7, #12
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE117:
	.size	getSYSTIMER, .-getSYSTIMER
	.align	2
	.global	chk4TimeoutSYSTIMER
	.thumb
	.thumb_func
	.type	chk4TimeoutSYSTIMER, %function
chk4TimeoutSYSTIMER:
.LFB118:
	.loc 1 116 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 117 0
	mov	r3, #1073741824
	ldr	r3, [r3, #36]
	str	r3, [r7, #12]
	.loc 1 118 0
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcc	.L36
	.loc 1 119 0
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bhi	.L37
	.loc 1 120 0
	movs	r3, #0
	b	.L38
.L37:
	.loc 1 122 0
	movs	r3, #1
	b	.L38
.L36:
.LBB2:
	.loc 1 124 0
	ldr	r3, [r7, #4]
	mvns	r3, r3
	str	r3, [r7, #8]
	.loc 1 125 0
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	add	r2, r2, r3
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L39
	.loc 1 126 0
	movs	r3, #0
	b	.L38
.L39:
	.loc 1 128 0
	movs	r3, #1
.L38:
.LBE2:
	.loc 1 130 0
	mov	r0, r3
	adds	r7, r7, #20
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE118:
	.size	chk4TimeoutSYSTIMER, .-chk4TimeoutSYSTIMER
.Letext0:
	.file 2 "/home/emir/msut/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/emir/msut/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/stdint.h"
	.file 4 "inc/stm32f4xx.h"
	.file 5 "/home/emir/msut/STM32F407/Libraries/CMSIS/Include/core_cm4.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x5e4
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0x1
	.4byte	.LASF85
	.4byte	.LASF86
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
	.byte	0x88
	.byte	0x4
	.2byte	0x2dd
	.4byte	0x278
	.uleb128 0x9
	.ascii	"CR\000"
	.byte	0x4
	.2byte	0x2df
	.4byte	0xca
	.byte	0
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x4
	.2byte	0x2e0
	.4byte	0xca
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x2e1
	.4byte	0xca
	.byte	0x8
	.uleb128 0x9
	.ascii	"CIR\000"
	.byte	0x4
	.2byte	0x2e2
	.4byte	0xca
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x2e3
	.4byte	0xca
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x2e4
	.4byte	0xca
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x2e5
	.4byte	0xca
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x2e6
	.4byte	0xb8
	.byte	0x1c
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x2e7
	.4byte	0xca
	.byte	0x20
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x2e8
	.4byte	0xca
	.byte	0x24
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x2e9
	.4byte	0xcf
	.byte	0x28
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x2ea
	.4byte	0xca
	.byte	0x30
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x2eb
	.4byte	0xca
	.byte	0x34
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x2ec
	.4byte	0xca
	.byte	0x38
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x2ed
	.4byte	0xb8
	.byte	0x3c
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x2ee
	.4byte	0xca
	.byte	0x40
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x4
	.2byte	0x2ef
	.4byte	0xca
	.byte	0x44
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x4
	.2byte	0x2f0
	.4byte	0xcf
	.byte	0x48
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x4
	.2byte	0x2f1
	.4byte	0xca
	.byte	0x50
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x4
	.2byte	0x2f2
	.4byte	0xca
	.byte	0x54
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x4
	.2byte	0x2f3
	.4byte	0xca
	.byte	0x58
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x4
	.2byte	0x2f4
	.4byte	0xb8
	.byte	0x5c
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x4
	.2byte	0x2f5
	.4byte	0xca
	.byte	0x60
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x4
	.2byte	0x2f6
	.4byte	0xca
	.byte	0x64
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x4
	.2byte	0x2f7
	.4byte	0xcf
	.byte	0x68
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x4
	.2byte	0x2f8
	.4byte	0xca
	.byte	0x70
	.uleb128 0x9
	.ascii	"CSR\000"
	.byte	0x4
	.2byte	0x2f9
	.4byte	0xca
	.byte	0x74
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x4
	.2byte	0x2fa
	.4byte	0xcf
	.byte	0x78
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x4
	.2byte	0x2fb
	.4byte	0xca
	.byte	0x80
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x4
	.2byte	0x2fc
	.4byte	0xca
	.byte	0x84
	.byte	0
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x4
	.2byte	0x2fd
	.4byte	0xe9
	.uleb128 0x8
	.byte	0x54
	.byte	0x4
	.2byte	0x369
	.4byte	0x460
	.uleb128 0x9
	.ascii	"CR1\000"
	.byte	0x4
	.2byte	0x36b
	.4byte	0xdf
	.byte	0
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x36c
	.4byte	0xa2
	.byte	0x2
	.uleb128 0x9
	.ascii	"CR2\000"
	.byte	0x4
	.2byte	0x36d
	.4byte	0xdf
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x36e
	.4byte	0xa2
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0x4
	.2byte	0x36f
	.4byte	0xdf
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x370
	.4byte	0xa2
	.byte	0xa
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x4
	.2byte	0x371
	.4byte	0xdf
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x4
	.2byte	0x372
	.4byte	0xa2
	.byte	0xe
	.uleb128 0x9
	.ascii	"SR\000"
	.byte	0x4
	.2byte	0x373
	.4byte	0xdf
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x4
	.2byte	0x374
	.4byte	0xa2
	.byte	0x12
	.uleb128 0x9
	.ascii	"EGR\000"
	.byte	0x4
	.2byte	0x375
	.4byte	0xdf
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x4
	.2byte	0x376
	.4byte	0xa2
	.byte	0x16
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0x4
	.2byte	0x377
	.4byte	0xdf
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x4
	.2byte	0x378
	.4byte	0xa2
	.byte	0x1a
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0x4
	.2byte	0x379
	.4byte	0xdf
	.byte	0x1c
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0x4
	.2byte	0x37a
	.4byte	0xa2
	.byte	0x1e
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0x4
	.2byte	0x37b
	.4byte	0xdf
	.byte	0x20
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0x4
	.2byte	0x37c
	.4byte	0xa2
	.byte	0x22
	.uleb128 0x9
	.ascii	"CNT\000"
	.byte	0x4
	.2byte	0x37d
	.4byte	0xca
	.byte	0x24
	.uleb128 0x9
	.ascii	"PSC\000"
	.byte	0x4
	.2byte	0x37e
	.4byte	0xdf
	.byte	0x28
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0x4
	.2byte	0x37f
	.4byte	0xa2
	.byte	0x2a
	.uleb128 0x9
	.ascii	"ARR\000"
	.byte	0x4
	.2byte	0x380
	.4byte	0xca
	.byte	0x2c
	.uleb128 0x9
	.ascii	"RCR\000"
	.byte	0x4
	.2byte	0x381
	.4byte	0xdf
	.byte	0x30
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0x4
	.2byte	0x382
	.4byte	0xa2
	.byte	0x32
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x4
	.2byte	0x383
	.4byte	0xca
	.byte	0x34
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0x4
	.2byte	0x384
	.4byte	0xca
	.byte	0x38
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0x4
	.2byte	0x385
	.4byte	0xca
	.byte	0x3c
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0x4
	.2byte	0x386
	.4byte	0xca
	.byte	0x40
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0x4
	.2byte	0x387
	.4byte	0xdf
	.byte	0x44
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0x4
	.2byte	0x388
	.4byte	0xa2
	.byte	0x46
	.uleb128 0x9
	.ascii	"DCR\000"
	.byte	0x4
	.2byte	0x389
	.4byte	0xdf
	.byte	0x48
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0x4
	.2byte	0x38a
	.4byte	0xa2
	.byte	0x4a
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0x4
	.2byte	0x38b
	.4byte	0xdf
	.byte	0x4c
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0x4
	.2byte	0x38c
	.4byte	0xa2
	.byte	0x4e
	.uleb128 0x9
	.ascii	"OR\000"
	.byte	0x4
	.2byte	0x38d
	.4byte	0xdf
	.byte	0x50
	.uleb128 0xa
	.4byte	.LASF64
	.byte	0x4
	.2byte	0x38e
	.4byte	0xa2
	.byte	0x52
	.byte	0
	.uleb128 0xb
	.4byte	.LASF65
	.byte	0x4
	.2byte	0x38f
	.4byte	0x284
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF66
	.uleb128 0xc
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.4byte	0x488
	.uleb128 0xd
	.4byte	.LASF67
	.sleb128 0
	.uleb128 0xd
	.4byte	.LASF68
	.sleb128 1
	.byte	0
	.uleb128 0xe
	.4byte	.LASF69
	.byte	0x1
	.byte	0x6
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4ab
	.uleb128 0xf
	.ascii	"ms\000"
	.byte	0x1
	.byte	0x6
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xe
	.4byte	.LASF70
	.byte	0x1
	.byte	0x1e
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4ce
	.uleb128 0xf
	.ascii	"ms\000"
	.byte	0x1
	.byte	0x1e
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xe
	.4byte	.LASF71
	.byte	0x1
	.byte	0x34
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4f1
	.uleb128 0xf
	.ascii	"us\000"
	.byte	0x1
	.byte	0x34
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x10
	.4byte	.LASF72
	.byte	0x1
	.byte	0x4a
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x10
	.4byte	.LASF73
	.byte	0x1
	.byte	0x55
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.4byte	.LASF75
	.byte	0x1
	.byte	0x5a
	.4byte	0xb8
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x53b
	.uleb128 0x12
	.4byte	.LASF77
	.byte	0x1
	.byte	0x5b
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x10
	.4byte	.LASF74
	.byte	0x1
	.byte	0x62
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.4byte	.LASF76
	.byte	0x1
	.byte	0x6f
	.4byte	0xb8
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x574
	.uleb128 0x12
	.4byte	.LASF77
	.byte	0x1
	.byte	0x70
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x11
	.4byte	.LASF78
	.byte	0x1
	.byte	0x74
	.4byte	0x97
	.4byte	.LFB118
	.4byte	.LFE118-.LFB118
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5d0
	.uleb128 0x13
	.4byte	.LASF79
	.byte	0x1
	.byte	0x74
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.4byte	.LASF80
	.byte	0x1
	.byte	0x74
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.4byte	.LASF77
	.byte	0x1
	.byte	0x75
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x14
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x12
	.4byte	.LASF81
	.byte	0x1
	.byte	0x7c
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF82
	.byte	0x5
	.2byte	0x51b
	.4byte	0xe4
	.uleb128 0x16
	.4byte	.LASF83
	.byte	0x1
	.byte	0x4
	.4byte	0x473
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
	.uleb128 0xa
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
	.uleb128 0xd
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x10
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x3c
	.uleb128 0x19
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
.LASF34:
	.ascii	"AHB1LPENR\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF51:
	.ascii	"CCER\000"
.LASF69:
	.ascii	"delay_ms\000"
.LASF24:
	.ascii	"APB1RSTR\000"
.LASF28:
	.ascii	"AHB2ENR\000"
.LASF62:
	.ascii	"DMAR\000"
.LASF83:
	.ascii	"state\000"
.LASF49:
	.ascii	"CCMR2\000"
.LASF2:
	.ascii	"short int\000"
.LASF17:
	.ascii	"sizetype\000"
.LASF41:
	.ascii	"BDCR\000"
.LASF44:
	.ascii	"PLLI2SCFGR\000"
.LASF8:
	.ascii	"__uint32_t\000"
.LASF73:
	.ascii	"startSTOPWATCH\000"
.LASF71:
	.ascii	"delay_us\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF43:
	.ascii	"SSCGR\000"
.LASF20:
	.ascii	"AHB1RSTR\000"
.LASF19:
	.ascii	"CFGR\000"
.LASF36:
	.ascii	"AHB3LPENR\000"
.LASF13:
	.ascii	"uint8_t\000"
.LASF63:
	.ascii	"RESERVED13\000"
.LASF31:
	.ascii	"APB1ENR\000"
.LASF85:
	.ascii	"src/delay.c\000"
.LASF29:
	.ascii	"AHB3ENR\000"
.LASF10:
	.ascii	"long long int\000"
.LASF55:
	.ascii	"CCR1\000"
.LASF56:
	.ascii	"CCR2\000"
.LASF57:
	.ascii	"CCR3\000"
.LASF58:
	.ascii	"CCR4\000"
.LASF45:
	.ascii	"RCC_TypeDef\000"
.LASF76:
	.ascii	"getSYSTIMER\000"
.LASF80:
	.ascii	"period\000"
.LASF25:
	.ascii	"APB2RSTR\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF48:
	.ascii	"CCMR1\000"
.LASF65:
	.ascii	"TIM_TypeDef\000"
.LASF46:
	.ascii	"SMCR\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF54:
	.ascii	"RESERVED10\000"
.LASF60:
	.ascii	"RESERVED11\000"
.LASF61:
	.ascii	"RESERVED12\000"
.LASF32:
	.ascii	"APB2ENR\000"
.LASF64:
	.ascii	"RESERVED14\000"
.LASF75:
	.ascii	"stopSTOPWATCH\000"
.LASF0:
	.ascii	"signed char\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF16:
	.ascii	"uint32_t\000"
.LASF74:
	.ascii	"initSYSTIMER\000"
.LASF12:
	.ascii	"unsigned int\000"
.LASF21:
	.ascii	"AHB2RSTR\000"
.LASF14:
	.ascii	"uint16_t\000"
.LASF39:
	.ascii	"APB2LPENR\000"
.LASF77:
	.ascii	"time\000"
.LASF47:
	.ascii	"DIER\000"
.LASF18:
	.ascii	"PLLCFGR\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF38:
	.ascii	"APB1LPENR\000"
.LASF66:
	.ascii	"char\000"
.LASF7:
	.ascii	"long int\000"
.LASF59:
	.ascii	"BDTR\000"
.LASF15:
	.ascii	"int32_t\000"
.LASF84:
	.ascii	"GNU C 4.9.3 20141119 (release) [ARM/embedded-4_9-br"
	.ascii	"anch revision 218278] -mlittle-endian -mthumb -mcpu"
	.ascii	"=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mfpu"
	.ascii	"=fpv4-sp-d16 -g -O0 -fsingle-precision-constant\000"
.LASF67:
	.ascii	"emergency\000"
.LASF35:
	.ascii	"AHB2LPENR\000"
.LASF23:
	.ascii	"RESERVED0\000"
.LASF26:
	.ascii	"RESERVED1\000"
.LASF30:
	.ascii	"RESERVED2\000"
.LASF33:
	.ascii	"RESERVED3\000"
.LASF37:
	.ascii	"RESERVED4\000"
.LASF40:
	.ascii	"RESERVED5\000"
.LASF42:
	.ascii	"RESERVED6\000"
.LASF50:
	.ascii	"RESERVED7\000"
.LASF52:
	.ascii	"RESERVED8\000"
.LASF53:
	.ascii	"RESERVED9\000"
.LASF27:
	.ascii	"AHB1ENR\000"
.LASF81:
	.ascii	"utmp32\000"
.LASF79:
	.ascii	"btime\000"
.LASF6:
	.ascii	"__int32_t\000"
.LASF72:
	.ascii	"initSTOPWATCH\000"
.LASF70:
	.ascii	"delay_ms_irq\000"
.LASF68:
	.ascii	"normal\000"
.LASF86:
	.ascii	"/home/emir/git/ambulight/semafor\000"
.LASF22:
	.ascii	"AHB3RSTR\000"
.LASF82:
	.ascii	"ITM_RxBuffer\000"
.LASF78:
	.ascii	"chk4TimeoutSYSTIMER\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.9.3 20141119 (release) [ARM/embedded-4_9-branch revision 218278]"
