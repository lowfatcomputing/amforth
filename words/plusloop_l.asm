; ( addr -- ) Control Structure
; R( -- )
; compile +loop and resolve branch, may use LEAVE as well.
VE_PLOOPL:
    .db $87, "+loop_l"
    .dw VE_HEAD
    .set VE_HEAD = VE_PLOOPL
XT_PLOOPL:
    .dw DO_COLON
PFA_PLOOPL:
    .dw XT_COMPILE
    .dw XT_DOPLUSLOOP
    .dw XT_LRESOLVE ; ( -- <mark )
    .dw XT_GRESOLVE ; ( -- )
    .dw XT_EXIT
