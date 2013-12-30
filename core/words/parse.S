; ( char "ccc<char>" -- c-addr u ) 
; String
; in input buffer parse ccc delimited string by the delimiter char.
VE_PARSE:
    .word 0xff05
    .string "parse"
    .word VE_HEAD
    .set VE_HEAD, VE_PARSE
XT_PARSE:
    .word DO_COLON
PFA_PARSE:
    .word XT_TO_R     ; ( -- )
    .word XT_SOURCE   ; ( -- addr len)
    .word XT_G_IN     ; ( -- addr len >in)
    .word XT_FETCH
    .word XT_SLASHSTRING ; ( -- addr' len' )

    .word XT_R_FROM      ; ( -- addr' len' c)
    .word XT_CSCAN       ; ( -- addr' len'')
    .word XT_DUP         ; ( -- addr' len'' len'')
    .word XT_1PLUS
    .word XT_G_IN        ; ( -- addr' len'' len'' >in)
    .word XT_PLUSSTORE   ; ( -- addr' len')
    .word XT_DOLITERAL
    .word 1
    .word XT_SLASHSTRING
    .word XT_EXIT
