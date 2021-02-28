%.o: %.s
	nasm -f elf64 $< -l $*.lst

hello32: hello32.o
	ld -o $@ $<
	./$@
	
clean:
	rm hello32 hello32.o hello32.lst
