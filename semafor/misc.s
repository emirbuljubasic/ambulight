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
	.file	"misc.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	getDNumMISC
	.thumb
	.thumb_func
	.type	getDNumMISC, %function
getDNumMISC:
.LFB110:
	.file 1 "src/misc.c"
	.loc 1 4 0
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
	.loc 1 6 0
	ldr	r3, .L6
	str	r3, [r7, #8]
	.loc 1 8 0
	movs	r3, #0
	strb	r3, [r7, #15]
	b	.L2
.L5:
	.loc 1 10 0
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	rsb	r3, r3, #9
	mov	r2, r3
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	movs	r2, #48
	strb	r2, [r3]
	.loc 1 11 0
	b	.L3
.L4:
	.loc 1 13 0
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	rsb	r3, r3, #9
	mov	r2, r3
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	ldrb	r2, [r3]	@ zero_extendqisi2
	adds	r2, r2, #1
	uxtb	r2, r2
	strb	r2, [r3]
	.loc 1 14 0
	ldr	r2, [r7]
	ldr	r3, [r7, #8]
	subs	r3, r2, r3
	str	r3, [r7]
.L3:
	.loc 1 11 0
	ldr	r2, [r7]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcs	.L4
	.loc 1 16 0 discriminator 2
	ldr	r3, [r7, #8]
	ldr	r2, .L6+4
	umull	r2, r3, r2, r3
	lsrs	r3, r3, #3
	str	r3, [r7, #8]
	.loc 1 8 0 discriminator 2
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [r7, #15]
.L2:
	.loc 1 8 0 is_stmt 0 discriminator 1
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #9
	bls	.L5
	.loc 1 18 0 is_stmt 1
	adds	r7, r7, #20
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
	.word	1000000000
	.word	-858993459
	.cfi_endproc
.LFE110:
	.size	getDNumMISC, .-getDNumMISC
	.align	2
	.global	putDNumMISC
	.thumb
	.thumb_func
	.type	putDNumMISC, %function
putDNumMISC:
.LFB111:
	.loc 1 21 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #28
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 1 22 0
	movs	r3, #0
	strb	r3, [r7, #23]
	movs	r3, #0
	strb	r3, [r7, #22]
	.loc 1 24 0
	movs	r3, #0
	strb	r3, [r7, #23]
	b	.L9
.L14:
	.loc 1 26 0
	ldrb	r3, [r7, #22]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L10
	.loc 1 28 0
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	rsb	r3, r3, #9
	mov	r2, r3
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #48
	bne	.L11
	.loc 1 28 0 is_stmt 0 discriminator 1
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #9
	bne	.L13
.L11:
	.loc 1 30 0 is_stmt 1
	movs	r3, #1
	strb	r3, [r7, #22]
	.loc 1 31 0
	ldr	r3, [r7, #8]
	ldrh	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	ldrb	r2, [r7, #23]	@ zero_extendqisi2
	rsb	r2, r2, #9
	mov	r1, r2
	ldr	r2, [r7, #12]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	.loc 1 32 0
	ldr	r3, [r7, #8]
	ldrh	r3, [r3]
	adds	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #8]
	strh	r2, [r3]	@ movhi
	b	.L13
.L10:
	.loc 1 37 0
	ldr	r3, [r7, #8]
	ldrh	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	ldrb	r2, [r7, #23]	@ zero_extendqisi2
	rsb	r2, r2, #9
	mov	r1, r2
	ldr	r2, [r7, #12]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	.loc 1 38 0
	ldr	r3, [r7, #8]
	ldrh	r3, [r3]
	adds	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #8]
	strh	r2, [r3]	@ movhi
.L13:
	.loc 1 24 0 discriminator 2
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [r7, #23]
.L9:
	.loc 1 24 0 is_stmt 0 discriminator 1
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #9
	bls	.L14
	.loc 1 41 0 is_stmt 1
	ldr	r3, [r7, #8]
	ldrh	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 42 0
	adds	r7, r7, #28
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE111:
	.size	putDNumMISC, .-putDNumMISC
	.align	2
	.global	getStr4NumMISC
	.thumb
	.thumb_func
	.type	getStr4NumMISC, %function
getStr4NumMISC:
.LFB112:
	.loc 1 45 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #64
	.cfi_def_cfa_offset 72
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	mov	r3, r0
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	strh	r3, [r7, #14]	@ movhi
	.loc 1 50 0
	movs	r3, #0
	strh	r3, [r7, #18]	@ movhi
	.loc 1 51 0
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 53 0
	ldrh	r3, [r7, #14]
	cmp	r3, #32
	beq	.L17
	cmp	r3, #32
	bgt	.L18
	cmp	r3, #4
	beq	.L19
	cmp	r3, #4
	bgt	.L20
	cmp	r3, #1
	beq	.L21
	cmp	r3, #2
	beq	.L22
	b	.L16
.L20:
	cmp	r3, #8
	beq	.L17
	cmp	r3, #16
	beq	.L17
	b	.L16
.L18:
	cmp	r3, #256
	beq	.L23
	cmp	r3, #256
	bgt	.L24
	cmp	r3, #64
	beq	.L69
	cmp	r3, #128
	beq	.L70
	b	.L16
.L24:
	cmp	r3, #1024
	beq	.L27
	cmp	r3, #2048
	beq	.L28
	cmp	r3, #512
	beq	.L29
	b	.L16
.L21:
	.loc 1 57 0
	movs	r3, #0
	strb	r3, [r7, #63]
	b	.L30
.L33:
	.loc 1 59 0
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	and	r3, r3, #128
	cmp	r3, #0
	beq	.L31
	.loc 1 61 0
	ldrb	r3, [r7, #63]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	movs	r2, #49
	strb	r2, [r3]
	b	.L32
.L31:
	.loc 1 65 0
	ldrb	r3, [r7, #63]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	movs	r2, #48
	strb	r2, [r3]
.L32:
	.loc 1 67 0 discriminator 2
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	lsls	r2, r3, #1
	ldr	r3, [r7, #8]
	str	r2, [r3]
	.loc 1 57 0 discriminator 2
	ldrb	r3, [r7, #63]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [r7, #63]
.L30:
	.loc 1 57 0 is_stmt 0 discriminator 1
	ldrb	r3, [r7, #63]	@ zero_extendqisi2
	cmp	r3, #7
	bls	.L33
	.loc 1 69 0 is_stmt 1
	ldrb	r3, [r7, #63]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 70 0
	b	.L15
.L22:
	.loc 1 74 0
	movs	r3, #0
	strb	r3, [r7, #63]
	b	.L35
.L38:
	.loc 1 76 0
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	and	r3, r3, #32768
	cmp	r3, #0
	beq	.L36
	.loc 1 78 0
	ldrb	r3, [r7, #63]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	movs	r2, #49
	strb	r2, [r3]
	b	.L37
.L36:
	.loc 1 82 0
	ldrb	r3, [r7, #63]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	movs	r2, #48
	strb	r2, [r3]
.L37:
	.loc 1 84 0 discriminator 2
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	lsls	r2, r3, #1
	ldr	r3, [r7, #8]
	str	r2, [r3]
	.loc 1 74 0 discriminator 2
	ldrb	r3, [r7, #63]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [r7, #63]
.L35:
	.loc 1 74 0 is_stmt 0 discriminator 1
	ldrb	r3, [r7, #63]	@ zero_extendqisi2
	cmp	r3, #15
	bls	.L38
	.loc 1 86 0 is_stmt 1
	ldrb	r3, [r7, #63]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 87 0
	b	.L15
.L19:
	.loc 1 91 0
	movs	r3, #0
	strb	r3, [r7, #63]
	b	.L39
.L42:
	.loc 1 93 0
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L40
	.loc 1 95 0
	ldrb	r3, [r7, #63]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	movs	r2, #49
	strb	r2, [r3]
	b	.L41
.L40:
	.loc 1 99 0
	ldrb	r3, [r7, #63]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	movs	r2, #48
	strb	r2, [r3]
.L41:
	.loc 1 101 0 discriminator 2
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	lsls	r2, r3, #1
	ldr	r3, [r7, #8]
	str	r2, [r3]
	.loc 1 91 0 discriminator 2
	ldrb	r3, [r7, #63]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [r7, #63]
.L39:
	.loc 1 91 0 is_stmt 0 discriminator 1
	ldrb	r3, [r7, #63]	@ zero_extendqisi2
	cmp	r3, #31
	bls	.L42
	.loc 1 103 0 is_stmt 1
	ldrb	r3, [r7, #63]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 104 0
	b	.L15
.L17:
	.loc 1 110 0
	ldr	r3, [r7, #8]
	str	r3, [r7, #44]
	.loc 1 111 0
	ldr	r3, [r7, #44]
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L43
	.loc 1 113 0
	ldrh	r3, [r7, #18]
	mov	r2, r3
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	movs	r2, #45
	strb	r2, [r3]
	.loc 1 114 0
	ldrh	r3, [r7, #18]
	adds	r3, r3, #1
	uxth	r3, r3
	strh	r3, [r7, #18]	@ movhi
	.loc 1 115 0
	ldr	r3, [r7, #44]
	ldr	r3, [r3]
	negs	r2, r3
	ldr	r3, [r7, #44]
	str	r2, [r3]
.L43:
	.loc 1 118 0
	ldr	r3, [r7, #44]
	ldr	r3, [r3]
	mov	r2, r3
	add	r3, r7, #20
	mov	r0, r3
	mov	r1, r2
	bl	getDNumMISC
	.loc 1 119 0
	add	r2, r7, #20
	add	r3, r7, #18
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #4]
	bl	putDNumMISC
	.loc 1 120 0
	b	.L15
.L23:
.LBB2:
	.loc 1 154 0
	ldr	r3, [r7, #8]
	ldr	r3, [r3]	@ float
	str	r3, [r7, #52]	@ float
	.loc 1 155 0
	movs	r3, #32
	strb	r3, [r7, #51]
	.loc 1 159 0
	flds	s15, [r7, #52]
	fcmpezs	s15
	fmstat
	bpl	.L44
	.loc 1 161 0
	ldrh	r3, [r7, #18]
	mov	r2, r3
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	movs	r2, #45
	strb	r2, [r3]
	.loc 1 162 0
	ldrh	r3, [r7, #18]
	adds	r3, r3, #1
	uxth	r3, r3
	strh	r3, [r7, #18]	@ movhi
	.loc 1 163 0
	flds	s15, [r7, #52]
	fnegs	s15, s15
	fsts	s15, [r7, #52]
.L44:
	.loc 1 166 0
	flds	s15, [r7, #52]
	fconsts	s14, #112
	fcmpes	s15, s14
	fmstat
	bpl	.L68
	.loc 1 168 0
	movs	r3, #45
	strb	r3, [r7, #51]
	.loc 1 169 0
	ldr	r3, .L71
	str	r3, [r7, #56]	@ float
	.loc 1 170 0
	movs	r3, #1
	strh	r3, [r7, #48]	@ movhi
	.loc 1 171 0
	b	.L48
.L49:
	.loc 1 173 0
	flds	s15, [r7, #56]
	flds	s14, .L71+4
	fmuls	s15, s15, s14
	fsts	s15, [r7, #56]
	.loc 1 174 0
	ldrh	r3, [r7, #48]
	adds	r3, r3, #1
	strh	r3, [r7, #48]	@ movhi
.L48:
	.loc 1 171 0
	flds	s14, [r7, #52]
	flds	s15, [r7, #56]
	fcmpes	s14, s15
	fmstat
	bmi	.L49
	b	.L50
.L68:
	.loc 1 179 0
	mov	r3, #1065353216
	str	r3, [r7, #56]	@ float
	.loc 1 180 0
	movs	r3, #0
	strh	r3, [r7, #48]	@ movhi
	.loc 1 181 0
	b	.L51
.L52:
	.loc 1 183 0
	flds	s15, [r7, #56]
	fconsts	s14, #36
	fmuls	s15, s15, s14
	fsts	s15, [r7, #56]
	.loc 1 184 0
	ldrh	r3, [r7, #48]
	adds	r3, r3, #1
	strh	r3, [r7, #48]	@ movhi
.L51:
	.loc 1 181 0
	flds	s14, [r7, #52]
	flds	s15, [r7, #56]
	fcmpes	s14, s15
	fmstat
	bgt	.L52
	.loc 1 186 0
	flds	s15, [r7, #56]
	fconsts	s14, #36
	fdivs	s15, s15, s14
	fsts	s15, [r7, #56]
	.loc 1 187 0
	ldrh	r3, [r7, #48]
	subs	r3, r3, #1
	strh	r3, [r7, #48]	@ movhi
.L50:
	.loc 1 190 0
	flds	s14, [r7, #52]
	flds	s15, [r7, #56]
	fdivs	s15, s14, s15
	fsts	s15, [r7, #52]
	.loc 1 191 0
	flds	s15, [r7, #52]
	ftouizs	s15, s15
	fmrs	r3, s15	@ int
	str	r3, [r7, #40]
	.loc 1 193 0
	ldr	r3, [r7, #40]
	fmsr	s15, r3	@ int
	fuitos	s15, s15
	flds	s14, [r7, #52]
	fsubs	s15, s14, s15
	fsts	s15, [r7, #52]
	.loc 1 194 0
	flds	s15, [r7, #52]
	flds	s14, .L71+8
	fmuls	s15, s15, s14
	ftouizs	s15, s15
	fmrs	r3, s15	@ int
	str	r3, [r7, #36]
	.loc 1 196 0
	add	r3, r7, #20
	mov	r0, r3
	ldr	r1, [r7, #40]
	bl	getDNumMISC
	.loc 1 197 0
	add	r2, r7, #20
	add	r3, r7, #18
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #4]
	bl	putDNumMISC
	.loc 1 199 0
	add	r3, r7, #20
	mov	r0, r3
	ldr	r1, [r7, #36]
	bl	getDNumMISC
	.loc 1 200 0
	movs	r3, #46
	strb	r3, [r7, #23]
	.loc 1 201 0
	add	r2, r7, #20
	add	r3, r7, #18
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #4]
	bl	putDNumMISC
	.loc 1 203 0
	ldrh	r3, [r7, #18]
	mov	r2, r3
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	movs	r2, #101
	strb	r2, [r3]
	.loc 1 204 0
	ldrh	r3, [r7, #18]
	adds	r3, r3, #1
	uxth	r3, r3
	strh	r3, [r7, #18]	@ movhi
	.loc 1 206 0
	ldrb	r3, [r7, #51]	@ zero_extendqisi2
	cmp	r3, #45
	bne	.L53
	.loc 1 208 0
	ldrh	r3, [r7, #18]
	mov	r2, r3
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	movs	r2, #45
	strb	r2, [r3]
	.loc 1 209 0
	ldrh	r3, [r7, #18]
	adds	r3, r3, #1
	uxth	r3, r3
	strh	r3, [r7, #18]	@ movhi
.L53:
	.loc 1 212 0
	ldrh	r3, [r7, #48]
	add	r2, r7, #20
	mov	r0, r2
	mov	r1, r3
	bl	getDNumMISC
	.loc 1 213 0
	add	r2, r7, #20
	add	r3, r7, #18
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #4]
	bl	putDNumMISC
	.loc 1 215 0
	b	.L15
.L29:
.LBE2:
.LBB3:
	.loc 1 220 0
	movs	r3, #0
	strb	r3, [r7, #63]
	b	.L54
.L57:
	.loc 1 222 0
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	and	r3, r3, #240
	lsrs	r3, r3, #4
	strb	r3, [r7, #35]
	.loc 1 223 0
	ldrb	r3, [r7, #35]	@ zero_extendqisi2
	cmp	r3, #9
	bhi	.L55
	.loc 1 225 0
	ldrh	r3, [r7, #18]
	mov	r2, r3
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	ldrb	r2, [r7, #35]
	adds	r2, r2, #48
	uxtb	r2, r2
	strb	r2, [r3]
	b	.L56
.L55:
	.loc 1 229 0
	ldrh	r3, [r7, #18]
	mov	r2, r3
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	ldrb	r2, [r7, #35]
	adds	r2, r2, #55
	uxtb	r2, r2
	strb	r2, [r3]
.L56:
	.loc 1 231 0 discriminator 2
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	lsls	r2, r3, #4
	ldr	r3, [r7, #8]
	str	r2, [r3]
	.loc 1 232 0 discriminator 2
	ldrh	r3, [r7, #18]
	adds	r3, r3, #1
	uxth	r3, r3
	strh	r3, [r7, #18]	@ movhi
	.loc 1 220 0 discriminator 2
	ldrb	r3, [r7, #63]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [r7, #63]
.L54:
	.loc 1 220 0 is_stmt 0 discriminator 1
	ldrb	r3, [r7, #63]	@ zero_extendqisi2
	cmp	r3, #1
	bls	.L57
	.loc 1 234 0 is_stmt 1
	ldrh	r3, [r7, #18]
	mov	r2, r3
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 235 0
	b	.L15
.L27:
.LBE3:
.LBB4:
	.loc 1 240 0
	movs	r3, #0
	strb	r3, [r7, #63]
	b	.L58
.L61:
	.loc 1 242 0
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	and	r3, r3, #61440
	lsrs	r3, r3, #12
	strb	r3, [r7, #34]
	.loc 1 243 0
	ldrb	r3, [r7, #34]	@ zero_extendqisi2
	cmp	r3, #9
	bhi	.L59
	.loc 1 245 0
	ldrh	r3, [r7, #18]
	mov	r2, r3
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	ldrb	r2, [r7, #34]
	adds	r2, r2, #48
	uxtb	r2, r2
	strb	r2, [r3]
	b	.L60
.L59:
	.loc 1 249 0
	ldrh	r3, [r7, #18]
	mov	r2, r3
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	ldrb	r2, [r7, #34]
	adds	r2, r2, #55
	uxtb	r2, r2
	strb	r2, [r3]
.L60:
	.loc 1 251 0 discriminator 2
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	lsls	r2, r3, #4
	ldr	r3, [r7, #8]
	str	r2, [r3]
	.loc 1 252 0 discriminator 2
	ldrh	r3, [r7, #18]
	adds	r3, r3, #1
	uxth	r3, r3
	strh	r3, [r7, #18]	@ movhi
	.loc 1 240 0 discriminator 2
	ldrb	r3, [r7, #63]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [r7, #63]
.L58:
	.loc 1 240 0 is_stmt 0 discriminator 1
	ldrb	r3, [r7, #63]	@ zero_extendqisi2
	cmp	r3, #3
	bls	.L61
	.loc 1 254 0 is_stmt 1
	ldrh	r3, [r7, #18]
	mov	r2, r3
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 255 0
	b	.L15
.L28:
.LBE4:
.LBB5:
	.loc 1 260 0
	movs	r3, #0
	strb	r3, [r7, #63]
	b	.L62
.L65:
	.loc 1 262 0
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	lsrs	r3, r3, #28
	strb	r3, [r7, #33]
	.loc 1 263 0
	ldrb	r3, [r7, #33]	@ zero_extendqisi2
	cmp	r3, #9
	bhi	.L63
	.loc 1 265 0
	ldrh	r3, [r7, #18]
	mov	r2, r3
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	ldrb	r2, [r7, #33]
	adds	r2, r2, #48
	uxtb	r2, r2
	strb	r2, [r3]
	b	.L64
.L63:
	.loc 1 269 0
	ldrh	r3, [r7, #18]
	mov	r2, r3
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	ldrb	r2, [r7, #33]
	adds	r2, r2, #55
	uxtb	r2, r2
	strb	r2, [r3]
.L64:
	.loc 1 271 0 discriminator 2
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	lsls	r2, r3, #4
	ldr	r3, [r7, #8]
	str	r2, [r3]
	.loc 1 272 0 discriminator 2
	ldrh	r3, [r7, #18]
	adds	r3, r3, #1
	uxth	r3, r3
	strh	r3, [r7, #18]	@ movhi
	.loc 1 260 0 discriminator 2
	ldrb	r3, [r7, #63]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [r7, #63]
.L62:
	.loc 1 260 0 is_stmt 0 discriminator 1
	ldrb	r3, [r7, #63]	@ zero_extendqisi2
	cmp	r3, #7
	bls	.L65
	.loc 1 274 0 is_stmt 1
	ldrh	r3, [r7, #18]
	mov	r2, r3
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 275 0
	b	.L15
.L16:
.LBE5:
	.loc 1 279 0
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 280 0
	nop
	b	.L15
.L69:
	.loc 1 124 0
	nop
	b	.L15
.L70:
	.loc 1 128 0
	nop
.L15:
	.loc 1 283 0
	adds	r7, r7, #64
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L72:
	.align	2
.L71:
	.word	1036831949
	.word	1036831949
	.word	1148846080
	.cfi_endproc
.LFE112:
	.size	getStr4NumMISC, .-getStr4NumMISC
.Letext0:
	.file 2 "/home/emir/msut/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/emir/msut/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/stdint.h"
	.file 4 "/home/emir/msut/STM32F407/Libraries/CMSIS/Include/core_cm4.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x2d3
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x1
	.4byte	.LASF37
	.4byte	.LASF38
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
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x1
	.byte	0x3
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11b
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x1
	.byte	0x3
	.4byte	0x11b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.ascii	"num\000"
	.byte	0x1
	.byte	0x3
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.ascii	"k\000"
	.byte	0x1
	.byte	0x5
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x1
	.byte	0x6
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x97
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x1
	.byte	0x14
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x179
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x1
	.byte	0x14
	.4byte	0x11b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.ascii	"m\000"
	.byte	0x1
	.byte	0x14
	.4byte	0x179
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x1
	.byte	0x14
	.4byte	0x11b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.ascii	"k\000"
	.byte	0x1
	.byte	0x16
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x1
	.byte	0x16
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xa2
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x1
	.byte	0x2c
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2a7
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x1
	.byte	0x2c
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -58
	.uleb128 0x8
	.ascii	"num\000"
	.byte	0x1
	.byte	0x2c
	.4byte	0x2a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x1
	.byte	0x2c
	.4byte	0x11b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x1
	.byte	0x2f
	.4byte	0x2ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x1
	.byte	0x30
	.4byte	0x2b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x9
	.ascii	"k\000"
	.byte	0x1
	.byte	0x31
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x9
	.ascii	"m\000"
	.byte	0x1
	.byte	0x32
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -54
	.uleb128 0xd
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x255
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x1
	.byte	0x99
	.4byte	0x2c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x1
	.byte	0x9a
	.4byte	0x2c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x1
	.byte	0x9b
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x1
	.byte	0x9c
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x1
	.byte	0x9d
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x1
	.byte	0x9d
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xd
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x271
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x1
	.byte	0xdb
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.byte	0
	.uleb128 0xd
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x28d
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x1
	.byte	0xef
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.byte	0
	.uleb128 0xe
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0xf
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x103
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -39
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xb8
	.uleb128 0xb
	.byte	0x4
	.4byte	0xad
	.uleb128 0x10
	.4byte	0x97
	.4byte	0x2c3
	.uleb128 0x11
	.4byte	0xc3
	.byte	0xa
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF35
	.uleb128 0x12
	.4byte	.LASF39
	.byte	0x4
	.2byte	0x51b
	.4byte	0xca
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0xd
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
.LASF10:
	.ascii	"long long int\000"
.LASF37:
	.ascii	"src/misc.c\000"
.LASF24:
	.ascii	"getStr4NumMISC\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF6:
	.ascii	"__int32_t\000"
.LASF19:
	.ascii	"step\000"
.LASF35:
	.ascii	"float\000"
.LASF30:
	.ascii	"sige\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF28:
	.ascii	"f_step\000"
.LASF36:
	.ascii	"GNU C 4.9.3 20141119 (release) [ARM/embedded-4_9-br"
	.ascii	"anch revision 218278] -mlittle-endian -mthumb -mcpu"
	.ascii	"=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mfpu"
	.ascii	"=fpv4-sp-d16 -g -O0 -fsingle-precision-constant\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF18:
	.ascii	"dnum\000"
.LASF39:
	.ascii	"ITM_RxBuffer\000"
.LASF32:
	.ascii	"d_part\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF8:
	.ascii	"__uint32_t\000"
.LASF26:
	.ascii	"rstr\000"
.LASF27:
	.ascii	"p_int32\000"
.LASF23:
	.ascii	"flag\000"
.LASF12:
	.ascii	"unsigned int\000"
.LASF34:
	.ascii	"t_rez\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF13:
	.ascii	"uint8_t\000"
.LASF31:
	.ascii	"e_part\000"
.LASF15:
	.ascii	"int32_t\000"
.LASF17:
	.ascii	"sizetype\000"
.LASF22:
	.ascii	"r_str\000"
.LASF38:
	.ascii	"/home/emir/git/ambulight/semafor\000"
.LASF25:
	.ascii	"type\000"
.LASF2:
	.ascii	"short int\000"
.LASF14:
	.ascii	"uint16_t\000"
.LASF16:
	.ascii	"uint32_t\000"
.LASF7:
	.ascii	"long int\000"
.LASF29:
	.ascii	"f_num\000"
.LASF0:
	.ascii	"signed char\000"
.LASF21:
	.ascii	"putDNumMISC\000"
.LASF33:
	.ascii	"i_part\000"
.LASF20:
	.ascii	"getDNumMISC\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.9.3 20141119 (release) [ARM/embedded-4_9-branch revision 218278]"
