; (  -- n) Stackpointer
; R( -- )
; current data stack pointer
VE_SP_FETCH:
    .db $03, "sp@"
    .dw VE_HEAD
    .set VE_HEAD = VE_SP_FETCH
XT_SP_FETCH:
    .dw PFA_SP_FETCH
PFA_SP_FETCH:
    savetos
    movw tosl, yl
    rjmp DO_NEXT
