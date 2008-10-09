; ( addr -- ) Control Structure
; R( -- )
; compile +loop and resolve branch
VE_PLUSLOOP:
    .db $85, "+loop"
    .dw VE_HEAD
    .set VE_HEAD = VE_PLUSLOOP
XT_PLUSLOOP:
    .dw DO_COLON
PFA_PLUSLOOP:
    .dw XT_COMPILE
    .dw XT_DOPLUSLOOP
    .dw XT_LRESOLVE
    .dw XT_GRESOLVE
    .dw XT_EXIT
