; ( ud1 c-addr1 u1 -- ud2 c-addr2 u2 ) 
; Numeric IO
; convert a string to a number  c-addr2/u2 is the unconverted string
VE_TO_NUMBER:
    .word 0xff07
    .string ">number"
    .word VE_HEAD
    .set VE_HEAD, VE_TO_NUMBER
XT_TO_NUMBER:
    .word DO_COLON
PFA_TO_NUMBER:
    .word XT_DUP
    .word XT_DOCONDBRANCH
    .word PFA_TO_NUMBER1
        .word XT_OVER
        .word XT_CFETCH
        .word XT_DIGITQ
        .word XT_EQUALZERO
        .word XT_DOCONDBRANCH
        .word PFA_TO_NUMBER2
            .word XT_EXIT
PFA_TO_NUMBER2:
        .word XT_TO_R
        .word XT_2SWAP
        .word XT_R_FROM
        .word XT_SWAP
        .word XT_BASE
        .word XT_FETCH
        .word XT_UMSTAR
        .word XT_DROP
        .word XT_ROT
        .word XT_BASE
        .word XT_FETCH
        .word XT_UMSTAR
        .word XT_DPLUS
        .word XT_2SWAP
        .word XT_DOLITERAL
        .word 1
        .word XT_SLASHSTRING
    .word XT_DOBRANCH
    .word PFA_TO_NUMBER
PFA_TO_NUMBER1:
    .word XT_EXIT

;: >number  ( ud1 c-addr1 u1 -- ud2 c-addr2 u2 )
;  \ convert double number, leaving address of first unconverted byte
;   begin  dup  while                  ( ud adr len )
;      over c@  base @  digit          ( ud adr len  digit true  |  char false )
;      0=  if  drop exit  then         ( ud adr len  digit )
;      >r  2swap  r>                   ( adr len ud  digit )
;      swap base @ um*  drop           ( adr len ud.low  digit ud.high' )
;      rot base @ um*  d+              ( adr len  ud' )
;      2swap  1 /string                ( ud' adr len )
;   repeat                             ( ud' adr len )
;;
