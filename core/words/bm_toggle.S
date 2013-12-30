; ( bitmask byte-addr --  )
; MCU
; toggle bits set in bitmask on byte at addr
VE_BM_TOGGLE:
    .word 0xff09
    .string "bm-toggle"
    .word VE_HEAD
    .set VE_HEAD, VE_BM_TOGGLE
XT_BM_TOGGLE:
    .word PFA_BM_TOGGLE
PFA_BM_TOGGLE:
    movw zl, tosl
    loadtos
    ld temp0, Z
    eor temp0, tosl
    st Z, temp0
    loadtos
    jmp_ DO_NEXT
