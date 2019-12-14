    .section    .text
    .align      2
    .global     _start

_start:
    mov r0,#5
    mov r1,#0
    bl  _fibs

    swi 0x11

_fibs:

    cmp r0,#1
    moveq r1,#1
    moveq pc,lr

    cmp r0,#2
    moveq r1,#1
    moveq pc,lr

    stmfd sp!,{r0,lr}
    sub r0,r0,#1
    bl  _fibs
    mov r3,r1

    sub r0,r0,#1
    bl  _fibs

    add r1,r3,r1

    ldmfd sp!,{r0, lr}

    mov pc,lr


