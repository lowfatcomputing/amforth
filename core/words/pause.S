; ( -- ) 
; Multitasking
; Fetch pause vector and execute it. may make a context/task switch
VE_PAUSE:
    .word 0xff05
    .string "pause"
    .word VE_HEAD
    .set VE_HEAD, VE_PAUSE
XT_PAUSE:
    .word PFA_DODEFER
PFA_PAUSE:
    .word ram_pause
    .word XT_RDEFERFETCH
    .word XT_RDEFERSTORE

.data
ram_pause: .byte 2
.text
