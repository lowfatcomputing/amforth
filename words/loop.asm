; ( addr -- ) Control Structure
; R( -- )
; cpmpile (loop) and resolve branch
VE_LOOP:
    .db $84, "loop",0
    .dw VE_HEAD
    .set VE_HEAD = VE_LOOP
XT_LOOP:
    .dw DO_COLON
PFA_LOOP:
    .dw XT_COMPILE
    .dw XT_DOLOOP
    .dw XT_LRESOLVE
    .dw XT_EXIT
