; ( -- xt ) Compiler
; R( -- )
; create unnamed entry in the dictionary
VE_COLONNONAME:
    .dw $ff07
    .db ":noname",0
    .dw VE_HEAD
    .set VE_HEAD = VE_COLONNONAME
XT_COLONNONAME:
    .dw DO_COLON
PFA_COLONNONAME:
    .dw XT_DP
    .dw XT_COMPILE
    .dw DO_COLON
    .dw XT_RBRACKET
    .dw XT_EXIT
