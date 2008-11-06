; ( addr -- [ addr 0 ] | [ xt [-1|1]] ) Tools
; R( -- )
; search dictionary
VE_FIND:
    .dw $ff04
    .db "find"
    .dw VE_HEAD
    .set VE_HEAD = VE_FIND
XT_FIND:
    .dw DO_COLON
PFA_FIND:
    .dw XT_DUP   ; ( -- addr
    .dw XT_COUNT ; ( -- addr addr+1 len )
    .dw XT_HEAD
    .dw XT_DOFIND ; ( -- addr [ 0 | xt +/-1 ] )
    .dw XT_DUP
    .dw XT_DOCONDBRANCH
    .dw PFA_FIND1
      .dw XT_ROT
      .dw XT_DROP
PFA_FIND1:
    .dw XT_EXIT

; ( c-addr len searchstart -- [ 0 ] | [ xt [-1|1]] ) Tools
; R( -- )
; search a dictionary in flash
VE_DOFIND:
    .dw $ff06
    .db "(find)"
    .dw VE_HEAD
    .set VE_HEAD = VE_DOFIND
XT_DOFIND:
    .dw DO_COLON
PFA_DOFIND:
    .dw XT_DUP
    .dw XT_EQUALZERO
    .dw XT_DOCONDBRANCH
    .dw PFA_DOFIND1
      ; terminating 0 found
      .dw XT_DROP
      .dw XT_DROP
      .dw XT_DROP
      .dw XT_ZERO
      .dw XT_EXIT
PFA_DOFIND1:
    .dw XT_TO_R
    .dw XT_OVER
    .dw XT_OVER
    .dw XT_R_FETCH
    .dw XT_ICOUNT
    .dw XT_ICOMPARE
    .dw XT_DOCONDBRANCH
    .dw PFA_DOFINDNEXT
      ; we found the string
      .dw XT_DROP
      .dw XT_DROP
      .dw XT_R_FROM ; ( -- iaddr )
      .dw XT_ICOUNT
      .dw XT_DUP
      .dw XT_TO_R   ; save flags
      .dw XT_DOLITERAL
      .dw $00ff
      .dw XT_AND
      .dw XT_1PLUS
      .dw XT_2SLASH
      .dw XT_PLUS
      .dw XT_1PLUS
      .dw XT_DOLITERAL
      .dw 1
      .dw XT_R_FROM ; change flags
      .dw XT_LESSZERO
      .dw XT_DOCONDBRANCH
      .dw PFA_DOFINDIMMEDIATE
      .dw XT_NEGATE
PFA_DOFINDIMMEDIATE:
      .dw XT_EXIT
PFA_DOFINDNEXT:
      ; next try
      .dw XT_R_FROM
      .dw XT_ICOUNT
      .dw XT_DOLITERAL
      .dw $00ff
      .dw XT_AND
      .dw XT_1PLUS
      .dw XT_2SLASH
      .dw XT_PLUS
      .dw XT_IFETCH
      .dw XT_DOBRANCH
      .dw PFA_DOFIND
