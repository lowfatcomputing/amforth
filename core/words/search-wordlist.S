; ( c-addr len wid -- [ 0 ] | [ xt [-1|1]] ) 
; Search Order
; searches the word list wid for the word at c-addr/len
VE_SEARCH_WORDLIST:
    .word 0xff0f
    .string "search-wordlist"
    .word VE_HEAD
    .set VE_HEAD, VE_SEARCH_WORDLIST
XT_SEARCH_WORDLIST:
    .word DO_COLON
PFA_SEARCH_WORDLIST:
    .word XT_ZERO
    .word XT_SWAP
    .word XT_DOLITERAL
    .word XT_ISWORD
    .word XT_SWAP
    .word XT_TRAVERSEWORDLIST
    .word XT_DUP
    .word XT_EQUALZERO
    .word XT_DOCONDBRANCH
    .word PFA_SEARCH_WORDLIST1
       .word XT_2DROP
       .word XT_DROP
       .word XT_ZERO
PFA_SEARCH_WORDLIST1:
    .word XT_EXIT

XT_ISWORD:
    .word DO_COLON
PFA_ISWORD:
    ; ( c-addr len 0 nt -- c-addr len 0 true| xt +/-1 false )
    .word XT_TO_R
    .word XT_TO_R
    .word XT_2DUP
    .word XT_R_FROM
    .word XT_ROT
    .word XT_ROT
    .word XT_R_FETCH  ; -- addr len 0 addr len nt
    .word XT_NAME2STRING
    .word XT_ICOMPARE      ; (-- addr len 0 f )
    .word XT_DOCONDBRANCH
    .word PFA_ISWORD3
      ; we found the word, now clean up iteration data ...
      .word XT_2DROP
      .word XT_DROP
      ; ... get the XT ...
      .word XT_R_FETCH
      .word XT_NFA2LFA
      .word XT_1PLUS  ; lfa2xt
      ; .. and get the header flag
      .word XT_TRUE
      .word XT_R_FROM
      .word XT_FETCHI
      .word XT_GREATERZERO
      .word XT_DOCONDBRANCH
      .word PFA_ISWORD1
         .word XT_NEGATE  ; it's immediate
PFA_ISWORD1:
      .word XT_ZERO       ; finish traverse-wordlist
      .word XT_EXIT
PFA_ISWORD3:
    .word XT_R_FROM
    .word XT_DROP
    .word XT_TRUE         ; maybe next word
    .word XT_EXIT

