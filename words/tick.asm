; ( -- XT ) Dictionary
; R( -- )
; search dictionary, returns XT or throw an exception -13
VE_TICK:
    .db $01, "'"
    .dw VE_HEAD
    .set VE_HEAD = VE_TICK
XT_TICK:
    .dw DO_COLON
PFA_TICK:
    .dw XT_BL
    .dw XT_WORD
    .dw XT_FIND
    .dw XT_EQUALZERO
    .dw XT_DOCONDBRANCH
    .dw PFA_TICK1
    .dw XT_DOLITERAL
    .dw -13
    .dw XT_THROW
PFA_TICK1:
    .dw XT_EXIT
