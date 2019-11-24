	.section	.text	
	.align	2
	.global	_start
_start:
	mov	r0, #6  @how many number do you want
	bl	_fibs
_end:	
	b	_end	

_fibs:
	cmp	r0 ,#1
	moveq	r1, #1
	moveq	pc, lr
	cmp	r0, #2
	moveq	r1, #1
	moveq	pc, lr

	stmfd	sp!, {r0,r2-r7,r14}
	sub	r0, r0, #1
	bl	_fibs
	mov	r3, r1
	
	sub 	r0, r0, #1
	bl	_fibs	
	add	r1, r1,r3
	
	ldmfd	sp!, {r0, r2-r7,r14}
	mov	pc, lr

