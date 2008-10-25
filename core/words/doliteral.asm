; ( -- n1 )
; R( -- )
; runtime of literal
;VE_DOLITERAL:
;    .dw $ff09
;    .db "(literal)"
;    .dw VE_HEAD
;    .set VE_HEAD = VE_DOLITERAL
XT_DOLITERAL:
    .dw DO_COLON
PFA_DOLITERAL:
    .dw XT_R_FROM
    .dw XT_DUP
    .dw XT_1PLUS
    .dw XT_TO_R
    .dw XT_IFETCH
    .dw XT_EXIT

