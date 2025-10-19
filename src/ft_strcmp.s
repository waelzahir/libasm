; BITS 64
; section .text
global ft_strcmp

ft_strcmp:
    loop:
    mov al , [rdi]
    mov bl, [rsi]
    cmp al , bl 
    jne exit 
    cmp al , 0
    je exit
    inc rdi 
    inc rsi 
    jmp loop
    exit: 

    movzx eax, al
    movzx ecx, bl
    sub eax, ecx
    ret

section .note.GNU-stack

