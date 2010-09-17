
.if WANT_ISR_RX == 1
  .include "drivers/usart-isr-rx.asm"
  .include "words/usart-rx-isr.asm"
.else
  .include "words/usart-rx-poll.asm"
.endif

.if WANT_ISR_TX == 1
  .include "drivers/usart-isr-tx.asm"
  .include "words/usart-tx-isr.asm"
.else
  .include "words/usart-tx-poll.asm"
.endif

.include "words/usart.asm"
