; ( -- addr )
; R( -- )
;
;VE_DOEDEFER:
;    .db $0a, "(defer)", 0
;    .dw VE_HEAD
;    .set VE_HEAD = VE_DOEDEFER
XT_DODEFER:
    .dw PFA_DODEFER
PFA_DODEFER:
    .dw $940e            ; (;code>
    .dw DO_DODOES
    .dw XT_DUP
    .dw XT_1MINUS
    .dw XT_SWAP
    .dw XT_1PLUS
    .dw XT_IFETCH
    .dw XT_EXECUTE 
    .dw XT_EXECUTE
    .dw XT_EXIT
