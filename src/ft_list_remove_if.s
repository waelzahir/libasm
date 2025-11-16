global ft_list_remove_if 


ft_list_remove_if:
  ;rdi ** of the head
  ; rsi value to pass to 





  mov r11 , rdi
  mov r12, rdi ; hook
  mov r13, [r12] ; node
  mov rax ,r13
  Label0:
   
    mov r10, rdx ; function to call
    mov rdi, [r13] ; data pointer
    call call_func
    cmp rax , 0
    je Label_del  ; node to be deleted 
    
    mov r12, r13 ; new hook in r12
    Label_con:
    mov r13, [r12 + 8] ; new node in r13
    cmp r13, 0; check if node is 0 to exit 
    je Label_exit
    jmp Label0


Label_del:
  mov r10 , rcx 
  call call_func
  mov r10 ,[r13 +8]
  cmp r11 , r12
  je label_head
  jmp Label_con

    



  label_head:  
  mov [r11], r10
  mov rdi, r11
  jmp ft_list_remove_if



Label_exit:
  
  mov rax, r11
  ret 






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
