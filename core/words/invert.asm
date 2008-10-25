; ( n1 -- n2) Arithmetics
; R( -- )
; 1-complement of TOS
VE_INVERT:
    .dw $ff06
    .db "invert"
    .dw VE_HEAD
    .set VE_HEAD = VE_INVERT
XT_INVERT:
    .dw PFA_INVERT
PFA_INVERT:
    com tosl
    com tosh
    rjmp DO_NEXT
