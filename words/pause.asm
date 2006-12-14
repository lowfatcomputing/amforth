; ( -- ) 
VE_TICKPAUSE:
    .db $06, $27, "pause", 0
    .dw VE_HEAD
    .set VE_HEAD = VE_TICKPAUSE
XT_TICKPAUSE:
    .dw XT_DOVARIABLE
PFA_TICKPAUSE:
    .dw heap
    .set heap = heap + CELLSIZE

; fetch 'pause vector and execute its token
; if not zero
VE_PAUSE:
    .db $05, "pause"
    .dw VE_HEAD
    .set VE_HEAD = VE_PAUSE
XT_PAUSE:
    .dw DO_COLON
PFA_PAUSE:
    .dw XT_TICKPAUSE
    .dw XT_FETCH
    .dw XT_QDUP
    .dw XT_DOCONDBRANCH
    .dw PFA_PAUSE1
    .dw XT_EXECUTE
PFA_PAUSE1:
    .dw XT_EXIT
