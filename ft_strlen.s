BITS 64
section .text
global ft_strlen

ft_strlen:
    mov r8 ,rdi
    start_loop:
        cmp byte [r8], 0
        je exit_loop
        inc r8
        jne start_loop
    exit_loop:
    mov rax, r8 
    sub rax, rdi
    ret