global ft_putnbr_base
extern ft_strlen
extern ft_write

; r12 number to be inputed

ft_putnbr_base:
    cmp rsi, 0
    je exit_fail;
    push rdi
    push rsi 
    mov rdi ,rsi
    call ft_strlen
    pop rsi 
    pop rdi
    cmp rax, 2
    jl exit_fail
    mov r10, rsi 
    loop:
        cmp byte[r10], '-'
        je exit_fail
        cmp byte[r10], '+'
        je exit_fail
        inc r10
        cmp byte[r10], 0
        je check_success
        jmp loop
check_success:
    cmp edi , 0
    jge check_duplicates
    neg edi



print_negative:
    push rax
    push rdi
    push rsi
    sub rsp, 1
    mov byte[rsp], '-'
    mov rdi , 1
    mov rsi, rsp
    mov rdx, 1
    call ft_write;
    add rsp, 1
    pop rsi 
    pop rdi
    mov r10, rax
    pop rax
    cmp r10 , 0
    jl exit_fail
  

check_duplicates:
   
    sub rsp, 256
    mov r11, 0
    zero:
        mov r10b, byte [rsi +r11]
        mov byte [rsp + r10], 0
        inc r11
        cmp byte [rsi, + r10], 0
        je check_body
        jmp zero
check_body:
    
    mov r11, 0
    check_loop:
        mov r10b, byte [rsi +r11]
        cmp r10b, 0
        je no_duplicates
        cmp byte [rsp , r10], 0
        jne check_fail
        mov byte [rsp +r10], 1
        inc r11
        jmp check_loop

no_duplicates:
    
    ;recover stack to its original position
    add rsp, 256
    
    ; copy stackPointer
    mov r11 , rsp 
    mov r10d, eax 
    ; ; r10d hold string lengh
    ; ; rdi hold the integer
    ; ; rsi hold the string 
        mov eax, edi
    modulo_loop:
        cdq
        idiv r10d 
        push rdx
        cmp  eax , 0
        pop rdx
    mov rax, 222222
    ret 
    ;     je print_pop;
    ;     jmp modulo_loop
    ; mov r10 , rsi
    ; print_pop:
    ; mov rax , rsi
    ; ret 
    ; ;     cmp rsp , r11
    ; ;     je  func_success
    ; ;     mov rdi , 1
    ; ;     mov r12b, [rsp];
    ; ;     add r12, r10
    ; ;     mov rsi , r12 
    ; ;     mov rdx , 1
    ; ;     call ft_write
    ; ;     pop rdx
    ; ;     jmp print_pop
    ; ; ; mov eax ,r10d

func_success
    ret







check_fail:
    add rsp, 256
    jmp exit_fail

    



exit_fail:
    mov rax, -1
    ret

  


  section .note.GNU-stack
