BITS 64
section .text
global ft_strlen

ft_strlen:
    push rdi 
    loop:
    cmp byte [rdi], 0
    je exit
    inc rdi
    jmp loop
    exit: 
    pop rsi 
    mov rax , rdi 
    sub rax , rsi 
    ret
     