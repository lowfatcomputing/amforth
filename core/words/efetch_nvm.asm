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
    ldi temp1,  $D8
    ldi temp2,  $01
    sts NVM_CMD, temp0
    out $34, temp1
    sts NVM_CTRLA, temp2
    lds temp6, NVM_DATA0
    adiw tosl, 1

    rcall nvm_waitfor
    sts NVM_ADDR0, tosl
    sts NVM_ADDR1, tosh
    sts NVM_ADDR2, zeroh
    ldi temp0,  NVM_CMD_READ_EEPROM_gc
    ldi temp1,  $D8
    ldi temp2,  $01
    sts NVM_CMD, temp0
    out $34, temp1
    sts NVM_CTRLA, temp2
    lds temp7, NVM_DATA0
    movw tosl, temp6
    jmp_ DO_NEXT

nvm_waitfor:
    lds temp0, NVM_STATUS
    sbrc temp0, 7
    rjmp nvm_waitfor
    ret
