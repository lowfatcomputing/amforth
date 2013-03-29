; ( --  ) (C: "<spaces>name" -- lfa wid )
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
    .dw XT_HEADER
    .dw XT_EXIT

; ( addr len -- wid )
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

; ( addr len wid -- lfa wid)
; Compiler
; creates the vocabulary header without XT and data field (PF) in the wordlist wid
VE_HEADER:
    .dw $ff06
    .db "header"
    .dw VE_HEAD
    .set VE_HEAD = VE_HEADER
XT_HEADER:
    .dw DO_COLON
PFA_HEADER:
    .dw XT_DP     
    .dw XT_TO_R
    .dw XT_TO_R			; ( R: voc-link wid )
    .dw XT_DUP    
    .dw XT_GREATERZERO 
    .dw XT_DOCONDBRANCH
    .dw PFA_HEADER1
    .dw XT_DUP
    .dw XT_DOLITERAL
    .dw $ff00
    .dw XT_OR
    .dw XT_DOSCOMMA
    ; make voc link
    .dw XT_R_FETCH
    .dw XT_FETCHE
    .dw XT_COMMA
    .dw XT_R_FROM
    .dw XT_R_FROM		; ( wid voc-link )
    .dw XT_SWAP			; ( voc-link wid )
    .dw XT_EXIT

PFA_HEADER1:
    ; -16: attempt to use zero length string as a name
    .dw XT_DOLITERAL
    .dw -16
    .dw XT_THROW

