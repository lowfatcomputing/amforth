; ( n f-addr -- ) 
; Memory
; writes n to flash at f-addr using NVM (ATXmega)
VE_DO_STOREI_NVM:
    .word 0xff08
    .ascii "(!i-nvm)"
    .word VE_HEAD
    .set VE_HEAD, VE_DO_STOREI_NVM
XT_DO_STOREI:
    .word DO_COLON
PFA_DO_STOREI_NVM:
    .word XT_DOLITERAL
    .word -20
    .word XT_THROW

