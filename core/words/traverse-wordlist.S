; ( nt -- addr len ) 
; Tools Ext (2012)
; get a (flash) string from a name token nt
VE_NAME2STRING:
    .word 0xff0b
    .string "name>string"
    .word VE_HEAD
    .set VE_HEAD, VE_NAME2STRING
XT_NAME2STRING:
    .word DO_COLON
PFA_NAME2STRING:
    .word XT_ICOUNT   ; ( -- addr n )
    .word XT_DOLITERAL
    .word 0x00FF
    .word XT_AND      ; mask immediate bit
    .word XT_EXIT

; ( i*x xt wid -- j*x ) 
; Tools Ext (2012)
; call the xt for every member of the wordlist wid until xt returns false
VE_TRAVERSEWORDLIST:
    .word 0xff11
    .string "traverse-wordlist"
    .word VE_HEAD
    .set VE_HEAD, VE_TRAVERSEWORDLIST
XT_TRAVERSEWORDLIST:
    .word DO_COLON
PFA_TRAVERSEWORDLIST:
    .word XT_FETCHE
PFA_TRAVERSEWORDLIST1:
    .word XT_DUP           ; ( -- xt nt nt )
    .word XT_DOCONDBRANCH  ; ( -- nt ) is nfa = counted string
    .word PFA_TRAVERSEWORDLIST2       ;
    .word XT_2DUP
    .word XT_TO_R
    .word XT_TO_R
    .word XT_SWAP
    .word XT_EXECUTE
    .word XT_R_FROM
    .word XT_R_FROM
    .word XT_ROT
    .word XT_DOCONDBRANCH
    .word PFA_TRAVERSEWORDLIST2
    .word XT_NFA2LFA
    .word XT_FETCHI        ; ( -- addr )
    .word XT_DOBRANCH      ; ( -- addr )
    .word PFA_TRAVERSEWORDLIST1       ; ( -- addr )
PFA_TRAVERSEWORDLIST2:
    .word XT_2DROP
    .word XT_EXIT

; : traverse-wordlist ( i*x xt wid -- i*x' ) 
;        begin @ dup 
;        while 
;          2dup 2>r 
;          cell + swap execute ( i*x nt -- i*x' f ) 
;          2r> rot 
;        while repeat then 2drop ; 
