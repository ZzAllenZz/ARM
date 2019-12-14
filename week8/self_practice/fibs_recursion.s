    .section    .text
    .global     _start
    .align      2

_start:
    mov     r0, #4 @ want get 4th number
    bl      _fibs
_end:
    b       _end

_fibs:
    cmp     r0,#1
    moveq   r1,#1
    moveq   pc,lr

    cmp     r0,#2
    moveq   r1,#1
    moveq   pc,lr

    stmfd   sp!, {r0,r3,lr}
    sub     r0,r0,#1
    bl      _fibs
    mov     r3,r1

    sub     r0,r0,#1
    bl      _fibs
    add     r1,r1,r3

    ldmfd   sp!, {r0,r3,lr}
    mov     pc,lr
