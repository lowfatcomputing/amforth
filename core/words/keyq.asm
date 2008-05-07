; ( -- f) Character IO
; R( -- )
; fetch key? vector and execute it. should turn on key sender, if it is disabled/stopped
VE_KEYQ:
    .db $04, "key?",0
    .dw VE_HEAD
    .set VE_HEAD = VE_KEYQ
XT_KEYQ:
    .dw PFA_DODEFER
PFA_KEYQ:
    .dw 20
    .dw XT_UDEFERFETCH
    .dw XT_UDEFERSTORE
