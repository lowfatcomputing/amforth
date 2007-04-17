; ( char "ccc<char>" -- c-addr u )
; R( -- )
; in input buffer parse ccc delimited string by the delimiter char.
VE_PARSE:
    .db $5, "parse"
    .dw VE_HEAD
    .set VE_HEAD = VE_PARSE
XT_PARSE:
    .dw DO_COLON
PFA_PARSE:
    .dw XT_TO_R
    .dw XT_SOURCE
    .dw XT_G_IN
    .dw XT_FETCH
    .dw XT_SLASHSTRING
    .dw XT_OVER
    .dw XT_SWAP
    .dw XT_R_FROM
    .dw XT_CSCAN
    .dw XT_TO_R
    .dw XT_OVER
    .dw XT_MINUS
    .dw XT_DUP
    .dw XT_R_FROM
    .dw XT_NOTEQUALZERO
    .dw XT_MINUS
    .dw XT_G_IN
    .dw XT_PLUSSTORE
    .dw XT_EXIT
