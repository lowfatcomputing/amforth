; ( --  ) (C: "<spaces>name" -- )
; Compiler
; parse the input and create an empty vocabulary entry without XT and data field (PF)
VE_DOCREATE:
    .dw $ff08
    .db "(create)"
    .dw VE_HEAD
    .set VE_HEAD = VE_DOCREATE
XT_DOCREATE:
    .dw DO_COLON
PFA_DOCREATE:
    .dw XT_PARSENAME
    .dw XT_WLSCOPE
    .dw XT_DUP
    .dw XT_TO_R
    .dw XT_HEADER
    .dw XT_R_FROM
.dseg
COLON_SMUDGE: .byte 4
.cseg
    .dw XT_DOLITERAL
    .dw COLON_SMUDGE+2
    .dw XT_STORE		; save wid
    .dw XT_DOLITERAL
    .dw COLON_SMUDGE+0
    .dw XT_STORE		; save NFA

    .dw XT_EXIT

; ( addr len -- wid )
; Compiler
; wlscope, "wordlist scope" ( addr len -- addr' len' wid ), is a deferred word
; which enables the AmForth application to choose the wordlist ( wid ) for the
; new voc entry based on the input ( addr len ) string. The name of the new voc
; entry ( addr' len' ) may be different from the input string. Note that all
; created voc entry types pass through the wlscope mechanism. The default
; wlscope action passes the input string to the output without modification and
; uses get-current to select the wid.
VE_WLSCOPE:
    .dw $ff07
    .db "wlscope",0
    .dw VE_HEAD
    .set VE_HEAD = VE_WLSCOPE
XT_WLSCOPE:
    .dw PFA_DODEFER
PFA_WLSCOPE:
    .dw EE_WLSCOPE
    .dw XT_EDEFERFETCH
    .dw XT_EDEFERSTORE
