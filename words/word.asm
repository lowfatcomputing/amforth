; ( c -- addr ) Tools
; R( -- )
; skip leading delimiter characters and parses TIB to the next delimiter. copy the word into PAD
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

    .dw XT_SWAP        ; ( -- len' addr' )
    .dw XT_OVER        ; ( -- len' addr' len')
    .dw XT_R_FETCH     ; ( -- len' addr' len' c)
    .dw XT_CSKIP       ; ( -- len' addr'' len'')
    .dw XT_ROT         ; ( -- addr'' len'' len')
    .dw XT_OVER        ; ( -- addr'' len'' len' len'')
    .dw XT_MINUS       ; ( -- addr'' len'' dlen)
    .dw XT_G_IN        ; ( -- addr'' len'' dlen >in)
    .dw XT_PLUSSTORE   ; ( -- addr'' len'')
    
    .dw XT_R_FROM      ; ( -- addr'' len'' c)
    .dw XT_CSCAN       ; ( -- addr''' len''')
    .dw XT_DUP         ; ( -- addr''' len''' len''')
    .dw XT_1PLUS       ;
    .dw XT_G_IN
    .dw XT_PLUSSTORE   ; ( -- addr''' len''')
    .dw XT_PAD         ; ( -- addr''' len''' pad)
    .dw XT_OVER        ; ( -- addr''' len''' pad len''')
    .dw XT_OVER        ; ( -- addr''' len''' pad len''' pad)
    .dw XT_CSTORE      ; ( -- addr''' len''' pad)
    .dw XT_1PLUS       ; ( -- addr''' len''' pad+1)
    .dw XT_SWAP        ; ( -- addr''' pad+1 len''')
    .dw XT_CMOVE_G     ; ( --- )
    .dw XT_PAD

    .dw XT_ZERO	       ; append a zero byte. find/icompare _does_ need it
    .dw XT_PAD         
    .dw XT_DUP
    .dw XT_CFETCH
    .dw XT_PLUS        ; ( -- pad pad+len )
    .dw XT_1PLUS
    .dw XT_CSTORE
    .dw XT_EXIT
