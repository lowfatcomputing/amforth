; ( n1 -- n2 ) Logic
; R( -- )
; 2-complement
VE_NEGATE:
    .db $06, "negate",0
    .dw VE_HEAD
    .set VE_HEAD = VE_NEGATE
XT_NEGATE:
    .dw DO_COLON
PFA_NEGATE:
    .dw XT_INVERT
    .dw XT_1PLUS
    .dw XT_EXIT
