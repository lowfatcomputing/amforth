# Make to convert the documentation into all 
# relevant target formats

all:  amforth.pdf refcard.pdf

%.eps: %.dia
	dia -e $@ -t eps $<

clean:
	rm amforth.pdf refcard.pdf amforth.dvi *.eps

amforth.pdf: amforth.xml jadetex.cfg ram-structure.eps flash-structure.eps flash2-structure.eps
	docbook2dvi -l /usr/share/sgml/declaration/xml.dcl amforth.xml
	dvipdf amforth.dvi amforth.pdf

refcard.pdf: refcard.tex 
	pdflatex refcard.tex
	rm refcard.aux refcard.log

