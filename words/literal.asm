; 
VE_LITERAL:
    .db $87, "literal"
    .dw VE_HEAD
    .set VE_HEAD = VE_LITERAL
XT_LITERAL:
    .dw DO_COLON
PFA_LITERAL:
;    to be filled
    .dw XT_EXIT
