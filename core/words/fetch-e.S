; ( e-addr - n) 
; Memory
; read 1 cell from eeprom
VE_FETCHE:
    .word 0xff02
    .ascii "@e"
    .word VE_HEAD
    .set VE_HEAD, VE_FETCHE
XT_FETCHE:
    .word PFA_FETCHE
PFA_FETCHE:
.if WANT_UNIFIED == 1
    ldi  ZH, high(EEPROMEND)
    ldi  ZL, low(EEPROMEND)
    cp  tosl, ZL
    cpc tosh, ZH
    brlt PFA_FETCHE1
    brbs 1, PFA_FETCHE1
    rjmp PFA_FETCHE_OTHER
.endif
PFA_FETCHE1:
    in_ temp2, SREG
    cli
    movw ZL, tosl
    rcall PFA_FETCHE2
    in_ tosl, EEDR

    adiw ZL,1

    rcall PFA_FETCHE2
    in_  tosh, EEDR
    out_ SREG, temp2
    jmp_ DO_NEXT

PFA_FETCHE2:
    sbic _SFR_IO_ADDR(EECR), EEPE
    rjmp PFA_FETCHE2

    out_ EEARH,ZH
    out_ EEARL,ZL

    sbi _SFR_IO_ADDR(EECR),EERE
    ret

.if WANT_UNIFIED == 1
PFA_FETCHE_OTHER:
    adiw ZL, 1
    sub tosl, ZL
    sbc tosh, ZH
    jmp_ PFA_FETCHI
.endif
