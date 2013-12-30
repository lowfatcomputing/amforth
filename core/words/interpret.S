; ( -- ) (R: i*x - j*x )
; System
; interpret input word by word.
VE_INTERPRET:
    .word 0xff09
    .string "interpret"
    .word VE_HEAD
    .set VE_HEAD, VE_INTERPRET
XT_INTERPRET:
    .word DO_COLON
PFA_INTERPRET:
PFA_INTERPRET1:
    .word XT_PARSENAME ; ( -- addr len )
    .word XT_QDUP   ; ( -- addr len len )
    .word XT_GREATERZERO
    .word XT_DOCONDBRANCH
    .word PFA_INTERPRET5
    .word XT_DOLITERAL
    .word EE_RECOGNIZERLISTLEN
    .word XT_FETCHE       ; ( addr len rec # -- )
    .word XT_ZERO

    .word XT_DOQDO
    .word PFA_INTERPRET4
PFA_INTERPRET2:
    ; ( -- addr len )
    ; I comes from the return stack.
    .word XT_2DUP ; ( -- addr len addr len  )
    .word XT_I    ; ( -- addr len addr len i )
    .word XT_ROT  ; ( -- addr len len i addr )
    .word XT_ROT  ; ( -- addr len i addr len )
    .word XT_TO_R
    .word XT_TO_R

    .word XT_CELLS
    .word XT_DOLITERAL
    .word EE_RECOGNIZERLIST
    .word XT_PLUS
    .word XT_FETCHE

    .word XT_EXECUTE
    .word XT_R_FROM
    .word XT_R_FROM
    .word XT_ROT
    .word XT_DOCONDBRANCH
    .word PFA_INTERPRET3
      .word XT_LEAVE
PFA_INTERPRET3:
    .word XT_DOLOOP
    .word PFA_INTERPRET2
PFA_INTERPRET4:
    .word XT_2DROP
    .word XT_QSTACK
    .word XT_DOBRANCH
    .word PFA_INTERPRET1
PFA_INTERPRET5:
    .word xT_DROP
    .word XT_EXIT

