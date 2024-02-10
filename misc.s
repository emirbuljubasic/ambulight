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
	.file	"misc.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	getDNum
	.thumb
	.thumb_func
	.type	getDNum, %function
getDNum:
.LFB110:
	.file 1 "misc.c"
	.loc 1 5 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL0:
	push	{r4, r5, r6, r7}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 7, -4
	.loc 1 7 0
	ldr	r2, .L9
	.loc 1 17 0
	ldr	r7, .L9+4
	add	r5, r0, #10
	.loc 1 11 0
	movs	r6, #48
.LVL1:
.L4:
	.loc 1 12 0
	cmp	r1, r2
	.loc 1 11 0
	strb	r6, [r5, #-1]!
.LVL2:
	.loc 1 12 0
	bcc	.L2
	movs	r4, #49
	b	.L3
.L5:
	mov	r4, r3
.L3:
	.loc 1 15 0
	subs	r1, r1, r2
.LVL3:
	adds	r3, r4, #1
	.loc 1 12 0
	cmp	r1, r2
	uxtb	r3, r3
	bcs	.L5
	strb	r4, [r5]
.L2:
	.loc 1 17 0 discriminator 2
	umull	r3, r2, r7, r2
.LVL4:
	.loc 1 9 0 discriminator 2
	cmp	r5, r0
	.loc 1 17 0 discriminator 2
	lsr	r2, r2, #3
.LVL5:
	.loc 1 9 0 discriminator 2
	bne	.L4
	.loc 1 19 0
	pop	{r4, r5, r6, r7}
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL6:
	bx	lr
.L10:
	.align	2
.L9:
	.word	1000000000
	.word	-858993459
	.cfi_endproc
.LFE110:
	.size	getDNum, .-getDNum
	.align	2
	.global	putDNum
	.thumb
	.thumb_func
	.type	putDNum, %function
putDNum:
.LFB111:
	.loc 1 22 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL7:
	push	{r4, r5}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 5, -4
	.loc 1 23 0
	movs	r4, #0
	adds	r0, r0, #9
.LVL8:
	.loc 1 25 0
	mov	r3, r4
.LVL9:
.L15:
	.loc 1 27 0
	cbnz	r4, .L12
.LVL10:
	.loc 1 29 0
	ldrb	r5, [r0]	@ zero_extendqisi2
	cmp	r5, #48
	beq	.L19
.L13:
	.loc 1 32 0
	ldrh	r4, [r1]
.LVL11:
.L18:
	.loc 1 38 0
	strb	r5, [r2, r4]
	.loc 1 39 0
	ldrh	r4, [r1]
	adds	r4, r4, #1
	strh	r4, [r1]	@ movhi
	movs	r4, #1
.L14:
	.loc 1 25 0 discriminator 2
	adds	r3, r3, #1
.LVL12:
	uxtb	r3, r3
.LVL13:
	cmp	r3, #10
	add	r0, r0, #-1
	bne	.L15
	.loc 1 43 0
	pop	{r4, r5}
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr
.L12:
	.cfi_restore_state
	.loc 1 38 0
	ldrh	r4, [r1]
	ldrb	r5, [r0]	@ zero_extendqisi2
	b	.L18
.LVL14:
.L19:
	.loc 1 29 0 discriminator 1
	cmp	r3, #9
	bne	.L14
	b	.L13
	.cfi_endproc
.LFE111:
	.size	putDNum, .-putDNum
	.align	2
	.global	strcon
	.thumb
	.thumb_func
	.type	strcon, %function
strcon:
.LFB112:
	.loc 1 45 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL15:
	.loc 1 48 0
	ldrb	r3, [r0]	@ zero_extendqisi2
	.loc 1 45 0
	push	{r4, r5}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 5, -4
	.loc 1 48 0
	cbz	r3, .L25
	movs	r3, #0
.LVL16:
.L22:
	.loc 1 50 0
	adds	r3, r3, #1
.LVL17:
	uxth	r3, r3
.LVL18:
	.loc 1 48 0
	adds	r5, r0, r3
	ldrb	r2, [r0, r3]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L22
.LVL19:
.L21:
	.loc 1 53 0
	ldrb	r4, [r1]	@ zero_extendqisi2
	cbz	r4, .L23
	movs	r2, #0
.LVL20:
.L24:
	.loc 1 56 0
	adds	r2, r2, #1
.LVL21:
	.loc 1 55 0
	strb	r4, [r0, r3]
	.loc 1 56 0
	uxth	r2, r2
.LVL22:
	.loc 1 57 0
	adds	r3, r3, #1
.LVL23:
	.loc 1 53 0
	ldrb	r4, [r1, r2]	@ zero_extendqisi2
	.loc 1 57 0
	uxth	r3, r3
.LVL24:
	.loc 1 53 0
	cmp	r4, #0
	bne	.L24
	adds	r5, r0, r3
.LVL25:
.L23:
	.loc 1 59 0
	movs	r3, #0
.LVL26:
	strb	r3, [r5]
	.loc 1 60 0
	pop	{r4, r5}
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr
.LVL27:
.L25:
	.cfi_restore_state
	.loc 1 48 0
	mov	r5, r0
	b	.L21
	.cfi_endproc
.LFE112:
	.size	strcon, .-strcon
	.align	2
	.global	getASCIIString
	.thumb
	.thumb_func
	.type	getASCIIString, %function
getASCIIString:
.LFB113:
	.loc 1 64 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL28:
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
	fstmfdd	sp!, {d8}
	.cfi_def_cfa_offset 44
	.cfi_offset 80, -44
	.cfi_offset 81, -40
	sub	sp, sp, #36
	.cfi_def_cfa_offset 80
	.loc 1 68 0
	movs	r3, #0
	mov	r10, r3
	.loc 1 64 0
	mov	r9, r2
	.loc 1 68 0
	strh	r3, [sp, #18]	@ movhi
.LVL29:
	mov	r6, r3
.LVL30:
	.loc 1 66 0
	mov	r2, r3
.LVL31:
	ldrb	r3, [r0]	@ zero_extendqisi2
	.loc 1 64 0
	str	r1, [sp, #8]
	.loc 1 72 0
	movs	r1, #32
.LVL32:
	.loc 1 64 0
	str	r0, [sp, #4]
	.loc 1 187 0
	flds	s17, .L120
.LBB13:
.LBB14:
	.loc 1 17 0
	ldr	r8, .L120+8
.LBE14:
.LBE13:
	.loc 1 164 0
	flds	s16, .L120+12
	.loc 1 72 0
	str	r1, [sp, #12]
.LVL33:
	.loc 1 77 0
	cbz	r3, .L107
.LVL34:
.L75:
	.loc 1 79 0
	cbnz	r2, .L34
	.loc 1 81 0
	cmp	r3, #37
	beq	.L76
	.loc 1 87 0
	ldrh	r1, [sp, #18]
	.loc 1 88 0
	adds	r0, r1, #1
	.loc 1 87 0
	strb	r3, [r9, r1]
	.loc 1 88 0
	strh	r0, [sp, #18]	@ movhi
.L35:
.LVL35:
	.loc 1 90 0
	adds	r6, r6, #1
.LVL36:
	uxth	r6, r6
.LVL37:
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, r6]	@ zero_extendqisi2
.LVL38:
	.loc 1 77 0
	cmp	r3, #0
	bne	.L75
.LVL39:
.L107:
	.loc 1 277 0
	ldrh	r2, [sp, #18]
.LVL40:
	strb	r3, [r9, r2]
	.loc 1 278 0
	add	sp, sp, #36
	.cfi_remember_state
	.cfi_def_cfa_offset 44
	@ sp needed
	fldmfdd	sp!, {d8}
	.cfi_restore 80
	.cfi_restore 81
	.cfi_def_cfa_offset 36
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL41:
.L34:
	.cfi_restore_state
	.loc 1 93 0
	cmp	r2, #1
	beq	.L108
	.loc 1 123 0
	cmp	r2, #2
	beq	.L109
	.loc 1 140 0
	cmp	r2, #3
	beq	.L110
	.loc 1 147 0
	cmp	r2, #4
	beq	.L111
	.loc 1 212 0
	cmp	r2, #5
	beq	.L112
	.loc 1 224 0
	cmp	r2, #6
	beq	.L113
	.loc 1 244 0
	cmp	r2, #7
	beq	.L114
	.loc 1 272 0
	ldrh	r1, [sp, #18]
	.loc 1 273 0
	adds	r6, r6, #1
.LVL42:
	.loc 1 272 0
	strb	r3, [r9, r1]
	.loc 1 273 0
	uxth	r6, r6
.LVL43:
	.loc 1 274 0
	adds	r1, r1, #1
	ldr	r3, [sp, #4]
	strh	r1, [sp, #18]	@ movhi
	ldrb	r3, [r3, r6]	@ zero_extendqisi2
.LVL44:
	.loc 1 77 0
	cmp	r3, #0
	bne	.L75
	b	.L107
.LVL45:
.L76:
	.loc 1 83 0
	movs	r2, #1
	b	.L35
.L108:
	.loc 1 95 0
	cmp	r3, #100
	beq	.L77
.LVL46:
	.loc 1 99 0
	cmp	r3, #99
	beq	.L78
	.loc 1 103 0
	cmp	r3, #102
	beq	.L79
	.loc 1 107 0
	cmp	r3, #115
	beq	.L80
	.loc 1 111 0
	cmp	r3, #98
	beq	.L81
	.loc 1 117 0
	cmp	r3, #104
	ite	ne
	movne	r2, #1
	moveq	r2, #7
.LVL47:
	.loc 1 77 0
	cmp	r3, #0
	bne	.L75
	b	.L107
.LVL48:
.L109:
	.loc 1 126 0
	ldr	r3, [sp, #8]
	ldr	r2, [r3]
.LVL49:
	.loc 1 127 0
	cmp	r2, #0
	blt	.L115
.LVL50:
.L39:
.LBB18:
.LBB19:
	.loc 1 7 0
	ldr	r1, .L120+4
.LVL51:
	add	r4, sp, #20
.LVL52:
	add	r0, sp, #30
	.loc 1 11 0
	movs	r7, #48
.LVL53:
.L42:
	.loc 1 12 0
	cmp	r1, r2
	.loc 1 11 0
	strb	r7, [r0, #-1]!
.LVL54:
	.loc 1 12 0
	bhi	.L40
	movs	r5, #49
	b	.L41
.L83:
	mov	r5, r3
.L41:
	.loc 1 15 0
	subs	r2, r2, r1
.LVL55:
	adds	r3, r5, #1
	.loc 1 12 0
	cmp	r2, r1
	uxtb	r3, r3
	bcs	.L83
	strb	r5, [r0]
.L40:
	.loc 1 17 0
	umull	r3, r1, r8, r1
.LVL56:
	.loc 1 9 0
	cmp	r0, r4
	.loc 1 17 0
	lsr	r1, r1, #3
.LVL57:
	.loc 1 9 0
	bne	.L42
.LVL58:
.L105:
.LBE19:
.LBE18:
	.loc 1 207 0
	add	r1, sp, #18
	mov	r2, r9
	bl	putDNum
.LVL59:
.L106:
	.loc 1 209 0
	adds	r6, r6, #1
.LVL60:
	uxth	r6, r6
.LVL61:
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, r6]	@ zero_extendqisi2
.LVL62:
	.loc 1 210 0
	movs	r2, #10
.LVL63:
	.loc 1 77 0
	cmp	r3, #0
	bne	.L75
	b	.L107
.LVL64:
.L110:
	.loc 1 142 0
	ldr	r2, [sp, #8]
	ldrh	r3, [sp, #18]
	ldr	r2, [r2]
	strb	r2, [r9, r3]
	.loc 1 144 0
	adds	r6, r6, #1
.LVL65:
	.loc 1 143 0
	adds	r3, r3, #1
	strh	r3, [sp, #18]	@ movhi
	.loc 1 144 0
	uxth	r6, r6
.LVL66:
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, r6]	@ zero_extendqisi2
	.loc 1 145 0
	movs	r2, #10
.LVL67:
	.loc 1 77 0
	cmp	r3, #0
	bne	.L75
	b	.L107
.LVL68:
.L111:
	.loc 1 150 0
	ldr	r3, [sp, #8]
	flds	s14, [r3]
.LVL69:
	.loc 1 152 0
	fcmpezs	s14
	fmstat
	bmi	.L116
	.loc 1 159 0
	fconsts	s15, #112
	fcmpes	s14, s15
	fmstat
	bmi	.L47
.L119:
.LVL70:
	.loc 1 174 0
	ble	.L117
	movs	r3, #0
	.loc 1 176 0
	fconsts	s12, #36
.LVL71:
.L53:
	fmuls	s15, s15, s12
.LVL72:
	.loc 1 177 0
	adds	r3, r3, #1
.LVL73:
	.loc 1 174 0
	fcmpes	s14, s15
	fmstat
	.loc 1 177 0
	uxth	r3, r3
.LVL74:
	.loc 1 176 0
	fconsts	s13, #36
	.loc 1 174 0
	bgt	.L53
	fdivs	s15, s15, s13
.LVL75:
	subs	r5, r3, #1
	uxth	r5, r5
.LVL76:
.L50:
	add	r7, sp, #30
.LBB20:
.LBB15:
	.loc 1 7 0
	ldr	r1, .L120+4
.LBE15:
.LBE20:
	.loc 1 187 0
	mov	lr, r7
	add	r4, sp, #20
.LBB21:
.LBB16:
	.loc 1 11 0
	mov	ip, #48
.LBE16:
.LBE21:
	.loc 1 183 0
	fdivs	s15, s14, s15
.LVL77:
	.loc 1 184 0
	ftouizs	s14, s15
	fmrs	r2, s14	@ int
.LVL78:
	.loc 1 186 0
	fuitos	s14, s14
	fsubs	s15, s15, s14
.LVL79:
	.loc 1 187 0
	fmuls	s15, s15, s17
.LVL80:
	ftouizs	s15, s15
	fmrs	fp, s15	@ int
.LVL81:
.L56:
.LBB22:
.LBB17:
	.loc 1 12 0
	cmp	r1, r2
	.loc 1 11 0
	strb	ip, [lr, #-1]!
.LVL82:
	.loc 1 12 0
	bhi	.L54
	movs	r0, #49
	b	.L55
.L85:
	mov	r0, r3
.L55:
	.loc 1 15 0
	subs	r2, r2, r1
.LVL83:
	adds	r3, r0, #1
	.loc 1 12 0
	cmp	r2, r1
	uxtb	r3, r3
	bcs	.L85
	strb	r0, [lr]
.L54:
	.loc 1 17 0
	umull	r3, r1, r8, r1
.LVL84:
	.loc 1 9 0
	cmp	lr, r4
	.loc 1 17 0
	lsr	r1, r1, #3
.LVL85:
	.loc 1 9 0
	bne	.L56
.LBE17:
.LBE22:
	.loc 1 190 0
	add	r1, sp, #18
.LVL86:
	mov	r0, r4
	mov	r2, r9
.LVL87:
	bl	putDNum
.LVL88:
.LBB23:
.LBB24:
	.loc 1 7 0
	ldr	r2, .L120+4
.LBE24:
.LBE23:
	.loc 1 190 0
	mov	r1, r7
.LBB26:
.LBB25:
	.loc 1 11 0
	movs	r0, #48
.LVL89:
.L59:
	.loc 1 12 0
	cmp	fp, r2
	.loc 1 11 0
	strb	r0, [r1, #-1]!
.LVL90:
	.loc 1 12 0
	bcc	.L57
	mov	lr, #49
	b	.L58
.L86:
	mov	lr, r3
.L58:
	.loc 1 15 0
	rsb	fp, r2, fp
.LVL91:
	add	r3, lr, #1
	.loc 1 12 0
	cmp	fp, r2
	uxtb	r3, r3
	bcs	.L86
	strb	lr, [r1]
.L57:
	.loc 1 17 0
	umull	r3, r2, r8, r2
.LVL92:
	.loc 1 9 0
	cmp	r1, r4
	.loc 1 17 0
	lsr	r2, r2, #3
.LVL93:
	.loc 1 9 0
	bne	.L59
.LBE25:
.LBE26:
	.loc 1 193 0
	movs	r3, #46
	.loc 1 194 0
	add	r1, sp, #18
.LVL94:
	mov	r2, r9
.LVL95:
	mov	r0, r4
	.loc 1 193 0
	strb	r3, [sp, #23]
	.loc 1 194 0
	bl	putDNum
.LVL96:
	.loc 1 196 0
	ldrh	r2, [sp, #18]
	movs	r1, #101
	strb	r1, [r9, r2]
	.loc 1 199 0
	ldr	r1, [sp, #12]
	.loc 1 197 0
	adds	r3, r2, #1
	uxth	r3, r3
	.loc 1 199 0
	cmp	r1, #45
	.loc 1 197 0
	strh	r3, [sp, #18]	@ movhi
	.loc 1 199 0
	beq	.L118
.L60:
.LVL97:
.LBB27:
.LBB28:
	.loc 1 7 0
	ldr	r2, .L120+4
	.loc 1 11 0
	movs	r0, #48
.LVL98:
.L63:
	.loc 1 12 0
	cmp	r5, r2
	.loc 1 11 0
	strb	r0, [r7, #-1]!
.LVL99:
	.loc 1 12 0
	bcc	.L61
	movs	r1, #49
	b	.L62
.L87:
	mov	r1, r3
.L62:
	.loc 1 15 0
	subs	r5, r5, r2
.LVL100:
	adds	r3, r1, #1
	.loc 1 12 0
	cmp	r5, r2
	uxtb	r3, r3
	bcs	.L87
	strb	r1, [r7]
.L61:
	.loc 1 17 0
	umull	r3, r2, r8, r2
.LVL101:
	.loc 1 9 0
	cmp	r7, r4
	.loc 1 17 0
	lsr	r2, r2, #3
.LVL102:
	.loc 1 9 0
	bne	.L63
.LBE28:
.LBE27:
	.loc 1 207 0
	mov	r0, r7
	b	.L105
.LVL103:
.L78:
	.loc 1 101 0
	movs	r2, #3
	b	.L75
.LVL104:
.L77:
	.loc 1 97 0
	movs	r2, #2
	b	.L75
.L112:
.LBB29:
	.loc 1 215 0
	ldr	r1, [sp, #8]
	ldrb	r2, [r1, r10]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L106
	ldrh	r3, [sp, #18]
.L66:
	.loc 1 217 0
	strb	r2, [r9, r3]
	.loc 1 219 0
	add	r10, r10, #1
.LVL105:
	uxth	r10, r10
.LVL106:
	.loc 1 218 0
	adds	r3, r3, #1
	.loc 1 215 0
	ldrb	r2, [r1, r10]	@ zero_extendqisi2
	.loc 1 218 0
	uxth	r3, r3
	.loc 1 215 0
	cmp	r2, #0
	bne	.L66
	strh	r3, [sp, #18]	@ movhi
	b	.L106
.LVL107:
.L79:
.LBE29:
	.loc 1 105 0
	movs	r2, #4
	b	.L75
.LVL108:
.L113:
	ldrh	r3, [sp, #18]
.LBB30:
	.loc 1 226 0
	ldr	r2, [sp, #8]
	add	r1, r3, #32
	ldr	r2, [r2]
.LVL109:
	uxth	r1, r1
	.loc 1 236 0
	movs	r0, #48
	.loc 1 232 0
	movs	r4, #49
.LVL110:
.L70:
	.loc 1 230 0
	cmp	r2, #0
	.loc 1 232 0
	ite	lt
	strblt	r4, [r9, r3]
	.loc 1 236 0
	strbge	r0, [r9, r3]
	.loc 1 239 0
	adds	r3, r3, #1
	uxth	r3, r3
	.loc 1 228 0
	cmp	r3, r1
	.loc 1 238 0
	lsl	r2, r2, #1
.LVL111:
	.loc 1 228 0
	bne	.L70
	.loc 1 241 0
	adds	r6, r6, #1
.LVL112:
	strh	r3, [sp, #18]	@ movhi
	uxth	r6, r6
.LVL113:
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, r6]	@ zero_extendqisi2
	.loc 1 242 0
	movs	r2, #10
.LVL114:
.LBE30:
	.loc 1 77 0
	cmp	r3, #0
	bne	.L75
	b	.L107
.LVL115:
.L115:
	.loc 1 129 0
	ldrh	r3, [sp, #18]
.LVL116:
	movs	r1, #45
	strb	r1, [r9, r3]
	.loc 1 130 0
	adds	r3, r3, #1
	.loc 1 131 0
	negs	r2, r2
.LVL117:
	.loc 1 130 0
	strh	r3, [sp, #18]	@ movhi
.LVL118:
	b	.L39
.LVL119:
.L80:
	.loc 1 109 0
	movs	r2, #5
	b	.L75
.L121:
	.align	2
.L120:
	.word	1148846080
	.word	1000000000
	.word	-858993459
	.word	1036831949
.LVL120:
.L114:
.LBB31:
	.loc 1 249 0
	ldrh	r2, [sp, #18]
	.loc 1 246 0
	ldr	r3, [sp, #8]
	.loc 1 250 0
	add	r0, r9, r2
	.loc 1 246 0
	ldr	r1, [r3]
.LVL121:
	.loc 1 250 0
	movs	r4, #120
	.loc 1 249 0
	movs	r7, #48
	.loc 1 251 0
	adds	r3, r2, #2
	add	r5, r2, #10
	.loc 1 249 0
	strb	r7, [r9, r2]
	.loc 1 251 0
	uxth	r3, r3
.LVL122:
	.loc 1 250 0
	strb	r4, [r0, #1]
	uxth	r4, r5
.LVL123:
.L74:
	.loc 1 255 0
	lsrs	r2, r1, #28
.LVL124:
	.loc 1 256 0
	cmp	r2, #9
	.loc 1 258 0
	add	r0, r2, #48
	.loc 1 262 0
	itet	hi
	addhi	r2, r2, #55
.LVL125:
	.loc 1 258 0
	strbls	r0, [r9, r3]
	.loc 1 262 0
	strbhi	r2, [r9, r3]
	.loc 1 265 0
	adds	r3, r3, #1
.LVL126:
	uxth	r3, r3
	.loc 1 253 0
	cmp	r3, r4
	.loc 1 264 0
	lsl	r1, r1, #4
.LVL127:
	.loc 1 253 0
	bne	.L74
	.loc 1 267 0
	adds	r6, r6, #1
.LVL128:
	uxth	r6, r6
.LVL129:
	ldr	r3, [sp, #4]
.LVL130:
	strh	r5, [sp, #18]	@ movhi
	ldrb	r3, [r3, r6]	@ zero_extendqisi2
	.loc 1 268 0
	movs	r2, #10
.LVL131:
.LBE31:
	.loc 1 77 0
	cmp	r3, #0
	bne	.L75
	b	.L107
.LVL132:
.L47:
	.loc 1 164 0
	fcmpes	s14, s16
	fmstat
	flds	s15, .L120+12
	mov	r5, #1
	bpl	.L102
.LVL133:
.L52:
	.loc 1 166 0
	fmuls	s15, s15, s16
.LVL134:
	.loc 1 167 0
	adds	r5, r5, #1
.LVL135:
	.loc 1 164 0
	fcmpes	s14, s15
	fmstat
	.loc 1 167 0
	uxth	r5, r5
.LVL136:
	.loc 1 164 0
	bmi	.L52
.LVL137:
.L102:
	.loc 1 161 0
	movs	r3, #45
	str	r3, [sp, #12]
	b	.L50
.LVL138:
.L81:
	.loc 1 113 0
	movs	r2, #6
	b	.L75
.LVL139:
.L116:
	.loc 1 154 0
	ldrh	r3, [sp, #18]
.LVL140:
	.loc 1 156 0
	fnegs	s14, s14
.LVL141:
	.loc 1 159 0
	fconsts	s15, #112
	.loc 1 154 0
	movs	r2, #45
	.loc 1 159 0
	fcmpes	s14, s15
	.loc 1 154 0
	strb	r2, [r9, r3]
	.loc 1 159 0
	fmstat
	.loc 1 155 0
	add	r3, r3, #1
	strh	r3, [sp, #18]	@ movhi
	.loc 1 159 0
	bpl	.L119
	b	.L47
.LVL142:
.L118:
	.loc 1 202 0
	adds	r2, r2, #2
	.loc 1 201 0
	ldrb	r1, [sp, #12]	@ zero_extendqisi2
	strb	r1, [r9, r3]
	.loc 1 202 0
	strh	r2, [sp, #18]	@ movhi
	b	.L60
.LVL143:
.L117:
	.loc 1 174 0
	movw	r5, #65535
	flds	s15, .L120+12
	b	.L50
	.cfi_endproc
.LFE113:
	.size	getASCIIString, .-getASCIIString
	.align	2
	.global	catstr
	.thumb
	.thumb_func
	.type	catstr, %function
catstr:
.LFB114:
	.loc 1 281 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL144:
	.loc 1 283 0
	ldrb	r3, [r0]	@ zero_extendqisi2
	.loc 1 281 0
	push	{r4, r5}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 5, -4
	.loc 1 283 0
	cbz	r3, .L127
	movs	r3, #0
.LVL145:
.L124:
	.loc 1 285 0
	adds	r3, r3, #1
.LVL146:
	uxth	r3, r3
.LVL147:
	.loc 1 283 0
	adds	r2, r0, r3
	ldrb	r4, [r0, r3]	@ zero_extendqisi2
	cmp	r4, #0
	bne	.L124
.LVL148:
.L123:
	.loc 1 287 0
	ldrb	r4, [r1]	@ zero_extendqisi2
	cbz	r4, .L125
	mov	r2, r3
.LVL149:
.L126:
	.loc 1 290 0
	adds	r5, r2, #1
	.loc 1 289 0
	strb	r4, [r0, r2]
	.loc 1 290 0
	uxth	r2, r5
.LVL150:
	.loc 1 291 0
	subs	r4, r2, r3
	.loc 1 287 0
	uxth	r4, r4
	ldrb	r4, [r1, r4]	@ zero_extendqisi2
	cmp	r4, #0
	bne	.L126
	add	r2, r2, r0
.LVL151:
.L125:
	.loc 1 293 0
	movs	r3, #0
	strb	r3, [r2]
	.loc 1 294 0
	pop	{r4, r5}
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr
.LVL152:
.L127:
	.cfi_restore_state
	.loc 1 283 0
	mov	r2, r0
	b	.L123
	.cfi_endproc
.LFE114:
	.size	catstr, .-catstr
.Letext0:
	.file 2 "/home/tana/Desktop/msut/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/tana/Desktop/msut/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/stdint.h"
	.file 4 "/home/tana/Desktop/msut/STM32F407/Libraries/CMSIS/Include/core_cm4.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x54b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x1
	.4byte	.LASF44
	.4byte	.LASF45
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x1d
	.4byte	0x45
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x2b
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x3f
	.4byte	0x70
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0x41
	.4byte	0x82
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x15
	.4byte	0x3a
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x21
	.4byte	0x53
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x2c
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x3
	.byte	0x2d
	.4byte	0x77
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF18
	.uleb128 0x5
	.4byte	0xb4
	.uleb128 0x6
	.4byte	.LASF46
	.byte	0x1
	.byte	0x4
	.byte	0x1
	.4byte	0x10d
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x1
	.byte	0x4
	.4byte	0x10d
	.uleb128 0x8
	.ascii	"num\000"
	.byte	0x1
	.byte	0x4
	.4byte	0xbf
	.uleb128 0x9
	.ascii	"k\000"
	.byte	0x1
	.byte	0x6
	.4byte	0x9e
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x1
	.byte	0x7
	.4byte	0xbf
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x9e
	.uleb128 0xc
	.4byte	0xd6
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x149
	.uleb128 0xd
	.4byte	0xe2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0xe
	.4byte	0xed
	.4byte	.LLST0
	.uleb128 0xf
	.4byte	0xf8
	.4byte	.LLST1
	.uleb128 0xf
	.4byte	0x101
	.4byte	.LLST2
	.byte	0
	.uleb128 0x10
	.4byte	.LASF23
	.byte	0x1
	.byte	0x15
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a2
	.uleb128 0x11
	.4byte	.LASF19
	.byte	0x1
	.byte	0x15
	.4byte	0x10d
	.4byte	.LLST3
	.uleb128 0x12
	.ascii	"m\000"
	.byte	0x1
	.byte	0x15
	.4byte	0x1a2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x13
	.4byte	.LASF21
	.byte	0x1
	.byte	0x15
	.4byte	0x10d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.ascii	"k\000"
	.byte	0x1
	.byte	0x17
	.4byte	0x9e
	.4byte	.LLST4
	.uleb128 0x15
	.4byte	.LASF22
	.byte	0x1
	.byte	0x17
	.4byte	0x9e
	.4byte	.LLST5
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xa9
	.uleb128 0x10
	.4byte	.LASF24
	.byte	0x1
	.byte	0x2c
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f2
	.uleb128 0x13
	.4byte	.LASF25
	.byte	0x1
	.byte	0x2c
	.4byte	0x10d
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x13
	.4byte	.LASF26
	.byte	0x1
	.byte	0x2c
	.4byte	0x10d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x14
	.ascii	"k\000"
	.byte	0x1
	.byte	0x2e
	.4byte	0xa9
	.4byte	.LLST6
	.uleb128 0x14
	.ascii	"n\000"
	.byte	0x1
	.byte	0x2e
	.4byte	0xa9
	.4byte	.LLST7
	.byte	0
	.uleb128 0x10
	.4byte	.LASF27
	.byte	0x1
	.byte	0x3f
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4d1
	.uleb128 0x16
	.ascii	"str\000"
	.byte	0x1
	.byte	0x3f
	.4byte	0x10d
	.4byte	.LLST8
	.uleb128 0x16
	.ascii	"num\000"
	.byte	0x1
	.byte	0x3f
	.4byte	0x4d1
	.4byte	.LLST9
	.uleb128 0x11
	.4byte	.LASF21
	.byte	0x1
	.byte	0x3f
	.4byte	0x10d
	.4byte	.LLST10
	.uleb128 0x17
	.4byte	.LASF19
	.byte	0x1
	.byte	0x42
	.4byte	0x4d7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x15
	.4byte	.LASF22
	.byte	0x1
	.byte	0x42
	.4byte	0x9e
	.4byte	.LLST11
	.uleb128 0x15
	.4byte	.LASF28
	.byte	0x1
	.byte	0x43
	.4byte	0xa9
	.4byte	.LLST12
	.uleb128 0x14
	.ascii	"n\000"
	.byte	0x1
	.byte	0x44
	.4byte	0xa9
	.4byte	.LLST13
	.uleb128 0x18
	.ascii	"m\000"
	.byte	0x1
	.byte	0x44
	.4byte	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -62
	.uleb128 0x14
	.ascii	"k\000"
	.byte	0x1
	.byte	0x44
	.4byte	0xa9
	.4byte	.LLST14
	.uleb128 0x15
	.4byte	.LASF29
	.byte	0x1
	.byte	0x45
	.4byte	0x4e7
	.4byte	.LLST15
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.byte	0x46
	.4byte	0xb4
	.4byte	.LLST16
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.byte	0x47
	.4byte	0xbf
	.4byte	.LLST17
	.uleb128 0x15
	.4byte	.LASF32
	.byte	0x1
	.byte	0x47
	.4byte	0xbf
	.4byte	.LLST18
	.uleb128 0x15
	.4byte	.LASF33
	.byte	0x1
	.byte	0x48
	.4byte	0x9e
	.4byte	.LLST19
	.uleb128 0x15
	.4byte	.LASF34
	.byte	0x1
	.byte	0x49
	.4byte	0x4ed
	.4byte	.LLST20
	.uleb128 0x15
	.4byte	.LASF35
	.byte	0x1
	.byte	0x4a
	.4byte	0x25
	.4byte	.LLST21
	.uleb128 0x15
	.4byte	.LASF36
	.byte	0x1
	.byte	0x4b
	.4byte	0x25
	.4byte	.LLST22
	.uleb128 0x19
	.4byte	0xd6
	.4byte	.LBB13
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xbd
	.4byte	0x33c
	.uleb128 0xe
	.4byte	0xed
	.4byte	.LLST23
	.uleb128 0xe
	.4byte	0xe2
	.4byte	.LLST24
	.uleb128 0x1a
	.4byte	.Ldebug_ranges0+0
	.uleb128 0xf
	.4byte	0xf8
	.4byte	.LLST25
	.uleb128 0xf
	.4byte	0x101
	.4byte	.LLST26
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0xd6
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.byte	0x1
	.byte	0x86
	.4byte	0x37e
	.uleb128 0xe
	.4byte	0xed
	.4byte	.LLST27
	.uleb128 0xe
	.4byte	0xe2
	.4byte	.LLST28
	.uleb128 0x1c
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.uleb128 0xf
	.4byte	0xf8
	.4byte	.LLST29
	.uleb128 0xf
	.4byte	0x101
	.4byte	.LLST30
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	0xd6
	.4byte	.LBB23
	.4byte	.Ldebug_ranges0+0x28
	.byte	0x1
	.byte	0xc0
	.4byte	0x3bc
	.uleb128 0xe
	.4byte	0xed
	.4byte	.LLST31
	.uleb128 0xe
	.4byte	0xe2
	.4byte	.LLST32
	.uleb128 0x1a
	.4byte	.Ldebug_ranges0+0x28
	.uleb128 0xf
	.4byte	0xf8
	.4byte	.LLST33
	.uleb128 0xf
	.4byte	0x101
	.4byte	.LLST34
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0xd6
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.byte	0x1
	.byte	0xce
	.4byte	0x3fe
	.uleb128 0xe
	.4byte	0xed
	.4byte	.LLST35
	.uleb128 0xe
	.4byte	0xe2
	.4byte	.LLST36
	.uleb128 0x1c
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.uleb128 0xf
	.4byte	0xf8
	.4byte	.LLST37
	.uleb128 0xf
	.4byte	0x101
	.4byte	.LLST38
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.4byte	0x417
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x1
	.byte	0xd6
	.4byte	0x10d
	.byte	0
	.uleb128 0x1d
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.4byte	0x441
	.uleb128 0x15
	.4byte	.LASF38
	.byte	0x1
	.byte	0xe2
	.4byte	0xbf
	.4byte	.LLST39
	.uleb128 0x14
	.ascii	"g\000"
	.byte	0x1
	.byte	0xe3
	.4byte	0x9e
	.4byte	.LLST40
	.byte	0
	.uleb128 0x1d
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.4byte	0x47a
	.uleb128 0x15
	.4byte	.LASF38
	.byte	0x1
	.byte	0xf6
	.4byte	0xbf
	.4byte	.LLST41
	.uleb128 0x15
	.4byte	.LASF39
	.byte	0x1
	.byte	0xf7
	.4byte	0x9e
	.4byte	.LLST42
	.uleb128 0x14
	.ascii	"g\000"
	.byte	0x1
	.byte	0xf7
	.4byte	0x9e
	.4byte	.LLST43
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL59
	.4byte	0x149
	.4byte	0x494
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -62
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL88
	.4byte	0x149
	.4byte	0x4b4
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -62
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL96
	.4byte	0x149
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -62
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xbf
	.uleb128 0x21
	.4byte	0x9e
	.4byte	0x4e7
	.uleb128 0x22
	.4byte	0xca
	.byte	0x9
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xb4
	.uleb128 0xb
	.byte	0x4
	.4byte	0x25
	.uleb128 0x23
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x118
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x542
	.uleb128 0x24
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x118
	.4byte	0x10d
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x24
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x118
	.4byte	0x10d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x25
	.ascii	"k\000"
	.byte	0x1
	.2byte	0x11a
	.4byte	0xa9
	.4byte	.LLST44
	.uleb128 0x25
	.ascii	"n\000"
	.byte	0x1
	.2byte	0x11a
	.4byte	0xa9
	.4byte	.LLST45
	.byte	0
	.uleb128 0x26
	.4byte	.LASF47
	.byte	0x4
	.2byte	0x51b
	.4byte	0xd1
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x26
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
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL3-.Ltext0
	.4byte	.LFE110-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x6
	.byte	0x70
	.sleb128 10
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x6
	.byte	0x70
	.sleb128 10
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x3b9aca00
	.byte	0x9f
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5-.Ltext0
	.4byte	.LFE110-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 -9
	.byte	0x9f
	.4byte	.LVL9-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL13-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL14-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL27-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL34-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL32-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL114-.Ltext0
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL131-.Ltext0
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL139-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL133-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL136-.Ltext0
	.4byte	.LVL137-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL143-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL129-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL106-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL119-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x4
	.byte	0x72
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL138-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	.LVL139-.Ltext0
	.4byte	.LVL140-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL140-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4e
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0xb
	.byte	0xf5
	.uleb128 0x4f
	.uleb128 0x25
	.byte	0x72
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL138-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4e
	.4byte	.LVL139-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4e
	.4byte	.LVL143-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4e
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f800000
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL133-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3dcccccd
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL137-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	.LVL143-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f800000
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x6
	.byte	0x91
	.sleb128 -50
	.byte	0x7e
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL88-1-.Ltext0
	.2byte	0x6
	.byte	0x91
	.sleb128 -50
	.byte	0x7e
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -60
	.byte	0x9f
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x6
	.byte	0x91
	.sleb128 -50
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x6
	.byte	0x91
	.sleb128 -50
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x3b9aca00
	.byte	0x9f
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x6
	.byte	0x91
	.sleb128 -50
	.byte	0x71
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL94-.Ltext0
	.2byte	0x6
	.byte	0x91
	.sleb128 -50
	.byte	0x71
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x3b9aca00
	.byte	0x9f
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x6
	.byte	0x91
	.sleb128 -50
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x6
	.byte	0x91
	.sleb128 -50
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x3b9aca00
	.byte	0x9f
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL114-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL121-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 -48
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL123-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x75
	.sleb128 -8
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x75
	.sleb128 -8
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL144-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL146-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL147-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL149-.Ltext0
	.4byte	.LVL151-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL152-.Ltext0
	.4byte	.LFE114-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL144-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL149-.Ltext0
	.4byte	.LVL151-.Ltext0
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL152-.Ltext0
	.4byte	.LFE114-.Ltext0
	.2byte	0x2
	.byte	0x30
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
	.4byte	.LBB13-.Ltext0
	.4byte	.LBE13-.Ltext0
	.4byte	.LBB20-.Ltext0
	.4byte	.LBE20-.Ltext0
	.4byte	.LBB21-.Ltext0
	.4byte	.LBE21-.Ltext0
	.4byte	.LBB22-.Ltext0
	.4byte	.LBE22-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB23-.Ltext0
	.4byte	.LBE23-.Ltext0
	.4byte	.LBB26-.Ltext0
	.4byte	.LBE26-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF25:
	.ascii	"des_str\000"
.LASF5:
	.ascii	"__uint8_t\000"
.LASF8:
	.ascii	"__int32_t\000"
.LASF20:
	.ascii	"step\000"
.LASF0:
	.ascii	"float\000"
.LASF33:
	.ascii	"sige\000"
.LASF3:
	.ascii	"unsigned char\000"
.LASF23:
	.ascii	"putDNum\000"
.LASF10:
	.ascii	"__uint32_t\000"
.LASF36:
	.ascii	"f_step\000"
.LASF37:
	.ascii	"t_num\000"
.LASF7:
	.ascii	"short unsigned int\000"
.LASF30:
	.ascii	"i_num\000"
.LASF43:
	.ascii	"GNU C 4.9.3 20141119 (release) [ARM/embedded-4_9-br"
	.ascii	"anch revision 218278] -mlittle-endian -mthumb -mcpu"
	.ascii	"=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mfpu"
	.ascii	"=fpv4-sp-d16 -g -O2 -fsingle-precision-constant\000"
.LASF19:
	.ascii	"dnum\000"
.LASF47:
	.ascii	"ITM_RxBuffer\000"
.LASF31:
	.ascii	"d_part\000"
.LASF6:
	.ascii	"__uint16_t\000"
.LASF11:
	.ascii	"long unsigned int\000"
.LASF41:
	.ascii	"str1\000"
.LASF42:
	.ascii	"str2\000"
.LASF27:
	.ascii	"getASCIIString\000"
.LASF22:
	.ascii	"flag\000"
.LASF45:
	.ascii	"/home/tana/Desktop/MSUT Zavrsni projekat/audio\000"
.LASF46:
	.ascii	"getDNum\000"
.LASF1:
	.ascii	"unsigned int\000"
.LASF26:
	.ascii	"src_str\000"
.LASF29:
	.ascii	"i_ptr\000"
.LASF13:
	.ascii	"long long unsigned int\000"
.LASF14:
	.ascii	"uint8_t\000"
.LASF28:
	.ascii	"e_part\000"
.LASF38:
	.ascii	"b_num\000"
.LASF16:
	.ascii	"int32_t\000"
.LASF18:
	.ascii	"sizetype\000"
.LASF21:
	.ascii	"r_str\000"
.LASF12:
	.ascii	"long long int\000"
.LASF24:
	.ascii	"strcon\000"
.LASF4:
	.ascii	"short int\000"
.LASF40:
	.ascii	"catstr\000"
.LASF15:
	.ascii	"uint16_t\000"
.LASF34:
	.ascii	"f_ptr\000"
.LASF17:
	.ascii	"uint32_t\000"
.LASF9:
	.ascii	"long int\000"
.LASF35:
	.ascii	"f_num\000"
.LASF2:
	.ascii	"signed char\000"
.LASF32:
	.ascii	"i_part\000"
.LASF44:
	.ascii	"misc.c\000"
.LASF39:
	.ascii	"t_rez\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.9.3 20141119 (release) [ARM/embedded-4_9-branch revision 218278]"
