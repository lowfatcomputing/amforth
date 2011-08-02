.if WANT_ISR_RX == 1
  .include "drivers/usart-isr-rx.asm"
  .include "words/usart-rx-isr.asm"
  .set XT_RX  = XT_RX_ISR
  .set XT_RXQ = XT_RXQ_ISR
  .set XT_USART_INIT_RX = XT_USART_INIT_RX_ISR
.else
  .include "words/usart-rx-poll.asm"
  .set XT_RX  = XT_RX_POLL
  .set XT_RXQ = XT_RXQ_POLL
  .set XT_USART_INIT_RX = XT_USART_INIT_RX_POLL
.endif

.if WANT_ISR_TX == 1
  .include "drivers/usart-isr-tx.asm"
  .include "words/usart-tx-isr.asm"
  .set XT_TX  = XT_TX_ISR
  .set XT_TXQ = XT_TXQ_ISR
  .set XT_USART_INIT_TX = XT_USART_INIT_TX_ISR
.else
  .include "words/usart-tx-poll.asm"
  .set XT_TX  = XT_TX_POLL
  .set XT_TXQ = XT_TXQ_POLL
  .set XT_USART_INIT_TX = XT_USART_INIT_TX_POLL
.endif

.include "words/baud.asm"
.include "words/usart.asm"

