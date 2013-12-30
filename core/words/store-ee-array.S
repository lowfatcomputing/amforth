; ( recn .. rec0 n ee-addr -- ) 
; Tools
; Write a list to EEPROM
VE_STORE_EE_ARRAY:
    .word 0xff04
    .ascii "!e[]"
    .word VE_HEAD
    .set VE_HEAD, VE_STORE_EE_ARRAY
XT_STORE_EE_ARRAY:
    .word DO_COLON
PFA_STORE_EE_ARRAY:
    .word XT_2DUP
    .word XT_STOREE ; ( -- i_n .. i_0 n e-addr )
    .word XT_SWAP    
    .word XT_ZERO
    .word XT_DOQDO
    .word PFA_STORE_EE_ARRAY2
PFA_STORE_EE_ARRAY1:
    .word XT_CELLPLUS ; ( -- i_x e-addr )
    .word XT_SWAP
    .word XT_OVER      ; ( -- e-addr i_x e-addr
    .word XT_STOREE
    .word XT_DOLOOP
    .word PFA_STORE_EE_ARRAY1
PFA_STORE_EE_ARRAY2:
    .word XT_DROP
    .word XT_EXIT

