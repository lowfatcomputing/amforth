; ( addr -- ) 
; R( -- )
VE_LOOP:
    .db $84, "loop",0
    .dw VE_HEAD
    .set VE_HEAD = VE_LOOP
XT_LOOP:
    .dw DO_COLON
PFA_LOOP:
    .dw XT_DOLITERAL
    .dw XT_DOLOOP
    .dw XT_COMMA
    .dw XT_LRESOLVE
    .dw XT_EXIT
