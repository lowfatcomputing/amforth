; this part of the dictionay has to fit into the nrww flash
; section together with the forth inner interpreter

#include "words/exit.S"
#include "words/execute.S"
#include "words/dobranch.S"
#include "words/docondbranch.S"

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#include "words/doliteral.S"
#include "words/dovariable.S"
#include "words/doconstant.S"
#include "words/douser.S"
#include "words/do-value.S"
#include "words/fetch.S"
#include "words/store.S"
#include "words/cstore.S"
#include "words/cfetch.S"
#include "words/fetch-u.S"
#include "words/store-u.S"

;;;;;;;;;;;;;;;;;;;;;;;;;
#include "words/dup.S"
#include "words/qdup.S"
#include "words/swap.S"
#include "words/over.S"
#include "words/drop.S"
#include "words/rot.S"

;;;;;;;;;;;;;;;;;;;;;;;;;
#include "words/r_from.S"
#include "words/to_r.S"
#include "words/r_fetch.S"

;;;;;;;;;;;;;;;;;;;;;;;;
#include "words/notequal.S"
#include "words/equal.S"
#include "words/equalzero.S"
#include "words/less.S"
#include "words/greater.S"
#include "words/lesszero.S"
#include "words/zero.S"
#include "words/true.S"
#include "words/uless.S"
#include "words/ugreater.S"
#include "words/greaterzero.S"
#include "words/d-greater.S"
#include "words/d-greaterzero.S"
#include "words/d-less.S"
#include "words/d-lesszero.S"
#include "words/log2.S"
#include "words/minus.S"
#include "words/plus.S"
#include "words/mstar.S"
#include "words/umslashmod.S"
#include "words/umstar.S"

#include "words/invert.S"
#include "words/2slash.S"
#include "words/2star.S"
#include "words/and.S"
#include "words/or.S"
#include "words/xor.S"

#include "words/1plus.S"
#include "words/1minus.S"
#include "words/lshift.S"
#include "words/rshift.S"
#include "words/plusstore.S"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#include "words/rpfetch.S"
#include "words/rpstore.S"
#include "words/spfetch.S"
#include "words/spstore.S"

#include "words/dodo.S"
#include "words/doqdo.S"
#include "words/i.S"
#include "words/doplusloop.S"
#include "words/doloop.S"
#include "words/unloop.S"

;;;;;;;;;;;;;;;;;;;;;;;;;;;

#include "words/cmove_g.S"
#include "words/byteswap.S"
#include "words/up.S"
#include "words/s_to_d.S"
#include "words/not.S"
