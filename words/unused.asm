; ( -- n ) Tools
; R( -- )
; number of unused flash cells
VE_UNUSED:
    .db $6, "unused",0
    .dw VE_HEAD
    .set VE_HEAD = VE_UNUSED
XT_UNUSED:
    .dw DO_COLON
PFA_UNUSED:
    .dw XT_DOLITERAL
    .dw nrww
    .dw XT_HERE
    .dw XT_MINUS
    .dw XT_EXIT
