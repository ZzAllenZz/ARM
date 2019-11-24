	.section		.text
	.align		2
	.global		_start
_start:
	mov	r0, #-1
	mov 	r1,#1
_end:
	b	_end
	.section		.data
_text:
	.asciz	"HELLO WORLD\n"
_data:
	.word	0,1,2,3,4,5,6,7,8,9
