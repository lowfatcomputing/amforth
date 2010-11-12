; ( -- ) System
; R(i*x - j*x )
; interpret input word by word. may throw exceptions
VE_INTERPRET:
    .dw $ff09
    .db "interpret",0
    .dw VE_HEAD
    .set VE_HEAD = VE_INTERPRET
XT_INTERPRET:
    .dw DO_COLON
PFA_INTERPRET:
PFA_INTERPRET1:
    .dw XT_BL
    .dw XT_WORD
    .dw XT_DUP
    .dw XT_CFETCH
    .dw XT_GREATERZERO
    .dw XT_DOCONDBRANCH
    .dw PFA_INTERPRET5
    .dw XT_DOLITERAL
    .dw EE_RECOGNIZERS
    .dw XT_DUP
    .dw XT_FETCHE       ; ( addr rec # -- )
    .dw XT_ZERO
    .dw XT_DOQDO
    .dw PFA_INTERPRET4
PFA_INTERPRET2:
    .dw XT_CELLPLUS
    .dw XT_TO_R
    .dw XT_R_FETCH
    .dw XT_FETCHE
    .dw XT_EXECUTE
    .dw XT_DOCONDBRANCH
    .dw PFA_INTERPRET3
      .dw XT_R_FROM
      .dw XT_DROP
      .dw XT_LEAVE
PFA_INTERPRET3:
    .dw XT_R_FROM
    .dw XT_DOLOOP
    .dw PFA_INTERPRET2
PFA_INTERPRET4:
    .dw XT_QSTACK
    .dw XT_DOBRANCH
    .dw PFA_INTERPRET1
PFA_INTERPRET5:
    .dw XT_DROP
    .dw XT_EXIT

