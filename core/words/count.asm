; ( addr -- addr+1 n) String
; R( -- )
; addr is the address of a counted string in RAM
VE_COUNT:
    .db $05, "count"
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
