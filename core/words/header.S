; ( addr len wid -- nfa )
; Compiler
; creates the vocabulary header without XT and data field (PF) in the wordlist wid
VE_HEADER:
    .word 0xff06
    .ascii "header"
    .word VE_HEAD
    .set VE_HEAD, VE_HEADER
XT_HEADER:
    .word DO_COLON
PFA_HEADER:
    .word XT_DP           ; the new Name Field
    .word XT_TO_R
    .word XT_TO_R		; ( R: NFA WID )
    .word XT_DUP    
    .word XT_GREATERZERO 
    .word XT_DOCONDBRANCH
    .word PFA_HEADER1
    .word XT_DUP
    .word XT_DOLITERAL
    .word 0xff00           ; all flags are off (e.g. immediate)
    .word XT_OR
    .word XT_DOSCOMMA
    ; make the link to the previous entry in this wordlist
    .word XT_R_FROM
    .word XT_FETCHE
    .word XT_COMMA
    .word XT_R_FROM
    .word XT_EXIT

PFA_HEADER1:
    ; -16: attempt to use zero length string as a name
    .word XT_DOLITERAL
    .word -16
    .word XT_THROW

