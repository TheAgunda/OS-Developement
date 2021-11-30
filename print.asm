;function
PrintString:
    push ax
    push bx
    mov ah, 0x0e ;magic value
    .for:
    cmp [bx], byte 0
    je .exit   ;Jump if cmp is equal
        mov al, [bx]
        int 0x10
        inc bx   ;The INC instruction is used for incrementing an operand by one. It works on a single operand that can be either in a register or in memory.
        jmp .for
    .exit:
    pop ax
    pop bx
    ret

;label string 
TestString:
    db 'Welcome to Agunda OS....', 0    ;Operating System