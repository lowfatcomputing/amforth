; ( -- n ) Extended VM
; R( -- )
; Read memory pointed to by register A  
VE_AFETCH:
    .db $02, "a@",0
    .dw VE_HEAD
    .set VE_HEAD = VE_AFETCH
XT_AFETCH:
    .dw PFA_AFETCH
PFA_AFETCH:
    savetos
    movw zl, al
    ld tosl, Z+
    ld tosh, Z+
    rjmp DO_NEXT

; ( offs -- n ) Extended VM
; R( -- )
; Read memory pointed to by register A plus offset  
VE_NAFETCH:
    .db $03, "na@"
    .dw VE_HEAD
    .set VE_HEAD = VE_NAFETCH
XT_NAFETCH:
    .dw PFA_NAFETCH
PFA_NAFETCH:
    movw zl, al
    add zl, tosl
    adc zh, ah
    ld tosl, Z+
    ld tosh, Z+
    rjmp DO_NEXT

; ( -- n ) Extended VM
; R( -- )
; Read memory pointed to by register A, increment A by 1 cell  
VE_AFETCHPLUS:
    .db $03, "a@+"
    .dw VE_HEAD
    .set VE_HEAD = VE_AFETCHPLUS
XT_AFETCHPLUS:
    .dw PFA_AFETCHPLUS
PFA_AFETCHPLUS:
    savetos
    movw zl, al
    ld tosl, Z+
    ld tosh, Z+
    movw al, zl
    rjmp DO_NEXT

; ( -- n ) Extended VM
; R( -- )
; Read memory pointed to by register A, decrement A by 1 cell  
VE_AFETCHMINUS:
    .db $03, "a@-"
    .dw VE_HEAD
    .set VE_HEAD = VE_AFETCHMINUS
XT_AFETCHMINUS:
    .dw PFA_AFETCHMINUS
PFA_AFETCHMINUS:
    savetos
    movw zl, al
    ld tosl, -Z
    ld tosh, -Z
    movw al, zl
    rjmp DO_NEXT

; ( n -- ) Extended VM
; R( -- )
; Write memory pointed to by register A  
VE_ASTORE:
    .db $02, "a!",0
    .dw VE_HEAD
    .set VE_HEAD = VE_ASTORE
XT_ASTORE:
    .dw PFA_ASTORE
PFA_ASTORE:
    movw zl, al
    st Z+, tosl
    st Z+, tosh
    loadtos
    rjmp DO_NEXT

; ( n offs -- ) Extended VM
; R( -- )
; Write memory pointed to by register A plus offset  
VE_NASTORE:
    .db $03, "na!"
    .dw VE_HEAD
    .set VE_HEAD = VE_NASTORE
XT_NASTORE:
    .dw PFA_NASTORE
PFA_NASTORE:
    movw zl, al
    add zl, tosl
    adc zh, tosh
    loadtos
    st Z+, tosl
    st Z+, tosh
    loadtos
    rjmp DO_NEXT

; ( n -- ) Extended VM
; R( -- )
; Write memory pointed to by register A, increment A by 1 cell  
VE_ASTOREPLUS:
    .db $03, "a!+"
    .dw VE_HEAD
    .set VE_HEAD = VE_ASTOREPLUS
XT_ASTOREPLUS:
    .dw PFA_ASTOREPLUS
PFA_ASTOREPLUS:
    movw zl, al
    st Z+, tosl
    st Z+, tosh
    loadtos
    movw al, zl
    rjmp DO_NEXT

; ( n -- ) Extended VM
; R( -- )
; Write memory pointed to by register A, decrement A by 1 cell  
VE_ASTOREMINUS:
    .db $03, "a!-"
    .dw VE_HEAD
    .set VE_HEAD = VE_ASTOREMINUS
XT_ASTOREMINUS:
    .dw PFA_ASTOREMINUS
PFA_ASTOREMINUS:
    movw zl, al
    st -Z, tosl
    st -Z, tosh
    loadtos
    movw al, zl
    rjmp DO_NEXT

; ( n -- ) Extended VM
; R( -- )
; Write to A register  
VE_TO_A:
    .db $02, ">a",0
    .dw VE_HEAD
    .set VE_HEAD = VE_TO_A
XT_TO_A:
    .dw PFA_TO_A
PFA_TO_A:
    movw al, tosl
    loadtos
    rjmp DO_NEXT

; ( -- n ) Extended VM
; R( -- )
; read the A register  
VE_A_FROM:
    .db $02, "a>",0
    .dw VE_HEAD
    .set VE_HEAD = VE_A_FROM
XT_A_FROM:
    .dw PFA_A_FROM
PFA_A_FROM:
    savetos
    movw tosl, al
    rjmp DO_NEXT

; for more information read
; http://www.complang.tuwien.ac.at/anton/euroforth/ef08/papers/pelc.pdf
;  adapted index based access from X/Y registers
;    note: offset is byte address, not cell!
