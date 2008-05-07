# Make to convert the documentation into all 
# relevant target formats

all:  amforth.pdf refcard.pdf

clean:
	rm amforth.pdf refcard.pdf

amforth.pdf: amforth.xml amforth.dsl jadetex.cfg
	docbook2pdf -l /usr/share/sgml/declaration/xml.dcl amforth.xml

refcard.pdf: refcard.tex 
	pdflatex refcard.tex
	rm refcard.aux refcard.log
