%.o: %.s
	nasm -f elf64 $< -l $*.lst

hello64: hello64.o
	ld -o $@ $<
	./$@
	
clean:
	rm hello64 hello64.o hello64.lst
	