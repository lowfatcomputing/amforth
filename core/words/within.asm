; ( n min max -- f) Arithmetics
; R( -- )
; check interval 
VE_WITHIN:
    .dw $ff06
    .db "within"
    .dw VE_HEAD
    .set VE_HEAD = VE_WITHIN
XT_WITHIN:
    .dw DO_COLON
PFA_WITHIN:
    .dw XT_OVER
    .dw XT_MINUS
    .dw XT_TO_R
    .dw XT_MINUS
    .dw XT_R_FROM
    .dw XT_ULESS
    .dw XT_EXIT

; : WITHIN ( n min max -- Truth )  OVER - >R - R> U< ;