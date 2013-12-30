; ( --  ) (C: "<spaces>name" -- )
; Compiler
; parse the input and create an empty vocabulary entry without XT and data field (PF)
VE_DOCREATE:
    .word 0xff08
    .ascii "(create)"
    .word VE_HEAD
    .set VE_HEAD, VE_DOCREATE
XT_DOCREATE:
    .word DO_COLON
PFA_DOCREATE:
    .word XT_PARSENAME
    .word XT_WLSCOPE
    .word XT_DUP
    .word XT_TO_R
    .word XT_HEADER
    .word XT_R_FROM
.data
COLON_SMUDGE: .byte 4
.text
    .word XT_DOLITERAL
    .word COLON_SMUDGE+2
    .word XT_STORE		; save wid
    .word XT_DOLITERAL
    .word COLON_SMUDGE+0
    .word XT_STORE		; save NFA

    .word XT_EXIT
