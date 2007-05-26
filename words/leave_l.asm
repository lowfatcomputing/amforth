; ( <mark >mark1 >mark2 --  <mark >mark1 >mark2 ) Control Structure
; cave!:
; <mark >mark1 are left there for do ... loop
; >mark2 is left by IF ... THEN

; R( -- )
; compile (leave) and resolve branch to leave a do...loop at once.
VE_LEAVEL:
    .db $87, "leave_l"
    .dw VE_HEAD
    .set VE_HEAD = VE_LEAVEL
XT_LEAVEL:
    .dw DO_COLON
PFA_LEAVEL:
    .dw XT_COMPILE
    .dw XT_DOLEAVEL
    .dw XT_TO_R
    .dw XT_TO_R
    .dw XT_DUP
    .dw XT_COMMA
    .dw XT_R_FROM
    .dw XT_R_FROM
    .dw XT_EXIT

; LEAVE has to be used in the form of:
;   : ccc  ...  IF ... LEAVE THEN ... LOOP ;
; or
;   : ccc  ...  IF ... LEAVE THEN ... n +LOOP ;
;
; Otherwise LEAVE will not resolve its backwards reference properly.