; ( -- v) 
; System Value
; address of the default user area content in eeprom
VE_EEUSER:
  .word 0xff07
  .string "ee-user"
  .word VE_HEAD
  .set VE_HEAD, VE_EEUSER
XT_EEUSER:
  .word PFA_DOVARIABLE
PFA_EEUSER:          ; ( -- )
  .word EE_INITUSER

; ( e-addr r-addr len -- ) 
; Tools
; copy len cells from eeprom to ram
VE_EE2RAM:
  .word 0xff06
  .ascii "ee>ram"
  .word VE_HEAD
  .set VE_HEAD, VE_EE2RAM
XT_EE2RAM:
  .word DO_COLON
PFA_EE2RAM:          ; ( -- )
    .word XT_ZERO
    .word XT_DOQDO
    .word PFA_EE2RAM_2
PFA_EE2RAM_1:
    ; ( -- e-addr r-addr )
    .word XT_OVER
    .word XT_FETCHE
    .word XT_OVER
    .word XT_STORE
    .word XT_CELLPLUS
    .word XT_SWAP
    .word XT_CELLPLUS
    .word XT_SWAP
    .word XT_DOLOOP
    .word PFA_EE2RAM_1
PFA_EE2RAM_2:
    .word XT_2DROP
    .word XT_EXIT

; ( -- )
; Tools
; setup the default user area from eeprom
VE_INITUSER:
  .word 0xff09
  .string "init-user"
  .word VE_HEAD
  .set VE_HEAD, VE_INITUSER
XT_INITUSER:
  .word DO_COLON
PFA_INITUSER:          ; ( -- )
    .word XT_EEUSER
    .word XT_UP_FETCH
    .word XT_DOLITERAL
    .word SYSUSERSIZE
    .word XT_2SLASH
    .word XT_EE2RAM
    .word XT_EXIT
