; ( n -- ) Numeric IO
; R( -- )
; place a - in HLD if value is negative
VE_SIGN:
    .db $04, "sign",0
    .dw VE_HEAD
    .set VE_HEAD = VE_SIGN
XT_SIGN:
    .dw DO_COLON
PFA_SIGN:
    .dw XT_LESSZERO
    .dw XT_DOCONDBRANCH
    .dw PFA_SIGN1
    .dw XT_DOLITERAL
    .dw $2d
    .dw XT_HOLD
PFA_SIGN1:
    .dw XT_EXIT
