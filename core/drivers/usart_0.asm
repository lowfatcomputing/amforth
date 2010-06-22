  .equ BAUDRATE_LOW = UBRR0L
  .equ BAUDRATE_HIGH = UBRR0H
  .equ USART_C = UCSR0C
  .equ USART_B = UCSR0B
  .equ USART_A = UCSR0A
  .equ USART_DATA = UDR0
  .ifndef URXCaddr
  .equ URXCaddr = URXC0addr
  .equ UDREaddr = UDRE0addr
  .endif
  .equ UDRIE = UDRIE0
  .equ USART_RXRD_bm = 1 << RXC0
  .equ USART_TXRD_bm = 1 << UDRE0
