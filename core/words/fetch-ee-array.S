; ( ee-addr -- itemn .. item0 n) 
; Tools
; Get an array from EEPROM
VE_FETCH_EE_ARRAY:
    .word 0xff04
    .ascii "@e[]"
    .word VE_HEAD
    .set VE_HEAD, VE_FETCH_EE_ARRAY
XT_FETCH_EE_ARRAY:
    .word DO_COLON
PFA_FETCH_EE_ARRAY:
    .word XT_DUP
    .word XT_FETCHE
    .word XT_TO_R    ; save the counter to r-stack
    .word XT_R_FETCH
    .word XT_ZERO
    .word XT_SWAP    ; go from bigger to smaller addresses
    .word XT_DOQDO
    .word PFA_FETCH_EE_ARRAY2
PFA_FETCH_EE_ARRAY1:
    ; ( ee-addr )
    .word XT_I
    .word XT_CELLS ; ( -- ee-addr i*2 )
    .word XT_OVER  ; ( -- ee-addr i*2 ee-addr )
    .word XT_PLUS  ; ( -- ee-addr ee-addr+i
    .word XT_FETCHE ;( -- ee-addr item_i )
    .word XT_SWAP   ;( -- item_i ee-addr )
    .word XT_TRUE  ; shortcut for -1
    .word XT_DOPLUSLOOP
    .word PFA_FETCH_EE_ARRAY1
PFA_FETCH_EE_ARRAY2:
    .word XT_2DROP
    .word XT_R_FROM ; get the counter from r-stack
    .word XT_EXIT

