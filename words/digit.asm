; ( c base -- number flag )
VE_DIGIT:
    .db $05, "digit"
    .dw VE_HEAD
    .set VE_HEAD = VE_DIGIT
XT_DIGIT:
    .dw DO_COLON
PFA_DIGIT:
    .dw XT_SWAP
    .dw XT_DUP
    .dw XT_DOLITERAL
    .dw $2a
    .dw XT_GREATER
    .dw XT_DOCONDBRANCH
    .dw PFA_DIGIT2
    .dw XT_DOLITERAL
    .dw $30
    .dw XT_MINUS
    .dw XT_DUP
    .dw XT_DOLITERAL
    .dw 9
    .dw XT_GREATER
    .dw XT_DOCONDBRANCH
    .dw PFA_DIGIT1
    .dw XT_DOLITERAL
    .dw $07
    .dw XT_MINUS
PFA_DIGIT1:
    .dw XT_DUP
    .dw XT_ROT
    .dw XT_GREATER
    .dw XT_EXIT

PFA_DIGIT2:
    .dw XT_DOLITERAL
    .dw 0
    .dw XT_DUP
    .dw XT_EXIT
