; ( -- addr )
; R( -- ) 
; task changer vector in RAM
VE_TICKPAUSE:
    .db $06, $27, "pause", 0
    .dw VE_HEAD
    .set VE_HEAD = VE_TICKPAUSE
XT_TICKPAUSE:
    .dw PFA_DOVARIABLE
PFA_TICKPAUSE:
    .dw heap
    .set heap = heap + CELLSIZE

; ( -- )
; R( -- ) 
; fetch 'pause vector and execute its token if not zero. may make a context/task switch
VE_PAUSE:
    .db $05, "pause"
    .dw VE_HEAD
    .set VE_HEAD = VE_PAUSE
XT_PAUSE:
    .dw DO_COLON
PFA_PAUSE:
    .dw XT_TICKPAUSE
    .dw XT_FETCH
    .dw XT_QEXECUTE
    .dw XT_EXIT
