global ft_list_push_front
extern malloc





ft_list_push_front:
    ; rdi list place in the stack 
    ; rsi
    push rdi 
    push rsi 
    mov rdi, 16
    call malloc  wrt ..plt
    pop rsi 
    pop rdi 
    cmp rax, 0
    je malloc_fail

    ; stack adress in r10 
    mov r10 , [rdi]
    ; head node pointer 
    mov r11, [r10]

    mov [rax], rsi 
    mov  [rax +8], r10
    mov [rdi], rax
    ret 



malloc_fail:
    mov rax , -1
    ret



section .note.GNU-stack
