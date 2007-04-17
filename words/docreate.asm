; ( --  )
; R( -- )
; creates the vocabulary header without XT and data field (PF)
;VE_DOCREATE:
;    .db $08, "(create)",0
;    .dw VE_HEAD
;    .set VE_HEAD = VE_DOCREATE
XT_DOCREATE:
    .dw DO_COLON
PFA_DOCREATE:
    .dw XT_HERE   ; ( -- here)
    .dw XT_BL
    .dw XT_WORD   ; ( -- here addr)
    .dw XT_COUNT  ; ( -- here addr' n)
    .dw XT_DUP    ; ( -- here addr' n n )
    .dw XT_GREATERZERO ;( -- here addr' n f )
    .dw XT_DOCONDBRANCH
    .dw PFA_DOCREATE4 ; ( -- here addr' n )
    .dw XT_SCOMMA
    ; make voc link
    .dw XT_HEAD       ; ( -- here head )
    .dw XT_EFETCH
    .dw XT_COMMA      ; ( -- here)
    .dw XT_HEAD       ; ( -- here head )
    .dw XT_ESTORE     ; ( -- )
    .dw XT_EXIT

PFA_DOCREATE4:
    .dw XT_DROP
    .dw XT_DROP
    .dw XT_DROP
    .dw XT_EXIT
