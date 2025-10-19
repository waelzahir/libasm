; BITS 64
; section .text
global ft_write
extern __errno_location


ft_write:
    mov rax, 1
    syscall
    cmp rax, 0
    jl syscall_fail
    jmp syscall_success


syscall_success:
    ret

syscall_fail:
    neg rax
    mov rdi , rax
    call __errno_location  wrt ..plt
    mov  [rax], rdi 
    mov rax , -1
    ret

section .note.GNU-stack
