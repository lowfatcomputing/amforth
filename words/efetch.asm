; ( addr - n) Memory
; R( -- )
; read 2 bytes from eeprom
VE_EFETCH:
    .db $02, "e@",0
    .dw VE_HEAD
    .set VE_HEAD = VE_EFETCH
XT_EFETCH:
    .dw PFA_EFETCH
PFA_EFETCH:
    movw zl, tosl
    rcall PFA_EFETCH1
    in_ tosl, EEDR

    adiw zl,1

    rcall PFA_EFETCH1
    in_  tosh, EEDR

    rjmp DO_NEXT

PFA_EFETCH1:
    in_ temp1, EECR
    sbrc temp1,EEWE
    rjmp PFA_EFETCH1

    out_ EEARH,zh
    out_ EEARL,zl

    sbi EECR,EERE
    ret
    