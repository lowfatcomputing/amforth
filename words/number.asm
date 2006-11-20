; (addr -- n )
VE_NUMBER:
    .db $06, "number",0
    .dw VE_HEAD
    .set VE_HEAD = VE_NUMBER
XT_NUMBER:
    .dw DO_COLON
PFA_NUMBER:
    .dw XT_DOLITERAL
    .dw 0
    .dw XT_SWAP
    .dw XT_COUNT
    .dw XT_DOLITERAL
    .dw 0
    .dw XT_DODO
PFA_NUMBER1:
    .dw XT_DUP
    .dw XT_I
    .dw XT_PLUS
    .dw XT_CFETCH
    ; now check for +/- signs
    .dw XT_BASE
    .dw XT_FETCH
    .dw XT_DIGIT
    ; check for non number characters and stop converting if found
    .dw XT_DOCONDBRANCH
    .dw PFA_NUMBER3
    .dw XT_DOLITERAL
    .dw -1
    .dw XT_THROW
    ; exception: no number
PFA_NUMBER3:
    .dw XT_ROT
    .dw XT_BASE
    .dw XT_FETCH
    .dw XT_MUL
    .dw XT_PLUS
    .dw XT_SWAP
    .dw XT_DOLOOP
    .dw PFA_NUMBER1
    .dw XT_DROP
    .dw XT_EXIT
