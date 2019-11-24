	.section	.text
	.align	2
	.global	_start
_start:
	mov	r1, #0  	@store final result
	mov 	r2, #0	@store 2*2 result
	ldr	r0, =maxtirx
	ldr	r3, [r0,#16]
	ldr 	r4, [r0,#20]
	ldr	r5, [r0,#28]
	ldr 	r6, [r0,#32]
	bl	_sub
	ldr	r7, [r0]
	mul	r8, r7, r2
	add	r1, r1 , r8

	ldr	r3, [r0,#12]
	ldr 	r4, [r0,#20]
	ldr	r5, [r0,#24]
	ldr 	r6, [r0,#32]
	bl	_sub
	ldr	r7, [r0,#4]
	mul	r8, r7, r2
	sub	r1, r1 , r8

	ldr	r3, [r0,#12]
	ldr 	r4, [r0,#16]
	ldr	r5, [r0,#24]
	ldr 	r6, [r0,#28]
	bl	_sub
	ldr	r7, [r0,#8]
	mul	r8, r7, r2
	add	r1, r1 , r8

_end:
	b	_end
_sub:
	
	stmfd	sp! , {r0-r1}
	mul	r0, r3, r6
	mul	r1, r4, r5
	sub	r2, r0, r1
	ldmfd	sp!, {r0-r1}
	mov	pc, lr

	.section	.data
maxtirx:
	.word 	1,2,3,4,5,6,7,8,8
