; ( c base -- number flag ) 
; Numeric IO
; tries to convert a character to a number, set flag accordingly
VE_DIGITQ:
    .dw $ff06
    .db "digit?"
    .dw VE_HEAD
    .set VE_HEAD = VE_DIGITQ
XT_DIGITQ:
    .dw DO_COLON
PFA_DIGITQ:
    .dw XT_TO_R
    .dw XT_DUP
    .dw XT_DOLITERAL
    .dw '9'
    .dw XT_GREATER
    .dw XT_DOCONDBRANCH
    .dw PFA_DIGITQ1
     .dw XT_DOLITERAL
     .dw $00DF
     .dw XT_AND
     .dw XT_DOLITERAL
     .dw 'A'
     .dw XT_DOLITERAL
     .dw 10
     .dw XT_TO_R
     .dw XT_DOBRANCH
     .dw PFA_DIGITQ2
PFA_DIGITQ1:
     .dw XT_DOLITERAL
     .dw '0'
     .dw XT_ZERO
     .dw XT_TO_R
PFA_DIGITQ2:
    .dw XT_MINUS
    .dw XT_R_FROM
    .dw XT_PLUS
    .dw XT_DUP
    .dw XT_ZERO
    .dw XT_R_FROM
    .dw XT_WITHIN
    .dw XT_EXIT
