; ( -- addr len) (C: <cchar> -- ) 
; Compiler
; compiles a string to flash, at runtime leaves ( -- flash-addr count) on stack
VE_SQUOTE:
  .word 0x0002
  .ascii "s"
  .byte 0x22
  .word VE_HEAD
  .set VE_HEAD, VE_SQUOTE
XT_SQUOTE:
    .word DO_COLON
PFA_SQUOTE:
    .word XT_DOLITERAL
    .word 0x22
    .word XT_PARSE       ; ( -- addr n)
    .word XT_STATE
    .word XT_FETCH
    .word XT_DOCONDBRANCH
    .word PFA_SQUOTE1
      .word XT_COMPILE
      .word XT_DOSLITERAL    ; ( -- addr n)
      .word XT_SCOMMA
PFA_SQUOTE1:
    .word XT_EXIT
