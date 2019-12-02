	.section    .text
	.align	    2
	.global	    _start
_start:
	ldr	r0, =matrix
	mov r1, #0;
    bl  _loop1
    ldr r6,[r0,#44] @b2
    ldr r7,[r0,#40] @M(22)
    sdiv r6,r6,r7 @x2

    ldr r4, [r0,#24] @M(12)
    ldr r7, [r0,#28] @b1
    mul r5,r4,r6 @ M(12) * x2
    sub r5, r7,r5 @b1 - M(12) * x2
    ldr r7, [r0,#20]
    sdiv r5,r5, r7 @x1

    ldr r1, [r0,#4] @M(01)
    ldr r2, [r0,#8] @M(02)
    ldr r7, [r0,#12] @b0
    mul r4, r1, r5 @M(01)*x1
    mul r3, r2, r6 @M(02)*x2
    sub r7, r7, r3
    sub r7, r7, r4 @b0 - M(02)*x2 - M(01)*x1
    ldr r3, [r0, #0] @M(00)
    sdiv r4, r7,r3 @x0
	swi	0x11
_loop1:
    stmfd sp!, {lr}

    add r2, r1, #1
    bl _loop2
    add r1,r1, #1

    ldmfd sp!,{lr}

    cmp r1, #2
    moveq pc,lr

    b   _loop1

_loop2:
    stmfd sp!, {lr}

    mov r3, r1
    mov r4, r1
    ldr r5, =coeff

    bl  _loop3
    bl  _loop4
    add r2 , r2, #1

    ldmfd sp!,{lr}
    cmp r2, #3
    moveq pc,lr;

    b   _loop2

_loop3:
    stmfd sp!, {r4,lr}


    mov r6,#16
    mul r6,r1,r6
    mov r7,#4
    mul r7,r3,r7

    add r7,r6,r7
    ldr r6,[r0,r7] @M(ik)

    mov r4,#20
    mul r7,r4,r1
    ldr r7,[r0, r7] @M(ii)
    sdiv r6,r6,r7 @M(ik)/M(ii)

    mov r4, #16
    mul r7,r2,r4

    mov r4, #4
    mul r4,r1,r4
    add r4,r7,r4
    ldr r7,[r0,r4] @M(ji)

    mov r4,r6
    mul r6,r4,r7
    mov r7,#0
    sub r6,r7,r6 @pk

    mov r4, #4
    mul r7,r3,r4
    str r6,[r5,r7]


    add r3, r3, #1

    ldmfd sp!, {r4,lr}

    cmp r3, #4
    moveq pc,lr

    b   _loop3

_loop4:
    stmfd sp!, {r3,lr}


    ldr r6,[r5,r4,lsl #2] @read pk

    mov r7, #16
    mul r7,r2,r7

    mov r3, #4
    mul r3,r4,r3

    add r3,r7,r3
    ldr r7,[r0,r3] @M(jk)

    add r6,r6,r7
    str r6, [r0,r3]


    add r4, r4, #1

    ldmfd sp!, {r3,lr}

    cmp r4, #4
    moveq pc,lr

    b   _loop4

    .section    .data
matrix:
    .word	1,2,4,6,1,1,2,4,1,1,1,2
coeff:
    .word   1,1,1,1

