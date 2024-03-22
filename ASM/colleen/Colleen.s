;a
section .rodata:
fmt:db ";a%csection .rodata:%cfmt:db %c%s%c,0%csection .text:%cglobal _start%cextern printf%cextern exit%c_f:%clea rdi,[rel fmt]%cmov rsi,10%cmov rdx,10%clea r8,[rel fmt]%cmov r9,34%cmov ecx,22%cpush_loop:%cpush 10%cdec ecx%cjnz push_loop%cmov rcx,34%cmov rax,0%ccall printf%ccall exit%c_start:%ccall _f;b%c",0
section .text:
global _start
extern printf
extern exit
_f:
lea rdi,[rel fmt]
mov rsi,10
mov rdx,10
lea r8,[rel fmt]
mov r9,34
mov ecx,22
push_loop:
push 10
dec ecx
jnz push_loop
mov rcx,34
mov rax,0
call printf
call exit
_start:
call _f;b
