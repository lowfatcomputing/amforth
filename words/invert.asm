; ( n1 -- n2) Arithmetics
; R( -- )
; 1-complement of TOS
VE_INVERT:
    .db $06, "invert",0
    .dw VE_HEAD
    .set VE_HEAD = VE_INVERT
XT_INVERT:
    .dw PFA_INVERT
PFA_INVERT:
    com tosl
    com tosh
    rjmp DO_NEXT
