; ( addr1 n1 c -- addr1 n2 ) 
; String
; Scan string at addr1/n1 for the first occurance of c, leaving addr1/n2, char at n2 is first non-c character
VE_CSCAN:
    .word 0xff05
    .string "cscan"
    .word VE_HEAD
    .set VE_HEAD, VE_CSCAN
XT_CSCAN:
    .word DO_COLON
PFA_CSCAN:
    .word XT_SWAP         ; ( -- addr1 c n1 )
    .word XT_DUP          ; ( -- addr1 c n1 n1)
    .word XT_TO_R         ; ( -- addr1 c n1)
    .word XT_ZERO         ; ( -- addr1 c n1 0)
    .word XT_DOQDO        ; ( -- addr1 c)
    .word PFA_CSCAN3
PFA_CSCAN1:
    .word XT_OVER         ; ( -- addr1 c addr1 )
    .word XT_I            ; ( -- addr1 c addr1 i)
    .word XT_PLUS         ; ( -- addr1 c addr')
    .word XT_CFETCH       ; ( -- addr1 c c')
    .word XT_OVER         ; ( -- addr1 c c' c)
    .word XT_EQUAL        ; ( -- addr1 c f)
    .word XT_DOCONDBRANCH ; ( -- addr1 c)
    .word PFA_CSCAN2
    .word XT_DROP         ; ( -- addr1 )
    .word XT_I            ; ( -- addr1 n2)
    .word XT_UNLOOP       ; ( -- addr1 n2)
    .word XT_R_FROM       ; ( -- addr1 n2 n1)
    .word XT_DROP         ; ( -- addr1 n2)
    .word XT_EXIT
PFA_CSCAN2:
    .word XT_DOLOOP
    .word PFA_CSCAN1      ; ( -- addr1 c)
PFA_CSCAN3:
    .word XT_DROP         ; ( -- addr1)
    .word XT_R_FROM       ; ( -- addr1 n1)
    .word XT_EXIT
