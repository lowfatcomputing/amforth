; ( --  )
; R( -- )
; creates the vocabulary header without XT and data field (PF)
;VE_DOCREATE:
;    .dw $ff08
;    .db "(create)",0
;    .dw VE_HEAD
;    .set VE_HEAD = VE_DOCREATE
XT_DOCREATE:
    .dw DO_COLON
PFA_DOCREATE:
    .dw XT_DP     ; ( -- here)
    .dw XT_BL
    .dw XT_WORD   ; ( -- here addr)
    .dw XT_COUNT  ; ( -- here addr' n)
    .dw XT_DUP    ; ( -- here addr' n n )
    .dw XT_GREATERZERO ;( -- here addr' n f )
    .dw XT_DOCONDBRANCH
    .dw PFA_DOCREATE4 ; ( -- here addr' n )
    .dw XT_DUP
    .dw XT_DOLITERAL
    .dw $ff00
    .dw XT_OR
    .dw XT_DOSCOMMA
    ; make voc link
    .dw XT_GET_CURRENT ; ( -- here head )
    .dw XT_EFETCH
    .dw XT_COMMA       ; ( -- here current)
    .dw XT_EXIT

PFA_DOCREATE4:
    .dw XT_DROP
    .dw XT_DROP
    .dw XT_DROP
    .dw XT_EXIT
