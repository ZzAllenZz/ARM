	.section	.text
	.align		2
	.global		_start
_start:
	mov		r0, #0
	mov		r6, #0
	ldr		r1, =_matrix
	ldr		r2, [r1, #16]
	ldr		r3, [r1, #20]
	ldr		r4, [r1, #28]
	ldr		r5, [r1, #32]
	bl		_sub
	ldr		r7, [r1]
	mul		r0, r7, r0
	add		r6, r6, r0

	ldr		r2, [r1, #12]
	ldr		r3, [r1, #20]
	ldr		r4, [r1, #24]
	ldr		r5, [r1, #32]
	bl		_sub
	ldr		r7, [r1, #4]
	mul		r0, r7, r0
	sub		r6, r6, r0
	
	ldr		r2, [r1, #12]
	ldr		r3, [r1, #16]
	ldr		r4, [r1, #24]
	ldr		r5, [r1, #28]
	bl		_sub
	ldr		r7, [r1, #8]
	mul		r0, r7, r0
	add		r6, r0, r6
	b		_end
_sub:
	stmfd		sp!, {r1, r6-r7}
	mul		r1, r2, r5
	mul		r6, r3, r4
	sub		r0, r1, r6
	ldmfd		sp!, {r1, r6-r7}
	mov		pc, r14
_end:
	b		_end

	.section	.data
_matrix:
	.word		1, 2, 3, 4, 5, 6, 7, 8, 8
