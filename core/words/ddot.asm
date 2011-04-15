; ( d1 -- ) 
; Numeric IO
; double cell output
VE_DDOT:
    .dw $ff02
    .db "d."
    .dw VE_HEAD
    .set VE_HEAD = VE_DDOT
XT_DDOT:
    .dw DO_COLON
PFA_DDOT:
    .dw XT_ZERO
    .dw XT_DDOTR
    .dw XT_SPACE
    .dw XT_EXIT
; : d.        ( d -- )    0 d.r space ;
