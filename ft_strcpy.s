BITS 64
section .text
global ft_strcpy

ft_strcpy:
    mov rax, rdi
    mov r10, 0
    start_loop:
        mov r10b, [rsi]
        mov [rdi], r10b
        cmp r10b, 0
        je exit_loop
        inc rdi 
        inc rsi
        jmp start_loop
    exit_loop:
    ret

