; ( n*x -- ) Exceptions
; R( n*y -- )
; send an exception -1
VE_ENVSLASHPAD:
    .dw $ff04
    .db "/pad"
    .dw VE_ENVHEAD
    .set VE_ENVHEAD = VE_ENVSLASHPAD
XT_ENVSLASHPAD:
    .dw DO_COLON
PFA_ENVSLASHPAD:
    .dw XT_DOLITERAL
    .dw 80
    .dw XT_EXIT
