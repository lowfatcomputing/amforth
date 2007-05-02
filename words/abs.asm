; ( n1 -- u1 ) Arithmetics
; R( -- )
; get the absolute value
VE_ABS:
    .db $03, "abs"
    .dw VE_HEAD
    .set VE_HEAD = VE_ABS
XT_ABS:
    .dw DO_COLON
PFA_ABS:
    .dw XT_DUP
    .dw XT_LESSZERO
    .dw XT_DOCONDBRANCH
    .dw PFA_ABS1
    .dw XT_NEGATE
PFA_ABS1:
    .dw XT_EXIT
