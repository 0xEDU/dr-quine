;a
section .rodata
fmt db ";a%csection .rodata%cfmt db %c%s%c,0%csection .text%cglobal main%cextern printf%cextern exit%c_f:%cpush rbp%cmov rbp,rsp%csub rsp,8%clea rdi,[rel fmt]%cmov rsi,10%cmov rdx,10%clea r8,[rel fmt]%cmov r9,34%cmov ecx,32%cpush_loop:%cpush 10%cdec ecx%cjnz push_loop%cxor eax,eax%cmov rcx,34%ccall printf WRT ..plt%cadd rsp,256%cadd rsp,8%cpop rbp%cret%cmain:%csub rsp,8%ccall _f;b%cmov rdi,0%ccall exit WRT ..plt%cadd rsp,8%c",0
section .text
global main
extern printf
extern exit
_f:
push rbp
mov rbp,rsp
sub rsp,8
lea rdi,[rel fmt]
mov rsi,10
mov rdx,10
lea r8,[rel fmt]
mov r9,34
mov ecx,32
push_loop:
push 10
dec ecx
jnz push_loop
xor eax,eax
mov rcx,34
call printf WRT ..plt
add rsp,256
add rsp,8
pop rbp
ret
main:
sub rsp,8
call _f;b
mov rdi,0
call exit WRT ..plt
add rsp,8
