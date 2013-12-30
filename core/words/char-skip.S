; ( addr1 n1 c -- addr2 n2 ) 
; String
; skips leading occurancies in string at addr1/n1 leaving addr2/n2 pointing to the 1st non-c character
VE_CSKIP:
    .word 0xff05
    .string "cskip"
    .word VE_HEAD
    .set VE_HEAD, VE_CSKIP
XT_CSKIP:
    .word DO_COLON
PFA_CSKIP:
    .word XT_TO_R           ; ( -- addr1 n1 )
PFA_CSKIP1:
    .word XT_DUP            ; ( -- addr' n' n' )
    .word XT_DOCONDBRANCH   ; ( -- addr' n')
    .word PFA_CSKIP2
    .word XT_OVER           ; ( -- addr' n' addr' )
    .word XT_CFETCH         ; ( -- addr' n' c' )
    .word XT_R_FETCH        ; ( -- addr' n' c' c )
    .word XT_EQUAL          ; ( -- addr' n' f )
    .word XT_DOCONDBRANCH   ; ( -- addr' n')
    .word PFA_CSKIP2
    .word XT_DOLITERAL
    .word 1
    .word XT_SLASHSTRING
    .word XT_DOBRANCH
    .word PFA_CSKIP1
PFA_CSKIP2:
    .word XT_R_FROM
    .word XT_DROP           ; ( -- addr2 n2)
    .word XT_EXIT
