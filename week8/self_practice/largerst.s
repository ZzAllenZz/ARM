	.section	.text
	.align		2
	.global		_start

_start:
    ldr r0, =_data
    bl  _largest

    mov r0,r2
    swi 0x11

_end:
    b _end
_largest:
    eor	r1,r1,r1		@ clear registers
   	eor	r2,r2,r2
   	eor	r3,r3,r3
_loop:
    ldr r1,[r0,r3,lsl #2]
    cmp r1,#0
    moveq pc,lr
    cmp r2,r1
    movlt r2,r1
    add r3,#1
    b   _loop

    .section .data
_data:
    .word   0x1234,0x3022,0x1233,0x1020,0x5055,0x1203,0x0000
