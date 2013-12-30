; ( a-addr -- n ) 
; Memory
; read 1 cell from RAM address
VE_FETCH:
    .word 0xff01
    .string "@"
    .word VE_HEAD
    .set VE_HEAD, VE_FETCH
XT_FETCH:
    .word PFA_FETCH
PFA_FETCH:
.if WANT_UNIFIED == 1
    ldi  ZH, high(RAMEND)
    ldi  ZL, low(RAMEND)
    cp  tosl, ZL
    cpc tosh, ZH
    brlt PFA_FETCHRAM
    brbs 1, PFA_FETCHRAM
    rjmp PFA_FETCHOTHER
.endif
PFA_FETCHRAM:
    movw ZL, tosl
    ; low byte is read before the high byte
    ld tosl, z+
    ld tosh, z+
    jmp_ DO_NEXT
.if WANT_UNIFIED == 1
PFA_FETCHOTHER:
    adiw ZL, 1
    sub tosl, ZL
    sbc tosh, ZH
    jmp_ PFA_FETCHE
.endif
