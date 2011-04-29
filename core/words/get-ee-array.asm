; ( ee-addr -- itemn .. item0 n) 
; Tools
; Get an array of cells from EEPROM
VE_GET_EE_ARRAY:
    .dw $ff0b
    .db "get-e-array",0
    .dw VE_HEAD
    .set VE_HEAD = VE_GET_EE_ARRAY
XT_GET_EE_ARRAY:
    .dw DO_COLON
PFA_GET_EE_ARRAY:
    .dw XT_DUP
    .dw XT_FETCHE
    .dw XT_TO_R    ; save the counter to r-stack
    .dw XT_R_FETCH
    .dw XT_ZERO
    .dw XT_DOQDO
    .dw PFA_GET_EE_ARRAY2
PFA_GET_EE_ARRAY1:
    ; ( ee-addr )
    .dw XT_CELLPLUS
    .dw XT_DUP
    .dw XT_FETCHE
    .dw XT_SWAP
    .dw XT_DOLOOP
    .dw PFA_GET_EE_ARRAY1
PFA_GET_EE_ARRAY2:
    .dw XT_DROP
    .dw XT_R_FROM ; get the counter from r-stack
    .dw XT_EXIT
