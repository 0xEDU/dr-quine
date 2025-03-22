section .rodata
	hello db "Hello, World!", 0xA, 0

section .text
global main
extern printf
extern exit

main:
	sub rsp, 8
	lea rdi, [rel hello]
	call printf wrt ..plt
	mov rdi, 0
	call exit wrt ..plt
	ret
