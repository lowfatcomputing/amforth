; ( -- n)

VE_R_FETCH:
    .db $02, "r@",0
    .dw VE_LATEST
    .set VE_LATEST = VE_R_FETCH
XT_R_FETCH:
    .dw DO_COLON
PFA_R_FETCH:
    .dw XT_R_FROM
    .dw XT_DUP
    .dw XT_TO_R
    .dw XT_IFETCH
    .dw XT_EXIT
