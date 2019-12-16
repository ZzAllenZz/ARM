arm-none-eabi-as -o bubblesort.o -g bubblesort.s
arm-none-eabi-ld -o bubblesort bubblesort.o
qemu-arm -singlestep -g 1234 bubblesort &
gdb-multiarch
