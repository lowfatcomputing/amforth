; ( -- ) 
; Search Order
; Duplicate first entry in the current search order list
VE_MARKER:
    .word 0xff08
    .ascii "(marker)"
    .word VE_HEAD
    .set VE_HEAD, VE_MARKER
XT_MARKER:
    .word PFA_DOVALUE1
PFA_MARKER:
    .word EE_MARKER
    .word XT_EVALUEFETCH
    .word XT_EVALUESTORE
