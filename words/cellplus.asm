; ( n1 -- n2 ) Arithmetics
; R( -- )
; add cell size (CORE)
VE_CELLPLUS:
    .db 5, "cell+"
    .dw VE_HEAD
    .set VE_HEAD = VE_CELLPLUS
XT_CELLPLUS:
    .dw DO_COLON
PFA_CELLPLUS:
.if CELLSIZE == 2 ;
    .dw XT_1PLUS
    .dw XT_1PLUS
.else
    .dw XT_DOLITERAL
    .dw CELLSIZE
    .dw XT_PLUS
.endif
    .dw XT_EXIT
; maybe align data?
