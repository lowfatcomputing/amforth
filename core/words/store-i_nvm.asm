; ( n f-addr -- ) 
; Memory
; writes n to flash at f-addr using NVM (ATXmega)
VE_DO_STOREI_NVM:
    .dw $ff07
    .db "(!i-nvm)",0
    .dw VE_HEAD
    .set VE_HEAD = VE_DO_STOREI_NVM
XT_DO_STOREI:
    .dw DO_COLON
PFA_DO_STOREI_NVM:
    .dw XT_DROP
    .dw XT_DROP
    .dw XT_EXIT

