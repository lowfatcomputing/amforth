; ( n <name> -- ) 
; Tools
; store the TOS to the named value (eeprom cell)
VE_TO:
    .word 0x0002
    .ascii "to"
    .word VE_HEAD
    .set VE_HEAD, VE_TO
XT_TO:
    .word DO_COLON
PFA_TO:
    .word XT_TICK
    .word XT_1PLUS  		; to body
    .word XT_STATE
    .word XT_FETCH
    .word XT_DOCONDBRANCH
    .word PFA_TO1
    .word XT_COMPILE
    .word XT_DOTO
    .word XT_COMMA
    .word XT_EXIT

; ( n -- ) (R: IP -- IP+1)
; Tools
; runtime portion of to
;VE_DOTO:
;    .word 0xff04
;    .ascii "(to)"
;    .word VE_HEAD
;    .set VE_HEAD, VE_DOTO
XT_DOTO:
    .word DO_COLON
PFA_DOTO:
    .word XT_R_FROM
    .word XT_DUP
    .word XT_1PLUS
    .word XT_TO_R
    .word XT_FETCHI
PFA_TO1:
    .word XT_DUP
    .word XT_1PLUS
    .word XT_1PLUS
    .word XT_FETCHI
    .word XT_EXECUTE
    .word XT_EXIT
