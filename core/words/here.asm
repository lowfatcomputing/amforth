; ( -- addr ) System Pointer
; R( -- )
; 
VE_HERE:
    .db $04, "here",0
    .dw VE_HEAD
    .set VE_HEAD = VE_HERE
XT_HERE:
    .dw PFA_DOVALUE
PFA_HERE:
    .dw 0
    .dw XT_EDEFERFETCH
    .dw XT_EDEFERSTORE
