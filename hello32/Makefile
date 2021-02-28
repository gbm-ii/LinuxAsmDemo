%.o: %.s
	nasm -f elf32 $< -l $*.lst

hello32: hello32.o
	ld -m elf_i386 -o $@ $<
	./$@
	
clean:
	rm hello32 hello32.o hello32.lst
