; ( --  ) (C: "<spaces>name" -- )
; Compiler
; creates the vocabulary header without XT and data field (PF)
;VE_DOCREATE:
;    .dw $ff08
;    .db "(create)",0
;    .dw VE_HEAD
;    .set VE_HEAD = VE_DOCREATE
XT_DOCREATE:
    .dw DO_COLON
PFA_DOCREATE:
    .dw XT_DP     ; ( -- dp)
    .dw XT_BL
    .dw XT_WORD   ; ( -- dp addr)
    .dw XT_COUNT  ; ( -- dp addr' n)
    .dw XT_DUP    ; ( -- dp addr' n n )
    .dw XT_GREATERZERO ;( -- dp addr' n f )
    .dw XT_DOCONDBRANCH
    .dw PFA_DOCREATE4 ; ( -- dp addr' n )
    .dw XT_DUP
    .dw XT_DOLITERAL
    .dw $ff00
    .dw XT_OR
    .dw XT_DOSCOMMA
    ; make voc link
    .dw XT_GET_CURRENT ; ( -- dp head )
    .dw XT_FETCHE
    .dw XT_COMMA       ; ( -- dp current)
    .dw XT_EXIT

PFA_DOCREATE4:
    ; -16: attempt to use zero length string as a name
    .dw XT_DOLITERAL
    .dw -16
    .dw XT_THROW
