BITS 64
section .text
global ft_strcpy

ft_strcpy:
    push rdi
    loop:
    mov al , [rsi]
    mov [rdi], al
    cmp al, 0
    je  exit 
    inc rsi 
    inc rdi 
    jmp loop
    exit:
    pop rax 
    ret
