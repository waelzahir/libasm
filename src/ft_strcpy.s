global ft_strcpy

ft_strcpy:
    push rdi
    push rsi
    loop:
        mov al , [rsi]
        mov [rdi], al
        cmp al, 0
        je  exit 
        inc rsi 
        inc rdi 
        jmp loop
exit:
    pop rsi 
    pop rdi
    mov rax , rdi
    ret

section .note.GNU-stack
; compliant with conventions