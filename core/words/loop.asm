; ( addr -- ) Control Structure
; R( -- )
; cpmpile (loop) and resolve branch
VE_LOOP:
    .dw $0004 
    .db "loop"
    .dw VE_HEAD
    .set VE_HEAD = VE_LOOP
XT_LOOP:
    .dw DO_COLON
PFA_LOOP:
    .dw XT_COMPILE
    .dw XT_DOLOOP
    .dw XT_LRESOLVE
    .dw XT_GRESOLVE
    .dw XT_EXIT
