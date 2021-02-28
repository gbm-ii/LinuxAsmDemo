; assemble:	nasm -f elf32 hello32.s 
; link:		ld -m elf_i386 -o hello32 hello32.o

	section .rodata
hello: 		db 'Hello, 32-bit world!', 10	; LF at the end
hello_len:	equ $-hello	; constant def. – string length

	section .text
	global _start	; entry point – info for linker
_start:
	mov ebx, 1		; stdout file handle
	mov ecx, hello		; string address
	mov edx, hello_len	; string length
	mov eax, 4		; sys_write function id
	int 0x80		; system call

	xor ebx, ebx		; exit code = 0
	mov eax, 1		; sys_exit function id
	int 0x80		; system call
	