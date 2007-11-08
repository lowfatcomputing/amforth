; ( n1 -- n2 ) Arithmetics
; R( -- )
; cells (CORE)
VE_CELLS:
    .db 5, "cells"
    .dw VE_HEAD
    .set VE_HEAD = VE_CELLS
XT_CELLS:
    .dw DO_COLON
PFA_CELLS:
.if CELLSIZE == 2 ;
    .dw XT_2STAR
.else
    .dw XT_DOLITERAL
    .dw CELLSIZE
    .dw XT_STAR
.endif
    .dw XT_EXIT
