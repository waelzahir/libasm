global ft_list_sort
extern ft_write

ft_list_sort:
    mov r14,  rdi 
    mov r15 , rsi
    mov rsi , [rdi]
    loop: 
        mov rdi , rsi
        cmp rdi, 0
        je exit_success
        mov rsi, [rdi + 8]
        cmp rsi, 0
        je exit_success
        push rdi
        push rsi 
        mov rdi, [rdi]
        mov rsi, [rsi]
        call r15 
        pop rsi
        pop rdi 
        cmp eax, 0
        jg swap_sym
        jmp loop

swap_sym: 
    
    ;stack adress 
    mov r10, [r14]
    ; second node next pointer 
    mov r12, [rsi + 8]
    ;link first node with node2->next
    mov [rdi +8], r12
    ; node2->next = head
    mov [rsi + 8], r10
    ;move node2 to head 
    mov [r14], rsi
    jmp loop

exit_success:
    mov rax, 1
    ret

section .note.GNU-stack






