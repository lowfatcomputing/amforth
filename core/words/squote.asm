; ( <cchar> -- ) Compiler
; R( -- )
; compiles a string to flash, at runtime leaves ( -- addr count) on stack
VE_SQUOTE:
  .db $82,"s",$22,0
  .dw VE_HEAD
  .set VE_HEAD = VE_SQUOTE
XT_SQUOTE:
    .dw DO_COLON
PFA_SQUOTE:
    .dw XT_DOLITERAL
    .dw $22
    .dw XT_PARSE       ; ( -- addr n)
    .dw XT_COMPILE
    .dw XT_SLITERAL    ; ( -- addr n)
    .dw XT_SCOMMA
    .dw XT_EXIT
