; ( c<char> -- )

VE_FORGET:
    .db $06, "forget",0
    .dw VE_HEAD
    .set VE_HEAD = VE_FORGET
XT_FORGET:
    .dw DO_COLON
PFA_FORGET:
    .dw XT_BL
    .dw XT_WORD
    .dw XT_FIND
    .dw XT_DOCONDBRANCH
    .dw PFA_FORGET1
    .dw XT_1MINUS ; xt -> lfa
    .dw XT_DUP
    .dw XT_IFETCH ; 
    .dw XT_HEAD
    .dw XT_ESTORE
    
    .dw XT_DP
    .dw XT_ESTORE
    .dw XT_EXIT

PFA_FORGET1:
    .dw XT_DROP
    .dw XT_EXIT
