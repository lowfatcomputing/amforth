; ( n*x -- ) Exceptions
; R( n*y -- )
; send an exception -1
VE_ENVSLASHHOLD:
    .dw $ff05
    .db "/hold",0
    .dw VE_HEAD
    .set VE_ENVHEAD = VE_ENVSLASHHOLD
XT_ENVSLASHHOLD:
    .dw DO_COLON
PFA_ENVSLASHHOLD:
    .dw XT_DOLITERAL
    .dw HLDSIZE
    .dw XT_EXIT
