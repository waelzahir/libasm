BITS 64
section .text
global ft_strlen

ft_strlen:
    mov rsi ,rdi
    start_loop:
        cmp byte [rsi], 0
        je exit_loop
        inc rsi
        jne start_loop
    exit_loop:
    mov rax, rsi 
    sub rax, rdi
    ret