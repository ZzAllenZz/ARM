arm-none-eabi-as -o ttt.o -g ttt.s
arm-none-eabi-ld -o ttt ttt.o
qemu-arm -singlestep -g 1234 ttt &
ps -e |grep qemu
gdb-multiarch
