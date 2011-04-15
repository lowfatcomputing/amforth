; ( e-addr - n) 
; Memory
; read 1 cell from eeprom
VE_FETCHE:
    .dw $ff02
    .db "@e"
    .dw VE_HEAD
    .set VE_HEAD = VE_FETCHE
XT_FETCHE:
    .dw PFA_FETCHE
PFA_FETCHE:
    in_ temp2, SREG
    cli
    movw zl, tosl
    rcall PFA_FETCHE1
    in_ tosl, EEDR

    adiw zl,1

    rcall PFA_FETCHE1
    in_  tosh, EEDR
    out_ SREG, temp2
    rjmp DO_NEXT

PFA_FETCHE1:
    in_ temp1, EECR
    sbrc temp1,EEPE
    rjmp PFA_FETCHE1

    out_ EEARH,zh
    out_ EEARL,zl

    sbi EECR,EERE
    ret
    
