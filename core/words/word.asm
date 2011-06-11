; ( c -- addr ) 
; Tools
; skip leading delimiter character and parse SOURCE until the next delimiter. copy the word to HERE
VE_WORD:
    .dw $ff04
    .db "word"
    .dw VE_HEAD
    .set VE_HEAD = VE_WORD
XT_WORD:
    .dw DO_COLON
PFA_WORD:
    .dw XT_TO_R
    .dw XT_SOURCE 
    .dw XT_G_IN 
    .dw XT_FETCH 
    .dw XT_SLASHSTRING 

    .dw XT_R_FETCH
    .dw XT_CSKIP
    .dw XT_R_FROM
    .dw XT_CSCAN

    ; adjust >IN
    .dw XT_OVER
    .dw XT_OVER     
    .dw XT_PLUS     
    .dw XT_SOURCE 
    .dw XT_DROP     
    .dw XT_MINUS 
    .dw XT_G_IN 
    .dw XT_STORE 

    ; move to HERE
    .dw XT_HERE
    .dw XT_PLACE
    ; leave result
    .dw XT_HERE
    .dw XT_EXIT
