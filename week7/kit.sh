arm-none-eabi-as -o tst.o -g tst.s
arm-none-eabi-ld -o tst tst.o
qemu-arm -singlestep -g 1234 tst &
ps -e | grep qemu
gdb-multiarch
