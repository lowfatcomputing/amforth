; ( addr - n) Memory
; R( -- )
; read 1 cell from eeprom
VE_EFETCH:
    .dw $ff02
    .db "e@"
    .dw VE_HEAD
    .set VE_HEAD = VE_EFETCH
XT_EFETCH:
    .dw PFA_EFETCH
PFA_EFETCH:
    rcall nvm_waitfor
    sts NVM_ADDR0, tosl
    sts NVM_ADDR1, tosh
    sts NVM_ADDR2, zeroh
    ldi temp0,  NVM_CMD_READ_EEPROM_gc
    call_ nvm_command
    lds temp6, NVM_DATA0
    adiw tosl, 1

    rcall nvm_waitfor
    sts NVM_ADDR0, tosl
    sts NVM_ADDR1, tosh
    sts NVM_ADDR2, zeroh
    ldi temp0,  NVM_CMD_READ_EEPROM_gc
    call_ nvm_command
    lds temp7, NVM_DATA0
    movw tosl, temp6
    jmp_ DO_NEXT
