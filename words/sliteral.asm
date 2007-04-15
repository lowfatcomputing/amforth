; ( <cchar> -- )
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
    .dw XT_WORD        ; ( -- addr )
    .dw XT_COUNT       ; ( -- addr' n)
    .dw XT_SWAP        ; ( -- n addr' )
    .dw XT_1MINUS      ; ( -- n addr )
    .dw XT_SWAP        ; ( -- addr n )
    .dw XT_2SLASH      ; ( -- addr k )
    .dw XT_1PLUS       ; ( -- addr k+1)
    .dw XT_ZERO        ; ( -- addr k+1 0)
    .dw XT_COMPILE
    .dw XT_SLITERAL
    .dw XT_DODO        ; ( -- addr )
PFA_SQUOTE1:
    .dw XT_DUP         ; ( -- addr addr )
    .dw XT_FETCH       ; ( -- addr c1c2 )
    .dw XT_COMMA       ; ( -- addr )
    .dw XT_1PLUS       ; ( -- addr+1 )
    .dw XT_1PLUS       ; ( -- addr+2 )
    .dw XT_DOLOOP
    .dw PFA_SQUOTE1
    .dw XT_DROP        ; ( -- )
    .dw XT_EXIT

; ( -- addr n)
; R( -- )
; runtime portion of s"
;VE_SLITERAL:
;  .db 10,"(sliteral)",0
;  .dw VE_HEAD
;  .set VE_HEAD = VE_SLITERAL
XT_SLITERAL:
  .dw DO_COLON
PFA_SLITERAL:
  .dw XT_R_FROM   ; ( -- addr )
  .dw XT_DUP      ; ( -- addr addr )
  .dw XT_ICOUNT   ; ( -- addr addr' n )
  .dw XT_ROT      ; ( -- addr' n addr )
  .dw XT_OVER     ; ( -- addr' n addr n)
  .dw XT_2SLASH   ; ( -- addr' n addr k )
  .dw XT_1PLUS    ; ( -- addr' n addr k+1 )
  .dw XT_PLUS     ; ( -- addr' n addr'' )
  .dw XT_TO_R     ; ( -- )
  .dw XT_EXIT
