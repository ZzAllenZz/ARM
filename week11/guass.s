
a.out:     file format elf32-littlearm


Disassembly of section .init:

00008000 <_init>:
    8000:	e1a0c00d 	mov	ip, sp
    8004:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
    8008:	e24cb004 	sub	fp, ip, #4
    800c:	e24bd028 	sub	sp, fp, #40	; 0x28
    8010:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
    8014:	e12fff1e 	bx	lr

Disassembly of section .text:

00008018 <register_fini>:
    8018:	e59f3018 	ldr	r3, [pc, #24]	; 8038 <register_fini+0x20>
    801c:	e3530000 	cmp	r3, #0
    8020:	012fff1e 	bxeq	lr
    8024:	e92d4010 	push	{r4, lr}
    8028:	e59f000c 	ldr	r0, [pc, #12]	; 803c <register_fini+0x24>
    802c:	eb00026b 	bl	89e0 <atexit>
    8030:	e8bd4010 	pop	{r4, lr}
    8034:	e12fff1e 	bx	lr
    8038:	00000000 	.word	0x00000000
    803c:	00008a34 	.word	0x00008a34

00008040 <deregister_tm_clones>:
    8040:	e59f301c 	ldr	r3, [pc, #28]	; 8064 <deregister_tm_clones+0x24>
    8044:	e59f001c 	ldr	r0, [pc, #28]	; 8068 <deregister_tm_clones+0x28>
    8048:	e0433000 	sub	r3, r3, r0
    804c:	e3530006 	cmp	r3, #6
    8050:	912fff1e 	bxls	lr
    8054:	e59f3010 	ldr	r3, [pc, #16]	; 806c <deregister_tm_clones+0x2c>
    8058:	e3530000 	cmp	r3, #0
    805c:	012fff1e 	bxeq	lr
    8060:	e12fff13 	bx	r3
    8064:	0001930b 	.word	0x0001930b
    8068:	00019308 	.word	0x00019308
    806c:	00000000 	.word	0x00000000

00008070 <register_tm_clones>:
    8070:	e59f1024 	ldr	r1, [pc, #36]	; 809c <register_tm_clones+0x2c>
    8074:	e59f0024 	ldr	r0, [pc, #36]	; 80a0 <register_tm_clones+0x30>
    8078:	e0411000 	sub	r1, r1, r0
    807c:	e1a01141 	asr	r1, r1, #2
    8080:	e0811fa1 	add	r1, r1, r1, lsr #31
    8084:	e1b010c1 	asrs	r1, r1, #1
    8088:	012fff1e 	bxeq	lr
    808c:	e59f3010 	ldr	r3, [pc, #16]	; 80a4 <register_tm_clones+0x34>
    8090:	e3530000 	cmp	r3, #0
    8094:	012fff1e 	bxeq	lr
    8098:	e12fff13 	bx	r3
    809c:	00019308 	.word	0x00019308
    80a0:	00019308 	.word	0x00019308
    80a4:	00000000 	.word	0x00000000

000080a8 <__do_global_dtors_aux>:
    80a8:	e92d4010 	push	{r4, lr}
    80ac:	e59f402c 	ldr	r4, [pc, #44]	; 80e0 <__do_global_dtors_aux+0x38>
    80b0:	e5d43000 	ldrb	r3, [r4]
    80b4:	e3530000 	cmp	r3, #0
    80b8:	1a000006 	bne	80d8 <__do_global_dtors_aux+0x30>
    80bc:	ebffffdf 	bl	8040 <deregister_tm_clones>
    80c0:	e59f301c 	ldr	r3, [pc, #28]	; 80e4 <__do_global_dtors_aux+0x3c>
    80c4:	e3530000 	cmp	r3, #0
    80c8:	159f0018 	ldrne	r0, [pc, #24]	; 80e8 <__do_global_dtors_aux+0x40>
    80cc:	11a00000 	movne	r0, r0
    80d0:	e3a03001 	mov	r3, #1
    80d4:	e5c43000 	strb	r3, [r4]
    80d8:	e8bd4010 	pop	{r4, lr}
    80dc:	e12fff1e 	bx	lr
    80e0:	00019308 	.word	0x00019308
    80e4:	00000000 	.word	0x00000000
    80e8:	00008ebc 	.word	0x00008ebc

000080ec <frame_dummy>:
    80ec:	e59f3040 	ldr	r3, [pc, #64]	; 8134 <frame_dummy+0x48>
    80f0:	e3530000 	cmp	r3, #0
    80f4:	e92d4010 	push	{r4, lr}
    80f8:	159f1038 	ldrne	r1, [pc, #56]	; 8138 <frame_dummy+0x4c>
    80fc:	159f0038 	ldrne	r0, [pc, #56]	; 813c <frame_dummy+0x50>
    8100:	11a00000 	movne	r0, r0
    8104:	e59f0034 	ldr	r0, [pc, #52]	; 8140 <frame_dummy+0x54>
    8108:	e5903000 	ldr	r3, [r0]
    810c:	e3530000 	cmp	r3, #0
    8110:	1a000001 	bne	811c <frame_dummy+0x30>
    8114:	e8bd4010 	pop	{r4, lr}
    8118:	eaffffd4 	b	8070 <register_tm_clones>
    811c:	e59f3020 	ldr	r3, [pc, #32]	; 8144 <frame_dummy+0x58>
    8120:	e3530000 	cmp	r3, #0
    8124:	0afffffa 	beq	8114 <frame_dummy+0x28>
    8128:	e1a0e00f 	mov	lr, pc
    812c:	e12fff13 	bx	r3
    8130:	eafffff7 	b	8114 <frame_dummy+0x28>
    8134:	00000000 	.word	0x00000000
    8138:	0001930c 	.word	0x0001930c
    813c:	00008ebc 	.word	0x00008ebc
    8140:	00018ecc 	.word	0x00018ecc
    8144:	00000000 	.word	0x00000000

00008148 <_mainCRTStartup>:
    8148:	e59f30e4 	ldr	r3, [pc, #228]	; 8234 <_mainCRTStartup+0xec>
    814c:	e3530000 	cmp	r3, #0
    8150:	059f30d8 	ldreq	r3, [pc, #216]	; 8230 <_mainCRTStartup+0xe8>
    8154:	e1a0d003 	mov	sp, r3
    8158:	e10f2000 	mrs	r2, CPSR
    815c:	e312000f 	tst	r2, #15
    8160:	0a000015 	beq	81bc <_mainCRTStartup+0x74>
    8164:	e321f0d1 	msr	CPSR_c, #209	; 0xd1
    8168:	e1a0d003 	mov	sp, r3
    816c:	e24daa01 	sub	sl, sp, #4096	; 0x1000
    8170:	e1a0300a 	mov	r3, sl
    8174:	e321f0d7 	msr	CPSR_c, #215	; 0xd7
    8178:	e1a0d003 	mov	sp, r3
    817c:	e2433a01 	sub	r3, r3, #4096	; 0x1000
    8180:	e321f0db 	msr	CPSR_c, #219	; 0xdb
    8184:	e1a0d003 	mov	sp, r3
    8188:	e2433a01 	sub	r3, r3, #4096	; 0x1000
    818c:	e321f0d2 	msr	CPSR_c, #210	; 0xd2
    8190:	e1a0d003 	mov	sp, r3
    8194:	e2433a02 	sub	r3, r3, #8192	; 0x2000
    8198:	e321f0d3 	msr	CPSR_c, #211	; 0xd3
    819c:	e1a0d003 	mov	sp, r3
    81a0:	e2433902 	sub	r3, r3, #32768	; 0x8000
    81a4:	e3c330ff 	bic	r3, r3, #255	; 0xff
    81a8:	e3c33cff 	bic	r3, r3, #65280	; 0xff00
    81ac:	e5033004 	str	r3, [r3, #-4]
    81b0:	e9532000 	ldmdb	r3, {sp}^
    81b4:	e38220c0 	orr	r2, r2, #192	; 0xc0
    81b8:	e121f002 	msr	CPSR_c, r2
    81bc:	e243a801 	sub	sl, r3, #65536	; 0x10000
    81c0:	e3b01000 	movs	r1, #0
    81c4:	e1a0b001 	mov	fp, r1
    81c8:	e1a07001 	mov	r7, r1
    81cc:	e59f006c 	ldr	r0, [pc, #108]	; 8240 <_mainCRTStartup+0xf8>
    81d0:	e59f206c 	ldr	r2, [pc, #108]	; 8244 <_mainCRTStartup+0xfc>
    81d4:	e0522000 	subs	r2, r2, r0
    81d8:	eb000247 	bl	8afc <memset>
    81dc:	e59f3054 	ldr	r3, [pc, #84]	; 8238 <_mainCRTStartup+0xf0>
    81e0:	e3530000 	cmp	r3, #0
    81e4:	0a000001 	beq	81f0 <_mainCRTStartup+0xa8>
    81e8:	e1a0e00f 	mov	lr, pc
    81ec:	e1a0f003 	mov	pc, r3
    81f0:	e59f3044 	ldr	r3, [pc, #68]	; 823c <_mainCRTStartup+0xf4>
    81f4:	e3530000 	cmp	r3, #0
    81f8:	0a000001 	beq	8204 <_mainCRTStartup+0xbc>
    81fc:	e1a0e00f 	mov	lr, pc
    8200:	e1a0f003 	mov	pc, r3
    8204:	e3b00000 	movs	r0, #0
    8208:	e3b01000 	movs	r1, #0
    820c:	e1b04000 	movs	r4, r0
    8210:	e1b05001 	movs	r5, r1
    8214:	e59f002c 	ldr	r0, [pc, #44]	; 8248 <_mainCRTStartup+0x100>
    8218:	eb0001f0 	bl	89e0 <atexit>
    821c:	eb000216 	bl	8a7c <__libc_init_array>
    8220:	e1b00004 	movs	r0, r4
    8224:	e1b01005 	movs	r1, r5
    8228:	eb000007 	bl	824c <main>
    822c:	eb0001f3 	bl	8a00 <exit>
    8230:	00080000 	.word	0x00080000
	...
    8240:	00019308 	.word	0x00019308
    8244:	00019324 	.word	0x00019324
    8248:	00008a34 	.word	0x00008a34

0000824c <main>:
#include <stdio.h>
#include <stdlib.h>

int main(void)
{
    824c:	e92d4810 	push	{r4, fp, lr}
    8250:	e28db008 	add	fp, sp, #8
    8254:	e24dd054 	sub	sp, sp, #84	; 0x54
    float M[3][4] = {1,2,4,6,1,1,2,4,1,1,1,2};
    8258:	e59f31d8 	ldr	r3, [pc, #472]	; 8438 <main+0x1ec>
    825c:	e24bc048 	sub	ip, fp, #72	; 0x48
    8260:	e1a0e003 	mov	lr, r3
    8264:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
    8268:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
    826c:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
    8270:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
    8274:	e89e000f 	ldm	lr, {r0, r1, r2, r3}
    8278:	e88c000f 	stm	ip, {r0, r1, r2, r3}
    float p[4] = {0.0};
    827c:	e24b3058 	sub	r3, fp, #88	; 0x58
    8280:	e3a02000 	mov	r2, #0
    8284:	e5832000 	str	r2, [r3]
    8288:	e5832004 	str	r2, [r3, #4]
    828c:	e5832008 	str	r2, [r3, #8]
    8290:	e583200c 	str	r2, [r3, #12]
    int i;
    int j;
    int k;
    for(i=0;i<2;i++)
    8294:	e3a03000 	mov	r3, #0
    8298:	e50b3010 	str	r3, [fp, #-16]
    829c:	ea00005d 	b	8418 <main+0x1cc>
    {
        for(j=i+1;j<3;j++)
    82a0:	e51b3010 	ldr	r3, [fp, #-16]
    82a4:	e2833001 	add	r3, r3, #1
    82a8:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
    82ac:	ea000053 	b	8400 <main+0x1b4>
        {
            for(k=0;k<4;k++)
    82b0:	e3a03000 	mov	r3, #0
    82b4:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
    82b8:	ea000028 	b	8360 <main+0x114>
            {
                *(p+k) = -M[i][k]/M[i][i]*M[j][i];
    82bc:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    82c0:	e1a03103 	lsl	r3, r3, #2
    82c4:	e24b2058 	sub	r2, fp, #88	; 0x58
    82c8:	e0824003 	add	r4, r2, r3
    82cc:	e51b3010 	ldr	r3, [fp, #-16]
    82d0:	e1a02103 	lsl	r2, r3, #2
    82d4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    82d8:	e0823003 	add	r3, r2, r3
    82dc:	e1a03103 	lsl	r3, r3, #2
    82e0:	e24b200c 	sub	r2, fp, #12
    82e4:	e0823003 	add	r3, r2, r3
    82e8:	e513303c 	ldr	r3, [r3, #-60]	; 0xffffffc4
    82ec:	e2230102 	eor	r0, r3, #-2147483648	; 0x80000000
    82f0:	e51b2010 	ldr	r2, [fp, #-16]
    82f4:	e1a03002 	mov	r3, r2
    82f8:	e1a03103 	lsl	r3, r3, #2
    82fc:	e0833002 	add	r3, r3, r2
    8300:	e1a03103 	lsl	r3, r3, #2
    8304:	e24b200c 	sub	r2, fp, #12
    8308:	e0823003 	add	r3, r2, r3
    830c:	e243303c 	sub	r3, r3, #60	; 0x3c
    8310:	e5933000 	ldr	r3, [r3]
    8314:	e1a01003 	mov	r1, r3
    8318:	eb000158 	bl	8880 <__aeabi_fdiv>
    831c:	e1a03000 	mov	r3, r0
    8320:	e1a00003 	mov	r0, r3
    8324:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    8328:	e1a02103 	lsl	r2, r3, #2
    832c:	e51b3010 	ldr	r3, [fp, #-16]
    8330:	e0823003 	add	r3, r2, r3
    8334:	e1a03103 	lsl	r3, r3, #2
    8338:	e24b200c 	sub	r2, fp, #12
    833c:	e0823003 	add	r3, r2, r3
    8340:	e513303c 	ldr	r3, [r3, #-60]	; 0xffffffc4
    8344:	e1a01003 	mov	r1, r3
    8348:	eb0000e6 	bl	86e8 <__aeabi_fmul>
    834c:	e1a03000 	mov	r3, r0
    8350:	e5843000 	str	r3, [r4]
            for(k=0;k<4;k++)
    8354:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    8358:	e2833001 	add	r3, r3, #1
    835c:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
    8360:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    8364:	e3530003 	cmp	r3, #3
    8368:	daffffd3 	ble	82bc <main+0x70>
            }
            for(k=0;k<4;k++)
    836c:	e3a03000 	mov	r3, #0
    8370:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
    8374:	ea00001b 	b	83e8 <main+0x19c>
            {
                M[j][k] = *(p+k) + M[j][k];
    8378:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    837c:	e1a03103 	lsl	r3, r3, #2
    8380:	e24b2058 	sub	r2, fp, #88	; 0x58
    8384:	e0823003 	add	r3, r2, r3
    8388:	e5930000 	ldr	r0, [r3]
    838c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    8390:	e1a02103 	lsl	r2, r3, #2
    8394:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    8398:	e0823003 	add	r3, r2, r3
    839c:	e1a03103 	lsl	r3, r3, #2
    83a0:	e24b200c 	sub	r2, fp, #12
    83a4:	e0823003 	add	r3, r2, r3
    83a8:	e513303c 	ldr	r3, [r3, #-60]	; 0xffffffc4
    83ac:	e1a01003 	mov	r1, r3
    83b0:	eb000024 	bl	8448 <__addsf3>
    83b4:	e1a03000 	mov	r3, r0
    83b8:	e1a01003 	mov	r1, r3
    83bc:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    83c0:	e1a02103 	lsl	r2, r3, #2
    83c4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    83c8:	e0823003 	add	r3, r2, r3
    83cc:	e1a03103 	lsl	r3, r3, #2
    83d0:	e24b200c 	sub	r2, fp, #12
    83d4:	e0823003 	add	r3, r2, r3
    83d8:	e503103c 	str	r1, [r3, #-60]	; 0xffffffc4
            for(k=0;k<4;k++)
    83dc:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    83e0:	e2833001 	add	r3, r3, #1
    83e4:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
    83e8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    83ec:	e3530003 	cmp	r3, #3
    83f0:	daffffe0 	ble	8378 <main+0x12c>
        for(j=i+1;j<3;j++)
    83f4:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    83f8:	e2833001 	add	r3, r3, #1
    83fc:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
    8400:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    8404:	e3530002 	cmp	r3, #2
    8408:	daffffa8 	ble	82b0 <main+0x64>
    for(i=0;i<2;i++)
    840c:	e51b3010 	ldr	r3, [fp, #-16]
    8410:	e2833001 	add	r3, r3, #1
    8414:	e50b3010 	str	r3, [fp, #-16]
    8418:	e51b3010 	ldr	r3, [fp, #-16]
    841c:	e3530001 	cmp	r3, #1
    8420:	daffff9e 	ble	82a0 <main+0x54>
            }
        }
    }
    return 0;
    8424:	e3a03000 	mov	r3, #0
}
    8428:	e1a00003 	mov	r0, r3
    842c:	e24bd008 	sub	sp, fp, #8
    8430:	e8bd4810 	pop	{r4, fp, lr}
    8434:	e12fff1e 	bx	lr
    8438:	00008e7c 	.word	0x00008e7c

0000843c <__aeabi_frsub>:
    843c:	e2200102 	eor	r0, r0, #-2147483648	; 0x80000000
    8440:	ea000000 	b	8448 <__addsf3>

00008444 <__aeabi_fsub>:
    8444:	e2211102 	eor	r1, r1, #-2147483648	; 0x80000000

00008448 <__addsf3>:
    8448:	e1b02080 	lsls	r2, r0, #1
    844c:	11b03081 	lslsne	r3, r1, #1
    8450:	11320003 	teqne	r2, r3
    8454:	11f0cc42 	mvnsne	ip, r2, asr #24
    8458:	11f0cc43 	mvnsne	ip, r3, asr #24
    845c:	0a000047 	beq	8580 <__addsf3+0x138>
    8460:	e1a02c22 	lsr	r2, r2, #24
    8464:	e0723c23 	rsbs	r3, r2, r3, lsr #24
    8468:	c0822003 	addgt	r2, r2, r3
    846c:	c0201001 	eorgt	r1, r0, r1
    8470:	c0210000 	eorgt	r0, r1, r0
    8474:	c0201001 	eorgt	r1, r0, r1
    8478:	b2633000 	rsblt	r3, r3, #0
    847c:	e3530019 	cmp	r3, #25
    8480:	812fff1e 	bxhi	lr
    8484:	e3100102 	tst	r0, #-2147483648	; 0x80000000
    8488:	e3800502 	orr	r0, r0, #8388608	; 0x800000
    848c:	e3c004ff 	bic	r0, r0, #-16777216	; 0xff000000
    8490:	12600000 	rsbne	r0, r0, #0
    8494:	e3110102 	tst	r1, #-2147483648	; 0x80000000
    8498:	e3811502 	orr	r1, r1, #8388608	; 0x800000
    849c:	e3c114ff 	bic	r1, r1, #-16777216	; 0xff000000
    84a0:	12611000 	rsbne	r1, r1, #0
    84a4:	e1320003 	teq	r2, r3
    84a8:	0a00002e 	beq	8568 <__addsf3+0x120>
    84ac:	e2422001 	sub	r2, r2, #1
    84b0:	e0900351 	adds	r0, r0, r1, asr r3
    84b4:	e2633020 	rsb	r3, r3, #32
    84b8:	e1a01311 	lsl	r1, r1, r3
    84bc:	e2003102 	and	r3, r0, #-2147483648	; 0x80000000
    84c0:	5a000001 	bpl	84cc <__addsf3+0x84>
    84c4:	e2711000 	rsbs	r1, r1, #0
    84c8:	e2e00000 	rsc	r0, r0, #0
    84cc:	e3500502 	cmp	r0, #8388608	; 0x800000
    84d0:	3a00000b 	bcc	8504 <__addsf3+0xbc>
    84d4:	e3500401 	cmp	r0, #16777216	; 0x1000000
    84d8:	3a000004 	bcc	84f0 <__addsf3+0xa8>
    84dc:	e1b000a0 	lsrs	r0, r0, #1
    84e0:	e1a01061 	rrx	r1, r1
    84e4:	e2822001 	add	r2, r2, #1
    84e8:	e35200fe 	cmp	r2, #254	; 0xfe
    84ec:	2a000038 	bcs	85d4 <__addsf3+0x18c>
    84f0:	e3510102 	cmp	r1, #-2147483648	; 0x80000000
    84f4:	e0a00b82 	adc	r0, r0, r2, lsl #23
    84f8:	03c00001 	biceq	r0, r0, #1
    84fc:	e1800003 	orr	r0, r0, r3
    8500:	e12fff1e 	bx	lr
    8504:	e1b01081 	lsls	r1, r1, #1
    8508:	e0a00000 	adc	r0, r0, r0
    850c:	e3100502 	tst	r0, #8388608	; 0x800000
    8510:	e2422001 	sub	r2, r2, #1
    8514:	1afffff5 	bne	84f0 <__addsf3+0xa8>
    8518:	e1b0c620 	lsrs	ip, r0, #12
    851c:	01a00600 	lsleq	r0, r0, #12
    8520:	0242200c 	subeq	r2, r2, #12
    8524:	e31008ff 	tst	r0, #16711680	; 0xff0000
    8528:	01a00400 	lsleq	r0, r0, #8
    852c:	02422008 	subeq	r2, r2, #8
    8530:	e310060f 	tst	r0, #15728640	; 0xf00000
    8534:	01a00200 	lsleq	r0, r0, #4
    8538:	02422004 	subeq	r2, r2, #4
    853c:	e3100503 	tst	r0, #12582912	; 0xc00000
    8540:	01a00100 	lsleq	r0, r0, #2
    8544:	02422002 	subeq	r2, r2, #2
    8548:	e3500502 	cmp	r0, #8388608	; 0x800000
    854c:	31a00080 	lslcc	r0, r0, #1
    8550:	e2d22000 	sbcs	r2, r2, #0
    8554:	a0800b82 	addge	r0, r0, r2, lsl #23
    8558:	b2622000 	rsblt	r2, r2, #0
    855c:	a1800003 	orrge	r0, r0, r3
    8560:	b1830230 	orrlt	r0, r3, r0, lsr r2
    8564:	e12fff1e 	bx	lr
    8568:	e3320000 	teq	r2, #0
    856c:	e2211502 	eor	r1, r1, #8388608	; 0x800000
    8570:	02200502 	eoreq	r0, r0, #8388608	; 0x800000
    8574:	02822001 	addeq	r2, r2, #1
    8578:	12433001 	subne	r3, r3, #1
    857c:	eaffffca 	b	84ac <__addsf3+0x64>
    8580:	e1a03081 	lsl	r3, r1, #1
    8584:	e1f0cc42 	mvns	ip, r2, asr #24
    8588:	11f0cc43 	mvnsne	ip, r3, asr #24
    858c:	0a000013 	beq	85e0 <__addsf3+0x198>
    8590:	e1320003 	teq	r2, r3
    8594:	0a000002 	beq	85a4 <__addsf3+0x15c>
    8598:	e3320000 	teq	r2, #0
    859c:	01a00001 	moveq	r0, r1
    85a0:	e12fff1e 	bx	lr
    85a4:	e1300001 	teq	r0, r1
    85a8:	13a00000 	movne	r0, #0
    85ac:	112fff1e 	bxne	lr
    85b0:	e31204ff 	tst	r2, #-16777216	; 0xff000000
    85b4:	1a000002 	bne	85c4 <__addsf3+0x17c>
    85b8:	e1b00080 	lsls	r0, r0, #1
    85bc:	23800102 	orrcs	r0, r0, #-2147483648	; 0x80000000
    85c0:	e12fff1e 	bx	lr
    85c4:	e2922402 	adds	r2, r2, #33554432	; 0x2000000
    85c8:	32800502 	addcc	r0, r0, #8388608	; 0x800000
    85cc:	312fff1e 	bxcc	lr
    85d0:	e2003102 	and	r3, r0, #-2147483648	; 0x80000000
    85d4:	e383047f 	orr	r0, r3, #2130706432	; 0x7f000000
    85d8:	e3800502 	orr	r0, r0, #8388608	; 0x800000
    85dc:	e12fff1e 	bx	lr
    85e0:	e1f02c42 	mvns	r2, r2, asr #24
    85e4:	11a00001 	movne	r0, r1
    85e8:	01f03c43 	mvnseq	r3, r3, asr #24
    85ec:	11a01000 	movne	r1, r0
    85f0:	e1b02480 	lsls	r2, r0, #9
    85f4:	01b03481 	lslseq	r3, r1, #9
    85f8:	01300001 	teqeq	r0, r1
    85fc:	13800501 	orrne	r0, r0, #4194304	; 0x400000
    8600:	e12fff1e 	bx	lr

00008604 <__aeabi_ui2f>:
    8604:	e3a03000 	mov	r3, #0
    8608:	ea000001 	b	8614 <__aeabi_i2f+0x8>

0000860c <__aeabi_i2f>:
    860c:	e2103102 	ands	r3, r0, #-2147483648	; 0x80000000
    8610:	42600000 	rsbmi	r0, r0, #0
    8614:	e1b0c000 	movs	ip, r0
    8618:	012fff1e 	bxeq	lr
    861c:	e383344b 	orr	r3, r3, #1258291200	; 0x4b000000
    8620:	e1a01000 	mov	r1, r0
    8624:	e3a00000 	mov	r0, #0
    8628:	ea00000f 	b	866c <__aeabi_l2f+0x30>

0000862c <__aeabi_ul2f>:
    862c:	e1902001 	orrs	r2, r0, r1
    8630:	012fff1e 	bxeq	lr
    8634:	e3a03000 	mov	r3, #0
    8638:	ea000005 	b	8654 <__aeabi_l2f+0x18>

0000863c <__aeabi_l2f>:
    863c:	e1902001 	orrs	r2, r0, r1
    8640:	012fff1e 	bxeq	lr
    8644:	e2113102 	ands	r3, r1, #-2147483648	; 0x80000000
    8648:	5a000001 	bpl	8654 <__aeabi_l2f+0x18>
    864c:	e2700000 	rsbs	r0, r0, #0
    8650:	e2e11000 	rsc	r1, r1, #0
    8654:	e1b0c001 	movs	ip, r1
    8658:	01a0c000 	moveq	ip, r0
    865c:	01a01000 	moveq	r1, r0
    8660:	03a00000 	moveq	r0, #0
    8664:	e383345b 	orr	r3, r3, #1526726656	; 0x5b000000
    8668:	02433201 	subeq	r3, r3, #268435456	; 0x10000000
    866c:	e2433502 	sub	r3, r3, #8388608	; 0x800000
    8670:	e3a02017 	mov	r2, #23
    8674:	e35c0801 	cmp	ip, #65536	; 0x10000
    8678:	21a0c82c 	lsrcs	ip, ip, #16
    867c:	22422010 	subcs	r2, r2, #16
    8680:	e35c0c01 	cmp	ip, #256	; 0x100
    8684:	21a0c42c 	lsrcs	ip, ip, #8
    8688:	22422008 	subcs	r2, r2, #8
    868c:	e35c0010 	cmp	ip, #16
    8690:	21a0c22c 	lsrcs	ip, ip, #4
    8694:	22422004 	subcs	r2, r2, #4
    8698:	e35c0004 	cmp	ip, #4
    869c:	22422002 	subcs	r2, r2, #2
    86a0:	304220ac 	subcc	r2, r2, ip, lsr #1
    86a4:	e05221ac 	subs	r2, r2, ip, lsr #3
    86a8:	e0433b82 	sub	r3, r3, r2, lsl #23
    86ac:	ba000006 	blt	86cc <__aeabi_l2f+0x90>
    86b0:	e0833211 	add	r3, r3, r1, lsl r2
    86b4:	e1a0c210 	lsl	ip, r0, r2
    86b8:	e2622020 	rsb	r2, r2, #32
    86bc:	e35c0102 	cmp	ip, #-2147483648	; 0x80000000
    86c0:	e0a30230 	adc	r0, r3, r0, lsr r2
    86c4:	03c00001 	biceq	r0, r0, #1
    86c8:	e12fff1e 	bx	lr
    86cc:	e2822020 	add	r2, r2, #32
    86d0:	e1a0c211 	lsl	ip, r1, r2
    86d4:	e2622020 	rsb	r2, r2, #32
    86d8:	e190008c 	orrs	r0, r0, ip, lsl #1
    86dc:	e0a30231 	adc	r0, r3, r1, lsr r2
    86e0:	01c00fac 	biceq	r0, r0, ip, lsr #31
    86e4:	e12fff1e 	bx	lr

000086e8 <__aeabi_fmul>:
    86e8:	e3a0c0ff 	mov	ip, #255	; 0xff
    86ec:	e01c2ba0 	ands	r2, ip, r0, lsr #23
    86f0:	101c3ba1 	andsne	r3, ip, r1, lsr #23
    86f4:	1132000c 	teqne	r2, ip
    86f8:	1133000c 	teqne	r3, ip
    86fc:	0a00003e 	beq	87fc <__aeabi_fmul+0x114>
    8700:	e0822003 	add	r2, r2, r3
    8704:	e020c001 	eor	ip, r0, r1
    8708:	e1b00480 	lsls	r0, r0, #9
    870c:	11b01481 	lslsne	r1, r1, #9
    8710:	0a000010 	beq	8758 <__aeabi_fmul+0x70>
    8714:	e3a03302 	mov	r3, #134217728	; 0x8000000
    8718:	e18302a0 	orr	r0, r3, r0, lsr #5
    871c:	e18312a1 	orr	r1, r3, r1, lsr #5
    8720:	e0813190 	umull	r3, r1, r0, r1
    8724:	e20c0102 	and	r0, ip, #-2147483648	; 0x80000000
    8728:	e3510502 	cmp	r1, #8388608	; 0x800000
    872c:	31a01081 	lslcc	r1, r1, #1
    8730:	31811fa3 	orrcc	r1, r1, r3, lsr #31
    8734:	31a03083 	lslcc	r3, r3, #1
    8738:	e1800001 	orr	r0, r0, r1
    873c:	e2c2207f 	sbc	r2, r2, #127	; 0x7f
    8740:	e35200fd 	cmp	r2, #253	; 0xfd
    8744:	8a00000f 	bhi	8788 <__aeabi_fmul+0xa0>
    8748:	e3530102 	cmp	r3, #-2147483648	; 0x80000000
    874c:	e0a00b82 	adc	r0, r0, r2, lsl #23
    8750:	03c00001 	biceq	r0, r0, #1
    8754:	e12fff1e 	bx	lr
    8758:	e3300000 	teq	r0, #0
    875c:	e20cc102 	and	ip, ip, #-2147483648	; 0x80000000
    8760:	01a01481 	lsleq	r1, r1, #9
    8764:	e18c04a0 	orr	r0, ip, r0, lsr #9
    8768:	e18004a1 	orr	r0, r0, r1, lsr #9
    876c:	e252207f 	subs	r2, r2, #127	; 0x7f
    8770:	c27230ff 	rsbsgt	r3, r2, #255	; 0xff
    8774:	c1800b82 	orrgt	r0, r0, r2, lsl #23
    8778:	c12fff1e 	bxgt	lr
    877c:	e3800502 	orr	r0, r0, #8388608	; 0x800000
    8780:	e3a03000 	mov	r3, #0
    8784:	e2522001 	subs	r2, r2, #1
    8788:	ca000035 	bgt	8864 <__aeabi_fmul+0x17c>
    878c:	e3720019 	cmn	r2, #25
    8790:	d2000102 	andle	r0, r0, #-2147483648	; 0x80000000
    8794:	d12fff1e 	bxle	lr
    8798:	e2622000 	rsb	r2, r2, #0
    879c:	e1b01080 	lsls	r1, r0, #1
    87a0:	e1a01231 	lsr	r1, r1, r2
    87a4:	e2622020 	rsb	r2, r2, #32
    87a8:	e1a0c210 	lsl	ip, r0, r2
    87ac:	e1b00061 	rrxs	r0, r1
    87b0:	e2a00000 	adc	r0, r0, #0
    87b4:	e193308c 	orrs	r3, r3, ip, lsl #1
    87b8:	01c00fac 	biceq	r0, r0, ip, lsr #31
    87bc:	e12fff1e 	bx	lr
    87c0:	e3320000 	teq	r2, #0
    87c4:	e200c102 	and	ip, r0, #-2147483648	; 0x80000000
    87c8:	01a00080 	lsleq	r0, r0, #1
    87cc:	03100502 	tsteq	r0, #8388608	; 0x800000
    87d0:	02422001 	subeq	r2, r2, #1
    87d4:	0afffffb 	beq	87c8 <__aeabi_fmul+0xe0>
    87d8:	e180000c 	orr	r0, r0, ip
    87dc:	e3330000 	teq	r3, #0
    87e0:	e201c102 	and	ip, r1, #-2147483648	; 0x80000000
    87e4:	01a01081 	lsleq	r1, r1, #1
    87e8:	03110502 	tsteq	r1, #8388608	; 0x800000
    87ec:	02433001 	subeq	r3, r3, #1
    87f0:	0afffffb 	beq	87e4 <__aeabi_fmul+0xfc>
    87f4:	e181100c 	orr	r1, r1, ip
    87f8:	eaffffc0 	b	8700 <__aeabi_fmul+0x18>
    87fc:	e00c3ba1 	and	r3, ip, r1, lsr #23
    8800:	e132000c 	teq	r2, ip
    8804:	1133000c 	teqne	r3, ip
    8808:	0a000005 	beq	8824 <__aeabi_fmul+0x13c>
    880c:	e3d0c102 	bics	ip, r0, #-2147483648	; 0x80000000
    8810:	13d1c102 	bicsne	ip, r1, #-2147483648	; 0x80000000
    8814:	1affffe9 	bne	87c0 <__aeabi_fmul+0xd8>
    8818:	e0200001 	eor	r0, r0, r1
    881c:	e2000102 	and	r0, r0, #-2147483648	; 0x80000000
    8820:	e12fff1e 	bx	lr
    8824:	e3300000 	teq	r0, #0
    8828:	13300102 	teqne	r0, #-2147483648	; 0x80000000
    882c:	01a00001 	moveq	r0, r1
    8830:	13310000 	teqne	r1, #0
    8834:	13310102 	teqne	r1, #-2147483648	; 0x80000000
    8838:	0a00000d 	beq	8874 <__aeabi_fmul+0x18c>
    883c:	e132000c 	teq	r2, ip
    8840:	1a000001 	bne	884c <__aeabi_fmul+0x164>
    8844:	e1b02480 	lsls	r2, r0, #9
    8848:	1a000009 	bne	8874 <__aeabi_fmul+0x18c>
    884c:	e133000c 	teq	r3, ip
    8850:	1a000002 	bne	8860 <__aeabi_fmul+0x178>
    8854:	e1b03481 	lsls	r3, r1, #9
    8858:	11a00001 	movne	r0, r1
    885c:	1a000004 	bne	8874 <__aeabi_fmul+0x18c>
    8860:	e0200001 	eor	r0, r0, r1
    8864:	e2000102 	and	r0, r0, #-2147483648	; 0x80000000
    8868:	e380047f 	orr	r0, r0, #2130706432	; 0x7f000000
    886c:	e3800502 	orr	r0, r0, #8388608	; 0x800000
    8870:	e12fff1e 	bx	lr
    8874:	e380047f 	orr	r0, r0, #2130706432	; 0x7f000000
    8878:	e3800503 	orr	r0, r0, #12582912	; 0xc00000
    887c:	e12fff1e 	bx	lr

00008880 <__aeabi_fdiv>:
    8880:	e3a0c0ff 	mov	ip, #255	; 0xff
    8884:	e01c2ba0 	ands	r2, ip, r0, lsr #23
    8888:	101c3ba1 	andsne	r3, ip, r1, lsr #23
    888c:	1132000c 	teqne	r2, ip
    8890:	1133000c 	teqne	r3, ip
    8894:	0a00003a 	beq	8984 <__aeabi_fdiv+0x104>
    8898:	e0422003 	sub	r2, r2, r3
    889c:	e020c001 	eor	ip, r0, r1
    88a0:	e1b01481 	lsls	r1, r1, #9
    88a4:	e1a00480 	lsl	r0, r0, #9
    88a8:	0a00001c 	beq	8920 <__aeabi_fdiv+0xa0>
    88ac:	e3a03201 	mov	r3, #268435456	; 0x10000000
    88b0:	e1831221 	orr	r1, r3, r1, lsr #4
    88b4:	e1833220 	orr	r3, r3, r0, lsr #4
    88b8:	e20c0102 	and	r0, ip, #-2147483648	; 0x80000000
    88bc:	e1530001 	cmp	r3, r1
    88c0:	31a03083 	lslcc	r3, r3, #1
    88c4:	e2a2207d 	adc	r2, r2, #125	; 0x7d
    88c8:	e3a0c502 	mov	ip, #8388608	; 0x800000
    88cc:	e1530001 	cmp	r3, r1
    88d0:	20433001 	subcs	r3, r3, r1
    88d4:	2180000c 	orrcs	r0, r0, ip
    88d8:	e15300a1 	cmp	r3, r1, lsr #1
    88dc:	204330a1 	subcs	r3, r3, r1, lsr #1
    88e0:	218000ac 	orrcs	r0, r0, ip, lsr #1
    88e4:	e1530121 	cmp	r3, r1, lsr #2
    88e8:	20433121 	subcs	r3, r3, r1, lsr #2
    88ec:	2180012c 	orrcs	r0, r0, ip, lsr #2
    88f0:	e15301a1 	cmp	r3, r1, lsr #3
    88f4:	204331a1 	subcs	r3, r3, r1, lsr #3
    88f8:	218001ac 	orrcs	r0, r0, ip, lsr #3
    88fc:	e1b03203 	lsls	r3, r3, #4
    8900:	11b0c22c 	lsrsne	ip, ip, #4
    8904:	1afffff0 	bne	88cc <__aeabi_fdiv+0x4c>
    8908:	e35200fd 	cmp	r2, #253	; 0xfd
    890c:	8affff9d 	bhi	8788 <__aeabi_fmul+0xa0>
    8910:	e1530001 	cmp	r3, r1
    8914:	e0a00b82 	adc	r0, r0, r2, lsl #23
    8918:	03c00001 	biceq	r0, r0, #1
    891c:	e12fff1e 	bx	lr
    8920:	e20cc102 	and	ip, ip, #-2147483648	; 0x80000000
    8924:	e18c04a0 	orr	r0, ip, r0, lsr #9
    8928:	e292207f 	adds	r2, r2, #127	; 0x7f
    892c:	c27230ff 	rsbsgt	r3, r2, #255	; 0xff
    8930:	c1800b82 	orrgt	r0, r0, r2, lsl #23
    8934:	c12fff1e 	bxgt	lr
    8938:	e3800502 	orr	r0, r0, #8388608	; 0x800000
    893c:	e3a03000 	mov	r3, #0
    8940:	e2522001 	subs	r2, r2, #1
    8944:	eaffff8f 	b	8788 <__aeabi_fmul+0xa0>
    8948:	e3320000 	teq	r2, #0
    894c:	e200c102 	and	ip, r0, #-2147483648	; 0x80000000
    8950:	01a00080 	lsleq	r0, r0, #1
    8954:	03100502 	tsteq	r0, #8388608	; 0x800000
    8958:	02422001 	subeq	r2, r2, #1
    895c:	0afffffb 	beq	8950 <__aeabi_fdiv+0xd0>
    8960:	e180000c 	orr	r0, r0, ip
    8964:	e3330000 	teq	r3, #0
    8968:	e201c102 	and	ip, r1, #-2147483648	; 0x80000000
    896c:	01a01081 	lsleq	r1, r1, #1
    8970:	03110502 	tsteq	r1, #8388608	; 0x800000
    8974:	02433001 	subeq	r3, r3, #1
    8978:	0afffffb 	beq	896c <__aeabi_fdiv+0xec>
    897c:	e181100c 	orr	r1, r1, ip
    8980:	eaffffc4 	b	8898 <__aeabi_fdiv+0x18>
    8984:	e00c3ba1 	and	r3, ip, r1, lsr #23
    8988:	e132000c 	teq	r2, ip
    898c:	1a000005 	bne	89a8 <__aeabi_fdiv+0x128>
    8990:	e1b02480 	lsls	r2, r0, #9
    8994:	1affffb6 	bne	8874 <__aeabi_fmul+0x18c>
    8998:	e133000c 	teq	r3, ip
    899c:	1affffaf 	bne	8860 <__aeabi_fmul+0x178>
    89a0:	e1a00001 	mov	r0, r1
    89a4:	eaffffb2 	b	8874 <__aeabi_fmul+0x18c>
    89a8:	e133000c 	teq	r3, ip
    89ac:	1a000003 	bne	89c0 <__aeabi_fdiv+0x140>
    89b0:	e1b03481 	lsls	r3, r1, #9
    89b4:	0affff97 	beq	8818 <__aeabi_fmul+0x130>
    89b8:	e1a00001 	mov	r0, r1
    89bc:	eaffffac 	b	8874 <__aeabi_fmul+0x18c>
    89c0:	e3d0c102 	bics	ip, r0, #-2147483648	; 0x80000000
    89c4:	13d1c102 	bicsne	ip, r1, #-2147483648	; 0x80000000
    89c8:	1affffde 	bne	8948 <__aeabi_fdiv+0xc8>
    89cc:	e3d02102 	bics	r2, r0, #-2147483648	; 0x80000000
    89d0:	1affffa2 	bne	8860 <__aeabi_fmul+0x178>
    89d4:	e3d13102 	bics	r3, r1, #-2147483648	; 0x80000000
    89d8:	1affff8e 	bne	8818 <__aeabi_fmul+0x130>
    89dc:	eaffffa4 	b	8874 <__aeabi_fmul+0x18c>

000089e0 <atexit>:
    89e0:	e3a03000 	mov	r3, #0
    89e4:	e92d4010 	push	{r4, lr}
    89e8:	e1a01000 	mov	r1, r0
    89ec:	e1a02003 	mov	r2, r3
    89f0:	e1a00003 	mov	r0, r3
    89f4:	eb000085 	bl	8c10 <__register_exitproc>
    89f8:	e8bd4010 	pop	{r4, lr}
    89fc:	e12fff1e 	bx	lr

00008a00 <exit>:
    8a00:	e92d4010 	push	{r4, lr}
    8a04:	e3a01000 	mov	r1, #0
    8a08:	e1a04000 	mov	r4, r0
    8a0c:	eb0000b7 	bl	8cf0 <__call_exitprocs>
    8a10:	e59f3018 	ldr	r3, [pc, #24]	; 8a30 <exit+0x30>
    8a14:	e5930000 	ldr	r0, [r3]
    8a18:	e590303c 	ldr	r3, [r0, #60]	; 0x3c
    8a1c:	e3530000 	cmp	r3, #0
    8a20:	11a0e00f 	movne	lr, pc
    8a24:	112fff13 	bxne	r3
    8a28:	e1a00004 	mov	r0, r4
    8a2c:	eb00010b 	bl	8e60 <_exit>
    8a30:	00008eac 	.word	0x00008eac

00008a34 <__libc_fini_array>:
    8a34:	e92d4070 	push	{r4, r5, r6, lr}
    8a38:	e59f5034 	ldr	r5, [pc, #52]	; 8a74 <__libc_fini_array+0x40>
    8a3c:	e59f4034 	ldr	r4, [pc, #52]	; 8a78 <__libc_fini_array+0x44>
    8a40:	e0444005 	sub	r4, r4, r5
    8a44:	e1b04144 	asrs	r4, r4, #2
    8a48:	10855104 	addne	r5, r5, r4, lsl #2
    8a4c:	0a000005 	beq	8a68 <__libc_fini_array+0x34>
    8a50:	e2444001 	sub	r4, r4, #1
    8a54:	e5353004 	ldr	r3, [r5, #-4]!
    8a58:	e1a0e00f 	mov	lr, pc
    8a5c:	e12fff13 	bx	r3
    8a60:	e3540000 	cmp	r4, #0
    8a64:	1afffff9 	bne	8a50 <__libc_fini_array+0x1c>
    8a68:	eb0000fd 	bl	8e64 <_fini>
    8a6c:	e8bd4070 	pop	{r4, r5, r6, lr}
    8a70:	e12fff1e 	bx	lr
    8a74:	00018ec8 	.word	0x00018ec8
    8a78:	00018ecc 	.word	0x00018ecc

00008a7c <__libc_init_array>:
    8a7c:	e92d4070 	push	{r4, r5, r6, lr}
    8a80:	e59f6064 	ldr	r6, [pc, #100]	; 8aec <__libc_init_array+0x70>
    8a84:	e59f5064 	ldr	r5, [pc, #100]	; 8af0 <__libc_init_array+0x74>
    8a88:	e0466005 	sub	r6, r6, r5
    8a8c:	e1b06146 	asrs	r6, r6, #2
    8a90:	13a04000 	movne	r4, #0
    8a94:	0a000005 	beq	8ab0 <__libc_init_array+0x34>
    8a98:	e2844001 	add	r4, r4, #1
    8a9c:	e4953004 	ldr	r3, [r5], #4
    8aa0:	e1a0e00f 	mov	lr, pc
    8aa4:	e12fff13 	bx	r3
    8aa8:	e1560004 	cmp	r6, r4
    8aac:	1afffff9 	bne	8a98 <__libc_init_array+0x1c>
    8ab0:	e59f603c 	ldr	r6, [pc, #60]	; 8af4 <__libc_init_array+0x78>
    8ab4:	e59f503c 	ldr	r5, [pc, #60]	; 8af8 <__libc_init_array+0x7c>
    8ab8:	e0466005 	sub	r6, r6, r5
    8abc:	ebfffd4f 	bl	8000 <_init>
    8ac0:	e1b06146 	asrs	r6, r6, #2
    8ac4:	13a04000 	movne	r4, #0
    8ac8:	0a000005 	beq	8ae4 <__libc_init_array+0x68>
    8acc:	e2844001 	add	r4, r4, #1
    8ad0:	e4953004 	ldr	r3, [r5], #4
    8ad4:	e1a0e00f 	mov	lr, pc
    8ad8:	e12fff13 	bx	r3
    8adc:	e1560004 	cmp	r6, r4
    8ae0:	1afffff9 	bne	8acc <__libc_init_array+0x50>
    8ae4:	e8bd4070 	pop	{r4, r5, r6, lr}
    8ae8:	e12fff1e 	bx	lr
    8aec:	00018ec0 	.word	0x00018ec0
    8af0:	00018ec0 	.word	0x00018ec0
    8af4:	00018ec8 	.word	0x00018ec8
    8af8:	00018ec0 	.word	0x00018ec0

00008afc <memset>:
    8afc:	e3100003 	tst	r0, #3
    8b00:	0a000040 	beq	8c08 <memset+0x10c>
    8b04:	e3520000 	cmp	r2, #0
    8b08:	e2422001 	sub	r2, r2, #1
    8b0c:	012fff1e 	bxeq	lr
    8b10:	e201c0ff 	and	ip, r1, #255	; 0xff
    8b14:	e1a03000 	mov	r3, r0
    8b18:	ea000002 	b	8b28 <memset+0x2c>
    8b1c:	e2422001 	sub	r2, r2, #1
    8b20:	e3720001 	cmn	r2, #1
    8b24:	012fff1e 	bxeq	lr
    8b28:	e4c3c001 	strb	ip, [r3], #1
    8b2c:	e3130003 	tst	r3, #3
    8b30:	1afffff9 	bne	8b1c <memset+0x20>
    8b34:	e3520003 	cmp	r2, #3
    8b38:	9a00002a 	bls	8be8 <memset+0xec>
    8b3c:	e92d4010 	push	{r4, lr}
    8b40:	e201e0ff 	and	lr, r1, #255	; 0xff
    8b44:	e18ee40e 	orr	lr, lr, lr, lsl #8
    8b48:	e352000f 	cmp	r2, #15
    8b4c:	e18ee80e 	orr	lr, lr, lr, lsl #16
    8b50:	9a000010 	bls	8b98 <memset+0x9c>
    8b54:	e1a04002 	mov	r4, r2
    8b58:	e283c010 	add	ip, r3, #16
    8b5c:	e2444010 	sub	r4, r4, #16
    8b60:	e354000f 	cmp	r4, #15
    8b64:	e50ce010 	str	lr, [ip, #-16]
    8b68:	e50ce00c 	str	lr, [ip, #-12]
    8b6c:	e50ce008 	str	lr, [ip, #-8]
    8b70:	e50ce004 	str	lr, [ip, #-4]
    8b74:	e28cc010 	add	ip, ip, #16
    8b78:	8afffff7 	bhi	8b5c <memset+0x60>
    8b7c:	e242c010 	sub	ip, r2, #16
    8b80:	e3ccc00f 	bic	ip, ip, #15
    8b84:	e202200f 	and	r2, r2, #15
    8b88:	e28cc010 	add	ip, ip, #16
    8b8c:	e3520003 	cmp	r2, #3
    8b90:	e083300c 	add	r3, r3, ip
    8b94:	9a00000a 	bls	8bc4 <memset+0xc8>
    8b98:	e1a04003 	mov	r4, r3
    8b9c:	e1a0c002 	mov	ip, r2
    8ba0:	e24cc004 	sub	ip, ip, #4
    8ba4:	e35c0003 	cmp	ip, #3
    8ba8:	e484e004 	str	lr, [r4], #4
    8bac:	8afffffb 	bhi	8ba0 <memset+0xa4>
    8bb0:	e242c004 	sub	ip, r2, #4
    8bb4:	e3ccc003 	bic	ip, ip, #3
    8bb8:	e28cc004 	add	ip, ip, #4
    8bbc:	e083300c 	add	r3, r3, ip
    8bc0:	e2022003 	and	r2, r2, #3
    8bc4:	e3520000 	cmp	r2, #0
    8bc8:	0a000004 	beq	8be0 <memset+0xe4>
    8bcc:	e20110ff 	and	r1, r1, #255	; 0xff
    8bd0:	e0832002 	add	r2, r3, r2
    8bd4:	e4c31001 	strb	r1, [r3], #1
    8bd8:	e1520003 	cmp	r2, r3
    8bdc:	1afffffc 	bne	8bd4 <memset+0xd8>
    8be0:	e8bd4010 	pop	{r4, lr}
    8be4:	e12fff1e 	bx	lr
    8be8:	e3520000 	cmp	r2, #0
    8bec:	012fff1e 	bxeq	lr
    8bf0:	e20110ff 	and	r1, r1, #255	; 0xff
    8bf4:	e0832002 	add	r2, r3, r2
    8bf8:	e4c31001 	strb	r1, [r3], #1
    8bfc:	e1520003 	cmp	r2, r3
    8c00:	1afffffc 	bne	8bf8 <memset+0xfc>
    8c04:	e12fff1e 	bx	lr
    8c08:	e1a03000 	mov	r3, r0
    8c0c:	eaffffc8 	b	8b34 <memset+0x38>

00008c10 <__register_exitproc>:
    8c10:	e59fc0d0 	ldr	ip, [pc, #208]	; 8ce8 <__register_exitproc+0xd8>
    8c14:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    8c18:	e59c4000 	ldr	r4, [ip]
    8c1c:	e594c148 	ldr	ip, [r4, #328]	; 0x148
    8c20:	e35c0000 	cmp	ip, #0
    8c24:	0284cf53 	addeq	ip, r4, #332	; 0x14c
    8c28:	e59ce004 	ldr	lr, [ip, #4]
    8c2c:	0584c148 	streq	ip, [r4, #328]	; 0x148
    8c30:	e35e001f 	cmp	lr, #31
    8c34:	e1a06001 	mov	r6, r1
    8c38:	e1a05000 	mov	r5, r0
    8c3c:	e1a08002 	mov	r8, r2
    8c40:	e1a07003 	mov	r7, r3
    8c44:	d28e1001 	addle	r1, lr, #1
    8c48:	da00000f 	ble	8c8c <__register_exitproc+0x7c>
    8c4c:	e59f3098 	ldr	r3, [pc, #152]	; 8cec <__register_exitproc+0xdc>
    8c50:	e3530000 	cmp	r3, #0
    8c54:	0a000021 	beq	8ce0 <__register_exitproc+0xd0>
    8c58:	e3a00e19 	mov	r0, #400	; 0x190
    8c5c:	e1a00000 	nop			; (mov r0, r0)
    8c60:	e250c000 	subs	ip, r0, #0
    8c64:	0a00001d 	beq	8ce0 <__register_exitproc+0xd0>
    8c68:	e3a00000 	mov	r0, #0
    8c6c:	e3a01001 	mov	r1, #1
    8c70:	e1a0e000 	mov	lr, r0
    8c74:	e5943148 	ldr	r3, [r4, #328]	; 0x148
    8c78:	e58c0004 	str	r0, [ip, #4]
    8c7c:	e58c3000 	str	r3, [ip]
    8c80:	e584c148 	str	ip, [r4, #328]	; 0x148
    8c84:	e58c0188 	str	r0, [ip, #392]	; 0x188
    8c88:	e58c018c 	str	r0, [ip, #396]	; 0x18c
    8c8c:	e3550000 	cmp	r5, #0
    8c90:	1a000005 	bne	8cac <__register_exitproc+0x9c>
    8c94:	e3a00000 	mov	r0, #0
    8c98:	e28ee002 	add	lr, lr, #2
    8c9c:	e58c1004 	str	r1, [ip, #4]
    8ca0:	e78c610e 	str	r6, [ip, lr, lsl #2]
    8ca4:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
    8ca8:	e12fff1e 	bx	lr
    8cac:	e3a00001 	mov	r0, #1
    8cb0:	e08c410e 	add	r4, ip, lr, lsl #2
    8cb4:	e5848088 	str	r8, [r4, #136]	; 0x88
    8cb8:	e59c3188 	ldr	r3, [ip, #392]	; 0x188
    8cbc:	e1a02e10 	lsl	r2, r0, lr
    8cc0:	e1830002 	orr	r0, r3, r2
    8cc4:	e58c0188 	str	r0, [ip, #392]	; 0x188
    8cc8:	e5847108 	str	r7, [r4, #264]	; 0x108
    8ccc:	e3550002 	cmp	r5, #2
    8cd0:	059c318c 	ldreq	r3, [ip, #396]	; 0x18c
    8cd4:	01832002 	orreq	r2, r3, r2
    8cd8:	058c218c 	streq	r2, [ip, #396]	; 0x18c
    8cdc:	eaffffec 	b	8c94 <__register_exitproc+0x84>
    8ce0:	e3e00000 	mvn	r0, #0
    8ce4:	eaffffee 	b	8ca4 <__register_exitproc+0x94>
    8ce8:	00008eac 	.word	0x00008eac
    8cec:	00000000 	.word	0x00000000

00008cf0 <__call_exitprocs>:
    8cf0:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    8cf4:	e1a06001 	mov	r6, r1
    8cf8:	e3a09001 	mov	r9, #1
    8cfc:	e3a0a000 	mov	sl, #0
    8d00:	e59f3150 	ldr	r3, [pc, #336]	; 8e58 <__call_exitprocs+0x168>
    8d04:	e5933000 	ldr	r3, [r3]
    8d08:	e24dd014 	sub	sp, sp, #20
    8d0c:	e58d3008 	str	r3, [sp, #8]
    8d10:	e2833f52 	add	r3, r3, #328	; 0x148
    8d14:	e58d0004 	str	r0, [sp, #4]
    8d18:	e58d300c 	str	r3, [sp, #12]
    8d1c:	e59d3008 	ldr	r3, [sp, #8]
    8d20:	e5937148 	ldr	r7, [r3, #328]	; 0x148
    8d24:	e3570000 	cmp	r7, #0
    8d28:	0a00003d 	beq	8e24 <__call_exitprocs+0x134>
    8d2c:	e59d800c 	ldr	r8, [sp, #12]
    8d30:	e1a0b008 	mov	fp, r8
    8d34:	e5974004 	ldr	r4, [r7, #4]
    8d38:	e2545001 	subs	r5, r4, #1
    8d3c:	52844001 	addpl	r4, r4, #1
    8d40:	50874104 	addpl	r4, r7, r4, lsl #2
    8d44:	5a000007 	bpl	8d68 <__call_exitprocs+0x78>
    8d48:	ea000026 	b	8de8 <__call_exitprocs+0xf8>
    8d4c:	e5943100 	ldr	r3, [r4, #256]	; 0x100
    8d50:	e1560003 	cmp	r6, r3
    8d54:	0a000005 	beq	8d70 <__call_exitprocs+0x80>
    8d58:	e2455001 	sub	r5, r5, #1
    8d5c:	e3750001 	cmn	r5, #1
    8d60:	e2444004 	sub	r4, r4, #4
    8d64:	0a00001f 	beq	8de8 <__call_exitprocs+0xf8>
    8d68:	e3560000 	cmp	r6, #0
    8d6c:	1afffff6 	bne	8d4c <__call_exitprocs+0x5c>
    8d70:	e5973004 	ldr	r3, [r7, #4]
    8d74:	e2433001 	sub	r3, r3, #1
    8d78:	e1530005 	cmp	r3, r5
    8d7c:	e5943000 	ldr	r3, [r4]
    8d80:	05875004 	streq	r5, [r7, #4]
    8d84:	1584a000 	strne	sl, [r4]
    8d88:	e3530000 	cmp	r3, #0
    8d8c:	0afffff1 	beq	8d58 <__call_exitprocs+0x68>
    8d90:	e5971188 	ldr	r1, [r7, #392]	; 0x188
    8d94:	e1a02519 	lsl	r2, r9, r5
    8d98:	e1120001 	tst	r2, r1
    8d9c:	e5978004 	ldr	r8, [r7, #4]
    8da0:	0a000022 	beq	8e30 <__call_exitprocs+0x140>
    8da4:	e597118c 	ldr	r1, [r7, #396]	; 0x18c
    8da8:	e1120001 	tst	r2, r1
    8dac:	1a000022 	bne	8e3c <__call_exitprocs+0x14c>
    8db0:	e5941080 	ldr	r1, [r4, #128]	; 0x80
    8db4:	e59d0004 	ldr	r0, [sp, #4]
    8db8:	e1a0e00f 	mov	lr, pc
    8dbc:	e12fff13 	bx	r3
    8dc0:	e5973004 	ldr	r3, [r7, #4]
    8dc4:	e1530008 	cmp	r3, r8
    8dc8:	1affffd3 	bne	8d1c <__call_exitprocs+0x2c>
    8dcc:	e59b3000 	ldr	r3, [fp]
    8dd0:	e1530007 	cmp	r3, r7
    8dd4:	1affffd0 	bne	8d1c <__call_exitprocs+0x2c>
    8dd8:	e2455001 	sub	r5, r5, #1
    8ddc:	e3750001 	cmn	r5, #1
    8de0:	e2444004 	sub	r4, r4, #4
    8de4:	1affffdf 	bne	8d68 <__call_exitprocs+0x78>
    8de8:	e59f306c 	ldr	r3, [pc, #108]	; 8e5c <__call_exitprocs+0x16c>
    8dec:	e3530000 	cmp	r3, #0
    8df0:	0a00000b 	beq	8e24 <__call_exitprocs+0x134>
    8df4:	e5973004 	ldr	r3, [r7, #4]
    8df8:	e3530000 	cmp	r3, #0
    8dfc:	1a000012 	bne	8e4c <__call_exitprocs+0x15c>
    8e00:	e5973000 	ldr	r3, [r7]
    8e04:	e3530000 	cmp	r3, #0
    8e08:	0a000005 	beq	8e24 <__call_exitprocs+0x134>
    8e0c:	e1a00007 	mov	r0, r7
    8e10:	e58b3000 	str	r3, [fp]
    8e14:	e1a00000 	nop			; (mov r0, r0)
    8e18:	e59b7000 	ldr	r7, [fp]
    8e1c:	e3570000 	cmp	r7, #0
    8e20:	1affffc3 	bne	8d34 <__call_exitprocs+0x44>
    8e24:	e28dd014 	add	sp, sp, #20
    8e28:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    8e2c:	e12fff1e 	bx	lr
    8e30:	e1a0e00f 	mov	lr, pc
    8e34:	e12fff13 	bx	r3
    8e38:	eaffffe0 	b	8dc0 <__call_exitprocs+0xd0>
    8e3c:	e5940080 	ldr	r0, [r4, #128]	; 0x80
    8e40:	e1a0e00f 	mov	lr, pc
    8e44:	e12fff13 	bx	r3
    8e48:	eaffffdc 	b	8dc0 <__call_exitprocs+0xd0>
    8e4c:	e1a0b007 	mov	fp, r7
    8e50:	e5977000 	ldr	r7, [r7]
    8e54:	eafffff0 	b	8e1c <__call_exitprocs+0x12c>
    8e58:	00008eac 	.word	0x00008eac
    8e5c:	00000000 	.word	0x00000000

00008e60 <_exit>:
    8e60:	eafffffe 	b	8e60 <_exit>

Disassembly of section .fini:

00008e64 <_fini>:
    8e64:	e1a0c00d 	mov	ip, sp
    8e68:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
    8e6c:	e24cb004 	sub	fp, ip, #4
    8e70:	e24bd028 	sub	sp, fp, #40	; 0x28
    8e74:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
    8e78:	e12fff1e 	bx	lr
