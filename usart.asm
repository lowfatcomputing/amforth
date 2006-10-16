;;; usart driver

;; bit definitions
 
.equ baudrate  = cpu_frequency/(baud_rate*16)-1
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

baud0:
  sts usart0_tx_in,zerol
  sts usart0_tx_out,zerol
  sts usart0_rx_in,zerol
  sts usart0_rx_out,zerol

  ldi temp0, LOW( baudrate )
  out UBRRL, temp0
  ldi temp0, HIGH( baudrate )
  out UBRRH, temp0
  ldi temp0, (1<<URSEL)|(3<<UCSZ0)
  out UCSRC, temp0
  sbi UCSRB, TXEN
  sbi UCSRB, RXEN
  sbi UCSRB, RXCIE

  ret
 
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
  in xl,UCSRB
  cbr xl,(1<<UDRIE)
  out UCSRB,xl

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
  out UDR,xl

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
  in xl,SREG
  push xl
  push xh
  push zl
  push zh

  lds xl,usart0_rx_in
  lds xh,usart0_rx_out

  inc xl
  andi xl,usart0_rx_mask
  cp xh,xl
  brne usart0_rxc_next

usart0_rxc_full:
  in xl,UDR
  rjmp usart0_rxc_done
usart0_rxc_next:
  ldi zl,low(usart0_rx_data)
  ldi zh,high(usart0_rx_data)
  add zl,xl
  adc zh,zeroh
  in xh,UDR
  st z,xh
  sts usart0_rx_in,xl
  
usart0_rxc_done:
  pop zh
  pop zl
  pop xh
  pop xl
  out SREG,xl
  pop xl
  reti
  
