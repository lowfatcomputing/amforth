; ( -- faddr ) System Value
; R( -- )
; address of the next free dictionary cell
VE_HERE:
    .db $04, "here",0
    .dw VE_HEAD
    .set VE_HEAD = VE_HERE
XT_HERE:
    .dw PFA_DOVALUE
PFA_HERE:
    .dw 2
