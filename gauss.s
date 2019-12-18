	.section	.text
	.align	2
	.global	_start

_start:
	eor	r0, r0, r0
	eor	r1, r1, r1
	eor	r2, r2, r2
	eor	r3, r3, r3
	eor	r4, r4, r4
	eor	r5, r5, r5
	eor	r6, r6, r6
	eor	r7, r7, r7
	eor	r8, r8, r8

	ldr	r0,=matrix
	mov	r1, #0
	bl	_shiftleft

	mov	r1, #0
	mov	r2, #4
	ldr	r3, [r0, #0]
	ldr	r4, [r0, r2, lsl #2]
	mov	r8, #8
	bl	_loop
	
	mov	r1, #0
	mov	r2, #8
	ldr	r3, [r0, #0]
	ldr	r4, [r0, r2, lsl #2]
	mov	r8, #12
	bl	_loop

	mov	r1, #4
	mov	r2, #8
	ldr	r3, [r0, #20]
	ldr	r4, [r0, #36]
	mov	r8, #12
	bl	_loop

	mov	r1, #0
	bl	_shiftright
	
_end:
	b	_end
	
_shiftleft:
	cmp	r1, #12
	moveq	pc, lr
	ldr	r2, [r0, r1, lsl #2]
	lsl	r2, #8
	str	r2, [r0, r1, lsl #2]
	add	r1, r1, #1
	b	_shiftleft

_shiftright:
	cmp	r1, #12
	moveq	pc, lr
	ldr	r2, [r0, r1, lsl #2]
	asr	r2, #8
	str	r2, [r0, r1, lsl #2]
	add	r1, r1, #1
	b	_shiftright

_loop:
	cmp	r2, r8
	moveq	pc, lr

	ldr	r5, [r0, r1, lsl #2]
	mul	r6, r5, r4
	sdiv	r7, r6, r3
	ldr	r5, [r0, r2, lsl #2]
	sub	r5, r5, r7
	str	r5, [r0, r2, lsl #2]	
	add	r1, r1, #1
	add	r2, r2, #1
	b	_loop

	.section .data
matrix:
	.word	1,2,4,6,4,7,2,5,8,4,6,2
