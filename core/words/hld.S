; ( -- addr ) 
; Numeric IO
; pointer to current write position in the Pictured Numeric Output buffer
VE_HLD:
    .word 0xff03
    .string "hld"
    .word VE_HEAD
    .set VE_HEAD, VE_HLD
XT_HLD:
    .word PFA_DOVARIABLE
PFA_HLD:
    .word ram_hld

.data
ram_hld: .byte 2
.text
