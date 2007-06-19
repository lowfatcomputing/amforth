; ( -- ) System
; R( -- )
; main entry word. executes turnkey operation and jumps to  quit
VE_COLD:
    .db $04, "cold", 0
    .dw VE_HEAD
    .set VE_HEAD = VE_COLD
XT_COLD:
    .dw DO_COLON
PFA_COLD:
    .dw XT_DOLITERAL
    .dw XT_NOOP
    .dw XT_DOLITERAL
    .dw XT_PAUSE
    .dw XT_DEFERSTORE

    .dw XT_INTON

    .dw XT_TURNKEY
    
    .dw XT_QUIT
    .dw XT_EXIT
