;;; usart driver

;; bit definitions


.set pc_ = pc

.org URXCaddr
  rjmp usart0_rx_isr
.org UDREaddr
  rjmp usart0_udre_isr
.org pc_

; sizes have to be powers of 2!
.equ usart0_tx_size = $10
.equ usart0_rx_size = $10

.equ usart0_tx_mask = usart0_tx_size - 1
.equ usart0_rx_mask = usart0_rx_size - 1

.set usart0_tx_in = heap
.set heap = heap + 1

.set usart0_tx_out = heap
.set heap = heap + 1

.set usart0_tx_data = heap
.set heap = heap + usart0_tx_size

.set usart0_rx_in = heap
.set heap = heap + 1

.set usart0_rx_out = heap
.set heap = heap + 1

.set usart0_rx_data = heap
.set heap = heap + usart0_rx_size

; ( -- v) System Value
; R( -- )
; returns usart0 baudrate
VE_BAUD0:
  .db 05,"baud0"
  .dw VE_HEAD
  .set VE_HEAD = VE_BAUD0
XT_BAUD0:
  .dw PFA_DOVALUE
PFA_BAUD00:          ; ( -- )
  .dw 10

; ( -- ) Hardware Access
; R( --)
; initialize usart0
VE_USART0:
  .db $06, "usart0",0
  .dw VE_HEAD
  .set VE_HEAD = VE_USART0
XT_USART0:
  .dw DO_COLON
PFA_USART0:          ; ( -- )
  .dw XT_ZERO
  .dw XT_DOLITERAL
  .dw usart0_tx_in
  .dw XT_CSTORE

  .dw XT_ZERO
  .dw XT_DOLITERAL
  .dw usart0_tx_out
  .dw XT_CSTORE

  .dw XT_ZERO
  .dw XT_DOLITERAL
  .dw usart0_rx_in
  .dw XT_CSTORE

  .dw XT_ZERO
  .dw XT_DOLITERAL
  .dw usart0_rx_out
  .dw XT_CSTORE

  .dw XT_F_CPU
  .dw XT_D2SLASH
  .dw XT_D2SLASH
  .dw XT_D2SLASH
  .dw XT_D2SLASH
  .dw XT_ROT
  .dw XT_UMSLASHMOD
  .dw XT_SWAP
  .dw XT_DROP
  .dw XT_1MINUS

  .dw XT_DUP
  .dw XT_DOLITERAL
  .dw BAUDRATE0_LOW
  .dw XT_CSTORE
  .dw XT_BYTESWAP
  .dw XT_DOLITERAL
  .dw BAUDRATE0_HIGH
  .dw XT_CSTORE
  .dw XT_DOLITERAL
  .dw (1<<UMSEL01)|(3<<UCSZ00)
  .dw XT_DOLITERAL
  .dw USART0_C
  .dw XT_CSTORE
  .dw XT_DOLITERAL
  .dw (1<<TXEN0) | (1<<RXEN0) | (1<<RXCIE0)
  .dw XT_DOLITERAL
  .dw USART0_B
  .dw XT_CSTORE
  .dw XT_EXIT

usart0_udre_isr:
  push xl
  in xl,SREG
  push xl
  push xh
  push zl
  push zh

  lds xl,usart0_tx_in
  lds xh,usart0_tx_out

  cp xh,xl
  brne usart0_udre_next

usart0_udre_last:
  lds xl, USART0_B
  cbr xl,(1<<UDRIE0)
  sts USART0_B,xl

  rjmp usart0_udre_done

usart0_udre_next:
  inc xh
  andi xh,usart0_tx_mask
  sts usart0_tx_out,xh

  ldi zl,low(usart0_tx_data)
  ldi zh,high(usart0_tx_data)
  add zl,xh
  adc zh,zeroh

  ld xl,z
  out_ UDR0,xl

