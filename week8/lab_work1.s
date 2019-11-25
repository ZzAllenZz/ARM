	.section	.text
	.align	2
	.global	_start
_start:
	mov	r0, #42
	mvn	r1, #42
	
	lsl	r0, #8
	asr	r0, #8
	lsl	r0, #8
	lsr	r0, #8

	lsl	r1, #8
	asr	r1, #8
	lsl	r1, #8
	lsr	r1, #8

