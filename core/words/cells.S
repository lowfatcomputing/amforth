; ( n1 -- n2 ) 
; Arithmetics
; n2 is the size in address units of n1 cells
VE_CELLS:
    .word 0xff05
    .string "cells"
    .word VE_HEAD
    .set VE_HEAD, VE_CELLS
XT_CELLS:
    .word DO_COLON
PFA_CELLS:
.if CELLSIZE == 2 ;
    .word XT_2STAR
.else
    .word XT_DOLITERAL
    .word CELLSIZE
    .word XT_STAR
.endif
    .word XT_EXIT
