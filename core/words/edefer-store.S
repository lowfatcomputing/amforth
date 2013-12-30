; ( xt1 xt2 -- ) 
; System
; does the real defer! for eeprom defers
;VE_EDEFERSTORE:
;    .word 0xff07
;    .ascii "Edefer!"
;    .word VE_HEAD
;    .set VE_HEAD, VE_EDEFERSTORE
XT_EDEFERSTORE:
    .word DO_COLON
PFA_EDEFERSTORE:
    .word XT_1PLUS
    .word XT_FETCHI
    .word XT_STOREE
    .word XT_EXIT
