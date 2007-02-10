; ( -- )
; R( -- )
VE_LPARENTHESIS:
    .db $81, "(" 
    .dw VE_HEAD
    .set VE_HEAD = VE_LPARENTHESIS
XT_LPARENTHESIS:
    .dw DO_COLON
PFA_LPARENTHESIS:
    .dw XT_DOLITERAL
    .dw $29
    .dw XT_WORD
    .dw XT_DROP
    .dw XT_EXIT
