; ( --  ) (C: "<spaces>name" -- voc-link )
; Compiler
; parse the input and create an vocabulary entry without XT and data field (PF)
VE_DOCREATE:
    .dw $ff08
    .db "(create)"
    .dw VE_HEAD
    .set VE_HEAD = VE_DOCREATE
XT_DOCREATE:
    .dw DO_COLON
PFA_DOCREATE:
    .dw XT_PARSENAME 
    .dw XT_GET_CURRENT 
    .dw XT_HEADER
    .dw XT_EXIT

; ( addr len wid -- voc-link )
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
    .dw XT_TO_R
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
    .dw XT_R_FROM
    .dw XT_FETCHE        
    .dw XT_COMMA       
    .dw XT_R_FROM
    .dw XT_EXIT

PFA_HEADER1:
    ; -16: attempt to use zero length string as a name
    .dw XT_DOLITERAL
    .dw -16
    .dw XT_THROW

