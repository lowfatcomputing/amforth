; (addr1 -- addr2 ) Control Structure
; R( -- )
; go back to begin
VE_REPEAT:
    .db $86, "repeat",0
    .dw VE_HEAD
    .set VE_HEAD = VE_REPEAT
XT_REPEAT:
    .dw DO_COLON
PFA_REPEAT:
    .dw XT_AGAIN
    .dw XT_GRESOLVE
    .dw XT_EXIT
