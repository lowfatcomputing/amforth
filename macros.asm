
  .def zerol = r2
  .def zeroh = r3
  .def upl = r4
  .def uph = r5

  .def tosl = r6
  .def tosh = r7

  .def temp0 = r16
  .def temp1 = r17
  .def temp2 = r18
  .def temp3 = r19
  .def temp4 = r20
  .def temp5 = r21
  .def temp6 = r22
  .def temp7 = r23

  .def wl = r24
  .def wh = r25

.macro loadtos
    ld tosl, Y+
    ld tosh, Y+
.endmacro

.macro savetos
    st -Y, tosh
    st -Y, tosl
.endmacro

.macro in_
.if (@1 < $40)
  in @0,@1
.else
  lds @0,@1
.endif
.endmacro

.macro out_
.if (@0 < $40)
  out @0,@1
.else
  sts @0,@1
.endif
.endmacro

.macro sbi_
.if (@0 < $40)
  sbi @0,@1
.else
  in_ @2,@0
  ori @2,exp2(@1)
  out_ @0,@2
.endif
.endmacro

.macro cbi_
.if (@0 < $40)
  cbi @0,@1
.else
  in_ @2,@0
  andi @2,~(exp2(@1))
  out_ @0,@2
.endif
.endmacro
