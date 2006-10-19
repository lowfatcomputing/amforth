; ( n -- )
VE_SIGN:
    .db $04, "sign",0
    .dw VE_HEAD
    .set VE_HEAD = VE_SIGN
XT_SIGN:
    .dw DO_COLON
PFA_SIGN:
    .dw XT_DOLITERAL
    .dw 0
    .dw XT_GREATER
    .dw XT_DOCONDBRANCH
    .dw PFA_SIGN1
    .dw XT_DOLITERAL
    .dw $20
    .dw XT_DOBRANCH
    .dw PFA_SIGN2
PFA_SIGN1:
    .dw XT_DOLITERAL
    .dw $2d
PFA_SIGN2:
    .dw XT_HOLD
    .dw XT_EXIT
