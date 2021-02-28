; assemble: nasm -f elf64 hello64.s
; link: ld -o hello64 hello64.o

		section .rodata
hello:		db	'Hello, 64-bit world!',10 ; LF at the end
hello_len:	equ	$-hello 	; const def – length of string

		section .text
		global	_start 		; entry point for linker
_start:
		mov	edi, 1 		; stdout handle
		lea	rsi, [hello] 	; string address	
		mov	edx, hello_len 	; length
		mov	eax, 1 		; sys_write function id.
		syscall 		; OS service
	
		xor	edi, edi 	; exit code = 0
		mov	eax, 60		; sys_exit function id.
		syscall 		; OS service
	