; ( -- 0 ) Arithmetics
; R( -- )
; leaves the value 0 on TOS
VE_ZERO:
    .dw $ff01
    .db "0",0
    .dw VE_HEAD
    .set VE_HEAD = VE_ZERO
XT_ZERO:
    .dw PFA_DOVARIABLE
PFA_ZERO:
    .dw 0
