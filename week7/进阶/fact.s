	.section	.text
	.align		2
	.global		_start
_start:
	mov		r1, #5
	bl		_fact
	b		_end
_fact:
	cmp		r1, #1
	moveq		r0, #1
	moveq		pc, r14
	stmfd		sp!, {r1-r7, r14}
	sub		r1, r1, #1
	bl		_fact
	add		r1, r1, #1
	mul		r2, r0, r1
	mov 		r0, r2
	ldmfd		sp!, {r1-r7, r14}
	mov		pc, r14
_end:
	b		_end
