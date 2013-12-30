; ( n e-addr -- ) 
; Memory
; write n (2bytes) to eeprom address
VE_STOREE:
    .word 0xff02
    .ascii "!e"
    .word VE_HEAD
    .set VE_HEAD, VE_STOREE
XT_STOREE:
    .word PFA_STOREE
PFA_STOREE:
.if WANT_UNIFIED == 1
    ldi  ZH, high(EEPROMEND)
    ldi  ZL, low(EEPROMEND)
    cp  tosl, ZL
    cpc tosh, ZH
    brlt PFA_STOREE0
    brbs 1, PFA_STOREE0
    rjmp PFA_STOREE_OTHER
.endif
PFA_STOREE0:
    movw ZL, tosl
    loadtos
    in_ temp2, SREG
    cli
    rcall PFA_FETCHE2
    in_  temp0, EEDR
    cp temp0,tosl
    breq PFA_STOREE3
    rcall PFA_STOREE1
PFA_STOREE3:
    adiw ZL,1
    rcall PFA_FETCHE2
    in_  temp0, EEDR
    cp temp0,tosh
    breq PFA_STOREE4
    mov tosl, tosh
    rcall PFA_STOREE1
PFA_STOREE4:
    out_ SREG, temp2
    loadtos
    jmp_ DO_NEXT
    
PFA_STOREE1:
    sbic _SFR_IO_ADDR(EECR), EEPE
    rjmp PFA_STOREE1

PFA_STOREE2: ; estore_wait_low_spm:
    in_ temp0, SPMCSR
    sbrc temp0,SPMEN
    rjmp PFA_STOREE2

    out_ EEARH,ZH
    out_ EEARL,ZL
    out_ EEDR, tosl
    sbi _SFR_IO_ADDR(EECR),EEMPE
    sbi _SFR_IO_ADDR(EECR),EEPE

    ret
.if WANT_UNIFIED == 1
PFA_STOREE_OTHER:
    adiw ZL, 1
    sub tosl, ZL
    sbc tosh, ZH
    jmp_ PFA_STOREI
.endif
