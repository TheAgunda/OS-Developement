[org 0x7c00] ;Origin, tell the assembler that where the code will be in memory after it is loaded

mov [BOOT_DISK] , dl
mov bp, 0x7c00
mov sp, bp

; mov bx, TestString
; call PrintString

call READ_DISK

; mov ah, 0x0e
; mov al, [PROGRAM_SPACE]
; int 0x10

jmp PROGRAM_SPACE

%include "print.asm" ;include file
%include "DiskRead.asm";include file

times 510-($-$$) db 0   ;Fill the rest of sector with 0
dw 0xaa55  ;Add boot signature at the end of bootloader