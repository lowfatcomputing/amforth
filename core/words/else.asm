; ( addr1 -- addr2) Compiler
; R( -- )
; 
VE_ELSE:
    .db $84, "else",0
    .dw VE_HEAD
    .set VE_HEAD = VE_ELSE
XT_ELSE:
    .dw DO_COLON
PFA_ELSE:
    .dw XT_COMPILE
    .dw XT_DOBRANCH
    .dw XT_GMARK
    .dw XT_SWAP
    .dw XT_GRESOLVE
    .dw XT_EXIT
