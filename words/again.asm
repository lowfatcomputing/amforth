; ( addr -- ) Control Structure
; R( -- )
; go back to begin
VE_AGAIN:
    .db $85, "again"
    .dw VE_HEAD
    .set VE_HEAD = VE_AGAIN
XT_AGAIN:
    .dw DO_COLON
PFA_AGAIN:
    .dw XT_COMPILE
    .dw XT_DOBRANCH
    .dw XT_LRESOLVE
    .dw XT_EXIT
