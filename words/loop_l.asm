; ( <mark >mark -- ) Control Structure
; R( -- )
; compile (loop) and resolve branch, may use LEAVE as well.
VE_LOOPL:
    .db $86, "loop_l",0
    .dw VE_HEAD
    .set VE_HEAD = VE_LOOPL
XT_LOOPL:
    .dw DO_COLON
PFA_LOOPL:
    .dw XT_COMPILE
    .dw XT_DOLOOP   ; ( -- <mark >mark )
    .dw XT_LRESOLVE ; ( -- <mark )
    .dw XT_GRESOLVE ; ( -- )
    .dw XT_EXIT
