; ( a-addr -- n ) 
; Memory
; read 1 cell from RAM address
VE_FETCHU:
    .word 0xff02
    .ascii "@u"
    .word VE_HEAD
    .set VE_HEAD, VE_FETCHU
XT_FETCHU:
    .word DO_COLON
PFA_FETCHU:
    .word XT_UP_FETCH
    .word XT_PLUS
    .word XT_FETCH
    .word XT_EXIT
