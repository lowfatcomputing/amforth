; ( addr --  addr 0 | xt -1 | xt 1 ) 
; Tools
; search wordlists for entry taken as counted string from addr
VE_FIND:
    .word 0xff04
    .ascii "find"
    .word VE_HEAD
    .set VE_HEAD, VE_FIND
XT_FIND:
    .word DO_COLON
PFA_FIND:
    .word XT_DUP
    .word XT_COUNT
    .word XT_FINDNAME ; ( -- addr [xt] flag )
    .word XT_DUP
    .word XT_DOCONDBRANCH
    .word PFA_FIND1
       .word XT_ROT
       .word XT_DROP
PFA_FIND1:
    .word XT_EXIT
