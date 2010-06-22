  .equ BAUDRATE_LOW = UBRR3L
  .equ BAUDRATE_HIGH = UBRR3H
  .equ USART_C = UCSR3C
  .equ USART_B = UCSR3B
  .equ USART_A = UCSR3A
  .equ USART_DATA = UDR3
  .equ USART_RXRD_bm = 1 << RXC3
  .equ USART_TXRD_bm = 1 << UDRE3

  .equ URXCaddr = URXC3addr
  .equ UDREaddr = UDRE3addr
  .equ UDRIE = UDRIE3
