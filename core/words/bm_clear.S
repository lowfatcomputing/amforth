; ( bitmask byte-addr --  )
; MCU
; clear bits set in bitmask on byte at addr
VE_BM_CLEAR:
    .word 0xff08
    .ascii "bm-clear"
    .word VE_HEAD
    .set VE_HEAD, VE_BM_CLEAR
XT_BM_CLEAR:
    .word PFA_BM_CLEAR
PFA_BM_CLEAR:
    movw zl, tosl
    loadtos
    com tosl
    ld temp0, Z
    and temp0, tosl
    st Z, temp0
    loadtos
    jmp_ DO_NEXT
