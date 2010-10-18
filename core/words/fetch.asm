; ( addr -- n ) Memory
; R( -- )
; read 1 cell from RAM address
VE_FETCH:
    .dw $ff01
    .db "@",0
    .dw VE_HEAD
    .set VE_HEAD = VE_FETCH
XT_FETCH:
    .dw PFA_FETCH
PFA_FETCH:
    movw zl, tosl
    ld tosl, z+
    ld tosh, z+
    rjmp DO_NEXT
