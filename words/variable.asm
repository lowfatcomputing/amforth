;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; 
VE_VARIABLE:
    .db $88, "variable",0
    .dw VE_HEAD
    .set VE_HEAD = VE_VARIABLE
XT_VARIABLE:
    .dw DO_COLON
PFA_VARIABLE:
; to be filled
    ; read heap variable as the address of the next available variable position,
    ; increment heap accordingly
    .dw XT_EXIT

