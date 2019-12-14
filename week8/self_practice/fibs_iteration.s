    .section    .text
    .align      2
    .global     _start

_start:
    mov r0,#5
    bl  _fibs


_end:
    b   _end

_fibs:
    stmdb   sp!,{r1-r3}
    mov r1,#0
    mov r2,#1

_loop:
    mov r3,r2
    add r2,r2,r1
    mov r1,r3
    sub r0,r0,#1
    cmp r0,#1
    bne _loop

    mov r0,r2
    ldmia sp!,{r1-r3}
    mov pc, lr


