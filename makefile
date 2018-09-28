#MY Make file sctipt for my main.c and asm_main.asm 



main: main.c asm_main.o
	gcc -m32 asm_main.o main.c -o main


asm_main.o: asm_main.asm
	nasm -f elf32 asm_main.asm -o asm_main.o

run:
	./main


edit:
	vim main.c

asm:
	vim asm_main.asm

debug:
	gdb ./main

clean:
	rm *.o main







