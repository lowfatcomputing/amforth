; ( xt i -- )  Interrupt
; R( -- )
; stores XT as interrupt vector i
VE_INTSTORE:
    .db $04, "int!",0
    .dw VE_HEAD
    .set VE_HEAD = VE_INTSTORE
XT_INTSTORE:
    .dw DO_COLON
PFA_INTSTORE:
    .dw XT_2STAR
    .dw XT_DOLITERAL
    .dw intvec
    .dw XT_PLUS
    .dw XT_STORE
    .dw XT_EXIT
