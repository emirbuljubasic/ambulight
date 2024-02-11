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
	.global	init_TIM3
	.thumb
	.thumb_func
	.type	init_TIM3, %function
init_TIM3:
.LFB111:
	.file 1 "main.c"
	.loc 1 169 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 171 0
	ldr	r1, .L3
	.loc 1 172 0
	ldr	r2, .L3+4
	.loc 1 171 0
	ldr	r0, [r1, #48]
	.loc 1 180 0
	ldr	r3, .L3+8
	.loc 1 171 0
	orr	r0, r0, #1
	.loc 1 169 0
	push	{r4}
	.cfi_def_cfa_offset 4
	.cfi_offset 4, -4
	.loc 1 171 0
	str	r0, [r1, #48]
	.loc 1 172 0
	ldr	r0, [r2]
	orr	r0, r0, #8192
	str	r0, [r2]
	.loc 1 173 0
	ldr	r0, [r2, #4]
	str	r0, [r2, #4]
	.loc 1 174 0
	ldr	r0, [r2, #32]
	orr	r0, r0, #33554432
	str	r0, [r2, #32]
	.loc 1 179 0
	ldr	r2, [r1, #64]
	.loc 1 180 0
	movw	r4, #4199
	.loc 1 179 0
	orr	r2, r2, #2
	.loc 1 181 0
	mov	r0, #1000
	.loc 1 179 0
	str	r2, [r1, #64]
	.loc 1 180 0
	strh	r4, [r3, #40]	@ movhi
	.loc 1 181 0
	str	r0, [r3, #44]
	.loc 1 182 0
	ldrh	r2, [r3, #24]
	.loc 1 192 0
	ldr	r4, [sp], #4
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 182 0
	uxth	r2, r2
	orr	r2, r2, #104
	strh	r2, [r3, #24]	@ movhi
	.loc 1 183 0
	ldrh	r2, [r3, #32]
	bic	r2, r2, #2
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	strh	r2, [r3, #32]	@ movhi
	.loc 1 184 0
	ldrh	r2, [r3]
	uxth	r2, r2
	orr	r2, r2, #132
	strh	r2, [r3]	@ movhi
	.loc 1 186 0
	ldrh	r2, [r3, #12]
	uxth	r2, r2
	orr	r2, r2, #16896
	strh	r2, [r3, #12]	@ movhi
	.loc 1 187 0
	ldrh	r2, [r3, #12]
	uxth	r2, r2
	orr	r2, r2, #256
	strh	r2, [r3, #12]	@ movhi
	.loc 1 189 0
	ldrh	r2, [r3, #20]
	uxth	r2, r2
	orr	r2, r2, #1
	strh	r2, [r3, #20]	@ movhi
	.loc 1 190 0
	ldrh	r2, [r3, #32]
	uxth	r2, r2
	orr	r2, r2, #1
	strh	r2, [r3, #32]	@ movhi
	.loc 1 191 0
	ldrh	r2, [r3]
	uxth	r2, r2
	orr	r2, r2, #1
	strh	r2, [r3]	@ movhi
	.loc 1 192 0
	bx	lr
.L4:
	.align	2
.L3:
	.word	1073887232
	.word	1073872896
	.word	1073742848
	.cfi_endproc
.LFE111:
	.size	init_TIM3, .-init_TIM3
	.align	2
	.global	init_DMA1
	.thumb
	.thumb_func
	.type	init_DMA1, %function
init_DMA1:
.LFB112:
	.loc 1 194 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 196 0
	ldr	r2, .L10
	.loc 1 198 0
	ldr	r1, .L10+4
	.loc 1 196 0
	ldr	r3, [r2, #48]
	orr	r3, r3, #2097152
	str	r3, [r2, #48]
	.loc 1 198 0
	ldr	r3, [r1]
	bic	r3, r3, #1
	str	r3, [r1]
.L6:
	.loc 1 199 0 discriminator 1
	ldr	r3, [r1]
	ldr	r2, .L10+4
	ands	r3, r3, #1
	bne	.L6
	.loc 1 194 0
	push	{r4, r5, r6}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 6, -4
	.loc 1 202 0
	ldr	r1, .L10+8
	ldr	r4, [r2]
	.loc 1 207 0
	ldr	r6, .L10+12
	.loc 1 208 0
	ldr	r5, .L10+16
.LBB8:
.LBB9:
	.file 2 "/home/emir/msut/STM32F407/Libraries/CMSIS/Include/core_cm4.h"
	.loc 2 1162 0
	ldr	r0, .L10+20
.LBE9:
.LBE8:
	.loc 1 202 0
	ands	r1, r1, r4
	.loc 1 210 0
	movs	r4, #16
	.loc 1 202 0
	str	r1, [r2]
	.loc 1 207 0
	str	r6, [r2, #8]
	.loc 1 208 0
	str	r5, [r2, #12]
	.loc 1 210 0
	str	r4, [r2, #4]
	.loc 1 212 0
	ldr	r1, [r2]
	orr	r1, r1, #167772160
	str	r1, [r2]
	.loc 1 213 0
	ldr	r1, [r2]
	orr	r1, r1, #131072
	str	r1, [r2]
	.loc 1 215 0
	ldr	r1, [r2]
	orr	r1, r1, #64
	str	r1, [r2]
	.loc 1 216 0
	ldr	r1, [r2]
	orr	r1, r1, #1024
	str	r1, [r2]
	.loc 1 217 0
	ldr	r1, [r2]
	orrs	r1, r1, r4
	str	r1, [r2]
	.loc 1 219 0
	ldr	r1, [r2]
	orr	r1, r1, #8192
	str	r1, [r2]
	.loc 1 220 0
	ldr	r1, [r2]
	orr	r1, r1, #2048
	str	r1, [r2]
	.loc 1 222 0
	ldr	r1, [r2]
	orr	r1, r1, #256
	str	r1, [r2]
	.loc 1 224 0
	ldr	r1, [r2]
	orr	r1, r1, #1
.LBB11:
.LBB12:
	.loc 2 1075 0
	mov	r4, #32768
.LBE12:
.LBE11:
	.loc 1 224 0
	str	r1, [r2]
.LVL0:
.LBB14:
.LBB10:
	.loc 2 1162 0
	strb	r3, [r0, #783]
.LVL1:
.LBE10:
.LBE14:
.LBB15:
.LBB13:
	.loc 2 1075 0
	str	r4, [r0]
.LBE13:
.LBE15:
	.loc 1 227 0
	pop	{r4, r5, r6}
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr
.L11:
	.align	2
.L10:
	.word	1073887232
	.word	1073897584
	.word	-267386880
	.word	1073742900
	.word	.LANCHOR0
	.word	-536813312
	.cfi_endproc
.LFE112:
	.size	init_DMA1, .-init_DMA1
	.align	2
	.global	DMA1_Stream4_IRQHandler
	.thumb
	.thumb_func
	.type	DMA1_Stream4_IRQHandler, %function
DMA1_Stream4_IRQHandler:
.LFB113:
	.loc 1 229 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 230 0
	ldr	r3, .L13
	.loc 1 231 0
	ldr	r2, .L13+4
	.loc 1 230 0
	movs	r1, #1
	strb	r1, [r3]
	.loc 1 231 0
	ldr	r3, [r2, #12]
	orr	r3, r3, #32
	str	r3, [r2, #12]
	bx	lr
.L14:
	.align	2
.L13:
	.word	.LANCHOR1
	.word	1073897472
	.cfi_endproc
.LFE113:
	.size	DMA1_Stream4_IRQHandler, .-DMA1_Stream4_IRQHandler
	.align	2
	.global	getData4DAC
	.thumb
	.thumb_func
	.type	getData4DAC, %function
getData4DAC:
.LFB114:
	.loc 1 235 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2:
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
	.loc 1 237 0
	flds	s16, .L23
	.loc 1 242 0
	flds	s22, .L23+4
	flds	s20, .L23+8
	.loc 1 240 0
	flds	s21, .L23+12
	.loc 1 243 0
	flds	s18, .L23+16
	.loc 1 244 0
	flds	s17, .L23+20
	addw	r6, r0, #1998
	.loc 1 242 0
	fconsts	s19, #96
	b	.L18
.LVL3:
.L16:
	.loc 1 241 0
	cmp	r5, #2
	beq	.L21
.L17:
	.loc 1 243 0 discriminator 2
	fmuls	s15, s14, s18
	.loc 1 244 0 discriminator 2
	fadds	s16, s16, s17
.LVL4:
	.loc 1 243 0 discriminator 2
	ftouizs	s15, s15
	fmrs	r3, s15	@ int
	strh	r3, [r4, #2]!	@ movhi
	.loc 1 238 0 discriminator 2
	cmp	r4, r6
	beq	.L22
.LVL5:
.L18:
	.loc 1 239 0
	cmp	r5, #1
	bne	.L16
	.loc 1 240 0
	fmuls	s0, s16, s21
	bl	sinf
.LVL6:
	fcpys	s14, s19
	vfma.f32	s14, s0, s20
.LVL7:
	b	.L17
.L21:
	.loc 1 242 0
	fmuls	s0, s16, s22
	bl	sinf
.LVL8:
	fcpys	s14, s19
	vfma.f32	s14, s0, s20
.LVL9:
	b	.L17
.L22:
	.loc 1 246 0
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
.LVL10:
	pop	{r4, r5, r6, pc}
.LVL11:
.L24:
	.align	2
.L23:
	.word	0
	.word	1187273073
	.word	1053609165
	.word	1190490061
	.word	1166012416
	.word	944879383
	.cfi_endproc
.LFE114:
	.size	getData4DAC, .-getData4DAC
	.align	2
	.global	init_TIM1
	.thumb
	.thumb_func
	.type	init_TIM1, %function
init_TIM1:
.LFB115:
	.loc 1 248 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 250 0
	ldr	r0, .L27
	.loc 1 251 0
	ldr	r2, .L27+4
	.loc 1 259 0
	ldr	r3, .L27+8
.LBB16:
.LBB17:
	.loc 2 1075 0
	ldr	r1, .L27+12
.LBE17:
.LBE16:
	.loc 1 248 0
	push	{r4, r5, r6}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 6, -4
	.loc 1 250 0
	ldr	r4, [r0, #48]
	orr	r4, r4, #1
	str	r4, [r0, #48]
	.loc 1 251 0
	ldr	r4, [r2]
	bic	r4, r4, #196608
	str	r4, [r2]
	.loc 1 252 0
	ldr	r4, [r2]
	orr	r4, r4, #131072
	str	r4, [r2]
	.loc 1 253 0
	ldr	r4, [r2, #36]
	orr	r4, r4, #1
	str	r4, [r2, #36]
	.loc 1 254 0
	ldr	r4, [r2, #12]
	bic	r4, r4, #196608
	str	r4, [r2, #12]
	.loc 1 255 0
	ldr	r4, [r2, #12]
	orr	r4, r4, #131072
	str	r4, [r2, #12]
	.loc 1 258 0
	ldr	r2, [r0, #68]
	.loc 1 263 0
	movs	r4, #0
	.loc 1 259 0
	movw	r6, #8399
	.loc 1 258 0
	orr	r2, r2, #1
	.loc 1 260 0
	mov	r5, #2000
	.loc 1 258 0
	str	r2, [r0, #68]
	.loc 1 259 0
	strh	r6, [r3, #40]	@ movhi
	.loc 1 260 0
	str	r5, [r3, #44]
	.loc 1 263 0
	strh	r4, [r3]	@ movhi
	.loc 1 264 0
	strh	r4, [r3, #4]	@ movhi
	.loc 1 266 0
	ldrh	r2, [r3, #24]
	bic	r2, r2, #3
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	strh	r2, [r3, #24]	@ movhi
	.loc 1 267 0
	ldrh	r2, [r3, #24]
	bic	r2, r2, #768
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	strh	r2, [r3, #24]	@ movhi
	.loc 1 268 0
	ldrh	r2, [r3, #24]
	uxth	r2, r2
	orr	r2, r2, #512
	orr	r2, r2, #1
	strh	r2, [r3, #24]	@ movhi
	.loc 1 270 0
	ldrh	r2, [r3, #32]
	bic	r2, r2, #2
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	strh	r2, [r3, #32]	@ movhi
	.loc 1 271 0
	ldrh	r2, [r3, #32]
	bic	r2, r2, #8
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	strh	r2, [r3, #32]	@ movhi
	.loc 1 272 0
	ldrh	r2, [r3, #32]
	bic	r2, r2, #128
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	strh	r2, [r3, #32]	@ movhi
	.loc 1 273 0
	ldrh	r2, [r3, #32]
	uxth	r2, r2
	orr	r2, r2, #32
	strh	r2, [r3, #32]	@ movhi
	.loc 1 274 0
	ldrh	r2, [r3, #32]
	uxth	r2, r2
	orr	r2, r2, #17
	strh	r2, [r3, #32]	@ movhi
	.loc 1 276 0
	ldrh	r2, [r3, #8]
	bic	r2, r2, #112
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	strh	r2, [r3, #8]	@ movhi
	.loc 1 277 0
	ldrh	r2, [r3, #8]
	bic	r2, r2, #7
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	strh	r2, [r3, #8]	@ movhi
	.loc 1 278 0
	ldrh	r2, [r3, #8]
	uxth	r2, r2
	orr	r2, r2, #84
	strh	r2, [r3, #8]	@ movhi
	.loc 1 280 0
	ldrh	r2, [r3, #12]
	uxth	r2, r2
	orr	r2, r2, #2
.LBB20:
.LBB18:
	.loc 2 1075 0
	mov	r0, #134217728
.LBE18:
.LBE20:
	.loc 1 280 0
	strh	r2, [r3, #12]	@ movhi
.LVL12:
.LBB21:
.LBB19:
	.loc 2 1075 0
	str	r0, [r1]
.LBE19:
.LBE21:
	.loc 1 282 0
	ldrh	r2, [r3]
	uxth	r2, r2
	orr	r2, r2, #1
	strh	r2, [r3]	@ movhi
	.loc 1 283 0
	pop	{r4, r5, r6}
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr
.L28:
	.align	2
.L27:
	.word	1073887232
	.word	1073872896
	.word	1073807360
	.word	-536813312
	.cfi_endproc
.LFE115:
	.size	init_TIM1, .-init_TIM1
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.thumb
	.thumb_func
	.type	main, %function
main:
.LFB110:
	.loc 1 50 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 4000
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL13:
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	subw	sp, sp, #4004
	.cfi_def_cfa_offset 4040
	.loc 1 57 0
	bl	init_TIM1
.LVL14:
	.loc 1 58 0
	movs	r0, #45
	bl	initUSART2
.LVL15:
	.loc 1 60 0
	bl	initDAC1
.LVL16:
	.loc 1 61 0
	movs	r0, #30
	movw	r1, #48000
	bl	initCS43L22
.LVL17:
	.loc 1 63 0
	mov	r0, sp
	movs	r1, #1
	bl	getData4DAC
.LVL18:
	.loc 1 64 0
	movs	r1, #2
	add	r0, sp, #2000
	bl	getData4DAC
.LVL19:
	.loc 1 70 0
	ldr	r1, .L48
	.loc 1 71 0
	ldr	r3, .L48+4
	.loc 1 70 0
	ldr	r2, [r1, #48]
	ldr	r6, .L48+8
	.loc 1 141 0
	ldr	fp, .L48+32
	.loc 1 122 0
	ldr	r8, .L48+36
	.loc 1 88 0
	ldr	r10, .L48+8
	.loc 1 70 0
	orr	r2, r2, #1
	str	r2, [r1, #48]
	.loc 1 71 0
	ldr	r2, [r3]
	bic	r2, r2, #3
	str	r2, [r3]
	.loc 1 72 0
	ldr	r2, [r3, #12]
	bic	r2, r2, #3
	str	r2, [r3, #12]
	.loc 1 73 0
	ldr	r2, [r3, #12]
	orr	r2, r2, #2
	str	r2, [r3, #12]
	.loc 1 88 0
	ldr	r3, [r6, #4]
	.loc 1 55 0
	movs	r5, #0
	.loc 1 88 0
	cmp	r3, #16
	.loc 1 141 0
	mov	r7, fp
	.loc 1 54 0
	mov	r4, r5
.LVL20:
	.loc 1 88 0
	beq	.L44
.LVL21:
.L30:
	.loc 1 105 0
	ldr	r3, .L48+4
	ldr	r3, [r3, #16]
	lsls	r2, r3, #31
	bmi	.L45
.L33:
	.loc 1 141 0 discriminator 1
	ldrh	r3, [fp, #8]
	lsls	r3, r3, #30
	bpl	.L33
	.loc 1 143 0
	movs	r3, #0
	strh	r3, [r7, #12]	@ movhi
	.loc 1 145 0
	cmp	r5, #0
	beq	.L46
	.loc 1 151 0
	cmp	r5, #0
	bne	.L47
.L35:
.LVL22:
	.loc 1 156 0
	cmp	r4, #1000
	.loc 1 165 0
	mov	r0, #500
	.loc 1 159 0
	itt	cs
	eorcs	r5, r5, #1
.LVL23:
	.loc 1 158 0
	movcs	r4, #0
.LVL24:
	.loc 1 165 0
	bl	delay_us
.LVL25:
	.loc 1 88 0
	ldr	r3, [r6, #4]
	ldr	r10, .L48+8
	cmp	r3, #16
	bne	.L30
.L44:
	.loc 1 93 0
	mov	r9, #0
	.loc 1 96 0
	ldr	r0, .L48+12
	.loc 1 93 0
	str	r9, [r10, #4]
	.loc 1 96 0
	bl	printUSARTMOJ
.LVL26:
	.loc 1 97 0
	ldr	r0, .L48+16
	ldrh	r1, [r10, #8]
	bl	printUSARTMOJ
.LVL27:
	.loc 1 98 0
	ldr	r3, .L48+20
	ldr	r0, .L48+24
	ldrh	r1, [r3, #32]
	bl	printUSARTMOJ
.LVL28:
	.loc 1 105 0
	ldr	r3, .L48+4
	.loc 1 99 0
	strh	r9, [r10, #8]	@ movhi
	.loc 1 105 0
	ldr	r3, [r3, #16]
	lsls	r2, r3, #31
	bpl	.L33
.L45:
	.loc 1 107 0
	mov	r0, #500
	bl	delay_ms
.LVL29:
	.loc 1 108 0
	ldrb	r3, [r6]	@ zero_extendqisi2
	ldr	r2, .L48+8
	cbnz	r3, .L32
	.loc 1 110 0
	movs	r3, #1
	strb	r3, [r2]
	.loc 1 111 0
	bl	init_TIM3
.LVL30:
	.loc 1 112 0
	bl	init_DMA1
.LVL31:
	.loc 1 113 0
	ldr	r2, .L48+28
	ldr	r3, [r2]
	orr	r3, r3, #1
	str	r3, [r2]
	b	.L33
.L46:
	.loc 1 146 0
	ldrh	r0, [sp, r4, lsl #1]
	bl	setDAC1
.LVL32:
	.loc 1 148 0
	adds	r4, r4, #1
.LVL33:
	b	.L35
.L32:
	.loc 1 118 0
	ldr	r10, .L48+40
	movs	r3, #1
	.loc 1 116 0
	movs	r0, #0
	strb	r0, [r2]
	.loc 1 120 0
	mov	r0, r3
	.loc 1 118 0
	str	r3, [r10, #52]
	.loc 1 120 0
	bl	delay_ms
.LVL34:
	.loc 1 122 0
	ldr	r3, [r8]
	.loc 1 124 0
	ldr	r2, .L48+28
	.loc 1 122 0
	bic	r3, r3, #1
	str	r3, [r8]
	.loc 1 123 0
	ldrh	r3, [r10]
	bic	r3, r3, #1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r10]	@ movhi
	.loc 1 124 0
	ldr	r3, [r2]
	bic	r3, r3, #1
	str	r3, [r2]
	.loc 1 125 0
	movs	r0, #100
	bl	delay_ms
.LVL35:
	b	.L33
.L47:
	.loc 1 152 0
	add	r3, sp, #2000
	ldrh	r0, [r3, r4, lsl #1]
	bl	setDAC1
.LVL36:
	.loc 1 153 0
	adds	r4, r4, #1
.LVL37:
	b	.L35
.L49:
	.align	2
.L48:
	.word	1073887232
	.word	1073872896
	.word	.LANCHOR1
	.word	.LC0
	.word	.LC1
	.word	.LANCHOR0
	.word	.LC2
	.word	1073771520
	.word	1073757184
	.word	1073897584
	.word	1073742848
	.cfi_endproc
.LFE110:
	.size	main, .-main
	.text
	.align	2
	.global	TIM1_CC_IRQHandler
	.thumb
	.thumb_func
	.type	TIM1_CC_IRQHandler, %function
TIM1_CC_IRQHandler:
.LFB116:
	.loc 1 285 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 287 0
	ldr	r4, .L69
	.loc 1 286 0
	ldr	r0, .L69+4
	bl	printUSARTMOJ
.LVL38:
	.loc 1 287 0
	ldrh	r3, [r4, #16]
	lsls	r3, r3, #30
	bmi	.L66
.L52:
	.loc 1 313 0
	ldr	r2, .L69
	ldrh	r3, [r2, #16]
	bic	r3, r3, #2
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2, #16]	@ movhi
	pop	{r3, r4, r5, pc}
.L66:
.LBB22:
	.loc 1 288 0
	ldr	r1, [r4, #52]
	ldr	r0, .L69+8
	ldr	r2, [r4, #56]
	bl	printUSARTMOJ
.LVL39:
	.loc 1 289 0
	ldr	r3, .L69+12
	ldr	r1, .L69+16
	ldr	r5, [r3, #4]
	.loc 1 290 0
	ldr	r2, [r4, #52]
	.loc 1 289 0
	ldrh	r1, [r1, #32]
.LVL40:
	.loc 1 290 0
	cmp	r2, #900
	bcc	.L52
	.loc 1 290 0 is_stmt 0 discriminator 1
	ldr	r0, [r4, #52]
	movw	r2, #1100
	cmp	r0, r2
	bhi	.L52
	.loc 1 291 0 is_stmt 1 discriminator 2
	ldr	r2, [r4, #56]
	.loc 1 290 0 discriminator 2
	cmp	r2, #149
	bls	.L52
	.loc 1 291 0
	ldr	r2, [r4, #56]
	cmp	r2, #600
	bhi	.L52
	.loc 1 292 0
	ldr	r0, [r4, #56]
	.loc 1 289 0
	movs	r2, #1
	lsl	r5, r2, r5
.LVL41:
	.loc 1 292 0
	cmp	r0, #350
	.loc 1 289 0
	and	r1, r1, r5
.LVL42:
	.loc 1 292 0
	bcs	.L67
	.loc 1 293 0 discriminator 3
	ldr	r2, [r4, #56]
	.loc 1 292 0 discriminator 3
	cmp	r2, #350
	bhi	.L57
	.loc 1 293 0
	cbnz	r1, .L57
.L58:
	.loc 1 297 0
	ldr	r2, [r3, #4]
	adds	r2, r2, #1
	str	r2, [r3, #4]
	b	.L52
.L67:
	.loc 1 292 0 discriminator 1
	cbz	r1, .L68
	.loc 1 295 0
	ldr	r0, [r3, #4]
	ldrh	r1, [r3, #8]
	lsls	r2, r2, r0
	orrs	r2, r2, r1
	strh	r2, [r3, #8]	@ movhi
	b	.L58
.L68:
	.loc 1 293 0
	ldr	r2, [r4, #56]
	.loc 1 292 0
	cmp	r2, #350
	bls	.L58
.L57:
	.loc 1 306 0
	movs	r2, #0
	str	r2, [r3, #4]
	b	.L52
.L70:
	.align	2
.L69:
	.word	1073807360
	.word	.LC3
	.word	.LC4
	.word	.LANCHOR1
	.word	.LANCHOR0
.LBE22:
	.cfi_endproc
.LFE116:
	.size	TIM1_CC_IRQHandler, .-TIM1_CC_IRQHandler
	.global	lights_on
	.global	pwm
	.global	pwm_arr_size
	.global	pwm_cnt
	.global	ambulance_id
	.global	pwm_recieved_bits
	.global	irq_counter
	.comm	dev_addr,1,1
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	pwm, %object
	.size	pwm, 32
pwm:
	.short	250
	.short	500
	.short	250
	.short	500
	.short	500
	.short	500
	.short	250
	.short	250
	.short	250
	.short	500
	.short	250
	.short	500
	.short	250
	.short	250
	.short	500
	.short	500
	.type	ambulance_id, %object
	.size	ambulance_id, 2
ambulance_id:
	.short	-13766
	.type	pwm_arr_size, %object
	.size	pwm_arr_size, 1
pwm_arr_size:
	.byte	16
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"GREAT SUCCESS!\012\000"
.LC1:
	.ascii	"%xw\012\000"
	.space	3
.LC2:
	.ascii	"%xw\012\012\000"
	.space	2
.LC3:
	.ascii	"interrupt\000"
	.space	2
.LC4:
	.ascii	"Period: %xw\012Duty C: %xw\012\012\000"
	.bss
	.align	2
	.set	.LANCHOR1,. + 0
	.type	lights_on, %object
	.size	lights_on, 1
lights_on:
	.space	1
	.space	3
	.type	irq_counter, %object
	.size	irq_counter, 4
irq_counter:
	.space	4
	.type	pwm_recieved_bits, %object
	.size	pwm_recieved_bits, 2
pwm_recieved_bits:
	.space	2
	.type	pwm_cnt, %object
	.size	pwm_cnt, 1
pwm_cnt:
	.space	1
	.text
.Letext0:
	.file 3 "./stm32f4xx.h"
	.file 4 "/home/emir/msut/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 5 "/home/emir/msut/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/stdint.h"
	.file 6 "i2c.h"
	.file 7 "./usart.h"
	.file 8 "cs43l22.h"
	.file 9 "./delay.h"
	.file 10 "/home/emir/msut/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/math.h"
	.file 11 "./dac.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x113d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF246
	.byte	0x1
	.4byte	.LASF247
	.4byte	.LASF248
	.4byte	.Ldebug_ranges0+0x50
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF90
	.uleb128 0x3
	.4byte	.LASF220
	.byte	0x1
	.byte	0x3
	.byte	0x91
	.4byte	0x267
	.uleb128 0x4
	.4byte	.LASF0
	.sleb128 -14
	.uleb128 0x4
	.4byte	.LASF1
	.sleb128 -12
	.uleb128 0x4
	.4byte	.LASF2
	.sleb128 -11
	.uleb128 0x4
	.4byte	.LASF3
	.sleb128 -10
	.uleb128 0x4
	.4byte	.LASF4
	.sleb128 -5
	.uleb128 0x4
	.4byte	.LASF5
	.sleb128 -4
	.uleb128 0x4
	.4byte	.LASF6
	.sleb128 -2
	.uleb128 0x4
	.4byte	.LASF7
	.sleb128 -1
	.uleb128 0x4
	.4byte	.LASF8
	.sleb128 0
	.uleb128 0x4
	.4byte	.LASF9
	.sleb128 1
	.uleb128 0x4
	.4byte	.LASF10
	.sleb128 2
	.uleb128 0x4
	.4byte	.LASF11
	.sleb128 3
	.uleb128 0x4
	.4byte	.LASF12
	.sleb128 4
	.uleb128 0x4
	.4byte	.LASF13
	.sleb128 5
	.uleb128 0x4
	.4byte	.LASF14
	.sleb128 6
	.uleb128 0x4
	.4byte	.LASF15
	.sleb128 7
	.uleb128 0x4
	.4byte	.LASF16
	.sleb128 8
	.uleb128 0x4
	.4byte	.LASF17
	.sleb128 9
	.uleb128 0x4
	.4byte	.LASF18
	.sleb128 10
	.uleb128 0x4
	.4byte	.LASF19
	.sleb128 11
	.uleb128 0x4
	.4byte	.LASF20
	.sleb128 12
	.uleb128 0x4
	.4byte	.LASF21
	.sleb128 13
	.uleb128 0x4
	.4byte	.LASF22
	.sleb128 14
	.uleb128 0x4
	.4byte	.LASF23
	.sleb128 15
	.uleb128 0x4
	.4byte	.LASF24
	.sleb128 16
	.uleb128 0x4
	.4byte	.LASF25
	.sleb128 17
	.uleb128 0x4
	.4byte	.LASF26
	.sleb128 18
	.uleb128 0x4
	.4byte	.LASF27
	.sleb128 19
	.uleb128 0x4
	.4byte	.LASF28
	.sleb128 20
	.uleb128 0x4
	.4byte	.LASF29
	.sleb128 21
	.uleb128 0x4
	.4byte	.LASF30
	.sleb128 22
	.uleb128 0x4
	.4byte	.LASF31
	.sleb128 23
	.uleb128 0x4
	.4byte	.LASF32
	.sleb128 24
	.uleb128 0x4
	.4byte	.LASF33
	.sleb128 25
	.uleb128 0x4
	.4byte	.LASF34
	.sleb128 26
	.uleb128 0x4
	.4byte	.LASF35
	.sleb128 27
	.uleb128 0x4
	.4byte	.LASF36
	.sleb128 28
	.uleb128 0x4
	.4byte	.LASF37
	.sleb128 29
	.uleb128 0x4
	.4byte	.LASF38
	.sleb128 30
	.uleb128 0x4
	.4byte	.LASF39
	.sleb128 31
	.uleb128 0x4
	.4byte	.LASF40
	.sleb128 32
	.uleb128 0x4
	.4byte	.LASF41
	.sleb128 33
	.uleb128 0x4
	.4byte	.LASF42
	.sleb128 34
	.uleb128 0x4
	.4byte	.LASF43
	.sleb128 35
	.uleb128 0x4
	.4byte	.LASF44
	.sleb128 36
	.uleb128 0x4
	.4byte	.LASF45
	.sleb128 37
	.uleb128 0x4
	.4byte	.LASF46
	.sleb128 38
	.uleb128 0x4
	.4byte	.LASF47
	.sleb128 39
	.uleb128 0x4
	.4byte	.LASF48
	.sleb128 40
	.uleb128 0x4
	.4byte	.LASF49
	.sleb128 41
	.uleb128 0x4
	.4byte	.LASF50
	.sleb128 42
	.uleb128 0x4
	.4byte	.LASF51
	.sleb128 43
	.uleb128 0x4
	.4byte	.LASF52
	.sleb128 44
	.uleb128 0x4
	.4byte	.LASF53
	.sleb128 45
	.uleb128 0x4
	.4byte	.LASF54
	.sleb128 46
	.uleb128 0x4
	.4byte	.LASF55
	.sleb128 47
	.uleb128 0x4
	.4byte	.LASF56
	.sleb128 48
	.uleb128 0x4
	.4byte	.LASF57
	.sleb128 49
	.uleb128 0x4
	.4byte	.LASF58
	.sleb128 50
	.uleb128 0x4
	.4byte	.LASF59
	.sleb128 51
	.uleb128 0x4
	.4byte	.LASF60
	.sleb128 52
	.uleb128 0x4
	.4byte	.LASF61
	.sleb128 53
	.uleb128 0x4
	.4byte	.LASF62
	.sleb128 54
	.uleb128 0x4
	.4byte	.LASF63
	.sleb128 55
	.uleb128 0x4
	.4byte	.LASF64
	.sleb128 56
	.uleb128 0x4
	.4byte	.LASF65
	.sleb128 57
	.uleb128 0x4
	.4byte	.LASF66
	.sleb128 58
	.uleb128 0x4
	.4byte	.LASF67
	.sleb128 59
	.uleb128 0x4
	.4byte	.LASF68
	.sleb128 60
	.uleb128 0x4
	.4byte	.LASF69
	.sleb128 61
	.uleb128 0x4
	.4byte	.LASF70
	.sleb128 62
	.uleb128 0x4
	.4byte	.LASF71
	.sleb128 63
	.uleb128 0x4
	.4byte	.LASF72
	.sleb128 64
	.uleb128 0x4
	.4byte	.LASF73
	.sleb128 65
	.uleb128 0x4
	.4byte	.LASF74
	.sleb128 66
	.uleb128 0x4
	.4byte	.LASF75
	.sleb128 67
	.uleb128 0x4
	.4byte	.LASF76
	.sleb128 68
	.uleb128 0x4
	.4byte	.LASF77
	.sleb128 69
	.uleb128 0x4
	.4byte	.LASF78
	.sleb128 70
	.uleb128 0x4
	.4byte	.LASF79
	.sleb128 71
	.uleb128 0x4
	.4byte	.LASF80
	.sleb128 72
	.uleb128 0x4
	.4byte	.LASF81
	.sleb128 73
	.uleb128 0x4
	.4byte	.LASF82
	.sleb128 74
	.uleb128 0x4
	.4byte	.LASF83
	.sleb128 75
	.uleb128 0x4
	.4byte	.LASF84
	.sleb128 76
	.uleb128 0x4
	.4byte	.LASF85
	.sleb128 77
	.uleb128 0x4
	.4byte	.LASF86
	.sleb128 78
	.uleb128 0x4
	.4byte	.LASF87
	.sleb128 79
	.uleb128 0x4
	.4byte	.LASF88
	.sleb128 80
	.uleb128 0x4
	.4byte	.LASF89
	.sleb128 81
	.byte	0
	.uleb128 0x5
	.4byte	.LASF92
	.byte	0x3
	.byte	0xef
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF91
	.uleb128 0x5
	.4byte	.LASF93
	.byte	0x4
	.byte	0x1d
	.4byte	0x284
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF94
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF95
	.uleb128 0x5
	.4byte	.LASF96
	.byte	0x4
	.byte	0x2b
	.4byte	0x29d
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF97
	.uleb128 0x5
	.4byte	.LASF98
	.byte	0x4
	.byte	0x3f
	.4byte	0x2af
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF99
	.uleb128 0x5
	.4byte	.LASF100
	.byte	0x4
	.byte	0x41
	.4byte	0x2c1
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF101
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF102
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF103
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF104
	.uleb128 0x5
	.4byte	.LASF105
	.byte	0x5
	.byte	0x15
	.4byte	0x279
	.uleb128 0x5
	.4byte	.LASF106
	.byte	0x5
	.byte	0x21
	.4byte	0x292
	.uleb128 0x5
	.4byte	.LASF107
	.byte	0x5
	.byte	0x2c
	.4byte	0x2a4
	.uleb128 0x5
	.4byte	.LASF108
	.byte	0x5
	.byte	0x2d
	.4byte	0x2b6
	.uleb128 0x7
	.2byte	0xe04
	.byte	0x2
	.2byte	0x130
	.4byte	0x3cc
	.uleb128 0x8
	.4byte	.LASF109
	.byte	0x2
	.2byte	0x132
	.4byte	0x3e3
	.byte	0
	.uleb128 0x8
	.4byte	.LASF110
	.byte	0x2
	.2byte	0x133
	.4byte	0x3e8
	.byte	0x20
	.uleb128 0x8
	.4byte	.LASF111
	.byte	0x2
	.2byte	0x134
	.4byte	0x3f8
	.byte	0x80
	.uleb128 0x8
	.4byte	.LASF112
	.byte	0x2
	.2byte	0x135
	.4byte	0x3e8
	.byte	0xa0
	.uleb128 0x9
	.4byte	.LASF113
	.byte	0x2
	.2byte	0x136
	.4byte	0x3fd
	.2byte	0x100
	.uleb128 0x9
	.4byte	.LASF114
	.byte	0x2
	.2byte	0x137
	.4byte	0x3e8
	.2byte	0x120
	.uleb128 0x9
	.4byte	.LASF115
	.byte	0x2
	.2byte	0x138
	.4byte	0x402
	.2byte	0x180
	.uleb128 0x9
	.4byte	.LASF116
	.byte	0x2
	.2byte	0x139
	.4byte	0x3e8
	.2byte	0x1a0
	.uleb128 0x9
	.4byte	.LASF117
	.byte	0x2
	.2byte	0x13a
	.4byte	0x407
	.2byte	0x200
	.uleb128 0x9
	.4byte	.LASF118
	.byte	0x2
	.2byte	0x13b
	.4byte	0x40c
	.2byte	0x220
	.uleb128 0xa
	.ascii	"IP\000"
	.byte	0x2
	.2byte	0x13c
	.4byte	0x42c
	.2byte	0x300
	.uleb128 0x9
	.4byte	.LASF119
	.byte	0x2
	.2byte	0x13d
	.4byte	0x431
	.2byte	0x3f0
	.uleb128 0x9
	.4byte	.LASF120
	.byte	0x2
	.2byte	0x13e
	.4byte	0x442
	.2byte	0xe00
	.byte	0
	.uleb128 0xb
	.4byte	0x305
	.4byte	0x3dc
	.uleb128 0xc
	.4byte	0x3dc
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF121
	.uleb128 0xd
	.4byte	0x3cc
	.uleb128 0xb
	.4byte	0x305
	.4byte	0x3f8
	.uleb128 0xc
	.4byte	0x3dc
	.byte	0x17
	.byte	0
	.uleb128 0xd
	.4byte	0x3cc
	.uleb128 0xd
	.4byte	0x3cc
	.uleb128 0xd
	.4byte	0x3cc
	.uleb128 0xd
	.4byte	0x3cc
	.uleb128 0xb
	.4byte	0x305
	.4byte	0x41c
	.uleb128 0xc
	.4byte	0x3dc
	.byte	0x37
	.byte	0
	.uleb128 0xb
	.4byte	0x2e4
	.4byte	0x42c
	.uleb128 0xc
	.4byte	0x3dc
	.byte	0xef
	.byte	0
	.uleb128 0xd
	.4byte	0x41c
	.uleb128 0xb
	.4byte	0x305
	.4byte	0x442
	.uleb128 0xe
	.4byte	0x3dc
	.2byte	0x283
	.byte	0
	.uleb128 0xd
	.4byte	0x305
	.uleb128 0xf
	.4byte	.LASF122
	.byte	0x2
	.2byte	0x13f
	.4byte	0x310
	.uleb128 0x10
	.byte	0x8c
	.byte	0x2
	.2byte	0x150
	.4byte	0x56e
	.uleb128 0x8
	.4byte	.LASF123
	.byte	0x2
	.2byte	0x152
	.4byte	0x56e
	.byte	0
	.uleb128 0x8
	.4byte	.LASF124
	.byte	0x2
	.2byte	0x153
	.4byte	0x442
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF125
	.byte	0x2
	.2byte	0x154
	.4byte	0x442
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF126
	.byte	0x2
	.2byte	0x155
	.4byte	0x442
	.byte	0xc
	.uleb128 0x11
	.ascii	"SCR\000"
	.byte	0x2
	.2byte	0x156
	.4byte	0x442
	.byte	0x10
	.uleb128 0x11
	.ascii	"CCR\000"
	.byte	0x2
	.2byte	0x157
	.4byte	0x442
	.byte	0x14
	.uleb128 0x11
	.ascii	"SHP\000"
	.byte	0x2
	.2byte	0x158
	.4byte	0x583
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF127
	.byte	0x2
	.2byte	0x159
	.4byte	0x442
	.byte	0x24
	.uleb128 0x8
	.4byte	.LASF128
	.byte	0x2
	.2byte	0x15a
	.4byte	0x442
	.byte	0x28
	.uleb128 0x8
	.4byte	.LASF129
	.byte	0x2
	.2byte	0x15b
	.4byte	0x442
	.byte	0x2c
	.uleb128 0x8
	.4byte	.LASF130
	.byte	0x2
	.2byte	0x15c
	.4byte	0x442
	.byte	0x30
	.uleb128 0x8
	.4byte	.LASF131
	.byte	0x2
	.2byte	0x15d
	.4byte	0x442
	.byte	0x34
	.uleb128 0x8
	.4byte	.LASF132
	.byte	0x2
	.2byte	0x15e
	.4byte	0x442
	.byte	0x38
	.uleb128 0x8
	.4byte	.LASF133
	.byte	0x2
	.2byte	0x15f
	.4byte	0x442
	.byte	0x3c
	.uleb128 0x11
	.ascii	"PFR\000"
	.byte	0x2
	.2byte	0x160
	.4byte	0x598
	.byte	0x40
	.uleb128 0x11
	.ascii	"DFR\000"
	.byte	0x2
	.2byte	0x161
	.4byte	0x56e
	.byte	0x48
	.uleb128 0x11
	.ascii	"ADR\000"
	.byte	0x2
	.2byte	0x162
	.4byte	0x56e
	.byte	0x4c
	.uleb128 0x8
	.4byte	.LASF134
	.byte	0x2
	.2byte	0x163
	.4byte	0x5b2
	.byte	0x50
	.uleb128 0x8
	.4byte	.LASF135
	.byte	0x2
	.2byte	0x164
	.4byte	0x5cc
	.byte	0x60
	.uleb128 0x8
	.4byte	.LASF110
	.byte	0x2
	.2byte	0x165
	.4byte	0x5bc
	.byte	0x74
	.uleb128 0x8
	.4byte	.LASF136
	.byte	0x2
	.2byte	0x166
	.4byte	0x442
	.byte	0x88
	.byte	0
	.uleb128 0x12
	.4byte	0x442
	.uleb128 0xb
	.4byte	0x2e4
	.4byte	0x583
	.uleb128 0xc
	.4byte	0x3dc
	.byte	0xb
	.byte	0
	.uleb128 0xd
	.4byte	0x573
	.uleb128 0xb
	.4byte	0x305
	.4byte	0x598
	.uleb128 0xc
	.4byte	0x3dc
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.4byte	0x59d
	.uleb128 0xd
	.4byte	0x588
	.uleb128 0xb
	.4byte	0x305
	.4byte	0x5b2
	.uleb128 0xc
	.4byte	0x3dc
	.byte	0x3
	.byte	0
	.uleb128 0x12
	.4byte	0x5b7
	.uleb128 0xd
	.4byte	0x5a2
	.uleb128 0xb
	.4byte	0x305
	.4byte	0x5cc
	.uleb128 0xc
	.4byte	0x3dc
	.byte	0x4
	.byte	0
	.uleb128 0x12
	.4byte	0x5d1
	.uleb128 0xd
	.4byte	0x5bc
	.uleb128 0xf
	.4byte	.LASF137
	.byte	0x2
	.2byte	0x167
	.4byte	0x453
	.uleb128 0xd
	.4byte	0x2e4
	.uleb128 0xd
	.4byte	0x2ef
	.uleb128 0xd
	.4byte	0x2fa
	.uleb128 0x10
	.byte	0x38
	.byte	0x3
	.2byte	0x1a2
	.4byte	0x6af
	.uleb128 0x11
	.ascii	"CR\000"
	.byte	0x3
	.2byte	0x1a4
	.4byte	0x442
	.byte	0
	.uleb128 0x8
	.4byte	.LASF138
	.byte	0x3
	.2byte	0x1a5
	.4byte	0x442
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF139
	.byte	0x3
	.2byte	0x1a6
	.4byte	0x442
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF140
	.byte	0x3
	.2byte	0x1a7
	.4byte	0x442
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF141
	.byte	0x3
	.2byte	0x1a8
	.4byte	0x442
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF142
	.byte	0x3
	.2byte	0x1a9
	.4byte	0x442
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF143
	.byte	0x3
	.2byte	0x1aa
	.4byte	0x442
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF144
	.byte	0x3
	.2byte	0x1ab
	.4byte	0x442
	.byte	0x1c
	.uleb128 0x8
	.4byte	.LASF145
	.byte	0x3
	.2byte	0x1ac
	.4byte	0x442
	.byte	0x20
	.uleb128 0x8
	.4byte	.LASF146
	.byte	0x3
	.2byte	0x1ad
	.4byte	0x442
	.byte	0x24
	.uleb128 0x8
	.4byte	.LASF147
	.byte	0x3
	.2byte	0x1ae
	.4byte	0x442
	.byte	0x28
	.uleb128 0x8
	.4byte	.LASF148
	.byte	0x3
	.2byte	0x1af
	.4byte	0x442
	.byte	0x2c
	.uleb128 0x8
	.4byte	.LASF149
	.byte	0x3
	.2byte	0x1b0
	.4byte	0x442
	.byte	0x30
	.uleb128 0x11
	.ascii	"SR\000"
	.byte	0x3
	.2byte	0x1b1
	.4byte	0x442
	.byte	0x34
	.byte	0
	.uleb128 0xf
	.4byte	.LASF150
	.byte	0x3
	.2byte	0x1b2
	.4byte	0x5f1
	.uleb128 0x10
	.byte	0x18
	.byte	0x3
	.2byte	0x1d7
	.4byte	0x712
	.uleb128 0x11
	.ascii	"CR\000"
	.byte	0x3
	.2byte	0x1d9
	.4byte	0x442
	.byte	0
	.uleb128 0x8
	.4byte	.LASF151
	.byte	0x3
	.2byte	0x1da
	.4byte	0x442
	.byte	0x4
	.uleb128 0x11
	.ascii	"PAR\000"
	.byte	0x3
	.2byte	0x1db
	.4byte	0x442
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF152
	.byte	0x3
	.2byte	0x1dc
	.4byte	0x442
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF153
	.byte	0x3
	.2byte	0x1dd
	.4byte	0x442
	.byte	0x10
	.uleb128 0x11
	.ascii	"FCR\000"
	.byte	0x3
	.2byte	0x1de
	.4byte	0x442
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.4byte	.LASF154
	.byte	0x3
	.2byte	0x1df
	.4byte	0x6bb
	.uleb128 0x10
	.byte	0x10
	.byte	0x3
	.2byte	0x1e1
	.4byte	0x75c
	.uleb128 0x8
	.4byte	.LASF155
	.byte	0x3
	.2byte	0x1e3
	.4byte	0x442
	.byte	0
	.uleb128 0x8
	.4byte	.LASF156
	.byte	0x3
	.2byte	0x1e4
	.4byte	0x442
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF157
	.byte	0x3
	.2byte	0x1e5
	.4byte	0x442
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF158
	.byte	0x3
	.2byte	0x1e6
	.4byte	0x442
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.4byte	.LASF159
	.byte	0x3
	.2byte	0x1e7
	.4byte	0x71e
	.uleb128 0x10
	.byte	0x28
	.byte	0x3
	.2byte	0x28e
	.4byte	0x7f4
	.uleb128 0x8
	.4byte	.LASF160
	.byte	0x3
	.2byte	0x290
	.4byte	0x442
	.byte	0
	.uleb128 0x8
	.4byte	.LASF161
	.byte	0x3
	.2byte	0x291
	.4byte	0x442
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF162
	.byte	0x3
	.2byte	0x292
	.4byte	0x442
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF163
	.byte	0x3
	.2byte	0x293
	.4byte	0x442
	.byte	0xc
	.uleb128 0x11
	.ascii	"IDR\000"
	.byte	0x3
	.2byte	0x294
	.4byte	0x442
	.byte	0x10
	.uleb128 0x11
	.ascii	"ODR\000"
	.byte	0x3
	.2byte	0x295
	.4byte	0x442
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF164
	.byte	0x3
	.2byte	0x296
	.4byte	0x5e7
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF165
	.byte	0x3
	.2byte	0x297
	.4byte	0x5e7
	.byte	0x1a
	.uleb128 0x8
	.4byte	.LASF166
	.byte	0x3
	.2byte	0x298
	.4byte	0x442
	.byte	0x1c
	.uleb128 0x11
	.ascii	"AFR\000"
	.byte	0x3
	.2byte	0x299
	.4byte	0x7f4
	.byte	0x20
	.byte	0
	.uleb128 0xd
	.4byte	0x588
	.uleb128 0xf
	.4byte	.LASF167
	.byte	0x3
	.2byte	0x29a
	.4byte	0x768
	.uleb128 0x10
	.byte	0x88
	.byte	0x3
	.2byte	0x2dd
	.4byte	0x994
	.uleb128 0x11
	.ascii	"CR\000"
	.byte	0x3
	.2byte	0x2df
	.4byte	0x442
	.byte	0
	.uleb128 0x8
	.4byte	.LASF168
	.byte	0x3
	.2byte	0x2e0
	.4byte	0x442
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF169
	.byte	0x3
	.2byte	0x2e1
	.4byte	0x442
	.byte	0x8
	.uleb128 0x11
	.ascii	"CIR\000"
	.byte	0x3
	.2byte	0x2e2
	.4byte	0x442
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF170
	.byte	0x3
	.2byte	0x2e3
	.4byte	0x442
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF171
	.byte	0x3
	.2byte	0x2e4
	.4byte	0x442
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF172
	.byte	0x3
	.2byte	0x2e5
	.4byte	0x442
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF110
	.byte	0x3
	.2byte	0x2e6
	.4byte	0x305
	.byte	0x1c
	.uleb128 0x8
	.4byte	.LASF173
	.byte	0x3
	.2byte	0x2e7
	.4byte	0x442
	.byte	0x20
	.uleb128 0x8
	.4byte	.LASF174
	.byte	0x3
	.2byte	0x2e8
	.4byte	0x442
	.byte	0x24
	.uleb128 0x8
	.4byte	.LASF175
	.byte	0x3
	.2byte	0x2e9
	.4byte	0x588
	.byte	0x28
	.uleb128 0x8
	.4byte	.LASF176
	.byte	0x3
	.2byte	0x2ea
	.4byte	0x442
	.byte	0x30
	.uleb128 0x8
	.4byte	.LASF177
	.byte	0x3
	.2byte	0x2eb
	.4byte	0x442
	.byte	0x34
	.uleb128 0x8
	.4byte	.LASF178
	.byte	0x3
	.2byte	0x2ec
	.4byte	0x442
	.byte	0x38
	.uleb128 0x8
	.4byte	.LASF114
	.byte	0x3
	.2byte	0x2ed
	.4byte	0x305
	.byte	0x3c
	.uleb128 0x8
	.4byte	.LASF179
	.byte	0x3
	.2byte	0x2ee
	.4byte	0x442
	.byte	0x40
	.uleb128 0x8
	.4byte	.LASF180
	.byte	0x3
	.2byte	0x2ef
	.4byte	0x442
	.byte	0x44
	.uleb128 0x8
	.4byte	.LASF116
	.byte	0x3
	.2byte	0x2f0
	.4byte	0x588
	.byte	0x48
	.uleb128 0x8
	.4byte	.LASF181
	.byte	0x3
	.2byte	0x2f1
	.4byte	0x442
	.byte	0x50
	.uleb128 0x8
	.4byte	.LASF182
	.byte	0x3
	.2byte	0x2f2
	.4byte	0x442
	.byte	0x54
	.uleb128 0x8
	.4byte	.LASF183
	.byte	0x3
	.2byte	0x2f3
	.4byte	0x442
	.byte	0x58
	.uleb128 0x8
	.4byte	.LASF118
	.byte	0x3
	.2byte	0x2f4
	.4byte	0x305
	.byte	0x5c
	.uleb128 0x8
	.4byte	.LASF184
	.byte	0x3
	.2byte	0x2f5
	.4byte	0x442
	.byte	0x60
	.uleb128 0x8
	.4byte	.LASF185
	.byte	0x3
	.2byte	0x2f6
	.4byte	0x442
	.byte	0x64
	.uleb128 0x8
	.4byte	.LASF119
	.byte	0x3
	.2byte	0x2f7
	.4byte	0x588
	.byte	0x68
	.uleb128 0x8
	.4byte	.LASF186
	.byte	0x3
	.2byte	0x2f8
	.4byte	0x442
	.byte	0x70
	.uleb128 0x11
	.ascii	"CSR\000"
	.byte	0x3
	.2byte	0x2f9
	.4byte	0x442
	.byte	0x74
	.uleb128 0x8
	.4byte	.LASF187
	.byte	0x3
	.2byte	0x2fa
	.4byte	0x588
	.byte	0x78
	.uleb128 0x8
	.4byte	.LASF188
	.byte	0x3
	.2byte	0x2fb
	.4byte	0x442
	.byte	0x80
	.uleb128 0x8
	.4byte	.LASF189
	.byte	0x3
	.2byte	0x2fc
	.4byte	0x442
	.byte	0x84
	.byte	0
	.uleb128 0xf
	.4byte	.LASF190
	.byte	0x3
	.2byte	0x2fd
	.4byte	0x805
	.uleb128 0x10
	.byte	0x24
	.byte	0x3
	.2byte	0x34f
	.4byte	0xa92
	.uleb128 0x11
	.ascii	"CR1\000"
	.byte	0x3
	.2byte	0x351
	.4byte	0x5e7
	.byte	0
	.uleb128 0x8
	.4byte	.LASF110
	.byte	0x3
	.2byte	0x352
	.4byte	0x2ef
	.byte	0x2
	.uleb128 0x11
	.ascii	"CR2\000"
	.byte	0x3
	.2byte	0x353
	.4byte	0x5e7
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF175
	.byte	0x3
	.2byte	0x354
	.4byte	0x2ef
	.byte	0x6
	.uleb128 0x11
	.ascii	"SR\000"
	.byte	0x3
	.2byte	0x355
	.4byte	0x5e7
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF114
	.byte	0x3
	.2byte	0x356
	.4byte	0x2ef
	.byte	0xa
	.uleb128 0x11
	.ascii	"DR\000"
	.byte	0x3
	.2byte	0x357
	.4byte	0x5e7
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF116
	.byte	0x3
	.2byte	0x358
	.4byte	0x2ef
	.byte	0xe
	.uleb128 0x8
	.4byte	.LASF191
	.byte	0x3
	.2byte	0x359
	.4byte	0x5e7
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF118
	.byte	0x3
	.2byte	0x35a
	.4byte	0x2ef
	.byte	0x12
	.uleb128 0x8
	.4byte	.LASF192
	.byte	0x3
	.2byte	0x35b
	.4byte	0x5e7
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF119
	.byte	0x3
	.2byte	0x35c
	.4byte	0x2ef
	.byte	0x16
	.uleb128 0x8
	.4byte	.LASF193
	.byte	0x3
	.2byte	0x35d
	.4byte	0x5e7
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF187
	.byte	0x3
	.2byte	0x35e
	.4byte	0x2ef
	.byte	0x1a
	.uleb128 0x8
	.4byte	.LASF194
	.byte	0x3
	.2byte	0x35f
	.4byte	0x5e7
	.byte	0x1c
	.uleb128 0x8
	.4byte	.LASF195
	.byte	0x3
	.2byte	0x360
	.4byte	0x2ef
	.byte	0x1e
	.uleb128 0x8
	.4byte	.LASF196
	.byte	0x3
	.2byte	0x361
	.4byte	0x5e7
	.byte	0x20
	.uleb128 0x8
	.4byte	.LASF197
	.byte	0x3
	.2byte	0x362
	.4byte	0x2ef
	.byte	0x22
	.byte	0
	.uleb128 0xf
	.4byte	.LASF198
	.byte	0x3
	.2byte	0x363
	.4byte	0x9a0
	.uleb128 0x10
	.byte	0x54
	.byte	0x3
	.2byte	0x369
	.4byte	0xc7a
	.uleb128 0x11
	.ascii	"CR1\000"
	.byte	0x3
	.2byte	0x36b
	.4byte	0x5e7
	.byte	0
	.uleb128 0x8
	.4byte	.LASF110
	.byte	0x3
	.2byte	0x36c
	.4byte	0x2ef
	.byte	0x2
	.uleb128 0x11
	.ascii	"CR2\000"
	.byte	0x3
	.2byte	0x36d
	.4byte	0x5e7
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF175
	.byte	0x3
	.2byte	0x36e
	.4byte	0x2ef
	.byte	0x6
	.uleb128 0x8
	.4byte	.LASF199
	.byte	0x3
	.2byte	0x36f
	.4byte	0x5e7
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF114
	.byte	0x3
	.2byte	0x370
	.4byte	0x2ef
	.byte	0xa
	.uleb128 0x8
	.4byte	.LASF200
	.byte	0x3
	.2byte	0x371
	.4byte	0x5e7
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF116
	.byte	0x3
	.2byte	0x372
	.4byte	0x2ef
	.byte	0xe
	.uleb128 0x11
	.ascii	"SR\000"
	.byte	0x3
	.2byte	0x373
	.4byte	0x5e7
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF118
	.byte	0x3
	.2byte	0x374
	.4byte	0x2ef
	.byte	0x12
	.uleb128 0x11
	.ascii	"EGR\000"
	.byte	0x3
	.2byte	0x375
	.4byte	0x5e7
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF119
	.byte	0x3
	.2byte	0x376
	.4byte	0x2ef
	.byte	0x16
	.uleb128 0x8
	.4byte	.LASF201
	.byte	0x3
	.2byte	0x377
	.4byte	0x5e7
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF187
	.byte	0x3
	.2byte	0x378
	.4byte	0x2ef
	.byte	0x1a
	.uleb128 0x8
	.4byte	.LASF202
	.byte	0x3
	.2byte	0x379
	.4byte	0x5e7
	.byte	0x1c
	.uleb128 0x8
	.4byte	.LASF195
	.byte	0x3
	.2byte	0x37a
	.4byte	0x2ef
	.byte	0x1e
	.uleb128 0x8
	.4byte	.LASF203
	.byte	0x3
	.2byte	0x37b
	.4byte	0x5e7
	.byte	0x20
	.uleb128 0x8
	.4byte	.LASF197
	.byte	0x3
	.2byte	0x37c
	.4byte	0x2ef
	.byte	0x22
	.uleb128 0x11
	.ascii	"CNT\000"
	.byte	0x3
	.2byte	0x37d
	.4byte	0x442
	.byte	0x24
	.uleb128 0x11
	.ascii	"PSC\000"
	.byte	0x3
	.2byte	0x37e
	.4byte	0x5e7
	.byte	0x28
	.uleb128 0x8
	.4byte	.LASF204
	.byte	0x3
	.2byte	0x37f
	.4byte	0x2ef
	.byte	0x2a
	.uleb128 0x11
	.ascii	"ARR\000"
	.byte	0x3
	.2byte	0x380
	.4byte	0x442
	.byte	0x2c
	.uleb128 0x11
	.ascii	"RCR\000"
	.byte	0x3
	.2byte	0x381
	.4byte	0x5e7
	.byte	0x30
	.uleb128 0x8
	.4byte	.LASF205
	.byte	0x3
	.2byte	0x382
	.4byte	0x2ef
	.byte	0x32
	.uleb128 0x8
	.4byte	.LASF206
	.byte	0x3
	.2byte	0x383
	.4byte	0x442
	.byte	0x34
	.uleb128 0x8
	.4byte	.LASF207
	.byte	0x3
	.2byte	0x384
	.4byte	0x442
	.byte	0x38
	.uleb128 0x8
	.4byte	.LASF208
	.byte	0x3
	.2byte	0x385
	.4byte	0x442
	.byte	0x3c
	.uleb128 0x8
	.4byte	.LASF209
	.byte	0x3
	.2byte	0x386
	.4byte	0x442
	.byte	0x40
	.uleb128 0x8
	.4byte	.LASF210
	.byte	0x3
	.2byte	0x387
	.4byte	0x5e7
	.byte	0x44
	.uleb128 0x8
	.4byte	.LASF211
	.byte	0x3
	.2byte	0x388
	.4byte	0x2ef
	.byte	0x46
	.uleb128 0x11
	.ascii	"DCR\000"
	.byte	0x3
	.2byte	0x389
	.4byte	0x5e7
	.byte	0x48
	.uleb128 0x8
	.4byte	.LASF212
	.byte	0x3
	.2byte	0x38a
	.4byte	0x2ef
	.byte	0x4a
	.uleb128 0x8
	.4byte	.LASF213
	.byte	0x3
	.2byte	0x38b
	.4byte	0x5e7
	.byte	0x4c
	.uleb128 0x8
	.4byte	.LASF214
	.byte	0x3
	.2byte	0x38c
	.4byte	0x2ef
	.byte	0x4e
	.uleb128 0x11
	.ascii	"OR\000"
	.byte	0x3
	.2byte	0x38d
	.4byte	0x5e7
	.byte	0x50
	.uleb128 0x8
	.4byte	.LASF215
	.byte	0x3
	.2byte	0x38e
	.4byte	0x2ef
	.byte	0x52
	.byte	0
	.uleb128 0xf
	.4byte	.LASF216
	.byte	0x3
	.2byte	0x38f
	.4byte	0xa9e
	.uleb128 0x13
	.byte	0x4
	.4byte	0xc8c
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF217
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF218
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF219
	.uleb128 0x14
	.4byte	.LASF222
	.byte	0x2
	.2byte	0x485
	.byte	0x3
	.4byte	0xcc7
	.uleb128 0x15
	.4byte	.LASF220
	.byte	0x2
	.2byte	0x485
	.4byte	0x267
	.uleb128 0x15
	.4byte	.LASF221
	.byte	0x2
	.2byte	0x485
	.4byte	0x305
	.byte	0
	.uleb128 0x14
	.4byte	.LASF223
	.byte	0x2
	.2byte	0x430
	.byte	0x3
	.4byte	0xce1
	.uleb128 0x15
	.4byte	.LASF220
	.byte	0x2
	.2byte	0x430
	.4byte	0x267
	.byte	0
	.uleb128 0x16
	.4byte	.LASF249
	.byte	0x1
	.byte	0xa9
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x17
	.4byte	.LASF224
	.byte	0x1
	.byte	0xc2
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd3e
	.uleb128 0x18
	.4byte	0xca1
	.4byte	.LBB8
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xe1
	.4byte	0xd27
	.uleb128 0x19
	.4byte	0xcba
	.byte	0
	.uleb128 0x19
	.4byte	0xcae
	.byte	0xf
	.byte	0
	.uleb128 0x1a
	.4byte	0xcc7
	.4byte	.LBB11
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0xe2
	.uleb128 0x19
	.4byte	0xcd4
	.byte	0xf
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF250
	.byte	0x1
	.byte	0xe5
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x17
	.4byte	.LASF225
	.byte	0x1
	.byte	0xeb
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdda
	.uleb128 0x1c
	.4byte	.LASF226
	.byte	0x1
	.byte	0xeb
	.4byte	0xdda
	.4byte	.LLST0
	.uleb128 0x1c
	.4byte	.LASF227
	.byte	0x1
	.byte	0xeb
	.4byte	0x2e4
	.4byte	.LLST1
	.uleb128 0x1d
	.ascii	"n\000"
	.byte	0x1
	.byte	0xec
	.4byte	0x2ef
	.4byte	.LLST2
	.uleb128 0x1d
	.ascii	"y\000"
	.byte	0x1
	.byte	0xed
	.4byte	0x25
	.4byte	.LLST3
	.uleb128 0x1d
	.ascii	"t\000"
	.byte	0x1
	.byte	0xed
	.4byte	0x25
	.4byte	.LLST4
	.uleb128 0x1e
	.4byte	.LVL6
	.4byte	0x10bb
	.4byte	0xdc3
	.uleb128 0x1f
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
	.uleb128 0x20
	.4byte	.LVL8
	.4byte	0x10bb
	.uleb128 0x1f
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
	.uleb128 0x13
	.byte	0x4
	.4byte	0x2ef
	.uleb128 0x21
	.4byte	.LASF251
	.byte	0x1
	.byte	0xf8
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe0d
	.uleb128 0x22
	.4byte	0xcc7
	.4byte	.LBB16
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.2byte	0x119
	.uleb128 0x19
	.4byte	0xcd4
	.byte	0x1b
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF252
	.byte	0x1
	.byte	0x32
	.4byte	0x2d6
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfa6
	.uleb128 0x24
	.4byte	.LASF228
	.byte	0x1
	.byte	0x33
	.4byte	0xfa6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4040
	.uleb128 0x24
	.4byte	.LASF229
	.byte	0x1
	.byte	0x34
	.4byte	0xfa6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2040
	.uleb128 0x1d
	.ascii	"k\000"
	.byte	0x1
	.byte	0x36
	.4byte	0x305
	.4byte	.LLST5
	.uleb128 0x25
	.4byte	.LASF230
	.byte	0x1
	.byte	0x37
	.4byte	0x2d6
	.4byte	.LLST6
	.uleb128 0x26
	.4byte	.LASF231
	.byte	0x1
	.byte	0x42
	.4byte	0x2e4
	.byte	0
	.uleb128 0x26
	.4byte	.LASF232
	.byte	0x1
	.byte	0x43
	.4byte	0x2e4
	.byte	0x10
	.uleb128 0x27
	.4byte	.LVL14
	.4byte	0xde0
	.uleb128 0x1e
	.4byte	.LVL15
	.4byte	0x10d1
	.4byte	0xe95
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x2d
	.byte	0
	.uleb128 0x27
	.4byte	.LVL16
	.4byte	0x10e2
	.uleb128 0x1e
	.4byte	.LVL17
	.4byte	0x10e9
	.4byte	0xeb8
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0xbb80
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x4e
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL18
	.4byte	0xd4f
	.4byte	0xed1
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL19
	.4byte	0xd4f
	.4byte	0xeeb
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2040
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL25
	.4byte	0x10ff
	.4byte	0xf00
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1f4
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL26
	.4byte	0x1110
	.4byte	0xf17
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL27
	.4byte	0x1110
	.4byte	0xf2e
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL28
	.4byte	0x1110
	.4byte	0xf45
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL29
	.4byte	0x1122
	.4byte	0xf5a
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1f4
	.byte	0
	.uleb128 0x27
	.4byte	.LVL30
	.4byte	0xce1
	.uleb128 0x27
	.4byte	.LVL31
	.4byte	0xcf2
	.uleb128 0x27
	.4byte	.LVL32
	.4byte	0x1133
	.uleb128 0x1e
	.4byte	.LVL34
	.4byte	0x1122
	.4byte	0xf88
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL35
	.4byte	0x1122
	.4byte	0xf9c
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.uleb128 0x27
	.4byte	.LVL36
	.4byte	0x1133
	.byte	0
	.uleb128 0xb
	.4byte	0x2ef
	.4byte	0xfb7
	.uleb128 0xe
	.4byte	0x3dc
	.2byte	0x3e7
	.byte	0
	.uleb128 0x28
	.4byte	.LASF233
	.byte	0x1
	.2byte	0x11d
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1012
	.uleb128 0x29
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.4byte	0xffe
	.uleb128 0x2a
	.4byte	.LASF234
	.byte	0x1
	.2byte	0x121
	.4byte	0x2ef
	.4byte	.LLST7
	.uleb128 0x20
	.4byte	.LVL39
	.4byte	0x1110
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL38
	.4byte	0x1110
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF235
	.byte	0x2
	.2byte	0x51b
	.4byte	0x5ec
	.uleb128 0x2c
	.4byte	.LASF236
	.byte	0x6
	.byte	0x14
	.4byte	0x5e2
	.uleb128 0x5
	.byte	0x3
	.4byte	dev_addr
	.uleb128 0x2c
	.4byte	.LASF237
	.byte	0x1
	.byte	0x1f
	.4byte	0x1040
	.uleb128 0x5
	.byte	0x3
	.4byte	irq_counter
	.uleb128 0xd
	.4byte	0x2d6
	.uleb128 0x2c
	.4byte	.LASF238
	.byte	0x1
	.byte	0x20
	.4byte	0x2ef
	.uleb128 0x5
	.byte	0x3
	.4byte	pwm_recieved_bits
	.uleb128 0x2c
	.4byte	.LASF239
	.byte	0x1
	.byte	0x21
	.4byte	0x2ef
	.uleb128 0x5
	.byte	0x3
	.4byte	ambulance_id
	.uleb128 0x2c
	.4byte	.LASF231
	.byte	0x1
	.byte	0x23
	.4byte	0x2e4
	.uleb128 0x5
	.byte	0x3
	.4byte	pwm_cnt
	.uleb128 0x2c
	.4byte	.LASF232
	.byte	0x1
	.byte	0x24
	.4byte	0x2e4
	.uleb128 0x5
	.byte	0x3
	.4byte	pwm_arr_size
	.uleb128 0xb
	.4byte	0x2ef
	.4byte	0x1099
	.uleb128 0xc
	.4byte	0x3dc
	.byte	0xf
	.byte	0
	.uleb128 0x2d
	.ascii	"pwm\000"
	.byte	0x1
	.byte	0x26
	.4byte	0x1089
	.uleb128 0x5
	.byte	0x3
	.4byte	pwm
	.uleb128 0x2c
	.4byte	.LASF240
	.byte	0x1
	.byte	0x2a
	.4byte	0x2e4
	.uleb128 0x5
	.byte	0x3
	.4byte	lights_on
	.uleb128 0x2e
	.4byte	.LASF253
	.byte	0xa
	.2byte	0x13c
	.4byte	0x25
	.4byte	0x10d1
	.uleb128 0x2f
	.4byte	0x25
	.byte	0
	.uleb128 0x30
	.4byte	.LASF241
	.byte	0x7
	.byte	0x10
	.4byte	0x10e2
	.uleb128 0x2f
	.4byte	0x305
	.byte	0
	.uleb128 0x31
	.4byte	.LASF254
	.byte	0xb
	.byte	0x6
	.uleb128 0x30
	.4byte	.LASF242
	.byte	0x8
	.byte	0x28
	.4byte	0x10ff
	.uleb128 0x2f
	.4byte	0x2e4
	.uleb128 0x2f
	.4byte	0x305
	.byte	0
	.uleb128 0x30
	.4byte	.LASF243
	.byte	0x9
	.byte	0x7
	.4byte	0x1110
	.uleb128 0x2f
	.4byte	0x305
	.byte	0
	.uleb128 0x30
	.4byte	.LASF244
	.byte	0x7
	.byte	0x16
	.4byte	0x1122
	.uleb128 0x2f
	.4byte	0xc86
	.uleb128 0x32
	.byte	0
	.uleb128 0x30
	.4byte	.LASF245
	.byte	0x9
	.byte	0x6
	.4byte	0x1133
	.uleb128 0x2f
	.4byte	0x305
	.byte	0
	.uleb128 0x33
	.4byte	.LASF255
	.byte	0xb
	.byte	0x8
	.uleb128 0x2f
	.4byte	0x2ef
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
	.uleb128 0x4
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL3
	.4byte	.LVL11
	.2byte	0x4
	.byte	0x76
	.sleb128 -1998
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LFE114
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL3
	.4byte	.LFE114
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL3
	.4byte	.LVL6-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4e
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4e
	.4byte	.LVL9
	.4byte	.LFE114
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4e
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL3
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL13
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LFE110
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL13
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL24
	.4byte	.LFE110
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x8
	.byte	0x31
	.byte	0x75
	.sleb128 0
	.byte	0x24
	.byte	0x71
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LFE116
	.2byte	0xb
	.byte	0x75
	.sleb128 0
	.byte	0x3
	.4byte	ambulance_id
	.byte	0x94
	.byte	0x2
	.byte	0x1a
	.byte	0x9f
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
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	0
	.4byte	0
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	0
	.4byte	0
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	.LBB20
	.4byte	.LBE20
	.4byte	.LBB21
	.4byte	.LBE21
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
.LASF153:
	.ascii	"M1AR\000"
.LASF112:
	.ascii	"RSERVED1\000"
.LASF255:
	.ascii	"setDAC1\000"
.LASF11:
	.ascii	"RTC_WKUP_IRQn\000"
.LASF16:
	.ascii	"EXTI2_IRQn\000"
.LASF223:
	.ascii	"NVIC_EnableIRQ\000"
.LASF25:
	.ascii	"DMA1_Stream6_IRQn\000"
.LASF52:
	.ascii	"TIM8_UP_TIM13_IRQn\000"
.LASF121:
	.ascii	"sizetype\000"
.LASF189:
	.ascii	"PLLI2SCFGR\000"
.LASF107:
	.ascii	"int32_t\000"
.LASF148:
	.ascii	"DOR1\000"
.LASF149:
	.ascii	"DOR2\000"
.LASF65:
	.ascii	"DMA2_Stream1_IRQn\000"
.LASF139:
	.ascii	"DHR12R1\000"
.LASF142:
	.ascii	"DHR12R2\000"
.LASF125:
	.ascii	"VTOR\000"
.LASF59:
	.ascii	"SPI3_IRQn\000"
.LASF12:
	.ascii	"FLASH_IRQn\000"
.LASF145:
	.ascii	"DHR12RD\000"
.LASF86:
	.ascii	"DCMI_IRQn\000"
.LASF227:
	.ascii	"type\000"
.LASF36:
	.ascii	"TIM2_IRQn\000"
.LASF213:
	.ascii	"DMAR\000"
.LASF115:
	.ascii	"ICPR\000"
.LASF72:
	.ascii	"CAN2_RX0_IRQn\000"
.LASF79:
	.ascii	"USART6_IRQn\000"
.LASF206:
	.ascii	"CCR1\000"
.LASF207:
	.ascii	"CCR2\000"
.LASF208:
	.ascii	"CCR3\000"
.LASF209:
	.ascii	"CCR4\000"
.LASF93:
	.ascii	"__uint8_t\000"
.LASF254:
	.ascii	"initDAC1\000"
.LASF44:
	.ascii	"SPI2_IRQn\000"
.LASF51:
	.ascii	"TIM8_BRK_TIM12_IRQn\000"
.LASF182:
	.ascii	"AHB2LPENR\000"
.LASF193:
	.ascii	"TXCRCR\000"
.LASF126:
	.ascii	"AIRCR\000"
.LASF239:
	.ascii	"ambulance_id\000"
.LASF99:
	.ascii	"long int\000"
.LASF232:
	.ascii	"pwm_arr_size\000"
.LASF123:
	.ascii	"CPUID\000"
.LASF150:
	.ascii	"DAC_TypeDef\000"
.LASF76:
	.ascii	"DMA2_Stream5_IRQn\000"
.LASF252:
	.ascii	"main\000"
.LASF220:
	.ascii	"IRQn\000"
.LASF34:
	.ascii	"TIM1_TRG_COM_TIM11_IRQn\000"
.LASF214:
	.ascii	"RESERVED13\000"
.LASF180:
	.ascii	"APB2ENR\000"
.LASF181:
	.ascii	"AHB1LPENR\000"
.LASF7:
	.ascii	"SysTick_IRQn\000"
.LASF47:
	.ascii	"USART3_IRQn\000"
.LASF124:
	.ascii	"ICSR\000"
.LASF91:
	.ascii	"signed char\000"
.LASF105:
	.ascii	"uint8_t\000"
.LASF216:
	.ascii	"TIM_TypeDef\000"
.LASF21:
	.ascii	"DMA1_Stream2_IRQn\000"
.LASF110:
	.ascii	"RESERVED0\000"
.LASF175:
	.ascii	"RESERVED1\000"
.LASF94:
	.ascii	"unsigned char\000"
.LASF68:
	.ascii	"DMA2_Stream4_IRQn\000"
.LASF118:
	.ascii	"RESERVED4\000"
.LASF119:
	.ascii	"RESERVED5\000"
.LASF187:
	.ascii	"RESERVED6\000"
.LASF195:
	.ascii	"RESERVED7\000"
.LASF197:
	.ascii	"RESERVED8\000"
.LASF204:
	.ascii	"RESERVED9\000"
.LASF159:
	.ascii	"DMA_TypeDef\000"
.LASF117:
	.ascii	"IABR\000"
.LASF40:
	.ascii	"I2C1_ER_IRQn\000"
.LASF245:
	.ascii	"delay_ms\000"
.LASF74:
	.ascii	"CAN2_SCE_IRQn\000"
.LASF114:
	.ascii	"RESERVED2\000"
.LASF116:
	.ascii	"RESERVED3\000"
.LASF58:
	.ascii	"TIM5_IRQn\000"
.LASF157:
	.ascii	"LIFCR\000"
.LASF3:
	.ascii	"UsageFault_IRQn\000"
.LASF201:
	.ascii	"CCMR1\000"
.LASF202:
	.ascii	"CCMR2\000"
.LASF217:
	.ascii	"char\000"
.LASF137:
	.ascii	"SCB_Type\000"
.LASF130:
	.ascii	"DFSR\000"
.LASF170:
	.ascii	"AHB1RSTR\000"
.LASF248:
	.ascii	"/home/emir/msut/STM32F407/examples/audio-dac\000"
.LASF96:
	.ascii	"__uint16_t\000"
.LASF177:
	.ascii	"AHB2ENR\000"
.LASF28:
	.ascii	"CAN1_RX0_IRQn\000"
.LASF253:
	.ascii	"sinf\000"
.LASF129:
	.ascii	"HFSR\000"
.LASF233:
	.ascii	"TIM1_CC_IRQHandler\000"
.LASF138:
	.ascii	"SWTRIGR\000"
.LASF38:
	.ascii	"TIM4_IRQn\000"
.LASF46:
	.ascii	"USART2_IRQn\000"
.LASF230:
	.ascii	"temp\000"
.LASF186:
	.ascii	"BDCR\000"
.LASF127:
	.ascii	"SHCSR\000"
.LASF120:
	.ascii	"STIR\000"
.LASF39:
	.ascii	"I2C1_EV_IRQn\000"
.LASF226:
	.ascii	"dac_buff\000"
.LASF169:
	.ascii	"CFGR\000"
.LASF35:
	.ascii	"TIM1_CC_IRQn\000"
.LASF88:
	.ascii	"HASH_RNG_IRQn\000"
.LASF15:
	.ascii	"EXTI1_IRQn\000"
.LASF27:
	.ascii	"CAN1_TX_IRQn\000"
.LASF24:
	.ascii	"DMA1_Stream5_IRQn\000"
.LASF53:
	.ascii	"TIM8_TRG_COM_TIM14_IRQn\000"
.LASF78:
	.ascii	"DMA2_Stream7_IRQn\000"
.LASF75:
	.ascii	"OTG_FS_IRQn\000"
.LASF0:
	.ascii	"NonMaskableInt_IRQn\000"
.LASF237:
	.ascii	"irq_counter\000"
.LASF8:
	.ascii	"WWDG_IRQn\000"
.LASF97:
	.ascii	"short unsigned int\000"
.LASF84:
	.ascii	"OTG_HS_WKUP_IRQn\000"
.LASF179:
	.ascii	"APB1ENR\000"
.LASF1:
	.ascii	"MemoryManagement_IRQn\000"
.LASF200:
	.ascii	"DIER\000"
.LASF10:
	.ascii	"TAMP_STAMP_IRQn\000"
.LASF30:
	.ascii	"CAN1_SCE_IRQn\000"
.LASF92:
	.ascii	"IRQn_Type\000"
.LASF64:
	.ascii	"DMA2_Stream0_IRQn\000"
.LASF166:
	.ascii	"LCKR\000"
.LASF42:
	.ascii	"I2C2_ER_IRQn\000"
.LASF162:
	.ascii	"OSPEEDR\000"
.LASF2:
	.ascii	"BusFault_IRQn\000"
.LASF168:
	.ascii	"PLLCFGR\000"
.LASF61:
	.ascii	"UART5_IRQn\000"
.LASF32:
	.ascii	"TIM1_BRK_TIM9_IRQn\000"
.LASF100:
	.ascii	"__uint32_t\000"
.LASF63:
	.ascii	"TIM7_IRQn\000"
.LASF102:
	.ascii	"long long int\000"
.LASF70:
	.ascii	"ETH_WKUP_IRQn\000"
.LASF85:
	.ascii	"OTG_HS_IRQn\000"
.LASF163:
	.ascii	"PUPDR\000"
.LASF188:
	.ascii	"SSCGR\000"
.LASF43:
	.ascii	"SPI1_IRQn\000"
.LASF244:
	.ascii	"printUSARTMOJ\000"
.LASF218:
	.ascii	"double\000"
.LASF247:
	.ascii	"main.c\000"
.LASF4:
	.ascii	"SVCall_IRQn\000"
.LASF174:
	.ascii	"APB2RSTR\000"
.LASF165:
	.ascii	"BSRRH\000"
.LASF164:
	.ascii	"BSRRL\000"
.LASF241:
	.ascii	"initUSART2\000"
.LASF89:
	.ascii	"FPU_IRQn\000"
.LASF192:
	.ascii	"RXCRCR\000"
.LASF60:
	.ascii	"UART4_IRQn\000"
.LASF185:
	.ascii	"APB2LPENR\000"
.LASF236:
	.ascii	"dev_addr\000"
.LASF50:
	.ascii	"OTG_FS_WKUP_IRQn\000"
.LASF18:
	.ascii	"EXTI4_IRQn\000"
.LASF62:
	.ascii	"TIM6_DAC_IRQn\000"
.LASF41:
	.ascii	"I2C2_EV_IRQn\000"
.LASF104:
	.ascii	"unsigned int\000"
.LASF231:
	.ascii	"pwm_cnt\000"
.LASF141:
	.ascii	"DHR8R1\000"
.LASF144:
	.ascii	"DHR8R2\000"
.LASF132:
	.ascii	"BFAR\000"
.LASF147:
	.ascii	"DHR8RD\000"
.LASF184:
	.ascii	"APB1LPENR\000"
.LASF20:
	.ascii	"DMA1_Stream1_IRQn\000"
.LASF67:
	.ascii	"DMA2_Stream3_IRQn\000"
.LASF71:
	.ascii	"CAN2_TX_IRQn\000"
.LASF154:
	.ascii	"DMA_Stream_TypeDef\000"
.LASF133:
	.ascii	"AFSR\000"
.LASF158:
	.ascii	"HIFCR\000"
.LASF251:
	.ascii	"init_TIM1\000"
.LASF249:
	.ascii	"init_TIM3\000"
.LASF172:
	.ascii	"AHB3RSTR\000"
.LASF219:
	.ascii	"long double\000"
.LASF19:
	.ascii	"DMA1_Stream0_IRQn\000"
.LASF173:
	.ascii	"APB1RSTR\000"
.LASF49:
	.ascii	"RTC_Alarm_IRQn\000"
.LASF122:
	.ascii	"NVIC_Type\000"
.LASF81:
	.ascii	"I2C3_ER_IRQn\000"
.LASF87:
	.ascii	"CRYP_IRQn\000"
.LASF48:
	.ascii	"EXTI15_10_IRQn\000"
.LASF103:
	.ascii	"long long unsigned int\000"
.LASF106:
	.ascii	"uint16_t\000"
.LASF101:
	.ascii	"long unsigned int\000"
.LASF37:
	.ascii	"TIM3_IRQn\000"
.LASF203:
	.ascii	"CCER\000"
.LASF212:
	.ascii	"RESERVED12\000"
.LASF45:
	.ascii	"USART1_IRQn\000"
.LASF215:
	.ascii	"RESERVED14\000"
.LASF73:
	.ascii	"CAN2_RX1_IRQn\000"
.LASF26:
	.ascii	"ADC_IRQn\000"
.LASF111:
	.ascii	"ICER\000"
.LASF199:
	.ascii	"SMCR\000"
.LASF183:
	.ascii	"AHB3LPENR\000"
.LASF194:
	.ascii	"I2SCFGR\000"
.LASF9:
	.ascii	"PVD_IRQn\000"
.LASF246:
	.ascii	"GNU C 4.9.3 20141119 (release) [ARM/embedded-4_9-br"
	.ascii	"anch revision 218278] -mlittle-endian -mthumb -mcpu"
	.ascii	"=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mfpu"
	.ascii	"=fpv4-sp-d16 -g -O2 -fsingle-precision-constant\000"
.LASF161:
	.ascii	"OTYPER\000"
.LASF56:
	.ascii	"FSMC_IRQn\000"
.LASF14:
	.ascii	"EXTI0_IRQn\000"
.LASF198:
	.ascii	"SPI_TypeDef\000"
.LASF128:
	.ascii	"CFSR\000"
.LASF243:
	.ascii	"delay_us\000"
.LASF191:
	.ascii	"CRCPR\000"
.LASF23:
	.ascii	"DMA1_Stream4_IRQn\000"
.LASF77:
	.ascii	"DMA2_Stream6_IRQn\000"
.LASF176:
	.ascii	"AHB1ENR\000"
.LASF5:
	.ascii	"DebugMonitor_IRQn\000"
.LASF80:
	.ascii	"I2C3_EV_IRQn\000"
.LASF171:
	.ascii	"AHB2RSTR\000"
.LASF152:
	.ascii	"M0AR\000"
.LASF69:
	.ascii	"ETH_IRQn\000"
.LASF134:
	.ascii	"MMFR\000"
.LASF190:
	.ascii	"RCC_TypeDef\000"
.LASF131:
	.ascii	"MMFAR\000"
.LASF95:
	.ascii	"short int\000"
.LASF13:
	.ascii	"RCC_IRQn\000"
.LASF221:
	.ascii	"priority\000"
.LASF135:
	.ascii	"ISAR\000"
.LASF22:
	.ascii	"DMA1_Stream3_IRQn\000"
.LASF225:
	.ascii	"getData4DAC\000"
.LASF238:
	.ascii	"pwm_recieved_bits\000"
.LASF140:
	.ascii	"DHR12L1\000"
.LASF143:
	.ascii	"DHR12L2\000"
.LASF167:
	.ascii	"GPIO_TypeDef\000"
.LASF33:
	.ascii	"TIM1_UP_TIM10_IRQn\000"
.LASF235:
	.ascii	"ITM_RxBuffer\000"
.LASF234:
	.ascii	"current_bit\000"
.LASF146:
	.ascii	"DHR12LD\000"
.LASF82:
	.ascii	"OTG_HS_EP1_OUT_IRQn\000"
.LASF210:
	.ascii	"BDTR\000"
.LASF108:
	.ascii	"uint32_t\000"
.LASF156:
	.ascii	"HISR\000"
.LASF196:
	.ascii	"I2SPR\000"
.LASF160:
	.ascii	"MODER\000"
.LASF222:
	.ascii	"NVIC_SetPriority\000"
.LASF29:
	.ascii	"CAN1_RX1_IRQn\000"
.LASF250:
	.ascii	"DMA1_Stream4_IRQHandler\000"
.LASF31:
	.ascii	"EXTI9_5_IRQn\000"
.LASF155:
	.ascii	"LISR\000"
.LASF90:
	.ascii	"float\000"
.LASF54:
	.ascii	"TIM8_CC_IRQn\000"
.LASF57:
	.ascii	"SDIO_IRQn\000"
.LASF136:
	.ascii	"CPACR\000"
.LASF205:
	.ascii	"RESERVED10\000"
.LASF211:
	.ascii	"RESERVED11\000"
.LASF113:
	.ascii	"ISPR\000"
.LASF17:
	.ascii	"EXTI3_IRQn\000"
.LASF6:
	.ascii	"PendSV_IRQn\000"
.LASF83:
	.ascii	"OTG_HS_EP1_IN_IRQn\000"
.LASF55:
	.ascii	"DMA1_Stream7_IRQn\000"
.LASF98:
	.ascii	"__int32_t\000"
.LASF151:
	.ascii	"NDTR\000"
.LASF224:
	.ascii	"init_DMA1\000"
.LASF109:
	.ascii	"ISER\000"
.LASF228:
	.ascii	"dac_buff1\000"
.LASF229:
	.ascii	"dac_buff2\000"
.LASF178:
	.ascii	"AHB3ENR\000"
.LASF66:
	.ascii	"DMA2_Stream2_IRQn\000"
.LASF242:
	.ascii	"initCS43L22\000"
.LASF240:
	.ascii	"lights_on\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.9.3 20141119 (release) [ARM/embedded-4_9-branch revision 218278]"
