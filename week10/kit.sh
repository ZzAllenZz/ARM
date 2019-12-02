arm-none-eabi-as -o gaussian_elimination.o -g gaussian_elimination.s
arm-none-eabi-ld -o gaussian_elimination gaussian_elimination.o
qemu-arm -singlestep -g 1234 gaussian_elimination &
ps -e | grep qemu
gdb-multiarch
