arm-none-eabi-as -o txt.o -g txt.s
arm-none-eabi-ld -o txt txt.o
qemu-arm -singlestep -g 1234 txt &
ps -e |grep qemu
gdb-multiarch
