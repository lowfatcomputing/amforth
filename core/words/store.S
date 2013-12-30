; ( n addr -- ) 
; Memory
; write n to RAM memory at addr, low byte first
VE_STORE:
    .word 0xff01
    .string "!"
    .word VE_HEAD
    .set VE_HEAD, VE_STORE
XT_STORE:
    .word PFA_STORE
PFA_STORE:
.if WANT_UNIFIED == 1
    ldi  ZH, high(RAMEND)
    ldi  ZL, low(RAMEND)
    cp  tosl, ZL
    cpc tosh, ZH
    brlt PFA_STORERAM
    brbs 1, PFA_STORERAM
    rjmp PFA_STOREOTHER
.endif
PFA_STORERAM:
    movw ZL, tosl
    loadtos
    ; the high byte is written before the low byte
    std Z+1, tosh
    std Z+0, tosl
    loadtos
    jmp_ DO_NEXT
.if WANT_UNIFIED == 1
PFA_STOREOTHER:
    adiw ZL, 1
    sub tosl, ZL
    sbc tosh, ZH
    jmp_ PFA_STOREE
.endif
