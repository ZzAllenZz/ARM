	.section	.text
	.align		2
	.global		_start

_start:
	ldr	r0,=string
	ldr r1,=stringreverse
	mov r2, #10-1
	mov r3, #0
	bl _loop


	swi 0x11

_loop:
	ldrb r4,[r0,r2]
	strb r4,[r1,r3]
	sub r2,#1
	add r3, #1

	cmp r3, #10
	bne	_loop
	moveq pc,lr


	.section	.data

string:
	.asciz	"helloworld\n"

stringreverse:
	.rept	10
	.byte 	0
	.endr
