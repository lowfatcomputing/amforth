; ( n1 n2 -- n3 ) Arithmetics
; R( -- )
; multiply routine
VE_MUL:
    .db $01, "*"
    .dw VE_HEAD
    .set VE_HEAD = VE_MUL
XT_MUL:
    .dw DO_COLON
PFA_MUL:
    .dw XT_MSTAR
    .dw XT_D2S
    .dw XT_EXIT
