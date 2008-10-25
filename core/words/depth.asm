; ( -- n ) Stack
; R( -- )
; currently used data stack size in cells
VE_DEPTH:
    .dw $ff05
    .db "depth",0
    .dw VE_HEAD
    .set VE_HEAD = VE_DEPTH
XT_DEPTH:
    .dw DO_COLON
PFA_DEPTH:
    .dw XT_SP0
    .dw XT_SP_FETCH
    .dw XT_MINUS
; if cellsize == 2
    .dw XT_2SLASH
; endif
    .dw XT_1MINUS
    .dw XT_EXIT
