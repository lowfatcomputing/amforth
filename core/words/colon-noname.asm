; ( -- xt ) Compiler
; R( -- )
; create unnamed entry in the dictionary, XT is COLON
VE_COLONNONAME:
    .dw $ff07
    .db ":noname",0
    .dw VE_HEAD
    .set VE_HEAD = VE_COLONNONAME
XT_COLONNONAME:
    .dw DO_COLON
PFA_COLONNONAME:
    ; save the current voc header to make ; easier
    .dw XT_GET_CURRENT
    .dw XT_FETCHE
    .dw XT_DOLITERAL
    .dw COLON_SMUDGE
    .dw XT_STORE

    
    .dw XT_DP
    .dw XT_DUP
    .dw XT_DOLITERAL
    .dw COLON_XT
    .dw XT_STORE

    .dw XT_COMPILE
    .dw DO_COLON
    .dw XT_RBRACKET
    .dw XT_EXIT
