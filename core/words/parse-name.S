; ( "<name>" -- c-addr u ) 
; String
; In the SOURCE buffer parse whitespace delimited string. Returns string address within SOURCE.
VE_PARSENAME:
    .word 0xFF0A 
    .ascii "parse-name"
    .word VE_HEAD
    .set VE_HEAD, VE_PARSENAME
XT_PARSENAME:
    .word DO_COLON 
PFA_PARSENAME:
    .word XT_BL
    .word XT_SKIPSCANCHAR
    .word XT_EXIT 

; ( c -- addr2 len2 ) 
; String
; skips char and scan what's left in source for char
;VE_SKIPSCANCHAR:
;    .word 0xFF0A 
;    .ascii "skipscanchar"
;    .word VE_HEAD
;    .set VE_HEAD, VE_SKIPSCANCHAR
XT_SKIPSCANCHAR:
    .word DO_COLON
PFA_SKIPSCANCHAR:
    .word XT_TO_R
    .word XT_SOURCE 
    .word XT_G_IN 
    .word XT_FETCH 
    .word XT_SLASHSTRING 

    .word XT_R_FETCH
    .word XT_CSKIP
    .word XT_R_FROM
    .word XT_CSCAN

    ; adjust >IN
    .word XT_2DUP
    .word XT_PLUS
    .word XT_SOURCE 
    .word XT_DROP
    .word XT_MINUS
    .word XT_G_IN
    .word XT_STORE
    .word XT_EXIT
