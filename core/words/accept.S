; ( addr +n1 -- +n2 ) 
; System
; receive a string of at most n1 characters at addr until n2 characters are reveived or cr/lf detected.
VE_ACCEPT:
    .word 0xff06
    .ascii "accept"
    .word VE_HEAD
    .set VE_HEAD, VE_ACCEPT
XT_ACCEPT:
    .word DO_COLON
PFA_ACCEPT:
    .word XT_DUP        ; ( -- addr n1 n1)
    .word XT_TO_R
    .word XT_TO_R
PFA_ACCEPT1:          ; ( -- addr )
    .word XT_KEY        ; ( -- addr k )
    .word XT_DUP        ; ( -- addr k k )
    .word XT_DOLITERAL
    .word 10
    .word XT_NOTEQUAL
    .word XT_DOCONDBRANCH
    .word PFA_ACCEPT2
    .word XT_DUP
    .word XT_DOLITERAL
    .word 13
    .word XT_NOTEQUAL
    .word XT_DOCONDBRANCH
    .word PFA_ACCEPT2
    ; check backspace
    .word XT_DUP
    .word XT_DOLITERAL
    .word 8
    .word XT_EQUAL
    .word XT_DOCONDBRANCH
    .word PFA_ACCEPT3
    ; delete previous character
    ; check beginning of line
    .word XT_R_FROM             ; ( -- addr k n1 )
    .word XT_R_FETCH            ; ( -- addr k n1 n2)
    .word XT_OVER               ; ( -- addr k n1 n2 n1)
    .word XT_TO_R
    .word XT_EQUAL              ; ( -- addr k f )
    .word XT_DOCONDBRANCH
    .word PFA_ACCEPT5
    ; we are at the beginning of the line, ignore this character
    .word XT_DROP               ; ( -- addr )
    .word XT_DOBRANCH
    .word PFA_ACCEPT1
PFA_ACCEPT5:
    .word XT_DUP                ; ( -- addr k k )
    .word XT_EMIT               ; ( -- addr k )
    .word XT_SPACE              ; ( -- addr k )
    .word XT_EMIT               ; ( -- addr )
    .word XT_1MINUS             ; ( -- addr--)
    .word XT_R_FROM
    .word XT_1PLUS
    .word XT_DOBRANCH
    .word PFA_ACCEPT4
PFA_ACCEPT3:
    ; check for remaining control characters, replace them with blank
    .word XT_DUP            ; ( -- addr k k )
    .word XT_BL
    .word XT_LESS
    .word XT_DOCONDBRANCH
    .word PFA_ACCEPT6
    .word XT_DROP
    .word XT_BL
PFA_ACCEPT6:
    ; emit the key
    .word XT_DUP            ; ( -- addr k k)
    .word XT_EMIT           ; ( -- addr k)
    ; now store the key
    .word XT_OVER           ; ( -- addr k addr
    .word XT_CSTORE         ; ( -- addr)
    .word XT_1PLUS          ; ( -- addr++)
    .word XT_R_FROM         ; ( -- addr n1)
    .word XT_1MINUS         ; ( -- addr n1--)
PFA_ACCEPT4:
    .word XT_DUP
    .word XT_TO_R
    .word XT_EQUALZERO
    .word XT_DOCONDBRANCH
    .word PFA_ACCEPT1
    .word XT_DUP
PFA_ACCEPT2:
    .word XT_2DROP
    .word XT_R_FROM
    .word XT_R_FROM
    .word XT_SWAP
    .word XT_MINUS
    .word XT_CR
    .word XT_EXIT

