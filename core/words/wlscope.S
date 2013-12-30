; ( addr len -- addr' len' wid )
; Compiler
; dynamically place a word in a wordlist. The word name may be changed.
VE_WLSCOPE:
    .word 0xff07
    .string "wlscope"
    .word VE_HEAD
    .set VE_HEAD, VE_WLSCOPE
XT_WLSCOPE:
    .word PFA_DODEFER
PFA_WLSCOPE:
    .word EE_WLSCOPE
    .word XT_EDEFERFETCH
    .word XT_EDEFERSTORE

; wlscope, "wordlist scope" ( addr len -- addr' len' wid ), is a deferred word
; which enables the AmForth application to choose the wordlist ( wid ) for the
; new voc entry based on the input ( addr len ) string. The name of the new voc
; entry ( addr' len' ) may be different from the input string. Note that all
; created voc entry types pass through the wlscope mechanism. The default
; wlscope action passes the input string to the output without modification and
; uses get-current to select the wid.
