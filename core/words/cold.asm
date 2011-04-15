; ( nx* -- ) (R: ny* -- )
; System
; main entry word. executes turnkey operation and jumps to quit
VE_COLD:
    .dw $ff04
    .db "cold"
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
    .dw XT_TURNKEY
    .dw XT_QUIT
    .dw XT_EXIT
