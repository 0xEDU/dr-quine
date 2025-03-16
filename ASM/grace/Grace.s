section .rodata
filename db "Grace_kid.s", 0
mode db "w", 0
fmt db "section .rodata%cfilename db %cGrace_kid.s%c, 0%cmode db %cw%c, 0%cfmt db %c%s%c, 0%csection .text%cglobal _start%cextern fprintf%cextern fopen%cextern exit%c%%macro A 0%c_start:%cB%c%%endmacro%c%%macro B 0%cpush rbp%cmov rbp,rsp%csub rsp,8%clea rdi,[rel filename]%clea rsi,[rel mode]%ccall fopen wrt ..plt%cmov rdi,rax%clea rsi,[rel fmt]%cmov rdx,10%cmov r8,34%cmov r9,10%cmov ecx,C%cpush_loop:%cpush 10%cdec ecx%cjnz push_loop%cmov rcx,34%cpush 34%clea rax,[rel fmt]%cpush rax%cpush 34%cpush 10%cpush 34%cpush 34%cxor rax,rax%ccall fprintf wrt ..plt%cmov rdi,0%cmov rsi,rax%ccall exit wrt ..plt%cpop rbp%c%%endmacro%c%%define C 47%cA%c;%c; a%c;%c", 0
section .text
global _start
extern fprintf
extern fopen
extern exit
%macro A 0
_start:
B
%endmacro
%macro B 0
push rbp
mov rbp,rsp
sub rsp,8
lea rdi,[rel filename]
lea rsi,[rel mode]
call fopen wrt ..plt
mov rdi,rax
lea rsi,[rel fmt]
mov rdx,10
mov r8,34
mov r9,10
mov ecx,C
push_loop:
push 10
dec ecx
jnz push_loop
mov rcx,34
push 34
lea rax,[rel fmt]
push rax
push 34
push 10
push 34
push 34
xor rax,rax
call fprintf wrt ..plt
mov rdi,0
mov rsi,rax
call exit wrt ..plt
pop rbp
%endmacro
%define C 47
A
;
; a
;
