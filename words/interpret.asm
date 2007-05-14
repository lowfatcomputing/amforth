; ( -- ) System
; R(i*x - j*x )
; interpret input word by word. may throw exceptions
VE_INTERPRET:
    .db $09, "interpret"
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

    .dw XT_FIND
    .dw XT_QDUP
    .dw XT_EQUALZERO
    .dw XT_DOCONDBRANCH 
    .dw PFA_INTERPRET2
    .dw XT_NUMBER
    ; check state
    .dw XT_STATE
    .dw XT_FETCH
    .dw XT_NOTEQUALZERO
    .dw XT_DOCONDBRANCH
    .dw PFA_INTERPRET9
    ; 
    .dw XT_COMPILE
    .dw XT_DOLITERAL
    .dw XT_COMMA
PFA_INTERPRET9:
    .dw XT_DOBRANCH
    .dw PFA_INTERPRET3
PFA_INTERPRET2:
    ; either compile or execute
    .dw XT_GREATERZERO
    .dw XT_DOCONDBRANCH
    .dw PFA_INTERPRET5
    ; flag was 1: always execute
    .dw XT_EXECUTE
    .dw XT_DOBRANCH
    .dw PFA_INTERPRET6
PFA_INTERPRET5:
    ; check state
    .dw XT_STATE
    .dw XT_FETCH
    .dw XT_EQUALZERO
    .dw XT_DOCONDBRANCH
    .dw PFA_INTERPRET7
    ; state is zero, execute xt
    .dw XT_EXECUTE
    .dw XT_DOBRANCH
    .dw PFA_INTERPRET8
PFA_INTERPRET7:
    .dw XT_COMMA
PFA_INTERPRET8:
PFA_INTERPRET6:
PFA_INTERPRET3:
    .dw XT_DOBRANCH
    .dw PFA_INTERPRET1

PFA_INTERPRET4:
    .dw XT_DROP
    .dw XT_EXIT
