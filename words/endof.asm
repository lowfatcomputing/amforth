; ( addr1 -- addr2 ) Compiler
; R( -- )
; 
VE_ENDOF:
    .db $85, "endof"
    .dw VE_HEAD
    .set VE_HEAD = VE_ENDOF
XT_ENDOF:
    .dw DO_COLON
PFA_ENDOF:
    .dw XT_ELSE
    .dw XT_EXIT
