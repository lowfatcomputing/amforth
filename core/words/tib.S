; ( -- addr ) 
; System Variable
; terminal input buffer address
VE_TIB:
    .word 0xff03
    .string "tib"
    .word VE_HEAD
    .set VE_HEAD, VE_TIB
XT_TIB:
    .word PFA_DOVARIABLE
PFA_TIB:
    .word ram_tib
    
.data
ram_tib: .byte TIBSIZE
.text
; ( -- f ) 
; System
; refills the input buffer
VE_REFILLTIB:
    .word 0xff0a
    .ascii "refill-tib"
    .word VE_HEAD
    .set VE_HEAD, VE_REFILLTIB
XT_REFILLTIB:
    .word DO_COLON
PFA_REFILLTIB:
    .word XT_TIB
    .word XT_DOLITERAL
    .word TIBSIZE
    .word XT_ACCEPT
    .word XT_NUMBERTIB
    .word XT_STORE
    .word XT_ZERO
    .word XT_G_IN
    .word XT_STORE
    .word XT_DOLITERAL
    .word -1
    .word XT_EXIT

; ( -- addr n ) 
; System
; address and current length of the input buffer
VE_SOURCETIB:
    .word 0xFF0A
    .ascii "source-tib"
    .word VE_HEAD
    .set VE_HEAD, VE_SOURCETIB
XT_SOURCETIB:
    .word DO_COLON
PFA_SOURCETIB:
    .word XT_TIB
    .word XT_NUMBERTIB
    .word XT_FETCH
    .word XT_EXIT


