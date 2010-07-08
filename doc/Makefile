# Make to convert the documentation into all 
# relevant target formats

all:  refcard.pdf

%.eps: %.dia
	dia -e $@ -t eps $<

clean:
	rm refcard.pdf 

refcard.pdf: refcard.tex 
	pdflatex refcard.tex
	rm refcard.aux refcard.log

