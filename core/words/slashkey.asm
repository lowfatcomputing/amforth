; ( -- ) Character IO
; R( -- )
; fetch /key vector and execute it, should turn off the sender of key events
VE_SLASHKEY:
    .dw $ff04
    .db "/key"
    .dw VE_HEAD
    .set VE_HEAD = VE_SLASHKEY
XT_SLASHKEY:
    .dw PFA_DODEFER
PFA_SLASHKEY:
    .dw USER_SKEY
    .dw XT_UDEFERFETCH
    .dw XT_UDEFERSTORE
