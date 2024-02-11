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
	.loc 1 3 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL0:
	.loc 1 7 0
	ldr	r2, .L3
	.loc 1 9 0
	ldr	r3, .L3+4
	.loc 1 7 0
	ldr	r1, [r2, #48]
	orr	r1, r1, #1
	.loc 1 3 0
	push	{r4}
	.cfi_def_cfa_offset 4
	.cfi_offset 4, -4
	.loc 1 7 0
	str	r1, [r2, #48]
	.loc 1 8 0
	ldr	r1, [r2, #64]
	.loc 1 17 0
	ldr	r4, .L3+8
	.loc 1 8 0
	orr	r1, r1, #131072
	str	r1, [r2, #64]
	.loc 1 9 0
	ldr	r2, [r3]
	orr	r2, r2, #160
	str	r2, [r3]
	.loc 1 10 0
	ldr	r2, [r3, #32]
	orr	r2, r2, #30464
	str	r2, [r3, #32]
	.loc 1 12 0
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
	.loc 1 21 0
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
	.loc 1 27 0 is_stmt 1
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
	.global	sprintUSART2
	.thumb
	.thumb_func
	.type	sprintUSART2, %function
sprintUSART2:
.LFB113:
	.loc 1 168 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL4:
.LBB18:
.LBB19:
	.loc 1 24 0
	ldr	r2, .L25
.LBE19:
.LBE18:
	.loc 1 168 0
	push	{r4, r5, r6}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 6, -4
	subs	r4, r0, #1
	addw	r5, r0, #1023
.LBB22:
.LBB23:
	.loc 1 27 0
	movs	r6, #13
.LBE23:
.LBE22:
.LBB25:
.LBB20:
	.loc 1 24 0
	mov	r0, r2
.LVL5:
.L13:
.LBE20:
.LBE25:
	.loc 1 171 0
	ldrb	r1, [r4, #1]!	@ zero_extendqisi2
.LVL6:
	cbz	r1, .L12
.L21:
.LBB26:
.LBB21:
	.loc 1 24 0
	ldrh	r3, [r2]
	lsls	r3, r3, #25
	bpl	.L21
	.loc 1 27 0
	uxth	r1, r1
	strh	r1, [r0, #4]	@ movhi
.LBE21:
.LBE26:
	.loc 1 173 0
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L16
.L15:
.LVL7:
	.loc 1 177 0
	cmp	r4, r5
	bne	.L13
.LVL8:
.L12:
	.loc 1 180 0
	pop	{r4, r5, r6}
	.cfi_remember_state
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL9:
	bx	lr
.L16:
	.cfi_restore_state
.LBB27:
.LBB24:
	.loc 1 24 0
	ldrh	r3, [r2]
	lsls	r3, r3, #25
	bpl	.L16
	.loc 1 27 0
	strh	r6, [r0, #4]	@ movhi
	b	.L15
.L26:
	.align	2
.L25:
	.word	1073759232
.LBE24:
.LBE27:
	.cfi_endproc
.LFE113:
	.size	sprintUSART2, .-sprintUSART2
	.align	2
	.global	printUSARTMOJ
	.thumb
	.thumb_func
	.type	printUSARTMOJ, %function
printUSARTMOJ:
.LFB112:
	.loc 1 30 0
	.cfi_startproc
	@ args = 4, pretend = 16, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 1
.LVL10:
	push	{r0, r1, r2, r3}
	.cfi_def_cfa_offset 16
	.cfi_offset 0, -16
	.cfi_offset 1, -12
	.cfi_offset 2, -8
	.cfi_offset 3, -4
	push	{r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 40
	.cfi_offset 4, -40
	.cfi_offset 5, -36
	.cfi_offset 6, -32
	.cfi_offset 7, -28
	.cfi_offset 8, -24
	.cfi_offset 14, -20
	sub	sp, sp, #48
	.cfi_def_cfa_offset 88
	.loc 1 30 0
	add	r3, sp, #72
	ldr	r6, [r3], #4
	.loc 1 42 0
	str	r3, [sp, #4]
.LVL11:
	.loc 1 44 0
	ldrb	r2, [r6]	@ zero_extendqisi2
	cbz	r2, .L27
.LBB28:
.LBB29:
	.loc 1 24 0
	ldr	r4, .L89
.LBE29:
.LBE28:
	.loc 1 44 0
	movs	r3, #0
.LBB32:
.LBB30:
	.loc 1 24 0
	mov	r7, r4
.LBE30:
.LBE32:
	.loc 1 44 0
	mov	r5, r3
	mov	r1, r6
.LBB33:
.LBB34:
	.loc 1 27 0
	mov	r8, #13
.LVL12:
.L58:
.LBE34:
.LBE33:
	.loc 1 45 0
	cmp	r2, #37
	beq	.L78
.L70:
.LBB36:
.LBB31:
	.loc 1 24 0
	ldrh	r3, [r4]
	lsls	r0, r3, #25
	bpl	.L70
	.loc 1 27 0
	uxth	r2, r2
	strh	r2, [r7, #4]	@ movhi
.LBE31:
.LBE36:
	.loc 1 158 0
	ldrb	r3, [r1]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L57
.L30:
	.loc 1 161 0
	adds	r5, r5, #1
.LVL13:
	uxth	r5, r5
.LVL14:
	.loc 1 44 0
	mov	r3, r5
	ldrb	r2, [r6, r5]	@ zero_extendqisi2
	adds	r1, r6, r5
	cmp	r2, #0
	bne	.L58
.LVL15:
.L27:
	.loc 1 166 0
	add	sp, sp, #48
	.cfi_remember_state
	.cfi_def_cfa_offset 40
.LVL16:
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	.cfi_restore 14
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
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
.LVL17:
.L57:
	.cfi_restore_state
.LBB37:
.LBB35:
	.loc 1 24 0
	ldrh	r3, [r4]
	lsls	r3, r3, #25
	bpl	.L57
	.loc 1 27 0
	strh	r8, [r7, #4]	@ movhi
	b	.L30
.L78:
.LBE35:
.LBE37:
	.loc 1 46 0
	add	r3, r3, r6
	ldrb	r2, [r3, #1]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L30
	.loc 1 47 0
	subs	r2, r2, #98
	cmp	r2, #22
	bhi	.L31
	tbb	[pc, r2]
.L33:
	.byte	(.L32-.L33)/2
	.byte	(.L34-.L33)/2
	.byte	(.L35-.L33)/2
	.byte	(.L31-.L33)/2
	.byte	(.L36-.L33)/2
	.byte	(.L31-.L33)/2
	.byte	(.L31-.L33)/2
	.byte	(.L31-.L33)/2
	.byte	(.L31-.L33)/2
	.byte	(.L31-.L33)/2
	.byte	(.L31-.L33)/2
	.byte	(.L31-.L33)/2
	.byte	(.L31-.L33)/2
	.byte	(.L31-.L33)/2
	.byte	(.L31-.L33)/2
	.byte	(.L31-.L33)/2
	.byte	(.L31-.L33)/2
	.byte	(.L37-.L33)/2
	.byte	(.L31-.L33)/2
	.byte	(.L31-.L33)/2
	.byte	(.L31-.L33)/2
	.byte	(.L31-.L33)/2
	.byte	(.L38-.L33)/2
	.p2align 1
.L38:
	.loc 1 123 0
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	cmp	r3, #98
	beq	.L79
	.loc 1 126 0
	cmp	r3, #104
	beq	.L80
	.loc 1 129 0
	cmp	r3, #119
	.loc 1 130 0
	ldr	r3, [sp, #4]
	.loc 1 129 0
	beq	.L81
	.loc 1 133 0
	adds	r2, r3, #4
	.loc 1 135 0
	subs	r5, r5, #1
.LVL18:
	.loc 1 133 0
	ldr	r3, [r3]
	str	r2, [sp, #4]
	.loc 1 135 0
	uxth	r5, r5
	.loc 1 133 0
	str	r3, [sp]
.LVL19:
	.loc 1 134 0
	mov	r0, #2048
	b	.L54
.LVL20:
.L37:
	.loc 1 95 0
	ldr	r3, [sp, #4]
	adds	r2, r3, #4
	.loc 1 96 0
	ldr	r0, [r3]
	.loc 1 95 0
	str	r2, [sp, #4]
.LVL21:
	.loc 1 96 0
	bl	sprintUSART2
.LVL22:
.L61:
	.loc 1 154 0
	adds	r5, r5, #1
.LVL23:
	uxth	r5, r5
.LVL24:
	b	.L30
.L36:
.LBB38:
	.loc 1 101 0
	ldr	r3, [sp, #4]
	adds	r3, r3, #7
	bic	r3, r3, #7
	ldrd	r0, [r3]
.LVL25:
	adds	r3, r3, #8
	.loc 1 104 0
	lsrs	r2, r0, #29
.LVL26:
	.loc 1 106 0
	bic	lr, r1, #-134217728
	.loc 1 109 0
	cmp	r0, #0
	.loc 1 101 0
	str	r3, [sp, #4]
	.loc 1 108 0
	orr	r3, r2, lr, lsl #3
	.loc 1 109 0
	sbcs	r2, r1, #0
.LVL27:
	.loc 1 110 0
	it	lt
	orrlt	r3, r3, #-2147483648
	.loc 1 112 0
	movs	r0, #0
.LVL28:
	and	r1, r1, #1073741824
	.loc 1 110 0
	str	r3, [sp]
	.loc 1 112 0
	orrs	r3, r0, r1
	bne	.L82
.L52:
.LVL29:
.LBE38:
	.loc 1 134 0
	mov	r0, #256
.LVL30:
.L60:
	.loc 1 151 0
	add	r2, sp, #8
	mov	r1, sp
	bl	getStr4NumMISC
.LVL31:
	.loc 1 152 0
	add	r0, sp, #8
	bl	sprintUSART2
.LVL32:
	b	.L61
.L35:
	.loc 1 69 0
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	cmp	r3, #98
	beq	.L83
	.loc 1 72 0
	cmp	r3, #104
	beq	.L84
	.loc 1 75 0
	cmp	r3, #119
	.loc 1 76 0
	ldr	r3, [sp, #4]
	.loc 1 75 0
	beq	.L85
	.loc 1 79 0
	adds	r2, r3, #4
	.loc 1 81 0
	subs	r5, r5, #1
.LVL33:
	.loc 1 79 0
	ldr	r3, [r3]
	str	r2, [sp, #4]
	.loc 1 81 0
	uxth	r5, r5
	.loc 1 79 0
	str	r3, [sp]
.LVL34:
	.loc 1 80 0
	movs	r0, #32
.LVL35:
	b	.L54
.LVL36:
.L32:
	.loc 1 49 0
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	cmp	r3, #98
	beq	.L86
	.loc 1 52 0
	cmp	r3, #104
	beq	.L87
	.loc 1 55 0
	cmp	r3, #119
	.loc 1 56 0
	ldr	r3, [sp, #4]
	.loc 1 55 0
	beq	.L88
	.loc 1 59 0
	adds	r2, r3, #4
	.loc 1 61 0
	subs	r5, r5, #1
.LVL37:
	.loc 1 59 0
	ldr	r3, [r3]
	str	r2, [sp, #4]
	.loc 1 61 0
	uxth	r5, r5
	.loc 1 59 0
	str	r3, [sp]
.LVL38:
	.loc 1 60 0
	movs	r0, #4
.LVL39:
.L54:
	.loc 1 138 0
	adds	r5, r5, #1
.LVL40:
	uxth	r5, r5
.LVL41:
	.loc 1 140 0
	b	.L60
.LVL42:
.L34:
.LBB39:
	.loc 1 89 0
	ldr	r3, [sp, #4]
	adds	r1, r3, #4
	ldrb	r2, [r3]	@ zero_extendqisi2
.LVL43:
	str	r1, [sp, #4]
.L48:
.LBB40:
.LBB41:
	.loc 1 24 0
	ldrh	r3, [r4]
	lsls	r3, r3, #25
	bpl	.L48
	.loc 1 27 0
	uxth	r3, r2
	strh	r3, [r7, #4]	@ movhi
.LVL44:
.LBE41:
.LBE40:
	.loc 1 92 0
	b	.L61
.LVL45:
.L31:
.LBE39:
	.loc 1 143 0
	movs	r3, #0
	str	r3, [sp]
.LVL46:
	.loc 1 146 0
	b	.L61
.LVL47:
.L82:
.LBB42:
	.loc 1 113 0
	ldr	r3, [sp]
	orr	r3, r3, #1073741824
	str	r3, [sp]
	b	.L52
.LVL48:
.L83:
.LBE42:
	.loc 1 70 0
	ldr	r3, [sp, #4]
	adds	r2, r3, #4
	ldr	r3, [r3]
	str	r2, [sp, #4]
	str	r3, [sp]
.LVL49:
	.loc 1 71 0
	movs	r0, #8
	b	.L54
.LVL50:
.L86:
	.loc 1 50 0
	ldr	r3, [sp, #4]
	adds	r2, r3, #4
	ldr	r3, [r3]
	str	r2, [sp, #4]
	str	r3, [sp]
.LVL51:
	.loc 1 51 0
	movs	r0, #1
	b	.L54
.LVL52:
.L79:
	.loc 1 124 0
	ldr	r3, [sp, #4]
	adds	r2, r3, #4
	ldr	r3, [r3]
	str	r2, [sp, #4]
	str	r3, [sp]
.LVL53:
	.loc 1 125 0
	mov	r0, #512
	b	.L54
.LVL54:
.L87:
	.loc 1 53 0
	ldr	r3, [sp, #4]
	adds	r2, r3, #4
	ldr	r3, [r3]
	str	r2, [sp, #4]
	str	r3, [sp]
.LVL55:
	.loc 1 54 0
	movs	r0, #2
	b	.L54
.LVL56:
.L80:
	.loc 1 127 0
	ldr	r3, [sp, #4]
	adds	r2, r3, #4
	ldr	r3, [r3]
	str	r2, [sp, #4]
	str	r3, [sp]
.LVL57:
	.loc 1 128 0
	mov	r0, #1024
	b	.L54
.LVL58:
.L84:
	.loc 1 73 0
	ldr	r3, [sp, #4]
	adds	r2, r3, #4
	ldr	r3, [r3]
	str	r2, [sp, #4]
	str	r3, [sp]
.LVL59:
	.loc 1 74 0
	movs	r0, #16
	b	.L54
.LVL60:
.L88:
	.loc 1 56 0
	adds	r2, r3, #4
	ldr	r3, [r3]
	str	r2, [sp, #4]
	str	r3, [sp]
.LVL61:
	.loc 1 57 0
	movs	r0, #4
	b	.L54
.LVL62:
.L81:
	.loc 1 130 0
	adds	r2, r3, #4
	ldr	r3, [r3]
	str	r2, [sp, #4]
	str	r3, [sp]
.LVL63:
	.loc 1 131 0
	mov	r0, #2048
	b	.L54
.LVL64:
.L85:
	.loc 1 76 0
	adds	r2, r3, #4
	ldr	r3, [r3]
	str	r2, [sp, #4]
	str	r3, [sp]
.LVL65:
	.loc 1 77 0
	movs	r0, #32
	b	.L54
.L90:
	.align	2
.L89:
	.word	1073759232
	.cfi_endproc
.LFE112:
	.size	printUSARTMOJ, .-printUSARTMOJ
	.align	2
	.global	printUSART2
	.thumb
	.thumb_func
	.type	printUSART2, %function
printUSART2:
.LFB114:
	.loc 1 184 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 1024
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL66:
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	sub	sp, sp, #1024
	.cfi_def_cfa_offset 1040
	.loc 1 189 0
	mov	r2, sp
	bl	getASCIIString
.LVL67:
.LBB43:
.LBB44:
	.loc 1 24 0
	ldr	r2, .L104
	add	r0, sp, #-1
	mov	r4, r2
	addw	r5, sp, #1023
.LBE44:
.LBE43:
.LBB46:
.LBB47:
	.loc 1 27 0
	movs	r6, #13
.LVL68:
.L92:
.LBE47:
.LBE46:
	.loc 1 191 0
	ldrb	r1, [r0, #1]!	@ zero_extendqisi2
.LVL69:
	cbz	r1, .L91
.L100:
.LBB49:
.LBB45:
	.loc 1 24 0
	ldrh	r3, [r2]
	lsls	r3, r3, #25
	bpl	.L100
	.loc 1 27 0
	uxth	r1, r1
	strh	r1, [r4, #4]	@ movhi
.LBE45:
.LBE49:
	.loc 1 193 0
	ldrb	r3, [r0]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L95
.L94:
.LVL70:
	.loc 1 198 0
	cmp	r0, r5
	bne	.L92
.LVL71:
.L91:
	.loc 1 201 0
	add	sp, sp, #1024
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	pop	{r4, r5, r6, pc}
.L95:
	.cfi_restore_state
.LBB50:
.LBB48:
	.loc 1 24 0
	ldrh	r3, [r2]
	lsls	r3, r3, #25
	bpl	.L95
	.loc 1 27 0
	strh	r6, [r4, #4]	@ movhi
	b	.L94
.L105:
	.align	2
.L104:
	.word	1073759232
.LBE48:
.LBE50:
	.cfi_endproc
.LFE114:
	.size	printUSART2, .-printUSART2
	.align	2
	.global	getcharUSART2
	.thumb
	.thumb_func
	.type	getcharUSART2, %function
getcharUSART2:
.LFB115:
	.loc 1 203 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 206 0
	ldr	r1, .L110
.L107:
	.loc 1 206 0 is_stmt 0 discriminator 1
	ldrh	r3, [r1]
	ldr	r2, .L110
	lsls	r3, r3, #26
	bpl	.L107
	.loc 1 209 0 is_stmt 1
	ldrh	r0, [r2, #4]
.LVL72:
	.loc 1 210 0
	ldrh	r3, [r2]
	bic	r3, r3, #32
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	.loc 1 213 0
	uxtb	r0, r0
	.loc 1 210 0
	strh	r3, [r2]	@ movhi
	.loc 1 213 0
	bx	lr
.L111:
	.align	2
.L110:
	.word	1073759232
	.cfi_endproc
.LFE115:
	.size	getcharUSART2, .-getcharUSART2
	.align	2
	.global	enableRxUSART2
	.thumb
	.thumb_func
	.type	enableRxUSART2, %function
enableRxUSART2:
.LFB116:
	.loc 1 215 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 215 0
	ldr	r3, .L113
	movw	r2, #8196
	strh	r2, [r3, #12]	@ movhi
	bx	lr
.L114:
	.align	2
.L113:
	.word	1073759232
	.cfi_endproc
.LFE116:
	.size	enableRxUSART2, .-enableRxUSART2
	.align	2
	.global	getRxStateUSART2
	.thumb
	.thumb_func
	.type	getRxStateUSART2, %function
getRxStateUSART2:
.LFB117:
	.loc 1 217 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL73:
	.loc 1 219 0
	ldr	r3, .L116
	ldrh	r0, [r3]
.LVL74:
	eor	r0, r0, #32
.LVL75:
	.loc 1 223 0
	ubfx	r0, r0, #5, #1
	bx	lr
.L117:
	.align	2
.L116:
	.word	1073759232
	.cfi_endproc
.LFE117:
	.size	getRxStateUSART2, .-getRxStateUSART2
.Letext0:
	.file 2 "/home/emir/msut/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/emir/msut/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/stdint.h"
	.file 4 "stm32f4xx.h"
	.file 5 "/home/emir/msut/STM32F407/gcc-arm-none-eabi/lib/gcc/arm-none-eabi/4.9.3/include/stdarg.h"
	.file 6 "misc.h"
	.file 7 "<built-in>"
	.file 8 "/home/emir/msut/STM32F407/Libraries/CMSIS/Include/core_cm4.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x7b0
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0x1
	.4byte	.LASF82
	.4byte	.LASF83
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
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x21
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x2c
	.4byte	0x57
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x3
	.byte	0x2d
	.4byte	0x69
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x3
	.byte	0x39
	.4byte	0x82
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF19
	.uleb128 0x5
	.4byte	0xc3
	.uleb128 0x6
	.4byte	0xc3
	.4byte	0xf5
	.uleb128 0x7
	.4byte	0xd9
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	0xad
	.uleb128 0x5
	.4byte	0xb8
	.uleb128 0x8
	.byte	0x28
	.byte	0x4
	.2byte	0x28e
	.4byte	0x18b
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x290
	.4byte	0xe0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x291
	.4byte	0xe0
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x292
	.4byte	0xe0
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x293
	.4byte	0xe0
	.byte	0xc
	.uleb128 0xa
	.ascii	"IDR\000"
	.byte	0x4
	.2byte	0x294
	.4byte	0xe0
	.byte	0x10
	.uleb128 0xa
	.ascii	"ODR\000"
	.byte	0x4
	.2byte	0x295
	.4byte	0xe0
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x296
	.4byte	0xf5
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x297
	.4byte	0xf5
	.byte	0x1a
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x298
	.4byte	0xe0
	.byte	0x1c
	.uleb128 0xa
	.ascii	"AFR\000"
	.byte	0x4
	.2byte	0x299
	.4byte	0x18b
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.4byte	0xe5
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x29a
	.4byte	0xff
	.uleb128 0x8
	.byte	0x88
	.byte	0x4
	.2byte	0x2dd
	.4byte	0x32b
	.uleb128 0xa
	.ascii	"CR\000"
	.byte	0x4
	.2byte	0x2df
	.4byte	0xe0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x2e0
	.4byte	0xe0
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x2e1
	.4byte	0xe0
	.byte	0x8
	.uleb128 0xa
	.ascii	"CIR\000"
	.byte	0x4
	.2byte	0x2e2
	.4byte	0xe0
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x2e3
	.4byte	0xe0
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x2e4
	.4byte	0xe0
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x4
	.2byte	0x2e5
	.4byte	0xe0
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x4
	.2byte	0x2e6
	.4byte	0xc3
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x4
	.2byte	0x2e7
	.4byte	0xe0
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x4
	.2byte	0x2e8
	.4byte	0xe0
	.byte	0x24
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x4
	.2byte	0x2e9
	.4byte	0xe5
	.byte	0x28
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x4
	.2byte	0x2ea
	.4byte	0xe0
	.byte	0x30
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x4
	.2byte	0x2eb
	.4byte	0xe0
	.byte	0x34
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x4
	.2byte	0x2ec
	.4byte	0xe0
	.byte	0x38
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x4
	.2byte	0x2ed
	.4byte	0xc3
	.byte	0x3c
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x4
	.2byte	0x2ee
	.4byte	0xe0
	.byte	0x40
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x4
	.2byte	0x2ef
	.4byte	0xe0
	.byte	0x44
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x4
	.2byte	0x2f0
	.4byte	0xe5
	.byte	0x48
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x4
	.2byte	0x2f1
	.4byte	0xe0
	.byte	0x50
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x4
	.2byte	0x2f2
	.4byte	0xe0
	.byte	0x54
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x4
	.2byte	0x2f3
	.4byte	0xe0
	.byte	0x58
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x4
	.2byte	0x2f4
	.4byte	0xc3
	.byte	0x5c
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x4
	.2byte	0x2f5
	.4byte	0xe0
	.byte	0x60
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x4
	.2byte	0x2f6
	.4byte	0xe0
	.byte	0x64
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x4
	.2byte	0x2f7
	.4byte	0xe5
	.byte	0x68
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x4
	.2byte	0x2f8
	.4byte	0xe0
	.byte	0x70
	.uleb128 0xa
	.ascii	"CSR\000"
	.byte	0x4
	.2byte	0x2f9
	.4byte	0xe0
	.byte	0x74
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x4
	.2byte	0x2fa
	.4byte	0xe5
	.byte	0x78
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x4
	.2byte	0x2fb
	.4byte	0xe0
	.byte	0x80
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x4
	.2byte	0x2fc
	.4byte	0xe0
	.byte	0x84
	.byte	0
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x4
	.2byte	0x2fd
	.4byte	0x19c
	.uleb128 0x8
	.byte	0x1c
	.byte	0x4
	.2byte	0x395
	.4byte	0x3f5
	.uleb128 0xa
	.ascii	"SR\000"
	.byte	0x4
	.2byte	0x397
	.4byte	0xf5
	.byte	0
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x4
	.2byte	0x398
	.4byte	0xad
	.byte	0x2
	.uleb128 0xa
	.ascii	"DR\000"
	.byte	0x4
	.2byte	0x399
	.4byte	0xf5
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x4
	.2byte	0x39a
	.4byte	0xad
	.byte	0x6
	.uleb128 0xa
	.ascii	"BRR\000"
	.byte	0x4
	.2byte	0x39b
	.4byte	0xf5
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x4
	.2byte	0x39c
	.4byte	0xad
	.byte	0xa
	.uleb128 0xa
	.ascii	"CR1\000"
	.byte	0x4
	.2byte	0x39d
	.4byte	0xf5
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x4
	.2byte	0x39e
	.4byte	0xad
	.byte	0xe
	.uleb128 0xa
	.ascii	"CR2\000"
	.byte	0x4
	.2byte	0x39f
	.4byte	0xf5
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x4
	.2byte	0x3a0
	.4byte	0xad
	.byte	0x12
	.uleb128 0xa
	.ascii	"CR3\000"
	.byte	0x4
	.2byte	0x3a1
	.4byte	0xf5
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x4
	.2byte	0x3a2
	.4byte	0xad
	.byte	0x16
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x4
	.2byte	0x3a3
	.4byte	0xf5
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x4
	.2byte	0x3a4
	.4byte	0xad
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x4
	.2byte	0x3a5
	.4byte	0x337
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0x5
	.byte	0x28
	.4byte	0x40c
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x4
	.byte	0x7
	.byte	0
	.4byte	0x423
	.uleb128 0xd
	.4byte	.LASF85
	.4byte	0x423
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0x5
	.byte	0x62
	.4byte	0x401
	.uleb128 0xf
	.4byte	.LASF79
	.byte	0x1
	.byte	0x17
	.byte	0x1
	.4byte	0x448
	.uleb128 0x10
	.4byte	.LASF75
	.byte	0x1
	.byte	0x17
	.4byte	0xa2
	.byte	0
	.uleb128 0x11
	.4byte	.LASF60
	.byte	0x1
	.byte	0x3
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x46d
	.uleb128 0x12
	.4byte	.LASF62
	.byte	0x1
	.byte	0x3
	.4byte	0xc3
	.4byte	.LLST0
	.byte	0
	.uleb128 0x13
	.4byte	0x430
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x48a
	.uleb128 0x14
	.4byte	0x43c
	.4byte	.LLST1
	.byte	0
	.uleb128 0x11
	.4byte	.LASF61
	.byte	0x1
	.byte	0xa8
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4ea
	.uleb128 0x15
	.ascii	"str\000"
	.byte	0x1
	.byte	0xa8
	.4byte	0x4ea
	.4byte	.LLST2
	.uleb128 0x16
	.ascii	"k\000"
	.byte	0x1
	.byte	0xa9
	.4byte	0xad
	.4byte	.LLST3
	.uleb128 0x17
	.4byte	0x430
	.4byte	.LBB18
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xac
	.4byte	0x4d4
	.uleb128 0x18
	.4byte	0x43c
	.byte	0
	.uleb128 0x19
	.4byte	0x430
	.4byte	.LBB22
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0xae
	.uleb128 0x18
	.4byte	0x43c
	.byte	0
	.byte	0
	.uleb128 0x1a
	.byte	0x4
	.4byte	0xa2
	.uleb128 0x11
	.4byte	.LASF63
	.byte	0x1
	.byte	0x1e
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x640
	.uleb128 0x1b
	.ascii	"str\000"
	.byte	0x1
	.byte	0x1e
	.4byte	0x640
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1c
	.uleb128 0x1d
	.4byte	.LASF64
	.byte	0x1
	.byte	0x1f
	.4byte	0x64d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x16
	.ascii	"k\000"
	.byte	0x1
	.byte	0x20
	.4byte	0xad
	.4byte	.LLST4
	.uleb128 0x1e
	.4byte	.LASF65
	.byte	0x1
	.byte	0x21
	.4byte	0xad
	.4byte	.LLST5
	.uleb128 0x1d
	.4byte	.LASF66
	.byte	0x1
	.byte	0x22
	.4byte	0xc3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1e
	.4byte	.LASF67
	.byte	0x1
	.byte	0x23
	.4byte	0x65d
	.4byte	.LLST6
	.uleb128 0x1e
	.4byte	.LASF68
	.byte	0x1
	.byte	0x24
	.4byte	0x640
	.4byte	.LLST7
	.uleb128 0x1f
	.ascii	"vl\000"
	.byte	0x1
	.byte	0x25
	.4byte	0x425
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x17
	.4byte	0x430
	.4byte	.LBB28
	.4byte	.Ldebug_ranges0+0x38
	.byte	0x1
	.byte	0x9d
	.4byte	0x593
	.uleb128 0x18
	.4byte	0x43c
	.byte	0
	.uleb128 0x17
	.4byte	0x430
	.4byte	.LBB33
	.4byte	.Ldebug_ranges0+0x58
	.byte	0x1
	.byte	0x9f
	.4byte	0x5ac
	.uleb128 0x18
	.4byte	0x43c
	.byte	0
	.uleb128 0x20
	.4byte	.Ldebug_ranges0+0x70
	.4byte	0x5d4
	.uleb128 0x1e
	.4byte	.LASF69
	.byte	0x1
	.byte	0x65
	.4byte	0xce
	.4byte	.LLST8
	.uleb128 0x1e
	.4byte	.LASF70
	.byte	0x1
	.byte	0x67
	.4byte	0xc3
	.4byte	.LLST9
	.byte	0
	.uleb128 0x21
	.4byte	.LBB39
	.4byte	.LBE39-.LBB39
	.4byte	0x60a
	.uleb128 0x1e
	.4byte	.LASF71
	.byte	0x1
	.byte	0x59
	.4byte	0x646
	.4byte	.LLST10
	.uleb128 0x22
	.4byte	0x430
	.4byte	.LBB40
	.4byte	.LBE40-.LBB40
	.byte	0x1
	.byte	0x5a
	.uleb128 0x14
	.4byte	0x43c
	.4byte	.LLST10
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL22
	.4byte	0x48a
	.uleb128 0x24
	.4byte	.LVL31
	.4byte	0x781
	.4byte	0x62e
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL32
	.4byte	0x48a
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.uleb128 0x1a
	.byte	0x4
	.4byte	0x646
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF72
	.uleb128 0x6
	.4byte	0xa2
	.4byte	0x65d
	.uleb128 0x7
	.4byte	0xd9
	.byte	0x27
	.byte	0
	.uleb128 0x1a
	.byte	0x4
	.4byte	0xc3
	.uleb128 0x11
	.4byte	.LASF73
	.byte	0x1
	.byte	0xb6
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x703
	.uleb128 0x15
	.ascii	"str\000"
	.byte	0x1
	.byte	0xb7
	.4byte	0x640
	.4byte	.LLST12
	.uleb128 0x15
	.ascii	"num\000"
	.byte	0x1
	.byte	0xb8
	.4byte	0x65d
	.4byte	.LLST13
	.uleb128 0x1d
	.4byte	.LASF74
	.byte	0x1
	.byte	0xba
	.4byte	0x703
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1040
	.uleb128 0x16
	.ascii	"k\000"
	.byte	0x1
	.byte	0xbb
	.4byte	0xad
	.4byte	.LLST14
	.uleb128 0x17
	.4byte	0x430
	.4byte	.LBB43
	.4byte	.Ldebug_ranges0+0x88
	.byte	0x1
	.byte	0xc0
	.4byte	0x6cb
	.uleb128 0x18
	.4byte	0x43c
	.byte	0
	.uleb128 0x17
	.4byte	0x430
	.4byte	.LBB46
	.4byte	.Ldebug_ranges0+0xa0
	.byte	0x1
	.byte	0xc2
	.4byte	0x6e4
	.uleb128 0x18
	.4byte	0x43c
	.byte	0
	.uleb128 0x26
	.4byte	.LVL67
	.4byte	0x79c
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0xa2
	.4byte	0x714
	.uleb128 0x27
	.4byte	0xd9
	.2byte	0x3ff
	.byte	0
	.uleb128 0x28
	.4byte	.LASF76
	.byte	0x1
	.byte	0xcb
	.4byte	0xa2
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x73b
	.uleb128 0x1d
	.4byte	.LASF75
	.byte	0x1
	.byte	0xcc
	.4byte	0xa2
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x29
	.4byte	.LASF86
	.byte	0x1
	.byte	0xd7
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.4byte	.LASF77
	.byte	0x1
	.byte	0xd9
	.4byte	0xa2
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x775
	.uleb128 0x1e
	.4byte	.LASF78
	.byte	0x1
	.byte	0xda
	.4byte	0xa2
	.4byte	.LLST15
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF87
	.byte	0x8
	.2byte	0x51b
	.4byte	0xfa
	.uleb128 0x2b
	.4byte	.LASF80
	.byte	0x6
	.byte	0x1e
	.4byte	0x79c
	.uleb128 0x2c
	.4byte	0xad
	.uleb128 0x2c
	.4byte	0x65d
	.uleb128 0x2c
	.4byte	0x4ea
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF88
	.byte	0x6
	.byte	0x1d
	.uleb128 0x2c
	.4byte	0x4ea
	.uleb128 0x2c
	.4byte	0x65d
	.uleb128 0x2c
	.4byte	0x4ea
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x18
	.byte	0
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x29
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x4
	.byte	0x75
	.sleb128 -1023
	.byte	0x9f
	.4byte	.LVL9-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 -1024
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 -1024
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL41-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x800
	.byte	0x9f
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x100
	.byte	0x9f
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x200
	.byte	0x9f
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x400
	.byte	0x9f
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x800
	.byte	0x9f
	.4byte	.LVL65-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -120
	.byte	0x9f
	.4byte	.LVL17-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-1-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x6
	.byte	0x91
	.sleb128 -116
	.byte	0x6
	.byte	0x38
	.byte	0x1c
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x6
	.byte	0x91
	.sleb128 -116
	.byte	0x6
	.byte	0x38
	.byte	0x1c
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x4d
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x4d
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL67-1-.Ltext0
	.4byte	.LFE114-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL67-1-.Ltext0
	.4byte	.LFE114-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x7
	.byte	0x70
	.sleb128 0
	.byte	0x91
	.sleb128 -1041
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x7
	.byte	0x70
	.sleb128 0
	.byte	0x91
	.sleb128 -1041
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL75-.Ltext0
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
	.4byte	.LBB18-.Ltext0
	.4byte	.LBE18-.Ltext0
	.4byte	.LBB25-.Ltext0
	.4byte	.LBE25-.Ltext0
	.4byte	.LBB26-.Ltext0
	.4byte	.LBE26-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB22-.Ltext0
	.4byte	.LBE22-.Ltext0
	.4byte	.LBB27-.Ltext0
	.4byte	.LBE27-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB28-.Ltext0
	.4byte	.LBE28-.Ltext0
	.4byte	.LBB32-.Ltext0
	.4byte	.LBE32-.Ltext0
	.4byte	.LBB36-.Ltext0
	.4byte	.LBE36-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB33-.Ltext0
	.4byte	.LBE33-.Ltext0
	.4byte	.LBB37-.Ltext0
	.4byte	.LBE37-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB38-.Ltext0
	.4byte	.LBE38-.Ltext0
	.4byte	.LBB42-.Ltext0
	.4byte	.LBE42-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB43-.Ltext0
	.4byte	.LBE43-.Ltext0
	.4byte	.LBB49-.Ltext0
	.4byte	.LBE49-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB46-.Ltext0
	.4byte	.LBE46-.Ltext0
	.4byte	.LBB50-.Ltext0
	.4byte	.LBE50-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF44:
	.ascii	"AHB1LPENR\000"
.LASF56:
	.ascii	"GTPR\000"
.LASF34:
	.ascii	"APB1RSTR\000"
.LASF38:
	.ascii	"AHB2ENR\000"
.LASF18:
	.ascii	"uint64_t\000"
.LASF2:
	.ascii	"short int\000"
.LASF19:
	.ascii	"sizetype\000"
.LASF51:
	.ascii	"BDCR\000"
.LASF54:
	.ascii	"PLLI2SCFGR\000"
.LASF75:
	.ascii	"data\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF53:
	.ascii	"SSCGR\000"
.LASF31:
	.ascii	"AHB2RSTR\000"
.LASF71:
	.ascii	"tchar\000"
.LASF46:
	.ascii	"AHB3LPENR\000"
.LASF81:
	.ascii	"GNU C 4.9.3 20141119 (release) [ARM/embedded-4_9-br"
	.ascii	"anch revision 218278] -mlittle-endian -mthumb -mcpu"
	.ascii	"=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mfpu"
	.ascii	"=fpv4-sp-d16 -g -O2 -fsingle-precision-constant\000"
.LASF59:
	.ascii	"va_list\000"
.LASF43:
	.ascii	"RESERVED3\000"
.LASF14:
	.ascii	"uint8_t\000"
.LASF41:
	.ascii	"APB1ENR\000"
.LASF57:
	.ascii	"USART_TypeDef\000"
.LASF74:
	.ascii	"r_str\000"
.LASF21:
	.ascii	"OTYPER\000"
.LASF0:
	.ascii	"signed char\000"
.LASF65:
	.ascii	"arg_type\000"
.LASF10:
	.ascii	"long long int\000"
.LASF23:
	.ascii	"PUPDR\000"
.LASF84:
	.ascii	"__va_list\000"
.LASF7:
	.ascii	"long int\000"
.LASF60:
	.ascii	"initUSART2\000"
.LASF55:
	.ascii	"RCC_TypeDef\000"
.LASF25:
	.ascii	"BSRRH\000"
.LASF20:
	.ascii	"MODER\000"
.LASF35:
	.ascii	"APB2RSTR\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF63:
	.ascii	"printUSARTMOJ\000"
.LASF62:
	.ascii	"baudrate\000"
.LASF88:
	.ascii	"getASCIIString\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF77:
	.ascii	"getRxStateUSART2\000"
.LASF24:
	.ascii	"BSRRL\000"
.LASF86:
	.ascii	"enableRxUSART2\000"
.LASF42:
	.ascii	"APB2ENR\000"
.LASF82:
	.ascii	"usart.c\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF17:
	.ascii	"uint32_t\000"
.LASF13:
	.ascii	"unsigned int\000"
.LASF85:
	.ascii	"__ap\000"
.LASF15:
	.ascii	"uint16_t\000"
.LASF76:
	.ascii	"getcharUSART2\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF30:
	.ascii	"AHB1RSTR\000"
.LASF29:
	.ascii	"CFGR\000"
.LASF39:
	.ascii	"AHB3ENR\000"
.LASF28:
	.ascii	"PLLCFGR\000"
.LASF69:
	.ascii	"utmp64\000"
.LASF48:
	.ascii	"APB1LPENR\000"
.LASF67:
	.ascii	"p_uint32\000"
.LASF73:
	.ascii	"printUSART2\000"
.LASF72:
	.ascii	"char\000"
.LASF16:
	.ascii	"int32_t\000"
.LASF83:
	.ascii	"/home/emir/msut/STM32F407/examples/audio-dac\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF11:
	.ascii	"__uint64_t\000"
.LASF80:
	.ascii	"getStr4NumMISC\000"
.LASF45:
	.ascii	"AHB2LPENR\000"
.LASF70:
	.ascii	"tmp1\000"
.LASF33:
	.ascii	"RESERVED0\000"
.LASF36:
	.ascii	"RESERVED1\000"
.LASF40:
	.ascii	"RESERVED2\000"
.LASF22:
	.ascii	"OSPEEDR\000"
.LASF47:
	.ascii	"RESERVED4\000"
.LASF50:
	.ascii	"RESERVED5\000"
.LASF52:
	.ascii	"RESERVED6\000"
.LASF8:
	.ascii	"__uint32_t\000"
.LASF37:
	.ascii	"AHB1ENR\000"
.LASF66:
	.ascii	"utmp32\000"
.LASF61:
	.ascii	"sprintUSART2\000"
.LASF78:
	.ascii	"r_val\000"
.LASF6:
	.ascii	"__int32_t\000"
.LASF64:
	.ascii	"rstr\000"
.LASF68:
	.ascii	"p_char\000"
.LASF58:
	.ascii	"__gnuc_va_list\000"
.LASF27:
	.ascii	"GPIO_TypeDef\000"
.LASF32:
	.ascii	"AHB3RSTR\000"
.LASF79:
	.ascii	"putcharUSART2\000"
.LASF87:
	.ascii	"ITM_RxBuffer\000"
.LASF26:
	.ascii	"LCKR\000"
.LASF49:
	.ascii	"APB2LPENR\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.9.3 20141119 (release) [ARM/embedded-4_9-branch revision 218278]"
