	.section	.text
	.global		_start
	.align		4

_start:	
	mov	r0, #4
	bl	_fibonacci

_end:	b	_end



_fibonacci:
	stmdb	sp!, {r1-r3}
        mov   r1,  #0  @前前
        mov   r2,  #1  @前
 
_fibloop:
        mov   r3,  r2 @下次的前前一个
        add   r2,  r1,  r2 @current = 前前一个+前一个
        mov   r1,  r3     @
        sub   r0,  r0,  #1
        cmp   r0,  #1
        bne   _fibloop
 
        mov   r0,  r2
	ldmia	sp!, {r1-r3}
        mov   pc,  lr