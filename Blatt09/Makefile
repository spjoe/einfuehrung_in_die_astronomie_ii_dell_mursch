
BLATT=blatt9

doc: ${BLATT}.pdf

${BLATT}.dvi: ${BLATT}.tex hfedichte.eps hfehisto.eps lcddichte.eps lcdhisto.eps
	latex ${BLATT}
	bibtex ${BLATT} || true
	latex $^
	latex $^
${BLATT}.ps: ${BLATT}.dvi
	dvips $^

${BLATT}.pdf: ${BLATT}.ps
	ps2pdf -dPDFSETTINGS=/prepress $^

hfedichte.eps hfehisto.eps: hfe.R hfe
	R -f hfe.R

lcddichte.eps lcdhisto.eps: lcd.R lcd
	R -f lcd.R


clean:
	rm -f *.log *.aux *.toc *.pdf *.nav *.out *.snm *.bbl *.blg *.dvi *.ps *.eps
