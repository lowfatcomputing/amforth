; (C: addr len -- ) 
; String
; compiles a string to flash, at runtime leaves ( -- flash-addr count) on stack
VE_SLITERAL:
  .word 0x0008
  .ascii "sliteral"
  .word VE_HEAD
  .set VE_HEAD, VE_SLITERAL
XT_SLITERAL:
    .word DO_COLON
PFA_SLITERAL:
    .word XT_COMPILE
    .word XT_DOSLITERAL    ; ( -- addr n)
    .word XT_SCOMMA
    .word XT_EXIT
