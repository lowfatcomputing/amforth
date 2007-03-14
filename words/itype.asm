; R( -- )
; ( addr n --  )
VE_ITYPE:
    .db $05, "itype"
    .dw VE_HEAD
    .set VE_HEAD = VE_ITYPE
XT_ITYPE:
    .dw DO_COLON
PFA_ITYPE:
    .dw XT_DUP
    .dw XT_EQUALZERO
; IF
    .dw XT_DOCONDBRANCH
    .dw PFA_ITYPE1
    .dw XT_DROP
    .dw XT_DROP
    .dw XT_EXIT
; THEN

PFA_ITYPE1:
    .dw XT_DUP
    .dw XT_DOLITERAL
    .dw $0001
    .dw XT_EQUAL
; IF
    .dw XT_DOCONDBRANCH
    .dw PFA_ITYPE2
    .dw XT_DROP
	.dw XT_IFETCH
    .dw XT_HIEMIT
    .dw XT_EXIT
; THEN

PFA_ITYPE2:
    .dw XT_OVER
    .dw XT_IFETCH
    .dw XT_HIEMIT
    .dw XT_DUP
    .dw XT_2SLASH
    .dw XT_1MINUS   
    .dw XT_TO_R       ; >r  save k=m-1 
    .dw XT_R_FETCH    ; r@
    .dw XT_GREATERZERO
; IF
    .dw XT_DOCONDBRANCH
    .dw PFA_ITYPE4
    .dw XT_SWAP
    .dw XT_R_FETCH  ; r@  get k
    .dw XT_ZERO
 ; DO
    .dw XT_DODO
PFA_ITYPE3:
    .dw XT_1PLUS
    .dw XT_DUP
    .dw XT_IFETCH
    .dw XT_DUP
    .dw XT_LOEMIT
    .dw XT_HIEMIT
    .dw XT_DOLOOP
    .dw PFA_ITYPE3
 ; LOOP
    .dw XT_SWAP
; THEN

PFA_ITYPE4:
    .dw XT_SWAP
    .dw XT_1PLUS
    .dw XT_SWAP
    .dw XT_DOLITERAL
    .dw $0001
    .dw XT_AND
    .dw XT_EQUALZERO
; IF
    .dw XT_DOCONDBRANCH
    .dw PFA_ITYPE5
    .dw XT_IFETCH
    .dw XT_LOEMIT
    .dw XT_DOBRANCH
    .dw PFA_ITYPE6
; ELSE
PFA_ITYPE5:
    .dw XT_IFETCH
    .dw XT_DUP
    .dw XT_LOEMIT
    .dw XT_HIEMIT
; THEN
PFA_ITYPE6:
    .dw XT_R_FROM  ; remove k
    .dw XT_DROP
    .dw XT_EXIT

;;;;;;;;;;;;;;;;;;
;
;  : lo-emit ( w -- ) 
;    0ff and emit ;
;
;;;;;;;;;;;;;;;;;;

; ( w -- )    content of cell fetched on stack.
; VE_LOEMIT:
;    .db $06, "loemit"
;    .dw VE_HEAD
;    .set VE_HEAD = VE_LOEMIT
XT_LOEMIT:
    .dw DO_COLON
PFA_LOEMIT:
    .dw XT_DOLITERAL
    .dw $00ff
    .dw XT_AND
    .dw XT_EMIT
    .dw XT_EXIT



;;;;;;;;;;;;;;;;;;
;
; : hi-emit ( w -- ) 
;   8 rshift emit ;
;
;;;;;;;;;;;;;;;;;;

; ( w -- )    content of cell fetched on stack.
; VE_HIEMIT:
;    .db $06, "hiemit"
;    .dw VE_HEAD
;    .set VE_HEAD = VE_HIEMIT
XT_HIEMIT:
    .dw DO_COLON
PFA_HIEMIT:
	.dw XT_DOLITERAL
	.dw 8
	.dw XT_RSHIFT
	.dw XT_EMIT
	.dw XT_EXIT

