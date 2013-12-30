; ( c -- addr ) 
; Tools
; skip leading delimiter character and parse SOURCE until the next delimiter. copy the word to HERE
VE_WORD:
    .word 0xff04
    .ascii "word"
    .word VE_HEAD
    .set VE_HEAD, VE_WORD
XT_WORD:
    .word DO_COLON
PFA_WORD:
    .word XT_SKIPSCANCHAR ; factor for both parse/word
    ; move to HERE
    .word XT_HERE
    .word XT_PLACE
    ; leave result
    .word XT_HERE
    .word XT_EXIT
