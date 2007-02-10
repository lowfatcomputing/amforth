; (n -- )
; R( -- )
VE_ALLOT:
    .db $05, "allot"
    .dw VE_HEAD
    .set VE_HEAD = VE_ALLOT
XT_ALLOT:
    .dw DO_COLON
PFA_ALLOT:
    .dw XT_DP
    .dw XT_EFETCH
    .dw XT_PLUS
    .dw XT_DP
    .dw XT_ESTORE
    .dw XT_EXIT
