global ft_strdup
extern ft_strlen
extern ft_strcpy
extern malloc



ft_strdup:
    cmp rdi, 0
    jne continue
    mov rax, 0
    ret

continue:
   push rdi 
   call ft_strlen
   mov rdi, rax
   add rdi, 1
   call malloc wrt ..plt
   cmp rax, 0
   je malloc_fail
   mov rdi, rax
   pop rsi
   call ft_strcpy
   ret

malloc_fail:
    pop rsi
    mov rax, 0
    ret 



section .note.GNU-stack


; compliant with conventions