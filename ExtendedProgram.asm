[org 0x7e00]

mov bx, ExtendedSpaceSuccess
call PrintString ;function call

jmp $

%include "print.asm"


ExtendedSpaceSuccess:
    db "We are inside ExtendedSpace",0

times 2048-($-$$) db 0  