; ( addr len -- ) Compiler
; R( -- )
; compiles a string from RAM to Flash
VE_SCOMMA:
  .dw $ff02
  .db "s",$2c
  .dw VE_HEAD
  .set VE_HEAD = VE_SCOMMA
XT_SCOMMA:
    .dw DO_COLON
PFA_SCOMMA:
    .dw XT_DUP
    .dw XT_COMMA
    .dw XT_ZERO
    .dw XT_DOQDO
    .dw PFA_SCOMMA2
PFA_SCOMMA1:
    .dw XT_DUP         ; ( -- addr addr )
    .dw XT_FETCH       ; ( -- addr c1c2 )
    .dw XT_COMMA       ; ( -- addr )
    .dw XT_CELLPLUS    ; ( -- addr+cell )
    .dw XT_DOLITERAL
    .dw 2
    .dw XT_DOPLUSLOOP
    .dw PFA_SCOMMA1
PFA_SCOMMA2:
    .dw XT_DROP        ; ( -- )
    .dw XT_EXIT
