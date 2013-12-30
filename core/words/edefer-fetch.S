; ( xt1 -- xt2 ) 
; System
; does the real defer@ for eeprom defers
;VE_EDEFERFETCH:
;    .word 0xff07
;    .ascii "Edefer@"
;    .word VE_HEAD
;    .set VE_HEAD, VE_EDEFERFETCH
XT_EDEFERFETCH:
    .word DO_COLON
PFA_EDEFERFETCH:
    .word XT_1PLUS ; >body
    .word XT_FETCHI
    .word XT_FETCHE
    .word XT_EXIT
