;;; usart driver, receiving

#include <avr/io.h>
/*.set    xh     , 27  ;; added
.set    xl     , 26  ;; added
.set    yh     , 29  ;; added
.set    yl     , 28  ;; added
.set    zh     , 31  ;; added
.set    zl     , 30  ;; added
.equ    SREG   , 0x3f ;; added
.equ    UCSR0A , 0xc0  ; MEMORY MAPPED ;; added
*/
.set pc_,  .
.org URXCaddr
  jmp_ usart_rx_isr
.org pc_

; sizes have to be powers of 2!
.equ usart_rx_size,  0x10
.equ usart_rx_mask,  usart_rx_size - 1
.data
usart_rx_in: .byte 1
usart_rx_out: .byte 1
usart_rx_data: .byte usart_rx_size+2
.text

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; forth code:
; : rx-isr USART_DATA c@
;    usart_rx_data usart_rx_in c@ dup >r
;    + !
;    r> 1+ usart_rx_mask and usart_rx_in c!
; ;
; setup with
; ' rx-isr URXCaddr int!
usart_rx_isr:
  push XL
  in XL, _SFR_IO_ADDR(SREG)
  push XL
  push XH
  push ZL
  push ZH

  lds XH, USART_DATA
  ; optional: check for certain character(s) (e.g. CTRL-C)
  ; and trigger a soft interrupt instead of storing the
  ; charater into the input queue.
  lds XL,usart_rx_in
  ldi ZL, lo8(usart_rx_data)
  ldi ZH, hi8(usart_rx_data)
  add ZL, XL
  adc ZH, zeroh
  st Z, XH

  inc XL
  andi XL,usart_rx_mask

  sts usart_rx_in, XL

usart_rx_isr_finish:
  pop ZH
  pop ZL
  pop XH
  pop XL
  out _SFR_IO_ADDR(SREG), XL
  pop XL
  reti

; ( -- ) Hardware Access
; R( --)
; initialize usart
;VE_USART_INIT_RX:
;  .word 0xff06
;  .ascii "+usart"
;  .word VE_HEAD
;  .set VE_HEAD, VE_USART_INIT_RX
XT_USART_INIT_RX_ISR:
  .word DO_COLON
PFA_USART_INIT_RX_ISR:          ; ( -- )
  .word XT_ZERO
  .word XT_DOLITERAL
  .word usart_rx_in
  .word XT_STORE

  .word XT_EXIT
