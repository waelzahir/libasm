global ft_list_size


ft_list_size:
    mov rax, 0
    cmp rdi, 0
        je break_loop
    mov rax, 1
    loop:
        mov rdi , [rdi +8]
        cmp rdi, 0
        je break_loop
        inc rax
        jmp loop 
    break_loop:
    ret



section .note.GNU-stack

