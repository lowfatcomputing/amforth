# Make to convert the documentation into all 
# relevant target formats

all:  amforth.pdf refcard.pdf

%.eps: %.dia
	dia -e $@ -t eps $<

clean:
	rm amforth.pdf refcard.pdf *.eps

amforth.pdf: amforth.xml jadetex.cfg ram-structure.eps ram2-structure.eps flash-structure.eps flash2-structure.eps
	docbook2dvi -l /usr/share/sgml/declaration/xml.dcl amforth.xml
	dvipdf amforth.dvi amforth.pdf
	rm amforth.dvi

refcard.pdf: refcard.tex 
	pdflatex refcard.tex
	rm refcard.aux refcard.log

