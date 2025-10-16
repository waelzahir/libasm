BITS 64
section .text
global ft_strcmp
; to do need fixing 

ft_strcmp:
    mov r10, 0
    loop:
        mov r10b,  byte [rdi]
        sub r10b, byte [rsi]
        cmp r10b,  0
        jne exit 
        inc rsi
        inc rdi
        jmp loop
    exit:
    mov rax , r10
    ret

