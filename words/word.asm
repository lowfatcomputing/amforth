; ( c -- addr ) Tools
; R( -- )
; skip leading delimiter characters and parses SOURCE to the next delimiter. copy the word to PAD
VE_WORD:
    .db $04, "word",0
    .dw VE_HEAD
    .set VE_HEAD = VE_WORD
XT_WORD:
    .dw DO_COLON
PFA_WORD:
    .dw XT_TO_R     ; ( -- )
    .dw XT_SOURCE   ; ( -- addr len)
    .dw XT_G_IN     ; ( -- addr len >in)
    .dw XT_FETCH
    .dw XT_SLASHSTRING ; ( -- addr' len' )
    ; skip leading char
    .dw XT_SWAP        ; ( -- len' addr' )
    .dw XT_OVER        ; ( -- len' addr' len')
    .dw XT_R_FETCH     ; ( -- len' addr' len' c)
    .dw XT_CSKIP       ; ( -- len' addr'' len'')
    .dw XT_ROT         ; ( -- addr'' len'' len')
    .dw XT_OVER        ; ( -- addr'' len'' len' len'')
    .dw XT_MINUS       ; ( -- addr'' len'' dlen)
    .dw XT_G_IN        ; ( -- addr'' len'' dlen >in)
    .dw XT_PLUSSTORE   ; ( -- addr'' len'')
    ; scan
    .dw XT_R_FROM      ; ( -- addr'' len'' c)
    .dw XT_CSCAN       ; ( -- addr''' len''')
    .dw XT_DUP         ; ( -- addr''' len''' len''')
    .dw XT_1PLUS       ;
    .dw XT_G_IN
    .dw XT_PLUSSTORE   ; ( -- addr''' len''')

    ; move to heap
    .dw XT_HEAP
    .dw XT_EFETCH      ; ( -- addr''' len''' heap)
    .dw XT_PLACE
    ; append a zero byte. find/icompare _does_ need it
    .dw XT_ZERO	       
    .dw XT_HEAP
    .dw XT_EFETCH         
    .dw XT_DUP
    .dw XT_CFETCH
    .dw XT_PLUS        ; ( -- addr addr+len )
    .dw XT_1PLUS
    .dw XT_CSTORE
    ; leave result
    .dw XT_HEAP
    .dw XT_EFETCH
    .dw XT_EXIT
