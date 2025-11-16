global ft_list_remove_if 


ft_list_remove_if:
  ;rdi ** of the head
  ; rsi value to pass to 
 
  mov r11 , rdi
  mov r12, rdi
  mov r13, [r12]
  mov rax ,r13
  Label0:
   
    mov r10, rdx
    mov rdi, [r13]
    call call_func
   

    cmp rax , 0
    je Label_del  
    Label_con:
    mov r12, r13
    mov r13, [r13 + 8]
    cmp r13, 0
    je Label_exit
    
    
    jmp Label0





Label_exit:
  mov rax, -1
  ret 




Label_del:
  mov r10, rcx
  call call_func
  
  
  mov r10 ,[r13 + 8]
  mov [r12 + 8], r10
  cmp r11, r12 
  jne Label_skip
  mov r13, r12
  jmp Label_con
  Label_skip:
  mov rax , r11
  ret
  jmp Label_con
  
call_func:
  push r11 
  push rdi
  push rsi 
  push rdx
  push rcx

  call r10
  pop rcx 
  pop rdx 
  pop rsi 
  pop rdi 
  pop r11
  ret










Label2:
  ret 
