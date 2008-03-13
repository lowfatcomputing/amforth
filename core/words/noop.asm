; ( -- ) Tools
; R( -- )
; do nothing
VE_NOOP:
    .db $04, "noop",0
    .dw VE_HEAD
    .set VE_HEAD = VE_NOOP
XT_NOOP:
    .dw DO_COLON
PFA_NOOP:
    .dw XT_EXIT