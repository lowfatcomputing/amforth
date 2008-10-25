; ( -- ) Multitasking
; R( -- ) 
; fetch pause vector and execute it. may make a context/task switch
VE_PAUSE:
    .dw $ff05
    .db "pause",0
    .dw VE_HEAD
    .set VE_HEAD = VE_PAUSE
XT_PAUSE:
    .dw PFA_DODEFER
PFA_PAUSE:
    .dw heap
    .set heap = heap + CELLSIZE
    .dw XT_RDEFERFETCH
    .dw XT_RDEFERSTORE
