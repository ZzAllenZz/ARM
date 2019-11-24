	.section	.text
	.align		2
	.global		_start
_start:
	ldr	r0, =maxtirx
	ldr	r1, [r0]
	ldr 	r2, [r0,#12]
	mul	r7, r2, r1	
	ldr 	r1, [r0, #4]
	ldr 	r2, [r0, #8]
	mul	r6, r2,  r1
	
	subs 	r7, r6	
_end:
	b	_end
	.section		.data
maxtirx:
	.word 	1,2,3,4