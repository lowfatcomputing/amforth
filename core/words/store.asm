; ( n addr -- ) 
; Memory
; write 16bit to RAM memory, low byte first
VE_STORE:
    .dw $ff01
    .db "!",0
    .dw VE_HEAD
    .set VE_HEAD = VE_STORE
XT_STORE:
    .dw PFA_STORE
PFA_STORE:
    movw zl, tosl
    loadtos
    ; the high byte is written before the low byte
    std Z+1, tosh
    std Z+0, tosl
    loadtos
    jmp_ DO_NEXT
