global ft_putnbr_base
extern ft_strlen

; r12 number to be inputed

ft_putnbr_base:
;    check if string is null
    cmp rsi , 0
    je quit

; ; check if lenght is more than one, require switching rsi with rdi 
; ; they will be reverser for sanity pupoose and reciver when done
    push rdi 
    mov rdi, rsi
    call ft_strlen
    pop rdi
    cmp rax, 1
        jbe quit

; ; allocate 256 bytes in the stack and zero them

    sub rsp , 256
    mov r10, rsp 
    mov r11, 32
    zero:
        mov qword [r10], 0
        add r10 , 8
        dec r11
        jnz zero


; check if duplicate exists

    mov r10, rsp ; baseof map
    mov r11 , 0 ; r10 index
    ; rsi string
    check:
        movzx r13, byte [rsi + r11]
        cmp r13, 0
        je continue
        cmp r13, '-'
        je check_fail
        cmp r13, '+'
        je check_fail
        cmp  byte [r10 + r13], 1
        je check_fail
        mov  byte [r10 + r13], 1
        inc r11
        jmp check

    continue:
    add rsp, 256
    mov rcx, rax
    inc rcx
    sub rsp, rcx
    mov r10, rax ;  lenght
    mov rax, rdi 
    mov r12, rsi
    mov r13 , rax

    loop_div;
    div 

    ret

check_fail:
    add rsp, 256
    mov rax, -1
    ret

quit:
    mov rax, -1
    ret




