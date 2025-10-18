BITS 64
section .text
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
    call ft_strlen
    inc rax
    push rdi 
    mov rdi, rax
    call malloc
    cmp rax ,0
    je malloc_fail
    mov rdi , rax
    pop rsi 
    call ft_strcpy
    ret
malloc_fail:
    mov rax, 0
    ret 
