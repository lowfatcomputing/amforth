  .equ BAUDRATE_LOW = UBRR1L
  .equ BAUDRATE_HIGH = UBRR1H
  .equ USART_C = UCSR1C
  .equ USART_B = UCSR1B
  .equ USART_A = UCSR1A
  .equ USART_DATA = UDR1
  .equ USART_RXRD_bm = 1 << RXC1
  .equ USART_TXRD_bm = 1 << UDRE1

  .equ URXCaddr = URXC1addr
  .equ UDREaddr = UDRE1addr
  .equ UDRIE = UDRIE1
