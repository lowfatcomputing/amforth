; ( addr - addr+1 n)
VE_COUNT:
    .db $05, "count"
    .dw VE_LATEST
    .set VE_LATEST = VE_COUNT
XT_COUNT:
    .dw DO_COLON
PFA_COUNT:
    .dw XT_DUP
    .dw XT_1PLUS
    .dw XT_SWAP
    .dw XT_CFETCH
    .dw XT_EXIT
