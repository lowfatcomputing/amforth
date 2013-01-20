all: flash2-structure.png flash3-structure.png flash-structure.png ram2-structure.png ram-structure.png \
     flash2-structure.eps flash3-structure.eps flash-structure.eps ram2-structure.eps ram-structure.eps 

%.eps: %.dia
	dia -e $@ -t eps $<

%.png: %.dia
	dia -e $@ -t png $<
