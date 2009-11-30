; ( n addr -- ) Memory
; R( -- )
; write to eeprom address
VE_ESTORE:
    .dw $ff02
    .db "e!"
    .dw VE_HEAD
    .set VE_HEAD = VE_ESTORE
XT_ESTORE:
    .dw PFA_ESTORE
PFA_ESTORE:
    rcall nvm_waitfor
    lds temp0, NVM_STATUS
    sbrs temp0, NVM_EELOAD_bp
    rjmp PFA_ESTORE1
      ldi temp0, NVM_CMD_ERASE_EEPROM_BUFFER_gc
      call_ nvm_command
PFA_ESTORE1:
    movw zl, tosl
    loadtos
    ldi temp0, NVM_CMD_LOAD_EEPROM_BUFFER_gc
    sts NVM_CMD, temp0
    sts NVM_ADDR0, zl
    sts NVM_ADDR1, zh
    sts NVM_ADDR2, zeroh
    sts NVM_DATA0, tosl
    ldi temp0, NVM_CMD_ERASE_WRITE_EEPROM_PAGE_gc
    call_ nvm_command
    rcall nvm_waitfor

    adiw zl, 1
    
    ldi temp0, NVM_CMD_LOAD_EEPROM_BUFFER_gc
    sts NVM_CMD, temp0
    sts NVM_ADDR0, zl
    sts NVM_ADDR1, zh
    sts NVM_ADDR2, zeroh
    sts NVM_DATA0, tosh
    ldi temp0, NVM_CMD_ERASE_WRITE_EEPROM_PAGE_gc
    call_ nvm_command

    loadtos
    jmp_ DO_NEXT
