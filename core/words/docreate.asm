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
    .dw XT_OVER
    .dw XT_OVER
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
; wlscope, "wordlist scope", is a deferred word which enables AmForth
; appl to choose the wordlist for a new voc entry based on its name.
; For example, put all created words whose name begins with a tilde (~)
; on a private wordlist. The default action is get-current.
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

; ( addr len -- wid )
; Compiler
; default scope
VE_CURRENT_SCOPE:
    .dw $ff0d
    .db "current-scope",0
    .dw VE_HEAD
    .set VE_HEAD = VE_CURRENT_SCOPE
XT_CURRENT_SCOPE:
    .dw DO_COLON
PFA_CURRENT_SCOPE:
    .dw XT_DROP
    .dw XT_DROP
    .dw XT_GET_CURRENT
    .dw XT_EXIT

