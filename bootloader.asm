[org 0x7c00] ;Origin, tell the assembler that where the code will be in memory after it is loaded
mov bp, 0x7c00
mov sp, bp

mov bx, TestString
call PrintString



jmp $

;function
PrintString:
    mov ah, 0x0e ;magic value
    .for:
    cmp [bx], byte 0
    je .exit
        mov al, [bx]
        int 0x10
        inc bx  
        jmp .for
    .exit:
    ret

;label string 
TestString:
    db 'Welcome to Agunda OS....', 0    ;Operating System

times 510-($-$$) db 0   ;Fill the rest of sector with 0
dw 0xaa55  ;Add boot signature at the end of bootloader