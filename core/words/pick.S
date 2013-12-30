; ( xu ... x1 x0 u -- xu ... x1 x0 xu ) 
; Stack
; access the stack as an array and fetch the u-th element as new TOS
VE_PICK:
    .word 0xff04
    .ascii "pick"
    .word VE_HEAD
    .set VE_HEAD, VE_PICK
XT_PICK:
    .word PFA_PICK
PFA_PICK:
    movw zl, yl
    lsl tosl
    rol tosh
    add  zl,tosl
    adc  zh,tosh
    ld   tosl, Z
    ldd  tosh, Z+1
    jmp_ DO_NEXT
