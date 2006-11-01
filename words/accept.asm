; ( addr n1 -- n2 )
VE_ACCEPT:
    .db $06, "accept",0
    .dw VE_HEAD
    .set VE_HEAD = VE_ACCEPT
XT_ACCEPT:
    .dw DO_COLON
PFA_ACCEPT:
    .dw XT_DUP
    .dw XT_TO_R
    .dw XT_TO_R
PFA_ACCEPT1:
    .dw XT_KEYQ
    .dw XT_DOCONDBRANCH
    .dw PFA_ACCEPT1
    .dw XT_KEY
    .dw XT_DUP
    .dw XT_EMIT
    .dw XT_DUP
    .dw XT_DOLITERAL
    .dw 13
    .dw XT_NOTEQUAL
    .dw XT_DOCONDBRANCH
    .dw PFA_ACCEPT2
    ; now store the key
    .dw XT_OVER
    .dw XT_CSTORE
    .dw XT_1PLUS
    ; now check number of charaters
    .dw XT_R_FROM
    .dw XT_1MINUS
    .dw XT_DUP
    .dw XT_TO_R
    .dw XT_EQUALZERO
    .dw XT_DOCONDBRANCH
    .dw PFA_ACCEPT1
    .dw XT_DUP
PFA_ACCEPT2:
    .dw XT_DROP
    .dw XT_DROP
    .dw XT_R_FROM
    .dw XT_R_FROM
    .dw XT_SWAP
    .dw XT_MINUS
    .dw XT_CR
    .dw XT_EXIT
