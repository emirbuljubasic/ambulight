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
	.file 1 "src/usart.c"
	.loc 1 4 0
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
	.loc 1 9 0
	ldr	r2, .L2
	ldr	r3, .L2
	ldr	r3, [r3, #48]
	orr	r3, r3, #1
	str	r3, [r2, #48]
	.loc 1 10 0
	ldr	r2, .L2
	ldr	r3, .L2
	ldr	r3, [r3, #64]
	orr	r3, r3, #131072
	str	r3, [r2, #64]
	.loc 1 11 0
	ldr	r2, .L2+4
	ldr	r3, .L2+4
	ldr	r3, [r3]
	orr	r3, r3, #160
	str	r3, [r2]
	.loc 1 12 0
	ldr	r2, .L2+4
	ldr	r3, .L2+4
	ldr	r3, [r3, #32]
	orr	r3, r3, #30464
	str	r3, [r2, #32]
	.loc 1 14 0
	ldr	r2, .L2+4
	ldr	r3, .L2+4
	ldr	r3, [r3, #8]
	orr	r3, r3, #32
	str	r3, [r2, #8]
	.loc 1 15 0
	ldr	r2, .L2+4
	ldr	r3, .L2+4
	ldr	r3, [r3, #8]
	orr	r3, r3, #128
	str	r3, [r2, #8]
	.loc 1 17 0
	ldr	r3, .L2+8
	ldr	r2, [r7, #4]
	uxth	r2, r2
	strh	r2, [r3, #8]	@ movhi
	.loc 1 18 0
	ldr	r3, .L2+8
	movw	r2, #8200
	strh	r2, [r3, #12]	@ movhi
	.loc 1 19 0
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
	.loc 1 22 0
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
	.loc 1 23 0
	nop
.L5:
	.loc 1 23 0 is_stmt 0 discriminator 1
	ldr	r3, .L6
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	and	r3, r3, #64
	cmp	r3, #0
	beq	.L5
	.loc 1 25 0 is_stmt 1
	ldr	r3, .L6
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	uxth	r2, r2
	strh	r2, [r3, #4]	@ movhi
	.loc 1 26 0
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
	.loc 1 29 0
	.cfi_startproc
	@ args = 4, pretend = 16, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 1
	push	{r0, r1, r2, r3}
	.cfi_def_cfa_offset 16
	.cfi_offset 0, -16
	.cfi_offset 1, -12
	.cfi_offset 2, -8
	.cfi_offset 3, -4
	push	{r4, r5, r7, lr}
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	.cfi_offset 5, -28
	.cfi_offset 7, -24
	.cfi_offset 14, -20
	sub	sp, sp, #80
	.cfi_def_cfa_offset 112
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 31 0
	movs	r3, #0
	strh	r3, [r7, #78]	@ movhi
	.loc 1 39 0
	add	r3, r7, #100
	str	r3, [r7, #4]
	.loc 1 40 0
	b	.L9
.L37:
	.loc 1 42 0
	ldrh	r3, [r7, #78]
	ldr	r2, [r7, #96]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #37
	bne	.L10
	.loc 1 44 0
	ldrh	r3, [r7, #78]
	adds	r3, r3, #1
	ldr	r2, [r7, #96]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L36
	.loc 1 46 0
	ldrh	r3, [r7, #78]
	adds	r3, r3, #1
	ldr	r2, [r7, #96]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #98
	cmp	r3, #22
	bhi	.L12
	adr	r2, .L14
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L14:
	.word	.L13+1
	.word	.L15+1
	.word	.L16+1
	.word	.L12+1
	.word	.L17+1
	.word	.L12+1
	.word	.L12+1
	.word	.L12+1
	.word	.L12+1
	.word	.L12+1
	.word	.L12+1
	.word	.L12+1
	.word	.L12+1
	.word	.L12+1
	.word	.L12+1
	.word	.L12+1
	.word	.L12+1
	.word	.L18+1
	.word	.L12+1
	.word	.L12+1
	.word	.L12+1
	.word	.L12+1
	.word	.L19+1
	.p2align 1
.L13:
	.loc 1 50 0
	ldrh	r3, [r7, #78]
	adds	r3, r3, #2
	ldr	r2, [r7, #96]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #98
	bne	.L20
	.loc 1 52 0
	ldr	r3, [r7, #4]
	adds	r2, r3, #4
	str	r2, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #8]
	.loc 1 53 0
	movs	r3, #1
	strh	r3, [r7, #76]	@ movhi
	b	.L21
.L20:
	.loc 1 55 0
	ldrh	r3, [r7, #78]
	adds	r3, r3, #2
	ldr	r2, [r7, #96]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #104
	bne	.L22
	.loc 1 57 0
	ldr	r3, [r7, #4]
	adds	r2, r3, #4
	str	r2, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #8]
	.loc 1 58 0
	movs	r3, #2
	strh	r3, [r7, #76]	@ movhi
	b	.L21
.L22:
	.loc 1 60 0
	ldrh	r3, [r7, #78]
	adds	r3, r3, #2
	ldr	r2, [r7, #96]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #119
	bne	.L23
	.loc 1 62 0
	ldr	r3, [r7, #4]
	adds	r2, r3, #4
	str	r2, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #8]
	.loc 1 63 0
	movs	r3, #4
	strh	r3, [r7, #76]	@ movhi
	b	.L21
.L23:
	.loc 1 67 0
	ldr	r3, [r7, #4]
	adds	r2, r3, #4
	str	r2, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #8]
	.loc 1 68 0
	movs	r3, #4
	strh	r3, [r7, #76]	@ movhi
	.loc 1 69 0
	ldrh	r3, [r7, #78]
	subs	r3, r3, #1
	strh	r3, [r7, #78]	@ movhi
.L21:
	.loc 1 72 0
	ldrh	r3, [r7, #78]
	adds	r3, r3, #1
	strh	r3, [r7, #78]	@ movhi
	.loc 1 73 0
	add	r3, r7, #8
	str	r3, [r7, #72]
	.loc 1 74 0
	b	.L24
.L16:
	.loc 1 78 0
	ldrh	r3, [r7, #78]
	adds	r3, r3, #2
	ldr	r2, [r7, #96]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #98
	bne	.L25
	.loc 1 80 0
	ldr	r3, [r7, #4]
	adds	r2, r3, #4
	str	r2, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #8]
	.loc 1 81 0
	movs	r3, #8
	strh	r3, [r7, #76]	@ movhi
	b	.L26
.L25:
	.loc 1 83 0
	ldrh	r3, [r7, #78]
	adds	r3, r3, #2
	ldr	r2, [r7, #96]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #104
	bne	.L27
	.loc 1 85 0
	ldr	r3, [r7, #4]
	adds	r2, r3, #4
	str	r2, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #8]
	.loc 1 86 0
	movs	r3, #16
	strh	r3, [r7, #76]	@ movhi
	b	.L26
.L27:
	.loc 1 88 0
	ldrh	r3, [r7, #78]
	adds	r3, r3, #2
	ldr	r2, [r7, #96]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #119
	bne	.L28
	.loc 1 90 0
	ldr	r3, [r7, #4]
	adds	r2, r3, #4
	str	r2, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #8]
	.loc 1 91 0
	movs	r3, #32
	strh	r3, [r7, #76]	@ movhi
	b	.L26
.L28:
	.loc 1 95 0
	ldr	r3, [r7, #4]
	adds	r2, r3, #4
	str	r2, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #8]
	.loc 1 96 0
	movs	r3, #32
	strh	r3, [r7, #76]	@ movhi
	.loc 1 97 0
	ldrh	r3, [r7, #78]
	subs	r3, r3, #1
	strh	r3, [r7, #78]	@ movhi
.L26:
	.loc 1 100 0
	ldrh	r3, [r7, #78]
	adds	r3, r3, #1
	strh	r3, [r7, #78]	@ movhi
	.loc 1 101 0
	add	r3, r7, #8
	str	r3, [r7, #72]
	.loc 1 102 0
	b	.L24
.L15:
.LBB2:
	.loc 1 106 0
	ldr	r3, [r7, #4]
	adds	r2, r3, #4
	str	r2, [r7, #4]
	ldr	r3, [r3]
	strb	r3, [r7, #71]
	.loc 1 107 0
	ldrb	r3, [r7, #71]	@ zero_extendqisi2
	mov	r0, r3
	bl	putcharUSART2
	.loc 1 108 0
	movs	r3, #64
	strh	r3, [r7, #76]	@ movhi
	.loc 1 109 0
	b	.L24
.L18:
.LBE2:
	.loc 1 113 0
	ldr	r3, [r7, #4]
	adds	r2, r3, #4
	str	r2, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #64]
	.loc 1 114 0
	ldr	r0, [r7, #64]
	bl	sprintUSART2
	.loc 1 115 0
	movs	r3, #128
	strh	r3, [r7, #76]	@ movhi
	.loc 1 116 0
	b	.L24
.L17:
.LBB3:
	.loc 1 120 0
	ldr	r3, [r7, #4]
	adds	r3, r3, #7
	bic	r3, r3, #7
	add	r2, r3, #8
	str	r2, [r7, #4]
	ldrd	r2, [r3]
	strd	r2, [r7, #56]
	.loc 1 121 0
	ldr	r3, [r7, #56]
	str	r3, [r7, #52]
	.loc 1 122 0
	ldr	r3, [r7, #52]
	lsrs	r3, r3, #29
	str	r3, [r7, #52]
	.loc 1 123 0
	ldrd	r2, [r7, #56]
	movs	r4, r3
	movs	r5, #0
	mov	r3, r4
	str	r3, [r7, #8]
	.loc 1 124 0
	ldr	r3, [r7, #8]
	bic	r3, r3, #-134217728
	str	r3, [r7, #8]
	.loc 1 125 0
	ldr	r3, [r7, #8]
	lsls	r3, r3, #3
	str	r3, [r7, #8]
	.loc 1 126 0
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #52]
	orrs	r3, r3, r2
	str	r3, [r7, #8]
	.loc 1 127 0
	ldrd	r2, [r7, #56]
	cmp	r2, #0
	sbcs	r3, r3, #0
	bge	.L29
	.loc 1 128 0
	ldr	r3, [r7, #8]
	orr	r3, r3, #-2147483648
	str	r3, [r7, #8]
.L29:
	.loc 1 130 0
	ldrd	r2, [r7, #56]
	mov	r0, #0
	mov	r1, #1073741824
	and	r2, r2, r0
	and	r3, r3, r1
	orrs	r3, r2, r3
	beq	.L30
	.loc 1 131 0
	ldr	r3, [r7, #8]
	orr	r3, r3, #1073741824
	str	r3, [r7, #8]
.L30:
	.loc 1 133 0
	add	r3, r7, #8
	str	r3, [r7, #72]
	.loc 1 135 0
	mov	r3, #256
	strh	r3, [r7, #76]	@ movhi
	.loc 1 138 0
	b	.L24
.L19:
.LBE3:
	.loc 1 142 0
	ldrh	r3, [r7, #78]
	adds	r3, r3, #2
	ldr	r2, [r7, #96]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #98
	bne	.L31
	.loc 1 144 0
	ldr	r3, [r7, #4]
	adds	r2, r3, #4
	str	r2, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #8]
	.loc 1 145 0
	mov	r3, #512
	strh	r3, [r7, #76]	@ movhi
	b	.L32
.L31:
	.loc 1 147 0
	ldrh	r3, [r7, #78]
	adds	r3, r3, #2
	ldr	r2, [r7, #96]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #104
	bne	.L33
	.loc 1 149 0
	ldr	r3, [r7, #4]
	adds	r2, r3, #4
	str	r2, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #8]
	.loc 1 150 0
	mov	r3, #1024
	strh	r3, [r7, #76]	@ movhi
	b	.L32
.L33:
	.loc 1 152 0
	ldrh	r3, [r7, #78]
	adds	r3, r3, #2
	ldr	r2, [r7, #96]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #119
	bne	.L34
	.loc 1 154 0
	ldr	r3, [r7, #4]
	adds	r2, r3, #4
	str	r2, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #8]
	.loc 1 155 0
	mov	r3, #2048
	strh	r3, [r7, #76]	@ movhi
	b	.L32
.L34:
	.loc 1 159 0
	ldr	r3, [r7, #4]
	adds	r2, r3, #4
	str	r2, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #8]
	.loc 1 160 0
	mov	r3, #2048
	strh	r3, [r7, #76]	@ movhi
	.loc 1 161 0
	ldrh	r3, [r7, #78]
	subs	r3, r3, #1
	strh	r3, [r7, #78]	@ movhi
.L32:
	.loc 1 164 0
	ldrh	r3, [r7, #78]
	adds	r3, r3, #1
	strh	r3, [r7, #78]	@ movhi
	.loc 1 165 0
	add	r3, r7, #8
	str	r3, [r7, #72]
	.loc 1 166 0
	b	.L24
.L12:
	.loc 1 170 0
	movs	r3, #0
	str	r3, [r7, #8]
	.loc 1 171 0
	add	r3, r7, #8
	str	r3, [r7, #72]
	.loc 1 172 0
	movs	r3, #0
	strh	r3, [r7, #76]	@ movhi
	.loc 1 173 0
	nop
.L24:
	.loc 1 177 0
	ldrh	r3, [r7, #76]
	bic	r3, r3, #192
	cmp	r3, #0
	beq	.L35
	.loc 1 179 0
	ldrh	r2, [r7, #76]
	add	r3, r7, #12
	mov	r0, r2
	ldr	r1, [r7, #72]
	mov	r2, r3
	bl	getStr4NumMISC
	.loc 1 180 0
	add	r3, r7, #12
	mov	r0, r3
	bl	sprintUSART2
.L35:
	.loc 1 182 0
	ldrh	r3, [r7, #78]
	adds	r3, r3, #1
	strh	r3, [r7, #78]	@ movhi
	b	.L36
.L10:
	.loc 1 187 0
	ldrh	r3, [r7, #78]
	ldr	r2, [r7, #96]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	putcharUSART2
	.loc 1 188 0
	ldrh	r3, [r7, #78]
	ldr	r2, [r7, #96]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #10
	bne	.L36
	.loc 1 189 0
	movs	r0, #13
	bl	putcharUSART2
.L36:
	.loc 1 191 0
	ldrh	r3, [r7, #78]
	adds	r3, r3, #1
	strh	r3, [r7, #78]	@ movhi
.L9:
	.loc 1 40 0
	ldrh	r3, [r7, #78]
	ldr	r2, [r7, #96]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L37
	.loc 1 195 0
	nop
	.loc 1 196 0
	adds	r7, r7, #80
	.cfi_def_cfa_offset 32
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r4, r5, r7, lr}
	.cfi_restore 14
	.cfi_restore 7
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 16
	add	sp, sp, #16
	.cfi_restore 3
	.cfi_restore 2
	.cfi_restore 1
	.cfi_restore 0
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE112:
	.size	printUSART2, .-printUSART2
	.align	2
	.global	sprintUSART2
	.thumb
	.thumb_func
	.type	sprintUSART2, %function
sprintUSART2:
.LFB113:
	.loc 1 199 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 200 0
	movs	r3, #0
	strh	r3, [r7, #14]	@ movhi
	.loc 1 202 0
	b	.L40
.L43:
	.loc 1 204 0
	ldrh	r3, [r7, #14]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	putcharUSART2
	.loc 1 205 0
	ldrh	r3, [r7, #14]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #10
	bne	.L41
	.loc 1 206 0
	movs	r0, #13
	bl	putcharUSART2
.L41:
	.loc 1 207 0
	ldrh	r3, [r7, #14]
	adds	r3, r3, #1
	strh	r3, [r7, #14]	@ movhi
	.loc 1 209 0
	ldrh	r3, [r7, #14]
	cmp	r3, #1024
	bne	.L40
	.loc 1 210 0
	b	.L39
.L40:
	.loc 1 202 0
	ldrh	r3, [r7, #14]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L43
.L39:
	.loc 1 212 0
	adds	r7, r7, #16
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE113:
	.size	sprintUSART2, .-sprintUSART2
.Letext0:
	.file 2 "/home/emir/msut/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/emir/msut/STM32F407/gcc-arm-none-eabi/lib/gcc/arm-none-eabi/4.9.3/include/stdarg.h"
	.file 4 "/home/emir/msut/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/stdint.h"
	.file 5 "inc/stm32f4xx.h"
	.file 6 "<built-in>"
	.file 7 "/home/emir/msut/STM32F407/Libraries/CMSIS/Include/core_cm4.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x5a3
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0x1
	.4byte	.LASF76
	.4byte	.LASF77
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
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x2
	.byte	0x5b
	.4byte	0x8d
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
	.byte	0x28
	.4byte	0xad
	.uleb128 0x5
	.4byte	.LASF78
	.byte	0x4
	.byte	0x6
	.byte	0
	.4byte	0xc4
	.uleb128 0x6
	.4byte	.LASF79
	.4byte	0xc4
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x8
	.byte	0x4
	.4byte	0xd3
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x3
	.byte	0x62
	.4byte	0xa2
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x21
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x2c
	.4byte	0x57
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0x2d
	.4byte	0x69
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x4
	.byte	0x39
	.4byte	0x82
	.uleb128 0x9
	.4byte	0x106
	.uleb128 0xa
	.4byte	0x106
	.4byte	0x131
	.uleb128 0xb
	.4byte	0xc6
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.4byte	0xf0
	.uleb128 0x9
	.4byte	0xfb
	.uleb128 0xc
	.byte	0x28
	.byte	0x5
	.2byte	0x28e
	.4byte	0x1c7
	.uleb128 0xd
	.4byte	.LASF23
	.byte	0x5
	.2byte	0x290
	.4byte	0x11c
	.byte	0
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x5
	.2byte	0x291
	.4byte	0x11c
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x5
	.2byte	0x292
	.4byte	0x11c
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x5
	.2byte	0x293
	.4byte	0x11c
	.byte	0xc
	.uleb128 0xe
	.ascii	"IDR\000"
	.byte	0x5
	.2byte	0x294
	.4byte	0x11c
	.byte	0x10
	.uleb128 0xe
	.ascii	"ODR\000"
	.byte	0x5
	.2byte	0x295
	.4byte	0x11c
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x5
	.2byte	0x296
	.4byte	0x131
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x5
	.2byte	0x297
	.4byte	0x131
	.byte	0x1a
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x5
	.2byte	0x298
	.4byte	0x11c
	.byte	0x1c
	.uleb128 0xe
	.ascii	"AFR\000"
	.byte	0x5
	.2byte	0x299
	.4byte	0x1c7
	.byte	0x20
	.byte	0
	.uleb128 0x9
	.4byte	0x121
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x5
	.2byte	0x29a
	.4byte	0x13b
	.uleb128 0xc
	.byte	0x88
	.byte	0x5
	.2byte	0x2dd
	.4byte	0x367
	.uleb128 0xe
	.ascii	"CR\000"
	.byte	0x5
	.2byte	0x2df
	.4byte	0x11c
	.byte	0
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x5
	.2byte	0x2e0
	.4byte	0x11c
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x5
	.2byte	0x2e1
	.4byte	0x11c
	.byte	0x8
	.uleb128 0xe
	.ascii	"CIR\000"
	.byte	0x5
	.2byte	0x2e2
	.4byte	0x11c
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x5
	.2byte	0x2e3
	.4byte	0x11c
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x5
	.2byte	0x2e4
	.4byte	0x11c
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x5
	.2byte	0x2e5
	.4byte	0x11c
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF36
	.byte	0x5
	.2byte	0x2e6
	.4byte	0x106
	.byte	0x1c
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0x5
	.2byte	0x2e7
	.4byte	0x11c
	.byte	0x20
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x5
	.2byte	0x2e8
	.4byte	0x11c
	.byte	0x24
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x5
	.2byte	0x2e9
	.4byte	0x121
	.byte	0x28
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0x5
	.2byte	0x2ea
	.4byte	0x11c
	.byte	0x30
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x5
	.2byte	0x2eb
	.4byte	0x11c
	.byte	0x34
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x5
	.2byte	0x2ec
	.4byte	0x11c
	.byte	0x38
	.uleb128 0xd
	.4byte	.LASF43
	.byte	0x5
	.2byte	0x2ed
	.4byte	0x106
	.byte	0x3c
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0x5
	.2byte	0x2ee
	.4byte	0x11c
	.byte	0x40
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0x5
	.2byte	0x2ef
	.4byte	0x11c
	.byte	0x44
	.uleb128 0xd
	.4byte	.LASF46
	.byte	0x5
	.2byte	0x2f0
	.4byte	0x121
	.byte	0x48
	.uleb128 0xd
	.4byte	.LASF47
	.byte	0x5
	.2byte	0x2f1
	.4byte	0x11c
	.byte	0x50
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x5
	.2byte	0x2f2
	.4byte	0x11c
	.byte	0x54
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0x5
	.2byte	0x2f3
	.4byte	0x11c
	.byte	0x58
	.uleb128 0xd
	.4byte	.LASF50
	.byte	0x5
	.2byte	0x2f4
	.4byte	0x106
	.byte	0x5c
	.uleb128 0xd
	.4byte	.LASF51
	.byte	0x5
	.2byte	0x2f5
	.4byte	0x11c
	.byte	0x60
	.uleb128 0xd
	.4byte	.LASF52
	.byte	0x5
	.2byte	0x2f6
	.4byte	0x11c
	.byte	0x64
	.uleb128 0xd
	.4byte	.LASF53
	.byte	0x5
	.2byte	0x2f7
	.4byte	0x121
	.byte	0x68
	.uleb128 0xd
	.4byte	.LASF54
	.byte	0x5
	.2byte	0x2f8
	.4byte	0x11c
	.byte	0x70
	.uleb128 0xe
	.ascii	"CSR\000"
	.byte	0x5
	.2byte	0x2f9
	.4byte	0x11c
	.byte	0x74
	.uleb128 0xd
	.4byte	.LASF55
	.byte	0x5
	.2byte	0x2fa
	.4byte	0x121
	.byte	0x78
	.uleb128 0xd
	.4byte	.LASF56
	.byte	0x5
	.2byte	0x2fb
	.4byte	0x11c
	.byte	0x80
	.uleb128 0xd
	.4byte	.LASF57
	.byte	0x5
	.2byte	0x2fc
	.4byte	0x11c
	.byte	0x84
	.byte	0
	.uleb128 0xf
	.4byte	.LASF58
	.byte	0x5
	.2byte	0x2fd
	.4byte	0x1d8
	.uleb128 0xc
	.byte	0x1c
	.byte	0x5
	.2byte	0x395
	.4byte	0x431
	.uleb128 0xe
	.ascii	"SR\000"
	.byte	0x5
	.2byte	0x397
	.4byte	0x131
	.byte	0
	.uleb128 0xd
	.4byte	.LASF36
	.byte	0x5
	.2byte	0x398
	.4byte	0xf0
	.byte	0x2
	.uleb128 0xe
	.ascii	"DR\000"
	.byte	0x5
	.2byte	0x399
	.4byte	0x131
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x5
	.2byte	0x39a
	.4byte	0xf0
	.byte	0x6
	.uleb128 0xe
	.ascii	"BRR\000"
	.byte	0x5
	.2byte	0x39b
	.4byte	0x131
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF43
	.byte	0x5
	.2byte	0x39c
	.4byte	0xf0
	.byte	0xa
	.uleb128 0xe
	.ascii	"CR1\000"
	.byte	0x5
	.2byte	0x39d
	.4byte	0x131
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF46
	.byte	0x5
	.2byte	0x39e
	.4byte	0xf0
	.byte	0xe
	.uleb128 0xe
	.ascii	"CR2\000"
	.byte	0x5
	.2byte	0x39f
	.4byte	0x131
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF50
	.byte	0x5
	.2byte	0x3a0
	.4byte	0xf0
	.byte	0x12
	.uleb128 0xe
	.ascii	"CR3\000"
	.byte	0x5
	.2byte	0x3a1
	.4byte	0x131
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF53
	.byte	0x5
	.2byte	0x3a2
	.4byte	0xf0
	.byte	0x16
	.uleb128 0xd
	.4byte	.LASF59
	.byte	0x5
	.2byte	0x3a3
	.4byte	0x131
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF55
	.byte	0x5
	.2byte	0x3a4
	.4byte	0xf0
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.4byte	.LASF60
	.byte	0x5
	.2byte	0x3a5
	.4byte	0x373
	.uleb128 0x10
	.4byte	.LASF61
	.byte	0x1
	.byte	0x3
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x461
	.uleb128 0x11
	.4byte	.LASF63
	.byte	0x1
	.byte	0x3
	.4byte	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x1
	.byte	0x15
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x485
	.uleb128 0x11
	.4byte	.LASF64
	.byte	0x1
	.byte	0x15
	.4byte	0xe5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x12
	.4byte	.LASF65
	.byte	0x1
	.byte	0x1c
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x54e
	.uleb128 0x13
	.ascii	"str\000"
	.byte	0x1
	.byte	0x1c
	.4byte	0xcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x14
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x1
	.byte	0x1e
	.4byte	0x54e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x16
	.ascii	"k\000"
	.byte	0x1
	.byte	0x1f
	.4byte	0xf0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x1
	.byte	0x20
	.4byte	0xf0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x1
	.byte	0x21
	.4byte	0x106
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x1
	.byte	0x22
	.4byte	0x55e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x1
	.byte	0x23
	.4byte	0xcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.ascii	"vl\000"
	.byte	0x1
	.byte	0x24
	.4byte	0xda
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x17
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x527
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x1
	.byte	0x6a
	.4byte	0xd3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.byte	0
	.uleb128 0x18
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x1
	.byte	0x78
	.4byte	0x111
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x1
	.byte	0x79
	.4byte	0x106
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0xe5
	.4byte	0x55e
	.uleb128 0xb
	.4byte	0xc6
	.byte	0x27
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x106
	.uleb128 0x12
	.4byte	.LASF74
	.byte	0x1
	.byte	0xc6
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x594
	.uleb128 0x13
	.ascii	"str\000"
	.byte	0x1
	.byte	0xc6
	.4byte	0x594
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x16
	.ascii	"k\000"
	.byte	0x1
	.byte	0xc8
	.4byte	0xf0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xe5
	.uleb128 0x19
	.4byte	.LASF80
	.byte	0x7
	.2byte	0x51b
	.4byte	0x136
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
	.uleb128 0x13
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
	.uleb128 0x6
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x19
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
.LASF47:
	.ascii	"AHB1LPENR\000"
.LASF76:
	.ascii	"src/usart.c\000"
.LASF25:
	.ascii	"OSPEEDR\000"
.LASF37:
	.ascii	"APB1RSTR\000"
.LASF41:
	.ascii	"AHB2ENR\000"
.LASF22:
	.ascii	"uint64_t\000"
.LASF2:
	.ascii	"short int\000"
.LASF15:
	.ascii	"sizetype\000"
.LASF54:
	.ascii	"BDCR\000"
.LASF57:
	.ascii	"PLLI2SCFGR\000"
.LASF8:
	.ascii	"__uint32_t\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF60:
	.ascii	"USART_TypeDef\000"
.LASF34:
	.ascii	"AHB2RSTR\000"
.LASF71:
	.ascii	"tchar\000"
.LASF33:
	.ascii	"AHB1RSTR\000"
.LASF32:
	.ascii	"CFGR\000"
.LASF49:
	.ascii	"AHB3LPENR\000"
.LASF17:
	.ascii	"va_list\000"
.LASF18:
	.ascii	"uint8_t\000"
.LASF44:
	.ascii	"APB1ENR\000"
.LASF74:
	.ascii	"sprintUSART2\000"
.LASF24:
	.ascii	"OTYPER\000"
.LASF0:
	.ascii	"signed char\000"
.LASF67:
	.ascii	"arg_type\000"
.LASF10:
	.ascii	"long long int\000"
.LASF26:
	.ascii	"PUPDR\000"
.LASF78:
	.ascii	"__va_list\000"
.LASF7:
	.ascii	"long int\000"
.LASF61:
	.ascii	"initUSART2\000"
.LASF58:
	.ascii	"RCC_TypeDef\000"
.LASF28:
	.ascii	"BSRRH\000"
.LASF23:
	.ascii	"MODER\000"
.LASF38:
	.ascii	"APB2RSTR\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF62:
	.ascii	"putcharUSART2\000"
.LASF42:
	.ascii	"AHB3ENR\000"
.LASF59:
	.ascii	"GTPR\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF45:
	.ascii	"APB2ENR\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF21:
	.ascii	"uint32_t\000"
.LASF13:
	.ascii	"unsigned int\000"
.LASF79:
	.ascii	"__ap\000"
.LASF19:
	.ascii	"uint16_t\000"
.LASF63:
	.ascii	"baudrate\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF31:
	.ascii	"PLLCFGR\000"
.LASF72:
	.ascii	"utmp64\000"
.LASF51:
	.ascii	"APB1LPENR\000"
.LASF69:
	.ascii	"p_uint32\000"
.LASF65:
	.ascii	"printUSART2\000"
.LASF16:
	.ascii	"char\000"
.LASF20:
	.ascii	"int32_t\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF75:
	.ascii	"GNU C 4.9.3 20141119 (release) [ARM/embedded-4_9-br"
	.ascii	"anch revision 218278] -mlittle-endian -mthumb -mcpu"
	.ascii	"=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mfpu"
	.ascii	"=fpv4-sp-d16 -g -O0 -fsingle-precision-constant\000"
.LASF56:
	.ascii	"SSCGR\000"
.LASF11:
	.ascii	"__uint64_t\000"
.LASF64:
	.ascii	"data\000"
.LASF48:
	.ascii	"AHB2LPENR\000"
.LASF73:
	.ascii	"tmp1\000"
.LASF36:
	.ascii	"RESERVED0\000"
.LASF39:
	.ascii	"RESERVED1\000"
.LASF43:
	.ascii	"RESERVED2\000"
.LASF46:
	.ascii	"RESERVED3\000"
.LASF50:
	.ascii	"RESERVED4\000"
.LASF53:
	.ascii	"RESERVED5\000"
.LASF55:
	.ascii	"RESERVED6\000"
.LASF80:
	.ascii	"ITM_RxBuffer\000"
.LASF40:
	.ascii	"AHB1ENR\000"
.LASF68:
	.ascii	"utmp32\000"
.LASF6:
	.ascii	"__int32_t\000"
.LASF66:
	.ascii	"rstr\000"
.LASF70:
	.ascii	"p_char\000"
.LASF14:
	.ascii	"__gnuc_va_list\000"
.LASF30:
	.ascii	"GPIO_TypeDef\000"
.LASF77:
	.ascii	"/home/emir/git/ambulight/semafor\000"
.LASF35:
	.ascii	"AHB3RSTR\000"
.LASF27:
	.ascii	"BSRRL\000"
.LASF29:
	.ascii	"LCKR\000"
.LASF52:
	.ascii	"APB2LPENR\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.9.3 20141119 (release) [ARM/embedded-4_9-branch revision 218278]"
