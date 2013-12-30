; ( --  ) 
; Tools
; check stack underflow, throw exception -4
VE_QSTACK:
    .word 0xff06
    .ascii "?stack"
    .word VE_HEAD
    .set VE_HEAD, VE_QSTACK
XT_QSTACK:
    .word DO_COLON
PFA_QSTACK:
; : ?stack ( -- )
;    depth 0< if -&4 throw then
; ;
    .word XT_DEPTH
    .word XT_LESSZERO
    .word XT_DOCONDBRANCH
    .word PFA_QSTACK1
      .word XT_DOLITERAL
      .word -4
      .word XT_THROW
PFA_QSTACK1:
    .word XT_EXIT
