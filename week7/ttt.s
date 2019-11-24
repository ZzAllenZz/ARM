	.section	.text
	.align		2
	.global		_start
_start:
	ldr	r0, =maxtrix

	ldr	r1, [r0,#16]
	ldr 	r2, [r0,#28]
	mul	r3, r2, r1	
	ldr 	r1, [r0, #20]
	ldr 	r2, [r0, #24]
	mul	r4, r2,  r1
	subs	r3, r4
	ldr	r1, [r0]
	mul	r5,  r1,r3

	ldr	r1, [r0,#12]
	ldr 	r2, [r0,#32]
	mul	r6, r2, r1	
	ldr 	r1, [r0, #20]
	ldr 	r2, [r0, #24]
	mul	r7, r2,  r1
	subs	r6, r7
	ldr	r2, [r0,#4]
	mul	r8, r2, r6

	ldr	r1, [r0,#12]
	ldr 	r2, [r0,#28]
	mul	r3, r2, r1	
	ldr 	r1, [r0, #16]
	ldr 	r2, [r0, #24]
	mul	r4, r2,  r1
	subs	r3, r4
	ldr	r2, [r0,#8]
	mul	r9, r2 ,r3

	subs	r5,r8

	add 	r10,r5,r9	
_end:
	b	_end
	.section		.data
maxtrix:
	.word 	1,2,3,4,5,6,7,8,9