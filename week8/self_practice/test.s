	.section    .text
	.align	    2
	.global	    _start
_start:
    mov     r7,#5
_loop:
    subs    r7,#1
    bne _loop

_end:
    swi     0x11



