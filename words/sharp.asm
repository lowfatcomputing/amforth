; ( n1 -- n2)
VE_SHARP:
    .db $01, "#"
    .dw VE_HEAD
    .set VE_HEAD = VE_SHARP
XT_SHARP:
    .dw DO_COLON
PFA_SHARP:
    .dw XT_BASE
    .dw XT_FETCH
    .dw XT_SLASHMOD
    .dw XT_SWAP
    .dw XT_DOLITERAL
    .dw $30
    .dw XT_PLUS
    .dw XT_DUP
    .dw XT_DOLITERAL
    .dw $39
    .dw XT_GREATER
    .dw XT_DOCONDBRANCH
    .dw PFA_SHARP1
    .dw XT_DOLITERAL
    .dw $7
    .dw XT_PLUS
PFA_SHARP1:
    .dw XT_HOLD
    .dw XT_EXIT
