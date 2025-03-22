section .rodata
	f db "%d", 0xA, 0
	s db "Sully_%d.s", 0
	c db "SULLY=Sully_%d; nasm -felf64 $SULLY.s -o $SULLY.o; gcc $SULLY.o -o $SULLY; ./$SULLY", 0
	i dq 5

section .text
global main
extern snprintf
extern printf
extern exit
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

sub rsp, 96

lea rdi, [rsp]
mov rsi, 96
lea rdx, [rel c]
mov rcx, [rel i]
mov r8, [rel i]
mov r9, [rel i]
dec rcx
push rcx



mov rdi, rsp
call printf wrt ..plt
add rsp, 24
jmp .end

.end:
mov rdi, 0
call exit wrt ..plt

