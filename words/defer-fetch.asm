; ( xt1 -- xt2 ) System
; R( -- )
; returns the XT assoziates with the given XT
VE_DEFERFETCH:
    .db $06, "defer@",0
    .dw VE_HEAD
    .set VE_HEAD = VE_DEFERFETCH
XT_DEFERFETCH:
    .dw DO_COLON
PFA_DEFERFETCH:
    .dw XT_DUP
    .dw XT_1PLUS ; >body
    .dw XT_1PLUS 
    .dw XT_IFETCH
    .dw XT_EXECUTE
    .dw XT_EXIT
