; ( ud1 c-addr1 u1 -- ud2 c-addr2 u2 ) Numeric IO
; R( -- )
; convert a string as long as possible
VE_TO_NUMBER:
    .dw $ff07
    .db ">number",0
    .dw VE_HEAD
    .set VE_HEAD = VE_TO_NUMBER
XT_TO_NUMBER:
    .dw DO_COLON
PFA_TO_NUMBER:
    .dw XT_DUP
    .dw XT_DOCONDBRANCH
    .dw PFA_TO_NUMBER1
        .dw XT_OVER
        .dw XT_CFETCH
        .dw XT_BASE
        .dw XT_FETCH
        .dw XT_DIGITQ
        .dw XT_EQUALZERO
        .dw XT_DOCONDBRANCH
        .dw PFA_TO_NUMBER2
            .dw XT_DROP
            .dw XT_EXIT
PFA_TO_NUMBER2:
        .dw XT_TO_R
        .dw XT_2SWAP
        .dw XT_R_FROM
        .dw XT_SWAP
        .dw XT_BASE
        .dw XT_FETCH
        .dw XT_UMSTAR
        .dw XT_DROP
        .dw XT_ROT
        .dw XT_BASE
        .dw XT_FETCH
        .dw XT_UMSTAR
        .dw XT_DPLUS
        .dw XT_2SWAP
        .dw XT_DOLITERAL
        .dw 1
        .dw XT_SLASHSTRING
    .dw XT_DOBRANCH
    .dw PFA_TO_NUMBER
PFA_TO_NUMBER1:
    .dw XT_EXIT
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

; ( ud1 c-addr1 u1 -- ud2 c-addr2 u2 ) Numeric IO
; R( -- )
; convert a string as long as possible
VE_2SWAP:
    .dw $ff05
    .db "2swap",0
    .dw VE_HEAD
    .set VE_HEAD = VE_2SWAP
XT_2SWAP:
    .dw DO_COLON
PFA_2SWAP:
    .dw XT_ROT
    .dw XT_TO_R
    .dw XT_ROT
    .dw XT_R_FROM
    .dw XT_EXIT
