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

PFA_EFETCH1:
    in temp0, EECR
    sbrc temp0,EEWE
    rjmp PFA_EFETCH1
  
    out EEARH, zh
    out EEARL, zl

    sbi EECR,EERE
    in tosl,EEDR

    adiw zl,1

PFA_EFETCH2:
    in temp1, EECR
    sbrc temp1,EEWE
    rjmp PFA_EFETCH2

    out EEARH,zh
    out EEARL,zl

    sbi EECR,EERE
    in  tosh,EEDR

    rjmp DO_NEXT
