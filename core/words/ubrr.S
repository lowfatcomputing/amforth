; ( -- v) 
; MCU
; returns usart UBRR settings
VE_UBRR:
  .word 0xff04
  .ascii "ubrr"
  .word VE_HEAD
  .set VE_HEAD,  VE_UBRR
XT_UBRR:
  .word PFA_DOVALUE1
PFA_UBRR:          ; ( -- )
  .word EE_UBRRVAL
  .word XT_EVALUEFETCH
  .word XT_EVALUESTORE
