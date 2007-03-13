; ( -- )
; R( -- )
VE_COLD:
    .db $04, "cold", 0
    .dw VE_HEAD
    .set VE_HEAD = VE_COLD
XT_COLD:
    .dw DO_COLON
PFA_COLD:
    .dw XT_SP0
    .dw XT_SP_STORE
    .dw XT_RP0
    .dw XT_RP_STORE

    .dw XT_ZERO
    .dw XT_STATE
    .dw XT_STORE

    .dw XT_ZERO
    .dw XT_TICKPAUSE
    .dw XT_STORE

    .dw XT_TICKTURNKEY
    .dw XT_EFETCH
    .dw XT_QDUP
    .dw XT_DOCONDBRANCH
    .dw PFA_COLD1
    .dw XT_EXECUTE
PFA_COLD1:
    .dw XT_QUIT
    .dw XT_EXIT
