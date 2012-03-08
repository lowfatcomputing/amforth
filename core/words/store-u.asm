; ( n addr -- ) 
; Memory
; write n to RAM memory at addr, low byte first
VE_STOREU:
    .dw $ff02
    .db "!u"
    .dw VE_HEAD
    .set VE_HEAD = VE_STOREU
XT_STOREU:
    .dw PFA_STOREU
PFA_STOREU:
    movw zl, tosl
    add  zl, upl
    adc  zh, uph
    loadtos
    ; the high byte is written before the low byte
    std Z+1, tosh
    std Z+0, tosl
    loadtos
    jmp_ DO_NEXT
