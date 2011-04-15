; ( c-addr1 -- c-addr2 n) 
; String
; c-addr1 is the address of a counted string in RAM
VE_COUNT:
    .dw $ff05
    .db "count",0
    .dw VE_HEAD
    .set VE_HEAD = VE_COUNT
XT_COUNT:
    .dw DO_COLON
PFA_COUNT:
    .dw XT_DUP
    .dw XT_1PLUS
    .dw XT_SWAP
    .dw XT_CFETCH
    .dw XT_EXIT
