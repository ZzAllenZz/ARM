	.section	.text
	.align	2
	.global	_start

_start:
    mov r0,#4
    bl _factorial
_end:
    b _end

_factorial:


    cmp r0,#1
    moveq r1,#1
    moveq pc,lr

    mov r1,r0
    stmfd sp!,{r1,lr}
    sub r0, r0,#1
    bl  _factorial

    mov r2, r1
    ldmfd sp!,{r1,lr}


    mul r1,r2,r1

    mov pc,lr
