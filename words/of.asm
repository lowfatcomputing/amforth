VE_OF:
    .db $82, "of",0
    .dw VE_HEAD
    .set VE_HEAD = VE_OF
XT_OF:
    .dw DO_COLON
PFA_OF:
    .dw XT_DOLITERAL
    .dw XT_OVER
    .dw XT_COMMA
    ; [ ' over literal ] compile
    .dw XT_DOLITERAL
    .dw XT_EQUAL
    .dw XT_COMMA
    ; [ ' =    literal ] compile
    .dw XT_DOLITERAL
    .dw XT_IF
    .dw XT_COMMA
    ;  [compile] if ; immediate
    .dw XT_EXIT