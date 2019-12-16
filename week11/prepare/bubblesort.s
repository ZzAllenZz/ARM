	.section	.text
	.align		2
	.global		_start

_start:
    ldr r0,=data  @r0 data
    mov r1,#0      @r1 i
    bl  _loop1  

	swi 0x11

_loop1:
    stmfd sp!,{r2,lr}
    mov r2,#0   @r2 j
    bl  _loop2

    ldmfd sp!,{r2,lr}

    add r1,#1

    cmp r1,#4
    bne _loop1
    
    moveq pc,lr

_loop2:
    ldr r3,[r0,r2,lsl #2] @ r3 前一个
    add r2, #1
    ldr r4,[r0,r2,lsl #2] @ r4 后一个

    cmp r3,r4

    subge r2,#1
    strge r4,[r0,r2,lsl #2]
    addge r2,#1
    strge r3,[r0,r2,lsl #2]

    rsb r5,r1,#5-1
    cmp r2,r5
    bne _loop2
    moveq pc,lr




	.section	.data
data:
    .word   5,3,2,4,1

