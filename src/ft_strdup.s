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
   push rdi
   call ft_strlen
   inc rax
   mov rdi, rax 
   call malloc  wrt ..plt
   cmp rax, 0
   je malloc_fail
   mov rdi , rax 
   pop rsi 
   call ft_strcpy
   pop rax 
   ret

malloc_fail:
    mov rax, 0
    ret 



section .note.GNU-stack
