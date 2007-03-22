; ( xt|0 -- )
; R( -- )
VE_QEXECUTE:
    .db $08, "?execute",0
    .dw VE_HEAD
    .set VE_HEAD = VE_QEXECUTE
XT_QEXECUTE:
    .dw DO_COLON
PFA_QEXECUTE:
    .dw XT_QDUP
    .dw XT_DOCONDBRANCH
    .dw PFA_EXECUTE1
    .dw XT_EXECUTE
PFA_EXECUTE1:
    .dw XT_EXIT
