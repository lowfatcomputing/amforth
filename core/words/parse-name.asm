; ( "<name>" -- c-addr u ) 
; String
; In the SOURCE buffer parse whitespace delimited string. Returns string address within SOURCE.
VE_PARSENAME:
    .dw $FF0A 
    .db "parse-name"
    .dw VE_HEAD
    .set VE_HEAD = VE_PARSENAME
XT_PARSENAME:
    .dw DO_COLON 
PFA_PARSENAME:
; ( "name" -- c-addr u ) 
    .dw XT_SOURCE 
    .dw XT_G_IN 
    .dw XT_FETCH 
    .dw XT_SLASHSTRING 
    .dw XT_DOLITERAL 
    .dw XT_ISSPACE
    .dw XT_XTSKIP
    .dw XT_OVER 
    .dw XT_TO_R 
    .dw XT_DOLITERAL 
    .dw XT_ISNOTSPACE
    .dw XT_XTSKIP
; ( end-word restlen r: start-word ) 
    .dw XT_OVER 
    .dw XT_OVER 
    .dw XT_DOLITERAL
    .dw $1 
    .dw XT_MIN 
    .dw XT_PLUS 
    .dw XT_SOURCE 
    .dw XT_DROP 
    .dw XT_MINUS 
    .dw XT_G_IN 
    .dw XT_STORE 
    .dw XT_DROP 
    .dw XT_R_FROM 
    .dw XT_SWAP 
    .dw XT_OVER 
    .dw XT_MINUS 
    .dw XT_EXIT 

;VE_ISSPACE:
;    .dw $FF08 
;    .db "isspace?"
;    .dw VE_HEAD
;    .set VE_HEAD = VE_ISSPACE
XT_ISSPACE:
    .dw DO_COLON 
PFA_ISSPACE:
; ( c -- f ) 
    .dw XT_BL 
    .dw XT_1PLUS  
    .dw XT_ULESS 
    .dw XT_EXIT 


;VE_ISNOTSPACE:
;    .dw $FF0B 
;    .db "isnotspace?",0
;    .dw VE_HEAD
;    .set VE_HEAD = VE_ISNOTSPACE
XT_ISNOTSPACE:
    .dw DO_COLON 
PFA_ISNOTSPACE:
; ( c -- f ) 
    .dw XT_ISSPACE
    .dw XT_EQUALZERO 
    .dw XT_EXIT 


;VE_XTSKIP:
;    .dw $FF07 
;    .db "xt-skip",0
;    .dw VE_HEAD
;    .set VE_HEAD = VE_XTSKIP
XT_XTSKIP:
    .dw DO_COLON 
PFA_XTSKIP:
; ( addr1 n1 xt -- addr2 n2 ) 
; gforth
; skip all characters satisfying xt ( c -- f )
    .dw XT_TO_R 
PFA_XTSKIP0:
    .dw XT_DUP 
    .dw XT_DOCONDBRANCH
    .dw PFA_XTSKIP2
    .dw XT_OVER 
    .dw XT_CFETCH 
    .dw XT_R_FETCH 
    .dw XT_EXECUTE 
    .dw XT_DOCONDBRANCH
    .dw PFA_XTSKIP2 
    .dw XT_DOLITERAL
    .dw $1 
    .dw XT_SLASHSTRING 
    .dw XT_DOBRANCH
    .dw PFA_XTSKIP0 
PFA_XTSKIP2:
PFA_XTSKIP1:
    .dw XT_R_FROM 
    .dw XT_DROP 
    .dw XT_EXIT 

