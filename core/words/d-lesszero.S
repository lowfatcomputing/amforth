; ( d -- flag )
; Compare
; compares if a double double cell number is less than 0
VE_DLESSZERO:
    .word 0xff03
    .string "d0<"
    .word VE_HEAD
    .set VE_HEAD, VE_DLESSZERO
XT_DLESSZERO:
    .word PFA_DLESSZERO
PFA_DLESSZERO:
;;    adiw Y,2 ;; removed
    adiw YL,2
    sbrc tosh,7
    jmp PFA_TRUE1
    jmp PFA_ZERO1
