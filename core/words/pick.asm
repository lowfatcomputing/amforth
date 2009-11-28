; ( xu ... x1 x0 u -- xu ... x1 x0 xu ) Stack
; R( -- )
; from core extension ( n1 n2 -- n1 n2 n1 ) Stack  0 pick=dup   1 pick = over ... 
VE_PICK:
    .dw $ff04
    .db "pick"
    .dw VE_HEAD
    .set VE_HEAD = VE_PICK
XT_PICK:
    .dw PFA_PICK
PFA_PICK:
    movw zl, yl
    lsl tosl
    rol tosh
    add  zl,tosl
    adc  zh,tosh
    ld   tosl, Z
    ldd  tosh, Z+1
    jmp_ DO_NEXT
