; ( i -- xt ) Interrupt
; R( -- )
; fetches XT from interrupt vector i
VE_INTFETCH:
    .db $04, "int@",0
    .dw VE_HEAD
    .set VE_HEAD = VE_INTFETCH
XT_INTFETCH:
    .dw DO_COLON
PFA_INTFETCH:
    .dw XT_2STAR
    .dw XT_DOLITERAL
    .dw intvec
    .dw XT_PLUS
    .dw XT_FETCH
    .dw XT_EXIT
