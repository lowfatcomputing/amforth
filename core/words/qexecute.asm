; ( xt|0 -- ) System
; R( -- )
; execute XT if non-zero
VE_QEXECUTE:
    .dw $ff08
    .db "?execute"
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
