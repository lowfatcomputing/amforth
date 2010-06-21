; ( -- n ) Tools
; R( -- )
; number of unused flash cells
VE_UNUSED:
    .dw $ff06
    .db "unused"
    .dw VE_HEAD
    .set VE_HEAD = VE_UNUSED
XT_UNUSED:
    .dw DO_COLON
PFA_UNUSED:
    .dw XT_DOLITERAL
    .dw max_dict_addr
    .dw XT_HERE
    .dw XT_MINUS
    .dw XT_EXIT
