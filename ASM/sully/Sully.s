section .rodata
	s db "Sully_%d.s", 0
	w db "w", 0
	c db "SULLY=Sully_%d; nasm -felf64 $SULLY.s -o $SULLY.o; gcc $SULLY.o -o $SULLY; ./$SULLY", 0
	e db "echo oi"
	i dq 5

section .text
global main
extern snprintf
extern printf
extern exit
extern fopen
extern fclose
extern fprintf
extern system
main:
cmp byte [rel i], 0
je .end


movzx rbx, byte [rel i]

sub rsp, 24

lea rdi, [rsp]
mov rsi, 16
lea rdx, [rel s]
mov rcx, [rel i]
dec rcx

call snprintf wrt ..plt

lea rdi, [rsp]
lea rsi, [rel w]
call fopen wrt ..plt

mov rdi, rax
lea rsi, [rel c]
mov rdx, [rel i]
dec rdx
call fprintf wrt ..plt

lea rdi, [rel e]
call system wrt ..plt

add rsp, 24
jmp .end

.end:
mov rdi, 0
call exit wrt ..plt

