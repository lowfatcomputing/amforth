  .equ BAUDRATE_LOW = UBRR2L
  .equ BAUDRATE_HIGH = UBRR2H
  .equ USART_C = UCSR2C
  .equ USART_B = UCSR2B
  .equ USART_A = UCSR2A
  .equ USART_DATA = UDR2
  .equ USART_RXRD_bm = 1 << RXC2
  .equ USART_TXRD_bm = 1 << UDRE2

  .equ URXCaddr = URXC2addr
  .equ UDREaddr = UDRE2addr
  .equ UDRIE = UDRIE2
