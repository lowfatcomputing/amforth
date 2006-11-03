VE_ENDCASE:
    .db $87, "endcase"
    .dw VE_HEAD
    .set VE_HEAD = VE_ENDCASE
XT_ENDCASE:
    .dw DO_COLON
PFA_ENDCASE:
PFA_ENDCASE1:
    .dw XT_QDUP
    .dw XT_DOCONDBRANCH
    .dw PFA_ENDCASE2
    .dw XT_DOLITERAL
    .dw XT_THEN
    .dw XT_COMMA
    .dw XT_DOBRANCH
    .dw PFA_ENDCASE1
    ; begin  ?dup while [compile] then  repeat
PFA_ENDCASE2:
    .dw XT_DOLITERAL
    .dw XT_DROP
    .dw XT_COMMA
    ; [ ' drop literal ] compile  ; immediate
    .dw XT_EXIT