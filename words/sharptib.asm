; ( -- addr )
VE_NUMBERTIB:
    .db $04, "#tib",0
    .dw VE_LATEST
    .set VE_LATEST  = VE_NUMBERTIB
XT_NUMBERTIB:
    .dw PFA_DOVARIABLE
PFA_NUMBERTIB:
    .dw heap
    .set heap  = heap + CELLSIZE
 
