; ( -- n ) Control Structure
; R( loop-sys1 loop-sys2 -- loop-sys1 loop-sys2)
; loop counter of outer loop
VE_J:
    .db 1, "j"
    .dw VE_HEAD
    .set VE_HEAD = VE_J
XT_J:
    .dw DO_COLON
PFA_J:
    .dw XT_RP_FETCH
    .dw XT_DOLITERAL
    .dw 9
    .dw XT_PLUS
    .dw XT_FETCH
    .dw XT_EXIT
