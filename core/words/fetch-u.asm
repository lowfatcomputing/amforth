; ( a-addr -- n ) 
; Memory
; read 1 cell from RAM address
VE_FETCHU:
    .dw $ff02
    .db "@u"
    .dw VE_HEAD
    .set VE_HEAD = VE_FETCHU
XT_FETCHU:
    .dw PFA_FETCHU
PFA_FETCHU:
    movw zl, tosl
    add  zl, upl
    adc  zh, uph
    ; low byte is read before the high byte
    ld tosl, z+
    ld tosh, z+
    jmp_ DO_NEXT
