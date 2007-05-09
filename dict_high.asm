; this part of the dictionay has to fit into the nrww flash
; section together with the forth inner interpreter

.include "words/exit.asm"
.include "words/execute.asm"
.include "words/dobranch.asm"
.include "words/docondbranch.asm"

.include "words/estore.asm"
.include "words/efetch.asm"

.include "words/sleep.asm"
.include "words/wdr.asm"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.include "words/doliteral.asm"
.include "words/dovariable.asm"
.include "words/doconstant.asm"
.include "words/douser.asm"
.include "words/fetch.asm"
.include "words/store.asm"
.include "words/cstore.asm"
.include "words/cfetch.asm"
;;;;;;;;;;;;;;;;;;;;;;;;;
.include "words/dup.asm"
.include "words/qdup.asm"
.include "words/swap.asm"
.include "words/over.asm"
.include "words/drop.asm"
.include "words/rot.asm"

;;;;;;;;;;;;;;;;;;;;;;;;;
.include "words/r_from.asm"
.include "words/to_r.asm"
.include "words/r_fetch.asm"

;;;;;;;;;;;;;;;;;;;;;;;;
.include "words/notequal.asm"
.include "words/notequalzero.asm"
.include "words/equal.asm"
.include "words/equalzero.asm"
.include "words/less.asm"
.include "words/greater.asm"
.include "words/lesszero.asm"
.include "words/greaterzero.asm"
.include "words/uless.asm"
.include "words/ugreater.asm"
.include "words/d-greater.asm"
.include "words/d-less.asm"

.include "words/log2.asm"
.include "words/minus.asm"
.include "words/plus.asm"
.include "words/star.asm"
.include "words/mstar.asm"
.include "words/umslashmod.asm"

.include "words/invert.asm"
.include "words/2slash.asm"
.include "words/2star.asm"
.include "words/and.asm"
.include "words/or.asm"
.include "words/xor.asm"
.include "words/not.asm"

.include "words/1plus.asm"
.include "words/1minus.asm"
.include "words/lshift.asm"
.include "words/rshift.asm"
.include "words/plusstore.asm"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.include "words/rpfetch.asm"
.include "words/rpstore.asm"
.include "words/spfetch.asm"
.include "words/spstore.asm"

.include "words/dodo.asm"
.include "words/i.asm"
.include "words/j.asm"
.include "words/doloop.asm"
.include "words/doplusloop.asm"
.include "words/unloop.asm"

;;;;;;;;;;;;;;;;;;;;;;;;;;;
.include "words/ifetch.asm"
.include "words/istore.asm"
;;;;;;;;;;;;;;;;;;;;;;;;;;;

.include "words/cmove_g.asm"
.include "words/byteswap.asm"
.include "words/1ms.asm"
.include "words/zero.asm"
.include "words/up.asm"

.include "words/s_to_d.asm"
.include "words/d_to_s.asm"
.include "words/d-2slash.asm"
