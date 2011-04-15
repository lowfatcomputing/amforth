; ( n e-addr -- ) 
; Memory
; write to eeprom address using nvm (atxmega)
VE_STOREENVM:
    .dw $ff02
    .db "!e"
    .dw VE_HEAD
    .set VE_HEAD = VE_STOREENVM
XT_STOREE:
    .dw PFA_STOREENVM
PFA_STOREENVM:
    rcall nvm_waitfor
    lds temp0, NVM_STATUS
    sbrs temp0, NVM_EELOAD_bp
    rjmp PFA_STOREENVM1
      ldi temp0, NVM_CMD_ERASE_EEPROM_BUFFER_gc
      call_ nvm_command
PFA_STOREENVM1:
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
