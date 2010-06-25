# Make to convert the documentation into all 
# relevant target formats

AM_TECHNICAL_HB = amforth.xml \
                  amforth-architecture.xml amforth-bookinfo.xml amforth-closing.xml \
                  amforth-de.xml amforth-firststeps.xml amforth-hardware.xml \
                  amforth-implementation.xml amforth-library.xml amforth-preface.xml \
                  amforth-sources.xml amforth-tools.xml amforth-version.xml
AM_TECHNICAL_HB_PICS_EPS = ram-structure.eps ram2-structure.eps \
                       flash-structure.eps flash2-structure.eps \
                       flash3-structure.eps

AM_TECHNICAL_HB_PICS_PNG = ram-structure.png ram2-structure.png \
                       flash-structure.png flash2-structure.png \
                       flash3-structure.png

all:  amforth.pdf amforth.epub

%.eps: %.dia
	dia -e $@ -t eps $<

%.png: %.dia
	dia -e $@ -t png $<

clean:
	rm amforth.pdf *.eps *.png amforth.epub

amforth.pdf: ${AM_TECHNICAL_HB} ${AM_TECHNICAL_HB_PICS_EPS} jadetex.cfg 
	docbook2dvi -l /usr/share/sgml/declaration/xml.dcl amforth.xml
	dvipdf amforth.dvi amforth.pdf
	rm amforth.dvi

amforth.epub: ${AM_TECHNICAL_HB} ${AM_TECHNICAL_HB_PICS_PNG} jadetex.cfg 
	dbtoepub amforth.xml
