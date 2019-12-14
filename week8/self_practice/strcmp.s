    .section    .text
    .align      2
    .global     _start

_start:
    ldr r0, =string1
    ldr r1, =string2
    bl  _strcmp

    swi 0x11
_strcmp:
    mov r8,lr
    eor r4,r4,r4
    eor r5,r5,r5
    eor r6,r6,r6
    eor r7,r7,r7
_loop:
    ldrb r2,[r0,r7]
    cmp r2,#0
    bleq _done1
    ldrb r3,[r0,r7]
    cmp r3,#0
    bleq _done2
    cmp r4,r5
    bne _done_not_same
    cmp r4,#0
    movmi pc,r8
    cmp r2,r3
    bne _done_not_same
    add r7,r7,#1
    b   _loop


_done1:
    mov r4,#-1
    mov pc,lr
_done2:
    mov r5,#-1
    mov pc,lr
_done_not_same:
    mov r6,#-1
    mov pc,r8

string1:	.asciz	"bri"
string2:	.asciz	"bri"
