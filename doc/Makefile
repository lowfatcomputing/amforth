# Make to convert the documentation into all 
# relevant target formats

all:  amforth.pdf 

clean:
	rm amforth.pdf

amforth.pdf: amforth.xml amforth.dsl jadetex.cfg
	docbook2pdf -l /usr/share/sgml/declaration/xml.dcl amforth.xml

