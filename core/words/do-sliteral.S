; ( -- addr len ) 
; String
; runtime portion of sliteral
;VE_DOSLITERAL:
;  .word 0xff0a
;  .ascii "(sliteral)"
;  .word VE_HEAD
;  .set VE_HEAD, VE_DOSLITERAL
XT_DOSLITERAL:
  .word DO_COLON
PFA_DOSLITERAL:
  .word XT_R_FROM   ; ( -- addr )
  .word XT_DUP      ; ( -- addr addr )
  .word XT_DUP
  .word XT_FETCHI   ; ( -- addr addr n )
  .word XT_SWAP
  .word XT_1PLUS
  .word XT_SWAP
  .word XT_ROT      ; ( -- addr' n addr )
  .word XT_OVER     ; ( -- addr' n addr n)
  .word XT_1PLUS
  .word XT_2SLASH   ; ( -- addr' n addr k )
  .word XT_PLUS     ; ( -- addr' n addr'' )
  .word XT_1PLUS
  .word XT_TO_R     ; ( -- )
  .word XT_EXIT
