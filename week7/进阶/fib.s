	.section	.text
	.align		2
	.global		_start
_start:
	mov		r1, #5	  @How many numbers do you want 
	bl		_fib
	b		_end
_fib:
	cmp		r1, #1
	moveq		r0, #1
	moveq		pc, r14
	cmp		r1, #2
	moveq		r0, #1
	moveq		pc, r14
	push		{r1-r7, r14}
	sub		r1, r1, #1
	bl		_fib
	mov		r3, r0
	sub		r1, r1, #1
	bl		_fib
	add		r0, r0, r3
	pop		{r1-r7, r14}	
	mov		pc, r14
_end:
	b		_end
 