usart0_udre_done:
  pop zh
  pop zl
  pop xh
  pop xl
  out SREG,xl
  pop xl
  reti
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
usart0_rx_isr:
  push xl
  in xl, SREG
  push xl
  push xh
  push zl
  push zh

  lds xl,usart0_rx_in
  inc xl
  andi xl,usart0_rx_mask

  ldi zl, low(usart0_rx_data)
  ldi zh, high(usart0_rx_data)
  add zl, xl
  adc zh, zeroh
  in_ xh, UDR0
  st Z, xh
  sts usart0_rx_in, xl

  pop zh
  pop zl
  pop xh
  pop xl
  out SREG, xl
  pop xl
  reti

; (c -- ) Hardware Access
; R( --)
; put 1 character into output queue, wait if needed, enable UDRIE0 interrupt
VE_TX0:
    .db $03, "tx0"
    .dw VE_HEAD
    .set VE_HEAD = VE_TX0
XT_TX0:
    .dw DO_COLON
PFA_TX0:
  ; wait for queue
  .dw XT_TX0Q
  .dw XT_DOCONDBRANCH
  .dw PFA_TX0
  ; append to queue
  .dw XT_DOLITERAL
  .dw usart0_tx_in
  .dw XT_CFETCH        ; ( -- c tx_in)
  .dw XT_1PLUS
  .dw XT_DOLITERAL
  .dw usart0_tx_mask
  .dw XT_AND           ; ( -- c tx_in_new)
  .dw XT_DUP
  .dw XT_DOLITERAL
  .dw usart0_tx_in
  .dw XT_CSTORE
  .dw XT_DOLITERAL
  .dw usart0_tx_data   ; ( -- c tx_in_new data)
  .dw XT_PLUS
  .dw XT_CSTORE
  ; enable interrupt
  .dw XT_DOLITERAL
  .dw USART0_B
  .dw XT_DUP            ;
  .dw XT_CFETCH
  .dw XT_DOLITERAL
  .dw 1<<UDRIE0
  .dw XT_OR
  .dw XT_SWAP
  .dw XT_CSTORE
  .dw XT_EXIT

; ( -- f)  Hardware Access
; R( --)
; check if a character can be appended to output queue.
VE_TX0Q:
    .db $04, "tx0?",0
    .dw VE_HEAD
    .set VE_HEAD = VE_TX0Q
XT_TX0Q:
    .dw DO_COLON
PFA_TX0Q:
  .dw XT_PAUSE
  .dw XT_DOLITERAL
  .dw usart0_tx_out
  .dw XT_CFETCH
  .dw XT_DOLITERAL
  .dw usart0_tx_in
  .dw XT_CFETCH
  .dw XT_EQUAL
  .dw XT_EXIT

; ( -- c)  Hardware Access
; R( --)
; get 1 character from input queue, wait if needed
VE_RX0:
    .db $03, "rx0"
    .dw VE_HEAD
    .set VE_HEAD = VE_RX0
XT_RX0:
    .dw DO_COLON
PFA_RX0:
  .dw XT_RX0Q
  .dw XT_DOCONDBRANCH
  .dw PFA_RX0
  .dw XT_DOLITERAL
  .dw usart0_rx_out
  .dw XT_CFETCH
  .dw XT_1PLUS
  .dw XT_DOLITERAL
  .dw usart0_rx_mask
  .dw XT_AND
  .dw XT_DUP
  .dw XT_DOLITERAL
  .dw usart0_rx_out
  .dw XT_CSTORE
  .dw XT_DOLITERAL
  .dw usart0_rx_data
  .dw XT_PLUS
  .dw XT_CFETCH
  .dw XT_EXIT

; ( -- f)  Hardware Access
; R( --)
; check if unread characters are in the input queue.
VE_RX0Q:
    .db $04, "rx0?",0
    .dw VE_HEAD
    .set VE_HEAD = VE_RX0Q
XT_RX0Q:
    .dw DO_COLON
PFA_RX0Q:
  .dw XT_PAUSE
  .dw XT_DOLITERAL
  .dw usart0_rx_out
  .dw XT_CFETCH
  .dw XT_DOLITERAL
  .dw usart0_rx_in
  .dw XT_CFETCH
  .dw XT_NOTEQUAL
  .dw XT_EXIT
