global ft_putnbr_base
extern ft_strlen
extern ft_write

; r12 number to be inputed

ft_putnbr_base:
    ;check string is null 
    push r12
    cmp rsi, 0
    je putnbr_base_fail;
    push rdi 
    push rsi 
    ; check string if parsable
    call check_string
    pop rsi 
    pop rdi
    cmp rax , -1
    je putnbr_base_fail
    call print_routine
    pop r12
    ret




putnbr_base_fail:
    pop r12
    mov rax, -1
    ret





; main print routine 
print_routine:
    cmp edi , 0
    jge neg_skip_jump
    neg rdi
    mov r10b, '-'
    call print_char
    neg_skip_jump:

    ;copy the divisor
    mov r12, rsp
    mov r11d, eax
    mov eax, edi
    div_loop:    
        mov ebx, r11d
        mov edx, 0
        div r11d
        push rdx
        cmp rax, 0
        je break_loop
        jmp div_loop
    break_loop:
        cmp r12, rsp 
        je print_done
        pop rdx 
        mov r10b , byte [rsi + rdx]
        call print_char        
        jmp break_loop
    print_done:

    ret 


print_char:
    push rdi 
    push rsi 
    push rax 
    sub rsp ,2
    mov  byte [rsp], r10b
    mov rdi, 1
    mov rsi , rsp 
    mov rdx, 1
    call ft_write 
    add rsp, 2
    pop rax 
    pop rsi 
    pop rdi
    ret





; main parse routine 
check_string: 
   mov rdi , rsi 
   push rdi 
   call ft_strlen
   pop rdi
   cmp rax, 2 
   jl  check_str_fail
   sub rsp, 256
   mov rsi, 0
   stack_zero:
        cmp rsi , 256
        je break_zero_loop
        mov byte [rsp + rsi], 0
        inc rsi
        jmp stack_zero
break_zero_loop:


    check_string_loop:
        movzx  r10, byte [rdi]
        cmp r10 , 0
        je check_string_loop_escape
        cmp r10, '-'
        je check_str_fail_stack_adjusted
        cmp r10, '+'
        je check_str_fail_stack_adjusted
        cmp byte [rsp + r10], 1
        je check_str_fail_stack_adjusted
        mov byte [rsp + r10], 1
        inc rdi
        jmp check_string_loop
    check_string_loop_escape:
    add rsp , 256
    ret


check_str_fail_stack_adjusted:
    add rsp , 256
    mov rax, -1
    ret

check_str_fail:
    mov rax, -1
    ret



section .note.GNU-stack
; compliant with conventions