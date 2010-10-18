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
    .dw PFA_INTERPRET4
    .dw XT_REC_FIND     ; ( addr -- flag )
    .dw XT_DOCONDBRANCH
    .dw PFA_INTERPRET2
    .dw XT_REC_INTNUMBER
    .dw XT_DOCONDBRANCH
    .dw PFA_INTERPRET2
    .dw XT_DOTS
    .dw XT_REC_NOTFOUND
PFA_INTERPRET2:
    .dw XT_QSTACK
    .dw XT_DOBRANCH
    .dw PFA_INTERPRET1

PFA_INTERPRET4:
    .dw XT_DROP
    .dw XT_EXIT

