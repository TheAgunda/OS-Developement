PROGRAM_SPACE equ 0x7e00


;function
READ_DISK:
    mov bx, PROGRAM_SPACE
    mov al, 4
    mov dl, [BOOT_DISK]
    mov ch, 0x00
    mov dh, 0x00
    mov cl, 0x02
    int 0x13

    jc DiskReadFailed
    ret

BOOT_DISK:
    db 0

DiskReadErrorString:
    db 'Disk read failed',0

;function
DiskReadFailed:
    mov bx,DiskReadErrorString
    call PrintString
    jmp $