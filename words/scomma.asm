; ( addr len -- )
; R( -- )
; compiles a string from RAM to Flash
VE_SCOMMA:
  .db $02,"s,",0
  .dw VE_HEAD
  .set VE_HEAD = VE_SCOMMA
XT_SCOMMA:
    .dw DO_COLON
PFA_SCOMMA:
    .dw XT_DUP
    .dw XT_2SLASH      ; ( -- addr n k )
    .dw XT_1PLUS       ; ( -- addr n k+1)
    .dw XT_ZERO        ; ( -- addr n k+1 0)
    .dw XT_TO_R
    .dw XT_TO_R
    .dw XT_OVER        ; ( -- addr n addr)
    .dw XT_CFETCH      ; ( -- addr n c )
    .dw XT_DOLITERAL
    .dw 8
    .dw XT_LSHIFT
    .dw XT_OR
    .dw XT_COMMA       ; ( -- addr )
    .dw XT_1PLUS       ; ( -- addr
    .dw XT_R_FROM
    .dw XT_1MINUS
    .dw XT_R_FROM
    .dw XT_DODO        ; ( -- addr)
PFA_SCOMMA1:
    .dw XT_DUP         ; ( -- addr addr )
    .dw XT_FETCH       ; ( -- addr c1c2 )
    .dw XT_COMMA       ; ( -- addr )
    .dw XT_1PLUS       ; ( -- addr+1 )
    .dw XT_1PLUS       ; ( -- addr+2 )
    .dw XT_DOLOOP
    .dw PFA_SCOMMA1
    .dw XT_DROP        ; ( -- )
    .dw XT_EXIT
