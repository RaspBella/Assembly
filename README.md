# Assembly
### Assemble the source; creating file.o
- nasm -f elf64 file.asm -o file.o
### Link the object; creating an executable
- ld file.o -o file
### Run the executable file
- ./file
